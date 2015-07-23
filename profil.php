<?php
	session_start();
	include("includes/db.php");
	include("includes/functions.php");

	// affichage des tweets de l'user
	$sql = "SELECT *
			FROM tweets
			WHERE user_id = 
			ORDER BY date_created DESC";

	$sql_user = "SELECT *
				FROM users
				WHERE id = :id";

			

?>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Profil</title>
</head>
<body>
	
</body>
</html>