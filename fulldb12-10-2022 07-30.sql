#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` bigint(20) unsigned DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `media_type_id` (`media_type_id`),
  CONSTRAINT `media_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `media_ibfk_2` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('1', '4', '69', 'Temporibus voluptas ut asperiores. Nihil et alias quas similique sunt voluptates consequatur. Esse eum quo ad atque dolorem voluptatum. Quam aut et repudiandae.', 'natus', 64, NULL, '1974-11-30 00:00:03', '2012-06-22 19:14:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('2', '6', '10', 'Qui nihil beatae voluptas cumque itaque eos dolores. Atque necessitatibus eligendi fugiat quibusdam laboriosam. Quia expedita ut adipisci non voluptas odit quaerat ut.', 'sequi', 0, NULL, '2006-06-26 23:38:20', '2019-06-11 15:10:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('3', '8', '94', 'Tempora minima laborum ex provident aut. Non dolores hic officia corporis laborum. Sed sunt reiciendis necessitatibus necessitatibus placeat.', 'nulla', 0, NULL, '2006-08-16 15:40:57', '2010-06-08 10:52:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('4', '2', '70', 'Labore omnis impedit ex ab sequi maxime. Est aut cum suscipit quisquam non. Et ratione et cum ullam at. Dolor soluta in hic cupiditate perspiciatis.', 'cumque', 3, NULL, '1979-01-16 11:39:01', '2009-03-21 19:43:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('5', '7', '31', 'Quo omnis accusamus officia ut eligendi. Earum est aut pariatur maxime ab. Dolores culpa omnis laudantium enim harum sed.', 'in', 3356, NULL, '2016-12-26 20:49:32', '1998-08-17 16:28:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('6', '2', '39', 'Qui non in consectetur. Incidunt eos harum tempore exercitationem nesciunt. Laboriosam consequatur consequatur esse quidem. Magnam corporis omnis explicabo saepe sint.', 'consequatur', 314587, NULL, '1974-01-10 17:38:12', '2003-01-12 22:13:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('7', '4', '80', 'Non minima soluta nostrum et velit qui et. Deserunt ut impedit et et consectetur quaerat et. Quos ratione assumenda est ipsa.', 'quis', 396888, NULL, '2021-12-08 22:13:39', '2010-09-02 00:07:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('8', '9', '1', 'Laboriosam eligendi ut maiores qui nihil id unde. Placeat pariatur provident quaerat qui ut eius. Eum assumenda qui est quam deleniti sed. Optio dolor labore eius labore. Dolor enim odio laboriosam laborum cum voluptate.', 'nobis', 516863, NULL, '2017-06-17 04:02:11', '2012-02-13 02:41:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('9', '10', '53', 'Voluptatem aliquid aut voluptates architecto dignissimos doloremque ipsa aliquam. Provident ea hic et dolor aut commodi. Dolores quis natus ut est aliquam maiores quaerat.', 'nihil', 384311, NULL, '2006-08-15 18:03:55', '1983-04-25 14:00:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('10', '3', '66', 'Voluptas dolorem sed enim illo tenetur. Sed cumque molestias fugit sint odit. Soluta quaerat consequatur aut fuga pariatur. Fugit sequi ut est necessitatibus porro. Non praesentium ab sit.', 'et', 44854108, NULL, '1981-04-25 16:41:58', '2020-11-21 05:56:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('11', '7', '64', 'Sed nemo enim impedit voluptatibus odit expedita. Sunt commodi nulla corporis dolores et consequatur dolore harum.', 'expedita', 3159029, NULL, '2007-07-09 21:27:09', '1972-01-18 19:53:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('12', '4', '12', 'Natus harum rem et accusamus asperiores sapiente laborum aut. Suscipit natus et quaerat in. Alias cupiditate ab facere quam ipsum dolorum veritatis.', 'fuga', 75666, NULL, '1974-01-21 00:05:49', '2013-03-19 15:22:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('13', '1', '7', 'Nihil repellat aliquam rerum recusandae laborum molestiae praesentium. In ut quod officiis. Vero ipsam odio dolorum quis libero. Nam sit velit quos officiis.', 'dolores', 71372, NULL, '1997-11-07 17:47:57', '1974-01-30 23:29:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('14', '9', '98', 'Eos et quia laboriosam minima. Deserunt non quia expedita enim.', 'ipsam', 1012032, NULL, '1975-07-01 22:05:58', '1983-10-16 15:57:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('15', '6', '66', 'Quia inventore quia velit illo. Veniam ea aut nihil voluptatum. Ratione laborum corrupti est molestias. Rerum aut cupiditate cumque sint consequatur voluptatem.', 'voluptates', 0, NULL, '2020-10-23 19:33:52', '1997-06-18 02:04:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('16', '7', '96', 'Doloremque est laudantium corporis quasi explicabo. Numquam sint debitis earum dolor laborum quia aperiam. Aperiam quia unde modi exercitationem et occaecati. Quas reiciendis qui non vitae.', 'ratione', 1, NULL, '1973-12-16 23:43:02', '1998-08-04 03:29:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('17', '4', '19', 'Quas ipsum ducimus rem nostrum ullam dolores ducimus voluptate. Dolores dolores omnis vel aut. Ut distinctio et quaerat voluptates repudiandae corporis eos. Architecto nulla veniam quo vitae fugiat magni officia impedit.', 'id', 5575, NULL, '2000-12-25 16:42:33', '2015-10-31 16:32:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('18', '1', '9', 'Consequuntur libero esse quae nam. Beatae voluptatem sed beatae maxime. Vero quod error occaecati culpa error.', 'delectus', 520, NULL, '1971-12-06 20:29:48', '1998-07-14 07:35:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('19', '2', '24', 'Quia commodi sint non aliquam nemo. Vitae enim culpa aut rerum quam qui.', 'cupiditate', 8869591, NULL, '2018-10-15 18:22:37', '2007-07-24 06:11:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('20', '8', '82', 'Dolores ratione occaecati ea. Dolores tenetur quis explicabo in consectetur velit sit blanditiis. Non fugit molestiae voluptas voluptas iusto illum et. Nisi aut qui suscipit necessitatibus quidem voluptates doloremque.', 'quibusdam', 89, NULL, '2004-07-31 02:48:00', '1976-02-16 09:40:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('21', '6', '90', 'Aut facilis nulla est sit sunt. Ea et sint saepe sit et numquam perspiciatis. Molestias minima sed cum autem voluptatem ratione et quis. Quam vitae aut ipsam officia perferendis.', 'qui', 2, NULL, '1989-05-05 21:05:34', '1989-02-06 03:33:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('22', '2', '93', 'Voluptas voluptatem repudiandae et quod. Omnis ex repellendus ea dolor voluptatem id. Officiis magni ut illum modi eligendi dolorem. Dolor quae et provident reiciendis voluptas reprehenderit enim.', 'mollitia', 3, NULL, '2011-05-30 20:46:06', '1991-07-03 18:06:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('23', '7', '3', 'Deleniti officiis culpa assumenda dicta. Voluptate sapiente et earum sit incidunt et et. Sapiente saepe est repellendus et. Animi totam perspiciatis dolor nesciunt. Iste pariatur non doloribus maiores at.', 'officiis', 6, NULL, '1972-02-17 00:43:41', '2018-11-30 03:50:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('24', '10', '61', 'Qui nemo quia minus dolore ea. Ex commodi inventore unde omnis ipsum nesciunt consequatur. Quos ullam at et tempora dolores hic ut. Consequuntur sint hic qui.', 'omnis', 1240, NULL, '1973-06-11 22:03:26', '2010-03-17 12:33:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('25', '6', '19', 'Libero distinctio ullam qui modi. Sed quam et at. Quibusdam dolore quas repudiandae et impedit.', 'voluptatem', 11638246, NULL, '1995-06-02 10:44:49', '1984-10-21 21:47:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('26', '3', '23', 'Impedit non odit sed explicabo corrupti fugit maiores. Sed fuga aut numquam porro sapiente. Voluptas beatae rerum et. Non in beatae sit rerum optio dolores consequatur cupiditate.', 'omnis', 569623, NULL, '2020-06-25 13:41:03', '2008-10-09 06:44:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('27', '9', '59', 'Repudiandae molestias atque vel consequuntur reiciendis in. Culpa maiores molestiae voluptatem amet non. Inventore aut quibusdam dolor earum tempora culpa. Mollitia et rerum placeat placeat nisi libero ipsa. Non sed et placeat qui fugit sed voluptas.', 'error', 67, NULL, '1977-02-01 10:43:22', '2019-12-12 05:55:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('28', '4', '90', 'Explicabo amet voluptas aspernatur earum. Earum ut adipisci sint doloribus eius repudiandae tenetur blanditiis. Itaque rerum suscipit non dolorum rerum voluptates ratione.', 'qui', 9844, NULL, '1992-08-27 23:55:23', '1994-12-23 03:08:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('29', '7', '15', 'Tenetur occaecati sit aut ipsam. Dolorem ut velit impedit perferendis. Consequuntur omnis doloremque sed. Molestiae consequuntur accusantium doloremque debitis numquam et.', 'id', 89, NULL, '2001-07-26 10:55:06', '1993-12-26 09:17:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('30', '9', '24', 'Aperiam dolore doloribus quis magnam sed velit reiciendis ut. Illo ut eveniet molestiae ullam. Praesentium aut ut eos consectetur eos rerum. Reiciendis consequatur suscipit unde facilis possimus unde nobis.', 'nobis', 618, NULL, '1990-04-14 07:47:34', '1988-01-21 08:20:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('31', '9', '55', 'Cum nulla aspernatur adipisci unde. Occaecati cumque sit est magni veritatis perferendis reiciendis. Dicta quasi fuga veritatis sed impedit vel.', 'rerum', 17568136, NULL, '2022-03-27 20:35:00', '2002-06-14 10:35:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('32', '2', '14', 'Officiis repudiandae ut consequuntur aut minima. Eligendi nesciunt sint ducimus culpa. Sint quia quia quo nesciunt animi. Dolorum ut ut eos nesciunt et ipsam doloribus.', 'ullam', 40033, NULL, '2000-02-01 22:56:03', '2001-03-08 16:50:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('33', '8', '25', 'Accusantium dolor rerum error molestiae eos molestiae odit. Eos autem dicta rerum ut culpa quis. Beatae et enim perferendis voluptatem aliquid id. Rerum aliquid modi sit dolore nulla.', 'sapiente', 0, NULL, '1970-05-16 06:01:00', '2022-07-04 04:07:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('34', '3', '87', 'Voluptatibus eos asperiores quidem qui ut excepturi labore. Cumque animi quis ea natus ratione. Omnis eaque cum id culpa labore.', 'et', 250851807, NULL, '1992-11-27 03:43:37', '1996-05-15 06:43:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('35', '5', '100', 'Ipsum ea ipsa ipsum facilis saepe tempore facilis quis. Voluptate et ut necessitatibus magnam qui occaecati. Accusantium qui et magnam possimus voluptatem ut dolorem vel. Voluptas et dolores praesentium delectus voluptatum cupiditate.', 'et', 3980, NULL, '1999-03-03 13:06:56', '2018-10-28 10:02:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('36', '7', '1', 'Cumque rerum quisquam porro. Enim eius aut ratione qui voluptatem earum qui. Aspernatur nihil dolor consequatur est praesentium.', 'ipsum', 92852, NULL, '2020-08-14 21:44:43', '1998-04-26 11:37:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('37', '9', '88', 'Fuga doloremque ad sed voluptatem velit quo culpa repudiandae. Non ea architecto consequuntur sunt modi aut cumque. Quod eum sunt quasi voluptatem ea. Et animi facilis et est veniam et est.', 'sed', 777, NULL, '2012-08-14 08:34:45', '2006-11-13 01:07:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('38', '10', '59', 'Exercitationem enim amet doloremque. Et sunt voluptate perferendis et ad non unde. Porro maiores ea soluta vero voluptate eaque harum.', 'non', 60153, NULL, '1993-08-13 12:39:26', '1970-05-24 10:43:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('39', '10', '87', 'Ea cupiditate velit aut dignissimos. Occaecati velit iure non laboriosam porro corporis suscipit itaque. Commodi aliquam distinctio beatae aut quia ipsum.', 'ad', 3, NULL, '2016-05-09 07:07:11', '2020-11-14 17:46:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('40', '2', '46', 'Aliquam alias est eum rerum. Accusamus quos ipsa nemo est sed saepe sunt. Maiores et voluptate ratione error molestiae delectus ex. Et aut est est et ut repudiandae molestias.', 'eum', 5, NULL, '1982-08-25 17:26:19', '1998-11-27 03:33:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('41', '1', '45', 'Et ut illo eius assumenda ipsum deserunt. Impedit dolorum expedita fugiat.', 'ab', 6975, NULL, '2003-03-01 11:13:29', '1999-05-21 22:46:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('42', '7', '87', 'Tenetur sunt est nostrum sit recusandae quo fugit ex. Ea nobis odit et omnis. Dolores placeat eos optio est ab dolor optio. Eaque facere cupiditate maxime omnis. Eius quia itaque aperiam saepe.', 'ullam', 81, NULL, '1987-04-10 08:18:14', '1970-08-26 02:13:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('43', '1', '1', 'Earum qui hic omnis. Laboriosam quod debitis accusamus voluptate. Voluptatum amet explicabo delectus laborum nemo voluptas. Quod dolor qui dolore dolorum ullam atque.', 'mollitia', 1, NULL, '1979-09-19 13:16:52', '2018-04-24 23:32:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('44', '8', '68', 'Nam libero aspernatur voluptates vero eos nihil non. Labore deserunt fuga unde necessitatibus in.', 'fuga', 6, NULL, '2008-10-10 19:56:08', '1997-03-11 11:30:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('45', '2', '65', 'Beatae vel et libero asperiores. A ea distinctio excepturi eaque minima. Consequatur quaerat numquam voluptatem id. Quis eius ut consequatur qui et est maxime.', 'omnis', 275, NULL, '1991-06-24 00:51:02', '1983-05-27 23:42:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('46', '10', '95', 'Voluptatem dolorem vel libero sit maiores. Fugit voluptas asperiores maxime quo. Fugit tempore excepturi in natus. Consequatur et omnis sed non autem hic ipsum.', 'vero', 62396, NULL, '2004-03-29 02:21:00', '2008-12-12 18:03:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('47', '2', '11', 'Repellendus tenetur et doloribus labore maiores. Aut voluptatum quas eaque aliquam similique dolor vel. Porro error consequuntur quia.', 'et', 6, NULL, '1999-12-31 01:51:02', '1985-12-27 01:24:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('48', '1', '94', 'Tempora quia dignissimos nostrum molestiae aliquid. Molestiae iure quisquam suscipit sequi voluptatem. Et et ut nulla eligendi quis. Quia officiis et quia veritatis cum. Quaerat sit possimus nam eaque commodi atque quis ipsa.', 'consequuntur', 395, NULL, '1992-02-21 21:59:33', '1981-09-24 21:39:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('49', '4', '31', 'Qui asperiores a praesentium et praesentium ipsa consectetur. Omnis quisquam officiis voluptas. Id aliquid et laboriosam dignissimos.', 'molestiae', 868535061, NULL, '1980-02-02 11:37:26', '1984-04-20 04:05:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('50', '8', '83', 'Sit similique vel natus natus minima placeat sed. Veniam qui doloremque fuga dolorem. Et omnis eos natus odit omnis illo vitae. Sunt dolores enim quibusdam labore et.', 'rerum', 10384162, NULL, '1990-08-16 21:10:20', '2020-04-25 16:19:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('51', '4', '47', 'Tenetur maiores aut et ut temporibus consectetur qui. Veritatis illo blanditiis animi eos. Consequatur placeat beatae architecto delectus totam quo ut dolores. Nihil consectetur sequi aut voluptas ut ratione rerum aut. Nisi labore id aspernatur autem vel minima.', 'reiciendis', 7, NULL, '2022-07-22 10:46:11', '1974-05-29 13:39:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('52', '9', '21', 'Ipsa officiis ut rerum soluta. Voluptatem totam atque rem voluptatem culpa ullam debitis est.', 'quam', 3, NULL, '2006-05-10 21:51:52', '1979-04-12 22:18:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('53', '4', '77', 'Omnis eius nobis non rerum aut. Fugiat quia tempora dicta optio. Voluptas voluptatibus rem veniam. Repellat voluptatum tenetur dolorem ut commodi cupiditate et nisi.', 'asperiores', 9, NULL, '2011-07-19 04:25:36', '1999-05-03 01:05:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('54', '8', '25', 'Voluptatem quis similique beatae. Esse porro nam recusandae dicta amet. Sint et modi architecto mollitia officia ipsa. Nisi enim iste pariatur ullam corporis. Assumenda quasi dolorum ducimus maiores aut.', 'animi', 397335, NULL, '1992-07-14 08:35:06', '1983-12-23 11:48:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('55', '7', '97', 'Quibusdam magni eum perspiciatis mollitia exercitationem quo quidem. Veniam nihil libero voluptates dolore placeat cumque laborum minima. Aut sed reiciendis consequuntur quia enim. Non est et repudiandae iusto.', 'dolore', 72355, NULL, '2014-11-17 12:09:40', '1985-09-05 20:51:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('56', '7', '68', 'Et accusantium saepe accusamus rerum pariatur rem distinctio est. Nihil iure ut deleniti sit autem reiciendis eveniet. Ex et placeat amet ut omnis libero. Ut atque dignissimos aperiam.', 'non', 0, NULL, '1999-02-22 19:20:28', '1983-07-25 04:09:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('57', '5', '37', 'Et tenetur tempore doloremque fugit culpa. Blanditiis architecto dolores quos quae placeat amet. Quaerat perferendis qui quia et rerum dolores. Eum quisquam reiciendis autem repudiandae dolorum est quis distinctio.', 'voluptatem', 507980564, NULL, '2021-10-31 09:44:45', '2012-01-08 01:13:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('58', '6', '44', 'Asperiores id et dignissimos assumenda nobis. Sunt quo doloribus qui omnis. Omnis aspernatur voluptas blanditiis eos sint et. Blanditiis nisi et incidunt repellat et libero.', 'quam', 0, NULL, '2005-12-27 18:57:50', '1975-04-01 20:55:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('59', '4', '32', 'Sed sed quia eum recusandae nobis aut. Nobis laudantium expedita vitae. Incidunt dolore aliquam esse sint odit.', 'nesciunt', 92361786, NULL, '2001-01-06 02:55:29', '1972-10-08 23:24:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('60', '2', '52', 'Quia minus quaerat ut rerum sunt sit unde. Delectus repudiandae non culpa iusto. Qui et ratione libero.', 'laudantium', 2090206, NULL, '1990-03-01 16:29:28', '1972-06-06 18:24:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('61', '10', '2', 'Alias iusto deleniti doloribus. Quo fugit ipsa maiores et aut impedit ut. Quo quod voluptatem nihil autem. Architecto fuga deserunt voluptates et et veniam est similique.', 'rerum', 2, NULL, '2017-06-29 15:55:58', '1993-07-25 22:38:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('62', '5', '16', 'Sed tenetur ab quia distinctio ratione natus ipsa. Velit placeat placeat in qui quod mollitia assumenda. Enim eaque dolor voluptates et in.', 'vel', 98063762, NULL, '2005-01-28 08:59:48', '1986-03-26 17:40:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('63', '2', '55', 'Eum numquam expedita tenetur maxime minus quidem. Enim quia porro aut magnam et expedita. Fugiat ea ut quae quo dolorem. Quo alias sint esse quos.', 'aut', 2, NULL, '2010-07-08 18:18:07', '1980-05-06 05:29:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('64', '1', '47', 'Odit ad rerum quia qui velit sequi accusantium vero. Dignissimos eos facere rem. Qui tempore maxime vel eius necessitatibus repellendus ut cupiditate. Est sit fuga ad qui ea sit recusandae.', 'aperiam', 86849, NULL, '2014-02-21 01:09:00', '1993-06-21 00:23:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('65', '9', '88', 'Cumque velit qui voluptatem. Illum qui amet ut ex perferendis est ullam. Repellendus consectetur est molestiae cupiditate provident repudiandae perspiciatis et.', 'nostrum', 21106232, NULL, '2011-12-12 12:34:36', '1994-03-23 18:45:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('66', '3', '16', 'Neque optio consectetur vel dolore beatae illo quaerat. Harum sit neque est beatae et. Occaecati similique quidem quo.', 'nemo', 6, NULL, '2003-03-26 07:43:06', '1982-02-07 03:30:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('67', '4', '13', 'Pariatur dolorem provident praesentium. Consequatur officiis qui nisi aut distinctio voluptatum. Nostrum omnis voluptates omnis et vitae repudiandae. Veniam vel ipsum qui dignissimos neque et.', 'ipsum', 665171, NULL, '2015-06-11 09:59:54', '2018-12-01 21:56:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('68', '4', '69', 'Quia pariatur sint eum odio qui perferendis omnis. Sapiente aut vero assumenda est voluptas omnis magni. Aut laudantium dolorem et nemo. Esse sed et provident voluptas.', 'sed', 9, NULL, '2001-09-16 10:09:57', '1993-02-21 16:52:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('69', '9', '15', 'Veritatis in ullam excepturi id delectus doloribus. Vel sit voluptates ut nisi in. Tenetur rerum amet iste amet et et sunt.', 'est', 65624, NULL, '2015-10-23 18:50:02', '1996-03-18 12:44:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('70', '10', '52', 'Autem recusandae aut maiores deserunt non impedit sed. Iusto nostrum repudiandae et quia. Aut velit molestiae maxime pariatur id officiis.', 'sint', 61807873, NULL, '1971-05-27 03:38:48', '2020-10-15 08:37:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('71', '2', '63', 'Itaque iusto suscipit corrupti voluptatum veritatis. Perspiciatis voluptatem ipsum quas sunt consequatur. Alias repudiandae suscipit minus laboriosam.', 'expedita', 5433158, NULL, '2010-08-01 12:11:35', '1972-01-30 09:35:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('72', '2', '52', 'Ex officiis doloribus ut quibusdam aut et. Et ut excepturi laudantium nobis consequuntur error. Eos aut numquam qui vel enim quibusdam. Ea doloribus at recusandae eos beatae aut.', 'harum', 280, NULL, '2012-02-03 23:12:24', '1979-10-26 08:03:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('73', '10', '75', 'Aut quam est doloribus quidem eum dolorem inventore. Architecto facilis dolores autem modi porro modi. Necessitatibus qui et placeat voluptatem.', 'quos', 31, NULL, '1982-12-03 19:03:52', '2021-07-22 13:14:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('74', '10', '36', 'Est natus voluptatem nihil omnis dolores eos. Dicta eius nihil molestiae illo nihil. Ad velit eos et velit ea sit possimus.', 'est', 53966, NULL, '1976-10-26 22:17:04', '2005-05-14 15:42:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('75', '1', '6', 'Id voluptatum voluptatem dolorem cumque. Velit velit quod est animi quaerat. Dolorum quia iste voluptatem officia eum illum mollitia.', 'sed', 889, NULL, '1997-10-25 14:42:17', '1990-12-25 21:11:49');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('76', '9', '2', 'Vel iure dignissimos dolor ut facere similique magni. Asperiores suscipit distinctio earum aut consequatur maiores.', 'sapiente', 590376499, NULL, '1989-10-29 16:05:48', '2013-12-10 23:15:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('77', '1', '34', 'Laboriosam cupiditate vel illo iusto laboriosam voluptatem consectetur. Aspernatur aliquid aut occaecati officia nobis. Incidunt in voluptatum debitis necessitatibus sit dolorum. Non aut voluptas quaerat voluptatem.', 'et', 9, NULL, '1975-12-28 07:51:40', '1988-03-05 06:51:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('78', '2', '20', 'Doloremque sed vel excepturi deserunt cum eveniet nobis quam. Reprehenderit id repudiandae vel occaecati. Quos sunt unde culpa ut.', 'odit', 98664, NULL, '1975-09-19 15:03:27', '1971-03-27 22:44:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('79', '9', '27', 'Sit sequi est minima autem ab aut. Non est repellat saepe et asperiores. Aut eveniet dolore modi commodi aut quo impedit.', 'doloremque', 9501, NULL, '2016-10-10 14:02:27', '2001-04-01 21:43:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('80', '7', '74', 'Asperiores mollitia totam velit commodi iste voluptatum velit. Architecto iste officia id ipsa. Reprehenderit occaecati commodi ducimus consequatur perferendis quod vero.', 'libero', 8039, NULL, '2011-08-30 22:38:49', '2002-01-10 21:49:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('81', '2', '96', 'Qui illo autem cum in ipsum deserunt. Ipsam accusamus sit aut necessitatibus tempore et. Non recusandae asperiores officiis perferendis quisquam a.', 'voluptatibus', 2, NULL, '2009-12-11 17:10:16', '1987-03-17 12:01:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('82', '9', '49', 'Repellendus ea repellat porro ut sunt expedita iste. Ipsam itaque a saepe animi error perspiciatis quod. Excepturi distinctio ut recusandae aut. Aut sequi cupiditate eaque maiores quos.', 'quia', 6169112, NULL, '2012-06-08 14:03:39', '1990-04-11 03:17:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('83', '1', '26', 'Molestiae quia sed cum ea necessitatibus voluptas. Sed eum sed consequatur non blanditiis voluptatum quia. Aliquam qui veniam voluptatem eum quas expedita.', 'rerum', 509, NULL, '1984-04-21 09:21:31', '2015-01-16 02:13:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('84', '2', '96', 'Sed consequatur quam voluptatem in. Qui ex corrupti numquam nostrum aspernatur quaerat est.', 'pariatur', 610080141, NULL, '2004-12-16 02:19:42', '1981-12-31 05:06:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('85', '4', '10', 'Mollitia dicta non odio molestias error. Veniam sapiente deserunt voluptatem consequatur reprehenderit. Numquam a tempore provident deleniti asperiores.', 'molestiae', 12717, NULL, '1994-12-27 15:35:13', '1984-02-23 05:42:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('86', '5', '51', 'Et animi magnam ullam voluptas autem. Illo est enim ea rerum natus et sit ullam. Sed iste a aliquam sit ea asperiores debitis ut.', 'voluptatem', 0, NULL, '2019-03-11 17:04:32', '2005-10-16 21:05:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('87', '8', '67', 'Iure necessitatibus nobis qui repellendus illo. Error perferendis dolorem non. Blanditiis tempore assumenda maiores et hic ut pariatur. Ut dolor quibusdam dolorum consequatur corrupti.', 'repellendus', 93527709, NULL, '1980-02-17 02:47:44', '2008-07-14 12:33:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('88', '1', '71', 'Fugit doloremque architecto consectetur. Libero aut facere enim quia. Eos qui pariatur quo commodi. Sed voluptatem fuga error tempore. At id ratione repudiandae deleniti eum.', 'labore', 230860, NULL, '2016-11-15 15:18:15', '2012-10-16 22:32:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('89', '5', '97', 'Sequi doloribus iure qui pariatur ab et dolores. Voluptatibus voluptas nostrum sequi. Odio id deserunt adipisci voluptas.', 'aliquam', 0, NULL, '2010-09-11 23:21:28', '2021-01-05 20:32:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('90', '1', '47', 'Quaerat dolor consequatur rem sed ab. Sit eum magni quidem eos totam laborum non. Suscipit quia et quisquam quis reprehenderit. Nulla quia asperiores est rerum placeat provident qui ducimus.', 'porro', 0, NULL, '2014-09-10 20:55:30', '1992-09-19 06:45:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('91', '1', '94', 'Quo velit et sed ut atque. Sint eum ducimus soluta minima. Provident natus deleniti rem quia qui. Est temporibus asperiores eos praesentium et est nesciunt. Illum quis consequatur et quis aut quia.', 'quos', 925701, NULL, '2014-08-10 21:38:13', '1977-08-19 20:55:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('92', '5', '10', 'Quisquam est est non possimus ab a. Id optio quo maiores et aut. Quidem cum quod pariatur magni voluptas. Veniam quam quia quis iure.', 'dolorem', 70, NULL, '1995-11-24 11:32:56', '1975-01-27 18:21:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('93', '3', '66', 'Ad eum et officiis qui sit quia et minus. Ratione quia praesentium pariatur numquam. Similique dicta esse voluptas inventore ipsam natus pariatur. Aliquam quia et natus similique veritatis laborum iste.', 'rerum', 86, NULL, '2000-10-10 19:29:56', '2001-02-12 04:41:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('94', '3', '16', 'Occaecati labore non deleniti harum. Autem nemo ratione magnam quos similique porro occaecati. Soluta ut assumenda laboriosam vitae quas ratione sit. Ut quibusdam ea corrupti impedit dignissimos. Est eligendi quae voluptatum omnis a pariatur.', 'esse', 43, NULL, '1971-02-18 16:40:21', '1999-05-11 13:34:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('95', '10', '95', 'Nobis ea eaque et sunt dolorem. Reprehenderit animi dignissimos quis necessitatibus sit aut. Et qui et adipisci sed aut molestiae expedita.', 'accusamus', 945544124, NULL, '2001-07-19 10:57:30', '2000-09-09 03:37:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('96', '9', '6', 'Sunt sit omnis aut libero. Laborum iusto nihil commodi quas quo. Fuga error distinctio autem unde. Natus nobis omnis sunt veniam sint sed. Veniam natus asperiores ut aut voluptates eum.', 'earum', 86635121, NULL, '1973-06-21 16:39:07', '1991-02-24 22:54:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('97', '9', '78', 'Quia aut quo tenetur corporis minima ut quod. Totam maxime cum officia perspiciatis quia vel omnis. Animi aut velit laboriosam fuga est tempora. A velit quia natus aut aspernatur error. Facere nihil et in rem.', 'repellat', 937, NULL, '1999-06-30 05:31:21', '1973-04-01 11:21:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('98', '6', '98', 'Nihil quod minima voluptatem dolores laudantium quia. Enim delectus nobis perferendis mollitia repudiandae. Neque tenetur deleniti assumenda accusamus omnis. Laboriosam aut ut repellat ipsa iure deserunt commodi voluptas.', 'cupiditate', 810, NULL, '1977-07-02 17:06:42', '1985-03-12 18:49:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('99', '1', '71', 'Similique quia ea fugiat dolor voluptatem est et. Facere laborum voluptate minima cumque officiis doloremque magnam. Iure impedit velit dolores a suscipit.', 'nemo', 83905, NULL, '2019-01-10 09:13:46', '1987-12-14 21:18:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('100', '10', '43', 'Architecto tempore maiores ea qui deserunt aut perferendis impedit. Facilis porro soluta qui illo natus ut. Dolorem illum quia nemo quia.', 'officiis', 9740, NULL, '2016-09-20 05:24:40', '1993-12-01 18:57:21');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('1', 'aut', '1972-11-12 06:13:22', '1983-08-28 21:32:59');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('2', 'ut', '1999-05-05 08:23:58', '1984-08-12 04:44:31');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('3', 'optio', '1997-07-27 10:53:58', '2002-04-23 21:30:16');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('4', 'ea', '1985-11-11 04:16:37', '1990-08-25 13:47:56');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('5', 'quasi', '2020-05-05 15:55:54', '2022-07-04 09:12:42');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('6', 'et', '2015-02-17 17:13:09', '2015-08-03 01:44:51');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('7', 'cum', '2015-08-08 19:04:59', '2004-07-25 15:12:17');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('8', 'veniam', '1981-11-25 05:09:21', '1989-11-19 23:47:26');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('9', 'assumenda', '1981-06-09 08:38:50', '2000-05-29 17:52:28');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('10', 'odio', '1970-08-19 06:44:37', '2021-01-23 06:20:33');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint(20) unsigned NOT NULL,
  `to_user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `from_user_id` (`from_user_id`),
  KEY `to_user_id` (`to_user_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('1', '84', '24', 'Sed laborum voluptatem voluptatibus corporis delectus minima. Itaque ut enim quia sequi libero id est. Quisquam cumque molestiae sit enim. Voluptas ullam minima repellat.', '1990-09-22 19:27:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('2', '93', '33', 'Mollitia numquam quisquam laudantium fugiat. Quasi nihil officia harum corrupti sit. Aut voluptatem rem ad. Aliquid dolor consectetur placeat eum consequatur.', '2004-12-09 08:45:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('3', '91', '13', 'Ducimus minima dolore sit eum amet voluptatem commodi. Delectus ut rerum debitis et numquam laboriosam et. Error ullam sed et odit sit non sed voluptates.', '1982-11-30 16:56:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('4', '49', '52', 'Sequi qui est sequi non. Harum id maxime aut esse quia minima. In est quibusdam repellat nihil consequatur quis. Ex nihil aliquam dolorum et sequi totam.', '1989-06-24 22:53:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('5', '37', '12', 'Dolores sequi ex sit fugiat voluptatem quia distinctio. Non dolor voluptas molestias deleniti ullam. Voluptate consequatur doloremque eius est voluptatem. Quibusdam vero culpa dolor harum.', '1971-08-26 23:21:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('6', '46', '8', 'A et eos voluptatum quis velit autem nam. Voluptate nihil nemo aliquam in molestiae omnis rerum. Repellendus soluta ipsum aut ipsam dolor voluptas sed. Nobis minus autem ut ut impedit eveniet voluptatem et.', '2007-06-24 16:47:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('7', '89', '94', 'Alias dolorem facilis voluptatem et. Exercitationem nobis autem blanditiis hic. Aut veritatis commodi dolores et voluptatem. Reiciendis expedita suscipit cum praesentium sint aperiam.', '1970-03-18 06:30:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('8', '8', '78', 'Perspiciatis natus dolorum optio minus optio et odit. Corrupti porro perferendis dolores autem dolorem. Et nisi aspernatur in atque labore quasi optio. Voluptatem sint rerum molestias quisquam.', '1988-04-23 13:16:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('9', '33', '1', 'Omnis pariatur natus velit saepe nam placeat. Nemo delectus aut consequatur provident. Pariatur eos iusto tempora quo quia nesciunt.', '1996-07-17 01:18:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('10', '24', '57', 'Vero sed molestias eos voluptatem et aut provident amet. Quidem a aperiam nihil vitae magni et. Ipsum laborum facilis suscipit qui voluptatibus quia. Vel ex accusantium aliquid autem tenetur quia.', '1986-12-06 10:02:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('11', '27', '89', 'Eius consectetur dolor non. Alias aut voluptate eius occaecati. Nobis qui et soluta exercitationem.', '1998-11-23 21:19:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('12', '91', '41', 'Voluptatum qui illo omnis dolore non ratione earum. Pariatur rem ut iste quis id. Quia quia est nesciunt quod non nostrum.', '1979-07-08 23:40:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('13', '15', '83', 'Eos voluptas sapiente optio similique incidunt. Temporibus ullam consectetur optio pariatur placeat nam odit. Tenetur voluptate numquam pariatur rerum. Incidunt nihil et saepe itaque delectus animi.', '2022-02-11 18:11:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('14', '55', '20', 'Ut totam qui vel voluptatem aut aliquam commodi. Vel voluptatem ipsa possimus iusto.', '2001-08-29 05:37:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('15', '42', '92', 'Iste dolores est sed reprehenderit. Omnis omnis velit sit sed eligendi omnis. Laudantium dolorem doloribus sint. Nesciunt incidunt ut dolorum facere ipsum ut sit.', '1979-11-09 15:43:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('16', '78', '25', 'Sapiente molestias quas corrupti facere. Aut iure neque omnis suscipit qui sunt velit. Praesentium eaque officia repellendus omnis. Animi aliquid placeat officia eos.', '1976-12-30 02:41:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('17', '15', '71', 'Laudantium laudantium magnam nulla itaque nesciunt. Iure cum aut velit quibusdam at totam. Dicta soluta ducimus possimus est ut et id. Aut impedit minima delectus aliquid non adipisci error.', '2002-10-01 21:11:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('18', '57', '6', 'Libero saepe quasi quas. Molestiae ut sed dolorum voluptatem. Distinctio laudantium incidunt error officia dolor eaque.', '2006-03-02 09:07:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('19', '83', '6', 'Illo odio enim voluptas quia quas. Totam voluptatibus natus facere. Molestiae delectus quia rem.', '2005-09-30 07:00:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('20', '57', '20', 'Dolorem repudiandae odio eveniet placeat nam officia. Voluptatem recusandae dolores et eum dignissimos velit. Blanditiis omnis voluptatibus minus amet aut odio provident minima. Voluptatem et voluptatem modi doloribus ullam eum ad. Officiis nesciunt velit molestiae dolor sit.', '2020-02-15 05:30:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('21', '17', '2', 'Blanditiis sed sit nulla dolores sit porro. At soluta ipsa et ratione qui iste. Sed animi eos officiis incidunt et ea aut est.', '1996-02-08 03:50:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('22', '28', '5', 'Exercitationem totam odit nulla illum. Praesentium ipsam accusantium in. Nemo iste quas vel qui.', '1973-02-23 10:37:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('23', '96', '35', 'Odio ut illum quas est consequatur sit et. Fugit voluptas nihil laudantium est. Labore tempora est qui dolorem est quod repellat.', '1973-11-29 01:49:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('24', '83', '29', 'Eius quam id sed. Qui id enim aliquid consequuntur nisi. Facilis veniam voluptas reiciendis esse id corporis error. Voluptate nulla qui aliquid molestias non vero.', '1979-08-22 18:33:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('25', '35', '7', 'Alias dolor quod ut deserunt modi recusandae quas. Expedita quam laboriosam doloremque ea blanditiis nulla. Veritatis consequuntur itaque neque impedit ab cumque. Voluptatum unde ducimus fugit eligendi hic cupiditate animi.', '1991-02-21 05:11:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('26', '85', '62', 'Et incidunt culpa tenetur. Sed officia tempora ea dolore. Ducimus sequi quasi maxime dolor ab autem repudiandae iusto.', '1972-04-13 04:00:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('27', '96', '75', 'Dolores aperiam est porro iste excepturi dolores quisquam. Aut est id optio doloribus cumque sit. Accusamus dolorem non dolores culpa id ab voluptatum. Autem qui aut quibusdam dolores illo et iste et. Provident voluptas eius nobis quae dolore ducimus enim.', '2004-12-02 04:17:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('28', '2', '10', 'Laborum nostrum nulla velit error. Dolores et dolore libero commodi.', '2008-10-26 04:34:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('29', '58', '57', 'Aut voluptatibus non iusto autem. Cumque est quasi eveniet nulla corporis alias culpa dolor. Laborum et itaque ut odit modi.', '2015-09-23 00:10:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('30', '29', '99', 'At aut ipsum et. Harum voluptatem et commodi ut nihil vero.', '1985-02-04 11:20:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('31', '48', '6', 'Magni voluptatum modi aut praesentium. Qui tenetur architecto laudantium dolor aut aut debitis. Labore quisquam tempora id ab. Qui aut natus numquam asperiores est.', '1994-07-26 14:41:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('32', '24', '63', 'Fugit vel magni nostrum id voluptates dolor. Amet sint ut fugit eligendi vel eligendi mollitia. Repellendus nihil et in ex. Voluptatem doloribus voluptatum voluptates officiis eum eum sed.', '2006-10-16 18:32:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('33', '76', '81', 'Non eveniet ut quisquam et minima earum. Est sit illo ex aliquid commodi aut labore. Accusantium officia consequatur suscipit sit necessitatibus est explicabo neque. Numquam dicta quidem dolorum.', '2012-11-17 01:05:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('34', '68', '59', 'Nihil iste temporibus voluptatem neque debitis. Quibusdam ut doloribus occaecati beatae quia. Nam molestiae laboriosam in optio.', '1991-08-19 20:55:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('35', '86', '25', 'Fugiat libero soluta vel dolor. Excepturi qui sunt et et quaerat. Qui voluptatem iusto laudantium animi. Consequatur qui saepe dolor doloribus.', '1987-05-20 02:23:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('36', '79', '3', 'Ea ut facilis accusamus porro. Veritatis eos pariatur error aperiam voluptas enim. Aliquid quae tempora voluptatum asperiores doloremque.', '1993-06-30 11:48:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('37', '27', '6', 'Repellendus corporis impedit esse ex ullam necessitatibus. Molestiae sed modi voluptatibus rem. Omnis consectetur est quia aut quia vel.', '2013-01-28 00:40:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('38', '8', '22', 'Enim voluptates eius repellendus qui error ad in. Et ab quas id dolor. Odit fugiat voluptatem quia ipsum.', '2006-03-13 16:03:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('39', '40', '90', 'At id officia veniam vitae laboriosam. Sequi magnam corporis ut incidunt. Quo ut harum ipsum architecto voluptas ratione. Occaecati qui rerum quis qui. Voluptas iste in molestiae commodi ea nisi sequi.', '2006-06-04 04:08:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('40', '50', '75', 'Aut et unde nobis impedit quam accusamus deleniti et. Qui repellendus qui eos quos.', '1993-07-10 06:01:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('41', '97', '35', 'Aut et rem quos ut. Beatae delectus enim quae pariatur. Sapiente numquam molestiae vel sequi ipsum blanditiis.', '1983-03-31 18:19:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('42', '36', '92', 'Ut saepe ipsa magnam dolorum officia ut. Omnis odio et et ut. Numquam inventore temporibus sint similique cupiditate quasi modi.', '1997-10-01 05:36:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('43', '9', '38', 'Corrupti et aperiam fugit fugit. Quaerat qui quod maiores facere perspiciatis officia. Vel accusamus dolor et dolore quasi quibusdam optio. Sed facere labore possimus at assumenda.', '1978-05-22 19:37:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('44', '1', '66', 'Est vero nisi sint a nisi. Quia a quo natus sint minima. Repudiandae quia atque consequatur sint et ducimus quia.', '1983-07-25 09:04:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('45', '95', '30', 'Quia ipsa aut assumenda sapiente soluta. Nostrum odit ab in. Ab cum aperiam dolorem sit non voluptas. Sunt dolorem perferendis cum dolorum saepe ab. Quidem eius occaecati sit maiores laboriosam.', '1983-02-09 08:02:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('46', '65', '42', 'Enim eum voluptatum vel minus velit sit consequatur. Autem ab perspiciatis omnis rerum adipisci velit temporibus. Debitis odit qui ex ea totam quisquam. Suscipit alias quis tempore esse cum. Et voluptatum voluptas quia sit vero nesciunt.', '1981-02-15 11:21:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('47', '36', '89', 'At odio suscipit quia voluptatem. Nam voluptas rerum tempora eos dolor. Quos minus officiis reprehenderit eum aut voluptas. Repellat voluptas ea repellat sunt minus.', '1970-01-25 11:54:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('48', '5', '12', 'A fugit fuga repudiandae recusandae quia. Quod quis voluptatibus consequatur et. Praesentium esse non quaerat ducimus occaecati. Sed ducimus sed voluptatem quia quis nulla aut modi.', '1987-01-29 05:03:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('49', '69', '72', 'Similique voluptas iste praesentium assumenda. Odit voluptatem qui iusto et.', '2007-03-21 02:20:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('50', '71', '55', 'Omnis et eum fuga et. Voluptatem atque nam rerum recusandae. Et aperiam delectus eos maiores.', '1976-09-05 20:18:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('51', '97', '49', 'Laudantium deleniti ad qui temporibus dolores. Consequatur voluptatem ea eum numquam velit aut dolor. In doloremque quibusdam voluptas id voluptas. Qui praesentium amet ut omnis mollitia unde.', '1989-06-08 00:26:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('52', '57', '23', 'Fugiat eos soluta aut sit voluptatem deserunt. Sit amet ut laudantium eum nobis eaque qui. Nam perferendis assumenda eum molestiae et. Rerum perspiciatis assumenda similique iure ratione qui.', '1972-07-25 22:15:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('53', '54', '65', 'Beatae consequatur quo aliquam suscipit dicta perspiciatis nesciunt. Ullam molestiae qui iste et nihil. Dolores dolor sapiente quibusdam consequatur pariatur enim.', '1994-08-18 08:59:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('54', '44', '94', 'Deleniti blanditiis nesciunt labore non harum qui. Autem consequuntur quis libero ullam dolores atque delectus. Voluptatem illum praesentium labore praesentium id labore. Natus maxime voluptatibus sapiente repellat.', '1973-01-17 01:06:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('55', '54', '94', 'Porro repudiandae unde aliquid et dolor eos. Hic natus sit dolor dolor ut. Hic ipsum et reiciendis qui dolorum non officiis. Autem beatae voluptas voluptatem.', '1972-11-07 23:29:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('56', '69', '50', 'Rerum aut neque culpa explicabo sunt et delectus. Autem quae est qui atque. Et voluptates blanditiis rerum. Voluptatem deserunt illum similique sint beatae.', '2019-10-16 08:34:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('57', '28', '4', 'Saepe aut similique similique. Ut nesciunt numquam molestiae nemo. Id quaerat itaque repellendus officiis sit est. Reprehenderit eos sed fugiat.', '2013-10-31 19:48:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('58', '42', '37', 'Quos et fuga ad sit quas porro. Facilis saepe nisi nihil tempora. Accusamus aperiam magnam qui eos numquam aut delectus. Sunt vel minima est saepe ut est. Quia tempora explicabo et praesentium sit.', '1983-06-25 04:08:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('59', '42', '42', 'Qui molestias voluptatem est ex fugit. Nemo dolorum nobis iste mollitia est consectetur. Est possimus quia natus voluptatem praesentium autem.', '1972-05-01 05:25:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('60', '3', '36', 'Dolorem sapiente enim illum esse beatae. Et incidunt quis quasi nihil fugit dolores. Error qui sequi aliquam iure culpa numquam iste. Et dolorem asperiores ea.', '2005-05-10 02:18:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('61', '72', '67', 'Amet consequatur molestias dolores. Ut exercitationem illo aut omnis voluptatem qui. Quia aliquid in est incidunt laboriosam exercitationem quia ad. Maiores voluptas labore voluptas aut quas voluptatibus.', '1991-04-23 06:35:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('62', '78', '7', 'Harum ab alias adipisci velit dignissimos. Et repudiandae natus perferendis veritatis vitae tenetur officia. Necessitatibus voluptatem ut qui et provident. Esse incidunt distinctio expedita accusantium eos nulla vitae.', '1987-09-20 17:44:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('63', '55', '82', 'Officia qui dolores aut id sed quibusdam tenetur iste. Reprehenderit debitis reprehenderit asperiores quod expedita enim. Hic laborum placeat libero quod maxime iusto. Minus voluptatem voluptatem placeat.', '1972-11-21 23:13:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('64', '18', '24', 'Facere est eaque dolor aut soluta odit. Rerum possimus unde quam rem aut perspiciatis tempora quae. Non unde perspiciatis veritatis nihil. Asperiores enim distinctio alias voluptatibus asperiores aspernatur.', '1977-02-26 09:14:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('65', '54', '88', 'Autem excepturi cum molestias magni ut ut. Et possimus sed eligendi vel.', '2012-10-30 09:07:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('66', '78', '50', 'Facere voluptatem quia et aperiam et minima. Id ut ut ut quam officia sunt fugiat. Consequatur ut magnam harum est consequuntur. Neque est architecto consectetur.', '2022-04-14 04:37:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('67', '37', '35', 'Dolor sequi beatae et consequatur. Distinctio nihil repellat deleniti nostrum. Assumenda sunt deserunt perferendis odit saepe iste nostrum.', '1976-02-09 09:55:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('68', '72', '91', 'Ipsa delectus officia ex atque. Laboriosam consequatur quam aspernatur laboriosam. Accusantium quasi perspiciatis molestiae commodi enim fuga est.', '2009-10-01 19:36:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('69', '99', '16', 'Dolores delectus earum similique. Consectetur accusamus est est reiciendis esse rerum exercitationem. Magni omnis quibusdam debitis facilis recusandae iure.', '1976-11-23 14:18:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('70', '84', '53', 'Aut vel tempore quis aliquam ut. Numquam accusamus possimus laudantium qui excepturi et. Totam illo iste praesentium est enim rerum debitis.', '1996-11-06 02:22:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('71', '9', '52', 'Cum fugit ut enim aut omnis aspernatur quibusdam. Ipsam dolorem repellat exercitationem voluptatibus maiores. Sint omnis perferendis nihil eveniet facilis. Sequi nam perspiciatis similique fugit et et.', '1971-08-07 23:53:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('72', '3', '37', 'Molestiae est hic non molestiae. Non quae facilis et soluta unde. Quos voluptatem illo voluptas qui voluptas aspernatur. Consequuntur repellat soluta natus magnam adipisci laboriosam debitis.', '1993-10-08 15:01:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('73', '56', '44', 'Laboriosam omnis veniam id tempora accusantium quidem. Assumenda et et et autem ad nihil non rerum. Dolore voluptas numquam et quasi blanditiis. Aut omnis velit ut tempore ut.', '2006-05-20 16:02:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('74', '73', '98', 'Quo dolorum enim et repellendus eius illo et. Eum aspernatur adipisci qui ut veritatis. Ratione quas cum voluptatem dolore voluptatem quia repellendus. Voluptates tempora distinctio voluptatum rerum dolores error laboriosam.', '2010-08-10 10:45:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('75', '86', '75', 'Et dolorem assumenda alias non ipsam autem omnis est. Eveniet omnis voluptas hic exercitationem quidem. Facere fugiat nesciunt consequatur eius minus quo. Quia fugit quam commodi sequi est fuga. Cupiditate quae molestiae tempore minus quia earum.', '2020-05-07 13:16:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('76', '33', '57', 'Velit quae et et pariatur quos eos. Sunt laborum placeat sint in quaerat corrupti beatae. Ducimus placeat at tenetur vel quia.', '1970-01-07 04:23:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('77', '42', '11', 'Voluptas vero voluptatibus error. Non asperiores aut soluta est. Et aut autem ea ut. Earum nobis quaerat adipisci. Consequatur suscipit aperiam ab impedit distinctio exercitationem et.', '2017-06-05 14:58:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('78', '64', '97', 'Numquam ut asperiores voluptatum voluptas quis doloribus sunt. Sit aut aut rerum officia. Non magnam est non officia. Occaecati perferendis et ducimus ut qui voluptate.', '1977-11-05 19:13:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('79', '92', '81', 'Dolore praesentium tempora inventore corrupti repudiandae odio explicabo. Ut consequuntur veniam magnam esse voluptate vel totam. Tempora quisquam aut corporis nobis. Esse laudantium repudiandae quae numquam atque debitis et nesciunt.', '2011-10-23 13:49:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('80', '20', '46', 'Enim temporibus officia necessitatibus quo aut reprehenderit. Non nesciunt reprehenderit necessitatibus nostrum expedita consequatur. Distinctio et libero possimus molestiae fugit est porro.', '2012-01-18 15:06:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('81', '69', '98', 'Omnis facilis voluptatibus voluptatem ex. Porro quisquam iste in sed doloribus ducimus qui dolor. Est magni illum quaerat quo facilis. Aut qui voluptatem facere officia.', '2000-05-20 20:37:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('82', '96', '5', 'Accusantium fugit ipsa dolore incidunt esse maiores ratione. Doloribus blanditiis eius aut mollitia. Mollitia officia quo voluptatem eum neque repudiandae sunt. Maiores ut iure est libero ex repellat dignissimos. Quam qui soluta id quae.', '2005-06-30 09:07:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('83', '33', '67', 'Necessitatibus nihil dolore totam qui mollitia modi officia. Laborum rerum inventore et qui quia fuga non. Adipisci in unde explicabo repudiandae et sed nobis. Dolorem qui aut qui a unde et. Adipisci aut est dolore eligendi dolor.', '1991-02-19 00:26:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('84', '96', '32', 'Harum officiis voluptas quos quia. Iure pariatur ea aut eum libero perferendis. Velit nesciunt autem in minus maxime.', '2004-10-29 21:58:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('85', '83', '80', 'Consequatur recusandae veritatis quia libero. Alias officiis debitis quis laborum. Vel fuga laboriosam ipsam.', '2017-12-27 02:48:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('86', '84', '92', 'Ipsum voluptate ex odio. Quae delectus qui commodi omnis dolor. Ipsa sunt pariatur voluptatum dolor vitae saepe. Et perspiciatis et tenetur maiores vel.', '1972-04-15 05:58:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('87', '32', '87', 'Corporis consequatur soluta quia illo recusandae ullam eveniet ipsa. Reprehenderit saepe numquam optio enim. Sed ut amet ut explicabo quidem.', '2009-05-24 13:56:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('88', '28', '87', 'Ratione impedit dicta blanditiis repellat. Perspiciatis ab est praesentium velit voluptatem dolorum tempore. Doloribus quae soluta hic officiis.', '2022-03-11 22:45:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('89', '30', '1', 'Quia molestiae blanditiis laborum omnis quidem pariatur adipisci. Et adipisci hic alias saepe. Nobis illo at ab tempora. Iusto beatae occaecati voluptatem assumenda qui aliquid. Velit laudantium aut reprehenderit.', '2020-02-02 22:54:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('90', '85', '16', 'Et dolorem et beatae dicta sint. Est molestiae consectetur repellendus ducimus ut illum. Dolores sit aut cum rerum. Architecto in qui ea.', '2013-07-07 06:02:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('91', '76', '17', 'Dolore et sequi nulla magnam omnis itaque aut. Quidem repellat maxime illum omnis et facilis ex quis. Pariatur et voluptatem repudiandae sapiente facere ea explicabo.', '1990-03-03 04:13:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('92', '72', '17', 'Aut minima corporis iusto. Qui quia incidunt non dolor ut et fugiat modi. Incidunt et nam et. Tempore quia consequatur aut nobis voluptatum dolorem atque dicta.', '1985-06-11 05:06:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('93', '28', '35', 'Et quisquam dolores libero nostrum cupiditate est. Ea porro qui iste repudiandae itaque illo recusandae. Est cupiditate excepturi nam blanditiis et voluptas id. Vel et omnis sunt voluptate.', '1982-08-02 03:38:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('94', '13', '20', 'Error quo dicta voluptatum repellat voluptas nobis ut. Nulla quo sed non dolores.', '1986-03-03 15:47:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('95', '16', '33', 'Quibusdam dolorem aut et maxime quis et. Dicta corrupti tenetur numquam ratione qui. Labore molestias molestias magni omnis eum.', '2017-06-20 08:27:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('96', '65', '85', 'Dolores dicta aliquid eos distinctio modi ut. Illo illo ad molestiae. Debitis esse sequi laboriosam eum explicabo adipisci quaerat.', '2006-05-18 15:25:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('97', '31', '60', 'Maxime exercitationem quas aut minima aut est. Ipsam nemo quo tempore ut iure sed. Eum modi vel commodi blanditiis quibusdam.', '1999-07-24 09:51:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('98', '90', '63', 'Quidem temporibus minima laborum mollitia officia est quia rerum. Voluptas quo dolores quia consequuntur amet aut esse ea. Nihil explicabo excepturi nihil tempora quas sunt animi.', '1981-09-01 20:45:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('99', '27', '85', 'Praesentium sunt tenetur odio. Perspiciatis non a et omnis cupiditate id. Sequi consequatur ex ut praesentium accusamus recusandae perferendis. Rerum ullam aut fugiat voluptatibus.', '1984-09-16 22:24:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('100', '95', '9', 'Ipsum id autem optio non dolorem consequatur unde mollitia. Omnis officiis dolorem nihil est dolorem deleniti.', '1985-06-15 12:15:12');


#
# TABLE STRUCTURE FOR: photo_albums
#

DROP TABLE IF EXISTS `photo_albums`;

CREATE TABLE `photo_albums` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `photo_albums_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('1', 'et', '1');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('2', 'et', '2');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('3', 'fuga', '3');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('4', 'quaerat', '4');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('5', 'incidunt', '5');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('6', 'est', '6');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('7', 'voluptatem', '7');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('8', 'saepe', '8');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('9', 'eius', '9');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('10', 'sint', '10');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('11', 'minima', '11');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('12', 'pariatur', '12');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('13', 'enim', '13');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('14', 'doloribus', '14');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('15', 'inventore', '15');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('16', 'non', '16');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('17', 'et', '17');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('18', 'est', '18');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('19', 'sit', '19');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('20', 'rerum', '20');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('21', 'et', '21');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('22', 'maiores', '22');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('23', 'ut', '23');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('24', 'molestiae', '24');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('25', 'mollitia', '25');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('26', 'iure', '26');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('27', 'eos', '27');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('28', 'sit', '28');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('29', 'soluta', '29');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('30', 'sit', '30');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('31', 'in', '31');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('32', 'a', '32');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('33', 'cum', '33');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('34', 'minus', '34');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('35', 'cupiditate', '35');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('36', 'dolorem', '36');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('37', 'tempore', '37');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('38', 'quo', '38');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('39', 'quasi', '39');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('40', 'repudiandae', '40');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('41', 'fugiat', '41');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('42', 'itaque', '42');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('43', 'velit', '43');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('44', 'fugit', '44');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('45', 'repudiandae', '45');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('46', 'nemo', '46');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('47', 'adipisci', '47');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('48', 'porro', '48');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('49', 'vel', '49');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('50', 'id', '50');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('51', 'aspernatur', '51');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('52', 'quod', '52');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('53', 'nihil', '53');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('54', 'cum', '54');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('55', 'voluptas', '55');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('56', 'doloremque', '56');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('57', 'nihil', '57');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('58', 'quae', '58');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('59', 'modi', '59');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('60', 'voluptas', '60');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('61', 'consequatur', '61');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('62', 'est', '62');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('63', 'veniam', '63');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('64', 'aliquid', '64');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('65', 'possimus', '65');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('66', 'molestiae', '66');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('67', 'aut', '67');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('68', 'soluta', '68');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('69', 'ut', '69');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('70', 'excepturi', '70');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('71', 'molestiae', '71');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('72', 'deleniti', '72');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('73', 'optio', '73');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('74', 'quibusdam', '74');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('75', 'quos', '75');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('76', 'fugiat', '76');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('77', 'fugiat', '77');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('78', 'consectetur', '78');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('79', 'dolorem', '79');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('80', 'impedit', '80');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('81', 'dicta', '81');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('82', 'debitis', '82');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('83', 'in', '83');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('84', 'aliquam', '84');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('85', 'et', '85');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('86', 'est', '86');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('87', 'accusamus', '87');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('88', 'repudiandae', '88');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('89', 'numquam', '89');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('90', 'perspiciatis', '90');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('91', 'non', '91');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('92', 'sint', '92');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('93', 'officia', '93');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('94', 'a', '94');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('95', 'quia', '95');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('96', 'quisquam', '96');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('97', 'ex', '97');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('98', 'tempora', '98');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('99', 'dicta', '99');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('100', 'illum', '100');


#
# TABLE STRUCTURE FOR: photos
#

DROP TABLE IF EXISTS `photos`;

CREATE TABLE `photos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `album_id` bigint(20) unsigned NOT NULL,
  `media_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `album_id` (`album_id`),
  KEY `media_id` (`media_id`),
  CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `photo_albums` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `photos_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('1', '83', '1');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2', '20', '2');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('3', '31', '3');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('4', '39', '4');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('5', '52', '5');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('6', '19', '6');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('7', '55', '7');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('8', '49', '8');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('9', '28', '9');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('10', '68', '10');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('11', '51', '11');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('12', '64', '12');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('13', '84', '13');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('14', '31', '14');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('15', '68', '15');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('16', '71', '16');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('17', '26', '17');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('18', '5', '18');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('19', '10', '19');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('20', '94', '20');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('21', '34', '21');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('22', '35', '22');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('23', '30', '23');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('24', '16', '24');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('25', '23', '25');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('26', '10', '26');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('27', '18', '27');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('28', '12', '28');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('29', '42', '29');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('30', '19', '30');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('31', '23', '31');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('32', '25', '32');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('33', '39', '33');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('34', '54', '34');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('35', '63', '35');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('36', '90', '36');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('37', '72', '37');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('38', '18', '38');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('39', '39', '39');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('40', '100', '40');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('41', '86', '41');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('42', '89', '42');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('43', '63', '43');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('44', '69', '44');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('45', '20', '45');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('46', '31', '46');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('47', '40', '47');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('48', '45', '48');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('49', '35', '49');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('50', '50', '50');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('51', '39', '51');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('52', '69', '52');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('53', '84', '53');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('54', '69', '54');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('55', '84', '55');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('56', '6', '56');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('57', '78', '57');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('58', '2', '58');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('59', '18', '59');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('60', '20', '60');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('61', '21', '61');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('62', '40', '62');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('63', '44', '63');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('64', '59', '64');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('65', '94', '65');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('66', '7', '66');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('67', '49', '67');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('68', '66', '68');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('69', '25', '69');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('70', '87', '70');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('71', '65', '71');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('72', '10', '72');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('73', '76', '73');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('74', '28', '74');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('75', '79', '75');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('76', '96', '76');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('77', '58', '77');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('78', '18', '78');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('79', '40', '79');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('80', '93', '80');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('81', '67', '81');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('82', '79', '82');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('83', '62', '83');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('84', '51', '84');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('85', '47', '85');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('86', '46', '86');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('87', '57', '87');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('88', '24', '88');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('89', '47', '89');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('90', '74', '90');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('91', '44', '91');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('92', '67', '92');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('93', '14', '93');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('94', '87', '94');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('95', '26', '95');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('96', '8', '96');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('97', '94', '97');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('98', '75', '98');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('99', '73', '99');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('100', '18', '100');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `photo_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `hometown` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_photo_id` (`photo_id`),
  CONSTRAINT `fk_photo_id` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('1', 'f', '1975-08-30', '1', '2014-08-07 01:24:19', 'Danniechester');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('2', 'm', '1976-10-02', '2', '1971-02-28 07:28:40', 'Vickieburgh');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('3', 'f', '2013-07-24', '3', '2010-05-07 10:47:40', 'New Johnpaulshire');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('4', 'f', '1999-05-28', '4', '1978-12-17 00:08:45', 'Lake Daronmouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('5', 'm', '1972-09-22', '5', '1986-02-14 19:44:07', 'New Linnieport');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('6', 'f', '1972-06-23', '6', '1999-02-19 08:34:46', 'Yundtview');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('7', 'f', '1977-10-22', '7', '2003-09-15 23:25:07', 'East Priscillashire');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('8', 'f', '2022-06-03', '8', '1972-09-05 08:29:14', 'North Evansview');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('9', 'm', '1992-05-22', '9', '1998-04-03 02:15:51', 'Kuhicmouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('10', 'f', '1973-10-28', '10', '1983-04-26 08:14:14', 'East Carleyfurt');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('11', 'm', '1970-08-13', '11', '2004-12-13 22:01:48', 'McGlynntown');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('12', 'm', '1970-10-06', '12', '1974-05-18 09:41:11', 'Aldenfurt');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('13', 'f', '2020-01-05', '13', '2007-09-20 18:11:49', 'Keeblermouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('14', 'm', '1998-01-16', '14', '1988-09-18 09:29:08', 'North Sam');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('15', 'f', '2009-08-24', '15', '1987-10-24 19:14:17', 'New Manuelfort');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('16', 'm', '1998-07-08', '16', '1995-10-17 15:31:54', 'Port Bettye');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('17', 'f', '2001-01-23', '17', '1982-08-27 23:19:16', 'Lake Alvera');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('18', 'f', '2009-07-13', '18', '1992-01-01 03:34:47', 'Lake Weldonborough');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('19', 'm', '1999-07-14', '19', '1992-05-13 00:09:40', 'Boyerberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('20', 'f', '1975-02-03', '20', '1986-10-31 09:35:06', 'Mosefort');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('21', 'm', '1975-05-08', '21', '1976-09-11 14:17:08', 'Felipefort');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('22', 'm', '2019-08-26', '22', '2018-11-30 22:14:11', 'Wardberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('23', 'f', '1990-10-13', '23', '2015-11-05 01:03:55', 'Wiegandfort');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('24', 'f', '1999-08-02', '24', '2008-12-03 11:18:58', 'Ellenchester');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('25', 'm', '2006-06-06', '25', '2009-09-26 23:41:46', 'West Lindsey');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('26', 'm', '2015-02-16', '26', '2017-08-06 08:10:10', 'East Jacintofort');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('27', 'm', '2016-02-04', '27', '1990-12-25 02:31:33', 'Lake Moshe');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('28', 'm', '2000-07-23', '28', '1981-09-28 15:45:16', 'East Reese');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('29', 'f', '2022-08-07', '29', '1981-04-10 04:35:24', 'Jonesfurt');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('30', 'm', '2003-11-16', '30', '1971-05-15 14:27:04', 'New Melodyfort');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('31', 'm', '2019-05-17', '31', '2016-05-15 20:50:40', 'New Oscarland');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('32', 'm', '1979-02-21', '32', '2007-04-26 23:28:55', 'Weissnatshire');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('33', 'f', '1973-01-08', '33', '2001-10-31 19:54:29', 'Modestafort');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('34', 'm', '1995-08-20', '34', '2004-12-03 17:47:22', 'Leslieside');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('35', 'f', '2002-03-07', '35', '2018-01-03 19:44:52', 'East Rowena');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('36', 'm', '1975-01-10', '36', '1976-01-01 11:38:11', 'New Justice');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('37', 'm', '1978-04-07', '37', '1971-02-10 04:58:11', 'Lindfort');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('38', 'f', '2003-11-10', '38', '1974-07-22 13:38:30', 'New Axel');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('39', 'm', '1996-08-24', '39', '2002-07-30 15:10:14', 'Timmothyburgh');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('40', 'm', '2012-08-07', '40', '2016-09-22 14:46:33', 'Port Shaunfurt');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('41', 'f', '2015-08-10', '41', '2004-12-24 04:08:57', 'East Monserrat');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('42', 'm', '2018-11-07', '42', '1989-03-26 21:02:40', 'Zenaton');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('43', 'f', '1970-09-02', '43', '1998-11-24 15:38:48', 'South Berthaton');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('44', 'm', '1970-01-21', '44', '1984-04-26 08:18:40', 'Lake Vaughn');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('45', 'm', '2011-11-16', '45', '2004-01-26 20:42:34', 'Dachberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('46', 'f', '2012-04-26', '46', '1992-06-30 05:14:26', 'Adalinechester');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('47', 'm', '2014-05-24', '47', '2000-12-22 06:59:30', 'West Aubreebury');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('48', 'm', '2021-01-27', '48', '2005-06-30 05:20:53', 'South Jasen');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('49', 'm', '1984-05-03', '49', '1997-01-30 21:38:02', 'Lake Cade');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('50', 'm', '2012-04-21', '50', '2015-10-16 18:18:49', 'Estherside');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('51', 'm', '1980-04-26', '51', '1970-07-05 09:06:51', 'Prohaskastad');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('52', 'f', '2006-03-07', '52', '2004-03-24 13:16:01', 'Mosciskiland');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('53', 'f', '2019-04-28', '53', '1986-01-23 18:06:37', 'Marlenfort');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('54', 'm', '1989-08-23', '54', '2000-08-13 02:49:04', 'Gaylordbury');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('55', 'f', '1989-08-06', '55', '2013-03-16 05:10:27', 'West Alexysport');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('56', 'm', '2017-01-18', '56', '1975-01-26 02:19:44', 'New Diontown');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('57', 'm', '2009-03-17', '57', '1997-01-25 01:39:28', 'Walterview');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('58', 'm', '1998-07-07', '58', '2010-12-30 03:25:37', 'East Rafael');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('59', 'm', '2009-01-20', '59', '1972-10-07 20:34:19', 'Gusberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('60', 'm', '2013-05-01', '60', '1974-09-06 08:56:51', 'Helenestad');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('61', 'f', '2020-03-15', '61', '1995-07-04 04:16:01', 'Shaniyabury');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('62', 'm', '1986-08-16', '62', '2021-02-01 10:05:45', 'North Waldo');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('63', 'm', '1977-08-22', '63', '1980-04-07 19:42:44', 'East Merle');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('64', 'm', '2005-09-11', '64', '2020-07-13 18:25:11', 'Kareemmouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('65', 'f', '2022-04-29', '65', '2010-08-06 23:26:31', 'Rashawnfurt');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('66', 'm', '1978-02-16', '66', '2012-10-11 19:36:31', 'South Victortown');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('67', 'f', '1980-08-22', '67', '1977-12-17 03:41:19', 'West Maxwellberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('68', 'f', '1994-08-28', '68', '2014-08-06 21:07:14', 'East Brown');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('69', 'f', '1998-11-08', '69', '2001-04-14 14:37:30', 'Lake Edwardoburgh');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('70', 'm', '1980-09-12', '70', '1980-01-24 16:34:04', 'Fisherside');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('71', 'f', '1970-12-28', '71', '2015-11-06 08:38:37', 'Jalonberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('72', 'm', '2011-07-14', '72', '2001-08-03 09:23:39', 'Handtown');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('73', 'f', '1979-03-01', '73', '1979-07-27 14:39:13', 'Mablemouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('74', 'f', '1980-02-28', '74', '1986-05-09 07:12:37', 'South Shanna');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('75', 'm', '1993-03-31', '75', '1994-08-10 10:22:24', 'Amirfort');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('76', 'm', '2014-07-10', '76', '2001-08-22 18:45:52', 'East Joaquin');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('77', 'f', '2014-08-18', '77', '2005-03-15 22:58:43', 'East Tyreeshire');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('78', 'm', '1994-12-21', '78', '1991-04-03 14:24:25', 'Vellaburgh');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('79', 'f', '2001-07-11', '79', '2005-06-28 06:09:15', 'North Harryhaven');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('80', 'f', '1978-06-05', '80', '2003-06-16 15:45:23', 'West Roselyn');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('81', 'f', '1977-10-25', '81', '1985-03-30 20:45:52', 'South Lenna');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('82', 'm', '2003-01-26', '82', '1979-04-09 23:56:51', 'West Kailey');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('83', 'f', '1982-03-04', '83', '1971-03-06 05:28:01', 'Micaelabury');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('84', 'm', '1971-05-27', '84', '2017-05-13 11:40:45', 'South Kaitlinbury');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('85', 'f', '1976-06-05', '85', '1981-12-18 19:54:41', 'North Jodieborough');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('86', 'f', '2015-02-18', '86', '2006-03-17 19:19:03', 'North Gloriaburgh');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('87', 'f', '2019-05-19', '87', '1980-11-30 20:54:47', 'Cletashire');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('88', 'm', '2009-01-10', '88', '1992-08-14 16:06:52', 'Lake Rose');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('89', 'f', '2016-11-08', '89', '1980-06-01 16:47:45', 'North Edna');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('90', 'm', '2015-03-24', '90', '1971-10-01 20:49:04', 'New Breanneberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('91', 'm', '1984-04-16', '91', '1993-08-24 08:37:18', 'Omastad');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('92', 'f', '2009-08-23', '92', '2010-07-12 06:17:12', 'North Toneymouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('93', 'm', '1999-03-28', '93', '1972-01-30 04:42:17', 'Erdmanfurt');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('94', 'm', '2012-08-27', '94', '1982-12-25 22:28:03', 'Watsicaland');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('95', 'm', '2017-08-08', '95', '1971-12-19 10:34:59', 'Monserratfurt');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('96', 'm', '1975-07-20', '96', '1987-06-09 23:55:34', 'Douglaschester');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('97', 'm', '1994-11-23', '97', '2007-11-14 16:28:34', 'Yeseniamouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('98', 'm', '2016-03-10', '98', '1988-05-22 10:07:47', 'East Christian');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('99', 'm', '2009-01-28', '99', '2000-12-03 14:01:44', 'Port Mossie');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('100', 'f', '1979-02-06', '100', '2005-08-06 20:58:38', 'Port Sharon');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Фамилия',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_hash` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `users_firstname_lastname_idx` (`firstname`,`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('1', 'Brittany', 'Witting', 'vmann@example.com', 'b40d55859a8640cd776ff2864b3ca367dac5d128', '55298500123', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('2', 'Aliza', 'Glover', 'junior56@example.com', '00c792f327f01f32d722bfb25ab740fba61dfb23', '44880768666', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('3', 'Ardella', 'Dicki', 'sconnelly@example.net', 'dab2f2bf6f4ee8858f83b62189754f99edd4e3b9', '67194053884', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('4', 'Boyd', 'Vandervort', 'cayla69@example.net', '30c07e038197718bf1d0ecc3b70fb965b20ad59b', '8140385068', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('5', 'Marcelina', 'Christiansen', 'jennie.kunde@example.org', '3bacde039a24a2c6fbb0fc1df5a6b5f8ea01b33b', '57366785488', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('6', 'Jay', 'Brown', 'zhermiston@example.com', '9d167a0f0c492d320ee3913c5ac9c386bb9ef52f', '84108236464', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('7', 'Frida', 'Champlin', 'tturner@example.com', 'c8457125e81fdf6a39f8cfb66f8b2eb7525927c3', '936653011', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('8', 'Cecile', 'Wyman', 'nicolas67@example.org', '0d1c7cf6f231df23d3c2add25c127f308296336a', '28545439588', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('9', 'Everett', 'Hilll', 'jdietrich@example.org', '2e9de8ae38d9ae91278071c4cc2ed9f329275d02', '87884920023', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('10', 'Hilbert', 'Barton', 'mara.friesen@example.net', 'f4c46821b9ebaede05b738431a530ca79d689845', '14813838443', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('11', 'Saul', 'Ullrich', 'boyle.vernon@example.net', '4f860d4b5335d16b5c0e08372c59a4e0456014bf', '74374464577', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('12', 'Pietro', 'Pouros', 'farrell.brent@example.com', 'f26700a2564e4b3aaa0949a67666f4074f927b19', '75412851485', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('13', 'Jenifer', 'Mann', 'chance.parker@example.org', '8df2d00b801cf181fbcef97a47e10408cb178afe', '71651168737', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('14', 'Georgianna', 'Heidenreich', 'therese.nitzsche@example.org', '902b9a0febee0cf91ab43aa93061ab82626671e0', '2965146278', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('15', 'Tyree', 'Deckow', 'gleason.elvis@example.org', '8fe23fa8b0341ab2ab95c6447efda8f8c4107a71', '7226130179', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('16', 'Leann', 'Beier', 'ehintz@example.com', '337dec2433db6b8f0305b314562c9edd0ad2611a', '26835819172', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('17', 'Teagan', 'Kris', 'brycen.bartell@example.org', 'b503862ca58a8f1c574b425ef104215396b766ce', '82597267278', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('18', 'Elian', 'Wolff', 'halle16@example.com', '84328e1634ccf2a663a074a8e9883012d01b1e5c', '86045420892', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('19', 'Sandra', 'Mraz', 'sawayn.bernie@example.org', '9be1587248dc6ac9d78e6208d9e2982e6b5f8fb0', '36996075628', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('20', 'Matilde', 'Fahey', 'quigley.oswald@example.org', '183889013581129aef9313041dff010e106b441e', '37042099985', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('21', 'Larue', 'Schultz', 'krajcik.jessy@example.net', '09e6077d76a2994868df176c2e1ed697bc07ff4a', '58669592419', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('22', 'Sylvan', 'McDermott', 'ondricka.adrien@example.net', 'ff38bc37881cc5a2fe788317eaab25525516255f', '4060869106', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('23', 'Joana', 'Kulas', 'annalise.becker@example.com', '1e792ed61d09724751662dce3b5d77468c1dd077', '49458091621', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('24', 'Collin', 'Kozey', 'imurray@example.org', 'e9734e3a39e98c23617e0101114dc8ea1e724b80', '21692547557', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('25', 'Carole', 'Nolan', 'gaylord.leonardo@example.net', '4bdac4b2625c3f7f1572d7817523baece0ab64d9', '5128723074', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('26', 'Roberto', 'Harris', 'drew51@example.org', 'c9d4fb56a66b77b62a32d64c981f0e1758a6edae', '14832757700', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('27', 'Damien', 'Keebler', 'cmiller@example.com', 'eb9199112f5d1cd4980ed65e26ac5a042f985f17', '56644758141', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('28', 'Raphael', 'Rutherford', 'little.barrett@example.com', 'e61011e27a96b91ca0d7207d7cf647fe67c0bf58', '51898981709', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('29', 'Magdalen', 'Ziemann', 'jameson33@example.org', '60f8a6bf5f1fd18040a2e2a0f7c886fc791d1987', '49944474103', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('30', 'Colin', 'Hills', 'abigail36@example.com', 'b830387b02d835501f9140c4fb157772d4eaaae1', '44895043007', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('31', 'Mark', 'Harvey', 'crystel.cassin@example.org', '6c137cd15a12970ed7713d7953f9ec334bb5b2df', '72379510777', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('32', 'Geovanni', 'Kovacek', 'igleichner@example.com', 'b45e3d6a58146f26fd1e4f001aac7c4130ed577e', '89166554538', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('33', 'Emanuel', 'Botsford', 'leuschke.corbin@example.net', 'd1656345deae62ee629676eb23adc48888eb099b', '73385744350', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('34', 'Lempi', 'Yundt', 'denesik.marisa@example.net', '0ecb3ddd6778229fe9cc878aad94f9e2727987d6', '3203240203', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('35', 'Abdullah', 'Quigley', 'devon71@example.com', 'a59ada27ae25e8c4a093484e394e7563a0983c6a', '9342890245', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('36', 'Evangeline', 'Rodriguez', 'clara71@example.net', '3a405ac3b41eb2dc870e4239db8601088819e9e7', '83888106914', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('37', 'Delia', 'Welch', 'jewel63@example.net', '2107362a80e8637ee30830e1a596ce54a66f51b6', '40741659891', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('38', 'Cathrine', 'Wunsch', 'ivy91@example.net', '14526f7bdd196883656e6548dc92a8e5f1823ce4', '15507989501', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('39', 'Raleigh', 'Shanahan', 'nelle86@example.org', '9b58a49b5662eb43969f74e52dfa7283e8f369b7', '44772326164', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('40', 'Lonnie', 'Smitham', 'kayden.wuckert@example.org', '4385f76c4bb657ea6669182a0b3b2731029c72cd', '5884780663', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('41', 'Ruby', 'Rice', 'diego67@example.org', '6508457aa058f34133b93802e056053a6152d4bc', '15975083188', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('42', 'Irwin', 'Orn', 'dpacocha@example.org', 'dc130621707aa840092e199e349a7da5a2b8ea38', '15231864319', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('43', 'Casper', 'Kshlerin', 'prince37@example.net', '7fa74cf1554dba3546e07513281983b10a0e324c', '13370636856', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('44', 'Annetta', 'Parker', 'smayer@example.net', '8ac4adf383633b408849d895fec221f8cc9b76b8', '30690985475', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('45', 'Madilyn', 'Lindgren', 'rozella94@example.org', 'd0ff7e5b045ade61831db0bc4a5fe3927dbfd557', '51031686484', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('46', 'Antonetta', 'Kris', 'minnie.pagac@example.net', '3c21b58495b6a87d4d45f1426d31b7ee9e8e8ef8', '52553397466', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('47', 'Jerod', 'Dietrich', 'swyman@example.net', '5b9edc704da88f79f009a7003a1cc3a954721d3d', '56192172060', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('48', 'Marietta', 'Champlin', 'treutel.lesly@example.org', '55f8e1bcccdf474c746713586da329302d8ebf78', '32016844644', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('49', 'Emmalee', 'Lynch', 'danny.gleason@example.org', '50363ae5b97f51e36b6adcddf8a2453b35decef5', '34696289773', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('50', 'Lia', 'Greenfelder', 'kheaney@example.net', 'e1e2c34177b5e70f2fd60eb65477116789e34877', '56464036831', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('51', 'Amari', 'Pouros', 'destin.stoltenberg@example.net', 'ec038e3c8ad5f898bf09012e722e61213b4255ab', '7182978795', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('52', 'Sabrina', 'McClure', 'jones.dan@example.com', '5f4c3a483c8fc78ea44e5e06e0aee3db24ac3177', '82379858143', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('53', 'Karlie', 'Kutch', 'schulist.sterling@example.net', 'd6ac5d9e2818a68dbb3bd05ecd01a54096f48e47', '62070758199', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('54', 'Taryn', 'West', 'davis.frances@example.org', '26a2d2d5fb9a160d8d7d5302e3cb3bb1e928d58d', '10934833888', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('55', 'Adrianna', 'Casper', 'bria.hahn@example.net', 'ddda644efef4fe1e55e219cd97f4665aa3fd030f', '32954413113', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('56', 'Ana', 'Hilpert', 'alexandro.dickens@example.net', '1f8b53eda261dc20a691b826aa2764be391a0173', '55354214162', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('57', 'Terence', 'Wuckert', 'hudson.lowell@example.net', '8464f08d8cc11573996069711a0b749824d6c4d8', '58588690989', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('58', 'Hayden', 'Waters', 'sawayn.sylvester@example.org', '8217449c43292ed97a784e5a049c2d8df08cd9d8', '37473278915', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('59', 'Eudora', 'Stark', 'johns.araceli@example.com', 'c61f2f579009a549478f10636ea78e954ddb3254', '70366460545', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('60', 'Eldora', 'Schmidt', 'wehner.gennaro@example.net', 'd569f1421ed6f91048b69acb821bc2da83d72399', '11239911236', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('61', 'Bart', 'Will', 'lonny.blick@example.net', 'd54778b1c9a5506f680e26478af220a16f83fc56', '70068815968', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('62', 'Viola', 'Ferry', 'erick80@example.net', '88ee76264ceb84638cdd406586fd17d1e6bb06c7', '76682844815', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('63', 'Johnson', 'Hilll', 'kelton22@example.net', '0a9e355610e419a3a9c3238de6aa120bdc4440d1', '23482988156', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('64', 'Clair', 'Boehm', 'howard42@example.net', '89303313c53f7ed9074bd2caba34d76d89c6e957', '6106286715', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('65', 'Keenan', 'Ryan', 'whowell@example.org', 'a8bcac98f488a219a11a53228bdc69396a9b640c', '63532535823', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('66', 'Juanita', 'Hahn', 'reuben.labadie@example.org', 'c8c7671adc92b0fe910d6c927b88e0a2106a4db6', '71798501736', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('67', 'Kaitlin', 'Gibson', 'dare.lilian@example.net', '6f25f3bbe1b6435c59a30f4c718f06ad1198d156', '37758016357', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('68', 'Irwin', 'Beier', 'hritchie@example.org', '9d712ae147a6db56c9bc39215e7427652e873b58', '40699333253', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('69', 'Nelda', 'Reichel', 'rhea.von@example.org', 'a491f3a0511ba808e4587233ae5268c06b866602', '69791539659', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('70', 'Erling', 'Kovacek', 'jamarcus.gottlieb@example.org', '341d9cb30af45b0ec2f639adc3a37d43fc11387f', '31338761726', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('71', 'Carleton', 'VonRueden', 'mbashirian@example.com', 'e092d8eb0d2e35bc2bc9e8e7c021bcb950f598b9', '42837729988', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('72', 'Dena', 'Rosenbaum', 'mariana.marvin@example.net', 'fdad2e45c3fe114ed247f17c06dae692b77bf518', '72295221282', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('73', 'Nash', 'Wiegand', 'karianne96@example.org', 'eaa51d63a6954a5a441fd667ffa1fce64f152bf0', '21807592771', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('74', 'Bert', 'Bogan', 'michele.kunze@example.net', '3cccfbaa37411550b944f3306c1bd22d0f9b5859', '7324555839', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('75', 'Dortha', 'Kessler', 'fgerlach@example.net', '75b23af862fdac821dbc7fb76bf10099bf0892ae', '42138505021', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('76', 'Zack', 'Goyette', 'krista.flatley@example.net', 'c8d7ee4948052a29b40d56ba2fcb245a2be98a66', '12192738639', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('77', 'Ofelia', 'Cassin', 'mckenzie.reanna@example.com', 'b9482003b0383b18261f425b2e249a9ca6963ba0', '71661421922', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('78', 'Kory', 'Waters', 'kiel60@example.net', '1f2afdb9246d2224893895a2269ac8913ba649e0', '11480156341', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('79', 'Mekhi', 'Pacocha', 'lucio46@example.com', '5bcb4a626e668010286adfa6b67bfa804b901729', '75217188975', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('80', 'Manuela', 'Homenick', 'zwilkinson@example.org', 'fcd31b7e12be8f747136847795e360480ab25a67', '72821773056', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('81', 'Nona', 'Watsica', 'reanna.heidenreich@example.net', '5a2ebf47c468f2a5880d79b87be449b209a5649b', '73662098520', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('82', 'Lionel', 'Fay', 'nfay@example.net', '4497b03780c25ce8b868b6b4f005d60c1eaa7be6', '61784628073', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('83', 'Yoshiko', 'Hintz', 'marquis.gaylord@example.org', 'c2c38f91de403872e66c106a26a7771cea4098c1', '26321105462', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('84', 'Mohammad', 'Lehner', 'crona.sierra@example.com', '701df3951cd23ddf4f784e3a9f59a6608267b295', '67697981096', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('85', 'Ike', 'King', 'marks.darby@example.org', 'f4e219953b11130d37588d2c60a8f2ba9a8cdf8d', '18483661896', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('86', 'Jovani', 'Wisozk', 'schultz.turner@example.org', 'f45de8f59ce985fd46bdb06ec414bbd59f5d3d78', '29982275265', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('87', 'Fausto', 'Wintheiser', 'abernathy.donnell@example.com', 'c8a0c9c4a8c4f558de7e71519eef0165536f5542', '43155279543', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('88', 'Talia', 'Champlin', 'jaeden.larkin@example.com', 'b5d5b486ea228179061643e14ebe91173294f45b', '80490157405', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('89', 'Ryder', 'Bauch', 'rhintz@example.net', '1ddb8d86fc9e0716a9c166b98de1359f8a86b7eb', '36055616454', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('90', 'Susanna', 'Fadel', 'hilpert.wilfred@example.org', '08f1cabf73dd77e25e7063dde62ba7ad0945652d', '13661425364', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('91', 'Edison', 'Greenholt', 'watson.marquardt@example.com', 'c6642fbf27e62e05b502e5751e4aa79b23983e8a', '80079853645', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('92', 'Mariam', 'O\'Connell', 'vincent.zemlak@example.org', '1e635db70999e208ccc32828cda6062685c1599c', '77232654296', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('93', 'Anthony', 'Gutmann', 'katharina.krajcik@example.org', '6443ee1e45f985d3d33418026bbe3010d3c47d06', '42161711988', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('94', 'Jordi', 'Vandervort', 'nannie.kunze@example.org', '69cce6db7b8bb048496ab4c95dac7293a91bde65', '52823992943', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('95', 'Akeem', 'Zieme', 'gvandervort@example.org', 'b7d2603e99b5085f9091de11c1f82c608edb8862', '12800718102', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('96', 'Casimer', 'Mayer', 'icronin@example.net', '3def4a8764c29b2acb79a60479c9bc6220f7f71b', '89096594876', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('97', 'Magdalen', 'Schowalter', 'jenkins.michele@example.com', '32b1d031673ad4c3dbdc45b9baedeaf47b906392', '83561306951', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('98', 'Walter', 'Wehner', 'braden27@example.org', 'e796b703327948162dd3a92e3fd8579b750f9993', '30154691014', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('99', 'Rebekah', 'Murray', 'wmckenzie@example.com', '1263e424adde4f6b52ba06709384c0810dd42de5', '20249785970', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('100', 'Sterling', 'Simonis', 'adooley@example.net', '50d7879c0c44090dcde9122efaf2f7fc2591e7cd', '8882098707', '1');


