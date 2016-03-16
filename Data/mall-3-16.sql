/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : mall

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2016-03-16 18:13:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `mall_admin`
-- ----------------------------
DROP TABLE IF EXISTS `mall_admin`;
CREATE TABLE `mall_admin` (
  `admin_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `admin_name` varchar(15) DEFAULT '' COMMENT '管理员名称',
  `admin_passwd` char(32) DEFAULT '' COMMENT '管理员密码',
  `last_login` int(10) DEFAULT '0' COMMENT '最后一次登录时间',
  `last_ip` varchar(15) DEFAULT '0.0.0.0' COMMENT '最后一次登录IP',
  `is_closed` tinyint(1) DEFAULT '0' COMMENT '账号是否关闭',
  `register_time` int(10) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员信息表';

-- ----------------------------
-- Records of mall_admin
-- ----------------------------
INSERT INTO `mall_admin` VALUES ('8', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1458113668', '127.0.0.1', '0', '1457691990');

-- ----------------------------
-- Table structure for `mall_auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `mall_auth_group`;
CREATE TABLE `mall_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '管理员组ID',
  `title` char(100) NOT NULL DEFAULT '' COMMENT '管理员组中文名称',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态：为1正常，为0禁用',
  `rules` char(80) NOT NULL DEFAULT '' COMMENT '管理员组拥有的规则id， 多个规则","隔开',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='管理员组表';

-- ----------------------------
-- Records of mall_auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for `mall_auth_group_access`
-- ----------------------------
DROP TABLE IF EXISTS `mall_auth_group_access`;
CREATE TABLE `mall_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL COMMENT '管理员ID',
  `group_id` mediumint(8) unsigned NOT NULL COMMENT '管理员组ID',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='管理员组明细表，定义管理员所属管理员组';

-- ----------------------------
-- Records of mall_auth_group_access
-- ----------------------------

-- ----------------------------
-- Table structure for `mall_auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `mall_auth_rule`;
CREATE TABLE `mall_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则ID',
  `name` char(80) NOT NULL DEFAULT '' COMMENT '规则唯一标识',
  `title` char(20) NOT NULL DEFAULT '' COMMENT '规则中文名称',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态：为1正常，为0禁用',
  `condition` char(100) NOT NULL DEFAULT '' COMMENT '规则表达式，为空表示存在就验证，不为空表示按照条件验证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='规则表，定义后台操作所有的权限';

-- ----------------------------
-- Records of mall_auth_rule
-- ----------------------------

-- ----------------------------
-- Table structure for `mall_system_area`
-- ----------------------------
DROP TABLE IF EXISTS `mall_system_area`;
CREATE TABLE `mall_system_area` (
  `area_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '地区ID',
  `city_id` smallint(6) DEFAULT '0' COMMENT '所属城市ID',
  `area_name` varchar(50) DEFAULT '' COMMENT '地区名称',
  `orderby` smallint(6) DEFAULT '50' COMMENT '排序',
  `dateline` int(10) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`area_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='地区表';

-- ----------------------------
-- Records of mall_system_area
-- ----------------------------
INSERT INTO `mall_system_area` VALUES ('1', '1', '鹿城区', '1', '1458123128');
INSERT INTO `mall_system_area` VALUES ('2', '1', '龙湾区', '1', '1458123128');
INSERT INTO `mall_system_area` VALUES ('3', '1', '瓯海区', '1', '1458123128');
INSERT INTO `mall_system_area` VALUES ('4', '1', '瓯北区', '1', '1458123128');
INSERT INTO `mall_system_area` VALUES ('5', '1', '瑞安区', '1', '1458123128');

-- ----------------------------
-- Table structure for `mall_system_city`
-- ----------------------------
DROP TABLE IF EXISTS `mall_system_city`;
CREATE TABLE `mall_system_city` (
  `city_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '城市ID',
  `province_id` smallint(6) DEFAULT '0' COMMENT '所属省份ID',
  `city_name` varchar(50) DEFAULT '' COMMENT '城市名称',
  `pinyin` varchar(50) DEFAULT '' COMMENT '城市拼音,可做分站域名',
  `theme_id` smallint(6) DEFAULT '0' COMMENT '所使用的模板ID',
  `logo` varchar(150) DEFAULT '' COMMENT '分站logo',
  `weixinqr` varchar(150) DEFAULT '' COMMENT '微信二维码',
  `phone` varchar(30) DEFAULT '' COMMENT '电话',
  `mobile` varchar(15) DEFAULT '' COMMENT '手机',
  `mail` varchar(30) DEFAULT '' COMMENT '联系邮箱',
  `kfqq` varchar(30) DEFAULT '' COMMENT '客服qq',
  `seo_title` varchar(255) DEFAULT '' COMMENT 'seo标题',
  `seo_keywords` varchar(255) DEFAULT '' COMMENT 'seo关键字',
  `seo_description` varchar(255) DEFAULT '' COMMENT 'seo描述',
  `tongji` mediumtext COMMENT '统计代码',
  `orderby` smallint(6) DEFAULT '50' COMMENT '统计代码',
  `audit` tinyint(1) DEFAULT '0' COMMENT '状态(1:开启;0:关闭)',
  `dateline` int(10) DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`city_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='城市表';

-- ----------------------------
-- Records of mall_system_city
-- ----------------------------
INSERT INTO `mall_system_city` VALUES ('1', '1', '温州', 'wenzhou', '1', '', '', '', '', '', '', '', '', '', '', '1', '1', '1458111700');
INSERT INTO `mall_system_city` VALUES ('2', '2', '北京', 'beijing', '1', '', '', '', '', '', '', '', '', '', '', '2', '1', '1458120461');

-- ----------------------------
-- Table structure for `mall_system_config`
-- ----------------------------
DROP TABLE IF EXISTS `mall_system_config`;
CREATE TABLE `mall_system_config` (
  `k` varchar(30) NOT NULL DEFAULT '' COMMENT '设置的键名',
  `v` mediumtext COMMENT '设置的键值',
  `title` varchar(30) DEFAULT '' COMMENT '设置的中文名称',
  `dateline` int(10) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`k`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='设置表';

-- ----------------------------
-- Records of mall_system_config
-- ----------------------------
INSERT INTO `mall_system_config` VALUES ('site', 'a:14:{s:5:\"title\";s:7:\"U嫁城\";s:7:\"siteurl\";s:12:\"http://m.com\";s:4:\"mail\";s:16:\"resinchem@qq.com\";s:4:\"kfqq\";s:10:\"2577521695\";s:5:\"phone\";s:11:\"13616664326\";s:6:\"mobile\";s:1:\"1\";s:7:\"ucenter\";s:1:\"1\";s:7:\"city_id\";s:0:\"\";s:10:\"multi_city\";s:1:\"1\";s:6:\"domain\";s:5:\"m.com\";s:7:\"rewrite\";s:1:\"1\";s:5:\"intro\";s:0:\"\";s:6:\"tongji\";s:0:\"\";s:3:\"icp\";s:22:\"浙ICP备15023657号-2\";}', '基本设置', '1457935793');
INSERT INTO `mall_system_config` VALUES ('attach', 'a:17:{s:3:\"dir\";s:9:\"./attachs\";s:3:\"url\";s:9:\"./attachs\";s:10:\"allow_exts\";s:16:\"jpg,gif,png,jpeg\";s:10:\"allow_size\";s:4:\"2048\";s:13:\"watermarktype\";s:4:\"text\";s:13:\"watermarktext\";a:4:{s:4:\"font\";s:8:\"msyh.ttf\";s:4:\"size\";s:2:\"14\";s:5:\"color\";s:7:\"#d8d8d8\";s:4:\"text\";s:26:\"U嫁城-只选最优的嫁\";}s:15:\"watermarkstatus\";s:1:\"5\";s:16:\"watermarkquality\";s:2:\"90\";s:12:\"thumbquality\";s:2:\"90\";s:5:\"thumb\";s:3:\"300\";s:5:\"hotel\";a:5:{s:5:\"hotel\";s:7:\"300X200\";s:5:\"photo\";s:7:\"600X400\";s:9:\"watermark\";s:1:\"1\";s:5:\"thumb\";s:7:\"300X200\";s:5:\"small\";s:5:\"60X40\";}s:4:\"shop\";a:2:{s:5:\"thumb\";s:7:\"200X200\";s:4:\"logo\";s:7:\"200X100\";}s:7:\"product\";a:4:{s:5:\"photo\";s:3:\"900\";s:9:\"watermark\";s:1:\"1\";s:5:\"thumb\";s:7:\"300X200\";s:5:\"small\";s:5:\"70X70\";}s:5:\"album\";a:4:{s:5:\"photo\";s:3:\"720\";s:9:\"watermark\";s:1:\"1\";s:5:\"thumb\";s:3:\"300\";s:5:\"small\";s:5:\"70X70\";}s:4:\"tuan\";a:3:{s:5:\"photo\";s:3:\"720\";s:9:\"watermark\";s:1:\"1\";s:5:\"thumb\";s:3:\"200\";}s:7:\"article\";a:3:{s:5:\"photo\";s:3:\"720\";s:9:\"watermark\";s:1:\"1\";s:5:\"thumb\";s:3:\"200\";}s:6:\"editor\";a:3:{s:5:\"photo\";s:3:\"800\";s:9:\"watermark\";s:1:\"1\";s:5:\"thumb\";s:3:\"220\";}}', '附件设置', '1457939190');
INSERT INTO `mall_system_config` VALUES ('mobile', 'a:5:{s:5:\"title\";s:17:\"U嫁城 手机版\";s:3:\"url\";s:14:\"http://u.m.com\";s:7:\"forward\";s:1:\"1\";s:12:\"down_android\";s:0:\"\";s:11:\"down_iphone\";s:0:\"\";}', '3G版设置', '1457941023');
INSERT INTO `mall_system_config` VALUES ('bulletin', 'a:6:{s:11:\"open_member\";s:1:\"1\";s:6:\"member\";s:13:\"欢迎回来!\";s:10:\"open_hotel\";s:1:\"1\";s:5:\"hotel\";s:13:\"欢迎回来!\";s:9:\"open_shop\";s:1:\"1\";s:4:\"shop\";s:13:\"欢迎回来!\";}', '网站公告', '1457941683');
INSERT INTO `mall_system_config` VALUES ('access', 'a:12:{s:11:\"signup_type\";a:3:{s:6:\"member\";s:1:\"1\";s:5:\"hotel\";s:1:\"1\";s:4:\"shop\";s:1:\"1\";}s:12:\"signup_count\";s:1:\"0\";s:11:\"signup_time\";s:1:\"0\";s:12:\"retain_uname\";s:8:\"*管理*\";s:6:\"denyip\";s:9:\"127.0.0.9\";s:12:\"mobile_count\";s:2:\"10\";s:11:\"mobile_time\";s:2:\"59\";s:10:\"book_count\";s:2:\"10\";s:9:\"book_time\";s:2:\"59\";s:10:\"verifycode\";a:3:{s:6:\"signup\";s:1:\"1\";s:5:\"login\";s:1:\"1\";s:5:\"admin\";s:1:\"1\";}s:6:\"closed\";s:1:\"0\";s:13:\"closed_reason\";s:16:\"网站维护中!\";}', '访问设置', '1457941902');
INSERT INTO `mall_system_config` VALUES ('integral', 'a:7:{s:5:\"email\";s:1:\"5\";s:6:\"mobile\";s:2:\"10\";s:13:\"certification\";s:2:\"10\";s:5:\"photo\";s:1:\"2\";s:6:\"coupon\";s:2:\"10\";s:7:\"product\";s:1:\"2\";s:4:\"gold\";s:1:\"2\";}', '积分设置', '1457943482');
INSERT INTO `mall_system_config` VALUES ('comment', 'a:3:{s:12:\"article_type\";s:7:\"comment\";s:10:\"photo_type\";s:7:\"comment\";s:10:\"snscomment\";s:0:\"\";}', '评论设置', '1457943663');
INSERT INTO `mall_system_config` VALUES ('routeurl', 'a:5:{s:10:\"route_type\";s:1:\"0\";s:7:\"article\";s:13:\"/article.html\";s:5:\"photo\";s:11:\"/photo.html\";s:8:\"activity\";s:14:\"/activity.html\";s:7:\"product\";s:13:\"/product.html\";}', 'URL设置', '1457943855');
INSERT INTO `mall_system_config` VALUES ('domain', 'a:7:{s:5:\"photo\";s:0:\"\";s:7:\"article\";s:0:\"\";s:4:\"tuan\";s:0:\"\";s:7:\"product\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"shop\";s:0:\"\";s:10:\"holddomain\";s:48:\"www|*admin*|shop|hotel|mall|*blog*|*space*|*bbs*\";}', '域名设置', '1457943975');

-- ----------------------------
-- Table structure for `mall_system_province`
-- ----------------------------
DROP TABLE IF EXISTS `mall_system_province`;
CREATE TABLE `mall_system_province` (
  `province_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT COMMENT '省份ID',
  `province_name` varchar(30) DEFAULT '' COMMENT '省份名称',
  `orderby` smallint(6) DEFAULT '50' COMMENT '排序',
  `dateline` int(10) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`province_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='省份表';

-- ----------------------------
-- Records of mall_system_province
-- ----------------------------
INSERT INTO `mall_system_province` VALUES ('1', '浙江', '1', '1458049889');
INSERT INTO `mall_system_province` VALUES ('2', '北京', '2', '1458108720');

-- ----------------------------
-- Table structure for `mall_system_tmpl`
-- ----------------------------
DROP TABLE IF EXISTS `mall_system_tmpl`;
CREATE TABLE `mall_system_tmpl` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '模板id',
  `title` varchar(64) DEFAULT NULL COMMENT '模板名称',
  `from` enum('mail','sms','seo') DEFAULT NULL COMMENT '模板类型',
  `key` varchar(50) DEFAULT '' COMMENT '模板键',
  `intro` varchar(1024) DEFAULT NULL COMMENT '模板简介',
  `tmpl` mediumtext COMMENT '模板',
  `tmpl1` mediumtext COMMENT '模板1',
  `tmpl2` mediumtext COMMENT '模板2',
  `dateline` int(10) DEFAULT '0' COMMENT '创建时间',
  `is_open` tinyint(1) DEFAULT '1' COMMENT '是否启用(1:启用;0:关闭)',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='存放系统模板表(seo模板，邮件模板，短信模板)';

-- ----------------------------
-- Records of mall_system_tmpl
-- ----------------------------
