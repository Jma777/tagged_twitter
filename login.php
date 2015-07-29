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
	<div class="main-container">
		<h2>Bienvenue sur Twitter</h2>
		<form method="POST" action="includes/login_handler.php">
			<h2>Connexions</h2>
			<input type="text" name="email" placeholder="Votre Email">
			<input type="password" name="password" placeholder="Password">
			<button type="submit">Connexion</button>
			<a href="forget_password.php" class="forget-pass">Mots de passe Oublier ?</a>
			<div class="error">
				<b>
					<?php 
						if (!empty($_SESSION['login_error'])) {

							echo $_SESSION['login_error'];

							unset($_SESSION['login_error']);
						}

					 ?>
				</b>
			</div>
		</form>
		<div class="button-container">
			<a href="login.php" class="go-login">Connexion</a>
			<a href="register.php" class="go-index">Inscription</a>		
		</div>
	</div>
</body>
</html>