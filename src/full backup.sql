-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: online_mobile_shopping
-- ------------------------------------------------------
-- Server version	5.7.10-log
create database  online_mobile_shopping;
use  online_mobile_shopping;
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
-- Table structure for table `add_product`
--

DROP TABLE IF EXISTS `add_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `add_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(200) DEFAULT NULL,
  `company_name` varchar(200) DEFAULT NULL,
  `product_name` varchar(200) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `add_product`
--

LOCK TABLES `add_product` WRITE;
/*!40000 ALTER TABLE `add_product` DISABLE KEYS */;
INSERT INTO `add_product` VALUES (1,'2.jpeg','oppo','oppoa3s','10000','india'),(2,'3.jpeg','redmi','redimi','20000','india'),(3,'9.jpg','oppo','oppoa3s','60000','india'),(4,'4.jpeg','oppo','oppoa3s','60000','india');
/*!40000 ALTER TABLE `add_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `mobile_number` varchar(200) DEFAULT NULL,
  `pincode` bigint(20) DEFAULT NULL,
  `locality` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `enter_city` varchar(200) DEFAULT NULL,
  `enter_state` varchar(200) DEFAULT NULL,
  `landmark` varchar(200) DEFAULT NULL,
  `alternate_mobile_no` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,1,'shreya','2286876',415409,'islampur','kudtuuiti','Maharashtra','Kolhapur','near ajinkya bazar','13131311'),(2,1,'shreya','2286876',415409,'islampur','kudtuuiti','Maharashtra','Jalgaon','near ajinkya bazar','13131311'),(3,1,'shreya','2286876',415409,'islampur','kudtuuiti','Maharashtra','Mumbai','near ajinkya bazar','13131311');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_signup`
--

DROP TABLE IF EXISTS `admin_signup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_signup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyname` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `firstname` varchar(200) DEFAULT NULL,
  `lastname` varchar(200) DEFAULT NULL,
  `addressline1` varchar(200) DEFAULT NULL,
  `addresssline2` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `pincode` bigint(20) DEFAULT NULL,
  `contactno` bigint(20) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `confirmpassword` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_signup`
--

LOCK TABLES `admin_signup` WRITE;
/*!40000 ALTER TABLE `admin_signup` DISABLE KEYS */;
INSERT INTO `admin_signup` VALUES (1,'oppo','shreya@gmail.com','shreya','patil','islampur','islampur','islampur','maharashtra',415409,6868686,'12','12');
/*!40000 ALTER TABLE `admin_signup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `product_name` varchar(45) DEFAULT NULL,
  `company_name` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `quantity` varchar(45) DEFAULT NULL,
  `total` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (7,1,1,'2.jpeg','oppoa3s','oppo','10000','india','2','50000');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  `product_name` varchar(45) DEFAULT NULL,
  `company_name` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `quantity` varchar(45) DEFAULT NULL,
  `total` varchar(45) DEFAULT NULL,
  `order_status` varchar(45) DEFAULT NULL,
  `order_date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,1,'2.jpeg','oppoa3s','oppo','10000','india','2','20000','Confirmed','08/12/2023'),(2,1,3,'9.jpg','oppoa3s','oppo','60000','india','1','20000','Canceled','08/12/2023'),(3,1,1,'2.jpeg','oppoa3s','oppo','10000','india','2','50000','Pending','08/12/2023'),(4,1,2,'3.jpeg','redimi','redmi','20000','india','2','20000','Pending','08/12/2023'),(5,1,1,'2.jpeg','oppoa3s','oppo','10000','india','2','50000','Pending','08/12/2023'),(6,1,3,'9.jpg','oppoa3s','oppo','60000','india','1','50000','Pending','08/12/2023');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment1`
--

DROP TABLE IF EXISTS `payment1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment1` (
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `credit` varchar(50) DEFAULT NULL,
  `month` varchar(50) DEFAULT NULL,
  `expiry` varchar(50) DEFAULT NULL,
  `cvv` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment1`
--

LOCK TABLES `payment1` WRITE;
/*!40000 ALTER TABLE `payment1` DISABLE KEYS */;
INSERT INTO `payment1` VALUES (NULL,'shreya','687687','june','2018','222'),(NULL,'shreya','76777777777','june','2018','222'),(NULL,'shreya','755555','june','333','999'),(NULL,'hgj','8768768','june','2023-05','757'),(NULL,'shreya','2222222222','june','2023-11','244');
/*!40000 ALTER TABLE `payment1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_signup`
--

DROP TABLE IF EXISTS `user_signup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_signup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(200) DEFAULT NULL,
  `LastName` varchar(200) DEFAULT NULL,
  `EmailAddress` varchar(200) DEFAULT NULL,
  `ContactNumber` varchar(200) DEFAULT NULL,
  `Addresslane1` varchar(200) DEFAULT NULL,
  `Addresslane2` varchar(200) DEFAULT NULL,
  `State` varchar(200) DEFAULT NULL,
  `District` varchar(200) DEFAULT NULL,
  `City` varchar(200) DEFAULT NULL,
  `Pincode` bigint(10) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `ConfirmPassword` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_signup`
--

LOCK TABLES `user_signup` WRITE;
/*!40000 ALTER TABLE `user_signup` DISABLE KEYS */;
INSERT INTO `user_signup` VALUES (1,'shreya','patl','shreya@gmail.com','2023-11-28','islampur','islampur','maharashtra','walwa','islampur',415409,'12','12'),(2,'shreya','patil','shreya@gmail.com','2023-12-05','islampur','islampur','maharashtra','walwa','islampur',415409,'12','12');
/*!40000 ALTER TABLE `user_signup` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-10 22:22:37
