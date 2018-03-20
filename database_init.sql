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
  `download` bigint(20) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `traffic_history`
--

LOCK TABLES `traffic_history` WRITE;
/*!40000 ALTER TABLE `traffic_history` DISABLE KEYS */;
INSERT INTO `traffic_history` VALUES (201701,443,'admin',389516317,33954554193,NULL),(201701,1443,'wy200855650',7243,4516,NULL),(201701,2443,'270382011',0,0,NULL),(201701,3443,'dragonszy',15917957,3371803065,NULL),(201701,4443,'zhutou530',2518188,106378335,NULL),(201701,4455,'xxq',0,0,NULL),(201701,5443,'sauronkk',0,372,NULL),(201701,6443,'397501170@qq.com',75972740,5682063309,NULL),(201701,7443,'yb3712590',216105523,19012350754,NULL),(201701,8443,'likethisj',1006949246,115454466206,NULL),(201701,9443,'kiranightshade',120,1084,NULL),(201701,10443,'zhuweifeng',0,0,NULL),(201701,11443,'phil',5895636,2540843736,NULL),(201701,12443,'kami939',16863564,2866212132,NULL),(201701,13443,'ningmengbingyi',5837418,265883071,NULL),(201701,14443,'xiaziqi007',0,0,NULL),(201701,15443,'FATEFEAR',0,0,NULL),(201702,443,'admin',882397764,11128015576,NULL),(201702,1443,'wy200855650',18340,10424,NULL),(201702,2443,'270382011',10766,6792,NULL),(201702,3443,'dragonszy',44673051,1517818793,NULL),(201702,4443,'zhutou530',1735607,14821713,NULL),(201702,4455,'xxq',8462,6144,NULL),(201702,5443,'sauronkk',10012,6320,NULL),(201702,6443,'397501170@qq.com',1237747448,40804384713,NULL),(201702,7443,'yb3712590',2118113244,106545044810,NULL),(201702,8443,'likethisj',1970567623,82270802131,NULL),(201702,9443,'kiranightshade',13201,7532,NULL),(201702,10443,'zhuweifeng',11248,7056,NULL),(201702,11443,'phil',167201751,1477886514,NULL),(201702,12443,'kami939',17939072,415869354,NULL),(201702,13443,'ningmengbingyi',104641873,468377918,NULL),(201702,14443,'xiaziqi007',9174,6012,NULL),(201702,15443,'FATEFEAR',8592,5268,NULL),(201703,443,'admin',353387729,7591213867,NULL),(201703,1443,'wy200855650',4676,3608,NULL),(201703,2443,'270382011',1446,864,NULL),(201703,3443,'dragonszy',34456379,1071296004,NULL),(201703,4443,'zhutou530',13921342,271590841,NULL),(201703,4455,'xxq',120,44,NULL),(201703,5443,'sauronkk',1602,1332,NULL),(201703,6443,'397501170@qq.com',101896725,1298355707,NULL),(201703,7443,'yb3712590',904984171,7284907523,NULL),(201703,8443,'likethisj',1460552719,67991063028,NULL),(201703,9443,'kiranightshade',4284,1924,NULL),(201703,10443,'zhuweifeng',1450,864,NULL),(201703,11443,'phil',267100493,7666483616,NULL),(201703,12443,'kami939',89011198,2880005965,NULL),(201703,13443,'ningmengbingyi',184112748,840573444,NULL),(201703,14443,'xiaziqi007',166888153,5760704295,NULL),(201703,15443,'FATEFEAR',795,492,NULL),(201704,443,'admin',423236159,6648143452,NULL),(201704,1443,'wy200855650',2890,2924,NULL),(201704,2443,'270382011',2629,1468,NULL),(201704,3443,'dragonszy',30120238,618606637,NULL),(201704,4443,'zhutou530',6308988,195498118,NULL),(201704,4455,'xxq',0,0,NULL),(201704,5443,'sauronkk',2786,1936,NULL),(201704,6443,'397501170@qq.com',24111652,501280303,NULL),(201704,7443,'yb3712590',1166953142,25148653349,NULL),(201704,8443,'likethisj',1386869124,74775635991,NULL),(201704,9443,'kiranightshade',3334,1784,NULL),(201704,10443,'zhuweifeng',2521,2292,NULL),(201704,11443,'phil',76739533,563587665,NULL),(201704,12443,'kami939',97090620,5582453818,NULL),(201704,13443,'ningmengbingyi',98947765,464027147,NULL),(201704,14443,'xiaziqi007',842108313,24878852770,NULL),(201704,15443,'FATEFEAR',1761,984,NULL),(201704,16443,'124214214124',0,0,NULL),(201704,17443,'124214214125',0,0,NULL),(201705,443,'admin',715549201,13222413881,NULL),(201705,1443,'wy200855650',4065,2628,NULL),(201705,2443,'270382011',360194,5774854,NULL),(201705,3443,'dragonszy',26466075,652913839,NULL),(201705,4443,'zhutou530',6941,3188,NULL),(201705,4455,'xxq',0,0,NULL),(201705,5443,'sauronkk',2512,1312,NULL),(201705,6443,'397501170@qq.com',3783587,20566011,NULL),(201705,7443,'yb3712590',553346186,10953709180,NULL),(201705,8443,'likethisj',1442156458,43854926831,NULL),(201705,9443,'kiranightshade',5843,3020,NULL),(201705,10443,'zhuweifeng',2244,1188,NULL),(201705,11443,'phil',85926093,1245933869,NULL),(201705,12443,'kami939',104104287,5105926277,NULL),(201705,13443,'ningmengbingyi',35843085,199342642,NULL),(201705,14443,'xiaziqi007',1107739359,22089921629,NULL),(201705,15443,'FATEFEAR',2191,1604,NULL),(201705,16443,'124214214124',125945575,2977859066,NULL),(201705,17443,'124214214125',0,0,NULL),(201705,18443,'nimamania',25524,13280,NULL),(201706,443,'admin',899563274,26548454863,NULL),(201706,1443,'wy200855650',2006,1312,NULL),(201706,2443,'270382011',9891879,191682970,NULL),(201706,3443,'dragonszy',1784797,9168498,NULL),(201706,4443,'zhutou530',1497201,16694480,NULL),(201706,4455,'xxq',657,264,NULL),(201706,5443,'sauronkk',1558,1628,NULL),(201706,6443,'397501170@qq.com',11070364,150996466,NULL),(201706,7443,'yb3712590',437157300,9053728974,NULL),(201706,8443,'likethisj',1081652196,41060547339,NULL),(201706,9443,'kiranightshade',1351382,10224120,NULL),(201706,10443,'zhuweifeng',1508,1620,NULL),(201706,11443,'phil',189752400,2317169889,NULL),(201706,12443,'kami939',123620880,5730434413,NULL),(201706,13443,'ningmengbingyi',185985085,626882854,NULL),(201706,14443,'xiaziqi007',1271347242,45898254756,NULL),(201706,15443,'FATEFEAR',0,0,NULL),(201706,16443,'124214214124',103131155,5319647597,NULL),(201706,17443,'124214214125',0,0,NULL),(201706,18443,'nimamania',0,0,NULL),(201706,19443,'zhijun13',0,0,NULL),(201707,443,'admin',383342861,8272433719,NULL),(201707,1443,'wy200855650',2088,876,NULL),(201707,2443,'270382011',58768161,1499764626,NULL),(201707,3443,'dragonszy',41681570,1748809901,NULL),(201707,4443,'zhutou530',7492478,154123552,NULL),(201707,4455,'xxq',0,0,NULL),(201707,5443,'sauronkk',1586,668,NULL),(201707,6443,'397501170@qq.com',863011,17131173,NULL),(201707,7443,'yb3712590',836169395,15541023081,NULL),(201707,8443,'likethisj',4418646464,202771478777,NULL),(201707,9443,'kiranightshade',56833,12096,NULL),(201707,10443,'zhuweifeng',1399,700,NULL),(201707,11443,'phil',275682768,3799437023,NULL),(201707,12443,'kami939',110184403,8492998344,NULL),(201707,13443,'ningmengbingyi',50253098,375200045,NULL),(201707,14443,'xiaziqi007',1443866860,31353034234,NULL),(201707,15443,'FATEFEAR',296,156,NULL),(201707,16443,'124214214124',244647185,7866584012,NULL),(201707,17443,'124214214125',296,156,NULL),(201707,18443,'nimamania',0,0,NULL),(201707,19443,'zhijun13',0,0,NULL),(201707,20443,'wayne',739,372,NULL),(201708,443,'admin',878230669,16319924048,NULL),(201708,1443,'wy200855650',502,208,NULL),(201708,2443,'270382011',6801747054,15302922441,NULL),(201708,3443,'dragonszy',72780,26380,NULL),(201708,4443,'zhutou530',3182437,33927298,NULL),(201708,4455,'xxq',379,176,NULL),(201708,5443,'sauronkk',502,208,NULL),(201708,6443,'397501170@qq.com',502,208,NULL),(201708,7443,'yb3712590',1296268313,13564699398,NULL),(201708,8443,'likethisj',2120685135,96363046837,NULL),(201708,9443,'kiranightshade',43526,12480,NULL),(201708,10443,'zhuweifeng',582,252,NULL),(201708,11443,'phil',217933764,3949151798,NULL),(201708,12443,'kami939',156227016,7464405470,NULL),(201708,13443,'ningmengbingyi',201830916,1474827557,NULL),(201708,14443,'xiaziqi007',3127226841,66193026205,NULL),(201708,15443,'FATEFEAR',80,44,NULL),(201708,16443,'124214214124',561167877,15579659382,NULL),(201708,17443,'124214214125',0,0,NULL),(201708,18443,'nimamania',0,0,NULL),(201708,19443,'zhijun13',0,0,NULL),(201708,20443,'wayne',40,132,NULL),(201709,443,'admin',11670182680,172683781385,NULL),(201709,1443,'wy200855650',4122,2156,NULL),(201709,2443,'270382011',6681801306,15518991525,NULL),(201709,3443,'dragonszy',16127572,626144053,NULL),(201709,4443,'zhutou530',783160,3533951,NULL),(201709,4455,'xxq',724,400,NULL),(201709,5443,'sauronkk',617,208,NULL),(201709,6443,'397501170@qq.com',1815119712,2787584365,NULL),(201709,7443,'yb3712590',552391824,12920576915,NULL),(201709,8443,'likethisj',721174473,21033725920,NULL),(201709,9443,'kiranightshade',19924,9608,NULL),(201709,10443,'zhuweifeng',13397,7736,NULL),(201709,11443,'phil',430391735,7654088945,NULL),(201709,12443,'kami939',112040380,8714121015,NULL),(201709,13443,'ningmengbingyi',111324135,1516675088,NULL),(201709,14443,'xiaziqi007',2521646507,69818755179,NULL),(201709,15443,'FATEFEAR',8011,4524,NULL),(201709,16443,'124214214124',455635542,8088298212,NULL),(201709,17443,'124214214125',0,0,NULL),(201709,18443,'nimamania',0,0,NULL),(201709,19443,'zhijun13',0,0,NULL),(201709,20443,'wayne',7526061,85466856,NULL),(201709,21443,'tuturabbit',0,0,NULL),(201710,443,'admin',8515382015,225047433473,NULL),(201710,668,'850731718',51026,41587,NULL),(201710,1443,'wy200855650',13160,6536,NULL),(201710,2443,'270382011',4325785299,18571750023,NULL),(201710,3443,'dragonszy',266333,3759066,NULL),(201710,4443,'zhutou530',51764,27484,NULL),(201710,4455,'xxq',3726,2028,NULL),(201710,5443,'sauronkk',3569,2340,NULL),(201710,6443,'397501170@qq.com',2238432175,4172230912,NULL),(201710,7443,'yb3712590',239633112,4145092026,NULL),(201710,8443,'likethisj',3032432094,118321777305,NULL),(201710,9443,'kiranightshade',34007,16164,NULL),(201710,10443,'zhuweifeng',3985,1880,NULL),(201710,11443,'phil',1158476399,6769442565,NULL),(201710,12443,'kami939',162594648,8378366406,NULL),(201710,13443,'ningmengbingyi',3125890,56399551,NULL),(201710,14443,'xiaziqi007',0,0,NULL),(201710,15443,'FATEFEAR',8631,5192,NULL),(201710,16443,'124214214124',225983451,8735071590,NULL),(201710,17443,'124214214125',0,0,NULL),(201710,18443,'nimamania',0,0,NULL),(201710,19443,'zhijun13',0,0,NULL),(201710,20443,'wayne',3550249,56243450,NULL),(201710,21443,'tuturabbit',0,0,NULL),(201711,443,'admin',6889067702,262052434975,NULL),(201711,668,'850731718',11276946,1054936987,NULL),(201711,1443,'wy200855650',33048,17848,NULL),(201711,2443,'270382011',2998856120,78848865883,NULL),(201711,3443,'dragonszy',52311854,1529965874,NULL),(201711,4443,'zhutou530',10848355,146924430,NULL),(201711,4455,'xxq',12396,7336,NULL),(201711,5443,'sauronkk',5254,2492,NULL),(201711,6443,'397501170@qq.com',716049779,4543006319,NULL),(201711,7443,'yb3712590',1205400981,21955965912,NULL),(201711,8443,'likethisj',3139790411,138916218517,NULL),(201711,9443,'kiranightshade',38402,19008,NULL),(201711,10443,'zhuweifeng',22243,12496,NULL),(201711,11443,'phil',470292997,510647007,NULL),(201711,12443,'kami939',92581830,4194264240,NULL),(201711,13443,'ningmengbingyi',13023,7852,NULL),(201711,14443,'xiaziqi007',9879,5592,NULL),(201711,15443,'FATEFEAR',932871041,1081261940,NULL),(201711,16443,'124214214124',141691795,2545117037,NULL),(201711,17443,'124214214125',7299,4884,NULL),(201711,18443,'nimamania',0,0,NULL),(201711,19443,'zhijun13',0,0,NULL),(201711,20443,'wayne',15244,8748,NULL),(201711,21443,'tuturabbit',12525,7832,NULL),(201711,22443,'zzw',5966,3404,NULL),(201711,23443,'rxidesign',2063951036,19844834988,NULL),(201711,443,'admin',120095199,4992583077,NULL),(201711,668,'850731718',4959716,263610904,NULL),(201711,1443,'wy200855650',438,260,NULL),(201711,2443,'270382011',5165216,130373029,NULL),(201711,3443,'dragonszy',66957,269512,NULL),(201711,4443,'zhutou530',1614,684,NULL),(201711,4455,'xxq',0,0,NULL),(201711,5443,'sauronkk',0,0,NULL),(201711,6443,'397501170@qq.com',219,132,NULL),(201711,7443,'yb3712590',2449610,5762289,NULL),(201711,8443,'likethisj',50601200,2114105967,NULL),(201711,9443,'kiranightshade',0,0,NULL),(201711,10443,'zhuweifeng',0,0,NULL),(201711,11443,'phil',610575,988982,NULL),(201711,12443,'kami939',0,0,NULL),(201711,13443,'ningmengbingyi',0,0,NULL),(201711,14443,'xiaziqi007',0,0,NULL),(201711,15443,'FATEFEAR',9789,1088,NULL),(201711,16443,'124214214124',271467,1272257,NULL),(201711,17443,'124214214125',0,0,NULL),(201711,18443,'nimamania',0,0,NULL),(201711,19443,'zhijun13',0,0,NULL),(201711,20443,'wayne',0,0,NULL),(201711,21443,'tuturabbit',0,0,NULL),(201711,22443,'zzw',0,0,NULL),(201711,23443,'rxidesign',3568208,9935291,NULL),(201712,443,'admin',9656842995,300577367010,NULL),(201712,668,'850731718',132885127,709999568,NULL),(201712,1443,'wy200855650',17987,9984,NULL),(201712,2443,'270382011',3639507297,120284644181,NULL),(201712,3443,'dragonszy',42332067,1653995490,NULL),(201712,4443,'zhutou530',2857428,30919275,NULL),(201712,4455,'xxq',1920,1152,NULL),(201712,5443,'sauronkk',9459,5672,NULL),(201712,6443,'397501170@qq.com',71111954,711906512,NULL),(201712,7443,'yb3712590',498062565,15021467745,NULL),(201712,8443,'likethisj',2904010553,122903485477,NULL),(201712,9443,'kiranightshade',50489,25504,NULL),(201712,10443,'zhuweifeng',6617,3640,NULL),(201712,11443,'phil',131706164,578993899,NULL),(201712,12443,'kami939',179272517,7603306187,NULL),(201712,13443,'ningmengbingyi',80,44,NULL),(201712,14443,'xiaziqi007',819,396,NULL),(201712,15443,'FATEFEAR',3426978,77493611,NULL),(201712,16443,'124214214124',116880729,3278147624,NULL),(201712,17443,'124214214125',80,44,NULL),(201712,18443,'nimamania',0,0,NULL),(201712,19443,'zhijun13',0,0,NULL),(201712,20443,'wayne',1168845,3668056,NULL),(201712,21443,'tuturabbit',80,44,NULL),(201712,22443,'zzw',3256,2004,NULL),(201712,23443,'rxidesign',3168779754,35171667423,NULL),(201712,24443,'maryshall',39497484,2408782145,NULL),(201712,443,'admin',146818225,2630100315,NULL),(201712,668,'850731718',0,0,NULL),(201712,1443,'wy200855650',240,88,NULL),(201712,2443,'270382011',1881693,13168588,NULL),(201712,3443,'dragonszy',0,0,NULL),(201712,4443,'zhutou530',3988404,19447751,NULL),(201712,4455,'xxq',120,44,NULL),(201712,5443,'sauronkk',120,44,NULL),(201712,6443,'397501170@qq.com',5552094,8076258,NULL),(201712,7443,'yb3712590',1638922,22842982,NULL),(201712,8443,'likethisj',61976219,2932792914,NULL),(201712,9443,'kiranightshade',558,304,NULL),(201712,10443,'zhuweifeng',0,0,NULL),(201712,11443,'phil',192752,392180,NULL),(201712,12443,'kami939',1286483,53431568,NULL),(201712,13443,'ningmengbingyi',0,0,NULL),(201712,14443,'xiaziqi007',0,0,NULL),(201712,15443,'FATEFEAR',0,0,NULL),(201712,16443,'124214214124',0,0,NULL),(201712,17443,'124214214125',0,0,NULL),(201712,18443,'nimamania',0,0,NULL),(201712,19443,'zhijun13',0,0,NULL),(201712,20443,'wayne',0,0,NULL),(201712,21443,'tuturabbit',0,0,NULL),(201712,22443,'zzw',0,0,NULL),(201712,23443,'rxidesign',54310,147837,NULL),(201712,24443,'maryshall',0,0,NULL),(201801,443,'admin',8365372153,212997508908,NULL),(201801,668,'850731718',5297,2912,NULL),(201801,1443,'wy200855650',13708,7840,NULL),(201801,2443,'270382011',2511938931,35619587175,NULL),(201801,3443,'dragonszy',119759714,5569192447,NULL),(201801,4443,'zhutou530',12142740,60423202,NULL),(201801,4455,'xxq',18075,7448,NULL),(201801,5443,'sauronkk',11643,5472,NULL),(201801,6443,'397501170@qq.com',302830918,2810203374,NULL),(201801,7443,'yb3712590',297069977,4020048478,NULL),(201801,8443,'likethisj',991605512,45416175098,NULL),(201801,9443,'kiranightshade',40564,18044,NULL),(201801,10443,'zhuweifeng',12167,5672,NULL),(201801,11443,'phil',362919624,1099756429,NULL),(201801,12443,'kami939',148282430,6704271542,NULL),(201801,13443,'ningmengbingyi',80,44,NULL),(201801,14443,'xiaziqi007',459,220,NULL),(201801,15443,'FATEFEAR',573,252,NULL),(201801,16443,'124214214124',515809019,3343973402,NULL),(201801,17443,'124214214125',160,88,NULL),(201801,18443,'nimamania',0,0,NULL),(201801,19443,'zhijun13',0,0,NULL),(201801,20443,'wayne',15270,7396,NULL),(201801,21443,'tuturabbit',80,44,NULL),(201801,22443,'zzw',80,44,NULL),(201801,23443,'rxidesign',5670687573,34467018520,NULL),(201801,24443,'maryshall',28266566,1371060261,NULL),(201801,443,'admin',50174955,1491405044,NULL),(201801,668,'850731718',0,0,NULL),(201801,1443,'wy200855650',1663,952,NULL),(201801,2443,'270382011',7241369,24697704,NULL),(201801,3443,'dragonszy',1543,908,NULL),(201801,4443,'zhutou530',2440,1392,NULL),(201801,4455,'xxq',259,132,NULL),(201801,5443,'sauronkk',259,132,NULL),(201801,6443,'397501170@qq.com',1515,864,NULL),(201801,7443,'yb3712590',2168407,118988666,NULL),(201801,8443,'likethisj',3354,1860,NULL),(201801,9443,'kiranightshade',4215,1972,NULL),(201801,10443,'zhuweifeng',0,0,NULL),(201801,11443,'phil',679488,675239,NULL),(201801,12443,'kami939',0,0,NULL),(201801,13443,'ningmengbingyi',0,0,NULL),(201801,14443,'xiaziqi007',0,0,NULL),(201801,15443,'FATEFEAR',0,0,NULL),(201801,16443,'124214214124',0,0,NULL),(201801,17443,'124214214125',0,0,NULL),(201801,18443,'nimamania',0,0,NULL),(201801,19443,'zhijun13',0,0,NULL),(201801,20443,'wayne',1625,952,NULL),(201801,21443,'tuturabbit',0,0,NULL),(201801,22443,'zzw',0,0,NULL),(201801,23443,'rxidesign',1148440,2050351,NULL),(201801,24443,'maryshall',0,0,NULL),(201801,443,'admin',37022123,830804664,NULL),(201801,668,'850731718',0,0,NULL),(201801,1443,'wy200855650',0,0,NULL),(201801,2443,'270382011',15166870,935199318,NULL),(201801,3443,'dragonszy',0,0,NULL),(201801,4443,'zhutou530',489,392,NULL),(201801,4455,'xxq',0,0,NULL),(201801,5443,'sauronkk',0,0,NULL),(201801,6443,'397501170@qq.com',0,0,NULL),(201801,7443,'yb3712590',1736714,8025889,NULL),(201801,8443,'likethisj',444,260,NULL),(201801,9443,'kiranightshade',0,0,NULL),(201801,10443,'zhuweifeng',0,0,NULL),(201801,11443,'phil',515198,2954430,NULL),(201801,12443,'kami939',0,0,NULL),(201801,13443,'ningmengbingyi',0,0,NULL),(201801,14443,'xiaziqi007',0,0,NULL),(201801,15443,'FATEFEAR',0,0,NULL),(201801,16443,'124214214124',0,0,NULL),(201801,17443,'124214214125',0,0,NULL),(201801,18443,'nimamania',0,0,NULL),(201801,19443,'zhijun13',0,0,NULL),(201801,20443,'wayne',0,0,NULL),(201801,21443,'tuturabbit',0,0,NULL),(201801,22443,'zzw',0,0,NULL),(201801,23443,'rxidesign',6366122,44885004,NULL),(201801,24443,'maryshall',0,0,NULL),(201802,443,'admin',499483095,12018285531,'47.52.27.112'),(201802,668,'850731718',600,356,'47.52.27.112'),(201802,1443,'wy200855650',928,520,'47.52.27.112'),(201802,2443,'270382011',2255780,52197156,'47.52.27.112'),(201802,3443,'dragonszy',299,620,'47.52.27.112'),(201802,4443,'zhutou530',3002,1984,'47.52.27.112'),(201802,4455,'xxq',876,368,'47.52.27.112'),(201802,5443,'sauronkk',737,356,'47.52.27.112'),(201802,6443,'397501170@qq.com',11645559,317885565,'47.52.27.112'),(201802,7443,'yb3712590',8820236,31784144,'47.52.27.112'),(201802,8443,'likethisj',60672933,2390646572,'47.52.27.112'),(201802,9443,'kiranightshade',5916,2652,'47.52.27.112'),(201802,10443,'zhuweifeng',478,448,'47.52.27.112'),(201802,11443,'phil',74784551,165722692,'47.52.27.112'),(201802,12443,'kami939',6200275,216820468,'47.52.27.112'),(201802,13443,'ningmengbingyi',0,0,'47.52.27.112'),(201802,14443,'xiaziqi007',0,0,'47.52.27.112'),(201802,15443,'FATEFEAR',0,0,'47.52.27.112'),(201802,16443,'124214214124',11083612,242389003,'47.52.27.112'),(201802,17443,'124214214125',0,0,'47.52.27.112'),(201802,18443,'nimamania',0,0,'47.52.27.112'),(201802,19443,'zhijun13',0,0,'47.52.27.112'),(201802,20443,'wayne',0,0,'47.52.27.112'),(201802,21443,'tuturabbit',0,0,'47.52.27.112'),(201802,22443,'zzw',0,0,'47.52.27.112'),(201802,23443,'rxidesign',175884248,1308579911,'47.52.27.112'),(201802,24443,'maryshall',78872,2143628,'47.52.27.112'),(201802,443,'admin',499483095,12018285531,'97.64.22.89'),(201802,668,'850731718',600,356,'97.64.22.89'),(201802,1443,'wy200855650',928,520,'97.64.22.89'),(201802,2443,'270382011',2255780,52197156,'97.64.22.89'),(201802,3443,'dragonszy',299,620,'97.64.22.89'),(201802,4443,'zhutou530',3002,1984,'97.64.22.89'),(201802,4455,'xxq',876,368,'97.64.22.89'),(201802,5443,'sauronkk',737,356,'97.64.22.89'),(201802,6443,'397501170@qq.com',11645559,317885565,'97.64.22.89'),(201802,7443,'yb3712590',8820236,31784144,'97.64.22.89'),(201802,8443,'likethisj',60672933,2390646572,'97.64.22.89'),(201802,9443,'kiranightshade',5916,2652,'97.64.22.89'),(201802,10443,'zhuweifeng',478,448,'97.64.22.89'),(201802,11443,'phil',74784551,165722692,'97.64.22.89'),(201802,12443,'kami939',6200275,216820468,'97.64.22.89'),(201802,13443,'ningmengbingyi',0,0,'97.64.22.89'),(201802,14443,'xiaziqi007',0,0,'97.64.22.89'),(201802,15443,'FATEFEAR',0,0,'97.64.22.89'),(201802,16443,'124214214124',11083612,242389003,'97.64.22.89'),(201802,17443,'124214214125',0,0,'97.64.22.89'),(201802,18443,'nimamania',0,0,'97.64.22.89'),(201802,19443,'zhijun13',0,0,'97.64.22.89'),(201802,20443,'wayne',0,0,'97.64.22.89'),(201802,21443,'tuturabbit',0,0,'97.64.22.89'),(201802,22443,'zzw',0,0,'97.64.22.89'),(201802,23443,'rxidesign',175884248,1308579911,'97.64.22.89'),(201802,24443,'maryshall',78872,2143628,'97.64.22.89');
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
INSERT INTO `user` VALUES (443,'admin','7815696ecbf1c96e6894b779456d330e',22167863,'494888545@qq.com',1,0,499483095,12018285531,1073741824,'2018-05-23'),(668,'850731718','fa0141c1f56abb3f8bc6d0293e47c610',83067066,'850731718@qq.com',1,0,600,356,1073741824,'2018-05-13'),(1443,'wy200855650','f87d0d0fcb3b01dfbe1d18616df5f80f',40261878,'200855650@qq.com',1,0,928,520,1073741824,'2018-05-23'),(2443,'270382011','5ede89cfff9a097b07ece8202dcfe958',83200770,'270382011@qq.com',1,0,2255780,52197156,1073741824,'2018-05-23'),(3443,'dragonszy','30dc0e845f7299eed32942873ed4a22d',47596662,'dragonszy@163.com',1,0,299,620,1073741824,'2018-05-23'),(4443,'zhutou530','c177078980e7347b71ce2d96ca7d57f5',97690340,'584832043@qq.com',1,0,3002,1984,1073741824,'2018-05-23'),(4455,'xxq','5cca6754e5c158a770be7264916aef59',45344897,'123456789@qq.com',1,0,876,368,1073741824,'2018-05-11'),(5443,'sauronkk','766a8e61890921118d940c422563620b',24808793,'1444564649@qq.com',1,0,737,356,1073741824,'2018-05-23'),(6443,'397501170@qq.com','c41d0a758d97e811e2a6674d152118ee',81957455,'397501170@qq.com',1,0,11645559,317885565,1073741824,'2018-05-24'),(7443,'yb3712590','7815696ecbf1c96e6894b779456d330e',69455690,'yb3712590@163.com',1,0,8820236,31784144,1073741824,'2018-05-26'),(8443,'likethisj','e10adc3949ba59abbe56e057f20f883e',77200126,'278989285@qq.com',1,0,60672933,2390646572,1073741824,'2018-05-28'),(9443,'kiranightshade','820cb9cfa6105e7257c15bf28418d34d',56295888,'qianlitao@163.com',1,0,5916,2652,1073741824,'2018-05-30'),(10443,'zhuweifeng','f23a73bd3f23c2ab300755c79e9bb179',65643186,'545881046@qq.com',1,0,478,448,1073741824,'2018-06-09'),(11443,'phil','8d2d9d8803ad547c81a82f37d5fb6dbf',65056770,'656436656@qq.com',1,0,74784551,165722692,1073741824,'2018-10-05'),(12443,'kami939','5690dddfa28ae085d23518a035707282',95040188,'2323019332@qq.com',1,0,6200275,216820468,1073741824,'2018-10-05'),(13443,'ningmengbingyi','9a9977860fdfbd05aaad8654771434d2',24599462,'549284714@qq.com',1,0,0,0,1073741824,'2018-05-13'),(14443,'xiaziqi007','fdf850d45347c920446a1af17f1b8734',76226675,'xiaji3377000@qq.com',1,0,0,0,1073741824,'2018-05-28'),(15443,'FATEFEAR','0408caec3ae4e610a39e71e022e2cbf3',75487982,'812974362@qq.com',1,0,0,0,1073741824,'2018-05-31'),(16443,'124214214124','aee2f80eea5347784ed7c4037b34077e',34084811,'124214214124@123.com',1,0,11083612,242389003,1073741824,'2018-04-17'),(17443,'124214214125','5baab081e511d4fb2f3e768712dde603',51353465,'124214214125@123.com',1,0,0,0,1073741824,'2018-04-17'),(18443,'nimamania','184d8605b556a56ac964bfe92a4e8fc8',19200723,'nimamania@gmail.com',0,0,0,0,1073741824,'2017-05-18'),(19443,'zhijun13','dcd780af92da0dbac1f7ade7f88cb079',77414919,'1410491150@qq.com',0,0,0,0,1073741824,'2017-07-01'),(20443,'wayne','8b16c78c9f91b1be6c1b409b8f1feb83',93048426,'153068137@qq.com',0,0,0,0,1073741824,'2018-02-25'),(21443,'tuturabbit','950e16c5529d3d0fccf17cb2e888dc00',78908430,'546705027@qq.com',1,0,0,0,1073741824,'2018-03-22'),(22443,'zzw','dc8750acdb781cd65366fea23b4b5531',56289955,'1053445965@qq.com',1,0,0,0,1073741824,'2018-05-09'),(23443,'rxidesign','e1d7cc664fd8b68027f4d2287b4a785c',68337310,'rxidesign@xtyda.com',1,0,175884248,1308579911,1073741824,'2018-05-10'),(24443,'maryshall','1b14b0d0a559a42bf97e238d3b5723eb',93121792,'331701344@qq.com',1,0,78872,2143628,1073741824,'2018-06-16');
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

-- Dump completed on 2018-03-20  6:00:01
