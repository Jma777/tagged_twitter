<?php 
	include 'includes/db.php';
	include 'includes/functions.php';
	include 'vendor/autoload.php';

	$user_name_regex = "/^[\p{L}0-9._-]{2,100}$/u";

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
		elseif (filter_var($user_name, FILTER_VALIDATE_EMAIL)) {
			$error = "Veulliez ne pas utilliser un Email comme pseudo !";
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
					else {
						$error = "Ce pseudo est déjà enregistré ici !";
					}

			}

		}


		// Mail verif
		if (empty($email)) {
			$error = 'Veuilliez entrer un Email';
		}
		elseif (strlen($email) > 100) {
			$error = "Votre email est trop long";
		}
		elseif (!filter_var($email,  FILTER_VALIDATE_EMAIL)) {
			$error = "Votre Email n'est pas valide !";
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
				else {
					$error = "Cet email est déjà enregistré ici !";
				}
			}
		}

		// Bio Verif
		if (empty($bio)) {
			$error = "Veuilliez renseignez le champs de Description";
		}
		
		//Verif Image
		if (($_FILES['pic_name']['error']) != 4) {

			$tmpName = $_FILES['pic_name']['tmp_name'];

			if ($_FILES['pic_name']['error'] != 0) {
				switch ($_FILES['pic_name']['error']) {
					case 1:
						$error = "Votre fichier est trop gros !";
						break;
					case 4:
						$error = "Aucun fichier n'a été selectionné !";
						break;
					default:
						$error = "Une erreur est survenue lors du chargement de votre image LOL";
						break;		
				}
			}

			$info = finfo_open(FILEINFO_MIME_TYPE);
			$mime = finfo_file($info, $tmpName);

			$acceptedMime = array("image/jpeg", "image/gif", "image/png");

			if (!in_array($mime, $acceptedMime)) {
				$error = "Type de fichier refuser ";
			}
			if ($_FILES == $_SESSION['user']['pic_name']) {
				
			}

			if (empty($error)) {
				$extention = pathinfo($_FILES['pic_name']['name'], PATHINFO_EXTENSION);
				$pic_name = md5($tmpName . time() . uniqid()) . "." . $extention;
				$destinationDirectory = __DIR__ . "/../img/uploads/";

				if (file_exists($destinationDirectory . "originals/" . $pic_name)) {
					$pic_name = md5($tmpName . time() . uniqid())  . uniqid() . "." . $extention;
				}
				move_uploaded_file($tmpName, $destinationDirectory . "originals/".$pic_name);

				$img = new abeautifulsite\SimpleImage($destinationDirectory . "originals/".$pic_name);
				$img->best_fit(600,600)->save($destinationDirectory . "mediums/" . $pic_name);
				$img->thumbnail(150,150)->save($destinationDirectory . "thumbnails/" . $pic_name);
		
			}
			if (empty($error)) {
			
			$sql = "UPDATE users 
					SET pic_name = :pic_name
					WHERE id = :id";

				$sth = $dbh->prepare($sql);
				$sth->bindValue(":id", $_SESSION['user']['id']);
				$sth->bindValue(':pic_name', $pic_name);
				$sth->execute();

				$succes = "Modification enregistrer";

		}
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
	refreshUser();

 ?>