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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_categories`
--

LOCK TABLES `exp_categories` WRITE;
/*!40000 ALTER TABLE `exp_categories` DISABLE KEYS */;
INSERT INTO `exp_categories` VALUES (1,1,1,0,'Announcement','announcement','','0',1),(2,1,1,0,'Event','event','','0',2);
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
INSERT INTO `exp_category_field_data` VALUES (1,1,1),(2,1,1);
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_category_groups`
--

LOCK TABLES `exp_category_groups` WRITE;
/*!40000 ALTER TABLE `exp_category_groups` DISABLE KEYS */;
INSERT INTO `exp_category_groups` VALUES (1,1,'default','a',0,'all','6','');
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
INSERT INTO `exp_category_posts` VALUES (16,1),(18,1);
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
  `field_id_9` text,
  `field_ft_9` tinytext,
  `field_id_10` int(10) DEFAULT '0',
  `field_dt_10` varchar(50) DEFAULT NULL,
  `field_ft_10` tinytext,
  `field_id_11` text,
  `field_ft_11` tinytext,
  `field_id_12` text,
  `field_ft_12` tinytext,
  `field_id_13` text,
  `field_ft_13` tinytext,
  `field_id_14` text,
  `field_ft_14` tinytext,
  `field_id_15` text,
  `field_ft_15` tinytext,
  `field_id_16` text,
  `field_ft_16` tinytext,
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
INSERT INTO `exp_channel_data` VALUES (14,1,1,'',NULL,'ChannelImages','xhtml','<p>\n	adf</p>','none','y','none','caption--bottom-left','xhtml','','none','','none',0,'','none','','xhtml','','none','','none','','none','','none','','xhtml'),(15,1,1,'',NULL,'','xhtml','<p>\n	test</p>','none','','none','caption--top-left','xhtml','','none','','none',0,'','none','','xhtml','','none','','none','','none','','none','','xhtml'),(13,1,1,'',NULL,'','xhtml','<p>\n	body</p>','none','','none','','xhtml','','none','','none',0,'','none','','xhtml','','none','','none','','none','','none','','xhtml'),(12,1,1,'',NULL,'ChannelImages','xhtml','','none','y','none','caption--bottom-right','xhtml','','none','','none',0,'','none','','xhtml','','none','','none','','none','','none','','xhtml'),(16,1,1,'',NULL,'ChannelImages','xhtml','<p>\n	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p>\n	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>','none','y','none','caption--top-right','xhtml','','none','','none',0,'','none','','xhtml','','none','','none','','none','','none','','xhtml'),(17,1,1,'',NULL,'ChannelImages','xhtml','<p>\n	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris aliquam posuere magna at convallis. In scelerisque, metus vitae vehicula fringilla, enim neque sagittis est, ut tristique nibh felis id arcu. Suspendisse eget mi a nisi elementum vestibulum. Donec ultrices nunc a ante venenatis tincidunt at eu nisl. Morbi eu sodales neque, et blandit purus. Integer enim mauris, condimentum tristique viverra auctor, tincidunt id erat. Nam in leo tristique, ultricies dui nec, congue arcu. Ut molestie turpis tortor, et rutrum ligula bibendum eget.</p>\n<p>\n	Nunc hendrerit risus ut libero pulvinar congue sed in mauris. Aenean et felis quis est ultricies vestibulum. Suspendisse ut ultricies orci, eget fringilla ante. Maecenas est risus, tincidunt non volutpat sit amet, tincidunt vel erat. Integer commodo nulla non justo elementum convallis. Duis volutpat tempor elementum. In hac habitasse platea dictumst.</p>\n<p>\n	Suspendisse pharetra felis eget libero porttitor, et malesuada mauris pulvinar. Quisque vitae justo bibendum risus mattis bibendum. Integer et mi justo. In quis interdum lorem, nec consectetur magna. Aliquam vitae urna fringilla justo placerat consectetur. Nulla in velit in nulla vehicula ornare vel vel arcu. Morbi id mattis nisl. Morbi nec eros molestie, dapibus erat a, consectetur lacus. Curabitur et rutrum metus. Nunc ac ultrices velit. Vestibulum eget ornare nulla, sed pharetra erat. Cras vel libero iaculis, condimentum ante vel, hendrerit nibh.</p>\n<p>\n	Curabitur non accumsan lorem. Etiam vel rhoncus ipsum, elementum lacinia risus. Donec consequat sem quis facilisis aliquam. Phasellus et metus non purus suscipit egestas. Morbi porta nisi vel erat viverra tempor. Donec imperdiet, risus vel vulputate tempor, sapien mauris dignissim sapien, eu semper nulla lectus a orci. In hac habitasse platea dictumst. Fusce sapien sapien, eleifend eu arcu nec, pulvinar commodo lacus. Ut sit amet est vitae libero dignissim rutrum in non erat. Praesent at urna ac sem dictum tempus ac sit amet mauris. Cras nec euismod eros. Sed sit amet justo sapien. Nam magna nibh, condimentum rutrum mollis sit amet, bibendum a ligula. Sed nulla dui, porta sed egestas eget, iaculis eu lacus. Nullam quis velit dictum lorem faucibus varius luctus eu nunc.</p>\n<p>\n	Phasellus pulvinar elit a ante consectetur, ac semper nunc accumsan. Donec mattis, libero fringilla pretium iaculis, augue libero posuere lorem, ac feugiat leo sapien ut ligula. Nam ut porta tellus, at blandit ipsum. Donec auctor euismod sem, et sodales ligula pulvinar nec. Praesent pretium ac libero et bibendum. Quisque bibendum a eros vitae ornare. Nunc dapibus tincidunt nibh, vel ullamcorper arcu tempor vitae. Duis in quam at ante porta tristique. Nulla tortor tortor, malesuada non aliquam quis, tempor quis tortor. Aenean eget sapien nec nulla pulvinar aliquet ac non sapien. Aliquam quis dictum elit.</p>','none','','none','caption--top-right','xhtml','','none','','none',0,'','none','','xhtml','','none','','none','','none','','none','','xhtml'),(18,1,1,'',NULL,'','xhtml','<p>\n	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris aliquam posuere magna at convallis. In scelerisque, metus vitae vehicula fringilla, enim neque sagittis est, ut tristique nibh felis id arcu. Suspendisse eget mi a nisi elementum vestibulum. Donec ultrices nunc a ante venenatis tincidunt at eu nisl. Morbi eu sodales neque, et blandit purus. Integer enim mauris, condimentum tristique viverra auctor, tincidunt id erat. Nam in leo tristique, ultricies dui nec, congue arcu. Ut molestie turpis tortor, et rutrum ligula bibendum eget.</p>\n<p>\n	Nunc hendrerit risus ut libero pulvinar congue sed in mauris. Aenean et felis quis est ultricies vestibulum. Suspendisse ut ultricies orci, eget fringilla ante. Maecenas est risus, tincidunt non volutpat sit amet, tincidunt vel erat. Integer commodo nulla non justo elementum convallis. Duis volutpat tempor elementum. In hac habitasse platea dictumst.</p>\n<p>\n	Suspendisse pharetra felis eget libero porttitor, et malesuada mauris pulvinar. Quisque vitae justo bibendum risus mattis bibendum. Integer et mi justo. In quis interdum lorem, nec consectetur magna. Aliquam vitae urna fringilla justo placerat consectetur. Nulla in velit in nulla vehicula ornare vel vel arcu. Morbi id mattis nisl. Morbi nec eros molestie, dapibus erat a, consectetur lacus. Curabitur et rutrum metus. Nunc ac ultrices velit. Vestibulum eget ornare nulla, sed pharetra erat. Cras vel libero iaculis, condimentum ante vel, hendrerit nibh.</p>\n<p>\n	Curabitur non accumsan lorem. Etiam vel rhoncus ipsum, elementum lacinia risus. Donec consequat sem quis facilisis aliquam. Phasellus et metus non purus suscipit egestas. Morbi porta nisi vel erat viverra tempor. Donec imperdiet, risus vel vulputate tempor, sapien mauris dignissim sapien, eu semper nulla lectus a orci. In hac habitasse platea dictumst. Fusce sapien sapien, eleifend eu arcu nec, pulvinar commodo lacus. Ut sit amet est vitae libero dignissim rutrum in non erat. Praesent at urna ac sem dictum tempus ac sit amet mauris. Cras nec euismod eros. Sed sit amet justo sapien. Nam magna nibh, condimentum rutrum mollis sit amet, bibendum a ligula. Sed nulla dui, porta sed egestas eget, iaculis eu lacus. Nullam quis velit dictum lorem faucibus varius luctus eu nunc.</p>\n<p>\n	Phasellus pulvinar elit a ante consectetur, ac semper nunc accumsan. Donec mattis, libero fringilla pretium iaculis, augue libero posuere lorem, ac feugiat leo sapien ut ligula. Nam ut porta tellus, at blandit ipsum. Donec auctor euismod sem, et sodales ligula pulvinar nec. Praesent pretium ac libero et bibendum. Quisque bibendum a eros vitae ornare. Nunc dapibus tincidunt nibh, vel ullamcorper arcu tempor vitae. Duis in quam at ante porta tristique. Nulla tortor tortor, malesuada non aliquam quis, tempor quis tortor. Aenean eget sapien nec nulla pulvinar aliquet ac non sapien. Aliquam quis dictum elit.</p>','none','','none','caption--top-left','xhtml','','none','','none',0,'','none','','xhtml','','none','','none','','none','','none','','xhtml'),(19,1,4,'',NULL,'','xhtml','','none','','none','caption--top-left','xhtml','','none','General membership meeting at Northampton Area Community College','none',1372352220,'','none','48600','xhtml','','none','sponsor 1\nhttp://www.website.com\n','none','Lehigh Sports Fields\n​123 Address\n\n\n\n\n','none','<p>\n	The cost of being wrong is less than the cost of doing nothing.&rdquo; &ndash; Seth Godin (Poke the Box)</p>\n<p>\n	&ldquo;The real problem when working with a consultant, a therapist or a coach isn&rsquo;t that we don&rsquo;t know what to do. The real problem is that we don&rsquo;t want to change our mind.&rdquo; &ndash; Seth Godin (The Icarus Deception)</p>\n<p>\n	&ldquo;You can either fit in or stand out. Not both.&rdquo; &ndash; Seth Godin (Linchpin)</p>\n<p>\n	&ldquo;The only purpose of starting is to finish, and while the projects we do are never really finished, they must ship.&rdquo; &ndash; Seth Godin (Linchpin)</p>\n<p>\n	&ldquo;The lizard isn&rsquo;t listening and the lizard doesn&rsquo;t care.&rdquo; &ndash; Seth Godin (Linchpin)</p>\n<p>\n	&ldquo;Life is a buzzer box. Poke it.&rdquo; &ndash; Seth Godin (Poke the Box)</p>\n<p>\n	&ldquo;Creating ideas that spread and connecting the disconnected are the two pillars of our new society, and both of them require the posture of the artist&rdquo; &ndash; Seth Godin (The Icarus Deception)</p>\n<p>\n	&ldquo;Hard work is about risk. It begins when you deal with the things that you&rsquo;d rather not deal with: fear of failure, fear of standing out, fear of rejection. Hard work is about training yourself to leap over this barrier, tunnel under that barrier, drive through the other barrier. And after you&rsquo;ve done that, to do it again the next day&rdquo; &ndash; Seth Godin (Whatcha Gonna Do with That Duck?)</p>\n<p>\n	&ldquo;Make a decision. It doesn&rsquo;t have to be a wise decision or a perfect one. Just make one.&rdquo; Seth Godin</p>\n<p>\n	&ldquo;You are not your resume, you are your work. &ldquo; &ndash; Seth Godin</p>\n<p>\n	&ldquo;Wouldn&rsquo;t it be great to be gifted? In fact&hellip; It turns out that choices lead to habits. Habits become talents. Talents are labeled gifts. You&rsquo;re not born this way, you get this way.&rdquo; &ndash; Seth Godin</p>','none','','xhtml'),(20,1,4,'',NULL,'','xhtml','','none','','none','caption--top-left','xhtml','','none','','none',1372279380,'','none','56700','xhtml','','none','LCSFA\nhttp://www.lcsportsfields.org\nPPL Electric Utilities\nhttp://www.pplelectric.com\n','none','LC Sports Fields (Field 2)\n{\"street\":\"123 Street\",\"street_2\":\"\",\"city\":\"Allentown\",\"region\":\"PA\",\"postal_code\":\"18104\",\"country\":\"US\"}\n','none','<p>\n	detail</p>','none','48600','xhtml');
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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channel_entries_autosave`
--

LOCK TABLES `exp_channel_entries_autosave` WRITE;
/*!40000 ALTER TABLE `exp_channel_entries_autosave` DISABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channel_fields`
--

LOCK TABLES `exp_channel_fields` WRITE;
/*!40000 ALTER TABLE `exp_channel_fields` DISABLE KEYS */;
INSERT INTO `exp_channel_fields` VALUES (5,1,1,'main_content_body','Content Body','','wygwam','','0',0,0,6,128,'n','ltr','n','n','none','n',10,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIyIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),(6,1,1,'featured_slide_on','Use Featured Slide?','To use display this content item with a featured slide, enable this field and upload the slide image in the \"Featured Slide\" field below.','fieldpack_switch','','0',0,0,6,128,'n','ltr','n','n','none','n',1,'any','YToxMTp7czo5OiJvZmZfbGFiZWwiO3M6MjoiTm8iO3M6Nzoib2ZmX3ZhbCI7czowOiIiO3M6ODoib25fbGFiZWwiO3M6MzoiWWVzIjtzOjY6Im9uX3ZhbCI7czoxOiJ5IjtzOjc6ImRlZmF1bHQiO3M6Mzoib2ZmIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(7,1,1,'caption_location','Caption Location','The caption is placed a-top the featured image; depending on the image used, you may want to place the caption in different locations.','fieldpack_pill','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',4,'any','YTo3OntzOjc6Im9wdGlvbnMiO2E6NDp7czoxNzoiY2FwdGlvbi0tdG9wLWxlZnQiO3M6ODoiVG9wIExlZnQiO3M6MTg6ImNhcHRpb24tLXRvcC1yaWdodCI7czo5OiJUb3AgUmlnaHQiO3M6MjA6ImNhcHRpb24tLWJvdHRvbS1sZWZ0IjtzOjExOiJCb3R0b20gTGVmdCI7czoyMToiY2FwdGlvbi0tYm90dG9tLXJpZ2h0IjtzOjEyOiJCb3R0b20gUmlnaHQiO31zOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(8,1,1,'help_featured_image','How to set a Featured Image','','nsm_publish_hints','','0',0,0,6,128,'n','ltr','n','y','none','n',5,'any','YTo3OntzOjIyOiJmaWVsZF9wdWJsaXNoaW5nX2hpbnRzIjtzOjQ6InRlc3QiO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),(9,1,1,'event__topic','Event Topic','Enter the topic of this event (eg. General membership meeting at Northampton Area Community College)','textarea','','0',0,0,2,128,'n','ltr','y','n','none','n',20,'any','YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(10,1,1,'event__date','Event Date','Enter the date the event will occur (if left empty, \"TBD\" will be used)','date','','0',0,0,6,128,'n','ltr','n','n','none','n',20,'any','YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(11,1,1,'event__start-time','Event Start Time','Enter the time frame for the event (if left empty, \"TBD\" will be used)','time_select','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',22,'any','YTo4OntzOjEzOiJkaXNwbGF5X3N0eWxlIjtzOjQ6IjEyaHIiO3M6MTU6InRpbWVfaW5jcmVtZW50cyI7czo1OiIxNW1pbiI7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),(3,1,2,'featured_image','Featured Image','','channel_images','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',1,'any','YTo3OntzOjE0OiJjaGFubmVsX2ltYWdlcyI7YToyOTp7czo5OiJ2aWV3X21vZGUiO3M6NToidGFibGUiO3M6MTM6ImFjdGlvbl9ncm91cHMiO2E6MTp7aToxO2E6NTp7czoxMDoiZ3JvdXBfbmFtZSI7czo0OiJjcm9wIjtzOjc6Ind5c2l3eWciO3M6MzoieWVzIjtzOjg6ImVkaXRhYmxlIjtzOjM6InllcyI7czo3OiJhY3Rpb25zIjthOjI6e3M6MTU6InJlc2l6ZV9hZGFwdGl2ZSI7YTo1OntzOjU6IndpZHRoIjtzOjM6Ijk2MCI7czo2OiJoZWlnaHQiO3M6MDoiIjtzOjc6InF1YWxpdHkiO3M6MzoiMTAwIjtzOjg6InVwc2l6aW5nIjtzOjI6Im5vIjtzOjQ6InN0ZXAiO3M6MToiMSI7fXM6MTE6ImNyb3BfY2VudGVyIjthOjQ6e3M6NToid2lkdGgiO3M6MzoiOTYwIjtzOjY6ImhlaWdodCI7czozOiIzMDAiO3M6NzoicXVhbGl0eSI7czozOiIxMDAiO3M6NDoic3RlcCI7czoxOiIyIjt9fXM6MTA6ImZpbmFsX3NpemUiO2E6NDp7czo1OiJ3aWR0aCI7czozOiI5NjAiO3M6NjoiaGVpZ2h0IjtzOjM6IjMwMCI7czo3OiJxdWFsaXR5IjtzOjM6IjEwMCI7czo0OiJzdGVwIjtzOjE6IjIiO319fXM6MTM6InNtYWxsX3ByZXZpZXciO3M6NDoiY3JvcCI7czoxMToiYmlnX3ByZXZpZXciO3M6NDoiY3JvcCI7czoxMzoia2VlcF9vcmlnaW5hbCI7czozOiJ5ZXMiO3M6MTU6InVwbG9hZF9sb2NhdGlvbiI7czo1OiJsb2NhbCI7czo5OiJsb2NhdGlvbnMiO2E6Mzp7czo1OiJsb2NhbCI7YToxOntzOjg6ImxvY2F0aW9uIjtzOjE6IjEiO31zOjI6InMzIjthOjg6e3M6Mzoia2V5IjtzOjA6IiI7czoxMDoic2VjcmV0X2tleSI7czowOiIiO3M6NjoiYnVja2V0IjtzOjA6IiI7czo2OiJyZWdpb24iO3M6OToidXMtZWFzdC0xIjtzOjM6ImFjbCI7czoxMToicHVibGljLXJlYWQiO3M6Nzoic3RvcmFnZSI7czo4OiJzdGFuZGFyZCI7czo5OiJkaXJlY3RvcnkiO3M6MDoiIjtzOjE3OiJjbG91ZGZyb250X2RvbWFpbiI7czowOiIiO31zOjEwOiJjbG91ZGZpbGVzIjthOjU6e3M6ODoidXNlcm5hbWUiO3M6MDoiIjtzOjM6ImFwaSI7czowOiIiO3M6OToiY29udGFpbmVyIjtzOjA6IiI7czo2OiJyZWdpb24iO3M6MjoidXMiO3M6NzoiY2RuX3VyaSI7czowOiIiO319czoxMDoiY2F0ZWdvcmllcyI7YTowOnt9czoxNjoiZGVmYXVsdF9jYXRlZ29yeSI7czowOiIiO3M6MTg6InNob3dfc3RvcmVkX2ltYWdlcyI7czoyOiJubyI7czoyMzoic3RvcmVkX2ltYWdlc19ieV9hdXRob3IiO3M6Mjoibm8iO3M6MjU6InN0b3JlZF9pbWFnZXNfc2VhcmNoX3R5cGUiO3M6NToiZW50cnkiO3M6MTc6InNob3dfaW1wb3J0X2ZpbGVzIjtzOjI6Im5vIjtzOjExOiJpbXBvcnRfcGF0aCI7czoxOiIvIjtzOjE1OiJzaG93X2ltYWdlX2VkaXQiO3M6MzoieWVzIjtzOjE4OiJzaG93X2ltYWdlX3JlcGxhY2UiO3M6Mjoibm8iO3M6MjI6ImFsbG93X3Blcl9pbWFnZV9hY3Rpb24iO3M6Mjoibm8iO3M6MTE6ImltYWdlX2xpbWl0IjtzOjE6IjEiO3M6MTM6Imh5YnJpZF91cGxvYWQiO3M6MzoieWVzIjtzOjE2OiJwcm9ncmVzc2l2ZV9qcGVnIjtzOjI6Im5vIjtzOjE2OiJ3eXNpd3lnX29yaWdpbmFsIjtzOjM6InllcyI7czoxODoic2F2ZV9kYXRhX2luX2ZpZWxkIjtzOjI6Im5vIjtzOjEzOiJkaXNhYmxlX2NvdmVyIjtzOjI6Im5vIjtzOjExOiJjb252ZXJ0X2pwZyI7czoyOiJubyI7czoxMToiY292ZXJfZmlyc3QiO3M6MzoieWVzIjtzOjEwOiJwYXJzZV9pcHRjIjtzOjI6Im5vIjtzOjEwOiJwYXJzZV9leGlmIjtzOjI6Im5vIjtzOjk6InBhcnNlX3htcCI7czoyOiJubyI7czo3OiJjb2x1bW5zIjthOjEzOntzOjc6InJvd19udW0iO3M6MToiIyI7czoyOiJpZCI7czoyOiJJRCI7czo1OiJpbWFnZSI7czo1OiJJbWFnZSI7czo4OiJmaWxlbmFtZSI7czowOiIiO3M6NToidGl0bGUiO3M6MDoiIjtzOjk6InVybF90aXRsZSI7czowOiIiO3M6NDoiZGVzYyI7czowOiIiO3M6ODoiY2F0ZWdvcnkiO3M6MDoiIjtzOjk6ImNpZmllbGRfMSI7czowOiIiO3M6OToiY2lmaWVsZF8yIjtzOjA6IiI7czo5OiJjaWZpZWxkXzMiO3M6MDoiIjtzOjk6ImNpZmllbGRfNCI7czowOiIiO3M6OToiY2lmaWVsZF81IjtzOjA6IiI7fX1zOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(4,1,1,'featured_slide','Featured Slide','Add a cover image here to include this content item in the large slider on the homepage. \n\n* Leave blank if you do want this item to be featured in the slider.','channel_images','','0',0,0,6,128,'n','ltr','n','y','xhtml','n',2,'any','YTo3OntzOjE0OiJjaGFubmVsX2ltYWdlcyI7YToyOTp7czo5OiJ2aWV3X21vZGUiO3M6NToidGFibGUiO3M6MTM6ImFjdGlvbl9ncm91cHMiO2E6Mjp7aToxO2E6NTp7czoxMDoiZ3JvdXBfbmFtZSI7czoxMToibGFyZ2Utc2xpZGUiO3M6Nzoid3lzaXd5ZyI7czozOiJ5ZXMiO3M6NzoiYWN0aW9ucyI7YToxOntzOjE1OiJyZXNpemVfYWRhcHRpdmUiO2E6NTp7czo1OiJ3aWR0aCI7czozOiI5NjAiO3M6NjoiaGVpZ2h0IjtzOjA6IiI7czo3OiJxdWFsaXR5IjtzOjI6Ijc1IjtzOjg6InVwc2l6aW5nIjtzOjI6Im5vIjtzOjQ6InN0ZXAiO3M6MToiMSI7fX1zOjEwOiJmaW5hbF9zaXplIjthOjU6e3M6NToid2lkdGgiO3M6MzoiOTYwIjtzOjY6ImhlaWdodCI7czowOiIiO3M6NzoicXVhbGl0eSI7czoyOiI3NSI7czo4OiJ1cHNpemluZyI7czoyOiJubyI7czo0OiJzdGVwIjtzOjE6IjEiO31zOjg6ImVkaXRhYmxlIjtzOjI6Im5vIjt9aToyO2E6NTp7czoxMDoiZ3JvdXBfbmFtZSI7czoxMDoiaW4tY29udGVudCI7czo3OiJ3eXNpd3lnIjtzOjM6InllcyI7czo3OiJhY3Rpb25zIjthOjE6e3M6MTU6InJlc2l6ZV9hZGFwdGl2ZSI7YTo1OntzOjU6IndpZHRoIjtzOjM6IjI1MCI7czo2OiJoZWlnaHQiO3M6MDoiIjtzOjc6InF1YWxpdHkiO3M6MzoiMTAwIjtzOjg6InVwc2l6aW5nIjtzOjI6Im5vIjtzOjQ6InN0ZXAiO3M6MToiMSI7fX1zOjEwOiJmaW5hbF9zaXplIjthOjU6e3M6NToid2lkdGgiO3M6MzoiMjUwIjtzOjY6ImhlaWdodCI7czowOiIiO3M6NzoicXVhbGl0eSI7czozOiIxMDAiO3M6ODoidXBzaXppbmciO3M6Mjoibm8iO3M6NDoic3RlcCI7czoxOiIxIjt9czo4OiJlZGl0YWJsZSI7czoyOiJubyI7fX1zOjEzOiJzbWFsbF9wcmV2aWV3IjtzOjExOiJsYXJnZS1zbGlkZSI7czoxMToiYmlnX3ByZXZpZXciO3M6MTE6ImxhcmdlLXNsaWRlIjtzOjEzOiJrZWVwX29yaWdpbmFsIjtzOjM6InllcyI7czoxNToidXBsb2FkX2xvY2F0aW9uIjtzOjU6ImxvY2FsIjtzOjk6ImxvY2F0aW9ucyI7YTozOntzOjU6ImxvY2FsIjthOjE6e3M6ODoibG9jYXRpb24iO3M6MToiMSI7fXM6MjoiczMiO2E6ODp7czozOiJrZXkiO3M6MDoiIjtzOjEwOiJzZWNyZXRfa2V5IjtzOjA6IiI7czo2OiJidWNrZXQiO3M6MDoiIjtzOjY6InJlZ2lvbiI7czo5OiJ1cy1lYXN0LTEiO3M6MzoiYWNsIjtzOjExOiJwdWJsaWMtcmVhZCI7czo3OiJzdG9yYWdlIjtzOjg6InN0YW5kYXJkIjtzOjk6ImRpcmVjdG9yeSI7czowOiIiO3M6MTc6ImNsb3VkZnJvbnRfZG9tYWluIjtzOjA6IiI7fXM6MTA6ImNsb3VkZmlsZXMiO2E6NTp7czo4OiJ1c2VybmFtZSI7czowOiIiO3M6MzoiYXBpIjtzOjA6IiI7czo5OiJjb250YWluZXIiO3M6MDoiIjtzOjY6InJlZ2lvbiI7czoyOiJ1cyI7czo3OiJjZG5fdXJpIjtzOjA6IiI7fX1zOjEwOiJjYXRlZ29yaWVzIjthOjA6e31zOjE2OiJkZWZhdWx0X2NhdGVnb3J5IjtzOjA6IiI7czoxODoic2hvd19zdG9yZWRfaW1hZ2VzIjtzOjI6Im5vIjtzOjIzOiJzdG9yZWRfaW1hZ2VzX2J5X2F1dGhvciI7czoyOiJubyI7czoyNToic3RvcmVkX2ltYWdlc19zZWFyY2hfdHlwZSI7czo1OiJlbnRyeSI7czoxNzoic2hvd19pbXBvcnRfZmlsZXMiO3M6Mjoibm8iO3M6MTE6ImltcG9ydF9wYXRoIjtzOjE6Ii8iO3M6MTU6InNob3dfaW1hZ2VfZWRpdCI7czozOiJ5ZXMiO3M6MTg6InNob3dfaW1hZ2VfcmVwbGFjZSI7czoyOiJubyI7czoyMjoiYWxsb3dfcGVyX2ltYWdlX2FjdGlvbiI7czoyOiJubyI7czoxMToiaW1hZ2VfbGltaXQiO3M6MToiMSI7czoxMzoiaHlicmlkX3VwbG9hZCI7czozOiJ5ZXMiO3M6MTY6InByb2dyZXNzaXZlX2pwZWciO3M6Mjoibm8iO3M6MTY6Ind5c2l3eWdfb3JpZ2luYWwiO3M6MzoieWVzIjtzOjE4OiJzYXZlX2RhdGFfaW5fZmllbGQiO3M6Mjoibm8iO3M6MTM6ImRpc2FibGVfY292ZXIiO3M6Mjoibm8iO3M6MTE6ImNvbnZlcnRfanBnIjtzOjI6Im5vIjtzOjExOiJjb3Zlcl9maXJzdCI7czozOiJ5ZXMiO3M6MTA6InBhcnNlX2lwdGMiO3M6Mjoibm8iO3M6MTA6InBhcnNlX2V4aWYiO3M6Mjoibm8iO3M6OToicGFyc2VfeG1wIjtzOjI6Im5vIjtzOjc6ImNvbHVtbnMiO2E6MTM6e3M6Nzoicm93X251bSI7czoxOiIjIjtzOjI6ImlkIjtzOjI6IklEIjtzOjU6ImltYWdlIjtzOjU6IkltYWdlIjtzOjg6ImZpbGVuYW1lIjtzOjA6IiI7czo1OiJ0aXRsZSI7czowOiIiO3M6OToidXJsX3RpdGxlIjtzOjA6IiI7czo0OiJkZXNjIjtzOjc6IkNhcHRpb24iO3M6ODoiY2F0ZWdvcnkiO3M6MDoiIjtzOjk6ImNpZmllbGRfMSI7czowOiIiO3M6OToiY2lmaWVsZF8yIjtzOjA6IiI7czo5OiJjaWZpZWxkXzMiO3M6MDoiIjtzOjk6ImNpZmllbGRfNCI7czowOiIiO3M6OToiY2lmaWVsZF81IjtzOjA6IiI7fX1zOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(12,1,1,'event__help','Publishing Instructions','','nsm_publish_hints','','0',0,0,6,128,'n','ltr','n','y','none','n',20,'any','YTo3OntzOjIyOiJmaWVsZF9wdWJsaXNoaW5nX2hpbnRzIjtzOjg6IlsgaGVscCBdIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(13,1,1,'event__sponsors','Event Sponsors','If this event has one or more sponsors, list them here. (optional)','matrix','','0',0,0,6,128,'n','ltr','y','n','none','n',20,'any','YTozOntzOjg6Im1pbl9yb3dzIjtzOjE6IjAiO3M6ODoibWF4X3Jvd3MiO3M6MDoiIjtzOjc6ImNvbF9pZHMiO2E6Mzp7aTowO3M6MToiMSI7aToxO3M6MToiMiI7aToyO3M6MToiNiI7fX0='),(14,1,1,'event__location','Event Location or Venue','Enter the event location or venue (if left blank, \"TBD\" will be used).','matrix','','0',0,0,6,128,'n','ltr','n','n','none','n',11,'any','YTozOntzOjg6Im1pbl9yb3dzIjtzOjE6IjAiO3M6ODoibWF4X3Jvd3MiO3M6MToiMSI7czo3OiJjb2xfaWRzIjthOjM6e2k6MDtzOjE6IjMiO2k6MTtzOjE6IjQiO2k6MjtzOjE6IjUiO319'),(15,1,1,'event__detail','Event Detail','Enter details about the event, location, expectations, etc. (optional)','wygwam','','0',0,0,6,128,'n','ltr','y','n','none','n',20,'any','YTo4OntzOjY6ImNvbmZpZyI7czoxOiIxIjtzOjU6ImRlZmVyIjtzOjE6Im4iO3M6MTg6ImZpZWxkX3Nob3dfc21pbGV5cyI7czoxOiJuIjtzOjE5OiJmaWVsZF9zaG93X2dsb3NzYXJ5IjtzOjE6Im4iO3M6MjE6ImZpZWxkX3Nob3dfc3BlbGxjaGVjayI7czoxOiJuIjtzOjI2OiJmaWVsZF9zaG93X2Zvcm1hdHRpbmdfYnRucyI7czoxOiJuIjtzOjI0OiJmaWVsZF9zaG93X2ZpbGVfc2VsZWN0b3IiO3M6MToibiI7czoyMDoiZmllbGRfc2hvd193cml0ZW1vZGUiO3M6MToibiI7fQ=='),(16,1,1,'event__end_time','Event End Time','Enter the end time of the event (optional). If no end time is entered, only the start time will be displayed.','time_select','','0',0,0,6,128,'n','ltr','n','n','xhtml','n',20,'any','YTo4OntzOjEzOiJkaXNwbGF5X3N0eWxlIjtzOjQ6IjEyaHIiO3M6MTU6InRpbWVfaW5jcmVtZW50cyI7czo1OiIxNW1pbiI7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9');
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
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channel_images`
--

LOCK TABLES `exp_channel_images` WRITE;
/*!40000 ALTER TABLE `exp_channel_images` DISABLE KEYS */;
INSERT INTO `exp_channel_images` VALUES (8,1,6,3,2,1,0,0,0,0,0,1370562690,0,1,'socceraction1-2.jpg','jpg',1080828,'image/jpeg',1861,1459,'Socceraction1-2','socceraction1-2','','','','','','','','large|382|300|26901/','YTowOnt9','YTowOnt9',''),(14,1,16,4,1,1,0,0,0,0,0,1370719553,0,0,'socceraction3.jpg','jpg',754245,'image/jpeg',1714,1139,'Socceraction3','socceraction3','','','','','','','','large-slide|960|637|113739/in-content|250|165|50117/','YTowOnt9','YTowOnt9',''),(13,1,14,4,1,1,0,0,0,0,0,1370713658,0,0,'socceraction5.jpg','jpg',361386,'image/jpeg',1383,681,'Socceraction5','socceraction5','This is the caption displayed with the image','','','','','','','large-slide|960|472|75459/in-content|250|123|36117/','YTowOnt9','YTowOnt9',''),(9,1,7,3,2,1,0,0,0,0,0,1370563536,0,1,'socceraction1.jpg','jpg',1080828,'image/jpeg',1861,1459,'Socceraction1','socceraction1','','','','','','','','large|960|300|242666/','YTowOnt9','YTowOnt9',''),(12,1,12,4,1,1,0,0,0,0,0,1370705662,0,0,'socceraction1.jpg','jpg',1080828,'image/jpeg',1861,1459,'Socceraction1','socceraction1','Game On!','','','','','','','large-slide|960|752|132969/in-content|250|195|57532/','YTowOnt9','YTowOnt9',''),(15,1,17,4,1,1,0,0,0,0,0,1370911917,0,0,'socceraction3.jpg','jpg',754245,'image/jpeg',1714,1139,'Socceraction3','socceraction3','This is a caption for the image!','','','','','','','large-slide|960|637|113739/in-content|250|165|50117/','YTowOnt9','YTowOnt9','');
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
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channel_titles`
--

LOCK TABLES `exp_channel_titles` WRITE;
/*!40000 ALTER TABLE `exp_channel_titles` DISABLE KEYS */;
INSERT INTO `exp_channel_titles` VALUES (15,1,1,1,NULL,'127.0.0.1','no feature 2','no-feature-2','open','y',0,0,0,0,'n','n',1370713620,'2013','06','08',0,0,20130609164707,0,0),(14,1,1,1,NULL,'127.0.0.1','feature 2','feature-2','open','y',0,0,0,0,'n','n',1370713620,'2013','06','08',0,0,20130608190248,0,0),(13,1,1,1,NULL,'127.0.0.1','no feature 1','no-feature-1','open','y',0,0,0,0,'n','n',1370713560,'2013','06','08',0,0,20130608174712,0,0),(12,1,1,1,NULL,'127.0.0.1','test 5','test-5','open','y',0,0,0,0,'n','n',1370705580,'2013','06','08',0,0,20130608191805,0,0),(16,1,1,1,NULL,'127.0.0.1','Fields are Open!','fields-are-open','open','y',0,0,0,0,'n','n',1370719500,'2013','06','08',0,0,20130609151006,0,0),(17,1,1,1,NULL,'127.0.0.1','Post for Video Test','post-for-video-test','open','y',0,0,0,0,'n','n',1370911740,'2013','06','10',0,0,20130611005535,0,0),(18,1,1,1,NULL,'127.0.0.1','Non-Featured Content Item','non-featured-content-item','open','y',0,0,0,0,'n','n',1370911980,'2013','06','10',0,0,20130611005407,0,0),(19,1,4,1,NULL,'127.0.0.1','First Event','first-event','open','y',0,0,0,0,'n','n',1371401820,'2013','06','16',0,0,20130616170326,0,0),(20,1,4,1,NULL,'127.0.0.1','Parkland High School Soccer Game','parkland-high-school-soccer-game','open','y',0,0,0,0,'n','n',1371412560,'2013','06','16',0,0,20130616205352,0,0);
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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channels`
--

LOCK TABLES `exp_channels` WRITE;
/*!40000 ALTER TABLE `exp_channels` DISABLE KEYS */;
INSERT INTO `exp_channels` VALUES (1,1,'news','News & Announcements','//local.lcsportsfields.org/','','en',7,0,1370911980,0,'1',1,'open',1,5,'','y','y',NULL,'all','y','n','n','','','y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,'','','y','','n',10,'','',0),(3,1,'sidebar','Sidebar Item','//local.lcsportsfields.org/','','en',0,0,0,0,'',1,'open',1,5,'','y','y',NULL,'all','y','n','n','','','y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,'','','y','','n',10,'','',0),(4,1,'events','Event','//local.lcsportsfields.org/','','en',2,0,1371412560,0,'1',1,'open',1,5,'','y','y',NULL,'all','y','n','n','','','y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,'','','y','','n',10,'','',0),(5,1,'ad','Advertisement','//local.lcsportsfields.org/','','en',0,0,0,0,'',1,'open',1,5,NULL,'y','y',NULL,'all','y','n','n','','','y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,'','','y','','n',10,'','',0),(6,1,'sponsor','Sponsor','//local.lcsportsfields.org/','','en',0,0,0,0,'',1,'open',1,5,NULL,'y','y',NULL,'all','y','n','n','','','y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,'','','y','','n',10,'','',0);
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
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_cp_log`
--

LOCK TABLES `exp_cp_log` WRITE;
/*!40000 ALTER TABLE `exp_cp_log` DISABLE KEYS */;
INSERT INTO `exp_cp_log` VALUES (1,1,1,'admin-kvq','127.0.0.1',1368902763,'Logged in'),(2,1,1,'admin-kvq','127.0.0.1',1368902845,'Logged out'),(3,1,1,'admin-kvq','127.0.0.1',1368904437,'Logged in'),(4,1,1,'admin-kvq','127.0.0.1',1368913552,'Logged in'),(5,1,1,'admin-kvq','127.0.0.1',1369098184,'Logged in'),(6,1,1,'admin-kvq','127.0.0.1',1369098835,'Channel Created:&nbsp;&nbsp;Events'),(7,1,1,'admin-kvq','127.0.0.1',1370223532,'Logged in'),(8,1,1,'admin-kvq','127.0.0.1',1370223910,'Field Group Created:&nbsp;main'),(9,1,1,'admin-kvq','127.0.0.1',1370560615,'Logged in'),(10,1,1,'admin-kvq','127.0.0.1',1370560694,'Channel Created:&nbsp;&nbsp;Featured Slides'),(11,1,1,'admin-kvq','127.0.0.1',1370560738,'Field Group Created:&nbsp;featured_slides'),(12,1,1,'admin-kvq','127.0.0.1',1370561954,'Custom Field Deleted:&nbsp;Image'),(13,1,1,'admin-kvq','127.0.0.1',1370699330,'Logged in'),(14,1,1,'admin-kvq','127.0.0.1',1370699564,'Member Group Created:&nbsp;&nbsp;Content Editor'),(15,1,1,'admin-kvq','127.0.0.1',1370702498,'Custom Field Deleted:&nbsp;Images'),(16,1,1,'admin-kvq','127.0.0.1',1370702655,'Channel Deleted:&nbsp;&nbsp;Featured Slides'),(17,1,1,'admin-kvq','127.0.0.1',1370712953,'Logged in'),(18,1,1,'admin-kvq','127.0.0.1',1370712993,'Channel Created:&nbsp;&nbsp;Sidebar'),(19,1,1,'admin-kvq','127.0.0.1',1370790330,'Logged in'),(20,1,1,'admin-kvq','127.0.0.1',1370790415,'Category Group Created:&nbsp;&nbsp;default'),(21,1,1,'admin-kvq','127.0.0.1',1370796407,'Logged in'),(22,1,1,'admin-kvq','127.0.0.1',1370908373,'Logged in'),(23,1,1,'admin-kvq','127.0.0.1',1371399492,'Logged in'),(24,1,1,'admin-kvq','127.0.0.1',1371399647,'Channel Created:&nbsp;&nbsp;Events'),(25,1,1,'admin-kvq','127.0.0.1',1371410970,'Logged in'),(26,1,1,'admin-kvq','127.0.0.1',1371511259,'Logged in'),(27,1,1,'admin-kvq','127.0.0.1',1371607348,'Logged in'),(28,1,1,'admin-kvq','127.0.0.1',1371607463,'Channel Created:&nbsp;&nbsp;Advertisement'),(29,1,1,'admin-kvq','127.0.0.1',1371607496,'Channel Created:&nbsp;&nbsp;Sponsor');
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
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_developer_log`
--

LOCK TABLES `exp_developer_log` WRITE;
/*!40000 ALTER TABLE `exp_developer_log` DISABLE KEYS */;
INSERT INTO `exp_developer_log` VALUES (15,1371399676,'n',NULL,'EE_Fieldtype()',56,'C:\\xampp\\htdocs\\lcsportsfields.org\\system\\expressionengine\\third_party\\nsm_publish_hints\\ft.nsm_publish_hints.php','2.6','EE_Fieldtype::__construct()',0,NULL,NULL,NULL,NULL,NULL),(16,1371402206,'n',NULL,'do_hash()',224,'C:\\xampp\\htdocs\\lcsportsfields.org\\system\\expressionengine\\third_party\\nsm_htaccess_generator\\ext.nsm_htaccess_generator.php','2.6','PHP\'s hashing functions',0,NULL,NULL,NULL,NULL,NULL),(17,1371402233,'n',NULL,'remove_double_slashes()',137,'C:\\xampp\\htdocs\\lcsportsfields.org\\system\\expressionengine\\third_party\\channel_images\\locations\\local\\local.php','2.6','reduce_double_slashes()',10,'.slider','home','Channel','entries',NULL),(18,1371511305,'n',NULL,'generate_json()',421,'C:\\xampp\\htdocs\\lcsportsfields.org\\system\\expressionengine\\third_party\\nsm_htaccess_generator\\ext.nsm_htaccess_generator.php','2.6','the native JSON extension (json_encode())',0,NULL,NULL,NULL,NULL,NULL),(19,1371511309,'n',NULL,'generate_json()',684,'C:\\xampp\\htdocs\\lcsportsfields.org\\system\\expressionengine\\third_party\\nsm_htaccess_generator\\ext.nsm_htaccess_generator.php','2.6','the native JSON extension (json_encode())',0,NULL,NULL,NULL,NULL,NULL),(20,1371511309,'n',NULL,'generate_json()',797,'C:\\xampp\\htdocs\\lcsportsfields.org\\system\\codeigniter\\system\\libraries\\Javascript.php','2.6','the native JSON extension (json_encode())',0,NULL,NULL,NULL,NULL,NULL),(21,1371511309,'n',NULL,'generate_json()',801,'C:\\xampp\\htdocs\\lcsportsfields.org\\system\\codeigniter\\system\\libraries\\Javascript.php','2.6','the native JSON extension (json_encode())',0,NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_field_formatting`
--

LOCK TABLES `exp_field_formatting` WRITE;
/*!40000 ALTER TABLE `exp_field_formatting` DISABLE KEYS */;
INSERT INTO `exp_field_formatting` VALUES (15,5,'xhtml'),(14,5,'br'),(13,5,'none'),(9,3,'xhtml'),(8,3,'br'),(7,3,'none'),(10,4,'none'),(11,4,'br'),(12,4,'xhtml'),(16,6,'none'),(17,6,'br'),(18,6,'xhtml'),(19,7,'none'),(20,7,'br'),(21,7,'xhtml'),(22,8,'none'),(23,8,'br'),(24,8,'xhtml'),(25,9,'none'),(26,9,'br'),(27,9,'xhtml'),(28,10,'none'),(29,10,'br'),(30,10,'xhtml'),(31,11,'none'),(32,11,'br'),(33,11,'xhtml'),(34,12,'none'),(35,12,'br'),(36,12,'xhtml'),(37,13,'none'),(38,13,'br'),(39,13,'xhtml'),(40,14,'none'),(41,14,'br'),(42,14,'xhtml'),(43,15,'none'),(44,15,'br'),(45,15,'xhtml'),(46,16,'none'),(47,16,'br'),(48,16,'xhtml');
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
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_fieldtypes`
--

LOCK TABLES `exp_fieldtypes` WRITE;
/*!40000 ALTER TABLE `exp_fieldtypes` DISABLE KEYS */;
INSERT INTO `exp_fieldtypes` VALUES (1,'select','1.0','YTowOnt9','n'),(2,'text','1.0','YTowOnt9','n'),(3,'textarea','1.0','YTowOnt9','n'),(4,'date','1.0','YTowOnt9','n'),(5,'file','1.0','YTowOnt9','n'),(6,'multi_select','1.0','YTowOnt9','n'),(7,'checkboxes','1.0','YTowOnt9','n'),(8,'radio','1.0','YTowOnt9','n'),(9,'relationship','1.0','YTowOnt9','n'),(10,'rte','1.0','YTowOnt9','n'),(11,'channel_images','5.4.4','YTowOnt9','n'),(12,'wygwam','2.7.1','YTowOnt9','y'),(13,'matrix','2.5.5','YTowOnt9','y'),(14,'fieldpack_checkboxes','2.0.2','YTowOnt9','n'),(15,'fieldpack_dropdown','2.0.2','YTowOnt9','n'),(16,'fieldpack_list','2.0.2','YTowOnt9','n'),(17,'fieldpack_multiselect','2.0.2','YTowOnt9','n'),(18,'fieldpack_pill','2.0.2','YTowOnt9','n'),(19,'fieldpack_radio_buttons','2.0.2','YTowOnt9','n'),(20,'fieldpack_switch','2.0.2','YTowOnt9','n'),(21,'nsm_publish_hints','1.0.1','YTowOnt9','y'),(22,'time_select','1.0.8','YTowOnt9','n'),(23,'vz_address','1.3.5','YTowOnt9','n');
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_file_dimensions`
--

LOCK TABLES `exp_file_dimensions` WRITE;
/*!40000 ALTER TABLE `exp_file_dimensions` DISABLE KEYS */;
INSERT INTO `exp_file_dimensions` VALUES (2,1,3,'resized_150w','resized_150w','constrain',150,0,0);
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_files`
--

LOCK TABLES `exp_files` WRITE;
/*!40000 ALTER TABLE `exp_files` DISABLE KEYS */;
INSERT INTO `exp_files` VALUES (1,1,'SoccerAction5.jpg',3,'C:/xampp/htdocs/lcsportsfields.org/www/uploads/images/logos/SoccerAction5.jpg','image/jpeg','SoccerAction5.jpg',361390,NULL,NULL,NULL,1,1371415283,1,1371415283,'681 1383'),(2,1,'SoccerAction1.jpg',3,'C:/xampp/htdocs/lcsportsfields.org/www/uploads/images/logos/SoccerAction1.jpg','image/jpeg','SoccerAction1.jpg',1080832,NULL,NULL,NULL,1,1371415369,1,1371415369,'1459 1861'),(3,1,'SoccerAction2.jpg',3,'C:/xampp/htdocs/lcsportsfields.org/www/uploads/images/logos/SoccerAction2.jpg','image/jpeg','SoccerAction2.jpg',1871974,NULL,NULL,NULL,1,1371415451,1,1371415451,'1999 2897'),(4,1,'logo.gif',3,'C:/xampp/htdocs/lcsportsfields.org/www/uploads/images/logos/logo.gif','image/gif','logo.gif',4434,NULL,NULL,NULL,1,1371415903,1,1371415903,'71 129'),(5,1,'lcsfa-logo.png',3,'C:/xampp/htdocs/lcsportsfields.org/www/uploads/images/logos/lcsfa-logo.png','image/png','lcsfa-logo.png',23491,NULL,NULL,NULL,1,1371416026,1,1371416026,'248 204');
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
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_layout_publish`
--

LOCK TABLES `exp_layout_publish` WRITE;
/*!40000 ALTER TABLE `exp_layout_publish` DISABLE KEYS */;
INSERT INTO `exp_layout_publish` VALUES (6,1,1,3,'a:5:{s:7:\"publish\";a:16:{s:10:\"_tab_label\";s:7:\"Publish\";s:5:\"title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"50%\";}s:9:\"url_title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"50%\";}i:4;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:5;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:6;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:7;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:8;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:9;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:10;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:11;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:12;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:13;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:14;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:15;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:16;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}}s:4:\"date\";a:3:{s:10:\"_tab_label\";s:4:\"Date\";s:10:\"entry_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:15:\"expiration_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:10:\"categories\";a:2:{s:10:\"_tab_label\";s:10:\"Categories\";s:8:\"category\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:7:\"options\";a:6:{s:10:\"_tab_label\";s:7:\"Options\";s:11:\"new_channel\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"status\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"author\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:7:\"options\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:4:\"ping\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:5:\"pages\";a:3:{s:10:\"_tab_label\";s:5:\"Pages\";s:16:\"pages__pages_uri\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:24:\"pages__pages_template_id\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}}'),(7,1,6,3,'a:5:{s:7:\"publish\";a:16:{s:10:\"_tab_label\";s:7:\"Publish\";s:5:\"title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"50%\";}s:9:\"url_title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"50%\";}i:4;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:5;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:6;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:7;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:8;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:9;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:10;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:11;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:12;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:13;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:14;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:15;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:16;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}}s:4:\"date\";a:3:{s:10:\"_tab_label\";s:4:\"Date\";s:10:\"entry_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:15:\"expiration_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:10:\"categories\";a:2:{s:10:\"_tab_label\";s:10:\"Categories\";s:8:\"category\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:7:\"options\";a:6:{s:10:\"_tab_label\";s:7:\"Options\";s:11:\"new_channel\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"status\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"author\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:7:\"options\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:4:\"ping\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:5:\"pages\";a:3:{s:10:\"_tab_label\";s:5:\"Pages\";s:16:\"pages__pages_uri\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:24:\"pages__pages_template_id\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}}'),(14,1,1,1,'a:4:{s:7:\"publish\";a:17:{s:10:\"_tab_label\";s:7:\"Publish\";s:5:\"title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"50%\";}s:9:\"url_title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"50%\";}i:6;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"50%\";}i:7;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"50%\";}i:8;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:4;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:8:\"category\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:5;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:9;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:10;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:11;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:12;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:13;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:14;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:15;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:16;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}}s:4:\"date\";a:3:{s:10:\"_tab_label\";s:4:\"Date\";s:10:\"entry_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:15:\"expiration_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:7:\"options\";a:6:{s:10:\"_tab_label\";s:7:\"Options\";s:11:\"new_channel\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"status\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"author\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:7:\"options\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:4:\"ping\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:5:\"pages\";a:3:{s:10:\"_tab_label\";s:5:\"Pages\";s:16:\"pages__pages_uri\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:24:\"pages__pages_template_id\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}}'),(15,1,6,1,'a:4:{s:7:\"publish\";a:17:{s:10:\"_tab_label\";s:7:\"Publish\";s:5:\"title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"50%\";}s:9:\"url_title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"50%\";}i:6;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"50%\";}i:7;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"50%\";}i:8;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:4;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:8:\"category\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:5;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:9;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:10;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:11;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:12;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:13;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:14;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:15;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:16;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}}s:4:\"date\";a:3:{s:10:\"_tab_label\";s:4:\"Date\";s:10:\"entry_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:15:\"expiration_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:7:\"options\";a:6:{s:10:\"_tab_label\";s:7:\"Options\";s:11:\"new_channel\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"status\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"author\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:7:\"options\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:4:\"ping\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:5:\"pages\";a:3:{s:10:\"_tab_label\";s:5:\"Pages\";s:16:\"pages__pages_uri\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:24:\"pages__pages_template_id\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}}'),(22,1,1,5,'a:4:{s:7:\"publish\";a:17:{s:10:\"_tab_label\";s:7:\"Publish\";s:5:\"title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"50%\";}s:9:\"url_title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"50%\";}i:6;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"50%\";}i:7;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"50%\";}i:8;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:4;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:8:\"category\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:5;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:9;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:10;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:11;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:12;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:13;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:14;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:15;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:16;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}}s:4:\"date\";a:3:{s:10:\"_tab_label\";s:4:\"Date\";s:10:\"entry_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:15:\"expiration_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:7:\"options\";a:6:{s:10:\"_tab_label\";s:7:\"Options\";s:11:\"new_channel\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"status\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"author\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:7:\"options\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:4:\"ping\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:5:\"pages\";a:3:{s:10:\"_tab_label\";s:5:\"Pages\";s:16:\"pages__pages_uri\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:24:\"pages__pages_template_id\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}}'),(20,1,1,4,'a:4:{s:7:\"publish\";a:17:{s:10:\"_tab_label\";s:7:\"Publish\";s:5:\"title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"50%\";}s:9:\"url_title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"50%\";}i:6;a:4:{s:7:\"visible\";b:0;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"60%\";}i:7;a:4:{s:7:\"visible\";b:0;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"60%\";}i:8;a:4:{s:7:\"visible\";b:0;s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:4;a:4:{s:7:\"visible\";b:0;s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:8:\"category\";a:4:{s:7:\"visible\";b:0;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:12;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:5;a:4:{s:7:\"visible\";b:0;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:9;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:10;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"40%\";}i:16;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"30%\";}i:11;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"30%\";}i:14;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:13;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:15;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:4:\"date\";a:3:{s:10:\"_tab_label\";s:4:\"Date\";s:10:\"entry_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:15:\"expiration_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:7:\"options\";a:6:{s:10:\"_tab_label\";s:7:\"Options\";s:11:\"new_channel\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"status\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"author\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:7:\"options\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:4:\"ping\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:5:\"pages\";a:3:{s:10:\"_tab_label\";s:5:\"Pages\";s:16:\"pages__pages_uri\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:24:\"pages__pages_template_id\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}}'),(21,1,6,4,'a:4:{s:7:\"publish\";a:17:{s:10:\"_tab_label\";s:7:\"Publish\";s:5:\"title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"50%\";}s:9:\"url_title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"50%\";}i:6;a:4:{s:7:\"visible\";b:0;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"60%\";}i:7;a:4:{s:7:\"visible\";b:0;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"60%\";}i:8;a:4:{s:7:\"visible\";b:0;s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:4;a:4:{s:7:\"visible\";b:0;s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:8:\"category\";a:4:{s:7:\"visible\";b:0;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:12;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:5;a:4:{s:7:\"visible\";b:0;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:9;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:10;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"40%\";}i:16;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"30%\";}i:11;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"30%\";}i:14;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:13;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:15;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:4:\"date\";a:3:{s:10:\"_tab_label\";s:4:\"Date\";s:10:\"entry_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:15:\"expiration_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:7:\"options\";a:6:{s:10:\"_tab_label\";s:7:\"Options\";s:11:\"new_channel\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"status\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"author\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:7:\"options\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:4:\"ping\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:5:\"pages\";a:3:{s:10:\"_tab_label\";s:5:\"Pages\";s:16:\"pages__pages_uri\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:24:\"pages__pages_template_id\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}}'),(23,1,6,5,'a:4:{s:7:\"publish\";a:17:{s:10:\"_tab_label\";s:7:\"Publish\";s:5:\"title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"50%\";}s:9:\"url_title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"50%\";}i:6;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"50%\";}i:7;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"50%\";}i:8;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:4;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:8:\"category\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:5;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:9;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:10;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:11;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:12;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:13;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:14;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:15;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:16;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}}s:4:\"date\";a:3:{s:10:\"_tab_label\";s:4:\"Date\";s:10:\"entry_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:15:\"expiration_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:7:\"options\";a:6:{s:10:\"_tab_label\";s:7:\"Options\";s:11:\"new_channel\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"status\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"author\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:7:\"options\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:4:\"ping\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:5:\"pages\";a:3:{s:10:\"_tab_label\";s:5:\"Pages\";s:16:\"pages__pages_uri\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:24:\"pages__pages_template_id\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}}'),(24,1,1,6,'a:4:{s:7:\"publish\";a:17:{s:10:\"_tab_label\";s:7:\"Publish\";s:5:\"title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"50%\";}s:9:\"url_title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"50%\";}i:6;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"50%\";}i:7;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"50%\";}i:8;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:4;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:8:\"category\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:5;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:9;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:10;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:11;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:12;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:13;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:14;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:15;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:16;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}}s:4:\"date\";a:3:{s:10:\"_tab_label\";s:4:\"Date\";s:10:\"entry_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:15:\"expiration_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:7:\"options\";a:6:{s:10:\"_tab_label\";s:7:\"Options\";s:11:\"new_channel\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"status\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"author\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:7:\"options\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:4:\"ping\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:5:\"pages\";a:3:{s:10:\"_tab_label\";s:5:\"Pages\";s:16:\"pages__pages_uri\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:24:\"pages__pages_template_id\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}}'),(25,1,6,6,'a:4:{s:7:\"publish\";a:17:{s:10:\"_tab_label\";s:7:\"Publish\";s:5:\"title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"50%\";}s:9:\"url_title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"50%\";}i:6;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"50%\";}i:7;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:3:\"50%\";}i:8;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:4;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:8:\"category\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:5;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:9;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:10;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:11;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:12;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:13;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:14;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:15;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}i:16;a:4:{s:7:\"visible\";s:4:\"true\";s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:0;s:5:\"width\";s:4:\"100%\";}}s:4:\"date\";a:3:{s:10:\"_tab_label\";s:4:\"Date\";s:10:\"entry_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:15:\"expiration_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:7:\"options\";a:6:{s:10:\"_tab_label\";s:7:\"Options\";s:11:\"new_channel\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"status\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"author\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:7:\"options\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:4:\"ping\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:5:\"pages\";a:3:{s:10:\"_tab_label\";s:5:\"Pages\";s:16:\"pages__pages_uri\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:24:\"pages__pages_template_id\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}}');
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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_matrix_cols`
--

LOCK TABLES `exp_matrix_cols` WRITE;
/*!40000 ALTER TABLE `exp_matrix_cols` DISABLE KEYS */;
INSERT INTO `exp_matrix_cols` VALUES (1,1,13,NULL,'sponsor_name','Sponsor Name (optional)','Enter the name of the sponsor ','text','n','y',0,'33%','YTozOntzOjQ6Im1heGwiO3M6MDoiIjtzOjM6ImZtdCI7czo0OiJub25lIjtzOjM6ImRpciI7czozOiJsdHIiO30='),(2,1,13,NULL,'sponsor_website','Sponsor Website (optional)','(eg. http://www...)','text','n','y',1,'','YTozOntzOjQ6Im1heGwiO3M6MDoiIjtzOjM6ImZtdCI7czo0OiJub25lIjtzOjM6ImRpciI7czozOiJsdHIiO30='),(3,1,14,NULL,'location_name','Location Name','','text','n','y',0,'33%','YTozOntzOjQ6Im1heGwiO3M6MDoiIjtzOjM6ImZtdCI7czo0OiJub25lIjtzOjM6ImRpciI7czozOiJsdHIiO30='),(4,1,14,NULL,'location_address','Location Address','Enter the full address','vz_address','n','y',1,'','YTowOnt9'),(5,1,14,NULL,'location_website','Location Website (optional)','(eg. http://www...)','text','n','n',2,'','YTozOntzOjQ6Im1heGwiO3M6MDoiIjtzOjM6ImZtdCI7czo0OiJub25lIjtzOjM6ImRpciI7czozOiJsdHIiO30='),(6,1,13,NULL,'sponsor_image','Sponsor Image or Logo','Upload an image or logo','file','n','n',2,'','YToyOntzOjk6ImRpcmVjdG9yeSI7czoxOiIzIjtzOjEyOiJjb250ZW50X3R5cGUiO3M6NToiaW1hZ2UiO30=');
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
  `col_id_1` text,
  `col_id_2` text,
  `col_id_3` text,
  `col_id_4` text,
  `col_id_5` text,
  `col_id_6` text,
  PRIMARY KEY (`row_id`),
  KEY `site_id` (`site_id`),
  KEY `entry_id` (`entry_id`),
  KEY `field_id` (`field_id`),
  KEY `var_id` (`var_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_matrix_data`
--

LOCK TABLES `exp_matrix_data` WRITE;
/*!40000 ALTER TABLE `exp_matrix_data` DISABLE KEYS */;
INSERT INTO `exp_matrix_data` VALUES (1,1,19,13,NULL,0,1,'sponsor 1','http://www.website.com',NULL,NULL,NULL,NULL),(2,1,19,14,NULL,0,1,NULL,NULL,'Lehigh Sports Fields','​123 Address\n\n\n\n','http://www.nowhere.com',NULL),(3,1,20,14,NULL,0,1,NULL,NULL,'LC Sports Fields (Field 2)','{\"street\":\"123 Street\",\"street_2\":\"\",\"city\":\"Allentown\",\"region\":\"PA\",\"postal_code\":\"18104\",\"country\":\"US\"}','http://www.lcsportsfields.org',NULL),(4,1,20,13,NULL,0,1,'LCSFA','http://www.lcsportsfields.org',NULL,NULL,NULL,'{filedir_3}lcsfa-logo.png'),(5,1,20,13,NULL,0,2,'PPL Electric Utilities','http://www.pplelectric.com',NULL,NULL,NULL,'{filedir_3}logo.gif');
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
INSERT INTO `exp_members` VALUES (1,1,'admin-kvq','admin-kvq','a2a244fdc1dde944c96fb6d893f07f3512811e892c6556356d676458a0881e2d3a05e33c1e6317d629e3373837da9cc791567e539d1ffbdffd7353b620a12108','\"?NKA_d#c~RZ0F%}GAL+l*=8YjGLxu#{MKIw:yxg^}-t\\cv2c03zC-nHBfF%mp|exWu*?a4|ib$zGP/P\'X}fqfJQu%q_`\"I%xe(cX/VVQ?4t]6z:.4.-[TUKtfht~+gt','b341dfd17c49ab5210fa2bee66cba3867c39691e','502c9f26e7c1ee4dcd03f17146bcce609f571230',NULL,'sean@gravener.net',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'127.0.0.1',1368900952,1371511260,1371607349,9,0,0,0,1371412800,0,0,0,'n','y','y','y','y','y','y','y','y','english','America/New_York','n','us',NULL,NULL,NULL,NULL,'28',NULL,'18','','Group:&nbsp;main|C=admin_content&M=field_management&group_id=1|1','n',0,'y',0);
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
INSERT INTO `exp_nsm_addon_settings` VALUES (1,1,'nsm_htaccess_generator','{\"enabled\":\"1\",\"path\":[\"C:\\\\xampp\\\\htdocs\\\\lcsportsfields.org\\\\www\\/.htaccess\"],\"template\":\"# For more awesome .htaccess rules and optimisations\\n# checkout the HTML5 Boilerplate .htaccess files\\n# https:\\/\\/github.com\\/paulirish\\/html5-boilerplate\\/blob\\/master\\/.htaccess\\n\\n# Although highly unlikely, your host may have +FollowSymLinks enabled at the root level,\\n# yet disallow its addition in .htaccess; in which case, \\n# adding +FollowSymLinks will break your setup (probably a 500 error), \\n# so just remove it, and your rules should work fine.\\nOptions +FollowSymlinks\\n\\n# EE 404 page for missing pages\\nErrorDocument 404 \\/index.php\\/{ee:404}\\n\\n# Simple 404 for missing files\\n<FilesMatch \\\"(\\\\.jpe?g|gif|png|bmp|css|js|flv)$\\\">\\n  ErrorDocument 404 \\\"File Not Found\\\"\\n<\\/FilesMatch>\\n\\n# Rewriting will likely already be on, uncomment if it isnt\\n# <IfModule mod_rewrite.c>\\n# RewriteEngine On\\n# RewriteBase \\/\\n# <\\/IfModule>\\n\\n# Block access to \\\"hidden\\\" directories whose names begin with a period. This\\n# includes directories used by version control systems such as Subversion or Git.\\n<IfModule mod_rewrite.c>\\n  RewriteRule \\\"(^|\\/)\\\\.\\\" - [F]\\n<\\/IfModule>\\n\\n# remove the www - Uncomment to activate\\n# <IfModule mod_rewrite.c>\\n#  RewriteCond %{HTTPS} !=on\\n#  RewriteCond %{HTTP_HOST} ^www\\\\.(.+)$ [NC]\\n#  RewriteRule ^(.*)$ http:\\/\\/%1\\/$1 [R=301,L]\\n# <\\/IfModule>\\n\\n# Remove the trailing slash to paths without an extension\\n# Uncomment to activate\\n# <IfModule mod_rewrite.c>\\n#   RewriteRule ^(.*)\\/$ \\/$1 [R=301,L]\\n# <\\/IfModule>\\n\\n# Remove index.php\\n# Uses the \\\"include method\\\"\\n# http:\\/\\/expressionengine.com\\/wiki\\/Remove_index.php_From_URLs\\/#Include_List_Method\\n# <IfModule mod_rewrite.c>\\nRewriteCond %{QUERY_STRING} !^(ACT=.*)$ [NC]\\nRewriteCond %{REQUEST_URI} !(\\\\.[a-zA-Z0-9]{1,5})$\\nRewriteCond %{REQUEST_FILENAME} !-f\\nRewriteCond %{REQUEST_FILENAME} !-d\\nRewriteCond %{REQUEST_URI} ^\\/({ee:template_groups}{ee:pages}members|P[0-9]{2,8}) [NC]\\nRewriteRule (.*) \\/index.php\\/$1 [L]\"}');
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
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_revision_tracker`
--

LOCK TABLES `exp_revision_tracker` WRITE;
/*!40000 ALTER TABLE `exp_revision_tracker` DISABLE KEYS */;
INSERT INTO `exp_revision_tracker` VALUES (2,11,'exp_templates','template_data',1370797058,1,'<section class=\"page__main-content  content--alt-row\">\r\n\r\n <div class=\"container  content-box\">\r\n\r\n<header class=\"page__title  content--full-width  page--use-divider\">\r\n  <h1>Announcements & other cool stuff</h1>\r\n</header>\r\n    \r\n    <div class=\"grid\">\r\n\r\n      <div class=\"grid__item  one-whole\">\r\n        <div class=\"content__item  content--full-width\">\r\n\r\n          <div class=\"grid__item  one-third  palm-one-whole  text-center\">\r\n              <h3>About the LCSFA</h3>\r\n              Get directions to the fields.\r\n              <a href=\"\" title=\"\">image</a>\r\n          </div><!--\r\n\r\n        --><div class=\"grid__item  one-third  palm-one-whole  text-center\">\r\n              <h3>Get Directions</h3>\r\n              Get directions to the fields.\r\n              <a href=\"\" title=\"\">image</a>\r\n          </div><!--\r\n\r\n       --><div class=\"grid__item  one-third  palm-one-whole  text-center\">\r\n             <h3>Schedule Field Time</h3>\r\n              <a href=\"\" title=\"\">image</a>\r\n          </div><!--\r\n\r\n    --></div>\r\n    </div><!--\r\n     \r\n  --><div class=\"grid__item  two-thirds  palm-one-whole\">\r\n        <div class=\"content__item  content--no-bg\">\r\n          \r\n          <article class=\"article__summary  summary--announce\">\r\n            \r\n              <span class=\"article__type\">Announcement</span>\r\n              <h1 class=\"article__title\">LCSFA has a New Website!</h1>\r\n           \r\n            <span class=\"article__pub-date\">\r\n              <span>Published on May 5th, 2013</span>\r\n            </span>\r\n            \r\n            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n            \r\n\r\n            <footer class=\"article__footer cf\">\r\n            \r\n              <div class=\"float-left\">\r\n                <a href=\"\" title=\"\">See all announcements</a>\r\n              </div><div class=\"float-right\">\r\n                <a href=\"\" title=\"\">Continue Reading ... </a>\r\n              </div>\r\n            \r\n            </footer>\r\n          </article>\r\n\r\n          <article class=\"article__summary  summary--event\">\r\n            \r\n              <span class=\"article__type\">Event</span>\r\n              <h1 class=\"article__title\">LCSFA has a New Website!</h1>\r\n           \r\n            <span class=\"article__pub-date\">\r\n              <span>Published on May 5th, 2013</span>\r\n            </span>\r\n            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n             <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n            \r\n\r\n            <footer class=\"article__footer cf\">\r\n              <div class=\"float-left\">\r\n                <a href=\"\" title=\"\">See all announcements</a>\r\n              </div>\r\n              <div class=\"float-right\">\r\n                <a href=\"\" title=\"\">Continue Reading ... </a>\r\n              </div>\r\n            </footer>\r\n\r\n          </article>\r\n\r\n        </div>\r\n      </div><!-- \r\n\r\n   --><div class=\"grid__item  one-third  palm-one-whole\">\r\n        <div class=\"content__item  content--banner-title\">\r\n          <h3>Field Schedule</h3>\r\n          Field Status: all open\r\n        </div>\r\n\r\n        <div class=\"content__item  content--banner-title\">\r\n          <h3>Field Schedule</h3>\r\n          <p>Field Status: all open</p>\r\n        </div>\r\n\r\n        <div class=\"content__item\">\r\n          \r\n      <iframe src=\"https://www.google.com/calendar/embed?showTitle=0&amp;showNav=0&amp;showDate=0&amp;showPrint=0&amp;showTabs=0&amp;showCalendars=0&amp;showTz=0&amp;mode=AGENDA&amp;height=300&amp;wkst=1&amp;bgcolor=%23ffffff&amp;src=lcsfasoccer%40gmail.com&amp;color=%23875509&amp;ctz=America%2FNew_York\" style=\" border-width:0 \" width=\"250\" height=\"300\" frameborder=\"0\" scrolling=\"no\"></iframe>\r\n\r\n        </div>\r\n      </div><!--\r\n\r\n   --><div class=\"grid__item  one-whole\">\r\n        <div class=\"content__item\">\r\n          content2\r\n        </div>\r\n      </div>\r\n\r\n    </div>\r\n  </div>\r\n</section>'),(3,12,'exp_templates','template_data',1370797058,1,'{exp:channel:entries channel=\"{embed:channel}\" limit=\"2\" category=\"{embed:category}\" paginate=\"bottom\" {global:param_disable_default}}\r\n{if featured_slide_on != \"y\"}\r\n<div class=\"content__column\">\r\n  <div class=\"content__item  content--has-article-type\">\r\n    \r\n    <article class=\"article__summary \">     \r\n      <span class=\"article__type\">Announcement</span>\r\n      \r\n      <a href=\"{path=SITE_INDEX}{channel_short_name}/{url_title}/{entry_id}\" title=\"Click to read: {title}\">\r\n        <h2 class=\"article__title\">{title}</h2>\r\n      </a>\r\n      <span class=\"article__pub-date\">\r\n        <span>Published on {entry_date format=\"%F %j%S, %Y\"}</span>\r\n      </span>\r\n     \r\n      {main_content_body}\r\n\r\n      <footer class=\"article__footer cf\">\r\n      \r\n        <div class=\"float-left\">\r\n          <a href=\"\" title=\"\">See all announcements</a>\r\n        </div><div class=\"float-right\">\r\n          <a href=\"\" title=\"\">Continue Reading ... </a>\r\n        </div>\r\n      \r\n      </footer>\r\n    </article>\r\n\r\n  </div>\r\n</div>\r\n{/if}\r\n\r\n{paginate}{pagination_links}\r\n<div class=\"content__column\">\r\n  <ol class=\"nav pagination\">\r\n      {first_page}<li class=\"pagination__first\"><a href=\"{pagination_url}\">First</a></li>{/first_page}<!--\r\n   -->{previous_page}<li class=\"pagination__prev\"><a href=\"{pagination_url}\">Previous</a></li>{/previous_page}<!--\r\n   -->{page}<li{if current_page} class=\"current\"{/if}><a href=\"{pagination_url}\">{pagination_page_number}</a></li>{/page}<!--\r\n   -->{next_page}<li class=\"pagination__next\"><a href=\"{pagination_url}\">Next</a></li>{/next_page}<!--\r\n   -->{last_page}<li class=\"pagination__last\"><a href=\"{pagination_url}\">Last</a></li>{/last_page}\r\n  </ol>\r\n</div>\r\n{/pagination_links}{/paginate}\r\n\r\n{/exp:channel:entries}\r\n\r\n{!-- \r\n\r\n<div class=\"content__column content--pop-it\">\r\n  <div class=\"content__item\">\r\n    <article class=\"article__summary \">\r\n    \r\n      \r\n      {exp:channel:entries}\r\n\r\n      title: {title}\r\n      {use_as_featured}\r\n      {image:url}\r\n      {/use_as_featured}\r\n      {/exp:channel:entries}\r\n\r\n      <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n      \r\n\r\n      <footer class=\"article__footer cf\">\r\n      \r\n        <div class=\"float-left\">\r\n          <a href=\"\" title=\"\">See all announcements</a>\r\n        </div><div class=\"float-right\">\r\n          <a href=\"\" title=\"\">Continue Reading ... </a>\r\n        </div>\r\n      \r\n      </footer>\r\n    </article>\r\n  </div>\r\n</div>\r\n\r\n<div class=\"content__column\">\r\n<div class=\"content__item  content--no-bg\">\r\n  <article class=\"article__summary  summary--paper-layers  summary--announce\">\r\n    \r\n    <span class=\"article__type\">Announcement</span>\r\n    <h1 class=\"article__title\">LCSFA has a New Website!</h1>\r\n   \r\n    <span class=\"article__pub-date\">\r\n      <span>Published on May 5th, 2013</span>\r\n    </span>\r\n    \r\n    {exp:channel:entries}\r\n\r\n    title: {title}\r\n    {use_as_featured}\r\n    {image:url}\r\n    {/use_as_featured}\r\n    {/exp:channel:entries}\r\n\r\n    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n    \r\n\r\n    <footer class=\"article__footer cf\">\r\n    \r\n      <div class=\"float-left\">\r\n        <a href=\"\" title=\"\">See all announcements</a>\r\n      </div><div class=\"float-right\">\r\n        <a href=\"\" title=\"\">Continue Reading ... </a>\r\n      </div>\r\n    \r\n    </footer>\r\n  </article>\r\n</div>\r\n</div>\r\n\r\n--}'),(4,10,'exp_templates','template_data',1370797058,1,'<section class=\"flex-container\">\r\n  <div class=\"flexslider  page--use-divider\">\r\n    <ul class=\"slides\">\r\n      {exp:channel:entries channel=\"news\" {global:param_disable_default} }\r\n      {if featured_slide_on}\r\n      {featured_slide limit=\"1\"}\r\n       <li>\r\n        <a href=\"{path=SITE_INDEX}{channel_short_name}/{url_title}/{entry_id}\" title=\"Click to read: {title}\">\r\n          <img src=\"{image:url}\" />\r\n        \r\n        <article class=\"flex-caption  {caption_location}\">\r\n          <h2 class=\"flex-caption-title\">{title}</h2>\r\n          {if image:description}<div class=\"flex-caption-body\">\r\n            {image:description}\r\n          </div>{/if}\r\n        </article>\r\n        </a>\r\n      </li>\r\n      {/featured_slide}\r\n      {/if}\r\n      {/exp:channel:entries}\r\n    </ul>\r\n  </div>\r\n</section>'),(5,2,'exp_templates','template_data',1370797058,1,'{embed=\"_layouts/.page_constructor\"\r\n	target=\"home/.index\"\r\n	page_title=\"\"\r\n	sidebar=\"_sidebar/.default\"\r\n	main_span=\"two-thirds  palm-one-whole\" \r\n	sidebar_span=\"one-third  palm-one-whole\"\r\n	body_class=\"default\"\r\n\r\n	channel=\"news\"\r\n	category=\"\"\r\n	limit=\"4\"\r\n}'),(6,3,'exp_templates','template_data',1370797058,1,'  Copyright &copy; {current_time format=\"%Y\"}\r\n\r\n  \"I heart websites!\" >> show:  This website is powered by Expression Engine. The <a href=\"https://github.com/seangravener/lcsportsfields.org/tree/master/www/themes/site_themes/a\">theme</a> and <a href=\"https://github.com/seangravener/lcsportsfields.org/tree/master/system/ee-templates/default_site\">templates for this website</a> are avialable for free.\r\n\r\n  <script src=\"//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js\"></script>\r\n  <script>window.jQuery || document.write(\'<script src=\"{global:theme_url}/js/vendor/jquery-1.10.0.min.js\"><\\/script>\')</script>\r\n  \r\n  <!-- plugins -->\r\n  <script src=\"{global:theme_url}/js/plugins/jquery.flexslider.min.js\"></script>\r\n\r\n  <script src=\"{global:theme_url}/js/plugins.js\"></script>\r\n  <script src=\"{global:theme_url}/js/main.js\"></script>\r\n  <!-- end scripts-->\r\n\r\n  <script>\r\n    // $(document).ready(function() {\r\n    //  $(\'#fitvids\').fitVids();\r\n    // });\r\n  </script>\r\n\r\n  <!-- GA, hombre\' -->\r\n  <script>\r\n    (function(i,s,o,g,r,a,m){i[\'GoogleAnalyticsObject\']=r;i[r]=i[r]||function(){\r\n    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\r\n    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\r\n    })(window,document,\'script\',\'//www.google-analytics.com/analytics.js\',\'ga\');\r\n\r\n    ga(\'create\', \'{global:google_analytics_key}\', \'lcsportsfields.org\');\r\n    ga(\'send\', \'pageview\');\r\n  </script>\r\n\r\n</body>\r\n</html>'),(7,4,'exp_templates','template_data',1370797058,1,'<!doctype html>\r\n\r\n<!--\r\n                       _,aaadP\"\"\"\"\"\"Ybaaaa,,_ \r\n                   ,adP,__,,,aaaadP\"\"\"\"\"Y888888a,_ \r\n                ,a8888888P\"\'\'             \"Y8888888b, \r\n             _a888888888\"                   `Y88888888b, \r\n           ,d888888888P\'                       \"888888888b, \r\n         ,88888888P\"Y8,                       ,P\'   `\"\"Y888b, \r\n       ,d8888P\"\'     \"Ya,                    ,P\'         `Ya`b, \r\n      ,P88\"\'           `Ya,                 ,P\'            `b`Yi \r\n     d\",P                `\"Y,              ,P\'              `Y \"i \r\n   ,P\' P\'                   \"888888888888888b                `b \"i \r\n  ,P\' d\'                    d8888888888888888b                `b `b \r\n  d\' d\'                    ,888888888888888888b                I, Y, \r\n ,f ,f                    ,88888888888888888888b               `b, b \r\n d\' d\'                    d888888888888888888888b              ,88,I \r\n,P  8                    ,88888888888888888888888b,_          ,d8888 \r\nd\'  8,                   d8888888888888888888888P\'`\"Ya,_     ,d88888 \r\n8  d88b,             ,adP\"\"Y888888888888888888P\'      `\"\"Ya, d88888P \r\n8 ,88888b,       ,adP\"\'     `\"Y8888888888888\"\'             `\"888888I \r\nY,88888888b, ,adP\"\'             \"\"Y888888P\"                  888888\' \r\n`888888888888P\'                     \"\"YP\"                    888888 \r\n I88888888888                          8                     88888I \r\n `Y8888888888                          8                     88888\' \r\n  `Y888888888        Lehigh County     8                     8888I \r\n   `Y88888888        Sports Fields     8                     8P\"8\' \r\n    `Y8888888,                         8                   ,d\',d\' \r\n     `b\"\"\"\"Y8b                         8                 ,d\" ,d\' \r\n       \"b,   \"Y,                       8               ,P\" ,d\" \r\n         \"b,   \"Ya,_                 ,d88ba,,___   _,aP\" ,P\" \r\n           \"Ya_   \"\"Ya,_       _,,ad88888888888888P\"\' _,d\" \r\n             `\"Ya_    \"\"Yaaad88888888888888888888P _,d\"\' \r\n                 `\"Ya,_     \"Y888888888888888888P\",d\"\' \r\n                    `\"\"Ya,__`Y888888888888888P\"\"\" \r\n                         ``\"\"\"\"\"\"\"\"\"\"\"\"\"\'\' \r\n-->\r\n\r\n<!--[if lt IE 7]> <html class=\"no-js lt-ie9 lt-ie8 lt-ie7\"> <![endif]-->\r\n<!--[if IE 7]>    <html class=\"no-js lt-ie9 lt-ie8\"> <![endif]-->\r\n<!--[if IE 8]>    <html class=\"no-js lt-ie9\"> <![endif]-->\r\n<!--[if gt IE 8]><!--> <html class=\"no-js\"> <!--<![endif]-->\r\n<head>\r\n	<meta charset=\"utf-8\">\r\n	<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge, chrome=1\">\r\n	<meta name=\"revisit-after\" content=\"5 days\" />\r\n	<meta name=\"robots\" content=\"index,follow,archive\" />\r\n	<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n\r\n	<!-- prefetch dns -->\r\n	<link rel=\"dns-prefetch\" href=\"//www.google-analytics.com\">	\r\n  <link rel=\"dns-prefetch\" href=\"//ajax.googleapis.com\"> \r\n\r\n	<title>{if embed:page_title}{embed:page_title} | {/if}Lehigh County Sports Fields</title>\r\n	<meta name=\"description\" content=\"\">\r\n	<meta name=\"keywords\" content=\"\">\r\n\r\n	<!-- <link rel=\"Shortcut Icon\" href=\"/favicon.ico\"/> -->\r\n	<link rel=\"author\" type=\"text/plain\" href=\"/humans.txt\" />\r\n	<!-- <link rel=\"apple-touch-icon-precomposed\" href=\"/apple-touch-icon.png\"> -->\r\n	<!-- @TODO other icons -->\r\n		\r\n	<link rel=\"stylesheet\" media=\"screen\" href=\"{exp:cache_buster file=\'/themes/site_themes/a/css/style.css\' separator=\'?\'}\">\r\n	<link rel=\"stylesheet\" media=\"print\" href=\"{exp:cache_buster file=\'/themes/site_themes/a/css/print.css\' separator=\'?\'}\">\r\n\r\n	<!--[if lt IE 9]>\r\n		<script src=\"//html5shiv.googlecode.com/svn/trunk/html5.js\"></script>\r\n		<script>window.html5 || document.write(\'<script src=\"{global:theme_url}/js/vendor/html5shiv.js\"><\\/script>\')</script>\r\n	<![endif]-->\r\n</head>\r\n<body class=\"{embed:body_class}\">\r\n<!--[if lt IE 7]><p class=\"chromeframe\">You are using an <strong>outdated</strong> browser. Please <a href=\"http://browsehappy.com/\">upgrade your browser</a> or <a href=\"http://www.google.com/chromeframe/?redirect=true\">activate Google Chrome Frame</a> to improve your experience.</p><![endif]-->'),(8,5,'exp_templates','template_data',1370797058,1,'<!-- \r\n<section class=\"alert\">\r\n  <div class=\"container\">\r\n    Today\'s game is cancelled!\r\n  </div>\r\n</section> -->\r\n\r\n<!-- include js cloned ul for mobile menu -->\r\n\r\n<header class=\"page-header\">\r\n	<div class=\"container  content-box\">\r\n	\r\n		<a href=\"{path=SITE_INDEX}\" class=\"page-logo\">\r\n			Lehigh County Sports Fields\r\n		</a>\r\n\r\n		<!-- <div class=\"grid  desk-two-thirds  lap-one-half  one-whole\"> -->\r\n		<ul class=\"nav  nav--top  nav--dropdown  list--inline\">\r\n			\r\n      <li>\r\n        <a href=\"\">News &amp; Blog</a>\r\n      </li>\r\n\r\n      <li>\r\n        <a href=\"\">Calendar</a>\r\n        <div class=\"nav--dropdown--menu\">\r\n          <ul class=\"nav--block  nav--stacked\">\r\n            <li><a href=\"\">\r\n              Events Schedule\r\n              <span>short description desribing this item</span>\r\n            </a></li>\r\n            <li><a href=\"\">\r\n              Field Schedule\r\n              <span>short description desribing this item</span>\r\n            </a></li>\r\n          </ul>\r\n        </div>\r\n      </li>\r\n\r\n      <li>\r\n        <a href=\"\">Coaches &amp; Teams</a>\r\n        <div class=\"nav--dropdown--menu\">\r\n          <ul class=\"nav--block  nav--stacked\">\r\n            <li><a href=\"\">\r\n              Fields Map\r\n              <span>short description desribing this item</span>\r\n            </a></li>\r\n            <li><a href=\"\">\r\n              Practice Guidelines\r\n              <span>short description desribing this item</span>\r\n            </a></li>\r\n            <li><a href=\"\">\r\n              Reserve a Field\r\n              <span>short description desribing this item</span>\r\n            </a></li>\r\n            <li><a href=\"\">\r\n              Fees\r\n              <span>short description desribing this item</span>\r\n            </a></li>\r\n          </ul>\r\n        </div>\r\n      </li>\r\n\r\n      <li class=\"active\">\r\n        <a href=\"\">Directions</a>\r\n        <div class=\"nav--dropdown--menu\">\r\n          <ul class=\"nav--block  nav--stacked\">\r\n            <li><a href=\"\">\r\n              Get Directions\r\n            </a></li>\r\n            <li><a href=\"\">\r\n              Parking Guidelines\r\n            </a></li>\r\n          </ul>\r\n        </div>\r\n      </li>\r\n\r\n      <li>\r\n        <a href=\"\">About Us</a>\r\n        <div class=\"nav--dropdown--menu\">\r\n          <ul class=\"nav--block  nav--stacked\">\r\n            <li><a href=\"\">\r\n              About the LCSFA\r\n              <span>short description desribing this item</span>\r\n            </a></li>\r\n            <li><a href=\"\">\r\n              History\r\n              <span>short description desribing this item</span>\r\n            </a></li>\r\n            <li><a href=\"\">\r\n              Partners\r\n              <span>short description desribing this item</span>\r\n            </a></li>\r\n            <li><a href=\"\">\r\n              Board Members\r\n              <span>short description desribing this item</span>\r\n            </a></li>\r\n            <li><a href=\"\">\r\n              Operating Manual\r\n              <span>short description desribing this item</span>\r\n            </a></li>\r\n          </ul>\r\n        </div>\r\n      </li>\r\n\r\n      <li class=\"nav--icon\"><a href=\"\">Menu</a></li>\r\n      \r\n		</ul>\r\n\r\n	</div>\r\n</header>'),(9,8,'exp_templates','template_data',1370797058,1,'{embed=\"_common/.head\"\r\n  body_class=\"{embed:body_class}\"\r\n  page_title=\"{embed:page_title}\"\r\n}\r\n\r\n{embed=\"_common/.header\"\r\n  page_title=\"{embed:page_title}\"\r\n}\r\n\r\n{embed=\"home/.slider\"\r\n  page_title=\"{embed:page_title}\"\r\n}\r\n\r\n{!-- embed=\"home/.content\"\r\n  page_title=\"{embed:page_title}\"\r\n--}\r\n\r\n<section class=\"page__main-content  content--alt-row\">\r\n  <div class=\"container  content-box\">\r\n    \r\n<!--     <header class=\"page__title  content--full-width  page--use-divider\">\r\n      <h1>{embed:page_title}</h1>\r\n    </header> -->\r\n    \r\n    <div class=\"grid\">\r\n      <div class=\"grid__item  {embed:main_span}\">\r\n         \r\n            {embed=\"{embed:target}\"\r\n              group_id=\"{embed:group_id}\"\r\n              channel=\"{embed:channel}\"\r\n              category=\"{embed:category}\"\r\n              order_id=\"{embed:order_id}\"\r\n            }\r\n         \r\n      </div><!-- \r\n\r\n   -->{if embed:sidebar_span != \"\"}<div class=\"grid__item  {embed:sidebar_span}\">\r\n        <div class=\"page__sidebar\">\r\n          <div class=\"sidebar__item  content--banner-title\">\r\n            <h3>Field Schedule</h3>\r\n            Field Status: all open\r\n          </div>\r\n\r\n          <div class=\"sidebar__item  content--banner-title\">\r\n            <h3>Field Schedule</h3>\r\n            <p>Field Status: all open</p>\r\n          </div>\r\n\r\n          <div class=\"sidebar__item\">\r\n            \r\n        <iframe src=\"https://www.google.com/calendar/embed?showTitle=0&amp;showNav=0&amp;showDate=0&amp;showPrint=0&amp;showTabs=0&amp;showCalendars=0&amp;showTz=0&amp;mode=AGENDA&amp;height=300&amp;wkst=1&amp;bgcolor=%23ffffff&amp;src=lcsfasoccer%40gmail.com&amp;color=%23875509&amp;ctz=America%2FNew_York\" style=\" border-width:0 \" width=\"250\" height=\"300\" frameborder=\"0\" scrolling=\"no\"></iframe>\r\n\r\n          </div>\r\n        </div>\r\n      </div>{/if}\r\n\r\n    </div>\r\n  </div>\r\n</section>\r\n\r\n\r\n\r\n<!-- <div class=\"container\">\r\n  <div class=\"row\">\r\n    <div class=\"span{embed:main_span} content\">\r\n      {embed=\"{embed:target}\"\r\n        group_id=\"{embed:group_id}\"\r\n        channel=\"{embed:channel}\"\r\n        category=\"{embed:category}\"\r\n        order_id=\"{embed:order_id}\"\r\n      }\r\n    </div>\r\n    {if embed:sidebar_span > 0}\r\n    <div class=\"span{embed:sidebar_span} sidebar\">\r\n      {embed=\"{embed:sidebar}\"}\r\n    </div>\r\n    {/if}\r\n  </div>\r\n</div> -->\r\n\r\n{embed=\"_common/.footer\"}'),(10,9,'exp_templates','template_data',1370797058,1,''),(11,12,'exp_templates','template_data',1371511283,1,'{exp:channel:entries channel=\"{embed:channel}\" limit=\"{embed:limit}\" category=\"{embed:category}\" paginate=\"bottom\" {global:param_disable_default}}\r\n{if featured_slide_on != \"y\"}\r\n\r\n<div class=\"content__column\">\r\n  {exp:switchee variable=\"{channel_name}\" parse=\"inward\"}\r\n    {case value=\"news\" default=\"yes\"}\r\n        <div class=\"content__item  content--has-article-type\">\r\n          <article class=\"article__summary \">     \r\n            \r\n            <span class=\"article__type\">{channel}</span>\r\n            \r\n            {if segment_3}\r\n            <h2 class=\"article__title\">{title}</h2>\r\n            {if:else}\r\n            <a href=\"{path=SITE_INDEX}{channel_short_name}/{url_title}/{entry_id}\" title=\"Click to read: {title}\">\r\n              <h2 class=\"article__title\">{title}</h2>\r\n            </a>\r\n            {/if}\r\n\r\n            <span class=\"article__pub-date\">\r\n              <span>Published on {entry_date format=\"%F %j%S, %Y\"}</span>\r\n            </span>\r\n           \r\n            {main_content_body}\r\n\r\n           <!--  <footer class=\"article__footer cf\">\r\n              <div class=\"float-left\">\r\n                <a href=\"\" title=\"\">See all announcements</a>\r\n              </div><div class=\"float-right\">\r\n                <a href=\"\" title=\"\">Continue Reading ... </a>\r\n              </div>\r\n            </footer> -->\r\n\r\n          </article>\r\n        </div><!-- /.content__item  -->\r\n    {/case}\r\n    {case value=\"events\"}\r\n        <div class=\"content__item  content--has-article-type\">\r\n          <article class=\"article__summary \">     \r\n            \r\n            <span class=\"article__type\">{channel}</span>\r\n            \r\n            {if segment_3}\r\n            <h2 class=\"article__title\">{title}</h2>\r\n            {if:else}\r\n            <a href=\"{path=SITE_INDEX}{channel_short_name}/{url_title}/{entry_id}\" title=\"Click to read: {title}\">\r\n              <h2 class=\"article__title\">{title}</h2>\r\n            </a>\r\n            {/if}\r\n           \r\n            <table class=\"table--bordered  table--data  table--alt-style\">\r\n              <tr>\r\n                <th>Date</th>\r\n                <td>{if event__date}{event__date format=\"%F %j%S, %Y\"}{if:else}TBD{/if}</td>\r\n              </tr>\r\n              <tr>\r\n                <th>Time</th>\r\n                <td>\r\n                  {if event__start-time}{event__start-time format=\"%g:%i%a\"}{if:else}TBD{/if}\r\n                  {if event__end-time} to {event__end-time format=\"%g:%i%a\"}{/if}\r\n                </td>\r\n              </tr>\r\n              {event__location}\r\n              {if location_name}\r\n              <tr>\r\n                <th>Location</th>\r\n                <td>\r\n                  {if location_website}\r\n                    <a href=\"{location_website}\" target=\"_blank\" title=\"Open {location_name} website in new window\"><strong>{location_name}</strong></a>\r\n                  {if:else}\r\n                    <strong>{location_name}</strong>\r\n                  {/if}\r\n                  {location_address}\r\n                    {if street}\r\n                      <br>{street}<br>\r\n                      {if street_2}{street_2}<br>{/if}\r\n                      {city}, {region} {postal_code}<br>\r\n                      <a href=\"{location_address:map_url source=\"google\" include_name=\"yes\"}\" target=\"_blank\">View Map (opens in new window)</a>\r\n                    {/if}\r\n                  {/location_address}\r\n                </td>\r\n              </tr>\r\n              {/event__location}\r\n              {event__sponsors}\r\n              {if sponsor_name}\r\n              <tr>\r\n                <th>Event Sponsor</th>\r\n                <td>\r\n                  {if sponsor_website}\r\n                    <a href=\"{sponsor_website}\" target=\"_blank\" title=\"Open {sponsor_name} website in new window\"><strong>{sponsor_name}</strong></a>\r\n                  {if:else}\r\n                    <strong>{sponsor_name}</strong>\r\n                  {/if}\r\n                  {if sponsor_image}\r\n                    {if sponsor_website}\r\n                      <a href=\"{sponsor_website}\" target=\"_blank\" title=\"Open {sponsor_name} website in new window\"><img src=\"{sponsor_image:resized_150w}\" class=\"float-right\"><a>\r\n                    {if:else}\r\n                      <img src=\"{sponsor_image:resized_150w}\" class=\"float-right\">\r\n                    {/if}\r\n                </td>\r\n              </tr>\r\n              {/if}\r\n              {/event__sponsors}\r\n            </table>\r\n\r\n            {event__detail} \r\n\r\n           <!--  <footer class=\"article__footer cf\">\r\n              <div class=\"float-left\">\r\n                <a href=\"\" title=\"\">See all announcements</a>\r\n              </div><div class=\"float-right\">\r\n                <a href=\"\" title=\"\">Continue Reading ... </a>\r\n              </div>\r\n            </footer> -->\r\n            \r\n          </article>\r\n        </div><!-- /.content__item  -->\r\n    {/case}\r\n  {/exp:switchee}\r\n</div><!-- /.content__column  -->\r\n{/if}\r\n\r\n{paginate}{pagination_links}\r\n<div class=\"content__column\">\r\n  <ol class=\"nav pagination\">\r\n      {first_page}<li class=\"pagination__first\"><a href=\"{pagination_url}\">First</a></li>{/first_page}<!--\r\n   -->{previous_page}<li class=\"pagination__prev\"><a href=\"{pagination_url}\">Previous</a></li>{/previous_page}<!--\r\n   -->{page}<li{if current_page} class=\"current\"{/if}><a href=\"{pagination_url}\">{pagination_page_number}</a></li>{/page}<!--\r\n   -->{next_page}<li class=\"pagination__next\"><a href=\"{pagination_url}\">Next</a></li>{/next_page}<!--\r\n   -->{last_page}<li class=\"pagination__last\"><a href=\"{pagination_url}\">Last</a></li>{/last_page}\r\n  </ol>\r\n</div>\r\n{/pagination_links}{/paginate}\r\n\r\n{/exp:channel:entries}\r\n\r\n{!-- \r\n\r\n<div class=\"content__column content--pop-it\">\r\n  <div class=\"content__item\">\r\n    <article class=\"article__summary \">\r\n    \r\n      \r\n      {exp:channel:entries}\r\n\r\n      title: {title}\r\n      {use_as_featured}\r\n      {image:url}\r\n      {/use_as_featured}\r\n      {/exp:channel:entries}\r\n\r\n      <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n      \r\n\r\n      <footer class=\"article__footer cf\">\r\n      \r\n        <div class=\"float-left\">\r\n          <a href=\"\" title=\"\">See all announcements</a>\r\n        </div><div class=\"float-right\">\r\n          <a href=\"\" title=\"\">Continue Reading ... </a>\r\n        </div>\r\n      \r\n      </footer>\r\n    </article>\r\n  </div>\r\n</div>\r\n\r\n<div class=\"content__column\">\r\n<div class=\"content__item  content--no-bg\">\r\n  <article class=\"article__summary  summary--paper-layers  summary--announce\">\r\n    \r\n    <span class=\"article__type\">Announcement</span>\r\n    <h1 class=\"article__title\">LCSFA has a New Website!</h1>\r\n   \r\n    <span class=\"article__pub-date\">\r\n      <span>Published on May 5th, 2013</span>\r\n    </span>\r\n    \r\n    {exp:channel:entries}\r\n\r\n    title: {title}\r\n    {use_as_featured}\r\n    {image:url}\r\n    {/use_as_featured}\r\n    {/exp:channel:entries}\r\n\r\n    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n    \r\n\r\n    <footer class=\"article__footer cf\">\r\n    \r\n      <div class=\"float-left\">\r\n        <a href=\"\" title=\"\">See all announcements</a>\r\n      </div><div class=\"float-right\">\r\n        <a href=\"\" title=\"\">Continue Reading ... </a>\r\n      </div>\r\n    \r\n    </footer>\r\n  </article>\r\n</div>\r\n</div>\r\n\r\n--}'),(12,2,'exp_templates','template_data',1371511283,1,'{embed=\"_layouts/.page_constructor\"\r\n	target=\"home/.index\"\r\n	page_title=\"\"\r\n	sidebar=\"_sidebar/.default\"\r\n	main_span=\"two-thirds  palm-one-whole\" \r\n	sidebar_span=\"one-third  palm-one-whole\"\r\n	body_class=\"default\"\r\n\r\n	channel=\"news|events\"\r\n	category=\"\"\r\n	limit=\"4\"\r\n}'),(13,15,'exp_templates','template_data',1371511283,1,'{embed=\"_layouts/.page_constructor\"\r\n	target=\"{segment_1}/.index\"\r\n		\r\n		{if segment_3}\r\n		page_title=\"{exp:low_title:entry entry_id=\'{segment_3}\'}\"\r\n		{if:else}\r\n		page_title=\"News &amp; Announcements\"\r\n		{/if}\r\n\r\n	sidebar=\"_sidebar/.default\"\r\n	main_span=\"two-thirds  palm-one-whole\" \r\n	sidebar_span=\"one-third  palm-one-whole\"\r\n	body_class=\"default\"\r\n	\r\n	channel=\"{segment_1}\"\r\n	category=\"\"\r\n	limit=\"5\"\r\n}'),(14,3,'exp_templates','template_data',1371511283,1,'  Copyright &copy; {current_time format=\"%Y\"}\r\n\r\n  \"I heart websites!\" >> show:  This website is powered by Expression Engine. The <a href=\"https://github.com/seangravener/lcsportsfields.org/tree/master/www/themes/site_themes/a\">theme</a> and <a href=\"https://github.com/seangravener/lcsportsfields.org/tree/master/system/ee-templates/default_site\">templates for this website</a> are avialable for free.\r\n\r\n  <script src=\"//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js\"></script>\r\n  <script>window.jQuery || document.write(\'<script src=\"{global:theme_url}/js/vendor/jquery-1.10.0.min.js\"><\\/script>\')</script>\r\n  \r\n  <!-- plugins -->\r\n  <script src=\"{global:theme_url}/js/plugins/jquery.flexslider.min.js\"></script>\r\n\r\n  <script src=\"{global:theme_url}/js/plugins.js\"></script>\r\n  <script src=\"{global:theme_url}/js/main.js\"></script>\r\n  <!-- end scripts-->\r\n\r\n  <script>\r\n    // $(document).ready(function() {\r\n    //  $(\'#fitvids\').fitVids();\r\n    // });\r\n  </script>\r\n\r\n  <!-- GA, hombre\' -->\r\n  <script>\r\n    (function(i,s,o,g,r,a,m){i[\'GoogleAnalyticsObject\']=r;i[r]=i[r]||function(){\r\n    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\r\n    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\r\n    })(window,document,\'script\',\'//www.google-analytics.com/analytics.js\',\'ga\');\r\n\r\n    ga(\'create\', \'{global:google_analytics_key}\', \'lcsportsfields.org\');\r\n    ga(\'send\', \'pageview\');\r\n  </script>\r\n\r\n</body>\r\n</html>'),(15,4,'exp_templates','template_data',1371511283,1,'<!doctype html>\r\n\r\n<!--\r\n                       _,aaadP\"\"\"\"\"\"Ybaaaa,,_ \r\n                   ,adP,__,,,aaaadP\"\"\"\"\"Y888888a,_ \r\n                ,a8888888P\"\'\'             \"Y8888888b, \r\n             _a888888888\"                   `Y88888888b, \r\n           ,d888888888P\'                       \"888888888b, \r\n         ,88888888P\"Y8,                       ,P\'   `\"\"Y888b, \r\n       ,d8888P\"\'     \"Ya,                    ,P\'         `Ya`b, \r\n      ,P88\"\'           `Ya,                 ,P\'            `b`Yi \r\n     d\",P                `\"Y,              ,P\'              `Y \"i \r\n   ,P\' P\'                   \"888888888888888b                `b \"i \r\n  ,P\' d\'                    d8888888888888888b                `b `b \r\n  d\' d\'                    ,888888888888888888b                I, Y, \r\n ,f ,f                    ,88888888888888888888b               `b, b \r\n d\' d\'                    d888888888888888888888b              ,88,I \r\n,P  8                    ,88888888888888888888888b,_          ,d8888 \r\nd\'  8,                   d8888888888888888888888P\'`\"Ya,_     ,d88888 \r\n8  d88b,             ,adP\"\"Y888888888888888888P\'      `\"\"Ya, d88888P \r\n8 ,88888b,       ,adP\"\'     `\"Y8888888888888\"\'             `\"888888I \r\nY,88888888b, ,adP\"\'             \"\"Y888888P\"                  888888\' \r\n`888888888888P\'                     \"\"YP\"                    888888 \r\n I88888888888                          8                     88888I \r\n `Y8888888888                          8                     88888\' \r\n  `Y888888888        Lehigh County     8                     8888I \r\n   `Y88888888        Sports Fields     8                     8P\"8\' \r\n    `Y8888888,                         8                   ,d\',d\' \r\n     `b\"\"\"\"Y8b                         8                 ,d\" ,d\' \r\n       \"b,   \"Y,                       8               ,P\" ,d\" \r\n         \"b,   \"Ya,_                 ,d88ba,,___   _,aP\" ,P\" \r\n           \"Ya_   \"\"Ya,_       _,,ad88888888888888P\"\' _,d\" \r\n             `\"Ya_    \"\"Yaaad88888888888888888888P _,d\"\' \r\n                 `\"Ya,_     \"Y888888888888888888P\",d\"\' \r\n                    `\"\"Ya,__`Y888888888888888P\"\"\" \r\n                         ``\"\"\"\"\"\"\"\"\"\"\"\"\"\'\' \r\n-->\r\n\r\n<!--[if lt IE 7]> <html class=\"no-js lt-ie9 lt-ie8 lt-ie7\"> <![endif]-->\r\n<!--[if IE 7]>    <html class=\"no-js lt-ie9 lt-ie8\"> <![endif]-->\r\n<!--[if IE 8]>    <html class=\"no-js lt-ie9\"> <![endif]-->\r\n<!--[if gt IE 8]><!--> <html class=\"no-js\"> <!--<![endif]-->\r\n<head>\r\n	<meta charset=\"utf-8\">\r\n	<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge, chrome=1\">\r\n	<meta name=\"revisit-after\" content=\"5 days\" />\r\n	<meta name=\"robots\" content=\"index,follow,archive\" />\r\n	<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n\r\n	<!-- prefetch dns -->\r\n	<link rel=\"dns-prefetch\" href=\"//www.google-analytics.com\">	\r\n  <link rel=\"dns-prefetch\" href=\"//ajax.googleapis.com\"> \r\n\r\n	<title>{if embed:page_title}{embed:page_title} | {/if}Lehigh County Sports Fields</title>\r\n	<meta name=\"description\" content=\"\">\r\n	<meta name=\"keywords\" content=\"\">\r\n\r\n	<!-- <link rel=\"Shortcut Icon\" href=\"/favicon.ico\"/> -->\r\n	<link rel=\"author\" type=\"text/plain\" href=\"/humans.txt\" />\r\n	<!-- <link rel=\"apple-touch-icon-precomposed\" href=\"/apple-touch-icon.png\"> -->\r\n	<!-- @TODO other icons -->\r\n		\r\n	<link rel=\"stylesheet\" media=\"screen\" href=\"{exp:cache_buster file=\'/themes/site_themes/a/css/style.css\' separator=\'?\'}\">\r\n	<link rel=\"stylesheet\" media=\"print\" href=\"{exp:cache_buster file=\'/themes/site_themes/a/css/print.css\' separator=\'?\'}\">\r\n\r\n	<!--[if lt IE 9]>\r\n		<script src=\"//html5shiv.googlecode.com/svn/trunk/html5.js\"></script>\r\n		<script>window.html5 || document.write(\'<script src=\"{global:theme_url}/js/vendor/html5shiv.js\"><\\/script>\')</script>\r\n	<![endif]-->\r\n</head>\r\n<body class=\"{embed:body_class}\">\r\n<!--[if lt IE 7]><p class=\"chromeframe\">You are using an <strong>outdated</strong> browser. Please <a href=\"http://browsehappy.com/\">upgrade your browser</a> or <a href=\"http://www.google.com/chromeframe/?redirect=true\">activate Google Chrome Frame</a> to improve your experience.</p><![endif]-->'),(16,5,'exp_templates','template_data',1371511283,1,'<!-- \r\n<section class=\"alert\">\r\n  <div class=\"container\">\r\n    Today\'s game is cancelled!\r\n  </div>\r\n</section> -->\r\n\r\n<!-- include js cloned ul for mobile menu -->\r\n\r\n<header class=\"page-header\">\r\n	<div class=\"container  content-box\">\r\n	\r\n		<a href=\"{path=SITE_INDEX}\" class=\"page-logo\">\r\n			Lehigh County Sports Fields\r\n		</a>\r\n\r\n		<!-- <div class=\"grid  desk-two-thirds  lap-one-half  one-whole\"> -->\r\n		<ul class=\"nav  nav--top  nav--dropdown  list--inline\">\r\n			\r\n      <li>\r\n        <a href=\"\">News &amp; Blog</a>\r\n      </li>\r\n\r\n      <li>\r\n        <a href=\"\">Calendar</a>\r\n        <div class=\"nav--dropdown--menu\">\r\n          <ul class=\"nav--block  nav--stacked\">\r\n            <li><a href=\"\">\r\n              Events Schedule\r\n              <span>short description desribing this item</span>\r\n            </a></li>\r\n            <li><a href=\"\">\r\n              Field Schedule\r\n              <span>short description desribing this item</span>\r\n            </a></li>\r\n          </ul>\r\n        </div>\r\n      </li>\r\n\r\n      <li>\r\n        <a href=\"\">Coaches &amp; Teams</a>\r\n        <div class=\"nav--dropdown--menu\">\r\n          <ul class=\"nav--block  nav--stacked\">\r\n            <li><a href=\"\">\r\n              Fields Map\r\n              <span>short description desribing this item</span>\r\n            </a></li>\r\n            <li><a href=\"\">\r\n              Practice Guidelines\r\n              <span>short description desribing this item</span>\r\n            </a></li>\r\n            <li><a href=\"\">\r\n              Reserve a Field\r\n              <span>short description desribing this item</span>\r\n            </a></li>\r\n            <li><a href=\"\">\r\n              Fees\r\n              <span>short description desribing this item</span>\r\n            </a></li>\r\n          </ul>\r\n        </div>\r\n      </li>\r\n\r\n      <li class=\"active\">\r\n        <a href=\"\">Directions</a>\r\n        <div class=\"nav--dropdown--menu\">\r\n          <ul class=\"nav--block  nav--stacked\">\r\n            <li><a href=\"\">\r\n              Get Directions\r\n            </a></li>\r\n            <li><a href=\"\">\r\n              Parking Guidelines\r\n            </a></li>\r\n          </ul>\r\n        </div>\r\n      </li>\r\n\r\n      <li>\r\n        <a href=\"\">About Us</a>\r\n        <div class=\"nav--dropdown--menu\">\r\n          <ul class=\"nav--block  nav--stacked\">\r\n            <li><a href=\"\">\r\n              About the LCSFA\r\n              <span>short description desribing this item</span>\r\n            </a></li>\r\n            <li><a href=\"\">\r\n              History\r\n              <span>short description desribing this item</span>\r\n            </a></li>\r\n            <li><a href=\"\">\r\n              Partners\r\n              <span>short description desribing this item</span>\r\n            </a></li>\r\n            <li><a href=\"\">\r\n              Board Members\r\n              <span>short description desribing this item</span>\r\n            </a></li>\r\n            <li><a href=\"\">\r\n              Operating Manual\r\n              <span>short description desribing this item</span>\r\n            </a></li>\r\n          </ul>\r\n        </div>\r\n      </li>\r\n\r\n      <li class=\"nav--icon\"><a href=\"\">Menu</a></li>\r\n      \r\n		</ul>\r\n\r\n	</div>\r\n</header>'),(17,7,'exp_templates','template_data',1371511283,1,''),(18,8,'exp_templates','template_data',1371511283,1,'{embed=\"_common/.page_head\"\r\n  body_class=\"{embed:body_class}\"\r\n  page_title=\"{embed:page_title}\"\r\n}\r\n\r\n{embed=\"_common/.page_header\"\r\n  page_title=\"{embed:page_title}\"\r\n}\r\n\r\n{if segment_1 == \"\"}\r\n  {embed=\"home/.slider\"\r\n    page_title=\"{embed:page_title}\"\r\n  }\r\n{/if}\r\n\r\n<section class=\"page__main-content  content--alt-row\">\r\n  <div class=\"container  content-box\">\r\n    \r\n    {if segment_1}\r\n    <header class=\"page__title  content--full-width  page--use-divider\">\r\n      <h1>\r\n        {if {exp:segment_search keyword=\"/P\\d+/\" regex=\"yes\" segments=\"1\"}}\r\n          News &amp; Blog\r\n        {if:else}\r\n          {exp:low_title:channel channel_name=\"{segment_1}\"}\r\n        {/if}\r\n      </h1>\r\n    </header>\r\n    {/if}\r\n    \r\n    <div class=\"grid\">\r\n\r\n      <!-- map -->\r\n     <!--  <div class=\"grid__item  one-whole\">\r\n        <div class=\"content__column  content--full-width\">\r\n          <div class=\"content__item\">\r\n\r\n  <form action=\"http://maps.google.com/maps\" method=\"get\" target=\"_blank\">\r\nEnter your starting address:\r\n<input type=\"text\" name=\"saddr\" />\r\n<input type=\"hidden\" name=\"daddr\" value=\"Lehigh County Sports Fields, Allentown, PA\" />\r\n<input type=\"submit\" value=\"get directions\" />\r\n</form>\r\n            <div class=\"flexible-container\">\r\n              <iframe width=\"425\" height=\"350\" frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" src=\"https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Lehigh+County+Sports+Fields,+Allentown,+PA&amp;aq=0&amp;oq=lehigh+county+sports+fi&amp;sll=40.336681,-75.230642&amp;sspn=1.436207,2.359314&amp;ie=UTF8&amp;hq=Lehigh+County+Sports+Fields,+Allentown,+PA&amp;ll=40.581035,-75.546774&amp;spn=0.044713,0.073729&amp;t=m&amp;z=14&amp;iwloc=A&amp;cid=5598351534588151011&amp;output=embed\"></iframe>\r\n            </div>\r\n          </div>\r\n        </div>\r\n      </div> --><!--\r\n\r\n    --><div class=\"grid__item  {embed:main_span}\">\r\n         \r\n            {embed=\"{embed:target}\"\r\n              group_id=\"{embed:group_id}\"\r\n              limit=\"{embed:limit}\"\r\n              channel=\"{embed:channel}\"\r\n              category=\"{embed:category}\"\r\n              order_id=\"{embed:order_id}\"\r\n            }\r\n         \r\n      </div><!-- \r\n\r\n   -->{if embed:sidebar_span != \"\"}<div class=\"grid__item  {embed:sidebar_span}\">\r\n        <div class=\"page__sidebar\">\r\n          <div class=\"sidebar__item  content--banner-title\">\r\n            <h3>Field Schedule</h3>\r\n            Field Status: all open\r\n          </div>\r\n\r\n          <div class=\"sidebar__item  content--banner-title\">\r\n            <h3>Field Schedule</h3>\r\n            <p>Field Status: all open</p>\r\n          </div>\r\n\r\n          <div class=\"sidebar__item\">\r\n            \r\n       <!--  <iframe src=\"https://www.google.com/calendar/embed?showTitle=0&amp;showNav=0&amp;showDate=0&amp;showPrint=0&amp;showTabs=0&amp;showCalendars=0&amp;showTz=0&amp;mode=AGENDA&amp;height=300&amp;wkst=1&amp;bgcolor=%23ffffff&amp;src=lcsfasoccer%40gmail.com&amp;color=%23875509&amp;ctz=America%2FNew_York\" style=\" border-width:0 \" width=\"250\" height=\"300\" frameborder=\"0\" scrolling=\"no\"></iframe> -->\r\n\r\n          </div>\r\n        </div>\r\n      </div>{/if}\r\n\r\n    </div>\r\n  </div>\r\n</section>\r\n\r\n{embed=\"_common/.page_footer\"}');
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
) ENGINE=MyISAM AUTO_INCREMENT=1179 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_security_hashes`
--

LOCK TABLES `exp_security_hashes` WRITE;
/*!40000 ALTER TABLE `exp_security_hashes` DISABLE KEYS */;
INSERT INTO `exp_security_hashes` VALUES (1178,1371614675,'0','8b1b272f78cb4e4a82e658a469d58bd825692222'),(1177,1371614671,'0','99131e4803188eb843baeb6511dab17331ae37e4'),(1176,1371614670,'0','da1557ecf9ad61e5841f9c4d8a9d2b2d9b914c58'),(1175,1371607558,'88e083e26cd85ea9f735b4aa375f4248937ae5e1','f591fa959c7685822198e104e36453b85e326d1c'),(1174,1371607557,'88e083e26cd85ea9f735b4aa375f4248937ae5e1','dd3188206a96ed94ef73b1c0bda72bb230a36947'),(1172,1371607537,'88e083e26cd85ea9f735b4aa375f4248937ae5e1','67e637e2862666026776539f497b962270d859b5'),(1171,1371607536,'88e083e26cd85ea9f735b4aa375f4248937ae5e1','9e900ca110311b9f07a0cacf4a4aa86e1666d113'),(1169,1371607497,'88e083e26cd85ea9f735b4aa375f4248937ae5e1','3e3fbd8bb8fc091a8a3196fbd65bf43c0fa1a4dd'),(1168,1371607496,'88e083e26cd85ea9f735b4aa375f4248937ae5e1','f525b181ae16de4830b7e2586c2749ded880a06b'),(1166,1371607464,'88e083e26cd85ea9f735b4aa375f4248937ae5e1','d6dec4c50ffdc69163cdc180b2d1b6d81f54d196'),(1165,1371607463,'88e083e26cd85ea9f735b4aa375f4248937ae5e1','4bcecec68fbacb7eb9099b4b549fb931c0fa1301'),(1163,1371607360,'88e083e26cd85ea9f735b4aa375f4248937ae5e1','28320069dec847880a2ac1cae010700808d474df'),(1162,1371607349,'88e083e26cd85ea9f735b4aa375f4248937ae5e1','be4a2916a24edcc932904c97ee3c22819439f77e'),(1161,1371607348,'0','a4ebfb6f4f5d46d4877139406e6b2b636feaae49');
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
INSERT INTO `exp_stats` VALUES (1,1,1,1,'admin-kvq',9,0,0,0,1371412560,0,0,1368902724,1,1368900958,1372004296);
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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_template_groups`
--

LOCK TABLES `exp_template_groups` WRITE;
/*!40000 ALTER TABLE `exp_template_groups` DISABLE KEYS */;
INSERT INTO `exp_template_groups` VALUES (2,1,'home',1,'y'),(3,1,'_common',2,'n'),(4,1,'_layouts',3,'n'),(5,1,'news',4,'n'),(6,1,'_sidebars',5,'n'),(7,1,'events',6,'n');
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
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_templates`
--

LOCK TABLES `exp_templates` WRITE;
/*!40000 ALTER TABLE `exp_templates` DISABLE KEYS */;
INSERT INTO `exp_templates` VALUES (2,1,2,'index','y','webpage','{embed=\"_layouts/.page_constructor\"\r\n	target=\"home/.index\"\r\n	page_title=\"\"\r\n	sidebar=\"_sidebar/.default\"\r\n	main_span=\"two-thirds  palm-one-whole\" \r\n	sidebar_span=\"one-third  palm-one-whole\"\r\n	body_class=\"default\"\r\n\r\n	channel=\"news|events\"\r\n	category=\"\"\r\n	limit=\"4\"\r\n}',NULL,1371511283,1,'n',0,'','n','n','o',0),(3,1,3,'.footer','y','webpage','  Copyright &copy; {current_time format=\"%Y\"}\r\n\r\n  \"I heart websites!\" >> show:  This website is powered by Expression Engine. The <a href=\"https://github.com/seangravener/lcsportsfields.org/tree/master/www/themes/site_themes/a\">theme</a> and <a href=\"https://github.com/seangravener/lcsportsfields.org/tree/master/system/ee-templates/default_site\">templates for this website</a> are avialable for free.\r\n\r\n  <script src=\"//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js\"></script>\r\n  <script>window.jQuery || document.write(\'<script src=\"{global:theme_url}/js/vendor/jquery-1.10.0.min.js\"><\\/script>\')</script>\r\n  \r\n  <!-- plugins -->\r\n  <script src=\"{global:theme_url}/js/plugins/jquery.flexslider.min.js\"></script>\r\n\r\n  <script src=\"{global:theme_url}/js/plugins.js\"></script>\r\n  <script src=\"{global:theme_url}/js/main.js\"></script>\r\n  <!-- end scripts-->\r\n\r\n  <script>\r\n    // $(document).ready(function() {\r\n    //  $(\'#fitvids\').fitVids();\r\n    // });\r\n  </script>\r\n\r\n  <!-- GA, hombre\' -->\r\n  <script>\r\n    (function(i,s,o,g,r,a,m){i[\'GoogleAnalyticsObject\']=r;i[r]=i[r]||function(){\r\n    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\r\n    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\r\n    })(window,document,\'script\',\'//www.google-analytics.com/analytics.js\',\'ga\');\r\n\r\n    ga(\'create\', \'{global:google_analytics_key}\', \'lcsportsfields.org\');\r\n    ga(\'send\', \'pageview\');\r\n  </script>\r\n\r\n</body>\r\n</html>',NULL,1371511283,1,'n',0,'','n','n','o',0),(4,1,3,'.head','y','webpage','<!doctype html>\r\n\r\n<!--\r\n                       _,aaadP\"\"\"\"\"\"Ybaaaa,,_ \r\n                   ,adP,__,,,aaaadP\"\"\"\"\"Y888888a,_ \r\n                ,a8888888P\"\'\'             \"Y8888888b, \r\n             _a888888888\"                   `Y88888888b, \r\n           ,d888888888P\'                       \"888888888b, \r\n         ,88888888P\"Y8,                       ,P\'   `\"\"Y888b, \r\n       ,d8888P\"\'     \"Ya,                    ,P\'         `Ya`b, \r\n      ,P88\"\'           `Ya,                 ,P\'            `b`Yi \r\n     d\",P                `\"Y,              ,P\'              `Y \"i \r\n   ,P\' P\'                   \"888888888888888b                `b \"i \r\n  ,P\' d\'                    d8888888888888888b                `b `b \r\n  d\' d\'                    ,888888888888888888b                I, Y, \r\n ,f ,f                    ,88888888888888888888b               `b, b \r\n d\' d\'                    d888888888888888888888b              ,88,I \r\n,P  8                    ,88888888888888888888888b,_          ,d8888 \r\nd\'  8,                   d8888888888888888888888P\'`\"Ya,_     ,d88888 \r\n8  d88b,             ,adP\"\"Y888888888888888888P\'      `\"\"Ya, d88888P \r\n8 ,88888b,       ,adP\"\'     `\"Y8888888888888\"\'             `\"888888I \r\nY,88888888b, ,adP\"\'             \"\"Y888888P\"                  888888\' \r\n`888888888888P\'                     \"\"YP\"                    888888 \r\n I88888888888                          8                     88888I \r\n `Y8888888888                          8                     88888\' \r\n  `Y888888888        Lehigh County     8                     8888I \r\n   `Y88888888        Sports Fields     8                     8P\"8\' \r\n    `Y8888888,                         8                   ,d\',d\' \r\n     `b\"\"\"\"Y8b                         8                 ,d\" ,d\' \r\n       \"b,   \"Y,                       8               ,P\" ,d\" \r\n         \"b,   \"Ya,_                 ,d88ba,,___   _,aP\" ,P\" \r\n           \"Ya_   \"\"Ya,_       _,,ad88888888888888P\"\' _,d\" \r\n             `\"Ya_    \"\"Yaaad88888888888888888888P _,d\"\' \r\n                 `\"Ya,_     \"Y888888888888888888P\",d\"\' \r\n                    `\"\"Ya,__`Y888888888888888P\"\"\" \r\n                         ``\"\"\"\"\"\"\"\"\"\"\"\"\"\'\' \r\n-->\r\n\r\n<!--[if lt IE 7]> <html class=\"no-js lt-ie9 lt-ie8 lt-ie7\"> <![endif]-->\r\n<!--[if IE 7]>    <html class=\"no-js lt-ie9 lt-ie8\"> <![endif]-->\r\n<!--[if IE 8]>    <html class=\"no-js lt-ie9\"> <![endif]-->\r\n<!--[if gt IE 8]><!--> <html class=\"no-js\"> <!--<![endif]-->\r\n<head>\r\n	<meta charset=\"utf-8\">\r\n	<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge, chrome=1\">\r\n	<meta name=\"revisit-after\" content=\"5 days\" />\r\n	<meta name=\"robots\" content=\"index,follow,archive\" />\r\n	<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n\r\n	<!-- prefetch dns -->\r\n	<link rel=\"dns-prefetch\" href=\"//www.google-analytics.com\">	\r\n  <link rel=\"dns-prefetch\" href=\"//ajax.googleapis.com\"> \r\n\r\n	<title>{if embed:page_title}{embed:page_title} | {/if}Lehigh County Sports Fields</title>\r\n	<meta name=\"description\" content=\"\">\r\n	<meta name=\"keywords\" content=\"\">\r\n\r\n	<!-- <link rel=\"Shortcut Icon\" href=\"/favicon.ico\"/> -->\r\n	<link rel=\"author\" type=\"text/plain\" href=\"/humans.txt\" />\r\n	<!-- <link rel=\"apple-touch-icon-precomposed\" href=\"/apple-touch-icon.png\"> -->\r\n	<!-- @TODO other icons -->\r\n		\r\n	<link rel=\"stylesheet\" media=\"screen\" href=\"{exp:cache_buster file=\'/themes/site_themes/a/css/style.css\' separator=\'?\'}\">\r\n	<link rel=\"stylesheet\" media=\"print\" href=\"{exp:cache_buster file=\'/themes/site_themes/a/css/print.css\' separator=\'?\'}\">\r\n\r\n	<!--[if lt IE 9]>\r\n		<script src=\"//html5shiv.googlecode.com/svn/trunk/html5.js\"></script>\r\n		<script>window.html5 || document.write(\'<script src=\"{global:theme_url}/js/vendor/html5shiv.js\"><\\/script>\')</script>\r\n	<![endif]-->\r\n</head>\r\n<body class=\"{embed:body_class}\">\r\n<!--[if lt IE 7]><p class=\"chromeframe\">You are using an <strong>outdated</strong> browser. Please <a href=\"http://browsehappy.com/\">upgrade your browser</a> or <a href=\"http://www.google.com/chromeframe/?redirect=true\">activate Google Chrome Frame</a> to improve your experience.</p><![endif]-->',NULL,1371511283,1,'n',0,'','n','n','o',0),(5,1,3,'.header','y','webpage','<!-- \r\n<section class=\"alert\">\r\n  <div class=\"container\">\r\n    Today\'s game is cancelled!\r\n  </div>\r\n</section> -->\r\n\r\n<!-- include js cloned ul for mobile menu -->\r\n\r\n<header class=\"page-header\">\r\n	<div class=\"container  content-box\">\r\n	\r\n		<a href=\"{path=SITE_INDEX}\" class=\"page-logo\">\r\n			Lehigh County Sports Fields\r\n		</a>\r\n\r\n		<!-- <div class=\"grid  desk-two-thirds  lap-one-half  one-whole\"> -->\r\n		<ul class=\"nav  nav--top  nav--dropdown  list--inline\">\r\n			\r\n      <li>\r\n        <a href=\"\">News &amp; Blog</a>\r\n      </li>\r\n\r\n      <li>\r\n        <a href=\"\">Calendar</a>\r\n        <div class=\"nav--dropdown--menu\">\r\n          <ul class=\"nav--block  nav--stacked\">\r\n            <li><a href=\"\">\r\n              Events Schedule\r\n              <span>short description desribing this item</span>\r\n            </a></li>\r\n            <li><a href=\"\">\r\n              Field Schedule\r\n              <span>short description desribing this item</span>\r\n            </a></li>\r\n          </ul>\r\n        </div>\r\n      </li>\r\n\r\n      <li>\r\n        <a href=\"\">Coaches &amp; Teams</a>\r\n        <div class=\"nav--dropdown--menu\">\r\n          <ul class=\"nav--block  nav--stacked\">\r\n            <li><a href=\"\">\r\n              Fields Map\r\n              <span>short description desribing this item</span>\r\n            </a></li>\r\n            <li><a href=\"\">\r\n              Practice Guidelines\r\n              <span>short description desribing this item</span>\r\n            </a></li>\r\n            <li><a href=\"\">\r\n              Reserve a Field\r\n              <span>short description desribing this item</span>\r\n            </a></li>\r\n            <li><a href=\"\">\r\n              Fees\r\n              <span>short description desribing this item</span>\r\n            </a></li>\r\n          </ul>\r\n        </div>\r\n      </li>\r\n\r\n      <li class=\"active\">\r\n        <a href=\"\">Directions</a>\r\n        <div class=\"nav--dropdown--menu\">\r\n          <ul class=\"nav--block  nav--stacked\">\r\n            <li><a href=\"\">\r\n              Get Directions\r\n            </a></li>\r\n            <li><a href=\"\">\r\n              Parking Guidelines\r\n            </a></li>\r\n          </ul>\r\n        </div>\r\n      </li>\r\n\r\n      <li>\r\n        <a href=\"\">About Us</a>\r\n        <div class=\"nav--dropdown--menu\">\r\n          <ul class=\"nav--block  nav--stacked\">\r\n            <li><a href=\"\">\r\n              About the LCSFA\r\n              <span>short description desribing this item</span>\r\n            </a></li>\r\n            <li><a href=\"\">\r\n              History\r\n              <span>short description desribing this item</span>\r\n            </a></li>\r\n            <li><a href=\"\">\r\n              Partners\r\n              <span>short description desribing this item</span>\r\n            </a></li>\r\n            <li><a href=\"\">\r\n              Board Members\r\n              <span>short description desribing this item</span>\r\n            </a></li>\r\n            <li><a href=\"\">\r\n              Operating Manual\r\n              <span>short description desribing this item</span>\r\n            </a></li>\r\n          </ul>\r\n        </div>\r\n      </li>\r\n\r\n      <li class=\"nav--icon\"><a href=\"\">Menu</a></li>\r\n      \r\n		</ul>\r\n\r\n	</div>\r\n</header>',NULL,1371511283,1,'n',0,'','n','n','o',0),(6,1,3,'index','y','webpage','',NULL,1368906288,1,'n',0,'','n','n','o',0),(7,1,4,'.page_centered','y','webpage','',NULL,1371511283,1,'n',0,'','n','n','o',0),(8,1,4,'.page_constructor','y','webpage','{embed=\"_common/.page_head\"\r\n  body_class=\"{embed:body_class}\"\r\n  page_title=\"{embed:page_title}\"\r\n}\r\n\r\n{embed=\"_common/.page_header\"\r\n  page_title=\"{embed:page_title}\"\r\n}\r\n\r\n{if segment_1 == \"\"}\r\n  {embed=\"home/.slider\"\r\n    page_title=\"{embed:page_title}\"\r\n  }\r\n{/if}\r\n\r\n<section class=\"page__main-content  content--alt-row\">\r\n  <div class=\"container  content-box\">\r\n    \r\n    {if segment_1}\r\n    <header class=\"page__title  content--full-width  page--use-divider\">\r\n      <h1>\r\n        {if {exp:segment_search keyword=\"/P\\d+/\" regex=\"yes\" segments=\"1\"}}\r\n          News &amp; Blog\r\n        {if:else}\r\n          {exp:low_title:channel channel_name=\"{segment_1}\"}\r\n        {/if}\r\n      </h1>\r\n    </header>\r\n    {/if}\r\n    \r\n    <div class=\"grid\">\r\n\r\n      <!-- map -->\r\n     <!--  <div class=\"grid__item  one-whole\">\r\n        <div class=\"content__column  content--full-width\">\r\n          <div class=\"content__item\">\r\n\r\n  <form action=\"http://maps.google.com/maps\" method=\"get\" target=\"_blank\">\r\nEnter your starting address:\r\n<input type=\"text\" name=\"saddr\" />\r\n<input type=\"hidden\" name=\"daddr\" value=\"Lehigh County Sports Fields, Allentown, PA\" />\r\n<input type=\"submit\" value=\"get directions\" />\r\n</form>\r\n            <div class=\"flexible-container\">\r\n              <iframe width=\"425\" height=\"350\" frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" src=\"https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Lehigh+County+Sports+Fields,+Allentown,+PA&amp;aq=0&amp;oq=lehigh+county+sports+fi&amp;sll=40.336681,-75.230642&amp;sspn=1.436207,2.359314&amp;ie=UTF8&amp;hq=Lehigh+County+Sports+Fields,+Allentown,+PA&amp;ll=40.581035,-75.546774&amp;spn=0.044713,0.073729&amp;t=m&amp;z=14&amp;iwloc=A&amp;cid=5598351534588151011&amp;output=embed\"></iframe>\r\n            </div>\r\n          </div>\r\n        </div>\r\n      </div> --><!--\r\n\r\n    --><div class=\"grid__item  {embed:main_span}\">\r\n         \r\n            {embed=\"{embed:target}\"\r\n              group_id=\"{embed:group_id}\"\r\n              limit=\"{embed:limit}\"\r\n              channel=\"{embed:channel}\"\r\n              category=\"{embed:category}\"\r\n              order_id=\"{embed:order_id}\"\r\n            }\r\n         \r\n      </div><!-- \r\n\r\n   -->{if embed:sidebar_span != \"\"}<div class=\"grid__item  {embed:sidebar_span}\">\r\n        <div class=\"page__sidebar\">\r\n          <div class=\"sidebar__item  content--banner-title\">\r\n            <h3>Field Schedule</h3>\r\n            Field Status: all open\r\n          </div>\r\n\r\n          <div class=\"sidebar__item  content--banner-title\">\r\n            <h3>Field Schedule</h3>\r\n            <p>Field Status: all open</p>\r\n          </div>\r\n\r\n          <div class=\"sidebar__item\">\r\n            \r\n       <!--  <iframe src=\"https://www.google.com/calendar/embed?showTitle=0&amp;showNav=0&amp;showDate=0&amp;showPrint=0&amp;showTabs=0&amp;showCalendars=0&amp;showTz=0&amp;mode=AGENDA&amp;height=300&amp;wkst=1&amp;bgcolor=%23ffffff&amp;src=lcsfasoccer%40gmail.com&amp;color=%23875509&amp;ctz=America%2FNew_York\" style=\" border-width:0 \" width=\"250\" height=\"300\" frameborder=\"0\" scrolling=\"no\"></iframe> -->\r\n\r\n          </div>\r\n        </div>\r\n      </div>{/if}\r\n\r\n    </div>\r\n  </div>\r\n</section>\r\n\r\n{embed=\"_common/.page_footer\"}',NULL,1371511283,1,'n',0,'','n','n','o',0),(9,1,4,'index','y','webpage','',NULL,1370797058,1,'n',0,'','n','n','o',0),(10,1,2,'.slider','y','webpage','<section class=\"flex-container\">\r\n  <div class=\"flexslider  page--use-divider\">\r\n    <ul class=\"slides\">\r\n      {exp:channel:entries channel=\"news\" {global:param_disable_default} }\r\n      {if featured_slide_on}\r\n      {featured_slide limit=\"1\"}\r\n       <li>\r\n        <a href=\"{path=SITE_INDEX}{channel_short_name}/{url_title}/{entry_id}\" title=\"Click to read: {title}\">\r\n          <img src=\"{image:url}\" />\r\n        \r\n        <article class=\"flex-caption  {caption_location}\">\r\n          <h2 class=\"flex-caption-title\">{title}</h2>\r\n          {if image:description}<div class=\"flex-caption-body\">\r\n            {image:description}\r\n          </div>{/if}\r\n        </article>\r\n        </a>\r\n      </li>\r\n      {/featured_slide}\r\n      {/if}\r\n      {/exp:channel:entries}\r\n    </ul>\r\n  </div>\r\n</section>',NULL,1370797058,1,'n',0,'','n','n','o',0),(11,1,2,'.content','y','webpage','<section class=\"page__main-content  content--alt-row\">\r\n\r\n <div class=\"container  content-box\">\r\n\r\n<header class=\"page__title  content--full-width  page--use-divider\">\r\n  <h1>Announcements & other cool stuff</h1>\r\n</header>\r\n    \r\n    <div class=\"grid\">\r\n\r\n      <div class=\"grid__item  one-whole\">\r\n        <div class=\"content__item  content--full-width\">\r\n\r\n          <div class=\"grid__item  one-third  palm-one-whole  text-center\">\r\n              <h3>About the LCSFA</h3>\r\n              Get directions to the fields.\r\n              <a href=\"\" title=\"\">image</a>\r\n          </div><!--\r\n\r\n        --><div class=\"grid__item  one-third  palm-one-whole  text-center\">\r\n              <h3>Get Directions</h3>\r\n              Get directions to the fields.\r\n              <a href=\"\" title=\"\">image</a>\r\n          </div><!--\r\n\r\n       --><div class=\"grid__item  one-third  palm-one-whole  text-center\">\r\n             <h3>Schedule Field Time</h3>\r\n              <a href=\"\" title=\"\">image</a>\r\n          </div><!--\r\n\r\n    --></div>\r\n    </div><!--\r\n     \r\n  --><div class=\"grid__item  two-thirds  palm-one-whole\">\r\n        <div class=\"content__item  content--no-bg\">\r\n          \r\n          <article class=\"article__summary  summary--announce\">\r\n            \r\n              <span class=\"article__type\">Announcement</span>\r\n              <h1 class=\"article__title\">LCSFA has a New Website!</h1>\r\n           \r\n            <span class=\"article__pub-date\">\r\n              <span>Published on May 5th, 2013</span>\r\n            </span>\r\n            \r\n            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n            \r\n\r\n            <footer class=\"article__footer cf\">\r\n            \r\n              <div class=\"float-left\">\r\n                <a href=\"\" title=\"\">See all announcements</a>\r\n              </div><div class=\"float-right\">\r\n                <a href=\"\" title=\"\">Continue Reading ... </a>\r\n              </div>\r\n            \r\n            </footer>\r\n          </article>\r\n\r\n          <article class=\"article__summary  summary--event\">\r\n            \r\n              <span class=\"article__type\">Event</span>\r\n              <h1 class=\"article__title\">LCSFA has a New Website!</h1>\r\n           \r\n            <span class=\"article__pub-date\">\r\n              <span>Published on May 5th, 2013</span>\r\n            </span>\r\n            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n             <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n            \r\n\r\n            <footer class=\"article__footer cf\">\r\n              <div class=\"float-left\">\r\n                <a href=\"\" title=\"\">See all announcements</a>\r\n              </div>\r\n              <div class=\"float-right\">\r\n                <a href=\"\" title=\"\">Continue Reading ... </a>\r\n              </div>\r\n            </footer>\r\n\r\n          </article>\r\n\r\n        </div>\r\n      </div><!-- \r\n\r\n   --><div class=\"grid__item  one-third  palm-one-whole\">\r\n        <div class=\"content__item  content--banner-title\">\r\n          <h3>Field Schedule</h3>\r\n          Field Status: all open\r\n        </div>\r\n\r\n        <div class=\"content__item  content--banner-title\">\r\n          <h3>Field Schedule</h3>\r\n          <p>Field Status: all open</p>\r\n        </div>\r\n\r\n        <div class=\"content__item\">\r\n          \r\n      <iframe src=\"https://www.google.com/calendar/embed?showTitle=0&amp;showNav=0&amp;showDate=0&amp;showPrint=0&amp;showTabs=0&amp;showCalendars=0&amp;showTz=0&amp;mode=AGENDA&amp;height=300&amp;wkst=1&amp;bgcolor=%23ffffff&amp;src=lcsfasoccer%40gmail.com&amp;color=%23875509&amp;ctz=America%2FNew_York\" style=\" border-width:0 \" width=\"250\" height=\"300\" frameborder=\"0\" scrolling=\"no\"></iframe>\r\n\r\n        </div>\r\n      </div><!--\r\n\r\n   --><div class=\"grid__item  one-whole\">\r\n        <div class=\"content__item\">\r\n          content2\r\n        </div>\r\n      </div>\r\n\r\n    </div>\r\n  </div>\r\n</section>',NULL,1370797058,1,'n',0,'','n','n','o',0),(12,1,2,'.index','y','webpage','{exp:channel:entries channel=\"{embed:channel}\" limit=\"{embed:limit}\" category=\"{embed:category}\" paginate=\"bottom\" {global:param_disable_default}}\r\n{if featured_slide_on != \"y\"}\r\n\r\n<div class=\"content__column\">\r\n  {exp:switchee variable=\"{channel_name}\" parse=\"inward\"}\r\n    {case value=\"news\" default=\"yes\"}\r\n        <div class=\"content__item  content--has-article-type\">\r\n          <article class=\"article__summary \">     \r\n            \r\n            <span class=\"article__type\">{channel}</span>\r\n            \r\n            {if segment_3}\r\n            <h2 class=\"article__title\">{title}</h2>\r\n            {if:else}\r\n            <a href=\"{path=SITE_INDEX}{channel_short_name}/{url_title}/{entry_id}\" title=\"Click to read: {title}\">\r\n              <h2 class=\"article__title\">{title}</h2>\r\n            </a>\r\n            {/if}\r\n\r\n            <span class=\"article__pub-date\">\r\n              <span>Published on {entry_date format=\"%F %j%S, %Y\"}</span>\r\n            </span>\r\n           \r\n            {main_content_body}\r\n\r\n           <!--  <footer class=\"article__footer cf\">\r\n              <div class=\"float-left\">\r\n                <a href=\"\" title=\"\">See all announcements</a>\r\n              </div><div class=\"float-right\">\r\n                <a href=\"\" title=\"\">Continue Reading ... </a>\r\n              </div>\r\n            </footer> -->\r\n\r\n          </article>\r\n        </div><!-- /.content__item  -->\r\n    {/case}\r\n    {case value=\"events\"}\r\n        <div class=\"content__item  content--has-article-type\">\r\n          <article class=\"article__summary \">     \r\n            \r\n            <span class=\"article__type\">{channel}</span>\r\n            \r\n            {if segment_3}\r\n            <h2 class=\"article__title\">{title}</h2>\r\n            {if:else}\r\n            <a href=\"{path=SITE_INDEX}{channel_short_name}/{url_title}/{entry_id}\" title=\"Click to read: {title}\">\r\n              <h2 class=\"article__title\">{title}</h2>\r\n            </a>\r\n            {/if}\r\n           \r\n            <table class=\"table--bordered  table--data  table--alt-style\">\r\n              <tr>\r\n                <th>Date</th>\r\n                <td>{if event__date}{event__date format=\"%F %j%S, %Y\"}{if:else}TBD{/if}</td>\r\n              </tr>\r\n              <tr>\r\n                <th>Time</th>\r\n                <td>\r\n                  {if event__start-time}{event__start-time format=\"%g:%i%a\"}{if:else}TBD{/if}\r\n                  {if event__end-time} to {event__end-time format=\"%g:%i%a\"}{/if}\r\n                </td>\r\n              </tr>\r\n              {event__location}\r\n              {if location_name}\r\n              <tr>\r\n                <th>Location</th>\r\n                <td>\r\n                  {if location_website}\r\n                    <a href=\"{location_website}\" target=\"_blank\" title=\"Open {location_name} website in new window\"><strong>{location_name}</strong></a>\r\n                  {if:else}\r\n                    <strong>{location_name}</strong>\r\n                  {/if}\r\n                  {location_address}\r\n                    {if street}\r\n                      <br>{street}<br>\r\n                      {if street_2}{street_2}<br>{/if}\r\n                      {city}, {region} {postal_code}<br>\r\n                      <a href=\"{location_address:map_url source=\"google\" include_name=\"yes\"}\" target=\"_blank\">View Map (opens in new window)</a>\r\n                    {/if}\r\n                  {/location_address}\r\n                </td>\r\n              </tr>\r\n              {/event__location}\r\n              {event__sponsors}\r\n              {if sponsor_name}\r\n              <tr>\r\n                <th>Event Sponsor</th>\r\n                <td>\r\n                  {if sponsor_website}\r\n                    <a href=\"{sponsor_website}\" target=\"_blank\" title=\"Open {sponsor_name} website in new window\"><strong>{sponsor_name}</strong></a>\r\n                  {if:else}\r\n                    <strong>{sponsor_name}</strong>\r\n                  {/if}\r\n                  {if sponsor_image}\r\n                    {if sponsor_website}\r\n                      <a href=\"{sponsor_website}\" target=\"_blank\" title=\"Open {sponsor_name} website in new window\"><img src=\"{sponsor_image:resized_150w}\" class=\"float-right\"><a>\r\n                    {if:else}\r\n                      <img src=\"{sponsor_image:resized_150w}\" class=\"float-right\">\r\n                    {/if}\r\n                </td>\r\n              </tr>\r\n              {/if}\r\n              {/event__sponsors}\r\n            </table>\r\n\r\n            {event__detail} \r\n\r\n           <!--  <footer class=\"article__footer cf\">\r\n              <div class=\"float-left\">\r\n                <a href=\"\" title=\"\">See all announcements</a>\r\n              </div><div class=\"float-right\">\r\n                <a href=\"\" title=\"\">Continue Reading ... </a>\r\n              </div>\r\n            </footer> -->\r\n            \r\n          </article>\r\n        </div><!-- /.content__item  -->\r\n    {/case}\r\n  {/exp:switchee}\r\n</div><!-- /.content__column  -->\r\n{/if}\r\n\r\n{paginate}{pagination_links}\r\n<div class=\"content__column\">\r\n  <ol class=\"nav pagination\">\r\n      {first_page}<li class=\"pagination__first\"><a href=\"{pagination_url}\">First</a></li>{/first_page}<!--\r\n   -->{previous_page}<li class=\"pagination__prev\"><a href=\"{pagination_url}\">Previous</a></li>{/previous_page}<!--\r\n   -->{page}<li{if current_page} class=\"current\"{/if}><a href=\"{pagination_url}\">{pagination_page_number}</a></li>{/page}<!--\r\n   -->{next_page}<li class=\"pagination__next\"><a href=\"{pagination_url}\">Next</a></li>{/next_page}<!--\r\n   -->{last_page}<li class=\"pagination__last\"><a href=\"{pagination_url}\">Last</a></li>{/last_page}\r\n  </ol>\r\n</div>\r\n{/pagination_links}{/paginate}\r\n\r\n{/exp:channel:entries}\r\n\r\n{!-- \r\n\r\n<div class=\"content__column content--pop-it\">\r\n  <div class=\"content__item\">\r\n    <article class=\"article__summary \">\r\n    \r\n      \r\n      {exp:channel:entries}\r\n\r\n      title: {title}\r\n      {use_as_featured}\r\n      {image:url}\r\n      {/use_as_featured}\r\n      {/exp:channel:entries}\r\n\r\n      <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n      \r\n\r\n      <footer class=\"article__footer cf\">\r\n      \r\n        <div class=\"float-left\">\r\n          <a href=\"\" title=\"\">See all announcements</a>\r\n        </div><div class=\"float-right\">\r\n          <a href=\"\" title=\"\">Continue Reading ... </a>\r\n        </div>\r\n      \r\n      </footer>\r\n    </article>\r\n  </div>\r\n</div>\r\n\r\n<div class=\"content__column\">\r\n<div class=\"content__item  content--no-bg\">\r\n  <article class=\"article__summary  summary--paper-layers  summary--announce\">\r\n    \r\n    <span class=\"article__type\">Announcement</span>\r\n    <h1 class=\"article__title\">LCSFA has a New Website!</h1>\r\n   \r\n    <span class=\"article__pub-date\">\r\n      <span>Published on May 5th, 2013</span>\r\n    </span>\r\n    \r\n    {exp:channel:entries}\r\n\r\n    title: {title}\r\n    {use_as_featured}\r\n    {image:url}\r\n    {/use_as_featured}\r\n    {/exp:channel:entries}\r\n\r\n    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n    \r\n\r\n    <footer class=\"article__footer cf\">\r\n    \r\n      <div class=\"float-left\">\r\n        <a href=\"\" title=\"\">See all announcements</a>\r\n      </div><div class=\"float-right\">\r\n        <a href=\"\" title=\"\">Continue Reading ... </a>\r\n      </div>\r\n    \r\n    </footer>\r\n  </article>\r\n</div>\r\n</div>\r\n\r\n--}',NULL,1371511283,1,'n',0,'','n','n','o',0),(13,1,5,'.view_archive','y','webpage','',NULL,1370797028,1,'n',0,'','n','n','o',0),(14,1,5,'.view_detail','y','webpage','',NULL,1370797028,1,'n',0,'','n','n','o',0),(15,1,5,'index','y','webpage','{embed=\"_layouts/.page_constructor\"\r\n	target=\"{segment_1}/.index\"\r\n		\r\n		{if segment_3}\r\n		page_title=\"{exp:low_title:entry entry_id=\'{segment_3}\'}\"\r\n		{if:else}\r\n		page_title=\"News &amp; Announcements\"\r\n		{/if}\r\n\r\n	sidebar=\"_sidebar/.default\"\r\n	main_span=\"two-thirds  palm-one-whole\" \r\n	sidebar_span=\"one-third  palm-one-whole\"\r\n	body_class=\"default\"\r\n	\r\n	channel=\"{segment_1}\"\r\n	category=\"\"\r\n	limit=\"5\"\r\n}',NULL,1371511283,1,'n',0,'','n','n','o',0),(16,1,6,'index','y','webpage','',NULL,1370797028,1,'n',0,'','n','n','o',0),(17,1,5,'.index','y','webpage','{exp:channel:entries channel=\"{embed:channel}\" limit=\"{embed:limit}\" category=\"{embed:category}\" paginate=\"bottom\" {global:param_disable_default}}\r\n\r\n<div class=\"content__column\">\r\n  <div class=\"content__item  content--has-article-type\">\r\n    <article class=\"article__summary \">     \r\n      \r\n      <span class=\"article__type\">{channel}</span>\r\n      \r\n      {if segment_3}\r\n      <h2 class=\"article__title\">{title}</h2>\r\n      {if:else}\r\n      <a href=\"{path=SITE_INDEX}{channel_short_name}/{url_title}/{entry_id}\" title=\"Click to read: {title}\">\r\n        <h2 class=\"article__title\">{title}</h2>\r\n      </a>\r\n      {/if}\r\n\r\n      <span class=\"article__pub-date\">\r\n        <span>Published on {entry_date format=\"%F %j%S, %Y\"}</span>\r\n      </span>\r\n     \r\n      {main_content_body}\r\n\r\n     <!--  <footer class=\"article__footer cf\">\r\n        <div class=\"float-left\">\r\n          <a href=\"\" title=\"\">See all announcements</a>\r\n        </div><div class=\"float-right\">\r\n          <a href=\"\" title=\"\">Continue Reading ... </a>\r\n        </div>\r\n      </footer> -->\r\n\r\n    </article>\r\n  </div><!-- /.content__item  -->\r\n</div><!-- /.content__column  -->\r\n\r\n{paginate}{pagination_links}\r\n<div class=\"content__column\">\r\n  <ol class=\"nav pagination\">\r\n      {first_page}<li class=\"pagination__first\"><a href=\"{pagination_url}\">First</a></li>{/first_page}<!--\r\n   -->{previous_page}<li class=\"pagination__prev\"><a href=\"{pagination_url}\">Previous</a></li>{/previous_page}<!--\r\n   -->{page}<li{if current_page} class=\"current\"{/if}><a href=\"{pagination_url}\">{pagination_page_number}</a></li>{/page}<!--\r\n   -->{next_page}<li class=\"pagination__next\"><a href=\"{pagination_url}\">Next</a></li>{/next_page}<!--\r\n   -->{last_page}<li class=\"pagination__last\"><a href=\"{pagination_url}\">Last</a></li>{/last_page}\r\n  </ol>\r\n</div>\r\n{/pagination_links}{/paginate}\r\n\r\n{/exp:channel:entries}',NULL,1371509261,1,'n',0,'','n','n','o',0),(18,1,3,'.page_head','y','webpage','<!doctype html>\r\n\r\n<!--\r\n                       _,aaadP\"\"\"\"\"\"Ybaaaa,,_ \r\n                   ,adP,__,,,aaaadP\"\"\"\"\"Y888888a,_ \r\n                ,a8888888P\"\'\'             \"Y8888888b, \r\n             _a888888888\"                   `Y88888888b, \r\n           ,d888888888P\'                       \"888888888b, \r\n         ,88888888P\"Y8,                       ,P\'   `\"\"Y888b, \r\n       ,d8888P\"\'     \"Ya,                    ,P\'         `Ya`b, \r\n      ,P88\"\'           `Ya,                 ,P\'            `b`Yi \r\n     d\",P                `\"Y,              ,P\'              `Y \"i \r\n   ,P\' P\'                   \"888888888888888b                `b \"i \r\n  ,P\' d\'                    d8888888888888888b                `b `b \r\n  d\' d\'                    ,888888888888888888b                I, Y, \r\n ,f ,f                    ,88888888888888888888b               `b, b \r\n d\' d\'                    d888888888888888888888b              ,88,I \r\n,P  8                    ,88888888888888888888888b,_          ,d8888 \r\nd\'  8,                   d8888888888888888888888P\'`\"Ya,_     ,d88888 \r\n8  d88b,             ,adP\"\"Y888888888888888888P\'      `\"\"Ya, d88888P \r\n8 ,88888b,       ,adP\"\'     `\"Y8888888888888\"\'             `\"888888I \r\nY,88888888b, ,adP\"\'             \"\"Y888888P\"                  888888\' \r\n`888888888888P\'                     \"\"YP\"                    888888 \r\n I88888888888                          8                     88888I \r\n `Y8888888888                          8                     88888\' \r\n  `Y888888888        Lehigh County     8                     8888I \r\n   `Y88888888        Sports Fields     8                     8P\"8\' \r\n    `Y8888888,                         8                   ,d\',d\' \r\n     `b\"\"\"\"Y8b                         8                 ,d\" ,d\' \r\n       \"b,   \"Y,                       8               ,P\" ,d\" \r\n         \"b,   \"Ya,_                 ,d88ba,,___   _,aP\" ,P\" \r\n           \"Ya_   \"\"Ya,_       _,,ad88888888888888P\"\' _,d\" \r\n             `\"Ya_    \"\"Yaaad88888888888888888888P _,d\"\' \r\n                 `\"Ya,_     \"Y888888888888888888P\",d\"\' \r\n                    `\"\"Ya,__`Y888888888888888P\"\"\" \r\n                         ``\"\"\"\"\"\"\"\"\"\"\"\"\"\'\' \r\n-->\r\n\r\n<!--[if lt IE 7]> <html class=\"no-js lt-ie9 lt-ie8 lt-ie7\"> <![endif]-->\r\n<!--[if IE 7]>    <html class=\"no-js lt-ie9 lt-ie8\"> <![endif]-->\r\n<!--[if IE 8]>    <html class=\"no-js lt-ie9\"> <![endif]-->\r\n<!--[if gt IE 8]><!--> <html class=\"no-js\"> <!--<![endif]-->\r\n<head>\r\n	<meta charset=\"utf-8\">\r\n	<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge, chrome=1\">\r\n	<meta name=\"revisit-after\" content=\"5 days\" />\r\n	<meta name=\"robots\" content=\"index,follow,archive\" />\r\n	<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n\r\n	<!-- prefetch dns -->\r\n	<link rel=\"dns-prefetch\" href=\"//www.google-analytics.com\">	\r\n  <link rel=\"dns-prefetch\" href=\"//ajax.googleapis.com\"> \r\n  <link rel=\"dns-prefetch\" href=\"//maps.google.com\">\r\n\r\n	<title>{if embed:page_title}{embed:page_title} | {/if}Lehigh County Sports Fields</title>\r\n	<meta name=\"description\" content=\"\">\r\n	<meta name=\"keywords\" content=\"\">\r\n\r\n	<!-- <link rel=\"Shortcut Icon\" href=\"/favicon.ico\"/> -->\r\n	<link rel=\"author\" type=\"text/plain\" href=\"/humans.txt\" />\r\n	<!-- <link rel=\"apple-touch-icon-precomposed\" href=\"/apple-touch-icon.png\"> -->\r\n	<!-- @TODO other icons -->\r\n		\r\n	<link rel=\"stylesheet\" media=\"screen\" href=\"{exp:cache_buster file=\'/themes/site_themes/a/css/style.css\' separator=\'?\'}\">\r\n	<link rel=\"stylesheet\" media=\"print\" href=\"{exp:cache_buster file=\'/themes/site_themes/a/css/print.css\' separator=\'?\'}\">\r\n\r\n	<!--[if lt IE 9]>\r\n		<script src=\"//html5shiv.googlecode.com/svn/trunk/html5.js\"></script>\r\n		<script>window.html5 || document.write(\'<script src=\"{global:theme_url}/js/vendor/html5shiv.js\"><\\/script>\')</script>\r\n	<![endif]-->\r\n</head>\r\n<body class=\"{embed:body_class}\">\r\n<!--[if lt IE 7]><p class=\"chromeframe\">You are using an <strong>outdated</strong> browser. Please <a href=\"http://browsehappy.com/\">upgrade your browser</a> or <a href=\"http://www.google.com/chromeframe/?redirect=true\">activate Google Chrome Frame</a> to improve your experience.</p><![endif]-->',NULL,1371509569,1,'n',0,'','n','n','o',0),(19,1,3,'.page_header','y','webpage','<!-- \r\n<section class=\"alert\">\r\n  <div class=\"container\">\r\n    Today\'s game is cancelled!\r\n  </div>\r\n</section> -->\r\n\r\n<!-- include js cloned ul for mobile menu -->\r\n\r\n<header class=\"page-header\">\r\n	<div class=\"container  content-box\">\r\n	\r\n		<a href=\"{path=SITE_INDEX}\" class=\"page-logo\">\r\n			Lehigh County Sports Fields\r\n		</a>\r\n\r\n    <!-- mobile menu item -->\r\n    <ul class=\"nav  nav--top  nav--top-portable  nav--dropdown  list--inline\">   \r\n      <li class=\"nav--icon\"><a id=\"mobile__menu-selector\" href=\"#\">Menu</a></li>\r\n    </ul>\r\n\r\n    <!-- main nav items -->\r\n    <!-- <ul class=\"nav  nav--top  nav--portable  nav--dropdown  list--inline cf\">\r\n      \r\n      <li{if segment_1 == \"news\" || segment_1 == \"\"} class=\"active\"{/if}>\r\n        <a href=\"{path=news}\">News &amp; Blog</a>\r\n      </li>\r\n\r\n      <li{if segment_1 == \"news\" || segment_1 == \"\"} class=\"active\"{/if}>\r\n        <a href=\"{path=news}\">News &amp; Blog</a>\r\n        <div class=\"nav--dropdown--menu cf\">\r\n          <ul class=\"nav--block  nav--stacked\">\r\n            {exp:channel:categories channel=\"news\" show_empty=\"yes\" style=\"linear\"}\r\n            <li><a href=\"{path=news}\">\r\n              {category_name}\r\n              {if category_description}<span>short description desribing this item</span>{category_description}{/if}\r\n            </a></li>\r\n            {/exp:channel:categories}\r\n          </ul>\r\n        </div>\r\n      </li>\r\n\r\n      <li{if segment_1 == \"calendar\"} class=\"active\"{/if}>\r\n        <a href=\"\">Calendar</a>\r\n        <div class=\"nav--dropdown--menu cf\">\r\n          <ul class=\"nav--block  nav--stacked\">\r\n            <li><a href=\"\">\r\n              Events Schedule\r\n              <span>short description desribing this item</span>\r\n            </a></li>\r\n            <li><a href=\"\">\r\n              Field Schedule\r\n              <span>short description desribing this item</span>\r\n            </a></li>\r\n          </ul>\r\n        </div>\r\n      </li>\r\n\r\n    </ul> -->\r\n\r\n    <ul class=\"nav  nav--top  nav--portable  nav--dropdown  list--inline\">\r\n			\r\n      <li{if segment_1 == \"news\" || segment_1 == \"\"} class=\"active\"{/if}>\r\n        <a href=\"{path=news}\">News &amp; Blog</a>\r\n        <div class=\"nav--dropdown--menu cf\">\r\n          <ul class=\"nav--block  nav--stacked\">\r\n            {exp:channel:categories channel=\"news\" show_empty=\"yes\" style=\"linear\"}\r\n            <li><a href=\"{path=news}\">\r\n              {category_name}\r\n              {if category_description}<span>short description desribing this item</span>{category_description}{/if}\r\n            </a></li>\r\n            {/exp:channel:categories}\r\n          </ul>\r\n        </div>\r\n      </li>\r\n\r\n      <li{if segment_1 == \"calendar\"} class=\"active\"{/if}>\r\n        <a href=\"\">Calendar</a>\r\n        <div class=\"nav--dropdown--menu cf\">\r\n          <ul class=\"nav--block  nav--stacked\">\r\n            <li><a href=\"\">\r\n              Events Schedule\r\n              <span>short description desribing this item</span>\r\n            </a></li>\r\n            <li><a href=\"\">\r\n              Field Schedule\r\n              <span>short description desribing this item</span>\r\n            </a></li>\r\n          </ul>\r\n        </div>\r\n      </li>\r\n\r\n      <li{if segment_1 == \"info\"} class=\"active\"{/if}>\r\n        <a href=\"\">Coaches &amp; Teams</a>\r\n        <div class=\"nav--dropdown--menu cf\">\r\n          <ul class=\"nav--block  nav--stacked\">\r\n            <li><a href=\"\">\r\n              Fields Map\r\n              <span>short description desribing this item</span>\r\n            </a></li>\r\n            <li><a href=\"\">\r\n              Practice Guidelines\r\n              <span>short description desribing this item</span>\r\n            </a></li>\r\n            <li><a href=\"\">\r\n              Reserve a Field\r\n              <span>short description desribing this item</span>\r\n            </a></li>\r\n            <li><a href=\"\">\r\n              Fees\r\n              <span>short description desribing this item</span>\r\n            </a></li>\r\n          </ul>\r\n        </div>\r\n      </li>\r\n\r\n      <li{if segment_1 == \"directions\"} class=\"active\"{/if}>\r\n        <a href=\"\">Directions</a>\r\n        <div class=\"nav--dropdown--menu cf\">\r\n          <ul class=\"nav--block  nav--stacked\">\r\n            <li><a href=\"\">\r\n              Get Directions\r\n            </a></li>\r\n            <li><a href=\"\">\r\n              Parking Guidelines\r\n            </a></li>\r\n          </ul>\r\n        </div>\r\n      </li>\r\n\r\n      <li{if segment_1 == \"about\"} class=\"active\"{/if}>\r\n        <a href=\"\">About Us</a>\r\n        <div class=\"nav--dropdown--menu cf\">\r\n          <ul class=\"nav--block  nav--stacked\">\r\n            <li><a href=\"\">\r\n              About the LCSFA\r\n              <span>short description desribing this item</span>\r\n            </a></li>\r\n            <li><a href=\"\">\r\n              History\r\n              <span>short description desribing this item</span>\r\n            </a></li>\r\n            <li><a href=\"\">\r\n              Partners\r\n              <span>short description desribing this item</span>\r\n            </a></li>\r\n            <li><a href=\"\">\r\n              Board Members\r\n              <span>short description desribing this item</span>\r\n            </a></li>\r\n            <li><a href=\"\">\r\n              Operating Manual\r\n              <span>short description desribing this item</span>\r\n            </a></li>\r\n          </ul>\r\n        </div>\r\n      </li>\r\n\r\n		</ul>\r\n\r\n	</div>\r\n</header>',NULL,1371509569,1,'n',0,'','n','n','o',0),(20,1,7,'.index','y','webpage','{exp:channel:entries channel=\"{embed:channel}\" limit=\"{embed:limit}\" category=\"{embed:category}\" paginate=\"bottom\" {global:param_disable_default}}\r\n\r\n<div class=\"content__item  content--has-article-type\">\r\n  <article class=\"article__summary \">     \r\n    \r\n    <span class=\"article__type\">{channel}</span>\r\n    \r\n    {if segment_3}\r\n    <h2 class=\"article__title\">{title}</h2>\r\n    {if:else}\r\n    <a href=\"{path=SITE_INDEX}{channel_short_name}/{url_title}/{entry_id}\" title=\"Click to read: {title}\">\r\n      <h2 class=\"article__title\">{title}</h2>\r\n    </a>\r\n    {/if}\r\n   \r\n    <table class=\"table--bordered  table--data  table--alt-style\">\r\n      <tr>\r\n        <th>Date</th>\r\n        <td>{if event__date}{event__date format=\"%F %j%S, %Y\"}{if:else}TBD{/if}</td>\r\n      </tr>\r\n      <tr>\r\n        <th>Time</th>\r\n        <td>\r\n          {if event__start-time}{event__start-time format=\"%g:%i%a\"}{if:else}TBD{/if}\r\n          {if event__end-time} to {event__end-time format=\"%g:%i%a\"}{/if}\r\n        </td>\r\n      </tr>\r\n      {event__location}\r\n      {if location_name}\r\n      <tr>\r\n        <th>Location</th>\r\n        <td>\r\n          {if location_website}\r\n            <a href=\"{location_website}\" target=\"_blank\" title=\"Open {location_name} website in new window\"><strong>{location_name}</strong></a>\r\n          {if:else}\r\n            <strong>{location_name}</strong>\r\n          {/if}\r\n          {location_address}\r\n            {if street}\r\n              <br>{street}<br>\r\n              {if street_2}{street_2}<br>{/if}\r\n              {city}, {region} {postal_code}<br>\r\n              <a href=\"{location_address:map_url source=\"google\" include_name=\"yes\"}\" target=\"_blank\">View Map (opens in new window)</a>\r\n            {/if}\r\n          {/location_address}\r\n        </td>\r\n      </tr>\r\n      {/event__location}\r\n      {event__sponsors}\r\n      {if sponsor_name}\r\n      <tr>\r\n        <th>Event Sponsor</th>\r\n        <td>\r\n          {if sponsor_website}\r\n            <a href=\"{sponsor_website}\" target=\"_blank\" title=\"Open {sponsor_name} website in new window\"><strong>{sponsor_name}</strong></a>\r\n          {if:else}\r\n            <strong>{sponsor_name}</strong>\r\n          {/if}\r\n          {if sponsor_image}\r\n            {if sponsor_website}\r\n              <a href=\"{sponsor_website}\" target=\"_blank\" title=\"Open {sponsor_name} website in new window\"><img src=\"{sponsor_image:resized_150w}\" class=\"float-right\"><a>\r\n            {if:else}\r\n              <img src=\"{sponsor_image:resized_150w}\" class=\"float-right\">\r\n            {/if}\r\n        </td>\r\n      </tr>\r\n      {/if}\r\n      {/event__sponsors}\r\n    </table>\r\n\r\n    {event__detail} \r\n    \r\n  </article>\r\n</div><!-- /.content__item  -->\r\n\r\n{paginate}{pagination_links}\r\n<div class=\"content__column\">\r\n  <ol class=\"nav pagination\">\r\n      {first_page}<li class=\"pagination__first\"><a href=\"{pagination_url}\">First</a></li>{/first_page}<!--\r\n   -->{previous_page}<li class=\"pagination__prev\"><a href=\"{pagination_url}\">Previous</a></li>{/previous_page}<!--\r\n   -->{page}<li{if current_page} class=\"current\"{/if}><a href=\"{pagination_url}\">{pagination_page_number}</a></li>{/page}<!--\r\n   -->{next_page}<li class=\"pagination__next\"><a href=\"{pagination_url}\">Next</a></li>{/next_page}<!--\r\n   -->{last_page}<li class=\"pagination__last\"><a href=\"{pagination_url}\">Last</a></li>{/last_page}\r\n  </ol>\r\n</div>\r\n{/pagination_links}{/paginate}\r\n\r\n{/exp:channel:entries}',NULL,1371511269,1,'n',0,'','n','n','o',0),(21,1,7,'index','y','webpage','{embed=\"_layouts/.page_constructor\"\r\n	target=\"{segment_1}/.index\"\r\n		\r\n		{if segment_3}\r\n		page_title=\"{exp:low_title:entry entry_id=\'{segment_3}\'}\"\r\n		{if:else}\r\n		page_title=\"Events\"\r\n		{/if}\r\n\r\n	sidebar=\"_sidebar/.default\"\r\n	main_span=\"two-thirds  palm-one-whole\" \r\n	sidebar_span=\"one-third  palm-one-whole\"\r\n	body_class=\"default\"\r\n	\r\n	channel=\"{segment_1}\"\r\n	category=\"\"\r\n	limit=\"5\"\r\n}',NULL,1371511269,1,'n',0,'','n','n','o',0),(22,1,3,'.page_footer','y','webpage','  Copyright &copy; {current_time format=\"%Y\"}\r\n\r\n  \"I heart websites!\" >> show:  This website is powered by Expression Engine. The <a href=\"https://github.com/seangravener/lcsportsfields.org/tree/master/www/themes/site_themes/a\">theme</a> and <a href=\"https://github.com/seangravener/lcsportsfields.org/tree/master/system/ee-templates/default_site\">templates for this website</a> are avialable for free.\r\n\r\n  <script src=\"//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js\"></script>\r\n  <script>window.jQuery || document.write(\'<script src=\"{global:theme_url}/js/vendor/jquery-1.10.0.min.js\"><\\/script>\')</script>\r\n  \r\n  <!-- plugins -->\r\n  <script src=\"{global:theme_url}/js/plugins/jquery.flexslider.min.js\"></script>\r\n  <script src=\"{global:theme_url}/js/plugins.js\"></script>\r\n  <script src=\"{global:theme_url}/js/main.js\"></script>\r\n  <!-- end scripts-->\r\n\r\n  <script>\r\n    // $(document).ready(function() {\r\n    //  $(\'#fitvids\').fitVids();\r\n    // });\r\n  </script>\r\n\r\n  <!-- GA, hombre\' -->\r\n  <script>\r\n    (function(i,s,o,g,r,a,m){i[\'GoogleAnalyticsObject\']=r;i[r]=i[r]||function(){\r\n    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\r\n    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\r\n    })(window,document,\'script\',\'//www.google-analytics.com/analytics.js\',\'ga\');\r\n\r\n    ga(\'create\', \'{global:google_analytics_key}\', \'lcsportsfields.org\');\r\n    ga(\'send\', \'pageview\');\r\n  </script>\r\n\r\n</body>\r\n</html>',NULL,1371511269,1,'n',0,'','n','n','o',0),(23,1,6,'.events','y','webpage','{exp:channel:entries channel=\"events\" limit=\"10\" {global:param_disable_default}}\r\n\r\n	events\r\n\r\n{/exp:channel:entries}',NULL,1371511801,1,'n',0,'','n','n','o',0),(24,1,2,'.hero-bar','y','webpage','',NULL,1371606741,1,'n',0,'','n','n','o',0);
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_upload_prefs`
--

LOCK TABLES `exp_upload_prefs` WRITE;
/*!40000 ALTER TABLE `exp_upload_prefs` DISABLE KEYS */;
INSERT INTO `exp_upload_prefs` VALUES (1,1,'Featured Photos','C:\\xampp\\htdocs\\lcsportsfields.org\\www/uploads/images/featured/','//local.lcsportsfields.org/uploads/images/featured/','img','','','','','','','','','','',NULL),(2,1,'Blog Uploads','C:\\xampp\\htdocs\\lcsportsfields.org\\www/uploads/blog/','/uploads/blog/','img','','','','','','','','','','',NULL),(3,1,'Logos','C:\\xampp\\htdocs\\lcsportsfields.org\\www/uploads/images/logos/','/uploads/images/logos/','img','','','','','','','','','','',NULL);
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

-- Dump completed on 2013-06-22 23:54:53
