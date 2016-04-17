<?php
	require ("dbconn.php");
	session_start();
	$dbconn = dbconn();
    $query = $_GET['query']; 
    $min_length = 1;
     
    if(strlen($query) >= $min_length){ // if query length is more or equal minimum length then
         
        $query = htmlspecialchars($query); 
        $query = mysql_real_escape_string($query);
        $sql = "SELECT * FROM snack WHERE name LIKE '%$query%'";
        $i = 0;
        if ($result = mysqli_query($dbconn,$sql)) {
        	while ($row = mysqli_fetch_assoc($result)){
        		$data[$i] = Array(
        			'id'=>$row['id'],
        			'name'=>$row['name']);
        		$i = $i + 1;
        		echo $row['id'],", ", $row['name'],", ";
         	}
        } else {
            echo "no results";
        }
    }
    else{ // if query length is less than minimum
        echo "Minimum length is ".$min_length;
    }
	mysqli_close($dbconn);
?>