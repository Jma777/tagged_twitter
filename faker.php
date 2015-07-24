<?php

require '/includes/vendor/autoload.php';
require '/includes/db.php';

	$faker = Faker\Factory::create();

	// $dbh->query("TRUNCATE tags;");
	

	// $tag_sql = "INSERT INTO tags(id, title, current_tag, date_created, date_modified)
	// 			VALUES (NULL, :tag_title, 0, NOW(), NOW())";
	
	// $tag_sth = $dbh->prepare($tag_sql);


	// for ($i=0; $i < 20 ; $i++) { 
	// 	$tag_title = $faker->sentence($nbWords = 6);
	// 	$tag_sth->bindValue(":tag_title",$tag_title);

	// 	$tag_sth->execute();
	// }

	
	// $sql = "UPDATE tags 
	// 		SET current_tag = 0, date_modified = NOW()
	// 		WHERE current_tag = 1";
	// $sth = $dbh->prepare($sql);
	// $sth->execute();

	// $sql = "UPDATE tags
	// 		SET current_tag = 1, date_modified = NOW()
	// 		ORDER BY RAND()
	// 		LIMIT 1";
	// $sth = $dbh->prepare($sql);
	// $sth->execute();


	// $dbh->query("TRUNCATE tweets;");

	// $tweet_sql = "INSERT INTO tweets(id, user_id, tag_id, tweet_content, link, pic, date_created, date_modified) 
	// 			VALUES (NULL,1,:tag_id,:tweet_content,NULL,NULL,NOW(),NOW())";
	// $tweet_sth = $dbh->prepare($tweet_sql);

	// for ($i=0; $i < 150; $i++) { 
	// 	$tag_id = rand(1,20);
	// 	$tweet_content = $faker->text($maxNbChars = 200);

	// 	$tweet_sth->bindValue(":tweet_content",$tweet_content);
	// 	$tweet_sth->bindValue(":tag_id",$tag_id);
		
	// 	$tweet_sth->execute();

	// }

