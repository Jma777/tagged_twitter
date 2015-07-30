<?php
	session_start();
	include("includes/db.php");
	include("includes/functions.php");
	// pr($_SESSION);

	// affichage des tweets de l'user
	$sql = "SELECT t.id, t.user_id, t.tag_id, t.tweet_content, t.link, t.pic, t.date_created, users.user_name
			FROM tweets AS t
			JOIN users
			ON t.user_id = users.id
			WHERE t.user_id = :user_id
			ORDER BY date_created DESC";

	$sth = $dbh->prepare($sql);
	$sth->bindValue(":user_id",$_SESSION['user']['id']);
	$sth->execute();
	$tweets = $sth->fetchAll();

	// pr($tweets);

	$sql = "SELECT f.user_id,f.tweet_id, t.id, t.user_id, t.tag_id, t.tweet_content, t.link, t.pic, t.date_created, u.user_name
			FROM favorite AS f
			JOIN tweets AS t
			ON f.tweet_id = t.id
			JOIN users AS u
			ON t.user_id = u.id";

	$sth = $dbh->prepare($sql);
	$sth->execute();
	$favorite_tweets = $sth->fetchAll();

	// pr($favorite_tweets);


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
	<title>Profil</title>
</head>
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
	<div class="main-container">
		<div>
			<h2><?php echo $_SESSION['user']['user_name']; ?></h2>
			<p><?php echo $_SESSION['user']['bio']; ?></p>
			
			<img src="img/uploads/thumbnails/<?php echo $_SESSION['user']['pic_name']; ?>" alt="Photo de profil">


		</div>
		<div>
			<h2>Mes tweets</h2>

			<?php

			foreach ($tweets as $tweet){

			 	$tweet_content = $tweet['tweet_content'];
			 	$img = $tweet['pic'] . ".jpg";
			 	$img_title = $tweet['pic'];
			 	$link = $tweet['link'];
			 	$tweet_author = $tweet['user_name'];
			 	$tweet_date = $tweet['date_created'];
			 	$id = $tweet['user_id'];
			 				 	
			 	echo "<p>".$tweet_content.'<br />'.'<a href="showTweetsByProfile.php?i='.$id.'">'.$tweet_author.'</a>'.'<br />'."posté le : ".$tweet_date.'</div>'."</p>";
			}
			?>

			<h2>Mes tweets favoris</h2>

			<?php

			foreach ($favorite_tweets as $favorite_tweet){

			 	$tweet_content = $favorite_tweet['tweet_content'];
			 	$img = $favorite_tweet['pic'] . ".jpg";
			 	$img_title = $favorite_tweet['pic'];
			 	$link = $favorite_tweet['link'];
			 	$tweet_author = $favorite_tweet['user_name'];
			 	$tweet_date = $favorite_tweet['date_created'];
			 	$id = $favorite_tweet['user_id'];
			 				 	
			 	echo "<p>".$tweet_content.'<br />'.'<a href="showTweetsByProfile.php?i='.$id.'">'.$tweet_author.'</a>'.'<br />'."posté le : ".$tweet_date.'</div>'."</p>";
			}

			?>
			
		</div>
	</div>
</body>
</html>