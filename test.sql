/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50173
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2015-08-23 22:16:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `departmentid` int(11) NOT NULL AUTO_INCREMENT,
  `departmentname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`departmentid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', '市场部');
INSERT INTO `department` VALUES ('2', '销售部');
INSERT INTO `department` VALUES ('3', '技术部');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employeename` varchar(50) DEFAULT NULL,
  `accountname` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `departmentid` int(11) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `status` int(1) unsigned zerofill NOT NULL,
  PRIMARY KEY (`id`),
  KEY `accountname` (`accountname`),
  KEY `departmentid` (`departmentid`),
  CONSTRAINT `departmentid` FOREIGN KEY (`departmentid`) REFERENCES `department` (`departmentid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('1', '张三', 'zzz', '123', '2', '12345678', '1234@qq.com', '1');
INSERT INTO `employee` VALUES ('2', '李四', 'aaa', '123', '1', '15246348', '2222@qq.com', '0');

-- ----------------------------
-- Table structure for meetinginfo
-- ----------------------------
DROP TABLE IF EXISTS `meetinginfo`;
CREATE TABLE `meetinginfo` (
  `meetingname` varchar(255) NOT NULL,
  `roomnumber` int(11) DEFAULT NULL,
  `numofattendents` int(255) DEFAULT NULL,
  `startdate` datetime DEFAULT NULL,
  `enddate` datetime DEFAULT NULL,
  `description` multilinestring DEFAULT NULL,
  `accountname` varchar(255) DEFAULT NULL,
  `selectEmployees` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`meetingname`),
  KEY `roomnumber` (`roomnumber`),
  KEY `accountname` (`accountname`),
  CONSTRAINT `accountname` FOREIGN KEY (`accountname`) REFERENCES `employee` (`accountname`),
  CONSTRAINT `roomnumber` FOREIGN KEY (`roomnumber`) REFERENCES `meetingroom` (`roomnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meetinginfo
-- ----------------------------
INSERT INTO `meetinginfo` VALUES ('业务洽谈会', '101', '25', '2015-08-23 16:30:54', '2015-08-23 18:31:14', null, 'zzz', null);

-- ----------------------------
-- Table structure for meetingroom
-- ----------------------------
DROP TABLE IF EXISTS `meetingroom`;
CREATE TABLE `meetingroom` (
  `roomnumber` int(11) NOT NULL,
  `capacity` varchar(255) DEFAULT NULL,
  `rooomcapacity` int(255) DEFAULT NULL,
  `status` int(1) DEFAULT '0',
  `note` multilinestring DEFAULT NULL,
  PRIMARY KEY (`roomnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meetingroom
-- ----------------------------
INSERT INTO `meetingroom` VALUES ('101', '第一会议室', '50', '0', null);
INSERT INTO `meetingroom` VALUES ('102', '第二会议室', '35', '1', null);
INSERT INTO `meetingroom` VALUES ('201', '第三会议室', '40', '1', null);

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `userpwd` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', 'gyj', '123');
INSERT INTO `userinfo` VALUES ('2', '郭怡君', '123');
INSERT INTO `userinfo` VALUES ('5', 'gyj', 'gyj');
