-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: cinema_trabalhofinal
-- ------------------------------------------------------
-- Server version	8.4.7

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `cpf` int NOT NULL,
  `sexo_cliente` enum('M','F') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nasc_cliente` date NOT NULL,
  `email_cliente` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome_cliente` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `cpf` (`cpf`),
  UNIQUE KEY `email_cliente` (`email_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,100000001,'F','1990-02-02','cliente1@email.com','Cliente 1'),(2,100000002,'M','1990-03-03','cliente2@email.com','Cliente 2'),(3,100000003,'M','1990-04-04','cliente3@email.com','Cliente 3'),(4,100000004,'F','1990-05-05','cliente4@email.com','Cliente 4'),(5,100000005,'F','1990-06-06','cliente5@email.com','Cliente 5'),(6,100000006,'F','1990-07-07','cliente6@email.com','Cliente 6'),(7,100000007,'F','1990-08-08','cliente7@email.com','Cliente 7'),(8,100000008,'M','1990-09-09','cliente8@email.com','Cliente 8'),(9,100000009,'F','1990-10-10','cliente9@email.com','Cliente 9'),(10,100000010,'F','1990-11-11','cliente10@email.com','Cliente 10'),(11,100000011,'M','1990-12-12','cliente11@email.com','Cliente 11'),(12,100000012,'F','1990-01-13','cliente12@email.com','Cliente 12'),(13,100000013,'F','1990-02-14','cliente13@email.com','Cliente 13'),(14,100000014,'M','1990-03-15','cliente14@email.com','Cliente 14'),(15,100000015,'M','1990-04-16','cliente15@email.com','Cliente 15'),(16,100000016,'F','1990-05-17','cliente16@email.com','Cliente 16'),(17,100000017,'M','1990-06-18','cliente17@email.com','Cliente 17'),(18,100000018,'F','1990-07-19','cliente18@email.com','Cliente 18'),(19,100000019,'M','1990-08-20','cliente19@email.com','Cliente 19'),(20,100000020,'M','1990-09-21','cliente20@email.com','Cliente 20'),(21,100000021,'F','1990-10-22','cliente21@email.com','Cliente 21'),(22,100000022,'F','1990-11-23','cliente22@email.com','Cliente 22'),(23,100000023,'M','1990-12-24','cliente23@email.com','Cliente 23'),(24,100000024,'F','1990-01-25','cliente24@email.com','Cliente 24'),(25,100000025,'F','1990-02-26','cliente25@email.com','Cliente 25'),(26,100000026,'F','1990-03-27','cliente26@email.com','Cliente 26'),(27,100000027,'M','1990-04-28','cliente27@email.com','Cliente 27'),(28,100000028,'F','1990-05-01','cliente28@email.com','Cliente 28'),(29,100000029,'M','1990-06-02','cliente29@email.com','Cliente 29'),(30,100000030,'M','1990-07-03','cliente30@email.com','Cliente 30'),(31,100000031,'M','1990-08-04','cliente31@email.com','Cliente 31'),(32,100000032,'M','1990-09-05','cliente32@email.com','Cliente 32'),(33,100000033,'F','1990-10-06','cliente33@email.com','Cliente 33'),(34,100000034,'F','1990-11-07','cliente34@email.com','Cliente 34'),(35,100000035,'F','1990-12-08','cliente35@email.com','Cliente 35'),(36,100000036,'F','1990-01-09','cliente36@email.com','Cliente 36'),(37,100000037,'F','1990-02-10','cliente37@email.com','Cliente 37'),(38,100000038,'F','1990-03-11','cliente38@email.com','Cliente 38'),(39,100000039,'F','1990-04-12','cliente39@email.com','Cliente 39'),(40,100000040,'F','1990-05-13','cliente40@email.com','Cliente 40'),(41,100000041,'M','1990-06-14','cliente41@email.com','Cliente 41'),(42,100000042,'M','1990-07-15','cliente42@email.com','Cliente 42'),(43,100000043,'F','1990-08-16','cliente43@email.com','Cliente 43'),(44,100000044,'F','1990-09-17','cliente44@email.com','Cliente 44'),(45,100000045,'F','1990-10-18','cliente45@email.com','Cliente 45'),(46,100000046,'F','1990-11-19','cliente46@email.com','Cliente 46'),(47,100000047,'M','1990-12-20','cliente47@email.com','Cliente 47'),(48,100000048,'F','1990-01-21','cliente48@email.com','Cliente 48'),(49,100000049,'F','1990-02-22','cliente49@email.com','Cliente 49'),(50,100000050,'M','1990-03-23','cliente50@email.com','Cliente 50'),(51,100000051,'M','1990-04-24','cliente51@email.com','Cliente 51'),(52,100000052,'F','1990-05-25','cliente52@email.com','Cliente 52'),(53,100000053,'M','1990-06-26','cliente53@email.com','Cliente 53'),(54,100000054,'F','1990-07-27','cliente54@email.com','Cliente 54'),(55,100000055,'M','1990-08-28','cliente55@email.com','Cliente 55'),(56,100000056,'M','1990-09-01','cliente56@email.com','Cliente 56'),(57,100000057,'M','1990-10-02','cliente57@email.com','Cliente 57'),(58,100000058,'M','1990-11-03','cliente58@email.com','Cliente 58'),(59,100000059,'F','1990-12-04','cliente59@email.com','Cliente 59'),(60,100000060,'M','1990-01-05','cliente60@email.com','Cliente 60'),(61,100000061,'F','1990-02-06','cliente61@email.com','Cliente 61'),(62,100000062,'M','1990-03-07','cliente62@email.com','Cliente 62'),(63,100000063,'F','1990-04-08','cliente63@email.com','Cliente 63'),(64,100000064,'M','1990-05-09','cliente64@email.com','Cliente 64'),(65,100000065,'M','1990-06-10','cliente65@email.com','Cliente 65'),(66,100000066,'M','1990-07-11','cliente66@email.com','Cliente 66'),(67,100000067,'F','1990-08-12','cliente67@email.com','Cliente 67'),(68,100000068,'F','1990-09-13','cliente68@email.com','Cliente 68'),(69,100000069,'M','1990-10-14','cliente69@email.com','Cliente 69'),(70,100000070,'M','1990-11-15','cliente70@email.com','Cliente 70'),(71,100000071,'M','1990-12-16','cliente71@email.com','Cliente 71'),(72,100000072,'M','1990-01-17','cliente72@email.com','Cliente 72'),(73,100000073,'F','1990-02-18','cliente73@email.com','Cliente 73'),(74,100000074,'F','1990-03-19','cliente74@email.com','Cliente 74'),(75,100000075,'F','1990-04-20','cliente75@email.com','Cliente 75'),(76,100000076,'F','1990-05-21','cliente76@email.com','Cliente 76'),(77,100000077,'M','1990-06-22','cliente77@email.com','Cliente 77'),(78,100000078,'F','1990-07-23','cliente78@email.com','Cliente 78'),(79,100000079,'M','1990-08-24','cliente79@email.com','Cliente 79'),(80,100000080,'M','1990-09-25','cliente80@email.com','Cliente 80'),(81,100000081,'M','1990-10-26','cliente81@email.com','Cliente 81'),(82,100000082,'F','1990-11-27','cliente82@email.com','Cliente 82'),(83,100000083,'M','1990-12-28','cliente83@email.com','Cliente 83'),(84,100000084,'F','1990-01-01','cliente84@email.com','Cliente 84'),(85,100000085,'M','1990-02-02','cliente85@email.com','Cliente 85'),(86,100000086,'M','1990-03-03','cliente86@email.com','Cliente 86'),(87,100000087,'F','1990-04-04','cliente87@email.com','Cliente 87'),(88,100000088,'M','1990-05-05','cliente88@email.com','Cliente 88'),(89,100000089,'F','1990-06-06','cliente89@email.com','Cliente 89'),(90,100000090,'M','1990-07-07','cliente90@email.com','Cliente 90'),(91,100000091,'M','1990-08-08','cliente91@email.com','Cliente 91'),(92,100000092,'M','1990-09-09','cliente92@email.com','Cliente 92'),(93,100000093,'M','1990-10-10','cliente93@email.com','Cliente 93'),(94,100000094,'F','1990-11-11','cliente94@email.com','Cliente 94'),(95,100000095,'M','1990-12-12','cliente95@email.com','Cliente 95'),(96,100000096,'M','1990-01-13','cliente96@email.com','Cliente 96'),(97,100000097,'F','1990-02-14','cliente97@email.com','Cliente 97'),(98,100000098,'M','1990-03-15','cliente98@email.com','Cliente 98'),(99,100000099,'F','1990-04-16','cliente99@email.com','Cliente 99'),(100,100000100,'F','1990-05-17','cliente100@email.com','Cliente 100');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filmes`
--

DROP TABLE IF EXISTS `filmes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filmes` (
  `id_filme` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diretor` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lancamento` date NOT NULL,
  `genero` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_filme`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filmes`
--

LOCK TABLES `filmes` WRITE;
/*!40000 ALTER TABLE `filmes` DISABLE KEYS */;
INSERT INTO `filmes` VALUES (1,'Filme 1','Diretor 1','2020-02-01','Ação'),(2,'Filme 2','Diretor 2','2020-03-01','Ação'),(3,'Filme 3','Diretor 3','2020-04-01','Ação'),(4,'Filme 4','Diretor 4','2020-05-01','Ação'),(5,'Filme 5','Diretor 5','2020-06-01','Ação'),(6,'Filme 6','Diretor 6','2020-07-01','Ação'),(7,'Filme 7','Diretor 7','2020-08-01','Ação'),(8,'Filme 8','Diretor 8','2020-09-01','Ação'),(9,'Filme 9','Diretor 9','2020-10-01','Ação'),(10,'Filme 10','Diretor 10','2020-11-01','Ação'),(11,'Filme 11','Diretor 11','2020-12-01','Ação'),(12,'Filme 12','Diretor 12','2020-01-01','Ação'),(13,'Filme 13','Diretor 13','2020-02-01','Ação'),(14,'Filme 14','Diretor 14','2020-03-01','Ação'),(15,'Filme 15','Diretor 15','2020-04-01','Ação'),(16,'Filme 16','Diretor 16','2020-05-01','Ação'),(17,'Filme 17','Diretor 17','2020-06-01','Ação'),(18,'Filme 18','Diretor 18','2020-07-01','Ação'),(19,'Filme 19','Diretor 19','2020-08-01','Ação'),(20,'Filme 20','Diretor 20','2020-09-01','Ação'),(21,'Filme 21','Diretor 21','2020-10-01','Ação'),(22,'Filme 22','Diretor 22','2020-11-01','Ação'),(23,'Filme 23','Diretor 23','2020-12-01','Ação'),(24,'Filme 24','Diretor 24','2020-01-01','Ação'),(25,'Filme 25','Diretor 25','2020-02-01','Ação'),(26,'Filme 26','Diretor 26','2020-03-01','Ação'),(27,'Filme 27','Diretor 27','2020-04-01','Ação'),(28,'Filme 28','Diretor 28','2020-05-01','Ação'),(29,'Filme 29','Diretor 29','2020-06-01','Ação'),(30,'Filme 30','Diretor 30','2020-07-01','Ação'),(31,'Filme 31','Diretor 31','2020-08-01','Ação'),(32,'Filme 32','Diretor 32','2020-09-01','Ação'),(33,'Filme 33','Diretor 33','2020-10-01','Ação'),(34,'Filme 34','Diretor 34','2020-11-01','Ação'),(35,'Filme 35','Diretor 35','2020-12-01','Ação'),(36,'Filme 36','Diretor 36','2020-01-01','Ação'),(37,'Filme 37','Diretor 37','2020-02-01','Ação'),(38,'Filme 38','Diretor 38','2020-03-01','Ação'),(39,'Filme 39','Diretor 39','2020-04-01','Ação'),(40,'Filme 40','Diretor 40','2020-05-01','Ação'),(41,'Filme 41','Diretor 41','2020-06-01','Ação'),(42,'Filme 42','Diretor 42','2020-07-01','Ação'),(43,'Filme 43','Diretor 43','2020-08-01','Ação'),(44,'Filme 44','Diretor 44','2020-09-01','Ação'),(45,'Filme 45','Diretor 45','2020-10-01','Ação'),(46,'Filme 46','Diretor 46','2020-11-01','Ação'),(47,'Filme 47','Diretor 47','2020-12-01','Ação'),(48,'Filme 48','Diretor 48','2020-01-01','Ação'),(49,'Filme 49','Diretor 49','2020-02-01','Ação'),(50,'Filme 50','Diretor 50','2020-03-01','Ação'),(51,'Filme 51','Diretor 51','2020-04-01','Ação'),(52,'Filme 52','Diretor 52','2020-05-01','Ação'),(53,'Filme 53','Diretor 53','2020-06-01','Ação'),(54,'Filme 54','Diretor 54','2020-07-01','Ação'),(55,'Filme 55','Diretor 55','2020-08-01','Ação'),(56,'Filme 56','Diretor 56','2020-09-01','Ação'),(57,'Filme 57','Diretor 57','2020-10-01','Ação'),(58,'Filme 58','Diretor 58','2020-11-01','Ação'),(59,'Filme 59','Diretor 59','2020-12-01','Ação'),(60,'Filme 60','Diretor 60','2020-01-01','Ação'),(61,'Filme 61','Diretor 61','2020-02-01','Ação'),(62,'Filme 62','Diretor 62','2020-03-01','Ação'),(63,'Filme 63','Diretor 63','2020-04-01','Ação'),(64,'Filme 64','Diretor 64','2020-05-01','Ação'),(65,'Filme 65','Diretor 65','2020-06-01','Ação'),(66,'Filme 66','Diretor 66','2020-07-01','Ação'),(67,'Filme 67','Diretor 67','2020-08-01','Ação'),(68,'Filme 68','Diretor 68','2020-09-01','Ação'),(69,'Filme 69','Diretor 69','2020-10-01','Ação'),(70,'Filme 70','Diretor 70','2020-11-01','Ação'),(71,'Filme 71','Diretor 71','2020-12-01','Ação'),(72,'Filme 72','Diretor 72','2020-01-01','Ação'),(73,'Filme 73','Diretor 73','2020-02-01','Ação'),(74,'Filme 74','Diretor 74','2020-03-01','Ação'),(75,'Filme 75','Diretor 75','2020-04-01','Ação'),(76,'Filme 76','Diretor 76','2020-05-01','Ação'),(77,'Filme 77','Diretor 77','2020-06-01','Ação'),(78,'Filme 78','Diretor 78','2020-07-01','Ação'),(79,'Filme 79','Diretor 79','2020-08-01','Ação'),(80,'Filme 80','Diretor 80','2020-09-01','Ação'),(81,'Filme 81','Diretor 81','2020-10-01','Ação'),(82,'Filme 82','Diretor 82','2020-11-01','Ação'),(83,'Filme 83','Diretor 83','2020-12-01','Ação'),(84,'Filme 84','Diretor 84','2020-01-01','Ação'),(85,'Filme 85','Diretor 85','2020-02-01','Ação'),(86,'Filme 86','Diretor 86','2020-03-01','Ação'),(87,'Filme 87','Diretor 87','2020-04-01','Ação'),(88,'Filme 88','Diretor 88','2020-05-01','Ação'),(89,'Filme 89','Diretor 89','2020-06-01','Ação'),(90,'Filme 90','Diretor 90','2020-07-01','Ação'),(91,'Filme 91','Diretor 91','2020-08-01','Ação'),(92,'Filme 92','Diretor 92','2020-09-01','Ação'),(93,'Filme 93','Diretor 93','2020-10-01','Ação'),(94,'Filme 94','Diretor 94','2020-11-01','Ação'),(95,'Filme 95','Diretor 95','2020-12-01','Ação'),(96,'Filme 96','Diretor 96','2020-01-01','Ação'),(97,'Filme 97','Diretor 97','2020-02-01','Ação'),(98,'Filme 98','Diretor 98','2020-03-01','Ação'),(99,'Filme 99','Diretor 99','2020-04-01','Ação'),(100,'Filme 100','Diretor 100','2020-05-01','Ação');
/*!40000 ALTER TABLE `filmes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_verify_filme` BEFORE DELETE ON `filmes` FOR EACH ROW begin
	declare verify_sessao_futuras int;
	
    select count(*)
    into verify_sessao_futuras
    from sessao
    where id_filme = old.id_filme
		and data_hora > now();
        
	if verify_sessao_futuras > 0 then
    signal sqlstate '45000'
		set message_text = 'Não foi possível exluir o filme, pois ainda está em sessões futuras';
	end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `id_funcionario` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nascimento` date NOT NULL,
  `email` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sexo` enum('M','F') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_funcionario`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,'Funcionario 1','1985-02-15','func1@cinema.com','F'),(2,'Funcionario 2','1985-03-15','func2@cinema.com','F'),(3,'Funcionario 3','1985-04-15','func3@cinema.com','M'),(4,'Funcionario 4','1985-05-15','func4@cinema.com','M'),(5,'Funcionario 5','1985-06-15','func5@cinema.com','M'),(6,'Funcionario 6','1985-07-15','func6@cinema.com','M'),(7,'Funcionario 7','1985-08-15','func7@cinema.com','M'),(8,'Funcionario 8','1985-09-15','func8@cinema.com','F'),(9,'Funcionario 9','1985-10-15','func9@cinema.com','F'),(10,'Funcionario 10','1985-11-15','func10@cinema.com','F'),(11,'Funcionario 11','1985-12-15','func11@cinema.com','M'),(12,'Funcionario 12','1985-01-15','func12@cinema.com','F'),(13,'Funcionario 13','1985-02-15','func13@cinema.com','M'),(14,'Funcionario 14','1985-03-15','func14@cinema.com','F'),(15,'Funcionario 15','1985-04-15','func15@cinema.com','F'),(16,'Funcionario 16','1985-05-15','func16@cinema.com','F'),(17,'Funcionario 17','1985-06-15','func17@cinema.com','M'),(18,'Funcionario 18','1985-07-15','func18@cinema.com','M'),(19,'Funcionario 19','1985-08-15','func19@cinema.com','M'),(20,'Funcionario 20','1985-09-15','func20@cinema.com','M'),(21,'Funcionario 21','1985-10-15','func21@cinema.com','F'),(22,'Funcionario 22','1985-11-15','func22@cinema.com','F'),(23,'Funcionario 23','1985-12-15','func23@cinema.com','M'),(24,'Funcionario 24','1985-01-15','func24@cinema.com','M'),(25,'Funcionario 25','1985-02-15','func25@cinema.com','F'),(26,'Funcionario 26','1985-03-15','func26@cinema.com','F'),(27,'Funcionario 27','1985-04-15','func27@cinema.com','F'),(28,'Funcionario 28','1985-05-15','func28@cinema.com','F'),(29,'Funcionario 29','1985-06-15','func29@cinema.com','F'),(30,'Funcionario 30','1985-07-15','func30@cinema.com','M'),(31,'Funcionario 31','1985-08-15','func31@cinema.com','F'),(32,'Funcionario 32','1985-09-15','func32@cinema.com','F'),(33,'Funcionario 33','1985-10-15','func33@cinema.com','M'),(34,'Funcionario 34','1985-11-15','func34@cinema.com','M'),(35,'Funcionario 35','1985-12-15','func35@cinema.com','M'),(36,'Funcionario 36','1985-01-15','func36@cinema.com','F'),(37,'Funcionario 37','1985-02-15','func37@cinema.com','F'),(38,'Funcionario 38','1985-03-15','func38@cinema.com','M'),(39,'Funcionario 39','1985-04-15','func39@cinema.com','M'),(40,'Funcionario 40','1985-05-15','func40@cinema.com','F'),(41,'Funcionario 41','1985-06-15','func41@cinema.com','F'),(42,'Funcionario 42','1985-07-15','func42@cinema.com','M'),(43,'Funcionario 43','1985-08-15','func43@cinema.com','M'),(44,'Funcionario 44','1985-09-15','func44@cinema.com','F'),(45,'Funcionario 45','1985-10-15','func45@cinema.com','F'),(46,'Funcionario 46','1985-11-15','func46@cinema.com','F'),(47,'Funcionario 47','1985-12-15','func47@cinema.com','F'),(48,'Funcionario 48','1985-01-15','func48@cinema.com','M'),(49,'Funcionario 49','1985-02-15','func49@cinema.com','F'),(50,'Funcionario 50','1985-03-15','func50@cinema.com','M'),(51,'Funcionario 51','1985-04-15','func51@cinema.com','F'),(52,'Funcionario 52','1985-05-15','func52@cinema.com','F'),(53,'Funcionario 53','1985-06-15','func53@cinema.com','M'),(54,'Funcionario 54','1985-07-15','func54@cinema.com','F'),(55,'Funcionario 55','1985-08-15','func55@cinema.com','F'),(56,'Funcionario 56','1985-09-15','func56@cinema.com','M'),(57,'Funcionario 57','1985-10-15','func57@cinema.com','F'),(58,'Funcionario 58','1985-11-15','func58@cinema.com','F'),(59,'Funcionario 59','1985-12-15','func59@cinema.com','M'),(60,'Funcionario 60','1985-01-15','func60@cinema.com','F'),(61,'Funcionario 61','1985-02-15','func61@cinema.com','F'),(62,'Funcionario 62','1985-03-15','func62@cinema.com','F'),(63,'Funcionario 63','1985-04-15','func63@cinema.com','M'),(64,'Funcionario 64','1985-05-15','func64@cinema.com','F'),(65,'Funcionario 65','1985-06-15','func65@cinema.com','F'),(66,'Funcionario 66','1985-07-15','func66@cinema.com','F'),(67,'Funcionario 67','1985-08-15','func67@cinema.com','M'),(68,'Funcionario 68','1985-09-15','func68@cinema.com','M'),(69,'Funcionario 69','1985-10-15','func69@cinema.com','M'),(70,'Funcionario 70','1985-11-15','func70@cinema.com','F'),(71,'Funcionario 71','1985-12-15','func71@cinema.com','M'),(72,'Funcionario 72','1985-01-15','func72@cinema.com','M'),(73,'Funcionario 73','1985-02-15','func73@cinema.com','F'),(74,'Funcionario 74','1985-03-15','func74@cinema.com','F'),(75,'Funcionario 75','1985-04-15','func75@cinema.com','M'),(76,'Funcionario 76','1985-05-15','func76@cinema.com','M'),(77,'Funcionario 77','1985-06-15','func77@cinema.com','M'),(78,'Funcionario 78','1985-07-15','func78@cinema.com','M'),(79,'Funcionario 79','1985-08-15','func79@cinema.com','F'),(80,'Funcionario 80','1985-09-15','func80@cinema.com','F'),(81,'Funcionario 81','1985-10-15','func81@cinema.com','F'),(82,'Funcionario 82','1985-11-15','func82@cinema.com','F'),(83,'Funcionario 83','1985-12-15','func83@cinema.com','M'),(84,'Funcionario 84','1985-01-15','func84@cinema.com','M'),(85,'Funcionario 85','1985-02-15','func85@cinema.com','M'),(86,'Funcionario 86','1985-03-15','func86@cinema.com','F'),(87,'Funcionario 87','1985-04-15','func87@cinema.com','M'),(88,'Funcionario 88','1985-05-15','func88@cinema.com','M'),(89,'Funcionario 89','1985-06-15','func89@cinema.com','F'),(90,'Funcionario 90','1985-07-15','func90@cinema.com','F'),(91,'Funcionario 91','1985-08-15','func91@cinema.com','M'),(92,'Funcionario 92','1985-09-15','func92@cinema.com','F'),(93,'Funcionario 93','1985-10-15','func93@cinema.com','F'),(94,'Funcionario 94','1985-11-15','func94@cinema.com','M'),(95,'Funcionario 95','1985-12-15','func95@cinema.com','M'),(96,'Funcionario 96','1985-01-15','func96@cinema.com','M'),(97,'Funcionario 97','1985-02-15','func97@cinema.com','M'),(98,'Funcionario 98','1985-03-15','func98@cinema.com','M'),(99,'Funcionario 99','1985-04-15','func99@cinema.com','M'),(100,'Funcionario 100','1985-05-15','func100@cinema.com','M');
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingresso`
--

DROP TABLE IF EXISTS `ingresso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingresso` (
  `ticket` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `id_funcionario` int NOT NULL,
  `id_sessao` int NOT NULL,
  `preco` decimal(5,2) NOT NULL,
  `assento` int NOT NULL,
  `data_compra` datetime NOT NULL,
  PRIMARY KEY (`ticket`),
  KEY `fk_ingresso_id_cliente` (`id_cliente`),
  KEY `fk_ingresso_id_funcionario` (`id_funcionario`),
  KEY `fk_ingresso_id_sessao` (`id_sessao`),
  CONSTRAINT `fk_ingresso_id_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_ingresso_id_funcionario` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionario` (`id_funcionario`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_ingresso_id_sessao` FOREIGN KEY (`id_sessao`) REFERENCES `sessao` (`id_sessao`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingresso`
--

LOCK TABLES `ingresso` WRITE;
/*!40000 ALTER TABLE `ingresso` DISABLE KEYS */;
INSERT INTO `ingresso` VALUES (1,1,1,1,20.00,1,'2026-11-02 00:00:00'),(2,2,2,2,40.00,2,'2026-11-03 00:00:00'),(3,3,3,3,30.00,3,'2026-11-04 00:00:00'),(4,4,4,4,50.00,4,'2026-11-05 00:00:00'),(5,5,5,5,25.00,5,'2026-11-06 00:00:00'),(6,6,6,6,35.00,6,'2026-11-07 00:00:00'),(7,7,7,7,35.00,7,'2026-11-08 00:00:00'),(8,8,8,8,20.00,8,'2026-11-09 00:00:00'),(9,9,9,9,20.00,9,'2026-11-10 00:00:00'),(10,10,10,10,35.00,10,'2026-11-11 00:00:00'),(11,11,11,11,20.00,11,'2026-11-12 00:00:00'),(12,12,12,12,30.00,12,'2026-11-13 00:00:00'),(13,13,13,13,25.00,13,'2026-11-14 00:00:00'),(14,14,14,14,20.00,14,'2026-11-15 00:00:00'),(15,15,15,15,50.00,15,'2026-11-16 00:00:00'),(16,16,16,16,50.00,16,'2026-11-17 00:00:00'),(17,17,17,17,25.00,17,'2026-11-18 00:00:00'),(18,18,18,18,30.00,18,'2026-11-19 00:00:00'),(19,19,19,19,40.00,19,'2026-11-20 00:00:00'),(20,20,20,20,25.00,20,'2026-11-21 00:00:00'),(21,21,21,21,25.00,21,'2026-11-22 00:00:00'),(22,22,22,22,40.00,22,'2026-11-23 00:00:00'),(23,23,23,23,20.00,23,'2026-11-24 00:00:00'),(24,24,24,24,50.00,24,'2026-11-25 00:00:00'),(25,25,25,25,20.00,25,'2026-11-26 00:00:00'),(26,26,26,26,25.00,26,'2026-11-27 00:00:00'),(27,27,27,27,20.00,27,'2026-11-28 00:00:00'),(28,28,28,28,40.00,28,'2026-11-01 00:00:00'),(29,29,29,29,20.00,29,'2026-11-02 00:00:00'),(30,30,30,30,40.00,30,'2026-11-03 00:00:00'),(31,31,31,31,35.00,31,'2026-11-04 00:00:00'),(32,32,32,32,30.00,32,'2026-11-05 00:00:00'),(33,33,33,33,35.00,33,'2026-11-06 00:00:00'),(34,34,34,34,40.00,34,'2026-11-07 00:00:00'),(35,35,35,35,30.00,35,'2026-11-08 00:00:00'),(36,36,36,36,20.00,36,'2026-11-09 00:00:00'),(37,37,37,37,35.00,37,'2026-11-10 00:00:00'),(38,38,38,38,35.00,38,'2026-11-11 00:00:00'),(39,39,39,39,50.00,39,'2026-11-12 00:00:00'),(40,40,40,40,35.00,40,'2026-11-13 00:00:00'),(41,41,41,41,20.00,41,'2026-11-14 00:00:00'),(42,42,42,42,25.00,42,'2026-11-15 00:00:00'),(43,43,43,43,50.00,43,'2026-11-16 00:00:00'),(44,44,44,44,20.00,44,'2026-11-17 00:00:00'),(45,45,45,45,30.00,45,'2026-11-18 00:00:00'),(46,46,46,46,50.00,46,'2026-11-19 00:00:00'),(47,47,47,47,35.00,47,'2026-11-20 00:00:00'),(48,48,48,48,25.00,48,'2026-11-21 00:00:00'),(49,49,49,49,20.00,49,'2026-11-22 00:00:00'),(50,50,50,50,20.00,50,'2026-11-23 00:00:00'),(51,51,51,51,25.00,51,'2026-11-24 00:00:00'),(52,52,52,52,25.00,52,'2026-11-25 00:00:00'),(53,53,53,53,25.00,53,'2026-11-26 00:00:00'),(54,54,54,54,35.00,54,'2026-11-27 00:00:00'),(55,55,55,55,50.00,55,'2026-11-28 00:00:00'),(56,56,56,56,35.00,56,'2026-11-01 00:00:00'),(57,57,57,57,40.00,57,'2026-11-02 00:00:00'),(58,58,58,58,25.00,58,'2026-11-03 00:00:00'),(59,59,59,59,35.00,59,'2026-11-04 00:00:00'),(60,60,60,60,25.00,60,'2026-11-05 00:00:00'),(61,61,61,61,50.00,61,'2026-11-06 00:00:00'),(62,62,62,62,25.00,62,'2026-11-07 00:00:00'),(63,63,63,63,35.00,63,'2026-11-08 00:00:00'),(64,64,64,64,35.00,64,'2026-11-09 00:00:00'),(65,65,65,65,35.00,65,'2026-11-10 00:00:00'),(66,66,66,66,25.00,66,'2026-11-11 00:00:00'),(67,67,67,67,30.00,67,'2026-11-12 00:00:00'),(68,68,68,68,35.00,68,'2026-11-13 00:00:00'),(69,69,69,69,35.00,69,'2026-11-14 00:00:00'),(70,70,70,70,25.00,70,'2026-11-15 00:00:00'),(71,71,71,71,50.00,71,'2026-11-16 00:00:00'),(72,72,72,72,35.00,72,'2026-11-17 00:00:00'),(73,73,73,73,25.00,73,'2026-11-18 00:00:00'),(74,74,74,74,30.00,74,'2026-11-19 00:00:00'),(75,75,75,75,35.00,75,'2026-11-20 00:00:00'),(76,76,76,76,20.00,76,'2026-11-21 00:00:00'),(77,77,77,77,40.00,77,'2026-11-22 00:00:00'),(78,78,78,78,20.00,78,'2026-11-23 00:00:00'),(79,79,79,79,35.00,79,'2026-11-24 00:00:00'),(80,80,80,80,25.00,80,'2026-11-25 00:00:00'),(81,81,81,81,40.00,81,'2026-11-26 00:00:00'),(82,82,82,82,30.00,82,'2026-11-27 00:00:00'),(83,83,83,83,40.00,83,'2026-11-28 00:00:00'),(84,84,84,84,50.00,84,'2026-11-01 00:00:00'),(85,85,85,85,20.00,85,'2026-11-02 00:00:00'),(86,86,86,86,50.00,86,'2026-11-03 00:00:00'),(87,87,87,87,50.00,87,'2026-11-04 00:00:00'),(88,88,88,88,40.00,88,'2026-11-05 00:00:00'),(89,89,89,89,40.00,89,'2026-11-06 00:00:00'),(90,90,90,90,50.00,90,'2026-11-07 00:00:00'),(91,91,91,91,40.00,91,'2026-11-08 00:00:00'),(92,92,92,92,20.00,92,'2026-11-09 00:00:00'),(93,93,93,93,25.00,93,'2026-11-10 00:00:00'),(94,94,94,94,35.00,94,'2026-11-11 00:00:00'),(95,95,95,95,30.00,95,'2026-11-12 00:00:00'),(96,96,96,96,30.00,96,'2026-11-13 00:00:00'),(97,97,97,97,20.00,97,'2026-11-14 00:00:00'),(98,98,98,98,30.00,98,'2026-11-15 00:00:00'),(99,99,99,99,25.00,99,'2026-11-16 00:00:00'),(100,100,100,100,30.00,100,'2026-11-17 00:00:00'),(102,1,2,3,65.82,25,'2026-07-02 00:00:00'),(105,2,1,10,75.20,2,'2026-05-30 00:00:00');
/*!40000 ALTER TABLE `ingresso` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_verify_assento` BEFORE INSERT ON `ingresso` FOR EACH ROW begin
	DECLARE v_capacidade    INT;
    DECLARE v_assento INT;
    DECLARE v_assento_ocupado INT;
 
    -- Busca a capacidade da sala vinculada à sessão
    SELECT s.qnt_assentos
    INTO v_capacidade
    FROM SESSAO se
    JOIN SALA s ON s.id_sala = se.id_sala
    WHERE se.id_sessao = NEW.id_sessao;
    
    set v_assento = new.assento;
 
    -- Verifica se o número do assento ultrapassa a capacidade da sala
    IF v_assento > v_capacidade THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Assento inválido: número excede a capacidade da sala.';
    END IF;
 
    -- Verifica se o número do assento é maior que zero
    IF v_assento <= 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Assento inválido: número deve ser maior que zero.';
    END IF;
    
    select count(*)
    into v_assento_ocupado
    from ingresso
    where id_sessao = new.id_sessao
		and assento = new.assento;
        
	IF v_assento_ocupado > 0 then
		signal sqlstate '45000'
			set message_text = 'Assento inválido: o assento selecionado não está disponível.';
	END IF;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `sala`
--

DROP TABLE IF EXISTS `sala`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sala` (
  `id_sala` int NOT NULL AUTO_INCREMENT,
  `qnt_assentos` int NOT NULL,
  `tipo` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_sala`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sala`
--

LOCK TABLES `sala` WRITE;
/*!40000 ALTER TABLE `sala` DISABLE KEYS */;
INSERT INTO `sala` VALUES (1,150,'2D'),(2,200,'2D'),(3,200,'3D'),(4,200,'2D'),(5,200,'2D'),(6,150,'2D'),(7,200,'IMAX'),(8,200,'2D'),(9,200,'2D'),(10,200,'2D'),(11,200,'2D'),(12,200,'3D'),(13,200,'2D'),(14,200,'IMAX'),(15,200,'3D'),(16,200,'3D'),(17,200,'IMAX'),(18,200,'2D'),(19,200,'3D'),(20,200,'2D'),(21,200,'IMAX'),(22,180,'2D'),(23,200,'2D'),(24,200,'2D'),(25,200,'2D'),(26,150,'2D'),(27,180,'3D'),(28,150,'IMAX'),(29,150,'2D'),(30,180,'IMAX'),(31,150,'2D'),(32,200,'3D'),(33,200,'2D'),(34,200,'IMAX'),(35,180,'IMAX'),(36,180,'IMAX'),(37,180,'IMAX'),(38,200,'3D'),(39,200,'2D'),(40,200,'IMAX'),(41,200,'IMAX'),(42,200,'2D'),(43,200,'2D'),(44,180,'IMAX'),(45,200,'IMAX'),(46,200,'2D'),(47,200,'2D'),(48,200,'IMAX'),(49,150,'2D'),(50,200,'3D'),(51,100,'2D'),(52,150,'3D'),(53,150,'2D'),(54,200,'IMAX'),(55,200,'3D'),(56,150,'IMAX'),(57,180,'IMAX'),(58,200,'2D'),(59,180,'2D'),(60,150,'IMAX'),(61,200,'IMAX'),(62,200,'IMAX'),(63,200,'IMAX'),(64,200,'IMAX'),(65,150,'IMAX'),(66,200,'IMAX'),(67,150,'IMAX'),(68,200,'IMAX'),(69,100,'3D'),(70,200,'IMAX'),(71,200,'IMAX'),(72,200,'2D'),(73,200,'3D'),(74,200,'IMAX'),(75,200,'3D'),(76,200,'IMAX'),(77,180,'2D'),(78,150,'3D'),(79,200,'IMAX'),(80,200,'3D'),(81,200,'IMAX'),(82,200,'2D'),(83,200,'IMAX'),(84,200,'3D'),(85,200,'IMAX'),(86,200,'IMAX'),(87,200,'3D'),(88,200,'2D'),(89,150,'2D'),(90,150,'IMAX'),(91,200,'3D'),(92,200,'IMAX'),(93,150,'3D'),(94,150,'3D'),(95,150,'IMAX'),(96,200,'IMAX'),(97,200,'2D'),(98,200,'2D'),(99,200,'2D'),(100,200,'3D');
/*!40000 ALTER TABLE `sala` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessao`
--

DROP TABLE IF EXISTS `sessao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessao` (
  `id_sessao` int NOT NULL AUTO_INCREMENT,
  `id_sala` int NOT NULL,
  `id_filme` int NOT NULL,
  `idioma` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_hora` datetime NOT NULL,
  PRIMARY KEY (`id_sessao`),
  KEY `fk_sessao_id_sala` (`id_sala`),
  KEY `fk_sessao_id_filme` (`id_filme`),
  CONSTRAINT `fk_sessao_id_filme` FOREIGN KEY (`id_filme`) REFERENCES `filmes` (`id_filme`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_sessao_id_sala` FOREIGN KEY (`id_sala`) REFERENCES `sala` (`id_sala`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessao`
--

LOCK TABLES `sessao` WRITE;
/*!40000 ALTER TABLE `sessao` DISABLE KEYS */;
INSERT INTO `sessao` VALUES (1,1,1,'Dublado','2026-12-02 11:00:00'),(2,2,2,'Legendado','2026-12-03 12:00:00'),(3,3,3,'Dublado','2026-12-04 13:00:00'),(4,4,4,'Dublado','2026-12-05 14:00:00'),(5,5,5,'Dublado','2026-12-06 15:00:00'),(6,6,6,'Legendado','2026-12-07 16:00:00'),(7,7,7,'Dublado','2026-12-08 17:00:00'),(8,8,8,'Legendado','2026-12-09 18:00:00'),(9,9,9,'Dublado','2026-12-10 19:00:00'),(10,10,10,'Dublado','2026-12-11 10:00:00'),(11,11,11,'Legendado','2026-12-12 11:00:00'),(12,12,12,'Dublado','2026-12-13 12:00:00'),(13,13,13,'Legendado','2026-12-14 13:00:00'),(14,14,14,'Dublado','2026-12-15 14:00:00'),(15,15,15,'Dublado','2026-12-16 15:00:00'),(16,16,16,'Dublado','2026-12-17 16:00:00'),(17,17,17,'Legendado','2026-12-18 17:00:00'),(18,18,18,'Dublado','2026-12-19 18:00:00'),(19,19,19,'Dublado','2026-12-20 19:00:00'),(20,20,20,'Dublado','2026-12-21 10:00:00'),(21,21,21,'Legendado','2026-12-22 11:00:00'),(22,22,22,'Legendado','2026-12-23 12:00:00'),(23,23,23,'Dublado','2026-12-24 13:00:00'),(24,24,24,'Dublado','2026-12-25 14:00:00'),(25,25,25,'Dublado','2026-12-26 15:00:00'),(26,26,26,'Dublado','2026-12-27 16:00:00'),(27,27,27,'Legendado','2026-12-28 17:00:00'),(28,28,28,'Dublado','2026-12-01 18:00:00'),(29,29,29,'Legendado','2026-12-02 19:00:00'),(30,30,30,'Dublado','2026-12-03 10:00:00'),(31,31,31,'Legendado','2026-12-04 11:00:00'),(32,32,32,'Legendado','2026-12-05 12:00:00'),(33,33,33,'Dublado','2026-12-06 13:00:00'),(34,34,34,'Dublado','2026-12-07 14:00:00'),(35,35,35,'Legendado','2026-12-08 15:00:00'),(36,36,36,'Legendado','2026-12-09 16:00:00'),(37,37,37,'Dublado','2026-12-10 17:00:00'),(38,38,38,'Legendado','2026-12-11 18:00:00'),(39,39,39,'Legendado','2026-12-12 19:00:00'),(40,40,40,'Legendado','2026-12-13 10:00:00'),(41,41,41,'Dublado','2026-12-14 11:00:00'),(42,42,42,'Dublado','2026-12-15 12:00:00'),(43,43,43,'Dublado','2026-12-16 13:00:00'),(44,44,44,'Legendado','2026-12-17 14:00:00'),(45,45,45,'Legendado','2026-12-18 15:00:00'),(46,46,46,'Dublado','2026-12-19 16:00:00'),(47,47,47,'Legendado','2026-12-20 17:00:00'),(48,48,48,'Legendado','2026-12-21 18:00:00'),(49,49,49,'Legendado','2026-12-22 19:00:00'),(50,50,50,'Dublado','2026-12-23 10:00:00'),(51,51,51,'Dublado','2026-12-24 11:00:00'),(52,52,52,'Dublado','2026-12-25 12:00:00'),(53,53,53,'Dublado','2026-12-26 13:00:00'),(54,54,54,'Dublado','2026-12-27 14:00:00'),(55,55,55,'Legendado','2026-12-28 15:00:00'),(56,56,56,'Dublado','2026-12-01 16:00:00'),(57,57,57,'Legendado','2026-12-02 17:00:00'),(58,58,58,'Legendado','2026-12-03 18:00:00'),(59,59,59,'Legendado','2026-12-04 19:00:00'),(60,60,60,'Legendado','2026-12-05 10:00:00'),(61,61,61,'Dublado','2026-12-06 11:00:00'),(62,62,62,'Dublado','2026-12-07 12:00:00'),(63,63,63,'Dublado','2026-12-08 13:00:00'),(64,64,64,'Legendado','2026-12-09 14:00:00'),(65,65,65,'Legendado','2026-12-10 15:00:00'),(66,66,66,'Legendado','2026-12-11 16:00:00'),(67,67,67,'Legendado','2026-12-12 17:00:00'),(68,68,68,'Dublado','2026-12-13 18:00:00'),(69,69,69,'Dublado','2026-12-14 19:00:00'),(70,70,70,'Dublado','2026-12-15 10:00:00'),(71,71,71,'Legendado','2026-12-16 11:00:00'),(72,72,72,'Dublado','2026-12-17 12:00:00'),(73,73,73,'Dublado','2026-12-18 13:00:00'),(74,74,74,'Legendado','2026-12-19 14:00:00'),(75,75,75,'Dublado','2026-12-20 15:00:00'),(76,76,76,'Legendado','2026-12-21 16:00:00'),(77,77,77,'Legendado','2026-12-22 17:00:00'),(78,78,78,'Legendado','2026-12-23 18:00:00'),(79,79,79,'Legendado','2026-12-24 19:00:00'),(80,80,80,'Dublado','2026-12-25 10:00:00'),(81,81,81,'Legendado','2026-12-26 11:00:00'),(82,82,82,'Legendado','2026-12-27 12:00:00'),(83,83,83,'Legendado','2026-12-28 13:00:00'),(84,84,84,'Legendado','2026-12-01 14:00:00'),(85,85,85,'Legendado','2026-12-02 15:00:00'),(86,86,86,'Dublado','2026-12-03 16:00:00'),(87,87,87,'Legendado','2026-12-04 17:00:00'),(88,88,88,'Legendado','2026-12-05 18:00:00'),(89,89,89,'Dublado','2026-12-06 19:00:00'),(90,90,90,'Legendado','2026-12-07 10:00:00'),(91,91,91,'Legendado','2026-12-08 11:00:00'),(92,92,92,'Legendado','2026-12-09 12:00:00'),(93,93,93,'Legendado','2026-12-10 13:00:00'),(94,94,94,'Legendado','2026-12-11 14:00:00'),(95,95,95,'Legendado','2026-12-12 15:00:00'),(96,96,96,'Legendado','2026-12-13 16:00:00'),(97,97,97,'Dublado','2026-12-14 17:00:00'),(98,98,98,'Legendado','2026-12-15 18:00:00'),(99,99,99,'Dublado','2026-12-16 19:00:00'),(100,100,100,'Dublado','2026-12-17 10:00:00');
/*!40000 ALTER TABLE `sessao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-10 18:45:00
