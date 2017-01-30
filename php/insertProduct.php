<?php 

session_start();
require_once '../constant/connection.php';

$name=trim(mysqli_real_escape_string($con,$_POST['name']));
$casno=trim(mysqli_real_escape_string($con,$_POST['casno']));
$link=trim(mysqli_real_escape_string($con,$_POST['link']));
$category=trim(mysqli_real_escape_string($con,$_POST['category']));



$insertquery='insert into products(name,casno,link,category) values("'.$name.'","'.$casno.'","'.$link.'","'.$category.'")' ;
$result=mysqli_query($con,$insertquery) or die(mysqli_error($con));


echo '{"error":0}';



	
mysqli_close($con);
?>