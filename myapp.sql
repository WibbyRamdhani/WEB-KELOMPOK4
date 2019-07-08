/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 100132
Source Host           : localhost:3306
Source Database       : myapp

Target Server Type    : MYSQL
Target Server Version : 100132
File Encoding         : 65001

Date: 2019-07-08 22:59:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', 'Sabun', '2000', '2019-06-27 20:34:10', '2019-06-27 20:34:17');
INSERT INTO `products` VALUES ('2', 'Buku', '5000', '2019-06-27 20:57:19', '2019-06-27 20:57:23');

-- ----------------------------
-- Table structure for sales
-- ----------------------------
DROP TABLE IF EXISTS `sales`;
CREATE TABLE `sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sales
-- ----------------------------
INSERT INTO `sales` VALUES ('1', '2019-06-27 20:33:14', '2019-06-27 20:33:18', '2019-06-27 20:33:22');
INSERT INTO `sales` VALUES ('2', '2019-06-26 20:58:31', '2019-06-26 20:58:35', '2019-06-26 20:58:38');

-- ----------------------------
-- Table structure for sales_products
-- ----------------------------
DROP TABLE IF EXISTS `sales_products`;
CREATE TABLE `sales_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `saleId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `saleId` (`saleId`),
  KEY `productId` (`productId`),
  CONSTRAINT `sales_products_ibfk_1` FOREIGN KEY (`saleId`) REFERENCES `sales` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `sales_products_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sales_products
-- ----------------------------
INSERT INTO `sales_products` VALUES ('1', '3', '5000', '2019-06-27 20:35:51', '2019-06-27 20:35:54', '1', '1');
INSERT INTO `sales_products` VALUES ('2', '3', '6000', '2019-06-27 20:59:44', '2019-06-27 20:59:47', '1', '1');
SET FOREIGN_KEY_CHECKS=1;
