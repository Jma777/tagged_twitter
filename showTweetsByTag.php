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

		echo "<h2>"."Les tweets de ".$tweetByTag[0]['title']."</h2>";

		foreach ($tweetByTag as $tweet){

	 	$tweet_content = $tweet['tweet_content'];
	 	$img = $tweet['pic'] . ".jpg";
	 	$img_title = $tweet['pic'];
	 	$link = $tweet['link'];
	 	$tweet_author = $tweet['user_name'];
	 	$tweet_date = $tweet['date_created'];
	 	$id = $tweet['user_id'];
	 	echo "<p>".$tweet_content.'<br />'.'<a href="showProfile.php?i='.$id.'">'.$tweet_author.'</a>'.'<br />'."posté le : ".$tweet_date."</p>";
	}

	}