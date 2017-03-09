-- MySQL dump 10.14  Distrib 5.5.50-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: shadowsocks
-- ------------------------------------------------------
-- Server version	5.5.50-MariaDB

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
-- Table structure for table `Employee`
--

DROP TABLE IF EXISTS `Employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Employee` (
  `ID` int(11) NOT NULL,
  `Salary` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee`
--

LOCK TABLES `Employee` WRITE;
/*!40000 ALTER TABLE `Employee` DISABLE KEYS */;
INSERT INTO `Employee` VALUES (1,100),(2,200),(3,300);
/*!40000 ALTER TABLE `Employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_drug`
--

DROP TABLE IF EXISTS `patient_drug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient_drug` (
  `patient` varchar(50) NOT NULL,
  `drug` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_drug`
--

LOCK TABLES `patient_drug` WRITE;
/*!40000 ALTER TABLE `patient_drug` DISABLE KEYS */;
INSERT INTO `patient_drug` VALUES ('P1','Drug1'),('P2','Drug1'),('P3','Drug1'),('P4','Drug1'),('P1','Drug2'),('P2','Drug2'),('P3','Drug2'),('P4','Drug3'),('P1','Drug3'),('P1','Drug4'),('P2','Drug3');
/*!40000 ALTER TABLE `patient_drug` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_reaction`
--

DROP TABLE IF EXISTS `patient_reaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient_reaction` (
  `patient` varchar(50) NOT NULL,
  `reaction` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_reaction`
--

LOCK TABLES `patient_reaction` WRITE;
/*!40000 ALTER TABLE `patient_reaction` DISABLE KEYS */;
INSERT INTO `patient_reaction` VALUES ('P1','reaction1'),('P1','reaction2'),('P1','reaction3'),('P1','reaction4'),('P1','reaction5'),('P1','reaction6'),('P1','reaction7'),('P2','reaction1'),('P2','reaction2'),('P2','reaction3'),('P2','reaction4'),('P2','reaction5'),('P3','reaction1'),('P3','reaction2'),('P3','reaction3'),('P3','reaction4'),('P4','reaction1'),('P4','reaction2'),('P4','reaction3'),('P4','reaction5');
/*!40000 ALTER TABLE `patient_reaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `traffic_history`
--

DROP TABLE IF EXISTS `traffic_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `traffic_history` (
  `dat_date` int(6) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `uname` varchar(20) DEFAULT NULL,
  `upload` bigint(20) DEFAULT NULL,
  `download` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `traffic_history`
--

LOCK TABLES `traffic_history` WRITE;
/*!40000 ALTER TABLE `traffic_history` DISABLE KEYS */;
INSERT INTO `traffic_history` VALUES (201701,443,'admin',389516317,33954554193),(201701,1443,'wy200855650',7243,4516),(201701,2443,'270382011',0,0),(201701,3443,'dragonszy',15917957,3371803065),(201701,4443,'zhutou530',2518188,106378335),(201701,4455,'xxq',0,0),(201701,5443,'sauronkk',0,372),(201701,6443,'397501170@qq.com',75972740,5682063309),(201701,7443,'yb3712590',216105523,19012350754),(201701,8443,'likethisj',1006949246,115454466206),(201701,9443,'kiranightshade',120,1084),(201701,10443,'zhuweifeng',0,0),(201701,11443,'phil',5895636,2540843736),(201701,12443,'kami939',16863564,2866212132),(201701,13443,'ningmengbingyi',5837418,265883071),(201701,14443,'xiaziqi007',0,0),(201701,15443,'FATEFEAR',0,0),(201702,443,'admin',882397764,11128015576),(201702,1443,'wy200855650',18340,10424),(201702,2443,'270382011',10766,6792),(201702,3443,'dragonszy',44673051,1517818793),(201702,4443,'zhutou530',1735607,14821713),(201702,4455,'xxq',8462,6144),(201702,5443,'sauronkk',10012,6320),(201702,6443,'397501170@qq.com',1237747448,40804384713),(201702,7443,'yb3712590',2118113244,106545044810),(201702,8443,'likethisj',1970567623,82270802131),(201702,9443,'kiranightshade',13201,7532),(201702,10443,'zhuweifeng',11248,7056),(201702,11443,'phil',167201751,1477886514),(201702,12443,'kami939',17939072,415869354),(201702,13443,'ningmengbingyi',104641873,468377918),(201702,14443,'xiaziqi007',9174,6012),(201702,15443,'FATEFEAR',8592,5268);
/*!40000 ALTER TABLE `traffic_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `port` int(11) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `upasswd` varchar(32) NOT NULL,
  `ss_passwd` int(8) unsigned DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `active` int(11) DEFAULT NULL,
  `utype` int(11) DEFAULT NULL,
  `upload` bigint(20) DEFAULT NULL,
  `download` bigint(20) DEFAULT NULL,
  `transfer_limit` int(11) DEFAULT NULL,
  `exp` date DEFAULT NULL,
  PRIMARY KEY (`port`),
  UNIQUE KEY `uname` (`uname`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (443,'admin','7815696ecbf1c96e6894b779456d330e',22167863,'494888545@qq.com',1,0,98472025,1403201059,1073741824,'2017-05-23'),(1443,'wy200855650','f87d0d0fcb3b01dfbe1d18616df5f80f',40261878,'200855650@qq.com',1,0,316,632,1073741824,'2017-05-23'),(2443,'270382011','5ede89cfff9a097b07ece8202dcfe958',83200770,'270382011@qq.com',1,0,264,164,1073741824,'2017-05-23'),(3443,'dragonszy','30dc0e845f7299eed32942873ed4a22d',47596662,'dragonszy@163.com',1,0,5484858,211494583,1073741824,'2017-05-23'),(4443,'zhutou530','c177078980e7347b71ce2d96ca7d57f5',97690340,'584832043@qq.com',1,0,10571772,185854893,1073741824,'2017-05-23'),(4455,'xxq','5cca6754e5c158a770be7264916aef59',45344897,'123456789@qq.com',1,0,0,0,1073741824,'2017-05-11'),(5443,'sauronkk','766a8e61890921118d940c422563620b',24808793,'1444564649@qq.com',1,0,264,164,1073741824,'2017-05-23'),(6443,'397501170@qq.com','c41d0a758d97e811e2a6674d152118ee',81957455,'397501170@qq.com',1,0,13226724,203672635,1073741824,'2017-05-24'),(7443,'yb3712590','7815696ecbf1c96e6894b779456d330e',69455690,'yb3712590@163.com',1,0,103742726,707056042,1073741824,'2017-05-26'),(8443,'likethisj','e10adc3949ba59abbe56e057f20f883e',77200126,'278989285@qq.com',1,0,179471258,8307411502,1073741824,'2017-05-28'),(9443,'kiranightshade','820cb9cfa6105e7257c15bf28418d34d',56295888,'qianlitao@163.com',1,0,1450,632,1073741824,'2017-05-30'),(10443,'zhuweifeng','f23a73bd3f23c2ab300755c79e9bb179',65643186,'545881046@qq.com',1,0,265,164,1073741824,'2017-06-09'),(11443,'phil','8d2d9d8803ad547c81a82f37d5fb6dbf',65056770,'656436656@qq.com',1,0,130610361,4271785259,1073741824,'2017-05-05'),(12443,'kami939','34a6d70a23de3d99ccdc746a3d04efd2',95040188,'2323019332@qq.com',1,0,25573022,1869643451,1073741824,'2017-05-05'),(13443,'ningmengbingyi','9a9977860fdfbd05aaad8654771434d2',24599462,'549284714@qq.com',1,0,45952790,148914671,1073741824,'2017-05-13'),(14443,'xiaziqi007','fdf850d45347c920446a1af17f1b8734',76226675,'xiaji3377000@qq.com',1,0,704960,22515916,1073741824,'2017-05-28'),(15443,'FATEFEAR','0408caec3ae4e610a39e71e022e2cbf3',75487982,'812974362@qq.com',1,0,265,164,1073741824,'2017-05-31');
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

-- Dump completed on 2017-03-09 10:53:59
