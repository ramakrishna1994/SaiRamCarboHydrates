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
											+'	<td><a href="showproduct.php?id='+response[i].id+'" 		target="_blank">'+response[i].name+'</a></td>'
											+'	<td>'+response[i].casno+'</td>';
											
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
	var synonyms = document.getElementById("synonyms").value;
	var mf = document.getElementById("mf").value;
	var mw = document.getElementById("mw").value;
	
	var appearance = document.getElementById("appearance").value;
	var purity = document.getElementById("purity").value;
	var sor = document.getElementById("sor").value;
	var casno = document.getElementById("casno").value;
	var solubility = document.getElementById("solubility").value;
	var watercontent = document.getElementById("watercontent").value;
	var storage = document.getElementById("storage").value;
	var category = document.getElementById("category").value;
	
	var assay = document.getElementById("assay").value;
	var mp = document.getElementById("mp").value;
	var ph = document.getElementById("ph").value;
	var boiling = document.getElementById("boiling").value;
	var dioxane = document.getElementById("dioxane").value;
	var research = document.getElementById("research").value;
	var description = document.getElementById("description").value;
	var usage = document.getElementById("usage").value;
	var application = document.getElementById("application").value;
	var identityir = document.getElementById("identityir").value;
	var identityftir = document.getElementById("identityftir").value;
	var transport = document.getElementById("transport").value;
	var phenol = document.getElementById("phenol").value;
	var nitro = document.getElementById("nitro").value;
	var moisturecontent = document.getElementById("moisturecontent").value;
	var freephosphates = document.getElementById("freephosphates").value;
	var molar = document.getElementById("molar").value;
	var others = document.getElementById("others").value;
	
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
	formData.append('name',name);
	formData.append('synonyms',synonyms);
	formData.append('mf',mf);
	formData.append('mw',mw);
	formData.append( 'ms', $( '#ms' )[0].files[0] );
	formData.append('appearance',appearance);
	formData.append('purity',purity);
	formData.append('sor',sor);
	formData.append('casno',casno);
	formData.append('solubility',solubility);
	formData.append('watercontent',watercontent);
	formData.append('storage',storage);
	formData.append('category',category);
	
	formData.append('assay',assay);
	formData.append('mp',mp);
	formData.append('ph',ph);
	formData.append('boiling',boiling);
	formData.append('dioxane',dioxane);
	formData.append('research',research);
	formData.append('description',description);
	formData.append('usage',usage);
	formData.append('application',application);
	formData.append('identityir',identityir);
	formData.append('identityftir',identityftir);
	formData.append('transport',transport);
	formData.append('phenol',phenol);
	formData.append('nitro',nitro);
	formData.append('moisturecontent',moisturecontent);
	formData.append('freephosphates',freephosphates);
	formData.append('molar',molar);
	formData.append('others',others);
	
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
							document.getElementById("synonyms").value = "";
							document.getElementById("mf").value = "";
							document.getElementById("mw").value = "";
							document.getElementById("ms").value = "";
							document.getElementById("appearance").value = "";
							document.getElementById("purity").value = "";
							document.getElementById("sor").value = "";
							document.getElementById("casno").value = "";
							document.getElementById("solubility").value = "";
							document.getElementById("watercontent").value = "";
							document.getElementById("storage").value = "";
							document.getElementById("category").value = "";
							
							document.getElementById("assay").value = "";
							document.getElementById("mp").value = "";
							document.getElementById("ph").value = "";
							document.getElementById("boiling").value = "";
							document.getElementById("dioxane").value = "";
							document.getElementById("research").value = "";
							document.getElementById("description").value = "";
							document.getElementById("usage").value = "";
							document.getElementById("application").value = "";
							document.getElementById("identityir").value = "";
							document.getElementById("identityftir").value = "";
							document.getElementById("transport").value = "";
							document.getElementById("phenol").value = "";
							document.getElementById("nitro").value = "";
							document.getElementById("moisturecontent").value = "";
							document.getElementById("freephosphates").value = "";
							document.getElementById("molar").value = "";
							document.getElementById("others").value = "";
							
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
							
							document.getElementById("deleteStatus").innerHTML='<center><font color="green">Product Deleted Successfully!!</font></center>';
							showProductsDetails();
						}
						});
				});
}


function editProduct(id){
	$("#editModal").modal("show");
	
	
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
							document.getElementById("esynonyms").value = response[0].synonyms;
							document.getElementById("emf").value = response[0].mf;
							document.getElementById("emw").value = response[0].mw;
							//document.getElementById("ems").value = response[0].ms;
							document.getElementById("eappearance").value = response[0].appearance;
							document.getElementById("epurity").value = response[0].purity;
							document.getElementById("esor").value = response[0].sor;
							document.getElementById("ecasno").value = response[0].casno;
							document.getElementById("esolubility").value = response[0].solubility;
							document.getElementById("ewatercontent").value = response[0].watercontent;
							document.getElementById("estorage").value = response[0].storage;
							document.getElementById("ecategory").value = response[0].category;
							
							document.getElementById("eassay").value = response[0].assay;
							document.getElementById("emp").value = response[0].mp;
							document.getElementById("eph").value = response[0].ph;
							document.getElementById("eboiling").value = response[0].boiling;
							document.getElementById("edioxane").value = response[0].dioxane;
							document.getElementById("eresearch").value = response[0].research;
							document.getElementById("edescription").value = response[0].description;
							document.getElementById("eusage").value = response[0].usage;
							document.getElementById("eapplication").value = response[0].application;
							document.getElementById("eidentityir").value = response[0].identityir;
							document.getElementById("eidentityftir").value = response[0].identityftir;
							document.getElementById("etransport").value = response[0].transport;
							document.getElementById("ephenol").value = response[0].phenol;
							document.getElementById("enitro").value = response[0].nitro;
							document.getElementById("emoisturecontent").value = response[0].moisturecontent;
							document.getElementById("efreephosphates").value = response[0].freephosphates;
							document.getElementById("emolar").value = response[0].molar;
							document.getElementById("eothers").value = response[0].others;
							
							document.getElementById("editStatus").innerHTML='';
							
						}
						});
				});
	
}


function insertModifiedProduct(){
	var formData = new FormData();
	
	var id = document.getElementById("eid").value
	var name = document.getElementById("ename").value;
	var synonyms = document.getElementById("esynonyms").value;
	var mf = document.getElementById("emf").value;
	var mw = document.getElementById("emw").value;
	
	var appearance = document.getElementById("eappearance").value;
	var purity = document.getElementById("epurity").value;
	var sor = document.getElementById("esor").value;
	var casno = document.getElementById("ecasno").value;
	var solubility = document.getElementById("esolubility").value;
	var watercontent = document.getElementById("ewatercontent").value;
	var storage = document.getElementById("estorage").value;
	var category = document.getElementById("ecategory").value;
	
	var assay = document.getElementById("eassay").value;
	var mp = document.getElementById("emp").value;
	var ph = document.getElementById("eph").value;
	var boiling = document.getElementById("eboiling").value;
	var dioxane = document.getElementById("edioxane").value;
	var research = document.getElementById("eresearch").value;
	var description = document.getElementById("edescription").value;
	var usage = document.getElementById("eusage").value;
	var application = document.getElementById("eapplication").value;
	var identityir = document.getElementById("eidentityir").value;
	var identityftir = document.getElementById("eidentityftir").value;
	var transport = document.getElementById("etransport").value;
	var phenol = document.getElementById("ephenol").value;
	var nitro = document.getElementById("enitro").value;
	var moisturecontent = document.getElementById("emoisturecontent").value;
	var freephosphates = document.getElementById("efreephosphates").value;
	var molar = document.getElementById("emolar").value;
	var others = document.getElementById("eothers").value;
	
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
		document.getElementById("editStatus").innerHTML='<center><font color="red">Please Select Category</font></center>';
		return;	
	}
	formData.append('id',id);
	formData.append('name',name);
	formData.append('synonyms',synonyms);
	formData.append('mf',mf);
	formData.append('mw',mw);
	formData.append( 'ms', $( '#ems' )[0].files[0] );
	formData.append('appearance',appearance);
	formData.append('purity',purity);
	formData.append('sor',sor);
	formData.append('casno',casno);
	formData.append('solubility',solubility);
	formData.append('watercontent',watercontent);
	formData.append('storage',storage);
	formData.append('category',category);
	
	formData.append('assay',assay);
	formData.append('mp',mp);
	formData.append('ph',ph);
	formData.append('boiling',boiling);
	formData.append('dioxane',dioxane);
	formData.append('research',research);
	formData.append('description',description);
	formData.append('usage',usage);
	formData.append('application',application);
	formData.append('identityir',identityir);
	formData.append('identityftir',identityftir);
	formData.append('transport',transport);
	formData.append('phenol',phenol);
	formData.append('nitro',nitro);
	formData.append('moisturecontent',moisturecontent);
	formData.append('freephosphates',freephosphates);
	formData.append('molar',molar);
	formData.append('others',others);
	
	
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
							document.getElementById("editStatus").innerHTML='<center><font color="green">Successfully Updated the Product in Database</font></center>';
							document.getElementById("ename").value = "";
							document.getElementById("esynonyms").value = "";
							document.getElementById("emf").value = "";
							document.getElementById("emw").value = "";
							document.getElementById("eappearance").value = "";
							document.getElementById("epurity").value = "";
							document.getElementById("esor").value = "";
							document.getElementById("ecasno").value = "";
							document.getElementById("esolubility").value = "";
							document.getElementById("ewatercontent").value = "";
							document.getElementById("estorage").value = "";
							document.getElementById("ecategory").value = "";
							document.getElementById("ems").value = "";
							
							document.getElementById("eassay").value = "";
							document.getElementById("emp").value = "";
							document.getElementById("eph").value = "";
							document.getElementById("eboiling").value = "";
							document.getElementById("edioxane").value = "";
							document.getElementById("eresearch").value = "";
							document.getElementById("edescription").value = "";
							document.getElementById("eusage").value = "";
							document.getElementById("eapplication").value = "";
							document.getElementById("eidentityir").value = "";
							document.getElementById("eidentityftir").value = "";
							document.getElementById("etransport").value = "";
							document.getElementById("ephenol").value = "";
							document.getElementById("enitro").value = "";
							document.getElementById("emoisturecontent").value = "";
							document.getElementById("efreephosphates").value = "";
							document.getElementById("emolar").value = "";
							document.getElementById("eothers").value = "";
							
							showProductsDetails();
						}
						});
				});
}


function logout(){
	$(document).ready(function(){
					
					$.ajax({
						url: "php/logout.php",// give your url
						processData: false,
						contentType: false,
						success: function (response) 
						{
							window.open("login.html","_self");
						}
						});
				});
}