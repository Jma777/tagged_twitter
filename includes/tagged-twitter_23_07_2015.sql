-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 24 Juillet 2015 à 12:30
-- Version du serveur :  5.6.24
-- Version de PHP :  5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `tagged-twitter`
--

-- --------------------------------------------------------

--
-- Structure de la table `favorite`
--

CREATE TABLE IF NOT EXISTS `favorite` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tweet_id` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `current_tag` tinyint(1) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `tags`
--

INSERT INTO `tags` (`id`, `title`, `current_tag`, `date_created`, `date_modified`) VALUES
(1, 'Sequi enim est dolorem similique aliquam molestias.', 0, '2015-07-24 11:58:56', '2015-07-24 12:08:59'),
(2, 'Quibusdam iusto eaque architecto non cum molestiae.', 0, '2015-07-24 11:58:56', '2015-07-24 11:58:56'),
(3, 'Quasi voluptates voluptatem consequatur sapiente consequatur ex consequuntur.', 0, '2015-07-24 11:58:56', '2015-07-24 11:58:56'),
(4, 'Eveniet numquam quam occaecati quia.', 0, '2015-07-24 11:58:56', '2015-07-24 11:58:56'),
(5, 'Nisi exercitationem consequuntur velit atque.', 0, '2015-07-24 11:58:56', '2015-07-24 11:58:56'),
(6, 'Est ipsam ea repellat quasi repellat.', 0, '2015-07-24 11:58:56', '2015-07-24 11:58:56'),
(7, 'Nam unde voluptatem voluptas sunt voluptatem.', 0, '2015-07-24 11:58:56', '2015-07-24 11:58:56'),
(8, 'Aliquam ab aut dolorum occaecati nostrum.', 0, '2015-07-24 11:58:56', '2015-07-24 11:58:56'),
(9, 'Et enim amet nulla.', 0, '2015-07-24 11:58:56', '2015-07-24 11:58:56'),
(10, 'Sunt rerum velit ut maiores facilis occaecati velit.', 0, '2015-07-24 11:58:56', '2015-07-24 11:58:56'),
(11, 'Quisquam laboriosam dignissimos consectetur ea aut.', 0, '2015-07-24 11:58:56', '2015-07-24 11:58:56'),
(12, 'Consequuntur commodi unde provident quae error.', 0, '2015-07-24 11:58:56', '2015-07-24 11:58:56'),
(13, 'Magnam quia nisi nostrum sint.', 0, '2015-07-24 11:58:56', '2015-07-24 11:58:56'),
(14, 'Fuga quia repellat incidunt.', 0, '2015-07-24 11:58:56', '2015-07-24 11:58:56'),
(15, 'Omnis omnis fugiat numquam quos culpa et soluta cupiditate.', 0, '2015-07-24 11:58:56', '2015-07-24 11:58:56'),
(16, 'Voluptatum voluptatem atque velit aut occaecati modi aut.', 0, '2015-07-24 11:58:56', '2015-07-24 11:58:56'),
(17, 'Odit est voluptatibus alias velit cupiditate iusto.', 0, '2015-07-24 11:58:56', '2015-07-24 11:58:56'),
(18, 'Aut beatae fugiat non nihil.', 0, '2015-07-24 11:58:56', '2015-07-24 11:58:56'),
(19, 'Voluptate et quod nostrum optio vel velit.', 0, '2015-07-24 11:58:56', '2015-07-24 11:58:56'),
(20, 'Provident ut veritatis qui cumque quia laboriosam.', 0, '2015-07-24 11:58:56', '2015-07-24 11:58:56');

-- --------------------------------------------------------

--
-- Structure de la table `tweets`
--

CREATE TABLE IF NOT EXISTS `tweets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `tweet_content` varchar(140) NOT NULL,
  `link` varchar(250) DEFAULT NULL,
  `pic` varchar(100) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pic_name` varchar(250) DEFAULT NULL,
  `bio` varchar(140) DEFAULT NULL,
  `token` varchar(100) DEFAULT NULL,
  `token_expired` datetime DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `user_name`, `password`, `email`, `pic_name`, `bio`, `token`, `token_expired`, `date_created`, `date_modified`) VALUES
(1, 'Nico', '$2y$10$ufHt345kpCtVGhgFH5mHUOAJkkrZzXMu/6OXdhmPpP.q5SON/31be', 'nicolaswf3@gmail.com', '', '', NULL, NULL, '2015-07-23 15:27:23', '0000-00-00 00:00:00');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tweets`
--
ALTER TABLE `tweets`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `favorite`
--
ALTER TABLE `favorite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT pour la table `tweets`
--
ALTER TABLE `tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
