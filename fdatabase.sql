-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: ecare
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `user_id` bigint NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'infoway','123','admin');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assistant_service`
--

DROP TABLE IF EXISTS `assistant_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assistant_service` (
  `id` int NOT NULL AUTO_INCREMENT,
  `service_id` int DEFAULT NULL,
  `profile_photo` varchar(1000) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email_id` varchar(128) NOT NULL,
  `phone_no` varchar(45) NOT NULL,
  `experience` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `emailId` (`email_id`),
  UNIQUE KEY `phoneNo` (`phone_no`),
  KEY `assistantibfk1` (`service_id`),
  CONSTRAINT `assistantibfk1` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assistant_service`
--

LOCK TABLES `assistant_service` WRITE;
/*!40000 ALTER TABLE `assistant_service` DISABLE KEYS */;
INSERT INTO `assistant_service` VALUES (1,1,NULL,'Pranita Mokashe','P@gmail.com','7878787878','10'),(2,1,NULL,'ghhghvggggg','ghh','5666666666667','12 yr'),(5,1,NULL,'hbhbh','rrttt','7888888888','9');
/*!40000 ALTER TABLE `assistant_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emergency_doctor_service`
--

DROP TABLE IF EXISTS `emergency_doctor_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emergency_doctor_service` (
  `id` int NOT NULL AUTO_INCREMENT,
  `service_id` int DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email_id` varchar(128) NOT NULL,
  `phone_no` varchar(45) NOT NULL,
  `experience` varchar(45) DEFAULT NULL,
  `specialization` varchar(45) DEFAULT NULL,
  `visitDate` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `emailId` (`email_id`),
  KEY `serviceId` (`service_id`),
  CONSTRAINT `emergency_doctor_service_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emergency_doctor_service`
--

LOCK TABLES `emergency_doctor_service` WRITE;
/*!40000 ALTER TABLE `emergency_doctor_service` DISABLE KEYS */;
INSERT INTO `emergency_doctor_service` VALUES (1,2,'Dr.Pushparaj Karmarkar','pushparar23@gmail.com','9876543212','20 Years','General Surgery','null'),(2,2,'Dr.Jatinder Kumar','jatinderkumar@gmail.com','7865439012','30 Years','Consultant Cardia and Vascular Surgeon','null'),(3,2,'Dr.Manisha Kulkarni','manishakulkarni@gmail.com','8605468798','25 Years','Cardiac Rehabilitation and Physiotherapy','null'),(4,2,'Dr.Vaibhav Sasurkar','vaibhavsasurkar@gmail.com','9087654321','15 Years','Consultant Orthopaedic Surgeon','null'),(5,2,'Dr.Amol Khot','amolkhot@gmail.com','890987651','35 Years','Consultant ENT Surgeon','null'),(6,2,'Dr.Savani Joshi','savani@gmail.com','8796543210','20 Years','Dermatologists','null'),(7,2,'Dr.Rajendra Mehta','rajendremehta@gmail.com','7685904321','20 Years','Allergists-Immunologists','null'),(8,2,'Dr.Richa Mirashi','richa@gmail.com','7689054321','30 Years','Surgical Oncology','null'),(9,2,'Dr.Vinod Bachrani',' vinodbachrani@gmail.com','9109876543','40 Years','Consultant Anaesthesiologist','null');
/*!40000 ALTER TABLE `emergency_doctor_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meal_service`
--

DROP TABLE IF EXISTS `meal_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meal_service` (
  `id` int NOT NULL AUTO_INCREMENT,
  `service_id` int DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `serviceId` (`service_id`),
  CONSTRAINT `meal_service_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meal_service`
--

LOCK TABLES `meal_service` WRITE;
/*!40000 ALTER TABLE `meal_service` DISABLE KEYS */;
INSERT INTO `meal_service` VALUES (1,3,'Diabetic Meal'),(3,3,'Regular Meals');
/*!40000 ALTER TABLE `meal_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_service`
--

DROP TABLE IF EXISTS `product_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_service` (
  `id` int NOT NULL AUTO_INCREMENT,
  `service_id` int DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `serviceId` (`service_id`),
  CONSTRAINT `product_service_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_service`
--

LOCK TABLES `product_service` WRITE;
/*!40000 ALTER TABLE `product_service` DISABLE KEYS */;
INSERT INTO `product_service` VALUES (1,4,'Walker');
/*!40000 ALTER TABLE `product_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registrant`
--

DROP TABLE IF EXISTS `registrant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registrant` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `confirm_password` varchar(45) NOT NULL,
  `user_name` varchar(45) NOT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registrant`
--

LOCK TABLES `registrant` WRITE;
/*!40000 ALTER TABLE `registrant` DISABLE KEYS */;
INSERT INTO `registrant` VALUES (1,'ray','ray123','ray123','ray','Female',NULL,NULL),(2,'s','shre','shre','shre','Female',NULL,NULL),(3,'shraddha','shravi24','shravi24','shravi24','Female',NULL,NULL),(4,'Shreya','shravi456','shravi456','shravi34','Female',NULL,NULL),(5,'daya abc','daya','daya','daya','Male',NULL,NULL);
/*!40000 ALTER TABLE `registrant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service` (
  `id` int NOT NULL AUTO_INCREMENT,
  `service_name` varchar(45) DEFAULT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES (1,'Assistant',10000),(2,'Doctor',20000),(3,'Meal',5000),(4,'Product',5000);
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscriptions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `registrant_id` int DEFAULT NULL,
  `assistant_service` tinyint(1) DEFAULT NULL,
  `doctor_service` tinyint(1) DEFAULT NULL,
  `meal_service` tinyint(1) DEFAULT NULL,
  `products_service` tinyint(1) DEFAULT NULL,
  `totalcost` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ibfk1` (`registrant_id`),
  CONSTRAINT `ibfk1` FOREIGN KEY (`registrant_id`) REFERENCES `registrant` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions`
--

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
INSERT INTO `subscriptions` VALUES (1,NULL,1,1,1,1,1500),(2,NULL,1,0,0,0,1500),(3,NULL,1,0,0,0,1500),(4,NULL,1,0,0,0,1500),(5,NULL,0,0,0,0,1500),(6,NULL,1,0,1,0,1500),(7,NULL,1,0,1,0,1500),(8,NULL,1,0,1,0,1500),(9,NULL,1,1,1,1,1500),(10,NULL,1,1,1,1,1500),(11,NULL,1,1,1,1,1500),(12,NULL,1,1,1,1,1500),(13,NULL,1,1,1,1,1500),(14,NULL,1,1,1,1,1500),(15,NULL,1,1,1,1,1500),(16,NULL,1,1,1,1,1500),(17,NULL,1,1,1,1,1500),(18,NULL,0,1,1,1,1500),(19,NULL,0,1,1,1,1500),(20,NULL,0,0,1,1,1500),(21,NULL,0,0,1,1,1500),(22,NULL,0,0,1,1,1500),(23,NULL,0,0,1,1,1500),(24,NULL,0,0,1,1,1500),(25,NULL,1,1,1,1,1500),(26,NULL,1,1,1,1,1500),(27,NULL,1,0,1,0,1500),(28,NULL,1,1,1,1,1500),(29,NULL,1,0,1,1,1500),(30,NULL,0,1,1,0,1500),(31,NULL,1,1,1,1,1500),(32,NULL,1,1,0,1,1500),(33,NULL,1,1,1,1,1500),(34,NULL,0,1,1,0,1500),(35,NULL,1,1,1,1,1500),(36,NULL,1,1,0,1,1500),(37,NULL,1,1,0,1,1500),(38,NULL,1,0,0,1,1500),(39,NULL,1,1,1,1,1500),(40,NULL,1,0,1,1,1500),(41,NULL,1,0,0,1,1500);
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `registrant_id` int DEFAULT NULL,
  `subscription_id` int DEFAULT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `useribfk1` (`subscription_id`),
  KEY `useribfk2` (`registrant_id`),
  CONSTRAINT `useribfk1` FOREIGN KEY (`subscription_id`) REFERENCES `subscriptions` (`id`),
  CONSTRAINT `useribfk2` FOREIGN KEY (`registrant_id`) REFERENCES `registrant` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,NULL,NULL,NULL,NULL,'shalini palace','Bharati Vidyapeeth 411046',NULL,NULL,'Vinaya'),(2,NULL,NULL,NULL,NULL,'baramati','Sadashive Peth 411024',NULL,NULL,'tasleem'),(3,NULL,NULL,NULL,NULL,'mamma','Katraj 411043',NULL,NULL,'mam'),(4,NULL,NULL,NULL,NULL,'pune','Shivajinagar 411016',NULL,NULL,'maya');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_address`
--

DROP TABLE IF EXISTS `user_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `address` varchar(128) NOT NULL,
  `pincode` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `user_address_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_address`
--

LOCK TABLES `user_address` WRITE;
/*!40000 ALTER TABLE `user_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_address` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-12 18:20:58
