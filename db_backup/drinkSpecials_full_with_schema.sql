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

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(45) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Beer'),(2,'Cocktail'),(3,'Hard Liquor'),(4,'Shots'),(5,'Brunch'),(6,'Food');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cities` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(45) NOT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'Chicago');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cover_charges`
--

DROP TABLE IF EXISTS `cover_charges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cover_charges` (
  `cover_id` int(11) NOT NULL AUTO_INCREMENT,
  `cover_type` varchar(11) NOT NULL,
  PRIMARY KEY (`cover_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cover_charges`
--

LOCK TABLES `cover_charges` WRITE;
/*!40000 ALTER TABLE `cover_charges` DISABLE KEYS */;
INSERT INTO `cover_charges` VALUES (1,'None'),(2,'Events Only'),(3,'Weekends');
/*!40000 ALTER TABLE `cover_charges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `days`
--

DROP TABLE IF EXISTS `days`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `days` (
  `day_id` int(11) NOT NULL AUTO_INCREMENT,
  `day_name` varchar(10) NOT NULL,
  `day_abbrev` varchar(3) NOT NULL,
  PRIMARY KEY (`day_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `days`
--

LOCK TABLES `days` WRITE;
/*!40000 ALTER TABLE `days` DISABLE KEYS */;
INSERT INTO `days` VALUES (1,'Sunday','Sun'),(2,'Monday','Mon'),(3,'Tuesday','Tue'),(4,'Wednesday','Wed'),(5,'Thursday','Thu'),(6,'Friday','Fri'),(7,'Saturday','Sat');
/*!40000 ALTER TABLE `days` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `neighborhoods`
--

DROP TABLE IF EXISTS `neighborhoods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `neighborhoods` (
  `neighborhood_id` int(11) NOT NULL AUTO_INCREMENT,
  `neighborhood_name` varchar(45) NOT NULL,
  PRIMARY KEY (`neighborhood_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `neighborhoods`
--

LOCK TABLES `neighborhoods` WRITE;
/*!40000 ALTER TABLE `neighborhoods` DISABLE KEYS */;
INSERT INTO `neighborhoods` VALUES (1,'Andersonville'),(2,'Rogers Park'),(3,'Boystown'),(4,'Uptown');
/*!40000 ALTER TABLE `neighborhoods` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `states` (
  `state_id` int(11) NOT NULL,
  `state` varchar(45) NOT NULL,
  `state_abbrev` char(2) NOT NULL,
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'Illinois','IL');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `zipcodes`
--

DROP TABLE IF EXISTS `zipcodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `zipcodes` (
  `zip_id` int(11) NOT NULL AUTO_INCREMENT,
  `zipcode` varchar(5) NOT NULL,
  PRIMARY KEY (`zip_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zipcodes`
--

LOCK TABLES `zipcodes` WRITE;
/*!40000 ALTER TABLE `zipcodes` DISABLE KEYS */;
INSERT INTO `zipcodes` VALUES (1,'60640'),(2,'60626'),(3,'60613'),(4,'60657'),(5,'60640');
/*!40000 ALTER TABLE `zipcodes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-05  0:57:32
