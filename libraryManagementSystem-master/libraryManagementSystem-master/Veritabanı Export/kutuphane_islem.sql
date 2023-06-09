CREATE DATABASE  IF NOT EXISTS `kutuphane` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `kutuphane`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: kutuphane
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `islem`
--

DROP TABLE IF EXISTS `islem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `islem` (
  `islemID` int NOT NULL AUTO_INCREMENT,
  `uyeID` int NOT NULL,
  `kitapID` int NOT NULL,
  `islemTarihi` date DEFAULT NULL,
  `iadeTarihi` date DEFAULT NULL,
  `islemDurumu` int NOT NULL DEFAULT '0',
  `adminID` int DEFAULT NULL,
  `emanetDurumu` varchar(45) DEFAULT 'RAFTA',
  PRIMARY KEY (`islemID`,`uyeID`,`kitapID`),
  UNIQUE KEY `kitapID_UNIQUE` (`kitapID`),
  KEY `fk_uyeID_2` (`uyeID`),
  KEY `fk_admin_2` (`adminID`),
  CONSTRAINT `fk_admin_2` FOREIGN KEY (`adminID`) REFERENCES `admin` (`adminID`),
  CONSTRAINT `fk_kitapID` FOREIGN KEY (`kitapID`) REFERENCES `kitap` (`kitapID`),
  CONSTRAINT `fk_uyeID_2` FOREIGN KEY (`uyeID`) REFERENCES `uye` (`uyeID`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `islem`
--

LOCK TABLES `islem` WRITE;
/*!40000 ALTER TABLE `islem` DISABLE KEYS */;
INSERT INTO `islem` VALUES (30,33,9,'2020-05-24','2020-06-10',4,14,'2020-06-10'),(46,43,24,'2020-05-25','2020-06-09',0,14,'2020-06-09');
/*!40000 ALTER TABLE `islem` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `islem_AFTER_INSERT` AFTER INSERT ON `islem` FOR EACH ROW BEGIN
INSERT INTO log(
islemID,
uyeID,
kitapID,
islemTarihi,
iadeTarihi,
adminID,
aciklama
) VALUES(NEW.islemID, NEW.uyeID, NEW.kitapID, NEW.islemTarihi, NEW.iadeTarihi, NEW.adminID,"Kitap verildi..");
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `islem_AFTER_DELETE` AFTER DELETE ON `islem` FOR EACH ROW BEGIN
INSERT INTO log(
islemID,
uyeID,
kitapID,
islemTarihi,
iadeTarihi,
adminID,
aciklama
) VALUES(OLD.islemID, OLD.uyeID, OLD.kitapID, OLD.islemTarihi,now(), OLD.adminID,"Kitap alındı..");
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-27  0:49:28
