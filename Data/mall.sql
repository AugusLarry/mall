-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2016 �?03 �?14 �?17:49
-- 服务器版本: 5.5.40
-- PHP 版本: 5.6.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `mall`
--

-- --------------------------------------------------------

--
-- 表的结构 `mall_admin`
--

CREATE TABLE IF NOT EXISTS `mall_admin` (
  `admin_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `admin_name` varchar(15) DEFAULT '' COMMENT '管理员名称',
  `admin_passwd` char(32) DEFAULT '' COMMENT '管理员密码',
  `last_login` int(10) DEFAULT '0' COMMENT '最后一次登录时间',
  `last_ip` varchar(15) DEFAULT '0.0.0.0' COMMENT '最后一次登录IP',
  `is_closed` tinyint(1) DEFAULT '0' COMMENT '账号是否关闭',
  `register_time` int(10) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员信息表' AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `mall_admin`
--

INSERT INTO `mall_admin` (`admin_id`, `admin_name`, `admin_passwd`, `last_login`, `last_ip`, `is_closed`, `register_time`) VALUES
(8, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1457917912, '127.0.0.1', 0, 1457691990);

-- --------------------------------------------------------

--
-- 表的结构 `mall_auth_group`
--

CREATE TABLE IF NOT EXISTS `mall_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '管理员组ID',
  `title` char(100) NOT NULL DEFAULT '' COMMENT '管理员组中文名称',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态：为1正常，为0禁用',
  `rules` char(80) NOT NULL DEFAULT '' COMMENT '管理员组拥有的规则id， 多个规则","隔开',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='管理员组表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `mall_auth_group_access`
--

CREATE TABLE IF NOT EXISTS `mall_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL COMMENT '管理员ID',
  `group_id` mediumint(8) unsigned NOT NULL COMMENT '管理员组ID',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='管理员组明细表，定义管理员所属管理员组';

-- --------------------------------------------------------

--
-- 表的结构 `mall_auth_rule`
--

CREATE TABLE IF NOT EXISTS `mall_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则ID',
  `name` char(80) NOT NULL DEFAULT '' COMMENT '规则唯一标识',
  `title` char(20) NOT NULL DEFAULT '' COMMENT '规则中文名称',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态：为1正常，为0禁用',
  `condition` char(100) NOT NULL DEFAULT '' COMMENT '规则表达式，为空表示存在就验证，不为空表示按照条件验证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='规则表，定义后台操作所有的权限' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `mall_system_config`
--

CREATE TABLE IF NOT EXISTS `mall_system_config` (
  `k` varchar(30) NOT NULL DEFAULT '' COMMENT '设置的键名',
  `v` mediumtext COMMENT '设置的键值',
  `title` varchar(30) DEFAULT '' COMMENT '设置的中文名称',
  `dateline` int(10) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`k`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='设置表';

--
-- 转存表中的数据 `mall_system_config`
--

INSERT INTO `mall_system_config` (`k`, `v`, `title`, `dateline`) VALUES
('site', 'a:14:{s:5:"title";s:7:"U嫁城";s:7:"siteurl";s:12:"http://m.com";s:4:"mail";s:16:"resinchem@qq.com";s:4:"kfqq";s:10:"2577521695";s:5:"phone";s:11:"13616664326";s:6:"mobile";s:1:"1";s:7:"ucenter";s:1:"1";s:7:"city_id";s:0:"";s:10:"multi_city";s:1:"1";s:6:"domain";s:5:"m.com";s:7:"rewrite";s:1:"1";s:5:"intro";s:0:"";s:6:"tongji";s:0:"";s:3:"icp";s:22:"浙ICP备15023657号-2";}', '基本设置', 1457935793),
('attach', 'a:17:{s:3:"dir";s:9:"./attachs";s:3:"url";s:9:"./attachs";s:10:"allow_exts";s:16:"jpg,gif,png,jpeg";s:10:"allow_size";s:4:"2048";s:13:"watermarktype";s:4:"text";s:13:"watermarktext";a:4:{s:4:"font";s:8:"msyh.ttf";s:4:"size";s:2:"14";s:5:"color";s:7:"#d8d8d8";s:4:"text";s:26:"U嫁城-只选最优的嫁";}s:15:"watermarkstatus";s:1:"5";s:16:"watermarkquality";s:2:"90";s:12:"thumbquality";s:2:"90";s:5:"thumb";s:3:"300";s:5:"hotel";a:5:{s:5:"hotel";s:7:"300X200";s:5:"photo";s:7:"600X400";s:9:"watermark";s:1:"1";s:5:"thumb";s:7:"300X200";s:5:"small";s:5:"60X40";}s:4:"shop";a:2:{s:5:"thumb";s:7:"200X200";s:4:"logo";s:7:"200X100";}s:7:"product";a:4:{s:5:"photo";s:3:"900";s:9:"watermark";s:1:"1";s:5:"thumb";s:7:"300X200";s:5:"small";s:5:"70X70";}s:5:"album";a:4:{s:5:"photo";s:3:"720";s:9:"watermark";s:1:"1";s:5:"thumb";s:3:"300";s:5:"small";s:5:"70X70";}s:4:"tuan";a:3:{s:5:"photo";s:3:"720";s:9:"watermark";s:1:"1";s:5:"thumb";s:3:"200";}s:7:"article";a:3:{s:5:"photo";s:3:"720";s:9:"watermark";s:1:"1";s:5:"thumb";s:3:"200";}s:6:"editor";a:3:{s:5:"photo";s:3:"800";s:9:"watermark";s:1:"1";s:5:"thumb";s:3:"220";}}', '附件设置', 1457939190),
('mobile', 'a:5:{s:5:"title";s:17:"U嫁城 手机版";s:3:"url";s:14:"http://u.m.com";s:7:"forward";s:1:"1";s:12:"down_android";s:0:"";s:11:"down_iphone";s:0:"";}', '3G版设置', 1457941023),
('bulletin', 'a:6:{s:11:"open_member";s:1:"1";s:6:"member";s:13:"欢迎回来!";s:10:"open_hotel";s:1:"1";s:5:"hotel";s:13:"欢迎回来!";s:9:"open_shop";s:1:"1";s:4:"shop";s:13:"欢迎回来!";}', '网站公告', 1457941683),
('access', 'a:12:{s:11:"signup_type";a:3:{s:6:"member";s:1:"1";s:5:"hotel";s:1:"1";s:4:"shop";s:1:"1";}s:12:"signup_count";s:1:"0";s:11:"signup_time";s:1:"0";s:12:"retain_uname";s:8:"*管理*";s:6:"denyip";s:9:"127.0.0.9";s:12:"mobile_count";s:2:"10";s:11:"mobile_time";s:2:"59";s:10:"book_count";s:2:"10";s:9:"book_time";s:2:"59";s:10:"verifycode";a:3:{s:6:"signup";s:1:"1";s:5:"login";s:1:"1";s:5:"admin";s:1:"1";}s:6:"closed";s:1:"0";s:13:"closed_reason";s:16:"网站维护中!";}', '访问设置', 1457941902),
('integral', 'a:7:{s:5:"email";s:1:"5";s:6:"mobile";s:2:"10";s:13:"certification";s:2:"10";s:5:"photo";s:1:"2";s:6:"coupon";s:2:"10";s:7:"product";s:1:"2";s:4:"gold";s:1:"2";}', '积分设置', 1457943482),
('comment', 'a:3:{s:12:"article_type";s:7:"comment";s:10:"photo_type";s:7:"comment";s:10:"snscomment";s:0:"";}', '评论设置', 1457943663),
('routeurl', 'a:5:{s:10:"route_type";s:1:"0";s:7:"article";s:13:"/article.html";s:5:"photo";s:11:"/photo.html";s:8:"activity";s:14:"/activity.html";s:7:"product";s:13:"/product.html";}', 'URL设置', 1457943855),
('domain', 'a:7:{s:5:"photo";s:0:"";s:7:"article";s:0:"";s:4:"tuan";s:0:"";s:7:"product";s:0:"";s:7:"company";s:0:"";s:4:"shop";s:0:"";s:10:"holddomain";s:48:"www|*admin*|shop|hotel|mall|*blog*|*space*|*bbs*";}', '域名设置', 1457943975);

-- --------------------------------------------------------

--
-- 表的结构 `mall_system_tmpl`
--

CREATE TABLE IF NOT EXISTS `mall_system_tmpl` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='存放系统模板表(seo模板，邮件模板，短信模板)' AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
