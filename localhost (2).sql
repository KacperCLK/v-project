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
(73,	'11',	'123@wp.pl',	'sdf',	'2024-04-08 20:47:24',	'2024-04-08 20:47:24'),
(74,	'try_2',	'w@wp.pl',	'qwe',	'2024-04-21 21:17:23',	'2024-04-21 21:17:23'),
(75,	'123',	'23@wp.pl',	'123132',	'2024-04-22 19:40:58',	'2024-04-22 19:40:58'),
(76,	'11',	'1@wp.pl',	'123123123',	'2024-04-22 20:35:17',	'2024-04-22 20:35:17'),
(77,	'1',	'w@wp.pl',	'123',	'2024-04-22 20:52:17',	'2024-04-22 20:52:17'),
(78,	'try_2',	'w@wp.pl',	'123',	'2024-04-22 20:56:02',	'2024-04-22 20:56:02');

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
  `member_git_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `displaying` tinyint(1) NOT NULL,
  `member_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_short_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `members` (`id`, `member_name`, `member_image_url`, `vector_image_url`, `created_at`, `updated_at`, `member_git_link`, `displaying`, `member_color`, `member_short_desc`) VALUES
(1,	'Kacper',	'/images/members/member1_image.png',	'/images/members/Jebany_kot.png',	'2024-03-24 20:08:16',	'2024-03-24 20:08:16',	'https://github.com/',	1,	'#46D3E7',	'Short Description'),
(2,	'Bartłomiej',	'/images/members/member2_image.png',	'/images/members/Jebany_kot.png',	'2024-03-24 20:08:16',	'2024-03-24 20:08:16',	'https://github.com/',	1,	'#46D3E7',	'Short Description'),
(3,	'Ahmed',	'/images/members/member3_image.png',	'/images/members/Jebany_kot.png',	'2024-03-24 20:08:16',	'2024-03-24 20:08:16',	'https://github.com/',	0,	'#FFA200',	'Short Description'),
(4,	'Raj',	'/images/members/member3_image.png',	'/images/members/Jebany_kot.png',	'2024-03-24 20:08:16',	'2024-03-24 20:08:16',	'https://github.com/',	0,	'#FFA200',	'Short Description');

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
(7,	'2024_03_30_140753_create_customers_messages_table',	5),
(9,	'2024_04_28_182746_add_column_display_and_gitlink_to_members',	6),
(10,	'2024_04_28_183037_add_column_member_color_to_members',	6),
(12,	'2024_04_28_183738_add_column_short_desc_to_members',	7),
(13,	'2024_04_28_202207_create_our_works_table',	8),
(14,	'2024_04_28_212117_add_column_desc_and_bg_color_to_our_works',	9);

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

DROP TABLE IF EXISTS `our_works`;
CREATE TABLE `our_works` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `displaying` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bg_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `our_works` (`id`, `title`, `displaying`, `created_at`, `updated_at`, `description`, `bg_color`) VALUES
(1,	'natours',	1,	'2024-04-28 20:25:57',	'2024-04-28 20:25:57',	'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis, repudiandae.',	'#78eb4b'),
(2,	'trillo',	1,	'2024-04-28 20:26:31',	'2024-04-28 20:26:31',	'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis, repudiandae.',	'#eb2f2f'),
(3,	'nexter',	1,	'2024-05-02 18:28:20',	'2024-05-02 18:28:20',	'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis, repudiandae.',	'');

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
('0bDhzDXgv4YBQmA0BJmSRTBbbV4IMQr5z71gQ3Cy',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:125.0) Gecko/20100101 Firefox/125.0',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoid0JjeHlXeGZ1OXo4NEhHY1ZOMWd3bDZUSUZXajNlT0ZDVGhYZVRSViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC92cHJvamVjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',	1714682162),
('6wm4dSbFm6L5vYq1EB62KRacHuQG0fjX88EWim6b',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:125.0) Gecko/20100101 Firefox/125.0',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaE5Ma2hqbWhjcmhoQ1NtU1Uya1VCeHRGZGtOd3o5NmRFVWo1dkxsSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC92cHJvamVjdC9vdXItd29ya3MvbmF0b3VycyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',	1714679157),
('anhYMgt2qjjEF9AJ8vhirXLo10a9kN5MGbEI2xiL',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:125.0) Gecko/20100101 Firefox/125.0',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoibGczSzU2a3J2bTFCYlhJNloxUktBc3RlZlJsRlQ0ajlSbEpURU1mOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC92cHJvamVjdC9vdXItd29ya3MvbmF0b3VycyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',	1714680602),
('eFNkd5aqH4yBeQ3HT7Y9R34j8qmU9Z6fJnbNvLtS',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:125.0) Gecko/20100101 Firefox/125.0',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoidlh0MTFsbHRrbEV1c1FqQU9GVGNCNzVvdkcyaWN4cWY2aHlwcmtLUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC92cHJvamVjdC9vdXItd29ya3MvbmV4dGVyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',	1714682163),
('FlF4pFXRKEuFjzynG4PBwC8IEz1PJadINp1wGrXF',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:125.0) Gecko/20100101 Firefox/125.0',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVmpmVmdER2pFTzNoeVNjMk40dnRZWnhKWlhxOXU5dEp6RzdLSEhMdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC92cHJvamVjdC9vdXItd29ya3MvbmF0b3VycyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',	1714680407),
('ikDjG7GYftx8VbmkwyaxsIfJ7ZEjTuSB5YPWPikA',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:125.0) Gecko/20100101 Firefox/125.0',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSHV0TkQ2aTM1NVhzaE1QMzFMRVZGQkx1TDE2dlkyQzFVZHdYUHBtQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC92cHJvamVjdC9vdXItd29ya3MvdHJpbGxvIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',	1714680602),
('n5bkUOuV3idzJL9Iudk1JjiQdb4Q4k1O1NTo64nR',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:125.0) Gecko/20100101 Firefox/125.0',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZmpYU3pMRXFKcmNDSTJqSUkxbTVVSk1wSk90VmYxc09IamxPTFBuTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC92cHJvamVjdC9vdXItd29ya3MvdHJpbGxvIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',	1714682163),
('o2QrGK5EcPXRbD38fMAq8qgt9UANYA151T99Hq6s',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:125.0) Gecko/20100101 Firefox/125.0',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ0o0Q3VqNlYwTFNWWUQwVlJLZ2JYeDdtSkNBdWdGWTJPTDlUYlk5diI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC92cHJvamVjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',	1714680406),
('qSlew6ideEZK2QKfRgz6VLXUwHZzMtGmpJaSsktL',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:125.0) Gecko/20100101 Firefox/125.0',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT1RnUTc0ZU1kZkJVbHQ3ZHhDR0ZYOHpGTjlDbDZiNHQ4M2dZOGpSMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC92cHJvamVjdC9vdXItd29ya3MvbmV4dGVyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',	1714680406),
('Svxhxet8kwrfLpDI8wwoIdYytDTCidDVcA0CH78l',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:125.0) Gecko/20100101 Firefox/125.0',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRDB5SzlXdkt6eWlYemp5bTBFNUlkR2tnMnNZNm95d0N5ajVCSVZtRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC92cHJvamVjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',	1714680602),
('tnQkDo40eB4gGl8IJlVoW6tPZxn7h7WiKIrX3O0m',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:125.0) Gecko/20100101 Firefox/125.0',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTHlwbXFMU05wb1NrS1RvZ2RDQXlRUENvMXk0cmdNR0w5OUxvcVFZWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC92cHJvamVjdC9vdXItd29ya3MvbmF0b3VycyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',	1714682162),
('wHdYXWjBEwLcwLyhEOPcFvazlZpxsdbRZAqWEUD5',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:125.0) Gecko/20100101 Firefox/125.0',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRzk5c3NuU3Qxa0ttVnF0WUdXSWRCM1NpTzRIQ2NLZ0RoT01nYTBwTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC92cHJvamVjdC9vdXItd29ya3MvdHJpbGxvIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',	1714680406),
('X3Dsz1XhmXP4N2UQwTLrokBOQOoBOiGRmmH8TA8C',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:125.0) Gecko/20100101 Firefox/125.0',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRE1SbFpTamxPUkJnNW50eW4zc253cFFwV3BOaUNlZXR0OFhTQUFHcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC92cHJvamVjdC9vdXItd29ya3MvbmV4dGVyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',	1714685289),
('XSEGUKJifMQy23NNez0XD9RvCE9GNQEX6TKbhWAJ',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:125.0) Gecko/20100101 Firefox/125.0',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTGVlbkkyWXZaWnNOeHd1R1RoQ2dLY2I2RWtUeWZ4Sk14SXJsSXR4MiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC92cHJvamVjdC9vdXItd29ya3MvbmV4dGVyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',	1714680603);

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


-- 2024-05-06 21:29:54
