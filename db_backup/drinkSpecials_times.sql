CREATE DATABASE  IF NOT EXISTS `drinkSpecials` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `drinkSpecials`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: cis282final.cympi2lq5cp1.us-east-1.rds.amazonaws.com    Database: drinkSpecials
-- ------------------------------------------------------
-- Server version	5.7.22-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `times`
--

DROP TABLE IF EXISTS `times`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `times` (
  `time_id` int(11) NOT NULL AUTO_INCREMENT,
  `time` varchar(8) NOT NULL,
  PRIMARY KEY (`time_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `times`
--

LOCK TABLES `times` WRITE;
/*!40000 ALTER TABLE `times` DISABLE KEYS */;
INSERT INTO `times` VALUES (1,'12:00 AM'),(2,'12:30 AM'),(3,'1:00 AM'),(4,'1:30 AM'),(5,'2:00 AM'),(6,'2:30 AM'),(7,'3:00 AM'),(8,'3:30 AM'),(9,'4:00 AM'),(10,'4:30 AM'),(11,'5:00 AM'),(12,'5:30 AM'),(13,'6:00 AM'),(14,'6:30 AM'),(15,'7:00 AM'),(16,'7:30 AM'),(17,'8:00 AM'),(18,'8:30 AM'),(19,'9:00 AM'),(20,'9:30 AM'),(21,'10:00 AM'),(22,'10:30 AM'),(23,'11:00 AM'),(24,'11:30 AM'),(25,'12:00 PM'),(26,'12:30 PM'),(27,'1:00 PM'),(28,'1:30 PM'),(29,'2:00 PM'),(30,'2:30 PM'),(31,'3:00 PM'),(32,'3:30 PM'),(33,'4:00 PM'),(34,'4:30 PM'),(35,'5:00 PM'),(36,'5:30 PM'),(37,'6:00 PM'),(38,'6:30 PM'),(39,'7:00 PM'),(40,'7:30 PM'),(41,'8:00 PM'),(42,'8:30 PM'),(43,'9:00 PM'),(44,'9:30 PM'),(45,'10:00 PM'),(46,'10:30 PM'),(47,'11:00 PM'),(48,'11:30 PM');
/*!40000 ALTER TABLE `times` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-05  0:55:24
