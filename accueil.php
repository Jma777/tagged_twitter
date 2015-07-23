<?php
include("includes/db.php");
include("includes/functions.php");

// affichage du tag
	$sql = "SELECT *
			FROM tags
			ORDER BY RAND()
			LIMIT 1";

	$sth = $dbh->prepare($sql);
	$sth->execute();
	$tag = $sth->fetch();

	pr($tag);

// affichage des tweets
	// $sql = "SELECT *
	// 		FROM tweets
	// 		-- WHERE ? = tag_id afficher les messages reliés au tag dans le créneau
	// 		ORDER BY date_created DESC
	// 		LIMIT 10";

	// $sth = $dbh->prepare($sql);
	// $sth->execute();
	// $tweets = $sth->fetchAll();

	// pr($tweets);

?>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<body>
	<div class="maint-container">
		

	<h1>Accueil</h1>

	<h2><?php echo tag['title']?></h2> 

	<form method= "POST" action="includes/accueil_handler.php">
		<label for="tweet">Ajouter un nouveau tweet</label>
		<textarea name="tweet_content" id="tweet_content" cols="30" rows="10"></textarea>	
		<label for="link">Ajouter un lien</label>
		<input type="text" id="link" name="link">
		<label for="pic">Ajouter une image (donner le nom du fichier)</label>
		<input type="text" id="pic" name="pic">
		<input type="hidden" value="$tag_id">
		<input type="submit" value="Valider">
	</form>

	<?php
	foreach ($tweets as $tweet) :
	 	$tweet_content = $tweet['tweet_content'];
	 	$img = $tweet['pic'] . ".jpg";
	 	$img_title = $tweet['pic'];
	 	$link = $tweet['link'];
	?>

	<div class="showTweets">

		<p><?php echo $tweet_content?></p>
		<img src="<?php echo $img?>" alt="<?php echo $img_title?>">
		<a href="<?php echo $link?>"><?php echo $link?></a>

	<?php
	endforeach;
	?>
		
	</div>
	
	</div>
</body>
</html>
