$('#headerMain').load("header.html");
$('#footerMain').load("footer.html");
$('#searchResults').load("searchresultsmodal.html");

var colors = ["danger","info","warning","default","success","active"];
function pressedOnSearchKey(e){
	  if(e.keyCode === 13){
            //e.preventDefault(); // Ensure it is only this code that rusn
			getSearchResults();
            
        }

}
function getSearchResults(){
	
	$("#searchResultsModal").modal("show");
	document.getElementById("searchResultstable").innerHTML = fillLoader();
	var innerhtml = '';
	var query = document.getElementById("query").value;
	var formData = new FormData();
	formData.append( 'searchValue',query);
	$(document).ready(function(){
					
					$.ajax({
						url: "php/getAllProductsDetails.php",// give your url
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
							 
								innerhtml += '	<tr class="'+colors[index%6]+'">'
											+'	<td>'+(index+1)+'</td>'
											+'	<td><a href="showproduct.php?id='+$(this).find('id').text()+'&name='+$(this).find('name').text()+'&casno='+$(this).find('casno').text()+'&synonyms='+$(this).find('synonyms').text()+'" target="_blank">'+$(this).find('name').text()+'</a></td>'
											+'	<td>'+$(this).find('casno').text()+'</td>';
											
								
											
							
								
							});
								
								document.getElementById("searchResultstable").innerHTML = innerhtml;
							
						},error: function(){alert("Error: Something went wrong");}
						});
				});
}

function fillLoader(){
	var loader = '<tr><td colspan="5"><center><image src="images/loader.gif" height="40px" width="40px"><br>Fetching details..Please wait!!</center></td></tr>';
	return loader;
}

$(document).ready(function(){
				$('#query').keypress(function (e) {
			 var key = e.which;
			 if(key == 13)  // the enter key code
			  {
				$('#querybutton').click();
				return false;  
			  }
			}); 
			});
			
			