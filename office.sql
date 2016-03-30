/*
 Navicat Premium Data Transfer

 Source Server         : mysql_mamp
 Source Server Type    : MySQL
 Source Server Version : 50542
 Source Host           : localhost
 Source Database       : office

 Target Server Type    : MySQL
 Target Server Version : 50542
 File Encoding         : utf-8

 Date: 11/10/2015 09:45:36 AM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `dep`
-- ----------------------------
DROP TABLE IF EXISTS `dep`;
CREATE TABLE `dep` (
  `dep_id` int(11) NOT NULL AUTO_INCREMENT,
  `dep_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dep_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `dep`
-- ----------------------------
BEGIN;
INSERT INTO `dep` VALUES ('1', 'ฝ่ายบริหาร'), ('2', 'ห้องบัตร'), ('3', 'OPD'), ('4', 'LAB'), ('5', 'ทันตกรรม'), ('6', 'ห้องยา'), ('7', 'ER'), ('8', 'LR'), ('9', 'X-ray'), ('10', 'สุขาฯ'), ('11', 'เวชฯ'), ('12', 'ส่งเสริม'), ('13', 'กายภาพ'), ('14', 'แผนไทย'), ('15', 'สุขภาพจิต'), ('16', 'น.พยาบาล'), ('17', 'คลังเวช'), ('18', 'NCD'), ('19', 'Ward 2'), ('20', 'โครงครัว'), ('21', 'Supply'), ('22', 'ซ่อมบำรุง'), ('23', 'สารสนเทศ'), ('24', 'พขร.');
COMMIT;

-- ----------------------------
--  Table structure for `group`
-- ----------------------------
DROP TABLE IF EXISTS `group`;
CREATE TABLE `group` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `group`
-- ----------------------------
BEGIN;
INSERT INTO `group` VALUES ('1', 'หมึกพิมพ์'), ('2', 'กระดาษ'), ('3', 'สื่อเก็บข้อมูล'), ('4', 'ของใช้ฟุ่มเฟือย'), ('5', 'อุปกรณ์เครือข่าย'), ('6', 'อะไหล่เครื่องคอมพิวเตอร์'), ('7', 'อุปกรณ์ต่อพ่วงเครื่องคอมพิวเตอร์');
COMMIT;

-- ----------------------------
--  Table structure for `items`
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `items_id` int(11) NOT NULL AUTO_INCREMENT,
  `items_name` varchar(255) DEFAULT NULL,
  `items_type_id` int(3) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`items_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `items`
-- ----------------------------
BEGIN;
INSERT INTO `items` VALUES ('1', 'กระดาษต่อเนื่อง', null, '2'), ('2', 'เครื่องอ่านข้อมูล (เฟรชไดร์)', null, '3'), ('3', 'เครื่องอ่านข้อมูลแบบซีดีรอม', null, '7'), ('4', 'เครื่องกระจายสัญญาณ', null, '5'), ('5', 'ซองพลาสติกใส ใส่แผ่น CD', null, '4'), ('6', 'ถ่าน Bios', null, '4'), ('7', 'พัดลม CPU', null, '6'), ('8', 'แผ่นกรองแสง', null, '7'), ('9', 'แผ่น DVD', null, '3'), ('10', 'VCD (ยกกล่อง 50 แผ่น)', null, '3'), ('11', 'แผ่นรองเม๊าส์', null, '4'), ('12', 'เมนบอร์ด', null, '6'), ('13', 'เม้าส์', null, '7'), ('14', 'แป้นพิมพ์', null, '7'), ('15', 'สายเคเบิ้ล', null, '5'), ('16', 'หมึก Brother DCP-7055', null, '1'), ('17', 'หมึก Epson LQ-300', null, '1'), ('18', 'หมึก HP P1102 (85 A)', '1', '1'), ('19', 'หมึก HP p1005 (35 A)', null, '1'), ('20', 'หมึก HP P1010 (12 A)', '1', '1'), ('21', 'หมึก HP deskjet 2520 (46) สีดำ', null, '1'), ('22', 'หมึก HP deskjet 2520 (46) สี', null, '1'), ('23', 'หมึก Brother DCP j-100 (ดำ) แบบเติม', null, '1'), ('24', 'หมึก Brother DCP j-100 (แดง) แบบเติม', null, '1'), ('25', 'หมึก Brother DCP j-100 (น้ำเงิน) แบบเติม', null, '1'), ('26', 'หมึก Brother DCP j-100 (เหลือง) แบบเติม', null, '1'), ('27', 'หมึก HP CP 1025 ดำ', null, '1'), ('28', 'หมึก HP CP 1025 แดง', null, '1'), ('29', 'หมึก HP CP 1025 นำเงิน', null, '1'), ('30', 'หมึก HP CP 1025 เหลือง', null, '1'), ('31', 'หมึก Brother DCP-165c สีดำ แบบเติม', null, '1'), ('32', 'หมึก Brother DCP-165c สีแดง แบบเติม', null, '1'), ('33', 'หมึก Brother DCP-165c สีน้ำเงิน แบบเติม', null, '1'), ('34', 'หมึก Brother DCP-165c สีเหลือง แบบเติม', null, '1'), ('35', 'หมึก Epson LQ-2080i', null, '1');
COMMIT;

-- ----------------------------
--  Table structure for `items_type`
-- ----------------------------
DROP TABLE IF EXISTS `items_type`;
CREATE TABLE `items_type` (
  `items_type_id` int(2) NOT NULL AUTO_INCREMENT,
  `items_type_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`items_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `items_type`
-- ----------------------------
BEGIN;
INSERT INTO `items_type` VALUES ('1', 'กล่อง'), ('2', 'โหล');
COMMIT;

-- ----------------------------
--  Table structure for `migration`
-- ----------------------------
DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `migration`
-- ----------------------------
BEGIN;
INSERT INTO `migration` VALUES ('m000000_000000_base', '1446789240'), ('m130524_201442_init', '1446789241');
COMMIT;

-- ----------------------------
--  Table structure for `plan`
-- ----------------------------
DROP TABLE IF EXISTS `plan`;
CREATE TABLE `plan` (
  `plan_id` int(11) NOT NULL AUTO_INCREMENT,
  `dep_id` int(11) DEFAULT NULL,
  `items_id` int(11) DEFAULT NULL,
  `total` int(3) DEFAULT NULL,
  `total_now` int(11) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `price_now` decimal(10,0) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`plan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `plan`
-- ----------------------------
BEGIN;
INSERT INTO `plan` VALUES ('1', '1', '2', '2', null, null, null, null, null), ('2', '1', '7', '4', null, null, null, null, null), ('3', '1', '8', '2', null, null, null, null, null), ('5', '1', '11', '7', null, null, null, '2015-11-09 12:11:44', '2015-11-09 12:11:44'), ('6', '1', '13', '8', null, null, null, '2015-11-09 12:12:07', '2015-11-09 12:12:07'), ('7', '1', '14', '4', null, null, null, '2015-11-09 12:12:24', '2015-11-09 12:12:24'), ('8', '1', '15', '100', null, null, null, '2015-11-09 12:12:42', '2015-11-09 12:12:42'), ('9', '1', '17', '6', null, null, null, '2015-11-09 12:13:03', '2015-11-09 12:13:03'), ('10', '1', '18', '24', null, null, null, '2015-11-09 12:13:25', '2015-11-09 12:13:25'), ('11', '1', '19', '24', null, null, null, '2015-11-09 12:14:04', '2015-11-09 12:14:04'), ('12', '1', '20', '6', null, null, null, '2015-11-09 12:14:26', '2015-11-09 12:14:26'), ('13', '1', '21', '55', null, null, null, '2015-11-09 12:14:52', '2015-11-09 12:14:52'), ('14', '1', '22', '30', null, null, null, '2015-11-09 12:15:17', '2015-11-09 12:15:17'), ('15', '2', '2', '3', null, null, null, '2015-11-09 12:15:32', '2015-11-09 12:15:32'), ('16', '2', '3', '3', null, null, null, '2015-11-09 12:15:39', '2015-11-09 12:15:39'), ('17', '2', '9', '1', null, null, null, '2015-11-09 12:16:01', '2015-11-09 12:16:01'), ('18', '2', '12', '3', null, null, null, '2015-11-09 12:17:38', '2015-11-09 12:17:38'), ('19', '2', '13', '3', null, null, null, '2015-11-09 12:17:48', '2015-11-09 12:17:48'), ('20', '2', '13', '3', null, null, null, '2015-11-09 12:18:10', '2015-11-09 12:18:10'), ('21', '2', '18', '24', null, null, null, '2015-11-09 12:18:44', '2015-11-09 12:18:44'), ('22', '3', '7', '5', null, null, null, '2015-11-09 12:19:26', '2015-11-09 12:19:26'), ('23', '3', '11', '2', null, null, null, '2015-11-09 12:19:39', '2015-11-09 12:19:39'), ('24', '3', '18', '50', null, null, null, '2015-11-09 12:20:00', '2015-11-09 12:20:00'), ('25', '3', '21', '10', null, null, null, '2015-11-09 12:20:36', '2015-11-09 12:20:36'), ('26', '3', '22', '10', null, null, null, '2015-11-09 12:20:51', '2015-11-09 12:20:51'), ('27', '4', '2', '2', null, null, null, '2015-11-09 12:21:09', '2015-11-09 12:21:09'), ('28', '4', '13', '2', null, null, null, '2015-11-09 12:21:21', '2015-11-09 12:21:21'), ('29', '4', '14', '2', null, null, null, '2015-11-09 12:21:38', '2015-11-09 12:21:38'), ('30', '4', '23', '12', null, null, null, '2015-11-09 12:21:53', '2015-11-09 12:21:53'), ('31', '4', '24', '4', null, null, null, '2015-11-09 12:22:07', '2015-11-09 12:22:07'), ('32', '4', '25', '4', null, null, null, '2015-11-09 12:22:20', '2015-11-09 12:22:20'), ('33', '4', '26', '4', null, null, null, '2015-11-09 12:22:30', '2015-11-09 12:22:30'), ('34', '5', '11', '1', null, null, null, '2015-11-09 12:22:47', '2015-11-09 12:22:47'), ('35', '5', '13', '1', null, null, null, '2015-11-09 12:22:58', '2015-11-09 12:22:58'), ('36', '5', '14', '1', null, null, null, '2015-11-09 12:23:09', '2015-11-09 12:23:09'), ('37', '6', '2', '2', null, null, null, '2015-11-09 12:23:48', '2015-11-09 12:23:48'), ('38', '6', '5', '1', null, null, null, '2015-11-09 12:24:26', '2015-11-09 12:24:26'), ('39', '6', '5', '1', null, null, null, '2015-11-09 12:24:46', '2015-11-09 12:24:46'), ('40', '6', '10', '1', null, null, null, '2015-11-09 12:24:57', '2015-11-09 12:24:57'), ('41', '6', '11', '2', null, null, null, '2015-11-09 12:25:11', '2015-11-09 12:25:11'), ('42', '6', '13', '4', null, null, null, '2015-11-09 12:25:28', '2015-11-09 12:25:28'), ('43', '6', '14', '4', null, null, null, '2015-11-09 12:25:37', '2015-11-09 12:25:37'), ('44', '6', '18', '20', null, null, null, '2015-11-09 12:25:48', '2015-11-09 12:25:48'), ('45', '6', '19', '40', null, null, null, '2015-11-09 12:26:03', '2015-11-09 12:26:03'), ('46', '6', '35', '4', null, null, null, '2015-11-09 12:26:25', '2015-11-09 12:26:25'), ('47', '7', '20', '12', null, null, null, '2015-11-09 12:26:48', '2015-11-09 12:26:48'), ('48', '7', '21', '12', null, null, null, '2015-11-09 12:27:35', '2015-11-09 12:27:35'), ('49', '7', '22', '12', null, null, null, '2015-11-09 12:27:43', '2015-11-09 12:27:43'), ('50', '8', '2', '1', null, null, null, '2015-11-09 13:17:45', '2015-11-09 13:17:45'), ('51', '8', '13', '1', null, null, null, '2015-11-09 13:17:57', '2015-11-09 13:17:57'), ('52', '8', '14', '1', null, null, null, '2015-11-09 13:18:08', '2015-11-09 13:18:08'), ('53', '8', '18', '6', null, null, null, '2015-11-09 13:18:29', '2015-11-09 13:18:29'), ('54', '9', '3', '2', null, null, null, '2015-11-09 13:18:51', '2015-11-09 13:18:51'), ('55', '9', '3', '2', null, null, null, '2015-11-09 13:18:51', '2015-11-09 13:18:51'), ('56', '9', '4', '2', null, null, null, '2015-11-09 13:19:07', '2015-11-09 13:19:07'), ('57', '9', '5', '25', null, null, null, '2015-11-09 13:19:20', '2015-11-09 13:19:20'), ('58', '9', '10', '6', null, null, null, '2015-11-09 13:19:41', '2015-11-09 13:19:41'), ('59', '9', '11', '6', null, null, null, '2015-11-09 13:20:01', '2015-11-09 13:20:01'), ('60', '9', '11', '6', null, null, null, '2015-11-09 13:20:01', '2015-11-09 13:20:01'), ('61', '9', '12', '2', null, null, null, '2015-11-09 13:20:41', '2015-11-09 13:20:41'), ('62', '9', '13', '2', null, null, null, '2015-11-09 13:20:53', '2015-11-09 13:20:53'), ('63', '9', '15', '50', null, null, null, '2015-11-09 13:21:06', '2015-11-09 13:21:06'), ('64', '9', '21', '3', null, null, null, '2015-11-09 13:21:25', '2015-11-09 13:21:25'), ('65', '9', '22', '3', null, null, null, '2015-11-09 13:21:34', '2015-11-09 13:21:34');
COMMIT;

-- ----------------------------
--  Table structure for `po`
-- ----------------------------
DROP TABLE IF EXISTS `po`;
CREATE TABLE `po` (
  `po_id` int(11) NOT NULL AUTO_INCREMENT,
  `po_date` date DEFAULT NULL,
  `plan_id` int(11) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`po_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `user`
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES ('1', 'bomkeen', 'NNYZERf289UV9CFsJab-X1pz89I9zMkt', '$2y$13$Urg49hdsPQfNP6Za8WAHwO7MehyHqzpZw4ohpqzNUVdqXN7Wi2alG', null, 'bomkeendata@gmail.com', '10', '1446792922', '1446792922');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
