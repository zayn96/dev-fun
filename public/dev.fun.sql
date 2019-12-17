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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
	(9, '2019_12_06_063453_create_transactions_table', 1);
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

-- Dumping data for table dev.fun.oauth_access_tokens: ~10 rows (approximately)
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
	('2194535b06549d97ff5d87da886a87e901fe0dec77c7c2cb6d2402c0cf19a3df50dd84b038f6265f', 6, 2, 'MyApp', '[]', 0, '2019-12-16 09:33:32', '2019-12-16 09:33:32', '2020-12-16 09:33:32'),
	('558fec6295c7609b4a023eba314f6b3daf02feb65e1f42383988c492e317ba27f0c72ad23a6257d5', 10, 2, 'MyApp', '[]', 0, '2019-12-16 16:39:54', '2019-12-16 16:39:54', '2020-12-16 16:39:54'),
	('733ba9d162fb73a272af158403a1884056c10c42ca4e088adac26681096cfa3325a623795383e0d4', 8, 2, 'MyApp', '[]', 0, '2019-12-16 11:37:33', '2019-12-16 11:37:33', '2020-12-16 11:37:33'),
	('8dc3e0f941342062443e03e5bbb50de7f0d1dc990a2b246e24d600fb6f724959a6c5b29c93c72fa9', 6, 2, 'MyApp', '[]', 0, '2019-12-17 04:49:52', '2019-12-17 04:49:52', '2020-12-17 04:49:52'),
	('9c752e47bd2e991a2e88fbadc047f40b1e47a77455bb18b67b14c7b9a932d880e1d15f3e7e805f39', 7, 2, 'MyApp', '[]', 0, '2019-12-16 09:39:54', '2019-12-16 09:39:54', '2020-12-16 09:39:54'),
	('b6dea3140cbb1641678d2c24401d1a7cd48aaecc66a6a8b13abfa72d8185a734e1dc314de3d70c64', 8, 2, 'MyApp', '[]', 0, '2019-12-16 09:43:36', '2019-12-16 09:43:36', '2020-12-16 09:43:36'),
	('bbc05d7ff86f7a0ef29b23e677e22d63df107e17d60f1b78171ab7b613a3aaa15380e71dceca3c3a', 6, 2, 'MyApp', '[]', 0, '2019-12-17 05:42:36', '2019-12-17 05:42:36', '2020-12-17 05:42:36'),
	('bedf78ec8922ed69dd88b788e2076d4b0100f03fe69d4bcc6f5ddf32d9d1291dd6cad0ad14a2f1fe', 6, 2, 'MyApp', '[]', 0, '2019-12-16 16:46:41', '2019-12-16 16:46:41', '2020-12-16 16:46:41'),
	('d09b7c2363923561963e20ad5bfbcaa8a473d782b134a70259026bea44ec530faa3f8a5e84de3911', 8, 2, 'MyApp', '[]', 0, '2019-12-16 09:55:43', '2019-12-16 09:55:43', '2020-12-16 09:55:43'),
	('f3e02396de9162e6871a048ed1349553f68690f6c48ed5f3b0ddaca110146512d08becfbf6cb37c9', 8, 2, 'MyApp', '[]', 0, '2019-12-16 09:52:48', '2019-12-16 09:52:48', '2020-12-16 09:52:48');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dev.fun.oauth_clients: ~3 rows (approximately)
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
	(1, 1, 'zayn bett', 'LSAGU5CE5wtCeTTlr0iK0RkUEd3bQngVv4uc6Qs5', 'http://ilearn.test/transactions', 0, 0, 0, '2019-12-16 07:53:11', '2019-12-16 07:53:11'),
	(2, NULL, 'Laravel Personal Access Client', 'qgXkzvIu4oI1mkLQH0URRSmKANGLgDWIbjstslLp', 'http://localhost', 1, 0, 0, '2019-12-16 09:06:10', '2019-12-16 09:06:10'),
	(3, NULL, 'Laravel Password Grant Client', 'vAShkDBI09Wl9vnZzNrl30MH98gwxdz1mztpx1s8', 'http://localhost', 0, 1, 0, '2019-12-16 09:06:13', '2019-12-16 09:06:13'),
	(4, 3, 'zayn', 'SkSbJ5RFrm363pcUmAUbgk6J51hFIatuQIIjaGpv', 'http://dev.fun.test/api/transactions', 0, 0, 0, '2019-12-17 04:48:17', '2019-12-17 04:48:17');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;

-- Dumping structure for table dev.fun.oauth_personal_access_clients
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dev.fun.oauth_personal_access_clients: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
	(1, 2, '2019-12-16 09:06:12', '2019-12-16 09:06:12');
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
  `eSign` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mpesa_receipt_no` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `transactions_mpesa_receipt_no_unique` (`mpesa_receipt_no`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dev.fun.transactions: ~9 rows (approximately)
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` (`id`, `amount`, `eSign`, `mpesa_receipt_no`, `phone_number`, `username`, `name`, `email`) VALUES
	(1, 340000, 'dghnvszbxhjndsbxcmcsnjxz,mncjzm,cb', 'hy54tafgha', '+254725463577', '0725463477', 'john', 'd@gmail.com'),
	(2, 20000, 'djjxbcjd,xnbhjc,xnckdh xjc67webnmc', 'gt56af45ah', '+254725463544', '0725463544', 'zayn', 'zaynbett@test'),
	(5, 670000, 'hsdhbdhbfhjsbzmbfjsbfjbhsfhdjfbhdbvb', 'hydrthasra', '+254703965673', '0703965673', 'fathe', 'fathela@test.com'),
	(7, 670000, 'hsdhbdhbfhjsmbfjsbfjbhsfhdjfbhdbvb', 'hydrthaspu', '+254703965676', '0703965676', 'fathe', 'fathe@test.com'),
	(8, 670000, 'hsdhbdhrtfhjsmbfjsbfjbhsfhdjfbhdbvb', 'hydrthaypu', '+254703465676', '0703965776', 'fathe', 'jamesb@test.com'),
	(9, 210000, 'gdfsghjdgsdjhdvhzdghsdhwjsvcuwj', 'frdsderfdt', '+254722688109', '0722688109', 'vimal', 'vimal@email.com'),
	(13, 499900, 'gfvnvgncnvjm kihiljbvjgvbjkmvhjkv', 'gthymnfgyt', '+254722677109', '0722677109', 'bidco', 'bidco@email.com'),
	(17, 78000, 'gshyhsghajsbnxjhshsj', 'hygsrdfgat', '+254722655277', '0722655277', 'bravo', 'bravo@email.com'),
	(18, 78000, 'gshyhsghytfsbnxjhshsj', 'hygtgdfgat', '+254722666277', '0722666277', 'bravin', 'bravin@email.com');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dev.fun.users: ~5 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'dennis bett', 'bett@test.com', NULL, '$2y$10$47GgmK1BiZ7NnlchkiFd4e7sVxMEIy8XynQQXFiVs/jSiaOHRfJvG', NULL, '2019-12-16 08:52:17', '2019-12-16 08:52:17'),
	(3, 'zayn bett', 'zay@test.com', NULL, '$2y$10$j.yQSsnetqhHstljFDcQ0.cBNbXSZEbgBpydc/A1sU8bYjiLllIai', NULL, '2019-12-16 08:56:27', '2019-12-16 08:56:27'),
	(6, 'zayn bett', 'zaynbett@gmail.com', NULL, '$2y$10$d5h0DxxPnCzbc8MKEDzvK.RdN8roNNGE7Q2SuzOnejh/gnl.S80V.', NULL, '2019-12-16 09:31:51', '2019-12-16 09:31:51'),
	(7, 'kip kip', 'kipkip@test.com', NULL, '$2y$10$lqw/Sy.JSkVRjJuTVZ9UMuWEmX6HsEw2DM/lWSJP3bNGSx.rRI6HK', NULL, '2019-12-16 09:39:47', '2019-12-16 09:39:47'),
	(8, 'kimmy', 'kimkimmy@test.com', NULL, '$2y$10$t1uAz1cBjXwtwRp75r/XguBHlOlDY3MxHeMv4AHOHnjAQ38jAgmoG', NULL, '2019-12-16 09:43:34', '2019-12-16 09:43:34'),
	(10, 'zayn bett', 'zaynbett@gamil.com', NULL, '$2y$10$n5/aVFnoqJRuCAxlP7/osOKh1SmvYowe4rCSJS6vADRIiv7NR1NXK', NULL, '2019-12-16 16:39:43', '2019-12-16 16:39:43');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
