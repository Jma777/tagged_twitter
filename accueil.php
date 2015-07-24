<?php
session_start();
include("includes/db.php");
include("includes/functions.php");
?>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<style>
		#result {
			border: 1px solid #CCC; 
			padding: 20px;
		}
		p{
			border: 1px solid #ccc;
		}
	</style>
<body>
	<h1>Accueil</h1>

	<form method= "POST" action="includes/accueil_handler.php">
		<legend>Ajouter un nouveau tweet</legend>
		<label for="tweet">Ajouter un nouveau tweet</label>
		<textarea name="tweet_content" id="tweet_content" cols="30" rows="10"></textarea>	
		<label for="link">Ajouter un lien</label>
		<input type="text" id="link" name="link">
		<label for="pic">Ajouter une image (donner le nom du fichier)</label>
		<input type="text" id="pic" name="pic">
		<input type="hidden" value="$tag_id">
		<input type="submit" value="Valider">
	</form>
	<div id="result"></div>

	
	<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script> 
	<script>
		$(window).on("load",function(){
			$.ajax({
			"url": "http://localhost/tagged_twitter/test.php"
		}).done(function(response){

			// console.log(response);
			$("#result").html(response);
		});

		});
		window.setInterval(function(){
			$.ajax({
			"url": "http://localhost/tagged_twitter/test.php"
		}).done(function(response){

			console.log(response);
			$("#result").html(response);
		});

		},2000);

	</script>
</body>
</html>