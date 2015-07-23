<?php 
	session_start();
	include 'includes/db.php';

	$user_name_regex = "/^[\p{L}0-9._-]{2,100}$/u";
	print_r($_POST);

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

		// Verif du MDP
		if (empty($email)) {
			$error = 'Veuilliez entrer un Email';
		}
		elseif (strlen($email) > 100) {
			$error = "Votre email est trop long";
		}


		// Verif du password
		if (empty($password)) {
			$error = "Veuilliez entrer votre mots de passe";
		}
		elseif ($password !== $password_confirm ) {
			$error = "Vos mots de passe de corresponde pas ";
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

			$sql = "INSERT INTO users (id, user_name, email, password, date_created)
							VALUES (NULL, :user_name, :email, :password,  NOW() )";


				$sth = $dbh->prepare($sql);
				$sth->bindValue(":user_name", $user_name);
				$sth->bindValue(":email", $email);
				$sth->bindValue(":password", $password);
				$sth->execute();

				$succes = "Merci de votre Inscription";

		}
	}

 ?>