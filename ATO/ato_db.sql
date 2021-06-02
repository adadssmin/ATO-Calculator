CREATE DATABASE  IF NOT EXISTS `ato_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ato_db`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: ato_db
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL DEFAULT '제목없음',
  `content` text NOT NULL,
  `writer` varchar(20) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `viewCnt` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'bbb','bbb','bbb','2021-05-17 08:06:38',0),(2,'fasdfasd','asfdasfd','afsdasfd','2021-05-17 10:35:01',0),(3,'fsadfa','fdsaf','fdsafd','2021-05-17 10:40:39',0),(4,'qqqqq','qqqq','qqqq','2021-05-17 10:41:11',0),(5,'bbb','bbb','bbb','2021-05-17 15:59:16',0),(6,'fasdfasd','asfdasfd','afsdasfd','2021-05-17 15:59:16',0),(7,'fsadfa','fdsaf','fdsafd','2021-05-17 15:59:16',0),(8,'qqqqq','qqqq','qqqq','2021-05-17 15:59:16',0),(9,'bbb','bbb','bbb','2021-05-17 15:59:21',0),(10,'fasdfasd','asfdasfd','afsdasfd','2021-05-17 15:59:21',0),(11,'fsadfa','fdsaf','fdsafd','2021-05-17 15:59:21',0),(12,'qqqqq','qqqq','qqqq','2021-05-17 15:59:21',0),(13,'bbb','bbb','bbb','2021-05-17 15:59:21',0),(14,'fasdfasd','asfdasfd','afsdasfd','2021-05-17 15:59:21',0),(15,'fsadfa','fdsaf','fdsafd','2021-05-17 15:59:21',0),(16,'qqqqq','qqqq','qqqq','2021-05-17 15:59:21',0),(17,'bbb','bbb','bbb','2021-05-17 15:59:25',0),(18,'fasdfasd','asfdasfd','afsdasfd','2021-05-17 15:59:25',0),(19,'fsadfa','fdsaf','fdsafd','2021-05-17 15:59:25',0),(20,'qqqqq','qqqq','qqqq','2021-05-17 15:59:25',0),(21,'bbb','bbb','bbb','2021-05-17 15:59:25',0),(22,'fasdfasd','asfdasfd','afsdasfd','2021-05-17 15:59:25',0),(23,'fsadfa','fdsaf','fdsafd','2021-05-17 15:59:25',0),(24,'qqqqq','qqqq','qqqq','2021-05-17 15:59:25',0),(25,'bbb','bbb','bbb','2021-05-17 15:59:25',0),(26,'fasdfasd','asfdasfd','afsdasfd','2021-05-17 15:59:25',0),(27,'fsadfa','fdsaf','fdsafd','2021-05-17 15:59:25',0),(28,'qqqqq','qqqq','qqqq','2021-05-17 15:59:25',0),(29,'bbb','bbb','bbb','2021-05-17 15:59:25',0),(30,'fasdfasd','asfdasfd','afsdasfd','2021-05-17 15:59:25',0),(31,'fsadfa','fdsaf','fdsafd','2021-05-17 15:59:25',0),(32,'qqqqq','qqqq','qqqq','2021-05-17 15:59:25',0),(33,'bbb','bbb','bbb','2021-05-18 07:05:40',0),(34,'fasdfasd','asfdasfd','afsdasfd','2021-05-18 07:05:40',0),(35,'fsadfa','fdsaf','fdsafd','2021-05-18 07:05:40',0),(36,'qqqqq','qqqq','qqqq','2021-05-18 07:05:40',0),(37,'bbb','bbb','bbb','2021-05-18 07:05:40',0),(38,'fasdfasd','asfdasfd','afsdasfd','2021-05-18 07:05:40',0),(39,'fsadfa','fdsaf','fdsafd','2021-05-18 07:05:40',0),(40,'qqqqq','qqqq','qqqq','2021-05-18 07:05:40',0),(41,'bbb','bbb','bbb','2021-05-18 07:05:40',0),(42,'fasdfasd','asfdasfd','afsdasfd','2021-05-18 07:05:40',0),(43,'fsadfa','fdsaf','fdsafd','2021-05-18 07:05:40',0),(44,'qqqqq','qqqq','qqqq','2021-05-18 07:05:40',0),(45,'bbb','bbb','bbb','2021-05-18 07:05:40',0),(46,'fasdfasd','asfdasfd','afsdasfd','2021-05-18 07:05:40',0),(47,'fsadfa','fdsaf','fdsafd','2021-05-18 07:05:40',0),(48,'qqqqq','qqqq','qqqq','2021-05-18 07:05:40',0),(49,'bbb','bbb','bbb','2021-05-18 07:05:40',0),(50,'fasdfasd','asfdasfd','afsdasfd','2021-05-18 07:05:40',0),(51,'fsadfa','fdsaf','fdsafd','2021-05-18 07:05:40',0),(52,'qqqqq','qqqq','qqqq','2021-05-18 07:05:40',0),(53,'bbb','bbb','bbb','2021-05-18 07:05:40',0),(54,'fasdfasd','asfdasfd','afsdasfd','2021-05-18 07:05:40',0),(55,'fsadfa','fdsaf','fdsafd','2021-05-18 07:05:40',0),(56,'qqqqq','qqqq','qqqq','2021-05-18 07:05:40',0),(57,'bbb','bbb','bbb','2021-05-18 07:05:40',0),(58,'fasdfasd','asfdasfd','afsdasfd','2021-05-18 07:05:40',0),(59,'fsadfa','fdsaf','fdsafd','2021-05-18 07:05:40',0),(60,'qqqqq','qqqq','qqqq','2021-05-18 07:05:40',0),(61,'bbb','bbb','bbb','2021-05-18 07:05:40',0),(62,'fasdfasd','asfdasfd','afsdasfd','2021-05-18 07:05:40',0),(63,'fsadfa','fdsaf','fdsafd','2021-05-18 07:05:40',0),(64,'qqqqq','qqqq','qqqq','2021-05-18 07:05:40',0),(65,'bbb','bbb','bbb','2021-05-18 07:05:47',0),(66,'fasdfasd','asfdasfd','afsdasfd','2021-05-18 07:05:47',0),(67,'fsadfa','fdsaf','fdsafd','2021-05-18 07:05:47',0),(68,'qqqqq','qqqq','qqqq','2021-05-18 07:05:47',0),(69,'bbb','bbb','bbb','2021-05-18 07:05:47',0),(70,'fasdfasd','asfdasfd','afsdasfd','2021-05-18 07:05:47',0),(71,'fsadfa','fdsaf','fdsafd','2021-05-18 07:05:47',0),(72,'qqqqq','qqqq','qqqq','2021-05-18 07:05:47',0),(73,'bbb','bbb','bbb','2021-05-18 07:05:47',0),(74,'fasdfasd','asfdasfd','afsdasfd','2021-05-18 07:05:47',0),(75,'fsadfa','fdsaf','fdsafd','2021-05-18 07:05:47',0),(76,'qqqqq','qqqq','qqqq','2021-05-18 07:05:47',0),(77,'bbb','bbb','bbb','2021-05-18 07:05:47',0),(78,'fasdfasd','asfdasfd','afsdasfd','2021-05-18 07:05:47',0),(79,'fsadfa','fdsaf','fdsafd','2021-05-18 07:05:47',0),(80,'qqqqq','qqqq','qqqq','2021-05-18 07:05:47',0),(81,'bbb','bbb','bbb','2021-05-18 07:05:47',0),(82,'fasdfasd','asfdasfd','afsdasfd','2021-05-18 07:05:47',0),(83,'fsadfa','fdsaf','fdsafd','2021-05-18 07:05:47',0),(84,'qqqqq','qqqq','qqqq','2021-05-18 07:05:47',0),(85,'bbb','bbb','bbb','2021-05-18 07:05:47',0),(86,'fasdfasd','asfdasfd','afsdasfd','2021-05-18 07:05:47',0),(87,'fsadfa','fdsaf','fdsafd','2021-05-18 07:05:47',0),(88,'qqqqq','qqqq','qqqq','2021-05-18 07:05:47',0),(89,'bbb','bbb','bbb','2021-05-18 07:05:47',0),(90,'fasdfasd','asfdasfd','afsdasfd','2021-05-18 07:05:47',0),(91,'fsadfa','fdsaf','fdsafd','2021-05-18 07:05:47',0),(92,'qqqqq','qqqq','qqqq','2021-05-18 07:05:47',0),(93,'bbb','bbb','bbb','2021-05-18 07:05:47',0),(94,'fasdfasd','asfdasfd','afsdasfd','2021-05-18 07:05:47',0),(95,'fsadfa','fdsaf','fdsafd','2021-05-18 07:05:47',0),(96,'qqqqq','qqqq','qqqq','2021-05-18 07:05:47',0),(97,'bbb','bbb','bbb','2021-05-18 07:05:47',0),(98,'fasdfasd','asfdasfd','afsdasfd','2021-05-18 07:05:47',0),(99,'fsadfa','fdsaf','fdsafd','2021-05-18 07:05:47',0),(100,'qqqqq','qqqq','qqqq','2021-05-18 07:05:47',0),(101,'bbb','bbb','bbb','2021-05-18 07:05:47',0),(102,'fasdfasd','asfdasfd','afsdasfd','2021-05-18 07:05:47',0),(103,'fsadfa','fdsaf','fdsafd','2021-05-18 07:05:47',0),(104,'qqqqq','qqqq','qqqq','2021-05-18 07:05:47',0),(105,'bbb','bbb','bbb','2021-05-18 07:05:47',0),(106,'fasdfasd','asfdasfd','afsdasfd','2021-05-18 07:05:47',0),(107,'fsadfa','fdsaf','fdsafd','2021-05-18 07:05:47',0),(108,'qqqqq','qqqq','qqqq','2021-05-18 07:05:47',0),(109,'bbb','bbb','bbb','2021-05-18 07:05:47',0),(110,'fasdfasd','asfdasfd','afsdasfd','2021-05-18 07:05:47',0),(111,'fsadfa','fdsaf','fdsafd','2021-05-18 07:05:47',0),(112,'qqqqq','qqqq','qqqq','2021-05-18 07:05:47',0),(113,'bbb','bbb','bbb','2021-05-18 07:05:47',0),(114,'fasdfasd','asfdasfd','afsdasfd','2021-05-18 07:05:47',0),(115,'fsadfa','fdsaf','fdsafd','2021-05-18 07:05:47',0),(116,'qqqqq','qqqq','qqqq','2021-05-18 07:05:47',0),(117,'bbb','bbb','bbb','2021-05-18 07:05:47',0),(118,'fasdfasd','asfdasfd','afsdasfd','2021-05-18 07:05:47',0),(119,'fsadfa','fdsaf','fdsafd','2021-05-18 07:05:47',0);
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `birth` varchar(20) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('aaa','aaa','aaa','aaa@aaa.com','19999999','01012345678'),('asdf','asdf','asdf','asdf@naver.com','11111111','01011111111'),('bbb','bbb','bbb','bbb@bbb.com','19999991','01056781234'),('ccc','ccc','ccc','ccc@naver.com','19999992','01056781234'),('user','aaa','user','user@ato.com','11112233','01011112222');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'ato_db'
--

--
-- Dumping routines for database 'ato_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-19 23:27:57
