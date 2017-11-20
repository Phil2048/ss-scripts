-- MySQL dump 10.14  Distrib 5.5.56-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: shadowsocks
-- ------------------------------------------------------
-- Server version	5.5.56-MariaDB

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
-- Table structure for table `ss_user`
--

DROP TABLE IF EXISTS `ss_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(16) NOT NULL,
  `user_pass` varchar(32) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `active_flag` varchar(1) DEFAULT '0',
  `signup_date` datetime DEFAULT NULL,
  `user_role_id` int(11) DEFAULT NULL,
  `user_weight` decimal(10,0) DEFAULT '1',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone_number` (`phone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss_user`
--

LOCK TABLES `ss_user` WRITE;
/*!40000 ALTER TABLE `ss_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `ss_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp`
--

DROP TABLE IF EXISTS `temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp` (
  `id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `temperature` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp`
--

LOCK TABLES `temp` WRITE;
/*!40000 ALTER TABLE `temp` DISABLE KEYS */;
INSERT INTO `temp` VALUES (1,'2015-01-01',10),(2,'2015-01-02',25),(3,'2015-01-03',20),(4,'2015-01-04',30);
/*!40000 ALTER TABLE `temp` ENABLE KEYS */;
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
INSERT INTO `traffic_history` VALUES (201701,443,'admin',389516317,33954554193),(201701,1443,'wy200855650',7243,4516),(201701,2443,'270382011',0,0),(201701,3443,'dragonszy',15917957,3371803065),(201701,4443,'zhutou530',2518188,106378335),(201701,4455,'xxq',0,0),(201701,5443,'sauronkk',0,372),(201701,6443,'397501170@qq.com',75972740,5682063309),(201701,7443,'yb3712590',216105523,19012350754),(201701,8443,'likethisj',1006949246,115454466206),(201701,9443,'kiranightshade',120,1084),(201701,10443,'zhuweifeng',0,0),(201701,11443,'phil',5895636,2540843736),(201701,12443,'kami939',16863564,2866212132),(201701,13443,'ningmengbingyi',5837418,265883071),(201701,14443,'xiaziqi007',0,0),(201701,15443,'FATEFEAR',0,0),(201702,443,'admin',882397764,11128015576),(201702,1443,'wy200855650',18340,10424),(201702,2443,'270382011',10766,6792),(201702,3443,'dragonszy',44673051,1517818793),(201702,4443,'zhutou530',1735607,14821713),(201702,4455,'xxq',8462,6144),(201702,5443,'sauronkk',10012,6320),(201702,6443,'397501170@qq.com',1237747448,40804384713),(201702,7443,'yb3712590',2118113244,106545044810),(201702,8443,'likethisj',1970567623,82270802131),(201702,9443,'kiranightshade',13201,7532),(201702,10443,'zhuweifeng',11248,7056),(201702,11443,'phil',167201751,1477886514),(201702,12443,'kami939',17939072,415869354),(201702,13443,'ningmengbingyi',104641873,468377918),(201702,14443,'xiaziqi007',9174,6012),(201702,15443,'FATEFEAR',8592,5268),(201703,443,'admin',353387729,7591213867),(201703,1443,'wy200855650',4676,3608),(201703,2443,'270382011',1446,864),(201703,3443,'dragonszy',34456379,1071296004),(201703,4443,'zhutou530',13921342,271590841),(201703,4455,'xxq',120,44),(201703,5443,'sauronkk',1602,1332),(201703,6443,'397501170@qq.com',101896725,1298355707),(201703,7443,'yb3712590',904984171,7284907523),(201703,8443,'likethisj',1460552719,67991063028),(201703,9443,'kiranightshade',4284,1924),(201703,10443,'zhuweifeng',1450,864),(201703,11443,'phil',267100493,7666483616),(201703,12443,'kami939',89011198,2880005965),(201703,13443,'ningmengbingyi',184112748,840573444),(201703,14443,'xiaziqi007',166888153,5760704295),(201703,15443,'FATEFEAR',795,492),(201704,443,'admin',423236159,6648143452),(201704,1443,'wy200855650',2890,2924),(201704,2443,'270382011',2629,1468),(201704,3443,'dragonszy',30120238,618606637),(201704,4443,'zhutou530',6308988,195498118),(201704,4455,'xxq',0,0),(201704,5443,'sauronkk',2786,1936),(201704,6443,'397501170@qq.com',24111652,501280303),(201704,7443,'yb3712590',1166953142,25148653349),(201704,8443,'likethisj',1386869124,74775635991),(201704,9443,'kiranightshade',3334,1784),(201704,10443,'zhuweifeng',2521,2292),(201704,11443,'phil',76739533,563587665),(201704,12443,'kami939',97090620,5582453818),(201704,13443,'ningmengbingyi',98947765,464027147),(201704,14443,'xiaziqi007',842108313,24878852770),(201704,15443,'FATEFEAR',1761,984),(201704,16443,'124214214124',0,0),(201704,17443,'124214214125',0,0),(201705,443,'admin',715549201,13222413881),(201705,1443,'wy200855650',4065,2628),(201705,2443,'270382011',360194,5774854),(201705,3443,'dragonszy',26466075,652913839),(201705,4443,'zhutou530',6941,3188),(201705,4455,'xxq',0,0),(201705,5443,'sauronkk',2512,1312),(201705,6443,'397501170@qq.com',3783587,20566011),(201705,7443,'yb3712590',553346186,10953709180),(201705,8443,'likethisj',1442156458,43854926831),(201705,9443,'kiranightshade',5843,3020),(201705,10443,'zhuweifeng',2244,1188),(201705,11443,'phil',85926093,1245933869),(201705,12443,'kami939',104104287,5105926277),(201705,13443,'ningmengbingyi',35843085,199342642),(201705,14443,'xiaziqi007',1107739359,22089921629),(201705,15443,'FATEFEAR',2191,1604),(201705,16443,'124214214124',125945575,2977859066),(201705,17443,'124214214125',0,0),(201705,18443,'nimamania',25524,13280),(201706,443,'admin',899563274,26548454863),(201706,1443,'wy200855650',2006,1312),(201706,2443,'270382011',9891879,191682970),(201706,3443,'dragonszy',1784797,9168498),(201706,4443,'zhutou530',1497201,16694480),(201706,4455,'xxq',657,264),(201706,5443,'sauronkk',1558,1628),(201706,6443,'397501170@qq.com',11070364,150996466),(201706,7443,'yb3712590',437157300,9053728974),(201706,8443,'likethisj',1081652196,41060547339),(201706,9443,'kiranightshade',1351382,10224120),(201706,10443,'zhuweifeng',1508,1620),(201706,11443,'phil',189752400,2317169889),(201706,12443,'kami939',123620880,5730434413),(201706,13443,'ningmengbingyi',185985085,626882854),(201706,14443,'xiaziqi007',1271347242,45898254756),(201706,15443,'FATEFEAR',0,0),(201706,16443,'124214214124',103131155,5319647597),(201706,17443,'124214214125',0,0),(201706,18443,'nimamania',0,0),(201706,19443,'zhijun13',0,0),(201707,443,'admin',383342861,8272433719),(201707,1443,'wy200855650',2088,876),(201707,2443,'270382011',58768161,1499764626),(201707,3443,'dragonszy',41681570,1748809901),(201707,4443,'zhutou530',7492478,154123552),(201707,4455,'xxq',0,0),(201707,5443,'sauronkk',1586,668),(201707,6443,'397501170@qq.com',863011,17131173),(201707,7443,'yb3712590',836169395,15541023081),(201707,8443,'likethisj',4418646464,202771478777),(201707,9443,'kiranightshade',56833,12096),(201707,10443,'zhuweifeng',1399,700),(201707,11443,'phil',275682768,3799437023),(201707,12443,'kami939',110184403,8492998344),(201707,13443,'ningmengbingyi',50253098,375200045),(201707,14443,'xiaziqi007',1443866860,31353034234),(201707,15443,'FATEFEAR',296,156),(201707,16443,'124214214124',244647185,7866584012),(201707,17443,'124214214125',296,156),(201707,18443,'nimamania',0,0),(201707,19443,'zhijun13',0,0),(201707,20443,'wayne',739,372),(201708,443,'admin',878230669,16319924048),(201708,1443,'wy200855650',502,208),(201708,2443,'270382011',6801747054,15302922441),(201708,3443,'dragonszy',72780,26380),(201708,4443,'zhutou530',3182437,33927298),(201708,4455,'xxq',379,176),(201708,5443,'sauronkk',502,208),(201708,6443,'397501170@qq.com',502,208),(201708,7443,'yb3712590',1296268313,13564699398),(201708,8443,'likethisj',2120685135,96363046837),(201708,9443,'kiranightshade',43526,12480),(201708,10443,'zhuweifeng',582,252),(201708,11443,'phil',217933764,3949151798),(201708,12443,'kami939',156227016,7464405470),(201708,13443,'ningmengbingyi',201830916,1474827557),(201708,14443,'xiaziqi007',3127226841,66193026205),(201708,15443,'FATEFEAR',80,44),(201708,16443,'124214214124',561167877,15579659382),(201708,17443,'124214214125',0,0),(201708,18443,'nimamania',0,0),(201708,19443,'zhijun13',0,0),(201708,20443,'wayne',40,132),(201709,443,'admin',11670182680,172683781385),(201709,1443,'wy200855650',4122,2156),(201709,2443,'270382011',6681801306,15518991525),(201709,3443,'dragonszy',16127572,626144053),(201709,4443,'zhutou530',783160,3533951),(201709,4455,'xxq',724,400),(201709,5443,'sauronkk',617,208),(201709,6443,'397501170@qq.com',1815119712,2787584365),(201709,7443,'yb3712590',552391824,12920576915),(201709,8443,'likethisj',721174473,21033725920),(201709,9443,'kiranightshade',19924,9608),(201709,10443,'zhuweifeng',13397,7736),(201709,11443,'phil',430391735,7654088945),(201709,12443,'kami939',112040380,8714121015),(201709,13443,'ningmengbingyi',111324135,1516675088),(201709,14443,'xiaziqi007',2521646507,69818755179),(201709,15443,'FATEFEAR',8011,4524),(201709,16443,'124214214124',455635542,8088298212),(201709,17443,'124214214125',0,0),(201709,18443,'nimamania',0,0),(201709,19443,'zhijun13',0,0),(201709,20443,'wayne',7526061,85466856),(201709,21443,'tuturabbit',0,0),(201710,443,'admin',8515382015,225047433473),(201710,668,'850731718',51026,41587),(201710,1443,'wy200855650',13160,6536),(201710,2443,'270382011',4325785299,18571750023),(201710,3443,'dragonszy',266333,3759066),(201710,4443,'zhutou530',51764,27484),(201710,4455,'xxq',3726,2028),(201710,5443,'sauronkk',3569,2340),(201710,6443,'397501170@qq.com',2238432175,4172230912),(201710,7443,'yb3712590',239633112,4145092026),(201710,8443,'likethisj',3032432094,118321777305),(201710,9443,'kiranightshade',34007,16164),(201710,10443,'zhuweifeng',3985,1880),(201710,11443,'phil',1158476399,6769442565),(201710,12443,'kami939',162594648,8378366406),(201710,13443,'ningmengbingyi',3125890,56399551),(201710,14443,'xiaziqi007',0,0),(201710,15443,'FATEFEAR',8631,5192),(201710,16443,'124214214124',225983451,8735071590),(201710,17443,'124214214125',0,0),(201710,18443,'nimamania',0,0),(201710,19443,'zhijun13',0,0),(201710,20443,'wayne',3550249,56243450),(201710,21443,'tuturabbit',0,0);
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
INSERT INTO `user` VALUES (443,'admin','7815696ecbf1c96e6894b779456d330e',22167863,'494888545@qq.com',1,0,3463398326,152887486393,1073741824,'2018-05-23'),(668,'850731718','fa0141c1f56abb3f8bc6d0293e47c610',83067066,'850731718@qq.com',1,0,16082,8540,1073741824,'2018-05-13'),(1443,'wy200855650','f87d0d0fcb3b01dfbe1d18616df5f80f',40261878,'200855650@qq.com',1,0,27195,14484,1073741824,'2018-05-23'),(2443,'270382011','5ede89cfff9a097b07ece8202dcfe958',83200770,'270382011@qq.com',1,0,1010978159,6906742906,1073741824,'2018-05-23'),(3443,'dragonszy','30dc0e845f7299eed32942873ed4a22d',47596662,'dragonszy@163.com',1,0,11830450,437395937,1073741824,'2018-05-23'),(4443,'zhutou530','c177078980e7347b71ce2d96ca7d57f5',97690340,'584832043@qq.com',1,0,10831433,146913518,1073741824,'2018-05-23'),(4455,'xxq','5cca6754e5c158a770be7264916aef59',45344897,'123456789@qq.com',1,0,10914,6544,1073741824,'2018-05-11'),(5443,'sauronkk','766a8e61890921118d940c422563620b',24808793,'1444564649@qq.com',1,0,3566,1576,1073741824,'2018-05-23'),(6443,'397501170@qq.com','c41d0a758d97e811e2a6674d152118ee',81957455,'397501170@qq.com',1,0,594191196,1432938750,1073741824,'2018-05-24'),(7443,'yb3712590','7815696ecbf1c96e6894b779456d330e',69455690,'yb3712590@163.com',1,0,886590918,13072328444,1073741824,'2018-05-26'),(8443,'likethisj','e10adc3949ba59abbe56e057f20f883e',77200126,'278989285@qq.com',1,0,2267273233,102866102083,1073741824,'2018-05-28'),(9443,'kiranightshade','820cb9cfa6105e7257c15bf28418d34d',56295888,'qianlitao@163.com',1,0,31272,14912,1073741824,'2018-05-30'),(10443,'zhuweifeng','f23a73bd3f23c2ab300755c79e9bb179',65643186,'545881046@qq.com',1,0,22243,12496,1073741824,'2018-06-09'),(11443,'phil','8d2d9d8803ad547c81a82f37d5fb6dbf',65056770,'656436656@qq.com',1,0,24922747,166503930,1073741824,'2018-10-05'),(12443,'kami939','5690dddfa28ae085d23518a035707282',95040188,'2323019332@qq.com',1,0,71003037,3362781094,1073741824,'2018-10-05'),(13443,'ningmengbingyi','9a9977860fdfbd05aaad8654771434d2',24599462,'549284714@qq.com',1,0,12903,7808,1073741824,'2018-05-13'),(14443,'xiaziqi007','fdf850d45347c920446a1af17f1b8734',76226675,'xiaji3377000@qq.com',1,0,5288,3440,1073741824,'2018-05-28'),(15443,'FATEFEAR','0408caec3ae4e610a39e71e022e2cbf3',75487982,'812974362@qq.com',1,0,6460,4156,1073741824,'2018-05-31'),(16443,'124214214124','aee2f80eea5347784ed7c4037b34077e',34084811,'124214214124@123.com',1,0,44464039,752292886,1073741824,'2018-04-17'),(17443,'124214214125','5baab081e511d4fb2f3e768712dde603',51353465,'124214214125@123.com',1,0,7179,4840,1073741824,'2018-04-17'),(18443,'nimamania','184d8605b556a56ac964bfe92a4e8fc8',19200723,'nimamania@gmail.com',0,0,0,0,1073741824,'2017-05-18'),(19443,'zhijun13','dcd780af92da0dbac1f7ade7f88cb079',77414919,'1410491150@qq.com',0,0,0,0,1073741824,'2017-07-01'),(20443,'wayne','8b16c78c9f91b1be6c1b409b8f1feb83',93048426,'153068137@qq.com',1,0,10638,6196,1073741824,'2018-02-25'),(21443,'tuturabbit','950e16c5529d3d0fccf17cb2e888dc00',78908430,'546705027@qq.com',1,0,12405,7788,1073741824,'2018-03-22'),(22443,'zzw','dc8750acdb781cd65366fea23b4b5531',56289955,'1053445965@qq.com',1,0,5846,3360,1073741824,'2018-05-09'),(23443,'rxidesign','e1d7cc664fd8b68027f4d2287b4a785c',68337310,'rxidesign@xtyda.com',1,0,1662943777,9904320236,1073741824,'2018-05-10');
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

-- Dump completed on 2017-11-20 18:00:01
