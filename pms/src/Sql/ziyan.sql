/*
 Navicat MySQL Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : localhost:3306
 Source Schema         : ziyan

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 01/02/2020 03:52:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aId` varchar(20) DEFAULT NULL,
  `aName` varchar(20) DEFAULT NULL,
  `aPwd` varchar(20) DEFAULT NULL,
  `aTypeId` varchar(20) DEFAULT NULL COMMENT '管理员类型号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admins
-- ----------------------------
BEGIN;
INSERT INTO `admins` VALUES (1, '1', 'admin', '1234', NULL);
COMMIT;

-- ----------------------------
-- Table structure for admintype
-- ----------------------------
DROP TABLE IF EXISTS `admintype`;
CREATE TABLE `admintype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aTypeId` varchar(20) DEFAULT NULL,
  `aTypeName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cName` varchar(50) DEFAULT NULL COMMENT '公司名称',
  `cNature` varchar(20) DEFAULT NULL COMMENT '公司性质',
  `cLegalPerson` varchar(20) DEFAULT NULL COMMENT '法人代表',
  `cAddress` varchar(100) DEFAULT NULL COMMENT '公司地址',
  `cTel` varchar(20) DEFAULT NULL COMMENT '电话',
  `cEmail` varchar(40) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company
-- ----------------------------
BEGIN;
INSERT INTO `company` VALUES (1, '流芒科技', NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for companybank
-- ----------------------------
DROP TABLE IF EXISTS `companybank`;
CREATE TABLE `companybank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bId` varchar(30) DEFAULT NULL COMMENT '银行账号',
  `cBankType` varchar(20) DEFAULT NULL COMMENT '银行账户类型',
  `cBankName` varchar(60) DEFAULT NULL COMMENT '开户行',
  `cRemark` text COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dId` varchar(20) DEFAULT NULL COMMENT '部门编号',
  `dName` varchar(20) DEFAULT NULL COMMENT '部门名称',
  `dFunction` text COMMENT '部门职能',
  `dLeader` varchar(20) DEFAULT NULL COMMENT '部门领导(经理)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
BEGIN;
INSERT INTO `department` VALUES (1, 'd001', '人事部', '公司日常行政事务处理', '王总监');
INSERT INTO `department` VALUES (2, 'd002', '研发部', '公司软件开发', '张总监');
INSERT INTO `department` VALUES (3, 'd003', '行政部', '公司行政管理', '刘总监');
COMMIT;

-- ----------------------------
-- Table structure for postcategory
-- ----------------------------
DROP TABLE IF EXISTS `postcategory`;
CREATE TABLE `postcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pId` varchar(20) DEFAULT NULL COMMENT '职位编号',
  `pName` varchar(20) DEFAULT NULL COMMENT '职位名称',
  `pSalary` int(10) DEFAULT NULL COMMENT '职位工资',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of postcategory
-- ----------------------------
BEGIN;
INSERT INTO `postcategory` VALUES (1, 'p001', '部长', 10000);
INSERT INTO `postcategory` VALUES (2, 'p002', '经理', 20000);
INSERT INTO `postcategory` VALUES (3, 'p003', '总监', 30000);
INSERT INTO `postcategory` VALUES (4, 'p004', '项目经理', 30000);
INSERT INTO `postcategory` VALUES (5, 'p005', '部员', 5000);
INSERT INTO `postcategory` VALUES (6, 'p006', '项目主管', 50000);
COMMIT;

-- ----------------------------
-- Table structure for postsetting
-- ----------------------------
DROP TABLE IF EXISTS `postsetting`;
CREATE TABLE `postsetting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pId` varchar(20) DEFAULT NULL COMMENT '职位编号',
  `dId` varchar(20) DEFAULT NULL COMMENT '部门编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of postsetting
-- ----------------------------
BEGIN;
INSERT INTO `postsetting` VALUES (1, 'p001', 'd001');
INSERT INTO `postsetting` VALUES (2, 'p002', 'd001');
INSERT INTO `postsetting` VALUES (3, 'p003', 'd001');
INSERT INTO `postsetting` VALUES (5, 'p005', 'd001');
INSERT INTO `postsetting` VALUES (6, 'p006', 'd002');
INSERT INTO `postsetting` VALUES (7, 'p005', 'd002');
INSERT INTO `postsetting` VALUES (8, 'p004', 'd002');
INSERT INTO `postsetting` VALUES (9, 'p001', 'd003');
INSERT INTO `postsetting` VALUES (10, 'p002', 'd003');
INSERT INTO `postsetting` VALUES (11, 'p003', 'd003');
INSERT INTO `postsetting` VALUES (12, 'p005', 'd003');
COMMIT;

-- ----------------------------
-- Table structure for staff
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sId` varchar(14) DEFAULT NULL COMMENT '员工编号',
  `sName` varchar(20) DEFAULT NULL COMMENT '员工姓名',
  `sSex` varchar(2) DEFAULT NULL COMMENT '员工性别',
  `sBirthday` varchar(20) DEFAULT NULL COMMENT '出身日期',
  `sPost` varchar(20) DEFAULT NULL COMMENT '职位岗位',
  `dId` varchar(20) DEFAULT NULL COMMENT '部门',
  `sSalary` int(10) DEFAULT NULL COMMENT '工资',
  `sEntry` datetime DEFAULT NULL COMMENT '入职时间',
  `sIdentityId` varchar(20) DEFAULT NULL COMMENT '身份证号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of staff
-- ----------------------------
BEGIN;
INSERT INTO `staff` VALUES (1, '001', '苏映雪', '女', '1997-04-03 00:00:00', 'p003', 'd001', 20000, '2015-02-10 00:00:00', '44323453421997943');
INSERT INTO `staff` VALUES (2, '002', '江映蓉', '女', '1996-05-22', 'p002', 'd003', 12000, '2015-03-17 00:00:00', '443234534219979333');
INSERT INTO `staff` VALUES (3, '20191218232405', '王雪琴', '女', '1975-1-1', 'p002', 'd001', 10000, '1974-12-31 16:00:00', '513822199507088832');
INSERT INTO `staff` VALUES (4, '20191219010739', '王雪花', '女', '1992-1-1', 'p002', 'd001', 20000, '2004-12-31 16:00:00', '513822199507088832');
INSERT INTO `staff` VALUES (5, '20191221155044', '李梦莲', '女', '1985-5-1', 'p002', 'd001', 20000, '2009-06-30 16:00:00', '513822199507066666');
INSERT INTO `staff` VALUES (6, '20191223142412', '刘恺威', '男', '1970-1-1', 'p005', 'd002', 20000, '2015-05-31 16:00:00', '513822199507082222');
COMMIT;

-- ----------------------------
-- Table structure for staffbank
-- ----------------------------
DROP TABLE IF EXISTS `staffbank`;
CREATE TABLE `staffbank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sId` varchar(20) DEFAULT NULL COMMENT '员工编号',
  `bId` varchar(30) DEFAULT NULL COMMENT '银行账号',
  `cBankType` varchar(20) DEFAULT NULL COMMENT '银行账户类型',
  `cBankName` varchar(60) DEFAULT NULL COMMENT '开户行',
  `cRemark` text COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for staffchange
-- ----------------------------
DROP TABLE IF EXISTS `staffchange`;
CREATE TABLE `staffchange` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sId` varchar(10) DEFAULT NULL COMMENT '员工编号',
  `pIdOld` varchar(20) DEFAULT NULL COMMENT '原职位编号',
  `pIdNew` varchar(20) DEFAULT NULL COMMENT '调任职位编号',
  `dIdOld` int(20) DEFAULT NULL COMMENT '原部门编号',
  `dIdNew` varchar(20) DEFAULT NULL COMMENT '调任部门编号',
  `sNature` varchar(20) DEFAULT NULL COMMENT '性质(长期或短期)',
  `sRmeark` text COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
