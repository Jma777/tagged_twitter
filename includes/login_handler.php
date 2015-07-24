<?php 

	session_start();
	include 'db.php';

	print_r($_POST);

	$email = $_POST['email'];
	$password = $_POST['password'];

	$sql = "SELECT * FROM users
			WHERE email = :email
			LIMIT 1";

		$sth = $dbh->prepare($sql);
		$sth->bindValue(":email", $email);
		$sth->execute();

		$foundUsers = $sth->fetch();

		// Check l'utilisateur
	if ($foundUsers) {
		print_r($foundUsers);

		$validPassword = password_verify($password, $foundUsers['password']);
		if ($validPassword) {
			$_SESSION['user'] = $foundUsers;
			header("location:../accueil.php");
		}
		else {
			$_SESSION['login_error'] = "Mauvais Mots de Passe ou Utillisateur !";
			header('location:../login.php');
			die();
		}
	}
	else {
		$_SESSION['login_error'] = "Mauvais Mots de Passe ou Utillisateur !";
		header('location:../login.php');
		die();
	}
 ?>