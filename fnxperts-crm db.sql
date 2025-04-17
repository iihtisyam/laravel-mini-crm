-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: fnxperts_crm
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (2,'Richtech Solutions Sdn Bhd','inquiries@richtechsolutions.com.my','logos/9iuU1iI4ZBBNLJAazTG2HbyCOnwboOhHMB932UTT.png','https://richtechsolutions.com.my/','2025-04-16 05:56:39','2025-04-16 08:41:49'),(3,'FNXPERTS SDN. BHD.','contact@fnxperts.com','logos/1l4CPsmXaQlV35ZrNX6f9Wd7yBPksYXu4QzgxFry.jpg','https://fnxperts.com','2025-04-16 08:55:42','2025-04-16 08:55:42'),(4,'TechSpark Solutions','info@techspark.io','logos/kSGcmjIn6TJUxRty62twLmHLLprMjWNNoXd2M1w4.png','https://techspark.io','2025-04-16 08:57:26','2025-04-16 08:57:26'),(5,'Innova Edge','support@innovaedge.com','logos/KUp34wQEEC9tfrj4gpeKBkwqxJlbC2MtkPY9PPX5.png','https://innovaedge.com','2025-04-16 08:58:25','2025-04-16 08:58:25'),(6,'CreativeMinds Agency','hello@creativeminds.agency','logos/CrGcDIig9IWUJm01GNh68mnakf0E9ZuKkyiyxhpe.jpg','https://creativeminds.agency','2025-04-16 08:59:20','2025-04-16 08:59:20'),(7,'Cloudify Labs','team@cloudifylabs.com','logos/lB5zUWzvnjfGlOKvlQKfk0m0hME3sArigSFWkdU7.jpg','https://cloudifylabs.com','2025-04-16 09:00:18','2025-04-16 09:00:18'),(8,'NextWave Technologies','admin@nextwavetech.com','logos/02Yb4l3ux4BtK84aGHTfX6EBW2c32KGRvULKXaGe.jpg','https://nextwavetech.com','2025-04-16 09:01:11','2025-04-16 09:01:11'),(9,'BrightScope IT','sales@brightscopeit.com','logos/xbOmrafFhXyKBWaZaZniidpFsdOfR8zjZ0GEY3D7.jpg','https://brightscopeit.com','2025-04-16 09:02:04','2025-04-16 09:02:04'),(10,'Green Pixel Studio','projects@greenpixel.com','logos/bRZ0F1B5cb7AQmgIVmkLl96i6N9ftIh6obHFwRWe.png','https://greenpixel.com','2025-04-16 09:05:02','2025-04-16 09:05:02'),(11,'BlueOrbit Systems','info@blueorbit.com','logos/NzbjoxwmTcmh1kkR9as86Y9ZLc2e51bO6hq5XSHb.jpg','https://blueorbit.com','2025-04-16 09:06:03','2025-04-16 09:06:03'),(12,'NovaNet Solutions','team@novanet.com','logos/75nZi8lWiuRXcqvw5TGPn948kPF2oEQiplOfrjLx.jpg','https://novanet.com','2025-04-16 09:07:07','2025-04-16 09:07:07'),(13,'Visionary Vault','support@visionvault.com','logos/mwkQxzDF3LqcMhxKne538W5QGq95SmTcw7Jh0OCT.png','https://visionvault.com','2025-04-16 09:08:18','2025-04-16 09:08:18'),(14,'CyberLoop Dynamics','contact@cyberloop.io','logos/wOWHUa6geIjaePSI1XIiPY3FB08e76THDVmyxaJO.jpg','https://cyberloop.io','2025-04-16 09:09:12','2025-04-16 09:09:12'),(15,'RedRiver Enterprises','info@redriver.co','logos/21CWek41FSi2celum9ox6S7vizWD8ohqKCqD8hcH.jpg','https://redriver.co','2025-04-16 09:10:22','2025-04-16 09:10:22');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint unsigned NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employees_company_id_foreign` (`company_id`),
  CONSTRAINT `employees_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Imran Ihtisyam','Zakaye',2,'imranxm7@gmail.com','0183759322','2025-04-16 06:07:07','2025-04-16 06:07:07'),(2,'Aiden','Walker',7,'aiden.walker@example.com','012-3456789','2025-04-16 09:40:17','2025-04-16 09:40:17'),(3,'Sofia','Nguyen',12,'sofia.nguyen@example.com','012-9876543','2025-04-16 09:40:49','2025-04-16 09:40:49'),(4,'Lucas','Tan',5,'lucas.tan@example.com','013-2345678','2025-04-16 09:41:16','2025-04-16 09:41:16'),(5,'Isabella','Lim',13,'isabella.lim@example.com','014-3456789','2025-04-16 09:41:49','2025-04-16 09:41:49'),(6,'Elijah','Yong',9,'elijah.yong@example.com','013-1234567','2025-04-16 09:42:17','2025-04-16 09:42:17'),(7,'Chloe','Teo',4,'chloe.teo@example.com','016-7654321','2025-04-16 09:42:45','2025-04-16 09:42:45'),(8,'Noah','Lee',8,'noah.lee@example.com','017-2223333','2025-04-16 09:43:18','2025-04-16 09:43:18'),(9,'Ava','Koh',15,'ava.koh@example.com','011-8888888','2025-04-16 09:43:52','2025-04-16 09:43:52'),(10,'William','Chong',3,'william.chong@example.com','012-0001111','2025-04-16 09:44:45','2025-04-16 09:44:45'),(11,'Mia','Goh',13,'mia.goh@example.com','019-4455667','2025-04-16 09:45:14','2025-04-16 09:45:14'),(12,'James','Tay',6,'james.tay@example.com','018-5566778','2025-04-16 09:45:46','2025-04-16 09:45:46'),(13,'Emily','Wong',14,'emily.wong@example.com','010-9999999','2025-04-16 09:46:14','2025-04-16 09:46:14'),(14,'Benjamin','Cheah',10,'benjamin.cheah@example.com','017-1111222','2025-04-16 09:46:46','2025-04-16 09:46:46'),(15,'Grace','Yap',11,'grace.yap@example.com','015-3333444','2025-04-16 09:52:02','2025-04-16 09:52:02');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2025_04_15_150037_create_companies_table',2),(6,'2025_04_15_150642_create_employees_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
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
  PRIMARY KEY (`email`)
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
  `expires_at` timestamp NULL DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','admin@admin.com',NULL,'$2y$10$.HoH5qgxL0bXEMOFsG4rMuV48GrS2I3sY9YmBdy3nVrW1Ea2fhp.G',NULL,'2025-04-15 06:25:32','2025-04-15 06:25:32');
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

-- Dump completed on 2025-04-17 12:09:07
