<?php 

require_once '../constant/connection.php';

$id=trim(mysqli_real_escape_string($con,$_POST['id']));

$name=trim(mysqli_real_escape_string($con,$_POST['name']));
$synonyms=trim(mysqli_real_escape_string($con,$_POST['synonyms']));
$mf=trim(mysqli_real_escape_string($con,$_POST['mf']));
$mw=trim(mysqli_real_escape_string($con,$_POST['mw']));
$appearance=trim(mysqli_real_escape_string($con,$_POST['appearance']));
$purity=trim(mysqli_real_escape_string($con,$_POST['purity']));
$sor=trim(mysqli_real_escape_string($con,$_POST['sor']));
$casno=trim(mysqli_real_escape_string($con,$_POST['casno']));
$solubility=trim(mysqli_real_escape_string($con,$_POST['solubility']));
$watercontent=trim(mysqli_real_escape_string($con,$_POST['watercontent']));
$storage=trim(mysqli_real_escape_string($con,$_POST['storage']));
$category=trim(mysqli_real_escape_string($con,$_POST['category']));

$target_dir = "../productimages/".$category."/";
//removing spaces,commas and replacing then with underscores.
$imagename = str_replace(' ', '_', $name);
$imagename = str_replace(',', '_', $imagename);

$temp = explode(".", $_FILES["ms"]["name"]);
$newfilename = $imagename . '.' . end($temp);
move_uploaded_file($_FILES["ms"]["tmp_name"], $target_dir . $newfilename);


$updatequery = "update products set name='".$name."',synonyms='".$synonyms."',mf='".$mf."',mw='".$mw."',appearance='".$appearance."',purity='".$purity."',sor='".$sor."',casno='".$casno."',solubility='".$solubility."',watercontent='".$watercontent."',storage='".$storage."',category='".$category."',ms='".$newfilename."' where id=".$id.";";

$result=mysqli_query($con,$updatequery) or die(mysqli_error($con));

$json='{"error":0}';


echo $json;

mysqli_close($con);
?>
