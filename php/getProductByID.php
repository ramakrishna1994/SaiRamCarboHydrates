<?php 

require_once '../constant/connection.php';

$id=trim(mysqli_real_escape_string($con,$_POST['id']));


$selectquery = "select * from products where id=".$id.";";

$result=mysqli_query($con,$selectquery) or die(mysqli_error($con));

$error = 1;
$json = "[";

while($row = mysqli_fetch_array($result)){
	$error = 0;
	$json.='{';
	$json.='"id":'.$row['id'].',';
	$json.='"name":"'.$row['name'].'",';
	$json.='"synonyms":"'.$row['synonyms'].'",';
	$json.='"mf":"'.$row['mf'].'",';
	$json.='"mw":"'.$row['mw'].'",';
	$json.='"appearance":"'.$row['appearance'].'",';
	$json.='"purity":"'.$row['purity'].'",';
	$json.='"sor":"'.$row['sor'].'",';
	$json.='"casno":"'.$row['casno'].'",';
	$json.='"solubility":"'.$row['solubility'].'",';
	$json.='"watercontent":"'.$row['watercontent'].'",';
	$json.='"storage":"'.$row['storage'].'",';
	$json.='"ms":"'.$row['ms'].'",';
	$json.='"category":"'.$row['category'].'"';
	$json.='},';
			
}
			


$json.='{"error":'.$error.'}]';


echo $json;

mysqli_close($con);
?>
