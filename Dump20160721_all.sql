-- MySQL dump 10.13  Distrib 5.6.23, for Win32 (x86)
--
-- Host: localhost    Database: explorerrh
-- ------------------------------------------------------
-- Server version	5.5.43

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
-- Table structure for table `candidat`
--

DROP TABLE IF EXISTS `candidat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `candidat` (
  `idcandidat` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `firstName` varchar(45) DEFAULT NULL,
  `cv` blob,
  `photo` blob,
  `niveau` varchar(45) DEFAULT NULL,
  `poste` varchar(45) DEFAULT NULL,
  `statut` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcandidat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidat`
--

LOCK TABLES `candidat` WRITE;
/*!40000 ALTER TABLE `candidat` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `idemployee` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `cin` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `post` varchar(45) DEFAULT NULL,
  `cnss` varchar(45) DEFAULT NULL,
  `cv` varchar(45) DEFAULT NULL,
  `photo` varchar(45) DEFAULT NULL,
  `salaire` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `mail` varchar(45) DEFAULT NULL,
  `enabled` varchar(45) DEFAULT NULL,
  `user` bigint(20) DEFAULT NULL,
  `holidays` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idemployee`),
  KEY `user_fk_idx` (`user`),
  CONSTRAINT `user_fk` FOREIGN KEY (`user`) REFERENCES `users` (`userid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'atef','charef',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'atef','atef@atef.com',NULL,1,'6'),(2,'prya','prya',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'prya','prya@prya',NULL,2,NULL);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `holiday`
--

DROP TABLE IF EXISTS `holiday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `holiday` (
  `id_holiday` int(11) NOT NULL AUTO_INCREMENT,
  `end` date DEFAULT NULL,
  `start` date DEFAULT NULL,
  `employee` int(11) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `description` varchar(10) DEFAULT NULL,
  `justification` tinyblob,
  PRIMARY KEY (`id_holiday`),
  KEY `FK_jc8fk5xuxcu87r8apyp6851yr` (`employee`),
  CONSTRAINT `FK_jc8fk5xuxcu87r8apyp6851yr` FOREIGN KEY (`employee`) REFERENCES `employee` (`idemployee`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `holiday`
--

LOCK TABLES `holiday` WRITE;
/*!40000 ALTER TABLE `holiday` DISABLE KEYS */;
INSERT INTO `holiday` VALUES (1,NULL,NULL,1,'holiday','vvccv',NULL),(2,NULL,NULL,1,'holiday','ggghgh',NULL),(3,NULL,NULL,1,'holiday','kjhgfd',NULL),(4,'0030-11-06','0017-11-06',1,'holiday','xssxsx',NULL),(5,'2016-05-23','2016-05-18',1,'holiday','xxxx',NULL),(6,'2016-06-14','2016-06-07',1,'holiday','Test',NULL);
/*!40000 ALTER TABLE `holiday` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interview`
--

DROP TABLE IF EXISTS `interview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interview` (
  `idinterview` int(11) NOT NULL,
  `candidat` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `level` varchar(45) DEFAULT NULL,
  `interviewer` int(11) DEFAULT NULL,
  PRIMARY KEY (`idinterview`),
  KEY `fk_interviewer_idx` (`interviewer`),
  KEY `fk_candidat_idx` (`candidat`),
  CONSTRAINT `fk_candidat` FOREIGN KEY (`candidat`) REFERENCES `candidat` (`idcandidat`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_interviewer` FOREIGN KEY (`interviewer`) REFERENCES `employee` (`idemployee`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interview`
--

LOCK TABLES `interview` WRITE;
/*!40000 ALTER TABLE `interview` DISABLE KEYS */;
/*!40000 ALTER TABLE `interview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `idmessage` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(45) DEFAULT NULL,
  `sender` int(11) DEFAULT NULL,
  `receiver` int(11) DEFAULT NULL,
  `pj` blob,
  `object` varchar(105) DEFAULT NULL,
  PRIMARY KEY (`idmessage`),
  KEY `fk_sender_idx` (`sender`,`receiver`),
  KEY `fk_receiver_idx` (`receiver`),
  CONSTRAINT `fk_receiver` FOREIGN KEY (`receiver`) REFERENCES `employee` (`idemployee`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_sender` FOREIGN KEY (`sender`) REFERENCES `employee` (`idemployee`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,'fcgvhb',1,2,NULL,'testes'),(2,'sddssd',1,1,NULL,'dssdsd'),(3,'dddff',1,2,NULL,'tprya'),(4,NULL,1,2,NULL,NULL);
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `idtasks` int(11) NOT NULL AUTO_INCREMENT,
  `employee` int(11) DEFAULT NULL,
  `taskName` varchar(45) DEFAULT NULL,
  `taskDescrption` longtext,
  `taskTime` datetime DEFAULT NULL,
  `statut` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtasks`),
  KEY `emplyee_fk_idx` (`employee`),
  CONSTRAINT `emplyee_fk` FOREIGN KEY (`employee`) REFERENCES `employee` (`idemployee`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1 COMMENT='		';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (3,1,'task11','sss','2001-12-20 00:00:00','Open'),(4,1,'task12','ze','0006-11-02 00:00:00','Open'),(5,1,'rere','errere','0006-11-02 00:00:00','Open'),(6,1,'rere','errere','0006-11-02 00:00:00','Open'),(7,1,'rere','errere','0006-11-02 00:00:00','Open'),(8,1,'hello','ssss','2001-12-20 00:00:00','Open'),(9,1,'qsdfg','cvb','2001-12-20 00:00:00','Open'),(10,1,'mlj','fffss','2001-12-20 00:00:00','Open'),(11,1,'xxsqqq','qqsssss',NULL,'Open'),(12,1,'wxdxxx','wxx','2001-12-20 00:00:00','Open'),(13,1,'qqqqq','qqqq','2001-12-20 00:00:00','Open'),(14,1,'fggfgfgf','gfgfgfgfgf','2001-12-20 00:00:00','Open'),(15,1,'edddd','ddddd','2001-12-20 00:00:00','Open'),(16,1,NULL,NULL,NULL,'Open'),(17,1,NULL,NULL,NULL,'Open'),(18,1,'My New Task','Description',NULL,'Open'),(19,1,'Contacter Imed','je dois ajouter une template',NULL,'Open'),(20,1,'Contacter Imed2','qsdfghjklkjhgfdsvgbhn,',NULL,'Open'),(21,1,'ssssss','ssssssss','0016-11-05 00:00:00','Open'),(22,1,'lyoum','eeee','0010-11-06 00:00:00','Open'),(23,1,'today','araz','0010-11-06 00:00:00','Open'),(24,1,'hello','yedt','2016-05-06 02:01:00','Open'),(25,1,'My Task of day!','Must contact me to take papers','2016-05-07 20:12:00','Open'),(26,1,'sdffsdfsfsdffsd','fsfsdsfffdsfsd','2016-05-06 05:05:00','Open'),(27,1,'qsdfgh,ghjkjghfgv','sdfdgfhgjhkutyrtdf','2016-05-06 02:02:00','Open'),(28,1,'dsdsdsd','test','2016-05-07 13:21:00','Open'),(29,1,'call mister gim','Behi hani bech nfahmek','2016-05-22 14:20:00','Open'),(30,1,'Fhjjb','Fghy','2016-06-25 16:06:00','Open'),(31,1,'TEZT','AZSDS','2017-12-30 06:02:00','Open');
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket` (
  `idticket` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `statut` varchar(45) DEFAULT NULL,
  `sender` int(11) DEFAULT NULL,
  `receiver` int(11) DEFAULT NULL,
  PRIMARY KEY (`idticket`),
  KEY `employe_sender_idx` (`sender`),
  KEY `employee_receiver_idx` (`receiver`),
  CONSTRAINT `employee_receiver` FOREIGN KEY (`receiver`) REFERENCES `employee` (`idemployee`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `employe_sender` FOREIGN KEY (`sender`) REFERENCES `employee` (`idemployee`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (1,'requestRH','Besoin de attestation de travail','dffddf','OPEN',1,2),(2,'requestRH','tesinh','Trst','OPEN',1,1);
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `user_role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role` varchar(255) DEFAULT NULL,
  `userid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`user_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (1,'ROLE_USER',1),(2,'ROLE_ADMIN',2),(3,'ROLE_USER',2);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `userid` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `enabled` int(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `employee` int(11) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abc@abc.com',1,'$2a$04$CO93CT2ObgMiSnMAWwoBkeFObJlMYi/wzzOnPlsTP44r7qVq0Jln2','atef@atef.com',1),(2,'def@def.com',1,'atef','naveen',2);
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

-- Dump completed on 2016-07-21 16:51:30
