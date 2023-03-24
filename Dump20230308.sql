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
  CONSTRAINT `fk_Diet_Nutricionist1` FOREIGN KEY (`Creator`) REFERENCES `Nutritionist` (`idNutritionist`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Diet`
--

LOCK TABLES `Diet` WRITE;
/*!40000 ALTER TABLE `Diet` DISABLE KEYS */;
INSERT INTO `Diet` VALUES (1,'Dieta baja en grasas',3),(2,'Dieta sin lactosa para veganos',2),(3,'Dieta rica en proteinas para deportistas',1),(4,'Dieta vegetariana equilibrada',4),(5,'Dieta sin gluten para ninos',6),(6,'Dieta cetogenica para adultos',5),(7,'Dieta rica en fibra para mejorar la digestion',2),(8,'Dieta para diabeticos tipo 2',7),(9,'Dieta para reducir el colesterol',1),(10,'Dieta detox para eliminar toxinas',4),(11,'Dieta equilibrada para mantener el peso',3),(12,'Dieta sin azucar para cuidar la piel',5),(13,'Dieta antiinflamatoria para mejorar la salud',6),(14,'Dieta sin sal para mejorar la circulacion',2),(15,'Dieta para aumentar la masa muscular',1),(16,'Dieta para reducir la ansiedad',7),(17,'Dieta sin carbohidratos para adelgazar rapido',4),(18,'Dieta rica en vitaminas para fortalecer el sistema inmunologico',5),(19,'Dieta sin carne para cuidar el medio ambiente',6),(20,'Dieta para mejorar la salud intestinal',2),(21,'Dieta para reducir la inflamacion',1),(22,'Dieta sin cafeina para mejorar el sueno',3),(23,'Dieta para mejorar la salud del corazon',7),(24,'Dieta para aumentar la energia',4),(25,'Dieta para fortalecer los huesos',5),(26,'Dieta sin lacteos para aliviar alergias',6),(27,'Dieta para reducir el estres',2),(28,'Dieta para mejorar la concentracion',1),(29,'Dieta sin frutos secos para aliviar alergias',7),(30,'Dieta para mejorar la salud mental',3),(31,'Dieta para aliviar la migrana',4),(32,'Dieta sin soja para aliviar alergias',5),(33,'Dieta para mejorar la salud de la piel',6),(34,'Dieta para mejorar la salud ocular',2),(35,'Dieta para aliviar la artritis',1),(36,'Dieta para aliviar el dolor menstrual',7),(37,'Dieta sin gluten para celiacos',4),(38,'Dieta para mejorar la salud del cerebro',5),(39,'Dieta para reducir el acne',6),(40,'Dieta para mejorar la circulacion sanguinea',2),(41,'Dieta para mejorar la digestion',1),(42,'Dieta para mejorar la memoria',3),(43,'Dieta sin histamina para aliviar alergias',7),(44,'Dieta para reducir la hipertension',4),(45,'Dieta para mejorar la salud respiratoria',5),(46,'Dieta sin trigo para aliviar alergias',6),(47,'Dieta para mejorar la salud del higado',2),(48,'Dieta para reducir la hinchazon abdominal',1),(49,'Dieta para mejorar la salud renal',7),(50,'Dieta sin sulfitos para aliviar alergias',4),(51,'Dieta para mejorar la salud bucal',5),(52,'Dieta para aliviar el dolor de espalda',6),(53,'Dieta para mejorar la salud de las articulaciones',2),(54,'Dieta para reducir la retencion de liquidos',1),(55,'Dieta para mejorar la salud del sistema nervioso',3),(56,'Dieta sin maiz para aliviar alergias',7),(57,'Dieta para mejorar la salud osea',4),(58,'Dieta para aliviar la depresion',5),(59,'Dieta para mejorar la salud de los rinones',6),(60,'Dieta hipercalórica',5);
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
  KEY `Name_Kcal` (`Name`,`Kcal`),
  KEY `Protein_Name` (`Protein`,`Name`),
  KEY `Protiron` (`Protein`,`Iron`),
  CONSTRAINT `fk_Food_TypeOfFood1` FOREIGN KEY (`TypeOfFood`) REFERENCES `TypeOfFood` (`Type`)
) ENGINE=InnoDB AUTO_INCREMENT=234 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Food`
--

LOCK TABLES `Food` WRITE;
/*!40000 ALTER TABLE `Food` DISABLE KEYS */;
INSERT INTO `Food` VALUES (1,'Asparagus',20,84,0.2,2.2,3.9,2.1,2,202,24,1.1,'vegetables'),(2,'Bell Pepper',20,84,0.2,0.9,4.6,1.7,3,211,10,0.4,'vegetables'),(3,'Broccoli',34,142,0.4,2.8,6.6,2.6,33,316,47,0.7,'vegetables'),(4,'Brussels Sprouts',43,179,0.3,3.4,8.9,3.8,25,342,42,1.4,'vegetables'),(5,'Cabbage',25,105,0.1,1.3,5.8,2.5,18,170,40,0.4,'vegetables'),(6,'Carrot',41,173,0.2,0.9,9.6,2.8,69,320,37,0.3,'vegetables'),(7,'Cauliflower',25,105,0.3,1.9,4.9,2.3,30,299,22,0.4,'vegetables'),(8,'Celery',16,67,0.2,0.7,3,1.6,80,260,40,0.2,'vegetables'),(9,'Corn',96,402,1.2,3.2,19,2.7,15,270,2,0.5,'vegetables'),(10,'Cucumber',15,63,0.1,0.6,3.6,0.5,2,147,16,0.3,'vegetables'),(11,'Eggplant',25,104,0.2,1,6,3,2,229,14,0.6,'vegetables'),(12,'Green Beans',31,130,0.1,1.8,7.1,3.4,6,209,37,0.9,'vegetables'),(13,'Kale',49,205,1,4.3,9,2,38,491,150,1.5,'vegetables'),(14,'Leek',61,256,0.3,1.5,14.2,1.8,20,180,59,1.5,'vegetables'),(15,'Lettuce',15,63,0.2,1.4,2.9,1.3,28,194,33,0.5,'vegetables'),(16,'Mushroom',22,92,0.3,3.1,3.3,1,9,318,3,0.5,'vegetables'),(17,'Onion',40,167,0.1,1.1,9.3,1.7,4,146,23,0.4,'vegetables'),(18,'Parsley',36,151,0.8,3,6.3,3.3,56,554,138,6.2,'vegetables'),(19,'Peas',81,339,0.4,5.4,14.5,5.1,5,244,25,1.5,'vegetables'),(20,'Peppers',20,84,0.2,1,4.6,1.7,2,175,10,0.3,'vegetables'),(21,'Pumpkin',26,109,0.1,1,6.5,0.5,1,340,21,0.8,'vegetables'),(22,'Radish',16,67,0.1,0.7,3.4,1.6,39,233,25,0.3,'vegetables'),(23,'Red cabbage',31,130,0.2,1.4,6.6,2.1,18,243,40,0.4,'vegetables'),(24,'Romaine lettuce',17,72,0.3,1.2,3.3,1,28,247,33,0.5,'vegetables'),(25,'Spinach',23,97,0.4,2.9,3.6,2.2,79,558,99,2.7,'vegetables'),(26,'Squash',20,84,0.1,1,4.4,1.5,4,350,23,0.4,'vegetables'),(27,'Sweet potato',86,360,0.1,1.6,20.1,3,55,337,30,0.7,'vegetables'),(28,'Tomato',18,75,0.2,0.9,3.9,1.2,5,237,10,0.3,'vegetables'),(29,'Turnip',28,118,0.1,1.1,6.4,1.8,37,233,30,0.4,'vegetables'),(30,'Watercress',11,46,0.1,2.3,0.5,0.5,41,330,120,0.2,'vegetables'),(31,'Yam',118,494,0.2,1.5,28.4,4.1,9,816,17,0.5,'vegetables'),(32,'Zucchini',17,71,0.3,1.2,3.1,1,8,261,16,0.4,'vegetables'),(33,'Pak choi',13,54,0.2,1.5,1.8,1,65,252,105,1.8,'vegetables'),(34,'Parsnip',75,313,0.3,1.2,18,4.9,4,390,36,0.5,'vegetables'),(35,'Peppermint',70,294,0.9,3.8,14.9,8,26,569,243,1.2,'vegetables'),(36,'Potato',77,322,0.1,2,17,2.2,7,421,12,0.7,'vegetables'),(37,'Pumpkin flowers',16,68,0.1,1.5,3.3,1,17,262,23,0.3,'vegetables'),(38,'Bagel',289,1210,1.8,11,58.3,2.6,571,89,58,3.2,'cereals and bread'),(39,'Barley',354,1482,2.3,9.9,73.5,17.3,12,452,33,2.5,'cereals and bread'),(40,'Breadfruit',103,430,0.2,1,27.9,4.9,2,490,17,0.7,'cereals and bread'),(41,'Brioche',349,1459,12.9,8.5,49.5,1.5,427,139,79,1.8,'cereals and bread'),(42,'Buckwheat',343,1434,3.4,13.3,71.5,10,1,460,18,2.2,'cereals and bread'),(43,'Cornbread',315,1320,10.7,6.1,49.8,1.9,590,200,16,2.3,'cereals and bread'),(44,'Croissant',406,1699,23.4,8.5,44.8,2.4,636,114,56,3.3,'cereals and bread'),(45,'Crumpet',153,642,1.3,4.6,29.6,0.6,578,85,68,2,'cereals and bread'),(46,'Einkorn wheat',336,1407,2.5,16.5,69.5,11.3,3,575,50,3.2,'cereals and bread'),(47,'Focaccia',250,1045,2.5,8.5,49.5,1.5,563,91,69,2.5,'cereals and bread'),(48,'French toast',232,970,7.6,8.6,32.2,1.6,271,200,66,1.4,'cereals and bread'),(49,'Honey wheat bread',250,1046,3,9,47,3,474,250,76,3.4,'cereals and bread'),(50,'Kamut',337,1412,2.7,14.3,69.3,6.7,10,398,34,3.6,'cereals and bread'),(51,'Millet',378,1582,4.2,11,73.9,8.5,5,195,8,4.7,'cereals and bread'),(52,'Naan',360,1507,5.5,9.5,60.5,3,538,175,83,3.7,'cereals and bread'),(53,'Oat bread',246,1032,5,8.5,45.5,5.5,260,285,64,3.5,'cereals and bread'),(54,'Pita bread',275,1150,1.5,10,55,2.5,537,168,60,2.5,'cereals and bread'),(55,'Polenta',82,344,0.6,1.4,17.3,1.8,1,40,3,0.5,'cereals and bread'),(56,'Quinoa',368,1540,6.1,14.1,64.2,7,5,563,47,4.6,'cereals and bread'),(57,'Rice flour brown',364,1522,2.8,7.5,77.7,3.5,7,393,25,1.5,'cereals and bread'),(58,'Rice flour white',366,1530,0.5,7.1,80.1,0.3,2,80,5,0.8,'cereals and bread'),(59,'Rice white cooked',130,546,0.3,2.4,28.7,0.4,1,35,9,0.4,'cereals and bread'),(60,'Rice brown cooked',111,464,0.9,2.6,23.5,1.8,5,79,10,0.5,'cereals and bread'),(61,'Spelt cooked',123,515,1.6,5.8,23.1,3.2,3,134,27,2.4,'cereals and bread'),(62,'Sourdough bread',217,907,2.2,7.7,42.8,3.4,391,123,53,1.8,'cereals and bread'),(63,'Soy flour',387,1620,20.6,39.6,19.9,9.3,11,1797,240,6.9,'cereals and bread'),(64,'Soybeans cooked',173,725,6.8,16.6,9.9,6,2,515,54,2.2,'cereals and bread'),(65,'Spelt raw',338,1414,2.6,14.6,60.6,10.7,5,630,49,3.2,'cereals and bread'),(66,'Teff cooked',101,424,1.3,3.9,20.3,2.8,12,63,123,7.6,'cereals and bread'),(67,'Tortilla  corn',218,913,4.2,5.2,41.7,3.9,16,181,16,1.8,'cereals and bread'),(68,'Tortilla  flour',298,1247,8.5,7.5,49.2,2.5,591,135,127,3.4,'cereals and bread'),(69,'Wheat bran',216,904,4.2,15.6,42.8,39.9,4,1260,54,6.3,'cereals and bread'),(70,'Wheat germ',361,1512,9.7,27.2,51,13.2,2,1200,53,7.9,'cereals and bread'),(71,'Wheat  cooked',124,520,0.9,3.8,25.2,3.3,0,158,12,0.9,'cereals and bread'),(72,'Wheat  whole grain',339,1419,2.5,12.6,71.2,10.7,2,452,34,3.2,'cereals and bread'),(73,'Whole-grain bread',247,1034,3.8,10.4,44.7,6.4,405,192,54,2.7,'cereals and bread'),(74,'Anchovy',210,879,14,20.3,0,0,720,410,147,2.2,'fish'),(75,'Barracuda',162,679,7.3,25.4,0,0,63,300,11,0.7,'fish'),(76,'Bluefish',124,518,5.9,20.4,0,0,65,337,12,0.5,'fish'),(77,'Catfish',105,441,2.7,18,0,0,54,271,11,0.7,'fish'),(78,'Carp',127,532,5.5,17.5,0,0,51,310,20,0.7,'fish'),(79,'Cod',82,344,0.7,18.5,0,0,63,439,14,0.5,'fish'),(80,'Eel',184,771,11.4,18.4,0,0,100,280,18,1.3,'fish'),(81,'Flounder',86,360,0.9,18.1,0,0,70,290,12,0.5,'fish'),(82,'Grouper',117,490,1.7,19.2,0,0,38,275,28,0.4,'fish'),(83,'Haddock',74,310,0.4,17.1,0,0,54,425,11,0.5,'fish'),(84,'Halibut',110,460,2.3,18.2,0,0,70,350,10,0.5,'fish'),(85,'Herring',217,910,15.6,18,0,0,86,408,86,1.1,'fish'),(86,'Mackerel',305,1280,25,18.6,0,0,75,390,12,0.7,'fish'),(87,'Mahi mahi',97,407,1.5,19.4,0,0,70,280,10,0.5,'fish'),(88,'Monkfish',76,320,0.5,17.5,0,0,40,510,18,0.4,'fish'),(89,'Perch',96,402,2.4,18.9,0,0,52,299,11,0.5,'fish'),(90,'Pike',119,498,3,19.6,0,0,43,444,20,0.8,'fish'),(91,'Pollock',92,386,0.9,20.2,0,0,68,340,17,0.5,'fish'),(92,'Rainbow trout',119,496,5.6,20.5,0,0,49,364,40,0.9,'fish'),(93,'Red snapper',110,460,2.3,19,0,0,40,330,34,0.5,'fish'),(94,'Sablefish',196,819,12.7,19.6,0,0,70,293,20,0.5,'fish'),(95,'Salmon',208,870,13.4,20.4,0,0,59,363,12,0.5,'fish'),(96,'Sardines',208,869,11.5,24.6,0,0,397,397,382,2.9,'fish'),(97,'Sea bass',97,405,1.8,19.7,0,0,52,310,15,0.3,'fish'),(98,'Sea bream',129,540,3.2,19.9,0,0,39,345,12,0.4,'fish'),(99,'Shad',180,754,11,18,0,0,93,270,120,2,'fish'),(100,'Shark',125,524,4.5,20.6,0,0,62,294,16,0.8,'fish'),(101,'Skipjack tuna',144,604,2,30,0,0,350,270,10,0.7,'fish'),(102,'Sole',113,472,1.8,20.2,0,0,70,220,24,0.3,'fish'),(103,'Spanish mackerel',169,707,12,19.9,0,0,65,383,30,0.5,'fish'),(104,'Squid',92,386,1.4,15.6,3,0,44,350,15,2,'fish'),(105,'Swordfish',206,862,13.5,20.5,0,0,49,305,12,0.6,'fish'),(106,'Tilefish',128,535,5.2,18.5,0,0,42,320,60,0.5,'fish'),(107,'Trout',119,496,4.3,20.3,0,0,54,333,20,0.7,'fish'),(108,'Tuna',184,770,6.3,29.9,0,0,39,340,10,0.8,'fish'),(109,'Whitefish',97,406,1.8,18,0,0,70,285,12,0.6,'fish'),(110,'Yellowfin tuna',144,604,2,30.2,0,0,380,270,10,0.7,'fish'),(111,'Yellowtail',141,591,5.5,22.5,0,0,57,306,30,0.5,'fish'),(112,'Zander',90,376,1.6,18.6,0,0,70,310,22,0.8,'fish'),(113,'Zebra fish',88,368,1.7,17.4,0,0,42,275,10,0.5,'fish'),(114,'Milk whole',61,256,3.2,3.3,4.7,0,44,150,120,0.1,'dairy'),(115,'Yogurt plain',59,247,3.3,6,4.7,0,36,211,121,0.4,'dairy'),(116,'Cheese cheddar',402,1684,33.1,24.9,1.3,0,621,105,721,0.5,'dairy'),(117,'Butter',717,3006,81,0.9,0.1,0,684,24,24,0.02,'dairy'),(118,'Cream heavy',340,1424,35,2.1,2.8,0,32,98,22,0.2,'dairy'),(119,'Sour cream',198,829,19.5,2.2,3.1,0,41,98,76,0.2,'dairy'),(120,'Ice cream vanilla',207,866,11,3.7,25.1,0.3,56,138,84,0.2,'dairy'),(121,'Cottage cheese',98,410,4.3,11.1,2.6,0,364,82,83,0.1,'dairy'),(122,'Mozzarella cheese',280,1171,22.2,24.6,2.2,0,627,92,731,0.3,'dairy'),(123,'Feta cheese',264,1106,21.3,14.2,4.1,0,1116,62,493,0.4,'dairy'),(124,'Blue cheese',353,1477,28.7,21.4,2.3,0,1396,256,528,0.5,'dairy'),(125,'Milk skim',35,146,0.1,3.4,4.8,0,51,159,125,0.1,'dairy'),(126,'Milk 2% fat',50,209,1.8,3.3,4.8,0,50,160,121,0.1,'dairy'),(127,'Cream cheese',342,1431,34.9,6.8,3.1,0,643,46,81,0.1,'dairy'),(128,'Ricotta cheese',174,727,10.3,11.3,4.1,0,174,90,205,0.4,'dairy'),(129,'Goat cheese',364,1524,29,21.6,2.6,0,420,204,493,1.7,'dairy'),(130,'Whipped cream',257,1073,27.8,1.7,3.3,0,21,65,27,0.1,'dairy'),(131,'Yogurt fruit flavored',89,373,1.5,3.3,16.5,0.5,38,132,116,0.1,'dairy'),(132,'Buttermilk',40,167,0.9,3.3,4.8,0,49,155,116,0.1,'dairy'),(133,'Evaporated milk',134,561,7.9,6.8,9.7,0,160,524,282,0.1,'dairy'),(134,'Condensed milk',321,1342,8,7.9,54.4,0,166,327,290,0.4,'dairy'),(135,'Beef ground 85% lean meat  15% fat raw',250,1046,15.93,17.34,0,0,64,342,11,2.28,'meat'),(136,'Beef ground 85% lean meat  15% fat cooked pan-broiled',250,1046,15.93,17.34,0,0,64,342,11,2.28,'meat'),(137,'Beef round bottom round roast separable lean and fat trimmed to 0\" fat all grades cooked roasted',164,686,5.06,28.3,0,0,57,358,10,2.38,'meat'),(138,'Beef round bottom round roast separable lean and fat trimmed to 0\" fat all grades raw',133,556,4.18,20.96,0,0,50,338,9,2.17,'meat'),(139,'Beef round top round separable lean only trimmed to 0\" fat all grades cooked roasted',166,695,4.92,31.32,0,0,51,389,7,2.86,'meat'),(140,'Beef round top round separable lean only trimmed to 0\" fat all grades raw',132,552,3.86,29.36,0,0,55,374,7,2.79,'meat'),(141,'Beef shoulder pot roast or steak boneless separable lean only trimmed to 0\" fat all grades raw',144,603,4.48,24.2,0,0,56,307,7,2.22,'meat'),(142,'Beef shoulder pot roast or steak boneless separable lean only trimmed to 0\" fat all grades cooked braised',228,955,10.98,32.74,0,0,69,415,10,2.29,'meat'),(143,'Beef chuck arm pot roast separable lean and fat trimmed to 0\" fat all grades raw',167,699,7.65,20.45,0,0,51,300,8,2.11,'meat'),(144,'Beef chuck arm pot roast separable lean and fat trimmed to 0\" fat all grades cooked braised',245,1024,14.02,28.46,0,0,57,325,9,2.21,'meat'),(145,'Pork ground 96% lean  4% fat raw',125,523,4.29,23.39,0,0,70,309,7,1.06,'meat'),(146,'Sirloin steak',271,1134,21.3,18.9,0,0,52,350,20,2.2,'meat'),(147,'Sausage',301,1260,25.1,16.1,1.5,0,780,420,10,2.5,'meat'),(148,'Shoulder roast',263,1101,19.9,20.5,0,0,44,316,7,1.6,'meat'),(149,'Strip steak',250,1046,17.2,25.6,0,0,70,343,10,2.1,'meat'),(150,'T-bone steak',250,1046,17.2,25.6,0,0,70,343,10,2.1,'meat'),(151,'Tri-tip roast',250,1046,17.2,25.6,0,0,70,343,10,2.1,'meat'),(152,'Top loin steak',250,1046,17.2,25.6,0,0,70,343,10,2.1,'meat'),(153,'Veal chop',225,941,14.2,24.7,0,0,55,341,10,1.6,'meat'),(154,'Veal cutlet',225,941,14.2,24.7,0,0,55,341,10,1.6,'meat'),(155,'Veal roast',225,941,14.2,24.7,0,0,55,341,10,1.6,'meat'),(156,'Veal shank',225,941,14.2,24.7,0,0,55,341,10,1.6,'meat'),(157,'Venison steak',133,557,2.3,27.8,0,0,56,366,3,3,'meat'),(158,'Wild boar chop',197,824,11.9,23.8,0,0,63,366,10,1.6,'meat'),(159,'Wild boar roast',197,824,11.9,23.8,0,0,63,366,10,1.6,'meat'),(160,'Wild boar ribs',197,824,11.9,23.8,0,0,63,366,10,1.6,'meat'),(161,'Wild boar sausage',301,1260,25.1,16.1,1.5,0,780,420,10,2.5,'meat'),(162,'Apple',52,218,0.2,0.3,14,2.4,1,107,6,0.1,'fruits'),(163,'Banana',89,371,0.3,1.1,23.5,2.6,1,358,5,0.3,'fruits'),(164,'Orange',47,196,0.1,0.9,12,2.4,0,181,40,0.1,'fruits'),(165,'Kiwi',61,255,0.5,1.1,14.7,2.1,3,312,34,0.3,'fruits'),(166,'Pineapple',50,210,0.1,0.5,13.1,1.4,1,109,13,0.3,'fruits'),(167,'Watermelon',30,126,0.2,0.6,7.6,0.4,1,112,7,0.2,'fruits'),(168,'Mango',60,251,0.4,0.8,15.4,1.6,1,156,11,0.2,'fruits'),(169,'Grapes',69,288,0.4,0.7,18.1,0.9,2,191,10,0.4,'fruits'),(170,'Pear',57,239,0.1,0.4,15.3,3.1,1,116,11,0.2,'fruits'),(171,'Peach',39,164,0.3,0.9,9.5,1.5,0,190,6,0.2,'fruits'),(172,'Plum',46,194,0.3,0.7,11.4,1.4,0,157,6,0.2,'fruits'),(173,'Apricot',48,201,0.4,1.4,11.1,2,1,259,13,0.4,'fruits'),(174,'Cherry',50,209,0.3,1,12.2,1.6,0,222,16,0.3,'fruits'),(175,'Blueberry',57,240,0.3,0.7,14.5,2.4,1,77,6,0.4,'fruits'),(176,'Raspberry',52,217,0.7,1.2,11.9,6.5,1,151,25,0.7,'fruits'),(177,'Strawberry',32,133,0.3,0.7,7.7,2,1,153,16,0.4,'fruits'),(178,'Blackberry',43,180,0.5,1.4,9.6,5.3,1,162,32,0.7,'fruits'),(179,'Cranberry',46,194,0.1,0.4,12.2,4.6,2,80,8,0.3,'fruits'),(180,'Grapefruit',42,175,0.1,0.7,10.7,1.1,0,135,22,0.1,'fruits'),(181,'Lemon',29,121,0.3,1.1,9.3,2.8,2,138,26,0.5,'fruits'),(182,'Lime',30,126,0.2,0.7,10.5,2.8,1,102,33,0.6,'fruits'),(183,'Mango',60,251,0.4,0.8,15.4,1.6,1,156,11,0.2,'fruits'),(184,'Nectarine',44,185,0.3,1.1,10.6,1.7,0,201,6,0.3,'fruits'),(185,'Orange',47,196,0.1,0.9,12,2.4,0,181,40,0.1,'fruits'),(186,'Papaya',43,179,0.3,0.5,10.8,1.8,8,182,20,0.3,'fruits'),(187,'Passion fruit',97,406,0.7,2.2,23.4,10.4,28,348,12,1.5,'fruits'),(188,'Peach',39,164,0.3,0.9,9.5,1.5,0,190,6,0.2,'fruits'),(189,'Pear',57,239,0.1,0.4,15.3,3.1,1,116,11,0.2,'fruits'),(190,'Pineapple',50,210,0.1,0.5,13.1,1.4,1,109,13,0.3,'fruits'),(191,'Plum',46,194,0.3,0.7,11.4,1.4,0,157,6,0.2,'fruits'),(192,'Pomegranate',83,347,1.2,1.7,18.7,4,3,236,10,0.3,'fruits'),(193,'Quince',57,238,0.1,0.4,15.3,1.9,17,197,17,0.7,'fruits'),(194,'Raspberry',52,217,0.7,1.2,11.9,6.5,1,151,25,0.7,'fruits'),(195,'Redcurrant',56,235,0.2,1.4,12.4,3.6,1,275,33,1,'fruits'),(196,'Strawberry',32,133,0.3,0.7,7.7,2,1,153,16,0.4,'fruits'),(197,'Tangerine',53,222,0.3,0.8,13.3,1.8,1,166,37,0.1,'fruits'),(198,'Ugli fruit',50,209,0.2,1,13.8,1.9,2,170,30,0.2,'fruits'),(199,'Watermelon',30,126,0.2,0.6,7.6,0.4,1,112,7,0.2,'fruits'),(200,'Yuzu',38,160,0.2,1.2,9.5,2.3,1,205,40,0.3,'fruits'),(201,'Milky Way',464,1941,17.1,4.1,75.2,0.7,139,233,189,1.2,'chocolates and sweets'),(202,'Twix',483,2020,21,4.5,63.5,1.1,186,190,0,1.7,'chocolates and sweets'),(203,'Snickers',483,2020,23.9,4.5,59.3,1.8,163,330,52,2.7,'chocolates and sweets'),(204,'Reese\'s Peanut Butter Cups',515,2155,29.2,10.5,57.9,1.8,246,278,40,2.1,'chocolates and sweets'),(205,'Kit Kat',524,2192,27.9,7.1,61.8,0.7,91,166,77,2.4,'chocolates and sweets'),(206,'Skittles',406,1698,4.4,0.9,90.8,0,8,6,0,0.9,'chocolates and sweets'),(207,'Haribo Goldbears',342,1430,0.2,6.9,77,0,46,3,0,0,'chocolates and sweets'),(208,'Gummy Worms',342,1430,0.2,6.9,77,0,46,3,0,0,'chocolates and sweets'),(209,'M&Ms',491,2055,23.9,5.5,66.5,2.5,51,160,51,1.5,'chocolates and sweets'),(210,'Reese\'s Pieces',497,2079,23.1,8.8,64.1,2.2,321,0,38,2.2,'chocolates and sweets'),(211,'Hershey\'s Milk Chocolate Bar',546,2284,31.3,7.1,59.1,1.7,56,179,71,2.2,'chocolates and sweets'),(212,'Hershey\'s Cookies \'n\' Creme',507,2120,26.2,5.6,67.6,0.7,250,111,250,1.8,'chocolates and sweets'),(213,'Ferrero Rocher',600,2510,42,8.2,44.4,3.3,50,330,130,2.2,'chocolates and sweets'),(214,'Lindt Lindor Milk Chocolate Truffles',550,2298,34,5,52,1,48,220,0,1.8,'chocolates and sweets'),(215,'Mars',459,1918,16.5,4.4,72.5,1.3,186,203,0,0.7,'chocolates and sweets'),(216,'Milka Chocolate',534,2233,30,6,60,3,55,170,0,0,'chocolates and sweets'),(217,'Almond Joy',491,2055,26.5,4.7,60.2,2.2,91,330,188,1.8,'chocolates and sweets'),(218,'Baby Ruth',459,1918,20.9,4.9,64.1,1.8,163,249,0,0.7,'chocolates and sweets'),(219,'Lentils',116,486,0.4,9,20.1,7.9,2,369,56,3.3,'legumes'),(220,'Chickpeas',364,1523,6,19,61,17,24,875,105,6.2,'legumes'),(221,'Kidney beans',127,533,0.5,9,22.8,6.4,2,406,403,2.6,'legumes'),(222,'Black beans',132,553,0.9,9.9,23.7,8.7,1,355,1139,1.8,'legumes'),(223,'Navy beans',127,533,0.5,9,22.8,6.4,2,406,403,2.6,'legumes'),(224,'Pinto beans',143,598,0.9,9,26,15,1,416,475,2.2,'legumes'),(225,'Mung beans',347,1452,1.2,23.8,63.4,16.3,6,124,195,5.7,'legumes'),(226,'Adzuki beans',128,536,0.2,7.5,23.7,7.3,4,348,122,4,'legumes'),(227,'Lima beans',115,482,0.4,8,20.5,6.8,5,218,240,1.8,'legumes'),(228,'Fava beans',88,369,0.6,6.3,16.4,4,7,106,186,2.8,'legumes'),(229,'Soybeans',147,615,6.8,12,9.9,6,2,515,277,6.2,'legumes'),(230,'Lentil sprouts',106,444,0.4,8,20.1,3.3,2,329,69,3.3,'legumes'),(231,'Chickpea sprouts',122,511,2.1,7.1,23.2,4,24,296,115,2.2,'legumes'),(232,'Peas',81,339,0.4,5,14.5,5.5,5,244,31,1.5,'legumes'),(233,'Green beans',31,130,0.2,1.8,7.1,3.4,6,177,209,1,'legumes');
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
INSERT INTO `ListOfFood` VALUES (26,1),(46,1),(30,4),(1,5),(1,7),(16,7),(28,7),(47,7),(2,8),(9,8),(51,8),(1,9),(8,9),(49,9),(2,10),(57,10),(6,11),(10,11),(14,11),(54,12),(14,13),(57,13),(1,14),(36,14),(16,15),(23,16),(38,16),(49,16),(41,17),(51,18),(8,19),(3,20),(41,20),(3,21),(23,22),(49,22),(51,22),(9,23),(28,23),(36,23),(2,24),(24,24),(42,24),(49,24),(18,25),(23,27),(13,28),(29,28),(38,28),(52,28),(49,30),(17,31),(20,31),(23,31),(30,31),(34,32),(12,33),(31,33),(51,33),(44,34),(46,34),(1,35),(50,35),(25,36),(29,36),(35,36),(26,37),(45,37),(21,38),(23,38),(3,39),(45,39),(12,41),(12,42),(47,43),(10,44),(18,44),(26,45),(11,46),(20,46),(24,46),(56,46),(34,47),(3,48),(15,49),(26,49),(50,49),(23,50),(7,51),(7,52),(9,53),(50,53),(39,54),(60,54),(23,55),(29,55),(39,55),(19,57),(48,57),(6,59),(5,60),(50,60),(1,61),(26,61),(34,61),(43,61),(11,62),(50,62),(51,62),(34,63),(37,64),(43,64),(2,65),(21,65),(23,65),(44,66),(1,67),(22,67),(23,67),(37,67),(23,68),(4,69),(9,69),(34,69),(48,69),(22,72),(32,72),(51,72),(58,72),(15,73),(45,73),(10,74),(23,74),(60,74),(31,75),(49,75),(29,76),(8,77),(15,77),(23,77),(58,77),(8,79),(26,79),(37,79),(5,80),(21,80),(23,80),(36,80),(35,83),(19,84),(22,84),(29,84),(37,85),(23,86),(60,86),(22,87),(25,87),(13,88),(31,88),(47,88),(19,89),(48,89),(9,91),(40,91),(50,91),(46,92),(1,93),(20,93),(23,93),(3,94),(19,94),(23,94),(3,95),(38,95),(23,97),(26,97),(38,97),(56,97),(2,100),(23,100),(13,102),(21,102),(50,102),(43,103),(4,104),(28,104),(40,104),(23,105),(28,105),(33,105),(38,105),(50,105),(55,105),(53,106),(7,107),(19,107),(23,107),(43,107),(10,108),(37,108),(16,109),(17,109),(22,109),(23,109),(36,109),(22,111),(36,111),(57,114),(23,115),(24,115),(26,116),(23,117),(30,117),(34,118),(7,119),(14,119),(15,119),(7,121),(54,121),(27,123),(2,124),(10,124),(18,124),(23,124),(23,125),(6,126),(33,126),(56,126),(39,127),(8,128),(15,129),(51,129),(17,130),(28,130),(10,131),(48,131),(10,132),(40,132),(46,132),(51,132),(54,132),(59,137),(23,139),(23,140),(11,141),(28,141),(39,142),(47,142),(48,142),(49,142),(52,142),(23,143),(26,143),(28,143),(1,144),(4,144),(14,144),(23,145),(19,146),(23,146),(53,146),(25,148),(23,149),(44,149),(13,152),(10,153),(23,153),(52,153),(4,154),(35,154),(49,155),(23,156),(35,157),(12,160),(17,160),(31,160),(23,161),(35,161),(5,163),(46,163),(49,163),(54,163),(58,163),(22,165),(33,165),(60,167),(18,168),(27,168),(51,168),(59,170),(23,171),(11,172),(8,173),(33,173),(52,173),(28,174),(41,174),(32,177),(54,177),(23,178),(25,178),(27,178),(48,178),(56,178),(4,179),(12,179),(53,179),(3,180),(14,180),(4,181),(23,181),(25,182),(3,183),(37,184),(46,184),(50,186),(45,187),(2,189),(3,189),(23,189),(55,189),(28,190),(51,190),(8,191),(23,191),(30,191),(52,191),(23,192),(46,192),(49,192),(23,193),(39,194),(14,195),(40,195),(57,195),(23,196),(42,196),(44,197),(45,197),(29,198),(30,198),(50,198),(55,198),(7,199),(20,199),(1,200),(7,200),(16,200),(47,200),(53,200),(23,201),(17,202),(59,202),(60,202),(22,203),(10,204),(32,204),(50,204),(54,204),(3,205),(23,205),(15,206),(19,206),(25,206),(3,207),(44,207),(47,207),(60,207),(20,209),(52,210),(44,211),(47,211),(60,211),(11,212),(14,212),(35,212),(42,212),(7,214),(28,215),(38,215),(7,216),(20,216),(29,216),(56,216),(7,218),(26,218),(46,219),(15,220),(42,221),(50,221),(17,222),(26,222),(56,222),(4,223),(12,223),(13,223),(27,223),(35,223),(56,223),(34,224),(51,224),(17,225),(33,225),(46,225),(16,227),(22,231),(23,231),(35,231),(42,231),(45,231),(55,231),(4,232),(10,232),(53,232),(60,232),(15,233);
/*!40000 ALTER TABLE `ListOfFood` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Nutritionist`
--

DROP TABLE IF EXISTS `Nutritionist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Nutritionist` (
  `idNutritionist` int NOT NULL AUTO_INCREMENT,
  `FullName` varchar(200) DEFAULT NULL,
  `Speciality` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`idNutritionist`),
  KEY `Full_Name` (`FullName`)
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
  `WeightKG` double NOT NULL,
  `Height` double NOT NULL,
  `Telephone` int DEFAULT NULL,
  `Intolerances` tinyint DEFAULT NULL,
  `Doctor` int NOT NULL,
  `CurrentDiet` int NOT NULL,
  PRIMARY KEY (`DNI`),
  KEY `fk_Patient_Nutricionist1_idx` (`Doctor`),
  KEY `fk_Patient_Diet1_idx` (`CurrentDiet`),
  KEY `Name` (`Name`),
  CONSTRAINT `fk_Patient_Diet1` FOREIGN KEY (`CurrentDiet`) REFERENCES `Diet` (`idDiet`),
  CONSTRAINT `fk_Patient_Nutricionist1` FOREIGN KEY (`Doctor`) REFERENCES `Nutritionist` (`idNutritionist`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Patient`
--

LOCK TABLES `Patient` WRITE;
/*!40000 ALTER TABLE `Patient` DISABLE KEYS */;
INSERT INTO `Patient` VALUES ('02358124Z','Carmen','Ruiz Soto','1952-08-08','descenso',89.71,1.86,608765432,0,3,44),('05622134W','Pilar','Ortega Jimenez','1959-12-21','ascenso',161.1,1.91,650123456,0,7,27),('09798203L','Manuel','Lopez Aguilar','1994-08-13','descenso',51.89,1.61,691234567,0,7,27),('11278952Q','Miguel','Gonzalez Ramos','1970-12-01','mantenimiento',96.67,1.81,614567890,0,6,36),('11933112X','Raul','Diaz Saez','2005-06-02','mantenimiento',65.29,1.98,655678901,1,5,48),('13268945G','Laura','Fernandez Castro','1987-01-09','descenso',72.34,1.69,607621093,1,4,21),('15606728K','Francisco','Hernandez Lopez','1970-11-09','descenso',65.4,1.62,658363392,0,2,32),('16895033S','Juan','Sanz Rodriguez','2001-03-23','mantenimiento',57.23,1.51,648901234,0,1,36),('17163483N','Eduardo','Perez Alonso','1968-06-15','ascenso',85.37,1.65,604556789,0,5,24),('17891224C','Carlos','Gomez Romero','1966-02-19','descenso',89.03,1.92,654287227,1,7,49),('18759113T','Ines','Castillo Romero','1987-06-24','ascenso',173.57,1.88,674567890,0,1,43),('22466137X','Ana','Moreno Lopez','1965-07-08','descenso',66.29,1.6,606784319,0,5,3),('22582895L','Pedro','Hernandez Ortiz','1976-09-15','descenso',63.63,1.55,611234567,0,1,2),('28432375Y','Elena','Gonzalez Perez','1965-11-27','descenso',72.49,1.74,684096383,0,6,11),('29366620W','Adrian','Diaz Alvarez','1994-05-15','ascenso',72.26,1.88,660176585,1,4,19),('30111234M','Luis','Martin Sanchez','1947-03-02','mantenimiento',62.43,1.65,642345678,0,2,10),('30179415M','Marta','Hernandez Rodriguez','1976-08-22','mantenimiento',67.58,1.57,616789045,0,7,49),('32399118L','Jose','Gonzalez Marin','1983-09-23','mantenimiento',58.01,1.99,630980754,0,2,20),('32849681T','Carlos','Gonzalez Ruiz','1985-11-20','descenso',78.6,1.76,605891432,1,3,17),('34773520L','Miguel','Perez Soto','1973-09-04','ascenso',89.65,1.83,609833210,0,2,50),('35281816G','Manuela','Castro Rivas','1992-12-27','ascenso',64.97,1.7,604322987,0,4,9),('35759399J','Antonio','Torres Gonzalez','1958-08-22','ascenso',77.85,1.75,647401279,0,5,12),('40418220T','Raul','Martin Rodriguez','1952-08-14','ascenso',183.47,1.69,647890123,0,4,43),('41553970P','Cristina','Garcia Molina','1989-01-27','ascenso',166.68,1.54,678654321,0,4,43),('41751802V','Ines','Lopez Garcia','1963-06-10','ascenso',70.2,1.74,676064374,0,1,34),('42013944G','Manuel','Jimenez Ruiz','1975-06-18','descenso',85.36,1.93,655991066,0,3,36),('50311250Q','Maria','Perez Moreno','1986-10-27','descenso',66.29,1.63,610073736,0,4,6),('52173167Z','Carmen','Ruiz Ortega','1979-02-20','descenso',71.21,1.62,617564321,1,3,15),('53646962X','Laura','Castillo Leon','1952-12-03','descenso',113.57,1.78,623456789,0,5,6),('57070477D','Javier','Rodriguez Sanchez','1999-09-30','descenso',69.5,1.78,625098743,0,7,43),('57685331G','Julia','Vega Diaz','1989-11-05','descenso',63.6,1.56,692345678,1,5,34),('65092950E','David','Lopez Saez','1978-06-28','mantenimiento',81.1,1.78,625187364,0,5,39),('67475255F','Carmen','Sanchez Garcia','1976-09-26','mantenimiento',73.09,1.67,600124619,1,4,48),('67704860L','Isabel','Garcia Romero','1993-03-05','ascenso',57.89,1.61,602198675,0,1,2),('67716439N','Sara','Martinez Ortiz','1954-07-28','ascenso',58.66,1.63,628040245,0,2,44),('68220472P','Francisco','Gomez Fernandez','1952-09-01','mantenimiento',75.11,1.8,605432109,1,3,36),('75294058F','Maria','Garcia Hernandez','1956-12-06','mantenimiento',62,1.57,616589320,0,6,18),('77242812H','Raul','Gomez Torres','1985-07-16','descenso',65.15,1.66,630987654,0,3,4),('78858624G','Sofia','Ramos Ortiz','1984-02-23','ascenso',108.09,1.48,679876543,0,7,13),('79008423B','Antonio','Lopez Fernandez','1986-05-07','descenso',96.02,1.83,613456789,1,1,12),('79192913X','Isabel','Garcia Moreno','1948-04-23','ascenso',80.82,1.87,680708871,1,6,4),('79424390S','Pedro','Gonzalez Castro','1971-11-12','mantenimiento',94.54,1.83,623575841,1,6,9),('82027467B','Ana','Rodriguez Ramirez','1955-03-20','mantenimiento',67.52,1.76,624961172,1,7,13),('82749166S','Sofia','Perez Garcia','1980-04-13','ascenso',62.19,1.63,619086432,0,1,6),('83211085L','Marta','Diaz Lopez','1955-06-10','ascenso',81.78,1.47,684567890,0,3,8),('83833757G','Javier','Fernandez Martinez','1979-05-01','mantenimiento',87.56,1.78,655889463,0,2,25),('88182185T','Silvia','Perez Rodriguez','1972-06-01','descenso',60.91,1.91,622478309,0,3,9),('90527143D','Rafael','Garcia Sanchez','1953-11-03','mantenimiento',78.44,1.75,636221453,1,6,41),('92837275K','Pablo','Martinez Castro','1984-05-08','mantenimiento',65.84,1.7,650107691,1,1,22),('95392730N','Jose','Gonzalez Ortiz','1984-03-17','ascenso',82.05,1.74,605672318,1,2,29),('98972981H','Lucia','Garcia Sanchez','1981-12-09','ascenso',62.45,1.62,656983377,0,5,17);
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
INSERT INTO `TypeOfFood` VALUES ('cereals and bread','processed'),('chocolates and sweets','processed'),('dairy','animal'),('fish','animal'),('fruits','vegetal'),('legumes','vegetal'),('meat','animal'),('vegetables','vegetal');
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

-- Dump completed on 2023-03-24 10:42:26
