
<html>

<head>
    <title><?php echo 'Sai Carbohydrates | Product Name : '.$details[0]." | CAS No : ".$details[2]." |  Synonyms : ".$details[1]; ?></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<!-------->
	<link rel='shortcut icon' href='images/logo.jpg' type='image/x-icon'/ >
	<!------->

    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/header.css">
	<link rel="stylesheet" type="text/css" href="css/footer.css">
	<link rel="stylesheet" type="text/css" href="css/home.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
</head>
<?php

require_once 'constant/connection.php';

error_reporting(E_ALL);
ini_set('display_errors', 1);

$id=trim(mysqli_real_escape_string($con,$_GET['id']));
		
$selectquery = "select * from products where id= ".$id.";";

$result=mysqli_query($con,$selectquery) or die(mysqli_error($con));
$details = array();
$category;
$others;
$detailsheaders=array("Product Name","Synonyms","CAS Registry Number","Molecular Formula","Molecular Weight","Molecular Structure","Appearance","Purity (By HPLC)","Specific optical rotation","Solubility","Water content (BY KF)","storage","Assay(By HPLC)","Melting point","Boiling Point","pH(5% in water","Dioxane free","For Research Use Only","Description","Usage","Application","Identity(IR)","Identity (FTIR)","Transport information","Free Phenol","P-Nitro phenol content","Moisture Content (by KF)","Free Inorganic Phosphates (as PO4)","Molar Absorbance ϵ312 max UV");

while($row = mysqli_fetch_array($result)){
	$details[0]=$row['name'];
	$details[1]=$row['synonyms'];
	$details[2]=$row['casno'];
	$details[3]=$row['mf'];
	$details[4]=$row['mw'];
	$details[5]=$row['ms'];
	$details[6]=$row['appearance'];
	$details[7]=$row['purity'];
	$details[8]=$row['sor'];
	$details[9]=$row['solubility'];
	$details[10]=$row['watercontent'];
	$details[11]=$row['storage'];
	
	$details[12]=$row['assay_by_hplc'];
	$details[13]=$row['melting_point'];
	$details[14]=$row['boiling_point'];
	$details[15]=$row['ph'];
	$details[16]=$row['dioxane_free'];
	$details[17]=$row['research'];
	$details[18]=$row['description'];
	$details[19]=$row['usage_product'];
	$details[20]=$row['application'];
	$details[21]=$row['identity_ir'];
	$details[22]=$row['identity_ftir'];
	$details[23]=$row['transport'];
	$details[24]=$row['free_phenol'];
	$details[25]=$row['p_nitro_phenol'];
	$details[26]=$row['moisture_content'];
	$details[27]=$row['free_inorganics'];
	$details[28]=$row['molar_absence'];
	$others=$row['others'];
	
	$category=$row['category'];
			
}

?>
<body>
    <div class="header-nightsky" id="headerMain">
        <!--Header will be filled dynamically from "mainheader.html" file-->
    </div>
	
		<div id="searchResults"></div>
	
	
	
	<div class="container" style="margin-top:35px">
		<div class="row">
			<div class="col-sm-8">
					 
					 
							
					<table class="table ">
							
						<tbody>
						
						<?php
							for($i=0;$i<count($details);$i++){
									if($i!=5){
											if($details[$i]!="") {
												echo 	'<tr >
														<td style="width:200px;"><b>'.$detailsheaders[$i].'</b></td>
														<td>'.$details[$i].'</td>
														</tr>';
											}
									}
									else{
												if($details[$i]!="") {
												echo 	'<tr>
														<td><b>'.$detailsheaders[$i].'</b></td>
														<td style="width:200px;"><img src="productimages/'.$category.'/'.$details[$i].'"></td>
														</tr>';
											}
									}
							
							}
							if($others!="") {
												echo 	'<tr>
														<td><b>Others</b></td>
														<td style="width:200px;">'.$others.'</td>
														</tr>';
							}
						?>
						
						</tbody>
					  </table>
			</div>
			<div class="col-sm-4" id="enquiryform">
				<!--will be filled dynamically from "enquiryform.html" file-->
				
			</div>
		</div>
		 
  
  
	</div>
	
	
	<div id="footerMain" class="container-fluid" >
			<!--Footer will be filled dynamically from "footer.html" file-->
	</div>
	
	
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	 <script src="js/common.js"></script>
	<script src="js/loadenquiryform.js"></script>
	 
</body>

</html>
