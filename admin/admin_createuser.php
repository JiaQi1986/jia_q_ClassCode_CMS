<?php
	//ini_set('display_errors',1);
	//error_reporting(E_ALL);
	require_once('phpscripts/config.php');
	confirm_logged_in();
	if(isset($_POST['submit'])) {
		$fname = trim($_POST['fname']);
		$username = trim($_POST['username']);
		$password = trim($_POST['password']);
		$email = trim($_POST['email']);
		$userlvl = $_POST['userlvl'];
		if(empty($userlvl)){
			$message = "Please select a user level.";
		}else{
			$result = createUser($fname, $username, $password, $email, $userlvl);
			$message = $result;
		}
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
	<section id="admin_createuser">
	<h1>Welcome to Your Create User Page</h1>
	<?php if(!empty($message)){echo $message;} ?>
	<form action="admin_createuser.php" method="post">
	<label>First Name:</label>
	<input type="text" name="fname" value="	<?php if(!empty($fname)){echo $fname;} ?>
"><br><br>

	<label>Username:&nbsp;</label>
	<input type="text" name="username" value="	<?php if(!empty($username)){echo $username;} ?>
"><br><br>

	<label>Password:&nbsp;&nbsp;</label>
	<input type="text" name="password" value="	<?php if(!empty($password)){echo $password;} ?>
"><br><br>

	<label>Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
	<input type="text" name="email" value="	<?php if(!empty($email)){echo $email;} ?>
"><br><br>

	<label>User Level:</label>
	<select name="userlvl">
		<option value="">Please select a user level</option>
		<option value="2">Web Admin</option>
		<option value="1">Web Master</option>
	</select><br><br>

	<button type="submit" name="submit" value="Create User">Create User</button>
	</form>
</section>
</body>
</html>
