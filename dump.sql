-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: laravelAuth
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`),
  CONSTRAINT `activations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laravel2step`
--

DROP TABLE IF EXISTS `laravel2step`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laravel2step` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(10) unsigned NOT NULL,
  `authCode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authCount` int(11) NOT NULL,
  `authStatus` tinyint(1) NOT NULL DEFAULT '0',
  `authDate` datetime DEFAULT NULL,
  `requestDate` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `laravel2step_userid_index` (`userId`),
  CONSTRAINT `laravel2step_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laravel2step`
--

LOCK TABLES `laravel2step` WRITE;
/*!40000 ALTER TABLE `laravel2step` DISABLE KEYS */;
/*!40000 ALTER TABLE `laravel2step` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laravel_logger_activity`
--

DROP TABLE IF EXISTS `laravel_logger_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laravel_logger_activity` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `userType` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `route` longtext COLLATE utf8mb4_unicode_ci,
  `ipAddress` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userAgent` text COLLATE utf8mb4_unicode_ci,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` longtext COLLATE utf8mb4_unicode_ci,
  `methodType` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laravel_logger_activity`
--

LOCK TABLES `laravel_logger_activity` WRITE;
/*!40000 ALTER TABLE `laravel_logger_activity` DISABLE KEYS */;
INSERT INTO `laravel_logger_activity` VALUES (1,'Viewed social/redirect/google','Guest',NULL,'http://127.0.0.1:8000/social/redirect/google','127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/64.0.3282.167 Chrome/64.0.3282.167 Safari/537.36','en-US,en;q=0.9','http://127.0.0.1:8000/login','GET','2018-03-30 22:43:10','2018-03-30 22:43:10',NULL),(2,'Viewed social/redirect/google','Guest',NULL,'http://127.0.0.1:8000/social/redirect/google','127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/64.0.3282.167 Chrome/64.0.3282.167 Safari/537.36','en-US,en;q=0.9','http://127.0.0.1:8000/register','GET','2018-03-30 22:44:14','2018-03-30 22:44:14',NULL),(3,'Viewed social/redirect/facebook','Guest',NULL,'http://127.0.0.1:8000/social/redirect/facebook','127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/64.0.3282.167 Chrome/64.0.3282.167 Safari/537.36','en-US,en;q=0.9','http://127.0.0.1:8000/register','GET','2018-03-30 22:44:17','2018-03-30 22:44:17',NULL),(4,'Viewed social/redirect/google','Guest',NULL,'http://127.0.0.1:8000/social/redirect/google','127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/64.0.3282.167 Chrome/64.0.3282.167 Safari/537.36','en-US,en;q=0.9','http://127.0.0.1:8000/register','GET','2018-03-30 22:44:20','2018-03-30 22:44:20',NULL),(5,'Viewed social/redirect/google','Guest',NULL,'http://127.0.0.1:8000/social/redirect/google','127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/64.0.3282.167 Chrome/64.0.3282.167 Safari/537.36','en-US,en;q=0.9','http://127.0.0.1:8000/register','GET','2018-03-30 22:44:54','2018-03-30 22:44:54',NULL),(6,'Viewed social/redirect/google','Guest',NULL,'http://127.0.0.1:8000/social/redirect/google','127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/64.0.3282.167 Chrome/64.0.3282.167 Safari/537.36','en-US,en;q=0.9','http://127.0.0.1:8000/login','GET','2018-03-30 22:46:57','2018-03-30 22:46:57',NULL),(7,'Viewed social/redirect/google','Guest',NULL,'http://127.0.0.1:8000/social/redirect/google','127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/64.0.3282.167 Chrome/64.0.3282.167 Safari/537.36','en-US,en;q=0.9','http://127.0.0.1:8000/login','GET','2018-03-30 22:55:12','2018-03-30 22:55:12',NULL),(8,'Viewed social/redirect/google','Guest',NULL,'http://127.0.0.1:8000/social/redirect/google','127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/64.0.3282.167 Chrome/64.0.3282.167 Safari/537.36','en-US,en;q=0.9',NULL,'GET','2018-03-30 23:07:10','2018-03-30 23:07:10',NULL),(9,'Viewed social/redirect/google','Guest',NULL,'http://site.us/social/redirect/google','127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/64.0.3282.167 Chrome/64.0.3282.167 Safari/537.36','en-US,en;q=0.9','http://site.us/login','GET','2018-03-30 23:19:02','2018-03-30 23:19:02',NULL),(10,'Viewed social/handle/google','Guest',NULL,'http://site.us/social/handle/google?authuser=0&code=4%2FAACV40PqLZPbkg3h8zqaUQqDx8w6zzmgwzyCrq8i72nD4bEkBp2c0Aqfww0vOtlPepVVC3iBriBrZ9exFesqnZs&prompt=consent&session_state=ed211b11d06b2c57b1f3f2937ce353a506993f0d..3133&state=0nFRZvQrlJXYcD2zJjdNVWGt2WwzNgyGjDEmNF4k','127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/64.0.3282.167 Chrome/64.0.3282.167 Safari/537.36','en-US,en;q=0.9',NULL,'GET','2018-03-30 23:19:03','2018-03-30 23:19:03',NULL),(11,'Viewed social/handle/google','Guest',NULL,'http://site.us/social/handle/google?authuser=0&code=4%2FAACV40PqLZPbkg3h8zqaUQqDx8w6zzmgwzyCrq8i72nD4bEkBp2c0Aqfww0vOtlPepVVC3iBriBrZ9exFesqnZs&prompt=consent&session_state=ed211b11d06b2c57b1f3f2937ce353a506993f0d..3133&state=0nFRZvQrlJXYcD2zJjdNVWGt2WwzNgyGjDEmNF4k','127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/64.0.3282.167 Chrome/64.0.3282.167 Safari/537.36','en-US,en;q=0.9',NULL,'GET','2018-03-30 23:20:19','2018-03-30 23:20:19',NULL),(12,'Viewed social/handle/google','Guest',NULL,'http://site.us/social/handle/google?authuser=0&code=4%2FAACV40PqLZPbkg3h8zqaUQqDx8w6zzmgwzyCrq8i72nD4bEkBp2c0Aqfww0vOtlPepVVC3iBriBrZ9exFesqnZs&prompt=consent&session_state=ed211b11d06b2c57b1f3f2937ce353a506993f0d..3133&state=0nFRZvQrlJXYcD2zJjdNVWGt2WwzNgyGjDEmNF4k','127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/64.0.3282.167 Chrome/64.0.3282.167 Safari/537.36','en-US,en;q=0.9',NULL,'GET','2018-03-30 23:20:23','2018-03-30 23:20:23',NULL),(13,'Viewed social/redirect/google','Guest',NULL,'http://site.us/social/redirect/google','127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/64.0.3282.167 Chrome/64.0.3282.167 Safari/537.36','en-US,en;q=0.9','http://site.us/login','GET','2018-03-30 23:20:32','2018-03-30 23:20:32',NULL),(14,'Viewed social/handle/google','Guest',NULL,'http://site.us/social/handle/google?authuser=0&code=4%2FAADy1Fbha6T0MS38QqW-y6OjBQoHyF8ElLI0kRdr704w5rO6zpR_oGLl5ia26B_wB-_Z2Eq1Zbq5HFI3s5gGMUg&prompt=none&session_state=ed211b11d06b2c57b1f3f2937ce353a506993f0d..3133&state=xudItp9TijG4UyWkHAOnemw5IAF08Cb5HlOWjVbX','127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/64.0.3282.167 Chrome/64.0.3282.167 Safari/537.36','en-US,en;q=0.9',NULL,'GET','2018-03-30 23:20:34','2018-03-30 23:20:34',NULL),(15,'Viewed social/handle/google','Guest',NULL,'http://site.us/social/handle/google?authuser=0&code=4%2FAADy1Fbha6T0MS38QqW-y6OjBQoHyF8ElLI0kRdr704w5rO6zpR_oGLl5ia26B_wB-_Z2Eq1Zbq5HFI3s5gGMUg&prompt=none&session_state=ed211b11d06b2c57b1f3f2937ce353a506993f0d..3133&state=xudItp9TijG4UyWkHAOnemw5IAF08Cb5HlOWjVbX','127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/64.0.3282.167 Chrome/64.0.3282.167 Safari/537.36','en-US,en;q=0.9',NULL,'GET','2018-03-30 23:23:20','2018-03-30 23:23:20',NULL),(16,'Viewed social/redirect/google','Guest',NULL,'http://site.us/social/redirect/google','127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/64.0.3282.167 Chrome/64.0.3282.167 Safari/537.36','en-US,en;q=0.9','http://site.us/login','GET','2018-03-30 23:23:26','2018-03-30 23:23:26',NULL),(17,'Viewed social/handle/google','Guest',NULL,'http://site.us/social/handle/google?authuser=0&code=4%2FAAD-roGYykOOTyKnKMeeLL6vIrul0HctNKDnC-K2talTvg5_ffd1RLKaqZoUPpvZ9z3N4x-wGvmUC7AIbDwxTfg&prompt=none&session_state=ed211b11d06b2c57b1f3f2937ce353a506993f0d..3133&state=vSP92duxewUTmCCTNKSS1pbF1XwvmbeLAUYR8Wc5','127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/64.0.3282.167 Chrome/64.0.3282.167 Safari/537.36','en-US,en;q=0.9',NULL,'GET','2018-03-30 23:23:27','2018-03-30 23:23:27',NULL),(18,'Viewed social/redirect/google','Guest',NULL,'http://site.us/social/redirect/google','127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/64.0.3282.167 Chrome/64.0.3282.167 Safari/537.36','en-US,en;q=0.9','http://site.us/login','GET','2018-03-30 23:27:22','2018-03-30 23:27:22',NULL),(19,'Viewed social/handle/google','Guest',NULL,'http://site.us/social/handle/google?authuser=0&code=4%2FAAC1wDCTut7Lo5fLuiDD3blpqebUiNPf7fg1FEmHo8pCRQ40Cq-Ki-1JB1-YS0bP4XHVGliTwnZemhWuVvPIVoo&prompt=none&session_state=ed211b11d06b2c57b1f3f2937ce353a506993f0d..3133&state=lMLx35e9Ks3J610zQepc1G6hNfBeD5plsHUWwP14','127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/64.0.3282.167 Chrome/64.0.3282.167 Safari/537.36','en-US,en;q=0.9',NULL,'GET','2018-03-30 23:27:25','2018-03-30 23:27:25',NULL),(20,'Logged In','Registered',3,'http://site.us/social/handle/google?authuser=0&code=4%2FAAC1wDCTut7Lo5fLuiDD3blpqebUiNPf7fg1FEmHo8pCRQ40Cq-Ki-1JB1-YS0bP4XHVGliTwnZemhWuVvPIVoo&prompt=none&session_state=ed211b11d06b2c57b1f3f2937ce353a506993f0d..3133&state=lMLx35e9Ks3J610zQepc1G6hNfBeD5plsHUWwP14','127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/64.0.3282.167 Chrome/64.0.3282.167 Safari/537.36','en-US,en;q=0.9',NULL,'GET','2018-03-30 23:27:26','2018-03-30 23:27:26',NULL),(21,'Viewed home','Registered',3,'http://site.us/home','127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/64.0.3282.167 Chrome/64.0.3282.167 Safari/537.36','en-US,en;q=0.9',NULL,'GET','2018-03-30 23:27:26','2018-03-30 23:27:26',NULL),(22,'Viewed profile/JeffIsaacs','Registered',3,'http://site.us/profile/JeffIsaacs','127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/64.0.3282.167 Chrome/64.0.3282.167 Safari/537.36','en-US,en;q=0.9','http://site.us/home','GET','2018-03-30 23:27:32','2018-03-30 23:27:32',NULL),(23,'Viewed profile/JeffIsaacs/edit','Registered',3,'http://site.us/profile/JeffIsaacs/edit','127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/64.0.3282.167 Chrome/64.0.3282.167 Safari/537.36','en-US,en;q=0.9','http://site.us/profile/JeffIsaacs','GET','2018-03-30 23:27:39','2018-03-30 23:27:39',NULL);
/*!40000 ALTER TABLE `laravel_logger_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_15_105324_create_roles_table',1),(4,'2016_01_15_114412_create_role_user_table',1),(5,'2016_01_26_115212_create_permissions_table',1),(6,'2016_01_26_115523_create_permission_role_table',1),(7,'2016_02_09_132439_create_permission_user_table',1),(8,'2017_03_09_082449_create_social_logins_table',1),(9,'2017_03_09_082526_create_activations_table',1),(10,'2017_03_20_213554_create_themes_table',1),(11,'2017_03_21_042918_create_profiles_table',1),(12,'2017_11_04_103444_create_laravel_logger_activity_table',1),(13,'2017_12_09_070937_create_two_step_auth_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1,1,'2018-03-30 22:09:28','2018-03-30 22:09:28'),(2,2,1,'2018-03-30 22:09:28','2018-03-30 22:09:28'),(3,3,1,'2018-03-30 22:09:28','2018-03-30 22:09:28'),(4,4,1,'2018-03-30 22:09:29','2018-03-30 22:09:29');
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_user`
--

DROP TABLE IF EXISTS `permission_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permission_user_permission_id_index` (`permission_id`),
  KEY `permission_user_user_id_index` (`user_id`),
  CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_user`
--

LOCK TABLES `permission_user` WRITE;
/*!40000 ALTER TABLE `permission_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `permission_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'Can View Users','view.users','Can view users','Permission','2018-03-30 22:09:28','2018-03-30 22:09:28'),(2,'Can Create Users','create.users','Can create new users','Permission','2018-03-30 22:09:28','2018-03-30 22:09:28'),(3,'Can Edit Users','edit.users','Can edit users','Permission','2018-03-30 22:09:28','2018-03-30 22:09:28'),(4,'Can Delete Users','delete.users','Can delete users','Permission','2018-03-30 22:09:28','2018-03-30 22:09:28');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `theme_id` int(10) unsigned NOT NULL DEFAULT '1',
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `twitter_username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github_username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profiles_theme_id_foreign` (`theme_id`),
  KEY `profiles_user_id_index` (`user_id`),
  CONSTRAINT `profiles_theme_id_foreign` FOREIGN KEY (`theme_id`) REFERENCES `themes` (`id`),
  CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,1,1,NULL,NULL,NULL,NULL,NULL,0,'2018-03-30 22:09:29','2018-03-30 22:09:29'),(2,2,1,NULL,NULL,NULL,NULL,NULL,0,'2018-03-30 22:09:29','2018-03-30 22:09:29'),(3,3,1,NULL,NULL,NULL,NULL,NULL,0,'2018-03-30 23:27:26','2018-03-30 23:27:26');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_user_role_id_index` (`role_id`),
  KEY `role_user_user_id_index` (`user_id`),
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user`
--

LOCK TABLES `role_user` WRITE;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` VALUES (1,1,1,'2018-03-30 22:09:29','2018-03-30 22:09:29'),(2,2,2,'2018-03-30 22:09:29','2018-03-30 22:09:29'),(3,2,3,'2018-03-30 23:27:26','2018-03-30 23:27:26');
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin','admin','Admin Role',5,'2018-03-30 22:09:28','2018-03-30 22:09:28'),(2,'User','user','User Role',1,'2018-03-30 22:09:28','2018-03-30 22:09:28'),(3,'Unverified','unverified','Unverified Role',0,'2018-03-30 22:09:28','2018-03-30 22:09:28');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_logins`
--

DROP TABLE IF EXISTS `social_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_logins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `provider` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `social_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `social_logins_user_id_index` (`user_id`),
  CONSTRAINT `social_logins_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_logins`
--

LOCK TABLES `social_logins` WRITE;
/*!40000 ALTER TABLE `social_logins` DISABLE KEYS */;
INSERT INTO `social_logins` VALUES (1,3,'google','108689751832793979667','2018-03-30 23:27:26','2018-03-30 23:27:26');
/*!40000 ALTER TABLE `social_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `themes`
--

DROP TABLE IF EXISTS `themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `themes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `taggable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taggable_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `themes_name_unique` (`name`),
  UNIQUE KEY `themes_link_unique` (`link`),
  KEY `themes_taggable_type_taggable_id_index` (`taggable_type`,`taggable_id`),
  KEY `themes_id_index` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `themes`
--

LOCK TABLES `themes` WRITE;
/*!40000 ALTER TABLE `themes` DISABLE KEYS */;
INSERT INTO `themes` VALUES (1,'Default','null',NULL,1,'theme',1,'2018-03-30 22:09:29','2018-03-30 22:09:29',NULL),(2,'Darkly','https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/darkly/bootstrap.min.css',NULL,1,'theme',2,'2018-03-30 22:09:29','2018-03-30 22:09:29',NULL),(3,'Cyborg','https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/cyborg/bootstrap.min.css',NULL,1,'theme',3,'2018-03-30 22:09:29','2018-03-30 22:09:29',NULL),(4,'Cosmo','https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/cosmo/bootstrap.min.css',NULL,1,'theme',4,'2018-03-30 22:09:29','2018-03-30 22:09:29',NULL),(5,'Cerulean','https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/cerulean/bootstrap.min.css',NULL,1,'theme',5,'2018-03-30 22:09:29','2018-03-30 22:09:29',NULL),(6,'Flatly','https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/flatly/bootstrap.min.css',NULL,1,'theme',6,'2018-03-30 22:09:29','2018-03-30 22:09:29',NULL),(7,'Journal','https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/journal/bootstrap.min.css',NULL,1,'theme',7,'2018-03-30 22:09:29','2018-03-30 22:09:29',NULL),(8,'Lumen','https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/lumen/bootstrap.min.css',NULL,1,'theme',8,'2018-03-30 22:09:29','2018-03-30 22:09:29',NULL),(9,'Paper','https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/paper/bootstrap.min.css',NULL,1,'theme',9,'2018-03-30 22:09:29','2018-03-30 22:09:29',NULL),(10,'Readable','https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/readable/bootstrap.min.css',NULL,1,'theme',10,'2018-03-30 22:09:29','2018-03-30 22:09:29',NULL),(11,'Sandstone','https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/sandstone/bootstrap.min.css',NULL,1,'theme',11,'2018-03-30 22:09:29','2018-03-30 22:09:29',NULL),(12,'Simplex','https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/simplex/bootstrap.min.css',NULL,1,'theme',12,'2018-03-30 22:09:29','2018-03-30 22:09:29',NULL),(13,'Slate','https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/slate/bootstrap.min.css',NULL,1,'theme',13,'2018-03-30 22:09:29','2018-03-30 22:09:29',NULL),(14,'Spacelab','https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/spacelab/bootstrap.min.css',NULL,1,'theme',14,'2018-03-30 22:09:29','2018-03-30 22:09:29',NULL),(15,'Superhero','https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/superhero/bootstrap.min.css',NULL,1,'theme',15,'2018-03-30 22:09:29','2018-03-30 22:09:29',NULL),(16,'United','https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/united/bootstrap.min.css',NULL,1,'theme',16,'2018-03-30 22:09:29','2018-03-30 22:09:29',NULL),(17,'Yeti','https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/yeti/bootstrap.min.css',NULL,1,'theme',17,'2018-03-30 22:09:29','2018-03-30 22:09:29',NULL),(18,'Bootstrap 4.0.0 Alpha','https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css',NULL,1,'theme',18,'2018-03-30 22:09:29','2018-03-30 22:09:29',NULL),(19,'Materialize','https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css',NULL,1,'theme',19,'2018-03-30 22:09:29','2018-03-30 22:09:29',NULL),(20,'Bootstrap Material Design 0.3.0','https://cdnjs.cloudflare.com/ajax/libs/bootstrap-material-design/0.3.0/css/material-fullpalette.min.css',NULL,1,'theme',20,'2018-03-30 22:09:29','2018-03-30 22:09:29',NULL),(21,'Bootstrap Material Design 0.5.10','https://cdnjs.cloudflare.com/ajax/libs/bootstrap-material-design/0.5.10/css/bootstrap-material-design.min.css',NULL,1,'theme',21,'2018-03-30 22:09:29','2018-03-30 22:09:29',NULL),(22,'Bootstrap Material Design 4.0.0','https://cdnjs.cloudflare.com/ajax/libs/bootstrap-material-design/4.0.0/bootstrap-material-design.min.css',NULL,1,'theme',22,'2018-03-30 22:09:29','2018-03-30 22:09:29',NULL),(23,'Bootstrap Material Design 4.0.2','https://cdnjs.cloudflare.com/ajax/libs/bootstrap-material-design/4.0.2/bootstrap-material-design.min.css',NULL,1,'theme',23,'2018-03-30 22:09:29','2018-03-30 22:09:29',NULL),(24,'mdbootstrap','https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.3.1/css/mdb.min.css',NULL,1,'theme',24,'2018-03-30 22:09:29','2018-03-30 22:09:29',NULL),(25,'bootflat','https://cdnjs.cloudflare.com/ajax/libs/bootflat/2.0.4/css/bootflat.min.css',NULL,1,'theme',25,'2018-03-30 22:09:29','2018-03-30 22:09:29',NULL),(26,'flat-ui','https://cdnjs.cloudflare.com/ajax/libs/flat-ui/2.3.0/css/flat-ui.min.css',NULL,1,'theme',26,'2018-03-30 22:09:29','2018-03-30 22:09:29',NULL),(27,'m8tro-bootstrap','https://cdnjs.cloudflare.com/ajax/libs/m8tro-bootstrap/3.3.7/m8tro.min.css',NULL,1,'theme',27,'2018-03-30 22:09:29','2018-03-30 22:09:29',NULL);
/*!40000 ALTER TABLE `themes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signup_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signup_confirmation_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signup_sm_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_name_unique` (`name`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'awalsh','Janis','Tremblay','admin@admin.com','$2y$10$IJ//S/XjzzJcrVcxHad5SOX/KZYjvixTVTrpTSL3R.vLSW58K4eiW',NULL,1,'TiOAQeApACCmbNJBcjk9T1QDoaQUfGCf4oGJF69uhCOGrsZHk3JGR0UvU9co6AIg',NULL,'104.92.9.88',NULL,'230.239.57.113',NULL,NULL,'2018-03-30 22:09:29','2018-03-30 22:09:29',NULL),(2,'giovani66','Guiseppe','Denesik','user@user.com','$2y$10$tJEDta8h3/6ZZMxcqsZBd.K6tPI/4sweFvhvqDIzx2I88/p/afiYO',NULL,1,'b8XwSxU5qH682QklWJ6m72gkFCSHAHd625AujykYcV1tb52dP5wR8LsahAas2NPV','51.118.127.198','55.129.162.187',NULL,NULL,NULL,NULL,'2018-03-30 22:09:29','2018-03-30 22:09:29',NULL),(3,'JeffIsaacs','Jeff','Isaacs','scaasiffej@gmail.com','$2y$10$00DBCgTSG1s3xUI5adX/geOVC8OheKBlgQKSCOM1WwA/SOQfz50k6','B9N5mVJKynbEIer7P5CMc5yuAhSC9ylOTlU7lt5WLvdzQfC87UacUEabRfOy',1,'ymXLLVbl8pwIWAW5R4Tauzu5woSYzH7i8VyDnMqjd0A4TFRYaMngCYngL8ZqDX3d',NULL,NULL,'127.0.0.1',NULL,NULL,NULL,'2018-03-30 23:27:26','2018-03-30 23:27:26',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-30 15:30:27
