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
-- Table structure for table `tb_usuarios`
--

DROP TABLE IF EXISTS `tb_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_usuarios` (
  `id` binary(16) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(60) NOT NULL,
  `nif` int NOT NULL,
  `data_nascimento` date NOT NULL,
  `tipo_usuario` tinyint NOT NULL,
  `id_unidade` binary(16) NOT NULL,
  `url_imagem` varchar(255) DEFAULT NULL,
  `url_avatar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `nif` (`nif`),
  KEY `id_unidade` (`id_unidade`),
  CONSTRAINT `tb_usuarios_ibfk_1` FOREIGN KEY (`id_unidade`) REFERENCES `tb_unidades` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_usuarios`
--

LOCK TABLES `tb_usuarios` WRITE;
/*!40000 ALTER TABLE `tb_usuarios` DISABLE KEYS */;
INSERT INTO `tb_usuarios` VALUES (_binary '9\æ®V’H¤Š›#LZN”','Lucas','lucas@vw.com','$2a$10$jZGqYpkJEmzbDU2wfzKG5urzq6ejtbj6IrsdWLuBPw2N9/Zk/c5ya',29035678,'1992-05-05',1,_binary 'Ú˜\Þt\ÌS\îºS`•Vfø','15022024194931.jpg',NULL),(_binary '>qP}nO˜µP<\ÃO¸+','Everton','everton@vw.com','$2a$10$FSuU7gJ9kpdsl5ec6seReunTBOhwf9ZvyR6jZx15jZ6IAeo8miUwS',2896427,'1998-04-04',0,_binary 'Ú˜\Þt\ÌS\îºS`•Vfø','15022024194851.jpeg',NULL),(_binary '²¬Uh+LƒšúBÕ©Œ´s','Kauan','Kauan@vw.com','$2a$10$otRyi2mz1JjGud7tTrt/kuKQq7HogUdudcMWUzzvnCzbNj721t3cS',26514589,'2004-06-06',2,_binary 'Ú˜\Þt\ÌS\îºS`•Vfø','15022024194757.jpg',NULL);
/*!40000 ALTER TABLE `tb_usuarios` ENABLE KEYS */;
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
