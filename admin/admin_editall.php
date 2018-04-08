<?php
  ini_set('display_errors',1);
  error_reporting(E_ALL);

  require_once('phpscripts/config.php');


?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Edit All</title>
<link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">
<link rel="stylesheet" href="../admin/css/main.css">
</head>
<body>
  <?php include('../includes/login_nav.html'); ?>
	<?php include('../includes/login_index.html'); ?>
  <section id="admin_editall">
    <h1>Please Edit Your Movies</h1>
  <?php
    echo single_edit("tbl_movies", "movies_id", 1);
    //phpinfo();
  ?>
</section>
</body>
</html>
