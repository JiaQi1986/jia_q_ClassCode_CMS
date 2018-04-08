<?php
	ini_set('display_errors',1);
	error_reporting(E_ALL);

	require_once('phpscripts/config.php');


	//$ip = $_SERVER['REMOTE_ADDR'];
	//$time = `NOW()`;
	//echo $ip;
	$tbl = "tbl_genre";
	$genQuery = getAll($tbl);

	if(isset($_POST['submit'])){
		$movieTitle = trim($_POST['movieTitle']);
		$cover = $_FILES['cover'];
		$movieYear = trim($_POST['movieYear']);
		$movieRuntime = trim($_POST['movieRuntime']);
		$movieStoryline = trim($_POST['movieStoryline']);
		$movieTrailer = trim($_POST['movieTrailer']);
		$movieRelease = trim($_POST['movieRelease']);
		$genre = $_POST['genList'];
		$uploadMovie = addmovie($movieTitle, $cover, $movieYear, $movieRuntime, $movieStoryline, $movieTrailer,$movieRelease, $genre);
		$message = $uploadMovie;
			// echo $cover['name'];
			// echo $cover['type'];
			// echo $cover['size'];
			// echo $cover['tmp_name'];
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
	<?php include('../includes/login_index.html'); ?>
	<section id="admin_addmovie">
	<h1>Please Add Your Movies</h1>
	<?php if(!empty($message)){echo $message;} ?>
	<form action="admin_addmovie.php" method="post" enctype="multipart/form-data" class="form">
		<label>Movie Title:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
		<input type="text" name="movieTitle" value=""><br><br>
		&nbps;&nbps;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label>Movie Cover Image:&nbsp;&nbsp;&nbsp;&nbsp;</label>
		<input type="file" name="cover" value=""><br><br>
		<label>Movie Year:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
		<input type="text" name="movieYear" value=""><br><br>
		<label>Movie Runtime:</label>
		<input type="text" name="movieRuntime" value=""><br><br>
		<label>Movie Storyline:</label>
		<input type="text" name="movieStoryline" value=""><br><br>
		<label>Movie Trailer:&nbsp;&nbsp;&nbsp;&nbsp;</label>
		<input type="text" name="movieTrailer" value=""><br><br>
		<label>Movie Release:&nbsp;&nbsp;&nbsp;</label>
		<input type="text" name="movieRelease" value=""><br><br>
		<select name="genList">
		<option value="">Please select a genre</option>
		<?php while($row = mysqli_fetch_array($genQuery)){
			echo "<option value=\"{$row['genre_id']}\">{$row['genre_name']}</option>";
		} ?>
		</select><br><br><br>
		<input type="submit" name="submit" value="Add movie">
	</form>
</section>
</body>
</html>
