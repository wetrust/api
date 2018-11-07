CREATE DATABASE  IF NOT EXISTS `hugex` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `hugex`;
-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: hugex
-- ------------------------------------------------------
-- Server version	5.7.22

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
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `state_id` int(11) NOT NULL,
  `city_es` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `city_en` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`city_id`),
  UNIQUE KEY `city_id_UNIQUE` (`city_id`),
  KEY `fk_cities_states_id_idx` (`state_id`),
  CONSTRAINT `fk_cities_states_id` FOREIGN KEY (`state_id`) REFERENCES `states` (`state_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,1,'NC',NULL),(2,2,'NC',NULL),(3,3,'NC',NULL),(4,4,'NC',NULL),(5,5,'NC',NULL),(6,6,'NC',NULL),(7,7,'NC',NULL),(8,8,'NC',NULL),(9,9,'NC',NULL),(10,10,'NC',NULL),(11,11,'NC',NULL),(12,12,'NC',NULL),(13,13,'NC',NULL),(14,14,'NC',NULL),(15,15,'NC',NULL),(16,16,'NC',NULL),(17,17,'NC',NULL),(18,18,'NC',NULL),(19,19,'NC',NULL),(20,20,'NC',NULL),(21,21,'NC',NULL),(22,22,'NC',NULL),(23,23,'NC',NULL),(24,24,'NC',NULL),(25,25,'NC',NULL),(26,26,'NC',NULL),(27,27,'NC',NULL),(28,28,'NC',NULL),(29,29,'NC',NULL),(30,30,'NC',NULL),(31,31,'NC',NULL),(32,32,'NC',NULL),(33,33,'NC',NULL),(34,34,'NC',NULL),(35,35,'NC',NULL),(36,36,'NC',NULL),(37,37,'NC',NULL),(38,38,'NC',NULL),(39,39,'NC',NULL),(40,40,'NC',NULL),(41,41,'NC',NULL),(42,42,'NC',NULL),(43,43,'NC',NULL),(44,44,'NC',NULL),(45,45,'NC',NULL),(46,46,'Temuco',NULL),(47,46,'Lautaro',NULL),(48,46,'Pillalelbun',NULL),(49,47,'NC',NULL),(50,48,'NC',NULL),(51,49,'NC',NULL),(52,50,'NC',NULL),(53,51,'NC',NULL),(54,52,'NC',NULL),(55,53,'NC',NULL),(56,54,'NC',NULL),(57,55,'NC',NULL),(58,56,'NC',NULL),(59,57,'NC',NULL),(60,58,'NC',NULL),(61,59,'NC',NULL),(62,60,'NC',NULL),(63,61,'NC',NULL),(64,62,'NC',NULL),(65,63,'NC',NULL),(66,64,'NC',NULL),(67,65,'NC',NULL),(68,66,'NC',NULL),(69,67,'NC',NULL),(70,68,'NC',NULL),(71,69,'NC',NULL),(72,70,'NC',NULL),(73,71,'NC',NULL),(74,72,'NC',NULL),(75,73,'NC',NULL),(76,74,'NC',NULL),(77,75,'NC',NULL),(78,76,'NC',NULL),(79,77,'NC',NULL),(80,78,'NC',NULL),(81,79,'NC',NULL),(82,80,'NC',NULL),(83,81,'NC',NULL),(84,82,'NC',NULL),(85,83,'NC',NULL),(86,84,'NC',NULL),(87,85,'NC',NULL),(88,86,'NC',NULL),(89,87,'NC',NULL),(90,88,'NC',NULL),(91,89,'NC',NULL),(92,90,'NC',NULL),(93,91,'NC',NULL),(94,92,'NC',NULL),(95,93,'NC',NULL),(96,94,'NC',NULL),(97,95,'NC',NULL),(98,96,'NC',NULL),(99,97,'NC',NULL),(100,98,'NC',NULL),(101,99,'NC',NULL),(102,100,'NC',NULL),(103,101,'NC',NULL),(104,102,'NC',NULL),(105,103,'NC',NULL),(106,104,'NC',NULL),(107,105,'NC',NULL),(108,106,'NC',NULL),(109,107,'NC',NULL),(110,108,'NC',NULL),(111,109,'NC',NULL),(112,110,'NC',NULL),(113,111,'NC',NULL),(114,112,'NC',NULL),(115,113,'NC',NULL),(116,114,'NC',NULL),(117,115,'NC',NULL),(118,116,'NC',NULL),(119,117,'NC',NULL),(120,118,'NC',NULL),(121,119,'NC',NULL),(122,120,'NC',NULL),(123,121,'NC',NULL),(124,122,'NC',NULL),(125,123,'NC',NULL),(126,124,'NC',NULL),(127,125,'NC',NULL),(128,126,'NC',NULL),(129,127,'NC',NULL),(130,128,'NC',NULL),(131,129,'NC',NULL),(132,130,'NC',NULL),(133,131,'NC',NULL),(134,132,'NC',NULL),(135,133,'NC',NULL),(136,134,'NC',NULL),(137,135,'NC',NULL),(138,136,'NC',NULL),(139,137,'NC',NULL),(140,138,'NC',NULL),(141,139,'NC',NULL),(142,140,'NC',NULL),(143,141,'NC',NULL),(144,142,'NC',NULL),(145,143,'NC',NULL),(146,144,'NC',NULL),(147,145,'NC',NULL),(148,146,'NC',NULL),(149,147,'NC',NULL),(150,148,'NC',NULL),(151,149,'NC',NULL),(152,150,'NC',NULL),(153,151,'NC',NULL),(154,152,'NC',NULL),(155,153,'NC',NULL),(156,154,'NC',NULL),(157,155,'NC',NULL),(158,156,'NC',NULL),(159,157,'NC',NULL),(160,158,'NC',NULL),(161,159,'NC',NULL),(162,160,'NC',NULL),(163,161,'NC',NULL),(164,162,'NC',NULL),(165,163,'NC',NULL),(166,164,'NC',NULL),(167,165,'NC',NULL),(168,166,'NC',NULL),(169,167,'NC',NULL),(170,168,'NC',NULL),(171,169,'NC',NULL),(172,170,'NC',NULL),(173,171,'NC',NULL),(174,172,'NC',NULL),(175,173,'NC',NULL),(176,174,'NC',NULL),(177,175,'NC',NULL),(178,176,'NC',NULL),(179,177,'NC',NULL),(180,178,'NC',NULL),(181,179,'NC',NULL),(182,180,'NC',NULL),(183,181,'NC',NULL),(184,182,'NC',NULL),(185,183,'NC',NULL),(186,184,'NC',NULL),(187,185,'NC',NULL),(188,186,'NC',NULL),(189,187,'NC',NULL),(190,188,'NC',NULL),(191,189,'NC',NULL),(192,190,'NC',NULL),(193,191,'NC',NULL),(194,192,'NC',NULL),(195,193,'NC',NULL),(196,195,'NC',NULL),(197,196,'NC',NULL),(198,197,'NC',NULL),(199,198,'NC',NULL),(200,199,'NC',NULL),(201,200,'NC',NULL),(202,201,'NC',NULL),(203,202,'NC',NULL),(204,203,'NC',NULL);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_es` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `country_en` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`country_id`),
  UNIQUE KEY `country_id_UNIQUE` (`country_id`),
  UNIQUE KEY `country_es_UNIQUE` (`country_es`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Afganistán',''),(2,'Albania',''),(3,'Alemania',''),(4,'Andorra',''),(5,'Angola',''),(6,'Antigua y Barbuda',''),(7,'Arabia Saudita',''),(8,'Argelia',''),(9,'Argentina',''),(10,'Armenia',''),(11,'Australia',''),(12,'Austria',''),(13,'Azerbaiyán',''),(14,'Bahamas',''),(15,'Bangladés',''),(16,'Barbados',''),(17,'Baréin',''),(18,'Bélgica',''),(19,'Belice',''),(20,'Benín',''),(21,'Bielorrusia',''),(22,'Birmania',''),(23,'Bolivia',''),(24,'Bosnia y Herzegovina',''),(25,'Botsuana',''),(26,'Brasil',''),(27,'Brunéi',''),(28,'Bulgaria',''),(29,'Burkina Faso',''),(30,'Burundi',''),(31,'Bután',''),(32,'Cabo Verde',''),(33,'Camboya',''),(34,'Camerún',''),(35,'Canadá',''),(36,'Catar',''),(37,'Chad',''),(38,'Chile',''),(39,'China',''),(40,'Chipre',''),(41,'Ciudad del Vaticano',''),(42,'Colombia',''),(43,'Comoras',''),(44,'Corea del Norte',''),(45,'Corea del Sur',''),(46,'Costa de Marfil',''),(47,'Costa Rica',''),(48,'Croacia',''),(49,'Cuba',''),(50,'Dinamarca',''),(51,'Dominica',''),(52,'Ecuador',''),(53,'Egipto',''),(54,'El Salvador',''),(55,'Emiratos Árabes Unidos',''),(56,'Eritrea',''),(57,'Eslovaquia',''),(58,'Eslovenia',''),(59,'España',''),(60,'Estados Unidos',''),(61,'Estonia',''),(62,'Etiopía',''),(63,'Filipinas',''),(64,'Finlandia',''),(65,'Fiyi',''),(66,'Francia',''),(67,'Gabón',''),(68,'Gambia',''),(69,'Georgia',''),(70,'Ghana',''),(71,'Granada',''),(72,'Grecia',''),(73,'Guatemala',''),(74,'Guyana',''),(75,'Guinea',''),(76,'Guinea-Bisáu',''),(77,'Guinea Ecuatorial',''),(78,'Haití',''),(79,'Honduras',''),(80,'Hungría',''),(81,'India',''),(82,'Indonesia',''),(83,'Irak',''),(84,'Irán',''),(85,'Irlanda',''),(86,'Islandia',''),(87,'Islas Marshall',''),(88,'Islas Salomón',''),(89,'Israel',''),(90,'Italia',''),(91,'Jamaica',''),(92,'Japón',''),(93,'Jordania',''),(94,'Kazajistán',''),(95,'Kenia',''),(96,'Kirguistán',''),(97,'Kiribati',''),(98,'Kuwait',''),(99,'Laos',''),(100,'Lesoto',''),(101,'Letonia',''),(102,'Líbano',''),(103,'Liberia',''),(104,'Libia',''),(105,'Liechtenstein',''),(106,'Lituania',''),(107,'Luxemburgo',''),(108,'Madagascar',''),(109,'Malasia',''),(110,'Malaui',''),(111,'Maldivas',''),(112,'Malí',''),(113,'Malta',''),(114,'Marruecos',''),(115,'Mauricio',''),(116,'Mauritania',''),(117,'México',''),(118,'Micronesia',''),(119,'Moldavia',''),(120,'Mónaco',''),(121,'Mongolia',''),(122,'Montenegro',''),(123,'Mozambique',''),(124,'Namibia',''),(125,'Nauru',''),(126,'Nepal',''),(127,'Nicaragua',''),(128,'Níger',''),(129,'Nigeria',''),(130,'Noruega',''),(131,'Nueva Zelanda',''),(132,'Omán',''),(133,'Países Bajos',''),(134,'Pakistán',''),(135,'Palaos',''),(136,'Panamá',''),(137,'Papúa Nueva Guinea',''),(138,'Paraguay',''),(139,'Perú',''),(140,'Polonia',''),(141,'Portugal',''),(142,'Reino Unido',''),(143,'República Centroafricana',''),(144,'República Checa',''),(145,'Macedonia',''),(146,'República del Congo',''),(147,'República Democrática del Congo',''),(148,'República Dominicana',''),(149,'República Sudafricana',''),(150,'Ruanda',''),(151,'Rumanía',''),(152,'Rusia',''),(153,'Samoa',''),(154,'San Cristóbal y Nieves',''),(155,'San Marino',''),(156,'San Vicente y las Granadinas',''),(157,'Santa Lucía',''),(158,'Santo Tomé y Príncipe',''),(159,'Senegal',''),(160,'Serbia',''),(161,'Seychelles',''),(162,'Sierra Leona',''),(163,'Singapur',''),(164,'Siria',''),(165,'Somalia',''),(166,'Sri Lanka',''),(167,'Suazilandia',''),(168,'Sudán',''),(169,'Sudán del Sur',''),(170,'Suecia',''),(171,'Suiza',''),(172,'Surinam',''),(173,'Tailandia',''),(174,'Tanzania',''),(175,'Tayikistán',''),(176,'Timor Oriental',''),(177,'Togo',''),(178,'Tonga',''),(179,'Trinidad y Tobago',''),(180,'Túnez',''),(181,'Turkmenistán',''),(182,'Turquía',''),(183,'Tuvalu',''),(184,'Ucrania',''),(185,'Uganda',''),(186,'Uruguay',''),(187,'Uzbekistán',''),(188,'Vanuatu',''),(189,'Venezuela',''),(190,'Vietnam',''),(191,'Yemen',''),(192,'Yibuti',''),(193,'Zambia',''),(194,'Zimbabue','');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `health`
--

DROP TABLE IF EXISTS `health`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `health` (
  `health_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `health_es` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `health_en` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`health_id`),
  UNIQUE KEY `health_id_UNIQUE` (`health_id`),
  KEY `fk_health_country_id_idx` (`country_id`),
  CONSTRAINT `fk_health_country_id` FOREIGN KEY (`country_id`) REFERENCES `countries` (`country_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `health`
--

LOCK TABLES `health` WRITE;
/*!40000 ALTER TABLE `health` DISABLE KEYS */;
INSERT INTO `health` VALUES (1,1,'NC',NULL),(2,2,'NC',NULL),(3,3,'NC',NULL),(4,4,'NC',NULL),(5,5,'NC',NULL),(6,6,'NC',NULL),(7,7,'NC',NULL),(8,8,'NC',NULL),(9,9,'NC',NULL),(10,10,'NC',NULL),(11,11,'NC',NULL),(12,12,'NC',NULL),(13,13,'NC',NULL),(14,14,'NC',NULL),(15,15,'NC',NULL),(16,16,'NC',NULL),(17,17,'NC',NULL),(18,18,'NC',NULL),(19,19,'NC',NULL),(20,20,'NC',NULL),(21,21,'NC',NULL),(22,22,'NC',NULL),(23,23,'NC',NULL),(24,24,'NC',NULL),(25,25,'NC',NULL),(26,26,'NC',NULL),(27,27,'NC',NULL),(28,28,'NC',NULL),(29,29,'NC',NULL),(30,30,'NC',NULL),(31,31,'NC',NULL),(32,32,'NC',NULL),(33,33,'NC',NULL),(34,34,'NC',NULL),(35,35,'NC',NULL),(36,36,'NC',NULL),(37,37,'NC',NULL),(38,38,'Sin previsión',NULL),(39,38,'FONASA',NULL),(40,38,'ISAPRE',NULL),(41,38,'DIPRECA',NULL),(42,38,'CAPREDENA',NULL),(43,39,'NC',NULL),(44,40,'NC',NULL),(45,41,'NC',NULL),(46,42,'NC',NULL),(47,43,'NC',NULL),(48,44,'NC',NULL),(49,45,'NC',NULL),(50,46,'NC',NULL),(51,47,'NC',NULL),(52,48,'NC',NULL),(53,49,'NC',NULL),(54,50,'NC',NULL),(55,51,'NC',NULL),(56,52,'NC',NULL),(57,53,'NC',NULL),(58,54,'NC',NULL),(59,55,'NC',NULL),(60,56,'NC',NULL),(61,57,'NC',NULL),(62,58,'NC',NULL),(63,59,'NC',NULL),(64,60,'NC',NULL),(65,61,'NC',NULL),(66,62,'NC',NULL),(67,63,'NC',NULL),(68,64,'NC',NULL),(69,65,'NC',NULL),(70,66,'NC',NULL),(71,67,'NC',NULL),(72,68,'NC',NULL),(73,69,'NC',NULL),(74,70,'NC',NULL),(75,71,'NC',NULL),(76,72,'NC',NULL),(77,73,'NC',NULL),(78,74,'NC',NULL),(79,75,'NC',NULL),(80,76,'NC',NULL),(81,77,'NC',NULL),(82,78,'NC',NULL),(83,79,'NC',NULL),(84,80,'NC',NULL),(85,81,'NC',NULL),(86,82,'NC',NULL),(87,83,'NC',NULL),(88,84,'NC',NULL),(89,85,'NC',NULL),(90,86,'NC',NULL),(91,87,'NC',NULL),(92,88,'NC',NULL),(93,89,'NC',NULL),(94,90,'NC',NULL),(95,91,'NC',NULL),(96,92,'NC',NULL),(97,93,'NC',NULL),(98,94,'NC',NULL),(99,95,'NC',NULL),(100,96,'NC',NULL),(101,97,'NC',NULL),(102,98,'NC',NULL),(103,99,'NC',NULL),(104,100,'NC',NULL),(105,101,'NC',NULL),(106,102,'NC',NULL),(107,103,'NC',NULL),(108,104,'NC',NULL),(109,105,'NC',NULL),(110,106,'NC',NULL),(111,107,'NC',NULL),(112,108,'NC',NULL),(113,109,'NC',NULL),(114,110,'NC',NULL),(115,111,'NC',NULL),(116,112,'NC',NULL),(117,113,'NC',NULL),(118,114,'NC',NULL),(119,115,'NC',NULL),(120,116,'NC',NULL),(121,117,'NC',NULL),(122,118,'NC',NULL),(123,119,'NC',NULL),(124,120,'NC',NULL),(125,121,'NC',NULL),(126,122,'NC',NULL),(127,123,'NC',NULL),(128,124,'NC',NULL),(129,125,'NC',NULL),(130,126,'NC',NULL),(131,127,'NC',NULL),(132,128,'NC',NULL),(133,129,'NC',NULL),(134,130,'NC',NULL),(135,131,'NC',NULL),(136,132,'NC',NULL),(137,133,'NC',NULL),(138,134,'NC',NULL),(139,135,'NC',NULL),(140,136,'NC',NULL),(141,137,'NC',NULL),(142,138,'NC',NULL),(143,139,'NC',NULL),(144,140,'NC',NULL),(145,141,'NC',NULL),(146,142,'NC',NULL),(147,143,'NC',NULL),(148,144,'NC',NULL),(149,145,'NC',NULL),(150,146,'NC',NULL),(151,147,'NC',NULL),(152,148,'NC',NULL),(153,149,'NC',NULL),(154,150,'NC',NULL),(155,151,'NC',NULL),(156,152,'NC',NULL),(157,153,'NC',NULL),(158,154,'NC',NULL),(159,155,'NC',NULL),(160,156,'NC',NULL),(161,157,'NC',NULL),(162,158,'NC',NULL),(163,159,'NC',NULL),(164,160,'NC',NULL),(165,161,'NC',NULL),(166,162,'NC',NULL),(167,163,'NC',NULL),(168,164,'NC',NULL),(169,165,'NC',NULL),(170,166,'NC',NULL),(171,167,'NC',NULL),(172,168,'NC',NULL),(173,169,'NC',NULL),(174,170,'NC',NULL),(175,171,'NC',NULL),(176,172,'NC',NULL),(177,173,'NC',NULL),(178,174,'NC',NULL),(179,175,'NC',NULL),(180,176,'NC',NULL),(181,177,'NC',NULL),(182,178,'NC',NULL),(183,179,'NC',NULL),(184,180,'NC',NULL),(185,181,'NC',NULL),(186,182,'NC',NULL),(187,183,'NC',NULL),(188,184,'NC',NULL),(189,185,'NC',NULL),(190,186,'NC',NULL),(191,187,'NC',NULL),(192,188,'NC',NULL),(193,189,'NC',NULL),(194,190,'NC',NULL),(195,191,'NC',NULL),(196,192,'NC',NULL),(197,193,'NC',NULL),(198,194,'NC',NULL);
/*!40000 ALTER TABLE `health` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `health_category`
--

DROP TABLE IF EXISTS `health_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `health_category` (
  `health_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `health_id` int(11) NOT NULL,
  `health_category_es` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `health_category_en` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`health_category_id`),
  UNIQUE KEY `health_category_id_UNIQUE` (`health_category_id`),
  KEY `fk_health_category_health_id_idx` (`health_id`),
  CONSTRAINT `fk_health_category_health_id` FOREIGN KEY (`health_id`) REFERENCES `health` (`health_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `health_category`
--

LOCK TABLES `health_category` WRITE;
/*!40000 ALTER TABLE `health_category` DISABLE KEYS */;
INSERT INTO `health_category` VALUES (1,1,'NC',NULL),(2,2,'NC',NULL),(3,3,'NC',NULL),(4,4,'NC',NULL),(5,5,'NC',NULL),(6,6,'NC',NULL),(7,7,'NC',NULL),(8,8,'NC',NULL),(9,9,'NC',NULL),(10,10,'NC',NULL),(11,11,'NC',NULL),(12,12,'NC',NULL),(13,13,'NC',NULL),(14,14,'NC',NULL),(15,15,'NC',NULL),(16,16,'NC',NULL),(17,17,'NC',NULL),(18,18,'NC',NULL),(19,19,'NC',NULL),(20,20,'NC',NULL),(21,21,'NC',NULL),(22,22,'NC',NULL),(23,23,'NC',NULL),(24,24,'NC',NULL),(25,25,'NC',NULL),(26,26,'NC',NULL),(27,27,'NC',NULL),(28,28,'NC',NULL),(29,29,'NC',NULL),(30,30,'NC',NULL),(31,31,'NC',NULL),(32,32,'NC',NULL),(33,33,'NC',NULL),(34,34,'NC',NULL),(35,35,'NC',NULL),(36,36,'NC',NULL),(37,37,'NC',NULL),(38,38,'NC',NULL),(39,39,'A',NULL),(40,39,'B',NULL),(41,39,'C',NULL),(42,39,'D',NULL),(43,40,'Banmédica',NULL),(44,40,'Chuquicamata',NULL),(45,40,'Colmena Golden Cross',NULL),(46,40,'Consalud',NULL),(47,40,'Cruz Blanca',NULL),(48,40,'Cruz del Norte',NULL),(49,40,'Nueva Masvida',NULL),(50,40,'Fundación',NULL),(51,40,'Fusat',NULL),(52,40,'Río Blanco',NULL),(53,40,'San Lorenzo',NULL),(54,40,'Vida Tres',NULL),(55,41,'NC',NULL),(56,42,'NC',NULL),(57,43,'NC',NULL),(58,44,'NC',NULL),(59,45,'NC',NULL),(60,46,'NC',NULL),(61,47,'NC',NULL),(62,48,'NC',NULL),(63,49,'NC',NULL),(64,50,'NC',NULL),(65,51,'NC',NULL),(66,52,'NC',NULL),(67,53,'NC',NULL),(68,54,'NC',NULL),(69,55,'NC',NULL),(70,56,'NC',NULL),(71,57,'NC',NULL),(72,58,'NC',NULL),(73,59,'NC',NULL),(74,60,'NC',NULL),(75,61,'NC',NULL),(76,62,'NC',NULL),(77,63,'NC',NULL),(78,64,'NC',NULL),(79,65,'NC',NULL),(80,66,'NC',NULL),(81,67,'NC',NULL),(82,68,'NC',NULL),(83,69,'NC',NULL),(84,70,'NC',NULL),(85,71,'NC',NULL),(86,72,'NC',NULL),(87,73,'NC',NULL),(88,74,'NC',NULL),(89,75,'NC',NULL),(90,76,'NC',NULL),(91,77,'NC',NULL),(92,78,'NC',NULL),(93,79,'NC',NULL),(94,80,'NC',NULL),(95,81,'NC',NULL),(96,82,'NC',NULL),(97,83,'NC',NULL),(98,84,'NC',NULL),(99,85,'NC',NULL),(100,86,'NC',NULL),(101,87,'NC',NULL),(102,88,'NC',NULL),(103,89,'NC',NULL),(104,90,'NC',NULL),(105,91,'NC',NULL),(106,92,'NC',NULL),(107,93,'NC',NULL),(108,94,'NC',NULL),(109,95,'NC',NULL),(110,96,'NC',NULL),(111,97,'NC',NULL),(112,98,'NC',NULL),(113,99,'NC',NULL),(114,100,'NC',NULL),(115,101,'NC',NULL),(116,102,'NC',NULL),(117,103,'NC',NULL),(118,104,'NC',NULL),(119,105,'NC',NULL),(120,106,'NC',NULL),(121,107,'NC',NULL),(122,108,'NC',NULL),(123,109,'NC',NULL),(124,110,'NC',NULL),(125,111,'NC',NULL),(126,112,'NC',NULL),(127,113,'NC',NULL),(128,114,'NC',NULL),(129,115,'NC',NULL),(130,116,'NC',NULL),(131,117,'NC',NULL),(132,118,'NC',NULL),(133,119,'NC',NULL),(134,120,'NC',NULL),(135,121,'NC',NULL),(136,122,'NC',NULL),(137,123,'NC',NULL),(138,124,'NC',NULL),(139,125,'NC',NULL),(140,126,'NC',NULL),(141,127,'NC',NULL),(142,128,'NC',NULL),(143,129,'NC',NULL),(144,130,'NC',NULL),(145,131,'NC',NULL),(146,132,'NC',NULL),(147,133,'NC',NULL),(148,134,'NC',NULL),(149,135,'NC',NULL),(150,136,'NC',NULL),(151,137,'NC',NULL),(152,138,'NC',NULL),(153,139,'NC',NULL),(154,140,'NC',NULL),(155,141,'NC',NULL),(156,142,'NC',NULL),(157,143,'NC',NULL),(158,144,'NC',NULL),(159,145,'NC',NULL),(160,146,'NC',NULL),(161,147,'NC',NULL),(162,148,'NC',NULL),(163,149,'NC',NULL),(164,150,'NC',NULL),(165,151,'NC',NULL),(166,152,'NC',NULL),(167,153,'NC',NULL),(168,154,'NC',NULL),(169,155,'NC',NULL),(170,156,'NC',NULL),(171,157,'NC',NULL),(172,158,'NC',NULL),(173,159,'NC',NULL),(174,160,'NC',NULL),(175,161,'NC',NULL),(176,162,'NC',NULL),(177,163,'NC',NULL),(178,164,'NC',NULL),(179,165,'NC',NULL),(180,166,'NC',NULL),(181,167,'NC',NULL),(182,168,'NC',NULL),(183,169,'NC',NULL),(184,170,'NC',NULL),(185,171,'NC',NULL),(186,172,'NC',NULL),(187,173,'NC',NULL),(188,174,'NC',NULL),(189,175,'NC',NULL),(190,176,'NC',NULL),(191,177,'NC',NULL),(192,178,'NC',NULL),(193,179,'NC',NULL),(194,180,'NC',NULL),(195,181,'NC',NULL),(196,182,'NC',NULL),(197,183,'NC',NULL),(198,184,'NC',NULL),(199,185,'NC',NULL),(200,186,'NC',NULL),(201,187,'NC',NULL),(202,188,'NC',NULL),(203,189,'NC',NULL),(204,190,'NC',NULL),(205,191,'NC',NULL),(206,192,'NC',NULL),(207,193,'NC',NULL),(208,194,'NC',NULL),(209,195,'NC',NULL),(210,196,'NC',NULL),(211,197,'NC',NULL),(212,198,'NC',NULL);
/*!40000 ALTER TABLE `health_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peoples`
--

DROP TABLE IF EXISTS `peoples`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peoples` (
  `people_id` int(11) NOT NULL AUTO_INCREMENT,
  `people_passport` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `people_name` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `people_lastname` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `people_tel` int(11) DEFAULT NULL,
  `people_email` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `people_country` int(11) DEFAULT NULL,
  `people_state` int(11) DEFAULT NULL,
  `people_city` int(11) DEFAULT NULL,
  `people_health` int(11) DEFAULT NULL,
  `people_health_category` int(11) DEFAULT NULL,
  `people_login` int(1) NOT NULL DEFAULT '0',
  `people_hash` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `people_register` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`people_id`),
  UNIQUE KEY `people_id_UNIQUE` (`people_id`),
  UNIQUE KEY `people_passport_UNIQUE` (`people_passport`),
  KEY `fk_peoples_country_id_idx` (`people_country`),
  KEY `fk_peoples_state_id_idx` (`people_state`),
  KEY `fk_peoples_city_id_idx` (`people_city`),
  KEY `fk_peoples_health_id_idx` (`people_health`),
  KEY `fk_peoples_health_category_id_idx` (`people_health_category`),
  CONSTRAINT `fk_peoples_city_id` FOREIGN KEY (`people_city`) REFERENCES `cities` (`city_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_peoples_country_id` FOREIGN KEY (`people_country`) REFERENCES `countries` (`country_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_peoples_health_category_id` FOREIGN KEY (`people_health_category`) REFERENCES `health_category` (`health_category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_peoples_health_id` FOREIGN KEY (`people_health`) REFERENCES `health` (`health_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_peoples_state_id` FOREIGN KEY (`people_state`) REFERENCES `states` (`state_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peoples`
--

LOCK TABLES `peoples` WRITE;
/*!40000 ALTER TABLE `peoples` DISABLE KEYS */;
/*!40000 ALTER TABLE `peoples` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `state_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `state_es` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `state_en` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`state_id`),
  UNIQUE KEY `state_id_UNIQUE` (`state_id`),
  KEY `fk_states_contries_id_idx` (`country_id`),
  CONSTRAINT `fk_states_contries_id` FOREIGN KEY (`country_id`) REFERENCES `countries` (`country_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,1,'NC',NULL),(2,2,'NC',NULL),(3,3,'NC',NULL),(4,4,'NC',NULL),(5,5,'NC',NULL),(6,6,'NC',NULL),(7,7,'NC',NULL),(8,8,'NC',NULL),(9,9,'NC',NULL),(10,10,'NC',NULL),(11,11,'NC',NULL),(12,12,'NC',NULL),(13,13,'NC',NULL),(14,14,'NC',NULL),(15,15,'NC',NULL),(16,16,'NC',NULL),(17,17,'NC',NULL),(18,18,'NC',NULL),(19,19,'NC',NULL),(20,20,'NC',NULL),(21,21,'NC',NULL),(22,22,'NC',NULL),(23,23,'NC',NULL),(24,24,'NC',NULL),(25,25,'NC',NULL),(26,26,'NC',NULL),(27,27,'NC',NULL),(28,28,'NC',NULL),(29,29,'NC',NULL),(30,30,'NC',NULL),(31,31,'NC',NULL),(32,32,'NC',NULL),(33,33,'NC',NULL),(34,34,'NC',NULL),(35,35,'NC',NULL),(36,36,'NC',NULL),(37,37,'NC',NULL),(38,38,'Tarapacá',NULL),(39,38,'Antofagasta',NULL),(40,38,'Atacama',NULL),(41,38,'Coquimbo',NULL),(42,38,'Valparaíso',NULL),(43,38,'Libertador General Bernardo O\'Higgins',NULL),(44,38,'Maule',NULL),(45,38,'Bío Bío',NULL),(46,38,'La Araucanía',NULL),(47,38,'Los Lagos',NULL),(48,38,'Aisén del General Carlos Ibáñez del Campo',NULL),(49,38,'Magallanes y Antártica Chilena',NULL),(50,38,'Metropolitana de Santiago',NULL),(51,38,'Los Ríos',NULL),(52,38,'Arica y Parinacota',NULL),(53,39,'NC',NULL),(54,40,'NC',NULL),(55,41,'NC',NULL),(56,42,'NC',NULL),(57,43,'NC',NULL),(58,44,'NC',NULL),(59,45,'NC',NULL),(60,46,'NC',NULL),(61,47,'NC',NULL),(62,48,'NC',NULL),(63,49,'NC',NULL),(64,50,'NC',NULL),(65,51,'NC',NULL),(66,52,'NC',NULL),(67,53,'NC',NULL),(68,54,'NC',NULL),(69,55,'NC',NULL),(70,56,'NC',NULL),(71,57,'NC',NULL),(72,58,'NC',NULL),(73,59,'NC',NULL),(74,60,'NC',NULL),(75,61,'NC',NULL),(76,62,'NC',NULL),(77,63,'NC',NULL),(78,64,'NC',NULL),(79,65,'NC',NULL),(80,66,'NC',NULL),(81,67,'NC',NULL),(82,68,'NC',NULL),(83,69,'NC',NULL),(84,70,'NC',NULL),(85,71,'NC',NULL),(86,72,'NC',NULL),(87,73,'NC',NULL),(88,74,'NC',NULL),(89,75,'NC',NULL),(90,76,'NC',NULL),(91,77,'NC',NULL),(92,78,'NC',NULL),(93,79,'NC',NULL),(94,80,'NC',NULL),(95,81,'NC',NULL),(96,82,'NC',NULL),(97,83,'NC',NULL),(98,84,'NC',NULL),(99,85,'NC',NULL),(100,86,'NC',NULL),(101,87,'NC',NULL),(102,88,'NC',NULL),(103,89,'NC',NULL),(104,90,'NC',NULL),(105,91,'NC',NULL),(106,92,'NC',NULL),(107,93,'NC',NULL),(108,94,'NC',NULL),(109,95,'NC',NULL),(110,96,'NC',NULL),(111,97,'NC',NULL),(112,98,'NC',NULL),(113,99,'NC',NULL),(114,100,'NC',NULL),(115,101,'NC',NULL),(116,102,'NC',NULL),(117,103,'NC',NULL),(118,104,'NC',NULL),(119,105,'NC',NULL),(120,106,'NC',NULL),(121,107,'NC',NULL),(122,108,'NC',NULL),(123,109,'NC',NULL),(124,110,'NC',NULL),(125,111,'NC',NULL),(126,112,'NC',NULL),(127,113,'NC',NULL),(128,114,'NC',NULL),(129,115,'NC',NULL),(130,116,'NC',NULL),(131,117,'NC',NULL),(132,118,'NC',NULL),(133,119,'NC',NULL),(134,120,'NC',NULL),(135,121,'NC',NULL),(136,122,'NC',NULL),(137,123,'NC',NULL),(138,124,'NC',NULL),(139,125,'NC',NULL),(140,126,'NC',NULL),(141,127,'NC',NULL),(142,128,'NC',NULL),(143,129,'NC',NULL),(144,130,'NC',NULL),(145,131,'NC',NULL),(146,132,'NC',NULL),(147,133,'NC',NULL),(148,134,'NC',NULL),(149,135,'NC',NULL),(150,136,'NC',NULL),(151,137,'NC',NULL),(152,138,'NC',NULL),(153,139,'NC',NULL),(154,140,'NC',NULL),(155,141,'NC',NULL),(156,142,'NC',NULL),(157,143,'NC',NULL),(158,144,'NC',NULL),(159,145,'NC',NULL),(160,146,'NC',NULL),(161,147,'NC',NULL),(162,148,'NC',NULL),(163,149,'NC',NULL),(164,150,'NC',NULL),(165,151,'NC',NULL),(166,152,'NC',NULL),(167,153,'NC',NULL),(168,154,'NC',NULL),(169,155,'NC',NULL),(170,156,'NC',NULL),(171,157,'NC',NULL),(172,158,'NC',NULL),(173,159,'NC',NULL),(174,160,'NC',NULL),(175,161,'NC',NULL),(176,162,'NC',NULL),(177,163,'NC',NULL),(178,164,'NC',NULL),(179,165,'NC',NULL),(180,166,'NC',NULL),(181,167,'NC',NULL),(182,168,'NC',NULL),(183,169,'NC',NULL),(184,170,'NC',NULL),(185,171,'NC',NULL),(186,172,'NC',NULL),(187,173,'NC',NULL),(188,174,'NC',NULL),(189,175,'NC',NULL),(190,176,'NC',NULL),(191,177,'NC',NULL),(192,178,'NC',NULL),(193,179,'NC',NULL),(194,180,'NC',NULL),(195,181,'NC',NULL),(196,182,'NC',NULL),(197,183,'NC',NULL),(198,184,'NC',NULL),(199,185,'NC',NULL),(200,186,'NC',NULL),(201,187,'NC',NULL),(202,188,'NC',NULL),(203,189,'NC',NULL),(204,190,'NC',NULL),(205,191,'NC',NULL),(206,192,'NC',NULL),(207,193,'NC',NULL),(208,194,'NC',NULL);
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-06 23:19:44
