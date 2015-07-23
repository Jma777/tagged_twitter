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

		$founeUsers = $sth->fetch();

		// Check l'utilisateur
	if ($founeUsers) {
		print_r($founeUsers);

		$validPassword = password_verify($password, $founeUsers['password']);
		if ($validPassword) {
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