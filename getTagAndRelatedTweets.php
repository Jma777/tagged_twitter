<?php
session_start();
include("includes/db.php");
include("includes/functions.php");

// pr($_SESSION['user']);

// affichage du tag 
	$sql = "SELECT id, title
			FROM tags
			WHERE current_tag = 1";

	$sth = $dbh->prepare($sql);
	$sth->execute();
	$tag = $sth->fetch();
	$tag_id = $tag['id'];

	// pr($tag);
	echo "<h2>".$tag['title']."</h2>";
	echo "<br />";



// affichage des tweets
	$sql = "SELECT *
			FROM tweets
			WHERE tag_id = :tag_id
			ORDER BY date_created DESC
			LIMIT 10";

	$sth = $dbh->prepare($sql);
	$sth->bindValue(":tag_id",$tag_id);
	$sth->execute();
	$tweets = $sth->fetchAll();

	
	
		
	foreach ($tweets as $tweet){

	 	$tweet_content = $tweet['tweet_content'];
	 	$img = $tweet['pic'] . ".jpg";
	 	$img_title = $tweet['pic'];
	 	$link = $tweet['link'];
	 	echo "<p>".$tweet_content."</p>";
	}

	// pr($tweets);

?>