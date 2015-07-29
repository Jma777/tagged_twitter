<?php
	session_start();
	include("includes/db.php");
	include("includes/functions.php");

	// affichage des tweets de l'user
	$sql = "SELECT *
			FROM tweets
			WHERE user_id = 
			ORDER BY date_created DESC";

?>
<!doctype html>
<html lang="en">
<head>
	<script type="text/javascript" src="js/jQuery.js"></script>
	<link rel="stylesheet" href="css/font-awesome/css/font-awesome.css">
	<link href="css/demo-page.css" rel="stylesheet" media="all">
	<link href="css/hover.css" rel="stylesheet" media="all">
	<link rel="stylesheet" href="css/normalize.css">
	<link rel="stylesheet" href="css/style.css">
	<meta charset="UTF-8">
	<title>Profil</title>
</head>
<body>
	<header>
		<h1><i class="fa fa-twitter"></i>Twitter</h1>
		<div class="header-right">
			<a href="accueil.php">Accueil</a>
			<a href="profil.php">Profil</a>
			<a href="parametre_profil.php">Paramètre</a>
			<a href="includes/logout.php">Déconnexion</a>			
		</div>

	</header>
	<div class="main-container">
		<div>
			<h2><?php echo $_SESSION['user']['user_name']; ?></h2>
			<p><?php echo $_SESSION['user']['bio']; ?></p>
			
			<img src="img/uploads/thumbnails/<?php echo $_SESSION['user']['pic_name']; ?>" alt="Photo de profil">
		</div>
	</div>
</body>
</html>