<?php
	//ini_set('display_errors',1);
	//error_reporting(E_ALL);
	require_once('phpscripts/config.php');
	confirm_logged_in();
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
	<section id="admin_index">
	<h1>Welcome to Your Admin Page</h1>
	<?php echo "<h2>Hi-{$_SESSION['user_name']}</h2>"; ?>
	<a href="admin_createuser.php">Create User</a>
	<a href="admin_edituser.php">Edit User</a>
	<a href="admin_deleteuser.php">Drop User</a>
	<a href="admin_addmovie.php">Add Movie</a>
	<a href="phpscripts/caller.php?caller_id=logout">Sign Out</a>
	</section>
</body>
</html>
