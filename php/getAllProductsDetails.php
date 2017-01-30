<?php 

require_once '../constant/connection.php';

$searchValue=trim(mysqli_real_escape_string($con,$_POST['searchValue']));
//$searchValue="asd";


$selectquery = "select * from products where name like '%".$searchValue."%' or casno like '%".$searchValue."%' or category like '%".$searchValue."%' order by id asc;";

$result=mysqli_query($con,$selectquery) or die(mysqli_error($con));

$error = 1;
$json = "[";

while($row = mysqli_fetch_array($result)){
	$error = 0;
	$json.='{';
	$json.='"id":'.$row['id'].',';
	$json.='"name":"'.$row['name'].'",';
	$json.='"link":"'.$row['link'].'",';
	$json.='"category":"'.$row['category'].'",';
	$json.='"casno":"'.$row['casno'].'"';
	$json.='},';
			
}
			


$json.='{"error":'.$error.'}]';


echo $json;

mysqli_close($con);
?>
