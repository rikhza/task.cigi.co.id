-- MariaDB dump 10.19  Distrib 10.6.16-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: cigico_task
-- ------------------------------------------------------
-- Server version	10.6.16-MariaDB-cll-lve

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activity_logs`
--

DROP TABLE IF EXISTS `activity_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity_logs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `user_type` text NOT NULL,
  `project_id` bigint(20) unsigned NOT NULL,
  `log_type` varchar(191) NOT NULL,
  `remark` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_logs`
--

LOCK TABLES `activity_logs` WRITE;
/*!40000 ALTER TABLE `activity_logs` DISABLE KEYS */;
INSERT INTO `activity_logs` VALUES (1,3,'App\\Models\\User',1,'Upload File','{\"file_name\":\"favicon (copy).png\"}','2022-12-19 17:19:00','2022-12-19 17:19:00'),(2,3,'App\\Models\\User',1,'Create Task','{\"title\":\"Pembelian Server\"}','2022-12-19 17:22:38','2022-12-19 17:22:38'),(3,3,'App\\Models\\User',1,'Move','{\"title\":\"Pembelian Server\",\"old_status\":\"Todo\",\"new_status\":\"Review\"}','2022-12-19 17:22:47','2022-12-19 17:22:47'),(4,3,'App\\Models\\User',1,'Create Task','{\"title\":\"Coding Proses\"}','2022-12-19 17:23:53','2022-12-19 17:23:53'),(5,3,'App\\Models\\User',1,'Move','{\"title\":\"Coding Proses\",\"old_status\":\"Todo\",\"new_status\":\"In Progress\"}','2022-12-19 17:23:58','2022-12-19 17:23:58'),(6,3,'App\\Models\\User',1,'Create Task','{\"title\":\"Deploy Search Engine Indexing\"}','2022-12-19 17:25:10','2022-12-19 17:25:10'),(7,3,'App\\Models\\User',1,'Create Task','{\"title\":\"SEO Improvement\"}','2022-12-19 17:25:37','2022-12-19 17:25:37'),(8,3,'App\\Models\\User',1,'Invite User','{\"user_id\":4}','2022-12-19 17:26:14','2022-12-19 17:26:14'),(9,3,'App\\Models\\User',1,'Move','{\"title\":\"Pembelian Server\",\"old_status\":\"Review\",\"new_status\":\"In Progress\"}','2022-12-19 22:22:17','2022-12-19 22:22:17'),(10,3,'App\\Models\\User',1,'Move','{\"title\":\"Coding Proses\",\"old_status\":\"In Progress\",\"new_status\":\"Review\"}','2022-12-20 03:05:39','2022-12-20 03:05:39'),(11,3,'App\\Models\\User',1,'Move','{\"title\":\"Coding Proses\",\"old_status\":\"Review\",\"new_status\":\"In Progress\"}','2022-12-20 03:05:42','2022-12-20 03:05:42'),(12,3,'App\\Models\\User',1,'Move','{\"title\":\"Coding Proses\",\"old_status\":\"In Progress\",\"new_status\":\"Review\"}','2022-12-20 03:07:09','2022-12-20 03:07:09'),(13,3,'App\\Models\\User',1,'Move','{\"title\":\"Coding Proses\",\"old_status\":\"Review\",\"new_status\":\"In Progress\"}','2022-12-20 03:07:19','2022-12-20 03:07:19'),(14,5,'App\\Models\\User',2,'Create Task','{\"title\":\"System Documentation (Flow Process, UML Diagram)\"}','2023-09-04 05:53:11','2023-09-04 05:53:11'),(15,5,'App\\Models\\User',2,'Create Task','{\"title\":\"UI UX Booking Management System\"}','2023-09-04 05:53:47','2023-09-04 05:53:47'),(16,5,'App\\Models\\User',2,'Move','{\"title\":\"System Documentation (Flow Process, UML Diagram)\",\"old_status\":\"Todo\",\"new_status\":\"In Progress\"}','2023-09-04 05:57:47','2023-09-04 05:57:47'),(17,5,'App\\Models\\User',2,'Create Task','{\"title\":\"Technology Selection for Dev\"}','2023-09-04 05:59:50','2023-09-04 05:59:50'),(18,5,'App\\Models\\User',2,'Move','{\"title\":\"Technology Selection for Dev\",\"old_status\":\"Todo\",\"new_status\":\"In Progress\"}','2023-09-04 06:01:33','2023-09-04 06:01:33'),(19,5,'App\\Models\\User',2,'Create Task','{\"title\":\"UML Use Case, ERD\"}','2023-09-04 06:02:01','2023-09-04 06:02:01'),(20,5,'App\\Models\\User',2,'Move','{\"title\":\"UML Use Case, ERD\",\"old_status\":\"Todo\",\"new_status\":\"In Progress\"}','2023-09-04 06:03:14','2023-09-04 06:03:14'),(21,5,'App\\Models\\User',2,'Move','{\"title\":\"Technology Selection for Dev\",\"old_status\":\"In Progress\",\"new_status\":\"Todo\"}','2023-09-04 06:03:23','2023-09-04 06:03:23'),(22,5,'App\\Models\\User',2,'Move','{\"title\":\"UI UX Booking Management System\",\"old_status\":\"Todo\",\"new_status\":\"In Progress\"}','2023-09-04 06:24:01','2023-09-04 06:24:01'),(23,5,'App\\Models\\User',2,'Move','{\"title\":\"Create UML Activity Diagram\",\"old_status\":\"In Progress\",\"new_status\":\"Todo\"}','2023-09-04 06:24:03','2023-09-04 06:24:03'),(24,5,'App\\Models\\User',2,'Move','{\"title\":\"UML Use Case, ERD\",\"old_status\":\"In Progress\",\"new_status\":\"Todo\"}','2023-09-04 06:24:05','2023-09-04 06:24:05'),(25,5,'App\\Models\\User',2,'Move','{\"title\":\"Technology Selection for Dev\",\"old_status\":\"Todo\",\"new_status\":\"In Progress\"}','2023-09-04 06:24:07','2023-09-04 06:24:07'),(26,6,'App\\Models\\User',2,'Move','{\"title\":\"Technology Selection for Dev\",\"old_status\":\"In Progress\",\"new_status\":\"Review\"}','2023-09-04 22:24:50','2023-09-04 22:24:50'),(27,6,'App\\Models\\User',2,'Create Task','{\"title\":\"Setup Front End Project\"}','2023-09-04 22:25:25','2023-09-04 22:25:25'),(28,6,'App\\Models\\User',2,'Move','{\"title\":\"Setup Front End Project\",\"old_status\":\"Todo\",\"new_status\":\"In Progress\"}','2023-09-04 22:25:36','2023-09-04 22:25:36'),(29,5,'App\\Models\\User',2,'Invite User','{\"user_id\":7}','2023-09-07 06:20:47','2023-09-07 06:20:47'),(30,5,'App\\Models\\User',2,'Invite User','{\"user_id\":8}','2023-09-07 06:20:47','2023-09-07 06:20:47'),(31,5,'App\\Models\\User',4,'Create Task','{\"title\":\"Proposal Proyek\"}','2023-09-08 07:33:13','2023-09-08 07:33:13'),(32,7,'App\\Models\\User',3,'Create Milestone','{\"title\":\"Introduction CIGI\"}','2023-09-08 20:05:26','2023-09-08 20:05:26'),(33,5,'App\\Models\\User',3,'Create Task','{\"title\":\"contoh konten 1\"}','2023-09-11 05:57:11','2023-09-11 05:57:11'),(34,7,'App\\Models\\User',3,'Create Task','{\"title\":\"fhjabdkjaD\"}','2023-09-11 05:57:18','2023-09-11 05:57:18'),(35,5,'App\\Models\\User',5,'Create Milestone','{\"title\":\"Payment Awal 30%\"}','2023-09-14 05:42:28','2023-09-14 05:42:28'),(36,5,'App\\Models\\User',5,'Create Milestone','{\"title\":\"2nd Payment 50%\"}','2023-09-14 05:43:04','2023-09-14 05:43:04'),(37,5,'App\\Models\\User',5,'Create Milestone','{\"title\":\"Final Payment\"}','2023-09-14 05:43:31','2023-09-14 05:43:31'),(38,5,'App\\Models\\User',5,'Upload File','{\"file_name\":\"payment2.jpg\"}','2023-09-14 05:44:42','2023-09-14 05:44:42'),(39,5,'App\\Models\\User',5,'Upload File','{\"file_name\":\"payment1.jpg\"}','2023-09-14 05:44:42','2023-09-14 05:44:42'),(40,5,'App\\Models\\User',5,'Create Task','{\"title\":\"Develop Scope Revision\"}','2023-09-14 05:46:25','2023-09-14 05:46:25'),(41,5,'App\\Models\\User',5,'Move','{\"title\":\"Develop Scope Revision\",\"old_status\":\"Todo\",\"new_status\":\"Done\"}','2023-09-14 05:46:29','2023-09-14 05:46:29'),(42,5,'App\\Models\\User',5,'Upload File','{\"file_name\":\"Invoice Aziz 9sept23.pdf\"}','2023-09-14 05:47:07','2023-09-14 05:47:07'),(43,5,'App\\Models\\User',5,'Upload File','{\"file_name\":\"Revisi Sistem.docx\"}','2023-09-14 05:47:19','2023-09-14 05:47:19'),(44,5,'App\\Models\\User',5,'Upload File','{\"file_name\":\"LOGO Alfaruq 1.png\"}','2023-09-14 05:47:27','2023-09-14 05:47:27'),(45,5,'App\\Models\\User',5,'Upload File','{\"file_name\":\"LOGO Alfaruq 2.png\"}','2023-09-14 05:47:28','2023-09-14 05:47:28'),(46,5,'App\\Models\\User',3,'Upload File','{\"file_name\":\"Cigi Putih Logo 2.png\"}','2023-09-14 06:44:50','2023-09-14 06:44:50'),(47,5,'App\\Models\\User',3,'Upload File','{\"file_name\":\"Pavicon CiGi-03.png\"}','2023-09-14 06:45:04','2023-09-14 06:45:04'),(48,5,'App\\Models\\User',3,'Upload File','{\"file_name\":\"Logo CiGi 2.png\"}','2023-09-14 06:45:04','2023-09-14 06:45:04'),(49,5,'App\\Models\\User',3,'Upload File','{\"file_name\":\"Pavicon CiGi-02.png\"}','2023-09-14 06:45:05','2023-09-14 06:45:05'),(50,5,'App\\Models\\User',4,'Move','{\"title\":\"Proposal Proyek\",\"old_status\":\"Todo\",\"new_status\":\"Review\"}','2023-09-14 06:50:28','2023-09-14 06:50:28'),(51,5,'App\\Models\\User',4,'Move','{\"title\":\"Proposal Proyek\",\"old_status\":\"Review\",\"new_status\":\"Done\"}','2023-09-14 06:50:30','2023-09-14 06:50:30'),(52,5,'App\\Models\\User',3,'Create Milestone','{\"title\":\"FastWork Regist\"}','2023-09-15 06:26:23','2023-09-15 06:26:23');
/*!40000 ALTER TABLE `activity_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_payment_settings`
--

DROP TABLE IF EXISTS `admin_payment_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_payment_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `value` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_payment_settings_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_payment_settings`
--

LOCK TABLES `admin_payment_settings` WRITE;
/*!40000 ALTER TABLE `admin_payment_settings` DISABLE KEYS */;
INSERT INTO `admin_payment_settings` VALUES (1,'color','theme-3','2022-12-19 03:37:34','2022-12-19 16:32:23'),(2,'cust_theme_bg','off','2022-12-19 03:37:34','2022-12-19 16:32:23'),(3,'cust_darklayout','off','2022-12-19 03:37:34','2022-12-19 16:32:23');
/*!40000 ALTER TABLE `admin_payment_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bug_comments`
--

DROP TABLE IF EXISTS `bug_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bug_comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment` text NOT NULL,
  `bug_id` int(11) NOT NULL,
  `user_type` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bug_comments`
--

LOCK TABLES `bug_comments` WRITE;
/*!40000 ALTER TABLE `bug_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `bug_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bug_files`
--

DROP TABLE IF EXISTS `bug_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bug_files` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `file` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `extension` varchar(191) NOT NULL,
  `file_size` varchar(191) NOT NULL,
  `bug_id` int(11) NOT NULL,
  `user_type` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bug_files`
--

LOCK TABLES `bug_files` WRITE;
/*!40000 ALTER TABLE `bug_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `bug_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bug_reports`
--

DROP TABLE IF EXISTS `bug_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bug_reports` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) NOT NULL,
  `priority` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `assign_to` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'unconfirmed',
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bug_reports`
--

LOCK TABLES `bug_reports` WRITE;
/*!40000 ALTER TABLE `bug_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `bug_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bug_stages`
--

DROP TABLE IF EXISTS `bug_stages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bug_stages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `color` varchar(191) NOT NULL DEFAULT '#051c4b',
  `complete` tinyint(1) NOT NULL,
  `workspace_id` bigint(20) unsigned NOT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bug_stages`
--

LOCK TABLES `bug_stages` WRITE;
/*!40000 ALTER TABLE `bug_stages` DISABLE KEYS */;
INSERT INTO `bug_stages` VALUES (1,'Unconfirmed','#77b6ea',0,1,0,'2022-12-19 15:59:36','2022-12-19 15:59:36'),(2,'Confirmed','#6e00ff',0,1,1,'2022-12-19 15:59:36','2022-12-19 15:59:36'),(3,'In Progress','#3cb8d9',0,1,2,'2022-12-19 15:59:36','2022-12-19 15:59:36'),(4,'Resolved','#37b37e',0,1,3,'2022-12-19 15:59:36','2022-12-19 15:59:36'),(5,'Verified','#545454',1,1,4,'2022-12-19 15:59:36','2022-12-19 15:59:36'),(6,'Unconfirmed','#77b6ea',0,2,0,'2022-12-19 16:36:01','2022-12-19 16:36:01'),(7,'Confirmed','#6e00ff',0,2,1,'2022-12-19 16:36:01','2022-12-19 16:36:01'),(8,'In Progress','#3cb8d9',0,2,2,'2022-12-19 16:36:01','2022-12-19 16:36:01'),(9,'Resolved','#37b37e',0,2,3,'2022-12-19 16:36:01','2022-12-19 16:36:01'),(10,'Verified','#545454',1,2,4,'2022-12-19 16:36:01','2022-12-19 16:36:01'),(11,'Unconfirmed','#77b6ea',0,3,0,'2023-09-04 05:27:02','2023-09-04 05:27:02'),(12,'Confirmed','#6e00ff',0,3,1,'2023-09-04 05:27:02','2023-09-04 05:27:02'),(13,'In Progress','#3cb8d9',0,3,2,'2023-09-04 05:27:02','2023-09-04 05:27:02'),(14,'Resolved','#37b37e',0,3,3,'2023-09-04 05:27:02','2023-09-04 05:27:02'),(15,'Verified','#545454',1,3,4,'2023-09-04 05:27:02','2023-09-04 05:27:02');
/*!40000 ALTER TABLE `bug_stages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendars`
--

DROP TABLE IF EXISTS `calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendars` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) NOT NULL,
  `className` varchar(191) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `allDay` tinyint(1) NOT NULL DEFAULT 0,
  `workspace` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendars`
--

LOCK TABLES `calendars` WRITE;
/*!40000 ALTER TABLE `calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ch_favorites`
--

DROP TABLE IF EXISTS `ch_favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ch_favorites` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `favorite_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ch_favorites`
--

LOCK TABLES `ch_favorites` WRITE;
/*!40000 ALTER TABLE `ch_favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `ch_favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ch_messages`
--

DROP TABLE IF EXISTS `ch_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ch_messages` (
  `id` bigint(20) NOT NULL,
  `type` varchar(191) NOT NULL,
  `workspace_id` bigint(20) NOT NULL,
  `from_id` bigint(20) NOT NULL,
  `to_id` bigint(20) NOT NULL,
  `body` varchar(5000) DEFAULT NULL,
  `attachment` varchar(191) DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ch_messages`
--

LOCK TABLES `ch_messages` WRITE;
/*!40000 ALTER TABLE `ch_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `ch_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_projects`
--

DROP TABLE IF EXISTS `client_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_projects` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `permission` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_projects`
--

LOCK TABLES `client_projects` WRITE;
/*!40000 ALTER TABLE `client_projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_workspaces`
--

DROP TABLE IF EXISTS `client_workspaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_workspaces` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `workspace_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_workspaces`
--

LOCK TABLES `client_workspaces` WRITE;
/*!40000 ALTER TABLE `client_workspaces` DISABLE KEYS */;
INSERT INTO `client_workspaces` VALUES (1,1,3,1,'2023-09-14 06:46:32','2023-09-14 06:46:32');
/*!40000 ALTER TABLE `client_workspaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `currant_workspace` int(11) DEFAULT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `zipcode` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `telephone` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'alfaruqstore','alfaruqchat@gmail.com',NULL,'$2y$10$dYFCnR6JaULcIAU6QOOeXuwx5rKQOzzwaucjN78z3og30aRaGKr2u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-09-14 06:46:32','2023-09-14 06:46:32');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment` text NOT NULL,
  `task_id` int(11) NOT NULL,
  `user_type` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contracts`
--

DROP TABLE IF EXISTS `contracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contracts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` varchar(191) NOT NULL,
  `subject` varchar(191) DEFAULT NULL,
  `project_id` varchar(191) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'off',
  `description` varchar(191) DEFAULT NULL,
  `contract_description` longtext DEFAULT NULL,
  `client_signature` longtext DEFAULT NULL,
  `company_signature` longtext DEFAULT NULL,
  `workspace_id` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contracts`
--

LOCK TABLES `contracts` WRITE;
/*!40000 ALTER TABLE `contracts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contracts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contracts_attachments`
--

DROP TABLE IF EXISTS `contracts_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contracts_attachments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `contract_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `files` varchar(191) DEFAULT NULL,
  `workspace_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contracts_attachments`
--

LOCK TABLES `contracts_attachments` WRITE;
/*!40000 ALTER TABLE `contracts_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `contracts_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contracts_comments`
--

DROP TABLE IF EXISTS `contracts_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contracts_comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `contract_id` bigint(20) unsigned NOT NULL,
  `user_id` varchar(191) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `comment` varchar(191) NOT NULL,
  `workspace_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contracts_comments`
--

LOCK TABLES `contracts_comments` WRITE;
/*!40000 ALTER TABLE `contracts_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `contracts_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contracts_notes`
--

DROP TABLE IF EXISTS `contracts_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contracts_notes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `contract_id` bigint(20) unsigned NOT NULL,
  `user_id` varchar(191) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `notes` varchar(191) NOT NULL,
  `workspace_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contracts_notes`
--

LOCK TABLES `contracts_notes` WRITE;
/*!40000 ALTER TABLE `contracts_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `contracts_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contracts_types`
--

DROP TABLE IF EXISTS `contracts_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contracts_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `workspace_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contracts_types`
--

LOCK TABLES `contracts_types` WRITE;
/*!40000 ALTER TABLE `contracts_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `contracts_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupons` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `code` varchar(191) NOT NULL,
  `discount` double(8,2) NOT NULL DEFAULT 0.00,
  `limit` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_template_langs`
--

DROP TABLE IF EXISTS `email_template_langs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_template_langs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `lang` varchar(100) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `from` varchar(191) DEFAULT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_template_langs`
--

LOCK TABLES `email_template_langs` WRITE;
/*!40000 ALTER TABLE `email_template_langs` DISABLE KEYS */;
INSERT INTO `email_template_langs` VALUES (1,1,'ar','Login Detail','Taskly SaaS','<p>مرحبًا,<b> {user_name} </b>!</p>\n                            <p>تفاصيل تسجيل الدخول الخاصة بك لـ<b> {app_name}</b> هي <br></p>\n                            <p><b>اسم المستخدم   : </b>{email}</p>\n                            <p><b>كلمة المرور    : </b>{password}</p>\n                            <p><b>عنوان URL للتطبيق   : </b>{app_url}</p>\n                            <p>شكرًا,</p>\n                            <p>{app_name}</p>','2022-12-19 03:32:50','2022-12-19 03:32:50'),(2,1,'da','Login Detail','Taskly SaaS','<p>Hej,<b> {user_name} </b>!</p>\n                            <p>Dine loginoplysninger til<b> {app_name}</b> er <br></p>\n                            <p><b>Brugernavn   : </b>{email}</p>\n                            <p><b>Adgangskode   : </b>{password}</p>\n                            <p><b>App URL    : </b>{app_url}</p>\n                            <p>Tak,</p>\n                            <p>{app_name}</p>','2022-12-19 03:32:50','2022-12-19 03:32:50'),(3,1,'de','Login Detail','Taskly SaaS','<p>Hallo,<b> {user_name} </b>!</p>\n                            <p>Ihre Anmeldedaten für<b> {app_name}</b> ist <br></p>\n                            <p><b>Nutzername   : </b>{email}</p>\n                            <p><b>Passwort   : </b>{password}</p>\n                            <p><b>App-URL    : </b>{app_url}</p>\n                            <p>Vielen Dank,</p>\n                            <p>{app_name}</p>','2022-12-19 03:32:50','2022-12-19 03:32:50'),(4,1,'en','Login Detail','Taskly SaaS','<p>Hello,<b> {user_name} </b>!</p>\n                            <p>Your login detail for<b> {app_name}</b> is <br></p>\n                            <p><b>Username   : </b>{email}</p>\n                            <p><b>Password   : </b>{password}</p>\n                            <p><b>App Url    : </b>{app_url}</p>\n                            <p>Thanks,</p>\n                            <p>{app_name}</p>','2022-12-19 03:32:50','2022-12-19 03:32:50'),(5,1,'es','Login Detail','Taskly SaaS','<p>Hola,<b> {user_name} </b>!</p>\n                            <p>Su información de inicio de sesión para <b> {app_name}</b> es <br></p>\n                            <p><b>Nombre de usuario   : </b>{email}</p>\n                            <p><b>Clave     : </b>{password}</p>\n                            <p><b>URL de la aplicación    : </b>{app_url}</p>\n                            <p>Gracias,</p>\n                            <p>{app_name}</p>','2022-12-19 03:32:50','2022-12-19 03:32:50'),(6,1,'fr','Login Detail','Taskly SaaS','<p>Bonjour,<b> {user_name} </b>!</p>\n                            <p>Vos identifiants de connexion pour<b> {app_name}</b> est <br></p>\n                            <p><b>e-mail   : </b>{email}</p>\n                            <p><b>Mot de passe   : </b>{password}</p>\n                            <p><b>URL    : </b>{app_url}</p>\n                            <p>Merci,</p>\n                            <p>{app_name}</p>','2022-12-19 03:32:50','2022-12-19 03:32:50'),(7,1,'it','Login Detail','Taskly SaaS','<p>Ciao,<b> {user_name} </b>!</p>\n                            <p>I tuoi dati di accesso per<b> {app_name}</b> è <br></p>\n                            <p><b>Nome utente   : </b>{email}</p>\n                            <p><b>Parola d\'ordine   : </b>{password}</p>\n                            <p><b>URL dell\'app    : </b>{app_url}</p>\n                            <p>Grazie,</p>\n                            <p>{app_name}</p>','2022-12-19 03:32:50','2022-12-19 03:32:50'),(8,1,'ja','Login Detail','Taskly SaaS','<p>こんにちは,<b> {user_name} </b>!</p>\n                            <p>のログイン詳細 <b> {app_name}</b> は <br></p>\n                            <p><b>ユーザー名   : </b>{email}</p>\n                            <p><b>パスワード   : </b>{password}</p>\n                            <p><b>アプリのURL    : </b>{app_url}</p>\n                            <p>ありがとう,</p>\n                            <p>{app_name}</p>','2022-12-19 03:32:50','2022-12-19 03:32:50'),(9,1,'nl','Login Detail','Taskly SaaS','<p>Hallo,<b> {user_name} </b>!</p>\n                            <p>Uw inloggegevens voor<b> {app_name}</b> is <br></p>\n                            <p><b>gebruikersnaam   : </b>{email}</p>\n                            <p><b>Wachtwoord   : </b>{password}</p>\n                            <p><b>App-URL    : </b>{app_url}</p>\n                            <p>Bedankt,</p>\n                            <p>{app_name}</p>','2022-12-19 03:32:50','2022-12-19 03:32:50'),(10,1,'pl','Login Detail','Taskly SaaS','<p>Witam,<b> {user_name} </b>!</p>\n                            <p>Twoje dane logowania do<b> {app_name}</b> jest <br></p>\n                            <p><b>Nazwa użytkownika   : </b>{email}</p>\n                            <p><b>Hasło   : </b>{password}</p>\n                            <p><b>URL aplikacji    : </b>{app_url}</p>\n                            <p>Dziękuję,</p>\n                            <p>{app_name}</p>','2022-12-19 03:32:50','2022-12-19 03:32:50'),(11,1,'ru','Login Detail','Taskly SaaS','<p>Привет,<b> {user_name} </b>!</p>\n                            <p>Ваши данные для входа в<b> {app_name}</b> является <br></p>\n                            <p><b>Имя пользователя   : </b>{email}</p>\n                            <p><b>Пароль   : </b>{password}</p>\n                            <p><b>URL-адрес приложения    : </b>{app_url}</p>\n                            <p>Спасибо,</p>\n                            <p>{app_name}</p>','2022-12-19 03:32:50','2022-12-19 03:32:50'),(12,1,'pt','Login Detail','Taskly SaaS','<p>Olá,<b> {user_name} </b>!</p>\n                            <p>Seus detalhes de login para<b> {app_name}</b> é <br></p>\n                            <p><b>Nome de usuário   : </b>{email}</p>\n                            <p><b>Senha   : </b>{password}</p>\n                            <p><b>URL do aplicativo : </b>{app_url}</p>\n                            <p>Obrigada,</p>\n                            <p>{app_name}</p>','2022-12-19 03:32:50','2022-12-19 03:32:50'),(13,2,'ar','New Workspace Invitation','Taskly SaaS','<p>مرحبًا,{user_name} !&nbsp;<br>مرحبا بك في {app_name}.</p>\n                            <p>انت مدعو،<br>في مساحة عمل جديدة<strong>{workspace_name}</strong></p>\n                            <p>بواسطة <strong>{owner_name}.<strong></strong></strong></p>\n                            <p style=\"\"><b style=\"font-weight: bold;\">عنوان URL للتطبيق : </b>{app_url}</p>\n                            <p style=\"\">شكرًا,</p>\n                            <p style=\"\">{app_name}</p>','2022-12-19 03:32:50','2022-12-19 03:32:50'),(14,2,'da','New Workspace Invitation','Taskly SaaS','<p>Hej,{user_name} !&nbsp;<br>Velkommen til {app_name}.</p>\n                            <p>Du er inviteret,<br>ind i det nye arbejdsområde <strong>{workspace_name}</strong></p>\n                            <p>ved <strong>{owner_name}.<strong></strong></strong></p>\n                            <p style=\"\"><b style=\"font-weight: bold;\">App URL : </b>{app_url}</p>\n                            <p style=\"\">Tak,</p>\n                            <p style=\"\">{app_name}</p>','2022-12-19 03:32:50','2022-12-19 03:32:50'),(15,2,'de','New Workspace Invitation','Taskly SaaS','<p>Hallo,{user_name} !&nbsp;<br>Willkommen zu {app_name}.</p>\n                            <p>Du bist eingeladen,<br>in den neuen Arbeitsbereich <strong>{workspace_name}</strong></p>\n                            <p>durch <strong>{owner_name}.<strong></strong></strong></p>\n                            <p style=\"\"><b style=\"font-weight: bold;\">App-URL : </b>{app_url}</p>\n                            <p style=\"\">Vielen Dank,</p>\n                            <p style=\"\">{app_name}</p>','2022-12-19 03:32:50','2022-12-19 03:32:50'),(16,2,'en','New Workspace Invitation','Taskly SaaS','<p>Hello,{user_name} !&nbsp;<br>Welcome to {app_name}.</p>\n                            <p>You are invited,<br>into new Workspace <strong>{workspace_name}</strong></p>\n                            <p>by <strong>{owner_name}.<strong></strong></strong></p>\n                            <p style=\"\"><b style=\"font-weight: bold;\">App Url : </b>{app_url}</p>\n                            <p style=\"\">Thanks,</p>\n                            <p style=\"\">{app_name}</p>','2022-12-19 03:32:50','2022-12-19 03:32:50'),(17,2,'es','New Workspace Invitation','Taskly SaaS','<p>Hola,{user_name} !&nbsp;<br>Bienvenido a {app_name}.</p>\n                            <p>Estas invitado,<br>en el nuevo espacio de trabajo <strong>{workspace_name}</strong></p>\n                            <p>por <strong>{owner_name}.<strong></strong></strong></p>\n                            <p style=\"\"><b style=\"font-weight: bold;\">URL de la aplicación : </b>{app_url}</p>\n                            <p style=\"\">Gracias,</p>\n                            <p style=\"\">{app_name}</p>','2022-12-19 03:32:50','2022-12-19 03:32:50'),(18,2,'fr','New Workspace Invitation','Taskly SaaS','<p>Bonjour,{user_name} !&nbsp;<br>Bienvenue à {app_name}.</p>\n                            <p>Tu es invité,<br>dans le nouvel espace de travail<strong>{workspace_name}</strong></p>\n                            <p>par <strong>{owner_name}.<strong></strong></strong></p>\n                            <p style=\"\"><b style=\"font-weight: bold;\">URL: </b>{app_url}</p>\n                            <p style=\"\">Merci,</p>\n                            <p style=\"\">{app_name}</p>','2022-12-19 03:32:50','2022-12-19 03:32:50'),(19,2,'it','New Workspace Invitation','Taskly SaaS','<p>Ciao,{user_name} !&nbsp;<br>Benvenuto a {app_name}.</p>\n                            <p>Sei invitato,<br>nel nuovo spazio di lavoro <strong>{workspace_name}</strong></p>\n                            <p>di <strong>{owner_name}.<strong></strong></strong></p>\n                            <p style=\"\"><b style=\"font-weight: bold;\">URL dell\'app : </b>{app_url}</p>\n                            <p style=\"\">Grazie,</p>\n                            <p style=\"\">{app_name}</p>','2022-12-19 03:32:50','2022-12-19 03:32:50'),(20,2,'ja','New Workspace Invitation','Taskly SaaS','<p>こんにちは,{user_name} !&nbsp;<br>ようこそ {app_name}.</p>\n                            <p>あなたは招待されました 、,<br>新しいワークスペースに<strong>{workspace_name}</strong></p>\n                            <p>に <strong>{owner_name}.<strong></strong></strong></p>\n                            <p style=\"\"><b style=\"font-weight: bold;\">アプリのURL : </b>{app_url}</p>\n                            <p style=\"\">ありがとう,</p>\n                            <p style=\"\">{app_name}</p>','2022-12-19 03:32:50','2022-12-19 03:32:50'),(21,2,'nl','New Workspace Invitation','Taskly SaaS','<p>Hallo,{user_name} !&nbsp;<br>Welkom bij {app_name}.</p>\n                            <p>Je bent uitgenodigd,<br>naar nieuwe werkruimte<strong>{workspace_name}</strong></p>\n                            <p>door <strong>{owner_name}.<strong></strong></strong></p>\n                            <p style=\"\"><b style=\"font-weight: bold;\">App-URL : </b>{app_url}</p>\n                            <p style=\"\">Bedankt,</p>\n                            <p style=\"\">{app_name}</p>','2022-12-19 03:32:50','2022-12-19 03:32:50'),(22,2,'pl','New Workspace Invitation','Taskly SaaS','<p>Witam,{user_name} !&nbsp;<br>Witamy w {app_name}.</p>\n                            <p>Jesteś zaproszony,<br>do nowej przestrzeni roboczej <strong>{workspace_name}</strong></p>\n                            <p>za pomocą <strong>{owner_name}.<strong></strong></strong></p>\n                            <p style=\"\"><b style=\"font-weight: bold;\">URL aplikacji : </b>{app_url}</p>\n                            <p style=\"\">Dziękuję,</p>\n                            <p style=\"\">{app_name}</p>','2022-12-19 03:32:50','2022-12-19 03:32:50'),(23,2,'ru','New Workspace Invitation','Taskly SaaS','<p>Привет,{user_name} !&nbsp;<br>Добро пожаловать в {app_name}.</p>\n                            <p>Вы приглашены,<br>в новую рабочую область<strong>{workspace_name}</strong></p>\n                            <p>по <strong>{owner_name}.<strong></strong></strong></p>\n                            <p style=\"\"><b style=\"font-weight: bold;\">URL-адрес приложения : </b>{app_url}</p>\n                            <p style=\"\">Спасибо,</p>\n                            <p style=\"\">{app_name}</p>','2022-12-19 03:32:50','2022-12-19 03:32:50'),(24,2,'pt','New Workspace Invitation','Taskly SaaS','<p>Olá,{user_name} !&nbsp;<br>Bem-vindo ao {app_name}.</p>\n                            <p>Você está convidado,<br>no novo espaço de trabalho <strong>{workspace_name}</strong></p>\n                            <p>por <strong>{owner_name}.<strong></strong></strong></p>\n                            <p style=\"\"><b style=\"font-weight: bold;\">URL do aplicativo : </b>{app_url}</p>\n                            <p style=\"\">Obrigada,</p>\n                            <p style=\"\">{app_name}</p>','2022-12-19 03:32:50','2022-12-19 03:32:50'),(25,3,'ar','New Project Assign','Taskly SaaS','<p>مرحبًا,<b>{user_name}</b> !&nbsp;&nbsp;</p><p>مرحبا بك في {app_name}.</p>\n                            <p>أنت مدعو إلى مشروع جديد بواسطة <strong>{owner_name}.</strong> <br/></p>\n                            <p><b>اسم المشروع   : </b>{project_name}</p>\n                            <p><b>حالة المشروع : </b>{project_status}</p>\n                            <p><b>عنوان URL للتطبيق        : </b>{app_url}</p>\n                            <p>شكرًا,</p>\n                            <p>{app_name}</p>','2022-12-19 03:32:50','2022-12-19 03:32:50'),(26,3,'da','New Project Assign','Taskly SaaS','<p>Hej,<b>{user_name}</b> !&nbsp;&nbsp;</p><p>Velkommen til {app_name}.</p>\n                            <p>Du er inviteret ind i nyt projekt af <strong>{owner_name}.</strong> <br/></p>\n                            <p><b>Projekt navn   : </b>{project_name}</p>\n                            <p><b>Projektstatus : </b>{project_status}</p>\n                            <p><b>App URL        : </b>{app_url}</p>\n                            <p>Tak,</p>\n                            <p>{app_name}</p>','2022-12-19 03:32:50','2022-12-19 03:32:50'),(27,3,'de','New Project Assign','Taskly SaaS','<p>Hallo,<b>{user_name}</b> !&nbsp;&nbsp;</p><p>Willkommen zu{app_name}.</p>\n                            <p>Sie werden in ein neues Projekt von eingeladen <strong>{owner_name}.</strong> <br/></p>\n                            <p><b>Projektname   : </b>{project_name}</p>\n                            <p><b>Projekt-Status : </b>{project_status}</p>\n                            <p><b>App-URL        : </b>{app_url}</p>\n                            <p>Vielen Dank,</p>\n                            <p>{app_name}</p>','2022-12-19 03:32:50','2022-12-19 03:32:50'),(28,3,'en','New Project Assign','Taskly SaaS','<p>Hello,<b>{user_name}</b> !&nbsp;&nbsp;</p><p>Welcome to {app_name}.</p>\n                            <p>You are invited,into new Project by <strong>{owner_name}.</strong> <br/></p>\n                            <p><b>Project Name   : </b>{project_name}</p>\n                            <p><b>Project Status : </b>{project_status}</p>\n                            <p><b>App Url        : </b>{app_url}</p>\n                            <p>Thanks,</p>\n                            <p>{app_name}</p>','2022-12-19 03:32:50','2022-12-19 03:32:50'),(29,3,'es','New Project Assign','Taskly SaaS','<p>Hola,<b>{user_name}</b> !&nbsp;&nbsp;</p><p>Bienvenido a {app_name}.</p>\n                            <p>Estás invitado a un nuevo proyecto por <strong>{owner_name}.</strong> <br/></p>\n                            <p><b>Nombre del proyecto   : </b>{project_name}</p>\n                            <p><b>Estado del proyecto : </b>{project_status}</p>\n                            <p><b>URL de la aplicación  : </b>{app_url}</p>\n                            <p>Gracias,</p>\n                            <p>{app_name}</p>','2022-12-19 03:32:50','2022-12-19 03:32:50'),(30,3,'fr','New Project Assign','Taskly SaaS','<p>Bonjour,<b>{user_name}</b> !&nbsp;&nbsp;</p><p>Bienvenue à {app_name}.</p>\n                            <p>Vous êtes invité à un nouveau projet par<strong>{owner_name}.</strong> <br/></p>\n                            <p><b>Nom du projet  : </b>{project_name}</p>\n                            <p><b>L\'état du projet : </b>{project_status}</p>\n                            <p><b>URL de l\'application       : </b>{app_url}</p>\n                            <p>Merci,</p>\n                            <p>{app_name}</p>','2022-12-19 03:32:50','2022-12-19 03:32:50'),(31,3,'it','New Project Assign','Taskly SaaS','<p>Ciao,<b>{user_name}</b> !&nbsp;&nbsp;</p><p>Benvenuto a {app_name}.</p>\n                            <p>Sei stato invitato in un nuovo progetto da <strong>{owner_name}.</strong> <br/></p>\n                            <p><b>Nome del progetto   : </b>{project_name}</p>\n                            <p><b>Stato del progetto : </b>{project_status}</p>\n                            <p><b>URL dell\'app       : </b>{app_url}</p>\n                            <p>Grazie,</p>\n                            <p>{app_name}</p>','2022-12-19 03:32:50','2022-12-19 03:32:50'),(32,3,'ja','New Project Assign','Taskly SaaS','<p>こんにちは,<b>{user_name}</b> !&nbsp;&nbsp;</p><p>ようこそ {app_name}.</p>\n                            <p>あなたは、によって新しいプロジェクトに招待されます <strong>{owner_name}.</strong> <br/></p>\n                            <p><b>プロジェクト名  : </b>{project_name}</p>\n                            <p><b>プロジェクトの状況 : </b>{project_status}</p>\n                            <p><b>アプリのURL        : </b>{app_url}</p>\n                            <p>ありがとう,</p>\n                            <p>{app_name}</p>','2022-12-19 03:32:50','2022-12-19 03:32:50'),(33,3,'nl','New Project Assign','Taskly SaaS','<p>Hallo,<b>{user_name}</b> !&nbsp;&nbsp;</p><p>Welkom bij{app_name}.</p>\n                            <p>Je bent uitgenodigd voor een nieuw project door <strong>{owner_name}.</strong> <br/></p>\n                            <p><b>Naam van het project   : </b>{project_name}</p>\n                            <p><b>Project status : </b>{project_status}</p>\n                            <p><b>App-URL        : </b>{app_url}</p>\n                            <p>Bedankt,</p>\n                            <p>{app_name}</p>','2022-12-19 03:32:50','2022-12-19 03:32:50'),(34,3,'pl','New Project Assign','Taskly SaaS','<p>Witam,<b>{user_name}</b> !&nbsp;&nbsp;</p><p>Witamy w {app_name}.</p>\n                            <p>Zapraszamy do nowego projektu przez <strong>{owner_name}.</strong> <br/></p>\n                            <p><b>Nazwa Projektu: </b>{project_name}</p>\n                            <p><b>Stan projektu : </b>{project_status}</p>\n                            <p><b>URL aplikacji : </b>{app_url}</p>\n                            <p>Dziękuję,</p>\n                            <p>{app_name}</p>','2022-12-19 03:32:50','2022-12-19 03:32:50'),(35,3,'ru','New Project Assign','Taskly SaaS','<p>Привет,<b>{user_name}</b> !&nbsp;&nbsp;</p><p>Добро пожаловать в {app_name}.</p>\n                            <p>Вы приглашены в новый проект <strong>{owner_name}.</strong> <br/></p>\n                            <p><b>Название проекта   : </b>{project_name}</p>\n                            <p><b>Статус проекта : </b>{project_status}</p>\n                            <p><b>URL-адрес приложения : </b>{app_url}</p>\n                            <p>Спасибо,</p>\n                            <p>{app_name}</p>','2022-12-19 03:32:50','2022-12-19 03:32:50'),(36,3,'pt','New Project Assign','Taskly SaaS','<p>Olá,<b>{user_name}</b> !&nbsp;&nbsp;</p><p>Bem-vindo ao{app_name}.</p>\n                            <p>Você está convidado para um novo projeto por <strong>{owner_name}.</strong> <br/></p>\n                            <p><b>Nome do Projeto : </b>{project_name}</p>\n                            <p><b>Status do projeto : </b>{project_status}</p>\n                            <p><b>URL do aplicativo : </b>{app_url}</p>\n                            <p>Obrigada,</p>\n                            <p>{app_name}</p>','2022-12-19 03:32:50','2022-12-19 03:32:50'),(37,4,'ar','Contract Share','Taskly SaaS','<p><span style=\"font-size: 14px; font-family: sans-serif;\">مرحبًا,<b>{client_name}!</b></span>\n                            <br style=\"font-size: 14px; font-family: sans-serif;\">\n                            <span style=\"font-size: 14px; font-family: sans-serif;\">تم تعيين عقد جديد لك.</span>\n                            </p><p><span style=\"font-size: 14px; font-family: sans-serif;\">\n                              <b>موضوع العقد</b> : { contract_subject }<br>\n                            <b>اسم المشروع</b> :   {project_name}<br>\n                            <b>نوع العقد</b> : {contract_type}<br>\n                            <b>القيمة</b> : {value}<br>\n                            <b>تاريخ البدء</b> : {start_date}<br>\n                            <b>تاريخ الانتهاء</b> : {end_date}</span></p><p><br></p>','2022-12-19 03:32:50','2022-12-19 03:32:50'),(38,4,'da','Contract Share','Taskly SaaS','<p><span style=\"font-size: 14px; font-family: sans-serif;\">Hej,<b>{client_name}!</b></span>\n                            <br style=\"font-size: 14px; font-family: sans-serif;\">\n                            <span style=\"font-size: 14px; font-family: sans-serif;\">Ny kontrakt er blevet tildelt dig.</span>\n                            </p><p><span style=\"font-size: 14px; font-family: sans-serif;\">\n                             <b>Kontraktens emne </b> : { contract_subject }<br>\n                            <b>Projekt navn</b> :   {project_name}<br>\n                            <b>Kontrakttype</b> : {contract_type}<br>\n                            <b>værdi</b> : {value}<br>\n                            <b>Start dato</b> : {start_date}<br>\n                            <b>Slutdato</b> : {end_date}</span></p><p><br></p>','2022-12-19 03:32:50','2022-12-19 03:32:50'),(39,4,'de','Contract Share','Taskly SaaS','<p><span style=\"font-size: 14px; font-family: sans-serif;\">Hallo,<b>{client_name}!</b></span>\n                            <br style=\"font-size: 14px; font-family: sans-serif;\">\n                            <span style=\"font-size: 14px; font-family: sans-serif;\">Ihnen wurde ein neuer Vertrag zugewiesen.</span>\n                            </p><p><span style=\"font-size: 14px; font-family: sans-serif;\">\n                            <b>Vertragsgegenstand </b> : {contract_subject}<br>\n                            <b>Projektname</b> :   {project_name}<br>\n                            <b>Vertragstyp</b> : {contract_type}<br>\n                            <b>Wert</b> : {value}<br>\n                            <b>Anfangsdatum</b> : {start_date}<br>\n                            <b>Endtermin</b> : {end_date}</span></p><p><br></p>','2022-12-19 03:32:50','2022-12-19 03:32:50'),(40,4,'en','Contract Share','Taskly SaaS','<p><span style=\"font-size: 14px; font-family: sans-serif;\">Hello, <b>{client_name}!</b></span>\n                            <br style=\"font-size: 14px; font-family: sans-serif;\">\n                            <span style=\"font-size: 14px; font-family: sans-serif;\">New Contract has been Assign to you.</span>\n                            </p><p><span style=\"font-size: 14px; font-family: sans-serif;\">\n                            <b>Contract Subject</b> : {contract_subject}<br>\n                            <b>Project Name</b> :   {project_name}<br>\n                            <b>Contract Type</b> : {contract_type}<br>\n                            <b>value</b> : {value}<br>\n                            <b>Start date</b> : {start_date}<br>\n                            <b>End date</b> : {end_date}</span></p><p><br></p>','2022-12-19 03:32:50','2022-12-19 03:32:50'),(41,4,'es','Contract Share','Taskly SaaS','<p><span style=\"font-size: 14px; font-family: sans-serif;\">Hola,<b>{client_name}!</b></span>\n                            <br style=\"font-size: 14px; font-family: sans-serif;\">\n                            <span style=\"font-size: 14px; font-family: sans-serif;\">Se le ha asignado un nuevo contrato.</span>\n                            </p><p><span style=\"font-size: 14px; font-family: sans-serif;\">\n                              <b>Objeto del contrato</b> : {contract_subject}<br>\n                            <b>Nombre del proyecto</b> :   {project_name}<br>\n                            <b>tipo de contrato</b> : {contract_type}<br>\n                            <b>valor</b> : {value}<br>\n                            <b>Fecha de inicio</b> : {start_date}<br>\n                            <b>Fecha final</b> : {end_date}</span></p><p><br></p>','2022-12-19 03:32:50','2022-12-19 03:32:50'),(42,4,'fr','Contract Share','Taskly SaaS','<p><span style=\"font-size: 14px; font-family: sans-serif;\">Bonjour,<b>{client_name}!</b></span>\n                            <br style=\"font-size: 14px; font-family: sans-serif;\">\n                            <span style=\"font-size: 14px; font-family: sans-serif;\">Un nouveau contrat vous a été attribué.</span>\n                            </p><p><span style=\"font-size: 14px; font-family: sans-serif;\">\n                             <b>Objet du contrat</b> : {contract_subject}<br>\n                            <b>nom du projet</b> :   {project_name}<br>\n                            <b>Type de contrat</b> : {contract_type}<br>\n                            <b>évaluer</b> : {value}<br>\n                            <b>Date de début</b> : {start_date}<br>\n                            <b>Date de fin</b> : {end_date}</span></p><p><br></p>','2022-12-19 03:32:50','2022-12-19 03:32:50'),(43,4,'it','Contract Share','Taskly SaaS','<p><span style=\"font-size: 14px; font-family: sans-serif;\">Ciao,<b>{client_name}!</b></span>\n                            <br style=\"font-size: 14px; font-family: sans-serif;\">\n                            <span style=\"font-size: 14px; font-family: sans-serif;\">Ti è stato assegnato un nuovo contratto.</span>\n                            </p><p><span style=\"font-size: 14px; font-family: sans-serif;\">\n                             <b>Oggetto del contratto</b> : {contract_subject}<br>\n                            <b>Nome del progetto</b> :   {project_name}<br>\n                            <b>tipo di contratto</b> : {contract_type}<br>\n                            <b>valore</b> : {value}<br>\n                            <b>Data d\'inizio</b> : {start_date}<br>\n                            <b>Data di fine</b> : {end_date}</span></p><p><br></p>','2022-12-19 03:32:50','2022-12-19 03:32:50'),(44,4,'ja','Contract Share','Taskly SaaS','<p><span style=\"font-size: 14px; font-family: sans-serif;\">こんにちは,<b>{client_name}!</b></span>\n                            <br style=\"font-size: 14px; font-family: sans-serif;\">\n                            <span style=\"font-size: 14px; font-family: sans-serif;\">新しい契約があなたに割り当てられました.</span>\n                            </p><p><span style=\"font-size: 14px; font-family: sans-serif;\">\n                             <b>契約対象</b> : {contract_subject}<br>\n                            <b>プロジェクト名</b> :   {project_name}<br>\n                            <b>契約の種類</b> : {contract_type}<br>\n                            <b>価値</b> : {value}<br>\n                            <b>開始日</b> : {start_date}<br>\n                            <b>終了日</b> : {end_date}</span></p><p><br></p>','2022-12-19 03:32:50','2022-12-19 03:32:50'),(45,4,'nl','Contract Share','Taskly SaaS','<p><span style=\"font-size: 14px; font-family: sans-serif;\">Hallo,<b>{client_name}!</b></span>\n                            <br style=\"font-size: 14px; font-family: sans-serif;\">\n                            <span style=\"font-size: 14px; font-family: sans-serif;\">Nieuw contract is aan u toegewezen.</span>\n                            </p><p><span style=\"font-size: 14px; font-family: sans-serif;\">\n                             <b>Contractonderwerp</b> : {contract_subject}<br>\n                            <b>Naam van het project</b> :   {project_name}<br>\n                            <b>Contract type</b> : {contract_type}<br>\n                            <b>waarde</b> : {value}<br>\n                            <b>Startdatum</b> : {start_date}<br>\n                            <b>Einddatum</b> : {end_date}</span></p><p><br></p>','2022-12-19 03:32:50','2022-12-19 03:32:50'),(46,4,'pl','Contract Share','Taskly SaaS','<p><span style=\"font-size: 14px; font-family: sans-serif;\">Witam,<b>{client_name}!</b></span>\n                            <br style=\"font-size: 14px; font-family: sans-serif;\">\n                            <span style=\"font-size: 14px; font-family: sans-serif;\">Nowa umowa została Ci przypisana.</span>\n                            </p><p><span style=\"font-size: 14px; font-family: sans-serif;\">\n                            <b>Przedmiot umowy</b> : {contract_subject}<br>\n                            <b>Nazwa Projektu</b> :   {project_name}<br>\n                            <b>Typ kontraktu</b> : {contract_type}<br>\n                            <b>wartość</b> : {value}<br>\n                            <b>Data rozpoczęcia</b> : {start_date}<br>\n                            <b>Data zakonczenia</b> : {end_date}</span></p><p><br></p>','2022-12-19 03:32:50','2022-12-19 03:32:50'),(47,4,'ru','Contract Share','Taskly SaaS','<p><span style=\"font-size: 14px; font-family: sans-serif;\">Привет,<b>{client_name}!</b></span>\n                            <br style=\"font-size: 14px; font-family: sans-serif;\">\n                            <span style=\"font-size: 14px; font-family: sans-serif;\">Вам назначен новый контракт.</span>\n                            </p><p><span style=\"font-size: 14px; font-family: sans-serif;\">\n                             <b>Предмет договора</b> : {contract_subject}<br>\n                            <b>название проекта</b> :   {project_name}<br>\n                            <b>Форма контракта</b> : {contract_type}<br>\n                            <b>ценность</b> : {value}<br>\n                            <b>Дата начала</b> : {start_date}<br>\n                            <b>Дата окончания</b> : {end_date}</span></p><p><br></p>','2022-12-19 03:32:50','2022-12-19 03:32:50'),(48,4,'pt','Contract Share','Taskly SaaS','<p><span style=\"font-size: 14px; font-family: sans-serif;\">Olá,<b>{client_name}!</b></span>\n                            <br style=\"font-size: 14px; font-family: sans-serif;\">\n                            <span style=\"font-size: 14px; font-family: sans-serif;\">Novo contrato foi atribuído a você.</span>\n                            </p><p><span style=\"font-size: 14px; font-family: sans-serif;\">\n                             <b>Assunto do Contrato</b> : {contract_subject}<br>\n                            <b>Nome do Projeto</b> :   {project_name}<br>\n                            <b>tipo de contrato</b> : {contract_type}<br>\n                            <b>valor</b> : {value}<br>\n                            <b>Data de início</b> : {start_date}<br>\n                            <b>Data final</b> : {end_date}</span></p><p><br></p>','2022-12-19 03:32:50','2022-12-19 03:32:50');
/*!40000 ALTER TABLE `email_template_langs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_templates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `from` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
INSERT INTO `email_templates` VALUES (1,'New Client','Taskly SaaS','2022-12-19 03:32:50','2022-12-19 03:32:50'),(2,'Invite User','Taskly SaaS','2022-12-19 03:32:50','2022-12-19 03:32:50'),(3,'Assign Project','Taskly SaaS','2022-12-19 03:32:50','2022-12-19 03:32:50'),(4,'Contract Share','Taskly SaaS','2022-12-19 03:32:50','2022-12-19 03:32:50');
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) NOT NULL,
  `className` varchar(191) NOT NULL,
  `workspace` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_items`
--

DROP TABLE IF EXISTS `invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `item_type` varchar(191) NOT NULL,
  `item_id` bigint(20) unsigned NOT NULL,
  `price` double DEFAULT 0,
  `qty` int(11) NOT NULL,
  `invoice_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `invoice_items_item_type_item_id_index` (`item_type`,`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_items`
--

LOCK TABLES `invoice_items` WRITE;
/*!40000 ALTER TABLE `invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_payments`
--

DROP TABLE IF EXISTS `invoice_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice_payments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` varchar(191) NOT NULL,
  `currency` varchar(191) NOT NULL,
  `amount` double DEFAULT 0,
  `txn_id` varchar(191) NOT NULL,
  `payment_type` varchar(191) NOT NULL,
  `payment_status` varchar(191) NOT NULL,
  `receipt` varchar(191) NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_payments`
--

LOCK TABLES `invoice_payments` WRITE;
/*!40000 ALTER TABLE `invoice_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoices` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint(20) unsigned NOT NULL,
  `project_id` bigint(20) unsigned DEFAULT NULL,
  `status` varchar(191) NOT NULL,
  `issue_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `tax_id` text DEFAULT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `workspace_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_05_06_041033_create_workspaces_table',1),(4,'2019_05_06_084210_create_user_workspaces_table',1),(5,'2019_05_07_055821_create_projects_table',1),(6,'2019_05_08_094315_create_user_projects_table',1),(7,'2019_05_10_114541_create_todos_table',1),(8,'2019_05_11_062147_create_notes_table',1),(9,'2019_05_13_061456_create_tasks_table',1),(10,'2019_05_14_115634_create_comments_table',1),(11,'2019_05_15_054812_create_task_files_table',1),(12,'2019_05_15_115847_create_events_table',1),(13,'2019_05_15_122901_create_calendars_table',1),(14,'2019_05_31_135941_create_clients_table',1),(15,'2019_05_31_140658_create_clients_workspaces_table',1),(16,'2019_05_31_152045_create_client_projects_table',1),(17,'2019_08_16_144239_create_plans_table',1),(18,'2019_08_19_100219_create_orders_table',1),(19,'2019_09_22_192348_create_messages_table',1),(20,'2019_10_14_220244_create_milestones_table',1),(21,'2019_10_14_233948_create_sub_tasks_table',1),(22,'2019_10_15_054657_create_project_files_table',1),(23,'2019_10_16_211433_create_favorites_table',1),(24,'2019_10_18_114133_create_activity_logs_table',1),(25,'2019_10_18_223259_add_avatar_to_users',1),(26,'2019_10_20_211056_add_messenger_color_to_users',1),(27,'2019_10_22_000539_add_dark_mode_to_users',1),(28,'2019_10_25_214038_add_active_status_to_users',1),(29,'2019_12_11_152947_create_timesheets_table',1),(30,'2019_12_19_130330_create_messageses_table',1),(31,'2019_12_31_102929_create_bug_reports_table',1),(32,'2019_12_31_114041_create_bug_comments_table',1),(33,'2019_12_31_114359_create_bug_files_table',1),(34,'2020_03_13_140919_create_invoices_table',1),(35,'2020_03_13_140956_create_taxes_table',1),(36,'2020_03_13_143721_create_invoice_items_table',1),(37,'2020_03_18_130330_create_notifications_table',1),(38,'2020_03_23_153638_create_stages_table',1),(39,'2020_03_24_153638_create_bug_stages_table',1),(40,'2020_04_12_095629_create_coupons_table',1),(41,'2020_04_12_120749_create_user_coupons_table',1),(42,'2020_04_27_095629_create_invoice_payments_table',1),(43,'2020_07_29_102633_change_amount_fields',1),(44,'2020_08_04_102950_add_created_by_to_timesheets',1),(45,'2020_09_18_113053_change_for_plans_payment',1),(46,'2021_02_08_065045_add_permission_to_user_projects',1),(47,'2021_02_08_090211_add_type_and_assign_to_notes',1),(48,'2021_02_10_041104_add_color_to_stages',1),(49,'2021_07_16_061738_create_payment_settings',1),(50,'2021_07_21_043908_create_admin_payment_settings',1),(51,'2021_11_17_114953_create_plan_requests_table',1),(52,'2021_12_20_120601_create_track_photos_table',1),(53,'2021_12_20_121904_create_time_trackers_table',1),(54,'2021_12_27_095531_add_filed_in_workspace_table',1),(55,'2021_12_27_103327_create_zoom_meetings_table',1),(56,'2021_12_30_101509_add_requested_plan_to_users_table',1),(57,'2021_12_30_101539_add_interval_time_to_workspaces_table',1),(58,'2022_04_27_051739_logo_white_to_workspaces_table',1),(59,'2022_06_16_063930_add_theme_color_to_workspaces_table',1),(60,'2022_06_16_063938_add_cust_darklayout_to_workspaces_table',1),(61,'2022_06_16_063947_add_site_rtl_to_workspaces_table',1),(62,'2022_06_16_064000_add_cust_theme_bg_to_workspaces_table',1),(63,'2022_07_13_091110_create_email_templates_table',1),(64,'2022_07_13_091238_create_user_email_templates_table',1),(65,'2022_07_13_091521_create_email_template_langs_table',1),(66,'2022_07_18_110233_add_from_to_email_template_langs_table',1),(67,'2022_07_20_043815_create_project_reports_table',1),(68,'2022_07_21_103744_add_progress_to_milestones_table',1),(69,'2022_07_22_055514_add_start_date_to_milestones_table',1),(70,'2022_07_22_055749_add_end_date_to_milestones_table',1),(71,'2022_08_01_034258_create_contracts_types_table',1),(72,'2022_08_01_124650_create_contracts_table',1),(73,'2022_08_02_105912_create_contracts_attachments_table',1),(74,'2022_08_02_105936_create_contracts_comments_table',1),(75,'2022_08_02_112012_create_contracts_notes_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `milestones`
--

DROP TABLE IF EXISTS `milestones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `milestones` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `title` varchar(191) NOT NULL,
  `status` varchar(191) NOT NULL,
  `progress` varchar(191) DEFAULT NULL,
  `cost` double DEFAULT 0,
  `end_date` date DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `summary` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `milestones`
--

LOCK TABLES `milestones` WRITE;
/*!40000 ALTER TABLE `milestones` DISABLE KEYS */;
INSERT INTO `milestones` VALUES (5,3,'FastWork Regist','complete','100',0,'0000-00-00','0000-00-00','','2023-09-15 06:26:23','2023-09-15 06:26:35'),(2,5,'Payment Awal 30%','complete','0',240000,'0000-00-00','0000-00-00','','2023-09-14 05:42:28','2023-09-14 06:06:23'),(3,5,'2nd Payment 50%','complete',NULL,400000,NULL,NULL,'','2023-09-14 05:43:04','2023-09-14 05:43:04'),(4,5,'Final Payment','incomplete',NULL,160000,NULL,NULL,'','2023-09-14 05:43:31','2023-09-14 05:43:31');
/*!40000 ALTER TABLE `milestones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) NOT NULL,
  `text` text NOT NULL,
  `color` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL DEFAULT 'personal',
  `assign_to` varchar(191) DEFAULT NULL,
  `workspace` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (1,'task','communication psychology assignment','bg-warning','personal','3',2,3,'2023-01-03 03:45:18','2023-01-03 03:45:18'),(2,'ENV backup','APP_NAME=Niva\r\nAPP_ENV=local\r\nAPP_KEY=base64:x6gvCoPqvSIu/8QekuBtwrHSJpZG0SyiDanlNSeb9z4=\r\nAPP_DEBUG=true\r\nAPP_URL=https://niva.lucian.host\r\n\r\nLOG_CHANNEL=stack\r\nLOG_LEVEL=debug\r\n\r\nDB_CONNECTION=mysql\r\nDB_HOST=127.0.0.1\r\nDB_PORT=3306\r\nDB_DATABASE=cigico_main\r\nDB_USERNAME=cigico_1\r\nDB_PASSWORD=fakechar11!\r\n\r\nBROADCAST_DRIVER=log\r\nCACHE_DRIVER=file\r\nQUEUE_CONNECTION=sync\r\nSESSION_DRIVER=database\r\nSESSION_LIFETIME=120\r\n\r\nMEMCACHED_HOST=127.0.0.1\r\n\r\nREDIS_HOST=127.0.0.1\r\nREDIS_PASSWORD=null\r\nREDIS_PORT=6379\r\n\r\nMAIL_MAILER=smtp\r\nMAIL_HOST=lucian.host\r\nMAIL_PORT=465\r\nMAIL_USERNAME=contact@lucian.host\r\nMAIL_PASSWORD=Amidamaru94!\r\nMAIL_ENCRYPTION=SSL\r\nMAIL_FROM_ADDRESS=contact@lucian.host\r\nMAIL_FROM_NAME=\"${APP_NAME}\"\r\n\r\nAWS_ACCESS_KEY_ID=\r\nAWS_SECRET_ACCESS_KEY=\r\nAWS_DEFAULT_REGION=us-east-1\r\nAWS_BUCKET=\r\n\r\nPUSHER_APP_ID=\r\nPUSHER_APP_KEY=\r\nPUSHER_APP_SECRET=\r\nPUSHER_APP_CLUSTER=mt1\r\n\r\nMIX_PUSHER_APP_KEY=\"${PUSHER_APP_KEY}\"\r\nMIX_PUSHER_APP_CLUSTER=\"${PUSHER_APP_CLUSTER}\"\r\n\r\n\r\nNOCAPTCHA_SECRET=6LebCwkoAAAAAOR1SMaVC9Vr7vRhNAGsPjpb2g6T\r\nNOCAPTCHA_SITEKEY=6LebCwkoAAAAAD4CL3k98QKggMorEmcJtVkX87IT\r\n\r\nCOOKIE_CONSENT_ENABLED=false\r\n\r\nFILESYSTEM_DRIVER=public\r\n\r\n---','bg-primary','shared','6,5',3,5,'2023-09-07 09:04:32','2023-09-07 10:10:31'),(3,'LokaKota Description','List Budget\r\n\r\n- hosting - (netlify) - (free)\r\n- domain - 300k, 200k\r\n- desain + code- 500k\r\n\r\n.id = 1.5 jt\r\n.com = 1.3 jt','bg-primary','shared','7,5,8,6',3,6,'2023-09-08 07:26:57','2023-09-08 07:33:47');
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `workspace_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `type` text NOT NULL,
  `data` text NOT NULL,
  `is_read` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (1,2,3,'task_assign','{\"project_id\":\"1\",\"milestone_id\":0,\"title\":\"Pembelian Server\",\"priority\":\"High\",\"assign_to\":\"3\",\"start_date\":\"2022-12-09 00:00:00\",\"due_date\":\"2022-12-09 00:00:00\",\"description\":\"** SIMPAN EMAIL INI SEBAGAI CATATAN KAMU **\\r\\n** MOHON BACA EMAIL INI SELURUHNYA **\\r\\n\\r\\n\\r\\nDear Muhammad Rikhza Maulana (Citra Digital Kreasi),\\r\\n\\r\\nSelamat datang di DEWAWEB - Layanan Cloud Hosting Terbaik di Indonesia!\\r\\n\\r\\nAccount hosting kamu sudah siap dan email ini mengandung semua informasi yang dibutuhkan untuk mengelola website kamu.\\r\\n\\r\\nInformasi Account Hosting\\r\\n\\r\\nServer Name: sgx13.dewaweb.com\\r\\nHosting Package: Hunter\\r\\nCloud Storage: 2 GB\\r\\nDatabases, Emails, IOPS, Inodes & Bandwidth: Unlimited\\r\\nAddon and Parked Domains: 3\\r\\nCloud Power: 1 CPU Core + 512 MB RAM\\r\\nMax Outgoing Mails: 200 email\\/hour\\r\\n\\r\\nDomain: cigi.co.id\\r\\nIP Address: 103.145.227.144 (shared)\",\"status\":5,\"updated_at\":\"2022-12-20T01:22:38.000000Z\",\"created_at\":\"2022-12-20T01:22:38.000000Z\",\"id\":1}',0,'2022-12-19 17:22:38','2022-12-19 17:22:38'),(2,2,3,'task_assign','{\"project_id\":\"1\",\"milestone_id\":0,\"title\":\"Coding Proses\",\"priority\":\"Medium\",\"assign_to\":\"3\",\"start_date\":\"2022-12-20 00:00:00\",\"due_date\":\"2022-12-20 00:00:00\",\"description\":\"Tahap konfigurasi server dan build website\",\"status\":5,\"updated_at\":\"2022-12-20T01:23:53.000000Z\",\"created_at\":\"2022-12-20T01:23:53.000000Z\",\"id\":2}',0,'2022-12-19 17:23:53','2022-12-19 17:23:53'),(3,2,3,'task_assign','{\"project_id\":\"1\",\"milestone_id\":0,\"title\":\"Deploy Search Engine Indexing\",\"priority\":\"Medium\",\"assign_to\":\"3\",\"start_date\":\"2022-12-20 00:00:00\",\"due_date\":\"2022-12-20 00:00:00\",\"description\":\"\",\"status\":5,\"updated_at\":\"2022-12-20T01:25:10.000000Z\",\"created_at\":\"2022-12-20T01:25:10.000000Z\",\"id\":3}',0,'2022-12-19 17:25:10','2022-12-19 17:25:10'),(4,2,3,'task_assign','{\"project_id\":\"1\",\"milestone_id\":0,\"title\":\"SEO Improvement\",\"priority\":\"Low\",\"assign_to\":\"3\",\"start_date\":\"2022-12-20 00:00:00\",\"due_date\":\"2022-12-20 00:00:00\",\"description\":\"\",\"status\":5,\"updated_at\":\"2022-12-20T01:25:37.000000Z\",\"created_at\":\"2022-12-20T01:25:37.000000Z\",\"id\":4}',0,'2022-12-19 17:25:37','2022-12-19 17:25:37'),(5,3,5,'task_assign','{\"project_id\":\"2\",\"milestone_id\":0,\"title\":\"System Documentation (Flow Process, UML Diagram)\",\"priority\":\"High\",\"assign_to\":\"5\",\"start_date\":\"2023-09-04 00:00:00\",\"due_date\":\"2023-09-04 00:00:00\",\"description\":\"\",\"status\":9,\"updated_at\":\"2023-09-04T13:53:11.000000Z\",\"created_at\":\"2023-09-04T13:53:11.000000Z\",\"id\":5}',0,'2023-09-04 05:53:11','2023-09-04 05:53:11'),(6,3,5,'task_assign','{\"project_id\":\"2\",\"milestone_id\":0,\"title\":\"UI UX Booking Management System\",\"priority\":\"Medium\",\"assign_to\":\"5\",\"start_date\":\"2023-09-04 00:00:00\",\"due_date\":\"2023-09-04 00:00:00\",\"description\":\"\",\"status\":9,\"updated_at\":\"2023-09-04T13:53:47.000000Z\",\"created_at\":\"2023-09-04T13:53:47.000000Z\",\"id\":6}',0,'2023-09-04 05:53:47','2023-09-04 05:53:47'),(7,3,6,'task_assign','{\"project_id\":\"2\",\"milestone_id\":0,\"title\":\"Technology Selection for Dev\",\"priority\":\"High\",\"assign_to\":\"6\",\"start_date\":\"2023-09-04 00:00:00\",\"due_date\":\"2023-09-04 00:00:00\",\"description\":\"\",\"status\":9,\"updated_at\":\"2023-09-04T13:59:50.000000Z\",\"created_at\":\"2023-09-04T13:59:50.000000Z\",\"id\":7}',0,'2023-09-04 05:59:50','2023-09-04 05:59:50'),(8,3,6,'task_assign','{\"project_id\":\"2\",\"milestone_id\":0,\"title\":\"UML Use Case, ERD\",\"priority\":\"Medium\",\"assign_to\":\"6\",\"start_date\":\"2023-09-04 00:00:00\",\"due_date\":\"2023-09-04 00:00:00\",\"description\":\"\",\"status\":9,\"updated_at\":\"2023-09-04T14:02:01.000000Z\",\"created_at\":\"2023-09-04T14:02:01.000000Z\",\"id\":8}',0,'2023-09-04 06:02:01','2023-09-04 06:02:01'),(9,3,6,'task_assign','{\"project_id\":\"2\",\"milestone_id\":0,\"title\":\"Setup Front End Project\",\"priority\":\"Low\",\"assign_to\":\"6\",\"start_date\":\"2023-09-05 00:00:00\",\"due_date\":\"2023-09-05 00:00:00\",\"description\":\"\",\"status\":9,\"updated_at\":\"2023-09-05T06:25:25.000000Z\",\"created_at\":\"2023-09-05T06:25:25.000000Z\",\"id\":9}',0,'2023-09-04 22:25:25','2023-09-04 22:25:25'),(10,3,6,'task_assign','{\"project_id\":\"4\",\"milestone_id\":0,\"title\":\"Proposal Proyek\",\"priority\":\"High\",\"assign_to\":\"6,7,5,8\",\"start_date\":\"2023-09-08 00:00:00\",\"due_date\":\"2023-09-10 00:00:00\",\"description\":\"A. Ringkasan Eksekutif\\r\\n\\r\\nKlien: Lokakota (Nama Perusahaan)\\r\\n\\r\\nTujuan: Membangun merek kota yang kuat dan menarik untuk menarik investasi, pariwisata, dan penghuni baru.\\r\\n\\r\\nLatar Belakang: Lokakota adalah perusahaan konsultan city branding yang bertujuan membantu kota-kota berkembang menjadi destinasi yang menarik dan kompetitif.\\r\\n\\r\\nTugas Utama: Mengembangkan strategi city branding yang komprehensif untuk mempromosikan Lokakota sebagai tujuan unggulan bagi investasi, pariwisata, dan penghuni baru.\\r\\n\\r\\nB. Lingkup Pekerjaan\\r\\n\\r\\nAnalisis Awal: Melakukan penilaian mendalam terhadap karakteristik, potensi, dan tantangan yang dihadapi oleh Lokakota.\\r\\n\\r\\nPenentuan Posisi Branding: Membantu klien menentukan nilai inti, visi, dan pesan merek kota.\\r\\n\\r\\nPengembangan Identitas Visual: Menciptakan elemen-elemen identitas visual yang kuat, termasuk logo, palet warna, dan panduan desain merek.\\r\\n\\r\\nStrategi Konten: Mengembangkan strategi konten yang akan digunakan dalam kampanye branding, termasuk media sosial, situs web, dan materi pemasaran.\\r\\n\\r\\nKampanye Branding: Melaksanakan kampanye branding melalui berbagai saluran, seperti media sosial, iklan, dan promosi.\\r\\n\\r\\nEdukasi dan Pelatihan: Melakukan pelatihan bagi staf dan pemangku kepentingan untuk memastikan implementasi yang efektif.\\r\\n\\r\\nPengukuran dan Evaluasi: Mengukur kinerja kampanye dan memberikan laporan berkala kepada klien.\\r\\n\\r\\nC. Anggaran dan Waktu\\r\\n\\r\\nAnggaran: [Total Anggaran Proyek]\\r\\n\\r\\nWaktu: Proyek ini diperkirakan akan berlangsung selama [Durasi Proyek], dimulai pada [Tanggal Mulai] dan selesai pada [Tanggal Selesai].\\r\\n\\r\\nD. Tim Proyek\\r\\n\\r\\n[Nama Anda atau Nama Anggota Tim] - [Posisi] (Proyek Manager)\\r\\n[Nama Anggota Tim Lainnya] - [Posisi]\\r\\nE. Metodologi\\r\\n\\r\\nKami akan menggunakan pendekatan yang terintegrasi, termasuk riset pasar, wawancara pemangku kepentingan, analisis kompetitor, dan penggunaan alat analisis data untuk mengidentifikasi peluang dan ancaman.\\r\\n\\r\\nF. Hasil yang Diharapkan\\r\\n\\r\\nIdentitas merek kota yang kuat dan konsisten.\\r\\nKampanye branding yang berhasil dengan tingkat keterlibatan yang tinggi dari pemangku kepentingan.\\r\\nPeningkatan investasi, kunjungan wisata, dan kehadiran penduduk baru.\\r\\nG. Catatan Akhir\\r\\n\\r\\nKami percaya bahwa upaya bersama kami akan membantu Lokakota mencapai tujuan dalam membangun merek kota yang menarik dan kompetitif. Kami sangat bersemangat untuk memulai proyek ini dan berharap dapat bekerja sama dengan Anda.\\r\\n\\r\\nTerima kasih atas perhatian Anda, dan kami siap untuk menjawab pertanyaan Anda atau memulai diskusi lebih lanjut.\\r\\n\\r\\nHormat kami,\\r\\n[Tanda Tangan Anda]\\r\\n[Nama Perusahaan Anda]\\r\\n[Tanggal]\",\"status\":9,\"updated_at\":\"2023-09-08T15:33:13.000000Z\",\"created_at\":\"2023-09-08T15:33:13.000000Z\",\"id\":10}',0,'2023-09-08 07:33:13','2023-09-08 07:33:13'),(11,3,7,'task_assign','{\"project_id\":\"4\",\"milestone_id\":0,\"title\":\"Proposal Proyek\",\"priority\":\"High\",\"assign_to\":\"6,7,5,8\",\"start_date\":\"2023-09-08 00:00:00\",\"due_date\":\"2023-09-10 00:00:00\",\"description\":\"A. Ringkasan Eksekutif\\r\\n\\r\\nKlien: Lokakota (Nama Perusahaan)\\r\\n\\r\\nTujuan: Membangun merek kota yang kuat dan menarik untuk menarik investasi, pariwisata, dan penghuni baru.\\r\\n\\r\\nLatar Belakang: Lokakota adalah perusahaan konsultan city branding yang bertujuan membantu kota-kota berkembang menjadi destinasi yang menarik dan kompetitif.\\r\\n\\r\\nTugas Utama: Mengembangkan strategi city branding yang komprehensif untuk mempromosikan Lokakota sebagai tujuan unggulan bagi investasi, pariwisata, dan penghuni baru.\\r\\n\\r\\nB. Lingkup Pekerjaan\\r\\n\\r\\nAnalisis Awal: Melakukan penilaian mendalam terhadap karakteristik, potensi, dan tantangan yang dihadapi oleh Lokakota.\\r\\n\\r\\nPenentuan Posisi Branding: Membantu klien menentukan nilai inti, visi, dan pesan merek kota.\\r\\n\\r\\nPengembangan Identitas Visual: Menciptakan elemen-elemen identitas visual yang kuat, termasuk logo, palet warna, dan panduan desain merek.\\r\\n\\r\\nStrategi Konten: Mengembangkan strategi konten yang akan digunakan dalam kampanye branding, termasuk media sosial, situs web, dan materi pemasaran.\\r\\n\\r\\nKampanye Branding: Melaksanakan kampanye branding melalui berbagai saluran, seperti media sosial, iklan, dan promosi.\\r\\n\\r\\nEdukasi dan Pelatihan: Melakukan pelatihan bagi staf dan pemangku kepentingan untuk memastikan implementasi yang efektif.\\r\\n\\r\\nPengukuran dan Evaluasi: Mengukur kinerja kampanye dan memberikan laporan berkala kepada klien.\\r\\n\\r\\nC. Anggaran dan Waktu\\r\\n\\r\\nAnggaran: [Total Anggaran Proyek]\\r\\n\\r\\nWaktu: Proyek ini diperkirakan akan berlangsung selama [Durasi Proyek], dimulai pada [Tanggal Mulai] dan selesai pada [Tanggal Selesai].\\r\\n\\r\\nD. Tim Proyek\\r\\n\\r\\n[Nama Anda atau Nama Anggota Tim] - [Posisi] (Proyek Manager)\\r\\n[Nama Anggota Tim Lainnya] - [Posisi]\\r\\nE. Metodologi\\r\\n\\r\\nKami akan menggunakan pendekatan yang terintegrasi, termasuk riset pasar, wawancara pemangku kepentingan, analisis kompetitor, dan penggunaan alat analisis data untuk mengidentifikasi peluang dan ancaman.\\r\\n\\r\\nF. Hasil yang Diharapkan\\r\\n\\r\\nIdentitas merek kota yang kuat dan konsisten.\\r\\nKampanye branding yang berhasil dengan tingkat keterlibatan yang tinggi dari pemangku kepentingan.\\r\\nPeningkatan investasi, kunjungan wisata, dan kehadiran penduduk baru.\\r\\nG. Catatan Akhir\\r\\n\\r\\nKami percaya bahwa upaya bersama kami akan membantu Lokakota mencapai tujuan dalam membangun merek kota yang menarik dan kompetitif. Kami sangat bersemangat untuk memulai proyek ini dan berharap dapat bekerja sama dengan Anda.\\r\\n\\r\\nTerima kasih atas perhatian Anda, dan kami siap untuk menjawab pertanyaan Anda atau memulai diskusi lebih lanjut.\\r\\n\\r\\nHormat kami,\\r\\n[Tanda Tangan Anda]\\r\\n[Nama Perusahaan Anda]\\r\\n[Tanggal]\",\"status\":9,\"updated_at\":\"2023-09-08T15:33:13.000000Z\",\"created_at\":\"2023-09-08T15:33:13.000000Z\",\"id\":10}',0,'2023-09-08 07:33:13','2023-09-08 07:33:13'),(12,3,5,'task_assign','{\"project_id\":\"4\",\"milestone_id\":0,\"title\":\"Proposal Proyek\",\"priority\":\"High\",\"assign_to\":\"6,7,5,8\",\"start_date\":\"2023-09-08 00:00:00\",\"due_date\":\"2023-09-10 00:00:00\",\"description\":\"A. Ringkasan Eksekutif\\r\\n\\r\\nKlien: Lokakota (Nama Perusahaan)\\r\\n\\r\\nTujuan: Membangun merek kota yang kuat dan menarik untuk menarik investasi, pariwisata, dan penghuni baru.\\r\\n\\r\\nLatar Belakang: Lokakota adalah perusahaan konsultan city branding yang bertujuan membantu kota-kota berkembang menjadi destinasi yang menarik dan kompetitif.\\r\\n\\r\\nTugas Utama: Mengembangkan strategi city branding yang komprehensif untuk mempromosikan Lokakota sebagai tujuan unggulan bagi investasi, pariwisata, dan penghuni baru.\\r\\n\\r\\nB. Lingkup Pekerjaan\\r\\n\\r\\nAnalisis Awal: Melakukan penilaian mendalam terhadap karakteristik, potensi, dan tantangan yang dihadapi oleh Lokakota.\\r\\n\\r\\nPenentuan Posisi Branding: Membantu klien menentukan nilai inti, visi, dan pesan merek kota.\\r\\n\\r\\nPengembangan Identitas Visual: Menciptakan elemen-elemen identitas visual yang kuat, termasuk logo, palet warna, dan panduan desain merek.\\r\\n\\r\\nStrategi Konten: Mengembangkan strategi konten yang akan digunakan dalam kampanye branding, termasuk media sosial, situs web, dan materi pemasaran.\\r\\n\\r\\nKampanye Branding: Melaksanakan kampanye branding melalui berbagai saluran, seperti media sosial, iklan, dan promosi.\\r\\n\\r\\nEdukasi dan Pelatihan: Melakukan pelatihan bagi staf dan pemangku kepentingan untuk memastikan implementasi yang efektif.\\r\\n\\r\\nPengukuran dan Evaluasi: Mengukur kinerja kampanye dan memberikan laporan berkala kepada klien.\\r\\n\\r\\nC. Anggaran dan Waktu\\r\\n\\r\\nAnggaran: [Total Anggaran Proyek]\\r\\n\\r\\nWaktu: Proyek ini diperkirakan akan berlangsung selama [Durasi Proyek], dimulai pada [Tanggal Mulai] dan selesai pada [Tanggal Selesai].\\r\\n\\r\\nD. Tim Proyek\\r\\n\\r\\n[Nama Anda atau Nama Anggota Tim] - [Posisi] (Proyek Manager)\\r\\n[Nama Anggota Tim Lainnya] - [Posisi]\\r\\nE. Metodologi\\r\\n\\r\\nKami akan menggunakan pendekatan yang terintegrasi, termasuk riset pasar, wawancara pemangku kepentingan, analisis kompetitor, dan penggunaan alat analisis data untuk mengidentifikasi peluang dan ancaman.\\r\\n\\r\\nF. Hasil yang Diharapkan\\r\\n\\r\\nIdentitas merek kota yang kuat dan konsisten.\\r\\nKampanye branding yang berhasil dengan tingkat keterlibatan yang tinggi dari pemangku kepentingan.\\r\\nPeningkatan investasi, kunjungan wisata, dan kehadiran penduduk baru.\\r\\nG. Catatan Akhir\\r\\n\\r\\nKami percaya bahwa upaya bersama kami akan membantu Lokakota mencapai tujuan dalam membangun merek kota yang menarik dan kompetitif. Kami sangat bersemangat untuk memulai proyek ini dan berharap dapat bekerja sama dengan Anda.\\r\\n\\r\\nTerima kasih atas perhatian Anda, dan kami siap untuk menjawab pertanyaan Anda atau memulai diskusi lebih lanjut.\\r\\n\\r\\nHormat kami,\\r\\n[Tanda Tangan Anda]\\r\\n[Nama Perusahaan Anda]\\r\\n[Tanggal]\",\"status\":9,\"updated_at\":\"2023-09-08T15:33:13.000000Z\",\"created_at\":\"2023-09-08T15:33:13.000000Z\",\"id\":10}',0,'2023-09-08 07:33:13','2023-09-08 07:33:13'),(13,3,8,'task_assign','{\"project_id\":\"4\",\"milestone_id\":0,\"title\":\"Proposal Proyek\",\"priority\":\"High\",\"assign_to\":\"6,7,5,8\",\"start_date\":\"2023-09-08 00:00:00\",\"due_date\":\"2023-09-10 00:00:00\",\"description\":\"A. Ringkasan Eksekutif\\r\\n\\r\\nKlien: Lokakota (Nama Perusahaan)\\r\\n\\r\\nTujuan: Membangun merek kota yang kuat dan menarik untuk menarik investasi, pariwisata, dan penghuni baru.\\r\\n\\r\\nLatar Belakang: Lokakota adalah perusahaan konsultan city branding yang bertujuan membantu kota-kota berkembang menjadi destinasi yang menarik dan kompetitif.\\r\\n\\r\\nTugas Utama: Mengembangkan strategi city branding yang komprehensif untuk mempromosikan Lokakota sebagai tujuan unggulan bagi investasi, pariwisata, dan penghuni baru.\\r\\n\\r\\nB. Lingkup Pekerjaan\\r\\n\\r\\nAnalisis Awal: Melakukan penilaian mendalam terhadap karakteristik, potensi, dan tantangan yang dihadapi oleh Lokakota.\\r\\n\\r\\nPenentuan Posisi Branding: Membantu klien menentukan nilai inti, visi, dan pesan merek kota.\\r\\n\\r\\nPengembangan Identitas Visual: Menciptakan elemen-elemen identitas visual yang kuat, termasuk logo, palet warna, dan panduan desain merek.\\r\\n\\r\\nStrategi Konten: Mengembangkan strategi konten yang akan digunakan dalam kampanye branding, termasuk media sosial, situs web, dan materi pemasaran.\\r\\n\\r\\nKampanye Branding: Melaksanakan kampanye branding melalui berbagai saluran, seperti media sosial, iklan, dan promosi.\\r\\n\\r\\nEdukasi dan Pelatihan: Melakukan pelatihan bagi staf dan pemangku kepentingan untuk memastikan implementasi yang efektif.\\r\\n\\r\\nPengukuran dan Evaluasi: Mengukur kinerja kampanye dan memberikan laporan berkala kepada klien.\\r\\n\\r\\nC. Anggaran dan Waktu\\r\\n\\r\\nAnggaran: [Total Anggaran Proyek]\\r\\n\\r\\nWaktu: Proyek ini diperkirakan akan berlangsung selama [Durasi Proyek], dimulai pada [Tanggal Mulai] dan selesai pada [Tanggal Selesai].\\r\\n\\r\\nD. Tim Proyek\\r\\n\\r\\n[Nama Anda atau Nama Anggota Tim] - [Posisi] (Proyek Manager)\\r\\n[Nama Anggota Tim Lainnya] - [Posisi]\\r\\nE. Metodologi\\r\\n\\r\\nKami akan menggunakan pendekatan yang terintegrasi, termasuk riset pasar, wawancara pemangku kepentingan, analisis kompetitor, dan penggunaan alat analisis data untuk mengidentifikasi peluang dan ancaman.\\r\\n\\r\\nF. Hasil yang Diharapkan\\r\\n\\r\\nIdentitas merek kota yang kuat dan konsisten.\\r\\nKampanye branding yang berhasil dengan tingkat keterlibatan yang tinggi dari pemangku kepentingan.\\r\\nPeningkatan investasi, kunjungan wisata, dan kehadiran penduduk baru.\\r\\nG. Catatan Akhir\\r\\n\\r\\nKami percaya bahwa upaya bersama kami akan membantu Lokakota mencapai tujuan dalam membangun merek kota yang menarik dan kompetitif. Kami sangat bersemangat untuk memulai proyek ini dan berharap dapat bekerja sama dengan Anda.\\r\\n\\r\\nTerima kasih atas perhatian Anda, dan kami siap untuk menjawab pertanyaan Anda atau memulai diskusi lebih lanjut.\\r\\n\\r\\nHormat kami,\\r\\n[Tanda Tangan Anda]\\r\\n[Nama Perusahaan Anda]\\r\\n[Tanggal]\",\"status\":9,\"updated_at\":\"2023-09-08T15:33:13.000000Z\",\"created_at\":\"2023-09-08T15:33:13.000000Z\",\"id\":10}',0,'2023-09-08 07:33:13','2023-09-08 07:33:13'),(14,3,6,'task_assign','{\"project_id\":\"3\",\"milestone_id\":0,\"title\":\"contoh konten 1\",\"priority\":\"Low\",\"assign_to\":\"6,7,5,8\",\"start_date\":\"2023-09-12 00:00:00\",\"due_date\":\"2023-09-12 00:00:00\",\"description\":\"\",\"status\":9,\"updated_at\":\"2023-09-11T13:57:11.000000Z\",\"created_at\":\"2023-09-11T13:57:11.000000Z\",\"id\":11}',0,'2023-09-11 05:57:11','2023-09-11 05:57:11'),(15,3,7,'task_assign','{\"project_id\":\"3\",\"milestone_id\":0,\"title\":\"contoh konten 1\",\"priority\":\"Low\",\"assign_to\":\"6,7,5,8\",\"start_date\":\"2023-09-12 00:00:00\",\"due_date\":\"2023-09-12 00:00:00\",\"description\":\"\",\"status\":9,\"updated_at\":\"2023-09-11T13:57:11.000000Z\",\"created_at\":\"2023-09-11T13:57:11.000000Z\",\"id\":11}',0,'2023-09-11 05:57:11','2023-09-11 05:57:11'),(16,3,5,'task_assign','{\"project_id\":\"3\",\"milestone_id\":0,\"title\":\"contoh konten 1\",\"priority\":\"Low\",\"assign_to\":\"6,7,5,8\",\"start_date\":\"2023-09-12 00:00:00\",\"due_date\":\"2023-09-12 00:00:00\",\"description\":\"\",\"status\":9,\"updated_at\":\"2023-09-11T13:57:11.000000Z\",\"created_at\":\"2023-09-11T13:57:11.000000Z\",\"id\":11}',0,'2023-09-11 05:57:11','2023-09-11 05:57:11'),(17,3,8,'task_assign','{\"project_id\":\"3\",\"milestone_id\":0,\"title\":\"contoh konten 1\",\"priority\":\"Low\",\"assign_to\":\"6,7,5,8\",\"start_date\":\"2023-09-12 00:00:00\",\"due_date\":\"2023-09-12 00:00:00\",\"description\":\"\",\"status\":9,\"updated_at\":\"2023-09-11T13:57:11.000000Z\",\"created_at\":\"2023-09-11T13:57:11.000000Z\",\"id\":11}',0,'2023-09-11 05:57:11','2023-09-11 05:57:11'),(18,3,7,'task_assign','{\"project_id\":\"3\",\"milestone_id\":0,\"title\":\"fhjabdkjaD\",\"priority\":\"Low\",\"assign_to\":\"7\",\"start_date\":\"2023-09-11 00:00:00\",\"due_date\":\"2023-09-11 00:00:00\",\"description\":\"GHFJFH\",\"status\":9,\"updated_at\":\"2023-09-11T13:57:18.000000Z\",\"created_at\":\"2023-09-11T13:57:18.000000Z\",\"id\":12}',0,'2023-09-11 05:57:18','2023-09-11 05:57:18'),(19,3,6,'task_assign','{\"project_id\":\"5\",\"milestone_id\":\"4\",\"title\":\"Develop Scope Revision\",\"priority\":\"High\",\"assign_to\":\"6,7,5,8\",\"start_date\":\"2023-09-13 23:00:00\",\"due_date\":\"2023-09-14 00:00:00\",\"description\":\"\",\"status\":9,\"updated_at\":\"2023-09-14T13:46:25.000000Z\",\"created_at\":\"2023-09-14T13:46:25.000000Z\",\"id\":13}',0,'2023-09-14 05:46:25','2023-09-14 05:46:25'),(20,3,7,'task_assign','{\"project_id\":\"5\",\"milestone_id\":\"4\",\"title\":\"Develop Scope Revision\",\"priority\":\"High\",\"assign_to\":\"6,7,5,8\",\"start_date\":\"2023-09-13 23:00:00\",\"due_date\":\"2023-09-14 00:00:00\",\"description\":\"\",\"status\":9,\"updated_at\":\"2023-09-14T13:46:25.000000Z\",\"created_at\":\"2023-09-14T13:46:25.000000Z\",\"id\":13}',0,'2023-09-14 05:46:25','2023-09-14 05:46:25'),(21,3,5,'task_assign','{\"project_id\":\"5\",\"milestone_id\":\"4\",\"title\":\"Develop Scope Revision\",\"priority\":\"High\",\"assign_to\":\"6,7,5,8\",\"start_date\":\"2023-09-13 23:00:00\",\"due_date\":\"2023-09-14 00:00:00\",\"description\":\"\",\"status\":9,\"updated_at\":\"2023-09-14T13:46:25.000000Z\",\"created_at\":\"2023-09-14T13:46:25.000000Z\",\"id\":13}',0,'2023-09-14 05:46:25','2023-09-14 05:46:25'),(22,3,8,'task_assign','{\"project_id\":\"5\",\"milestone_id\":\"4\",\"title\":\"Develop Scope Revision\",\"priority\":\"High\",\"assign_to\":\"6,7,5,8\",\"start_date\":\"2023-09-13 23:00:00\",\"due_date\":\"2023-09-14 00:00:00\",\"description\":\"\",\"status\":9,\"updated_at\":\"2023-09-14T13:46:25.000000Z\",\"created_at\":\"2023-09-14T13:46:25.000000Z\",\"id\":13}',0,'2023-09-14 05:46:25','2023-09-14 05:46:25');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` varchar(100) NOT NULL,
  `subscription_id` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `card_number` varchar(10) DEFAULT NULL,
  `card_exp_month` varchar(10) DEFAULT NULL,
  `card_exp_year` varchar(10) DEFAULT NULL,
  `plan_name` varchar(100) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `price` double DEFAULT 0,
  `price_currency` varchar(10) NOT NULL,
  `txn_id` varchar(100) NOT NULL,
  `payer_id` varchar(100) DEFAULT NULL,
  `payment_frequency` varchar(100) DEFAULT NULL,
  `payment_type` varchar(100) DEFAULT NULL,
  `payment_status` varchar(100) NOT NULL,
  `receipt` varchar(191) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `orders_order_id_unique` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_settings`
--

DROP TABLE IF EXISTS `payment_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `value` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `payment_settings_name_created_by_unique` (`name`,`created_by`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_settings`
--

LOCK TABLES `payment_settings` WRITE;
/*!40000 ALTER TABLE `payment_settings` DISABLE KEYS */;
INSERT INTO `payment_settings` VALUES (1,'is_paystack_enabled','off',2,'2022-12-19 17:08:18','2022-12-19 17:08:18'),(2,'is_flutterwave_enabled','off',2,'2022-12-19 17:08:18','2022-12-19 17:08:18'),(3,'is_razorpay_enabled','off',2,'2022-12-19 17:08:18','2022-12-19 17:08:18'),(4,'is_mercado_enabled','off',2,'2022-12-19 17:08:18','2022-12-19 17:08:18'),(5,'is_paytm_enabled','off',2,'2022-12-19 17:08:18','2022-12-19 17:08:18'),(6,'is_mollie_enabled','off',2,'2022-12-19 17:08:18','2022-12-19 17:08:18'),(7,'is_skrill_enabled','off',2,'2022-12-19 17:08:18','2022-12-19 17:08:18'),(8,'is_coingate_enabled','off',2,'2022-12-19 17:08:18','2022-12-19 17:08:18'),(9,'is_paymentwall_enabled','off',2,'2022-12-19 17:08:18','2022-12-19 17:08:18');
/*!40000 ALTER TABLE `payment_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plan_requests`
--

DROP TABLE IF EXISTS `plan_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plan_requests` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `duration` varchar(100) NOT NULL DEFAULT 'monthly',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan_requests`
--

LOCK TABLES `plan_requests` WRITE;
/*!40000 ALTER TABLE `plan_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `plan_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plans`
--

DROP TABLE IF EXISTS `plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `monthly_price` double DEFAULT 0,
  `annual_price` double(25,2) DEFAULT 0.00,
  `status` smallint(6) NOT NULL DEFAULT 0,
  `trial_days` int(11) NOT NULL DEFAULT 0,
  `max_workspaces` int(11) NOT NULL DEFAULT 0,
  `max_users` int(11) NOT NULL DEFAULT 0,
  `max_clients` int(11) NOT NULL DEFAULT 0,
  `max_projects` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `plans_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plans`
--

LOCK TABLES `plans` WRITE;
/*!40000 ALTER TABLE `plans` DISABLE KEYS */;
INSERT INTO `plans` VALUES (1,'Free Plan',0,0.00,1,7,1,5,5,5,NULL,'free_plan.png','2022-12-19 03:32:50','2022-12-19 03:32:50');
/*!40000 ALTER TABLE `plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_files`
--

DROP TABLE IF EXISTS `project_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_files` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` bigint(20) unsigned NOT NULL,
  `file_name` varchar(191) NOT NULL,
  `file_path` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_files`
--

LOCK TABLES `project_files` WRITE;
/*!40000 ALTER TABLE `project_files` DISABLE KEYS */;
INSERT INTO `project_files` VALUES (2,5,'payment2.jpg','5_18ad7a084b28dd7e7518399a6371c5c3_payment2.jpg','2023-09-14 05:44:42','2023-09-14 05:44:42'),(3,5,'payment1.jpg','5_18ad7a084b28dd7e7518399a6371c5c3_payment1.jpg','2023-09-14 05:44:42','2023-09-14 05:44:42'),(4,5,'Invoice Aziz 9sept23.pdf','5_d5f54309c7b2d04c0538d9f7647b8fe7_Invoice Aziz 9sept23.pdf','2023-09-14 05:47:07','2023-09-14 05:47:07'),(5,5,'Revisi Sistem.docx','5_e9f1f66779a11ccfd85826cb9367172e_Revisi Sistem.docx','2023-09-14 05:47:19','2023-09-14 05:47:19'),(6,5,'LOGO Alfaruq 1.png','5_94fd13fec4debdfb8759480a3964858f_LOGO Alfaruq 1.png','2023-09-14 05:47:27','2023-09-14 05:47:27'),(7,5,'LOGO Alfaruq 2.png','5_052958eb8217ae993cfcd159a6f1223e_LOGO Alfaruq 2.png','2023-09-14 05:47:28','2023-09-14 05:47:28'),(8,3,'Cigi Putih Logo 2.png','3_9776e7b10e7128bd63c5ae9f841fd7ad_Cigi Putih Logo 2.png','2023-09-14 06:44:50','2023-09-14 06:44:50'),(9,3,'Pavicon CiGi-03.png','3_8268b2e0f7f7ac16d0bb65899c6a9856_Pavicon CiGi-03.png','2023-09-14 06:45:04','2023-09-14 06:45:04'),(10,3,'Logo CiGi 2.png','3_8268b2e0f7f7ac16d0bb65899c6a9856_Logo CiGi 2.png','2023-09-14 06:45:04','2023-09-14 06:45:04'),(11,3,'Pavicon CiGi-02.png','3_1b6148925800392a1058374091ebb2ce_Pavicon CiGi-02.png','2023-09-14 06:45:05','2023-09-14 06:45:05');
/*!40000 ALTER TABLE `project_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_reports`
--

DROP TABLE IF EXISTS `project_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_reports` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_reports`
--

LOCK TABLES `project_reports` WRITE;
/*!40000 ALTER TABLE `project_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `status` enum('Ongoing','Finished','OnHold') NOT NULL DEFAULT 'Ongoing',
  `description` text DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `budget` double DEFAULT 0,
  `workspace` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (2,'Booking Management System','OnHold','Aplikasi Booking Management System untuk penyewaan fasilitas olahraga','2023-09-05','2023-09-29',0,3,5,1,'2023-09-04 05:45:49','2023-09-14 05:48:20'),(5,'Quick Dev - AlfaruqStore','Finished','Web Debugging & Fix','2023-09-14','2023-09-14',0,3,5,1,'2023-09-14 05:41:49','2023-09-14 05:48:08'),(3,'cigi timeline','Ongoing','cigi progress','2023-09-07','2023-09-30',0,3,5,1,'2023-09-07 06:47:06','2023-09-14 05:54:26'),(4,'[propose] LokaKota Website','Ongoing','Pembuatan website landing page LokaKota (konsultan city branding)','2023-09-08','2023-09-25',350000,3,5,1,'2023-09-08 07:29:22','2023-09-14 05:40:09');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stages`
--

DROP TABLE IF EXISTS `stages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `color` varchar(191) NOT NULL DEFAULT '#051c4b',
  `complete` tinyint(1) NOT NULL,
  `workspace_id` bigint(20) unsigned NOT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stages`
--

LOCK TABLES `stages` WRITE;
/*!40000 ALTER TABLE `stages` DISABLE KEYS */;
INSERT INTO `stages` VALUES (1,'Todo','#77b6ea',0,1,0,'2022-12-19 15:59:36','2022-12-19 15:59:36'),(2,'In Progress','#545454',0,1,1,'2022-12-19 15:59:36','2022-12-19 15:59:36'),(3,'Review','#3cb8d9',0,1,2,'2022-12-19 15:59:36','2022-12-19 15:59:36'),(4,'Done','#37b37e',1,1,3,'2022-12-19 15:59:36','2022-12-19 15:59:36'),(5,'Todo','#77b6ea',0,2,0,'2022-12-19 16:36:00','2022-12-19 16:36:00'),(6,'In Progress','#545454',0,2,1,'2022-12-19 16:36:00','2022-12-19 16:36:00'),(7,'Review','#3cb8d9',0,2,2,'2022-12-19 16:36:00','2022-12-19 16:36:00'),(8,'Done','#37b37e',1,2,3,'2022-12-19 16:36:00','2022-12-19 16:36:00'),(9,'Todo','#77b6ea',0,3,0,'2023-09-04 05:27:02','2023-09-04 05:27:02'),(10,'In Progress','#545454',0,3,1,'2023-09-04 05:27:02','2023-09-04 05:27:02'),(11,'Review','#3cb8d9',0,3,2,'2023-09-04 05:27:02','2023-09-04 05:27:02'),(12,'Done','#37b37e',1,3,3,'2023-09-04 05:27:02','2023-09-04 05:27:02');
/*!40000 ALTER TABLE `stages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_tasks`
--

DROP TABLE IF EXISTS `sub_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_tasks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `due_date` date NOT NULL,
  `task_id` int(11) NOT NULL,
  `user_type` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_tasks`
--

LOCK TABLES `sub_tasks` WRITE;
/*!40000 ALTER TABLE `sub_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `sub_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_files`
--

DROP TABLE IF EXISTS `task_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_files` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `file` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `extension` varchar(191) NOT NULL,
  `file_size` varchar(191) NOT NULL,
  `task_id` int(11) NOT NULL,
  `user_type` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_files`
--

LOCK TABLES `task_files` WRITE;
/*!40000 ALTER TABLE `task_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) NOT NULL,
  `priority` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `due_date` datetime DEFAULT NULL,
  `assign_to` varchar(191) NOT NULL,
  `project_id` int(11) NOT NULL,
  `milestone_id` varchar(191) DEFAULT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'todo',
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (1,'Pembelian Server','High','** SIMPAN EMAIL INI SEBAGAI CATATAN KAMU **\r\n** MOHON BACA EMAIL INI SELURUHNYA **\r\n\r\n\r\nDear Muhammad Rikhza Maulana (Citra Digital Kreasi),\r\n\r\nSelamat datang di DEWAWEB - Layanan Cloud Hosting Terbaik di Indonesia!\r\n\r\nAccount hosting kamu sudah siap dan email ini mengandung semua informasi yang dibutuhkan untuk mengelola website kamu.\r\n\r\nInformasi Account Hosting\r\n\r\nServer Name: sgx13.dewaweb.com\r\nHosting Package: Hunter\r\nCloud Storage: 2 GB\r\nDatabases, Emails, IOPS, Inodes & Bandwidth: Unlimited\r\nAddon and Parked Domains: 3\r\nCloud Power: 1 CPU Core + 512 MB RAM\r\nMax Outgoing Mails: 200 email/hour\r\n\r\nDomain: cigi.co.id\r\nIP Address: 103.145.227.144 (shared)','2022-12-09 00:00:00','2022-12-09 00:00:00','3',1,'0','6',1,'2022-12-19 17:22:38','2022-12-19 22:22:17'),(2,'Coding Proses','Medium','Tahap konfigurasi server dan build website.','2022-12-14 23:00:00','2022-12-21 19:59:59','3',1,'','6',0,'2022-12-19 17:23:53','2023-01-14 06:49:42'),(3,'Deploy Search Engine Indexing','Medium','','2022-12-20 00:00:00','2022-12-20 00:00:00','3',1,'0','5',1,'2022-12-19 17:25:10','2022-12-19 22:22:10'),(4,'SEO Improvement','Low','','2022-12-20 00:00:00','2022-12-20 00:00:00','3',1,'','5',0,'2022-12-19 17:25:37','2022-12-19 22:22:33'),(10,'Proposal Proyek','High','A. Ringkasan Eksekutif\r\n\r\nKlien: Lokakota (Nama Perusahaan)\r\n\r\nTujuan: Membangun merek kota yang kuat dan menarik untuk menarik investasi, pariwisata, dan penghuni baru.\r\n\r\nLatar Belakang: Lokakota adalah perusahaan konsultan city branding yang bertujuan membantu kota-kota berkembang menjadi destinasi yang menarik dan kompetitif.\r\n\r\nTugas Utama: Mengembangkan strategi city branding yang komprehensif untuk mempromosikan Lokakota sebagai tujuan unggulan bagi investasi, pariwisata, dan penghuni baru.\r\n\r\nB. Lingkup Pekerjaan\r\n\r\nAnalisis Awal: Melakukan penilaian mendalam terhadap karakteristik, potensi, dan tantangan yang dihadapi oleh Lokakota.\r\n\r\nPenentuan Posisi Branding: Membantu klien menentukan nilai inti, visi, dan pesan merek kota.\r\n\r\nPengembangan Identitas Visual: Menciptakan elemen-elemen identitas visual yang kuat, termasuk logo, palet warna, dan panduan desain merek.\r\n\r\nStrategi Konten: Mengembangkan strategi konten yang akan digunakan dalam kampanye branding, termasuk media sosial, situs web, dan materi pemasaran.\r\n\r\nKampanye Branding: Melaksanakan kampanye branding melalui berbagai saluran, seperti media sosial, iklan, dan promosi.\r\n\r\nEdukasi dan Pelatihan: Melakukan pelatihan bagi staf dan pemangku kepentingan untuk memastikan implementasi yang efektif.\r\n\r\nPengukuran dan Evaluasi: Mengukur kinerja kampanye dan memberikan laporan berkala kepada klien.\r\n\r\nC. Anggaran dan Waktu\r\n\r\nAnggaran: [Total Anggaran Proyek]\r\n\r\nWaktu: Proyek ini diperkirakan akan berlangsung selama [Durasi Proyek], dimulai pada [Tanggal Mulai] dan selesai pada [Tanggal Selesai].\r\n\r\nD. Tim Proyek\r\n\r\n[Nama Anda atau Nama Anggota Tim] - [Posisi] (Proyek Manager)\r\n[Nama Anggota Tim Lainnya] - [Posisi]\r\nE. Metodologi\r\n\r\nKami akan menggunakan pendekatan yang terintegrasi, termasuk riset pasar, wawancara pemangku kepentingan, analisis kompetitor, dan penggunaan alat analisis data untuk mengidentifikasi peluang dan ancaman.\r\n\r\nF. Hasil yang Diharapkan\r\n\r\nIdentitas merek kota yang kuat dan konsisten.\r\nKampanye branding yang berhasil dengan tingkat keterlibatan yang tinggi dari pemangku kepentingan.\r\nPeningkatan investasi, kunjungan wisata, dan kehadiran penduduk baru.\r\nG. Catatan Akhir\r\n\r\nKami percaya bahwa upaya bersama kami akan membantu Lokakota mencapai tujuan dalam membangun merek kota yang menarik dan kompetitif. Kami sangat bersemangat untuk memulai proyek ini dan berharap dapat bekerja sama dengan Anda.\r\n\r\nTerima kasih atas perhatian Anda, dan kami siap untuk menjawab pertanyaan Anda atau memulai diskusi lebih lanjut.\r\n\r\nHormat kami,\r\n[Tanda Tangan Anda]\r\n[Nama Perusahaan Anda]\r\n[Tanggal]','2023-09-08 00:00:00','2023-09-10 00:00:00','6,7,5,8',4,'0','12',0,'2023-09-08 07:33:13','2023-09-14 06:50:30'),(6,'UI UX Booking Management System','Medium','','2023-09-04 00:00:00','2023-09-04 00:00:00','5,6',2,'','10',0,'2023-09-04 05:53:47','2023-09-04 06:24:07'),(7,'Technology Selection for Dev','High','Front End: React JS with Material UI\r\nBack End: Node JS\r\nDatabase: Mysql','2023-09-04 00:00:00','2023-09-04 00:00:00','5,6',2,'','11',0,'2023-09-04 05:59:50','2023-09-04 22:24:50'),(8,'UML Use Case, ERD','Medium','','2023-09-04 00:00:00','2023-09-04 00:00:00','6',2,'0','9',1,'2023-09-04 06:02:01','2023-09-04 06:24:05'),(9,'Setup Front End Project','High','Link Repository: https://github.com/AnnasIsmail/booking-maagement-system','2023-09-05 00:00:00','2023-09-05 00:00:00','6',2,'','10',1,'2023-09-04 22:25:25','2023-09-05 21:39:25'),(13,'Develop Scope Revision','High','','2023-09-13 23:00:00','2023-09-14 00:00:00','6,7,5,8',5,'4','12',0,'2023-09-14 05:46:25','2023-09-14 05:46:29');
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxes`
--

DROP TABLE IF EXISTS `taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taxes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `rate` double(8,2) NOT NULL,
  `workspace_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxes`
--

LOCK TABLES `taxes` WRITE;
/*!40000 ALTER TABLE `taxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_trackers`
--

DROP TABLE IF EXISTS `time_trackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_trackers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `task_id` int(11) DEFAULT NULL,
  `workspace_id` varchar(191) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `total_time` varchar(191) NOT NULL DEFAULT '0',
  `is_active` varchar(191) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_trackers`
--

LOCK TABLES `time_trackers` WRITE;
/*!40000 ALTER TABLE `time_trackers` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_trackers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timesheets`
--

DROP TABLE IF EXISTS `timesheets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timesheets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `description` text DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timesheets`
--

LOCK TABLES `timesheets` WRITE;
/*!40000 ALTER TABLE `timesheets` DISABLE KEYS */;
/*!40000 ALTER TABLE `timesheets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `todos`
--

DROP TABLE IF EXISTS `todos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `todos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(191) NOT NULL,
  `done` int(11) NOT NULL,
  `workspace` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todos`
--

LOCK TABLES `todos` WRITE;
/*!40000 ALTER TABLE `todos` DISABLE KEYS */;
/*!40000 ALTER TABLE `todos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `track_photos`
--

DROP TABLE IF EXISTS `track_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `track_photos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `track_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `img_path` varchar(191) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `workspace_id` varchar(191) NOT NULL,
  `status` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `track_photos`
--

LOCK TABLES `track_photos` WRITE;
/*!40000 ALTER TABLE `track_photos` DISABLE KEYS */;
/*!40000 ALTER TABLE `track_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_coupons`
--

DROP TABLE IF EXISTS `user_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_coupons` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `coupon` int(11) NOT NULL,
  `order` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_coupons`
--

LOCK TABLES `user_coupons` WRITE;
/*!40000 ALTER TABLE `user_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_email_templates`
--

DROP TABLE IF EXISTS `user_email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_email_templates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `template_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `workspace_id` int(11) DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_email_templates`
--

LOCK TABLES `user_email_templates` WRITE;
/*!40000 ALTER TABLE `user_email_templates` DISABLE KEYS */;
INSERT INTO `user_email_templates` VALUES (1,1,2,1,0,'2022-12-19 15:59:36','2022-12-19 15:59:36'),(2,2,2,1,0,'2022-12-19 15:59:36','2022-12-19 15:59:36'),(3,3,2,1,0,'2022-12-19 15:59:36','2022-12-19 15:59:36'),(4,4,2,1,0,'2022-12-19 15:59:36','2022-12-19 15:59:36'),(5,1,3,2,0,'2022-12-19 16:36:01','2022-12-20 04:55:31'),(6,2,3,2,0,'2022-12-19 16:36:01','2022-12-19 16:36:01'),(7,3,3,2,0,'2022-12-19 16:36:01','2022-12-19 16:36:01'),(8,4,3,2,0,'2022-12-19 16:36:01','2022-12-19 16:36:01'),(9,1,5,3,0,'2023-09-04 05:27:02','2023-09-04 05:27:02'),(10,2,5,3,0,'2023-09-04 05:27:02','2023-09-04 05:27:02'),(11,3,5,3,0,'2023-09-04 05:27:02','2023-09-04 05:27:02'),(12,4,5,3,0,'2023-09-04 05:27:02','2023-09-04 05:27:02');
/*!40000 ALTER TABLE `user_email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_projects`
--

DROP TABLE IF EXISTS `user_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_projects` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `permission` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_projects`
--

LOCK TABLES `user_projects` WRITE;
/*!40000 ALTER TABLE `user_projects` DISABLE KEYS */;
INSERT INTO `user_projects` VALUES (4,5,2,1,'[\"create milestone\",\"edit milestone\",\"delete milestone\",\"show milestone\",\"create task\",\"edit task\",\"delete task\",\"show task\",\"move task\",\"show activity\",\"show uploading\",\"show timesheet\",\"show bug report\",\"create bug report\",\"edit bug report\",\"delete bug report\",\"move bug report\",\"show gantt\"]','2023-09-04 05:45:49','2023-09-04 05:45:49'),(3,6,2,1,'[\"create milestone\",\"edit milestone\",\"delete milestone\",\"show milestone\",\"create task\",\"edit task\",\"delete task\",\"show task\",\"move task\",\"show activity\",\"show uploading\",\"show timesheet\",\"show bug report\",\"create bug report\",\"edit bug report\",\"delete bug report\",\"move bug report\",\"show gantt\"]','2023-09-04 05:45:49','2023-09-04 05:45:49'),(5,7,2,1,'[\"create milestone\",\"edit milestone\",\"delete milestone\",\"show milestone\",\"create task\",\"edit task\",\"delete task\",\"show task\",\"move task\",\"show activity\",\"show uploading\",\"show timesheet\",\"show bug report\",\"create bug report\",\"edit bug report\",\"delete bug report\",\"move bug report\",\"show gantt\"]','2023-09-07 06:20:47','2023-09-07 06:20:47'),(6,8,2,1,'[\"create milestone\",\"edit milestone\",\"delete milestone\",\"show milestone\",\"create task\",\"edit task\",\"delete task\",\"show task\",\"move task\",\"show activity\",\"show uploading\",\"show timesheet\",\"show bug report\",\"create bug report\",\"edit bug report\",\"delete bug report\",\"move bug report\",\"show gantt\"]','2023-09-07 06:20:47','2023-09-07 06:20:47'),(7,7,3,1,'[\"create milestone\",\"edit milestone\",\"delete milestone\",\"show milestone\",\"create task\",\"edit task\",\"delete task\",\"show task\",\"move task\",\"show activity\",\"show uploading\",\"show timesheet\",\"show bug report\",\"create bug report\",\"edit bug report\",\"delete bug report\",\"move bug report\",\"show gantt\"]','2023-09-07 06:47:06','2023-09-07 06:47:06'),(8,8,3,1,'[\"create milestone\",\"edit milestone\",\"delete milestone\",\"show milestone\",\"create task\",\"edit task\",\"delete task\",\"show task\",\"move task\",\"show activity\",\"show uploading\",\"show timesheet\",\"show bug report\",\"create bug report\",\"edit bug report\",\"delete bug report\",\"move bug report\",\"show gantt\"]','2023-09-07 06:47:06','2023-09-07 06:47:06'),(9,6,3,1,'[\"create milestone\",\"edit milestone\",\"delete milestone\",\"show milestone\",\"create task\",\"edit task\",\"delete task\",\"show task\",\"move task\",\"show activity\",\"show uploading\",\"show timesheet\",\"show bug report\",\"create bug report\",\"edit bug report\",\"delete bug report\",\"move bug report\",\"show gantt\"]','2023-09-07 06:47:06','2023-09-07 06:47:06'),(10,5,3,1,'[\"create milestone\",\"edit milestone\",\"delete milestone\",\"show milestone\",\"create task\",\"edit task\",\"delete task\",\"show task\",\"move task\",\"show activity\",\"show uploading\",\"show timesheet\",\"show bug report\",\"create bug report\",\"edit bug report\",\"delete bug report\",\"move bug report\",\"show gantt\"]','2023-09-07 06:47:06','2023-09-07 06:47:06'),(11,6,4,1,'[\"create milestone\",\"edit milestone\",\"delete milestone\",\"show milestone\",\"create task\",\"edit task\",\"delete task\",\"show task\",\"move task\",\"show activity\",\"show uploading\",\"show timesheet\",\"show bug report\",\"create bug report\",\"edit bug report\",\"delete bug report\",\"move bug report\",\"show gantt\"]','2023-09-08 07:29:22','2023-09-08 07:29:22'),(12,7,4,1,'[\"create milestone\",\"edit milestone\",\"delete milestone\",\"show milestone\",\"create task\",\"edit task\",\"delete task\",\"show task\",\"move task\",\"show activity\",\"show uploading\",\"show timesheet\",\"show bug report\",\"create bug report\",\"edit bug report\",\"delete bug report\",\"move bug report\",\"show gantt\"]','2023-09-08 07:29:22','2023-09-08 07:29:22'),(13,8,4,1,'[\"create milestone\",\"edit milestone\",\"delete milestone\",\"show milestone\",\"create task\",\"edit task\",\"delete task\",\"show task\",\"move task\",\"show activity\",\"show uploading\",\"show timesheet\",\"show bug report\",\"create bug report\",\"edit bug report\",\"delete bug report\",\"move bug report\",\"show gantt\"]','2023-09-08 07:29:22','2023-09-08 07:29:22'),(14,5,4,1,'[\"create milestone\",\"edit milestone\",\"delete milestone\",\"show milestone\",\"create task\",\"edit task\",\"delete task\",\"show task\",\"move task\",\"show activity\",\"show uploading\",\"show timesheet\",\"show bug report\",\"create bug report\",\"edit bug report\",\"delete bug report\",\"move bug report\",\"show gantt\"]','2023-09-08 07:29:22','2023-09-08 07:29:22'),(15,6,5,1,'[\"create milestone\",\"edit milestone\",\"delete milestone\",\"show milestone\",\"create task\",\"edit task\",\"delete task\",\"show task\",\"move task\",\"show activity\",\"show uploading\",\"show timesheet\",\"show bug report\",\"create bug report\",\"edit bug report\",\"delete bug report\",\"move bug report\",\"show gantt\"]','2023-09-14 05:41:49','2023-09-14 05:41:49'),(16,7,5,1,'[\"create milestone\",\"edit milestone\",\"delete milestone\",\"show milestone\",\"create task\",\"edit task\",\"delete task\",\"show task\",\"move task\",\"show activity\",\"show uploading\",\"show timesheet\",\"show bug report\",\"create bug report\",\"edit bug report\",\"delete bug report\",\"move bug report\",\"show gantt\"]','2023-09-14 05:41:49','2023-09-14 05:41:49'),(17,8,5,1,'[\"create milestone\",\"edit milestone\",\"delete milestone\",\"show milestone\",\"create task\",\"edit task\",\"delete task\",\"show task\",\"move task\",\"show activity\",\"show uploading\",\"show timesheet\",\"show bug report\",\"create bug report\",\"edit bug report\",\"delete bug report\",\"move bug report\",\"show gantt\"]','2023-09-14 05:41:49','2023-09-14 05:41:49'),(18,5,5,1,'[\"create milestone\",\"edit milestone\",\"delete milestone\",\"show milestone\",\"create task\",\"edit task\",\"delete task\",\"show task\",\"move task\",\"show activity\",\"show uploading\",\"show timesheet\",\"show bug report\",\"create bug report\",\"edit bug report\",\"delete bug report\",\"move bug report\",\"show gantt\"]','2023-09-14 05:41:49','2023-09-14 05:41:49');
/*!40000 ALTER TABLE `user_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_workspaces`
--

DROP TABLE IF EXISTS `user_workspaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_workspaces` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `workspace_id` int(11) NOT NULL,
  `permission` text NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_workspaces`
--

LOCK TABLES `user_workspaces` WRITE;
/*!40000 ALTER TABLE `user_workspaces` DISABLE KEYS */;
INSERT INTO `user_workspaces` VALUES (1,2,1,'Owner',1,'2022-12-19 15:59:36','2022-12-19 15:59:36'),(2,3,2,'Owner',1,'2022-12-19 16:36:01','2022-12-19 16:36:01'),(4,5,3,'Owner',1,'2023-09-04 05:27:02','2023-09-04 05:27:02'),(5,6,3,'Owner',1,'2023-09-04 05:28:36','2023-09-04 05:28:36'),(6,7,3,'Owner',1,'2023-09-07 06:17:39','2023-09-07 06:17:39'),(7,8,3,'Owner',1,'2023-09-07 06:18:10','2023-09-07 06:18:10');
/*!40000 ALTER TABLE `user_workspaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `currant_workspace` int(11) DEFAULT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'user',
  `plan` int(11) DEFAULT NULL,
  `requested_plan` int(11) NOT NULL DEFAULT 0,
  `plan_expire_date` date DEFAULT NULL,
  `payment_subscription_id` varchar(100) DEFAULT NULL,
  `is_trial_done` smallint(6) NOT NULL DEFAULT 0,
  `is_plan_purchased` smallint(6) NOT NULL DEFAULT 0,
  `interested_plan_id` smallint(6) NOT NULL DEFAULT 0,
  `is_register_trial` smallint(6) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `messenger_color` varchar(191) NOT NULL DEFAULT '#2180f3',
  `dark_mode` tinyint(1) NOT NULL DEFAULT 0,
  `active_status` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','admin@cigi.co.id',NULL,'$2y$10$W3UtnPuPs4keHhz223xZoOf/Rcq.aPvIBfA.TguBY8ZF/y230sXRa',NULL,NULL,'63a1032a95014.png','admin',NULL,0,NULL,NULL,0,0,0,0,'2022-12-19 03:32:50','2022-12-19 16:34:50','#2180f3',0,0),(7,'Duki','duki@cigi.co.id',NULL,'$2y$10$OoZ/WWFBJYKKG87bxhs8ROzWLn2Qd41KYhAJ1lmT5u2bKkkuGBic.',NULL,3,NULL,'user',1,0,NULL,NULL,0,0,0,0,'2023-09-07 06:17:33','2023-09-07 06:17:33','#2180f3',0,0),(6,'Annas','annas@cigi.co.id',NULL,'$2y$10$GY7wGKWUo777vTSgfCOgFuhgY08t2SftBW7ICrSZV.YA2c//0T7l.',NULL,3,NULL,'user',1,0,NULL,NULL,0,0,0,0,'2023-09-04 05:28:33','2023-09-04 05:28:33','#2180f3',0,0),(5,'Rikhza','rikhza@cigi.co.id',NULL,'$2y$10$WFg4bxR9.q073Z4rHIH3Z.2laCHvGuTnL/9G1VtDx9NWtmRvEWY1u',NULL,3,NULL,'user',1,0,NULL,NULL,0,0,0,0,'2023-09-04 05:27:02','2023-09-04 05:27:02','#2180f3',0,0),(8,'Silvia','silvia@cigi.co.id',NULL,'$2y$10$tpobekXaFSarZtJDlwvHzuO3MY8vthORSrf8KLhZH9VaEGwtVOivW',NULL,3,NULL,'user',1,0,NULL,NULL,0,0,0,0,'2023-09-07 06:18:04','2023-09-07 06:18:04','#2180f3',0,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workspaces`
--

DROP TABLE IF EXISTS `workspaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workspaces` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL,
  `lang` varchar(5) NOT NULL DEFAULT 'en',
  `currency` varchar(191) NOT NULL DEFAULT '$',
  `interval_time` int(11) NOT NULL DEFAULT 10,
  `currency_code` varchar(191) DEFAULT NULL,
  `company` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `zipcode` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `telephone` varchar(191) DEFAULT NULL,
  `logo` varchar(191) DEFAULT NULL,
  `logo_white` varchar(191) DEFAULT NULL,
  `cust_theme_bg` varchar(191) DEFAULT NULL,
  `site_rtl` varchar(191) DEFAULT NULL,
  `cust_darklayout` varchar(191) DEFAULT NULL,
  `theme_color` varchar(191) DEFAULT NULL,
  `is_stripe_enabled` int(11) NOT NULL DEFAULT 0,
  `stripe_key` text DEFAULT NULL,
  `stripe_secret` text DEFAULT NULL,
  `is_paypal_enabled` int(11) NOT NULL DEFAULT 0,
  `paypal_mode` text DEFAULT NULL,
  `paypal_client_id` text DEFAULT NULL,
  `paypal_secret_key` text DEFAULT NULL,
  `invoice_template` varchar(191) DEFAULT NULL,
  `invoice_color` varchar(191) DEFAULT NULL,
  `invoice_footer_title` text DEFAULT NULL,
  `invoice_footer_notes` text DEFAULT NULL,
  `zoom_api_key` varchar(191) DEFAULT NULL,
  `zoom_api_secret` varchar(191) DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workspaces`
--

LOCK TABLES `workspaces` WRITE;
/*!40000 ALTER TABLE `workspaces` DISABLE KEYS */;
INSERT INTO `workspaces` VALUES (1,'IT BCA','it-bca',2,'en','$',10,'USD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,'sandbox',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2022-12-19 15:59:36','2022-12-19 15:59:36'),(2,'IT cigi','it-cigi',3,'en','Rp.',10,'IDR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'','',0,'sandbox','','',NULL,NULL,NULL,NULL,NULL,NULL,1,'2022-12-19 16:36:00','2022-12-19 17:08:18'),(3,'CiGi Portfolio','cigi-portfolio',5,'en','$',10,'USD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,'sandbox',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2023-09-04 05:27:02','2023-09-04 05:27:02');
/*!40000 ALTER TABLE `workspaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zoom_meetings`
--

DROP TABLE IF EXISTS `zoom_meetings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zoom_meetings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) DEFAULT NULL,
  `workspace_id` int(11) NOT NULL DEFAULT 0,
  `meeting_id` varchar(191) DEFAULT NULL,
  `client_id` varchar(191) NOT NULL DEFAULT '0',
  `project_id` int(11) NOT NULL DEFAULT 0,
  `member_ids` varchar(191) DEFAULT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `duration` int(11) NOT NULL DEFAULT 0,
  `start_url` text DEFAULT NULL,
  `join_url` varchar(191) DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `status` varchar(191) DEFAULT 'waiting',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zoom_meetings`
--

LOCK TABLES `zoom_meetings` WRITE;
/*!40000 ALTER TABLE `zoom_meetings` DISABLE KEYS */;
/*!40000 ALTER TABLE `zoom_meetings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'cigico_task'
--

--
-- Dumping routines for database 'cigico_task'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-30 16:51:39
