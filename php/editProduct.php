<?php 

require_once '../constant/connection.php';

$id=trim(mysqli_real_escape_string($con,$_POST['id']));
$name=trim(mysqli_real_escape_string($con,$_POST['name']));
$casno=trim(mysqli_real_escape_string($con,$_POST['casno']));
$link=trim(mysqli_real_escape_string($con,$_POST['link']));
$category=trim(mysqli_real_escape_string($con,$_POST['category']));


$updatequery = "update products set name='".$name."',casno='".$casno."',link='".$link."',category='".$category."' where id=".$id.";";

$result=mysqli_query($con,$updatequery) or die(mysqli_error($con));

$json='{"error":0}';


echo $json;

mysqli_close($con);
?>
