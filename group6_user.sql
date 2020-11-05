-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: cisvm-winsrv-mysql1.unfcsd.unf.edu    Database: group6
-- ------------------------------------------------------
-- Server version	8.0.21

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
  `UserName` varchar(20) NOT NULL,
  `AccountNumber` int DEFAULT NULL,
  `EmailAddress` varchar(50) DEFAULT NULL,
  `EncyptedPassword` varchar(12) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `FavoriteGenre` char(20) DEFAULT NULL,
  `OwnedBooks` char(30) DEFAULT NULL,
  `BooksInCart` int NOT NULL DEFAULT '0',
  `CreditCardNumber` int DEFAULT NULL,
  `StreetAddress` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`UserName`),
  KEY `CreditCardNumber_idx` (`CreditCardNumber`),
  KEY `StreetAddress_idx` (`StreetAddress`),
  CONSTRAINT `CreditCardNumber` FOREIGN KEY (`CreditCardNumber`) REFERENCES `credit card` (`CreditCardNumber`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `StreetAddress` FOREIGN KEY (`StreetAddress`) REFERENCES `address` (`StreetAddress`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
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

-- Dump completed on 2020-11-05 15:55:13
