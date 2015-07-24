<?php 
	session_start();
	include 'db.php';
	include '../vendor/autoload.php';

	$factory = new RandomLib\Factory;
	$generator = $factory->getGenerator(new SecurityLib\Strength(SecurityLib\Strength::MEDIUM));
 	$randomString = $generator->generateString(32, '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ');
 	print_r($randomString);

	$email = $_POST['email'];


	$sql = "SELECT * FROM users
			WHERE email = :email
			";

		$sth = $dbh->prepare($sql);
		$sth->bindValue(":email", $email);
		$sth->execute();

		$foundUser = $sth->fetch();


	if ($foundUser) {
		include '../includes/mailer.php';
		$_SESSION['mail_succes'] = "Le mail a bien été Envoyé !";
		header('location:../forget_password.php');	

		$sql = "UPDATE users
				SET token = '$randomString'
				WHERE email = '$email'
				";
		$sth = $dbh->prepare($sql);
		$sth->bindValue(":email", $email);
		$sth->execute();
	}
	else {
		$_SESSION['mail_error'] = "Adress Email non trouver !";
		header('location:../forget_password.php');
		die();
	}

 ?>