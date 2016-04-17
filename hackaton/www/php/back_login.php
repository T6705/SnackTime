<?php
	require ("dbconn.php");
	$dbconn = dbconn();
	session_start();

	if(!empty($_SESSION('uid'))){
		$uid = $_POST['uid'];
		$pwd = $_POST['pwd'];

		$sql = "SELECT uid, pwd, dis_name AS name FROM `account` WHERE uid = '$uid'";
		$result = mysqli_query($dbconn, $sql);

		while($row = mysqli_fetch_assoc($result)){
			if(password_verify($pwd, $row['pwd'])){
				$name = $_SESSION['name'];
				$uid = $_SESSION['uid']
				echo "success";
			}else{
				echo "error";
			}
		}
	}
?>