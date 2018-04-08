<?php
	//ini_set('display_errors',1);
	//error_reporting(E_ALL);
	require_once('phpscripts/config.php');
	//confirm_logged_in();
  $tbl = "tbl_user";
  $users = getAll($tbl);
?>




<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>CMS Portal</title>
<link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">
<link rel="stylesheet" href="../admin/css/main.css">
</head>
<body>
	<?php include('../includes/login_nav.html'); ?>
	<?php include('../includes/login_index.html'); ?>
	<section id="admin_deleteuser">
	<h1>Welcome to Delete Users page</h1>
  <?php
    while($row = mysqli_fetch_array($users)) {
      echo "<p>{$row['user_fname']}</p><a href=\"phpscripts/caller.php?caller_id=delete&id={$row['user_id']}\">Delete User</a><br>";
    }
   ?>
 </section>
</body>
</html>
