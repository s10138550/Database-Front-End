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
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `BookTitle` varchar(40) NOT NULL,
  `AuthorFirstName` char(20) NOT NULL,
  `AuthorLastName` char(20) NOT NULL,
  `PublisherName` char(20) DEFAULT NULL,
  `PublicationDate` date DEFAULT NULL,
  `BookGenre` char(20) DEFAULT NULL,
  `ReadingLevel` int DEFAULT NULL,
  `BookNewOrUsed` char(10) DEFAULT NULL,
  `UserRating` int DEFAULT NULL,
  `UserComments` varchar(250) DEFAULT NULL,
  `BookSummary` varchar(250) DEFAULT NULL,
  `BookPrice` decimal(9,2) DEFAULT NULL,
  `Format` char(10) DEFAULT NULL,
  `BookLengthPages` int DEFAULT NULL,
  `BookLengthAudio` int DEFAULT NULL,
  `AmountInStock` int DEFAULT '0',
  `BookSeries` char(50) DEFAULT NULL,
  `ISBNNumber` int DEFAULT NULL,
  PRIMARY KEY (`BookTitle`),
  KEY `AuthorFirstName_idx` (`AuthorFirstName`),
  KEY `AuthorLastName_idx` (`AuthorLastName`),
  KEY `ISBNNumber_idx` (`ISBNNumber`),
  CONSTRAINT `AuthorFirstName` FOREIGN KEY (`AuthorFirstName`) REFERENCES `author` (`AuthorFirstName`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `AuthorLastName` FOREIGN KEY (`AuthorLastName`) REFERENCES `author` (`AuthorLastName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES ('Book Title','First Name','Last Name','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
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
