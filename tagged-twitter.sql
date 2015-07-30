-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 29 Juillet 2015 à 14:57
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `favorite`
--

INSERT INTO `favorite` (`id`, `user_id`, `tweet_id`, `date_created`, `date_modified`) VALUES
(3, 6, 301, '2015-07-29 14:20:04', '2015-07-29 14:20:04'),
(4, 6, 314, '2015-07-29 14:20:07', '2015-07-29 14:20:07'),
(5, 6, 361, '2015-07-29 14:20:08', '2015-07-29 14:20:08'),
(6, 6, 333, '2015-07-29 14:20:09', '2015-07-29 14:20:09');

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
(1, 'Sequi enim est dolorem similique aliquam molestias.', 0, '2015-07-24 11:58:56', '2015-07-24 14:28:05'),
(2, 'Quibusdam iusto eaque architecto non cum molestiae.', 0, '2015-07-24 11:58:56', '2015-07-24 14:28:25'),
(3, 'Quasi voluptates voluptatem consequatur sapiente consequatur ex consequuntur.', 0, '2015-07-24 11:58:56', '2015-07-24 14:26:55'),
(4, 'Eveniet numquam quam occaecati quia.', 0, '2015-07-24 11:58:56', '2015-07-24 14:29:22'),
(5, 'Nisi exercitationem consequuntur velit atque.', 0, '2015-07-24 11:58:56', '2015-07-24 14:27:45'),
(6, 'Est ipsam ea repellat quasi repellat.', 0, '2015-07-24 11:58:56', '2015-07-24 14:27:35'),
(7, 'Nam unde voluptatem voluptas sunt voluptatem.', 0, '2015-07-24 11:58:56', '2015-07-24 14:29:25'),
(8, 'Aliquam ab aut dolorum occaecati nostrum.', 0, '2015-07-24 11:58:56', '2015-07-24 14:27:15'),
(9, 'Et enim amet nulla.', 0, '2015-07-24 11:58:56', '2015-07-24 14:18:45'),
(10, 'Sunt rerum velit ut maiores facilis occaecati velit.', 0, '2015-07-24 11:58:56', '2015-07-24 14:27:55'),
(11, 'Quisquam laboriosam dignissimos consectetur ea aut.', 0, '2015-07-24 11:58:56', '2015-07-24 14:29:15'),
(12, 'Consequuntur commodi unde provident quae error.', 1, '2015-07-24 11:58:56', '2015-07-24 14:16:00'),
(13, 'Magnam quia nisi nostrum sint.', 0, '2015-07-24 11:58:56', '2015-07-24 14:29:05'),
(14, 'Fuga quia repellat incidunt.', 0, '2015-07-24 11:58:56', '2015-07-24 14:28:05'),
(15, 'Omnis omnis fugiat numquam quos culpa et soluta cupiditate.', 0, '2015-07-24 11:58:56', '2015-07-24 14:15:05'),
(16, 'Voluptatum voluptatem atque velit aut occaecati modi aut.', 0, '2015-07-24 11:58:56', '2015-07-24 14:26:25'),
(17, 'Odit est voluptatibus alias velit cupiditate iusto.', 0, '2015-07-24 11:58:56', '2015-07-24 14:29:39'),
(18, 'Aut beatae fugiat non nihil.', 0, '2015-07-24 11:58:56', '2015-07-24 14:27:05'),
(19, 'Voluptate et quod nostrum optio vel velit.', 0, '2015-07-24 11:58:56', '2015-07-24 14:28:15'),
(20, 'Provident ut veritatis qui cumque quia laboriosam.', 0, '2015-07-24 11:58:56', '2015-07-24 14:28:45');

-- --------------------------------------------------------

--
-- Structure de la table `tag_history`
--

CREATE TABLE IF NOT EXISTS `tag_history` (
  `id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `date_begin` datetime NOT NULL,
  `date_end` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `tag_history`
--

INSERT INTO `tag_history` (`id`, `tag_id`, `date_begin`, `date_end`) VALUES
(1, 2, '2015-07-27 16:54:00', '2015-07-27 17:04:00'),
(2, 16, '2015-07-27 17:04:00', '2015-07-27 17:14:00'),
(3, 7, '2015-07-27 17:14:00', '2015-07-27 17:24:00'),
(4, 10, '2015-07-27 17:24:00', '2015-07-27 17:34:00'),
(5, 15, '2015-07-27 17:34:00', '2015-07-27 17:44:00'),
(6, 14, '2015-07-28 09:34:00', '2015-07-28 09:44:00'),
(7, 19, '2015-07-28 09:44:00', '2015-07-28 09:54:00'),
(8, 15, '2015-07-28 09:54:00', '2015-07-28 10:04:00'),
(9, 2, '2015-07-28 10:04:00', '2015-07-28 10:14:00'),
(10, 11, '2015-07-28 10:14:00', '2015-07-28 10:24:00'),
(11, 19, '2015-07-28 10:24:00', '2015-07-28 10:34:00'),
(12, 20, '2015-07-28 10:34:00', '2015-07-28 10:44:00'),
(13, 3, '2015-07-28 10:44:00', '2015-07-28 10:54:00'),
(14, 12, '2015-07-28 10:54:00', '2015-07-28 11:04:00'),
(15, 7, '2015-07-28 11:04:00', '2015-07-28 11:14:00'),
(16, 10, '2015-07-28 11:14:00', '2015-07-28 11:24:00'),
(17, 11, '2015-07-28 11:24:00', '2015-07-28 11:34:00'),
(18, 9, '2015-07-28 11:34:00', '2015-07-28 11:44:00'),
(19, 5, '2015-07-28 11:44:00', '2015-07-28 11:54:00'),
(20, 20, '2015-07-28 11:54:00', '2015-07-28 12:04:00'),
(21, 8, '2015-07-28 12:04:00', '2015-07-28 12:14:00'),
(22, 2, '2015-07-28 12:14:00', '2015-07-28 12:24:00'),
(23, 9, '2015-07-28 12:24:00', '2015-07-28 12:34:00'),
(24, 9, '2015-07-28 12:34:00', '2015-07-28 12:44:00'),
(25, 9, '2015-07-28 12:44:00', '2015-07-28 12:54:00'),
(26, 1, '2015-07-28 12:54:00', '2015-07-28 13:04:00'),
(27, 3, '2015-07-28 13:04:00', '2015-07-28 13:14:00'),
(28, 15, '2015-07-28 13:14:00', '2015-07-28 13:24:00'),
(29, 8, '2015-07-28 13:24:00', '2015-07-28 13:34:00'),
(30, 3, '2015-07-28 13:34:00', '2015-07-28 13:44:00'),
(31, 3, '2015-07-28 13:44:00', '2015-07-28 13:54:00'),
(32, 3, '2015-07-28 14:16:32', '2015-07-28 14:26:32'),
(33, 15, '2015-07-28 14:24:00', '2015-07-28 14:34:00'),
(34, 20, '2015-07-28 14:34:00', '2015-07-28 14:44:00'),
(35, 17, '2015-07-28 14:44:00', '2015-07-28 14:54:00'),
(36, 1, '2015-07-28 14:54:00', '2015-07-28 15:04:00'),
(37, 20, '2015-07-28 15:04:00', '2015-07-28 15:14:00'),
(38, 7, '2015-07-28 15:14:00', '2015-07-28 15:24:00'),
(39, 7, '2015-07-28 15:24:00', '2015-07-28 15:34:00'),
(40, 18, '2015-07-28 15:34:00', '2015-07-28 15:44:00'),
(41, 20, '2015-07-28 15:44:00', '2015-07-28 15:54:00'),
(42, 11, '2015-07-28 15:54:00', '2015-07-28 16:04:00'),
(43, 19, '2015-07-28 16:04:00', '2015-07-28 16:14:00'),
(44, 18, '2015-07-28 16:14:00', '2015-07-28 16:24:00'),
(45, 13, '2015-07-28 16:24:00', '2015-07-28 16:34:00'),
(46, 4, '2015-07-28 16:34:00', '2015-07-28 16:44:00'),
(47, 4, '2015-07-28 16:44:00', '2015-07-28 16:54:00'),
(48, 12, '2015-07-28 16:54:00', '2015-07-28 17:04:00'),
(49, 4, '2015-07-28 17:04:00', '2015-07-28 17:14:00'),
(50, 12, '2015-07-28 17:14:00', '2015-07-28 17:24:00'),
(51, 8, '2015-07-28 17:24:00', '2015-07-28 17:34:00'),
(52, 15, '2015-07-28 17:34:00', '2015-07-28 17:44:00'),
(53, 17, '2015-07-29 09:04:00', '2015-07-29 09:14:00'),
(54, 9, '2015-07-29 09:14:00', '2015-07-29 09:24:00'),
(55, 17, '2015-07-29 09:24:00', '2015-07-29 09:34:00'),
(56, 16, '2015-07-29 09:34:00', '2015-07-29 09:44:00'),
(57, 7, '2015-07-29 09:44:00', '2015-07-29 09:54:00'),
(58, 6, '2015-07-29 09:54:00', '2015-07-29 10:04:00'),
(59, 19, '2015-07-29 10:04:00', '2015-07-29 10:14:00'),
(60, 6, '2015-07-29 10:14:00', '2015-07-29 10:24:00'),
(61, 1, '2015-07-29 10:24:00', '2015-07-29 10:34:00'),
(62, 20, '2015-07-29 10:34:00', '2015-07-29 10:44:00'),
(63, 15, '2015-07-29 10:44:00', '2015-07-29 10:54:00'),
(64, 16, '2015-07-29 10:54:00', '2015-07-29 11:04:00'),
(65, 14, '2015-07-29 11:04:00', '2015-07-29 11:14:00'),
(66, 8, '2015-07-29 11:14:00', '2015-07-29 11:24:00'),
(67, 11, '2015-07-29 11:24:00', '2015-07-29 11:34:00'),
(68, 2, '2015-07-29 11:34:00', '2015-07-29 11:44:00'),
(69, 17, '2015-07-29 11:44:00', '2015-07-29 11:54:00'),
(70, 6, '2015-07-29 11:54:00', '2015-07-29 12:04:00'),
(71, 20, '2015-07-29 12:04:00', '2015-07-29 12:14:00'),
(72, 14, '2015-07-29 12:14:00', '2015-07-29 12:24:00'),
(73, 15, '2015-07-29 12:24:00', '2015-07-29 12:34:00'),
(74, 15, '2015-07-29 12:34:00', '2015-07-29 12:44:00'),
(75, 4, '2015-07-29 12:44:00', '2015-07-29 12:54:00'),
(76, 14, '2015-07-29 12:54:00', '2015-07-29 13:04:00'),
(77, 7, '2015-07-29 13:04:00', '2015-07-29 13:14:00'),
(78, 9, '2015-07-29 13:14:00', '2015-07-29 13:24:00'),
(79, 4, '2015-07-29 13:24:00', '2015-07-29 13:34:00'),
(80, 1, '2015-07-29 13:34:00', '2015-07-29 13:44:00'),
(81, 6, '2015-07-29 13:56:54', '2015-07-29 14:06:54'),
(82, 6, '2015-07-29 14:04:00', '2015-07-29 14:14:00'),
(83, 7, '2015-07-29 14:14:00', '2015-07-29 14:24:00'),
(84, 5, '2015-07-29 14:24:00', '2015-07-29 14:34:00'),
(85, 4, '2015-07-29 14:34:00', '2015-07-29 14:44:00'),
(86, 1, '2015-07-29 14:44:00', '2015-07-29 14:54:00'),
(87, 12, '2015-07-29 14:54:00', '2015-07-29 15:04:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=453 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `tweets`
--

INSERT INTO `tweets` (`id`, `user_id`, `tag_id`, `tweet_content`, `link`, `pic`, `date_created`, `date_modified`) VALUES
(31, 1, 12, 'Dolorum quia voluptas qui eos debitis ut soluta. Sunt et ut deserunt sapiente voluptas aspernatur. Deleniti nulla ipsum maxime.', NULL, NULL, '2015-07-29 14:02:35', '2015-07-29 14:02:35'),
(32, 1, 19, 'Esse maxime voluptas laboriosam mollitia accusantium ad. Unde ut voluptates rerum saepe. Ut at omnis fugiat aut nobis hic id. Voluptatem vol', NULL, NULL, '2015-07-29 14:02:35', '2015-07-29 14:02:35'),
(33, 1, 8, 'Occaecati eveniet quia doloremque et. Debitis quis sint eveniet omnis. Quis dolor alias aut voluptates.', NULL, NULL, '2015-07-29 14:02:35', '2015-07-29 14:02:35'),
(34, 1, 5, 'Quidem rerum eaque omnis architecto doloremque. Dolor qui ad et. Dolor architecto qui omnis ab et qui sit consequatur. Et totam ut eum.', NULL, NULL, '2015-07-29 14:02:35', '2015-07-29 14:02:35'),
(35, 1, 19, 'Facilis velit exercitationem qui dolorem provident maiores. Aliquam reiciendis rem exercitationem repellendus magni repellendus quaerat. Acc', NULL, NULL, '2015-07-29 14:02:35', '2015-07-29 14:02:35'),
(36, 1, 1, 'Sit ut dolor vitae sint. Expedita sunt quis ea quaerat optio. Et excepturi nobis nesciunt eum sit.', NULL, NULL, '2015-07-29 14:02:35', '2015-07-29 14:02:35'),
(37, 1, 11, 'Magni aut quod molestias et explicabo et sed dolorum. Repellat eaque illum ut omnis voluptas eum. Nihil tenetur qui cum vel nihil. Facere id', NULL, NULL, '2015-07-29 14:02:35', '2015-07-29 14:02:35'),
(38, 1, 6, 'Rerum cupiditate nulla est numquam dolores est voluptas. Corrupti placeat veniam sit non quasi cupiditate. Minus totam fugit voluptas volupt', NULL, NULL, '2015-07-29 14:02:35', '2015-07-29 14:02:35'),
(39, 1, 19, 'Assumenda expedita fugit nihil hic architecto vero sint qui. Accusamus vero rerum veniam rerum. Voluptate et dolore suscipit explicabo volup', NULL, NULL, '2015-07-29 14:02:35', '2015-07-29 14:02:35'),
(40, 1, 20, 'Nesciunt omnis fugiat nam dolorem. Corrupti dolorem consequatur saepe quidem est. Quae nemo quia dolor ipsum beatae aliquam modi.', NULL, NULL, '2015-07-29 14:02:35', '2015-07-29 14:02:35'),
(41, 1, 3, 'Est in vel dolor qui. Consequatur possimus voluptas ad in earum. Quo et molestiae vero et illum neque optio. Saepe nihil sint officiis sed q', NULL, NULL, '2015-07-29 14:02:35', '2015-07-29 14:02:35'),
(42, 1, 2, 'Id cum ipsam libero est rerum itaque. In dolorem aut et et vel. Voluptas et sed voluptas voluptas et.', NULL, NULL, '2015-07-29 14:02:35', '2015-07-29 14:02:35'),
(43, 1, 1, 'Illo et fugiat necessitatibus sapiente voluptatibus. Quaerat quas omnis adipisci eligendi corrupti quasi autem. A et sed cum ipsa.', NULL, NULL, '2015-07-29 14:02:35', '2015-07-29 14:02:35'),
(44, 1, 20, 'Cum minus ea labore autem culpa. Eum et ullam non repellendus ut impedit quia. Nemo porro aut incidunt voluptas quo atque laudantium.', NULL, NULL, '2015-07-29 14:02:35', '2015-07-29 14:02:35'),
(45, 1, 7, 'Accusantium vitae cupiditate sequi error. Voluptatem autem ducimus et corporis aliquam. Aliquam aut quia voluptate non voluptatem voluptas. ', NULL, NULL, '2015-07-29 14:02:35', '2015-07-29 14:02:35'),
(46, 1, 10, 'Vitae est aliquam autem ea temporibus. Est non sunt quam quae dignissimos maiores. Quis autem minus itaque est eius nobis.', NULL, NULL, '2015-07-29 14:02:35', '2015-07-29 14:02:35'),
(47, 1, 4, 'Totam repellat numquam porro et sunt et itaque. Eius consectetur rerum eos voluptatibus blanditiis aut unde. Laudantium quia accusantium dol', NULL, NULL, '2015-07-29 14:02:35', '2015-07-29 14:02:35'),
(48, 1, 11, 'Corrupti dolor rem nihil omnis est. Fugit tenetur nihil consequatur culpa esse unde corrupti. Quaerat enim inventore odio quia praesentium e', NULL, NULL, '2015-07-29 14:02:35', '2015-07-29 14:02:35'),
(49, 1, 19, 'Sapiente voluptas accusantium tempora ut laboriosam libero quisquam quia. Minima cum dicta omnis qui. Impedit debitis officia eos non.', NULL, NULL, '2015-07-29 14:02:35', '2015-07-29 14:02:35'),
(50, 1, 18, 'Quam dolore fugiat ratione. In in impedit quae et ut quae similique.', NULL, NULL, '2015-07-29 14:02:35', '2015-07-29 14:02:35'),
(51, 1, 18, 'Consectetur sequi delectus voluptas porro. Enim deleniti ullam enim dolor dolorem. Consequuntur sed placeat architecto suscipit.', NULL, NULL, '2015-07-29 14:02:35', '2015-07-29 14:02:35'),
(52, 1, 17, 'Rerum debitis laudantium soluta explicabo nihil. Aspernatur voluptatem qui et ut sint quasi repudiandae numquam. Nam et nam doloremque dicta', NULL, NULL, '2015-07-29 14:02:35', '2015-07-29 14:02:35'),
(53, 1, 2, 'Sunt voluptatibus aut placeat voluptatem quisquam sit blanditiis. Sunt quisquam explicabo blanditiis iure eligendi saepe ut rerum. Facilis c', NULL, NULL, '2015-07-29 14:02:35', '2015-07-29 14:02:35'),
(54, 1, 2, 'Dolores temporibus mollitia enim recusandae. Mollitia et est et accusantium aspernatur ipsam.', NULL, NULL, '2015-07-29 14:02:35', '2015-07-29 14:02:35'),
(55, 1, 2, 'Nostrum sapiente quae cupiditate voluptas. Saepe natus maiores culpa voluptatem. Eum illum enim voluptatem ex. Nihil deserunt ea atque quaer', NULL, NULL, '2015-07-29 14:02:35', '2015-07-29 14:02:35'),
(56, 1, 8, 'Incidunt nobis exercitationem qui sequi dolorem atque tempore quas. Eum et quos consequatur aut. Alias excepturi et sed minus. Culpa sapient', NULL, NULL, '2015-07-29 14:02:35', '2015-07-29 14:02:35'),
(57, 1, 11, 'Laboriosam rerum asperiores atque repellat. Consequuntur magni quibusdam vitae nihil minima tempora. Corporis totam quia ipsa sit quidem ut.', NULL, NULL, '2015-07-29 14:02:35', '2015-07-29 14:02:35'),
(58, 1, 8, 'Voluptas est debitis praesentium incidunt inventore placeat. Autem illum quod odit itaque. Nesciunt non autem laudantium officiis dicta id. ', NULL, NULL, '2015-07-29 14:02:35', '2015-07-29 14:02:35'),
(59, 1, 5, 'Dolor ad quisquam delectus voluptatem. Accusamus voluptatum quibusdam quo dolor aspernatur laborum ut. Voluptatem et natus architecto corrup', NULL, NULL, '2015-07-29 14:02:35', '2015-07-29 14:02:35'),
(60, 1, 7, 'Veritatis ea sapiente iusto eum nesciunt dolor. Repellat fugit optio debitis qui veniam occaecati quos delectus. Et dolor et accusantium qui', NULL, NULL, '2015-07-29 14:02:35', '2015-07-29 14:02:35'),
(91, 4, 10, 'Cumque aut alias tenetur optio ut reiciendis. Optio illo cupiditate expedita. Quis dolorum accusantium dolor sit tenetur voluptate blanditii', NULL, NULL, '2015-07-29 14:02:48', '2015-07-29 14:02:48'),
(92, 4, 17, 'Ea recusandae pariatur et veritatis itaque perferendis. Et similique doloremque rerum et eius iure. Quis nobis qui et et. Praesentium dolore', NULL, NULL, '2015-07-29 14:02:48', '2015-07-29 14:02:48'),
(93, 4, 20, 'Et et facere nihil molestias quo. Vitae aut ut deleniti asperiores perspiciatis aut tenetur. Impedit adipisci ut dolor et. Provident aut et ', NULL, NULL, '2015-07-29 14:02:48', '2015-07-29 14:02:48'),
(94, 4, 5, 'Voluptas dolor molestias alias omnis iusto eligendi. Et occaecati maxime reiciendis dolore soluta aut blanditiis. Libero veritatis quia even', NULL, NULL, '2015-07-29 14:02:48', '2015-07-29 14:02:48'),
(95, 4, 19, 'Nihil pariatur et quis dicta. Et ab ut et assumenda illum qui similique. Porro sapiente est ut est eum. Incidunt quia qui nostrum.', NULL, NULL, '2015-07-29 14:02:48', '2015-07-29 14:02:48'),
(96, 4, 19, 'Quidem id et quis molestiae. Excepturi ut quo ipsam officia eum et. Et illo voluptates nulla nobis libero.', NULL, NULL, '2015-07-29 14:02:48', '2015-07-29 14:02:48'),
(97, 4, 19, 'Sint necessitatibus voluptatem harum animi et a architecto sed. Unde quae consequatur quae architecto.', NULL, NULL, '2015-07-29 14:02:48', '2015-07-29 14:02:48'),
(98, 4, 19, 'Provident voluptas alias consectetur doloremque dolorem. Qui quam accusamus dolores ad voluptas consectetur. Earum voluptatum illum dolor. E', NULL, NULL, '2015-07-29 14:02:48', '2015-07-29 14:02:48'),
(99, 4, 11, 'Repellendus quae aperiam excepturi harum est. Rerum tenetur dolores labore et ex quia dolorum quia. Quas aut explicabo totam culpa ipsam tem', NULL, NULL, '2015-07-29 14:02:48', '2015-07-29 14:02:48'),
(100, 4, 17, 'Ab illum quos laborum tenetur. Quas quia adipisci libero qui alias. Harum eveniet qui architecto possimus ex nobis. Soluta deserunt tempora ', NULL, NULL, '2015-07-29 14:02:48', '2015-07-29 14:02:48'),
(101, 4, 1, 'Molestias ducimus amet qui perspiciatis voluptas labore aperiam. Nobis minima vel maiores aperiam. Dolor quam non aut dolores in quam volupt', NULL, NULL, '2015-07-29 14:02:48', '2015-07-29 14:02:48'),
(102, 4, 11, 'Possimus quas veniam vitae quia consequatur et. Et corrupti deserunt odio quidem eligendi. Sint tempore illum aliquam excepturi eos assumend', NULL, NULL, '2015-07-29 14:02:48', '2015-07-29 14:02:48'),
(103, 4, 5, 'Aut enim repudiandae rerum facilis recusandae eius voluptas. Alias voluptas sed ullam.', NULL, NULL, '2015-07-29 14:02:48', '2015-07-29 14:02:48'),
(104, 4, 3, 'Dolores quod voluptatem accusantium deserunt aut. Occaecati eos expedita magnam veritatis. Consectetur autem omnis fugit.', NULL, NULL, '2015-07-29 14:02:48', '2015-07-29 14:02:48'),
(105, 4, 2, 'Commodi dolorem dolorem rerum iure id. Autem optio eaque et exercitationem nihil minus. Quisquam veniam inventore labore.', NULL, NULL, '2015-07-29 14:02:48', '2015-07-29 14:02:48'),
(106, 4, 9, 'Iure eum alias eaque quis quasi cum. Eligendi et quaerat vero rerum beatae in. Quod rerum totam saepe. Totam recusandae voluptatem est susci', NULL, NULL, '2015-07-29 14:02:48', '2015-07-29 14:02:48'),
(107, 4, 11, 'Eum in soluta dolores dolorem quia mollitia dolores. Non molestias non ipsum. Cupiditate minima veniam consequatur magnam sit quae totam.', NULL, NULL, '2015-07-29 14:02:48', '2015-07-29 14:02:48'),
(108, 4, 20, 'Aut explicabo dolorem veniam ut nihil. Et dolorem non quia repellendus. Aut mollitia qui aut culpa eum. Illo illum laudantium distinctio del', NULL, NULL, '2015-07-29 14:02:48', '2015-07-29 14:02:48'),
(109, 4, 6, 'Voluptatem et aut saepe delectus quaerat. Cumque dolorum deserunt aut cum asperiores tempora.', NULL, NULL, '2015-07-29 14:02:48', '2015-07-29 14:02:48'),
(110, 4, 10, 'Voluptatibus error magni et laboriosam et accusantium iste. Labore cumque qui quia facilis. Consequatur voluptas odit ut est quis exercitati', NULL, NULL, '2015-07-29 14:02:48', '2015-07-29 14:02:48'),
(111, 4, 9, 'Voluptate reprehenderit et commodi. Deserunt minus consequatur mollitia. Quaerat non facere consequatur aut cum.', NULL, NULL, '2015-07-29 14:02:48', '2015-07-29 14:02:48'),
(112, 4, 18, 'Numquam laboriosam adipisci omnis itaque voluptas doloribus. Consequuntur reprehenderit nostrum rem molestiae et eligendi. Voluptatem cum re', NULL, NULL, '2015-07-29 14:02:48', '2015-07-29 14:02:48'),
(113, 4, 7, 'Quo sunt qui earum perferendis asperiores veniam. Fugit et enim amet tempora quis quod. Eligendi eum quis sequi nisi quidem quod ea.', NULL, NULL, '2015-07-29 14:02:48', '2015-07-29 14:02:48'),
(114, 4, 19, 'Ipsum error quas ut est nihil omnis. Consectetur eum aperiam doloribus perspiciatis quasi maiores velit. Illo est velit quae quos.', NULL, NULL, '2015-07-29 14:02:48', '2015-07-29 14:02:48'),
(115, 4, 7, 'Dolores nesciunt dignissimos ut voluptate dolorum eius quia quia. Dolor dolorem aut culpa quis non asperiores. Dolore consectetur quaerat do', NULL, NULL, '2015-07-29 14:02:48', '2015-07-29 14:02:48'),
(116, 4, 20, 'Deleniti enim sit labore qui perferendis magnam. Voluptatibus quaerat id et consequatur id provident. Similique aperiam natus ratione evenie', NULL, NULL, '2015-07-29 14:02:48', '2015-07-29 14:02:48'),
(117, 4, 10, 'Consequuntur quia dolores aperiam magnam quibusdam vero. Voluptas odit ipsum quas soluta minima fugit quibusdam. Ut laboriosam quia pariatur', NULL, NULL, '2015-07-29 14:02:48', '2015-07-29 14:02:48'),
(118, 4, 15, 'Aperiam inventore quod saepe fugiat. Repudiandae voluptatem velit perspiciatis itaque rerum aut voluptas. Possimus quam aliquam et mollitia ', NULL, NULL, '2015-07-29 14:02:48', '2015-07-29 14:02:48'),
(119, 4, 5, 'Qui molestias rerum facere quidem. Ullam eos voluptatibus tenetur et doloremque iusto. Asperiores nemo quia quis sint. Veritatis et quis et ', NULL, NULL, '2015-07-29 14:02:48', '2015-07-29 14:02:48'),
(120, 4, 18, 'Aut quia enim et quisquam et sed. Voluptas nihil nostrum voluptas voluptate quisquam dolorum. Autem saepe occaecati non consequatur doloremq', NULL, NULL, '2015-07-29 14:02:48', '2015-07-29 14:02:48'),
(121, 5, 8, 'Cupiditate laborum est in exercitationem reprehenderit dolorum quo. A fuga cum qui at voluptatibus. Voluptatem atque sunt nihil.', NULL, NULL, '2015-07-29 14:02:51', '2015-07-29 14:02:51'),
(122, 5, 3, 'Quam sit tempore autem ea fugiat voluptas. Qui similique sunt iure facere quasi. Maxime ab quia illum quis ut ut dicta.', NULL, NULL, '2015-07-29 14:02:51', '2015-07-29 14:02:51'),
(123, 5, 12, 'Facilis aut soluta aut. Nemo tempora et placeat sit amet et sunt. Consequuntur quo adipisci repellendus consectetur aut. Sed natus fuga mole', NULL, NULL, '2015-07-29 14:02:51', '2015-07-29 14:02:51'),
(124, 5, 14, 'Sit rem laudantium sunt velit quis. Ab hic quisquam omnis minima sit aut possimus. Omnis reprehenderit laudantium dolor alias vitae.', NULL, NULL, '2015-07-29 14:02:51', '2015-07-29 14:02:51'),
(125, 5, 7, 'Iste ipsum qui molestiae fugit et. Harum voluptatem sint nemo est. Modi recusandae tempore totam vel maxime.', NULL, NULL, '2015-07-29 14:02:51', '2015-07-29 14:02:51'),
(126, 5, 2, 'Deleniti amet sunt consequatur omnis qui est. Id vero sapiente laboriosam dolor placeat. In eius nisi dolorem. Et labore pariatur omnis.', NULL, NULL, '2015-07-29 14:02:51', '2015-07-29 14:02:51'),
(127, 5, 9, 'Facere ut minus delectus occaecati animi sapiente dolores. Hic ut facilis vel sequi nihil explicabo. Corporis at consequuntur architecto ips', NULL, NULL, '2015-07-29 14:02:51', '2015-07-29 14:02:51'),
(128, 5, 19, 'Aliquid in expedita officia non. Aliquam odit et maiores facere. Eaque aliquid aut temporibus aut natus animi.', NULL, NULL, '2015-07-29 14:02:51', '2015-07-29 14:02:51'),
(129, 5, 20, 'Sed aperiam neque et repellat et doloribus iusto. Nesciunt aliquid facere odio qui. Aliquid quibusdam eos ut deserunt.', NULL, NULL, '2015-07-29 14:02:51', '2015-07-29 14:02:51'),
(130, 5, 17, 'Cum suscipit et nihil nihil tenetur expedita. Beatae placeat est expedita ut nihil consequatur odio. Dolorem est ut modi et quisquam neque n', NULL, NULL, '2015-07-29 14:02:51', '2015-07-29 14:02:51'),
(131, 5, 3, 'Et ut error neque. Qui quae ipsum ad omnis excepturi ut modi. Odio deleniti quo et est vitae omnis. Eum voluptas sunt omnis quae quod pariat', NULL, NULL, '2015-07-29 14:02:51', '2015-07-29 14:02:51'),
(132, 5, 16, 'Qui aut perferendis vel quia dolorum. Voluptatem blanditiis ipsa officia. Sit quia magnam dolores.', NULL, NULL, '2015-07-29 14:02:51', '2015-07-29 14:02:51'),
(133, 5, 12, 'Eligendi eius alias molestias illum porro recusandae. Saepe vero perferendis ut quia occaecati fugit. Ut et non sed commodi odio non facere ', NULL, NULL, '2015-07-29 14:02:51', '2015-07-29 14:02:51'),
(134, 5, 5, 'Porro similique quod qui autem rerum autem non libero. Alias quaerat voluptate consequuntur nam sint quia. Rem molestiae consectetur facere ', NULL, NULL, '2015-07-29 14:02:51', '2015-07-29 14:02:51'),
(135, 5, 14, 'Sequi sed qui aut fuga tempore ipsam aut. Facere et non omnis ut. Ut velit nesciunt praesentium optio quis ipsa velit. Rem unde quidem accus', NULL, NULL, '2015-07-29 14:02:51', '2015-07-29 14:02:51'),
(136, 5, 16, 'Vitae expedita deleniti vel dolores incidunt. Consequatur ipsum omnis voluptatem dolorem. Nihil id quia est perspiciatis et sint accusamus q', NULL, NULL, '2015-07-29 14:02:51', '2015-07-29 14:02:51'),
(137, 5, 18, 'Rerum fugit vel quos autem qui et. Aut autem quo consectetur. Totam minima aliquid nam. Itaque et consectetur dolorem maxime aut excepturi.', NULL, NULL, '2015-07-29 14:02:51', '2015-07-29 14:02:51'),
(138, 5, 14, 'Eligendi fuga nihil voluptate dolorem odio enim. Et fugiat ut voluptas enim rem excepturi voluptatibus a. Labore sapiente enim enim earum re', NULL, NULL, '2015-07-29 14:02:51', '2015-07-29 14:02:51'),
(139, 5, 13, 'Modi natus quia velit hic aliquam iste eum. Facilis corporis praesentium molestiae officiis quam. Id aliquam harum sit enim laudantium totam', NULL, NULL, '2015-07-29 14:02:51', '2015-07-29 14:02:51'),
(140, 5, 1, 'Officia itaque quasi dolorem ab impedit beatae qui. Repellat reiciendis quo incidunt quis asperiores et omnis quod. Voluptas blanditiis reru', NULL, NULL, '2015-07-29 14:02:51', '2015-07-29 14:02:51'),
(141, 5, 2, 'Quisquam sunt rerum temporibus libero. Ipsam aperiam aspernatur molestiae nisi. Nemo nam aperiam quaerat sint autem natus incidunt.', NULL, NULL, '2015-07-29 14:02:51', '2015-07-29 14:02:51'),
(142, 5, 1, 'Occaecati quia qui provident eum eveniet totam eos. Illo est consequatur autem facilis ut. Reiciendis qui consectetur est non. Ad autem quia', NULL, NULL, '2015-07-29 14:02:51', '2015-07-29 14:02:51'),
(143, 5, 18, 'Ratione beatae aut necessitatibus voluptatem qui. Et dicta temporibus aliquid eaque. Doloremque consequuntur aperiam praesentium ea rerum ut', NULL, NULL, '2015-07-29 14:02:51', '2015-07-29 14:02:51'),
(144, 5, 3, 'Facere placeat aut ut quia molestiae nobis quidem. Enim omnis quia quaerat ullam rem et nostrum. Fugiat delectus modi quia voluptatem optio ', NULL, NULL, '2015-07-29 14:02:51', '2015-07-29 14:02:51'),
(145, 5, 17, 'Optio quidem ea enim eum. Quaerat dolor commodi quis ut cumque assumenda. Autem ipsa saepe officia et culpa perspiciatis consequatur eaque. ', NULL, NULL, '2015-07-29 14:02:51', '2015-07-29 14:02:51'),
(146, 5, 11, 'Provident et aliquid ea sapiente. Voluptas eos cupiditate alias perspiciatis. Placeat sequi dolore ipsam nam id pariatur. Aut iure cum et am', NULL, NULL, '2015-07-29 14:02:51', '2015-07-29 14:02:51'),
(147, 5, 18, 'Vero aut qui cum. Et veritatis ullam et suscipit. Perspiciatis quae architecto nisi atque ullam nemo. Architecto quam iste mollitia dolorum ', NULL, NULL, '2015-07-29 14:02:51', '2015-07-29 14:02:51'),
(148, 5, 3, 'Omnis aliquid beatae commodi veritatis a deserunt distinctio. Quo et tenetur pariatur ex sit ex voluptatem. Quasi quia cumque ut minima.', NULL, NULL, '2015-07-29 14:02:51', '2015-07-29 14:02:51'),
(149, 5, 10, 'Totam dicta et culpa dolorem at veritatis hic. Mollitia hic cumque voluptas minima. Omnis et dicta earum nesciunt.', NULL, NULL, '2015-07-29 14:02:51', '2015-07-29 14:02:51'),
(150, 5, 3, 'Voluptatem magnam blanditiis neque ab necessitatibus fugiat. Ea necessitatibus qui et. Totam libero dignissimos eum commodi et facere quod q', NULL, NULL, '2015-07-29 14:02:51', '2015-07-29 14:02:51'),
(151, 6, 13, 'Quisquam dolore odio voluptatem sed et esse voluptate. Consequatur veritatis voluptate et sunt eius expedita. Iure rerum repudiandae laborum', NULL, NULL, '2015-07-29 14:02:54', '2015-07-29 14:02:54'),
(152, 6, 15, 'Repellendus et eos quia reiciendis ut. Qui ut voluptatem sunt. Eum sint earum corrupti quaerat. Quis odio rerum et nihil ab.', NULL, NULL, '2015-07-29 14:02:54', '2015-07-29 14:02:54'),
(153, 6, 13, 'Dignissimos ut suscipit est deserunt quidem. Dolorum ab et dolorum enim sequi. Et et voluptatum aut suscipit fugiat.', NULL, NULL, '2015-07-29 14:02:54', '2015-07-29 14:02:54'),
(154, 6, 2, 'Quas esse ullam accusamus magnam. Non aliquam itaque minima eos et. Veniam atque hic impedit.', NULL, NULL, '2015-07-29 14:02:54', '2015-07-29 14:02:54'),
(155, 6, 13, 'Nesciunt excepturi doloribus culpa voluptas velit. Provident omnis mollitia enim sit rerum atque qui veniam. Sed recusandae cum atque maxime', NULL, NULL, '2015-07-29 14:02:54', '2015-07-29 14:02:54'),
(156, 6, 19, 'Corporis in rerum odio deleniti dolor impedit eligendi est. Eos dolorem deserunt voluptatum quaerat est earum. Nihil asperiores similique il', NULL, NULL, '2015-07-29 14:02:54', '2015-07-29 14:02:54'),
(157, 6, 11, 'Voluptas recusandae quia quia ducimus optio voluptatem. Et qui dolorum est. Aperiam impedit numquam dignissimos et consequatur aliquam eos l', NULL, NULL, '2015-07-29 14:02:54', '2015-07-29 14:02:54'),
(158, 6, 7, 'Id quaerat sint et officia ea necessitatibus. Et ab est ad. Et libero alias et ut accusamus optio error.', NULL, NULL, '2015-07-29 14:02:54', '2015-07-29 14:02:54'),
(159, 6, 16, 'Earum nulla corporis explicabo illo quia unde. Voluptatum temporibus amet nemo et reprehenderit porro. Nostrum modi ullam ut sed nostrum. No', NULL, NULL, '2015-07-29 14:02:54', '2015-07-29 14:02:54'),
(160, 6, 8, 'Ullam in qui culpa dolorum ipsam eos. Aut ullam ut ut vero. Ut suscipit corporis enim deleniti et minima. Corrupti id omnis consectetur volu', NULL, NULL, '2015-07-29 14:02:54', '2015-07-29 14:02:54'),
(161, 6, 19, 'Ut delectus eligendi corrupti architecto voluptatem facilis. Sint rerum asperiores aut est.', NULL, NULL, '2015-07-29 14:02:54', '2015-07-29 14:02:54'),
(162, 6, 2, 'Earum doloremque consequatur sit enim enim. Enim dignissimos quod a facilis quisquam. Aspernatur sint odio maiores illo autem veniam fugiat.', NULL, NULL, '2015-07-29 14:02:54', '2015-07-29 14:02:54'),
(163, 6, 12, 'Rerum eligendi provident eum ut. Autem et qui consectetur. Est molestias exercitationem labore vel et beatae. Et aut nam impedit repudiandae', NULL, NULL, '2015-07-29 14:02:54', '2015-07-29 14:02:54'),
(164, 6, 3, 'Ex consequatur ut temporibus eius voluptatibus perferendis. Fugiat pariatur ea accusantium qui. Quia facere sit minima. Repudiandae et dolor', NULL, NULL, '2015-07-29 14:02:54', '2015-07-29 14:02:54'),
(165, 6, 1, 'Iure maiores nostrum aut consectetur. Laboriosam enim fuga numquam aut. Et id neque ratione inventore assumenda iure dolores. Et molestiae q', NULL, NULL, '2015-07-29 14:02:54', '2015-07-29 14:02:54'),
(166, 6, 7, 'Aperiam dolorum natus dolor veritatis amet nihil dolores. Recusandae vitae soluta ut culpa. Assumenda eaque et voluptatem id iste dolores et', NULL, NULL, '2015-07-29 14:02:54', '2015-07-29 14:02:54'),
(167, 6, 1, 'Aut ipsum voluptatem nobis praesentium repellat. Distinctio asperiores tempore tempore maiores. Alias vel eius repellendus modi. Ut maiores ', NULL, NULL, '2015-07-29 14:02:54', '2015-07-29 14:02:54'),
(168, 6, 16, 'Temporibus sit voluptatem eveniet delectus minus vitae. Tenetur dolorem non cupiditate qui quasi maxime. Tenetur dicta numquam est placeat l', NULL, NULL, '2015-07-29 14:02:54', '2015-07-29 14:02:54'),
(169, 6, 12, 'Dignissimos non veniam fuga consequatur odio commodi. Dolor voluptate voluptatem nihil aut error repellat consequuntur non. Eos ea qui et ut', NULL, NULL, '2015-07-29 14:02:54', '2015-07-29 14:02:54'),
(170, 6, 7, 'Et eum voluptatibus deleniti dolorem culpa provident. Cumque vero non harum eos. Quas mollitia explicabo iure distinctio id deserunt et.', NULL, NULL, '2015-07-29 14:02:54', '2015-07-29 14:02:54'),
(171, 6, 12, 'Molestias esse fuga quisquam voluptas ipsam odit quam molestias. Dicta corrupti consequuntur molestiae qui quisquam. Ut quaerat quo enim cul', NULL, NULL, '2015-07-29 14:02:54', '2015-07-29 14:02:54'),
(172, 6, 9, 'Ea consectetur eos laboriosam perferendis. Nam non quia cumque praesentium ut. Quaerat ut in corrupti reprehenderit magni ut repudiandae. Ac', NULL, NULL, '2015-07-29 14:02:54', '2015-07-29 14:02:54'),
(173, 6, 15, 'Non qui quis sunt omnis totam voluptatem. Quibusdam sit rerum et.', NULL, NULL, '2015-07-29 14:02:54', '2015-07-29 14:02:54'),
(174, 6, 19, 'Porro veniam et aliquam. Facilis animi optio saepe consequuntur consequatur delectus autem atque. Beatae dolores perspiciatis voluptas qui c', NULL, NULL, '2015-07-29 14:02:54', '2015-07-29 14:02:54'),
(175, 6, 4, 'Similique et nam veniam tenetur. Architecto aut vel eum ipsum fugiat facere voluptatem. Et temporibus iusto veritatis debitis enim. Autem du', NULL, NULL, '2015-07-29 14:02:54', '2015-07-29 14:02:54'),
(176, 6, 15, 'Nam et voluptatem aut est. Possimus quasi quia natus voluptatem in. Ratione sunt sequi ut in. Voluptas minus quia et ipsum ut.', NULL, NULL, '2015-07-29 14:02:54', '2015-07-29 14:02:54'),
(177, 6, 5, 'Enim esse eos quia et nulla ab. Est vero quaerat nulla sit voluptas repudiandae. Ut unde ipsum similique ducimus. Omnis nam nam tenetur aut ', NULL, NULL, '2015-07-29 14:02:55', '2015-07-29 14:02:55'),
(178, 6, 11, 'Fugit ab in pariatur error voluptatibus. Amet beatae in tempora assumenda occaecati dolor natus. Debitis non voluptatum consequatur sed. Mod', NULL, NULL, '2015-07-29 14:02:55', '2015-07-29 14:02:55'),
(179, 6, 6, 'Enim velit aliquid facere ducimus est. Voluptas quis eius consequatur corporis quibusdam. Impedit et quisquam dolor omnis rerum.', NULL, NULL, '2015-07-29 14:02:55', '2015-07-29 14:02:55'),
(180, 6, 14, 'Ex ab cupiditate assumenda. Quo rerum eos ut vel earum vel omnis. Et dolores quo eligendi est eligendi et.', NULL, NULL, '2015-07-29 14:02:55', '2015-07-29 14:02:55'),
(181, 7, 7, 'Et vitae culpa odit amet. Enim iusto illo voluptas. Minus qui reiciendis modi incidunt officiis.', NULL, NULL, '2015-07-29 14:02:58', '2015-07-29 14:02:58'),
(182, 7, 18, 'Rem iste cum iste officia. Eum magni sit consequatur consectetur nesciunt.', NULL, NULL, '2015-07-29 14:02:58', '2015-07-29 14:02:58'),
(183, 7, 18, 'Animi ratione necessitatibus cum necessitatibus nam officia accusantium. Ad qui nihil aut repellendus. Incidunt ut fugiat quibusdam alias ea', NULL, NULL, '2015-07-29 14:02:58', '2015-07-29 14:02:58'),
(184, 7, 19, 'Nihil et temporibus eius et. Dolore rerum dolorem nesciunt dolores cupiditate nesciunt. Veritatis aut quia doloremque et quos enim. Qui odit', NULL, NULL, '2015-07-29 14:02:58', '2015-07-29 14:02:58'),
(185, 7, 15, 'Voluptates assumenda eos quasi incidunt eum in reprehenderit. Est accusamus nostrum aliquid nihil est quibusdam. Minima ea illum dolorem vol', NULL, NULL, '2015-07-29 14:02:58', '2015-07-29 14:02:58'),
(186, 7, 9, 'Enim culpa ipsum qui optio quo officia. Fuga eum hic officia ducimus qui.', NULL, NULL, '2015-07-29 14:02:58', '2015-07-29 14:02:58'),
(187, 7, 10, 'Quo exercitationem officia placeat velit rerum. Corrupti corporis nulla aut sequi dolores sit. Est quidem alias dicta quia blanditiis sed as', NULL, NULL, '2015-07-29 14:02:58', '2015-07-29 14:02:58'),
(188, 7, 11, 'Et adipisci at voluptate magni. Corrupti accusantium ut pariatur vitae iste. Veritatis quo qui expedita necessitatibus voluptatum. Aut ut ei', NULL, NULL, '2015-07-29 14:02:58', '2015-07-29 14:02:58'),
(189, 7, 13, 'Et non recusandae cumque voluptate. Amet et numquam libero iste. Odio sit corporis enim et et tempora sunt.', NULL, NULL, '2015-07-29 14:02:58', '2015-07-29 14:02:58'),
(190, 7, 19, 'Et dolores dicta dicta possimus consequuntur facilis. Molestiae perferendis harum vel id nostrum dolore est. Natus pariatur harum ut volupta', NULL, NULL, '2015-07-29 14:02:58', '2015-07-29 14:02:58'),
(191, 7, 1, 'Quisquam aut ex exercitationem perspiciatis et in ipsa. Qui hic tenetur facilis omnis. Quos in soluta ut laborum et id veritatis.', NULL, NULL, '2015-07-29 14:02:58', '2015-07-29 14:02:58'),
(192, 7, 4, 'Delectus perferendis dolore autem autem unde animi. Et animi expedita dicta est sunt facilis. Tempore incidunt dicta sequi tenetur.', NULL, NULL, '2015-07-29 14:02:58', '2015-07-29 14:02:58'),
(193, 7, 16, 'Ex molestiae consequatur voluptatem in reprehenderit nihil velit rem. Animi aut ut harum laudantium ipsa. Enim aut ea quaerat incidunt ipsa.', NULL, NULL, '2015-07-29 14:02:58', '2015-07-29 14:02:58'),
(194, 7, 16, 'Iusto magnam nostrum magni fuga quo non sed. Recusandae quia corrupti architecto quam ipsum. Eum et velit id est.', NULL, NULL, '2015-07-29 14:02:58', '2015-07-29 14:02:58'),
(195, 7, 19, 'Temporibus quae reprehenderit in harum provident esse et. Aut dignissimos beatae non eum repellat quis. Consequuntur corporis harum consecte', NULL, NULL, '2015-07-29 14:02:58', '2015-07-29 14:02:58'),
(196, 7, 17, 'Iusto id ea cupiditate voluptatem iure. Cum nostrum quos odio qui. Aut laboriosam sunt non ad dicta officiis laboriosam iste.', NULL, NULL, '2015-07-29 14:02:58', '2015-07-29 14:02:58'),
(197, 7, 7, 'Magni id facilis iste doloremque suscipit in voluptatem. Quas eum facilis vel ut possimus rem sapiente consectetur.', NULL, NULL, '2015-07-29 14:02:58', '2015-07-29 14:02:58'),
(198, 7, 16, 'Saepe perspiciatis error voluptatem velit et est. Qui quos pariatur optio cupiditate veritatis perspiciatis. Ut quia cupiditate et. Et ab se', NULL, NULL, '2015-07-29 14:02:58', '2015-07-29 14:02:58'),
(199, 7, 5, 'Eligendi id id neque tenetur. Id ullam rerum soluta voluptate modi. Quas aut quis vero. Eos error vel qui laudantium ab et eos.', NULL, NULL, '2015-07-29 14:02:58', '2015-07-29 14:02:58'),
(200, 7, 4, 'Ipsum possimus labore illum ducimus quia ut voluptas doloremque. Dolores dolor eos adipisci sit id mollitia. Error est cum dolor.', NULL, NULL, '2015-07-29 14:02:58', '2015-07-29 14:02:58'),
(201, 7, 3, 'Ut rerum sint possimus ea laborum sint et explicabo. Reiciendis praesentium ex dolorem minus dolor quia sed. Assumenda doloribus esse dolor.', NULL, NULL, '2015-07-29 14:02:58', '2015-07-29 14:02:58'),
(202, 7, 7, 'Asperiores laborum id in ipsum et explicabo cum. Perspiciatis repellat pariatur accusamus rerum et laudantium maxime. Repudiandae est qui re', NULL, NULL, '2015-07-29 14:02:58', '2015-07-29 14:02:58'),
(203, 7, 8, 'Doloremque et voluptates ut laborum qui ullam. Voluptates porro ab qui voluptates. Animi nihil natus hic aliquam dolor exercitationem soluta', NULL, NULL, '2015-07-29 14:02:58', '2015-07-29 14:02:58'),
(204, 7, 5, 'Suscipit adipisci numquam voluptas quidem animi dicta. Eaque tenetur ullam minus fugit at consectetur magnam natus. Dignissimos molestiae ad', NULL, NULL, '2015-07-29 14:02:58', '2015-07-29 14:02:58'),
(205, 7, 5, 'Ex laborum consequatur aperiam architecto. Perferendis odio sint facere dolor. Dolor nostrum tenetur quia commodi autem blanditiis nulla.', NULL, NULL, '2015-07-29 14:02:58', '2015-07-29 14:02:58'),
(206, 7, 5, 'Officiis non omnis modi molestias. Culpa iste quas sint laborum eos nobis.', NULL, NULL, '2015-07-29 14:02:58', '2015-07-29 14:02:58'),
(207, 7, 7, 'Maiores consequatur rerum beatae. Ipsum sed laudantium ducimus similique ab in id quia. Minima dolores qui qui excepturi aut tenetur.', NULL, NULL, '2015-07-29 14:02:58', '2015-07-29 14:02:58'),
(208, 7, 14, 'Voluptatem sunt dolor quo voluptas. Ullam occaecati et explicabo error dolorem autem. Quos saepe quia nisi vel quo in.', NULL, NULL, '2015-07-29 14:02:58', '2015-07-29 14:02:58'),
(209, 7, 10, 'Dignissimos ullam ipsam animi odit. Soluta minus harum fuga eligendi voluptatem voluptas omnis. Quibusdam provident aut qui quis quia.', NULL, NULL, '2015-07-29 14:02:58', '2015-07-29 14:02:58'),
(210, 7, 18, 'Labore et et molestiae. Dolor quia unde cum voluptatem qui. Aut quis voluptatibus eum minus beatae optio tempore odit.\nNatus magnam repellat', NULL, NULL, '2015-07-29 14:02:58', '2015-07-29 14:02:58'),
(211, 8, 4, 'Iste repudiandae quia et quam voluptas accusamus voluptatum. Quo est adipisci eaque dolores id ratione eveniet. Qui exercitationem libero pa', NULL, NULL, '2015-07-29 14:06:09', '2015-07-29 14:06:09'),
(212, 8, 6, 'Sunt eos accusantium ullam cumque. Maxime fugiat fugit qui sunt adipisci. Voluptas consequuntur possimus exercitationem et nihil nihil paria', NULL, NULL, '2015-07-29 14:06:09', '2015-07-29 14:06:09'),
(213, 8, 8, 'Est eaque libero incidunt veritatis dolorem numquam consequatur. Eum et dignissimos veritatis molestiae animi. Sunt quibusdam est necessitat', NULL, NULL, '2015-07-29 14:06:09', '2015-07-29 14:06:09'),
(214, 8, 9, 'Rem nobis dignissimos ullam architecto est officiis. Adipisci sed laboriosam explicabo sed dolor atque facilis. Repudiandae eligendi aut ali', NULL, NULL, '2015-07-29 14:06:09', '2015-07-29 14:06:09'),
(215, 8, 15, 'Et accusantium recusandae ipsum. Ducimus ratione tempora eum unde velit quam animi dolorum. Quia et nostrum voluptate est velit quas iste.', NULL, NULL, '2015-07-29 14:06:09', '2015-07-29 14:06:09'),
(216, 8, 20, 'Nihil id est voluptate repudiandae sunt veniam nostrum non. Ullam similique ipsum tempora aut eos. Suscipit ut possimus dolore magni. Conseq', NULL, NULL, '2015-07-29 14:06:09', '2015-07-29 14:06:09'),
(217, 8, 12, 'Et sed deleniti laudantium at. Optio enim eius corrupti cupiditate voluptatem ut. Voluptas qui corrupti facilis sit voluptates ut tenetur po', NULL, NULL, '2015-07-29 14:06:09', '2015-07-29 14:06:09'),
(218, 8, 18, 'Eum quia aut tempora itaque quidem sit. Architecto accusamus doloribus natus cumque consequuntur enim fugit. Ut cum tempora nulla labore ape', NULL, NULL, '2015-07-29 14:06:09', '2015-07-29 14:06:09'),
(219, 8, 3, 'Dignissimos qui aperiam omnis qui dicta porro reiciendis. Et quia aliquam nemo nisi. Fugit consequatur odit quia in enim nobis consectetur n', NULL, NULL, '2015-07-29 14:06:09', '2015-07-29 14:06:09'),
(220, 8, 11, 'Eos temporibus nesciunt deserunt et aliquid sint. Voluptatem et perspiciatis et laborum. Accusamus voluptatem qui perspiciatis in voluptas l', NULL, NULL, '2015-07-29 14:06:09', '2015-07-29 14:06:09'),
(221, 8, 2, 'Expedita magnam non ea ut. Rem saepe sequi enim ut modi. Odio magnam quis ut occaecati dolorem sit. Eum totam commodi ipsum recusandae qui s', NULL, NULL, '2015-07-29 14:06:09', '2015-07-29 14:06:09'),
(222, 8, 5, 'Iure accusamus ut est pariatur harum et. Praesentium harum animi perspiciatis velit iusto. Fuga culpa voluptate et nobis asperiores ipsam. Q', NULL, NULL, '2015-07-29 14:06:09', '2015-07-29 14:06:09'),
(223, 8, 4, 'Dolorem quis est unde ut id voluptatem incidunt. Asperiores ut enim vitae itaque voluptate.', NULL, NULL, '2015-07-29 14:06:09', '2015-07-29 14:06:09'),
(224, 8, 7, 'Qui sit odio asperiores sit vero asperiores dolorem. Cum non accusantium nisi exercitationem dolores cum sit. Ipsam ut non eum nostrum accus', NULL, NULL, '2015-07-29 14:06:09', '2015-07-29 14:06:09'),
(225, 8, 7, 'Eveniet accusamus sint voluptates recusandae. Eos possimus aut doloremque incidunt. Deserunt tempore ipsum unde velit exercitationem volupta', NULL, NULL, '2015-07-29 14:06:09', '2015-07-29 14:06:09'),
(226, 8, 11, 'Sunt suscipit voluptatem nemo nobis. Voluptatibus quo assumenda non saepe aliquid quis in.', NULL, NULL, '2015-07-29 14:06:09', '2015-07-29 14:06:09'),
(227, 8, 1, 'Rem saepe vero facilis fuga quam et. Eum sint voluptatem ut exercitationem.', NULL, NULL, '2015-07-29 14:06:09', '2015-07-29 14:06:09'),
(228, 8, 3, 'Aliquam et neque consequatur consectetur nostrum aut et. Facilis distinctio reiciendis aliquam qui. Non aspernatur laboriosam sed.', NULL, NULL, '2015-07-29 14:06:09', '2015-07-29 14:06:09'),
(229, 8, 7, 'Autem repudiandae modi eaque animi cupiditate maxime facere. Quia eaque est natus dolores est incidunt minus. Vel nisi alias aliquid ullam a', NULL, NULL, '2015-07-29 14:06:09', '2015-07-29 14:06:09'),
(230, 8, 8, 'Eveniet qui cumque eum at sunt. Delectus eum nemo molestiae quam et. Quibusdam doloribus voluptatem et eveniet magnam architecto.', NULL, NULL, '2015-07-29 14:06:09', '2015-07-29 14:06:09'),
(231, 8, 9, 'Quam eius molestiae et cum est perferendis. Voluptatibus est quisquam ducimus dolores. Doloremque voluptas quia quidem illum maiores sit in.', NULL, NULL, '2015-07-29 14:06:09', '2015-07-29 14:06:09'),
(232, 8, 8, 'Vel et omnis optio dolores. Sapiente animi corporis saepe in temporibus. Odit vero est aut voluptatibus mollitia.', NULL, NULL, '2015-07-29 14:06:09', '2015-07-29 14:06:09'),
(233, 8, 12, 'Exercitationem rerum incidunt deserunt iusto. Sit corrupti omnis corporis assumenda est eum et. Libero est quo asperiores fugiat odit.', NULL, NULL, '2015-07-29 14:06:09', '2015-07-29 14:06:09'),
(234, 8, 17, 'Mollitia fugit et incidunt et. Odio doloremque voluptate occaecati et voluptatem et officiis. Voluptatem ipsa provident suscipit sint repell', NULL, NULL, '2015-07-29 14:06:09', '2015-07-29 14:06:09'),
(235, 8, 13, 'Vitae qui voluptatum occaecati ad minima sed maxime molestiae. Ducimus esse voluptates expedita non. Alias aperiam ad asperiores accusantium', NULL, NULL, '2015-07-29 14:06:10', '2015-07-29 14:06:10'),
(236, 8, 17, 'Nobis dolorum quos voluptatem libero ea. Eius distinctio dolorem aut consectetur. Soluta impedit quia iste aspernatur quaerat.', NULL, NULL, '2015-07-29 14:06:10', '2015-07-29 14:06:10'),
(237, 8, 20, 'Et quisquam aliquid corporis ut odio numquam voluptate velit. Neque aut saepe doloribus et voluptas occaecati minima. Quo omnis libero rerum', NULL, NULL, '2015-07-29 14:06:10', '2015-07-29 14:06:10'),
(238, 8, 11, 'Illo nihil omnis velit cupiditate. Similique mollitia ut recusandae omnis corrupti sit aut temporibus. Minima deleniti dolorem voluptatem ap', NULL, NULL, '2015-07-29 14:06:10', '2015-07-29 14:06:10'),
(239, 8, 6, 'Laborum enim excepturi id itaque nam officia. At et suscipit rem quis vero quidem aut. Debitis vero cum nobis error impedit facere beatae si', NULL, NULL, '2015-07-29 14:06:10', '2015-07-29 14:06:10'),
(240, 8, 18, 'Dolores sequi repellat incidunt minus non quas. Minus sit odit omnis est id ducimus est qui. Sunt deleniti totam illum et. Vero cupiditate e', NULL, NULL, '2015-07-29 14:06:10', '2015-07-29 14:06:10'),
(241, 9, 1, 'Voluptatem qui pariatur perspiciatis hic similique labore sint. Voluptatibus rem sit harum amet. Laborum esse delectus molestias inventore d', NULL, NULL, '2015-07-29 14:06:13', '2015-07-29 14:06:13'),
(242, 9, 11, 'Cumque cum ipsum cumque eveniet nemo. Asperiores est et et et nostrum autem et. Iusto a qui a quae nemo quis molestiae.', NULL, NULL, '2015-07-29 14:06:13', '2015-07-29 14:06:13'),
(243, 9, 13, 'Ea sint sapiente et explicabo ratione. Enim quisquam et eveniet. Animi est sed maiores deleniti. Et aut autem doloremque voluptatum error id', NULL, NULL, '2015-07-29 14:06:13', '2015-07-29 14:06:13'),
(244, 9, 7, 'Quia et molestiae qui quae numquam minus. Hic ipsam beatae rerum est. Eum libero quam consequatur ut.', NULL, NULL, '2015-07-29 14:06:13', '2015-07-29 14:06:13'),
(245, 9, 15, 'Eum itaque libero nihil voluptas aperiam numquam. Aut alias reiciendis non sunt occaecati et animi. Omnis est ex a ducimus. Ut quia vero ani', NULL, NULL, '2015-07-29 14:06:13', '2015-07-29 14:06:13'),
(246, 9, 9, 'Nisi magnam et voluptates. Vel sunt tenetur saepe aut. Porro dignissimos iusto aspernatur enim deserunt.', NULL, NULL, '2015-07-29 14:06:13', '2015-07-29 14:06:13'),
(247, 9, 8, 'Qui ipsam eos incidunt. In rerum et quidem expedita quibusdam sint qui. Molestiae amet ipsa et quo quia et.', NULL, NULL, '2015-07-29 14:06:13', '2015-07-29 14:06:13'),
(248, 9, 12, 'Veniam est rerum iste quisquam omnis consequatur. Dolor sed fuga suscipit impedit et. Ab dolores dignissimos ea non atque qui doloribus. Est', NULL, NULL, '2015-07-29 14:06:13', '2015-07-29 14:06:13'),
(249, 9, 11, 'Ut et architecto eum ea consequatur perspiciatis. Voluptatem nostrum vel eos delectus. Et neque non dolorum nisi in. Dolores consequuntur au', NULL, NULL, '2015-07-29 14:06:13', '2015-07-29 14:06:13'),
(250, 9, 7, 'Corporis soluta sed perferendis est iure est accusantium. Sed eos sint quo quam quis eos molestiae dolores. Officiis non harum nihil maiores', NULL, NULL, '2015-07-29 14:06:13', '2015-07-29 14:06:13'),
(251, 9, 16, 'Exercitationem sit eligendi laborum alias quo doloremque. Fuga impedit aut vel molestiae. Ratione ratione exercitationem unde dolores simili', NULL, NULL, '2015-07-29 14:06:13', '2015-07-29 14:06:13'),
(252, 9, 10, 'Et expedita veniam velit qui. Quos esse perferendis voluptate saepe commodi eligendi commodi perferendis. Autem dolores aliquam iusto fugiat', NULL, NULL, '2015-07-29 14:06:13', '2015-07-29 14:06:13'),
(253, 9, 8, 'Saepe eos sit ut excepturi et quae exercitationem. Ut similique sed vero unde inventore. Corrupti cumque soluta cupiditate vitae rerum et es', NULL, NULL, '2015-07-29 14:06:13', '2015-07-29 14:06:13'),
(254, 9, 18, 'Pariatur molestiae et esse eos sit eaque enim. Totam in rerum nihil eaque. Suscipit ut quibusdam in perferendis dolores animi est. Velit eum', NULL, NULL, '2015-07-29 14:06:13', '2015-07-29 14:06:13'),
(255, 9, 12, 'Consectetur minima amet in ad tempore vitae. Voluptatem vel error qui repellat. Dolor sed ut accusamus sunt non.', NULL, NULL, '2015-07-29 14:06:13', '2015-07-29 14:06:13'),
(256, 9, 6, 'Iste consequatur rerum optio omnis dolores voluptas porro. Excepturi tenetur et numquam ut. Ipsa ut soluta sapiente doloremque maiores atque', NULL, NULL, '2015-07-29 14:06:13', '2015-07-29 14:06:13'),
(257, 9, 15, 'In veritatis nihil temporibus. Facilis et iste temporibus officia possimus qui. Quisquam aut modi minima possimus illum nisi. Qui rerum cons', NULL, NULL, '2015-07-29 14:06:13', '2015-07-29 14:06:13'),
(258, 9, 2, 'Adipisci blanditiis est eos vitae. Sed fuga vero non ex qui dolorum. Quia pariatur ut laudantium ea.', NULL, NULL, '2015-07-29 14:06:13', '2015-07-29 14:06:13'),
(259, 9, 19, 'Alias voluptates in est. Consequatur ea corporis quos. Optio magnam consectetur suscipit sint sit doloribus.', NULL, NULL, '2015-07-29 14:06:13', '2015-07-29 14:06:13'),
(260, 9, 18, 'Vel molestiae doloremque rerum iste nisi quia. Delectus fugiat omnis et placeat magnam. Odio eum iste mollitia est harum molestias.', NULL, NULL, '2015-07-29 14:06:13', '2015-07-29 14:06:13'),
(261, 9, 13, 'Necessitatibus fuga et quo molestiae suscipit reiciendis. Enim quis laborum incidunt. Cupiditate eos numquam omnis consequatur velit labore.', NULL, NULL, '2015-07-29 14:06:13', '2015-07-29 14:06:13'),
(262, 9, 12, 'Commodi dolorem quis dolores. Molestias aut quis in omnis quis suscipit. Atque deleniti sequi quia consequatur voluptatum.', NULL, NULL, '2015-07-29 14:06:13', '2015-07-29 14:06:13'),
(263, 9, 11, 'Iure consequatur fugiat in et soluta modi. Maiores voluptate tempore est molestias odit. Porro blanditiis rerum voluptatibus aspernatur.', NULL, NULL, '2015-07-29 14:06:13', '2015-07-29 14:06:13'),
(264, 9, 14, 'Tempora officiis omnis et delectus. Voluptatem dolor laboriosam sunt quas. Minus rerum tenetur aliquid natus laborum laudantium et. Eos magn', NULL, NULL, '2015-07-29 14:06:13', '2015-07-29 14:06:13'),
(265, 9, 9, 'Sit voluptas delectus eum minus in enim. Deserunt distinctio expedita odit excepturi facilis. Aut ea sapiente dolores magnam aperiam dolorem', NULL, NULL, '2015-07-29 14:06:13', '2015-07-29 14:06:13'),
(266, 9, 9, 'Id voluptatem consequuntur voluptatum aut maiores. Maxime nostrum ex eligendi vero repudiandae eius voluptatem. Eos autem porro et qui expli', NULL, NULL, '2015-07-29 14:06:13', '2015-07-29 14:06:13'),
(267, 9, 14, 'In sapiente nihil sit necessitatibus quibusdam laudantium. Dolorem in id ea ipsum id dolorum consequatur nobis. Tempora veritatis nobis maxi', NULL, NULL, '2015-07-29 14:06:13', '2015-07-29 14:06:13'),
(268, 9, 9, 'Doloribus ut et corrupti rerum ut vero omnis. Harum iusto et et et possimus dolores sit. Neque accusantium perspiciatis tempore enim.', NULL, NULL, '2015-07-29 14:06:13', '2015-07-29 14:06:13'),
(269, 9, 5, 'Molestiae facere reiciendis sit quia soluta. Possimus dignissimos voluptas natus odio. Voluptates quia molestias dolor rerum consequuntur as', NULL, NULL, '2015-07-29 14:06:13', '2015-07-29 14:06:13'),
(270, 9, 6, 'Maxime praesentium aut maxime alias vero sit amet ratione. Quis et laboriosam cumque dignissimos soluta sed. Explicabo eius non cumque saepe', NULL, NULL, '2015-07-29 14:06:13', '2015-07-29 14:06:13'),
(271, 10, 2, 'Dolorem cum dolore delectus ullam assumenda. Aperiam aut quia labore eum ut modi ratione. Consequatur corrupti in rerum. Culpa tempora sit p', NULL, NULL, '2015-07-29 14:06:16', '2015-07-29 14:06:16'),
(272, 10, 11, 'Et quis qui quo id praesentium vel quis. Temporibus soluta rem autem sunt illum. Consectetur fugit quia consequatur odit facilis magni conse', NULL, NULL, '2015-07-29 14:06:16', '2015-07-29 14:06:16'),
(273, 10, 8, 'Temporibus aut ullam vitae odit ipsa sequi. Vel aut natus aut autem voluptas qui minus aliquid. Sunt exercitationem sunt et ut. Porro unde s', NULL, NULL, '2015-07-29 14:06:16', '2015-07-29 14:06:16'),
(274, 10, 5, 'Consequatur itaque facilis recusandae ducimus maxime maxime. Non harum rerum animi dolores a quos. Quaerat rerum expedita quasi incidunt.', NULL, NULL, '2015-07-29 14:06:16', '2015-07-29 14:06:16'),
(275, 10, 19, 'Inventore et dolore quaerat voluptate. Doloribus non explicabo non dicta voluptates. Sit et quasi ipsa et doloremque. Debitis eius sunt offi', NULL, NULL, '2015-07-29 14:06:16', '2015-07-29 14:06:16'),
(276, 10, 16, 'Animi odio iusto voluptatem eum aut est sed. Illo ut molestiae doloremque aut et inventore. Doloremque et itaque consequatur deserunt.', NULL, NULL, '2015-07-29 14:06:16', '2015-07-29 14:06:16'),
(277, 10, 19, 'Veritatis commodi quis dolor sunt possimus qui tenetur. Et saepe laborum est eos rerum. Voluptatum quas totam et quae. Corporis porro aliqua', NULL, NULL, '2015-07-29 14:06:16', '2015-07-29 14:06:16'),
(278, 10, 16, 'Ut minima rerum soluta consequuntur. Dolorem cum ab ab quia aliquid. Est molestias et assumenda aut officiis ut. Eveniet voluptas laboriosam', NULL, NULL, '2015-07-29 14:06:16', '2015-07-29 14:06:16'),
(279, 10, 19, 'Laudantium a repudiandae velit nesciunt dolore sapiente. Aut laudantium provident nostrum rerum eaque et.', NULL, NULL, '2015-07-29 14:06:16', '2015-07-29 14:06:16'),
(280, 10, 12, 'Qui magni magni doloremque. Voluptas est non aut et magnam et rerum. Est aliquam deleniti voluptatem eum voluptatem.', NULL, NULL, '2015-07-29 14:06:16', '2015-07-29 14:06:16'),
(281, 10, 7, 'Eum blanditiis placeat deleniti ratione sunt. Occaecati dolor aliquid aut. Consequatur voluptatem numquam sed quis. Neque autem eum in enim ', NULL, NULL, '2015-07-29 14:06:16', '2015-07-29 14:06:16'),
(282, 10, 3, 'Est quam rerum omnis ex sit repudiandae. Ad et unde consequatur ratione nam nulla. Voluptatem molestiae iusto harum cum blanditiis distincti', NULL, NULL, '2015-07-29 14:06:16', '2015-07-29 14:06:16'),
(283, 10, 7, 'Quam libero qui voluptatum eos aspernatur. Qui consequuntur nobis deserunt ab est veritatis veniam eum. Sint nobis quaerat minima qui quo. Q', NULL, NULL, '2015-07-29 14:06:16', '2015-07-29 14:06:16'),
(284, 10, 16, 'Minus omnis praesentium dolor ut. In voluptatem excepturi officiis veritatis sapiente. Saepe consequatur odit qui est.', NULL, NULL, '2015-07-29 14:06:16', '2015-07-29 14:06:16'),
(285, 10, 11, 'Possimus et et et dolores. Autem temporibus sunt commodi amet ea repudiandae dolor voluptate. Sit quasi provident fuga quod id nesciunt.', NULL, NULL, '2015-07-29 14:06:16', '2015-07-29 14:06:16'),
(286, 10, 17, 'Labore laborum ea mollitia. Occaecati aut ut nihil nihil. Expedita distinctio voluptatem sed voluptatibus sed.', NULL, NULL, '2015-07-29 14:06:16', '2015-07-29 14:06:16'),
(287, 10, 17, 'Error itaque est ut eum nam praesentium. Et aspernatur iusto non et vitae et ut. Perspiciatis sed velit aut ex distinctio quod rerum.', NULL, NULL, '2015-07-29 14:06:16', '2015-07-29 14:06:16'),
(288, 10, 13, 'Adipisci eos aut totam voluptas deleniti. Tempore rerum dolores omnis exercitationem tempore non esse. Est consectetur quo beatae et eaque. ', NULL, NULL, '2015-07-29 14:06:16', '2015-07-29 14:06:16'),
(289, 10, 1, 'Eligendi rerum quas velit animi dolor quis natus. Sint accusantium quos quo ad delectus eligendi dolorem. Odio mollitia reprehenderit reicie', NULL, NULL, '2015-07-29 14:06:16', '2015-07-29 14:06:16'),
(290, 10, 20, 'Debitis tenetur laudantium voluptatem error debitis. Sed distinctio quos ratione fugiat consequatur. Fuga dolor et nostrum quia consequatur ', NULL, NULL, '2015-07-29 14:06:16', '2015-07-29 14:06:16'),
(291, 10, 14, 'Tempora ab et eaque accusantium cum eaque tempore. Aperiam et voluptatem quos fugit. Quae quas voluptatem aut.', NULL, NULL, '2015-07-29 14:06:16', '2015-07-29 14:06:16'),
(292, 10, 1, 'Qui accusamus eius repellat quidem. Fugit iusto nisi delectus labore. Deleniti doloribus vel dolores non minima et. Qui ad tempora aut rerum', NULL, NULL, '2015-07-29 14:06:16', '2015-07-29 14:06:16'),
(293, 10, 15, 'Exercitationem explicabo pariatur tempora praesentium sed iusto voluptatibus. Quidem quas ab ratione perferendis earum at non. Vero rerum qu', NULL, NULL, '2015-07-29 14:06:16', '2015-07-29 14:06:16'),
(294, 10, 3, 'Cumque sint ab omnis dolor veritatis nihil. Sint ea voluptatibus assumenda consequatur et quas reiciendis. Sed sit sint laudantium mollitia ', NULL, NULL, '2015-07-29 14:06:16', '2015-07-29 14:06:16'),
(295, 10, 11, 'Suscipit impedit tempore ex vero quis. Accusantium eos deleniti ut. Nihil rem et id nobis quasi debitis.\nOfficiis ullam officiis et quos qui', NULL, NULL, '2015-07-29 14:06:16', '2015-07-29 14:06:16'),
(296, 10, 8, 'Tenetur repellendus in et nihil. Et eligendi mollitia sequi iure id laboriosam voluptatem. Sint temporibus quod quidem at. Aliquid ipsam sol', NULL, NULL, '2015-07-29 14:06:16', '2015-07-29 14:06:16'),
(297, 10, 4, 'Odit itaque et recusandae. Iste repudiandae aut odio laudantium enim vel. Ipsam fugiat eum amet libero ut. Itaque fugit sit quasi quis non q', NULL, NULL, '2015-07-29 14:06:16', '2015-07-29 14:06:16'),
(298, 10, 9, 'Molestiae quia sit omnis et ad ut aut corrupti. Maiores est aut velit praesentium nostrum atque odio. In magnam aut et veniam ut vel nesciun', NULL, NULL, '2015-07-29 14:06:16', '2015-07-29 14:06:16'),
(299, 10, 14, 'Rerum quo ipsa et. Et distinctio incidunt explicabo exercitationem aut ratione. Et doloribus rerum ipsum ut occaecati animi consectetur.', NULL, NULL, '2015-07-29 14:06:16', '2015-07-29 14:06:16'),
(300, 10, 9, 'Sit sunt sit vel sit et est eum. Fugiat ea vel quae commodi velit voluptate. Quia blanditiis eligendi voluptatem iure.', NULL, NULL, '2015-07-29 14:06:16', '2015-07-29 14:06:16'),
(301, 11, 7, 'Aut illum sit fuga id. Quo nemo dolorem reiciendis et amet eveniet laudantium eos. Et unde aut quidem aspernatur facilis molestiae dicta et.', NULL, NULL, '2015-07-29 14:06:18', '2015-07-29 14:06:18'),
(302, 11, 10, 'Eius libero est quo consequatur. Voluptatem repellendus quaerat et aliquid eum. Aliquam voluptas esse dolor quasi hic.', NULL, NULL, '2015-07-29 14:06:18', '2015-07-29 14:06:18'),
(303, 11, 16, 'Non impedit explicabo quibusdam reiciendis vero. Unde facere quibusdam est sunt. Eaque eius quis sed neque quo ea ut.', NULL, NULL, '2015-07-29 14:06:18', '2015-07-29 14:06:18'),
(304, 11, 12, 'Eaque quos non consectetur sed dolores. Consectetur praesentium laboriosam ipsum nobis. Ex praesentium suscipit facere doloremque reprehende', NULL, NULL, '2015-07-29 14:06:18', '2015-07-29 14:06:18');
INSERT INTO `tweets` (`id`, `user_id`, `tag_id`, `tweet_content`, `link`, `pic`, `date_created`, `date_modified`) VALUES
(305, 11, 13, 'Aut repellat id numquam et. Amet beatae sequi corporis itaque. Dolorem exercitationem et sit ad suscipit. Vitae delectus quo totam magnam si', NULL, NULL, '2015-07-29 14:06:18', '2015-07-29 14:06:18'),
(306, 11, 7, 'Sed et iusto nobis consequatur quia. Aliquam ab eos ut delectus magni rerum a. In qui architecto possimus rerum eum ut.', NULL, NULL, '2015-07-29 14:06:18', '2015-07-29 14:06:18'),
(307, 11, 3, 'Animi dolor nostrum voluptatem quasi. Expedita ex voluptas nobis minima veritatis quod est. Commodi deleniti quod suscipit rerum similique.', NULL, NULL, '2015-07-29 14:06:18', '2015-07-29 14:06:18'),
(308, 11, 13, 'Quo dicta voluptatem autem odio. Maiores id molestias necessitatibus aliquid vel pariatur. Fugiat dolorem quia nobis.', NULL, NULL, '2015-07-29 14:06:18', '2015-07-29 14:06:18'),
(309, 11, 1, 'Vel exercitationem non asperiores itaque reprehenderit. Modi animi ea eveniet. Vitae odio ab reiciendis aut. Perspiciatis dolore sapiente om', NULL, NULL, '2015-07-29 14:06:18', '2015-07-29 14:06:18'),
(310, 11, 12, 'Odio expedita provident quisquam voluptas laudantium. Odio non vel eum et sint.', NULL, NULL, '2015-07-29 14:06:18', '2015-07-29 14:06:18'),
(311, 11, 7, 'Est reiciendis et corporis quibusdam. Ducimus possimus quasi dicta. Consectetur ut magnam dolorem eius dolorem. Possimus dolorem ut et dolor', NULL, NULL, '2015-07-29 14:06:18', '2015-07-29 14:06:18'),
(312, 11, 20, 'Cupiditate consequuntur eum et omnis quaerat. Dolorem sunt aut aut molestiae officiis quidem.', NULL, NULL, '2015-07-29 14:06:18', '2015-07-29 14:06:18'),
(313, 11, 1, 'Commodi et assumenda aspernatur modi. Cupiditate quod blanditiis assumenda vitae ut numquam et. Aut voluptatum quia cumque nihil vitae. Ea v', NULL, NULL, '2015-07-29 14:06:18', '2015-07-29 14:06:18'),
(314, 11, 7, 'Iusto totam delectus a officiis sunt eum perferendis. Praesentium molestias officia aliquid sed dolore eius.', NULL, NULL, '2015-07-29 14:06:18', '2015-07-29 14:06:18'),
(315, 11, 15, 'Occaecati in explicabo distinctio est quia rerum. Magnam autem corrupti non facilis labore molestias.', NULL, NULL, '2015-07-29 14:06:18', '2015-07-29 14:06:18'),
(316, 11, 9, 'Qui libero ducimus et et quibusdam libero quaerat fugit. Asperiores soluta debitis qui. Aspernatur deserunt voluptatum necessitatibus enim r', NULL, NULL, '2015-07-29 14:06:18', '2015-07-29 14:06:18'),
(317, 11, 12, 'Est ut aut enim alias. Similique suscipit fugiat aut. Voluptatem est suscipit debitis modi nostrum.', NULL, NULL, '2015-07-29 14:06:18', '2015-07-29 14:06:18'),
(318, 11, 4, 'Et aut dolores sed animi. Et similique quidem explicabo reprehenderit laudantium vero. Fugiat laboriosam voluptatem rerum suscipit adipisci.', NULL, NULL, '2015-07-29 14:06:18', '2015-07-29 14:06:18'),
(319, 11, 20, 'Neque quaerat quia quod et accusamus autem quia. Eum omnis accusantium dolorum. Voluptatem rerum illum numquam veritatis ea eos. Dolores qua', NULL, NULL, '2015-07-29 14:06:18', '2015-07-29 14:06:18'),
(320, 11, 7, 'Autem eveniet illo quia sapiente nam. Labore quia eos ipsa blanditiis tempore nam. Quasi rerum voluptatum quibusdam eum culpa deleniti.', NULL, NULL, '2015-07-29 14:06:18', '2015-07-29 14:06:18'),
(321, 11, 4, 'Est praesentium temporibus sequi error excepturi fuga quasi. Inventore eos ut quibusdam et modi ipsum. Molestias veniam non error architecto', NULL, NULL, '2015-07-29 14:06:18', '2015-07-29 14:06:18'),
(322, 11, 5, 'Magni eos totam similique non sint. Explicabo rerum explicabo eaque id quia. Est ab sed assumenda sed harum. Repellendus quia sequi et.', NULL, NULL, '2015-07-29 14:06:18', '2015-07-29 14:06:18'),
(323, 11, 6, 'Optio consequatur sint ex officia molestiae. Ex corporis eum laudantium animi. Vero et dolorem eum. Accusamus iste aspernatur at harum conse', NULL, NULL, '2015-07-29 14:06:18', '2015-07-29 14:06:18'),
(324, 11, 12, 'Sed perferendis saepe aspernatur voluptatem ut et. Accusamus rem culpa voluptatum commodi molestiae ut. In quibusdam fugiat dicta doloribus ', NULL, NULL, '2015-07-29 14:06:18', '2015-07-29 14:06:18'),
(325, 11, 16, 'Quas in inventore aperiam sit dolorum quos nobis sunt. Omnis quisquam eius vel accusamus velit quia aut. Amet hic ad ipsum molestiae.', NULL, NULL, '2015-07-29 14:06:18', '2015-07-29 14:06:18'),
(326, 11, 2, 'Cupiditate commodi non hic omnis. Et qui praesentium necessitatibus provident et asperiores repudiandae voluptate. Adipisci ea odio culpa oc', NULL, NULL, '2015-07-29 14:06:18', '2015-07-29 14:06:18'),
(327, 11, 8, 'Repudiandae aut impedit debitis dolorem voluptate eum sit. Facilis enim placeat optio voluptate totam. Cumque quis unde maiores illum sed vo', NULL, NULL, '2015-07-29 14:06:18', '2015-07-29 14:06:18'),
(328, 11, 9, 'Sunt enim doloremque quisquam sint nostrum odio. Qui possimus ipsa earum ea nesciunt neque.\nCumque voluptatem optio officia rem. Repudiandae', NULL, NULL, '2015-07-29 14:06:18', '2015-07-29 14:06:18'),
(329, 11, 17, 'Assumenda ullam natus sit sit tenetur recusandae perspiciatis. Blanditiis ullam voluptatem libero et dolores eum laboriosam.', NULL, NULL, '2015-07-29 14:06:18', '2015-07-29 14:06:18'),
(330, 11, 17, 'Facere eligendi voluptatem voluptatem quo. Ex enim eos nulla iste dolorem. Deserunt ducimus et modi aliquam.', NULL, NULL, '2015-07-29 14:06:18', '2015-07-29 14:06:18'),
(331, 12, 11, 'Officiis aliquid dolor et corrupti perferendis. Odit necessitatibus recusandae facere. Soluta minima voluptas eos incidunt.', NULL, NULL, '2015-07-29 14:06:22', '2015-07-29 14:06:22'),
(332, 12, 16, 'Aliquid quidem culpa molestiae iusto repellendus minus. Provident nulla rerum expedita nam omnis eum facere. Aut voluptatibus ducimus ex ull', NULL, NULL, '2015-07-29 14:06:22', '2015-07-29 14:06:22'),
(333, 12, 7, 'Recusandae omnis velit possimus odit consequatur voluptatum ipsum magnam. Omnis aspernatur earum nisi facilis corporis. Repellendus eos pari', NULL, NULL, '2015-07-29 14:06:22', '2015-07-29 14:06:22'),
(334, 12, 1, 'Ut et libero rerum exercitationem velit soluta. Error accusamus expedita quisquam repellat asperiores.', NULL, NULL, '2015-07-29 14:06:22', '2015-07-29 14:06:22'),
(335, 12, 8, 'Aut voluptatum aliquam quo ipsa adipisci sed officiis. Animi incidunt voluptate corporis voluptate atque. Voluptas sed corrupti aspernatur e', NULL, NULL, '2015-07-29 14:06:22', '2015-07-29 14:06:22'),
(336, 12, 20, 'Repudiandae repudiandae doloribus et dolor numquam id. Facilis recusandae ducimus voluptas aliquam ut autem eum tempore. Facilis non cupidit', NULL, NULL, '2015-07-29 14:06:22', '2015-07-29 14:06:22'),
(337, 12, 15, 'Asperiores dolorem ea dolore voluptatem quam. Quae sunt aut dolorem consectetur ducimus consectetur. Non placeat quaerat quas est minus aut ', NULL, NULL, '2015-07-29 14:06:22', '2015-07-29 14:06:22'),
(338, 12, 16, 'Amet enim in pariatur sit consequatur. Voluptates perspiciatis ut asperiores vero facilis est totam officia. Corporis nihil dolorem sint quo', NULL, NULL, '2015-07-29 14:06:22', '2015-07-29 14:06:22'),
(339, 12, 4, 'Odit excepturi omnis perspiciatis voluptas non. Nulla nulla ab voluptatem corrupti aut modi id corporis. Accusamus aut voluptas et eum quae ', NULL, NULL, '2015-07-29 14:06:22', '2015-07-29 14:06:22'),
(340, 12, 17, 'Placeat architecto ad quod et porro velit quia illum. Vel qui et eveniet id libero. Animi sit sit iusto ea temporibus doloribus.', NULL, NULL, '2015-07-29 14:06:22', '2015-07-29 14:06:22'),
(341, 12, 20, 'Quam expedita quasi enim deleniti. Rerum eos est totam. Repudiandae eum eligendi qui suscipit quibusdam consectetur vel iste. Assumenda pari', NULL, NULL, '2015-07-29 14:06:22', '2015-07-29 14:06:22'),
(342, 12, 14, 'Reiciendis modi laboriosam harum nisi aut iste. Veritatis quia rerum et hic. Molestiae natus distinctio doloribus iure ut sit. Porro aut dic', NULL, NULL, '2015-07-29 14:06:22', '2015-07-29 14:06:22'),
(343, 12, 13, 'Officia a alias nihil sequi eaque magni corrupti. Omnis quia eligendi et nisi quibusdam non maxime. Laudantium enim velit doloribus dolor ev', NULL, NULL, '2015-07-29 14:06:22', '2015-07-29 14:06:22'),
(344, 12, 15, 'A excepturi voluptas natus dolorem consequatur accusantium. Cupiditate est quia alias. Minus laudantium omnis dolores.', NULL, NULL, '2015-07-29 14:06:22', '2015-07-29 14:06:22'),
(345, 12, 12, 'Ut omnis consequuntur porro nesciunt. Accusamus in modi earum corrupti praesentium. Soluta et maiores id eius unde. Temporibus harum commodi', NULL, NULL, '2015-07-29 14:06:22', '2015-07-29 14:06:22'),
(346, 12, 18, 'Commodi esse repudiandae excepturi itaque possimus aut. Maxime sed corporis quia rem rerum. Dolore placeat aliquam veritatis reprehenderit d', NULL, NULL, '2015-07-29 14:06:22', '2015-07-29 14:06:22'),
(347, 12, 1, 'Iure libero tempora in at asperiores porro qui. Illo rerum at delectus accusantium molestias non. Cum ut voluptas atque consequatur. Ea aute', NULL, NULL, '2015-07-29 14:06:22', '2015-07-29 14:06:22'),
(348, 12, 10, 'Dolore id asperiores quo inventore. Voluptas est nihil in ea. Cumque facilis accusantium atque exercitationem ut nesciunt debitis saepe.', NULL, NULL, '2015-07-29 14:06:22', '2015-07-29 14:06:22'),
(349, 12, 11, 'Optio vel esse asperiores laborum quia. Enim nulla dolorem commodi nobis cumque.', NULL, NULL, '2015-07-29 14:06:22', '2015-07-29 14:06:22'),
(350, 12, 19, 'Iusto quia iure ducimus qui ad. Et doloribus neque quia eos voluptate eum cum. Hic dignissimos animi aut cupiditate hic repellat.', NULL, NULL, '2015-07-29 14:06:22', '2015-07-29 14:06:22'),
(351, 12, 20, 'Enim quo rerum sit reprehenderit. Saepe quam quo vero labore.\nAdipisci eos harum ea neque et alias. Sed sit vero sunt quo.', NULL, NULL, '2015-07-29 14:06:22', '2015-07-29 14:06:22'),
(352, 12, 9, 'Eos esse quia assumenda sunt incidunt. Veniam dolor quae accusamus animi. Impedit numquam dolorem deserunt rerum. Nulla quis perspiciatis ve', NULL, NULL, '2015-07-29 14:06:22', '2015-07-29 14:06:22'),
(353, 12, 5, 'Tempora delectus id aut quo inventore excepturi consectetur qui. Laborum cumque delectus rem. Et non rem veniam culpa non qui velit ut.', NULL, NULL, '2015-07-29 14:06:22', '2015-07-29 14:06:22'),
(354, 12, 18, 'Rerum magnam veniam praesentium quidem. Assumenda temporibus eligendi eaque rerum qui. Vel dignissimos aut accusantium in eligendi est ut.', NULL, NULL, '2015-07-29 14:06:22', '2015-07-29 14:06:22'),
(355, 12, 16, 'Voluptatem voluptatem molestiae saepe inventore. Ipsa quia sunt error aut. Modi nesciunt ab id sapiente. Et voluptatem sit iure.\nRecusandae ', NULL, NULL, '2015-07-29 14:06:22', '2015-07-29 14:06:22'),
(356, 12, 10, 'Aut error vero consequatur iusto. Voluptatum tempore et quaerat alias voluptatem ducimus voluptatem. Odio ut minima distinctio.', NULL, NULL, '2015-07-29 14:06:22', '2015-07-29 14:06:22'),
(357, 12, 14, 'Aut autem et ipsam ipsum cupiditate ipsa architecto. Sit rerum asperiores ut. Enim voluptates nihil animi minus eum. Aut adipisci aut sint. ', NULL, NULL, '2015-07-29 14:06:22', '2015-07-29 14:06:22'),
(358, 12, 9, 'Tempore minus aspernatur laudantium voluptatem. Temporibus et non dignissimos minus. Voluptas architecto voluptatem quis quae inventore.', NULL, NULL, '2015-07-29 14:06:22', '2015-07-29 14:06:22'),
(359, 12, 3, 'Id autem et id et qui enim aliquam. Iste corrupti eum quis quia ut odio libero. Voluptate omnis rerum fuga et ab.', NULL, NULL, '2015-07-29 14:06:22', '2015-07-29 14:06:22'),
(360, 12, 18, 'Dolorem sit est eligendi. Et explicabo dolorem qui sunt in consequuntur consequatur. Ut iusto soluta qui nobis dolorem vitae repudiandae. Ma', NULL, NULL, '2015-07-29 14:06:22', '2015-07-29 14:06:22'),
(361, 13, 7, 'Quae delectus fugiat voluptatem provident praesentium qui sapiente labore. Et et dolor veniam provident. Saepe laudantium dolor consequatur ', NULL, NULL, '2015-07-29 14:06:25', '2015-07-29 14:06:25'),
(362, 13, 11, 'Illo voluptas voluptatem et et est. Reprehenderit recusandae iure iure itaque voluptas. Dignissimos nam rerum porro accusamus.', NULL, NULL, '2015-07-29 14:06:25', '2015-07-29 14:06:25'),
(363, 13, 5, 'Nihil repellendus quia sunt id iure officia aut. Sed nisi voluptates dolorem cum vel praesentium ullam. Vitae illum eos ad exercitationem.', NULL, NULL, '2015-07-29 14:06:25', '2015-07-29 14:06:25'),
(364, 13, 11, 'Illum pariatur quibusdam accusamus tempora. Cupiditate excepturi veritatis velit. Natus non unde fugit. Nihil tenetur aut sed rerum eum veli', NULL, NULL, '2015-07-29 14:06:25', '2015-07-29 14:06:25'),
(365, 13, 4, 'Aut et quasi saepe distinctio sed minus. Velit libero sint esse ratione sed modi iste minima. Nisi saepe nobis quia.\nDolor alias qui quis. V', NULL, NULL, '2015-07-29 14:06:25', '2015-07-29 14:06:25'),
(366, 13, 19, 'Sed et culpa quos laudantium accusantium labore est. Fuga rerum sint rem necessitatibus magni. Occaecati fuga in et mollitia.', NULL, NULL, '2015-07-29 14:06:25', '2015-07-29 14:06:25'),
(367, 13, 17, 'Deleniti totam voluptas nobis repudiandae assumenda. Laboriosam eligendi assumenda ut error dicta.\nVoluptatem aut provident et. Quod reicien', NULL, NULL, '2015-07-29 14:06:25', '2015-07-29 14:06:25'),
(368, 13, 16, 'Dicta et voluptatem alias assumenda in. Facilis voluptate omnis ut. Hic saepe est dolorem aut ad ducimus.', NULL, NULL, '2015-07-29 14:06:25', '2015-07-29 14:06:25'),
(369, 13, 14, 'Omnis quis at veritatis aut unde alias et. Modi cupiditate ducimus voluptatem qui soluta optio. Sed et est vitae at ratione. Ut placeat cons', NULL, NULL, '2015-07-29 14:06:25', '2015-07-29 14:06:25'),
(370, 13, 13, 'Soluta ut pariatur porro maiores libero. Est voluptatem incidunt dolore natus doloremque aliquid. Nam maxime error est sequi est alias qui.', NULL, NULL, '2015-07-29 14:06:25', '2015-07-29 14:06:25'),
(371, 13, 3, 'Labore vero quam non nesciunt et repudiandae sed. Et enim vero excepturi omnis. Architecto non sunt enim rerum molestiae sint. In id sunt eu', NULL, NULL, '2015-07-29 14:06:25', '2015-07-29 14:06:25'),
(372, 13, 9, 'Eum et deleniti aperiam in. Enim voluptatibus qui nobis dolore. Sint ut tenetur repellat sed sed facilis. Tenetur velit et ut provident.', NULL, NULL, '2015-07-29 14:06:25', '2015-07-29 14:06:25'),
(373, 13, 17, 'Nesciunt quia porro ut dolorem perspiciatis vero est. Voluptas minima ut aut consectetur debitis libero ipsam. Et enim recusandae maiores es', NULL, NULL, '2015-07-29 14:06:25', '2015-07-29 14:06:25'),
(374, 13, 5, 'Quisquam soluta officiis praesentium dolores. Omnis sint molestiae rem vel.', NULL, NULL, '2015-07-29 14:06:25', '2015-07-29 14:06:25'),
(375, 13, 17, 'Qui dignissimos voluptatem ipsam alias recusandae cupiditate. Qui numquam hic non et quo necessitatibus qui tempora. Deserunt non commodi se', NULL, NULL, '2015-07-29 14:06:25', '2015-07-29 14:06:25'),
(376, 13, 18, 'Aut perferendis provident dicta esse. Corrupti eveniet adipisci reprehenderit. Rerum deleniti qui vel ab quidem aut.', NULL, NULL, '2015-07-29 14:06:25', '2015-07-29 14:06:25'),
(377, 13, 1, 'Nihil quo reiciendis pariatur. Qui veniam eaque dolores repudiandae. Molestiae non qui molestiae illo enim magnam.', NULL, NULL, '2015-07-29 14:06:25', '2015-07-29 14:06:25'),
(378, 13, 17, 'Sit nobis est dolorem est. Architecto laborum laborum cupiditate nemo porro tempore. Aut et minima consequatur et voluptatem. Aut unde vero ', NULL, NULL, '2015-07-29 14:06:25', '2015-07-29 14:06:25'),
(379, 13, 4, 'Consequuntur doloremque at in harum magni saepe non. Quia omnis autem natus magnam velit. Quam consequatur eligendi autem voluptatum. Cupidi', NULL, NULL, '2015-07-29 14:06:25', '2015-07-29 14:06:25'),
(380, 13, 19, 'Porro aliquid id temporibus voluptas. Quis dolorem voluptatem qui. Dolores neque iste fugiat incidunt quidem. Sunt veniam aut aut similique ', NULL, NULL, '2015-07-29 14:06:25', '2015-07-29 14:06:25'),
(381, 13, 7, 'Est dolorum rerum nobis laboriosam et. Corrupti earum omnis provident aut. Assumenda omnis quas deleniti ipsum.', NULL, NULL, '2015-07-29 14:06:25', '2015-07-29 14:06:25'),
(382, 13, 1, 'Inventore adipisci mollitia excepturi nesciunt provident sint. Distinctio consectetur fugit tempore soluta aperiam quis sit. Unde id similiq', NULL, NULL, '2015-07-29 14:06:25', '2015-07-29 14:06:25'),
(383, 13, 18, 'Modi odio voluptas sit. Dicta itaque laborum repellat ullam error. Placeat suscipit expedita doloribus molestiae sed. Nesciunt quisquam aliq', NULL, NULL, '2015-07-29 14:06:25', '2015-07-29 14:06:25'),
(384, 13, 19, 'Qui maiores ut est dolores et ducimus atque. Dolor corrupti voluptates voluptatibus voluptatum. Non est ab voluptate.', NULL, NULL, '2015-07-29 14:06:25', '2015-07-29 14:06:25'),
(385, 13, 3, 'Earum ducimus dolorem consectetur alias ullam eius. Aut excepturi quasi aspernatur non. Architecto alias id officiis quasi vero fuga. Ullam ', NULL, NULL, '2015-07-29 14:06:25', '2015-07-29 14:06:25'),
(386, 13, 19, 'Itaque alias voluptatem earum in. Saepe aperiam ut suscipit sint. Consectetur facilis rerum earum qui fugit. Ab eius unde eum aut ullam rem ', NULL, NULL, '2015-07-29 14:06:25', '2015-07-29 14:06:25'),
(387, 13, 4, 'Repellat et et non repudiandae ut velit. Dolor natus dolores nihil odio repellendus voluptas ad. Voluptate voluptatem sed qui.', NULL, NULL, '2015-07-29 14:06:25', '2015-07-29 14:06:25'),
(388, 13, 15, 'Culpa dolor excepturi dolorem officia officia enim. Nam nobis fuga distinctio voluptas facilis nobis doloribus. Error velit fuga et harum te', NULL, NULL, '2015-07-29 14:06:25', '2015-07-29 14:06:25'),
(389, 13, 9, 'Nesciunt nam dolorem accusantium. Molestias qui et tempore. Aspernatur inventore adipisci cupiditate. Numquam a sunt sapiente aut ipsum exer', NULL, NULL, '2015-07-29 14:06:25', '2015-07-29 14:06:25'),
(390, 13, 3, 'Corrupti aut qui voluptates. Voluptatum harum possimus accusantium recusandae. Aliquam beatae odit et atque eum non iste. Accusamus impedit ', NULL, NULL, '2015-07-29 14:06:25', '2015-07-29 14:06:25'),
(391, 14, 15, 'Ut quo deserunt non nobis. Aut omnis qui porro autem unde sit. Architecto tempora dolore et optio. Et molestias sunt rem possimus et volupta', NULL, NULL, '2015-07-29 14:06:27', '2015-07-29 14:06:27'),
(392, 14, 14, 'Magnam eaque dolores qui hic deleniti blanditiis. Aut eum iste ut unde modi id quisquam quo. Sit vel soluta eius quia deleniti culpa dolor.', NULL, NULL, '2015-07-29 14:06:27', '2015-07-29 14:06:27'),
(393, 14, 15, 'Exercitationem voluptatibus quia aliquam fugit perspiciatis voluptas. Non ipsa nobis quo qui ad quis. Dolore quis ut saepe numquam error et.', NULL, NULL, '2015-07-29 14:06:27', '2015-07-29 14:06:27'),
(394, 14, 14, 'Eius illum culpa consequatur velit incidunt iure accusantium. Corporis voluptates inventore ab maiores laborum ut. Et aut architecto minus q', NULL, NULL, '2015-07-29 14:06:27', '2015-07-29 14:06:27'),
(395, 14, 17, 'Commodi et veniam et saepe adipisci aut neque. Rerum corporis voluptatem voluptatibus fugiat fugiat veritatis.', NULL, NULL, '2015-07-29 14:06:27', '2015-07-29 14:06:27'),
(396, 14, 13, 'Quisquam officiis sint mollitia blanditiis assumenda sit. Beatae culpa cum maxime fugiat. Amet omnis aliquid ut laboriosam facere. Optio con', NULL, NULL, '2015-07-29 14:06:27', '2015-07-29 14:06:27'),
(397, 14, 19, 'Odit nobis placeat aspernatur blanditiis et praesentium quae. Quam magni quis molestiae ut sit inventore. Aut nemo in illum dignissimos impe', NULL, NULL, '2015-07-29 14:06:27', '2015-07-29 14:06:27'),
(398, 14, 5, 'Sit natus voluptas quia et repellendus. Voluptates dolorum quia ut quibusdam quas ratione. Ut dolorem rerum sint vitae voluptas consectetur.', NULL, NULL, '2015-07-29 14:06:27', '2015-07-29 14:06:27'),
(399, 14, 3, 'Et dolorem tempora ut et voluptas aliquid voluptates. Rerum voluptas ad perspiciatis. Ex et ut sit nostrum magni. Sequi animi delectus moles', NULL, NULL, '2015-07-29 14:06:27', '2015-07-29 14:06:27'),
(400, 14, 19, 'Ut officiis ut quod molestiae temporibus et odit. Corporis molestias perspiciatis omnis architecto recusandae facilis rerum. Voluptates nost', NULL, NULL, '2015-07-29 14:06:27', '2015-07-29 14:06:27'),
(401, 14, 11, 'Et error et explicabo eum nemo. Nobis inventore incidunt rerum reiciendis repellat. Laborum excepturi architecto blanditiis dolor sint. Aut ', NULL, NULL, '2015-07-29 14:06:27', '2015-07-29 14:06:27'),
(402, 14, 17, 'Labore eum nihil dignissimos. Earum sint voluptates aperiam velit illo nam. Natus asperiores harum quis ullam odit facilis tenetur eum. Cupi', NULL, NULL, '2015-07-29 14:06:27', '2015-07-29 14:06:27'),
(403, 14, 19, 'Qui sint animi quis reiciendis reiciendis ut. Ad accusamus et aspernatur enim veritatis. Ipsam illo molestiae blanditiis porro vero.', NULL, NULL, '2015-07-29 14:06:27', '2015-07-29 14:06:27'),
(404, 14, 8, 'Voluptatem magnam doloribus explicabo. Impedit nobis numquam voluptates. Nobis autem at aut repudiandae quo. Quas accusantium similique mole', NULL, NULL, '2015-07-29 14:06:27', '2015-07-29 14:06:27'),
(405, 14, 11, 'Repellat enim pariatur iure omnis. Rerum vel voluptas dolorum sunt. Aperiam voluptas laborum eum maxime blanditiis maiores iste.', NULL, NULL, '2015-07-29 14:06:27', '2015-07-29 14:06:27'),
(406, 14, 2, 'Id nesciunt praesentium quaerat sit error nisi. Dicta hic laborum at totam repudiandae. Et ut dolores ipsam. Voluptatem maiores et amet dolo', NULL, NULL, '2015-07-29 14:06:27', '2015-07-29 14:06:27'),
(407, 14, 18, 'Eum rem assumenda temporibus ut molestias. Ipsum a officia laudantium natus eos at. A dolorem voluptatem aut et velit nostrum. Consequatur a', NULL, NULL, '2015-07-29 14:06:27', '2015-07-29 14:06:27'),
(408, 14, 8, 'Vitae voluptas vel nisi. Aperiam ut officia molestiae molestiae non. Corrupti iure eveniet nisi ab atque et. Adipisci inventore suscipit omn', NULL, NULL, '2015-07-29 14:06:27', '2015-07-29 14:06:27'),
(409, 14, 8, 'Quidem voluptatem ut et voluptatem. Excepturi quidem recusandae et autem ab deleniti labore. Nulla ducimus voluptatum nobis totam iure accus', NULL, NULL, '2015-07-29 14:06:27', '2015-07-29 14:06:27'),
(410, 14, 3, 'Ut culpa necessitatibus laudantium quo itaque voluptas. Et esse ipsum quod asperiores corporis deserunt velit. Qui explicabo ullam natus quo', NULL, NULL, '2015-07-29 14:06:27', '2015-07-29 14:06:27'),
(411, 14, 4, 'Ipsum vel quo dolor non. Mollitia inventore ipsam rerum repellendus iure aut. Velit voluptates quaerat cum atque quis enim suscipit.', NULL, NULL, '2015-07-29 14:06:28', '2015-07-29 14:06:28'),
(412, 14, 15, 'Fugit et consequuntur dicta nam id quidem. Sint ut sit unde dolore. Ab sit rerum cupiditate ab enim. Hic eos et saepe molestias rerum verita', NULL, NULL, '2015-07-29 14:06:28', '2015-07-29 14:06:28'),
(413, 14, 1, 'Ducimus omnis pariatur magnam rerum quibusdam autem vitae. Eos fugiat error debitis illo consectetur. Est consequatur qui et molestiae volup', NULL, NULL, '2015-07-29 14:06:28', '2015-07-29 14:06:28'),
(414, 14, 10, 'Id ut in autem eius quas quaerat eos explicabo. Totam aut aut ullam. Est aut aut deserunt enim in explicabo. Ducimus sed voluptate voluptati', NULL, NULL, '2015-07-29 14:06:28', '2015-07-29 14:06:28'),
(415, 14, 13, 'Blanditiis sint officia dolorum velit velit error. Cupiditate atque non molestiae sit amet in aliquam quia. Voluptatem molestias vitae et.', NULL, NULL, '2015-07-29 14:06:28', '2015-07-29 14:06:28'),
(416, 14, 16, 'Autem et sunt sunt sequi provident vero. Sed nostrum aspernatur non porro.', NULL, NULL, '2015-07-29 14:06:28', '2015-07-29 14:06:28'),
(417, 14, 19, 'Hic dolor rem odio laudantium ut praesentium. Ratione earum rem aut qui. Consequatur unde rem optio saepe voluptas. Eligendi beatae veniam d', NULL, NULL, '2015-07-29 14:06:28', '2015-07-29 14:06:28'),
(418, 14, 7, 'Aut numquam omnis facere et saepe dicta dolorem. Magnam sed voluptates repellendus voluptatem eligendi dolor corrupti mollitia. Sit enim mai', NULL, NULL, '2015-07-29 14:06:28', '2015-07-29 14:06:28'),
(419, 14, 9, 'Praesentium maiores sint perferendis aspernatur. Odio inventore dolores ea et. Explicabo aperiam ea debitis porro laborum debitis natus. Qui', NULL, NULL, '2015-07-29 14:06:28', '2015-07-29 14:06:28'),
(420, 14, 8, 'Exercitationem est quam nesciunt ab quos. Necessitatibus perferendis quod accusamus voluptas ullam rerum vel. Consequatur qui non eos impedi', NULL, NULL, '2015-07-29 14:06:28', '2015-07-29 14:06:28'),
(421, 15, 2, 'Necessitatibus soluta veritatis recusandae qui aut saepe et deserunt. Eos perspiciatis autem qui.', NULL, NULL, '2015-07-29 14:06:41', '2015-07-29 14:06:41'),
(422, 15, 4, 'Suscipit perspiciatis quos nihil et tempore iusto. Illo minima nihil odit. Et possimus repellendus ut alias aut ut quasi.', NULL, NULL, '2015-07-29 14:06:41', '2015-07-29 14:06:41'),
(423, 15, 5, 'Soluta ea ducimus maxime doloremque dolore accusantium ea. Voluptatibus quia in voluptatem ullam dolor similique voluptas expedita. Voluptat', NULL, NULL, '2015-07-29 14:06:41', '2015-07-29 14:06:41'),
(424, 15, 18, 'Perferendis et sed consequatur quaerat nihil omnis sit. Asperiores omnis consequatur facere repellendus officiis voluptate. Aut ut dolor nob', NULL, NULL, '2015-07-29 14:06:41', '2015-07-29 14:06:41'),
(425, 15, 20, 'Rerum dicta quia dolores neque ut ut. Occaecati id assumenda repellat dicta voluptas eos. Suscipit placeat non nulla natus similique non. Pe', NULL, NULL, '2015-07-29 14:06:41', '2015-07-29 14:06:41'),
(426, 15, 4, 'Deserunt quod eligendi at eos ratione enim quam. Iure ut a sit molestiae laborum qui. Ipsam odio voluptatum quos nam ullam nemo cumque.', NULL, NULL, '2015-07-29 14:06:41', '2015-07-29 14:06:41'),
(427, 15, 6, 'Unde voluptate qui at deleniti tempore. Consequatur dolor cumque molestias ad voluptatum qui. Nam cupiditate repellat ut provident ipsa magn', NULL, NULL, '2015-07-29 14:06:41', '2015-07-29 14:06:41'),
(428, 15, 3, 'Eaque atque sit provident. Earum dolores nobis unde labore doloremque asperiores enim. Minus ex mollitia enim. Libero tenetur neque eaque ma', NULL, NULL, '2015-07-29 14:06:41', '2015-07-29 14:06:41'),
(429, 15, 11, 'Perferendis omnis nihil eum sint. Explicabo delectus accusamus assumenda blanditiis odit. Sed magnam velit iure dolorum hic. Quisquam et pos', NULL, NULL, '2015-07-29 14:06:41', '2015-07-29 14:06:41'),
(430, 15, 18, 'Hic laboriosam nisi eligendi a. Quos voluptas vel placeat amet voluptatem reiciendis voluptates. Fuga ut dolor inventore commodi aliquam qui', NULL, NULL, '2015-07-29 14:06:41', '2015-07-29 14:06:41'),
(431, 15, 7, 'Hic dicta recusandae qui iusto aut aut. A cumque tempore quas nihil. Voluptates architecto incidunt deleniti repudiandae maiores. Consequatu', NULL, NULL, '2015-07-29 14:06:41', '2015-07-29 14:06:41'),
(432, 15, 9, 'Velit ut et et qui. Fuga ipsa dolores error illo architecto fugiat esse a. Cupiditate ipsa amet sed omnis. Optio culpa amet in nulla est.', NULL, NULL, '2015-07-29 14:06:41', '2015-07-29 14:06:41'),
(433, 15, 6, 'Qui accusamus sint voluptates sed id beatae et consequatur. Ut similique tempore quidem alias distinctio. Et possimus aliquam voluptas conse', NULL, NULL, '2015-07-29 14:06:41', '2015-07-29 14:06:41'),
(434, 15, 9, 'Necessitatibus similique aliquid nulla dolorem non enim et. Laborum eius minima nobis delectus sint qui. Optio optio est id praesentium quis', NULL, NULL, '2015-07-29 14:06:41', '2015-07-29 14:06:41'),
(435, 15, 13, 'Suscipit vel aut debitis sed. Repudiandae et et quae eos. Voluptas ut illo nostrum saepe. Et voluptatem alias doloribus.', NULL, NULL, '2015-07-29 14:06:41', '2015-07-29 14:06:41'),
(436, 15, 15, 'Voluptatem accusamus cupiditate nihil officia dolor deleniti. Vel odio ad non dolor occaecati illo rerum. Blanditiis consequatur numquam opt', NULL, NULL, '2015-07-29 14:06:41', '2015-07-29 14:06:41'),
(437, 15, 3, 'Nobis accusantium molestiae iste enim amet aut. Quia eos veritatis eos voluptatem eos molestias. Voluptatum repellendus et praesentium dolor', NULL, NULL, '2015-07-29 14:06:41', '2015-07-29 14:06:41'),
(438, 15, 8, 'Omnis quo rerum est voluptas ullam cum incidunt. Corrupti quia quas ipsa sed commodi. Eius quis sint aliquam architecto quis. Qui autem debi', NULL, NULL, '2015-07-29 14:06:41', '2015-07-29 14:06:41'),
(439, 15, 16, 'Pariatur perferendis nemo culpa dolore. Quod doloribus libero in repudiandae dolores et dolore. Quae ab harum occaecati error et doloribus m', NULL, NULL, '2015-07-29 14:06:41', '2015-07-29 14:06:41'),
(440, 15, 5, 'At magnam dolorum enim dolorum eum cupiditate impedit. Provident ea dolorem similique et quae. Adipisci repellat illo animi molestiae eius. ', NULL, NULL, '2015-07-29 14:06:41', '2015-07-29 14:06:41'),
(441, 15, 12, 'Dolore corrupti voluptatem excepturi dicta ullam ut ipsam. Eos voluptas labore iste necessitatibus aut itaque reprehenderit.', NULL, NULL, '2015-07-29 14:06:41', '2015-07-29 14:06:41'),
(442, 15, 17, 'Quo delectus nesciunt et. Enim architecto pariatur aperiam officiis. Deleniti reprehenderit aspernatur recusandae atque velit placeat impedi', NULL, NULL, '2015-07-29 14:06:41', '2015-07-29 14:06:41'),
(443, 15, 3, 'Magni enim dolore repellat non. Facilis quibusdam harum tempora ad dolores ullam. Voluptate vitae neque quis in tempora eos.', NULL, NULL, '2015-07-29 14:06:41', '2015-07-29 14:06:41'),
(444, 15, 18, 'Rerum voluptas impedit deleniti in. Ea repellat dolore aliquid placeat voluptatem eligendi.', NULL, NULL, '2015-07-29 14:06:41', '2015-07-29 14:06:41'),
(445, 15, 12, 'Voluptatibus aut voluptate suscipit iste et soluta ut sed. Nobis autem officia porro qui. Illo atque facere nam voluptatum et.', NULL, NULL, '2015-07-29 14:06:41', '2015-07-29 14:06:41'),
(446, 15, 8, 'Ex earum vero quis ratione ducimus velit ut. Recusandae eos voluptatibus voluptatem aliquid quo. Aliquam ab aut aut temporibus.', NULL, NULL, '2015-07-29 14:06:41', '2015-07-29 14:06:41'),
(447, 15, 6, 'Excepturi facere ratione est hic est asperiores totam. Voluptas ullam temporibus animi eum laudantium culpa repudiandae. Corrupti autem sit ', NULL, NULL, '2015-07-29 14:06:41', '2015-07-29 14:06:41'),
(448, 15, 20, 'Et accusantium commodi a quia molestiae. Quo qui nobis nisi eaque. Quasi eos et est placeat rerum error.', NULL, NULL, '2015-07-29 14:06:41', '2015-07-29 14:06:41'),
(449, 15, 12, 'Vero et rerum dolor labore quisquam velit. Reiciendis quidem ipsum velit veniam dolorem amet minus suscipit. Sint sit unde modi ipsa asperna', NULL, NULL, '2015-07-29 14:06:41', '2015-07-29 14:06:41'),
(450, 15, 2, 'Ipsam excepturi sit deserunt omnis error et. Consectetur quo vel labore enim voluptatem quis. Ratione architecto quisquam est hic.', NULL, NULL, '2015-07-29 14:06:41', '2015-07-29 14:06:41'),
(451, 6, 4, 'J''adore les initial commits', '', '', '2015-07-29 14:38:45', '2015-07-29 14:38:45'),
(452, 6, 4, 'J''adore vraiment les initial commits', '', '', '2015-07-29 14:40:42', '2015-07-29 14:40:42');

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
  `date_modified` datetime NOT NULL,
  `role` varchar(15) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `user_name`, `password`, `email`, `pic_name`, `bio`, `token`, `token_expired`, `date_created`, `date_modified`, `role`) VALUES
(1, 'Nico', '$2y$10$ufHt345kpCtVGhgFH5mHUOAJkkrZzXMu/6OXdhmPpP.q5SON/31be', 'nicolaswf3@gmail.com', 'a9020695cb1cb7f0389d4475404c70b7.', 'Je suis content !', NULL, NULL, '2015-07-23 15:27:23', '0000-00-00 00:00:00', 'admin'),
(4, 'Joel', '$2y$10$SxmONh8OPjWqh7nFeacofeCcHJzobJqvqMb8o00zFDJJDpDaV/Gaq', 'joel@wf3.fr', '0eca8ad59e8a3c4d33f3806a0760d264.jpg', 'Je suis joel et je suis joyeux :-)', NULL, NULL, '2015-07-29 12:43:41', '2015-07-29 12:43:41', 'user'),
(5, 'Flo', '$2y$10$g1DMhCwh2RHVvMBqWTqOjui/X6zQ2br5GQJayYlD023p7HUOhObgK', 'florian@wf3.fr', '5f9816d4d7f34e6981ef03fdcdf0ee16.jpg', 'Je vole !', NULL, NULL, '2015-07-29 12:47:41', '2015-07-29 12:47:41', 'user'),
(6, 'Ali', '$2y$10$iJ.az2/6LaYZx4WgvQiKcuCzWqcgdE43rDqoZFI1Ey4I8opvQlfLG', 'ali@wf3.fr', '0395ff76f010a958e6d254df6df908e5.jpg', 'J''ai vaincu une armée, tout seul avec mon épée ...', NULL, NULL, '2015-07-29 12:48:21', '2015-07-29 12:48:21', 'user'),
(7, 'Denis', '$2y$10$Aw1wfsWFbydOag7T9lFxiehpf1yDk0Ur3Z0yS5gbH9CipdZ4eF5gK', 'denis@wf3.fr', '5a684dc271ec54047dc0f2346fbfe82f.jpg', 'Je suis un filouuuuuu...', NULL, NULL, '2015-07-29 12:49:28', '2015-07-29 12:49:28', 'user'),
(8, 'Jérôme', '$2y$10$Og3.pvdUM6QGj9SsTQQa/etUdgBcFF8rHkQyUBg/dskjZOMqsWQW6', 'jerome@wf3.fr', '0897bf02556fb4e7afeae71b3fe7d695.jpg', 'J''en ai marre que tout le monde me dise que je ne pense qu''à ça...', NULL, NULL, '2015-07-29 12:52:35', '2015-07-29 12:52:35', 'user'),
(9, 'Alex', '$2y$10$cU7cFO7O78EaPzMTENwEK.UPqBkXXEcW0S0i5sNMH2W69yK7f30PK', 'alex@wf3.fr', '5f4155a0ee6779a9ca147c34d89d4438.jpg', 'Le moment de la journée que je préfère, c''est la pause déjeuner ;-)', NULL, NULL, '2015-07-29 12:53:53', '2015-07-29 12:53:53', 'user'),
(10, 'Nadia', '$2y$10$tdkepmnS6C9x3AG/gO5.QOxu2PVl3YJkt3iC85f4jDN0tbMPRd.32', 'nadia@wf3.fr', '0fb131054ba708e939be2a8521858a5b.jpg', 'L''énergie magnétique qui nous entoure me fascine, je rêve d''une colonne de puissance dans mon jardin !', NULL, NULL, '2015-07-29 12:54:46', '2015-07-29 12:54:46', 'user'),
(11, 'Mydao', '$2y$10$DHC7dB0gbNufxM8UleWsvu4ebCawBhJwIPGS1zNYWJO4RqkcUMXcG', 'mydao@wf3.fr', '18c40c3edc6c81fe3ca83aa108207f70.jpg', 'J''adore Verlaine ! J''en ai marre d''entendre les garçons parler de cul...', NULL, NULL, '2015-07-29 12:56:18', '2015-07-29 12:56:18', 'user'),
(12, 'Fred', '$2y$10$R73GpID.wxwXbQYasPZg7OSNnpFIx1V5knmVUs2rVXC8SRsekmu3u', 'fred@wf3.fr', '611265c227b6ad41ac6e3baaaf4159ee.jpg', 'Je suis fan de photographie, et de mon maître jedi le grand Sébastien', NULL, NULL, '2015-07-29 12:57:06', '2015-07-29 12:57:06', 'user'),
(13, 'Seb', '$2y$10$Ge6OthaU6/hiJffxCXxT.ueKH9FskkpmzWckZLpJFvq5ueP6ulblS', 'seb@wf3.fr', 'ca253fbe89a2ca088718a970e84a9a28.jpg', 'J''adore le surnom de "maitre jedi". J''aimerais créer une fonction JS qui enverrait Fred sur Saturne !', NULL, NULL, '2015-07-29 12:58:12', '2015-07-29 12:58:12', 'user'),
(14, 'Tony', '$2y$10$6nsE9KTX8ie/7MlTpRwlzecx8NGNBpSjl68ZR1Smah4npc76x/mR6', 'tony@wf3.fr', '6103b19719d56d1de0f92dd49a337758.jpg', 'Je suis passionné de films, et je suis devenu maître dans l''art de faire grincer les claviers.', NULL, NULL, '2015-07-29 13:00:40', '2015-07-29 13:00:40', 'user'),
(15, 'Julien', '$2y$10$qrs8JlGW5.1sGpWsw2GfS.Kou2.P1TpzB8hagkyBchMWS2IBqqQ5y', 'julien@wf3.fr', '5f045408d60ab0cc69e27036cc99b01a.jpg', 'Je suis ravi de travailler avec Nico, il est vraiment super balèze !', NULL, NULL, '2015-07-29 13:01:45', '2015-07-29 13:01:45', 'admin');

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
-- Index pour la table `tag_history`
--
ALTER TABLE `tag_history`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT pour la table `tag_history`
--
ALTER TABLE `tag_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT pour la table `tweets`
--
ALTER TABLE `tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=453;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
DELIMITER $$
--
-- Événements
--
CREATE DEFINER=`root`@`localhost` EVENT `change current_tag` ON SCHEDULE EVERY 10 MINUTE STARTS '2015-07-24 14:34:00' ON COMPLETION PRESERVE ENABLE DO BEGIN
	UPDATE tags SET current_tag = 0 WHERE current_tag = 1;
	UPDATE tags SET current_tag = 1 WHERE current_tag = 0 ORDER BY RAND()LIMIT 1;
	INSERT INTO tag_history(id, tag_id, date_begin, date_end) 
			VALUES (NULL,
			(
			SELECT id FROM tags WHERE current_tag = 1
			),NOW(),DATE_ADD(NOW(), INTERVAL 10 MINUTE));
END$$

DELIMITER ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
