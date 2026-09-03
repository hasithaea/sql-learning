-- MySQL dump 10.13  Distrib 8.4.11, for Linux (x86_64)
--
-- Host: localhost    Database: school_items
-- ------------------------------------------------------
-- Server version	8.4.11-0ubuntu0.26.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bookshop`
--

DROP TABLE IF EXISTS `bookshop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookshop` (
  `bsCode` char(4) NOT NULL,
  `bsName` varchar(25) DEFAULT NULL,
  `contact` char(11) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`bsCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookshop`
--

LOCK TABLES `bookshop` WRITE;
/*!40000 ALTER TABLE `bookshop` DISABLE KEYS */;
INSERT INTO `bookshop` VALUES ('BS01','Sarasavi','0112946058','Colombo 04'),('BS02','Godage',NULL,'Main Street'),('BS03','Gunasena','0912546893',NULL),('BS04','Samudra','0415670045','Dharmapala Mawatha');
/*!40000 ALTER TABLE `bookshop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distribute`
--

DROP TABLE IF EXISTS `distribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `distribute` (
  `itCode` char(4) NOT NULL,
  `bsCode` char(4) NOT NULL,
  `qty` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`itCode`,`bsCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distribute`
--

LOCK TABLES `distribute` WRITE;
/*!40000 ALTER TABLE `distribute` DISABLE KEYS */;
INSERT INTO `distribute` VALUES ('IT10','BS01',30,'2025-04-08'),('IT10','BS03',3,'2025-04-02'),('IT10','BS04',10,'2025-04-25'),('IT11','BS01',25,NULL),('IT11','BS02',12,'2025-05-07'),('IT13','BS04',60,'2025-05-09'),('IT16','BS02',5,NULL);
/*!40000 ALTER TABLE `distribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `itCode` char(4) NOT NULL,
  `itName` varchar(25) DEFAULT NULL,
  `price` decimal(9,2) DEFAULT NULL,
  `imported` tinyint(1) DEFAULT NULL,
  `brand` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`itCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES ('IT10','Stapler',240.00,1,'Mango'),('IT11','Pen',60.00,0,'Atlas'),('IT12','Pencil',40.00,0,'Atlas'),('IT13','Eraser',20.00,0,NULL),('IT14','Flash Drive',1500.00,1,'Kingston'),('IT15','Backpack',4000.00,0,'DSI'),('IT16','Notebook',160.00,NULL,'Atlas'),('IT17','Folder',20.00,1,'Mango'),('IT18','Calculator',2700.00,1,'Casio'),('IT19','Highliter',150.00,0,NULL),('IT20','Scissors',100.00,0,'Mango');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-03 22:21:11
