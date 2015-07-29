<?php
session_start();
include("includes/db.php");
include("includes/functions.php");
?>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Accueil</title>
	<link rel="stylesheet" href="css/style.css">
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
		<input type="hidden" value="" id="tagId" name ="tagId">
		<input type="submit" value="Valider">
	</form>
	<div id="result"></div>

		
	<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script> 
	<script>
		var tag_id = -1;

		function getTag(){
			$.ajax({
				"url": "http://localhost/tagged_twitter/getTagId.php"
			}).done(function(response){
				tag_id = response;
				$("#tagId").attr("value",tag_id);
			});
		};
		function getRelatedTweets(){
			$.ajax({
				"url": "http://localhost/tagged_twitter/getTagAndRelatedTweets.php"
			}).done(function(response){

			// console.log(response);
				$("#result").html(response);
			});

		};

		function addFavourites(e){
			// console.log(this);
			var clickStar = $(this);
			var tweet_id = clickStar.attr("data-tweet_id");

				$.ajax({
					"url": "http://localhost/tagged_twitter/includes/addFavourites_handler.php",
					"data":{"tweet_id":tweet_id}
				}).done(function(response){
					// console.log(response);
					// clickStar.css("background-position","0% 34%");
					clickStar.addClass('clicked');

					e.stopPropagation();
				});
			
		};

		function removeFavourites(e){
			var clickStar = $(this);
			var tweet_id = clickStar.attr("data-tweet_id");
			if (clickStar.hasClass('clicked')) {

				// console.log(this);
				
				$.ajax({
					"url":"http://localhost/tagged_twitter/includes/removeFavourites_handler.php",
					"data":{"tweet_id":tweet_id}
				}).done(function(response){
					// clickStar.css("background-position","0% 22%");
					clickStar.removeClass('clicked');
					e.stopPropagation();
				});
			};
			

		};


			

			
		
		$("#result").on("click",".icon",addFavourites);
		$("#result").on("click",".icon",removeFavourites);
		$(window).on("load",getTag);
		$(window).on("load",getRelatedTweets);
		
		window.setInterval(function(){
			getTag();
			getRelatedTweets();
		}
		,10000);

	</script>
</body>
</html>