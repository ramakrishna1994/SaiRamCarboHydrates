$('#enquiryform').load("enquiryform.html")

var name,email,casno,qty,productname,comments;

function resetValues(){
	document.getElementById("productname").value = "";
	document.getElementById("name").value = "";
	document.getElementById("comments").value = "";
	document.getElementById("email").value = "";
	document.getElementById("casno").value = "";
	document.getElementById("qty").value = "";
}
function sendQuery()
{
	document.getElementById("status").innerHTML = fillLoader();
	productname = document.getElementById("productname").value;
	name = document.getElementById("name").value;
	comments = document.getElementById("comments").value;
	email= document.getElementById("email").value;
	casno = document.getElementById("casno").value;
	qty = document.getElementById("qty").value;
	
	
	if(checkEmpty(email,"Email Address")==false)return;
	if(checkEMailCorrectness(email)==false)return;
	if(checkEmpty(productname,"Product Name")==false)return;
	if(checkEmpty(casno,"CAS No.")==false)return;
	if(checkEmpty(qty,"Quantity")==false)return;
	doSendQuery();
	

}

function sendQuote(){
	
	document.getElementById("status").innerHTML = fillLoader();
	productname = document.getElementById("productname").value;
	name = document.getElementById("name").value;
	comments = document.getElementById("comments").value;
	email= document.getElementById("email").value;
	casno = document.getElementById("casno").value;
	qty = document.getElementById("qty").value;
	
	
	if(checkEmpty(email,"Email Address")==false)return;
	if(checkEMailCorrectness(email)==false)return;
	if(checkEmpty(name,"Name")==false)return;
	if(checkEmpty(productname,"Product Name")==false)return;
	if(checkEmpty(casno,"CAS No.")==false)return;
	if(checkEmpty(qty,"Quantity")==false)return;
	doSendQuery();
}

function doSendQuery(){
				var formData = new FormData();
				formData.append( 'productname', productname);
				formData.append( 'comments', comments);
				formData.append( 'name', name);
				formData.append( 'email',email );
				formData.append( 'casno',casno );
				formData.append( 'qty',qty );
				$(document).ready(function(){
					
					$.ajax({
						url: "php/sendQuery.php",// give your url
						type: "POST",
						data: formData,
						dataType: 'json',
						processData: false,
						contentType: false,
						success: function (response) 
						{
							console.log(response.error);
							if(response.error == 1)
								$('#status').html('<center><font color="red">Problem in sending the Enquiry!! Please try again.</font></center>');
							else
							{
								$('#status').html('<center><font color="green">We\'ve received your Enquiry!!</font></center>');
								resetValues();
								
							}
						}
						});
				});
}


function checkEmpty(value,name){
	if(value == ""){
		document.getElementById("status").innerHTML = '<center><font color="red">Please Enter '+name+'</font></center>';
		return false;
	}
		
}

function checkEMailCorrectness(value){
	if (!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(value))){ 
		document.getElementById("status").innerHTML = '<center><font color="red">Please Enter Valid Email Address</font></center>';
		return false;
	}
}



function fillLoader(){
	var loader = '<center><image src="images/loader.gif" height="40px" width="40px"></center>';
	return loader;
}