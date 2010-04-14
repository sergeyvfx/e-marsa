-- MySQL dump 10.11
--
-- Host: localhost    Database: e-marsa
-- ------------------------------------------------------
-- Server version	5.0.51a-24+lenny3-log

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
-- Current Database: `e-marsa`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `e-marsa` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `e-marsa`;

--
-- Table structure for table `content`
--

DROP TABLE IF EXISTS `content`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `content` (
  `id` int(11) NOT NULL auto_increment,
  `order` int(11) default NULL,
  `pid` int(11) default '1',
  `class` text,
  `name` text,
  `path` text,
  `settings` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `content`
--

LOCK TABLES `content` WRITE;
/*!40000 ALTER TABLE `content` DISABLE KEYS */;
INSERT INTO `content` VALUES (1,1,0,NULL,'Корневой раздел','/','a:1:{s:8:\"security\";a:1:{s:3:\"ALL\";a:2:{s:5:\"order\";s:10:\"allow_deny\";s:4:\"acts\";a:1:{i:0;a:2:{s:3:\"act\";s:8:\"AllowAll\";s:3:\"val\";s:0:\"\";}}}}}'),(7,3,1,'CCCatalogue','Прайс лист','price','a:2:{s:8:\"security\";a:2:{s:3:\"ALL\";a:2:{s:5:\"order\";s:10:\"deny_allow\";s:4:\"acts\";a:1:{i:0;a:2:{s:3:\"act\";s:9:\"AllowUser\";s:3:\"val\";s:1:\"1\";}}}s:4:\"READ\";a:2:{s:5:\"order\";s:10:\"allow_deny\";s:4:\"acts\";a:1:{i:0;a:2:{s:3:\"act\";s:8:\"AllowAll\";s:3:\"val\";s:0:\"\";}}}}s:4:\"data\";a:6:{s:7:\"content\";s:20:\"content_support_7_-1\";s:6:\"script\";s:2:\"25\";s:11:\"cat_1_dsset\";a:0:{}s:11:\"cat_2_dsset\";a:0:{}s:11:\"cat_3_dsset\";a:0:{}s:11:\"cat_4_dsset\";a:1:{s:6:\"fields\";a:1:{s:5:\"image\";a:4:{s:7:\"storage\";s:1:\"2\";s:6:\"hlimit\";s:5:\"<=720\";s:6:\"vlimit\";s:5:\"<=640\";s:4:\"size\";s:10:\"<=10485760\";}}}}}'),(5,2,1,'CCPublication','Новости','news','a:2:{s:8:\"security\";a:1:{s:7:\"inherit\";b:1;}s:4:\"data\";a:6:{s:7:\"dataset\";a:2:{s:2:\"id\";s:1:\"5\";s:8:\"settings\";a:1:{s:6:\"fields\";a:2:{s:5:\"image\";a:4:{s:7:\"storage\";s:1:\"2\";s:6:\"hlimit\";s:5:\"<=160\";s:6:\"vlimit\";s:5:\"<=160\";s:4:\"size\";s:9:\"<=1048576\";}s:4:\"full\";a:2:{s:5:\"image\";a:4:{s:7:\"storage\";s:1:\"2\";s:6:\"hlimit\";s:5:\"<=320\";s:6:\"vlimit\";s:5:\"<=240\";s:4:\"size\";s:9:\"<=5242880\";}s:4:\"file\";a:2:{s:7:\"storage\";s:1:\"3\";s:4:\"size\";s:9:\"<=8388608\";}}}}}s:7:\"content\";s:19:\"content_support_5_5\";s:6:\"script\";s:2:\"15\";s:10:\"itemScript\";s:2:\"13\";s:10:\"fullScript\";s:2:\"21\";s:8:\"detailed\";i:1;}}');
/*!40000 ALTER TABLE `content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content_support_4_-1`
--

DROP TABLE IF EXISTS `content_support_4_-1`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `content_support_4_-1` (
  `id` int(11) NOT NULL auto_increment,
  `timestamp` int(11) default NULL,
  `user_id` int(11) default NULL,
  `ip` text,
  `name` text,
  `dataset` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `content_support_4_-1`
--

LOCK TABLES `content_support_4_-1` WRITE;
/*!40000 ALTER TABLE `content_support_4_-1` DISABLE KEYS */;
INSERT INTO `content_support_4_-1` VALUES (1,1270103799,1,'127.0.0.1','Категория',1),(2,1270103814,1,'127.0.0.1','Подкатегория',2),(3,1270103820,1,'127.0.0.1','Продукт',3),(4,1270103997,1,'127.0.0.1','Характеристика',4);
/*!40000 ALTER TABLE `content_support_4_-1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content_support_4_1_1`
--

DROP TABLE IF EXISTS `content_support_4_1_1`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `content_support_4_1_1` (
  `id` int(11) NOT NULL auto_increment,
  `timestamp` int(11) default NULL,
  `user_id` int(11) default NULL,
  `ip` text,
  `pid` int(11) default NULL,
  `uid` int(11) default NULL,
  `order` int(11) default NULL,
  `name` longtext,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `content_support_4_1_1`
--

LOCK TABLES `content_support_4_1_1` WRITE;
/*!40000 ALTER TABLE `content_support_4_1_1` DISABLE KEYS */;
INSERT INTO `content_support_4_1_1` VALUES (1,1270104061,1,'127.0.0.1',-1,1,1,'Материнские платы'),(2,1270106622,1,'127.0.0.1',-1,2,2,'Мониторы'),(3,1270127290,1,'127.0.0.1',-1,3,3,'Сетевое оборудование'),(4,1270127302,1,'127.0.0.1',-1,4,4,'Видеокарты');
/*!40000 ALTER TABLE `content_support_4_1_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content_support_4_2_2`
--

DROP TABLE IF EXISTS `content_support_4_2_2`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `content_support_4_2_2` (
  `id` int(11) NOT NULL auto_increment,
  `timestamp` int(11) default NULL,
  `user_id` int(11) default NULL,
  `ip` text,
  `pid` int(11) default NULL,
  `uid` int(11) default NULL,
  `order` int(11) default NULL,
  `name` longtext,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `content_support_4_2_2`
--

LOCK TABLES `content_support_4_2_2` WRITE;
/*!40000 ALTER TABLE `content_support_4_2_2` DISABLE KEYS */;
INSERT INTO `content_support_4_2_2` VALUES (1,1270104073,1,'127.0.0.1',1,1,1,'Материнские платы ASUS'),(2,1270106651,1,'127.0.0.1',2,2,2,'Мониторы BENQ'),(3,1270126468,1,'127.0.0.1',1,3,3,'Материнские платы Intel');
/*!40000 ALTER TABLE `content_support_4_2_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content_support_4_3_3`
--

DROP TABLE IF EXISTS `content_support_4_3_3`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `content_support_4_3_3` (
  `id` int(11) NOT NULL auto_increment,
  `timestamp` int(11) default NULL,
  `user_id` int(11) default NULL,
  `ip` text,
  `pid` int(11) default NULL,
  `uid` int(11) default NULL,
  `order` int(11) default NULL,
  `name` longtext,
  `cost` longtext,
  `vendor` longtext,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `content_support_4_3_3`
--

LOCK TABLES `content_support_4_3_3` WRITE;
/*!40000 ALTER TABLE `content_support_4_3_3` DISABLE KEYS */;
INSERT INTO `content_support_4_3_3` VALUES (1,1270104088,1,'127.0.0.1',1,1,1,'P6T','100$','ASUS');
/*!40000 ALTER TABLE `content_support_4_3_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content_support_4_4_4`
--

DROP TABLE IF EXISTS `content_support_4_4_4`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `content_support_4_4_4` (
  `id` int(11) NOT NULL auto_increment,
  `timestamp` int(11) default NULL,
  `user_id` int(11) default NULL,
  `ip` text,
  `pid` int(11) default NULL,
  `uid` int(11) default NULL,
  `order` int(11) default NULL,
  `name` longtext,
  `type` longtext,
  `text` longtext,
  `image` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `content_support_4_4_4`
--

LOCK TABLES `content_support_4_4_4` WRITE;
/*!40000 ALTER TABLE `content_support_4_4_4` DISABLE KEYS */;
/*!40000 ALTER TABLE `content_support_4_4_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content_support_5_5`
--

DROP TABLE IF EXISTS `content_support_5_5`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `content_support_5_5` (
  `id` int(11) NOT NULL auto_increment,
  `timestamp` int(11) default NULL,
  `user_id` int(11) default NULL,
  `ip` text,
  `uid` int(11) default NULL,
  `order` int(11) default NULL,
  `date` date default NULL,
  `title` longtext,
  `image` text,
  `short` longtext,
  `full` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `content_support_5_5`
--

LOCK TABLES `content_support_5_5` WRITE;
/*!40000 ALTER TABLE `content_support_5_5` DISABLE KEYS */;
INSERT INTO `content_support_5_5` VALUES (1,1270133189,1,'127.0.0.1',1,1,'2010-04-01','Бета-версия прайса и раздела новостей','','На нашем сайте появилась бета-версия страницы новостей и прайс-листа','<p>Ну писать особенно нечего. Просто всё становится крута. Наконец-то ботать начали.<br></p>'),(2,1270868125,1,'212.192.77.52',2,1,'2010-04-10','Поступление товара','','Новый товар','<p>А у нас новый товар!!!<br></p>');
/*!40000 ALTER TABLE `content_support_5_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content_support_7_-1`
--

DROP TABLE IF EXISTS `content_support_7_-1`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `content_support_7_-1` (
  `id` int(11) NOT NULL auto_increment,
  `timestamp` int(11) default NULL,
  `user_id` int(11) default NULL,
  `ip` text,
  `name` text,
  `dataset` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `content_support_7_-1`
--

LOCK TABLES `content_support_7_-1` WRITE;
/*!40000 ALTER TABLE `content_support_7_-1` DISABLE KEYS */;
INSERT INTO `content_support_7_-1` VALUES (1,1270232936,1,'127.0.0.1','Категории',1),(2,1270232945,1,'127.0.0.1','Подкатегории',2),(3,1270232953,1,'127.0.0.1','Продукты',3),(4,1270232982,1,'127.0.0.1','Характеристики',4);
/*!40000 ALTER TABLE `content_support_7_-1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content_support_7_1_1`
--

DROP TABLE IF EXISTS `content_support_7_1_1`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `content_support_7_1_1` (
  `id` int(11) NOT NULL auto_increment,
  `timestamp` int(11) default NULL,
  `user_id` int(11) default NULL,
  `ip` text,
  `pid` int(11) default NULL,
  `uid` int(11) default NULL,
  `order` int(11) default NULL,
  `name` longtext,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `content_support_7_1_1`
--

LOCK TABLES `content_support_7_1_1` WRITE;
/*!40000 ALTER TABLE `content_support_7_1_1` DISABLE KEYS */;
INSERT INTO `content_support_7_1_1` VALUES (1,1270233007,1,'127.0.0.1',-1,1,1,'Материнские платы'),(2,1270830734,1,'89.148.222.236',-1,2,2,'Процессоры'),(3,1270830745,1,'89.148.222.236',-1,3,3,'Модули памяти'),(4,1270830769,1,'89.148.222.236',-1,4,4,'Винчестеры'),(5,1270830775,1,'89.148.222.236',-1,5,5,'Видеокарты');
/*!40000 ALTER TABLE `content_support_7_1_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content_support_7_2_2`
--

DROP TABLE IF EXISTS `content_support_7_2_2`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `content_support_7_2_2` (
  `id` int(11) NOT NULL auto_increment,
  `timestamp` int(11) default NULL,
  `user_id` int(11) default NULL,
  `ip` text,
  `pid` int(11) default NULL,
  `uid` int(11) default NULL,
  `order` int(11) default NULL,
  `name` longtext,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `content_support_7_2_2`
--

LOCK TABLES `content_support_7_2_2` WRITE;
/*!40000 ALTER TABLE `content_support_7_2_2` DISABLE KEYS */;
INSERT INTO `content_support_7_2_2` VALUES (1,1270233020,1,'127.0.0.1',1,1,1,'Мат. платы ASUS'),(2,1270828494,1,'89.148.222.236',1,2,2,'Материнские платы ASRock'),(5,1270828541,1,'89.148.222.236',1,1,1,'Материнские платы ASUS'),(7,1270830807,1,'89.148.222.236',2,6,6,'Процессоры INTEL'),(8,1270830816,1,'89.148.222.236',2,7,7,'Процессоры AMD'),(9,1270830830,1,'89.148.222.236',3,8,8,'Модули памяти Corsair'),(10,1270830835,1,'89.148.222.236',3,9,9,'Модули памяти hynix'),(11,1270830843,1,'89.148.222.236',3,10,10,'Модули памяти Kingmax'),(12,1270830851,1,'89.148.222.236',3,11,11,'Модули памяти Kingston'),(13,1270830859,1,'89.148.222.236',3,12,12,'Модули памяти OCZ'),(14,1270830914,1,'89.148.222.236',4,13,13,'Винчестеры Fujitsu'),(15,1270830918,1,'89.148.222.236',4,14,14,'Винчестеры Hitachi'),(16,1270830924,1,'89.148.222.236',4,15,15,'Винчестеры Samsung'),(17,1270830930,1,'89.148.222.236',4,16,16,'Винчестеры Seagate'),(18,1270830935,1,'89.148.222.236',4,17,17,'Винчестеры WD'),(19,1270830956,1,'89.148.222.236',5,18,18,'Видеокарты ASUS'),(20,1270830972,1,'89.148.222.236',5,19,19,'Видеокарты на чипсете nVidia'),(21,1270830979,1,'89.148.222.236',5,20,20,'Видеокарты на чипсете ATI'),(22,1270830986,1,'89.148.222.236',5,21,21,'Видеокарты HIS'),(23,1270830998,1,'89.148.222.236',5,22,22,'Видеокарты MSI');
/*!40000 ALTER TABLE `content_support_7_2_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content_support_7_3_3`
--

DROP TABLE IF EXISTS `content_support_7_3_3`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `content_support_7_3_3` (
  `id` int(11) NOT NULL auto_increment,
  `timestamp` int(11) default NULL,
  `user_id` int(11) default NULL,
  `ip` text,
  `pid` int(11) default NULL,
  `uid` int(11) default NULL,
  `order` int(11) default NULL,
  `name` longtext,
  `cost` longtext,
  `vendor` longtext,
  `model` longtext,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `content_support_7_3_3`
--

LOCK TABLES `content_support_7_3_3` WRITE;
/*!40000 ALTER TABLE `content_support_7_3_3` DISABLE KEYS */;
INSERT INTO `content_support_7_3_3` VALUES (1,1270233041,1,'127.0.0.1',1,1,1,'ASUS P6T (RTL) LGA1366 <X58>3xPCI-E+GbLAN+1394 SATA RAID ATX 6DDR-III','8126 руб. 70 коп.','ASUS','P6T'),(2,1270828643,1,'89.148.222.236',1,2,2,'ASUS Z8NA-D6 (RTL) Dual LGA1366 <i5500> PCI-E, SVGA+2xGbLANSATA RAID ATX 6DDR-III','12174 руб. 60 коп.','ASUS','Z8NA-D6'),(3,1270830218,1,'89.148.222.236',1,3,3,'ASUS P7H55D-M Pro (RTL) LGA1156 <H55> PCI-E+Dsub DVI HDMI+GbLAN SATA MicroATX 4DDR-III','3893 руб. 40 коп.','ASUS','P7H55D-M PRO'),(4,1270831446,1,'89.148.222.236',1,4,4,'ASUS P7P55D-E Deluxe (RTL) LGA1156 <P55> 2xPCI-E+2xGbLAN+1394SATA RAID ATX 4DDR-III','8219 руб. 40 коп.','ASUS','P7P55D-E Deluxe'),(5,1270831811,1,'89.148.222.236',1,5,5,'ASUS MAXIMUS III GENE (RTL) LGA1156 <P55> 2xPCI-E+GbLAN+1394 SATA RAID MicroATX 4DDR-III','6396 руб. 30 коп.','ASUS','Maximus III GENE'),(6,1270832349,1,'89.148.222.236',2,6,6,'ASRock H55 Pro (RTL) LGA1156 <H55> 2xPCI-E+GbLAN+1394 SATA ATX 4DDR-III','3584 руб. 40 коп.','ASRock','P55 Pro'),(7,1270832916,1,'89.148.222.236',2,7,7,'ASRock P55 Extreme (RTL) LGA1156 <P55> 3xPCI-E+GbLAN+1394 SATA RAID ATX 4DDR-III','4727 руб. 70 коп.','ASRock','P55 Extreme'),(8,1270835478,1,'89.148.222.236',2,8,8,'ASRock P43ME (RTL) LGA775 <P43> PCI-E+GbLAN SATA MicroATX 2DDR-II<PC2-9600>','1977 руб. 60 коп.','ASRock','P43ME'),(9,1270836151,1,'89.148.222.236',2,9,9,'ASRock A770DE+ (RTL) SocketAM2+ <AMD 770> 2xPCI-E+GbLAN SATA RAID ATX 4DDR-II','1977 руб. 60 коп.','ASRock','A770DE'),(10,1270836654,1,'89.148.222.236',6,10,10,'CPU Intel Xeon X5570 2.93 ГГц/1+8Мб/6.40 ГТ/с LGA1366','49131 руб. 00 коп.','Intel','Xeon Processor X5570'),(11,1270838859,1,'89.148.222.236',6,11,11,'CPU Intel Xeon E5430 BOX Active or 1U Passive 2.66 ГГц/ 12Мб L2/ 1333МГц LGA771','18076 руб. 50 коп.','Intel','Xeon Processor E5430 (Active or 1U heatsink) '),(12,1270839131,1,'89.148.222.236',6,12,12,'CPU Intel Core i7-920 2.66 ГГц/1+8Мб/4.8 ГТ/с LGA1366','9177 руб. 30 коп.','Intel','Core i7 Processor I7-920'),(13,1270839860,1,'89.148.222.236',6,13,13,'CPU Intel Core i3-540 3.06 ГГц/SVGA/0.5+ 4Мб/2.5 ГТ/с LGA1156','4449 руб. 60 коп.','Intel','Core i3-540 Processor'),(14,1270866378,1,'212.192.77.52',7,14,14,'CPU AMD Opteron 2.7ГГц (OS2384) 2+6Мб/1000 МГц Socket-F','16809 руб. 60 коп.','AMD','Opteron 2384'),(15,1270866759,1,'212.192.77.52',7,15,15,'CPU AMD Phenom II X4 965 BOX Black Edition (HDZ965F) 3.4 ГГц/ 2+6Мб/4000 МГц Socket AM3','7230 руб. 60 коп.','AMD','Phenom II X4 965'),(16,1270867030,1,'212.192.77.52',7,16,16,'CPU AMD Phenom X4 9550 BOX (HD9550W) 2.2 ГГц/ 2+2Мб/ 3600МГц Socket AM2+','4171 руб. 50 коп.','AMD','Phenom X4 9550'),(17,1270867445,1,'212.192.77.52',7,17,17,'CPU AMD ATHLON II X3 425 BOX (ADX425W) 2.7 ГГц/ 1.5Мб/ 4000МГцSocket AM3','2719 руб. 20 коп.','AMD','Athlon II X3 425'),(18,1270867851,1,'212.192.77.52',7,18,18,'CPU AMD SEMPRON 140 (SDX140H) 2.7 ГГц/ 1 Мб/ 4000МГц Socket AM3','1158 руб. 75 коп.','AMD','Sempron 140');
/*!40000 ALTER TABLE `content_support_7_3_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content_support_7_4_4`
--

DROP TABLE IF EXISTS `content_support_7_4_4`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `content_support_7_4_4` (
  `id` int(11) NOT NULL auto_increment,
  `timestamp` int(11) default NULL,
  `user_id` int(11) default NULL,
  `ip` text,
  `pid` int(11) default NULL,
  `uid` int(11) default NULL,
  `order` int(11) default NULL,
  `name` longtext,
  `cat` longtext,
  `text` longtext,
  `image` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=145 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `content_support_7_4_4`
--

LOCK TABLES `content_support_7_4_4` WRITE;
/*!40000 ALTER TABLE `content_support_7_4_4` DISABLE KEYS */;
INSERT INTO `content_support_7_4_4` VALUES (1,1270233101,1,'127.0.0.1',1,1,1,'Частота шины','Процессор','6400, 4800 МГц',''),(2,1270233123,1,'127.0.0.1',1,2,2,'Гнездо процессора','Поддержка процессоров','Socket LGA1366',''),(3,1270233147,1,'127.0.0.1',1,3,3,'Поддержка типов процессоров','Поддержка процессоров','Intel Core i7 9xx, Core i7 965 Extreme Edition (Bloomfield)',''),(4,1270233167,1,'127.0.0.1',1,4,4,'Чипсет мат. Платы','Поддержка процессоров','Intel X58 (82X58 + 83801JR (ICH10R))',''),(5,1270233193,1,'127.0.0.1',1,5,5,'Поддержка SLI','Видео','Да, tri-SLI',''),(6,1270233209,1,'127.0.0.1',1,6,6,'Поддержка CrossFire','Видео','Да',''),(9,1270235342,1,'127.0.0.1',1,7,7,'Фотография','','','4'),(8,1270234643,1,'127.0.0.1',1,7,7,'Фотография','','','3'),(10,1270829772,1,'89.148.222.236',2,8,8,'Частота шины','Процессор','6400, 5860, 4800 МГц',''),(11,1270829817,1,'89.148.222.236',2,9,9,'Гнездо процессора','Поддержка процессоров','Socket LGA1366 x2',''),(12,1270829847,1,'89.148.222.236',2,10,10,'Поддержка типов процессоров','Поддержка процессоров','1 или 2 процессора Intel Xeon серии X5500, E5500, L5500 (Gainestown)',''),(13,1270829875,1,'89.148.222.236',2,11,11,'Видео M/B','Видео','Aspeed AST2050, видеопамять 8 Мб) ',''),(14,1270829979,1,'89.148.222.236',2,12,12,'Фотография','','',''),(15,1270830272,1,'89.148.222.236',3,13,13,'Частота шины','Процессор','2500 МГц',''),(16,1270830304,1,'89.148.222.236',3,14,14,'Гнездо процессора','Поддержка процессоров','Socket LGA1156',''),(17,1270830491,1,'89.148.222.236',3,15,15,'Поддержка типов процессоров','Поддержка процессоров','Intel Core i7 8xx, Core i5 6xx/7xx, Core i3-5xx, Pentium G6xx0 (Lynnfield, Clarkdale)',''),(18,1270830523,1,'89.148.222.236',3,16,16,'Чипсет мат. Платы','Поддержка процессоров','Intel H55 Express',''),(19,1270830599,1,'89.148.222.236',3,17,17,'Видео M/B','Видео','Используется встроенное в процессор видеоядро. <b>При использовании процессоров без встроенного видео, видеовыходы на плате не работают.</b>',''),(20,1270830628,1,'89.148.222.236',3,18,18,'Звук','Аудио','8-канальный HDA кодек Realtek ALC892',''),(21,1270830661,1,'89.148.222.236',3,17,17,'Видео M/B','Видео','Используется встроенное в процессор видеоядро. При использовании процессоров без встроенного видео, видеовыходы на плате не работают.',''),(22,1270831512,1,'89.148.222.236',4,19,19,'Частота шины','Процессор','2500 МГц ',''),(23,1270831526,1,'89.148.222.236',4,20,20,'Гнездо процессора','Поддержка процессоров','Socket LGA1156',''),(24,1270831555,1,'89.148.222.236',4,21,21,'Поддержка типов процессоров','Поддержка процессоров','Intel Core i7 8xx, Core i5 6xx/7xx, Core i3-5xx, Pentium G6xx0 (Lynnfield, Clarkdale).',''),(25,1270831586,1,'89.148.222.236',4,22,22,'Чипсет мат. Платы','Поддержка процессоров','Intel P55 + PLX PEX 8608',''),(26,1270831601,1,'89.148.222.236',4,23,23,'Поддержка CrossFire','Видео','Да',''),(27,1270831614,1,'89.148.222.236',4,24,24,'Поддержка SLI','Видео','Да',''),(28,1270831633,1,'89.148.222.236',4,25,25,'Звук','Аудио','10-канальный HDA кодек VIA VT2020',''),(29,1270831664,1,'89.148.222.236',4,26,26,'Фотография','','',''),(30,1270831862,1,'89.148.222.236',5,27,27,'Частота шины','Процессор','2500 МГц',''),(31,1270831876,1,'89.148.222.236',5,28,28,'Поддержка Hyper Threading','Процессор','Да',''),(32,1270831896,1,'89.148.222.236',5,29,29,'Гнездо процессора','Поддержка процессоров','Socket LGA1156',''),(33,1270831914,1,'89.148.222.236',5,30,30,'Поддержка типов процессоров','Поддержка процессоров','Intel Core i7 8xx, Core i5 7xx (Lynnfield).',''),(34,1270831940,1,'89.148.222.236',5,31,31,'Чипсет мат. Платы','Поддержка процессоров','Intel P55',''),(35,1270831957,1,'89.148.222.236',5,32,32,'Поддержка CrossFire','Видео','Да',''),(36,1270831969,1,'89.148.222.236',5,33,33,'Поддержка SLI','Видео','Да',''),(37,1270831990,1,'89.148.222.236',5,34,34,'Фотография','','',''),(38,1270832378,1,'89.148.222.236',6,35,35,'Частота шины','Процессор','2500 МГц',''),(39,1270832391,1,'89.148.222.236',6,36,36,'Поддержка Hyper Threading','Процессор','Да',''),(40,1270832433,1,'89.148.222.236',6,37,37,'Гнездо процессора','Поддержка процессоров','Socket LGA1156',''),(41,1270832454,1,'89.148.222.236',6,38,38,'Поддержка типов процессоров','Поддержка процессоров','Intel Core i7 8xx, Core i5 6xx/7xx, Core i3-5xx, Pentium G6xx0 (Lynnfield, Clarkdale).',''),(42,1270832480,1,'89.148.222.236',6,39,39,'Количество разъемов DDR3','Поддержка памяти','4 (2х канальный контроллер памяти). Поддерживается Extreme Memory Profile (XMP).',''),(43,1270832506,1,'89.148.222.236',6,40,40,'Тип поддерживаемой памяти ','Поддержка памяти','DDR3. Максимальная поддерживаемая пропускная способность памяти указана в описании процессора',''),(44,1270832854,1,'89.148.222.236',6,41,41,'Фотография','','',''),(45,1270832981,1,'89.148.222.236',7,42,42,'Частота шины','Процессор','2500 МГц',''),(46,1270832997,1,'89.148.222.236',7,43,43,'Поддержка Hyper Threading','Процессор','Да',''),(47,1270833014,1,'89.148.222.236',7,44,44,'Гнездо процессора','Поддержка процессоров','Socket LGA1156',''),(48,1270833040,1,'89.148.222.236',7,45,45,'Поддержка типов процессоров','Поддержка процессоров','Intel Core i7 8xx, Core i5 7xx (Lynnfield).',''),(49,1270833129,1,'89.148.222.236',7,46,46,'Чипсет мат. Платы','Поддержка процессоров','Intel P55',''),(50,1270833154,1,'89.148.222.236',7,47,47,'Интегрированный RAID-контроллер','Конфигурация','Встроен в чипсет, возможно построение RAID массивов 0, 1, 5, 10 из SATA устройств',''),(51,1270833190,1,'89.148.222.236',7,48,48,'Контроллер IEEE-1394','Конфигурация','VIA VT6330, 1 разъем на панели разъемов + 1 разъем для подключения порта на корпусе ',''),(52,1270833228,1,'89.148.222.236',7,49,49,'Сеть','Конфигурация','Сетевой контроллер Realtek RTL8111DL 10/100/1000 Мбит/сек',''),(53,1270833337,1,'89.148.222.236',7,50,50,'Фотография','','',''),(54,1270835519,1,'89.148.222.236',8,51,51,'Частота шины','Процессор','1600, 1333, 1066, 800 МГц ',''),(55,1270835538,1,'89.148.222.236',8,52,52,'Поддержка Hyper Threading','Процессор','Да',''),(56,1270835561,1,'89.148.222.236',8,53,53,'Количество разъемов PCI','Разъемы и выходы','2',''),(57,1270835584,1,'89.148.222.236',8,54,54,'Количество разъемов PCI Express','Разъемы и выходы','1 слот 1x',''),(58,1270835609,1,'89.148.222.236',8,55,55,'Порты','Разъемы и выходы','1x PS/2 клавиатура, 1x PS/2 мышь, 6x USB 2.0, 1x RJ-45 LAN, 1x коаксиальный S/PDIF-out, 1x оптический S/PDIF-out, Line-in, Mic-in, Front-out, rear-out, sub/center-out, Surround-out',''),(59,1270835662,1,'89.148.222.236',8,56,56,'Технологии уменьшения шума охлаждающей системы','Охлаждение','CPU Quiet Fan.',''),(60,1270835894,1,'89.148.222.236',8,57,57,'Фотография','','','9'),(61,1270835952,1,'89.148.222.236',8,57,57,'Фотография','','',''),(62,1270836175,1,'89.148.222.236',9,58,58,'Частота шины','Процессор','1600 ~ 5200 МГц',''),(63,1270836195,1,'89.148.222.236',9,59,59,'Звук','Аудио','8-канальный HDA кодек VIA VT1708S',''),(64,1270836217,1,'89.148.222.236',9,60,60,'Количество разъемов DDR2','Поддержка памяти','Поддержка памяти',''),(65,1270836237,1,'89.148.222.236',9,61,61,'Тип поддерживаемой памяти','Поддержка памяти','DDR2. Максимальная поддерживаемая пропускная способность памяти указана в описании процессора.',''),(66,1270836258,1,'89.148.222.236',9,62,62,'Требования к блоку питания','Питание','Поддерживаются только 24+8 pin, 24+4 pin блоки питания',''),(67,1270836291,1,'89.148.222.236',9,63,63,'Формат платы','Совместимость','ATX, (305 x 208 мм)',''),(68,1270836317,1,'89.148.222.236',9,64,64,'Поддержка ОС','Совместимость','Windows XP x64, Windows XP, Windows MCE 2005, Windows Vista',''),(69,1270836754,1,'89.148.222.236',10,65,65,'Описание','Главное','Процессор для двухпроцессорных серверов и рабочих станций.',''),(70,1270836783,1,'89.148.222.236',10,66,66,'Частота работы процессора','Главное','2.93 ГГц',''),(71,1270836802,1,'89.148.222.236',10,67,67,'Частота шины CPU','Главное','6400 МГц',''),(72,1270836829,1,'89.148.222.236',10,68,68,'Ядро','Главное','Gainestown',''),(73,1270836867,1,'89.148.222.236',10,69,69,'Рассеиваемая мощность','Главное','95 Вт',''),(74,1270836883,1,'89.148.222.236',10,70,70,'Критическая температура','Главное','75 °C',''),(75,1270836906,1,'89.148.222.236',10,71,71,'Технология','Главное','0.045 мкм',''),(76,1270836997,1,'89.148.222.236',10,72,72,'Фотография','','','14'),(77,1270837663,1,'89.148.222.236',2,12,12,'Фотография','','','15'),(78,1270838021,1,'89.148.222.236',8,57,57,'Фотография','','','16'),(79,1270838052,1,'89.148.222.236',9,73,73,'Фотография','','','17'),(80,1270838116,1,'89.148.222.236',4,26,26,'Фотография','','','18'),(81,1270838265,1,'89.148.222.236',5,34,34,'Фотография','','','19'),(82,1270838538,1,'89.148.222.236',3,74,74,'Фотография','','','20'),(83,1270838607,1,'89.148.222.236',6,41,41,'Фотография','','','21'),(84,1270838626,1,'89.148.222.236',7,50,50,'Фотография','','','22'),(85,1270838884,1,'89.148.222.236',11,75,75,'Кэш L1','Процессор','64 Кб x4',''),(86,1270838907,1,'89.148.222.236',11,76,76,'Кэш L2','Процессор','6144 Кб х2',''),(87,1270838922,1,'89.148.222.236',11,77,77,'Поддержка 64 бит','Процессор','Да',''),(88,1270838937,1,'89.148.222.236',11,78,78,'Количество ядер','Процессор','4',''),(89,1270838951,1,'89.148.222.236',11,79,79,'Умножение','Процессор','8',''),(90,1270838977,1,'89.148.222.236',11,80,80,'Поддержка процессоров','Поддержка процессоров','Поддержка процессоров',''),(91,1270839042,1,'89.148.222.236',11,81,81,'Фотография','','','23'),(92,1270839161,1,'89.148.222.236',12,82,82,'Частота работы процессора','Главное','2.66 ГГц',''),(93,1270839181,1,'89.148.222.236',12,83,83,'Частота шины CPU','Главное','4800 МГц',''),(94,1270839242,1,'89.148.222.236',12,84,84,'Ядро','Главное','Bloomfield',''),(95,1270839255,1,'89.148.222.236',12,85,85,'Рассеиваемая мощность','Главное','130 Вт',''),(96,1270839511,1,'89.148.222.236',12,86,86,'Критическая температура','Главное','67.9 °C',''),(97,1270839531,1,'89.148.222.236',12,87,87,'Технология','Главное','0.045 мкм',''),(98,1270839557,1,'89.148.222.236',12,88,88,'Фотография','','','24'),(99,1270839892,1,'89.148.222.236',13,89,89,'Описание','Главное','Процессор для настольных компьютеров.',''),(100,1270839905,1,'89.148.222.236',13,90,90,'Частота работы процессора','Главное','3.06 ГГц',''),(101,1270839925,1,'89.148.222.236',13,91,91,'Частота шины CPU','Главное','2500 МГц',''),(102,1270839958,1,'89.148.222.236',13,92,92,'Ядро','Главное','Clarkdale',''),(103,1270839983,1,'89.148.222.236',13,93,93,'Кэш L1','Процессор','64 Кб x2',''),(104,1270839997,1,'89.148.222.236',13,94,94,'Кэш L2','Процессор','256 КБ x2',''),(105,1270840016,1,'89.148.222.236',13,95,95,'Кэш L3','Процессор','4 Мб',''),(106,1270840030,1,'89.148.222.236',13,96,96,'Поддержка Hyper Threading','Процессор','Да',''),(107,1270840051,1,'89.148.222.236',13,97,97,'Поддержка 64 бит','Процессор','Да',''),(108,1270840097,1,'89.148.222.236',13,98,98,'Фотография','','','25'),(109,1270866449,1,'212.192.77.52',14,99,99,'Частота работы процессора','Главное','2.7 ГГц',''),(110,1270866478,1,'212.192.77.52',14,100,100,'Частота шины CPU','Главное','2000 МГц',''),(111,1270866490,1,'212.192.77.52',14,101,101,'Ядро','Главное','Shanghai',''),(112,1270866509,1,'212.192.77.52',14,102,102,'Рассеиваемая мощность','Главное','75 Вт',''),(113,1270866552,1,'212.192.77.52',14,103,103,'Критическая температура','Главное','77 °C',''),(114,1270866574,1,'212.192.77.52',14,104,104,'Кэш L1','Процессор','128 Кб x4',''),(115,1270866607,1,'212.192.77.52',14,105,105,'Кэш L2','Процессор','512 Кб x4, работает на частоте процессора',''),(116,1270866624,1,'212.192.77.52',14,106,106,'Кэш L3','Процессор','6 Мб',''),(117,1270866719,1,'212.192.77.52',14,107,107,'Фотография','','','26'),(118,1270866804,1,'212.192.77.52',15,108,108,'Частота работы процессора','Главное','3.4 ГГц',''),(119,1270866817,1,'212.192.77.52',15,109,109,'Частота шины CPU','Главное','4000 МГц',''),(120,1270866832,1,'212.192.77.52',15,110,110,'Ядро','Главное','Deneb',''),(121,1270866851,1,'212.192.77.52',15,111,111,'Рассеиваемая мощность','Главное','140 Вт',''),(122,1270866879,1,'212.192.77.52',15,112,112,'Гнездо процессора','Поддержка процессоров','Socket AM3',''),(123,1270866904,1,'212.192.77.52',15,113,113,'Тип поддерживаемой памяти','Поддержка памяти','DDR3, DDR2 PC2-3200(DDR2-400), PC2-4200 (DDR2-533), PC2-5300 (DDR2-667), PC2-6400 (DDR2-800), PC2-8500 (DDR2-1066), PC3-6400 (DDR3-800), PC3-8500 (DDR3-1066), PC3-10600 (DDR3-1333), поддерживается ECC, двухканальный контроллер ',''),(124,1270866932,1,'212.192.77.52',15,114,114,'Официально поддерживаемые стандарты памяти','Поддержка памяти','PC3-10600 (DDR3 1333 МГц), PC3-8500 (DDR3 1066 МГц), PC3-6400 (DDR3 800 МГц), PC2-8500 (DDR2 1066 МГц), PC2-6400 (DDR2 800 МГц), PC2-5300 (DDR2 667 МГц), PC2-4200 (DDR2 533 МГц), PC2-3200 (DDR2 400 МГц)',''),(125,1270866955,1,'212.192.77.52',15,115,115,'Max объем оперативной памяти','Поддержка памяти','16 Гб.',''),(126,1270866979,1,'212.192.77.52',15,116,116,'Фотография','','','27'),(127,1270867054,1,'212.192.77.52',16,117,117,'Частота работы процессора','Главное','2.2 ГГц',''),(128,1270867073,1,'212.192.77.52',16,118,118,'Частота шины CPU','3600 МГц','Главное',''),(129,1270867085,1,'212.192.77.52',16,119,119,'Ядро','Главное','Agena',''),(130,1270867106,1,'212.192.77.52',16,120,120,'Кэш L1','Процессор','128 Кб x4',''),(131,1270867178,1,'212.192.77.52',16,121,121,'Кэш L2','Процессор','512 Кб x4, работает на частоте процессора',''),(132,1270867205,1,'212.192.77.52',16,122,122,'Кэш L3','Процессор','2 Мб',''),(133,1270867227,1,'212.192.77.52',16,123,123,'Гнездо процессора','Поддержка процессоров','Socket AM2 plus',''),(134,1270867255,1,'212.192.77.52',16,124,124,'Фотография','','','28'),(135,1270867481,1,'212.192.77.52',17,125,125,'Частота работы процессора','Главное','2.7 ГГц',''),(136,1270867504,1,'212.192.77.52',17,126,126,'Частота шины CPU','Главное','4000 МГц',''),(137,1270867519,1,'212.192.77.52',17,127,127,'Ядро','Главное','Rana',''),(138,1270867538,1,'212.192.77.52',17,128,128,'Рассеиваемая мощность','Главное','95 Вт',''),(139,1270867554,1,'212.192.77.52',17,129,129,'Гнездо процессора','Поддержка процессоров','Socket AM3',''),(140,1270867573,1,'212.192.77.52',17,130,130,'Технологии уменьшения шума охлаждающей системы','Охлаждение','PowerNow! 3.0, Cool\'n\'Quiet, CoolCore, Smart Fetch, Dual Dynamic Power Management',''),(141,1270867590,1,'212.192.77.52',17,131,131,'Напряжение питания','Питание','0.925 ~ 1.425 В',''),(142,1270867631,1,'212.192.77.52',17,132,132,'Фотография','','','29'),(143,1270867923,1,'212.192.77.52',18,133,133,'Частота работы процессора','Главное','2.7 ГГц',''),(144,1270868012,1,'212.192.77.52',18,134,134,'Фотография','','','30');
/*!40000 ALTER TABLE `content_support_7_4_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content_support_tables`
--

DROP TABLE IF EXISTS `content_support_tables`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `content_support_tables` (
  `id` int(11) NOT NULL auto_increment,
  `content_id` int(11) default NULL,
  `dataset_id` int(11) default NULL,
  `unique` int(11) default '-1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `content_support_tables`
--

LOCK TABLES `content_support_tables` WRITE;
/*!40000 ALTER TABLE `content_support_tables` DISABLE KEYS */;
INSERT INTO `content_support_tables` VALUES (18,7,-1,-1),(22,7,4,4),(21,7,3,3),(20,7,2,2),(19,7,1,1),(12,5,5,-1);
/*!40000 ALTER TABLE `content_support_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataset`
--

DROP TABLE IF EXISTS `dataset`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `dataset` (
  `id` int(11) NOT NULL auto_increment,
  `name` text,
  `refcount` int(11) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `dataset`
--

LOCK TABLES `dataset` WRITE;
/*!40000 ALTER TABLE `dataset` DISABLE KEYS */;
INSERT INTO `dataset` VALUES (1,'Категория продуктов',1),(2,'Подкатегория продукта',1),(3,'Продукт',1),(4,'Характеристика',1),(5,'Датированная публикация с изображением',1);
/*!40000 ALTER TABLE `dataset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataset_assoc`
--

DROP TABLE IF EXISTS `dataset_assoc`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `dataset_assoc` (
  `id` int(11) NOT NULL auto_increment,
  `order` int(11) default NULL,
  `dataset` int(11) default NULL,
  `datatype` int(11) default NULL,
  `title` text,
  `field` text,
  `settings` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `dataset_assoc`
--

LOCK TABLES `dataset_assoc` WRITE;
/*!40000 ALTER TABLE `dataset_assoc` DISABLE KEYS */;
INSERT INTO `dataset_assoc` VALUES (1,1,1,1,'Название','name','a:2:{s:9:\"important\";b:1;s:9:\"invisible\";b:0;}'),(2,1,2,1,'Название','name','a:2:{s:9:\"important\";b:1;s:9:\"invisible\";b:0;}'),(3,1,3,1,'Название','name','a:2:{s:9:\"important\";b:1;s:9:\"invisible\";b:0;}'),(4,2,3,1,'Цена','cost','a:2:{s:9:\"important\";b:0;s:9:\"invisible\";b:0;}'),(5,3,3,1,'Производитель','vendor','a:2:{s:9:\"important\";b:0;s:9:\"invisible\";b:0;}'),(6,1,4,1,'Название','name','a:2:{s:9:\"important\";b:1;s:9:\"invisible\";b:0;}'),(17,3,4,1,'Категория','cat','a:2:{s:9:\"important\";b:0;s:9:\"invisible\";b:0;}'),(9,4,4,1,'Текст','text','a:2:{s:9:\"important\";b:0;s:9:\"invisible\";b:0;}'),(10,5,4,4,'Изображение','image','a:2:{s:9:\"important\";b:0;s:9:\"invisible\";b:0;}'),(11,1,5,5,'Дата','date','a:2:{s:9:\"important\";b:1;s:9:\"invisible\";b:0;}'),(12,2,5,1,'Заголовок','title','a:2:{s:9:\"important\";b:1;s:9:\"invisible\";b:0;}'),(13,3,5,4,'Изображение','image','a:2:{s:9:\"important\";b:0;s:9:\"invisible\";b:0;}'),(14,4,5,6,'Аннотация','short','a:2:{s:9:\"important\";b:1;s:9:\"invisible\";b:0;}'),(15,5,5,2,'Текст','full','a:2:{s:9:\"important\";b:0;s:9:\"invisible\";b:0;}'),(16,4,3,1,'Модель','model','a:2:{s:9:\"important\";b:0;s:9:\"invisible\";b:0;}');
/*!40000 ALTER TABLE `dataset_assoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datatypes`
--

DROP TABLE IF EXISTS `datatypes`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `datatypes` (
  `id` int(11) NOT NULL auto_increment,
  `name` text,
  `class` text,
  `refcount` int(11) default '0',
  `settings` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `datatypes`
--

LOCK TABLES `datatypes` WRITE;
/*!40000 ALTER TABLE `datatypes` DISABLE KEYS */;
INSERT INTO `datatypes` VALUES (1,'Текстовое поле','CDCText',10,'a:1:{s:4:\"data\";s:27:\"a:1:{s:6:\"nlines\";s:1:\"1\";}\";}'),(2,'Визуально редактируемый текст с форматированием','CDCIFrame',1,'a:1:{s:4:\"data\";s:6:\"a:0:{}\";}'),(4,'Изображение','CDCImage',2,'a:1:{s:4:\"data\";s:6:\"a:0:{}\";}'),(5,'Дата','CDCDate',1,'a:1:{s:4:\"data\";s:6:\"a:0:{}\";}'),(6,'Текстовое поле х2','CDCText',1,'a:1:{s:4:\"data\";s:27:\"a:1:{s:6:\"nlines\";s:1:\"2\";}\";}');
/*!40000 ALTER TABLE `datatypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group`
--

DROP TABLE IF EXISTS `group`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `group` (
  `id` int(11) NOT NULL auto_increment,
  `name` text,
  `default` int(11) default NULL,
  `refcount` int(11) default '0',
  `settings` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `group`
--

LOCK TABLES `group` WRITE;
/*!40000 ALTER TABLE `group` DISABLE KEYS */;
/*!40000 ALTER TABLE `group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `market_basket`
--

DROP TABLE IF EXISTS `market_basket`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `market_basket` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `session_id` text,
  `item_id` int(11) default NULL,
  `timestamp` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `market_basket`
--

LOCK TABLES `market_basket` WRITE;
/*!40000 ALTER TABLE `market_basket` DISABLE KEYS */;
INSERT INTO `market_basket` VALUES (13,-1,'88487d9d67f6dca9184a842cd8e47386',6,1271263841),(10,1,'',1,1271262812);
/*!40000 ALTER TABLE `market_basket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `service` (
  `id` int(11) NOT NULL auto_increment,
  `name` text,
  `sclass` text,
  `settings` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL auto_increment,
  `section` text,
  `name` text,
  `ident` text,
  `class` text,
  `used` int(11) default '0',
  `settings` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'Системные','Максимальная длина логина пользователя','max_user_login_len','CSCNumber',1,'a:1:{s:5:\"value\";s:2:\"14\";}'),(2,'Системные','Максимальная длина имени пользователя','max_user_name_len','CSCNumber',1,'a:1:{s:5:\"value\";s:2:\"32\";}'),(3,'Системные','Максимальная длина пароля пользователя','max_user_passwd_len','CSCNumber',1,'a:1:{s:5:\"value\";s:2:\"16\";}'),(4,'Системные','Количество записей на странице &laquo;Пользователи и группы&raquo;','user_count','CSCNumber',1,'a:1:{s:5:\"value\";s:2:\"15\";}'),(5,'Системные','Блокировать сайт','site_lock','CSCCheckBox',1,'a:1:{s:5:\"value\";b:0;}'),(6,'Системные','Стартовый каталог','start_root','CSCText',1,'a:1:{s:5:\"value\";s:1:\"/\";}'),(7,'Олимпиады','Количество задач на странице редактирования','WT_problems_per_page','CSCNumber',1,'a:1:{s:5:\"value\";i:15;}'),(8,'Олимпиады','Количество задач на странице браузера','WT_problems_per_browser_page','CSCNumber',1,'a:1:{s:5:\"value\";i:10;}'),(9,'Олимпиады','Количество записей на странице статуса','WT_items_per_status_page','CSCNumber',1,'a:1:{s:5:\"value\";i:15;}'),(10,'Разделы','Количество элементов на странице для раздела «Новости»','content_5_count','CSCSignedNumber',0,'a:1:{s:5:\"value\";s:2:\"10\";}'),(11,'Разделы','Количество новостей на стартовой странице','last_news_count','CSCNumber',0,'a:1:{s:5:\"value\";s:2:\"10\";}');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storage`
--

DROP TABLE IF EXISTS `storage`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `storage` (
  `id` int(11) NOT NULL auto_increment,
  `name` text,
  `path` text,
  `refcount` int(11) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `storage`
--

LOCK TABLES `storage` WRITE;
/*!40000 ALTER TABLE `storage` DISABLE KEYS */;
INSERT INTO `storage` VALUES (2,'Хранилище картинок','/images',0),(3,'Хранилище файлов','/files',0);
/*!40000 ALTER TABLE `storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storage_volume_2`
--

DROP TABLE IF EXISTS `storage_volume_2`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `storage_volume_2` (
  `id` int(11) NOT NULL auto_increment,
  `file` text,
  `user_id` int(11) default NULL,
  `timestamp` int(11) default NULL,
  `accepted` tinyint(1) default '0',
  `params` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `storage_volume_2`
--

LOCK TABLES `storage_volume_2` WRITE;
/*!40000 ALTER TABLE `storage_volume_2` DISABLE KEYS */;
INSERT INTO `storage_volume_2` VALUES (3,'data_0003.jpg',1,1270234639,1,'a:6:{s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";i:76700;s:3:\"ext\";s:3:\"jpg\";s:5:\"width\";i:720;s:6:\"height\";i:611;s:4:\"bits\";i:8;}'),(4,'data_0004.jpg',1,1270235339,1,'a:6:{s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";i:52351;s:3:\"ext\";s:3:\"jpg\";s:5:\"width\";i:480;s:6:\"height\";i:407;s:4:\"bits\";i:8;}'),(15,'data_0015.jpg',1,1270837658,1,'a:6:{s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";i:109483;s:3:\"ext\";s:3:\"jpg\";s:5:\"width\";i:720;s:6:\"height\";i:587;s:4:\"bits\";i:8;}'),(16,'data_0016.jpg',1,1270838017,1,'a:6:{s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";i:77858;s:3:\"ext\";s:3:\"jpg\";s:5:\"width\";i:720;s:6:\"height\";i:634;s:4:\"bits\";i:8;}'),(14,'data_0014.jpg',1,1270836981,1,'a:6:{s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";i:39028;s:3:\"ext\";s:3:\"jpg\";s:5:\"width\";i:720;s:6:\"height\";i:590;s:4:\"bits\";i:8;}'),(17,'data_0017.jpg',1,1270838048,1,'a:6:{s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";i:69872;s:3:\"ext\";s:3:\"jpg\";s:5:\"width\";i:720;s:6:\"height\";i:570;s:4:\"bits\";i:8;}'),(18,'data_0018.jpg',1,1270838112,1,'a:6:{s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";i:113091;s:3:\"ext\";s:3:\"jpg\";s:5:\"width\";i:720;s:6:\"height\";i:615;s:4:\"bits\";i:8;}'),(19,'data_0019.jpg',1,1270838261,1,'a:6:{s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";i:121688;s:3:\"ext\";s:3:\"jpg\";s:5:\"width\";i:619;s:6:\"height\";i:640;s:4:\"bits\";i:8;}'),(20,'data_0020.jpg',1,1270838536,1,'a:6:{s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";i:10989;s:3:\"ext\";s:3:\"jpg\";s:5:\"width\";i:300;s:6:\"height\";i:350;s:4:\"bits\";i:8;}'),(21,'data_0021.jpg',1,1270838603,1,'a:6:{s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";i:104157;s:3:\"ext\";s:3:\"jpg\";s:5:\"width\";i:720;s:6:\"height\";i:561;s:4:\"bits\";i:8;}'),(22,'data_0022.jpg',1,1270838623,1,'a:6:{s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";i:82776;s:3:\"ext\";s:3:\"jpg\";s:5:\"width\";i:720;s:6:\"height\";i:634;s:4:\"bits\";i:8;}'),(23,'data_0023.jpg',1,1270839037,1,'a:6:{s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";i:50446;s:3:\"ext\";s:3:\"jpg\";s:5:\"width\";i:678;s:6:\"height\";i:640;s:4:\"bits\";i:8;}'),(24,'data_0024.jpg',1,1270839553,1,'a:6:{s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";i:48037;s:3:\"ext\";s:3:\"jpg\";s:5:\"width\";i:720;s:6:\"height\";i:634;s:4:\"bits\";i:8;}'),(25,'data_0025.jpg',1,1270840092,1,'a:6:{s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";i:53657;s:3:\"ext\";s:3:\"jpg\";s:5:\"width\";i:699;s:6:\"height\";i:640;s:4:\"bits\";i:8;}'),(26,'data_0026.jpg',1,1270866713,1,'a:6:{s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";i:30822;s:3:\"ext\";s:3:\"jpg\";s:5:\"width\";i:720;s:6:\"height\";i:535;s:4:\"bits\";i:8;}'),(27,'data_0027.jpg',1,1270866976,1,'a:6:{s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";i:40706;s:3:\"ext\";s:3:\"jpg\";s:5:\"width\";i:720;s:6:\"height\";i:558;s:4:\"bits\";i:8;}'),(28,'data_0028.jpg',1,1270867253,1,'a:6:{s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";i:42088;s:3:\"ext\";s:3:\"jpg\";s:5:\"width\";i:720;s:6:\"height\";i:569;s:4:\"bits\";i:8;}'),(29,'data_0029.jpg',1,1270867629,1,'a:6:{s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";i:48512;s:3:\"ext\";s:3:\"jpg\";s:5:\"width\";i:720;s:6:\"height\";i:589;s:4:\"bits\";i:8;}'),(30,'data_0030.jpg',1,1270868008,1,'a:6:{s:4:\"mime\";s:10:\"image/jpeg\";s:4:\"size\";i:64036;s:3:\"ext\";s:3:\"jpg\";s:5:\"width\";i:695;s:6:\"height\";i:640;s:4:\"bits\";i:8;}');
/*!40000 ALTER TABLE `storage_volume_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storage_volume_3`
--

DROP TABLE IF EXISTS `storage_volume_3`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `storage_volume_3` (
  `id` int(11) NOT NULL auto_increment,
  `file` text,
  `user_id` int(11) default NULL,
  `timestamp` int(11) default NULL,
  `accepted` tinyint(1) default '0',
  `params` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `storage_volume_3`
--

LOCK TABLES `storage_volume_3` WRITE;
/*!40000 ALTER TABLE `storage_volume_3` DISABLE KEYS */;
/*!40000 ALTER TABLE `storage_volume_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `templates`
--

DROP TABLE IF EXISTS `templates`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `templates` (
  `id` int(11) NOT NULL auto_increment,
  `name` text,
  `text` longtext,
  `refcount` int(11) default '0',
  `settings` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `templates`
--

LOCK TABLES `templates` WRITE;
/*!40000 ALTER TABLE `templates` DISABLE KEYS */;
INSERT INTO `templates` VALUES (1,'Заготовки / Настраиваемый каталог','<div id=\"navigator\"><?=$pIFACE->GetName ();?></div>\n${subnav}\n<?php\n  // Все элементы в подкаталоге\n  $items = $pIFACE->GetCatalogueData (0 /* Глубина подкаталога */, 0 /* Идентификатор предка */);\n\n  // Указанный элемент\n  $item = $pIFACE->GetCatalogueItem (0 /* Глубина подкаталога */, 0 /* Идентификатор элемента */);\n?>\n',1,NULL),(2,'Статья / Нижний колонтитул','<?php\n  global $oldid, $pIFACE, $uid;\n  if ($oldid != \'\' && $pIFACE->GetAllowed (\'EDIT\')) {\n?>\n<div id=\"hr\"></div><div class=\"contentSub2\">\nВернуться к разделу &laquo;<a href=\".?wiki=history<?=(($uid!=\'\')?(\'&uid=\'.$uid):(\'\'));?>\">История</a>&raquo;\n<?php\n  }\n?>\n',1,NULL),(3,'Статьи / ЧаВо','<div id=\"navigator\"><?=$pIFACE->GetName ();?></div>\n${subnav}\n<?php\n  $sections = $pIFACE->GetCatalogueData (0, 0);\n  $all_items = array ();\n\n  println (\'<div class=\"FAQ\">\');\n\n  // Содержание\n  println (\'<div class=\"c\">\');\n  contentso (\'id=FAQ;\');\n  for ($i = 0, $n = count ($sections); $i < $n; $i++) {\n    $s = $sections[$i];\n    println (\'  <div class=\"cs\">\');\n    println (\'    <div class=\"title\">\'.($i+1).\'. <a href=\".#s_\'.$i.\'\">\'.htmlspecialchars ($s[\'title\']).\'</a></div>\');\n    $items = $pIFACE->GetCatalogueData (1, $s[\'uid\']);\n    for ($j = 0, $m = count ($items); $j < $m; $j++) {\n      $it = $items[$j];\n      println (\'    <div class=\"sub\">\'.($i+1).\'.\'.($j+1).\' <a href=\"#s_\'.$i.\'_q_\'.$j.\'\">\'.htmlspecialchars ($it[\'short\']).\'</a></div>\');\n    }\n    $all_items[$i] = $items;\n    println (\'  </div>\');\n  }\n  contentsc ();\n  println (\'</div>\');\n\n  // Собственно данные\n  for ($i = 0, $n = count ($sections); $i < $n; $i++) {\n    $s = $sections[$i];\n?>\n<div class=\"s\" id=\"s_<?=$i;?>\">\n  <div class=\"title\"><?=htmlspecialchars ($s[\'title\']);?></div>\n  <div class=\"list\">\n<?php\n   $items = $all_items[$i];\n    for ($j = 0, $m = count ($items); $j < $m; $j++) {\n      $it = $items[$j];\n?>\n      <div class=\"q<?=(($j==0)?(\' f\'):(\'\'));?>\" id=\"s_<?=$i;?>_q_<?=$j;?>\">\n        <div class=\"short\"><?=$it[\'short\'];?></div>\n<?=((trim ($it[\'full\'])!=\'\')?(\'        <div class=\"full\">Вопрос: \'.htmlspecialchars ($it[\'full\']).\'</div>\'.\"\\n\"):(\'\'));?>\n        <div class=\"ans\"><?=$it[\'answer\'];?></div>\n      <div>\n<?php } ?>\n  </div>\n</div>\n<?php  }\n  println (\'</div>\');\n?>\n',1,NULL),(4,'Статьи / Заглавная страница','<div style=\"border: 1px #777 solid; border-bottom: 0; margin-top: 8px;\">\r\n  <table class=\"clear\" width=\"99%\">\r\n    <tr>\r\n      <td style=\"padding: 8px 0;\">\r\n        <div style=\"background: #f9f9f9; padding: 8px; border: 1px #eee solid; margin-left: 8px;\">\r\n          <div style=\"width: 60%; background-color: #fff; padding: 4px 0;\">\r\n          <table class=\"clear\" width=\"100%\"><tr>\r\n<!--          <td align=\"center\" width=\"85\" valign=\"middle\"><img src=\"<?=config_get (\'document-root\');?>/pics/wt_l_s.gif\"></td> -->\r\n          <td style=\"text-align: left; padding-left: 16px;\">\r\n            <h2 style=\"margin: 0;\">Добро пожаловать в <a href=\"<?=config_get (\'document-root\');?>/articles/about\">E-Marsa</a>,</h2>\r\n            <h3 style=\"margin: 6px 0 0 0; font-weight: normal;\">on-line магазин компьютеров, оргтехники и комплектующих</h3>\r\n          </td>\r\n          </tr></table>\r\n          </div>\r\n        </div>\r\n      </td>\r\n      <td>&nbsp;</td>\r\n    </tr>\r\n  </table>\r\n</div>\r\n<table class=\"clear\" width=\"100%\">\r\n  <tr valign=\"top\">\r\n    <td width=\"40%\" style=\"padding-right: 4px;\">\r\n      <div class=\"lblock\"><div class=\"title tblue\"></div><div class=\"content\">\r\n<?php\r\n  $tpl = manage_template_by_name (\'Статьи / Заглавная страница / Левый колонтитул\');\r\n  print ($tpl->GetText ());\r\n?>\r\n        </div>\r\n      </div>\r\n    </td>\r\n    <td style=\"padding-left: 4px;\">\r\n<?php\r\n  $news=content_lookup (config_get (\'document-root\').\'/news\');\r\n?>\r\n      <div class=\"lblock\"><div class=\"title tgreen\"></div><div class=\"content\"<?=(($news)?(\' style=\"padding-bottom: 12px;\"\'):(\'\'));?>>\r\n<?php\r\n  if (!$news) { ?>\r\n        <span class=\"contentSub\">Нет новостей</span>\r\n<?php  } else { $pIFACE=$news->GetData (); ?>\r\n        <h2 style=\"margin-top: 2px;\">Последние <a href=\"<?=config_get (\'document-root\');?>/news\">новости</a>:</h2>\r\n<?php\r\n  $tpl = manage_template_by_name (\'Статьи / Заглавная страница / Список новостей\');\r\n  $pIFACE->OverwriteDisplayScript ($tpl->GetText ());\r\n  $pIFACE->Editor_DrawContent ();\r\n} ?>\r\n      </div>\r\n    </td>\r\n  </tr>\r\n</table>\r\n',1,NULL),(5,'Статьи / Заглавная страница / Левый колонтитул','<?php\r\n  global $login, $passwd;\r\n  if ($login!=\'\' && user_authorize (stripslashes ($login), stripslashes ($passwd))) {\r\n    redirect (config_get (\'http-document-root\'));\r\n  }\r\n  if (!user_authorized ()) {\r\n?>\r\n<form action=\".\" method=\"POST\">\r\n  <div class=\"form\">\r\n    <div class=\"content\">\r\n      <table class=\"clear\" width=\"100%\">\r\n        <tr>\r\n          <td width=\"80\">Ваш логин</td>\r\n          <td style=\"padding: 2px 0;\">\r\n            <div class=\"blockInput\"><input type=\"text\" class=\"txt\" id=\"login\" name=\"login\"></div>\r\n          </td>\r\n        </tr>\r\n        <tr>\r\n          <td>Пароль</td>\r\n          <td style=\"padding: 2px 0;\">\r\n            <table class=\"clear\" width=\"100%\">\r\n              <tr>\r\n                <td><div class=\"blockInput\"><input type=\"password\" class=\"txt\" name=\"passwd\"></div></td>\r\n                <td width=\"54\" align=\"right\"><button class=\"small\" style=\"width: 48px;\"  type=\"submit\">Войти</button></td>\r\n              </tr>\r\n            </table>\r\n          </td>\r\n        </tr>\r\n      </table>\r\n    </div>\r\n  </div>\r\n</form>\r\n<script language=\"JavaScript\" type=\"text/javascript\">\r\n  getElementById (\'login\').focus ();\r\n</script>\r\n<div id=\"hr\"></div>\r\n<?php } ?>\r\n<div style=\"text-align: justify;\">\r\nНаш сайт очень-очень хороший\r\n</div>\r\n',1,NULL),(25,'Магазин / Прайс лист','<div id=\"navigator\"><?=$pIFACE->GetName ();?></div>\r\n${subnav}\r\n<?php\r\n  global $CORE;\r\n\r\n  global $DOCUMENT_ROOT, $MARKET;\r\n  include $DOCUMENT_ROOT.\'/inc/logick/market/basket.php\';\r\n  include $DOCUMENT_ROOT.\'/inc/logick/market/market.php\';\r\n\r\n  InitMarket ();\r\n\r\n  $CORE->PAGE->AddStyle (\'market\');\r\n  redirector_add_skipvar (\'action\');\r\n\r\n  function listSubCats ($subCats)\r\n    {\r\n      if (!count ($subCats))\r\n        {\r\n          return;\r\n        }\r\n\r\n      println (\'<ul class=\"pricesubcat\">\');\r\n\r\n      for ($i = 0, $n = count ($subCats); $i < $n; ++$i)\r\n        {\r\n          $subCat = $subCats[$i];\r\n        \r\n          $href = \'./?subcat=\' . $subCat[\'uid\'];\r\n          println (\'<li class=\"pricesubcat\"><a href=\"\' . $href . \'\">\' .\r\n            htmlspecialchars ($subCat[\'name\']) . \'</a></li>\');\r\n        }\r\n\r\n      println (\'</ul>\');\r\n    }\r\n\r\n  function listCats ($cats)\r\n    {\r\n      global $pIFACE;\r\n    \r\n      if (!count ($cats))\r\n        {\r\n          return;\r\n        }\r\n    \r\n      $opened = 0;\r\n      $prevOpened = false;\r\n      $columns = 3;\r\n      println (\'<table class=\"clear\" width=\"100%\" style=\"table-layout: fixed\">\');\r\n    \r\n      for ($i = 0, $n = count ($cats); $i < $n; ++$i)\r\n        {\r\n          if (!$opened)\r\n            {\r\n              if ($prevOpened)\r\n                {\r\n                  println (\'</tr>\');\r\n                }\r\n            \r\n              println (\'  <tr valign=\"top\">\');\r\n\r\n              $opened = $columns;\r\n              $prevOpened = true;\r\n            }\r\n\r\n          println (\'    <td width=\"\' . floor (100 / $columns) . \'%\"\' . \'>\');\r\n          println (\'      <ul class=\"pricecat\">\');\r\n          $cat = $cats[$i];\r\n          println (\'        <li class=\"pricecat\">\' . htmlspecialchars ($cat[\'name\']) . \'</li>\');\r\n\r\n          $subCats = $pIFACE->GetCatalogueData (1, $cat[\'uid\']);\r\n          listSubCats ($subCats);\r\n          println (\'      </ul>\');\r\n          println (\'    </td>\');\r\n\r\n          --$opened;\r\n        }\r\n\r\n      if ($opened)\r\n        {\r\n          while ($opened)\r\n            {\r\n              println (\'  <td></td>\');\r\n            \r\n              --$opened;\r\n            }\r\n        \r\n          println (\'  </tr>\');\r\n        }\r\n\r\n      println (\'</table>\');\r\n    }\r\n\r\n  function listItems ($items)\r\n    {\r\n      if (!count ($items))\r\n        {\r\n          return;\r\n        }\r\n\r\n      println (\'<table class=\"info\" style=\"width: 100%\">\');\r\n      println (\'  <tr class=\"h\">\');\r\n      println (\'    <th>Название</th>\');\r\n      println (\'    <th width=\"100px\">Цена</th>\');\r\n      println (\'  </tr>\');\r\n\r\n      for ($i = 0, $n = count ($items); $i < $n; ++$i)\r\n        {\r\n          $item = $items[$i];\r\n\r\n          println (\'  <tr>\');\r\n          println (\'    <td><a href=\".?product=\' . $item[\'uid\'] . \'\">\' . htmlspecialchars ($item[\'name\']) . \'</a></td>\');\r\n          println (\'    <td align=\"center\">\' . htmlspecialchars ($item[\'cost\']) . \'</td>\');\r\n          println (\'  </tr>\');\r\n        }\r\n\r\n      println (\'</table>\');\r\n    }\r\n\r\n  function showProduct ($product)\r\n    {\r\n      global $pIFACE;\r\n    \r\n      $tpl = manage_template_by_name (\'Магазин / Прайс / Подробно о товаре\');\r\n      $script = $tpl->GetText ();\r\n\r\n      $char = array(\'Основные\' => array (\r\n                                    array (\'name\' => \'Производитель\', \'text\' => $product[\'vendor\']),\r\n                                    array (\'name\' => \'Модель\',        \'text\' => $product[\'model\'])\r\n                                  )\r\n\r\n                    );\r\n      $photos = array ();\r\n\r\n      $chars = $pIFACE->GetCatalogueData (3, $product[\'uid\']);\r\n      for ($i = 0, $n = count ($chars); $i < $n; ++$i)\r\n        {\r\n          $c = $chars[$i];\r\n          if ($c[\'image\'])\r\n             {\r\n               $photos[] = $c[\'image\'];\r\n               continue;\r\n             }\r\n\r\n          $c[\'cat\'] = trim ($c[\'cat\']);\r\n          if (!isset ($char[$c[\'cat\']]))\r\n            {\r\n              $char[$c[\'cat\']] = array ();\r\n            }\r\n\r\n          $char[$c[\'cat\']][] = $c;\r\n        }\r\n\r\n      $params = array (\'id\'   => $product[\'uid\'],\r\n                       \'name\'   => $product[\'name\'],\r\n                       \'cost\'   => $product[\'cost\'],\r\n                       \'vendor\' => $product[\'vendor\'],\r\n                       \'model\'  => $product[\'model\'],\r\n                       \'char\'   => $char,\r\n                       \'photos\' => $photos);\r\n\r\n      tpl_srcp ($script, $params);\r\n    }\r\n\r\n  function printSearchForm ()\r\n    {\r\n      global $pIFACE, $MARKET;\r\n      $cats = $pIFACE->GetCatalogueData (0, 0);\r\n      $all = $pIFACE->GetCatalogueData (2, 0);\r\n\r\n      $catid = isNumber ($_POST[\'cat\']) ? $_POST[\'cat\'] : 0;\r\n      $vendors = $MARKET->GetVendors ($catid );\r\n\r\n      println (\'<br>\');\r\n      dd_formo (\'title=Найти товар;\');\r\n      $c = stripslashes ($_POST[\'cat\']);\r\n?>\r\n            <script language=\"JavaScript\">\r\n        function updateVendors () {\r\n          IPC_Send_Command (\'/market/\', \'ipc=get_vendors&catid=\' + getElementById (\'cat\').value,\r\n                            function (response) {\r\n                              if (response.match (/^\\\\+OK/)) {\r\n                                var data = response.replace (/^\\\\+OK\\s*/, \'\');\r\n                                var arr = eval (data);\r\n\r\n                                var select = getElementById (\'vendors\');\r\n                                select.innerHTML = \'\';\r\n\r\n                                var option = document.createElement (\'OPTION\');\r\n                                option.value = \'\';\r\n                                option.innerHTML = \'Не важен\';\r\n                                select.appendChild (option);\r\n\r\n                                for (var i = 0, n = arr.length; i < n; ++i) {\r\n                                  var option = document.createElement (\'OPTION\');\r\n                                  option.value = arr[i].toLowerCase ();\r\n                                  option.appendChild (document.createTextNode (arr[i]));\r\n                                  select.appendChild (option);\r\n                                }\r\n                              } else {\r\n                              }\r\n                            });\r\n        }\r\n       </script>\r\n\r\n            <form method=\"POST\" action=\".?action=search\">\r\n              Категория:\r\n              <select class=\"block\" name=\"cat\" value=\"<?=htmlspecialchars ($c);?>\" onchange=\"updateVendors ();\" id=\"cat\">\r\n                <option value=\"0\"><i>Не важна</i></option>\r\n<?php\r\n      for ($i = 0, $n = count ($cats); $i < $n; ++$i)\r\n        {\r\n?>\r\n                <option value=\"<?=$cats[$i][\'uid\']?>\" <?=$c == strtolower ($cats[$i][\'uid\']) ? \' selected\' : \'\'?>><?=htmlspecialchars ($cats[$i][\'name\'])?></option>\r\n<?php\r\n        }\r\n\r\n      $v = stripslashes ($_POST[\'vendor\']);\r\n?>\r\n              </select>\r\n              <div id=\"hr\"></div>\r\n              Производитель:\r\n              <select class=\"block\" name=\"vendor\" value=\"<?=htmlspecialchars ($v);?>\" id=\"vendors\">\r\n                <option value=\"\"><i>Не важен</i></option>\r\n<?php\r\n      for ($i = 0, $n = count ($vendors); $i < $n; ++$i)\r\n        {\r\n?>\r\n                <option value=\"<?=htmlspecialchars (strtolower ($vendors[$i]))?>\" <?=$v == strtolower ($vendors[$i]) ? \' selected\' : \'\'?>><?=htmlspecialchars ($vendors[$i])?></option>\r\n<?php\r\n        }\r\n?>\r\n              </select>\r\n              <div id=\"hr\"></div>\r\n              Название:\r\n              <input type=\"text\" class=\"txt block\"  name=\"name\"  value=\"<?=htmlspecialchars (stripslashes ($_POST[\'name\']));?>\">\r\n\r\n              <div id=\"hr\"></div>\r\n             <div class=\"formPast\">\r\n               <button type=\"submit\" class=\"submitBtn block\">Искать</button>\r\n             </div>\r\n            </form>\r\n<?php\r\n      dd_formc ();\r\n    }\r\n\r\n  function searchData ()\r\n    {\r\n      global $MARKET;\r\n\r\n      $result = $MARKET->SearchData ($_POST[\'cat\'], stripslashes ($_POST[\'vendor\']), stripslashes ($_POST[\'name\']));\r\n      if (count ($result) == 0) {\r\n        println (\'<h2>По вашему запросу ничего не найдено</h2>\');\r\n      } else {\r\n        println (\'<h2>Найдено \' . count ($result) . \' совпадений </h2>\');\r\n        println (\'<table class=\"info\" style=\"width: 100%\">\');\r\n        println (\'  <tr class=\"h\">\');\r\n        println (\'    <th>Название</th>\');\r\n        println (\'    <th width=\"100px\">Цена</th>\');\r\n        println (\'  </tr>\');\r\n\r\n        for ($i = 0, $n = count ($result); $i < $n; ++$i) {\r\n          $item = $result[$i];\r\n\r\n          println (\'  <tr>\');\r\n          println (\'    <td><a href=\".?product=\' . $item[\'uid\'] . \'\">\' . htmlspecialchars ($item[\'name\']) . \'</a></td>\');\r\n          println (\'    <td align=\"center\">\' . htmlspecialchars ($item[\'cost\']) . \'</td>\');\r\n          println (\'  </tr>\');\r\n        }\r\n      }\r\n\r\n      println (\'</table>\');\r\n    }\r\n\r\n  global $subcat, $product, $action;\r\n\r\n  if ($action == \'search\' && ($_POST[\'cat\'] != \'\' || $_POST[\'vendor\'] != \'\' || $_POST[\'name\'] != \'\' ))\r\n    {\r\n      searchData ();\r\n      printSearchForm ();\r\n    }\r\n  else if (trim ($product) != \'\')\r\n    {\r\n      $item = $pIFACE->GetCatalogueItem (2, $product);\r\n      print (\'<h4>Перейти к <a href=\".?subcat=\' . $item[\'pid\'] . \'\">выбору продукта</a></h4>\');\r\n      showProduct ($item);\r\n    }\r\n  else if ($subcat == \'\') \r\n    {\r\n      $cats = $pIFACE->GetCatalogueData (0, 0);\r\n      listCats ($cats);\r\n\r\n      printSearchForm ();\r\n    }\r\n  else\r\n    {\r\n      $s = $pIFACE->GetCatalogueItem (1, $subcat);\r\n\r\n      print (\'<h4>Перейти к <a href=\".\">выбору категории</a> продукта</h4>\');\r\n      println (\'<h3>\' . htmlspecialchars ($s[\'name\']) . \'</h3>\');\r\n\r\n      $items = $pIFACE->GetCatalogueData (2, $subcat);\r\n      listItems ($items);\r\n    }\r\n?>\r\n',0,NULL),(6,'Статьи / Заглавная страница / Список новостей / Коротко о новости','<?php\r\n  $full = trim (html2txt (targ (\'full\')))!=\'\';\r\n  $edit = $pIFACE->GetAllowed (\'EDITINFO\');\r\n\r\n  $doc_root = config_get (\'document-root\');\r\n  $edit_link = $pIFACE->GetItemEditorLink (targ (\'id\'));\r\n  $edit_link = preg_replace (\'/\'.prepare_pattern ($doc_root).\'/i\',\r\n                             $doc_root.\'/news\', $edit_link);\r\n\r\n  if ($full) {\r\n    $full = \'<span class=\"arr\"><a href=\"\'.$doc_root.\'/news/text/?uid=\'.\r\n      targ (\'uid\').\'\">Подробнее...</a></span>\';\r\n  }\r\n\r\n  if ($edit) {\r\n    $acts = \'<td class=\"acts\">[<a href=\"\'.$edit_link.\'\" title=\"Редактировать секцию: \'.\r\n      targ (\'title\').\'\">Редактировать</a>]</td>\';\r\n  }\r\n\r\n  $img = targ (\'image\');\r\n?>\r\n<div id=\"entry\">\r\n  <div id=\"head\">\r\n    <table><tr><td><h3 style=\"margin: 0;\"><?=htmlspecialchars (targ (\'title\'));?></h3></td><?=$acts;?></tr></table>\r\n  </div>\r\n  <div id=\"text\"><?=(($img!=\'\')?(\'<img src=\"\'.$img.\'\">\'):(\'\'));?><?=fakecode (targ (\'short\'));?></div>\r\n  <table class=\"clear\" width=\"100%\"><tr>\r\n<?php\r\n  if ($full || $edit) {\r\n?>\r\n    <td width=\"96\"><div id=\"bottom\"><?=$full;?></div></td>\r\n<?php\r\n  }\r\n?>\r\n    <td style=\"text-align: right; padding-right: 16px;\">\r\n      <div><span id=\"author\" style=\"margin: 0;\"><?=targ (\'date\');?> by <?=user_generate_short_info_string (targ (\'user_id\'));?></span></div>\r\n    </td>\r\n  </tr></table>\r\n</div>\r\n',1,NULL),(7,'Статьи / Заглавная страница / Список новостей','<?php\r\n  $data = $pIFACE->GetList ();\r\n  $n = count ($data);\r\n  $tpl = manage_template_by_name (\'Статьи / Заглавная страница / Список новостей / Коротко о новости\');\r\n  $script=$tpl->GetText ();\r\n  if ($n > 0) {\r\n?>\r\n<div id=\"news\">\r\n<?php\r\n  $j = max ($n-opt_get (\'last_news_count\'), 0);\r\n  for ($i = $n - 1; $i >= $j; $i--) {\r\n    $r = $data[$i];\r\n    tpl_srcp ($script, $r);\r\n  }\r\n?>\r\n</div>\r\n<?php\r\n  } else {\r\n?>\r\n  <span class=\"contentsub\">Нет новостей</span>\r\n<?php\r\n  }\r\n?>\r\n',1,NULL),(8,'Статьи / Правила / Лист','<?php\n  $data = $pIFACE->GetList ();\n  $n=count ($data);\n  $script=$pIFACE->ItemScript ();\n?>\n<div id=\"navigator\"><?=$pIFACE->GetName ();?></div>\n${subnav}\n<div style=\"width: 320px; padding-left: 40px; margin-bottom: 16px;\">\n<?php\n  if ($n > 0) {\n    contentso (\'id=rules\');\n    println (\'<div style=\"padding-left: 8px;\">\');\n\n    for ($i = 0; $i < $n; $i++) {\n      $r = $data[$i]; println (\'<div>\'.($i + 1).\'. <a href=\"#section_\'.$i.\'\">\'.\n        htmlspecialchars ($r[\'title\']).\'</a></div>\');\n    }\n\n    println (\'</div>\');\n    contentsc ();\n  } else {\n    println (\'<span class=\"contentSub\">В разработке</span>\');\n  }\n?>\n</div>\n<div id=\"sectionlist\">\n<?php\n  for ($i = 0; $i < $n; $i++) {\n    $r = $data[$i];\n    println (\'<div id=\"section_\'.$i.\'\"></div>\');\n    tpl_srcp ($script, $r);\n  }\n?>\n</div>\n',1,NULL),(9,'Статьи / Правила / Абзац','<?php\n   $edit = $pIFACE->GetAllowed (\'EDITINFO\');\n   if ($edit) {\n     $acts=\'<td class=\"acts\">[<a href=\"\'.$pIFACE->GetItemEditorLink (targ (\'id\')).\n       \'\" title=\"Редактировать секцию: \'.targ (\'title\').\'\">Редактировать</a>]</td>\';\n   }\n?>\n<div id=\"entry\">\n  <div id=\"head\"><table><tr><td class=\"title\"><?=htmlspecialchars (targ (\'title\'));?></td><?=$acts;?></tr></table></div>\n  <div id=\"text\"><?=targ (\'text\');?></div>\n</div>\n<div style=\"height: 6px;\"></div>\n',1,NULL),(10,'Страница / Нижний колонтитул','<?php\r\n  $info = client_info ();\r\n?>\r\n<div id=\"footer\" style=\"padding-bottom: 4px;\">\r\n  <center>\r\n<?php  if (user_access_root ()) { ?>\r\n    <small>\r\n      Страница была сгенерирована за <?=debug_get_watchdog();?>сек.<br>\r\n      Использовано запросов: <?=db_query_count ();?><br>\r\n    </small>\r\n<?php } ?>\r\n  </center>\r\n  <div id=\"hr\" style=\"margin: 6px 0 1px 0;\"></div>\r\n  <table width=\"100%\" class=\"small\">\r\n    <tr>\r\n      <td width=\"50%\">Powered by Gate5 Engine (c) 2006-2010 nazgul</td>\r\n      <td align=\"right\">Все права защищены (с) 2007 sch9 team</td>\r\n    </tr>\r\n  </table>\r\n</div>\r\n',1,NULL),(21,'Статьи / Подробно о публикации','<?php\r\n\r\nglobal $oldid, $uid, $page;\r\n\r\nif ($oldid==\'\')\r\n\r\n  // Получение последней версии публикаии\r\n\r\n  $data=$pIFACE->GetListRowByUid ($uid); else\r\n\r\n  // Получение бубликации с указанным id\r\n\r\n  $data=$pIFACE->GetListRowbyId ($oldid);\r\n\r\n?>\r\n\r\n<div id=\"navigator\"><a href=\"<?=dirname ($GLOBALS[\'REQUEST_URI\'])?>\"><?=$pIFACE->GetName ();?></a><?=$data[\'title\'];?></div>\r\n\r\n${subnav}\r\n\r\n<?php\r\n\r\n  $full=trim (html2txt ($data[\'full\']))!=\'\';\r\n\r\n  if ($full) print ($data[\'full\']); else print (\'<p>\'.fakecode ($data[\'short\']).\'</p>\');\r\n\r\n  print (\'<div style=\"margin-top: 8px;\"><span class=\"arr\"><a href=\"../\'.(($page!=\'\')?(\'?page=\'.$page):(\'\')).\'\">Перейти к списку новостей</a></span></div>\');\r\n\r\n?>\r\n\r\n',0,NULL),(11,'Заготовки / Лист / Просто лист','<div id=\"navigator\"><?=$pIFACE->GetName ();?></div>\n${subnav}\n<?=$pIFACE->Field (\'text\');?>\n',1,NULL),(12,'Страница / Меню навигации','<!--\r\n  `+`   -    Начать новое меню\r\n  `,` <модификаторы>     -   Новый элемент вне списка в текущем меню/подменю.\r\n  `.` <модификаторы>     -   Новый элемент в текущем меню/подменю.\r\n    Модификаторы:\r\n      `:`  - Запрет препарсинга html кода\r\n      \'l\'    - Отображать элемент только если пользователь авторизовался\r\n      \'L\'    - Отображать элемент только если пользователь _не_ авторизовался\r\n-->\r\n+ Навигация\r\n. [url href=\"$document_root/\"]Заглавная страница[/url]\r\n. [url href=\"$document_root/news\"]Новости[/url]\r\n. [url href=\"$document_root/price\"]Прайс лист[/url]\r\n. [url href=\"$document_root/basket\"]Корзина[/url]\r\n',1,NULL),(13,'Заготовки / Публикация / Датированная публикация ','<?php\n  $full = trim (html2txt (targ (\'full\')))!=\'\';\n  $edit = $pIFACE->GetAllowed (\'EDITINFO\');\n\n  if ($full) {\n    $full = \'<span class=\"arr\"><a href=\"./text/?uid=\'.targ (\'uid\').\'\">Подробнее...</a></span>\';\n  }\n\n  if ($edit) {\n    $acts = \'<td class=\"acts\">[<a href=\"\'.$pIFACE->GetItemEditorLink (targ (\'id\')).\n      \'\" title=\"Редактировать секцию: \'.targ (\'title\').\'\">Редактировать</a>]</td>\';\n  }\n?>\n<div id=\"entry\">\n  <div id=\"head\">\n    <table><tr>\n      <td class=\"title\">\n        <?=htmlspecialchars (targ (\'title\'));?>\n        <div class=\"sub\"><?=targ (\'date\');?><span id=\"author\">Добавил: <?=user_generate_short_info_string (targ (\'user_id\'));?></span></div>\n      </td>\n      <?=$acts;?>\n    </tr></table>\n  </div>\n  <div id=\"text\"><?=fakecode (targ (\'short\'));?></div>\n<?php\n  if ($full || $edit) { ?>\n     <div id=\"bottom\"><?=$full;?></div>\n<?php\n  }\n?>\n</div>\n ',1,NULL),(14,'Заготовки / Публикация / Подробно о публикации','<div id=\"navigator\"><?=$pIFACE->GetName ();?></div>\n${subnav}\n<?php\nglobal $oldid, $uid;\nif ($oldid==\'\')\n  // Получение последней версии публикаии\n  $data=$pIFACE->GetListRowByUid ($uid); else\n  // Получение бубликации с указанным id\n  $data=$pIFACE->GetListRowbyId ($oldid);\n?>\n',1,NULL),(15,'Заготовки / Публикация / Список публикаций','<?php\n  global $page;\n  $data=$pIFACE->GetPagedList ($data->PageCount-$page+1);\n  $n=count ($data);\n  $script=$pIFACE->ItemScript ();\n?>\n<div id=\"navigator\"><?=$pIFACE->GetName ();?></div>\n${subnav}\n<?=$pIFACE->GetPagintation ($page);?>\n<div id=\"news\">\n<?\n  // Скрипт создавался для вывода списка новостей. Так что вывод в обратном порядке :)\n  for ($i=$n-1; $i>=0; $i--) { $r=$data[$i]; tpl_srcp ($script, $r); }\n?>\n</div>\n<div style=\"margin-top: 6px;\">\n<?=$pIFACE->GetPagintation ($page);?>\n</div>\n',1,NULL),(16,'Заготовки / Публикация / Абзац многосекционного листа','<?php\n   $edit=$pIFACE->GetAllowed (\'EDITINFO\');\n   if ($edit) $acts=\'<td class=\"acts\">[<a href=\"\'.$pIFACE->GetItemEditorLink (targ (\'id\')).\'\" title=\"Редактировать секцию: \'.targ (\'title\').\'\">Редактировать</a>]</td>\';\n?>\n<div id=\"entry\">\n  <div id=\"head\"><table><tr><td class=\"title\"><?=htmlspecialchars (targ (\'title\'));?></td><?=$acts;?></tr></table></div>\n  <div id=\"text\"><?=targ (\'text\');?></div>\n</div>\n',1,NULL),(17,'Заготовки / Публикация / Многосекционный лист','<?php\n  global $page;\n  $data=$pIFACE->GetPagedList ($page);\n  $n=count ($data);\n  $script=$pIFACE->ItemScript ();\n?>\n<div id=\"navigator\"><?=$pIFACE->GetName ();?></div>\n${subnav}\n<?=$pIFACE->GetPagintation ($page);?>\n<div id=\"sectionlist\">\n<? for ($i=0; $i<$n; $i++) { $r=$data[$i]; tpl_srcp ($script, $r); }\n?>\n</div>\n<div style=\"margin-top: 6px;\">\n<?=$pIFACE->GetPagintation ($page);?>\n</div>\n',1,NULL),(18,'Олимпиады / Informatics / Заготовка условия задачи','<p>\n  &nbsp;\n</p><br>\n<p><b>Формат файла входных данных:</b></p>\n<p>&nbsp;</p><br>\n<p><b>Формат файла выходных данных:</b></p>\n<p>&nbsp;</p><br>\n<p>\n  <b>Пример:</b><br>\n  <table class=\"info\">\n    <tr class=\"h\">\n      <th>&nbsp;</th>\n      <th>&nbsp;</th>\n    </tr>\n    <tr>\n      <td>&nbsp;</td>\n      <td>&nbsp;</td>\n    </tr>\n </table>\n</p>\n',1,NULL),(19,'Олимпиады / Informatics / Список задач','&nbsp;\n',1,NULL),(22,'Магазин / Прайс / Подробно о товаре','<?php\r\n  global $MARKET;\r\n\r\n  $photos = targ (\'photos\');\r\n?>\r\n\r\n<script language=\"JavaScript\">\r\n  function addToBasket () {\r\n      IPC_Send_Command (\'/basket/\', \'ipc=basket_add&id=<?=targ (\'id\')?>\',\r\n                        function (response) {\r\n                          if (response == \'+OK\') {\r\n                            alert (\'Товар добавлен в корзину\');\r\n                            hide (\'basketControl\');\r\n                            sb (\'basketShow\');\r\n                          } else {\r\n                            alert (response);\r\n                          \r\n                            alert (\'Извините, произошла ошибка. Попробуйте повторить операцию позднее\');\r\n                          }\r\n                        });\r\n  }\r\n</script>\r\n\r\n<table class=\"clear priceArticle\" width=\"100%\">\r\n  <tr>\r\n    <td class=\"photo\">\r\n      <img src=\"<?=$photos[0];?>\">\r\n    </td>\r\n    <td>\r\n      <div class=\"actsPub\">\r\n        <div class=\"cost\">\r\n          <span>Цена за наличный расчёт:</span><br>\r\n          <span><?=targ (\'cost\');?></span><br>\r\n        </div>\r\n      </div>\r\n\r\n<?php\r\n  $inBasket = true;\r\n  if (!$MARKET->BASKET->GetItemById (targ (\'id\'))) {\r\n    $inBasket = false;\r\n?>\r\n      <div class=\"actsPub\" id=\"basketControl\">\r\n        <div>\r\n          <button type=\"button\" class=\"block btn\" onclick=\"addToBasket();\">Добавить в корзину</button>\r\n        </div>\r\n<?php\r\n    if ($MARKET->BASKET->isEmpty ()) {\r\n?>\r\n        <span>\r\n          <br>\r\n          <span>Cодержимое корзины можно будет в дальнейшем использовать:</span>\r\n          <ol>\r\n            <li>Для заказа доставки</li>\r\n            <li>Для резервации товара перед очным посещением магазина</li>\r\n            <li>Для выписки счета на безналичную оплату</li>\r\n            <li>Для всего остального</li>\r\n          </ol>\r\n        </span>\r\n\r\n<?php\r\n    } else {\r\n?>\r\n      <span>\r\n        В корзине уже присутствуют товары<br><br>\r\n        Чтобы посмотреть все товары, находящиеся в корзине нажмите <a href=\"<?=config_get (\'http-document-root\')?>/basket\">сюда</a>\r\n      </span>\r\n<?php\r\n    }\r\n?>\r\n      </div>\r\n<?\r\n  }\r\n?>\r\n      <div class=\"actsPub<?=$inBasket ? \'\' : \' invisible\'?>\" id=\"basketShow\">\r\n        Товар находится в корзине.<br><br>\r\n        Чтобы посмотреть все товары, находящиеся в корзине нажмите <a href=\"<?=config_get (\'http-document-root\')?>/basket\">сюда</a>.\r\n      </div>\r\n    </td>\r\n  </tr>\r\n</table>\r\n\r\n<?php\r\n  $char = targ (\'char\');\r\n  foreach ($char as $name => $items)\r\n    {\r\n?>\r\n<table class=\"list\">\r\n  <tr class=\"h\">\r\n    <th class=\"first\"><?=htmlspecialchars ($name);?></th>\r\n    <th class=\"last\" width=\"70%\"></th>\r\n  </tr>\r\n<?php\r\n    for ($i = 0, $n = count ($items); $i < $n; ++$i)\r\n      {\r\n        $item = $items[$i];\r\n      \r\n?>\r\n  <tr<?=($i == $n - 1 ?  \' class=\"last\"\': \'\');?>>\r\n    <td><?=htmlspecialchars ($item[\'name\']);?></td>\r\n    <td><?=htmlspecialchars ($item[\'text\']);?></td>\r\n  </tr>\r\n<?php\r\n      }\r\n?>\r\n</table>\r\n<?php\r\n  }\r\n?>\r\n',0,NULL),(23,'Магазин / Корзина','<?php\r\n  global $MARKET;\r\n\r\n  $items = $MARKET->BASKET->getItems ();\r\n  redirector_add_skipvar (\'action\');\r\n?>\r\n\r\n<div id=\"navigator\">Корзина</div>\r\n\r\n<?php\r\n  if (!count ($items)) {\r\n?>\r\n  <div>\r\n    <h3>Ваша корзина пуста</h3>\r\n    <h4>Вы можете заполнить её через <a href=\"<?=config_get (\'http-document-root\')?>/price\">прайс</a>.</h4>\r\n  </div>\r\n<?php\r\n  } else {\r\n?>\r\n  <h3>Содержимое корзины:</h3>\r\n  <table class=\"list\">\r\n    <tr class=\"h\">\r\n      <th class=\"n first\">№</th>\r\n      <th>Наименование</th>\r\n      <th width=\"120px\">Цена</th>\r\n      <th width=\"60px\" class=\"last\"></th>\r\n    </tr>\r\n\r\n<?php\r\n    $s = array (0, 0);\r\n\r\n    for ($i = 0, $n = count ($items); $i < $n; $i++) {\r\n      $item = $items[$i];\r\n      $t = preg_replace (\'/\\s+/\', \' \', preg_replace (\'/[^0-9]/\', \' \', $item[\'cost\']));\r\n      $a = explode (\' \', $t);\r\n      $s[0] += $a[0];\r\n      $s[1] += $a[1];\r\n?>\r\n    <tr>\r\n      <td class=\"n\"><?=($i + 1)?></td>\r\n      <td><a href=\"<?=config_get (\'http-document-root\')?>/price?product=<?=$item[\'id\']?>\"><?=htmlspecialchars ($item[\'name\'])?></a></td>\r\n      <td><?=htmlspecialchars ($item[\'cost\'])?></td>\r\n      <td align=\"right\">\r\n        <?ibtnav (\'cross.gif\', \'?action=drop&id=\'.$item[\'id\'], \'Выкинуть из корзины\', \'Выкинуть этот товар их корзины?\');?>\r\n      </td>\r\n    </tr>\r\n<?php\r\n    }\r\n?>\r\n\r\n    <tr class=\"last\">\r\n      <td colspan=\"2\" align=\"right\"><b>Итого</b></td>\r\n      <td colspan=\"2\"><b><?=$s[0] + floor($s[1] / 100)?> руб. <?=floor($s[1] % 100)?> коп.</b></td>\r\n    </tr>\r\n\r\n  </table>\r\n<?php\r\n    dd_formo (\'title=Оформить заказ\');\r\n?>\r\n    <form method=\"POST\" action=\".?action=send\">\r\n      <input type=\"HIDDEN\" value=\"<?=$s[0]+$s[1]/100?>\" name=\"amount\">\r\n      <div style=\"margin-top: 4px;\">\r\n        <table class=\"clear\" width=\"100%\">\r\n          <tr>\r\n            <td width=\"120\">Адрес</td>\r\n            <td><input class=\"txt block\" type=\"text\" name=\"Адрес\"></td>\r\n          </tr>\r\n        </table>\r\n      </div>\r\n      <div class=\"formPast\">\r\n        <button type=\"submit\" class=\"submitBtn block\">Оформить заказ</button>\r\n      </div>\r\n    </form>\r\n<?php\r\n    dd_formc ();\r\n  }\r\n?>\r\n',0,NULL),(24,'Магазин / Корзина / Заказ отправлен','<div id=\"navigator\">Корзина</div>\r\n\r\n<!--<h2>Ваш заказ был обработан</h2>\r\n<h3>В скором времени все заказанные товары придут вам на почту. Электронную.</h3> -->\r\n\r\n<p>\r\n  Сейчас должен быть редирект на форму веб-маней, но у нас всё фейковое ибо фиг получишь все нужные сертификаты\r\n  и посему следующий шаг чисто демонстралово того, что мы сечём\r\n</p>\r\n\r\n<p>\r\n<!-- Если бы система была реальной, то сейчас надо было бы сгенерить форму типа<br> -->\r\n<!--  <pre> -->\r\n<?php\r\n  $amount = htmlspecialchars (stripslashes ($_POST[\'amount\']));\r\n  //$purse = \'<наш кошелёк>\';\r\n  $purse = \'R805165013046\';\r\n  $code = \'<form id=pay name=pay method=\"POST\" action=\"https://merchant.webmoney.ru/lmi/payment.asp\">\' . \"\\n\" .\r\n/*\'  <p>пример платежа через сервис Web Merchant Interface</p>\' . \"\\n\" . */\r\n\'  <p>заплатить \' . htmlspecialchars ($amount) . \' WMZ...</p>\' . \"\\n\" .\r\n\'  <p>\' . \"\\n\" .\r\n\'    <input type=\"hidden\" name=\"LMI_PAYMENT_AMOUNT\" value=\"\' . htmlspecialchars ($amount) . \'\">\' . \"\\n\" .\r\n\'    <input type=\"hidden\" name=\"LMI_PAYMENT_DESC\" value=\"payment for a several good items\">\' . \"\\n\" .\r\n\'    <input type=\"hidden\" name=\"LMI_PAYMENT_NO\" value=\"1\">\' . \"\\n\" .\r\n\'    <input type=\"hidden\" name=\"LMI_PAYEE_PURSE\" value=\"\' . $purse . \'\">\' . \"\\n\" .\r\n\'    <input type=\"hidden\" name=\"LMI_SIM_MODE\" value=\"0\">\' . \"\\n\" .\r\n\'  </p>\' . \"\\n\" .\r\n\'  <p><input type=\"submit\" value=\"Отдать сайту веб-маней кучу бабла\"></p>\' . \"\\n\" .\r\n\'</form>\';\r\n\r\n  //print(htmlspecialchars($code));\r\n  print ($code);\r\n?>\r\n<!--  </pre> -->\r\n</p>',0,NULL);
/*!40000 ALTER TABLE `templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tester`
--

DROP TABLE IF EXISTS `tester`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tester` (
  `security` text,
  `content` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tester`
--

LOCK TABLES `tester` WRITE;
/*!40000 ALTER TABLE `tester` DISABLE KEYS */;
INSERT INTO `tester` VALUES ('a:0:{}','a:0:{}');
/*!40000 ALTER TABLE `tester` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tester_checkers`
--

DROP TABLE IF EXISTS `tester_checkers`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tester_checkers` (
  `id` int(11) NOT NULL auto_increment,
  `name` longtext,
  `uploaded` tinyint(1) default '0',
  `settings` longtext,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tester_checkers`
--

LOCK TABLES `tester_checkers` WRITE;
/*!40000 ALTER TABLE `tester_checkers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tester_checkers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tester_contestgroup`
--

DROP TABLE IF EXISTS `tester_contestgroup`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tester_contestgroup` (
  `contest_id` int(11) default NULL,
  `group_id` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tester_contestgroup`
--

LOCK TABLES `tester_contestgroup` WRITE;
/*!40000 ALTER TABLE `tester_contestgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `tester_contestgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tester_contests`
--

DROP TABLE IF EXISTS `tester_contests`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tester_contests` (
  `id` int(11) NOT NULL auto_increment,
  `name` text,
  `lid` int(11) default NULL,
  `status` int(11) default NULL,
  `settings` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tester_contests`
--

LOCK TABLES `tester_contests` WRITE;
/*!40000 ALTER TABLE `tester_contests` DISABLE KEYS */;
/*!40000 ALTER TABLE `tester_contests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tester_disabled_problems`
--

DROP TABLE IF EXISTS `tester_disabled_problems`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tester_disabled_problems` (
  `contest_id` int(11) default NULL,
  `problem_id` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tester_disabled_problems`
--

LOCK TABLES `tester_disabled_problems` WRITE;
/*!40000 ALTER TABLE `tester_disabled_problems` DISABLE KEYS */;
/*!40000 ALTER TABLE `tester_disabled_problems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tester_judgegroup`
--

DROP TABLE IF EXISTS `tester_judgegroup`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tester_judgegroup` (
  `contest_id` int(11) default NULL,
  `group_id` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tester_judgegroup`
--

LOCK TABLES `tester_judgegroup` WRITE;
/*!40000 ALTER TABLE `tester_judgegroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `tester_judgegroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tester_problem_tags`
--

DROP TABLE IF EXISTS `tester_problem_tags`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tester_problem_tags` (
  `problem_id` int(11) default NULL,
  `tag_id` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tester_problem_tags`
--

LOCK TABLES `tester_problem_tags` WRITE;
/*!40000 ALTER TABLE `tester_problem_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tester_problem_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tester_problems`
--

DROP TABLE IF EXISTS `tester_problems`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tester_problems` (
  `id` int(11) NOT NULL auto_increment,
  `lid` int(11) default NULL,
  `name` text,
  `description` longtext,
  `settings` longtext,
  `uploaded` int(11) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tester_problems`
--

LOCK TABLES `tester_problems` WRITE;
/*!40000 ALTER TABLE `tester_problems` DISABLE KEYS */;
/*!40000 ALTER TABLE `tester_problems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tester_solutions`
--

DROP TABLE IF EXISTS `tester_solutions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tester_solutions` (
  `id` int(11) NOT NULL auto_increment,
  `lid` int(11) default NULL,
  `contest_id` int(11) default NULL,
  `problem_id` int(11) default NULL,
  `user_id` int(11) default NULL,
  `timestamp` int(11) default NULL,
  `status` int(11) default NULL,
  `parameters` longtext,
  `errors` text,
  `points` int(11) default NULL,
  `ignored` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tester_solutions`
--

LOCK TABLES `tester_solutions` WRITE;
/*!40000 ALTER TABLE `tester_solutions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tester_solutions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tester_tags_dict`
--

DROP TABLE IF EXISTS `tester_tags_dict`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tester_tags_dict` (
  `id` int(11) NOT NULL auto_increment,
  `tag` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tester_tags_dict`
--

LOCK TABLES `tester_tags_dict` WRITE;
/*!40000 ALTER TABLE `tester_tags_dict` DISABLE KEYS */;
/*!40000 ALTER TABLE `tester_tags_dict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tester_tasks`
--

DROP TABLE IF EXISTS `tester_tasks`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tester_tasks` (
  `id` int(11) NOT NULL auto_increment,
  `contest_id` int(11) default NULL,
  `problem_id` int(11) default NULL,
  `letter` int(11) default NULL,
  `catid` int(11) default '0',
  `settings` longtext,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tester_tasks`
--

LOCK TABLES `tester_tasks` WRITE;
/*!40000 ALTER TABLE `tester_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tester_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `name` text,
  `login` text,
  `password` text,
  `access` int(11) default NULL,
  `email` text,
  `authorized` tinyint(1) default NULL,
  `timestamp` int(11) default '0',
  `last_act` int(11) default '0',
  `settings` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'root','root','0329fcb2bfb4b0b6de5256d22df07620',7,'postmaster@localhost',1,0,1271261539,'');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usergroup`
--

DROP TABLE IF EXISTS `usergroup`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `usergroup` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `group_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `usergroup`
--

LOCK TABLES `usergroup` WRITE;
/*!40000 ALTER TABLE `usergroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `usergroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xpfs_volume_xpfs`
--

DROP TABLE IF EXISTS `xpfs_volume_xpfs`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `xpfs_volume_xpfs` (
  `id` int(11) NOT NULL auto_increment,
  `pid` int(11) default NULL,
  `name` text,
  `data` longblob,
  `mtime` int(11) default '0',
  `access` int(11) default '0',
  `attr` int(11) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `xpfs_volume_xpfs`
--

LOCK TABLES `xpfs_volume_xpfs` WRITE;
/*!40000 ALTER TABLE `xpfs_volume_xpfs` DISABLE KEYS */;
INSERT INTO `xpfs_volume_xpfs` VALUES (1,0,'/',NULL,0,0,0);
/*!40000 ALTER TABLE `xpfs_volume_xpfs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xpfs_volumes`
--

DROP TABLE IF EXISTS `xpfs_volumes`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `xpfs_volumes` (
  `name` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `xpfs_volumes`
--

LOCK TABLES `xpfs_volumes` WRITE;
/*!40000 ALTER TABLE `xpfs_volumes` DISABLE KEYS */;
INSERT INTO `xpfs_volumes` VALUES ('xpfs');
/*!40000 ALTER TABLE `xpfs_volumes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-04-14 16:51:48
