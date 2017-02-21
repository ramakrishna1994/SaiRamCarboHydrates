<?php 

require_once '../constant/connection.php';

$searchValue=trim(mysqli_real_escape_string($con,$_POST['searchValue']));
//$searchValue="asd";


$selectquery = "select * from products where name like '%".$searchValue."%' or casno like '%".$searchValue."%' or category like '%".$searchValue."%' or synonyms like '%".$searchValue."%' order by id asc;";

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
	$json.='"category":"'.$row['category'].'",';
	
	$json.='"assay":"'.$row['assay_by_hplc'].'",';
	$json.='"mp":"'.$row['melting_point'].'",';
	$json.='"ph":"'.$row['ph'].'",';
	$json.='"boiling":"'.$row['boiling_point'].'",';
	$json.='"dioxane":"'.$row['dioxane_free'].'",';
	$json.='"research":"'.$row['research'].'",';
	$json.='"description":"'.$row['description'].'",';
	$json.='"usage":"'.$row['usage_product'].'",';
	$json.='"application":"'.$row['application'].'",';
	$json.='"identityir":"'.$row['identity_ir'].'",';
	$json.='"identityftir":"'.$row['identity_ftir'].'",';
	$json.='"transport":"'.$row['transport'].'",';
	$json.='"phenol":"'.$row['free_phenol'].'",';
	$json.='"nitro":"'.$row['p_nitro_phenol'].'",';
	$json.='"moisturecontent":"'.$row['moisture_content'].'",';
	$json.='"freephosphates":"'.$row['free_inorganics'].'",';
	$json.='"molar":"'.$row['molar_absence'].'",';
	$json.='"others":"'.$row['others'].'"';
	
	$json.='},';
			
}
			


$json.='{"error":'.$error.'}]';


echo $json;

mysqli_close($con);
?>
