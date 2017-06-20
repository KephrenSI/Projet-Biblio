-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:8889
-- Généré le :  Mar 20 Juin 2017 à 23:26
-- Version du serveur :  5.6.28
-- Version de PHP :  7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `bibliotheque`
--

-- --------------------------------------------------------

--
-- Structure de la table `authors`
--

CREATE TABLE `authors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `birth_date` timestamp NULL DEFAULT NULL,
  `death_date` timestamp NULL DEFAULT NULL,
  `nationality_id` int(10) UNSIGNED DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `authors`
--

INSERT INTO `authors` (`id`, `name`, `birth_date`, `death_date`, `nationality_id`, `bio`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Tamara Dickinson', '2000-01-08 08:54:01', '1970-01-31 03:44:13', 78, 'Rem non sed consequatur eos. Odit porro ab voluptas accusantium. Id amet quae magnam sit et qui. Harum eveniet ut id ullam dolore.', 'http://lorempixel.com/200/200/?19076', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(2, 'Brice Skiles', '1993-03-25 10:29:27', '2006-01-07 08:58:07', 7, 'Nihil quisquam aut est et et quo eaque. Tempora ut libero error ullam nam ex qui sint. Expedita a natus voluptatum enim adipisci et.', 'http://lorempixel.com/200/200/?71933', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(3, 'Wilfred Reichert', '1998-03-20 10:20:58', '1975-05-14 07:22:19', 45, 'Sed distinctio voluptatem possimus sunt tempore voluptatibus quo. Id nam nihil autem. Rem labore ad minima ea error. Exercitationem distinctio voluptatem alias aliquam nihil voluptas minus.', 'http://lorempixel.com/200/200/?38010', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(4, 'Louisa Herzog', '2012-04-27 15:28:00', '1977-08-09 15:57:21', 36, 'Possimus quas nihil sit blanditiis. Deserunt beatae a autem et dolores eligendi dolorum. Vel eaque rerum ipsam. Rerum velit omnis repudiandae eum et et ratione.', NULL, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(5, 'Ms. Audrey Jacobi', '1991-04-05 20:17:03', '1991-04-06 09:38:27', 4, 'Quod aut eius laborum sed. Dignissimos sint aut cupiditate praesentium eius ea. Non enim provident distinctio consequatur velit hic. Et deleniti quia labore consequuntur.', 'http://lorempixel.com/200/200/?65321', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(6, 'Treva Rippin', '2015-08-09 10:45:38', NULL, 29, 'Dolore ut voluptas quis officia. Rerum error et mollitia eveniet provident. Quisquam et vel deserunt maxime repellat saepe est aut.', 'http://lorempixel.com/200/200/?64650', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(7, 'Johann Prohaska Sr.', '2000-10-03 22:17:12', '2015-11-28 06:55:01', 48, 'Enim sit doloremque error sequi dicta voluptatibus omnis dolor. Enim vitae consectetur suscipit facere suscipit autem quam. Debitis ipsum saepe provident inventore aut.', 'http://lorempixel.com/200/200/?99768', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(8, 'Berneice Rogahn', '2013-07-21 16:50:27', '1986-09-16 12:27:12', 32, 'Consequatur delectus cum voluptas nobis dolores maxime quia. Quo alias nesciunt id. Optio ducimus autem sint vel veniam.', 'http://lorempixel.com/200/200/?73820', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(9, 'Shaylee Schumm II', '1974-11-09 14:39:29', '1990-01-29 14:13:19', 75, NULL, 'http://lorempixel.com/200/200/?21198', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(10, 'Houston Powlowski', NULL, '2003-10-02 17:53:04', 36, NULL, 'http://lorempixel.com/200/200/?38101', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(11, 'Mrs. Kaylee Kutch V', '2001-04-12 14:50:14', '2008-02-18 04:28:38', 19, NULL, 'http://lorempixel.com/200/200/?72092', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(12, 'Delta Rowe', '1977-06-12 06:57:04', '2000-02-28 18:39:40', 65, 'Porro ipsam qui aliquid iure provident quia. Culpa molestiae expedita quasi aut est. Laborum repellendus repellendus exercitationem voluptas autem.', 'http://lorempixel.com/200/200/?55570', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(13, 'Anya Schumm', '1970-07-31 21:04:07', '1970-05-14 11:43:36', 98, 'Magnam quam ducimus atque sint ducimus. Maxime illum sed autem ut aut possimus. Cum voluptas possimus sit et nam voluptas.', 'http://lorempixel.com/200/200/?63629', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(14, 'Shad Becker I', NULL, '2003-06-07 16:23:57', 44, 'Officia tempore minima sed facere. Eaque dolore et et enim quas in. Recusandae occaecati facere cupiditate doloremque incidunt. Vel impedit fugit ducimus delectus commodi et sunt. Quidem minima fugit fuga porro.', 'http://lorempixel.com/200/200/?40038', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(15, 'Mr. Jose Jacobson', '2011-05-29 22:12:27', '1995-10-08 23:45:08', 62, 'Magnam rerum dolore fuga maiores et. Nostrum earum iure eos quia sed. Ut commodi possimus illo dolorum nihil iste quis. Quibusdam nihil sit ipsam deserunt quis.', 'http://lorempixel.com/200/200/?48647', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(16, 'Mr. Walker Conn', '2000-06-18 01:26:58', '1983-10-14 06:50:43', 66, 'Consequuntur et quia quia aliquam repellat vitae voluptatem. Sunt et est ipsum voluptatem perspiciatis illum. Ducimus quasi nostrum molestiae alias odio tempore perferendis autem. Itaque ab sint accusamus sed dolores quo molestiae.', 'http://lorempixel.com/200/200/?91410', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(17, 'Arianna Hahn', '1994-11-25 11:07:53', '1970-11-20 13:35:13', 16, 'Quidem voluptas ex sint ad ducimus voluptatem. Molestiae illo quia dolore natus repudiandae numquam aliquid. Voluptatem at delectus voluptas deleniti dolorem.', 'http://lorempixel.com/200/200/?78405', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(18, 'Jannie Cronin', '1987-06-04 08:15:34', '1982-05-07 20:06:13', 62, 'Nulla et voluptatem blanditiis. In reiciendis odio fugiat sit. Non aliquid modi eligendi fugit esse.', 'http://lorempixel.com/200/200/?11014', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(19, 'Tom Stroman Jr.', '1984-01-16 19:31:35', '2004-04-26 02:51:07', 23, 'Architecto qui quia praesentium eos et delectus assumenda voluptas. In sit vero repellendus aut est et in. Neque ea perspiciatis error aut ab error. Porro omnis deleniti quis alias earum et qui qui.', 'http://lorempixel.com/200/200/?69749', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(20, 'Bulah Hilpert', '1989-01-20 20:07:14', '1988-12-05 02:52:11', 69, 'Quas delectus recusandae consectetur quos aut odit excepturi. Aliquid velit nihil ut.', 'http://lorempixel.com/200/200/?33193', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(21, 'Woodrow Rice', '1971-09-17 00:40:26', '1982-11-08 02:11:44', 67, 'Fugiat soluta eligendi aut. Maxime sunt cupiditate perspiciatis. Repellendus dignissimos possimus facilis consequatur non occaecati doloremque. Sit et laborum sed sint aliquid fugit.', 'http://lorempixel.com/200/200/?60670', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(22, 'Prof. Merritt Keebler II', '2007-06-15 12:19:33', '2002-11-14 17:48:57', 37, 'Quaerat aut vitae ex molestiae ut facere laborum. Autem numquam voluptate assumenda maiores accusamus eveniet deleniti. Aperiam ducimus minima sed. Amet enim sit placeat repudiandae qui consequatur non.', 'http://lorempixel.com/200/200/?84536', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(23, 'Winifred Muller IV', '1973-07-17 12:03:31', '1996-04-09 13:40:50', 70, 'Ipsum quia debitis cum consectetur. Nihil sint a non et. Sint quod eaque recusandae consectetur et.', 'http://lorempixel.com/200/200/?16644', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(24, 'Sofia Doyle', '2012-02-23 20:54:00', '1989-02-09 21:44:45', NULL, 'Id saepe non incidunt est magni sit et praesentium. Quo maxime soluta molestiae vel enim nesciunt nostrum. Corrupti ipsum illo et molestiae quo. Quam labore quas dolore.', 'http://lorempixel.com/200/200/?98067', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(25, 'Odell Cole', '1997-12-08 18:37:07', NULL, 29, 'Excepturi eligendi quo aut id. Aut est et omnis rerum est aut aspernatur. Omnis incidunt quaerat excepturi aspernatur vel. Sit laborum et aut neque numquam ut est cupiditate. Maxime et asperiores earum.', 'http://lorempixel.com/200/200/?15976', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(26, 'Prof. Gabe Auer', '2012-06-25 05:09:30', '2011-07-19 13:11:31', 25, 'Nobis animi commodi consectetur error voluptas et. Rerum sequi nemo ullam totam ipsam ratione totam neque. Quis eaque sit voluptatibus non ut qui. Quasi et magnam corrupti voluptas. Sed consequatur enim et et animi.', 'http://lorempixel.com/200/200/?61848', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(27, 'Shany Bruen', '1977-12-23 05:46:43', '1970-12-27 19:46:25', 3, 'Perspiciatis omnis omnis ratione consequatur hic. Cupiditate et ullam id itaque accusantium recusandae. Adipisci distinctio similique voluptatem eligendi consequatur blanditiis. Voluptas consequatur rerum vel est aut molestiae est.', 'http://lorempixel.com/200/200/?72380', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(28, 'Greta Sipes', '2012-10-30 10:57:38', '1986-07-21 19:22:09', 95, 'Dolores at qui non qui impedit ex. Laborum libero quis et. Et ut ratione at ex suscipit reprehenderit sed quisquam. Illo magnam sequi dolores sed id quisquam alias.', 'http://lorempixel.com/200/200/?64472', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(29, 'Rose Lehner', '2003-11-21 03:27:51', '1988-12-28 19:44:30', 49, 'Necessitatibus dolores animi id sed dolore tenetur illo nemo. Consectetur sunt recusandae consequuntur sed debitis sed expedita laboriosam. Error eos velit sunt impedit et.', 'http://lorempixel.com/200/200/?51132', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(30, 'Violette Towne', '1988-09-22 00:58:34', '1976-05-26 17:25:01', 17, 'Atque cupiditate ratione et architecto a qui assumenda beatae. Voluptas quia odit hic veniam. Animi nulla nostrum a quo cupiditate est.', 'http://lorempixel.com/200/200/?73199', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(31, 'Cesar Von MD', '2006-06-04 19:34:15', '2003-05-14 12:28:51', 64, 'Ratione in qui repellendus cumque. Excepturi voluptatibus non sed aperiam. Blanditiis voluptas voluptas esse consequatur impedit porro commodi quas.', 'http://lorempixel.com/200/200/?96199', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(32, 'Ms. Mya Becker III', '1989-05-12 03:59:15', '1973-01-06 20:07:30', 25, 'Neque tempora eveniet qui minima asperiores aut. Nobis autem non ut id accusamus. Quia mollitia doloremque omnis aperiam sint vel maiores.', 'http://lorempixel.com/200/200/?55692', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(33, 'Mr. Kendall Wintheiser', NULL, '2005-08-20 12:37:04', 16, 'Praesentium voluptates quo voluptatum maxime et non est. Voluptas ad omnis enim ea. Modi asperiores veritatis libero sequi quod numquam praesentium. Impedit impedit libero laudantium possimus dolorem.', 'http://lorempixel.com/200/200/?84081', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(34, 'Myrtice Schroeder', '1983-03-02 21:48:06', '1977-04-05 22:38:57', 64, 'Sit esse rerum minus quia minus. Aliquid est porro quae ex praesentium sunt vel dolorum.', 'http://lorempixel.com/200/200/?26437', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(35, 'Ms. Kamille Blanda', '1992-06-18 02:35:12', '1982-03-14 07:56:56', 54, 'Et voluptatem voluptatem rem quibusdam. Neque qui et dolores recusandae. Est consectetur architecto harum labore.', NULL, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(36, 'Marques Sauer', '1993-02-28 04:21:32', '2011-01-10 07:50:43', 96, 'Provident aliquam voluptate non iure velit natus sequi in. Maxime molestias unde eligendi nobis natus eum. Eligendi ea molestiae aperiam voluptates aut. Iusto consequatur qui nisi eos dicta.', 'http://lorempixel.com/200/200/?55252', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(37, 'Kadin Feest', '2001-07-23 04:15:49', '1996-06-18 12:43:58', 13, 'Blanditiis assumenda optio enim enim totam mollitia quidem. Cum excepturi earum unde. Dolores voluptas et optio deleniti dolore sunt. Aut omnis dolores numquam et ab qui.', 'http://lorempixel.com/200/200/?33412', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(38, 'Gertrude Batz DVM', '2004-10-23 03:28:54', '1970-07-12 17:47:35', 72, 'Sit eum voluptatem ullam minus et. Veniam aspernatur quos praesentium consequatur illo voluptatem incidunt. Eum maxime sit quaerat voluptatem dolor. Aut qui dolore qui culpa est dolor.', 'http://lorempixel.com/200/200/?45869', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(39, 'Andrew Dibbert PhD', '2012-10-14 13:10:47', '2008-09-30 03:53:36', 18, 'Perferendis officia similique tempore et neque voluptatum cupiditate. Porro expedita ad dignissimos consequatur dolorem minima numquam repellendus. Adipisci similique non sit ut eum dolores. Eos ea maxime tenetur rem a.', 'http://lorempixel.com/200/200/?53937', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(40, 'Nico Schiller', '1986-01-06 19:17:50', '1997-01-30 10:29:03', 40, NULL, 'http://lorempixel.com/200/200/?62232', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(41, 'Mellie Kuvalis DVM', '2014-12-11 09:41:20', '2008-08-13 03:51:22', 90, 'Enim iusto cupiditate voluptatibus ex. Molestias aut tempore est accusamus ea eos eos. Minima ut deleniti omnis est. Omnis rerum dolores sunt aspernatur molestias a.', 'http://lorempixel.com/200/200/?88148', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(42, 'Hertha Robel PhD', '1971-04-10 09:54:28', '2014-06-01 23:09:56', NULL, 'Animi ratione at non minima est itaque laboriosam. Assumenda laboriosam tenetur similique voluptatum mollitia eum. Eaque ut aut et.', 'http://lorempixel.com/200/200/?32100', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(43, 'Curt Jacobi', '1974-12-13 15:34:08', '1976-07-04 04:31:02', 73, NULL, 'http://lorempixel.com/200/200/?18788', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(44, 'Myah Gerhold', NULL, '1975-10-09 12:24:55', 70, 'Nulla sapiente ullam corporis doloremque sunt quia. Molestiae placeat rerum placeat sed rerum. Voluptates non enim est et earum. Perferendis illum hic rerum voluptates.', 'http://lorempixel.com/200/200/?27617', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(45, 'Prof. Adalberto Walsh V', '1995-08-01 19:52:03', '2009-08-11 08:48:08', 100, 'Dolorem quis hic et. Debitis beatae magni perferendis et consectetur. Dignissimos dignissimos ratione est labore.', NULL, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(46, 'Pete Oberbrunner', NULL, '2003-11-05 14:54:39', 51, 'Sunt officiis dolorum suscipit delectus rerum consectetur ea totam. Labore aspernatur laudantium et beatae dolores suscipit enim. Et eligendi adipisci iste distinctio.', 'http://lorempixel.com/200/200/?72595', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(47, 'Marlene Jerde Jr.', '1990-06-23 01:25:30', '1995-11-23 02:53:05', 62, NULL, 'http://lorempixel.com/200/200/?79294', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(48, 'Ines Walter', '1978-08-06 17:33:11', '1973-02-21 07:44:43', 26, 'Doloribus non corrupti fuga rerum. Quis in quibusdam possimus non tenetur. Quidem quaerat est et et. Illo consectetur provident voluptatem voluptates sit omnis distinctio veniam.', 'http://lorempixel.com/200/200/?53419', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(49, 'Prof. Merl Kemmer MD', '2002-04-12 21:30:01', '2015-12-02 14:15:58', 77, 'Soluta nobis qui reiciendis aut repellat cum recusandae. Quibusdam architecto eligendi sint similique amet facere. Quos natus quia blanditiis ut.', 'http://lorempixel.com/200/200/?92526', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(50, 'Daphney West', '1992-03-10 19:53:28', '2015-04-06 20:05:53', 14, 'Ullam ea nemo occaecati ut culpa corporis. Est et accusantium repudiandae accusantium iusto animi. Eos et rerum quia sit saepe aut occaecati. Hic tempora et eveniet eligendi id quia. Debitis incidunt odit et temporibus esse.', 'http://lorempixel.com/200/200/?21983', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(51, 'Prof. Idell Feil', '1976-10-14 03:13:14', '1992-12-25 02:06:02', 17, 'Dolorum totam dolor sed dicta numquam ipsa. Porro quibusdam voluptatum et officia enim dicta labore voluptas. Consequatur ipsa quo animi iusto et officiis est.', 'http://lorempixel.com/200/200/?92833', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(52, 'Felicia Shields', '1998-07-25 01:27:25', '1980-02-27 08:35:45', 30, 'Velit sed error laboriosam. Autem eum velit magni amet magni. Et sequi molestias et ad officia voluptas. Est harum ab enim cumque.', 'http://lorempixel.com/200/200/?41644', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(53, 'Eudora Predovic Sr.', '1989-09-07 15:13:44', '1989-02-10 13:18:18', 13, 'Officia sint harum natus omnis quis deleniti. Maiores doloribus voluptate dicta repellendus. Veniam amet aspernatur nobis dolores. Nobis voluptatem rerum ducimus reprehenderit voluptas est.', 'http://lorempixel.com/200/200/?89211', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(54, 'Ms. Kaya Hartmann', '2015-10-13 01:40:50', '1984-02-06 01:25:07', 5, 'Officiis voluptatibus distinctio aut ea dolor qui. Dolor nobis quae rerum temporibus aut. Distinctio culpa maiores officia sit. Deleniti omnis dolor eos et dolorem vel.', 'http://lorempixel.com/200/200/?54642', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(55, 'Antwon Keebler', '2015-06-26 23:49:18', '2013-10-21 03:59:12', 62, 'Earum voluptas hic eaque qui mollitia necessitatibus id. Ipsum et neque placeat quasi similique. Sapiente qui quam voluptatem omnis itaque harum. Qui eius itaque fugit labore quia beatae.', NULL, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(56, 'Nikolas Kub', '2013-05-06 11:27:00', '2007-06-23 06:29:31', 99, 'Quia in accusantium quisquam voluptatem nesciunt sunt. Reprehenderit perferendis sapiente earum cumque quo quia tempore. Minima ex quis et illo sunt nobis. Quia quam quae praesentium.', 'http://lorempixel.com/200/200/?53488', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(57, 'Prof. Tyrese Torp MD', '1972-11-29 21:06:00', '1995-11-18 17:27:13', 75, 'Eius ad eos voluptate ut iusto rerum voluptatem. Accusantium sed sit magnam commodi. Asperiores minima sed totam voluptatem in cum eveniet. Ut praesentium placeat explicabo libero voluptatum.', 'http://lorempixel.com/200/200/?49937', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(58, 'Devon Torp Jr.', '1972-05-12 11:27:46', '1972-08-12 04:11:51', 51, 'A laboriosam laboriosam vel aspernatur nesciunt debitis temporibus aliquam. Maxime non possimus sint dolor dolorem soluta et. Et hic illum facilis eius.', 'http://lorempixel.com/200/200/?26192', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(59, 'Chance Ryan', '1971-07-03 06:15:17', '1992-08-12 23:43:44', 90, 'Veritatis quasi a ducimus minus quam. Vero suscipit deleniti eos quod. Odit pariatur est placeat aliquid dolorem neque nemo. Dolorem qui iste ex aspernatur minus maxime.', 'http://lorempixel.com/200/200/?13229', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(60, 'Jaeden Larson', '1998-02-16 09:57:47', '2008-10-31 11:18:58', 87, 'Enim laborum sequi provident voluptatem debitis unde sint. Harum excepturi fugit animi facilis nulla asperiores ut. Et beatae sequi ratione assumenda.', 'http://lorempixel.com/200/200/?38823', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(61, 'Anabel Feest', '1991-10-02 08:55:59', '1977-07-26 02:28:44', 47, 'Nisi quidem pariatur ea ratione rerum sed deleniti similique. Voluptatem dignissimos soluta aperiam porro. Saepe enim quibusdam esse ea.', 'http://lorempixel.com/200/200/?50382', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(62, 'Grayce Crooks V', '2003-07-14 02:09:32', '2008-11-05 18:50:09', 58, 'Perferendis impedit et provident amet omnis. Non vel quas voluptate quisquam quaerat voluptatem veritatis. Quos nesciunt illo aliquam minus. Quia omnis dolores corrupti accusantium cum veniam aut aut.', 'http://lorempixel.com/200/200/?41566', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(63, 'Wade Lehner', '1988-08-24 19:00:44', '1990-12-17 02:55:07', NULL, 'Fugit commodi culpa provident praesentium. Amet accusantium reiciendis qui quidem provident. Sint molestias tempora odio.', 'http://lorempixel.com/200/200/?92760', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(64, 'Dr. Giovani Brown MD', '2005-11-29 03:30:06', '2015-04-10 21:09:55', NULL, 'Minus sapiente debitis minima et dignissimos rerum. Et eum aut sunt et autem. Nesciunt eos maiores laborum est repellat reiciendis. Nulla facilis est odio sed excepturi culpa.', 'http://lorempixel.com/200/200/?90377', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(65, 'Judson Kshlerin MD', '2011-11-10 02:51:53', '1974-01-04 13:34:31', 56, 'Animi eum molestiae amet quos voluptatem fuga aut. Perferendis corrupti dolorem aut debitis. Nesciunt id non enim in dolorem. Eum tempore necessitatibus earum et deleniti veritatis incidunt. Rerum animi esse labore quibusdam molestiae consectetur explicabo.', 'http://lorempixel.com/200/200/?55439', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(66, 'Ericka Schmitt', '1986-09-23 11:43:59', '2011-09-02 12:40:33', 6, 'Saepe sed ad consequatur voluptas facere non commodi. Recusandae voluptas quis nam accusamus iusto.', 'http://lorempixel.com/200/200/?22716', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(67, 'Larissa Gutmann DVM', '1974-03-12 17:23:19', '1988-05-24 09:25:36', 62, 'Quia quasi fuga laborum libero enim sapiente quae culpa. Minus assumenda repellendus tempora expedita laboriosam. Aut earum nobis voluptas repellendus nihil. Voluptatem similique hic est vel ut nostrum. Quasi quia repudiandae facere voluptatem facilis.', 'http://lorempixel.com/200/200/?85306', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(68, 'Prof. Hank Spinka III', '2005-04-12 18:53:32', '1981-02-16 15:58:14', 82, NULL, 'http://lorempixel.com/200/200/?43209', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(69, 'Uriah Hagenes', '1974-03-27 14:47:36', NULL, 34, 'Non nostrum et est et aut sed natus. Ab expedita deserunt omnis quod. Quae rerum magni saepe in. Aliquam enim velit est dolor est distinctio. Doloribus ipsam non laborum perferendis.', 'http://lorempixel.com/200/200/?89410', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(70, 'Arch Hane DDS', '1992-02-02 06:10:16', '2002-07-20 00:22:23', 47, 'Exercitationem voluptatibus dolores sit et aut quaerat et rem. A esse quidem cum accusamus itaque. Nisi rem aut amet ipsam nemo consectetur.', 'http://lorempixel.com/200/200/?95750', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(71, 'Mrs. Myra Hoeger Jr.', '2003-12-26 16:57:25', '1975-09-21 17:08:00', 13, 'Velit eum sed tempora consectetur mollitia nihil. Quae maxime nemo rerum harum itaque laborum enim. Quod perspiciatis itaque rerum aut voluptatem dignissimos et. Magni praesentium necessitatibus debitis consequatur perferendis doloremque provident.', 'http://lorempixel.com/200/200/?90760', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(72, 'Myah Hyatt', '2001-10-16 05:53:21', '2011-11-03 17:54:06', 96, 'Sit id error error maiores. Aut mollitia et sunt iste fuga quis odit. Vel repellat neque natus est.', 'http://lorempixel.com/200/200/?33475', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(73, 'Agustina Feest MD', NULL, '1976-06-21 06:53:19', NULL, 'Doloremque iusto sed inventore animi voluptate sunt soluta rerum. Perferendis amet eligendi illo consequatur voluptatem. Voluptatem facere quis fuga asperiores quidem eveniet provident.', 'http://lorempixel.com/200/200/?37868', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(74, 'Viviane Fisher I', '1977-11-14 11:22:50', '1975-05-06 15:15:02', 12, 'Veniam cumque modi itaque. Praesentium voluptatem soluta aut est maiores qui ad. Quas aspernatur amet suscipit voluptatibus rerum. Quia est aut porro odit odio blanditiis.', 'http://lorempixel.com/200/200/?13012', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(75, 'Jeffrey Deckow', '2015-09-28 11:25:57', '2014-02-05 00:18:16', 95, 'Consequatur illo modi consectetur aperiam. Velit deleniti quae omnis sed. Ipsa porro veniam consequuntur et cupiditate sunt numquam. Iste ut consequatur odio et veniam.', 'http://lorempixel.com/200/200/?70504', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(76, 'Mallory Gislason', '2006-10-04 16:01:33', '2000-10-10 15:15:05', 1, 'Autem qui adipisci quia ea quaerat eligendi voluptate aspernatur. Voluptatum tempora ut doloremque in molestiae. Modi nulla aut nemo possimus. Reprehenderit deserunt illum animi rem quae.', 'http://lorempixel.com/200/200/?80475', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(77, 'Freda Dibbert', '1970-02-22 21:25:27', '1971-11-26 01:56:15', 77, 'Totam nobis in quos temporibus consequuntur labore aliquam. Ipsum doloremque reprehenderit sit qui assumenda. Non aperiam accusamus nesciunt atque velit consequuntur assumenda. Ullam quo ad adipisci quidem velit eum voluptatibus rerum.', 'http://lorempixel.com/200/200/?53470', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(78, 'Hallie Raynor', '2006-05-25 10:45:50', '1999-12-06 14:55:59', 32, 'Sunt unde est molestias. Debitis tempora qui sit dolorem nisi facilis. Assumenda culpa omnis maiores cupiditate. Omnis expedita et alias natus tempora.', NULL, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(79, 'Therese Ziemann', '1985-09-04 16:14:47', NULL, 61, 'Voluptatum quas alias et et omnis molestiae. Qui unde sint mollitia repellendus ipsam aut. Libero deserunt temporibus quam excepturi debitis odio. Laboriosam et a hic odio dolores rerum sed.', 'http://lorempixel.com/200/200/?43138', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(80, 'Prof. Nicholaus Gulgowski DDS', '2002-05-01 08:28:44', '1975-06-16 02:48:55', 98, 'Aperiam error et sint similique et error sed. Quia numquam omnis et autem. Fuga qui sit dolor alias commodi.', 'http://lorempixel.com/200/200/?96301', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(81, 'Alexandro Luettgen', '1993-11-12 15:05:23', '1973-02-27 00:53:25', 52, 'Aperiam quia aut consequatur voluptatem odit suscipit quasi itaque. Quaerat dolor non sit odio velit. Hic ullam eos doloremque est consequuntur temporibus delectus.', 'http://lorempixel.com/200/200/?44047', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(82, 'Gust Erdman', '1990-04-11 20:02:25', '1987-08-07 02:58:32', 64, 'Cumque adipisci totam explicabo tempore reprehenderit culpa natus. Voluptas illo quae et. Nihil at animi exercitationem. Natus est eum temporibus eos vel. Voluptas adipisci aut qui labore accusamus sit.', NULL, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(83, 'Louvenia Koepp III', NULL, '1984-10-19 05:53:39', 12, 'Excepturi non ut cumque nihil consequatur sapiente natus. Dolorum explicabo ut dolor rerum officiis laudantium quaerat. Expedita eligendi dolor architecto quasi qui. Est necessitatibus sed perferendis a.', 'http://lorempixel.com/200/200/?48436', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(84, 'Dallin Padberg DDS', NULL, '1985-03-25 20:22:21', NULL, 'Ab voluptatem accusantium adipisci est fugiat. Dolore et vitae sint optio ex sequi et. Saepe earum enim quasi et explicabo recusandae. Deleniti consequatur cupiditate quaerat voluptate.', 'http://lorempixel.com/200/200/?55214', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(85, 'Fannie Ledner DDS', '2008-04-19 02:22:41', '2004-11-20 22:17:30', 97, 'Sint eaque quos maxime quos quidem nihil neque. Dolores libero nobis et quis placeat. Sapiente quis ullam assumenda sed sunt nesciunt amet.', 'http://lorempixel.com/200/200/?57744', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(86, 'Prof. Laurel Zemlak MD', '1993-10-13 18:26:38', '2015-08-23 17:48:03', 33, 'Facere repellendus aut ad. Officia praesentium fugit et laborum odit. Vel minus maiores neque esse eius eveniet cupiditate. Accusantium qui placeat et numquam quo. Et illo sit dignissimos dolorem quasi temporibus.', 'http://lorempixel.com/200/200/?46880', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(87, 'Mr. Arjun Abbott', '2013-10-13 11:08:57', '2003-04-13 19:08:52', 45, 'Velit nisi tempora velit laborum ex amet quaerat. Perspiciatis omnis voluptas sunt aliquid. Quam fuga nostrum magni debitis cumque dolor quasi. Ad aut reiciendis nihil nihil molestias sapiente.', 'http://lorempixel.com/200/200/?24723', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(88, 'Armando Mayer', '2003-08-03 04:31:32', '1993-11-17 04:59:05', 62, NULL, 'http://lorempixel.com/200/200/?68763', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(89, 'Madelyn Nolan', '2005-11-06 07:50:42', '2005-12-28 15:45:09', 20, NULL, 'http://lorempixel.com/200/200/?44038', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(90, 'Bethany McGlynn', '2004-02-14 01:24:08', '1983-05-07 06:50:02', 5, 'Non porro reiciendis ut assumenda iusto. Optio eum voluptas expedita enim vel blanditiis dolorem. Reiciendis quis non molestiae nostrum labore.', NULL, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(91, 'Blaze Gutkowski', '2008-02-05 09:14:44', NULL, 19, NULL, 'http://lorempixel.com/200/200/?37299', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(92, 'Dr. Mia Baumbach Jr.', '2002-04-03 03:57:27', '2005-10-30 18:31:10', 5, 'In itaque eaque et qui sequi ducimus. Ut eos totam temporibus porro ut consectetur qui. Magnam impedit consequatur laudantium et mollitia.', NULL, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(93, 'Cale Dooley IV', '2004-07-12 12:22:56', '1980-01-14 22:46:00', 73, NULL, 'http://lorempixel.com/200/200/?66324', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(94, 'Hertha Renner', '1990-10-17 08:33:52', '2010-07-04 15:08:44', 56, NULL, 'http://lorempixel.com/200/200/?62647', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(95, 'Prof. Shemar Stiedemann MD', '1987-10-17 17:15:47', '2000-01-19 05:48:21', 86, 'Inventore ut eveniet dicta voluptas ut necessitatibus quia. Et minus quia qui et et iure. Ad voluptas autem voluptatem veniam repellendus.', 'http://lorempixel.com/200/200/?88376', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(96, 'Arlo Price', NULL, '2000-01-06 22:06:14', 60, 'Qui vel beatae quis non. Ullam soluta odio voluptas libero. Voluptas sit qui omnis esse.', 'http://lorempixel.com/200/200/?84160', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(97, 'Vivien Hyatt', '1999-08-25 21:39:18', '1972-03-06 06:59:44', 28, 'Unde consequuntur est in iure repellat voluptatem vitae non. Nam omnis explicabo cum. Aut dolorem natus aut. Quia dolorem beatae consequatur assumenda.', 'http://lorempixel.com/200/200/?14586', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(98, 'Prof. Brisa Reichel', '1985-10-29 10:46:33', '2011-12-16 12:42:57', 52, 'Ratione consequatur suscipit minima perferendis dolorum. Culpa qui sed iste excepturi rem. Dolor at et omnis quos saepe modi.', 'http://lorempixel.com/200/200/?77549', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(99, 'Steve Walker', '1995-07-04 18:14:29', '2004-07-07 20:04:05', 33, 'Et consequatur ut incidunt voluptatibus sint perspiciatis maxime. Ut commodi praesentium aliquam omnis modi nisi. Et animi aut omnis itaque tenetur sit dicta pariatur. Rerum ut reprehenderit molestiae occaecati corrupti error.', 'http://lorempixel.com/200/200/?11682', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(100, 'Dr. Alessandro Flatley DVM', '2004-07-23 06:13:52', '1976-04-09 01:57:11', 87, 'Repellat soluta ut veniam et adipisci non modi. Quia consequatur itaque et debitis ipsum. Facilis doloremque ratione ipsa sit quidem. Qui ut optio perspiciatis et atque ea quibusdam et.', 'http://lorempixel.com/200/200/?94568', '2015-12-04 09:19:58', '2015-12-04 09:19:58');

-- --------------------------------------------------------

--
-- Structure de la table `author_book`
--

CREATE TABLE `author_book` (
  `author_id` int(10) UNSIGNED NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `author_book`
--

INSERT INTO `author_book` (`author_id`, `book_id`) VALUES
(1, 6),
(1, 12),
(1, 80),
(1, 83),
(2, 71),
(3, 18),
(3, 91),
(4, 6),
(5, 37),
(5, 65),
(6, 35),
(7, 25),
(8, 56),
(8, 79),
(8, 90),
(9, 31),
(10, 71),
(11, 42),
(12, 59),
(12, 68),
(14, 77),
(15, 40),
(16, 38),
(16, 50),
(16, 61),
(17, 32),
(17, 85),
(18, 53),
(19, 61),
(20, 3),
(20, 10),
(20, 41),
(21, 26),
(22, 19),
(22, 73),
(23, 27),
(23, 31),
(23, 76),
(23, 91),
(24, 92),
(26, 5),
(26, 9),
(26, 29),
(27, 45),
(29, 42),
(29, 87),
(30, 4),
(31, 11),
(31, 60),
(32, 41),
(32, 67),
(33, 63),
(34, 21),
(34, 72),
(34, 78),
(34, 81),
(34, 93),
(36, 62),
(37, 8),
(37, 37),
(37, 96),
(38, 66),
(40, 98),
(41, 2),
(41, 53),
(42, 24),
(42, 36),
(43, 100),
(44, 33),
(44, 49),
(44, 95),
(45, 28),
(45, 45),
(46, 23),
(46, 97),
(47, 43),
(47, 48),
(47, 99),
(50, 84),
(50, 94),
(50, 96),
(50, 100),
(51, 22),
(53, 95),
(54, 57),
(55, 5),
(55, 46),
(56, 62),
(56, 69),
(56, 82),
(57, 30),
(57, 55),
(59, 1),
(60, 11),
(60, 17),
(60, 60),
(61, 13),
(61, 25),
(61, 36),
(64, 48),
(66, 16),
(67, 64),
(68, 54),
(70, 7),
(72, 12),
(73, 39),
(74, 50),
(74, 70),
(77, 2),
(78, 20),
(78, 21),
(78, 54),
(78, 59),
(79, 77),
(80, 16),
(80, 46),
(81, 83),
(82, 20),
(82, 73),
(83, 51),
(84, 13),
(84, 44),
(84, 87),
(84, 88),
(84, 92),
(85, 10),
(85, 89),
(86, 30),
(86, 52),
(86, 74),
(88, 4),
(89, 64),
(91, 33),
(91, 68),
(91, 75),
(92, 84),
(94, 22),
(95, 40),
(95, 52),
(95, 75),
(95, 82),
(95, 86),
(95, 89),
(96, 14),
(96, 47),
(97, 15),
(97, 58),
(98, 34),
(98, 65),
(100, 79);

-- --------------------------------------------------------

--
-- Structure de la table `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `isbn` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nationality_id` int(10) UNSIGNED DEFAULT NULL,
  `editor_id` int(10) UNSIGNED DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `summary` text COLLATE utf8_unicode_ci,
  `cover` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pages_num` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `books`
--

INSERT INTO `books` (`id`, `isbn`, `title`, `nationality_id`, `editor_id`, `published_at`, `summary`, `cover`, `pages_num`, `created_at`, `updated_at`) VALUES
(1, '9787588236298', 'Illo doloremque fugit repellat ipsa explicabo totam.', 71, 24, '1991-03-03 14:51:55', 'Quam doloremque quos vel. Porro libero ab aut numquam. Omnis consequatur odio deserunt alias amet. Eaque vitae voluptatum omnis itaque odit qui.', 'http://lorempixel.com/200/200/?13786', NULL, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(2, '9784497743114', 'Blanditiis eius mollitia sit cupiditate pariatur animi.', 97, 25, '2009-06-13 10:11:20', NULL, 'http://lorempixel.com/200/200/?89221', 222, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(3, '9780664424763', 'Dolor sapiente aliquid unde quia.', 51, 11, '1983-05-24 10:08:55', 'Totam magnam et soluta deserunt qui numquam. Pariatur magnam beatae non nostrum dolor. Earum dolorum cum quo accusamus possimus facilis eaque. Sed quisquam autem voluptatem unde quo error.', 'http://lorempixel.com/200/200/?14361', 1995, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(4, '9791152565806', 'Praesentium repudiandae ducimus molestiae veniam rerum incidunt.', 52, NULL, '1990-01-13 19:26:05', NULL, 'http://lorempixel.com/200/200/?17064', 228, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(5, '9780469650206', 'Animi illo molestiae ex deserunt sed.', 64, 10, '2000-12-14 06:41:12', 'Officia neque expedita culpa quos beatae asperiores voluptates. Quos veniam dolorem ut. Deleniti non quibusdam qui voluptatem. Harum eos vitae est sed.', 'http://lorempixel.com/200/200/?82635', 302, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(6, '9793561386287', 'In quis voluptate rerum rerum nisi labore.', NULL, 16, '1988-07-27 08:16:58', 'Rem exercitationem tempore suscipit molestiae voluptatem iste. Ullam sed ut vel voluptatibus unde dolorum consequuntur. Itaque reiciendis enim placeat et totam perferendis.', 'http://lorempixel.com/200/200/?61962', 1370, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(7, '9791470879135', 'Fuga molestiae laudantium molestias dolorem dolor fugit velit.', 83, 2, '1994-03-28 21:07:28', 'Quia assumenda quis beatae cupiditate veniam non dolor. Nulla dicta non molestias ut provident totam libero. Nemo magnam est placeat enim assumenda blanditiis.', 'http://lorempixel.com/200/200/?19130', 1522, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(8, '9790572262760', 'Quos asperiores velit consequatur sed qui repellat facere.', 59, 8, '2012-01-26 02:43:46', 'Accusantium deserunt voluptatem id nihil eum. Quasi quibusdam et assumenda nihil quasi est totam. Tempore aut neque deserunt maxime nobis deleniti rerum.', 'http://lorempixel.com/200/200/?94546', 1786, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(9, '9785904850258', 'Cupiditate debitis rerum et eius omnis ipsam vitae aut.', NULL, 21, '1977-09-09 14:20:40', 'Autem ullam aspernatur quia quod quasi a quia. Est esse nemo non in. Nostrum veniam quibusdam doloribus.\nNam harum minima dolor qui ut et repellat. Aut voluptas alias minima ipsum.', 'http://lorempixel.com/200/200/?32162', 788, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(10, '9780593330593', 'Sit et et rerum et blanditiis consequatur quia.', 38, 26, NULL, 'Eligendi libero voluptate voluptate sunt magni reiciendis dolores. Et et dolor ipsum quia quos nostrum. Aliquam sit non quo.', 'http://lorempixel.com/200/200/?79844', 1661, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(11, '9783222877650', 'Officia eos est ut modi ducimus.', 31, NULL, '1974-04-07 04:15:28', 'Voluptatem totam possimus et non molestias nihil et. Numquam quis est architecto vel mollitia et. Assumenda neque architecto omnis sed quidem officiis velit.', NULL, 1503, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(12, '9782326510753', 'Qui numquam dicta veritatis autem.', 22, 23, '1986-12-02 04:54:48', 'Qui quos maxime mollitia. Mollitia qui sint tempora inventore voluptatum natus qui ea. Maxime nobis ullam porro qui. Ab et voluptatem minus vel voluptas est est.', 'http://lorempixel.com/200/200/?82225', 149, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(13, '9790807763437', 'Enim commodi pariatur excepturi modi non ex in beatae.', 36, 6, '1976-02-15 09:40:20', 'Odit numquam aut a quibusdam aut enim. Quaerat porro odit et earum dolore qui. Delectus incidunt quod et ratione nobis quae nostrum rerum.', 'http://lorempixel.com/200/200/?79132', 507, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(14, '9794779333162', 'Assumenda quo omnis et ea voluptates id.', 98, 13, '1994-03-07 09:28:04', 'Et aut et voluptatem facilis odio atque ipsam. Odio itaque aut error molestiae qui. Ut provident eos mollitia et.', 'http://lorempixel.com/200/200/?58331', 1095, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(15, '9795736645236', 'Tempora eveniet est aperiam maxime impedit id.', 57, 21, '1994-05-21 12:05:38', 'Nobis officia quas voluptas ullam et quia perspiciatis laboriosam. Unde voluptatem eos quisquam quis aut. Explicabo qui sit aliquam laborum rem eum accusantium. Earum possimus fugiat nam minus rerum.', 'http://lorempixel.com/200/200/?51444', 723, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(16, '9786243551523', 'Saepe assumenda quasi atque.', 34, 29, '1976-08-21 01:03:11', 'Veritatis voluptas et non debitis nesciunt. Id sint accusantium non voluptas. Quia inventore alias dolores ut. Voluptatem et nobis ullam et doloremque rerum.', NULL, 944, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(17, '9790339334914', 'Est quod eos sed autem.', 42, 24, '2000-09-02 05:37:40', 'Amet est sed distinctio odio fugiat nostrum voluptas. Eos nihil eum odit. Omnis dolor eveniet dolore sunt. Fugit architecto iste provident ea doloribus sunt architecto.', 'http://lorempixel.com/200/200/?14127', 466, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(18, '9785544938385', 'Sunt odit placeat numquam.', 63, 26, '2008-12-01 00:58:41', 'Cupiditate nobis omnis expedita quibusdam natus animi accusantium. Ut corrupti est qui maiores non omnis ex. Assumenda quo aut excepturi nihil aliquid aut aspernatur esse.', 'http://lorempixel.com/200/200/?30321', 1440, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(19, '9786812305229', 'Sed maxime debitis laudantium et.', 34, 27, '1991-01-18 17:30:53', 'Qui recusandae est cumque aut et. Beatae ut optio vel quod consequatur consequatur praesentium magni. Rerum suscipit nesciunt facere deleniti quas.', 'http://lorempixel.com/200/200/?22980', 557, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(20, '9780298357925', 'Ducimus repellendus accusamus distinctio aliquid.', 27, 1, '1979-10-04 11:41:42', 'Et aliquam perferendis aspernatur ut debitis. Vero laborum placeat aperiam. Qui architecto nihil qui dolorem nostrum qui. Inventore corporis atque ea doloremque officiis vel ut.', 'http://lorempixel.com/200/200/?49197', 1028, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(21, '9799437464998', 'Aut tempora sit sit beatae a corrupti odio.', 54, 17, '1985-03-06 11:32:51', 'Reprehenderit optio nihil assumenda similique voluptas pariatur minus. Fugit sequi minus et qui. Omnis quo nulla pariatur voluptatem maxime. Iusto qui sed earum dolore est quos suscipit.', NULL, NULL, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(22, '9796823256427', 'Quis consequatur et velit nihil blanditiis facere asperiores.', 10, 13, '1988-03-12 06:36:56', 'Cumque quisquam vel ipsam vitae vel tenetur nihil. Unde voluptatibus sed sed dolor sed voluptatem ex sequi. Maxime quia magni consequatur.', 'http://lorempixel.com/200/200/?96749', 833, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(23, '9794718661219', 'Reiciendis officia est assumenda est ut beatae nulla praesentium.', 97, 5, '1987-11-06 09:15:21', 'Non ut illum deserunt eos. Exercitationem enim iusto dolorem hic sapiente. Nulla voluptatem aliquid sed dolorem repellendus. Voluptatem ipsa laudantium quis molestias sequi.', 'http://lorempixel.com/200/200/?14982', 914, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(24, '9790682082937', 'Ad molestias repudiandae perferendis architecto adipisci asperiores suscipit.', 30, 28, '1976-02-14 20:17:34', NULL, 'http://lorempixel.com/200/200/?88497', 939, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(25, '9780752705460', 'Magnam sit corporis omnis.', 8, 8, '1990-06-08 14:23:26', 'Rerum praesentium nesciunt qui. Commodi hic vel commodi autem mollitia aut consequatur nemo. Vero fugit id libero modi adipisci.', 'http://lorempixel.com/200/200/?94443', 466, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(26, '9784831768803', 'Id et ipsa magni delectus facere.', 33, 17, '1995-06-23 22:59:02', 'Officiis quis soluta sed neque quia assumenda. Quis eveniet odit laborum eligendi. Eaque nobis reiciendis consequuntur enim architecto.', 'http://lorempixel.com/200/200/?99136', 1698, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(27, '9787967657003', 'Doloremque nihil modi et nostrum excepturi.', 90, 18, '1987-07-23 03:39:42', 'Illo est alias consequuntur facilis aperiam. Ut voluptatibus omnis in ratione. Pariatur ea amet aliquam et itaque repellat. Quo in aspernatur occaecati eos unde.', 'http://lorempixel.com/200/200/?71131', 1101, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(28, '9792905554696', 'Est voluptatum veritatis eligendi enim.', 2, 2, '1987-11-27 10:23:30', 'Necessitatibus doloribus et voluptatum similique praesentium. Voluptates architecto voluptatem ipsam voluptatem. Vitae sed ex ipsam in quaerat omnis.', 'http://lorempixel.com/200/200/?32830', 1058, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(29, '9782973802423', 'Qui qui eos et a explicabo libero.', 97, 11, '1983-07-28 09:01:10', 'Assumenda officiis animi voluptatem occaecati nemo quis nihil. Nesciunt sunt animi sed exercitationem voluptatum sit modi.', 'http://lorempixel.com/200/200/?27526', NULL, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(30, '9796853265987', 'Est tenetur et enim quia saepe.', 9, 19, '2014-05-08 20:21:10', 'Nulla fuga praesentium saepe tenetur. Iure quas officiis et. Molestias laborum dolore ullam dolore eum eaque dolor. Non alias aliquid possimus dolorem quos.', 'http://lorempixel.com/200/200/?85827', 1580, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(31, '9786133593343', 'Et labore temporibus reprehenderit earum occaecati repudiandae laboriosam.', NULL, 6, NULL, 'Incidunt distinctio modi deserunt omnis est. Nesciunt dolor expedita doloribus suscipit. Accusamus praesentium neque hic et numquam. Ex et sint numquam sed nulla dicta asperiores.', 'http://lorempixel.com/200/200/?16303', NULL, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(32, '9789765741366', 'Nobis voluptate est delectus consectetur earum dolor architecto.', 38, 20, '1997-12-02 22:47:11', 'Esse ullam aspernatur repellat minima est. Ad in consequuntur sit. Quia non quibusdam commodi a aut dolores. Voluptatibus similique sed blanditiis sunt sunt aut.', 'http://lorempixel.com/200/200/?31829', 1934, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(33, '9791095969105', 'Blanditiis sit amet officiis temporibus adipisci beatae sint.', 36, 24, '2015-07-12 13:18:33', 'Sed iure dignissimos blanditiis et aut quo voluptatibus impedit. Ab porro magni optio commodi. Eos dolor voluptatem qui in suscipit molestiae ab.', 'http://lorempixel.com/200/200/?81662', 996, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(34, '9791078810684', 'Pariatur pariatur rerum aut nulla.', 14, 1, '1999-04-25 10:39:45', 'Omnis tempora velit accusantium soluta veniam. Aliquam veritatis aliquid quis sint omnis sed commodi. Dolorem ducimus veniam harum quam dignissimos dicta.', 'http://lorempixel.com/200/200/?79390', 53, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(35, '9791070979969', 'Aut similique dolorem architecto assumenda inventore adipisci vel.', 5, 12, '2004-07-06 11:46:35', 'Laboriosam eius culpa sed officia. Voluptatum id numquam eum quia ut consequuntur non sed.', 'http://lorempixel.com/200/200/?46307', 1316, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(36, '9798867622961', 'Et error quibusdam perferendis impedit commodi.', 79, 30, '1983-03-28 16:39:32', NULL, 'http://lorempixel.com/200/200/?85432', 1208, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(37, '9788499752464', 'Repudiandae natus est quaerat reiciendis facilis fuga dolores.', 84, 26, '1991-10-21 21:46:13', 'Distinctio laborum qui autem rerum commodi eligendi. Alias reiciendis enim sequi velit aspernatur. Quia neque rerum natus quis eum consectetur.', 'http://lorempixel.com/200/200/?86720', 376, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(38, '9797418200856', 'Veritatis eos accusamus voluptatem dignissimos unde quia et.', 66, 24, '2013-03-16 12:38:54', 'Omnis quibusdam est sapiente. Ipsam accusantium commodi autem quisquam eaque rerum. Ut rerum itaque qui voluptatum adipisci.', 'http://lorempixel.com/200/200/?84324', 1002, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(39, '9786700022122', 'Eius corporis quod laudantium minima illum.', 23, 19, '1986-12-26 13:26:46', 'Tempora vero officia libero architecto. Voluptatem omnis voluptatibus cumque sed molestias quos. Nihil doloribus vel animi quidem.\nCum aut vel sit. Aliquam veniam corporis amet dolore.', 'http://lorempixel.com/200/200/?57451', 749, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(40, '9791354242284', 'Et autem rem numquam dolorum eligendi in ad.', 26, 17, '1997-12-22 19:05:45', 'Quasi soluta delectus consequatur. Ut maiores error velit dolores. Sint quae nostrum non ullam maiores.', 'http://lorempixel.com/200/200/?23174', 1278, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(41, '9794721153183', 'Enim occaecati quidem voluptatem distinctio velit.', 20, 11, '1985-07-24 23:47:34', 'Sit est sed dolor et. In autem dolorem saepe aut iure atque. Et praesentium debitis dolores occaecati a minus reiciendis assumenda.', 'http://lorempixel.com/200/200/?20112', 1138, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(42, '9799236840122', 'Velit sequi quae natus at id.', 55, 30, '2011-04-10 08:44:49', 'Nemo nesciunt error nulla est. Laborum velit aut eligendi ad. Blanditiis hic et ipsa cum inventore numquam non. Corrupti ex quasi vitae vitae.', 'http://lorempixel.com/200/200/?24507', 1432, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(43, '9796338101908', 'Aut incidunt similique ut quo accusamus maxime sunt.', 29, NULL, '1991-11-01 04:50:08', 'Eaque quia quia et omnis dolorem vel. Non cum modi eum adipisci et fugiat pariatur. Illum atque laboriosam consequuntur non aspernatur amet cum.', 'http://lorempixel.com/200/200/?13017', NULL, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(44, '9780585694764', 'Voluptatibus debitis explicabo quae aut.', 93, 25, NULL, 'Qui inventore unde quia dolore quas. Qui vero modi tenetur adipisci impedit. Ut non delectus quis unde libero repudiandae corporis.', 'http://lorempixel.com/200/200/?22571', 162, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(45, '9790533054434', 'Dicta dignissimos dolorem labore mollitia temporibus ut.', 49, 23, '2004-08-19 06:45:58', 'Est aut aut fugiat totam quaerat. Reprehenderit aut a molestias placeat exercitationem qui quasi. Non officia ducimus ut iusto quasi quia voluptate.', 'http://lorempixel.com/200/200/?84537', 1536, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(46, '9796934036710', 'Ut est esse ut natus minus assumenda.', 90, 25, '2010-02-28 01:59:08', 'Ea ipsam possimus ipsa deserunt adipisci fuga explicabo. Temporibus a voluptas exercitationem porro. In quibusdam sint alias quam nihil. Dolorem qui eum laboriosam aliquam molestiae aut eos.', 'http://lorempixel.com/200/200/?97027', 1924, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(47, '9793861495122', 'Libero ut facere esse est.', 62, 12, '2003-07-28 03:45:12', 'Ad nobis aut maiores totam doloribus dolorem praesentium. Suscipit sunt sequi minus numquam doloribus ut omnis. Odit eveniet officiis dolore quia. Et quos molestiae eaque rerum.', NULL, 1100, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(48, '9799631852706', 'Sint facilis aut doloribus incidunt est sint aut.', NULL, 5, '1993-01-29 02:21:38', 'Optio sed voluptas sed debitis dolorem et. Accusantium quisquam repudiandae non sed cupiditate ab. Qui est praesentium nobis neque sed ratione.', 'http://lorempixel.com/200/200/?12158', 1112, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(49, '9797498915930', 'Aliquid nesciunt rerum delectus dolore exercitationem et fugiat.', 25, 20, '2012-11-16 21:38:58', 'Omnis cumque voluptatem vitae sunt et nulla. Ut placeat quo nemo perferendis quibusdam. Sed quia ut necessitatibus debitis optio consequatur. Expedita eius provident quos aut sequi.', 'http://lorempixel.com/200/200/?30583', 1081, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(50, '9786131769498', 'Assumenda est neque animi enim.', 84, 15, '1979-08-16 14:23:27', 'Nihil est ut ut ut. Harum distinctio dolores sequi blanditiis ut ipsa et. Quidem cum nobis aut aperiam voluptates sit.', 'http://lorempixel.com/200/200/?51227', 1065, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(51, '9780521568395', 'Consectetur et rerum accusantium non.', 36, 29, '1984-05-24 00:00:45', 'Nobis dolor aperiam blanditiis consequatur qui. Sint recusandae quibusdam rem repellendus. Molestiae sequi nemo dolores doloremque.', 'http://lorempixel.com/200/200/?21346', 1832, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(52, '9784096128206', 'Ut qui odio architecto ipsum vel.', 66, 11, '2012-09-24 03:54:53', 'Aliquam aut officiis dolor qui et totam quo veniam. Veniam est asperiores quisquam iure dignissimos soluta. Voluptatem consectetur numquam consequatur non iste asperiores. Nobis est minus vel.', 'http://lorempixel.com/200/200/?35504', 1243, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(53, '9789112049558', 'Est reiciendis ad hic reiciendis et explicabo sit vel.', 32, NULL, '2013-04-20 23:49:37', 'Fuga ea possimus qui et facere. Enim aut sed rem necessitatibus est aut voluptatibus. Et omnis ex ab velit quia. Expedita sunt tempora quibusdam culpa est.', 'http://lorempixel.com/200/200/?75012', 1667, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(54, '9799118140555', 'Eos quo libero qui nesciunt qui ut dolores.', 32, NULL, '2010-09-13 21:07:48', 'Aspernatur doloribus facere sint necessitatibus eum. Facilis rem tenetur aut unde ut. Aut nobis occaecati quia quo et esse ut.', 'http://lorempixel.com/200/200/?44715', 615, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(55, '9792480862698', 'Consequatur ut est et.', 86, 2, '1976-07-17 08:54:03', 'Eligendi dignissimos odit omnis molestiae sit ut. Sed nostrum quasi esse doloremque dolorum. Ducimus voluptate velit nostrum nulla id ut sed.', 'http://lorempixel.com/200/200/?47454', 1567, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(56, '9792471524529', 'Id ut inventore qui.', 78, 9, '2007-09-20 23:54:55', 'Amet autem dolorum est libero. Fuga autem consectetur quisquam porro. Dolorem id in eos corporis minus eum.', 'http://lorempixel.com/200/200/?50603', 680, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(57, '9788217391500', 'Nemo hic voluptas sed veritatis praesentium dolores minima.', 99, 5, '1989-04-27 11:57:31', 'Velit optio cum architecto eveniet occaecati. Officia aut eos soluta omnis ut at. Amet et consequuntur alias provident necessitatibus.', 'http://lorempixel.com/200/200/?55720', 415, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(58, '9797238671508', 'Ut quasi voluptatem rem et.', 78, 5, '2004-02-06 15:34:39', 'Libero a ratione qui itaque. Laudantium corporis omnis molestias possimus est voluptatem occaecati. Quia voluptas et dolores ipsam aut iste. Odio consequuntur fugit hic dolorem fugiat fuga natus.', 'http://lorempixel.com/200/200/?94755', 234, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(59, '9785083709613', 'Velit et id natus sed aut distinctio.', 5, 9, '2013-11-25 20:19:32', 'Qui ut consequuntur vel deserunt qui earum. Molestiae vero ullam illo aut quia et. Iusto nostrum laborum reiciendis et quia.', 'http://lorempixel.com/200/200/?92419', 1003, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(60, '9799353001710', 'Velit dignissimos culpa ullam repellendus.', 87, 5, '1987-09-24 19:51:53', 'Explicabo tenetur et nostrum dicta nesciunt. Non maiores consequatur dolores doloribus at quos dolorum. Natus sed deleniti non et ea.', NULL, 1229, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(61, '9790827341950', 'Quod provident qui et reiciendis temporibus dolor.', 61, NULL, '2003-07-03 00:46:09', 'Est quia ipsam rerum. Quaerat quaerat repellendus voluptatem ut tempora. Sed ut vitae laborum ipsa enim sit quas.', 'http://lorempixel.com/200/200/?11649', 307, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(62, '9780854289943', 'Recusandae ut iste eligendi qui magni aut recusandae veritatis.', 70, 19, '1983-10-06 12:09:04', 'Facere qui dolor facere veniam. Doloribus voluptas sequi consequuntur possimus. Autem dolorem et id sed sunt eaque quod.', 'http://lorempixel.com/200/200/?67995', 1508, '2015-12-04 09:19:59', '2015-12-04 09:19:59'),
(63, '9791307474915', 'Et iure et fugit enim quasi eius voluptatem.', 33, 28, '2014-07-21 17:05:36', 'Libero culpa ab quia qui perferendis at et. Natus unde sed est eum. Voluptatem tempore est qui voluptate libero dolores ea.', 'http://lorempixel.com/200/200/?47341', 1674, '2015-12-04 09:19:59', '2015-12-04 09:19:59'),
(64, '9795901526148', 'Porro iusto necessitatibus occaecati autem impedit dolores voluptatem.', 99, 18, '1975-04-19 23:16:25', 'Ipsam odit beatae quo qui incidunt. Voluptate iure velit laboriosam qui. Corrupti sit sit ad.', 'http://lorempixel.com/200/200/?41538', 1993, '2015-12-04 09:19:59', '2015-12-04 09:19:59'),
(65, '9788751085347', 'Praesentium iure dolorem sint aut.', NULL, 26, '1978-08-26 18:28:56', 'Repellat temporibus dolorem praesentium deserunt culpa nobis quas. Doloremque itaque sunt dolorum impedit hic occaecati. Explicabo ab voluptatem architecto voluptatibus optio laudantium.', 'http://lorempixel.com/200/200/?18549', 1686, '2015-12-04 09:19:59', '2015-12-04 09:19:59'),
(66, '9797011654100', 'Voluptatum itaque et magnam laborum voluptates est aut.', 33, 18, '1988-05-30 05:47:54', 'Est error voluptates perspiciatis ut. Excepturi voluptatem accusantium sequi. Debitis non omnis est at vel.', 'http://lorempixel.com/200/200/?89778', NULL, '2015-12-04 09:19:59', '2015-12-04 09:19:59'),
(67, '9783465747154', 'Quas quis sit aliquid veritatis.', 78, 5, '2010-07-18 14:22:05', 'Voluptates sit ipsam possimus recusandae ab eius. Sed tenetur rem velit magni iusto.', 'http://lorempixel.com/200/200/?49451', 1374, '2015-12-04 09:19:59', '2015-12-04 09:19:59'),
(68, '9785260659267', 'Vero id vel quod molestiae quisquam consequatur animi.', 44, 24, '2008-08-12 00:11:16', 'Ut blanditiis magnam voluptatem aut omnis possimus non. Iure qui autem voluptatum recusandae aut et. Ut hic nam qui laborum. Et odio nobis occaecati laudantium ullam.', 'http://lorempixel.com/200/200/?32502', 962, '2015-12-04 09:19:59', '2015-12-04 09:19:59'),
(69, '9785542446011', 'Ex qui temporibus vel ab aspernatur tenetur.', 11, 16, '1988-05-17 12:14:03', 'Id quos dolore cupiditate. Culpa nihil veritatis non ut voluptatem ducimus. Facere eius perferendis maxime autem consequatur sunt maxime. Sint occaecati ea odio sunt magni voluptatem quaerat.', 'http://lorempixel.com/200/200/?60730', 1312, '2015-12-04 09:19:59', '2015-12-04 09:19:59'),
(70, '9792885094250', 'Unde qui ut sed porro repellat fuga.', 83, NULL, '1988-01-15 17:26:30', 'Adipisci libero fuga facilis nostrum dolor in tempore fugit. Nostrum et illum necessitatibus qui nobis.', 'http://lorempixel.com/200/200/?11118', 663, '2015-12-04 09:19:59', '2015-12-04 09:19:59'),
(71, '9782863729724', 'Et cupiditate ab soluta doloremque.', 61, 24, '2000-10-26 16:12:59', 'Fugiat consequuntur possimus omnis temporibus dolor corrupti. Magnam ipsa modi non dolores corrupti. Sed omnis aut deleniti doloribus et eum. Est quo dolorem fugit minima cum unde.', NULL, 1994, '2015-12-04 09:19:59', '2015-12-04 09:19:59'),
(72, '9782166458543', 'Aliquid quia eveniet necessitatibus quia enim.', 35, 23, '1995-09-29 22:12:40', 'Voluptatem consectetur ipsa illum quisquam debitis nesciunt molestiae nam. Est dolores illum sequi. Consequatur non corporis ipsum vel ullam. Est aliquid ipsa rerum error beatae esse eius.', 'http://lorempixel.com/200/200/?67788', 1831, '2015-12-04 09:19:59', '2015-12-04 09:19:59'),
(73, '9789235464429', 'Ad ex aliquam nisi voluptas.', 66, 26, '1998-12-15 16:50:56', 'Sunt facere beatae dolores ad commodi ut ut. Molestias et et nihil blanditiis quia quam. Numquam cum quia error sunt. Repellendus pariatur quasi tenetur sed et laudantium ex.', 'http://lorempixel.com/200/200/?52195', 324, '2015-12-04 09:19:59', '2015-12-04 09:19:59'),
(74, '9796487962801', 'Rem magni laborum voluptatem similique.', 73, 26, '1972-01-06 17:07:07', 'Omnis deleniti perspiciatis quos est similique. Quibusdam soluta veniam amet aspernatur quas. Rerum porro numquam sequi et tenetur voluptas.', 'http://lorempixel.com/200/200/?68764', 1900, '2015-12-04 09:19:59', '2015-12-04 09:19:59'),
(75, '9781525617676', 'Et molestiae magnam impedit illum illo quisquam optio.', NULL, 18, '1978-03-20 02:47:40', 'Tempore fuga quia est aut sit voluptatem. Numquam omnis assumenda et amet non officia. Sit alias voluptas quia harum soluta consequatur. Et et dignissimos ipsum aut quo qui esse eum.', 'http://lorempixel.com/200/200/?62247', 110, '2015-12-04 09:19:59', '2015-12-04 09:19:59'),
(76, '9781556811777', 'Ipsum id a ex voluptatem.', 55, 14, '1981-02-23 09:07:22', 'Minus quia veniam sed. Recusandae consequatur tempore enim voluptatibus qui doloremque. Sint minima aspernatur blanditiis molestiae alias. Vitae impedit enim quisquam saepe.', 'http://lorempixel.com/200/200/?32516', NULL, '2015-12-04 09:19:59', '2015-12-04 09:19:59'),
(77, '9786718094890', 'Dolore saepe aperiam eligendi dicta.', 76, 25, '1973-01-31 20:57:28', 'Est qui voluptas quo quia. Voluptate pariatur doloremque repellendus aliquid aut aut. Sint odit eligendi fugiat et voluptas nostrum. Ipsam possimus alias nisi.', 'http://lorempixel.com/200/200/?77236', 1320, '2015-12-04 09:19:59', '2015-12-04 09:19:59'),
(78, '9799635056254', 'Debitis ut similique aut.', 24, 19, '2011-05-04 21:39:55', 'Odio sit sequi eum eaque exercitationem. In id ea provident rerum accusamus blanditiis laudantium. Aut suscipit pariatur consequatur rerum perspiciatis quod. Hic laborum doloribus et sit.', 'http://lorempixel.com/200/200/?34097', 587, '2015-12-04 09:19:59', '2015-12-04 09:19:59'),
(79, '9786116852153', 'Fugiat quia veritatis rerum natus sequi.', 38, 8, '1974-07-18 09:24:16', 'Suscipit eum quia voluptates facere corporis in porro. Aut facilis et maiores tenetur. Qui aut ratione voluptate nulla voluptates quisquam. Qui cum hic facilis velit nemo.', NULL, 827, '2015-12-04 09:19:59', '2015-12-04 09:19:59'),
(80, '9795613073473', 'Fugiat consequatur voluptas reprehenderit nostrum ut.', 61, 23, '1982-10-20 19:55:15', 'Impedit labore nihil laudantium voluptates laudantium id consequuntur dolor. Ut non mollitia culpa sint repellendus debitis id.', 'http://lorempixel.com/200/200/?48120', 1644, '2015-12-04 09:19:59', '2015-12-04 09:19:59'),
(81, '9790914355464', 'Nulla voluptate libero non quia omnis.', 43, NULL, '1989-08-31 04:37:48', 'Vel qui doloremque error ut animi nemo delectus eligendi. Ut quasi commodi vitae. Voluptatem ex quaerat velit quaerat.', 'http://lorempixel.com/200/200/?67150', 1481, '2015-12-04 09:19:59', '2015-12-04 09:19:59'),
(82, '9787966826677', 'Aspernatur at dolor enim et sit.', 26, 30, '1989-03-30 21:11:56', 'Dolorem reiciendis molestiae exercitationem suscipit adipisci qui. Explicabo quis vero hic labore. Nesciunt sunt cupiditate ipsam et qui eos temporibus.', 'http://lorempixel.com/200/200/?82869', 941, '2015-12-04 09:19:59', '2015-12-04 09:19:59'),
(83, '9792198198478', 'Quis consequatur in ipsum nihil iste.', 5, 14, '1990-03-09 04:06:41', 'Quod vero ducimus voluptas illum consequatur. Debitis molestiae possimus quae amet voluptatibus et. Ut praesentium repellat non omnis molestiae modi in. Nostrum cum est dolores autem ut aut quia.', 'http://lorempixel.com/200/200/?60758', 365, '2015-12-04 09:19:59', '2015-12-04 09:19:59'),
(84, '9785158553417', 'Molestiae maiores cum qui qui.', 32, 19, '2009-09-06 05:39:53', 'Similique temporibus facilis ut in eaque consequatur. Quidem esse error labore vitae cupiditate nam. Sint rerum possimus eius qui vero et. Ea eum laudantium aliquid.', 'http://lorempixel.com/200/200/?52886', 949, '2015-12-04 09:19:59', '2015-12-04 09:19:59'),
(85, '9790768703244', 'Ipsam in ut sunt magni.', 20, 21, '2002-09-29 02:03:05', 'Nam et aut quibusdam sunt dolorum. Dolorum at illum voluptates exercitationem dolore necessitatibus. Non optio qui beatae sunt voluptatem. Ut iusto aut esse earum. Et vitae nisi voluptatem nemo.', 'http://lorempixel.com/200/200/?21584', 1291, '2015-12-04 09:19:59', '2015-12-04 09:19:59'),
(86, '9795961898599', 'Et facilis expedita pariatur eos et aperiam consequatur nesciunt.', 41, 3, '2009-10-28 12:22:40', 'Cum quam labore sed voluptate dolores itaque aut. Officiis et fugit voluptates nulla et doloribus sapiente.', NULL, 1016, '2015-12-04 09:19:59', '2015-12-04 09:19:59'),
(87, '9791208519098', 'Non et nemo et.', NULL, NULL, NULL, 'Recusandae ipsam aliquam quis vel. Possimus accusantium quaerat ipsam expedita. Qui omnis ex quis.', 'http://lorempixel.com/200/200/?31998', 1765, '2015-12-04 09:19:59', '2015-12-04 09:19:59'),
(88, '9790783390085', 'Harum et quia aut est inventore consequatur.', 73, 8, '1973-03-23 06:35:17', NULL, 'http://lorempixel.com/200/200/?48006', 1344, '2015-12-04 09:19:59', '2015-12-04 09:19:59'),
(89, '9790780777414', 'Et inventore sit qui.', 76, NULL, '1999-11-10 18:07:37', 'Et alias harum laudantium ratione eum. Esse corrupti corrupti rerum distinctio est alias in dolores. Ea est aliquam eum quis iste expedita. Reprehenderit exercitationem velit tempore at voluptatibus.', NULL, 729, '2015-12-04 09:19:59', '2015-12-04 09:19:59'),
(90, '9791152166034', 'Pariatur voluptatem qui laboriosam voluptatem.', 93, NULL, '1971-11-08 22:25:08', 'Temporibus saepe possimus a repellendus. Sit adipisci corporis fugiat quisquam.', 'http://lorempixel.com/200/200/?96895', 1604, '2015-12-04 09:19:59', '2015-12-04 09:19:59'),
(91, '9781716924378', 'Id molestiae quia beatae.', 17, NULL, '1979-08-24 14:02:32', NULL, 'http://lorempixel.com/200/200/?44126', 1097, '2015-12-04 09:19:59', '2015-12-04 09:19:59'),
(92, '9792373051802', 'Illum similique cupiditate accusantium esse atque sunt est blanditiis.', 64, 4, '1984-12-22 13:39:11', 'Enim odit sit inventore adipisci architecto nobis debitis. Eum veniam et deleniti enim earum. Laudantium ut et a quae ipsa illum.', 'http://lorempixel.com/200/200/?42496', 642, '2015-12-04 09:19:59', '2015-12-04 09:19:59'),
(93, '9784133076323', 'Vel in nihil nulla enim quam.', 13, 24, '2012-09-26 15:39:45', 'Nemo sint pariatur distinctio aut. Consequatur non rerum consectetur dolores porro est dolorem. Et rem quam velit. Et eveniet et aperiam iure perspiciatis adipisci aperiam debitis.', 'http://lorempixel.com/200/200/?39338', 274, '2015-12-04 09:19:59', '2015-12-04 09:19:59'),
(94, '9787713031002', 'Nihil explicabo recusandae aut est.', 55, 7, NULL, 'Est impedit qui quia nesciunt nemo. Optio hic voluptatum voluptatem consequatur. Quidem aut officiis nemo nemo quia dignissimos. Eos sequi dignissimos dolorem. Ipsa qui molestiae eos.', 'http://lorempixel.com/200/200/?76701', 1417, '2015-12-04 09:19:59', '2015-12-04 09:19:59'),
(95, '9798798913459', 'Consectetur dolore sed quidem qui qui itaque.', 6, NULL, '1979-08-14 09:46:24', 'Voluptatem odio ducimus ut quo quod rerum iure. Sapiente quasi provident ea. Vel excepturi est sunt libero mollitia sequi. Vel non et sit magnam iusto itaque.', 'http://lorempixel.com/200/200/?48671', 250, '2015-12-04 09:19:59', '2015-12-04 09:19:59'),
(96, '9784845288120', 'Velit minus nulla delectus reiciendis.', NULL, 13, '1991-08-30 09:52:03', 'Aut sint ipsam sunt. Explicabo consequatur ad eum voluptatem ea magni deserunt. Fuga est ut ut est cumque cumque natus. Eaque consequatur et libero et. Magni vitae amet eligendi.', 'http://lorempixel.com/200/200/?65283', 1568, '2015-12-04 09:19:59', '2015-12-04 09:19:59'),
(97, '9787573763242', 'Laudantium dolorem dolor ut dolorem nisi accusantium nihil.', 88, 20, '1981-09-08 14:52:36', 'Et totam perspiciatis iste dicta alias nisi est similique. Consequatur debitis consectetur dolore iusto. Sint veniam sit magnam aspernatur et eaque.', 'http://lorempixel.com/200/200/?38811', 211, '2015-12-04 09:19:59', '2015-12-04 09:19:59'),
(98, '9781747390326', 'Atque animi alias vel at eum dolorum repellendus.', 3, 26, '1992-09-16 21:13:43', 'Repellat officiis labore accusamus eum aut. Aperiam est eligendi sint ut repellendus earum. Et quo laudantium consequatur minima corporis quod.', 'http://lorempixel.com/200/200/?43233', 400, '2015-12-04 09:19:59', '2015-12-04 09:19:59'),
(99, '9794190008946', 'Cum ut velit at voluptatem porro quibusdam.', 37, 20, '1988-11-18 08:35:02', 'Maiores accusantium temporibus enim quae aut. Odit laudantium molestias praesentium voluptates dolor voluptatibus ducimus eos. Dolore sit vero maxime molestiae voluptate voluptatem.', 'http://lorempixel.com/200/200/?91037', 580, '2015-12-04 09:19:59', '2015-12-04 09:19:59'),
(100, '9787653159804', 'Ab dignissimos aut nesciunt.', 67, 14, '2011-12-30 19:21:56', 'Ut at similique necessitatibus ea. Et tenetur voluptas consectetur. Omnis laboriosam molestias temporibus id.', 'http://lorempixel.com/200/200/?53357', 1256, '2015-12-04 09:19:59', '2015-12-04 09:19:59');

-- --------------------------------------------------------

--
-- Structure de la table `book_library`
--

CREATE TABLE `book_library` (
  `book_id` int(10) UNSIGNED NOT NULL,
  `library_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `book_library`
--

INSERT INTO `book_library` (`book_id`, `library_id`) VALUES
(1, 10),
(1, 14),
(2, 4),
(2, 13),
(3, 6),
(3, 7),
(3, 11),
(4, 9),
(4, 18),
(5, 13),
(5, 18),
(6, 5),
(6, 10),
(6, 12),
(6, 18),
(7, 1),
(7, 15),
(8, 9),
(8, 11),
(9, 4),
(9, 14),
(9, 19),
(10, 5),
(11, 2),
(11, 8),
(11, 16),
(12, 2),
(12, 5),
(12, 14),
(12, 16),
(13, 15),
(14, 12),
(14, 14),
(14, 15),
(15, 3),
(16, 6),
(16, 15),
(16, 17),
(16, 20),
(17, 2),
(17, 4),
(17, 5),
(17, 12),
(18, 10),
(18, 15),
(19, 6),
(19, 14),
(19, 15),
(19, 20),
(20, 7),
(20, 8),
(20, 17),
(21, 4),
(21, 12),
(21, 16),
(22, 14),
(22, 18),
(22, 19),
(23, 3),
(23, 5),
(24, 14),
(24, 15),
(24, 18),
(24, 20),
(25, 3),
(25, 5),
(26, 17),
(27, 14),
(27, 16),
(28, 15),
(28, 20),
(29, 8),
(29, 10),
(29, 13),
(29, 15),
(30, 1),
(30, 8),
(30, 13),
(31, 1),
(31, 2),
(31, 6),
(31, 11),
(32, 1),
(32, 12),
(32, 20),
(33, 2),
(33, 14),
(33, 16),
(33, 20),
(34, 3),
(34, 8),
(34, 13),
(35, 12),
(36, 8),
(36, 12),
(36, 19),
(37, 5),
(37, 11),
(38, 8),
(38, 12),
(38, 14),
(38, 15),
(39, 7),
(39, 8),
(40, 20),
(41, 3),
(41, 12),
(41, 14),
(41, 15),
(42, 8),
(42, 14),
(42, 15),
(42, 19),
(43, 15),
(43, 19),
(44, 13),
(45, 1),
(45, 16),
(46, 14),
(46, 16),
(46, 18),
(46, 19),
(47, 1),
(47, 3),
(47, 10),
(47, 18),
(48, 8),
(48, 10),
(48, 11),
(48, 12),
(49, 5),
(49, 6),
(49, 13),
(50, 6),
(50, 11),
(50, 18),
(51, 5),
(51, 7),
(51, 9),
(51, 13),
(52, 14),
(53, 9),
(53, 14),
(53, 15),
(54, 3),
(54, 13),
(54, 16),
(54, 17),
(55, 6),
(55, 10),
(56, 8),
(56, 16),
(56, 20),
(57, 3),
(57, 18),
(58, 16),
(59, 5),
(59, 9),
(59, 11),
(59, 12),
(60, 11),
(61, 6),
(61, 9),
(62, 14),
(63, 4),
(64, 1),
(64, 9),
(64, 12),
(64, 15),
(65, 5),
(65, 7),
(65, 19),
(66, 5),
(66, 9),
(66, 18),
(67, 10),
(67, 13),
(68, 1),
(68, 2),
(68, 11),
(68, 18),
(69, 9),
(69, 12),
(69, 18),
(70, 1),
(70, 9),
(71, 19),
(72, 14),
(72, 17),
(73, 11),
(73, 13),
(73, 16),
(74, 5),
(75, 3),
(76, 5),
(77, 7),
(77, 12),
(77, 16),
(78, 1),
(78, 11),
(78, 18),
(79, 10),
(79, 11),
(79, 13),
(79, 18),
(80, 14),
(81, 3),
(81, 16),
(81, 19),
(82, 4),
(82, 5),
(82, 12),
(83, 19),
(84, 4),
(84, 10),
(84, 13),
(84, 15),
(85, 2),
(86, 3),
(86, 5),
(86, 6),
(86, 13),
(87, 4),
(88, 1),
(88, 5),
(89, 10),
(89, 12),
(90, 1),
(90, 4),
(90, 7),
(90, 10),
(91, 4),
(91, 8),
(91, 12),
(92, 17),
(93, 4),
(93, 11),
(93, 16),
(93, 20),
(94, 11),
(95, 3),
(95, 4),
(95, 13),
(96, 2),
(96, 3),
(96, 4),
(96, 11),
(97, 8),
(97, 14),
(98, 8),
(98, 18),
(99, 12),
(99, 13),
(99, 14),
(100, 18);

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `author` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `comments`
--

INSERT INTO `comments` (`id`, `author`, `comment`, `created_at`, `book_id`, `user_id`) VALUES
(31, 'KephrenSI', 'J\'ai dévoré ce livre ? il est juste énorme :D! je le recommande vivement!\r\n', '2017-06-20 20:33:32', 63, 10),
(32, 'KephrenSI', 'Ce roman est géniale', '2017-06-20 20:33:49', 63, 10),
(33, 'KephrenSI', 'Génial !! ', '2017-06-20 20:35:41', 69, 10),
(34, 'KephrenSI', 'Toppissime :D!\r\n', '2017-06-20 20:36:18', 69, 10),
(35, 'Jean Bom', 'beuf', '2017-06-20 21:11:20', 63, 11);

-- --------------------------------------------------------

--
-- Structure de la table `editors`
--

CREATE TABLE `editors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8_unicode_ci,
  `nationality_id` int(10) UNSIGNED DEFAULT NULL,
  `date_of_creation` datetime DEFAULT NULL,
  `date_of_closing` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `editors`
--

INSERT INTO `editors` (`id`, `name`, `url`, `logo`, `summary`, `nationality_id`, `date_of_creation`, `date_of_closing`, `created_at`, `updated_at`) VALUES
(1, 'Becker Inc', 'http://schoen.com/', 'http://lorempixel.com/200/200/?91040', 'Nihil tempore deleniti illum animi. Necessitatibus laborum voluptatem veritatis. Quas dolore facilis eum dolores et qui. Quam quaerat reiciendis placeat tenetur atque.', 54, '1982-09-24 14:37:56', NULL, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(2, 'Hintz, Nicolas and Carter', 'http://hessel.com/debitis-assumenda-dolor-molestiae-repellendus-velit-possimus.html', 'http://lorempixel.com/200/200/?97050', 'Est odio voluptate placeat sit officia eveniet iure. Et sit est iusto sint eum iusto qui. Aut beatae inventore maxime dolores et fugiat omnis.', 51, '2013-12-21 13:46:16', NULL, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(3, 'Leuschke, Hintz and Fay', 'http://www.borer.com/', 'http://lorempixel.com/200/200/?40963', 'Ullam fuga cum neque sint. Sunt perspiciatis ut voluptas qui explicabo et. Qui eum recusandae sapiente et quam voluptatem animi.', 100, '1980-07-26 09:47:55', NULL, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(4, 'Leannon-Schneider', 'https://barton.net/rem-numquam-modi-dolor-voluptatum.html', 'http://lorempixel.com/200/200/?84580', 'Dolores voluptas aperiam incidunt placeat cumque neque modi. Consequatur quo et voluptas laborum. Cum vel quia id rerum nisi. Qui nobis accusamus enim.', 23, '2012-08-16 11:19:37', NULL, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(5, 'Eichmann Inc', 'http://www.bartell.com/beatae-qui-illo-error-quo-suscipit', 'http://lorempixel.com/200/200/?14994', 'Animi consequuntur recusandae corrupti laudantium excepturi dolores eum. Officiis alias et fugit earum. Eveniet quae possimus cum fuga perspiciatis.', 25, '1978-09-07 05:37:01', NULL, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(6, 'Klein and Sons', 'https://reichert.info/accusantium-officiis-possimus-ab.html', NULL, 'Voluptatem sit natus eos et corporis. Expedita quae ut et corrupti et non. Incidunt omnis quibusdam amet pariatur quibusdam molestiae sint.', 100, NULL, NULL, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(7, 'Frami-Kirlin', NULL, 'http://lorempixel.com/200/200/?27510', 'Cumque error qui quisquam nulla aliquid perspiciatis. Enim placeat asperiores consectetur adipisci nesciunt eius delectus. Eius velit qui consequatur. Inventore dolore natus sit ad quae magni.', NULL, NULL, NULL, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(8, 'Boyer-Sauer', 'http://www.schuster.org/eos-iure-dolorem-incidunt-et-qui', 'http://lorempixel.com/200/200/?51457', 'Commodi animi eveniet consequatur minima qui praesentium. Eum asperiores alias nostrum expedita. Repellat officiis maiores impedit odio odio itaque quia. Voluptates eaque eveniet placeat neque.', 40, '1974-08-25 15:24:07', '2014-10-21 21:10:51', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(9, 'Carter-Batz', 'http://smitham.biz/aut-praesentium-fugit-voluptas-sit-explicabo-et.html', 'http://lorempixel.com/200/200/?62929', 'Eveniet veritatis quos unde dolore omnis quia laboriosam debitis. Est doloremque culpa similique architecto voluptas quo iusto. Illum explicabo dolor quibusdam qui qui quibusdam. Dolores quos et velit qui.', 83, NULL, NULL, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(10, 'Lueilwitz Group', 'https://www.baumbach.com/ea-eum-velit-accusamus-occaecati-suscipit', 'http://lorempixel.com/200/200/?78206', 'Alias quae expedita a. Maxime ex non ut sit. Aut vitae quia quia provident et quia repellat. Qui voluptates fugit expedita cum dolores error.', 29, '1992-06-13 05:23:19', NULL, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(11, 'Wiza-Wisozk', NULL, 'http://lorempixel.com/200/200/?33863', 'Repellat dolor reiciendis dignissimos atque rerum dolores saepe optio. Qui ut itaque dolore eos id voluptatum. Quis eaque quia consequatur aut suscipit. Omnis quia nisi ex aut.', 72, '2002-03-18 11:10:19', NULL, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(12, 'Schroeder-Leuschke', 'http://pouros.com/quaerat-temporibus-ex-natus-quos-qui-sit.html', NULL, 'Adipisci ut quaerat quo velit. Aspernatur cumque facere enim necessitatibus esse deleniti. Alias nesciunt sed repudiandae accusantium quis dignissimos.', NULL, '2012-07-02 10:13:40', NULL, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(13, 'Little-Jacobson', 'http://www.heathcote.info/quam-blanditiis-magnam-facilis-laborum-illo-provident-autem.html', 'http://lorempixel.com/200/200/?56844', 'Cum enim numquam vel eos. Quaerat numquam maiores explicabo voluptate accusantium eligendi. Aut voluptatum voluptatum qui.', 52, '1999-07-11 11:54:39', '2012-12-18 12:44:23', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(14, 'Botsford Group', 'http://www.schimmel.com/nihil-sed-ullam-nisi-tenetur-blanditiis-minima-quia', 'http://lorempixel.com/200/200/?82081', 'Ipsam eligendi quaerat numquam doloribus ad veritatis. Eos cumque voluptatibus sequi natus voluptas autem magnam. Corporis hic ut possimus iure dolorem iste eaque.', 43, '1984-11-23 02:06:10', NULL, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(15, 'McLaughlin-Smitham', 'http://langworth.com/quia-placeat-odio-sed-fuga-maiores-animi-doloremque', 'http://lorempixel.com/200/200/?72378', 'Ut et ducimus commodi soluta est delectus. Dolor repudiandae nihil accusantium vel repellat laudantium. Et laboriosam expedita dolorum fugit ea. Laborum ducimus at quo voluptas saepe.', 55, '1980-07-30 16:26:59', NULL, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(16, 'Waelchi LLC', 'http://www.torphy.com/laudantium-itaque-ipsum-tempore-et-aliquam-aliquid', 'http://lorempixel.com/200/200/?16179', NULL, 40, '1998-04-07 11:27:06', NULL, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(17, 'Erdman, Johnston and Nolan', 'https://www.jacobson.com/doloremque-animi-hic-eveniet-assumenda-odit', 'http://lorempixel.com/200/200/?86860', 'Aperiam mollitia harum voluptatem nihil ipsum vel minus omnis. Doloribus deleniti consequatur enim animi. Quibusdam ad laborum ipsam.', 100, '1971-09-02 02:21:36', NULL, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(18, 'Homenick and Sons', 'https://schultz.org/eveniet-excepturi-aut-quaerat-libero-maxime-dolorem-ut.html', 'http://lorempixel.com/200/200/?38598', 'Impedit nisi aliquid quos esse. Assumenda amet aperiam sint nemo rerum voluptatem. Quia ad non voluptas natus accusamus animi. Numquam voluptatem maiores incidunt nesciunt soluta.', NULL, '1976-11-14 16:53:52', NULL, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(19, 'Becker, Kuhn and Aufderhar', 'http://heathcote.info/consequatur-quidem-a-odit-quo', 'http://lorempixel.com/200/200/?28902', 'Dolorem necessitatibus soluta sed ut placeat. Et est sed rerum. Hic et amet accusantium. Voluptas sed aliquam error sint.', 63, NULL, NULL, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(20, 'Schroeder-Wunsch', 'http://zulauf.biz/ut-ea-provident-repellat-non-non-doloribus-vel', 'http://lorempixel.com/200/200/?90277', 'At et at dolores quia quia. Modi eum cupiditate vel. A repudiandae quos praesentium doloribus explicabo. Vel accusamus voluptas numquam.', 98, NULL, NULL, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(21, 'Mueller, Grant and Murazik', 'http://www.runolfsdottir.com/qui-esse-quia-qui-deserunt', 'http://lorempixel.com/200/200/?92666', 'Officiis facilis consequuntur autem voluptatibus corporis voluptates magnam. Quo laudantium error reprehenderit non necessitatibus. Quisquam voluptatem provident voluptas quidem qui. Eum expedita a inventore unde qui modi impedit.', 9, '1989-06-01 18:19:02', NULL, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(22, 'Aufderhar, Mueller and Muller', 'http://reichel.com/similique-voluptates-ut-soluta-tempora', 'http://lorempixel.com/200/200/?18810', 'Ad at et illo dolorem et aliquid minima illum. Necessitatibus aspernatur dolor incidunt in molestiae veniam id. Repellat corporis doloremque suscipit architecto ipsum.', 83, NULL, NULL, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(23, 'Rice-Bradtke', 'https://schmidt.com/animi-hic-illum-sapiente-in-id-nihil.html', 'http://lorempixel.com/200/200/?65704', 'Quibusdam est voluptatem cupiditate error et ut sed quisquam. In corporis quibusdam molestiae. Excepturi aut maiores id.', 66, '1993-09-19 02:52:34', NULL, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(24, 'Marquardt Group', NULL, 'http://lorempixel.com/200/200/?83322', 'Quia et deserunt explicabo deleniti id. Ut necessitatibus rerum perferendis sunt iure. Nisi suscipit eos qui repellendus sit fugiat odio.', 17, NULL, NULL, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(25, 'Schiller-Reichel', NULL, 'http://lorempixel.com/200/200/?14721', 'Perferendis quidem quo delectus exercitationem cumque non molestiae. Et accusantium maxime aperiam veritatis possimus voluptatem suscipit. Dolor cum earum amet soluta error quia aut. Officiis ullam rerum sunt numquam amet odio atque.', 92, '1971-08-26 07:45:04', '1994-08-28 12:10:36', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(26, 'Barton LLC', 'https://johnston.org/eaque-aliquam-quia-esse-et-quia-dignissimos-et.html', 'http://lorempixel.com/200/200/?88016', 'Ipsam quis a unde dignissimos et ratione quae. Ab iure pariatur laudantium et quos. Aut repellat sit tenetur consequatur molestiae quam voluptas non. Eligendi ex consequuntur voluptate voluptatem adipisci sint.', 57, '2012-12-12 05:57:44', NULL, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(27, 'Hermann, Huels and Lindgren', 'http://www.gaylord.biz/nihil-nam-fugit-veritatis-assumenda-eius-perspiciatis', 'http://lorempixel.com/200/200/?78331', 'Sed quo recusandae dolorem sunt officia eveniet esse. Ut dicta aut est. Optio sit molestiae et voluptatem quos voluptas. Quae quae magni adipisci et quia maxime.', NULL, '1972-07-15 00:21:25', NULL, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(28, 'Bayer-Metz', 'http://lehner.com/iure-natus-omnis-dolor-perferendis', 'http://lorempixel.com/200/200/?29480', 'Quia voluptatibus ipsam quod totam sit. Enim quo neque omnis harum. Eveniet rerum ad et. Molestias quia voluptas sit nostrum pariatur.', 31, NULL, NULL, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(29, 'Eichmann-Fahey', 'http://corkery.com/ea-molestiae-totam-repudiandae-eum-aut-perspiciatis', 'http://lorempixel.com/200/200/?81942', 'Sequi quae eum nihil totam unde. Numquam et dicta vero vel veniam.', 30, NULL, NULL, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(30, 'Lindgren Group', 'http://www.buckridge.com/', 'http://lorempixel.com/200/200/?23464', 'Quod reiciendis nostrum amet ut consequatur voluptatem quas. Exercitationem omnis repellat saepe quas voluptas quod qui fugiat. Nesciunt debitis amet tenetur iusto non officiis consequuntur.', 38, '1970-09-29 23:48:17', NULL, '2015-12-04 09:19:58', '2015-12-04 09:19:58');

-- --------------------------------------------------------

--
-- Structure de la table `libraries`
--

CREATE TABLE `libraries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `libraries`
--

INSERT INTO `libraries` (`id`, `name`, `url`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Schultz-Brakus', 'http://wiza.com/', '194 Timmy Shoal\nNew Zoeystad, GA 66942', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(2, 'Davis, Boyle and Ondricka', 'http://www.pfeffer.org/', '03967 Delpha Mountains\nPort Twila, KS 32855-4112', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(3, 'Lynch LLC', 'http://koss.com/rerum-qui-optio-ipsa-repudiandae-doloremque', '718 George Lodge\nBradtkeville, DE 02585-1720', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(4, 'Connelly-Hermiston', 'http://lakin.com/', NULL, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(5, 'Osinski, Bayer and Emard', 'http://oreilly.com/quis-velit-et-dolores-nisi', '8392 Brando Greens\nWestburgh, MN 65682', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(6, 'Miller, Dach and Schmitt', 'http://www.treutel.com/sint-cupiditate-consequuntur-beatae-est-dignissimos-labore', '376 Hershel Curve Apt. 721\nEmmaleefurt, NC 82638-2818', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(7, 'Schuster Inc', 'http://www.stracke.com/voluptatem-omnis-laborum-quaerat-placeat-et', '75430 Jenkins Cape\nKaciemouth, NH 86668', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(8, 'Strosin, Becker and Reinger', 'http://www.schinner.org/', '85604 Eryn Branch\nNorth Dwightfurt, IL 83902-2427', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(9, 'Trantow-Marquardt', 'http://heidenreich.net/nesciunt-qui-autem-numquam-exercitationem', '721 Prudence Gateway\nJulianport, NV 80156-8339', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(10, 'D\'Amore Group', 'http://kling.com/explicabo-tenetur-modi-laborum', '058 Savanna Ville Apt. 994\nJohnathonhaven, UT 26461-2691', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(11, 'Connelly-Heller', 'http://greenfelder.net/et-earum-sunt-aut-hic-labore-non', '80746 Powlowski Lake Suite 911\nOlgatown, TN 54656-4384', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(12, 'West Ltd', 'http://cremin.com/voluptatem-dignissimos-maxime-ea-dolores.html', '042 Roman Radial\nPort Garrickville, DC 46707', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(13, 'Greenholt Group', 'http://www.murazik.org/numquam-facere-nisi-velit-qui-dolores-id-maxime', '02849 Jaren Pines\nPort Kip, PA 07192', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(14, 'Larson, Leuschke and Bergstrom', 'http://fay.biz/molestiae-dolores-mollitia-hic-tenetur-dolores-dolor-ex.html', NULL, '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(15, 'Cole-Schaden', 'https://langworth.info/rerum-enim-fuga-qui-odit-a-voluptas.html', '8047 Cydney Fields Suite 496\nEast Sydney, FL 66740-2773', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(16, 'Walker, Hegmann and Pfeffer', 'http://www.grimes.com/neque-fuga-impedit-quia-ab', '242 Stiedemann Cliffs\nEast Shayneburgh, OK 91483-0068', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(17, 'Zemlak-Altenwerth', 'http://schroeder.net/cum-quia-sunt-et-consequatur', '655 Lockman Locks\nWest Angelinamouth, IA 22177-3786', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(18, 'Bashirian, Sawayn and Kunze', 'http://doyle.info/voluptas-nisi-aut-eos-accusantium', '3691 Cormier Mountain\nFritzview, DC 16484-7744', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(19, 'Kautzer, Luettgen and Carter', 'https://www.beier.org/reprehenderit-itaque-aliquam-voluptatum-possimus-libero-et', '61040 Felicia Mall Apt. 730\nNorth Stanleyview, MA 51946-1191', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(20, 'Miller Ltd', 'http://www.funk.com/est-tempora-est-rerum-neque-totam.html', '999 Lehner Village\nSchinnerburgh, CA 72266', '2015-12-04 09:19:58', '2015-12-04 09:19:58');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_12_01_150715_create_nationalities_table', 1),
('2015_12_02_112956_create_editor_table', 1),
('2015_12_02_112957_create_books_table', 1),
('2015_12_02_132506_create_authors_table', 1),
('2015_12_03_154013_create_libraries_table', 1),
('2015_12_03_155722_create_book_library_pivot_table', 1),
('2015_12_04_101059_create_author_book_pivot_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `nationalities`
--

CREATE TABLE `nationalities` (
  `id` int(10) UNSIGNED NOT NULL,
  `nationality` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `nationalities`
--

INSERT INTO `nationalities` (`id`, `nationality`, `code`, `country`, `created_at`, `updated_at`) VALUES
(1, 'Mongolia', 'JO', 'Mongolia', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(2, 'Honduras', 'LK', 'Honduras', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(3, 'Guernsey', 'LR', 'Guernsey', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(4, 'Sudan', 'CM', 'Sudan', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(5, 'Israel', 'JP', 'Israel', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(6, 'Qatar', 'VC', 'Qatar', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(7, 'Philippines', 'BE', 'Philippines', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(8, 'Poland', 'MH', 'Poland', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(9, 'Nicaragua', 'NZ', 'Nicaragua', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(10, 'Zambia', 'PS', 'Zambia', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(11, 'Holy See (Vatican City State)', 'PG', 'Holy See (Vatican City State)', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(12, 'Papua New Guinea', 'TR', 'Papua New Guinea', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(13, 'Colombia', 'SS', 'Colombia', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(14, 'Guadeloupe', 'NF', 'Guadeloupe', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(15, 'Puerto Rico', 'CY', 'Puerto Rico', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(16, 'Mauritania', 'FO', 'Mauritania', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(17, 'Switzerland', 'AR', 'Switzerland', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(18, 'Thailand', 'NO', 'Thailand', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(19, 'Anguilla', 'PT', 'Anguilla', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(20, 'Libyan Arab Jamahiriya', 'SK', 'Libyan Arab Jamahiriya', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(21, 'Belarus', 'SI', 'Belarus', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(22, 'Cocos (Keeling) Islands', 'GE', 'Cocos (Keeling) Islands', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(23, 'Brazil', 'BR', 'Brazil', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(24, 'Armenia', 'FI', 'Armenia', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(25, 'Sierra Leone', 'MK', 'Sierra Leone', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(26, 'Gabon', 'KI', 'Gabon', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(27, 'Bangladesh', 'GY', 'Bangladesh', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(28, 'Macedonia', 'JE', 'Macedonia', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(29, 'Austria', 'NL', 'Austria', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(30, 'Burundi', 'CF', 'Burundi', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(31, 'Wallis and Futuna', 'FR', 'Wallis and Futuna', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(32, 'Cayman Islands', 'PM', 'Cayman Islands', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(33, 'New Zealand', 'VA', 'New Zealand', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(34, 'American Samoa', 'BF', 'American Samoa', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(35, 'Reunion', 'SZ', 'Reunion', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(36, 'Cameroon', 'LT', 'Cameroon', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(37, 'Peru', 'SH', 'Peru', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(38, 'Denmark', 'GF', 'Denmark', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(39, 'Nauru', 'AQ', 'Nauru', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(40, 'Burkina Faso', 'RO', 'Burkina Faso', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(41, 'Taiwan', 'MY', 'Taiwan', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(42, 'Malawi', 'KN', 'Malawi', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(43, 'Pakistan', 'LS', 'Pakistan', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(44, 'Senegal', 'UG', 'Senegal', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(45, 'Rwanda', 'PF', 'Rwanda', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(46, 'Samoa', 'AF', 'Samoa', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(47, 'Dominican Republic', 'AM', 'Dominican Republic', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(48, 'Chad', 'CG', 'Chad', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(49, 'French Guiana', 'IO', 'French Guiana', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(50, 'Spain', 'CI', 'Spain', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(51, 'Azerbaijan', 'RW', 'Azerbaijan', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(52, 'Canada', 'CC', 'Canada', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(53, 'Mali', 'AW', 'Mali', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(54, 'Barbados', 'DO', 'Barbados', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(55, 'Lao People\'s Democratic Republic', 'PH', 'Lao People\'s Democratic Republic', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(56, 'Norway', 'UA', 'Norway', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(57, 'Aruba', 'MT', 'Aruba', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(58, 'Antarctica (the territory South of 60 deg S)', 'BV', 'Antarctica (the territory South of 60 deg S)', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(59, 'Iceland', 'UM', 'Iceland', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(60, 'Saint Vincent and the Grenadines', 'ME', 'Saint Vincent and the Grenadines', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(61, 'Jersey', 'DZ', 'Jersey', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(62, 'Suriname', 'PE', 'Suriname', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(63, 'Bosnia and Herzegovina', 'MU', 'Bosnia and Herzegovina', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(64, 'Uzbekistan', 'MC', 'Uzbekistan', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(65, 'Czech Republic', 'CV', 'Czech Republic', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(66, 'Algeria', 'IT', 'Algeria', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(67, 'Montenegro', 'SN', 'Montenegro', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(68, 'Zimbabwe', 'SA', 'Zimbabwe', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(69, 'Belgium', 'VI', 'Belgium', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(70, 'Tuvalu', 'JM', 'Tuvalu', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(71, 'New Caledonia', 'IL', 'New Caledonia', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(72, 'Antigua and Barbuda', 'PA', 'Antigua and Barbuda', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(73, 'Kenya', 'TW', 'Kenya', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(74, 'Isle of Man', 'GA', 'Isle of Man', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(75, 'Korea', 'KE', 'Korea', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(76, 'Monaco', 'SY', 'Monaco', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(77, 'Australia', 'DJ', 'Australia', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(78, 'Ethiopia', 'AT', 'Ethiopia', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(79, 'Slovakia (Slovak Republic)', 'SL', 'Slovakia (Slovak Republic)', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(80, 'Serbia', 'MW', 'Serbia', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(81, 'Belize', 'CN', 'Belize', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(82, 'Bhutan', 'DK', 'Bhutan', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(83, 'Vietnam', 'HU', 'Vietnam', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(84, 'Costa Rica', 'NC', 'Costa Rica', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(85, 'Botswana', 'IM', 'Botswana', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(86, 'El Salvador', 'QA', 'El Salvador', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(87, 'Tonga', 'GG', 'Tonga', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(88, 'Saint Pierre and Miquelon', 'LA', 'Saint Pierre and Miquelon', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(89, 'Argentina', 'RS', 'Argentina', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(90, 'Falkland Islands (Malvinas)', 'UY', 'Falkland Islands (Malvinas)', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(91, 'Tajikistan', 'MR', 'Tajikistan', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(92, 'Portugal', 'PK', 'Portugal', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(93, 'Kiribati', 'SV', 'Kiribati', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(94, 'British Indian Ocean Territory (Chagos Archipelago)', 'EC', 'British Indian Ocean Territory (Chagos Archipelago)', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(95, 'Greece', 'GD', 'Greece', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(96, 'British Virgin Islands', 'FJ', 'British Virgin Islands', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(97, 'Bolivia', 'ID', 'Bolivia', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(98, 'Romania', 'CZ', 'Romania', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(99, 'Hong Kong', 'KH', 'Hong Kong', '2015-12-04 09:19:58', '2015-12-04 09:19:58'),
(100, 'Cook Islands', 'TH', 'Cook Islands', '2015-12-04 09:19:58', '2015-12-04 09:19:58');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(10, 'KephrenSI', 'kephren.simonis@hotmail.com', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Jean Bom', 'jean@bon.com', 'a10b31d52bc9be8d718f430261b175a3a74116a9', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `authors_nationality_id_foreign` (`nationality_id`);

--
-- Index pour la table `author_book`
--
ALTER TABLE `author_book`
  ADD PRIMARY KEY (`author_id`,`book_id`),
  ADD KEY `author_book_author_id_index` (`author_id`),
  ADD KEY `author_book_book_id_index` (`book_id`);

--
-- Index pour la table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `books_isbn_unique` (`isbn`),
  ADD KEY `books_editor_id_foreign` (`editor_id`),
  ADD KEY `books_nationality_id_foreign` (`nationality_id`);

--
-- Index pour la table `book_library`
--
ALTER TABLE `book_library`
  ADD PRIMARY KEY (`book_id`,`library_id`),
  ADD KEY `book_library_book_id_index` (`book_id`),
  ADD KEY `book_library_library_id_index` (`library_id`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `editors`
--
ALTER TABLE `editors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `editors_nationality_id_foreign` (`nationality_id`);

--
-- Index pour la table `libraries`
--
ALTER TABLE `libraries`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `nationalities`
--
ALTER TABLE `nationalities`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT pour la table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT pour la table `editors`
--
ALTER TABLE `editors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT pour la table `libraries`
--
ALTER TABLE `libraries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT pour la table `nationalities`
--
ALTER TABLE `nationalities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `authors`
--
ALTER TABLE `authors`
  ADD CONSTRAINT `authors_nationality_id_foreign` FOREIGN KEY (`nationality_id`) REFERENCES `nationalities` (`id`);

--
-- Contraintes pour la table `author_book`
--
ALTER TABLE `author_book`
  ADD CONSTRAINT `author_book_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `author_book_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_editor_id_foreign` FOREIGN KEY (`editor_id`) REFERENCES `editors` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `books_nationality_id_foreign` FOREIGN KEY (`nationality_id`) REFERENCES `nationalities` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Contraintes pour la table `book_library`
--
ALTER TABLE `book_library`
  ADD CONSTRAINT `book_library_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `book_library_library_id_foreign` FOREIGN KEY (`library_id`) REFERENCES `libraries` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `editors`
--
ALTER TABLE `editors`
  ADD CONSTRAINT `editors_nationality_id_foreign` FOREIGN KEY (`nationality_id`) REFERENCES `nationalities` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;
