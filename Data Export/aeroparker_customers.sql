CREATE DATABASE  IF NOT EXISTS `aeroparker` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `aeroparker`;
-- MySQL dump 10.13  Distrib 8.0.36, for macos14 (x86_64)
--
-- Host: localhost    Database: aeroparker
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `registered` datetime NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `title` varchar(5) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `address_line_1` varchar(255) NOT NULL,
  `address_line_2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `postcode` varchar(10) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_address_UNIQUE` (`email_address`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'2024-06-12 16:05:54','cameron-whyte2000@hotmail.com','mr','Cameron','Whyte','7 GLENLOCKHART VALLEY','','EDINBURGH','EH14 1DE','07932594873'),(3,'2024-06-12 16:07:36','cameronwhyte2000@hotmail.com','mr','Cameron','Whyte','7 GLENLOCKHART VALLEY','','EDINBURGH','EH14 1DE','07932594873'),(4,'2024-06-12 16:21:08','soph@email.com','miss','sophie ','Taylor','Inglehurst','Innerleithen Road','Peebles','EH45 8BG','009098099'),(5,'2024-06-13 09:39:03','tom.bean@hotmail.com','Mr','tom','bean','emfoien','','ejnfowe','EH33 1HB','929292992'),(6,'2024-06-13 09:59:15','dmdmd@dd','Mr','Cam','lam','londoneon','','londonoen','dee',''),(7,'2024-06-13 10:03:20','thomyorke@radiohead.com','Mr','thom','yorke','123 side street','','leeds','LE 3ds',''),(9,'2024-06-13 10:06:33','cameronwhyte200@hotmail.com','Mr','Cameron','Whyte','7 GLENLOCKHART VALLEY','','EDINBURGH','EH14 1DE','07932594873'),(10,'2024-06-13 10:08:27','email.email@email','Mr','Sophie','Taylor','Inglehurst','Innerleithen Road','Peebles','EH45 8BG','07932594873'),(11,'2024-06-13 10:13:38','edke@ldmd.com','Dr','james','low','enweipdn3','','','234 421',''),(12,'2024-06-13 10:18:26','janedoe@gmail','Mrs','jane','doe','new york st','','','ny 234',''),(13,'2024-06-13 10:25:53','cam@email.com','Mr','Cameron','Whyte','7 GLENLOCKHART VALLEY','','EDINBURGH','ei33 444','07932594873'),(14,'2024-06-13 10:33:18','johm@email.com','Mr','Cameron','Whyte','7 GLENLOCKHART VALLEY','','EDINBURGH','EH14 1DE','07932594873'),(15,'2024-06-13 11:30:57','eje@k','Prof','john','doe','address','','','Eh 1234',''),(16,'2024-06-13 12:28:56','chyte2000@hotmail.com','Mr','Cameron','Whyte','7 GLENLOCKHART VALLEY','','EDINBURGH','0003939933','07932594873'),(18,'2024-06-13 12:46:54','camerte2000@hotmail.com','Prof','Cameron','Whyte','7 GLENLOCKHART VALLEY','','EDINBURGH','EH14 1DE','07932594873'),(19,'2024-06-13 13:14:31','came000@hotmail.com','Mr','Cameron','Whyte','7 GLENLOCKHART VALLEY','','EDINBURGH','EH14 1DE','07932594873'),(20,'2024-06-13 13:26:47','rngon@dio','Mr','tom','tim','eeniweqpn','','','efpi3jpi3','');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-13 13:34:16
