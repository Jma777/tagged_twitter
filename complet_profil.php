<?php 
	session_start();
	include("includes/db.php");
	include("includes/functions.php");

	print_r($_POST);
	print_r($_SESSION['user']);

	if (!empty($_POST)) {
		$bio = trim(strip_tags($_POST['bio']));

		if (empty($bio)) {
			$error = "Veuilliez renseignez le champs de Description";
		}
		if (empty($error)) {
			$sql = "UPDATE users SET bio = :bio WHERE id = :id";

				$sth = $dbh->prepare($sql);
				$sth->bindValue(":id", $_SESSION['user']['id']);
				$sth->bindValue(":bio", $bio);
				$sth->execute();

				if ($sth->execute()) {
					$succes = "Heureux d'en apprendre plus sur vous !";
					header("location:profil.php");
				}

		}
	}

 ?>
 <!doctype html>
 <html lang="en">
 <head>
 	<meta charset="UTF-8">
 	<title>Complet Profil</title>
 </head>
 <body>
 	<div class="main-container">
 		<div>
 			<h2>Completer votre Profil</h2>
 			<p>Bienvenue sur Twitter <?php echo $_SESSION['user']['user_name']; ?> nous vous inviton a completer votre profil</p>
 			<form method="POST">
 				<textarea name="bio" id="" cols="30" rows="10" placeholder="Description de vous "></textarea>
 				ici la photo
 				<button type="submit">Valider</button>
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
 			<a href="includes/logout.php" class="btn">Déconnexion</a>
 		</div>
 	</div>
 </body>
 </html>