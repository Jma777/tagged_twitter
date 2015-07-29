<?php 
	include 'includes/register_handler.php';
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
	<title>Tagged Twitter</title>
</head>
<body>
	<header>
		<h1>Twitter</h1>
	</header>
	<div class="main-container">
		<form method="POST">
			<h2>Inscription</h2>

			<input type="text" name="user_name" id="user_name" placeholder="Votre pseudo">

			<input type="text" name="email" id="email" placeholder="Votre Email">

			<input type="password" name="password" id="password" placeholder="Votre password">

			<input type="password" name="password_confirm" id="password_confirm" placeholder="Confirmer votre password">

			<button type="submit" id="submit">Valider</button>
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
		<div class="button-container">
			<a href="login.php" class="go-login">Connexion</a>
			<a href="register.php" class="go-index">Inscription</a>		
		</div>
	</div>
</body>
</html>