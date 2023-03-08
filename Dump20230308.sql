CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `Diet`
--

DROP TABLE IF EXISTS `Diet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Diet` (
  `idDiet` int NOT NULL AUTO_INCREMENT,
  `Description` varchar(200) DEFAULT NULL,
  `Creator` int NOT NULL,
  PRIMARY KEY (`idDiet`),
  KEY `fk_Diet_Nutricionist1_idx` (`Creator`),
  CONSTRAINT `fk_Diet_Nutricionist1` FOREIGN KEY (`Creator`) REFERENCES `Nutricionist` (`idNutricionist`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Diet`
--

LOCK TABLES `Diet` WRITE;
/*!40000 ALTER TABLE `Diet` DISABLE KEYS */;
/*!40000 ALTER TABLE `Diet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Food`
--

DROP TABLE IF EXISTS `Food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Food` (
  `idFood` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(150) NOT NULL,
  `Kcal` int DEFAULT NULL,
  `KJ` int DEFAULT NULL,
  `Fat` decimal(4,0) DEFAULT NULL,
  `Protein` decimal(4,0) DEFAULT NULL,
  `Carbohydrates` decimal(4,0) DEFAULT NULL,
  `Fiber` decimal(4,0) DEFAULT NULL,
  `Sodium` decimal(4,0) DEFAULT NULL,
  `Potassium` decimal(4,0) DEFAULT NULL,
  `Calcium` decimal(4,0) DEFAULT NULL,
  `Iron` decimal(4,0) DEFAULT NULL,
  PRIMARY KEY (`idFood`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Food`
--

LOCK TABLES `Food` WRITE;
/*!40000 ALTER TABLE `Food` DISABLE KEYS */;
INSERT INTO `Food` VALUES (1,'Coconut fat',884,3700,100,0,0,0,0,0,0,0),(2,'Liquid margarine 82% fat fortified e.g. Milda culinesse ',721,3017,82,0,0,0,600,0,0,0),(3,'Low-fat margarine 38% fat fortified e.g. Becel ',348,1457,38,0,3,0,500,0,0,0),(4,'Grapeseed oil',884,3700,100,0,0,0,0,0,0,0),(5,'Corn oil',884,3700,100,0,0,0,0,0,0,0),(6,'Olive oil',884,3700,100,0,0,0,0,0,0,0),(7,'Safflower oil',884,3700,100,0,0,0,0,0,0,0),(8,'Sesame oil',884,3700,100,0,0,0,0,0,0,0),(9,'Soybean oil',884,3700,100,0,0,0,0,0,0,0),(10,'Sunflower oil',884,3700,100,0,0,0,0,0,0,0),(11,'Wheatgerm oil',884,3700,100,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `Food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ListOfFood`
--

DROP TABLE IF EXISTS `ListOfFood`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ListOfFood` (
  `idDiet` int NOT NULL,
  `idFood` int NOT NULL,
  PRIMARY KEY (`idDiet`,`idFood`),
  KEY `fk_Diet_has_Food_Food1_idx` (`idFood`),
  KEY `fk_Diet_has_Food_Diet1_idx` (`idDiet`),
  CONSTRAINT `fk_Diet_has_Food_Diet1` FOREIGN KEY (`idDiet`) REFERENCES `Diet` (`idDiet`),
  CONSTRAINT `fk_Diet_has_Food_Food1` FOREIGN KEY (`idFood`) REFERENCES `Food` (`idFood`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ListOfFood`
--

LOCK TABLES `ListOfFood` WRITE;
/*!40000 ALTER TABLE `ListOfFood` DISABLE KEYS */;
/*!40000 ALTER TABLE `ListOfFood` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Nutricionist`
--

DROP TABLE IF EXISTS `Nutricionist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Nutricionist` (
  `idNutricionist` int NOT NULL AUTO_INCREMENT,
  `FullName` varchar(200) DEFAULT NULL,
  `Speciality` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`idNutricionist`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Nutricionist`
--

LOCK TABLES `Nutricionist` WRITE;
/*!40000 ALTER TABLE `Nutricionist` DISABLE KEYS */;
/*!40000 ALTER TABLE `Nutricionist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Patient`
--

DROP TABLE IF EXISTS `Patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Patient` (
  `DNI` varchar(20) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `LastNames` varchar(100) NOT NULL,
  `BirthDate` date NOT NULL,
  `State` varchar(70) NOT NULL,
  `WeightKG` decimal(3,0) NOT NULL,
  `Height` decimal(3,0) NOT NULL,
  `Telephone` int DEFAULT NULL,
  `Intolerances` tinyint DEFAULT NULL,
  `Doctor` int NOT NULL,
  `CurrentDiet` int NOT NULL,
  PRIMARY KEY (`DNI`),
  KEY `fk_Patient_Nutricionist1_idx` (`Doctor`),
  KEY `fk_Patient_Diet1_idx` (`CurrentDiet`),
  CONSTRAINT `fk_Patient_Diet1` FOREIGN KEY (`CurrentDiet`) REFERENCES `Diet` (`idDiet`),
  CONSTRAINT `fk_Patient_Nutricionist1` FOREIGN KEY (`Doctor`) REFERENCES `Nutricionist` (`idNutricionist`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Patient`
--

LOCK TABLES `Patient` WRITE;
/*!40000 ALTER TABLE `Patient` DISABLE KEYS */;
/*!40000 ALTER TABLE `Patient` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-08 20:40:15
