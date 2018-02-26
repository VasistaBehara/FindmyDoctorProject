-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: findmydoctor
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment` (
  `PId` int(11) NOT NULL,
  `DocId` int(11) NOT NULL,
  `Time` varchar(45) DEFAULT NULL,
  `Location` varchar(45) DEFAULT NULL,
  `HId` int(11) DEFAULT NULL,
  `ClnicId` int(11) DEFAULT NULL,
  PRIMARY KEY (`PId`,`DocId`),
  KEY `doctor id_idx` (`DocId`),
  KEY `Hospital id_idx` (`HId`),
  CONSTRAINT `Hospital id` FOREIGN KEY (`HId`) REFERENCES `hospital` (`HId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `PATIENT ID` FOREIGN KEY (`PId`) REFERENCES `patients` (`PId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `doctor id` FOREIGN KEY (`DocId`) REFERENCES `doctor` (`docId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `day1`
--

DROP TABLE IF EXISTS `day1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `day1` (
  `DocId` int(11) NOT NULL,
  `T1` varchar(40) DEFAULT NULL,
  `T2` varchar(40) DEFAULT NULL,
  `T3` varchar(40) DEFAULT NULL,
  `T4` varchar(40) DEFAULT NULL,
  `T5` varchar(40) DEFAULT NULL,
  `T6` varchar(40) DEFAULT NULL,
  `T7` varchar(40) DEFAULT NULL,
  `T8` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`DocId`),
  CONSTRAINT `DocId_day1` FOREIGN KEY (`DocId`) REFERENCES `doctor` (`docId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `day1`
--

LOCK TABLES `day1` WRITE;
/*!40000 ALTER TABLE `day1` DISABLE KEYS */;
INSERT INTO `day1` VALUES (1001,'available','not available','available','not available','available','not available','not available','not available'),(1002,'available','not available','available','not available','available','not available','not available','not available'),(1003,'available','available','available','not available','not available','not available','available','available'),(1004,'not available','not available','not available','available','available','available','available','available'),(1005,'available','available','available','available','not available','not available','not available','not available'),(1006,'available','not available','not available','not available','not available','available','not available','not available'),(1007,'not available','not available','not available','not available','not available','not available','not available','not available'),(1008,'not available','not available','not available','not available','not available','not available','not available','not available'),(1009,'available','available','available','available','not available','not available','not available','not available'),(1010,'available','not available','not available','not available','not available','available','not available','not available'),(1011,'available','not available','not available','not available','available','available','not available','available'),(1012,'available','available','available','not available','not available','not available','not available','available'),(1013,'available','not available','not available','not available','available','not available','not available','not available'),(1014,'available','not available','not available','not available','not available','not available','not available','not available'),(1015,'available','not available','not available','available','not available','not available','available','available'),(1016,'available','not available','not available','available','available','not available','not available','available'),(1017,'not available','available','available','not available','not available','not available','available','available'),(1018,'not available','not available','not available','not available','available','available','not available','not available'),(1019,'not available','available','not available','available','not available','available','not available','available'),(1020,'not available','available','available','not available','not available','available','available','not available'),(1021,'not available','not available','not available','not available','available','available','not available','not available'),(1022,'available','available','available','available','not available','not available','not available','not available'),(1023,'not available','not available','not available','not available','not available','not available','not available','available'),(1024,'available','available','available','not available','not available','not available','not available','available'),(1025,'not available','available','available','available','available','not available','not available','not available'),(1026,'available','not available','not available','not available','not available','available','available','not available'),(1027,'available','not available','not available','not available','not available','not available','not available','not available'),(1028,'available','not available','not available','not available','not available','not available','not available','not available'),(1029,'not available','available','available','not available','not available','available','available','not available'),(1030,'not available','available','available','not available','not available','available','not available','not available');
/*!40000 ALTER TABLE `day1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `day2`
--

DROP TABLE IF EXISTS `day2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `day2` (
  `DocId` int(11) NOT NULL,
  `T21` varchar(40) DEFAULT NULL,
  `T22` varchar(40) DEFAULT NULL,
  `T23` varchar(40) DEFAULT NULL,
  `T24` varchar(40) DEFAULT NULL,
  `T25` varchar(40) DEFAULT NULL,
  `T26` varchar(40) DEFAULT NULL,
  `T27` varchar(40) DEFAULT NULL,
  `T28` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`DocId`),
  CONSTRAINT `Day1DocID` FOREIGN KEY (`DocId`) REFERENCES `doctor` (`docId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `day2`
--

LOCK TABLES `day2` WRITE;
/*!40000 ALTER TABLE `day2` DISABLE KEYS */;
INSERT INTO `day2` VALUES (1001,'available','not available','available','not available','available','not available','not available','not available'),(1002,'available','not available','available','not available','available','not available','not available','not available'),(1003,'available','available','available','not available','not available','not available','available','available'),(1004,'not available','not available','not available','available','available','available','available','available'),(1005,'available','available','available','available','not available','not available','not available','not available'),(1006,'available','not available','not available','not available','not available','available','not available','not available'),(1007,'not available','not available','not available','not available','not available','not available','not available','not available'),(1008,'not available','not available','not available','not available','not available','not available','not available','not available'),(1009,'available','available','available','available','not available','not available','not available','not available'),(1010,'available','not available','not available','not available','not available','available','not available','not available'),(1011,'available','not available','not available','not available','available','available','not available','available'),(1012,'available','available','available','not available','not available','not available','not available','available'),(1013,'available','not available','not available','not available','available','not available','not available','not available'),(1014,'available','not available','not available','not available','not available','not available','not available','not available'),(1015,'available','not available','not available','available','not available','not available','available','available'),(1016,'available','not available','not available','available','available','not available','not available','available'),(1017,'not available','available','available','not available','not available','not available','available','available'),(1018,'not available','not available','not available','not available','available','available','not available','not available'),(1019,'not available','available','not available','available','not available','available','not available','available'),(1020,'not available','available','available','not available','not available','available','available','not available'),(1021,'not available','not available','not available','not available','available','available','not available','not available'),(1022,'available','available','available','available','not available','not available','not available','not available'),(1023,'not available','not available','not available','not available','not available','not available','not available','available'),(1024,'available','available','available','not available','not available','not available','not available','available'),(1025,'not available','available','available','available','available','not available','not available','not available'),(1026,'available','not available','not available','not available','not available','available','available','not available'),(1027,'available','not available','not available','not available','not available','not available','not available','not available'),(1028,'available','not available','not available','not available','not available','not available','not available','not available'),(1029,'not available','available','available','not available','not available','available','available','not available'),(1030,'not available','available','available','not available','not available','available','not available','not available');
/*!40000 ALTER TABLE `day2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `day3`
--

DROP TABLE IF EXISTS `day3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `day3` (
  `DocId` int(11) NOT NULL,
  `T31` varchar(40) DEFAULT NULL,
  `T32` varchar(40) DEFAULT NULL,
  `T33` varchar(40) DEFAULT NULL,
  `T34` varchar(40) DEFAULT NULL,
  `T35` varchar(40) DEFAULT NULL,
  `T36` varchar(40) DEFAULT NULL,
  `T37` varchar(40) DEFAULT NULL,
  `T38` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`DocId`),
  CONSTRAINT `DocId_day3` FOREIGN KEY (`DocId`) REFERENCES `doctor` (`docId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `day3`
--

LOCK TABLES `day3` WRITE;
/*!40000 ALTER TABLE `day3` DISABLE KEYS */;
INSERT INTO `day3` VALUES (1001,'available','not available','available','not available','available','not available','not available','not available'),(1002,'available','not available','available','not available','available','not available','not available','not available'),(1003,'available','available','available','not available','not available','not available','available','available'),(1004,'not available','not available','not available','available','available','available','available','available'),(1005,'available','available','available','available','not available','not available','not available','not available'),(1006,'available','not available','not available','not available','not available','available','not available','not available'),(1007,'not available','not available','not available','not available','not available','not available','not available','not available'),(1008,'not available','not available','not available','not available','not available','not available','not available','not available'),(1009,'available','available','available','available','not available','not available','not available','not available'),(1010,'available','not available','not available','not available','not available','available','not available','not available'),(1011,'available','not available','not available','not available','available','available','not available','available'),(1012,'available','available','available','not available','not available','not available','not available','available'),(1013,'available','not available','not available','not available','available','not available','not available','not available'),(1014,'available','not available','not available','not available','not available','not available','not available','not available'),(1015,'available','not available','not available','available','not available','not available','available','available'),(1016,'available','not available','not available','available','available','not available','not available','available'),(1017,'not available','available','available','not available','not available','not available','available','available'),(1018,'not available','not available','not available','not available','available','available','not available','not available'),(1019,'not available','available','not available','available','not available','available','not available','available'),(1020,'not available','available','available','not available','not available','available','available','not available'),(1021,'not available','not available','not available','not available','available','available','not available','not available'),(1022,'available','available','available','available','not available','not available','not available','not available'),(1023,'not available','not available','not available','not available','not available','not available','not available','available'),(1024,'available','available','available','not available','not available','not available','not available','available'),(1025,'not available','available','available','available','available','not available','not available','not available'),(1026,'available','not available','not available','not available','not available','available','available','not available'),(1027,'available','not available','not available','not available','not available','not available','not available','not available'),(1028,'available','not available','not available','not available','not available','not available','not available','not available'),(1029,'not available','available','available','not available','not available','available','available','not available'),(1030,'not available','available','available','not available','not available','available','not available','not available');
/*!40000 ALTER TABLE `day3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctor` (
  `docId` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Age` int(11) NOT NULL,
  `Sex` varchar(45) NOT NULL,
  `Department` varchar(45) NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `Location` varchar(45) NOT NULL,
  `Pricing` float DEFAULT NULL,
  `Docpic` blob,
  PRIMARY KEY (`docId`),
  UNIQUE KEY `DocId_UNIQUE` (`docId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1001,'james cook',36,'M','dentist',NULL,'aurthur street East',60,NULL),(1002,'stephen black',45,'M','dentist',NULL,'Balmoral street',65,NULL),(1003,'jack williams',55,'M','dentist',NULL,'Baker Avenue',50,NULL),(1004,'rose turner',33,'F','dentist',NULL,'Beverly Street',55,NULL),(1005,'mi chang',40,'F','dentist',NULL,'Lacewood Drive',50,NULL),(1006,'shane watson',55,'M','Neurologist',NULL,'jon street',60,NULL),(1007,'sheela kumar',32,'F','gynecologist',NULL,'machar street',100,NULL),(1008,'adam jhonson',44,'M','gynecologist',NULL,'helen street',90,NULL),(1009,'cody rhodes',60,'M','gynecologist',NULL,'graham road',95,NULL),(1010,'jeremy wallop',36,'M','gynecologist',NULL,'madison street',80,NULL),(1011,'lilly smurf',55,'F','gynecologist',NULL,'manitou street',85,NULL),(1012,'harjith singh',42,'M','Neurologist',NULL,'maple avenue',90,NULL),(1013,'jhonny bravo',39,'M','pediatrician',NULL,'edward street',100,NULL),(1014,'adam smith',66,'M','pediatrician',NULL,'sunrise boulevard',110,NULL),(1015,'mary smith',62,'F','pediatrician',NULL,'sherrington drive',120,NULL),(1016,'jeffery taylor',44,'M','pediatrician',NULL,'golf links road',110,NULL),(1017,'Michael Jackson',43,'M','pediatrician',NULL,'oliver street',115,NULL),(1018,'jennifer miller',39,'F','Neurologist',NULL,'oliver street',100,NULL),(1019,'olivia brown',46,'F','orthopedist',NULL,'central avenue',80,NULL),(1020,'Ava stachanowska',49,'F','orthopedist',NULL,'winnipeg avenue',85,NULL),(1021,'jemma stones',33,'F','orthopedist',NULL,'fort william road',85,NULL),(1022,'roger moore',55,'M','orthopedist',NULL,'bay street',90,NULL),(1023,'wayne Thompson',43,'M','orthopedist',NULL,'memorial street',85,NULL),(1024,'william harris',42,'M','Neurologist',NULL,'court street',80,NULL),(1025,'Stephen walker',44,'M','dermatologist',NULL,'waterfront',70,NULL),(1026,'isabella young',46,'F','dermatologist',NULL,'rockwood street',65,NULL),(1027,'tong lee',55,'M','dermatologist',NULL,'red river road',65,NULL),(1028,'praveen sharma',48,'M','dermatologist',NULL,'windsor road',60,NULL),(1029,'rodolph kachum',44,'M','dermatologist',NULL,'carrik street',70,NULL),(1030,'ryan chuck',55,'M','Neurologist',NULL,'thunderbay regional hospital',75,NULL);
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital`
--

DROP TABLE IF EXISTS `hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hospital` (
  `HId` int(11) NOT NULL,
  `HospName` varchar(45) NOT NULL,
  `HLocation` varchar(45) NOT NULL,
  `docId` int(11) NOT NULL,
  PRIMARY KEY (`HId`,`docId`),
  KEY `Doctor  Id in Hospital_idx` (`docId`),
  CONSTRAINT `Doctor  Id in Hospital` FOREIGN KEY (`docId`) REFERENCES `doctor` (`docId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital`
--

LOCK TABLES `hospital` WRITE;
/*!40000 ALTER TABLE `hospital` DISABLE KEYS */;
INSERT INTO `hospital` VALUES (2001,'Thunderbay Regional hospital','980 oliver street',1001),(2001,'Thunderbay Regional hospital','980 oliver street',1005),(2001,'Thunderbay Regional hospital','980 oliver street',1009),(2001,'Thunderbay Regional hospital','980 oliver street',1011),(2001,'Thunderbay Regional hospital','980 oliver street',1017),(2001,'Thunderbay Regional hospital','980 oliver street',1020),(2001,'Thunderbay Regional hospital','980 oliver street',1021),(2001,'Thunderbay Regional hospital','980 oliver street',1026),(2001,'Thunderbay Regional hospital','980 oliver street',1030),(2002,'thunderbay pioneer ridge','750 tungsten street',1002),(2002,'thunderbay pioneer ridge','750 tungsten street',1003),(2002,'thunderbay pioneer ridge','750 tungsten street',1015),(2002,'thunderbay pioneer ridge','750 tungsten street',1028),(2002,'thunderbay pioneer ridge','750 tungsten street',1030);
/*!40000 ALTER TABLE `hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patients` (
  `PId` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Age` varchar(2) NOT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `phone` bigint(12) DEFAULT NULL,
  PRIMARY KEY (`PId`),
  UNIQUE KEY `PId_UNIQUE` (`PId`),
  UNIQUE KEY `Email_UNIQUE` (`Email`),
  UNIQUE KEY `phone_UNIQUE` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (3001,'john snow','28','jsnow@gmail.com',8888888225);
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time`
--

DROP TABLE IF EXISTS `time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time` (
  `TimeId` varchar(5) NOT NULL,
  `Start_Time` time(6) DEFAULT NULL,
  `End_Time` time(6) DEFAULT NULL,
  PRIMARY KEY (`TimeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time`
--

LOCK TABLES `time` WRITE;
/*!40000 ALTER TABLE `time` DISABLE KEYS */;
INSERT INTO `time` VALUES ('T1','09:00:00.000000','10:00:00.000000'),('T2','10:00:00.000000','11:00:00.000000'),('T3','11:00:00.000000','12:00:00.000000'),('T4','12:00:00.000000','13:00:00.000000'),('T5','13:00:00.000000','14:00:00.000000'),('T6','14:00:00.000000','15:00:00.000000'),('T7','15:00:00.000000','16:00:00.000000'),('T8','16:00:00.000000','17:00:00.000000');
/*!40000 ALTER TABLE `time` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-25 23:19:13
