-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: ngp
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_package`
--

DROP TABLE IF EXISTS `category_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_package` (
  `category_package_id` int(11) NOT NULL AUTO_INCREMENT,
  `Category_name` varchar(50) DEFAULT NULL,
  `package_name` varchar(50) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `duration` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`category_package_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_package`
--

LOCK TABLES `category_package` WRITE;
/*!40000 ALTER TABLE `category_package` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diet_food`
--

DROP TABLE IF EXISTS `diet_food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diet_food` (
  `diet_food_id` int(11) NOT NULL AUTO_INCREMENT,
  `diet_food_name` varchar(50) DEFAULT NULL,
  `calorie` int(11) DEFAULT NULL,
  PRIMARY KEY (`diet_food_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diet_food`
--

LOCK TABLES `diet_food` WRITE;
/*!40000 ALTER TABLE `diet_food` DISABLE KEYS */;
/*!40000 ALTER TABLE `diet_food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_name` varchar(50) DEFAULT NULL,
  `photo` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `salary` float DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment`
--

DROP TABLE IF EXISTS `equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipment` (
  `equipment_id` int(11) NOT NULL AUTO_INCREMENT,
  `equipment_name` varchar(20) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`equipment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment`
--

LOCK TABLES `equipment` WRITE;
/*!40000 ALTER TABLE `equipment` DISABLE KEYS */;
/*!40000 ALTER TABLE `equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment_wastage`
--

DROP TABLE IF EXISTS `equipment_wastage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipment_wastage` (
  `equipment_wastage_id` int(11) NOT NULL AUTO_INCREMENT,
  `equipment_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `wastage_date` date DEFAULT NULL,
  PRIMARY KEY (`equipment_wastage_id`),
  KEY `equipment_id` (`equipment_id`),
  CONSTRAINT `equipment_wastage_ibfk_1` FOREIGN KEY (`equipment_id`) REFERENCES `equipment` (`equipment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment_wastage`
--

LOCK TABLES `equipment_wastage` WRITE;
/*!40000 ALTER TABLE `equipment_wastage` DISABLE KEYS */;
/*!40000 ALTER TABLE `equipment_wastage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food`
--

DROP TABLE IF EXISTS `food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `food` (
  `food_id` int(11) NOT NULL AUTO_INCREMENT,
  `food_name` varchar(50) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `calorie` float DEFAULT NULL,
  PRIMARY KEY (`food_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food`
--

LOCK TABLES `food` WRITE;
/*!40000 ALTER TABLE `food` DISABLE KEYS */;
/*!40000 ALTER TABLE `food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructor`
--

DROP TABLE IF EXISTS `instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instructor` (
  `instructor_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `category_package_id` int(11) DEFAULT NULL,
  `personal_instructor_rate` int(11) DEFAULT NULL,
  `shift` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`instructor_id`),
  KEY `employee_id` (`employee_id`),
  KEY `category_package_id` (`category_package_id`),
  CONSTRAINT `instructor_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`),
  CONSTRAINT `instructor_ibfk_2` FOREIGN KEY (`category_package_id`) REFERENCES `category_package` (`category_package_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructor`
--

LOCK TABLES `instructor` WRITE;
/*!40000 ALTER TABLE `instructor` DISABLE KEYS */;
/*!40000 ALTER TABLE `instructor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `photo` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `height` float DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `blood_group` varchar(50) DEFAULT NULL,
  `nid_no` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `instructor_id` int(11) DEFAULT NULL,
  `category_package_id` int(11) DEFAULT NULL,
  `personal_trainer` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`member_id`),
  KEY `instructor_id` (`instructor_id`),
  KEY `category_package_id` (`category_package_id`),
  CONSTRAINT `member_ibfk_1` FOREIGN KEY (`instructor_id`) REFERENCES `instructor` (`instructor_id`),
  CONSTRAINT `member_ibfk_2` FOREIGN KEY (`category_package_id`) REFERENCES `category_package` (`category_package_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_diet_food`
--

DROP TABLE IF EXISTS `member_diet_food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_diet_food` (
  `member_diet_food_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `shift` varchar(50) DEFAULT NULL,
  `diet_food_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total_calories` float DEFAULT NULL,
  PRIMARY KEY (`member_diet_food_id`),
  KEY `member_id` (`member_id`),
  KEY `diet_food_id` (`diet_food_id`),
  CONSTRAINT `member_diet_food_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`),
  CONSTRAINT `member_diet_food_ibfk_2` FOREIGN KEY (`diet_food_id`) REFERENCES `diet_food` (`diet_food_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_diet_food`
--

LOCK TABLES `member_diet_food` WRITE;
/*!40000 ALTER TABLE `member_diet_food` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_diet_food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_food`
--

DROP TABLE IF EXISTS `member_food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_food` (
  `member_food_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `day` date DEFAULT NULL,
  `food_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total_calories` float DEFAULT NULL,
  PRIMARY KEY (`member_food_id`),
  KEY `member_id` (`member_id`),
  KEY `food_id` (`food_id`),
  CONSTRAINT `member_food_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`),
  CONSTRAINT `member_food_ibfk_2` FOREIGN KEY (`food_id`) REFERENCES `food` (`food_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_food`
--

LOCK TABLES `member_food` WRITE;
/*!40000 ALTER TABLE `member_food` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_food` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `workout`
--

DROP TABLE IF EXISTS `workout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workout` (
  `workout_id` int(11) NOT NULL AUTO_INCREMENT,
  `workout_name` varchar(50) DEFAULT NULL,
  `calorie_burn` float DEFAULT NULL,
  PRIMARY KEY (`workout_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workout`
--

LOCK TABLES `workout` WRITE;
/*!40000 ALTER TABLE `workout` DISABLE KEYS */;
/*!40000 ALTER TABLE `workout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_workout`
--

DROP TABLE IF EXISTS `member_workout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_workout` (
  `member_workout_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `day` date DEFAULT NULL,
  `workout_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `item_set` int(11) DEFAULT NULL,
  `item_time` int(11) DEFAULT NULL,
  `total_calories_burn` float DEFAULT NULL,
  PRIMARY KEY (`member_workout_id`),
  KEY `member_id` (`member_id`),
  KEY `workout_id` (`workout_id`),
  CONSTRAINT `member_workout_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`),
  CONSTRAINT `member_workout_ibfk_2` FOREIGN KEY (`workout_id`) REFERENCES `workout` (`workout_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_workout`
--

LOCK TABLES `member_workout` WRITE;
/*!40000 ALTER TABLE `member_workout` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_workout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monthly_expense`
--

DROP TABLE IF EXISTS `monthly_expense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monthly_expense` (
  `monthly_expense_id` int(11) NOT NULL AUTO_INCREMENT,
  `floor_rent` float DEFAULT NULL,
  `electricity_bill` float DEFAULT NULL,
  `water_bill` float DEFAULT NULL,
  `date` date DEFAULT NULL,
  `month` varchar(50) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  PRIMARY KEY (`monthly_expense_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monthly_expense`
--

LOCK TABLES `monthly_expense` WRITE;
/*!40000 ALTER TABLE `monthly_expense` DISABLE KEYS */;
/*!40000 ALTER TABLE `monthly_expense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monthly_income`
--

DROP TABLE IF EXISTS `monthly_income`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monthly_income` (
  `monthly_income_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `date` date DEFAULT NULL,
  `month` varchar(50) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  PRIMARY KEY (`monthly_income_id`),
  KEY `member_id` (`member_id`),
  CONSTRAINT `monthly_income_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monthly_income`
--

LOCK TABLES `monthly_income` WRITE;
/*!40000 ALTER TABLE `monthly_income` DISABLE KEYS */;
/*!40000 ALTER TABLE `monthly_income` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_equipment`
--

DROP TABLE IF EXISTS `purchase_equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_equipment` (
  `purchase_equipment_id` int(11) NOT NULL AUTO_INCREMENT,
  `equipment_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  PRIMARY KEY (`purchase_equipment_id`),
  KEY `equipment_id` (`equipment_id`),
  CONSTRAINT `purchase_equipment_ibfk_1` FOREIGN KEY (`equipment_id`) REFERENCES `equipment` (`equipment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_equipment`
--

LOCK TABLES `purchase_equipment` WRITE;
/*!40000 ALTER TABLE `purchase_equipment` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_food`
--

DROP TABLE IF EXISTS `purchase_food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_food` (
  `purchase_food_id` int(11) NOT NULL AUTO_INCREMENT,
  `food_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  PRIMARY KEY (`purchase_food_id`),
  KEY `food_id` (`food_id`),
  CONSTRAINT `purchase_food_ibfk_1` FOREIGN KEY (`food_id`) REFERENCES `food` (`food_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_food`
--

LOCK TABLES `purchase_food` WRITE;
/*!40000 ALTER TABLE `purchase_food` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary`
--

DROP TABLE IF EXISTS `salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salary` (
  `salary_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `salary` float DEFAULT NULL,
  `personal_trainer_commision` int(11) DEFAULT NULL,
  `bonus` float DEFAULT NULL,
  `date` date DEFAULT NULL,
  `Month` varchar(50) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  PRIMARY KEY (`salary_id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `salary_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary`
--

LOCK TABLES `salary` WRITE;
/*!40000 ALTER TABLE `salary` DISABLE KEYS */;
/*!40000 ALTER TABLE `salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trail_member`
--

DROP TABLE IF EXISTS `trail_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trail_member` (
  `trail_member_id` int(11) NOT NULL AUTO_INCREMENT,
  `trail_member_name` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`trail_member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trail_member`
--

LOCK TABLES `trail_member` WRITE;
/*!40000 ALTER TABLE `trail_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `trail_member` ENABLE KEYS */;
UNLOCK TABLES;


/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-05  0:25:28
