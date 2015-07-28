-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 28 Juillet 2015 à 16:34
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
(1, 'Sequi enim est dolorem similique aliquam molestias.', 0, '2015-07-24 11:58:56', '2015-07-24 14:28:05'),
(2, 'Quibusdam iusto eaque architecto non cum molestiae.', 0, '2015-07-24 11:58:56', '2015-07-24 14:28:25'),
(3, 'Quasi voluptates voluptatem consequatur sapiente consequatur ex consequuntur.', 0, '2015-07-24 11:58:56', '2015-07-24 14:26:55'),
(4, 'Eveniet numquam quam occaecati quia.', 1, '2015-07-24 11:58:56', '2015-07-24 14:29:22'),
(5, 'Nisi exercitationem consequuntur velit atque.', 0, '2015-07-24 11:58:56', '2015-07-24 14:27:45'),
(6, 'Est ipsam ea repellat quasi repellat.', 0, '2015-07-24 11:58:56', '2015-07-24 14:27:35'),
(7, 'Nam unde voluptatem voluptas sunt voluptatem.', 0, '2015-07-24 11:58:56', '2015-07-24 14:29:25'),
(8, 'Aliquam ab aut dolorum occaecati nostrum.', 0, '2015-07-24 11:58:56', '2015-07-24 14:27:15'),
(9, 'Et enim amet nulla.', 0, '2015-07-24 11:58:56', '2015-07-24 14:18:45'),
(10, 'Sunt rerum velit ut maiores facilis occaecati velit.', 0, '2015-07-24 11:58:56', '2015-07-24 14:27:55'),
(11, 'Quisquam laboriosam dignissimos consectetur ea aut.', 0, '2015-07-24 11:58:56', '2015-07-24 14:29:15'),
(12, 'Consequuntur commodi unde provident quae error.', 0, '2015-07-24 11:58:56', '2015-07-24 14:16:00'),
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

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
(46, 4, '2015-07-28 16:34:00', '2015-07-28 16:44:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `tweets`
--

INSERT INTO `tweets` (`id`, `user_id`, `tag_id`, `tweet_content`, `link`, `pic`, `date_created`, `date_modified`) VALUES
(1, 1, 5, 'Est ipsum placeat nulla culpa sed sunt. Repellendus omnis consequatur velit omnis. Cupiditate similique qui fugit quia eius dolor porro ulla', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(2, 1, 13, 'Velit quam quo velit vero. Voluptates tempore voluptas minus neque earum sit. Eius aut a et debitis voluptates non harum. Quo odit debitis e', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(3, 1, 11, 'Rerum illum reprehenderit sunt ex. Rerum et necessitatibus velit nulla quaerat optio doloremque. Voluptatibus aut impedit ipsum et.', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(4, 1, 1, 'Soluta qui temporibus quibusdam tenetur repellendus nostrum consequuntur. Quia ea et est incidunt. Autem molestias ut non aut dolorum ration', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(5, 1, 15, 'Voluptatem est incidunt repudiandae corporis. Sit nostrum molestias ex magni et. Quis repellat sed deserunt qui asperiores.', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(6, 1, 11, 'Iste non at aperiam quisquam esse quisquam labore. Est ea enim velit. Cupiditate in temporibus velit omnis repellat. Soluta eum ea mollitia ', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(7, 1, 4, 'Dicta magni sed ipsam voluptatem doloribus sequi vel. Sint unde voluptatum odio assumenda aliquam. Neque omnis sint corporis architecto.', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(8, 1, 4, 'Sunt id alias cum nam sint sit. Eveniet eos et aut eaque. Vel est officiis ullam quos aut architecto sint.', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(9, 1, 2, 'Et cupiditate esse aspernatur. Unde aperiam veniam quisquam. Architecto esse possimus earum voluptatem. Possimus error numquam nihil debitis', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(10, 1, 6, 'Error aut consequatur non tempora ipsum fugit. Nobis molestias ratione ut error. Numquam quas vel vero quis explicabo deleniti architecto.', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(11, 1, 2, 'Voluptas libero eaque sit sint eos iusto. Id sunt incidunt sit autem reprehenderit voluptatem doloremque. Dignissimos rerum eius et iste asp', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(12, 1, 5, 'Quasi dicta nesciunt perferendis qui voluptas sint. Facere possimus vel corporis ut tenetur reiciendis nam. Minima eum architecto aliquam eo', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(13, 1, 1, 'Voluptatum molestias commodi aut expedita cumque optio labore. Accusantium temporibus aut autem mollitia soluta occaecati distinctio. Illo i', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(14, 1, 6, 'Molestiae cum illum earum. Excepturi placeat doloribus velit fugit repellendus est optio. Ut officiis sed placeat commodi. Id rerum quos dis', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(15, 1, 16, 'Totam aspernatur blanditiis et dolore quis consequuntur. Labore qui eligendi dolor et eveniet. Ut expedita vitae dolores laboriosam et recus', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(16, 1, 5, 'Quo laboriosam quibusdam quaerat eius qui non tempore. Est est molestias doloremque magnam expedita. Qui doloremque placeat aut laboriosam.', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(17, 1, 17, 'Et eos corrupti delectus quis occaecati. Dolor iusto architecto ut doloribus labore.', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(18, 1, 6, 'Beatae fugit quam in. Doloremque nobis dicta perferendis nisi aspernatur est. Quia repellat reprehenderit earum reprehenderit qui sint sapie', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(19, 1, 5, 'Et laboriosam ducimus at nostrum. Saepe aspernatur voluptatibus sit explicabo. Commodi quis et repellat omnis fugiat. Nihil id hic autem nec', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(20, 1, 15, 'Quas nam vel quasi sunt autem ut. Et ea maxime ipsa aliquam maiores. Eveniet perspiciatis exercitationem sunt et accusamus voluptatibus. Vel', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(21, 1, 4, 'Ea cum voluptas exercitationem vel rerum. Autem deleniti sed dolorem cumque fugit. Repellat provident sint omnis. Ipsa est nobis vitae ea ut', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(22, 1, 14, 'Enim voluptas cum voluptate aut est nostrum. Quibusdam consequatur deserunt qui quae quidem. Molestias ex aperiam eos quos voluptatem conseq', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(23, 1, 18, 'Est error enim voluptas suscipit dicta. Laborum culpa suscipit sapiente soluta. Saepe culpa qui a soluta quia quae. Molestiae eum qui quisqu', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(24, 1, 18, 'Qui consequatur non libero natus. Beatae aut est itaque voluptatem non expedita omnis. Neque saepe voluptates qui eligendi et aut. Recusanda', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(25, 1, 6, 'Nulla beatae quis ea nemo quo animi. Qui nostrum illo qui explicabo sunt. Id beatae quas molestias corrupti. Ducimus sed iure sit eum.', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(26, 1, 7, 'Repellendus ad adipisci tempora animi. Qui dolores aut cum sit. Id laudantium aut labore perspiciatis unde dolor ut. Sit est est quo dolore ', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(27, 1, 15, 'Animi minima omnis est id. Quo at et quis occaecati aut nobis amet. Nulla nisi sit dicta.', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(28, 1, 5, 'Ea fugiat consequatur laudantium voluptatum reiciendis. Aperiam non impedit illum similique. Quia necessitatibus amet ipsum voluptates. Atqu', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(29, 1, 18, 'Sed fugit nulla aut ea est necessitatibus et. Numquam quia voluptate porro. Error rerum est pariatur rerum fuga officia. Ut quasi et vero ni', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(30, 1, 12, 'Facilis eum sapiente expedita debitis et qui dolorum. Cumque occaecati dignissimos doloremque similique optio et. Nesciunt qui illum labore.', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(31, 1, 6, 'Quo ducimus et asperiores sequi id. Cupiditate odio dolore ducimus accusantium mollitia quasi exercitationem. Sint facilis quia eligendi vol', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(32, 1, 19, 'Eum a ipsum repellendus sed eos dolorem. Nobis consequuntur non temporibus dolor libero. Occaecati et distinctio officiis. Cupiditate quasi ', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(33, 1, 4, 'Natus eum non dolorem. Maiores et qui repellat sint sunt cumque saepe. Aliquam id dicta et in. Est fuga error a explicabo.', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(34, 1, 5, 'Quasi itaque dolorem molestiae debitis dolorem minus. Doloremque velit veniam officia dolor. Molestiae quod at recusandae ipsam. Deleniti eo', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(35, 1, 8, 'Omnis et eum eos optio. Est dolorem aspernatur architecto earum. Voluptate sequi itaque nihil officia aperiam omnis unde.', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(36, 1, 11, 'Velit ut natus optio non. Ab unde consequatur vero quis. Quaerat tempore eius est at.\nConsequatur sit et et. Quaerat impedit voluptas cum es', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(37, 1, 18, 'Quo animi dolor omnis quod. Aut animi id beatae qui. Non aut nobis amet voluptate quaerat pariatur eveniet. Deserunt veniam eius quas atque.', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(38, 1, 14, 'Sapiente repudiandae ea nobis inventore esse. Voluptatum eum architecto quia sunt quisquam. Saepe harum molestias iure possimus minima eaque', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(39, 1, 13, 'Quas ipsam eos debitis quia. Quisquam molestias accusamus ad saepe aut sint. Veritatis voluptatibus eum in dolorem cumque cum.\nIste officiis', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(40, 1, 3, 'Temporibus iure ab officiis aut qui consequuntur voluptate. Commodi veritatis soluta consequatur sit ipsam perspiciatis. Vel nulla laudantiu', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(41, 1, 5, 'Illo consequatur voluptatum explicabo qui quis commodi. Et illum et labore et quaerat. Neque cupiditate quia autem vel aut eos veniam.', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(42, 1, 15, 'Ducimus beatae dolor tempore molestiae aut. Quae quae quas quibusdam. Qui molestias quidem quos quos sit non vero dignissimos.', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(43, 1, 18, 'A et quo optio aperiam quaerat omnis atque. Fugit ipsum quo voluptatum amet et et earum. Architecto et molestias id cumque.', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(44, 1, 7, 'Optio quibusdam ut molestias ipsam adipisci incidunt libero. Excepturi consectetur ut a nostrum harum nihil. Laudantium omnis voluptas fuga ', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(45, 1, 19, 'Quisquam alias eligendi accusantium voluptates quia eum. Quis sint labore hic qui iste. Nihil velit et molestias vero impedit suscipit. Sequ', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(46, 1, 15, 'Temporibus blanditiis dicta consequatur harum qui asperiores consequatur. Voluptatem dolores ullam exercitationem. Alias consequatur molesti', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(47, 1, 14, 'Est distinctio iure ducimus placeat cupiditate eaque assumenda quis. Optio nisi necessitatibus omnis. Fugit aliquid quo iste voluptate quaer', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(48, 1, 5, 'Laborum quam quam et possimus. Fuga quasi aut laudantium accusamus est dignissimos. Nesciunt sapiente vitae recusandae. Praesentium quisquam', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(49, 1, 5, 'Accusantium eligendi tempore consequatur. Nobis similique omnis quod perspiciatis quasi.', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(50, 1, 11, 'Magni esse fugiat ex sed asperiores. Voluptate et voluptas quis illo nihil. Cum quo tenetur exercitationem et eaque debitis.', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(51, 1, 1, 'Facilis voluptatem aut deleniti et sapiente omnis quis dolor. Rerum quia consequuntur omnis animi qui harum iure. Deserunt praesentium vel b', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(52, 1, 9, 'Eum quibusdam qui temporibus magni. Maiores ipsa unde earum sunt quaerat officia. Deserunt ipsam et animi. Aut assumenda neque saepe vel.', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(53, 1, 16, 'Corrupti et fugit aut cum. Voluptatem minus iste sed voluptates eveniet. Aut ut repudiandae quod est totam ea. Laudantium qui numquam aliqui', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(54, 1, 10, 'Dolores ut suscipit ratione quis ullam exercitationem ut. Voluptas nostrum id facere aut perferendis vel. Autem ab excepturi possimus.', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(55, 1, 6, 'Iure reiciendis est nam qui omnis. Doloremque ipsam sit qui ea. Voluptatum dolores reprehenderit ratione at distinctio aut. Iure maxime reru', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(56, 1, 20, 'Consequatur aut voluptates atque rerum animi fugit impedit veniam. Sit quae nesciunt eaque itaque delectus a magnam. Et qui optio ut. Sint e', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(57, 1, 18, 'Aut dignissimos et nihil est earum. Aspernatur vel in voluptatem consectetur ipsam aut corrupti. Perspiciatis facere aliquid quisquam. Conse', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(58, 1, 9, 'Ut id eos recusandae exercitationem aliquam. Vel harum consectetur sit aperiam. Nemo hic magnam repellendus eaque quisquam.', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(59, 1, 10, 'Dolores debitis voluptatem hic. Rerum illum reprehenderit quam et et dolores. Molestiae pariatur excepturi nihil illo.', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(60, 1, 11, 'Quasi eveniet animi iusto qui quas ea laudantium. Cumque molestiae sint vitae eligendi est omnis. Perferendis voluptas explicabo tempore qui', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(61, 1, 5, 'Sint voluptatum qui rerum hic eligendi veritatis alias. Dolores expedita quo enim sit a.', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(62, 1, 15, 'Dolor est hic aut praesentium ab. Odio cum libero quas et. Modi sint qui error in.', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(63, 1, 3, 'Illum exercitationem earum molestiae sint. Ullam et fuga quae vel at sed beatae. Molestiae quia sit et excepturi nisi. Ratione aut est asper', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(64, 1, 3, 'Eos et illum laudantium laborum. Blanditiis inventore dolore et temporibus officiis aliquam. Cum quibusdam facilis qui iusto cupiditate vel ', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(65, 1, 20, 'Repellendus nesciunt fuga non veniam aut. Est dignissimos ex laborum ratione sed.', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(66, 1, 4, 'Ea odio mollitia facere voluptatem pariatur dignissimos. Voluptatem harum fugit amet consequatur ea cupiditate sequi. Quam qui nesciunt fugi', NULL, NULL, '2015-07-24 15:49:04', '2015-07-24 15:49:04'),
(67, 1, 2, 'Quo minus delectus architecto ut hic totam. Ut sunt et nobis dolor voluptatem. Minus vero dolorum sit non sit aut vitae. Quia officiis disti', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(68, 1, 9, 'Soluta iusto at quo sunt illum veritatis animi. Est adipisci voluptate excepturi beatae non. Similique et sint magni et eos et. Provident ni', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(69, 1, 19, 'Adipisci a facilis vel quae et. Molestias similique et est et. Ullam non itaque sit ipsum eveniet voluptatem.', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(70, 1, 4, 'Labore modi vel ex est sint. Dicta est qui et perferendis totam harum tempore. Et labore magnam sapiente qui ratione porro vitae. Qui conseq', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(71, 1, 19, 'Est nihil omnis cumque asperiores vel consequatur omnis. Aut officiis molestiae voluptatibus cum animi. Rem est labore doloribus fuga libero', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(72, 1, 9, 'Illo iste reiciendis cumque perferendis doloribus quidem. Minima natus eaque asperiores enim quae. Officiis optio sunt numquam repudiandae. ', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(73, 1, 6, 'Eum ut ut quae praesentium vel quasi non hic. Illum delectus ea laborum explicabo ipsa aperiam harum nostrum. Blanditiis et non est et iure.', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(74, 1, 11, 'Libero placeat nostrum et totam minus. Est rerum sint est officia et impedit aut repellendus.', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(75, 1, 12, 'Harum eos est voluptatem blanditiis est tempora. Perferendis odio et fuga quia suscipit maiores tempora. Quidem sunt eaque alias aut omnis.', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(76, 1, 17, 'Non dolor sint adipisci atque quia ad. Dolores voluptatem unde sint quia accusantium natus et praesentium. Reprehenderit est quasi et aut.', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(77, 1, 14, 'Dicta sed delectus veniam quia. Sit odio dolorem sint est rerum quia harum id. Quasi assumenda enim molestias molestiae. Dolorem et qui dese', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(78, 1, 12, 'Dolor eius nihil voluptatem et. Voluptatem perferendis qui mollitia quibusdam omnis earum deleniti. Provident blanditiis laborum doloribus a', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(79, 1, 10, 'Fugiat animi doloremque voluptatum voluptas. Architecto est libero dolores explicabo aut. Maiores mollitia maxime velit ut et nostrum reicie', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(80, 1, 13, 'Porro aliquam ipsam minus. Vitae magnam voluptatem velit ipsam aperiam distinctio. Facere blanditiis cum in. Veniam molestias aliquam dolore', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(81, 1, 10, 'Labore quisquam iure iure optio ut. Laboriosam qui quod deleniti amet quas. Quis odio rerum harum et consequatur autem. Saepe nam placeat es', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(82, 1, 4, 'Repellendus praesentium harum porro itaque nulla non aut. Optio laborum omnis alias quasi. Cum error officia eum et voluptatem ea molestiae ', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(83, 1, 14, 'Sit rem repellendus explicabo possimus. Nobis exercitationem eaque dolores magnam. Unde ut molestiae nihil cum.', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(84, 1, 10, 'Sit in velit sed ea et voluptatem assumenda totam. Odio quo qui harum molestiae. Porro nobis ut rerum temporibus at dolorem. Est aut neque n', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(85, 1, 6, 'Dolorem veniam quae provident voluptatibus aut quae nesciunt. Exercitationem quasi deserunt distinctio voluptatem rerum sit voluptatem. In r', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(86, 1, 14, 'Eos alias et iste aperiam et velit qui. Nemo id qui et est porro alias. Tenetur doloribus ullam et expedita. Quibusdam consectetur ea exerci', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(87, 1, 11, 'Quaerat at vel voluptatem eum nam. Consequatur saepe nulla omnis nulla nulla sapiente voluptatem.', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(88, 1, 10, 'Nobis aliquam ea reprehenderit laborum. Velit et sit non voluptas ut eos. Et minus repudiandae fugiat eius et autem quibusdam incidunt. Eos ', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(89, 1, 8, 'Odio reiciendis quaerat accusantium beatae. Id veritatis temporibus ad magnam perspiciatis vel placeat. Autem reiciendis error voluptatibus ', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(90, 1, 19, 'Nihil soluta et odit qui corporis minus. Ipsam voluptas consectetur corporis. Eos sit minus sunt soluta. Temporibus exercitationem laborum v', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(91, 1, 3, 'Magni illum ducimus nulla dolorem modi reiciendis. Reprehenderit et voluptatum assumenda voluptatem ipsa.', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(92, 1, 4, 'Voluptatem officia itaque non illum. Aut non vero ut voluptate corporis quas. Dignissimos deleniti rerum sit at quae deserunt. Provident fug', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(93, 1, 9, 'Rem dolore voluptates corrupti temporibus. Saepe quod fugit quam et laudantium expedita fugit. Reiciendis voluptas harum fugit quia nihil. N', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(94, 1, 6, 'Autem dolor consequatur quia est tempora et. Sapiente recusandae eum provident iure eius fugit omnis. Voluptates sit voluptate aut. Facere m', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(95, 1, 17, 'Velit reprehenderit enim et rerum animi non impedit. Ut quia quo voluptatem magnam quod aut repudiandae. Consectetur omnis repellat nobis ma', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(96, 1, 15, 'Nemo aut numquam et a. Debitis est quo ut eum saepe et. Possimus adipisci maxime illum a aperiam reprehenderit et et.', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(97, 1, 14, 'Adipisci fuga et qui. Nobis voluptatem doloremque voluptatem maxime voluptatem dolor magnam. Vero consequuntur repellendus quam optio simili', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(98, 1, 11, 'Sint quasi ipsam voluptas eaque eaque expedita. Sed eum ut deserunt. Velit sapiente qui qui ducimus ut praesentium qui.', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(99, 1, 14, 'Vero dicta dolorem eos harum a vel. Nostrum vel provident fuga eum ad. Soluta commodi commodi nisi necessitatibus odit dolor. Mollitia ut qu', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(100, 1, 14, 'Harum quisquam numquam ipsum quibusdam et ut. Sapiente culpa dolor error perspiciatis corrupti iste placeat voluptatum.', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(101, 1, 17, 'Aperiam non autem ipsam explicabo ullam aut et. Ut velit beatae aut et quis quidem labore. Expedita suscipit labore nulla quidem fugiat. A c', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(102, 1, 1, 'Nihil maiores et unde ut voluptatem. Itaque minus distinctio sunt quisquam libero. Recusandae dicta non nam sit sit voluptates.', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(103, 1, 3, 'Aliquam molestias sint debitis doloremque. Ducimus rerum deserunt ipsa eligendi. Est quis quae voluptas vero. Quia ullam dolore et repellend', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(104, 1, 3, 'Sit nobis ut omnis in sit doloribus ad. Qui eius aliquam eaque occaecati laborum non a. Enim accusamus eius incidunt ut similique debitis.', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(105, 1, 4, 'Officiis optio consequuntur vero eaque in ipsum. Impedit corporis esse voluptas perferendis animi. Ipsum incidunt maiores dolores libero qua', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(106, 1, 14, 'Accusamus et modi saepe occaecati odit velit. Ab similique eius esse et neque. Deserunt voluptas omnis et laboriosam.', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(107, 1, 3, 'Fuga sed ratione corrupti illum molestiae aut. Eligendi sit dolores voluptatem repudiandae vel dignissimos et iure. Vel voluptas sint minus ', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(108, 1, 14, 'Aut omnis soluta temporibus ex. Aut cumque dolores et libero eaque. Laudantium repudiandae officiis cupiditate dolorem.', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(109, 1, 7, 'Nostrum explicabo porro est. Saepe porro animi aut quidem totam est soluta. Sed architecto esse consequuntur adipisci. Accusantium et quas m', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(110, 1, 16, 'Consequatur neque molestiae beatae illo. Eaque aliquid eum sed corporis illum nam. Beatae inventore a et quis reiciendis quas non. Consequat', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(111, 1, 3, 'Sapiente excepturi velit sit possimus. Alias rerum quia veritatis suscipit ut veritatis. Veritatis voluptatem repellendus distinctio eveniet', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(112, 1, 9, 'Ut molestiae laboriosam mollitia quo. Quia nulla aliquam modi aliquam aspernatur. Odit aspernatur numquam sit qui et. Odit assumenda qui con', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(113, 1, 12, 'Sed quam est ratione dicta. Expedita eveniet atque suscipit sunt. Aut voluptatem eligendi veniam vel nemo.', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(114, 1, 4, 'Aut voluptatem debitis voluptate. Sed ipsum ut magnam est. Nemo velit corrupti id ipsa alias maiores voluptatem.', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(115, 1, 4, 'A minus laudantium est eveniet ratione vero. Minima nihil numquam accusamus ipsum totam ipsam nihil. Aliquid iure asperiores asperiores ut. ', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(116, 1, 19, 'Dignissimos laudantium qui quidem quia quos velit ut. Ut nemo optio a nobis quas. Nobis placeat necessitatibus esse iusto aut. Dignissimos e', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(117, 1, 13, 'Quia perspiciatis omnis occaecati possimus. Suscipit molestiae iure iusto explicabo exercitationem. Et enim hic ea harum.\nMinima est nihil r', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(118, 1, 5, 'Sapiente ea voluptas molestias est quasi perferendis fugit. Non deleniti sit itaque ratione. Eveniet modi enim non a modi quae quis.', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(119, 1, 14, 'Beatae quisquam est sequi. Quod adipisci et aut quisquam dolorem. Blanditiis labore dignissimos sapiente consequatur porro nobis harum.', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(120, 1, 7, 'Tempora ducimus mollitia placeat quos neque sint. Quia saepe ea perspiciatis aliquam repudiandae. Non inventore et debitis corrupti. Cum in ', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(121, 1, 14, 'Consequatur assumenda molestias vel hic esse. Libero ipsum consequatur iste est est. Qui et ut rerum eos et.', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(122, 1, 16, 'Dolorem odit in numquam voluptas est provident et. Fugit voluptas suscipit ipsa error et dolores et. Pariatur qui in occaecati.', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(123, 1, 12, 'Iure et eos eius possimus excepturi amet laborum consequatur. Distinctio delectus nisi sint inventore culpa. Iusto necessitatibus explicabo ', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(124, 1, 5, 'Expedita eos ut rerum inventore atque eaque. Voluptatem fugit ad quam est. Similique repellendus perspiciatis quia velit atque corporis.', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(125, 1, 10, 'Exercitationem labore ut non delectus impedit. Modi accusamus nam officiis. Aperiam iusto repellat est sunt aut. Cumque beatae adipisci offi', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(126, 1, 4, 'Eligendi sint voluptatibus et quod aut odit nam. Natus tempora et unde aspernatur eum. Eaque quidem est laboriosam repellat. Eveniet rerum c', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(127, 1, 9, 'Perferendis perferendis in animi mollitia accusantium maiores ut. Possimus beatae earum quis veniam qui cum accusamus. Vel sapiente voluptat', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(128, 1, 14, 'Est alias aut iure quia quo inventore libero. Qui blanditiis et provident. Odio adipisci est aut necessitatibus voluptatum.', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(129, 1, 5, 'Pariatur eaque dolor consequatur non consequuntur quam eos. Ut autem dolor ipsa delectus. Eaque dolore autem vel sunt.', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(130, 1, 5, 'Autem quis laboriosam molestiae dolor. Quasi perferendis earum quae dolores mollitia. Saepe adipisci ut asperiores mollitia qui.', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(131, 1, 3, 'Dignissimos et iste vel aut velit dolores. Et fugiat qui et non nostrum. Vel nihil perspiciatis voluptates dicta molestiae non.', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(132, 1, 7, 'Eius aut quibusdam pariatur rerum iusto mollitia. Eaque distinctio beatae deserunt assumenda repellat ut tenetur. Dolorum autem tempore numq', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(133, 1, 13, 'Et quia maxime est amet vitae placeat rem. Reprehenderit consequatur saepe quo eligendi. Eius sapiente iusto velit eos ad voluptatem.', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(134, 1, 6, 'Voluptatibus vel aliquid aliquid incidunt voluptatem. Vero esse adipisci omnis id. Ea eligendi voluptatem beatae eius voluptates suscipit qu', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(135, 1, 4, 'Quod nemo minima sed et qui tempora totam. Dolor consequatur aspernatur minus sunt optio blanditiis. Odit veniam sequi veniam tenetur amet i', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(136, 1, 4, 'Harum omnis dicta nisi ut esse consequatur ea. Porro est aliquam aut suscipit numquam et deserunt. Voluptas aut odit dolores ipsum provident', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(137, 1, 19, 'Non facilis dignissimos omnis blanditiis dicta sit aliquam. Dicta dicta nam quis et minima et.', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(138, 1, 5, 'Amet eligendi beatae fuga numquam sequi. Aspernatur ea qui eum aliquid. Nihil velit nihil nihil ratione sint debitis. Animi excepturi aliqui', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(139, 1, 11, 'Eos nam cum sapiente enim modi officiis. Non aut deleniti deleniti ea. Rem reiciendis neque autem. Dolorum ut ipsam enim nam omnis minus. Se', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(140, 1, 18, 'Sequi enim et qui voluptas molestiae. Natus beatae sequi porro incidunt aut consequatur. Illo cumque voluptatem voluptatibus est similique a', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(141, 1, 18, 'Cumque non fugiat non reprehenderit. Molestiae est quibusdam molestiae quod. Libero eos eos sed quis. Quod qui aut et rerum ea vel ut.', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(142, 1, 8, 'Id enim possimus veritatis praesentium eligendi illo. Ipsum esse animi officiis magni. Doloribus quo quia tenetur ut ex repellat magni.', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(143, 1, 14, 'Odit odit id repudiandae ut voluptatum. Earum ut excepturi veniam doloribus. Perferendis vel quia ipsum natus.', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(144, 1, 12, 'Ipsam necessitatibus quod et ab. Voluptatibus ab iure fugiat tempora ut. Maiores dolor quasi est.', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(145, 1, 12, 'Quia quis minus illo quas laudantium esse. Ullam aliquid nulla voluptatibus quaerat qui ea labore. Ipsum fuga voluptatum molestias et deleni', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(146, 1, 12, 'Dolores debitis repellendus consequatur facilis rerum recusandae. Inventore suscipit voluptatem excepturi dignissimos in animi. Illo sint si', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(147, 1, 12, 'Voluptate vero in deleniti adipisci ea vero qui. Sequi eius quam explicabo ut laboriosam accusamus eum modi. Impedit ut officia officia. Con', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(148, 1, 16, 'Enim ducimus dignissimos aut voluptatem voluptatem. Et molestiae error blanditiis neque magnam. Nulla nam et possimus.', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(149, 1, 18, 'Omnis provident at repellat vitae. Officiis incidunt vero cupiditate est nam iusto et cupiditate.', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(150, 1, 4, 'Non assumenda enim eius. Eius rem sed delectus laudantium quia et debitis. Omnis earum et soluta placeat.', NULL, NULL, '2015-07-24 15:49:05', '2015-07-24 15:49:05'),
(151, 1, 11, 'fdqsfdqs', '', '', '2015-07-24 17:34:16', '2015-07-24 17:34:16'),
(152, 1, 11, 'fdqsfdqs', '', '', '2015-07-24 17:34:16', '2015-07-24 17:34:16'),
(153, 1, 16, 'fdsqfdqs', '', '', '2015-07-27 16:02:59', '2015-07-27 16:02:59'),
(154, 1, 16, 'fdsqfdqs', '', '', '2015-07-27 16:02:59', '2015-07-27 16:02:59'),
(155, 1, 0, 'fjdklsjqfkldsq', '', '', '2015-07-28 16:03:20', '2015-07-28 16:03:20'),
(156, 1, 0, 'fjdklsjqfkldsq', '', '', '2015-07-28 16:03:20', '2015-07-28 16:03:20'),
(157, 1, 19, 'FDQSFDSQFDSQ', '', '', '2015-07-28 16:05:16', '2015-07-28 16:05:16'),
(158, 1, 19, 'FDQSFDSQFDSQ', '', '', '2015-07-28 16:05:16', '2015-07-28 16:05:16'),
(159, 1, 19, 'fdsqfdqsff', '', '', '2015-07-28 16:06:57', '2015-07-28 16:06:57'),
(160, 1, 19, 'fdsqfdqsff', '', '', '2015-07-28 16:06:57', '2015-07-28 16:06:57'),
(161, 1, 19, 'fdsqfdsqfdsq', '', '', '2015-07-28 16:07:24', '2015-07-28 16:07:24'),
(162, 1, 19, 'fdsqfdsqfdsq', '', '', '2015-07-28 16:07:24', '2015-07-28 16:07:24'),
(163, 1, 13, 'jkdflgjdfklsjgldmfsgdf', '', '', '2015-07-28 16:25:56', '2015-07-28 16:25:56'),
(164, 1, 13, 'jkdflgjdfklsjgldmfsgdf', '', '', '2015-07-28 16:25:56', '2015-07-28 16:25:56');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `user_name`, `password`, `email`, `pic_name`, `bio`, `token`, `token_expired`, `date_created`, `date_modified`) VALUES
(1, 'Nico', '$2y$10$ufHt345kpCtVGhgFH5mHUOAJkkrZzXMu/6OXdhmPpP.q5SON/31be', 'nicolaswf3@gmail.com', '', '', NULL, NULL, '2015-07-23 15:27:23', '0000-00-00 00:00:00'),
(2, 'Nicolas', '$2y$10$vM5t9PQRKsIsEcRDpUvVL.NTalZzVpkin2lxyJrJFd1PJOLz.ZPi6', 'nico@gmail.com', NULL, NULL, NULL, NULL, '2015-07-28 15:51:41', '2015-07-28 15:51:41');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT pour la table `tag_history`
--
ALTER TABLE `tag_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT pour la table `tweets`
--
ALTER TABLE `tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=165;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
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
