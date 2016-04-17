<?php
	require ("dbconn.php");
	$dbconn = dbconn();
	session_start();
	$data = array();

	if(isset($_GET['action'])){
		$action = $_GET['action'];

		switch($action){
			case "represent":
				if(issset($_GET['sid'])){
					$sid = $_GET['sid'];

					$sql = "SELECT
								`comment`.content AS content, `account`.uid AS uid, `account`.dis_name AS name
							FROM `comment`
								LEFT JOIN `account` ON `comment`.uid = `account`.uid
							WHERE sid = '$sid'";
							
					$result = mysqli_query ($dbconn, $sql);

					while($row = mysqli_fetch_assoc($result)){
						$data[] = array(
							"comment" => $row["content"],
							"uid" => $row["uid"],
							"dis_name" => $row['name']
							);
					}
					echo json_encode($data);
				}
				break;
			case "add":
				if( strcmp(trim($_GET['comment']),"") > 0){
				//	$uid = $_SESSION['uid'];
					$uid = $_GET['uid'];
					$sid = $_GET['sid'];
					$content = $_GET['comment'];

					$sql = "INSERT INTO `comment`
								(uid, sid, content, update_dt)
							VALUES
								('$uid', '$sid', '$content', CURDATE())";

					mysqli_query($dbconn, $sql);
				}
				break;
			case "delete":
				if(isset($_GET['cid'])){
					$cid = $_GET['cid'];

					$sql = "DELETE FROM
								`comment`
							WHERE
								cid = '$cid'";
				}
				break;
			case "update":
				if(isset($_GET['cid'])){
					$cid = $_GET['cid'];
					$content = $_GET['comment'];
					
					$sql = "UPDATE `comment`
							SET
								content = '$content'
							WHERE
								cid = $cid";
				}
				break;
			default:
				// do nothing
				break;
		}
	}
	mysqli_query($dbconn);
?>