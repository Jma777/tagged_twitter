<?php
	session_start();
	include 'db.php';
	include 'functions.php';

	// pr($_GET);

	if (!empty($_GET)) {
		if (!empty($_SESSION)) {
			
			// pr($_GET);
			// pr($_SESSION);

			$user_id = $_SESSION['user']['id'];
			$tweet_id = $_GET['tweet_id'];

			$sql = "DELETE FROM favorite
					WHERE tweet_id = :tweet_id AND user_id = :user_id";
			$sth = $dbh->prepare($sql);
			$sth-> bindValue(':user_id',$user_id);
			$sth-> bindValue(':tweet_id',$tweet_id);

			if ($sth-> execute()) {
				echo "favori enlevé !";
				
			}
		}
	}
