<?php 
	session_start();
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
	</header>
	<h2>Bienvenue sur Twitter</h2>
 	<form method="POST" action="includes/forget_password_handler.php">
		<h2>Mots de passe Oublier ?</h2>
		<p class="forget-text">Entrer votre adresse Email pour recevoir un mail et changer votre mots de passe</p>
		<input type="text" placeholder="Entrer votre adresse Mail" name="email">
		<div class="error">
			<?php 
				if (!empty($_SESSION['mail_error'])) {

						echo $_SESSION['mail_error'];

						unset($_SESSION['mail_error']);
				}
			 ?>
		</div>
		<div class="succes">
			<?php 
				if (!empty($_SESSION['mail_succes'])) {
					
					echo $_SESSION['mail_succes'];
					
					unset($_SESSION['mail_succes']);
				}
			 ?>
		</div>
		<button type="submit">Envoyer</button>
	</form>
	<div class="button-container">
		<a href="login.php" class="go-login">Connexion</a>
		<a href="register.php" class="go-index">Inscription</a>		
	</div>
 </body>
 </html>