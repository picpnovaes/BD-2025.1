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
-- Table structure for table `filme`
--

DROP TABLE IF EXISTS `filme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filme` (
  `codigo` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  `duracao_minutos` int DEFAULT NULL,
  `genero` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filme`
--

LOCK TABLES `filme` WRITE;
/*!40000 ALTER TABLE `filme` DISABLE KEYS */;
INSERT INTO `filme` VALUES (1,'O Grande Golpe',120,'Ação'),(2,'Amor em Paris',95,'Romance'),(3,'Mistério na Casa',105,'Suspense'),(4,'Viagem ao Desconhecido',110,'Aventura'),(5,'Festa na Praia',90,'Comédia'),(6,'Noite Sombria',130,'Terror'),(7,'Corrida Final',115,'Esporte'),(8,'Lendas Antigas',140,'Fantasia'),(9,'O Detetive',100,'Policial'),(10,'Planeta Perdido',125,'Ficção Científica'),(11,'Cidade Fantasma',110,'Suspense'),(12,'Amigos para Sempre',85,'Comédia'),(13,'Sonhos de Infância',95,'Drama'),(14,'Caçada Selvagem',120,'Aventura'),(15,'No Limite',105,'Ação'),(16,'Segredos Ocultos',115,'Suspense'),(17,'O Último Herói',130,'Fantasia'),(18,'Ritmo da Vida',90,'Musical'),(19,'Escola de Magia',125,'Fantasia'),(20,'Viagem Espacial',135,'Ficção Científica'),(21,'Amor Proibido',100,'Romance'),(22,'Cidade em Chamas',110,'Ação'),(23,'Dança das Sombras',90,'Terror'),(24,'O Resgate',115,'Aventura'),(25,'Olhos da Verdade',105,'Suspense'),(26,'Fúria na Estrada',125,'Ação'),(27,'Segunda Chance',100,'Drama'),(28,'Caos Urbano',130,'Policial'),(29,'Encanto da Floresta',115,'Fantasia'),(30,'Luz da Esperança',95,'Drama'),(31,'Jogo Mortal',120,'Suspense'),(32,'Coração Valente',110,'Romance'),(33,'A Última Viagem',130,'Aventura'),(34,'Sombras da Noite',90,'Terror'),(35,'Lenda Urbana',100,'Suspense'),(36,'Voo Perigoso',125,'Ação'),(37,'Memórias Perdidas',115,'Drama'),(38,'O Guardião',135,'Fantasia'),(39,'Amor Eterno',105,'Romance'),(40,'Cidade Sob Ataque',120,'Ação'),(41,'O Mestre do Crime',110,'Policial'),(42,'Tempestade',100,'Drama'),(43,'Além do Horizonte',125,'Ficção Científica'),(44,'Caminho da Verdade',90,'Drama'),(45,'Fuga Impossível',115,'Aventura'),(46,'Noite de Terror',130,'Terror'),(47,'Marcas do Passado',95,'Drama'),(48,'Almas Perdidas',105,'Suspense'),(49,'Força Interior',110,'Drama'),(50,'O Segredo do Templo',125,'Aventura');
/*!40000 ALTER TABLE `filme` ENABLE KEYS */;
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
