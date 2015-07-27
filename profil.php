<?php
	session_start();
	include("includes/db.php");
	include("includes/functions.php");

	// affichage des tweets de l'user
	$sql = "SELECT *
			FROM tweets
			WHERE user_id = 
			ORDER BY date_created DESC";


			print_r($_SESSION['user']);

?>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Profil</title>
</head>
<body>
	<div class="main-container">
		<div>
			<h2><?php echo $_SESSION['user']['user_name']; ?></h2>
			<p><?php echo $_SESSION['user']['email']; ?></p>
			
			<img src="img/uploads/thumbnails/<?php echo $_SESSION['user']['pic_name']; ?>" alt="Photo de profil">
		</div>
		<a href="includes/logout.php">Déconnexion</a>
		<a href="parametre_profil.php">Paramètre</a>
	</div>
</body>
</html>