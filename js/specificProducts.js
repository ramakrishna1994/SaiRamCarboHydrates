showSpecificProductsDetails();
function showSpecificProductsDetails(){
	var innerhtml = '';
	var searchValue = '';
	var category = document.getElementById("category").value;
	var formData = new FormData();
	formData.append( 'searchValue',searchValue);
	formData.append( 'category',category);
	document.getElementById("productstable").innerHTML = fillLoader();
	$(document).ready(function(){
					
					$.ajax({
						url: "php/getSpecificCategoryProductsDetails.php",// give your url
						type: "POST",
						data: formData,
						dataType: 'json',
						processData: false,
						contentType: false,
						success: function (response) 
						{
							if(response[response.length-1].error == 1)
							{
									document.getElementById("productstable").innerHTML = '<tr><td colspan="6"><center><font size="2px" color="red">No Results Found !!</font></center></td></tr>';
									return;
							}
							for(var i=0;i<response.length-1;i++)
							{
								innerhtml += '	<tr >'
											+'	<td>'+(i+1)+'</td>';
											
								innerhtml+= '<td><a href="showproduct.php?id='+response[i].id+'" 		target="_blank">'+response[i].name+'</a></td>';
											
								innerhtml+='<td>'+response[i].casno+'</td>'
											+'	</tr>';
											
								
							}
							
							innerhtml+='</tbody></table>';
							document.getElementById("productstable").innerHTML = innerhtml;
						}
						});
				});
}

function fillLoader(){
	var loader = '<tr><td colspan="3"><center><image src="images/loader.gif" height="40px" width="40px"></center></td></tr>';
	return loader;
}