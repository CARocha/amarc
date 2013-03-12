-- MySQL dump 10.13  Distrib 5.5.15, for osx10.7 (i386)
--
-- Host: localhost    Database: amarc
-- ------------------------------------------------------
-- Server version	5.5.15

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
-- Table structure for table `agendas_agendas`
--

DROP TABLE IF EXISTS `agendas_agendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agendas_agendas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `evento` varchar(200) NOT NULL,
  `descripcion` longtext NOT NULL,
  `inicio` date NOT NULL,
  `final` date NOT NULL,
  `publico` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `agendas_agendas_fbfc09f1` (`user_id`),
  CONSTRAINT `user_id_refs_id_4e61d21ad3bf8faa` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agendas_agendas`
--

LOCK TABLES `agendas_agendas` WRITE;
/*!40000 ALTER TABLE `agendas_agendas` DISABLE KEYS */;
INSERT INTO `agendas_agendas` VALUES (1,'Cras justo odio, dapibus ac facilisis in, egestas eget quam.','<p>\r\n	Etiam porta sem malesuada magna mollis euismod. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Cras mattis consectetur purus sit amet fermentum.</p>\r\n','2013-03-10','2013-03-10',1,1),(2,'Cras mattis consectetur purus sit amet fermentum.','<p>\r\n	Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Donec sed odio dui. Curabitur blandit tempus porttitor. Aenean lacinia bibendum nulla sed consectetur. Donec ullamcorper nulla non metus auctor fringilla.</p>\r\n','2013-03-04','2013-03-04',1,1),(3,'Donec ullamcorper nulla non metus auctor fringilla.','<p>\r\n	Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Donec sed odio dui. Curabitur blandit tempus porttitor. Aenean lacinia bibendum nulla sed consectetur. Donec ullamcorper nulla non metus auctor fringilla.</p>\r\n','2013-03-01','2013-03-01',1,1);
/*!40000 ALTER TABLE `agendas_agendas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `permission_id_refs_id_a7792de1` (`permission_id`),
  CONSTRAINT `group_id_refs_id_3cea63fe` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `permission_id_refs_id_a7792de1` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  CONSTRAINT `content_type_id_refs_id_728de91f` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add site',6,'add_site'),(17,'Can change site',6,'change_site'),(18,'Can delete site',6,'delete_site'),(19,'Can add flat page',7,'add_flatpage'),(20,'Can change flat page',7,'change_flatpage'),(21,'Can delete flat page',7,'delete_flatpage'),(22,'Can add log entry',8,'add_logentry'),(23,'Can change log entry',8,'change_logentry'),(24,'Can delete log entry',8,'delete_logentry'),(25,'Can add migration history',9,'add_migrationhistory'),(26,'Can change migration history',9,'change_migrationhistory'),(27,'Can delete migration history',9,'delete_migrationhistory'),(28,'Can add tag',10,'add_tag'),(29,'Can change tag',10,'change_tag'),(30,'Can delete tag',10,'delete_tag'),(31,'Can add tagged item',11,'add_taggeditem'),(32,'Can change tagged item',11,'change_taggeditem'),(33,'Can delete tagged item',11,'delete_taggeditem'),(34,'Can add agendas',12,'add_agendas'),(35,'Can change agendas',12,'change_agendas'),(36,'Can delete agendas',12,'delete_agendas'),(37,'Can add pais',13,'add_pais'),(38,'Can change pais',13,'change_pais'),(39,'Can delete pais',13,'delete_pais'),(40,'Can add contraparte',14,'add_contraparte'),(41,'Can change contraparte',14,'change_contraparte'),(42,'Can delete contraparte',14,'delete_contraparte'),(43,'Can add user profile',15,'add_userprofile'),(44,'Can change user profile',15,'change_userprofile'),(45,'Can delete user profile',15,'delete_userprofile'),(46,'Can add mensajero',16,'add_mensajero'),(47,'Can change mensajero',16,'change_mensajero'),(48,'Can delete mensajero',16,'delete_mensajero'),(49,'Can add imagen',17,'add_imagen'),(50,'Can change imagen',17,'change_imagen'),(51,'Can delete imagen',17,'delete_imagen'),(52,'Can add documentos',18,'add_documentos'),(53,'Can change documentos',18,'change_documentos'),(54,'Can delete documentos',18,'delete_documentos'),(55,'Can add videos',19,'add_videos'),(56,'Can change videos',19,'change_videos'),(57,'Can delete videos',19,'delete_videos'),(58,'Can add audios',20,'add_audios'),(59,'Can change audios',20,'change_audios'),(60,'Can delete audios',20,'delete_audios'),(61,'Can add foros',21,'add_foros'),(62,'Can change foros',21,'change_foros'),(63,'Can delete foros',21,'delete_foros'),(64,'Can add aportes',22,'add_aportes'),(65,'Can change aportes',22,'change_aportes'),(66,'Can delete aportes',22,'delete_aportes'),(67,'Can add comentarios',23,'add_comentarios'),(68,'Can change comentarios',23,'change_comentarios'),(69,'Can delete comentarios',23,'delete_comentarios'),(70,'Can add notas',24,'add_notas'),(71,'Can change notas',24,'change_notas'),(72,'Can delete notas',24,'delete_notas'),(73,'Can add comentario notas',25,'add_comentarionotas'),(74,'Can change comentario notas',25,'change_comentarionotas'),(75,'Can delete comentario notas',25,'delete_comentarionotas');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'django','','','byroncorrales@gmail.com','pbkdf2_sha256$10000$ASb5Nr7W2Ui4$umAKgyGpWE7xE50wZm9gvUjFCHahrV27Lk9CjwxwN4c=',1,1,1,'2013-03-12 20:03:28','2013-02-22 22:42:23');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `group_id_refs_id_f0ee9890` (`group_id`),
  CONSTRAINT `group_id_refs_id_f0ee9890` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_id_refs_id_831107f1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `permission_id_refs_id_67e79cb` (`permission_id`),
  CONSTRAINT `permission_id_refs_id_67e79cb` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_id_refs_id_f2045483` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contrapartes_contraparte`
--

DROP TABLE IF EXISTS `contrapartes_contraparte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contrapartes_contraparte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `siglas` varchar(200) DEFAULT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `pais_id` int(11) NOT NULL,
  `fundacion` varchar(200) DEFAULT NULL,
  `temas` longtext,
  `generalidades` longtext,
  `contacto` varchar(200) DEFAULT NULL,
  `telefono` varchar(200) DEFAULT NULL,
  `sitio_web` varchar(200) DEFAULT NULL,
  `rss` varchar(200) DEFAULT NULL,
  `font_color` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `font_color` (`font_color`),
  UNIQUE KEY `contrapartes_contraparte_font_color_28c538805c4d90ca_uniq` (`font_color`,`nombre`),
  KEY `contrapartes_contraparte_29e88ed` (`pais_id`),
  CONSTRAINT `pais_id_refs_id_6459b9571c273ab6` FOREIGN KEY (`pais_id`) REFERENCES `contrapartes_pais` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contrapartes_contraparte`
--

LOCK TABLES `contrapartes_contraparte` WRITE;
/*!40000 ALTER TABLE `contrapartes_contraparte` DISABLE KEYS */;
INSERT INTO `contrapartes_contraparte` VALUES (1,'Radio Camoapa','Radio Camoapa','contrapartes/logos/Logo_Radio_Camoapa.JPG',1,'1999','<p>\r\n	Sed posuere consectetur est at lobortis. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\r\n','<p>\r\n	Sed posuere consectetur est at lobortis. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\r\n','Byron Corrales','222222','http://www.simas.org.ni/','',''),(2,'Radio DKYFM','Radio DKYFM','contrapartes/logos/Logo_DKY.png',1,'1990','<p>\r\n	Donec sed odio dui.</p>\r\n','<p>\r\n	Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas sed diam eget risus varius blandit sit amet non magna. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras justo odio, dapibus ac facilisis in, egestas eget quam.</p>\r\n','',NULL,'','','#333'),(3,'Radio Ecológica','Radio Ecológica','contrapartes/logos/Logo_Ecologica.jpg',1,'2001','<p>\r\n	Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas sed diam eget risus varius blandit sit amet non magna. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras justo odio, dapibus ac facilisis in, egestas eget quam.</p>\r\n','<p>\r\n	Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas sed diam eget risus varius blandit sit amet non magna. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras justo odio, dapibus ac facilisis in, egestas eget quam.</p>\r\n','',NULL,'','','#eee'),(4,'Radio Huracan Siuna','Radio Huracan Siuna','',1,'1998','<p>\r\n	Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Etiam porta sem malesuada magna mollis euismod. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Cras mattis consectetur purus sit amet fermentum. Donec id elit non mi porta gravida at eget metus. Donec ullamcorper nulla non metus auctor fringilla.</p>\r\n','<p>\r\n	Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Etiam porta sem malesuada magna mollis euismod. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Cras mattis consectetur purus sit amet fermentum. Donec id elit non mi porta gravida at eget metus. Donec ullamcorper nulla non metus auctor fringilla.</p>\r\n','',NULL,'','','#add'),(5,'Radio Humedales','Radio Humedales','contrapartes/logos/.jpg',1,'1234','<p>\r\n	Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Maecenas faucibus mollis interdum. Donec sed odio dui. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\r\n','<p>\r\n	Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Maecenas faucibus mollis interdum. Donec sed odio dui. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\r\n','',NULL,'','','#444'),(6,'Radio Juvenil','Radio Juvenil','contrapartes/logos/Logo_1_RVJ_2.gif',1,'2004','<p>\r\n	Maecenas faucibus mollis interdum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Cras mattis consectetur purus sit amet fermentum. Etiam porta sem malesuada magna mollis euismod. Maecenas sed diam eget risus varius blandit sit amet non magna. Vestibulum id ligula porta felis euismod semper.</p>\r\n','<p>\r\n	Maecenas faucibus mollis interdum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Cras mattis consectetur purus sit amet fermentum. Etiam porta sem malesuada magna mollis euismod. Maecenas sed diam eget risus varius blandit sit amet non magna. Vestibulum id ligula porta felis euismod semper.</p>\r\n','',NULL,'','','#555'),(7,'Radio La Nandaimeña','Radio La Nandaimeña','contrapartes/logos/Logo_Radio_La_Nandaimen_a.jpg',1,'2005','<p>\r\n	Etiam porta sem malesuada magna mollis euismod. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue. Donec id elit non mi porta gravida at eget metus.</p>\r\n','<p>\r\n	Etiam porta sem malesuada magna mollis euismod. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue. Donec id elit non mi porta gravida at eget metus.</p>\r\n','',NULL,'','','#000'),(8,'Radio Palabra de Mujer','Radio Palabra de Mujer','',1,'2002','<p>\r\n	Nullam id dolor id nibh ultricies vehicula ut id elit. Cras mattis consectetur purus sit amet fermentum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Aenean lacinia bibendum nulla sed consectetur. Donec sed odio dui. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>\r\n','<p>\r\n	Nullam id dolor id nibh ultricies vehicula ut id elit. Cras mattis consectetur purus sit amet fermentum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Aenean lacinia bibendum nulla sed consectetur. Donec sed odio dui. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>\r\n','',NULL,'','','e54867'),(9,'Radio Segovia','Radio Segovia','contrapartes/logos/Logo_Radio_Segovia.png',1,'1989','<p>\r\n	Cras justo odio, dapibus ac facilisis in, egestas eget quam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur blandit tempus porttitor. Donec id elit non mi porta gravida at eget metus. Cras mattis consectetur purus sit amet fermentum. Donec sed odio dui. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>\r\n','<p>\r\n	Cras justo odio, dapibus ac facilisis in, egestas eget quam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur blandit tempus porttitor. Donec id elit non mi porta gravida at eget metus. Cras mattis consectetur purus sit amet fermentum. Donec sed odio dui. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>\r\n','',NULL,'','','fff'),(10,'Radio Universidad','Radio Universidad','',1,'2000','<p>\r\n	Maecenas sed diam eget risus varius blandit sit amet non magna. Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis.</p>\r\n','<p>\r\n	Maecenas sed diam eget risus varius blandit sit amet non magna. Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis.</p>\r\n','',NULL,'','','aaa'),(11,'Radio Vos ','Radio Vos ','contrapartes/logos/logoradiovos_1.png',1,'1998','<p>\r\n	Nullam quis risus eget urna mollis ornare vel eu leo. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Nullam id dolor id nibh ultricies vehicula ut id elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Curabitur blandit tempus porttitor. Curabitur blandit tempus porttitor.</p>\r\n','<p>\r\n	Nullam quis risus eget urna mollis ornare vel eu leo. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Nullam id dolor id nibh ultricies vehicula ut id elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Curabitur blandit tempus porttitor. Curabitur blandit tempus porttitor.</p>\r\n','',NULL,'','','003'),(12,'Radio Zinica','Radio Zinica','',1,'1998','<p>\r\n	Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Aenean lacinia bibendum nulla sed consectetur. Curabitur blandit tempus porttitor. Cras mattis consectetur purus sit amet fermentum. Cras mattis consectetur purus sit amet fermentum. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</p>\r\n','<p>\r\n	Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Aenean lacinia bibendum nulla sed consectetur. Curabitur blandit tempus porttitor. Cras mattis consectetur purus sit amet fermentum. Cras mattis consectetur purus sit amet fermentum. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</p>\r\n','',NULL,'','','00a');
/*!40000 ALTER TABLE `contrapartes_contraparte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contrapartes_mensajero`
--

DROP TABLE IF EXISTS `contrapartes_mensajero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contrapartes_mensajero` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `mensaje` longtext NOT NULL,
  `usuario` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contrapartes_mensajero`
--

LOCK TABLES `contrapartes_mensajero` WRITE;
/*!40000 ALTER TABLE `contrapartes_mensajero` DISABLE KEYS */;
/*!40000 ALTER TABLE `contrapartes_mensajero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contrapartes_mensajero_user`
--

DROP TABLE IF EXISTS `contrapartes_mensajero_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contrapartes_mensajero_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mensajero_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `contrapartes_mensajero_user_mensajero_id_56cbac68d5c87dc4_uniq` (`mensajero_id`,`user_id`),
  KEY `contrapartes_mensajero_user_7235d709` (`mensajero_id`),
  KEY `contrapartes_mensajero_user_fbfc09f1` (`user_id`),
  CONSTRAINT `mensajero_id_refs_id_480bf73fd28c2d00` FOREIGN KEY (`mensajero_id`) REFERENCES `contrapartes_mensajero` (`id`),
  CONSTRAINT `user_id_refs_id_6645375fe7a25458` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contrapartes_mensajero_user`
--

LOCK TABLES `contrapartes_mensajero_user` WRITE;
/*!40000 ALTER TABLE `contrapartes_mensajero_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `contrapartes_mensajero_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contrapartes_pais`
--

DROP TABLE IF EXISTS `contrapartes_pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contrapartes_pais` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `latitud` double DEFAULT NULL,
  `longitud` double DEFAULT NULL,
  `codigo` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contrapartes_pais`
--

LOCK TABLES `contrapartes_pais` WRITE;
/*!40000 ALTER TABLE `contrapartes_pais` DISABLE KEYS */;
INSERT INTO `contrapartes_pais` VALUES (1,'Nicaragua',NULL,NULL,'ni');
/*!40000 ALTER TABLE `contrapartes_pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contrapartes_userprofile`
--

DROP TABLE IF EXISTS `contrapartes_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contrapartes_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `contraparte_id` int(11) NOT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `contrapartes_userprofile_2840256` (`contraparte_id`),
  CONSTRAINT `contraparte_id_refs_id_76e25eb8109c445e` FOREIGN KEY (`contraparte_id`) REFERENCES `contrapartes_contraparte` (`id`),
  CONSTRAINT `user_id_refs_id_7bb05a2556f4ffb1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contrapartes_userprofile`
--

LOCK TABLES `contrapartes_userprofile` WRITE;
/*!40000 ALTER TABLE `contrapartes_userprofile` DISABLE KEYS */;
INSERT INTO `contrapartes_userprofile` VALUES (1,1,1,'');
/*!40000 ALTER TABLE `contrapartes_userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `content_type_id_refs_id_288599e6` (`content_type_id`),
  KEY `user_id_refs_id_c8665aa` (`user_id`),
  CONSTRAINT `content_type_id_refs_id_288599e6` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_c8665aa` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2013-03-11 04:28:20',1,13,'1','Nicaragua',1,''),(2,'2013-03-11 04:29:20',1,14,'1','Radio Camoapa',1,''),(3,'2013-03-11 04:29:39',1,15,'1','django - Radio Camoapa',1,''),(4,'2013-03-12 04:43:07',1,14,'2','Radio DKYFM',1,''),(5,'2013-03-12 04:43:39',1,14,'3','Radio Ecológica',1,''),(6,'2013-03-12 04:44:46',1,14,'4','Radio Huracan Siuna',1,''),(7,'2013-03-12 04:45:23',1,14,'5','Radio Humedales',1,''),(8,'2013-03-12 04:45:55',1,14,'6','Radio Juvenil',1,''),(9,'2013-03-12 04:46:21',1,14,'7','Radio La Nandaimeña',1,''),(10,'2013-03-12 04:47:36',1,14,'8','Radio Palabra de Muje',1,''),(11,'2013-03-12 04:48:02',1,14,'9','Radio Segovia',1,''),(12,'2013-03-12 04:48:10',1,14,'8','Radio Palabra de Mujer',2,'Modificado/a nombre y siglas.'),(13,'2013-03-12 04:48:51',1,14,'10','Radio Universidad',1,''),(14,'2013-03-12 04:53:54',1,14,'11','Radio Vos ',1,''),(15,'2013-03-12 04:54:16',1,14,'12','Radio Zinica',1,''),(16,'2013-03-12 08:05:06',1,14,'9','Radio Segovia',2,'Modificado/a logo.'),(17,'2013-03-12 08:06:54',1,14,'7','Radio La Nandaimeña',2,'Modificado/a logo.'),(18,'2013-03-12 08:07:21',1,14,'11','Radio Vos ',2,'Modificado/a logo.'),(19,'2013-03-12 08:07:38',1,14,'2','Radio DKYFM',2,'Modificado/a logo.'),(20,'2013-03-12 08:07:54',1,14,'11','Radio Vos ',2,'Modificado/a logo.'),(21,'2013-03-12 08:08:24',1,14,'2','Radio DKYFM',2,'Modificado/a logo.'),(22,'2013-03-12 08:08:53',1,14,'5','Radio Humedales',2,'Modificado/a logo.'),(23,'2013-03-12 08:09:01',1,14,'3','Radio Ecológica',2,'Modificado/a logo.'),(24,'2013-03-12 08:09:22',1,14,'1','Radio Camoapa',2,'Modificado/a logo.'),(25,'2013-03-12 20:04:05',1,14,'11','Radio Vos ',2,'Modificado/a logo.'),(26,'2013-03-12 20:04:13',1,14,'6','Radio Juvenil',2,'Modificado/a logo.');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'content type','contenttypes','contenttype'),(5,'session','sessions','session'),(6,'site','sites','site'),(7,'flat page','flatpages','flatpage'),(8,'log entry','admin','logentry'),(9,'migration history','south','migrationhistory'),(10,'tag','tagging','tag'),(11,'tagged item','tagging','taggeditem'),(12,'agendas','agendas','agendas'),(13,'pais','contrapartes','pais'),(14,'contraparte','contrapartes','contraparte'),(15,'user profile','contrapartes','userprofile'),(16,'mensajero','contrapartes','mensajero'),(17,'imagen','foros','imagen'),(18,'documentos','foros','documentos'),(19,'videos','foros','videos'),(20,'audios','foros','audios'),(21,'foros','foros','foros'),(22,'aportes','foros','aportes'),(23,'comentarios','foros','comentarios'),(24,'notas','notas','notas'),(25,'comentario notas','notas','comentarionotas');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_flatpage`
--

DROP TABLE IF EXISTS `django_flatpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_flatpage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `enable_comments` tinyint(1) NOT NULL,
  `template_name` varchar(70) NOT NULL,
  `registration_required` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_flatpage`
--

LOCK TABLES `django_flatpage` WRITE;
/*!40000 ALTER TABLE `django_flatpage` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_flatpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_flatpage_sites`
--

DROP TABLE IF EXISTS `django_flatpage_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_flatpage_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flatpage_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `flatpage_id` (`flatpage_id`,`site_id`),
  KEY `site_id_refs_id_4e3eeb57` (`site_id`),
  CONSTRAINT `flatpage_id_refs_id_c0e84f5a` FOREIGN KEY (`flatpage_id`) REFERENCES `django_flatpage` (`id`),
  CONSTRAINT `site_id_refs_id_4e3eeb57` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_flatpage_sites`
--

LOCK TABLES `django_flatpage_sites` WRITE;
/*!40000 ALTER TABLE `django_flatpage_sites` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_flatpage_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('6a61177cc998ad14a3d129ddf091653c','OTNhZTkzODczMzllODZkNzA2MDBhMTQwOGM3NzRlMWRlMTZhMGNiYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2013-03-26 20:03:28'),('af9c3706ba5c965c7afbf4a387d27d27','OTNhZTkzODczMzllODZkNzA2MDBhMTQwOGM3NzRlMWRlMTZhMGNiYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2013-03-26 08:04:29');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','amarc');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foros_aportes`
--

DROP TABLE IF EXISTS `foros_aportes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `foros_aportes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foro_id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `contenido` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `foros_aportes_dd94bc10` (`foro_id`),
  KEY `foros_aportes_fbfc09f1` (`user_id`),
  CONSTRAINT `foro_id_refs_id_b37cab3b798626e` FOREIGN KEY (`foro_id`) REFERENCES `foros_foros` (`id`),
  CONSTRAINT `user_id_refs_id_56e9540e20258ddd` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foros_aportes`
--

LOCK TABLES `foros_aportes` WRITE;
/*!40000 ALTER TABLE `foros_aportes` DISABLE KEYS */;
/*!40000 ALTER TABLE `foros_aportes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foros_audios`
--

DROP TABLE IF EXISTS `foros_audios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `foros_audios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `nombre_audio` varchar(200) DEFAULT NULL,
  `audio` varchar(100) DEFAULT NULL,
  `tags_aud` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `foros_audios_e4470c6e` (`content_type_id`),
  KEY `foros_audios_829e37fd` (`object_id`),
  CONSTRAINT `content_type_id_refs_id_59fb39415e379701` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foros_audios`
--

LOCK TABLES `foros_audios` WRITE;
/*!40000 ALTER TABLE `foros_audios` DISABLE KEYS */;
/*!40000 ALTER TABLE `foros_audios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foros_comentarios`
--

DROP TABLE IF EXISTS `foros_comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `foros_comentarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `comentario` longtext NOT NULL,
  `aporte_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `foros_comentarios_c9c24747` (`usuario_id`),
  KEY `foros_comentarios_b45d5929` (`aporte_id`),
  CONSTRAINT `aporte_id_refs_id_7f2799acd8714ecb` FOREIGN KEY (`aporte_id`) REFERENCES `foros_aportes` (`id`),
  CONSTRAINT `usuario_id_refs_id_2b503bd91d7041fd` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foros_comentarios`
--

LOCK TABLES `foros_comentarios` WRITE;
/*!40000 ALTER TABLE `foros_comentarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `foros_comentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foros_documentos`
--

DROP TABLE IF EXISTS `foros_documentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `foros_documentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `nombre_doc` varchar(200) DEFAULT NULL,
  `adjunto` varchar(100) DEFAULT NULL,
  `tags_doc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `foros_documentos_e4470c6e` (`content_type_id`),
  KEY `foros_documentos_829e37fd` (`object_id`),
  CONSTRAINT `content_type_id_refs_id_55eac9841fffecef` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foros_documentos`
--

LOCK TABLES `foros_documentos` WRITE;
/*!40000 ALTER TABLE `foros_documentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `foros_documentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foros_foros`
--

DROP TABLE IF EXISTS `foros_foros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `foros_foros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `creacion` date NOT NULL,
  `apertura` date NOT NULL,
  `cierre` date NOT NULL,
  `fecha_skype` date NOT NULL,
  `memoria` date NOT NULL,
  `contenido` longtext NOT NULL,
  `contraparte_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `foros_foros_2840256` (`contraparte_id`),
  CONSTRAINT `contraparte_id_refs_id_21d5809ca1484c26` FOREIGN KEY (`contraparte_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foros_foros`
--

LOCK TABLES `foros_foros` WRITE;
/*!40000 ALTER TABLE `foros_foros` DISABLE KEYS */;
/*!40000 ALTER TABLE `foros_foros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foros_imagen`
--

DROP TABLE IF EXISTS `foros_imagen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `foros_imagen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `nombre_img` varchar(200) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `tags_img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `foros_imagen_e4470c6e` (`content_type_id`),
  KEY `foros_imagen_829e37fd` (`object_id`),
  CONSTRAINT `content_type_id_refs_id_1695746782616e1b` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foros_imagen`
--

LOCK TABLES `foros_imagen` WRITE;
/*!40000 ALTER TABLE `foros_imagen` DISABLE KEYS */;
INSERT INTO `foros_imagen` VALUES (1,24,1,'test','fotos/radio_comunitarias_2.jpg',''),(2,24,2,'test','fotos/016n1cul_1.jpg','');
/*!40000 ALTER TABLE `foros_imagen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foros_videos`
--

DROP TABLE IF EXISTS `foros_videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `foros_videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `nombre_video` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `tags_vid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `foros_videos_e4470c6e` (`content_type_id`),
  KEY `foros_videos_829e37fd` (`object_id`),
  CONSTRAINT `content_type_id_refs_id_3edd656af4b82bf2` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foros_videos`
--

LOCK TABLES `foros_videos` WRITE;
/*!40000 ALTER TABLE `foros_videos` DISABLE KEYS */;
/*!40000 ALTER TABLE `foros_videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas_comentarionotas`
--

DROP TABLE IF EXISTS `notas_comentarionotas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notas_comentarionotas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nota_id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `comentario` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `notas_comentarionotas_62210bc0` (`nota_id`),
  KEY `notas_comentarionotas_fbfc09f1` (`user_id`),
  CONSTRAINT `nota_id_refs_id_26cc2ffd901478a0` FOREIGN KEY (`nota_id`) REFERENCES `notas_notas` (`id`),
  CONSTRAINT `user_id_refs_id_4cf55af87075b5e5` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas_comentarionotas`
--

LOCK TABLES `notas_comentarionotas` WRITE;
/*!40000 ALTER TABLE `notas_comentarionotas` DISABLE KEYS */;
/*!40000 ALTER TABLE `notas_comentarionotas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas_notas`
--

DROP TABLE IF EXISTS `notas_notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notas_notas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `fecha` date NOT NULL,
  `contenido` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `notas_notas_a951d5d6` (`slug`),
  KEY `notas_notas_fbfc09f1` (`user_id`),
  CONSTRAINT `user_id_refs_id_1624c1565085a7f6` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas_notas`
--

LOCK TABLES `notas_notas` WRITE;
/*!40000 ALTER TABLE `notas_notas` DISABLE KEYS */;
INSERT INTO `notas_notas` VALUES (1,'Vestibulum id ligula porta felis euismod semper.','vestibulum-id-ligula-porta-felis-euismod-semper','2013-03-10','<p>\r\n	Etiam porta sem malesuada magna mollis euismod. Aenean lacinia bibendum nulla sed consectetur. Maecenas sed diam eget risus varius blandit sit amet non magna. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\r\n',1),(2,'Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh','fusce-dapibus-tellus-ac-cursus-commodo-tortor-mauris-condimentum-nibh-ut-fermentum-massa-justo-sit-amet-risus','2013-03-12','<p>\r\n	Cras mattis consectetur purus sit amet fermentum. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nullam id dolor id nibh ultricies vehicula ut id elit. Etiam porta sem malesuada magna mollis euismod. Donec id elit non mi porta gravida at eget metus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.<br />\r\n	<br />\r\n	Nulla vitae elit libero, a pharetra augue. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Nullam quis risus eget urna mollis ornare vel eu leo.</p>\r\n',1);
/*!40000 ALTER TABLE `notas_notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `south_migrationhistory`
--

DROP TABLE IF EXISTS `south_migrationhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `south_migrationhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(255) NOT NULL,
  `migration` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `south_migrationhistory`
--

LOCK TABLES `south_migrationhistory` WRITE;
/*!40000 ALTER TABLE `south_migrationhistory` DISABLE KEYS */;
INSERT INTO `south_migrationhistory` VALUES (1,'agendas','0001_initial','2013-02-22 22:41:34'),(2,'contrapartes','0001_initial','2013-02-22 22:41:37'),(3,'foros','0001_initial','2013-02-22 22:41:41'),(4,'notas','0001_initial','2013-02-22 22:41:43');
/*!40000 ALTER TABLE `south_migrationhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tagging_tag`
--

DROP TABLE IF EXISTS `tagging_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tagging_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tagging_tag`
--

LOCK TABLES `tagging_tag` WRITE;
/*!40000 ALTER TABLE `tagging_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tagging_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tagging_taggeditem`
--

DROP TABLE IF EXISTS `tagging_taggeditem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tagging_taggeditem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag_id` (`tag_id`,`content_type_id`,`object_id`),
  KEY `content_type_id_refs_id_f1f84eed` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_f1f84eed` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `tag_id_refs_id_9f51000d` FOREIGN KEY (`tag_id`) REFERENCES `tagging_tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tagging_taggeditem`
--

LOCK TABLES `tagging_taggeditem` WRITE;
/*!40000 ALTER TABLE `tagging_taggeditem` DISABLE KEYS */;
/*!40000 ALTER TABLE `tagging_taggeditem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-03-12 16:35:19
