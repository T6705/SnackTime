<?php
	function dbconn() {
	    $servername = "unicomhk.net";
	    $username = "unicknet_test";
	    $password = "testuser";
	    $dbconn = mysqli_connect($servername, $username, $password, "unicknet_snacktime") or die(mysql_error());
	    
	    return $dbconn;
	}
?>