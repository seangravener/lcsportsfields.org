-- MySQL dump 10.13  Distrib 5.5.27, for Win32 (x86)
--
-- Host: localhost    Database: lcsfa_dev
-- ------------------------------------------------------
-- Server version	5.5.27

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
-- Table structure for table `exp_accessories`
--

DROP TABLE IF EXISTS `exp_accessories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_accessories` (
  `accessory_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(75) NOT NULL DEFAULT '',
  `member_groups` varchar(255) NOT NULL DEFAULT 'all',
  `controllers` text,
  `accessory_version` varchar(12) NOT NULL,
  PRIMARY KEY (`accessory_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_accessories`
--

LOCK TABLES `exp_accessories` WRITE;
/*!40000 ALTER TABLE `exp_accessories` DISABLE KEYS */;
INSERT INTO `exp_accessories` VALUES (1,'Expressionengine_info_acc','1|5','addons|addons_accessories|addons_extensions|addons_fieldtypes|addons_modules|addons_plugins|admin_content|admin_system|content|content_edit|content_files|content_files_modal|content_publish|design|homepage|members|myaccount|tools|tools_communicate|tools_data|tools_logs|tools_utilities','1.0'),(2,'Nsm_morphine_theme_acc','1|5','addons|addons_accessories|addons_extensions|addons_fieldtypes|addons_modules|addons_plugins|admin_content|admin_system|content|content_edit|content_files|content_files_modal|content_publish|design|homepage|members|myaccount|tools|tools_communicate|tools_data|tools_logs|tools_utilities','2.0.3');
/*!40000 ALTER TABLE `exp_accessories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_actions`
--

DROP TABLE IF EXISTS `exp_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_actions` (
  `action_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  PRIMARY KEY (`action_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_actions`
--

LOCK TABLES `exp_actions` WRITE;
/*!40000 ALTER TABLE `exp_actions` DISABLE KEYS */;
INSERT INTO `exp_actions` VALUES (5,'Safecracker','submit_entry'),(6,'Safecracker','combo_loader'),(7,'Search','do_search'),(8,'Channel','insert_new_entry'),(9,'Channel','filemanager_endpoint'),(10,'Channel','smiley_pop'),(11,'Rte','get_js'),(12,'Channel_images','channel_images_router'),(13,'Channel_images','locked_image_url'),(14,'Channel_images','simple_image_url');
/*!40000 ALTER TABLE `exp_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_captcha`
--

DROP TABLE IF EXISTS `exp_captcha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_captcha` (
  `captcha_id` bigint(13) unsigned NOT NULL AUTO_INCREMENT,
  `date` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `word` varchar(20) NOT NULL,
  PRIMARY KEY (`captcha_id`),
  KEY `word` (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_captcha`
--

LOCK TABLES `exp_captcha` WRITE;
/*!40000 ALTER TABLE `exp_captcha` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_captcha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_categories`
--

DROP TABLE IF EXISTS `exp_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_categories` (
  `cat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(6) unsigned NOT NULL,
  `parent_id` int(4) unsigned NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `cat_url_title` varchar(75) NOT NULL,
  `cat_description` text,
  `cat_image` varchar(120) DEFAULT NULL,
  `cat_order` int(4) unsigned NOT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `group_id` (`group_id`),
  KEY `cat_name` (`cat_name`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_categories`
--

LOCK TABLES `exp_categories` WRITE;
/*!40000 ALTER TABLE `exp_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_category_field_data`
--

DROP TABLE IF EXISTS `exp_category_field_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_category_field_data` (
  `cat_id` int(4) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(4) unsigned NOT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `site_id` (`site_id`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_category_field_data`
--

LOCK TABLES `exp_category_field_data` WRITE;
/*!40000 ALTER TABLE `exp_category_field_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_category_field_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_category_fields`
--

DROP TABLE IF EXISTS `exp_category_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_category_fields` (
  `field_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(4) unsigned NOT NULL,
  `field_name` varchar(32) NOT NULL DEFAULT '',
  `field_label` varchar(50) NOT NULL DEFAULT '',
  `field_type` varchar(12) NOT NULL DEFAULT 'text',
  `field_list_items` text NOT NULL,
  `field_maxl` smallint(3) NOT NULL DEFAULT '128',
  `field_ta_rows` tinyint(2) NOT NULL DEFAULT '8',
  `field_default_fmt` varchar(40) NOT NULL DEFAULT 'none',
  `field_show_fmt` char(1) NOT NULL DEFAULT 'y',
  `field_text_direction` char(3) NOT NULL DEFAULT 'ltr',
  `field_required` char(1) NOT NULL DEFAULT 'n',
  `field_order` int(3) unsigned NOT NULL,
  PRIMARY KEY (`field_id`),
  KEY `site_id` (`site_id`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_category_fields`
--

LOCK TABLES `exp_category_fields` WRITE;
/*!40000 ALTER TABLE `exp_category_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_category_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_category_groups`
--

DROP TABLE IF EXISTS `exp_category_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_category_groups` (
  `group_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_name` varchar(50) NOT NULL,
  `sort_order` char(1) NOT NULL DEFAULT 'a',
  `exclude_group` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_html_formatting` char(4) NOT NULL DEFAULT 'all',
  `can_edit_categories` text,
  `can_delete_categories` text,
  PRIMARY KEY (`group_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_category_groups`
--

LOCK TABLES `exp_category_groups` WRITE;
/*!40000 ALTER TABLE `exp_category_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_category_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_category_posts`
--

DROP TABLE IF EXISTS `exp_category_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_category_posts` (
  `entry_id` int(10) unsigned NOT NULL,
  `cat_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`entry_id`,`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_category_posts`
--

LOCK TABLES `exp_category_posts` WRITE;
/*!40000 ALTER TABLE `exp_category_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_category_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channel_data`
--

DROP TABLE IF EXISTS `exp_channel_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_channel_data` (
  `entry_id` int(10) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `channel_id` int(4) unsigned NOT NULL,
  `field_id_3` text,
  `field_ft_3` tinytext,
  `field_id_4` text,
  `field_ft_4` tinytext,
  `field_id_5` text,
  `field_ft_5` tinytext,
  `field_id_6` text,
  `field_ft_6` tinytext,
  `field_id_7` text,
  `field_ft_7` tinytext,
  `field_id_8` text,
  `field_ft_8` tinytext,
  PRIMARY KEY (`entry_id`),
  KEY `channel_id` (`channel_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channel_data`
--

LOCK TABLES `exp_channel_data` WRITE;
/*!40000 ALTER TABLE `exp_channel_data` DISABLE KEYS */;
INSERT INTO `exp_channel_data` VALUES (14,1,1,'',NULL,'ChannelImages','xhtml','<p>\n	adf</p>','none','y','none','caption--bottom-left','xhtml','','none'),(15,1,1,'',NULL,'','xhtml','<p>\n	test</p>','none','','none','','xhtml','','none'),(13,1,1,'',NULL,'','xhtml','<p>\n	body</p>','none','','none','','xhtml','','none'),(12,1,1,'',NULL,'ChannelImages','xhtml','','none','y','none','caption--bottom-right','xhtml','','none'),(16,1,1,'',NULL,'ChannelImages','xhtml','<p>\n	Fields are open to all</p>','none','y','none','caption--top-right','xhtml','','none');
/*!40000 ALTER TABLE `exp_channel_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channel_entries_autosave`
--

DROP TABLE IF EXISTS `exp_channel_entries_autosave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_channel_entries_autosave` (
  `entry_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `original_entry_id` int(10) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `channel_id` int(4) unsigned NOT NULL,
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `forum_topic_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `url_title` varchar(75) NOT NULL,
  `status` varchar(50) NOT NULL,
  `versioning_enabled` char(1) NOT NULL DEFAULT 'n',
  `view_count_one` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_two` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_three` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_four` int(10) unsigned NOT NULL DEFAULT '0',
  `allow_comments` varchar(1) NOT NULL DEFAULT 'y',
  `sticky` varchar(1) NOT NULL DEFAULT 'n',
  `entry_date` int(10) NOT NULL,
  `year` char(4) NOT NULL,
  `month` char(2) NOT NULL,
  `day` char(3) NOT NULL,
  `expiration_date` int(10) NOT NULL DEFAULT '0',
  `comment_expiration_date` int(10) NOT NULL DEFAULT '0',
  `edit_date` bigint(14) DEFAULT NULL,
  `recent_comment_date` int(10) DEFAULT NULL,
  `comment_total` int(4) unsigned NOT NULL DEFAULT '0',
  `entry_data` text,
  PRIMARY KEY (`entry_id`),
  KEY `channel_id` (`channel_id`),
  KEY `author_id` (`author_id`),
  KEY `url_title` (`url_title`),
  KEY `status` (`status`),
  KEY `entry_date` (`entry_date`),
  KEY `expiration_date` (`expiration_date`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channel_entries_autosave`
--

LOCK TABLES `exp_channel_entries_autosave` WRITE;
/*!40000 ALTER TABLE `exp_channel_entries_autosave` DISABLE KEYS */;
INSERT INTO `exp_channel_entries_autosave` VALUES (5,12,1,1,1,NULL,'127.0.0.1','test 5','test-5','open','y',0,0,0,0,'n','n',1370705580,'2013','06','08',0,0,20130608193002,NULL,0,'a:9:{s:10:\"channel_id\";s:1:\"1\";s:10:\"field_id_6\";s:1:\"y\";s:10:\"field_id_7\";s:21:\"caption--bottom-right\";s:10:\"field_id_4\";a:2:{s:6:\"images\";a:1:{i:0;a:1:{s:4:\"data\";s:845:\"{\"image_id\":\"12\",\"site_id\":\"1\",\"entry_id\":\"12\",\"field_id\":\"4\",\"channel_id\":\"1\",\"member_id\":\"1\",\"is_draft\":\"0\",\"link_image_id\":\"0\",\"link_entry_id\":\"0\",\"link_channel_id\":\"0\",\"link_field_id\":\"0\",\"upload_date\":\"1370705662\",\"cover\":\"0\",\"image_order\":\"0\",\"filename\":\"socceraction1.jpg\",\"extension\":\"jpg\",\"filesize\":\"1080828\",\"mime\":\"image/jpeg\",\"width\":\"1861\",\"height\":\"1459\",\"title\":\"Socceraction1\",\"url_title\":\"socceraction1\",\"description\":\"Game On!\",\"category\":\"\",\"cifield_1\":\"\",\"cifield_2\":\"\",\"cifield_3\":\"\",\"cifield_4\":\"\",\"cifield_5\":\"\",\"sizes_metadata\":\"large-slide|960|752|132969/in-content|250|195|57532/\",\"iptc\":\"YTowOnt9\",\"exif\":\"YTowOnt9\",\"xmp\":\"\",\"small_img_url\":\"//local.lcsportsfields.org/?ACT=14&f=socceraction1__large-slide.jpg&fid=4&d=12\",\"big_img_url\":\"//local.lcsportsfields.org/?ACT=14&f=socceraction1__large-slide.jpg&fid=4&d=12\"}\";}}s:3:\"key\";s:10:\"1370719695\";}s:10:\"field_id_5\";s:0:\"\";s:8:\"entry_id\";s:2:\"12\";s:17:\"original_entry_id\";s:2:\"12\";s:16:\"pages__pages_uri\";s:19:\"/example/pages/uri/\";s:24:\"pages__pages_template_id\";s:2:\"11\";}');
/*!40000 ALTER TABLE `exp_channel_entries_autosave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channel_fields`
--

DROP TABLE IF EXISTS `exp_channel_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_channel_fields` (
  `field_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(4) unsigned NOT NULL,
  `field_name` varchar(32) NOT NULL,
  `field_label` varchar(50) NOT NULL,
  `field_instructions` text,
  `field_type` varchar(50) NOT NULL DEFAULT 'text',
  `field_list_items` text NOT NULL,
  `field_pre_populate` char(1) NOT NULL DEFAULT 'n',
  `field_pre_channel_id` int(6) unsigned DEFAULT NULL,
  `field_pre_field_id` int(6) unsigned DEFAULT NULL,
  `field_ta_rows` tinyint(2) DEFAULT '8',
  `field_maxl` smallint(3) DEFAULT NULL,
  `field_required` char(1) NOT NULL DEFAULT 'n',
  `field_text_direction` char(3) NOT NULL DEFAULT 'ltr',
  `field_search` char(1) NOT NULL DEFAULT 'n',
  `field_is_hidden` char(1) NOT NULL DEFAULT 'n',
  `field_fmt` varchar(40) NOT NULL DEFAULT 'xhtml',
  `field_show_fmt` char(1) NOT NULL DEFAULT 'y',
  `field_order` int(3) unsigned NOT NULL,
  `field_content_type` varchar(20) NOT NULL DEFAULT 'any',
  `field_settings` text,
  PRIMARY KEY (`field_id`),
  KEY `group_id` (`group_id`),
  KEY `field_type` (`field_type`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channel_fields`
--

LOCK TABLES `exp_channel_fields` WRITE;
/*!40000 ALTER TABLE `exp_channel_fields` DISABLE KEYS */;
INSERT INTO `exp_channel_fields` VALUES (5,1,1,'main_content_body','Content Body','','wygwam','','0',0,0,6,128,'n','ltr','n','n','none','n',10,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIyIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),(6,1,1,'featured_slide_on','Use Featured Slide?','To use display this content item with a featured slide, enable this field and upload the slide image in the \"Featured Slide\" field below.','fieldpack_switch','','0',0,0,6,128,'n','ltr','n','n','none','n',1,'any','YToxMTp7czo5OiJvZmZfbGFiZWwiO3M6MjoiTm8iO3M6Nzoib2ZmX3ZhbCI7czowOiIiO3M6ODoib25fbGFiZWwiO3M6MzoiWWVzIjtzOjY6Im9uX3ZhbCI7czoxOiJ5IjtzOjc6ImRlZmF1bHQiO3M6Mzoib2ZmIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(7,1,1,'caption_location','Caption Location','The caption is placed a-top the featured image; depending on the image used, you may want to place the caption in different locations.','fieldpack_pill','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',4,'any','YTo3OntzOjc6Im9wdGlvbnMiO2E6NDp7czoxNzoiY2FwdGlvbi0tdG9wLWxlZnQiO3M6ODoiVG9wIExlZnQiO3M6MTg6ImNhcHRpb24tLXRvcC1yaWdodCI7czo5OiJUb3AgUmlnaHQiO3M6MjA6ImNhcHRpb24tLWJvdHRvbS1sZWZ0IjtzOjExOiJCb3R0b20gTGVmdCI7czoyMToiY2FwdGlvbi0tYm90dG9tLXJpZ2h0IjtzOjEyOiJCb3R0b20gUmlnaHQiO31zOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(8,1,1,'help_featured_image','How to set a Featured Image','','nsm_publish_hints','','0',0,0,6,128,'n','ltr','n','y','none','n',5,'any','YTo3OntzOjIyOiJmaWVsZF9wdWJsaXNoaW5nX2hpbnRzIjtzOjQ6InRlc3QiO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),(3,1,2,'featured_image','Featured Image','','channel_images','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',1,'any','YTo3OntzOjE0OiJjaGFubmVsX2ltYWdlcyI7YToyOTp7czo5OiJ2aWV3X21vZGUiO3M6NToidGFibGUiO3M6MTM6ImFjdGlvbl9ncm91cHMiO2E6MTp7aToxO2E6NTp7czoxMDoiZ3JvdXBfbmFtZSI7czo0OiJjcm9wIjtzOjc6Ind5c2l3eWciO3M6MzoieWVzIjtzOjg6ImVkaXRhYmxlIjtzOjM6InllcyI7czo3OiJhY3Rpb25zIjthOjI6e3M6MTU6InJlc2l6ZV9hZGFwdGl2ZSI7YTo1OntzOjU6IndpZHRoIjtzOjM6Ijk2MCI7czo2OiJoZWlnaHQiO3M6MDoiIjtzOjc6InF1YWxpdHkiO3M6MzoiMTAwIjtzOjg6InVwc2l6aW5nIjtzOjI6Im5vIjtzOjQ6InN0ZXAiO3M6MToiMSI7fXM6MTE6ImNyb3BfY2VudGVyIjthOjQ6e3M6NToid2lkdGgiO3M6MzoiOTYwIjtzOjY6ImhlaWdodCI7czozOiIzMDAiO3M6NzoicXVhbGl0eSI7czozOiIxMDAiO3M6NDoic3RlcCI7czoxOiIyIjt9fXM6MTA6ImZpbmFsX3NpemUiO2E6NDp7czo1OiJ3aWR0aCI7czozOiI5NjAiO3M6NjoiaGVpZ2h0IjtzOjM6IjMwMCI7czo3OiJxdWFsaXR5IjtzOjM6IjEwMCI7czo0OiJzdGVwIjtzOjE6IjIiO319fXM6MTM6InNtYWxsX3ByZXZpZXciO3M6NDoiY3JvcCI7czoxMToiYmlnX3ByZXZpZXciO3M6NDoiY3JvcCI7czoxMzoia2VlcF9vcmlnaW5hbCI7czozOiJ5ZXMiO3M6MTU6InVwbG9hZF9sb2NhdGlvbiI7czo1OiJsb2NhbCI7czo5OiJsb2NhdGlvbnMiO2E6Mzp7czo1OiJsb2NhbCI7YToxOntzOjg6ImxvY2F0aW9uIjtzOjE6IjEiO31zOjI6InMzIjthOjg6e3M6Mzoia2V5IjtzOjA6IiI7czoxMDoic2VjcmV0X2tleSI7czowOiIiO3M6NjoiYnVja2V0IjtzOjA6IiI7czo2OiJyZWdpb24iO3M6OToidXMtZWFzdC0xIjtzOjM6ImFjbCI7czoxMToicHVibGljLXJlYWQiO3M6Nzoic3RvcmFnZSI7czo4OiJzdGFuZGFyZCI7czo5OiJkaXJlY3RvcnkiO3M6MDoiIjtzOjE3OiJjbG91ZGZyb250X2RvbWFpbiI7czowOiIiO31zOjEwOiJjbG91ZGZpbGVzIjthOjU6e3M6ODoidXNlcm5hbWUiO3M6MDoiIjtzOjM6ImFwaSI7czowOiIiO3M6OToiY29udGFpbmVyIjtzOjA6IiI7czo2OiJyZWdpb24iO3M6MjoidXMiO3M6NzoiY2RuX3VyaSI7czowOiIiO319czoxMDoiY2F0ZWdvcmllcyI7YTowOnt9czoxNjoiZGVmYXVsdF9jYXRlZ29yeSI7czowOiIiO3M6MTg6InNob3dfc3RvcmVkX2ltYWdlcyI7czoyOiJubyI7czoyMzoic3RvcmVkX2ltYWdlc19ieV9hdXRob3IiO3M6Mjoibm8iO3M6MjU6InN0b3JlZF9pbWFnZXNfc2VhcmNoX3R5cGUiO3M6NToiZW50cnkiO3M6MTc6InNob3dfaW1wb3J0X2ZpbGVzIjtzOjI6Im5vIjtzOjExOiJpbXBvcnRfcGF0aCI7czoxOiIvIjtzOjE1OiJzaG93X2ltYWdlX2VkaXQiO3M6MzoieWVzIjtzOjE4OiJzaG93X2ltYWdlX3JlcGxhY2UiO3M6Mjoibm8iO3M6MjI6ImFsbG93X3Blcl9pbWFnZV9hY3Rpb24iO3M6Mjoibm8iO3M6MTE6ImltYWdlX2xpbWl0IjtzOjE6IjEiO3M6MTM6Imh5YnJpZF91cGxvYWQiO3M6MzoieWVzIjtzOjE2OiJwcm9ncmVzc2l2ZV9qcGVnIjtzOjI6Im5vIjtzOjE2OiJ3eXNpd3lnX29yaWdpbmFsIjtzOjM6InllcyI7czoxODoic2F2ZV9kYXRhX2luX2ZpZWxkIjtzOjI6Im5vIjtzOjEzOiJkaXNhYmxlX2NvdmVyIjtzOjI6Im5vIjtzOjExOiJjb252ZXJ0X2pwZyI7czoyOiJubyI7czoxMToiY292ZXJfZmlyc3QiO3M6MzoieWVzIjtzOjEwOiJwYXJzZV9pcHRjIjtzOjI6Im5vIjtzOjEwOiJwYXJzZV9leGlmIjtzOjI6Im5vIjtzOjk6InBhcnNlX3htcCI7czoyOiJubyI7czo3OiJjb2x1bW5zIjthOjEzOntzOjc6InJvd19udW0iO3M6MToiIyI7czoyOiJpZCI7czoyOiJJRCI7czo1OiJpbWFnZSI7czo1OiJJbWFnZSI7czo4OiJmaWxlbmFtZSI7czowOiIiO3M6NToidGl0bGUiO3M6MDoiIjtzOjk6InVybF90aXRsZSI7czowOiIiO3M6NDoiZGVzYyI7czowOiIiO3M6ODoiY2F0ZWdvcnkiO3M6MDoiIjtzOjk6ImNpZmllbGRfMSI7czowOiIiO3M6OToiY2lmaWVsZF8yIjtzOjA6IiI7czo5OiJjaWZpZWxkXzMiO3M6MDoiIjtzOjk6ImNpZmllbGRfNCI7czowOiIiO3M6OToiY2lmaWVsZF81IjtzOjA6IiI7fX1zOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(4,1,1,'featured_slide','Featured Slide','Add a cover image here to include this content item in the large slider on the homepage. \n\n* Leave blank if you do want this item to be featured in the slider.','channel_images','','0',0,0,6,128,'n','ltr','n','y','xhtml','n',2,'any','YTo3OntzOjE0OiJjaGFubmVsX2ltYWdlcyI7YToyOTp7czo5OiJ2aWV3X21vZGUiO3M6NToidGFibGUiO3M6MTM6ImFjdGlvbl9ncm91cHMiO2E6Mjp7aToxO2E6NTp7czoxMDoiZ3JvdXBfbmFtZSI7czoxMToibGFyZ2Utc2xpZGUiO3M6Nzoid3lzaXd5ZyI7czozOiJ5ZXMiO3M6NzoiYWN0aW9ucyI7YToxOntzOjE1OiJyZXNpemVfYWRhcHRpdmUiO2E6NTp7czo1OiJ3aWR0aCI7czozOiI5NjAiO3M6NjoiaGVpZ2h0IjtzOjA6IiI7czo3OiJxdWFsaXR5IjtzOjI6Ijc1IjtzOjg6InVwc2l6aW5nIjtzOjI6Im5vIjtzOjQ6InN0ZXAiO3M6MToiMSI7fX1zOjEwOiJmaW5hbF9zaXplIjthOjU6e3M6NToid2lkdGgiO3M6MzoiOTYwIjtzOjY6ImhlaWdodCI7czowOiIiO3M6NzoicXVhbGl0eSI7czoyOiI3NSI7czo4OiJ1cHNpemluZyI7czoyOiJubyI7czo0OiJzdGVwIjtzOjE6IjEiO31zOjg6ImVkaXRhYmxlIjtzOjI6Im5vIjt9aToyO2E6NTp7czoxMDoiZ3JvdXBfbmFtZSI7czoxMDoiaW4tY29udGVudCI7czo3OiJ3eXNpd3lnIjtzOjM6InllcyI7czo3OiJhY3Rpb25zIjthOjE6e3M6MTU6InJlc2l6ZV9hZGFwdGl2ZSI7YTo1OntzOjU6IndpZHRoIjtzOjM6IjI1MCI7czo2OiJoZWlnaHQiO3M6MDoiIjtzOjc6InF1YWxpdHkiO3M6MzoiMTAwIjtzOjg6InVwc2l6aW5nIjtzOjI6Im5vIjtzOjQ6InN0ZXAiO3M6MToiMSI7fX1zOjEwOiJmaW5hbF9zaXplIjthOjU6e3M6NToid2lkdGgiO3M6MzoiMjUwIjtzOjY6ImhlaWdodCI7czowOiIiO3M6NzoicXVhbGl0eSI7czozOiIxMDAiO3M6ODoidXBzaXppbmciO3M6Mjoibm8iO3M6NDoic3RlcCI7czoxOiIxIjt9czo4OiJlZGl0YWJsZSI7czoyOiJubyI7fX1zOjEzOiJzbWFsbF9wcmV2aWV3IjtzOjExOiJsYXJnZS1zbGlkZSI7czoxMToiYmlnX3ByZXZpZXciO3M6MTE6ImxhcmdlLXNsaWRlIjtzOjEzOiJrZWVwX29yaWdpbmFsIjtzOjM6InllcyI7czoxNToidXBsb2FkX2xvY2F0aW9uIjtzOjU6ImxvY2FsIjtzOjk6ImxvY2F0aW9ucyI7YTozOntzOjU6ImxvY2FsIjthOjE6e3M6ODoibG9jYXRpb24iO3M6MToiMSI7fXM6MjoiczMiO2E6ODp7czozOiJrZXkiO3M6MDoiIjtzOjEwOiJzZWNyZXRfa2V5IjtzOjA6IiI7czo2OiJidWNrZXQiO3M6MDoiIjtzOjY6InJlZ2lvbiI7czo5OiJ1cy1lYXN0LTEiO3M6MzoiYWNsIjtzOjExOiJwdWJsaWMtcmVhZCI7czo3OiJzdG9yYWdlIjtzOjg6InN0YW5kYXJkIjtzOjk6ImRpcmVjdG9yeSI7czowOiIiO3M6MTc6ImNsb3VkZnJvbnRfZG9tYWluIjtzOjA6IiI7fXM6MTA6ImNsb3VkZmlsZXMiO2E6NTp7czo4OiJ1c2VybmFtZSI7czowOiIiO3M6MzoiYXBpIjtzOjA6IiI7czo5OiJjb250YWluZXIiO3M6MDoiIjtzOjY6InJlZ2lvbiI7czoyOiJ1cyI7czo3OiJjZG5fdXJpIjtzOjA6IiI7fX1zOjEwOiJjYXRlZ29yaWVzIjthOjA6e31zOjE2OiJkZWZhdWx0X2NhdGVnb3J5IjtzOjA6IiI7czoxODoic2hvd19zdG9yZWRfaW1hZ2VzIjtzOjI6Im5vIjtzOjIzOiJzdG9yZWRfaW1hZ2VzX2J5X2F1dGhvciI7czoyOiJubyI7czoyNToic3RvcmVkX2ltYWdlc19zZWFyY2hfdHlwZSI7czo1OiJlbnRyeSI7czoxNzoic2hvd19pbXBvcnRfZmlsZXMiO3M6Mjoibm8iO3M6MTE6ImltcG9ydF9wYXRoIjtzOjE6Ii8iO3M6MTU6InNob3dfaW1hZ2VfZWRpdCI7czozOiJ5ZXMiO3M6MTg6InNob3dfaW1hZ2VfcmVwbGFjZSI7czoyOiJubyI7czoyMjoiYWxsb3dfcGVyX2ltYWdlX2FjdGlvbiI7czoyOiJubyI7czoxMToiaW1hZ2VfbGltaXQiO3M6MToiMSI7czoxMzoiaHlicmlkX3VwbG9hZCI7czozOiJ5ZXMiO3M6MTY6InByb2dyZXNzaXZlX2pwZWciO3M6Mjoibm8iO3M6MTY6Ind5c2l3eWdfb3JpZ2luYWwiO3M6MzoieWVzIjtzOjE4OiJzYXZlX2RhdGFfaW5fZmllbGQiO3M6Mjoibm8iO3M6MTM6ImRpc2FibGVfY292ZXIiO3M6Mjoibm8iO3M6MTE6ImNvbnZlcnRfanBnIjtzOjI6Im5vIjtzOjExOiJjb3Zlcl9maXJzdCI7czozOiJ5ZXMiO3M6MTA6InBhcnNlX2lwdGMiO3M6Mjoibm8iO3M6MTA6InBhcnNlX2V4aWYiO3M6Mjoibm8iO3M6OToicGFyc2VfeG1wIjtzOjI6Im5vIjtzOjc6ImNvbHVtbnMiO2E6MTM6e3M6Nzoicm93X251bSI7czoxOiIjIjtzOjI6ImlkIjtzOjI6IklEIjtzOjU6ImltYWdlIjtzOjU6IkltYWdlIjtzOjg6ImZpbGVuYW1lIjtzOjA6IiI7czo1OiJ0aXRsZSI7czowOiIiO3M6OToidXJsX3RpdGxlIjtzOjA6IiI7czo0OiJkZXNjIjtzOjc6IkNhcHRpb24iO3M6ODoiY2F0ZWdvcnkiO3M6MDoiIjtzOjk6ImNpZmllbGRfMSI7czowOiIiO3M6OToiY2lmaWVsZF8yIjtzOjA6IiI7czo5OiJjaWZpZWxkXzMiO3M6MDoiIjtzOjk6ImNpZmllbGRfNCI7czowOiIiO3M6OToiY2lmaWVsZF81IjtzOjA6IiI7fX1zOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30=');
/*!40000 ALTER TABLE `exp_channel_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channel_images`
--

DROP TABLE IF EXISTS `exp_channel_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_channel_images` (
  `image_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` tinyint(3) unsigned DEFAULT '1',
  `entry_id` int(10) unsigned DEFAULT '0',
  `field_id` mediumint(8) unsigned DEFAULT '0',
  `channel_id` tinyint(3) unsigned DEFAULT '0',
  `member_id` int(10) unsigned DEFAULT '0',
  `is_draft` tinyint(3) unsigned DEFAULT '0',
  `link_image_id` int(10) unsigned DEFAULT '0',
  `link_entry_id` int(10) unsigned DEFAULT '0',
  `link_channel_id` int(10) unsigned DEFAULT '0',
  `link_field_id` int(10) unsigned DEFAULT '0',
  `upload_date` int(10) unsigned DEFAULT '0',
  `cover` tinyint(1) unsigned DEFAULT '0',
  `image_order` smallint(5) unsigned DEFAULT '1',
  `filename` varchar(250) DEFAULT '',
  `extension` varchar(20) DEFAULT '',
  `filesize` int(10) unsigned DEFAULT '0',
  `mime` varchar(20) DEFAULT '',
  `width` smallint(6) DEFAULT '0',
  `height` smallint(6) DEFAULT '0',
  `title` varchar(250) DEFAULT '',
  `url_title` varchar(250) DEFAULT '',
  `description` varchar(250) DEFAULT '',
  `category` varchar(250) DEFAULT '',
  `cifield_1` varchar(250) DEFAULT '',
  `cifield_2` varchar(250) DEFAULT '',
  `cifield_3` varchar(250) DEFAULT '',
  `cifield_4` varchar(250) DEFAULT '',
  `cifield_5` varchar(250) DEFAULT '',
  `sizes_metadata` varchar(250) DEFAULT '',
  `iptc` text,
  `exif` text,
  `xmp` text,
  PRIMARY KEY (`image_id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channel_images`
--

LOCK TABLES `exp_channel_images` WRITE;
/*!40000 ALTER TABLE `exp_channel_images` DISABLE KEYS */;
INSERT INTO `exp_channel_images` VALUES (8,1,6,3,2,1,0,0,0,0,0,1370562690,0,1,'socceraction1-2.jpg','jpg',1080828,'image/jpeg',1861,1459,'Socceraction1-2','socceraction1-2','','','','','','','','large|382|300|26901/','YTowOnt9','YTowOnt9',''),(14,1,16,4,1,1,0,0,0,0,0,1370719553,0,0,'socceraction3.jpg','jpg',754245,'image/jpeg',1714,1139,'Socceraction3','socceraction3','','','','','','','','large-slide|960|637|113739/in-content|250|165|50117/','YTowOnt9','YTowOnt9',''),(13,1,14,4,1,1,0,0,0,0,0,1370713658,0,0,'socceraction5.jpg','jpg',361386,'image/jpeg',1383,681,'Socceraction5','socceraction5','This is the caption displayed with the image','','','','','','','large-slide|960|472|75459/in-content|250|123|36117/','YTowOnt9','YTowOnt9',''),(9,1,7,3,2,1,0,0,0,0,0,1370563536,0,1,'socceraction1.jpg','jpg',1080828,'image/jpeg',1861,1459,'Socceraction1','socceraction1','','','','','','','','large|960|300|242666/','YTowOnt9','YTowOnt9',''),(12,1,12,4,1,1,0,0,0,0,0,1370705662,0,0,'socceraction1.jpg','jpg',1080828,'image/jpeg',1861,1459,'Socceraction1','socceraction1','Game On!','','','','','','','large-slide|960|752|132969/in-content|250|195|57532/','YTowOnt9','YTowOnt9','');
/*!40000 ALTER TABLE `exp_channel_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channel_member_groups`
--

DROP TABLE IF EXISTS `exp_channel_member_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_channel_member_groups` (
  `group_id` smallint(4) unsigned NOT NULL,
  `channel_id` int(6) unsigned NOT NULL,
  PRIMARY KEY (`group_id`,`channel_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channel_member_groups`
--

LOCK TABLES `exp_channel_member_groups` WRITE;
/*!40000 ALTER TABLE `exp_channel_member_groups` DISABLE KEYS */;
INSERT INTO `exp_channel_member_groups` VALUES (6,1),(6,2);
/*!40000 ALTER TABLE `exp_channel_member_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channel_titles`
--

DROP TABLE IF EXISTS `exp_channel_titles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_channel_titles` (
  `entry_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `channel_id` int(4) unsigned NOT NULL,
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `forum_topic_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `url_title` varchar(75) NOT NULL,
  `status` varchar(50) NOT NULL,
  `versioning_enabled` char(1) NOT NULL DEFAULT 'n',
  `view_count_one` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_two` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_three` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_four` int(10) unsigned NOT NULL DEFAULT '0',
  `allow_comments` varchar(1) NOT NULL DEFAULT 'y',
  `sticky` varchar(1) NOT NULL DEFAULT 'n',
  `entry_date` int(10) NOT NULL,
  `year` char(4) NOT NULL,
  `month` char(2) NOT NULL,
  `day` char(3) NOT NULL,
  `expiration_date` int(10) NOT NULL DEFAULT '0',
  `comment_expiration_date` int(10) NOT NULL DEFAULT '0',
  `edit_date` bigint(14) DEFAULT NULL,
  `recent_comment_date` int(10) DEFAULT NULL,
  `comment_total` int(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry_id`),
  KEY `channel_id` (`channel_id`),
  KEY `author_id` (`author_id`),
  KEY `url_title` (`url_title`),
  KEY `status` (`status`),
  KEY `entry_date` (`entry_date`),
  KEY `expiration_date` (`expiration_date`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channel_titles`
--

LOCK TABLES `exp_channel_titles` WRITE;
/*!40000 ALTER TABLE `exp_channel_titles` DISABLE KEYS */;
INSERT INTO `exp_channel_titles` VALUES (15,1,1,1,NULL,'127.0.0.1','no feature 2','no-feature-2','open','y',0,0,0,0,'n','n',1370713620,'2013','06','08',0,0,20130608174800,0,0),(14,1,1,1,NULL,'127.0.0.1','feature 2','feature-2','open','y',0,0,0,0,'n','n',1370713620,'2013','06','08',0,0,20130608190248,0,0),(13,1,1,1,NULL,'127.0.0.1','no feature 1','no-feature-1','open','y',0,0,0,0,'n','n',1370713560,'2013','06','08',0,0,20130608174712,0,0),(12,1,1,1,NULL,'127.0.0.1','test 5','test-5','open','y',0,0,0,0,'n','n',1370705580,'2013','06','08',0,0,20130608191805,0,0),(16,1,1,1,NULL,'127.0.0.1','Fields are Open!','fields-are-open','open','y',0,0,0,0,'n','n',1370719500,'2013','06','08',0,0,20130608192553,0,0);
/*!40000 ALTER TABLE `exp_channel_titles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channels`
--

DROP TABLE IF EXISTS `exp_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_channels` (
  `channel_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `channel_name` varchar(40) NOT NULL,
  `channel_title` varchar(100) NOT NULL,
  `channel_url` varchar(100) NOT NULL,
  `channel_description` varchar(255) DEFAULT NULL,
  `channel_lang` varchar(12) NOT NULL,
  `total_entries` mediumint(8) NOT NULL DEFAULT '0',
  `total_comments` mediumint(8) NOT NULL DEFAULT '0',
  `last_entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_comment_date` int(10) unsigned NOT NULL DEFAULT '0',
  `cat_group` varchar(255) DEFAULT NULL,
  `status_group` int(4) unsigned DEFAULT NULL,
  `deft_status` varchar(50) NOT NULL DEFAULT 'open',
  `field_group` int(4) unsigned DEFAULT NULL,
  `search_excerpt` int(4) unsigned DEFAULT NULL,
  `deft_category` varchar(60) DEFAULT NULL,
  `deft_comments` char(1) NOT NULL DEFAULT 'y',
  `channel_require_membership` char(1) NOT NULL DEFAULT 'y',
  `channel_max_chars` int(5) unsigned DEFAULT NULL,
  `channel_html_formatting` char(4) NOT NULL DEFAULT 'all',
  `channel_allow_img_urls` char(1) NOT NULL DEFAULT 'y',
  `channel_auto_link_urls` char(1) NOT NULL DEFAULT 'n',
  `channel_notify` char(1) NOT NULL DEFAULT 'n',
  `channel_notify_emails` varchar(255) DEFAULT NULL,
  `comment_url` varchar(80) DEFAULT NULL,
  `comment_system_enabled` char(1) NOT NULL DEFAULT 'y',
  `comment_require_membership` char(1) NOT NULL DEFAULT 'n',
  `comment_use_captcha` char(1) NOT NULL DEFAULT 'n',
  `comment_moderate` char(1) NOT NULL DEFAULT 'n',
  `comment_max_chars` int(5) unsigned DEFAULT '5000',
  `comment_timelock` int(5) unsigned NOT NULL DEFAULT '0',
  `comment_require_email` char(1) NOT NULL DEFAULT 'y',
  `comment_text_formatting` char(5) NOT NULL DEFAULT 'xhtml',
  `comment_html_formatting` char(4) NOT NULL DEFAULT 'safe',
  `comment_allow_img_urls` char(1) NOT NULL DEFAULT 'n',
  `comment_auto_link_urls` char(1) NOT NULL DEFAULT 'y',
  `comment_notify` char(1) NOT NULL DEFAULT 'n',
  `comment_notify_authors` char(1) NOT NULL DEFAULT 'n',
  `comment_notify_emails` varchar(255) DEFAULT NULL,
  `comment_expiration` int(4) unsigned NOT NULL DEFAULT '0',
  `search_results_url` varchar(80) DEFAULT NULL,
  `ping_return_url` varchar(80) DEFAULT NULL,
  `show_button_cluster` char(1) NOT NULL DEFAULT 'y',
  `rss_url` varchar(80) DEFAULT NULL,
  `enable_versioning` char(1) NOT NULL DEFAULT 'n',
  `max_revisions` smallint(4) unsigned NOT NULL DEFAULT '10',
  `default_entry_title` varchar(100) DEFAULT NULL,
  `url_title_prefix` varchar(80) DEFAULT NULL,
  `live_look_template` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`channel_id`),
  KEY `cat_group` (`cat_group`),
  KEY `status_group` (`status_group`),
  KEY `field_group` (`field_group`),
  KEY `channel_name` (`channel_name`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channels`
--

LOCK TABLES `exp_channels` WRITE;
/*!40000 ALTER TABLE `exp_channels` DISABLE KEYS */;
INSERT INTO `exp_channels` VALUES (1,1,'news','News & Announcements','//local.lcsportsfields.org/','','en',5,0,1370719500,0,'',1,'open',1,5,'','y','y',NULL,'all','y','n','n','','','y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,'','','y','','n',10,'','',0),(3,1,'sidebar','Sidebar','//local.lcsportsfields.org/','','en',0,0,0,0,'',1,'open',1,5,'','y','y',NULL,'all','y','n','n','','','y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,'','','y','','n',10,'','',0);
/*!40000 ALTER TABLE `exp_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_cp_log`
--

DROP TABLE IF EXISTS `exp_cp_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_cp_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_id` int(10) unsigned NOT NULL,
  `username` varchar(32) NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `act_date` int(10) NOT NULL,
  `action` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_cp_log`
--

LOCK TABLES `exp_cp_log` WRITE;
/*!40000 ALTER TABLE `exp_cp_log` DISABLE KEYS */;
INSERT INTO `exp_cp_log` VALUES (1,1,1,'admin-kvq','127.0.0.1',1368902763,'Logged in'),(2,1,1,'admin-kvq','127.0.0.1',1368902845,'Logged out'),(3,1,1,'admin-kvq','127.0.0.1',1368904437,'Logged in'),(4,1,1,'admin-kvq','127.0.0.1',1368913552,'Logged in'),(5,1,1,'admin-kvq','127.0.0.1',1369098184,'Logged in'),(6,1,1,'admin-kvq','127.0.0.1',1369098835,'Channel Created:&nbsp;&nbsp;Events'),(7,1,1,'admin-kvq','127.0.0.1',1370223532,'Logged in'),(8,1,1,'admin-kvq','127.0.0.1',1370223910,'Field Group Created:&nbsp;main'),(9,1,1,'admin-kvq','127.0.0.1',1370560615,'Logged in'),(10,1,1,'admin-kvq','127.0.0.1',1370560694,'Channel Created:&nbsp;&nbsp;Featured Slides'),(11,1,1,'admin-kvq','127.0.0.1',1370560738,'Field Group Created:&nbsp;featured_slides'),(12,1,1,'admin-kvq','127.0.0.1',1370561954,'Custom Field Deleted:&nbsp;Image'),(13,1,1,'admin-kvq','127.0.0.1',1370699330,'Logged in'),(14,1,1,'admin-kvq','127.0.0.1',1370699564,'Member Group Created:&nbsp;&nbsp;Content Editor'),(15,1,1,'admin-kvq','127.0.0.1',1370702498,'Custom Field Deleted:&nbsp;Images'),(16,1,1,'admin-kvq','127.0.0.1',1370702655,'Channel Deleted:&nbsp;&nbsp;Featured Slides'),(17,1,1,'admin-kvq','127.0.0.1',1370712953,'Logged in'),(18,1,1,'admin-kvq','127.0.0.1',1370712993,'Channel Created:&nbsp;&nbsp;Sidebar');
/*!40000 ALTER TABLE `exp_cp_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_cp_search_index`
--

DROP TABLE IF EXISTS `exp_cp_search_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_cp_search_index` (
  `search_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `controller` varchar(20) DEFAULT NULL,
  `method` varchar(50) DEFAULT NULL,
  `language` varchar(20) DEFAULT NULL,
  `access` varchar(50) DEFAULT NULL,
  `keywords` text,
  PRIMARY KEY (`search_id`),
  FULLTEXT KEY `keywords` (`keywords`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_cp_search_index`
--

LOCK TABLES `exp_cp_search_index` WRITE;
/*!40000 ALTER TABLE `exp_cp_search_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_cp_search_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_developer_log`
--

DROP TABLE IF EXISTS `exp_developer_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_developer_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` int(10) unsigned NOT NULL,
  `viewed` char(1) NOT NULL DEFAULT 'n',
  `description` text,
  `function` varchar(100) DEFAULT NULL,
  `line` int(10) unsigned DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `deprecated_since` varchar(10) DEFAULT NULL,
  `use_instead` varchar(100) DEFAULT NULL,
  `template_id` int(10) unsigned NOT NULL DEFAULT '0',
  `template_name` varchar(100) DEFAULT NULL,
  `template_group` varchar(100) DEFAULT NULL,
  `addon_module` varchar(100) DEFAULT NULL,
  `addon_method` varchar(100) DEFAULT NULL,
  `snippets` text,
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_developer_log`
--

LOCK TABLES `exp_developer_log` WRITE;
/*!40000 ALTER TABLE `exp_developer_log` DISABLE KEYS */;
INSERT INTO `exp_developer_log` VALUES (7,1370561052,'n',NULL,'do_hash()',224,'C:\\xampp\\htdocs\\lcsportsfields.org\\system\\expressionengine\\third_party\\nsm_htaccess_generator\\ext.nsm_htaccess_generator.php','2.6','PHP\'s hashing functions',0,NULL,NULL,NULL,NULL,NULL),(8,1370706118,'n',NULL,'remove_double_slashes()',137,'C:\\xampp\\htdocs\\lcsportsfields.org\\system\\expressionengine\\third_party\\channel_images\\locations\\local\\local.php','2.6','reduce_double_slashes()',8,'.page_constructor','_layouts','Channel','entries',NULL),(9,1370713261,'n',NULL,'remove_double_slashes()',137,'C:\\xampp\\htdocs\\lcsportsfields.org\\system\\expressionengine\\third_party\\channel_images\\locations\\local\\local.php','2.6','reduce_double_slashes()',10,'.slider','home','Channel','entries',NULL),(10,1370721005,'n',NULL,'EE_Fieldtype()',56,'C:\\xampp\\htdocs\\lcsportsfields.org\\system\\expressionengine\\third_party\\nsm_publish_hints\\ft.nsm_publish_hints.php','2.6','EE_Fieldtype::__construct()',0,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `exp_developer_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_email_cache`
--

DROP TABLE IF EXISTS `exp_email_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_email_cache` (
  `cache_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `cache_date` int(10) unsigned NOT NULL DEFAULT '0',
  `total_sent` int(6) unsigned NOT NULL,
  `from_name` varchar(70) NOT NULL,
  `from_email` varchar(70) NOT NULL,
  `recipient` text NOT NULL,
  `cc` text NOT NULL,
  `bcc` text NOT NULL,
  `recipient_array` mediumtext NOT NULL,
  `subject` varchar(120) NOT NULL,
  `message` mediumtext NOT NULL,
  `plaintext_alt` mediumtext NOT NULL,
  `mailinglist` char(1) NOT NULL DEFAULT 'n',
  `mailtype` varchar(6) NOT NULL,
  `text_fmt` varchar(40) NOT NULL,
  `wordwrap` char(1) NOT NULL DEFAULT 'y',
  `priority` char(1) NOT NULL DEFAULT '3',
  PRIMARY KEY (`cache_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_email_cache`
--

LOCK TABLES `exp_email_cache` WRITE;
/*!40000 ALTER TABLE `exp_email_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_email_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_email_cache_mg`
--

DROP TABLE IF EXISTS `exp_email_cache_mg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_email_cache_mg` (
  `cache_id` int(6) unsigned NOT NULL,
  `group_id` smallint(4) NOT NULL,
  PRIMARY KEY (`cache_id`,`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_email_cache_mg`
--

LOCK TABLES `exp_email_cache_mg` WRITE;
/*!40000 ALTER TABLE `exp_email_cache_mg` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_email_cache_mg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_email_cache_ml`
--

DROP TABLE IF EXISTS `exp_email_cache_ml`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_email_cache_ml` (
  `cache_id` int(6) unsigned NOT NULL,
  `list_id` smallint(4) NOT NULL,
  PRIMARY KEY (`cache_id`,`list_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_email_cache_ml`
--

LOCK TABLES `exp_email_cache_ml` WRITE;
/*!40000 ALTER TABLE `exp_email_cache_ml` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_email_cache_ml` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_email_console_cache`
--

DROP TABLE IF EXISTS `exp_email_console_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_email_console_cache` (
  `cache_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `cache_date` int(10) unsigned NOT NULL DEFAULT '0',
  `member_id` int(10) unsigned NOT NULL,
  `member_name` varchar(50) NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `recipient` varchar(70) NOT NULL,
  `recipient_name` varchar(50) NOT NULL,
  `subject` varchar(120) NOT NULL,
  `message` mediumtext NOT NULL,
  PRIMARY KEY (`cache_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_email_console_cache`
--

LOCK TABLES `exp_email_console_cache` WRITE;
/*!40000 ALTER TABLE `exp_email_console_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_email_console_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_entry_ping_status`
--

DROP TABLE IF EXISTS `exp_entry_ping_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_entry_ping_status` (
  `entry_id` int(10) unsigned NOT NULL,
  `ping_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`entry_id`,`ping_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_entry_ping_status`
--

LOCK TABLES `exp_entry_ping_status` WRITE;
/*!40000 ALTER TABLE `exp_entry_ping_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_entry_ping_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_entry_versioning`
--

DROP TABLE IF EXISTS `exp_entry_versioning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_entry_versioning` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(10) unsigned NOT NULL,
  `channel_id` int(4) unsigned NOT NULL,
  `author_id` int(10) unsigned NOT NULL,
  `version_date` int(10) NOT NULL,
  `version_data` mediumtext NOT NULL,
  PRIMARY KEY (`version_id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_entry_versioning`
--

LOCK TABLES `exp_entry_versioning` WRITE;
/*!40000 ALTER TABLE `exp_entry_versioning` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_entry_versioning` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_extensions`
--

DROP TABLE IF EXISTS `exp_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_extensions` (
  `extension_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(50) NOT NULL DEFAULT '',
  `method` varchar(50) NOT NULL DEFAULT '',
  `hook` varchar(50) NOT NULL DEFAULT '',
  `settings` text NOT NULL,
  `priority` int(2) NOT NULL DEFAULT '10',
  `version` varchar(10) NOT NULL DEFAULT '',
  `enabled` char(1) NOT NULL DEFAULT 'y',
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_extensions`
--

LOCK TABLES `exp_extensions` WRITE;
/*!40000 ALTER TABLE `exp_extensions` DISABLE KEYS */;
INSERT INTO `exp_extensions` VALUES (1,'Safecracker_ext','form_declaration_modify_data','form_declaration_modify_data','',10,'2.1','y'),(2,'Rte_ext','myaccount_nav_setup','myaccount_nav_setup','',10,'1.0','y'),(3,'Rte_ext','cp_menu_array','cp_menu_array','',10,'1.0','y'),(4,'Rte_ext','publish_form_entry_data','publish_form_entry_data','',10,'1.0','y'),(5,'Nsm_htaccess_generator_ext','entry_submission_end','entry_submission_end','a:0:{}',10,'1.1.5','y'),(6,'Nsm_htaccess_generator_ext','update_template_end','update_template_end','a:0:{}',10,'1.1.5','y'),(7,'Channel_images_ext','wygwam_config','wygwam_config','a:0:{}',100,'5.4.4','y'),(8,'Matrix_ext','channel_entries_tagdata','channel_entries_tagdata','',10,'2.5.5','y');
/*!40000 ALTER TABLE `exp_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_field_formatting`
--

DROP TABLE IF EXISTS `exp_field_formatting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_field_formatting` (
  `formatting_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(10) unsigned NOT NULL,
  `field_fmt` varchar(40) NOT NULL,
  PRIMARY KEY (`formatting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_field_formatting`
--

LOCK TABLES `exp_field_formatting` WRITE;
/*!40000 ALTER TABLE `exp_field_formatting` DISABLE KEYS */;
INSERT INTO `exp_field_formatting` VALUES (15,5,'xhtml'),(14,5,'br'),(13,5,'none'),(9,3,'xhtml'),(8,3,'br'),(7,3,'none'),(10,4,'none'),(11,4,'br'),(12,4,'xhtml'),(16,6,'none'),(17,6,'br'),(18,6,'xhtml'),(19,7,'none'),(20,7,'br'),(21,7,'xhtml'),(22,8,'none'),(23,8,'br'),(24,8,'xhtml');
/*!40000 ALTER TABLE `exp_field_formatting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_field_groups`
--

DROP TABLE IF EXISTS `exp_field_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_field_groups` (
  `group_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_name` varchar(50) NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_field_groups`
--

LOCK TABLES `exp_field_groups` WRITE;
/*!40000 ALTER TABLE `exp_field_groups` DISABLE KEYS */;
INSERT INTO `exp_field_groups` VALUES (1,1,'main'),(2,1,'featured slides');
/*!40000 ALTER TABLE `exp_field_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_fieldtypes`
--

DROP TABLE IF EXISTS `exp_fieldtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_fieldtypes` (
  `fieldtype_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `version` varchar(12) NOT NULL,
  `settings` text,
  `has_global_settings` char(1) DEFAULT 'n',
  PRIMARY KEY (`fieldtype_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_fieldtypes`
--

LOCK TABLES `exp_fieldtypes` WRITE;
/*!40000 ALTER TABLE `exp_fieldtypes` DISABLE KEYS */;
INSERT INTO `exp_fieldtypes` VALUES (1,'select','1.0','YTowOnt9','n'),(2,'text','1.0','YTowOnt9','n'),(3,'textarea','1.0','YTowOnt9','n'),(4,'date','1.0','YTowOnt9','n'),(5,'file','1.0','YTowOnt9','n'),(6,'multi_select','1.0','YTowOnt9','n'),(7,'checkboxes','1.0','YTowOnt9','n'),(8,'radio','1.0','YTowOnt9','n'),(9,'relationship','1.0','YTowOnt9','n'),(10,'rte','1.0','YTowOnt9','n'),(11,'channel_images','5.4.4','YTowOnt9','n'),(12,'wygwam','2.7.1','YTowOnt9','y'),(13,'matrix','2.5.5','YTowOnt9','y'),(14,'fieldpack_checkboxes','2.0.2','YTowOnt9','n'),(15,'fieldpack_dropdown','2.0.2','YTowOnt9','n'),(16,'fieldpack_list','2.0.2','YTowOnt9','n'),(17,'fieldpack_multiselect','2.0.2','YTowOnt9','n'),(18,'fieldpack_pill','2.0.2','YTowOnt9','n'),(19,'fieldpack_radio_buttons','2.0.2','YTowOnt9','n'),(20,'fieldpack_switch','2.0.2','YTowOnt9','n'),(21,'nsm_publish_hints','1.0.1','YTowOnt9','y');
/*!40000 ALTER TABLE `exp_fieldtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_file_categories`
--

DROP TABLE IF EXISTS `exp_file_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_file_categories` (
  `file_id` int(10) unsigned DEFAULT NULL,
  `cat_id` int(10) unsigned DEFAULT NULL,
  `sort` int(10) unsigned DEFAULT '0',
  `is_cover` char(1) DEFAULT 'n',
  KEY `file_id` (`file_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_file_categories`
--

LOCK TABLES `exp_file_categories` WRITE;
/*!40000 ALTER TABLE `exp_file_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_file_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_file_dimensions`
--

DROP TABLE IF EXISTS `exp_file_dimensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_file_dimensions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `upload_location_id` int(4) unsigned DEFAULT NULL,
  `title` varchar(255) DEFAULT '',
  `short_name` varchar(255) DEFAULT '',
  `resize_type` varchar(50) DEFAULT '',
  `width` int(10) DEFAULT '0',
  `height` int(10) DEFAULT '0',
  `watermark_id` int(4) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `upload_location_id` (`upload_location_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_file_dimensions`
--

LOCK TABLES `exp_file_dimensions` WRITE;
/*!40000 ALTER TABLE `exp_file_dimensions` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_file_dimensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_file_watermarks`
--

DROP TABLE IF EXISTS `exp_file_watermarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_file_watermarks` (
  `wm_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `wm_name` varchar(80) DEFAULT NULL,
  `wm_type` varchar(10) DEFAULT 'text',
  `wm_image_path` varchar(100) DEFAULT NULL,
  `wm_test_image_path` varchar(100) DEFAULT NULL,
  `wm_use_font` char(1) DEFAULT 'y',
  `wm_font` varchar(30) DEFAULT NULL,
  `wm_font_size` int(3) unsigned DEFAULT NULL,
  `wm_text` varchar(100) DEFAULT NULL,
  `wm_vrt_alignment` varchar(10) DEFAULT 'top',
  `wm_hor_alignment` varchar(10) DEFAULT 'left',
  `wm_padding` int(3) unsigned DEFAULT NULL,
  `wm_opacity` int(3) unsigned DEFAULT NULL,
  `wm_hor_offset` int(4) unsigned DEFAULT NULL,
  `wm_vrt_offset` int(4) unsigned DEFAULT NULL,
  `wm_x_transp` int(4) DEFAULT NULL,
  `wm_y_transp` int(4) DEFAULT NULL,
  `wm_font_color` varchar(7) DEFAULT NULL,
  `wm_use_drop_shadow` char(1) DEFAULT 'y',
  `wm_shadow_distance` int(3) unsigned DEFAULT NULL,
  `wm_shadow_color` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`wm_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_file_watermarks`
--

LOCK TABLES `exp_file_watermarks` WRITE;
/*!40000 ALTER TABLE `exp_file_watermarks` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_file_watermarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_files`
--

DROP TABLE IF EXISTS `exp_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_files` (
  `file_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned DEFAULT '1',
  `title` varchar(255) DEFAULT NULL,
  `upload_location_id` int(4) unsigned DEFAULT '0',
  `rel_path` varchar(255) DEFAULT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_size` int(10) DEFAULT '0',
  `description` text,
  `credit` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `uploaded_by_member_id` int(10) unsigned DEFAULT '0',
  `upload_date` int(10) DEFAULT NULL,
  `modified_by_member_id` int(10) unsigned DEFAULT '0',
  `modified_date` int(10) DEFAULT NULL,
  `file_hw_original` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`file_id`),
  KEY `upload_location_id` (`upload_location_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_files`
--

LOCK TABLES `exp_files` WRITE;
/*!40000 ALTER TABLE `exp_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_global_variables`
--

DROP TABLE IF EXISTS `exp_global_variables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_global_variables` (
  `variable_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `variable_name` varchar(50) NOT NULL,
  `variable_data` text NOT NULL,
  PRIMARY KEY (`variable_id`),
  KEY `variable_name` (`variable_name`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_global_variables`
--

LOCK TABLES `exp_global_variables` WRITE;
/*!40000 ALTER TABLE `exp_global_variables` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_global_variables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_html_buttons`
--

DROP TABLE IF EXISTS `exp_html_buttons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_html_buttons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_id` int(10) NOT NULL DEFAULT '0',
  `tag_name` varchar(32) NOT NULL,
  `tag_open` varchar(120) NOT NULL,
  `tag_close` varchar(120) NOT NULL,
  `accesskey` varchar(32) NOT NULL,
  `tag_order` int(3) unsigned NOT NULL,
  `tag_row` char(1) NOT NULL DEFAULT '1',
  `classname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_html_buttons`
--

LOCK TABLES `exp_html_buttons` WRITE;
/*!40000 ALTER TABLE `exp_html_buttons` DISABLE KEYS */;
INSERT INTO `exp_html_buttons` VALUES (1,1,0,'b','<strong>','</strong>','b',1,'1','btn_b'),(2,1,0,'i','<em>','</em>','i',2,'1','btn_i'),(3,1,0,'blockquote','<blockquote>','</blockquote>','q',3,'1','btn_blockquote'),(4,1,0,'a','<a href=\"[![Link:!:http://]!]\"(!( title=\"[![Title]!]\")!)>','</a>','a',4,'1','btn_a'),(5,1,0,'img','<img src=\"[![Link:!:http://]!]\" alt=\"[![Alternative text]!]\" />','','',5,'1','btn_img');
/*!40000 ALTER TABLE `exp_html_buttons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_layout_publish`
--

DROP TABLE IF EXISTS `exp_layout_publish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_layout_publish` (
  `layout_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_group` int(4) unsigned NOT NULL DEFAULT '0',
  `channel_id` int(4) unsigned NOT NULL DEFAULT '0',
  `field_layout` text,
  PRIMARY KEY (`layout_id`),
  KEY `site_id` (`site_id`),
  KEY `member_group` (`member_group`),
  KEY `channel_id` (`channel_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_layout_publish`
--

LOCK TABLES `exp_layout_publish` WRITE;
/*!40000 ALTER TABLE `exp_layout_publish` DISABLE KEYS */;
INSERT INTO `exp_layout_publish` VALUES (6,1,1,3,'a:5:{s:7:\"publish\";a:8:{s:10:\"_tab_label\";s:7:\"Publish\";s:5:\"title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"50%\";}s:9:\"url_title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"50%\";}i:4;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:5;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:6;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:7;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:8;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}}s:4:\"date\";a:3:{s:10:\"_tab_label\";s:4:\"Date\";s:10:\"entry_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:15:\"expiration_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:10:\"categories\";a:2:{s:10:\"_tab_label\";s:10:\"Categories\";s:8:\"category\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:7:\"options\";a:6:{s:10:\"_tab_label\";s:7:\"Options\";s:11:\"new_channel\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"status\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"author\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:7:\"options\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:4:\"ping\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:5:\"pages\";a:3:{s:10:\"_tab_label\";s:5:\"Pages\";s:16:\"pages__pages_uri\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:24:\"pages__pages_template_id\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}}'),(7,1,6,3,'a:5:{s:7:\"publish\";a:8:{s:10:\"_tab_label\";s:7:\"Publish\";s:5:\"title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"50%\";}s:9:\"url_title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"50%\";}i:4;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:5;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:6;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:7;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:8;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}}s:4:\"date\";a:3:{s:10:\"_tab_label\";s:4:\"Date\";s:10:\"entry_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:15:\"expiration_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:10:\"categories\";a:2:{s:10:\"_tab_label\";s:10:\"Categories\";s:8:\"category\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:7:\"options\";a:6:{s:10:\"_tab_label\";s:7:\"Options\";s:11:\"new_channel\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"status\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"author\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:7:\"options\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:4:\"ping\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:5:\"pages\";a:3:{s:10:\"_tab_label\";s:5:\"Pages\";s:16:\"pages__pages_uri\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:24:\"pages__pages_template_id\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}}'),(14,1,1,1,'a:4:{s:7:\"publish\";a:9:{s:10:\"_tab_label\";s:7:\"Publish\";s:5:\"title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"50%\";}s:9:\"url_title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"50%\";}i:6;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"50%\";}i:7;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"50%\";}i:8;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:4;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:8:\"category\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:5;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:4:\"date\";a:3:{s:10:\"_tab_label\";s:4:\"Date\";s:10:\"entry_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:15:\"expiration_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:7:\"options\";a:6:{s:10:\"_tab_label\";s:7:\"Options\";s:11:\"new_channel\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"status\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"author\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:7:\"options\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:4:\"ping\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:5:\"pages\";a:3:{s:10:\"_tab_label\";s:5:\"Pages\";s:16:\"pages__pages_uri\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:24:\"pages__pages_template_id\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}}'),(15,1,6,1,'a:4:{s:7:\"publish\";a:9:{s:10:\"_tab_label\";s:7:\"Publish\";s:5:\"title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"50%\";}s:9:\"url_title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"50%\";}i:6;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"50%\";}i:7;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"50%\";}i:8;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:4;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:8:\"category\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:5;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:4:\"date\";a:3:{s:10:\"_tab_label\";s:4:\"Date\";s:10:\"entry_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:15:\"expiration_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:7:\"options\";a:6:{s:10:\"_tab_label\";s:7:\"Options\";s:11:\"new_channel\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"status\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"author\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:7:\"options\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:4:\"ping\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:5:\"pages\";a:3:{s:10:\"_tab_label\";s:5:\"Pages\";s:16:\"pages__pages_uri\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:24:\"pages__pages_template_id\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}}');
/*!40000 ALTER TABLE `exp_layout_publish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_matrix_cols`
--

DROP TABLE IF EXISTS `exp_matrix_cols`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_matrix_cols` (
  `col_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned DEFAULT '1',
  `field_id` int(6) unsigned DEFAULT NULL,
  `var_id` int(6) unsigned DEFAULT NULL,
  `col_name` varchar(32) DEFAULT NULL,
  `col_label` varchar(50) DEFAULT NULL,
  `col_instructions` text,
  `col_type` varchar(50) DEFAULT 'text',
  `col_required` char(1) DEFAULT 'n',
  `col_search` char(1) DEFAULT 'n',
  `col_order` int(3) unsigned DEFAULT NULL,
  `col_width` varchar(4) DEFAULT NULL,
  `col_settings` text,
  PRIMARY KEY (`col_id`),
  KEY `site_id` (`site_id`),
  KEY `field_id` (`field_id`),
  KEY `var_id` (`var_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_matrix_cols`
--

LOCK TABLES `exp_matrix_cols` WRITE;
/*!40000 ALTER TABLE `exp_matrix_cols` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_matrix_cols` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_matrix_data`
--

DROP TABLE IF EXISTS `exp_matrix_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_matrix_data` (
  `row_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned DEFAULT '1',
  `entry_id` int(10) unsigned DEFAULT NULL,
  `field_id` int(6) unsigned DEFAULT NULL,
  `var_id` int(6) unsigned DEFAULT NULL,
  `is_draft` tinyint(1) unsigned DEFAULT '0',
  `row_order` int(4) unsigned DEFAULT NULL,
  PRIMARY KEY (`row_id`),
  KEY `site_id` (`site_id`),
  KEY `entry_id` (`entry_id`),
  KEY `field_id` (`field_id`),
  KEY `var_id` (`var_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_matrix_data`
--

LOCK TABLES `exp_matrix_data` WRITE;
/*!40000 ALTER TABLE `exp_matrix_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_matrix_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_member_bulletin_board`
--

DROP TABLE IF EXISTS `exp_member_bulletin_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_member_bulletin_board` (
  `bulletin_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` int(10) unsigned NOT NULL,
  `bulletin_group` int(8) unsigned NOT NULL,
  `bulletin_date` int(10) unsigned NOT NULL,
  `hash` varchar(10) NOT NULL DEFAULT '',
  `bulletin_expires` int(10) unsigned NOT NULL DEFAULT '0',
  `bulletin_message` text NOT NULL,
  PRIMARY KEY (`bulletin_id`),
  KEY `sender_id` (`sender_id`),
  KEY `hash` (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_member_bulletin_board`
--

LOCK TABLES `exp_member_bulletin_board` WRITE;
/*!40000 ALTER TABLE `exp_member_bulletin_board` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_member_bulletin_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_member_data`
--

DROP TABLE IF EXISTS `exp_member_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_member_data` (
  `member_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_member_data`
--

LOCK TABLES `exp_member_data` WRITE;
/*!40000 ALTER TABLE `exp_member_data` DISABLE KEYS */;
INSERT INTO `exp_member_data` VALUES (1);
/*!40000 ALTER TABLE `exp_member_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_member_fields`
--

DROP TABLE IF EXISTS `exp_member_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_member_fields` (
  `m_field_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `m_field_name` varchar(32) NOT NULL,
  `m_field_label` varchar(50) NOT NULL,
  `m_field_description` text NOT NULL,
  `m_field_type` varchar(12) NOT NULL DEFAULT 'text',
  `m_field_list_items` text NOT NULL,
  `m_field_ta_rows` tinyint(2) DEFAULT '8',
  `m_field_maxl` smallint(3) NOT NULL,
  `m_field_width` varchar(6) NOT NULL,
  `m_field_search` char(1) NOT NULL DEFAULT 'y',
  `m_field_required` char(1) NOT NULL DEFAULT 'n',
  `m_field_public` char(1) NOT NULL DEFAULT 'y',
  `m_field_reg` char(1) NOT NULL DEFAULT 'n',
  `m_field_cp_reg` char(1) NOT NULL DEFAULT 'n',
  `m_field_fmt` char(5) NOT NULL DEFAULT 'none',
  `m_field_order` int(3) unsigned NOT NULL,
  PRIMARY KEY (`m_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_member_fields`
--

LOCK TABLES `exp_member_fields` WRITE;
/*!40000 ALTER TABLE `exp_member_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_member_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_member_groups`
--

DROP TABLE IF EXISTS `exp_member_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_member_groups` (
  `group_id` smallint(4) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_title` varchar(100) NOT NULL,
  `group_description` text NOT NULL,
  `is_locked` char(1) NOT NULL DEFAULT 'y',
  `can_view_offline_system` char(1) NOT NULL DEFAULT 'n',
  `can_view_online_system` char(1) NOT NULL DEFAULT 'y',
  `can_access_cp` char(1) NOT NULL DEFAULT 'y',
  `can_access_content` char(1) NOT NULL DEFAULT 'n',
  `can_access_publish` char(1) NOT NULL DEFAULT 'n',
  `can_access_edit` char(1) NOT NULL DEFAULT 'n',
  `can_access_files` char(1) NOT NULL DEFAULT 'n',
  `can_access_fieldtypes` char(1) NOT NULL DEFAULT 'n',
  `can_access_design` char(1) NOT NULL DEFAULT 'n',
  `can_access_addons` char(1) NOT NULL DEFAULT 'n',
  `can_access_modules` char(1) NOT NULL DEFAULT 'n',
  `can_access_extensions` char(1) NOT NULL DEFAULT 'n',
  `can_access_accessories` char(1) NOT NULL DEFAULT 'n',
  `can_access_plugins` char(1) NOT NULL DEFAULT 'n',
  `can_access_members` char(1) NOT NULL DEFAULT 'n',
  `can_access_admin` char(1) NOT NULL DEFAULT 'n',
  `can_access_sys_prefs` char(1) NOT NULL DEFAULT 'n',
  `can_access_content_prefs` char(1) NOT NULL DEFAULT 'n',
  `can_access_tools` char(1) NOT NULL DEFAULT 'n',
  `can_access_comm` char(1) NOT NULL DEFAULT 'n',
  `can_access_utilities` char(1) NOT NULL DEFAULT 'n',
  `can_access_data` char(1) NOT NULL DEFAULT 'n',
  `can_access_logs` char(1) NOT NULL DEFAULT 'n',
  `can_admin_channels` char(1) NOT NULL DEFAULT 'n',
  `can_admin_upload_prefs` char(1) NOT NULL DEFAULT 'n',
  `can_admin_design` char(1) NOT NULL DEFAULT 'n',
  `can_admin_members` char(1) NOT NULL DEFAULT 'n',
  `can_delete_members` char(1) NOT NULL DEFAULT 'n',
  `can_admin_mbr_groups` char(1) NOT NULL DEFAULT 'n',
  `can_admin_mbr_templates` char(1) NOT NULL DEFAULT 'n',
  `can_ban_users` char(1) NOT NULL DEFAULT 'n',
  `can_admin_modules` char(1) NOT NULL DEFAULT 'n',
  `can_admin_templates` char(1) NOT NULL DEFAULT 'n',
  `can_edit_categories` char(1) NOT NULL DEFAULT 'n',
  `can_delete_categories` char(1) NOT NULL DEFAULT 'n',
  `can_view_other_entries` char(1) NOT NULL DEFAULT 'n',
  `can_edit_other_entries` char(1) NOT NULL DEFAULT 'n',
  `can_assign_post_authors` char(1) NOT NULL DEFAULT 'n',
  `can_delete_self_entries` char(1) NOT NULL DEFAULT 'n',
  `can_delete_all_entries` char(1) NOT NULL DEFAULT 'n',
  `can_view_other_comments` char(1) NOT NULL DEFAULT 'n',
  `can_edit_own_comments` char(1) NOT NULL DEFAULT 'n',
  `can_delete_own_comments` char(1) NOT NULL DEFAULT 'n',
  `can_edit_all_comments` char(1) NOT NULL DEFAULT 'n',
  `can_delete_all_comments` char(1) NOT NULL DEFAULT 'n',
  `can_moderate_comments` char(1) NOT NULL DEFAULT 'n',
  `can_send_email` char(1) NOT NULL DEFAULT 'n',
  `can_send_cached_email` char(1) NOT NULL DEFAULT 'n',
  `can_email_member_groups` char(1) NOT NULL DEFAULT 'n',
  `can_email_mailinglist` char(1) NOT NULL DEFAULT 'n',
  `can_email_from_profile` char(1) NOT NULL DEFAULT 'n',
  `can_view_profiles` char(1) NOT NULL DEFAULT 'n',
  `can_edit_html_buttons` char(1) NOT NULL DEFAULT 'n',
  `can_delete_self` char(1) NOT NULL DEFAULT 'n',
  `mbr_delete_notify_emails` varchar(255) DEFAULT NULL,
  `can_post_comments` char(1) NOT NULL DEFAULT 'n',
  `exclude_from_moderation` char(1) NOT NULL DEFAULT 'n',
  `can_search` char(1) NOT NULL DEFAULT 'n',
  `search_flood_control` mediumint(5) unsigned NOT NULL,
  `can_send_private_messages` char(1) NOT NULL DEFAULT 'n',
  `prv_msg_send_limit` smallint(5) unsigned NOT NULL DEFAULT '20',
  `prv_msg_storage_limit` smallint(5) unsigned NOT NULL DEFAULT '60',
  `can_attach_in_private_messages` char(1) NOT NULL DEFAULT 'n',
  `can_send_bulletins` char(1) NOT NULL DEFAULT 'n',
  `include_in_authorlist` char(1) NOT NULL DEFAULT 'n',
  `include_in_memberlist` char(1) NOT NULL DEFAULT 'y',
  `include_in_mailinglists` char(1) NOT NULL DEFAULT 'y',
  PRIMARY KEY (`group_id`,`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_member_groups`
--

LOCK TABLES `exp_member_groups` WRITE;
/*!40000 ALTER TABLE `exp_member_groups` DISABLE KEYS */;
INSERT INTO `exp_member_groups` VALUES (1,1,'Super Admins','','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','','y','y','y',0,'y',20,60,'y','y','y','y','y'),(2,1,'Banned','','y','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','','n','n','n',60,'n',20,60,'n','n','n','n','n'),(3,1,'Guests','','y','n','y','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','y','n','n','n','n','','y','n','y',15,'n',20,60,'n','n','n','n','n'),(4,1,'Pending','','y','n','y','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','y','n','n','n','n','','y','n','y',15,'n',20,60,'n','n','n','n','n'),(5,1,'Members','','y','n','y','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','y','y','y','n','','y','n','y',10,'y',20,60,'y','n','n','y','y'),(6,1,'Content Editor','','n','y','y','y','y','y','y','y','y','n','n','y','n','y','n','y','n','n','y','n','n','n','n','y','y','n','n','y','y','y','n','y','n','n','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','n','','y','y','y',0,'y',20,60,'y','y','y','y','y');
/*!40000 ALTER TABLE `exp_member_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_member_homepage`
--

DROP TABLE IF EXISTS `exp_member_homepage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_member_homepage` (
  `member_id` int(10) unsigned NOT NULL,
  `recent_entries` char(1) NOT NULL DEFAULT 'l',
  `recent_entries_order` int(3) unsigned NOT NULL DEFAULT '0',
  `recent_comments` char(1) NOT NULL DEFAULT 'l',
  `recent_comments_order` int(3) unsigned NOT NULL DEFAULT '0',
  `recent_members` char(1) NOT NULL DEFAULT 'n',
  `recent_members_order` int(3) unsigned NOT NULL DEFAULT '0',
  `site_statistics` char(1) NOT NULL DEFAULT 'r',
  `site_statistics_order` int(3) unsigned NOT NULL DEFAULT '0',
  `member_search_form` char(1) NOT NULL DEFAULT 'n',
  `member_search_form_order` int(3) unsigned NOT NULL DEFAULT '0',
  `notepad` char(1) NOT NULL DEFAULT 'r',
  `notepad_order` int(3) unsigned NOT NULL DEFAULT '0',
  `bulletin_board` char(1) NOT NULL DEFAULT 'r',
  `bulletin_board_order` int(3) unsigned NOT NULL DEFAULT '0',
  `pmachine_news_feed` char(1) NOT NULL DEFAULT 'n',
  `pmachine_news_feed_order` int(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_member_homepage`
--

LOCK TABLES `exp_member_homepage` WRITE;
/*!40000 ALTER TABLE `exp_member_homepage` DISABLE KEYS */;
INSERT INTO `exp_member_homepage` VALUES (1,'l',1,'l',2,'n',0,'r',1,'n',0,'r',2,'r',0,'l',0);
/*!40000 ALTER TABLE `exp_member_homepage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_member_search`
--

DROP TABLE IF EXISTS `exp_member_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_member_search` (
  `search_id` varchar(32) NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `search_date` int(10) unsigned NOT NULL,
  `keywords` varchar(200) NOT NULL,
  `fields` varchar(200) NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `total_results` int(8) unsigned NOT NULL,
  `query` text NOT NULL,
  PRIMARY KEY (`search_id`),
  KEY `member_id` (`member_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_member_search`
--

LOCK TABLES `exp_member_search` WRITE;
/*!40000 ALTER TABLE `exp_member_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_member_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_members`
--

DROP TABLE IF EXISTS `exp_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_members` (
  `member_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` smallint(4) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL,
  `screen_name` varchar(50) NOT NULL,
  `password` varchar(128) NOT NULL,
  `salt` varchar(128) NOT NULL DEFAULT '',
  `unique_id` varchar(40) NOT NULL,
  `crypt_key` varchar(40) DEFAULT NULL,
  `authcode` varchar(10) DEFAULT NULL,
  `email` varchar(72) NOT NULL,
  `url` varchar(150) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `occupation` varchar(80) DEFAULT NULL,
  `interests` varchar(120) DEFAULT NULL,
  `bday_d` int(2) DEFAULT NULL,
  `bday_m` int(2) DEFAULT NULL,
  `bday_y` int(4) DEFAULT NULL,
  `aol_im` varchar(50) DEFAULT NULL,
  `yahoo_im` varchar(50) DEFAULT NULL,
  `msn_im` varchar(50) DEFAULT NULL,
  `icq` varchar(50) DEFAULT NULL,
  `bio` text,
  `signature` text,
  `avatar_filename` varchar(120) DEFAULT NULL,
  `avatar_width` int(4) unsigned DEFAULT NULL,
  `avatar_height` int(4) unsigned DEFAULT NULL,
  `photo_filename` varchar(120) DEFAULT NULL,
  `photo_width` int(4) unsigned DEFAULT NULL,
  `photo_height` int(4) unsigned DEFAULT NULL,
  `sig_img_filename` varchar(120) DEFAULT NULL,
  `sig_img_width` int(4) unsigned DEFAULT NULL,
  `sig_img_height` int(4) unsigned DEFAULT NULL,
  `ignore_list` text,
  `private_messages` int(4) unsigned NOT NULL DEFAULT '0',
  `accept_messages` char(1) NOT NULL DEFAULT 'y',
  `last_view_bulletins` int(10) NOT NULL DEFAULT '0',
  `last_bulletin_date` int(10) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `join_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_visit` int(10) unsigned NOT NULL DEFAULT '0',
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `total_entries` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_comments` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_forum_topics` mediumint(8) NOT NULL DEFAULT '0',
  `total_forum_posts` mediumint(8) NOT NULL DEFAULT '0',
  `last_entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_comment_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_forum_post_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_email_date` int(10) unsigned NOT NULL DEFAULT '0',
  `in_authorlist` char(1) NOT NULL DEFAULT 'n',
  `accept_admin_email` char(1) NOT NULL DEFAULT 'y',
  `accept_user_email` char(1) NOT NULL DEFAULT 'y',
  `notify_by_default` char(1) NOT NULL DEFAULT 'y',
  `notify_of_pm` char(1) NOT NULL DEFAULT 'y',
  `display_avatars` char(1) NOT NULL DEFAULT 'y',
  `display_signatures` char(1) NOT NULL DEFAULT 'y',
  `parse_smileys` char(1) NOT NULL DEFAULT 'y',
  `smart_notifications` char(1) NOT NULL DEFAULT 'y',
  `language` varchar(50) NOT NULL,
  `timezone` varchar(50) NOT NULL,
  `localization_is_site_default` char(1) NOT NULL DEFAULT 'n',
  `time_format` char(2) NOT NULL DEFAULT 'us',
  `cp_theme` varchar(32) DEFAULT NULL,
  `profile_theme` varchar(32) DEFAULT NULL,
  `forum_theme` varchar(32) DEFAULT NULL,
  `tracker` text,
  `template_size` varchar(2) NOT NULL DEFAULT '28',
  `notepad` text,
  `notepad_size` varchar(2) NOT NULL DEFAULT '18',
  `quick_links` text,
  `quick_tabs` text,
  `show_sidebar` char(1) NOT NULL DEFAULT 'n',
  `pmember_id` int(10) NOT NULL DEFAULT '0',
  `rte_enabled` char(1) NOT NULL DEFAULT 'y',
  `rte_toolset_id` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`member_id`),
  KEY `group_id` (`group_id`),
  KEY `unique_id` (`unique_id`),
  KEY `password` (`password`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_members`
--

LOCK TABLES `exp_members` WRITE;
/*!40000 ALTER TABLE `exp_members` DISABLE KEYS */;
INSERT INTO `exp_members` VALUES (1,1,'admin-kvq','admin-kvq','a2a244fdc1dde944c96fb6d893f07f3512811e892c6556356d676458a0881e2d3a05e33c1e6317d629e3373837da9cc791567e539d1ffbdffd7353b620a12108','\"?NKA_d#c~RZ0F%}GAL+l*=8YjGLxu#{MKIw:yxg^}-t\\cv2c03zC-nHBfF%mp|exWu*?a4|ib$zGP/P\'X}fqfJQu%q_`\"I%xe(cX/VVQ?4t]6z:.4.-[TUKtfht~+gt','b341dfd17c49ab5210fa2bee66cba3867c39691e','502c9f26e7c1ee4dcd03f17146bcce609f571230',NULL,'sean@gravener.net',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'127.0.0.1',1368900952,1370705639,1370720846,5,0,0,0,1370719553,0,0,0,'n','y','y','y','y','y','y','y','y','english','America/New_York','n','us',NULL,NULL,NULL,NULL,'28',NULL,'18','','Group:&nbsp;main|C=admin_content&M=field_management&group_id=1|1','n',0,'y',0);
/*!40000 ALTER TABLE `exp_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_message_attachments`
--

DROP TABLE IF EXISTS `exp_message_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_message_attachments` (
  `attachment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` int(10) unsigned NOT NULL DEFAULT '0',
  `message_id` int(10) unsigned NOT NULL DEFAULT '0',
  `attachment_name` varchar(50) NOT NULL DEFAULT '',
  `attachment_hash` varchar(40) NOT NULL DEFAULT '',
  `attachment_extension` varchar(20) NOT NULL DEFAULT '',
  `attachment_location` varchar(150) NOT NULL DEFAULT '',
  `attachment_date` int(10) unsigned NOT NULL DEFAULT '0',
  `attachment_size` int(10) unsigned NOT NULL DEFAULT '0',
  `is_temp` char(1) NOT NULL DEFAULT 'y',
  PRIMARY KEY (`attachment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_message_attachments`
--

LOCK TABLES `exp_message_attachments` WRITE;
/*!40000 ALTER TABLE `exp_message_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_message_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_message_copies`
--

DROP TABLE IF EXISTS `exp_message_copies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_message_copies` (
  `copy_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `message_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sender_id` int(10) unsigned NOT NULL DEFAULT '0',
  `recipient_id` int(10) unsigned NOT NULL DEFAULT '0',
  `message_received` char(1) NOT NULL DEFAULT 'n',
  `message_read` char(1) NOT NULL DEFAULT 'n',
  `message_time_read` int(10) unsigned NOT NULL DEFAULT '0',
  `attachment_downloaded` char(1) NOT NULL DEFAULT 'n',
  `message_folder` int(10) unsigned NOT NULL DEFAULT '1',
  `message_authcode` varchar(10) NOT NULL DEFAULT '',
  `message_deleted` char(1) NOT NULL DEFAULT 'n',
  `message_status` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`copy_id`),
  KEY `message_id` (`message_id`),
  KEY `recipient_id` (`recipient_id`),
  KEY `sender_id` (`sender_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_message_copies`
--

LOCK TABLES `exp_message_copies` WRITE;
/*!40000 ALTER TABLE `exp_message_copies` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_message_copies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_message_data`
--

DROP TABLE IF EXISTS `exp_message_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_message_data` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` int(10) unsigned NOT NULL DEFAULT '0',
  `message_date` int(10) unsigned NOT NULL DEFAULT '0',
  `message_subject` varchar(255) NOT NULL DEFAULT '',
  `message_body` text NOT NULL,
  `message_tracking` char(1) NOT NULL DEFAULT 'y',
  `message_attachments` char(1) NOT NULL DEFAULT 'n',
  `message_recipients` varchar(200) NOT NULL DEFAULT '',
  `message_cc` varchar(200) NOT NULL DEFAULT '',
  `message_hide_cc` char(1) NOT NULL DEFAULT 'n',
  `message_sent_copy` char(1) NOT NULL DEFAULT 'n',
  `total_recipients` int(5) unsigned NOT NULL DEFAULT '0',
  `message_status` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`message_id`),
  KEY `sender_id` (`sender_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_message_data`
--

LOCK TABLES `exp_message_data` WRITE;
/*!40000 ALTER TABLE `exp_message_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_message_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_message_folders`
--

DROP TABLE IF EXISTS `exp_message_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_message_folders` (
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `folder1_name` varchar(50) NOT NULL DEFAULT 'InBox',
  `folder2_name` varchar(50) NOT NULL DEFAULT 'Sent',
  `folder3_name` varchar(50) NOT NULL DEFAULT '',
  `folder4_name` varchar(50) NOT NULL DEFAULT '',
  `folder5_name` varchar(50) NOT NULL DEFAULT '',
  `folder6_name` varchar(50) NOT NULL DEFAULT '',
  `folder7_name` varchar(50) NOT NULL DEFAULT '',
  `folder8_name` varchar(50) NOT NULL DEFAULT '',
  `folder9_name` varchar(50) NOT NULL DEFAULT '',
  `folder10_name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_message_folders`
--

LOCK TABLES `exp_message_folders` WRITE;
/*!40000 ALTER TABLE `exp_message_folders` DISABLE KEYS */;
INSERT INTO `exp_message_folders` VALUES (1,'InBox','Sent','','','','','','','','');
/*!40000 ALTER TABLE `exp_message_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_message_listed`
--

DROP TABLE IF EXISTS `exp_message_listed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_message_listed` (
  `listed_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `listed_member` int(10) unsigned NOT NULL DEFAULT '0',
  `listed_description` varchar(100) NOT NULL DEFAULT '',
  `listed_type` varchar(10) NOT NULL DEFAULT 'blocked',
  PRIMARY KEY (`listed_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_message_listed`
--

LOCK TABLES `exp_message_listed` WRITE;
/*!40000 ALTER TABLE `exp_message_listed` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_message_listed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_module_member_groups`
--

DROP TABLE IF EXISTS `exp_module_member_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_module_member_groups` (
  `group_id` smallint(4) unsigned NOT NULL,
  `module_id` mediumint(5) unsigned NOT NULL,
  PRIMARY KEY (`group_id`,`module_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_module_member_groups`
--

LOCK TABLES `exp_module_member_groups` WRITE;
/*!40000 ALTER TABLE `exp_module_member_groups` DISABLE KEYS */;
INSERT INTO `exp_module_member_groups` VALUES (6,4),(6,6),(6,10),(6,11),(6,12);
/*!40000 ALTER TABLE `exp_module_member_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_modules`
--

DROP TABLE IF EXISTS `exp_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_modules` (
  `module_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `module_name` varchar(50) NOT NULL,
  `module_version` varchar(12) NOT NULL,
  `has_cp_backend` char(1) NOT NULL DEFAULT 'n',
  `has_publish_fields` char(1) NOT NULL DEFAULT 'n',
  `settings` text,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_modules`
--

LOCK TABLES `exp_modules` WRITE;
/*!40000 ALTER TABLE `exp_modules` DISABLE KEYS */;
INSERT INTO `exp_modules` VALUES (2,'Emoticon','2.0','n','n',NULL),(3,'File','1.0.0','n','n',NULL),(4,'Pages','2.2','y','y',NULL),(5,'Rss','2.0','n','n',NULL),(6,'Safecracker','2.1','y','n',NULL),(7,'Search','2.2.1','n','n',NULL),(8,'Channel','2.0.1','n','n',NULL),(9,'Stats','2.0','n','n',NULL),(10,'Rte','1.0','y','n',NULL),(11,'Channel_images','5.4.4','y','n',NULL),(12,'Wygwam','2.7.1','y','n',NULL);
/*!40000 ALTER TABLE `exp_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_nsm_addon_settings`
--

DROP TABLE IF EXISTS `exp_nsm_addon_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_nsm_addon_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(5) unsigned NOT NULL DEFAULT '1',
  `addon_id` varchar(255) NOT NULL,
  `settings` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_nsm_addon_settings`
--

LOCK TABLES `exp_nsm_addon_settings` WRITE;
/*!40000 ALTER TABLE `exp_nsm_addon_settings` DISABLE KEYS */;
INSERT INTO `exp_nsm_addon_settings` VALUES (1,1,'nsm_htaccess_generator','{\"enabled\":\"1\",\"path\":[\"C:\\\\xampp\\\\htdocs\\\\lcsportsfields.org\\\\www\\/.htaccess\"],\"template\":\"# For more awesome .htaccess rules and optimisations\\n# checkout the HTML5 Boilerplate .htaccess files\\n# https:\\/\\/github.com\\/paulirish\\/html5-boilerplate\\/blob\\/master\\/.htaccess\\n\\n# Although highly unlikely, your host may have +FollowSymLinks enabled at the root level,\\n# yet disallow its addition in .htaccess; in which case, \\n# adding +FollowSymLinks will break your setup (probably a 500 error), \\n# so just remove it, and your rules should work fine.\\nOptions +FollowSymlinks\\n\\n# EE 404 page for missing pages\\nErrorDocument 404 \\/index.php\\/{ee:404}\\n\\n# Simple 404 for missing files\\n<FilesMatch \\\"(\\\\.jpe?g|gif|png|bmp|css|js|flv)$\\\">\\n  ErrorDocument 404 \\\"File Not Found\\\"\\n<\\/FilesMatch>\\n\\n# Rewriting will likely already be on, uncomment if it isnt\\n# <IfModule mod_rewrite.c>\\n# RewriteEngine On\\n# RewriteBase \\/\\n# <\\/IfModule>\\n\\n# Block access to \\\"hidden\\\" directories whose names begin with a period. This\\n# includes directories used by version control systems such as Subversion or Git.\\n<IfModule mod_rewrite.c>\\n  RewriteRule \\\"(^|\\/)\\\\.\\\" - [F]\\n<\\/IfModule>\\n\\n# remove the www - Uncomment to activate\\n<IfModule mod_rewrite.c>\\n  RewriteCond %{HTTPS} !=on\\n  RewriteCond %{HTTP_HOST} ^www\\\\.(.+)$ [NC]\\n  RewriteRule ^(.*)$ http:\\/\\/%1\\/$1 [R=301,L]\\n<\\/IfModule>\\n\\n# Remove the trailing slash to paths without an extension\\n# Uncomment to activate\\n# <IfModule mod_rewrite.c>\\n#   RewriteRule ^(.*)\\/$ \\/$1 [R=301,L]\\n# <\\/IfModule>\\n\\n# Remove index.php\\n# Uses the \\\"include method\\\"\\n# http:\\/\\/expressionengine.com\\/wiki\\/Remove_index.php_From_URLs\\/#Include_List_Method\\n# <IfModule mod_rewrite.c>\\nRewriteCond %{QUERY_STRING} !^(ACT=.*)$ [NC]\\nRewriteCond %{REQUEST_URI} !(\\\\.[a-zA-Z0-9]{1,5})$\\nRewriteCond %{REQUEST_FILENAME} !-f\\nRewriteCond %{REQUEST_FILENAME} !-d\\nRewriteCond %{REQUEST_URI} ^\\/({ee:template_groups}{ee:pages}members|P[0-9]{2,8}) [NC]\\nRewriteRule (.*) \\/index.php\\/$1 [L]\"}');
/*!40000 ALTER TABLE `exp_nsm_addon_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_online_users`
--

DROP TABLE IF EXISTS `exp_online_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_online_users` (
  `online_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_id` int(10) NOT NULL DEFAULT '0',
  `in_forum` char(1) NOT NULL DEFAULT 'n',
  `name` varchar(50) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `anon` char(1) NOT NULL,
  PRIMARY KEY (`online_id`),
  KEY `date` (`date`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_online_users`
--

LOCK TABLES `exp_online_users` WRITE;
/*!40000 ALTER TABLE `exp_online_users` DISABLE KEYS */;
INSERT INTO `exp_online_users` VALUES (1,1,0,'n','','127.0.0.1',1368900975,''),(2,1,0,'n','','127.0.0.1',1368902724,'');
/*!40000 ALTER TABLE `exp_online_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_pages_configuration`
--

DROP TABLE IF EXISTS `exp_pages_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_pages_configuration` (
  `configuration_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(8) unsigned NOT NULL DEFAULT '1',
  `configuration_name` varchar(60) NOT NULL,
  `configuration_value` varchar(100) NOT NULL,
  PRIMARY KEY (`configuration_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_pages_configuration`
--

LOCK TABLES `exp_pages_configuration` WRITE;
/*!40000 ALTER TABLE `exp_pages_configuration` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_pages_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_password_lockout`
--

DROP TABLE IF EXISTS `exp_password_lockout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_password_lockout` (
  `lockout_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login_date` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`lockout_id`),
  KEY `login_date` (`login_date`),
  KEY `ip_address` (`ip_address`),
  KEY `user_agent` (`user_agent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_password_lockout`
--

LOCK TABLES `exp_password_lockout` WRITE;
/*!40000 ALTER TABLE `exp_password_lockout` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_password_lockout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_ping_servers`
--

DROP TABLE IF EXISTS `exp_ping_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_ping_servers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_id` int(10) NOT NULL DEFAULT '0',
  `server_name` varchar(32) NOT NULL,
  `server_url` varchar(150) NOT NULL,
  `port` varchar(4) NOT NULL DEFAULT '80',
  `ping_protocol` varchar(12) NOT NULL DEFAULT 'xmlrpc',
  `is_default` char(1) NOT NULL DEFAULT 'y',
  `server_order` int(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_ping_servers`
--

LOCK TABLES `exp_ping_servers` WRITE;
/*!40000 ALTER TABLE `exp_ping_servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_ping_servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_relationships`
--

DROP TABLE IF EXISTS `exp_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_relationships` (
  `relationship_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `child_id` int(10) unsigned NOT NULL DEFAULT '0',
  `field_id` int(10) unsigned NOT NULL DEFAULT '0',
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`relationship_id`),
  KEY `parent_id` (`parent_id`),
  KEY `child_id` (`child_id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_relationships`
--

LOCK TABLES `exp_relationships` WRITE;
/*!40000 ALTER TABLE `exp_relationships` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_remember_me`
--

DROP TABLE IF EXISTS `exp_remember_me`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_remember_me` (
  `remember_me_id` varchar(40) NOT NULL DEFAULT '0',
  `member_id` int(10) DEFAULT '0',
  `ip_address` varchar(45) DEFAULT '0',
  `user_agent` varchar(120) DEFAULT '',
  `admin_sess` tinyint(1) DEFAULT '0',
  `site_id` int(4) DEFAULT '1',
  `expiration` int(10) DEFAULT '0',
  `last_refresh` int(10) DEFAULT '0',
  PRIMARY KEY (`remember_me_id`),
  KEY `member_id` (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_remember_me`
--

LOCK TABLES `exp_remember_me` WRITE;
/*!40000 ALTER TABLE `exp_remember_me` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_remember_me` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_reset_password`
--

DROP TABLE IF EXISTS `exp_reset_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_reset_password` (
  `reset_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL,
  `resetcode` varchar(12) NOT NULL,
  `date` int(10) NOT NULL,
  PRIMARY KEY (`reset_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_reset_password`
--

LOCK TABLES `exp_reset_password` WRITE;
/*!40000 ALTER TABLE `exp_reset_password` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_reset_password` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_revision_tracker`
--

DROP TABLE IF EXISTS `exp_revision_tracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_revision_tracker` (
  `tracker_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(10) unsigned NOT NULL,
  `item_table` varchar(20) NOT NULL,
  `item_field` varchar(20) NOT NULL,
  `item_date` int(10) NOT NULL,
  `item_author_id` int(10) unsigned NOT NULL,
  `item_data` mediumtext NOT NULL,
  PRIMARY KEY (`tracker_id`),
  KEY `item_id` (`item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_revision_tracker`
--

LOCK TABLES `exp_revision_tracker` WRITE;
/*!40000 ALTER TABLE `exp_revision_tracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_revision_tracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_rte_tools`
--

DROP TABLE IF EXISTS `exp_rte_tools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_rte_tools` (
  `tool_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(75) DEFAULT NULL,
  `class` varchar(75) DEFAULT NULL,
  `enabled` char(1) DEFAULT 'y',
  PRIMARY KEY (`tool_id`),
  KEY `enabled` (`enabled`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_rte_tools`
--

LOCK TABLES `exp_rte_tools` WRITE;
/*!40000 ALTER TABLE `exp_rte_tools` DISABLE KEYS */;
INSERT INTO `exp_rte_tools` VALUES (1,'Blockquote','Blockquote_rte','y'),(2,'Bold','Bold_rte','y'),(3,'Headings','Headings_rte','y'),(4,'Image','Image_rte','y'),(5,'Italic','Italic_rte','y'),(6,'Link','Link_rte','y'),(7,'Ordered List','Ordered_list_rte','y'),(8,'Underline','Underline_rte','y'),(9,'Unordered List','Unordered_list_rte','y'),(10,'View Source','View_source_rte','y'),(11,'Channel_images','Channel_images_rte','y');
/*!40000 ALTER TABLE `exp_rte_tools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_rte_toolsets`
--

DROP TABLE IF EXISTS `exp_rte_toolsets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_rte_toolsets` (
  `toolset_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) DEFAULT '0',
  `name` varchar(100) DEFAULT NULL,
  `tools` text,
  `enabled` char(1) DEFAULT 'y',
  PRIMARY KEY (`toolset_id`),
  KEY `member_id` (`member_id`),
  KEY `enabled` (`enabled`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_rte_toolsets`
--

LOCK TABLES `exp_rte_toolsets` WRITE;
/*!40000 ALTER TABLE `exp_rte_toolsets` DISABLE KEYS */;
INSERT INTO `exp_rte_toolsets` VALUES (1,0,'Default','3|2|5|1|9|7|6|4|10','y');
/*!40000 ALTER TABLE `exp_rte_toolsets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_search`
--

DROP TABLE IF EXISTS `exp_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_search` (
  `search_id` varchar(32) NOT NULL,
  `site_id` int(4) NOT NULL DEFAULT '1',
  `search_date` int(10) NOT NULL,
  `keywords` varchar(60) NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `total_results` int(6) NOT NULL,
  `per_page` tinyint(3) unsigned NOT NULL,
  `query` mediumtext,
  `custom_fields` mediumtext,
  `result_page` varchar(70) NOT NULL,
  PRIMARY KEY (`search_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_search`
--

LOCK TABLES `exp_search` WRITE;
/*!40000 ALTER TABLE `exp_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_search_log`
--

DROP TABLE IF EXISTS `exp_search_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_search_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_id` int(10) unsigned NOT NULL,
  `screen_name` varchar(50) NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `search_date` int(10) NOT NULL,
  `search_type` varchar(32) NOT NULL,
  `search_terms` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_search_log`
--

LOCK TABLES `exp_search_log` WRITE;
/*!40000 ALTER TABLE `exp_search_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_search_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_security_hashes`
--

DROP TABLE IF EXISTS `exp_security_hashes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_security_hashes` (
  `hash_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` int(10) unsigned NOT NULL,
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `hash` varchar(40) NOT NULL,
  PRIMARY KEY (`hash_id`),
  KEY `hash` (`hash`)
) ENGINE=MyISAM AUTO_INCREMENT=797 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_security_hashes`
--

LOCK TABLES `exp_security_hashes` WRITE;
/*!40000 ALTER TABLE `exp_security_hashes` DISABLE KEYS */;
INSERT INTO `exp_security_hashes` VALUES (766,1370719512,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','0173b90368dfc8bdf32c320dfd0a716deb4e5457'),(765,1370719510,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','85e6deb7cc7499e10696b07b14b9942f03a9d297'),(764,1370719509,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','050245faf2e33687d9de1f26eba396f8d38b9476'),(767,1370719553,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','58f51a180f3f7151272ac9de6387b88eb4605c9b'),(762,1370719095,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','eaba0c5ed256d03b454387c91d63b7d5bc182d95'),(761,1370719093,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','dd35fd872bd3b155244f571c3eeb34275e6059b5'),(760,1370719092,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','560a11306ab7e9912d1df8c2f7d7f76c63ca8c84'),(759,1370719090,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','6305d663aa7a08719af8508148560811265d9115'),(758,1370719086,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','d1e6048cee8dc30df35ae891ed33b9299f7edde7'),(756,1370718965,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','dea92dcbbfaab86b9ee341b0f1279ce513dd77cf'),(755,1370718964,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','9053e267508a15c3793d67fbe7cbbb635c595bd3'),(754,1370718963,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','3e6c6246c05674f00bf4822be9b6748f903453d6'),(757,1370719085,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','adc7be0220044577bcf21176bb9b6f5f240966d9'),(752,1370718922,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','10e39432a9eaf95f15aced4ccdac65d4967a4852'),(750,1370718848,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','fe968dcd2af475bd13d1d734524cfdc5aaa7974c'),(749,1370718847,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','b494ebb32891f703c2973ecc3c9e7a9492d25866'),(748,1370718846,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','3daa901b91549ebc07b0af082f734131d9b65302'),(751,1370718921,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','2e8a587dffd565bd39e6ae89c5613b52a8c63929'),(746,1370718809,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','2da34c3ed2ca9508d08700824eab11db5bacbc65'),(744,1370718785,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','3a2e3d0b8018cbba8309d860499d012df3a7c398'),(743,1370718784,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','b28e97b2b8b0051f67155b02d3447c889fcbd9d7'),(742,1370718783,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','24ec2b3c23f0e43f741cdbc4dbf305a6475f762c'),(745,1370718808,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','963a6fba72716cb4a7912fc120a0558ef92871bc'),(740,1370718775,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','f611f25e795145777d4239553647af6218463648'),(739,1370718186,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','1fa9e3b865c3042403d8dfec150516968026267c'),(738,1370718185,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','96fcbe3655a023d65db096837e58a30859d00fc9'),(737,1370718184,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','9a5e85cb3c1246f725f8a846a301245b12908001'),(736,1370718181,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','512a52db22279503eecdd49fea555559896bd2a2'),(735,1370718169,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','510fd36869a099015c57173f72f76adb0559c7a7'),(733,1370718161,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','09f471593dac4eed7fa70bc9dea7975457e59005'),(732,1370718159,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','4537781be3d429492bf63e560d46caa8ffdaecd0'),(731,1370718158,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','afb3f4c83afe7a128835e62de41e3049aadf1028'),(734,1370718168,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','68f40f7b396fb2a7747ade33922a083eaa75bfd4'),(729,1370718150,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','36b5ce2b21f62a16a0458b388b6280fbf3a13ce1'),(728,1370717136,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','00c83078efb7c55551118af72e488a193f08c409'),(726,1370717027,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','9408fbc1a4522e271b5d9e1237e04a53e4c79969'),(725,1370717026,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','103b5691e578de9b405dacfdfd9c2ba40a46ecd6'),(724,1370717025,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','d2d1d97de7ff113aed7e77b640665ce2e535aa87'),(727,1370717135,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','5509d60c1b6901b415a5654c4dd3974a76f527db'),(722,1370717013,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','f5028db4348cdc3a53e34b9e0ba5057194096a41'),(721,1370717007,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','333f3e894db1e2e735d322f6abf01ccdd05535f1'),(720,1370717006,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','b8ebaa5fa767eb719895cc7447aa8ee7a1c4c009'),(718,1370716932,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','9f9722ce40acdd2ffa4f8b98608e47a41e9cc553'),(716,1370716928,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','8420a6a2f63ea0c0c9a5de27a4db2c38987b0162'),(717,1370716931,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','9399d73a23468f697ec0242c19e78f5dc19b47b7'),(714,1370716899,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','af64371cd0c1e4efe85d4eb64e127928f2b1daa0'),(713,1370716869,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','60e8e3d38b2dfd885a38a2fab555980ef5756c62'),(712,1370716840,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','d63b205be7ad04d7ff5cce010faa459d8b2ff506'),(711,1370716839,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','27254f7fa421e63fdc6a062aafa7b075e0851e18'),(710,1370716838,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','27734e96c59d4f0c9a912892ae81633e8fe4fb32'),(709,1370716835,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','d555e288bfeaae4e4af1ab57fc87a47b77bf6618'),(708,1370716830,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','628145cbe3b6b1ec72a9eb16dfe4d72fdacae0a1'),(707,1370716822,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','d08a9cf3ab4d4141fbee5388d771c695cc3851ff'),(706,1370716821,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','572d9565e1b3b316389823169d296f00741c7eb5'),(704,1370716657,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','65f6ebec37acdee44846894f8a56f23b375493eb'),(703,1370716537,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','8852f9decd116d3d4eef8c1f9dd7efbe73b1069d'),(702,1370716536,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','f2d7871c506c7034d3de916d974c824cabe8be1a'),(701,1370716533,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','fe025e97cea4e935d823e0431f1cef930d7e53b5'),(700,1370716532,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','54645dc26ecaca5509c215fd2810fcf30e7c64bc'),(699,1370716531,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','90291f0a280062717e618fa0cefab504dd8dd788'),(697,1370716517,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','b7728eb28a52de8506d65708262035a6c5bd3dd2'),(696,1370716515,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','98ce2f79c5ddfba4a22cb8b1e57c401ee6cd2b8a'),(694,1370716498,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','1fa7a7df1d2bdd11823821f0fc5d5a028670e851'),(693,1370716489,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','9d340b519f201b85ba3cf8743e8408895bb8c54a'),(692,1370716487,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','be752c42ffb559b4a5eff92cca86ffd6d720ed5b'),(690,1370716474,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','a2a16a51ac5aa8cbee4d02d210eaebb06909608b'),(689,1370716471,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','d73714419c9727e9dc24aa3e0d2b7e4a09ae30b7'),(688,1370716466,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','82bbd9e225c839176654331b6a7ea45fd4eeecae'),(687,1370716251,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','4f72b9e32c08bab7584df22c088d4dedb63324b6'),(686,1370716249,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','2c3f79ce9b221243dd156c961c69bdd949233142'),(685,1370716248,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','7a8f8c328937d5152310b35b890f6ee3ca312ddb'),(684,1370716246,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','846f0b4f35a895009d351ad6591cfb21d5dd809f'),(683,1370716241,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','f95439e9ea41cf2b87af6ba489ca35b379ea369d'),(681,1370716239,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','e1cd43d937326e2c8a08a53b258d80249de33664'),(680,1370716238,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','52b6b78b1a951d82fb77e7bb90d6525d6e4a4911'),(679,1370716237,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','d477c4f80134faf321b2042ddb50e95f39b82f2b'),(682,1370716240,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','c747532e48cde6338f028e4d46c50eb10f0d44bb'),(677,1370716230,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','49395d96a0fe75e40141d0bd800d83f718ed2a13'),(676,1370716186,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','00008f49e311089fdac245f9d9738ef8151406da'),(674,1370716183,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','2bc6fb14c18529a7cd40dac603736d5ffc4af6ac'),(673,1370716182,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','a32d5cb051b31e8fdf4540501f30ccd0fea4cd58'),(672,1370716181,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','f47e2f1baf6d3510e400ff178bcbad6579f1405e'),(675,1370716184,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','a72dd78ecb618f366db143d5c183111aa2399fb4'),(670,1370716169,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','c87fdb757fdd3a96b0c18c74baed72c66ceb17c7'),(669,1370715974,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','fb5c05387e4b5740594142dd94e161837f91b495'),(667,1370715970,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','e5fe433df39bc66e4d6e5d65214cb7b4ce44c327'),(666,1370715969,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','a4b8be25eb59091d2cafb7d131039b19fc8b2e86'),(665,1370715968,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','8baa2e9f774c0cefaaf21f43a4a12c192c25b8b2'),(668,1370715973,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','eb8be95c2de681d51826b5aab6d2caaf69f4a8a8'),(663,1370715961,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','17afdf6954185a9e16514e0012e04d60899a8698'),(662,1370715949,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','8d4b0e969072b1b5c152ee12f48cf648f4996b7f'),(661,1370715948,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','17995fdbb81efeaff0041a50f8bcffcd6ff3acae'),(659,1370715931,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','478e56396db13f7a310e2333fec8f142b12027de'),(658,1370715928,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','fbdddc8a3c361457c3c9511105894d523d68123e'),(657,1370715819,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','d74ea8d515a4a34a0d52748774ab1d2fc7631a3c'),(655,1370715814,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','dabac7dfa8ee6dd1ad081c000a9eb9eeccf5a600'),(654,1370715813,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','ec33162a721bda21811f05e490ce2c1c5ad5e8d2'),(653,1370715812,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','66df65e9ac6cfbd163c5a9e5694c7a3d9c122183'),(656,1370715818,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','7ef67b180a9ef441b7849d8a8ca3da841826a2f4'),(651,1370715805,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','d26e5c603833d528305cc3d77649e9ba1b41f1ba'),(650,1370715766,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','b062d3ccce220973a4f368ca286df1e86a714069'),(649,1370715765,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','fd0b835ba6b88683e6047ceac09046f76bcabea6'),(647,1370715730,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','677fb9e31d09d66c54d74f8c3e45b78de5d09c87'),(646,1370715724,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','721ff696a97fcf0cd6c7b2a44099a28e3ad5722a'),(645,1370715704,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','e662d1c89769c403ff8d33b3cfc3d7c812ada491'),(644,1370715703,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','ae30f5b831e7569ea99367cf8b1123fdd179f856'),(643,1370715702,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','670f1fa1046ac4c5f5c916ddefa0ca7cbe3a58b9'),(642,1370715699,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','bf5d297ac07479d75dc30133ab2240c5270fc0df'),(641,1370715693,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','6b926cdd1b4a593ebe78c6839e9accd9f29a4076'),(639,1370715690,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','e305c943d97e3f8e5c5ac24ba9d10b730e699837'),(638,1370715689,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','e2cb6675ff16486ced0e2bda91fc2814439a6bd3'),(637,1370715688,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','da5c0f7ba8861cacf5d34ae20cc429ea9b532f52'),(640,1370715691,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','2730a2edd9bc7304a158cd2e0057428b69faf294'),(635,1370715681,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','82f6fe3cc27589580cf663c34239320b80374e22'),(634,1370715647,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','0cdb4086fb2eef4b837624f625401725e09ea4a3'),(633,1370715646,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','34340712bda156d27dfd6188323ed578f6506f9a'),(631,1370715617,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','7d4e4f7d3c9557e2ccd39270ce57b485e4930d31'),(630,1370715614,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','b58202ee7c9863b10d1f161c8c439434fccda221'),(629,1370715608,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','61cebcbd524bb96671375b979b3d71f203147e92'),(627,1370715589,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','bf651d38246322f6535478503122e46a059a9c6e'),(626,1370715560,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','762f61fd6e852e08878cec57b657de306f8bfafb'),(625,1370715559,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','7f488d73cf3832499947326219fbd4a81cd266dd'),(624,1370715558,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','490c1c8e23aa731bffe308625f9e8d3e1740bdce'),(628,1370715606,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','8893ac51aa9752f0accf783ba7896d79faef7684'),(622,1370715551,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','549c04fb25bf4d144952b4703fda8b4021582024'),(621,1370715535,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','ab61d5435f69fc1bd4b47cf61c7201cb8df169b0'),(620,1370715533,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','72d27aea683900b25e9d4d9ccffdc6dca27ed7f4'),(618,1370715408,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','e1d14048eb1891fdf463a67508fb7d3a3a9d400c'),(617,1370715405,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','7330e3246f8b9f942302c3dcda36b184319defe8'),(616,1370715100,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','df00c5659c5aaffa6064a4c41b603e424a5e22d6'),(615,1370715099,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','cb29d7ac3c7beaf0d4df71a57a591485a3c5fc3f'),(614,1370715098,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','d0e7c6a1eb0ed7e4d0f4577da8004df91d21619e'),(613,1370715096,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','603e5ccb608d092e9d4335a67deead37399876d8'),(612,1370715092,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','6c34cf32ea9a2965de329870f794c700cc498a36'),(611,1370715082,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','bba098ddc1d92aa47c6ed3ea51025dd508b53aee'),(610,1370715081,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','52eabd1ed3ec4a3fa87a63b7eacc51035a314533'),(608,1370715003,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','a50240f3a544edbdddbba612c7e73c9d4a14708a'),(607,1370714999,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','3be41e6b9276de09f92e34c35f56ed5368ebef6b'),(606,1370714995,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','fc7c5f25bec7fdc4032def78f6e3fa67490f7c73'),(605,1370714970,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','35d6008b0125241543afaaa5ac886488461a0166'),(604,1370714969,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','ecde409fc39d9d304dfc4d4eb1733d6640474673'),(603,1370714965,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','18fba9ad0a346d1bda4992bf7d4ade35ba4bdad9'),(602,1370714964,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','c07d1f363b0f9846c7e45702b76870fbe09c143d'),(601,1370714961,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','3c9300cbff8429553e4bd15db6ca384f5050cf3d'),(600,1370714959,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','0b7bc74b9d3ab9b5bcb9db6a45f8cade28a805d5'),(599,1370714954,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','0997dfdb3f5fb1a83c4c62f77c3862bae0918846'),(598,1370714953,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','9a0d96f660d4199a901975828eacfd155368c9f4'),(597,1370714950,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','739ad6c3e8c615a1221eef8f41e9d4f5471df56f'),(596,1370714949,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','4112eea3807e3ed4381dd19504b1408297ac57f8'),(595,1370714945,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','c610442de9136b6bc544b4bc4fbe0bff322801c4'),(594,1370714943,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','93dfb2c1bf1cffec2d9d391244c88047c0d13153'),(593,1370714937,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','404489afcbbcf86eb5a8c88d42c3a96dded355d5'),(592,1370714936,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','edb36b52304e8ffcb5006bb73913d46d53859ae2'),(591,1370714928,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','ecbf6241689330265b2cf4e75d6fce7bd01526bb'),(590,1370714481,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','8e13b4ddc7ee4887ab60ed12a5d4740790e42cd1'),(589,1370714479,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','37e574c13f77a108b38427fe947a635488a19b0a'),(587,1370714468,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','fa97a958b29f28d5b3cfeb2eb314c72bad6cfb1e'),(586,1370713901,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','3626434ed268f8abfc82d6a59bc5734084f40f9a'),(796,1370728219,'0','df8d8f1efa25a1a8fc17499f89fc7a8fabd4088a'),(795,1370728216,'0','804cc9986d8977ef92fd34a87ff5dd27933cd852'),(794,1370728215,'0','f925406070606595b53c49a492a11e72da240c47'),(585,1370713900,'d2dc5b9c80e9261bd45a64a73deb615e22eac843','a55a11259c1512b7241a20eec53527da7bf0a3b1'),(788,1370721101,'c4a2ac14e2289958469d61d0397c2672d5b6e914','39202c8771c2bac3e37bbd296fcb16ea00dffbf6'),(789,1370721108,'c4a2ac14e2289958469d61d0397c2672d5b6e914','4f108fe90ac941acf8618d535a0548d6971a631f'),(790,1370721112,'c4a2ac14e2289958469d61d0397c2672d5b6e914','52c5f836841ce6b8bfb875aa45afbfb56adcec5a'),(791,1370721113,'c4a2ac14e2289958469d61d0397c2672d5b6e914','779cba00327ca49ed8103ac5e159b9ec9309fdb2'),(792,1370721114,'c4a2ac14e2289958469d61d0397c2672d5b6e914','f637c5b558193113f0d65f8a91288b049f687cd5'),(793,1370721137,'c4a2ac14e2289958469d61d0397c2672d5b6e914','cdc27fcd974dc7ac04658f15a53574de23adc643'),(787,1370721100,'c4a2ac14e2289958469d61d0397c2672d5b6e914','897d7dddf8b90e94b8a9e55b74e6763ed1bc6385'),(785,1370721053,'c4a2ac14e2289958469d61d0397c2672d5b6e914','a7811710c90611f7a8eafa59e90e6c66d5f44a48'),(768,1370719554,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','21c56008ce277b494113a540a6daa777123b8e6c'),(769,1370719695,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','b26e1d5e5e7e24c75035f2d624b2a6d630632fda'),(770,1370719699,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','a5ffa51f312f59d5ee1c5051106121208ac6fa11'),(771,1370719700,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','f6f51c9744ae8b7738691b3a5bf15db0e2f7783a'),(772,1370719701,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','f40cc52a4777cf4a9f0c0d13c1e90ef5e3d7f756'),(773,1370719743,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','b791652a07fe4be762cf6a6c9a69df66ae14778a'),(774,1370719802,'7c6a65eba1817465d0a123a8ff54f6d64231aa6e','94d17025e3c93ec19783067f14443119cbf1396a'),(775,1370720977,'c4a2ac14e2289958469d61d0397c2672d5b6e914','4c3f91d3cc9557cc3bbc25273410d4ec0b4bef6a'),(776,1370720982,'c4a2ac14e2289958469d61d0397c2672d5b6e914','039ec67c7ae732732a04ebf4857ef41a4f154cfc'),(777,1370720998,'c4a2ac14e2289958469d61d0397c2672d5b6e914','f5f7a75e90c373d9290c4f0dbb75f36b24156cc7'),(778,1370721005,'c4a2ac14e2289958469d61d0397c2672d5b6e914','1f4ef5fb7a10fb48fb3995f27043d116ee3d84c1'),(779,1370721006,'c4a2ac14e2289958469d61d0397c2672d5b6e914','87f858620619a72e1e204dde2e6d71550f0d7076'),(780,1370721011,'c4a2ac14e2289958469d61d0397c2672d5b6e914','6341f01ba8702a8fe0715d7508f86774c0c0fc55'),(781,1370721016,'c4a2ac14e2289958469d61d0397c2672d5b6e914','d9351879b8cf75402e1a1cc62d10642e9f438ec1'),(782,1370721023,'c4a2ac14e2289958469d61d0397c2672d5b6e914','8eda088f999f5acd76197498d3be34884a0a375f'),(784,1370721052,'c4a2ac14e2289958469d61d0397c2672d5b6e914','313764e7f262b221aaa1976179a4c90e01c2dbd8');
/*!40000 ALTER TABLE `exp_security_hashes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_sessions`
--

DROP TABLE IF EXISTS `exp_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `member_id` int(10) NOT NULL DEFAULT '0',
  `admin_sess` tinyint(1) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `fingerprint` varchar(40) NOT NULL,
  `sess_start` int(10) unsigned NOT NULL DEFAULT '0',
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_id`),
  KEY `member_id` (`member_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_sessions`
--

LOCK TABLES `exp_sessions` WRITE;
/*!40000 ALTER TABLE `exp_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_sites`
--

DROP TABLE IF EXISTS `exp_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_sites` (
  `site_id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `site_label` varchar(100) NOT NULL DEFAULT '',
  `site_name` varchar(50) NOT NULL DEFAULT '',
  `site_description` text,
  `site_system_preferences` mediumtext NOT NULL,
  `site_mailinglist_preferences` text NOT NULL,
  `site_member_preferences` text NOT NULL,
  `site_template_preferences` text NOT NULL,
  `site_channel_preferences` text NOT NULL,
  `site_bootstrap_checksums` text NOT NULL,
  `site_pages` text NOT NULL,
  PRIMARY KEY (`site_id`),
  KEY `site_name` (`site_name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_sites`
--

LOCK TABLES `exp_sites` WRITE;
/*!40000 ALTER TABLE `exp_sites` DISABLE KEYS */;
INSERT INTO `exp_sites` VALUES (1,'Lehigh Sports Field Association','default_site',NULL,'YTo5MDp7czoxMDoic2l0ZV9pbmRleCI7czowOiIiO3M6ODoic2l0ZV91cmwiO3M6MjY6Ii8vbG9jYWwubGNzcG9ydHNmaWVsZHMub3JnIjtzOjE2OiJ0aGVtZV9mb2xkZXJfdXJsIjtzOjM0OiIvL2xvY2FsLmxjc3BvcnRzZmllbGRzLm9yZy90aGVtZXMvIjtzOjE1OiJ3ZWJtYXN0ZXJfZW1haWwiO3M6MTc6InNlYW5AZ3JhdmVuZXIubmV0IjtzOjE0OiJ3ZWJtYXN0ZXJfbmFtZSI7czowOiIiO3M6MjA6ImNoYW5uZWxfbm9tZW5jbGF0dXJlIjtzOjc6ImNoYW5uZWwiO3M6MTA6Im1heF9jYWNoZXMiO3M6MzoiMTUwIjtzOjExOiJjYXB0Y2hhX3VybCI7czo0ODoiaHR0cDovL2xvY2FsLmxjc3BvcnRzZmllbGRzLm9yZy9pbWFnZXMvY2FwdGNoYXMvIjtzOjEyOiJjYXB0Y2hhX3BhdGgiO3M6NTU6IkM6XHhhbXBwXGh0ZG9jc1xsY3Nwb3J0c2ZpZWxkcy5vcmdcd3d3XGltYWdlc1xjYXB0Y2hhc1wiO3M6MTI6ImNhcHRjaGFfZm9udCI7czoxOiJ5IjtzOjEyOiJjYXB0Y2hhX3JhbmQiO3M6MToieSI7czoyMzoiY2FwdGNoYV9yZXF1aXJlX21lbWJlcnMiO3M6MToibiI7czoxNzoiZW5hYmxlX2RiX2NhY2hpbmciO3M6MToibiI7czoxODoiZW5hYmxlX3NxbF9jYWNoaW5nIjtzOjE6Im4iO3M6MTg6ImZvcmNlX3F1ZXJ5X3N0cmluZyI7czoxOiJuIjtzOjEzOiJzaG93X3Byb2ZpbGVyIjtzOjE6Im4iO3M6MTg6InRlbXBsYXRlX2RlYnVnZ2luZyI7czoxOiJuIjtzOjE1OiJpbmNsdWRlX3NlY29uZHMiO3M6MToibiI7czoxMzoiY29va2llX2RvbWFpbiI7czowOiIiO3M6MTE6ImNvb2tpZV9wYXRoIjtzOjA6IiI7czoxNzoidXNlcl9zZXNzaW9uX3R5cGUiO3M6MToiYyI7czoxODoiYWRtaW5fc2Vzc2lvbl90eXBlIjtzOjI6ImNzIjtzOjIxOiJhbGxvd191c2VybmFtZV9jaGFuZ2UiO3M6MToieSI7czoxODoiYWxsb3dfbXVsdGlfbG9naW5zIjtzOjE6InkiO3M6MTY6InBhc3N3b3JkX2xvY2tvdXQiO3M6MToieSI7czoyNToicGFzc3dvcmRfbG9ja291dF9pbnRlcnZhbCI7czoxOiIxIjtzOjIwOiJyZXF1aXJlX2lwX2Zvcl9sb2dpbiI7czoxOiJ5IjtzOjIyOiJyZXF1aXJlX2lwX2Zvcl9wb3N0aW5nIjtzOjE6InkiO3M6MjQ6InJlcXVpcmVfc2VjdXJlX3Bhc3N3b3JkcyI7czoxOiJuIjtzOjE5OiJhbGxvd19kaWN0aW9uYXJ5X3B3IjtzOjE6InkiO3M6MjM6Im5hbWVfb2ZfZGljdGlvbmFyeV9maWxlIjtzOjA6IiI7czoxNzoieHNzX2NsZWFuX3VwbG9hZHMiO3M6MToieSI7czoxNToicmVkaXJlY3RfbWV0aG9kIjtzOjc6InJlZnJlc2giO3M6OToiZGVmdF9sYW5nIjtzOjc6ImVuZ2xpc2giO3M6ODoieG1sX2xhbmciO3M6MjoiZW4iO3M6MTI6InNlbmRfaGVhZGVycyI7czoxOiJ5IjtzOjExOiJnemlwX291dHB1dCI7czoxOiJuIjtzOjEzOiJsb2dfcmVmZXJyZXJzIjtzOjE6Im4iO3M6MTM6Im1heF9yZWZlcnJlcnMiO3M6MzoiNTAwIjtzOjExOiJ0aW1lX2Zvcm1hdCI7czoyOiJ1cyI7czoxNToic2VydmVyX3RpbWV6b25lIjtzOjE2OiJBbWVyaWNhL05ld19Zb3JrIjtzOjEzOiJzZXJ2ZXJfb2Zmc2V0IjtzOjA6IiI7czoyMToiZGVmYXVsdF9zaXRlX3RpbWV6b25lIjtzOjE2OiJBbWVyaWNhL05ld19Zb3JrIjtzOjE1OiJob25vcl9lbnRyeV9kc3QiO3M6MToieSI7czoxMzoibWFpbF9wcm90b2NvbCI7czo0OiJtYWlsIjtzOjExOiJzbXRwX3NlcnZlciI7czowOiIiO3M6MTM6InNtdHBfdXNlcm5hbWUiO3M6MDoiIjtzOjEzOiJzbXRwX3Bhc3N3b3JkIjtzOjA6IiI7czoxMToiZW1haWxfZGVidWciO3M6MToibiI7czoxMzoiZW1haWxfY2hhcnNldCI7czo1OiJ1dGYtOCI7czoxNToiZW1haWxfYmF0Y2htb2RlIjtzOjE6Im4iO3M6MTY6ImVtYWlsX2JhdGNoX3NpemUiO3M6MDoiIjtzOjExOiJtYWlsX2Zvcm1hdCI7czo1OiJwbGFpbiI7czo5OiJ3b3JkX3dyYXAiO3M6MToieSI7czoyMjoiZW1haWxfY29uc29sZV90aW1lbG9jayI7czoxOiI1IjtzOjIyOiJsb2dfZW1haWxfY29uc29sZV9tc2dzIjtzOjE6InkiO3M6ODoiY3BfdGhlbWUiO3M6NzoiZGVmYXVsdCI7czoyMToiZW1haWxfbW9kdWxlX2NhcHRjaGFzIjtzOjE6Im4iO3M6MTY6ImxvZ19zZWFyY2hfdGVybXMiO3M6MToieSI7czoxMjoic2VjdXJlX2Zvcm1zIjtzOjE6InkiO3M6MTk6ImRlbnlfZHVwbGljYXRlX2RhdGEiO3M6MToieSI7czoyNDoicmVkaXJlY3Rfc3VibWl0dGVkX2xpbmtzIjtzOjE6Im4iO3M6MTY6ImVuYWJsZV9jZW5zb3JpbmciO3M6MToibiI7czoxNDoiY2Vuc29yZWRfd29yZHMiO3M6MDoiIjtzOjE4OiJjZW5zb3JfcmVwbGFjZW1lbnQiO3M6MDoiIjtzOjEwOiJiYW5uZWRfaXBzIjtzOjA6IiI7czoxMzoiYmFubmVkX2VtYWlscyI7czowOiIiO3M6MTY6ImJhbm5lZF91c2VybmFtZXMiO3M6MDoiIjtzOjE5OiJiYW5uZWRfc2NyZWVuX25hbWVzIjtzOjA6IiI7czoxMDoiYmFuX2FjdGlvbiI7czo4OiJyZXN0cmljdCI7czoxMToiYmFuX21lc3NhZ2UiO3M6MzQ6IlRoaXMgc2l0ZSBpcyBjdXJyZW50bHkgdW5hdmFpbGFibGUiO3M6MTU6ImJhbl9kZXN0aW5hdGlvbiI7czoyMToiaHR0cDovL3d3dy55YWhvby5jb20vIjtzOjE2OiJlbmFibGVfZW1vdGljb25zIjtzOjE6InkiO3M6MTI6ImVtb3RpY29uX3VybCI7czo0NzoiaHR0cDovL2xvY2FsLmxjc3BvcnRzZmllbGRzLm9yZy9pbWFnZXMvc21pbGV5cy8iO3M6MTk6InJlY291bnRfYmF0Y2hfdG90YWwiO3M6NDoiMTAwMCI7czoxNzoibmV3X3ZlcnNpb25fY2hlY2siO3M6MToieSI7czoxNzoiZW5hYmxlX3Rocm90dGxpbmciO3M6MToibiI7czoxNzoiYmFuaXNoX21hc2tlZF9pcHMiO3M6MToieSI7czoxNDoibWF4X3BhZ2VfbG9hZHMiO3M6MjoiMTAiO3M6MTM6InRpbWVfaW50ZXJ2YWwiO3M6MToiOCI7czoxMjoibG9ja291dF90aW1lIjtzOjI6IjMwIjtzOjE1OiJiYW5pc2htZW50X3R5cGUiO3M6NzoibWVzc2FnZSI7czoxNDoiYmFuaXNobWVudF91cmwiO3M6MDoiIjtzOjE4OiJiYW5pc2htZW50X21lc3NhZ2UiO3M6NTA6IllvdSBoYXZlIGV4Y2VlZGVkIHRoZSBhbGxvd2VkIHBhZ2UgbG9hZCBmcmVxdWVuY3kuIjtzOjE3OiJlbmFibGVfc2VhcmNoX2xvZyI7czoxOiJ5IjtzOjE5OiJtYXhfbG9nZ2VkX3NlYXJjaGVzIjtzOjM6IjUwMCI7czoxNzoidGhlbWVfZm9sZGVyX3BhdGgiO3M6NDY6IkM6L3hhbXBwL2h0ZG9jcy9sY3Nwb3J0c2ZpZWxkcy5vcmcvd3d3L3RoZW1lcy8iO3M6MTA6ImlzX3NpdGVfb24iO3M6MToieSI7czoxMToicnRlX2VuYWJsZWQiO3M6MToieSI7czoyMjoicnRlX2RlZmF1bHRfdG9vbHNldF9pZCI7czoxOiIxIjt9','YTozOntzOjE5OiJtYWlsaW5nbGlzdF9lbmFibGVkIjtzOjE6InkiO3M6MTg6Im1haWxpbmdsaXN0X25vdGlmeSI7czoxOiJuIjtzOjI1OiJtYWlsaW5nbGlzdF9ub3RpZnlfZW1haWxzIjtzOjA6IiI7fQ==','YTo0NDp7czoxMDoidW5fbWluX2xlbiI7czoxOiI0IjtzOjEwOiJwd19taW5fbGVuIjtzOjE6IjUiO3M6MjU6ImFsbG93X21lbWJlcl9yZWdpc3RyYXRpb24iO3M6MToibiI7czoyNToiYWxsb3dfbWVtYmVyX2xvY2FsaXphdGlvbiI7czoxOiJ5IjtzOjE4OiJyZXFfbWJyX2FjdGl2YXRpb24iO3M6NToiZW1haWwiO3M6MjM6Im5ld19tZW1iZXJfbm90aWZpY2F0aW9uIjtzOjE6Im4iO3M6MjM6Im1icl9ub3RpZmljYXRpb25fZW1haWxzIjtzOjA6IiI7czoyNDoicmVxdWlyZV90ZXJtc19vZl9zZXJ2aWNlIjtzOjE6InkiO3M6MjI6InVzZV9tZW1iZXJzaGlwX2NhcHRjaGEiO3M6MToibiI7czoyMDoiZGVmYXVsdF9tZW1iZXJfZ3JvdXAiO3M6MToiNSI7czoxNToicHJvZmlsZV90cmlnZ2VyIjtzOjY6Im1lbWJlciI7czoxMjoibWVtYmVyX3RoZW1lIjtzOjc6ImRlZmF1bHQiO3M6MTQ6ImVuYWJsZV9hdmF0YXJzIjtzOjE6InkiO3M6MjA6ImFsbG93X2F2YXRhcl91cGxvYWRzIjtzOjE6Im4iO3M6MTA6ImF2YXRhcl91cmwiO3M6NDc6Imh0dHA6Ly9sb2NhbC5sY3Nwb3J0c2ZpZWxkcy5vcmcvaW1hZ2VzL2F2YXRhcnMvIjtzOjExOiJhdmF0YXJfcGF0aCI7czo1NDoiQzpceGFtcHBcaHRkb2NzXGxjc3BvcnRzZmllbGRzLm9yZ1x3d3dcaW1hZ2VzXGF2YXRhcnNcIjtzOjE2OiJhdmF0YXJfbWF4X3dpZHRoIjtzOjM6IjEwMCI7czoxNzoiYXZhdGFyX21heF9oZWlnaHQiO3M6MzoiMTAwIjtzOjEzOiJhdmF0YXJfbWF4X2tiIjtzOjI6IjUwIjtzOjEzOiJlbmFibGVfcGhvdG9zIjtzOjE6Im4iO3M6OToicGhvdG9fdXJsIjtzOjUzOiJodHRwOi8vbG9jYWwubGNzcG9ydHNmaWVsZHMub3JnL2ltYWdlcy9tZW1iZXJfcGhvdG9zLyI7czoxMDoicGhvdG9fcGF0aCI7czo2MDoiQzpceGFtcHBcaHRkb2NzXGxjc3BvcnRzZmllbGRzLm9yZ1x3d3dcaW1hZ2VzXG1lbWJlcl9waG90b3NcIjtzOjE1OiJwaG90b19tYXhfd2lkdGgiO3M6MzoiMTAwIjtzOjE2OiJwaG90b19tYXhfaGVpZ2h0IjtzOjM6IjEwMCI7czoxMjoicGhvdG9fbWF4X2tiIjtzOjI6IjUwIjtzOjE2OiJhbGxvd19zaWduYXR1cmVzIjtzOjE6InkiO3M6MTM6InNpZ19tYXhsZW5ndGgiO3M6MzoiNTAwIjtzOjIxOiJzaWdfYWxsb3dfaW1nX2hvdGxpbmsiO3M6MToibiI7czoyMDoic2lnX2FsbG93X2ltZ191cGxvYWQiO3M6MToibiI7czoxMToic2lnX2ltZ191cmwiO3M6NjE6Imh0dHA6Ly9sb2NhbC5sY3Nwb3J0c2ZpZWxkcy5vcmcvaW1hZ2VzL3NpZ25hdHVyZV9hdHRhY2htZW50cy8iO3M6MTI6InNpZ19pbWdfcGF0aCI7czo2ODoiQzpceGFtcHBcaHRkb2NzXGxjc3BvcnRzZmllbGRzLm9yZ1x3d3dcaW1hZ2VzXHNpZ25hdHVyZV9hdHRhY2htZW50c1wiO3M6MTc6InNpZ19pbWdfbWF4X3dpZHRoIjtzOjM6IjQ4MCI7czoxODoic2lnX2ltZ19tYXhfaGVpZ2h0IjtzOjI6IjgwIjtzOjE0OiJzaWdfaW1nX21heF9rYiI7czoyOiIzMCI7czoxOToicHJ2X21zZ191cGxvYWRfcGF0aCI7czo2MToiQzpceGFtcHBcaHRkb2NzXGxjc3BvcnRzZmllbGRzLm9yZ1x3d3dcaW1hZ2VzXHBtX2F0dGFjaG1lbnRzXCI7czoyMzoicHJ2X21zZ19tYXhfYXR0YWNobWVudHMiO3M6MToiMyI7czoyMjoicHJ2X21zZ19hdHRhY2hfbWF4c2l6ZSI7czozOiIyNTAiO3M6MjA6InBydl9tc2dfYXR0YWNoX3RvdGFsIjtzOjM6IjEwMCI7czoxOToicHJ2X21zZ19odG1sX2Zvcm1hdCI7czo0OiJzYWZlIjtzOjE4OiJwcnZfbXNnX2F1dG9fbGlua3MiO3M6MToieSI7czoxNzoicHJ2X21zZ19tYXhfY2hhcnMiO3M6NDoiNjAwMCI7czoxOToibWVtYmVybGlzdF9vcmRlcl9ieSI7czoxMToidG90YWxfcG9zdHMiO3M6MjE6Im1lbWJlcmxpc3Rfc29ydF9vcmRlciI7czo0OiJkZXNjIjtzOjIwOiJtZW1iZXJsaXN0X3Jvd19saW1pdCI7czoyOiIyMCI7fQ==','YTo2OntzOjExOiJzdHJpY3RfdXJscyI7czoxOiJ5IjtzOjg6InNpdGVfNDA0IjtzOjA6IiI7czoxOToic2F2ZV90bXBsX3JldmlzaW9ucyI7czoxOiJ5IjtzOjE4OiJtYXhfdG1wbF9yZXZpc2lvbnMiO3M6MToiNSI7czoxNToic2F2ZV90bXBsX2ZpbGVzIjtzOjE6InkiO3M6MTg6InRtcGxfZmlsZV9iYXNlcGF0aCI7czo2OToiQzoveGFtcHAvaHRkb2NzL2xjc3BvcnRzZmllbGRzLm9yZy9zeXN0ZW0vZXhwcmVzc2lvbmVuZ2luZS90ZW1wbGF0ZXMvIjt9','YTo5OntzOjIxOiJpbWFnZV9yZXNpemVfcHJvdG9jb2wiO3M6MzoiZ2QyIjtzOjE4OiJpbWFnZV9saWJyYXJ5X3BhdGgiO3M6MDoiIjtzOjE2OiJ0aHVtYm5haWxfcHJlZml4IjtzOjU6InRodW1iIjtzOjE0OiJ3b3JkX3NlcGFyYXRvciI7czo0OiJkYXNoIjtzOjE3OiJ1c2VfY2F0ZWdvcnlfbmFtZSI7czoxOiJuIjtzOjIyOiJyZXNlcnZlZF9jYXRlZ29yeV93b3JkIjtzOjg6ImNhdGVnb3J5IjtzOjIzOiJhdXRvX2NvbnZlcnRfaGlnaF9hc2NpaSI7czoxOiJuIjtzOjIyOiJuZXdfcG9zdHNfY2xlYXJfY2FjaGVzIjtzOjE6InkiO3M6MjM6ImF1dG9fYXNzaWduX2NhdF9wYXJlbnRzIjtzOjE6InkiO30=','YToxOntzOjQ4OiJDOlx4YW1wcFxodGRvY3NcbGNzcG9ydHNmaWVsZHMub3JnXHd3d1xpbmRleC5waHAiO3M6MzI6ImRhZDg4MGU0ZTg5YjY3ZDhiZGJhMGMwYWMwM2UwN2E5Ijt9','YToxOntpOjE7YTozOntzOjM6InVybCI7czoyNzoiLy9sb2NhbC5sY3Nwb3J0c2ZpZWxkcy5vcmcvIjtzOjQ6InVyaXMiO2E6MDp7fXM6OToidGVtcGxhdGVzIjthOjA6e319fQ==');
/*!40000 ALTER TABLE `exp_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_snippets`
--

DROP TABLE IF EXISTS `exp_snippets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_snippets` (
  `snippet_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) NOT NULL,
  `snippet_name` varchar(75) NOT NULL,
  `snippet_contents` text,
  PRIMARY KEY (`snippet_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_snippets`
--

LOCK TABLES `exp_snippets` WRITE;
/*!40000 ALTER TABLE `exp_snippets` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_snippets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_specialty_templates`
--

DROP TABLE IF EXISTS `exp_specialty_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_specialty_templates` (
  `template_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `enable_template` char(1) NOT NULL DEFAULT 'y',
  `template_name` varchar(50) NOT NULL,
  `data_title` varchar(80) NOT NULL,
  `template_data` text NOT NULL,
  PRIMARY KEY (`template_id`),
  KEY `template_name` (`template_name`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_specialty_templates`
--

LOCK TABLES `exp_specialty_templates` WRITE;
/*!40000 ALTER TABLE `exp_specialty_templates` DISABLE KEYS */;
INSERT INTO `exp_specialty_templates` VALUES (1,1,'y','offline_template','','<html>\n<head>\n\n<title>System Offline</title>\n\n<style type=\"text/css\">\n\nbody { \nbackground-color:	#ffffff; \nmargin:				50px; \nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-size:			11px;\ncolor:				#000;\nbackground-color:	#fff;\n}\n\na {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-weight:		bold;\nletter-spacing:		.09em;\ntext-decoration:	none;\ncolor:			  #330099;\nbackground-color:	transparent;\n}\n  \na:visited {\ncolor:				#330099;\nbackground-color:	transparent;\n}\n\na:hover {\ncolor:				#000;\ntext-decoration:	underline;\nbackground-color:	transparent;\n}\n\n#content  {\nborder:				#999999 1px solid;\npadding:			22px 25px 14px 25px;\n}\n\nh1 {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-weight:		bold;\nfont-size:			14px;\ncolor:				#000;\nmargin-top: 		0;\nmargin-bottom:		14px;\n}\n\np {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-size: 			12px;\nfont-weight: 		normal;\nmargin-top: 		12px;\nmargin-bottom: 		14px;\ncolor: 				#000;\n}\n</style>\n\n</head>\n\n<body>\n\n<div id=\"content\">\n\n<h1>System Offline</h1>\n\n<p>This site is currently offline</p>\n\n</div>\n\n</body>\n\n</html>'),(2,1,'y','message_template','','<html>\n<head>\n\n<title>{title}</title>\n\n<meta http-equiv=\'content-type\' content=\'text/html; charset={charset}\' />\n\n{meta_refresh}\n\n<style type=\"text/css\">\n\nbody { \nbackground-color:	#ffffff; \nmargin:				50px; \nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-size:			11px;\ncolor:				#000;\nbackground-color:	#fff;\n}\n\na {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nletter-spacing:		.09em;\ntext-decoration:	none;\ncolor:			  #330099;\nbackground-color:	transparent;\n}\n  \na:visited {\ncolor:				#330099;\nbackground-color:	transparent;\n}\n\na:active {\ncolor:				#ccc;\nbackground-color:	transparent;\n}\n\na:hover {\ncolor:				#000;\ntext-decoration:	underline;\nbackground-color:	transparent;\n}\n\n#content  {\nborder:				#000 1px solid;\nbackground-color: 	#DEDFE3;\npadding:			22px 25px 14px 25px;\n}\n\nh1 {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-weight:		bold;\nfont-size:			14px;\ncolor:				#000;\nmargin-top: 		0;\nmargin-bottom:		14px;\n}\n\np {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-size: 			12px;\nfont-weight: 		normal;\nmargin-top: 		12px;\nmargin-bottom: 		14px;\ncolor: 				#000;\n}\n\nul {\nmargin-bottom: 		16px;\n}\n\nli {\nlist-style:			square;\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-size: 			12px;\nfont-weight: 		normal;\nmargin-top: 		8px;\nmargin-bottom: 		8px;\ncolor: 				#000;\n}\n\n</style>\n\n</head>\n\n<body>\n\n<div id=\"content\">\n\n<h1>{heading}</h1>\n\n{content}\n\n<p>{link}</p>\n\n</div>\n\n</body>\n\n</html>'),(3,1,'y','admin_notify_reg','Notification of new member registration','New member registration site: {site_name}\n\nScreen name: {name}\nUser name: {username}\nEmail: {email}\n\nYour control panel URL: {control_panel_url}'),(4,1,'y','admin_notify_entry','A new channel entry has been posted','A new entry has been posted in the following channel:\n{channel_name}\n\nThe title of the entry is:\n{entry_title}\n\nPosted by: {name}\nEmail: {email}\n\nTo read the entry please visit: \n{entry_url}\n'),(5,1,'y','admin_notify_mailinglist','Someone has subscribed to your mailing list','A new mailing list subscription has been accepted.\n\nEmail Address: {email}\nMailing List: {mailing_list}'),(6,1,'y','admin_notify_comment','You have just received a comment','You have just received a comment for the following channel:\n{channel_name}\n\nThe title of the entry is:\n{entry_title}\n\nLocated at: \n{comment_url}\n\nPosted by: {name}\nEmail: {email}\nURL: {url}\nLocation: {location}\n\n{comment}'),(7,1,'y','mbr_activation_instructions','Enclosed is your activation code','Thank you for your new member registration.\n\nTo activate your new account, please visit the following URL:\n\n{unwrap}{activation_url}{/unwrap}\n\nThank You!\n\n{site_name}\n\n{site_url}'),(8,1,'y','forgot_password_instructions','Login information','{name},\n\nTo reset your password, please go to the following page:\n\n{reset_url}\n\nYour password will be automatically reset, and a new password will be emailed to you.\n\nIf you do not wish to reset your password, ignore this message. It will expire in 24 hours.\n\n{site_name}\n{site_url}'),(9,1,'y','reset_password_notification','New Login Information','{name},\n\nHere is your new login information:\n\nUsername: {username}\nPassword: {password}\n\n{site_name}\n{site_url}'),(10,1,'y','validated_member_notify','Your membership account has been activated','{name},\n\nYour membership account has been activated and is ready for use.\n\nThank You!\n\n{site_name}\n{site_url}'),(11,1,'y','decline_member_validation','Your membership account has been declined','{name},\n\nWe\'re sorry but our staff has decided not to validate your membership.\n\n{site_name}\n{site_url}'),(12,1,'y','mailinglist_activation_instructions','Email Confirmation','Thank you for joining the \"{mailing_list}\" mailing list!\n\nPlease click the link below to confirm your email.\n\nIf you do not want to be added to our list, ignore this email.\n\n{unwrap}{activation_url}{/unwrap}\n\nThank You!\n\n{site_name}'),(13,1,'y','comment_notification','Someone just responded to your comment','{name_of_commenter} just responded to the entry you subscribed to at:\n{channel_name}\n\nThe title of the entry is:\n{entry_title}\n\nYou can see the comment at the following URL:\n{comment_url}\n\n{comment}\n\nTo stop receiving notifications for this comment, click here:\n{notification_removal_url}'),(14,1,'y','comments_opened_notification','New comments have been added','Responses have been added to the entry you subscribed to at:\n{channel_name}\n\nThe title of the entry is:\n{entry_title}\n\nYou can see the comments at the following URL:\n{comment_url}\n\n{comments}\n{comment} \n{/comments}\n\nTo stop receiving notifications for this entry, click here:\n{notification_removal_url}'),(15,1,'y','private_message_notification','Someone has sent you a Private Message','\n{recipient_name},\n\n{sender_name} has just sent you a Private Message titled ‘{message_subject}’.\n\nYou can see the Private Message by logging in and viewing your inbox at:\n{site_url}\n\nContent:\n\n{message_content}\n\nTo stop receiving notifications of Private Messages, turn the option off in your Email Settings.\n\n{site_name}\n{site_url}'),(16,1,'y','pm_inbox_full','Your private message mailbox is full','{recipient_name},\n\n{sender_name} has just attempted to send you a Private Message,\nbut your inbox is full, exceeding the maximum of {pm_storage_limit}.\n\nPlease log in and remove unwanted messages from your inbox at:\n{site_url}');
/*!40000 ALTER TABLE `exp_specialty_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_stats`
--

DROP TABLE IF EXISTS `exp_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_stats` (
  `stat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `total_members` mediumint(7) NOT NULL DEFAULT '0',
  `recent_member_id` int(10) NOT NULL DEFAULT '0',
  `recent_member` varchar(50) NOT NULL,
  `total_entries` mediumint(8) NOT NULL DEFAULT '0',
  `total_forum_topics` mediumint(8) NOT NULL DEFAULT '0',
  `total_forum_posts` mediumint(8) NOT NULL DEFAULT '0',
  `total_comments` mediumint(8) NOT NULL DEFAULT '0',
  `last_entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_forum_post_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_comment_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_visitor_date` int(10) unsigned NOT NULL DEFAULT '0',
  `most_visitors` mediumint(7) NOT NULL DEFAULT '0',
  `most_visitor_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_cache_clear` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`stat_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_stats`
--

LOCK TABLES `exp_stats` WRITE;
/*!40000 ALTER TABLE `exp_stats` DISABLE KEYS */;
INSERT INTO `exp_stats` VALUES (1,1,1,1,'admin-kvq',5,0,0,0,1370719500,0,0,1368902724,1,1368900958,1370792079);
/*!40000 ALTER TABLE `exp_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_status_groups`
--

DROP TABLE IF EXISTS `exp_status_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_status_groups` (
  `group_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_name` varchar(50) NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_status_groups`
--

LOCK TABLES `exp_status_groups` WRITE;
/*!40000 ALTER TABLE `exp_status_groups` DISABLE KEYS */;
INSERT INTO `exp_status_groups` VALUES (1,1,'Statuses');
/*!40000 ALTER TABLE `exp_status_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_status_no_access`
--

DROP TABLE IF EXISTS `exp_status_no_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_status_no_access` (
  `status_id` int(6) unsigned NOT NULL,
  `member_group` smallint(4) unsigned NOT NULL,
  PRIMARY KEY (`status_id`,`member_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_status_no_access`
--

LOCK TABLES `exp_status_no_access` WRITE;
/*!40000 ALTER TABLE `exp_status_no_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_status_no_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_statuses`
--

DROP TABLE IF EXISTS `exp_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_statuses` (
  `status_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(4) unsigned NOT NULL,
  `status` varchar(50) NOT NULL,
  `status_order` int(3) unsigned NOT NULL,
  `highlight` varchar(30) NOT NULL,
  PRIMARY KEY (`status_id`),
  KEY `group_id` (`group_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_statuses`
--

LOCK TABLES `exp_statuses` WRITE;
/*!40000 ALTER TABLE `exp_statuses` DISABLE KEYS */;
INSERT INTO `exp_statuses` VALUES (1,1,1,'open',1,'009933'),(2,1,1,'closed',2,'990000');
/*!40000 ALTER TABLE `exp_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_template_groups`
--

DROP TABLE IF EXISTS `exp_template_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_template_groups` (
  `group_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_name` varchar(50) NOT NULL,
  `group_order` int(3) unsigned NOT NULL,
  `is_site_default` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`group_id`),
  KEY `site_id` (`site_id`),
  KEY `group_name_idx` (`group_name`),
  KEY `group_order_idx` (`group_order`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_template_groups`
--

LOCK TABLES `exp_template_groups` WRITE;
/*!40000 ALTER TABLE `exp_template_groups` DISABLE KEYS */;
INSERT INTO `exp_template_groups` VALUES (2,1,'home',1,'y'),(3,1,'_common',2,'n'),(4,1,'_layouts',3,'n');
/*!40000 ALTER TABLE `exp_template_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_template_member_groups`
--

DROP TABLE IF EXISTS `exp_template_member_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_template_member_groups` (
  `group_id` smallint(4) unsigned NOT NULL,
  `template_group_id` mediumint(5) unsigned NOT NULL,
  PRIMARY KEY (`group_id`,`template_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_template_member_groups`
--

LOCK TABLES `exp_template_member_groups` WRITE;
/*!40000 ALTER TABLE `exp_template_member_groups` DISABLE KEYS */;
INSERT INTO `exp_template_member_groups` VALUES (6,2),(6,3),(6,4);
/*!40000 ALTER TABLE `exp_template_member_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_template_no_access`
--

DROP TABLE IF EXISTS `exp_template_no_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_template_no_access` (
  `template_id` int(6) unsigned NOT NULL,
  `member_group` smallint(4) unsigned NOT NULL,
  PRIMARY KEY (`template_id`,`member_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_template_no_access`
--

LOCK TABLES `exp_template_no_access` WRITE;
/*!40000 ALTER TABLE `exp_template_no_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_template_no_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_templates`
--

DROP TABLE IF EXISTS `exp_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_templates` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(6) unsigned NOT NULL,
  `template_name` varchar(50) NOT NULL,
  `save_template_file` char(1) NOT NULL DEFAULT 'n',
  `template_type` varchar(16) NOT NULL DEFAULT 'webpage',
  `template_data` mediumtext,
  `template_notes` text,
  `edit_date` int(10) NOT NULL DEFAULT '0',
  `last_author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cache` char(1) NOT NULL DEFAULT 'n',
  `refresh` int(6) unsigned NOT NULL DEFAULT '0',
  `no_auth_bounce` varchar(50) NOT NULL DEFAULT '',
  `enable_http_auth` char(1) NOT NULL DEFAULT 'n',
  `allow_php` char(1) NOT NULL DEFAULT 'n',
  `php_parse_location` char(1) NOT NULL DEFAULT 'o',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`template_id`),
  KEY `group_id` (`group_id`),
  KEY `template_name` (`template_name`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_templates`
--

LOCK TABLES `exp_templates` WRITE;
/*!40000 ALTER TABLE `exp_templates` DISABLE KEYS */;
INSERT INTO `exp_templates` VALUES (2,1,2,'index','y','webpage','{embed=\"_layouts/.page_constructor\"}',NULL,1368906288,1,'n',0,'','n','n','o',0),(3,1,3,'.footer','y','webpage','Copyright &copy; {current_time format=\"%Y\"}\r\n\r\n<script src=\"//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js\"></script>\r\n<script>window.jQuery || document.write(\'<script src=\"{global:theme_url}/js/vendor/jquery-1.9.0.min.js\"><\\/script>\')</script>\r\n<script src=\"{global:theme_url}/js/plugins.js\"></script>\r\n<script src=\"{global:theme_url}/js/main.js\"></script>\r\n<!-- end scripts-->\r\n\r\n<script>\r\n	// $(document).ready(function() {\r\n	//	$(\'#fitvids\').fitVids();\r\n	// });\r\n</script>\r\n\r\n<script>\r\n	var _gaq=[[\'_setAccount\',\'UA-{global:google_analytics_key}\'],[\'_trackPageview\']];\r\n	(function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];\r\n	g.src=(\'https:\'==location.protocol?\'//ssl\':\'//www\')+\'.google-analytics.com/ga.js\';\r\n	s.parentNode.insertBefore(g,s)}(document,\'script\'));\r\n</script>\r\n\r\n</body>\r\n</html>',NULL,1368906288,1,'n',0,'','n','n','o',0),(4,1,3,'.head','y','webpage','<!doctype html>\r\n\r\n<!--   .__   \r\n_____  |  |  \r\n\\__  \\ |  |  \r\n / __ \\|  |__\r\n(____  /____/\r\n     \\/       \r\n-->\r\n\r\n<!--[if lt IE 7]> <html class=\"no-js lt-ie9 lt-ie8 lt-ie7\"> <![endif]-->\r\n<!--[if IE 7]>    <html class=\"no-js lt-ie9 lt-ie8\"> <![endif]-->\r\n<!--[if IE 8]>    <html class=\"no-js lt-ie9\"> <![endif]-->\r\n<!--[if gt IE 8]><!--> <html class=\"no-js\"> <!--<![endif]-->\r\n<head>\r\n	<meta charset=\"utf-8\">\r\n	<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge, chrome=1\">\r\n	<meta name=\"description\" content=\"\">\r\n	<meta name=\"author\" content=\"Ambient Light\">\r\n	<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n	\r\n\r\n	<title>{embed:page_title} | Ambient Light</title>\r\n	\r\n	<!-- <link rel=\"Shortcut Icon\" href=\"/favicon.ico\"/> -->\r\n	<link rel=\"author\" type=\"text/plain\" href=\"/humans.txt\" />\r\n	<!-- <link rel=\"apple-touch-icon-precomposed\" href=\"/apple-touch-icon.png\"> -->\r\n	<!-- @TODO other icons -->\r\n		\r\n	<link rel=\"stylesheet\" media=\"screen\" href=\"{exp:cache_buster file=\'/themes/site_themes/al/css/style.css\' separator=\'?\'}\">\r\n	<link rel=\"stylesheet\" media=\"print\" href=\"{exp:cache_buster file=\'/themes/site_themes/al/css/print.css\' separator=\'?\'}\">\r\n\r\n	<!--[if lt IE 9]>\r\n		<script src=\"//html5shiv.googlecode.com/svn/trunk/html5.js\"></script>\r\n		<script>window.html5 || document.write(\'<script src=\"js/vendor/html5shiv.js\"><\\/script>\')</script>\r\n	<![endif]-->\r\n</head>\r\n<body class=\"{embed:body_class}\">\r\n<!--[if lt IE 7]><p class=\"chromeframe\">You are using an <strong>outdated</strong> browser. Please <a href=\"http://browsehappy.com/\">upgrade your browser</a> or <a href=\"http://www.google.com/chromeframe/?redirect=true\">activate Google Chrome Frame</a> to improve your experience.</p><![endif]-->',NULL,1368906288,1,'n',0,'','n','n','o',0),(5,1,3,'.header','y','webpage','<header class=\"page-header  cf\">\r\n	<div class=\"grid-wrapper\">\r\n		<div class=\"main-logo-glow  cf\">\r\n			<div class=\"grid  desk-one-third  lap-one-half  one-whole\">\r\n\r\n					<a href=\"\" class=\"main-logo\">\r\n						Ambient Light\r\n					</a>\r\n				</div>\r\n\r\n				<div class=\"grid  desk-two-thirds  lap-one-half  one-whole\">\r\n					<ul class=\"nav  list--inline\">\r\n						<li>menu</li>\r\n						<li>menu</li>\r\n						<li>menu</li>\r\n					</ul>\r\n				</div>\r\n\r\n			\r\n		</div>\r\n	</div>\r\n</header>\r\n',NULL,1368906288,1,'n',0,'','n','n','o',0),(6,1,3,'index','y','webpage','',NULL,1368906288,1,'n',0,'','n','n','o',0),(7,1,4,'.page_centered','y','webpage','{embed=\"_common/.head\"\r\n	body_class=\"{embed:body_class}\"\r\n	page_title=\"{embed:page_title}\"\r\n}\r\n\r\n<div class=\"container\">\r\n	<div class=\"row\">\r\n		<div class=\"span{embed:main_span} offset{embed:main_offset}\">\r\n			{embed=\"{embed:target}\"\r\n				group_id=\"{embed:group_id}\"\r\n				channel=\"{embed:channel}\"\r\n				category=\"{embed:category}\"\r\n				order_id=\"{embed:order_id}\"\r\n			}\r\n		</div>\r\n	</div>\r\n</div>\r\n\r\n{embed=\"_common/.footer\"}',NULL,1368906288,1,'n',0,'','n','n','o',0),(8,1,4,'.page_constructor','y','webpage','{embed=\"_common/.head\"\r\n	body_class=\"{embed:body_class}\"\r\n	page_title=\"{embed:page_title}\"\r\n}\r\n\r\n{embed=\"_common/.header\"\r\n	page_title=\"{embed:page_title}\"\r\n}\r\n\r\n\r\n<!-- <div class=\"container\">\r\n	<div class=\"row\">\r\n		<div class=\"span{embed:main_span} content\">\r\n			{embed=\"{embed:target}\"\r\n				group_id=\"{embed:group_id}\"\r\n				channel=\"{embed:channel}\"\r\n				category=\"{embed:category}\"\r\n				order_id=\"{embed:order_id}\"\r\n			}\r\n		</div>\r\n		{if embed:sidebar_span > 0}\r\n		<div class=\"span{embed:sidebar_span} sidebar\">\r\n			{embed=\"{embed:sidebar}\"}\r\n		</div>\r\n		{/if}\r\n	</div>\r\n</div> -->\r\n\r\n{embed=\"_common/.footer\"}',NULL,1368906288,1,'n',0,'','n','n','o',0),(9,1,4,'index','y','webpage','',NULL,1368906288,1,'n',0,'','n','n','o',0),(10,1,2,'.slider','y','webpage','<section class=\"flex-container\">\r\n  <div class=\"flexslider  page--use-divider\">\r\n    <ul class=\"slides\">\r\n      <li>\r\n        <a href=\"\" title=\"title tag\">\r\n          <img src=\"/uploads/images/test-1.jpg\" />\r\n        </a>\r\n        <article class=\"flex-caption\">\r\n          <h2 class=\"flex-caption-title\">Game On!</h2>\r\n          <div class=\"flex-caption-body\">\r\n            <a href=\"\">Captions</a> and cupcakes. Winning combination.\r\n          </div>\r\n        </article>\r\n      </li>\r\n      <li data-thumb=\"/uploads/images/test-1-thumb.jpg\">\r\n        <a href=\"\"><img src=\"/uploads/images/test-1.jpg\" /></a>\r\n         <article class=\"flex-caption\">\r\n          <h2 class=\"flex-caption-title\">Game On!</h2>\r\n          <div class=\"flex-caption-body\">\r\n            <a href=\"\">Captions</a> and cupcakes. Winning combination.\r\n          </div>\r\n        </article>\r\n      </li>\r\n      <li data-thumb=\"/uploads/images/test-1-thumb.jpg\">\r\n        <img src=\"/uploads/images/test-1.jpg\" />\r\n         <article class=\"flex-caption\">\r\n          <h2 class=\"flex-caption-title\">Game On!</h2>\r\n          <div class=\"flex-caption-body\">\r\n            <a href=\"\">Captions</a> and cupcakes. Winning combination.\r\n          </div>\r\n        </article>\r\n      </li>\r\n      <li title=\"hover\" data-thumb=\"/uploads/images/test-1-thumb.jpg\">\r\n        <img src=\"/uploads/images/test-1.jpg\" />\r\n      </li>\r\n    </ul>\r\n  </div>\r\n</section>',NULL,1370703401,1,'n',0,'','n','n','o',0),(11,1,2,'.content','y','webpage','<section class=\"page__main-content  content--alt-row\">\r\n\r\n <div class=\"container  content-box\">\r\n\r\n<header class=\"page__title  content--full-width  page--use-divider\">\r\n  <h1>Announcements & other cool stuff</h1>\r\n</header>\r\n    \r\n    <div class=\"grid\">\r\n\r\n      <div class=\"grid__item  one-whole\">\r\n        <div class=\"content__column  content--full-width\">\r\n\r\n          <div class=\"grid__item  one-third  palm-one-whole  text-center\">\r\n              <h3>About the LCSFA</h3>\r\n              Get directions to the fields.\r\n              <a href=\"\" title=\"\">image</a>\r\n          </div><!--\r\n\r\n        --><div class=\"grid__item  one-third  palm-one-whole  text-center\">\r\n              <h3>Get Directions</h3>\r\n              Get directions to the fields.\r\n              <a href=\"\" title=\"\">image</a>\r\n          </div><!--\r\n\r\n       --><div class=\"grid__item  one-third  palm-one-whole  text-center\">\r\n             <h3>Schedule Field Time</h3>\r\n              <a href=\"\" title=\"\">image</a>\r\n          </div><!--\r\n\r\n    --></div>\r\n    </div><!--\r\n     \r\n  --><div class=\"grid__item  two-thirds  palm-one-whole\">\r\n        <div class=\"content__column  content--no-bg\">\r\n          \r\n          <article class=\"article__summary  summary--announce\">\r\n            \r\n              <span class=\"article__type\">Announcement</span>\r\n              <h1 class=\"article__title\">LCSFA has a New Website!</h1>\r\n           \r\n            <span class=\"article__pub-date\">\r\n              <span>Published on May 5th, 2013</span>\r\n            </span>\r\n            \r\n            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n            \r\n\r\n            <footer class=\"article__footer cf\">\r\n            \r\n              <div class=\"float-left\">\r\n                <a href=\"\" title=\"\">See all announcements</a>\r\n              </div><div class=\"float-right\">\r\n                <a href=\"\" title=\"\">Continue Reading ... </a>\r\n              </div>\r\n            \r\n            </footer>\r\n          </article>\r\n\r\n          <article class=\"article__summary  summary--event\">\r\n            \r\n              <span class=\"article__type\">Event</span>\r\n              <h1 class=\"article__title\">LCSFA has a New Website!</h1>\r\n           \r\n            <span class=\"article__pub-date\">\r\n              <span>Published on May 5th, 2013</span>\r\n            </span>\r\n            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n             <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n            \r\n\r\n            <footer class=\"article__footer cf\">\r\n              <div class=\"float-left\">\r\n                <a href=\"\" title=\"\">See all announcements</a>\r\n              </div>\r\n              <div class=\"float-right\">\r\n                <a href=\"\" title=\"\">Continue Reading ... </a>\r\n              </div>\r\n            </footer>\r\n\r\n          </article>\r\n\r\n        </div>\r\n      </div><!-- \r\n\r\n   --><div class=\"grid__item  one-third  palm-one-whole\">\r\n        <div class=\"content__column  content--banner-title\">\r\n          <h3>Field Schedule</h3>\r\n          Field Status: all open\r\n        </div>\r\n\r\n        <div class=\"content__column  content--banner-title\">\r\n          <h3>Field Schedule</h3>\r\n          <p>Field Status: all open</p>\r\n        </div>\r\n\r\n        <div class=\"content__column\">\r\n          \r\n      <iframe src=\"https://www.google.com/calendar/embed?showTitle=0&amp;showNav=0&amp;showDate=0&amp;showPrint=0&amp;showTabs=0&amp;showCalendars=0&amp;showTz=0&amp;mode=AGENDA&amp;height=300&amp;wkst=1&amp;bgcolor=%23ffffff&amp;src=lcsfasoccer%40gmail.com&amp;color=%23875509&amp;ctz=America%2FNew_York\" style=\" border-width:0 \" width=\"250\" height=\"300\" frameborder=\"0\" scrolling=\"no\"></iframe>\r\n\r\n        </div>\r\n      </div><!--\r\n\r\n   --><div class=\"grid__item  one-whole\">\r\n        <div class=\"content__column\">\r\n          content2\r\n        </div>\r\n      </div>\r\n\r\n    </div>\r\n  </div>\r\n</section>',NULL,1370703622,1,'n',0,'','n','n','o',0),(12,1,2,'.index','y','webpage','',NULL,1370722601,1,'n',0,'','n','n','o',0);
/*!40000 ALTER TABLE `exp_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_throttle`
--

DROP TABLE IF EXISTS `exp_throttle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_throttle` (
  `throttle_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL,
  `locked_out` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`throttle_id`),
  KEY `ip_address` (`ip_address`),
  KEY `last_activity` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_throttle`
--

LOCK TABLES `exp_throttle` WRITE;
/*!40000 ALTER TABLE `exp_throttle` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_throttle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_upload_no_access`
--

DROP TABLE IF EXISTS `exp_upload_no_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_upload_no_access` (
  `upload_id` int(6) unsigned NOT NULL,
  `upload_loc` varchar(3) NOT NULL,
  `member_group` smallint(4) unsigned NOT NULL,
  PRIMARY KEY (`upload_id`,`member_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_upload_no_access`
--

LOCK TABLES `exp_upload_no_access` WRITE;
/*!40000 ALTER TABLE `exp_upload_no_access` DISABLE KEYS */;
INSERT INTO `exp_upload_no_access` VALUES (1,'cp',6);
/*!40000 ALTER TABLE `exp_upload_no_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_upload_prefs`
--

DROP TABLE IF EXISTS `exp_upload_prefs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_upload_prefs` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `name` varchar(50) NOT NULL,
  `server_path` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL,
  `allowed_types` varchar(3) NOT NULL DEFAULT 'img',
  `max_size` varchar(16) DEFAULT NULL,
  `max_height` varchar(6) DEFAULT NULL,
  `max_width` varchar(6) DEFAULT NULL,
  `properties` varchar(120) DEFAULT NULL,
  `pre_format` varchar(120) DEFAULT NULL,
  `post_format` varchar(120) DEFAULT NULL,
  `file_properties` varchar(120) DEFAULT NULL,
  `file_pre_format` varchar(120) DEFAULT NULL,
  `file_post_format` varchar(120) DEFAULT NULL,
  `cat_group` varchar(255) DEFAULT NULL,
  `batch_location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_upload_prefs`
--

LOCK TABLES `exp_upload_prefs` WRITE;
/*!40000 ALTER TABLE `exp_upload_prefs` DISABLE KEYS */;
INSERT INTO `exp_upload_prefs` VALUES (1,1,'Featured Photos','C:\\xampp\\htdocs\\lcsportsfields.org\\www/uploads/images/featured/','//local.lcsportsfields.org/uploads/images/featured/','img','','','','','','','','','','',NULL);
/*!40000 ALTER TABLE `exp_upload_prefs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_wygwam_configs`
--

DROP TABLE IF EXISTS `exp_wygwam_configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_wygwam_configs` (
  `config_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `config_name` varchar(32) DEFAULT NULL,
  `settings` text,
  PRIMARY KEY (`config_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_wygwam_configs`
--

LOCK TABLES `exp_wygwam_configs` WRITE;
/*!40000 ALTER TABLE `exp_wygwam_configs` DISABLE KEYS */;
INSERT INTO `exp_wygwam_configs` VALUES (1,'Basic','YTo1OntzOjc6InRvb2xiYXIiO2E6MTA6e2k6MDtzOjQ6IkJvbGQiO2k6MTtzOjY6Ikl0YWxpYyI7aToyO3M6OToiVW5kZXJsaW5lIjtpOjM7czo2OiJTdHJpa2UiO2k6NDtzOjEyOiJOdW1iZXJlZExpc3QiO2k6NTtzOjEyOiJCdWxsZXRlZExpc3QiO2k6NjtzOjQ6IkxpbmsiO2k6NztzOjY6IlVubGluayI7aTo4O3M6NjoiQW5jaG9yIjtpOjk7czo1OiJBYm91dCI7fXM6NjoiaGVpZ2h0IjtzOjM6IjIwMCI7czoxNDoicmVzaXplX2VuYWJsZWQiO3M6MToieSI7czoxMToiY29udGVudHNDc3MiO2E6MDp7fXM6MTA6InVwbG9hZF9kaXIiO3M6MDoiIjt9'),(2,'Full','YTo1OntzOjc6InRvb2xiYXIiO2E6Njc6e2k6MDtzOjY6IlNvdXJjZSI7aToxO3M6NDoiU2F2ZSI7aToyO3M6NzoiTmV3UGFnZSI7aTozO3M6NzoiUHJldmlldyI7aTo0O3M6OToiVGVtcGxhdGVzIjtpOjU7czozOiJDdXQiO2k6NjtzOjQ6IkNvcHkiO2k6NztzOjU6IlBhc3RlIjtpOjg7czo5OiJQYXN0ZVRleHQiO2k6OTtzOjEzOiJQYXN0ZUZyb21Xb3JkIjtpOjEwO3M6NToiUHJpbnQiO2k6MTE7czoxMjoiU3BlbGxDaGVja2VyIjtpOjEyO3M6NToiU2NheXQiO2k6MTM7czo0OiJVbmRvIjtpOjE0O3M6NDoiUmVkbyI7aToxNTtzOjQ6IkZpbmQiO2k6MTY7czo3OiJSZXBsYWNlIjtpOjE3O3M6OToiU2VsZWN0QWxsIjtpOjE4O3M6MTI6IlJlbW92ZUZvcm1hdCI7aToxOTtzOjQ6IkZvcm0iO2k6MjA7czo4OiJDaGVja2JveCI7aToyMTtzOjU6IlJhZGlvIjtpOjIyO3M6OToiVGV4dEZpZWxkIjtpOjIzO3M6ODoiVGV4dGFyZWEiO2k6MjQ7czo2OiJTZWxlY3QiO2k6MjU7czo2OiJCdXR0b24iO2k6MjY7czoxMToiSW1hZ2VCdXR0b24iO2k6Mjc7czoxMToiSGlkZGVuRmllbGQiO2k6Mjg7czoxOiIvIjtpOjI5O3M6NDoiQm9sZCI7aTozMDtzOjY6Ikl0YWxpYyI7aTozMTtzOjk6IlVuZGVybGluZSI7aTozMjtzOjY6IlN0cmlrZSI7aTozMztzOjk6IlN1YnNjcmlwdCI7aTozNDtzOjExOiJTdXBlcnNjcmlwdCI7aTozNTtzOjEyOiJOdW1iZXJlZExpc3QiO2k6MzY7czoxMjoiQnVsbGV0ZWRMaXN0IjtpOjM3O3M6NzoiT3V0ZGVudCI7aTozODtzOjY6IkluZGVudCI7aTozOTtzOjEwOiJCbG9ja3F1b3RlIjtpOjQwO3M6OToiQ3JlYXRlRGl2IjtpOjQxO3M6MTE6Ikp1c3RpZnlMZWZ0IjtpOjQyO3M6MTM6Ikp1c3RpZnlDZW50ZXIiO2k6NDM7czoxMjoiSnVzdGlmeVJpZ2h0IjtpOjQ0O3M6MTI6Ikp1c3RpZnlCbG9jayI7aTo0NTtzOjQ6IkxpbmsiO2k6NDY7czo2OiJVbmxpbmsiO2k6NDc7czo2OiJBbmNob3IiO2k6NDg7czo1OiJJbWFnZSI7aTo0OTtzOjU6IkZsYXNoIjtpOjUwO3M6NToiVGFibGUiO2k6NTE7czoxNDoiSG9yaXpvbnRhbFJ1bGUiO2k6NTI7czo2OiJTbWlsZXkiO2k6NTM7czoxMToiU3BlY2lhbENoYXIiO2k6NTQ7czo5OiJQYWdlQnJlYWsiO2k6NTU7czo4OiJSZWFkTW9yZSI7aTo1NjtzOjEwOiJFbWJlZE1lZGlhIjtpOjU3O3M6MToiLyI7aTo1ODtzOjY6IlN0eWxlcyI7aTo1OTtzOjY6IkZvcm1hdCI7aTo2MDtzOjQ6IkZvbnQiO2k6NjE7czo4OiJGb250U2l6ZSI7aTo2MjtzOjk6IlRleHRDb2xvciI7aTo2MztzOjc6IkJHQ29sb3IiO2k6NjQ7czo4OiJNYXhpbWl6ZSI7aTo2NTtzOjEwOiJTaG93QmxvY2tzIjtpOjY2O3M6NToiQWJvdXQiO31zOjY6ImhlaWdodCI7czozOiIyMDAiO3M6MTQ6InJlc2l6ZV9lbmFibGVkIjtzOjE6InkiO3M6MTE6ImNvbnRlbnRzQ3NzIjthOjA6e31zOjEwOiJ1cGxvYWRfZGlyIjtzOjA6IiI7fQ==');
/*!40000 ALTER TABLE `exp_wygwam_configs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-06-09 10:54:27
