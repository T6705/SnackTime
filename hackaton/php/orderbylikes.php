<?php
	require ("dbconn.php");
	session_start();
	$dbconn = dbconn();
    $data = Array();
     

    $sql = "SELECT id, name, likes, dislikes 
            FROM `snack`
            ORDER BY likes DESC";

    if ($result = mysqli_query($dbconn,$sql)) {
        while ($row = mysqli_fetch_assoc($result)){
        	$data[] = Array(
                "id" => $row['id'],
                "name" => $row['name'],
                "likes" => $row['likes'],
                "dislikes" => $row['dislikes']
            );
            echo $row["id"]."/n";
        }
    } else {
        echo "no results";
    }
    echo "hello";

	mysqli_close($dbconn);
?>