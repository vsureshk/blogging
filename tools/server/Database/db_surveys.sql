-- MySQL dump 10.13  Distrib 5.5.34, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: __surveys
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
-- Table structure for table `_surveySubscriptions`
--

DROP TABLE IF EXISTS `_surveySubscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_surveySubscriptions` (
  `intsurveysubscriptionid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intsurveysub_orgid` int(10) unsigned NOT NULL DEFAULT '0',
  `intsurveysub_clientid` int(10) unsigned NOT NULL DEFAULT '0',
  `intsurveyid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intsurveysubscriptionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_surveys`
--

DROP TABLE IF EXISTS `_surveys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_surveys` (
  `intsurveyid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `txtsurveyjson` longtext,
  `intclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `intorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `dtecreated` datetime DEFAULT NULL,
  `dtemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `intquestioncount` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intsurveyid`),
  KEY `intclientid` (`intclientid`),
  KEY `intorgid` (`intorgid`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_tempsurvey`
--

DROP TABLE IF EXISTS `_tempsurvey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_tempsurvey` (
  `inttempsurveyid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `txtsurveyjson` mediumtext,
  `intclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `intorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `dtecreated` datetime DEFAULT NULL,
  `dtemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `intquestioncount` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `blnsurveysaved` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `blnsurveyapproved` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `intprevioussurveyid` int(10) unsigned NOT NULL DEFAULT '0',
  `blnIsDeleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`inttempsurveyid`),
  KEY `intclientid` (`intclientid`),
  KEY `intorgid` (`intorgid`)
) ENGINE=InnoDB AUTO_INCREMENT=646 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `choices`
--

DROP TABLE IF EXISTS `choices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `choices` (
  `choiceid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intquestionid` int(10) unsigned NOT NULL,
  `strchoicetitle` varchar(255) DEFAULT NULL,
  `intdisplayorder` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`choiceid`),
  KEY `intquestionid` (`intquestionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `questionid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intquestiontypeid` tinyint(3) unsigned NOT NULL,
  `strquestiontitle` varchar(255) NOT NULL DEFAULT '',
  `intdisplayorder` tinyint(3) unsigned NOT NULL,
  `intsurveyid` int(10) unsigned NOT NULL,
  `dtecreated` datetime DEFAULT NULL,
  `dtemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`questionid`),
  KEY `intsurveyid` (`intsurveyid`),
  KEY `intquestiontypeid` (`intquestiontypeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `questiontypes`
--

DROP TABLE IF EXISTS `questiontypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questiontypes` (
  `questiontypeid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `strtypename` varchar(50) DEFAULT NULL,
  `strdesc` varchar(255) DEFAULT NULL,
  `bln_enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`questiontypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `supportticketsurveys`
--

DROP TABLE IF EXISTS `supportticketsurveys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supportticketsurveys` (
  `intrelationid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intticketid` int(10) unsigned NOT NULL DEFAULT '0',
  `intsurveyresultid` int(10) unsigned NOT NULL DEFAULT '0',
  `intclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `intorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `blndiscarded` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dtediscarded` datetime DEFAULT NULL,
  `dtesent` datetime DEFAULT NULL,
  `intinternaluserid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intrelationid`),
  KEY `intticketid` (`intticketid`),
  KEY `intsurveyresultid` (`intsurveyresultid`),
  KEY `intclientid` (`intclientid`),
  KEY `intorgid` (`intorgid`),
  KEY `blndiscarded` (`blndiscarded`),
  KEY `intinternaluserid` (`intinternaluserid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `surveyViews`
--

DROP TABLE IF EXISTS `surveyViews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveyViews` (
  `intsurveyviewid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dtecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `intsurveyid` int(10) unsigned NOT NULL,
  `intcustomerid` int(10) unsigned NOT NULL,
  `viewdata` mediumtext,
  `isco` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `intemailinstancejobdetailid` int(10) unsigned NOT NULL DEFAULT '0',
  `strhash` char(32) DEFAULT NULL,
  PRIMARY KEY (`intsurveyviewid`)
) ENGINE=InnoDB AUTO_INCREMENT=27507 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `surveyresults`
--

DROP TABLE IF EXISTS `surveyresults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveyresults` (
  `intresultid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intsurveyid` int(10) unsigned NOT NULL,
  `intcustomerid` int(10) unsigned NOT NULL,
  `dtecreated` datetime DEFAULT NULL,
  `resultsjson` mediumtext,
  `isco` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `emailinstancejobdetailid` int(10) unsigned NOT NULL DEFAULT '0',
  `surveycode` text,
  `intclientid` int(10) unsigned DEFAULT NULL,
  `strhash` char(32) DEFAULT NULL,
  PRIMARY KEY (`intresultid`),
  KEY `intcustomerid` (`intcustomerid`),
  KEY `emailinstancejobdetailid` (`emailinstancejobdetailid`),
  KEY `intclientid` (`intclientid`),
  KEY `intsurveyid` (`intsurveyid`)
) ENGINE=InnoDB AUTO_INCREMENT=20313 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-11-06 17:01:59
