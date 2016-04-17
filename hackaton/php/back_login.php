<?php
   require ("dbconn.php");
   session_start();
   $dbconn = dbconn();
   $username = json_decode ($_POST['username']);
   $password = json_decode ($_POST['password']);
   $sql  = "SELECT 
                        uid,
                        dis_name,
                        pwd
                  FROM account 
                  WHERE uid = '$username' AND pwd = '$password'";
   $result = mysqli_query($dbconn, $sql);
   echo $sql;
   if (mysqli_num_rows($result)==0) {
      echo "error";
   }else{
      while ($row = mysqli_fetch_assoc($result)) {
      $_SESSION['username'] = $row['dis_name'];
      $_SESSION['uid'] = $row['uid'];
      }
      echo "success";
   };
   mysqli_close($dbconn);
?>
