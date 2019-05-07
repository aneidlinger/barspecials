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
-- Table structure for table `bars`
--

DROP TABLE IF EXISTS `bars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bars` (
  `bar_id` int(11) NOT NULL AUTO_INCREMENT,
  `bar_name` varchar(45) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `neighborhood_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `cover_id` int(11) NOT NULL,
  `zip_id` int(11) NOT NULL,
  `late_night` char(1) DEFAULT NULL,
  `serves_food` char(1) DEFAULT NULL,
  `cash_only` char(1) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `mon_open` int(11) DEFAULT NULL,
  `mon_close` int(11) DEFAULT NULL,
  `tue_open` int(11) DEFAULT NULL,
  `tue_close` int(11) DEFAULT NULL,
  `wed_open` int(11) DEFAULT NULL,
  `wed_close` int(11) DEFAULT NULL,
  `thu_open` int(11) DEFAULT NULL,
  `thu_close` int(11) DEFAULT NULL,
  `fri_open` int(11) DEFAULT NULL,
  `fri_close` int(11) DEFAULT NULL,
  `sat_open` int(11) DEFAULT NULL,
  `sat_close` int(11) DEFAULT NULL,
  `sun_open` int(11) DEFAULT NULL,
  `sun_close` int(11) DEFAULT NULL,
  PRIMARY KEY (`bar_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bars`
--

LOCK TABLES `bars` WRITE;
/*!40000 ALTER TABLE `bars` DISABLE KEYS */;
INSERT INTO `bars` VALUES (1,'The Sofo Tap','4923 N Clark St 1st floor','(773) 784-76',1,1,1,1,1,'N','N','N','http://www.thesofotap.com/',35,5,35,5,35,5,35,5,31,5,25,7,25,5),(2,'Meeting House Tavern','5025 N Clark St','(773) 696-42',1,1,1,1,1,'N','N','N','http://www.meetinghousetavern.com/',0,0,35,5,35,5,35,5,35,5,29,7,29,5),(3,'Atmosphere','5355 N Clark St','(773) 784-11',1,1,1,1,1,'N','N','Y','https://www.atmospherebar.com/',0,0,0,0,37,5,37,5,37,5,37,7,29,5),(4,'Replay Andersonville','5358 N Clark St','(773) 654-13',1,1,1,1,1,'N','Y','N','https://www.replayandersonville.com/',24,5,24,5,24,5,24,5,24,5,21,7,21,5),(5,'Marty\'s Martini Bar','1511 W Balmoral Ave','(773) 561-64',1,1,1,1,1,'N','N','N','https://www.facebook.com/martysmartinibar',35,5,35,5,35,5,35,5,33,5,33,7,35,15),(6,'Elixir Andersonville','1509 W Balmoral Ave','(773) 654-17',1,1,1,1,1,'N','N','N','https://www.elixirandersonville.com/',35,5,35,5,35,5,35,5,35,5,23,7,23,5),(7,'Mary\'s Attic','5400 N Clark St','(773) 784-69',1,1,1,2,1,'N','Y','N','https://www.hamburgermarys.com/chicago/attic',0,0,0,0,41,5,41,5,41,5,41,7,41,5),(8,'The Glenwood','6962 N Glenwood Ave','(773) 764-73',2,1,1,1,2,'N','N','N','https://www.facebook.com/glenwood626/',31,5,31,5,31,5,31,5,31,5,31,7,23,5),(9,'Rogers Park Social','6920 N Glenwood Ave','(773) 791-14',2,1,1,1,2,'N','N','N','http://www.rogersparksocial.com/',31,5,31,5,31,5,31,5,31,5,25,7,23,5),(10,'The Jackhammer Complex','6406 N Clark St','(773) 743-57',2,1,1,3,2,'Y','N','N','https://www.facebook.com/chijackhammer/',35,9,35,9,35,9,35,9,35,9,35,11,29,9),(11,'Charlie\'s Chicago','3726 N Broadway','(773) 871-88',3,1,1,3,3,'Y','N','N','https://www.charlieschicago.com/',31,9,31,9,31,9,31,9,31,9,31,11,31,9),(12,'The North End','3733 N Halsted St','(773) 477-79',3,1,1,1,3,'N','N','N','http://www.northendchicago.com/',23,5,23,5,23,5,23,5,23,5,23,7,23,5),(13,'The Cell Block','3702 N Halsted St','(773) 665-80',3,1,1,1,3,'N','N','N','http://www.cellblock-chicago.com/',33,5,33,5,33,5,33,5,33,5,29,7,29,5),(14,'Kit Kat Lounge','3700 N Halsted St','(773) 525-11',3,1,1,1,3,'N','Y','N','http://www.kitkatchicago.com/',0,0,36,5,36,5,36,5,36,5,36,5,23,5),(15,'Fantasy Nightclub','3641 N Halsted St','(312) 697-38',3,1,1,3,3,'Y','N','N','https://www.fantasychicago.club/',0,0,0,0,0,0,45,9,45,9,45,11,45,9),(16,'Big Jim\'s','3505 N Halsted St','(773) 857-17',3,1,1,1,4,'Y','Y','N','https://www.facebook.com/bigjimsonhalsted/',23,9,23,9,23,9,23,9,23,9,23,9,23,9),(17,'Little Jim\'s','3501 N Halsted St','(773) 871-61',3,1,1,1,4,'Y','N','N','https://m.facebook.com/Little-Jims-1467853396794483/',23,9,23,9,23,9,23,9,23,9,23,11,23,15),(18,'Hydrate','3458 N Halsted St','(773) 975-92',3,1,1,3,4,'Y','N','N','http://www.hydratechicago.com/',41,9,41,9,41,9,41,9,41,9,41,11,29,9),(19,'Elixir Lakeview','3452 N Halsted St','(773) 975-92',3,1,1,1,4,'Y','N','N','https://www.elixirchicago.com/',37,5,37,5,37,5,37,5,37,9,37,9,33,15),(20,'Replay Lakeview','3439 N Halsted St','(773) 661-96',3,1,1,1,4,'N','N','N','https://www.replaylakeview.com/',29,5,29,5,29,5,29,5,25,5,25,7,25,5),(21,'Roscoe\'s Tavern','3356 N Halsted St','(773) 281-33',3,1,1,3,4,'N','N','N','https://roscoes.com/',41,5,41,5,41,5,35,5,39,5,27,7,27,5),(22,'Progress Bar','3359 N Halsted St','(773) 697-92',3,1,1,1,4,'N','N','N','https://progressbarchicago.com/',35,5,35,5,35,5,35,5,33,5,31,7,27,5),(23,'Sidetrack','3349 N Halsted St','(773) 477-91',3,1,1,1,4,'N','N','N','https://www.sidetrackchicago.com/',31,5,31,5,31,5,31,5,31,5,27,7,27,5),(24,'D.S. Tequila Co.','3352 N Halsted St','(773) 697-91',3,1,1,1,4,'N','Y','N','https://dstequila.com/',23,15,23,15,23,15,23,15,23,5,23,7,23,15),(25,'Splash Chicago','3339 N Halsted St','(773) 904-73',3,1,1,1,4,'N','N','N','http://splash-chicago.com/',37,5,37,5,37,5,37,5,37,5,31,7,31,5),(26,'Town Hall Pub','3340 N Halsted St','(773) 472-44',3,1,1,1,4,'N','N','Y','http://townhallpub.com/info',0,0,0,0,35,5,35,5,35,5,35,7,31,5),(27,'Scarlet Bar','3320 N Halsted St','(773) 348-10',3,1,1,1,4,'N','N','N','https://www.scarletchicago.com/',0,0,0,0,41,5,41,5,41,5,41,7,29,5),(28,'Big Chicks','5024 N Sheridan Rd','(773) 728-55',4,1,1,1,5,'N','Y','Y','http://bigchicks.com/',33,5,33,5,33,5,33,5,33,5,19,7,19,5),(29,'Berlin Nightclub','954 W Belmont Ave','(773) 348-49',3,1,1,3,4,'Y','N','N','https://berlinchicago.com/index.html',45,5,21,9,45,9,45,9,41,9,41,11,45,9);
/*!40000 ALTER TABLE `bars` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-05  0:55:18
