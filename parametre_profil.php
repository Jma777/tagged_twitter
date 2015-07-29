<?php 
	session_start();
	include("includes/parametre_handler.php");
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
	<title>Document</title>
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
		<div class="para-form">
			<p>Paramètre de <?php echo $_SESSION['user']['user_name']; ?> </p>
			<form method="POST" enctype="multipart/form-data" class="parametre">
				<input type="text" name="user_name" id="user_name" placeholder="Votre pseudo" value="<?php echo $_SESSION['user']['user_name']; ?>">

				<input type="text" name="email" id="email" placeholder="Votre Email" value="<?php echo $_SESSION['user']['email']; ?>">

 				<textarea class="description-second" name="bio" id="" cols="50" rows="10" placeholder="Description de vous " ><?php echo $_SESSION['user']['bio']; ?></textarea>
				
				<input class="pic-second" type="file" name="pic_name" id="pic_name" value="<?php echo $_SESSION['user']['pic_name']; ?>">

				<a href="forget_password.php">Changer le mots de passe</a>

				<button type="submit" id="submit">Valider les paramètre</button>
				<div>
					<?php 
						if (isset($error)) {
							echo "<div class='error'><b>". $error ."</b></div>";
						}
						if (isset($succes)) {
							echo "<div class='succes'><b>". $succes ."</b></div>";
						}
					 ?>
			</div>
			</form>
			
		</div>
	</div>
</body>
</html>