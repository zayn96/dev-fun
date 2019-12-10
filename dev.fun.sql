-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for dev.fun
CREATE DATABASE IF NOT EXISTS `dev.fun` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `dev.fun`;

-- Dumping structure for table dev.fun.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dev.fun.failed_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table dev.fun.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dev.fun.migrations: ~9 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
	(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
	(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
	(6, '2016_06_01_000004_create_oauth_clients_table', 1),
	(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
	(8, '2019_08_19_000000_create_failed_jobs_table', 1),
	(10, '2019_12_06_063453_create_transactions_table', 2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table dev.fun.oauth_access_tokens
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dev.fun.oauth_access_tokens: ~7 rows (approximately)
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
	('13f7889811d70f9031ee2ac1fa8037f5f32bc2fbfc69a0becf7a108460feb073d9b06f7d42733897', 4, 3, 'MyApp', '[]', 0, '2019-12-09 07:12:47', '2019-12-09 07:12:47', '2020-12-09 07:12:47'),
	('245797a4fe40c0834d78583a74fd0bfca2f000a9530f43200e618e370d117edaf0db084c5ac7a18b', 4, 3, 'MyApp', '[]', 0, '2019-12-05 07:32:20', '2019-12-05 07:32:20', '2020-12-05 07:32:20'),
	('49c16f37fb3e3832ce39524ffdeae4f41b630d43ff95205dde328fbda49578508136fa49b477004b', 3, 3, 'MyApp', '[]', 0, '2019-12-05 06:34:14', '2019-12-05 06:34:14', '2020-12-05 06:34:14'),
	('589f7b5048e2ab60a358d3a65143a8c9c908f0f354c68676f925982412d9f5d9238a39a740ca97a2', 4, 3, 'MyApp', '[]', 0, '2019-12-09 06:47:54', '2019-12-09 06:47:54', '2020-12-09 06:47:54'),
	('5eae3dc841e69ceb3b272d3d2033d586087bb91860a74055c23ac1e56ed734395944a9003ab9389b', 4, 3, 'MyApp', '[]', 0, '2019-12-09 07:14:30', '2019-12-09 07:14:30', '2020-12-09 07:14:30'),
	('77b8c040ce1915c3dc10239921f3426723d31bf41f9784a66f9b5f69c03901d0a007b42425f16cab', 4, 3, 'MyApp', '[]', 0, '2019-12-05 09:34:29', '2019-12-05 09:34:29', '2020-12-05 09:34:29'),
	('7bbff701438dad2d0ae1df6a439e6c774d2bfed4905906a9a854703bdba4db8462a40ffc863b07a0', 5, 3, 'MyApp', '[]', 0, '2019-12-09 06:46:29', '2019-12-09 06:46:29', '2020-12-09 06:46:29'),
	('c819363eda49b572756b0982d071defeff7c2bbe4fde9baed721a3244f8c4c9e1b5cba162ca4f0cb', 4, 3, 'MyApp', '[]', 0, '2019-12-05 07:59:28', '2019-12-05 07:59:28', '2020-12-05 07:59:28');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;

-- Dumping structure for table dev.fun.oauth_auth_codes
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dev.fun.oauth_auth_codes: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;

-- Dumping structure for table dev.fun.oauth_clients
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dev.fun.oauth_clients: ~7 rows (approximately)
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
	(1, NULL, 'Laravel Personal Access Client', 'mT8SWaAy6ZTYC3Zt28pq2JrTYUTOVHV8VqJx6AXX', 'http://localhost', 1, 0, 0, '2019-12-03 09:39:41', '2019-12-03 09:39:41'),
	(2, NULL, 'Laravel Password Grant Client', 'kmoGfAj76NZDYIZFHTDxP9cLMtyjBFOpTKVAxSSm', 'http://localhost', 0, 1, 0, '2019-12-03 09:39:42', '2019-12-03 09:39:42'),
	(3, NULL, 'Laravel Personal Access Client', 'Fqmsk8haiTTV55q12sdkfwvlXIoHuffyHISRbHrz', 'http://localhost', 1, 0, 0, '2019-12-05 06:09:56', '2019-12-05 06:09:56'),
	(4, NULL, 'Laravel Password Grant Client', 'oywGvsBAEiUIi2uEdJGfwBMRx9XSXO1USXGO3WSH', 'http://localhost', 0, 1, 0, '2019-12-05 06:10:09', '2019-12-05 06:10:09'),
	(5, 4, 'zayn kiprotich', 'xtnLOKDfBdXfcHYBNs3kBAHwJMh3uSuTOoUKaYDn', 'http://dev.fun.test/api/transactions', 0, 0, 0, '2019-12-05 09:30:14', '2019-12-05 09:30:14'),
	(6, 7, 'Password Grant', 'vAUnZhEZIapSnSQSjdWwxukro2MrkswF7PnaeEUj', 'http://localhost', 0, 1, 0, '2019-12-09 09:51:46', '2019-12-09 09:51:46'),
	(7, 8, 'Password Grant', 'rczwtpMKkH2MhYhlGL4EcyD8O1jfdCkdvJ4lCCkX', 'http://localhost', 0, 1, 0, '2019-12-09 12:48:42', '2019-12-09 12:48:42');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;

-- Dumping structure for table dev.fun.oauth_personal_access_clients
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dev.fun.oauth_personal_access_clients: ~2 rows (approximately)
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
	(1, 1, '2019-12-03 09:39:41', '2019-12-03 09:39:41'),
	(2, 3, '2019-12-05 06:10:09', '2019-12-05 06:10:09');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;

-- Dumping structure for table dev.fun.oauth_refresh_tokens
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dev.fun.oauth_refresh_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;

-- Dumping structure for table dev.fun.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dev.fun.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table dev.fun.transactions
CREATE TABLE IF NOT EXISTS `transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `amount` bigint(20) NOT NULL,
  `eSign` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mpesa_receipt_no` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `transactions_esign_unique` (`eSign`),
  UNIQUE KEY `transactions_mpesa_receipt_no_unique` (`mpesa_receipt_no`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dev.fun.transactions: ~2 rows (approximately)
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` (`id`, `amount`, `eSign`, `mpesa_receipt_no`, `phone_number`, `username`, `name`, `email`) VALUES
	(1, 7878754, 'kjhgfdsdfjklkjhgfdgjkuytrfdrhbdhnjhgfdvbnv', 'sdfghttrdf', '098734437', 'john', 'johnny', 'johny@email.com'),
	(2, 123456, 'jhgfvbmnjd,jncfhjfmjnckmsjdshcjdhfgchjdcbjhbdhj', 'erfaghtsdt', '0703965673', 'zayn', 'zaynbett', 'zayn@email.com'),
	(3, 123456, 'jhgfvbmnjdyfncfhjfmjnckmsjdshcjdhfgchjdcbjhbdhj', 'erfaghjudt', '0703965873', 'zayn', 'zaynbett', 'zayn@email.com');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;

-- Dumping structure for table dev.fun.users
CREATE TABLE IF NOT EXISTS `users` (
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dev.fun.users: ~6 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'zayn bett', 'z@gmail.com', NULL, '$2y$10$shYg.FDo4OwsYnoM0Cyd5eYe9zMeSGNCzlJQKga4ZZILxBtd0DEVK', NULL, '2019-12-04 08:02:19', '2019-12-04 08:02:19'),
	(3, 'zayn b', 'b@gmail.com', NULL, '$2y$10$h3pvBlb8avS6MEggsePvYuKbkwQYQPEHOLfeBXwFEOZzeI3wy9Jxi', NULL, '2019-12-05 06:33:41', '2019-12-05 06:33:41'),
	(4, 'zayn kip', 'denno@gmail.com', NULL, '$2y$10$p5JpNK6Rd.ceGc9HKfdJne9oloJ/FzjPrfiBenFZIBhBRyg/ZLV.K', NULL, '2019-12-05 07:32:13', '2019-12-05 07:32:13'),
	(5, 'bravin b', 'bravinb@gmail.com', NULL, '$2y$10$.wIfTffUQLxZ940/PSbYFO2UCkXJDPhi6MW3JLwtcUe32H9FVAExq', NULL, '2019-12-09 06:46:09', '2019-12-09 06:46:09'),
	(7, 'zayn bett', 'bettdennis48@gmail.com', NULL, '$2y$10$9lcU5R6svuqy0tkEE6BWj.vIpub5v09opwmlAz8eWVw/mWqMHGVlS', NULL, '2019-12-09 09:51:46', '2019-12-09 09:51:46'),
	(8, 'zayn kip', 'kimkimmy@test', NULL, '$2y$10$e5lXuLOYL66oV218kkTfR.dwrlPCtTDu1H5B4Q3Pt4w7GBVhdtSfa', NULL, '2019-12-09 12:48:41', '2019-12-09 12:48:41');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
