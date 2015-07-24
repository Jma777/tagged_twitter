<?php 
	session_start();

	include 'includes/db.php';
	include 'vendor/autoload.php';

	$sql = "SELECT * FROM users
			WHERE email = :email AND token  = :token";

		$sth = $dbh->prepare($sql);
		$sth->bindValue(":email", $_GET['email']);
		$sth->bindValue(":token", $_GET['token']);
		$sth->execute();

		$foundUser = $sth->fetch();

		if (empty($foundUser)) {
			header('location:localhost');
			die();
		}


	if (!empty($_POST)) {
		$password = trim($_POST['password']);
		$password_confirm = trim($_POST['password_confirm']);

		if (empty($password)) {
			$error = "Veuilliez renseigner votre Mots de passe !";
		}
		elseif ($password !== $password_confirm) {
			$error = "Vos mots de passe ne conrresponde pas !";
		}
		else {
			
			$containsLetter = preg_match('/[a-zA-Z]/', $password);
			
			$containsDigit = preg_match('/\d/', $password);
			
			$containsSpecial = preg_match('/[^a-zA-Z\d]/', $password);

			
			if (!$containsLetter || !$containsDigit || !$containsSpecial) {
				$error = "Veulliez choisir un mot de passe avec au moin une lettre,  et un chiffre et un caractère special";
			}
		}

		
		if (empty($password_confirm)) {
			$error = "Veuilliez confirmer votre Mots de passe !";
		}

		if (empty($error)) {

			$succes = "Votre Mots de passe a bien été changer !";
			

			$sql = "UPDATE users
					SET password = :password
					WHERE token = :token
					";
			$hashedPassword = password_hash($password, PASSWORD_DEFAULT);
			$sth = $dbh->prepare($sql);
			$sth->bindValue(":password", $hashedPassword);
			$sth->bindValue(":token", $_GET['token']);


			$sth->execute();
		}

	}

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
	<title>MDP Change</title>
</head>
<body>
	<form method="POST" action="">
		<h1>Changer votre MDP</h1>
		<input type="password" name="password" id="password" placeholder="Votre Mots de Passe">
		<input type="password" name="password_confirm" id="password_confirm" placeholder="Confirmer Votre Mots de Passe">
		<button type="submit">Envoyer</button>
		<div class="error">
			<?php 
				if (isset($error)) {
					echo $error;
				}
			 ?>
		</div>
		<div class="succes">
			<?php 
				if (isset($succes)) {
					echo $succes;
				}
			 ?>
		</div>
	</form>
	<div class="button-container">
		<a href="login.php" class="go-login">Connexion</a>
		<a href="register.php" class="go-index">Inscription</a>		
	</div>
</body>
</html>