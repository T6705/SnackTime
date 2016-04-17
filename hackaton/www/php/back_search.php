<?php
    require ("dbconn.php");
        session_start();
    $dbconn = dbconn();
    $data = array();

//    echo "Hello world";
 
        $action = $_GET['action'];
        switch ($action){
            case 'search':
               
                $query = $_GET['query'];
                    $sql = "SELECT
                                a.id AS id, a.name AS name, a.ImgResult AS ImgResult, a.price AS price, b.bname AS bname, c.type,
                                (SELECT COUNT(*) FROM expression d WHERE a.id = d.sid AND d.expression = 'L') AS t_like,
                                (SELECT COUNT(*) FROM expression e WHERE a.id = e.sid AND e.expression = 'K') AS t_dislike
                            FROM snack a
                            LEFT JOIN brand b ON a.id = b.bid
                            LEFT JOIN type c ON a.tid = c.tid
                            WHERE name LIKE '%$query%'";

                    //  echo $_GET['query']. " " .$sql;

                   $result = mysqli_query($dbconn,$sql);
                        while ($row = mysqli_fetch_assoc($result)){
                            $data[] = array(
                                'id' => $row['id'],
                                'name' => $row['name'],
                                'ImgResult' => $row['ImgResult'],
                                'price' => $row['price'],
                                'like' => $row['t_like'],
                                'dislike' => $row['t_dislike'],
                                'brand' => $row['bname']
                            );
                        }
                   
                
                break;

            case "type":
                $query = strtolower($_GET['query']) ;

                $sql = "SELECT
                            `snack`.id AS id, `snack`.name AS name, `snack`.ImgResult AS ImgResult, `snack`.price AS price, `brand`.bname AS bname, `type`.type AS type
                            (SELECT COUNT(*) FROM `expression` WHERE `snack`.id = `expression`.sid AND `expression`.expression = 'L') AS t_like,
                            (SELECT COUNT(*) FROM `expression` WHERE `snack`.id = `expression`.sid AND `expression`.expression = 'K') AS t_dislike
                        FROM `snack`
                        LEFT JOIN `band` ON `snack`.bid = `brand`.bid
                        LEFT JOIN `type` ON `snack`.tid = `type`.tid
                        WHERE 
                            type LIKE '%$query%'";

                //  echo $_GET['query']. " " .$sql;

                if ($result = mysqli_query($dbconn,$sql)) {
                    while ($row = mysqli_fetch_assoc($result)){
                        $data[] = array(
                            "id" => $row["id"],
                            "name" => $row["name"],
                            "ImgResult" => $row["ImgResult"],
                            "price" => $row["price"],
                            "like" => $row['t_like'],
                            "dislike" => $row['t_dislike'],
                            "brand" => $row['bname'],
                            "type" => $row["type"]
                        );
                    }
                }
                break;
        }
 echo json_encode($data);
    mysqli_close($dbconn);
?>
