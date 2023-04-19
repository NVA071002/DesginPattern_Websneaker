CREATE DATABASE  IF NOT EXISTS `websneaker` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `websneaker`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: websneaker
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `detail_in`
--

DROP TABLE IF EXISTS `detail_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detail_in` (
  `ID_In` int NOT NULL,
  `ID_P` varchar(5) NOT NULL,
  `Amount` int NOT NULL,
  PRIMARY KEY (`ID_In`,`ID_P`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_in`
--

LOCK TABLES `detail_in` WRITE;
/*!40000 ALTER TABLE `detail_in` DISABLE KEYS */;
/*!40000 ALTER TABLE `detail_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice` (
  `ID_In` int NOT NULL AUTO_INCREMENT,
  `Date` date NOT NULL,
  `UID` varchar(10) NOT NULL,
  `TotalMoney` double NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Address` varchar(500) NOT NULL,
  PRIMARY KEY (`ID_In`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `ID_P` varchar(5) NOT NULL,
  `Name_P` varchar(20) DEFAULT NULL,
  `Price` int DEFAULT NULL,
  `Type` varchar(10) DEFAULT NULL,
  `Size` int DEFAULT NULL,
  `Image1` varchar(500) DEFAULT NULL,
  `Image2` varchar(500) DEFAULT NULL,
  `Image3` varchar(500) DEFAULT NULL,
  `Description` varchar(1500) DEFAULT NULL,
  PRIMARY KEY (`ID_P`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('sp01','Superstar',100,'Adidas',40,'imageprod/sp001/sp001_superstar.jpg\n','imageprod/sp001/sp001_superstar_1.jpg','imageprod/sp001/sp001_superstar_2.jpg','The adidas Superstar shoe, which was introduced as a basketball shoe in the 70s and one of the favorite models of hip hop artists in the 80s, is now among the indispensables of street fashion. Just like the basketball courts of the 70s, the shoe still offers a stylish look and extra protection with its world-famous rubber toe structure. Whether at the festival or on street walks, you can enjoy the comfort without fear of being stepped on. The model reflects the unique style of OG in its appearance with serrated 3-band details and the adidas Superstar logo box.'),('sp02','Stansmith',120,'Adidas',39,'imageprod\\sp002\\sp002_stansmith.jpg','imageprod\\sp002\\sp002_stansmith_1.jpg','imageprod\\sp002\\sp002_stansmith_2.jpg','For 50 years, the adidas Stan Smith Shoes have been a staple on the courts and on the streets. Their minimalist style is the very definition of effortless cool. But even icons have to change to stay rooted in the present, which is why this version of the trainers is created with recycled materials. It\'s part of our effort and commitment to help end plastic waste.\n\nThis product is made with Primegreen, a series of high-performance recycled materials. 50% of upper is recycled content. No virgin polyester.'),('sp03','Ultra4dfwd',200,'Adidas',44,'imageprod\\sp003\\sp003_ultra4dfwd.jpg','imageprod\\sp003\\sp003_ultra4dfwd_1.jpg','imageprod\\sp003\\sp003_ultra4dfwd_2.jpg','Running is all about forward momentum, and these shoes are designed to make it feel easier. The 3D-printed 4D midsole has targeted zones of support and absorption, finely tuned to reduce braking forces and turn the impact energy into forward motion. The result is a smooth ride that feels more like gliding than stop-and-go pounding on pavement. adidas PRIMEKNIT gives a foot-hugging fit, and the grippy rubber outsole provides traction on wet and dry surfaces to keep you going in all conditions.'),('sp04','Nmdr1',150,'Adidas',44,'imageprod\\sp004\\sp004_nmdr1.jpg','imageprod\\sp004\\sp004_nmdr1_1.jpg','imageprod\\sp004\\sp004_nmdr1_2.jpg','The city is ever-changing. Dare to keep up in these juniors\' adidas NMD_R1 Refined Shoes. Merging everyday style with top-tier adidas technology, these running-inspired sneakers keep you comfortably on the move thanks to energy-returning Boost cushioning. The flexible mesh upper hugs the foot so you can easily turn and switch directions anytime a new part of the city calls to you.\n\nThis product is made with Primeblue, a high-performance recycled material made in part with Parley Ocean Plastic. 50% of the upper is textile, 75% of the textile is Primeblue yarn. No virgin polyester.'),('sp05','Air Jordan Low',200,'Nike',44,'imageprod\\sp005\\sp005_airjordanlow.jpg','imageprod\\sp005\\sp005_airjordanlow_1.jpg','imageprod\\sp005\\sp005_airjordanlow_2.jpg','The Air Jordan 1 Low White Ghost Green features a white leather upper with Ghost Green overlays and Swooshes. From there, a checker-board woven Nike tag is stitched atop the tongue. An embroidered mini Swoosh on the toe wrap and silver heel tab adds the finishing touches to this OG model.'),('sp06',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('sp07',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('sp08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('sp09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('sp10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('sp11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('sp12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('sp13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('sp14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('sp15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('sp16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('sp17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('sp18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('sp19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('sp20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('sp21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('sp22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('sp23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('sp24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('sp25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('sp26',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('sp27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('sp28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('sp29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('sp30',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(500) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `perMiss` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-18 13:00:07
