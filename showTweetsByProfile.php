<?php
	include 'includes/db.php';
	include 'includes/functions.php';
	
	if (!empty($_GET)) {
		$user_id = $_GET['i'];

		$sql = "SELECT t.id, t.user_id, t.tag_id, t.tweet_content, t.link, t.pic, t.date_created, t.date_modified, users.user_name
				FROM 
				(
				SELECT *
				FROM tweets
				WHERE user_id =  :user_id
				) t
				JOIN users
				ON t.user_id = users.id
				";
		$sth = $dbh->prepare($sql);
		$sth->bindValue(':user_id',$user_id);
		$sth->execute();

		$tweetByUser = $sth->fetchAll();
		// pr($tweetByUser);

		echo "<h2>"."Les tweets de ".$tweetByUser[0]['user_name']."</h2>";

		foreach ($tweetByUser as $tweet){

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