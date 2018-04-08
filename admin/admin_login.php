<?php
	//ini_set('display_errors',1);
	//error_reporting(E_ALL);


	require_once('phpscripts/config.php');



	$ip = $_SERVER['REMOTE_ADDR'];
	//echo $ip;
	if(isset($_POST['submit'])){
		$username = trim($_POST['username']);
		$password = trim($_POST['password']);
		if($username !== "" && $password !== "") {
			$result = logIn($username, $password, $ip);
			$message = $result;
		}else{
			$message = "Please fill in the required fields";
		}
	}
?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>CMS Portal Login</title>
<link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">
<link rel="stylesheet" href="../admin/css/main.css">
</head>
<body>
	<?php include('../includes/login_nav.html'); ?>
	<section id="login_form">
	<h1>Welcome Back!</h1>
	<p><?php if(!empty($message)){echo $message;} ?></P>
	<form action="admin_login.php" method="post" >
		<label>Username: </label>
		<input type="text" name="username" value="">
		<br>
		<label>Password:&nbsp;</label>
		<input type="text" name="password" value="">
		<br>
		<button type="submit" name="submit" value="Login">Login</button>
	</form>
	</section>
</body>
</html>
