<?php
	session_start();
	include ("db.php");
	include ("functions.php");

	pr($_SESSION['user']);
		
		// ajouter un nouveau tweet
	
	if (!empty($_POST)) {
		pr($_POST);
	$id = $_SESSION['user']['id'];
	$tweet_content = $_POST['tweet_content'];
	$link = $_POST['link'];
	$pic = $_POST['pic'];
	$tagId = $_POST['tagId'];

	$sql = "INSERT INTO tweets(id, user_id, tag_id, tweet_content, link, pic, date_created, date_modified) 
			VALUES (NULL, :id,:tagId,:tweet_content,:link,:pic,NOW(),NOW())"; //ajouter tag_id en fonction de la session le tag en cours

			

	$sth = $dbh->prepare($sql);
	$sth->bindValue(":id",$id);
	$sth->bindValue(":tweet_content",$tweet_content);
	$sth->bindValue(":link",$link);
	$sth->bindValue(":pic",$pic);
	$sth->bindValue(":tagId",$tagId);

	$sth->execute();

	if ($sth->execute()) {
		// echo "tweet posté !";
		header("location: ../accueil.php");
		die();
	}


	}

