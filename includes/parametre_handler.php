<?php 
	session_start();
	include 'includes/db.php';
	include 'includes/functions.php';

	$user_name_regex = "/^[\p{L}0-9._-]{2,100}$/u";
	//print_r($_POST);

	if (!empty($_POST)) {
		
		$user_name = trim(strip_tags($_POST['user_name']));
		$email = trim(strip_tags($_POST['email']));
		$bio = trim(strip_tags($_POST['bio']));


		// Name verif
		if (empty($user_name)) {
			$error = "Veuilliez entrer en Pseudo";
		}
		if (strlen($user_name) > 100) {
			$error = "Votre pseudo est trop long ";
		}
		elseif (!preg_match($user_name_regex, $user_name)) {
			$error = "Votre pseudo ne doit pas contenir de truc de merde";
		}
		else {

			if ($user_name !== $_SESSION['user']['user_name']) {
				$sql = " SELECT user_name FROM users WHERE user_name = :user_name";
					$sth = $dbh->prepare($sql);
					$sth-> execute(array(":user_name" => $user_name));
					$foundPseudo = $sth->fetchColumn();

					if (empty($foundPseudo)) {
						$sql = "UPDATE users SET user_name = :user_name WHERE id = :id";

							$sth = $dbh->prepare($sql);
							$sth->bindValue(":id", $_SESSION['user']['id']);
							$sth->bindValue(':user_name', $user_name);
							$sth->execute();
					}

			}
			elseif ($foundPseudo) {
				$error = "Ce pseudo est déjà enregistré ici !";
			}
		}


		// Mail verif
		if (empty($email)) {
			$error = 'Veuilliez entrer un Email';
		}
		elseif (strlen($email) > 100) {
			$error = "Votre email est trop long";
		}
		else {

			if ($email !== $_SESSION['user']['email']) {
				
				$sql = " SELECT email FROM users WHERE email = :email";
				$sth = $dbh->prepare($sql);
				$sth-> execute(array(":email" => $email));
				$foundEmail = $sth->fetchColumn();

				if (empty($foundEmail)) {
					$sql = "UPDATE users SET email = :email WHERE id = :id";

					$sth = $dbh->prepare($sql);
					$sth->bindValue(":id", $_SESSION['user']['id']);
					$sth->bindValue(':email', $email);
					$sth->execute();
				}
			
			}
			elseif ($foundEmail) {
				$error = "Cet email est déjà enregistré ici !";
			}
		}

		// Bio Verif
		if (empty($bio)) {
			$error = "Veuilliez renseignez le champs de Description";
		}

		// insert dans la BDD
		if (empty($error)) {
			
			$sql = "UPDATE users 
					SET user_name = :user_name, email = :email, bio = :bio
					WHERE id = :id";

				$sth = $dbh->prepare($sql);
				$sth->bindValue(":id", $_SESSION['user']['id']);
				$sth->bindValue(':user_name', $user_name);
				$sth->bindValue(':email', $email);
				$sth->bindValue(':bio', $bio);
				$sth->execute();

				$succes = "Modification enregistrer";

		}
	}

 ?>