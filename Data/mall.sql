/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : mall

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2016-03-11 19:29:01
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
INSERT INTO `mall_admin` VALUES ('8', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1457695361', '127.0.0.1', '0', '1457691990');

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
