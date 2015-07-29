<?php
	session_start();
	include 'db.php';
	include 'functions.php';
	if (!empty($_GET)) {
		if (!empty($_SESSION)) {
			
			// pr($_GET);
			// pr($_SESSION);

			$user_id = $_SESSION['user']['id'];
			$tweet_id = $_GET['tweet_id'];

			$sql = "INSERT INTO favorite(id, user_id, tweet_id, date_created, date_modified) 
					VALUES (NULL, :user_id, :tweet_id, NOW(), NOW())";
			$sth = $dbh->prepare($sql);
			$sth-> bindValue(':user_id',$user_id);
			$sth-> bindValue(':tweet_id',$tweet_id);
			

			if ($sth-> execute()) {
			echo "favori ajouté !";
				
			}

		}
	}