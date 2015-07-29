<?php 
	session_start();
	include 'includes/db.php';

	include 'includes/functions.php';


	$user_name_regex = "/^[\p{L}0-9._-]{2,100}$/u";
	//print_r($_POST);

	if (!empty($_POST)) {
		
		// Creation des variable et je Clean avec les trim et strip Tag
		$user_name = trim(strip_tags($_POST['user_name']));
		$email = trim(strip_tags($_POST['email']));
		$password = trim(strip_tags($_POST['password']));
		$password_confirm = trim(strip_tags($_POST['password_confirm']));

		// Verif du User Name
		if (empty($user_name)) {
			$error = "Veuilliez entrer en Pseudo";
		}
		if (strlen($user_name) > 100) {
			$error = "Votre pseudo est trop long ";
		}
		elseif (!preg_match($user_name_regex, $user_name)) {
			$error = "Votre pseudo ne doit pas contenir de truc de merde";
		}
		elseif (filter_var($user_name, FILTER_VALIDATE_EMAIL)) {
			$error = "Veulliez ne pas utilliser un Email comme pseudo !";
		}
		else {
			$sql = " SELECT user_name FROM users WHERE user_name = :user_name";
			$sth = $dbh->prepare($sql);
			$sth-> execute(array(":user_name" => $user_name));
			$foundPseudo = $sth->fetchColumn();

			if ($foundPseudo) {
				$error = "Ce pseudo est déjà enregistré ici !";
			}
		}

		// Verif du Mail
		if (empty($email)) {
			$error = 'Veuilliez entrer un Email';
		}
		elseif (strlen($email) > 100) {
			$error = "Votre email est trop long";
		}
		else {
			$sql = " SELECT email FROM users WHERE email = :email";
			$sth = $dbh->prepare($sql);
			$sth-> execute(array(":email" => $email));
			$foundEmail = $sth->fetchColumn();

			if ($foundEmail) {
				$error = "Cet email est déjà enregistré ici !";
			}
		}


		// Verif du password
		if (empty($password)) {
			$error = "Veuilliez entrer votre mots de passe";
		}
		elseif ($password !== $password_confirm ) {
			$error = "Vos mots de passe de corresponde pas ";
		}
		elseif (!filter_var($email,  FILTER_VALIDATE_EMAIL)) {
			$error = "Votre Email n'est pas valide !";
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
			$error = "Veulliez confirmer votre mots de passe";
		}

		if (empty($error)) {

			$sql = "INSERT INTO users(id, user_name, password, email, pic_name, bio, token, token_expired, date_created, date_modified)
							VALUES (NULL, :user_name, :password, :email,'default.jpg', NULL, NULL, NULL, NOW(), NOW())";


				$sth = $dbh->prepare($sql);
				$sth->bindValue(":user_name", $user_name);
				$sth->bindValue(":email", $email);
				$hashedPassword = password_hash($password, PASSWORD_DEFAULT);
				$sth->bindValue(":password", $hashedPassword);
				$sth->execute();

				$foundUsers = "SELECT * 
								FROM users
								WHERE id = :id";

				$sth = $dbh->prepare($foundUsers);
				$sth->bindValue(":id", $dbh->lastInsertId());
				$sth->execute();
				$foundUsers = $sth->fetch();
				
				//pr($foundUsers);

				$_SESSION['user'] = $foundUsers;

				//pr($_SESSION['user']);

				$succes = "Merci de votre Inscription";
				header("location:complet_profil.php");

		}
	}

 ?>