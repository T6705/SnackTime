<?php
	require ("dbconn.php");
	session_start();
	$dbconn = dbconn();
    

     
    if(isset($_GET['query'])){ // if query length is more or equal minimum length then
        
        $query = $_GET['query'];
        $query = htmlspecialchars($query); 
        $query = mysql_real_escape_string($query);

        $sql = "SELECT
                    id,
                    name
                FROM `snack`
                WHERE 
                    name LIKE `%$query%`";

        if ($result = mysqli_query($dbconn,$sql)) {
        	while ($row = mysqli_fetch_assoc($result)){
        		data[] = (
                    "id" => $row["id"],
                    "name" => $row["name"]
                );
                echo $row["id"]."/n";
         	}
        } else {
            echo "no results";
        }
    }

	mysqli_close($dbconn);
?>

