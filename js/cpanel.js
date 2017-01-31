showProductsDetails();
var colors = ["danger","info","warning","default","success","active"];

function showProductsDetails(){
	var innerhtml = '';
	var searchValue = document.getElementById("searchValue").value;
	var formData = new FormData();
	formData.append( 'searchValue',searchValue);
	document.getElementById("productstable").innerHTML = fillLoader();
	$(document).ready(function(){
					
					$.ajax({
						url: "php/getAllProductsDetails.php",// give your url
						type: "POST",
						data: formData,
						dataType: 'json',
						processData: false,
						contentType: false,
						success: function (response) 
						{
							if(response[response.length-1].error == 1)
							{
									document.getElementById("productstable").innerHTML = '<tr><td colspan="7"><center><font size="2px" color="red">No Results Found !!</font></center></td></tr>';
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
											+'	<td><button class="btn btn-info" '
											+'	onclick="editProduct('+response[i].id+')">Edit'
											+'	</button></td>'
											+'	<td><button class="btn btn-danger" '
											+'	onclick="deleteProduct('+response[i].id+')">Delete'
											+'	</button></td>'
											+'	</tr>';
											
								
							}
							
							innerhtml+='</tbody></table>';
							document.getElementById("productstable").innerHTML = innerhtml;
						}
						});
				});
}

function fillLoader(){
	var loader = '<tr><td colspan="6"><center><image src="images/loader.gif" height="40px" width="40px"></center></td></tr>';
	return loader;
}




function insertProduct(){
	var formData = new FormData();
	var name = document.getElementById("name").value;
	var casno = document.getElementById("casno").value;
	var link = document.getElementById("link").value;
	var category = document.getElementById("category").value;
	document.getElementById("insertStatus").innerHTML=fillLoader();
	if(name == ""){
		document.getElementById("insertStatus").innerHTML='<center><font color="red">Please Enter Product Name</font></center>';
		return;
	}
	if(casno == ""){
		document.getElementById("insertStatus").innerHTML='<center><font color="red">Please Enter CAS No</font></center>';
		return;	
	}
	if(category == ""){
		document.getElementById("insertStatus").innerHTML='<center><font color="red">Please Enter Category</font></center>';
		return;	
	}
	formData.append( 'name',name);
	formData.append('casno',casno);
	formData.append('link',link);
	formData.append('category',category);
	$(document).ready(function(){
					
					$.ajax({
						url: "php/insertProduct.php",// give your url
						type: "POST",
						data: formData,
						dataType: 'json',
						processData: false,
						contentType: false,
						success: function (response) 
						{
							document.getElementById("insertStatus").innerHTML='<center><font color="green">Successfully Inserted Into Database</font></center>';
							document.getElementById("name").value = "";
							document.getElementById("casno").value = "";
							document.getElementById("link").value = "";
							document.getElementById("category").value = "";
							showProductsDetails();
						}
						});
				});
}



function deleteProduct(id){
	document.getElementById("deleteStatus").innerHTML = fillLoader();	
	var formData = new FormData();
	formData.append( 'id',id);
	$(document).ready(function(){
					
					$.ajax({
						url: "php/deleteProduct.php",// give your url
						type: "POST",
						data: formData,
						dataType: 'json',
						processData: false,
						contentType: false,
						success: function (response) 
						{
							
							document.getElementById("deleteStatus").innerHTML='<center><font color="green">Record Deleted Successfully!!</font></center>';
							showProductsDetails();
						}
						});
				});
}


function editProduct(id){
	$("#editModal").modal("show");
	
	document.getElementById("ename").value = "";
	document.getElementById("ecasno").value = "";
	document.getElementById("elink").value = "";
	document.getElementById("ecategory").value = "";
	
	document.getElementById("eid").value = id;
	var formData = new FormData();
	formData.append( 'id',id);
	document.getElementById("editStatus").innerHTML=fillLoader()+"<center> Fetching details..Please wait!!</center>";
	$(document).ready(function(){
					
					$.ajax({
						url: "php/getProductByID.php",// give your url
						type: "POST",
						data: formData,
						dataType: 'json',
						processData: false,
						contentType: false,
						success: function (response) 
						{
							
							document.getElementById("ename").value = response[0].name;
							document.getElementById("ecasno").value = response[0].casno;
							document.getElementById("elink").value = response[0].link;
							document.getElementById("ecategory").value = response[0].category;
							document.getElementById("editStatus").innerHTML='';
							
						}
						});
				});
	
}


function insertModifiedProduct(){
	var formData = new FormData();
	var id = document.getElementById("eid").value;
	var name = document.getElementById("ename").value;
	var casno = document.getElementById("ecasno").value;
	var link = document.getElementById("elink").value;
	var category = document.getElementById("ecategory").value;
	document.getElementById("editStatus").innerHTML=fillLoader();
	if(name == ""){
		document.getElementById("editStatus").innerHTML='<center><font color="red">Please Enter Product Name</font></center>';
		return;
	}
	if(casno == ""){
		document.getElementById("editStatus").innerHTML='<center><font color="red">Please Enter CAS No</font></center>';
		return;	
	}
	if(category == ""){
		document.getElementById("editStatus").innerHTML='<center><font color="red">Please Enter Category</font></center>';
		return;	
	}
	formData.append( 'id',id);
	formData.append( 'name',name);
	formData.append('casno',casno);
	formData.append('link',link);
	formData.append('category',category);
	$(document).ready(function(){
					
					$.ajax({
						url: "php/editProduct.php",// give your url
						type: "POST",
						data: formData,
						dataType: 'json',
						processData: false,
						contentType: false,
						success: function (response) 
						{
							document.getElementById("editStatus").innerHTML='<center><font color="green">Successfully Edited the Product in Database</font></center>';
							document.getElementById("ename").value = "";
							document.getElementById("ecasno").value = "";
							document.getElementById("elink").value = "";
							document.getElementById("ecategory").value = "";
							showProductsDetails();
						}
						});
				});
}

