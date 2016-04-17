<?php
	require ("dbconn.php");
	$dbconn = dbconn();
	session_start();
	$data = array();

	if(isset($_GET['action'])){
		$action = $_GET['action'];
		
		
		switch ($action) {
			case 'total_like':
				$sid = $_GET['sid'];
				$reult_no = 0;
				$sql = "SELECT * FROM `expression` WHERE sid = '$sid' AND expression = 'L'";
				if($result = mysqli_query($dbconn, $sql)){
					$reult_no = mysqli_num_rows($result);
				}
				echo $reult_no;
				break;
			case 'total_dislike':
				$sid = $_GET['sid'];
				$reult_no = 0;
				$sql = "SELECT * FROM `expression` WHERE sid = '$sid' AND expression = 'D'";
				if($result = mysqli_query($dbconn, $sql)){
					$reult_no = mysqli_num_rows($result);
				}
				echo $reult_no;
				break;
			case 'like':
				$sid = $_GET['sid'];
				$uid = $_GET['uid'];
				$expression = $_GET['expression'];

				$sql = "INSERT INTO `expression`
							(sid, uid, expression, update_dt)
						VALUES
							('$sid', '$uid', 'L', CURDATE()) 
						ON DUPLICATE KEY UPDATE sid = '$sid', uid = '$uid', expression = 'D'";
				if(mysqli_query($dbconn, $sql)){
					// return action true;
				}else{
					// return action false;
					$sql_1 = "DELETE FROM `expression`
							  WHERE
							      uid = '$uid' AND sid = '$sid'";
				}
				break;
			case 'dislike':
				$sid = $_GET['sid'];
				$uid = $_GET['uid'];
				$expression = $_GET['expression'];

				$sql = "INSERT INTO `expression`
							(sid, uid, expression, update_dt)
						VALUES
							('$sid', '$uid', 'D', CURDATE()) 
						ON DUPLICATE KEY UPDATE sid = '$sid', uid = '$uid', expression = 'L'";
				if(mysqli_query($dbconn, $sql)){
					// return action true;
				}else{
					// return action false;
					$sql_1 = "DELETE FROM `expression`
							  WHERE
							      uid = '$uid' AND sid = '$sid'";
				}
				break;
			default:
				# code...
				break;
		}

	}
?>