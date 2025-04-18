-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: AirportManagementSystem
-- ------------------------------------------------------
-- Server version	5.5.62

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `flight`
--

DROP TABLE IF EXISTS `flight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flight` (
  `Flight_no` varchar(5) NOT NULL,
  `Schedule_id` decimal(10,0) NOT NULL,
  `Journey_id` decimal(10,0) NOT NULL,
  PRIMARY KEY (`Flight_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight`
--

LOCK TABLES `flight` WRITE;
/*!40000 ALTER TABLE `flight` DISABLE KEYS */;
INSERT INTO `flight` VALUES ('AI407',201,513),('AI408',202,514),('AI409',203,516),('AI410',204,517),('AI411',205,518),('AI412',206,519),('AI413',207,520),('AI414',208,521),('AI415',209,522),('AI416',210,523),('AI417',211,524),('AI418',212,525);
/*!40000 ALTER TABLE `flight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journey`
--

DROP TABLE IF EXISTS `journey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journey` (
  `Journey_Id` decimal(10,0) NOT NULL,
  `Meal` varchar(10) NOT NULL,
  `Other_info` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Journey_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journey`
--

LOCK TABLES `journey` WRITE;
/*!40000 ALTER TABLE `journey` DISABLE KEYS */;
INSERT INTO `journey` VALUES (513,'YES','Require Wheelchair'),(514,'NO',NULL),(515,'YES','Require Wheelchair'),(516,'NO','Require Wheelchair'),(517,'YES',NULL),(518,'YES',NULL),(519,'NO',NULL),(520,'YES',NULL),(521,'NO','Require Wheelchair'),(522,'YES',NULL),(523,'YES',NULL),(524,'NO',NULL);
/*!40000 ALTER TABLE `journey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passenger`
--

DROP TABLE IF EXISTS `passenger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passenger` (
  `P_ID` decimal(10,0) NOT NULL,
  `First_Name` varchar(30) NOT NULL,
  `Last_Name` varchar(30) NOT NULL,
  `P_age` decimal(3,0) DEFAULT NULL,
  `Residence` varchar(50) NOT NULL,
  `Phone_no` decimal(10,0) NOT NULL,
  `Relative_phone_no` decimal(10,0) DEFAULT NULL,
  `Email_Address` varchar(60) NOT NULL,
  `Passport_no` varchar(20) NOT NULL,
  `Ticket_PNR` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`P_ID`),
  UNIQUE KEY `passenger_up` (`Passport_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passenger`
--

LOCK TABLES `passenger` WRITE;
/*!40000 ALTER TABLE `passenger` DISABLE KEYS */;
INSERT INTO `passenger` VALUES (1458972349,'Raghav','Nama',30,'Mumbai',9937623815,8658423614,'Raghav@gmail.com','L341578426','PNQ010'),(2458972349,'Sagar','Gurav',30,'Mumbai',9947623815,9668423614,'sagar@gmail.com','M231578426','PNQ011'),(3458972349,'Harshal','Sonawne',30,'Mumbai',7547623815,9658423614,'Harshal@gmail.com','N561578426','PNQ012'),(4458972349,'Vivek','Pawar',30,'Mumbai',9047623815,8658423611,'vivek@gmail.com','O091578426','PNQ013'),(5458972349,'Chetan','Girase',30,'Mumbai',8547663815,9658123614,'chetan@gmail.com','P871578426','PNQ014'),(6458972341,'Shravan','Khedkhar',30,'Mumbai',9547623889,9658423609,'shravan@gmail.com','H341578427','PNQ006'),(6458972342,'Aniket','Sonkamble',30,'Mumbai',9547623856,9658423667,'aniket@gmail.com','I123578426','PNQ007'),(6458972343,'Anmol','Patil',30,'Mumbai',9547623878,9658423634,'anmol@gmail.com','J8971578426','PNQ008'),(6458972344,'Mahi','Gupta',30,'Mumbai',9547623897,9658423334,'mahi@gmail.com','K671578426','PNQ009'),(6458972345,'Rohit','Badgujar',20,'Delhi',5674328896,6314895627,'Rohit@gmail.com','D568749125','PNQ001'),(6458972346,'Vaibhav','Gujrathi',19,'Delhi',6314895627,2467831435,'Vaibhav@gmail.com','E364785521','PNQ002'),(6458972347,'Muzammil','Khatik',20,'Jaipur',2467831596,9875546258,'Muzammil@gmail.com','F578942451','PNQ003'),(6458972348,'Shlok','Salunke',35,'Indore',6489521374,9865421374,'Shlok@gmail.com','G246458713','PNQ004'),(6458972349,'Tejas','Deore',15,'Mumbai',9547623815,9658423614,'Tejas@gmail.com','H341578426','PNQ005'),(8458972349,'Lokesh','Chaudhary',30,'Mumbai',9547627815,9658409614,'lokesh@gmail.com','Q1241578426','PNQ015');
/*!40000 ALTER TABLE `passenger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule` (
  `Schedule_Id` decimal(20,0) NOT NULL,
  `Depar_location` varchar(50) NOT NULL,
  `Depar_date` date NOT NULL,
  `Depar_time` time NOT NULL,
  `Arri_location` varchar(50) NOT NULL,
  `Arri_date` date NOT NULL,
  `Arri_time` time NOT NULL,
  PRIMARY KEY (`Schedule_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` VALUES (201,'Delhi','2021-10-25','06:30:00','Dubai','2021-10-25','09:00:00'),(202,'Dubai','2021-10-26','10:30:00','Delhi','2021-10-25','12:00:00'),(203,'Delhi','2021-10-26','06:30:00','New York','2021-10-27','02:00:00'),(204,'New York','2021-10-28','12:30:00','Delhi','2021-10-29','14:00:00'),(205,'Delhi','2021-10-30','15:30:00','Mumbai','2021-10-30','17:00:00'),(206,'London','2021-10-12','15:30:00','Mumbai','2021-10-14','17:00:00'),(207,'Pune','2021-10-13','15:30:00','Mumbai','2021-10-13','19:00:00'),(208,'Paris','2021-10-14','15:30:00','Mumbai','2021-10-16','20:00:00'),(209,'Africa','2021-10-14','15:30:00','Delhi','2021-10-17','11:00:00'),(211,'Indore','2021-10-10','15:30:00','Mumbai','2021-10-10','18:00:00');
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket` (
  `Ticket_PNR` varchar(10) NOT NULL,
  `Journey_Id` decimal(10,0) NOT NULL,
  `Schedule_ID` decimal(10,0) NOT NULL,
  `Fair` int(11) NOT NULL,
  `Class` varchar(10) NOT NULL,
  `Status` varchar(15) NOT NULL,
  PRIMARY KEY (`Ticket_PNR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES ('PNQ001',513,201,25000,'ECONOMY','CONFIRMED'),('PNQ002',514,202,25000,'BUSINESS','CONFIRMED'),('PNQ003',513,203,85000,'FIRST','CONFIRMED'),('PNQ004',515,204,85000,'ECONOMY','NOT CONFIRMED'),('PNQ005',517,205,12000,'BUSSINESS','CONFIRMED'),('PNQ006',518,206,10000,'ECONOMY','NOT CONFIRMED'),('PNQ007',519,207,25000,'FIRST',' CONFIRMED'),('PNQ008',511,208,25000,'ECONOMY',' CONFIRMED'),('PNQ009',512,209,25000,'BUSSINESS','NOT CONFIRMED'),('PNQ010',515,210,30000,'FIRST','CONFIRMED'),('PNQ011',510,211,25000,'ECONOMY',' CONFIRMED'),('PNQ012',516,212,35000,'ECONOMY',' CONFIRMED');
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-05 20:17:06
