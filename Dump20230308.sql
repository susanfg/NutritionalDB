CREATE DATABASE  IF NOT EXISTS `NutritionalDB` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `NutritionalDB`;
-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: NutritionalDB
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
  CONSTRAINT `fk_Diet_Nutricionist1` FOREIGN KEY (`Creator`) REFERENCES `Nutritionist` (`idNutricionist`)
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
  `Fat` double DEFAULT NULL,
  `Protein` double DEFAULT NULL,
  `Carbohydrates` double DEFAULT NULL,
  `Fiber` double DEFAULT NULL,
  `Sodium` double DEFAULT NULL,
  `Potassium` double DEFAULT NULL,
  `Calcium` double DEFAULT NULL,
  `Iron` double DEFAULT NULL,
  `TypeOfFood` varchar(100) NOT NULL,
  PRIMARY KEY (`idFood`),
  KEY `fk_Food_TypeOfFood1_idx` (`TypeOfFood`),
  CONSTRAINT `fk_Food_TypeOfFood1` FOREIGN KEY (`TypeOfFood`) REFERENCES `TypeOfFood` (`Type`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Food`
--

LOCK TABLES `Food` WRITE;
/*!40000 ALTER TABLE `Food` DISABLE KEYS */;
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
-- Table structure for table `Nutritionist`
--

DROP TABLE IF EXISTS `Nutritionist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Nutritionist` (
  `idNutricionist` int NOT NULL AUTO_INCREMENT,
  `FullName` varchar(200) DEFAULT NULL,
  `Speciality` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`idNutricionist`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Nutritionist`
--

LOCK TABLES `Nutritionist` WRITE;
/*!40000 ALTER TABLE `Nutritionist` DISABLE KEYS */;
/*!40000 ALTER TABLE `Nutritionist` ENABLE KEYS */;
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
  `WeightKG` double NOT NULL,
  `Height` double NOT NULL,
  `Telephone` int DEFAULT NULL,
  `Intolerances` tinyint DEFAULT NULL,
  `Doctor` int NOT NULL,
  `CurrentDiet` int NOT NULL,
  PRIMARY KEY (`DNI`),
  KEY `fk_Patient_Nutricionist1_idx` (`Doctor`),
  KEY `fk_Patient_Diet1_idx` (`CurrentDiet`),
  CONSTRAINT `fk_Patient_Diet1` FOREIGN KEY (`CurrentDiet`) REFERENCES `Diet` (`idDiet`),
  CONSTRAINT `fk_Patient_Nutricionist1` FOREIGN KEY (`Doctor`) REFERENCES `Nutritionist` (`idNutricionist`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Patient`
--

LOCK TABLES `Patient` WRITE;
/*!40000 ALTER TABLE `Patient` DISABLE KEYS */;
/*!40000 ALTER TABLE `Patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TypeOfFood`
--

DROP TABLE IF EXISTS `TypeOfFood`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TypeOfFood` (
  `Type` varchar(100) NOT NULL,
  `Origin` varchar(45) NOT NULL,
  PRIMARY KEY (`Type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TypeOfFood`
--

LOCK TABLES `TypeOfFood` WRITE;
/*!40000 ALTER TABLE `TypeOfFood` DISABLE KEYS */;
/*!40000 ALTER TABLE `TypeOfFood` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-15 11:47:36
