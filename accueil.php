<?php
session_start();
include("includes/db.php");
include("includes/functions.php");
?>
<!doctype html>
<html lang="en">
<head>
	<script type="text/javascript" src="js/jQuery.js"></script>
	<link rel="stylesheet" href="css/font-awesome/css/font-awesome.css">
	<link href="css/demo-page.css" rel="stylesheet" media="all">
	<link href="css/hover.css" rel="stylesheet" media="all">
	<link rel="stylesheet" href="css/normalize.css">
	<link rel="stylesheet" href="css/style.css">
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
	<header>
		<h1><i class="fa fa-twitter"></i>Twitter</h1>
		<div class="header-right">
			<a href="accueil.php">Accueil</a>
			<a href="profil.php">Profil</a>
			<a href="parametre_profil.php">Paramètre</a>
			<a href="includes/logout.php">Déconnexion</a>			
		</div>
	</header>

	<form method= "POST" action="includes/accueil_handler.php" class="tweeting">
		<h3>Ajouter un nouveau tweet</h3>
		<label for="tweet"></label>
		<textarea class='tweet-text' name="tweet_content" id="tweet_content" cols="50" rows="10"></textarea>	
		<label for="link"></label>
		<input type="text" id="link" name="link" placeholder="Ajouter un lien">
		<label for="pic"></label>
		<input type="text" id="pic" name="pic" placeholder="Ajouter une image ">
		<input type="hidden" value="" id="tagId" name ="tagId">
		<button type="submit" id="submit">Envoyer</button>
	</form>
	<div id="result" class="result"></div>

		
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