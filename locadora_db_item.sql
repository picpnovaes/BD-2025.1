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
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `id` int NOT NULL AUTO_INCREMENT,
  `filme_codigo` int DEFAULT NULL,
  `formato` varchar(10) DEFAULT NULL,
  `idioma` varchar(50) DEFAULT NULL,
  `versao` varchar(50) DEFAULT NULL,
  `cor` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `filme_codigo` (`filme_codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,1,'DVD','Português','Original','Colorido'),(2,2,'Blu-Ray','Inglês','Legendado','Colorido'),(3,3,'VHS','Português','Dublado','PB'),(4,4,'DVD','Espanhol','Original','Colorido'),(5,5,'Blu-Ray','Português','Original','Colorido'),(6,6,'DVD','Inglês','Dublado','PB'),(7,7,'VHS','Português','Original','Colorido'),(8,8,'Blu-Ray','Francês','Legendado','Colorido'),(9,9,'DVD','Português','Original','PB'),(10,10,'DVD','Alemão','Dublado','Colorido'),(11,11,'Blu-Ray','Português','Original','Colorido'),(12,12,'DVD','Inglês','Legendado','Colorido'),(13,13,'VHS','Português','Dublado','PB'),(14,14,'Blu-Ray','Espanhol','Original','Colorido'),(15,15,'DVD','Português','Original','Colorido'),(16,16,'Blu-Ray','Inglês','Dublado','PB'),(17,17,'DVD','Português','Original','Colorido'),(18,18,'VHS','Francês','Legendado','PB'),(19,19,'Blu-Ray','Português','Original','Colorido'),(20,20,'DVD','Alemão','Dublado','Colorido'),(21,21,'VHS','Português','Original','PB'),(22,22,'DVD','Inglês','Original','Colorido'),(23,23,'Blu-Ray','Português','Legendado','Colorido'),(24,24,'DVD','Francês','Dublado','PB'),(25,25,'VHS','Português','Original','Colorido'),(26,26,'Blu-Ray','Inglês','Original','Colorido'),(27,27,'DVD','Português','Dublado','PB'),(28,28,'Blu-Ray','Espanhol','Legendado','Colorido'),(29,29,'DVD','Português','Original','Colorido'),(30,30,'VHS','Inglês','Dublado','PB'),(31,31,'Blu-Ray','Português','Original','Colorido'),(32,32,'DVD','Francês','Original','Colorido'),(33,33,'VHS','Português','Legendado','PB'),(34,34,'Blu-Ray','Inglês','Original','Colorido'),(35,35,'DVD','Português','Dublado','Colorido'),(36,36,'Blu-Ray','Francês','Legendado','PB'),(37,37,'DVD','Português','Original','Colorido'),(38,38,'VHS','Inglês','Dublado','PB'),(39,39,'Blu-Ray','Português','Original','Colorido'),(40,40,'DVD','Francês','Original','Colorido');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-20 21:40:00
