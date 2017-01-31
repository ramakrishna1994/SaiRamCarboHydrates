$('#headerProduct').load("../../productheader.html")
$('#footerProduct').load("../../productfooter.html")
$('#enquiryform').load("../../enquiryform.html")
$('#searchResults').load("../../searchresultsmodal.html")
var colors = ["danger","info","warning","default","success","active"];
function getSearchResults(){
	
	$("#searchResultsModal").modal("show");
	document.getElementById("searchResultstable").innerHTML = fillLoader()+"<center> Fetching details..Please wait!!</center>";
	var innerhtml = '';
	var query = document.getElementById("query").value;
	var formData = new FormData();
	formData.append( 'searchValue',query);
	$(document).ready(function(){
					
					$.ajax({
						url: "php/getAllProductsDetails1.php",// give your url
						type: "POST",
						data: formData,
						dataType: 'json',
						processData: false,
						contentType: false,
						success: function (response) 
						{
							if(response[response.length-1].error == 1)
							{
									document.getElementById("searchResultstable").innerHTML = '<tr><td colspan="5"><center><font size="2px" color="red">No Results Found !!</font></center></td></tr>';
									return;
							}
							for(var i=0;i<response.length-1;i++)
							{
								innerhtml += '	<tr class="'+colors[i%6]+'">'
											+'	<td>'+(i+1)+'</td>'
											+'	<td>'+response[i].name+'</td>'
											+'	<td>'+response[i].casno+'</td>';
											if(response[i].link != '')
											{
													innerhtml+= '<td><a href="'+response[i].category+'/'+response[i].link+'" target="_blank">'+response[i].name+'</td>';
											
											}
											else{
													innerhtml+= '<td></td>';
											}
											innerhtml+= '<td>'+response[i].category+'</td>'
													 +	'</tr>';
											
								
							}
							
							innerhtml+='</tbody></table>';
							document.getElementById("searchResultstable").innerHTML = innerhtml;
						}
						});
				});
}

function fillLoader(){
	var loader = '<tr><td colspan="6"><center><image src="images/loader.gif" height="40px" width="40px"></center></td></tr>';
	return loader;
}