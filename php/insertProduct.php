<?php 

session_start();
require_once '../constant/connection.php';


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

		$insertquery='insert into products(name,synonyms,mf,mw,ms,appearance,purity,sor,casno,solubility,watercontent,storage,category,assay_by_hplc,melting_point,ph,dioxane_free,research,description,usage_product,application,identity_ir,identity_ftir,transport,free_phenol,p_nitro_phenol,moisture_content,free_inorganics,molar_absence,boiling_point) values("'.$name.'","'.$synonyms.'","'.$mf.'","'.$mw.'","'.$newfilename.'","'.$appearance.'","'.$purity.'","'.$sor.'","'.$casno.'","'.$solubility.'","'.$watercontent.'","'.$storage.'","'.$category.'","'.$assay.'","'.$mp.'","'.$ph.'","'.$dioxane.'","'.$research.'","'.$description.'","'.$usage.'","'.$application.'","'.$identityir.'","'.$identityftir.'","'.$transport.'","'.$phenol.'","'.$nitro.'","'.$moisturecontent.'","'.$freephosphates.'","'.$molar.'","'.$boiling.'")' ;

}
else{
	
	$insertquery='insert into products(name,synonyms,mf,mw,appearance,purity,sor,casno,solubility,watercontent,storage,category,assay_by_hplc,melting_point,ph,dioxane_free,research,description,usage_product,application,identity_ir,identity_ftir,transport,free_phenol,p_nitro_phenol,moisture_content,free_inorganics,molar_absence,boiling_point) values("'.$name.'","'.$synonyms.'","'.$mf.'","'.$mw.'","'.$appearance.'","'.$purity.'","'.$sor.'","'.$casno.'","'.$solubility.'","'.$watercontent.'","'.$storage.'","'.$category.'","'.$assay.'","'.$mp.'","'.$ph.'","'.$dioxane.'","'.$research.'","'.$description.'","'.$usage.'","'.$application.'","'.$identityir.'","'.$identityftir.'","'.$transport.'","'.$phenol.'","'.$nitro.'","'.$moisturecontent.'","'.$freephosphates.'","'.$molar.'","'.$boiling.'")' ;
}

$result=mysqli_query($con,$insertquery) or die(mysqli_error($con));


echo '{"error":0}';



	
mysqli_close($con);
?>