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
  CONSTRAINT `fk_Diet_Nutricionist1` FOREIGN KEY (`Creator`) REFERENCES `Nutritionist` (`idNutricionist`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Diet`
--

LOCK TABLES `Diet` WRITE;
/*!40000 ALTER TABLE `Diet` DISABLE KEYS */;
INSERT INTO `Diet` VALUES (1,'Sin gluten adultos en descenso',2),(2,'Dieta baja en grasas',3),(3,'Dieta sin lactosa para veganos',2),(4,'Dieta rica en proteinas para deportistas',1),(5,'Dieta vegetariana equilibrada',4),(6,'Dieta sin gluten para ninos',6),(7,'Dieta cetogenica para adultos',5),(8,'Dieta rica en fibra para mejorar la digestion',2),(9,'Dieta para diabeticos tipo 2',7),(10,'Dieta para reducir el colesterol',1),(11,'Dieta detox para eliminar toxinas',4),(12,'Dieta equilibrada para mantener el peso',3),(13,'Dieta sin azucar para cuidar la piel',5),(14,'Dieta antiinflamatoria para mejorar la salud',6),(15,'Dieta sin sal para mejorar la circulacion',2),(16,'Dieta para aumentar la masa muscular',1),(17,'Dieta para reducir la ansiedad',7),(18,'Dieta sin carbohidratos para adelgazar rapido',4),(19,'Dieta rica en vitaminas para fortalecer el sistema inmunologico',5),(20,'Dieta sin carne para cuidar el medio ambiente',6),(21,'Dieta para mejorar la salud intestinal',2),(22,'Dieta para reducir la inflamacion',1),(23,'Dieta sin cafeina para mejorar el sueno',3),(24,'Dieta para mejorar la salud del corazon',7),(25,'Dieta para aumentar la energia',4),(26,'Dieta para fortalecer los huesos',5),(27,'Dieta sin lacteos para aliviar alergias',6),(28,'Dieta para reducir el estres',2),(29,'Dieta para mejorar la concentracion',1),(30,'Dieta sin frutos secos para aliviar alergias',7),(31,'Dieta para mejorar la salud mental',3),(32,'Dieta para aliviar la migrana',4),(33,'Dieta sin soja para aliviar alergias',5),(34,'Dieta para mejorar la salud de la piel',6),(35,'Dieta para mejorar la salud ocular',2),(36,'Dieta para aliviar la artritis',1),(37,'Dieta para aliviar el dolor menstrual',7),(38,'Dieta sin gluten para celiacos',4),(39,'Dieta para mejorar la salud del cerebro',5),(40,'Dieta para reducir el acne',6),(41,'Dieta para mejorar la circulacion sanguinea',2),(42,'Dieta para mejorar la digestion',1),(43,'Dieta para mejorar la memoria',3),(44,'Dieta sin histamina para aliviar alergias',7),(45,'Dieta para reducir la hipertension',4),(46,'Dieta para mejorar la salud respiratoria',5),(47,'Dieta sin trigo para aliviar alergias',6),(48,'Dieta para mejorar la salud del higado',2),(49,'Dieta para reducir la hinchazon abdominal',1),(50,'Dieta para mejorar la salud renal',7),(51,'Dieta sin sulfitos para aliviar alergias',4),(52,'Dieta para mejorar la salud bucal',5),(53,'Dieta para aliviar el dolor de espalda',6),(54,'Dieta para mejorar la salud de las articulaciones',2),(55,'Dieta para reducir la retencion de liquidos',1),(56,'Dieta para mejorar la salud del sistema nervioso',3),(57,'Dieta sin maiz para aliviar alergias',7),(58,'Dieta para mejorar la salud osea',4),(59,'Dieta para aliviar la depresion',5),(60,'Dieta para mejorar la salud de los rinones',6);
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
  `Name` varchar(300) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Nutritionist`
--

LOCK TABLES `Nutritionist` WRITE;
/*!40000 ALTER TABLE `Nutritionist` DISABLE KEYS */;
INSERT INTO `Nutritionist` VALUES (1,'Pablo Moreno Garcia-Espina','Deporte'),(2,'Susana Rocio Fernandez Giaccomassi','Descenso'),(3,'Ismael Navas Delgado','Deporte'),(4,'Antonio Rodriguez Horcas','Ascenso'),(5,'Cecilia Gonzalez Perez','Vegetarianismo'),(6,'Pablo Daniel Bouzon','Descenso'),(7,'Maria Ines Paez Bueno','Intolerancias');
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
  CONSTRAINT `fk_Patient_Nutricionist1` FOREIGN KEY (`Doctor`) REFERENCES `Nutritionist` (`idNutricionist`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Patient`
--

LOCK TABLES `Patient` WRITE;
/*!40000 ALTER TABLE `Patient` DISABLE KEYS */;
INSERT INTO `Patient` VALUES ('02358124Z','Carmen','Ruiz Soto','1952-08-08','descenso',90,2,608765432,0,3,44),('05622134W','Pilar','Ortega Jimenez','1959-12-21','ascenso',161,2,650123456,0,7,27),('09798203L','Manuel','Lopez Aguilar','1994-08-13','descenso',52,2,691234567,0,7,27),('11278952Q','Miguel','Gonzalez Ramos','1970-12-01','mantenimiento',97,2,614567890,0,6,36),('11933112X','Raul','Diaz Saez','2005-06-02','mantenimiento',65,2,655678901,1,5,48),('13268945G','Laura','Fernandez Castro','1987-01-09','descenso',72,2,607621093,1,4,21),('15606728K','Francisco','Hernandez Lopez','1970-11-09','descenso',65,2,658363392,0,2,32),('16895033S','Juan','Sanz Rodriguez','2001-03-23','mantenimiento',57,2,648901234,0,1,36),('17163483N','Eduardo','Perez Alonso','1960-10-04','ascenso',85,2,604556789,0,5,24),('17891224C','Carlos','Gomez Romero','1966-02-19','descenso',89,2,654287227,1,7,49),('18759113T','Ines','Castillo Romero','1987-06-24','ascenso',174,2,674567890,0,1,43),('22466137X','Ana','Moreno Lopez','1965-07-08','descenso',66,2,606784319,0,5,3),('22582895L','Pedro','Hernandez Ortiz','1976-09-15','descenso',64,2,611234567,0,1,2),('26775786z','Lucia','Rodriguez Pena','2000-10-10','Descenso',70,1,622255489,0,2,1),('28432375Y','Elena','Gonzalez Perez','1965-11-27','descenso',72,2,684096383,0,6,11),('29366620W','Adrian','Diaz Alvarez','1994-05-15','ascenso',72,2,660176585,1,4,19),('30111234M','Luis','Martin Sanchez','1947-03-02','mantenimiento',62,2,642345678,0,2,10),('30179415M','Marta','Hernandez Rodriguez','1976-08-22','mantenimiento',68,2,616789045,0,7,49),('32399118L','Jose','Gonzalez Marin','1983-09-23','mantenimiento',58,2,630980754,0,2,20),('32849681T','Carlos','Gonzalez Ruiz','1985-11-20','descenso',79,2,605891432,1,3,17),('34773520L','Miguel','Perez Soto','1973-09-04','ascenso',90,2,609833210,0,2,50),('35281816G','Manuela','Castro Rivas','1992-12-27','ascenso',65,2,604322987,0,4,9),('35759399J','Antonio','Torres Gonzalez','1958-08-22','ascenso',78,2,647401279,0,5,12),('40418220T','Raul','Martin Rodriguez','1952-08-14','ascenso',183,2,647890123,0,4,43),('41553970P','Cristina','Garcia Molina','1989-01-27','ascenso',167,2,678654321,0,4,43),('41751802V','Ines','Lopez Garcia','1963-06-10','ascenso',70,2,676064374,0,1,34),('42013944G','Manuel','Jimenez Ruiz','1975-06-18','descenso',85,2,655991066,0,3,36),('50311250Q','Maria','Perez Moreno','1986-10-27','descenso',66,2,610073736,0,4,6),('52173167Z','Carmen','Ruiz Ortega','1979-02-20','descenso',71,2,617564321,1,3,15),('53646962X','Laura','Castillo Leon','1952-12-03','descenso',114,2,623456789,0,5,6),('57070477D','Javier','Rodriguez Sanchez','1999-09-30','descenso',70,2,625098743,0,7,43),('57685331G','Julia','Vega Diaz','1989-11-05','descenso',64,2,692345678,1,5,34),('65092950E','David','Lopez Saez','1978-06-28','mantenimiento',81,2,625187364,0,5,39),('67475255F','Carmen','Sanchez Garcia','1976-09-26','mantenimiento',73,2,600124619,1,4,48),('67704860L','Isabel','Garcia Romero','1993-03-05','ascenso',58,2,602198675,0,1,2),('67716439N','Sara','Martinez Ortiz','1954-07-28','ascenso',59,2,628040245,0,2,44),('68220472P','Francisco','Gomez Fernandez','1952-09-01','mantenimiento',75,2,605432109,1,3,36),('75294058F','Maria','Garcia Hernandez','1956-12-06','mantenimiento',62,2,616589320,0,6,18),('77242812H','Raul','Gomez Torres','1985-07-16','descenso',65,2,630987654,0,3,4),('78858624G','Sofia','Ramos Ortiz','1984-02-23','ascenso',108,1,679876543,0,7,13),('79008423B','Antonio','Lopez Fernandez','1986-05-07','descenso',96,2,613456789,1,1,12),('79192913X','Isabel','Garcia Moreno','1948-04-23','ascenso',81,2,680708871,1,6,4),('79424390S','Pedro','Gonzalez Castro','1971-11-12','mantenimiento',95,2,623575841,1,6,9),('82027467B','Ana','Rodriguez Ramirez','1955-03-20','mantenimiento',68,2,624961172,1,7,13),('82749166S','Sofia','Perez Garcia','1980-04-13','ascenso',62,2,619086432,0,1,6),('83211085L','Marta','Diaz Lopez','1955-06-10','ascenso',82,1,684567890,0,3,8),('83833757G','Javier','Fernandez Martinez','1979-05-01','mantenimiento',88,2,655889463,0,2,25),('88182185T','Silvia','Perez Rodriguez','1972-06-01','descenso',61,2,622478309,0,3,9),('90527143D','Rafael','Garcia Sanchez','1953-11-03','mantenimiento',78,2,636221453,1,6,41),('92837275K','Pablo','Martinez Castro','1984-05-08','mantenimiento',66,2,650107691,1,1,22),('95392730N','Jose','Gonzalez Ortiz','1984-03-17','ascenso',82,2,605672318,1,2,29),('98972981H','Lucia','Garcia Sanchez','1981-12-09','ascenso',62,2,656983377,0,5,17);
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

-- Dump completed on 2023-03-10  8:41:45
