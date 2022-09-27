-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: grailstest01
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `version` bigint NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `password_expired` bit(1) NOT NULL,
  `account_locked` bit(1) NOT NULL,
  `password` varchar(255) NOT NULL,
  `account_expired` bit(1) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `date_of_birth` varchar(255) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ob8kqyqqgmefl0aco34akdtpe` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,0,'admin','admin','admin',_binary '\0',_binary '\0','{bcrypt}$2a$10$2w/2rdQMLYuuZzXRIX.dwe6F/bMEaSq.M9nn7Q1EWdFl4ficqzYPq',_binary '\0','admin','2022-09-13',_binary '','admin@localhost.local'),(2,0,'+7 (584) 984-8612','Pestovo	Russia','Barrett',_binary '\0',_binary '\0','{bcrypt}$2a$10$2jpiYM3wNr6jjHq7oIZfhuJsOrOvGSn1mfru9iGGT2UjPf4SmCa2G',_binary '\0','Velez','2022-09-15',_binary '','bvelez0@google.pl'),(3,0,'+63 (477) 280-2056','Carmen	Philippines','Martynne',_binary '\0',_binary '\0','{bcrypt}$2a$10$nVmtnESsOFgm5f793jdbQOeEP9yoNiIp4Hc3Xet2ymYVDdF/v28p.',_binary '\0','Haydn','2022-09-01',_binary '','mhaydn1@multiply.com'),(4,0,'+55 (445) 165-2033','Itaberaí	Brazil','Myrle',_binary '\0',_binary '\0','{bcrypt}$2a$10$BVInRtUW58dIuDc5BgSmouIuMenGeysm6nkzsByYtECKCILiF0wBu',_binary '\0','Pawelek','2022-09-16',_binary '','mpawelek2@state.gov'),(5,0,'+998 (642) 742-1954','Charxin	Uzbekistan','Mano',_binary '\0',_binary '\0','{bcrypt}$2a$10$qW7HnxuwwDNZ/QgocNtUEu.LnKN4glJCTO1P4q03O1k9Cddu4GfdC',_binary '\0','Borit','2022-09-13',_binary '','mborit3@google.it'),(6,0,'+54 (368) 282-2644','Zárate	Argentina','Paloma',_binary '\0',_binary '\0','{bcrypt}$2a$10$cYWJB0tDq..Mt1q10x1FEOseXy6cItC5u2qCuxZ58UhUjWFGpW9qK',_binary '\0','Rahill','2022-09-09',_binary '','prahill4@soundcloud.com'),(7,0,'+33 (111) 706-0255','Saint-Pierre-Montlimart	France','Suki',_binary '\0',_binary '\0','{bcrypt}$2a$10$WZyxUtWxc4EU92Brc0pDH.f0Ak2oy5PCztB6zHI8V9k/djsv/Y/l.',_binary '\0','Ogborne','2022-09-15',_binary '','sogborne5@europa.eu'),(8,0,'+62 (857) 330-9040','Oeleu	Indonesia','Gram',_binary '\0',_binary '\0','{bcrypt}$2a$10$QXs8JvZZuB3eHaMP1FEyMOBtw4DZCvzd/7k/ol6wweBvVgJcDgT6m',_binary '\0','Verrillo','2022-09-15',_binary '','gverrillo6@linkedin.com'),(9,0,'+7 (346) 224-9111','Koltushi	Russia','Conney',_binary '\0',_binary '\0','{bcrypt}$2a$10$fttOKpYDY5nXsLN3u6vVZ.gedns6ergPGsNqL0nJf3pJOMoTM9BsW',_binary '\0','Loynton','2022-09-23',_binary '','cloynton7@hhs.gov'),(10,0,'+62 (196) 645-7046','Lajaluhur	Indonesia','Bernadina',_binary '\0',_binary '\0','{bcrypt}$2a$10$MSiV21MjBlnuvsNoUUQQUeMvD98ZlAHLbFL/9Rg1P0wbAA2lFHgXu',_binary '\0','Kigelman','2022-10-07',_binary '','bkigelman8@cbsnews.com'),(11,0,'+63 (655) 552-9158','San Nicolas	Philippines','Alexis',_binary '\0',_binary '\0','{bcrypt}$2a$10$aUe1sDX6PD5/dFwyPqgzt.ir58t/7p1SpEu9EXI0YDZAUobvriCgG',_binary '\0','Noble','2022-09-05',_binary '','anoble9@nymag.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-28  0:11:46
