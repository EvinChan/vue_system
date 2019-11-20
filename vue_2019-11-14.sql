/*
Navicat MySQL Data Transfer

Source Server         : number1
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : vue_2019-11-14

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2019-11-20 21:29:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address_name` varchar(32) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('2', '江苏省', '0');
INSERT INTO `address` VALUES ('3', '河南省', '0');
INSERT INTO `address` VALUES ('4', '焦作市', '3');
INSERT INTO `address` VALUES ('5', '郑州市', '3');
INSERT INTO `address` VALUES ('6', '周口市', '3');
INSERT INTO `address` VALUES ('7', '徐州市', '2');
INSERT INTO `address` VALUES ('8', '南京市', '2');
INSERT INTO `address` VALUES ('9', '宿迁市', '2');
INSERT INTO `address` VALUES ('10', '博爱县', '4');
INSERT INTO `address` VALUES ('11', '获嘉县', '4');
INSERT INTO `address` VALUES ('12', '金水区', '5');
INSERT INTO `address` VALUES ('13', '惠济区', '5');
INSERT INTO `address` VALUES ('14', '川汇区', '6');
INSERT INTO `address` VALUES ('15', '商水县', '6');
INSERT INTO `address` VALUES ('16', '泉山区', '7');
INSERT INTO `address` VALUES ('17', '铜山区', '7');
INSERT INTO `address` VALUES ('18', '玄武区', '8');
INSERT INTO `address` VALUES ('19', '秦淮区', '8');
INSERT INTO `address` VALUES ('20', '沭阳县', '9');
INSERT INTO `address` VALUES ('21', '宿城区', '9');

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Adminname` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Phone` varchar(255) DEFAULT NULL,
  `State` int(11) DEFAULT NULL COMMENT '0禁用；1启用',
  `roles` varchar(255) DEFAULT NULL COMMENT '所有角色',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '123', '3838438@qq.com', '123456789', '1', '1,2,3,4');

-- ----------------------------
-- Table structure for brand
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `letter` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO `brand` VALUES ('1', '花花公子', 'https://2019-11-15.oss-cn-shanghai.aliyuncs.com/%E8%8B%A5%E6%9C%89%E6%89%80%E6%80%9D.jpg', 'H');
INSERT INTO `brand` VALUES ('2', '唐狮王', 'http://2019-11-15.oss-cn-shanghai.aliyuncs.com/brand_2/0764FDDED0D8852F05BAD6B39E4173A9.jpg', 'TW');
INSERT INTO `brand` VALUES ('3', '韩都衣舍', null, 'H');
INSERT INTO `brand` VALUES ('4', '太平鸟', null, 'T');
INSERT INTO `brand` VALUES ('5', '森马', null, 'S');
INSERT INTO `brand` VALUES ('6', '大嘴猴', null, 'D');
INSERT INTO `brand` VALUES ('7', '老干妈', null, 'L');
INSERT INTO `brand` VALUES ('22', '9999', 'http://2019-11-15.oss-cn-shanghai.aliyuncs.com/%E5%BC%BA.jpg', '999');
INSERT INTO `brand` VALUES ('23', '金坷垃', 'http://2019-11-15.oss-cn-shanghai.aliyuncs.com/%E6%8A%B1%E9%B1%BC.jpg.jfif', 'J');
INSERT INTO `brand` VALUES ('24', '5555555555', 'http://2019-11-15.oss-cn-shanghai.aliyuncs.com/%E5%BC%BA.jpg', '55');
INSERT INTO `brand` VALUES ('32', '史丹利', 'http://2019-11-15.oss-cn-shanghai.aliyuncs.com/brand_32/%E8%8B%A5%E6%9C%89%E6%89%80%E6%80%9D.jpg', 'S');
INSERT INTO `brand` VALUES ('33', '8847', 'http://2019-11-15.oss-cn-shanghai.aliyuncs.com/brand_33/DD97BD1D203642202FF4D5B811A19642.jpg', '8847');
INSERT INTO `brand` VALUES ('34', '9527', 'http://2019-11-15.oss-cn-shanghai.aliyuncs.com/brand_34/DD97BD1D203642202FF4D5B811A19642.jpg', '9527');
INSERT INTO `brand` VALUES ('35', '5656', 'http://2019-11-15.oss-cn-shanghai.aliyuncs.com/brand_35/kk.jpg', '5656');
INSERT INTO `brand` VALUES ('36', '5656', 'http://2019-11-15.oss-cn-shanghai.aliyuncs.com/brand_36/DD97BD1D203642202FF4D5B811A19642.jpg', '5656');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '女装/男装/内衣', '0');
INSERT INTO `category` VALUES ('2', '家电/数码/手机', '0');
INSERT INTO `category` VALUES ('3', '女装', '1');
INSERT INTO `category` VALUES ('4', '男装', '1');
INSERT INTO `category` VALUES ('5', '内衣', '1');
INSERT INTO `category` VALUES ('6', '羽绒服', '3');
INSERT INTO `category` VALUES ('7', '毛衣', '3');
INSERT INTO `category` VALUES ('8', '牛仔裤', '3');
INSERT INTO `category` VALUES ('9', '衬衫', '3');
INSERT INTO `category` VALUES ('10', '羽绒服', '4');
INSERT INTO `category` VALUES ('11', '毛衣', '4');
INSERT INTO `category` VALUES ('12', '牛仔裤', '4');
INSERT INTO `category` VALUES ('13', '衬衫', '4');
INSERT INTO `category` VALUES ('14', '家电', '2');
INSERT INTO `category` VALUES ('15', '吸尘器', '14');
INSERT INTO `category` VALUES ('16', '取暖器', '14');

-- ----------------------------
-- Table structure for category_brand
-- ----------------------------
DROP TABLE IF EXISTS `category_brand`;
CREATE TABLE `category_brand` (
  `category_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category_brand
-- ----------------------------
INSERT INTO `category_brand` VALUES ('6', '1');
INSERT INTO `category_brand` VALUES ('6', '3');
INSERT INTO `category_brand` VALUES ('6', '4');
INSERT INTO `category_brand` VALUES ('6', '5');
INSERT INTO `category_brand` VALUES ('6', '6');
INSERT INTO `category_brand` VALUES ('7', '1');
INSERT INTO `category_brand` VALUES ('7', '3');
INSERT INTO `category_brand` VALUES ('7', '4');
INSERT INTO `category_brand` VALUES ('7', '5');
INSERT INTO `category_brand` VALUES ('7', '6');
INSERT INTO `category_brand` VALUES ('3', '9');
INSERT INTO `category_brand` VALUES ('4', '9');
INSERT INTO `category_brand` VALUES ('5', '9');
INSERT INTO `category_brand` VALUES ('3', '10');
INSERT INTO `category_brand` VALUES ('4', '10');
INSERT INTO `category_brand` VALUES ('4', '12');
INSERT INTO `category_brand` VALUES ('3', '12');
INSERT INTO `category_brand` VALUES ('3', '13');
INSERT INTO `category_brand` VALUES ('4', '13');
INSERT INTO `category_brand` VALUES ('3', '14');
INSERT INTO `category_brand` VALUES ('4', '14');
INSERT INTO `category_brand` VALUES ('3', '15');
INSERT INTO `category_brand` VALUES ('4', '15');
INSERT INTO `category_brand` VALUES ('3', '22');
INSERT INTO `category_brand` VALUES ('4', '22');
INSERT INTO `category_brand` VALUES ('2', '23');
INSERT INTO `category_brand` VALUES ('3', '23');
INSERT INTO `category_brand` VALUES ('4', '23');
INSERT INTO `category_brand` VALUES ('3', '24');
INSERT INTO `category_brand` VALUES ('4', '24');
INSERT INTO `category_brand` VALUES ('3', '29');
INSERT INTO `category_brand` VALUES ('4', '29');
INSERT INTO `category_brand` VALUES ('3', '30');
INSERT INTO `category_brand` VALUES ('4', '30');
INSERT INTO `category_brand` VALUES ('6', '32');
INSERT INTO `category_brand` VALUES ('5', '32');
INSERT INTO `category_brand` VALUES ('4', '32');
INSERT INTO `category_brand` VALUES ('3', '32');
INSERT INTO `category_brand` VALUES ('3', '36');
INSERT INTO `category_brand` VALUES ('4', '36');
INSERT INTO `category_brand` VALUES ('6', '2');
INSERT INTO `category_brand` VALUES ('7', '2');
INSERT INTO `category_brand` VALUES ('5', '2');
INSERT INTO `category_brand` VALUES ('4', '2');
INSERT INTO `category_brand` VALUES ('3', '2');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单编号',
  `Menuname` varchar(255) DEFAULT NULL COMMENT 'Menuname',
  `ParentId` int(11) DEFAULT NULL COMMENT '父菜单的编号;当它为0的时候，代表父菜单，其他值都是本表中的其他数据',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '系统管理', '0');
INSERT INTO `menu` VALUES ('2', '管理员列表', '1');
INSERT INTO `menu` VALUES ('3', '角色管理', '1');
INSERT INTO `menu` VALUES ('4', '查看', '2');
INSERT INTO `menu` VALUES ('5', '新增', '2');
INSERT INTO `menu` VALUES ('6', '查询', '3');
INSERT INTO `menu` VALUES ('7', '新增', '3');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色编号',
  `Rolename` varchar(255) DEFAULT NULL COMMENT '角色名字',
  `menuIds` varchar(255) DEFAULT NULL COMMENT '菜单编号 1,2,3,4,5,6',
  `Remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'George Walker', null, '牛逼');
INSERT INTO `role` VALUES ('2', 'Brenda Garcia', null, null);
INSERT INTO `role` VALUES ('3', 'Mark Clark', '4', null);
INSERT INTO `role` VALUES ('4', '123', '2,4,5', '123');
INSERT INTO `role` VALUES ('5', '456', '1,2,4,5,3,6,7', '546');
INSERT INTO `role` VALUES ('6', 'hh', '5,7', 'hhh');
INSERT INTO `role` VALUES ('7', '11111111', '1,2,4,5,3,6,7', '11111111');
INSERT INTO `role` VALUES ('8', '22222222', '4,5,6,7', '2222222');

-- ----------------------------
-- Table structure for role_menu
-- ----------------------------
DROP TABLE IF EXISTS `role_menu`;
CREATE TABLE `role_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '中间表 id',
  `rid` int(11) DEFAULT NULL COMMENT 'role角色id',
  `mid` int(11) DEFAULT NULL COMMENT 'menu权限id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_menu
-- ----------------------------
INSERT INTO `role_menu` VALUES ('1', '4', '4');
INSERT INTO `role_menu` VALUES ('2', '4', '5');
INSERT INTO `role_menu` VALUES ('3', '1', '4');
INSERT INTO `role_menu` VALUES ('4', '1', '5');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(32) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '123');
INSERT INTO `user` VALUES ('2', 'tom', '123');
INSERT INTO `user` VALUES ('3', 'jack', '123');
