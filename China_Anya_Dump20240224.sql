-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: diversity_employee
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `demographic`
--

DROP TABLE IF EXISTS `demographic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demographic` (
  `Demo_ID` int NOT NULL,
  `Date_of_birth` date NOT NULL,
  `Gender` varchar(2) NOT NULL,
  `Ethnicity` varchar(15) NOT NULL,
  PRIMARY KEY (`Demo_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demographic`
--

LOCK TABLES `demographic` WRITE;
/*!40000 ALTER TABLE `demographic` DISABLE KEYS */;
INSERT INTO `demographic` VALUES (1,'1960-01-01','M','White'),(2,'1962-04-15','F','Black'),(3,'1964-07-22','M','Asian'),(4,'1966-09-30','F','White'),(5,'1968-12-05','NB','Other'),(6,'1970-02-18','M','Black'),(7,'1972-06-25','F','Asian'),(8,'1974-09-12','F','White'),(9,'1976-11-08','M','Other'),(10,'1979-02-20','NB','White'),(11,'1981-05-14','M','Black'),(12,'1983-08-01','F','Asian'),(13,'1985-11-27','M','White'),(14,'1988-03-03','F','Black'),(15,'1990-06-17','F','Asian'),(16,'1992-10-23','M','Other'),(17,'1995-02-06','NB','White'),(18,'1997-05-21','M','Black'),(19,'1999-09-15','F','Asian'),(20,'2001-12-28','M','White'),(21,'1960-03-02','F','Black'),(22,'1962-06-17','F','Asian'),(23,'1964-09-24','M','White'),(24,'1966-12-08','M','Other'),(25,'1969-02-21','NB','Black'),(26,'1971-06-06','M','Asian'),(27,'1973-09-13','F','White'),(28,'1975-12-19','F','Other'),(29,'1978-02-02','M','White'),(30,'1980-05-18','NB','Black'),(31,'1982-08-23','M','Asian'),(32,'1984-11-28','F','White'),(33,'1987-03-05','F','Other'),(34,'1989-06-20','M','White'),(35,'1991-10-03','NB','Black'),(36,'1993-12-09','M','Asian'),(37,'1996-02-22','F','White'),(38,'1998-06-09','F','Other'),(39,'2000-09-24','M','White'),(40,'2001-12-31','NB','Black'),(41,'1960-04-03','M','Asian'),(42,'1962-07-18','F','White'),(43,'1964-10-25','F','Other'),(44,'1967-01-09','M','Black'),(45,'1969-03-26','M','Asian'),(46,'1971-07-11','F','White'),(47,'1973-10-16','F','Other'),(48,'1975-12-31','M','Black'),(49,'1978-03-17','M','Asian'),(50,'1980-06-30','F','White'),(51,'1982-10-13','F','Other'),(52,'1985-01-27','M','Black'),(53,'1987-04-14','NB','Asian'),(54,'1989-08-29','M','White'),(55,'1991-12-12','F','Other'),(56,'1994-03-27','F','Black'),(57,'1996-06-10','M','Asian'),(58,'1998-09-23','NB','White'),(59,'2000-12-29','M','Other'),(60,'2001-12-31','F','Black'),(61,'1960-05-10','F','Asian'),(62,'1962-08-25','M','White'),(63,'1964-11-30','M','Other'),(64,'1967-03-16','F','Black'),(65,'1969-06-01','F','Asian'),(66,'1971-09-14','M','White'),(67,'1973-12-30','M','Other'),(68,'1976-02-12','F','Black'),(69,'1978-05-29','F','Asian'),(70,'1980-09-11','M','White'),(71,'1983-01-24','NB','Other'),(72,'1985-05-09','M','Black'),(73,'1987-08-24','F','Asian'),(74,'1989-12-07','M','White'),(75,'1992-03-22','F','Other'),(76,'1994-06-07','F','Black'),(77,'1996-09-20','M','Asian'),(78,'1998-12-03','M','White'),(79,'2001-02-16','F','Other'),(80,'1960-06-25','F','Black'),(81,'1962-09-08','M','Asian'),(82,'1965-01-21','M','White');
/*!40000 ALTER TABLE `demographic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `employee_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `job_ID` int NOT NULL,
  `salary_id` int DEFAULT NULL,
  `demo_id` int DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `fk_job_ID` (`job_ID`),
  KEY `fk_salary_id` (`salary_id`),
  KEY `fk_demo_id` (`demo_id`),
  CONSTRAINT `fk_demo_id` FOREIGN KEY (`demo_id`) REFERENCES `demographic` (`Demo_ID`),
  CONSTRAINT `fk_job_ID` FOREIGN KEY (`job_ID`) REFERENCES `job_title` (`job_id`),
  CONSTRAINT `fk_salary_id` FOREIGN KEY (`salary_id`) REFERENCES `salary` (`Salary_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'John','Boateng',1,1,1),(2,'Mary','Johnson',2,2,2),(3,'James','Williams',3,3,3),(4,'Mercy','Jones',4,4,4),(5,'Robert','Brown',3,5,5),(6,'Mercy','Davis',4,6,6),(7,'Michael','Miller',3,7,7),(8,'Linda','Wilson',2,8,8),(9,'William','Moore',1,9,9),(10,'Elizabeth','Taylor',3,10,10),(11,'David','Anderson',4,11,11),(12,'China','Thomas',1,12,12),(13,'Richard','Jackson',1,13,13),(14,'Susan','White',2,14,14),(15,'Joseph','Beckton',2,15,15),(16,'Jessica','Martin',3,16,16),(17,'Thomas','Thompson',3,17,17),(18,'Uchenna','Garcia',3,18,18),(19,'Chinua','Sing',2,19,19),(20,'Karen','Robinson',1,20,20),(21,'Christopher','Clark',4,21,21),(22,'Nancy','Rodriguez',2,22,22),(23,'Kwame','Lewis',3,23,23),(24,'Lisa','Lee',1,24,24),(25,'Matthew','Adenuga',1,25,25),(26,'Betty','Hall',2,26,26),(27,'Anthony','Allen',4,27,27),(28,'Dorothy','Young',3,28,28),(29,'Donald','Hernandez',4,29,29),(30,'Ashley','Adewale',1,30,30),(31,'Akos','Wright',2,31,31),(32,'Kelly','Lopez',4,32,32),(33,'Mark','Hill',3,33,33),(34,'Emily','Scott',2,34,34),(35,'Steven','Green',1,35,35),(36,'Helen','Adams',4,36,36),(37,'Andrew','Baker',4,37,37),(38,'Margaret','Gonzalez',3,38,38),(39,'Joshua','Nelson',3,39,39),(40,'Sandra','Carter',3,40,40),(41,'Kevin','Mitchell',2,41,41),(42,'Kimberly','Perez',2,42,42),(43,'Brian','Roberts',2,43,43),(44,'Amy','Turner',2,44,44),(45,'Timothy','Angel',2,45,45),(46,'Sharon','Campbell',1,46,46),(47,'Jason','Parker',1,47,47),(48,'Laura','Evans',1,48,48),(49,'Ryan','Edwards',4,49,49),(50,'Deborah','Collins',4,50,50),(51,'Gary','Stewart',4,51,51),(52,'Jessica','Sanchez',4,52,52),(53,'Nicholas','Morris',3,53,53),(54,'Angela','Rogers',3,54,54),(55,'Edward','Reed',2,55,55),(56,'Melissa','Cook',1,56,56),(57,'Jacob','Morgan',2,57,57),(58,'Amanda','Bell',1,58,58),(59,'Larry','Murphy',1,59,59),(60,'Stephanie','Bailey',2,60,60),(61,'Scott','Rivera',1,61,61),(62,'Rebecca','Cooper',3,62,62),(63,'Justin','Richardson',3,63,63),(64,'Judith','Cox',4,64,64),(65,'Frank','Bridge-Anya',2,65,65),(66,'Victoria','Ward',1,66,66),(67,'Raymond','Torres',4,67,67),(68,'Cheryl','Peterson',3,68,68),(69,'George','Gray',2,69,69),(70,'Rachel','Ashley',1,70,70),(71,'Brandon','James',1,71,71),(72,'Judith','Watson',2,72,72),(73,'Russell','Brooks',2,73,73),(74,'Sara','Kelly',3,74,74),(75,'Diane','Sanders',3,75,75),(76,'Roy','Price',3,76,76),(77,'Carol','Bennett',1,77,77),(78,'Gerald','Wood',4,78,78),(79,'Janet','Barnes',1,79,79),(80,'Philip','Ross',3,80,80),(81,'Marilyn','Henderson',1,81,81),(82,'Joe','Fiakpui',2,82,82);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `females_only`
--

DROP TABLE IF EXISTS `females_only`;
/*!50001 DROP VIEW IF EXISTS `females_only`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `females_only` AS SELECT 
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `Gender`,
 1 AS `ethnicity`,
 1 AS `year1_salary`,
 1 AS `rating`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `job_title`
--

DROP TABLE IF EXISTS `job_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_title` (
  `job_id` int NOT NULL,
  `job_title` varchar(20) NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_title`
--

LOCK TABLES `job_title` WRITE;
/*!40000 ALTER TABLE `job_title` DISABLE KEYS */;
INSERT INTO `job_title` VALUES (1,'Analyst'),(2,'Technician'),(3,'Assistant'),(4,'Advisor');
/*!40000 ALTER TABLE `job_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `managers`
--

DROP TABLE IF EXISTS `managers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `managers` (
  `Manager_id` int NOT NULL,
  `First_name` varchar(20) NOT NULL,
  `Last_name` varchar(20) NOT NULL,
  `employee_id` int NOT NULL,
  PRIMARY KEY (`Manager_id`),
  KEY `fk_employee_id` (`employee_id`),
  CONSTRAINT `fk_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managers`
--

LOCK TABLES `managers` WRITE;
/*!40000 ALTER TABLE `managers` DISABLE KEYS */;
INSERT INTO `managers` VALUES (1,'Joe','Fiakpui',82),(2,'Marilyn','Henderson',81),(3,'Philip','Ross',80),(4,'Uchenna','Garcia',18),(5,'Chinua','Sing',19),(6,'Rachel','Ashley',70);
/*!40000 ALTER TABLE `managers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `performance`
--

DROP TABLE IF EXISTS `performance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `performance` (
  `Performance_ID` int NOT NULL,
  `Employee_ID` int NOT NULL,
  `Manager_ID` int NOT NULL,
  `Rating` enum('good','bad','average') NOT NULL,
  `Performance_date` date DEFAULT NULL,
  PRIMARY KEY (`Performance_ID`),
  KEY `fk_manager_id` (`Manager_ID`),
  KEY `fk_employee_table_id` (`Employee_ID`),
  CONSTRAINT `fk_employee_table_id` FOREIGN KEY (`Employee_ID`) REFERENCES `employee` (`employee_id`),
  CONSTRAINT `fk_manager_id` FOREIGN KEY (`Manager_ID`) REFERENCES `managers` (`Manager_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performance`
--

LOCK TABLES `performance` WRITE;
/*!40000 ALTER TABLE `performance` DISABLE KEYS */;
INSERT INTO `performance` VALUES (1,1,2,'good','2023-12-01'),(2,2,2,'average','2023-12-02'),(3,3,3,'bad','2023-12-03'),(4,4,4,'good','2023-12-04'),(5,5,5,'bad','2023-12-05'),(6,6,2,'good','2023-12-06'),(7,7,2,'good','2023-12-07'),(8,8,3,'average','2023-12-08'),(9,9,4,'good','2023-12-09'),(10,10,5,'average','2023-12-10'),(11,11,1,'average','2023-12-11'),(12,12,2,'average','2023-12-12'),(13,13,3,'bad','2023-12-13'),(14,14,4,'good','2023-12-14'),(15,15,5,'bad','2023-12-15'),(16,16,1,'good','2023-12-16'),(17,17,2,'average','2023-12-17'),(18,18,3,'bad','2023-12-18'),(19,19,4,'good','2023-12-19'),(20,20,5,'bad','2023-12-20'),(21,21,1,'good','2023-12-21'),(22,22,2,'bad','2023-12-22'),(23,23,3,'bad','2023-12-23'),(24,24,4,'good','2023-12-24'),(25,25,4,'bad','2023-12-25'),(26,26,4,'bad','2023-12-26'),(27,27,4,'average','2023-12-27'),(28,28,4,'bad','2023-12-28'),(29,29,4,'good','2023-12-29'),(30,30,4,'bad','2023-12-30'),(31,31,1,'good','2023-12-31'),(32,32,2,'average','2023-06-01'),(33,33,3,'bad','2023-06-02'),(34,34,4,'bad','2023-06-03'),(35,35,4,'bad','2023-06-04'),(36,36,4,'bad','2023-06-05'),(37,37,4,'bad','2023-06-06'),(38,38,4,'bad','2023-06-07'),(39,39,4,'good','2023-06-08'),(40,40,5,'average','2023-06-09'),(41,41,5,'average','2023-06-10'),(42,42,2,'average','2023-06-11'),(43,43,5,'bad','2023-06-12'),(44,44,4,'good','2023-06-13'),(45,45,5,'bad','2023-06-14'),(46,46,1,'good','2023-06-15'),(47,47,2,'average','2023-06-16'),(48,48,3,'bad','2023-06-17'),(49,49,4,'good','2023-06-18'),(50,50,5,'bad','2023-06-19'),(51,51,5,'average','2023-06-20'),(52,52,2,'average','2023-06-21'),(53,53,3,'bad','2023-06-22'),(54,54,4,'good','2023-06-23'),(55,55,5,'average','2023-06-24'),(56,56,1,'average','2023-06-25'),(57,57,2,'average','2023-06-26'),(58,58,3,'bad','2023-06-27'),(59,59,3,'average','2023-06-28'),(60,60,5,'bad','2023-06-29'),(61,61,1,'good','2023-06-30'),(62,62,2,'average','2023-06-01'),(63,63,3,'average','2023-06-02'),(64,64,4,'average','2023-06-03'),(65,65,5,'bad','2023-06-04'),(66,66,1,'average','2023-06-05'),(67,67,2,'average','2023-06-06'),(68,68,3,'bad','2023-06-07'),(69,69,4,'average','2023-06-08'),(70,70,5,'bad','2023-06-09'),(71,71,3,'average','2023-06-10'),(72,72,2,'average','2023-06-11'),(73,73,3,'bad','2023-06-12'),(74,74,4,'average','2023-06-13'),(75,75,5,'bad','2023-06-14'),(76,76,3,'average','2023-06-15'),(77,77,2,'average','2023-06-16'),(78,78,3,'bad','2023-06-17'),(79,79,4,'good','2023-06-18'),(80,80,3,'bad','2023-06-19'),(81,81,1,'bad','2023-06-20'),(82,82,3,'bad','2023-06-21');
/*!40000 ALTER TABLE `performance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary`
--

DROP TABLE IF EXISTS `salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salary` (
  `Salary_ID` int NOT NULL,
  `starting_salary` decimal(6,0) NOT NULL,
  `year1_salary` decimal(6,0) NOT NULL,
  PRIMARY KEY (`Salary_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary`
--

LOCK TABLES `salary` WRITE;
/*!40000 ALTER TABLE `salary` DISABLE KEYS */;
INSERT INTO `salary` VALUES (1,50000,55000),(2,60000,65000),(3,70000,75000),(4,55000,60000),(5,48000,52000),(6,80000,85000),(7,62000,67000),(8,30000,105000),(9,53000,58000),(10,72000,77000),(11,90000,95000),(12,55000,60000),(13,120000,125000),(14,62000,67000),(15,80000,85000),(16,150000,155000),(17,15000,28000),(18,110000,115000),(19,62000,67000),(20,180000,185000),(21,50000,55000),(22,65897,65000),(23,70000,75000),(24,55000,60000),(25,48000,52000),(26,80000,85000),(27,62000,67000),(28,100000,105000),(29,53000,58000),(30,78000,45000),(31,90000,95000),(32,21330,60000),(33,120000,125000),(34,62000,67000),(35,84312,84312),(36,150000,155000),(37,53000,58000),(38,110000,115000),(39,62000,67000),(40,180000,185000),(41,50000,55000),(42,60000,65000),(43,70000,75000),(44,55000,60000),(45,48000,52000),(46,80000,85032),(47,62000,67000),(48,13650,10500),(49,53000,58000),(50,72000,77000),(51,90000,95000),(52,55000,60000),(53,120000,125000),(54,66730,67000),(55,85400,85000),(56,153900,241080),(57,53000,58000),(58,110000,115000),(59,62000,67000),(60,180432,185000),(61,50000,55000),(62,69104,65000),(63,70000,75000),(64,55000,60000),(65,51999,52000),(66,80000,85000),(67,62000,67000),(68,100000,105000),(69,53000,58000),(70,72000,77000),(71,95000,95000),(72,55000,55000),(73,123450,123450),(74,61420,67098),(75,80000,85000),(76,36000,15500),(77,53000,58000),(78,110000,115000),(79,62000,67000),(80,18000,18500),(81,50000,55000),(82,45240,65000);
/*!40000 ALTER TABLE `salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `test view`
--

DROP TABLE IF EXISTS `test view`;
/*!50001 DROP VIEW IF EXISTS `test view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `test view` AS SELECT 
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `Gender`,
 1 AS `ethnicity`,
 1 AS `year1_salary`,
 1 AS `rating`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'diversity_employee'
--

--
-- Dumping routines for database 'diversity_employee'
--
/*!50003 DROP FUNCTION IF EXISTS `calculate_bonus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `calculate_bonus`(starting_salary INT) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE annual_bonus INT;

    CASE
        WHEN starting_salary <= 40000 THEN SET annual_bonus = starting_salary * 0.22;
        WHEN starting_salary BETWEEN 40001 AND 70000 THEN SET annual_bonus = starting_salary * 0.13;
        WHEN starting_salary > 70000 THEN SET annual_bonus = starting_salary * 0.07;
    END CASE;

    RETURN annual_bonus;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `females_only`
--

/*!50001 DROP VIEW IF EXISTS `females_only`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `females_only` AS select `e`.`first_name` AS `first_name`,`e`.`last_name` AS `last_name`,`d`.`Gender` AS `Gender`,`d`.`Ethnicity` AS `ethnicity`,`s`.`year1_salary` AS `year1_salary`,`p`.`Rating` AS `rating` from (((`employee` `e` left join `demographic` `d` on((`d`.`Demo_ID` = `e`.`employee_id`))) left join `salary` `s` on((`s`.`Salary_ID` = `e`.`employee_id`))) left join `performance` `p` on((`p`.`Performance_ID` = `e`.`employee_id`))) where (`d`.`Gender` = 'F') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `test view`
--

/*!50001 DROP VIEW IF EXISTS `test view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `test view` AS select `e`.`first_name` AS `first_name`,`e`.`last_name` AS `last_name`,`d`.`Gender` AS `Gender`,`d`.`Ethnicity` AS `ethnicity`,`s`.`year1_salary` AS `year1_salary`,`p`.`Rating` AS `rating` from (((`employee` `e` left join `demographic` `d` on((`d`.`Demo_ID` = `e`.`employee_id`))) left join `salary` `s` on((`s`.`Salary_ID` = `e`.`employee_id`))) left join `performance` `p` on((`p`.`Performance_ID` = `e`.`employee_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-24 21:56:33
