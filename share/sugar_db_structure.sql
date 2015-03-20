-- MySQL dump 10.13  Distrib 5.6.17, for osx10.8 (x86_64)
--
-- Host: bsys-sugar-prod-reports.c8x4c5fq4lwc.us-east-1.rds.amazonaws.com    Database: sugar_ws
-- ------------------------------------------------------
-- Server version	5.5.40

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
-- Table structure for table `WSYS_ACCOUNTS_CATEGORIES`
--

DROP TABLE IF EXISTS `WSYS_ACCOUNTS_CATEGORIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WSYS_ACCOUNTS_CATEGORIES` (
  `ID` int(11) DEFAULT NULL,
  `SOURCE_ID` varchar(255) DEFAULT NULL,
  `SUGAR_ID` varchar(36) DEFAULT NULL,
  `categories_c` varchar(2000) DEFAULT NULL,
  KEY `SUGAR_IDX` (`SUGAR_ID`),
  KEY `SOURCE_IDX` (`SOURCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `WSYS_ACCOUNTS_TIDS`
--

DROP TABLE IF EXISTS `WSYS_ACCOUNTS_TIDS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WSYS_ACCOUNTS_TIDS` (
  `sugarid` varchar(255) DEFAULT NULL,
  `talisma_id_c` varchar(255) DEFAULT NULL,
  KEY `SUGAR_IDX` (`sugarid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `WSYS_CONTACTS_CATEGORIES`
--

DROP TABLE IF EXISTS `WSYS_CONTACTS_CATEGORIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WSYS_CONTACTS_CATEGORIES` (
  `ID` int(11) DEFAULT NULL,
  `SOURCE_ID` varchar(255) DEFAULT NULL,
  `SUGAR_ID` varchar(36) DEFAULT NULL,
  `categories_c` varchar(2000) DEFAULT NULL,
  KEY `SUGAR_IDX` (`SUGAR_ID`),
  KEY `SOURCE_IDX` (`SOURCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `WSYS_CONTACTS_TIDS`
--

DROP TABLE IF EXISTS `WSYS_CONTACTS_TIDS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WSYS_CONTACTS_TIDS` (
  `sugarid` varchar(255) DEFAULT NULL,
  `talisma_id_c` varchar(255) DEFAULT NULL,
  KEY `SUGAR_IDX` (`sugarid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `WSYS_Cases_TalismaTeams`
--

DROP TABLE IF EXISTS `WSYS_Cases_TalismaTeams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WSYS_Cases_TalismaTeams` (
  `TalismaTeam` int(11) DEFAULT NULL,
  `CaseID` varchar(255) DEFAULT NULL,
  KEY `idx` (`CaseID`),
  KEY `idx2` (`TalismaTeam`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `WSYS_Cases_Teams_Sets`
--

DROP TABLE IF EXISTS `WSYS_Cases_Teams_Sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WSYS_Cases_Teams_Sets` (
  `TalismaTeamID` double DEFAULT NULL,
  `TalismaTeam` varchar(255) DEFAULT NULL,
  `SugarPrimaryTeamID` varchar(255) DEFAULT NULL,
  `SugarPrimaryTeam` varchar(255) DEFAULT NULL,
  `SugarOtherTeamID` double DEFAULT NULL,
  `SugarOtherTeam` varchar(255) DEFAULT NULL,
  `TeamSetHash` varchar(50) DEFAULT NULL,
  `TeamSetCount` int(11) DEFAULT NULL,
  KEY `idx` (`TeamSetHash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `WSYS_Deleted_Accounts`
--

DROP TABLE IF EXISTS `WSYS_Deleted_Accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WSYS_Deleted_Accounts` (
  `aAccountID` int(11) NOT NULL,
  `Sugar_ObjectID` varchar(255) DEFAULT NULL,
  KEY `id_x` (`Sugar_ObjectID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `WSYS_Deleted_Cases`
--

DROP TABLE IF EXISTS `WSYS_Deleted_Cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WSYS_Deleted_Cases` (
  `aGlobalCaseID` int(11) NOT NULL,
  `Sugar_ObjectID` varchar(255) DEFAULT NULL,
  KEY `id_x` (`Sugar_ObjectID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `WSYS_Deleted_Contacts`
--

DROP TABLE IF EXISTS `WSYS_Deleted_Contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WSYS_Deleted_Contacts` (
  `aCustID` int(11) NOT NULL,
  `Sugar_ObjectID` varchar(255) DEFAULT NULL,
  KEY `id_x` (`Sugar_ObjectID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `WSYS_Deleted_Emails`
--

DROP TABLE IF EXISTS `WSYS_Deleted_Emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WSYS_Deleted_Emails` (
  `aEventID` int(11) NOT NULL,
  `Sugar_ObjectID` varchar(255) DEFAULT NULL,
  KEY `id_x` (`Sugar_ObjectID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `WSYS_Deleted_Opps`
--

DROP TABLE IF EXISTS `WSYS_Deleted_Opps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WSYS_Deleted_Opps` (
  `aID` int(11) NOT NULL,
  `Sugar_ObjectID` varchar(255) DEFAULT NULL,
  KEY `id_x` (`Sugar_ObjectID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `WSYS_EMAIL_CASES_RELATE_1`
--

DROP TABLE IF EXISTS `WSYS_EMAIL_CASES_RELATE_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WSYS_EMAIL_CASES_RELATE_1` (
  `email_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bean_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bean_module` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `emails_beans_id` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  KEY `email_id` (`email_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `WSYS_OPPS_TIDS`
--

DROP TABLE IF EXISTS `WSYS_OPPS_TIDS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WSYS_OPPS_TIDS` (
  `sugarid` varchar(255) DEFAULT NULL,
  `talisma_id_c` varchar(255) DEFAULT NULL,
  KEY `SUGAR_IDX` (`sugarid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `WSYS_SUGAR_EMAIL_ATTACHMENTS_1`
--

DROP TABLE IF EXISTS `WSYS_SUGAR_EMAIL_ATTACHMENTS_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WSYS_SUGAR_EMAIL_ATTACHMENTS_1` (
  `assigned_user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `team_id` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `team_set_id` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `file_mime_type` varchar(71) COLLATE utf8_unicode_ci NOT NULL,
  `filename` text COLLATE utf8_unicode_ci NOT NULL,
  `parent_type` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_id` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `portal_flag` tinyint(4) DEFAULT NULL,
  `embed_flag` tinyint(4) DEFAULT NULL,
  `description` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  KEY `blah` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `acc_access_types`
--

DROP TABLE IF EXISTS `acc_access_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acc_access_types` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `shibboleth` tinyint(1) DEFAULT NULL,
  `shibboleth_desc` text,
  `saml_type` varchar(100) DEFAULT 'Shibboleth',
  `shibboleth_entity_id` varchar(100) DEFAULT NULL,
  `shibboleth_unit_id` varchar(100) DEFAULT NULL,
  `shibboleth_date_created` date DEFAULT NULL,
  `shibboleth_last_modified` datetime DEFAULT NULL,
  `un_pwd_username` varchar(100) DEFAULT NULL,
  `un_pwd_description` text,
  `un_pwd_date_created` date DEFAULT NULL,
  `un_pwd_last_modified` datetime DEFAULT NULL,
  `person_idty_email` varchar(255) DEFAULT NULL,
  `person_idty_username` varchar(255) DEFAULT NULL,
  `person_idty_description` text,
  `person_idty_password` varchar(255) DEFAULT NULL,
  `un_pwd_password` varchar(255) DEFAULT NULL,
  `person_idty_int_admin_rights` text,
  `person_idty_ext_admin_rights` text,
  `person_idty_date_created` date DEFAULT NULL,
  `un_pwd_expiration_date` date DEFAULT NULL,
  `person_idty_expiration_date` date DEFAULT NULL,
  `person_idty_last_modified` datetime DEFAULT NULL,
  `un_pw` tinyint(1) DEFAULT NULL,
  `person_idty` tinyint(1) DEFAULT NULL,
  `tokens` tinyint(1) DEFAULT NULL,
  `tokens_description` text,
  `tokens_type` varchar(100) DEFAULT 'Institution',
  `tokens_name` varchar(255) DEFAULT NULL,
  `tokens_max_activations` int(32) DEFAULT '0',
  `tokens_num_activations` int(32) DEFAULT '0',
  `tokens_activate_after` date DEFAULT NULL,
  `tokens_activate_before` date DEFAULT NULL,
  `tokens_days_valid_after_act` int(32) DEFAULT NULL,
  `ref_url` tinyint(1) DEFAULT NULL,
  `ref_url_url` varchar(255) DEFAULT NULL,
  `ref_url_description` text,
  `ref_url_expiration_date` date DEFAULT NULL,
  `inst_url` tinyint(1) DEFAULT NULL,
  `inst_url_url` varchar(255) DEFAULT NULL,
  `inst_url_lat` decimal(32,16) DEFAULT NULL,
  `inst_url_lng` decimal(32,16) DEFAULT NULL,
  `tokens_date_created` date DEFAULT NULL,
  `tokens_expiration_date` date DEFAULT NULL,
  `tokens_last_modified` datetime DEFAULT NULL,
  `open_url` tinyint(1) DEFAULT NULL,
  `open_url_url` varchar(150) DEFAULT NULL,
  `open_url_link_text` varchar(255) DEFAULT NULL,
  `open_url_button_image_url` varchar(255) DEFAULT NULL,
  `ref_url_date_created` date DEFAULT NULL,
  `ref_url_last_modified` datetime DEFAULT NULL,
  `branding` tinyint(1) DEFAULT NULL,
  `branding_banner_text` text,
  `branding_logo_url` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `acc_access_typesmod` (`date_modified`),
  KEY `idx_acc_access_types_tmst_id` (`team_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `acc_access_types_audit`
--

DROP TABLE IF EXISTS `acc_access_types_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acc_access_types_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_acc_access_types_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `acc_credentials_accounts_c`
--

DROP TABLE IF EXISTS `acc_credentials_accounts_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acc_credentials_accounts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `acc_credentials_accountsacc_access_types_ida` varchar(36) DEFAULT NULL,
  `acc_credentials_accountsaccounts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `acc_credentials_accounts_ida1` (`acc_credentials_accountsacc_access_types_ida`),
  KEY `acc_credentials_accounts_idb2` (`acc_credentials_accountsaccounts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `acc_ip_address_access`
--

DROP TABLE IF EXISTS `acc_ip_address_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acc_ip_address_access` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `start_ip` varchar(25) DEFAULT NULL,
  `end_ip` varchar(25) DEFAULT NULL,
  `ip_access_type` varchar(100) DEFAULT 'Normal',
  `sequoia_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `acc_ip_address_accessmod` (`date_modified`),
  KEY `idx_acc_ip_address_access_tmst_id` (`team_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `acc_ip_address_access_acc_access_types_c`
--

DROP TABLE IF EXISTS `acc_ip_address_access_acc_access_types_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acc_ip_address_access_acc_access_types_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `acc_ip_address_access_acc_access_typesacc_access_types_ida` varchar(36) DEFAULT NULL,
  `acc_ip_address_access_acc_access_typesacc_ip_address_access_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `acc_ip_address_access_acc_access_types_ida1` (`acc_ip_address_access_acc_access_typesacc_access_types_ida`),
  KEY `acc_ip_address_access_acc_access_types_alt` (`acc_ip_address_access_acc_access_typesacc_ip_address_access_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `acc_ip_address_access_audit`
--

DROP TABLE IF EXISTS `acc_ip_address_access_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acc_ip_address_access_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_acc_ip_address_access_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `facebook` varchar(100) DEFAULT NULL,
  `twitter` varchar(100) DEFAULT NULL,
  `googleplus` varchar(100) DEFAULT NULL,
  `account_type` varchar(100) DEFAULT NULL,
  `industry` varchar(50) DEFAULT NULL,
  `annual_revenue` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(40) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `phone_office` varchar(100) DEFAULT NULL,
  `phone_alternate` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `ownership` varchar(100) DEFAULT NULL,
  `employees` varchar(10) DEFAULT NULL,
  `ticker_symbol` varchar(10) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `sic_code` varchar(10) DEFAULT NULL,
  `duns_num` varchar(15) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `accountsmod` (`date_modified`),
  KEY `idx_accounts_tmst_id` (`team_set_id`),
  KEY `idx_accnt_id_del` (`id`,`deleted`),
  KEY `idx_accnt_name_del` (`name`,`deleted`),
  KEY `idx_accnt_assigned_del` (`deleted`,`assigned_user_id`),
  KEY `idx_accnt_parent_id` (`parent_id`),
  KEY `idx_account_billing_address_city` (`billing_address_city`),
  KEY `idx_account_billing_address_country` (`billing_address_country`),
  KEY `idx_account_date_entered` (`date_entered`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `accounts_audit`
--

DROP TABLE IF EXISTS `accounts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_accounts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `accounts_bugs`
--

DROP TABLE IF EXISTS `accounts_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_bugs` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acc_bug_acc` (`account_id`),
  KEY `idx_acc_bug_bug` (`bug_id`),
  KEY `idx_account_bug` (`account_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `accounts_cases`
--

DROP TABLE IF EXISTS `accounts_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_cases` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acc_case_acc` (`account_id`),
  KEY `idx_acc_acc_case` (`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `accounts_contacts`
--

DROP TABLE IF EXISTS `accounts_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `primary_account` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_account_contact` (`account_id`,`contact_id`),
  KEY `idx_contid_del_accid` (`contact_id`,`deleted`,`account_id`),
  KEY `isprimary_idx` (`primary_account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `accounts_cstm`
--

DROP TABLE IF EXISTS `accounts_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_cstm` (
  `id_c` char(36) NOT NULL,
  `jstor_charter_member_c` tinyint(1) DEFAULT '0',
  `jstor_sustainer_c` tinyint(1) DEFAULT '0',
  `portico_founder_c` tinyint(1) DEFAULT '0',
  `domestic_c` tinyint(1) DEFAULT '0',
  `institution_c` varchar(170) DEFAULT NULL,
  `other_phone_c` varchar(50) DEFAULT NULL,
  `developing_nations_c` varchar(100) DEFAULT NULL,
  `fedlink_id_c` varchar(100) DEFAULT NULL,
  `fiscal_year_end_c` varchar(100) DEFAULT 'January_December',
  `gpi_savings_category_c` varchar(100) DEFAULT NULL,
  `savings_category_c` varchar(100) DEFAULT NULL,
  `tax_exempt_vat_c` tinyint(1) DEFAULT '0',
  `tax_exemption_number_c` varchar(100) DEFAULT NULL,
  `vat_registration_number_c` varchar(100) DEFAULT NULL,
  `aluka_consortium_savings_c` varchar(100) DEFAULT NULL,
  `carnegie_class_c` varchar(100) DEFAULT NULL,
  `volume_num_c` int(255) DEFAULT NULL,
  `district_county_c` varchar(100) DEFAULT NULL,
  `remote_access_c` varchar(100) DEFAULT NULL,
  `aaf_savings_suspended_c` date DEFAULT NULL,
  `annual_meeting_c` tinyint(1) DEFAULT '0',
  `eligible_for_aaf_savings_c` tinyint(1) DEFAULT '0',
  `library_system_or_consortium_c` varchar(100) DEFAULT NULL,
  `membership_open_c` tinyint(1) DEFAULT '0',
  `publisher_status_c` varchar(100) DEFAULT NULL,
  `publisher_type_c` varchar(100) DEFAULT NULL,
  `serenic_pss_payee_id_c` varchar(100) DEFAULT NULL,
  `contact_id_c` char(36) DEFAULT NULL,
  `publisher_refer_add_line_1_c` varchar(100) DEFAULT NULL,
  `publisher_refer_add_line_2_c` varchar(100) DEFAULT NULL,
  `publisher_refer_add_line_3_c` varchar(100) DEFAULT NULL,
  `publisher_refer_add_line_4_c` varchar(100) DEFAULT NULL,
  `publisher_refer_email_c` varchar(100) DEFAULT NULL,
  `publisher_refer_fax_c` varchar(100) DEFAULT NULL,
  `publisher_refer_phone_c` varchar(100) DEFAULT NULL,
  `publishing_copyright_holder_c` varchar(100) DEFAULT NULL,
  `publishing_licensor_c` varchar(100) DEFAULT NULL,
  `pub_rev_sharing_payee_c` varchar(100) DEFAULT NULL,
  `publishing_society_c` varchar(100) DEFAULT NULL,
  `publishing_components_c` int(100) DEFAULT NULL,
  `publishing_contracts_c` int(100) DEFAULT NULL,
  `publishing_sets_c` int(100) DEFAULT NULL,
  `cats_id_c` varchar(100) DEFAULT NULL,
  `cd_licensor_type_c` varchar(100) DEFAULT NULL,
  `cd_publisher_tier_c` varchar(100) DEFAULT NULL,
  `cd_last_contact_update_form_c` date DEFAULT NULL,
  `publisher_annual_meeting_c` varchar(100) DEFAULT NULL,
  `link_resolver_product_c` varchar(100) DEFAULT NULL,
  `other_linking_product_c` varchar(100) DEFAULT NULL,
  `account_id1_c` char(36) DEFAULT NULL,
  `ldi_notes_c` varchar(255) DEFAULT NULL,
  `ldi_start_date_c` date DEFAULT NULL,
  `metadata_agreement_end_date_c` date DEFAULT NULL,
  `metadata_agreement_start_dat_c` date DEFAULT NULL,
  `metadata_licensed_c` varchar(100) DEFAULT NULL,
  `metadata_recipient_c` varchar(100) DEFAULT NULL,
  `metadata_sharing_notes_c` varchar(150) DEFAULT NULL,
  `metashare_status_c` varchar(100) DEFAULT NULL,
  `metasearch_access_c` varchar(100) DEFAULT NULL,
  `metasearch_agree_end_date_c` date DEFAULT NULL,
  `metasearch_agree_start_date_c` date DEFAULT NULL,
  `metasearch_product_c` varchar(100) DEFAULT NULL,
  `metasearch_status_c` varchar(100) DEFAULT NULL,
  `user_agent_vendor_value_c` varchar(100) DEFAULT NULL,
  `discovery_provider_notes_c` varchar(100) DEFAULT NULL,
  `ebsco_c` tinyint(1) DEFAULT '0',
  `other_c` varchar(100) DEFAULT NULL,
  `primo_c` tinyint(1) DEFAULT '0',
  `summon_c` tinyint(1) DEFAULT '0',
  `worldcat_discovery_service_c` tinyint(1) DEFAULT '0',
  `data_modeling_continent_geo_c` varchar(100) DEFAULT NULL,
  `promotional_name_acronym_c` varchar(100) DEFAULT NULL,
  `promotional_name_foreign_c` varchar(180) DEFAULT NULL,
  `promotional_name_status_c` varchar(100) DEFAULT NULL,
  `user_id_c` char(36) DEFAULT NULL,
  `date_relicensed_c` date DEFAULT NULL,
  `risk_level_c` varchar(100) DEFAULT NULL,
  `contact_id1_c` char(36) DEFAULT NULL,
  `contact_id2_c` char(36) DEFAULT NULL,
  `ith_access_id1_c` char(36) DEFAULT NULL,
  `mobile_phone_c` varchar(50) DEFAULT NULL,
  `user_id2_c` char(36) DEFAULT NULL,
  `archetype_c` text,
  `account_ranking_c` varchar(100) DEFAULT NULL,
  `deposit_account_c` tinyint(1) DEFAULT '0',
  `group_license_savings_plan_c` tinyint(1) DEFAULT '0',
  `region_c` varchar(100) DEFAULT NULL,
  `account_type_multi_c` text,
  `ias_access_method_c` varchar(100) DEFAULT NULL,
  `ias_online_host_c` varchar(100) DEFAULT NULL,
  `ias_access_point_c` varchar(100) DEFAULT NULL,
  `ias_assignable_group_c` varchar(100) DEFAULT NULL,
  `ias_default_group_c` varchar(100) DEFAULT NULL,
  `ias_next_steps_c` varchar(100) DEFAULT NULL,
  `ias_payment_model_c` varchar(100) DEFAULT NULL,
  `ias_program_notes_c` varchar(225) DEFAULT NULL,
  `ias_realname_c` varchar(160) DEFAULT NULL,
  `ias_target_launch_date_c` date DEFAULT NULL,
  `ias_test_password_c` varchar(255) DEFAULT NULL,
  `ias_test_username_c` varchar(100) DEFAULT NULL,
  `ias_user_authentication_poin_c` varchar(100) DEFAULT NULL,
  `e_issn_c` varchar(100) DEFAULT NULL,
  `issn_c` varchar(100) DEFAULT NULL,
  `journal_code_c` varchar(100) DEFAULT NULL,
  `lccn_c` varchar(100) DEFAULT NULL,
  `oclc_c` varchar(100) DEFAULT NULL,
  `stable_url_c` varchar(100) DEFAULT NULL,
  `ias_actual_launch_date_c` date DEFAULT NULL,
  `user_id3_c` char(36) DEFAULT NULL,
  `user_id4_c` char(36) DEFAULT NULL,
  `user_id5_c` char(36) DEFAULT NULL,
  `account_id2_c` char(36) DEFAULT NULL,
  `community_c` varchar(100) DEFAULT NULL,
  `classification_c` varchar(100) DEFAULT NULL,
  `jisc_banding_c` varchar(100) DEFAULT NULL,
  `portico_tier_level_c` varchar(100) DEFAULT NULL,
  `purchase_decision_quarter_c` varchar(100) DEFAULT NULL,
  `fy_rprtd_lme_c` varchar(100) DEFAULT NULL,
  `sav_archive_founder_c` varchar(100) DEFAULT NULL,
  `sav_consortial_c` varchar(100) DEFAULT NULL,
  `est_library_materials_c` varchar(100) DEFAULT NULL,
  `rpt_library_materials_c` varchar(100) DEFAULT NULL,
  `inherit_parent_licenses_c` tinyint(1) DEFAULT '0',
  `iso_3166_1_alpha_2_c` varchar(100) DEFAULT NULL,
  `iso_3166_1_alpha_3_c` varchar(100) DEFAULT NULL,
  `previous_year_total_acf_c` int(100) DEFAULT NULL,
  `ability_use_monthly_led_inv_c` varchar(100) DEFAULT NULL,
  `ability_use_monthly_inv_pts_c` varchar(100) DEFAULT NULL,
  `arrange_host_forums_c` varchar(100) DEFAULT NULL,
  `arrange_host_forums_points_c` varchar(100) DEFAULT NULL,
  `class_meth_members_intl_c` varchar(100) DEFAULT NULL,
  `class_meth_mem_pts_c` varchar(100) DEFAULT NULL,
  `collections_renewed_points_c` varchar(100) DEFAULT NULL,
  `license_c` varchar(100) DEFAULT NULL,
  `license_points_c` varchar(100) DEFAULT NULL,
  `limit_ind_new_coll_c` varchar(100) DEFAULT NULL,
  `limit_ind_new_coll_pts_c` varchar(100) DEFAULT NULL,
  `lim_lic_new_cont_c` varchar(100) DEFAULT NULL,
  `lim_lic_new_cont_pts_c` varchar(100) DEFAULT NULL,
  `marketing_services_c` varchar(100) DEFAULT NULL,
  `marketing_services_points_c` varchar(100) DEFAULT NULL,
  `tender_required_c` varchar(100) DEFAULT NULL,
  `tender_required_points_c` varchar(100) DEFAULT NULL,
  `if_institution_finder_url_c` varchar(255) DEFAULT NULL,
  `if_literatum_customer_number_c` varchar(100) DEFAULT NULL,
  `if_postal_code_c` varchar(100) DEFAULT NULL,
  `if_promotional_name_english_c` varchar(160) DEFAULT NULL,
  `aluka_literatum_inst_id_c` varchar(100) DEFAULT NULL,
  `portico_institution_id_c` varchar(100) DEFAULT NULL,
  `jstor_literatum_inst_id_c` varchar(100) DEFAULT NULL,
  `jstor_literatum_cons_id_c` varchar(100) DEFAULT NULL,
  `jstor_literatum_publisher_id_c` varchar(100) DEFAULT NULL,
  `jstor_literatum_society_id_c` varchar(100) DEFAULT NULL,
  `jstor_literatum_ias_id_c` varchar(100) DEFAULT NULL,
  `jstor_literatum_user_id_c` varchar(100) DEFAULT NULL,
  `jstor_cats_publisher_id_c` varchar(100) DEFAULT NULL,
  `jstor_cats_publisher_name_c` varchar(125) DEFAULT NULL,
  `jstor_klopotek_customer_id_c` varchar(100) DEFAULT NULL,
  `jstor_serenic_id_c` varchar(100) DEFAULT NULL,
  `portico_serenic_id_c` varchar(100) DEFAULT NULL,
  `jstor_serenic_publisher_id_c` varchar(100) DEFAULT NULL,
  `portico_serenic_customer_id_c` varchar(100) DEFAULT NULL,
  `jstor_serenic_ias_payee_id_c` varchar(100) DEFAULT NULL,
  `jstor_serenic_pss_payee_id_c` varchar(100) DEFAULT NULL,
  `web_publishing_c` varchar(175) DEFAULT NULL,
  `website_group_c` varchar(100) DEFAULT NULL,
  `installation_lib_rel_appr_c` date DEFAULT NULL,
  `installation_licensing_appr_c` date DEFAULT NULL,
  `installation_received_date_c` date DEFAULT NULL,
  `inst_user_serv_comp_c` date DEFAULT NULL,
  `licensing_stage_c` varchar(100) DEFAULT '0',
  `user_id6_c` char(36) DEFAULT NULL,
  `urgent_invoice_needed_c` varchar(100) DEFAULT '0',
  `training_message_sent_c` tinyint(1) DEFAULT '0',
  `welcome_packet_sent_c` tinyint(1) DEFAULT '0',
  `email_pdf_of_invoice_c` tinyint(1) DEFAULT '0',
  `ip_information_included_c` tinyint(1) DEFAULT '0',
  `notes_c` varchar(255) DEFAULT NULL,
  `print_copy_invoice_file_c` tinyint(1) DEFAULT '0',
  `update_collections_tab_c` date DEFAULT NULL,
  `update_weblist_c` tinyint(1) DEFAULT '0',
  `update_participation_databas_c` tinyint(1) DEFAULT '0',
  `peri_installation_c` tinyint(1) DEFAULT '0',
  `user_serv_bus_admin_man_c` varchar(255) DEFAULT NULL,
  `us_federal_account_c` tinyint(1) DEFAULT '0',
  `reclassify_c` tinyint(1) DEFAULT '0',
  `membership_organization_c` tinyint(1) DEFAULT '0',
  `community_calc_c` varchar(255) DEFAULT NULL,
  `classification_calc_c` varchar(255) DEFAULT NULL,
  `sitename_calc_c` varchar(255) DEFAULT NULL,
  `uk_country_c` varchar(100) DEFAULT NULL,
  `value_open_opportunities_c` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `base_rate` decimal(26,6) DEFAULT NULL,
  `user_id7_c` char(36) DEFAULT NULL,
  `portico_buyer_influence_c` varchar(100) DEFAULT NULL,
  `primary_source_buyer_influen_c` varchar(100) DEFAULT NULL,
  `subscriber_status_updated_c` date DEFAULT NULL,
  `country_list_c` varchar(100) DEFAULT NULL,
  `state_list_c` varchar(100) DEFAULT NULL,
  `institution_finder_setup_c` tinyint(1) DEFAULT '0',
  `plant_science_code_c` varchar(50) DEFAULT NULL,
  `skype_c` varchar(50) DEFAULT NULL,
  `former_account_name_c` varchar(100) DEFAULT NULL,
  `jstor_literatum_userid_pub_c` varchar(100) DEFAULT NULL,
  `perc_coll_ren_prev_c` float(18,8) DEFAULT NULL,
  `return_license_participant_c` datetime DEFAULT NULL,
  `athens_c` tinyint(1) DEFAULT '0',
  `institution_finder_setup_com_c` tinyint(1) DEFAULT '0',
  `institution_finder_url_c` varchar(255) DEFAULT NULL,
  `other_access_c` varchar(255) DEFAULT NULL,
  `referer_c` varchar(255) DEFAULT NULL,
  `remote_access_information_ur_c` varchar(230) DEFAULT NULL,
  `remote_access_login_url_c` varchar(255) DEFAULT NULL,
  `remote_access_notes_c` text,
  `shibboleth_c` tinyint(1) DEFAULT '0',
  `token_c` varchar(120) DEFAULT NULL,
  `ip_relationship_c` varchar(100) DEFAULT NULL,
  `metasearch_products_c` text,
  `date_metasearch_implemented_c` date DEFAULT NULL,
  `metasearch_products_other_c` varchar(255) DEFAULT NULL,
  `referring_url_c` tinyint(1) DEFAULT '0',
  `global_plants_stats_url_c` varchar(255) DEFAULT NULL,
  `jstor_stats_url_c` varchar(220) DEFAULT NULL,
  `access_notes_c` text,
  `logon_script_c` varchar(120) DEFAULT NULL,
  `remote_user_c` varchar(100) DEFAULT NULL,
  `consortium_purchase_buying_c` text,
  `consortium_purchase_central_c` text,
  `aaf_savings_rate_c` int(3) DEFAULT NULL,
  `acf_savings_rate_c` int(3) DEFAULT NULL,
  `books_base_savings_rate_c` int(3) DEFAULT NULL,
  `portico_base_savings_rate_c` int(3) DEFAULT NULL,
  `csp_publisher_savings_rate_c` int(3) DEFAULT NULL,
  `books_savings_notes_c` text,
  `csp_savings_notes_c` text,
  `books_consort_classification_c` varchar(100) DEFAULT NULL,
  `consortium_purchase_both_c` text,
  `single_invoice_points_c` varchar(100) DEFAULT NULL,
  `previous_year_acf_points_c` varchar(100) DEFAULT NULL,
  `categories_c` text,
  `international_savings_rate_c` int(50) DEFAULT NULL,
  `talisma_id_c` varchar(25) DEFAULT NULL,
  `books_tier_level_c` varchar(100) DEFAULT NULL,
  `single_invoice_c` varchar(100) DEFAULT NULL,
  `serenic_id_c` varchar(100) DEFAULT NULL,
  `continent_geographic_region_c` varchar(100) DEFAULT NULL,
  `publisher_special_report_req_c` tinyint(1) DEFAULT NULL,
  `cd_account_note_c` text,
  `if_iso_3166_1_alpha_2_c` varchar(100) DEFAULT NULL,
  `if_iso_3166_1_alpha_3_c` varchar(100) DEFAULT NULL,
  `if_community_c` varchar(100) DEFAULT NULL,
  `if_country_c` varchar(100) DEFAULT NULL,
  `if_publish_to_jstor_website_c` tinyint(1) DEFAULT NULL,
  `if_state_province_c` varchar(100) DEFAULT NULL,
  `partner_c` tinyint(1) DEFAULT NULL,
  `contributor_c` tinyint(1) DEFAULT NULL,
  `partner_code_c` varchar(100) DEFAULT NULL,
  `adopted_archive_savings_mod_c` date DEFAULT NULL,
  `total_points_c` decimal(18,1) DEFAULT NULL,
  `single_invoice_consortia_c` text,
  `books_ypb_member_c` date DEFAULT NULL,
  `gpi_partner_classification_c` varchar(100) DEFAULT NULL,
  `grant_list_c` varchar(100) DEFAULT NULL,
  `ds_iso_6709_long_lat_c` varchar(100) DEFAULT NULL,
  `cpf_archive_c` varchar(100) DEFAULT NULL,
  `cpf_books_c` varchar(100) DEFAULT NULL,
  `cpf_csp_c` varchar(100) DEFAULT NULL,
  `sugar_id_c` varchar(25) DEFAULT NULL,
  `cpf_portico_c` varchar(100) DEFAULT NULL,
  `oclc_code_c` varchar(100) DEFAULT NULL,
  `archive_savings_notes_c` text,
  `primary_source_savings_rate_c` int(3) DEFAULT NULL,
  `primary_source_savings_notes_c` text,
  `portico_ejournal_savings_ra_c` int(3) DEFAULT NULL,
  `portico_ebook_savings_rate_c` int(3) DEFAULT NULL,
  `portico_savings_notes_c` text,
  `csp_collection_savings_rate_c` int(3) DEFAULT NULL,
  `system_id_int_c` int(25) DEFAULT NULL,
  `system_id_c` varchar(25) DEFAULT NULL,
  `region_calc_c` varchar(100) DEFAULT NULL,
  `sub_agent_commission_c` varchar(100) DEFAULT NULL,
  `agreement_sign_up_year_c` varchar(100) DEFAULT NULL,
  `anomaly_c` tinyint(1) DEFAULT NULL,
  `ill_amendment_c` tinyint(1) DEFAULT NULL,
  `peri_registrant_c` tinyint(1) DEFAULT NULL,
  `system_c` varchar(100) DEFAULT NULL,
  `sequoia_id_c` varchar(36) DEFAULT NULL,
  `books_custom_savings_rate_c` int(100) DEFAULT NULL,
  `signed_2015_universal_ag_c` tinyint(1) DEFAULT NULL,
  `signed_books_agreement_c` tinyint(1) DEFAULT NULL,
  `signed_jstor_ipa_on_file_c` tinyint(1) DEFAULT NULL,
  `signed_schedule_a2_c` tinyint(1) DEFAULT NULL,
  `signed_schedule_a3_c` tinyint(1) DEFAULT NULL,
  `portico_consortia_c` varchar(150) DEFAULT NULL,
  `artstor_auth_db_id_c` int(25) DEFAULT NULL,
  `artstor_library_c` tinyint(1) DEFAULT NULL,
  `sys_id_over_c` varchar(20) DEFAULT NULL,
  `primary_source_content_area_c` text,
  `lic_agent_account_ranking_c` varchar(100) DEFAULT NULL,
  `ideal_customer_profile_rank__c` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_c`),
  KEY `acctstatelist_idx` (`state_list_c`),
  KEY `acc_sysid` (`system_id_c`),
  KEY `acc_sysidint` (`system_id_int_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `accounts_ith_access_1_c`
--

DROP TABLE IF EXISTS `accounts_ith_access_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_ith_access_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `accounts_ith_access_1accounts_ida` varchar(36) DEFAULT NULL,
  `accounts_ith_access_1ith_access_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `accounts_ith_access_1_ida1` (`accounts_ith_access_1accounts_ida`),
  KEY `accounts_ith_access_1_alt` (`accounts_ith_access_1ith_access_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `accounts_ith_analytics_1_c`
--

DROP TABLE IF EXISTS `accounts_ith_analytics_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_ith_analytics_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `accounts_ith_analytics_1accounts_ida` varchar(36) DEFAULT NULL,
  `accounts_ith_analytics_1ith_analytics_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `accounts_ith_analytics_1_ida1` (`accounts_ith_analytics_1accounts_ida`),
  KEY `accounts_ith_analytics_1_alt` (`accounts_ith_analytics_1ith_analytics_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `accounts_ith_legacy_talisma_fields_1_c`
--

DROP TABLE IF EXISTS `accounts_ith_legacy_talisma_fields_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_ith_legacy_talisma_fields_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `accounts_ith_legacy_talisma_fields_1accounts_ida` varchar(36) DEFAULT NULL,
  `accounts_i8b58_fields_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `accounts_ith_legacy_talisma_fields_1_ida1` (`accounts_ith_legacy_talisma_fields_1accounts_ida`),
  KEY `accounts_ith_legacy_talisma_fields_1_alt` (`accounts_i8b58_fields_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `accounts_ith_licenses_1_c`
--

DROP TABLE IF EXISTS `accounts_ith_licenses_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_ith_licenses_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `accounts_ith_licenses_1accounts_ida` varchar(36) DEFAULT NULL,
  `accounts_ith_licenses_1ith_licenses_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `accounts_ith_licenses_1_ida1` (`accounts_ith_licenses_1accounts_ida`),
  KEY `accounts_ith_licenses_1_alt` (`accounts_ith_licenses_1ith_licenses_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `accounts_ith_pca_claims_1_c`
--

DROP TABLE IF EXISTS `accounts_ith_pca_claims_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_ith_pca_claims_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `accounts_ith_pca_claims_1accounts_ida` varchar(36) DEFAULT NULL,
  `accounts_ith_pca_claims_1ith_pca_claims_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `accounts_ith_pca_claims_1_ida1` (`accounts_ith_pca_claims_1accounts_ida`),
  KEY `accounts_ith_pca_claims_1_alt` (`accounts_ith_pca_claims_1ith_pca_claims_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `accounts_ith_platform_licenses_1_c`
--

DROP TABLE IF EXISTS `accounts_ith_platform_licenses_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_ith_platform_licenses_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `accounts_ith_platform_licenses_1accounts_ida` varchar(36) DEFAULT NULL,
  `accounts_ith_platform_licenses_1ith_platform_licenses_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `accounts_ith_platform_licenses_1_ida1` (`accounts_ith_platform_licenses_1accounts_ida`),
  KEY `accounts_ith_platform_licenses_1_alt` (`accounts_ith_platform_licenses_1ith_platform_licenses_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `accounts_ith_serviceproducts_1_c`
--

DROP TABLE IF EXISTS `accounts_ith_serviceproducts_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_ith_serviceproducts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `accounts_ith_serviceproducts_1accounts_ida` varchar(36) DEFAULT NULL,
  `accounts_ith_serviceproducts_1ith_serviceproducts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `accounts_ith_serviceproducts_1_ida1` (`accounts_ith_serviceproducts_1accounts_ida`),
  KEY `accounts_ith_serviceproducts_1_alt` (`accounts_ith_serviceproducts_1ith_serviceproducts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `accounts_opportunities`
--

DROP TABLE IF EXISTS `accounts_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_account_opportunity` (`account_id`,`opportunity_id`),
  KEY `idx_oppid_del_accid` (`opportunity_id`,`deleted`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `acl_actions`
--

DROP TABLE IF EXISTS `acl_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_actions` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `acltype` varchar(100) DEFAULT NULL,
  `aclaccess` int(3) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aclaction_id_del` (`id`,`deleted`),
  KEY `idx_category_name` (`category`,`name`),
  KEY `idx_acl_cat` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `acl_fields`
--

DROP TABLE IF EXISTS `acl_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_fields` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `aclaccess` int(3) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `role_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aclfield_role_del` (`role_id`,`category`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `acl_roles`
--

DROP TABLE IF EXISTS `acl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aclrole_id_del` (`id`,`deleted`),
  KEY `idx_aclrole_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `acl_roles_actions`
--

DROP TABLE IF EXISTS `acl_roles_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_roles_actions` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `action_id` varchar(36) DEFAULT NULL,
  `access_override` int(3) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acl_role_id` (`role_id`),
  KEY `idx_acl_action_id` (`action_id`),
  KEY `idx_aclrole_action` (`role_id`,`action_id`),
  KEY `idx_del_override` (`role_id`,`deleted`,`action_id`,`access_override`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `acl_roles_users`
--

DROP TABLE IF EXISTS `acl_roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_aclrole_id` (`role_id`),
  KEY `idx_acluser_id` (`user_id`),
  KEY `idx_aclrole_user` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activities` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `activity_type` varchar(100) DEFAULT NULL,
  `data` longtext,
  `comment_count` int(11) DEFAULT '0',
  `last_comment` longtext,
  PRIMARY KEY (`id`),
  KEY `activitiesmod` (`date_modified`),
  KEY `activity_records` (`parent_type`,`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `activities_users`
--

DROP TABLE IF EXISTS `activities_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activities_users` (
  `id` char(36) NOT NULL,
  `activity_id` char(36) NOT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `fields` longtext,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `activities_records` (`parent_type`,`parent_id`),
  KEY `activities_users_parent` (`activity_id`,`parent_id`,`parent_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `address_book`
--

DROP TABLE IF EXISTS `address_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address_book` (
  `assigned_user_id` char(36) NOT NULL,
  `bean` varchar(50) DEFAULT NULL,
  `bean_id` char(36) NOT NULL,
  KEY `ab_user_bean_idx` (`assigned_user_id`,`bean`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `address_book_list_items`
--

DROP TABLE IF EXISTS `address_book_list_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address_book_list_items` (
  `list_id` char(36) NOT NULL,
  `bean_id` char(36) NOT NULL,
  KEY `abli_list_id_idx` (`list_id`),
  KEY `abli_list_id_bean_idx` (`list_id`,`bean_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `address_book_lists`
--

DROP TABLE IF EXISTS `address_book_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address_book_lists` (
  `id` char(36) NOT NULL,
  `assigned_user_id` char(36) NOT NULL,
  `list_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `abml_user_bean_idx` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bugs`
--

DROP TABLE IF EXISTS `bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bugs` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `bug_number` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `system_id` int(11) DEFAULT NULL,
  `work_log` text,
  `found_in_release` varchar(255) DEFAULT NULL,
  `fixed_in_release` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `product_category` varchar(255) DEFAULT NULL,
  `portal_viewable` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bugsnumk` (`bug_number`),
  UNIQUE KEY `bug_number` (`bug_number`,`system_id`),
  KEY `bugsmod` (`date_modified`),
  KEY `idx_bugs_tmst_id` (`team_set_id`),
  KEY `idx_bug_name` (`name`),
  KEY `idx_bugs_assigned_user` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bugs_audit`
--

DROP TABLE IF EXISTS `bugs_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bugs_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bugs_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `calls`
--

DROP TABLE IF EXISTS `calls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `duration_hours` int(2) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Held',
  `direction` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT '-1',
  `email_reminder_time` int(11) DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `callsmod` (`date_modified`),
  KEY `idx_calls_tmst_id` (`team_set_id`),
  KEY `idx_call_name` (`name`),
  KEY `idx_status` (`status`),
  KEY `idx_calls_date_start` (`date_start`),
  KEY `idx_calls_date_start_reminder` (`date_start`,`reminder_time`),
  KEY `idx_calls_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_calls_assigned_del` (`deleted`,`assigned_user_id`),
  KEY `idx_call_direction` (`direction`),
  KEY `idx_call_date_entered` (`date_entered`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `calls_contacts`
--

DROP TABLE IF EXISTS `calls_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_contacts` (
  `id` char(36) NOT NULL,
  `call_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_call_call` (`call_id`),
  KEY `idx_con_call_con` (`contact_id`),
  KEY `idx_call_contact` (`call_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `calls_leads`
--

DROP TABLE IF EXISTS `calls_leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_leads` (
  `id` char(36) NOT NULL,
  `call_id` char(36) DEFAULT NULL,
  `lead_id` char(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_lead_call_call` (`call_id`),
  KEY `idx_lead_call_lead` (`lead_id`),
  KEY `idx_call_lead` (`call_id`,`lead_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `calls_users`
--

DROP TABLE IF EXISTS `calls_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_users` (
  `id` char(36) NOT NULL,
  `call_id` char(36) DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_usr_call_call` (`call_id`),
  KEY `idx_usr_call_usr` (`user_id`),
  KEY `idx_call_users` (`call_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `campaign_log`
--

DROP TABLE IF EXISTS `campaign_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_log` (
  `id` char(36) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `target_tracker_key` varchar(36) DEFAULT NULL,
  `target_id` char(36) DEFAULT NULL,
  `target_type` varchar(100) DEFAULT NULL,
  `activity_type` varchar(100) DEFAULT NULL,
  `activity_date` datetime DEFAULT NULL,
  `related_id` char(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  `archived` tinyint(1) DEFAULT '0',
  `hits` int(11) DEFAULT '0',
  `list_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `more_information` varchar(100) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_camp_tracker` (`target_tracker_key`),
  KEY `idx_camp_campaign_id` (`campaign_id`),
  KEY `idx_camp_more_info` (`more_information`),
  KEY `idx_target_id` (`target_id`),
  KEY `idx_target_id_deleted` (`target_id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `campaign_trkrs`
--

DROP TABLE IF EXISTS `campaign_trkrs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_trkrs` (
  `id` char(36) NOT NULL,
  `tracker_name` varchar(30) DEFAULT NULL,
  `tracker_url` varchar(255) DEFAULT 'http://',
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` char(36) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `is_optout` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `campaign_tracker_key_idx` (`tracker_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `campaigns`
--

DROP TABLE IF EXISTS `campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigns` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `tracker_count` int(11) DEFAULT '0',
  `refer_url` varchar(255) DEFAULT 'http://',
  `tracker_text` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `impressions` int(11) DEFAULT '0',
  `currency_id` char(36) DEFAULT '-99',
  `base_rate` decimal(26,6) DEFAULT NULL,
  `budget` decimal(26,6) DEFAULT NULL,
  `expected_cost` decimal(26,6) DEFAULT NULL,
  `actual_cost` decimal(26,6) DEFAULT NULL,
  `expected_revenue` decimal(26,6) DEFAULT NULL,
  `campaign_type` varchar(100) DEFAULT NULL,
  `objective` text,
  `content` text,
  `frequency` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `campaignsmod` (`date_modified`),
  KEY `idx_campaigns_tmst_id` (`team_set_id`),
  KEY `camp_auto_tracker_key` (`tracker_key`),
  KEY `idx_campaign_name` (`name`),
  KEY `idx_campaign_status` (`status`),
  KEY `idx_campaign_campaign_type` (`campaign_type`),
  KEY `idx_campaign_end_date` (`end_date`),
  KEY `idx_campaign_date_entered` (`date_entered`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `campaigns_audit`
--

DROP TABLE IF EXISTS `campaigns_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigns_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_campaigns_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cases`
--

DROP TABLE IF EXISTS `cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `case_number` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` text,
  `system_id` int(11) DEFAULT NULL,
  `work_log` text,
  `account_id` char(36) DEFAULT NULL,
  `portal_viewable` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `casesnumk` (`case_number`),
  UNIQUE KEY `case_number` (`case_number`,`system_id`),
  KEY `CASEMOD_TEAMSET` (`date_modified`,`team_set_id`),
  KEY `idx_cases_tmst_id` (`team_set_id`),
  KEY `idx_case_name` (`name`),
  KEY `idx_account_id` (`account_id`),
  KEY `idx_cases_stat_del` (`assigned_user_id`,`status`,`deleted`),
  KEY `idx_case_date_entered` (`date_entered`),
  KEY `priority_idx` (`priority`),
  KEY `status_idx` (`status`),
  KEY `tmidx` (`team_id`),
  KEY `idx_assignee` (`assigned_user_id`),
  KEY `idx_team` (`team_id`),
  KEY `idx_case_type` (`type`),
  KEY `casesmod` (`date_modified`)
) ENGINE=InnoDB AUTO_INCREMENT=5951691 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cases_audit`
--

DROP TABLE IF EXISTS `cases_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_cases_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cases_bugs`
--

DROP TABLE IF EXISTS `cases_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases_bugs` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_cas_bug_cas` (`case_id`),
  KEY `idx_cas_bug_bug` (`bug_id`),
  KEY `idx_case_bug` (`case_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cases_cstm`
--

DROP TABLE IF EXISTS `cases_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases_cstm` (
  `id_c` char(36) NOT NULL,
  `change_mode_c` varchar(100) DEFAULT NULL,
  `contact_id_c` char(36) DEFAULT NULL,
  `user_status_c` varchar(100) DEFAULT NULL,
  `users_site_c` varchar(255) DEFAULT NULL,
  `escalation_level_c` varchar(100) DEFAULT NULL,
  `meeting_date_c` date DEFAULT NULL,
  `resolve_status_c` varchar(100) DEFAULT NULL,
  `ith_services_id_c` char(36) DEFAULT NULL,
  `ith_entitlements_id_c` char(36) DEFAULT NULL,
  `domestic_or_international_c` varchar(255) DEFAULT NULL,
  `interest_level_c` varchar(255) DEFAULT NULL,
  `interested_short_term_trial_c` varchar(255) DEFAULT NULL,
  `type_of_institution_c` varchar(255) DEFAULT NULL,
  `country_c` varchar(255) DEFAULT NULL,
  `institutional_url_c` varchar(255) DEFAULT NULL,
  `interested_short_trial_c` varchar(255) DEFAULT NULL,
  `participation_interest_level_c` varchar(255) DEFAULT NULL,
  `region_c` varchar(255) DEFAULT NULL,
  `college_enrolling_rate_c` varchar(255) DEFAULT NULL,
  `ith_serviceproducts_id_c` char(36) DEFAULT NULL,
  `grade_levels_served_c` varchar(255) DEFAULT NULL,
  `total_number_of_students_c` varchar(255) DEFAULT NULL,
  `internet_service_provider_c` varchar(255) DEFAULT NULL,
  `ips_dynamically_assigned_c` varchar(255) DEFAULT NULL,
  `ips_shared_c` varchar(255) DEFAULT NULL,
  `principal_domain_name_c` varchar(255) DEFAULT NULL,
  `proxy_firewall_ips_c` varchar(255) DEFAULT NULL,
  `use_firewall_or_proxy_c` varchar(255) DEFAULT NULL,
  `originating_path_c` varchar(255) DEFAULT NULL,
  `remote_address_c` varchar(255) DEFAULT NULL,
  `server_time_c` varchar(255) DEFAULT NULL,
  `servlet_path_c` varchar(255) DEFAULT NULL,
  `user_agent_c` varchar(255) DEFAULT NULL,
  `transfer_handling_c` varchar(255) DEFAULT NULL,
  `website_c` varchar(255) DEFAULT NULL,
  `broswer_c` varchar(255) DEFAULT NULL,
  `browser_version_c` varchar(255) DEFAULT NULL,
  `computer_type_c` varchar(255) DEFAULT NULL,
  `operating_system_c` varchar(255) DEFAULT NULL,
  `improve_dfr_c` tinyint(1) DEFAULT '0',
  `problem_url_c` varchar(255) DEFAULT NULL,
  `count_address_updates_c` int(255) DEFAULT NULL,
  `count_eaccess_claims_c` int(255) DEFAULT NULL,
  `count_print_claims_c` int(255) DEFAULT NULL,
  `consortial_affiliation_c` varchar(255) DEFAULT NULL,
  `forward_partner_c` tinyint(1) DEFAULT '0',
  `object_id_c` varchar(255) DEFAULT NULL,
  `partner_code_c` varchar(255) DEFAULT NULL,
  `former_account_name_c` varchar(150) DEFAULT NULL,
  `sitename_c` varchar(100) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `categories_c` text,
  `user_email_c` varchar(255) DEFAULT NULL,
  `user_institution_c` varchar(255) DEFAULT NULL,
  `user_name_c` varchar(255) DEFAULT NULL,
  `error_type_c` varchar(100) DEFAULT NULL,
  `notes_c` text,
  `interaction_activity_type_c` varchar(100) DEFAULT NULL,
  `century_british_pamphlets_c` varchar(150) DEFAULT NULL,
  `african_cultural_heritage_c` varchar(150) DEFAULT NULL,
  `african_plants_c` varchar(150) DEFAULT NULL,
  `arts_sciences_i_c` varchar(150) DEFAULT NULL,
  `arts_sciences_ii_c` varchar(150) DEFAULT NULL,
  `arts_sciences_iii_c` varchar(150) DEFAULT NULL,
  `arts_sciences_iv_c` varchar(150) DEFAULT NULL,
  `arts_sciences_v_c` varchar(255) DEFAULT NULL,
  `arts_sciences_vi_c` varchar(150) DEFAULT NULL,
  `arts_sciences_vii_c` varchar(150) DEFAULT NULL,
  `arts_sciences_viii_c` varchar(150) DEFAULT NULL,
  `biological_sciences_c` varchar(150) DEFAULT NULL,
  `business_i_c` varchar(150) DEFAULT NULL,
  `business_ii_c` varchar(150) DEFAULT NULL,
  `business_iii_c` varchar(150) DEFAULT NULL,
  `collection_interest_c` varchar(150) DEFAULT NULL,
  `ecology_botany_c` varchar(150) DEFAULT NULL,
  `health_general_sciences_c` varchar(150) DEFAULT NULL,
  `ireland_collection_c` varchar(150) DEFAULT NULL,
  `language_literature_c` varchar(150) DEFAULT NULL,
  `life_sciences_c` varchar(150) DEFAULT NULL,
  `mathematics_statistics_c` varchar(150) DEFAULT NULL,
  `music_c` varchar(150) DEFAULT NULL,
  `struggles_for_freedom_c` varchar(150) DEFAULT NULL,
  `talisma_id_c` varchar(25) DEFAULT NULL,
  `access_books_provisioned_c` date DEFAULT NULL,
  `books_agent_consortium_c` varchar(255) DEFAULT NULL,
  `books_invoice_number_c` varchar(255) DEFAULT NULL,
  `books_invoice_amount_c` varchar(50) DEFAULT NULL,
  `books_order_payment_received_c` date DEFAULT NULL,
  `books_invoice_sent_librarian_c` date DEFAULT NULL,
  `books_order_processing_comp_c` date DEFAULT NULL,
  `books_payment_applied_c` date DEFAULT NULL,
  `books_payment_required_prior_c` tinyint(1) DEFAULT '0',
  `corrected_invoice_number_c` varchar(50) DEFAULT NULL,
  `corrected_invoice_sent_c` date DEFAULT NULL,
  `csp_invoice_number_c` varchar(80) DEFAULT NULL,
  `invoice_attached_account_c` date DEFAULT NULL,
  `invoice_sent_subscriber_c` date DEFAULT NULL,
  `orders_invoiced_c` date DEFAULT NULL,
  `reason_reversal_c` varchar(255) DEFAULT NULL,
  `orders_built_klopotek_c` date DEFAULT NULL,
  `orders_rebuilt_klopotek_c` date DEFAULT NULL,
  `orders_reversed_klopotek_c` date DEFAULT NULL,
  `outstanding_issues_delays_c` varchar(255) DEFAULT NULL,
  `access_details_c` varchar(255) DEFAULT NULL,
  `contact_receive_invoice_c` varchar(255) DEFAULT NULL,
  `order_ready_entered_c` date DEFAULT NULL,
  `special_invoice_instructions_c` text,
  `using_dfr_c` varchar(255) DEFAULT NULL,
  `feedback_type_c` varchar(255) DEFAULT NULL,
  `description_institution_c` varchar(255) DEFAULT NULL,
  `user_scvs_c` varchar(50) DEFAULT NULL,
  `transfer_handing_c` varchar(100) DEFAULT NULL,
  `user_servces_c` varchar(100) DEFAULT NULL,
  `number_emails_c` int(10) DEFAULT NULL,
  `unread_email_c` tinyint(1) DEFAULT NULL,
  `primary_contact_email_c` varchar(200) DEFAULT NULL,
  `closed_date_c` datetime DEFAULT NULL,
  `first_repeat_c` tinyint(1) DEFAULT NULL,
  `agent_order_number_c` varchar(50) DEFAULT NULL,
  `jstor_order_number_c` varchar(255) DEFAULT NULL,
  `paid_publisher_c` tinyint(1) DEFAULT NULL,
  `publisher_refund_approved_c` date DEFAULT NULL,
  `date_refund_requested_c` date DEFAULT NULL,
  `date_refund_issued_c` date DEFAULT NULL,
  `check_number_c` varchar(50) DEFAULT NULL,
  `check_amount_c` decimal(26,6) DEFAULT '0.000000',
  `currency_id` char(36) DEFAULT NULL,
  `base_rate` decimal(26,6) DEFAULT NULL,
  `quote_amount_c` decimal(26,6) DEFAULT '0.000000',
  `cd_account_manager_c` varchar(255) DEFAULT NULL,
  `sugar_id_c` varchar(255) DEFAULT NULL,
  `product_line_c` varchar(100) DEFAULT NULL,
  `jstor_email_c` varchar(150) DEFAULT NULL,
  `literatum_session_id_c` varchar(150) DEFAULT NULL,
  `server_id_c` varchar(150) DEFAULT NULL,
  `session_id_c` varchar(150) DEFAULT NULL,
  `case_type_c` varchar(100) DEFAULT NULL,
  `date_assigned_c` datetime DEFAULT NULL,
  `date_replied_c` datetime DEFAULT NULL,
  `date_resolved_closed_c` datetime DEFAULT NULL,
  `time_to_assign_c` decimal(18,8) DEFAULT NULL,
  `time_to_reply_c` decimal(18,8) DEFAULT NULL,
  `time_to_reply_from_assign_c` decimal(18,8) DEFAULT NULL,
  `time_to_resolve_close_c` decimal(18,8) DEFAULT NULL,
  `time_to_resolve_from_assign_c` decimal(18,8) DEFAULT NULL,
  `teams_calc_c` varchar(255) DEFAULT NULL,
  `teams_c` varchar(255) DEFAULT NULL,
  `time_to_assign_hr_min_c` decimal(18,2) DEFAULT NULL,
  `time_to_reply_hr_min_c` decimal(18,2) DEFAULT NULL,
  `time_to_reply_assign_hr_min_c` decimal(18,2) DEFAULT NULL,
  `time_to_resolve_close_hr_min_c` decimal(18,2) DEFAULT NULL,
  `time_resolve_assign_hr_min_c` decimal(18,2) DEFAULT NULL,
  `resolved_date_c` datetime DEFAULT NULL,
  `attachments_exist_c` tinyint(1) DEFAULT NULL,
  `notes_count_c` int(255) DEFAULT NULL,
  `notes_exist_c` tinyint(1) DEFAULT NULL,
  `fulfillment_case_subtype_c` varchar(100) DEFAULT NULL,
  `myjstor_username_c` varchar(100) DEFAULT NULL,
  `myjstor_email_c` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_c`),
  KEY `indx_talisma_id_c` (`talisma_id_c`),
  KEY `contact_id_cx` (`contact_id_c`),
  KEY `cat_idx` (`categories_c`(255)),
  KEY `pcemail_idx` (`primary_contact_email_c`),
  KEY `idx_email` (`user_email_c`),
  KEY `idx_unread_email` (`unread_email_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `category_tree`
--

DROP TABLE IF EXISTS `category_tree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_tree` (
  `self_id` char(36) DEFAULT NULL,
  `node_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_node_id` int(11) DEFAULT '0',
  `type` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`node_id`),
  KEY `idx_categorytree` (`self_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `parent_id` char(36) NOT NULL,
  `data` longtext,
  PRIMARY KEY (`id`),
  KEY `commentsmod` (`date_modified`),
  KEY `comment_activities` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `category` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `value` text,
  `platform` varchar(32) DEFAULT NULL,
  KEY `idx_config_cat` (`category`),
  KEY `idx_config_platform` (`platform`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `facebook` varchar(100) DEFAULT NULL,
  `twitter` varchar(100) DEFAULT NULL,
  `googleplus` varchar(100) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(35) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `lead_source` varchar(255) DEFAULT NULL,
  `dnb_principal_id` varchar(30) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `portal_name` varchar(255) DEFAULT NULL,
  `portal_active` tinyint(1) DEFAULT '0',
  `portal_password` varchar(255) DEFAULT NULL,
  `portal_app` varchar(255) DEFAULT NULL,
  `preferred_language` varchar(255) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `mkto_sync` tinyint(1) DEFAULT '0',
  `mkto_id` int(11) DEFAULT NULL,
  `mkto_lead_score` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contactsmod` (`date_modified`),
  KEY `idx_contacts_tmst_id` (`team_set_id`),
  KEY `idx_cont_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_contacts_del_last` (`deleted`,`last_name`),
  KEY `idx_cont_del_reports` (`deleted`,`reports_to_id`,`last_name`),
  KEY `idx_reports_to_id` (`reports_to_id`),
  KEY `idx_del_id_user` (`deleted`,`id`,`assigned_user_id`),
  KEY `idx_cont_assigned` (`assigned_user_id`),
  KEY `idx_contact_title` (`title`),
  KEY `idx_contact_date_entered` (`date_entered`),
  KEY `idx_contact_mkto_id` (`mkto_id`),
  KEY `fname_idx` (`first_name`),
  KEY `lname_idx` (`last_name`),
  KEY `idx_city` (`primary_address_city`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contacts_audit`
--

DROP TABLE IF EXISTS `contacts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_contacts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contacts_bugs`
--

DROP TABLE IF EXISTS `contacts_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_bugs` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_bug_con` (`contact_id`),
  KEY `idx_con_bug_bug` (`bug_id`),
  KEY `idx_contact_bug` (`contact_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contacts_cases`
--

DROP TABLE IF EXISTS `contacts_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_cases` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_case_con` (`contact_id`),
  KEY `idx_con_case_case` (`case_id`),
  KEY `idx_contacts_cases` (`contact_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contacts_cstm`
--

DROP TABLE IF EXISTS `contacts_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_cstm` (
  `id_c` char(36) NOT NULL,
  `extension_c` varchar(50) DEFAULT NULL,
  `home_address_modifier_c` varchar(255) DEFAULT NULL,
  `contact_web_c` varchar(255) DEFAULT NULL,
  `spammer_c` tinyint(1) DEFAULT '0',
  `service_product_primary_c` text,
  `service_product_billing_c` text,
  `service_product_renewals_c` text,
  `service_product_sub_agent_c` text,
  `service_product_legal_c` text,
  `buyer_influence_c` text,
  `communication_preferences_c` text,
  `interest_c` text,
  `memberhip_affiliation_c` varchar(255) DEFAULT NULL,
  `translation_language_c` varchar(255) DEFAULT NULL,
  `contact_id_c` char(36) DEFAULT NULL,
  `unresponsive_contact_c` tinyint(1) DEFAULT '0',
  `myjstor_institution_c` varchar(255) DEFAULT NULL,
  `myjstor_username_c` varchar(255) DEFAULT NULL,
  `myjstor_account_created_c` date DEFAULT NULL,
  `ias_start_date_c` date DEFAULT NULL,
  `ias_end_date_c` date DEFAULT NULL,
  `last_updated_c` date DEFAULT NULL,
  `offer_code_c` varchar(255) DEFAULT NULL,
  `account_id_c` char(36) DEFAULT NULL,
  `subscriber_id_c` varchar(255) DEFAULT NULL,
  `subscription_year_c` varchar(255) DEFAULT NULL,
  `ias_title_c` varchar(255) DEFAULT NULL,
  `token_c` varchar(255) DEFAULT NULL,
  `token_activated_c` tinyint(1) DEFAULT '0',
  `token_domain_c` varchar(255) DEFAULT NULL,
  `contact_up_to_date_as_of_c` date DEFAULT NULL,
  `portico_newsletter_type_c` varchar(100) DEFAULT NULL,
  `portico_preferred_cont_meth_c` varchar(100) DEFAULT NULL,
  `receive_portico_newsletter_c` tinyint(1) DEFAULT '0',
  `verified_c` tinyint(1) DEFAULT '0',
  `user_id_c` char(36) DEFAULT NULL,
  `user_id1_c` char(36) DEFAULT NULL,
  `user_id2_c` char(36) DEFAULT NULL,
  `service_products_list_sub_c` text,
  `influence_service_c` text,
  `influence_product_line_c` text,
  `degree_influence_c` varchar(100) DEFAULT NULL,
  `roles_c` text,
  `status_c` varchar(100) DEFAULT 'Active',
  `user_services_business_admin_c` varchar(255) DEFAULT NULL,
  `shared_access_token_contacts_c` varchar(255) DEFAULT NULL,
  `shared_access_token_c` varchar(255) DEFAULT NULL,
  `test_c` varchar(255) DEFAULT NULL,
  `all_buyer_influence_c` varchar(100) DEFAULT NULL,
  `jstor_buyer_influence_c` varchar(100) DEFAULT NULL,
  `books_buyer_influence_c` varchar(100) DEFAULT NULL,
  `csp_buyer_influence_c` varchar(100) DEFAULT NULL,
  `portico_buyer_influence_c` varchar(100) DEFAULT NULL,
  `primary_source_buyer_influen_c` varchar(100) DEFAULT NULL,
  `all_degree_influence_c` varchar(100) DEFAULT NULL,
  `jstor_degree_influence_c` varchar(100) DEFAULT NULL,
  `books_degree_influence_c` varchar(100) DEFAULT NULL,
  `csp_degree_influence_c` varchar(100) DEFAULT NULL,
  `portico_degree_influence_c` varchar(100) DEFAULT NULL,
  `primary_source_degree_influe_c` varchar(100) DEFAULT NULL,
  `uk_country_c` varchar(100) DEFAULT NULL,
  `dear_name_c` varchar(100) DEFAULT NULL,
  `institution_c` varchar(255) DEFAULT NULL,
  `middle_name_c` varchar(255) DEFAULT NULL,
  `country_list_c` varchar(100) DEFAULT NULL,
  `state_list_c` varchar(100) DEFAULT NULL,
  `myjstor_position_or_academic_c` varchar(100) DEFAULT NULL,
  `myjstor_primary_area_c` varchar(100) DEFAULT NULL,
  `categories_c` text,
  `contact_id1_c` char(36) DEFAULT NULL,
  `talisma_id_c` varchar(25) DEFAULT NULL,
  `wsys_wf_cond_001_c` varchar(255) DEFAULT NULL,
  `notification_c` varchar(100) DEFAULT NULL,
  `jstor_archive_lead_score_c` int(10) DEFAULT NULL,
  `csp_lead_score_c` int(10) DEFAULT NULL,
  `books_at_jstor_lead_score_c` int(10) DEFAULT NULL,
  `primary_source_lead_score_c` int(10) DEFAULT NULL,
  `alumni_access_lead_score_c` int(10) DEFAULT NULL,
  `jpass_lead_score_c` int(10) DEFAULT NULL,
  `global_plants_lead_score_c` int(10) DEFAULT NULL,
  `portico_lead_score_c` int(10) DEFAULT NULL,
  `mass_update_trigger_c` varchar(100) DEFAULT 'A',
  `marketing_tag_c` varchar(100) DEFAULT NULL,
  `archive_auditor_sitename_c` varchar(255) DEFAULT NULL,
  `archive_auditor_username_c` varchar(100) DEFAULT NULL,
  `archive_auditor_password_c` varchar(100) DEFAULT NULL,
  `aluka_correspondence_type_c` varchar(100) DEFAULT NULL,
  `aluka_staff_relationship_c` varchar(150) DEFAULT NULL,
  `communication_unsubscribes_c` text,
  `interest_unsubscribes_c` text,
  `ithaka_sub_date_c` datetime DEFAULT NULL,
  `ithaka_sr_sub_date_c` datetime DEFAULT NULL,
  `jstor_sub_date_c` datetime DEFAULT NULL,
  `jstor_plant_science_sub_date_c` datetime DEFAULT NULL,
  `jstor_global_plants_sub_date_c` datetime DEFAULT NULL,
  `jstor_announcements_sub_date_c` datetime DEFAULT NULL,
  `jstor_newsletter_sub_date_c` datetime DEFAULT NULL,
  `portico_sub_date_c` datetime DEFAULT NULL,
  `myjstor_news_sub_date_c` datetime DEFAULT NULL,
  `myjstor_publisher_sub_date_c` datetime DEFAULT NULL,
  `ithaka_unsub_date_c` datetime DEFAULT NULL,
  `phone_alternate_c` varchar(255) DEFAULT NULL,
  `ithaka_sr_unsub_date_c` datetime DEFAULT NULL,
  `jstor_unsub_date_c` datetime DEFAULT NULL,
  `jstor_plant_sci_unsub_date_c` datetime DEFAULT NULL,
  `jstor_global_plan_unsub_date_c` datetime DEFAULT NULL,
  `jstor_announce_unsub_date_c` datetime DEFAULT NULL,
  `jstor_newsletter_unsub_date_c` datetime DEFAULT NULL,
  `portico_unsub_date_c` datetime DEFAULT NULL,
  `myjstor_news_unsub_date_c` datetime DEFAULT NULL,
  `myjstor_publisher_unsub_date_c` datetime DEFAULT NULL,
  `jstor_global_unsub_date_c` datetime DEFAULT NULL,
  `sugar_id_c` varchar(50) DEFAULT NULL,
  `subject_area_special_c` text,
  `system_id_c` varchar(25) DEFAULT NULL,
  `system_id_int_c` int(25) DEFAULT NULL,
  `comm_prefs_calc_c` varchar(255) DEFAULT NULL,
  `comm_prefs_unsub_calc_c` varchar(255) DEFAULT NULL,
  `cars_c` text,
  `full_name_c` varchar(255) DEFAULT NULL,
  `director_of_inst_part_c` varchar(100) DEFAULT NULL,
  `inst_part_coordinator_c` varchar(100) DEFAULT NULL,
  `region_c` varchar(150) DEFAULT NULL,
  `myaccount_username_c` varchar(150) DEFAULT NULL,
  `myaccount_institution_c` varchar(255) DEFAULT NULL,
  `myaccount_email_c` varchar(150) DEFAULT NULL,
  `myaccount_primary_area_study_c` varchar(150) DEFAULT NULL,
  `myaccount_date_created_c` date DEFAULT NULL,
  `sequoia_id_c` varchar(36) DEFAULT NULL,
  `jstor_daily_sub_date_c` datetime DEFAULT NULL,
  `jstor_daily_unsub_date_c` datetime DEFAULT NULL,
  `myaccount_firstname_c` varchar(100) DEFAULT NULL,
  `myaccount_lastname_c` varchar(100) DEFAULT NULL,
  `acton_lead_score_c` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_c`),
  KEY `cnt_sysid` (`system_id_c`),
  KEY `cnt_sysidint` (`system_id_int_c`),
  KEY `idx_myjstor` (`myjstor_username_c`),
  KEY `idx_sys_ids` (`system_id_int_c`,`system_id_c`),
  KEY `idx_sequoiaid` (`sequoia_id_c`),
  KEY `idx_cnt_state` (`state_list_c`),
  KEY `idx_cnt_country` (`country_list_c`),
  KEY `idx_cnt_region` (`region_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contacts_ith_roles_1_c`
--

DROP TABLE IF EXISTS `contacts_ith_roles_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_ith_roles_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `contacts_ith_roles_1contacts_ida` varchar(36) DEFAULT NULL,
  `contacts_ith_roles_1ith_roles_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contacts_ith_roles_1_ida1` (`contacts_ith_roles_1contacts_ida`),
  KEY `contacts_ith_roles_1_alt` (`contacts_ith_roles_1ith_roles_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contacts_users`
--

DROP TABLE IF EXISTS `contacts_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_users` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_users_con` (`contact_id`),
  KEY `idx_con_users_user` (`user_id`),
  KEY `idx_contacts_users` (`contact_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contract_types`
--

DROP TABLE IF EXISTS `contract_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_types` (
  `id` char(36) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `list_order` int(4) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_contracttype_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contracts`
--

DROP TABLE IF EXISTS `contracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contracts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `reference_code` varchar(255) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `currency_id` char(36) DEFAULT '-99',
  `base_rate` decimal(26,6) DEFAULT NULL,
  `total_contract_value` decimal(26,6) DEFAULT NULL,
  `total_contract_value_usdollar` decimal(26,6) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `customer_signed_date` date DEFAULT NULL,
  `company_signed_date` date DEFAULT NULL,
  `expiration_notice` datetime DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contractsmod` (`date_modified`),
  KEY `idx_contracts_tmst_id` (`team_set_id`),
  KEY `idx_contract_name` (`name`),
  KEY `idx_contract_status` (`status`),
  KEY `idx_contract_start_date` (`start_date`),
  KEY `idx_contract_end_date` (`end_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contracts_audit`
--

DROP TABLE IF EXISTS `contracts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contracts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_contracts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contracts_contacts`
--

DROP TABLE IF EXISTS `contracts_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contracts_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `contract_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `contracts_contacts_alt` (`contact_id`,`contract_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contracts_cstm`
--

DROP TABLE IF EXISTS `contracts_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contracts_cstm` (
  `id_c` char(36) NOT NULL,
  `contract_type_c` varchar(100) DEFAULT NULL,
  `contract_currency_c` varchar(100) DEFAULT 'unit price 1',
  `service_c` varchar(100) DEFAULT 'gis 1',
  `service_product_c` varchar(100) DEFAULT 'SP List 1',
  `contract_version_c` varchar(100) DEFAULT '0',
  `contract_version_name_c` varchar(255) DEFAULT NULL,
  `contract_version_date_c` date DEFAULT NULL,
  `single_contract_c` varchar(100) DEFAULT 'sing cntrct 1',
  `order_number_reference_c` varchar(255) DEFAULT NULL,
  `order_completed_c` date DEFAULT NULL,
  `ipa_sched_2_orig_rec_c` tinyint(1) DEFAULT '0',
  `ipa_or_sched_2_rec_c` tinyint(1) DEFAULT '0',
  `ip_sched_3_orig_rec_c` tinyint(1) DEFAULT '0',
  `ipa_sched_3_rec_c` tinyint(1) DEFAULT '0',
  `passed_paperwork_licensing_c` tinyint(1) DEFAULT '0',
  `ret_csign_ipa_sched_c` date DEFAULT NULL,
  `signed_ipa_on_file_c` tinyint(1) DEFAULT '0',
  `signed_schedule_a2_on_file_c` tinyint(1) DEFAULT '0',
  `signed_schedule_a3_on_file_c` tinyint(1) DEFAULT '0',
  `site_name_provided_c` date DEFAULT NULL,
  `site_name_requested_c` date DEFAULT NULL,
  `installation_notes_c` varchar(255) DEFAULT NULL,
  `primary_team_c` tinyint(1) DEFAULT '0',
  `quote_id_c` char(36) DEFAULT NULL,
  `contract_term_c` varchar(100) DEFAULT NULL,
  `individual_system_c` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contracts_opportunities`
--

DROP TABLE IF EXISTS `contracts_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contracts_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `contract_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `contracts_opp_alt` (`contract_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contracts_products`
--

DROP TABLE IF EXISTS `contracts_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contracts_products` (
  `id` varchar(36) NOT NULL,
  `product_id` varchar(36) DEFAULT NULL,
  `contract_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `contracts_prod_alt` (`contract_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contracts_quotes`
--

DROP TABLE IF EXISTS `contracts_quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contracts_quotes` (
  `id` varchar(36) NOT NULL,
  `quote_id` varchar(36) DEFAULT NULL,
  `contract_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `contracts_quot_alt` (`contract_id`,`quote_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currencies` (
  `id` char(36) NOT NULL,
  `name` varchar(36) DEFAULT NULL,
  `symbol` varchar(36) DEFAULT NULL,
  `iso4217` varchar(3) DEFAULT NULL,
  `conversion_rate` decimal(26,6) DEFAULT '0.000000',
  `status` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_currency_name` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields` (
  `bean_id` char(36) DEFAULT NULL,
  `set_num` int(11) DEFAULT '0',
  `field0` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  `field3` varchar(255) DEFAULT NULL,
  `field4` varchar(255) DEFAULT NULL,
  `field5` varchar(255) DEFAULT NULL,
  `field6` varchar(255) DEFAULT NULL,
  `field7` varchar(255) DEFAULT NULL,
  `field8` varchar(255) DEFAULT NULL,
  `field9` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  KEY `idx_beanid_set_num` (`bean_id`,`set_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `custom_queries`
--

DROP TABLE IF EXISTS `custom_queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_queries` (
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `custom_query` text,
  `query_type` varchar(50) DEFAULT NULL,
  `list_order` int(4) DEFAULT NULL,
  `query_locked` varchar(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_custom_queries_tmst_id` (`team_set_id`),
  KEY `idx_customqueries` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dashboards`
--

DROP TABLE IF EXISTS `dashboards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboards` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `dashboard_module` varchar(100) DEFAULT NULL,
  `view_name` varchar(100) DEFAULT NULL,
  `metadata` text,
  `dashboard_type` varchar(100) DEFAULT 'dashboard',
  PRIMARY KEY (`id`),
  KEY `dashboardsmod` (`date_modified`),
  KEY `user_module_view` (`assigned_user_id`,`dashboard_module`,`view_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `data_sets`
--

DROP TABLE IF EXISTS `data_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_sets` (
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `report_id` char(36) DEFAULT NULL,
  `query_id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_order_y` int(3) DEFAULT '0',
  `exportable` varchar(3) DEFAULT '0',
  `header` varchar(3) DEFAULT '0',
  `description` text,
  `table_width` varchar(3) DEFAULT '0',
  `font_size` varchar(8) DEFAULT '0',
  `output_default` varchar(100) DEFAULT NULL,
  `prespace_y` varchar(3) DEFAULT '0',
  `use_prev_header` varchar(3) DEFAULT '0',
  `header_back_color` varchar(100) DEFAULT NULL,
  `body_back_color` varchar(100) DEFAULT NULL,
  `header_text_color` varchar(100) DEFAULT NULL,
  `body_text_color` varchar(100) DEFAULT NULL,
  `table_width_type` varchar(3) DEFAULT NULL,
  `custom_layout` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_data_sets_tmst_id` (`team_set_id`),
  KEY `idx_dataset` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dataset_attributes`
--

DROP TABLE IF EXISTS `dataset_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataset_attributes` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `display_type` varchar(25) DEFAULT NULL,
  `display_name` varchar(50) DEFAULT NULL,
  `attribute_type` varchar(8) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `font_size` varchar(8) DEFAULT '0',
  `cell_size` varchar(3) DEFAULT NULL,
  `size_type` varchar(3) DEFAULT NULL,
  `bg_color` varchar(25) DEFAULT NULL,
  `font_color` varchar(25) DEFAULT NULL,
  `wrap` varchar(3) DEFAULT NULL,
  `style` varchar(25) DEFAULT NULL,
  `format_type` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_datasetatt` (`parent_id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dataset_layouts`
--

DROP TABLE IF EXISTS `dataset_layouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataset_layouts` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `parent_value` varchar(50) DEFAULT NULL,
  `layout_type` varchar(25) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `list_order_x` int(4) DEFAULT NULL,
  `list_order_z` int(4) DEFAULT NULL,
  `row_header_id` varchar(36) DEFAULT NULL,
  `hide_column` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_datasetlayout` (`parent_value`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `document_revisions`
--

DROP TABLE IF EXISTS `document_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_revisions` (
  `id` char(36) NOT NULL,
  `change_log` varchar(255) DEFAULT NULL,
  `document_id` char(36) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT NULL,
  `doc_url` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `file_ext` varchar(100) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `revision` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documentrevision_mimetype` (`file_mime_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT 'Sugar',
  `doc_url` varchar(255) DEFAULT NULL,
  `active_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `subcategory_id` varchar(100) DEFAULT NULL,
  `status_id` varchar(100) DEFAULT NULL,
  `document_revision_id` char(36) DEFAULT NULL,
  `related_doc_id` char(36) DEFAULT NULL,
  `related_doc_rev_id` char(36) DEFAULT NULL,
  `is_template` tinyint(1) DEFAULT '0',
  `template_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documentsmod` (`date_modified`),
  KEY `idx_documents_tmst_id` (`team_set_id`),
  KEY `idx_doc_cat` (`category_id`,`subcategory_id`),
  KEY `idx_document_doc_type` (`doc_type`),
  KEY `idx_document_exp_date` (`exp_date`),
  KEY `idx_document_date_entered` (`date_entered`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `documents_accounts`
--

DROP TABLE IF EXISTS `documents_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_accounts` (
  `id` char(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` char(36) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_accounts_account_id` (`account_id`,`document_id`),
  KEY `documents_accounts_document_id` (`document_id`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `documents_bugs`
--

DROP TABLE IF EXISTS `documents_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_bugs` (
  `id` char(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` char(36) DEFAULT NULL,
  `bug_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_bugs_bug_id` (`bug_id`,`document_id`),
  KEY `documents_bugs_document_id` (`document_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `documents_cases`
--

DROP TABLE IF EXISTS `documents_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_cases` (
  `id` char(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_cases_case_id` (`case_id`,`document_id`),
  KEY `documents_cases_document_id` (`document_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `documents_contacts`
--

DROP TABLE IF EXISTS `documents_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_contacts` (
  `id` char(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_contacts_contact_id` (`contact_id`,`document_id`),
  KEY `documents_contacts_document_id` (`document_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `documents_cstm`
--

DROP TABLE IF EXISTS `documents_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_cstm` (
  `id_c` char(36) NOT NULL,
  `contract_type_c` varchar(100) DEFAULT NULL,
  `service_c` varchar(100) DEFAULT NULL,
  `contract_status_c` varchar(100) DEFAULT NULL,
  `contract_value_c` decimal(26,6) DEFAULT '0.000000',
  `currency_id` char(36) DEFAULT NULL,
  `base_rate` decimal(26,6) DEFAULT NULL,
  `contract_version_name_c` varchar(255) DEFAULT NULL,
  `contract_version_name_other_c` varchar(255) DEFAULT NULL,
  `contract_version_date_c` date DEFAULT NULL,
  `license_start_date_c` date DEFAULT NULL,
  `license_end_date_c` date DEFAULT NULL,
  `contract_term_c` varchar(100) DEFAULT NULL,
  `single_agreement_c` varchar(255) DEFAULT NULL,
  `jstor_order_number_reference_c` varchar(255) DEFAULT NULL,
  `order_completed_c` date DEFAULT NULL,
  `csp_ipa_a2_originals_rec_c` date DEFAULT NULL,
  `csp_ipa_a2_rec_c` date DEFAULT NULL,
  `books_ipa_a3_originals_rec_c` date DEFAULT NULL,
  `books_ipa_a3_rec_c` date DEFAULT NULL,
  `passed_books_paperwork_c` date DEFAULT NULL,
  `passed_csp_paperwork_c` date DEFAULT NULL,
  `returned_countersigned_books_c` date DEFAULT NULL,
  `returned_countersigned_csp_c` date DEFAULT NULL,
  `signed_jstor_ipa_on_file_c` tinyint(1) DEFAULT '0',
  `signed_schedule_a2_csp_c` tinyint(1) DEFAULT '0',
  `signed_schedule_a3_books_c` tinyint(1) DEFAULT '0',
  `site_name_provided_c` date DEFAULT NULL,
  `site_name_requested_c` date DEFAULT NULL,
  `csp_installation_notes_c` text,
  `sitename_c` varchar(255) DEFAULT NULL,
  `passed_csp_paperwork_to_lic_c` date DEFAULT NULL,
  `agreement_negotiation_notes_c` text,
  `payment_terms_c` tinyint(1) DEFAULT NULL,
  `term_termination_agree_c` tinyint(1) DEFAULT NULL,
  `added_document_c` tinyint(1) DEFAULT NULL,
  `tc_welcome_to_jstor_c` tinyint(1) DEFAULT NULL,
  `tc_authorized_users_c` tinyint(1) DEFAULT NULL,
  `tc_the_content_c` tinyint(1) DEFAULT NULL,
  `tc_permittted_uses_c` tinyint(1) DEFAULT NULL,
  `tc_prohibited_uses_c` tinyint(1) DEFAULT NULL,
  `tc_linking_c` tinyint(1) DEFAULT NULL,
  `tc_ill_c` tinyint(1) DEFAULT NULL,
  `tc_responsibilities_of_users_c` tinyint(1) DEFAULT NULL,
  `tc_intellectual_property_rig_c` tinyint(1) DEFAULT NULL,
  `tc_responsibilities_of_jstor_c` tinyint(1) DEFAULT NULL,
  `tc_warranty_disclaimers_c` tinyint(1) DEFAULT NULL,
  `tc_archiving_and_long_term_a_c` tinyint(1) DEFAULT NULL,
  `tc_dmca_notifications_c` tinyint(1) DEFAULT NULL,
  `tc_additional_terms_and_cond_c` tinyint(1) DEFAULT NULL,
  `tc_withdrawing_content_c` tinyint(1) DEFAULT NULL,
  `tc_privacy_policy_c` tinyint(1) DEFAULT NULL,
  `tc_force_majeure_c` tinyint(1) DEFAULT NULL,
  `tc_general_c` tinyint(1) DEFAULT NULL,
  `agreement_version_c` varchar(255) DEFAULT NULL,
  `productline_c` text,
  `agreement_name_c` varchar(255) DEFAULT NULL,
  `books_agreement_type_c` varchar(100) DEFAULT NULL,
  `csp_agreement_type_c` varchar(100) DEFAULT NULL,
  `books_agreement_version_c` varchar(255) DEFAULT NULL,
  `archive_agreement_version_c` varchar(255) DEFAULT NULL,
  `csp_agreement_version_c` varchar(255) DEFAULT NULL,
  `portico_agreement_version_c` varchar(255) DEFAULT NULL,
  `most_recent_agreement_ver_c` varchar(255) DEFAULT NULL,
  `most_recent_agreement_oth_c` varchar(255) DEFAULT NULL,
  `most_recent_agreement_date_c` date DEFAULT NULL,
  `archive_license_start_date_c` date DEFAULT NULL,
  `books_license_start_date_c` date DEFAULT NULL,
  `csp_license_start_date_c` date DEFAULT NULL,
  `portico_license_start_date_c` date DEFAULT NULL,
  `archive_license_end_date_c` date DEFAULT NULL,
  `books_license_end_date_c` date DEFAULT NULL,
  `csp_license_end_date_c` date DEFAULT NULL,
  `portico_license_end_date_c` date DEFAULT NULL,
  `books_agreement_term_c` varchar(100) DEFAULT NULL,
  `archive_agreement_term_c` varchar(100) DEFAULT NULL,
  `csp_agreement_term_c` varchar(100) DEFAULT NULL,
  `portico_agreement_term_c` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `documents_opportunities`
--

DROP TABLE IF EXISTS `documents_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_opportunities` (
  `id` char(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_docu_opps_oppo_id` (`opportunity_id`,`document_id`),
  KEY `idx_docu_oppo_docu_id` (`document_id`,`opportunity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `documents_products`
--

DROP TABLE IF EXISTS `documents_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_products` (
  `id` char(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` char(36) DEFAULT NULL,
  `product_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_products_product_id` (`product_id`,`document_id`),
  KEY `documents_products_document_id` (`document_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `documents_quotes`
--

DROP TABLE IF EXISTS `documents_quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_quotes` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `quote_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_quotes_quote_id` (`quote_id`,`document_id`),
  KEY `documents_quotes_document_id` (`document_id`,`quote_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `documents_revenuelineitems`
--

DROP TABLE IF EXISTS `documents_revenuelineitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_revenuelineitems` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `rli_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_revenuelineitems_revenuelineitem_id` (`rli_id`,`document_id`),
  KEY `documents_revenuelineitems_document_id` (`document_id`,`rli_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `eapm`
--

DROP TABLE IF EXISTS `eapm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eapm` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `application` varchar(100) DEFAULT 'webex',
  `api_data` text,
  `consumer_key` varchar(255) DEFAULT NULL,
  `consumer_secret` varchar(255) DEFAULT NULL,
  `oauth_token` varchar(255) DEFAULT NULL,
  `oauth_secret` varchar(255) DEFAULT NULL,
  `validated` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `eapmmod` (`date_modified`),
  KEY `idx_app_active` (`assigned_user_id`,`application`,`validated`),
  KEY `idx_eapm_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `email_addr_bean_rel`
--

DROP TABLE IF EXISTS `email_addr_bean_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_addr_bean_rel` (
  `id` char(36) NOT NULL,
  `email_address_id` char(36) NOT NULL,
  `bean_id` char(36) NOT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `primary_address` tinyint(1) DEFAULT '0',
  `reply_to_address` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_email_address_id` (`email_address_id`),
  KEY `idx_bean_id` (`bean_id`,`bean_module`),
  KEY `isprimary_idx` (`primary_address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `email_addresses`
--

DROP TABLE IF EXISTS `email_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_addresses` (
  `id` char(36) NOT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `email_address_caps` varchar(255) DEFAULT NULL,
  `invalid_email` tinyint(1) DEFAULT '0',
  `opt_out` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ea_caps_opt_out_invalid` (`email_address_caps`,`opt_out`,`invalid_email`),
  KEY `idx_ea_opt_out_invalid` (`email_address`,`opt_out`,`invalid_email`),
  KEY `email_addr_idx` (`email_address`),
  KEY `idx_email_address` (`email_address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `email_cache`
--

DROP TABLE IF EXISTS `email_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_cache` (
  `ie_id` char(36) DEFAULT NULL,
  `mbox` varchar(60) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fromaddr` varchar(100) DEFAULT NULL,
  `toaddr` varchar(255) DEFAULT NULL,
  `senddate` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `mailsize` int(10) unsigned DEFAULT NULL,
  `imap_uid` int(10) unsigned DEFAULT NULL,
  `msgno` int(10) unsigned DEFAULT NULL,
  `recent` tinyint(4) DEFAULT NULL,
  `flagged` tinyint(4) DEFAULT NULL,
  `answered` tinyint(4) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `seen` tinyint(4) DEFAULT NULL,
  `draft` tinyint(4) DEFAULT NULL,
  KEY `idx_ie_id` (`ie_id`),
  KEY `idx_mail_date` (`ie_id`,`mbox`,`senddate`),
  KEY `idx_mail_from` (`ie_id`,`mbox`,`fromaddr`),
  KEY `idx_mail_subj` (`subject`),
  KEY `idx_mail_to` (`toaddr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `email_marketing`
--

DROP TABLE IF EXISTS `email_marketing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_marketing` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `from_addr` varchar(100) DEFAULT NULL,
  `reply_to_name` varchar(100) DEFAULT NULL,
  `reply_to_addr` varchar(100) DEFAULT NULL,
  `inbound_email_id` char(36) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `template_id` char(36) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `all_prospect_lists` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_emmkt_name` (`name`),
  KEY `idx_emmkit_del` (`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `email_marketing_prospect_lists`
--

DROP TABLE IF EXISTS `email_marketing_prospect_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_marketing_prospect_lists` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `email_marketing_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `email_mp_prospects` (`email_marketing_id`,`prospect_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_templates` (
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `published` varchar(3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `subject` varchar(255) DEFAULT NULL,
  `body` text,
  `body_html` text,
  `deleted` tinyint(1) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `base_module` varchar(50) DEFAULT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `from_address` varchar(255) DEFAULT NULL,
  `text_only` tinyint(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `categories_c` text,
  PRIMARY KEY (`id`),
  KEY `idx_email_templates_tmst_id` (`team_set_id`),
  KEY `idx_email_template_name` (`name`),
  KEY `idx_emailtemplate_type` (`type`),
  KEY `idx_emailtemplate_date_modified` (`date_modified`),
  KEY `idx_emailtemplate_date_entered` (`date_entered`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `emailman`
--

DROP TABLE IF EXISTS `emailman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailman` (
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` char(36) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  `list_id` char(36) DEFAULT NULL,
  `send_date_time` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `in_queue` tinyint(1) DEFAULT '0',
  `in_queue_date` datetime DEFAULT NULL,
  `send_attempts` int(11) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `related_id` char(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_eman_list` (`list_id`,`user_id`,`deleted`),
  KEY `idx_eman_campaign_id` (`campaign_id`),
  KEY `idx_eman_relid_reltype_id` (`related_id`,`related_type`,`campaign_id`),
  KEY `idx_emailman_send_date_time` (`send_date_time`),
  KEY `idx_emailman_send_attempts` (`send_attempts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails` (
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_sent` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `message_uid` varchar(64) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `flagged` tinyint(1) DEFAULT NULL,
  `reply_to_status` tinyint(1) DEFAULT NULL,
  `intent` varchar(100) DEFAULT 'pick',
  `mailbox_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blahid` (`id`),
  KEY `idx_emails_tmst_id` (`team_set_id`),
  KEY `idx_email_name` (`name`),
  KEY `idx_message_id` (`message_id`),
  KEY `idx_email_parent_id` (`parent_id`),
  KEY `idx_email_assigned` (`assigned_user_id`,`type`,`status`),
  KEY `idx_email_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `emails_beans`
--

DROP TABLE IF EXISTS `emails_beans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails_beans` (
  `id` char(36) NOT NULL,
  `email_id` char(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `campaign_data` text,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_emails_beans_bean_id` (`bean_id`),
  KEY `idx_emails_beans_email_bean` (`email_id`,`bean_id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `emails_cstm`
--

DROP TABLE IF EXISTS `emails_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails_cstm` (
  `id_c` char(36) NOT NULL,
  `attachments_c` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `emails_email_addr_rel`
--

DROP TABLE IF EXISTS `emails_email_addr_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails_email_addr_rel` (
  `id` char(36) NOT NULL,
  `email_id` char(36) NOT NULL,
  `address_type` varchar(4) DEFAULT NULL,
  `email_address_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_eearl_email_id` (`email_id`,`address_type`),
  KEY `idx_eearl_address_id` (`email_address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `emails_text`
--

DROP TABLE IF EXISTS `emails_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails_text` (
  `email_id` char(36) NOT NULL,
  `from_addr` varchar(255) DEFAULT NULL,
  `reply_to_addr` varchar(255) DEFAULT NULL,
  `to_addrs` text,
  `cc_addrs` text,
  `bcc_addrs` text,
  `description` longtext,
  `description_html` longtext,
  `raw_source` longtext,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`email_id`),
  KEY `blahid` (`email_id`),
  KEY `emails_textfromaddr` (`from_addr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `expressions`
--

DROP TABLE IF EXISTS `expressions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expressions` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `lhs_type` varchar(15) DEFAULT NULL,
  `lhs_field` varchar(50) DEFAULT NULL,
  `lhs_module` varchar(50) DEFAULT NULL,
  `lhs_value` varchar(100) DEFAULT NULL,
  `lhs_group_type` varchar(10) DEFAULT NULL,
  `operator` varchar(15) DEFAULT NULL,
  `rhs_group_type` varchar(10) DEFAULT NULL,
  `rhs_type` varchar(15) DEFAULT NULL,
  `rhs_field` varchar(50) DEFAULT NULL,
  `rhs_module` varchar(50) DEFAULT NULL,
  `rhs_value` varchar(255) DEFAULT NULL,
  `parent_id` char(36) NOT NULL,
  `exp_type` varchar(100) DEFAULT NULL,
  `exp_order` int(4) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_exp_id` char(36) DEFAULT NULL,
  `parent_exp_side` int(8) DEFAULT NULL,
  `ext1` varchar(50) DEFAULT NULL,
  `ext2` varchar(50) DEFAULT NULL,
  `ext3` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_exp` (`parent_id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fields_meta_data`
--

DROP TABLE IF EXISTS `fields_meta_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fields_meta_data` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `vname` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `help` varchar(255) DEFAULT NULL,
  `custom_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `len` int(11) DEFAULT NULL,
  `required` tinyint(1) DEFAULT '0',
  `default_value` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `audited` tinyint(1) DEFAULT '0',
  `massupdate` tinyint(1) DEFAULT '0',
  `duplicate_merge` smallint(6) DEFAULT '0',
  `reportable` tinyint(1) DEFAULT '1',
  `importable` varchar(255) DEFAULT NULL,
  `ext1` varchar(255) DEFAULT NULL,
  `ext2` varchar(255) DEFAULT NULL,
  `ext3` varchar(255) DEFAULT NULL,
  `ext4` text,
  PRIMARY KEY (`id`),
  KEY `idx_meta_id_del` (`id`,`deleted`),
  KEY `idx_meta_cm_del` (`custom_module`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `filters`
--

DROP TABLE IF EXISTS `filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filters` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `filter_definition` longtext,
  `module_name` varchar(100) DEFAULT NULL,
  `filter_template` longtext,
  PRIMARY KEY (`id`),
  KEY `filtersmod` (`date_modified`),
  KEY `idx_filters_tmst_id` (`team_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `folders`
--

DROP TABLE IF EXISTS `folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folders` (
  `id` char(36) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `folder_type` varchar(25) DEFAULT NULL,
  `parent_folder` char(36) DEFAULT NULL,
  `has_child` tinyint(1) DEFAULT '0',
  `is_group` tinyint(1) DEFAULT '0',
  `is_dynamic` tinyint(1) DEFAULT '0',
  `dynamic_query` text,
  `assign_to_id` char(36) DEFAULT NULL,
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  `modified_by` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_parent_folder` (`parent_folder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `folders_rel`
--

DROP TABLE IF EXISTS `folders_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folders_rel` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `polymorphic_module` varchar(25) DEFAULT NULL,
  `polymorphic_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_poly_module_poly_id` (`polymorphic_module`,`polymorphic_id`),
  KEY `idx_fr_id_deleted_poly` (`folder_id`,`deleted`,`polymorphic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `folders_subscriptions`
--

DROP TABLE IF EXISTS `folders_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folders_subscriptions` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `assigned_user_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folder_id_assigned_user_id` (`folder_id`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `forecast_manager_worksheets`
--

DROP TABLE IF EXISTS `forecast_manager_worksheets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forecast_manager_worksheets` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `quota` decimal(26,6) DEFAULT NULL,
  `best_case` decimal(26,6) DEFAULT NULL,
  `best_case_adjusted` decimal(26,6) DEFAULT NULL,
  `likely_case` decimal(26,6) DEFAULT NULL,
  `likely_case_adjusted` decimal(26,6) DEFAULT NULL,
  `worst_case` decimal(26,6) DEFAULT NULL,
  `worst_case_adjusted` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `base_rate` decimal(26,6) DEFAULT NULL,
  `timeperiod_id` char(36) DEFAULT NULL,
  `draft` tinyint(1) DEFAULT '0',
  `user_id` char(36) DEFAULT NULL,
  `opp_count` int(5) DEFAULT NULL,
  `pipeline_opp_count` int(5) DEFAULT '0',
  `pipeline_amount` decimal(26,6) DEFAULT '0.000000',
  `closed_amount` decimal(26,6) DEFAULT '0.000000',
  `manager_saved` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `forecast_manager_worksheetsmod` (`date_modified`),
  KEY `idx_forecast_manager_worksheets_tmst_id` (`team_set_id`),
  KEY `idx_manager_worksheets_user_timestamp_assigned_user` (`assigned_user_id`,`user_id`,`timeperiod_id`,`draft`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `forecast_manager_worksheets_audit`
--

DROP TABLE IF EXISTS `forecast_manager_worksheets_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forecast_manager_worksheets_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_forecast_manager_worksheets_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `forecast_schedule`
--

DROP TABLE IF EXISTS `forecast_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forecast_schedule` (
  `id` char(36) NOT NULL,
  `timeperiod_id` char(36) DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `cascade_hierarchy` tinyint(1) DEFAULT NULL,
  `forecast_start_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `forecast_tree`
--

DROP TABLE IF EXISTS `forecast_tree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forecast_tree` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `hierarchy_type` varchar(25) DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `forecast_tree_idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `forecast_worksheets`
--

DROP TABLE IF EXISTS `forecast_worksheets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forecast_worksheets` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `opportunity_name` varchar(255) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `campaign_name` varchar(255) DEFAULT NULL,
  `product_template_id` char(36) DEFAULT NULL,
  `product_template_name` varchar(255) DEFAULT NULL,
  `category_id` char(36) DEFAULT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `sales_status` varchar(255) DEFAULT NULL,
  `likely_case` decimal(26,6) DEFAULT NULL,
  `best_case` decimal(26,6) DEFAULT NULL,
  `worst_case` decimal(26,6) DEFAULT NULL,
  `base_rate` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `date_closed` date DEFAULT NULL,
  `date_closed_timestamp` int(11) DEFAULT NULL,
  `sales_stage` varchar(255) DEFAULT NULL,
  `probability` double DEFAULT NULL,
  `commit_stage` varchar(50) DEFAULT NULL,
  `draft` int(11) DEFAULT '0',
  `next_step` varchar(100) DEFAULT NULL,
  `lead_source` varchar(50) DEFAULT NULL,
  `product_type` varchar(255) DEFAULT NULL,
  `list_price` decimal(26,6) DEFAULT NULL,
  `cost_price` decimal(26,6) DEFAULT NULL,
  `discount_price` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `quantity` int(5) DEFAULT '1',
  `total_amount` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `forecast_worksheetsmod` (`date_modified`),
  KEY `idx_forecast_worksheets_tmst_id` (`team_set_id`),
  KEY `idx_worksheets_parent` (`parent_id`,`parent_type`),
  KEY `idx_worksheets_assigned_del` (`deleted`,`assigned_user_id`),
  KEY `idx_worksheets_assigned_del_time_draft_parent_type` (`deleted`,`assigned_user_id`,`draft`,`date_closed_timestamp`,`parent_type`),
  KEY `idx_forecastworksheet_commit_stage` (`commit_stage`),
  KEY `idx_forecastworksheet_sales_stage` (`sales_stage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `forecasts`
--

DROP TABLE IF EXISTS `forecasts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forecasts` (
  `id` char(36) NOT NULL,
  `timeperiod_id` char(36) DEFAULT NULL,
  `forecast_type` varchar(100) DEFAULT NULL,
  `opp_count` int(5) DEFAULT NULL,
  `pipeline_opp_count` int(5) DEFAULT '0',
  `pipeline_amount` decimal(26,6) DEFAULT '0.000000',
  `closed_amount` decimal(26,6) DEFAULT '0.000000',
  `opp_weigh_value` int(11) DEFAULT NULL,
  `currency_id` char(36) DEFAULT '-99',
  `base_rate` decimal(26,6) DEFAULT NULL,
  `best_case` decimal(26,6) DEFAULT NULL,
  `likely_case` decimal(26,6) DEFAULT NULL,
  `worst_case` decimal(26,6) DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_forecast_user_tp` (`user_id`,`timeperiod_id`,`date_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fts_queue`
--

DROP TABLE IF EXISTS `fts_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fts_queue` (
  `bean_id` char(36) DEFAULT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `processed` tinyint(1) DEFAULT '0',
  `id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_beans_bean_id` (`bean_module`,`bean_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `holidays`
--

DROP TABLE IF EXISTS `holidays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `holidays` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `holiday_date` date DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT NULL,
  `person_id` char(36) DEFAULT NULL,
  `person_type` varchar(255) DEFAULT NULL,
  `related_module` varchar(255) DEFAULT NULL,
  `related_module_id` char(36) DEFAULT NULL,
  `resource_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_holiday_id_del` (`id`,`deleted`),
  KEY `idx_holiday_id_rel` (`related_module_id`,`related_module`),
  KEY `idx_holiday_holiday_date` (`holiday_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `import_maps`
--

DROP TABLE IF EXISTS `import_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `import_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(254) DEFAULT NULL,
  `source` varchar(36) DEFAULT NULL,
  `enclosure` varchar(1) DEFAULT ' ',
  `delimiter` varchar(1) DEFAULT ',',
  `module` varchar(36) DEFAULT NULL,
  `content` text,
  `default_values` text,
  `has_header` tinyint(1) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_published` varchar(3) DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `idx_owner_module_name` (`assigned_user_id`,`module`,`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `inbound_email`
--

DROP TABLE IF EXISTS `inbound_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbound_email` (
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Active',
  `server_url` varchar(100) DEFAULT NULL,
  `email_user` varchar(100) DEFAULT NULL,
  `email_password` varchar(100) DEFAULT NULL,
  `port` int(5) DEFAULT NULL,
  `service` varchar(50) DEFAULT NULL,
  `mailbox` text,
  `delete_seen` tinyint(1) DEFAULT '0',
  `mailbox_type` varchar(10) DEFAULT NULL,
  `template_id` char(36) DEFAULT NULL,
  `stored_options` text,
  `group_id` char(36) DEFAULT NULL,
  `is_personal` tinyint(1) DEFAULT '0',
  `groupfolder_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_inbound_email_tmst_id` (`team_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `inbound_email_autoreply`
--

DROP TABLE IF EXISTS `inbound_email_autoreply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbound_email_autoreply` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `autoreplied_to` varchar(100) DEFAULT NULL,
  `ie_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ie_autoreplied_to` (`autoreplied_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `inbound_email_cache_ts`
--

DROP TABLE IF EXISTS `inbound_email_cache_ts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbound_email_cache_ts` (
  `id` varchar(255) NOT NULL,
  `ie_timestamp` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `inbound_email_cstm`
--

DROP TABLE IF EXISTS `inbound_email_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbound_email_cstm` (
  `id_c` char(36) NOT NULL,
  `from_team_id_c` char(36) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_access`
--

DROP TABLE IF EXISTS `ith_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_access` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ith_accessmod` (`date_modified`),
  KEY `idx_ith_access_tmst_id` (`team_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_access_audit`
--

DROP TABLE IF EXISTS `ith_access_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_access_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_ith_access_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_access_cstm`
--

DROP TABLE IF EXISTS `ith_access_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_access_cstm` (
  `id_c` char(36) NOT NULL,
  `location_c` varchar(255) DEFAULT NULL,
  `ip_address_c` varchar(255) DEFAULT NULL,
  `ip_range_c` varchar(255) DEFAULT NULL,
  `provisioned_c` tinyint(1) DEFAULT '0',
  `inst_finder_setup_c` tinyint(1) DEFAULT '0',
  `inst_finder_url_c` varchar(255) DEFAULT NULL,
  `logon_script_c` tinyint(1) DEFAULT '0',
  `other_c` varchar(255) DEFAULT NULL,
  `referer_c` varchar(255) DEFAULT NULL,
  `referring_url_c` tinyint(1) DEFAULT '0',
  `remote_access_info__url_c` varchar(255) DEFAULT NULL,
  `remote_access_login_url_c` varchar(255) DEFAULT NULL,
  `remore_access_notes_c` text,
  `remote_user_c` tinyint(1) DEFAULT '0',
  `remote_shibboleth_c` tinyint(1) DEFAULT '0',
  `token_c` varchar(255) DEFAULT NULL,
  `ip_relationship_c` varchar(100) DEFAULT NULL,
  `metasearch_prod_c` text,
  `stat_activation_url_c` varchar(255) DEFAULT NULL,
  `jstor_access_already_c` tinyint(1) DEFAULT '0',
  `trial_url_c` varchar(255) DEFAULT NULL,
  `trial_username_c` varchar(255) DEFAULT NULL,
  `trial_password_c` varchar(255) DEFAULT NULL,
  `literatum_institution_id_c` varchar(255) DEFAULT NULL,
  `literatum_user_id_c` varchar(255) DEFAULT NULL,
  `if_community_c` varchar(255) DEFAULT NULL,
  `if_country_c` varchar(255) DEFAULT NULL,
  `if_institution_finder_url_c` varchar(255) DEFAULT NULL,
  `if_iso_3166_1_alpha_2_c` varchar(255) DEFAULT NULL,
  `if_iso_3166_1_alpha_3_c` varchar(255) DEFAULT NULL,
  `if_literatum_customer_number_c` varchar(255) DEFAULT NULL,
  `if_postal_code_c` varchar(255) DEFAULT NULL,
  `if_promotional_name_english_c` varchar(255) DEFAULT NULL,
  `if_publish_to_jstor_website_c` varchar(255) DEFAULT NULL,
  `if_state_province_c` varchar(255) DEFAULT NULL,
  `service_c` varchar(100) DEFAULT NULL,
  `service_product_c` varchar(100) DEFAULT NULL,
  `access_type_c` varchar(100) DEFAULT NULL,
  `start_ip_c` varchar(255) DEFAULT NULL,
  `end_ip_c` varchar(255) DEFAULT NULL,
  `proxy_c` varchar(255) DEFAULT NULL,
  `start_date_c` date DEFAULT NULL,
  `end_date_c` date DEFAULT NULL,
  `notes_c` text,
  `number_activations_c` int(255) DEFAULT NULL,
  `number_activated_c` int(255) DEFAULT NULL,
  `script_version_c` varchar(255) DEFAULT NULL,
  `shibboleth_idp_c` varchar(255) DEFAULT NULL,
  `username_c` varchar(255) DEFAULT NULL,
  `password_c` varchar(255) DEFAULT NULL,
  `athens_id_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_accountrelationship`
--

DROP TABLE IF EXISTS `ith_accountrelationship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_accountrelationship` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ith_accountrelationshipmod` (`date_modified`),
  KEY `idx_ith_accountrelationship_tmst_id` (`team_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_accountrelationship_accounts_1_c`
--

DROP TABLE IF EXISTS `ith_accountrelationship_accounts_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_accountrelationship_accounts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `ith_accountrelationship_accounts_1ith_accountrelationship_ida` varchar(36) DEFAULT NULL,
  `ith_accountrelationship_accounts_1accounts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ith_accountrelationship_accounts_1_alt` (`ith_accountrelationship_accounts_1ith_accountrelationship_ida`,`ith_accountrelationship_accounts_1accounts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_accountrelationship_audit`
--

DROP TABLE IF EXISTS `ith_accountrelationship_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_accountrelationship_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_ith_accountrelationship_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_accountrelationship_cstm`
--

DROP TABLE IF EXISTS `ith_accountrelationship_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_accountrelationship_cstm` (
  `id_c` char(36) NOT NULL,
  `account_id_c` char(36) DEFAULT NULL,
  `account_id1_c` char(36) DEFAULT NULL,
  `relationship_type_c` varchar(100) DEFAULT NULL,
  `product_line_c` text,
  `consortium_license_agreement_c` text,
  `letter_of_understanding_c` text,
  `acf_savings_rate_c` int(255) DEFAULT NULL,
  `aaf_savings_rate_c` int(255) DEFAULT NULL,
  `books_consort_classification_c` varchar(255) DEFAULT NULL,
  `books_savings_notes_c` text,
  `csp_savings_notes_c` text,
  `csp_publisher_savings_rate_c` int(255) DEFAULT NULL,
  `portico_base_savings_rate_c` int(255) DEFAULT NULL,
  `related_account_type_c` varchar(100) DEFAULT NULL,
  `books_custom_savings_rate_c` int(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_analytics`
--

DROP TABLE IF EXISTS `ith_analytics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_analytics` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ith_analyticsmod` (`date_modified`),
  KEY `idx_ith_analytics_tmst_id` (`team_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_analytics_audit`
--

DROP TABLE IF EXISTS `ith_analytics_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_analytics_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_ith_analytics_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_analytics_cstm`
--

DROP TABLE IF EXISTS `ith_analytics_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_analytics_cstm` (
  `id_c` char(36) NOT NULL,
  `date_delivered_c` date DEFAULT NULL,
  `qa_notes_c` text,
  `qa_verified_c` tinyint(1) DEFAULT NULL,
  `report_feedback_notes_c` varchar(255) DEFAULT NULL,
  `report_type_c` varchar(100) DEFAULT NULL,
  `report_type_other_notes_c` text,
  `user_id_c` char(36) DEFAULT NULL,
  `report_date_range_start_date_c` date DEFAULT NULL,
  `report_date_range_end_date_c` date DEFAULT NULL,
  `desired_completion_date_c` date DEFAULT NULL,
  `number_of_reports_c` int(255) DEFAULT '1',
  `qa_results_c` varchar(100) DEFAULT NULL,
  `status_c` varchar(100) DEFAULT 'New',
  `self_serve_report_c` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_analytics_documents_1_c`
--

DROP TABLE IF EXISTS `ith_analytics_documents_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_analytics_documents_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `ith_analytics_documents_1ith_analytics_ida` varchar(36) DEFAULT NULL,
  `ith_analytics_documents_1documents_idb` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ith_analytics_documents_1_ida1` (`ith_analytics_documents_1ith_analytics_ida`),
  KEY `ith_analytics_documents_1_alt` (`ith_analytics_documents_1documents_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_analytics_notes_1_c`
--

DROP TABLE IF EXISTS `ith_analytics_notes_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_analytics_notes_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `ith_analytics_notes_1ith_analytics_ida` varchar(36) DEFAULT NULL,
  `ith_analytics_notes_1notes_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ith_analytics_notes_1_ida1` (`ith_analytics_notes_1ith_analytics_ida`),
  KEY `ith_analytics_notes_1_alt` (`ith_analytics_notes_1notes_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_analytics_tasks_1_c`
--

DROP TABLE IF EXISTS `ith_analytics_tasks_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_analytics_tasks_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `ith_analytics_tasks_1ith_analytics_ida` varchar(36) DEFAULT NULL,
  `ith_analytics_tasks_1tasks_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ith_analytics_tasks_1_ida1` (`ith_analytics_tasks_1ith_analytics_ida`),
  KEY `ith_analytics_tasks_1_alt` (`ith_analytics_tasks_1tasks_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_entitlements`
--

DROP TABLE IF EXISTS `ith_entitlements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_entitlements` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ith_entitlementsmod` (`date_modified`),
  KEY `idx_ith_entitlements_tmst_id` (`team_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_entitlements_audit`
--

DROP TABLE IF EXISTS `ith_entitlements_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_entitlements_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_ith_entitlements_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_entitlements_cstm`
--

DROP TABLE IF EXISTS `ith_entitlements_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_entitlements_cstm` (
  `id_c` char(36) NOT NULL,
  `code_c` varchar(255) DEFAULT NULL,
  `product_line_c` varchar(100) DEFAULT NULL,
  `service_c` varchar(100) DEFAULT NULL,
  `business_unit_c` int(25) DEFAULT NULL,
  `product_specification_c` int(25) DEFAULT NULL,
  `archive_collection_c` int(25) DEFAULT NULL,
  `sequoia_id_c` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_entitlements_ith_licenses_1_c`
--

DROP TABLE IF EXISTS `ith_entitlements_ith_licenses_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_entitlements_ith_licenses_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `ith_entitlements_ith_licenses_1ith_entitlements_ida` varchar(36) DEFAULT NULL,
  `ith_entitlements_ith_licenses_1ith_licenses_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ith_entitlements_ith_licenses_1_ida1` (`ith_entitlements_ith_licenses_1ith_entitlements_ida`),
  KEY `ith_entitlements_ith_licenses_1_alt` (`ith_entitlements_ith_licenses_1ith_licenses_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_entitlements_ith_platform_licenses_1_c`
--

DROP TABLE IF EXISTS `ith_entitlements_ith_platform_licenses_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_entitlements_ith_platform_licenses_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `ith_entitlements_ith_platform_licenses_1ith_entitlements_ida` varchar(36) DEFAULT NULL,
  `ith_entitlbf05icenses_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ith_entitlements_ith_platform_licenses_1_ida1` (`ith_entitlements_ith_platform_licenses_1ith_entitlements_ida`),
  KEY `ith_entitlements_ith_platform_licenses_1_alt` (`ith_entitlbf05icenses_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_entitlements_ith_salescatalog_1_c`
--

DROP TABLE IF EXISTS `ith_entitlements_ith_salescatalog_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_entitlements_ith_salescatalog_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `ith_entitlements_ith_salescatalog_1ith_entitlements_ida` varchar(36) DEFAULT NULL,
  `ith_entitlements_ith_salescatalog_1ith_salescatalog_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ith_entitlements_ith_salescatalog_1_alt` (`ith_entitlements_ith_salescatalog_1ith_entitlements_ida`,`ith_entitlements_ith_salescatalog_1ith_salescatalog_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_ias_subscriptions`
--

DROP TABLE IF EXISTS `ith_ias_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_ias_subscriptions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ith_ias_subscriptionsmod` (`date_modified`),
  KEY `idx_ith_ias_subscriptions_tmst_id` (`team_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_ias_subscriptions_audit`
--

DROP TABLE IF EXISTS `ith_ias_subscriptions_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_ias_subscriptions_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_ith_ias_subscriptions_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_ias_subscriptions_contacts_1_c`
--

DROP TABLE IF EXISTS `ith_ias_subscriptions_contacts_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_ias_subscriptions_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `ith_ias_subscriptions_contacts_1ith_ias_subscriptions_ida` varchar(36) DEFAULT NULL,
  `ith_ias_subscriptions_contacts_1contacts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ith_ias_subscriptions_contacts_1_ida1` (`ith_ias_subscriptions_contacts_1ith_ias_subscriptions_ida`),
  KEY `ith_ias_subscriptions_contacts_1_alt` (`ith_ias_subscriptions_contacts_1contacts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_ias_subscriptions_cstm`
--

DROP TABLE IF EXISTS `ith_ias_subscriptions_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_ias_subscriptions_cstm` (
  `id_c` char(36) NOT NULL,
  `ias_start_date_c` date DEFAULT NULL,
  `ias_end_date_c` date DEFAULT NULL,
  `last_updated_c` date DEFAULT NULL,
  `account_id_c` char(36) DEFAULT NULL,
  `offer_code_c` varchar(255) DEFAULT NULL,
  `subscriber_id_c` varchar(255) DEFAULT NULL,
  `subscription_year_c` varchar(255) DEFAULT NULL,
  `ias_title_c` varchar(255) DEFAULT NULL,
  `token_c` varchar(255) DEFAULT NULL,
  `token_activated_c` tinyint(1) DEFAULT NULL,
  `token_domain_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_legacy_talisma_fields`
--

DROP TABLE IF EXISTS `ith_legacy_talisma_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_legacy_talisma_fields` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ith_legacy_talisma_fieldsmod` (`date_modified`),
  KEY `idx_ith_legacy_talisma_fields_tmst_id` (`team_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_legacy_talisma_fields_audit`
--

DROP TABLE IF EXISTS `ith_legacy_talisma_fields_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_legacy_talisma_fields_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_ith_legacy_talisma_fields_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_legacy_talisma_fields_cstm`
--

DROP TABLE IF EXISTS `ith_legacy_talisma_fields_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_legacy_talisma_fields_cstm` (
  `id_c` char(36) NOT NULL,
  `books_at_jstor_c` varchar(255) DEFAULT NULL,
  `global_plants_initiative_par_c` varchar(255) DEFAULT NULL,
  `jstor_archive_c` varchar(255) DEFAULT NULL,
  `jstor_csp_c` varchar(255) DEFAULT NULL,
  `portico_archive_c` varchar(255) DEFAULT NULL,
  `books_at_jstor_date_of_1st_p_c` date DEFAULT NULL,
  `csp_date_of_1st_participatio_c` date DEFAULT NULL,
  `jstor_archive_date_of_1st_pa_c` date DEFAULT NULL,
  `jstor_archive_withdrawn_date_c` date DEFAULT NULL,
  `fpai_annual_revenue_c` varchar(255) DEFAULT NULL,
  `fpai_degree_programs_offered_c` varchar(255) DEFAULT NULL,
  `fpai_fte_c` varchar(255) DEFAULT NULL,
  `fpai_number_of_physical_camp_c` varchar(255) DEFAULT NULL,
  `gov_np_classification_outcom_c` varchar(100) DEFAULT NULL,
  `gov_np_library_budget_c` varchar(100) DEFAULT NULL,
  `gov_np_membership_organizati_c` varchar(100) DEFAULT 'Memb Org 1',
  `gov_np_operating_budget_c` varchar(100) DEFAULT NULL,
  `gov_np_periodicals_c` varchar(100) DEFAULT NULL,
  `gov_np_previous_jstor_classi_c` varchar(100) DEFAULT NULL,
  `gov_np_reclassify_c` varchar(100) DEFAULT 'Reclassify 1',
  `gov_np_researchers_c` varchar(100) DEFAULT NULL,
  `gov_np_total_staff_c` varchar(100) DEFAULT NULL,
  `mus_classification_outcome_r_c` varchar(100) DEFAULT NULL,
  `mus_curatorial_library_staff_c` varchar(100) DEFAULT NULL,
  `mus_institute_operating_budg_c` varchar(100) DEFAULT NULL,
  `mus_library_materials_budget_c` varchar(100) DEFAULT NULL,
  `mus_periodicals_c` varchar(100) DEFAULT NULL,
  `pl_classification_outcome_ra_c` varchar(100) DEFAULT NULL,
  `pl_library_materials_budget_c` varchar(100) DEFAULT NULL,
  `pl_periodicals_c` varchar(100) DEFAULT NULL,
  `pl_population_served_c` varchar(100) DEFAULT NULL,
  `fte_c` int(255) DEFAULT NULL,
  `number_of_faculty_staff_c` int(255) DEFAULT NULL,
  `number_of_graduate_students_c` int(255) DEFAULT NULL,
  `serials_c` int(255) DEFAULT NULL,
  `true_community_designation_c` varchar(100) DEFAULT NULL,
  `volumes_int_c` int(255) DEFAULT NULL,
  `college_enrolling_rate_c` int(255) DEFAULT NULL,
  `district_county_c` varchar(100) DEFAULT NULL,
  `grade_level_c` varchar(100) DEFAULT NULL,
  `remote_access_c` varchar(100) DEFAULT NULL,
  `school_type_description_c` varchar(255) DEFAULT NULL,
  `ss_npts_c` varchar(100) DEFAULT NULL,
  `participation_quarter_c` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_licenses`
--

DROP TABLE IF EXISTS `ith_licenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_licenses` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ith_licensesmod` (`date_modified`),
  KEY `idx_ith_licenses_tmst_id` (`team_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_licenses_audit`
--

DROP TABLE IF EXISTS `ith_licenses_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_licenses_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_ith_licenses_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_licenses_cstm`
--

DROP TABLE IF EXISTS `ith_licenses_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_licenses_cstm` (
  `id_c` char(36) NOT NULL,
  `aaf_c` decimal(26,6) DEFAULT '0.000000',
  `acf_amortization_c` varchar(100) DEFAULT NULL,
  `acf_c` decimal(26,6) DEFAULT '0.000000',
  `base_rate` decimal(26,8) DEFAULT NULL,
  `collection_agreement_date_c` date DEFAULT NULL,
  `collection_agreement_version_c` varchar(255) DEFAULT NULL,
  `collection_notes_c` text,
  `currency_id` char(36) DEFAULT NULL,
  `installation_date_c` date DEFAULT NULL,
  `licensee_c` varchar(100) DEFAULT NULL,
  `participation_status_c` varchar(100) DEFAULT NULL,
  `quote_id_c` char(36) DEFAULT NULL,
  `withdrawn_date_c` date DEFAULT NULL,
  `account_c` varchar(255) DEFAULT NULL,
  `account_id_c` char(36) DEFAULT NULL,
  `service_c` varchar(100) DEFAULT NULL,
  `product_line_c` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_licenses_ith_entitlements_1_c`
--

DROP TABLE IF EXISTS `ith_licenses_ith_entitlements_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_licenses_ith_entitlements_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `ith_licenses_ith_entitlements_1ith_licenses_ida` varchar(36) DEFAULT NULL,
  `ith_licenses_ith_entitlements_1ith_entitlements_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ith_licenses_ith_entitlements_1_ida1` (`ith_licenses_ith_entitlements_1ith_licenses_ida`),
  KEY `ith_licenses_ith_entitlements_1_idb2` (`ith_licenses_ith_entitlements_1ith_entitlements_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_pca_claims`
--

DROP TABLE IF EXISTS `ith_pca_claims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_pca_claims` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ith_pca_claimsmod` (`date_modified`),
  KEY `idx_ith_pca_claims_tmst_id` (`team_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_pca_claims_audit`
--

DROP TABLE IF EXISTS `ith_pca_claims_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_pca_claims_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_ith_pca_claims_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_pca_claims_cstm`
--

DROP TABLE IF EXISTS `ith_pca_claims_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_pca_claims_cstm` (
  `id_c` char(36) NOT NULL,
  `claim_id_c` varchar(255) DEFAULT NULL,
  `content_set_id_c` varchar(255) DEFAULT NULL,
  `date_fulfilled_c` date DEFAULT NULL,
  `interaction_id_c` varchar(255) DEFAULT NULL,
  `account_id_c` char(36) DEFAULT NULL,
  `title_c` varchar(255) DEFAULT NULL,
  `volume_issue_start_c` varchar(255) DEFAULT NULL,
  `volume_issue_end_c` varchar(255) DEFAULT NULL,
  `collection_ent_c` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_platform_licenses`
--

DROP TABLE IF EXISTS `ith_platform_licenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_platform_licenses` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ith_platform_licensesmod` (`date_modified`),
  KEY `idx_ith_platform_licenses_tmst_id` (`team_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_platform_licenses_audit`
--

DROP TABLE IF EXISTS `ith_platform_licenses_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_platform_licenses_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_ith_platform_licenses_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_platform_licenses_cstm`
--

DROP TABLE IF EXISTS `ith_platform_licenses_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_platform_licenses_cstm` (
  `id_c` char(36) NOT NULL,
  `sequoia_id_c` varchar(36) DEFAULT NULL,
  `start_date_c` date DEFAULT NULL,
  `end_date_c` date DEFAULT NULL,
  `ignore_start_c` tinyint(1) DEFAULT NULL,
  `ignore_end_c` tinyint(1) DEFAULT NULL,
  `iac_license_type_c` varchar(100) DEFAULT 'standard',
  `iac_license_status_c` varchar(100) DEFAULT 'ok',
  `service_product_c` varchar(100) DEFAULT '-blank-',
  `offer_name_c` varchar(60) DEFAULT NULL,
  `offer_code_c` varchar(60) DEFAULT NULL,
  `offer_sequoia_id_c` varchar(36) DEFAULT NULL,
  `service_c` varchar(100) DEFAULT NULL,
  `participation_status_c` varchar(100) DEFAULT NULL,
  `withdrawn_date_c` date DEFAULT NULL,
  `installation_date_c` date DEFAULT NULL,
  `quote_id_c` char(36) DEFAULT NULL,
  `licensee_c` varchar(100) DEFAULT NULL,
  `account_id_c` char(36) DEFAULT NULL,
  `entitlement_sequoia_id_c` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_roles`
--

DROP TABLE IF EXISTS `ith_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_roles` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ith_rolesmod` (`date_modified`),
  KEY `idx_ith_roles_tmst_id` (`team_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_roles_accounts_1_c`
--

DROP TABLE IF EXISTS `ith_roles_accounts_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_roles_accounts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `ith_roles_accounts_1ith_roles_ida` varchar(36) DEFAULT NULL,
  `ith_roles_accounts_1accounts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ith_roles_accounts_1_alt` (`ith_roles_accounts_1ith_roles_ida`,`ith_roles_accounts_1accounts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_roles_audit`
--

DROP TABLE IF EXISTS `ith_roles_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_roles_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_ith_roles_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_roles_cstm`
--

DROP TABLE IF EXISTS `ith_roles_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_roles_cstm` (
  `id_c` char(36) NOT NULL,
  `account_id_c` char(36) DEFAULT NULL,
  `role_category_c` varchar(100) DEFAULT NULL,
  `contact_role_c` varchar(100) DEFAULT NULL,
  `role_status_c` varchar(100) DEFAULT 'Active',
  `degree_influence_c` varchar(100) DEFAULT NULL,
  `product_line_c` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_c`),
  KEY `idx_product_role` (`id_c`,`product_line_c`,`contact_role_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_salescatalog`
--

DROP TABLE IF EXISTS `ith_salescatalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_salescatalog` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ith_salescatalogmod` (`date_modified`),
  KEY `idx_ith_salescatalog_tmst_id` (`team_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_salescatalog_audit`
--

DROP TABLE IF EXISTS `ith_salescatalog_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_salescatalog_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_ith_salescatalog_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_salescatalog_ith_productentitlements_1_c`
--

DROP TABLE IF EXISTS `ith_salescatalog_ith_productentitlements_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_salescatalog_ith_productentitlements_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `ith_salescatalog_ith_productentitlements_1ith_salescatalog_ida` varchar(36) DEFAULT NULL,
  `ith_salescb9cdlements_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ith_salescatalog_ith_productentitlements_1_ida1` (`ith_salescatalog_ith_productentitlements_1ith_salescatalog_ida`),
  KEY `ith_salescatalog_ith_productentitlements_1_alt` (`ith_salescb9cdlements_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_serviceproducts`
--

DROP TABLE IF EXISTS `ith_serviceproducts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_serviceproducts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ith_serviceproductsmod` (`date_modified`),
  KEY `idx_ith_serviceproducts_tmst_id` (`team_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_serviceproducts_audit`
--

DROP TABLE IF EXISTS `ith_serviceproducts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_serviceproducts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_ith_serviceproducts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_serviceproducts_cstm`
--

DROP TABLE IF EXISTS `ith_serviceproducts_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_serviceproducts_cstm` (
  `id_c` char(36) NOT NULL,
  `service_product_c` varchar(100) DEFAULT NULL,
  `particip_status_c` varchar(100) DEFAULT NULL,
  `install_date_c` date DEFAULT NULL,
  `first_particip_date_c` date DEFAULT NULL,
  `withdrawn_date_c` date DEFAULT NULL,
  `billing_cycle_c` varchar(100) DEFAULT NULL,
  `acf_amortz_c` varchar(100) DEFAULT NULL,
  `demand_driven_access_c` varchar(100) DEFAULT NULL,
  `sub_agent_c` varchar(100) DEFAULT NULL,
  `sub_stat_list_updated_c` date DEFAULT NULL,
  `tier_level_c` varchar(100) DEFAULT NULL,
  `notes_c` text,
  `single_invoice_c` tinyint(1) DEFAULT '0',
  `single_invoice_points_c` varchar(100) DEFAULT NULL,
  `consort_pur_func_c` varchar(100) DEFAULT NULL,
  `consort_sav_rate_c` int(255) DEFAULT NULL,
  `consort_sav_notes_c` text,
  `collect_points_c` int(255) DEFAULT NULL,
  `collect_renewed_c` varchar(100) DEFAULT NULL,
  `pct_collect_renew_prev_yr_c` int(255) DEFAULT NULL,
  `abililty_use_month_ledg_invp_c` varchar(100) DEFAULT NULL,
  `adopted_host_forums_c` varchar(100) DEFAULT NULL,
  `arrange_host_forums_pts_c` varchar(100) DEFAULT NULL,
  `class_meth_mem_pts_c` varchar(100) DEFAULT NULL,
  `collect_renew_pts_c` varchar(100) DEFAULT NULL,
  `license_c` varchar(100) DEFAULT NULL,
  `license_pts_c` varchar(100) DEFAULT NULL,
  `limit_indv_new_collect_pts_c` varchar(100) DEFAULT NULL,
  `limit_license_new_cont_pts_c` varchar(100) DEFAULT NULL,
  `mktg_services_c` varchar(100) DEFAULT NULL,
  `mktg_services_pts_c` varchar(100) DEFAULT NULL,
  `prev_yr_total_acf_c` int(255) DEFAULT NULL,
  `prev_yr_total_acf_pts_c` int(255) DEFAULT NULL,
  `tender_req_pts_c` varchar(100) DEFAULT NULL,
  `type_license_c` varchar(100) DEFAULT NULL,
  `added_contact_to_list_c` date DEFAULT NULL,
  `added_to_stat_group_c` tinyint(1) DEFAULT '0',
  `almni_access_last_fup_c` date DEFAULT NULL,
  `almni_access_status_c` varchar(100) DEFAULT NULL,
  `auth_record_created_c` tinyint(1) DEFAULT '0',
  `date_install_completed_c` date DEFAULT NULL,
  `install_complete_c` tinyint(1) DEFAULT '0',
  `user_id_c` char(36) DEFAULT NULL,
  `install_notes_c` text,
  `network_verification_status_c` varchar(100) DEFAULT NULL,
  `ready_to_install_c` tinyint(1) DEFAULT '0',
  `reason_for_delay_c` varchar(100) DEFAULT NULL,
  `welcome_msg_sent_c` tinyint(1) DEFAULT '0',
  `welcome_msg2_sent_c` tinyint(1) DEFAULT '0',
  `has_dda_license_c` tinyint(1) DEFAULT '0',
  `contact_id_c` char(36) DEFAULT NULL,
  `license_in_literatun_c` tinyint(1) DEFAULT '0',
  `oclc_code_c` varchar(255) DEFAULT NULL,
  `oclc_contact_rec_delv_c` date DEFAULT NULL,
  `oclc_contact_rec_set_c` tinyint(1) DEFAULT '0',
  `oclc_marc_recs_delv_c` date DEFAULT NULL,
  `oclc_marc_recs_stat_c` varchar(100) DEFAULT NULL,
  `outreach_fup_msg_sent_c` tinyint(1) DEFAULT '0',
  `wlcome_msg_sent_2_c` tinyint(1) DEFAULT '0',
  `ybp_marc_recs_opt_in_c` tinyint(1) DEFAULT '0',
  `plant_svc_herb_code_c` varchar(255) DEFAULT NULL,
  `trial_start_date_c` date DEFAULT NULL,
  `trial_end_date_c` date DEFAULT NULL,
  `trial_status_c` varchar(100) DEFAULT NULL,
  `trial_notes_c` text,
  `ability_use_month_ledg_inv_c` tinyint(1) DEFAULT '0',
  `arrange_host_forums_c` tinyint(1) DEFAULT '0',
  `class_meth_intl_only_c` tinyint(1) DEFAULT '0',
  `limit_indv_new_collect_c` tinyint(1) DEFAULT '0',
  `limit_license_new_content_c` tinyint(1) DEFAULT '0',
  `tender_req_c` tinyint(1) DEFAULT '0',
  `date_access_requested_c` date DEFAULT NULL,
  `date_agreement_received_eoro_c` date DEFAULT NULL,
  `date_for_invoice_c` date DEFAULT NULL,
  `originals_received_two_copy_c` tinyint(1) DEFAULT '0',
  `revisions_corrections_notes_c` varchar(255) DEFAULT NULL,
  `urgent_invoice_needed_c` tinyint(1) DEFAULT '0',
  `ips_on_license_c` tinyint(1) DEFAULT '0',
  `participant_year_c` varchar(255) DEFAULT NULL,
  `training_message_sent_c` tinyint(1) DEFAULT '0',
  `welcome_packet_sent_c` tinyint(1) DEFAULT '0',
  `apply_for_international_tmrk_c` tinyint(1) DEFAULT '0',
  `approved_for_installation_c` tinyint(1) DEFAULT '0',
  `attach_document_to_account_c` date DEFAULT NULL,
  `installation_library_rel_app_c` date DEFAULT NULL,
  `installation_licensing_appro_c` date DEFAULT NULL,
  `installation_received_date_c` date DEFAULT NULL,
  `installation_user_services_c` date DEFAULT NULL,
  `licensing_stage_c` varchar(100) DEFAULT '0',
  `user_id1_c` char(36) DEFAULT NULL,
  `agent_relationship_c` varchar(100) DEFAULT '0',
  `agreement_version_c` varchar(100) DEFAULT '0',
  `approved_for_licensing_c` tinyint(1) DEFAULT '0',
  `consortia_group_savings_c` varchar(255) DEFAULT NULL,
  `consortia_agent_grant_recip_c` varchar(255) DEFAULT NULL,
  `copy_to_contacts_c` varchar(255) DEFAULT NULL,
  `check_agree_for_part_fees_c` tinyint(1) DEFAULT '0',
  `create_full_agreement_file_c` tinyint(1) DEFAULT '0',
  `create_invoice_request_c` date DEFAULT NULL,
  `email_pdf_of_invoice_c` tinyint(1) DEFAULT '0',
  `ip_information_included_c` tinyint(1) DEFAULT '0',
  `license_processing_notes_c` text,
  `print_and_copy_invoice_for_f_c` tinyint(1) DEFAULT '0',
  `return_license_to_participan_c` varchar(255) DEFAULT NULL,
  `update_collections_tab_c` date DEFAULT NULL,
  `update_weblist_c` tinyint(1) DEFAULT '0',
  `update_participation_databas_c` tinyint(1) DEFAULT '0',
  `ala_attached_to_account_c` date DEFAULT NULL,
  `approved_for_portico_install_c` tinyint(1) DEFAULT '0',
  `aluka_installation_needed_c` tinyint(1) DEFAULT '0',
  `peri_installation_c` tinyint(1) DEFAULT '0',
  `peri_work_notes_c` text,
  `already_has_jstor_access_c` tinyint(1) DEFAULT '0',
  `trial_url_c` varchar(255) DEFAULT NULL,
  `trial_username_c` varchar(100) DEFAULT NULL,
  `trial_password_c` varchar(100) DEFAULT NULL,
  `anomaly_c` tinyint(1) DEFAULT '0',
  `ill_amendment_c` tinyint(1) DEFAULT '0',
  `peri_registrant_c` tinyint(1) DEFAULT '0',
  `group_license_savings_plan_c` tinyint(1) DEFAULT '0',
  `consortium_classification_c` varchar(255) DEFAULT NULL,
  `agreement_sign_up_year_c` varchar(100) DEFAULT NULL,
  `system_c` varchar(255) DEFAULT NULL,
  `service_c` varchar(100) DEFAULT NULL,
  `quote_id_c` char(36) DEFAULT NULL,
  `consort_lic_ver_c` varchar(255) DEFAULT NULL,
  `ypb_member_c` date DEFAULT NULL,
  `welcome_message_sent_date_c` date DEFAULT NULL,
  `outreach_fup_msg_sent_date_c` date DEFAULT NULL,
  `iso_3166_1_alpha_2_c` varchar(10) DEFAULT NULL,
  `iso_3166_1_alpha_3_c` varchar(10) DEFAULT NULL,
  `iso_2_blank_c` tinyint(1) DEFAULT NULL,
  `iso_3_blank_c` tinyint(1) DEFAULT NULL,
  `publisher_products_programs_c` text,
  `vld_eligible_spendings_2012_c` varchar(100) DEFAULT NULL,
  `vld_eligible_spendings_2013_c` varchar(100) DEFAULT NULL,
  `aluka_trial_status_c` varchar(100) DEFAULT NULL,
  `aluka_trial_start_date_c` date DEFAULT NULL,
  `aluka_trial_end_date_c` date DEFAULT NULL,
  `pledge_account_c` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_serviceproducts_ith_licenses_1_c`
--

DROP TABLE IF EXISTS `ith_serviceproducts_ith_licenses_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_serviceproducts_ith_licenses_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `ith_serviceproducts_ith_licenses_1ith_serviceproducts_ida` varchar(36) DEFAULT NULL,
  `ith_serviceproducts_ith_licenses_1ith_licenses_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ith_serviceproducts_ith_licenses_1_ida1` (`ith_serviceproducts_ith_licenses_1ith_serviceproducts_ida`),
  KEY `ith_serviceproducts_ith_licenses_1_alt` (`ith_serviceproducts_ith_licenses_1ith_licenses_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_services`
--

DROP TABLE IF EXISTS `ith_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_services` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ith_servicesmod` (`date_modified`),
  KEY `idx_ith_services_tmst_id` (`team_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_services_audit`
--

DROP TABLE IF EXISTS `ith_services_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_services_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_ith_services_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ith_services_cstm`
--

DROP TABLE IF EXISTS `ith_services_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ith_services_cstm` (
  `id_c` char(36) NOT NULL,
  `billing_cycle_c` varchar(100) DEFAULT NULL,
  `classification_c` varchar(100) DEFAULT NULL,
  `community_c` varchar(100) DEFAULT NULL,
  `jisc_banding_c` varchar(100) DEFAULT NULL,
  `tier_level_c` varchar(100) DEFAULT NULL,
  `saving_archive_founder_c` varchar(100) DEFAULT NULL,
  `saving_consortial_c` varchar(100) DEFAULT NULL,
  `est_library_mat_exp_c` varchar(255) DEFAULT NULL,
  `rpt_library_mat_exp_c` varchar(255) DEFAULT NULL,
  `template_path_c` varchar(255) DEFAULT NULL,
  `start_date_c` date DEFAULT NULL,
  `end_date_c` date DEFAULT NULL,
  `release_date_c` date DEFAULT NULL,
  `first_volumne_online_c` date DEFAULT NULL,
  `first_issue_online_c` date DEFAULT NULL,
  `last_issue_online_c` date DEFAULT NULL,
  `last_volume_online_c` date DEFAULT NULL,
  `anomaly_c` tinyint(1) DEFAULT '0',
  `ill_amendment_c` tinyint(1) DEFAULT '0',
  `peri_registrant_c` tinyint(1) DEFAULT '0',
  `group_lin_sav_plan_c` tinyint(1) DEFAULT '0',
  `type_license_c` varchar(100) DEFAULT NULL,
  `consort_lic_version_c` varchar(100) DEFAULT NULL,
  `consortia_c` varchar(255) DEFAULT NULL,
  `system_c` varchar(255) DEFAULT NULL,
  `pub_to_website_c` tinyint(1) DEFAULT '0',
  `pub_to_website_status_c` varchar(100) DEFAULT NULL,
  `cats_pub_id_c` varchar(255) DEFAULT NULL,
  `cats_pub_name_c` varchar(255) DEFAULT NULL,
  `kloptek_id_c` varchar(255) DEFAULT NULL,
  `serenic_id_c` varchar(255) DEFAULT NULL,
  `web_pub_c` varchar(255) DEFAULT NULL,
  `web_group_c` varchar(255) DEFAULT NULL,
  `service_c` varchar(100) DEFAULT NULL,
  `agreement_sign_up_year_c` varchar(255) DEFAULT NULL,
  `fiscal_year_reported_for_lme_c` varchar(255) DEFAULT NULL,
  `account_id_c` char(36) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `job_queue`
--

DROP TABLE IF EXISTS `job_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_queue` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `scheduler_id` char(36) DEFAULT NULL,
  `execute_time` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `resolution` varchar(20) DEFAULT NULL,
  `message` text,
  `target` varchar(255) DEFAULT NULL,
  `data` longtext,
  `requeue` tinyint(1) DEFAULT '0',
  `retry_count` tinyint(4) DEFAULT NULL,
  `failure_count` tinyint(4) DEFAULT NULL,
  `job_delay` int(11) DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  `job_group` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_status_scheduler` (`status`,`scheduler_id`),
  KEY `idx_status_time` (`status`,`execute_time`,`date_entered`),
  KEY `idx_status_entered` (`status`,`date_entered`),
  KEY `idx_status_modified` (`status`,`date_modified`),
  KEY `idx_group_status` (`job_group`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `job_queue_bak`
--

DROP TABLE IF EXISTS `job_queue_bak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_queue_bak` (
  `assigned_user_id` char(36) CHARACTER SET utf8 DEFAULT NULL,
  `id` char(36) CHARACTER SET utf8 NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `scheduler_id` char(36) CHARACTER SET utf8 DEFAULT NULL,
  `execute_time` datetime DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `resolution` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `message` text CHARACTER SET utf8,
  `target` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `data` longtext CHARACTER SET utf8,
  `requeue` tinyint(1) DEFAULT '0',
  `retry_count` tinyint(4) DEFAULT NULL,
  `failure_count` tinyint(4) DEFAULT NULL,
  `job_delay` int(11) DEFAULT NULL,
  `client` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  `job_group` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kbcontents`
--

DROP TABLE IF EXISTS `kbcontents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kbcontents` (
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `kbdocument_body` longtext,
  `document_revision_id` char(36) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `modified_user_id` char(36) DEFAULT NULL,
  `kb_index` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fts_unique_idx` (`kb_index`),
  KEY `idx_kbcontents_tmst_id` (`team_set_id`),
  FULLTEXT KEY `kbdocument_body` (`kbdocument_body`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kbcontents_audit`
--

DROP TABLE IF EXISTS `kbcontents_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kbcontents_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_kbcontents_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kbdocument_revisions`
--

DROP TABLE IF EXISTS `kbdocument_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kbdocument_revisions` (
  `id` char(36) NOT NULL,
  `change_log` varchar(255) DEFAULT NULL,
  `kbdocument_id` char(36) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `file_ext` varchar(100) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `revision` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `latest` tinyint(1) DEFAULT '0',
  `kbcontent_id` char(36) DEFAULT NULL,
  `document_revision_id` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_del_latest_kbcontent_id` (`deleted`,`latest`,`kbcontent_id`),
  KEY `idx_cont_id_doc_id` (`kbcontent_id`,`kbdocument_id`),
  KEY `idx_name_rev_id_del` (`document_revision_id`,`kbdocument_id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kbdocuments`
--

DROP TABLE IF EXISTS `kbdocuments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kbdocuments` (
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `kbdocument_name` varchar(255) DEFAULT NULL,
  `active_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `status_id` varchar(100) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `is_external_article` tinyint(1) DEFAULT '0',
  `description` text,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `kbdocument_revision_id` char(36) DEFAULT NULL,
  `kbdocument_revision_number` varchar(100) DEFAULT NULL,
  `mail_merge_document` varchar(3) DEFAULT 'off',
  `related_doc_id` char(36) DEFAULT NULL,
  `related_doc_rev_id` char(36) DEFAULT NULL,
  `is_template` tinyint(1) DEFAULT '0',
  `template_type` varchar(100) DEFAULT NULL,
  `kbdoc_approver_id` char(36) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_kbdocuments_tmst_id` (`team_set_id`),
  KEY `idx_kbdocument_date_entered` (`date_entered`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kbdocuments_kbtags`
--

DROP TABLE IF EXISTS `kbdocuments_kbtags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kbdocuments_kbtags` (
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `kbdocument_id` char(36) DEFAULT NULL,
  `kbtag_id` char(36) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `revision` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_kbdocuments_kbtags_tmst_id` (`team_set_id`),
  KEY `idx_doc_id_tag_id` (`kbdocument_id`,`kbtag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kbdocuments_views_ratings`
--

DROP TABLE IF EXISTS `kbdocuments_views_ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kbdocuments_views_ratings` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `kbdocument_id` varchar(36) DEFAULT NULL,
  `views_number` int(11) DEFAULT '0',
  `ratings_number` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_kbvr_kbdoc` (`kbdocument_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kbtags`
--

DROP TABLE IF EXISTS `kbtags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kbtags` (
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `parent_tag_id` char(36) DEFAULT NULL,
  `tag_name` varchar(255) DEFAULT NULL,
  `root_tag` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `revision` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_kbtags_tmst_id` (`team_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `leads`
--

DROP TABLE IF EXISTS `leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `facebook` varchar(100) DEFAULT NULL,
  `twitter` varchar(100) DEFAULT NULL,
  `googleplus` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `converted` tinyint(1) DEFAULT '0',
  `refered_by` varchar(100) DEFAULT NULL,
  `lead_source` varchar(100) DEFAULT NULL,
  `lead_source_description` text,
  `status` varchar(100) DEFAULT NULL,
  `status_description` text,
  `reports_to_id` char(36) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_description` text,
  `contact_id` char(36) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `opportunity_name` varchar(255) DEFAULT NULL,
  `opportunity_amount` varchar(50) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `portal_name` varchar(255) DEFAULT NULL,
  `portal_app` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `preferred_language` varchar(255) DEFAULT NULL,
  `mkto_sync` tinyint(1) DEFAULT '0',
  `mkto_id` int(11) DEFAULT NULL,
  `mkto_lead_score` int(11) DEFAULT NULL,
  `dnb_principal_id` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `leadsmod` (`date_modified`),
  KEY `idx_leads_tmst_id` (`team_set_id`),
  KEY `idx_lead_acct_name_first` (`account_name`,`deleted`),
  KEY `idx_lead_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_lead_del_stat` (`last_name`,`status`,`deleted`,`first_name`),
  KEY `idx_lead_opp_del` (`opportunity_id`,`deleted`),
  KEY `idx_leads_acct_del` (`account_id`,`deleted`),
  KEY `idx_del_user` (`deleted`,`assigned_user_id`),
  KEY `idx_lead_assigned` (`assigned_user_id`),
  KEY `idx_lead_contact` (`contact_id`),
  KEY `idx_reports_to` (`reports_to_id`),
  KEY `idx_lead_phone_work` (`phone_work`),
  KEY `idx_leads_id_del` (`id`,`deleted`),
  KEY `idx_lead_date_entered` (`date_entered`),
  KEY `idx_lead_mkto_id` (`mkto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `leads_audit`
--

DROP TABLE IF EXISTS `leads_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_leads_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `leads_cstm`
--

DROP TABLE IF EXISTS `leads_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads_cstm` (
  `id_c` char(36) NOT NULL,
  `jstor_archive_lead_score_c` int(10) DEFAULT NULL,
  `csp_lead_score_c` int(10) DEFAULT NULL,
  `books_at_jstor_lead_score_c` int(10) DEFAULT NULL,
  `jpass_lead_score_c` int(10) DEFAULT NULL,
  `alumni_access_lead_score_c` int(10) DEFAULT NULL,
  `primary_source_lead_score_c` int(10) DEFAULT NULL,
  `global_plants_lead_score_c` int(10) DEFAULT NULL,
  `sugar_id_c` int(50) DEFAULT NULL,
  `system_id_c` varchar(25) DEFAULT NULL,
  `system_id_int_c` int(25) DEFAULT NULL,
  `acton_lead_score_c` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_c`),
  KEY `lea_sysid` (`system_id_c`),
  KEY `lea_sysidint` (`system_id_int_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `linked_documents`
--

DROP TABLE IF EXISTS `linked_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `linked_documents` (
  `id` varchar(36) NOT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `parent_type` varchar(25) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_parent_document` (`parent_type`,`parent_id`,`document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mailbox_lookup`
--

DROP TABLE IF EXISTS `mailbox_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mailbox_lookup` (
  `email_address_id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `bean_id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bean_module` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lookup` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `full_name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`email_address_id`),
  KEY `email_address_idx` (`email_address_id`,`email_address`),
  KEY `bean_idx` (`bean_id`,`bean_module`),
  FULLTEXT KEY `lookup_idx` (`lookup`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `manufacturers`
--

DROP TABLE IF EXISTS `manufacturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manufacturers` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_order` int(4) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_manufacturers` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `meetings`
--

DROP TABLE IF EXISTS `meetings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `join_url` varchar(200) DEFAULT NULL,
  `host_url` varchar(400) DEFAULT NULL,
  `displayed_url` varchar(400) DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `external_id` varchar(50) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` varchar(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `type` varchar(255) DEFAULT 'Sugar',
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT '-1',
  `email_reminder_time` int(11) DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `sequence` int(11) DEFAULT '0',
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meetingsmod` (`date_modified`),
  KEY `idx_meetings_tmst_id` (`team_set_id`),
  KEY `idx_mtg_name` (`name`),
  KEY `idx_meet_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_meet_stat_del` (`assigned_user_id`,`status`,`deleted`),
  KEY `idx_meet_date_start` (`date_start`),
  KEY `idx_meet_date_start_reminder` (`date_start`,`reminder_time`),
  KEY `idx_meeting_date_entered` (`date_entered`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `meetings_contacts`
--

DROP TABLE IF EXISTS `meetings_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_contacts` (
  `id` char(36) NOT NULL,
  `meeting_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_mtg_mtg` (`meeting_id`),
  KEY `idx_con_mtg_con` (`contact_id`),
  KEY `idx_meeting_contact` (`meeting_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `meetings_cstm`
--

DROP TABLE IF EXISTS `meetings_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_cstm` (
  `id_c` char(36) NOT NULL,
  `follow_up_date_c` date DEFAULT NULL,
  `follow_up_activities_c` varchar(100) DEFAULT NULL,
  `contact_name_title_c` varchar(255) DEFAULT NULL,
  `other_contacts_meeting_c` varchar(255) DEFAULT NULL,
  `contact_buyer_influence_c` varchar(100) DEFAULT NULL,
  `additional_action_needed_c` varchar(255) DEFAULT NULL,
  `affiliated_consortia_info_c` varchar(255) DEFAULT NULL,
  `budget_information_c` varchar(255) DEFAULT NULL,
  `business_units_discussed_c` varchar(255) DEFAULT NULL,
  `competitive_information_c` varchar(255) DEFAULT NULL,
  `existing_sales_opportunity_c` varchar(255) DEFAULT NULL,
  `feedback_specific_product_c` varchar(255) DEFAULT NULL,
  `feedback_related_budget_c` varchar(255) DEFAULT NULL,
  `meeting_notes_reviewed_c` tinyint(1) DEFAULT NULL,
  `new_sales_opportunity_c` varchar(255) DEFAULT NULL,
  `state_country_budget_c` varchar(255) DEFAULT NULL,
  `purpose_of_meeting_c` varchar(255) DEFAULT NULL,
  `meeting_type_c` varchar(100) DEFAULT NULL,
  `meeting_notes_c` text,
  `contact_id_c` char(36) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `meetings_documents_1_c`
--

DROP TABLE IF EXISTS `meetings_documents_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_documents_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `meetings_documents_1meetings_ida` varchar(36) DEFAULT NULL,
  `meetings_documents_1documents_idb` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meetings_documents_1_ida1` (`meetings_documents_1meetings_ida`),
  KEY `meetings_documents_1_alt` (`meetings_documents_1documents_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `meetings_leads`
--

DROP TABLE IF EXISTS `meetings_leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_leads` (
  `id` char(36) NOT NULL,
  `meeting_id` char(36) DEFAULT NULL,
  `lead_id` char(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_lead_meeting_meeting` (`meeting_id`),
  KEY `idx_lead_meeting_lead` (`lead_id`),
  KEY `idx_meeting_lead` (`meeting_id`,`lead_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `meetings_tasks_1_c`
--

DROP TABLE IF EXISTS `meetings_tasks_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_tasks_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `meetings_tasks_1meetings_ida` varchar(36) DEFAULT NULL,
  `meetings_tasks_1tasks_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meetings_tasks_1_ida1` (`meetings_tasks_1meetings_ida`),
  KEY `meetings_tasks_1_alt` (`meetings_tasks_1tasks_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `meetings_users`
--

DROP TABLE IF EXISTS `meetings_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_users` (
  `id` char(36) NOT NULL,
  `meeting_id` char(36) DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_usr_mtg_mtg` (`meeting_id`),
  KEY `idx_usr_mtg_usr` (`user_id`),
  KEY `idx_meeting_users` (`meeting_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `portal_flag` tinyint(1) DEFAULT '0',
  `embed_flag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `notesmod` (`date_modified`),
  KEY `idx_notes_tmst_id` (`team_set_id`),
  KEY `idx_note_name` (`name`),
  KEY `idx_notes_parent` (`parent_id`,`parent_type`),
  KEY `idx_note_contact` (`contact_id`),
  KEY `idx_notes_assigned_del` (`deleted`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `notes_cstm`
--

DROP TABLE IF EXISTS `notes_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes_cstm` (
  `id_c` char(36) NOT NULL,
  `contact_id_c` char(36) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT '0',
  `severity` varchar(15) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notificationsmod` (`date_modified`),
  KEY `idx_notifications_my_unread_items` (`assigned_user_id`,`is_read`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `notifications_audit`
--

DROP TABLE IF EXISTS `notifications_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_notifications_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oauth_consumer`
--

DROP TABLE IF EXISTS `oauth_consumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_consumer` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `c_key` varchar(255) DEFAULT NULL,
  `c_secret` varchar(255) DEFAULT NULL,
  `oauth_type` varchar(50) DEFAULT 'oauth1',
  `client_type` varchar(50) DEFAULT 'user',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ckey` (`c_key`),
  KEY `oauth_consumermod` (`date_modified`),
  KEY `idx_oauthkey_name` (`name`),
  KEY `idx_oauthkey_client_type` (`client_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oauth_nonce`
--

DROP TABLE IF EXISTS `oauth_nonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_nonce` (
  `conskey` varchar(32) NOT NULL,
  `nonce` varchar(32) NOT NULL,
  `nonce_ts` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`conskey`,`nonce`),
  KEY `oauth_nonce_keyts` (`conskey`,`nonce_ts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oauth_tokens`
--

DROP TABLE IF EXISTS `oauth_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_tokens` (
  `id` char(36) NOT NULL,
  `secret` varchar(32) DEFAULT NULL,
  `tstate` varchar(1) DEFAULT NULL,
  `consumer` char(36) NOT NULL,
  `token_ts` bigint(20) DEFAULT NULL,
  `expire_ts` bigint(20) DEFAULT '-1',
  `verify` varchar(32) DEFAULT NULL,
  `download_token` varchar(36) DEFAULT NULL,
  `platform` varchar(255) DEFAULT 'base',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `callback_url` varchar(255) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`,`deleted`),
  KEY `oauth_state_ts` (`tstate`,`token_ts`),
  KEY `constoken_key` (`consumer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `opportunities`
--

DROP TABLE IF EXISTS `opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunities` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `opportunity_type` varchar(255) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `lead_source` varchar(100) DEFAULT NULL,
  `amount` decimal(26,6) DEFAULT NULL,
  `base_rate` decimal(26,6) DEFAULT NULL,
  `amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT '-99',
  `date_closed` date DEFAULT NULL,
  `date_closed_timestamp` int(11) DEFAULT NULL,
  `next_step` varchar(255) DEFAULT NULL,
  `sales_stage` varchar(255) DEFAULT 'Prospecting',
  `sales_status` varchar(255) DEFAULT NULL,
  `probability` double DEFAULT NULL,
  `best_case` decimal(26,6) DEFAULT NULL,
  `worst_case` decimal(26,6) DEFAULT NULL,
  `commit_stage` varchar(50) DEFAULT NULL,
  `total_revenue_line_items` int(11) DEFAULT NULL,
  `closed_revenue_line_items` int(11) DEFAULT NULL,
  `mkto_sync` tinyint(1) DEFAULT '0',
  `mkto_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `opportunitiesmod` (`date_modified`),
  KEY `idx_opportunities_tmst_id` (`team_set_id`),
  KEY `idx_opp_name` (`name`),
  KEY `idx_opp_assigned_timestamp` (`assigned_user_id`,`date_closed_timestamp`,`deleted`),
  KEY `idx_opp_id_deleted` (`id`,`deleted`),
  KEY `idx_opportunity_sales_status` (`sales_status`),
  KEY `idx_opportunity_opportunity_type` (`opportunity_type`),
  KEY `idx_opportunity_lead_source` (`lead_source`),
  KEY `idx_opportunity_next_step` (`next_step`),
  KEY `idx_opportunity_date_entered` (`date_entered`),
  KEY `idx_opportunity_mkto_id` (`mkto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `opportunities_audit`
--

DROP TABLE IF EXISTS `opportunities_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunities_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_opportunities_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `opportunities_cases_1_c`
--

DROP TABLE IF EXISTS `opportunities_cases_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunities_cases_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `opportunities_cases_1opportunities_ida` varchar(36) DEFAULT NULL,
  `opportunities_cases_1cases_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `opportunities_cases_1_alt` (`opportunities_cases_1opportunities_ida`,`opportunities_cases_1cases_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `opportunities_contacts`
--

DROP TABLE IF EXISTS `opportunities_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunities_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_opp_con` (`contact_id`),
  KEY `idx_con_opp_opp` (`opportunity_id`),
  KEY `idx_opportunities_contacts` (`opportunity_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `opportunities_cstm`
--

DROP TABLE IF EXISTS `opportunities_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunities_cstm` (
  `id_c` char(36) NOT NULL,
  `opportunity_loss_reason_c` varchar(100) DEFAULT NULL,
  `opportunity_loss_notes_c` text,
  `campaign_id_c` char(36) DEFAULT NULL,
  `aaf_c` decimal(26,6) DEFAULT NULL,
  `acf_c` decimal(26,6) DEFAULT NULL,
  `agent_tracking_c` varchar(100) DEFAULT NULL,
  `business_unit_c` varchar(100) DEFAULT 'SP List 1',
  `consortium_negotiation_type_c` varchar(100) DEFAULT NULL,
  `full_fees_c` decimal(26,6) DEFAULT NULL,
  `number_of_titles_c` int(255) DEFAULT NULL,
  `subscription_agent_c` varchar(100) DEFAULT 'Agent_Order',
  `csp_holding_comp_req_c` date DEFAULT NULL,
  `prt_holding_comp_req_c` date DEFAULT NULL,
  `csp_holding_comp_prv_c` date DEFAULT NULL,
  `prt_holding_comp_prv_c` date DEFAULT NULL,
  `prt_holding_comp_don_c` date DEFAULT NULL,
  `participant_meeting_c` date DEFAULT NULL,
  `preview_sent_c` date DEFAULT NULL,
  `proposal_follow_up_c` date DEFAULT NULL,
  `schedule_appointment_c` date DEFAULT NULL,
  `send_contract_c` date DEFAULT NULL,
  `send_product_information_c` date DEFAULT NULL,
  `send_proposal_c` date DEFAULT NULL,
  `send_quotation_c` date DEFAULT NULL,
  `send_standard_proposal_c` date DEFAULT NULL,
  `primary_team_c` tinyint(1) DEFAULT '0',
  `service_c` varchar(100) DEFAULT NULL,
  `product_line_c` varchar(100) DEFAULT NULL,
  `account_id_c` char(36) DEFAULT NULL,
  `probability_value_c` varchar(100) DEFAULT NULL,
  `override_probability_c` int(255) DEFAULT NULL,
  `opportunity_stalled_c` tinyint(1) DEFAULT '0',
  `total_stage_rank_c` varchar(255) DEFAULT NULL,
  `override_stage_rank_c` int(255) DEFAULT NULL,
  `override_activity_status_c` varchar(100) DEFAULT NULL,
  `purchase_decision_quarter_c` varchar(255) DEFAULT NULL,
  `gap_analysis_ranking_c` varchar(255) DEFAULT NULL,
  `cloned_opportunity_id_c` varchar(255) DEFAULT NULL,
  `account_ranking_c` varchar(255) DEFAULT NULL,
  `city_c` varchar(255) DEFAULT NULL,
  `country_c` varchar(255) DEFAULT NULL,
  `state_province_c` varchar(255) DEFAULT NULL,
  `contact_id_c` char(36) DEFAULT NULL,
  `one_time_fee_amount_c` decimal(26,6) DEFAULT NULL,
  `ongoing_fee_amount_c` decimal(26,6) DEFAULT NULL,
  `the_user_c` varchar(255) DEFAULT NULL,
  `total_forecasted_amount_c` decimal(26,6) DEFAULT NULL,
  `categories_c` text,
  `talisma_id_c` varchar(25) DEFAULT NULL,
  `close_date_override_c` date DEFAULT NULL,
  `forecast_override_c` varchar(100) DEFAULT NULL,
  `override_line_items_c` tinyint(1) DEFAULT NULL,
  `one_time_fee_total_c` decimal(26,6) DEFAULT NULL,
  `ongoing_fee_total_c` decimal(26,6) DEFAULT NULL,
  `opportunity_won_notes_c` text,
  `opportunity_won_reason_c` varchar(100) DEFAULT NULL,
  `region_c` varchar(100) DEFAULT NULL,
  `inst_part_coordinator_c` varchar(50) DEFAULT NULL,
  `director_of_inst_part_c` varchar(50) DEFAULT NULL,
  `account_id1_c` char(36) DEFAULT NULL,
  `total_probability_c` int(3) DEFAULT NULL,
  `follow_up_date_c` date DEFAULT NULL,
  `opportunity_source_c` varchar(100) DEFAULT NULL,
  `next_steps_c` text,
  `sugar_id_c` varchar(50) DEFAULT NULL,
  `system_id_c` varchar(25) DEFAULT NULL,
  `system_id_int_c` int(25) DEFAULT NULL,
  `attached_bluesheet_c` tinyint(1) DEFAULT NULL,
  `lic_agent_account_ranking_c` varchar(255) DEFAULT NULL,
  `ideal_customer_profile_rank_c` varchar(255) DEFAULT NULL,
  `contact_id1_c` char(36) DEFAULT NULL,
  `contact_id2_c` char(36) DEFAULT NULL,
  `contact_id3_c` char(36) DEFAULT NULL,
  `contact_id4_c` char(36) DEFAULT NULL,
  `eco_buyer_influence_deg_c` varchar(100) DEFAULT NULL,
  `tech_buyer_influence_deg_c` varchar(100) DEFAULT NULL,
  `user_buyer_influence_deg_c` varchar(100) DEFAULT NULL,
  `coach_influence_deg_c` varchar(100) DEFAULT NULL,
  `eco_buyer_mode_c` varchar(100) DEFAULT NULL,
  `user_buyer_mode_c` varchar(100) DEFAULT NULL,
  `tech_buyer_mode_c` varchar(100) DEFAULT NULL,
  `coach_mode_c` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_c`),
  KEY `opps_sysid` (`system_id_c`),
  KEY `opps_sysidint` (`system_id_int_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `outbound_email`
--

DROP TABLE IF EXISTS `outbound_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outbound_email` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(15) DEFAULT 'user',
  `user_id` char(36) NOT NULL,
  `mail_sendtype` varchar(8) DEFAULT 'smtp',
  `mail_smtptype` varchar(20) DEFAULT 'other',
  `mail_smtpserver` varchar(100) DEFAULT NULL,
  `mail_smtpport` int(5) DEFAULT '0',
  `mail_smtpuser` varchar(100) DEFAULT NULL,
  `mail_smtppass` varchar(100) DEFAULT NULL,
  `mail_smtpauth_req` tinyint(1) DEFAULT '0',
  `mail_smtpssl` int(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `oe_user_id_idx` (`id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pdfmanager`
--

DROP TABLE IF EXISTS `pdfmanager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pdfmanager` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `base_module` varchar(100) DEFAULT NULL,
  `published` varchar(100) DEFAULT 'yes',
  `field` varchar(100) DEFAULT '0',
  `body_html` text,
  `template_name` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT 'SugarCRM',
  `title` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `header_title` varchar(255) DEFAULT NULL,
  `header_text` varchar(255) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  `header_logo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pdfmanagermod` (`date_modified`),
  KEY `idx_pdfmanager_tmst_id` (`team_set_id`),
  KEY `idx_pdfmanager_name` (`name`),
  KEY `idx_pdfmanager_base_module` (`base_module`),
  KEY `idx_pdfmanager_date_entered` (`date_entered`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product_bundle_note`
--

DROP TABLE IF EXISTS `product_bundle_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_bundle_note` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bundle_id` varchar(36) DEFAULT NULL,
  `note_id` varchar(36) DEFAULT NULL,
  `note_index` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_pbn_bundle` (`bundle_id`),
  KEY `idx_pbn_note` (`note_id`),
  KEY `idx_pbn_pb_nb` (`note_id`,`bundle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product_bundle_notes`
--

DROP TABLE IF EXISTS `product_bundle_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_bundle_notes` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product_bundle_product`
--

DROP TABLE IF EXISTS `product_bundle_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_bundle_product` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bundle_id` varchar(36) DEFAULT NULL,
  `product_id` varchar(36) DEFAULT NULL,
  `product_index` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_pbp_bundle` (`bundle_id`),
  KEY `idx_pbp_quote` (`product_id`),
  KEY `idx_pbp_bq` (`product_id`,`bundle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product_bundle_quote`
--

DROP TABLE IF EXISTS `product_bundle_quote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_bundle_quote` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bundle_id` varchar(36) DEFAULT NULL,
  `quote_id` varchar(36) DEFAULT NULL,
  `bundle_index` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_pbq_bundle` (`bundle_id`),
  KEY `idx_pbq_quote` (`quote_id`),
  KEY `idx_pbq_bq` (`quote_id`,`bundle_id`),
  KEY `bundle_index_idx` (`bundle_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product_bundles`
--

DROP TABLE IF EXISTS `product_bundles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_bundles` (
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `bundle_stage` varchar(255) DEFAULT NULL,
  `description` text,
  `tax` decimal(26,6) DEFAULT NULL,
  `tax_usdollar` decimal(26,6) DEFAULT NULL,
  `total` decimal(26,6) DEFAULT NULL,
  `total_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_usdollar` decimal(26,6) DEFAULT NULL,
  `deal_tot` decimal(26,2) DEFAULT NULL,
  `deal_tot_usdollar` decimal(26,2) DEFAULT NULL,
  `new_sub` decimal(26,6) DEFAULT NULL,
  `new_sub_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal` decimal(26,6) DEFAULT NULL,
  `shipping` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT '-99',
  `base_rate` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_product_bundles_tmst_id` (`team_set_id`),
  KEY `idx_products_bundles` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_categories` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_order` int(4) DEFAULT NULL,
  `description` text,
  `assigned_user_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_productcategories` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product_product`
--

DROP TABLE IF EXISTS `product_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_product` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `parent_id` varchar(36) DEFAULT NULL,
  `child_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_pp_parent` (`parent_id`),
  KEY `idx_pp_child` (`child_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product_templates`
--

DROP TABLE IF EXISTS `product_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_templates` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `type_id` char(36) DEFAULT NULL,
  `manufacturer_id` char(36) DEFAULT NULL,
  `category_id` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `mft_part_num` varchar(50) DEFAULT NULL,
  `vendor_part_num` varchar(50) DEFAULT NULL,
  `date_cost_price` date DEFAULT NULL,
  `cost_price` decimal(26,6) DEFAULT NULL,
  `discount_price` decimal(26,6) DEFAULT NULL,
  `list_price` decimal(26,6) DEFAULT NULL,
  `cost_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_usdollar` decimal(26,6) DEFAULT NULL,
  `list_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT '-99',
  `base_rate` decimal(26,6) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `tax_class` varchar(100) DEFAULT NULL,
  `date_available` date DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `weight` decimal(12,2) DEFAULT NULL,
  `qty_in_stock` int(5) DEFAULT NULL,
  `description` text,
  `support_name` varchar(50) DEFAULT NULL,
  `support_description` varchar(255) DEFAULT NULL,
  `support_contact` varchar(50) DEFAULT NULL,
  `support_term` varchar(100) DEFAULT NULL,
  `pricing_formula` varchar(100) DEFAULT NULL,
  `pricing_factor` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_product_template` (`name`,`deleted`),
  KEY `idx_producttemplate_status` (`status`),
  KEY `idx_producttemplate_qty_in_stock` (`qty_in_stock`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product_templates_audit`
--

DROP TABLE IF EXISTS `product_templates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_templates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_product_templates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product_types`
--

DROP TABLE IF EXISTS `product_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_types` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `list_order` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_producttypes` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `revenuelineitem_id` char(36) DEFAULT NULL,
  `product_template_id` char(36) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT '0.000000',
  `type_id` char(36) DEFAULT NULL,
  `quote_id` char(36) DEFAULT NULL,
  `manufacturer_id` char(36) DEFAULT NULL,
  `category_id` char(36) DEFAULT NULL,
  `mft_part_num` varchar(50) DEFAULT NULL,
  `vendor_part_num` varchar(50) DEFAULT NULL,
  `date_purchased` date DEFAULT NULL,
  `cost_price` decimal(26,6) DEFAULT NULL,
  `discount_price` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_rate_percent` decimal(26,2) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_select` tinyint(1) DEFAULT NULL,
  `deal_calc` decimal(26,6) DEFAULT NULL,
  `deal_calc_usdollar` decimal(26,6) DEFAULT NULL,
  `list_price` decimal(26,6) DEFAULT NULL,
  `cost_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_usdollar` decimal(26,6) DEFAULT NULL,
  `list_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT '-99',
  `base_rate` decimal(26,6) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `tax_class` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `weight` decimal(12,2) DEFAULT NULL,
  `quantity` decimal(12,2) DEFAULT '1.00',
  `support_name` varchar(50) DEFAULT NULL,
  `support_description` varchar(255) DEFAULT NULL,
  `support_contact` varchar(50) DEFAULT NULL,
  `support_term` varchar(100) DEFAULT NULL,
  `date_support_expires` date DEFAULT NULL,
  `date_support_starts` date DEFAULT NULL,
  `pricing_formula` varchar(100) DEFAULT NULL,
  `pricing_factor` int(4) DEFAULT NULL,
  `serial_number` varchar(50) DEFAULT NULL,
  `asset_number` varchar(50) DEFAULT NULL,
  `book_value` decimal(26,6) DEFAULT NULL,
  `book_value_usdollar` decimal(26,6) DEFAULT NULL,
  `book_value_date` date DEFAULT NULL,
  `date_closed` date DEFAULT NULL,
  `date_closed_timestamp` int(11) DEFAULT NULL,
  `next_step` varchar(100) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `product_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `productsmod` (`date_modified`),
  KEY `idx_products_tmst_id` (`team_set_id`),
  KEY `idx_products` (`name`,`deleted`),
  KEY `idx_prod_user_dc_timestamp` (`id`,`assigned_user_id`,`date_closed_timestamp`),
  KEY `idx_product_quantity` (`quantity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `products_audit`
--

DROP TABLE IF EXISTS `products_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_products_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `products_cstm`
--

DROP TABLE IF EXISTS `products_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_cstm` (
  `id_c` char(36) NOT NULL,
  `ith_entitlements_id_c` char(36) DEFAULT NULL,
  `convert_order_c` tinyint(1) DEFAULT '0',
  `date_submitted_c` date DEFAULT NULL,
  `service_c` varchar(100) DEFAULT NULL,
  `product_line_c` varchar(100) DEFAULT NULL,
  `one_time_fee_c` varchar(100) DEFAULT NULL,
  `ongoing_fee_c` varchar(100) DEFAULT NULL,
  `one_time_fee_amount_c` decimal(26,6) DEFAULT '0.000000',
  `ongoing_fee_amount_c` decimal(26,6) DEFAULT '0.000000',
  `one_time_fee_total_c` decimal(26,6) DEFAULT '0.000000',
  `ongoing_fee_total_c` decimal(26,6) DEFAULT '0.000000',
  `one_time_fee_savings_c` decimal(18,2) DEFAULT NULL,
  `ongoing_fee_savings_c` decimal(18,2) DEFAULT NULL,
  `one_time_fee_description_c` text,
  `ongoing_fee_description_c` text,
  `account_id_c` char(36) DEFAULT NULL,
  `opportunity_id_c` char(36) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `estimated_start_date` date DEFAULT NULL,
  `estimated_end_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `is_template` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_project_tmst_id` (`team_set_id`),
  KEY `idx_project_name` (`name`),
  KEY `idx_project_estimated_start_date` (`estimated_start_date`),
  KEY `idx_project_estimated_end_date` (`estimated_end_date`),
  KEY `idx_project_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `project_resources`
--

DROP TABLE IF EXISTS `project_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_resources` (
  `id` char(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `project_id` char(36) DEFAULT NULL,
  `resource_id` char(36) DEFAULT NULL,
  `resource_type` varchar(20) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `project_task`
--

DROP TABLE IF EXISTS `project_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_task` (
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `project_id` char(36) NOT NULL,
  `project_task_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `description` text,
  `resource_id` text,
  `predecessors` text,
  `date_start` date DEFAULT NULL,
  `time_start` int(11) DEFAULT NULL,
  `time_finish` int(11) DEFAULT NULL,
  `date_finish` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `duration_unit` text,
  `actual_duration` int(11) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  `date_due` date DEFAULT NULL,
  `time_due` time DEFAULT NULL,
  `parent_task_id` int(11) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT NULL,
  `order_number` int(11) DEFAULT '1',
  `task_number` int(11) DEFAULT NULL,
  `estimated_effort` int(11) DEFAULT NULL,
  `actual_effort` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `utilization` int(11) DEFAULT '100',
  PRIMARY KEY (`id`),
  KEY `idx_project_task_tmst_id` (`team_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `project_task_audit`
--

DROP TABLE IF EXISTS `project_task_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_task_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_project_task_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `projects_accounts`
--

DROP TABLE IF EXISTS `projects_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_accounts` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_acct_proj` (`project_id`),
  KEY `idx_proj_acct_acct` (`account_id`),
  KEY `projects_accounts_alt` (`project_id`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `projects_bugs`
--

DROP TABLE IF EXISTS `projects_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_bugs` (
  `id` varchar(36) NOT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_bug_proj` (`project_id`),
  KEY `idx_proj_bug_bug` (`bug_id`),
  KEY `projects_bugs_alt` (`project_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `projects_cases`
--

DROP TABLE IF EXISTS `projects_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_cases` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_case_proj` (`project_id`),
  KEY `idx_proj_case_case` (`case_id`),
  KEY `projects_cases_alt` (`project_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `projects_contacts`
--

DROP TABLE IF EXISTS `projects_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_con_proj` (`project_id`),
  KEY `idx_proj_con_con` (`contact_id`),
  KEY `projects_contacts_alt` (`project_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `projects_opportunities`
--

DROP TABLE IF EXISTS `projects_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_opp_proj` (`project_id`),
  KEY `idx_proj_opp_opp` (`opportunity_id`),
  KEY `projects_opportunities_alt` (`project_id`,`opportunity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `projects_products`
--

DROP TABLE IF EXISTS `projects_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_products` (
  `id` varchar(36) NOT NULL,
  `product_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_prod_project` (`project_id`),
  KEY `idx_proj_prod_product` (`product_id`),
  KEY `projects_products_alt` (`project_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `projects_quotes`
--

DROP TABLE IF EXISTS `projects_quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_quotes` (
  `id` varchar(36) NOT NULL,
  `quote_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_quote_proj` (`project_id`),
  KEY `idx_proj_quote_quote` (`quote_id`),
  KEY `projects_quotes_alt` (`project_id`,`quote_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `projects_revenue_line_items`
--

DROP TABLE IF EXISTS `projects_revenue_line_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_revenue_line_items` (
  `id` varchar(36) NOT NULL,
  `rli_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_rli_project` (`project_id`),
  KEY `idx_proj_rli_product` (`rli_id`),
  KEY `projects_rli_alt` (`project_id`,`rli_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prospect_list_campaigns`
--

DROP TABLE IF EXISTS `prospect_list_campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospect_list_campaigns` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `campaign_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_pro_id` (`prospect_list_id`),
  KEY `idx_cam_id` (`campaign_id`),
  KEY `idx_prospect_list_campaigns` (`prospect_list_id`,`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prospect_lists`
--

DROP TABLE IF EXISTS `prospect_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospect_lists` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_type` varchar(100) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `description` text,
  `domain_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_prospect_lists_tmst_id` (`team_set_id`),
  KEY `idx_prospect_list_name` (`name`),
  KEY `idx_prospect_list_list_type` (`list_type`),
  KEY `idx_prospect_list_date_entered` (`date_entered`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prospect_lists_prospects`
--

DROP TABLE IF EXISTS `prospect_lists_prospects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospect_lists_prospects` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_plp_pro_id` (`prospect_list_id`),
  KEY `idx_plp_rel_id` (`related_id`,`related_type`,`prospect_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prospects`
--

DROP TABLE IF EXISTS `prospects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospects` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `facebook` varchar(100) DEFAULT NULL,
  `twitter` varchar(100) DEFAULT NULL,
  `googleplus` varchar(100) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `birthdate` date DEFAULT NULL,
  `lead_id` char(36) DEFAULT NULL,
  `account_name` varchar(150) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `dnb_principal_id` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prospectsmod` (`date_modified`),
  KEY `idx_prospects_tmst_id` (`team_set_id`),
  KEY `prospect_auto_tracker_key` (`tracker_key`),
  KEY `idx_prospects_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_prospecs_del_last` (`last_name`,`deleted`),
  KEY `idx_prospects_id_del` (`id`,`deleted`),
  KEY `idx_prospects_assigned` (`assigned_user_id`),
  KEY `idx_prospect_title` (`title`),
  KEY `idx_prospect_date_entered` (`date_entered`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `quotas`
--

DROP TABLE IF EXISTS `quotas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quotas` (
  `id` char(36) NOT NULL,
  `user_id` char(36) DEFAULT NULL,
  `timeperiod_id` char(36) DEFAULT NULL,
  `quota_type` varchar(100) DEFAULT NULL,
  `amount` decimal(26,6) DEFAULT NULL,
  `amount_base_currency` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT '-99',
  `base_rate` decimal(26,6) DEFAULT NULL,
  `committed` tinyint(1) DEFAULT '0',
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_quota_user_tp` (`user_id`,`timeperiod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `quotes`
--

DROP TABLE IF EXISTS `quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quotes` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `shipper_id` char(36) DEFAULT NULL,
  `currency_id` char(36) DEFAULT '-99',
  `base_rate` decimal(26,6) DEFAULT NULL,
  `taxrate_id` char(36) DEFAULT NULL,
  `show_line_nums` tinyint(1) DEFAULT '1',
  `calc_grand_total` tinyint(1) DEFAULT '1',
  `quote_type` varchar(100) DEFAULT NULL,
  `date_quote_expected_closed` date DEFAULT NULL,
  `original_po_date` date DEFAULT NULL,
  `payment_terms` varchar(128) DEFAULT NULL,
  `date_quote_closed` date DEFAULT NULL,
  `date_order_shipped` date DEFAULT NULL,
  `order_stage` varchar(100) DEFAULT NULL,
  `quote_stage` varchar(100) DEFAULT NULL,
  `purchase_order_num` varchar(50) DEFAULT NULL,
  `quote_num` int(11) NOT NULL AUTO_INCREMENT,
  `subtotal` decimal(26,6) DEFAULT NULL,
  `subtotal_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping` decimal(26,6) DEFAULT NULL,
  `shipping_usdollar` decimal(26,6) DEFAULT NULL,
  `discount` decimal(26,6) DEFAULT NULL,
  `deal_tot` decimal(26,2) DEFAULT NULL,
  `deal_tot_usdollar` decimal(26,2) DEFAULT NULL,
  `new_sub` decimal(26,6) DEFAULT NULL,
  `new_sub_usdollar` decimal(26,6) DEFAULT NULL,
  `tax` decimal(26,6) DEFAULT NULL,
  `tax_usdollar` decimal(26,6) DEFAULT NULL,
  `total` decimal(26,6) DEFAULT NULL,
  `total_usdollar` decimal(26,6) DEFAULT NULL,
  `billing_address_street` varchar(255) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(100) DEFAULT NULL,
  `shipping_address_street` varchar(255) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(100) DEFAULT NULL,
  `system_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `quote_num` (`quote_num`,`system_id`),
  KEY `quotesmod` (`date_modified`),
  KEY `idx_quotes_tmst_id` (`team_set_id`),
  KEY `idx_qte_name` (`name`),
  KEY `idx_quote_quote_stage` (`quote_stage`),
  KEY `idx_quote_date_quote_expected_closed` (`date_quote_expected_closed`),
  KEY `idx_quote_date_entered` (`date_entered`)
) ENGINE=InnoDB AUTO_INCREMENT=1551 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `quotes_accounts`
--

DROP TABLE IF EXISTS `quotes_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quotes_accounts` (
  `id` varchar(36) NOT NULL,
  `quote_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `account_role` varchar(20) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acc_qte_acc` (`account_id`),
  KEY `idx_acc_qte_opp` (`quote_id`),
  KEY `idx_quote_account_role` (`quote_id`,`account_role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `quotes_audit`
--

DROP TABLE IF EXISTS `quotes_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_quotes_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `quotes_contacts`
--

DROP TABLE IF EXISTS `quotes_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quotes_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `quote_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(20) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_qte_con` (`contact_id`),
  KEY `idx_con_qte_opp` (`quote_id`),
  KEY `idx_quote_contact_role` (`quote_id`,`contact_role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `quotes_cstm`
--

DROP TABLE IF EXISTS `quotes_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quotes_cstm` (
  `id_c` char(36) NOT NULL,
  `service_c` varchar(100) DEFAULT NULL,
  `product_line_c` varchar(100) DEFAULT NULL,
  `convert_order_c` tinyint(1) DEFAULT '0',
  `payment_required_prior_to_ac_c` tinyint(1) DEFAULT '0',
  `number_line_items_c` int(255) DEFAULT NULL,
  `access_provisioned_c` date DEFAULT NULL,
  `access_details_c` text,
  `contact_id1_c` char(36) DEFAULT NULL,
  `invoice_num_c` varchar(100) DEFAULT NULL,
  `invoice_amount_c` decimal(26,6) DEFAULT NULL,
  `invoice_attached_to_account_c` date DEFAULT NULL,
  `invoice_sent_to_librarian_c` date DEFAULT NULL,
  `invoice_sent_to_subscriber_c` date DEFAULT NULL,
  `corrected_invoice_num_c` varchar(150) DEFAULT NULL,
  `corrected_invoice_sent_c` date DEFAULT NULL,
  `order_payment_received_c` date DEFAULT NULL,
  `order_processing_completed_c` date DEFAULT NULL,
  `order_ready_to_be_entered_c` date DEFAULT NULL,
  `orders_built_in_klopotek_c` date DEFAULT NULL,
  `orders_invoiced_c` date DEFAULT NULL,
  `orders_rebuilt_in_klopotek_c` date DEFAULT NULL,
  `orders_reversed_in_klopotek_c` date DEFAULT NULL,
  `reason_for_reversal_c` varchar(100) DEFAULT NULL,
  `outstanding_issues_or_delays_c` varchar(100) DEFAULT NULL,
  `payment_applied_in_klopotek_c` date DEFAULT NULL,
  `special_invoice_instructions_c` text,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `licensing_stage_c` varchar(100) DEFAULT NULL,
  `installation_received_date_c` date DEFAULT NULL,
  `installation_library_relati_c` date DEFAULT NULL,
  `installation_licensing_appr_c` date DEFAULT NULL,
  `installation_user_services_c` date DEFAULT NULL,
  `user_id_c` char(36) DEFAULT NULL,
  `contact_id_c` char(36) DEFAULT NULL,
  `date_agreement_received_c` date DEFAULT NULL,
  `date_invoice_c` date DEFAULT NULL,
  `date_access_requested_c` date DEFAULT NULL,
  `originals_received_c` tinyint(1) DEFAULT '0',
  `agent_relationship_c` varchar(100) DEFAULT NULL,
  `consortia_group_savings_c` varchar(255) DEFAULT NULL,
  `agreement_version_c` varchar(100) DEFAULT NULL,
  `consortia_agent_grant_c` varchar(255) DEFAULT NULL,
  `copy_contacts_c` varchar(255) DEFAULT NULL,
  `ips_on_license_c` tinyint(1) DEFAULT '0',
  `approved_licensing_c` tinyint(1) DEFAULT '0',
  `attach_document_account_c` date DEFAULT NULL,
  `update_collections_tab_c` date DEFAULT NULL,
  `approved_installation_c` tinyint(1) DEFAULT '0',
  `create_invoice_request_c` date DEFAULT NULL,
  `return_license_participan_c` varchar(255) DEFAULT NULL,
  `license_processing_notes_c` text,
  `urgent_invoice_needed_c` tinyint(1) DEFAULT '0',
  `discount_reason_c` varchar(100) DEFAULT NULL,
  `discount_reason_other_c` varchar(100) DEFAULT NULL,
  `date_order_received_c` date DEFAULT NULL,
  `contact_id2_c` char(36) DEFAULT NULL,
  `contact_id3_c` char(36) DEFAULT NULL,
  `institution_name_c` varchar(255) DEFAULT NULL,
  `institution_sitename_c` varchar(255) DEFAULT NULL,
  `country_c` varchar(255) DEFAULT NULL,
  `country_savings_tier_c` varchar(255) DEFAULT NULL,
  `community_c` varchar(255) DEFAULT NULL,
  `classification_c` varchar(255) DEFAULT NULL,
  `vat_c` varchar(255) DEFAULT NULL,
  `acf_savings_rate_c` varchar(255) DEFAULT NULL,
  `aaf_savings_rate_c` varchar(255) DEFAULT NULL,
  `invoicing_cycle_c` varchar(255) DEFAULT NULL,
  `account_id_c` char(36) DEFAULT NULL,
  `consortium_savings_discounts_c` varchar(255) DEFAULT NULL,
  `trial_status_c` varchar(100) DEFAULT NULL,
  `trial_start_date_c` date DEFAULT NULL,
  `trial_end_date_c` date DEFAULT NULL,
  `trial_notes_c` text,
  `order_type_c` varchar(100) DEFAULT NULL,
  `user_id1_c` char(36) DEFAULT NULL,
  `user_id2_c` char(36) DEFAULT NULL,
  `user_id3_c` char(36) DEFAULT NULL,
  `date_invoice_request_created_c` date DEFAULT NULL,
  `date_invoice_created_sent_c` date DEFAULT NULL,
  `date_payment_applied_c` date DEFAULT NULL,
  `date_payment_received_c` date DEFAULT NULL,
  `new_invoice_number_c` varchar(255) DEFAULT NULL,
  `date_new_invoice_sent_c` date DEFAULT NULL,
  `date_approved_installation_c` date DEFAULT NULL,
  `categories_c` text,
  `network_form_status_c` varchar(100) DEFAULT NULL,
  `auth_record_created_c` tinyint(1) DEFAULT '0',
  `added_stats_group_c` tinyint(1) DEFAULT '0',
  `ready_install_c` tinyint(1) DEFAULT '0',
  `peri_installation_c` tinyint(1) DEFAULT '0',
  `participation_message_sent_c` tinyint(1) DEFAULT '0',
  `participation_message2_sent_c` tinyint(1) DEFAULT '0',
  `reason_delay_c` varchar(100) DEFAULT NULL,
  `user_id4_c` char(36) DEFAULT NULL,
  `alumni_access_status_c` varchar(100) DEFAULT NULL,
  `date_installation_complete_c` date DEFAULT NULL,
  `alumni_last_access_follow_up_c` date DEFAULT NULL,
  `installation_notes_c` text,
  `peri_work_notes_c` text,
  `portico_tier_c` varchar(255) DEFAULT NULL,
  `books_tier_c` varchar(255) DEFAULT NULL,
  `order_requires_corrections_c` tinyint(1) DEFAULT '0',
  `sitename_blank_c` tinyint(1) DEFAULT NULL,
  `invoice_blank_c` tinyint(1) DEFAULT NULL,
  `account_categories_c` text,
  `approved_outreach_c` tinyint(1) DEFAULT '0',
  `approved_fulfillment_c` tinyint(1) DEFAULT NULL,
  `approved_user_services_c` tinyint(1) DEFAULT NULL,
  `order_status_c` varchar(255) DEFAULT NULL,
  `new_invoice_amount_c` decimal(26,6) DEFAULT '0.000000',
  `date_approved_outreach_c` datetime DEFAULT NULL,
  `date_approved_fulfillment_c` datetime DEFAULT NULL,
  `date_access_provisioned_c` datetime DEFAULT NULL,
  `aaf_total_c` decimal(26,6) DEFAULT '0.000000',
  `aac_total_c` decimal(26,6) DEFAULT '0.000000',
  `accepted_fulfillment_c` tinyint(1) DEFAULT NULL,
  `order_rejected_fulfillment_c` tinyint(1) DEFAULT NULL,
  `order_rejected_user_services_c` tinyint(1) DEFAULT NULL,
  `rejection_details_ful_c` text,
  `rejection_details_us_c` text,
  `date_accepted_fulfillment_c` datetime DEFAULT NULL,
  `date_rejected_fulfillment_c` datetime DEFAULT NULL,
  `date_rejected_user_services_c` datetime DEFAULT NULL,
  `sugar_id_c` varchar(50) DEFAULT NULL,
  `order_subtype_c` varchar(100) DEFAULT NULL,
  `account_id1_c` char(36) DEFAULT NULL,
  `billing_contact_email_c` varchar(255) DEFAULT NULL,
  `region_c` varchar(255) DEFAULT NULL,
  `director_of_inst_part_c` varchar(255) DEFAULT NULL,
  `inst_part_coordinator_c` varchar(255) DEFAULT NULL,
  `system_id_c` varchar(25) DEFAULT NULL,
  `system_id_int_c` int(25) DEFAULT NULL,
  `date_order_completed_closed_c` datetime DEFAULT NULL,
  `new_participant_c` tinyint(1) DEFAULT NULL,
  `charter_member_c` tinyint(1) DEFAULT NULL,
  `country_savings_category_c` varchar(50) DEFAULT NULL,
  `account_system_id_c` varchar(255) DEFAULT NULL,
  `books_order_type_c` varchar(100) DEFAULT NULL,
  `date_access_provisioned_ful_c` date DEFAULT NULL,
  `one_time_fee_total_c` decimal(26,6) DEFAULT NULL,
  `ongoing_fee_total_c` decimal(26,6) DEFAULT NULL,
  `klopotek_id_c` varchar(100) DEFAULT NULL,
  `first_order_c` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_c`),
  KEY `quo_sysid` (`system_id_c`),
  KEY `quo_sysidint` (`system_id_int_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `quotes_opportunities`
--

DROP TABLE IF EXISTS `quotes_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quotes_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `quote_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_opp_qte_opp` (`opportunity_id`),
  KEY `idx_quote_oportunities` (`quote_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `record_list`
--

DROP TABLE IF EXISTS `record_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `record_list` (
  `id` char(36) NOT NULL,
  `assigned_user_id` char(36) NOT NULL,
  `module_name` varchar(50) DEFAULT NULL,
  `records` longtext,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `relationships`
--

DROP TABLE IF EXISTS `relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relationships` (
  `id` char(36) NOT NULL,
  `relationship_name` varchar(150) DEFAULT NULL,
  `lhs_module` varchar(100) DEFAULT NULL,
  `lhs_table` varchar(64) DEFAULT NULL,
  `lhs_key` varchar(64) DEFAULT NULL,
  `rhs_module` varchar(100) DEFAULT NULL,
  `rhs_table` varchar(64) DEFAULT NULL,
  `rhs_key` varchar(64) DEFAULT NULL,
  `join_table` varchar(128) DEFAULT NULL,
  `join_key_lhs` varchar(128) DEFAULT NULL,
  `join_key_rhs` varchar(128) DEFAULT NULL,
  `relationship_type` varchar(64) DEFAULT NULL,
  `relationship_role_column` varchar(64) DEFAULT NULL,
  `relationship_role_column_value` varchar(50) DEFAULT NULL,
  `reverse` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `lhs_vname` varchar(64) DEFAULT NULL,
  `rhs_vname` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_rel_name` (`relationship_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `releases`
--

DROP TABLE IF EXISTS `releases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `releases` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_order` int(4) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_releases` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `report_cache`
--

DROP TABLE IF EXISTS `report_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_cache` (
  `id` char(36) NOT NULL,
  `assigned_user_id` char(36) NOT NULL,
  `contents` text,
  `report_options` text,
  `deleted` varchar(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `report_maker`
--

DROP TABLE IF EXISTS `report_maker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_maker` (
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `report_align` varchar(8) DEFAULT NULL,
  `description` text,
  `scheduled` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_report_maker_tmst_id` (`team_set_id`),
  KEY `idx_rmaker` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `report_schedules`
--

DROP TABLE IF EXISTS `report_schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_schedules` (
  `id` char(36) NOT NULL,
  `user_id` char(36) DEFAULT NULL,
  `report_id` char(36) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `next_run` datetime DEFAULT NULL,
  `active` tinyint(1) DEFAULT '0',
  `time_interval` int(11) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `schedule_type` varchar(3) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `revenue_line_items`
--

DROP TABLE IF EXISTS `revenue_line_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `revenue_line_items` (
  `id` char(36) NOT NULL,
  `name` varchar(65) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `product_template_id` char(36) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `type_id` char(36) DEFAULT NULL,
  `quote_id` char(36) DEFAULT NULL,
  `manufacturer_id` char(36) DEFAULT NULL,
  `category_id` char(36) DEFAULT NULL,
  `mft_part_num` varchar(50) DEFAULT NULL,
  `vendor_part_num` varchar(50) DEFAULT NULL,
  `date_purchased` date DEFAULT NULL,
  `cost_price` decimal(26,6) DEFAULT NULL,
  `discount_price` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_rate_percent` decimal(27,2) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_select` tinyint(1) DEFAULT NULL,
  `deal_calc` decimal(26,6) DEFAULT NULL,
  `deal_calc_usdollar` decimal(26,6) DEFAULT NULL,
  `list_price` decimal(26,6) DEFAULT NULL,
  `cost_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_usdollar` decimal(26,6) DEFAULT NULL,
  `list_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT '-99',
  `base_rate` decimal(26,6) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `tax_class` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `weight` decimal(12,2) DEFAULT NULL,
  `quantity` decimal(12,2) DEFAULT '1.00',
  `support_name` varchar(50) DEFAULT NULL,
  `support_description` varchar(255) DEFAULT NULL,
  `support_contact` varchar(50) DEFAULT NULL,
  `support_term` varchar(100) DEFAULT NULL,
  `date_support_expires` date DEFAULT NULL,
  `date_support_starts` date DEFAULT NULL,
  `pricing_formula` varchar(100) DEFAULT NULL,
  `pricing_factor` int(4) DEFAULT NULL,
  `serial_number` varchar(50) DEFAULT NULL,
  `asset_number` varchar(50) DEFAULT NULL,
  `book_value` decimal(26,6) DEFAULT NULL,
  `book_value_usdollar` decimal(26,6) DEFAULT NULL,
  `book_value_date` date DEFAULT NULL,
  `best_case` decimal(26,6) DEFAULT NULL,
  `likely_case` decimal(26,6) DEFAULT NULL,
  `worst_case` decimal(26,6) DEFAULT NULL,
  `date_closed` date DEFAULT NULL,
  `date_closed_timestamp` int(11) DEFAULT NULL,
  `next_step` varchar(255) DEFAULT NULL,
  `commit_stage` varchar(50) DEFAULT 'include',
  `sales_stage` varchar(100) DEFAULT NULL,
  `probability` double DEFAULT NULL,
  `lead_source` varchar(50) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) NOT NULL,
  `product_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revenue_line_itemsmod` (`date_modified`),
  KEY `idx_revenue_line_items_tmst_id` (`team_set_id`),
  KEY `idx_revenuelineitem` (`name`,`deleted`),
  KEY `idx_rli_user_dc_timestamp` (`id`,`assigned_user_id`,`date_closed_timestamp`),
  KEY `idx_revenuelineitem_sales_stage` (`sales_stage`),
  KEY `idx_revenuelineitem_probability` (`probability`),
  KEY `idx_revenuelineitem_commit_stage` (`commit_stage`),
  KEY `idx_revenuelineitem_quantity` (`quantity`),
  KEY `idx_revenuelineitem_oppid` (`opportunity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `revenue_line_items_audit`
--

DROP TABLE IF EXISTS `revenue_line_items_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `revenue_line_items_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_revenue_line_items_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `revenue_line_items_cstm`
--

DROP TABLE IF EXISTS `revenue_line_items_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `revenue_line_items_cstm` (
  `id_c` char(36) NOT NULL,
  `likely_amount_currency_c` varchar(100) DEFAULT 'unit price 1',
  `campaign_id_c` char(36) DEFAULT NULL,
  `primary_team_c` tinyint(1) DEFAULT '0',
  `discount_percentage_c` decimal(18,2) DEFAULT NULL,
  `stage_date_test_c` datetime DEFAULT NULL,
  `sales_stage_rank_c` int(255) DEFAULT NULL,
  `sent_product_information_c` datetime DEFAULT NULL,
  `holdings_comparison_c` datetime DEFAULT NULL,
  `appointment_scheduled_c` datetime DEFAULT NULL,
  `webinar_conducted_c` datetime DEFAULT NULL,
  `trial_in_progress_c` datetime DEFAULT NULL,
  `sent_quote_c` datetime DEFAULT NULL,
  `quote_follow_up_c` datetime DEFAULT NULL,
  `sent_proposal_c` datetime DEFAULT NULL,
  `proposal_follow_up_c` datetime DEFAULT NULL,
  `sent_contract_c` datetime DEFAULT NULL,
  `contract_negotiation_c` datetime DEFAULT NULL,
  `contract_follow_up_c` datetime DEFAULT NULL,
  `contract_received_c` datetime DEFAULT NULL,
  `contract_confirmed_c` datetime DEFAULT NULL,
  `closed_won_c` datetime DEFAULT NULL,
  `closed_lost_c` datetime DEFAULT NULL,
  `unqualified_c` datetime DEFAULT NULL,
  `customer_meeting_held_c` datetime DEFAULT NULL,
  `full_fees_c` decimal(26,6) DEFAULT '0.000000',
  `consortium_negotiation_type_c` varchar(100) DEFAULT NULL,
  `ith_entitlements_id_c` char(36) DEFAULT NULL,
  `discount_percentage_select_c` tinyint(1) DEFAULT '0',
  `opportunity_won_reason_c` varchar(100) DEFAULT NULL,
  `opportunity_won_notes_c` text,
  `opportunity_lost_notes_c` text,
  `opportunity_lost_reason_c` varchar(100) DEFAULT NULL,
  `one_time_fee_c` varchar(100) DEFAULT NULL,
  `ongoing_fee_c` varchar(100) DEFAULT NULL,
  `one_time_fee_amount_c` decimal(26,6) DEFAULT '0.000000',
  `one_time_fee_savings_c` decimal(18,2) DEFAULT '0.00',
  `ongoing_fee_amount_c` decimal(26,6) DEFAULT '0.000000',
  `ongoing_fee_savings_c` decimal(18,2) DEFAULT '0.00',
  `one_time_payment_c` tinyint(1) DEFAULT '0',
  `acf_spread_c` tinyint(1) DEFAULT NULL,
  `one_time_fee_description_c` text,
  `ongoing_fee_description_c` text,
  `savings_types_c` text,
  `one_time_fee_total_c` decimal(26,6) DEFAULT NULL,
  `ongoing_fee_total_c` decimal(26,6) DEFAULT NULL,
  `one_time_fee_forecasted_c` decimal(26,6) DEFAULT NULL,
  `ongoing_fee_forecasted_c` decimal(26,6) DEFAULT NULL,
  `subscription_agent_c` varchar(100) DEFAULT NULL,
  `gap_analysis_completed_c` datetime DEFAULT NULL,
  `receive_request_information_c` datetime DEFAULT NULL,
  `provide_turnaway_statistics_c` datetime DEFAULT NULL,
  `confirm_budget_availability_c` datetime DEFAULT NULL,
  `confirm_close_date_c` datetime DEFAULT NULL,
  `confirm_buying_influences_c` datetime DEFAULT NULL,
  `final_pricing_confirmation_c` datetime DEFAULT NULL,
  `demo_conducted_c` datetime DEFAULT NULL,
  `invoiced_c` datetime DEFAULT NULL,
  `next_activity_c` text,
  `acf_amoritization_c` varchar(100) DEFAULT NULL,
  `region_c` varchar(255) DEFAULT NULL,
  `inst_part_coordinator_c` varchar(255) DEFAULT NULL,
  `director_of_inst_part_c` varchar(255) DEFAULT NULL,
  `country_c` varchar(255) DEFAULT NULL,
  `service_c` varchar(100) DEFAULT NULL,
  `product_line_c` varchar(100) DEFAULT NULL,
  `invoiced_status_c` tinyint(1) DEFAULT NULL,
  `account_ranking_c` varchar(255) DEFAULT NULL,
  `purchase_decision_quarter_c` varchar(255) DEFAULT NULL,
  `city_c` varchar(255) DEFAULT NULL,
  `state_c` varchar(255) DEFAULT NULL,
  `min_coll_thold_wav_c` tinyint(1) DEFAULT NULL,
  `legacy_activity_status_c` varchar(255) DEFAULT NULL,
  `override_probability_c` tinyint(1) DEFAULT NULL,
  `lic_agent_account_ranking_c` varchar(255) DEFAULT NULL,
  `ideal_customer_profile_rank_c` varchar(255) DEFAULT NULL,
  `economic_buyer_c` varchar(255) DEFAULT NULL,
  `technical_buyer_c` varchar(255) DEFAULT NULL,
  `user_buyer_c` varchar(255) DEFAULT NULL,
  `coach_c` varchar(255) DEFAULT NULL,
  `eco_buyer_influence_deg_c` varchar(255) DEFAULT NULL,
  `tech_buyer_influence_deg_c` varchar(255) DEFAULT NULL,
  `user_buyer_influence_deg_c` varchar(255) DEFAULT NULL,
  `coach_influence_deg_c` varchar(255) DEFAULT NULL,
  `eco_buyer_mode_c` varchar(255) DEFAULT NULL,
  `tech_buyer_mode_c` varchar(255) DEFAULT NULL,
  `user_buyer_mode_c` varchar(255) DEFAULT NULL,
  `coach_mode_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `modules` text,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_role_id_del` (`id`,`deleted`),
  KEY `idx_role_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `roles_modules`
--

DROP TABLE IF EXISTS `roles_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_modules` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `module_id` varchar(36) DEFAULT NULL,
  `allow` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_role_id` (`role_id`),
  KEY `idx_module_id` (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `roles_users`
--

DROP TABLE IF EXISTS `roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ru_role_id` (`role_id`),
  KEY `idx_ru_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `saved_reports`
--

DROP TABLE IF EXISTS `saved_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saved_reports` (
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `module` varchar(255) DEFAULT NULL,
  `report_type` varchar(255) DEFAULT NULL,
  `content` longtext,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `is_published` tinyint(1) DEFAULT '0',
  `chart_type` varchar(36) DEFAULT 'none',
  `schedule_type` varchar(3) DEFAULT 'pro',
  `favorite` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_saved_reports_tmst_id` (`team_set_id`),
  KEY `idx_rep_owner_module_name` (`assigned_user_id`,`name`,`deleted`),
  KEY `idx_savedreport_module` (`module`),
  KEY `idx_savedreport_date_entered` (`date_entered`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `saved_search`
--

DROP TABLE IF EXISTS `saved_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saved_search` (
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `search_module` varchar(150) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` text,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `idx_saved_search_tmst_id` (`team_set_id`),
  KEY `idx_desc` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `schedulers`
--

DROP TABLE IF EXISTS `schedulers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedulers` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `job` varchar(255) DEFAULT NULL,
  `date_time_start` datetime DEFAULT NULL,
  `date_time_end` datetime DEFAULT NULL,
  `job_interval` varchar(100) DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `catch_up` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `schedulersmod` (`date_modified`),
  KEY `idx_schedule` (`date_time_start`,`deleted`),
  KEY `idx_scheduler_job_interval` (`job_interval`),
  KEY `idx_scheduler_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `schedulers_times`
--

DROP TABLE IF EXISTS `schedulers_times`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedulers_times` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `scheduler_id` char(36) NOT NULL,
  `execute_time` datetime DEFAULT NULL,
  `status` varchar(25) DEFAULT 'ready',
  PRIMARY KEY (`id`),
  KEY `idx_scheduler_id` (`scheduler_id`,`execute_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `session_active`
--

DROP TABLE IF EXISTS `session_active`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `session_active` (
  `id` char(36) NOT NULL,
  `session_id` varchar(100) DEFAULT NULL,
  `last_request_time` datetime DEFAULT NULL,
  `session_type` varchar(100) DEFAULT NULL,
  `is_violation` tinyint(1) DEFAULT '0',
  `num_active_sessions` int(11) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_session_id` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `session_history`
--

DROP TABLE IF EXISTS `session_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `session_history` (
  `id` char(36) NOT NULL,
  `session_id` varchar(100) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `last_request_time` datetime DEFAULT NULL,
  `session_type` varchar(100) DEFAULT NULL,
  `is_violation` tinyint(1) DEFAULT '0',
  `num_active_sessions` int(11) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `shippers`
--

DROP TABLE IF EXISTS `shippers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shippers` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) NOT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_order` int(4) DEFAULT NULL,
  `default_cost` decimal(26,6) DEFAULT NULL,
  `default_cost_usdollar` decimal(26,6) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_shippers` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `styleguide`
--

DROP TABLE IF EXISTS `styleguide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `styleguide` (
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `facebook` varchar(100) DEFAULT NULL,
  `twitter` varchar(100) DEFAULT NULL,
  `googleplus` varchar(100) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `currency_id` char(36) DEFAULT '-99',
  `list_price` decimal(26,6) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `birthdate` datetime DEFAULT NULL,
  `secret_password` varchar(255) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `radio_button_group` varchar(255) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `styleguidemod` (`date_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscriptions` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `subscriptionsmod` (`date_modified`),
  KEY `subscription_parent` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sugarfavorites`
--

DROP TABLE IF EXISTS `sugarfavorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sugarfavorites` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `record_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sugarfavoritesmod` (`date_modified`),
  KEY `idx_favs_date_entered` (`date_entered`,`deleted`),
  KEY `idx_favs_user_module` (`modified_user_id`,`module`,`deleted`),
  KEY `idx_favs_module_record_deleted` (`module`,`record_id`,`deleted`),
  KEY `idx_favs_id_record_id` (`record_id`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `systems`
--

DROP TABLE IF EXISTS `systems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systems` (
  `id` char(36) NOT NULL,
  `system_id` int(11) NOT NULL AUTO_INCREMENT,
  `system_key` varchar(36) DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `last_connect_date` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT 'Active',
  `num_syncs` int(11) DEFAULT '0',
  `system_name` varchar(100) DEFAULT NULL,
  `install_method` varchar(100) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `system_id` (`system_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `date_due_flag` tinyint(1) DEFAULT '0',
  `date_due` datetime DEFAULT NULL,
  `date_start_flag` tinyint(1) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tasksmod` (`date_modified`),
  KEY `idx_tasks_tmst_id` (`team_set_id`),
  KEY `idx_tsk_name` (`name`),
  KEY `idx_task_con_del` (`contact_id`,`deleted`),
  KEY `idx_task_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_task_assigned` (`assigned_user_id`),
  KEY `idx_task_status` (`status`),
  KEY `idx_task_date_due` (`date_due`),
  KEY `idx_task_date_entered` (`date_entered`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tasks_cstm`
--

DROP TABLE IF EXISTS `tasks_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks_cstm` (
  `id_c` char(36) NOT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `taxrates`
--

DROP TABLE IF EXISTS `taxrates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taxrates` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `value` decimal(7,5) DEFAULT NULL,
  `list_order` int(4) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_taxrates` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team_memberships`
--

DROP TABLE IF EXISTS `team_memberships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_memberships` (
  `id` char(36) NOT NULL,
  `team_id` char(36) DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `explicit_assign` tinyint(1) DEFAULT '0',
  `implicit_assign` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_team_membership` (`user_id`,`team_id`),
  KEY `idx_teammemb_team_user` (`team_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team_notices`
--

DROP TABLE IF EXISTS `team_notices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_notices` (
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `status` varchar(100) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `url_title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_team_notices_tmst_id` (`team_set_id`),
  KEY `idx_team_notice` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team_sets`
--

DROP TABLE IF EXISTS `team_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_sets` (
  `id` char(36) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `team_md5` varchar(32) DEFAULT NULL,
  `team_count` int(11) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `created_by` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_team_sets_md5` (`team_md5`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team_sets_groups`
--

DROP TABLE IF EXISTS `team_sets_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_sets_groups` (
  `team_set_id` char(36) NOT NULL DEFAULT '',
  `team_ids` char(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`team_set_id`,`team_ids`) USING HASH,
  UNIQUE KEY `UNIQUES` (`team_set_id`,`team_ids`),
  FULLTEXT KEY `TEAM_IDS` (`team_ids`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team_sets_modules`
--

DROP TABLE IF EXISTS `team_sets_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_sets_modules` (
  `id` char(36) NOT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `module_table_name` varchar(128) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_team_sets_modules` (`team_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team_sets_teams`
--

DROP TABLE IF EXISTS `team_sets_teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_sets_teams` (
  `id` char(36) NOT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `team_id` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ud_set_id` (`team_set_id`,`team_id`),
  KEY `idx_ud_team_id` (`team_id`),
  KEY `idx_ud_team_set_id` (`team_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams` (
  `id` char(36) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `name_2` varchar(128) DEFAULT NULL,
  `associated_user_id` char(36) DEFAULT NULL,
  `private` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `teamsmod` (`date_modified`),
  KEY `idx_team_del` (`name`),
  KEY `idx_team_del_name` (`deleted`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `timeperiods`
--

DROP TABLE IF EXISTS `timeperiods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timeperiods` (
  `id` char(36) NOT NULL,
  `name` varchar(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `start_date_timestamp` int(14) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `end_date_timestamp` int(14) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `is_fiscal` tinyint(1) DEFAULT '0',
  `is_fiscal_year` tinyint(1) DEFAULT '0',
  `leaf_cycle` int(2) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_timestamps` (`id`,`start_date_timestamp`,`end_date_timestamp`),
  KEY `idx_timeperiod_name` (`name`),
  KEY `idx_timeperiod_start_date` (`start_date`),
  KEY `idx_timeperiod_end_date` (`end_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tracker`
--

DROP TABLE IF EXISTS `tracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `monitor_id` char(36) NOT NULL,
  `user_id` char(36) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `item_id` char(36) DEFAULT NULL,
  `item_summary` varchar(255) DEFAULT NULL,
  `team_id` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `session_id` varchar(36) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_tracker_iid` (`item_id`),
  KEY `idx_tracker_userid_vis_id` (`user_id`,`visible`,`id`),
  KEY `idx_tracker_userid_itemid_vis` (`user_id`,`item_id`,`visible`),
  KEY `idx_tracker_monitor_id` (`monitor_id`),
  KEY `idx_tracker_date_modified` (`date_modified`)
) ENGINE=InnoDB AUTO_INCREMENT=5730690 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tracker_perf`
--

DROP TABLE IF EXISTS `tracker_perf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracker_perf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `monitor_id` char(36) NOT NULL,
  `server_response_time` double DEFAULT NULL,
  `db_round_trips` int(6) DEFAULT NULL,
  `files_opened` int(6) DEFAULT NULL,
  `memory_usage` int(12) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_tracker_perf_mon_id` (`monitor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tracker_queries`
--

DROP TABLE IF EXISTS `tracker_queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracker_queries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `query_id` char(36) NOT NULL,
  `text` text,
  `query_hash` varchar(36) DEFAULT NULL,
  `sec_total` double DEFAULT NULL,
  `sec_avg` double DEFAULT NULL,
  `run_count` int(6) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_tracker_queries_query_hash` (`query_hash`),
  KEY `idx_tracker_queries_query_id` (`query_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tracker_sessions`
--

DROP TABLE IF EXISTS `tracker_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracker_sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` varchar(36) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `seconds` int(9) DEFAULT '0',
  `client_ip` varchar(45) DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `round_trips` int(5) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_tracker_sessions_s_id` (`session_id`),
  KEY `idx_tracker_sessions_uas_id` (`user_id`,`active`,`session_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18265 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tracker_tracker_queries`
--

DROP TABLE IF EXISTS `tracker_tracker_queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracker_tracker_queries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `monitor_id` char(36) DEFAULT NULL,
  `query_id` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_tracker_tq_monitor` (`monitor_id`),
  KEY `idx_tracker_tq_query` (`query_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `upgrade_history`
--

DROP TABLE IF EXISTS `upgrade_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upgrade_history` (
  `id` char(36) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `md5sum` varchar(32) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `version` varchar(64) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `id_name` varchar(255) DEFAULT NULL,
  `manifest` longtext,
  `date_entered` datetime DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `upgrade_history_md5_uk` (`md5sum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_preferences`
--

DROP TABLE IF EXISTS `user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_preferences` (
  `id` char(36) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` longtext,
  PRIMARY KEY (`id`),
  KEY `idx_userprefnamecat` (`assigned_user_id`,`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `user_hash` varchar(255) DEFAULT NULL,
  `system_generated_password` tinyint(1) DEFAULT NULL,
  `pwd_last_changed` datetime DEFAULT NULL,
  `authenticate_id` varchar(100) DEFAULT NULL,
  `sugar_login` tinyint(1) DEFAULT '1',
  `picture` varchar(255) DEFAULT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT '0',
  `external_auth_only` tinyint(1) DEFAULT '0',
  `receive_notifications` tinyint(1) DEFAULT '1',
  `description` text,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `phone_home` varchar(50) DEFAULT NULL,
  `phone_mobile` varchar(50) DEFAULT NULL,
  `phone_work` varchar(50) DEFAULT NULL,
  `phone_other` varchar(50) DEFAULT NULL,
  `phone_fax` varchar(50) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `address_street` varchar(150) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `default_team` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `portal_only` tinyint(1) DEFAULT '0',
  `show_on_employees` tinyint(1) DEFAULT '1',
  `employee_status` varchar(100) DEFAULT NULL,
  `messenger_id` varchar(100) DEFAULT NULL,
  `messenger_type` varchar(100) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `is_group` tinyint(1) DEFAULT NULL,
  `preferred_language` varchar(255) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_name` (`user_name`,`is_group`,`status`,`last_name`,`first_name`,`id`),
  KEY `idx_users_reports_to_id` (`reports_to_id`,`id`),
  KEY `idx_users_tmst_id` (`team_set_id`),
  KEY `idx_user_title` (`title`),
  KEY `idx_user_department` (`department`),
  KEY `idx_last_login` (`last_login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users_cstm`
--

DROP TABLE IF EXISTS `users_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_cstm` (
  `id_c` char(36) NOT NULL,
  `default_team_id_c` char(36) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users_feeds`
--

DROP TABLE IF EXISTS `users_feeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_feeds` (
  `user_id` varchar(36) DEFAULT NULL,
  `feed_id` varchar(36) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  KEY `idx_ud_user_id` (`user_id`,`feed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users_holidays`
--

DROP TABLE IF EXISTS `users_holidays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_holidays` (
  `id` varchar(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `holiday_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_user_holi_user` (`user_id`),
  KEY `idx_user_holi_holi` (`holiday_id`),
  KEY `users_quotes_alt` (`user_id`,`holiday_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users_last_import`
--

DROP TABLE IF EXISTS `users_last_import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_last_import` (
  `id` char(36) NOT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `import_module` varchar(36) DEFAULT NULL,
  `bean_type` varchar(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users_password_link`
--

DROP TABLE IF EXISTS `users_password_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_password_link` (
  `id` char(36) NOT NULL,
  `username` varchar(36) DEFAULT NULL,
  `date_generated` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users_signatures`
--

DROP TABLE IF EXISTS `users_signatures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_signatures` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `signature` text,
  `signature_html` text,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `idx_usersig_uid` (`user_id`),
  KEY `users_signaturesmod` (`date_modified`),
  KEY `idx_usersig_created_by` (`created_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vcals`
--

DROP TABLE IF EXISTS `vcals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vcals` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`),
  KEY `idx_vcal` (`type`,`user_id`,`source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `versions`
--

DROP TABLE IF EXISTS `versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `versions` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_version` varchar(255) DEFAULT NULL,
  `db_version` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_version` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `w_accounts`
--

DROP TABLE IF EXISTS `w_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `w_accounts` (
  `sugar_id` char(36) CHARACTER SET utf8 NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `talisma_id` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  KEY `idx` (`sugar_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `w_cases`
--

DROP TABLE IF EXISTS `w_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `w_cases` (
  `sugar_id` char(36) CHARACTER SET utf8 NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `talisma_id` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  KEY `idx` (`sugar_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `w_contacts`
--

DROP TABLE IF EXISTS `w_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `w_contacts` (
  `sugar_id` char(36) CHARACTER SET utf8 NOT NULL,
  `name` varchar(201) CHARACTER SET utf8 DEFAULT NULL,
  `talisma_id` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  KEY `idx` (`sugar_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `w_emails`
--

DROP TABLE IF EXISTS `w_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `w_emails` (
  `sugar_id` char(36) CHARACTER SET utf8 NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `talisma_id` int(1) NOT NULL DEFAULT '0',
  KEY `idx` (`sugar_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `w_licenses`
--

DROP TABLE IF EXISTS `w_licenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `w_licenses` (
  `sugar_id` char(36) CHARACTER SET utf8 NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `talisma_id` int(1) NOT NULL DEFAULT '0',
  KEY `idx` (`sugar_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `w_opps`
--

DROP TABLE IF EXISTS `w_opps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `w_opps` (
  `sugar_id` char(36) CHARACTER SET utf8 NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `talisma_id` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  KEY `idx` (`sugar_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `w_productlines`
--

DROP TABLE IF EXISTS `w_productlines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `w_productlines` (
  `sugar_id` char(36) CHARACTER SET utf8 NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `talisma_id` int(1) NOT NULL DEFAULT '0',
  KEY `idx` (`sugar_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weblogichooks`
--

DROP TABLE IF EXISTS `weblogichooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weblogichooks` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `webhook_target_module` varchar(255) DEFAULT NULL,
  `request_method` varchar(255) DEFAULT 'POST',
  `url` varchar(255) DEFAULT NULL,
  `trigger_event` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `weblogichooksmod` (`date_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `workflow`
--

DROP TABLE IF EXISTS `workflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `base_module` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `description` text,
  `type` varchar(100) DEFAULT NULL,
  `fire_order` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `record_type` varchar(100) DEFAULT NULL,
  `list_order_y` int(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_workflow` (`name`,`deleted`),
  KEY `idx_workflow_type` (`type`),
  KEY `idx_workflow_base_module` (`base_module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `workflow_actions`
--

DROP TABLE IF EXISTS `workflow_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_actions` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `field` varchar(50) DEFAULT NULL,
  `value` text,
  `set_type` varchar(10) DEFAULT NULL,
  `adv_type` varchar(10) DEFAULT NULL,
  `parent_id` char(36) NOT NULL,
  `ext1` varchar(50) DEFAULT NULL,
  `ext2` varchar(50) DEFAULT NULL,
  `ext3` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_action` (`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `workflow_actionshells`
--

DROP TABLE IF EXISTS `workflow_actionshells`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_actionshells` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `action_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) NOT NULL,
  `parameters` varchar(255) DEFAULT NULL,
  `rel_module` varchar(50) DEFAULT NULL,
  `rel_module_type` varchar(10) DEFAULT NULL,
  `action_module` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_actionshell` (`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `workflow_alerts`
--

DROP TABLE IF EXISTS `workflow_alerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_alerts` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `field_value` varchar(50) DEFAULT NULL,
  `rel_email_value` varchar(50) DEFAULT NULL,
  `rel_module1` varchar(255) DEFAULT NULL,
  `rel_module2` varchar(255) DEFAULT NULL,
  `rel_module1_type` varchar(10) DEFAULT NULL,
  `rel_module2_type` varchar(10) DEFAULT NULL,
  `where_filter` tinyint(1) DEFAULT '0',
  `user_type` varchar(100) DEFAULT NULL,
  `array_type` varchar(100) DEFAULT NULL,
  `relate_type` varchar(100) DEFAULT NULL,
  `address_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) NOT NULL,
  `user_display_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_workflowalerts` (`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `workflow_alertshells`
--

DROP TABLE IF EXISTS `workflow_alertshells`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_alertshells` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `alert_text` text,
  `alert_type` varchar(100) DEFAULT NULL,
  `source_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) NOT NULL,
  `custom_template_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_workflowalertshell` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `workflow_schedules`
--

DROP TABLE IF EXISTS `workflow_schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_schedules` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `date_expired` datetime DEFAULT NULL,
  `workflow_id` char(36) DEFAULT NULL,
  `target_module` varchar(50) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `parameters` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_wkfl_schedule` (`workflow_id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `workflow_triggershells`
--

DROP TABLE IF EXISTS `workflow_triggershells`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_triggershells` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `field` varchar(50) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `frame_type` varchar(15) DEFAULT NULL,
  `eval` text,
  `parent_id` char(36) NOT NULL,
  `show_past` tinyint(1) DEFAULT '0',
  `rel_module` varchar(255) DEFAULT NULL,
  `rel_module_type` varchar(10) DEFAULT NULL,
  `parameters` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wsys1_accounts_contacts`
--

DROP TABLE IF EXISTS `wsys1_accounts_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wsys1_accounts_contacts` (
  `id` varchar(36) CHARACTER SET utf8 NOT NULL,
  `contact_id` varchar(36) CHARACTER SET utf8 DEFAULT NULL,
  `account_id` varchar(36) CHARACTER SET utf8 DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `primary_account` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wsys_accounts_contacts`
--

DROP TABLE IF EXISTS `wsys_accounts_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wsys_accounts_contacts` (
  `id` varchar(36) CHARACTER SET utf8 NOT NULL,
  `contact_id` varchar(36) CHARACTER SET utf8 DEFAULT NULL,
  `account_id` varchar(36) CHARACTER SET utf8 DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `primary_account` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wsys_accounts_legacy_licenses`
--

DROP TABLE IF EXISTS `wsys_accounts_legacy_licenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wsys_accounts_legacy_licenses` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `team_id` char(36) DEFAULT NULL,
  `team_set_id` char(36) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wsys_accounts_legacy_licensesmod` (`date_modified`),
  KEY `idx_wsys_accounts_legacy_licenses_tmst_id` (`team_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wsys_accounts_legacy_licenses_audit`
--

DROP TABLE IF EXISTS `wsys_accounts_legacy_licenses_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wsys_accounts_legacy_licenses_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_wsys_accounts_legacy_licenses_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wsys_accounts_legacy_licenses_cstm`
--

DROP TABLE IF EXISTS `wsys_accounts_legacy_licenses_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wsys_accounts_legacy_licenses_cstm` (
  `id_c` char(36) NOT NULL,
  `acct_id_c` varchar(255) DEFAULT NULL,
  `license_id_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wsys_accounts_opportunities`
--

DROP TABLE IF EXISTS `wsys_accounts_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wsys_accounts_opportunities` (
  `id` varchar(36) CHARACTER SET utf8 NOT NULL,
  `opportunity_id` varchar(36) CHARACTER SET utf8 DEFAULT NULL,
  `account_id` varchar(36) CHARACTER SET utf8 DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wsys_acounts_contacts_new`
--

DROP TABLE IF EXISTS `wsys_acounts_contacts_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wsys_acounts_contacts_new` (
  `id` varchar(36) CHARACTER SET utf8 NOT NULL,
  `contact_id` varchar(36) CHARACTER SET utf8 DEFAULT NULL,
  `account_id` varchar(36) CHARACTER SET utf8 DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `primary_account` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wsys_cases_teams_updates`
--

DROP TABLE IF EXISTS `wsys_cases_teams_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wsys_cases_teams_updates` (
  `id` char(36) NOT NULL,
  `team_set` varchar(32) DEFAULT NULL,
  KEY `teammd5` (`team_set`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wsys_contacts`
--

DROP TABLE IF EXISTS `wsys_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wsys_contacts` (
  `id` char(36) CHARACTER SET utf8 NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8 DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8 DEFAULT NULL,
  `description` text CHARACTER SET utf8,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8 DEFAULT NULL,
  `team_id` char(36) CHARACTER SET utf8 DEFAULT NULL,
  `team_set_id` char(36) CHARACTER SET utf8 DEFAULT NULL,
  `salutation` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `first_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `last_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `facebook` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `twitter` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `googleplus` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `department` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `phone_mobile` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `phone_work` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `phone_other` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `phone_fax` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `primary_address_street` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `primary_address_city` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `primary_address_state` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `primary_address_postalcode` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `primary_address_country` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `alt_address_street` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `alt_address_city` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `alt_address_state` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `alt_address_postalcode` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `alt_address_country` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `assistant` varchar(75) CHARACTER SET utf8 DEFAULT NULL,
  `assistant_phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `picture` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `lead_source` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `dnb_principal_id` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `reports_to_id` char(36) CHARACTER SET utf8 DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `portal_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `portal_active` tinyint(1) DEFAULT '0',
  `portal_password` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `portal_app` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `preferred_language` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `campaign_id` char(36) CHARACTER SET utf8 DEFAULT NULL,
  `mkto_sync` tinyint(1) DEFAULT '0',
  `mkto_id` int(11) DEFAULT NULL,
  `mkto_lead_score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wsys_contacts_cstm`
--

DROP TABLE IF EXISTS `wsys_contacts_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wsys_contacts_cstm` (
  `id_c` char(36) CHARACTER SET utf8 NOT NULL,
  `extension_c` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `home_address_modifier_c` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `contact_web_c` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `spammer_c` tinyint(1) DEFAULT '0',
  `service_product_primary_c` text CHARACTER SET utf8,
  `service_product_billing_c` text CHARACTER SET utf8,
  `service_product_renewals_c` text CHARACTER SET utf8,
  `service_product_sub_agent_c` text CHARACTER SET utf8,
  `service_product_legal_c` text CHARACTER SET utf8,
  `buyer_influence_c` text CHARACTER SET utf8,
  `communication_preferences_c` text CHARACTER SET utf8,
  `interest_c` text CHARACTER SET utf8,
  `marketing_tag_c` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `memberhip_affiliation_c` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `translation_language_c` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `contact_id_c` char(36) CHARACTER SET utf8 DEFAULT NULL,
  `unresponsive_contact_c` tinyint(1) DEFAULT '0',
  `myjstor_institution_c` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `myjstor_username_c` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `myjstor_account_created_c` date DEFAULT NULL,
  `ias_start_date_c` date DEFAULT NULL,
  `ias_end_date_c` date DEFAULT NULL,
  `last_updated_c` date DEFAULT NULL,
  `offer_code_c` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `account_id_c` char(36) CHARACTER SET utf8 DEFAULT NULL,
  `subscriber_id_c` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `subscription_year_c` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ias_title_c` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `token_c` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `token_activated_c` tinyint(1) DEFAULT '0',
  `token_domain_c` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `contact_up_to_date_as_of_c` date DEFAULT NULL,
  `portico_newsletter_type_c` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `portico_preferred_cont_meth_c` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `receive_portico_newsletter_c` tinyint(1) DEFAULT '0',
  `verified_c` tinyint(1) DEFAULT '0',
  `user_id_c` char(36) CHARACTER SET utf8 DEFAULT NULL,
  `primary_team_c` tinyint(1) DEFAULT '0',
  `user_id1_c` char(36) CHARACTER SET utf8 DEFAULT NULL,
  `user_id2_c` char(36) CHARACTER SET utf8 DEFAULT NULL,
  `licensing_representative_c` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `service_products_list_sub_c` text CHARACTER SET utf8,
  `service_products_sub_date_c` date DEFAULT NULL,
  `influence_service_c` text CHARACTER SET utf8,
  `influence_product_line_c` text CHARACTER SET utf8,
  `degree_influence_c` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `roles_c` text CHARACTER SET utf8,
  `status_c` varchar(100) CHARACTER SET utf8 DEFAULT 'Active',
  `user_services_business_admin_c` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `shared_access_token_contacts_c` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `shared_access_token_c` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `test_c` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `all_buyer_influence_c` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `jstor_buyer_influence_c` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `books_buyer_influence_c` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `csp_buyer_influence_c` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `portico_buyer_influence_c` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `primary_source_buyer_influen_c` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `all_degree_influence_c` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `jstor_degree_influence_c` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `books_degree_influence_c` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `csp_degree_influence_c` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `portico_degree_influence_c` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `primary_source_degree_influe_c` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `uk_country_c` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `dear_name_c` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ithaka_sr_sub_date_c` date DEFAULT NULL,
  `ithaka_sub_date_c` date DEFAULT NULL,
  `jstor_plant_sub_date_c` date DEFAULT NULL,
  `jstor_sub_date_c` date DEFAULT NULL,
  `myjstor_sub_date_c` date DEFAULT NULL,
  `portico_sub_date_c` date DEFAULT NULL,
  `institution_c` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `middle_name_c` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `country_list_c` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `state_list_c` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `subject_area_special_c` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `myjstor_position_or_academic_c` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `myjstor_primary_area_c` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wsys_contacts_roles2`
--

DROP TABLE IF EXISTS `wsys_contacts_roles2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wsys_contacts_roles2` (
  `id` int(11) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `roles` longtext,
  KEY `cont_id` (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wsys_email_addr_bean_rel`
--

DROP TABLE IF EXISTS `wsys_email_addr_bean_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wsys_email_addr_bean_rel` (
  `id` char(36) CHARACTER SET utf8 NOT NULL,
  `email_address_id` char(36) CHARACTER SET utf8 NOT NULL,
  `bean_id` char(36) CHARACTER SET utf8 NOT NULL,
  `bean_module` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `primary_address` tinyint(1) DEFAULT '0',
  `reply_to_address` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  KEY `email_addridx` (`email_address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wsys_email_addresses`
--

DROP TABLE IF EXISTS `wsys_email_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wsys_email_addresses` (
  `id` char(36) CHARACTER SET utf8 NOT NULL,
  `email_address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `email_address_caps` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `invalid_email` tinyint(1) DEFAULT '0',
  `opt_out` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wsys_fts_queue`
--

DROP TABLE IF EXISTS `wsys_fts_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wsys_fts_queue` (
  `bean_id` char(36) CHARACTER SET utf8 DEFAULT NULL,
  `bean_module` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `processed` tinyint(1) DEFAULT '0',
  `id` char(36) CHARACTER SET utf8 NOT NULL,
  `date_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wsys_ith_entitlements`
--

DROP TABLE IF EXISTS `wsys_ith_entitlements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wsys_ith_entitlements` (
  `id` char(36) CHARACTER SET utf8 NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8 DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8 DEFAULT NULL,
  `description` text CHARACTER SET utf8,
  `deleted` tinyint(1) DEFAULT '0',
  `team_id` char(36) CHARACTER SET utf8 DEFAULT NULL,
  `team_set_id` char(36) CHARACTER SET utf8 DEFAULT NULL,
  `assigned_user_id` char(36) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wsys_ith_roles_bu`
--

DROP TABLE IF EXISTS `wsys_ith_roles_bu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wsys_ith_roles_bu` (
  `id` char(36) CHARACTER SET utf8 NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wsys_ith_salescatalog`
--

DROP TABLE IF EXISTS `wsys_ith_salescatalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wsys_ith_salescatalog` (
  `id` char(36) CHARACTER SET utf8 NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8 DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8 DEFAULT NULL,
  `description` text CHARACTER SET utf8,
  `deleted` tinyint(1) DEFAULT '0',
  `team_id` char(36) CHARACTER SET utf8 DEFAULT NULL,
  `team_set_id` char(36) CHARACTER SET utf8 DEFAULT NULL,
  `assigned_user_id` char(36) CHARACTER SET utf8 DEFAULT NULL,
  KEY `isc_id` (`id`),
  KEY `isc_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wsys_opportunities`
--

DROP TABLE IF EXISTS `wsys_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wsys_opportunities` (
  `id` char(36) CHARACTER SET utf8 NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) CHARACTER SET utf8 DEFAULT NULL,
  `created_by` char(36) CHARACTER SET utf8 DEFAULT NULL,
  `description` text CHARACTER SET utf8,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) CHARACTER SET utf8 DEFAULT NULL,
  `team_id` char(36) CHARACTER SET utf8 DEFAULT NULL,
  `team_set_id` char(36) CHARACTER SET utf8 DEFAULT NULL,
  `opportunity_type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `campaign_id` char(36) CHARACTER SET utf8 DEFAULT NULL,
  `lead_source` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `amount` decimal(26,6) DEFAULT NULL,
  `base_rate` decimal(26,6) DEFAULT NULL,
  `amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) CHARACTER SET utf8 DEFAULT '-99',
  `date_closed` date DEFAULT NULL,
  `date_closed_timestamp` int(11) DEFAULT NULL,
  `next_step` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `sales_stage` varchar(255) CHARACTER SET utf8 DEFAULT 'Prospecting',
  `sales_status` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `probability` double DEFAULT NULL,
  `best_case` decimal(26,6) DEFAULT NULL,
  `worst_case` decimal(26,6) DEFAULT NULL,
  `commit_stage` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `total_revenue_line_items` int(11) DEFAULT NULL,
  `closed_revenue_line_items` int(11) DEFAULT NULL,
  `mkto_sync` tinyint(1) DEFAULT '0',
  `mkto_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wsys_opportunities_cstm`
--

DROP TABLE IF EXISTS `wsys_opportunities_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wsys_opportunities_cstm` (
  `id_c` char(36) CHARACTER SET utf8 NOT NULL,
  `opportunity_win_reason_c` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `opportunity_win_notes_c` text CHARACTER SET utf8,
  `opportunity_loss_reason_c` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `opportunity_loss_notes_c` text CHARACTER SET utf8,
  `campaign_id_c` char(36) CHARACTER SET utf8 DEFAULT NULL,
  `aaf_c` decimal(26,6) DEFAULT NULL,
  `acf_c` decimal(26,6) DEFAULT NULL,
  `agent_tracking_c` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `business_unit_c` varchar(100) CHARACTER SET utf8 DEFAULT 'SP List 1',
  `consortium_negotiation_type_c` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `full_fees_c` decimal(26,6) DEFAULT NULL,
  `number_of_titles_c` int(255) DEFAULT NULL,
  `subscription_agent_c` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `csp_holding_comp_req_c` date DEFAULT NULL,
  `prt_holding_comp_req_c` date DEFAULT NULL,
  `csp_holding_comp_prv_c` date DEFAULT NULL,
  `prt_holding_comp_prv_c` date DEFAULT NULL,
  `prt_holding_comp_don_c` date DEFAULT NULL,
  `participant_meeting_c` date DEFAULT NULL,
  `preview_sent_c` date DEFAULT NULL,
  `proposal_follow_up_c` date DEFAULT NULL,
  `schedule_appointment_c` date DEFAULT NULL,
  `send_contract_c` date DEFAULT NULL,
  `send_product_information_c` date DEFAULT NULL,
  `send_proposal_c` date DEFAULT NULL,
  `send_quotation_c` date DEFAULT NULL,
  `send_standard_proposal_c` date DEFAULT NULL,
  `primary_team_c` tinyint(1) DEFAULT '0',
  `service_c` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `product_line_c` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `account_id_c` char(36) CHARACTER SET utf8 DEFAULT NULL,
  `probability_value_c` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `total_probability_c` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `override_probability_c` int(255) DEFAULT NULL,
  `opportunity_stalled_c` tinyint(1) DEFAULT '0',
  `total_stage_rank_c` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `override_stage_rank_c` int(255) DEFAULT NULL,
  `override_activity_status_c` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `purchase_decision_quarter_c` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `gap_analysis_ranking_c` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `cloned_opportunity_id_c` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `account_ranking_c` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `city_c` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `country_c` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `state_province_c` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `contact_id_c` char(36) CHARACTER SET utf8 DEFAULT NULL,
  `licensing_agent_c` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `one_time_fee_amount_c` decimal(26,6) DEFAULT NULL,
  `ongoing_fee_amount_c` decimal(26,6) DEFAULT NULL,
  `the_user_c` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `total_forecasted_amount_c` decimal(26,6) DEFAULT NULL,
  `follow_up_date_c` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wsys_team_sets`
--

DROP TABLE IF EXISTS `wsys_team_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wsys_team_sets` (
  `id` char(36) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `team_md5` varchar(32) DEFAULT NULL,
  `team_count` int(11) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `created_by` char(36) DEFAULT NULL,
  KEY `teammd5` (`team_md5`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wsys_update_cases`
--

DROP TABLE IF EXISTS `wsys_update_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wsys_update_cases` (
  `caseid` char(36) CHARACTER SET utf8 NOT NULL,
  `teamsetid` char(36) CHARACTER SET utf8 NOT NULL,
  `teamid` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  KEY `caseidx` (`caseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wsys_update_cases2`
--

DROP TABLE IF EXISTS `wsys_update_cases2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wsys_update_cases2` (
  `caseid` char(36) CHARACTER SET utf8 NOT NULL,
  `teamsetid` char(36) CHARACTER SET utf8 NOT NULL,
  `teamid` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  KEY `caseidx` (`caseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'sugar_ws'
--

--
-- Dumping routines for database 'sugar_ws'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-03-20 12:11:17
