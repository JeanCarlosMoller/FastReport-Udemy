-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: fastreportudemy
-- ------------------------------------------------------
-- Server version	5.7.29-log

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
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `endereco` varchar(100) NOT NULL,
  `complemento` varchar(100) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `quadra` int(11) DEFAULT NULL,
  `lote` int(11) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `id_cidade` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `id_endereco_cidade` FOREIGN KEY (`id`) REFERENCES `cidade` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,'Suite 63','Carmelita Airport','Ankazoabo Airport',1,1,1,1),(2,'Apt 1946','Boundji Airport','London Biggin Hill Airport',2,2,2,2),(3,'Room 233','Lakefield Airport','El Arrayán Airport',3,3,3,3),(4,'Suite 71','El Charco Airport','Camiguin Airport',4,4,4,4),(5,'Room 8','Steamboat Bay Seaplane Base','Lawrenceville Vincennes International Airport',5,5,5,5),(6,'Suite 24','Kerema Airport','Silver Plains Airport',6,6,6,6),(7,'Apt 1870','Mutiara Airport','Tokyo Haneda International Airport',7,7,7,7),(8,'Suite 13','Kerteh Airport','Angel Fire Airport',8,8,8,8),(9,'Apt 760','Sibiu International Airport','Faranah Airport',9,9,9,9),(10,'PO Box 97606','Maastricht Aachen Airport','Norfolk Naval Station (Chambers Field)',10,10,10,10);
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-15 12:03:35
