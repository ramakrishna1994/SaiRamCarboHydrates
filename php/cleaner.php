<?php 

require_once '../constant/connection.php';

//$id=mysqli_real_escape_string($con,$_POST['id']);
//$searchValue="asd";


$deletequery = "update products set others='' where id=7;";
$result=mysqli_query($con,$deletequery) or die(mysqli_error($con));

			


$json='{"error":0}';


echo $json;

mysqli_close($con);
?>
