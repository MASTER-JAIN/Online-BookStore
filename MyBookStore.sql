-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: MyBookStore
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Books`
--

DROP TABLE IF EXISTS `Books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Books` (
  `BooksId` int(11) NOT NULL,
  `Author` varchar(45) NOT NULL,
  `BookName` varchar(45) NOT NULL,
  `NoCopies` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `Catogary` varchar(45) NOT NULL,
  `Genre` varchar(45) NOT NULL,
  PRIMARY KEY (`BooksId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Books`
--

LOCK TABLES `Books` WRITE;
/*!40000 ALTER TABLE `Books` DISABLE KEYS */;
INSERT INTO `Books` VALUES (1000,'Chetan Bhagat','Two States',10,150,'Fiction','Romance'),(1002,'Chetan Bhagat','Three Mistakes Of my Lofe',8,205,'Fiction','Drama'),(1010,'Chetan Bhagat','Half Girlfriend',10,200,'Fiction','Romance'),(1011,'James Watson','Double Helix',13,220,'NonFiction','Memoir'),(1024,'James Watson','DNA: The Secret of Life',18,250,'NonFiction','science'),(1042,'James Watson','Genes,Girls and Gamows',15,260,'NonFiction','autobiography'),(1850,'Dan Brown','Digital Fortress',16,240,'Fiction','Mystery and Techno thriller'),(1967,'Dan Brown','Deception Point',18,220,'Fiction','Thriller'),(2011,'George Orwell','Animal Farm',18,200,'Fiction','Political Satire'),(2067,'George Orwell','Nineteen Eighty-Four',13,210,'Fiction','Political and Science fiction'),(3007,'Paulo Coelho','Manual of the Warrior of Light',7,290,'Fiction','Inspirational'),(3447,'Paulo Coelho','The Pilgrimage',17,190,'NonFiction','Memoir'),(3457,'George Orwell','Down and Out in Paris and London',20,180,'NonFiction','Memoir'),(3877,'Dan Brown','Angels and Demons',15,250,'Fiction','conspiracy,thriller'),(3886,'Paulo Coelho','Aleph',15,200,'NonFiction','Spirituality');
/*!40000 ALTER TABLE `Books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Orders`
--

DROP TABLE IF EXISTS `Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Orders` (
  `Username` varchar(20) NOT NULL,
  `BookId` int(11) NOT NULL,
  `Bookname` varchar(45) NOT NULL,
  `Price` int(11) NOT NULL,
  `DebitCard` varchar(45) NOT NULL,
  `cvv` varchar(45) NOT NULL,
  `cardholderName` varchar(45) NOT NULL,
  `Atmpin` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orders`
--

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;
INSERT INTO `Orders` VALUES ('Shubham',2067,'Nineteen Eighty-Four',210,'8765987654321234','122','Shubham Jain','8765'),('Shubham',2067,'Nineteen Eighty-Four',210,'098765434215778899','1223','Anirudh Saini','8765'),('Anirudh',1002,'Three Mistakes Of my Lofe',205,'1235667777','2345','Anirudh','1234'),('Shubh',3886,'Aleph',200,'1200110033002233','122','Shubham jain','1111'),('ved',3447,'The Pilgrimage',190,'1200110033002233','111','Ajay Shringi','8787');
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
  `Username` varchar(100) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `City` varchar(45) NOT NULL,
  `State` varchar(45) NOT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `PhoneNo` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`Username`),
  UNIQUE KEY `Username_UNIQUE` (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES ('','','','','','','',''),('Anirudh','Anirudh','Anirudh','Mishra','Jaipur','rajasthan','anirudh@gmail.com','9876543210'),('Ashish','Kumar','Ashsih','Kumar','Jungle','Jharkhand','jhaku@gmail.com','0987654321'),('Shubh','Password','Shubham','Jain','Saharanpur','Up','shubh07sre@gmail.com','123456789'),('Shubham','Password','Shubham','Jain','Saharanpur','UP','shubh07sre@gmail.com','7599231977'),('Soral','Soral6','Ayush','Soral','Kota','rajasthan','ayush.soral@gmail.com','707178289');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-18 20:57:22
