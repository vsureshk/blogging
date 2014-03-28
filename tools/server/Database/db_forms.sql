-- MySQL dump 10.13  Distrib 5.5.34, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: __forms
-- ------------------------------------------------------
-- Server version	5.5.34-0ubuntu0.13.04.1

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
-- Table structure for table `formresults`
--

DROP TABLE IF EXISTS `formresults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formresults` (
  `intformresultid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dtecreated` datetime DEFAULT NULL,
  `intformid` int(10) unsigned NOT NULL DEFAULT '0',
  `intclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `intorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `txtdatacapture` mediumtext,
  `jsonformfields` mediumtext,
  `ip` int(10) unsigned NOT NULL DEFAULT '0',
  `declat` decimal(11,7) DEFAULT NULL,
  `declong` decimal(11,7) DEFAULT NULL,
  `city` varchar(150) DEFAULT NULL,
  `state` varchar(3) DEFAULT NULL,
  `country` char(3) DEFAULT NULL,
  `user_agent` text,
  `referer` text,
  `query_string` text,
  `intformcustomerid` int(10) unsigned NOT NULL DEFAULT '0',
  `intformloanid` int(10) unsigned NOT NULL DEFAULT '0',
  `blnrejected` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dterejected` datetime DEFAULT NULL,
  `blnapproved` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `dteapproved` datetime DEFAULT NULL,
  `intformreassignedclientid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intformresultid`),
  KEY `intclientid` (`intclientid`),
  KEY `intorgid` (`intorgid`),
  KEY `intformid` (`intformid`)
) ENGINE=InnoDB AUTO_INCREMENT=7537 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `forms`
--

DROP TABLE IF EXISTS `forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms` (
  `intformid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dtecreated` datetime DEFAULT NULL,
  `dtemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `strformname` varchar(100) DEFAULT NULL,
  `intformlibraryid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `strcontactsource` varchar(100) DEFAULT NULL,
  `intcontacttypeid` tinyint(3) unsigned NOT NULL,
  `intseccontacttypeid` int(10) unsigned NOT NULL,
  `strstaticgroupids` varchar(200) NOT NULL,
  `intcampaignid` int(10) unsigned NOT NULL,
  `jsonTabs` text,
  `jsonFields` mediumtext,
  `intformclientid` int(10) unsigned NOT NULL,
  `intformorgid` int(10) unsigned NOT NULL,
  `txtfinishmsg` mediumtext,
  `intformheight` smallint(6) DEFAULT NULL,
  `strformdesc` text,
  `stremailcc` text,
  `intemailreplyeventid` int(10) unsigned NOT NULL DEFAULT '0',
  `stremailreplyeventname` varchar(150) DEFAULT NULL,
  `blnemailautoresponderapply` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `jsonemailmappingvars` text,
  `jsonemailmappingfields` text,
  `blnemailmappingrequired` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `blnIsDeleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intformid`),
  KEY `inttestformclientid` (`intformclientid`),
  KEY `inttestformorgid` (`intformorgid`)
) ENGINE=InnoDB AUTO_INCREMENT=1207 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `forms_1003settings`
--

DROP TABLE IF EXISTS `forms_1003settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_1003settings` (
  `intform1003id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dtecreated` datetime DEFAULT NULL,
  `dtemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `intformlibraryid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `strcontactsource` varchar(100) DEFAULT NULL,
  `intcontacttypeid` tinyint(3) unsigned NOT NULL,
  `intseccontacttypeid` int(10) unsigned NOT NULL,
  `strstaticgroupids` varchar(200) NOT NULL,
  `intcampaignid` int(10) unsigned NOT NULL,
  `jsonFields` mediumtext,
  `intformclientid` int(10) unsigned NOT NULL,
  `intformorgid` int(10) unsigned NOT NULL,
  `stremailcc` text,
  `intemailreplyeventid` int(10) unsigned NOT NULL DEFAULT '0',
  `stremailreplyeventname` varchar(150) DEFAULT NULL,
  `blnemailautoresponderapply` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `jsonemailmappingvars` text,
  `jsonemailmappingfields` text,
  `blnemailmappingrequired` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intform1003id`),
  KEY `inttestformclientid` (`intformclientid`),
  KEY `inttestformorgid` (`intformorgid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `formsdomainmap`
--

DROP TABLE IF EXISTS `formsdomainmap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formsdomainmap` (
  `intformdomainmapping` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intclientid` int(10) unsigned NOT NULL,
  `intformid` int(10) unsigned NOT NULL,
  `strdomain` varchar(255) DEFAULT NULL,
  `txtembedkey` text,
  `dtecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`intformdomainmapping`),
  KEY `intclientid` (`intclientid`),
  KEY `intformid` (`intformid`)
) ENGINE=InnoDB AUTO_INCREMENT=2596 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `formstheme`
--

DROP TABLE IF EXISTS `formstheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formstheme` (
  `intformthemeid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intformthemeclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `intformthemeorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `strformthemename` varchar(20) DEFAULT NULL,
  `dtecreated` datetime DEFAULT NULL,
  `dtemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `txtformthemesettings` mediumtext,
  `blnformthemesystem` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intformthemeid`),
  KEY `intformthemeclientid` (`intformthemeclientid`),
  KEY `intformthemeorgid` (`intformthemeorgid`),
  KEY `blnformthemesystem` (`blnformthemesystem`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `testcaseresults`
--

DROP TABLE IF EXISTS `testcaseresults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testcaseresults` (
  `inttestcaseresultid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dtecreated` datetime DEFAULT NULL,
  `intformid` int(10) unsigned NOT NULL DEFAULT '0',
  `intclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `intorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `txtdatacapture` mediumtext,
  `ip` int(10) unsigned NOT NULL DEFAULT '0',
  `declat` decimal(11,7) DEFAULT NULL,
  `declong` decimal(11,7) DEFAULT NULL,
  `city` varchar(150) DEFAULT NULL,
  `state` varchar(3) DEFAULT NULL,
  `country` char(3) DEFAULT NULL,
  `user_agent` text,
  `referer` text,
  `query_string` text,
  PRIMARY KEY (`inttestcaseresultid`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `testforms`
--

DROP TABLE IF EXISTS `testforms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testforms` (
  `inttestformid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dtecreated` datetime DEFAULT NULL,
  `dtemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `strformname` varchar(100) DEFAULT NULL,
  `intformlibraryid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `strcontactsource` varchar(100) DEFAULT NULL,
  `intcontacttypeid` tinyint(3) unsigned NOT NULL,
  `intseccontacttypeid` int(10) unsigned NOT NULL,
  `strstaticgroupids` varchar(200) NOT NULL,
  `intcampaignid` int(10) unsigned NOT NULL,
  `jsonTabs` text,
  `jsonFields` mediumtext,
  `inttestformclientid` int(10) unsigned NOT NULL,
  `inttestformorgid` int(10) unsigned NOT NULL,
  `txtfinishmsg` mediumtext,
  `intformheight` smallint(6) DEFAULT NULL,
  `strformdesc` text,
  `stremailcc` text,
  `intemailreplyeventid` int(10) unsigned NOT NULL DEFAULT '0',
  `stremailreplyeventname` varchar(150) DEFAULT NULL,
  `blnemailautoresponderapply` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `jsonemailmappingvars` text,
  `jsonemailmappingfields` text,
  `blnemailmappingrequired` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`inttestformid`),
  KEY `inttestformclientid` (`inttestformclientid`),
  KEY `inttestformorgid` (`inttestformorgid`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-11-06 17:01:18
