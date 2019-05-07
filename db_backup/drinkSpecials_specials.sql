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
-- Table structure for table `specials`
--

DROP TABLE IF EXISTS `specials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `specials` (
  `special_id` int(11) NOT NULL AUTO_INCREMENT,
  `special_desc` varchar(100) NOT NULL,
  `bar_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `day_id` int(11) NOT NULL,
  PRIMARY KEY (`special_id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specials`
--

LOCK TABLES `specials` WRITE;
/*!40000 ALTER TABLE `specials` DISABLE KEYS */;
INSERT INTO `specials` VALUES (1,'$4 All Whiskeys, Ryes, & Bourbons',1,2,2),(2,'$4 Stella Drafts',1,1,2),(3,'$5 Big Long Island',1,2,2),(4,'$4.25 Tito\'s Vodka',1,2,3),(5,'$3 Miller Lite Drafts',1,1,3),(6,'$6 Big Miller Lite Drafts',1,1,4),(7,'$3 House Shots',1,4,4),(8,'$5 Prairie Vodka RedBull',1,2,5),(9,'$4 All Tall Boys',1,1,5),(10,'Happy Hour 3-7: $2.50 Miller Lite Drafts',1,1,6),(11,'$7 Big Miller Lites',1,1,6),(12,'$3 House Shots',1,4,6),(13,'Happy Hour 12-3: 1/2 Off All Drafts',1,1,7),(14,'$4.50 Blue Moon Drafts',1,1,7),(15,'Happy Hour 1-3: $2.50 Miller Lite Drafts',1,1,1),(16,'Happy Hour 1-3: $3 House Shots',1,4,1),(17,'$3.50 Miller Lite Drafts',1,1,1),(18,'$5 Prairie Vodka Marys',1,2,1),(19,'$7 Big Draft Beers',2,1,3),(20,'$3 Miller Lite Drafts',2,1,4),(21,'$4.25 Tito\'s Vodka',2,2,4),(22,'$5 You Call It (Excludes Big Beers, Doubles, Martinis, Seasonal, & Redbull',2,2,5),(23,'Happy Hour 5-9: $4 Premium Well Cocktails',2,2,6),(24,'$7 Big Miller Lite Drafts',2,1,6),(25,'$5 Signature Margaritas',2,2,7),(26,'$5 Prairie Vodka Marys',2,2,7),(27,'$12 Mimosa Carafes',2,2,7),(28,'$5 All Frozens',2,2,1),(29,'$5 Prairie Vodka Marys',2,2,1),(30,'$12 Mimosa Carafes',2,2,1),(31,'Happy Hour 4-7',9,2,2),(32,'Happy Hour 4-7',9,2,3),(33,'Happy Hour 4-7',9,2,4),(34,'Happy Hour 4-7',9,2,5),(35,'Happy Hour 4-7',9,2,6),(36,'$3 Well Drinks',11,2,2),(37,'$2 Draft Pints',11,1,2),(38,'$3 Apple Pie Moonshine Shots',11,4,2),(39,'$4 Bacardi Bombs',11,4,2),(40,'$13 Deep Eddy Vodka Pitchers',11,2,2),(41,'$2 Pint Drafts',11,1,3),(42,'$13 You-Call-It Pitchers',11,2,3),(43,'$3 Fireball',11,4,3),(44,'$4 Cazadores Tequila',11,2,3),(45,'$3 Well Drinks',11,2,4),(46,'$2 Pint Drafts',11,1,4),(47,'$4 You-Call-It',11,2,5),(48,'$4 Stillhouse Whiskey',11,2,6),(49,'$3 Apple Pie Shots',11,4,6),(50,'$5 Draft Pitchers',11,1,7),(51,'$13 Long Island Pitchers',11,2,7),(52,'$3 Apple Pie Moonshine  ',11,4,7),(53,'$2 Tecate',11,1,1),(54,'$3 Fireball',11,4,1),(55,'$4 Cazadores Tequila',11,2,1),(56,'$5 Draft Pitchers',11,1,1),(57,'$13 You-Call-It Pitchers',11,2,1),(58,'$4 Drafts',12,1,2),(59,'$4 Tullamore Dew',12,2,3),(60,'$5 Ciders',12,1,3),(61,'$5 Lagunitas Drafts',12,1,4),(62,'$5 12th of Never & Sumpin\' Easy Ale',12,1,4),(63,'$8 Redbull Cocktails',12,2,5),(64,'$5 Fireball',12,4,6),(65,'$4 Miller Lite Drafts',12,1,7),(66,'$5 Deep Eddy / All Flavors',12,1,1),(67,'Happy Hour 7-10: $3 Deep Eddy',12,1,1);
/*!40000 ALTER TABLE `specials` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-05  0:55:16
