<?php

    define("DBHOST", "localhost"); 	// IP du serveur
    define("DBUSER", "root");		// UserName MySQL
    define("DBPASS", "");			// MDP MySQL
    define("DBNAME", "tagged-twitter");// Nom de la BDD

	try {
		$dbh = new PDO(
			'mysql:host='.DBHOST.';dbname='.DBNAME, 
			DBUSER, 
			DBPASS, 
			array(
				PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8",
				PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
				PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING
			)
		);
	} catch (PDOException $e) {
	    echo 'Erreur de connexion : ' . $e->getMessage();
	}