<?php 
	session_start();
	include("includes/db.php");
	include("includes/functions.php");

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
 				<textarea name="description" id="" cols="30" rows="10" placeholder="Description de vous "></textarea>
 				
 			</form>
 		</div>
 	</div>
 </body>
 </html>