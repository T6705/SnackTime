<?php
	require ("dbconn.php");
	session_start();
	$dbconn = dbconn();
    $data = array();
     

        $action = $_GET['action'];

        switch ($action) {
            case 'week':
                $sql = "SELECT
                            a.id AS id, a.name AS name, a.ImgResult AS ImgResult, a.price AS price, b.bname AS bname, c.type AS type,
                            (SELECT COUNT(*) FROM expression d WHERE a.id = d.sid AND d.expression = 'L') AS t_like
                        FROM snack a
                        LEFT JOIN brand b ON a.id = b.bid
                        LEFT JOIN type c ON a.tid = c.tid
                        ORDER BY t_like DESC";

                $result = mysqli_query($dbconn,$sql); 
                    while ($row = mysqli_fetch_assoc($result)){
                        $data[] = array(
                            'id' => $row['id'],
                            'ImgResult' => $row['ImgResult'],
                            'name' => $row['name'],
                            'price' => $row['price'],
                            'likes' => $row['t_like']
                            );

                    #echo $row["id"]."&nbsp";
                    #echo $row["name"]."&nbsp";
                    #echo $row["likes"]."&nbsp";
                    #echo $row["dislikes"]."&nbsp";                
                    }
                
                    break;

            case 'month':
                $sql = "SELECT a.id, a.name, a.likes, a.dislikes, a.ImgResult
                        FROM like_per_month a
                        ORDER BY likes DESC";

                if ($result = mysqli_query($dbconn,$sql)) {
                    while ($row = mysqli_fetch_assoc($result)){
                        $data[] = Array(
                            "id" => $row['id'],
                            "name" => $row['name'],
                            "likes" => $row['likes'],
                            "dislikes" => $row['dislikes'],
                            "ImgResult" => $row['ImgResult']
                            );

                    #echo $row["id"]."&nbsp";
                    #echo $row["name"]."&nbsp";
                    #echo $row["likes"]."&nbsp";
                    #echo $row["dislikes"]."&nbsp";                
                    }
                };
                    break;  

            case 'year':
                $sql = "SELECT id, name, likes, dislikes 
                        FROM `snack`
                        ORDER BY likes DESC LIMIT 30";

                if ($result = mysqli_query($dbconn,$sql)) {
                    while ($row = mysqli_fetch_assoc($result)){
                        $data[] = Array(
                            "id" => $row['id'],
                            "name" => $row['name'],
                            "likes" => $row['likes'],
                            "dislikes" => $row['dislikes']
                            );

                    #echo $row["id"]."&nbsp";
                    #echo $row["name"]."&nbsp";
                    #echo $row["likes"]."&nbsp";
                    #echo $row["dislikes"]."&nbsp";                
                    }
                }
                    break;

     
        }

        
    
    echo json_encode($data);
	mysqli_close($dbconn);
?>