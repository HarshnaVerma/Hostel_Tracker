CREATE DATABASE  IF NOT EXISTS `hostel` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hostel`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: hostel
-- ------------------------------------------------------
-- Server version	5.7.14

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
-- Table structure for table `hosteld`
--

DROP TABLE IF EXISTS `hosteld`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hosteld` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ownername` varchar(45) NOT NULL,
  `contact` varchar(45) NOT NULL,
  `hostelname` varchar(45) NOT NULL,
  `hosteladd` varchar(45) NOT NULL,
  `hostelrent` varchar(45) NOT NULL,
  `hosteldesc` varchar(45) NOT NULL,
  `hostelimg` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hosteld`
--

LOCK TABLES `hosteld` WRITE;
/*!40000 ALTER TABLE `hosteld` DISABLE KEYS */;
INSERT INTO `hosteld` VALUES (1,'Owner1','8982550025','Red House','Andhra Pradesh','10000','Two sitter, one room, two tables','www.img1.com'),(2,'Owner2','8982550025','Blue House','Bhopal','5000','Two sitter, one room, two tables','www.img1.com'),(5,'Owner6E','8982550025','Blue House6','Banglore','57000','Two sitter, one room, two tables','image6'),(6,'Owner9 Edited','8982550025','Blue House9','Gujarat','19000','Two sitter, one room, two tables','http://www.img.com'),(7,'OwnerwithId','8982550025','Blue House','Banglore','57000','Two sitter, one room, two tables','http://www.img.com'),(8,'OwnerwithId','8982550025','Blue House','Banglore','10000','Two sitter, one room, two tables','http://www.img.com'),(9,'Ownerspecial1','8982550025','Blue House','Bhopal','7000','Two sitter, one room, two tables','http://www.img.com'),(10,'OwnerLE','8982550025 ','Blue House','Bhopal','9000','Two sitter, one room, two tables','http://www.img.com');
/*!40000 ALTER TABLE `hosteld` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-17 16:04:37
