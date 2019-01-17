-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.16.04.1

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
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(45) DEFAULT NULL COMMENT '用户名',
  `password` char(32) DEFAULT NULL COMMENT '密码',
  `is_system` tinyint(1) DEFAULT '0' COMMENT '是否为系统管理员：0、否；1、是',
  `role_ids` text COMMENT '角色',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态：-1、删除；0、锁定；1、正常',
  PRIMARY KEY (`id`),
  KEY `login_index` (`username`,`password`),
  KEY `order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','e10adc3949ba59abbe56e057f20f883e',1,'[]',1);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_log`
--

DROP TABLE IF EXISTS `admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_log` (
  `id` char(25) NOT NULL COMMENT '主键，由donkeyid生成',
  `action` varchar(100) DEFAULT NULL COMMENT '方法',
  `source_data` text,
  `new_data` text,
  `create_year` char(4) DEFAULT NULL COMMENT '年',
  `create_month` char(2) DEFAULT NULL COMMENT '月',
  `create_day` char(2) DEFAULT NULL COMMENT '日',
  `create_his` char(8) DEFAULT NULL COMMENT '操作时间',
  `action_id` int(11) DEFAULT NULL COMMENT '操作管理员ID',
  `ip` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_id` (`action_id`),
  KEY `common_list` (`action`),
  KEY `list_by_date` (`action`,`create_year`,`create_month`,`create_day`),
  KEY `admin_id_common` (`action`,`action_id`),
  KEY `list_by_admin_date` (`action`,`create_year`,`create_month`,`create_day`,`action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_log`
--

LOCK TABLES `admin_log` WRITE;
/*!40000 ALTER TABLE `admin_log` DISABLE KEYS */;
INSERT INTO `admin_log` VALUES ('2018092610263960600000001','admin/login/index',NULL,NULL,'2018','09','26','10:26:39',1,'127.0.0.1'),('2018092611073113700000000','admin/login/index',NULL,NULL,'2018','09','26','11:07:31',1,'127.0.0.1'),('2018092614144397600000000','admin/login/index',NULL,NULL,'2018','09','26','14:14:43',1,'127.0.0.1'),('2018092617271229500000000','admin/login/index',NULL,NULL,'2018','09','26','17:27:12',1,'127.0.0.1'),('2018092617285358500000001','admin/login/index',NULL,NULL,'2018','09','26','17:28:53',1,'127.0.0.1'),('2018092714121489800000001','admin/login/index',NULL,NULL,'2018','09','27','14:12:14',1,'127.0.0.1'),('2018092715023111700000001','admin/login/index',NULL,NULL,'2018','09','27','15:02:31',1,'127.0.0.1'),('2018092715070721100000000','admin/login/index',NULL,NULL,'2018','09','27','15:07:07',1,'127.0.0.1'),('2018092715081074000000000','admin/login/index',NULL,NULL,'2018','09','27','15:08:10',1,'127.0.0.1'),('2018092715363073700000000','admin/login/index',NULL,NULL,'2018','09','27','15:36:30',1,'127.0.0.1'),('2018092715372413600000000','admin/login/index',NULL,NULL,'2018','09','27','15:37:24',1,'127.0.0.1'),('2018092715380694500000000','admin/login/index',NULL,NULL,'2018','09','27','15:38:06',1,'127.0.0.1'),('2018092715383964600000001','admin/login/index',NULL,NULL,'2018','09','27','15:38:39',1,'127.0.0.1'),('2018092811103199400000001','admin/login/index',NULL,NULL,'2018','09','28','11:10:31',1,'127.0.0.1'),('2018092813593118500000000','admin/login/index',NULL,NULL,'2018','09','28','13:59:31',1,'127.0.0.1'),('2018092815051829700000000','admin/login/index',NULL,NULL,'2018','09','28','15:05:18',1,'127.0.0.1'),('2018092909013378400000000','admin/login/index',NULL,NULL,'2018','09','29','09:01:33',1,'127.0.0.1'),('2018092909023246300000000','admin/login/index',NULL,NULL,'2018','09','29','09:02:32',1,'127.0.0.1'),('2018092909041640600000001','admin/login/index',NULL,NULL,'2018','09','29','09:04:16',1,'127.0.0.1'),('2018092914250186400000000','admin/login/index',NULL,NULL,'2018','09','29','14:25:01',1,'127.0.0.1'),('2018092914260765600000001','admin/login/index',NULL,NULL,'2018','09','29','14:26:07',1,'127.0.0.1'),('2018092915340648000000000','admin/permission/permissionadd',NULL,'{\"module\":\"\\u89d2\\u8272\\u5217\\u8868\",\"controller\":\"admin\",\"action\":\"role\",\"title\":\"roleList\"}','2018','09','29','15:34:06',1,'127.0.0.1'),('2018092915542315300000001','admin/permission/permissionadd',NULL,'{\"module\":\"admin\",\"controller\":\"role\",\"action\":\"roleAdd\",\"title\":\"\\u6dfb\\u52a0\\/\\u7f16\\u8f91\\u89d2\\u8272\"}','2018','09','29','15:54:23',1,'127.0.0.1'),('2018092916034300400000001','admin/permission/permissionadd',NULL,'{\"module\":\"admin\",\"controller\":\"role\",\"action\":\"roleDel\",\"title\":\"\\u89d2\\u8272\\u5220\\u9664\"}','2018','09','29','16:03:43',1,'127.0.0.1'),('2018093009273032900000001','admin/login/index',NULL,NULL,'2018','09','30','09:27:30',1,'127.0.0.1'),('2018093009280084000000000','admin/permission/permissionadd',NULL,'{\"module\":\"admin\",\"controller\":\"admin\",\"action\":\"adminList\",\"title\":\"\\u7ba1\\u7406\\u5458\\u5217\\u8868\"}','2018','09','30','09:28:00',1,'127.0.0.1'),('2018093009282325600000000','admin/permission/permissionadd',NULL,'{\"module\":\"admin\",\"controller\":\"admin\",\"action\":\"adminAdd\",\"title\":\"\\u6dfb\\u52a0\\/\\u7f16\\u8f91\\u7ba1\\u7406\\u5458\"}','2018','09','30','09:28:23',1,'127.0.0.1'),('2018093009291028300000000','admin/permission/permissionadd',NULL,'{\"module\":\"admin\",\"controller\":\"admin\",\"action\":\"adminDel\",\"title\":\"\\u5220\\u9664\\u7ba1\\u7406\\u5458\"}','2018','09','30','09:29:10',1,'127.0.0.1'),('2018093010430232300000001','admin/permission/permissionadd',NULL,'{\"module\":\"admin1\",\"controller\":\"admin\",\"action\":\"adminDel\",\"title\":\"\\u5220\\u9664\\u7ba1\\u7406\\u5458\"}','2018','09','30','10:43:02',1,'127.0.0.1'),('2018093014091396500000001','admin/login/index',NULL,NULL,'2018','09','30','14:09:13',1,'127.0.0.1'),('2018093016011229900000001','admin/permission/permissionadd',NULL,'{\"module\":\"admin1\",\"controller\":\"admin\",\"action\":\"adminDel\",\"title\":\"\\u5220\\u9664\\u7ba1\\u7406\\u5458\"}','2018','09','30','16:01:12',1,'127.0.0.1'),('2018093017192991600000000','admin/permission/permissionadd',NULL,'{\"module\":\"admin1\",\"controller\":\"permission\",\"action\":\"permissionAdd\",\"title\":\"\\u6743\\u9650\\u6dfb\\u52a0\\/\\u7f16\\u8f91\"}','2018','09','30','17:19:29',1,'127.0.0.1'),('2018093017193512800000000','admin/permission/permissionadd',NULL,'{\"module\":\"admin\",\"controller\":\"permission\",\"action\":\"permissionAdd\",\"title\":\"\\u6743\\u9650\\u6dfb\\u52a0\\/\\u7f16\\u8f91\"}','2018','09','30','17:19:35',1,'127.0.0.1'),('2018093017194063800000000','admin/permission/permissionadd',NULL,'{\"module\":\"admin\",\"controller\":\"permission\",\"action\":\"permissionAdd\",\"title\":\"\\u6743\\u9650\\u6dfb\\u52a0\\/\\u7f16\\u8f91\"}','2018','09','30','17:19:40',1,'127.0.0.1'),('2018093017205201900000001','admin/permission/permissionadd',NULL,'{\"module\":\"admin\",\"controller\":\"permission\",\"action\":\"permissionAdd\",\"title\":\"\\u6743\\u9650\\u6dfb\\u52a0\\/\\u7f16\\u8f91\"}','2018','09','30','17:20:52',1,'127.0.0.1'),('2018093017251440300000000','admin/permission/permissionadd','{\"id\":12,\"module\":\"admin\",\"controller\":\"admin\",\"action\":\"adminDel\",\"title\":\"\\u5220\\u9664\\u7ba1\\u7406\\u5458\"}','{\"module\":\"admin1\",\"controller\":\"admin\",\"action\":\"adminDel\",\"title\":\"\\u5220\\u9664\\u7ba1\\u7406\\u5458\"}','2018','09','30','17:25:14',1,'127.0.0.1'),('2018093017252432100000000','admin/permission/permissionadd','{\"id\":12,\"module\":\"admin1\",\"controller\":\"admin\",\"action\":\"adminDel\",\"title\":\"\\u5220\\u9664\\u7ba1\\u7406\\u5458\"}','{\"module\":\"admin\",\"controller\":\"admin\",\"action\":\"adminDel\",\"title\":\"\\u5220\\u9664\\u7ba1\\u7406\\u5458\"}','2018','09','30','17:25:24',1,'127.0.0.1'),('2018100609263334300000000','admin/login/index',NULL,NULL,'2018','10','06','09:26:33',1,'127.0.0.1'),('2018100609282241300000001','admin/menu/menuadd',NULL,'{\"title\":\"\\u89d2\\u8272\\u5217\\u8868\",\"pid\":\"1\",\"sort\":\"0\",\"permission_id\":\"7\",\"icon\":\"md-people\",\"url\":\"role\\/roleList\"}','2018','10','06','09:28:22',1,'127.0.0.1'),('2018100609285689900000000','admin/login/index',NULL,NULL,'2018','10','06','09:28:56',1,'127.0.0.1'),('2018100610060871700000000','admin/menu/menuadd',NULL,'{\"title\":\"\\u83dc\\u5355\\u5217\\u8868\",\"pid\":\"1\",\"sort\":\"0\",\"permission_id\":\"7\",\"icon\":\"md-menu\",\"url\":\"role\\/roleList\"}','2018','10','06','10:06:08',1,'127.0.0.1'),('2018100610062389800000000','admin/login/index',NULL,NULL,'2018','10','06','10:06:23',1,'127.0.0.1'),('2018100610070677100000001','admin/login/index',NULL,NULL,'2018','10','06','10:07:06',1,'127.0.0.1'),('2018100610080066600000000','admin/login/index',NULL,NULL,'2018','10','06','10:08:00',1,'127.0.0.1'),('2018100610364610100000000','admin/login/index',NULL,NULL,'2018','10','06','10:36:46',1,'127.0.0.1'),('2018100610382769200000000','admin/login/index',NULL,NULL,'2018','10','06','10:38:27',1,'127.0.0.1'),('2018100611260481200000000','admin/login/index',NULL,NULL,'2018','10','06','11:26:04',1,'127.0.0.1'),('2018100611280674100000001','admin/login/index',NULL,NULL,'2018','10','06','11:28:06',1,'127.0.0.1'),('2018100611440684600000000','admin/permission/permissionadd','{\"id\":11,\"module\":\"admin\",\"controller\":\"admin\",\"action\":\"adminAdd\",\"title\":\"\\u6dfb\\u52a0\\/\\u7f16\\u8f91\\u7ba1\\u7406\\u5458\"}','{\"module\":\"admin\",\"controller\":\"admin\",\"action\":\"adminAdd\",\"title\":\"\\u7ba1\\u7406\\u5458\\u6dfb\\u52a0\\/\\u7f16\\u8f91\"}','2018','10','06','11:44:06',1,'127.0.0.1'),('2018100614164775200000001','admin/login/index',NULL,NULL,'2018','10','06','14:16:47',1,'127.0.0.1'),('2018100614260643600000001','admin/menu/menuadd',NULL,'{\"title\":\"\\u7ba1\\u7406\\u5458\\u7ba1\\u7406\",\"pid\":1,\"sort\":\"0\",\"permission_id\":10,\"icon\":\"md-person\",\"url\":\"admin\\/adminList\"}','2018','10','06','14:26:06',1,'127.0.0.1'),('2018100614262626600000001','admin/login/index',NULL,NULL,'2018','10','06','14:26:26',1,'127.0.0.1'),('2018100614351728100000000','admin/menu/menuadd','{\"id\":1,\"title\":\"\\u6743\\u9650\\u7ba1\\u7406\",\"pid\":0,\"sort\":0,\"permission_id\":0,\"url\":null,\"icon\":\"md-person\"}','{\"title\":\"\\u6743\\u9650\\u7ba1\\u7406\",\"pid\":0,\"sort\":0,\"permission_id\":0,\"icon\":\"md-list-box\",\"url\":\"#\"}','2018','10','06','14:35:17',1,'127.0.0.1'),('2018100614353191100000000','admin/login/index',NULL,NULL,'2018','10','06','14:35:31',1,'127.0.0.1'),('2018100616184780300000000','admin/login/index',NULL,NULL,'2018','10','06','16:18:47',1,'127.0.0.1'),('2018100618184564300000001','admin/admin/adminadd','{\"id\":1,\"username\":\"smashdog\",\"password\":\"5d05f3de1393c45aff01d9a485755215\",\"is_system\":1,\"role_ids\":null,\"status\":1}','{\"username\":\"smashdog\",\"password\":\"d41d8cd98f00b204e9800998ecf8427e\",\"is_system\":1,\"role_ids\":\"[]\",\"status\":1}','2018','10','06','18:18:45',1,'127.0.0.1'),('2018100618192684100000000','admin/admin/adminadd','{\"id\":1,\"username\":\"smashdog\",\"password\":\"d41d8cd98f00b204e9800998ecf8427e\",\"is_system\":1,\"role_ids\":\"[]\",\"status\":1}','{\"username\":\"smashdog\",\"password\":\"5d05f3de1393c45aff01d9a485755215\",\"is_system\":1,\"role_ids\":\"[]\",\"status\":1}','2018','10','06','18:19:26',1,'127.0.0.1'),('2018100618391858100000000','admin/login/index',NULL,NULL,'2018','10','06','18:39:18',1,'127.0.0.1'),('2018100618435312800000000','admin/admin/adminadd','{\"id\":1,\"username\":\"smashdog\",\"password\":\"5d05f3de1393c45aff01d9a485755215\",\"is_system\":1,\"role_ids\":\"[]\",\"status\":1}','{\"username\":\"smashdog1\",\"is_system\":1,\"role_ids\":\"[]\",\"status\":1}','2018','10','06','18:43:53',1,'127.0.0.1'),('2018100618435733000000001','admin/admin/adminadd','{\"id\":1,\"username\":\"smashdog1\",\"password\":\"5d05f3de1393c45aff01d9a485755215\",\"is_system\":1,\"role_ids\":\"[]\",\"status\":1}','{\"username\":\"smashdog\",\"is_system\":1,\"role_ids\":\"[]\",\"status\":1}','2018','10','06','18:43:57',1,'127.0.0.1'),('2018100709160753800000001','admin/login/index',NULL,NULL,'2018','10','07','09:16:07',1,'127.0.0.1'),('2018100709265508600000000','admin/permission/permissionadd',NULL,'{\"module\":\"admin\",\"controller\":\"itinerary\",\"action\":\"itineraryList\",\"title\":\"\\u884c\\u7a0b\\u8bb0\\u5217\\u8868\"}','2018','10','07','09:26:55',1,'127.0.0.1'),('2018100709271467400000001','admin/permission/permissionadd',NULL,'{\"module\":\"admin\",\"controller\":\"itinerary\",\"action\":\"itineraryAdd\",\"title\":\"\\u884c\\u7a0b\\u8bb0\\u6dfb\\u52a0\\/\\u7f16\\u8f91\"}','2018','10','07','09:27:14',1,'127.0.0.1'),('2018100709272886100000001','admin/permission/permissionadd',NULL,'{\"module\":\"admin\",\"controller\":\"itinerary\",\"action\":\"itineraryDel\",\"title\":\"\\u884c\\u7a0b\\u8bb0\\u5220\\u9664\"}','2018','10','07','09:27:28',1,'127.0.0.1'),('2018100709405857100000001','admin/menu/menuadd',NULL,'{\"title\":\"\\u884c\\u7a0b\\u7ba1\\u7406\",\"pid\":0,\"sort\":0,\"permission_id\":0,\"icon\":\"md-car\",\"url\":\"#\"}','2018','10','07','09:40:58',1,'127.0.0.1'),('2018100709432760100000000','admin/menu/menuadd','{\"id\":6,\"title\":\"\\u884c\\u7a0b\\u7ba1\\u7406\",\"pid\":0,\"sort\":0,\"permission_id\":0,\"url\":\"#\",\"icon\":\"md-car\"}','{\"title\":\"\\u884c\\u7a0b\\u8bb0\\u7ba1\\u7406\",\"pid\":0,\"sort\":0,\"permission_id\":0,\"icon\":\"md-car\",\"url\":\"#\"}','2018','10','07','09:43:27',1,'127.0.0.1'),('2018100709435032600000001','admin/menu/menuadd',NULL,'{\"title\":\"\\u884c\\u7a0b\\u8bb0\\u5217\\u8868\",\"pid\":6,\"sort\":0,\"permission_id\":13,\"icon\":\"md-car\",\"url\":\"itinerary\\/itineraryList\"}','2018','10','07','09:43:50',1,'127.0.0.1'),('2018100710533586600000001','admin/login/index',NULL,NULL,'2018','10','07','10:53:35',1,'127.0.0.1'),('2018100711550451100000001','admin/permission/permissionadd',NULL,'{\"module\":\"admin\",\"controller\":\"user\",\"action\":\"userList\",\"title\":\"\\u7528\\u6237\\u5217\\u8868\"}','2018','10','07','11:55:04',1,'127.0.0.1'),('2018100711551986500000001','admin/permission/permissionadd',NULL,'{\"module\":\"admin\",\"controller\":\"user\",\"action\":\"userAdd\",\"title\":\"\\u7528\\u6237\\u6dfb\\u52a0\\/\\u7f16\\u8f91\"}','2018','10','07','11:55:19',1,'127.0.0.1'),('2018100711553284100000000','admin/permission/permissionadd',NULL,'{\"module\":\"admin\",\"controller\":\"user\",\"action\":\"userDel\",\"title\":\"\\u7528\\u6237\\u5220\\u9664\"}','2018','10','07','11:55:32',1,'127.0.0.1'),('2018100711562113100000001','admin/menu/menuadd',NULL,'{\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"pid\":0,\"sort\":\"0\",\"permission_id\":16,\"icon\":\"md-person\",\"url\":\"user\\/userList\"}','2018','10','07','11:56:21',1,'127.0.0.1'),('2018100711565811100000001','admin/menu/menuadd',NULL,'{\"title\":\"\\u7528\\u6237\\u5217\\u8868\",\"pid\":8,\"sort\":\"0\",\"permission_id\":16,\"icon\":\"md-people\",\"url\":\"user\\/userList\"}','2018','10','07','11:56:58',1,'127.0.0.1'),('2018100711571064300000000','admin/login/index',NULL,NULL,'2018','10','07','11:57:10',1,'127.0.0.1'),('2018100711583159600000000','admin/user/useradd',NULL,'{\"mobile\":\"13148374859\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"salt\":\"123\",\"status\":1,\"nickname\":\"\\u5fc3\\u60c5\\u8fc7\\u5ba2\"}','2018','10','07','11:58:31',1,'127.0.0.1'),('2018100715293945700000000','admin/login/index',NULL,NULL,'2018','10','07','15:29:39',1,'127.0.0.1'),('2018100715383831600000001','admin/login/index',NULL,NULL,'2018','10','07','15:38:38',1,'127.0.0.1'),('2018100715385758400000000','admin/login/index',NULL,NULL,'2018','10','07','15:38:57',1,'127.0.0.1'),('2018100808401415600000000','admin/login/index',NULL,NULL,'2018','10','08','08:40:14',1,'127.0.0.1'),('2018100808402967600000000','admin/login/index',NULL,NULL,'2018','10','08','08:40:29',1,'127.0.0.1'),('2018100811225604000000001','admin/login/index',NULL,NULL,'2018','10','08','11:22:56',1,'127.0.0.1'),('2018101008534263500000001','admin/login/index',NULL,NULL,'2018','10','10','08:53:42',1,'127.0.0.1'),('2018101014522617400000001','admin/login/index',NULL,NULL,'2018','10','10','14:52:26',1,'127.0.0.1'),('2018101015173278100000001','admin/user/useradd','{\"id\":1,\"header_img\":null,\"mobile\":\"13148374859\",\"nickname\":\"\\u5fc3\\u60c5\\u8fc7\\u5ba2\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"salt\":\"123\",\"status\":1}','{\"header_img\":\"http:\\/\\/xingchengji-1252509853.cos.ap-chongqing.myqcloud.com\\/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20180704110653.png\",\"mobile\":\"13148374859\",\"nickname\":\"\\u5fc3\\u60c5\\u8fc7\\u5ba2\",\"salt\":\"123\",\"status\":1}','2018','10','10','15:17:32',1,'127.0.0.1'),('2018101109181888400000000','admin/login/index',NULL,NULL,'2018','10','11','09:18:18',1,'127.0.0.1'),('2018101109212806000000000','admin/login/index',NULL,NULL,'2018','10','11','09:21:28',1,'127.0.0.1'),('2018101109251378500000001','admin/login/index',NULL,NULL,'2018','10','11','09:25:13',1,'127.0.0.1'),('2018101110111792500000001','admin/itinerary/itineraryadd',NULL,'{\"user_id\":1,\"start_date\":\"2018-10-01\",\"end_date\":\"2018-10-05\",\"cover_img\":\"http:\\/\\/xingchengji-1252509853.cos.ap-chongqing.myqcloud.com\\/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20180704110653.png\",\"title\":\"\\u56fd\\u5e86\\u81ea\\u9a7e\\u884c\",\"desc\":\"<p>\\u6d4b\\u8bd5 <\\/p>\",\"status\":1,\"create_time\":1539223877}','2018','10','11','10:11:17',1,'127.0.0.1'),('2018101114493616100000000','admin/login/index',NULL,NULL,'2018','10','11','14:49:36',1,'127.0.0.1'),('2018101114495049300000001','admin/admin/adminadd','{\"id\":1,\"username\":\"admin\",\"password\":\"5d05f3de1393c45aff01d9a485755215\",\"is_system\":1,\"role_ids\":\"[]\",\"status\":1}','{\"username\":\"admin\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"is_system\":1,\"role_ids\":\"[]\",\"status\":1}','2018','10','11','14:49:50',1,'127.0.0.1'),('2018101114502065900000001','admin/login/index',NULL,NULL,'2018','10','11','14:50:20',1,'127.0.0.1');
/*!40000 ALTER TABLE `admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itinerary`
--

DROP TABLE IF EXISTS `itinerary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itinerary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `start_date` char(10) DEFAULT NULL COMMENT '开始日期：YYYY-mm-dd',
  `end_date` char(10) DEFAULT NULL COMMENT '结束日期：YYYY-mm-dd',
  `cover_img` varchar(255) DEFAULT NULL COMMENT '行程封面',
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `desc` text COMMENT '详情',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态：-1、删除；1、正常；2、审核中',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `list` (`user_id`,`status`),
  KEY `list1` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='行程';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itinerary`
--

LOCK TABLES `itinerary` WRITE;
/*!40000 ALTER TABLE `itinerary` DISABLE KEYS */;
INSERT INTO `itinerary` VALUES (1,1,'2018-10-01','2018-10-05','http://xingchengji-1252509853.cos.ap-chongqing.myqcloud.com/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20180704110653.png','国庆自驾行','<p>测试 </p>',1,1539223877,NULL);
/*!40000 ALTER TABLE `itinerary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itinerary_node`
--

DROP TABLE IF EXISTS `itinerary_node`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itinerary_node` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `itinerary_id` bigint(20) DEFAULT NULL COMMENT '行程id',
  `node_date` char(10) DEFAULT NULL COMMENT '行程节点日期',
  `desc` text COMMENT '行程节点详情',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态：-1、删除；1、正常',
  PRIMARY KEY (`id`),
  KEY `itinerary_id` (`itinerary_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='行程节点';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itinerary_node`
--

LOCK TABLES `itinerary_node` WRITE;
/*!40000 ALTER TABLE `itinerary_node` DISABLE KEYS */;
/*!40000 ALTER TABLE `itinerary_node` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(45) DEFAULT NULL COMMENT '菜单标题',
  `pid` int(11) DEFAULT '0' COMMENT '父菜单',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `permission_id` int(11) DEFAULT '0' COMMENT '权限',
  `url` varchar(255) DEFAULT NULL COMMENT '链接',
  `icon` varchar(45) DEFAULT NULL COMMENT '图标',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `sort` (`sort`,`id`) USING BTREE,
  KEY `permission_id` (`permission_id`),
  KEY `list` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='管理菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'权限管理',0,0,0,'#','md-list-box'),(2,'权限列表',1,0,1,'permission/permissionList','md-lock'),(3,'角色列表',1,0,7,'role/roleList','md-people'),(4,'菜单列表',1,0,4,'menu/menuList','md-menu'),(5,'管理员管理',1,0,10,'admin/adminList','md-person'),(6,'行程记管理',0,0,0,'#','md-car'),(7,'行程记列表',6,0,13,'itinerary/itineraryList','md-car'),(8,'用户管理',0,0,16,'user/userList','md-person'),(9,'用户列表',8,0,16,'user/userList','md-people');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `module` varchar(45) DEFAULT NULL COMMENT '模型',
  `controller` varchar(45) DEFAULT NULL COMMENT '控制器',
  `action` varchar(45) DEFAULT NULL COMMENT '方法',
  `title` varchar(45) DEFAULT NULL COMMENT '权限名称',
  PRIMARY KEY (`id`),
  KEY `module_controller_action` (`module`,`controller`,`action`),
  KEY `list` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='权限';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` VALUES (1,'admin','permission','permissionList','权限列表'),(2,'admin','permission','permissionAdd','权限添加/编辑'),(3,'admin','permission','permissionDel','权限删除'),(4,'admin','menu','menuList','菜单列表'),(5,'admin','menu','menuAdd','菜单添加/编辑'),(6,'admin','menu','menuDel','菜单删除'),(7,'admin','role','roleList','角色列表'),(8,'admin','role','roleAdd','添加/编辑角色'),(9,'admin','role','roleDel','角色删除'),(10,'admin','admin','adminList','管理员列表'),(11,'admin','admin','adminAdd','管理员添加/编辑'),(12,'admin','admin','adminDel','删除管理员'),(13,'admin','itinerary','itineraryList','行程记列表'),(14,'admin','itinerary','itineraryAdd','行程记添加/编辑'),(15,'admin','itinerary','itineraryDel','行程记删除'),(16,'admin','user','userList','用户列表'),(17,'admin','user','userAdd','用户添加/编辑'),(18,'admin','user','userDel','用户删除');
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(45) DEFAULT NULL COMMENT '角色名称',
  `permission_ids` text COMMENT '权限数据，JSON格式',
  PRIMARY KEY (`id`),
  UNIQUE KEY `title_UNIQUE` (`title`),
  KEY `id_title` (`id`,`title`),
  KEY `list` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='角色';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'权限管理','[\"1\",\"2\",\"3\"]');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `header_img` varchar(255) DEFAULT NULL COMMENT '头像',
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机号',
  `nickname` varchar(45) DEFAULT NULL COMMENT '昵称',
  `password` varchar(32) DEFAULT NULL COMMENT '密码',
  `salt` varchar(32) DEFAULT NULL COMMENT '盐度',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态：-1、删除；0、锁定；1、正常',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mobile_UNIQUE` (`mobile`),
  UNIQUE KEY `nickname_UNIQUE` (`nickname`),
  KEY `list` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'http://xingchengji-1252509853.cos.ap-chongqing.myqcloud.com/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20180704110653.png','13148374859','心情过客','e10adc3949ba59abbe56e057f20f883e','123',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_log`
--

DROP TABLE IF EXISTS `user_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_log` (
  `id` char(25) NOT NULL COMMENT '主键，由donkeyid生成',
  `action` varchar(100) DEFAULT NULL COMMENT '方法',
  `source_data` text,
  `new_data` text,
  `create_year` char(4) DEFAULT NULL COMMENT '年',
  `create_month` char(2) DEFAULT NULL COMMENT '月',
  `create_day` char(2) DEFAULT NULL COMMENT '日',
  `create_his` char(8) DEFAULT NULL,
  `action_id` int(11) DEFAULT NULL COMMENT '操作用户ID',
  `ip` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`action_id`),
  KEY `common_list` (`action`),
  KEY `list_by_date` (`create_year`,`create_month`,`create_day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_log`
--

LOCK TABLES `user_log` WRITE;
/*!40000 ALTER TABLE `user_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-11 14:58:21
