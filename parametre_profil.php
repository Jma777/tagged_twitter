<?php 
	include("includes/parametre_handler.php");
 ?>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<body>
	<div class="main-container">
		<div>
			<p>Paramètre de <?php echo $_SESSION['user']['user_name']; ?> </p>
			<form method="POST">
				<input type="text" name="user_name" id="user_name" placeholder="Votre pseudo" value="<?php echo $_SESSION['user']['user_name']; ?>">

				<input type="text" name="email" id="email" placeholder="Votre Email" value="<?php echo $_SESSION['user']['email']; ?>">

 				<textarea name="bio" id="" cols="30" rows="10" placeholder="Description de vous " value="<?php echo $_SESSION['user']['bio']; ?>"><?php echo $_SESSION['user']['bio']; ?></textarea>
				photo

				<a href="change_password.php">Changer le mots de passe</a>

				<button type="submit" id="submit">Valider les paramètre</button>
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