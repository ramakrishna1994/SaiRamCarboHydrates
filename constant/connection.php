<?php 
set_include_path(dirname(__FILE__)."/../");
//require_once 'phpmailer/PHPMailerAutoload.php';

$db_host="localhost";
$db_user="sairamanneboina";
$db_password="Anneboina@9";
$db_name="sai_carbohydrates";
error_reporting(E_ALL);
ini_set('display_errors', 1);


$con=mysqli_connect($db_host,$db_user,$db_password);

mysqli_select_db($con,$db_name) or die(mysqli_error($con));


?>
