CREATE DATABASE  IF NOT EXISTS `library` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `library`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: library
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `address_id` int NOT NULL AUTO_INCREMENT,
  `house_number` int DEFAULT NULL,
  `building` varchar(50) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,10,'Block A','Main Street','London','SW1A 1AA'),(2,33,'Strangeways','Swansea Road','Swansea','SA4 3GW'),(3,25,'High Towers','High Street','Manchester','M1 1AA'),(4,20,'Beacon House','Market Street','Birmingham','B1 1AA'),(5,48,'Treacle Terrace','Queen Street','Glasgow','G1 1AA'),(6,50,'Oak Tree House','George Street','Edinburgh','EH1 1AA'),(7,8,'Bay Beach','Marine Avenue','Brighton','BN2 1BD'),(8,5,'Brookfield','Richard Street','York','YO1 6JH'),(9,12,'Victoria Lane','Castle Hill','Dudley','DY1 4QF'),(10,28,'The Arches','Park Lane','Leicester','LE1 4AD');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `author` (
  `author_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `title` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (1,'Caroline','Criado Perez','OBE'),(2,'Atul','Gawande','MD'),(3,'Larry','Beasley','CM'),(4,'Quanta A','Ahmed','MD'),(5,'Anthony','Powell','CBE'),(6,'David','Olusoga','CBE'),(7,'Roald','Dahl',' '),(8,'Emily','Brontë',' '),(9,'Rabindranath','Tagore',' '),(10,'Malorie','Blackman','OBE'),(11,'David','Nott','MD');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `book_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  `published` int DEFAULT NULL,
  `author_id` int DEFAULT NULL,
  PRIMARY KEY (`book_id`),
  KEY `author_id` (`author_id`),
  CONSTRAINT `book_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `author` (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'Invisible Women: Exposing Data Bias in a World Designed for Men',2019,1),(2,'The Checklist Manifesto: How to Get Things Right',2019,2),(3,'Vancouverism',2019,3),(4,'In the Land of Invisible Women: A Female Doctor\'s Journey in the Saudi Kingdom',2008,4),(5,'A Question of Upbringing, Books Do Furnish a Room',NULL,5),(6,'Black and British. A Forgotten History',NULL,6),(7,'The BFG',NULL,7),(8,'Matilda',NULL,7),(9,'The Enormous Crocodile',NULL,7),(10,'Wuthering Heights',NULL,8),(11,'Collected Poems and Plays of Rabindranath Tagore',NULL,9),(12,'Noughts and Crosses',NULL,10);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `book_data_view`
--

DROP TABLE IF EXISTS `book_data_view`;
/*!50001 DROP VIEW IF EXISTS `book_data_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `book_data_view` AS SELECT 
 1 AS `Author`,
 1 AS `Book Title`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `book_genre`
--

DROP TABLE IF EXISTS `book_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_genre` (
  `genre_id` int NOT NULL,
  `book_id` int DEFAULT NULL,
  KEY `book_id` (`book_id`),
  CONSTRAINT `book_genre_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_genre`
--

LOCK TABLES `book_genre` WRITE;
/*!40000 ALTER TABLE `book_genre` DISABLE KEYS */;
INSERT INTO `book_genre` VALUES (11,1),(12,1),(12,2),(3,3),(12,3),(3,4),(13,4),(14,5),(1,6),(15,7),(10,7),(8,7),(15,8),(10,8),(8,8),(16,9),(9,10),(17,10);
/*!40000 ALTER TABLE `book_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_loan`
--

DROP TABLE IF EXISTS `book_loan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_loan` (
  `loan_id` int NOT NULL AUTO_INCREMENT,
  `borrower_id` int DEFAULT NULL,
  `book_id` int DEFAULT NULL,
  `loan_date` date DEFAULT NULL,
  PRIMARY KEY (`loan_id`),
  KEY `borrower_id` (`borrower_id`),
  KEY `book_id` (`book_id`),
  CONSTRAINT `book_loan_ibfk_1` FOREIGN KEY (`borrower_id`) REFERENCES `borrower` (`borrower_id`),
  CONSTRAINT `book_loan_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_loan`
--

LOCK TABLES `book_loan` WRITE;
/*!40000 ALTER TABLE `book_loan` DISABLE KEYS */;
INSERT INTO `book_loan` VALUES (1,3,2,'2023-03-22'),(2,4,3,'2023-03-08'),(3,5,3,'2023-04-09'),(4,6,2,'2023-04-06'),(5,7,1,'2023-04-01'),(6,8,1,'2023-03-19'),(7,9,2,'2023-03-30'),(8,10,3,'2023-04-10'),(9,1,2,'2023-03-25'),(10,2,2,'2023-03-13');
/*!40000 ALTER TABLE `book_loan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borrower`
--

DROP TABLE IF EXISTS `borrower`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `borrower` (
  `borrower_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address_id` int DEFAULT NULL,
  PRIMARY KEY (`borrower_id`),
  KEY `address_id` (`address_id`),
  CONSTRAINT `borrower_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrower`
--

LOCK TABLES `borrower` WRITE;
/*!40000 ALTER TABLE `borrower` DISABLE KEYS */;
INSERT INTO `borrower` VALUES (1,'Lily','Hughes','lily.hughes@example.com','07123456789',1),(2,'Oliver','Patel','oliver.patel@example.com','07234567890',1),(3,'Ava','Campbell','ava.campbell@example.com','07345678901',1),(4,'Ethan','Collins','ethan.collins@example.com','07456789012',3),(5,'Mia','Khan','mia.khan@example.com','07567890123',5),(6,'William','Price','william.price@example.com','07678901234',NULL),(7,'Charlotte','Scott','charlotte.scott@example.com','07789012345',NULL),(8,'Jacob','Wright','jacob.wright@example.com','07890123456',8),(9,'Grace','Morris','grace.morris@example.com','07901234567',NULL),(10,'Noah','Bailey','noah.bailey@example.com','07912345678',2);
/*!40000 ALTER TABLE `borrower` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre` (
  `genre_id` int NOT NULL AUTO_INCREMENT,
  `genre_type` varchar(100) NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'Non-fiction: History'),(2,'Non-fiction: Philosophy'),(3,'Non-fiction: Geography'),(4,'Non-fiction: Biology'),(5,'Non-fiction: Chemistry'),(6,'Fiction: Science Fiction'),(7,'Fiction: Thriller'),(8,'Fiction: Fantasy'),(9,'Fiction: Romance'),(10,'Fiction: Adventure'),(11,'feminism'),(12,'data'),(13,'Non-fiction: Autobiography'),(14,'Fiction: Satire'),(15,'Fiction: Children'),(16,'Poetry'),(17,'Non-fiction:Gothic');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `book_data_view`
--

/*!50001 DROP VIEW IF EXISTS `book_data_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `book_data_view` AS select concat(`author`.`first_name`,' ',`author`.`last_name`,' ',`author`.`title`) AS `Author`,`book`.`title` AS `Book Title` from (`author` join `book` on((`book`.`author_id` = `author`.`author_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-21 15:06:04
