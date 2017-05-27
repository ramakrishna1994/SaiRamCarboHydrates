<?php 

require_once '../constant/connection.php';

$searchValue=trim(mysqli_real_escape_string($con,$_POST['searchValue']));
//$searchValue="";

$xml = new SimpleXMLElement("<products />");
$selectquery = "select * from products where name like '%".$searchValue."%' or casno like '%".$searchValue."%' or category like '%".$searchValue."%' or synonyms like '%".$searchValue."%' order by id asc;";

$result=mysqli_query($con,$selectquery) or die(mysqli_error($con));

$error = 1;



while($row = mysqli_fetch_array($result)){
		$error = 0;
		$product = $xml->addChild('product');
		$product->addChild('id',htmlspecialchars($row['id']) );
		$product->addChild('name',htmlspecialchars($row['name'] ));
		$product->addChild('synonyms', htmlspecialchars($row['synonyms']));
		$product->addChild('casno',htmlspecialchars($row['casno'] ));
		/*
		$product->addChild('mf',htmlspecialchars($row['mf'] ));
		$product->addChild('mw',htmlspecialchars($row['mw'] ));
		$product->addChild('appearance',htmlspecialchars($row['appearance']) );
		$product->addChild('purity', htmlspecialchars($row['purity']));
		$product->addChild('sor', htmlspecialchars($row['sor']));
		$product->addChild('solubility',htmlspecialchars($row['solubility'] ));
		$product->addChild('watercontent', htmlspecialchars($row['watercontent']));
		$product->addChild('storage', htmlspecialchars($row['storage']));
		$product->addChild('ms', htmlspecialchars($row['ms']));
		$product->addChild('category',htmlspecialchars($row['category'] ));
		$product->addChild('assay',htmlspecialchars($row['assay_by_hplc'] ));
		$product->addChild('mp', htmlspecialchars($row['melting_point']));
		$product->addChild('ph',htmlspecialchars($row['ph'] ));
		$product->addChild('boiling', htmlspecialchars($row['boiling_point']));
		$product->addChild('dioxane', htmlspecialchars($row['dioxane_free']));
		$product->addChild('research',htmlspecialchars($row['research']) );
		$product->addChild('description',htmlspecialchars($row['description'] ));
		$product->addChild('usage',htmlspecialchars($row['usage_product'] ));
		$product->addChild('application',htmlspecialchars($row['application'] ));
		$product->addChild('identityir',htmlspecialchars($row['identity_ir']) );
		$product->addChild('identityftir',htmlspecialchars($row['identity_ftir'] ));
		$product->addChild('transport',htmlspecialchars($row['transport'] ));
		$product->addChild('phenol',htmlspecialchars($row['free_phenol']) );
		$product->addChild('nitro',htmlspecialchars($row['p_nitro_phenol'] ));
		$product->addChild('moisturecontent',htmlspecialchars($row['moisture_content'] ));
		$product->addChild('freephosphates',htmlspecialchars($row['free_inorganics']) );
		$product->addChild('molar',htmlspecialchars($row['molar_absence'] ));
		$product->addChild('others',htmlspecialchars($row['others'] ));
		*/
		
			
}

$error = $xml->addChild('error',$error);		

Header('Content-type: text/xml');
print($xml->asXML());

mysqli_close($con);
?>
