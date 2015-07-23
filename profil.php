<?php
	session_start();
	include("includes/db.php");
	include("includes/functions.php");

	// affichage des tweets de l'user
	$sql = "SELECT *
			FROM tweets
			WHERE user_id = 
			ORDER BY date_created DESC";
