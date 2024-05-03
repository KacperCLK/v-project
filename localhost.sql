-- Adminer 4.8.1 MySQL 5.5.5-10.8.3-MariaDB-1:10.8.3+maria~jammy dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `customers_messages`;
CREATE TABLE `customers_messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `customers_messages` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(51,	'try_2',	'23@wp.pl',	'HUj wam do dupy',	'2024-03-31 00:03:27',	'2024-03-31 00:03:27'),
(52,	'1',	'1@wp.pl',	'221',	'2024-03-31 00:05:05',	'2024-03-31 00:05:05'),
(53,	'1',	'23@wp.pl',	'23',	'2024-03-31 00:05:32',	'2024-03-31 00:05:32'),
(54,	'11',	'23@wp.pl',	'dsf',	'2024-03-31 00:07:47',	'2024-03-31 00:07:47'),
(55,	'11',	'1@wp.pl',	'123',	'2024-03-31 17:08:35',	'2024-03-31 17:08:35'),
(56,	'1',	'w@wp.pl',	'123',	'2024-03-31 17:09:55',	'2024-03-31 17:09:55'),
(57,	'qew',	'qwe@wp.pl',	'qweqwe',	'2024-03-31 17:10:32',	'2024-03-31 17:10:32'),
(58,	'11',	'1@wp.pl',	'12',	'2024-03-31 17:12:35',	'2024-03-31 17:12:35'),
(59,	'123',	'23@wp.pl',	'1231232',	'2024-03-31 17:12:47',	'2024-03-31 17:12:47'),
(60,	'try_2',	'w@wp.pl',	'123',	'2024-03-31 17:15:20',	'2024-03-31 17:15:20'),
(61,	'1',	'23@wp.pl',	'12',	'2024-03-31 17:15:47',	'2024-03-31 17:15:47'),
(62,	'try_2',	'w@wp.pl',	'asd',	'2024-03-31 17:17:38',	'2024-03-31 17:17:38'),
(63,	'11',	'1@wp.pl',	'123',	'2024-03-31 17:18:30',	'2024-03-31 17:18:30'),
(64,	'try_2',	'23@wp.pl',	'1',	'2024-03-31 17:28:40',	'2024-03-31 17:28:40'),
(65,	'try_2',	'w@wp.pl',	'123',	'2024-03-31 17:39:19',	'2024-03-31 17:39:19'),
(66,	'123',	'123@wp.pl',	'123',	'2024-03-31 17:40:53',	'2024-03-31 17:40:53'),
(67,	'11',	'1@wp.pl',	'13',	'2024-03-31 17:42:09',	'2024-03-31 17:42:09'),
(68,	'11',	'1@wp.pl',	'333333333',	'2024-03-31 17:56:35',	'2024-03-31 17:56:35'),
(69,	'1',	'23@wp.pl',	'123123123123',	'2024-03-31 17:56:46',	'2024-03-31 17:56:46'),
(70,	'1',	'qwe@wp.pl',	'123',	'2024-03-31 17:57:04',	'2024-03-31 17:57:04'),
(71,	'12',	'1@wp.pl',	'123',	'2024-03-31 17:59:00',	'2024-03-31 17:59:00'),
(72,	'12',	'23@wp.pl',	'123',	'2024-03-31 17:59:30',	'2024-03-31 17:59:30'),
(73,	'11',	'123@wp.pl',	'sdf',	'2024-04-08 20:47:24',	'2024-04-08 20:47:24');

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `home_slider_imgs`;
CREATE TABLE `home_slider_imgs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `home_slider_imgs` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `home_slider_imgs` (`id`, `home_slider_imgs`, `created_at`, `updated_at`) VALUES
(1,	'/images/home-slider/1.png',	'2024-03-29 21:36:22',	'2024-03-29 21:36:22'),
(2,	'/images/home-slider/2.png',	'2024-03-29 21:36:29',	'2024-03-29 21:36:29'),
(3,	'/images/home-slider/3.png',	'2024-03-29 21:36:35',	'2024-03-29 21:36:35'),
(4,	'/images/home-slider/4.png',	'2024-03-29 21:36:40',	'2024-03-29 21:36:40'),
(5,	'/images/home-slider/5.png',	'2024-03-29 21:36:46',	'2024-03-29 21:36:46');

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `members`;
CREATE TABLE `members` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `member_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vector_image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `members` (`id`, `member_name`, `member_image_url`, `vector_image_url`, `created_at`, `updated_at`) VALUES
(1,	'Kacper',	'/images/members/member1_image.png',	'/images/members/Jebany_kot.png',	'2024-03-24 20:08:16',	'2024-03-24 20:08:16'),
(2,	'Bartłomiej',	'/images/members/member2_image.png',	'/images/members/Jebany_kot.png',	'2024-03-24 20:08:16',	'2024-03-24 20:08:16'),
(3,	'Ahmed',	'/images/members/member3_image.png',	'/images/members/Jebany_kot.png',	'2024-03-24 20:08:16',	'2024-03-24 20:08:16'),
(4,	'Raj',	'/images/members/member3_image.png',	'/images/members/Jebany_kot.png',	'2024-03-24 20:08:16',	'2024-03-24 20:08:16');

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1,	'0001_01_01_000000_create_users_table',	1),
(2,	'0001_01_01_000001_create_cache_table',	1),
(3,	'0001_01_01_000002_create_jobs_table',	1),
(4,	'2024_03_24_200522_create_members_table',	2),
(5,	'2024_03_25_191434_create_offer_table',	3),
(6,	'2024_03_29_213450_create_home_slider_table',	4),
(7,	'2024_03_30_140753_create_customers_messages_table',	5);

DROP TABLE IF EXISTS `offers`;
CREATE TABLE `offers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `offers` (`id`, `description`, `time`, `cost`, `created_at`, `updated_at`) VALUES
(1,	'Designing website.',	'2 to 7 b/d',	'2 to 20$',	'2024-03-25 19:16:27',	'2024-03-25 19:16:27'),
(2,	'Coding website on design provided by customer.',	'4 to 40$',	'2 to 7 b/d',	'2024-03-25 19:16:57',	'2024-03-25 19:16:57'),
(3,	'Hosting website provided by customer.',	'10+d.c. $',	'1 to 2 b/d',	'2024-03-25 19:17:25',	'2024-03-25 19:17:25'),
(4,	'Designing and coding website.',	'5 to 50$',	'3 to 12 b/d',	'2024-03-25 19:17:56',	'2024-03-25 19:17:56'),
(5,	'Designing, coding and hosting website.',	'5 to 50+d.c. $',	'4 to 14 b/d',	'2024-03-25 19:18:13',	'2024-03-25 19:18:13');

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('AdCFjpGEpxg65Xsr0ph04wCpeQLofwhDiI1BZFd5',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoicmc0N3VSWmpTN25UanM4eGpsTDMwUzAyZlExSEZnQjNUOFZKaU12cSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC92LXByb2plY3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',	1712609247),
('mPZgReGkfSbEsqAfxx9lRgegbWkwUBfmfgWKfyMx',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOU9kRFlIVWV1OTdLZmJBNVVRM1NPN2NRSXFFMHBJVjVwYkYzNnZqTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC92LXByb2plY3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',	1711987195);

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- 2024-04-12 21:48:37
