-- MySQL dump 10.13  Distrib 8.0.25, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: medical_care
-- ------------------------------------------------------
-- Server version	8.0.29-0ubuntu0.22.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chats`
--

DROP TABLE IF EXISTS `chats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chats` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `medical_id` int NOT NULL,
  `patient_id` int NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` int NOT NULL DEFAULT '0' COMMENT '0-not_read 1-read',
  `owner_type` int NOT NULL COMMENT 'MEDICAL = 1,  PATIENT = 2',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chats`
--

LOCK TABLES `chats` WRITE;
/*!40000 ALTER TABLE `chats` DISABLE KEYS */;
INSERT INTO `chats` VALUES (1,1,1,'Hellooooo',0,1,'2022-06-08 17:07:09','2022-06-08 17:07:09',NULL),(2,1,2,'Hellooooo',0,1,'2022-06-08 17:08:09','2022-06-08 17:08:09',NULL),(3,1,5,'Hellooooo',0,2,'2022-06-08 17:08:17','2022-06-08 17:08:17',NULL),(4,1,1,'Hellooooo',0,1,'2022-06-08 17:11:01','2022-06-08 17:11:01',NULL);
/*!40000 ALTER TABLE `chats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devices`
--

DROP TABLE IF EXISTS `devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `devices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `member_type_id` tinyint unsigned DEFAULT NULL,
  `member_id` bigint unsigned DEFAULT NULL,
  `provider_id` bigint unsigned DEFAULT NULL,
  `fcm_token` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devices`
--

LOCK TABLES `devices` WRITE;
/*!40000 ALTER TABLE `devices` DISABLE KEYS */;
INSERT INTO `devices` VALUES (3,2,1,1,'xmmelmdedmeede5t5t5gg4g','2022-06-08 13:16:56','2022-06-08 13:16:56',NULL);
/*!40000 ALTER TABLE `devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicals`
--

DROP TABLE IF EXISTS `medicals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `full_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `national_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_doctor` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` tinyint NOT NULL COMMENT 'MALE = 1,  FEMALE = 2',
  `age` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicals`
--

LOCK TABLES `medicals` WRITE;
/*!40000 ALTER TABLE `medicals` DISABLE KEYS */;
INSERT INTO `medicals` VALUES (1,'Omar Farag','superadmin@admin.com','01034343434','3648958489400',1,'$2y$10$eMhG7NgYWskNWtotOIt9O.46ut6OrpxcDLMNBk8mACLnAWxQPXzuy',1,'30','images/16546415961657693413.jpeg','33333','4444','2022-06-07 20:39:56','2022-06-07 20:39:56',NULL),(2,'Breana Schuppe','lilliana95@yahoo.com','430.341.3625','43434343434343',1,'$2y$10$lNbePo5YQgRbJA6sxzDsse0.AMGHFRzMoNn2flzPKzL5wtmkpTbPi',2,'28',NULL,NULL,NULL,'2022-06-08 07:53:08','2022-06-08 07:53:08',NULL),(3,'Lois Kutch','eda73@hotmail.com','1-513-996-2743','343434343545',1,'$2y$10$DZ.o4jnsY/syCj.rAnCqGOgIS5vizTjJVpXo1t6/VjMybrnjBTljK',1,'25',NULL,NULL,NULL,'2022-06-08 07:53:08','2022-06-08 07:53:08',NULL),(4,'Misty Connelly','cole.ervin@yahoo.com','1-913-926-2118','145555434434',1,'$2y$10$x85Wztj8csRCvxHOHxLEzuSGZ9jQGdfFGCpuH.xgkH8OVF/GCsu/i',1,'36',NULL,NULL,NULL,'2022-06-08 07:53:09','2022-06-08 07:53:09',NULL),(5,'Ryann Ankunding','ciara61@cormier.info','1-219-418-1048','555534434344',1,'$2y$10$dOUYLLbbCrDUYP.EPfsPIOq6DtcOM6iF1NBjrpJu0dcbueg34wodO',2,'22',NULL,NULL,NULL,'2022-06-08 07:53:09','2022-06-08 07:53:09',NULL),(6,'Jodie Kuphal','destini.doyle@hotmail.com','(352) 345-9987','14434434444421',1,'$2y$10$Qd/VeqrguPw1GBtqTG0oq.VMNlNpcX7/JVxUNw/pnZnZHwFvadV8.',1,'43',NULL,NULL,NULL,'2022-06-08 07:53:09','2022-06-08 07:53:09',NULL),(7,'Russel Beatty','mauricio72@steuber.info','+1 (941) 996-8043','148786689969',1,'$2y$10$HmFWMiymhWla8mmw13yr2.gQ/genvRMizoBpFvj01LXUaNYHmaOpe',2,'45',NULL,NULL,NULL,'2022-06-08 07:53:09','2022-06-08 07:53:09',NULL),(8,'Dayton Ritchie','roberts.brain@ebert.com','323-204-5014','2425347441917',0,'$2y$10$sHoAymL9xeWcSDx7lgAeE.1mPw8caHfykbxUzQ4oDW9lryNIvbEmC',2,'33',NULL,NULL,NULL,'2022-06-08 07:56:35','2022-06-08 07:56:35',NULL),(9,'Nicole Green','jeffery27@gmail.com','(240) 368-0113','5503472267497',1,'$2y$10$AvR4S/IE75tsV2nWsM5.He.vZMl3dWxwndRBHxsPYN.YO6t9KW1IO',2,'22',NULL,NULL,NULL,'2022-06-08 07:56:36','2022-06-08 07:56:36',NULL),(10,'Desmond Beatty','randall55@gmail.com','727.530.6374','4655944387649',1,'$2y$10$hOfZ1ZPAtbpwcQOIraoDJuFCIgoDzAhhI6vmerRiQZNPVuPbhEeUe',1,'42',NULL,NULL,NULL,'2022-06-08 07:56:36','2022-06-08 07:56:36',NULL),(11,'Winnifred Ondricka','leffler.warren@yahoo.com','1-856-561-7013','10665082995029',0,'$2y$10$TNiYnfqD6Ugtl/vh2k5dZulF0nEHG.8PkTPnLrP8z4Gyro5r6Asoi',2,'44',NULL,NULL,NULL,'2022-06-08 07:56:36','2022-06-08 07:56:36',NULL),(12,'Serenity Grant','koch.eduardo@bernhard.com','+1-551-833-8686','3170107807803',1,'$2y$10$Lej54bF4zqrsS49t.KySW.mvO3jR9BIEXuFN5Ajsxbw4uYKEsSRq6',1,'30',NULL,NULL,NULL,'2022-06-08 07:56:36','2022-06-08 07:56:36',NULL),(13,'Cassandra Schinner','thelma40@yahoo.com','(754) 761-0939','2708892680932',1,'$2y$10$xjDnJWHu89d0fahy.EfLcOfEl947bmoEYQHJWgOc7AgqtJ2GvQT0O',1,'31',NULL,NULL,NULL,'2022-06-08 07:56:37','2022-06-08 07:56:37',NULL),(14,'Jonathan Lynch','carley.schuppe@gmail.com','+1 (210) 375-1620','9297161685627',1,'$2y$10$ZO02JLq9oSl9RmzmaWO6P.Mo5NFdr9ky6F7D4KfmzLcXoarOsze/.',1,'22',NULL,NULL,NULL,'2022-06-08 07:56:37','2022-06-08 07:56:37',NULL),(15,'Joana Stoltenberg','rrohan@abernathy.biz','(575) 667-9683','12006168827295',1,'$2y$10$xGyI6OBR1zY2HFEsGEewLukBfEGIH1zQ/M7tjODvySHKdkXRycvzS',1,'47',NULL,NULL,NULL,'2022-06-08 07:56:37','2022-06-08 07:56:37',NULL),(16,'Annamarie Lubowitz','ghayes@johns.com','202-482-6038','6794488417359',1,'$2y$10$316gM4TcLDXC72xhOeNaze.m0L1uLoAntynWf9jMJUKpAPhhNqHx6',2,'29',NULL,NULL,NULL,'2022-06-08 07:56:37','2022-06-08 07:56:37',NULL),(17,'Stan Abshire','troy.trantow@windler.com','(802) 706-5631','10450411836127',1,'$2y$10$/kjNxIXEQjUVXyV44sR3degYR6yxUgSINJq9QLeLSttJKBWHhXjh6',1,'24',NULL,NULL,NULL,'2022-06-08 07:56:38','2022-06-08 07:56:38',NULL),(18,'Maximus Hahn','smith.alfredo@schuster.com','+1-415-508-5835','2368435021105',1,'$2y$10$duJjc2fpTzDZ2.e/yDN23.pUekx.6TEy7Ob5VfFVzzNOMnjfBqNsC',2,'28',NULL,NULL,NULL,'2022-06-08 07:56:38','2022-06-08 07:56:38',NULL),(19,'Hortense Jakubowski','jbecker@vonrueden.biz','+1-361-413-2373','5772905198394',0,'$2y$10$WzHJo1f8tBeJxl/ejouoweaJuN.hw1LyJPom/L0Htjf5mo/cwqJg.',1,'49',NULL,NULL,NULL,'2022-06-08 07:56:38','2022-06-08 07:56:38',NULL),(20,'Dejon Skiles','nbashirian@hotmail.com','(260) 845-5748','7733742570589',1,'$2y$10$PiR9XR9ACqI4loFue1l6G.hF3qOY5Mh2iAB/pnRuuu64hmFhn9mFa',2,'27',NULL,NULL,NULL,'2022-06-08 07:56:38','2022-06-08 07:56:38',NULL),(21,'Eli Koelpin','greenholt.trace@schultz.com','+1-256-920-9594','5206851857917',1,'$2y$10$zRIwaB42zcb08twiAS5LQO8dOASvse0L7nAuruan3ZY22C439tODu',1,'42',NULL,NULL,NULL,'2022-06-08 07:56:39','2022-06-08 07:56:39',NULL),(22,'Tremayne Flatley','balistreri.lesley@hotmail.com','+1-870-739-8025','1235959643687',0,'$2y$10$ek9LJRDf/VMgn//e8tKNKeC8S4BLSxgdrcCaLSvdRrLeOWjPkvp/G',2,'29',NULL,NULL,NULL,'2022-06-08 07:56:39','2022-06-08 07:56:39',NULL);
/*!40000 ALTER TABLE `medicals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_06_01_000001_create_oauth_auth_codes_table',1),(4,'2016_06_01_000002_create_oauth_access_tokens_table',1),(5,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(6,'2016_06_01_000004_create_oauth_clients_table',1),(7,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(8,'2019_08_19_000000_create_failed_jobs_table',1),(9,'2019_12_14_000001_create_personal_access_tokens_table',1),(10,'2022_06_05_234511_create_medicals_table',2),(11,'2022_06_05_234511_create_patients_table',2),(13,'2022_06_08_133017_create_devices_table',3),(14,'2022_06_05_234607_create_chats_table',4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('def6aee75217a9663c5a2785cc938e9e17574c0949267f41f0da98920107ef267940f9a746851cd7',1,1,'MedicalToken','[]',0,'2022-06-08 14:57:15','2022-06-08 14:57:15','2023-06-08 16:57:15');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'Laravel Personal Access Client','mL80efKnOIpuXuFBErhFZ5f04RwUR63xy6Sl346O',NULL,'http://localhost',1,0,0,'2022-06-05 20:19:37','2022-06-05 20:19:37'),(2,NULL,'Laravel Password Grant Client','SF6sBBFjLrbI3nbGZJ69AMRaHSfCGUsb2rQ7pkdU','users','http://localhost',0,1,0,'2022-06-05 20:19:37','2022-06-05 20:19:37');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2022-06-05 20:19:37','2022-06-05 20:19:37');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
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
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `full_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `national_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` tinyint NOT NULL COMMENT 'MALE = 1,  FEMALE = 2',
  `age` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,'Magdalen Fadel','murray58@konopelski.org','380.613.4163','3494715204002','$2y$10$.dZI8AlkGpPoAhJVpakc5u5nb6WAfuoIEcdN2/b4yCG5JatGmLmRa',2,'33',NULL,NULL,NULL,'2022-06-08 14:04:45','2022-06-08 14:04:45',NULL),(2,'Earnestine Dicki','bschamberger@rau.org','445-758-0212','10349972687809','$2y$10$DlMC6ZbDH.SsfdEUZKOLq.ZG2Vju.rddyyhnW8uhCRmkfqr01egCy',1,'37',NULL,NULL,NULL,'2022-06-08 14:04:46','2022-06-08 14:04:46',NULL),(3,'Rhoda Abbott','dessie10@hotmail.com','+12064375719','10161211130091','$2y$10$U5muk3slB9AtiN7m6k3u1ep/GSTTt.bzVENIpPhroyqhULqK./dVi',1,'22',NULL,NULL,NULL,'2022-06-08 14:04:46','2022-06-08 14:04:46',NULL),(4,'Sherwood King','dorothy.stanton@pacocha.com','+1-702-796-8221','2558346619000','$2y$10$dQJ.w2HtfMOuM5GFUKEd1.ibv8SsHv8Yjh3zlSdS0O4y2Pl23KNvW',2,'22',NULL,NULL,NULL,'2022-06-08 14:04:46','2022-06-08 14:04:46',NULL),(5,'Gideon McKenzie','uschowalter@turner.net','(507) 637-9684','4727028075919','$2y$10$iyPBpvO6ck1BoX5DTmQsoeOuAk8YcTcWn0ySHZwdk1ads4M.Utn3i',1,'32',NULL,NULL,NULL,'2022-06-08 14:04:46','2022-06-08 14:04:46',NULL),(6,'Isaac Marvin','emilie.schoen@hotmail.com','308.232.8261','3099264457830','$2y$10$vyu8EPfggY0l7bDgRnWSdOm2ej98YLH7fAbWLO1gGFcWxfe.xB7zC',2,'20',NULL,NULL,NULL,'2022-06-08 14:04:47','2022-06-08 14:04:47',NULL),(7,'Samara Collier','marie.gislason@runolfsson.org','503.873.5598','8691725981570','$2y$10$ROzcs3bEk.wpizNF4NHLvep6BQaE5mSFpMU5AV2H5OMljgbj.AEKa',2,'26',NULL,NULL,NULL,'2022-06-08 14:04:47','2022-06-08 14:04:47',NULL),(8,'Alyson Hettinger','qkoss@jenkins.org','650.790.5585','4830225068332','$2y$10$26cZ/2YZa4NItXyqq2z.K.j.QOLZWPR58PJIux4ITr6M.Ar5by/ca',1,'40',NULL,NULL,NULL,'2022-06-08 14:04:47','2022-06-08 14:04:47',NULL),(9,'Roosevelt Lynch','vkoch@hegmann.com','+1-773-996-4377','11701548335827','$2y$10$4Vd7L51WtX2WQjtWrh3w0ObeB2toutcOEH1EjOMOyrx69MnPVUSy2',2,'44',NULL,NULL,NULL,'2022-06-08 14:04:48','2022-06-08 14:04:48',NULL),(10,'Deondre Mitchell','alfred.kertzmann@gmail.com','682.684.8386','9946983637899','$2y$10$VTv9i77G2r92p3392VmnJOReUgyAj3l.gS98yVeNZ67IT73B92YBW',2,'36',NULL,NULL,NULL,'2022-06-08 14:04:48','2022-06-08 14:04:48',NULL),(11,'Polly Johnston','samanta.auer@yahoo.com','(772) 428-2394','9955918614725','$2y$10$nIbb1xFLf5bZlzgHvZMDuu2e0nlRYsNXjoF1zBOHTHeO0SPhuMzUi',1,'37',NULL,NULL,NULL,'2022-06-08 14:04:48','2022-06-08 14:04:48',NULL),(12,'Eunice Sauer','ezra64@harris.biz','(283) 861-8098','2073244209801','$2y$10$HRqttV0.E.RfhkSFcbfPbeIqRZb0GP7spqRWCU8ZqC8yA6k5A//JK',2,'23',NULL,NULL,NULL,'2022-06-08 14:04:48','2022-06-08 14:04:48',NULL),(13,'Chelsea Tillman','koch.damon@bogan.info','+1.279.270.1334','1266921263312','$2y$10$jTYvSYtmyrjWIEt5xGJM8ODy5MRZu803VWFBNAf.tbniRCR4FKsm.',2,'32',NULL,NULL,NULL,'2022-06-08 14:04:49','2022-06-08 14:04:49',NULL),(14,'Sandra Hickle','breitenberg.blanca@paucek.info','351.567.2942','4272236178542','$2y$10$C4sE5f7MP9TRr/DukqyUVOAZJ.vXqB51gcZWl5msBfwthIipTAXXy',1,'25',NULL,NULL,NULL,'2022-06-08 14:04:49','2022-06-08 14:04:49',NULL),(15,'Milan Beier','mae61@yahoo.com','+1 (458) 801-2019','10784397137190','$2y$10$HM4tN99e3.YAxlKIQtRKaOE0TOcwQLGn02TOczsK4ekY8fi69XLD.',1,'20',NULL,NULL,NULL,'2022-06-08 14:04:49','2022-06-08 14:04:49',NULL);
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2022-06-08 23:46:43
