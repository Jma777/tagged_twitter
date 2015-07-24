<?php
	session_start();
	include("includes/db.php");
	include("includes/functions.php");

	$sql = "SELECT id
			FROM tags
			WHERE current_tag = 1";
	$sth = $dbh->prepare($sql);
	$sth->execute();
	$response = $sth->fetchColumn();

	echo $response;