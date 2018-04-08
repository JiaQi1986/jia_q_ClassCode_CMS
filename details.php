<?php
	require_once('admin/phpscripts/config.php');
	if(isset($_GET['id'])){
		$id = $_GET['id'];
		$tbl = "tbl_movies";
		$col = "movies_id";
		$getSingle = getSingle($tbl, $col, $id);
	}
?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Details</title>
<link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">
<link rel="stylesheet" href="css/index.css">
</head>
<body>
	<?php
		echo "<div id=\"detailArea\">";
		if(!is_string($getSingle)){
			$row = mysqli_fetch_array($getSingle);
			echo "
			<video controls autoplay id=\"videoArea\">
				<source src=\"videos/{$row['movies_trailer']}\" type=\"video/mp4\">
			</video>

				<div id=\"detailBackground\">
				<div id=\"detailImg\">
				<img src=\"images/{$row['movies_cover']}\" alt=\"{$row['movies_title']}\">
				</div>
				<div id=\"description\">
				<h2>{$row['movies_title']}</h2>
				<p>{$row['movies_year']}</p>
				<p>{$row['movies_storyline']}</p>
				<p>{$row['movies_runtime']}</p>
				<p>{$row['movies_release']}</p>
				<a href=\"admin/phpscripts/caller_edit.php?caller_id=touch&id={$row['movies_id']}\" id=\"editMovieButton\">Edit this movie</a><br><br>
				<a href=\"index.php\">Go back to the menu...</a>
				</div>
				</div>";
		}else{
			echo "<p class=\"error\">{$getSingle}</p>";
		}
		echo "</div>";
	?>
</body>
</html>
