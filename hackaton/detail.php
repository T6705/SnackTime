<?php
	require ('php/dbconn.php');
	$dbconn = dbconn();
   	session_start();
   	$data = array();

   	$show_item = 0;
	$data[] = array(
    	"name" => "",
    	"country" => "",
    	"price" => ""
	);

	echo "Hello world";

   	if(isset($_GET["item"])){
   		$item = $_GET["item"];

   		$sql  = "SELECT 
                    name,
                    country,
                    price
                FROM `snack` 
                WHERE id = '$item'";

        $reult = mysqli_query($dbconn, $sql);
        if(mysqli_num_rows($reult) > 0){
        	while ($row = mysqli_fetch_assoc($result)) {
                    $data[] = array(
                    	"name" => $row["name"],
                    	"country" => $row["country"],
                    	"price" => $row["price"]
                	);
            }
            $show_item = sizeof($data);
        }
   	}

   	mysqli_close($dbconn);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>Snack Time</title>
</head>
<body>
</body>