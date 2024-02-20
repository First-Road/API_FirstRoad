-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: firstroadv2
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `tb_conteudo`
--

DROP TABLE IF EXISTS `tb_conteudo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_conteudo` (
  `id` binary(16) NOT NULL,
  `titulo_conteudo` varchar(50) NOT NULL,
  `descricao_conteudo` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `tipo` tinyint NOT NULL,
  `concluido` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_conteudo`
--

LOCK TABLES `tb_conteudo` WRITE;
/*!40000 ALTER TABLE `tb_conteudo` DISABLE KEYS */;
INSERT INTO `tb_conteudo` VALUES (_binary 'ã\’S†:Dòsµ0;£\‚','Boas Vindas!!','Seja bem vindo ao mundo VolksWagen','file:///C:/Users/32599952859/Downloads/Boas-Vindas.pdf',0,NULL),(_binary '™\¬J\ ¸M£W†ï(°\∆','Conhecendo as F√°bricas VolksWagen','Vamos embarcar em uma viajem pelo mundo VolksWagen e conhecer as f√°bricas e pa√≠ses nos quais estamos instalados. ','https://www.youtube.com/watch?v=855kW48jGK8',1,NULL),(_binary 'ΩıG8ÉH±ï\"üV§}\◊','Inova√ß√£o e Sustentabilidade na Volkswagen','Explorando os avan√ßos em ve√≠culos el√©tricos, condu√ß√£o aut√¥noma e redu√ß√£o de emiss√µes, al√©m dos compromissos com a responsabilidade corporativa e pr√°ticas sustent√°veis. ','https://carrostech.com/grandes-marcas/15/02/2023/volkswagen-liderando-inovacao-e-sustentabilidade-no-setor-automotivo/',2,NULL),(_binary '˛˜{xH\Ó¶\„\‡~\⁄','Trabalho em Equipe: Rumo ao Sucesso Coletivo','Explore uma cultura corporativa que valoriza a coopera√ß√£o e o compartilhamento de ideias para alcan√ßar objetivos comuns.','https://www.youtube.com/watch?v=EPqHYWVNz2U',0,NULL);
/*!40000 ALTER TABLE `tb_conteudo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-20 19:53:53
