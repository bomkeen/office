/*
Navicat MySQL Data Transfer

Source Server         : slave
Source Server Version : 50505
Source Host           : 192.168.1.253:3306
Source Database       : office

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2016-03-30 21:19:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dep
-- ----------------------------
DROP TABLE IF EXISTS `dep`;
CREATE TABLE `dep` (
  `dep_id` int(11) NOT NULL AUTO_INCREMENT,
  `dep_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dep_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dep
-- ----------------------------
INSERT INTO `dep` VALUES ('1', 'ฝ่ายบริหาร');
INSERT INTO `dep` VALUES ('2', 'ห้องบัตร');
INSERT INTO `dep` VALUES ('3', 'OPD');
INSERT INTO `dep` VALUES ('4', 'LAB');
INSERT INTO `dep` VALUES ('5', 'ทันตกรรม');
INSERT INTO `dep` VALUES ('6', 'ห้องยา');
INSERT INTO `dep` VALUES ('7', 'ER');
INSERT INTO `dep` VALUES ('8', 'LR');
INSERT INTO `dep` VALUES ('9', 'X-ray');
INSERT INTO `dep` VALUES ('10', 'สุขาฯ');
INSERT INTO `dep` VALUES ('11', 'เวชฯ');
INSERT INTO `dep` VALUES ('12', 'ส่งเสริม');
INSERT INTO `dep` VALUES ('13', 'กายภาพ');
INSERT INTO `dep` VALUES ('14', 'แผนไทย');
INSERT INTO `dep` VALUES ('15', 'สุขภาพจิต');
INSERT INTO `dep` VALUES ('16', 'น.พยาบาล');
INSERT INTO `dep` VALUES ('17', 'คลังเวช');
INSERT INTO `dep` VALUES ('18', 'NCD');
INSERT INTO `dep` VALUES ('19', 'Ward 2');
INSERT INTO `dep` VALUES ('20', 'โครงครัว');
INSERT INTO `dep` VALUES ('21', 'Supply');
INSERT INTO `dep` VALUES ('22', 'ซ่อมบำรุง');
INSERT INTO `dep` VALUES ('23', 'สารสนเทศ');
INSERT INTO `dep` VALUES ('24', 'พขร.');
INSERT INTO `dep` VALUES ('25', 'ทดสอบ');
INSERT INTO `dep` VALUES ('26', 'จ่ายกลาง+คลังเวช');

-- ----------------------------
-- Table structure for group
-- ----------------------------
DROP TABLE IF EXISTS `group`;
CREATE TABLE `group` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group
-- ----------------------------
INSERT INTO `group` VALUES ('1', 'หมึกพิมพ์');
INSERT INTO `group` VALUES ('2', 'กระดาษ');
INSERT INTO `group` VALUES ('3', 'สื่อเก็บข้อมูล');
INSERT INTO `group` VALUES ('4', 'ของใช้ฟุ่มเฟือย');
INSERT INTO `group` VALUES ('5', 'อุปกรณ์เครือข่าย');
INSERT INTO `group` VALUES ('6', 'อะไหล่เครื่องคอมพิวเตอร์');
INSERT INTO `group` VALUES ('7', 'อุปกรณ์ต่อพ่วงเครื่องคอมพิวเตอร์');
INSERT INTO `group` VALUES ('8', 'เครื่องพิมพ์');
INSERT INTO `group` VALUES ('9', 'LED-LCD');

-- ----------------------------
-- Table structure for items
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `items_id` int(11) NOT NULL AUTO_INCREMENT,
  `items_name` varchar(255) DEFAULT NULL,
  `items_type_id` int(3) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`items_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES ('1', 'กระดาษต่อเนื่อง', '3', '2');
INSERT INTO `items` VALUES ('2', 'เครื่องอ่านข้อมูล (เฟรชไดร์)', '4', '3');
INSERT INTO `items` VALUES ('3', 'เครื่องอ่านข้อมูลแบบซีดีรอม', '4', '7');
INSERT INTO `items` VALUES ('4', 'เครื่องกระจายสัญญาณ', '4', '5');
INSERT INTO `items` VALUES ('5', 'ซองพลาสติกใส ใส่แผ่น CD', '2', '4');
INSERT INTO `items` VALUES ('6', 'ถ่าน Bios', '4', '4');
INSERT INTO `items` VALUES ('7', 'พัดลม CPU', '4', '6');
INSERT INTO `items` VALUES ('8', 'แผ่นกรองแสง', null, '7');
INSERT INTO `items` VALUES ('9', 'แผ่น DVD', null, '3');
INSERT INTO `items` VALUES ('10', 'VCD (ยกกล่อง 50 แผ่น)', null, '3');
INSERT INTO `items` VALUES ('11', 'แผ่นรองเม๊าส์', null, '4');
INSERT INTO `items` VALUES ('12', 'เมนบอร์ด', null, '6');
INSERT INTO `items` VALUES ('13', 'เม้าส์', null, '7');
INSERT INTO `items` VALUES ('14', 'แป้นพิมพ์', null, '7');
INSERT INTO `items` VALUES ('15', 'สายเคเบิ้ล', '5', '5');
INSERT INTO `items` VALUES ('16', 'หมึก Brother DCP-7055', null, '1');
INSERT INTO `items` VALUES ('17', 'หมึก Epson LQ-300', null, '1');
INSERT INTO `items` VALUES ('18', 'หมึก HP P1102 (85 A)', '1', '1');
INSERT INTO `items` VALUES ('19', 'หมึก HP p1005 (35 A)', null, '1');
INSERT INTO `items` VALUES ('20', 'หมึก HP P1010 (12 A)', '1', '1');
INSERT INTO `items` VALUES ('21', 'หมึก HP deskjet 2520 (46) สีดำ', null, '1');
INSERT INTO `items` VALUES ('22', 'หมึก HP deskjet 2520 (46) สี', null, '1');
INSERT INTO `items` VALUES ('23', 'หมึก Brother DCP j-100 (ดำ) แบบเติม', null, '1');
INSERT INTO `items` VALUES ('24', 'หมึก Brother DCP j-100 (แดง) แบบเติม', null, '1');
INSERT INTO `items` VALUES ('25', 'หมึก Brother DCP j-100 (น้ำเงิน) แบบเติม', null, '1');
INSERT INTO `items` VALUES ('26', 'หมึก Brother DCP j-100 (เหลือง) แบบเติม', null, '1');
INSERT INTO `items` VALUES ('27', 'หมึก HP CP 1025 ดำ', null, '1');
INSERT INTO `items` VALUES ('28', 'หมึก HP CP 1025 แดง', null, '1');
INSERT INTO `items` VALUES ('29', 'หมึก HP CP 1025 นำเงิน', null, '1');
INSERT INTO `items` VALUES ('30', 'หมึก HP CP 1025 เหลือง', null, '1');
INSERT INTO `items` VALUES ('31', 'หมึก Brother DCP-165c สีดำ แบบเติม', null, '1');
INSERT INTO `items` VALUES ('32', 'หมึก Brother DCP-165c สีแดง แบบเติม', null, '1');
INSERT INTO `items` VALUES ('33', 'หมึก Brother DCP-165c สีน้ำเงิน แบบเติม', null, '1');
INSERT INTO `items` VALUES ('34', 'หมึก Brother DCP-165c สีเหลือง แบบเติม', null, '1');
INSERT INTO `items` VALUES ('35', 'หมึก Epson LQ-2080i', null, '1');
INSERT INTO `items` VALUES ('36', 'เครื่องพิมพ์ HP P1102', '6', '8');
INSERT INTO `items` VALUES ('37', 'จอ LED', '6', '9');

-- ----------------------------
-- Table structure for items_type
-- ----------------------------
DROP TABLE IF EXISTS `items_type`;
CREATE TABLE `items_type` (
  `items_type_id` int(2) NOT NULL AUTO_INCREMENT,
  `items_type_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`items_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of items_type
-- ----------------------------
INSERT INTO `items_type` VALUES ('1', 'กล่อง');
INSERT INTO `items_type` VALUES ('2', 'โหล');
INSERT INTO `items_type` VALUES ('3', 'รีม');
INSERT INTO `items_type` VALUES ('4', 'หน่วย');
INSERT INTO `items_type` VALUES ('5', 'เมตร');
INSERT INTO `items_type` VALUES ('6', 'เครื่อง');

-- ----------------------------
-- Table structure for migration
-- ----------------------------
DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of migration
-- ----------------------------
INSERT INTO `migration` VALUES ('m000000_000000_base', '1446789240');
INSERT INTO `migration` VALUES ('m130524_201442_init', '1446789241');

-- ----------------------------
-- Table structure for out_plan
-- ----------------------------
DROP TABLE IF EXISTS `out_plan`;
CREATE TABLE `out_plan` (
  `out_plan_id` int(3) NOT NULL AUTO_INCREMENT,
  `dep_id` int(11) DEFAULT NULL,
  `items_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`out_plan_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of out_plan
-- ----------------------------
INSERT INTO `out_plan` VALUES ('1', '3', '14', '303', '2015-11-24');
INSERT INTO `out_plan` VALUES ('2', '2', '36', '5150', '2015-11-24');
INSERT INTO `out_plan` VALUES ('3', '19', '37', '3440', '2015-11-24');
INSERT INTO `out_plan` VALUES ('4', '3', '37', '3440', '2015-11-24');
INSERT INTO `out_plan` VALUES ('5', '3', '13', null, '2016-03-14');
INSERT INTO `out_plan` VALUES ('6', '3', '13', null, '2016-03-30');
INSERT INTO `out_plan` VALUES ('7', '3', '14', null, '2016-03-30');
INSERT INTO `out_plan` VALUES ('8', '3', '37', null, '2016-03-30');

-- ----------------------------
-- Table structure for plan
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
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of plan
-- ----------------------------
INSERT INTO `plan` VALUES ('1', '1', '2', '2', '0', null, null, '2015-11-09 12:11:44', '2015-11-09 12:11:44');
INSERT INTO `plan` VALUES ('2', '1', '7', '4', null, null, null, '2015-11-09 12:11:44', '2015-11-09 12:11:44');
INSERT INTO `plan` VALUES ('3', '1', '8', '2', null, null, null, '2015-11-09 12:11:44', '2015-11-09 12:11:44');
INSERT INTO `plan` VALUES ('5', '1', '11', '7', null, null, null, '2015-11-09 12:11:44', '2015-11-09 12:11:44');
INSERT INTO `plan` VALUES ('6', '1', '13', '8', '6', null, null, '2015-11-09 12:12:07', '2015-11-09 12:12:07');
INSERT INTO `plan` VALUES ('7', '1', '14', '4', '3', null, null, '2015-11-09 12:12:24', '2015-11-09 12:12:24');
INSERT INTO `plan` VALUES ('8', '1', '15', '100', null, null, null, '2015-11-09 12:12:42', '2015-11-09 12:12:42');
INSERT INTO `plan` VALUES ('9', '1', '17', '6', '2', null, null, '2015-11-09 12:13:03', '2015-11-09 12:13:03');
INSERT INTO `plan` VALUES ('10', '1', '18', '24', '19', null, null, '2015-11-09 12:13:25', '2015-11-09 12:13:25');
INSERT INTO `plan` VALUES ('11', '1', '19', '24', '22', null, null, '2015-11-09 12:14:04', '2015-11-09 12:14:04');
INSERT INTO `plan` VALUES ('12', '1', '20', '6', null, null, null, '2015-11-09 12:14:26', '2015-11-09 12:14:26');
INSERT INTO `plan` VALUES ('13', '1', '21', '55', '42', null, null, '2015-11-09 12:14:52', '2015-11-09 12:14:52');
INSERT INTO `plan` VALUES ('14', '1', '22', '30', '24', null, null, '2015-11-09 12:15:17', '2015-11-09 12:15:17');
INSERT INTO `plan` VALUES ('15', '2', '2', '3', '1', null, null, '2015-11-09 12:15:32', '2015-11-09 12:15:32');
INSERT INTO `plan` VALUES ('16', '2', '3', '3', '2', null, null, '2015-11-09 12:15:39', '2015-11-09 12:15:39');
INSERT INTO `plan` VALUES ('17', '2', '9', '1', null, null, null, '2015-11-09 12:16:01', '2015-11-09 12:16:01');
INSERT INTO `plan` VALUES ('18', '2', '12', '3', null, null, null, '2015-11-09 12:17:38', '2015-11-09 12:17:38');
INSERT INTO `plan` VALUES ('19', '2', '13', '3', null, null, null, '2015-11-09 12:17:48', '2015-11-09 12:17:48');
INSERT INTO `plan` VALUES ('20', '2', '13', '3', null, null, null, '2015-11-09 12:18:10', '2015-11-09 12:18:10');
INSERT INTO `plan` VALUES ('21', '2', '18', '24', '22', null, null, '2015-11-09 12:18:44', '2015-11-09 12:18:44');
INSERT INTO `plan` VALUES ('22', '3', '7', '5', '4', null, null, '2015-11-09 12:19:26', '2015-11-09 12:19:26');
INSERT INTO `plan` VALUES ('23', '3', '11', '2', null, null, null, '2015-11-09 12:19:39', '2015-11-09 12:19:39');
INSERT INTO `plan` VALUES ('24', '3', '18', '50', '40', null, null, '2015-11-09 12:20:00', '2015-11-09 12:20:00');
INSERT INTO `plan` VALUES ('25', '3', '21', '10', '6', null, null, '2015-11-09 12:20:36', '2015-11-09 12:20:36');
INSERT INTO `plan` VALUES ('26', '3', '22', '10', '6', null, null, '2015-11-09 12:20:51', '2015-11-09 12:20:51');
INSERT INTO `plan` VALUES ('27', '4', '2', '2', null, null, null, '2015-11-09 12:21:09', '2015-11-09 12:21:09');
INSERT INTO `plan` VALUES ('28', '4', '13', '2', null, null, null, '2015-11-09 12:21:21', '2015-11-09 12:21:21');
INSERT INTO `plan` VALUES ('29', '4', '14', '2', '1', null, null, '2015-11-09 12:21:38', '2015-11-09 12:21:38');
INSERT INTO `plan` VALUES ('30', '4', '23', '12', '10', null, null, '2015-11-09 12:21:53', '2015-11-09 12:21:53');
INSERT INTO `plan` VALUES ('31', '4', '24', '4', null, null, null, '2015-11-09 12:22:07', '2015-11-09 12:22:07');
INSERT INTO `plan` VALUES ('32', '4', '25', '4', null, null, null, '2015-11-09 12:22:20', '2015-11-09 12:22:20');
INSERT INTO `plan` VALUES ('33', '4', '26', '4', null, null, null, '2015-11-09 12:22:30', '2015-11-09 12:22:30');
INSERT INTO `plan` VALUES ('34', '5', '11', '1', null, null, null, '2015-11-09 12:22:47', '2015-11-09 12:22:47');
INSERT INTO `plan` VALUES ('35', '5', '13', '1', null, null, null, '2015-11-09 12:22:58', '2015-11-09 12:22:58');
INSERT INTO `plan` VALUES ('36', '5', '14', '1', null, null, null, '2015-11-09 12:23:09', '2015-11-09 12:23:09');
INSERT INTO `plan` VALUES ('37', '6', '2', '2', null, null, null, '2015-11-09 12:23:48', '2015-11-09 12:23:48');
INSERT INTO `plan` VALUES ('38', '6', '5', '1', null, null, null, '2015-11-09 12:24:26', '2015-11-09 12:24:26');
INSERT INTO `plan` VALUES ('39', '6', '5', '1', null, null, null, '2015-11-09 12:24:46', '2015-11-09 12:24:46');
INSERT INTO `plan` VALUES ('40', '6', '10', '1', null, null, null, '2015-11-09 12:24:57', '2015-11-09 12:24:57');
INSERT INTO `plan` VALUES ('41', '6', '11', '2', null, null, null, '2015-11-09 12:25:11', '2015-11-09 12:25:11');
INSERT INTO `plan` VALUES ('42', '6', '13', '4', null, null, null, '2015-11-09 12:25:28', '2015-11-09 12:25:28');
INSERT INTO `plan` VALUES ('43', '6', '14', '4', null, null, null, '2015-11-09 12:25:37', '2015-11-09 12:25:37');
INSERT INTO `plan` VALUES ('44', '6', '18', '20', '8', null, null, '2015-11-09 12:25:48', '2015-11-09 12:25:48');
INSERT INTO `plan` VALUES ('45', '6', '18', '40', '30', null, null, '2015-11-09 12:26:03', '2015-11-09 12:26:03');
INSERT INTO `plan` VALUES ('46', '6', '35', '4', null, null, null, '2015-11-09 12:26:25', '2015-11-09 12:26:25');
INSERT INTO `plan` VALUES ('47', '7', '20', '12', null, null, null, '2015-11-09 12:26:48', '2015-11-09 12:26:48');
INSERT INTO `plan` VALUES ('48', '7', '21', '12', null, null, null, '2015-11-09 12:27:35', '2015-11-09 12:27:35');
INSERT INTO `plan` VALUES ('49', '7', '22', '12', null, null, null, '2015-11-09 12:27:43', '2015-11-09 12:27:43');
INSERT INTO `plan` VALUES ('50', '8', '2', '1', null, null, null, '2015-11-09 13:17:45', '2015-11-09 13:17:45');
INSERT INTO `plan` VALUES ('51', '8', '13', '1', null, null, null, '2015-11-09 13:17:57', '2015-11-09 13:17:57');
INSERT INTO `plan` VALUES ('52', '8', '14', '1', null, null, null, '2015-11-09 13:18:08', '2015-11-09 13:18:08');
INSERT INTO `plan` VALUES ('53', '8', '18', '6', null, null, null, '2015-11-09 13:18:29', '2015-11-09 13:18:29');
INSERT INTO `plan` VALUES ('54', '9', '3', '2', null, null, null, '2015-11-09 13:18:51', '2015-11-09 13:18:51');
INSERT INTO `plan` VALUES ('55', '9', '3', '2', null, null, null, '2015-11-09 13:18:51', '2015-11-09 13:18:51');
INSERT INTO `plan` VALUES ('56', '9', '4', '2', null, null, null, '2015-11-09 13:19:07', '2015-11-09 13:19:07');
INSERT INTO `plan` VALUES ('57', '9', '5', '25', '-76', null, null, '2015-11-09 13:19:20', '2015-11-09 13:19:20');
INSERT INTO `plan` VALUES ('58', '9', '10', '6', '3', null, null, '2015-11-09 13:19:41', '2015-11-09 13:19:41');
INSERT INTO `plan` VALUES ('59', '9', '11', '6', '4', null, null, '2015-11-09 13:20:01', '2015-11-09 13:20:01');
INSERT INTO `plan` VALUES ('60', '9', '11', '6', null, null, null, '2015-11-09 13:20:01', '2015-11-09 13:20:01');
INSERT INTO `plan` VALUES ('61', '9', '12', '2', null, null, null, '2015-11-09 13:20:41', '2015-11-09 13:20:41');
INSERT INTO `plan` VALUES ('62', '9', '13', '2', null, null, null, '2015-11-09 13:20:53', '2015-11-09 13:20:53');
INSERT INTO `plan` VALUES ('63', '9', '15', '50', null, null, null, '2015-11-09 13:21:06', '2015-11-09 13:21:06');
INSERT INTO `plan` VALUES ('64', '9', '21', '3', '1', null, null, '2015-11-09 13:21:25', '2015-11-09 13:21:25');
INSERT INTO `plan` VALUES ('65', '9', '22', '3', '1', null, null, '2015-11-09 13:21:34', '2015-11-09 13:21:34');
INSERT INTO `plan` VALUES ('66', '12', '13', '2', null, null, null, '2015-11-11 08:32:25', '2015-11-11 08:32:25');
INSERT INTO `plan` VALUES ('67', '12', '14', '2', null, null, null, '2015-11-11 08:32:34', '2015-11-11 08:32:34');
INSERT INTO `plan` VALUES ('68', '12', '18', '8', '7', null, null, '2015-11-11 08:32:48', '2015-11-11 08:32:48');
INSERT INTO `plan` VALUES ('69', '12', '21', '12', '9', null, null, '2015-11-11 08:33:03', '2015-11-11 08:33:03');
INSERT INTO `plan` VALUES ('70', '12', '22', '12', '10', null, null, '2015-11-11 08:33:13', '2015-11-11 08:33:13');
INSERT INTO `plan` VALUES ('71', '13', '2', '1', null, null, null, '2015-11-11 08:33:41', '2015-11-11 08:33:41');
INSERT INTO `plan` VALUES ('72', '13', '5', '3', '2', null, null, '2015-11-11 08:33:56', '2015-11-11 08:33:56');
INSERT INTO `plan` VALUES ('73', '13', '10', '1', '0', null, null, '2015-11-11 08:34:09', '2015-11-11 08:34:09');
INSERT INTO `plan` VALUES ('74', '13', '12', '2', null, null, null, '2015-11-11 08:34:39', '2015-11-11 08:34:39');
INSERT INTO `plan` VALUES ('75', '13', '13', '2', '1', null, null, '2015-11-11 08:34:47', '2015-11-11 08:34:47');
INSERT INTO `plan` VALUES ('76', '13', '14', '2', '1', null, null, '2015-11-11 08:34:54', '2015-11-11 08:34:54');
INSERT INTO `plan` VALUES ('77', '13', '15', '20', null, null, null, '2015-11-11 08:35:07', '2015-11-11 08:35:07');
INSERT INTO `plan` VALUES ('78', '16', '13', '3', null, null, null, '2015-11-11 08:35:34', '2015-11-11 08:35:34');
INSERT INTO `plan` VALUES ('79', '16', '14', '2', null, null, null, '2015-11-11 08:35:43', '2015-11-11 08:35:43');
INSERT INTO `plan` VALUES ('80', '16', '19', '12', null, null, null, '2015-11-11 08:35:56', '2015-11-11 08:35:56');
INSERT INTO `plan` VALUES ('81', '16', '21', '10', '8', null, null, '2015-11-11 08:36:10', '2015-11-11 08:36:10');
INSERT INTO `plan` VALUES ('82', '16', '22', '10', '7', null, null, '2015-11-11 08:36:19', '2015-11-11 08:36:19');
INSERT INTO `plan` VALUES ('83', '17', '11', '1', null, null, null, '2015-11-11 08:37:00', '2015-11-11 08:37:00');
INSERT INTO `plan` VALUES ('84', '17', '13', '1', null, null, null, '2015-11-11 08:37:07', '2015-11-11 08:37:07');
INSERT INTO `plan` VALUES ('85', '17', '14', '1', null, null, null, '2015-11-11 08:37:15', '2015-11-11 08:37:15');
INSERT INTO `plan` VALUES ('86', '18', '2', '1', null, null, null, '2015-11-11 08:37:36', '2015-11-11 08:37:36');
INSERT INTO `plan` VALUES ('87', '18', '4', '2', null, null, null, '2015-11-11 08:37:45', '2015-11-11 08:37:45');
INSERT INTO `plan` VALUES ('88', '18', '11', '2', null, null, null, '2015-11-11 08:37:58', '2015-11-11 08:37:58');
INSERT INTO `plan` VALUES ('89', '18', '13', '2', null, null, null, '2015-11-11 08:38:05', '2015-11-11 08:38:05');
INSERT INTO `plan` VALUES ('90', '18', '14', '2', '1', null, null, '2015-11-11 08:38:14', '2015-11-11 08:38:14');
INSERT INTO `plan` VALUES ('91', '18', '19', '6', null, null, null, '2015-11-11 08:38:29', '2015-11-11 08:38:29');
INSERT INTO `plan` VALUES ('92', '18', '23', '6', null, null, null, '2015-11-11 08:38:47', '2015-11-11 08:38:47');
INSERT INTO `plan` VALUES ('93', '18', '32', '4', null, null, null, '2015-11-11 08:38:55', '2015-11-11 08:38:55');
INSERT INTO `plan` VALUES ('94', '18', '33', '4', null, null, null, '2015-11-11 08:39:03', '2015-11-11 08:39:03');
INSERT INTO `plan` VALUES ('95', '18', '26', '4', null, null, null, '2015-11-11 08:39:16', '2015-11-11 08:39:16');
INSERT INTO `plan` VALUES ('96', '19', '13', '3', null, null, null, '2015-11-11 08:41:46', '2015-11-11 08:41:46');
INSERT INTO `plan` VALUES ('97', '19', '14', '3', '0', null, null, '2015-11-11 08:41:53', '2015-11-11 08:41:53');
INSERT INTO `plan` VALUES ('98', '19', '18', '15', '10', null, null, '2015-11-11 08:42:08', '2015-11-11 08:42:08');
INSERT INTO `plan` VALUES ('99', '23', '2', '4', null, null, null, '2015-11-11 11:32:51', '2015-11-11 11:32:51');
INSERT INTO `plan` VALUES ('100', '23', '3', '4', null, null, null, '2015-11-11 11:33:06', '2015-11-11 11:33:06');
INSERT INTO `plan` VALUES ('101', '23', '4', '2', null, null, null, '2015-11-11 11:33:12', '2015-11-11 11:33:12');
INSERT INTO `plan` VALUES ('102', '23', '5', '20', null, null, null, '2015-11-11 11:33:27', '2015-11-11 11:33:27');
INSERT INTO `plan` VALUES ('103', '23', '6', '12', null, null, null, '2015-11-11 11:33:34', '2015-11-11 11:33:34');
INSERT INTO `plan` VALUES ('104', '23', '9', '4', null, null, null, '2015-11-11 11:33:55', '2015-11-11 11:33:55');
INSERT INTO `plan` VALUES ('105', '23', '10', '4', null, null, null, '2015-11-11 11:34:07', '2015-11-11 11:34:07');
INSERT INTO `plan` VALUES ('106', '23', '11', '4', null, null, null, '2015-11-11 11:34:15', '2015-11-11 11:34:15');
INSERT INTO `plan` VALUES ('107', '23', '12', '4', null, null, null, '2015-11-11 11:34:29', '2015-11-11 11:34:29');
INSERT INTO `plan` VALUES ('108', '23', '13', '4', null, null, null, '2015-11-11 11:34:35', '2015-11-11 11:34:35');
INSERT INTO `plan` VALUES ('109', '23', '14', '4', null, null, null, '2015-11-11 11:34:45', '2015-11-11 11:34:45');
INSERT INTO `plan` VALUES ('110', '23', '15', '500', null, null, null, '2015-11-11 11:35:01', '2015-11-11 11:35:01');
INSERT INTO `plan` VALUES ('111', '23', '16', '4', '2', null, null, '2015-11-11 11:35:07', '2015-11-11 11:35:07');
INSERT INTO `plan` VALUES ('112', '23', '19', '4', '2', null, null, '2015-11-11 11:35:25', '2015-11-11 11:35:25');
INSERT INTO `plan` VALUES ('113', '23', '27', '6', '4', null, null, '2015-11-11 11:35:42', '2015-11-11 11:35:42');
INSERT INTO `plan` VALUES ('114', '23', '28', '6', '4', null, null, '2015-11-11 11:35:50', '2015-11-11 11:35:50');
INSERT INTO `plan` VALUES ('115', '23', '29', '6', '4', null, null, '2015-11-11 11:35:58', '2015-11-11 11:35:58');
INSERT INTO `plan` VALUES ('116', '23', '30', '6', '4', null, null, '2015-11-11 11:36:06', '2015-11-11 11:36:06');
INSERT INTO `plan` VALUES ('117', '23', '31', '4', '3', null, null, '2015-11-11 11:36:20', '2015-11-11 11:36:20');
INSERT INTO `plan` VALUES ('118', '23', '32', '4', '3', null, null, '2015-11-11 11:36:27', '2015-11-11 11:36:27');
INSERT INTO `plan` VALUES ('119', '23', '33', '4', '3', null, null, '2015-11-11 11:36:34', '2015-11-11 11:36:34');
INSERT INTO `plan` VALUES ('120', '23', '34', '4', '3', null, null, '2015-11-11 11:36:43', '2015-11-11 11:36:43');
INSERT INTO `plan` VALUES ('121', '23', '34', '4', null, null, null, '2015-11-11 11:36:43', '2015-11-11 11:36:43');
INSERT INTO `plan` VALUES ('123', '25', '1', '100', '3', null, null, '2015-11-16 10:28:45', '2015-11-16 10:28:45');
INSERT INTO `plan` VALUES ('124', '26', '20', '6', '5', null, null, '2016-03-30 11:31:45', '2016-03-30 11:31:45');

-- ----------------------------
-- Table structure for po
-- ----------------------------
DROP TABLE IF EXISTS `po`;
CREATE TABLE `po` (
  `po_id` int(11) NOT NULL AUTO_INCREMENT,
  `po_date` date DEFAULT NULL,
  `plan_id` int(11) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `ref_no` int(10) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`po_id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of po
-- ----------------------------
INSERT INTO `po` VALUES ('19', '2015-11-10', '1', '0', '1', null, null, '2015-11-10 14:36:22', '2015-11-10 14:36:22');
INSERT INTO `po` VALUES ('20', '2015-11-10', '1', '0', '1', null, null, '2015-11-10 14:36:37', '2015-11-10 14:36:37');
INSERT INTO `po` VALUES ('21', '2015-11-13', '59', '104', '2', null, 'Y', '2015-11-13 11:31:38', '2015-11-23 11:54:31');
INSERT INTO `po` VALUES ('23', '2015-11-13', '58', '392', '2', null, 'Y', '2015-11-13 11:32:15', '2015-11-23 11:53:41');
INSERT INTO `po` VALUES ('24', '2015-11-13', '57', '170', '100', null, 'Y', '2015-11-13 11:32:42', '2015-12-01 10:37:09');
INSERT INTO `po` VALUES ('25', '2015-11-13', '64', '309', '1', null, 'Y', '2015-11-13 11:33:00', '2015-11-23 11:54:50');
INSERT INTO `po` VALUES ('26', '2015-11-13', '65', '309', '1', null, 'Y', '2015-11-13 11:33:39', '2015-11-23 11:54:59');
INSERT INTO `po` VALUES ('27', '2015-11-13', '29', '557', '1', null, 'Y', '2015-11-13 11:34:30', '2015-11-23 11:58:25');
INSERT INTO `po` VALUES ('28', '2015-11-13', '30', '248', '2', null, 'Y', '2015-11-13 11:34:47', '2015-11-23 11:58:39');
INSERT INTO `po` VALUES ('29', '2015-11-13', '97', '1671', '3', null, 'Y', '2015-11-13 11:35:16', '2015-11-23 11:59:05');
INSERT INTO `po` VALUES ('30', '2015-11-13', '13', '927', '3', null, 'Y', '2015-11-13 11:35:46', '2015-11-23 11:56:54');
INSERT INTO `po` VALUES ('31', '2015-11-13', '21', '0', '2', null, 'Y', '2015-11-13 11:36:41', '2015-11-13 11:36:41');
INSERT INTO `po` VALUES ('32', '2015-11-13', '68', '2060', '1', null, 'Y', '2015-11-13 11:39:09', '2015-11-23 11:55:34');
INSERT INTO `po` VALUES ('33', '2015-11-13', '70', '618', '2', null, 'Y', '2015-11-13 11:39:28', '2015-11-23 11:56:08');
INSERT INTO `po` VALUES ('34', '2015-11-13', '69', '927', '3', null, 'Y', '2015-11-13 11:39:41', '2015-11-23 11:56:21');
INSERT INTO `po` VALUES ('35', '2015-11-13', '6', '226', '1', null, 'Y', '2015-11-13 11:40:21', '2015-12-01 10:39:55');
INSERT INTO `po` VALUES ('36', '2015-11-13', '7', '303', '1', null, 'Y', '2015-11-13 11:40:40', '2015-12-01 10:40:27');
INSERT INTO `po` VALUES ('37', '2015-11-13', '6', '422', '1', null, 'Y', '2015-11-13 11:40:52', '2015-12-01 10:40:07');
INSERT INTO `po` VALUES ('42', '2015-11-16', '123', '0', '87', null, 'Y', '2015-11-16 10:30:11', '2015-11-16 11:02:16');
INSERT INTO `po` VALUES ('43', '2015-11-16', '123', '0', '10', null, 'Y', '2015-11-16 10:30:32', '2015-11-16 10:30:32');
INSERT INTO `po` VALUES ('44', '2015-12-18', '11', '700', '2', null, 'Y', '2015-12-18 13:50:03', '2016-01-20 09:11:33');
INSERT INTO `po` VALUES ('45', '2015-12-18', '111', '800', '1', null, 'Y', '2015-12-18 13:52:07', '2016-01-20 10:21:37');
INSERT INTO `po` VALUES ('46', '2015-12-18', '112', '850', '1', null, 'Y', '2015-12-18 13:52:24', '2016-01-20 10:23:25');
INSERT INTO `po` VALUES ('47', '2015-12-18', '113', '900', '1', null, 'Y', '2015-12-18 13:52:49', '2016-01-20 10:23:36');
INSERT INTO `po` VALUES ('48', '2015-12-18', '114', '900', '1', null, 'Y', '2015-12-18 13:53:10', '2016-01-20 10:23:42');
INSERT INTO `po` VALUES ('49', '2015-12-18', '115', '900', '1', null, 'Y', '2015-12-18 13:53:26', '2016-01-20 10:23:47');
INSERT INTO `po` VALUES ('50', '2015-12-18', '116', '900', '1', null, 'Y', '2015-12-18 13:53:40', '2016-01-20 10:23:53');
INSERT INTO `po` VALUES ('51', '2015-12-18', '117', '120', '1', null, 'Y', '2015-12-18 13:53:53', '2016-02-02 15:22:51');
INSERT INTO `po` VALUES ('52', '2015-12-18', '118', '120', '1', null, 'Y', '2015-12-18 13:54:07', '2016-02-02 15:22:57');
INSERT INTO `po` VALUES ('53', '2015-12-18', '119', '120', '1', null, 'Y', '2015-12-18 13:55:09', '2016-02-02 15:23:03');
INSERT INTO `po` VALUES ('54', '2015-12-18', '120', '120', '1', null, 'Y', '2015-12-18 13:55:19', '2016-02-02 15:23:09');
INSERT INTO `po` VALUES ('55', '2015-12-18', '24', '8500', '10', null, 'Y', '2015-12-18 13:56:37', '2016-01-20 10:24:09');
INSERT INTO `po` VALUES ('56', '2015-12-18', '25', '710', '2', null, 'Y', '2015-12-18 13:56:55', '2016-02-02 15:23:35');
INSERT INTO `po` VALUES ('57', '2015-12-18', '26', '710', '2', null, 'Y', '2015-12-18 13:57:05', '2016-02-02 15:23:43');
INSERT INTO `po` VALUES ('58', '2015-12-18', '13', '1065', '3', null, 'Y', '2015-12-18 13:58:14', '2016-02-02 15:23:59');
INSERT INTO `po` VALUES ('59', '2015-12-18', '14', '710', '2', null, 'Y', '2015-12-18 13:58:26', '2016-02-02 15:24:08');
INSERT INTO `po` VALUES ('60', '2015-12-18', '10', '1700', '2', null, 'Y', '2015-12-18 13:58:39', '2016-01-20 10:24:27');
INSERT INTO `po` VALUES ('61', '2015-12-18', '76', '340', '1', null, 'Y', '2015-12-18 13:59:35', '2016-02-02 15:24:23');
INSERT INTO `po` VALUES ('62', '2015-12-18', '75', '295', '1', null, 'Y', '2015-12-18 13:59:46', '2016-02-02 15:24:34');
INSERT INTO `po` VALUES ('63', '2015-12-18', '73', '0', '1', null, 'Y', '2015-12-18 14:00:02', '2016-02-02 15:24:42');
INSERT INTO `po` VALUES ('64', '2015-12-18', '72', '70', '1', null, 'Y', '2015-12-18 14:00:14', '2016-02-02 15:24:52');
INSERT INTO `po` VALUES ('65', '2016-01-04', '98', '1700', '2', null, 'Y', '2016-01-04 10:35:47', '2016-03-01 07:35:58');
INSERT INTO `po` VALUES ('66', '2016-01-04', '45', '8500', '10', null, 'Y', '2016-01-04 10:36:36', '2016-03-01 07:35:49');
INSERT INTO `po` VALUES ('67', '2016-01-04', '44', '1700', '2', null, 'Y', '2016-01-04 10:36:46', '2016-03-01 07:44:06');
INSERT INTO `po` VALUES ('68', '2016-02-01', '90', '310', '1', null, 'Y', '2016-02-01 11:11:05', '2016-03-30 08:23:26');
INSERT INTO `po` VALUES ('69', '2016-02-01', '81', '650', '2', null, 'Y', '2016-02-01 11:11:40', '2016-03-30 08:23:56');
INSERT INTO `po` VALUES ('70', '2016-02-01', '82', '975', '3', null, 'Y', '2016-02-01 11:11:50', '2016-03-30 08:24:14');
INSERT INTO `po` VALUES ('71', '2016-02-15', '111', '800', '1', null, 'Y', '2016-02-15 10:23:06', '2016-03-30 11:23:48');
INSERT INTO `po` VALUES ('72', '2016-02-15', '112', '850', '1', null, 'Y', '2016-02-15 10:23:20', '2016-03-30 11:24:08');
INSERT INTO `po` VALUES ('73', '2016-02-15', '113', '900', '1', null, 'Y', '2016-02-15 10:23:39', '2016-03-30 11:24:33');
INSERT INTO `po` VALUES ('74', '2016-02-15', '114', '900', '1', null, 'Y', '2016-02-15 10:23:49', '2016-03-30 11:24:38');
INSERT INTO `po` VALUES ('75', '2016-02-15', '115', '900', '1', null, 'Y', '2016-02-15 10:23:58', '2016-03-30 11:24:44');
INSERT INTO `po` VALUES ('76', '2016-02-15', '116', '900', '1', null, 'Y', '2016-02-15 10:24:10', '2016-03-30 11:24:49');
INSERT INTO `po` VALUES ('77', '2016-03-14', '13', '1300', '4', null, 'Y', '2016-03-14 14:07:13', '2016-03-30 08:24:36');
INSERT INTO `po` VALUES ('78', '2016-03-14', '14', '650', '2', null, 'Y', '2016-03-14 14:07:24', '2016-03-30 08:24:47');
INSERT INTO `po` VALUES ('79', '2016-03-14', '9', '1480', '4', null, 'Y', '2016-03-14 14:07:36', '2016-03-30 08:25:02');
INSERT INTO `po` VALUES ('80', '2016-03-14', '58', '190', '1', null, 'Y', '2016-03-14 14:08:39', '2016-03-30 08:25:13');
INSERT INTO `po` VALUES ('81', '2016-03-14', '57', '60', '1', null, 'Y', '2016-03-14 14:08:54', '2016-03-30 08:25:23');
INSERT INTO `po` VALUES ('82', '2016-03-14', '64', '325', '1', null, 'Y', '2016-03-14 14:09:08', '2016-03-30 11:22:29');
INSERT INTO `po` VALUES ('83', '2016-03-14', '65', '325', '1', null, 'Y', '2016-03-14 14:09:18', '2016-03-30 11:22:38');
INSERT INTO `po` VALUES ('84', '2016-03-30', '13', null, '3', null, 'N', '2016-03-30 11:26:26', '2016-03-30 11:26:26');
INSERT INTO `po` VALUES ('85', '2016-03-30', '14', null, '2', null, 'N', '2016-03-30 11:26:43', '2016-03-30 11:26:43');
INSERT INTO `po` VALUES ('86', '2016-03-30', '10', null, '3', null, 'N', '2016-03-30 11:27:02', '2016-03-30 11:27:02');
INSERT INTO `po` VALUES ('87', '2016-03-30', '22', null, '1', null, 'N', '2016-03-30 11:27:27', '2016-03-30 11:27:27');
INSERT INTO `po` VALUES ('88', '2016-03-30', '25', null, '2', null, 'N', '2016-03-30 11:27:41', '2016-03-30 11:27:41');
INSERT INTO `po` VALUES ('89', '2016-03-30', '26', null, '2', null, 'N', '2016-03-30 11:27:52', '2016-03-30 11:27:52');
INSERT INTO `po` VALUES ('90', '2016-03-30', '44', null, '10', null, 'N', '2016-03-30 11:29:37', '2016-03-30 11:29:37');
INSERT INTO `po` VALUES ('91', '2016-03-30', '98', null, '3', null, 'N', '2016-03-30 11:30:19', '2016-03-30 11:30:19');
INSERT INTO `po` VALUES ('92', '2016-03-30', '124', null, '1', null, 'N', '2016-03-30 11:32:13', '2016-03-30 11:32:13');

-- ----------------------------
-- Table structure for user
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
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'bomkeen', 'NNYZERf289UV9CFsJab-X1pz89I9zMkt', '$2y$13$Urg49hdsPQfNP6Za8WAHwO7MehyHqzpZw4ohpqzNUVdqXN7Wi2alG', null, 'bomkeendata@gmail.com', '10', '1446792922', '1446792922');
DROP TRIGGER IF EXISTS `updatetotal`;
DELIMITER ;;
CREATE TRIGGER `updatetotal` AFTER INSERT ON `po` FOR EACH ROW BEGIN

UPDATE plan p  SET p.total_now=(p.total-(SELECT SUM(total) FROM po WHERE plan_id=new.plan_id)) WHERE p.plan_id=new.plan_id;
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `editetotal`;
DELIMITER ;;
CREATE TRIGGER `editetotal` AFTER UPDATE ON `po` FOR EACH ROW BEGIN

UPDATE plan p  SET p.total_now=(p.total-(SELECT SUM(total) FROM po WHERE plan_id=new.plan_id)) WHERE p.plan_id=new.plan_id;
END
;;
DELIMITER ;
