/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : db_crm

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2018-04-15 15:25:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for chance
-- ----------------------------
DROP TABLE IF EXISTS `chance`;
CREATE TABLE `chance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chanceSource` varchar(100) DEFAULT NULL COMMENT '机会来源',
  `customerName` varchar(100) DEFAULT NULL COMMENT '客户名称（客户公司）',
  `cgjl` int(11) DEFAULT NULL COMMENT '成功几率',
  `overview` varchar(100) DEFAULT NULL COMMENT '概要',
  `linkMan` varchar(100) DEFAULT NULL COMMENT '联系人',
  `linkPhone` varchar(100) DEFAULT NULL COMMENT '联系电话',
  `description` varchar(100) DEFAULT NULL COMMENT '机会描述',
  `createMan` varchar(100) DEFAULT NULL COMMENT '创建人',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `assignMan` varchar(100) DEFAULT NULL COMMENT '指派人',
  `assignTime` datetime DEFAULT NULL COMMENT '指派时间',
  `state` int(11) DEFAULT NULL COMMENT '分配状态（ 0 未分配 1 已分配）',
  `devResult` int(11) DEFAULT NULL COMMENT '客户开发状态 （0 未开发 1 开发中 2 开发成功 3 开发失败）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chance
-- ----------------------------

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `khno` varchar(100) DEFAULT NULL COMMENT '客户编号',
  `name` varchar(100) DEFAULT NULL COMMENT '客户名称',
  `area` varchar(100) DEFAULT NULL COMMENT '客户地区',
  `cusManager` varchar(100) DEFAULT NULL COMMENT '客户经理',
  `level` varchar(100) DEFAULT NULL COMMENT '客户等级',
  `myd` varchar(100) DEFAULT NULL COMMENT '客户满意度',
  `xyd` varchar(100) DEFAULT NULL COMMENT '客户信用度',
  `address` varchar(100) DEFAULT NULL COMMENT '客户地址',
  `postCode` varchar(100) DEFAULT NULL COMMENT '邮政编码',
  `phone` varchar(100) DEFAULT NULL COMMENT '联系电话',
  `fax` varchar(100) DEFAULT NULL COMMENT '传真',
  `webSite` varchar(100) DEFAULT NULL COMMENT '网址',
  `yyzzzch` varchar(100) DEFAULT NULL COMMENT '营业执照号注册号',
  `fr` varchar(100) DEFAULT NULL COMMENT '法人',
  `zczj` varchar(100) DEFAULT NULL COMMENT '注册资金（万元）',
  `nyye` varchar(100) DEFAULT NULL COMMENT '年营业额',
  `khyh` varchar(100) DEFAULT NULL COMMENT '开户银行',
  `khzh` varchar(100) DEFAULT NULL COMMENT '开户账号',
  `dsdjh` varchar(100) DEFAULT NULL COMMENT '地税登记号',
  `gsdjh` varchar(100) DEFAULT NULL COMMENT '国税登记号',
  `state` int(11) DEFAULT NULL COMMENT '客户状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------

-- ----------------------------
-- Table structure for customercontact
-- ----------------------------
DROP TABLE IF EXISTS `customercontact`;
CREATE TABLE `customercontact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cusId` int(11) DEFAULT NULL,
  `contactTime` datetime DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `overview` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customercontact
-- ----------------------------

-- ----------------------------
-- Table structure for customerlinkman
-- ----------------------------
DROP TABLE IF EXISTS `customerlinkman`;
CREATE TABLE `customerlinkman` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cusId` int(11) DEFAULT NULL,
  `linkName` varchar(100) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `zhiwei` varchar(100) DEFAULT NULL,
  `officePhone` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customerlinkman
-- ----------------------------

-- ----------------------------
-- Table structure for customerloss
-- ----------------------------
DROP TABLE IF EXISTS `customerloss`;
CREATE TABLE `customerloss` (
  `id` int(11) NOT NULL,
  `cusNo` int(11) DEFAULT NULL COMMENT '客户编号',
  `cusName` varchar(100) DEFAULT NULL COMMENT '客户名称',
  `cusManager` varchar(100) DEFAULT NULL COMMENT '客户经理',
  `lastOrderTime` datetime DEFAULT NULL COMMENT '上次下单日期',
  `confirmLossTime` datetime DEFAULT NULL COMMENT '确认流失日期',
  `state` int(11) DEFAULT NULL COMMENT '状态 0 暂缓流失 1 确认流失',
  `lossReason` varchar(100) DEFAULT NULL COMMENT '流失原因',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customerloss
-- ----------------------------

-- ----------------------------
-- Table structure for customerreprieve
-- ----------------------------
DROP TABLE IF EXISTS `customerreprieve`;
CREATE TABLE `customerreprieve` (
  `id` int(11) NOT NULL,
  `lossId` int(11) DEFAULT NULL,
  `measure` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customerreprieve
-- ----------------------------

-- ----------------------------
-- Table structure for customerservice
-- ----------------------------
DROP TABLE IF EXISTS `customerservice`;
CREATE TABLE `customerservice` (
  `id` int(11) NOT NULL,
  `serveType` varchar(255) DEFAULT NULL,
  `overview` varchar(255) DEFAULT NULL,
  `customer` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `servicerequest` varchar(255) DEFAULT NULL,
  `createPeople` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `assigner` varchar(255) DEFAULT NULL,
  `assignTime` datetime DEFAULT NULL,
  `serviceProce` varchar(255) DEFAULT NULL,
  `serviceProcePeople` varchar(255) DEFAULT NULL,
  `serviceProceTime` datetime DEFAULT NULL,
  `serviceProceResult` varchar(255) DEFAULT NULL,
  `myd` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customerservice
-- ----------------------------

-- ----------------------------
-- Table structure for datadic
-- ----------------------------
DROP TABLE IF EXISTS `datadic`;
CREATE TABLE `datadic` (
  `id` int(11) NOT NULL,
  `dataDicName` varchar(255) DEFAULT NULL COMMENT '数据字典名称',
  `dataDicValue` varchar(255) DEFAULT NULL COMMENT '数据字典值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of datadic
-- ----------------------------

-- ----------------------------
-- Table structure for orderdetails
-- ----------------------------
DROP TABLE IF EXISTS `orderdetails`;
CREATE TABLE `orderdetails` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL COMMENT '所属订单',
  `goodsName` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `goodsNum` int(11) DEFAULT NULL COMMENT '商品数量',
  `unit` varchar(255) DEFAULT NULL COMMENT '单位',
  `price` double(10,2) DEFAULT NULL COMMENT '价格',
  `sum` double(14,2) DEFAULT NULL COMMENT '总金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderdetails
-- ----------------------------

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cusId` int(11) DEFAULT NULL,
  `orderNo` varchar(255) DEFAULT NULL,
  `orderDate` datetime DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for orderscustom
-- ----------------------------
DROP TABLE IF EXISTS `orderscustom`;
CREATE TABLE `orderscustom` (
  `cname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderscustom
-- ----------------------------

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `productName` varchar(255) DEFAULT NULL COMMENT '产品名称',
  `model` varchar(255) DEFAULT NULL COMMENT '型号',
  `unit` varchar(255) DEFAULT NULL COMMENT '单位',
  `price` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `store` int(11) DEFAULT NULL COMMENT '库存',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `userName` varchar(255) DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `trueName` varchar(255) DEFAULT NULL COMMENT '真实姓名',
  `email` varchar(255) DEFAULT NULL COMMENT '邮件',
  `phone` varchar(30) DEFAULT NULL COMMENT '联系电话',
  `roleName` varchar(50) DEFAULT NULL COMMENT '角色名称 系统管理员 销售主管 客户经理 高管',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
