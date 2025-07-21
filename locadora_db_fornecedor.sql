-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: locadora_db
-- ------------------------------------------------------
-- Server version	9.1.0

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
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedor` (
  `codigo` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `numero_sede` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
INSERT INTO `fornecedor` VALUES (1,'Fornecedor A','Rua Forn 1, Bairro A','10'),(2,'Fornecedor B','Av. Forn 2, Bairro B','22'),(3,'Fornecedor C','Rua Forn 3, Bairro C','33'),(4,'Fornecedor D','Rua Forn 4, Bairro D','44'),(5,'Fornecedor E','Av. Forn 5, Bairro E','55'),(6,'Fornecedor F','Rua Forn 6, Bairro F','66'),(7,'Fornecedor G','Rua Forn 7, Bairro G','77'),(8,'Fornecedor H','Av. Forn 8, Bairro H','88'),(9,'Fornecedor I','Rua Forn 9, Bairro I','99'),(10,'Fornecedor J','Rua Forn 10, Bairro J','100'),(11,'Fornecedor K','Rua Forn 11, Bairro K','111'),(12,'Fornecedor L','Av. Forn 12, Bairro L','122'),(13,'Fornecedor M','Rua Forn 13, Bairro M','133'),(14,'Fornecedor N','Rua Forn 14, Bairro N','144'),(15,'Fornecedor O','Av. Forn 15, Bairro O','155'),(16,'Fornecedor P','Rua Forn 16, Bairro P','166'),(17,'Fornecedor Q','Rua Forn 17, Bairro Q','177'),(18,'Fornecedor R','Av. Forn 18, Bairro R','188'),(19,'Fornecedor S','Rua Forn 19, Bairro S','199'),(20,'Fornecedor T','Rua Forn 20, Bairro T','200'),(21,'Fornecedor U','Rua Forn 21, Bairro U','211'),(22,'Fornecedor V','Av. Forn 22, Bairro V','222'),(23,'Fornecedor W','Rua Forn 23, Bairro W','233'),(24,'Fornecedor X','Rua Forn 24, Bairro X','244'),(25,'Fornecedor Y','Av. Forn 25, Bairro Y','255'),(26,'Fornecedor Z','Rua Forn 26, Bairro Z','266'),(27,'Fornecedor AA','Rua Forn 27, Bairro AA','277'),(28,'Fornecedor AB','Av. Forn 28, Bairro AB','288'),(29,'Fornecedor AC','Rua Forn 29, Bairro AC','299'),(30,'Fornecedor AD','Rua Forn 30, Bairro AD','300'),(31,'Fornecedor AE','Rua Forn 31, Bairro AE','311'),(32,'Fornecedor AF','Av. Forn 32, Bairro AF','322'),(33,'Fornecedor AG','Rua Forn 33, Bairro AG','333'),(34,'Fornecedor AH','Rua Forn 34, Bairro AH','344'),(35,'Fornecedor AI','Av. Forn 35, Bairro AI','355'),(36,'Fornecedor AJ','Rua Forn 36, Bairro AJ','366'),(37,'Fornecedor AK','Rua Forn 37, Bairro AK','377'),(38,'Fornecedor AL','Av. Forn 38, Bairro AL','388'),(39,'Fornecedor AM','Rua Forn 39, Bairro AM','399'),(40,'Fornecedor AN','Rua Forn 40, Bairro AN','400'),(41,'Fornecedor AO','Rua Forn 41, Bairro AO','411'),(42,'Fornecedor AP','Av. Forn 42, Bairro AP','422'),(43,'Fornecedor AQ','Rua Forn 43, Bairro AQ','433'),(44,'Fornecedor AR','Rua Forn 44, Bairro AR','444'),(45,'Fornecedor AS','Av. Forn 45, Bairro AS','455'),(46,'Fornecedor AT','Rua Forn 46, Bairro AT','466'),(47,'Fornecedor AU','Rua Forn 47, Bairro AU','477'),(48,'Fornecedor AV','Av. Forn 48, Bairro AV','488');
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-20 21:40:01
