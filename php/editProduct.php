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

$assay=trim(mysqli_real_escape_string($con,$_POST['assay']));
$mp=trim(mysqli_real_escape_string($con,$_POST['mp']));
$ph=trim(mysqli_real_escape_string($con,$_POST['ph']));
$boiling=trim(mysqli_real_escape_string($con,$_POST['boiling']));
$dioxane=trim(mysqli_real_escape_string($con,$_POST['dioxane']));
$research=trim(mysqli_real_escape_string($con,$_POST['research']));
$description=trim(mysqli_real_escape_string($con,$_POST['description']));
$usage=trim(mysqli_real_escape_string($con,$_POST['usage']));
$application=trim(mysqli_real_escape_string($con,$_POST['application']));
$identityir=trim(mysqli_real_escape_string($con,$_POST['identityir']));
$identityftir=trim(mysqli_real_escape_string($con,$_POST['identityftir']));
$transport=trim(mysqli_real_escape_string($con,$_POST['transport']));
$phenol=trim(mysqli_real_escape_string($con,$_POST['phenol']));
$nitro=trim(mysqli_real_escape_string($con,$_POST['nitro']));
$moisturecontent=trim(mysqli_real_escape_string($con,$_POST['moisturecontent']));
$freephosphates=trim(mysqli_real_escape_string($con,$_POST['freephosphates']));
$molar=trim(mysqli_real_escape_string($con,$_POST['molar']));

$target_dir = "../productimages/".$category."/";
//removing spaces,commas and replacing then with underscores.
$imagename = str_replace(' ', '_', $name);
$imagename = str_replace(',', '_', $imagename);

if(!empty($_FILES['ms']['name'])){	
	$temp = explode(".", $_FILES["ms"]["name"]);
	$newfilename = $imagename . '.' . end($temp);
	move_uploaded_file($_FILES["ms"]["tmp_name"], $target_dir . $newfilename);

	$updatequery = "update products set name='".$name."',synonyms='".$synonyms."',mf='".$mf."',mw='".$mw."',appearance='".$appearance."',purity='".$purity."',sor='".$sor."',casno='".$casno."',solubility='".$solubility."',watercontent='".$watercontent."',storage='".$storage."',category='".$category."',ms='".$newfilename."',assay_by_hplc='".$assay."',melting_point='".$mp."',ph='".$ph."',dioxane_free='".$dioxane."',research='".$research."',description='".$description."',usage_product='".$usage."',application='".$application."',identity_ir='".$identityir."',identity_ftir='".$identityftir."',transport='".$transport."',free_phenol='".$phenol."',p_nitro_phenol='".$nitro."',moisture_content='".$moisturecontent."',free_inorganics='".$freephosphates."',molar_absence='".$molar."',boiling_point='".$boiling."' where id=".$id.";";
}
else{
	$updatequery = "update products set name='".$name."',synonyms='".$synonyms."',mf='".$mf."',mw='".$mw."',appearance='".$appearance."',purity='".$purity."',sor='".$sor."',casno='".$casno."',solubility='".$solubility."',watercontent='".$watercontent."',storage='".$storage."',category='".$category."',assay_by_hplc='".$assay."',melting_point='".$mp."',ph='".$ph."',dioxane_free='".$dioxane."',research='".$research."',description='".$description."',usage_product='".$usage."',application='".$application."',identity_ir='".$identityir."',identity_ftir='".$identityftir."',transport='".$transport."',free_phenol='".$phenol."',p_nitro_phenol='".$nitro."',moisture_content='".$moisturecontent."',free_inorganics='".$freephosphates."',molar_absence='".$molar."',boiling_point='".$boiling."' where id=".$id.";";
	
}
$result=mysqli_query($con,$updatequery) or die(mysqli_error($con));

$json='{"error":0}';


echo $json;

mysqli_close($con);
?>
