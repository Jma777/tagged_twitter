<?php 
	session_start();
	include("includes/db.php");
	include("vendor/autoload.php");
	include("includes/functions.php");


	if (!empty($_POST)) {
		$bio = trim(strip_tags($_POST['bio']));

		// Verif Bio
		if (empty($bio)) {
			$error = "Veuilliez renseignez le champs de Description";
		}

		// Verif image
		if (!empty($_FILES) && $_FILES['pic_name']['error'] != 4) {

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

			if (empty($error)) {
				$extention = pathinfo($_FILES['pic_name']['name'], PATHINFO_EXTENSION);
				$pic_name = md5($tmpName . time() . uniqid()) . "." . $extention;
				$destinationDirectory = __DIR__ . "/img/uploads/";

				if (file_exists($destinationDirectory . "originals/" . $pic_name)) {
					$pic_name = md5($tmpName . time() . uniqid())  . uniqid() . "." . $extention;
				}
				move_uploaded_file($tmpName, $destinationDirectory . "originals/".$pic_name);

				$img = new abeautifulsite\SimpleImage($destinationDirectory . "originals/".$pic_name);
				$img->best_fit(600,600)->save($destinationDirectory . "mediums/" . $pic_name);
				$img->thumbnail(150,150)->save($destinationDirectory . "thumbnails/" . $pic_name);
	
			}
			
		}
		if ($_FILES["pic_name"]['error'] == 4) {
				$pic_name = "default.jpg";
			}
		if (empty($error)) {
			$sql = "UPDATE users SET bio = :bio, pic_name = :pic_name WHERE id = :id";

				$sth = $dbh->prepare($sql);
				$sth->bindValue(":id", $_SESSION['user']['id']);
				$sth->bindValue(":bio", $bio);
				$sth->bindValue(":pic_name", $pic_name);
				$sth->execute();

				if ($sth->execute()) {
					$succes = "Heureux d'en apprendre plus sur vous !";
					header("location:profil.php");
				}

		}
	}
	refreshUser();

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
 	<title>Complet Profil</title>
 </head>
 <body>
 	<header>
 		<h1><i class="fa fa-twitter"></i>Twitter</h1>
 	</header>
 	<div class="main-container">
 		<div>
 			<form method="POST" enctype="multipart/form-data">
	 			<h2>Completer votre Profil</h2>
	 			<p class="welcome">Bienvenue sur Twitter <?php echo $_SESSION['user']['user_name']; ?> nous vous inviton a completer votre profil</p>
 				<textarea class="first-bio" name="bio" id="" cols="50" rows="10" placeholder="Description de vous "></textarea>
 				<input class='first-pic' type="file" name="pic_name" id="pic_name">
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
 		</div>
 	</div>
 </body>
 </html>