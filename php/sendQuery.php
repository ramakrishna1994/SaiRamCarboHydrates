<?php
//echo phpinfo();

require_once '../constant/connection.php';




$name=trim(mysqli_real_escape_string($con,$_POST['name']));
$email=trim(mysqli_real_escape_string($con,$_POST['email']));
$casno=trim(mysqli_real_escape_string($con,$_POST['casno']));
$qty=trim(mysqli_real_escape_string($con,$_POST['qty']));


$to = "info@saicarbohydrates.com";


$mail = new PHPMailer;

//Enable SMTP debugging. 
//$mail->SMTPDebug = 3;                               
//Set PHPMailer to use SMTP.
$mail->isSMTP();            
//Set SMTP host name                          
$mail->Host = "mail.saicarbohydrates.com";
//Set this to true if SMTP host requires authentication to send email
$mail->SMTPAuth = true;                          
//Provide username and password     
$mail->Username = "info@saicarbohydrates.com";                 
$mail->Password = "Anneboina@9";                           
//If SMTP requires TLS encryption then set it
                        
//Set TCP port to connect to 
$mail->Port = 25;                                   

$mail->From = "";
$mail->FromName = "Website Enquiry";

$mail->addAddress($to);

$mail->isHTML(true);

$mail->Subject = "Enquiry Received From Website";
$mail->Body = '
<!DOCTYPE html>
<html lang="en">
<head>
  <title>ENQUIRY RECEIVED FROM WEBSITE</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  
</head>
<body>

<div class="container">
  
  <div class="panel panel-primary" style="margin-top:20px;">
      <div class="panel-heading"><center>ENQUIRY RECEIVED FROM WEBSITE</center></div>
      <div class="panel-body">
			<table class="table table-bordered">
			<tbody>
			  <tr>
				<td><b>Product Name</b></td>
				<td>'.$name.'</td>
			  </tr>
			  <tr>
				<td><b>CAS No.</b></td>
				<td>'.$casno.'</td>
			  </tr>
			  <tr>
				<td><b>Quantity</b></td>
				<td>'.$qty.'</td>
			  </tr>
			  <tr>
				<td><b>Email Adddress</b></td>
				<td>'.$email.'</td>
			  </tr>
			</tbody>
		  </table>
	  </div>
    </div>
  
</div>

</body>
</html>

';

$i=1;

if($mail->send()) 
{
    $i = 0;
} 
echo '{"error":'.$i.'}';
?>