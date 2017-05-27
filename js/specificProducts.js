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
						dataType: 'xml',
						processData: false,
						contentType: false,
						success: function (response) 
						{
							if($(response).find('error').text() == 1)
							{
									document.getElementById("productstable").innerHTML = '<tr><td colspan="7"><center><font size="2px" color="red">No Results Found !!</font></center></td></tr>';
									return;
							}
							
							$(response).find('product').each(function(index){
							 
								innerhtml += '	<tr >'
											+'	<td>'+(index+1)+'</td>';
											
								innerhtml+= '<td><a href="showproduct.php?id='+$(this).find('id').text()+'&name='+$(this).find('name').text()+'&casno='+$(this).find('casno').text()+'&synonyms='+$(this).find('synonyms').text()+'" 		target="_blank">'+$(this).find('name').text()+'</a></td>';
											
								innerhtml+='<td>'+$(this).find('casno').text()+'</td>'
											+'	</tr>';
											
								
								
							});
							
							
							document.getElementById("productstable").innerHTML = innerhtml;
							
						},error: function(){alert("Error: Something went wrong");}
						});
				});
}

function fillLoader(){
	var loader = '<tr><td colspan="3"><center><image src="images/loader.gif" height="40px" width="40px"></center></td></tr>';
	return loader;
}