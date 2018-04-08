<?php
	//ini_set('display_errors',1);
	//error_reporting(E_ALL);
	require_once('phpscripts/config.php');
	//confirm_logged_in();
	$id = $_SESSION['user_id'];
	//echo $id;
	$tbl = "tbl_user";
	$col = "user_id";
	$popForm = getSingle($tbl, $col, $id);
	$found_user = mysqli_fetch_array($popForm, MYSQLI_ASSOC);
	//echo $found_user;



	if(isset($_POST['submit'])) {
		$fname = trim($_POST['fname']);
		$username = trim($_POST['username']);
		$password = trim($_POST['password']);
		$email = trim($_POST['email']);
		$result = editUser($id, $fname, $username, $password, $email);
		$message = $result;
		}

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
	<section id="admin_edituser">
	<h1>Welcome to Your Edit Page</h1>
	<?php if(!empty($message)){echo $message;} ?>
	<form action="admin_edituser.php" method="post">
	<label>First Name:</label>
	<input type="text" name="fname" value="	<?php echo $found_user['user_fname']; ?>
"><br><br>

	<label>Username:&nbsp;</label>
	<input type="text" name="username" value="	<?php echo $found_user['user_name']; ?>
"><br><br>

	<label>Password:&nbsp;&nbsp;</label>
	<input type="text" name="password" value="	<?php echo $found_user['user_pass']; ?>
"><br><br>

	<label>Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
	<input type="text" name="email" value="	<?php echo $found_user['user_email']; ?>
"><br><br>

	<button type="submit" name="submit" value="Edit User">Edit User</button>
	</form>
</section>
</body>
</html>
