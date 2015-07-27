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
	echo "<h2>".'<a href="showTweetsByTag.php?i='.$tag_id.'">'.$tag['title'].'</a>'."</h2>";
	echo "<br />";



// affichage des tweets
	$sql = "SELECT t.id, t.user_id, t.tag_id, t.tweet_content, t.link, t.pic, t.date_created, users.user_name
			FROM tweets as t
			JOIN users
			ON t.user_id = users.id
			WHERE tag_id = :tag_id
			ORDER BY date_created DESC
			LIMIT 10";

	$sth = $dbh->prepare($sql);
	$sth->bindValue(":tag_id",$tag_id);
	$sth->execute();
	$tweets = $sth->fetchAll();
	pr($tweets);

	
	
		
	foreach ($tweets as $tweet){

	 	$tweet_content = $tweet['tweet_content'];
	 	$img = $tweet['pic'] . ".jpg";
	 	$img_title = $tweet['pic'];
	 	$link = $tweet['link'];
	 	$tweet_author = $tweet['user_name'];
	 	$tweet_date = $tweet['date_created'];
	 	$id = $tweet['user_id'];
	 	echo "<p>".$tweet_content.'<br />'.'<a href="showTweetsByProfile.php?i='.$id.'">'.$tweet_author.'</a>'.'<br />'."posté le : ".$tweet_date."</p>";
	}

	// pr($tweets);

?>