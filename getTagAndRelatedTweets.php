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
			WHERE t.tag_id = :tag_id
			ORDER BY date_created DESC
			LIMIT 10";

	$sth = $dbh->prepare($sql);
	$sth->bindValue(":tag_id",$tag_id);
	$sth->execute();
	$tweets = $sth->fetchAll();

	// pr($tweets);
	


	$sql ="SELECT tweet_id
			FROM favorite
			WHERE user_id = :user_id";
	$sth = $dbh->prepare($sql);
	$sth->bindValue(':user_id',$_SESSION['user']['id']);
	$sth->execute();
	$favoriteTweetsByUser = $sth->fetchAll();

	// pr($favoriteTweetsByUser);
	$favoriteTweets = array();

	foreach ($favoriteTweetsByUser as $favoriteTweetByUser) {
	// 	echo $favoriteTweetByUser . "br";
		foreach ($favoriteTweetByUser as $tweet_id) {
			$favoriteTweets[] = $tweet_id;
		}
	}

	// pr($favoriteTweets);


	$favoriteTweetClass = "";
	
	
		
	foreach ($tweets as $tweet){

	 	$tweet_content = $tweet['tweet_content'];
	 	$img = $tweet['pic'] . ".jpg";
	 	$img_title = $tweet['pic'];
	 	$link = $tweet['link'];
	 	$tweet_author = $tweet['user_name'];
	 	$tweet_date = $tweet['date_created'];
	 	$id = $tweet['user_id'];
	 	$tweet_id = $tweet['id'];
	 	if (in_array($tweet_id, $favoriteTweets)){
	 		$favoriteTweetClass = " clicked";
	 	}
	 	else{
	 		$favoriteTweetClass = "";
	 	}
	 	
	 	echo "<p>".$tweet_content.'<br />'.'<a href="showTweetsByProfile.php?i='.$id.'">'.$tweet_author.'</a>'.'<br />'."posté le : ".$tweet_date.'<span class="icon'.$favoriteTweetClass.'" data-tweet_id="'.$tweet_id.'"></span></div>'."</p>";
	}

	// pr($tweets);

?>