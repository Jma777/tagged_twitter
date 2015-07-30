<?php
	include "includes/db.php";
	include "includes/functions.php";


	if (!empty($_GET)) {
		$tag_id = $_GET['i'];

		$sql = "SELECT t.id, t.user_id, t.tag_id, t.tweet_content, t.link, t.pic, t.date_created, t.date_modified, users.user_name, tags.title
				FROM 
				(
				SELECT *
				FROM tweets
				WHERE tag_id =  :tag_id
				) t
				JOIN users
				ON t.user_id = users.id
				JOIN tags
				ON t.tag_id = tags.id
				";

		$sth = $dbh->prepare($sql);
		$sth->bindValue(':tag_id',$tag_id);
		$sth->execute();

		$tweetByTag = $sth->fetchAll();
		// pr($tweetByTag);

		//echo "<h2>"."Les tweets de ".$tweetByTag[0]['title']."</h2>";

		foreach ($tweetByTag as $tweet){

	 	$tweet_content = $tweet['tweet_content'];
	 	$img = $tweet['pic'] . ".jpg";
	 	$img_title = $tweet['pic'];
	 	$link = $tweet['link'];
	 	$tweet_author = $tweet['user_name'];
	 	$tweet_date = $tweet['date_created'];
	 	$id = $tweet['user_id'];
	 	//echo "<p>".$tweet_content.'<br />'.'<a href="showProfile.php?i='.$id.'">'.$tweet_author.'</a>'.'<br />'."posté le : ".$tweet_date."</p>";
	}

	}
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
	<title></title>
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
	<div class='main-container'>
		<h2>Les tweets de <?php echo $tweetByTag[0]['title']; ?></h2>
		<div class="tweet">
			<?php 
				foreach ($tweetByTag as $tweet){
		
	 			$tweet_content = $tweet['tweet_content'];
	 			$img = $tweet['pic'] . ".jpg";
	 			$img_title = $tweet['pic'];
	 			$link = $tweet['link'];
	 			$tweet_author = $tweet['user_name'];
	 			$tweet_date = $tweet['date_created'];
	 			$id = $tweet['user_id'];
	 			echo "<p>".$tweet_content.'<br />'.'<a href="showTweetsByProfile.php?i='.$id.'">'.$tweet_author.'</a>'.'<br />'."posté le : ".$tweet_date."</p>";
			}
			 ?>
		</div>
	</div>
</body>
</html>