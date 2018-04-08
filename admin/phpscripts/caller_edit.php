<?php
  ini_set('display_errors',1);
  error_reporting(E_ALL);

  require_once('config.php');


?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Edit All</title>
<link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">
<link rel="stylesheet" href="../css/main.css">
</head>
<body>
  <section id="caller_edit">
    <h1>Please Edit Your Movies</h1>
  <?php
    if(isset($_GET['caller_id'])){
      $dir = $_GET['caller_id'];
      if($dir == 'touch'){
        $eachId = $_GET['id'];
        single_edit("tbl_movies", "movies_id", $eachId);
      }else{
        echo "Caller id is wrong";
      }
    }
    //phpinfo();
  ?>
</section>
</body>
</html>
