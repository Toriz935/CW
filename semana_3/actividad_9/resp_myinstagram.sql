-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: myinstagram
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `des_foto`
--

DROP TABLE IF EXISTS `des_foto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `des_foto` (
  `ID_des_f` int(11) NOT NULL AUTO_INCREMENT,
  `des_foto` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_des_f`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `des_foto`
--

LOCK TABLES `des_foto` WRITE;
/*!40000 ALTER TABLE `des_foto` DISABLE KEYS */;
INSERT INTO `des_foto` VALUES (1,'Meet me at midnight[...]'),(2,'Anti hero but [...]'),(3,'<3'),(4,'Great team spirit!');
/*!40000 ALTER TABLE `des_foto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_instagram_db`
--

DROP TABLE IF EXISTS `my_instagram_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_instagram_db` (
  `ID_myinsta` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `fotos` int(11) DEFAULT NULL,
  `telefono` int(11) NOT NULL,
  PRIMARY KEY (`ID_myinsta`),
  KEY `usuario` (`usuario`),
  CONSTRAINT `my_instagram_db_ibfk_1` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`ID_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_instagram_db`
--

LOCK TABLES `my_instagram_db` WRITE;
/*!40000 ALTER TABLE `my_instagram_db` DISABLE KEYS */;
INSERT INTO `my_instagram_db` VALUES (1,1,'Taylor Swift',2,2147483647),(7,2,'Jin of BTS',3,2147483647),(8,3,'Cristiano Ronaldo',1,2147483647),(9,4,'Robert Pattison',5,2147483647);
/*!40000 ALTER TABLE `my_instagram_db` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nombre`
--

DROP TABLE IF EXISTS `nombre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nombre` (
  `ID_nombre` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(25) NOT NULL,
  PRIMARY KEY (`ID_nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nombre`
--

LOCK TABLES `nombre` WRITE;
/*!40000 ALTER TABLE `nombre` DISABLE KEYS */;
INSERT INTO `nombre` VALUES (1,'Taylor Swift'),(2,'Jin of BTS'),(3,'Cristiano Ronaldo'),(4,'Robert Pattison');
/*!40000 ALTER TABLE `nombre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seguidores`
--

DROP TABLE IF EXISTS `seguidores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seguidores` (
  `ID_seguidores` int(11) NOT NULL AUTO_INCREMENT,
  `seguidores` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`ID_seguidores`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seguidores`
--

LOCK TABLES `seguidores` WRITE;
/*!40000 ALTER TABLE `seguidores` DISABLE KEYS */;
INSERT INTO `seguidores` VALUES (1,'selenagomez'),(2,'gigihadid'),(3,'j.m'),(4,'uarmyhope'),(5,'bts.bighitofficial'),(6,'waynerooney'),(7,'leomessi'),(8,'toni.star');
/*!40000 ALTER TABLE `seguidores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seguidos`
--

DROP TABLE IF EXISTS `seguidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seguidos` (
  `ID_seguidos` int(11) NOT NULL AUTO_INCREMENT,
  `seguidos` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`ID_seguidos`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seguidos`
--

LOCK TABLES `seguidos` WRITE;
/*!40000 ALTER TABLE `seguidos` DISABLE KEYS */;
INSERT INTO `seguidos` VALUES (1,'0'),(2,'j.m'),(3,'rkvie'),(4,'thv'),(5,'earling.haaland'),(6,'xavi'),(7,'eminem'),(8,'bryancranston');
/*!40000 ALTER TABLE `seguidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uhdf`
--

DROP TABLE IF EXISTS `uhdf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uhdf` (
  `ID_UHDF` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` int(11) NOT NULL,
  `des_foto` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_UHDF`),
  KEY `usuario` (`usuario`),
  KEY `des_foto` (`des_foto`),
  CONSTRAINT `uhdf_ibfk_1` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`ID_Usuario`),
  CONSTRAINT `uhdf_ibfk_2` FOREIGN KEY (`des_foto`) REFERENCES `des_foto` (`ID_des_f`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uhdf`
--

LOCK TABLES `uhdf` WRITE;
/*!40000 ALTER TABLE `uhdf` DISABLE KEYS */;
INSERT INTO `uhdf` VALUES (1,1,1),(2,2,2),(3,2,NULL),(4,3,3),(5,3,4),(6,4,NULL);
/*!40000 ALTER TABLE `uhdf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uhs`
--

DROP TABLE IF EXISTS `uhs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uhs` (
  `ID_UHS` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` int(11) NOT NULL,
  `seguidores` int(11) NOT NULL,
  PRIMARY KEY (`ID_UHS`),
  KEY `usuario` (`usuario`),
  KEY `seguidores` (`seguidores`),
  CONSTRAINT `uhs_ibfk_1` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`ID_Usuario`),
  CONSTRAINT `uhs_ibfk_2` FOREIGN KEY (`seguidores`) REFERENCES `seguidores` (`ID_seguidores`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uhs`
--

LOCK TABLES `uhs` WRITE;
/*!40000 ALTER TABLE `uhs` DISABLE KEYS */;
INSERT INTO `uhs` VALUES (1,1,1),(2,1,2),(3,2,3),(4,2,4),(5,2,5),(6,3,6),(7,3,7),(8,4,8);
/*!40000 ALTER TABLE `uhs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uhse`
--

DROP TABLE IF EXISTS `uhse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uhse` (
  `ID_UHSe` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` int(11) NOT NULL,
  `seguidos` int(11) NOT NULL,
  PRIMARY KEY (`ID_UHSe`),
  KEY `usuario` (`usuario`),
  KEY `seguidos` (`seguidos`),
  CONSTRAINT `uhse_ibfk_1` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`ID_Usuario`),
  CONSTRAINT `uhse_ibfk_2` FOREIGN KEY (`seguidos`) REFERENCES `seguidos` (`ID_seguidos`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uhse`
--

LOCK TABLES `uhse` WRITE;
/*!40000 ALTER TABLE `uhse` DISABLE KEYS */;
INSERT INTO `uhse` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,5),(6,3,6),(7,4,7),(8,4,8);
/*!40000 ALTER TABLE `uhse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `ID_Usuario` int(11) NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(25) NOT NULL,
  PRIMARY KEY (`ID_Usuario`),
  UNIQUE KEY `Usuario` (`Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (3,'Cristiano'),(2,'Jin'),(4,'RobertPattison'),(1,'Taylorswift');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-01 22:00:07
