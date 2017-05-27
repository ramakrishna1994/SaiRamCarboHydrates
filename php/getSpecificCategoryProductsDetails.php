<?php 

require_once '../constant/connection.php';

$searchValue=trim(mysqli_real_escape_string($con,$_POST['searchValue']));

$category=trim(mysqli_real_escape_string($con,$_POST['category']));


$selectquery = "select * from products where (name like '%".$searchValue."%' or casno like '%".$searchValue."%') and category='".$category."' order by id asc;";

$result=mysqli_query($con,$selectquery) or die(mysqli_error($con));

$error = 1;
$xml = new SimpleXMLElement("<products />");

while($row = mysqli_fetch_array($result)){
	
		$error = 0;
		$product = $xml->addChild('product');
		$product->addChild('id',htmlspecialchars($row['id']) );
		$product->addChild('name',htmlspecialchars($row['name'] ));
		$product->addChild('category', htmlspecialchars($row['category']));
		$product->addChild('casno', htmlspecialchars($row['casno']));
		$product->addChild('synonyms', htmlspecialchars($row['synonyms']));
			
}
			


$error = $xml->addChild('error',$error);		

Header('Content-type: text/xml');
print($xml->asXML());

mysqli_close($con);
?>
