-- MySQL dump 10.13  Distrib 5.5.34, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: __tomn
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
-- Table structure for table `___envoyfix`
--

DROP TABLE IF EXISTS `___envoyfix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `___envoyfix` (
  `intfuckupfixid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stremailsent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`intfuckupfixid`)
) ENGINE=InnoDB AUTO_INCREMENT=5782 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_client_failedlogins`
--

DROP TABLE IF EXISTS `_client_failedlogins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_client_failedlogins` (
  `intfailedloginid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `failedip` int(10) unsigned DEFAULT '0',
  `strusername` varchar(50) NOT NULL DEFAULT '',
  `strpassword` varchar(50) NOT NULL DEFAULT '',
  `sessionuuid` char(36) NOT NULL,
  `dtecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `reason` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `declat` decimal(11,7) NOT NULL DEFAULT '0.0000000',
  `declong` decimal(11,7) NOT NULL DEFAULT '0.0000000',
  `city` varchar(100) NOT NULL DEFAULT '',
  `state` varchar(3) NOT NULL DEFAULT '',
  `country` char(3) NOT NULL DEFAULT '000',
  `host` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`intfailedloginid`)
) ENGINE=InnoDB AUTO_INCREMENT=46949 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_client_implicitsync_sessions`
--

DROP TABLE IF EXISTS `_client_implicitsync_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_client_implicitsync_sessions` (
  `intSessionID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `intClientID` int(11) unsigned NOT NULL DEFAULT '0',
  `strSessionVar` varchar(50) NOT NULL DEFAULT '0',
  `dteTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `intCalendarCount` int(11) unsigned NOT NULL DEFAULT '1' COMMENT 'Counter incremented as Outlook requests items',
  `intContactCount` int(11) unsigned NOT NULL DEFAULT '1' COMMENT 'Counter incremented as Outlook requests items',
  `isActive` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Active session yes|no',
  `txtSurefireContactData` mediumtext COMMENT 'Serialized dump of Surefire contact data',
  `txtSurefireTaskData` mediumtext COMMENT 'Serialized dump of Surefire calendar item data',
  `txtOutlookData` mediumtext,
  `intCalendarRecordcount` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Total Surefire calendar items to sync',
  `intContactRecordcount` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Total Surefire contacts to sync',
  `txtCGIDump` text COMMENT 'Serialized dump of CGI variables',
  `intOutlookContacts` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Total Outlook contacts to sync',
  `intOutlookCalendar` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Total Outlook calendar items to sync',
  `intSurefireNew` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Total adds to Surefire',
  `intOutlookNew` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Total adds to Outlook',
  PRIMARY KEY (`intSessionID`),
  KEY `intClientID` (`intClientID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_client_loandoc_views`
--

DROP TABLE IF EXISTS `_client_loandoc_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_client_loandoc_views` (
  `intviewid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `intclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `dateviewed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `intarchiveid` int(10) unsigned NOT NULL DEFAULT '0',
  `sslcipher` varchar(100) NOT NULL DEFAULT '',
  `country` char(3) NOT NULL DEFAULT '000',
  `state` varchar(3) NOT NULL DEFAULT '',
  `city` varchar(100) NOT NULL DEFAULT '',
  `declong` decimal(11,7) NOT NULL DEFAULT '0.0000000',
  `declat` decimal(11,7) NOT NULL DEFAULT '0.0000000',
  `referer` varchar(700) NOT NULL DEFAULT '',
  `user_agent` varchar(700) NOT NULL DEFAULT '',
  `ip` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intviewid`)
) ENGINE=InnoDB AUTO_INCREMENT=981 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_client_passwordresets`
--

DROP TABLE IF EXISTS `_client_passwordresets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_client_passwordresets` (
  `intLogID` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(25) DEFAULT NULL,
  `strUsername` varchar(100) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `query_string` mediumtext,
  `user_agent` varchar(250) DEFAULT NULL,
  `http_referer` mediumtext,
  `host` varchar(250) DEFAULT NULL,
  `sessionid` varchar(250) DEFAULT NULL,
  `declat` decimal(11,7) DEFAULT NULL,
  `declong` decimal(11,7) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `requestType` varchar(20) DEFAULT NULL,
  `internaluser` tinyint(1) DEFAULT NULL,
  `isCompleted` tinyint(1) NOT NULL DEFAULT '0',
  `dteTimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intLogID`)
) ENGINE=InnoDB AUTO_INCREMENT=5189 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_client_sessions`
--

DROP TABLE IF EXISTS `_client_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_client_sessions` (
  `sessiontrackerid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intclientid` int(10) unsigned NOT NULL,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_agent` varchar(700) NOT NULL DEFAULT '',
  `ip` int(10) unsigned NOT NULL DEFAULT '0',
  `intorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `sessionid` varchar(50) NOT NULL DEFAULT '',
  `screenw` smallint(5) unsigned NOT NULL DEFAULT '0',
  `screenh` smallint(5) unsigned NOT NULL DEFAULT '0',
  `declat` decimal(11,7) NOT NULL DEFAULT '0.0000000',
  `declong` decimal(11,7) NOT NULL DEFAULT '0.0000000',
  `strlocation` varchar(200) NOT NULL DEFAULT '',
  `host` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`sessiontrackerid`),
  KEY `intclientid` (`intclientid`)
) ENGINE=InnoDB AUTO_INCREMENT=49707 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_fpf_crmstats`
--

DROP TABLE IF EXISTS `_fpf_crmstats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_fpf_crmstats` (
  `intfpfcrmstatid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intcustomerid` int(10) unsigned NOT NULL,
  `intloanid` int(10) unsigned NOT NULL,
  `dtecreated` datetime DEFAULT NULL,
  `inttrackid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`intfpfcrmstatid`)
) ENGINE=InnoDB AUTO_INCREMENT=13423 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_loanappvirtualemails`
--

DROP TABLE IF EXISTS `_loanappvirtualemails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_loanappvirtualemails` (
  `intloanappvirtualemailid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `intorgid` int(10) unsigned NOT NULL,
  `strvirtualemailalias` varchar(150) DEFAULT NULL,
  `intbranchid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intloanappvirtualemailid`),
  KEY `intclientid` (`intclientid`),
  KEY `intorgid` (`intorgid`),
  KEY `strvirtualemailalias` (`strvirtualemailalias`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_mapOrgTrackSubscriptions`
--

DROP TABLE IF EXISTS `_mapOrgTrackSubscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_mapOrgTrackSubscriptions` (
  `orgid` int(11) DEFAULT NULL,
  `track1` int(11) DEFAULT NULL,
  `track2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_mapping_implicitsync`
--

DROP TABLE IF EXISTS `_mapping_implicitsync`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_mapping_implicitsync` (
  `intContactMappingID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `strImplicitSyncField` varchar(255) DEFAULT NULL,
  `strSurefireSyncField` varchar(255) DEFAULT NULL,
  `strSurefireDBTable` varchar(100) DEFAULT NULL,
  `strDataType` varchar(20) DEFAULT NULL,
  `intDataLength` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intContactMappingID`)
) ENGINE=InnoDB AUTO_INCREMENT=693 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_sys_calendar_months`
--

DROP TABLE IF EXISTS `_sys_calendar_months`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_sys_calendar_months` (
  `month` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`month`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_sys_dbactiontype`
--

DROP TABLE IF EXISTS `_sys_dbactiontype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_sys_dbactiontype` (
  `intactiontype` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `stractiontype` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`intactiontype`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_sys_fieldmappings_editor`
--

DROP TABLE IF EXISTS `_sys_fieldmappings_editor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_sys_fieldmappings_editor` (
  `intfieldmappingid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intfieldmapid` int(10) unsigned NOT NULL,
  `strfield_display` varchar(50) DEFAULT NULL,
  `strfield_mergevar` varchar(50) DEFAULT NULL,
  `strdbcolumnprint` varchar(50) DEFAULT NULL,
  `strdbcolumnprintpartner` varchar(50) DEFAULT NULL,
  `strdbcolumnprintagent` varchar(50) DEFAULT NULL,
  `strdbcolumnemail` varchar(50) DEFAULT NULL,
  `strdbcolumn` varchar(50) DEFAULT NULL,
  `strdbcolumn2` varchar(50) DEFAULT NULL,
  `strdbcolumn3` varchar(50) DEFAULT NULL,
  `strformatting` varchar(255) DEFAULT NULL,
  `intorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `intclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `strdescription` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`intfieldmappingid`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_sys_fieldmappings_presuffix`
--

DROP TABLE IF EXISTS `_sys_fieldmappings_presuffix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_sys_fieldmappings_presuffix` (
  `intpresuffixid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intpresuffixorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `intpresuffixclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `strprefix` varchar(255) DEFAULT NULL,
  `strsuffix` varchar(255) DEFAULT NULL,
  `strfieldkey` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`intpresuffixid`),
  KEY `intpresuffixorgid` (`intpresuffixorgid`),
  KEY `intpresuffixclientid` (`intpresuffixclientid`),
  KEY `strfieldkey` (`strfieldkey`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_sys_fieldmaps_editor`
--

DROP TABLE IF EXISTS `_sys_fieldmaps_editor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_sys_fieldmaps_editor` (
  `intfieldmapid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `strfieldmapname` varchar(30) DEFAULT NULL,
  `intorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `intclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `dtemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`intfieldmapid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_sys_formmapping_default`
--

DROP TABLE IF EXISTS `_sys_formmapping_default`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_sys_formmapping_default` (
  `intsystemformmappingid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intmaptype` tinyint(3) unsigned NOT NULL,
  `jsonMapping` mediumtext,
  `jsonQVT` mediumtext,
  PRIMARY KEY (`intsystemformmappingid`),
  KEY `intmaptype` (`intmaptype`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_sys_formmapping_defaultfields`
--

DROP TABLE IF EXISTS `_sys_formmapping_defaultfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_sys_formmapping_defaultfields` (
  `intformmappingfieldid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `strfieldname` varchar(100) NOT NULL,
  `strmapname` varchar(100) NOT NULL,
  `strfieldtype` char(3) NOT NULL,
  `intmaptype` tinyint(3) unsigned NOT NULL,
  `intinputtype` tinyint(3) unsigned NOT NULL,
  `dtecreated` datetime DEFAULT NULL,
  `intqvtid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intformmappingfieldid`),
  KEY `intmaptype` (`intmaptype`),
  KEY `intinputtype` (`intinputtype`),
  KEY `strfieldname` (`strfieldname`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_sys_formmapping_qvt`
--

DROP TABLE IF EXISTS `_sys_formmapping_qvt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_sys_formmapping_qvt` (
  `intqvtid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `strqvtname` varchar(50) DEFAULT NULL,
  `strqvttable` varchar(50) DEFAULT NULL,
  `strvaluecol` varchar(50) DEFAULT NULL,
  `strdisplaycol` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`intqvtid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_sys_imagespecs`
--

DROP TABLE IF EXISTS `_sys_imagespecs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_sys_imagespecs` (
  `imagespecid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(25) NOT NULL DEFAULT '',
  `dblevel` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `inch_maxw` decimal(3,2) NOT NULL DEFAULT '0.00',
  `inch_maxh` decimal(3,2) NOT NULL DEFAULT '0.00',
  `dpi` smallint(5) unsigned NOT NULL DEFAULT '0',
  `flag_client` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`imagespecid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_sys_license2prefix`
--

DROP TABLE IF EXISTS `_sys_license2prefix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_sys_license2prefix` (
  `statelicense2prefixid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `strstate` char(2) NOT NULL,
  `strLicense2Prefix` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`statelicense2prefixid`),
  KEY `strstate` (`strstate`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_sys_orgpermissions_fields`
--

DROP TABLE IF EXISTS `_sys_orgpermissions_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_sys_orgpermissions_fields` (
  `intfieldid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `intfieldtabid` tinyint(3) unsigned NOT NULL,
  `strfield_display` varchar(50) DEFAULT NULL,
  `strfield_mergevar` varchar(50) DEFAULT NULL,
  `blnwithapproval` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `strdbcolumn` varchar(50) DEFAULT NULL,
  `strdescription` varchar(255) DEFAULT NULL,
  `strorgfunctionboolean` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`intfieldid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_sys_orgpermissions_tabs`
--

DROP TABLE IF EXISTS `_sys_orgpermissions_tabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_sys_orgpermissions_tabs` (
  `inttabid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `strtabname` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`inttabid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_sys_postcardlayouts`
--

DROP TABLE IF EXISTS `_sys_postcardlayouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_sys_postcardlayouts` (
  `intpostcardlayoutid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `strpostcardlayoutdescription` varchar(255) NOT NULL,
  `strpostcardname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`intpostcardlayoutid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_sys_templatespecs`
--

DROP TABLE IF EXISTS `_sys_templatespecs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_sys_templatespecs` (
  `templatespecid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `templatetype` tinyint(3) unsigned DEFAULT NULL,
  `templatespecs` text,
  PRIMARY KEY (`templatespecid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_sys_topperpadding`
--

DROP TABLE IF EXISTS `_sys_topperpadding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_sys_topperpadding` (
  `decTopperTopMargin` decimal(5,3) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_sys_usstates`
--

DROP TABLE IF EXISTS `_sys_usstates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_sys_usstates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `statename` varchar(40) NOT NULL,
  `abbrev` char(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_tempImages`
--

DROP TABLE IF EXISTS `_tempImages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_tempImages` (
  `tempimageid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intclientid` int(10) unsigned NOT NULL,
  `imagefile` char(36) NOT NULL DEFAULT '',
  `dtecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`tempimageid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `api_map`
--

DROP TABLE IF EXISTS `api_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_map` (
  `intapimapid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `strapimapname` varchar(50) NOT NULL DEFAULT '',
  `dtecreated` datetime DEFAULT NULL,
  `intorgid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intapimapid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `api_mapfields`
--

DROP TABLE IF EXISTS `api_mapfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_mapfields` (
  `intapimapfieldsid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intapimapid` int(10) unsigned NOT NULL,
  `strfieldname` varchar(50) NOT NULL DEFAULT '',
  `strdbcolumn` varchar(50) NOT NULL DEFAULT '',
  `strdbcolumn2` varchar(50) NOT NULL DEFAULT '',
  `validation_rules` varchar(255) NOT NULL DEFAULT '',
  `intmaxlength` smallint(5) unsigned NOT NULL DEFAULT '0',
  `intfieldtype` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `flag_required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intapimapfieldsid`)
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `clientfixapiusername`
--

DROP TABLE IF EXISTS `clientfixapiusername`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientfixapiusername` (
  `intclientid` int(11) DEFAULT NULL,
  `apiusername` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `cobalt_agentdupingviewStep1`
--

DROP TABLE IF EXISTS `cobalt_agentdupingviewStep1`;
/*!50001 DROP VIEW IF EXISTS `cobalt_agentdupingviewStep1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `cobalt_agentdupingviewStep1` (
  `intcustomerid` tinyint NOT NULL,
  `strcustomerenteredby` tinyint NOT NULL,
  `strCustomerContactType` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `envoyimport`
--

DROP TABLE IF EXISTS `envoyimport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `envoyimport` (
  `introwid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intrownum` int(10) unsigned NOT NULL,
  `lolname` varchar(100) DEFAULT NULL,
  `lofname` varchar(100) DEFAULT NULL,
  `bfname` varchar(100) DEFAULT NULL,
  `blname` varchar(100) DEFAULT NULL,
  `cbfname` varchar(100) DEFAULT NULL,
  `cblname` varchar(100) DEFAULT NULL,
  `mailingaddress` varchar(255) DEFAULT NULL,
  `mailingcity` varchar(255) DEFAULT NULL,
  `mailingstate` char(2) DEFAULT NULL,
  `mailingzip` varchar(5) DEFAULT NULL,
  `bemail` varchar(100) DEFAULT NULL,
  `bdob` datetime DEFAULT NULL,
  `loanclosedate` datetime DEFAULT NULL,
  `loanaddress` varchar(255) DEFAULT NULL,
  `loancity` varchar(255) DEFAULT NULL,
  `loanstate` char(2) DEFAULT NULL,
  `loanzip` varchar(5) DEFAULT NULL,
  `bphone` varchar(14) DEFAULT NULL,
  `bworkphone` varchar(14) DEFAULT NULL,
  `lamount` decimal(12,2) DEFAULT NULL,
  `lpropertyvalue` decimal(12,2) DEFAULT NULL,
  `lterm` smallint(6) DEFAULT NULL,
  `lpurpose` tinyint(4) DEFAULT NULL,
  `lccscore` smallint(6) DEFAULT NULL,
  `lrate` decimal(7,4) DEFAULT NULL,
  `lprogram` varchar(50) DEFAULT NULL,
  `lloannum` tinyint(4) DEFAULT NULL,
  `lloantype` tinyint(4) DEFAULT NULL,
  `lpropertytype` varchar(50) DEFAULT NULL,
  `loccupancy` tinyint(4) DEFAULT NULL,
  `clientid` int(10) unsigned NOT NULL DEFAULT '0',
  `lloanproduct` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `flag_imported` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`introwid`)
) ENGINE=InnoDB AUTO_INCREMENT=42308 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `envoyimportnoloans`
--

DROP TABLE IF EXISTS `envoyimportnoloans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `envoyimportnoloans` (
  `introwid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intrownum` int(10) unsigned NOT NULL,
  `lolastname` varchar(100) DEFAULT NULL,
  `lofirstname` varchar(100) DEFAULT NULL,
  `loemail` varchar(150) DEFAULT NULL,
  `contactlastname` varchar(150) DEFAULT NULL,
  `contactfirstname` varchar(150) DEFAULT NULL,
  `contacttype` varchar(50) DEFAULT NULL,
  `homestreetaddress1` varchar(100) DEFAULT NULL,
  `homestreetaddress2` varchar(100) DEFAULT NULL,
  `homecity` varchar(100) DEFAULT NULL,
  `homestate` varchar(2) DEFAULT NULL,
  `homezipcode` varchar(10) DEFAULT NULL,
  `homephone` varchar(25) DEFAULT NULL,
  `workcompanyname` varchar(50) DEFAULT NULL,
  `worktitle` varchar(100) DEFAULT NULL,
  `workstreetaddress1` varchar(100) DEFAULT NULL,
  `workstreetaddress2` varchar(100) DEFAULT NULL,
  `workcity` varchar(100) DEFAULT NULL,
  `workstate` varchar(2) DEFAULT NULL,
  `workzipcode` varchar(10) DEFAULT NULL,
  `workphone` varchar(25) DEFAULT NULL,
  `cellphone` varchar(25) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `flag_imported` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `clientid` int(10) unsigned NOT NULL,
  `customerid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`introwid`)
) ENGINE=InnoDB AUTO_INCREMENT=87031 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` varchar(255) NOT NULL,
  `data` longtext,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_sessions_on_session_id` (`session_id`),
  KEY `index_sessions_on_updated_at` (`updated_at`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `system_customfields`
--

DROP TABLE IF EXISTS `system_customfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_customfields` (
  `intsyscustomfieldint` int(11) NOT NULL AUTO_INCREMENT,
  `strCustomFieldTypeName` varchar(50) NOT NULL DEFAULT '',
  `strCustomFieldType` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`intsyscustomfieldint`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `system_gtablethemes`
--

DROP TABLE IF EXISTS `system_gtablethemes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_gtablethemes` (
  `intGtableTheme` int(11) NOT NULL AUTO_INCREMENT,
  `strGtableThemeName` varchar(50) NOT NULL DEFAULT '',
  `ntxtGtableThemeSettings` text NOT NULL,
  `flag_GtableDefault` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `dteCreated` datetime DEFAULT NULL,
  PRIMARY KEY (`intGtableTheme`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblGender`
--

DROP TABLE IF EXISTS `tblGender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblGender` (
  `intGenderID` tinyint(4) DEFAULT NULL,
  `strGender` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblactivestatus`
--

DROP TABLE IF EXISTS `tblactivestatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblactivestatus` (
  `intActiveStatusID` int(11) NOT NULL AUTO_INCREMENT,
  `strActiveStatusName` varchar(50) DEFAULT NULL,
  `strActiveStatusColor` varchar(10) DEFAULT NULL,
  `strActiveStatusDescription` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`intActiveStatusID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblactivitytype`
--

DROP TABLE IF EXISTS `tblactivitytype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblactivitytype` (
  `intActivityTypeID` int(10) DEFAULT NULL,
  `strActivityTypeName` varchar(50) DEFAULT NULL,
  `intEventID` int(10) DEFAULT NULL,
  `dteDateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbladvancedsearch`
--

DROP TABLE IF EXISTS `tbladvancedsearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbladvancedsearch` (
  `intAdvancedSearchFieldID` int(11) NOT NULL AUTO_INCREMENT,
  `strAdvancedSearchFieldName` varchar(50) NOT NULL,
  `strAdvancedSearchFieldType` varchar(50) NOT NULL,
  `strAdvancedSearchFieldValues` varchar(255) NOT NULL,
  `strAdvancedSearchDBFieldName` varchar(50) DEFAULT NULL,
  `strQueryName` varchar(50) DEFAULT NULL,
  `strDisplayValue` varchar(100) DEFAULT NULL,
  `strJoin` varchar(255) DEFAULT NULL,
  `strTableName` varchar(100) DEFAULT NULL,
  KEY `intAdvancedSearchFieldID` (`intAdvancedSearchFieldID`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblagent-old`
--

DROP TABLE IF EXISTS `tblagent-old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblagent-old` (
  `intAgentID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `intAgentClientID` int(10) unsigned DEFAULT NULL,
  `intAgentOrgID` int(10) unsigned DEFAULT NULL,
  `strAgentFName` varchar(50) DEFAULT NULL,
  `strAgentLName` varchar(50) DEFAULT NULL,
  `strAgentCompany` varchar(50) DEFAULT NULL,
  `strAgentAddress1` varchar(50) DEFAULT NULL,
  `strAgentAddress2` varchar(50) DEFAULT NULL,
  `strAgentCity` varchar(50) DEFAULT NULL,
  `strAgentState` varchar(3) DEFAULT NULL,
  `strAgentZip` varchar(5) DEFAULT NULL,
  `strAgentPhone` varchar(14) DEFAULT NULL,
  `strAgentMobile` varchar(14) DEFAULT NULL,
  `strAgentEmail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`intAgentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblapiuser`
--

DROP TABLE IF EXISTS `tblapiuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblapiuser` (
  `intapiuserid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `apikey` char(36) NOT NULL DEFAULT '',
  `apiPassKey` varchar(20) NOT NULL DEFAULT '',
  `intapiorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `dtecreated` datetime DEFAULT NULL,
  `flag_disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intapiuserid`),
  KEY `apikey` (`apikey`,`apiPassKey`),
  KEY `intapiorgid` (`intapiorgid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblappointments`
--

DROP TABLE IF EXISTS `tblappointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblappointments` (
  `intAppID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `strSubject` varchar(1) NOT NULL,
  `dteStart` datetime DEFAULT NULL,
  `dteEnd` datetime DEFAULT NULL,
  `strRecurrenceRule` varchar(1024) DEFAULT NULL,
  `intRecurrenceParentID` int(10) unsigned DEFAULT NULL,
  `strLocation` varchar(50) DEFAULT NULL,
  `intActivityTypeID` int(10) unsigned DEFAULT NULL,
  `dteDuration` varchar(150) DEFAULT NULL,
  `intClear` int(10) unsigned DEFAULT NULL,
  `isPublic` int(10) unsigned DEFAULT NULL,
  `dteActivityAdded` datetime DEFAULT NULL,
  `intActivityCustomerID` int(10) unsigned DEFAULT NULL,
  `intActivityClientID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`intAppID`),
  KEY `FK_Appointments_ParentAppointments` (`intRecurrenceParentID`),
  CONSTRAINT `tblappointments_ibfk_1` FOREIGN KEY (`intRecurrenceParentID`) REFERENCES `tblappointments` (`intAppID`)
) ENGINE=InnoDB AUTO_INCREMENT=96330 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblbadwords`
--

DROP TABLE IF EXISTS `tblbadwords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblbadwords` (
  `intBadwordID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `strBadWord` varchar(150) DEFAULT NULL,
  `strReplaceString` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`intBadwordID`)
) ENGINE=InnoDB AUTO_INCREMENT=454 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblblog`
--

DROP TABLE IF EXISTS `tblblog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblblog` (
  `intBlogID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `strBlogTitle` varchar(255) DEFAULT NULL,
  `strBlogURL` varchar(255) DEFAULT NULL,
  `strBlogDescription` text,
  `dteBlog` datetime DEFAULT NULL,
  PRIMARY KEY (`intBlogID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblbox`
--

DROP TABLE IF EXISTS `tblbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblbox` (
  `intBoxID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intBoxOrgID` int(10) unsigned DEFAULT NULL,
  `dteBoxReceived` datetime DEFAULT NULL,
  `dteBoxDestruction` datetime DEFAULT NULL,
  `dteBoxDone` datetime DEFAULT NULL,
  `intBoxDoneDays` int(10) DEFAULT NULL,
  `intBoxDoneWeekdays` int(10) DEFAULT NULL,
  `dteBoxCD` datetime DEFAULT NULL,
  `intBoxCDDays` int(10) DEFAULT NULL,
  `intBoxCDWeekdays` int(10) DEFAULT NULL,
  `dteBoxCompliance` datetime DEFAULT NULL,
  `intBoxComplianceDays` int(10) DEFAULT NULL,
  `intBoxComplianceWeekdays` int(10) DEFAULT NULL,
  `dteBoxPosted` datetime DEFAULT NULL,
  `intBoxPostedDays` int(10) DEFAULT NULL,
  `intBoxPostedWeekdays` int(10) DEFAULT NULL,
  `dteBoxDestroyed` datetime DEFAULT NULL,
  PRIMARY KEY (`intBoxID`)
) ENGINE=InnoDB AUTO_INCREMENT=832071 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblbranch`
--

DROP TABLE IF EXISTS `tblbranch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblbranch` (
  `intBranchID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `strBranchName` varchar(50) NOT NULL,
  `intBranchOrgID` int(10) unsigned NOT NULL,
  `strBranchPhone` varchar(14) DEFAULT NULL,
  `strBranchAddress1` varchar(50) DEFAULT NULL,
  `strBranchAddress2` varchar(50) DEFAULT NULL,
  `strBranchCity` varchar(50) DEFAULT NULL,
  `strBranchState` varchar(4) DEFAULT NULL,
  `strBranchZip` varchar(10) DEFAULT NULL,
  `strBranchWebSite` varchar(200) DEFAULT NULL,
  `strBranchFax` varchar(14) DEFAULT NULL,
  `strBranchMetro` varchar(50) DEFAULT NULL,
  `intBranchAdminClientID` int(10) DEFAULT NULL,
  `intBranchPrevOrgID` int(10) DEFAULT NULL,
  `strbranchsecondaryid` varchar(50) DEFAULT NULL,
  `strbranchnmls` varchar(50) DEFAULT NULL,
  `strbranchstatelicense` varchar(50) DEFAULT NULL,
  `strbranchstatelicenseblurb` text,
  PRIMARY KEY (`intBranchID`),
  KEY `intBranchOrgID` (`intBranchOrgID`),
  KEY `intBranchPrevOrgID` (`intBranchPrevOrgID`),
  KEY `intBranchAdminClientID` (`intBranchAdminClientID`)
) ENGINE=InnoDB AUTO_INCREMENT=672 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblbranchadmins`
--

DROP TABLE IF EXISTS `tblbranchadmins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblbranchadmins` (
  `intbranchadminid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intbranchadminclientid` int(10) unsigned DEFAULT NULL,
  `intbranchadminbranchid` int(10) unsigned DEFAULT NULL,
  `blnisprimaryadmin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `intbranchadminorgid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intbranchadminid`),
  KEY `intbranchadminclientid` (`intbranchadminclientid`),
  KEY `intbranchadminbranchid` (`intbranchadminbranchid`),
  KEY `blnisprimaryadmin` (`blnisprimaryadmin`),
  KEY `intbranchadminorgid` (`intbranchadminorgid`)
) ENGINE=InnoDB AUTO_INCREMENT=965 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblbusinessunit`
--

DROP TABLE IF EXISTS `tblbusinessunit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblbusinessunit` (
  `intBusinessUnitID` int(11) NOT NULL AUTO_INCREMENT,
  `strBusinessUnitName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`intBusinessUnitID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblcategorycontactlist`
--

DROP TABLE IF EXISTS `tblcategorycontactlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcategorycontactlist` (
  `intCatContactlistid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intCategoryID` int(10) unsigned DEFAULT NULL,
  `intCustomerID` int(10) unsigned DEFAULT NULL,
  `intCatClientID` int(10) unsigned DEFAULT NULL,
  `intCatOrgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`intCatContactlistid`)
) ENGINE=InnoDB AUTO_INCREMENT=1142 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblcheck`
--

DROP TABLE IF EXISTS `tblcheck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcheck` (
  `intCheckID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `strCheckNum` varchar(25) NOT NULL,
  `dblCheckAmount` float DEFAULT NULL,
  `dteCheckDate` datetime DEFAULT NULL,
  `strCheckAssignment` varchar(75) DEFAULT NULL,
  `strCheckFName` varchar(50) DEFAULT NULL,
  `strCheckLName` varchar(50) DEFAULT NULL,
  `intCheckOrgID` int(10) unsigned DEFAULT NULL,
  `intCheckLoanID` int(10) unsigned DEFAULT NULL,
  `blnCheckTitle` int(10) unsigned DEFAULT NULL,
  `blnCheckInActive` int(10) unsigned DEFAULT NULL,
  `dteCheckAdded` datetime DEFAULT NULL,
  PRIMARY KEY (`intCheckID`),
  KEY `blnCheckTitle` (`blnCheckTitle`),
  KEY `intCheckLoanID` (`intCheckLoanID`)
) ENGINE=InnoDB AUTO_INCREMENT=7604 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblclient`
--

DROP TABLE IF EXISTS `tblclient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblclient` (
  `intClientID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intClientOrgID` int(10) unsigned DEFAULT NULL,
  `intClientPartnerClientID` int(10) unsigned DEFAULT NULL,
  `intClientBranchID` int(10) unsigned DEFAULT NULL,
  `strClientPartnerTitle` varchar(50) DEFAULT NULL,
  `intClientInternalTrackID` int(10) unsigned NOT NULL DEFAULT '0',
  `strClientFName` varchar(50) DEFAULT NULL,
  `strClientLName` varchar(50) DEFAULT NULL,
  `strClientTitle` varchar(100) DEFAULT NULL,
  `strClientPhone` varchar(14) DEFAULT NULL,
  `strClientPhoneExt` varchar(7) DEFAULT NULL,
  `strClientPhoneTollFree` varchar(14) DEFAULT NULL,
  `strClientMobilePhone` varchar(14) DEFAULT NULL,
  `strClientFax` varchar(14) DEFAULT NULL,
  `strClientEmail` varchar(100) DEFAULT NULL,
  `strClientEmailCC` varchar(75) DEFAULT NULL,
  `strClientAddress1` varchar(50) DEFAULT NULL,
  `strClientAddress2` varchar(50) DEFAULT NULL,
  `strClientCity` varchar(50) DEFAULT NULL,
  `strClientState` varchar(4) DEFAULT NULL,
  `strClientZip` varchar(10) DEFAULT NULL,
  `strClientMetro` varchar(50) DEFAULT NULL,
  `strClientUsername` varchar(50) DEFAULT NULL,
  `strClientPassword` mediumtext,
  `dteClientAdded` datetime DEFAULT NULL,
  `dteClientBDay` datetime DEFAULT NULL,
  `intClientBDayAck` int(4) NOT NULL DEFAULT '2011' COMMENT 'Used by Calendar',
  `strClientCompanyName` varchar(100) DEFAULT NULL,
  `blnClientIsActive` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `intClientRoleID` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `strClientWebPage` varchar(255) DEFAULT NULL,
  `strClientNotes` varchar(200) DEFAULT NULL,
  `intClientLogoStatusID` tinyint(3) unsigned NOT NULL DEFAULT '3',
  `intClientSignatureStatusID` tinyint(3) unsigned NOT NULL DEFAULT '3',
  `intClientPictureStatusID` tinyint(3) unsigned NOT NULL DEFAULT '3',
  `blnClientUsesOrgTracks` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `strClientLicense` varchar(100) DEFAULT NULL,
  `strClientEmailServer` varchar(50) DEFAULT NULL,
  `strClientEmailUsername` varchar(50) DEFAULT NULL,
  `strClientEmailPassword` varchar(50) DEFAULT NULL,
  `strClientTeam1` varchar(50) DEFAULT NULL,
  `strClientTeam2` varchar(50) DEFAULT NULL,
  `strClientTeam3` varchar(50) DEFAULT NULL,
  `strClientTeam4` varchar(50) DEFAULT NULL,
  `dblClientCommish` float DEFAULT NULL,
  `intClientTandCVersion` int(10) DEFAULT NULL,
  `dteClientTandCDate` datetime DEFAULT NULL,
  `strClientEmailFontType` varchar(100) DEFAULT NULL,
  `strClientEmailFontSize` varchar(10) DEFAULT NULL,
  `strClientEmailFontColor` varchar(10) DEFAULT NULL,
  `intClientEmailFooterTemplateID` int(10) DEFAULT '1030',
  `intClientEmailHeaderTemplateID` int(10) DEFAULT '1028',
  `strClientOptionString1Label` varchar(20) DEFAULT NULL,
  `strClientOptionString2Label` varchar(20) DEFAULT NULL,
  `strClientOptionString3Label` varchar(20) DEFAULT NULL,
  `strClientOptionBoolean1Label` varchar(20) DEFAULT NULL,
  `strClientOptionBoolean2Label` varchar(20) DEFAULT NULL,
  `strClientOptionBoolean3Label` varchar(20) DEFAULT NULL,
  `strClientOptionDate1Label` varchar(20) DEFAULT NULL,
  `strClientOptionInt1Label` varchar(20) DEFAULT NULL,
  `intClientEmailsSent` int(10) NOT NULL DEFAULT '0',
  `strapiusername` varchar(100) DEFAULT NULL,
  `strapipassword` varchar(100) DEFAULT NULL,
  `dteclientmodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blnIsCRMsetupcomplete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `intclientloanapptimeout` tinyint(3) unsigned NOT NULL DEFAULT '15',
  `strclientlicense2` varchar(255) DEFAULT NULL,
  `strtheme_colorscheme` varchar(100) DEFAULT NULL,
  `strtheme_primarycolor` varchar(10) DEFAULT NULL,
  `strtheme_secondarycolor` varchar(10) DEFAULT NULL,
  `blnclienthaslogo2` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `strclientpostcardbannertextcolor1` varchar(10) DEFAULT NULL,
  `strclientpostcardbannertextcolor2` varchar(10) DEFAULT NULL,
  `dteLastLogin` datetime DEFAULT NULL,
  `dtePasswordChanged` datetime DEFAULT NULL,
  `strPreviousPasswords` mediumtext,
  `intFailedConsecutiveLogins` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Incremental value of consecutive failed login attempts',
  `blnAccountIsLocked` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Boolean indicated account is locked from bad login attempts',
  `dteLockoutTime` datetime DEFAULT NULL COMMENT 'Timestamp when user was last locked out',
  `blnInitialPasswordReset` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag to show password was reset after policy went into place',
  `intclientvideolikes` int(10) unsigned NOT NULL DEFAULT '0',
  `blnapideleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dteapideleted` datetime DEFAULT NULL,
  `blnCanSyncOutlook` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `intSupportPin` int(10) unsigned NOT NULL DEFAULT '0',
  `blnHasSupportLogin` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag if client is registered in support portal',
  `intHelpDeskID` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Jitbit ID returned from API call when user is created.',
  `blnMarketListingAgent` tinyint(1) NOT NULL DEFAULT '1',
  `strClientLicense3` varchar(255) DEFAULT NULL,
  `strLOSecondaryID` varchar(50) DEFAULT NULL,
  `blnIsBetaUser` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`intClientID`),
  KEY `intClientOrgID` (`intClientOrgID`),
  KEY `strapiusername` (`blnClientIsActive`,`strapiusername`,`strapipassword`),
  KEY `intClientBranchID` (`intClientBranchID`)
) ENGINE=InnoDB AUTO_INCREMENT=13704 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblclient_409`
--

DROP TABLE IF EXISTS `tblclient_409`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblclient_409` (
  `intClientID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intClientOrgID` int(10) unsigned DEFAULT NULL,
  `intClientPartnerClientID` int(10) unsigned DEFAULT NULL,
  `intClientBranchID` int(10) unsigned DEFAULT NULL,
  `strClientPartnerTitle` varchar(50) DEFAULT NULL,
  `intClientInternalTrackID` int(10) unsigned DEFAULT NULL,
  `strClientFName` varchar(50) DEFAULT NULL,
  `strClientLName` varchar(50) DEFAULT NULL,
  `strClientTitle` varchar(50) DEFAULT NULL,
  `strClientPhone` varchar(14) DEFAULT NULL,
  `strClientPhoneExt` varchar(7) DEFAULT NULL,
  `strClientPhoneTollFree` varchar(14) DEFAULT NULL,
  `strClientMobilePhone` varchar(14) DEFAULT NULL,
  `strClientFax` varchar(14) DEFAULT NULL,
  `strClientEmail` varchar(50) DEFAULT NULL,
  `strClientEmailCC` varchar(75) DEFAULT NULL,
  `strClientAddress1` varchar(50) DEFAULT NULL,
  `strClientAddress2` varchar(50) DEFAULT NULL,
  `strClientCity` varchar(50) DEFAULT NULL,
  `strClientState` varchar(4) DEFAULT NULL,
  `strClientZip` varchar(10) DEFAULT NULL,
  `strClientMetro` varchar(50) DEFAULT NULL,
  `strClientUsername` varchar(50) DEFAULT NULL,
  `strClientPassword` varchar(50) DEFAULT NULL,
  `dteClientAdded` datetime DEFAULT NULL,
  `dteClientBDay` datetime DEFAULT NULL,
  `strClientCompanyName` varchar(50) DEFAULT NULL,
  `blnClientIsActive` decimal(3,0) DEFAULT NULL,
  `intClientRoleID` int(10) unsigned DEFAULT NULL,
  `strClientWebPage` varchar(50) DEFAULT NULL,
  `strClientNotes` text,
  `intClientLogoStatusID` decimal(3,0) DEFAULT NULL,
  `intClientSignatureStatusID` decimal(3,0) DEFAULT NULL,
  `intClientPictureStatusID` decimal(3,0) DEFAULT NULL,
  `blnClientUsesOrgTracks` decimal(3,0) DEFAULT NULL,
  `strClientLicense` varchar(50) DEFAULT NULL,
  `strClientEmailServer` varchar(50) DEFAULT NULL,
  `strClientEmailUsername` varchar(50) DEFAULT NULL,
  `strClientEmailPassword` varchar(50) DEFAULT NULL,
  `strClientTeam1` varchar(50) DEFAULT NULL,
  `strClientTeam2` varchar(50) DEFAULT NULL,
  `strClientTeam3` varchar(50) DEFAULT NULL,
  `strClientTeam4` varchar(50) DEFAULT NULL,
  `dblClientCommish` float DEFAULT NULL,
  `intClientTandCVersion` int(10) unsigned DEFAULT NULL,
  `dteClientTandCDate` datetime DEFAULT NULL,
  `strClientEmailFontType` varchar(100) DEFAULT NULL,
  `strClientEmailFontSize` varchar(10) DEFAULT NULL,
  `strClientEmailFontColor` varchar(10) DEFAULT NULL,
  `intClientEmailFooterTemplateID` int(10) unsigned DEFAULT NULL,
  `intClientEmailHeaderTemplateID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`intClientID`)
) ENGINE=InnoDB AUTO_INCREMENT=5551 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblclient_agentprofile_card`
--

DROP TABLE IF EXISTS `tblclient_agentprofile_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblclient_agentprofile_card` (
  `intclientcardagentprofileid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `intclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `txtcardagentprofile` text,
  `dtemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`intclientcardagentprofileid`),
  KEY `intorgid` (`intorgid`),
  KEY `intclientid` (`intclientid`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblclient_agentprofile_flyer`
--

DROP TABLE IF EXISTS `tblclient_agentprofile_flyer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblclient_agentprofile_flyer` (
  `intclientflyeragentprofileid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `intclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `txtflyeragentprofile` text,
  `dtemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `intflyertypeid` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`intclientflyeragentprofileid`),
  KEY `intorgid` (`intorgid`),
  KEY `intclientid` (`intclientid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblclient_agentprofile_letter`
--

DROP TABLE IF EXISTS `tblclient_agentprofile_letter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblclient_agentprofile_letter` (
  `intclientletteragentprofileid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `intclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `txtletteragentprofile` text,
  `dtemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`intclientletteragentprofileid`),
  KEY `intorgid` (`intorgid`),
  KEY `intclientid` (`intclientid`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblclient_alias`
--

DROP TABLE IF EXISTS `tblclient_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblclient_alias` (
  `intclientaliasid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intclientalias_clientid` int(10) unsigned NOT NULL,
  `strclientalias_address1` varchar(255) DEFAULT NULL,
  `strclientalias_address2` varchar(255) DEFAULT NULL,
  `strclientalias_city` varchar(255) DEFAULT NULL,
  `strclientalias_state` char(2) DEFAULT NULL,
  `strclientalias_license` varchar(255) DEFAULT NULL,
  `strclientalias_zip` varchar(12) DEFAULT NULL,
  `dtecreated` datetime DEFAULT NULL,
  `dtemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `strclientalias_statekey` char(2) DEFAULT NULL,
  PRIMARY KEY (`intclientaliasid`),
  KEY `strclientalias_state` (`strclientalias_state`),
  KEY `intclientalias_clientid` (`intclientalias_clientid`)
) ENGINE=InnoDB AUTO_INCREMENT=285 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblclient_backup02202012`
--

DROP TABLE IF EXISTS `tblclient_backup02202012`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblclient_backup02202012` (
  `intClientID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intClientOrgID` int(10) unsigned DEFAULT NULL,
  `intClientPartnerClientID` int(10) unsigned DEFAULT NULL,
  `intClientBranchID` int(10) unsigned DEFAULT NULL,
  `strClientPartnerTitle` varchar(50) DEFAULT NULL,
  `intClientInternalTrackID` int(10) unsigned NOT NULL DEFAULT '0',
  `strClientFName` varchar(50) DEFAULT NULL,
  `strClientLName` varchar(50) DEFAULT NULL,
  `strClientTitle` varchar(50) DEFAULT NULL,
  `strClientPhone` varchar(14) DEFAULT NULL,
  `strClientPhoneExt` varchar(7) DEFAULT NULL,
  `strClientPhoneTollFree` varchar(14) DEFAULT NULL,
  `strClientMobilePhone` varchar(14) DEFAULT NULL,
  `strClientFax` varchar(14) DEFAULT NULL,
  `strClientEmail` varchar(100) DEFAULT NULL,
  `strClientEmailCC` varchar(75) DEFAULT NULL,
  `strClientAddress1` varchar(50) DEFAULT NULL,
  `strClientAddress2` varchar(50) DEFAULT NULL,
  `strClientCity` varchar(50) DEFAULT NULL,
  `strClientState` varchar(4) DEFAULT NULL,
  `strClientZip` varchar(10) DEFAULT NULL,
  `strClientMetro` varchar(50) DEFAULT NULL,
  `strClientUsername` varchar(50) DEFAULT NULL,
  `strClientPassword` mediumtext,
  `dteClientAdded` datetime DEFAULT NULL,
  `dteClientBDay` datetime DEFAULT NULL,
  `intClientBDayAck` int(4) NOT NULL DEFAULT '2011' COMMENT 'Used by Calendar',
  `strClientCompanyName` varchar(100) DEFAULT NULL,
  `blnClientIsActive` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `intClientRoleID` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `strClientWebPage` varchar(255) DEFAULT NULL,
  `strClientNotes` varchar(200) DEFAULT NULL,
  `intClientLogoStatusID` tinyint(3) unsigned NOT NULL DEFAULT '3',
  `intClientSignatureStatusID` tinyint(3) unsigned NOT NULL DEFAULT '3',
  `intClientPictureStatusID` tinyint(3) unsigned NOT NULL DEFAULT '3',
  `blnClientUsesOrgTracks` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `strClientLicense` varchar(75) DEFAULT NULL,
  `strClientEmailServer` varchar(50) DEFAULT NULL,
  `strClientEmailUsername` varchar(50) DEFAULT NULL,
  `strClientEmailPassword` varchar(50) DEFAULT NULL,
  `strClientTeam1` varchar(50) DEFAULT NULL,
  `strClientTeam2` varchar(50) DEFAULT NULL,
  `strClientTeam3` varchar(50) DEFAULT NULL,
  `strClientTeam4` varchar(50) DEFAULT NULL,
  `dblClientCommish` float DEFAULT NULL,
  `intClientTandCVersion` int(10) DEFAULT NULL,
  `dteClientTandCDate` datetime DEFAULT NULL,
  `strClientEmailFontType` varchar(100) DEFAULT NULL,
  `strClientEmailFontSize` varchar(10) DEFAULT NULL,
  `strClientEmailFontColor` varchar(10) DEFAULT NULL,
  `intClientEmailFooterTemplateID` int(10) DEFAULT '1030',
  `intClientEmailHeaderTemplateID` int(10) DEFAULT '1028',
  `strClientOptionString1Label` varchar(20) DEFAULT NULL,
  `strClientOptionString2Label` varchar(20) DEFAULT NULL,
  `strClientOptionString3Label` varchar(20) DEFAULT NULL,
  `strClientOptionBoolean1Label` varchar(20) DEFAULT NULL,
  `strClientOptionBoolean2Label` varchar(20) DEFAULT NULL,
  `strClientOptionBoolean3Label` varchar(20) DEFAULT NULL,
  `strClientOptionDate1Label` varchar(20) DEFAULT NULL,
  `strClientOptionInt1Label` varchar(20) DEFAULT NULL,
  `intClientEmailsSent` int(10) NOT NULL DEFAULT '0',
  `strapiusername` varchar(100) DEFAULT NULL,
  `strapipassword` varchar(100) DEFAULT NULL,
  `dteclientmodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blnIsCRMsetupcomplete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `intclientloanapptimeout` tinyint(3) unsigned NOT NULL DEFAULT '15',
  `strclientlicense2` varchar(255) DEFAULT NULL,
  `strtheme_colorscheme` varchar(100) DEFAULT NULL,
  `strtheme_primarycolor` varchar(10) DEFAULT NULL,
  `strtheme_secondarycolor` varchar(10) DEFAULT NULL,
  `blnclienthaslogo2` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `strclientpostcardbannertextcolor1` varchar(10) DEFAULT NULL,
  `strclientpostcardbannertextcolor2` varchar(10) DEFAULT NULL,
  `dteLastLogin` datetime DEFAULT NULL,
  `dtePasswordChanged` datetime DEFAULT NULL,
  `strPreviousPasswords` mediumtext,
  PRIMARY KEY (`intClientID`),
  KEY `intClientOrgID` (`intClientOrgID`),
  KEY `strapiusername` (`blnClientIsActive`,`strapiusername`,`strapipassword`),
  KEY `intClientBranchID` (`intClientBranchID`)
) ENGINE=InnoDB AUTO_INCREMENT=7582 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblclient_calendar_settings`
--

DROP TABLE IF EXISTS `tblclient_calendar_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblclient_calendar_settings` (
  `intSettingID` int(11) NOT NULL AUTO_INCREMENT,
  `intClientID` int(11) DEFAULT NULL,
  `intDefaultEventMins` int(11) NOT NULL DEFAULT '30',
  `strDefaultView` varchar(50) NOT NULL DEFAULT 'month',
  `strDefaultDayView` varchar(50) NOT NULL DEFAULT 'agenda',
  `dteDayStart` time DEFAULT NULL,
  `dteDayEnd` time DEFAULT NULL,
  `blnDisplayBirthdays` tinyint(1) NOT NULL DEFAULT '0',
  `blnDisplayAnniversarys` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`intSettingID`)
) ENGINE=InnoDB AUTO_INCREMENT=772 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblclient_cobalt_license3`
--

DROP TABLE IF EXISTS `tblclient_cobalt_license3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblclient_cobalt_license3` (
  `strFirstName` varchar(255) DEFAULT NULL,
  `strLastName` varchar(255) DEFAULT NULL,
  `strLicense3` varchar(255) DEFAULT NULL,
  `strPhone` varchar(255) DEFAULT NULL,
  `strFax` varchar(255) DEFAULT NULL,
  `strEmailAddress` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblclient_cr`
--

DROP TABLE IF EXISTS `tblclient_cr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblclient_cr` (
  `crID` int(11) NOT NULL AUTO_INCREMENT,
  `strName` varchar(60) DEFAULT NULL,
  `trData` text,
  `orgID` int(11) DEFAULT NULL,
  `clientID` int(11) DEFAULT NULL,
  `strTransaction` varchar(40) DEFAULT NULL,
  `strImage` varchar(200) DEFAULT NULL,
  `strimageuuid` varchar(100) DEFAULT NULL,
  `dteCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `strBillingOption` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`crID`)
) ENGINE=InnoDB AUTO_INCREMENT=338 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblclient_login`
--

DROP TABLE IF EXISTS `tblclient_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblclient_login` (
  `intclientid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `datelastlogin` datetime DEFAULT NULL,
  `numberoflogins` int(10) unsigned NOT NULL DEFAULT '0',
  `lastipaddress` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intclientid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblclient_namemapping`
--

DROP TABLE IF EXISTS `tblclient_namemapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblclient_namemapping` (
  `intclientnamemappingid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intclientnamemappingclientid` int(10) unsigned NOT NULL,
  `strclientmapname` varchar(255) DEFAULT NULL,
  `intclientnamemappingorgid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intclientnamemappingid`),
  KEY `intclientnamemappingclientid` (`intclientnamemappingclientid`),
  KEY `intclientnamemappingorgid` (`intclientnamemappingorgid`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblclient_profile_addressblock`
--

DROP TABLE IF EXISTS `tblclient_profile_addressblock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblclient_profile_addressblock` (
  `intclientaddressblockid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `intclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `txtaddressblock` text,
  `dtemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`intclientaddressblockid`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblclient_profile_card`
--

DROP TABLE IF EXISTS `tblclient_profile_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblclient_profile_card` (
  `intclientcardprofileid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `intclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `txtcardprofile` text,
  `dtemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`intclientcardprofileid`),
  KEY `intorgid` (`intorgid`),
  KEY `intclientid` (`intclientid`)
) ENGINE=InnoDB AUTO_INCREMENT=324 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblclient_profile_email`
--

DROP TABLE IF EXISTS `tblclient_profile_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblclient_profile_email` (
  `intclientemailprofileid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `intclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `txtHeader` varchar(8000) NOT NULL DEFAULT '<div style="margin-bottom:20px">[$MY LOGO$]</div>',
  `dtemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `txtFooter` varchar(8000) NOT NULL DEFAULT '<br/>\n<div style="margin-top: 8px;"><strong>Sincerely,</strong></div>\n<br/>\n<div style="margin-top: 15px;"><strong>[$MY FIRST NAME$] [$MY LAST NAME$]</strong><br/>[$MY COMPANY$]<br/>[$MY TITLE$]<br/>[$MY LICENSE$]<br/>[$MY LICENSE2$]<br/>[$MY PHONE$]<br/><span style="color: #0000ff;">[$MY EMAIL$]</span><br/><span style="color: #0000ff;">[$MY WEBPAGE$]</span><br/>[$MY PICTURE$]</div>',
  `stremailtemplateName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`intclientemailprofileid`),
  KEY `intorgid` (`intorgid`),
  KEY `intclientid` (`intclientid`)
) ENGINE=InnoDB AUTO_INCREMENT=421 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblclient_profile_email_cobrand`
--

DROP TABLE IF EXISTS `tblclient_profile_email_cobrand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblclient_profile_email_cobrand` (
  `intclientemailprofilecobrandid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `intclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `dtemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `txtContent` varchar(8000) NOT NULL DEFAULT '<strong>Sincerely,<br /></strong> <br /><table style="width: auto;" border="0" cellspacing="0" cellpadding="0"><tbody><tr><td style="vertical-align: top; background: none;" valign="top"><strong>[$MY FIRST NAME$] [$MY LAST NAME$]</strong><br />[$MY LICENSE$]<br />[$MY COMPANY$]<br />[$MY PHONE$]<br />[$MY WEBPAGE$]<br />[$MY EMAIL$]<br />[$MY PICTURE$]</td><td style="vertical-align: top; padding-left: 50px; background: none;" valign="top"><strong>[$COBRAND FIRST NAME$]&nbsp;[$COBRAND LAST NAME$]</strong><br />[$COBRAND COMPANY$]<br />[$COBRAND TITLE$]<br />[$COBRAND PHONE$]<br /><span style="color: #0000ff;">[$COBRAND EMAIL$]</span><br /><span style="color: #0000ff;">[$COBRAND WEBPAGE$]</span><br />[$COBRAND PICTURE$]&nbsp;</td></tr></tbody></table>',
  PRIMARY KEY (`intclientemailprofilecobrandid`),
  KEY `intorgid` (`intorgid`),
  KEY `intclientid` (`intclientid`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblclient_profile_flyer`
--

DROP TABLE IF EXISTS `tblclient_profile_flyer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblclient_profile_flyer` (
  `intclientflyerprofileid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `intclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `txtflyerprofile` text,
  `dtemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `intflyertypeid` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`intclientflyerprofileid`),
  KEY `intorgid` (`intorgid`),
  KEY `intclientid` (`intclientid`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblclient_profile_letter`
--

DROP TABLE IF EXISTS `tblclient_profile_letter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblclient_profile_letter` (
  `intclientletterprofileid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `intclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `txtletterprofile` text,
  `dtemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`intclientletterprofileid`),
  KEY `intorgid` (`intorgid`),
  KEY `intclientid` (`intclientid`)
) ENGINE=InnoDB AUTO_INCREMENT=295 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblclient_profile_license3`
--

DROP TABLE IF EXISTS `tblclient_profile_license3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblclient_profile_license3` (
  `intclientlicense3profileid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `intclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `txtlicense3profile` text,
  `dtemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blnIsAboveCanSPAM` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`intclientlicense3profileid`),
  KEY `intorgid` (`intorgid`),
  KEY `intclientid` (`intclientid`),
  KEY `blnIsAboveCanSPAM` (`blnIsAboveCanSPAM`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblclient_profile_license3_flyer`
--

DROP TABLE IF EXISTS `tblclient_profile_license3_flyer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblclient_profile_license3_flyer` (
  `intclientlicense3flyerprofileid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `intclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `txtlicense3flyerprofile` text,
  `dtemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`intclientlicense3flyerprofileid`),
  KEY `intorgid` (`intorgid`),
  KEY `intclientid` (`intclientid`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblclient_steve`
--

DROP TABLE IF EXISTS `tblclient_steve`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblclient_steve` (
  `intClientID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intClientOrgID` int(10) unsigned DEFAULT NULL,
  `intClientPartnerClientID` int(10) unsigned DEFAULT NULL,
  `intClientBranchID` int(10) unsigned DEFAULT NULL,
  `strClientPartnerTitle` varchar(50) DEFAULT NULL,
  `intClientInternalTrackID` int(10) unsigned NOT NULL DEFAULT '0',
  `strClientFName` varchar(50) DEFAULT NULL,
  `strClientLName` varchar(50) DEFAULT NULL,
  `strClientTitle` varchar(100) DEFAULT NULL,
  `strClientPhone` varchar(14) DEFAULT NULL,
  `strClientPhoneExt` varchar(7) DEFAULT NULL,
  `strClientPhoneTollFree` varchar(14) DEFAULT NULL,
  `strClientMobilePhone` varchar(14) DEFAULT NULL,
  `strClientFax` varchar(14) DEFAULT NULL,
  `strClientEmail` varchar(100) DEFAULT NULL,
  `strClientEmailCC` varchar(75) DEFAULT NULL,
  `strClientAddress1` varchar(50) DEFAULT NULL,
  `strClientAddress2` varchar(50) DEFAULT NULL,
  `strClientCity` varchar(50) DEFAULT NULL,
  `strClientState` varchar(4) DEFAULT NULL,
  `strClientZip` varchar(10) DEFAULT NULL,
  `strClientMetro` varchar(50) DEFAULT NULL,
  `strClientUsername` varchar(50) DEFAULT NULL,
  `strClientPassword` mediumtext,
  `dteClientAdded` datetime DEFAULT NULL,
  `dteClientBDay` datetime DEFAULT NULL,
  `intClientBDayAck` int(4) NOT NULL DEFAULT '2011' COMMENT 'Used by Calendar',
  `strClientCompanyName` varchar(100) DEFAULT NULL,
  `blnClientIsActive` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `intClientRoleID` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `strClientWebPage` varchar(255) DEFAULT NULL,
  `strClientNotes` varchar(200) DEFAULT NULL,
  `intClientLogoStatusID` tinyint(3) unsigned NOT NULL DEFAULT '3',
  `intClientSignatureStatusID` tinyint(3) unsigned NOT NULL DEFAULT '3',
  `intClientPictureStatusID` tinyint(3) unsigned NOT NULL DEFAULT '3',
  `blnClientUsesOrgTracks` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `strClientLicense` varchar(100) DEFAULT NULL,
  `strClientEmailServer` varchar(50) DEFAULT NULL,
  `strClientEmailUsername` varchar(50) DEFAULT NULL,
  `strClientEmailPassword` varchar(50) DEFAULT NULL,
  `strClientTeam1` varchar(50) DEFAULT NULL,
  `strClientTeam2` varchar(50) DEFAULT NULL,
  `strClientTeam3` varchar(50) DEFAULT NULL,
  `strClientTeam4` varchar(50) DEFAULT NULL,
  `dblClientCommish` float DEFAULT NULL,
  `intClientTandCVersion` int(10) DEFAULT NULL,
  `dteClientTandCDate` datetime DEFAULT NULL,
  `strClientEmailFontType` varchar(100) DEFAULT NULL,
  `strClientEmailFontSize` varchar(10) DEFAULT NULL,
  `strClientEmailFontColor` varchar(10) DEFAULT NULL,
  `intClientEmailFooterTemplateID` int(10) DEFAULT '1030',
  `intClientEmailHeaderTemplateID` int(10) DEFAULT '1028',
  `strClientOptionString1Label` varchar(20) DEFAULT NULL,
  `strClientOptionString2Label` varchar(20) DEFAULT NULL,
  `strClientOptionString3Label` varchar(20) DEFAULT NULL,
  `strClientOptionBoolean1Label` varchar(20) DEFAULT NULL,
  `strClientOptionBoolean2Label` varchar(20) DEFAULT NULL,
  `strClientOptionBoolean3Label` varchar(20) DEFAULT NULL,
  `strClientOptionDate1Label` varchar(20) DEFAULT NULL,
  `strClientOptionInt1Label` varchar(20) DEFAULT NULL,
  `intClientEmailsSent` int(10) NOT NULL DEFAULT '0',
  `strapiusername` varchar(100) DEFAULT NULL,
  `strapipassword` varchar(100) DEFAULT NULL,
  `dteclientmodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blnIsCRMsetupcomplete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `intclientloanapptimeout` tinyint(3) unsigned NOT NULL DEFAULT '15',
  `strclientlicense2` varchar(255) DEFAULT NULL,
  `strtheme_colorscheme` varchar(100) DEFAULT NULL,
  `strtheme_primarycolor` varchar(10) DEFAULT NULL,
  `strtheme_secondarycolor` varchar(10) DEFAULT NULL,
  `blnclienthaslogo2` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `strclientpostcardbannertextcolor1` varchar(10) DEFAULT NULL,
  `strclientpostcardbannertextcolor2` varchar(10) DEFAULT NULL,
  `dteLastLogin` datetime DEFAULT NULL,
  `dtePasswordChanged` datetime DEFAULT NULL,
  `strPreviousPasswords` mediumtext,
  `blnInitialPasswordReset` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag to show password was reset after policy went into place',
  `intclientvideolikes` int(10) unsigned NOT NULL DEFAULT '0',
  `blnapideleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dteapideleted` datetime DEFAULT NULL,
  `blnCanSyncOutlook` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `intSupportPin` int(10) unsigned NOT NULL DEFAULT '0',
  `blnHasSupportLogin` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag if client is registered in support portal',
  `blnMarketListingAgent` tinyint(1) NOT NULL DEFAULT '1',
  `strClientLicense3` varchar(255) DEFAULT NULL,
  `strLOSecondaryID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`intClientID`),
  KEY `intClientOrgID` (`intClientOrgID`),
  KEY `strapiusername` (`blnClientIsActive`,`strapiusername`,`strapipassword`),
  KEY `intClientBranchID` (`intClientBranchID`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblclientnews`
--

DROP TABLE IF EXISTS `tblclientnews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblclientnews` (
  `intClientNewsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dteClientNewsDate` datetime DEFAULT NULL,
  `strClientNews` text,
  PRIMARY KEY (`intClientNewsID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblclientnotes`
--

DROP TABLE IF EXISTS `tblclientnotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblclientnotes` (
  `intClientNotes` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intIsPublic` tinyint(1) unsigned NOT NULL,
  `strNote` text NOT NULL,
  `dteNoteAdded` datetime NOT NULL,
  `intNoteCustomerID` int(10) unsigned NOT NULL,
  `intNoteClientID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`intClientNotes`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblclientpassword`
--

DROP TABLE IF EXISTS `tblclientpassword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblclientpassword` (
  `intclientid` int(11) DEFAULT NULL,
  `apipassword` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblclients_excludedfromlossync`
--

DROP TABLE IF EXISTS `tblclients_excludedfromlossync`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblclients_excludedfromlossync` (
  `intexclusionid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intorg_id` int(10) unsigned NOT NULL,
  `intclient_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`intexclusionid`),
  KEY `intclient_id` (`intclient_id`),
  KEY `intorg_id` (`intorg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblclientsemails`
--

DROP TABLE IF EXISTS `tblclientsemails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblclientsemails` (
  `intEmailID` decimal(3,0) DEFAULT NULL,
  `intClientID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblclientstracks`
--

DROP TABLE IF EXISTS `tblclientstracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblclientstracks` (
  `intclienttrackid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intClientID` int(10) unsigned DEFAULT NULL,
  `intTrackID` int(10) unsigned DEFAULT NULL,
  `intProduct1ID` decimal(3,0) DEFAULT NULL,
  `intProduct2ID` decimal(3,0) DEFAULT NULL,
  `intProduct3ID` decimal(3,0) DEFAULT NULL,
  `intProduct4ID` decimal(3,0) DEFAULT NULL,
  `intProduct5ID` decimal(3,0) DEFAULT NULL,
  `blnClientsTracksPrimary` decimal(3,0) DEFAULT NULL,
  PRIMARY KEY (`intclienttrackid`),
  KEY `intClientID` (`intClientID`,`intTrackID`)
) ENGINE=InnoDB AUTO_INCREMENT=399 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblclienttemp`
--

DROP TABLE IF EXISTS `tblclienttemp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblclienttemp` (
  `intClientID` int(11) NOT NULL AUTO_INCREMENT,
  `strFName` varchar(20) DEFAULT NULL,
  `strLName` varchar(20) DEFAULT NULL,
  `strTitle` varchar(50) DEFAULT NULL,
  `strCompany` varchar(255) DEFAULT NULL,
  `strAddress` varchar(40) DEFAULT NULL,
  `strAddress2` varchar(40) DEFAULT NULL,
  `strCity` varchar(40) DEFAULT NULL,
  `strState` varchar(5) DEFAULT NULL,
  `strZip` varchar(5) DEFAULT NULL,
  `strEmail` varchar(150) DEFAULT NULL,
  `strWeb` varchar(150) DEFAULT NULL,
  `strPhone` varchar(30) DEFAULT NULL,
  `strExt` varchar(50) DEFAULT NULL,
  `strAltPhone` varchar(30) DEFAULT NULL,
  `dteDOB` date DEFAULT NULL,
  `intLOS` int(11) DEFAULT NULL,
  `strLicense` varchar(100) DEFAULT NULL,
  `strSource` varchar(40) DEFAULT NULL,
  `strReferrer` varchar(100) DEFAULT NULL,
  `strRole` varchar(40) DEFAULT NULL,
  `strPics` varchar(30) DEFAULT NULL,
  `strClosings` varchar(10) DEFAULT NULL,
  `strType` varchar(50) DEFAULT NULL,
  `dteCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `blnProcessed` tinyint(1) NOT NULL DEFAULT '0',
  `uuidSignUp` varchar(40) NOT NULL,
  `intinternaluserid` int(10) unsigned NOT NULL DEFAULT '0',
  `blnisdeleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intClientID`)
) ENGINE=InnoDB AUTO_INCREMENT=555 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblconformingloanlimits`
--

DROP TABLE IF EXISTS `tblconformingloanlimits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblconformingloanlimits` (
  `intLimitID` int(11) NOT NULL AUTO_INCREMENT,
  `strLimitZip` varchar(5) DEFAULT NULL,
  `dblLimit` float DEFAULT NULL,
  PRIMARY KEY (`intLimitID`)
) ENGINE=InnoDB AUTO_INCREMENT=41760 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblcontact`
--

DROP TABLE IF EXISTS `tblcontact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcontact` (
  `intContactID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intContactOrgID` int(10) unsigned DEFAULT NULL,
  `intContactFormerID` int(10) unsigned DEFAULT NULL,
  `intCustomerClientid` int(10) unsigned DEFAULT NULL,
  `intContactEnterByID` int(10) unsigned DEFAULT NULL,
  `intContactEditedByID` int(10) unsigned DEFAULT NULL,
  `dteContactEdited` datetime DEFAULT NULL,
  `dteContactAdded` datetime DEFAULT NULL,
  `strContactFName` varchar(50) DEFAULT NULL,
  `strContactMName` varchar(50) DEFAULT NULL,
  `strContactLName` varchar(50) DEFAULT NULL,
  `strContactPreName` varchar(50) DEFAULT NULL,
  `strContactSufName` varchar(50) DEFAULT NULL,
  `strContactNickName` varchar(50) DEFAULT NULL,
  `intContactStatusID` int(10) unsigned DEFAULT NULL,
  `intContactTypeID` int(10) unsigned DEFAULT NULL,
  `dteContactLastActivity` datetime DEFAULT NULL,
  `intContactLastActivityID` int(10) unsigned DEFAULT NULL,
  `intTrackID` int(10) unsigned DEFAULT NULL,
  `strEnterByID` varchar(21) DEFAULT NULL,
  `strContactSMTP` varchar(100) DEFAULT NULL,
  `intContactPortSMTP` int(10) unsigned DEFAULT NULL,
  `strContactUserSMTP` varchar(50) DEFAULT NULL,
  `strContactPassSMTP` varchar(50) DEFAULT NULL,
  `dteCRMstart` datetime DEFAULT NULL,
  PRIMARY KEY (`intContactID`),
  KEY `intContactOrgID` (`intContactOrgID`),
  KEY `intTrackID` (`intTrackID`)
) ENGINE=InnoDB AUTO_INCREMENT=392099 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblcontactcategories`
--

DROP TABLE IF EXISTS `tblcontactcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcontactcategories` (
  `intContactCategoriesID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `strContactCategoriesName` varchar(50) NOT NULL,
  `intClientCategories` int(10) unsigned DEFAULT NULL,
  `intparentid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`intContactCategoriesID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblcontactgroup`
--

DROP TABLE IF EXISTS `tblcontactgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcontactgroup` (
  `intGroupID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intParentID` int(10) unsigned DEFAULT NULL,
  `strGroupName` varchar(50) DEFAULT NULL,
  `intContactID` int(10) unsigned DEFAULT NULL,
  `intMemGroupID` int(10) unsigned DEFAULT NULL,
  `intOrgID` int(10) unsigned DEFAULT NULL,
  `intOrderID` int(10) unsigned DEFAULT NULL,
  `txtFilter` text,
  PRIMARY KEY (`intGroupID`)
) ENGINE=InnoDB AUTO_INCREMENT=3543 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblcontactinfomation`
--

DROP TABLE IF EXISTS `tblcontactinfomation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcontactinfomation` (
  `intContactID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `strContactAddress1_B` varchar(50) DEFAULT NULL,
  `strContactAddress2_B` varchar(50) DEFAULT NULL,
  `strContactAddress3_B` varchar(50) DEFAULT NULL,
  `strContactAddress4_B` varchar(50) DEFAULT NULL,
  `strContactCity_B` varchar(50) DEFAULT NULL,
  `strContactState_B` varchar(2) DEFAULT NULL,
  `strContactZip_B` varchar(50) DEFAULT NULL,
  `strContactWeb_B` varchar(50) DEFAULT NULL,
  `strContactEmail_B` varchar(50) DEFAULT NULL,
  `strContactPhone_B` varchar(21) DEFAULT NULL,
  `strContactPhonex_B` varchar(50) DEFAULT NULL,
  `strContactAltPhone_B` varchar(21) DEFAULT NULL,
  `strContactAltPhonex_B` varchar(50) DEFAULT NULL,
  `strContactFax_B` varchar(14) DEFAULT NULL,
  `strContactFaxex_B` varchar(10) DEFAULT NULL,
  `strContactAddress1_H` varchar(50) DEFAULT NULL,
  `strContactAddress2_H` varchar(50) DEFAULT NULL,
  `strContactAddress3_H` varchar(50) DEFAULT NULL,
  `strContactAddress4_H` varchar(50) DEFAULT NULL,
  `strContactCity_H` varchar(50) DEFAULT NULL,
  `strContactState_H` varchar(2) DEFAULT NULL,
  `strContactZip_H` varchar(50) DEFAULT NULL,
  `strContactWeb_H` varchar(50) DEFAULT NULL,
  `strContactEmail_H` varchar(50) DEFAULT NULL,
  `strContactPhone_H` varchar(21) DEFAULT NULL,
  `strContactPhonex_H` varchar(50) DEFAULT NULL,
  `strContactAltPhone_H` varchar(21) DEFAULT NULL,
  `strContactAltPhonex_H` varchar(50) DEFAULT NULL,
  `strContactFax_H` varchar(14) DEFAULT NULL,
  `strContactFaxex_H` varchar(10) DEFAULT NULL,
  `strContactAddress1_O` varchar(50) DEFAULT NULL,
  `strContactAddress2_O` varchar(50) DEFAULT NULL,
  `strContactAddress3_O` varchar(50) DEFAULT NULL,
  `strContactAddress4_O` varchar(50) DEFAULT NULL,
  `strContactCity_O` varchar(50) DEFAULT NULL,
  `strContactState_O` varchar(2) DEFAULT NULL,
  `strContactZip_O` varchar(50) DEFAULT NULL,
  `strContactWeb_O` varchar(50) DEFAULT NULL,
  `strContactEmail_O` varchar(50) DEFAULT NULL,
  `strContactPhone_O` varchar(21) DEFAULT NULL,
  `strContactPhonex_O` varchar(50) DEFAULT NULL,
  `strContactAltPhone_O` varchar(21) DEFAULT NULL,
  `strContactAltPhonex_O` varchar(50) DEFAULT NULL,
  `strContactFax_O` varchar(14) DEFAULT NULL,
  `strContactFaxex_O` varchar(10) DEFAULT NULL,
  `strContactAddress1_P` varchar(50) DEFAULT NULL,
  `strContactAddress2_P` varchar(50) DEFAULT NULL,
  `strContactAddress3_P` varchar(50) DEFAULT NULL,
  `strContactAddress4_P` varchar(50) DEFAULT NULL,
  `strContactCity_P` varchar(50) DEFAULT NULL,
  `strContactState_P` varchar(2) DEFAULT NULL,
  `strContactZip_P` varchar(50) DEFAULT NULL,
  `strContactWeb_P` varchar(50) DEFAULT NULL,
  `strContactEmail_P` varchar(50) DEFAULT NULL,
  `strContactPhone_P` varchar(21) DEFAULT NULL,
  `strContactPhonex_P` varchar(50) DEFAULT NULL,
  `strContactAltPhone_P` varchar(21) DEFAULT NULL,
  `strContactAltPhonex_P` varchar(50) DEFAULT NULL,
  `strContactFax_P` varchar(14) DEFAULT NULL,
  `strContactFaxex_P` varchar(10) DEFAULT NULL,
  `intContactTypeID` int(10) unsigned NOT NULL,
  `intContactUSA` int(10) unsigned DEFAULT NULL,
  `isAddressPref` int(10) unsigned DEFAULT NULL,
  `isEmailPref` int(10) unsigned DEFAULT NULL,
  `isPhonePref` int(10) unsigned DEFAULT NULL,
  `isAltPhonePref` int(10) unsigned DEFAULT NULL,
  `isWebPref` int(10) unsigned DEFAULT NULL,
  `isFaxPref` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`intContactID`)
) ENGINE=InnoDB AUTO_INCREMENT=392099 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblcontactinfotypename`
--

DROP TABLE IF EXISTS `tblcontactinfotypename`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcontactinfotypename` (
  `intAddressType` int(10) DEFAULT NULL,
  `strAddressTypeName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblcontactpreferred`
--

DROP TABLE IF EXISTS `tblcontactpreferred`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcontactpreferred` (
  `intContactPreferredID` int(10) DEFAULT NULL,
  `strContactPreferredName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblcontactprofile`
--

DROP TABLE IF EXISTS `tblcontactprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcontactprofile` (
  `intContactID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `strCompanyName` varchar(50) DEFAULT NULL,
  `intContactReferredBy` int(10) unsigned DEFAULT NULL,
  `strPostionName` varchar(50) DEFAULT NULL,
  `intContactVenueID` int(10) unsigned DEFAULT NULL,
  `intSourceID` int(10) unsigned DEFAULT NULL,
  `intPrefersID` int(10) unsigned DEFAULT NULL,
  `intIndustryID` int(10) unsigned DEFAULT NULL,
  `intTypeID` int(10) unsigned DEFAULT NULL,
  `dteContactBirthday` datetime DEFAULT NULL,
  `dteContactAnniversary` datetime DEFAULT NULL,
  `strCustom1` varchar(100) DEFAULT NULL,
  `strCustom2` varchar(100) DEFAULT NULL,
  `strCustom3` varchar(100) DEFAULT NULL,
  `strCustom4` varchar(100) DEFAULT NULL,
  `strCustom5` varchar(100) DEFAULT NULL,
  `strCustom6` varchar(100) DEFAULT NULL,
  `dteCustom1` datetime DEFAULT NULL,
  `dteCustom2` datetime DEFAULT NULL,
  `dteCustom3` datetime DEFAULT NULL,
  `dteCustom4` datetime DEFAULT NULL,
  `intCustom1` int(10) unsigned DEFAULT NULL,
  `intCustom2` int(10) unsigned DEFAULT NULL,
  `intCustom3` int(10) unsigned DEFAULT NULL,
  `intCustom4` int(10) unsigned DEFAULT NULL,
  `intCustom5` int(10) unsigned DEFAULT NULL,
  `intCustom6` int(10) unsigned DEFAULT NULL,
  `intContactRoleID` int(10) unsigned DEFAULT NULL,
  `blnContactIsMale` int(10) unsigned DEFAULT NULL,
  `intContactType` int(10) unsigned DEFAULT NULL,
  `imgContactPhoto` longblob,
  `strUrlLink` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`intContactID`)
) ENGINE=InnoDB AUTO_INCREMENT=392099 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblcontactref`
--

DROP TABLE IF EXISTS `tblcontactref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcontactref` (
  `intContactRefID` int(10) DEFAULT NULL,
  `strContactRefName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblcontactrelations`
--

DROP TABLE IF EXISTS `tblcontactrelations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcontactrelations` (
  `intRelationID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intContactID` int(10) unsigned DEFAULT NULL,
  `intContactRefID` int(10) unsigned DEFAULT NULL,
  `intContactRefType` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`intRelationID`)
) ENGINE=InnoDB AUTO_INCREMENT=279389 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblcontactsocialweb`
--

DROP TABLE IF EXISTS `tblcontactsocialweb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcontactsocialweb` (
  `intSocialWebID` int(11) NOT NULL AUTO_INCREMENT,
  `intContactID` bigint(19) DEFAULT NULL,
  `strSocialWebName` varchar(100) DEFAULT NULL,
  `strSocialWebLink` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`intSocialWebID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblcontactsources`
--

DROP TABLE IF EXISTS `tblcontactsources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcontactsources` (
  `intSourceID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `strSourceName` varchar(50) DEFAULT NULL,
  `intContactID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`intSourceID`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblcontacttype`
--

DROP TABLE IF EXISTS `tblcontacttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcontacttype` (
  `intContactTypeID` int(10) NOT NULL,
  `strContactTypeName` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblcontacttype_sf`
--

DROP TABLE IF EXISTS `tblcontacttype_sf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcontacttype_sf` (
  `intContacttypeid` int(11) NOT NULL AUTO_INCREMENT,
  `strContacttypeName` varchar(50) NOT NULL DEFAULT '',
  `dteDateModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`intContacttypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblcontactvenue`
--

DROP TABLE IF EXISTS `tblcontactvenue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcontactvenue` (
  `intVenue` int(10) DEFAULT NULL,
  `strVenueName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblcontactwepopp`
--

DROP TABLE IF EXISTS `tblcontactwepopp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcontactwepopp` (
  `intContactID` bigint(19) NOT NULL,
  `strContactFName` varchar(50) DEFAULT NULL,
  `strContactLName` varchar(50) DEFAULT NULL,
  `strContactEmail` varchar(50) DEFAULT NULL,
  `strContactPhone` varchar(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblcontactype_sync`
--

DROP TABLE IF EXISTS `tblcontactype_sync`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcontactype_sync` (
  `intRecordID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `intContactTypeID` int(11) unsigned NOT NULL DEFAULT '0',
  `intClientID` int(11) unsigned NOT NULL DEFAULT '0',
  `intClientOrgID` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intRecordID`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblcrmfolders`
--

DROP TABLE IF EXISTS `tblcrmfolders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcrmfolders` (
  `intNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `strFolderName` varchar(255) NOT NULL,
  `intOrg_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `intClient_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `strLibraryType` varchar(255) NOT NULL,
  `intParentNodeID` int(10) unsigned NOT NULL DEFAULT '0',
  `intEvent_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `intOnlineSurvey_ID` int(10) unsigned NOT NULL DEFAULT '0',
  `intOnlineForm_ID` int(10) NOT NULL DEFAULT '0',
  `intCampaign_ID` int(10) NOT NULL DEFAULT '0',
  `intUploadedImage_ID` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`intNodeID`),
  KEY `intOrg_ID` (`intOrg_ID`),
  KEY `intClient_ID` (`intClient_ID`),
  KEY `strLibraryType` (`strLibraryType`),
  KEY `intParentNodeID` (`intParentNodeID`),
  KEY `intEvent_ID` (`intEvent_ID`),
  KEY `intUploadedImage_ID` (`intUploadedImage_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=179827 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblcustomer`
--

DROP TABLE IF EXISTS `tblcustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcustomer` (
  `intCustomerID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intCustomerParentID` int(10) unsigned DEFAULT NULL,
  `intCustomerPrimaryLoanID` int(10) unsigned DEFAULT NULL,
  `strCustomerEnteredBy` varchar(21) DEFAULT NULL,
  `strCustomerEditedBy` varchar(21) DEFAULT NULL,
  `dteCustomerEdited` datetime DEFAULT NULL,
  `strCustomerFlagged` varchar(100) DEFAULT NULL,
  `strCustomerPreviousLO` varchar(100) DEFAULT NULL,
  `intCustomerTrackID` int(10) unsigned DEFAULT NULL,
  `intCustomerClientID` int(10) unsigned DEFAULT NULL,
  `blnCustomerHasFU` tinyint(4) DEFAULT NULL,
  `blnCustomerHasCo` tinyint(4) DEFAULT NULL,
  `intCustomerAgentID` int(10) unsigned DEFAULT NULL,
  `dteCustomerClosingDate` datetime DEFAULT NULL,
  `dteCustomerAdded` datetime DEFAULT NULL,
  `dteCustomerFileDestruction` datetime DEFAULT NULL,
  `strCustomerEnvelopeLineBoth` varchar(100) DEFAULT NULL,
  `strCustomerDearLineBoth` varchar(50) DEFAULT NULL,
  `blnCustomerUsesDearBoth` decimal(3,0) DEFAULT NULL,
  `strCustomerFName` varchar(100) DEFAULT NULL,
  `strCustomerLName` varchar(100) DEFAULT NULL,
  `strCustomerNickName` varchar(100) DEFAULT NULL,
  `strCustomerEnvelopeLine` varchar(100) DEFAULT NULL,
  `strCustomerDearLine` varchar(50) DEFAULT NULL,
  `blnCustomerUsesDear` decimal(3,0) DEFAULT NULL,
  `strCustomerCompanyName` varchar(100) DEFAULT NULL,
  `strCustomerCompanyTitle` varchar(100) DEFAULT NULL,
  `strCustomerCompanyAddress1` varchar(100) DEFAULT NULL,
  `strCustomerCompanyAddress2` varchar(100) DEFAULT NULL,
  `strCustomerCompanyCity` varchar(100) DEFAULT NULL,
  `strCustomerCompanyState` varchar(2) DEFAULT NULL,
  `strCustomerCompanyZip` varchar(10) DEFAULT NULL,
  `strCustomerCompanyPhone` varchar(25) DEFAULT NULL,
  `strCustomerCompanyWebsite` varchar(255) DEFAULT NULL,
  `strCustomerWebsite` varchar(255) DEFAULT NULL,
  `strCustomerAddress1` varchar(100) DEFAULT NULL,
  `strCustomerAddress2` varchar(100) DEFAULT NULL,
  `strCustomerAddress3` varchar(50) DEFAULT NULL,
  `strCustomerAddress4` varchar(50) DEFAULT NULL,
  `strCustomerCity` varchar(50) DEFAULT NULL,
  `strCustomerState` varchar(3) DEFAULT NULL,
  `strCustomerZip` varchar(10) DEFAULT NULL,
  `dteCustomerBDay` datetime DEFAULT NULL,
  `intCustomerBDayAcknowledged` int(4) NOT NULL DEFAULT '2011',
  `blnCustomerIsMale` decimal(3,0) DEFAULT NULL,
  `strCustomerPhone` varchar(14) DEFAULT NULL,
  `strCustomerAltPhone` varchar(14) DEFAULT NULL,
  `strCustomerEmail` varchar(100) DEFAULT NULL,
  `intCustomerEmailStatusID` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `strCoCustomerFName` varchar(100) DEFAULT NULL,
  `strCoCustomerLName` varchar(100) DEFAULT NULL,
  `strCoCustomerNickName` varchar(100) DEFAULT NULL,
  `strCoCustomerEnvelopeLine` varchar(100) DEFAULT NULL,
  `strCoCustomerDearLine` varchar(50) DEFAULT NULL,
  `blnCoCustomerUsesDear` decimal(3,0) DEFAULT NULL,
  `strCoCustomerCompanyName` varchar(100) DEFAULT NULL,
  `strCoCustomerCompanyTitle` varchar(100) DEFAULT NULL,
  `strCoCustomerCompanyAddress1` varchar(100) DEFAULT NULL,
  `strCoCustomerCompanyAddress2` varchar(100) DEFAULT NULL,
  `strCoCustomerCompanyCity` varchar(100) DEFAULT NULL,
  `strCoCustomerCompanyState` varchar(2) DEFAULT NULL,
  `strCoCustomerCompanyZip` varchar(10) DEFAULT NULL,
  `strCoCustomerCompanyPhone` varchar(25) DEFAULT NULL,
  `strCoCustomerCompanyWebsite` varchar(60) DEFAULT NULL,
  `strCoCustomerWebsite` varchar(60) DEFAULT NULL,
  `strCoCustomerAddress1` varchar(100) DEFAULT NULL,
  `strCoCustomerAddress2` varchar(100) DEFAULT NULL,
  `strCoCustomerAddress3` varchar(100) DEFAULT NULL,
  `strCoCustomerAddress4` varchar(100) DEFAULT NULL,
  `strCoCustomerCity` varchar(50) DEFAULT NULL,
  `strCoCustomerState` varchar(50) DEFAULT NULL,
  `strCoCustomerZip` varchar(50) DEFAULT NULL,
  `dteCoCustomerBDay` datetime DEFAULT NULL,
  `intCoCustomerBDayAcknowledged` int(4) NOT NULL DEFAULT '2011',
  `blnCoCustomerIsMale` decimal(3,0) DEFAULT NULL,
  `strCoCustomerPhone` varchar(14) DEFAULT NULL,
  `strCoCustomerAltPhone` varchar(14) DEFAULT NULL,
  `strCoCustomerEmail` varchar(100) DEFAULT NULL,
  `intCoCustomerEmailStatusID` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `strCustomerOption` varchar(50) DEFAULT NULL,
  `strCustomerOption2` varchar(50) DEFAULT NULL,
  `strCustomerOption3` varchar(50) DEFAULT NULL,
  `blnCustomerOption1` decimal(3,0) DEFAULT NULL,
  `blnCustomerOption2` decimal(3,0) DEFAULT NULL,
  `blnCustomerOption3` decimal(3,0) DEFAULT NULL,
  `intCustomerOption` int(10) unsigned DEFAULT NULL,
  `dteCustomerOption` datetime DEFAULT NULL,
  `intCustomerStorageID` int(10) unsigned DEFAULT NULL,
  `intCustomerTypeID` int(10) unsigned DEFAULT NULL,
  `intCustomerCustomTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `strCustomerCheckAmount` varchar(50) DEFAULT NULL,
  `strCustomerCheckNum` varchar(50) DEFAULT NULL,
  `intCustomerCRMStatusID` tinyint(3) unsigned DEFAULT NULL,
  `dteCustomerCRMExpirationDate` datetime DEFAULT NULL,
  `dteCustomerLastListedTrigger` datetime DEFAULT NULL,
  `strCustomerContactType` varchar(20) DEFAULT NULL,
  `strCustomerContactPref` varchar(20) DEFAULT NULL,
  `strCoCustomerContactPref` varchar(20) DEFAULT NULL,
  `strCustomerSource` varchar(50) DEFAULT NULL,
  `intCustomerReferredBy` int(10) DEFAULT NULL,
  `strCustomerAddressPref` varchar(20) DEFAULT NULL,
  `dteCustomerLastTouched` datetime DEFAULT NULL,
  `dteEmailOptOutDate` datetime DEFAULT NULL,
  `flag_emailblastcount` smallint(5) unsigned NOT NULL DEFAULT '0',
  `intEmailClientjob_last` int(10) unsigned NOT NULL DEFAULT '0',
  `dteCustomerCreditAppendDate` date DEFAULT NULL,
  `dteCustomerCreditChangeAppendDate` date DEFAULT NULL,
  `extcustomdata` text,
  `extcustomgroup` text,
  `extcontactid` int(10) unsigned NOT NULL DEFAULT '0',
  `extreferid` int(10) unsigned NOT NULL DEFAULT '0',
  `txtcustomernotes` text,
  `extoptout` tinyint(3) unsigned DEFAULT NULL,
  `intoldcustomerid` int(11) DEFAULT NULL,
  `blncustomerhaspicture` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `decAddrLatitude` decimal(11,7) DEFAULT NULL,
  `decAddrLongitude` decimal(11,7) DEFAULT NULL,
  `blnNeedsGeocoded` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `blnAddrError` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `linkClientId` int(10) unsigned NOT NULL DEFAULT '0',
  `linkOrgId` int(10) unsigned NOT NULL DEFAULT '0',
  `intaddressquality` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `intcustomervideolikes` int(10) unsigned NOT NULL DEFAULT '0',
  `blnOutlookSyncItem` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `blnOutlookSyncItemException` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `strOutlookSyncID` varchar(100) DEFAULT NULL,
  `blnMarketWithOtherAgents` tinyint(1) NOT NULL DEFAULT '1',
  `intcustomercobrandid` int(10) unsigned NOT NULL DEFAULT '0',
  `dteaddedfromloan` datetime DEFAULT NULL,
  `intcobrandfromloanid` int(10) unsigned NOT NULL DEFAULT '0',
  `blncustomerhaslogo` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `strcustomerlicense` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`intCustomerID`),
  KEY `intCustomerClientID` (`intCustomerClientID`),
  KEY `intCustomerReferredBy` (`intCustomerReferredBy`),
  KEY `intCustomerEmailStatusID` (`intCustomerEmailStatusID`),
  KEY `intCustomerTypeID` (`intCustomerTypeID`),
  KEY `intCustomerCustomTypeID` (`intCustomerCustomTypeID`),
  KEY `linkClientId` (`linkClientId`),
  KEY `strCustomerEmail` (`strCustomerEmail`),
  KEY `strCoCustomerEmail` (`strCoCustomerEmail`),
  KEY `intcustomercobrandid` (`intcustomercobrandid`)
) ENGINE=InnoDB AUTO_INCREMENT=1686709 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblcustomer_customfield`
--

DROP TABLE IF EXISTS `tblcustomer_customfield`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcustomer_customfield` (
  `intfieldid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intcustomerid` int(10) unsigned NOT NULL DEFAULT '0',
  `txtcustomfielddata` text,
  `xmlcustomfielddata` text,
  PRIMARY KEY (`intfieldid`),
  KEY `intcustomerid` (`intcustomerid`)
) ENGINE=InnoDB AUTO_INCREMENT=261933 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblcustomer_imagesynctasks`
--

DROP TABLE IF EXISTS `tblcustomer_imagesynctasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcustomer_imagesynctasks` (
  `intimagesynctaskid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intcustomerid` int(10) unsigned NOT NULL DEFAULT '0',
  `blnflagdone` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `blnlogo` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intimagesynctaskid`),
  KEY `blnflagdone` (`blnflagdone`)
) ENGINE=InnoDB AUTO_INCREMENT=20614 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblcustomer_implicitsync`
--

DROP TABLE IF EXISTS `tblcustomer_implicitsync`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcustomer_implicitsync` (
  `intCustomerID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intCustomerParentID` int(10) unsigned DEFAULT NULL,
  `intCustomerPrimaryLoanID` int(10) unsigned DEFAULT NULL,
  `strCustomerEnteredBy` varchar(21) DEFAULT NULL,
  `strCustomerEditedBy` varchar(21) DEFAULT NULL,
  `dteCustomerEdited` datetime DEFAULT NULL,
  `strCustomerFlagged` varchar(100) DEFAULT NULL,
  `strCustomerPreviousLO` varchar(100) DEFAULT NULL,
  `intCustomerTrackID` int(10) unsigned DEFAULT NULL,
  `intCustomerClientID` int(10) unsigned DEFAULT NULL,
  `blnCustomerHasFU` tinyint(4) DEFAULT NULL,
  `blnCustomerHasCo` tinyint(4) DEFAULT NULL,
  `intCustomerAgentID` int(10) unsigned DEFAULT NULL,
  `dteCustomerClosingDate` datetime DEFAULT NULL,
  `dteCustomerAdded` datetime DEFAULT NULL,
  `dteCustomerFileDestruction` datetime DEFAULT NULL,
  `strCustomerEnvelopeLineBoth` varchar(100) DEFAULT NULL,
  `strCustomerDearLineBoth` varchar(50) DEFAULT NULL,
  `blnCustomerUsesDearBoth` decimal(3,0) DEFAULT NULL,
  `strCustomerFName` varchar(100) DEFAULT NULL,
  `strCustomerLName` varchar(100) DEFAULT NULL,
  `strCustomerNickName` varchar(100) DEFAULT NULL,
  `strCustomerEnvelopeLine` varchar(100) DEFAULT NULL,
  `strCustomerDearLine` varchar(50) DEFAULT NULL,
  `blnCustomerUsesDear` decimal(3,0) DEFAULT NULL,
  `strCustomerCompanyName` varchar(50) DEFAULT NULL,
  `strCustomerCompanyTitle` varchar(100) DEFAULT NULL,
  `strCustomerCompanyAddress1` varchar(100) DEFAULT NULL,
  `strCustomerCompanyAddress2` varchar(100) DEFAULT NULL,
  `strCustomerCompanyCity` varchar(100) DEFAULT NULL,
  `strCustomerCompanyState` varchar(2) DEFAULT NULL,
  `strCustomerCompanyZip` varchar(10) DEFAULT NULL,
  `strCustomerCompanyPhone` varchar(25) DEFAULT NULL,
  `strCustomerCompanyWebsite` varchar(60) DEFAULT NULL,
  `strCustomerWebsite` varchar(255) DEFAULT NULL,
  `strCustomerAddress1` varchar(100) DEFAULT NULL,
  `strCustomerAddress2` varchar(100) DEFAULT NULL,
  `strCustomerAddress3` varchar(50) DEFAULT NULL,
  `strCustomerAddress4` varchar(50) DEFAULT NULL,
  `strCustomerCity` varchar(50) DEFAULT NULL,
  `strCustomerState` varchar(3) DEFAULT NULL,
  `strCustomerZip` varchar(10) DEFAULT NULL,
  `dteCustomerBDay` datetime DEFAULT NULL,
  `intCustomerBDayAcknowledged` int(4) NOT NULL DEFAULT '2011',
  `blnCustomerIsMale` decimal(3,0) DEFAULT NULL,
  `strCustomerPhone` varchar(14) DEFAULT NULL,
  `strCustomerAltPhone` varchar(14) DEFAULT NULL,
  `strCustomerEmail` varchar(100) DEFAULT NULL,
  `intCustomerEmailStatusID` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `strCoCustomerFName` varchar(100) DEFAULT NULL,
  `strCoCustomerLName` varchar(100) DEFAULT NULL,
  `strCoCustomerNickName` varchar(100) DEFAULT NULL,
  `strCoCustomerEnvelopeLine` varchar(100) DEFAULT NULL,
  `strCoCustomerDearLine` varchar(50) DEFAULT NULL,
  `blnCoCustomerUsesDear` decimal(3,0) DEFAULT NULL,
  `strCoCustomerCompanyName` varchar(50) DEFAULT NULL,
  `strCoCustomerCompanyTitle` varchar(50) DEFAULT NULL,
  `strCoCustomerCompanyAddress1` varchar(50) DEFAULT NULL,
  `strCoCustomerCompanyAddress2` varchar(50) DEFAULT NULL,
  `strCoCustomerCompanyCity` varchar(50) DEFAULT NULL,
  `strCoCustomerCompanyState` varchar(2) DEFAULT NULL,
  `strCoCustomerCompanyZip` varchar(10) DEFAULT NULL,
  `strCoCustomerCompanyPhone` varchar(25) DEFAULT NULL,
  `strCoCustomerCompanyWebsite` varchar(60) DEFAULT NULL,
  `strCoCustomerWebsite` varchar(60) DEFAULT NULL,
  `strCoCustomerAddress1` varchar(50) DEFAULT NULL,
  `strCoCustomerAddress2` varchar(50) DEFAULT NULL,
  `strCoCustomerAddress3` varchar(50) DEFAULT NULL,
  `strCoCustomerAddress4` varchar(50) DEFAULT NULL,
  `strCoCustomerCity` varchar(50) DEFAULT NULL,
  `strCoCustomerState` varchar(50) DEFAULT NULL,
  `strCoCustomerZip` varchar(50) DEFAULT NULL,
  `dteCoCustomerBDay` datetime DEFAULT NULL,
  `intCoCustomerBDayAcknowledged` int(4) NOT NULL DEFAULT '2011',
  `blnCoCustomerIsMale` decimal(3,0) DEFAULT NULL,
  `strCoCustomerPhone` varchar(14) DEFAULT NULL,
  `strCoCustomerAltPhone` varchar(14) DEFAULT NULL,
  `strCoCustomerEmail` varchar(100) DEFAULT NULL,
  `intCoCustomerEmailStatusID` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `strCustomerOption` varchar(50) DEFAULT NULL,
  `strCustomerOption2` varchar(50) DEFAULT NULL,
  `strCustomerOption3` varchar(50) DEFAULT NULL,
  `blnCustomerOption1` decimal(3,0) DEFAULT NULL,
  `blnCustomerOption2` decimal(3,0) DEFAULT NULL,
  `blnCustomerOption3` decimal(3,0) DEFAULT NULL,
  `intCustomerOption` int(10) unsigned DEFAULT NULL,
  `dteCustomerOption` datetime DEFAULT NULL,
  `intCustomerStorageID` int(10) unsigned DEFAULT NULL,
  `intCustomerTypeID` int(10) unsigned DEFAULT NULL,
  `intCustomerCustomTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `strCustomerCheckAmount` varchar(50) DEFAULT NULL,
  `strCustomerCheckNum` varchar(50) DEFAULT NULL,
  `intCustomerCRMStatusID` tinyint(3) unsigned DEFAULT NULL,
  `dteCustomerCRMExpirationDate` datetime DEFAULT NULL,
  `dteCustomerLastListedTrigger` datetime DEFAULT NULL,
  `strCustomerContactType` varchar(20) DEFAULT NULL,
  `strCustomerContactPref` varchar(20) DEFAULT NULL,
  `strCoCustomerContactPref` varchar(20) DEFAULT NULL,
  `strCustomerSource` varchar(50) DEFAULT NULL,
  `intCustomerReferredBy` int(10) DEFAULT NULL,
  `strCustomerAddressPref` varchar(20) DEFAULT NULL,
  `dteCustomerLastTouched` datetime DEFAULT NULL,
  `dteEmailOptOutDate` datetime DEFAULT NULL,
  `flag_emailblastcount` smallint(5) unsigned NOT NULL DEFAULT '0',
  `intEmailClientjob_last` int(10) unsigned NOT NULL DEFAULT '0',
  `dteCustomerCreditAppendDate` date DEFAULT NULL,
  `dteCustomerCreditChangeAppendDate` date DEFAULT NULL,
  `extcustomdata` text,
  `extcustomgroup` text,
  `extcontactid` int(10) unsigned NOT NULL DEFAULT '0',
  `extreferid` int(10) unsigned NOT NULL DEFAULT '0',
  `txtcustomernotes` text,
  `extoptout` tinyint(3) unsigned DEFAULT NULL,
  `intoldcustomerid` int(11) DEFAULT NULL,
  `blncustomerhaspicture` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `decAddrLatitude` decimal(11,7) DEFAULT NULL,
  `decAddrLongitude` decimal(11,7) DEFAULT NULL,
  `blnNeedsGeocoded` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `blnAddrError` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `linkClientId` int(10) unsigned NOT NULL DEFAULT '0',
  `linkOrgId` int(10) unsigned NOT NULL DEFAULT '0',
  `intaddressquality` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `intcustomervideolikes` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intCustomerID`),
  KEY `intCustomerClientID` (`intCustomerClientID`),
  KEY `intCustomerReferredBy` (`intCustomerReferredBy`),
  KEY `intCustomerEmailStatusID` (`intCustomerEmailStatusID`),
  KEY `intCustomerTypeID` (`intCustomerTypeID`),
  KEY `intCustomerCustomTypeID` (`intCustomerCustomTypeID`),
  KEY `linkClientId` (`linkClientId`),
  KEY `strCustomerEmail` (`strCustomerEmail`),
  KEY `strCoCustomerEmail` (`strCoCustomerEmail`)
) ENGINE=InnoDB AUTO_INCREMENT=717855 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblcustomer_oodle`
--

DROP TABLE IF EXISTS `tblcustomer_oodle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcustomer_oodle` (
  `intCustomerID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intCustomerParentID` int(10) unsigned DEFAULT NULL,
  `intCustomerPrimaryLoanID` int(10) unsigned DEFAULT NULL,
  `strCustomerEnteredBy` varchar(21) DEFAULT NULL,
  `strCustomerEditedBy` varchar(21) DEFAULT NULL,
  `dteCustomerEdited` datetime DEFAULT NULL,
  `strCustomerFlagged` varchar(100) DEFAULT NULL,
  `strCustomerPreviousLO` varchar(100) DEFAULT NULL,
  `intCustomerTrackID` int(10) unsigned DEFAULT NULL,
  `intCustomerClientID` int(10) unsigned DEFAULT NULL,
  `blnCustomerHasFU` tinyint(4) DEFAULT NULL,
  `blnCustomerHasCo` tinyint(4) DEFAULT NULL,
  `intCustomerAgentID` int(10) unsigned DEFAULT NULL,
  `dteCustomerClosingDate` datetime DEFAULT NULL,
  `dteCustomerAdded` datetime DEFAULT NULL,
  `dteCustomerFileDestruction` datetime DEFAULT NULL,
  `strCustomerEnvelopeLineBoth` varchar(100) DEFAULT NULL,
  `strCustomerDearLineBoth` varchar(50) DEFAULT NULL,
  `blnCustomerUsesDearBoth` decimal(3,0) DEFAULT NULL,
  `strCustomerFName` varchar(100) DEFAULT NULL,
  `strCustomerLName` varchar(100) DEFAULT NULL,
  `strCustomerNickName` varchar(100) DEFAULT NULL,
  `strCustomerEnvelopeLine` varchar(100) DEFAULT NULL,
  `strCustomerDearLine` varchar(50) DEFAULT NULL,
  `blnCustomerUsesDear` decimal(3,0) DEFAULT NULL,
  `strCustomerCompanyName` varchar(50) DEFAULT NULL,
  `strCustomerCompanyTitle` varchar(100) DEFAULT NULL,
  `strCustomerCompanyAddress1` varchar(100) DEFAULT NULL,
  `strCustomerCompanyAddress2` varchar(100) DEFAULT NULL,
  `strCustomerCompanyCity` varchar(100) DEFAULT NULL,
  `strCustomerCompanyState` varchar(2) DEFAULT NULL,
  `strCustomerCompanyZip` varchar(10) DEFAULT NULL,
  `strCustomerCompanyPhone` varchar(25) DEFAULT NULL,
  `strCustomerCompanyWebsite` varchar(255) DEFAULT NULL,
  `strCustomerWebsite` varchar(255) DEFAULT NULL,
  `strCustomerAddress1` varchar(100) DEFAULT NULL,
  `strCustomerAddress2` varchar(100) DEFAULT NULL,
  `strCustomerAddress3` varchar(50) DEFAULT NULL,
  `strCustomerAddress4` varchar(50) DEFAULT NULL,
  `strCustomerCity` varchar(50) DEFAULT NULL,
  `strCustomerState` varchar(3) DEFAULT NULL,
  `strCustomerZip` varchar(10) DEFAULT NULL,
  `dteCustomerBDay` datetime DEFAULT NULL,
  `intCustomerBDayAcknowledged` int(4) NOT NULL DEFAULT '2011',
  `blnCustomerIsMale` decimal(3,0) DEFAULT NULL,
  `strCustomerPhone` varchar(14) DEFAULT NULL,
  `strCustomerAltPhone` varchar(14) DEFAULT NULL,
  `strCustomerEmail` varchar(100) DEFAULT NULL,
  `intCustomerEmailStatusID` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `strCoCustomerFName` varchar(100) DEFAULT NULL,
  `strCoCustomerLName` varchar(100) DEFAULT NULL,
  `strCoCustomerNickName` varchar(100) DEFAULT NULL,
  `strCoCustomerEnvelopeLine` varchar(100) DEFAULT NULL,
  `strCoCustomerDearLine` varchar(50) DEFAULT NULL,
  `blnCoCustomerUsesDear` decimal(3,0) DEFAULT NULL,
  `strCoCustomerCompanyName` varchar(50) DEFAULT NULL,
  `strCoCustomerCompanyTitle` varchar(50) DEFAULT NULL,
  `strCoCustomerCompanyAddress1` varchar(50) DEFAULT NULL,
  `strCoCustomerCompanyAddress2` varchar(50) DEFAULT NULL,
  `strCoCustomerCompanyCity` varchar(50) DEFAULT NULL,
  `strCoCustomerCompanyState` varchar(2) DEFAULT NULL,
  `strCoCustomerCompanyZip` varchar(10) DEFAULT NULL,
  `strCoCustomerCompanyPhone` varchar(25) DEFAULT NULL,
  `strCoCustomerCompanyWebsite` varchar(60) DEFAULT NULL,
  `strCoCustomerWebsite` varchar(60) DEFAULT NULL,
  `strCoCustomerAddress1` varchar(50) DEFAULT NULL,
  `strCoCustomerAddress2` varchar(50) DEFAULT NULL,
  `strCoCustomerAddress3` varchar(50) DEFAULT NULL,
  `strCoCustomerAddress4` varchar(50) DEFAULT NULL,
  `strCoCustomerCity` varchar(50) DEFAULT NULL,
  `strCoCustomerState` varchar(50) DEFAULT NULL,
  `strCoCustomerZip` varchar(50) DEFAULT NULL,
  `dteCoCustomerBDay` datetime DEFAULT NULL,
  `intCoCustomerBDayAcknowledged` int(4) NOT NULL DEFAULT '2011',
  `blnCoCustomerIsMale` decimal(3,0) DEFAULT NULL,
  `strCoCustomerPhone` varchar(14) DEFAULT NULL,
  `strCoCustomerAltPhone` varchar(14) DEFAULT NULL,
  `strCoCustomerEmail` varchar(100) DEFAULT NULL,
  `intCoCustomerEmailStatusID` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `strCustomerOption` varchar(50) DEFAULT NULL,
  `strCustomerOption2` varchar(50) DEFAULT NULL,
  `strCustomerOption3` varchar(50) DEFAULT NULL,
  `blnCustomerOption1` decimal(3,0) DEFAULT NULL,
  `blnCustomerOption2` decimal(3,0) DEFAULT NULL,
  `blnCustomerOption3` decimal(3,0) DEFAULT NULL,
  `intCustomerOption` int(10) unsigned DEFAULT NULL,
  `dteCustomerOption` datetime DEFAULT NULL,
  `intCustomerStorageID` int(10) unsigned DEFAULT NULL,
  `intCustomerTypeID` int(10) unsigned DEFAULT NULL,
  `intCustomerCustomTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `strCustomerCheckAmount` varchar(50) DEFAULT NULL,
  `strCustomerCheckNum` varchar(50) DEFAULT NULL,
  `intCustomerCRMStatusID` tinyint(3) unsigned DEFAULT NULL,
  `dteCustomerCRMExpirationDate` datetime DEFAULT NULL,
  `dteCustomerLastListedTrigger` datetime DEFAULT NULL,
  `strCustomerContactType` varchar(20) DEFAULT NULL,
  `strCustomerContactPref` varchar(20) DEFAULT NULL,
  `strCoCustomerContactPref` varchar(20) DEFAULT NULL,
  `strCustomerSource` varchar(50) DEFAULT NULL,
  `intCustomerReferredBy` int(10) DEFAULT NULL,
  `strCustomerAddressPref` varchar(20) DEFAULT NULL,
  `dteCustomerLastTouched` datetime DEFAULT NULL,
  `dteEmailOptOutDate` datetime DEFAULT NULL,
  `flag_emailblastcount` smallint(5) unsigned NOT NULL DEFAULT '0',
  `intEmailClientjob_last` int(10) unsigned NOT NULL DEFAULT '0',
  `dteCustomerCreditAppendDate` date DEFAULT NULL,
  `dteCustomerCreditChangeAppendDate` date DEFAULT NULL,
  `extcustomdata` text,
  `extcustomgroup` text,
  `extcontactid` int(10) unsigned NOT NULL DEFAULT '0',
  `extreferid` int(10) unsigned NOT NULL DEFAULT '0',
  `txtcustomernotes` text,
  `extoptout` tinyint(3) unsigned DEFAULT NULL,
  `intoldcustomerid` int(11) DEFAULT NULL,
  `blncustomerhaspicture` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `decAddrLatitude` decimal(11,7) DEFAULT NULL,
  `decAddrLongitude` decimal(11,7) DEFAULT NULL,
  `blnNeedsGeocoded` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `blnAddrError` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `linkClientId` int(10) unsigned NOT NULL DEFAULT '0',
  `linkOrgId` int(10) unsigned NOT NULL DEFAULT '0',
  `intaddressquality` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `intcustomervideolikes` int(10) unsigned NOT NULL DEFAULT '0',
  `blnOutlookSyncItem` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `blnOutlookSyncItemException` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `strOutlookSyncID` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`intCustomerID`),
  KEY `intCustomerClientID` (`intCustomerClientID`),
  KEY `intCustomerReferredBy` (`intCustomerReferredBy`),
  KEY `intCustomerEmailStatusID` (`intCustomerEmailStatusID`),
  KEY `intCustomerTypeID` (`intCustomerTypeID`),
  KEY `intCustomerCustomTypeID` (`intCustomerCustomTypeID`),
  KEY `linkClientId` (`linkClientId`),
  KEY `strCustomerEmail` (`strCustomerEmail`),
  KEY `strCoCustomerEmail` (`strCoCustomerEmail`)
) ENGINE=InnoDB AUTO_INCREMENT=935938 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblcustomer_subscriberid`
--

DROP TABLE IF EXISTS `tblcustomer_subscriberid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcustomer_subscriberid` (
  `intsubdataid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intcustomerid` int(10) unsigned NOT NULL DEFAULT '0',
  `intsubscriberid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `stremail` varchar(100) NOT NULL DEFAULT '',
  `jobid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `datechecked` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(30) NOT NULL DEFAULT 'In Progress',
  `datestatus` datetime DEFAULT NULL,
  PRIMARY KEY (`intsubdataid`),
  KEY `intcustomerid` (`intcustomerid`),
  KEY `jobid` (`jobid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblcustomer_targetrates`
--

DROP TABLE IF EXISTS `tblcustomer_targetrates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcustomer_targetrates` (
  `uuidDeleteKey` varchar(35) NOT NULL COMMENT 'This is a field used to delete with my jquery',
  `intCusID` int(11) NOT NULL COMMENT 'Customer ID',
  `intOrgID` int(11) NOT NULL COMMENT 'Org ID',
  `strProductID` varchar(11) NOT NULL COMMENT 'Product Code',
  `dblRate` decimal(9,4) NOT NULL COMMENT 'Rate',
  `dblPrice` decimal(9,4) NOT NULL COMMENT 'Price',
  `dteTargetMet` datetime DEFAULT NULL COMMENT 'Date this target was met',
  `blnIsComplete` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Marked 1 when target is me',
  `intLockPeriod` int(11) NOT NULL COMMENT 'Lock Period',
  `dteDateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date target was created',
  `intRateID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `intNoTargetProduct` int(11) DEFAULT NULL COMMENT 'Number of products matched when target is met',
  `intClientID` int(11) NOT NULL COMMENT 'Client ID',
  PRIMARY KEY (`intRateID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblcustomercrmstatus`
--

DROP TABLE IF EXISTS `tblcustomercrmstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcustomercrmstatus` (
  `intCustomerCRMStatusID` decimal(3,0) DEFAULT NULL,
  `strCustomerCRMStatusName` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblcustomerdeleted`
--

DROP TABLE IF EXISTS `tblcustomerdeleted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcustomerdeleted` (
  `deleteactionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userID` varchar(21) DEFAULT NULL,
  `intCustomerID` int(10) unsigned DEFAULT NULL,
  `dteDeleted` datetime DEFAULT NULL,
  PRIMARY KEY (`deleteactionID`),
  KEY `intCustomerID` (`intCustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=4717 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblcustomernote`
--

DROP TABLE IF EXISTS `tblcustomernote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcustomernote` (
  `intCustomerNoteID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `strCustomerNote` text,
  `dteCustomerNoteAdded` datetime DEFAULT NULL,
  `intCustomerNoteClientID` int(10) unsigned DEFAULT NULL,
  `intCustomerNoteCustomerID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`intCustomerNoteID`),
  KEY `intCustomerNoteCustomerID` (`intCustomerNoteCustomerID`),
  KEY `intCustomerNoteClientID` (`intCustomerNoteClientID`)
) ENGINE=InnoDB AUTO_INCREMENT=85696 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblcustomersgroups`
--

DROP TABLE IF EXISTS `tblcustomersgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcustomersgroups` (
  `intCustomertoGroupId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intCustomerID` int(10) unsigned DEFAULT NULL,
  `intGroupID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`intCustomertoGroupId`),
  KEY `intCustomerID` (`intCustomerID`),
  KEY `intGroupID` (`intGroupID`)
) ENGINE=InnoDB AUTO_INCREMENT=154525 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblcustomerstracks`
--

DROP TABLE IF EXISTS `tblcustomerstracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcustomerstracks` (
  `intCTID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intCTCustomerID` int(10) unsigned NOT NULL DEFAULT '0',
  `intCTLoanID` int(10) unsigned NOT NULL DEFAULT '0',
  `intCTAgentID` int(10) unsigned NOT NULL DEFAULT '0',
  `intCTTrackID` int(10) unsigned NOT NULL DEFAULT '0',
  `dteCTEffectiveDate` datetime DEFAULT NULL,
  `blnCustomerTrackPrimary` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `intCTID_old` int(10) unsigned NOT NULL DEFAULT '0',
  `intCTTrackid_old` int(10) unsigned NOT NULL DEFAULT '0',
  `blnfinished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `blnnorecords` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `intCTpipelineid` int(10) unsigned NOT NULL DEFAULT '0',
  `blnreinit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intCTID`),
  KEY `intCTCustomerID` (`intCTCustomerID`),
  KEY `intCTLoanID` (`intCTLoanID`),
  KEY `intCTTrackID` (`intCTTrackID`),
  KEY `blnfinished` (`blnfinished`)
) ENGINE=InnoDB AUTO_INCREMENT=500631 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblcustomerstracks_copy_master`
--

DROP TABLE IF EXISTS `tblcustomerstracks_copy_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcustomerstracks_copy_master` (
  `intCTID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intCTCustomerID` int(10) unsigned DEFAULT NULL,
  `intCTLoanID` int(10) unsigned DEFAULT NULL,
  `intCTAgentID` int(10) unsigned DEFAULT NULL,
  `intCTTrackID` int(10) unsigned DEFAULT NULL,
  `dteCTEffectiveDate` datetime DEFAULT NULL,
  `blnCustomerTrackPrimary` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `intCTTrackID_new` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intCTID`),
  KEY `intCTCustomerID` (`intCTCustomerID`),
  KEY `intCTLoanID` (`intCTLoanID`),
  KEY `intCTTrackID` (`intCTTrackID`)
) ENGINE=InnoDB AUTO_INCREMENT=441147 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblcustomerstracks_deletedhistory`
--

DROP TABLE IF EXISTS `tblcustomerstracks_deletedhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcustomerstracks_deletedhistory` (
  `intctdeletedhistoryid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dtectdeleted` datetime DEFAULT NULL,
  `intctdeletedctid` int(10) unsigned NOT NULL,
  `intctdeletedcustomerid` int(10) unsigned NOT NULL DEFAULT '0',
  `intctdeletedtrackid` int(10) unsigned NOT NULL DEFAULT '0',
  `dtectdeletedeffectivedate` datetime DEFAULT NULL,
  `intctdeletedpipelineid` int(10) unsigned NOT NULL DEFAULT '0',
  `strdeletedreason` varchar(255) DEFAULT NULL,
  `intctdeletedloanid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intctdeletedhistoryid`)
) ENGINE=InnoDB AUTO_INCREMENT=24451 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblcustomerstracks_old_final_06192011`
--

DROP TABLE IF EXISTS `tblcustomerstracks_old_final_06192011`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcustomerstracks_old_final_06192011` (
  `intCTID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intCTCustomerID` int(10) unsigned DEFAULT NULL,
  `intCTLoanID` int(10) unsigned DEFAULT NULL,
  `intCTAgentID` int(10) unsigned DEFAULT NULL,
  `intCTTrackID` int(10) unsigned DEFAULT NULL,
  `dteCTEffectiveDate` datetime DEFAULT NULL,
  `blnCustomerTrackPrimary` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `intCTTrackID_new` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intCTID`),
  KEY `intCTCustomerID` (`intCTCustomerID`),
  KEY `intCTLoanID` (`intCTLoanID`),
  KEY `intCTTrackID` (`intCTTrackID`)
) ENGINE=InnoDB AUTO_INCREMENT=441224 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblcustomertask`
--

DROP TABLE IF EXISTS `tblcustomertask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcustomertask` (
  `intCustomerTaskID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intCustomerTaskClientID` int(10) unsigned NOT NULL DEFAULT '0',
  `strCustomerTaskTitle` varchar(255) DEFAULT NULL,
  `dteCustomerTaskDate` datetime DEFAULT NULL,
  `dteCustomerTaskEndDate` date NOT NULL DEFAULT '5000-01-01',
  `dteCustomerTaskEndTime` time NOT NULL DEFAULT '00:30:00',
  `dteCustomerTaskComplete` datetime DEFAULT NULL,
  `strCustomerTaskType` varchar(50) NOT NULL DEFAULT 'Uncategorized',
  `strCustomerTaskNote` text,
  `strCustomerTaskLocation` varchar(255) DEFAULT NULL,
  `intCustomerTaskCustomerID` int(10) unsigned NOT NULL DEFAULT '0',
  `blnAllDay` tinyint(1) NOT NULL DEFAULT '0',
  `blnRepeat` tinyint(1) NOT NULL DEFAULT '0',
  `intRepeatType` int(11) NOT NULL DEFAULT '0',
  `strTaskColor` varchar(6) NOT NULL DEFAULT '0b512c',
  `dteCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dteUpdated` timestamp NULL DEFAULT NULL,
  `intCustomerTaskTrackID` int(11) NOT NULL DEFAULT '0',
  `streventuuid` char(36) DEFAULT NULL,
  `blndeleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `blnOutlookSyncItem` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `blnOutlookSyncException` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intCustomerTaskID`),
  KEY `intCustomerTaskCustomerID` (`intCustomerTaskCustomerID`),
  KEY `intCustomerTaskClientID` (`intCustomerTaskClientID`),
  KEY `blndeleted` (`blndeleted`),
  KEY `intCustomerTaskTrackID` (`intCustomerTaskTrackID`)
) ENGINE=InnoDB AUTO_INCREMENT=188883 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblcustomertask_copy`
--

DROP TABLE IF EXISTS `tblcustomertask_copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcustomertask_copy` (
  `intCustomerTaskID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intCustomerTaskClientID` int(10) unsigned NOT NULL DEFAULT '0',
  `strCustomerTaskTitle` varchar(100) DEFAULT NULL,
  `dteCustomerTaskDate` datetime DEFAULT NULL,
  `dteCustomerTaskEndDate` datetime DEFAULT NULL,
  `dteCustomerTaskComplete` datetime DEFAULT NULL,
  `strCustomerTaskType` varchar(50) NOT NULL DEFAULT 'Uncategorized',
  `strCustomerTaskNote` text,
  `strCustomerTaskLocation` varchar(255) DEFAULT NULL,
  `intCustomerTaskCustomerID` int(10) unsigned NOT NULL DEFAULT '0',
  `blnAllDay` tinyint(1) NOT NULL DEFAULT '0',
  `blnRepeat` tinyint(1) NOT NULL DEFAULT '0',
  `strRepeatFrequency` varchar(20) DEFAULT NULL,
  `dteRepeatUntil` date NOT NULL DEFAULT '5000-01-01',
  PRIMARY KEY (`intCustomerTaskID`),
  KEY `intCustomerTaskCustomerID` (`intCustomerTaskCustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=3060 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblcustomertask_exception`
--

DROP TABLE IF EXISTS `tblcustomertask_exception`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcustomertask_exception` (
  `intExceptionID` int(11) NOT NULL AUTO_INCREMENT,
  `dteDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `intTaskID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`intExceptionID`),
  KEY `dteDate` (`dteDate`),
  KEY `intTaskID` (`intTaskID`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblcustomertaskdeleted`
--

DROP TABLE IF EXISTS `tblcustomertaskdeleted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcustomertaskdeleted` (
  `inttaskdeletedid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `inttaskdeletedtaskid` int(10) unsigned NOT NULL,
  `inttaskdeletedctid` int(10) unsigned NOT NULL DEFAULT '0',
  `inttaskdeletedeventuuid` char(36) DEFAULT NULL,
  `dtedeleted` datetime DEFAULT NULL,
  PRIMARY KEY (`inttaskdeletedid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblcustomertracks_map_used`
--

DROP TABLE IF EXISTS `tblcustomertracks_map_used`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcustomertracks_map_used` (
  `intmapid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `oldcttrackid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `newcttrackid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intmapid`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblcustomfonts`
--

DROP TABLE IF EXISTS `tblcustomfonts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcustomfonts` (
  `intFontID` int(11) NOT NULL AUTO_INCREMENT,
  `intOrgID` int(11) DEFAULT '0',
  `intClientID` int(11) DEFAULT '0',
  `strLibrary` varchar(10) NOT NULL,
  `strFontFileName` varchar(50) NOT NULL,
  `strFontFileNameBold` varchar(50) DEFAULT NULL,
  `strFontFileNameItalic` varchar(50) DEFAULT NULL,
  `strUploadFolder` varchar(50) NOT NULL,
  `blnIsApproved` tinyint(1) NOT NULL DEFAULT '0',
  `dtecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `strFontName` varchar(50) NOT NULL,
  `strFontFileNameBoldItalic` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`intFontID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbldates`
--

DROP TABLE IF EXISTS `tbldates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbldates` (
  `intDateID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `strDateName` varchar(50) DEFAULT NULL,
  `dteDate` datetime DEFAULT NULL,
  `dtemodified` datetime DEFAULT NULL,
  `intinternaluserid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intDateID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblday`
--

DROP TABLE IF EXISTS `tblday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblday` (
  `intDay` int(10) DEFAULT NULL,
  `intDayName` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbldeletedinstance`
--

DROP TABLE IF EXISTS `tbldeletedinstance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbldeletedinstance` (
  `intDeletedInstanceCustomerID` int(10) unsigned NOT NULL DEFAULT '0',
  `intDeletedInstanceEventID` int(10) unsigned NOT NULL DEFAULT '0',
  `intDeletedInstanceClientID` int(10) unsigned NOT NULL DEFAULT '0',
  `intDeletedInstanceInternalEventID` int(10) unsigned NOT NULL DEFAULT '0',
  `dtemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `intDeletedInstanceEventID` (`intDeletedInstanceCustomerID`,`intDeletedInstanceEventID`),
  KEY `intDeletedInstanceCustomerID` (`intDeletedInstanceCustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbldevnotes`
--

DROP TABLE IF EXISTS `tbldevnotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbldevnotes` (
  `intDevNoteID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `strDevNoteName` varchar(100) DEFAULT NULL,
  `strDevNoteDescription` mediumtext,
  `dteTimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `blnIsPrivate` tinyint(1) NOT NULL DEFAULT '0',
  `blnSent` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`intDevNoteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbldevnotes_daily`
--

DROP TABLE IF EXISTS `tbldevnotes_daily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbldevnotes_daily` (
  `intDevNoteID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `strDevNoteName` varchar(100) DEFAULT NULL,
  `strDevNoteDescription` mediumtext,
  `dteTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `blnIsPrivate` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`intDevNoteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbldynamicgroup`
--

DROP TABLE IF EXISTS `tbldynamicgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbldynamicgroup` (
  `intDynamicGroupID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intDynamicGroupClientID` int(10) unsigned DEFAULT NULL,
  `strDynamicGroupName` varchar(100) DEFAULT NULL,
  `strDynamicGroupDescription` varchar(300) DEFAULT NULL,
  `strDynamicGroupQuery` text,
  `txtCustomfield` text,
  `xmlcustomfielddata` text,
  `strDynamicGroupSearchString` text,
  PRIMARY KEY (`intDynamicGroupID`),
  KEY `intDynamicGroupClientID` (`intDynamicGroupClientID`)
) ENGINE=InnoDB AUTO_INCREMENT=2124 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbldynamicgroup_copy`
--

DROP TABLE IF EXISTS `tbldynamicgroup_copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbldynamicgroup_copy` (
  `intDynamicGroupID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intDynamicGroupClientID` int(10) unsigned DEFAULT NULL,
  `strDynamicGroupName` varchar(30) DEFAULT NULL,
  `strDynamicGroupDescription` varchar(300) DEFAULT NULL,
  `strDynamicGroupQuery` text,
  `txtCustomfield` text,
  `xmlcustomfielddata` text,
  PRIMARY KEY (`intDynamicGroupID`),
  KEY `intDynamicGroupClientID` (`intDynamicGroupClientID`)
) ENGINE=InnoDB AUTO_INCREMENT=507 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblemail`
--

DROP TABLE IF EXISTS `tblemail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblemail` (
  `intEmailID` decimal(3,0) NOT NULL,
  `strEmailName` varchar(50) DEFAULT NULL,
  `strEmailURL` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`intEmailID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblemail__bouncedetails`
--

DROP TABLE IF EXISTS `tblemail__bouncedetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblemail__bouncedetails` (
  `intbouncedetailid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stremail` varchar(255) DEFAULT NULL,
  `blnisco` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dtereported` datetime DEFAULT NULL,
  `intbouncecustomerid` int(10) unsigned NOT NULL,
  `intbounceclientjobid` int(10) unsigned NOT NULL DEFAULT '0',
  `txtbouncereason` text,
  `strstatuscode` varchar(50) DEFAULT NULL,
  `dtebounced` datetime DEFAULT NULL,
  `intbouncereportid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`intbouncedetailid`),
  KEY `intbouncecustomerid` (`intbouncecustomerid`),
  KEY `intbounceclientjobid` (`intbounceclientjobid`),
  KEY `intbouncereportid` (`intbouncereportid`),
  KEY `stremail` (`stremail`)
) ENGINE=InnoDB AUTO_INCREMENT=90405 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblemail__bouncereport`
--

DROP TABLE IF EXISTS `tblemail__bouncereport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblemail__bouncereport` (
  `intclientjobreportid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `inttotalbounces` int(10) unsigned NOT NULL DEFAULT '0',
  `txtbouncelist` mediumtext,
  `dtecreated` datetime DEFAULT NULL,
  PRIMARY KEY (`intclientjobreportid`)
) ENGINE=InnoDB AUTO_INCREMENT=491 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblemail__invaliddetails`
--

DROP TABLE IF EXISTS `tblemail__invaliddetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblemail__invaliddetails` (
  `intinvaliddetailid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `strinvalidemail` varchar(255) DEFAULT NULL,
  `blnisco` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dtereported` datetime DEFAULT NULL,
  `intinvalidcustomerid` int(10) unsigned NOT NULL,
  `intinvalidclientjobid` int(10) unsigned NOT NULL DEFAULT '0',
  `txtinvalidreason` text,
  `dteinvalidreported` datetime DEFAULT NULL,
  `intinvalidreportid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`intinvaliddetailid`),
  KEY `intinvalidcustomerid` (`intinvalidcustomerid`),
  KEY `intinvalidclientjobid` (`intinvalidclientjobid`),
  KEY `intinvalidreportid` (`intinvalidreportid`),
  KEY `strinvalidemail` (`strinvalidemail`)
) ENGINE=InnoDB AUTO_INCREMENT=4160 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblemail__invalidreport`
--

DROP TABLE IF EXISTS `tblemail__invalidreport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblemail__invalidreport` (
  `intclientjobinvalidid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `inttotalinvalid` int(10) unsigned NOT NULL DEFAULT '0',
  `txtinvalidlist` mediumtext,
  `dtecreated` datetime DEFAULT NULL,
  PRIMARY KEY (`intclientjobinvalidid`)
) ENGINE=InnoDB AUTO_INCREMENT=471 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblemail__spamdetails`
--

DROP TABLE IF EXISTS `tblemail__spamdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblemail__spamdetails` (
  `intspamdetailid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `strspamemail` varchar(255) DEFAULT NULL,
  `blnisco` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dtereported` datetime DEFAULT NULL,
  `intspamcustomerid` int(10) unsigned NOT NULL,
  `intspamclientjobid` int(10) unsigned NOT NULL DEFAULT '0',
  `txtspamreason` text,
  `dtespamreported` datetime DEFAULT NULL,
  `intspamreportid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`intspamdetailid`),
  KEY `intbouncecustomerid` (`intspamcustomerid`),
  KEY `intbounceclientjobid` (`intspamclientjobid`),
  KEY `intbouncereportid` (`intspamreportid`),
  KEY `stremail` (`strspamemail`)
) ENGINE=InnoDB AUTO_INCREMENT=27596 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblemail__spamreport`
--

DROP TABLE IF EXISTS `tblemail__spamreport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblemail__spamreport` (
  `intclientjobspamid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `inttotalspam` int(10) unsigned NOT NULL DEFAULT '0',
  `txtspamlist` mediumtext,
  `dtecreated` datetime DEFAULT NULL,
  `blnblocklist` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intclientjobspamid`)
) ENGINE=InnoDB AUTO_INCREMENT=968 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblemail_clientjob_scheduler`
--

DROP TABLE IF EXISTS `tblemail_clientjob_scheduler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblemail_clientjob_scheduler` (
  `intemailjobscheduleid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intemailclientjobid` int(10) unsigned NOT NULL DEFAULT '0',
  `intETlistid` bigint(19) unsigned NOT NULL DEFAULT '0',
  `dteCreated` datetime DEFAULT NULL,
  `dteFinished` datetime DEFAULT NULL,
  `flag_done` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `intimportid` bigint(19) unsigned NOT NULL DEFAULT '0',
  `intETjobid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `intemailersystemjobid` int(10) unsigned NOT NULL DEFAULT '0',
  `senddefinitionkey` char(36) NOT NULL DEFAULT '',
  PRIMARY KEY (`intemailjobscheduleid`),
  KEY `intemailclientjobid` (`intemailclientjobid`),
  KEY `intemailersystemjobid` (`intemailersystemjobid`),
  KEY `flag_done` (`flag_done`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblemail_clientjobs`
--

DROP TABLE IF EXISTS `tblemail_clientjobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblemail_clientjobs` (
  `intemailclientjob` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intclientid` int(10) unsigned NOT NULL,
  `intorgid` int(10) unsigned NOT NULL,
  `strSubject` varchar(255) NOT NULL,
  `txtEmailHeader` text,
  `txtEmailBody` mediumtext,
  `txtEmailFooter` text,
  `dteCreated` datetime DEFAULT NULL,
  `dteJobFinished` datetime DEFAULT NULL,
  `intETlistid` bigint(19) unsigned NOT NULL DEFAULT '0',
  `intimportid` bigint(19) unsigned NOT NULL DEFAULT '0',
  `flag_importStatus` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `txtJSON` mediumtext,
  `intETjobid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `intemailersystemjobid` int(10) unsigned NOT NULL DEFAULT '0',
  `blnreported` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intemailclientjob`),
  KEY `intclientid` (`intclientid`),
  KEY `intorgid` (`intorgid`),
  KEY `intETjobid` (`intETjobid`),
  KEY `intemailersystemjobid` (`intemailersystemjobid`),
  KEY `blnreported` (`blnreported`)
) ENGINE=InnoDB AUTO_INCREMENT=73350 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblemail_clientjobs_backup_1272012`
--

DROP TABLE IF EXISTS `tblemail_clientjobs_backup_1272012`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblemail_clientjobs_backup_1272012` (
  `intemailclientjob` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intclientid` int(10) unsigned NOT NULL,
  `intorgid` int(10) unsigned NOT NULL,
  `strSubject` varchar(255) NOT NULL,
  `txtEmailHeader` text,
  `txtEmailBody` mediumtext,
  `txtEmailFooter` text,
  `dteCreated` datetime DEFAULT NULL,
  `dteJobFinished` datetime DEFAULT NULL,
  `intETlistid` bigint(19) unsigned NOT NULL DEFAULT '0',
  `intimportid` bigint(19) unsigned NOT NULL DEFAULT '0',
  `flag_importStatus` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `txtJSON` mediumtext,
  `intETjobid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `intemailersystemjobid` int(10) unsigned NOT NULL DEFAULT '0',
  `blnreported` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intemailclientjob`),
  KEY `intclientid` (`intclientid`),
  KEY `intorgid` (`intorgid`),
  KEY `intETjobid` (`intETjobid`),
  KEY `intemailersystemjobid` (`intemailersystemjobid`),
  KEY `blnreported` (`blnreported`)
) ENGINE=InnoDB AUTO_INCREMENT=45205 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblemail_clientjobs_results`
--

DROP TABLE IF EXISTS `tblemail_clientjobs_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblemail_clientjobs_results` (
  `clientjobresultsid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intclientjobdetailid` int(10) unsigned NOT NULL,
  `dtemodified` datetime DEFAULT NULL,
  `txtResults_cgi` text,
  `txtResults_headers` text,
  PRIMARY KEY (`clientjobresultsid`),
  KEY `intclientjobdetailid` (`intclientjobdetailid`)
) ENGINE=InnoDB AUTO_INCREMENT=564 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblemail_clientjobs_system`
--

DROP TABLE IF EXISTS `tblemail_clientjobs_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblemail_clientjobs_system` (
  `intEmailersystemJobid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `strEmailerJobName` varchar(255) NOT NULL DEFAULT '',
  `strEmailerJobDesc` varchar(255) NOT NULL DEFAULT '',
  `dteCreatedDate` datetime DEFAULT NULL,
  `intRecords` int(10) unsigned NOT NULL DEFAULT '0',
  `dteFinishedDate` datetime DEFAULT NULL,
  `intListID` bigint(10) unsigned NOT NULL DEFAULT '0',
  `body` text,
  `header` text,
  `footer` text,
  `intImportID` bigint(10) unsigned NOT NULL DEFAULT '0',
  `strEmailersubject` varchar(100) NOT NULL DEFAULT '',
  `jobstatus` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `csvfile` varchar(255) NOT NULL DEFAULT '',
  `intETJobid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `txtjson` text,
  `emailconfirm` varchar(75) NOT NULL DEFAULT '',
  PRIMARY KEY (`intEmailersystemJobid`)
) ENGINE=InnoDB AUTO_INCREMENT=332 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblemail_clientjobsdetails`
--

DROP TABLE IF EXISTS `tblemail_clientjobsdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblemail_clientjobsdetails` (
  `intEmailclientjobdetailid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intEmailclientjobid` int(10) unsigned NOT NULL,
  `intCustomerid` int(10) unsigned NOT NULL,
  `txtEmail` mediumtext,
  `dteCreated` datetime DEFAULT NULL,
  `intclientid` int(10) unsigned NOT NULL,
  `intorgid` int(10) unsigned NOT NULL,
  `flag_bademail` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `flag_bounced` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `strcustomeremail` varchar(100) NOT NULL DEFAULT '',
  `flag_co` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `dteOpened` datetime DEFAULT NULL,
  `flag_opened` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `flag_bad` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `intsystemjobid` int(10) unsigned NOT NULL DEFAULT '0',
  `flag_csvwritten` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `unique_open` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lastopen_date` datetime DEFAULT NULL,
  `blnunsubscribe` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dteunsubscribed` datetime DEFAULT NULL,
  `txtOptOut` text,
  `intcustomercobrandid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intEmailclientjobdetailid`),
  KEY `intEmailclientjobid` (`intEmailclientjobid`),
  KEY `intCustomerid` (`intCustomerid`),
  KEY `intclientid` (`intclientid`),
  KEY `intorgid` (`intorgid`)
) ENGINE=InnoDB AUTO_INCREMENT=5758286 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblemail_clientjobsdetails_subject`
--

DROP TABLE IF EXISTS `tblemail_clientjobsdetails_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblemail_clientjobsdetails_subject` (
  `intcdsubjectid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `strsubject` varchar(255) DEFAULT NULL,
  `intcdjobdetailid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`intcdsubjectid`),
  KEY `intcdjobdetailid` (`intcdjobdetailid`)
) ENGINE=InnoDB AUTO_INCREMENT=2793579 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblemail_customsignature`
--

DROP TABLE IF EXISTS `tblemail_customsignature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblemail_customsignature` (
  `intemailsignatureid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intemailsignatureclientid` int(10) unsigned NOT NULL,
  `txtemailsignature` text,
  `dtemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`intemailsignatureid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblemailer_jobs`
--

DROP TABLE IF EXISTS `tblemailer_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblemailer_jobs` (
  `intEmailerJobid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `strEmailerJobName` varchar(255) NOT NULL DEFAULT '',
  `strEmailerJobDesc` text,
  `dteCreatedDate` datetime DEFAULT NULL,
  `intRecords` int(10) unsigned NOT NULL DEFAULT '0',
  `dteFinishedDate` datetime DEFAULT NULL,
  `intListID` int(10) unsigned NOT NULL DEFAULT '0',
  `txtEmailerJobTemplate_Body` text,
  `txtEmailerJobTemplate_Header` text,
  `txtEmailerJobTemplate_Footer` text,
  `txtcsvcontent` text,
  `intImportID` int(10) unsigned DEFAULT '0',
  `strEmailersubject` varchar(100) DEFAULT '0',
  `jobstatus` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `csvfile` varchar(255) NOT NULL DEFAULT '',
  `gtablesettings` text,
  `ntxtdatajson` longtext,
  PRIMARY KEY (`intEmailerJobid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblemailer_process`
--

DROP TABLE IF EXISTS `tblemailer_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblemailer_process` (
  `intProcessid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intloanid` int(10) unsigned NOT NULL DEFAULT '0',
  `intclientid` int(10) unsigned NOT NULL,
  `intcustomerid` int(10) unsigned NOT NULL,
  `strCustomerEmail` varchar(255) NOT NULL DEFAULT '',
  `strClientEmail` varchar(255) NOT NULL DEFAULT '',
  `intorgid` int(10) unsigned NOT NULL,
  `strCustomerfName` varchar(255) NOT NULL DEFAULT '',
  `strCustomerLname` varchar(255) NOT NULL DEFAULT '',
  `strPropertyAddress` varchar(255) NOT NULL DEFAULT '',
  `strPropertyAddress2` varchar(255) NOT NULL DEFAULT '',
  `strPropertyCity` varchar(255) NOT NULL DEFAULT '',
  `strPropertyState` varchar(3) NOT NULL DEFAULT '',
  `strPropertyZip` varchar(20) NOT NULL DEFAULT '',
  `decPropertyValue` decimal(18,2) NOT NULL DEFAULT '0.00',
  `dteLoanClosingDate` datetime DEFAULT NULL,
  `flag_done` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `dteCreated` datetime DEFAULT NULL,
  `strCoCustomerFname` varchar(255) NOT NULL DEFAULT '',
  `strCoCustomerLname` varchar(255) NOT NULL DEFAULT '',
  `strcoCustomerEmail` varchar(255) NOT NULL DEFAULT '',
  `flag_loanaddress` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `flag_badaddress` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `intEmailerJobid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intProcessid`),
  KEY `intEmailerJobid` (`intEmailerJobid`),
  KEY `flag_badaddress` (`flag_badaddress`),
  KEY `intcustomerid` (`intcustomerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblemailer_process_googlebaseresults`
--

DROP TABLE IF EXISTS `tblemailer_process_googlebaseresults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblemailer_process_googlebaseresults` (
  `intGoogleBaseResults` bigint(19) unsigned NOT NULL AUTO_INCREMENT,
  `intProcessid` int(10) unsigned NOT NULL,
  `strLocation` varchar(255) NOT NULL DEFAULT '',
  `dteLastModified` datetime DEFAULT NULL,
  `strListingStatus` varchar(100) NOT NULL DEFAULT '',
  `strProperty_Type` varchar(100) NOT NULL DEFAULT '',
  `strPrice` varchar(100) NOT NULL DEFAULT '',
  `strSQFt` varchar(100) NOT NULL DEFAULT '',
  `dteCreated` datetime NOT NULL,
  `flag_processed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `declat` decimal(18,15) NOT NULL DEFAULT '0.000000000000000',
  `declong` decimal(18,15) NOT NULL DEFAULT '0.000000000000000',
  `strzip` varchar(255) NOT NULL DEFAULT '0',
  `mls` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`intGoogleBaseResults`),
  KEY `intProcessid` (`intProcessid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblemailfooter`
--

DROP TABLE IF EXISTS `tblemailfooter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblemailfooter` (
  `intEmailFooterID` int(11) NOT NULL AUTO_INCREMENT,
  `strEmailFooterName` varchar(50) DEFAULT NULL,
  `strEmailFooterContent` text,
  PRIMARY KEY (`intEmailFooterID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblemailinstance_jobdetails`
--

DROP TABLE IF EXISTS `tblemailinstance_jobdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblemailinstance_jobdetails` (
  `intemailinstancejobdetailid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intemailinstancejobid` int(10) unsigned NOT NULL,
  `inteventinstanceid` int(10) unsigned NOT NULL,
  `intcustomerid` int(10) unsigned NOT NULL,
  `intloanid` int(10) unsigned NOT NULL,
  `intclientid` int(10) unsigned NOT NULL,
  `txtemail` mediumtext,
  `bln_opened` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bln_rejected` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `strrejectreason` varchar(255) NOT NULL DEFAULT '',
  `stremailto` varchar(100) DEFAULT NULL,
  `straddressedto` varchar(20) DEFAULT NULL,
  `strsubject` varchar(155) DEFAULT NULL,
  `flag_opened` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `unique_open` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lastopen_date` datetime DEFAULT NULL,
  `blnunsubscribe` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dteunsubscribed` datetime DEFAULT NULL,
  `flag_co` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `intcustomercobrandid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intemailinstancejobdetailid`),
  KEY `inteventinstanceid` (`inteventinstanceid`)
) ENGINE=InnoDB AUTO_INCREMENT=518446 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblemailinstance_jobs`
--

DROP TABLE IF EXISTS `tblemailinstance_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblemailinstance_jobs` (
  `intemailinstancejobid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dtecreated` datetime DEFAULT NULL,
  `strjobname` varchar(50) NOT NULL DEFAULT '',
  `intetlistid` int(10) unsigned NOT NULL DEFAULT '0',
  `intetjobid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intemailinstancejobid`)
) ENGINE=InnoDB AUTO_INCREMENT=2180 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblemailstatus`
--

DROP TABLE IF EXISTS `tblemailstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblemailstatus` (
  `intEmailStatusID` int(11) NOT NULL AUTO_INCREMENT,
  `strEmailStatusName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`intEmailStatusID`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblemailtemplates`
--

DROP TABLE IF EXISTS `tblemailtemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblemailtemplates` (
  `intTemplateID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `strTemplateName` varchar(100) NOT NULL,
  `strTemplateDesc` varchar(300) NOT NULL,
  `dteCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dteModified` datetime DEFAULT NULL,
  `txtTemplateHeader` text,
  `txtTemplateBody` text,
  `txtTemplateFooter` text,
  `intClientid` int(10) unsigned NOT NULL DEFAULT '0',
  `intTemplateType` tinyint(3) unsigned NOT NULL,
  `intTemplateHeaderID` int(10) unsigned NOT NULL DEFAULT '0',
  `intTemplateFooterID` int(10) unsigned NOT NULL DEFAULT '0',
  `intorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `flag_systemtemplate` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `flag_default` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intTemplateID`),
  KEY `intorgid` (`intorgid`),
  KEY `flag_default` (`flag_default`),
  KEY `flag_systemtemplate` (`flag_systemtemplate`)
) ENGINE=InnoDB AUTO_INCREMENT=3640 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblemailtemplates_system`
--

DROP TABLE IF EXISTS `tblemailtemplates_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblemailtemplates_system` (
  `intTemplateID_sys` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `strTemplateName` varchar(100) NOT NULL,
  `strTemplateDesc` varchar(300) NOT NULL DEFAULT '""',
  `txtTemplateContent` text,
  `dteCreated` datetime DEFAULT NULL,
  `dteModified` datetime DEFAULT NULL,
  `intTemplateType` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`intTemplateID_sys`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblemptyagent`
--

DROP TABLE IF EXISTS `tblemptyagent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblemptyagent` (
  `intAgentID` int(10) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblenvelopetype`
--

DROP TABLE IF EXISTS `tblenvelopetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblenvelopetype` (
  `intEnvelopeTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `strEnvelopeTypeTemplate` varchar(50) DEFAULT NULL,
  `strEnvelopeTypeName` varchar(50) DEFAULT NULL,
  `blnEnvelopeTypeReturn` decimal(3,0) DEFAULT NULL,
  PRIMARY KEY (`intEnvelopeTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblenvoy_badimports`
--

DROP TABLE IF EXISTS `tblenvoy_badimports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblenvoy_badimports` (
  `intbadimportid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `strreason` varchar(50) DEFAULT NULL,
  `txtdata` mediumtext,
  `loname` varchar(200) DEFAULT NULL,
  `dtecreated` datetime DEFAULT NULL,
  `blnfinished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `intclientid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intbadimportid`)
) ENGINE=InnoDB AUTO_INCREMENT=186976 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblev`
--

DROP TABLE IF EXISTS `tblev`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblev` (
  `intSurefireID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `LenderRegistrationIdentifier` varchar(255) DEFAULT NULL,
  `Originator` varchar(255) DEFAULT NULL,
  `Processor` varchar(255) DEFAULT NULL,
  `FirstName_1` varchar(255) DEFAULT NULL,
  `LastName_1` varchar(255) DEFAULT NULL,
  `BirthDate_1` varchar(255) DEFAULT NULL,
  `EMail_1` varchar(255) DEFAULT NULL,
  `HomePhone_1` varchar(255) DEFAULT NULL,
  `WorkPhone_1` varchar(255) DEFAULT NULL,
  `CurrentAddr_1` varchar(255) DEFAULT NULL,
  `CurrentAddr2_1` varchar(255) DEFAULT NULL,
  `CurrentCity_1` varchar(255) DEFAULT NULL,
  `CurrentState_1` varchar(255) DEFAULT NULL,
  `CurrentZip_1` varchar(255) DEFAULT NULL,
  `FirstName_2` varchar(255) DEFAULT NULL,
  `LastName_2` varchar(255) DEFAULT NULL,
  `BirthDate_2` varchar(255) DEFAULT NULL,
  `EMail_2` varchar(255) DEFAULT NULL,
  `HomePhone_2` varchar(255) DEFAULT NULL,
  `WorkPhone_2` varchar(255) DEFAULT NULL,
  `TotalLoanAmount` varchar(255) DEFAULT NULL,
  `ProductCode` varchar(255) DEFAULT NULL,
  `MortgageProgram` varchar(255) DEFAULT NULL,
  `FinalNoteRate` varchar(255) DEFAULT NULL,
  `EnvoyStatusCode` varchar(255) DEFAULT NULL,
  `EnvoyStatusDesc` varchar(255) DEFAULT NULL,
  `LoanPurposeType` varchar(255) DEFAULT NULL,
  `PropertyAddress` varchar(255) DEFAULT NULL,
  `PropertyCity` varchar(255) DEFAULT NULL,
  `PropertyState` varchar(255) DEFAULT NULL,
  `PropertyZip` varchar(255) DEFAULT NULL,
  `ApplicDt` varchar(255) DEFAULT NULL,
  `GFEInitDisclosure` varchar(255) DEFAULT NULL,
  `DocMagicInitialDisclEvent` varchar(255) DEFAULT NULL,
  `Finaled` varchar(255) DEFAULT NULL,
  `InProcess` varchar(255) DEFAULT NULL,
  `AppraisalOrdered` varchar(255) DEFAULT NULL,
  `AppraisalRequested` varchar(255) DEFAULT NULL,
  `AppraisalReceived` varchar(255) DEFAULT NULL,
  `AppraisalApproved` varchar(255) DEFAULT NULL,
  `AppraisalDt` varchar(255) DEFAULT NULL,
  `TitleReportOrdered` varchar(255) DEFAULT NULL,
  `TitleReportRequested` varchar(255) DEFAULT NULL,
  `TitleReportReceived` varchar(255) DEFAULT NULL,
  `TitleReportApproved` varchar(255) DEFAULT NULL,
  `UWSubmitted` varchar(255) DEFAULT NULL,
  `UWApprovewithCond` varchar(255) DEFAULT NULL,
  `UWFinalApproval` varchar(255) DEFAULT NULL,
  `UWDenied` varchar(255) DEFAULT NULL,
  `ClosingSubmitted` varchar(255) DEFAULT NULL,
  `ClosingRequestSubmitted` varchar(255) DEFAULT NULL,
  `ClosingDocsSent` varchar(255) DEFAULT NULL,
  `DocsNeededDate` varchar(255) DEFAULT NULL,
  `DocumentOutDate` varchar(255) DEFAULT NULL,
  `FundsRequestReceived` varchar(255) DEFAULT NULL,
  `FundsOrdered` varchar(255) DEFAULT NULL,
  `SigningDate` varchar(255) DEFAULT NULL,
  `ClosingDate` varchar(255) DEFAULT NULL,
  `Funded` varchar(255) DEFAULT NULL,
  `Shipped` varchar(255) DEFAULT NULL,
  `Purchased` varchar(255) DEFAULT NULL,
  `CancelWithDrawn` varchar(255) DEFAULT NULL,
  `DenialLetter` varchar(255) DEFAULT NULL,
  `ListingAgentCompany` varchar(255) DEFAULT NULL,
  `ListingAgent` varchar(255) DEFAULT NULL,
  `ListingAgentAddress` varchar(255) DEFAULT NULL,
  `ListingAgentCity` varchar(255) DEFAULT NULL,
  `ListingAgentState` varchar(255) DEFAULT NULL,
  `ListingAgentZip` varchar(255) DEFAULT NULL,
  `ListingAgentEmail` varchar(255) DEFAULT NULL,
  `ListingAgentPhone` varchar(255) DEFAULT NULL,
  `SellingBuyersRealtyCompany` varchar(255) DEFAULT NULL,
  `SellingBuyersAgent` varchar(255) DEFAULT NULL,
  `SellingBuyersAgentAddress` varchar(255) DEFAULT NULL,
  `SellingBuyersAgentCity` varchar(255) DEFAULT NULL,
  `SellingBuyersAgentState` varchar(255) DEFAULT NULL,
  `SellingBuyersAgentZip` varchar(255) DEFAULT NULL,
  `SellingBuyersAgentPhone` varchar(255) DEFAULT NULL,
  `SellingBuyersAgentFax` varchar(255) DEFAULT NULL,
  `SellingBuyersAgentEmail` varchar(255) DEFAULT NULL,
  `Archived` varchar(255) DEFAULT NULL,
  `dteDateStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intSurefireID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblevent`
--

DROP TABLE IF EXISTS `tblevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblevent` (
  `intEventID` int(11) NOT NULL AUTO_INCREMENT,
  `strEventName` varchar(100) DEFAULT NULL,
  `blnEventIsGeneric` tinyint(1) unsigned DEFAULT NULL,
  `intEventIndustryID` int(10) unsigned DEFAULT NULL,
  `intEventTypeID` int(10) unsigned DEFAULT NULL,
  `intEventPaperTypeID` int(10) unsigned DEFAULT NULL,
  `intEventEnvelopeTypeID` int(10) unsigned DEFAULT NULL,
  `intEventAddressedFrom` int(1) unsigned DEFAULT NULL,
  `intEventAddressedTo` int(1) unsigned DEFAULT NULL,
  `blnEventMentionsAgent` tinyint(1) unsigned DEFAULT NULL,
  `intEventQBItemID` int(10) unsigned DEFAULT NULL,
  `intEventTemplateID` int(10) unsigned DEFAULT NULL,
  `intEventDaysLead` int(10) unsigned DEFAULT NULL,
  `intEventDueInDays` int(10) unsigned DEFAULT NULL,
  `intEventDateDay` int(10) unsigned DEFAULT NULL,
  `intEventDateMonth` int(10) unsigned DEFAULT NULL,
  `intEventDateYear` int(10) DEFAULT NULL,
  `strEventYearSearch` varchar(50) DEFAULT NULL,
  `blnEventOperator` tinyint(1) unsigned DEFAULT NULL,
  `strEventDependantVariable` varchar(50) DEFAULT NULL,
  `blnEventDependantValue` tinyint(1) unsigned DEFAULT NULL,
  `strEventDependantSearch` varchar(50) DEFAULT NULL,
  `strEventDependantVariable2` varchar(50) DEFAULT NULL,
  `blnEventDependantValue2` tinyint(1) unsigned DEFAULT NULL,
  `strEventDependantSearch2` varchar(50) DEFAULT NULL,
  `strEventDependantVariable3` varchar(50) DEFAULT NULL,
  `blnEventDependantValue3` tinyint(1) unsigned DEFAULT NULL,
  `strEventDependantSearch3` varchar(50) DEFAULT NULL,
  `strEventDateVariable` varchar(50) DEFAULT NULL,
  `strEventDateSearch` varchar(50) DEFAULT NULL,
  `blnEventNeedsFile` tinyint(1) unsigned DEFAULT NULL,
  `strEventStateColumnName` varchar(50) DEFAULT NULL,
  `blnEventStateValue` tinyint(1) unsigned DEFAULT NULL,
  `blnEventDueOn15` tinyint(3) unsigned DEFAULT NULL,
  `inteventorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `inteventclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `inteventcategoryid` int(10) unsigned NOT NULL DEFAULT '0',
  `streventcardcoverpicture` varchar(100) DEFAULT NULL,
  `streventletterpreviewpicture` varchar(100) DEFAULT NULL,
  `decAvgRating` decimal(4,2) unsigned NOT NULL DEFAULT '0.00',
  `streventtype` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`intEventID`),
  KEY `intEventTemplateID` (`intEventTemplateID`),
  KEY `intEventPaperTypeID` (`intEventPaperTypeID`),
  KEY `intEventEnvelopeTypeID` (`intEventEnvelopeTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=1718 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblevent_addressedtotypes`
--

DROP TABLE IF EXISTS `tblevent_addressedtotypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblevent_addressedtotypes` (
  `inteventaddressedtoid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `streventaddressedto` varchar(40) NOT NULL,
  PRIMARY KEY (`inteventaddressedtoid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblevent_cardpictures`
--

DROP TABLE IF EXISTS `tblevent_cardpictures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblevent_cardpictures` (
  `inteventcardpictureid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `streventcardcoverpicture` varchar(255) NOT NULL DEFAULT '',
  `blneventcardpictureDS` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `streventcardpictureDSvars` varchar(255) NOT NULL DEFAULT '',
  `inteventcardorgid` int(10) DEFAULT '0',
  `blneventcardcustommessage` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `blnmergeprimaryandco` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `blnmergeclientfnameandlname` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `strprimaryandcomergeseparator` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`inteventcardpictureid`),
  KEY `inteventcardorgid` (`inteventcardorgid`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblevent_category`
--

DROP TABLE IF EXISTS `tblevent_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblevent_category` (
  `inteventcatid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `strEventCategoryName` varchar(50) NOT NULL,
  `dtemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `inteventindustryid` int(11) NOT NULL DEFAULT '1',
  `intEventCategoryOrgid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`inteventcatid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblevent_customcontent`
--

DROP TABLE IF EXISTS `tblevent_customcontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblevent_customcontent` (
  `intcustomcontentid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intcustomcontenteventid` int(10) unsigned NOT NULL DEFAULT '0',
  `intcustomcontentorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `intcustomcontentclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `dtecreated` datetime DEFAULT NULL,
  `dtemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `txtcontent` mediumtext,
  `strclosing` varchar(255) DEFAULT NULL,
  `txtsurveypage2` mediumtext,
  `strcardcustommsg` varchar(50) DEFAULT NULL,
  `stremailsubject` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`intcustomcontentid`),
  KEY `intcustomcontenteventid` (`intcustomcontenteventid`),
  KEY `intcustomcontentorgid` (`intcustomcontentorgid`),
  KEY `intcustomcontentclientid` (`intcustomcontentclientid`)
) ENGINE=InnoDB AUTO_INCREMENT=2659 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblevent_emails`
--

DROP TABLE IF EXISTS `tblevent_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblevent_emails` (
  `inteventemailid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `strsubject` varchar(255) DEFAULT NULL,
  `txtContent` mediumtext,
  `txtHeader` text,
  `txtFooter` text,
  `txtTheming` mediumtext,
  `inteventid` int(10) unsigned DEFAULT NULL,
  `blnshowheader` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `blnshowfooter` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `blnusecustomcss` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `customcss` text,
  PRIMARY KEY (`inteventemailid`),
  KEY `inteventid` (`inteventid`)
) ENGINE=InnoDB AUTO_INCREMENT=4389 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblevent_favorites`
--

DROP TABLE IF EXISTS `tblevent_favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblevent_favorites` (
  `inteventfavid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `inteventid` int(10) unsigned NOT NULL,
  `intclientid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`inteventfavid`),
  KEY `intclientid` (`intclientid`),
  KEY `inteventid` (`inteventid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblevent_old`
--

DROP TABLE IF EXISTS `tblevent_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblevent_old` (
  `intEventID` int(11) NOT NULL AUTO_INCREMENT,
  `strEventName` varchar(100) DEFAULT NULL,
  `blnEventIsGeneric` tinyint(1) unsigned DEFAULT NULL,
  `intEventIndustryID` int(10) unsigned DEFAULT NULL,
  `intEventTypeID` int(10) unsigned DEFAULT NULL,
  `intEventPaperTypeID` int(10) unsigned DEFAULT NULL,
  `intEventEnvelopeTypeID` int(10) unsigned DEFAULT NULL,
  `intEventAddressedFrom` int(1) unsigned DEFAULT NULL,
  `intEventAddressedTo` int(1) unsigned DEFAULT NULL,
  `blnEventMentionsAgent` tinyint(1) unsigned DEFAULT NULL,
  `intEventQBItemID` int(10) unsigned DEFAULT NULL,
  `intEventTemplateID` int(10) unsigned DEFAULT NULL,
  `intEventDaysLead` int(10) unsigned DEFAULT NULL,
  `intEventDueInDays` int(10) unsigned DEFAULT NULL,
  `intEventDateDay` int(10) unsigned DEFAULT NULL,
  `intEventDateMonth` int(10) unsigned DEFAULT NULL,
  `intEventDateYear` int(10) DEFAULT NULL,
  `strEventYearSearch` varchar(50) DEFAULT NULL,
  `blnEventOperator` tinyint(1) unsigned DEFAULT NULL,
  `strEventDependantVariable` varchar(50) DEFAULT NULL,
  `blnEventDependantValue` tinyint(1) unsigned DEFAULT NULL,
  `strEventDependantSearch` varchar(50) DEFAULT NULL,
  `strEventDependantVariable2` varchar(50) DEFAULT NULL,
  `blnEventDependantValue2` tinyint(1) unsigned DEFAULT NULL,
  `strEventDependantSearch2` varchar(50) DEFAULT NULL,
  `strEventDependantVariable3` varchar(50) DEFAULT NULL,
  `blnEventDependantValue3` tinyint(1) unsigned DEFAULT NULL,
  `strEventDependantSearch3` varchar(50) DEFAULT NULL,
  `strEventDateVariable` varchar(50) DEFAULT NULL,
  `strEventDateSearch` varchar(50) DEFAULT NULL,
  `blnEventNeedsFile` tinyint(1) unsigned DEFAULT NULL,
  `strEventStateColumnName` varchar(50) DEFAULT NULL,
  `blnEventStateValue` tinyint(1) unsigned DEFAULT NULL,
  `blnEventDueOn15` tinyint(3) unsigned DEFAULT NULL,
  `inteventorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `inteventclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `inteventcategoryid` int(10) unsigned NOT NULL DEFAULT '0',
  `streventcardcoverpicture` varchar(100) DEFAULT NULL,
  `streventletterpreviewpicture` varchar(100) DEFAULT NULL,
  `decAvgRating` decimal(4,2) unsigned NOT NULL DEFAULT '0.00',
  `streventtype` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`intEventID`),
  KEY `intEventTemplateID` (`intEventTemplateID`),
  KEY `intEventPaperTypeID` (`intEventPaperTypeID`),
  KEY `intEventEnvelopeTypeID` (`intEventEnvelopeTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=1718 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblevent_old_final_06192011`
--

DROP TABLE IF EXISTS `tblevent_old_final_06192011`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblevent_old_final_06192011` (
  `intEventID` int(11) NOT NULL AUTO_INCREMENT,
  `strEventName` varchar(100) DEFAULT NULL,
  `blnEventIsGeneric` tinyint(1) unsigned DEFAULT NULL,
  `intEventIndustryID` int(10) unsigned DEFAULT NULL,
  `intEventTypeID` int(10) unsigned DEFAULT NULL,
  `intEventPaperTypeID` int(10) unsigned DEFAULT NULL,
  `intEventEnvelopeTypeID` int(10) unsigned DEFAULT NULL,
  `intEventAddressedFrom` int(1) unsigned DEFAULT NULL,
  `intEventAddressedTo` int(1) unsigned DEFAULT NULL,
  `blnEventMentionsAgent` tinyint(1) unsigned DEFAULT NULL,
  `intEventQBItemID` int(10) unsigned DEFAULT NULL,
  `intEventTemplateID` int(10) unsigned DEFAULT NULL,
  `intEventDaysLead` int(10) unsigned DEFAULT NULL,
  `intEventDueInDays` int(10) unsigned DEFAULT NULL,
  `intEventDateDay` int(10) unsigned DEFAULT NULL,
  `intEventDateMonth` int(10) unsigned DEFAULT NULL,
  `intEventDateYear` int(10) DEFAULT NULL,
  `strEventYearSearch` varchar(50) DEFAULT NULL,
  `blnEventOperator` tinyint(1) unsigned DEFAULT NULL,
  `strEventDependantVariable` varchar(50) DEFAULT NULL,
  `blnEventDependantValue` tinyint(1) unsigned DEFAULT NULL,
  `strEventDependantSearch` varchar(50) DEFAULT NULL,
  `strEventDependantVariable2` varchar(50) DEFAULT NULL,
  `blnEventDependantValue2` tinyint(1) unsigned DEFAULT NULL,
  `strEventDependantSearch2` varchar(50) DEFAULT NULL,
  `strEventDependantVariable3` varchar(50) DEFAULT NULL,
  `blnEventDependantValue3` tinyint(1) unsigned DEFAULT NULL,
  `strEventDependantSearch3` varchar(50) DEFAULT NULL,
  `strEventDateVariable` varchar(50) DEFAULT NULL,
  `strEventDateSearch` varchar(50) DEFAULT NULL,
  `blnEventNeedsFile` tinyint(1) unsigned DEFAULT NULL,
  `strEventStateColumnName` varchar(50) DEFAULT NULL,
  `blnEventStateValue` tinyint(1) unsigned DEFAULT NULL,
  `blnEventDueOn15` tinyint(3) unsigned DEFAULT NULL,
  `inteventorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `inteventclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `inteventcategoryid` int(10) unsigned NOT NULL DEFAULT '0',
  `streventcardcoverpicture` varchar(100) DEFAULT NULL,
  `streventletterpreviewpicture` varchar(100) DEFAULT NULL,
  `decAvgRating` decimal(4,2) unsigned NOT NULL DEFAULT '0.00',
  `streventtype` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`intEventID`),
  KEY `intEventTemplateID` (`intEventTemplateID`),
  KEY `intEventPaperTypeID` (`intEventPaperTypeID`),
  KEY `intEventEnvelopeTypeID` (`intEventEnvelopeTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=1718 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblevent_ratings`
--

DROP TABLE IF EXISTS `tblevent_ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblevent_ratings` (
  `tbleventratingid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dtecreated` datetime DEFAULT NULL,
  `inteventid` int(10) unsigned NOT NULL,
  `decRating` decimal(4,2) unsigned DEFAULT NULL,
  `intclientid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`tbleventratingid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblevent_test`
--

DROP TABLE IF EXISTS `tblevent_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblevent_test` (
  `intEventID` int(11) NOT NULL AUTO_INCREMENT,
  `strEventName` varchar(100) DEFAULT NULL,
  `intEventIndustryID` int(10) unsigned DEFAULT NULL,
  `intEventAddressedTo` int(1) unsigned DEFAULT NULL,
  `blnEventMentionsAgent` tinyint(1) unsigned DEFAULT NULL,
  `intEventQBItemID` int(10) unsigned DEFAULT NULL,
  `blnEventNeedsFile` tinyint(1) unsigned DEFAULT NULL,
  `strEventStateColumnName` varchar(50) DEFAULT NULL,
  `blnEventStateValue` tinyint(1) unsigned DEFAULT NULL,
  `blnEventDueOn15` tinyint(3) unsigned DEFAULT NULL,
  `inteventorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `inteventclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `inteventcategoryid` int(10) unsigned NOT NULL DEFAULT '0',
  `streventcardcoverpicture` varchar(100) DEFAULT NULL,
  `streventletterpreviewpicture` varchar(100) DEFAULT NULL,
  `decAvgRating` decimal(4,2) unsigned NOT NULL DEFAULT '0.00',
  `inteventtype` tinyint(3) unsigned DEFAULT NULL,
  `txteventContents` mediumtext,
  `txtKeywords` text,
  `strDescription` text,
  `inteventcardpictureid` int(10) unsigned NOT NULL DEFAULT '0',
  `streventclosing` varchar(255) NOT NULL DEFAULT '',
  `streventcardcustommessage` varchar(30) NOT NULL DEFAULT '',
  `txtsurveypage2` mediumtext,
  `blncobrandwithagent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `blncustombannercolors` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `strtopbannercolor` varchar(10) DEFAULT NULL,
  `strtopbannerfontcolor` varchar(10) DEFAULT NULL,
  `strbottombannercolor` varchar(10) DEFAULT NULL,
  `strbottombannerfontcolor` varchar(10) DEFAULT NULL,
  `blnisDeleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intEventID`),
  KEY `inteventtype` (`inteventtype`),
  KEY `inteventclientid` (`inteventclientid`),
  KEY `inteventorgid` (`inteventorgid`)
) ENGINE=InnoDB AUTO_INCREMENT=5731 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblevent_timing`
--

DROP TABLE IF EXISTS `tblevent_timing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblevent_timing` (
  `inteventtimingid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `inteventtimingeventid` int(10) unsigned NOT NULL,
  `inteventtimingtrackid` int(10) unsigned NOT NULL,
  `inteventtimingorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `inteventtimingclientid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`inteventtimingid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblevent_type`
--

DROP TABLE IF EXISTS `tblevent_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblevent_type` (
  `inteventtypeid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `streventtype` varchar(50) NOT NULL,
  PRIMARY KEY (`inteventtypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbleventcolumn`
--

DROP TABLE IF EXISTS `tbleventcolumn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbleventcolumn` (
  `strEventColumnName` varchar(50) DEFAULT NULL,
  `strEventColumnCommonName` varchar(50) DEFAULT NULL,
  `strEventColumnType` varchar(50) DEFAULT NULL,
  `strEventColumnSymbol` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbleventinstance`
--

DROP TABLE IF EXISTS `tbleventinstance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbleventinstance` (
  `intEventInstanceID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intEventInstanceCustomerID` int(10) unsigned DEFAULT NULL,
  `intEventInstanceEventID` int(10) unsigned DEFAULT NULL,
  `dteEventInstanceDueDate` datetime DEFAULT NULL,
  `dteEventInstanceHitsTaskList` datetime DEFAULT NULL,
  `intEventInstancePrintJobID` int(10) unsigned DEFAULT NULL,
  `intEventInstanceStatusID` int(10) unsigned DEFAULT NULL,
  `intEventInstanceInternalEventID` int(10) unsigned DEFAULT NULL,
  `intEventInstanceClientID` int(10) unsigned DEFAULT NULL,
  `intEventInstanceCTID` int(10) unsigned DEFAULT NULL,
  `intEventInstanceTriggerInstanceID` int(10) unsigned DEFAULT NULL,
  `intEventInstanceEventTypeid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `blnCustomJob` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `eventuuid` char(36) NOT NULL DEFAULT '',
  `blnsub` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `blnccemail` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `intccemailpipedataid` int(10) unsigned DEFAULT NULL,
  `dtecreated` datetime DEFAULT NULL,
  `dtemodified` datetime DEFAULT NULL,
  `inteventinstancetimingyear` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `inteventinstancecustomercobrandid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intEventInstanceID`),
  KEY `intEventInstanceStatusID` (`intEventInstanceStatusID`),
  KEY `intEventInstanceEventID` (`intEventInstanceEventID`),
  KEY `intEventInstanceCustomerID` (`intEventInstanceCustomerID`),
  KEY `intEventInstanceCTID` (`intEventInstanceCTID`),
  KEY `blnCustomJob` (`blnCustomJob`),
  KEY `intEventInstanceEventTypeid` (`intEventInstanceEventTypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=9146249 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbleventinstance_invaliddate_logger`
--

DROP TABLE IF EXISTS `tbleventinstance_invaliddate_logger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbleventinstance_invaliddate_logger` (
  `intctloggerid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vars` mediumtext,
  `intctid` int(10) unsigned NOT NULL DEFAULT '0',
  `intctcustomerid` int(10) unsigned NOT NULL DEFAULT '0',
  `inteventid` int(10) unsigned NOT NULL DEFAULT '0',
  `dtemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datetype` varchar(30) DEFAULT NULL,
  `isSub` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intctloggerid`)
) ENGINE=InnoDB AUTO_INCREMENT=126486 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbleventinstance_logger`
--

DROP TABLE IF EXISTS `tbleventinstance_logger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbleventinstance_logger` (
  `intctloggerid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `internalparamchecker` mediumtext,
  `intctid` int(10) unsigned NOT NULL DEFAULT '0',
  `intctcustomerid` int(10) unsigned NOT NULL DEFAULT '0',
  `inteventid` int(10) unsigned NOT NULL DEFAULT '0',
  `dtemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`intctloggerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbleventinstance_old_final_06192011`
--

DROP TABLE IF EXISTS `tbleventinstance_old_final_06192011`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbleventinstance_old_final_06192011` (
  `intEventInstanceID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intEventInstanceCustomerID` int(10) unsigned DEFAULT NULL,
  `intEventInstanceEventID` int(10) unsigned DEFAULT NULL,
  `dteEventInstanceDueDate` datetime DEFAULT NULL,
  `dteEventInstanceHitsTaskList` datetime DEFAULT NULL,
  `intEventInstancePrintOrderID` int(10) unsigned DEFAULT NULL,
  `intEventInstanceStatusID` int(10) unsigned DEFAULT NULL,
  `intEventInstanceInternalEventID` int(10) unsigned DEFAULT NULL,
  `intEventInstanceClientID` int(10) unsigned DEFAULT NULL,
  `intEventInstanceCTID` int(10) unsigned DEFAULT NULL,
  `intEventInstanceTriggerInstanceID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`intEventInstanceID`),
  KEY `intEventInstanceStatusID` (`intEventInstanceStatusID`),
  KEY `intEventInstanceEventID` (`intEventInstanceEventID`),
  KEY `intEventInstanceCustomerID` (`intEventInstanceCustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=3638776 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbleventinstance_test`
--

DROP TABLE IF EXISTS `tbleventinstance_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbleventinstance_test` (
  `intEventInstanceID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intEventInstanceCustomerID` int(10) unsigned DEFAULT NULL,
  `intEventInstanceEventID` int(10) unsigned DEFAULT NULL,
  `dteEventInstanceDueDate` datetime DEFAULT NULL,
  `dteEventInstanceHitsTaskList` datetime DEFAULT NULL,
  `intEventInstancePrintOrderID` int(10) unsigned DEFAULT NULL,
  `intEventInstanceStatusID` int(10) unsigned DEFAULT NULL,
  `intEventInstanceInternalEventID` int(10) unsigned DEFAULT NULL,
  `intEventInstanceClientID` int(10) unsigned DEFAULT NULL,
  `intEventInstanceCTID` int(10) unsigned DEFAULT NULL,
  `intEventInstanceTriggerInstanceID` int(10) unsigned DEFAULT NULL,
  `intEventInstanceEventTypeID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `blnCustomJob` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intEventInstanceID`),
  KEY `intEventInstanceStatusID` (`intEventInstanceStatusID`),
  KEY `intEventInstanceEventID` (`intEventInstanceEventID`),
  KEY `intEventInstanceCustomerID` (`intEventInstanceCustomerID`),
  KEY `intEventInstanceEventTypeID` (`intEventInstanceEventTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbleventinstance_timingtype`
--

DROP TABLE IF EXISTS `tbleventinstance_timingtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbleventinstance_timingtype` (
  `inteventinstancetimingtypeid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `timingtype` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`inteventinstancetimingtypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbleventstatus`
--

DROP TABLE IF EXISTS `tbleventstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbleventstatus` (
  `intEventStatusID` int(11) NOT NULL AUTO_INCREMENT,
  `strEventStatusName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`intEventStatusID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbleventtype`
--

DROP TABLE IF EXISTS `tbleventtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbleventtype` (
  `intEventTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `strEventTypeName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`intEventTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblfeaturerequests`
--

DROP TABLE IF EXISTS `tblfeaturerequests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblfeaturerequests` (
  `intFeatureID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `strFeatureName` varchar(255) DEFAULT NULL,
  `strFeatureDescription` mediumtext,
  `intSubmittedBy` int(11) DEFAULT NULL,
  `dteDateStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intFeatureID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblfiscalmonth`
--

DROP TABLE IF EXISTS `tblfiscalmonth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblfiscalmonth` (
  `intFiscalMonth` decimal(3,0) DEFAULT NULL,
  `intFiscalYear` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblflyer_static`
--

DROP TABLE IF EXISTS `tblflyer_static`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblflyer_static` (
  `intstaticflyerid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intstaticflyereventid` int(11) DEFAULT NULL,
  `blnflyerallowcustomcolors` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `intflyerimageid` int(10) unsigned NOT NULL DEFAULT '0',
  `strflyercustomcolor` varchar(10) DEFAULT NULL,
  `blnallowcobrand` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intstaticflyerid`),
  KEY `intstaticflyereventid` (`intstaticflyereventid`),
  KEY `blnflyerallowcustomcolors` (`blnflyerallowcustomcolors`),
  KEY `intflyerimageid` (`intflyerimageid`),
  KEY `blnallowcobrand` (`blnallowcobrand`)
) ENGINE=InnoDB AUTO_INCREMENT=243 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblftptransactions`
--

DROP TABLE IF EXISTS `tblftptransactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblftptransactions` (
  `intftptransactionid` int(11) NOT NULL AUTO_INCREMENT,
  `intorg_id` int(11) NOT NULL,
  `intclient_id` int(11) DEFAULT NULL,
  `intloanapp_id` int(11) NOT NULL,
  `strfilename` varchar(255) NOT NULL,
  `dtetimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `strftpresponse` text,
  `blnsuccess` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intftptransactionid`),
  KEY `intorg_id` (`intorg_id`),
  KEY `intclient_id` (`intclient_id`),
  KEY `intloanapp_id` (`intloanapp_id`),
  KEY `blnsuccess` (`blnsuccess`)
) ENGINE=InnoDB AUTO_INCREMENT=1458 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblgeocodequality`
--

DROP TABLE IF EXISTS `tblgeocodequality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblgeocodequality` (
  `intQualityID` tinyint(2) NOT NULL,
  `strQualitlyDescription` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`intQualityID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblglobalemailstatus`
--

DROP TABLE IF EXISTS `tblglobalemailstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblglobalemailstatus` (
  `intGlobalEmaiStatusID` int(10) NOT NULL,
  `strGlobalEmail` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblglobalvars`
--

DROP TABLE IF EXISTS `tblglobalvars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblglobalvars` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dteTriggerUpdate` datetime DEFAULT NULL,
  `dteAddressCheck` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblgroup`
--

DROP TABLE IF EXISTS `tblgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblgroup` (
  `intGroupID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intGroupClientID` int(10) unsigned DEFAULT NULL,
  `strGroupName` varchar(30) DEFAULT NULL,
  `strGroupDescription` varchar(300) DEFAULT NULL,
  `blnOutlookSync` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intGroupID`)
) ENGINE=InnoDB AUTO_INCREMENT=2605 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblgroupofcontact`
--

DROP TABLE IF EXISTS `tblgroupofcontact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblgroupofcontact` (
  `intContacttoGroupid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intGroupID` int(10) unsigned DEFAULT NULL,
  `intContactID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`intContacttoGroupid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblhelp`
--

DROP TABLE IF EXISTS `tblhelp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblhelp` (
  `messageID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `message` varchar(350) NOT NULL,
  `datestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`messageID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblimplicitsync_deletedContacts`
--

DROP TABLE IF EXISTS `tblimplicitsync_deletedContacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblimplicitsync_deletedContacts` (
  `intDeletedItemID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `intCustomerID` int(10) unsigned NOT NULL DEFAULT '0',
  `intClientID` int(10) unsigned NOT NULL DEFAULT '0',
  `dteDeleted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blnSynced` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intDeletedItemID`)
) ENGINE=InnoDB AUTO_INCREMENT=20574 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblimplicitsync_devLog`
--

DROP TABLE IF EXISTS `tblimplicitsync_devLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblimplicitsync_devLog` (
  `intLogID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `intInternalUserID` int(11) unsigned DEFAULT '0',
  `intClientID` int(11) unsigned DEFAULT '0',
  `dteTimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `strNotes` mediumtext,
  PRIMARY KEY (`intLogID`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblimplicitsync_log`
--

DROP TABLE IF EXISTS `tblimplicitsync_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblimplicitsync_log` (
  `intLogID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `strSyncSessionID` varchar(60) DEFAULT NULL,
  `strSyncType` varchar(60) DEFAULT NULL,
  `strItemType` varchar(60) DEFAULT NULL,
  `intLogClientID` int(11) unsigned NOT NULL DEFAULT '0',
  `txtRecordJson` mediumtext,
  `strEventMessage` varchar(255) DEFAULT NULL,
  `dteTimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `blnIsError` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intLogID`)
) ENGINE=InnoDB AUTO_INCREMENT=647 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblimplicitsync_settings`
--

DROP TABLE IF EXISTS `tblimplicitsync_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblimplicitsync_settings` (
  `intImplicitSyncSettingsID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `blnSyncContacts` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `blnDeleteContactsFromOutlook` tinyint(1) NOT NULL DEFAULT '0',
  `blnDeleteContactsFromWeb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `blnSyncCalendar` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `blnDeleteTasksFromOutlook` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `blnDeleteTasksFromWeb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `blnSurefirePriority` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `intImplicitSyncSettingsClientID` int(11) unsigned NOT NULL,
  `intImplicitSyncSettingsOrgID` int(11) unsigned NOT NULL,
  `dteClientDownload` datetime DEFAULT NULL,
  `intDaysCalendarSync` smallint(5) unsigned NOT NULL DEFAULT '14',
  `strImplicitSyncVersion` varchar(60) DEFAULT NULL,
  `blnAddCustomerBlock` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `blnAddCustomerTitle` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `intSendLimitEmail` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intImplicitSyncSettingsID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblimplicitsync_version`
--

DROP TABLE IF EXISTS `tblimplicitsync_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblimplicitsync_version` (
  `intRecordID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `strCurrentVersion` varchar(25) DEFAULT NULL,
  `strPreviousVersion` varchar(25) DEFAULT NULL,
  `strFileName` varchar(60) DEFAULT NULL,
  `dteTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isCurrentVersion` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intRecordID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblindustry`
--

DROP TABLE IF EXISTS `tblindustry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblindustry` (
  `intIndustryID` int(11) NOT NULL AUTO_INCREMENT,
  `strIndustryName` varchar(50) DEFAULT NULL,
  `strIndustryProduct` varchar(50) DEFAULT NULL,
  `strIndustryClient` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`intIndustryID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblindustryname`
--

DROP TABLE IF EXISTS `tblindustryname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblindustryname` (
  `intIndustryID` int(10) DEFAULT NULL,
  `strIndustryName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblinternalevent`
--

DROP TABLE IF EXISTS `tblinternalevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblinternalevent` (
  `intInternalEventID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `strInternalEventName` varchar(100) DEFAULT NULL,
  `intInternalEventTypeID` int(10) unsigned DEFAULT NULL,
  `intInternalEventPaperTypeID` int(10) unsigned DEFAULT NULL,
  `intInternalEventEnvelopeTypeID` int(10) unsigned DEFAULT NULL,
  `intInternalEventAddressedFrom` decimal(3,0) DEFAULT NULL,
  `intInternalEventTemplateID` int(10) unsigned DEFAULT NULL,
  `intInternalEventDaysLead` int(10) unsigned DEFAULT NULL,
  `intInternalEventDueInDays` int(10) unsigned DEFAULT NULL,
  `intInternalEventDateDay` int(10) unsigned DEFAULT NULL,
  `intInternalEventDateMonth` int(10) unsigned DEFAULT NULL,
  `intInternalEventDateYear` int(10) unsigned DEFAULT NULL,
  `strInternalEventDateVariable` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`intInternalEventID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblinternalnews`
--

DROP TABLE IF EXISTS `tblinternalnews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblinternalnews` (
  `intInternalNewsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dteInternalNewsDate` datetime DEFAULT NULL,
  `strInternalNews` text,
  PRIMARY KEY (`intInternalNewsID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblinternaltask`
--

DROP TABLE IF EXISTS `tblinternaltask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblinternaltask` (
  `intInternalTaskID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `strInternalTaskName` varchar(255) DEFAULT NULL,
  `dteInternalTaskDue` datetime DEFAULT NULL,
  `dteInternalTaskCompleted` datetime DEFAULT NULL,
  `intInternalTaskQBItemID` int(10) unsigned DEFAULT NULL,
  `intInternalTaskClientID` int(10) unsigned DEFAULT NULL,
  `intInternalTaskOrgID` int(10) unsigned DEFAULT NULL,
  `intInternalTaskCustomerID` int(10) unsigned DEFAULT NULL,
  `intInternalTaskLoanID` int(10) unsigned DEFAULT NULL,
  `intInternalTaskEventID` int(10) unsigned DEFAULT NULL,
  `intInternalTaskProductID` decimal(3,0) DEFAULT NULL,
  `intInternalTaskInternalUserID` int(10) unsigned DEFAULT NULL,
  `strInternalTaskRequestedBy` varchar(21) DEFAULT NULL,
  `blnInternalTaskInvoiced` tinyint(1) unsigned DEFAULT NULL,
  `intInternalTaskCTID` int(10) unsigned DEFAULT NULL,
  `intInternalTaskQuantity` int(10) unsigned DEFAULT NULL,
  `intInternalTaskOndemandPrintID` int(10) unsigned DEFAULT NULL,
  `blnInternalTaskIsPaid` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`intInternalTaskID`),
  KEY `intInternalTaskClientID` (`intInternalTaskClientID`),
  KEY `intInternalTaskCustomerID` (`intInternalTaskCustomerID`),
  KEY `intInternalTaskEventID` (`intInternalTaskEventID`),
  KEY `blnInternalTaskInvoiced` (`intInternalTaskQBItemID`,`blnInternalTaskInvoiced`),
  KEY `intInternalTaskCTID` (`intInternalTaskCTID`)
) ENGINE=InnoDB AUTO_INCREMENT=418568 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblinternaltime`
--

DROP TABLE IF EXISTS `tblinternaltime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblinternaltime` (
  `intRecordID` int(11) NOT NULL AUTO_INCREMENT,
  `intUserID` int(11) NOT NULL,
  `intProjectID` int(11) DEFAULT NULL,
  `dteTimeIn` datetime DEFAULT NULL,
  `dteTimeOut` datetime DEFAULT NULL,
  `strComments` varchar(500) DEFAULT NULL,
  `blnIsComplete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`intRecordID`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblinternaltime_day`
--

DROP TABLE IF EXISTS `tblinternaltime_day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblinternaltime_day` (
  `intDayId` int(11) NOT NULL AUTO_INCREMENT,
  `intUserID` int(11) NOT NULL,
  `dteDayIn` datetime DEFAULT NULL,
  `dteDayOut` datetime DEFAULT NULL,
  `blnIsCompelte` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`intDayId`)
) ENGINE=InnoDB AUTO_INCREMENT=811 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblinternaltime_projects`
--

DROP TABLE IF EXISTS `tblinternaltime_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblinternaltime_projects` (
  `intProjectID` int(11) NOT NULL AUTO_INCREMENT,
  `intUserID` int(11) NOT NULL,
  `strProjectName` varchar(100) DEFAULT NULL,
  `strProjectDescription` varchar(500) DEFAULT NULL,
  `dteCreatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `intParentProjectID` int(11) DEFAULT NULL,
  `intOwnerID` int(11) NOT NULL,
  `lstParticipants` varchar(200) DEFAULT '0',
  `blnIsActive` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`intProjectID`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblinternaltrack`
--

DROP TABLE IF EXISTS `tblinternaltrack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblinternaltrack` (
  `intInternalTrackID` int(11) NOT NULL AUTO_INCREMENT,
  `strInternalTrackName` varchar(50) DEFAULT NULL,
  `intInternalTrackIndustryID` decimal(3,0) DEFAULT NULL,
  `intInternalTrackBusinessUnit1ID` decimal(3,0) DEFAULT NULL,
  `intInternalTrackBusinessUnit2ID` decimal(3,0) DEFAULT NULL,
  `intInternalTrackBusinessUnit3ID` decimal(3,0) DEFAULT NULL,
  PRIMARY KEY (`intInternalTrackID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblinternaltracksevents`
--

DROP TABLE IF EXISTS `tblinternaltracksevents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblinternaltracksevents` (
  `intInteernalTracktoEventid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intInternalTrackID` int(10) unsigned DEFAULT NULL,
  `intInternalEventID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`intInteernalTracktoEventid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblinternaluser`
--

DROP TABLE IF EXISTS `tblinternaluser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblinternaluser` (
  `intInternalUserID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `strInternalUserFName` varchar(50) DEFAULT NULL,
  `strInternalUserLName` varchar(50) DEFAULT NULL,
  `strInternalUserCompanyName` varchar(50) DEFAULT NULL,
  `strInternalUserUserName` varchar(12) DEFAULT NULL,
  `strInternalUserPassword` mediumtext,
  `intInternalUserRoleID` decimal(3,0) DEFAULT NULL,
  `blnInternalUserIsActive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `strInternalUserEmail` varchar(50) DEFAULT NULL,
  `strInternalUserTitle` varchar(50) DEFAULT NULL,
  `strInternalUserPhone` varchar(14) DEFAULT NULL,
  `strInternalUserPhoneExt` varchar(7) DEFAULT NULL,
  `strInternalUserMobile` varchar(14) DEFAULT NULL,
  `dteInternalUserStartDate` datetime DEFAULT NULL,
  `dteInternalUserBDay` datetime DEFAULT NULL,
  `strInternalUserAddress1` varchar(50) DEFAULT NULL,
  `strInternalUserAddress2` varchar(50) DEFAULT NULL,
  `strInternalUserCity` varchar(50) DEFAULT NULL,
  `strInternalUserState` varchar(4) DEFAULT NULL,
  `strInternalUserZip` varchar(5) DEFAULT NULL,
  `blnInternalUserHasSignature` decimal(3,0) DEFAULT NULL,
  `dteLastLogin` datetime DEFAULT NULL,
  `dtePasswordChanged` datetime DEFAULT NULL,
  `strPreviousPasswords` mediumtext,
  `intPasswordDays` int(11) NOT NULL DEFAULT '0',
  `blnisdeveloper` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `blnHasSupportLogin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `intJitbitID` int(10) DEFAULT NULL,
  PRIMARY KEY (`intInternalUserID`),
  KEY `intInternalUserRoleID` (`intInternalUserRoleID`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblinternaluser_backup02202012`
--

DROP TABLE IF EXISTS `tblinternaluser_backup02202012`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblinternaluser_backup02202012` (
  `intInternalUserID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `strInternalUserFName` varchar(50) DEFAULT NULL,
  `strInternalUserLName` varchar(50) DEFAULT NULL,
  `strInternalUserCompanyName` varchar(50) DEFAULT NULL,
  `strInternalUserUserName` varchar(12) DEFAULT NULL,
  `strInternalUserPassword` mediumtext,
  `intInternalUserRoleID` decimal(3,0) DEFAULT NULL,
  `blnInternalUserIsActive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `strInternalUserEmail` varchar(50) DEFAULT NULL,
  `strInternalUserTitle` varchar(50) DEFAULT NULL,
  `strInternalUserPhone` varchar(14) DEFAULT NULL,
  `strInternalUserPhoneExt` varchar(7) DEFAULT NULL,
  `strInternalUserMobile` varchar(14) DEFAULT NULL,
  `dteInternalUserStartDate` datetime DEFAULT NULL,
  `dteInternalUserBDay` datetime DEFAULT NULL,
  `strInternalUserAddress1` varchar(50) DEFAULT NULL,
  `strInternalUserAddress2` varchar(50) DEFAULT NULL,
  `strInternalUserCity` varchar(50) DEFAULT NULL,
  `strInternalUserState` varchar(4) DEFAULT NULL,
  `strInternalUserZip` varchar(5) DEFAULT NULL,
  `blnInternalUserHasSignature` decimal(3,0) DEFAULT NULL,
  `dteLastLogin` datetime DEFAULT NULL,
  `dtePasswordChanged` datetime DEFAULT NULL,
  `strPreviousPasswords` mediumtext,
  `intPasswordDays` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`intInternalUserID`),
  KEY `intInternalUserRoleID` (`intInternalUserRoleID`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblknownissues`
--

DROP TABLE IF EXISTS `tblknownissues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblknownissues` (
  `intIssueID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `strIssueTitle` varchar(255) DEFAULT NULL,
  `strIssueDescription` varchar(255) DEFAULT NULL,
  `dteIssueCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dteIssueResolved` datetime DEFAULT NULL,
  `blnIsActive` tinyint(1) DEFAULT '1',
  `intPriority` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`intIssueID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbllanguage`
--

DROP TABLE IF EXISTS `tbllanguage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbllanguage` (
  `strLanguageName` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblloan`
--

DROP TABLE IF EXISTS `tblloan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblloan` (
  `intLoanID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `strLoanEnteredBy` varchar(21) DEFAULT NULL,
  `intLoan2ndID` int(10) unsigned DEFAULT NULL,
  `intLoanCustomerID` int(10) unsigned DEFAULT NULL,
  `intLoanTrackID` int(10) unsigned DEFAULT NULL,
  `dteLoanClosingDate` datetime DEFAULT NULL,
  `intLoanAnniversaryAck` int(4) NOT NULL DEFAULT '2011' COMMENT 'Used by Calendar',
  `dteLoanModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dteLoanAdded` datetime DEFAULT NULL,
  `dteLoanScanned` datetime DEFAULT NULL,
  `intLoanScanDays` decimal(3,0) DEFAULT NULL,
  `intLoanScanWeekdays` decimal(3,0) DEFAULT NULL,
  `intLoanScannedByID` int(10) unsigned DEFAULT NULL,
  `dteLoanFileDestruction` datetime DEFAULT NULL,
  `intLoanStorageID` int(10) unsigned DEFAULT NULL,
  `strLoanAddress1` varchar(50) DEFAULT NULL,
  `strLoanAddress2` varchar(50) DEFAULT NULL,
  `strLoanCity` varchar(50) DEFAULT NULL,
  `strLoanState` char(2) DEFAULT NULL,
  `strLoanZip` varchar(15) DEFAULT NULL,
  `strLoanCheckAmount` varchar(50) DEFAULT NULL,
  `strLoanCheckNum` varchar(50) DEFAULT NULL,
  `intLoanTypeID` decimal(3,0) DEFAULT NULL,
  `intLoanNumID` decimal(3,0) DEFAULT NULL,
  `intLoanPurposeID` decimal(3,0) DEFAULT NULL,
  `intLoanPropertyID` decimal(3,0) DEFAULT NULL,
  `intLoanProductID` int(10) unsigned DEFAULT NULL,
  `dblLoanAmount` decimal(12,2) DEFAULT NULL,
  `dblLoanRate` decimal(7,4) DEFAULT NULL,
  `intLoanTerm` int(10) unsigned DEFAULT NULL,
  `intLoanStatusID` tinyint(3) unsigned DEFAULT NULL,
  `intLoanAgentID` int(10) unsigned DEFAULT NULL,
  `strLoanFileNumber` varchar(50) DEFAULT NULL,
  `dblLoanPropertyValue` decimal(12,2) DEFAULT NULL,
  `dteLoanLastPaymentTrigger` datetime DEFAULT NULL,
  `dteLoanLastRateTrigger` datetime DEFAULT NULL,
  `dteLoanLastBalanceTrigger` datetime DEFAULT NULL,
  `dteLoanLastEquityTrigger` datetime DEFAULT NULL,
  `blnLoanSFInit` decimal(3,0) DEFAULT NULL,
  `dteLoanLastListedTrigger` datetime DEFAULT NULL,
  `intLoanAgentCustomerID` int(10) DEFAULT NULL,
  `strArmTypeDesc` varchar(50) DEFAULT NULL,
  `strloancustomstatus` varchar(50) DEFAULT NULL,
  `intloanorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `strloandba` varchar(100) DEFAULT NULL,
  `blnNeedCRMSchedule` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dteapiloancreationdate` datetime DEFAULT NULL,
  `blnmarkfordeletion` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `blnislatestPrimary` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `intloanoldcustomerid` int(11) DEFAULT NULL,
  `flag_fromapi` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `decAddrLatitude` decimal(11,7) DEFAULT NULL,
  `decAddrLongitude` decimal(11,7) DEFAULT NULL,
  `blnNeedsGeocoded` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `blnAddrError` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `intaddressquality` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `intloancustomstatusid` int(10) unsigned NOT NULL DEFAULT '0',
  `intloanlistingagentcustomerid` int(10) unsigned DEFAULT NULL,
  `intloanprocessorcustomerid` int(10) unsigned DEFAULT NULL,
  `intloanccscore` smallint(5) unsigned NOT NULL DEFAULT '0',
  `dteloananticipatedclosingdate` datetime DEFAULT NULL,
  `intloanlikelytoclose` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `dteloanopened` datetime DEFAULT NULL,
  `strloanpropertyhousingtype` varchar(50) DEFAULT NULL,
  `strloanpropertyhousingother` varchar(255) DEFAULT NULL,
  `txtloannotes` mediumtext,
  `strapiloanproduct` varchar(255) DEFAULT NULL,
  `strloanlendernumber` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`intLoanID`),
  KEY `intLoanCustomerID` (`intLoanCustomerID`),
  KEY `intLoanAgentCustomerID` (`intLoanAgentCustomerID`),
  KEY `intloanorgid` (`intloanorgid`),
  KEY `strLoanFileNumber` (`strLoanFileNumber`),
  KEY `intaddressquality` (`intaddressquality`),
  KEY `intLoanStatusID` (`intLoanStatusID`),
  KEY `intLoanNumID` (`intLoanNumID`),
  KEY `dteLoanClosingDate` (`dteLoanClosingDate`)
) ENGINE=InnoDB AUTO_INCREMENT=1339782 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblloan_defaultprocessloantype`
--

DROP TABLE IF EXISTS `tblloan_defaultprocessloantype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblloan_defaultprocessloantype` (
  `intdefaultprocessloantypeid` int(11) NOT NULL AUTO_INCREMENT,
  `intorg_id` int(11) NOT NULL,
  `intloantype_id` int(11) NOT NULL,
  `intpipeline_id` int(11) NOT NULL,
  PRIMARY KEY (`intdefaultprocessloantypeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblloan_history`
--

DROP TABLE IF EXISTS `tblloan_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblloan_history` (
  `intloanhistoryid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intloanhistoryloanid` int(10) unsigned NOT NULL DEFAULT '0',
  `intloanhistoryactiontype` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `strloanhistoryprimarystatus` varchar(100) DEFAULT NULL,
  `strloanhistorysecondarystatus` varchar(100) DEFAULT NULL,
  `txtloandata` mediumtext,
  `dteloanhistorylogged` datetime DEFAULT NULL,
  `blnfromapi` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `intloanhistoryclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `intloanhistoryinternaluserid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intloanhistoryid`),
  KEY `intloanhistoryloanid` (`intloanhistoryloanid`),
  KEY `intloanhistoryactiontype` (`intloanhistoryactiontype`),
  KEY `blnfromapi` (`blnfromapi`),
  KEY `intloanhistoryclientid` (`intloanhistoryclientid`),
  KEY `intloanhistoryinternaluserid` (`intloanhistoryinternaluserid`)
) ENGINE=InnoDB AUTO_INCREMENT=445958 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblloan_history_StatusUpdates`
--

DROP TABLE IF EXISTS `tblloan_history_StatusUpdates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblloan_history_StatusUpdates` (
  `intloanhistorystatusupdateid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intstatusupdateprimarystatusid` int(10) unsigned NOT NULL DEFAULT '0',
  `intstatusupdatesecondarystatusid` int(10) unsigned NOT NULL DEFAULT '0',
  `dtestatus` datetime DEFAULT NULL,
  `intstatusupdateloanid` int(10) unsigned NOT NULL,
  `intstatusupdateclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `blnfromapi` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `intstatusupdateinternaluserid` int(10) unsigned NOT NULL DEFAULT '0',
  `dtestatusupdatecreated` datetime DEFAULT NULL,
  `strstatusupdateprimary` varchar(100) DEFAULT NULL,
  `strstatusupdatesecondary` varchar(100) DEFAULT NULL,
  `intstatusloanhistoryid` int(10) unsigned NOT NULL,
  `blndeployed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dtedeployed` datetime DEFAULT NULL,
  `intstatusupdatepipelinedataid` int(10) unsigned NOT NULL DEFAULT '0',
  `intstatusupdatepipelineid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intloanhistorystatusupdateid`),
  KEY `intstatusupdateprimarystatusid` (`intstatusupdateprimarystatusid`),
  KEY `intstatusupdatesecondarystatusid` (`intstatusupdatesecondarystatusid`),
  KEY `intstatusupdateloanid` (`intstatusupdateloanid`),
  KEY `intstatusupdateclientid` (`intstatusupdateclientid`),
  KEY `blnfromapi` (`blnfromapi`),
  KEY `intstatusupdateinternaluserid` (`intstatusupdateinternaluserid`),
  KEY `intstatusloanhistoryid` (`intstatusloanhistoryid`),
  KEY `blndeployed` (`blndeployed`),
  KEY `intstatusupdatepipelinedataid` (`intstatusupdatepipelinedataid`),
  KEY `intstatusupdatepipelineid` (`intstatusupdatepipelineid`)
) ENGINE=InnoDB AUTO_INCREMENT=3160284 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblloan_oodle`
--

DROP TABLE IF EXISTS `tblloan_oodle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblloan_oodle` (
  `intLoanID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `strLoanEnteredBy` varchar(21) DEFAULT NULL,
  `intLoan2ndID` int(10) unsigned DEFAULT NULL,
  `intLoanCustomerID` int(10) unsigned DEFAULT NULL,
  `intLoanTrackID` int(10) unsigned DEFAULT NULL,
  `dteLoanClosingDate` datetime DEFAULT NULL,
  `intLoanAnniversaryAck` int(4) NOT NULL DEFAULT '2011' COMMENT 'Used by Calendar',
  `dteLoanModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dteLoanAdded` datetime DEFAULT NULL,
  `dteLoanScanned` datetime DEFAULT NULL,
  `intLoanScanDays` decimal(3,0) DEFAULT NULL,
  `intLoanScanWeekdays` decimal(3,0) DEFAULT NULL,
  `intLoanScannedByID` int(10) unsigned DEFAULT NULL,
  `dteLoanFileDestruction` datetime DEFAULT NULL,
  `intLoanStorageID` int(10) unsigned DEFAULT NULL,
  `strLoanAddress1` varchar(50) DEFAULT NULL,
  `strLoanAddress2` varchar(50) DEFAULT NULL,
  `strLoanCity` varchar(50) DEFAULT NULL,
  `strLoanState` char(2) DEFAULT NULL,
  `strLoanZip` varchar(15) DEFAULT NULL,
  `strLoanCheckAmount` varchar(50) DEFAULT NULL,
  `strLoanCheckNum` varchar(50) DEFAULT NULL,
  `intLoanTypeID` decimal(3,0) DEFAULT NULL,
  `intLoanNumID` decimal(3,0) DEFAULT NULL,
  `intLoanPurposeID` decimal(3,0) DEFAULT NULL,
  `intLoanPropertyID` decimal(3,0) DEFAULT NULL,
  `intLoanProductID` int(10) unsigned DEFAULT NULL,
  `dblLoanAmount` decimal(12,2) DEFAULT NULL,
  `dblLoanRate` decimal(7,4) DEFAULT NULL,
  `intLoanTerm` int(10) unsigned DEFAULT NULL,
  `intLoanStatusID` tinyint(3) unsigned DEFAULT NULL,
  `intLoanAgentID` int(10) unsigned DEFAULT NULL,
  `strLoanFileNumber` varchar(50) DEFAULT NULL,
  `dblLoanPropertyValue` decimal(12,2) DEFAULT NULL,
  `dteLoanLastPaymentTrigger` datetime DEFAULT NULL,
  `dteLoanLastRateTrigger` datetime DEFAULT NULL,
  `dteLoanLastBalanceTrigger` datetime DEFAULT NULL,
  `dteLoanLastEquityTrigger` datetime DEFAULT NULL,
  `blnLoanSFInit` decimal(3,0) DEFAULT NULL,
  `dteLoanLastListedTrigger` datetime DEFAULT NULL,
  `intLoanAgentCustomerID` int(10) DEFAULT NULL,
  `strArmTypeDesc` varchar(50) DEFAULT NULL,
  `strloancustomstatus` varchar(50) DEFAULT NULL,
  `intloanorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `strloandba` varchar(100) DEFAULT NULL,
  `blnNeedCRMSchedule` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dteapiloancreationdate` datetime DEFAULT NULL,
  `blnmarkfordeletion` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `blnislatestPrimary` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `intloanoldcustomerid` int(11) DEFAULT NULL,
  `flag_fromapi` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `decAddrLatitude` decimal(11,7) DEFAULT NULL,
  `decAddrLongitude` decimal(11,7) DEFAULT NULL,
  `blnNeedsGeocoded` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `blnAddrError` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `intaddressquality` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `intloancustomstatusid` int(10) unsigned NOT NULL DEFAULT '0',
  `intloanlistingagentcustomerid` int(10) unsigned DEFAULT NULL,
  `intloanprocessorcustomerid` int(10) unsigned DEFAULT NULL,
  `intloanccscore` smallint(5) unsigned NOT NULL DEFAULT '0',
  `dteloananticipatedclosingdate` datetime DEFAULT NULL,
  `intloanlikelytoclose` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `dteloanopened` datetime DEFAULT NULL,
  `strloanpropertyhousingtype` varchar(50) DEFAULT NULL,
  `strloanpropertyhousingother` varchar(255) DEFAULT NULL,
  `txtloannotes` mediumtext,
  PRIMARY KEY (`intLoanID`),
  KEY `intLoanCustomerID` (`intLoanCustomerID`),
  KEY `intLoanAgentCustomerID` (`intLoanAgentCustomerID`),
  KEY `intloanorgid` (`intloanorgid`),
  KEY `strLoanFileNumber` (`strLoanFileNumber`),
  KEY `intaddressquality` (`intaddressquality`),
  KEY `intLoanStatusID` (`intLoanStatusID`),
  KEY `intLoanNumID` (`intLoanNumID`),
  KEY `dteLoanClosingDate` (`dteLoanClosingDate`)
) ENGINE=InnoDB AUTO_INCREMENT=664656 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblloan_pipeline`
--

DROP TABLE IF EXISTS `tblloan_pipeline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblloan_pipeline` (
  `intpipelineid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intpipelineclientid` int(10) unsigned NOT NULL,
  `intpipelineloanid` int(10) unsigned NOT NULL,
  `intpipelineprocessid` int(10) unsigned NOT NULL,
  `dtepipelinecreated` datetime DEFAULT NULL,
  `dtepipelinefinished` datetime DEFAULT NULL,
  `intpipelinetrackid` int(10) unsigned NOT NULL DEFAULT '0',
  `intpipelineCTid` int(10) unsigned NOT NULL DEFAULT '0',
  `blnpipelinearchived` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `blnpipelinestarred` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intpipelineid`),
  KEY `intpipelineclientid` (`intpipelineclientid`),
  KEY `intpipelineloanid` (`intpipelineloanid`),
  KEY `intpipelineprocessid` (`intpipelineprocessid`),
  KEY `intpipelinetrackid` (`intpipelinetrackid`),
  KEY `intpipelineCTid` (`intpipelineCTid`)
) ENGINE=InnoDB AUTO_INCREMENT=163676 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblloan_pipelinedata`
--

DROP TABLE IF EXISTS `tblloan_pipelinedata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblloan_pipelinedata` (
  `intpipelinedataid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intpipelinedataparentid` int(10) unsigned NOT NULL,
  `intpipelineprocessdetailid` int(10) unsigned NOT NULL,
  `dtepipelinedatacompleted` datetime DEFAULT NULL,
  `intpipelinedataeventinstanceid` int(10) unsigned NOT NULL DEFAULT '0',
  `intpipelinedataeventinstanceidagent` int(10) unsigned NOT NULL DEFAULT '0',
  `intpipelinedataeventinstanceidlistingagent` int(10) unsigned NOT NULL DEFAULT '0',
  `intpipelinedataeventinstanceidprocessor` int(10) unsigned NOT NULL DEFAULT '0',
  `strpipelinethreshold` varchar(100) DEFAULT NULL,
  `blnvideoviewed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `blndocumentationdownloaded` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dtevideoviewed` datetime DEFAULT NULL,
  `dtedocumentationdownloaded` datetime DEFAULT NULL,
  `blnliked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `blnlikedagent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `blnlikedlistingagent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `blnlikedprocessor` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `blnlikedclient` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dteliked` datetime DEFAULT NULL,
  `txtlikedcomment` mediumtext,
  `blndeployed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intpipelinedataid`),
  KEY `intpipelinedataparentid` (`intpipelinedataparentid`),
  KEY `intpipelineprocessdetailid` (`intpipelineprocessdetailid`),
  KEY `intpipelinedataeventinstanceid` (`intpipelinedataeventinstanceid`),
  KEY `intpipelinedataeventinstanceidagent` (`intpipelinedataeventinstanceidagent`),
  KEY `intpipelinedataeventinstanceidlistingagent` (`intpipelinedataeventinstanceidlistingagent`),
  KEY `intpipelinedataeventinstanceidprocessor` (`intpipelinedataeventinstanceidprocessor`)
) ENGINE=InnoDB AUTO_INCREMENT=1024481 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblloan_process`
--

DROP TABLE IF EXISTS `tblloan_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblloan_process` (
  `intloanprocessid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intloanprocessorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `intloanprocessclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `strloanprocessname` varchar(255) DEFAULT NULL,
  `dteloanprocesscreated` datetime DEFAULT NULL,
  `intloanprocesstrackid` int(10) unsigned NOT NULL DEFAULT '0',
  `txtloanprocessdesc` text,
  `dteloanprocessmodified` datetime DEFAULT NULL,
  PRIMARY KEY (`intloanprocessid`),
  KEY `intloanprocessorgid` (`intloanprocessorgid`),
  KEY `intloanprocessclientid` (`intloanprocessclientid`)
) ENGINE=InnoDB AUTO_INCREMENT=1129 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblloan_processdetails`
--

DROP TABLE IF EXISTS `tblloan_processdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblloan_processdetails` (
  `intloanprocessdetailid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intloanprocessdetailprocessid` int(10) unsigned NOT NULL,
  `intloanprocessdetailsstatusid` int(10) unsigned NOT NULL,
  `blnisparent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `intdisplayorder` tinyint(3) unsigned NOT NULL,
  `blntrigger_postclose` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `blntrigger_archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intloanprocessdetailid`),
  KEY `intloanprocessdetailprocessid` (`intloanprocessdetailprocessid`),
  KEY `intloanprocessdetailsstatusid` (`intloanprocessdetailsstatusid`)
) ENGINE=InnoDB AUTO_INCREMENT=20659 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblloanamortizationtype`
--

DROP TABLE IF EXISTS `tblloanamortizationtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblloanamortizationtype` (
  `intLoanAmortizationTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `strLoanAmortizationTypeName` varchar(50) DEFAULT NULL,
  `blnLoanAmortizationTypeInterestOnly` int(10) unsigned DEFAULT NULL,
  `dblLoanAmortizationTypeRate` float DEFAULT NULL,
  `dteLoanAmortizationTypeDate` datetime DEFAULT NULL,
  `blnLoanAmortizationTypeActive` decimal(3,0) DEFAULT NULL,
  `strLoanAmortizationTypeTicker` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`intLoanAmortizationTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblloannum`
--

DROP TABLE IF EXISTS `tblloannum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblloannum` (
  `intLoanNumID` int(11) NOT NULL AUTO_INCREMENT,
  `strLoanNumName` varchar(20) DEFAULT NULL,
  `strLoanNumAKA` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`intLoanNumID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblloannum_mappings`
--

DROP TABLE IF EXISTS `tblloannum_mappings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblloannum_mappings` (
  `intloannummapid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intloannummapclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `intloannummaporgid` int(10) unsigned NOT NULL DEFAULT '0',
  `intloannummapnumid` int(11) NOT NULL,
  `strloannummapname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`intloannummapid`),
  KEY `intloannummapclientid` (`intloannummapclientid`),
  KEY `intloannummaporgid` (`intloannummaporgid`),
  KEY `intloannummapnumid` (`intloannummapnumid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblloanproduct`
--

DROP TABLE IF EXISTS `tblloanproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblloanproduct` (
  `intLoanProductID` int(11) NOT NULL AUTO_INCREMENT,
  `strLoanProductName` varchar(50) DEFAULT NULL,
  `intLoanProductAdjustMonths` int(10) DEFAULT NULL,
  `intLoanProductAmortizationTypeID` int(10) DEFAULT NULL,
  `intLoanProductNonJumboProductID` int(10) DEFAULT NULL,
  `intLoanProductAmortizationCompare1ID` int(10) DEFAULT NULL,
  `intLoanProductAmortizationCompare2ID` int(10) DEFAULT NULL,
  `intLoanProductAmortizationCompare3ID` int(10) DEFAULT NULL,
  PRIMARY KEY (`intLoanProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblloanproduct_mappings`
--

DROP TABLE IF EXISTS `tblloanproduct_mappings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblloanproduct_mappings` (
  `intloanproductmapid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intloanproductmapclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `intloanproductmaporgid` int(10) unsigned NOT NULL DEFAULT '0',
  `intloanproductmaploanproductid` int(10) unsigned NOT NULL DEFAULT '0',
  `strloanproductmapname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`intloanproductmapid`),
  KEY `intloanproductmapclientid` (`intloanproductmapclientid`),
  KEY `intloanproductmaporgid` (`intloanproductmaporgid`),
  KEY `intloanproductmaploanproductid` (`intloanproductmaploanproductid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblloanproduct_unknown`
--

DROP TABLE IF EXISTS `tblloanproduct_unknown`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblloanproduct_unknown` (
  `intunknownproductid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intunknownloanid` int(10) unsigned NOT NULL DEFAULT '0',
  `intunknownorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `intunknownclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `strunknownproductname` varchar(255) DEFAULT NULL,
  `dtecreated` datetime DEFAULT NULL,
  `intunknownproductmapid` int(10) unsigned NOT NULL DEFAULT '0',
  `dtemapped` datetime DEFAULT NULL,
  PRIMARY KEY (`intunknownproductid`),
  KEY `intunknownloanid` (`intunknownloanid`),
  KEY `intunknownorgid` (`intunknownorgid`),
  KEY `intunknownclientid` (`intunknownclientid`),
  KEY `intunknownproductmapid` (`intunknownproductmapid`)
) ENGINE=InnoDB AUTO_INCREMENT=82918 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblloanproductaka`
--

DROP TABLE IF EXISTS `tblloanproductaka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblloanproductaka` (
  `intLoanProductAKAID` int(11) NOT NULL AUTO_INCREMENT,
  `strLoanProductAKA` varchar(50) DEFAULT NULL,
  `intLoanProductID` int(10) DEFAULT NULL,
  PRIMARY KEY (`intLoanProductAKAID`)
) ENGINE=InnoDB AUTO_INCREMENT=384 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblloanproductalias`
--

DROP TABLE IF EXISTS `tblloanproductalias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblloanproductalias` (
  `intLoanAliasID` int(11) NOT NULL AUTO_INCREMENT,
  `intClientID` int(11) DEFAULT NULL,
  `intOrgID` int(11) DEFAULT NULL,
  `intLoanProductID` int(11) DEFAULT NULL,
  `strLoanProductAlias` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`intLoanAliasID`),
  KEY `ndx_pID` (`intLoanProductID`),
  KEY `ndx_cid` (`intClientID`),
  KEY `ndx_oID` (`intOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblloanproperty`
--

DROP TABLE IF EXISTS `tblloanproperty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblloanproperty` (
  `intLoanPropertyID` int(11) NOT NULL AUTO_INCREMENT,
  `strLoanPropertyName` varchar(50) DEFAULT NULL,
  `strLoanPropertyAKA` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`intLoanPropertyID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblloanproperty_mappings`
--

DROP TABLE IF EXISTS `tblloanproperty_mappings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblloanproperty_mappings` (
  `intloanpropertymapid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intloanpropertymapclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `intloanpropertymaporgid` int(10) unsigned NOT NULL DEFAULT '0',
  `intloanpropertymappropertyid` int(10) unsigned NOT NULL,
  `strloanpropertymapname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`intloanpropertymapid`),
  KEY `intloanpropertymapclientid` (`intloanpropertymapclientid`),
  KEY `intloanpropertymaporgid` (`intloanpropertymaporgid`),
  KEY `intloanpropertymappropertyid` (`intloanpropertymappropertyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblloanpropertyhousingtypes`
--

DROP TABLE IF EXISTS `tblloanpropertyhousingtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblloanpropertyhousingtypes` (
  `intLoanPropertyHousingtypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `strLoanPropertyHousingtypename` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`intLoanPropertyHousingtypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblloanpurpose`
--

DROP TABLE IF EXISTS `tblloanpurpose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblloanpurpose` (
  `intLoanPurposeID` int(11) NOT NULL AUTO_INCREMENT,
  `strLoanPurposeName` varchar(50) DEFAULT NULL,
  `strLoanPurposeAKA` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`intLoanPurposeID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblloanpurpose_mappings`
--

DROP TABLE IF EXISTS `tblloanpurpose_mappings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblloanpurpose_mappings` (
  `intloanpurposemapid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intloanpurposemapclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `intloanpurposemaporgid` int(10) unsigned NOT NULL DEFAULT '0',
  `intloanpurposemappurposeid` int(10) unsigned NOT NULL,
  `strloanpurposemapname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`intloanpurposemapid`),
  KEY `intloanpurposemapclientid` (`intloanpurposemapclientid`),
  KEY `intloanpurposemaporgid` (`intloanpurposemaporgid`),
  KEY `intloanpurposemappurposeid` (`intloanpurposemappurposeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblloanschecks`
--

DROP TABLE IF EXISTS `tblloanschecks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblloanschecks` (
  `intChecktoLoanid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intCheckID` int(10) unsigned DEFAULT NULL,
  `intLoanID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`intChecktoLoanid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblloanstatus`
--

DROP TABLE IF EXISTS `tblloanstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblloanstatus` (
  `intLoanStatusID` int(11) NOT NULL AUTO_INCREMENT,
  `strLoanStatusName` varchar(50) DEFAULT NULL,
  `intloanstatusdisplayorder` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`intLoanStatusID`),
  KEY `intloanstatusdisplayorder` (`intloanstatusdisplayorder`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblloanstatus_custom`
--

DROP TABLE IF EXISTS `tblloanstatus_custom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblloanstatus_custom` (
  `intcustomloanstatusid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intcustomloanstatusorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `intcustomloanstatusclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `intcustomloanstatusparentid` int(10) unsigned NOT NULL,
  `strcustomloanstatus` varchar(100) DEFAULT NULL,
  `dtecreated` datetime DEFAULT NULL,
  `dtemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`intcustomloanstatusid`),
  KEY `intcustomloanstatusorgid` (`intcustomloanstatusorgid`),
  KEY `intcustomloanstatusclientid` (`intcustomloanstatusclientid`),
  KEY `intcustomloanstatusparentid` (`intcustomloanstatusparentid`)
) ENGINE=InnoDB AUTO_INCREMENT=553 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblloantype`
--

DROP TABLE IF EXISTS `tblloantype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblloantype` (
  `intLoanTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `strLoanTypeName` varchar(50) DEFAULT NULL,
  `strLoanTypeAKA` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`intLoanTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblloantype_mappings`
--

DROP TABLE IF EXISTS `tblloantype_mappings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblloantype_mappings` (
  `intloantypemapid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intloantypemapclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `intloantypemaporgid` int(10) unsigned NOT NULL DEFAULT '0',
  `intloantypemaptypeid` int(10) unsigned NOT NULL,
  `strloantypemapname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`intloantypemapid`),
  KEY `intloantypemapclientid` (`intloantypemapclientid`),
  KEY `intloantypemaporgid` (`intloantypemaporgid`),
  KEY `intloantypemaptypeid` (`intloantypemaptypeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbllos`
--

DROP TABLE IF EXISTS `tbllos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbllos` (
  `intLOSID` int(11) NOT NULL AUTO_INCREMENT,
  `strLOSName` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`intLOSID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblmonth`
--

DROP TABLE IF EXISTS `tblmonth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblmonth` (
  `intMonth` int(10) DEFAULT NULL,
  `strMonthName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblmonthsummary`
--

DROP TABLE IF EXISTS `tblmonthsummary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblmonthsummary` (
  `intMonthID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dteMonthDate` datetime DEFAULT NULL,
  `intMonthFiscalMonth` decimal(3,0) DEFAULT NULL,
  `dblMonthRevenue` float DEFAULT NULL,
  `intMonthTitleChecks` int(10) unsigned DEFAULT NULL,
  `intMonthBoxes` int(10) unsigned DEFAULT NULL,
  `intMonthContracts` decimal(3,0) DEFAULT NULL,
  `dteMonthNewsletter` datetime DEFAULT NULL,
  PRIMARY KEY (`intMonthID`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblnames`
--

DROP TABLE IF EXISTS `tblnames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblnames` (
  `strName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblnote`
--

DROP TABLE IF EXISTS `tblnote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblnote` (
  `intNoteID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `strNote` text,
  `dteNoteAdded` date DEFAULT NULL,
  `intNoteInternalUserID` int(10) unsigned DEFAULT NULL,
  `intNoteOrgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`intNoteID`),
  KEY `intNoteInternalUserID` (`intNoteInternalUserID`),
  KEY `intNoteOrgID` (`intNoteOrgID`)
) ENGINE=InnoDB AUTO_INCREMENT=48793 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblorganization`
--

DROP TABLE IF EXISTS `tblorganization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblorganization` (
  `intOrgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `strOrgName` varchar(100) DEFAULT NULL,
  `intOrgParentOrgID` int(10) unsigned DEFAULT '0',
  `intOrgContactClientID` int(10) unsigned DEFAULT NULL,
  `intOrgAdminClientID` int(10) unsigned DEFAULT NULL,
  `intOrgDayToDayClientID` int(10) unsigned DEFAULT NULL,
  `strOrgAddress1` varchar(50) DEFAULT NULL,
  `strOrgAddress2` varchar(50) DEFAULT NULL,
  `strOrgCity` varchar(50) DEFAULT NULL,
  `strOrgState` varchar(3) DEFAULT NULL,
  `strOrgZip` varchar(5) DEFAULT NULL,
  `strOrgMetro` varchar(50) DEFAULT NULL,
  `strOrgShippingAddress1` varchar(50) DEFAULT NULL,
  `strOrgShippingAddress2` varchar(50) DEFAULT NULL,
  `strOrgShippingCity` varchar(50) DEFAULT NULL,
  `strOrgShippingState` varchar(3) DEFAULT NULL,
  `strOrgShippingZip` varchar(5) DEFAULT NULL,
  `strOrgWebPage` varchar(100) DEFAULT NULL,
  `strOrgPhone` varchar(14) DEFAULT NULL,
  `strOrgPhoneTollFree` varchar(14) DEFAULT NULL,
  `strOrgLinkPage` varchar(50) DEFAULT NULL,
  `strOrgFax` varchar(14) DEFAULT NULL,
  `dteOrgAdded` datetime DEFAULT NULL,
  `dteOrgNoContactUntil` datetime DEFAULT NULL,
  `dteOrgContractReceived` datetime DEFAULT NULL,
  `intOrgIndustryID` int(10) unsigned DEFAULT NULL,
  `strOrgNotes` varchar(300) DEFAULT NULL,
  `intOrgInternalUserID` int(10) unsigned DEFAULT NULL,
  `blnOrgIsBundle` decimal(3,0) DEFAULT NULL,
  `intOrgLogoStatusID` decimal(3,0) DEFAULT NULL,
  `blnOrgIsCompliance` decimal(3,0) DEFAULT NULL,
  `strOrgDataNotes` varchar(300) DEFAULT NULL,
  `strOrgBillingNotes` varchar(300) DEFAULT NULL,
  `intOrgDAQBItemID` int(10) unsigned DEFAULT NULL,
  `intOrgDABundleQBItemID` int(10) unsigned DEFAULT NULL,
  `intOrgCompOptionID` decimal(3,0) DEFAULT NULL,
  `intOrgCompQBItemID` int(10) unsigned DEFAULT NULL,
  `intOrgFraudOptionID` decimal(3,0) DEFAULT NULL,
  `intOrgFraudQBItemID` int(10) unsigned DEFAULT NULL,
  `intOrgAdStampOptionID` decimal(3,0) DEFAULT NULL,
  `intOrgAdStampQBItemID` int(10) unsigned DEFAULT NULL,
  `intOrgStorageYears` decimal(3,0) DEFAULT NULL,
  `strOrgSaleSource` varchar(100) DEFAULT NULL,
  `dblOrgContract` float DEFAULT NULL,
  `intOrgVolume` int(10) DEFAULT NULL,
  `dteOrgLastCustomerAdded` datetime DEFAULT NULL,
  `dteOrgFirstCustomerAdded` datetime DEFAULT NULL,
  `intOrg4MonthAverage` int(10) unsigned DEFAULT NULL,
  `dblOrg3MonthAverage` float DEFAULT NULL,
  `intOrgTotalCustomers` int(10) unsigned DEFAULT NULL,
  `intOrgCurrentMonthCustomers` int(10) unsigned DEFAULT NULL,
  `strOrgCurrentMonth` varchar(15) DEFAULT NULL,
  `intOrgActiveStatusID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `strOrgFired` varchar(75) DEFAULT NULL,
  `intOrgPrevActiveStatusID` decimal(3,0) DEFAULT NULL,
  `blnOrgHasAdStamp` decimal(3,0) DEFAULT NULL,
  `intOrgCDRef` decimal(3,0) DEFAULT NULL,
  `strOrgEmailServer` varchar(50) DEFAULT NULL,
  `strOrgEmailUsername` varchar(50) DEFAULT NULL,
  `strOrgEmailPassword` varchar(50) DEFAULT NULL,
  `strOrgEmailFrom` varchar(50) DEFAULT NULL,
  `intOrgQuarterlyOptionID` int(10) unsigned DEFAULT NULL,
  `intOrgQuarterlyEventID` int(10) unsigned DEFAULT NULL,
  `dblOrgSFRateBuffer` decimal(7,3) DEFAULT NULL,
  `dblOrgSFRateTrigger` decimal(7,3) DEFAULT NULL,
  `dblOrgSFPaymentTrigger` float DEFAULT NULL,
  `dblOrgSFEquityTrigger` float DEFAULT NULL,
  `intOrgSFTriggerOptionID` int(10) unsigned DEFAULT NULL,
  `intOrgSFRateOptionID` int(10) unsigned DEFAULT NULL,
  `intOrgSFStatusID` tinyint(3) unsigned NOT NULL,
  `strOrgEmailFontType` varchar(100) DEFAULT NULL,
  `strOrgEmailFontSize` varchar(10) DEFAULT NULL,
  `strOrgEmailFontColor` varchar(10) DEFAULT NULL,
  `intOrgEmailHeaderTemplateID` int(10) unsigned DEFAULT NULL,
  `intOrgEmailFooterTemplateID` int(10) unsigned DEFAULT NULL,
  `intOrgLOSID` int(10) unsigned DEFAULT NULL,
  `strOrgGrade` varchar(1) DEFAULT NULL,
  `intclientemailQuota` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `blnOrgCreditAppend` decimal(3,0) DEFAULT NULL,
  `dteOrgCreditAppend` date DEFAULT NULL,
  `flag_HasArchiving` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `OrgCardSigR1C1` varchar(50) DEFAULT NULL,
  `OrgCardSigR1C2` varchar(50) DEFAULT NULL,
  `OrgCardSigR2C1` varchar(50) DEFAULT NULL,
  `OrgCardSigR2C2` varchar(50) DEFAULT NULL,
  `OrgCardSigR3C1` varchar(50) DEFAULT NULL,
  `OrgCardSigR3C2` varchar(50) DEFAULT NULL,
  `OrgCardSigR4C1` varchar(50) DEFAULT NULL,
  `OrgCardSigR4C2` varchar(50) DEFAULT NULL,
  `OrgCardSigR5C1` varchar(50) DEFAULT NULL,
  `OrgCardSigR5C2` varchar(50) DEFAULT NULL,
  `OrgCardSigR6C1` varchar(50) DEFAULT NULL,
  `OrgCardSigR6C2` varchar(50) DEFAULT NULL,
  `OrgCardSigR7C1` varchar(50) DEFAULT NULL,
  `OrgCardSigR7C2` varchar(50) DEFAULT NULL,
  `OrgCardSigR8C1` varchar(50) DEFAULT NULL,
  `OrgCardSigR8C2` varchar(50) DEFAULT NULL,
  `OrgLetterSigR1C1` varchar(50) DEFAULT NULL,
  `OrgLetterSigR1C2` varchar(50) DEFAULT NULL,
  `OrgLetterSigR2C1` varchar(50) DEFAULT NULL,
  `OrgLetterSigR2C2` varchar(50) DEFAULT NULL,
  `OrgLetterSigR3C1` varchar(50) DEFAULT NULL,
  `OrgLetterSigR3C2` varchar(50) DEFAULT NULL,
  `OrgLetterSigR4C1` varchar(50) DEFAULT NULL,
  `OrgLetterSigR4C2` varchar(50) DEFAULT NULL,
  `OrgLetterSigR5C1` varchar(50) DEFAULT NULL,
  `OrgLetterSigR5C2` varchar(50) DEFAULT NULL,
  `OrgLetterSigR6C1` varchar(50) DEFAULT NULL,
  `OrgLetterSigR6C2` varchar(50) DEFAULT NULL,
  `OrgLetterSigR7C1` varchar(50) DEFAULT NULL,
  `OrgLetterSigR7C2` varchar(50) DEFAULT NULL,
  `OrgLetterSigR8C1` varchar(50) DEFAULT NULL,
  `OrgLetterSigR8C2` varchar(50) DEFAULT NULL,
  `strOrgSurveyOption` varchar(10) DEFAULT NULL,
  `intLoanAppTimeout` tinyint(3) unsigned NOT NULL DEFAULT '15',
  `blnHasPortal` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `strPortalUrlKey` varchar(50) NOT NULL DEFAULT '',
  `blnHasPortalLogo` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `blnUseAPILogin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `intorglogo2statusid` tinyint(3) unsigned DEFAULT NULL,
  `strorglicense3card` text,
  `strorglicense3letter` text,
  `strorglicense3email` text,
  `blnorgallowclientschedulecrm` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `intOrgBillingOptionID` int(1) DEFAULT '1',
  `strtheme_colorscheme` varchar(100) DEFAULT NULL,
  `strorgtheme_primarycolor` varchar(10) DEFAULT NULL,
  `strorgtheme_secondarycolor` varchar(10) DEFAULT NULL,
  `blnOrgHasLogo2` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `blnUseCustomRates` tinyint(1) unsigned DEFAULT NULL,
  `blnUseCustomRatesPermission` tinyint(1) unsigned DEFAULT NULL,
  `intOrgMarketingAdminClientID` int(10) unsigned NOT NULL DEFAULT '0',
  `intOrgLoanAppAdminClientID` int(10) unsigned NOT NULL DEFAULT '0',
  `blnuseContactUploads` tinyint(1) NOT NULL DEFAULT '0',
  `strorgpostcardbannertextcolor1` varchar(10) DEFAULT NULL,
  `strorgpostcardbannertextcolor2` varchar(10) DEFAULT NULL,
  `intPasswordDays` int(11) unsigned NOT NULL DEFAULT '0',
  `blnOrgPaysUltracart` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `strComplianceArchiveEmail` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`intOrgID`),
  KEY `intOrgInternalUserID` (`intOrgInternalUserID`),
  KEY `intOrgActiveStatusID` (`intOrgActiveStatusID`),
  KEY `intOrgSFStatusID` (`intOrgSFStatusID`),
  KEY `strPortalUrlKey` (`strPortalUrlKey`,`blnHasPortal`)
) ENGINE=InnoDB AUTO_INCREMENT=1904 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblorganization_approvals`
--

DROP TABLE IF EXISTS `tblorganization_approvals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblorganization_approvals` (
  `intapprovalid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intapprovalorgid` int(10) unsigned NOT NULL,
  `intapprovalclientid` int(10) unsigned NOT NULL,
  `strApprovalType` varchar(50) NOT NULL,
  `txtDetails` mediumtext,
  `intapprovaladmin` int(10) unsigned NOT NULL DEFAULT '0',
  `blnApproved` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `dteApproved` datetime DEFAULT NULL,
  `stradminemail` varchar(100) DEFAULT NULL,
  `txtcomments` text,
  `txtdenyreason` text,
  `dteDenied` datetime DEFAULT NULL,
  `strprofilesection` varchar(50) DEFAULT NULL,
  `txtUserRequestMessage` text,
  `dtecreated` datetime DEFAULT NULL,
  `strpdffile` text,
  `intsurveyid` int(10) unsigned NOT NULL DEFAULT '0',
  `strsurveylink` text,
  `blnbillablecampaign` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `intqbitemid` int(10) unsigned NOT NULL DEFAULT '0',
  `blninternalapproved` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dteinternalapproved` datetime DEFAULT NULL,
  `strinternaladminemail` varchar(100) DEFAULT NULL,
  `dteinternaldenied` datetime DEFAULT NULL,
  `txtinternalcomment` text,
  `txtinternaldenyreason` text,
  `blncampaign` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `blnsendadminapprovalforcampaign` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `strcampaignname` varchar(255) DEFAULT NULL,
  `intcampaigncatid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `inttotalevents` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `intcampaignlibrary` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `blnshowinadminapproval` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `intapprovedeventid` int(10) unsigned NOT NULL DEFAULT '0',
  `isJSON` tinyint(1) DEFAULT '0',
  `jsonDetails` mediumtext,
  PRIMARY KEY (`intapprovalid`),
  KEY `intapprovalorgid` (`intapprovalorgid`),
  KEY `intapprovalclientid` (`intapprovalclientid`),
  KEY `blncampaign` (`blncampaign`),
  KEY `blnApproved` (`blnApproved`),
  KEY `intapprovedeventid` (`intapprovedeventid`)
) ENGINE=InnoDB AUTO_INCREMENT=4209 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblorganization_billingoption`
--

DROP TABLE IF EXISTS `tblorganization_billingoption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblorganization_billingoption` (
  `intOrgBillingOptionID` int(1) NOT NULL AUTO_INCREMENT,
  `strOrgBillingOptionName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`intOrgBillingOptionID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblorganization_customfields`
--

DROP TABLE IF EXISTS `tblorganization_customfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblorganization_customfields` (
  `intcustomfieldid` int(11) NOT NULL AUTO_INCREMENT,
  `intorgid` int(10) NOT NULL DEFAULT '0',
  `dtecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dtemodified` datetime NOT NULL,
  `fieldLabel` varchar(100) NOT NULL DEFAULT '',
  `fieldType` varchar(50) NOT NULL DEFAULT '',
  `fieldOptions` text NOT NULL,
  `flag_disabled` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intcustomfieldid`),
  KEY `intorgid` (`intorgid`,`flag_disabled`)
) ENGINE=InnoDB AUTO_INCREMENT=521 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblorganization_customrates`
--

DROP TABLE IF EXISTS `tblorganization_customrates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblorganization_customrates` (
  `intRateID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Internal PK',
  `strPriceCode` varchar(50) DEFAULT NULL COMMENT 'Rate Group',
  `dblRate` decimal(15,4) DEFAULT NULL COMMENT 'Rate of loan',
  `dteTimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp of upload',
  `dblPrice` decimal(15,4) DEFAULT NULL COMMENT 'Price of loan',
  `intLockPeriod` int(11) DEFAULT NULL COMMENT 'Lock Period in Days',
  `strPAC` varchar(10) DEFAULT NULL COMMENT 'PAC field in database tells if it''s retail or wholesale. We are only using Retail.',
  `intOrgid` int(11) DEFAULT NULL COMMENT 'ORG ID',
  `blnIsActive` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`intRateID`)
) ENGINE=InnoDB AUTO_INCREMENT=330462 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblorganization_customrates_filters`
--

DROP TABLE IF EXISTS `tblorganization_customrates_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblorganization_customrates_filters` (
  `intFilterID` int(11) NOT NULL AUTO_INCREMENT,
  `intOrgID` int(11) NOT NULL,
  `strColumn` varchar(20) NOT NULL,
  `strOperator` varchar(10) NOT NULL,
  `strValue` varchar(50) NOT NULL,
  `dteCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intFilterID`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblorganization_customrates_map`
--

DROP TABLE IF EXISTS `tblorganization_customrates_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblorganization_customrates_map` (
  `intMapID` int(11) NOT NULL AUTO_INCREMENT,
  `intOrgID` int(11) NOT NULL,
  `strPriceCode` varchar(50) NOT NULL,
  `strNiceName` varchar(255) DEFAULT NULL,
  `blnIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `intSurefireProductID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`intMapID`)
) ENGINE=InnoDB AUTO_INCREMENT=533 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblorganization_customtypes`
--

DROP TABLE IF EXISTS `tblorganization_customtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblorganization_customtypes` (
  `intorgcustomtypeid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intorgcustomtypeorgid` int(10) unsigned NOT NULL,
  `intorgcustomtypeparentid` int(10) unsigned NOT NULL,
  `strorgcustomtype` varchar(100) NOT NULL DEFAULT '',
  `dtecreated` datetime DEFAULT NULL,
  `dtemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`intorgcustomtypeid`),
  KEY `intorgcustomtypeorgid` (`intorgcustomtypeorgid`),
  KEY `intorgcustomtypeparentid` (`intorgcustomtypeparentid`)
) ENGINE=InnoDB AUTO_INCREMENT=16859 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblorganization_ftp`
--

DROP TABLE IF EXISTS `tblorganization_ftp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblorganization_ftp` (
  `intorgftpid` int(11) NOT NULL AUTO_INCREMENT,
  `intorg_id` int(11) NOT NULL,
  `strhost_encrypted` mediumtext NOT NULL,
  `strport` varchar(10) DEFAULT NULL,
  `strusername_encrypted` mediumtext NOT NULL,
  `strpassword_encrypted` mediumtext NOT NULL,
  `strtype` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`intorgftpid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblorganization_functions`
--

DROP TABLE IF EXISTS `tblorganization_functions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblorganization_functions` (
  `intOrganizationFunctionID` int(10) NOT NULL AUTO_INCREMENT,
  `intOrganizationFunctionOrgID` int(10) DEFAULT NULL,
  `blnMonthlySurefireEmails` tinyint(3) unsigned DEFAULT NULL,
  `blnCampaignManager` tinyint(3) unsigned DEFAULT NULL,
  `blnMLSRateAlerts` tinyint(3) unsigned DEFAULT NULL,
  `blnTargetRateAlerts` tinyint(3) unsigned DEFAULT NULL,
  `blnCreditPullAlerts` tinyint(3) unsigned DEFAULT NULL,
  `dblCreditPullAlertUploadCost` decimal(7,2) DEFAULT NULL,
  `dblCreditPullAlertMatchCost` decimal(7,2) DEFAULT NULL,
  `blnSelfServeEmail` tinyint(3) unsigned DEFAULT NULL,
  `intSelfServeEmailQuota` tinyint(3) DEFAULT NULL,
  `strWebSite1003Option` varchar(50) DEFAULT NULL,
  `blnAutoBlog` tinyint(3) unsigned DEFAULT NULL,
  `blnDigitalSurveys` tinyint(3) unsigned DEFAULT NULL,
  `blnCustomForms` tinyint(3) unsigned DEFAULT NULL,
  `blnDynamicVideo` tinyint(3) unsigned DEFAULT NULL,
  `blnAPIAccess` tinyint(3) unsigned DEFAULT NULL,
  `blnPrivateLabel` tinyint(3) unsigned DEFAULT NULL,
  `blnMultiSeat` tinyint(3) unsigned DEFAULT NULL,
  `dblMonthlyMinimum` decimal(7,2) DEFAULT NULL,
  `strOrganizationFunctionPreset` varchar(10) DEFAULT NULL,
  `blnSyncAgents` tinyint(3) DEFAULT NULL,
  `blnflyers` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `blnrequirePostCloseThreshold` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `blnrequireLOsecondaryID` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `blnUseSurefirePasswordPolicy` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`intOrganizationFunctionID`),
  KEY `intOrganizationFunctionOrgID` (`intOrganizationFunctionOrgID`)
) ENGINE=InnoDB AUTO_INCREMENT=1094 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblorganization_industrylogos`
--

DROP TABLE IF EXISTS `tblorganization_industrylogos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblorganization_industrylogos` (
  `intindustrylogoid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intindustrylogoorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `intindustrylogoclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `strindustrylogo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`intindustrylogoid`),
  KEY `intindustrylogoorgid` (`intindustrylogoorgid`),
  KEY `intindustrylogoclientid` (`intindustrylogoclientid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblorganization_loandocs`
--

DROP TABLE IF EXISTS `tblorganization_loandocs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblorganization_loandocs` (
  `intarchiveid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `strfilename` varchar(255) NOT NULL DEFAULT '',
  `size` decimal(6,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`intarchiveid`),
  KEY `intorgid` (`intorgid`)
) ENGINE=InnoDB AUTO_INCREMENT=8286 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblorganization_lossyncoptions`
--

DROP TABLE IF EXISTS `tblorganization_lossyncoptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblorganization_lossyncoptions` (
  `intoptionid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intorg_id` int(10) unsigned NOT NULL,
  `intdeploymentsettingtype` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `intdeploymentloanprocessid_Purchase` int(10) unsigned NOT NULL DEFAULT '0',
  `intdeploymentloanprocessid_Refinance` int(10) unsigned NOT NULL DEFAULT '0',
  `intdeploymentloanprocessid_Construction` int(10) unsigned NOT NULL,
  `intdeploymentloanprocessid_Construction-Permanent` int(10) unsigned NOT NULL DEFAULT '0',
  `intdeploymentloanprocessid_Reverse` int(10) unsigned NOT NULL,
  `intdeploymenttimeofday` tinyint(3) unsigned NOT NULL DEFAULT '11',
  PRIMARY KEY (`intoptionid`),
  KEY `intdeploymentloanprocessid_Construction` (`intdeploymentloanprocessid_Construction`),
  KEY `intdeploymentloanprocessid_Construction-Permanent` (`intdeploymentloanprocessid_Construction-Permanent`),
  KEY `intdeploymentloanprocessid_Purchase` (`intdeploymentloanprocessid_Purchase`),
  KEY `intdeploymentloanprocessid_Refinance` (`intdeploymentloanprocessid_Refinance`),
  KEY `intdeploymentloanprocessid_Reverse` (`intdeploymentloanprocessid_Reverse`),
  KEY `intdeploymentsettingtype` (`intdeploymentsettingtype`),
  KEY `intorg_id` (`intorg_id`),
  KEY `intdeploymenttimeofday` (`intdeploymenttimeofday`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblorganization_permissions`
--

DROP TABLE IF EXISTS `tblorganization_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblorganization_permissions` (
  `intorgpermissionid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intorgpermissionorgid` int(10) unsigned NOT NULL,
  `bln_editprofileblocks` tinyint(3) unsigned DEFAULT '1',
  `bln_createtemplates` tinyint(3) unsigned DEFAULT '1',
  `bln_viewsurefirepubliclibraries` tinyint(3) unsigned DEFAULT '1',
  `bln_createsubbillablecampaigns` tinyint(3) unsigned DEFAULT '3',
  `bln_createsubnonbillablecampaigns` tinyint(3) unsigned DEFAULT '1',
  `bln_edittemplatecontent` tinyint(3) unsigned DEFAULT '1',
  `bln_editaddressstamper` tinyint(3) unsigned DEFAULT '1',
  `bln_createonlinesurveys` tinyint(3) unsigned DEFAULT '1',
  `bln_editpersonalprofiles` tinyint(3) unsigned DEFAULT '1',
  `bln_uploadimagestopersonallibrary` tinyint(3) unsigned DEFAULT '1',
  `bln_useemailblastwizard` tinyint(3) unsigned DEFAULT '1',
  `bln_ccemailblaststomarketingadmin` tinyint(3) unsigned DEFAULT '1',
  `bln_showlicense3on1003pages` tinyint(3) unsigned DEFAULT '1',
  `bln_showlogo2on1003pages` tinyint(3) unsigned DEFAULT '1',
  `bln_canusetriggeralerts` tinyint(3) unsigned DEFAULT '1',
  `intmarketingadminclientid` int(10) NOT NULL DEFAULT '0',
  `intreturnsurveyadminclientid` int(10) NOT NULL DEFAULT '0',
  `intmarketingadminclientid2` int(10) NOT NULL DEFAULT '0',
  `intreturnsurveyadminclientid2` int(10) NOT NULL DEFAULT '0',
  `int1003adminclientid` int(10) NOT NULL DEFAULT '0',
  `int1003adminclientid2` int(10) NOT NULL DEFAULT '0',
  `int1003timeout` tinyint(3) unsigned NOT NULL DEFAULT '15',
  `dtemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dtecreated` datetime DEFAULT NULL,
  `intpostcarddefaultlayoutid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `bln_allowuserschangelayoutcolors` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `blnhaspostcardimage` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `strpostcardtopbannercolor` varchar(10) DEFAULT NULL,
  `strpostcardtopbannerfontcolor` varchar(10) DEFAULT '#ffffff',
  `strpostcardbottombannercolor` varchar(10) DEFAULT NULL,
  `strpostcardbottombannerfontcolor` varchar(10) DEFAULT '#ffffff',
  `bln_usescobrand` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `bln_ftpfnmfiles` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bln_usescobrandflyers` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `bln_usescobrandemails` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `blnCanDownloadCSV` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `blnPasswordsEnforced` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intorgpermissionid`),
  KEY `intorgpermissionorgid` (`intorgpermissionorgid`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblorganization_statelicense`
--

DROP TABLE IF EXISTS `tblorganization_statelicense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblorganization_statelicense` (
  `intorgstatelicenseid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intorgstatekeyorgid` int(10) unsigned NOT NULL,
  `strorgstatekey` char(2) DEFAULT NULL,
  `txtorgstatelicenseblurb` text,
  `strorgstatelicname` varchar(100) DEFAULT NULL,
  `strorgstatelicnum` varchar(100) DEFAULT NULL,
  `blnenabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`intorgstatelicenseid`),
  KEY `strorgstatekey` (`strorgstatekey`),
  KEY `intorgstatekeyorgid` (`intorgstatekeyorgid`),
  KEY `blnenabled` (`blnenabled`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblorganizationbranch`
--

DROP TABLE IF EXISTS `tblorganizationbranch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblorganizationbranch` (
  `intOrgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `strOrgName` varchar(50) DEFAULT NULL,
  `intOrgParentOrgID` int(10) unsigned DEFAULT NULL,
  `intOrgContactClientID` int(10) unsigned DEFAULT NULL,
  `intOrgAdminClientID` int(10) unsigned DEFAULT NULL,
  `intOrgDayToDayClientID` int(10) unsigned DEFAULT NULL,
  `strOrgAddress1` varchar(50) DEFAULT NULL,
  `strOrgAddress2` varchar(50) DEFAULT NULL,
  `strOrgCity` varchar(50) DEFAULT NULL,
  `strOrgState` varchar(3) DEFAULT NULL,
  `strOrgZip` varchar(5) DEFAULT NULL,
  `strOrgMetro` varchar(50) DEFAULT NULL,
  `strOrgShippingAddress1` varchar(50) DEFAULT NULL,
  `strOrgShippingAddress2` varchar(50) DEFAULT NULL,
  `strOrgShippingCity` varchar(50) DEFAULT NULL,
  `strOrgShippingState` varchar(3) DEFAULT NULL,
  `strOrgShippingZip` varchar(5) DEFAULT NULL,
  `strOrgWebPage` varchar(50) DEFAULT NULL,
  `strOrgPhone` varchar(14) DEFAULT NULL,
  `strOrgPhoneTollFree` varchar(14) DEFAULT NULL,
  `strOrgLinkPage` varchar(50) DEFAULT NULL,
  `strOrgFax` varchar(14) DEFAULT NULL,
  `dteOrgAdded` datetime DEFAULT NULL,
  `dteOrgNoContactUntil` datetime DEFAULT NULL,
  `dteOrgContractReceived` datetime DEFAULT NULL,
  `intOrgIndustryID` int(10) unsigned DEFAULT NULL,
  `strOrgNotes` text,
  `intOrgInternalUserID` int(10) unsigned DEFAULT NULL,
  `blnOrgIsBundle` decimal(3,0) DEFAULT NULL,
  `intOrgLogoStatusID` decimal(3,0) DEFAULT NULL,
  `blnOrgIsCompliance` decimal(3,0) DEFAULT NULL,
  `strOrgDataNotes` text,
  `strOrgBillingNotes` text,
  `intOrgDAQBItemID` int(10) unsigned DEFAULT NULL,
  `intOrgDABundleQBItemID` int(10) unsigned DEFAULT NULL,
  `intOrgCompOptionID` decimal(3,0) DEFAULT NULL,
  `intOrgCompQBItemID` int(10) unsigned DEFAULT NULL,
  `intOrgFraudOptionID` decimal(3,0) DEFAULT NULL,
  `intOrgFraudQBItemID` int(10) unsigned DEFAULT NULL,
  `intOrgAdStampOptionID` decimal(3,0) DEFAULT NULL,
  `intOrgAdStampQBItemID` int(10) unsigned DEFAULT NULL,
  `intOrgStorageYears` decimal(3,0) DEFAULT NULL,
  `strOrgSaleSource` varchar(100) DEFAULT NULL,
  `dblOrgContract` float DEFAULT NULL,
  `intOrgVolume` int(10) unsigned DEFAULT NULL,
  `dteOrgLastCustomerAdded` datetime DEFAULT NULL,
  `dteOrgFirstCustomerAdded` datetime DEFAULT NULL,
  `intOrg4MonthAverage` int(10) unsigned DEFAULT NULL,
  `dblOrg3MonthAverage` float DEFAULT NULL,
  `intOrgTotalCustomers` int(10) unsigned DEFAULT NULL,
  `intOrgCurrentMonthCustomers` int(10) unsigned DEFAULT NULL,
  `strOrgCurrentMonth` varchar(15) DEFAULT NULL,
  `intOrgActiveStatusID` decimal(3,0) DEFAULT NULL,
  `strOrgFired` varchar(75) DEFAULT NULL,
  `intOrgPrevActiveStatusID` decimal(3,0) DEFAULT NULL,
  `blnOrgHasAdStamp` decimal(3,0) DEFAULT NULL,
  `intOrgCDRef` decimal(3,0) DEFAULT NULL,
  `strOrgEmailServer` varchar(50) DEFAULT NULL,
  `strOrgEmailUsername` varchar(50) DEFAULT NULL,
  `strOrgEmailPassword` varchar(50) DEFAULT NULL,
  `strOrgEmailFrom` varchar(50) DEFAULT NULL,
  `intOrgQuarterlyOptionID` int(10) unsigned DEFAULT NULL,
  `intOrgQuarterlyEventID` int(10) unsigned DEFAULT NULL,
  `dblOrgSFRateBuffer` float DEFAULT NULL,
  `dblOrgSFRateTrigger` float DEFAULT NULL,
  `dblOrgSFPaymentTrigger` float DEFAULT NULL,
  `dblOrgSFEquityTrigger` float DEFAULT NULL,
  `intOrgSFTriggerOptionID` int(10) DEFAULT NULL,
  `intOrgSFRateOptionID` int(10) DEFAULT NULL,
  `intOrgSFStatusID` int(10) DEFAULT NULL,
  `strOrgEmailFontType` varchar(100) DEFAULT NULL,
  `strOrgEmailFontSize` varchar(10) DEFAULT NULL,
  `strOrgEmailFontColor` varchar(10) DEFAULT NULL,
  `intOrgEmailHeaderTemplateID` int(10) DEFAULT NULL,
  `intOrgEmailFooterTemplateID` int(10) DEFAULT NULL,
  `intOrgLOSID` int(10) DEFAULT NULL,
  `strOrgGrade` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`intOrgID`),
  KEY `intOrgParentOrgID` (`intOrgParentOrgID`),
  KEY `intOrgContactClientID` (`intOrgContactClientID`)
) ENGINE=InnoDB AUTO_INCREMENT=1100 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblorgsproducts`
--

DROP TABLE IF EXISTS `tblorgsproducts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblorgsproducts` (
  `intProducttoOrgid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intProductID` int(10) unsigned DEFAULT NULL,
  `intOrgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`intProducttoOrgid`)
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblorgstracks`
--

DROP TABLE IF EXISTS `tblorgstracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblorgstracks` (
  `intOrgID` int(10) unsigned DEFAULT NULL,
  `intTrackID` int(10) unsigned DEFAULT NULL,
  `intProduct1ID` decimal(3,0) DEFAULT NULL,
  `intProduct2ID` decimal(3,0) DEFAULT NULL,
  `intProduct3ID` decimal(3,0) DEFAULT NULL,
  `intProduct4ID` decimal(3,0) DEFAULT NULL,
  `intProduct5ID` decimal(3,0) DEFAULT NULL,
  `blnOrgsTracksPrimary` decimal(3,0) DEFAULT NULL,
  KEY `intOrgID` (`intOrgID`,`intTrackID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblorgstriggerlisteners`
--

DROP TABLE IF EXISTS `tblorgstriggerlisteners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblorgstriggerlisteners` (
  `intOTRLID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intOrgID` int(10) unsigned NOT NULL,
  `intTriggerListenerID` int(10) unsigned DEFAULT NULL,
  `blnOTLIsAnnual` decimal(3,0) DEFAULT NULL,
  `dteOTLStartDate` datetime DEFAULT NULL,
  PRIMARY KEY (`intOTRLID`)
) ENGINE=InnoDB AUTO_INCREMENT=513 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblpapertype`
--

DROP TABLE IF EXISTS `tblpapertype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblpapertype` (
  `intPaperTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `strPaperTypeName` varchar(50) DEFAULT NULL,
  `intPaperTypeReturnEnvelopeID` decimal(3,0) DEFAULT NULL,
  `strPaperTypeGenre` varchar(10) DEFAULT NULL,
  `strPaperTypeColorCode` varchar(10) DEFAULT NULL,
  `blnPaperTypeDirectSmile` tinyint(3) unsigned DEFAULT NULL,
  `blnPaperTypePSMail` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`intPaperTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblprint_ondemand`
--

DROP TABLE IF EXISTS `tblprint_ondemand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblprint_ondemand` (
  `intondemandjobid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intondemandprintjobid` int(10) unsigned NOT NULL DEFAULT '0',
  `intondemandinternaluserid` int(10) unsigned NOT NULL,
  `intondemandeventtypeid` int(10) unsigned NOT NULL,
  `dteondemandcreated` datetime DEFAULT NULL,
  `intondemandclientid` int(10) unsigned NOT NULL,
  `intondemandorgid` int(10) unsigned NOT NULL,
  `intondemandeventstatusid` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `txtcontactsq` mediumtext,
  `intondemandeventid` int(10) unsigned NOT NULL,
  `intqty` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intondemandjobid`),
  KEY `intondemandeventtypeid` (`intondemandeventtypeid`),
  KEY `intondemandeventstatusid` (`intondemandeventstatusid`),
  KEY `intondemandclientid` (`intondemandclientid`),
  KEY `intondemandorgid` (`intondemandorgid`)
) ENGINE=InnoDB AUTO_INCREMENT=280 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblprintjobs`
--

DROP TABLE IF EXISTS `tblprintjobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblprintjobs` (
  `intprintjobid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dtecreated` datetime DEFAULT NULL,
  `blncustomjob` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `intinternaluserid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `inteventtypeid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `dtesynccomplete` datetime DEFAULT NULL,
  `dtefinished` datetime DEFAULT NULL,
  `intinstancecount` int(10) unsigned NOT NULL DEFAULT '0',
  `jsoneventinstances` mediumtext,
  `csvfile` varchar(255) NOT NULL DEFAULT '',
  `jobfile` varchar(255) NOT NULL DEFAULT '',
  `intremoteinstancecount` int(10) unsigned NOT NULL DEFAULT '0',
  `intremotepdfprocesstime` int(10) unsigned NOT NULL DEFAULT '0',
  `blnbdaycards` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `customorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `customeventid` int(10) unsigned NOT NULL,
  `blnondemandjob` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `intondemandjobid` int(10) unsigned NOT NULL DEFAULT '0',
  `blnneedpresort` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `strpresortfile` varchar(255) DEFAULT NULL,
  `dtepresort` datetime DEFAULT NULL,
  `strpostcardondemandjobids` text,
  `strqcdoneby` varchar(255) DEFAULT NULL,
  `dteqc` datetime DEFAULT NULL,
  PRIMARY KEY (`intprintjobid`),
  KEY `inteventtypeid` (`inteventtypeid`),
  KEY `intondemandjobid` (`intondemandjobid`)
) ENGINE=InnoDB AUTO_INCREMENT=3701 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblprintjobs_samples`
--

DROP TABLE IF EXISTS `tblprintjobs_samples`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblprintjobs_samples` (
  `intsampleprintjobid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dtecreated` datetime DEFAULT NULL,
  PRIMARY KEY (`intsampleprintjobid`)
) ENGINE=InnoDB AUTO_INCREMENT=435 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblprintjobsbadevents`
--

DROP TABLE IF EXISTS `tblprintjobsbadevents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblprintjobsbadevents` (
  `intprintjobdetailid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intprintjobid` int(10) unsigned NOT NULL DEFAULT '0',
  `inteventinstanceid` int(10) unsigned NOT NULL,
  `dtemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `intcustomerid` int(10) unsigned NOT NULL DEFAULT '0',
  `straddressedto` varchar(10) NOT NULL DEFAULT '',
  `intloanid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intprintjobdetailid`),
  KEY `inteventinstanceid` (`inteventinstanceid`)
) ENGINE=InnoDB AUTO_INCREMENT=6694 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblprintorder`
--

DROP TABLE IF EXISTS `tblprintorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblprintorder` (
  `intPrintOrderID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dtePrintOrderDate` datetime DEFAULT NULL,
  `intPrintOrderPaperTypeID` decimal(3,0) DEFAULT NULL,
  `intPrintOrderEnvelopeTypeID` decimal(3,0) DEFAULT NULL,
  `intPrintOrderInstances` int(10) unsigned DEFAULT NULL,
  `intPrintOrderInternalUserID` decimal(3,0) DEFAULT NULL,
  PRIMARY KEY (`intPrintOrderID`)
) ENGINE=InnoDB AUTO_INCREMENT=8202 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblproduct`
--

DROP TABLE IF EXISTS `tblproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblproduct` (
  `intProductID` int(11) NOT NULL AUTO_INCREMENT,
  `strProductName` varchar(50) DEFAULT NULL,
  `intProductPercentage` decimal(3,0) DEFAULT NULL,
  `intProductBusinessUnitID` decimal(3,0) DEFAULT NULL,
  `intProductIndustryID` decimal(3,0) DEFAULT NULL,
  `blnProductRequiresAction` decimal(3,0) DEFAULT NULL,
  `strProductIncludeURL` varchar(50) DEFAULT NULL,
  `blnProductBoxes` decimal(3,0) DEFAULT NULL,
  `blnProductHandbook` decimal(3,0) DEFAULT NULL,
  `blnProductFirstInstance` decimal(3,0) DEFAULT NULL,
  `dblProductFirstInstancePrice` float DEFAULT NULL,
  `intProductStorageOptionID` decimal(3,0) DEFAULT NULL,
  `intProductCommission` decimal(3,0) DEFAULT NULL,
  `intProductTypeConvOptionID` decimal(3,0) DEFAULT NULL,
  `dblProductTypeConvPrice` float DEFAULT NULL,
  `intProductTypeVAOptionID` decimal(3,0) DEFAULT NULL,
  `dblProductTypeVAPrice` float DEFAULT NULL,
  `intProductTypeFHAOptionID` decimal(3,0) DEFAULT NULL,
  `dblProductTypeFHAPrice` float DEFAULT NULL,
  `intProductTypeUSDAOptionID` decimal(3,0) DEFAULT NULL,
  `dblProductTypeUSDAPrice` float DEFAULT NULL,
  `intProductTypeHELOCOptionID` decimal(3,0) DEFAULT NULL,
  `dblProductTypeHELOCPrice` float DEFAULT NULL,
  `intProductNum1OptionID` decimal(3,0) DEFAULT NULL,
  `dblProductNum1Price` float DEFAULT NULL,
  `intProductNum2OptionID` decimal(3,0) DEFAULT NULL,
  `dblProductNum2Price` float DEFAULT NULL,
  `intProductPurposePurchOptionID` decimal(3,0) DEFAULT NULL,
  `dblProductPurposePurchPrice` float DEFAULT NULL,
  `intProductPurposeRefiOptionID` decimal(3,0) DEFAULT NULL,
  `dblProductPurposeRefiPrice` float DEFAULT NULL,
  `intProductPurposeConstOptionID` decimal(3,0) DEFAULT NULL,
  `dblProductPurposeConstPrice` float DEFAULT NULL,
  `intProductPurposeConstPermOptionID` decimal(3,0) DEFAULT NULL,
  `dblProductPurposeConstPermPrice` float DEFAULT NULL,
  `intProductPropertyPrimaryOptionID` decimal(3,0) DEFAULT NULL,
  `dblProductPropertyPrimaryPrice` float DEFAULT NULL,
  `intProductPropertySecondaryOptionID` decimal(3,0) DEFAULT NULL,
  `dblProductPropertySecondaryPrice` float DEFAULT NULL,
  `intProductPropertyInvestOptionID` decimal(3,0) DEFAULT NULL,
  `dblProductPropertyInvestPrice` float DEFAULT NULL,
  `intProductTOMNJobID` decimal(3,0) DEFAULT NULL,
  PRIMARY KEY (`intProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblproductoption`
--

DROP TABLE IF EXISTS `tblproductoption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblproductoption` (
  `intProductOptionID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `strProductOptionName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`intProductOptionID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblproducttemp`
--

DROP TABLE IF EXISTS `tblproducttemp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblproducttemp` (
  `intOrgID` bigint(19) DEFAULT NULL,
  `intProduct1ID` decimal(3,0) DEFAULT NULL,
  `strProduct1Name` varchar(50) NOT NULL,
  `intProduct2ID` decimal(3,0) DEFAULT NULL,
  `strProduct2Name` varchar(50) NOT NULL,
  `intProduct3ID` decimal(3,0) DEFAULT NULL,
  `strProduct3Name` varchar(50) NOT NULL,
  `intProduct4ID` decimal(3,0) DEFAULT NULL,
  `strProduct4Name` varchar(50) NOT NULL,
  `intProduct5ID` decimal(3,0) DEFAULT NULL,
  `strProduct5Name` varchar(50) NOT NULL,
  `strTrackName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblqbitem`
--

DROP TABLE IF EXISTS `tblqbitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblqbitem` (
  `intQBItemID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `strQBItemName` varchar(35) DEFAULT NULL,
  `dblQBItemPrice` float DEFAULT NULL,
  `dblQBItemCommission` decimal(3,0) DEFAULT NULL,
  `blnQBItemActive` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`intQBItemID`)
) ENGINE=InnoDB AUTO_INCREMENT=609 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblqbitem_ultracart`
--

DROP TABLE IF EXISTS `tblqbitem_ultracart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblqbitem_ultracart` (
  `intItemID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `intQBItemID` int(11) unsigned NOT NULL DEFAULT '0',
  `strItemName` varchar(255) DEFAULT NULL,
  `intItemOrgID` int(11) unsigned NOT NULL DEFAULT '0',
  `strItemDescription` varchar(255) DEFAULT NULL,
  `dblItemPrice` decimal(11,2) unsigned NOT NULL DEFAULT '0.00',
  `intItemUltracartID` int(11) unsigned NOT NULL DEFAULT '0',
  `intItemCategoryID` int(11) unsigned NOT NULL DEFAULT '0',
  `isDefault` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intItemID`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblqbitem_ultracart_orgprice`
--

DROP TABLE IF EXISTS `tblqbitem_ultracart_orgprice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblqbitem_ultracart_orgprice` (
  `intOrgPriceID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `intOrgPriceOrgID` int(11) unsigned NOT NULL DEFAULT '0',
  `intOrgPriceTypeID` int(11) unsigned NOT NULL DEFAULT '0',
  `intOrgPriceUCID` int(11) unsigned NOT NULL DEFAULT '0',
  `intOrgPriceQBItemID` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intOrgPriceID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblqbitem_ultracart_tiers`
--

DROP TABLE IF EXISTS `tblqbitem_ultracart_tiers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblqbitem_ultracart_tiers` (
  `intTierID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `intTypeID` int(11) unsigned NOT NULL DEFAULT '0',
  `intUCID` int(11) unsigned NOT NULL,
  `intLowQty` int(11) unsigned NOT NULL DEFAULT '0',
  `intHighQty` int(11) unsigned NOT NULL DEFAULT '0',
  `intOrgID` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intTierID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblquarterlyoption`
--

DROP TABLE IF EXISTS `tblquarterlyoption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblquarterlyoption` (
  `intQuarterlyOptionID` int(11) NOT NULL AUTO_INCREMENT,
  `strQuarterlyOptionName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`intQuarterlyOptionID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblquarterlytemplate`
--

DROP TABLE IF EXISTS `tblquarterlytemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblquarterlytemplate` (
  `intQuarterlyTemplateID` int(11) NOT NULL AUTO_INCREMENT,
  `strQuarterlyTemplateName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`intQuarterlyTemplateID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblreason`
--

DROP TABLE IF EXISTS `tblreason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblreason` (
  `intReasonID` int(10) DEFAULT NULL,
  `strReasonValue` varchar(150) DEFAULT NULL,
  `strReasonDetails` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblrequireddocs`
--

DROP TABLE IF EXISTS `tblrequireddocs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblrequireddocs` (
  `intrdid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intrdorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `intrdclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `txtrdcontents` mediumtext,
  `dterdcreated` datetime DEFAULT NULL,
  `dterdmodified` datetime DEFAULT NULL,
  `txtrdtitle` text,
  `blnrdshowlogo` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `blnrdshowprofile` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `strrdprimarycolor` char(6) DEFAULT NULL,
  PRIMARY KEY (`intrdid`),
  KEY `intrdorgid` (`intrdorgid`),
  KEY `intrdclientid` (`intrdclientid`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblrole`
--

DROP TABLE IF EXISTS `tblrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblrole` (
  `intRoleID` int(11) NOT NULL AUTO_INCREMENT,
  `strRoleName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`intRoleID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblsalesource`
--

DROP TABLE IF EXISTS `tblsalesource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsalesource` (
  `intSaleSourceID` int(11) NOT NULL AUTO_INCREMENT,
  `strSaleSourceName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`intSaleSourceID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblsavedfielddata`
--

DROP TABLE IF EXISTS `tblsavedfielddata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsavedfielddata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `searchID` varchar(200) NOT NULL,
  `fieldInfo` varchar(10) NOT NULL,
  `operator` varchar(20) NOT NULL,
  `fieldValue` varchar(200) NOT NULL,
  `clientID` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=420 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblsavedsearch`
--

DROP TABLE IF EXISTS `tblsavedsearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsavedsearch` (
  `intSavedSearchID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intSavedSearchClientID` int(10) NOT NULL,
  `strSavedSearchName` varchar(100) NOT NULL,
  `strSavedSearchString` text NOT NULL,
  PRIMARY KEY (`intSavedSearchID`)
) ENGINE=InnoDB AUTO_INCREMENT=327 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblsecuritypolicy`
--

DROP TABLE IF EXISTS `tblsecuritypolicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsecuritypolicy` (
  `intPolicyID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `intOrgID` int(11) unsigned DEFAULT NULL,
  `intClientSetID` int(11) DEFAULT NULL,
  `intLength` int(11) unsigned NOT NULL DEFAULT '8',
  `intUpperCase` int(11) unsigned NOT NULL DEFAULT '1',
  `intNumberCount` int(11) unsigned NOT NULL DEFAULT '1',
  `intSpecialChars` int(11) unsigned NOT NULL DEFAULT '1',
  `intExpiresDays` int(11) unsigned NOT NULL DEFAULT '0',
  `intIterations` int(11) unsigned NOT NULL DEFAULT '1',
  `intLockoutTries` int(11) unsigned NOT NULL DEFAULT '10',
  `dteDatestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intPolicyID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblsfrateoption`
--

DROP TABLE IF EXISTS `tblsfrateoption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsfrateoption` (
  `intSFRateOptionID` int(11) NOT NULL AUTO_INCREMENT,
  `strSFRateOptionName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`intSFRateOptionID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblsfstatus`
--

DROP TABLE IF EXISTS `tblsfstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsfstatus` (
  `intSFStatusID` int(11) NOT NULL AUTO_INCREMENT,
  `strSFStatusName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`intSFStatusID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblsftriggeroption`
--

DROP TABLE IF EXISTS `tblsftriggeroption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsftriggeroption` (
  `intSFTriggerOptionID` int(11) NOT NULL AUTO_INCREMENT,
  `strSFTriggerOptionName` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`intSFTriggerOptionID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblsiglogostatus`
--

DROP TABLE IF EXISTS `tblsiglogostatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsiglogostatus` (
  `intSigLogoStatusID` int(11) NOT NULL AUTO_INCREMENT,
  `strSigLogoStatusName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`intSigLogoStatusID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblsignup`
--

DROP TABLE IF EXISTS `tblsignup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsignup` (
  `intSignupID` int(11) NOT NULL AUTO_INCREMENT,
  `strOrganizationFunctionPreset` varchar(20) DEFAULT NULL,
  `dblMonthlyMinimum` double(11,2) DEFAULT NULL,
  `blnMultiSeat` tinyint(1) DEFAULT NULL,
  `blnMonthlySurefireEmails` tinyint(1) DEFAULT NULL,
  `blnCampaignManager` tinyint(1) DEFAULT NULL,
  `blnMLSRateAlerts` tinyint(1) DEFAULT NULL,
  `dblRateBuffer` double(11,4) DEFAULT NULL,
  `dblRateTrigger` double(11,4) DEFAULT NULL,
  `blnTargetRateAlerts` tinyint(1) DEFAULT NULL,
  `blnCreditPullAlerts` tinyint(1) DEFAULT NULL,
  `dblCreditPullAlertUploadCost` double(11,2) DEFAULT NULL,
  `dblCreditPullAlertMatchCost` double(11,2) DEFAULT NULL,
  `blnSelfServeEmail` tinyint(1) DEFAULT NULL,
  `intSelfServeEmailQuota` int(11) DEFAULT NULL,
  `blnDigitalSurveys` tinyint(1) DEFAULT NULL,
  `blnCustomForms` tinyint(1) DEFAULT NULL,
  `blnDynamicVideo` tinyint(1) DEFAULT NULL,
  `strWebSite1003Option` varchar(20) DEFAULT NULL,
  `blnAutoBlog` tinyint(1) DEFAULT NULL,
  `blnAPIAccess` tinyint(1) DEFAULT NULL,
  `blnPrivateLabel` tinyint(1) DEFAULT NULL,
  `intTrackID` int(11) DEFAULT '0',
  `uuidSignUpID` varchar(35) DEFAULT NULL,
  `blnClientSigned` tinyint(1) DEFAULT '0',
  `dteDateStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `intuserstatus` int(10) unsigned NOT NULL DEFAULT '0',
  `intinternaluserid` int(10) unsigned NOT NULL DEFAULT '1',
  `strlinklabel` varchar(255) DEFAULT NULL,
  `intDoneOrgID` int(10) DEFAULT '0',
  `errormessage` mediumtext,
  `blnForceNoSig` tinyint(1) NOT NULL DEFAULT '0',
  `blnisdeleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dteDateCreated` datetime DEFAULT NULL,
  `blnSyncAgents` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `blnFlyers` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intSignupID`)
) ENGINE=InnoDB AUTO_INCREMENT=658 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblsignup_bullets`
--

DROP TABLE IF EXISTS `tblsignup_bullets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsignup_bullets` (
  `descID` int(11) NOT NULL AUTO_INCREMENT,
  `dbName` varchar(50) DEFAULT NULL,
  `dbValue` varchar(50) DEFAULT NULL,
  `displayName` varchar(250) DEFAULT NULL,
  `displayOrder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`descID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblstate`
--

DROP TABLE IF EXISTS `tblstate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblstate` (
  `strStateAbr` varchar(2) DEFAULT NULL,
  `strStateName` varchar(50) DEFAULT NULL,
  `intStateLeadTime` decimal(3,0) DEFAULT NULL,
  `intStateStorageMonths` int(10) DEFAULT NULL,
  `blnStateHasHomestead` decimal(3,0) DEFAULT NULL,
  `strHomesteadLink` varchar(100) DEFAULT NULL,
  `blnStateHasTimeChange` decimal(3,0) DEFAULT NULL,
  `blnStateRequiresStorageNotice` decimal(3,0) DEFAULT NULL,
  `strStateStorageNotes` varchar(100) DEFAULT NULL,
  `dblState1QuarterChange` float DEFAULT NULL,
  `dblState1YearChange` float DEFAULT NULL,
  `dblState5YearChange` float DEFAULT NULL,
  `dblStateSinceBlahChange` float DEFAULT NULL,
  `intStateRecordYear` int(10) DEFAULT NULL,
  `intStateRecordQuarter` int(10) DEFAULT NULL,
  `intStateRecordSinceBlahYear` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblstatelist`
--

DROP TABLE IF EXISTS `tblstatelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblstatelist` (
  `strStateAbr` char(2) DEFAULT NULL,
  `strStateName` varchar(50) DEFAULT NULL,
  `intStateID` int(11) NOT NULL AUTO_INCREMENT,
  `dblStateSalesTax` decimal(4,4) DEFAULT NULL,
  PRIMARY KEY (`intStateID`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblstatusalias`
--

DROP TABLE IF EXISTS `tblstatusalias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblstatusalias` (
  `intStatusAliasID` int(11) NOT NULL AUTO_INCREMENT,
  `intClientID` int(11) DEFAULT NULL,
  `intOrgID` int(11) DEFAULT NULL,
  `intLoanStatusID` int(11) DEFAULT NULL,
  `strStatusAlias` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`intStatusAliasID`),
  KEY `ndx_lsid` (`intLoanStatusID`),
  KEY `ndx_oid` (`intOrgID`),
  KEY `ndx_cid` (`intClientID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblstorageoption`
--

DROP TABLE IF EXISTS `tblstorageoption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblstorageoption` (
  `intStorageOptionID` int(11) NOT NULL AUTO_INCREMENT,
  `strStorageOptionName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`intStorageOptionID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblsurefirefaqs`
--

DROP TABLE IF EXISTS `tblsurefirefaqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsurefirefaqs` (
  `intFAQID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `strFAQQuestion` varchar(500) DEFAULT NULL,
  `strFAQAnswer` varchar(3000) DEFAULT NULL,
  `intInternalUserID` int(11) DEFAULT NULL,
  `dteFAQTimestamp` datetime DEFAULT NULL,
  `intFAQCategoryID` int(11) NOT NULL DEFAULT '0',
  `dteFAQModifiedDate` datetime DEFAULT NULL,
  `intModifiedBy` int(11) unsigned NOT NULL DEFAULT '0',
  `blnIsTechApproved` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `blnIsMarketingApproved` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `intFAQSortOrder` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intFAQID`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblsurefirefaqs_category`
--

DROP TABLE IF EXISTS `tblsurefirefaqs_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsurefirefaqs_category` (
  `intSurefireFAQCategoryID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `strSurefireFAQCategoryName` varchar(255) DEFAULT NULL,
  `intSortOrder` int(11) unsigned NOT NULL DEFAULT '0',
  `blnIsPublicCat` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`intSurefireFAQCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblsureflyer`
--

DROP TABLE IF EXISTS `tblsureflyer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsureflyer` (
  `intsureflyerid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dtecreated` datetime DEFAULT NULL,
  `dtemodified` datetime DEFAULT NULL,
  `strflyername` varchar(100) DEFAULT NULL,
  `jsonflyerdata` mediumtext,
  `jsonflyerthemes` mediumtext,
  `intsureflyerorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `intsureflyerclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `txtdesc` text,
  `intflyercategoryid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intsureflyerid`),
  KEY `intsureflyerorgid` (`intsureflyerorgid`),
  KEY `intsureflyerclientid` (`intsureflyerclientid`),
  KEY `intflyercategoryid` (`intflyercategoryid`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblsureflyer_instances`
--

DROP TABLE IF EXISTS `tblsureflyer_instances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsureflyer_instances` (
  `intflyerinstanceid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intflyerinstanceclientid` int(10) unsigned NOT NULL,
  `dtecreated` datetime DEFAULT NULL,
  `intsureflyerid` int(10) unsigned NOT NULL,
  `jsonData` mediumtext,
  `blnispreview` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intflyerinstanceid`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblsureflyer_versions`
--

DROP TABLE IF EXISTS `tblsureflyer_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsureflyer_versions` (
  `intsureflyerid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dtecreated` datetime DEFAULT NULL,
  `dtemodified` datetime DEFAULT NULL,
  `strflyername` varchar(100) DEFAULT NULL,
  `jsonflyerdata` mediumtext,
  `jsonflyerthemes` mediumtext,
  `intsureflyerorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `intsureflyerclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `txtdesc` text,
  `intflyercategoryid` int(10) unsigned NOT NULL DEFAULT '0',
  `intflyerid_original` int(10) unsigned NOT NULL DEFAULT '0',
  `blndeleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intsureflyerid`),
  KEY `intsureflyerorgid` (`intsureflyerorgid`),
  KEY `intsureflyerclientid` (`intsureflyerclientid`),
  KEY `intflyercategoryid` (`intflyercategoryid`),
  KEY `intflyerid_original` (`intflyerid_original`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblsureflyercategory`
--

DROP TABLE IF EXISTS `tblsureflyercategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsureflyercategory` (
  `intflyercategoryid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `strcategoryname` varchar(50) DEFAULT NULL,
  `intflyercategoryorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `intflyercategoryclientid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intflyercategoryid`),
  KEY `intflyercategoryorgid` (`intflyercategoryorgid`),
  KEY `intflyercategoryclientid` (`intflyercategoryclientid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbltempagent`
--

DROP TABLE IF EXISTS `tbltempagent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltempagent` (
  `intTempAgentID` int(11) NOT NULL AUTO_INCREMENT,
  `intTempAgentOrgID` bigint(19) DEFAULT NULL,
  `strTempAgentFName` varchar(50) DEFAULT NULL,
  `strTempAgentLName` varchar(50) DEFAULT NULL,
  `strTempAgentCompany` varchar(50) DEFAULT NULL,
  `strTempAgentAddress1` varchar(50) DEFAULT NULL,
  `strTempAgentAddress2` varchar(50) DEFAULT NULL,
  `strTempAgentCity` varchar(50) DEFAULT NULL,
  `strTempAgentState` varchar(3) DEFAULT NULL,
  `strTempAgentZip` varchar(5) DEFAULT NULL,
  `strTempAgentPhone` varchar(14) DEFAULT NULL,
  `strTempAgentMobile` varchar(14) DEFAULT NULL,
  `strTempAgentEmail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`intTempAgentID`)
) ENGINE=InnoDB AUTO_INCREMENT=4398 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbltempclient`
--

DROP TABLE IF EXISTS `tbltempclient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltempclient` (
  `intTempClientID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intTempClientOrgID` int(10) unsigned DEFAULT NULL,
  `intTempClientInternalTrackID` int(10) unsigned DEFAULT NULL,
  `strTempClientFName` varchar(50) DEFAULT NULL,
  `strTempClientLName` varchar(50) DEFAULT NULL,
  `strTempClientTitle` varchar(50) DEFAULT NULL,
  `strTempClientPhone` varchar(14) DEFAULT NULL,
  `strTempClientPhoneExt` varchar(7) DEFAULT NULL,
  `strTempClientMobilePhone` varchar(14) DEFAULT NULL,
  `strTempClientPhoneTollFree` varchar(14) DEFAULT NULL,
  `strTempClientFax` varchar(14) DEFAULT NULL,
  `strTempClientEmail` varchar(50) DEFAULT NULL,
  `strTempClientEmailCC` varchar(50) DEFAULT NULL,
  `strTempClientAddress1` varchar(50) DEFAULT NULL,
  `strTempClientAddress2` varchar(50) DEFAULT NULL,
  `strTempClientCity` varchar(50) DEFAULT NULL,
  `strTempClientState` varchar(4) DEFAULT NULL,
  `strTempClientZip` varchar(10) DEFAULT NULL,
  `strTempClientMetro` varchar(50) DEFAULT NULL,
  `strTempClientUsername` varchar(50) DEFAULT NULL,
  `strTempClientPassword` varchar(50) DEFAULT NULL,
  `dteTempClientBDay` datetime DEFAULT NULL,
  `strTempClientCompanyName` varchar(50) DEFAULT NULL,
  `intTempClientRoleID` decimal(3,0) DEFAULT NULL,
  `strTempClientWebPage` varchar(50) DEFAULT NULL,
  `intTempClientLogoStatusID` decimal(3,0) DEFAULT NULL,
  `intTempClientSignatureStatusID` decimal(3,0) DEFAULT NULL,
  `intTempClientPictureStatusID` decimal(3,0) DEFAULT NULL,
  `strTempClientEmailList` varchar(20) DEFAULT NULL,
  `intTempClientWelcomeEmailID` decimal(3,0) DEFAULT NULL,
  `strTempClientLicense` varchar(100) DEFAULT NULL,
  `strTempClientLicense3` varchar(255) DEFAULT NULL,
  `strTempClientEmailServer` varchar(50) DEFAULT NULL,
  `strTempClientEmailUsername` varchar(50) DEFAULT NULL,
  `strTempClientEmailPassword` varchar(50) DEFAULT NULL,
  `intTempClientEmailFooterID` decimal(3,0) DEFAULT NULL,
  `dblTempClientCommish` float DEFAULT NULL,
  `strTempClientEmailFontType` varchar(100) DEFAULT NULL,
  `strTempClientEmailFontSize` varchar(10) DEFAULT NULL,
  `strTempClientEmailFontColor` varchar(10) DEFAULT NULL,
  `intTempClientEmailHeaderTemplateID` int(10) unsigned DEFAULT NULL,
  `intTempClientEmailFooterTemplateID` int(10) unsigned DEFAULT NULL,
  `intTempClientBranchID` int(10) DEFAULT NULL,
  `strtemplosecondaryid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`intTempClientID`),
  KEY `intTempClientOrgID` (`intTempClientOrgID`)
) ENGINE=InnoDB AUTO_INCREMENT=6175 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbltempcobaltdupeagents`
--

DROP TABLE IF EXISTS `tbltempcobaltdupeagents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltempcobaltdupeagents` (
  `intcustomerid` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbltempcustomer`
--

DROP TABLE IF EXISTS `tbltempcustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltempcustomer` (
  `intTempCustomerID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `strTempCustomerEnteredBy` varchar(21) DEFAULT NULL,
  `strTempCustomerPreviousLO` varchar(100) DEFAULT NULL,
  `intTempCustomerTrackID` int(10) unsigned DEFAULT NULL,
  `strTempCustomerEnvelopeLineBoth` varchar(100) DEFAULT NULL,
  `blnTempCustomerUsesDearBoth` decimal(3,0) DEFAULT NULL,
  `strTempCustomerDearLineBoth` varchar(100) DEFAULT NULL,
  `intTempCustomerClientID` int(10) unsigned DEFAULT NULL,
  `intTempCustomerParentID` int(10) unsigned DEFAULT NULL,
  `blnTempCustomerHasFU` decimal(3,0) DEFAULT NULL,
  `blnTempCustomerHasCo` decimal(3,0) DEFAULT NULL,
  `intTempCustomerAgentID` int(10) unsigned DEFAULT NULL,
  `intTempCustomerTempAgentID` int(10) unsigned DEFAULT NULL,
  `dteTempCustomerAdded` datetime DEFAULT NULL,
  `strTempCustomerFName` varchar(50) DEFAULT NULL,
  `strTempCustomerLName` varchar(50) DEFAULT NULL,
  `strTempCustomerNickName` varchar(50) DEFAULT NULL,
  `strTempCustomerEnvelopeLine` varchar(50) DEFAULT NULL,
  `strTempCustomerDearLine` varchar(50) DEFAULT NULL,
  `blnTempCustomerUsesDear` decimal(3,0) DEFAULT NULL,
  `strTempCustomerCompanyName` varchar(50) DEFAULT NULL,
  `strTempCustomerAddress1` varchar(50) DEFAULT NULL,
  `strTempCustomerAddress2` varchar(50) DEFAULT NULL,
  `strTempCustomerAddress3` varchar(50) DEFAULT NULL,
  `strTempCustomerAddress4` varchar(50) DEFAULT NULL,
  `strTempCustomerCity` varchar(50) DEFAULT NULL,
  `strTempCustomerState` varchar(3) DEFAULT NULL,
  `strTempCustomerZip` varchar(50) DEFAULT NULL,
  `dteTempCustomerBDay` datetime DEFAULT NULL,
  `blnTempCustomerIsMale` decimal(3,0) DEFAULT NULL,
  `strTempCustomerPhone` varchar(14) DEFAULT NULL,
  `strTempCustomerAltPhone` varchar(14) DEFAULT NULL,
  `strTempCustomerEmail` varchar(50) DEFAULT NULL,
  `strTempCoCustomerFName` varchar(50) DEFAULT NULL,
  `strTempCoCustomerLName` varchar(50) DEFAULT NULL,
  `strTempCoCustomerNickName` varchar(50) DEFAULT NULL,
  `strTempCoCustomerEnvelopeLine` varchar(50) DEFAULT NULL,
  `strTempCoCustomerDearLine` varchar(50) DEFAULT NULL,
  `blnTempCoCustomerUsesDear` decimal(3,0) DEFAULT NULL,
  `strTempCoCustomerCompanyName` varchar(50) DEFAULT NULL,
  `strTempCoCustomerAddress1` varchar(50) DEFAULT NULL,
  `strTempCoCustomerAddress2` varchar(50) DEFAULT NULL,
  `strTempCoCustomerAddress3` varchar(50) DEFAULT NULL,
  `strTempCoCustomerAddress4` varchar(50) DEFAULT NULL,
  `strTempCoCustomerCity` varchar(50) DEFAULT NULL,
  `strTempCoCustomerState` varchar(50) DEFAULT NULL,
  `strTempCoCustomerZip` varchar(50) DEFAULT NULL,
  `dteTempCoCustomerBDay` datetime DEFAULT NULL,
  `blnTempCoCustomerIsMale` decimal(3,0) DEFAULT NULL,
  `strTempCoCustomerPhone` varchar(14) DEFAULT NULL,
  `strTempCoCustomerAltPhone` varchar(14) DEFAULT NULL,
  `strTempCoCustomerEmail` varchar(50) DEFAULT NULL,
  `strTempCustomerOption` varchar(50) DEFAULT NULL,
  `blnTempCustomerOption1` decimal(3,0) DEFAULT NULL,
  `blnTempCustomerOption2` decimal(3,0) DEFAULT NULL,
  `blnTempCustomerOption3` decimal(3,0) DEFAULT NULL,
  `intTempCustomerOption` int(10) unsigned DEFAULT NULL,
  `dteTempCustomerOption` datetime DEFAULT NULL,
  `intTempCustomerServicesID` decimal(3,0) DEFAULT NULL,
  `intTempCustomerPrimaryLoanID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`intTempCustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=36690 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbltemplate`
--

DROP TABLE IF EXISTS `tbltemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltemplate` (
  `intTemplateID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `strTemplateName` varchar(50) DEFAULT NULL,
  `blnTemplateMade` tinyint(1) unsigned DEFAULT '1',
  `blnTemplateHasSample` tinyint(1) unsigned DEFAULT NULL,
  `strTemplateEmailSubject` varchar(100) DEFAULT NULL,
  `strTemplateEmailContent1` text,
  `strTemplateEmailContent2` text,
  `blnTemplateThisYear` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`intTemplateID`)
) ENGINE=InnoDB AUTO_INCREMENT=1218 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbltemplendsmartdupeagents`
--

DROP TABLE IF EXISTS `tbltemplendsmartdupeagents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltemplendsmartdupeagents` (
  `intcustomerid` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbltemploan`
--

DROP TABLE IF EXISTS `tbltemploan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltemploan` (
  `intTempLoanID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intTempLoanCustomerID` int(10) unsigned DEFAULT NULL,
  `intTempLoanTrackID` int(10) unsigned DEFAULT NULL,
  `dteTempLoanClosingDate` datetime DEFAULT NULL,
  `intTempLoanStorageID` int(10) unsigned DEFAULT NULL,
  `strTempLoanAddress1` varchar(50) DEFAULT NULL,
  `strTempLoanAddress2` varchar(50) DEFAULT NULL,
  `strTempLoanCity` varchar(50) DEFAULT NULL,
  `strTempLoanState` char(2) DEFAULT NULL,
  `strTempLoanZip` varchar(5) DEFAULT NULL,
  `strTempLoanCheckAmount` varchar(50) DEFAULT NULL,
  `strTempLoanCheckNum` varchar(50) DEFAULT NULL,
  `blnTempLoanTitleCheck` decimal(3,0) DEFAULT NULL,
  `intTempLoanTypeID` decimal(3,0) DEFAULT NULL,
  `intTempLoanNumID` decimal(3,0) DEFAULT NULL,
  `intTempLoanPurposeID` decimal(3,0) DEFAULT NULL,
  `intTempLoanPropertyID` decimal(3,0) DEFAULT NULL,
  `intTempLoanUpdate` int(10) unsigned DEFAULT NULL,
  `intTempLoanProductID` int(10) unsigned DEFAULT NULL,
  `intTempLoanTerm` int(10) unsigned DEFAULT NULL,
  `intTempLoanStatusID` int(10) unsigned DEFAULT NULL,
  `dblTempLoanAmount` float DEFAULT NULL,
  `dblTempLoanPropertyValue` float DEFAULT NULL,
  `dblTempLoanRate` double(24,2) DEFAULT NULL,
  `strTempLoanFileNumber` varchar(50) DEFAULT NULL,
  `intTempLoanAgentID` int(10) DEFAULT NULL,
  `intTempLoanTempAgentID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`intTempLoanID`)
) ENGINE=InnoDB AUTO_INCREMENT=987166 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbltemporganization`
--

DROP TABLE IF EXISTS `tbltemporganization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltemporganization` (
  `intTempOrgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `strTempOrgName` varchar(50) DEFAULT NULL,
  `intTempOrgAdminClientID` int(10) unsigned DEFAULT NULL,
  `intTempOrgParentOrgID` int(10) unsigned DEFAULT NULL,
  `strTempOrgAddress1` varchar(50) DEFAULT NULL,
  `strTempOrgAddress2` varchar(50) DEFAULT NULL,
  `strTempOrgCity` varchar(50) DEFAULT NULL,
  `strTempOrgState` varchar(3) DEFAULT NULL,
  `strTempOrgZip` varchar(5) DEFAULT NULL,
  `strTempOrgWebPage` varchar(50) DEFAULT NULL,
  `strTempOrgPhone` varchar(14) DEFAULT NULL,
  `strTempOrgPhoneTollFree` varchar(14) DEFAULT NULL,
  `strTempOrgFax` varchar(14) DEFAULT NULL,
  `intTempOrgIndustryID` int(10) unsigned DEFAULT NULL,
  `intTempOrgInternalUserID` int(10) unsigned DEFAULT NULL,
  `intTempOrgLogoStatusID` decimal(3,0) DEFAULT NULL,
  `strTempOrgSaleSource` varchar(100) DEFAULT NULL,
  `dblTempOrgContract` float DEFAULT NULL,
  `dteTempOrgContractReceived` datetime DEFAULT NULL,
  `intTempOrgVolume` int(10) unsigned DEFAULT NULL,
  `strTempOrgTrack1` varchar(10) DEFAULT NULL,
  `strTempOrgTrack2` varchar(10) DEFAULT NULL,
  `strTempOrgTrack3` varchar(10) DEFAULT NULL,
  `strTempOrgTrack4` varchar(10) DEFAULT NULL,
  `strTempOrgTrack5` varchar(10) DEFAULT NULL,
  `strTempOrgProducts1` varchar(50) DEFAULT NULL,
  `strTempOrgProducts2` varchar(50) DEFAULT NULL,
  `strTempOrgProducts3` varchar(50) DEFAULT NULL,
  `strTempOrgProducts4` varchar(50) DEFAULT NULL,
  `strTempOrgProducts5` varchar(50) DEFAULT NULL,
  `strTempOrgNeedsHandbook` varchar(1) DEFAULT NULL,
  `strTempOrgNeedsBoxes` varchar(1) DEFAULT NULL,
  `blnTempOrgNeedsAdStamp` decimal(3,0) DEFAULT NULL,
  `blnTempOrgDataArchiving` decimal(3,0) DEFAULT NULL,
  `strTempOrgEmailServer` varchar(50) DEFAULT NULL,
  `strTempOrgEmailUsername` varchar(50) DEFAULT NULL,
  `strTempOrgEmailPassword` varchar(50) DEFAULT NULL,
  `strTempOrgEmailFrom` varchar(50) DEFAULT NULL,
  `intTempOrgSFStatusID` int(10) unsigned DEFAULT NULL,
  `strTempOrgGrade` varchar(1) DEFAULT NULL,
  `intTempOrgLOSID` int(10) unsigned DEFAULT NULL,
  `intPasswordDays` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intTempOrgID`)
) ENGINE=InnoDB AUTO_INCREMENT=623 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbltermsandconditions`
--

DROP TABLE IF EXISTS `tbltermsandconditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltermsandconditions` (
  `intTCID` int(11) NOT NULL AUTO_INCREMENT,
  `strTC` text,
  `blnTCRequiresUpgrade` decimal(3,0) DEFAULT NULL,
  PRIMARY KEY (`intTCID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbltomnjob`
--

DROP TABLE IF EXISTS `tbltomnjob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltomnjob` (
  `intTOMNJobID` int(11) NOT NULL AUTO_INCREMENT,
  `intTOMNJobInternalUserID` int(10) DEFAULT NULL,
  `strTOMNJobName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`intTOMNJobID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbltrack`
--

DROP TABLE IF EXISTS `tbltrack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltrack` (
  `intTrackID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intTrackQBItemID` int(10) unsigned DEFAULT NULL,
  `intTrackIndustryID` int(10) unsigned DEFAULT NULL,
  `strTrackLanguage` varchar(30) DEFAULT NULL,
  `blnTrackInternational` decimal(3,0) DEFAULT NULL,
  `blnTrackIsMaintenance` decimal(3,0) DEFAULT NULL,
  `blnTrackIsGeneric` decimal(3,0) DEFAULT NULL,
  `blnTrackIsBundle` decimal(3,0) DEFAULT NULL,
  `strTrackName` varchar(50) DEFAULT NULL,
  `strTrackCustomerLabel` varchar(50) DEFAULT NULL,
  `strTrackCoCustomerLabel` varchar(50) DEFAULT NULL,
  `strTrackAgentLabel` varchar(50) DEFAULT NULL,
  `blnTrackCompany` decimal(3,0) DEFAULT NULL,
  `strTrackBDayLabel` varchar(50) DEFAULT NULL,
  `blnTrackUsesBDay` decimal(3,0) DEFAULT NULL,
  `blnTrackUsesCoBDay` decimal(3,0) DEFAULT NULL,
  `strTrackCoBDayLabel` varchar(50) DEFAULT NULL,
  `strTrackClosingDateLabel` varchar(50) DEFAULT NULL,
  `strTrackOptionStringLabel` varchar(50) DEFAULT NULL,
  `strTrackCustomerIsMaleLabel` varchar(50) DEFAULT NULL,
  `blnTrackUsesCustomerIsMale` decimal(3,0) DEFAULT NULL,
  `blnTrackUsesCoCustomerIsMale` decimal(3,0) DEFAULT NULL,
  `strTrackCoCustomerIsMaleLabel` varchar(50) DEFAULT NULL,
  `strTrackOptionIntLabel` varchar(50) DEFAULT NULL,
  `strTrackOptionDateLabel` varchar(50) DEFAULT NULL,
  `strTrackOptionBoolean1Label` varchar(50) DEFAULT NULL,
  `strTrackOptionBoolean2Label` varchar(50) DEFAULT NULL,
  `strTrackOptionBoolean3Label` varchar(50) DEFAULT NULL,
  `strTrackTagLine` varchar(100) DEFAULT NULL,
  `blnTrackUsesLoanType` decimal(3,0) DEFAULT NULL,
  `blnTrackUsesLoanNum` decimal(3,0) DEFAULT NULL,
  `blnTrackUsesLoanPurpose` decimal(3,0) DEFAULT NULL,
  `blnTrackUsesLoanProperty` decimal(3,0) DEFAULT NULL,
  `blnTrackChecks` decimal(3,0) DEFAULT NULL,
  `blnTrackStorage` decimal(3,0) DEFAULT NULL,
  `blnTrackUsesLoanProduct` decimal(3,0) DEFAULT NULL,
  `blnTrackUsesLoanTerm` decimal(3,0) DEFAULT NULL,
  `blnTrackUsesLoanAmount` decimal(3,0) DEFAULT NULL,
  `blnTrackUsesLoanRate` decimal(3,0) DEFAULT NULL,
  `blnTrackUsesLoanStatus` decimal(3,0) DEFAULT NULL,
  `blnTrackUsesLoanFileNumber` decimal(3,0) DEFAULT NULL,
  `blnTrackUsesPropertyValue` decimal(3,0) DEFAULT NULL,
  `blnTrackQuarterlyOverride` decimal(3,0) DEFAULT NULL,
  PRIMARY KEY (`intTrackID`)
) ENGINE=InnoDB AUTO_INCREMENT=493 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbltrack_cabinet`
--

DROP TABLE IF EXISTS `tbltrack_cabinet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltrack_cabinet` (
  `inttrackcabinetid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `txttrackvars` mediumtext,
  `dtecreated` datetime DEFAULT NULL,
  `intclientid` int(10) unsigned NOT NULL,
  `bln_saved` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dtesaved` datetime DEFAULT NULL,
  `dtemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`inttrackcabinetid`),
  KEY `intclientid` (`intclientid`)
) ENGINE=InnoDB AUTO_INCREMENT=450 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbltrack_category`
--

DROP TABLE IF EXISTS `tbltrack_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltrack_category` (
  `inttrackcategoryid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `inttrackcategoryparentid` int(10) unsigned NOT NULL DEFAULT '0',
  `strtrackcategoryname` varchar(50) DEFAULT NULL,
  `dtemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `inttrackcategoryindustryid` int(11) DEFAULT NULL,
  PRIMARY KEY (`inttrackcategoryid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbltrack_categorydeleterelationship`
--

DROP TABLE IF EXISTS `tbltrack_categorydeleterelationship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltrack_categorydeleterelationship` (
  `inttrackcatrelid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `inttrackcategoryid` int(10) unsigned NOT NULL,
  `strdeletetrackcategoryids` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`inttrackcatrelid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbltrack_comments`
--

DROP TABLE IF EXISTS `tbltrack_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltrack_comments` (
  `inttrackcommentsid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `inttrackid` int(10) unsigned NOT NULL,
  `dtecreated` datetime DEFAULT NULL,
  `strsupervisor` varchar(50) DEFAULT NULL,
  `txtcomment` mediumtext,
  PRIMARY KEY (`inttrackcommentsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbltrack_events`
--

DROP TABLE IF EXISTS `tbltrack_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltrack_events` (
  `inttrackeventid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `inttrackid` int(10) unsigned NOT NULL,
  `inteventid` int(10) unsigned NOT NULL,
  `blnsub` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`inttrackeventid`)
) ENGINE=InnoDB AUTO_INCREMENT=7324 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbltrack_old`
--

DROP TABLE IF EXISTS `tbltrack_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltrack_old` (
  `intTrackID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intTrackQBItemID` int(10) unsigned DEFAULT NULL,
  `intTrackIndustryID` int(10) unsigned DEFAULT NULL,
  `strTrackLanguage` varchar(30) DEFAULT NULL,
  `blnTrackInternational` decimal(3,0) DEFAULT NULL,
  `blnTrackIsMaintenance` decimal(3,0) DEFAULT NULL,
  `blnTrackIsGeneric` decimal(3,0) DEFAULT NULL,
  `blnTrackIsBundle` decimal(3,0) DEFAULT NULL,
  `strTrackName` varchar(50) DEFAULT NULL,
  `strTrackCustomerLabel` varchar(50) DEFAULT NULL,
  `strTrackCoCustomerLabel` varchar(50) DEFAULT NULL,
  `strTrackAgentLabel` varchar(50) DEFAULT NULL,
  `blnTrackCompany` decimal(3,0) DEFAULT NULL,
  `strTrackBDayLabel` varchar(50) DEFAULT NULL,
  `blnTrackUsesBDay` decimal(3,0) DEFAULT NULL,
  `blnTrackUsesCoBDay` decimal(3,0) DEFAULT NULL,
  `strTrackCoBDayLabel` varchar(50) DEFAULT NULL,
  `strTrackClosingDateLabel` varchar(50) DEFAULT NULL,
  `strTrackOptionStringLabel` varchar(50) DEFAULT NULL,
  `strTrackCustomerIsMaleLabel` varchar(50) DEFAULT NULL,
  `blnTrackUsesCustomerIsMale` decimal(3,0) DEFAULT NULL,
  `blnTrackUsesCoCustomerIsMale` decimal(3,0) DEFAULT NULL,
  `strTrackCoCustomerIsMaleLabel` varchar(50) DEFAULT NULL,
  `strTrackOptionIntLabel` varchar(50) DEFAULT NULL,
  `strTrackOptionDateLabel` varchar(50) DEFAULT NULL,
  `strTrackOptionBoolean1Label` varchar(50) DEFAULT NULL,
  `strTrackOptionBoolean2Label` varchar(50) DEFAULT NULL,
  `strTrackOptionBoolean3Label` varchar(50) DEFAULT NULL,
  `strTrackTagLine` varchar(100) DEFAULT NULL,
  `blnTrackUsesLoanType` decimal(3,0) DEFAULT NULL,
  `blnTrackUsesLoanNum` decimal(3,0) DEFAULT NULL,
  `blnTrackUsesLoanPurpose` decimal(3,0) DEFAULT NULL,
  `blnTrackUsesLoanProperty` decimal(3,0) DEFAULT NULL,
  `blnTrackChecks` decimal(3,0) DEFAULT NULL,
  `blnTrackStorage` decimal(3,0) DEFAULT NULL,
  `blnTrackUsesLoanProduct` decimal(3,0) DEFAULT NULL,
  `blnTrackUsesLoanTerm` decimal(3,0) DEFAULT NULL,
  `blnTrackUsesLoanAmount` decimal(3,0) DEFAULT NULL,
  `blnTrackUsesLoanRate` decimal(3,0) DEFAULT NULL,
  `blnTrackUsesLoanStatus` decimal(3,0) DEFAULT NULL,
  `blnTrackUsesLoanFileNumber` decimal(3,0) DEFAULT NULL,
  `blnTrackUsesPropertyValue` decimal(3,0) DEFAULT NULL,
  `blnTrackQuarterlyOverride` decimal(3,0) DEFAULT NULL,
  PRIMARY KEY (`intTrackID`)
) ENGINE=InnoDB AUTO_INCREMENT=493 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbltrack_old_final_06192011`
--

DROP TABLE IF EXISTS `tbltrack_old_final_06192011`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltrack_old_final_06192011` (
  `intTrackID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intTrackQBItemID` int(10) unsigned DEFAULT NULL,
  `intTrackIndustryID` int(10) unsigned DEFAULT NULL,
  `strTrackLanguage` varchar(30) DEFAULT NULL,
  `blnTrackInternational` decimal(3,0) DEFAULT NULL,
  `blnTrackIsMaintenance` decimal(3,0) DEFAULT NULL,
  `blnTrackIsGeneric` decimal(3,0) DEFAULT NULL,
  `blnTrackIsBundle` decimal(3,0) DEFAULT NULL,
  `strTrackName` varchar(50) DEFAULT NULL,
  `strTrackCustomerLabel` varchar(50) DEFAULT NULL,
  `strTrackCoCustomerLabel` varchar(50) DEFAULT NULL,
  `strTrackAgentLabel` varchar(50) DEFAULT NULL,
  `blnTrackCompany` decimal(3,0) DEFAULT NULL,
  `strTrackBDayLabel` varchar(50) DEFAULT NULL,
  `blnTrackUsesBDay` decimal(3,0) DEFAULT NULL,
  `blnTrackUsesCoBDay` decimal(3,0) DEFAULT NULL,
  `strTrackCoBDayLabel` varchar(50) DEFAULT NULL,
  `strTrackClosingDateLabel` varchar(50) DEFAULT NULL,
  `strTrackOptionStringLabel` varchar(50) DEFAULT NULL,
  `strTrackCustomerIsMaleLabel` varchar(50) DEFAULT NULL,
  `blnTrackUsesCustomerIsMale` decimal(3,0) DEFAULT NULL,
  `blnTrackUsesCoCustomerIsMale` decimal(3,0) DEFAULT NULL,
  `strTrackCoCustomerIsMaleLabel` varchar(50) DEFAULT NULL,
  `strTrackOptionIntLabel` varchar(50) DEFAULT NULL,
  `strTrackOptionDateLabel` varchar(50) DEFAULT NULL,
  `strTrackOptionBoolean1Label` varchar(50) DEFAULT NULL,
  `strTrackOptionBoolean2Label` varchar(50) DEFAULT NULL,
  `strTrackOptionBoolean3Label` varchar(50) DEFAULT NULL,
  `strTrackTagLine` varchar(100) DEFAULT NULL,
  `blnTrackUsesLoanType` decimal(3,0) DEFAULT NULL,
  `blnTrackUsesLoanNum` decimal(3,0) DEFAULT NULL,
  `blnTrackUsesLoanPurpose` decimal(3,0) DEFAULT NULL,
  `blnTrackUsesLoanProperty` decimal(3,0) DEFAULT NULL,
  `blnTrackChecks` decimal(3,0) DEFAULT NULL,
  `blnTrackStorage` decimal(3,0) DEFAULT NULL,
  `blnTrackUsesLoanProduct` decimal(3,0) DEFAULT NULL,
  `blnTrackUsesLoanTerm` decimal(3,0) DEFAULT NULL,
  `blnTrackUsesLoanAmount` decimal(3,0) DEFAULT NULL,
  `blnTrackUsesLoanRate` decimal(3,0) DEFAULT NULL,
  `blnTrackUsesLoanStatus` decimal(3,0) DEFAULT NULL,
  `blnTrackUsesLoanFileNumber` decimal(3,0) DEFAULT NULL,
  `blnTrackUsesPropertyValue` decimal(3,0) DEFAULT NULL,
  `blnTrackQuarterlyOverride` decimal(3,0) DEFAULT NULL,
  PRIMARY KEY (`intTrackID`)
) ENGINE=InnoDB AUTO_INCREMENT=493 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbltrack_orgpermissions`
--

DROP TABLE IF EXISTS `tbltrack_orgpermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltrack_orgpermissions` (
  `inttrackorgpermissionsid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `inttrackorgid` int(10) unsigned NOT NULL,
  `blnsetdefaultapi` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `blnshowupload` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `blnshowmanualentry` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`inttrackorgpermissionsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbltrack_subscriptions`
--

DROP TABLE IF EXISTS `tbltrack_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltrack_subscriptions` (
  `inttracksubscriptionid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `inttracksub_orgid` int(10) unsigned NOT NULL DEFAULT '0',
  `inttracksub_clientid` int(10) unsigned NOT NULL DEFAULT '0',
  `inttracksub_trackid` int(10) unsigned NOT NULL DEFAULT '0',
  `blnsubscribed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `txtsettings` text,
  `bln_apidefault` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bln_uploaddefault` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bln_generalsubscribe` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dtesubscribed` datetime DEFAULT NULL,
  `dteunsubscribed` datetime DEFAULT NULL,
  `dtelastmodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`inttracksubscriptionid`),
  KEY `inttracksub_trackid` (`inttracksub_trackid`),
  KEY `inttracksub_clientid` (`inttracksub_clientid`),
  KEY `inttracksub_orgid` (`inttracksub_orgid`)
) ENGINE=InnoDB AUTO_INCREMENT=4097 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbltrack_subscriptions_copy`
--

DROP TABLE IF EXISTS `tbltrack_subscriptions_copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltrack_subscriptions_copy` (
  `inttracksubscriptionid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `inttracksub_orgid` int(10) unsigned NOT NULL DEFAULT '0',
  `inttracksub_clientid` int(10) unsigned NOT NULL DEFAULT '0',
  `inttracksub_trackid` int(10) unsigned NOT NULL DEFAULT '0',
  `blnsubscribed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `txtsettings` text,
  `bln_apidefault` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bln_uploaddefault` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bln_generalsubscribe` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dtesubscribed` datetime DEFAULT NULL,
  `dteunsubscribed` datetime DEFAULT NULL,
  `dtelastmodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`inttracksubscriptionid`),
  KEY `inttracksub_trackid` (`inttracksub_trackid`),
  KEY `inttracksub_clientid` (`inttracksub_clientid`),
  KEY `inttracksub_orgid` (`inttracksub_orgid`)
) ENGINE=InnoDB AUTO_INCREMENT=729 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbltrack_test`
--

DROP TABLE IF EXISTS `tbltrack_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltrack_test` (
  `inttrackid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `inttrackqbitemid` int(10) unsigned NOT NULL DEFAULT '0',
  `inttrackindustryid` int(10) unsigned NOT NULL DEFAULT '1',
  `inttrackorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `inttrackclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `inttrackcategoryid` int(10) unsigned NOT NULL,
  `strtrackname` varchar(100) DEFAULT NULL,
  `blntrackactive` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `dtecreated` datetime DEFAULT NULL,
  `dtemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `strtrackcreatedby` varchar(5) DEFAULT NULL,
  `blntrackbillable` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `txtevents` mediumtext,
  `txtdescription` text,
  `inttotalevents` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `strthemecolor` varchar(10) DEFAULT NULL,
  `txtkeywords` text,
  `blntrackapproved` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `dtetrackapproved` datetime DEFAULT NULL,
  `strsupervisor` varchar(155) DEFAULT NULL,
  `inttrackcreatorclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `txtcomments` text,
  `txtdenyreason` text,
  `dtetrackdenied` datetime DEFAULT NULL,
  `blntrackhidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `intemailtime` tinyint(3) unsigned NOT NULL DEFAULT '11',
  `inttrackapprovalid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`inttrackid`),
  KEY `inttrackorgid` (`inttrackorgid`),
  KEY `inttrackclientid` (`inttrackclientid`),
  KEY `blntrackapproved` (`blntrackapproved`),
  KEY `blntrackhidden` (`blntrackhidden`)
) ENGINE=InnoDB AUTO_INCREMENT=1057 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbltrack_test_copy`
--

DROP TABLE IF EXISTS `tbltrack_test_copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltrack_test_copy` (
  `inttrackid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `inttrackqbitemid` int(10) unsigned NOT NULL DEFAULT '0',
  `inttrackindustryid` int(10) unsigned NOT NULL DEFAULT '1',
  `inttrackorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `inttrackclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `inttrackcategoryid` int(10) unsigned NOT NULL,
  `strtrackname` varchar(100) DEFAULT NULL,
  `blntrackactive` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `dtecreated` datetime DEFAULT NULL,
  `dtemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `strtrackcreatedby` varchar(5) DEFAULT NULL,
  `blntrackbillable` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `txtevents` mediumtext,
  `txtdescription` text,
  `inttotalevents` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `strthemecolor` varchar(10) DEFAULT NULL,
  `txtkeywords` text,
  `blntrackapproved` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `dtetrackapproved` datetime DEFAULT NULL,
  `strsupervisor` varchar(155) DEFAULT NULL,
  `inttrackcreatorclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `txtcomments` text,
  `txtdenyreason` text,
  `dtetrackdenied` datetime DEFAULT NULL,
  PRIMARY KEY (`inttrackid`),
  KEY `inttrackorgid` (`inttrackorgid`),
  KEY `inttrackclientid` (`inttrackclientid`),
  KEY `blntrackapproved` (`blntrackapproved`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbltrack_test_copy2`
--

DROP TABLE IF EXISTS `tbltrack_test_copy2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltrack_test_copy2` (
  `inttrackid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `inttrackqbitemid` int(10) unsigned NOT NULL DEFAULT '0',
  `inttrackindustryid` int(10) unsigned NOT NULL DEFAULT '1',
  `inttrackorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `inttrackclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `inttrackcategoryid` int(10) unsigned NOT NULL,
  `strtrackname` varchar(100) DEFAULT NULL,
  `blntrackactive` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `dtecreated` datetime DEFAULT NULL,
  `dtemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `strtrackcreatedby` varchar(5) DEFAULT NULL,
  `blntrackbillable` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `txtevents` mediumtext,
  `txtdescription` text,
  `inttotalevents` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `strthemecolor` varchar(10) DEFAULT NULL,
  `txtkeywords` text,
  `blntrackapproved` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `dtetrackapproved` datetime DEFAULT NULL,
  `strsupervisor` varchar(155) DEFAULT NULL,
  `inttrackcreatorclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `txtcomments` text,
  `txtdenyreason` text,
  `dtetrackdenied` datetime DEFAULT NULL,
  PRIMARY KEY (`inttrackid`),
  KEY `inttrackorgid` (`inttrackorgid`),
  KEY `inttrackclientid` (`inttrackclientid`),
  KEY `blntrackapproved` (`blntrackapproved`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbltrack_test_copyFINAL`
--

DROP TABLE IF EXISTS `tbltrack_test_copyFINAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltrack_test_copyFINAL` (
  `inttrackid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `inttrackqbitemid` int(10) unsigned NOT NULL DEFAULT '0',
  `inttrackindustryid` int(10) unsigned NOT NULL DEFAULT '1',
  `inttrackorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `inttrackclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `inttrackcategoryid` int(10) unsigned NOT NULL,
  `strtrackname` varchar(100) DEFAULT NULL,
  `blntrackactive` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `dtecreated` datetime DEFAULT NULL,
  `dtemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `strtrackcreatedby` varchar(5) DEFAULT NULL,
  `blntrackbillable` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `txtevents` mediumtext,
  `txtdescription` text,
  `inttotalevents` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `strthemecolor` varchar(10) DEFAULT NULL,
  `txtkeywords` text,
  `blntrackapproved` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `dtetrackapproved` datetime DEFAULT NULL,
  `strsupervisor` varchar(155) DEFAULT NULL,
  `inttrackcreatorclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `txtcomments` text,
  `txtdenyreason` text,
  `dtetrackdenied` datetime DEFAULT NULL,
  PRIMARY KEY (`inttrackid`),
  KEY `inttrackorgid` (`inttrackorgid`),
  KEY `inttrackclientid` (`inttrackclientid`),
  KEY `blntrackapproved` (`blntrackapproved`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbltrack_test_preFPBchange_12_15_2011_seong`
--

DROP TABLE IF EXISTS `tbltrack_test_preFPBchange_12_15_2011_seong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltrack_test_preFPBchange_12_15_2011_seong` (
  `inttrackid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `inttrackqbitemid` int(10) unsigned NOT NULL DEFAULT '0',
  `inttrackindustryid` int(10) unsigned NOT NULL DEFAULT '1',
  `inttrackorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `inttrackclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `inttrackcategoryid` int(10) unsigned NOT NULL,
  `strtrackname` varchar(100) DEFAULT NULL,
  `blntrackactive` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `dtecreated` datetime DEFAULT NULL,
  `dtemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `strtrackcreatedby` varchar(5) DEFAULT NULL,
  `blntrackbillable` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `txtevents` mediumtext,
  `txtdescription` text,
  `inttotalevents` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `strthemecolor` varchar(10) DEFAULT NULL,
  `txtkeywords` text,
  `blntrackapproved` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `dtetrackapproved` datetime DEFAULT NULL,
  `strsupervisor` varchar(155) DEFAULT NULL,
  `inttrackcreatorclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `txtcomments` text,
  `txtdenyreason` text,
  `dtetrackdenied` datetime DEFAULT NULL,
  `blntrackhidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `intemailtime` tinyint(3) unsigned NOT NULL DEFAULT '11',
  `inttrackapprovalid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`inttrackid`),
  KEY `inttrackorgid` (`inttrackorgid`),
  KEY `inttrackclientid` (`inttrackclientid`),
  KEY `blntrackapproved` (`blntrackapproved`),
  KEY `blntrackhidden` (`blntrackhidden`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbltrack_thresholds`
--

DROP TABLE IF EXISTS `tbltrack_thresholds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltrack_thresholds` (
  `intthresholdid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intthresholdtrackid` int(10) unsigned NOT NULL DEFAULT '0',
  `intthresholdstatusid` int(10) unsigned NOT NULL DEFAULT '0',
  `intthresholdeventid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intthresholdid`),
  KEY `intthresholdtrackid` (`intthresholdtrackid`),
  KEY `intthresholdstatusid` (`intthresholdstatusid`),
  KEY `intthresholdeventid` (`intthresholdeventid`)
) ENGINE=InnoDB AUTO_INCREMENT=918 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbltracksevents`
--

DROP TABLE IF EXISTS `tbltracksevents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltracksevents` (
  `intEventID` int(10) unsigned DEFAULT NULL,
  `intTrackID` int(10) unsigned DEFAULT NULL,
  KEY `NewIndex1` (`intEventID`),
  KEY `NewIndex2` (`intTrackID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbltradeshow`
--

DROP TABLE IF EXISTS `tbltradeshow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltradeshow` (
  `intTradeShowID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dteTradeShowDate` datetime DEFAULT NULL,
  `strTradeShowName` varchar(50) DEFAULT NULL,
  `strTradeShowCity` varchar(50) DEFAULT NULL,
  `strTradeShowState` varchar(4) DEFAULT NULL,
  `dblTradeShowCost` float DEFAULT NULL,
  PRIMARY KEY (`intTradeShowID`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbltransactions_inprocessevents`
--

DROP TABLE IF EXISTS `tbltransactions_inprocessevents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltransactions_inprocessevents` (
  `intinprocesstransactionid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `strfilename` varchar(255) DEFAULT NULL,
  `dtecreated` datetime DEFAULT NULL,
  `intorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `dtefinished` datetime DEFAULT NULL,
  `intapproverinternaluserid` int(10) unsigned NOT NULL DEFAULT '0',
  `intapproverclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `strjobname` varchar(255) DEFAULT NULL,
  `strfilelocation` varchar(255) DEFAULT NULL,
  `intinprocesstransactionpipelinedataid` int(10) unsigned NOT NULL DEFAULT '0',
  `blnfinished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intinprocesstransactionid`),
  KEY `intorgid` (`intorgid`),
  KEY `blnfinished` (`blnfinished`),
  KEY `intapproverclientid` (`intapproverclientid`),
  KEY `intapproverinternaluserid` (`intapproverinternaluserid`),
  KEY `intinprocesstransactionpipelineid` (`intinprocesstransactionpipelinedataid`)
) ENGINE=InnoDB AUTO_INCREMENT=423 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbltransactions_inprocesseventsdetails`
--

DROP TABLE IF EXISTS `tbltransactions_inprocesseventsdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltransactions_inprocesseventsdetails` (
  `intinprocesstransactiondetailid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intinprocesstransactionid` int(10) unsigned NOT NULL DEFAULT '0',
  `intclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `stremailto` varchar(255) DEFAULT NULL,
  `stremailfrom` varchar(255) DEFAULT NULL,
  `txtemailsubject` text,
  `txtemailbody` mediumtext,
  `intpipelineid` int(10) unsigned NOT NULL DEFAULT '0',
  `intpipelinedataid` int(10) unsigned NOT NULL DEFAULT '0',
  `strthreshold` varchar(255) DEFAULT NULL,
  `dtecreated` datetime DEFAULT NULL,
  `blnemailed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `intapproverinternalid` int(10) unsigned NOT NULL DEFAULT '0',
  `intapproverclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `dteemailed` datetime DEFAULT NULL,
  `stremailcc` varchar(255) DEFAULT NULL,
  `stremailbcc` varchar(255) DEFAULT NULL,
  `inteventid` int(10) unsigned NOT NULL DEFAULT '0',
  `intcustomerid` int(10) unsigned NOT NULL DEFAULT '0',
  `inteventinstanceid` int(10) unsigned NOT NULL DEFAULT '0',
  `blndeleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `blnexcluded` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dteexcluded` datetime DEFAULT NULL,
  `intagentcustomerid` int(10) unsigned NOT NULL DEFAULT '0',
  `intlistingagentcustomerid` int(10) unsigned NOT NULL DEFAULT '0',
  `intprocessorcustomerid` int(10) unsigned NOT NULL DEFAULT '0',
  `blnautodeploy` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `dtedeleted` datetime DEFAULT NULL,
  `intinprocesstransactionorgid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intinprocesstransactiondetailid`),
  KEY `intinprocesstransactionid` (`intinprocesstransactionid`),
  KEY `intclientid` (`intclientid`),
  KEY `intpipelineid` (`intpipelineid`),
  KEY `intpipelinedataid` (`intpipelinedataid`),
  KEY `inteventid` (`inteventid`),
  KEY `intcustomerid` (`intcustomerid`),
  KEY `blnautodeploy` (`blnautodeploy`),
  KEY `intinprocesstransactionorgid` (`intinprocesstransactionorgid`)
) ENGINE=InnoDB AUTO_INCREMENT=68448 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbltrigger`
--

DROP TABLE IF EXISTS `tbltrigger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltrigger` (
  `intTriggerID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `strTriggerName` varchar(50) DEFAULT NULL,
  `intTriggerIntervalMonths` int(10) unsigned DEFAULT NULL,
  `intTriggerBufferMonths` int(10) unsigned DEFAULT NULL,
  `strTriggerDescription` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`intTriggerID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbltrigger_threadcount`
--

DROP TABLE IF EXISTS `tbltrigger_threadcount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltrigger_threadcount` (
  `uuidThreadID` varchar(35) NOT NULL COMMENT 'The UUID name of the cfthread',
  `dteStartTime` datetime DEFAULT NULL COMMENT 'When thread starts',
  `blnIsComplete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 when done',
  `intOrgID` int(11) DEFAULT NULL COMMENT 'Org id',
  PRIMARY KEY (`uuidThreadID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbltriggerinstance`
--

DROP TABLE IF EXISTS `tbltriggerinstance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltriggerinstance` (
  `intTriggerInstanceID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intTriggerInstanceCustomerID` int(10) unsigned DEFAULT NULL,
  `intTriggerInstanceLoanID` int(10) unsigned DEFAULT NULL,
  `intTriggerInstanceTriggerID` int(10) unsigned DEFAULT NULL,
  `dblTriggerInstanceCurrentPayment` float DEFAULT NULL,
  `strTriggerInstanceMatchingAddress` varchar(120) DEFAULT NULL,
  `strTriggerInstanceListPrice` varchar(20) DEFAULT NULL,
  `dblTriggerInstanceNewRate` double(24,2) DEFAULT NULL,
  `dblTriggerInstanceNewPayment` float DEFAULT NULL,
  `dblTriggerInstanceEquity` double(24,2) DEFAULT NULL,
  `dblTriggerInstanceBalance` float DEFAULT NULL,
  `dblTriggerInstanceCompRate1` double(24,2) DEFAULT NULL,
  `dblTriggerInstanceCompRate2` double(24,2) DEFAULT NULL,
  `dblTriggerInstanceCompRate3` double(24,2) DEFAULT NULL,
  `dblTriggerInstanceCompPayment1` float DEFAULT NULL,
  `dblTriggerInstanceCompPayment2` float DEFAULT NULL,
  `dblTriggerInstanceCompPayment3` float DEFAULT NULL,
  `dteTriggerInstance` datetime DEFAULT NULL,
  `intTriggerInstanceStatusID` int(10) unsigned DEFAULT NULL,
  `strTriggerInstanceComp1Address` varchar(120) DEFAULT NULL,
  `strTriggerInstanceComp2Address` varchar(120) DEFAULT NULL,
  `strTriggerInstanceComp3Address` varchar(120) DEFAULT NULL,
  `strTriggerInstanceComp4Address` varchar(120) DEFAULT NULL,
  `strTriggerInstanceComp5Address` varchar(120) DEFAULT NULL,
  `strTriggerInstanceComp1Price` varchar(20) DEFAULT NULL,
  `strTriggerInstanceComp2Price` varchar(20) DEFAULT NULL,
  `strTriggerInstanceComp3Price` varchar(20) DEFAULT NULL,
  `strTriggerInstanceComp4Price` varchar(20) DEFAULT NULL,
  `strTriggerInstanceComp5Price` varchar(20) DEFAULT NULL,
  `dteTriggerInstanceComp1Date` datetime DEFAULT NULL,
  `dteTriggerInstanceComp2Date` datetime DEFAULT NULL,
  `dteTriggerInstanceComp3Date` datetime DEFAULT NULL,
  `dteTriggerInstanceComp4Date` datetime DEFAULT NULL,
  `dteTriggerInstanceComp5Date` datetime DEFAULT NULL,
  `blnTriggerInstanceEmailed` decimal(3,0) DEFAULT NULL,
  `strTriggerInstanceName` varchar(200) DEFAULT NULL,
  `strTriggerInstancePhone` varchar(200) DEFAULT NULL,
  `intTriggerInstanceCustomerTargetRateID` int(10) DEFAULT NULL,
  PRIMARY KEY (`intTriggerInstanceID`),
  KEY `intTriggerInstanceCustomerID` (`intTriggerInstanceCustomerID`),
  KEY `intTriggerInstanceTriggerID` (`intTriggerInstanceTriggerID`)
) ENGINE=InnoDB AUTO_INCREMENT=1299556 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbltriggerlistener`
--

DROP TABLE IF EXISTS `tbltriggerlistener`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltriggerlistener` (
  `intTriggerListenerID` int(11) NOT NULL AUTO_INCREMENT,
  `strTriggerListenerName` varchar(50) DEFAULT NULL,
  `intTriggerListenerMonthlyQBItemID` int(10) DEFAULT NULL,
  `intTriggerListenerAnnualQBItemID` int(10) DEFAULT NULL,
  PRIMARY KEY (`intTriggerListenerID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbltriggerlistenersevents`
--

DROP TABLE IF EXISTS `tbltriggerlistenersevents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltriggerlistenersevents` (
  `inttriggerListenereventActionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intTriggerListenerID` int(10) unsigned NOT NULL,
  `intFirstEventID` int(10) unsigned DEFAULT NULL,
  `intEventID` int(10) unsigned DEFAULT NULL,
  `intTriggerID` int(10) unsigned DEFAULT NULL,
  `intInternalEventID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`inttriggerListenereventActionID`),
  KEY `intTriggerListenerID` (`intTriggerListenerID`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbltriggerstatus`
--

DROP TABLE IF EXISTS `tbltriggerstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltriggerstatus` (
  `intTriggerStatusID` int(11) NOT NULL AUTO_INCREMENT,
  `strTriggerStatusDescription` varchar(100) DEFAULT NULL,
  `intTriggerStatusTriggerID` int(2) DEFAULT NULL,
  PRIMARY KEY (`intTriggerStatusID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbluploadcontactalias`
--

DROP TABLE IF EXISTS `tbluploadcontactalias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbluploadcontactalias` (
  `intUploadContactAliasID` int(11) NOT NULL AUTO_INCREMENT,
  `intClientID` int(11) DEFAULT NULL,
  `intOrgID` int(11) DEFAULT NULL,
  `strContactAlias` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`intUploadContactAliasID`),
  KEY `ndx_orgID` (`intOrgID`),
  KEY `ndx_CA` (`strContactAlias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbluploadedimages`
--

DROP TABLE IF EXISTS `tbluploadedimages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbluploadedimages` (
  `intImageID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `strFileName` varchar(255) NOT NULL,
  `strFileExt` varchar(10) DEFAULT NULL,
  `strFileSize` varchar(255) DEFAULT NULL,
  `strFolderPath` varchar(255) DEFAULT NULL,
  `intClient_ID` int(10) NOT NULL DEFAULT '0',
  `intOrg_ID` int(10) NOT NULL DEFAULT '0',
  `blnIsDeleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `strFileNameFlyerPreview` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`intImageID`),
  KEY `intClient_ID` (`intClient_ID`),
  KEY `intOrg_ID` (`intOrg_ID`),
  KEY `blnIsDeleted` (`blnIsDeleted`)
) ENGINE=InnoDB AUTO_INCREMENT=4223 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbluploadfields`
--

DROP TABLE IF EXISTS `tbluploadfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbluploadfields` (
  `intapimapfieldsid` int(10) NOT NULL AUTO_INCREMENT,
  `intapimapid` int(10) unsigned NOT NULL,
  `strfieldname` varchar(50) NOT NULL DEFAULT '',
  `strdispcolumn` varchar(50) NOT NULL DEFAULT '',
  `strdbcolumn` varchar(50) DEFAULT NULL,
  `strdescription` varchar(500) NOT NULL DEFAULT '',
  `validation_rules` varchar(255) NOT NULL DEFAULT '',
  `required` tinyint(1) DEFAULT NULL,
  `intmaxlength` smallint(5) unsigned NOT NULL DEFAULT '0',
  `intfieldtype` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `flag_required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `intsortorder` int(11) DEFAULT NULL,
  PRIMARY KEY (`intapimapfieldsid`),
  KEY `ndxApimapid` (`intapimapid`),
  KEY `ndx_fname` (`strfieldname`),
  KEY `ndx_GC` (`validation_rules`,`required`)
) ENGINE=InnoDB AUTO_INCREMENT=270 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbluploadkeywords`
--

DROP TABLE IF EXISTS `tbluploadkeywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbluploadkeywords` (
  `intFieldID` int(11) NOT NULL AUTO_INCREMENT,
  `intapimapfieldsid` int(11) DEFAULT NULL,
  `strKeyWord` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`intFieldID`),
  KEY `ndx_kw` (`strKeyWord`),
  KEY `ndx_fieldID` (`intapimapfieldsid`)
) ENGINE=InnoDB AUTO_INCREMENT=477 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbluploadlog`
--

DROP TABLE IF EXISTS `tbluploadlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbluploadlog` (
  `intLogID` int(11) NOT NULL AUTO_INCREMENT,
  `intClientID` int(11) DEFAULT NULL,
  `dteCreated` datetime DEFAULT NULL,
  `tmeCreated` text,
  `contactType` int(11) DEFAULT NULL,
  `secContactType` int(11) DEFAULT NULL,
  `mapID` int(11) DEFAULT NULL,
  `trackID` int(11) DEFAULT NULL,
  `orgID` int(11) DEFAULT NULL,
  `contactID` float DEFAULT NULL,
  `contactMapped` bit(1) DEFAULT NULL,
  `strOrigFilename` varchar(200) DEFAULT NULL,
  `strFilename` varchar(50) DEFAULT NULL,
  `strErrors` mediumtext,
  `bIsDeleted` tinyint(1) DEFAULT '0',
  `bIsActive` smallint(1) DEFAULT NULL,
  `strNotes` varchar(500) DEFAULT NULL,
  `intMappedID` int(11) DEFAULT NULL,
  `intProcessedID` int(11) DEFAULT NULL,
  `strUploadErrors` mediumtext,
  `intHeaderRow` int(11) NOT NULL DEFAULT '1',
  `intUploadQueryKey` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`intLogID`),
  KEY `ndx_orgID` (`orgID`),
  KEY `ndx_` (`contactID`),
  KEY `ndx_del` (`bIsDeleted`),
  KEY `ndx_act` (`bIsActive`)
) ENGINE=InnoDB AUTO_INCREMENT=1416 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbluploadmap`
--

DROP TABLE IF EXISTS `tbluploadmap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbluploadmap` (
  `intmapID` int(11) NOT NULL AUTO_INCREMENT,
  `strMapName` varchar(100) DEFAULT NULL,
  `intClientID` int(11) DEFAULT NULL,
  `intOrgID` int(11) DEFAULT NULL,
  `intContact` int(11) DEFAULT NULL,
  `intSecContact` int(11) DEFAULT NULL,
  `intTrackID` int(11) DEFAULT NULL,
  `intContactMapped` int(11) DEFAULT NULL,
  `dteCreated` date DEFAULT NULL,
  `dteUpdated` date DEFAULT NULL,
  `intCreatedID` int(11) DEFAULT NULL,
  `intUpdatedID` int(11) DEFAULT NULL,
  PRIMARY KEY (`intmapID`),
  KEY `ndxMapID` (`intmapID`)
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbluploadmapcolumns`
--

DROP TABLE IF EXISTS `tbluploadmapcolumns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbluploadmapcolumns` (
  `intMapColumns` int(11) NOT NULL AUTO_INCREMENT,
  `intMapID` int(11) DEFAULT NULL,
  `strColumn` varchar(100) DEFAULT NULL,
  `strFileColumn` varchar(100) DEFAULT NULL,
  `intColumn` int(11) DEFAULT NULL,
  `strSplitField` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`intMapColumns`),
  KEY `ndxMapID` (`intMapID`),
  KEY `ndx_col` (`strColumn`),
  KEY `ndx_FC` (`strFileColumn`)
) ENGINE=InnoDB AUTO_INCREMENT=3133 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbluploadmaplog`
--

DROP TABLE IF EXISTS `tbluploadmaplog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbluploadmaplog` (
  `mapLogID` int(11) NOT NULL AUTO_INCREMENT,
  `dteChangeDate` datetime DEFAULT NULL,
  `intClientID` int(11) DEFAULT NULL,
  `strChange` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`mapLogID`)
) ENGINE=InnoDB AUTO_INCREMENT=374 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbluploadquery`
--

DROP TABLE IF EXISTS `tbluploadquery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbluploadquery` (
  `intID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'PK',
  `txtQuery` mediumtext COMMENT 'Created query converted to JSON',
  `txtErrors` mediumtext,
  `intFileID` int(11) NOT NULL COMMENT 'File used to create the query',
  `intMapID` int(11) DEFAULT NULL,
  `intTrackID` int(11) DEFAULT NULL,
  `intClientID` int(11) DEFAULT NULL,
  `intOrgID` int(11) DEFAULT NULL,
  `blnIsMaster` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Flag to indicate this is the first JSON for this file that was turned into a query',
  `dteDateTimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intID`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbluploads`
--

DROP TABLE IF EXISTS `tbluploads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbluploads` (
  `intuploadid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intuploadbyclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `intuploadclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `intuploadorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `dteuploadcreated` datetime DEFAULT NULL,
  `blndirectupload` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `struploademailfrom` text,
  `struploadfile` text,
  `intuploadcontacttype` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `blnbillable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dteuploadprocessing` datetime DEFAULT NULL,
  `intuploadstatusid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `dteuploadfinished` datetime DEFAULT NULL,
  `intuploadinternaluserid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `struploadjobname` varchar(255) DEFAULT NULL,
  `struploadnewfile` text,
  `txtuploadnotes` text,
  `intuploadseccontacttype` int(10) unsigned NOT NULL DEFAULT '0',
  `intuploadinitialrecordcount` int(10) unsigned NOT NULL DEFAULT '0',
  `decuploadfilesize` decimal(6,2) unsigned NOT NULL DEFAULT '0.00',
  `dteuploadprocessstarted` datetime DEFAULT NULL,
  `intuploadclientcampaignid` int(10) unsigned NOT NULL DEFAULT '0',
  `intuploadpriorityid` tinyint(3) unsigned NOT NULL DEFAULT '10',
  `intuploadonbehalfinternaluserid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `intuploadrequestid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intuploadid`),
  KEY `intuploadbyclientid` (`intuploadbyclientid`),
  KEY `intuploadorgid` (`intuploadorgid`),
  KEY `intuploadstatusid` (`intuploadstatusid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbluploads_actionhistory`
--

DROP TABLE IF EXISTS `tbluploads_actionhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbluploads_actionhistory` (
  `intuploadhistoryid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intuploadhistoryuploadid` int(10) unsigned NOT NULL,
  `dtemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `intuploadhistoryinternaluserid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `txtaction` text,
  `intuploadhistoryuploadstatusid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `intuploadhistorypriorityid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`intuploadhistoryid`),
  KEY `intuploadhistoryuploadid` (`intuploadhistoryuploadid`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbluploads_blankvalues`
--

DROP TABLE IF EXISTS `tbluploads_blankvalues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbluploads_blankvalues` (
  `intblankvaluemapid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `strblankvalue` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`intblankvaluemapid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbluploads_filemap`
--

DROP TABLE IF EXISTS `tbluploads_filemap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbluploads_filemap` (
  `intuploadfilemapid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intuploadfilemaporgid` int(10) unsigned NOT NULL DEFAULT '0',
  `intuploadfilemapclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `txtfilemapheaders` text,
  `txtfilemapcolumns` text,
  `intuploadfilemapinternaluserid` int(10) unsigned NOT NULL,
  `dtecreated` datetime DEFAULT NULL,
  `intuploadfilemaplastuseduploadjobid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`intuploadfilemapid`),
  KEY `intuploadfilemaporgid` (`intuploadfilemaporgid`),
  KEY `intuploadfilemapclientid` (`intuploadfilemapclientid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbluploads_jobs`
--

DROP TABLE IF EXISTS `tbluploads_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbluploads_jobs` (
  `intuploadjobid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intuploadjobclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `intuploadjoborgid` int(10) unsigned NOT NULL DEFAULT '0',
  `dteuploadjobcreated` datetime DEFAULT NULL,
  `blndirectupload` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `struploadfile` varchar(255) DEFAULT NULL,
  `blnbillable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `intuploadstatusid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `dteuploadfinished` datetime DEFAULT NULL,
  `intuploadinternaluserid` tinyint(3) unsigned NOT NULL,
  `intuploadcontacttypeid` tinyint(3) unsigned NOT NULL,
  `dteuploadprocessing` datetime DEFAULT NULL,
  `struploadjobname` varchar(255) DEFAULT NULL,
  `intuploadtypeid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `decuploadfilesize` decimal(6,2) DEFAULT '0.00',
  `intuploadassignedinternaluserid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `intuploadprocessinternaluserid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `struploadfileext` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`intuploadjobid`),
  KEY `intuploadjobclientid` (`intuploadjobclientid`),
  KEY `intuploadjoborgid` (`intuploadjoborgid`),
  KEY `intuploadstatusid` (`intuploadstatusid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbluploads_jobtype`
--

DROP TABLE IF EXISTS `tbluploads_jobtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbluploads_jobtype` (
  `intuploadjobtypeid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `struploadjobtype` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`intuploadjobtypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbluploads_notes`
--

DROP TABLE IF EXISTS `tbluploads_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbluploads_notes` (
  `intuploadnoteid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intuploadnoteuploadid` int(10) unsigned NOT NULL,
  `intuploadnoteinternaluserid` int(10) unsigned NOT NULL,
  `txtuploadnote` text,
  `dtecreated` datetime DEFAULT NULL,
  PRIMARY KEY (`intuploadnoteid`),
  KEY `intuploadnoteuploadid` (`intuploadnoteuploadid`),
  KEY `intuploadnoteinternaluserid` (`intuploadnoteinternaluserid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbluploads_prioritycodes`
--

DROP TABLE IF EXISTS `tbluploads_prioritycodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbluploads_prioritycodes` (
  `intuploadprioritycodeid` tinyint(3) unsigned NOT NULL,
  `struploadprioritycodelabel` varchar(20) DEFAULT NULL,
  `struploadprioritycodecolor` varchar(7) DEFAULT NULL,
  `struploadprioritylabelcolor` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`intuploadprioritycodeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbluploads_process`
--

DROP TABLE IF EXISTS `tbluploads_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbluploads_process` (
  `intuploadjobprocessid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intuploadjobid` int(10) unsigned NOT NULL,
  `intheaderrow` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `intfilemapid` int(10) unsigned NOT NULL DEFAULT '0',
  `txtfileheaders` text,
  `txtfiledata` longtext,
  PRIMARY KEY (`intuploadjobprocessid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbluploads_receivehistory`
--

DROP TABLE IF EXISTS `tbluploads_receivehistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbluploads_receivehistory` (
  `intuploadreceiveid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dtemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `intfailstatus` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `intclientid` int(10) unsigned NOT NULL DEFAULT '0',
  `strsubject` varchar(255) DEFAULT NULL,
  `intattachmentcount` tinyint(3) unsigned NOT NULL,
  `strfromemail` text,
  `intorgid` int(10) unsigned NOT NULL DEFAULT '0',
  `txtattachments` text,
  PRIMARY KEY (`intuploadreceiveid`),
  KEY `intclientid` (`intclientid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbluploads_requestids`
--

DROP TABLE IF EXISTS `tbluploads_requestids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbluploads_requestids` (
  `intuploadrequestid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intuploadrequestuploadid` int(10) unsigned NOT NULL,
  `dtecreated` datetime DEFAULT NULL,
  PRIMARY KEY (`intuploadrequestid`),
  KEY `intuploadrequestuploadid` (`intuploadrequestuploadid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbluploads_statuscodes`
--

DROP TABLE IF EXISTS `tbluploads_statuscodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbluploads_statuscodes` (
  `intuploadstatuscodeid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `struploadstatuslabel` varchar(20) DEFAULT NULL,
  `struploadstatuscolor` varchar(7) DEFAULT NULL,
  `struploadstatusrowcolor` varchar(7) DEFAULT NULL,
  `intdisplayorder` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`intuploadstatuscodeid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbluploads_supportrequests`
--

DROP TABLE IF EXISTS `tbluploads_supportrequests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbluploads_supportrequests` (
  `intuploadsupportrequestid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intuploadsupportrequestuploadid` int(10) unsigned NOT NULL,
  `intuploadsupportrequestbyinternaluserid` tinyint(3) unsigned NOT NULL,
  `intuploadsupportrequestassignedinternaluserid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `dteuploadsupportrequestcreated` datetime DEFAULT NULL,
  `blnresolved` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dteuploadsupportrequestresolved` datetime DEFAULT NULL,
  PRIMARY KEY (`intuploadsupportrequestid`),
  KEY `intuploadsupportrequestuploadid` (`intuploadsupportrequestuploadid`),
  KEY `intuploadsupportrequestbyinternaluserid` (`intuploadsupportrequestbyinternaluserid`),
  KEY `intuploadsupportrequestassignedinternaluserid` (`intuploadsupportrequestassignedinternaluserid`),
  KEY `blnresolved` (`blnresolved`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbluploads_supportrequests_stream`
--

DROP TABLE IF EXISTS `tbluploads_supportrequests_stream`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbluploads_supportrequests_stream` (
  `intuploadsupportrequeststreamid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `intuploadsrstreamdrequestid` int(10) unsigned NOT NULL,
  `dteuploadsrstreamcreated` datetime DEFAULT NULL,
  `intuploadsrinternaluserid` tinyint(3) unsigned NOT NULL,
  `txtuploadsrstream` text,
  PRIMARY KEY (`intuploadsupportrequeststreamid`),
  KEY `intuploadsrstreamdrequestid` (`intuploadsrstreamdrequestid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbluseridtoclientid`
--

DROP TABLE IF EXISTS `tbluseridtoclientid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbluseridtoclientid` (
  `intuseridtoClientid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `UserID` char(50) DEFAULT NULL,
  `intClientID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`intuseridtoClientid`),
  UNIQUE KEY `PK_tblUserIdToClientId` (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=3560 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblvcards`
--

DROP TABLE IF EXISTS `tblvcards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblvcards` (
  `intVcardID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `intVcardCustomerID` int(11) unsigned NOT NULL DEFAULT '0',
  `intVcardClientID` int(11) unsigned NOT NULL DEFAULT '0',
  `IntVcardOrgID` int(11) unsigned NOT NULL DEFAULT '0',
  `strVcardRawData` mediumtext,
  `strVcardParsedData` mediumtext,
  `strVcardAction` varchar(6) DEFAULT NULL,
  `dteVcardDateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intVcardID`),
  KEY `intVcardCustomerID` (`intVcardCustomerID`),
  KEY `intVcardClientID` (`intVcardClientID`),
  KEY `IntVcardOrgID` (`IntVcardOrgID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblvideo`
--

DROP TABLE IF EXISTS `tblvideo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblvideo` (
  `intVideoID` int(11) NOT NULL AUTO_INCREMENT,
  `strVideoName` varchar(50) DEFAULT NULL,
  `strVideoDescription` text,
  `strVideoPath` varchar(255) DEFAULT NULL,
  `dteVideoLastPlayed` timestamp NULL DEFAULT NULL,
  `blnVideoActive` int(10) DEFAULT NULL,
  `intVideoIndustryID` int(10) DEFAULT NULL,
  `strVideoPurpose` varchar(75) DEFAULT NULL,
  `intVideoWidth` int(10) DEFAULT NULL,
  `intVideoHeight` int(10) DEFAULT NULL,
  PRIMARY KEY (`intVideoID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblwebsite`
--

DROP TABLE IF EXISTS `tblwebsite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblwebsite` (
  `intWebsiteID` int(11) NOT NULL AUTO_INCREMENT,
  `strWebsite` varchar(50) DEFAULT NULL,
  `strWebsiteDomain` varchar(50) DEFAULT NULL,
  `intWebsiteClientID` bigint(19) DEFAULT NULL,
  `intWebsiteBlogID` bigint(19) DEFAULT NULL,
  `intWebsiteQBItemID` int(10) DEFAULT NULL,
  `blnWebsiteOrientation` tinyint(3) unsigned DEFAULT NULL,
  `blnWebsiteOrgOwned` tinyint(3) unsigned DEFAULT NULL,
  `blnWebsiteMapped` tinyint(3) unsigned DEFAULT NULL,
  `strWebsitePhrase1` varchar(50) DEFAULT NULL,
  `strWebsitePhrase2` varchar(50) DEFAULT NULL,
  `strWebsitePhrase3` varchar(50) DEFAULT NULL,
  `dteWebsiteAdded` timestamp NULL DEFAULT NULL,
  `intWebsiteSettingsID` tinyint(3) unsigned DEFAULT NULL,
  `blnWebsiteHas1003` tinyint(3) unsigned DEFAULT NULL,
  `blnWebsiteManagedDirectory` tinyint(3) unsigned DEFAULT NULL,
  `strWebsiteDirectoryColor` varchar(10) DEFAULT NULL,
  `strWebsiteDirectoryGroup` varchar(10) DEFAULT NULL,
  `strWebsiteNote` text,
  PRIMARY KEY (`intWebsiteID`)
) ENGINE=InnoDB AUTO_INCREMENT=1122 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblwebsitesettings`
--

DROP TABLE IF EXISTS `tblwebsitesettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblwebsitesettings` (
  `intWebsiteSettingID` tinyint(3) unsigned NOT NULL,
  `strWebsiteSetting` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblwelcomeemail`
--

DROP TABLE IF EXISTS `tblwelcomeemail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblwelcomeemail` (
  `intWelcomeEmailID` int(11) NOT NULL AUTO_INCREMENT,
  `strWelcomeEmailName` varchar(50) DEFAULT NULL,
  `strWelcomeEmailURL` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`intWelcomeEmailID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblyahooquality`
--

DROP TABLE IF EXISTS `tblyahooquality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblyahooquality` (
  `yahooID` smallint(11) NOT NULL,
  `yahooDescription` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`yahooID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblyear`
--

DROP TABLE IF EXISTS `tblyear`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblyear` (
  `intYear` int(10) DEFAULT NULL,
  `intYearName` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `temp_contacttable_filter`
--

DROP TABLE IF EXISTS `temp_contacttable_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_contacttable_filter` (
  `row` int(11) NOT NULL AUTO_INCREMENT,
  `intContactID` bigint(19) NOT NULL,
  `strContactFName` varchar(50) DEFAULT NULL,
  `strContactLName` varchar(50) DEFAULT NULL,
  `strContactTypeName` varchar(25) NOT NULL,
  `strContactPhone` varchar(21) DEFAULT NULL,
  `strContactEmail` varchar(50) DEFAULT NULL,
  `strContactAddress1` varchar(50) DEFAULT NULL,
  `strContactAddress2` varchar(50) DEFAULT NULL,
  `strContactAddress3` varchar(50) DEFAULT NULL,
  `strContactAddress4` varchar(50) DEFAULT NULL,
  `strContactCity` varchar(50) DEFAULT NULL,
  `strContactState` varchar(2) DEFAULT NULL,
  `strContactZip` varchar(50) DEFAULT NULL,
  `dteContactLastActivity` timestamp NULL DEFAULT NULL,
  `StrLastEventName` varchar(50) DEFAULT NULL,
  `DateEdited` timestamp NULL DEFAULT NULL,
  `ContactEdited` bigint(19) DEFAULT NULL,
  `dteContactAdded` timestamp NULL DEFAULT NULL,
  `ContactEnterByID` bigint(19) DEFAULT NULL,
  `Status` varchar(10) DEFAULT NULL,
  `Company` varchar(50) DEFAULT NULL,
  `ReferredBy` bigint(19) DEFAULT NULL,
  `Postion` varchar(50) DEFAULT NULL,
  `VenueName` varchar(50) DEFAULT NULL,
  `PreferredName` varchar(50) DEFAULT NULL,
  `IndustryName` varchar(50) DEFAULT NULL,
  `Birthday` timestamp NULL DEFAULT NULL,
  `AddressB` varchar(100) DEFAULT NULL,
  `CityB` varchar(50) DEFAULT NULL,
  `StateB` varchar(4) DEFAULT NULL,
  `ZipB` varchar(50) DEFAULT NULL,
  `AddressH` varchar(100) DEFAULT NULL,
  `CityH` varchar(50) DEFAULT NULL,
  `StateH` varchar(4) DEFAULT NULL,
  `ZipH` varchar(50) DEFAULT NULL,
  `AddressO` varchar(101) DEFAULT NULL,
  `CityO` varchar(50) DEFAULT NULL,
  `StateO` varchar(4) DEFAULT NULL,
  `ZipO` varchar(50) DEFAULT NULL,
  `SourceName` varchar(50) DEFAULT NULL,
  `DteCRMstart` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`row`)
) ENGINE=InnoDB AUTO_INCREMENT=1730 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `temp_contacttable_filter2`
--

DROP TABLE IF EXISTS `temp_contacttable_filter2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_contacttable_filter2` (
  `row` int(11) NOT NULL AUTO_INCREMENT,
  `intContactID` bigint(19) NOT NULL,
  `strContactFName` varchar(50) DEFAULT NULL,
  `strContactLName` varchar(50) DEFAULT NULL,
  `strContactTypeName` varchar(25) NOT NULL,
  `strContactPhone` varchar(21) DEFAULT NULL,
  `strContactEmail` varchar(50) DEFAULT NULL,
  `strContactAddress1` varchar(50) DEFAULT NULL,
  `strContactAddress2` varchar(50) DEFAULT NULL,
  `strContactAddress3` varchar(50) DEFAULT NULL,
  `strContactAddress4` varchar(50) DEFAULT NULL,
  `strContactCity` varchar(50) DEFAULT NULL,
  `strContactState` varchar(2) DEFAULT NULL,
  `strContactZip` varchar(50) DEFAULT NULL,
  `dteContactLastActivity` timestamp NULL DEFAULT NULL,
  `StrLastEventName` varchar(50) DEFAULT NULL,
  `DateEdited` timestamp NULL DEFAULT NULL,
  `ContactEdited` bigint(19) DEFAULT NULL,
  `dteContactAdded` timestamp NULL DEFAULT NULL,
  `ContactEnterByID` bigint(19) DEFAULT NULL,
  `Status` varchar(10) DEFAULT NULL,
  `Company` varchar(50) DEFAULT NULL,
  `ReferredBy` bigint(19) DEFAULT NULL,
  `Postion` varchar(50) DEFAULT NULL,
  `VenueName` varchar(50) DEFAULT NULL,
  `PreferredName` varchar(50) DEFAULT NULL,
  `IndustryName` varchar(50) DEFAULT NULL,
  `Birthday` timestamp NULL DEFAULT NULL,
  `AddressB` varchar(100) DEFAULT NULL,
  `CityB` varchar(50) DEFAULT NULL,
  `StateB` varchar(4) DEFAULT NULL,
  `ZipB` varchar(50) DEFAULT NULL,
  `AddressH` varchar(100) DEFAULT NULL,
  `CityH` varchar(50) DEFAULT NULL,
  `StateH` varchar(4) DEFAULT NULL,
  `ZipH` varchar(50) DEFAULT NULL,
  `AddressO` varchar(101) DEFAULT NULL,
  `CityO` varchar(50) DEFAULT NULL,
  `StateO` varchar(4) DEFAULT NULL,
  `ZipO` varchar(50) DEFAULT NULL,
  `SourceName` varchar(50) DEFAULT NULL,
  `DteCRMstart` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`row`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `temp_details`
--

DROP TABLE IF EXISTS `temp_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_details` (
  `t_schema` varchar(45) NOT NULL,
  `t_table` varchar(45) NOT NULL,
  `t_field` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Final view structure for view `cobalt_agentdupingviewStep1`
--

/*!50001 DROP TABLE IF EXISTS `cobalt_agentdupingviewStep1`*/;
/*!50001 DROP VIEW IF EXISTS `cobalt_agentdupingviewStep1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cobalt_agentdupingviewStep1` AS select `f`.`intCustomerID` AS `intcustomerid`,`f`.`strCustomerEnteredBy` AS `strcustomerenteredby`,`f`.`strCustomerContactType` AS `strCustomerContactType` from (`tblcustomer` `f` join `tblclient` `z` on((`z`.`intClientID` = `f`.`intCustomerClientID`))) where ((`z`.`intClientOrgID` = 1729) and (not(`f`.`intCustomerID` in (select `c`.`intCustomerID` from ((`tblcustomer` `c` join `tblclient` on((`__tomn`.`tblclient`.`intClientID` = `c`.`intCustomerClientID`))) join `tblloan` `a` on((`a`.`intloanlistingagentcustomerid` = `c`.`intCustomerID`))) where ((`__tomn`.`tblclient`.`intClientOrgID` = 1729) and (`c`.`strCustomerEnteredBy` = 'I61') and (`c`.`strCustomerContactType` = 'Referral Source')) union select `c`.`intCustomerID` from ((`tblcustomer` `c` join `tblclient` on((`__tomn`.`tblclient`.`intClientID` = `c`.`intCustomerClientID`))) join `tblloan` `a` on((`a`.`intloanprocessorcustomerid` = `c`.`intCustomerID`))) where ((`__tomn`.`tblclient`.`intClientOrgID` = 1729) and (`c`.`strCustomerEnteredBy` = 'I61') and (`c`.`strCustomerContactType` = 'Referral Source')) union select `c`.`intCustomerID` from ((`tblcustomer` `c` join `tblclient` on((`__tomn`.`tblclient`.`intClientID` = `c`.`intCustomerClientID`))) join `tblloan` `a` on((`a`.`intLoanAgentCustomerID` = `c`.`intCustomerID`))) where ((`__tomn`.`tblclient`.`intClientOrgID` = 1729) and (`c`.`strCustomerEnteredBy` = 'I61') and (`c`.`strCustomerContactType` = 'Referral Source')) union select `c`.`intCustomerID` from ((`tblcustomer` `c` join `tblclient` on((`__tomn`.`tblclient`.`intClientID` = `c`.`intCustomerClientID`))) join `tblloan` `a` on((`a`.`intLoanCustomerID` = `c`.`intCustomerID`))) where ((`__tomn`.`tblclient`.`intClientOrgID` = 1729) and (`c`.`strCustomerEnteredBy` = 'I61') and (`c`.`strCustomerContactType` = 'Referral Source')))))) */;
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

-- Dump completed on 2013-11-06 17:00:09
