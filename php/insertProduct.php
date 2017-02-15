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

$target_dir = "../productimages/".$category."/";
//removing spaces,commas and replacing then with underscores.
$imagename = str_replace(' ', '_', $name);
$imagename = str_replace(',', '_', $imagename);

if(!empty($_FILES['ms']['name'])){
		$temp = explode(".", $_FILES["ms"]["name"]);
		$newfilename = $imagename . '.' . end($temp);
		move_uploaded_file($_FILES["ms"]["tmp_name"], $target_dir . $newfilename);

		$insertquery='insert into products(name,synonyms,mf,mw,ms,appearance,purity,sor,casno,solubility,watercontent,storage,category) values("'.$name.'","'.$synonyms.'","'.$mf.'","'.$mw.'","'.$newfilename.'","'.$appearance.'","'.$purity.'","'.$sor.'","'.$casno.'","'.$solubility.'","'.$watercontent.'","'.$storage.'","'.$category.'")' ;

}
else{
	
	$insertquery='insert into products(name,synonyms,mf,mw,appearance,purity,sor,casno,solubility,watercontent,storage,category) values("'.$name.'","'.$synonyms.'","'.$mf.'","'.$mw.'","'.$appearance.'","'.$purity.'","'.$sor.'","'.$casno.'","'.$solubility.'","'.$watercontent.'","'.$storage.'","'.$category.'")' ;
}

$result=mysqli_query($con,$insertquery) or die(mysqli_error($con));


echo '{"error":0}';



	
mysqli_close($con);
?>