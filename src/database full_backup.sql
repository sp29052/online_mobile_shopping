-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: online_mobile_shopping
-- ------------------------------------------------------
-- Server version	5.7.10-log

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
  `ram` varchar(45) DEFAULT NULL,
  `camera` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `add_product`
--

LOCK TABLES `add_product` WRITE;
/*!40000 ALTER TABLE `add_product` DISABLE KEYS */;
INSERT INTO `add_product` VALUES (1,'2.jpeg','oppo','oppoa3s','10000','india',NULL,NULL),(2,'3.jpeg','redmi','redimi','20000','india',NULL,NULL),(3,'9.jpg','oppo','oppoa3s','60000','india',NULL,NULL),(4,'4.jpeg','oppo','oppoa3s','60000','india',NULL,NULL),(5,'home4.jpeg','boult','boult','2222','water proof','4gb','8mp+4mp'),(6,'home2.jpeg','boult','boult','2222','water proof','8gb','8mp+4mp'),(7,'1.jpg','oppo','oppoa19','2000','water proof','4gb','8mp+4mp'),(8,'2.jpeg','boult','boult','2222','water proof','4gb','8mp+4mp'),(9,'2.jpeg','realmi','realmi7575','4000','water proof','166gb','8mp+4mp'),(10,'2.jpeg','realmi','realmi7575','4000','water proof','8gb','8mp+4mp'),(11,'2.jpeg','oppo','oppoa19','2222','water proof','4gb','8mp+4mp'),(12,'14.jpeg','samsung','samsung galaxy','2000','best produ','8gb','8mp+4mp'),(13,'15.jpg','samsung','samsung galaxy','2000','best produ','8gb','8mp+4mp'),(14,'6.jpg','samsung','samsung galaxy','2000','best produ','8gb','8mp+4mp'),(15,'14.jpeg','boult','boult','2000','Best product .Good Battery Backup','8gb','4mp+8mp');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,1,'shreya','2286876',415409,'islampur','kudtuuiti','Maharashtra','Kolhapur','near ajinkya bazar','13131311'),(2,1,'shreya','2286876',415409,'islampur','kudtuuiti','Maharashtra','Jalgaon','near ajinkya bazar','13131311'),(3,1,'shreya','2286876',415409,'islampur','kudtuuiti','Maharashtra','Mumbai','near ajinkya bazar','13131311'),(4,3,'Satyam Patil','22222222222',97979,'fewfe','islam[ur','Maharashtra','Latur','fee','2222'),(5,3,'Satyam Patil','22222222222',97979,'fewfe','islam[ur','Maharashtra','Mumbai','fee','2222'),(6,3,'Satyam Patil','22222222222',97979,'fewfe','islam[ur','Maharashtra','Kolhapur','fee','2222'),(7,3,'Satyam Patil','22222222222',97979,'fewfe','islam[ur','Maharashtra','Pune','fee','2222'),(8,3,'Satyam Patil','22222222222',97979,'fewfe','islam[ur','Maharashtra','Kolhapur','fee','2222'),(9,3,'Satyam Patil','2222222222',97979,'fewfe','islam[ur','Maharashtra','sssss','fee','2222'),(10,3,'Satyam Patil','2222222222',97979,'fewfe','islam[ur','Maharashtra','sssss','fee','2222'),(11,3,'Satyam Patil','2222222222',97979,'fewfe','islam[ur','Maharashtra','sssss','fee','2222'),(12,3,'Satyam Patil','2222222222',97979,'fewfe','islam[ur','Maharashtra','sssss','fee','2222'),(13,3,'Satyam Patil','2222222222',97979,'fewfe','islam[ur','Maharashtra','sssss','fee','2222'),(14,3,'Satyam Patil','2222222222',979797,'fewfe','islam[ur','Maharashtra','sssss','fee','2222'),(15,3,'satyam patil','7666666666',768682,'islampur','islampur','Maharashtra','islampur','near ajinkya bazar','33333398908'),(16,3,'satyam patil','7666666666',768682,'islampur','islampur','Maharashtra','islampur','near ajinkya bazar','33333398908'),(17,3,'sonu','8777777777',416302,'islampur','islampur','Maharashtra','sangli','near ajinkya bazar','7666666'),(18,3,'Satyam Patil','2222222222',97979,'fewfe','islam[ur','Maharashtra','sssss','fee','2222'),(19,3,'Satyam Chandrasen Patil','5555555555',97979,'fewfe','islam[ur','Maharashtra','sssss','fee','2222');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_signup`
--

LOCK TABLES `admin_signup` WRITE;
/*!40000 ALTER TABLE `admin_signup` DISABLE KEYS */;
INSERT INTO `admin_signup` VALUES (1,'oppo','shreya@gmail.com','shreya','patil','islampur','islampur','islampur','maharashtra',415409,6868686,'12','12'),(2,'boult','sonu@gmail.com','shreya','patil ','shkjhk','khjlhio','islampur','maharashtra ',97979,989887988709,'12','12'),(3,'boult','sonu@gmail.com','shreya','patil ','shkjhk','khjlhio','islampur','maharashtra ',97979,989887988709,'12','12');
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,1,'2.jpeg','oppoa3s','oppo','10000','india','2','20000','Confirmed','08/12/2023'),(2,1,3,'9.jpg','oppoa3s','oppo','60000','india','1','20000','Canceled','08/12/2023'),(3,1,1,'2.jpeg','oppoa3s','oppo','10000','india','2','50000','Pending','08/12/2023'),(4,1,2,'3.jpeg','redimi','redmi','20000','india','2','20000','Pending','08/12/2023'),(5,1,1,'2.jpeg','oppoa3s','oppo','10000','india','2','50000','Pending','08/12/2023'),(6,1,3,'9.jpg','oppoa3s','oppo','60000','india','1','50000','Pending','08/12/2023'),(15,3,7,'1.jpg','oppoa19','oppo','2000','water proof','3','656567','Pending','13/01/2024'),(16,3,7,'1.jpg','oppoa19','oppo','2000','water proof','3','656567','Pending','13/01/2024'),(17,3,7,'1.jpg','oppoa19','oppo','2000','water proof','2','64747','Pending','13/01/2024'),(18,3,7,'1.jpg','oppoa19','oppo','2000','water proof','2','64747','Pending','13/01/2024'),(19,3,7,'1.jpg','oppoa19','oppo','2000','water proof','2','10000','Pending','13/01/2024'),(22,3,7,'1.jpg','oppoa19','oppo','2000','water proof','2','64747','Pending','13/01/2024'),(23,3,11,'2.jpeg','oppoa19','oppo','2222','water proof','2','10000','Pending','14/01/2024'),(24,3,1,'2.jpeg','oppoa3s','oppo','10000','india','2','10000','Pending','15/01/2024'),(26,3,11,'2.jpeg','oppoa19','oppo','2222','water proof','2','10000','Pending','15/01/2024'),(28,3,11,'2.jpeg','oppoa19','oppo','2222','water proof','2','4000','Pending','15/01/2024'),(30,3,7,'1.jpg','oppoa19','oppo','2000','water proof','2','2000','Pending','15/01/2024'),(31,3,7,'1.jpg','oppoa19','oppo','2000','water proof','2','2000','Pending','15/01/2024'),(32,3,7,'1.jpg','oppoa19','oppo','2000','water proof','2','2222','Pending','15/01/2024'),(33,3,7,'1.jpg','oppoa19','oppo','2000','water proof','2','2222','Pending','15/01/2024'),(34,3,7,'1.jpg','oppoa19','oppo','2000','water proof','1','222','Pending','15/01/2024'),(35,3,7,'1.jpg','oppoa19','oppo','2000','water proof','2','2222','Pending','15/01/2024'),(40,3,1,'2.jpeg','oppoa3s','oppo','10000','india','1','2222','Pending','21/01/2024'),(41,3,12,'14.jpeg','samsung galaxy','samsung','2000','best produ','1','10000','Pending','21/01/2024');
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
INSERT INTO `payment1` VALUES (NULL,'shreya','687687','june','2018','222'),(NULL,'shreya','76777777777','june','2018','222'),(NULL,'shreya','755555','june','333','999'),(NULL,'hgj','8768768','june','2023-05','757'),(NULL,'shreya','2222222222','june','2023-11','244'),(NULL,'hkhl','kljlkjl','june','2023-07','222'),(NULL,'Satyam Patil','99999999','JUNE','2023-02','222'),(NULL,'jgk','68768768','june','2024-11','666'),(NULL,'fghcgf','877787','may','2024-08','333'),(NULL,'Satyam Patil','33325333',NULL,'2024-02-07','222'),(NULL,'Satyam Patil','22222222',NULL,'2024-01-18','333'),(NULL,'Satyam Patil','222222222',NULL,'2024-01-23','111'),(NULL,'Satyam Patil','64646565656',NULL,'2024-01-18','666'),(NULL,'Satyam Patil','867676666666666',NULL,'2024-01-23','222'),(NULL,'Sayali Chandrasen Patil','76666666',NULL,'2024-01-01','231'),(NULL,'vijay jadhav','6757667',NULL,'2024-01-02','333'),(NULL,'sonu','7575757777',NULL,'2024-01-22','222'),(NULL,'Satyam Patil','655555555',NULL,'2024-02-06','444');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_signup`
--

LOCK TABLES `user_signup` WRITE;
/*!40000 ALTER TABLE `user_signup` DISABLE KEYS */;
INSERT INTO `user_signup` VALUES (1,'shreya','patl','shreya@gmail.com','2023-11-28','islampur','islampur','maharashtra','walwa','islampur',415409,'12','12'),(2,'shreya','patil','shreya@gmail.com','2023-12-05','islampur','islampur','maharashtra','walwa','islampur',415409,'12','12'),(3,'shreya','patil','sonu@gmail.com','2023-11-28','feewfewf','khighio','maharashtra ','walwa','islampur',416302,'12','12'),(4,'shreya','patil','sonu@gmail.com','2023-12-05','feewfewf','khighio','maharashtra ','walwa','islampur',416302,'12','12'),(5,'shreya','patil','sonu@gmail.com','2023-12-05','feewfewf','khighio','maharashtra ','walwa','islampur',416302,'12','12'),(6,'shreya','patil','sonu@gmail.com','2023-12-05','feewfewf','khighio','maharashtra ','walwa','islampur',416302,'12','12'),(7,'shreya','patil','sonu@gmail.com','2024-01-12','feewfewf','khighio','maharashtra ','walwa','islampur',416302,'12','12'),(8,'shreya',NULL,'sonu@gmail.com','8686876766','sdebjk',NULL,NULL,NULL,NULL,NULL,'12','12'),(9,'shreya',NULL,'sonu@gmail.com','8686876766','kjhkjhk',NULL,NULL,NULL,NULL,NULL,'12','12'),(10,'shreya',NULL,'sonu@gmail.com','6666666666','nhtjhj',NULL,NULL,NULL,NULL,NULL,'12','12');
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

-- Dump completed on 2024-01-26 21:42:58
