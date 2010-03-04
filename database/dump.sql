-- MySQL dump 10.13  Distrib 5.1.41, for debian-linux-gnu (i486)
--
-- Host: localhost    Database: e-marsa
-- ------------------------------------------------------
-- Server version	5.1.41-3

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
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT '1',
  `class` text,
  `name` text,
  `path` text,
  `settings` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content`
--

LOCK TABLES `content` WRITE;
/*!40000 ALTER TABLE `content` DISABLE KEYS */;
INSERT INTO `content` VALUES (1,1,0,NULL,'Корневой раздел','/','a:1:{s:8:\"security\";a:1:{s:3:\"ALL\";a:2:{s:5:\"order\";s:10:\"allow_deny\";s:4:\"acts\";a:1:{i:0;a:2:{s:3:\"act\";s:8:\"AllowAll\";s:3:\"val\";s:0:\"\";}}}}}');
/*!40000 ALTER TABLE `content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content_support_tables`
--

DROP TABLE IF EXISTS `content_support_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content_support_tables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_id` int(11) DEFAULT NULL,
  `dataset_id` int(11) DEFAULT NULL,
  `unique` int(11) DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content_support_tables`
--

LOCK TABLES `content_support_tables` WRITE;
/*!40000 ALTER TABLE `content_support_tables` DISABLE KEYS */;
/*!40000 ALTER TABLE `content_support_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataset`
--

DROP TABLE IF EXISTS `dataset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `refcount` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataset`
--

LOCK TABLES `dataset` WRITE;
/*!40000 ALTER TABLE `dataset` DISABLE KEYS */;
/*!40000 ALTER TABLE `dataset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataset_assoc`
--

DROP TABLE IF EXISTS `dataset_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataset_assoc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order` int(11) DEFAULT NULL,
  `dataset` int(11) DEFAULT NULL,
  `datatype` int(11) DEFAULT NULL,
  `title` text,
  `field` text,
  `settings` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataset_assoc`
--

LOCK TABLES `dataset_assoc` WRITE;
/*!40000 ALTER TABLE `dataset_assoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `dataset_assoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datatypes`
--

DROP TABLE IF EXISTS `datatypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datatypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `class` text,
  `refcount` int(11) DEFAULT '0',
  `settings` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datatypes`
--

LOCK TABLES `datatypes` WRITE;
/*!40000 ALTER TABLE `datatypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `datatypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group`
--

DROP TABLE IF EXISTS `group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `default` int(11) DEFAULT NULL,
  `refcount` int(11) DEFAULT '0',
  `settings` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group`
--

LOCK TABLES `group` WRITE;
/*!40000 ALTER TABLE `group` DISABLE KEYS */;
/*!40000 ALTER TABLE `group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `sclass` text,
  `settings` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section` text,
  `name` text,
  `ident` text,
  `class` text,
  `used` int(11) DEFAULT '0',
  `settings` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'Системные','Максимальная длина логина пользователя','max_user_login_len','CSCNumber',1,'a:1:{s:5:\"value\";s:2:\"14\";}'),(2,'Системные','Максимальная длина имени пользователя','max_user_name_len','CSCNumber',1,'a:1:{s:5:\"value\";s:2:\"32\";}'),(3,'Системные','Максимальная длина пароля пользователя','max_user_passwd_len','CSCNumber',1,'a:1:{s:5:\"value\";s:2:\"16\";}'),(4,'Системные','Количество записей на странице &laquo;Пользователи и группы&raquo;','user_count','CSCNumber',1,'a:1:{s:5:\"value\";s:2:\"15\";}'),(5,'Системные','Блокировать сайт','site_lock','CSCCheckBox',1,'a:1:{s:5:\"value\";b:0;}'),(6,'Системные','Стартовый каталог','start_root','CSCText',1,'a:1:{s:5:\"value\";s:1:\"/\";}'),(7,'Олимпиады','Количество задач на странице редактирования','WT_problems_per_page','CSCNumber',1,'a:1:{s:5:\"value\";i:15;}'),(8,'Олимпиады','Количество задач на странице браузера','WT_problems_per_browser_page','CSCNumber',1,'a:1:{s:5:\"value\";i:10;}'),(9,'Олимпиады','Количество записей на странице статуса','WT_items_per_status_page','CSCNumber',1,'a:1:{s:5:\"value\";i:15;}');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storage`
--

DROP TABLE IF EXISTS `storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `path` text,
  `refcount` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storage`
--

LOCK TABLES `storage` WRITE;
/*!40000 ALTER TABLE `storage` DISABLE KEYS */;
/*!40000 ALTER TABLE `storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `templates`
--

DROP TABLE IF EXISTS `templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `text` longtext,
  `refcount` int(11) DEFAULT '0',
  `settings` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templates`
--

LOCK TABLES `templates` WRITE;
/*!40000 ALTER TABLE `templates` DISABLE KEYS */;
INSERT INTO `templates` VALUES (1,'Заготовки / Настраиваемый каталог','<div id=\"navigator\"><?=$pIFACE->GetName ();?></div>\n${subnav}\n<?php\n  // Все элементы в подкаталоге\n  $items = $pIFACE->GetCatalogueData (0 /* Глубина подкаталога */, 0 /* Идентификатор предка */);\n\n  // Указанный элемент\n  $item = $pIFACE->GetCatalogueItem (0 /* Глубина подкаталога */, 0 /* Идентификатор элемента */);\n?>\n',1,NULL),(2,'Статья / Нижний колонтитул','<?php\n  global $oldid, $pIFACE, $uid;\n  if ($oldid != \'\' && $pIFACE->GetAllowed (\'EDIT\')) {\n?>\n<div id=\"hr\"></div><div class=\"contentSub2\">\nВернуться к разделу &laquo;<a href=\".?wiki=history<?=(($uid!=\'\')?(\'&uid=\'.$uid):(\'\'));?>\">История</a>&raquo;\n<?php\n  }\n?>\n',1,NULL),(3,'Статьи / ЧаВо','<div id=\"navigator\"><?=$pIFACE->GetName ();?></div>\n${subnav}\n<?php\n  $sections = $pIFACE->GetCatalogueData (0, 0);\n  $all_items = array ();\n\n  println (\'<div class=\"FAQ\">\');\n\n  // Содержание\n  println (\'<div class=\"c\">\');\n  contentso (\'id=FAQ;\');\n  for ($i = 0, $n = count ($sections); $i < $n; $i++) {\n    $s = $sections[$i];\n    println (\'  <div class=\"cs\">\');\n    println (\'    <div class=\"title\">\'.($i+1).\'. <a href=\".#s_\'.$i.\'\">\'.htmlspecialchars ($s[\'title\']).\'</a></div>\');\n    $items = $pIFACE->GetCatalogueData (1, $s[\'uid\']);\n    for ($j = 0, $m = count ($items); $j < $m; $j++) {\n      $it = $items[$j];\n      println (\'    <div class=\"sub\">\'.($i+1).\'.\'.($j+1).\' <a href=\"#s_\'.$i.\'_q_\'.$j.\'\">\'.htmlspecialchars ($it[\'short\']).\'</a></div>\');\n    }\n    $all_items[$i] = $items;\n    println (\'  </div>\');\n  }\n  contentsc ();\n  println (\'</div>\');\n\n  // Собственно данные\n  for ($i = 0, $n = count ($sections); $i < $n; $i++) {\n    $s = $sections[$i];\n?>\n<div class=\"s\" id=\"s_<?=$i;?>\">\n  <div class=\"title\"><?=htmlspecialchars ($s[\'title\']);?></div>\n  <div class=\"list\">\n<?php\n   $items = $all_items[$i];\n    for ($j = 0, $m = count ($items); $j < $m; $j++) {\n      $it = $items[$j];\n?>\n      <div class=\"q<?=(($j==0)?(\' f\'):(\'\'));?>\" id=\"s_<?=$i;?>_q_<?=$j;?>\">\n        <div class=\"short\"><?=$it[\'short\'];?></div>\n<?=((trim ($it[\'full\'])!=\'\')?(\'        <div class=\"full\">Вопрос: \'.htmlspecialchars ($it[\'full\']).\'</div>\'.\"\\n\"):(\'\'));?>\n        <div class=\"ans\"><?=$it[\'answer\'];?></div>\n      <div>\n<?php } ?>\n  </div>\n</div>\n<?php  }\n  println (\'</div>\');\n?>\n',1,NULL),(4,'Статьи / Заглавная страница','<div style=\"border: 1px #777 solid; border-bottom: 0; margin-top: 8px;\">\r\n  <table class=\"clear\" width=\"99%\">\r\n    <tr>\r\n      <td style=\"padding: 8px 0;\">\r\n        <div style=\"background: #f9f9f9; padding: 8px; border: 1px #eee solid; margin-left: 8px;\">\r\n          <div style=\"width: 60%; background-color: #fff; padding: 4px 0;\">\r\n          <table class=\"clear\" width=\"100%\"><tr>\r\n<!--          <td align=\"center\" width=\"85\" valign=\"middle\"><img src=\"<?=config_get (\'document-root\');?>/pics/wt_l_s.gif\"></td> -->\r\n          <td style=\"text-align: left; padding-left: 16px;\">\r\n            <h2 style=\"margin: 0;\">Добро пожаловать в <a href=\"<?=config_get (\'document-root\');?>/articles/about\">E-Marsa</a>,</h2>\r\n            <h3 style=\"margin: 6px 0 0 0; font-weight: normal;\">on-line магазин компьютеров, оргтехники и комплектующих</h3>\r\n          </td>\r\n          </tr></table>\r\n          </div>\r\n        </div>\r\n      </td>\r\n      <td>&nbsp;</td>\r\n    </tr>\r\n  </table>\r\n</div>\r\n<table class=\"clear\" width=\"100%\">\r\n  <tr valign=\"top\">\r\n    <td width=\"40%\" style=\"padding-right: 4px;\">\r\n      <div class=\"lblock\"><div class=\"title tblue\"></div><div class=\"content\">\r\n<?php\r\n  $tpl = manage_template_by_name (\'Статьи / Заглавная страница / Левый колонтитул\');\r\n  print ($tpl->GetText ());\r\n?>\r\n        </div>\r\n      </div>\r\n    </td>\r\n    <td style=\"padding-left: 4px;\">\r\n<?php\r\n  $news=content_lookup (config_get (\'document-root\').\'/articles/news\');\r\n?>\r\n      <div class=\"lblock\"><div class=\"title tgreen\"></div><div class=\"content\"<?=(($news)?(\' style=\"padding-bottom: 12px;\"\'):(\'\'));?>>\r\n<?php\r\n  if (!$news) { ?>\r\n        <span class=\"contentSub\">Нет новостей</span>\r\n<?php  } else { $pIFACE=$news->GetData (); ?>\r\n        <h2 style=\"margin-top: 2px;\">Последние <a href=\"<?=config_get (\'document-root\');?>/articles/news\">новости</a>:</h2>\r\n<?php\r\n  $tpl = manage_template_by_name (\'Статьи / Заглавная страница / Список новостей\');\r\n  $pIFACE->OverwriteDisplayScript ($tpl->GetText ());\r\n  $pIFACE->Editor_DrawContent ();\r\n} ?>\r\n      </div>\r\n    </td>\r\n  </tr>\r\n</table>\r\n',1,NULL),(5,'Статьи / Заглавная страница / Левый колонтитул','<?php\r\n  global $login, $passwd;\r\n  if ($login!=\'\' && user_authorize (stripslashes ($login), stripslashes ($passwd))) {\r\n    redirect (config_get (\'http-document-root\'));\r\n  }\r\n  if (!user_authorized ()) {\r\n?>\r\n<form action=\".\" method=\"POST\">\r\n  <div class=\"form\">\r\n    <div class=\"content\">\r\n      <table class=\"clear\" width=\"100%\">\r\n        <tr>\r\n          <td width=\"80\">Ваш логин</td>\r\n          <td style=\"padding: 2px 0;\">\r\n            <div class=\"blockInput\"><input type=\"text\" class=\"txt\" id=\"login\" name=\"login\"></div>\r\n          </td>\r\n        </tr>\r\n        <tr>\r\n          <td>Пароль</td>\r\n          <td style=\"padding: 2px 0;\">\r\n            <table class=\"clear\" width=\"100%\">\r\n              <tr>\r\n                <td><div class=\"blockInput\"><input type=\"password\" class=\"txt\" name=\"passwd\"></div></td>\r\n                <td width=\"54\" align=\"right\"><button class=\"small\" style=\"width: 48px;\"  type=\"submit\">Войти</button></td>\r\n              </tr>\r\n            </table>\r\n          </td>\r\n        </tr>\r\n      </table>\r\n    </div>\r\n  </div>\r\n</form>\r\n<script language=\"JavaScript\" type=\"text/javascript\">\r\n  getElementById (\'login\').focus ();\r\n</script>\r\n<div id=\"hr\"></div>\r\n<?php } ?>\r\n<div style=\"text-align: justify;\">\r\nНаш сайт очень-очень хороший\r\n</div>\r\n',1,NULL),(6,'Статьи / Заглавная страница / Список новостей / Коротко о новости','<?php\n  $full = trim (html2txt (targ (\'full\')))!=\'\';\n  $edit = $pIFACE->GetAllowed (\'EDITINFO\');\n\n  $doc_root = config_get (\'document-root\');\n  $edit_link = $pIFACE->GetItemEditorLink (targ (\'id\'));\n  $edit_link = preg_replace (\'/\'.prepare_pattern ($doc_root).\'/i\',\n                             $doc_root.\'/articles/news\', $edit_link);\n\n  if ($full) {\n    $full = \'<span class=\"arr\"><a href=\"\'.$doc_root.\'/articles/news/text/?uid=\'.\n      targ (\'uid\').\'\">Подробнее...</a></span>\';\n  }\n\n  if ($edit) {\n    $acts = \'<td class=\"acts\">[<a href=\"\'.$edit_link.\'\" title=\"Редактировать секцию: \'.\n      targ (\'title\').\'\">Редактировать</a>]</td>\';\n  }\n\n  $img = targ (\'image\');\n?>\n<div id=\"entry\">\n  <div id=\"head\">\n    <table><tr><td><h3 style=\"margin: 0;\"><?=htmlspecialchars (targ (\'title\'));?></h3></td><?=$acts;?></tr></table>\n  </div>\n  <div id=\"text\"><?=(($img!=\'\')?(\'<img src=\"\'.$img.\'\">\'):(\'\'));?><?=fakecode (targ (\'short\'));?></div>\n  <table class=\"clear\" width=\"100%\"><tr>\n<?php\n  if ($full || $edit) {\n?>\n    <td width=\"96\"><div id=\"bottom\"><?=$full;?></div></td>\n<?php\n  }\n?>\n    <td style=\"text-align: right; padding-right: 16px;\">\n      <div><span id=\"author\" style=\"margin: 0;\"><?=targ (\'date\');?> by <?=user_generate_short_info_string (targ (\'user_id\'));?></span></div>\n    </td>\n  </tr></table>\n</div>\n',1,NULL),(7,'Статьи / Заглавная страница / Список новостей','<?php\n  $data = $pIFACE->GetList ();\n  $n = count ($data);\n  $tpl = manage_template_by_name (\'Статьи / Заглавная страница / Список новостей / Коротко о новости\');\n  $script=$tpl->GetText ();\n  if ($n > 0) {\n?>\n<div id=\"news\">\n<?php\n  $j = max ($n-opt_get (\'last_news_count\'), 0);\n  for ($i = $n - 1; $i >= $j; $i--) {\n    $r = $data[$i];\n    tpl_srcp ($script, $r);\n  }\n?>\n</div>\n<?php\n  } else {\n?>\n  <span class=\"contentsub\">Нет новостей</span>\n<?php\n  }\n?>\n',1,NULL),(8,'Статьи / Правила / Лист','<?php\n  $data = $pIFACE->GetList ();\n  $n=count ($data);\n  $script=$pIFACE->ItemScript ();\n?>\n<div id=\"navigator\"><?=$pIFACE->GetName ();?></div>\n${subnav}\n<div style=\"width: 320px; padding-left: 40px; margin-bottom: 16px;\">\n<?php\n  if ($n > 0) {\n    contentso (\'id=rules\');\n    println (\'<div style=\"padding-left: 8px;\">\');\n\n    for ($i = 0; $i < $n; $i++) {\n      $r = $data[$i]; println (\'<div>\'.($i + 1).\'. <a href=\"#section_\'.$i.\'\">\'.\n        htmlspecialchars ($r[\'title\']).\'</a></div>\');\n    }\n\n    println (\'</div>\');\n    contentsc ();\n  } else {\n    println (\'<span class=\"contentSub\">В разработке</span>\');\n  }\n?>\n</div>\n<div id=\"sectionlist\">\n<?php\n  for ($i = 0; $i < $n; $i++) {\n    $r = $data[$i];\n    println (\'<div id=\"section_\'.$i.\'\"></div>\');\n    tpl_srcp ($script, $r);\n  }\n?>\n</div>\n',1,NULL),(9,'Статьи / Правила / Абзац','<?php\n   $edit = $pIFACE->GetAllowed (\'EDITINFO\');\n   if ($edit) {\n     $acts=\'<td class=\"acts\">[<a href=\"\'.$pIFACE->GetItemEditorLink (targ (\'id\')).\n       \'\" title=\"Редактировать секцию: \'.targ (\'title\').\'\">Редактировать</a>]</td>\';\n   }\n?>\n<div id=\"entry\">\n  <div id=\"head\"><table><tr><td class=\"title\"><?=htmlspecialchars (targ (\'title\'));?></td><?=$acts;?></tr></table></div>\n  <div id=\"text\"><?=targ (\'text\');?></div>\n</div>\n<div style=\"height: 6px;\"></div>\n',1,NULL),(10,'Страница / Нижний колонтитул','<?php\r\n  $info = client_info ();\r\n?>\r\n<div id=\"footer\" style=\"padding-bottom: 4px;\">\r\n  <center>\r\n    <small>\r\n      Страница была сгенерирована за <?=debug_get_watchdog();?>сек.<br>\r\n      Использовано запросов: <?=db_query_count ();?><br>\r\n      Твой IP-адрес: <?=$info[\'realIP\'];?>&nbsp;&nbsp;&nbsp;Твой агент: <?=$info[\'userAgent\']?>&nbsp;&nbsp;&nbsp;Движок браузера: <?=$info [\'browserEngine\'];?><br>\r\n      И о какой конфединциальности после этого может идти речь?\r\n    </small>\r\n  </center>\r\n  <div id=\"hr\" style=\"margin: 6px 0 1px 0;\"></div>\r\n  <table width=\"100%\" class=\"small\">\r\n    <tr>\r\n      <td width=\"50%\">Powered by Gate5 Engine (c) 2006-2010 nazgul</td>\r\n      <td align=\"right\">Все права защищены (с) 2007 sch9 team</td>\r\n    </tr>\r\n  </table>\r\n</div>\r\n',1,NULL),(11,'Заготовки / Лист / Просто лист','<div id=\"navigator\"><?=$pIFACE->GetName ();?></div>\n${subnav}\n<?=$pIFACE->Field (\'text\');?>\n',1,NULL),(12,'Страница / Меню навигации','<!--\r\n  `+`   -    Начать новое меню\r\n  `,` <модификаторы>     -   Новый элемент вне списка в текущем меню/подменю.\r\n  `.` <модификаторы>     -   Новый элемент в текущем меню/подменю.\r\n    Модификаторы:\r\n      `:`  - Запрет препарсинга html кода\r\n      \'l\'    - Отображать элемент только если пользователь авторизовался\r\n      \'L\'    - Отображать элемент только если пользователь _не_ авторизовался\r\n-->\r\n+ Навигация\r\n. [url href=\"$document_root/\"]Заглавная страница[/url]\r\n',1,NULL),(13,'Заготовки / Публикация / Датированная публикация ','<?php\n  $full = trim (html2txt (targ (\'full\')))!=\'\';\n  $edit = $pIFACE->GetAllowed (\'EDITINFO\');\n\n  if ($full) {\n    $full = \'<span class=\"arr\"><a href=\"./text/?uid=\'.targ (\'uid\').\'\">Подробнее...</a></span>\';\n  }\n\n  if ($edit) {\n    $acts = \'<td class=\"acts\">[<a href=\"\'.$pIFACE->GetItemEditorLink (targ (\'id\')).\n      \'\" title=\"Редактировать секцию: \'.targ (\'title\').\'\">Редактировать</a>]</td>\';\n  }\n?>\n<div id=\"entry\">\n  <div id=\"head\">\n    <table><tr>\n      <td class=\"title\">\n        <?=htmlspecialchars (targ (\'title\'));?>\n        <div class=\"sub\"><?=targ (\'date\');?><span id=\"author\">Добавил: <?=user_generate_short_info_string (targ (\'user_id\'));?></span></div>\n      </td>\n      <?=$acts;?>\n    </tr></table>\n  </div>\n  <div id=\"text\"><?=fakecode (targ (\'short\'));?></div>\n<?php\n  if ($full || $edit) { ?>\n     <div id=\"bottom\"><?=$full;?></div>\n<?php\n  }\n?>\n</div>\n ',1,NULL),(14,'Заготовки / Публикация / Подробно о публикации','<div id=\"navigator\"><?=$pIFACE->GetName ();?></div>\n${subnav}\n<?php\nglobal $oldid, $uid;\nif ($oldid==\'\')\n  // Получение последней версии публикаии\n  $data=$pIFACE->GetListRowByUid ($uid); else\n  // Получение бубликации с указанным id\n  $data=$pIFACE->GetListRowbyId ($oldid);\n?>\n',1,NULL),(15,'Заготовки / Публикация / Список публикаций','<?php\n  global $page;\n  $data=$pIFACE->GetPagedList ($data->PageCount-$page+1);\n  $n=count ($data);\n  $script=$pIFACE->ItemScript ();\n?>\n<div id=\"navigator\"><?=$pIFACE->GetName ();?></div>\n${subnav}\n<?=$pIFACE->GetPagintation ($page);?>\n<div id=\"news\">\n<?\n  // Скрипт создавался для вывода списка новостей. Так что вывод в обратном порядке :)\n  for ($i=$n-1; $i>=0; $i--) { $r=$data[$i]; tpl_srcp ($script, $r); }\n?>\n</div>\n<div style=\"margin-top: 6px;\">\n<?=$pIFACE->GetPagintation ($page);?>\n</div>\n',1,NULL),(16,'Заготовки / Публикация / Абзац многосекционного листа','<?php\n   $edit=$pIFACE->GetAllowed (\'EDITINFO\');\n   if ($edit) $acts=\'<td class=\"acts\">[<a href=\"\'.$pIFACE->GetItemEditorLink (targ (\'id\')).\'\" title=\"Редактировать секцию: \'.targ (\'title\').\'\">Редактировать</a>]</td>\';\n?>\n<div id=\"entry\">\n  <div id=\"head\"><table><tr><td class=\"title\"><?=htmlspecialchars (targ (\'title\'));?></td><?=$acts;?></tr></table></div>\n  <div id=\"text\"><?=targ (\'text\');?></div>\n</div>\n',1,NULL),(17,'Заготовки / Публикация / Многосекционный лист','<?php\n  global $page;\n  $data=$pIFACE->GetPagedList ($page);\n  $n=count ($data);\n  $script=$pIFACE->ItemScript ();\n?>\n<div id=\"navigator\"><?=$pIFACE->GetName ();?></div>\n${subnav}\n<?=$pIFACE->GetPagintation ($page);?>\n<div id=\"sectionlist\">\n<? for ($i=0; $i<$n; $i++) { $r=$data[$i]; tpl_srcp ($script, $r); }\n?>\n</div>\n<div style=\"margin-top: 6px;\">\n<?=$pIFACE->GetPagintation ($page);?>\n</div>\n',1,NULL),(18,'Олимпиады / Informatics / Заготовка условия задачи','<p>\n  &nbsp;\n</p><br>\n<p><b>Формат файла входных данных:</b></p>\n<p>&nbsp;</p><br>\n<p><b>Формат файла выходных данных:</b></p>\n<p>&nbsp;</p><br>\n<p>\n  <b>Пример:</b><br>\n  <table class=\"info\">\n    <tr class=\"h\">\n      <th>&nbsp;</th>\n      <th>&nbsp;</th>\n    </tr>\n    <tr>\n      <td>&nbsp;</td>\n      <td>&nbsp;</td>\n    </tr>\n </table>\n</p>\n',1,NULL),(19,'Олимпиады / Informatics / Список задач','&nbsp;\n',1,NULL);
/*!40000 ALTER TABLE `templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tester`
--

DROP TABLE IF EXISTS `tester`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tester` (
  `security` text,
  `content` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tester_checkers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext,
  `uploaded` tinyint(1) DEFAULT '0',
  `settings` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tester_contestgroup` (
  `contest_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tester_contests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `lid` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `settings` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tester_disabled_problems` (
  `contest_id` int(11) DEFAULT NULL,
  `problem_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tester_judgegroup` (
  `contest_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tester_problem_tags` (
  `problem_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tester_problems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lid` int(11) DEFAULT NULL,
  `name` text,
  `description` longtext,
  `settings` longtext,
  `uploaded` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tester_solutions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lid` int(11) DEFAULT NULL,
  `contest_id` int(11) DEFAULT NULL,
  `problem_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `parameters` longtext,
  `errors` text,
  `points` int(11) DEFAULT NULL,
  `ignored` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tester_tags_dict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tester_tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contest_id` int(11) DEFAULT NULL,
  `problem_id` int(11) DEFAULT NULL,
  `letter` int(11) DEFAULT NULL,
  `catid` int(11) DEFAULT '0',
  `settings` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `login` text,
  `password` text,
  `access` int(11) DEFAULT NULL,
  `email` text,
  `authorized` tinyint(1) DEFAULT NULL,
  `timestamp` int(11) DEFAULT '0',
  `last_act` int(11) DEFAULT '0',
  `settings` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'root','root','0329fcb2bfb4b0b6de5256d22df07620',7,'postmaster@localhost',1,0,1267682869,'');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usergroup`
--

DROP TABLE IF EXISTS `usergroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usergroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xpfs_volume_xpfs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `name` text,
  `data` longblob,
  `mtime` int(11) DEFAULT '0',
  `access` int(11) DEFAULT '0',
  `attr` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xpfs_volumes` (
  `name` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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

-- Dump completed on 2010-03-04 13:44:19
