-- MySQL dump 10.13  Distrib 8.3.0, for Win64 (x86_64)
--
-- Host: localhost    Database: railway_reservation
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `admin_id` int NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'admin1','password123'),(2,'admin2','password456'),(5,'admin5','securepass2'),(6,'admin6','mypassword1'),(7,'admin7','mypassword2'),(8,'admin8','strongpass1'),(9,'admin9','strongpass2'),(10,'admin10','pass1234'),(11,'admin11','pass5678'),(12,'admin12','adminpass1'),(13,'admin13','adminpass2'),(14,'admin14','passwordX'),(15,'admin15','passwordY');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservations` (
  `reservation_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `train_id` int DEFAULT NULL,
  `reservation_date` date DEFAULT NULL,
  `seat_number` int DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`reservation_id`),
  KEY `user_id` (`user_id`),
  KEY `train_id` (`train_id`),
  CONSTRAINT `reservations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `reservations_ibfk_2` FOREIGN KEY (`train_id`) REFERENCES `trains` (`train_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservations`
--

LOCK TABLES `reservations` WRITE;
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
INSERT INTO `reservations` VALUES (1,1,101,'2024-11-25',1,'Cancelled'),(2,1,103,'2024-11-26',1,'Confirmed'),(3,2,104,'2024-11-26',2,'Confirmed'),(4,3,105,'2024-11-27',3,'Confirmed'),(5,4,101,'2024-11-28',4,'Confirmed'),(6,1,106,'2024-11-26',1,'Confirmed'),(7,2,107,'2024-11-26',2,'Confirmed'),(8,3,108,'2024-11-27',3,'Confirmed'),(9,4,109,'2024-11-27',4,'Confirmed'),(10,5,110,'2024-11-28',5,'Confirmed'),(11,6,106,'2024-11-29',6,'Confirmed'),(12,7,107,'2024-11-30',7,'Confirmed'),(13,8,108,'2024-12-01',8,'Confirmed'),(14,9,109,'2024-12-02',9,'Confirmed'),(15,10,110,'2024-12-03',10,'Confirmed');
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `routes`
--

DROP TABLE IF EXISTS `routes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `routes` (
  `route_id` int NOT NULL,
  `train_id` int DEFAULT NULL,
  `station_id` int DEFAULT NULL,
  `arrival_time` time DEFAULT NULL,
  `departure_time` time DEFAULT NULL,
  PRIMARY KEY (`route_id`),
  KEY `train_id` (`train_id`),
  KEY `station_id` (`station_id`),
  CONSTRAINT `routes_ibfk_1` FOREIGN KEY (`train_id`) REFERENCES `trains` (`train_id`),
  CONSTRAINT `routes_ibfk_2` FOREIGN KEY (`station_id`) REFERENCES `stations` (`station_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `routes`
--

LOCK TABLES `routes` WRITE;
/*!40000 ALTER TABLE `routes` DISABLE KEYS */;
INSERT INTO `routes` VALUES (1,101,1,'08:00:00','08:15:00'),(2,102,2,'09:00:00','09:15:00'),(3,103,3,'10:30:00','10:45:00'),(4,104,4,'11:30:00','11:45:00'),(5,105,5,'12:00:00','12:15:00'),(6,103,6,'13:00:00','13:15:00'),(7,104,7,'14:00:00','14:15:00'),(8,104,8,'15:00:00','15:15:00'),(9,105,9,'16:00:00','16:15:00'),(10,105,10,'17:00:00','17:15:00'),(11,106,11,'18:00:00','18:15:00'),(12,106,12,'19:00:00','19:15:00'),(13,107,13,'20:00:00','20:15:00'),(14,107,14,'21:00:00','21:15:00'),(15,108,15,'22:00:00','22:15:00');
/*!40000 ALTER TABLE `routes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stations`
--

DROP TABLE IF EXISTS `stations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stations` (
  `station_id` int NOT NULL,
  `station_name` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`station_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stations`
--

LOCK TABLES `stations` WRITE;
/*!40000 ALTER TABLE `stations` DISABLE KEYS */;
INSERT INTO `stations` VALUES (1,'Central Station','City A'),(2,'West Station','City B'),(3,'East Station','City C'),(4,'North Station','City D'),(5,'South Station','City E'),(6,'Harbor Station','City F'),(7,'Greenfield Station','City G'),(8,'Riverside Station','City H'),(9,'Grand Central','City I'),(10,'Union Station','City J'),(11,'Metro Station','City K'),(12,'Downtown Station','City L'),(13,'Park Avenue Station','City M'),(14,'Airport Station','City N'),(15,'Hilltop Station','City O');
/*!40000 ALTER TABLE `stations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tickets` (
  `ticket_id` int NOT NULL,
  `reservation_id` int DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `issued_date` date DEFAULT NULL,
  PRIMARY KEY (`ticket_id`),
  KEY `reservation_id` (`reservation_id`),
  CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`reservation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (1,1,250.00,'2024-11-25'),(2,2,300.00,'2024-11-26'),(3,3,200.00,'2024-11-27'),(6,6,150.00,'2024-11-30'),(7,7,400.00,'2024-12-01'),(8,8,350.00,'2024-12-02'),(9,9,500.00,'2024-12-03'),(10,10,450.00,'2024-12-04'),(11,11,325.00,'2024-12-05'),(12,12,275.00,'2024-12-06'),(13,13,225.00,'2024-12-07'),(14,14,300.00,'2024-12-08'),(15,15,350.00,'2024-12-09');
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trains`
--

DROP TABLE IF EXISTS `trains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trains` (
  `train_id` int NOT NULL,
  `train_name` varchar(100) DEFAULT NULL,
  `source` varchar(50) DEFAULT NULL,
  `destination` varchar(50) DEFAULT NULL,
  `departure_time` time DEFAULT NULL,
  `arrival_time` time DEFAULT NULL,
  `total_seats` int DEFAULT NULL,
  `available_seats` int DEFAULT NULL,
  PRIMARY KEY (`train_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trains`
--

LOCK TABLES `trains` WRITE;
/*!40000 ALTER TABLE `trains` DISABLE KEYS */;
INSERT INTO `trains` VALUES (101,'Express 1','City A','City B','08:00:00','12:00:00',100,100),(102,'Express 2','City C','City D','14:00:00','18:00:00',150,150),(103,'Superfast Express','City E','City F','10:00:00','14:00:00',200,200),(104,'Intercity Express','City G','City H','16:00:00','20:00:00',180,180),(105,'Night Rider','City I','City J','22:00:00','06:00:00',100,100),(106,'Morning Star','City K','City L','06:00:00','10:00:00',120,120),(107,'Green Valley Express','City M','City N','12:00:00','16:00:00',150,150),(108,'Riverline','City O','City P','09:00:00','13:00:00',100,100),(109,'Metroline','City Q','City R','15:00:00','19:00:00',130,130),(110,'Night Express','City S','City T','23:00:00','05:00:00',200,200);
/*!40000 ALTER TABLE `trains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Alice','alice@example.com','1234567890',25,'Female'),(2,'Bob','bob@example.com','0987654321',30,'Male'),(3,'Charlie','charlie@example.com','9876543210',28,'Male'),(4,'Diana','diana@example.com','8765432109',24,'Female'),(5,'Ethan','ethan@example.com','7654321098',32,'Male'),(6,'Sophia','sophia@example.com','5551112233',22,'Female'),(7,'Liam','liam@example.com','5552223344',29,'Male'),(8,'Olivia','olivia@example.com','5553334455',27,'Female'),(9,'Noah','noah@example.com','5554445566',35,'Male'),(10,'Emma','emma@example.com','5555556677',23,'Female');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-25 11:53:19
