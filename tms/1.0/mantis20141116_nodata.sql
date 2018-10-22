-- MySQL dump 10.10
--
-- Host: localhost    Database: istl_bugtracker
-- ------------------------------------------------------
-- Server version	5.0.26-Max-log

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
-- Table structure for table `mantis_bug_file_table`
--

DROP TABLE IF EXISTS `mantis_bug_file_table`;
CREATE TABLE `mantis_bug_file_table` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `bug_id` int(10) unsigned NOT NULL default '0',
  `title` varchar(250) NOT NULL default '',
  `description` varchar(250) NOT NULL default '',
  `diskfile` varchar(250) NOT NULL default '',
  `filename` varchar(250) NOT NULL default '',
  `folder` varchar(250) NOT NULL default '',
  `filesize` int(11) NOT NULL default '0',
  `file_type` varchar(250) NOT NULL default '',
  `date_added` datetime NOT NULL default '1970-01-01 00:00:01',
  `content` longblob,
  PRIMARY KEY  (`id`),
  KEY `idx_bug_file_bug_id` (`bug_id`),
  KEY `idx_diskfile` (`diskfile`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Table structure for table `mantis_bug_history_table`
--

DROP TABLE IF EXISTS `mantis_bug_history_table`;
CREATE TABLE `mantis_bug_history_table` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(10) unsigned NOT NULL default '0',
  `bug_id` int(10) unsigned NOT NULL default '0',
  `date_modified` datetime NOT NULL default '1970-01-01 00:00:01',
  `field_name` varchar(64) NOT NULL,
  `old_value` varchar(255) NOT NULL,
  `new_value` varchar(255) NOT NULL,
  `type` smallint(6) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_bug_history_bug_id` (`bug_id`),
  KEY `idx_history_user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4219 DEFAULT CHARSET=utf8;

--
-- Table structure for table `mantis_bug_monitor_table`
--

DROP TABLE IF EXISTS `mantis_bug_monitor_table`;
CREATE TABLE `mantis_bug_monitor_table` (
  `user_id` int(10) unsigned NOT NULL default '0',
  `bug_id` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`user_id`,`bug_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `mantis_bug_relationship_table`
--

DROP TABLE IF EXISTS `mantis_bug_relationship_table`;
CREATE TABLE `mantis_bug_relationship_table` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `source_bug_id` int(10) unsigned NOT NULL default '0',
  `destination_bug_id` int(10) unsigned NOT NULL default '0',
  `relationship_type` smallint(6) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_relationship_source` (`source_bug_id`),
  KEY `idx_relationship_destination` (`destination_bug_id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

--
-- Table structure for table `mantis_bug_table`
--

DROP TABLE IF EXISTS `mantis_bug_table`;
CREATE TABLE `mantis_bug_table` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `project_id` int(10) unsigned NOT NULL default '0',
  `reporter_id` int(10) unsigned NOT NULL default '0',
  `handler_id` int(10) unsigned NOT NULL default '0',
  `duplicate_id` int(10) unsigned NOT NULL default '0',
  `priority` smallint(6) NOT NULL default '30',
  `severity` smallint(6) NOT NULL default '50',
  `reproducibility` smallint(6) NOT NULL default '10',
  `status` smallint(6) NOT NULL default '10',
  `resolution` smallint(6) NOT NULL default '10',
  `projection` smallint(6) NOT NULL default '10',
  `category` varchar(64) NOT NULL default '',
  `date_submitted` datetime NOT NULL default '1970-01-01 00:00:01',
  `last_updated` datetime NOT NULL default '1970-01-01 00:00:01',
  `eta` smallint(6) NOT NULL default '10',
  `bug_text_id` int(10) unsigned NOT NULL default '0',
  `os` varchar(32) NOT NULL default '',
  `os_build` varchar(32) NOT NULL default '',
  `platform` varchar(32) NOT NULL default '',
  `version` varchar(64) NOT NULL default '',
  `fixed_in_version` varchar(64) NOT NULL default '',
  `build` varchar(32) NOT NULL default '',
  `profile_id` int(10) unsigned NOT NULL default '0',
  `view_state` smallint(6) NOT NULL default '10',
  `summary` varchar(128) NOT NULL default '',
  `sponsorship_total` int(11) NOT NULL default '0',
  `sticky` tinyint(4) NOT NULL default '0',
  `target_version` varchar(64) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `idx_bug_sponsorship_total` (`sponsorship_total`),
  KEY `idx_bug_fixed_in_version` (`fixed_in_version`),
  KEY `idx_bug_status` (`status`),
  KEY `idx_project` (`project_id`)
) ENGINE=MyISAM AUTO_INCREMENT=360 DEFAULT CHARSET=utf8;

--
-- Table structure for table `mantis_bug_tag_table`
--

DROP TABLE IF EXISTS `mantis_bug_tag_table`;
CREATE TABLE `mantis_bug_tag_table` (
  `bug_id` int(10) unsigned NOT NULL default '0',
  `tag_id` int(10) unsigned NOT NULL default '0',
  `user_id` int(10) unsigned NOT NULL default '0',
  `date_attached` datetime NOT NULL default '1970-01-01 00:00:01',
  PRIMARY KEY  (`bug_id`,`tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `mantis_bug_text_table`
--

DROP TABLE IF EXISTS `mantis_bug_text_table`;
CREATE TABLE `mantis_bug_text_table` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `description` longtext NOT NULL,
  `steps_to_reproduce` longtext NOT NULL,
  `additional_information` longtext NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=360 DEFAULT CHARSET=utf8;

--
-- Table structure for table `mantis_bugnote_table`
--

DROP TABLE IF EXISTS `mantis_bugnote_table`;
CREATE TABLE `mantis_bugnote_table` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `bug_id` int(10) unsigned NOT NULL default '0',
  `reporter_id` int(10) unsigned NOT NULL default '0',
  `bugnote_text_id` int(10) unsigned NOT NULL default '0',
  `view_state` smallint(6) NOT NULL default '10',
  `date_submitted` datetime NOT NULL default '1970-01-01 00:00:01',
  `last_modified` datetime NOT NULL default '1970-01-01 00:00:01',
  `note_type` int(11) default '0',
  `note_attr` varchar(250) default '',
  `time_tracking` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_bug` (`bug_id`),
  KEY `idx_last_mod` (`last_modified`)
) ENGINE=MyISAM AUTO_INCREMENT=849 DEFAULT CHARSET=utf8;

--
-- Table structure for table `mantis_bugnote_text_table`
--

DROP TABLE IF EXISTS `mantis_bugnote_text_table`;
CREATE TABLE `mantis_bugnote_text_table` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `note` longtext NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=849 DEFAULT CHARSET=utf8;

--
-- Table structure for table `mantis_config_table`
--

DROP TABLE IF EXISTS `mantis_config_table`;
CREATE TABLE `mantis_config_table` (
  `config_id` varchar(64) NOT NULL,
  `project_id` int(11) NOT NULL default '0',
  `user_id` int(11) NOT NULL default '0',
  `access_reqd` int(11) default '0',
  `type` int(11) default '90',
  `value` longtext NOT NULL,
  PRIMARY KEY  (`config_id`,`project_id`,`user_id`),
  KEY `idx_config` (`config_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `mantis_custom_field_project_table`
--

DROP TABLE IF EXISTS `mantis_custom_field_project_table`;
CREATE TABLE `mantis_custom_field_project_table` (
  `field_id` int(11) NOT NULL default '0',
  `project_id` int(10) unsigned NOT NULL default '0',
  `sequence` smallint(6) NOT NULL default '0',
  PRIMARY KEY  (`field_id`,`project_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `mantis_custom_field_string_table`
--

DROP TABLE IF EXISTS `mantis_custom_field_string_table`;
CREATE TABLE `mantis_custom_field_string_table` (
  `field_id` int(11) NOT NULL default '0',
  `bug_id` int(11) NOT NULL default '0',
  `value` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`field_id`,`bug_id`),
  KEY `idx_custom_field_bug` (`bug_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `mantis_custom_field_table`
--

DROP TABLE IF EXISTS `mantis_custom_field_table`;
CREATE TABLE `mantis_custom_field_table` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(64) NOT NULL default '',
  `type` smallint(6) NOT NULL default '0',
  `possible_values` varchar(255) NOT NULL default '',
  `default_value` varchar(255) NOT NULL default '',
  `valid_regexp` varchar(255) NOT NULL default '',
  `access_level_r` smallint(6) NOT NULL default '0',
  `access_level_rw` smallint(6) NOT NULL default '0',
  `length_min` int(11) NOT NULL default '0',
  `length_max` int(11) NOT NULL default '0',
  `advanced` tinyint(4) NOT NULL default '0',
  `require_report` tinyint(4) NOT NULL default '0',
  `require_update` tinyint(4) NOT NULL default '0',
  `display_report` tinyint(4) NOT NULL default '1',
  `display_update` tinyint(4) NOT NULL default '1',
  `require_resolved` tinyint(4) NOT NULL default '0',
  `display_resolved` tinyint(4) NOT NULL default '0',
  `display_closed` tinyint(4) NOT NULL default '0',
  `require_closed` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `idx_custom_field_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `mantis_email_table`
--

DROP TABLE IF EXISTS `mantis_email_table`;
CREATE TABLE `mantis_email_table` (
  `email_id` int(10) unsigned NOT NULL auto_increment,
  `email` varchar(64) NOT NULL default '',
  `subject` varchar(250) NOT NULL default '',
  `submitted` datetime NOT NULL default '1970-01-01 00:00:01',
  `metadata` longtext NOT NULL,
  `body` longtext NOT NULL,
  PRIMARY KEY  (`email_id`),
  KEY `idx_email_id` (`email_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9422 DEFAULT CHARSET=utf8;

--
-- Table structure for table `mantis_filters_table`
--

DROP TABLE IF EXISTS `mantis_filters_table`;
CREATE TABLE `mantis_filters_table` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(11) NOT NULL default '0',
  `project_id` int(11) NOT NULL default '0',
  `is_public` tinyint(4) default NULL,
  `name` varchar(64) NOT NULL default '',
  `filter_string` longtext NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Table structure for table `mantis_news_table`
--

DROP TABLE IF EXISTS `mantis_news_table`;
CREATE TABLE `mantis_news_table` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `project_id` int(10) unsigned NOT NULL default '0',
  `poster_id` int(10) unsigned NOT NULL default '0',
  `date_posted` datetime NOT NULL default '1970-01-01 00:00:01',
  `last_modified` datetime NOT NULL default '1970-01-01 00:00:01',
  `view_state` smallint(6) NOT NULL default '10',
  `announcement` tinyint(4) NOT NULL default '0',
  `headline` varchar(64) NOT NULL default '',
  `body` longtext NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `mantis_project_category_table`
--

DROP TABLE IF EXISTS `mantis_project_category_table`;
CREATE TABLE `mantis_project_category_table` (
  `project_id` int(10) unsigned NOT NULL default '0',
  `category` varchar(64) NOT NULL default '',
  `user_id` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`project_id`,`category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `mantis_project_file_table`
--

DROP TABLE IF EXISTS `mantis_project_file_table`;
CREATE TABLE `mantis_project_file_table` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `project_id` int(10) unsigned NOT NULL default '0',
  `title` varchar(250) NOT NULL default '',
  `description` varchar(250) NOT NULL default '',
  `diskfile` varchar(250) NOT NULL default '',
  `filename` varchar(250) NOT NULL default '',
  `folder` varchar(250) NOT NULL default '',
  `filesize` int(11) NOT NULL default '0',
  `file_type` varchar(250) NOT NULL default '',
  `date_added` datetime NOT NULL default '1970-01-01 00:00:01',
  `content` longblob,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Table structure for table `mantis_project_hierarchy_table`
--

DROP TABLE IF EXISTS `mantis_project_hierarchy_table`;
CREATE TABLE `mantis_project_hierarchy_table` (
  `child_id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `mantis_project_table`
--

DROP TABLE IF EXISTS `mantis_project_table`;
CREATE TABLE `mantis_project_table` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(128) NOT NULL default '',
  `status` smallint(6) NOT NULL default '10',
  `enabled` tinyint(4) NOT NULL default '1',
  `view_state` smallint(6) NOT NULL default '10',
  `access_min` smallint(6) NOT NULL default '10',
  `file_path` varchar(250) NOT NULL default '',
  `description` longtext NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_project_name` (`name`),
  KEY `idx_project_id` (`id`),
  KEY `idx_project_view` (`view_state`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Table structure for table `mantis_project_user_list_table`
--

DROP TABLE IF EXISTS `mantis_project_user_list_table`;
CREATE TABLE `mantis_project_user_list_table` (
  `project_id` int(10) unsigned NOT NULL default '0',
  `user_id` int(10) unsigned NOT NULL default '0',
  `access_level` smallint(6) NOT NULL default '10',
  PRIMARY KEY  (`project_id`,`user_id`),
  KEY `idx_project_user` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `mantis_project_version_table`
--

DROP TABLE IF EXISTS `mantis_project_version_table`;
CREATE TABLE `mantis_project_version_table` (
  `id` int(11) NOT NULL auto_increment,
  `project_id` int(10) unsigned NOT NULL default '0',
  `version` varchar(64) NOT NULL default '',
  `date_order` datetime NOT NULL default '1970-01-01 00:00:01',
  `description` longtext NOT NULL,
  `released` tinyint(4) NOT NULL default '1',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_project_version` (`project_id`,`version`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Table structure for table `mantis_sponsorship_table`
--

DROP TABLE IF EXISTS `mantis_sponsorship_table`;
CREATE TABLE `mantis_sponsorship_table` (
  `id` int(11) NOT NULL auto_increment,
  `bug_id` int(11) NOT NULL default '0',
  `user_id` int(11) NOT NULL default '0',
  `amount` int(11) NOT NULL default '0',
  `logo` varchar(128) NOT NULL default '',
  `url` varchar(128) NOT NULL default '',
  `paid` tinyint(4) NOT NULL default '0',
  `date_submitted` datetime NOT NULL default '1970-01-01 00:00:01',
  `last_updated` datetime NOT NULL default '1970-01-01 00:00:01',
  PRIMARY KEY  (`id`),
  KEY `idx_sponsorship_bug_id` (`bug_id`),
  KEY `idx_sponsorship_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `mantis_tag_table`
--

DROP TABLE IF EXISTS `mantis_tag_table`;
CREATE TABLE `mantis_tag_table` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(10) unsigned NOT NULL default '0',
  `name` varchar(100) NOT NULL default '',
  `description` longtext NOT NULL,
  `date_created` datetime NOT NULL default '1970-01-01 00:00:01',
  `date_updated` datetime NOT NULL default '1970-01-01 00:00:01',
  PRIMARY KEY  (`id`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `mantis_tokens_table`
--

DROP TABLE IF EXISTS `mantis_tokens_table`;
CREATE TABLE `mantis_tokens_table` (
  `id` int(11) NOT NULL auto_increment,
  `owner` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `timestamp` datetime NOT NULL,
  `expiry` datetime default NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_typeowner` (`type`,`owner`)
) ENGINE=MyISAM AUTO_INCREMENT=753 DEFAULT CHARSET=utf8;

--
-- Table structure for table `mantis_user_pref_table`
--

DROP TABLE IF EXISTS `mantis_user_pref_table`;
CREATE TABLE `mantis_user_pref_table` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(10) unsigned NOT NULL default '0',
  `project_id` int(10) unsigned NOT NULL default '0',
  `default_profile` int(10) unsigned NOT NULL default '0',
  `default_project` int(10) unsigned NOT NULL default '0',
  `advanced_report` tinyint(4) NOT NULL default '0',
  `advanced_view` tinyint(4) NOT NULL default '0',
  `advanced_update` tinyint(4) NOT NULL default '0',
  `refresh_delay` int(11) NOT NULL default '0',
  `redirect_delay` tinyint(4) NOT NULL default '0',
  `bugnote_order` varchar(4) NOT NULL default 'ASC',
  `email_on_new` tinyint(4) NOT NULL default '0',
  `email_on_assigned` tinyint(4) NOT NULL default '0',
  `email_on_feedback` tinyint(4) NOT NULL default '0',
  `email_on_resolved` tinyint(4) NOT NULL default '0',
  `email_on_closed` tinyint(4) NOT NULL default '0',
  `email_on_reopened` tinyint(4) NOT NULL default '0',
  `email_on_bugnote` tinyint(4) NOT NULL default '0',
  `email_on_status` tinyint(4) NOT NULL default '0',
  `email_on_priority` tinyint(4) NOT NULL default '0',
  `email_on_priority_min_severity` smallint(6) NOT NULL default '10',
  `email_on_status_min_severity` smallint(6) NOT NULL default '10',
  `email_on_bugnote_min_severity` smallint(6) NOT NULL default '10',
  `email_on_reopened_min_severity` smallint(6) NOT NULL default '10',
  `email_on_closed_min_severity` smallint(6) NOT NULL default '10',
  `email_on_resolved_min_severity` smallint(6) NOT NULL default '10',
  `email_on_feedback_min_severity` smallint(6) NOT NULL default '10',
  `email_on_assigned_min_severity` smallint(6) NOT NULL default '10',
  `email_on_new_min_severity` smallint(6) NOT NULL default '10',
  `email_bugnote_limit` smallint(6) NOT NULL default '0',
  `language` varchar(32) NOT NULL default 'english',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Table structure for table `mantis_user_print_pref_table`
--

DROP TABLE IF EXISTS `mantis_user_print_pref_table`;
CREATE TABLE `mantis_user_print_pref_table` (
  `user_id` int(10) unsigned NOT NULL default '0',
  `print_pref` varchar(64) NOT NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `mantis_user_profile_table`
--

DROP TABLE IF EXISTS `mantis_user_profile_table`;
CREATE TABLE `mantis_user_profile_table` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(10) unsigned NOT NULL default '0',
  `platform` varchar(32) NOT NULL default '',
  `os` varchar(32) NOT NULL default '',
  `os_build` varchar(32) NOT NULL default '',
  `description` longtext NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Table structure for table `mantis_user_table`
--

DROP TABLE IF EXISTS `mantis_user_table`;
CREATE TABLE `mantis_user_table` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `username` varchar(32) NOT NULL default '',
  `realname` varchar(64) NOT NULL default '',
  `email` varchar(64) NOT NULL default '',
  `password` varchar(32) NOT NULL default '',
  `date_created` datetime NOT NULL default '1970-01-01 00:00:01',
  `last_visit` datetime NOT NULL default '1970-01-01 00:00:01',
  `enabled` tinyint(4) NOT NULL default '1',
  `protected` tinyint(4) NOT NULL default '0',
  `access_level` smallint(6) NOT NULL default '10',
  `login_count` int(11) NOT NULL default '0',
  `lost_password_request_count` smallint(6) NOT NULL default '0',
  `failed_login_count` smallint(6) NOT NULL default '0',
  `cookie_string` varchar(64) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_user_cookie_string` (`cookie_string`),
  UNIQUE KEY `idx_user_username` (`username`),
  KEY `idx_enable` (`enabled`),
  KEY `idx_access` (`access_level`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-16  6:11:05
