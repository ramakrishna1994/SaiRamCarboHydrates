<?php 
set_include_path(dirname(__FILE__)."/../");
//require_once 'phpmailer/PHPMailerAutoload.php';

$db_host="localhost";
$db_user="saradhi";
$db_password="Saradhi@2";
$db_name="sai_carbohydrates";



$con=mysqli_connect($db_host,$db_user,$db_password);

mysqli_select_db($con,$db_name) or die(mysqli_error($con));


?>
