/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50625
Source Host           : 127.0.0.1:3306
Source Database       : freego

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2017-06-11 21:13:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cms_articles
-- ----------------------------
DROP TABLE IF EXISTS `cms_articles`;
CREATE TABLE `cms_articles` (
  `id` bigint(20) NOT NULL,
  `authorId` bigint(20) DEFAULT '0',
  `keywords` varchar(150) DEFAULT NULL,
  `source` varchar(150) DEFAULT NULL,
  `createDate` datetime DEFAULT '0000-00-00 00:00:00',
  `content` text,
  `title` varchar(100) DEFAULT NULL,
  `excerpt` varchar(1000) DEFAULT NULL,
  `status` int(2) DEFAULT '1',
  `commentStatus` int(2) DEFAULT '1',
  `modified` datetime DEFAULT NULL,
  `typeId` bigint(20) DEFAULT '0',
  `commentCount` varchar(100) DEFAULT '',
  `hits` int(11) DEFAULT '0',
  `praise` int(11) DEFAULT '0',
  `istop` int(1) DEFAULT '0',
  `recommended` int(1) DEFAULT '0',
  `memberStatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_articles
-- ----------------------------

-- ----------------------------
-- Table structure for s_category
-- ----------------------------
DROP TABLE IF EXISTS `s_category`;
CREATE TABLE `s_category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `parentCategoryId` bigint(20) DEFAULT NULL,
  `categoryIndex` int(11) DEFAULT NULL,
  `orgId` varchar(50) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `createUserId` varchar(50) DEFAULT NULL,
  `logoId` bigint(20) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `viewUrl` varchar(500) DEFAULT NULL,
  `deleteFlag` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_category
-- ----------------------------
INSERT INTO `s_category` VALUES ('-1', '顶级分类', null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `s_category` VALUES ('1', '组织机构分类', 'org', '-1', '1', null, '2015-09-28 10:00:00', '1', null, null, null, '0');
INSERT INTO `s_category` VALUES ('4', '平台运营', 'org004', '1', '4', null, null, null, null, null, null, '0');
INSERT INTO `s_category` VALUES ('5', '客栈', 'org005', '1', '5', null, null, null, null, null, null, '0');
INSERT INTO `s_category` VALUES ('10', '系统维护', 'org010', '1', '10', null, null, null, null, null, null, '0');
INSERT INTO `s_category` VALUES ('481', '区域管理分类', 'areaManager', '-1', null, null, null, null, null, '', '', null);
INSERT INTO `s_category` VALUES ('482', '大理双廊区域', 'sl', '481', null, null, null, null, null, '', '', null);
INSERT INTO `s_category` VALUES ('483', '大理古城区域', 'dlgc', '481', '0', null, null, null, '0', '', '', null);
INSERT INTO `s_category` VALUES ('484', '丽江区域', 'lj', '481', null, null, null, null, null, '', '', null);
INSERT INTO `s_category` VALUES ('501', '版纳区域', 'bn', '481', null, null, null, null, null, '', '', null);
INSERT INTO `s_category` VALUES ('502', '香格里拉区域', 'xgll', '481', null, null, null, null, null, '', '', null);

-- ----------------------------
-- Table structure for s_city
-- ----------------------------
DROP TABLE IF EXISTS `s_city`;
CREATE TABLE `s_city` (
  `id` bigint(11) NOT NULL,
  `code` varchar(30) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `abbreviation` varchar(20) DEFAULT NULL,
  `demo` varchar(200) DEFAULT NULL,
  `parentId` bigint(11) DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='S_Site';

-- ----------------------------
-- Records of s_city
-- ----------------------------
INSERT INTO `s_city` VALUES ('1', '000', '中国', 'ZG', '中华人民共和国', '-1', null, null);
INSERT INTO `s_city` VALUES ('2', '000003', '北京', 'BJ', null, '1', null, null);
INSERT INTO `s_city` VALUES ('3', '000025', '上海', 'SH', null, '1', null, null);
INSERT INTO `s_city` VALUES ('4', '000028', '天津', 'TJ', null, '1', null, null);
INSERT INTO `s_city` VALUES ('5', '000034', '重庆', 'ZQ', null, '1', null, null);
INSERT INTO `s_city` VALUES ('6', '000010', '河北', 'HB', null, '1', null, null);
INSERT INTO `s_city` VALUES ('7', '000023', '山西', 'SX', null, '1', null, null);
INSERT INTO `s_city` VALUES ('8', '000019', '内蒙古', 'NMG', null, '1', null, null);
INSERT INTO `s_city` VALUES ('9', '000018', '辽宁', 'LN', null, '1', null, null);
INSERT INTO `s_city` VALUES ('10', '000015', '吉林', 'JL', null, '1', null, null);
INSERT INTO `s_city` VALUES ('11', '000012', '黑龙江', 'HLJ', null, '1', null, null);
INSERT INTO `s_city` VALUES ('12', '000016', '江苏', 'JS', null, '1', null, null);
INSERT INTO `s_city` VALUES ('13', '000033', '浙江', 'ZJ', null, '1', null, null);
INSERT INTO `s_city` VALUES ('14', '000001', '安徽', 'AH', null, '1', null, null);
INSERT INTO `s_city` VALUES ('15', '000004', '福建', 'FJ', null, '1', null, null);
INSERT INTO `s_city` VALUES ('16', '000017', '江西', 'JX', null, '1', null, null);
INSERT INTO `s_city` VALUES ('17', '000022', '山东', 'SD', null, '1', null, null);
INSERT INTO `s_city` VALUES ('18', '000011', '河南', 'HN', null, '1', null, null);
INSERT INTO `s_city` VALUES ('19', '000013', '湖北', 'HB', null, '1', null, null);
INSERT INTO `s_city` VALUES ('20', '000014', '湖南', 'HN', null, '1', null, null);
INSERT INTO `s_city` VALUES ('21', '000006', '广东', 'GD', null, '1', null, null);
INSERT INTO `s_city` VALUES ('22', '000007', '广西', 'GX', null, '1', null, null);
INSERT INTO `s_city` VALUES ('23', '000009', '海南', 'HN', null, '1', null, null);
INSERT INTO `s_city` VALUES ('24', '000026', '四川', 'SC', null, '1', null, null);
INSERT INTO `s_city` VALUES ('25', '000008', '贵州', 'GZ', null, '1', null, null);
INSERT INTO `s_city` VALUES ('26', '000032', '云南', 'YN', null, '1', null, null);
INSERT INTO `s_city` VALUES ('27', '000029', '西藏', 'XC', null, '1', null, null);
INSERT INTO `s_city` VALUES ('28', '000024', '陕西', 'SX', null, '1', null, null);
INSERT INTO `s_city` VALUES ('29', '000005', '甘肃', 'GS', null, '1', null, null);
INSERT INTO `s_city` VALUES ('30', '000021', '青海', 'QH', null, '1', null, null);
INSERT INTO `s_city` VALUES ('31', '000020', '宁夏', 'NX', null, '1', null, null);
INSERT INTO `s_city` VALUES ('32', '000031', '新疆', 'XJ', null, '1', null, null);
INSERT INTO `s_city` VALUES ('33', '000030', '香港', 'XG', null, '1', null, null);
INSERT INTO `s_city` VALUES ('34', '000002', '澳门', 'AM', null, '1', null, null);
INSERT INTO `s_city` VALUES ('35', '000027', '台湾', 'TW', null, '1', null, null);
INSERT INTO `s_city` VALUES ('37', '000010002', '石家庄', 'SJZ', null, '6', null, null);
INSERT INTO `s_city` VALUES ('38', '000010003', '唐山', 'TS', null, '6', null, null);
INSERT INTO `s_city` VALUES ('39', '000010001', '秦皇岛', 'QHD', null, '6', null, null);
INSERT INTO `s_city` VALUES ('40', '000010', '邯郸', 'HD', null, '6', null, null);
INSERT INTO `s_city` VALUES ('41', '000010004', '邢台', 'XT', null, '6', null, null);
INSERT INTO `s_city` VALUES ('42', '000010', '保定', 'BD', null, '6', null, null);
INSERT INTO `s_city` VALUES ('43', '000010005', '张家口', 'ZJK', null, '6', null, null);
INSERT INTO `s_city` VALUES ('44', '000010', '承德', 'CD', null, '6', null, null);
INSERT INTO `s_city` VALUES ('45', '000010', '沧州', 'CZ', null, '6', null, null);
INSERT INTO `s_city` VALUES ('46', '000010', '廊坊', 'LF', null, '6', null, null);
INSERT INTO `s_city` VALUES ('47', '000010', '衡水', 'HS', null, '6', null, null);
INSERT INTO `s_city` VALUES ('48', '000023008', '太原', 'TY', null, '7', null, null);
INSERT INTO `s_city` VALUES ('49', '000023002', '大同', 'DT', null, '7', null, null);
INSERT INTO `s_city` VALUES ('50', '000023010', '阳泉', 'YQ', null, '7', null, null);
INSERT INTO `s_city` VALUES ('51', '000023001', '长治', 'CZ', null, '7', null, null);
INSERT INTO `s_city` VALUES ('52', '000023003', '晋城', 'JC', null, '7', null, null);
INSERT INTO `s_city` VALUES ('53', '000023007', '朔州', 'SZ', null, '7', null, null);
INSERT INTO `s_city` VALUES ('54', '000023004', '晋中', 'JZ', null, '7', null, null);
INSERT INTO `s_city` VALUES ('55', '000023011', '运城', 'YC', null, '7', null, null);
INSERT INTO `s_city` VALUES ('56', '000023009', '忻州', 'XZ', null, '7', null, null);
INSERT INTO `s_city` VALUES ('57', '000023005', '临汾', 'LF', null, '7', null, null);
INSERT INTO `s_city` VALUES ('58', '000023006', '吕梁', 'LL', null, '7', null, null);
INSERT INTO `s_city` VALUES ('59', '000019006', '呼和浩特', 'HHHT', null, '8', null, null);
INSERT INTO `s_city` VALUES ('60', '000019003', '包头', 'BT', null, '8', null, null);
INSERT INTO `s_city` VALUES ('61', '000019009', '乌海', 'WH', null, '8', null, null);
INSERT INTO `s_city` VALUES ('62', '000019004', '赤峰', 'CF', null, '8', null, null);
INSERT INTO `s_city` VALUES ('63', '000019008', '通辽', 'TL', null, '8', null, null);
INSERT INTO `s_city` VALUES ('64', '000019005', '鄂尔多斯', 'EEDS', null, '8', null, null);
INSERT INTO `s_city` VALUES ('65', '000019007', '呼伦贝尔', 'HLBE', null, '8', null, null);
INSERT INTO `s_city` VALUES ('66', '000019010', '乌兰察布盟', 'WLCBM', null, '8', null, null);
INSERT INTO `s_city` VALUES ('67', '000019011', '锡林郭勒盟', 'XLGLM', null, '8', null, null);
INSERT INTO `s_city` VALUES ('68', '000019002', '巴彦淖尔盟', 'BYNEM', null, '8', null, null);
INSERT INTO `s_city` VALUES ('69', '000019001', '阿拉善盟', 'ALSM', null, '8', null, null);
INSERT INTO `s_city` VALUES ('70', '000019012', '兴安盟', 'XAM', null, '8', null, null);
INSERT INTO `s_city` VALUES ('71', '000018012', '沈阳', 'SY', null, '9', null, null);
INSERT INTO `s_city` VALUES ('72', '000018004', '大连', 'DL', null, '9', null, null);
INSERT INTO `s_city` VALUES ('73', '000018001', '鞍山', 'AS', null, '9', null, null);
INSERT INTO `s_city` VALUES ('74', '000018006', '抚顺', 'FS', null, '9', null, null);
INSERT INTO `s_city` VALUES ('75', '000018002', '本溪', 'BX', null, '9', null, null);
INSERT INTO `s_city` VALUES ('76', '000018005', '丹东', 'DD', null, '9', null, null);
INSERT INTO `s_city` VALUES ('77', '000018009', '锦州', 'JZ', null, '9', null, null);
INSERT INTO `s_city` VALUES ('78', '000018008', '葫芦岛', 'HLD', null, '9', null, null);
INSERT INTO `s_city` VALUES ('79', '000018014', '营口', 'YK', null, '9', null, null);
INSERT INTO `s_city` VALUES ('80', '000018011', '盘锦', 'PJ', null, '9', null, null);
INSERT INTO `s_city` VALUES ('81', '000018007', '阜新', 'FX', null, '9', null, null);
INSERT INTO `s_city` VALUES ('82', '000018010', '辽阳', 'LY', null, '9', null, null);
INSERT INTO `s_city` VALUES ('83', '000018013', '铁岭', 'TL', null, '9', null, null);
INSERT INTO `s_city` VALUES ('84', '000018003', '朝阳', 'CY', null, '9', null, null);
INSERT INTO `s_city` VALUES ('85', '000015003', '长春', 'CC', null, '10', null, null);
INSERT INTO `s_city` VALUES ('86', '000015004', '吉林', 'JL', null, '10', null, null);
INSERT INTO `s_city` VALUES ('87', '000015008', '西平', 'XP', null, '10', null, null);
INSERT INTO `s_city` VALUES ('88', '000015005', '辽源', 'LY', null, '10', null, null);
INSERT INTO `s_city` VALUES ('89', '000015007', '通化', 'TH', null, '10', null, null);
INSERT INTO `s_city` VALUES ('90', '000015002', '白山', 'BS', null, '10', null, null);
INSERT INTO `s_city` VALUES ('91', '000015006', '松原', 'SY', null, '10', null, null);
INSERT INTO `s_city` VALUES ('92', '000015001', '白城', 'BC', null, '10', null, null);
INSERT INTO `s_city` VALUES ('93', '000015009', '延边朝鲜族自治州', 'YBCXZZZZ', null, '10', null, null);
INSERT INTO `s_city` VALUES ('94', '000012003', '哈尔滨', 'HEB', null, '11', null, null);
INSERT INTO `s_city` VALUES ('95', '000012010', '齐齐哈尔', 'QQHE', null, '11', null, null);
INSERT INTO `s_city` VALUES ('96', '000012004', '鹤岗', 'HG', null, '11', null, null);
INSERT INTO `s_city` VALUES ('97', '000012011', '双鸭山', 'SYS', null, '11', null, null);
INSERT INTO `s_city` VALUES ('98', '000012006', '鸡西', 'JX', null, '11', null, null);
INSERT INTO `s_city` VALUES ('99', '000012001', '大庆', 'DQ', null, '11', null, null);
INSERT INTO `s_city` VALUES ('100', '000012013', '伊春', 'YC', null, '11', null, null);
INSERT INTO `s_city` VALUES ('101', '000012008', '牡丹江', 'MDJ', null, '11', null, null);
INSERT INTO `s_city` VALUES ('102', '000012007', '佳木斯', 'JMS', null, '11', null, null);
INSERT INTO `s_city` VALUES ('103', '000012009', '七台河', 'QTH', null, '11', null, null);
INSERT INTO `s_city` VALUES ('104', '000012005', '黑河', 'HH', null, '11', null, null);
INSERT INTO `s_city` VALUES ('105', '000012012', '绥化', 'SH', null, '11', null, null);
INSERT INTO `s_city` VALUES ('106', '000012002', '大兴安岭', 'DXAL', null, '11', null, null);
INSERT INTO `s_city` VALUES ('107', '000016004', '南京', 'NJ', null, '12', null, null);
INSERT INTO `s_city` VALUES ('108', '000016009', '无锡', 'WX', null, '12', null, null);
INSERT INTO `s_city` VALUES ('109', '000016010', '徐州', 'XZ', null, '12', null, null);
INSERT INTO `s_city` VALUES ('110', '000016001', '常州', 'CZ', null, '12', null, null);
INSERT INTO `s_city` VALUES ('111', '000016006', '苏州', 'SZ', null, '12', null, null);
INSERT INTO `s_city` VALUES ('112', '000016005', '南通', 'NT', null, '12', null, null);
INSERT INTO `s_city` VALUES ('113', '000016003', '连云港', 'LYG', null, '12', null, null);
INSERT INTO `s_city` VALUES ('114', '000016002', '淮安', 'HA', null, '12', null, null);
INSERT INTO `s_city` VALUES ('115', '000016011', '盐城', 'YC', null, '12', null, null);
INSERT INTO `s_city` VALUES ('116', '000016012', '扬州', 'YZ', null, '12', null, null);
INSERT INTO `s_city` VALUES ('117', '000016013', '镇江', 'ZJ', null, '12', null, null);
INSERT INTO `s_city` VALUES ('118', '000016008', '泰州', 'TZ', null, '12', null, null);
INSERT INTO `s_city` VALUES ('119', '000016007', '宿迁', 'SQ', null, '12', null, null);
INSERT INTO `s_city` VALUES ('120', '000033001', '杭州', 'HZ', null, '13', null, null);
INSERT INTO `s_city` VALUES ('121', '000033006', '宁波', 'NB', null, '13', null, null);
INSERT INTO `s_city` VALUES ('122', '000033010', '温州', 'WZ', null, '13', null, null);
INSERT INTO `s_city` VALUES ('123', '000033003', '嘉兴', 'JX', null, '13', null, null);
INSERT INTO `s_city` VALUES ('124', '000033002', '湖州', 'HZ', null, '13', null, null);
INSERT INTO `s_city` VALUES ('125', '000033008', '绍兴', 'SX', null, '13', null, null);
INSERT INTO `s_city` VALUES ('126', '000033004', '金华', 'JH', null, '13', null, null);
INSERT INTO `s_city` VALUES ('127', '000033007', '衢州', 'ZZ', null, '13', null, null);
INSERT INTO `s_city` VALUES ('128', '000033011', '舟山', 'ZS', null, '13', null, null);
INSERT INTO `s_city` VALUES ('129', '000033009', '台州', 'TZ', null, '13', null, null);
INSERT INTO `s_city` VALUES ('130', '000033005', '丽水', 'LS', null, '13', null, null);
INSERT INTO `s_city` VALUES ('131', '000001009', '合肥', 'HF', null, '14', null, null);
INSERT INTO `s_city` VALUES ('132', '000001006', '芙湖', 'ZH', null, '14', null, null);
INSERT INTO `s_city` VALUES ('133', '000001016', '蛙埠', 'WB', null, '14', null, null);
INSERT INTO `s_city` VALUES ('134', '000001011', '淮南', 'HN', null, '14', null, null);
INSERT INTO `s_city` VALUES ('135', '000001013', '马鞍山', 'MAS', null, '14', null, null);
INSERT INTO `s_city` VALUES ('136', '000001010', '淮北', 'HB', null, '14', null, null);
INSERT INTO `s_city` VALUES ('137', '000001015', '铜陵', 'TL', null, '14', null, null);
INSERT INTO `s_city` VALUES ('138', '000001001', '安庆', 'AQ', null, '14', null, null);
INSERT INTO `s_city` VALUES ('139', '000001012', '黄山', 'HS', null, '14', null, null);
INSERT INTO `s_city` VALUES ('140', '000001004', '滁州', 'CZ', null, '14', null, null);
INSERT INTO `s_city` VALUES ('141', '000001007', '阜阳', 'FY', null, '14', null, null);
INSERT INTO `s_city` VALUES ('142', '000001014', '宿州', 'SZ', null, '14', null, null);
INSERT INTO `s_city` VALUES ('143', '000001002', '巢湖', 'CH', null, '14', null, null);
INSERT INTO `s_city` VALUES ('144', '000001005', '大安', 'DA', null, '14', null, null);
INSERT INTO `s_city` VALUES ('145', '000001008', '毫州', 'HZ', null, '14', null, null);
INSERT INTO `s_city` VALUES ('146', '000001003', '池州', 'CZ', null, '14', null, null);
INSERT INTO `s_city` VALUES ('147', '000001017', '宣城', 'XC', null, '14', null, null);
INSERT INTO `s_city` VALUES ('148', '000004001', '福州', 'FZ', null, '15', null, null);
INSERT INTO `s_city` VALUES ('149', '000004008', '厦门', 'XM', null, '15', null, null);
INSERT INTO `s_city` VALUES ('150', '000004005', '莆田', 'PT', null, '15', null, null);
INSERT INTO `s_city` VALUES ('151', '000004007', '三明', 'SM', null, '15', null, null);
INSERT INTO `s_city` VALUES ('152', '000004006', '泉州', 'QZ', null, '15', null, null);
INSERT INTO `s_city` VALUES ('153', '000004009', '漳州', 'ZZ', null, '15', null, null);
INSERT INTO `s_city` VALUES ('154', '000004003', '南平', 'NP', null, '15', null, null);
INSERT INTO `s_city` VALUES ('155', '000004002', '龙岩', 'LY', null, '15', null, null);
INSERT INTO `s_city` VALUES ('156', '000004004', '宁德', 'ND', null, '15', null, null);
INSERT INTO `s_city` VALUES ('157', '000017006', '南昌', 'NC', null, '16', null, null);
INSERT INTO `s_city` VALUES ('158', '000017004', '景德镇', 'JDZ', null, '16', null, null);
INSERT INTO `s_city` VALUES ('159', '000017007', '萍乡', 'PX', null, '16', null, null);
INSERT INTO `s_city` VALUES ('160', '000017009', '新余', 'XY', null, '16', null, null);
INSERT INTO `s_city` VALUES ('161', '000017005', '九江', 'JJ', null, '16', null, null);
INSERT INTO `s_city` VALUES ('162', '000017011', '鹰潭', 'YT', null, '16', null, null);
INSERT INTO `s_city` VALUES ('163', '000017002', '赣州', 'GZ', null, '16', null, null);
INSERT INTO `s_city` VALUES ('164', '000017003', '吉安', 'JA', null, '16', null, null);
INSERT INTO `s_city` VALUES ('165', '000017010', '宜春', 'YC', null, '16', null, null);
INSERT INTO `s_city` VALUES ('166', '000017001', '抚州', 'FZ', null, '16', null, null);
INSERT INTO `s_city` VALUES ('167', '000017008', '上饶', 'SR', null, '16', null, null);
INSERT INTO `s_city` VALUES ('168', '000022005', '济南', 'JN', null, '17', null, null);
INSERT INTO `s_city` VALUES ('169', '000022010', '青岛', 'QD', null, '17', null, null);
INSERT INTO `s_city` VALUES ('170', '000022017', '淄博', 'ZB', null, '17', null, null);
INSERT INTO `s_city` VALUES ('171', '000022016', '枣庄', 'ZZ', null, '17', null, null);
INSERT INTO `s_city` VALUES ('172', '000022003', '东营', 'DY', null, '17', null, null);
INSERT INTO `s_city` VALUES ('173', '000022014', '潍坊', 'WF', null, '17', null, null);
INSERT INTO `s_city` VALUES ('174', '000022015', '烟台', 'YT', null, '17', null, null);
INSERT INTO `s_city` VALUES ('175', '000022013', '威海', 'WH', null, '17', null, null);
INSERT INTO `s_city` VALUES ('176', '000022006', '济宁', 'JN', null, '17', null, null);
INSERT INTO `s_city` VALUES ('177', '000022012', '泰安', 'TA', null, '17', null, null);
INSERT INTO `s_city` VALUES ('178', '000022011', '日照', 'RZ', null, '17', null, null);
INSERT INTO `s_city` VALUES ('179', '000022007', '莱芜', 'LW', null, '17', null, null);
INSERT INTO `s_city` VALUES ('180', '000022002', '德州', 'DZ', null, '17', null, null);
INSERT INTO `s_city` VALUES ('181', '000022009', '临沂', 'LY', null, '17', null, null);
INSERT INTO `s_city` VALUES ('182', '000022008', '聊城', 'LC', null, '17', null, null);
INSERT INTO `s_city` VALUES ('183', '000022001', '滨州', 'BZ', null, '17', null, null);
INSERT INTO `s_city` VALUES ('184', '000022004', '菏泽', 'HZ', null, '17', null, null);
INSERT INTO `s_city` VALUES ('185', '000011016', '郑州', 'ZZ', null, '18', null, null);
INSERT INTO `s_city` VALUES ('186', '000011005', '开封', 'KF', null, '18', null, null);
INSERT INTO `s_city` VALUES ('187', '000011006', '洛阳', 'LY', null, '18', null, null);
INSERT INTO `s_city` VALUES ('188', '000011009', '平顶山', 'PDS', null, '18', null, null);
INSERT INTO `s_city` VALUES ('189', '000011004', '焦作', 'JZ', null, '18', null, null);
INSERT INTO `s_city` VALUES ('190', '000011002', '鹤壁', 'HB', null, '18', null, null);
INSERT INTO `s_city` VALUES ('191', '000011013', '新乡', 'XX', null, '18', null, null);
INSERT INTO `s_city` VALUES ('192', '000011001', '安阳', 'AY', null, '18', null, null);
INSERT INTO `s_city` VALUES ('193', '000011010', '濮阳', 'ZY', null, '18', null, null);
INSERT INTO `s_city` VALUES ('194', '000011015', '许昌', 'XC', null, '18', null, null);
INSERT INTO `s_city` VALUES ('195', '000011007', '漯河', 'ZH', null, '18', null, null);
INSERT INTO `s_city` VALUES ('196', '000011011', '三门峡', 'SMX', null, '18', null, null);
INSERT INTO `s_city` VALUES ('197', '000011008', '南阳', 'NY', null, '18', null, null);
INSERT INTO `s_city` VALUES ('198', '000011012', '商丘', 'SQ', null, '18', null, null);
INSERT INTO `s_city` VALUES ('199', '000011014', '信阳', 'XY', null, '18', null, null);
INSERT INTO `s_city` VALUES ('200', '000011017', '周口', 'ZK', null, '18', null, null);
INSERT INTO `s_city` VALUES ('201', '000011018', '驻马店', 'ZMD', null, '18', null, null);
INSERT INTO `s_city` VALUES ('202', '000011003', '济源', 'JY', null, '18', null, null);
INSERT INTO `s_city` VALUES ('203', '000013012', '武汉', 'WH', null, '19', null, null);
INSERT INTO `s_city` VALUES ('204', '000013004', '黄石', 'HS', null, '19', null, null);
INSERT INTO `s_city` VALUES ('205', '000013015', '襄樊', 'XF', null, '19', null, null);
INSERT INTO `s_city` VALUES ('206', '000013009', '十堰', 'SY', null, '19', null, null);
INSERT INTO `s_city` VALUES ('207', '000013006', '荆州', 'JZ', null, '19', null, null);
INSERT INTO `s_city` VALUES ('208', '000013017', '宜昌', 'YC', null, '19', null, null);
INSERT INTO `s_city` VALUES ('209', '000013005', '荆门', 'JM', null, '19', null, null);
INSERT INTO `s_city` VALUES ('210', '000013001', '鄂州', 'EZ', null, '19', null, null);
INSERT INTO `s_city` VALUES ('211', '000013016', '孝感', 'XG', null, '19', null, null);
INSERT INTO `s_city` VALUES ('212', '000013003', '黄冈', 'HG', null, '19', null, null);
INSERT INTO `s_city` VALUES ('213', '000013014', '咸宁', 'XN', null, '19', null, null);
INSERT INTO `s_city` VALUES ('214', '000013010', '随州', 'SZ', null, '19', null, null);
INSERT INTO `s_city` VALUES ('215', '000013013', '仙桃', 'XT', null, '19', null, null);
INSERT INTO `s_city` VALUES ('216', '000013011', '天门', 'TM', null, '19', null, null);
INSERT INTO `s_city` VALUES ('217', '000013007', '潜江', 'QJ', null, '19', null, null);
INSERT INTO `s_city` VALUES ('218', '000013008', '神农架', 'SNJ', null, '19', null, null);
INSERT INTO `s_city` VALUES ('219', '000013002', '恩施土家族苗族自治州', 'ESTJZMZZZZ', null, '19', null, null);
INSERT INTO `s_city` VALUES ('220', '000014001', '长沙', 'CS', null, '20', null, null);
INSERT INTO `s_city` VALUES ('221', '000014013', '株州', 'ZZ', null, '20', null, null);
INSERT INTO `s_city` VALUES ('222', '000014008', '湘潭', 'XT', null, '20', null, null);
INSERT INTO `s_city` VALUES ('223', '000014004', '衡阳', 'HY', null, '20', null, null);
INSERT INTO `s_city` VALUES ('224', '000014007', '邵阳', 'SY', null, '20', null, null);
INSERT INTO `s_city` VALUES ('225', '000014011', '岳阳', 'YY', null, '20', null, null);
INSERT INTO `s_city` VALUES ('226', '000014002', '常德', 'CD', null, '20', null, null);
INSERT INTO `s_city` VALUES ('227', '000014012', '张家界', 'ZJJ', null, '20', null, null);
INSERT INTO `s_city` VALUES ('228', '000014010', '益阳', 'YY', null, '20', null, null);
INSERT INTO `s_city` VALUES ('229', '000014003', '郴州', 'CZ', null, '20', null, null);
INSERT INTO `s_city` VALUES ('230', '000014005', '怀化', 'HH', null, '20', null, null);
INSERT INTO `s_city` VALUES ('231', '000014006', '娄底', 'LD', null, '20', null, null);
INSERT INTO `s_city` VALUES ('232', '000014009', '湘西土家族苗族自治州', 'XXTJZMZZZZ', null, '20', null, null);
INSERT INTO `s_city` VALUES ('233', '000006004', '广州', 'GZ', null, '21', null, null);
INSERT INTO `s_city` VALUES ('234', '000006015', '深圳', 'SZ', null, '21', null, null);
INSERT INTO `s_city` VALUES ('235', '000006021', '珠海', 'ZH', null, '21', null, null);
INSERT INTO `s_city` VALUES ('236', '000006012', '汕头', 'ST', null, '21', null, null);
INSERT INTO `s_city` VALUES ('237', '000006014', '韶关', 'SG', null, '21', null, null);
INSERT INTO `s_city` VALUES ('238', '000006003', '佛山', 'FS', null, '21', null, null);
INSERT INTO `s_city` VALUES ('239', '000006007', '江门', 'JM', null, '21', null, null);
INSERT INTO `s_city` VALUES ('240', '000006018', '湛江', 'ZJ', null, '21', null, null);
INSERT INTO `s_city` VALUES ('241', '000006009', '茂名', 'MM', null, '21', null, null);
INSERT INTO `s_city` VALUES ('242', '000006019', '肇庆', 'ZQ', null, '21', null, null);
INSERT INTO `s_city` VALUES ('243', '000006006', '惠州', 'HZ', null, '21', null, null);
INSERT INTO `s_city` VALUES ('244', '000006010', '梅州', 'MZ', null, '21', null, null);
INSERT INTO `s_city` VALUES ('245', '000006013', '汕尾', 'SW', null, '21', null, null);
INSERT INTO `s_city` VALUES ('246', '000006005', '河源', 'HY', null, '21', null, null);
INSERT INTO `s_city` VALUES ('247', '000006016', '阳江', 'YJ', null, '21', null, null);
INSERT INTO `s_city` VALUES ('248', '000006011', '清远', 'QY', null, '21', null, null);
INSERT INTO `s_city` VALUES ('249', '000006002', '东莞', 'DZ', null, '21', null, null);
INSERT INTO `s_city` VALUES ('250', '000006020', '中山', 'ZS', null, '21', null, null);
INSERT INTO `s_city` VALUES ('251', '000006001', '潮州', 'CZ', null, '21', null, null);
INSERT INTO `s_city` VALUES ('252', '000006008', '揭阳', 'JY', null, '21', null, null);
INSERT INTO `s_city` VALUES ('253', '000006017', '云浮', 'YF', null, '21', null, null);
INSERT INTO `s_city` VALUES ('254', '000007011', '南宁', 'NN', null, '22', null, null);
INSERT INTO `s_city` VALUES ('255', '000007010', '柳州', 'LZ', null, '22', null, null);
INSERT INTO `s_city` VALUES ('256', '000007006', '桂林', 'GL', null, '22', null, null);
INSERT INTO `s_city` VALUES ('257', '000007013', '梧州', 'WZ', null, '22', null, null);
INSERT INTO `s_city` VALUES ('258', '000007002', '北海', 'BH', null, '22', null, null);
INSERT INTO `s_city` VALUES ('259', '000007004', '防城港', 'FCG', null, '22', null, null);
INSERT INTO `s_city` VALUES ('260', '000007012', '钦州', 'QZ', null, '22', null, null);
INSERT INTO `s_city` VALUES ('261', '000007005', '贵港', 'GG', null, '22', null, null);
INSERT INTO `s_city` VALUES ('262', '000007014', '玉林', 'YL', null, '22', null, null);
INSERT INTO `s_city` VALUES ('263', '000007001', '百色', 'BS', null, '22', null, null);
INSERT INTO `s_city` VALUES ('264', '000007008', '贺州', 'HZ', null, '22', null, null);
INSERT INTO `s_city` VALUES ('265', '000007007', '河池', 'HC', null, '22', null, null);
INSERT INTO `s_city` VALUES ('266', '000007009', '来宾', 'LB', null, '22', null, null);
INSERT INTO `s_city` VALUES ('267', '000007003', '崇左', 'CZ', null, '22', null, null);
INSERT INTO `s_city` VALUES ('268', '000009008', '海口', 'HK', null, '23', null, null);
INSERT INTO `s_city` VALUES ('269', '000009014', '三亚', 'SY', null, '23', null, null);
INSERT INTO `s_city` VALUES ('270', '000009018', '五指山', 'WZS', null, '23', null, null);
INSERT INTO `s_city` VALUES ('271', '000009012', '琼海', 'QH', null, '23', null, null);
INSERT INTO `s_city` VALUES ('272', '000009005', '儋州', 'ZZ', null, '23', null, null);
INSERT INTO `s_city` VALUES ('273', '000009017', '文昌', 'WC', null, '23', null, null);
INSERT INTO `s_city` VALUES ('274', '000009016', '万宁', 'WN', null, '23', null, null);
INSERT INTO `s_city` VALUES ('275', '000009007', '东方', 'DF', null, '23', null, null);
INSERT INTO `s_city` VALUES ('276', '000009004', '澄迈', 'CM', null, '23', null, null);
INSERT INTO `s_city` VALUES ('277', '000009006', '定安', 'DA', null, '23', null, null);
INSERT INTO `s_city` VALUES ('278', '000009015', '屯昌', 'TC', null, '23', null, null);
INSERT INTO `s_city` VALUES ('279', '000009010', '临高', 'LG', null, '23', null, null);
INSERT INTO `s_city` VALUES ('280', '000009001', '白沙黎族自治县', 'BSLZZZX', null, '23', null, null);
INSERT INTO `s_city` VALUES ('281', '000009003', '昌江黎族自治县', 'CJLZZZX', null, '23', null, null);
INSERT INTO `s_city` VALUES ('282', '000009009', '乐东黎族自治县', 'LDLZZZX', null, '23', null, null);
INSERT INTO `s_city` VALUES ('283', '000009011', '陵水黎族自治县', 'LSLZZZX', null, '23', null, null);
INSERT INTO `s_city` VALUES ('284', '000009002', '保定黎族苗族自治县', 'BDLZMZZZX', null, '23', null, null);
INSERT INTO `s_city` VALUES ('285', '000009013', '琼中黎族苗族自治县', 'QZLZMZZZX', null, '23', null, null);
INSERT INTO `s_city` VALUES ('286', '000026003', '成都', 'CD', null, '24', null, null);
INSERT INTO `s_city` VALUES ('287', '000026021', '自供', 'ZG', null, '24', null, null);
INSERT INTO `s_city` VALUES ('288', '000026016', '攀枝花', 'PZH', null, '24', null, null);
INSERT INTO `s_city` VALUES ('289', '000026011', '泸州', 'ZZ', null, '24', null, null);
INSERT INTO `s_city` VALUES ('290', '000026005', '德阳', 'DY', null, '24', null, null);
INSERT INTO `s_city` VALUES ('291', '000026013', '绵阳', 'MY', null, '24', null, null);
INSERT INTO `s_city` VALUES ('292', '000026008', '广元', 'GY', null, '24', null, null);
INSERT INTO `s_city` VALUES ('293', '000026017', '遂宁', 'SN', null, '24', null, null);
INSERT INTO `s_city` VALUES ('294', '000026014', '内江', 'NJ', null, '24', null, null);
INSERT INTO `s_city` VALUES ('295', '000026009', '乐山', 'LS', null, '24', null, null);
INSERT INTO `s_city` VALUES ('296', '000026015', '南冲', 'NC', null, '24', null, null);
INSERT INTO `s_city` VALUES ('297', '000026019', '宜宾', 'YB', null, '24', null, null);
INSERT INTO `s_city` VALUES ('298', '000026007', '广安', 'GA', null, '24', null, null);
INSERT INTO `s_city` VALUES ('299', '000026004', '达州', 'DZ', null, '24', null, null);
INSERT INTO `s_city` VALUES ('300', '000026012', '眉山', 'MS', null, '24', null, null);
INSERT INTO `s_city` VALUES ('301', '000026018', '雅安', 'YA', null, '24', null, null);
INSERT INTO `s_city` VALUES ('302', '000026002', '巴中', 'BZ', null, '24', null, null);
INSERT INTO `s_city` VALUES ('303', '000026020', '资阳', 'ZY', null, '24', null, null);
INSERT INTO `s_city` VALUES ('304', '000026001', '阿坝藏族羌族自治州', 'ABCZQZZZZ', null, '24', null, null);
INSERT INTO `s_city` VALUES ('305', '000026006', '甘孜藏族自治州', 'GZCZZZZ', null, '24', null, null);
INSERT INTO `s_city` VALUES ('306', '000026010', '凉山彝族自治州', 'LSYZZZZ', null, '24', null, null);
INSERT INTO `s_city` VALUES ('307', '000008003', '贵阳', 'GY', null, '25', null, null);
INSERT INTO `s_city` VALUES ('308', '000008004', '六盘水', 'LPS', null, '25', null, null);
INSERT INTO `s_city` VALUES ('309', '000008009', '遵义', 'ZY', null, '25', null, null);
INSERT INTO `s_city` VALUES ('310', '000008001', '安顺', 'AS', null, '25', null, null);
INSERT INTO `s_city` VALUES ('311', '000008008', '铜仁', 'TR', null, '25', null, null);
INSERT INTO `s_city` VALUES ('312', '000008002', '毕节', 'BJ', null, '25', null, null);
INSERT INTO `s_city` VALUES ('313', '000008007', '黔西南布依族苗族自治州', 'QXNBYZMZZZZ', null, '25', null, null);
INSERT INTO `s_city` VALUES ('314', '000008005', '黔东南苗族侗族自治州', 'QDNMZDZZZZ', null, '25', null, null);
INSERT INTO `s_city` VALUES ('315', '000008006', '黔南布依族苗族自治州', 'QNBYZMZZZZ', null, '25', null, null);
INSERT INTO `s_city` VALUES ('316', '000032007', '昆明', 'KM', null, '26', null, null);
INSERT INTO `s_city` VALUES ('317', '000032011', '曲靖', 'QJ', null, '26', null, null);
INSERT INTO `s_city` VALUES ('318', '000032015', '玉溪', 'YX', null, '26', null, null);
INSERT INTO `s_city` VALUES ('319', '000032001', '保山', 'BS', null, '26', null, null);
INSERT INTO `s_city` VALUES ('320', '000032016', '昭通', 'ZT', null, '26', null, null);
INSERT INTO `s_city` VALUES ('321', '000032008', '丽江', 'LJ', null, '26', null, null);
INSERT INTO `s_city` VALUES ('322', '000032012', '思茅', 'SM', null, '26', null, null);
INSERT INTO `s_city` VALUES ('323', '000032009', '临沧', 'LC', null, '26', null, null);
INSERT INTO `s_city` VALUES ('324', '000032013', '文山', 'WS', null, '26', null, null);
INSERT INTO `s_city` VALUES ('325', '000032006', '红河', 'HH', null, '26', null, null);
INSERT INTO `s_city` VALUES ('326', '000032014', '版纳', 'BN', null, '26', null, null);
INSERT INTO `s_city` VALUES ('327', '000032002', '楚雄', 'CX', null, '26', null, null);
INSERT INTO `s_city` VALUES ('328', '000032003', '大理', 'DL', null, '26', null, null);
INSERT INTO `s_city` VALUES ('329', '000032004', '德宏', 'DH', null, '26', null, null);
INSERT INTO `s_city` VALUES ('330', '000032010', '怒江', 'NJ', null, '26', null, null);
INSERT INTO `s_city` VALUES ('331', '000032005', '迪庆', 'DQ', null, '26', null, null);
INSERT INTO `s_city` VALUES ('332', '000029003', '拉萨', 'LS', null, '27', null, null);
INSERT INTO `s_city` VALUES ('333', '000029005', '那曲', 'NQ', null, '27', null, null);
INSERT INTO `s_city` VALUES ('334', '000029002', '昌都', 'CD', null, '27', null, null);
INSERT INTO `s_city` VALUES ('335', '000029007', '山南', 'SN', null, '27', null, null);
INSERT INTO `s_city` VALUES ('336', '000029006', '日喀则', 'RKZ', null, '27', null, null);
INSERT INTO `s_city` VALUES ('337', '000029001', '阿里', 'AL', null, '27', null, null);
INSERT INTO `s_city` VALUES ('338', '000029004', '林芝', 'LZ', null, '27', null, null);
INSERT INTO `s_city` VALUES ('339', '000024007', '西安', 'XA', null, '28', null, null);
INSERT INTO `s_city` VALUES ('340', '000024005', '铜川', 'TC', null, '28', null, null);
INSERT INTO `s_city` VALUES ('341', '000024002', '宝鸡', 'BJ', null, '28', null, null);
INSERT INTO `s_city` VALUES ('342', '000024008', '咸阳', 'XY', null, '28', null, null);
INSERT INTO `s_city` VALUES ('343', '000024006', '渭南', 'WN', null, '28', null, null);
INSERT INTO `s_city` VALUES ('344', '000024009', '延安', 'YA', null, '28', null, null);
INSERT INTO `s_city` VALUES ('345', '000024003', '汉中', 'HZ', null, '28', null, null);
INSERT INTO `s_city` VALUES ('346', '000024010', '榆林', 'YL', null, '28', null, null);
INSERT INTO `s_city` VALUES ('347', '000024001', '安康', 'AK', null, '28', null, null);
INSERT INTO `s_city` VALUES ('348', '000024004', '商洛', 'SL', null, '28', null, null);
INSERT INTO `s_city` VALUES ('349', '000005007', '兰州', 'LZ', null, '29', null, null);
INSERT INTO `s_city` VALUES ('350', '000005005', '金昌', 'JC', null, '29', null, null);
INSERT INTO `s_city` VALUES ('351', '000005001', '白银', 'BY', null, '29', null, null);
INSERT INTO `s_city` VALUES ('352', '000005012', '天水', 'TS', null, '29', null, null);
INSERT INTO `s_city` VALUES ('353', '000005004', '嘉峪关', 'JYG', null, '29', null, null);
INSERT INTO `s_city` VALUES ('354', '000005013', '武威', 'WW', null, '29', null, null);
INSERT INTO `s_city` VALUES ('355', '000005014', '张掖', 'ZY', null, '29', null, null);
INSERT INTO `s_city` VALUES ('356', '000005010', '平凉', 'PL', null, '29', null, null);
INSERT INTO `s_city` VALUES ('357', '000005006', '酒泉', 'JQ', null, '29', null, null);
INSERT INTO `s_city` VALUES ('358', '000005011', '庆阳', 'QY', null, '29', null, null);
INSERT INTO `s_city` VALUES ('359', '000005002', '定西', 'DX', null, '29', null, null);
INSERT INTO `s_city` VALUES ('360', '000005009', '陇南', 'LN', null, '29', null, null);
INSERT INTO `s_city` VALUES ('361', '000005008', '临夏回族自治州', 'LXHZZZZ', null, '29', null, null);
INSERT INTO `s_city` VALUES ('362', '000005003', '甘南藏族自治州', 'GNCZZZZ', null, '29', null, null);
INSERT INTO `s_city` VALUES ('363', '000021007', '西宁', 'XN', null, '30', null, null);
INSERT INTO `s_city` VALUES ('364', '000021003', '海东', 'HD', null, '30', null, null);
INSERT INTO `s_city` VALUES ('365', '000021002', '海北藏族自治州', 'HBCZZZZ', null, '30', null, null);
INSERT INTO `s_city` VALUES ('366', '000021006', '黄南藏族自治州', 'HNCZZZZ', null, '30', null, null);
INSERT INTO `s_city` VALUES ('367', '000021004', '海南藏族自治州', 'HNCZZZZ', null, '30', null, null);
INSERT INTO `s_city` VALUES ('368', '000021001', '果洛藏族自治州', 'GLCZZZZ', null, '30', null, null);
INSERT INTO `s_city` VALUES ('369', '000021008', '玉树藏族自治州', 'YSCZZZZ', null, '30', null, null);
INSERT INTO `s_city` VALUES ('370', '000021005', '海西蒙古族藏族自治州', 'HXMGZCZZZZ', null, '30', null, null);
INSERT INTO `s_city` VALUES ('371', '000020004', '银川', 'YC', null, '31', null, null);
INSERT INTO `s_city` VALUES ('372', '000020002', '石嘴山', 'SZS', null, '31', null, null);
INSERT INTO `s_city` VALUES ('373', '000020003', '吴忠', 'WZ', null, '31', null, null);
INSERT INTO `s_city` VALUES ('374', '000020001', '固原', 'GY', null, '31', null, null);
INSERT INTO `s_city` VALUES ('375', '000031014', '乌鲁木齐', 'WLMQ', null, '32', null, null);
INSERT INTO `s_city` VALUES ('376', '000031009', '克拉玛依', 'KLMY', null, '32', null, null);
INSERT INTO `s_city` VALUES ('377', '000031011', '石河子', 'SHZ', null, '32', null, null);
INSERT INTO `s_city` VALUES ('378', '000031002', '阿拉尔', 'ALE', null, '32', null, null);
INSERT INTO `s_city` VALUES ('379', '000031012', '图木舒克', 'TMSK', null, '32', null, null);
INSERT INTO `s_city` VALUES ('380', '000031015', '五家渠', 'WJQ', null, '32', null, null);
INSERT INTO `s_city` VALUES ('381', '000031013', '吐鲁', 'TL', null, '32', null, null);
INSERT INTO `s_city` VALUES ('382', '000031006', '哈密', 'HM', null, '32', null, null);
INSERT INTO `s_city` VALUES ('383', '000031007', '和田', 'HT', null, '32', null, null);
INSERT INTO `s_city` VALUES ('384', '000031001', '阿克苏', 'AKS', null, '32', null, null);
INSERT INTO `s_city` VALUES ('385', '000031008', '喀什', 'KS', null, '32', null, null);
INSERT INTO `s_city` VALUES ('386', '000031010', '克孜勒苏柯尔克孜自治州', 'KZLSKEKZZZZ', null, '32', null, null);
INSERT INTO `s_city` VALUES ('387', '000031003', '巴音郭楞蒙古自治州', 'BYGLMGZZZ', null, '32', null, null);
INSERT INTO `s_city` VALUES ('388', '000031005', '昌吉回族自治州', 'CJHZZZZ', null, '32', null, null);
INSERT INTO `s_city` VALUES ('389', '000031004', '博尔塔拉蒙古自治州', 'BETLMGZZZ', null, '32', null, null);
INSERT INTO `s_city` VALUES ('390', '000031016', '伊犁哈萨克自治州', 'YLHSKZZZ', null, '32', null, null);
INSERT INTO `s_city` VALUES ('391', '000027011', '台北', 'TB', null, '35', null, null);
INSERT INTO `s_city` VALUES ('392', '000027001', '高雄', 'GX', null, '35', null, null);
INSERT INTO `s_city` VALUES ('393', '000027004', '基隆', 'JL', null, '35', null, null);
INSERT INTO `s_city` VALUES ('394', '000027016', '台中', 'TZ', null, '35', null, null);
INSERT INTO `s_city` VALUES ('395', '000027014', '台南', 'TN', null, '35', null, null);
INSERT INTO `s_city` VALUES ('396', '000027019', '新竹', 'XZ', null, '35', null, null);
INSERT INTO `s_city` VALUES ('397', '000027005', '嘉义', 'JY', null, '35', null, null);
INSERT INTO `s_city` VALUES ('398', '000027012', '台北县', 'TBX', null, '35', null, null);
INSERT INTO `s_city` VALUES ('399', '000027021', '宜兰县', 'YLX', null, '35', null, null);
INSERT INTO `s_city` VALUES ('400', '000027020', '新竹县', 'XZX', null, '35', null, null);
INSERT INTO `s_city` VALUES ('401', '000027018', '桃园县', 'TYX', null, '35', null, null);
INSERT INTO `s_city` VALUES ('402', '000027007', '苗栗县', 'MLX', null, '35', null, null);
INSERT INTO `s_city` VALUES ('403', '000027017', '台中县', 'TZX', null, '35', null, null);
INSERT INTO `s_city` VALUES ('404', '000027023', '彰化县', 'ZHX', null, '35', null, null);
INSERT INTO `s_city` VALUES ('405', '000027008', '南投县', 'NTX', null, '35', null, null);
INSERT INTO `s_city` VALUES ('406', '000027006', '嘉义县', 'JYX', null, '35', null, null);
INSERT INTO `s_city` VALUES ('407', '000027022', '云林县', 'YLX', null, '35', null, null);
INSERT INTO `s_city` VALUES ('408', '000027015', '台南县', 'TNX', null, '35', null, null);
INSERT INTO `s_city` VALUES ('409', '000027002', '高雄县', 'GXX', null, '35', null, null);
INSERT INTO `s_city` VALUES ('410', '000027010', '屏东县', 'PDX', null, '35', null, null);
INSERT INTO `s_city` VALUES ('411', '000027013', '台东县', 'TDX', null, '35', null, null);
INSERT INTO `s_city` VALUES ('412', '000027003', '花莲县', 'HLX', null, '35', null, null);
INSERT INTO `s_city` VALUES ('413', '000027009', '澎湖县', 'PHX', null, '35', null, null);
INSERT INTO `s_city` VALUES ('515', '000032003001', '祥云县', 'XYX', null, '328', null, null);

-- ----------------------------
-- Table structure for s_collect
-- ----------------------------
DROP TABLE IF EXISTS `s_collect`;
CREATE TABLE `s_collect` (
  `id` bigint(20) NOT NULL,
  `collectTitle` varchar(100) DEFAULT NULL,
  `redirectPath` varchar(100) DEFAULT NULL,
  `collectModule` varchar(100) DEFAULT NULL,
  `collectBeanId` varchar(100) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `collectTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_collect
-- ----------------------------

-- ----------------------------
-- Table structure for s_comment
-- ----------------------------
DROP TABLE IF EXISTS `s_comment`;
CREATE TABLE `s_comment` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `commentTime` datetime DEFAULT NULL,
  `commentMemberId` bigint(20) DEFAULT NULL,
  `mark` int(11) DEFAULT NULL,
  `modelClassName` varchar(100) DEFAULT NULL,
  `modelPK` varchar(50) DEFAULT NULL,
  `deleteFlag` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_comment
-- ----------------------------

-- ----------------------------
-- Table structure for s_counter
-- ----------------------------
DROP TABLE IF EXISTS `s_counter`;
CREATE TABLE `s_counter` (
  `id` bigint(20) NOT NULL,
  `viewTime` datetime DEFAULT NULL,
  `modelClassName` varchar(100) DEFAULT NULL,
  `viewUserId` varchar(100) DEFAULT NULL,
  `modelPk` varchar(100) DEFAULT NULL,
  `browser` varchar(200) DEFAULT NULL,
  `operateIp` varchar(50) DEFAULT NULL,
  `operateType` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_counter
-- ----------------------------
INSERT INTO `s_counter` VALUES ('1382', '2015-03-23 15:21:23', 'com.jsoil.edb.product.vo.Product', '0', '421', 'Mozilla/5.0 (iPhone 6p; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/6.0 MQQBrowser/5.7 Mobile/12D508 Safari/8536.25', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1384', '2015-03-23 15:22:08', 'com.jsoil.edb.product.vo.Product', '0', '421', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '101.226.89.116', 'view');
INSERT INTO `s_counter` VALUES ('1386', '2015-03-23 15:23:01', 'com.jsoil.edb.product.vo.Product', '0', '421', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.1 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1387', '2015-03-23 15:23:33', 'com.jsoil.edb.product.vo.Product', '0', '421', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.1 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1388', '2015-03-23 15:23:49', 'com.jsoil.edb.product.vo.Product', '0', '421', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.1 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1389', '2015-03-23 15:23:59', 'com.jsoil.edb.product.vo.Product', '0', '421', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.1 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1390', '2015-03-23 15:24:09', 'com.jsoil.edb.product.vo.Product', '0', '421', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.1 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1393', '2015-03-23 16:02:46', 'com.jsoil.edb.product.vo.Product', '221', '423', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; WOW64; Trident/6.0; QQBrowser/8.0.3345.400)', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1395', '2015-03-23 16:15:44', 'com.jsoil.edb.product.vo.Product', '0', '425', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.1 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1396', '2015-03-23 16:15:44', 'com.jsoil.edb.product.vo.Product', '0', '425', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) (Engine, like URL) Mobile/12B440 MicroMessenger/6.0.1 NetType/3G+', '101.226.68.217', 'view');
INSERT INTO `s_counter` VALUES ('1397', '2015-03-23 16:15:44', 'com.jsoil.edb.product.vo.Product', '0', '425', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '180.153.211.172', 'view');
INSERT INTO `s_counter` VALUES ('1398', '2015-03-23 16:15:53', 'com.jsoil.edb.product.vo.Product', '0', '425', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.1 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1399', '2015-03-23 16:16:17', 'com.jsoil.edb.product.vo.Product', '0', '425', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.1 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1400', '2015-03-23 16:16:18', 'com.jsoil.edb.product.vo.Product', '0', '423', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '101.226.33.219', 'view');
INSERT INTO `s_counter` VALUES ('1402', '2015-03-23 16:17:26', 'com.jsoil.edb.product.vo.Product', '0', '425', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.1 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1403', '2015-03-23 16:18:04', 'com.jsoil.edb.product.vo.Product', '0', '425', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.1 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1404', '2015-03-23 16:18:39', 'com.jsoil.edb.product.vo.Product', '0', '423', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.1 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1409', '2015-03-23 16:24:50', 'com.jsoil.edb.product.vo.Product', '0', '425', 'Mozilla/5.0 (iPhone; CPU iPhone OS 6_1_2 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Mobile/10B146 MicroMessenger/5.3', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1411', '2015-03-23 16:54:25', 'com.jsoil.edb.product.vo.Product', '0', '429', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.1 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1412', '2015-03-23 16:54:32', 'com.jsoil.edb.product.vo.Product', '0', '429', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.1 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1415', '2015-03-23 16:54:45', 'com.jsoil.edb.product.vo.Product', '0', '428', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) (Engine, like URL) Mobile/12B440 MicroMessenger/6.0.1 NetType/3G+', '222.73.76.253', 'view');
INSERT INTO `s_counter` VALUES ('1416', '2015-03-23 16:54:47', 'com.jsoil.edb.product.vo.Product', '0', '429', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.1 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1418', '2015-03-23 16:54:53', 'com.jsoil.edb.product.vo.Product', '0', '428', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.1 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1420', '2015-03-23 17:08:17', 'com.jsoil.edb.product.vo.Product', '0', '428', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '180.153.214.176', 'view');
INSERT INTO `s_counter` VALUES ('1421', '2015-03-23 17:29:07', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '143', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.1 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1425', '2015-03-23 18:04:08', 'com.jsoil.edb.product.vo.Product', '0', '429', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.1 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1426', '2015-03-23 18:04:08', 'com.jsoil.edb.product.vo.Product', '0', '429', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '101.226.65.105', 'view');
INSERT INTO `s_counter` VALUES ('1427', '2015-03-23 18:04:08', 'com.jsoil.edb.product.vo.Product', '0', '429', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) (Engine, like URL) Mobile/12B440 MicroMessenger/6.0.1 NetType/3G+', '180.153.201.212', 'view');
INSERT INTO `s_counter` VALUES ('1441', '2015-03-24 01:51:37', 'com.jsoil.edb.product.vo.Product', '0', '425', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.1 NetType/WIFI', '116.52.28.227', 'view');
INSERT INTO `s_counter` VALUES ('1442', '2015-03-24 01:55:13', 'com.jsoil.edb.product.vo.Product', '221', '425', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.1 NetType/WIFI', '116.52.28.227', 'view');
INSERT INTO `s_counter` VALUES ('1444', '2015-03-24 09:45:00', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '142', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.1 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1446', '2015-03-24 10:23:15', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '144', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '180.153.206.25', 'view');
INSERT INTO `s_counter` VALUES ('1447', '2015-03-24 10:23:15', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '144', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) (Engine, like URL) Mobile/12B440 MicroMessenger/6.0.1 NetType/3G+', '101.226.68.217', 'view');
INSERT INTO `s_counter` VALUES ('1449', '2015-03-24 11:17:14', 'com.jsoil.edb.product.vo.Product', '0', '421', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.1 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1450', '2015-03-24 11:40:51', 'com.jsoil.edb.product.vo.Product', '221', '425', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.1 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1451', '2015-03-24 12:18:19', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '142', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.1 NetType/3G+', '117.136.84.75', 'view');
INSERT INTO `s_counter` VALUES ('1461', '2015-03-25 10:27:19', 'com.jsoil.edb.product.vo.Product', '221', '425', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.1 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1462', '2015-03-25 16:38:44', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '144', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.1 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1481', '2015-03-27 01:10:18', 'com.jsoil.edb.facility.vo.Facility', '221', '195', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.2 NetType/WIFI', '116.53.195.141', 'view');
INSERT INTO `s_counter` VALUES ('1482', '2015-03-27 10:34:18', 'com.jsoil.edb.facility.vo.Facility', '221', '169', 'Mozilla/5.0 (iPhone; CPU iPhone OS 6_1_2 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Mobile/10B146 MicroMessenger/5.3', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1483', '2015-03-27 16:59:19', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '144', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '117.136.84.198', 'view');
INSERT INTO `s_counter` VALUES ('1484', '2015-03-27 23:42:46', 'com.jsoil.edb.product.vo.Product', '0', '427', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.1.3 NetType/WIFI', '116.55.210.138', 'view');
INSERT INTO `s_counter` VALUES ('1491', '2015-03-30 10:56:16', 'com.jsoil.edb.product.vo.Product', '0', '441', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '180.153.206.32', 'view');
INSERT INTO `s_counter` VALUES ('1497', '2015-03-30 11:48:30', 'com.jsoil.edb.product.vo.Product', '0', '425', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) (Engine, like URL) Mobile/12B440 MicroMessenger/6.0.1 NetType/3G+', '180.153.201.212', 'view');
INSERT INTO `s_counter` VALUES ('1498', '2015-03-30 12:02:00', 'com.jsoil.edb.product.vo.Product', '0', '425', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '101.226.66.172', 'view');
INSERT INTO `s_counter` VALUES ('1501', '2015-04-01 21:42:14', 'com.jsoil.edb.product.vo.Product', '221', '441', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '116.53.204.42', 'view');
INSERT INTO `s_counter` VALUES ('1502', '2015-04-01 21:42:18', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '141', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '116.53.204.42', 'view');
INSERT INTO `s_counter` VALUES ('1503', '2015-04-01 21:53:02', 'com.jsoil.edb.product.vo.Product', '0', '441', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;Alibaba.Security.Heimdall.183913)', '121.42.0.16', 'view');
INSERT INTO `s_counter` VALUES ('1504', '2015-04-01 21:54:04', 'com.jsoil.edb.product.vo.Product', '0', '441', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;Alibaba.Security.Heimdall.183913)', '121.42.0.16', 'view');
INSERT INTO `s_counter` VALUES ('1505', '2015-04-01 21:54:11', 'com.jsoil.edb.product.vo.Product', '0', '441', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;Alibaba.Security.Heimdall.183913)', '121.42.0.16', 'view');
INSERT INTO `s_counter` VALUES ('1506', '2015-04-01 22:38:08', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '144', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;Alibaba.Security.Heimdall.183913)', '121.42.0.16', 'view');
INSERT INTO `s_counter` VALUES ('1507', '2015-04-01 22:39:36', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '144', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;Alibaba.Security.Heimdall.183913)', '121.42.0.16', 'view');
INSERT INTO `s_counter` VALUES ('1508', '2015-04-01 22:40:17', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '144', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;Alibaba.Security.Heimdall.183913)', '121.42.0.16', 'view');
INSERT INTO `s_counter` VALUES ('1509', '2015-04-02 11:26:39', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '143', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1522', '2015-04-03 15:10:32', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '141', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '183.224.6.177', 'view');
INSERT INTO `s_counter` VALUES ('1541', '2015-04-05 14:25:21', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '141', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1542', '2015-04-05 15:55:02', 'com.jsoil.edb.product.vo.Product', '0', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', '112.112.11.107', 'clickAD');
INSERT INTO `s_counter` VALUES ('1543', '2015-04-05 16:15:24', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '141', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1544', '2015-04-05 16:15:24', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '141', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '101.226.66.177', 'view');
INSERT INTO `s_counter` VALUES ('1545', '2015-04-05 16:33:22', 'com.jsoil.edb.product.vo.Product', '221', '425', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1546', '2015-04-05 16:33:22', 'com.jsoil.edb.product.vo.Product', '0', '425', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '180.153.201.215', 'view');
INSERT INTO `s_counter` VALUES ('1547', '2015-04-05 16:34:40', 'com.jsoil.edb.product.vo.Product', '221', '425', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1548', '2015-04-05 16:34:54', 'com.jsoil.edb.product.vo.Product', '221', '425', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1549', '2015-04-05 16:39:53', 'com.jsoil.edb.product.vo.Product', '221', '425', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1550', '2015-04-05 16:39:59', 'com.jsoil.edb.product.vo.Product', '221', '428', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1551', '2015-04-05 16:39:59', 'com.jsoil.edb.product.vo.Product', '0', '428', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '180.153.214.178', 'view');
INSERT INTO `s_counter` VALUES ('1552', '2015-04-05 16:40:53', 'com.jsoil.edb.product.vo.Product', '221', '428', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1553', '2015-04-05 16:43:04', 'com.jsoil.edb.product.vo.Product', '221', '428', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1554', '2015-04-05 16:43:46', 'com.jsoil.edb.product.vo.Product', '221', '429', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1555', '2015-04-05 16:43:46', 'com.jsoil.edb.product.vo.Product', '0', '429', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '112.64.235.254', 'view');
INSERT INTO `s_counter` VALUES ('1556', '2015-04-05 17:30:19', 'com.jsoil.edb.product.vo.Product', '221', '425', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1557', '2015-04-05 17:54:21', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '143', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1558', '2015-04-05 20:18:42', 'com.jsoil.edb.product.vo.Product', '0', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/3G+', '117.136.84.254', 'clickAD');
INSERT INTO `s_counter` VALUES ('1559', '2015-04-05 20:18:46', 'com.jsoil.edb.product.vo.Product', '0', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/3G+', '117.136.84.254', 'clickAD');
INSERT INTO `s_counter` VALUES ('1560', '2015-04-05 22:55:13', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '143', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1561', '2015-04-05 22:55:13', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '143', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '112.64.235.250', 'view');
INSERT INTO `s_counter` VALUES ('1562', '2015-04-05 22:55:35', 'com.jsoil.edb.product.vo.Product', '221', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '112.112.11.107', 'clickAD');
INSERT INTO `s_counter` VALUES ('1563', '2015-04-05 23:04:27', 'com.jsoil.edb.product.vo.Product', '221', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '112.112.11.107', 'clickAD');
INSERT INTO `s_counter` VALUES ('1564', '2015-04-05 23:06:24', 'com.jsoil.edb.product.vo.Product', '221', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '112.112.11.107', 'clickAD');
INSERT INTO `s_counter` VALUES ('1565', '2015-04-05 23:07:02', 'com.jsoil.edb.product.vo.Product', '221', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '112.112.11.107', 'clickAD');
INSERT INTO `s_counter` VALUES ('1566', '2015-04-05 23:08:10', 'com.jsoil.edb.product.vo.Product', '221', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '112.112.11.107', 'clickAD');
INSERT INTO `s_counter` VALUES ('1567', '2015-04-05 23:08:31', 'com.jsoil.edb.product.vo.Product', '0', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'clickAD');
INSERT INTO `s_counter` VALUES ('1568', '2015-04-05 23:12:05', 'com.jsoil.edb.product.vo.Product', '221', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '112.112.11.107', 'clickAD');
INSERT INTO `s_counter` VALUES ('1581', '2015-04-06 00:16:15', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '144', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '218.63.141.208', 'view');
INSERT INTO `s_counter` VALUES ('1582', '2015-04-06 00:16:47', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '144', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '218.63.141.208', 'view');
INSERT INTO `s_counter` VALUES ('1601', '2015-04-06 00:53:38', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '144', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '218.63.141.208', 'view');
INSERT INTO `s_counter` VALUES ('1602', '2015-04-06 00:53:38', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '144', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '180.153.206.17', 'view');
INSERT INTO `s_counter` VALUES ('1603', '2015-04-06 00:53:50', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '144', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '218.63.141.208', 'view');
INSERT INTO `s_counter` VALUES ('1604', '2015-04-06 00:54:06', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '144', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '218.63.141.208', 'view');
INSERT INTO `s_counter` VALUES ('1605', '2015-04-06 01:06:14', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '141', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '218.63.141.208', 'view');
INSERT INTO `s_counter` VALUES ('1606', '2015-04-06 01:16:29', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '143', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '218.63.141.208', 'view');
INSERT INTO `s_counter` VALUES ('1607', '2015-04-06 02:03:19', 'com.jsoil.edb.product.vo.Product', '221', '425', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '218.63.141.208', 'view');
INSERT INTO `s_counter` VALUES ('1608', '2015-04-06 02:03:39', 'com.jsoil.edb.product.vo.Product', '221', '423', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '218.63.141.208', 'view');
INSERT INTO `s_counter` VALUES ('1609', '2015-04-06 17:09:16', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '141', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '218.63.141.208', 'view');
INSERT INTO `s_counter` VALUES ('1610', '2015-04-06 17:19:25', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '144', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '218.63.141.208', 'view');
INSERT INTO `s_counter` VALUES ('1611', '2015-04-06 17:19:30', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '143', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '218.63.141.208', 'view');
INSERT INTO `s_counter` VALUES ('1612', '2015-04-06 17:19:33', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '142', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '218.63.141.208', 'view');
INSERT INTO `s_counter` VALUES ('1613', '2015-04-06 18:01:29', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '143', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '218.63.141.208', 'view');
INSERT INTO `s_counter` VALUES ('1614', '2015-04-06 18:15:00', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '143', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '101.226.66.191', 'view');
INSERT INTO `s_counter` VALUES ('1621', '2015-04-06 21:21:51', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '143', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '116.53.217.156', 'view');
INSERT INTO `s_counter` VALUES ('1622', '2015-04-06 21:22:17', 'com.jsoil.edb.product.vo.Product', '0', '426', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '116.53.217.156', 'view');
INSERT INTO `s_counter` VALUES ('1661', '2015-04-07 20:33:53', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '143', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1662', '2015-04-07 22:38:46', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '143', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '116.53.217.156', 'view');
INSERT INTO `s_counter` VALUES ('1663', '2015-04-07 22:38:46', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '143', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '101.226.89.121', 'view');
INSERT INTO `s_counter` VALUES ('1664', '2015-04-07 22:52:17', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '143', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '101.226.66.191', 'view');
INSERT INTO `s_counter` VALUES ('1667', '2015-04-08 16:08:55', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '144', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) (Engine, like URL) Mobile/12B440 MicroMessenger/6.0.1 NetType/3G+', '101.226.68.217', 'view');
INSERT INTO `s_counter` VALUES ('1669', '2015-04-08 21:49:24', 'com.jsoil.edb.product.vo.Product', '0', '441', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;Alibaba.Security.Heimdall.183913)', '121.42.0.37', 'view');
INSERT INTO `s_counter` VALUES ('1670', '2015-04-08 21:50:11', 'com.jsoil.edb.product.vo.Product', '0', '441', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;Alibaba.Security.Heimdall.183913)', '121.42.0.37', 'view');
INSERT INTO `s_counter` VALUES ('1671', '2015-04-08 21:50:23', 'com.jsoil.edb.product.vo.Product', '0', '441', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;Alibaba.Security.Heimdall.183913)', '121.42.0.37', 'view');
INSERT INTO `s_counter` VALUES ('1672', '2015-04-08 22:11:57', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '144', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;Alibaba.Security.Heimdall.183913)', '121.42.0.37', 'view');
INSERT INTO `s_counter` VALUES ('1673', '2015-04-08 22:12:25', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '144', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;Alibaba.Security.Heimdall.183913)', '121.42.0.37', 'view');
INSERT INTO `s_counter` VALUES ('1674', '2015-04-08 22:12:31', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '144', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;Alibaba.Security.Heimdall.183913)', '121.42.0.37', 'view');
INSERT INTO `s_counter` VALUES ('1677', '2015-04-09 15:53:02', 'com.jsoil.edb.product.vo.Product', '0', '441', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) (Engine, like URL) Mobile/12B440 MicroMessenger/6.0.1 NetType/3G+', '180.153.114.197', 'view');
INSERT INTO `s_counter` VALUES ('1678', '2015-04-09 15:53:40', 'com.jsoil.edb.product.vo.Product', '0', '441', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1679', '2015-04-09 15:53:52', 'com.jsoil.edb.product.vo.Product', '0', '441', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1681', '2015-04-09 15:53:59', 'com.jsoil.edb.product.vo.Product', '0', '441', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1683', '2015-04-09 15:55:00', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '141', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1684', '2015-04-09 15:55:04', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '143', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1685', '2015-04-09 15:55:13', 'com.jsoil.edb.product.vo.Product', '0', '441', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1686', '2015-04-09 15:55:28', 'com.jsoil.edb.product.vo.Product', '0', '441', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1687', '2015-04-09 15:55:41', 'com.jsoil.edb.product.vo.Product', '0', '441', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1688', '2015-04-09 15:55:47', 'com.jsoil.edb.product.vo.Product', '0', '441', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1690', '2015-04-09 16:03:23', 'com.jsoil.edb.product.vo.Product', '221', '441', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36 QQBrowser/3.4.3355.400', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1692', '2015-04-09 16:12:24', 'com.jsoil.edb.product.vo.Product', '0', '425', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1693', '2015-04-09 16:13:26', 'com.jsoil.edb.product.vo.Product', '0', '425', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1694', '2015-04-09 16:14:49', 'com.jsoil.edb.product.vo.Product', '0', '441', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1695', '2015-04-09 16:14:57', 'com.jsoil.edb.product.vo.Product', '0', '441', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1696', '2015-04-09 16:15:17', 'com.jsoil.edb.product.vo.Product', '0', '441', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1697', '2015-04-09 16:16:13', 'com.jsoil.edb.product.vo.Product', '0', '441', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1698', '2015-04-09 16:16:54', 'com.jsoil.edb.product.vo.Product', '0', '441', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '180.153.211.190', 'view');
INSERT INTO `s_counter` VALUES ('1699', '2015-04-09 16:17:22', 'com.jsoil.edb.product.vo.Product', '0', '441', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1700', '2015-04-09 16:17:35', 'com.jsoil.edb.product.vo.Product', '0', '428', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1701', '2015-04-09 16:18:40', 'com.jsoil.edb.product.vo.Product', '0', '441', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1702', '2015-04-09 16:28:48', 'com.jsoil.edb.product.vo.Product', '0', '441', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1704', '2015-04-09 16:28:57', 'com.jsoil.edb.product.vo.Product', '0', '441', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1706', '2015-04-09 16:29:05', 'com.jsoil.edb.product.vo.Product', '0', '428', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '112.65.193.13', 'view');
INSERT INTO `s_counter` VALUES ('1707', '2015-04-09 16:29:05', 'com.jsoil.edb.product.vo.Product', '0', '428', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) (Engine, like URL) Mobile/12B440 MicroMessenger/6.0.1 NetType/3G+', '180.153.201.212', 'view');
INSERT INTO `s_counter` VALUES ('1709', '2015-04-09 16:29:11', 'com.jsoil.edb.product.vo.Product', '0', '425', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) (Engine, like URL) Mobile/12B440 MicroMessenger/6.0.1 NetType/3G+', '180.153.201.212', 'view');
INSERT INTO `s_counter` VALUES ('1710', '2015-04-09 16:29:35', 'com.jsoil.edb.product.vo.Product', '0', '441', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1711', '2015-04-09 16:30:21', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '143', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1712', '2015-04-09 16:35:03', 'com.jsoil.edb.product.vo.Product', '221', '441', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1713', '2015-04-09 16:35:10', 'com.jsoil.edb.product.vo.Product', '221', '441', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1714', '2015-04-09 16:38:05', 'com.jsoil.edb.product.vo.Product', '0', '441', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1715', '2015-04-09 16:42:42', 'com.jsoil.edb.product.vo.Product', '0', '425', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '180.153.206.24', 'view');
INSERT INTO `s_counter` VALUES ('1716', '2015-04-09 16:56:49', 'com.jsoil.edb.product.vo.Product', '221', '441', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1717', '2015-04-09 16:57:23', 'com.jsoil.edb.product.vo.Product', '221', '425', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1718', '2015-04-09 16:57:38', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '144', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1719', '2015-04-09 16:57:53', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '143', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1720', '2015-04-09 16:58:35', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '143', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1721', '2015-04-09 16:58:55', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '143', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1722', '2015-04-09 16:59:47', 'com.jsoil.edb.product.vo.Product', '221', '441', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1723', '2015-04-09 17:00:14', 'com.jsoil.edb.product.vo.Product', '221', '426', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1724', '2015-04-09 17:00:23', 'com.jsoil.edb.product.vo.Product', '221', '441', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1725', '2015-04-09 17:01:09', 'com.jsoil.edb.product.vo.Product', '221', '425', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1726', '2015-04-09 17:01:29', 'com.jsoil.edb.product.vo.Product', '221', '441', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1727', '2015-04-09 17:02:34', 'com.jsoil.edb.product.vo.Product', '221', '441', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1728', '2015-04-09 17:02:43', 'com.jsoil.edb.product.vo.Product', '221', '425', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1729', '2015-04-09 17:02:59', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '144', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1730', '2015-04-09 17:03:29', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '143', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1731', '2015-04-09 17:03:38', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '141', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1732', '2015-04-09 17:03:54', 'com.jsoil.edb.product.vo.Product', '221', '441', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1733', '2015-04-09 17:04:18', 'com.jsoil.edb.product.vo.Product', '221', '441', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1734', '2015-04-09 17:04:38', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '144', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1735', '2015-04-09 17:05:08', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '144', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1736', '2015-04-09 17:08:35', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '143', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1737', '2015-04-09 17:09:00', 'com.jsoil.edb.product.vo.Product', '221', '441', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1738', '2015-04-09 17:10:30', 'com.jsoil.edb.product.vo.Product', '221', '441', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1739', '2015-04-09 17:10:40', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '144', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1740', '2015-04-09 17:15:33', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '144', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1744', '2015-04-09 17:17:11', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '144', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1745', '2015-04-09 17:17:38', 'com.jsoil.edb.product.vo.Product', '221', '441', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1746', '2015-04-09 17:17:46', 'com.jsoil.edb.product.vo.Product', '221', '441', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1747', '2015-04-09 17:18:06', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '144', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1748', '2015-04-09 17:18:31', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '144', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1749', '2015-04-09 17:18:31', 'com.jsoil.edb.product.vo.Product', '221', '441', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1750', '2015-04-09 17:19:08', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '144', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1751', '2015-04-09 17:19:09', 'com.jsoil.edb.product.vo.Product', '221', '441', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1752', '2015-04-09 17:25:51', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '144', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1753', '2015-04-09 17:25:59', 'com.jsoil.edb.product.vo.Product', '221', '441', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1754', '2015-04-09 17:26:44', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '144', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1755', '2015-04-09 17:26:51', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '144', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1756', '2015-04-09 17:26:54', 'com.jsoil.edb.product.vo.Product', '221', '441', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1757', '2015-04-09 17:26:57', 'com.jsoil.edb.product.vo.Product', '221', '441', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1758', '2015-04-09 17:27:00', 'com.jsoil.edb.product.vo.Product', '221', '441', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1759', '2015-04-09 17:27:02', 'com.jsoil.edb.product.vo.Product', '221', '441', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1760', '2015-04-09 17:27:07', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '144', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1761', '2015-04-09 17:27:15', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '144', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1763', '2015-04-09 17:27:54', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '144', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1764', '2015-04-09 17:27:58', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '144', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1765', '2015-04-09 17:28:09', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '144', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1766', '2015-04-09 17:28:21', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '143', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1767', '2015-04-09 17:28:30', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '141', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1768', '2015-04-09 17:29:12', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '144', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1769', '2015-04-09 17:29:20', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '143', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1770', '2015-04-09 17:29:27', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '141', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1771', '2015-04-09 17:29:33', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '142', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1772', '2015-04-09 17:29:39', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '144', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1773', '2015-04-09 17:36:06', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '143', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1774', '2015-04-09 17:36:24', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '141', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1776', '2015-04-09 17:38:47', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '141', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1777', '2015-04-09 17:39:17', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '141', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1778', '2015-04-09 17:39:36', 'com.jsoil.edb.product.vo.Product', '221', '483', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1779', '2015-04-09 17:39:46', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '144', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1780', '2015-04-09 17:41:05', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '144', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1781', '2015-04-09 17:41:47', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '144', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1782', '2015-04-09 17:42:13', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '144', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1783', '2015-04-09 17:42:47', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '144', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1784', '2015-04-09 17:44:28', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '144', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1785', '2015-04-09 17:45:12', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '144', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1786', '2015-04-09 17:45:50', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '144', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1787', '2015-04-09 17:46:51', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '144', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1788', '2015-04-09 17:47:11', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '143', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1789', '2015-04-09 17:47:19', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '142', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1790', '2015-04-09 17:47:27', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '141', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1791', '2015-04-09 17:47:40', 'com.jsoil.edb.product.vo.Product', '221', '483', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1792', '2015-04-09 17:47:50', 'com.jsoil.edb.product.vo.Product', '221', '482', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1793', '2015-04-09 17:48:05', 'com.jsoil.edb.product.vo.Product', '221', '441', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1794', '2015-04-09 17:48:18', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '144', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1795', '2015-04-09 17:48:24', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '143', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1796', '2015-04-09 17:48:29', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '142', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1797', '2015-04-09 17:48:37', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '141', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1798', '2015-04-09 17:49:05', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '144', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1799', '2015-04-09 17:49:14', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '141', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1800', '2015-04-09 17:49:19', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '141', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1801', '2015-04-09 17:49:25', 'com.jsoil.edb.product.vo.Product', '221', '482', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1802', '2015-04-09 17:49:33', 'com.jsoil.edb.product.vo.Product', '221', '425', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1803', '2015-04-09 17:49:41', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '143', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1804', '2015-04-09 17:49:48', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '144', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1805', '2015-04-09 17:49:55', 'com.jsoil.edb.product.vo.Product', '221', '429', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1806', '2015-04-09 17:49:58', 'com.jsoil.edb.product.vo.Product', '221', '428', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1807', '2015-04-09 17:50:05', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '141', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1808', '2015-04-09 17:50:11', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '143', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1809', '2015-04-09 17:50:14', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '144', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1810', '2015-04-09 17:51:16', 'com.jsoil.edb.product.vo.Product', '221', '441', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1811', '2015-04-09 17:52:54', 'com.jsoil.edb.product.vo.Product', '221', '441', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1812', '2015-04-09 17:53:28', 'com.jsoil.edb.product.vo.Product', '221', '441', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1813', '2015-04-09 17:53:40', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '143', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1814', '2015-04-09 17:53:54', 'com.jsoil.edb.product.vo.Product', '221', '484', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1815', '2015-04-09 17:54:13', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '141', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1817', '2015-04-09 18:10:31', 'com.jsoil.edb.product.vo.Product', '0', '481', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '117.136.84.74', 'view');
INSERT INTO `s_counter` VALUES ('1818', '2015-04-09 18:10:42', 'com.jsoil.edb.product.vo.Product', '0', '485', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '117.136.84.74', 'view');
INSERT INTO `s_counter` VALUES ('1819', '2015-04-09 18:10:52', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '141', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '117.136.84.74', 'view');
INSERT INTO `s_counter` VALUES ('1820', '2015-04-09 18:10:55', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '143', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '117.136.84.74', 'view');
INSERT INTO `s_counter` VALUES ('1822', '2015-04-09 18:13:19', 'com.jsoil.edb.product.vo.Product', '221', '481', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1823', '2015-04-09 18:13:25', 'com.jsoil.edb.product.vo.Product', '221', '482', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1825', '2015-04-09 21:16:19', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '143', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1826', '2015-04-09 21:17:00', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '143', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1827', '2015-04-09 21:17:29', 'com.jsoil.edb.product.vo.Product', '221', '485', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1828', '2015-04-09 21:17:56', 'com.jsoil.edb.product.vo.Product', '221', '486', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1831', '2015-04-10 09:21:16', 'com.jsoil.edb.product.vo.Product', '0', '486', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X; en-us) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile/11A465 Safari/9537.53', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1832', '2015-04-10 09:21:19', 'com.jsoil.edb.product.vo.Product', '0', '486', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '112.64.235.253', 'view');
INSERT INTO `s_counter` VALUES ('1833', '2015-04-10 10:29:54', 'com.jsoil.edb.product.vo.Product', '0', '487', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/3G+', '117.136.84.5', 'view');
INSERT INTO `s_counter` VALUES ('1834', '2015-04-10 10:39:47', 'com.jsoil.edb.product.vo.Product', '0', '483', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/3G+', '117.136.84.5', 'view');
INSERT INTO `s_counter` VALUES ('1835', '2015-04-10 10:39:54', 'com.jsoil.edb.product.vo.Product', '0', '486', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/3G+', '117.136.84.5', 'view');
INSERT INTO `s_counter` VALUES ('1836', '2015-04-10 10:40:35', 'com.jsoil.edb.product.vo.Product', '0', '486', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/3G+', '117.136.84.5', 'view');
INSERT INTO `s_counter` VALUES ('1837', '2015-04-10 10:42:22', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '161', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.91 Safari/537.36', '117.136.84.5', 'view');
INSERT INTO `s_counter` VALUES ('1838', '2015-04-10 10:42:27', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '143', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.91 Safari/537.36', '117.136.84.5', 'view');
INSERT INTO `s_counter` VALUES ('1839', '2015-04-10 10:48:41', 'com.jsoil.edb.product.vo.Product', '0', '483', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.91 Safari/537.36', '117.136.84.5', 'view');
INSERT INTO `s_counter` VALUES ('1840', '2015-04-10 10:49:02', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '161', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.91 Safari/537.36', '117.136.84.5', 'view');
INSERT INTO `s_counter` VALUES ('1841', '2015-04-10 10:52:05', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '143', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.91 Safari/537.36', '117.136.84.5', 'view');
INSERT INTO `s_counter` VALUES ('1842', '2015-04-10 10:55:54', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '161', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '180.153.214.176', 'view');
INSERT INTO `s_counter` VALUES ('1843', '2015-04-10 10:55:58', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '143', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '101.226.33.208', 'view');
INSERT INTO `s_counter` VALUES ('1845', '2015-04-10 10:56:16', 'com.jsoil.edb.product.vo.Product', '0', '421', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '101.226.66.181', 'view');
INSERT INTO `s_counter` VALUES ('1846', '2015-04-10 10:56:16', 'com.jsoil.edb.product.vo.Product', '0', '421', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) (Engine, like URL) Mobile/12B440 MicroMessenger/6.0.1 NetType/3G+', '222.73.76.253', 'view');
INSERT INTO `s_counter` VALUES ('1848', '2015-04-10 11:02:06', 'com.jsoil.edb.product.vo.Product', '0', '483', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '180.153.214.198', 'view');
INSERT INTO `s_counter` VALUES ('1849', '2015-04-10 11:22:05', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '162', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/3G+', '117.136.84.5', 'view');
INSERT INTO `s_counter` VALUES ('1850', '2015-04-10 11:22:47', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '144', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/3G+', '117.136.84.5', 'view');
INSERT INTO `s_counter` VALUES ('1851', '2015-04-10 11:23:09', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '162', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/3G+', '117.136.84.5', 'view');
INSERT INTO `s_counter` VALUES ('1852', '2015-04-10 11:49:08', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '161', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/3G+', '117.136.84.5', 'view');
INSERT INTO `s_counter` VALUES ('1853', '2015-04-10 11:49:45', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '161', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/3G+', '117.136.84.5', 'view');
INSERT INTO `s_counter` VALUES ('1854', '2015-04-10 12:08:07', 'com.jsoil.edb.facility.vo.Facility', '341', '186', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/3G+', '117.136.84.5', 'view');
INSERT INTO `s_counter` VALUES ('1855', '2015-04-10 12:08:20', 'com.jsoil.edb.facility.vo.Facility', '341', '162', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/3G+', '117.136.84.5', 'view');
INSERT INTO `s_counter` VALUES ('1856', '2015-04-10 12:13:08', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '261', '162', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.1.4 NetType/3G+', '117.136.84.193', 'view');
INSERT INTO `s_counter` VALUES ('1857', '2015-04-10 12:25:27', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '162', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '101.226.33.204', 'view');
INSERT INTO `s_counter` VALUES ('1858', '2015-04-10 12:46:22', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '162', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.91 Safari/537.36', '117.136.84.5', 'view');
INSERT INTO `s_counter` VALUES ('1859', '2015-04-10 12:48:38', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '162', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.91 Safari/537.36', '117.136.84.5', 'view');
INSERT INTO `s_counter` VALUES ('1860', '2015-04-10 12:54:37', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '162', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.91 Safari/537.36', '117.136.84.5', 'view');
INSERT INTO `s_counter` VALUES ('1861', '2015-04-10 12:56:34', 'com.jsoil.edb.product.vo.Product', '221', '483', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.91 Safari/537.36', '117.136.84.5', 'view');
INSERT INTO `s_counter` VALUES ('1862', '2015-04-10 12:56:51', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '162', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '101.226.33.200', 'view');
INSERT INTO `s_counter` VALUES ('1863', '2015-04-10 12:58:11', 'com.jsoil.edb.product.vo.Product', '221', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.91 Safari/537.36', '117.136.84.5', 'clickAD');
INSERT INTO `s_counter` VALUES ('1864', '2015-04-10 15:55:07', 'com.jsoil.edb.product.vo.Product', '0', '428', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.91 Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1865', '2015-04-10 15:55:07', 'com.jsoil.edb.product.vo.Product', '0', '428', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '101.226.33.240', 'view');
INSERT INTO `s_counter` VALUES ('1866', '2015-04-10 15:56:58', 'com.jsoil.edb.product.vo.Product', '0', '428', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.91 Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1881', '2015-04-10 22:03:04', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '143', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/3G+', '117.136.84.5', 'view');
INSERT INTO `s_counter` VALUES ('1882', '2015-04-10 23:11:33', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '143', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/3G+', '116.54.87.103', 'view');
INSERT INTO `s_counter` VALUES ('1883', '2015-04-10 23:11:43', 'com.jsoil.edb.product.vo.Product', '0', '487', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/3G+', '116.54.87.103', 'view');
INSERT INTO `s_counter` VALUES ('1884', '2015-04-10 23:11:54', 'com.jsoil.edb.product.vo.Product', '0', '483', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/3G+', '116.54.87.103', 'view');
INSERT INTO `s_counter` VALUES ('1885', '2015-04-10 23:12:14', 'com.jsoil.edb.product.vo.Product', '0', '486', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/3G+', '116.54.87.103', 'view');
INSERT INTO `s_counter` VALUES ('1886', '2015-04-10 23:13:05', 'com.jsoil.edb.product.vo.Product', '0', '424', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/3G+', '116.54.87.103', 'view');
INSERT INTO `s_counter` VALUES ('1887', '2015-04-10 23:15:22', 'com.jsoil.edb.product.vo.Product', '341', '487', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '116.54.87.103', 'view');
INSERT INTO `s_counter` VALUES ('1888', '2015-04-10 23:15:25', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '341', '143', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '116.54.87.103', 'view');
INSERT INTO `s_counter` VALUES ('1889', '2015-04-10 23:15:25', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '143', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) (Engine, like URL) Mobile/12B440 MicroMessenger/6.0.1 NetType/3G+', '180.153.114.197', 'view');
INSERT INTO `s_counter` VALUES ('1890', '2015-04-10 23:48:06', 'com.jsoil.edb.product.vo.Product', '341', '441', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '116.54.87.103', 'view');
INSERT INTO `s_counter` VALUES ('1891', '2015-04-10 23:52:24', 'com.jsoil.edb.product.vo.Product', '341', '482', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '116.54.87.103', 'view');
INSERT INTO `s_counter` VALUES ('1892', '2015-04-10 23:58:06', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '341', '144', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '116.54.87.103', 'view');
INSERT INTO `s_counter` VALUES ('1901', '2015-04-13 10:39:49', 'com.jsoil.edb.product.vo.Product', '0', '487', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/3G+', '117.136.85.175', 'view');
INSERT INTO `s_counter` VALUES ('1902', '2015-04-13 10:40:20', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '161', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/3G+', '117.136.85.175', 'view');
INSERT INTO `s_counter` VALUES ('1903', '2015-04-13 10:40:49', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '162', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/3G+', '117.136.85.175', 'view');
INSERT INTO `s_counter` VALUES ('1904', '2015-04-13 10:41:08', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '162', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/3G+', '117.136.85.175', 'view');
INSERT INTO `s_counter` VALUES ('1905', '2015-04-13 11:03:41', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '162', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/3G+', '117.136.85.175', 'view');
INSERT INTO `s_counter` VALUES ('1906', '2015-04-13 11:03:47', 'com.jsoil.edb.product.vo.Product', '0', '483', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/3G+', '117.136.85.175', 'view');
INSERT INTO `s_counter` VALUES ('1907', '2015-04-13 11:13:22', 'com.jsoil.edb.product.vo.Product', '221', '487', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/3G+', '117.136.85.175', 'view');
INSERT INTO `s_counter` VALUES ('1908', '2015-04-13 11:13:22', 'com.jsoil.edb.product.vo.Product', '0', '487', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) (Engine, like URL) Mobile/12B440 MicroMessenger/6.0.1 NetType/3G+', '180.153.114.197', 'view');
INSERT INTO `s_counter` VALUES ('1909', '2015-04-13 11:25:03', 'com.jsoil.edb.product.vo.Product', '0', '487', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '180.153.206.19', 'view');
INSERT INTO `s_counter` VALUES ('1910', '2015-04-13 11:37:01', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '144', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/3G+', '117.136.85.175', 'view');
INSERT INTO `s_counter` VALUES ('1911', '2015-04-13 15:33:28', 'com.jsoil.edb.product.vo.Product', '221', '484', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.1.4 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1912', '2015-04-13 18:00:36', 'com.jsoil.edb.product.vo.Product', '221', '487', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.1.4 NetType/3G+', '117.136.85.156', 'view');
INSERT INTO `s_counter` VALUES ('1913', '2015-04-13 18:14:14', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '161', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.1.4 NetType/3G+', '117.136.85.156', 'view');
INSERT INTO `s_counter` VALUES ('1914', '2015-04-13 18:27:03', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '162', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.1.4 NetType/3G+', '117.136.85.156', 'view');
INSERT INTO `s_counter` VALUES ('1922', '2015-04-14 10:19:57', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '143', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1923', '2015-04-14 10:25:08', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '162', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1924', '2015-04-14 10:25:24', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '143', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1925', '2015-04-14 10:26:40', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '143', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1926', '2015-04-14 10:27:01', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '143', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1927', '2015-04-14 10:28:46', 'com.jsoil.edb.product.vo.Product', '221', '425', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1928', '2015-04-14 10:30:16', 'com.jsoil.edb.product.vo.Product', '221', '423', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1929', '2015-04-14 10:32:36', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '143', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '101.226.33.200', 'view');
INSERT INTO `s_counter` VALUES ('1930', '2015-04-14 10:50:14', 'com.jsoil.edb.product.vo.Product', '221', '424', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 MicroMessenger/6.1.4 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1931', '2015-04-15 21:57:28', 'com.jsoil.edb.product.vo.Product', '0', '441', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;Alibaba.Security.Heimdall.183913)', '121.42.0.37', 'view');
INSERT INTO `s_counter` VALUES ('1932', '2015-04-15 21:57:34', 'com.jsoil.edb.product.vo.Product', '0', '441', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;Alibaba.Security.Heimdall.183913)', '121.42.0.37', 'view');
INSERT INTO `s_counter` VALUES ('1933', '2015-04-15 22:33:51', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '144', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;Alibaba.Security.Heimdall.183913)', '121.42.0.37', 'view');
INSERT INTO `s_counter` VALUES ('1934', '2015-04-15 22:34:41', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '144', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;Alibaba.Security.Heimdall.183913)', '121.42.0.37', 'view');
INSERT INTO `s_counter` VALUES ('1941', '2015-04-18 15:06:45', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '162', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1942', '2015-04-18 15:06:56', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '161', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1943', '2015-04-18 15:07:07', 'com.jsoil.edb.product.vo.Product', '221', '484', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1944', '2015-04-18 15:07:26', 'com.jsoil.edb.product.vo.Product', '221', '486', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1945', '2015-04-18 15:07:39', 'com.jsoil.edb.product.vo.Product', '221', '485', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1946', '2015-04-18 15:07:49', 'com.jsoil.edb.product.vo.Product', '221', '481', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1947', '2015-04-18 15:08:00', 'com.jsoil.edb.product.vo.Product', '221', '441', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1948', '2015-04-18 15:08:13', 'com.jsoil.edb.product.vo.Product', '221', '427', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1949', '2015-04-18 15:08:35', 'com.jsoil.edb.product.vo.Product', '221', '429', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1950', '2015-04-18 15:08:58', 'com.jsoil.edb.product.vo.Product', '221', '421', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1951', '2015-04-18 15:18:29', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '162', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1952', '2015-04-18 15:18:40', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '161', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('1954', '2015-04-23 11:06:44', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '161', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.4 NetType/3G+', '117.136.85.128', 'view');
INSERT INTO `s_counter` VALUES ('1972', '2015-05-04 17:36:05', 'com.jsoil.edb.product.vo.Product', '0', '486', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.1.5 NetType/WIFI', '183.224.93.72', 'view');
INSERT INTO `s_counter` VALUES ('1973', '2015-05-04 17:36:15', 'com.jsoil.edb.product.vo.Product', '0', '486', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.1.5 NetType/WIFI', '183.224.93.72', 'view');
INSERT INTO `s_counter` VALUES ('1974', '2015-05-04 17:36:29', 'com.jsoil.edb.product.vo.Product', '0', '425', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.1.5 NetType/WIFI', '183.224.93.72', 'view');
INSERT INTO `s_counter` VALUES ('1981', '2015-05-05 10:15:11', 'com.jsoil.edb.product.vo.Product', '0', '501', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '101.226.66.177', 'view');
INSERT INTO `s_counter` VALUES ('1990', '2015-05-06 15:35:53', 'com.jsoil.edb.product.vo.Product', '0', '564', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) (Engine, like URL) Mobile/12B440 MicroMessenger/6.0.1 NetType/3G+', '180.153.206.13', 'view');
INSERT INTO `s_counter` VALUES ('1993', '2015-05-06 15:49:20', 'com.jsoil.edb.product.vo.Product', '0', '564', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '101.226.66.180', 'view');
INSERT INTO `s_counter` VALUES ('1997', '2015-05-06 15:53:13', 'com.jsoil.edb.product.vo.Product', '221', '564', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) Mobile/11A465 MicroMessenger/6.0 NetType/2G', '183.224.6.186', 'view');
INSERT INTO `s_counter` VALUES ('2002', '2015-05-06 16:39:52', 'com.jsoil.edb.product.vo.Product', '0', '503', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.1.5 NetType/WIFI', '183.224.93.228', 'view');
INSERT INTO `s_counter` VALUES ('2004', '2015-05-06 16:47:01', 'com.jsoil.edb.product.vo.Product', '0', '564', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.1.5 NetType/WIFI', '183.224.93.228', 'view');
INSERT INTO `s_counter` VALUES ('2005', '2015-05-06 19:57:50', 'com.jsoil.edb.product.vo.Product', '0', '532', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.1.5 NetType/WIFI', '14.204.64.139', 'view');
INSERT INTO `s_counter` VALUES ('2009', '2015-05-07 08:47:37', 'com.jsoil.edb.product.vo.Product', '221', '564', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/3G+', '117.136.85.187', 'view');
INSERT INTO `s_counter` VALUES ('2010', '2015-05-07 08:47:50', 'com.jsoil.edb.product.vo.Product', '221', '562', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/3G+', '117.136.85.187', 'view');
INSERT INTO `s_counter` VALUES ('2011', '2015-05-07 14:16:25', 'com.jsoil.edb.product.vo.Product', '0', '564', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0) QQBrowser/8.1.3701.400', '183.224.93.228', 'view');
INSERT INTO `s_counter` VALUES ('2012', '2015-05-07 14:16:35', 'com.jsoil.edb.product.vo.Product', '0', '563', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0) QQBrowser/8.1.3701.400', '183.224.93.228', 'view');
INSERT INTO `s_counter` VALUES ('2013', '2015-05-07 14:16:42', 'com.jsoil.edb.product.vo.Product', '0', '550', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0) QQBrowser/8.1.3701.400', '183.224.93.228', 'view');
INSERT INTO `s_counter` VALUES ('2014', '2015-05-07 14:16:42', 'com.jsoil.edb.product.vo.Product', '0', '550', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '180.153.163.191', 'view');
INSERT INTO `s_counter` VALUES ('2015', '2015-05-07 14:17:15', 'com.jsoil.edb.product.vo.Product', '0', '556', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0) QQBrowser/8.1.3701.400', '183.224.93.228', 'view');
INSERT INTO `s_counter` VALUES ('2016', '2015-05-07 14:18:30', 'com.jsoil.edb.product.vo.Product', '221', '558', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0) QQBrowser/8.1.3701.400', '183.224.93.228', 'view');
INSERT INTO `s_counter` VALUES ('2019', '2015-05-07 14:30:48', 'com.jsoil.edb.product.vo.Product', '0', '556', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '180.153.205.253', 'view');
INSERT INTO `s_counter` VALUES ('2020', '2015-05-07 14:32:04', 'com.jsoil.edb.product.vo.Product', '0', '558', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '180.153.206.21', 'view');
INSERT INTO `s_counter` VALUES ('2021', '2015-05-07 15:40:16', 'com.jsoil.edb.product.vo.Product', '221', '563', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) Mobile/11A465 MicroMessenger/6.0 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2024', '2015-05-07 17:22:26', 'com.jsoil.edb.product.vo.Product', '0', '563', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) (Engine, like URL) Mobile/12B440 MicroMessenger/6.0.1 NetType/3G+', '180.153.201.212', 'view');
INSERT INTO `s_counter` VALUES ('2026', '2015-05-07 17:35:39', 'com.jsoil.edb.product.vo.Product', '0', '563', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '180.153.214.182', 'view');
INSERT INTO `s_counter` VALUES ('2041', '2015-05-08 17:40:24', 'com.jsoil.edb.product.vo.Product', '221', '538', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2042', '2015-05-08 17:54:13', 'com.jsoil.edb.product.vo.Product', '221', '562', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2043', '2015-05-08 17:54:22', 'com.jsoil.edb.product.vo.Product', '221', '558', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2044', '2015-05-08 17:54:37', 'com.jsoil.edb.product.vo.Product', '221', '557', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2045', '2015-05-08 17:54:54', 'com.jsoil.edb.product.vo.Product', '221', '558', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2046', '2015-05-08 17:57:02', 'com.jsoil.edb.product.vo.Product', '221', '551', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2047', '2015-05-08 17:57:15', 'com.jsoil.edb.product.vo.Product', '221', '562', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2048', '2015-05-08 17:58:28', 'com.jsoil.edb.product.vo.Product', '221', '556', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2049', '2015-05-08 17:58:49', 'com.jsoil.edb.product.vo.Product', '221', '557', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2050', '2015-05-08 17:59:16', 'com.jsoil.edb.product.vo.Product', '221', '563', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2051', '2015-05-08 17:59:35', 'com.jsoil.edb.product.vo.Product', '221', '557', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2052', '2015-05-08 18:00:02', 'com.jsoil.edb.product.vo.Product', '221', '561', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2053', '2015-05-08 18:00:20', 'com.jsoil.edb.product.vo.Product', '221', '563', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2054', '2015-05-08 18:00:34', 'com.jsoil.edb.product.vo.Product', '221', '563', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2055', '2015-05-08 18:02:46', 'com.jsoil.edb.product.vo.Product', '0', '562', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2056', '2015-05-08 18:02:47', 'com.jsoil.edb.product.vo.Product', '0', '563', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2057', '2015-05-08 18:03:08', 'com.jsoil.edb.product.vo.Product', '221', '558', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2058', '2015-05-08 18:04:53', 'com.jsoil.edb.product.vo.Product', '0', '563', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2059', '2015-05-08 18:30:19', 'com.jsoil.edb.product.vo.Product', '0', '547', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2060', '2015-05-08 18:30:29', 'com.jsoil.edb.product.vo.Product', '0', '562', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2061', '2015-05-08 18:31:40', 'com.jsoil.edb.product.vo.Product', '0', '558', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2062', '2015-05-08 18:32:06', 'com.jsoil.edb.product.vo.Product', '0', '528', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2063', '2015-05-08 18:32:06', 'com.jsoil.edb.product.vo.Product', '0', '528', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2064', '2015-05-08 18:32:31', 'com.jsoil.edb.product.vo.Product', '0', '563', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2065', '2015-05-08 18:32:46', 'com.jsoil.edb.product.vo.Product', '0', '562', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2066', '2015-05-08 22:47:29', 'com.jsoil.edb.product.vo.Product', '0', '544', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B466 MicroMessenger/6.1.5 NetType/WIFI', '116.249.226.229', 'view');
INSERT INTO `s_counter` VALUES ('2080', '2015-05-11 09:22:17', 'com.jsoil.edb.product.vo.Product', '221', '563', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2088', '2015-05-11 13:01:32', 'com.jsoil.edb.product.vo.Product', '0', '557', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '101.226.33.224', 'view');
INSERT INTO `s_counter` VALUES ('2098', '2015-05-11 16:37:56', 'com.jsoil.edb.product.vo.Product', '0', '551', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '101.226.66.175', 'view');
INSERT INTO `s_counter` VALUES ('2111', '2015-05-12 17:51:51', 'com.jsoil.edb.product.vo.Product', '221', '501', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2112', '2015-05-13 12:14:14', 'com.jsoil.edb.product.vo.Product', '221', '538', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B466 MicroMessenger/6.1.5 NetType/3G+', '117.136.16.61', 'view');
INSERT INTO `s_counter` VALUES ('2115', '2015-05-14 08:40:52', 'com.jsoil.edb.product.vo.Product', '0', '508', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.1.5 NetType/WIFI', '183.224.93.156', 'view');
INSERT INTO `s_counter` VALUES ('2116', '2015-05-14 08:43:06', 'com.jsoil.edb.product.vo.Product', '221', '564', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.1.5 NetType/WIFI', '183.224.93.156', 'view');
INSERT INTO `s_counter` VALUES ('2117', '2015-05-14 10:44:55', 'com.jsoil.edb.product.vo.Product', '0', '501', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) Mobile/11A465 MicroMessenger/6.0 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2119', '2015-05-14 11:06:21', 'com.jsoil.edb.product.vo.Product', '0', '501', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) Mobile/11A465 MicroMessenger/6.0 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2126', '2015-05-14 14:59:10', 'com.jsoil.edb.product.vo.Product', '0', '550', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2129', '2015-05-14 16:02:44', 'com.jsoil.edb.product.vo.Product', '0', '554', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0) QQBrowser/8.1.3701.400', '183.224.93.156', 'view');
INSERT INTO `s_counter` VALUES ('2130', '2015-05-14 16:05:38', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '184', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.99 Safari/537.36 LBBROWSER', '183.224.93.156', 'view');
INSERT INTO `s_counter` VALUES ('2131', '2015-05-14 16:08:05', 'com.jsoil.edb.product.vo.Product', '0', '517', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0) QQBrowser/8.1.3701.400', '183.224.93.156', 'view');
INSERT INTO `s_counter` VALUES ('2132', '2015-05-14 16:08:06', 'com.jsoil.edb.product.vo.Product', '0', '517', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '101.226.33.203', 'view');
INSERT INTO `s_counter` VALUES ('2134', '2015-05-14 16:09:00', 'com.jsoil.edb.product.vo.Product', '221', '553', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0) QQBrowser/8.1.3701.400', '183.224.93.156', 'view');
INSERT INTO `s_counter` VALUES ('2135', '2015-05-14 16:09:01', 'com.jsoil.edb.product.vo.Product', '0', '553', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '180.153.214.152', 'view');
INSERT INTO `s_counter` VALUES ('2136', '2015-05-14 16:10:18', 'com.jsoil.edb.product.vo.Product', '221', '564', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0) QQBrowser/8.1.3701.400', '183.224.93.156', 'view');
INSERT INTO `s_counter` VALUES ('2137', '2015-05-14 16:14:21', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '184', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0) QQBrowser/8.1.3701.400', '183.224.93.156', 'view');
INSERT INTO `s_counter` VALUES ('2138', '2015-05-14 16:14:24', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '184', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '101.226.66.174', 'view');
INSERT INTO `s_counter` VALUES ('2139', '2015-05-14 16:16:18', 'com.jsoil.edb.product.vo.Product', '0', '554', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '180.153.163.191', 'view');
INSERT INTO `s_counter` VALUES ('2140', '2015-05-14 16:23:50', 'com.jsoil.edb.product.vo.Product', '0', '564', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '101.226.33.224', 'view');
INSERT INTO `s_counter` VALUES ('2143', '2015-05-14 21:03:17', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '181', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B466 MicroMessenger/6.1.5 NetType/WIFI', '116.249.172.250', 'view');
INSERT INTO `s_counter` VALUES ('2161', '2015-05-18 15:12:43', 'com.jsoil.edb.product.vo.Product', '0', '527', 'Mozilla/5.0 (iPhone; CPU iPhone OS 6_1_3 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Mobile/10B329 MicroMessenger/6.1.5 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2162', '2015-05-19 10:58:36', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '184', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2163', '2015-05-19 10:58:43', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '181', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2164', '2015-05-19 10:58:54', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '183', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2165', '2015-05-19 11:11:42', 'com.jsoil.edb.product.vo.Product', '221', '554', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2166', '2015-05-19 11:37:28', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '184', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B466 MicroMessenger/6.1.5 NetType/WIFI', '116.54.87.85', 'view');
INSERT INTO `s_counter` VALUES ('2167', '2015-05-19 11:37:28', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '184', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '180.153.214.181', 'view');
INSERT INTO `s_counter` VALUES ('2168', '2015-05-19 11:37:28', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '184', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '112.65.193.16', 'view');
INSERT INTO `s_counter` VALUES ('2169', '2015-05-19 11:37:47', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '184', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '180.153.214.181', 'view');
INSERT INTO `s_counter` VALUES ('2170', '2015-05-19 11:37:59', 'com.jsoil.edb.product.vo.Product', '0', '538', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B466 MicroMessenger/6.1.5 NetType/WIFI', '116.54.87.85', 'view');
INSERT INTO `s_counter` VALUES ('2171', '2015-05-19 14:08:40', 'com.jsoil.edb.product.vo.Product', '0', '514', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/3G+', '117.136.85.249', 'view');
INSERT INTO `s_counter` VALUES ('2172', '2015-05-19 14:08:48', 'com.jsoil.edb.product.vo.Product', '0', '501', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/3G+', '117.136.85.249', 'view');
INSERT INTO `s_counter` VALUES ('2173', '2015-05-19 14:08:53', 'com.jsoil.edb.product.vo.Product', '0', '514', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/3G+', '117.136.85.249', 'view');
INSERT INTO `s_counter` VALUES ('2174', '2015-05-19 14:09:40', 'com.jsoil.edb.product.vo.Product', '0', '502', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/3G+', '117.136.85.249', 'view');
INSERT INTO `s_counter` VALUES ('2175', '2015-05-19 14:10:04', 'com.jsoil.edb.product.vo.Product', '0', '554', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/3G+', '117.136.85.249', 'view');
INSERT INTO `s_counter` VALUES ('2176', '2015-05-19 14:10:50', 'com.jsoil.edb.product.vo.Product', '0', '553', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/3G+', '117.136.85.249', 'view');
INSERT INTO `s_counter` VALUES ('2177', '2015-05-19 14:11:32', 'com.jsoil.edb.product.vo.Product', '0', '553', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/3G+', '117.136.85.249', 'view');
INSERT INTO `s_counter` VALUES ('2178', '2015-05-19 14:31:13', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '182', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.1.5 NetType/3G+', '117.136.85.186', 'view');
INSERT INTO `s_counter` VALUES ('2179', '2015-05-19 14:33:58', 'com.jsoil.edb.product.vo.Product', '221', '553', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.1.5 NetType/3G+', '117.136.85.165', 'view');
INSERT INTO `s_counter` VALUES ('2180', '2015-05-19 14:34:01', 'com.jsoil.edb.product.vo.Product', '221', '501', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.1.5 NetType/3G+', '117.136.85.186', 'view');
INSERT INTO `s_counter` VALUES ('2181', '2015-05-19 14:34:24', 'com.jsoil.edb.product.vo.Product', '221', '553', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.1.5 NetType/3G+', '117.136.85.165', 'view');
INSERT INTO `s_counter` VALUES ('2182', '2015-05-19 14:34:27', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '181', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.1.5 NetType/3G+', '117.136.85.186', 'view');
INSERT INTO `s_counter` VALUES ('2183', '2015-05-19 14:34:34', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '183', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.1.5 NetType/3G+', '117.136.85.186', 'view');
INSERT INTO `s_counter` VALUES ('2184', '2015-05-19 14:34:35', 'com.jsoil.edb.product.vo.Product', '221', '553', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.1.5 NetType/3G+', '117.136.85.165', 'view');
INSERT INTO `s_counter` VALUES ('2185', '2015-05-19 14:38:27', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '184', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.1.5 NetType/3G+', '117.136.85.186', 'view');
INSERT INTO `s_counter` VALUES ('2186', '2015-05-19 14:39:22', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '184', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.1.5 NetType/3G+', '117.136.85.165', 'view');
INSERT INTO `s_counter` VALUES ('2187', '2015-05-19 14:39:48', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '181', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.1.5 NetType/3G+', '117.136.85.165', 'view');
INSERT INTO `s_counter` VALUES ('2191', '2015-05-19 14:56:11', 'com.jsoil.edb.facility.vo.Facility', '361', '170', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.1.5 NetType/3G+', '117.136.85.186', 'view');
INSERT INTO `s_counter` VALUES ('2192', '2015-05-19 15:09:40', 'com.jsoil.edb.product.vo.Product', '221', '553', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/3G+', '117.136.85.249', 'view');
INSERT INTO `s_counter` VALUES ('2193', '2015-05-19 15:15:01', 'com.jsoil.edb.product.vo.Product', '0', '550', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.1.5 NetType/3G+', '117.136.85.165', 'view');
INSERT INTO `s_counter` VALUES ('2194', '2015-05-19 15:17:09', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '181', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/3G+', '117.136.85.249', 'view');
INSERT INTO `s_counter` VALUES ('2195', '2015-05-19 15:44:09', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '184', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.1.5 NetType/3G+', '117.136.85.249', 'view');
INSERT INTO `s_counter` VALUES ('2196', '2015-05-19 18:08:07', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '361', '183', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.1.5 NetType/3G+', '117.136.85.186', 'view');
INSERT INTO `s_counter` VALUES ('2197', '2015-05-19 18:10:43', 'com.jsoil.edb.product.vo.Product', '361', '553', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.1.5 NetType/3G+', '117.136.85.186', 'view');
INSERT INTO `s_counter` VALUES ('2199', '2015-05-20 16:19:03', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '184', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2200', '2015-05-20 16:36:01', 'com.jsoil.edb.product.vo.Product', '0', '553', 'Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.141 Mobile Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2203', '2015-05-23 07:42:28', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '181', 'Mozilla/5.0 (Linux; U; Android 4.2.2; zh-cn; L39t Build/14.1.M.1.59) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30 MicroMessenger/6.0.0.41_r835309.501 NetType/WIFI', '182.242.152.95', 'view');
INSERT INTO `s_counter` VALUES ('2204', '2015-05-25 13:23:37', 'com.jsoil.edb.product.vo.Product', '221', '550', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2221', '2015-05-25 13:29:27', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '184', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2225', '2015-05-26 14:23:05', 'com.jsoil.edb.product.vo.Product', '0', '550', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2226', '2015-05-26 17:00:51', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '183', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B466 MicroMessenger/6.2 NetType/3G+ Language/zh_CN', '117.136.16.112', 'view');
INSERT INTO `s_counter` VALUES ('2230', '2015-05-28 09:14:07', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '184', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12A405 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '116.52.58.219', 'view');
INSERT INTO `s_counter` VALUES ('2231', '2015-05-28 09:14:39', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '181', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12A405 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '116.52.58.219', 'view');
INSERT INTO `s_counter` VALUES ('2246', '2015-05-28 14:50:35', 'com.jsoil.edb.product.vo.Product', '0', '502', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '112.64.235.250', 'view');
INSERT INTO `s_counter` VALUES ('2249', '2015-05-28 15:01:31', 'com.jsoil.edb.product.vo.Product', '0', '502', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '101.226.66.175', 'view');
INSERT INTO `s_counter` VALUES ('2250', '2015-05-29 00:34:09', 'com.jsoil.edb.product.vo.Product', '221', '501', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2 NetType/3G+ Language/zh_CN', '117.136.85.167', 'view');
INSERT INTO `s_counter` VALUES ('2251', '2015-05-29 00:34:27', 'com.jsoil.edb.product.vo.Product', '221', '503', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2 NetType/3G+ Language/zh_CN', '117.136.85.167', 'view');
INSERT INTO `s_counter` VALUES ('2252', '2015-05-29 00:34:52', 'com.jsoil.edb.product.vo.Product', '221', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2 NetType/3G+ Language/zh_CN', '117.136.85.167', 'clickAD');
INSERT INTO `s_counter` VALUES ('2253', '2015-05-29 00:37:38', 'com.jsoil.edb.product.vo.Product', '221', '559', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2 NetType/3G+ Language/zh_CN', '117.136.85.167', 'view');
INSERT INTO `s_counter` VALUES ('2254', '2015-05-29 00:38:44', 'com.jsoil.edb.product.vo.Product', '221', '539', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2 NetType/3G+ Language/zh_CN', '117.136.85.167', 'view');
INSERT INTO `s_counter` VALUES ('2255', '2015-05-29 00:45:07', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '181', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2 NetType/3G+ Language/zh_CN', '117.136.85.167', 'view');
INSERT INTO `s_counter` VALUES ('2256', '2015-05-30 11:51:31', 'com.jsoil.edb.product.vo.Product', '221', '553', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.2 NetType/3G+ Language/zh_CN', '117.136.85.253', 'view');
INSERT INTO `s_counter` VALUES ('2261', '2015-06-01 16:38:20', 'com.jsoil.edb.facility.vo.Facility', '0', '184', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2262', '2015-06-01 18:17:05', 'com.jsoil.edb.facility.vo.Facility', '0', '171', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12A366 MicroMessenger/6.2 NetType/3G+ Language/zh_CN', '106.60.173.95', 'view');
INSERT INTO `s_counter` VALUES ('2264', '2015-06-02 18:07:40', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '184', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '116.53.252.78', 'view');
INSERT INTO `s_counter` VALUES ('2272', '2015-06-03 11:07:41', 'com.jsoil.edb.product.vo.Product', '221', '564', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2273', '2015-06-03 11:18:52', 'com.jsoil.edb.product.vo.Product', '221', '564', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2274', '2015-06-03 11:19:02', 'com.jsoil.edb.product.vo.Product', '221', '564', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2275', '2015-06-03 11:19:16', 'com.jsoil.edb.product.vo.Product', '221', '564', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2276', '2015-06-03 11:19:55', 'com.jsoil.edb.product.vo.Product', '221', '564', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2277', '2015-06-03 11:20:10', 'com.jsoil.edb.product.vo.Product', '221', '564', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2278', '2015-06-03 11:23:02', 'com.jsoil.edb.product.vo.Product', '221', '564', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2279', '2015-06-03 11:23:22', 'com.jsoil.edb.product.vo.Product', '221', '564', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2280', '2015-06-03 15:02:18', 'com.jsoil.edb.product.vo.Product', '221', '564', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2281', '2015-06-03 15:07:23', 'com.jsoil.edb.product.vo.Product', '221', '581', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2282', '2015-06-03 15:07:25', 'com.jsoil.edb.product.vo.Product', '221', '581', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2283', '2015-06-03 15:07:28', 'com.jsoil.edb.product.vo.Product', '221', '564', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2284', '2015-06-03 15:07:32', 'com.jsoil.edb.product.vo.Product', '221', '581', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2285', '2015-06-03 15:07:38', 'com.jsoil.edb.product.vo.Product', '221', '581', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2286', '2015-06-03 15:08:09', 'com.jsoil.edb.product.vo.Product', '221', '581', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2287', '2015-06-03 15:08:12', 'com.jsoil.edb.product.vo.Product', '221', '581', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2288', '2015-06-03 15:08:22', 'com.jsoil.edb.product.vo.Product', '221', '581', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2291', '2015-06-03 15:16:48', 'com.jsoil.edb.product.vo.Product', '221', '581', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2295', '2015-06-03 15:28:34', 'com.jsoil.edb.product.vo.Product', '221', '581', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2304', '2015-06-03 15:40:41', 'com.jsoil.edb.product.vo.Product', '221', '581', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2305', '2015-06-03 15:44:24', 'com.jsoil.edb.product.vo.Product', '221', '581', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2307', '2015-06-03 15:45:33', 'com.jsoil.edb.product.vo.Product', '221', '581', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2309', '2015-06-03 15:47:08', 'com.jsoil.edb.product.vo.Product', '221', '581', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2310', '2015-06-03 15:47:10', 'com.jsoil.edb.product.vo.Product', '221', '581', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2311', '2015-06-03 15:47:14', 'com.jsoil.edb.product.vo.Product', '221', '581', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2323', '2015-06-03 15:53:19', 'com.jsoil.edb.product.vo.Product', '221', '581', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.65 Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2324', '2015-06-03 15:53:24', 'com.jsoil.edb.product.vo.Product', '221', '581', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2327', '2015-06-03 15:53:47', 'com.jsoil.edb.product.vo.Product', '0', '564', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '112.64.235.249', 'view');
INSERT INTO `s_counter` VALUES ('2328', '2015-06-03 15:53:47', 'com.jsoil.edb.product.vo.Product', '0', '564', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '101.226.33.205', 'view');
INSERT INTO `s_counter` VALUES ('2329', '2015-06-03 15:54:10', 'com.jsoil.edb.product.vo.Product', '0', '581', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '101.226.93.234', 'view');
INSERT INTO `s_counter` VALUES ('2330', '2015-06-03 15:55:45', 'com.jsoil.edb.product.vo.Product', '221', '581', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.65 Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2331', '2015-06-03 15:55:47', 'com.jsoil.edb.product.vo.Product', '221', '581', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.65 Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2332', '2015-06-03 15:55:52', 'com.jsoil.edb.product.vo.Product', '221', '581', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2333', '2015-06-03 15:55:52', 'com.jsoil.edb.product.vo.Product', '221', '581', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2334', '2015-06-03 15:55:55', 'com.jsoil.edb.product.vo.Product', '221', '581', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2401', '2015-06-03 16:07:41', 'com.jsoil.edb.product.vo.Product', '221', '581', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2402', '2015-06-03 16:07:43', 'com.jsoil.edb.product.vo.Product', '221', '581', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2404', '2015-06-03 16:08:13', 'com.jsoil.edb.product.vo.Product', '221', '581', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2405', '2015-06-03 16:08:16', 'com.jsoil.edb.product.vo.Product', '221', '581', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2408', '2015-06-03 16:08:29', 'com.jsoil.edb.product.vo.Product', '221', '581', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2411', '2015-06-03 16:08:31', 'com.jsoil.edb.product.vo.Product', '221', '581', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2412', '2015-06-03 16:08:35', 'com.jsoil.edb.product.vo.Product', '221', '581', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2430', '2015-06-03 16:08:54', 'com.jsoil.edb.product.vo.Product', '221', '581', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'tel');
INSERT INTO `s_counter` VALUES ('2431', '2015-06-03 16:09:06', 'com.jsoil.edb.product.vo.Product', '221', '581', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'tel');
INSERT INTO `s_counter` VALUES ('2432', '2015-06-03 16:09:08', 'com.jsoil.edb.product.vo.Product', '221', '581', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'tel');
INSERT INTO `s_counter` VALUES ('2433', '2015-06-03 16:09:09', 'com.jsoil.edb.product.vo.Product', '221', '581', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'tel');
INSERT INTO `s_counter` VALUES ('2434', '2015-06-03 16:09:09', 'com.jsoil.edb.product.vo.Product', '221', '581', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'tel');
INSERT INTO `s_counter` VALUES ('2450', '2015-06-04 08:12:32', 'com.jsoil.edb.product.vo.Product', '0', '581', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2 NetType/3G+ Language/zh_CN', '117.136.85.209', 'view');
INSERT INTO `s_counter` VALUES ('2455', '2015-06-04 08:53:07', 'com.jsoil.edb.product.vo.Product', '0', '564', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '101.226.93.234', 'view');
INSERT INTO `s_counter` VALUES ('2469', '2015-06-04 16:33:21', 'com.jsoil.edb.product.vo.Product', '221', '501', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '183.224.93.60', 'view');
INSERT INTO `s_counter` VALUES ('2479', '2015-06-08 10:10:21', 'com.jsoil.edb.product.vo.Product', '0', '550', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '180.153.206.35', 'view');
INSERT INTO `s_counter` VALUES ('2480', '2015-06-08 10:48:40', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '184', 'Mozilla/5.0 (iPhone; CPU iPhone OS 6_1_3 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Mobile/10B329 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2481', '2015-06-08 10:51:49', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '184', 'Mozilla/5.0 (iPhone; CPU iPhone OS 6_1_3 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Mobile/10B329 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2482', '2015-06-08 10:51:56', 'com.jsoil.edb.product.vo.Product', '221', '501', 'Mozilla/5.0 (iPhone; CPU iPhone OS 6_1_3 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Mobile/10B329 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2484', '2015-06-08 10:58:45', 'com.jsoil.edb.product.vo.Product', '0', '553', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B466 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '116.52.28.217', 'view');
INSERT INTO `s_counter` VALUES ('2486', '2015-06-08 11:06:47', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '184', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '180.153.206.24', 'view');
INSERT INTO `s_counter` VALUES ('2497', '2015-06-08 11:20:13', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '184', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '101.226.93.233', 'view');
INSERT INTO `s_counter` VALUES ('2498', '2015-06-08 11:21:07', 'com.jsoil.edb.product.vo.Product', '0', '582', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '101.226.66.191', 'view');
INSERT INTO `s_counter` VALUES ('2502', '2015-06-08 11:30:36', 'com.jsoil.edb.product.vo.Product', '221', '582', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2503', '2015-06-08 11:31:12', 'com.jsoil.edb.product.vo.Product', '0', '582', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '14.17.18.152', 'view');
INSERT INTO `s_counter` VALUES ('2504', '2015-06-08 11:31:47', 'com.jsoil.edb.product.vo.Product', '0', '582', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.89 Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2505', '2015-06-08 11:32:19', 'com.jsoil.edb.product.vo.Product', '0', '582', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X; en-us) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile/11A465 Safari/9537.53', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2561', '2015-06-08 14:44:19', 'com.jsoil.edb.product.vo.Product', '0', '564', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '180.153.211.190', 'view');
INSERT INTO `s_counter` VALUES ('2582', '2015-06-08 16:32:06', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '183', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/3G+ Language/zh_CN', '117.136.85.163', 'view');
INSERT INTO `s_counter` VALUES ('2583', '2015-06-08 16:32:10', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '183', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/3G+ Language/zh_CN', '117.136.85.163', 'view');
INSERT INTO `s_counter` VALUES ('2601', '2015-06-08 17:25:55', 'com.jsoil.edb.product.vo.Product', '221', '', 'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-CN; HTC M8Sw Build/LRX22G) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/10.2.1.550 U3/0.8.0 Mobile Safari/534.30', '112.112.11.107', 'clickAD');
INSERT INTO `s_counter` VALUES ('2602', '2015-06-08 17:33:40', 'com.jsoil.edb.product.vo.Product', '221', '564', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2603', '2015-06-08 17:33:55', 'com.jsoil.edb.product.vo.Product', '221', '564', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2621', '2015-06-08 17:43:59', 'com.jsoil.edb.product.vo.Product', '0', '564', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2622', '2015-06-08 17:44:10', 'com.jsoil.edb.product.vo.Product', '0', '564', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2623', '2015-06-08 17:46:15', 'com.jsoil.edb.product.vo.Product', '0', '564', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/3G+ Language/zh_CN', '117.136.85.163', 'view');
INSERT INTO `s_counter` VALUES ('2624', '2015-06-08 17:47:28', 'com.jsoil.edb.product.vo.Product', '0', '564', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/3G+ Language/zh_CN', '117.136.85.163', 'view');
INSERT INTO `s_counter` VALUES ('2625', '2015-06-08 17:47:49', 'com.jsoil.edb.product.vo.Product', '0', '564', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/3G+ Language/zh_CN', '117.136.85.163', 'view');
INSERT INTO `s_counter` VALUES ('2626', '2015-06-08 17:48:54', 'com.jsoil.edb.product.vo.Product', '0', '564', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/3G+ Language/zh_CN', '117.136.85.163', 'tel');
INSERT INTO `s_counter` VALUES ('2627', '2015-06-08 17:49:00', 'com.jsoil.edb.product.vo.Product', '0', '564', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/3G+ Language/zh_CN', '117.136.85.163', 'tel');
INSERT INTO `s_counter` VALUES ('2628', '2015-06-08 17:49:59', 'com.jsoil.edb.product.vo.Product', '0', '564', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/3G+ Language/zh_CN', '117.136.85.163', 'view');
INSERT INTO `s_counter` VALUES ('2629', '2015-06-08 17:50:01', 'com.jsoil.edb.product.vo.Product', '0', '564', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/3G+ Language/zh_CN', '117.136.85.163', 'tel');
INSERT INTO `s_counter` VALUES ('2631', '2015-06-09 09:23:29', 'com.jsoil.edb.product.vo.Product', '0', '582', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2632', '2015-06-09 09:41:47', 'com.jsoil.edb.product.vo.Product', '221', '582', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2633', '2015-06-09 09:42:43', 'com.jsoil.edb.product.vo.Product', '221', '582', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2634', '2015-06-09 09:42:48', 'com.jsoil.edb.product.vo.Product', '221', '582', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2635', '2015-06-09 09:42:50', 'com.jsoil.edb.product.vo.Product', '221', '582', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2636', '2015-06-09 09:42:57', 'com.jsoil.edb.product.vo.Product', '221', '582', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2637', '2015-06-09 09:43:02', 'com.jsoil.edb.product.vo.Product', '221', '582', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2638', '2015-06-09 09:43:10', 'com.jsoil.edb.product.vo.Product', '221', '582', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2639', '2015-06-09 09:45:10', 'com.jsoil.edb.product.vo.Product', '221', '582', 'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-CN; HTC M8Sw Build/LRX22G) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/10.2.1.550 U3/0.8.0 Mobile Safari/534.30', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2640', '2015-06-09 09:46:03', 'com.jsoil.edb.product.vo.Product', '221', '582', 'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-CN; HTC M8Sw Build/LRX22G) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/10.2.1.550 U3/0.8.0 Mobile Safari/534.30', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2641', '2015-06-09 09:46:14', 'com.jsoil.edb.product.vo.Product', '221', '582', 'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-CN; HTC M8Sw Build/LRX22G) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/10.2.1.550 U3/0.8.0 Mobile Safari/534.30', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2642', '2015-06-09 09:47:41', 'com.jsoil.edb.product.vo.Product', '221', '582', 'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-CN; HTC M8Sw Build/LRX22G) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/10.2.1.550 U3/0.8.0 Mobile Safari/534.30', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2643', '2015-06-09 09:49:42', 'com.jsoil.edb.product.vo.Product', '221', '582', 'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-CN; HTC M8Sw Build/LRX22G) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/10.2.1.550 U3/0.8.0 Mobile Safari/534.30', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2680', '2015-06-09 15:02:43', 'com.jsoil.edb.product.vo.Product', '0', '582', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.89 Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2683', '2015-06-09 15:03:36', 'com.jsoil.edb.product.vo.Product', '0', '582', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.89 Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2684', '2015-06-09 15:03:47', 'com.jsoil.edb.product.vo.Product', '0', '582', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.89 Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2697', '2015-06-09 17:04:39', 'com.jsoil.edb.product.vo.Product', '0', '582', 'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-CN; HTC M8Sw Build/LRX22G) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/10.2.1.550 U3/0.8.0 Mobile Safari/534.30', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2698', '2015-06-10 09:36:19', 'com.jsoil.edb.product.vo.Product', '0', '549', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/3G+ Language/zh_CN', '220.202.153.44', 'view');
INSERT INTO `s_counter` VALUES ('2705', '2015-06-10 14:20:32', 'com.jsoil.edb.product.vo.Product', '221', '582', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2706', '2015-06-10 14:26:41', 'com.jsoil.edb.product.vo.Product', '221', '582', 'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-CN; HTC M8Sw Build/LRX22G) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/10.2.1.550 U3/0.8.0 Mobile Safari/534.30', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2707', '2015-06-10 14:41:52', 'com.jsoil.edb.product.vo.Product', '221', '582', 'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-CN; HTC M8Sw Build/LRX22G) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/10.2.1.550 U3/0.8.0 Mobile Safari/534.30', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2708', '2015-06-10 15:03:41', 'com.jsoil.edb.product.vo.Product', '0', '582', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.89 Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2710', '2015-06-10 15:10:35', 'com.jsoil.edb.product.vo.Product', '221', '582', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.89 Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2711', '2015-06-10 15:10:54', 'com.jsoil.edb.product.vo.Product', '221', '582', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.89 Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2712', '2015-06-10 17:23:49', 'com.jsoil.edb.product.vo.Product', '0', '582', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2715', '2015-06-10 21:42:39', 'com.jsoil.edb.product.vo.Product', '0', '501', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '112.112.51.4', 'view');
INSERT INTO `s_counter` VALUES ('2716', '2015-06-10 21:42:49', 'com.jsoil.edb.product.vo.Product', '0', '529', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '112.112.51.4', 'view');
INSERT INTO `s_counter` VALUES ('2717', '2015-06-10 21:43:07', 'com.jsoil.edb.product.vo.Product', '0', '523', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '112.112.51.4', 'view');
INSERT INTO `s_counter` VALUES ('2718', '2015-06-10 21:43:19', 'com.jsoil.edb.product.vo.Product', '0', '523', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '112.112.51.4', 'view');
INSERT INTO `s_counter` VALUES ('2719', '2015-06-10 21:43:38', 'com.jsoil.edb.product.vo.Product', '0', '549', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '112.112.51.4', 'view');
INSERT INTO `s_counter` VALUES ('2720', '2015-06-10 22:16:00', 'com.jsoil.edb.product.vo.Product', '0', '516', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '14.204.117.153', 'view');
INSERT INTO `s_counter` VALUES ('2721', '2015-06-10 22:18:06', 'com.jsoil.edb.product.vo.Product', '0', '582', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '14.204.117.153', 'view');
INSERT INTO `s_counter` VALUES ('2725', '2015-06-11 09:42:52', 'com.jsoil.edb.product.vo.Product', '221', '602', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/3G+ Language/zh_CN', '117.136.85.223', 'view');
INSERT INTO `s_counter` VALUES ('2728', '2015-06-11 09:46:46', 'com.jsoil.edb.product.vo.Product', '221', '602', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/3G+ Language/zh_CN', '117.136.85.223', 'view');
INSERT INTO `s_counter` VALUES ('2729', '2015-06-11 09:47:17', 'com.jsoil.edb.product.vo.Product', '221', '602', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/3G+ Language/zh_CN', '117.136.85.223', 'tel');
INSERT INTO `s_counter` VALUES ('2730', '2015-06-11 09:51:41', 'com.jsoil.edb.product.vo.Product', '221', '602', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/3G+ Language/zh_CN', '117.136.85.223', 'view');
INSERT INTO `s_counter` VALUES ('2731', '2015-06-11 09:55:37', 'com.jsoil.edb.product.vo.Product', '221', '564', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '117.136.85.223', 'view');
INSERT INTO `s_counter` VALUES ('2732', '2015-06-11 09:58:05', 'com.jsoil.edb.product.vo.Product', '221', '602', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '117.136.85.223', 'view');
INSERT INTO `s_counter` VALUES ('2733', '2015-06-11 10:26:51', 'com.jsoil.edb.product.vo.Product', '221', '564', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '117.136.85.223', 'view');
INSERT INTO `s_counter` VALUES ('2734', '2015-06-11 10:27:55', 'com.jsoil.edb.product.vo.Product', '221', '582', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '117.136.85.223', 'view');
INSERT INTO `s_counter` VALUES ('2735', '2015-06-11 10:28:49', 'com.jsoil.edb.product.vo.Product', '0', '582', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/3G+ Language/zh_CN', '117.136.85.223', 'view');
INSERT INTO `s_counter` VALUES ('2738', '2015-06-11 11:24:31', 'com.jsoil.edb.product.vo.Product', '0', '582', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '101.226.93.234', 'view');
INSERT INTO `s_counter` VALUES ('2739', '2015-06-11 11:37:58', 'com.jsoil.edb.product.vo.Product', '0', '582', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '101.226.66.180', 'view');
INSERT INTO `s_counter` VALUES ('2750', '2015-06-11 15:09:13', 'com.jsoil.edb.product.vo.Product', '0', '603', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '101.226.93.234', 'view');
INSERT INTO `s_counter` VALUES ('2755', '2015-06-11 15:15:17', 'com.jsoil.edb.product.vo.Product', '0', '603', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '101.226.33.237', 'view');
INSERT INTO `s_counter` VALUES ('2756', '2015-06-11 15:18:27', 'com.jsoil.edb.product.vo.Product', '221', '582', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2757', '2015-06-11 15:18:43', 'com.jsoil.edb.product.vo.Product', '221', '603', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2758', '2015-06-11 15:18:51', 'com.jsoil.edb.product.vo.Product', '221', '603', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2759', '2015-06-11 15:21:36', 'com.jsoil.edb.product.vo.Product', '221', '603', 'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-CN; HTC M8Sw Build/LRX22G) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/10.2.1.550 U3/0.8.0 Mobile Safari/534.30', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2762', '2015-06-11 15:25:44', 'com.jsoil.edb.product.vo.Product', '0', '602', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '180.153.214.178', 'view');
INSERT INTO `s_counter` VALUES ('2763', '2015-06-11 15:26:06', 'com.jsoil.edb.product.vo.Product', '221', '603', 'Mozilla/5.0 (Linux; U; Android 4.0.4; zh-cn; GT-S7562i Build/IMM76I) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30 MicroMessenger/5.4.0.51_r798589.480 NetType/WIFI', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2764', '2015-06-11 15:26:07', 'com.jsoil.edb.product.vo.Product', '221', '582', 'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-CN; HTC M8Sw Build/LRX22G) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/10.2.1.550 U3/0.8.0 Mobile Safari/534.30', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2765', '2015-06-11 15:26:50', 'com.jsoil.edb.product.vo.Product', '221', '564', 'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-CN; HTC M8Sw Build/LRX22G) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/10.2.1.550 U3/0.8.0 Mobile Safari/534.30', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2766', '2015-06-11 15:47:10', 'com.jsoil.edb.product.vo.Product', '221', '603', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2767', '2015-06-11 15:47:27', 'com.jsoil.edb.product.vo.Product', '221', '582', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2768', '2015-06-11 15:54:43', 'com.jsoil.edb.product.vo.Product', '221', '553', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2776', '2015-06-11 16:03:20', 'com.jsoil.edb.product.vo.Product', '221', '564', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2777', '2015-06-11 16:03:44', 'com.jsoil.edb.product.vo.Product', '221', '553', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2778', '2015-06-11 16:34:56', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '184', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2779', '2015-06-11 16:36:10', 'com.jsoil.edb.product.vo.Product', '221', '554', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2780', '2015-06-11 16:37:50', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '183', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2826', '2015-06-15 08:18:41', 'com.jsoil.edb.product.vo.Product', '0', '605', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2 NetType/3G+ Language/zh_CN', '117.136.85.145', 'view');
INSERT INTO `s_counter` VALUES ('2827', '2015-06-15 08:19:20', 'com.jsoil.edb.product.vo.Product', '0', '564', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2 NetType/3G+ Language/zh_CN', '117.136.85.145', 'view');
INSERT INTO `s_counter` VALUES ('2828', '2015-06-15 08:19:40', 'com.jsoil.edb.product.vo.Product', '0', '582', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2 NetType/3G+ Language/zh_CN', '117.136.85.145', 'view');
INSERT INTO `s_counter` VALUES ('2829', '2015-06-15 08:19:58', 'com.jsoil.edb.product.vo.Product', '0', '609', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2 NetType/3G+ Language/zh_CN', '117.136.85.145', 'view');
INSERT INTO `s_counter` VALUES ('2832', '2015-06-15 08:38:37', 'com.jsoil.edb.product.vo.Product', '0', '564', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '180.153.201.15', 'view');
INSERT INTO `s_counter` VALUES ('2840', '2015-06-15 08:48:34', 'com.jsoil.edb.product.vo.Product', '221', '605', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '183.224.92.202', 'view');
INSERT INTO `s_counter` VALUES ('2841', '2015-06-15 08:49:08', 'com.jsoil.edb.product.vo.Product', '221', '564', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '183.224.92.202', 'view');
INSERT INTO `s_counter` VALUES ('2842', '2015-06-15 08:49:14', 'com.jsoil.edb.product.vo.Product', '221', '605', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '183.224.92.202', 'view');
INSERT INTO `s_counter` VALUES ('2843', '2015-06-15 08:51:06', 'com.jsoil.edb.product.vo.Product', '0', '564', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '101.226.66.175', 'view');
INSERT INTO `s_counter` VALUES ('2844', '2015-06-15 08:59:47', 'com.jsoil.edb.product.vo.Product', '221', '602', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '183.224.92.202', 'view');
INSERT INTO `s_counter` VALUES ('2845', '2015-06-15 10:10:05', 'com.jsoil.edb.product.vo.Product', '221', '582', 'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-CN; HTC M8Sw Build/LRX22G) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/10.2.1.550 U3/0.8.0 Mobile Safari/534.30', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2846', '2015-06-15 10:10:13', 'com.jsoil.edb.product.vo.Product', '221', '582', 'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-CN; HTC M8Sw Build/LRX22G) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/10.2.1.550 U3/0.8.0 Mobile Safari/534.30', '112.112.11.107', 'tel');
INSERT INTO `s_counter` VALUES ('2847', '2015-06-15 10:10:25', 'com.jsoil.edb.product.vo.Product', '221', '582', 'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-CN; HTC M8Sw Build/LRX22G) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/10.2.1.550 U3/0.8.0 Mobile Safari/534.30', '112.112.11.107', 'tel');
INSERT INTO `s_counter` VALUES ('2848', '2015-06-15 10:10:32', 'com.jsoil.edb.product.vo.Product', '0', '602', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/3G+ Language/zh_CN', '117.136.85.234', 'view');
INSERT INTO `s_counter` VALUES ('2849', '2015-06-15 10:10:33', 'com.jsoil.edb.product.vo.Product', '221', '582', 'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-CN; HTC M8Sw Build/LRX22G) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/10.2.1.550 U3/0.8.0 Mobile Safari/534.30', '112.112.11.107', 'tel');
INSERT INTO `s_counter` VALUES ('2850', '2015-06-15 10:10:54', 'com.jsoil.edb.product.vo.Product', '0', '603', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/3G+ Language/zh_CN', '117.136.85.234', 'view');
INSERT INTO `s_counter` VALUES ('2851', '2015-06-15 10:11:03', 'com.jsoil.edb.product.vo.Product', '0', '603', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/3G+ Language/zh_CN', '117.136.85.234', 'tel');
INSERT INTO `s_counter` VALUES ('2852', '2015-06-15 10:13:39', 'com.jsoil.edb.product.vo.Product', '221', '582', 'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-CN; HTC M8Sw Build/LRX22G) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/10.2.1.550 U3/0.8.0 Mobile Safari/534.30', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2853', '2015-06-15 10:14:25', 'com.jsoil.edb.product.vo.Product', '221', '582', 'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-CN; HTC M8Sw Build/LRX22G) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/10.2.1.550 U3/0.8.0 Mobile Safari/534.30', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2854', '2015-06-15 10:18:02', 'com.jsoil.edb.product.vo.Product', '221', '582', 'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-CN; HTC M8Sw Build/LRX22G) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/10.2.1.550 U3/0.8.0 Mobile Safari/534.30', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2855', '2015-06-15 10:20:57', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '181', 'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-CN; HTC M8Sw Build/LRX22G) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/10.2.1.550 U3/0.8.0 Mobile Safari/534.30', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2856', '2015-06-15 10:28:08', 'com.jsoil.edb.product.vo.Product', '221', '582', 'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-CN; HTC M8Sw Build/LRX22G) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/10.2.1.550 U3/0.8.0 Mobile Safari/534.30', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2861', '2015-06-15 14:23:32', 'com.jsoil.edb.product.vo.Product', '0', '582', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) (Engine, like URL) Mobile/12B440 MicroMessenger/6.0.1 NetType/3G+', '180.153.201.212', 'view');
INSERT INTO `s_counter` VALUES ('2870', '2015-06-15 16:13:28', 'com.jsoil.edb.product.vo.Product', '0', '609', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '117.136.85.145', 'view');
INSERT INTO `s_counter` VALUES ('2871', '2015-06-15 16:14:22', 'com.jsoil.edb.product.vo.Product', '0', '609', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '117.136.85.145', 'tel');
INSERT INTO `s_counter` VALUES ('2872', '2015-06-15 17:12:02', 'com.jsoil.edb.product.vo.Product', '0', '609', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '183.224.92.202', 'view');
INSERT INTO `s_counter` VALUES ('2873', '2015-06-15 17:12:17', 'com.jsoil.edb.product.vo.Product', '0', '609', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '183.224.92.202', 'view');
INSERT INTO `s_counter` VALUES ('2874', '2015-06-15 17:12:53', 'com.jsoil.edb.product.vo.Product', '0', '564', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '183.224.92.202', 'view');
INSERT INTO `s_counter` VALUES ('2875', '2015-06-15 17:12:57', 'com.jsoil.edb.product.vo.Product', '0', '605', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '183.224.92.202', 'view');
INSERT INTO `s_counter` VALUES ('2876', '2015-06-15 17:13:13', 'com.jsoil.edb.product.vo.Product', '0', '605', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '183.224.92.202', 'tel');
INSERT INTO `s_counter` VALUES ('2881', '2015-06-15 17:15:03', 'com.jsoil.edb.product.vo.Product', '0', '564', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '183.224.92.202', 'view');
INSERT INTO `s_counter` VALUES ('2882', '2015-06-15 17:15:16', 'com.jsoil.edb.product.vo.Product', '0', '564', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '183.224.92.202', 'tel');
INSERT INTO `s_counter` VALUES ('2888', '2015-06-15 17:16:53', 'com.jsoil.edb.product.vo.Product', '0', '603', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '183.224.92.202', 'view');
INSERT INTO `s_counter` VALUES ('2889', '2015-06-15 17:16:59', 'com.jsoil.edb.product.vo.Product', '0', '610', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '183.224.92.202', 'view');
INSERT INTO `s_counter` VALUES ('2890', '2015-06-15 17:17:04', 'com.jsoil.edb.product.vo.Product', '0', '606', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '183.224.92.202', 'view');
INSERT INTO `s_counter` VALUES ('2907', '2015-06-15 17:24:01', 'com.jsoil.edb.product.vo.Product', '0', '564', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '183.224.92.202', 'view');
INSERT INTO `s_counter` VALUES ('2909', '2015-06-15 17:24:04', 'com.jsoil.edb.product.vo.Product', '0', '564', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '183.224.92.202', 'tel');
INSERT INTO `s_counter` VALUES ('2910', '2015-06-15 17:24:05', 'com.jsoil.edb.product.vo.Product', '0', '564', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '183.224.92.202', 'tel');
INSERT INTO `s_counter` VALUES ('2911', '2015-06-15 17:24:10', 'com.jsoil.edb.product.vo.Product', '0', '564', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '183.224.92.202', 'tel');
INSERT INTO `s_counter` VALUES ('2919', '2015-06-15 17:24:40', 'com.jsoil.edb.product.vo.Product', '0', '564', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '183.224.92.202', 'tel');
INSERT INTO `s_counter` VALUES ('2920', '2015-06-15 17:24:43', 'com.jsoil.edb.product.vo.Product', '0', '564', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '183.224.92.202', 'tel');
INSERT INTO `s_counter` VALUES ('2921', '2015-06-15 17:24:45', 'com.jsoil.edb.product.vo.Product', '0', '564', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '183.224.92.202', 'tel');
INSERT INTO `s_counter` VALUES ('2922', '2015-06-15 17:24:51', 'com.jsoil.edb.product.vo.Product', '0', '605', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '183.224.92.202', 'view');
INSERT INTO `s_counter` VALUES ('2923', '2015-06-15 17:24:55', 'com.jsoil.edb.product.vo.Product', '0', '605', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '183.224.92.202', 'tel');
INSERT INTO `s_counter` VALUES ('2924', '2015-06-15 17:25:02', 'com.jsoil.edb.product.vo.Product', '0', '605', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '183.224.92.202', 'tel');
INSERT INTO `s_counter` VALUES ('2925', '2015-06-15 17:25:06', 'com.jsoil.edb.product.vo.Product', '0', '564', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '183.224.92.202', 'view');
INSERT INTO `s_counter` VALUES ('2926', '2015-06-15 17:25:16', 'com.jsoil.edb.product.vo.Product', '0', '564', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '183.224.92.202', 'tel');
INSERT INTO `s_counter` VALUES ('2927', '2015-06-15 17:26:05', 'com.jsoil.edb.product.vo.Product', '0', '564', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '183.224.92.202', 'view');
INSERT INTO `s_counter` VALUES ('2928', '2015-06-15 17:26:09', 'com.jsoil.edb.product.vo.Product', '0', '564', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '183.224.92.202', 'tel');
INSERT INTO `s_counter` VALUES ('2931', '2015-06-15 19:51:42', 'com.jsoil.edb.product.vo.Product', '0', '550', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2 NetType/2G Language/zh_CN', '117.136.85.145', 'view');
INSERT INTO `s_counter` VALUES ('2932', '2015-06-15 19:51:47', 'com.jsoil.edb.product.vo.Product', '0', '550', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2 NetType/2G Language/zh_CN', '117.136.85.145', 'view');
INSERT INTO `s_counter` VALUES ('2936', '2015-06-16 14:18:54', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '182', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '183.224.92.202', 'view');
INSERT INTO `s_counter` VALUES ('2937', '2015-06-16 14:23:09', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '183', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '183.224.92.202', 'view');
INSERT INTO `s_counter` VALUES ('2938', '2015-06-16 14:47:29', 'com.jsoil.edb.product.vo.Product', '0', '582', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '183.60.70.30', 'view');
INSERT INTO `s_counter` VALUES ('2939', '2015-06-16 18:10:54', 'com.jsoil.edb.product.vo.Product', '0', '554', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '183.224.92.202', 'view');
INSERT INTO `s_counter` VALUES ('2940', '2015-06-16 18:11:29', 'com.jsoil.edb.product.vo.Product', '0', '603', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '183.224.92.202', 'view');
INSERT INTO `s_counter` VALUES ('2941', '2015-06-16 18:11:35', 'com.jsoil.edb.product.vo.Product', '0', '603', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '183.224.92.202', 'tel');
INSERT INTO `s_counter` VALUES ('2942', '2015-06-16 18:12:01', 'com.jsoil.edb.product.vo.Product', '0', '606', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '183.224.92.202', 'view');
INSERT INTO `s_counter` VALUES ('2943', '2015-06-16 18:12:09', 'com.jsoil.edb.product.vo.Product', '0', '564', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '183.224.92.202', 'view');
INSERT INTO `s_counter` VALUES ('2944', '2015-06-16 18:27:10', 'com.jsoil.edb.product.vo.Product', '0', '603', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/3G+ Language/zh_CN', '117.136.85.166', 'view');
INSERT INTO `s_counter` VALUES ('2945', '2015-06-16 19:23:44', 'com.jsoil.edb.product.vo.Product', '0', '602', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_2 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D257 MicroMessenger/6.2 NetType/3G+ Language/zh_CN', '106.60.172.89', 'view');
INSERT INTO `s_counter` VALUES ('2946', '2015-06-16 19:23:54', 'com.jsoil.edb.product.vo.Product', '0', '602', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_2 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D257 MicroMessenger/6.2 NetType/3G+ Language/zh_CN', '106.60.172.89', 'tel');
INSERT INTO `s_counter` VALUES ('2947', '2015-06-16 19:46:57', 'com.jsoil.edb.product.vo.Product', '0', '582', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.120 Safari/537.36', '183.224.92.202', 'view');
INSERT INTO `s_counter` VALUES ('2948', '2015-06-16 19:47:01', 'com.jsoil.edb.product.vo.Product', '0', '582', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.120 Safari/537.36', '183.224.92.202', 'tel');
INSERT INTO `s_counter` VALUES ('2949', '2015-06-16 19:47:04', 'com.jsoil.edb.product.vo.Product', '0', '582', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.120 Safari/537.36', '183.224.92.202', 'tel');
INSERT INTO `s_counter` VALUES ('2950', '2015-06-16 19:47:09', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '184', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.120 Safari/537.36', '183.224.92.202', 'view');
INSERT INTO `s_counter` VALUES ('2951', '2015-06-16 19:48:17', 'com.jsoil.edb.product.vo.Product', '221', '550', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.120 Safari/537.36', '183.224.92.202', 'view');
INSERT INTO `s_counter` VALUES ('2952', '2015-06-16 19:48:21', 'com.jsoil.edb.product.vo.Product', '221', '562', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.120 Safari/537.36', '183.224.92.202', 'view');
INSERT INTO `s_counter` VALUES ('2953', '2015-06-16 19:57:12', 'com.jsoil.edb.product.vo.Product', '221', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'clickAD');
INSERT INTO `s_counter` VALUES ('2961', '2015-06-16 20:15:18', 'com.jsoil.edb.product.vo.Product', '221', '582', 'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-CN; HTC M8Sw Build/LRX22G) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/10.2.1.550 U3/0.8.0 Mobile Safari/534.30', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2962', '2015-06-16 20:15:42', 'com.jsoil.edb.product.vo.Product', '221', '605', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345d Safari/600.1.4', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2963', '2015-06-16 20:26:24', 'com.jsoil.edb.product.vo.Product', '221', '606', 'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-CN; HTC M8Sw Build/LRX22G) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/10.2.1.550 U3/0.8.0 Mobile Safari/534.30', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2964', '2015-06-16 20:27:47', 'com.jsoil.edb.product.vo.Product', '0', '582', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2965', '2015-06-16 20:28:33', 'com.jsoil.edb.product.vo.Product', '0', '603', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2966', '2015-06-16 20:29:44', 'com.jsoil.edb.product.vo.Product', '0', '606', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2967', '2015-06-16 20:29:50', 'com.jsoil.edb.product.vo.Product', '0', '564', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2968', '2015-06-16 20:30:16', 'com.jsoil.edb.product.vo.Product', '0', '606', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2969', '2015-06-16 20:30:26', 'com.jsoil.edb.product.vo.Product', '0', '610', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2970', '2015-06-16 20:31:24', 'com.jsoil.edb.product.vo.Product', '221', '603', 'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-CN; HTC M8Sw Build/LRX22G) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/10.2.1.550 U3/0.8.0 Mobile Safari/534.30', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2971', '2015-06-16 20:39:26', 'com.jsoil.edb.product.vo.Product', '0', '553', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2972', '2015-06-16 20:40:44', 'com.jsoil.edb.product.vo.Product', '0', '530', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2973', '2015-06-16 20:40:47', 'com.jsoil.edb.product.vo.Product', '221', '521', 'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-CN; HTC M8Sw Build/LRX22G) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/10.2.1.550 U3/0.8.0 Mobile Safari/534.30', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2974', '2015-06-16 20:40:49', 'com.jsoil.edb.product.vo.Product', '0', '530', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2975', '2015-06-16 20:40:55', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '183', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2976', '2015-06-16 20:40:55', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '183', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) (Engine, like URL) Mobile/12B440 MicroMessenger/6.0.1 NetType/3G+', '180.153.206.13', 'view');
INSERT INTO `s_counter` VALUES ('2977', '2015-06-16 20:41:09', 'com.jsoil.edb.product.vo.Product', '0', '609', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2978', '2015-06-16 20:41:34', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '183', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2979', '2015-06-16 20:41:35', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '183', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2980', '2015-06-16 20:42:01', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '183', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2981', '2015-06-16 20:42:17', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '183', 'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-CN; HTC M8Sw Build/LRX22G) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/10.2.1.550 U3/0.8.0 Mobile Safari/534.30', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2982', '2015-06-16 20:42:37', 'com.jsoil.edb.product.vo.Product', '221', '603', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2983', '2015-06-16 20:43:02', 'com.jsoil.edb.product.vo.Product', '221', '603', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2984', '2015-06-16 20:44:31', 'com.jsoil.edb.product.vo.Product', '221', '527', 'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-CN; HTC M8Sw Build/LRX22G) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/10.2.1.550 U3/0.8.0 Mobile Safari/534.30', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('2985', '2015-06-16 20:54:27', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '183', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '101.226.66.192', 'view');
INSERT INTO `s_counter` VALUES ('3001', '2015-06-17 00:19:19', 'com.jsoil.edb.product.vo.Product', '0', '603', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '116.53.195.205', 'view');
INSERT INTO `s_counter` VALUES ('3002', '2015-06-17 00:19:26', 'com.jsoil.edb.product.vo.Product', '0', '603', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '116.53.195.205', 'view');
INSERT INTO `s_counter` VALUES ('3003', '2015-06-17 00:40:23', 'com.jsoil.edb.product.vo.Product', '221', '606', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '116.53.195.205', 'view');
INSERT INTO `s_counter` VALUES ('3016', '2015-06-17 09:16:25', 'com.jsoil.edb.product.vo.Product', '0', '610', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/3G+ Language/zh_CN', '117.136.85.190', 'view');
INSERT INTO `s_counter` VALUES ('3020', '2015-06-17 09:24:58', 'com.jsoil.edb.product.vo.Product', '0', '602', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2 NetType/2G Language/zh_CN', '183.224.6.172', 'view');
INSERT INTO `s_counter` VALUES ('3021', '2015-06-17 09:24:58', 'com.jsoil.edb.product.vo.Product', '0', '602', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) (Engine, like URL) Mobile/12B440 MicroMessenger/6.0.1 NetType/3G+', '180.153.206.13', 'view');
INSERT INTO `s_counter` VALUES ('3022', '2015-06-17 09:24:59', 'com.jsoil.edb.product.vo.Product', '0', '602', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2 NetType/2G Language/zh_CN', '183.224.6.172', 'view');
INSERT INTO `s_counter` VALUES ('3024', '2015-06-17 09:26:05', 'com.jsoil.edb.product.vo.Product', '0', '602', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2 NetType/2G Language/zh_CN', '183.224.6.172', 'view');
INSERT INTO `s_counter` VALUES ('3025', '2015-06-17 09:26:26', 'com.jsoil.edb.product.vo.Product', '0', '602', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2 NetType/2G Language/zh_CN', '183.224.6.172', 'view');
INSERT INTO `s_counter` VALUES ('3030', '2015-06-17 09:38:24', 'com.jsoil.edb.product.vo.Product', '0', '602', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '101.226.33.206', 'view');
INSERT INTO `s_counter` VALUES ('3031', '2015-06-17 09:52:38', 'com.jsoil.edb.product.vo.Product', '0', '603', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2 NetType/3G+ Language/zh_CN', '117.136.85.190', 'view');
INSERT INTO `s_counter` VALUES ('3037', '2015-06-17 11:48:06', 'com.jsoil.edb.product.vo.Product', '221', '610', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X; en-us) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile/11A465 Safari/9537.53', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('3038', '2015-06-17 11:48:16', 'com.jsoil.edb.product.vo.Product', '221', '582', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X; en-us) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile/11A465 Safari/9537.53', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('3039', '2015-06-17 17:32:20', 'com.jsoil.edb.product.vo.Product', '221', '582', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('3044', '2015-06-17 19:06:44', 'com.jsoil.edb.product.vo.Product', '221', '564', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2 NetType/2G Language/zh_CN', '117.136.80.88', 'view');
INSERT INTO `s_counter` VALUES ('3045', '2015-06-17 20:17:34', 'com.jsoil.edb.product.vo.Product', '221', '502', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.0.2 NetType/3G+', '117.136.80.75', 'view');
INSERT INTO `s_counter` VALUES ('3046', '2015-06-17 20:24:35', 'com.jsoil.edb.product.vo.Product', '0', '606', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2 NetType/3G+ Language/zh_CN', '117.136.80.88', 'view');
INSERT INTO `s_counter` VALUES ('3047', '2015-06-17 20:25:55', 'com.jsoil.edb.product.vo.Product', '0', '610', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2 NetType/3G+ Language/zh_CN', '117.136.80.88', 'view');
INSERT INTO `s_counter` VALUES ('3048', '2015-06-17 23:26:53', 'com.jsoil.edb.product.vo.Product', '221', '553', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2 NetType/3G+ Language/zh_CN', '117.136.80.88', 'view');
INSERT INTO `s_counter` VALUES ('3049', '2015-06-18 08:20:43', 'com.jsoil.edb.product.vo.Product', '221', '602', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.0.2 NetType/3G+', '117.136.80.17', 'view');
INSERT INTO `s_counter` VALUES ('3052', '2015-06-18 09:26:43', 'com.jsoil.edb.product.vo.Product', '221', '603', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2 NetType/3G+ Language/zh_CN', '117.136.80.88', 'view');
INSERT INTO `s_counter` VALUES ('3054', '2015-06-18 12:19:33', 'com.jsoil.edb.product.vo.Product', '0', '508', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN', '183.224.93.87', 'view');
INSERT INTO `s_counter` VALUES ('3064', '2015-06-18 22:13:19', 'com.jsoil.edb.product.vo.Product', '0', '603', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) (Engine, like URL) Mobile/12B440 MicroMessenger/6.0.1 NetType/3G+', '180.153.201.212', 'view');
INSERT INTO `s_counter` VALUES ('3071', '2015-06-19 08:44:22', 'com.jsoil.edb.product.vo.Product', '0', '582', 'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-CN; HTC M8Sw Build/LRX22G) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/10.2.1.550 U3/0.8.0 Mobile Safari/534.30', '58.215.136.61', 'view');
INSERT INTO `s_counter` VALUES ('3072', '2015-06-19 08:44:26', 'com.jsoil.edb.product.vo.Product', '0', '582', 'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-CN; HTC M8Sw Build/LRX22G) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/10.2.1.550 U3/0.8.0 Mobile Safari/534.30', '58.215.136.60', 'view');
INSERT INTO `s_counter` VALUES ('3073', '2015-06-19 08:44:45', 'com.jsoil.edb.product.vo.Product', '0', '582', 'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-CN; HTC M8Sw Build/LRX22G) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/10.2.1.550 U3/0.8.0 Mobile Safari/534.30', '58.215.136.86', 'view');
INSERT INTO `s_counter` VALUES ('3075', '2015-06-19 12:40:12', 'com.jsoil.edb.product.vo.Product', '0', '582', 'Mozilla/5.0 (Linux; U; Android 5.0.2; zh-CN; HTC M8Sw Build/LRX22G) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/10.2.1.550 U3/0.8.0 Mobile Safari/534.30', '58.215.136.65', 'view');
INSERT INTO `s_counter` VALUES ('3077', '2015-06-20 19:27:46', 'com.jsoil.edb.product.vo.Product', '221', '553', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.0.2 NetType/3G+', '117.136.80.42', 'view');
INSERT INTO `s_counter` VALUES ('3082', '2015-06-23 12:03:09', 'com.jsoil.edb.product.vo.Product', '0', '556', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('3101', '2015-06-23 21:39:36', 'com.jsoil.edb.product.vo.Product', '0', '553', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN', '116.52.182.114', 'view');
INSERT INTO `s_counter` VALUES ('3102', '2015-06-23 21:39:49', 'com.jsoil.edb.product.vo.Product', '0', '603', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN', '116.52.182.114', 'view');
INSERT INTO `s_counter` VALUES ('3103', '2015-06-23 22:13:52', 'com.jsoil.edb.product.vo.Product', '221', '508', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN', '116.52.182.114', 'view');
INSERT INTO `s_counter` VALUES ('3104', '2015-06-23 22:13:58', 'com.jsoil.edb.product.vo.Product', '221', '501', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN', '116.52.182.114', 'view');
INSERT INTO `s_counter` VALUES ('3106', '2015-06-23 23:07:03', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '184', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B411 MicroMessenger/6.2 NetType/3G+ Language/zh_CN', '180.130.2.214', 'view');
INSERT INTO `s_counter` VALUES ('3107', '2015-06-23 23:11:09', 'com.jsoil.edb.product.vo.Product', '221', '544', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B411 MicroMessenger/6.2 NetType/3G+ Language/zh_CN', '180.130.2.214', 'view');
INSERT INTO `s_counter` VALUES ('3108', '2015-06-23 23:13:15', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '184', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B411 MicroMessenger/6.2 NetType/3G+ Language/zh_CN', '180.130.2.214', 'view');
INSERT INTO `s_counter` VALUES ('3109', '2015-06-23 23:13:29', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '181', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B411 MicroMessenger/6.2 NetType/3G+ Language/zh_CN', '180.130.2.214', 'view');
INSERT INTO `s_counter` VALUES ('3111', '2015-06-25 15:03:34', 'com.jsoil.edb.product.vo.Product', '0', '610', 'Mozilla/5.0 (iPod; CPU iPhone OS 6_1_6 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Mobile/10B500 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('3112', '2015-06-25 15:20:21', 'com.jsoil.edb.product.vo.Product', '0', '603', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN', '183.224.93.50', 'view');
INSERT INTO `s_counter` VALUES ('3113', '2015-06-25 17:18:45', 'com.jsoil.edb.product.vo.Product', '0', '610', 'Mozilla/5.0 (iPhone; CPU iPhone OS 6_1_3 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Mobile/10B329 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('3114', '2015-06-25 17:24:42', 'com.jsoil.edb.product.vo.Product', '0', '610', 'Mozilla/5.0 (iPhone; CPU iPhone OS 6_1_3 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Mobile/10B329 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('3115', '2015-06-25 17:44:19', 'com.jsoil.edb.product.vo.Product', '0', '553', 'Mozilla/5.0 (iPhone; CPU iPhone OS 6_1_3 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Mobile/10B329 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('3116', '2015-06-25 17:45:02', 'com.jsoil.edb.product.vo.Product', '0', '528', 'Mozilla/5.0 (iPhone; CPU iPhone OS 6_1_3 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Mobile/10B329 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('3117', '2015-06-26 18:44:23', 'com.jsoil.edb.product.vo.Product', '221', '541', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.0.2 NetType/3G+', '117.136.80.200', 'view');
INSERT INTO `s_counter` VALUES ('3125', '2015-06-27 20:17:35', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '201', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.89 Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('3126', '2015-06-27 20:17:37', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '184', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.89 Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('3127', '2015-06-27 20:17:39', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '182', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.89 Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('3128', '2015-06-27 20:17:41', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '183', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.89 Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('3129', '2015-06-27 20:25:50', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '201', 'Mozilla/5.0 (iPod; CPU iPhone OS 6_1_6 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Mobile/10B500 MicroMessenger/6.2 NetType/WIFI Language/zh_CN', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('3130', '2015-06-27 20:32:33', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '201', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.89 Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('3131', '2015-06-27 20:32:35', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '184', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.89 Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('3132', '2015-06-27 20:32:41', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '183', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.89 Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('3133', '2015-06-27 20:32:43', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '181', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.89 Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('3134', '2015-06-27 20:32:47', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '182', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.89 Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('3135', '2015-06-27 20:45:46', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '184', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.89 Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('3136', '2015-06-27 20:45:50', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '201', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.89 Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('3137', '2015-06-27 20:45:53', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '183', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.89 Safari/537.36', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('3143', '2015-06-27 22:00:35', 'com.jsoil.edb.product.vo.Product', '221', '603', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN', '116.52.95.122', 'view');
INSERT INTO `s_counter` VALUES ('3144', '2015-06-27 22:01:13', 'com.jsoil.edb.product.vo.Product', '221', '501', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN', '116.52.95.122', 'view');
INSERT INTO `s_counter` VALUES ('3145', '2015-06-27 22:04:07', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '203', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN', '116.52.95.122', 'view');
INSERT INTO `s_counter` VALUES ('3146', '2015-06-27 22:04:36', 'com.jsoil.edb.product.vo.Product', '221', '603', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN', '116.52.95.122', 'view');
INSERT INTO `s_counter` VALUES ('3183', '2015-06-29 14:17:42', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '204', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2.2 NetType/3G+ Language/zh_CN', '117.136.85.155', 'view');
INSERT INTO `s_counter` VALUES ('3184', '2015-06-29 14:18:03', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '203', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2.2 NetType/3G+ Language/zh_CN', '117.136.85.155', 'view');
INSERT INTO `s_counter` VALUES ('3185', '2015-06-29 14:20:09', 'com.jsoil.edb.product.vo.Product', '221', '610', 'Mozilla/5.0 (Linux; Android 4.4.4; Motorola Moto X - 4.4.4 - API 19 - 720x1280 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36', '117.136.85.197', 'view');
INSERT INTO `s_counter` VALUES ('3186', '2015-06-29 14:26:40', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '204', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.2.2 NetType/3G+ Language/zh_CN', '117.136.85.149', 'view');
INSERT INTO `s_counter` VALUES ('3187', '2015-06-29 14:28:22', 'com.jsoil.edb.product.vo.Product', '221', '501', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.2.2 NetType/3G+ Language/zh_CN', '117.136.85.149', 'view');
INSERT INTO `s_counter` VALUES ('3188', '2015-06-29 14:28:39', 'com.jsoil.edb.product.vo.Product', '221', '602', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.2.2 NetType/3G+ Language/zh_CN', '117.136.85.149', 'view');
INSERT INTO `s_counter` VALUES ('3189', '2015-06-29 14:54:12', 'com.jsoil.edb.product.vo.Product', '221', '564', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN', '116.53.252.78', 'view');
INSERT INTO `s_counter` VALUES ('3190', '2015-06-29 14:54:23', 'com.jsoil.edb.product.vo.Product', '221', '605', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN', '116.53.252.78', 'view');
INSERT INTO `s_counter` VALUES ('3191', '2015-06-29 14:54:42', 'com.jsoil.edb.product.vo.Product', '221', '564', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2.2 NetType/3G+ Language/zh_CN', '117.136.85.197', 'view');
INSERT INTO `s_counter` VALUES ('3192', '2015-06-29 14:54:45', 'com.jsoil.edb.product.vo.Product', '221', '564', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.2.2 NetType/3G+ Language/zh_CN', '117.136.85.149', 'view');
INSERT INTO `s_counter` VALUES ('3193', '2015-06-29 14:56:10', 'com.jsoil.edb.product.vo.Product', '221', '564', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2.2 NetType/3G+ Language/zh_CN', '117.136.85.155', 'view');
INSERT INTO `s_counter` VALUES ('3194', '2015-06-29 14:56:10', 'com.jsoil.edb.product.vo.Product', '0', '564', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '180.153.214.197', 'view');
INSERT INTO `s_counter` VALUES ('3195', '2015-06-29 14:56:10', 'com.jsoil.edb.product.vo.Product', '0', '564', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '101.226.66.191', 'view');
INSERT INTO `s_counter` VALUES ('3196', '2015-06-29 14:57:57', 'com.jsoil.edb.product.vo.Product', '221', '564', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2.2 NetType/3G+ Language/zh_CN', '117.136.85.155', 'view');
INSERT INTO `s_counter` VALUES ('3197', '2015-06-29 14:58:05', 'com.jsoil.edb.product.vo.Product', '221', '609', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN', '116.53.252.78', 'view');
INSERT INTO `s_counter` VALUES ('3198', '2015-06-29 14:58:13', 'com.jsoil.edb.product.vo.Product', '221', '609', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2.2 NetType/3G+ Language/zh_CN', '117.136.85.197', 'view');
INSERT INTO `s_counter` VALUES ('3199', '2015-06-29 15:06:20', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '204', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.2.2 NetType/3G+ Language/zh_CN', '117.136.85.149', 'view');
INSERT INTO `s_counter` VALUES ('3204', '2015-06-29 16:31:14', 'com.jsoil.edb.product.vo.Product', '221', '602', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN', '116.53.252.78', 'view');
INSERT INTO `s_counter` VALUES ('3205', '2015-06-29 16:50:49', 'com.jsoil.edb.product.vo.Product', '221', '602', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN', '116.53.252.78', 'view');
INSERT INTO `s_counter` VALUES ('3206', '2015-06-29 16:57:37', 'com.jsoil.edb.product.vo.Product', '221', '602', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN', '116.53.252.78', 'view');
INSERT INTO `s_counter` VALUES ('3207', '2015-06-29 17:00:49', 'com.jsoil.edb.product.vo.Product', '0', '602', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_2 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D257 MicroMessenger/6.2.2 NetType/3G+ Language/zh_CN', '106.60.172.180', 'view');
INSERT INTO `s_counter` VALUES ('3208', '2015-06-30 14:34:29', 'com.jsoil.edb.product.vo.Product', '0', '602', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2.2 NetType/3G+ Language/zh_CN', '117.136.85.213', 'view');
INSERT INTO `s_counter` VALUES ('3209', '2015-06-30 14:37:58', 'com.jsoil.edb.product.vo.Product', '0', '602', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2.2 NetType/3G+ Language/zh_CN', '117.136.85.213', 'view');
INSERT INTO `s_counter` VALUES ('3210', '2015-06-30 14:38:20', 'com.jsoil.edb.product.vo.Product', '0', '602', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2.2 NetType/3G+ Language/zh_CN', '117.136.85.213', 'view');
INSERT INTO `s_counter` VALUES ('3212', '2015-06-30 14:38:44', 'com.jsoil.edb.product.vo.Product', '0', '602', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2.2 NetType/3G+ Language/zh_CN', '117.136.85.213', 'view');
INSERT INTO `s_counter` VALUES ('3215', '2015-06-30 16:08:49', 'com.jsoil.edb.product.vo.Product', '221', '602', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN', '61.166.163.153', 'view');
INSERT INTO `s_counter` VALUES ('3216', '2015-06-30 16:09:41', 'com.jsoil.edb.product.vo.Product', '221', '602', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN', '61.166.163.153', 'view');
INSERT INTO `s_counter` VALUES ('3217', '2015-06-30 16:17:08', 'com.jsoil.edb.product.vo.Product', '221', '602', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN', '61.166.163.153', 'view');
INSERT INTO `s_counter` VALUES ('3218', '2015-06-30 16:27:28', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '203', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN', '61.166.163.153', 'view');
INSERT INTO `s_counter` VALUES ('3219', '2015-06-30 16:27:53', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '204', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN', '61.166.163.153', 'view');
INSERT INTO `s_counter` VALUES ('3222', '2015-07-02 12:22:01', 'com.jsoil.edb.product.vo.Product', '0', '510', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN', '117.136.85.213', 'view');
INSERT INTO `s_counter` VALUES ('3223', '2015-07-02 12:22:36', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '202', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN', '117.136.85.213', 'view');
INSERT INTO `s_counter` VALUES ('3226', '2015-07-02 14:01:20', 'com.jsoil.edb.product.vo.Product', '0', '501', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B440 MicroMessenger/6.0.2 NetType/WIFI', '14.204.113.21', 'view');
INSERT INTO `s_counter` VALUES ('3227', '2015-07-02 16:04:43', 'com.jsoil.edb.product.vo.Product', '0', '539', 'Mozilla/5.0 (iPhone; CPU iPhone OS 6_0 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Mobile/10A403 MicroMessenger/6.0 NetType/NONWIFI', '106.60.173.91', 'view');
INSERT INTO `s_counter` VALUES ('3240', '2015-07-02 16:34:33', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '203', 'Mozilla/5.0 (Linux; U; Android 4.4.2; zh-cn; GT-I9500 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 MQQBrowser/5.0 QQ-Manager Mobile Safari/537.36', '180.153.163.210', 'view');
INSERT INTO `s_counter` VALUES ('3241', '2015-07-02 16:34:33', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '0', '203', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) (Engine, like URL) Mobile/12B440 MicroMessenger/6.0.1 NetType/3G+', '180.153.206.13', 'view');
INSERT INTO `s_counter` VALUES ('3243', '2015-07-02 17:21:21', 'com.jsoil.edb.product.vo.Product', '402', '609', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN', '183.224.93.79', 'view');
INSERT INTO `s_counter` VALUES ('3245', '2015-07-02 19:16:08', 'com.jsoil.edb.product.vo.Product', '0', '538', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B411 MicroMessenger/6.2.2 NetType/3G+ Language/zh_CN', '119.62.124.64', 'view');
INSERT INTO `s_counter` VALUES ('3246', '2015-07-02 19:18:01', 'com.jsoil.edb.product.vo.Product', '0', '538', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B411 MicroMessenger/6.2.2 NetType/3G+ Language/zh_CN', '119.62.124.64', 'view');
INSERT INTO `s_counter` VALUES ('3248', '2015-07-03 11:10:28', 'com.jsoil.edb.product.vo.Product', '402', '606', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2.2 NetType/3G+ Language/zh_CN', '117.136.85.182', 'view');
INSERT INTO `s_counter` VALUES ('3249', '2015-07-03 11:15:24', 'com.jsoil.edb.product.vo.Product', '221', '550', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2.2 NetType/3G+ Language/zh_CN', '117.136.85.197', 'view');
INSERT INTO `s_counter` VALUES ('3250', '2015-07-03 11:15:40', 'com.jsoil.edb.product.vo.Product', '221', '553', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2.2 NetType/3G+ Language/zh_CN', '117.136.85.197', 'view');
INSERT INTO `s_counter` VALUES ('3251', '2015-07-03 11:16:00', 'com.jsoil.edb.product.vo.Product', '221', '553', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2.2 NetType/3G+ Language/zh_CN', '117.136.85.197', 'view');
INSERT INTO `s_counter` VALUES ('3252', '2015-07-03 11:17:07', 'com.jsoil.edb.product.vo.Product', '221', '550', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2.2 NetType/3G+ Language/zh_CN', '117.136.85.197', 'view');
INSERT INTO `s_counter` VALUES ('3254', '2015-07-03 11:34:20', 'com.jsoil.edb.product.vo.Product', '221', '562', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2.2 NetType/3G+ Language/zh_CN', '117.136.85.197', 'view');
INSERT INTO `s_counter` VALUES ('3256', '2015-07-03 20:56:37', 'com.jsoil.edb.product.vo.Product', '0', '508', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2.2 NetType/3G+ Language/zh_CN', '117.136.85.240', 'view');
INSERT INTO `s_counter` VALUES ('3257', '2015-07-03 20:56:41', 'com.jsoil.edb.product.vo.Product', '0', '501', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 MicroMessenger/6.2.2 NetType/3G+ Language/zh_CN', '117.136.85.240', 'view');
INSERT INTO `s_counter` VALUES ('3263', '2015-07-08 11:37:06', 'com.jsoil.edb.product.vo.Product', '0', '550', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12H143 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('3264', '2015-07-08 11:41:47', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '202', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12H143 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('3265', '2015-07-08 11:42:37', 'com.jsoil.edb.product.vo.Product', '221', '553', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12H143 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN', '112.112.11.107', 'view');
INSERT INTO `s_counter` VALUES ('3266', '2015-07-08 19:22:56', 'com.jsoil.edb.product.vo.Product', '221', '602', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12H143 MicroMessenger/6.2.2 NetType/3G+ Language/zh_CN', '117.136.85.202', 'view');
INSERT INTO `s_counter` VALUES ('3281', '2015-07-09 00:40:06', 'com.jsoil.edb.product.vo.Product', '221', '564', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN', '218.62.244.204', 'view');
INSERT INTO `s_counter` VALUES ('3285', '2015-07-10 15:06:12', 'com.jsoil.edb.product.vo.Product', '0', '602', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN', '183.224.93.63', 'view');
INSERT INTO `s_counter` VALUES ('3286', '2015-07-10 15:10:35', 'com.jsoil.edb.product.vo.Product', '0', '602', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN', '183.224.93.63', 'view');
INSERT INTO `s_counter` VALUES ('3289', '2015-07-10 15:18:24', 'com.jsoil.edb.product.vo.Product', '0', '602', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN', '183.224.93.63', 'view');
INSERT INTO `s_counter` VALUES ('3290', '2015-07-10 15:18:28', 'com.jsoil.edb.product.vo.Product', '0', '621', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN', '183.224.93.63', 'view');
INSERT INTO `s_counter` VALUES ('3291', '2015-07-10 15:20:24', 'com.jsoil.edb.product.vo.Product', '0', '621', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN', '183.224.93.63', 'view');
INSERT INTO `s_counter` VALUES ('3293', '2015-07-10 15:20:50', 'com.jsoil.edb.product.vo.Product', '0', '621', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN', '183.224.93.63', 'view');
INSERT INTO `s_counter` VALUES ('3294', '2015-07-10 15:21:10', 'com.jsoil.edb.product.vo.Product', '0', '621', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D201 MicroMessenger/6.2.2 NetType/WIFI Language/zh_CN', '183.224.93.63', 'view');
INSERT INTO `s_counter` VALUES ('3301', '2015-07-15 17:47:35', 'com.jsoil.edb.product.vo.Product', '221', '508', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3302', '2015-07-15 17:48:31', 'com.jsoil.edb.promotionProduct.vo.PromotionProduct', '221', '204', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3303', '2015-07-15 17:48:51', 'com.jsoil.edb.product.vo.Product', '221', '554', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3304', '2015-07-15 17:51:59', 'com.jsoil.edb.product.vo.Product', '221', '564', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3321', '2015-07-16 15:50:10', 'com.jsoil.edb.product.vo.Product', '0', '641', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3322', '2015-07-16 15:58:26', 'com.jsoil.edb.product.vo.Product', '221', '662', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3323', '2015-07-16 16:38:08', 'com.jsoil.edb.product.vo.Product', '221', '662', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3341', '2015-07-16 17:49:00', 'com.jsoil.edb.product.vo.Product', '424', '662', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3342', '2015-07-16 17:49:54', 'com.jsoil.edb.product.vo.Product', '424', '662', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3343', '2015-07-16 17:53:05', 'com.jsoil.edb.product.vo.Product', '424', '662', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3344', '2015-07-16 17:54:40', 'com.jsoil.edb.product.vo.Product', '424', '662', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3345', '2015-07-16 17:56:15', 'com.jsoil.edb.product.vo.Product', '424', '662', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3346', '2015-07-16 17:57:23', 'com.jsoil.edb.product.vo.Product', '424', '662', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3347', '2015-07-16 18:00:41', 'com.jsoil.edb.product.vo.Product', '424', '662', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3361', '2015-07-22 16:36:50', 'com.jsoil.edb.product.vo.Product', '221', '550', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3381', '2015-07-23 16:46:47', 'com.jsoil.edb.product.vo.Product', '221', '661', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3382', '2015-07-23 17:08:47', 'com.jsoil.edb.product.vo.Product', '221', '553', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3383', '2015-07-23 17:10:19', 'com.jsoil.edb.product.vo.Product', '221', '661', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3384', '2015-07-23 17:14:55', 'com.jsoil.edb.product.vo.Product', '221', '661', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3385', '2015-07-23 17:17:24', 'com.jsoil.edb.product.vo.Product', '221', '505', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3386', '2015-07-23 17:18:25', 'com.jsoil.edb.product.vo.Product', '221', '661', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3387', '2015-07-23 17:18:48', 'com.jsoil.edb.product.vo.Product', '221', '505', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3401', '2015-07-23 17:42:33', 'com.jsoil.edb.product.vo.Product', '221', '661', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3402', '2015-07-23 17:42:45', 'com.jsoil.edb.product.vo.Product', '221', '505', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3421', '2015-07-23 17:44:41', 'com.jsoil.edb.product.vo.Product', '221', '505', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3441', '2015-07-23 17:47:29', 'com.jsoil.edb.product.vo.Product', '221', '501', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3461', '2015-07-24 10:04:42', 'com.jsoil.edb.product.vo.Product', '221', '550', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3462', '2015-07-24 10:04:57', 'com.jsoil.edb.product.vo.Product', '221', '505', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3481', '2015-07-24 10:09:09', 'com.jsoil.edb.product.vo.Product', '221', '501', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3501', '2015-07-24 10:12:56', 'com.jsoil.edb.product.vo.Product', '221', '553', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3521', '2015-07-24 10:14:52', 'com.jsoil.edb.product.vo.Product', '221', '504', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3541', '2015-07-24 10:16:18', 'com.jsoil.edb.product.vo.Product', '221', '553', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3561', '2015-07-27 16:19:33', 'com.jsoil.edb.product.vo.Product', '0', '661', 'Mozilla/5.0 & #40;iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us& #41; AppleWebKit/533.17.9 & #40;KHTML, like Gecko& #41; Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3581', '2015-07-28 16:20:07', 'com.jsoil.edb.product.vo.Product', '0', '553', 'Mozilla/5.0 & #40;Windows NT 6.1; WOW64& #41; AppleWebKit/537.36 & #40;KHTML, like Gecko& #41; Chrome/43.0.2357.65 Safari/537.36', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3582', '2015-07-28 16:20:52', 'com.jsoil.edb.product.vo.Product', '0', '553', 'Mozilla/5.0 & #40;Windows NT 6.1; WOW64& #41; AppleWebKit/537.36 & #40;KHTML, like Gecko& #41; Chrome/43.0.2357.65 Safari/537.36', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3583', '2015-07-28 16:21:56', 'com.jsoil.edb.product.vo.Product', '0', '553', 'Mozilla/5.0 & #40;Windows NT 6.1; WOW64& #41; AppleWebKit/537.36 & #40;KHTML, like Gecko& #41; Chrome/43.0.2357.65 Safari/537.36', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3584', '2015-07-28 16:34:20', 'com.jsoil.edb.product.vo.Product', '0', '553', 'Mozilla/5.0 & #40;Windows NT 6.1; WOW64& #41; AppleWebKit/537.36 & #40;KHTML, like Gecko& #41; Chrome/43.0.2357.65 Safari/537.36', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3585', '2015-07-28 16:37:44', 'com.jsoil.edb.product.vo.Product', '221', '503', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.65 Safari/537.36', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3586', '2015-07-28 16:37:55', 'com.jsoil.edb.product.vo.Product', '221', '564', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.65 Safari/537.36', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3601', '2015-07-28 16:53:37', 'com.jsoil.edb.product.vo.Product', '221', '501', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.65 Safari/537.36', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3602', '2015-07-28 16:53:46', 'com.jsoil.edb.product.vo.Product', '221', '564', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.65 Safari/537.36', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3621', '2015-07-29 17:05:15', 'com.jsoil.edb.product.vo.Product', '221', '553', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3622', '2015-07-29 17:06:43', 'com.jsoil.edb.product.vo.Product', '424', '553', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3661', '2015-08-03 16:29:05', 'com.jsoil.edb.product.vo.Product', '221', '501', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3662', '2015-08-03 16:29:21', 'com.jsoil.edb.product.vo.Product', '221', '503', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3663', '2015-08-03 16:29:39', 'com.jsoil.edb.product.vo.Product', '221', '503', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3664', '2015-08-03 16:31:22', 'com.jsoil.edb.product.vo.Product', '221', '503', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3681', '2015-08-03 17:02:22', 'com.jsoil.edb.product.vo.Product', '0', '516', 'Mozilla/5.0 & #40;iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us& #41; AppleWebKit/533.17.9 & #40;KHTML, like Gecko& #41; Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3682', '2015-08-03 17:02:37', 'com.jsoil.edb.product.vo.Product', '221', '511', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3701', '2015-08-03 17:04:50', 'com.jsoil.edb.product.vo.Product', '221', '511', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3702', '2015-08-03 17:04:55', 'com.jsoil.edb.product.vo.Product', '221', '501', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '0:0:0:0:0:0:0:1', 'view');
INSERT INTO `s_counter` VALUES ('3721', '2015-08-04 11:07:47', 'com.jsoil.edb.product.vo.Product', '221', '553', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '0:0:0:0:0:0:0:1', 'view');

-- ----------------------------
-- Table structure for s_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `s_dictionary`;
CREATE TABLE `s_dictionary` (
  `id` bigint(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `demo` varchar(500) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL COMMENT '字典编码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_dictionary
-- ----------------------------
INSERT INTO `s_dictionary` VALUES ('1', '订单来源', '为确保统计的一致性，订单来源添加后一但有数据产生，将不允许删除，请谨慎添加！', 'orderOrigin');
INSERT INTO `s_dictionary` VALUES ('2', '支付方式', '为确保统计财务的一致性，支付方法添加后一但有数据产生，将不允许删除，请谨慎添加！', 'payType');
INSERT INTO `s_dictionary` VALUES ('41', '支付宝', '', 'zhifubao');

-- ----------------------------
-- Table structure for s_dictionary_option
-- ----------------------------
DROP TABLE IF EXISTS `s_dictionary_option`;
CREATE TABLE `s_dictionary_option` (
  `id` bigint(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `code` varchar(50) DEFAULT NULL COMMENT '编码',
  `orderNo` int(11) DEFAULT NULL COMMENT '排序号',
  `demo` varchar(500) DEFAULT NULL COMMENT '说明',
  `logo` bigint(50) DEFAULT NULL COMMENT 'logo图片',
  `color` varchar(50) DEFAULT NULL COMMENT '颜色，用于显示',
  `dictionaryId` bigint(50) DEFAULT NULL,
  `dictionaryCode` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_dictionary_option
-- ----------------------------
INSERT INTO `s_dictionary_option` VALUES ('1', '现金支付', 'cash', '999', '', '0', '', '2', 'payType');
INSERT INTO `s_dictionary_option` VALUES ('2', '微信支付', 'wxpay', '888', '', '0', '', '2', 'payType');
INSERT INTO `s_dictionary_option` VALUES ('3', '自来客', 'self', '999', '', '0', '', '1', 'orderOrigin');
INSERT INTO `s_dictionary_option` VALUES ('4', '流浪狗', 'freego', '900', '', '0', '', '1', 'orderOrigin');
INSERT INTO `s_dictionary_option` VALUES ('5', '熟客及推荐', 'familiar', '890', '', '0', '', '1', 'orderOrigin');
INSERT INTO `s_dictionary_option` VALUES ('6', '淘宝', 'taobao', '880', '', '0', '', '1', 'orderOrigin');
INSERT INTO `s_dictionary_option` VALUES ('7', '携程', 'ctrip', '870', '', '0', '', '1', 'orderOrigin');
INSERT INTO `s_dictionary_option` VALUES ('8', '艺龙', 'elong', '860', '', '0', '', '1', 'orderOrigin');
INSERT INTO `s_dictionary_option` VALUES ('9', '去哪儿', 'qunar', '850', '', '0', '', '1', 'orderOrigin');
INSERT INTO `s_dictionary_option` VALUES ('10', '美团', 'meituan', '840', '', '0', '', '1', 'orderOrigin');
INSERT INTO `s_dictionary_option` VALUES ('41', '2', '1', '2', '', '0', '2', '41', 'zhifubao');

-- ----------------------------
-- Table structure for s_group
-- ----------------------------
DROP TABLE IF EXISTS `s_group`;
CREATE TABLE `s_group` (
  `id` bigint(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `demo` varchar(500) DEFAULT NULL,
  `welcomeUrl` varchar(500) DEFAULT NULL COMMENT '登录后的欢迎地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='S_Group';

-- ----------------------------
-- Records of s_group
-- ----------------------------
INSERT INTO `s_group` VALUES ('100', '超级系统管理员', '超级系统管理员，可以删除所有数据！！！', '/statistic/statisticList.do');
INSERT INTO `s_group` VALUES ('110', '商盟管理员', '商盟管理员', '/statistic/statisticList.do');
INSERT INTO `s_group` VALUES ('202', '商户管理员', '', '');
INSERT INTO `s_group` VALUES ('203', '门店管理员', '', '/statistic/statisticList.do');

-- ----------------------------
-- Table structure for s_groupmodule
-- ----------------------------
DROP TABLE IF EXISTS `s_groupmodule`;
CREATE TABLE `s_groupmodule` (
  `moduleId` varchar(50) NOT NULL,
  `groupId` varchar(100) NOT NULL,
  PRIMARY KEY (`moduleId`,`groupId`),
  KEY `FK_S_GroupModule_S_Group` (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='S_GroupModule';

-- ----------------------------
-- Records of s_groupmodule
-- ----------------------------
INSERT INTO `s_groupmodule` VALUES ('1008', '100');
INSERT INTO `s_groupmodule` VALUES ('1028', '100');
INSERT INTO `s_groupmodule` VALUES ('1068', '100');
INSERT INTO `s_groupmodule` VALUES ('1069', '100');
INSERT INTO `s_groupmodule` VALUES ('1088', '100');
INSERT INTO `s_groupmodule` VALUES ('1108', '100');
INSERT INTO `s_groupmodule` VALUES ('1288', '100');
INSERT INTO `s_groupmodule` VALUES ('1348', '100');
INSERT INTO `s_groupmodule` VALUES ('350', '100');
INSERT INTO `s_groupmodule` VALUES ('351', '100');
INSERT INTO `s_groupmodule` VALUES ('352', '100');
INSERT INTO `s_groupmodule` VALUES ('38', '100');
INSERT INTO `s_groupmodule` VALUES ('41', '100');
INSERT INTO `s_groupmodule` VALUES ('44', '100');
INSERT INTO `s_groupmodule` VALUES ('568', '100');
INSERT INTO `s_groupmodule` VALUES ('588', '100');
INSERT INTO `s_groupmodule` VALUES ('589', '100');
INSERT INTO `s_groupmodule` VALUES ('608', '100');
INSERT INTO `s_groupmodule` VALUES ('628', '100');
INSERT INTO `s_groupmodule` VALUES ('7', '100');
INSERT INTO `s_groupmodule` VALUES ('748', '100');
INSERT INTO `s_groupmodule` VALUES ('350', '161');
INSERT INTO `s_groupmodule` VALUES ('351', '161');
INSERT INTO `s_groupmodule` VALUES ('352', '161');
INSERT INTO `s_groupmodule` VALUES ('38', '161');
INSERT INTO `s_groupmodule` VALUES ('41', '161');
INSERT INTO `s_groupmodule` VALUES ('44', '161');
INSERT INTO `s_groupmodule` VALUES ('568', '161');
INSERT INTO `s_groupmodule` VALUES ('588', '161');
INSERT INTO `s_groupmodule` VALUES ('589', '161');
INSERT INTO `s_groupmodule` VALUES ('608', '161');
INSERT INTO `s_groupmodule` VALUES ('628', '161');
INSERT INTO `s_groupmodule` VALUES ('7', '161');
INSERT INTO `s_groupmodule` VALUES ('1028', '182');
INSERT INTO `s_groupmodule` VALUES ('1008', '2');
INSERT INTO `s_groupmodule` VALUES ('1028', '2');
INSERT INTO `s_groupmodule` VALUES ('1068', '2');
INSERT INTO `s_groupmodule` VALUES ('1069', '2');
INSERT INTO `s_groupmodule` VALUES ('1088', '2');
INSERT INTO `s_groupmodule` VALUES ('1108', '2');
INSERT INTO `s_groupmodule` VALUES ('350', '2');
INSERT INTO `s_groupmodule` VALUES ('351', '2');
INSERT INTO `s_groupmodule` VALUES ('38', '2');
INSERT INTO `s_groupmodule` VALUES ('41', '2');
INSERT INTO `s_groupmodule` VALUES ('44', '2');
INSERT INTO `s_groupmodule` VALUES ('568', '2');
INSERT INTO `s_groupmodule` VALUES ('588', '2');
INSERT INTO `s_groupmodule` VALUES ('589', '2');
INSERT INTO `s_groupmodule` VALUES ('608', '2');
INSERT INTO `s_groupmodule` VALUES ('7', '2');
INSERT INTO `s_groupmodule` VALUES ('748', '2');
INSERT INTO `s_groupmodule` VALUES ('7', '2015031715432399283459-4a76-4519-8a33-1ae16bbd3857');
INSERT INTO `s_groupmodule` VALUES ('350', '2015032000290244b0e6a2-1993-48fa-8c81-2e2bf7c30a77');
INSERT INTO `s_groupmodule` VALUES ('38', '2015032000290244b0e6a2-1993-48fa-8c81-2e2bf7c30a77');
INSERT INTO `s_groupmodule` VALUES ('41', '2015032000290244b0e6a2-1993-48fa-8c81-2e2bf7c30a77');
INSERT INTO `s_groupmodule` VALUES ('7', '2015032000290244b0e6a2-1993-48fa-8c81-2e2bf7c30a77');
INSERT INTO `s_groupmodule` VALUES ('1028', '202');
INSERT INTO `s_groupmodule` VALUES ('1008', '203');
INSERT INTO `s_groupmodule` VALUES ('1288', '203');
INSERT INTO `s_groupmodule` VALUES ('1348', '203');
INSERT INTO `s_groupmodule` VALUES ('350', '203');
INSERT INTO `s_groupmodule` VALUES ('38', '203');
INSERT INTO `s_groupmodule` VALUES ('41', '203');
INSERT INTO `s_groupmodule` VALUES ('568', '203');
INSERT INTO `s_groupmodule` VALUES ('588', '203');
INSERT INTO `s_groupmodule` VALUES ('589', '203');
INSERT INTO `s_groupmodule` VALUES ('608', '203');
INSERT INTO `s_groupmodule` VALUES ('7', '203');
INSERT INTO `s_groupmodule` VALUES ('748', '203');

-- ----------------------------
-- Table structure for s_groupuser
-- ----------------------------
DROP TABLE IF EXISTS `s_groupuser`;
CREATE TABLE `s_groupuser` (
  `groupId` varchar(100) NOT NULL,
  `userId` varchar(50) NOT NULL,
  PRIMARY KEY (`groupId`,`userId`),
  KEY `FK_S_GroupUser_S_User` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='S_GroupUser';

-- ----------------------------
-- Records of s_groupuser
-- ----------------------------
INSERT INTO `s_groupuser` VALUES ('100', '1');
INSERT INTO `s_groupuser` VALUES ('182', '1');
INSERT INTO `s_groupuser` VALUES ('203', '163');
INSERT INTO `s_groupuser` VALUES ('202', '204');
INSERT INTO `s_groupuser` VALUES ('202', '222');
INSERT INTO `s_groupuser` VALUES ('202', '223');
INSERT INTO `s_groupuser` VALUES ('202', '224');
INSERT INTO `s_groupuser` VALUES ('100', '242');

-- ----------------------------
-- Table structure for s_keyinfo
-- ----------------------------
DROP TABLE IF EXISTS `s_keyinfo`;
CREATE TABLE `s_keyinfo` (
  `tableName` varchar(50) NOT NULL,
  `keyValue` bigint(20) DEFAULT NULL,
  `lastModifyTime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`tableName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='S_KeyInfo';

-- ----------------------------
-- Records of s_keyinfo
-- ----------------------------
INSERT INTO `s_keyinfo` VALUES ('cms_articles', '100', '2015-11-30 16:32');
INSERT INTO `s_keyinfo` VALUES ('eab_maintain_order_info', '160', '2015-06-29 14:42');
INSERT INTO `s_keyinfo` VALUES ('eab_maintain_order_record', '160', '2015-06-29 14:42');
INSERT INTO `s_keyinfo` VALUES ('edb-order-code-sequence', '20', '2015-03-16 00:45');
INSERT INTO `s_keyinfo` VALUES ('edb_activity', '100', '2015-08-12 20:00');
INSERT INTO `s_keyinfo` VALUES ('edb_activity_enroll', '40', '2015-07-03 10:37');
INSERT INTO `s_keyinfo` VALUES ('edb_circle', '160', '2015-07-22 09:31');
INSERT INTO `s_keyinfo` VALUES ('edb_coupon', '140', '2015-08-04 11:03');
INSERT INTO `s_keyinfo` VALUES ('edb_coupon_member', '220', '2015-08-04 11:03');
INSERT INTO `s_keyinfo` VALUES ('edb_cricle_chatcontent', '120', '2015-07-09 11:06');
INSERT INTO `s_keyinfo` VALUES ('edb_dept_to_project', '40', '2015-06-29 14:50');
INSERT INTO `s_keyinfo` VALUES ('edb_facility', '260', '2015-03-25 18:27:34');
INSERT INTO `s_keyinfo` VALUES ('edb_favorites', '240', '2015-08-03 17:04');
INSERT INTO `s_keyinfo` VALUES ('edb_house', '40', '2015-07-29 17:06');
INSERT INTO `s_keyinfo` VALUES ('edb_house_owner', '40', '2015-07-29 17:06');
INSERT INTO `s_keyinfo` VALUES ('edb_member', '440', '2015-07-16 17:47');
INSERT INTO `s_keyinfo` VALUES ('edb_member_address', '120', '2015-07-16 18:00');
INSERT INTO `s_keyinfo` VALUES ('edb_member_estate', '200', '2015-07-29 17:06');
INSERT INTO `s_keyinfo` VALUES ('edb_neighbourhood', '180', '2015-03-24 16:09');
INSERT INTO `s_keyinfo` VALUES ('edb_order', '780', '2016-02-26 02:12');
INSERT INTO `s_keyinfo` VALUES ('edb_order_details', '800', '2016-02-26 02:12');
INSERT INTO `s_keyinfo` VALUES ('edb_order_pay_record', '80', '2016-02-26 02:12');
INSERT INTO `s_keyinfo` VALUES ('edb_order_process', '480', '2016-02-27 15:10');
INSERT INTO `s_keyinfo` VALUES ('edb_points_history', '440', '2015-08-04 09:40');
INSERT INTO `s_keyinfo` VALUES ('edb_product', '680', '2015-07-16 15:49');
INSERT INTO `s_keyinfo` VALUES ('edb_product_description', '420', '2015-07-16 15:49');
INSERT INTO `s_keyinfo` VALUES ('edb_product_promotion', '220', '2015-06-27 19:56');
INSERT INTO `s_keyinfo` VALUES ('edb_product_snapshot', '520', '2015-08-04 11:08');
INSERT INTO `s_keyinfo` VALUES ('edb_settlement', '40', '2016-01-31 23:39');
INSERT INTO `s_keyinfo` VALUES ('edb_settlement_details', '40', '2016-01-31 23:39');
INSERT INTO `s_keyinfo` VALUES ('edb_shopping_cart', '400', '2015-07-02 16:11');
INSERT INTO `s_keyinfo` VALUES ('edb_sms', '280', '2015-07-29 17:06');
INSERT INTO `s_keyinfo` VALUES ('fg_areamanager', '20', '2016-02-28 11:54');
INSERT INTO `s_keyinfo` VALUES ('fg_area_user_mapping', '40', '2016-02-27 20:56');
INSERT INTO `s_keyinfo` VALUES ('fg_guest', '40', '2017-05-04 11:44');
INSERT INTO `s_keyinfo` VALUES ('fg_hotel', '400', '2016-02-26 11:54');
INSERT INTO `s_keyinfo` VALUES ('fg_hotel_bank_account', '60', '2016-02-22 11:45');
INSERT INTO `s_keyinfo` VALUES ('fg_hotel_user_mapping', '240', '2016-02-26 11:54');
INSERT INTO `s_keyinfo` VALUES ('fg_order_guest_mapping', '60', '2016-01-25 11:25');
INSERT INTO `s_keyinfo` VALUES ('FG_RESERVATION_ROOM', '280', '2016-02-26 02:12');
INSERT INTO `s_keyinfo` VALUES ('fg_room', '600', '2016-02-24 20:00');
INSERT INTO `s_keyinfo` VALUES ('fg_roomType', '420', '2016-02-24 20:00');
INSERT INTO `s_keyinfo` VALUES ('fg_shopkeeper', '260', '2016-02-22 10:37');
INSERT INTO `s_keyinfo` VALUES ('fg_specialTimePrice', '140', '2016-02-25 17:01');
INSERT INTO `s_keyinfo` VALUES ('km_knowledge', '340', '2015-12-07 15:26');
INSERT INTO `s_keyinfo` VALUES ('ontp_course', '140', '2015-12-10 11:37');
INSERT INTO `s_keyinfo` VALUES ('ontp_courseware', '220', '2015-12-07 10:46');
INSERT INTO `s_keyinfo` VALUES ('ontp_courseware_study_record', '380', '2015-12-08 17:56');
INSERT INTO `s_keyinfo` VALUES ('ontp_course_outline', '220', '2015-12-07 10:48');
INSERT INTO `s_keyinfo` VALUES ('ontp_course_study_record', '520', '2015-12-07 12:17');
INSERT INTO `s_keyinfo` VALUES ('ontp_study_note', '440', '2015-12-07 15:15');
INSERT INTO `s_keyinfo` VALUES ('ontp_study_record', '1460', '2015-12-24 11:33');
INSERT INTO `s_keyinfo` VALUES ('ontp_training_class', '340', '2015-12-07 21:20');
INSERT INTO `s_keyinfo` VALUES ('ontp_training_class_course', '280', '2015-12-07 21:47');
INSERT INTO `s_keyinfo` VALUES ('ontp_training_class_student', '360', '2015-12-07 21:39');
INSERT INTO `s_keyinfo` VALUES ('s_category', '520', '2016-02-27 18:17');
INSERT INTO `s_keyinfo` VALUES ('s_collect', '220', '2015-12-30 10:19');
INSERT INTO `s_keyinfo` VALUES ('s_comment', '60', '2015-07-30 09:45');
INSERT INTO `s_keyinfo` VALUES ('s_counter', '3740', '2015-08-04 11:07');
INSERT INTO `s_keyinfo` VALUES ('s_custom_field', '20', '2015-03-22 21:35');
INSERT INTO `s_keyinfo` VALUES ('s_custom_fieldset', '20', '2015-03-22 21:32');
INSERT INTO `s_keyinfo` VALUES ('s_custom_field_text_value', '60', '2015-08-12 20:09');
INSERT INTO `s_keyinfo` VALUES ('s_custom_field_value', '60', '2015-08-12 20:09');
INSERT INTO `s_keyinfo` VALUES ('s_dictionary', '60', '2017-06-05 15:58');
INSERT INTO `s_keyinfo` VALUES ('s_dictionary_option', '60', '2017-06-05 15:58');
INSERT INTO `s_keyinfo` VALUES ('s_group', '221', '2015-12-29 22:38');
INSERT INTO `s_keyinfo` VALUES ('s_member', '260', '2016-02-28 22:49');
INSERT INTO `s_keyinfo` VALUES ('S_Module', '1427', '2017-06-09 23:49');
INSERT INTO `s_keyinfo` VALUES ('s_notice', '420', '2015-12-23 15:35');
INSERT INTO `s_keyinfo` VALUES ('s_order', '60', '2015-07-15 17:52');
INSERT INTO `s_keyinfo` VALUES ('s_organization', '322', '2017-06-11 17:55');
INSERT INTO `s_keyinfo` VALUES ('s_org_bank_account', '20', '2016-02-22 11:49');
INSERT INTO `s_keyinfo` VALUES ('s_platform_property', '20', '2016-01-31 23:36');
INSERT INTO `s_keyinfo` VALUES ('s_resource', '3500', '2017-01-06 10:35');
INSERT INTO `s_keyinfo` VALUES ('S_Site', '555', '2015-03-14 13:57');
INSERT INTO `s_keyinfo` VALUES ('s_sms_record', '120', '2016-02-28 22:30');
INSERT INTO `s_keyinfo` VALUES ('S_User', '261', '2017-06-11 17:59');

-- ----------------------------
-- Table structure for s_log
-- ----------------------------
DROP TABLE IF EXISTS `s_log`;
CREATE TABLE `s_log` (
  `id` varchar(50) NOT NULL,
  `userId` bigint(50) DEFAULT NULL COMMENT '用户ID',
  `userName` varchar(45) DEFAULT NULL COMMENT '用户名',
  `operateTime` datetime DEFAULT NULL COMMENT '操作时间',
  `url` varchar(500) DEFAULT NULL COMMENT '请求地址',
  `ip` varchar(50) DEFAULT NULL COMMENT 'IP',
  `browser` varchar(500) DEFAULT NULL COMMENT '浏览器信息',
  `operateType` varchar(50) DEFAULT NULL COMMENT '操作类型',
  `parameter` text COMMENT '请求参数',
  `userOrgId` int(11) DEFAULT NULL COMMENT '用户组织机构ID',
  `userOrgName` varchar(100) DEFAULT NULL COMMENT '用户组织机构名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_log
-- ----------------------------

-- ----------------------------
-- Table structure for s_loginlog
-- ----------------------------
DROP TABLE IF EXISTS `s_loginlog`;
CREATE TABLE `s_loginlog` (
  `id` varchar(50) NOT NULL,
  `userId` bigint(50) DEFAULT NULL,
  `loginTime` datetime DEFAULT NULL,
  `logoutTime` datetime DEFAULT NULL,
  `clientIp` varchar(50) DEFAULT NULL,
  `clientHost` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_S_Log_S_User` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='s_loginlog';

-- ----------------------------
-- Records of s_loginlog
-- ----------------------------
INSERT INTO `s_loginlog` VALUES ('2016022200342650823edb-c9f2-4687-99ea-2fad74ccaa4b', '1', '2016-02-22 00:30:28', '2016-02-22 00:34:26', '106.59.226.243', '106.59.226.243');
INSERT INTO `s_loginlog` VALUES ('201602220048137799bba6-8b37-4534-b3e1-b10d8fd456c7', '1', '2016-02-22 00:34:34', '2016-02-22 00:48:13', '106.59.226.243', '106.59.226.243');
INSERT INTO `s_loginlog` VALUES ('20160222005135274b41e0-9a6f-40d7-a472-244c4a44ef6f', '163', '2016-02-22 00:50:53', '2016-02-22 00:51:35', '106.59.226.243', '106.59.226.243');
INSERT INTO `s_loginlog` VALUES ('2016022210194983b404d5-a130-4d1d-bcd3-ec952f0adcf1', '163', '2016-02-22 09:57:10', '2016-02-22 10:19:49', '116.52.177.69', '116.52.177.69');
INSERT INTO `s_loginlog` VALUES ('20160222102549e87e4a08-433c-40ea-92f9-17867e9da83f', '163', '2016-02-22 09:57:46', '2016-02-22 10:25:49', '116.52.177.69', '116.52.177.69');
INSERT INTO `s_loginlog` VALUES ('2016022210274933725ca9-4d73-400c-a966-0c8b138ff96c', '223', '2016-02-22 10:19:57', '2016-02-22 10:27:49', '116.52.177.69', '116.52.177.69');
INSERT INTO `s_loginlog` VALUES ('20160222104316f2aaf5d6-aa33-46fa-beb1-b44757ada90b', '163', '2016-02-22 10:42:50', '2016-02-22 10:43:16', '116.52.177.69', '116.52.177.69');
INSERT INTO `s_loginlog` VALUES ('201602221115038773f261-4104-4cda-8472-322900a4c5fa', '223', '2016-02-22 10:43:47', '2016-02-22 11:15:03', '116.52.177.69', '116.52.177.69');
INSERT INTO `s_loginlog` VALUES ('2016022212350482db23c6-f6b2-45ec-aba4-a088e662d232', '223', '2016-02-22 11:20:29', '2016-02-22 12:35:04', '116.52.177.69', '116.52.177.69');
INSERT INTO `s_loginlog` VALUES ('20160222123504f9d172a4-3b61-4e30-b47f-6f561494f4e2', '222', '2016-02-22 10:26:17', '2016-02-22 12:35:04', '116.52.177.69', '116.52.177.69');
INSERT INTO `s_loginlog` VALUES ('2016022213015448d8c0a0-3bcf-4bdd-b33d-901cfef9a28b', '163', '2016-02-22 12:57:39', '2016-02-22 13:01:54', '116.52.177.69', '116.52.177.69');
INSERT INTO `s_loginlog` VALUES ('20160222130408c64fc872-1524-4e87-b4fd-0bdaeabfcc2c', '222', '2016-02-22 13:02:18', '2016-02-22 13:04:08', '116.52.177.69', '116.52.177.69');
INSERT INTO `s_loginlog` VALUES ('201602221304489a8898ea-9587-4cb8-8d58-6fc8bb8a83aa', '163', '2016-02-22 13:04:10', '2016-02-22 13:04:48', '116.52.177.69', '116.52.177.69');
INSERT INTO `s_loginlog` VALUES ('2016022213131975da7af2-3352-45c0-a216-9ea9d8271926', '163', '2016-02-22 12:41:58', '2016-02-22 13:13:19', '60.160.207.231', '60.160.207.231');
INSERT INTO `s_loginlog` VALUES ('20160222133434e833ecb4-8553-4d99-bdd7-f13ba976215f', '222', '2016-02-22 13:04:57', '2016-02-22 13:34:34', '116.52.177.69', '116.52.177.69');
INSERT INTO `s_loginlog` VALUES ('201602221335568047d585-dd8b-4ef1-839d-d8c960907582', '163', '2016-02-22 13:34:37', '2016-02-22 13:35:56', '116.52.177.69', '116.52.177.69');
INSERT INTO `s_loginlog` VALUES ('201602221356057ceebb6c-7e48-47b8-baad-a20766a719ea', '224', '2016-02-22 13:13:35', '2016-02-22 13:56:05', '60.160.207.231', '60.160.207.231');
INSERT INTO `s_loginlog` VALUES ('2016022214310604ee4ebc-4194-499d-927a-7c133fd1b97c', '223', '2016-02-22 12:57:26', '2016-02-22 14:31:06', '116.52.177.69', '116.52.177.69');
INSERT INTO `s_loginlog` VALUES ('20160222143706dafe032a-5d9e-4cca-907d-3d1afdedee47', '224', '2016-02-22 13:42:06', '2016-02-22 14:37:06', '60.160.207.231', '60.160.207.231');
INSERT INTO `s_loginlog` VALUES ('20160222143806776583a1-632e-48c3-85b9-21ec54a486fe', '222', '2016-02-22 13:36:18', '2016-02-22 14:38:06', '116.52.177.69', '116.52.177.69');
INSERT INTO `s_loginlog` VALUES ('20160222154307209ca60e-99ad-4f37-8b41-914d6513620d', '223', '2016-02-22 15:12:18', '2016-02-22 15:43:07', '116.52.177.69', '116.52.177.69');
INSERT INTO `s_loginlog` VALUES ('201602221545076cbb4c70-31ce-4c59-a90e-7b9c46a15e74', '222', '2016-02-22 15:14:02', '2016-02-22 15:45:07', '116.52.177.69', '116.52.177.69');
INSERT INTO `s_loginlog` VALUES ('201602221701083fca75dc-c7cd-404c-86a1-b9f07b16710a', '224', '2016-02-22 16:14:54', '2016-02-22 17:01:08', '60.160.207.231', '60.160.207.231');
INSERT INTO `s_loginlog` VALUES ('20160222171208fdf6887b-9921-43c8-bfcb-f7f5fac74cb3', '222', '2016-02-22 16:40:54', '2016-02-22 17:12:08', '116.52.177.69', '116.52.177.69');
INSERT INTO `s_loginlog` VALUES ('2016022217200844246663-1ad3-4960-9ce2-40bf9d7e123e', '222', '2016-02-22 16:38:05', '2016-02-22 17:20:08', '116.52.177.69', '116.52.177.69');
INSERT INTO `s_loginlog` VALUES ('20160222173308e1484a74-8a08-4dd8-9b24-b9dbb94557c2', '222', '2016-02-22 16:47:18', '2016-02-22 17:33:08', '116.52.177.69', '116.52.177.69');
INSERT INTO `s_loginlog` VALUES ('20160222173408105e3eaa-7a6b-4314-a7a5-a6f59a494bc6', '222', '2016-02-22 17:03:17', '2016-02-22 17:34:08', '116.52.177.69', '116.52.177.69');
INSERT INTO `s_loginlog` VALUES ('2016022217440859da8c68-2d24-4885-a066-cd1d1f4cc06e', '223', '2016-02-22 17:14:04', '2016-02-22 17:44:08', '116.52.177.69', '116.52.177.69');
INSERT INTO `s_loginlog` VALUES ('201602221803093bd0b70a-eabc-48cc-904f-8ab88dc015d9', '224', '2016-02-22 16:31:10', '2016-02-22 18:03:09', '60.160.207.231', '60.160.207.231');
INSERT INTO `s_loginlog` VALUES ('20160222213411d7b8f83f-c82d-4975-91d3-901a6cb12671', '224', '2016-02-22 21:02:33', '2016-02-22 21:34:11', '60.160.207.231', '60.160.207.231');
INSERT INTO `s_loginlog` VALUES ('20160223100819dc637ab1-073d-43e3-ad48-a3e430ffe1a1', '222', '2016-02-23 09:34:34', '2016-02-23 10:08:19', '116.52.177.69', '116.52.177.69');
INSERT INTO `s_loginlog` VALUES ('20160223141222e4fff54b-8287-4941-b2d9-c38aafd86a90', '223', '2016-02-23 13:41:36', '2016-02-23 14:12:22', '218.63.63.239', '218.63.63.239');
INSERT INTO `s_loginlog` VALUES ('201602231422220667671e-bb2a-465e-b26b-9abc75db5958', '222', '2016-02-23 13:51:09', '2016-02-23 14:22:22', '116.52.177.69', '116.52.177.69');
INSERT INTO `s_loginlog` VALUES ('20160223203628d0053bd1-78ad-4c92-9b4f-20d6e8538035', '1', '2016-02-23 19:58:22', '2016-02-23 20:36:28', '112.112.11.107', '112.112.11.107');
INSERT INTO `s_loginlog` VALUES ('20160223213857ea302bb9-2475-4e93-a5d6-45fc57d4d87f', '1', '2016-02-23 21:38:28', '2016-02-23 21:38:57', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('201602232140122dd82e98-8559-44cc-b1ae-6051cb4b050b', '1', '2016-02-23 21:39:49', '2016-02-23 21:40:13', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('201602232210563f02f749-0e84-4ad6-9c29-eba71075a273', '222', '2016-02-23 21:40:18', '2016-02-23 22:10:56', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('20160223235049c5a7f07a-0a0b-41b6-84e9-0ea0c271e089', '1', '2016-02-23 23:48:56', '2016-02-23 23:50:50', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('20160224120643524fed01-b23b-4c72-932a-811e60a67815', '1', '2016-02-24 11:53:45', '2016-02-24 12:06:44', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('2016022414554726ec56a3-a6e4-45d5-adeb-f5797ceb7d8a', '1', '2016-02-24 14:22:26', '2016-02-24 14:55:48', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('20160224181129de687a62-73b7-415c-97fa-771b25b1e452', '1', '2016-02-24 18:03:16', '2016-02-24 18:11:29', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('201602241816223b75ec8f-d64a-4854-95d1-93a35f9b4d30', '1', '2016-02-24 18:16:03', '2016-02-24 18:16:23', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('2016022419171827038a94-e1de-4877-a3bf-8a476557f995', '222', '2016-02-24 18:16:31', '2016-02-24 19:17:18', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('201602241926285ccd8626-4387-4a8b-a277-972e39f3a80f', '1', '2016-02-24 19:26:20', '2016-02-24 19:26:28', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('20160224192631282d3f07-591e-46db-bece-c08ead9758c7', '1', '2016-02-24 19:26:29', '2016-02-24 19:26:32', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('2016022420233288e02f3e-9887-4819-b90c-61ee42eea591', '222', '2016-02-24 19:26:56', '2016-02-24 20:23:33', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('201602242025016be1165c-3cb5-4298-ae41-993a6ba3a862', '1', '2016-02-24 20:23:42', '2016-02-24 20:25:02', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('2016022420262505c33416-1cf4-4734-98fa-74656e2f0f32', '1', '2016-02-24 20:25:30', '2016-02-24 20:26:25', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('201602242027444898c726-83d6-46be-9015-443275e4e5f3', '222', '2016-02-24 20:26:35', '2016-02-24 20:27:44', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('20160224232533f93dbe0b-0048-4562-95b6-d2633fc5033b', '222', '2016-02-24 20:50:38', '2016-02-24 23:25:34', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('201602242332402b48b767-913c-4125-b1ee-a0b1ac9602ae', '1', '2016-02-24 23:31:27', '2016-02-24 23:32:40', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('201602242356161233bc9f-c6be-4d63-9468-132e367be5b9', '222', '2016-02-24 23:55:10', '2016-02-24 23:56:16', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('20160225001250a7e5da19-8426-47f8-b38b-e57add7e0fdb', '222', '2016-02-24 23:58:36', '2016-02-25 00:12:51', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('20160225005328f77d0b61-528d-4492-84a2-205a241bbd40', '1', '2016-02-25 00:53:26', '2016-02-25 00:53:29', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('20160225011508d0a8ab29-3f45-47ef-b351-9e821c642c8d', '222', '2016-02-25 01:06:47', '2016-02-25 01:15:08', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('2016022502434305a5753f-ff46-4bb3-8a7b-e75672024ab2', '222', '2016-02-25 01:15:36', '2016-02-25 02:43:43', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('2016022517504881c69e7d-9565-4e03-bb96-3196412a48d8', '222', '2016-02-25 16:53:32', '2016-02-25 17:50:49', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('201602251841484c3043a7-340b-4c22-9d2a-8d1aed287f64', '1', '2016-02-25 18:10:49', '2016-02-25 18:41:48', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('20160226002423617124f2-eef7-43b4-a781-48a050e444b5', '222', '2016-02-26 00:10:03', '2016-02-26 00:24:24', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('201602260112115d786993-41e4-44fa-b639-0e66b08c21f1', '222', '2016-02-26 01:09:15', '2016-02-26 01:12:12', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('20160226013132cff99325-067f-4e32-a7d8-add90e3f7561', '1', '2016-02-26 01:31:29', '2016-02-26 01:31:32', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('20160226013236a29774d5-86e5-4652-aa26-5649d4739e8c', '222', '2016-02-26 01:31:41', '2016-02-26 01:32:36', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('20160226014120198772ea-198b-48d6-810d-131b399e8259', '222', '2016-02-26 01:34:21', '2016-02-26 01:41:20', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('2016022602012947c701cb-6a55-4fb4-9239-f9c4ef4dea90', '222', '2016-02-26 01:46:21', '2016-02-26 02:01:30', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('20160226045713d4a464f8-c56a-4d5f-a251-c8b7845dbc9c', '222', '2016-02-26 02:09:40', '2016-02-26 04:57:13', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('20160227104218515cd0af-e47f-40e7-818d-33337db3834b', '222', '2016-02-27 10:38:51', '2016-02-27 10:42:18', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20160227112720c1c2ab4c-7c40-4d7a-806d-805db0198ee4', '222', '2016-02-27 10:51:56', '2016-02-27 11:27:20', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('2016022711352783bf3270-a654-492a-9d91-0f06caef41f0', '163', '2016-02-27 10:42:31', '2016-02-27 11:35:27', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20160227114207e95d9a4f-fb9f-4f81-99c8-b40380c78c89', '163', '2016-02-27 11:41:58', '2016-02-27 11:42:08', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('201602271142165f5778d6-40f1-4158-916b-bf0f4db44e24', '222', '2016-02-27 11:40:11', '2016-02-27 11:42:17', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('201602271147199d8febb9-3358-4dcb-81e5-0b0aa828d577', '222', '2016-02-27 11:42:10', '2016-02-27 11:47:20', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20160227114719b24c839f-d3b5-433d-9523-38a73fe7b63e', '163', '2016-02-27 11:42:23', '2016-02-27 11:47:20', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20160227114814d3c1f2cb-6753-4af6-8870-c14491874719', '222', '2016-02-27 11:48:04', '2016-02-27 11:48:15', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('201602271156277f2e7fb7-708d-4810-938b-5d21dda4d8e2', '163', '2016-02-27 11:48:22', '2016-02-27 11:56:28', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20160227115627d24b3ff3-8d10-42a7-a925-c77f7823bb8b', '222', '2016-02-27 11:54:27', '2016-02-27 11:56:28', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20160227115736b364a6d6-b4ef-4801-9cc9-6d1ee46442b8', '222', '2016-02-27 11:57:34', '2016-02-27 11:57:37', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('201602271158507ea9dce0-ceb9-41c6-ada3-183ef47e5965', '163', '2016-02-27 11:57:43', '2016-02-27 11:58:50', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('201602271245168537de41-6891-454b-a48b-b5d9936a04b2', '163', '2016-02-27 12:13:05', '2016-02-27 12:45:16', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('2016022713345617b28e75-ba04-4238-9ac3-28ca457da262', '163', '2016-02-27 13:03:34', '2016-02-27 13:34:57', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('2016022714202982d6a460-5a86-48e8-b0d2-e1182f3de545', '163', '2016-02-27 14:18:17', '2016-02-27 14:20:30', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('201602271422209c8c28c2-4d2a-4354-a3f6-d8554ff0a753', '163', '2016-02-27 14:21:47', '2016-02-27 14:22:20', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('201602271443112b83bf6f-5513-474a-a42c-2d22aa30d618', '222', '2016-02-27 14:25:41', '2016-02-27 14:43:11', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('2016022714431185a7d581-eff0-48fc-87b3-603a92c64351', '163', '2016-02-27 14:22:56', '2016-02-27 14:43:11', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('2016022714444216aef376-0a60-44d1-a699-8db4bb871597', '222', '2016-02-27 14:44:04', '2016-02-27 14:44:43', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('2016022714462560559d99-c3fd-462d-9178-c41798b14069', '222', '2016-02-27 14:45:11', '2016-02-27 14:46:26', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20160227145538a9030331-068c-4552-9721-af5e14f55565', '222', '2016-02-27 14:46:42', '2016-02-27 14:55:39', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20160227145538f904a47a-186e-4f7f-b428-3b25c333f37a', '222', '2016-02-27 14:47:50', '2016-02-27 14:55:39', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('2016022715055008a21c9b-bfa7-4959-92be-9173fcdf3888', '163', '2016-02-27 15:04:27', '2016-02-27 15:05:50', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20160227150550276af0d9-8b76-4de6-b726-b45703ef8e1d', '222', '2016-02-27 14:57:44', '2016-02-27 15:05:50', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('2016022715072139a9e9da-68d5-43f3-ac08-178ecf68e793', '222', '2016-02-27 15:06:45', '2016-02-27 15:07:22', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('201602271509519557eeb3-7f6b-432d-a246-90c30b57d7fd', '222', '2016-02-27 15:08:16', '2016-02-27 15:09:51', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20160227151559248b5ee7-d693-4043-9063-4fd0e00df3a4', '163', '2016-02-27 15:10:56', '2016-02-27 15:16:00', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('201602271515595712872d-e10f-4e38-be1e-b374b2f82bea', '222', '2016-02-27 15:10:05', '2016-02-27 15:16:00', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('201602271532077b91edba-e86c-451c-a0b3-0d4f3014ad03', '222', '2016-02-27 15:16:10', '2016-02-27 15:32:07', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('201602271606582d9f43d7-a7af-48ee-91b1-84c8b214b372', '222', '2016-02-27 15:36:49', '2016-02-27 16:06:59', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('201602271614003fb700a1-880d-460e-baa5-6c717c87bbe9', '163', '2016-02-27 15:32:30', '2016-02-27 16:14:01', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20160227162059ca5d739c-f1d1-44fa-88f0-b635b962695a', '163', '2016-02-27 16:18:36', '2016-02-27 16:20:59', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20160227163335ae37a864-79e5-4333-b91d-d5b6854bef7e', '222', '2016-02-27 16:21:01', '2016-02-27 16:33:35', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20160227163335e7fa762f-9291-4cce-9a68-e0fcfff3209a', '222', '2016-02-27 16:21:29', '2016-02-27 16:33:35', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20160227170038503f2ec8-5c63-441f-aeb2-34d682c3000f', '1', '2016-02-27 16:57:24', '2016-02-27 17:00:39', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20160227172129beb2c837-b056-48e9-9657-4259cdea76d9', '163', '2016-02-27 16:57:06', '2016-02-27 17:21:29', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20160227172129c848ba91-3d99-4b96-82ba-7d6c54f1f152', '222', '2016-02-27 17:00:41', '2016-02-27 17:21:29', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('2016022717334513624b86-f669-48f6-8c18-3951a9a11390', '222', '2016-02-27 17:33:41', '2016-02-27 17:33:45', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('201602271742141003778f-7afc-45ba-8c41-759f1b7e2ecb', '163', '2016-02-27 17:33:51', '2016-02-27 17:42:15', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20160227175813ab41f998-cde8-49a9-8303-b085af0f43f3', '163', '2016-02-27 17:45:42', '2016-02-27 17:58:13', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('201602271815565e72985d-8970-4d45-a974-37f8786771ed', '163', '2016-02-27 17:58:56', '2016-02-27 18:15:57', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('201602271853467e1d64cd-acde-452f-9a20-a9b581309900', '163', '2016-02-27 18:16:21', '2016-02-27 18:53:46', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('201602271858248a705141-79c2-458c-95de-b8df1651fdac', '222', '2016-02-27 18:26:36', '2016-02-27 18:58:25', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('2016022720021919d16e3c-0262-430b-8f35-86506224074c', '163', '2016-02-27 19:42:09', '2016-02-27 20:02:20', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20160227200219f036381a-4932-4b01-b06b-a9c5b6107cf2', '222', '2016-02-27 19:52:43', '2016-02-27 20:02:20', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('201602272033226cabc08e-6dba-4885-8a98-f0525f31059d', '163', '2016-02-27 20:25:33', '2016-02-27 20:33:22', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('201602272045284c5a26ad-a1bf-40f7-bbb8-42b6ff980927', '222', '2016-02-27 20:44:38', '2016-02-27 20:45:29', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20160227204528fa7bef03-de86-4539-8a82-8cadf75e79a0', '163', '2016-02-27 20:39:31', '2016-02-27 20:45:29', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20160227210554d701589a-4064-4112-b692-8e8938ccc335', '163', '2016-02-27 20:53:43', '2016-02-27 21:05:55', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20160227213322f2162ee8-6c98-4f0a-b800-533591981af4', '163', '2016-02-27 21:25:19', '2016-02-27 21:33:22', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20160227213506150d8789-68d2-49b3-ab34-a53ae0240e39', '163', '2016-02-27 21:33:28', '2016-02-27 21:35:07', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('2016022721350682045356-869b-46b2-ab56-b4da0583340c', '222', '2016-02-27 21:28:40', '2016-02-27 21:35:07', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20160227214429168fbb13-9920-4e03-a605-cf253eaeddb4', '163', '2016-02-27 21:43:33', '2016-02-27 21:44:29', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20160227215008d2cd5592-07c4-4de8-a627-a31fbe64865c', '163', '2016-02-27 21:44:45', '2016-02-27 21:50:09', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('201602272157009f9f5700-b0f5-4dc0-8ab9-ffa419cdfbfe', '163', '2016-02-27 21:55:01', '2016-02-27 21:57:00', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20160227220931ed31db74-be34-47f4-9768-c546b70d74cc', '163', '2016-02-27 21:59:22', '2016-02-27 22:09:31', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20160227224605f43e92b2-b6f5-4944-a90d-1ce7e781542f', '163', '2016-02-27 22:14:08', '2016-02-27 22:46:05', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('2016022723075863e15583-675b-4df9-80b6-3675eca5d418', '163', '2016-02-27 23:05:39', '2016-02-27 23:07:59', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('201602272310415e520261-9c8d-4359-963f-7c2ae57121ef', '163', '2016-02-27 23:08:20', '2016-02-27 23:10:42', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('201602272317005acc77ce-0654-41f0-a0f4-b52286eba343', '163', '2016-02-27 23:11:07', '2016-02-27 23:17:01', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20160227233024e9a9bdda-6f65-47a3-a2be-e73d7a9762db', '163', '2016-02-27 23:21:36', '2016-02-27 23:30:24', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('201602281128022b010132-f861-4cdf-b9ce-995a192b4d3f', '163', '2016-02-28 11:08:48', '2016-02-28 11:28:03', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20160228120605cfb61e65-326a-40fe-a813-c88f9df48ad8', '163', '2016-02-28 11:54:21', '2016-02-28 12:06:05', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20160228121455f45c6917-e649-4294-8791-87ca44930b0b', '163', '2016-02-28 12:07:14', '2016-02-28 12:14:56', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20160228143343ba64fb4e-13ee-4101-a751-c19778dad6e5', '163', '2016-02-28 14:23:24', '2016-02-28 14:33:44', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('2016022815013771537274-2cee-44d8-9bb6-6fe9a7880df3', '163', '2016-02-28 14:38:38', '2016-02-28 15:01:37', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('201602281504031fc2cd10-c3ed-41fd-98d5-3657b8879f90', '222', '2016-02-28 15:01:39', '2016-02-28 15:04:03', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('201602281513143a68b4e2-1571-4b4f-b888-40ceca970f31', '222', '2016-02-28 15:06:24', '2016-02-28 15:13:15', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20160228151735852dcc75-132c-4646-8eab-435c2882ad92', '163', '2016-02-28 15:13:20', '2016-02-28 15:17:35', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20160228151819dca7ddb6-7725-424e-a8b0-3db9eec826a7', '222', '2016-02-28 15:17:37', '2016-02-28 15:18:20', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20160228152250d6accfa4-2eea-4577-b654-bbe64dc07c2c', '1', '2016-02-28 15:18:35', '2016-02-28 15:22:51', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('201602281534314387b345-c564-4948-8243-d6a9df309f92', '1', '2016-02-28 15:23:15', '2016-02-28 15:34:32', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20160228153822645468e3-ae5a-47d1-855f-cffb194fa30b', '163', '2016-02-28 15:34:38', '2016-02-28 15:38:22', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20160228154636e3c64da6-7823-43fb-af08-e71338c08d31', '163', '2016-02-28 15:38:37', '2016-02-28 15:46:36', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20160228155546fcfcac71-1bd6-4b6b-a282-ed2bb0067eea', '163', '2016-02-28 15:47:23', '2016-02-28 15:55:47', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20160228164552485bda1a-e3f2-4698-a896-675e73c96b4e', '222', '2016-02-28 16:02:45', '2016-02-28 16:45:53', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20160228174731f2e774a6-3b39-42b7-adb2-61ad883261a2', '163', '2016-02-28 17:43:02', '2016-02-28 17:47:32', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('2016022817494942c9f295-d30b-4240-811f-af0aef8b36b0', '163', '2016-02-28 17:47:57', '2016-02-28 17:49:50', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20160228175534fa96d32e-638b-41ac-a7e8-a7901ae8d72f', '163', '2016-02-28 17:54:28', '2016-02-28 17:55:35', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('2016022817574625cf9e2d-dbde-4a84-86a1-1c1a9c2fa195', '222', '2016-02-28 17:55:36', '2016-02-28 17:57:46', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('2016022818014860b90e81-0c50-4481-be66-839eca7df7d1', '163', '2016-02-28 17:59:42', '2016-02-28 18:01:48', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20160228180349fc39b659-5475-43c2-b498-608cb64166dc', '222', '2016-02-28 18:01:50', '2016-02-28 18:03:50', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('201602281807470c280faf-6b54-474c-a108-c937b9d868eb', '222', '2016-02-28 18:07:19', '2016-02-28 18:07:48', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('201602281812220e165d87-4ec7-4019-9175-83322597b3a6', '163', '2016-02-28 18:07:55', '2016-02-28 18:12:22', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('201602281814122f292626-6041-4f6e-be4b-9cd489e222fd', '222', '2016-02-28 18:14:03', '2016-02-28 18:14:12', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('201602281817468fb19ca8-ac3b-47eb-b7fb-7bdfaae55930', '163', '2016-02-28 18:14:18', '2016-02-28 18:17:47', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('201602281950094b1e7d60-1957-4bb1-83a5-66fbf8baa1a4', '163', '2016-02-28 19:47:53', '2016-02-28 19:50:10', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20160228195744c5a94c53-b941-4158-9dfd-14a69d11fa3c', '163', '2016-02-28 19:51:36', '2016-02-28 19:57:45', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20160228200057a05b9753-489d-405e-b197-2d8cbe037d06', '163', '2016-02-28 19:59:10', '2016-02-28 20:00:57', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('201602282004446a8fc3ab-2d0d-477f-87fb-488ec78a7fea', '163', '2016-02-28 20:01:24', '2016-02-28 20:04:44', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20160228200603071d7ace-cd7d-42eb-a1c6-68a944f9abab', '163', '2016-02-28 20:05:06', '2016-02-28 20:06:03', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20160228202221804215c8-c1a8-4a4a-816d-e6f0c7d4978d', '222', '2016-02-28 20:06:06', '2016-02-28 20:22:21', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20161213104219294c4210-f40b-4679-b008-a986a3debc21', '222', '2016-12-13 10:41:21', '2016-12-13 10:42:20', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('2016121311182743bc0726-99a4-43f4-a28c-cef6a3f8bf40', '1', '2016-12-13 10:42:52', '2016-12-13 11:18:27', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('2017031711394446926b2b-84f2-4022-b203-14ba0302081a', '222', '2017-03-17 11:25:10', '2017-03-17 11:39:44', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20170317115524d0554af4-278b-4f77-bbc2-387e5ee7a9a7', '222', '2017-03-17 11:44:57', '2017-03-17 11:55:24', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20170317122733924431c1-6daa-4f6a-bad0-cae05c0dc390', '222', '2017-03-17 12:26:15', '2017-03-17 12:27:33', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20170317130918526d1d59-d36d-4676-ae03-e85ac7f16a4b', '222', '2017-03-17 12:32:48', '2017-03-17 13:09:19', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('2017031714001979ebc045-0859-4f35-92b7-06e8c325bf64', '222', '2017-03-17 13:58:15', '2017-03-17 14:00:19', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('2017031714341236b6094a-15ad-432e-9bdd-a5316843061a', '222', '2017-03-17 14:31:03', '2017-03-17 14:34:12', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('2017031714472694de1663-e9fd-4a59-a88b-6a600f4b9798', '222', '2017-03-17 14:46:59', '2017-03-17 14:47:27', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('201703171540280280df73-fce2-458b-a92e-fcb83ec076b0', '222', '2017-03-17 15:38:25', '2017-03-17 15:40:28', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('2017031715481259addeea-8de7-40bb-b5a8-e5ca770219d5', '222', '2017-03-17 15:43:08', '2017-03-17 15:48:13', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('201703171551286cf3fe18-158a-48e1-b072-35e95168dcd0', '222', '2017-03-17 15:50:57', '2017-03-17 15:51:29', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('2017031715561665b6470a-d76a-4583-bbac-ab784b4f6857', '1', '2017-03-17 15:53:08', '2017-03-17 15:56:16', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20170317160708bce0b88e-0a0a-474c-bd88-f3b0de192672', '1', '2017-03-17 16:05:10', '2017-03-17 16:07:09', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20170317162214e1cfbc6e-957b-4695-aeea-750414ee07c8', '1', '2017-03-17 16:15:36', '2017-03-17 16:22:15', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20170317163249f1ebdc77-2b43-491e-937f-a05b364b81fc', '1', '2017-03-17 16:24:30', '2017-03-17 16:32:50', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('201703171640158ce9bdb3-9115-4e6c-b4ca-4d8b3f7d93db', '1', '2017-03-17 16:36:07', '2017-03-17 16:40:16', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('201703171657341b17f548-2e80-4550-9147-78c6b09a783e', '1', '2017-03-17 16:54:36', '2017-03-17 16:57:35', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('2017041316354038f9d1ab-f545-4859-a2ce-dffdfbedc2c5', '222', '2017-04-13 16:29:17', '2017-04-13 16:35:40', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('2017041317071270691b81-fc6f-4740-86df-addc78955633', '1', '2017-04-13 16:36:09', '2017-04-13 17:07:12', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20170503160038806e3187-26f0-43f0-8373-44b1a46df8b9', '1', '2017-05-03 15:50:27', '2017-05-03 16:00:38', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('2017050316184049290208-7b4c-4f4e-adde-452872a650db', '1', '2017-05-03 16:07:31', '2017-05-03 16:18:40', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('2017050317030912172922-67d4-4112-9adc-2e4f580fd58e', '1', '2017-05-03 16:24:02', '2017-05-03 17:03:09', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20170503171050733307e4-1a96-41b1-bf09-bbdc5e33f3dc', '222', '2017-05-03 17:04:21', '2017-05-03 17:10:50', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('201705041007085736f971-fe85-40b4-8153-484dc8e35334', '222', '2017-05-04 10:06:51', '2017-05-04 10:07:08', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('201705041115315f5fdf05-f187-4c6d-8f7c-89dfceeb160c', '1', '2017-05-04 10:07:15', '2017-05-04 11:15:32', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('201705041141348000c645-c0a0-422c-bc1e-b3eeccb2b4ea', '1', '2017-05-04 11:39:42', '2017-05-04 11:41:35', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('201705041220310b194b89-8df3-4343-b5f7-85c3134f8537', '1', '2017-05-04 11:44:12', '2017-05-04 12:20:32', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('201705041709197e8cd8c3-fdb2-47db-8c9f-394effe1bc2f', '1', '2017-05-04 17:02:16', '2017-05-04 17:09:20', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('201705041726311679ee32-99b0-41fe-8666-7038b0bced43', '1', '2017-05-04 17:21:49', '2017-05-04 17:26:32', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('20170504173118d7dcd0fa-4157-4688-b460-9cd009d70f72', '1', '2017-05-04 17:30:11', '2017-05-04 17:31:19', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('20170531172640de44fd87-1a77-4c29-9527-7305148b2849', '222', '2017-05-31 16:55:51', '2017-05-31 17:26:40', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('2017060215280914b7fcae-8863-4921-a81b-362ce6377c2f', '222', '2017-06-02 15:25:15', '2017-06-02 15:28:09', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('201706021624501ca6b9b1-60dc-4e91-bf7c-3db4911571aa', '222', '2017-06-02 16:24:31', '2017-06-02 16:24:51', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('20170605112247adbce7b2-2c0b-448a-85a4-cf465cef3759', '222', '2017-06-05 11:15:22', '2017-06-05 11:22:48', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('20170605143218bc7e519f-f610-4529-85b3-336f1a8b7c1d', '222', '2017-06-05 14:31:47', '2017-06-05 14:32:18', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('20170605145621670fe2c3-7edf-46a7-aad8-508c90fffdb1', '222', '2017-06-05 14:55:34', '2017-06-05 14:56:22', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('201706051536019abc51ec-9d4f-4e8d-8075-27a6c26c53ba', '222', '2017-06-05 15:35:42', '2017-06-05 15:36:02', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('20170605155419294b18fc-67cc-43d5-af7f-0b5c8d186f01', '1', '2017-06-05 15:53:41', '2017-06-05 15:54:20', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('201706051632481a0b8b76-908b-48e7-9d9d-3ef41e821b1a', '1', '2017-06-05 15:55:47', '2017-06-05 16:32:49', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('20170605170901f57091b5-6afb-4815-a848-0d73734cc15f', '222', '2017-06-05 17:08:54', '2017-06-05 17:09:02', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('201706051710234bac6651-51d8-4b89-9070-2db40fd48b75', '1', '2017-06-05 17:09:09', '2017-06-05 17:10:23', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('20170608095516f0e4a37a-221e-4f8c-a23d-9dcb7f84cbf8', '222', '2017-06-08 09:55:12', '2017-06-08 09:55:16', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20170608181548275a6a51-429b-4320-819f-daf84e57b6e7', '1', '2017-06-08 17:04:18', '2017-06-08 18:15:49', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20170609172136a8e6dc24-26e6-4cf1-975b-81b45f6d2d32', '222', '2017-06-09 17:21:25', '2017-06-09 17:21:36', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20170609172639653e4456-8090-4ebd-a40a-806c13e31b5a', '1', '2017-06-09 17:24:55', '2017-06-09 17:26:39', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20170609220906da51d339-a96a-487b-ad23-e451d4905879', '1', '2017-06-09 21:37:37', '2017-06-09 22:09:07', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('201706092222229a0477c4-2444-44f1-9b69-e06bbe64d857', '1', '2017-06-09 22:17:54', '2017-06-09 22:22:22', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('201706092250584ebe4371-e36c-484a-9de5-31c0e04b8a14', '1', '2017-06-09 22:49:42', '2017-06-09 22:50:59', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20170609233814a7ba8b7c-d001-4988-8502-a98e47d07e5b', '1', '2017-06-09 23:23:13', '2017-06-09 23:38:14', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20170609235033a8ba1262-d62c-4035-ae82-c6759c52ae4e', '1', '2017-06-09 23:50:14', '2017-06-09 23:50:34', '0:0:0:0:0:0:0:1', '0:0:0:0:0:0:0:1');
INSERT INTO `s_loginlog` VALUES ('20170611181920613c9b2b-0c13-4087-be08-0d0283b0139c', '1', '2017-06-11 17:53:04', '2017-06-11 18:19:20', '127.0.0.1', '127.0.0.1');
INSERT INTO `s_loginlog` VALUES ('20170611182657c80d42b0-53ff-49e9-aa7f-75dfa18375d6', '1', '2017-06-11 18:22:42', '2017-06-11 18:26:58', '127.0.0.1', '127.0.0.1');

-- ----------------------------
-- Table structure for s_member
-- ----------------------------
DROP TABLE IF EXISTS `s_member`;
CREATE TABLE `s_member` (
  `id` bigint(50) NOT NULL,
  `telphone` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `nickName` varchar(50) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `registerTime` datetime DEFAULT NULL,
  `credits` bigint(50) DEFAULT NULL,
  `lastLoginTime` datetime DEFAULT NULL,
  `logoId` bigint(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `imageId` bigint(20) DEFAULT NULL,
  `siteCode` varchar(50) DEFAULT NULL,
  `openId` varchar(100) DEFAULT NULL,
  `wxLogoUrl` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_member
-- ----------------------------
INSERT INTO `s_member` VALUES ('81', '18213598820', 'e10adc3949ba59abbe56e057f20f883e', '英杰', '英杰', '1', null, '0', '2016-02-23 13:52:11', '3288', '1', '0', '', '', '');
INSERT INTO `s_member` VALUES ('82', '18608724421', '4c74d497ab9a8034abb7f0fcfebdd4f8', '措措', '措措', '0', null, '0', '2016-02-23 16:21:11', '0', '1', '0', '', '', '');
INSERT INTO `s_member` VALUES ('83', '18787023741', '554d1e67fd14e03212aa098ed9547e42', '安安静静', '安安静静', '0', null, '0', '2016-02-23 13:43:40', '0', '1', '0', '', '', '');
INSERT INTO `s_member` VALUES ('101', '阿伦', '4fb2c395c1f236b184b05873788a6fde', '阿伦', '阿伦', '1', null, '0', '2016-02-23 20:39:00', '0', '1', '0', '', 'o1yJdt9I-kUmO73PM_3EApsVdB9g', 'http://wx.qlogo.cn/mmopen/bYoPxp9kJicM0XL9tNnv3Y7Gfic4kGQ3c5C3k0zO1m0njeAglfRWJG8QG9o3rL8yicoRTcKYdtoATjfoiaO662CLPPsTTUqDiaeFr/0');
INSERT INTO `s_member` VALUES ('121', '江·措措', '777d4cc4f7625b3c225eb5f73983a5ed', '江·措措', '江·措措', '1', null, null, '2016-02-23 20:56:00', null, '1', null, null, 'o1yJdt8fQ9Nl7uMmsehsRmsxzh8A', 'http://wx.qlogo.cn/mmopen/leuDfFUJQjD5Ad2MhydSjQShnoqR22fD5OO2H4h47F5Ao4QyftxRpK2wlyLb2cOcc41cYURae0Wckib2wTrnW5jeBBQoRehme/0');
INSERT INTO `s_member` VALUES ('241', '13708442271', '698d51a19d8a121ce581499d7b701668', 'ads', 'ads', '0', null, '0', '2016-02-28 22:49:19', '0', '1', '0', '', '', '');
INSERT INTO `s_member` VALUES ('242', '13398855235', '202cb962ac59075b964b07152d234b70', '哈哈', '哈哈', '0', null, '0', '2016-02-28 22:50:19', '0', '1', '0', '', '', '');

-- ----------------------------
-- Table structure for s_message
-- ----------------------------
DROP TABLE IF EXISTS `s_message`;
CREATE TABLE `s_message` (
  `id` varchar(50) NOT NULL,
  `userId` bigint(20) DEFAULT NULL COMMENT '接收人',
  `readStatus` int(11) DEFAULT NULL COMMENT '是否阅读',
  `readTime` datetime DEFAULT NULL COMMENT '阅读时间',
  `messageType` varchar(50) DEFAULT NULL COMMENT '消息类型',
  `originName` varchar(50) DEFAULT NULL COMMENT '消息源',
  `messageTitle` varchar(100) DEFAULT NULL COMMENT '消息标题',
  `link` varchar(200) DEFAULT NULL COMMENT '连接',
  `message` varchar(500) DEFAULT NULL COMMENT '消息内容',
  `deleteFlag` int(11) DEFAULT NULL COMMENT '是否删除',
  `sentTime` datetime DEFAULT NULL COMMENT '发布时间',
  `sentPersonId` bigint(20) DEFAULT NULL COMMENT '发送人',
  `resourceIds` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='个人信息表';

-- ----------------------------
-- Records of s_message
-- ----------------------------
INSERT INTO `s_message` VALUES ('20151124225933f8c298ee-92bb-11e5-bd74-2eb4fbcf1911', '1', '1', '2015-11-25 18:20:49', '系统公告', '系统公告', '第一个通知', '/sys/notice/view.do?isModel=true&id=241', null, '1', '2015-11-24 22:59:33', '1', null);
INSERT INTO `s_message` VALUES ('20151124225933f8c29c86-92bb-11e5-bd74-2eb4fbcf1911', '102', null, null, '系统公告', '系统公告', '第一个通知', '/sys/notice/view.do?isModel=true&id=241', null, null, '2015-11-24 22:59:33', '1', null);
INSERT INTO `s_message` VALUES ('20151124225933f8c29db2-92bb-11e5-bd74-2eb4fbcf1911', '144', null, null, '系统公告', '系统公告', '第一个通知', '/sys/notice/view.do?isModel=true&id=241', null, null, '2015-11-24 22:59:33', '1', null);
INSERT INTO `s_message` VALUES ('20151124225933f8c29e16-92bb-11e5-bd74-2eb4fbcf1911', '145', null, null, '系统公告', '系统公告', '第一个通知', '/sys/notice/view.do?isModel=true&id=241', null, null, '2015-11-24 22:59:33', '1', null);
INSERT INTO `s_message` VALUES ('20151125120719057abb84-932a-11e5-bd74-2eb4fbcf1911', '102', null, null, '系统公告', '系统公告', '第二个', '/sys/notice/view.do?isModel=true&id=261', null, null, '2015-11-25 12:07:19', '1', null);
INSERT INTO `s_message` VALUES ('20151125120719057abd6e-932a-11e5-bd74-2eb4fbcf1911', '144', null, null, '系统公告', '系统公告', '第二个', '/sys/notice/view.do?isModel=true&id=261', null, null, '2015-11-25 12:07:19', '1', null);
INSERT INTO `s_message` VALUES ('20151125120719057abdf0-932a-11e5-bd74-2eb4fbcf1911', '145', null, null, '系统公告', '系统公告', '第二个', '/sys/notice/view.do?isModel=true&id=261', null, null, '2015-11-25 12:07:19', '1', null);
INSERT INTO `s_message` VALUES ('2015112518232891cd0be4-935e-11e5-bd74-2eb4fbcf1911', '1', '1', '2015-11-25 18:26:03', '系统公告', '系统公告', '第二个', '/sys/notice/view.do?isModel=true&id=261', '第二个', '1', '2015-11-25 18:23:28', '1', null);
INSERT INTO `s_message` VALUES ('2015112518232891cd5e82-935e-11e5-bd74-2eb4fbcf1911', '102', null, null, '系统公告', '系统公告', '第二个', '/sys/notice/view.do?isModel=true&id=261', '第二个', null, '2015-11-25 18:23:28', '1', null);
INSERT INTO `s_message` VALUES ('2015112518232891cd5fb8-935e-11e5-bd74-2eb4fbcf1911', '144', null, null, '系统公告', '系统公告', '第二个', '/sys/notice/view.do?isModel=true&id=261', '第二个', null, '2015-11-25 18:23:28', '1', null);
INSERT INTO `s_message` VALUES ('2015112518232891cd6008-935e-11e5-bd74-2eb4fbcf1911', '145', null, null, '系统公告', '系统公告', '第二个', '/sys/notice/view.do?isModel=true&id=261', '第二个', null, '2015-11-25 18:23:28', '1', null);
INSERT INTO `s_message` VALUES ('20151125184549b10ffa04-9361-11e5-bd74-2eb4fbcf1911', '1', '1', '2015-11-25 22:33:53', '系统公告', '系统公告', '第一个通知', '/sys/notice/view.do?isModel=true&id=241', '这一个第一个通知的内容', '1', '2015-11-25 18:45:49', '1', null);
INSERT INTO `s_message` VALUES ('20151125184549b11047fc-9361-11e5-bd74-2eb4fbcf1911', '102', null, null, '系统公告', '系统公告', '第一个通知', '/sys/notice/view.do?isModel=true&id=241', '这一个第一个通知的内容', null, '2015-11-25 18:45:49', '1', null);
INSERT INTO `s_message` VALUES ('20151125184549b1104d06-9361-11e5-bd74-2eb4fbcf1911', '144', null, null, '系统公告', '系统公告', '第一个通知', '/sys/notice/view.do?isModel=true&id=241', '这一个第一个通知的内容', null, '2015-11-25 18:45:49', '1', null);
INSERT INTO `s_message` VALUES ('20151125184549b1105224-9361-11e5-bd74-2eb4fbcf1911', '145', null, null, '系统公告', '系统公告', '第一个通知', '/sys/notice/view.do?isModel=true&id=241', '这一个第一个通知的内容', null, '2015-11-25 18:45:49', '1', null);
INSERT INTO `s_message` VALUES ('20151126160826dea7d51e-9414-11e5-bd74-2eb4fbcf1911', '1', '1', '2015-12-02 23:11:30', '系统公告', '系统公告', '系统上线通知', '/sys/notice/view.do?isModel=true&id=281', '培训平台在经过一个多月的准备后上线了，欢迎大家使用，如有总是请咨询：0871-65161117。', '1', '2015-11-26 16:08:26', '1', null);
INSERT INTO `s_message` VALUES ('20151126160826dea7d8a2-9414-11e5-bd74-2eb4fbcf1911', '102', null, null, '系统公告', '系统公告', '系统上线通知', '/sys/notice/view.do?isModel=true&id=281', '培训平台在经过一个多月的准备后上线了，欢迎大家使用，如有总是请咨询：0871-65161117。', null, '2015-11-26 16:08:26', '1', null);
INSERT INTO `s_message` VALUES ('20151126160826dea7d96a-9414-11e5-bd74-2eb4fbcf1911', '144', null, null, '系统公告', '系统公告', '系统上线通知', '/sys/notice/view.do?isModel=true&id=281', '培训平台在经过一个多月的准备后上线了，欢迎大家使用，如有总是请咨询：0871-65161117。', null, '2015-11-26 16:08:26', '1', null);
INSERT INTO `s_message` VALUES ('20151126160826dea7da46-9414-11e5-bd74-2eb4fbcf1911', '145', null, null, '系统公告', '系统公告', '系统上线通知', '/sys/notice/view.do?isModel=true&id=281', '培训平台在经过一个多月的准备后上线了，欢迎大家使用，如有总是请咨询：0871-65161117。', null, '2015-11-26 16:08:26', '1', null);
INSERT INTO `s_message` VALUES ('20151202134557f5cc28ce-98b7-11e5-aca0-dd6356859972', '1', '1', '2015-12-02 23:08:30', '系统公告', '系统公告', '佚', '/sys/notice/view.do?isModel=true&id=301', '脸', '1', '2015-12-02 00:00:00', '1', null);
INSERT INTO `s_message` VALUES ('20151202134557f5cc5524-98b7-11e5-aca0-dd6356859972', '102', null, null, '系统公告', '系统公告', '佚', '/sys/notice/view.do?isModel=true&id=301', '脸', null, '2015-12-02 00:00:00', '1', null);
INSERT INTO `s_message` VALUES ('20151202134557f5cc561e-98b7-11e5-aca0-dd6356859972', '144', null, null, '系统公告', '系统公告', '佚', '/sys/notice/view.do?isModel=true&id=301', '脸', null, '2015-12-02 00:00:00', '1', null);
INSERT INTO `s_message` VALUES ('20151202134557f5cc5682-98b7-11e5-aca0-dd6356859972', '145', null, null, '系统公告', '系统公告', '佚', '/sys/notice/view.do?isModel=true&id=301', '脸', null, '2015-12-02 00:00:00', '1', null);
INSERT INTO `s_message` VALUES ('201512022246397ef0b214-9903-11e5-aca0-dd6356859972', '1', '1', '2015-12-02 22:50:26', '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', '1', '2015-12-02 22:46:40', '1', null);
INSERT INTO `s_message` VALUES ('201512022246397ef0de56-9903-11e5-aca0-dd6356859972', '102', null, null, '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', null, '2015-12-02 22:46:40', '1', null);
INSERT INTO `s_message` VALUES ('201512022246397ef0df32-9903-11e5-aca0-dd6356859972', '144', null, null, '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', null, '2015-12-02 22:46:40', '1', null);
INSERT INTO `s_message` VALUES ('201512022246397ef0df82-9903-11e5-aca0-dd6356859972', '145', null, null, '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', null, '2015-12-02 22:46:40', '1', null);
INSERT INTO `s_message` VALUES ('201512022250330a578986-9904-11e5-aca0-dd6356859972', '1', '1', '2015-12-02 22:50:44', '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', '1', '2015-12-02 22:50:34', '1', null);
INSERT INTO `s_message` VALUES ('201512022250330a5790fc-9904-11e5-aca0-dd6356859972', '102', null, null, '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', null, '2015-12-02 22:50:34', '1', null);
INSERT INTO `s_message` VALUES ('201512022250330a579250-9904-11e5-aca0-dd6356859972', '144', null, null, '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', null, '2015-12-02 22:50:34', '1', null);
INSERT INTO `s_message` VALUES ('201512022250330a5792fa-9904-11e5-aca0-dd6356859972', '145', null, null, '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', null, '2015-12-02 22:50:34', '1', null);
INSERT INTO `s_message` VALUES ('2015120222520943802c2c-9904-11e5-aca0-dd6356859972', '1', '1', '2015-12-02 22:52:45', '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', '1', '2015-12-02 22:52:10', '1', null);
INSERT INTO `s_message` VALUES ('2015120222520943802f74-9904-11e5-aca0-dd6356859972', '102', null, null, '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', null, '2015-12-02 22:52:10', '1', null);
INSERT INTO `s_message` VALUES ('2015120222520943803000-9904-11e5-aca0-dd6356859972', '144', null, null, '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', null, '2015-12-02 22:52:10', '1', null);
INSERT INTO `s_message` VALUES ('201512022252094380305a-9904-11e5-aca0-dd6356859972', '145', null, null, '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', null, '2015-12-02 22:52:10', '1', null);
INSERT INTO `s_message` VALUES ('201512022252575fef0220-9904-11e5-aca0-dd6356859972', '1', '1', '2015-12-02 22:54:03', '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', '1', '2015-12-02 22:52:57', '1', null);
INSERT INTO `s_message` VALUES ('201512022252575fef04f0-9904-11e5-aca0-dd6356859972', '102', null, null, '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', null, '2015-12-02 22:52:57', '1', null);
INSERT INTO `s_message` VALUES ('201512022252575fef0586-9904-11e5-aca0-dd6356859972', '144', null, null, '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', null, '2015-12-02 22:52:57', '1', null);
INSERT INTO `s_message` VALUES ('201512022252575fef05ea-9904-11e5-aca0-dd6356859972', '145', null, null, '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', null, '2015-12-02 22:52:57', '1', null);
INSERT INTO `s_message` VALUES ('201512022254098b360654-9904-11e5-aca0-dd6356859972', '1', '1', '2015-12-02 22:55:12', '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', '1', '2015-12-02 22:54:10', '1', null);
INSERT INTO `s_message` VALUES ('201512022254098b36097e-9904-11e5-aca0-dd6356859972', '102', null, null, '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', null, '2015-12-02 22:54:10', '1', null);
INSERT INTO `s_message` VALUES ('201512022254098b360a82-9904-11e5-aca0-dd6356859972', '144', null, null, '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', null, '2015-12-02 22:54:10', '1', null);
INSERT INTO `s_message` VALUES ('201512022254098b360b0e-9904-11e5-aca0-dd6356859972', '145', null, null, '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', null, '2015-12-02 22:54:10', '1', null);
INSERT INTO `s_message` VALUES ('20151202225518b45f60ac-9904-11e5-aca0-dd6356859972', '1', '1', '2015-12-02 22:55:23', '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', '1', '2015-12-02 22:55:19', '1', null);
INSERT INTO `s_message` VALUES ('20151202225518b45f6372-9904-11e5-aca0-dd6356859972', '102', null, null, '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', null, '2015-12-02 22:55:19', '1', null);
INSERT INTO `s_message` VALUES ('20151202225518b45f63f4-9904-11e5-aca0-dd6356859972', '144', null, null, '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', null, '2015-12-02 22:55:19', '1', null);
INSERT INTO `s_message` VALUES ('20151202225518b45f644e-9904-11e5-aca0-dd6356859972', '145', null, null, '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', null, '2015-12-02 22:55:19', '1', null);
INSERT INTO `s_message` VALUES ('20151202225640e4d76360-9904-11e5-aca0-dd6356859972', '1', '1', '2015-12-02 22:56:47', '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', '1', '2015-12-02 22:56:40', '1', null);
INSERT INTO `s_message` VALUES ('20151202225640e4d765b8-9904-11e5-aca0-dd6356859972', '102', null, null, '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', null, '2015-12-02 22:56:40', '1', null);
INSERT INTO `s_message` VALUES ('20151202225640e4d766b2-9904-11e5-aca0-dd6356859972', '144', null, null, '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', null, '2015-12-02 22:56:40', '1', null);
INSERT INTO `s_message` VALUES ('20151202225640e4d76720-9904-11e5-aca0-dd6356859972', '145', null, null, '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', null, '2015-12-02 22:56:40', '1', null);
INSERT INTO `s_message` VALUES ('20151202225739081ba93a-9905-11e5-aca0-dd6356859972', '1', '1', '2015-12-02 23:07:55', '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', '1', '2015-12-02 22:57:39', '1', null);
INSERT INTO `s_message` VALUES ('20151202225739081bac1e-9905-11e5-aca0-dd6356859972', '102', null, null, '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', null, '2015-12-02 22:57:39', '1', null);
INSERT INTO `s_message` VALUES ('20151202225739081bacbe-9905-11e5-aca0-dd6356859972', '144', null, null, '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', null, '2015-12-02 22:57:39', '1', null);
INSERT INTO `s_message` VALUES ('20151202225739081bad22-9905-11e5-aca0-dd6356859972', '145', null, null, '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', null, '2015-12-02 22:57:39', '1', null);
INSERT INTO `s_message` VALUES ('201512022312080dd619b2-9907-11e5-aca0-dd6356859972', '1', '1', '2015-12-02 23:12:12', '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', '1', '2015-12-02 23:12:08', '1', null);
INSERT INTO `s_message` VALUES ('201512022312080dd61f3e-9907-11e5-aca0-dd6356859972', '102', null, null, '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', null, '2015-12-02 23:12:08', '1', null);
INSERT INTO `s_message` VALUES ('201512022312080dd61fe8-9907-11e5-aca0-dd6356859972', '144', null, null, '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', null, '2015-12-02 23:12:08', '1', null);
INSERT INTO `s_message` VALUES ('201512022312080dd620ce-9907-11e5-aca0-dd6356859972', '145', null, null, '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', null, '2015-12-02 23:12:08', '1', null);
INSERT INTO `s_message` VALUES ('2015120223123920cd7484-9907-11e5-aca0-dd6356859972', '1', '1', '2015-12-02 23:12:44', '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', '1', '2015-12-02 23:12:40', '1', null);
INSERT INTO `s_message` VALUES ('2015120223123920cdb6a6-9907-11e5-aca0-dd6356859972', '102', null, null, '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', null, '2015-12-02 23:12:40', '1', null);
INSERT INTO `s_message` VALUES ('2015120223123920cdba48-9907-11e5-aca0-dd6356859972', '144', null, null, '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', null, '2015-12-02 23:12:40', '1', null);
INSERT INTO `s_message` VALUES ('2015120223123920cdbb74-9907-11e5-aca0-dd6356859972', '145', null, null, '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', null, '2015-12-02 23:12:40', '1', null);
INSERT INTO `s_message` VALUES ('201512022315579699d482-9907-11e5-aca0-dd6356859972', '1', '1', '2015-12-02 23:16:14', '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', '1', '2015-12-02 23:15:58', '1', null);
INSERT INTO `s_message` VALUES ('20151202231557969a0a38-9907-11e5-aca0-dd6356859972', '102', null, null, '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', null, '2015-12-02 23:15:58', '1', null);
INSERT INTO `s_message` VALUES ('20151202231557969a0b82-9907-11e5-aca0-dd6356859972', '144', null, null, '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', null, '2015-12-02 23:15:58', '1', null);
INSERT INTO `s_message` VALUES ('20151202231557969a0bd2-9907-11e5-aca0-dd6356859972', '145', null, null, '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', null, '2015-12-02 23:15:58', '1', null);
INSERT INTO `s_message` VALUES ('201512022330099270564a-9909-11e5-aca0-dd6356859972', '1', null, null, '系统公告', '系统公告', '第二个', '/sys/notice/view.do?isModel=true&id=261', '第二个', '1', '2015-12-02 23:30:10', '1', null);
INSERT INTO `s_message` VALUES ('2015120223300992706892-9909-11e5-aca0-dd6356859972', '102', null, null, '系统公告', '系统公告', '第二个', '/sys/notice/view.do?isModel=true&id=261', '第二个', null, '2015-12-02 23:30:10', '1', null);
INSERT INTO `s_message` VALUES ('2015120223300992706a0e-9909-11e5-aca0-dd6356859972', '144', null, null, '系统公告', '系统公告', '第二个', '/sys/notice/view.do?isModel=true&id=261', '第二个', null, '2015-12-02 23:30:10', '1', null);
INSERT INTO `s_message` VALUES ('2015120223300992706ae0-9909-11e5-aca0-dd6356859972', '145', null, null, '系统公告', '系统公告', '第二个', '/sys/notice/view.do?isModel=true&id=261', '第二个', null, '2015-12-02 23:30:10', '1', null);
INSERT INTO `s_message` VALUES ('20151202233010933b7cbc-9909-11e5-aca0-dd6356859972', '1', null, null, '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', '1', '2015-12-02 23:30:11', '1', null);
INSERT INTO `s_message` VALUES ('20151202233010933bbcfe-9909-11e5-aca0-dd6356859972', '102', null, null, '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', null, '2015-12-02 23:30:11', '1', null);
INSERT INTO `s_message` VALUES ('20151202233010933bbea2-9909-11e5-aca0-dd6356859972', '144', null, null, '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', null, '2015-12-02 23:30:11', '1', null);
INSERT INTO `s_message` VALUES ('20151202233010933bbf9c-9909-11e5-aca0-dd6356859972', '145', null, null, '系统公告', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', null, '2015-12-02 23:30:11', '1', null);
INSERT INTO `s_message` VALUES ('201512022337209330721c-990a-11e5-aca0-dd6356859972', '1', '1', '2015-12-02 23:40:51', '系统公告-系统通知', '系统公告', '第一个通知', '/sys/notice/view.do?isModel=true&id=241', '这一个第一个通知的内容', '1', '2015-12-02 23:37:20', '1', null);
INSERT INTO `s_message` VALUES ('20151202233720933077f8-990a-11e5-aca0-dd6356859972', '102', null, null, '系统公告-系统通知', '系统公告', '第一个通知', '/sys/notice/view.do?isModel=true&id=241', '这一个第一个通知的内容', null, '2015-12-02 23:37:20', '1', null);
INSERT INTO `s_message` VALUES ('2015120223372093307884-990a-11e5-aca0-dd6356859972', '144', null, null, '系统公告-系统通知', '系统公告', '第一个通知', '/sys/notice/view.do?isModel=true&id=241', '这一个第一个通知的内容', null, '2015-12-02 23:37:20', '1', null);
INSERT INTO `s_message` VALUES ('2015120223372093307924-990a-11e5-aca0-dd6356859972', '145', null, null, '系统公告-系统通知', '系统公告', '第一个通知', '/sys/notice/view.do?isModel=true&id=241', '这一个第一个通知的内容', null, '2015-12-02 23:37:20', '1', null);
INSERT INTO `s_message` VALUES ('2015120223372294c6e764-990a-11e5-aca0-dd6356859972', '1', '1', '2015-12-02 23:37:58', '系统公告-2', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', '1', '2015-12-02 23:37:23', '1', null);
INSERT INTO `s_message` VALUES ('2015120223372294c710a4-990a-11e5-aca0-dd6356859972', '102', null, null, '系统公告-2', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', null, '2015-12-02 23:37:23', '1', null);
INSERT INTO `s_message` VALUES ('2015120223372294c73e3a-990a-11e5-aca0-dd6356859972', '144', null, null, '系统公告-2', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', null, '2015-12-02 23:37:23', '1', null);
INSERT INTO `s_message` VALUES ('2015120223372294c73f52-990a-11e5-aca0-dd6356859972', '145', null, null, '系统公告-2', '系统公告', '1231231123', '/sys/notice/view.do?isModel=true&id=321', '123123', null, '2015-12-02 23:37:23', '1', null);
INSERT INTO `s_message` VALUES ('201512022343557eb4bc5c-990b-11e5-aca0-dd6356859972', '1', '1', '2015-12-02 23:54:41', '系统公告-使用说明', '系统公告', '这是结果', '/sys/notice/view.do?isModel=true&id=341', '相当 多的内容 \r\n请仔细查看\r\n还有超连接呢：\r\n<a href=\"www.baidu.com\"> 内容啊</a>', '1', '2015-12-02 23:43:55', '1', null);
INSERT INTO `s_message` VALUES ('201512022343557eb4ea42-990b-11e5-aca0-dd6356859972', '102', null, null, '系统公告-使用说明', '系统公告', '这是结果', '/sys/notice/view.do?isModel=true&id=341', '相当 多的内容 \r\n请仔细查看\r\n还有超连接呢：\r\n<a href=\"www.baidu.com\"> 内容啊</a>', null, '2015-12-02 23:43:55', '1', null);
INSERT INTO `s_message` VALUES ('201512022343557eb4ff78-990b-11e5-aca0-dd6356859972', '144', null, null, '系统公告-使用说明', '系统公告', '这是结果', '/sys/notice/view.do?isModel=true&id=341', '相当 多的内容 \r\n请仔细查看\r\n还有超连接呢：\r\n<a href=\"www.baidu.com\"> 内容啊</a>', null, '2015-12-02 23:43:55', '1', null);
INSERT INTO `s_message` VALUES ('201512022343557eb50086-990b-11e5-aca0-dd6356859972', '145', null, null, '系统公告-使用说明', '系统公告', '这是结果', '/sys/notice/view.do?isModel=true&id=341', '相当 多的内容 \r\n请仔细查看\r\n还有超连接呢：\r\n<a href=\"www.baidu.com\"> 内容啊</a>', null, '2015-12-02 23:43:55', '1', null);
INSERT INTO `s_message` VALUES ('201512031729215591695c-99a0-11e5-aca0-dd6356859972', '1', '1', '2015-12-03 17:34:47', '系统公告-使用说明', '系统公告', '这是结果', '/sys/notice/view.do?isModel=true&id=341', '相当 多的内容 \r\n请仔细查看\r\n还有超连接呢：\r\n<a href=\"www.baidu.com\"> 内容啊</a>', '1', '2015-12-03 17:29:21', '1', null);
INSERT INTO `s_message` VALUES ('2015120317292155919792-99a0-11e5-aca0-dd6356859972', '102', null, null, '系统公告-使用说明', '系统公告', '这是结果', '/sys/notice/view.do?isModel=true&id=341', '相当 多的内容 \r\n请仔细查看\r\n还有超连接呢：\r\n<a href=\"www.baidu.com\"> 内容啊</a>', null, '2015-12-03 17:29:21', '1', null);
INSERT INTO `s_message` VALUES ('20151203172921559198c8-99a0-11e5-aca0-dd6356859972', '144', null, null, '系统公告-使用说明', '系统公告', '这是结果', '/sys/notice/view.do?isModel=true&id=341', '相当 多的内容 \r\n请仔细查看\r\n还有超连接呢：\r\n<a href=\"www.baidu.com\"> 内容啊</a>', null, '2015-12-03 17:29:21', '1', null);
INSERT INTO `s_message` VALUES ('2015120317292155919918-99a0-11e5-aca0-dd6356859972', '145', null, null, '系统公告-使用说明', '系统公告', '这是结果', '/sys/notice/view.do?isModel=true&id=341', '相当 多的内容 \r\n请仔细查看\r\n还有超连接呢：\r\n<a href=\"www.baidu.com\"> 内容啊</a>', null, '2015-12-03 17:29:21', '1', null);
INSERT INTO `s_message` VALUES ('20151203173132a391771e-99a0-11e5-aca0-dd6356859972', '1', '1', '2015-12-03 17:35:27', '系统公告', '系统公告', '1231231', '/sys/notice/view.do?isModel=true&id=361', '<a href=\"www.baidu.com\"> 内容啊</a>', '1', '2015-12-03 17:31:32', '1', null);
INSERT INTO `s_message` VALUES ('20151203173132a3917eb2-99a0-11e5-aca0-dd6356859972', '102', null, null, '系统公告', '系统公告', '1231231', '/sys/notice/view.do?isModel=true&id=361', '<a href=\"www.baidu.com\"> 内容啊</a>', null, '2015-12-03 17:31:32', '1', null);
INSERT INTO `s_message` VALUES ('20151203173132a39180d8-99a0-11e5-aca0-dd6356859972', '144', null, null, '系统公告', '系统公告', '1231231', '/sys/notice/view.do?isModel=true&id=361', '<a href=\"www.baidu.com\"> 内容啊</a>', null, '2015-12-03 17:31:32', '1', null);
INSERT INTO `s_message` VALUES ('20151203173132a39181dc-99a0-11e5-aca0-dd6356859972', '145', null, null, '系统公告', '系统公告', '1231231', '/sys/notice/view.do?isModel=true&id=361', '<a href=\"www.baidu.com\"> 内容啊</a>', null, '2015-12-03 17:31:32', '1', null);
INSERT INTO `s_message` VALUES ('20151203205926aef3fb00-99bd-11e5-aca0-dd6356859972', '1', null, null, '系统公告', '系统公告', '1231231', '/sys/notice/view.do?isModel=true&id=361', '<a href=\"www.baidu.com\"> 内容啊</a>', '1', '2015-12-03 20:59:27', '1', null);
INSERT INTO `s_message` VALUES ('20151203205926aef44bf0-99bd-11e5-aca0-dd6356859972', '102', null, null, '系统公告', '系统公告', '1231231', '/sys/notice/view.do?isModel=true&id=361', '<a href=\"www.baidu.com\"> 内容啊</a>', null, '2015-12-03 20:59:27', '1', null);
INSERT INTO `s_message` VALUES ('20151203205926aef45064-99bd-11e5-aca0-dd6356859972', '144', null, null, '系统公告', '系统公告', '1231231', '/sys/notice/view.do?isModel=true&id=361', '<a href=\"www.baidu.com\"> 内容啊</a>', null, '2015-12-03 20:59:27', '1', null);
INSERT INTO `s_message` VALUES ('20151203205926aef4517c-99bd-11e5-aca0-dd6356859972', '145', null, null, '系统公告', '系统公告', '1231231', '/sys/notice/view.do?isModel=true&id=361', '<a href=\"www.baidu.com\"> 内容啊</a>', null, '2015-12-03 20:59:27', '1', null);
INSERT INTO `s_message` VALUES ('20151203224751d432fbc8-99cc-11e5-aca0-dd6356859972', '1', '1', '2015-12-05 14:08:56', '系统公告-使用说明', '系统公告', '这是结果', '/sys/notice/view.do?isModel=true&id=341', '相当 多的内容 \r\n请仔细查看\r\n还有超连接呢：\r\n<a href=\"www.baidu.com\"> 内容啊</a>', '1', '2015-12-03 22:47:52', '1', null);
INSERT INTO `s_message` VALUES ('20151203224751d43390d8-99cc-11e5-aca0-dd6356859972', '102', null, null, '系统公告-使用说明', '系统公告', '这是结果', '/sys/notice/view.do?isModel=true&id=341', '相当 多的内容 \r\n请仔细查看\r\n还有超连接呢：\r\n<a href=\"www.baidu.com\"> 内容啊</a>', null, '2015-12-03 22:47:52', '1', null);
INSERT INTO `s_message` VALUES ('20151203224751d4339330-99cc-11e5-aca0-dd6356859972', '144', null, null, '系统公告-使用说明', '系统公告', '这是结果', '/sys/notice/view.do?isModel=true&id=341', '相当 多的内容 \r\n请仔细查看\r\n还有超连接呢：\r\n<a href=\"www.baidu.com\"> 内容啊</a>', null, '2015-12-03 22:47:52', '1', null);
INSERT INTO `s_message` VALUES ('20151203224751d43393e4-99cc-11e5-aca0-dd6356859972', '145', null, null, '系统公告-使用说明', '系统公告', '这是结果', '/sys/notice/view.do?isModel=true&id=341', '相当 多的内容 \r\n请仔细查看\r\n还有超连接呢：\r\n<a href=\"www.baidu.com\"> 内容啊</a>', null, '2015-12-03 22:47:52', '1', null);
INSERT INTO `s_message` VALUES ('20151208112229e9cf4be4-9d5a-11e5-97e5-af15597f73c4', '1', '1', '2015-12-08 11:22:35', '系统公告', '系统公告', '1231231', '/sys/notice/view.do?isModel=true&id=361', '<a href=\"www.baidu.com\"> 内容啊</a>', null, '2015-12-08 11:22:30', '1', null);
INSERT INTO `s_message` VALUES ('20151208112229e9cf9ffe-9d5a-11e5-97e5-af15597f73c4', '102', null, null, '系统公告', '系统公告', '1231231', '/sys/notice/view.do?isModel=true&id=361', '<a href=\"www.baidu.com\"> 内容啊</a>', null, '2015-12-08 11:22:30', '1', null);
INSERT INTO `s_message` VALUES ('20151208112229e9cfcf24-9d5a-11e5-97e5-af15597f73c4', '144', null, null, '系统公告', '系统公告', '1231231', '/sys/notice/view.do?isModel=true&id=361', '<a href=\"www.baidu.com\"> 内容啊</a>', null, '2015-12-08 11:22:30', '1', null);
INSERT INTO `s_message` VALUES ('20151208112229e9cfd078-9d5a-11e5-97e5-af15597f73c4', '145', null, null, '系统公告', '系统公告', '1231231', '/sys/notice/view.do?isModel=true&id=361', '<a href=\"www.baidu.com\"> 内容啊</a>', null, '2015-12-08 11:22:30', '1', null);
INSERT INTO `s_message` VALUES ('20151223153530be89ddca-a947-11e5-8cf7-a49e2c018082', '1', '1', '2017-06-05 16:02:07', '系统公告', '系统公告', '1231123', '/sys/notice/view.do?isModel=true&id=401', '123123', null, '2015-12-23 15:35:31', '1', null);
INSERT INTO `s_message` VALUES ('20151223153530be89e2c0-a947-11e5-8cf7-a49e2c018082', '102', null, null, '系统公告', '系统公告', '1231123', '/sys/notice/view.do?isModel=true&id=401', '123123', null, '2015-12-23 15:35:31', '1', null);
INSERT INTO `s_message` VALUES ('20151223153530be89e392-a947-11e5-8cf7-a49e2c018082', '144', null, null, '系统公告', '系统公告', '1231123', '/sys/notice/view.do?isModel=true&id=401', '123123', null, '2015-12-23 15:35:31', '1', null);
INSERT INTO `s_message` VALUES ('20151223153530be89e414-a947-11e5-8cf7-a49e2c018082', '145', null, null, '系统公告', '系统公告', '1231123', '/sys/notice/view.do?isModel=true&id=401', '123123', null, '2015-12-23 15:35:31', '1', null);

-- ----------------------------
-- Table structure for s_module
-- ----------------------------
DROP TABLE IF EXISTS `s_module`;
CREATE TABLE `s_module` (
  `id` bigint(50) NOT NULL,
  `code` varchar(30) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `forwardUrl` varchar(200) DEFAULT NULL,
  `demo` varchar(200) DEFAULT NULL,
  `icon` varchar(20) DEFAULT NULL,
  `parentId` bigint(50) DEFAULT NULL,
  `moduleType` varchar(50) DEFAULT 'sys',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='S_Module';

-- ----------------------------
-- Records of s_module
-- ----------------------------
INSERT INTO `s_module` VALUES ('-1', '0', '顶级结点', '', '', null, '-2', 'sys');
INSERT INTO `s_module` VALUES ('7', '018', '系统管理', null, null, null, '-1', 'sys');
INSERT INTO `s_module` VALUES ('38', '018000003', '机构管理', '/sys/organization/list.do', '', '', '350', 'sys');
INSERT INTO `s_module` VALUES ('41', '018000004', '系统用户管理', '/sys/user/list.do', '系统用户管理', '', '350', 'sys');
INSERT INTO `s_module` VALUES ('44', '018000007', '用户组维护', '/sys/group/list.do', '', '', '350', 'sys');
INSERT INTO `s_module` VALUES ('350', '018000', '基础数据管理', '', '', null, '7', 'sys');
INSERT INTO `s_module` VALUES ('351', '018006', '权限管理', '/sys/group/groupModuleList.do', '', 'list', '7', 'sys');
INSERT INTO `s_module` VALUES ('352', '018000009', '功能模块管理', '/sys/module/list.do', '', '', '350', 'sys');
INSERT INTO `s_module` VALUES ('568', '018000012', '分类管理', '/sys/category/list.do', '', '', '350', 'sys');
INSERT INTO `s_module` VALUES ('588', '018009', '日志查询', '', '', '', '7', 'sys');
INSERT INTO `s_module` VALUES ('589', '018009003', '登录日志查询', '/sys/loginLog/list.do', '', '', '588', 'sys');
INSERT INTO `s_module` VALUES ('608', '018009006', '操作日志查询', '/sys/operationLog/list.do', '', '', '588', 'sys');
INSERT INTO `s_module` VALUES ('628', '018000015', '资源管理', '/sys/resource/list.do', '', '', '350', 'sys');
INSERT INTO `s_module` VALUES ('748', '018000008', '用户组用户管理', '/sys/group/groupUserManagerList.do', '', '', '350', 'sys');
INSERT INTO `s_module` VALUES ('1008', '018012', '系统公告管理', '/sys/notice/list.do', '', 'bell', '7', 'sys');
INSERT INTO `s_module` VALUES ('1028', 'message', '站内信息', '/sys/message/list.do', '', 'bell-alt', '-1', 'sys');
INSERT INTO `s_module` VALUES ('1068', '023', '资讯管理', '', '', 'file', '-1', 'sys');
INSERT INTO `s_module` VALUES ('1069', '023002', '文章管理', '/cms/articles/list.do', '', '', '1068', 'sys');
INSERT INTO `s_module` VALUES ('1088', '023006', '文章审核', '/cms/articles/list.do?method=approve', '', '', '1068', 'sys');
INSERT INTO `s_module` VALUES ('1108', '018009009', '资源操作日志查询', '/sys/resource/resourceLog/list.do', '', '', '588', 'sys');
INSERT INTO `s_module` VALUES ('1288', '018000012', '字典管理', '/sys/dictionary/list.do', '', '', '350', 'sys');
INSERT INTO `s_module` VALUES ('1348', '018022', '系统参数配置管理', '/sys/platformProperty/list.do', '', '', '7', 'sys');

-- ----------------------------
-- Table structure for s_notice
-- ----------------------------
DROP TABLE IF EXISTS `s_notice`;
CREATE TABLE `s_notice` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `content` varchar(1000) DEFAULT NULL COMMENT '内容',
  `scope` varchar(100) DEFAULT NULL COMMENT '范围',
  `scopeDetails` varchar(500) DEFAULT NULL COMMENT '范围详情',
  `publishPersonId` bigint(20) DEFAULT NULL COMMENT '发布人',
  `publishTime` datetime DEFAULT NULL COMMENT '发布时间',
  `createPersonId` bigint(20) DEFAULT NULL COMMENT '创建人',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `status` int(11) DEFAULT NULL COMMENT '状态',
  `type` varchar(50) DEFAULT NULL COMMENT '类型',
  `resourceIds` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统公告';

-- ----------------------------
-- Records of s_notice
-- ----------------------------

-- ----------------------------
-- Table structure for s_organization
-- ----------------------------
DROP TABLE IF EXISTS `s_organization`;
CREATE TABLE `s_organization` (
  `id` bigint(20) NOT NULL,
  `code` varchar(30) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `typeId` bigint(20) DEFAULT NULL,
  `parentOrgId` bigint(20) DEFAULT NULL,
  `cityId` bigint(11) DEFAULT NULL,
  `inputUserId` varchar(50) DEFAULT NULL,
  `inputTime` datetime DEFAULT NULL,
  `lastModifiedUserId` varchar(50) DEFAULT NULL,
  `lastModifiedTime` datetime DEFAULT NULL,
  `postCode` varchar(6) DEFAULT NULL,
  `linkMan` varchar(50) DEFAULT NULL,
  `linkTel` varchar(50) DEFAULT NULL,
  `mobilePhone` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `demo` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_S_Dept_S_DeptType` (`typeId`),
  KEY `FK_S_Dept_S_Site` (`cityId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='S_Dept';

-- ----------------------------
-- Records of s_organization
-- ----------------------------
INSERT INTO `s_organization` VALUES ('-1', null, '顶级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `s_organization` VALUES ('1', '0001', '系统维护单位', '10', '-1', '26', '1', '2014-12-16 12:01:00', '1', '2015-08-07 13:30:00', null, '', '', '', '', '', '', '0', '');
INSERT INTO `s_organization` VALUES ('303', '0002', '互联网分公司', '4', '-1', null, null, null, null, null, null, '', '', '', '', '', '', null, '');

-- ----------------------------
-- Table structure for s_org_bank_account
-- ----------------------------
DROP TABLE IF EXISTS `s_org_bank_account`;
CREATE TABLE `s_org_bank_account` (
  `id` bigint(20) NOT NULL,
  `orgId` bigint(50) DEFAULT NULL COMMENT '所属机构',
  `bankAccountType` int(11) DEFAULT NULL COMMENT '账号类型（对公、对私）',
  `bank` varchar(50) DEFAULT NULL COMMENT '银行代码',
  `subsidiaryBank` varchar(50) DEFAULT NULL COMMENT '分行名称',
  `accountHolder` varchar(50) DEFAULT NULL COMMENT '开户人(公司）',
  `accountNo` varchar(50) DEFAULT NULL COMMENT '账号',
  `status` int(11) DEFAULT '0' COMMENT '状态（0：在用；1停用）：',
  `lastModifyUserId` bigint(50) DEFAULT NULL,
  `lastModifyDate` datetime DEFAULT NULL,
  `bankCityId` int(11) DEFAULT NULL COMMENT '银行所在城市ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_org_bank_account
-- ----------------------------
INSERT INTO `s_org_bank_account` VALUES ('1', null, '2', 'ICBC', '', '邓英杰', '6212262502000059835', null, '222', '2016-02-22 11:49:30', null);

-- ----------------------------
-- Table structure for s_platform_property
-- ----------------------------
DROP TABLE IF EXISTS `s_platform_property`;
CREATE TABLE `s_platform_property` (
  `id` bigint(50) NOT NULL,
  `name` varchar(45) DEFAULT NULL COMMENT '参数名称',
  `code` varchar(45) DEFAULT NULL COMMENT '参数编码',
  `value` varchar(45) DEFAULT NULL COMMENT '参数值',
  `companyId` bigint(11) DEFAULT NULL,
  `orgId` bigint(11) DEFAULT NULL,
  `lastModifyTime` datetime DEFAULT NULL,
  `lastModifyUser` bigint(50) DEFAULT NULL,
  `remark` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统参数表';

-- ----------------------------
-- Records of s_platform_property
-- ----------------------------
INSERT INTO `s_platform_property` VALUES ('1', '客栈引流分成比例', 'hotelPercentage', '0.1', null, null, null, null, '');
INSERT INTO `s_platform_property` VALUES ('2', '结算周期', 'settlementPeriod', '28', null, null, null, null, '每月15号出结算账单，不包括15号已经处理完成的订单');

-- ----------------------------
-- Table structure for s_resource
-- ----------------------------
DROP TABLE IF EXISTS `s_resource`;
CREATE TABLE `s_resource` (
  `id` bigint(20) NOT NULL,
  `resName` varchar(100) DEFAULT NULL COMMENT '资源名称',
  `resType` varchar(50) DEFAULT NULL COMMENT '资源类型',
  `resPath` varchar(200) DEFAULT NULL COMMENT '存储路径',
  `params` varchar(500) DEFAULT NULL COMMENT '参数',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `createUserId` bigint(50) DEFAULT NULL COMMENT '创建人',
  `orgId` bigint(11) DEFAULT NULL COMMENT '所属组织机构',
  `fileType` varchar(50) DEFAULT NULL COMMENT '文件类型',
  `downloadCount` bigint(20) DEFAULT '0',
  `browseCount` bigint(20) DEFAULT '0',
  `className` varchar(100) DEFAULT NULL,
  `primaryKey` varchar(100) DEFAULT NULL,
  `orderNo` int(11) DEFAULT '0' COMMENT '排序号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_resource
-- ----------------------------
INSERT INTO `s_resource` VALUES ('3241', '01.jpg', 'hotel/logo', '/uploadFile/hotel/logo/3241.jpg', null, '2016-02-22 10:29:40', '222', '283', null, '0', '0', null, null, '0');
INSERT INTO `s_resource` VALUES ('3242', 'freego.png', 'shopkeeper/logo', '/uploadFile/shopkeeper/logo/3242.png', null, '2016-02-22 10:32:11', '222', '283', null, '0', '0', null, null, '0');
INSERT INTO `s_resource` VALUES ('3243', 'QQ图片20160222103957.jpg', 'shopkeeper/qrCode', '/uploadFile/shopkeeper/qrCode/3243.jpg', null, '2016-02-22 10:36:03', '222', '283', null, '0', '0', null, null, '0');
INSERT INTO `s_resource` VALUES ('3244', '01.jpg', 'hotel/logo', '/uploadFile/hotel/logo/3244.jpg', null, '2016-02-22 10:39:04', '222', '283', null, '0', '0', null, null, '0');
INSERT INTO `s_resource` VALUES ('3246', '01.jpg', 'hotel', '/uploadFile/hotel/3246.jpg', '', '2016-02-22 10:47:52', '222', '283', null, '0', '0', 'com.wiwi.freego.hotel.model.Hotel', '341', '1');
INSERT INTO `s_resource` VALUES ('3247', '02.jpg', 'hotel', '/uploadFile/hotel/3247.jpg', '', '2016-02-22 10:49:11', '222', '283', null, '0', '0', 'com.wiwi.freego.hotel.model.Hotel', '341', '2');
INSERT INTO `s_resource` VALUES ('3248', '03.jpg', 'hotel', '/uploadFile/hotel/3248.jpg', '', '2016-02-22 10:50:36', '222', '283', null, '0', '0', 'com.wiwi.freego.hotel.model.Hotel', '341', '3');
INSERT INTO `s_resource` VALUES ('3250', '05.jpg', 'hotel', '/uploadFile/hotel/3250.jpg', '', '2016-02-22 10:52:53', '222', '283', null, '0', '0', 'com.wiwi.freego.hotel.model.Hotel', '341', '5');
INSERT INTO `s_resource` VALUES ('3251', '06.jpg', 'hotel', '/uploadFile/hotel/3251.jpg', '', '2016-02-22 10:54:26', '222', '283', null, '0', '0', 'com.wiwi.freego.hotel.model.Hotel', '341', '6');
INSERT INTO `s_resource` VALUES ('3252', '07.jpg', 'hotel', '/uploadFile/hotel/3252.jpg', '', '2016-02-22 10:56:44', '222', '283', null, '0', '0', 'com.wiwi.freego.hotel.model.Hotel', '341', '7');
INSERT INTO `s_resource` VALUES ('3253', '08.jpg', 'hotel', '/uploadFile/hotel/3253.jpg', '', '2016-02-22 10:57:47', '222', '283', null, '0', '0', 'com.wiwi.freego.hotel.model.Hotel', '341', '8');
INSERT INTO `s_resource` VALUES ('3254', '01.jpg', 'roomType/logo', '/uploadFile/roomType/logo/3254.jpg', null, '2016-02-22 11:00:12', '222', '283', null, '0', '0', null, null, '0');
INSERT INTO `s_resource` VALUES ('3255', '01.jpg', 'roomType/logo', '/uploadFile/roomType/logo/3255.jpg', null, '2016-02-22 11:02:32', '222', '283', null, '0', '0', null, null, '0');
INSERT INTO `s_resource` VALUES ('3256', '01.jpg', 'roomType/logo', '/uploadFile/roomType/logo/3256.jpg', null, '2016-02-22 11:05:11', '222', '283', null, '0', '0', null, null, '0');
INSERT INTO `s_resource` VALUES ('3257', '02.jpg', 'roomType/logo', '/uploadFile/roomType/logo/3257.jpg', null, '2016-02-22 11:10:19', '222', '283', null, '0', '0', null, null, '0');
INSERT INTO `s_resource` VALUES ('3258', '02.jpg', 'roomType', '/uploadFile/roomType/3258.jpg', '', '2016-02-22 11:12:22', '222', '283', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '384', '1');
INSERT INTO `s_resource` VALUES ('3259', '03.jpg', 'roomType', '/uploadFile/roomType/3259.jpg', '', '2016-02-22 11:13:41', '222', '283', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '384', '2');
INSERT INTO `s_resource` VALUES ('3260', '04.jpg', 'roomType', '/uploadFile/roomType/3260.jpg', '', '2016-02-22 11:14:50', '222', '283', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '384', '3');
INSERT INTO `s_resource` VALUES ('3261', '07.jpg', 'roomType', '/uploadFile/roomType/3261.jpg', '', '2016-02-22 11:15:49', '222', '283', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '384', '4');
INSERT INTO `s_resource` VALUES ('3262', '05.jpg', 'roomType', '/uploadFile/roomType/3262.jpg', '', '2016-02-22 11:16:57', '222', '283', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '384', '5');
INSERT INTO `s_resource` VALUES ('3263', '01.jpg', 'roomType', '/uploadFile/roomType/3263.jpg', '', '2016-02-22 11:22:52', '222', '283', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '383', '1');
INSERT INTO `s_resource` VALUES ('3264', '03.jpg', 'roomType', '/uploadFile/roomType/3264.jpg', '', '2016-02-22 11:24:33', '222', '283', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '383', '2');
INSERT INTO `s_resource` VALUES ('3265', '捕获.jpg', 'hotel/logo', '/uploadFile/hotel/logo/3265.jpg', null, '2016-02-22 11:25:00', '223', '284', null, '0', '0', null, null, '0');
INSERT INTO `s_resource` VALUES ('3266', '05.jpg', 'roomType', '/uploadFile/roomType/3266.jpg', '', '2016-02-22 11:25:43', '222', '283', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '383', '3');
INSERT INTO `s_resource` VALUES ('3267', 'freego.jpg', 'shopkeeper/logo', '/uploadFile/shopkeeper/logo/3267.jpg', null, '2016-02-22 11:26:54', '223', '284', null, '0', '0', null, null, '0');
INSERT INTO `s_resource` VALUES ('3268', '06.jpg', 'roomType', '/uploadFile/roomType/3268.jpg', '', '2016-02-22 11:27:44', '222', '283', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '383', '4');
INSERT INTO `s_resource` VALUES ('3269', '捕获.jpg', 'hotel/logo', '/uploadFile/hotel/logo/3269.jpg', null, '2016-02-22 11:28:28', '223', '284', null, '0', '0', null, null, '0');
INSERT INTO `s_resource` VALUES ('3270', '06.jpg', 'roomType', '/uploadFile/roomType/3270.jpg', '', '2016-02-22 11:29:07', '222', '283', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '382', '1');
INSERT INTO `s_resource` VALUES ('3271', '04.jpg', 'roomType', '/uploadFile/roomType/3271.jpg', '', '2016-02-22 11:29:58', '222', '283', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '382', '2');
INSERT INTO `s_resource` VALUES ('3272', '02.jpg', 'roomType', '/uploadFile/roomType/3272.jpg', '', '2016-02-22 11:31:00', '222', '283', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '382', '3');
INSERT INTO `s_resource` VALUES ('3273', '05.jpg', 'roomType', '/uploadFile/roomType/3273.jpg', '', '2016-02-22 11:32:22', '222', '283', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '382', '4');
INSERT INTO `s_resource` VALUES ('3274', '01.jpg', 'roomType', '/uploadFile/roomType/3274.jpg', '', '2016-02-22 11:34:10', '222', '283', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '381', '5');
INSERT INTO `s_resource` VALUES ('3275', '02.jpg', 'roomType', '/uploadFile/roomType/3275.jpg', '', '2016-02-22 11:35:14', '222', '283', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '381', '2');
INSERT INTO `s_resource` VALUES ('3276', '07.jpg', 'roomType', '/uploadFile/roomType/3276.jpg', '', '2016-02-22 11:36:15', '222', '283', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '381', '3');
INSERT INTO `s_resource` VALUES ('3277', '04.jpg', 'roomType', '/uploadFile/roomType/3277.jpg', '', '2016-02-22 11:37:15', '222', '283', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '381', '4');
INSERT INTO `s_resource` VALUES ('3278', '08.jpg', 'roomType', '/uploadFile/roomType/3278.jpg', '', '2016-02-22 11:38:30', '222', '283', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '381', '6');
INSERT INTO `s_resource` VALUES ('3279', '捕获.jpg', 'roomType/logo', '/uploadFile/roomType/logo/3279.jpg', null, '2016-02-22 11:41:53', '223', '284', null, '0', '0', null, null, '0');
INSERT INTO `s_resource` VALUES ('3280', '102.jpg', 'roomType/logo', '/uploadFile/roomType/logo/3280.jpg', null, '2016-02-22 11:45:11', '223', '284', null, '0', '0', null, null, '0');
INSERT INTO `s_resource` VALUES ('3281', '04.jpg', 'roomType', '/uploadFile/roomType/3281.jpg', '', '2016-02-22 11:49:12', '223', '284', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '385', '0');
INSERT INTO `s_resource` VALUES ('3282', '02.jpg', 'roomType', '/uploadFile/roomType/3282.jpg', '', '2016-02-22 11:49:35', '223', '284', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '385', '0');
INSERT INTO `s_resource` VALUES ('3283', '07.jpg', 'roomType', '/uploadFile/roomType/3283.jpg', '', '2016-02-22 11:49:50', '223', '284', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '385', '0');
INSERT INTO `s_resource` VALUES ('3284', '06.jpg', 'roomType', '/uploadFile/roomType/3284.jpg', '', '2016-02-22 11:50:03', '223', '284', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '385', '0');
INSERT INTO `s_resource` VALUES ('3285', '05.jpg', 'roomType', '/uploadFile/roomType/3285.jpg', '', '2016-02-22 11:50:18', '223', '284', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '385', '0');
INSERT INTO `s_resource` VALUES ('3286', '01.jpg', 'roomType', '/uploadFile/roomType/3286.jpg', '', '2016-02-22 11:50:52', '223', '284', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '386', '0');
INSERT INTO `s_resource` VALUES ('3287', '05.jpg', 'roomType', '/uploadFile/roomType/3287.jpg', '', '2016-02-22 11:51:11', '223', '284', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '386', '0');
INSERT INTO `s_resource` VALUES ('3288', 'image.jpeg', 'memberLogo', '/uploadFile/memberLogo/3288.jpeg', null, '2016-02-22 11:51:45', null, null, '.jpeg', '0', '0', null, null, '0');
INSERT INTO `s_resource` VALUES ('3290', '04.jpg', 'roomType', '/uploadFile/roomType/3290.jpg', '', '2016-02-22 11:52:03', '223', '284', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '386', '0');
INSERT INTO `s_resource` VALUES ('3291', '03.jpg', 'roomType/logo', '/uploadFile/roomType/logo/3291.jpg', null, '2016-02-22 11:54:48', '223', '284', null, '0', '0', null, null, '0');
INSERT INTO `s_resource` VALUES ('3292', '01.jpg', 'roomType', '/uploadFile/roomType/3292.jpg', '', '2016-02-22 11:55:27', '223', '284', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '387', '0');
INSERT INTO `s_resource` VALUES ('3293', '02.jpg', 'roomType', '/uploadFile/roomType/3293.jpg', '', '2016-02-22 11:55:42', '223', '284', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '387', '0');
INSERT INTO `s_resource` VALUES ('3294', 'user.png', 'portrait', '/uploadFile/portrait/3294.png', null, '2016-02-22 11:55:44', '222', '283', null, '0', '0', null, null, '0');
INSERT INTO `s_resource` VALUES ('3295', '03.jpg', 'roomType', '/uploadFile/roomType/3295.jpg', '', '2016-02-22 11:56:06', '223', '284', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '387', '0');
INSERT INTO `s_resource` VALUES ('3296', '04.jpg', 'roomType', '/uploadFile/roomType/3296.jpg', '', '2016-02-22 11:56:19', '223', '284', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '387', '0');
INSERT INTO `s_resource` VALUES ('3297', '01.jpg', 'roomType/logo', '/uploadFile/roomType/logo/3297.jpg', null, '2016-02-22 11:57:36', '223', '284', null, '0', '0', null, null, '0');
INSERT INTO `s_resource` VALUES ('3298', '01.jpg', 'roomType', '/uploadFile/roomType/3298.jpg', '', '2016-02-22 11:58:10', '223', '284', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '388', '0');
INSERT INTO `s_resource` VALUES ('3299', '03.jpg', 'roomType', '/uploadFile/roomType/3299.jpg', '', '2016-02-22 11:58:47', '223', '284', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '388', '0');
INSERT INTO `s_resource` VALUES ('3300', '02.jpg', 'roomType/logo', '/uploadFile/roomType/logo/3300.jpg', null, '2016-02-22 11:59:51', '223', '284', null, '0', '0', null, null, '0');
INSERT INTO `s_resource` VALUES ('3301', '01.jpg', 'roomType', '/uploadFile/roomType/3301.jpg', '', '2016-02-22 12:00:16', '223', '284', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '389', '0');
INSERT INTO `s_resource` VALUES ('3302', '02.jpg', 'roomType', '/uploadFile/roomType/3302.jpg', '', '2016-02-22 12:00:28', '223', '284', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '389', '0');
INSERT INTO `s_resource` VALUES ('3303', '01.jpg', 'roomType/logo', '/uploadFile/roomType/logo/3303.jpg', null, '2016-02-22 12:03:04', '223', '284', null, '0', '0', null, null, '0');
INSERT INTO `s_resource` VALUES ('3304', '01.jpg', 'roomType', '/uploadFile/roomType/3304.jpg', '', '2016-02-22 12:03:39', '223', '284', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '390', '0');
INSERT INTO `s_resource` VALUES ('3305', '02.jpg', 'roomType', '/uploadFile/roomType/3305.jpg', '', '2016-02-22 12:03:55', '223', '284', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '390', '0');
INSERT INTO `s_resource` VALUES ('3306', '03.jpg', 'roomType', '/uploadFile/roomType/3306.jpg', '', '2016-02-22 12:04:13', '223', '284', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '390', '0');
INSERT INTO `s_resource` VALUES ('3307', '01.jpg', 'roomType/logo', '/uploadFile/roomType/logo/3307.jpg', null, '2016-02-22 12:57:35', '223', '284', null, '0', '0', null, null, '0');
INSERT INTO `s_resource` VALUES ('3308', '01.jpg', 'roomType', '/uploadFile/roomType/3308.jpg', '', '2016-02-22 12:58:25', '223', '284', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '391', '0');
INSERT INTO `s_resource` VALUES ('3309', '02.jpg', 'roomType', '/uploadFile/roomType/3309.jpg', '', '2016-02-22 12:58:36', '223', '284', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '391', '0');
INSERT INTO `s_resource` VALUES ('3310', '02.jpg', 'roomType/logo', '/uploadFile/roomType/logo/3310.jpg', null, '2016-02-22 13:00:10', '223', '284', null, '0', '0', null, null, '0');
INSERT INTO `s_resource` VALUES ('3311', '01.jpg', 'roomType', '/uploadFile/roomType/3311.jpg', '', '2016-02-22 13:00:50', '223', '284', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '392', '0');
INSERT INTO `s_resource` VALUES ('3312', '02.jpg', 'roomType', '/uploadFile/roomType/3312.jpg', '', '2016-02-22 13:01:02', '223', '284', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '392', '0');
INSERT INTO `s_resource` VALUES ('3313', '02.jpg', 'roomType/logo', '/uploadFile/roomType/logo/3313.jpg', null, '2016-02-22 13:01:31', '223', '284', null, '0', '0', null, null, '0');
INSERT INTO `s_resource` VALUES ('3314', '01.jpg', 'roomType', '/uploadFile/roomType/3314.jpg', '', '2016-02-22 13:02:13', '223', '284', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '393', '0');
INSERT INTO `s_resource` VALUES ('3315', '02.jpg', 'roomType', '/uploadFile/roomType/3315.jpg', '', '2016-02-22 13:02:24', '223', '284', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '393', '0');
INSERT INTO `s_resource` VALUES ('3316', '303.jpg', 'roomType/logo', '/uploadFile/roomType/logo/3316.jpg', null, '2016-02-22 13:05:04', '223', '284', null, '0', '0', null, null, '0');
INSERT INTO `s_resource` VALUES ('3317', '303.jpg', 'roomType', '/uploadFile/roomType/3317.jpg', '', '2016-02-22 13:05:28', '223', '284', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '394', '0');
INSERT INTO `s_resource` VALUES ('3318', '303.jpg', 'roomType', '/uploadFile/roomType/3318.jpg', '', '2016-02-22 13:06:12', '223', '284', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '394', '0');
INSERT INTO `s_resource` VALUES ('3319', '02.jpg', 'roomType/logo', '/uploadFile/roomType/logo/3319.jpg', null, '2016-02-22 13:07:58', '223', '284', null, '0', '0', null, null, '0');
INSERT INTO `s_resource` VALUES ('3320', '03.jpg', 'roomType', '/uploadFile/roomType/3320.jpg', '', '2016-02-22 13:08:18', '223', '284', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '395', '0');
INSERT INTO `s_resource` VALUES ('3321', '01.jpg', 'roomType', '/uploadFile/roomType/3321.jpg', '', '2016-02-22 13:08:29', '223', '284', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '395', '0');
INSERT INTO `s_resource` VALUES ('3322', '02.jpg', 'roomType', '/uploadFile/roomType/3322.jpg', '', '2016-02-22 13:08:40', '223', '284', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '395', '0');
INSERT INTO `s_resource` VALUES ('3323', '01.jpg', 'roomType/logo', '/uploadFile/roomType/logo/3323.jpg', null, '2016-02-22 13:09:15', '223', '284', null, '0', '0', null, null, '0');
INSERT INTO `s_resource` VALUES ('3324', '02.jpg', 'roomType', '/uploadFile/roomType/3324.jpg', '', '2016-02-22 13:09:38', '223', '284', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '396', '0');
INSERT INTO `s_resource` VALUES ('3325', '01.jpg', 'roomType', '/uploadFile/roomType/3325.jpg', '', '2016-02-22 13:09:48', '223', '284', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '396', '0');
INSERT INTO `s_resource` VALUES ('3327', '02.jpg', 'hotel', '/uploadFile/hotel/3327.jpg', '', '2016-02-22 13:10:25', '223', '284', null, '0', '0', 'com.wiwi.freego.hotel.model.Hotel', '342', '0');
INSERT INTO `s_resource` VALUES ('3328', '03.jpg', 'hotel', '/uploadFile/hotel/3328.jpg', '', '2016-02-22 13:10:37', '223', '284', null, '0', '0', 'com.wiwi.freego.hotel.model.Hotel', '342', '0');
INSERT INTO `s_resource` VALUES ('3329', '04.jpg', 'hotel', '/uploadFile/hotel/3329.jpg', '', '2016-02-22 13:10:48', '223', '284', null, '0', '0', 'com.wiwi.freego.hotel.model.Hotel', '342', '0');
INSERT INTO `s_resource` VALUES ('3330', '05.jpg', 'hotel', '/uploadFile/hotel/3330.jpg', '', '2016-02-22 13:11:04', '223', '284', null, '0', '0', 'com.wiwi.freego.hotel.model.Hotel', '342', '0');
INSERT INTO `s_resource` VALUES ('3331', '07.jpg', 'hotel', '/uploadFile/hotel/3331.jpg', '', '2016-02-22 13:11:18', '223', '284', null, '0', '0', 'com.wiwi.freego.hotel.model.Hotel', '342', '0');
INSERT INTO `s_resource` VALUES ('3332', '08.jpg', 'hotel', '/uploadFile/hotel/3332.jpg', '', '2016-02-22 13:11:29', '223', '284', null, '0', '0', 'com.wiwi.freego.hotel.model.Hotel', '342', '0');
INSERT INTO `s_resource` VALUES ('3333', '10.jpg', 'hotel', '/uploadFile/hotel/3333.jpg', '', '2016-02-22 13:11:42', '223', '284', null, '0', '0', 'com.wiwi.freego.hotel.model.Hotel', '342', '0');
INSERT INTO `s_resource` VALUES ('3335', '1-首图.jpg', 'hotel/logo', '/uploadFile/hotel/logo/3335.jpg', null, '2016-02-22 13:22:53', '224', '285', null, '0', '0', null, null, '0');
INSERT INTO `s_resource` VALUES ('3336', 'freego.jpg', 'shopkeeper/logo', '/uploadFile/shopkeeper/logo/3336.jpg', null, '2016-02-22 13:44:37', '224', '285', null, '0', '0', null, null, '0');
INSERT INTO `s_resource` VALUES ('3337', 'qrcode_for_gh_ebba34798fb5_344.jpg', 'shopkeeper/qrCode', '/uploadFile/shopkeeper/qrCode/3337.jpg', null, '2016-02-22 13:44:59', '224', '285', null, '0', '0', null, null, '0');
INSERT INTO `s_resource` VALUES ('3338', '1.jpg', 'hotel/logo', '/uploadFile/hotel/logo/3338.jpg', '', '2016-02-22 16:49:21', '224', '285', '', '0', '0', '', '', '0');
INSERT INTO `s_resource` VALUES ('3339', '_MG_2229.png', 'roomType/logo', '/uploadFile/roomType/logo/3339.png', null, '2016-02-22 14:06:00', '224', '285', null, '0', '0', null, null, '0');
INSERT INTO `s_resource` VALUES ('3340', '1.jpg', 'roomType/logo', '/uploadFile/roomType/logo/3340.jpg', null, '2016-02-22 16:32:26', '224', '285', null, '0', '0', null, null, '0');
INSERT INTO `s_resource` VALUES ('3341', '1.jpg', 'roomType', '/uploadFile/roomType/3341.jpg', '', '2016-02-22 16:33:41', '224', '285', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '397', '0');
INSERT INTO `s_resource` VALUES ('3342', '1.jpg', 'roomType', '/uploadFile/roomType/3342.jpg', null, '2016-02-22 16:33:41', '224', '285', null, '0', '0', null, null, '0');
INSERT INTO `s_resource` VALUES ('3343', '2.jpg', 'roomType', '/uploadFile/roomType/3343.jpg', '', '2016-02-22 16:34:02', '224', '285', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '397', '0');
INSERT INTO `s_resource` VALUES ('3344', '3.jpg', 'roomType', '/uploadFile/roomType/3344.jpg', '', '2016-02-22 16:34:23', '224', '285', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '397', '0');
INSERT INTO `s_resource` VALUES ('3345', '4.jpg', 'roomType', '/uploadFile/roomType/3345.jpg', '', '2016-02-22 16:34:51', '224', '285', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '397', '0');
INSERT INTO `s_resource` VALUES ('3346', '5.jpg', 'roomType', '/uploadFile/roomType/3346.jpg', '', '2016-02-22 16:35:13', '224', '285', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '397', '0');
INSERT INTO `s_resource` VALUES ('3347', '6.jpg', 'roomType', '/uploadFile/roomType/3347.jpg', '', '2016-02-22 16:35:37', '224', '285', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '397', '0');
INSERT INTO `s_resource` VALUES ('3348', '6.jpg', 'roomType', '/uploadFile/roomType/3348.jpg', null, '2016-02-22 16:35:37', '224', '285', null, '0', '0', null, null, '0');
INSERT INTO `s_resource` VALUES ('3349', '7.jpg', 'roomType', '/uploadFile/roomType/3349.jpg', '', '2016-02-22 16:35:59', '224', '285', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '397', '0');
INSERT INTO `s_resource` VALUES ('3350', '8.jpg', 'roomType', '/uploadFile/roomType/3350.jpg', '', '2016-02-22 16:36:20', '224', '285', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '397', '0');
INSERT INTO `s_resource` VALUES ('3351', '1.jpg', 'roomType/logo', '/uploadFile/roomType/logo/3351.jpg', null, '2016-02-22 16:37:29', '224', '285', null, '0', '0', null, null, '0');
INSERT INTO `s_resource` VALUES ('3352', '01 (1).jpg', 'roomType/logo', '/uploadFile/roomType/logo/3352.jpg', null, '2016-02-22 16:38:51', '224', '285', null, '0', '0', null, null, '0');
INSERT INTO `s_resource` VALUES ('3353', '01 (1).jpg', 'roomType', '/uploadFile/roomType/3353.jpg', '', '2016-02-22 16:39:49', '224', '285', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '399', '0');
INSERT INTO `s_resource` VALUES ('3354', '01 (2).jpg', 'roomType', '/uploadFile/roomType/3354.jpg', '', '2016-02-22 16:40:18', '224', '285', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '399', '0');
INSERT INTO `s_resource` VALUES ('3355', '01 (3).jpg', 'roomType', '/uploadFile/roomType/3355.jpg', '', '2016-02-22 16:40:37', '224', '285', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '399', '0');
INSERT INTO `s_resource` VALUES ('3356', '01 (4).jpg', 'roomType', '/uploadFile/roomType/3356.jpg', '', '2016-02-22 16:41:05', '224', '285', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '399', '0');
INSERT INTO `s_resource` VALUES ('3357', '01 (5).jpg', 'roomType', '/uploadFile/roomType/3357.jpg', '', '2016-02-22 16:41:22', '224', '285', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '399', '0');
INSERT INTO `s_resource` VALUES ('3358', '01 (6).jpg', 'roomType', '/uploadFile/roomType/3358.jpg', '', '2016-02-22 16:41:45', '224', '285', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '399', '0');
INSERT INTO `s_resource` VALUES ('3359', '01 (7).jpg', 'roomType', '/uploadFile/roomType/3359.jpg', '', '2016-02-22 16:42:04', '224', '285', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '399', '0');
INSERT INTO `s_resource` VALUES ('3360', '1.jpg', 'roomType', '/uploadFile/roomType/3360.jpg', '', '2016-02-22 16:44:48', '224', '285', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '398', '0');
INSERT INTO `s_resource` VALUES ('3361', '2.jpg', 'roomType', '/uploadFile/roomType/3361.jpg', '', '2016-02-22 16:45:10', '224', '285', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '398', '0');
INSERT INTO `s_resource` VALUES ('3362', '3.jpg', 'roomType', '/uploadFile/roomType/3362.jpg', '', '2016-02-22 16:46:31', '224', '285', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '398', '0');
INSERT INTO `s_resource` VALUES ('3363', '4.jpg', 'roomType', '/uploadFile/roomType/3363.jpg', '', '2016-02-22 16:46:59', '224', '285', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '398', '0');
INSERT INTO `s_resource` VALUES ('3364', '5.jpg', 'roomType', '/uploadFile/roomType/3364.jpg', '', '2016-02-22 16:47:24', '224', '285', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '398', '0');
INSERT INTO `s_resource` VALUES ('3365', '6.jpg', 'roomType', '/uploadFile/roomType/3365.jpg', '', '2016-02-22 16:47:51', '224', '285', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '398', '0');
INSERT INTO `s_resource` VALUES ('3366', '7.jpg', 'roomType', '/uploadFile/roomType/3366.jpg', '', '2016-02-22 16:48:15', '224', '285', null, '0', '0', 'com.wiwi.freego.hotel.model.RoomType', '398', '0');
INSERT INTO `s_resource` VALUES ('3367', '7.jpg', 'roomType', '/uploadFile/roomType/3367.jpg', null, '2016-02-22 16:48:15', '224', '285', null, '0', '0', null, null, '0');
INSERT INTO `s_resource` VALUES ('3368', '1.jpg', 'hotel', '/uploadFile/hotel/3368.jpg', '', '2016-02-22 17:24:25', '224', '285', null, '0', '0', 'com.wiwi.freego.hotel.model.Hotel', '343', '0');
INSERT INTO `s_resource` VALUES ('3369', '2.jpg', 'hotel', '/uploadFile/hotel/3369.jpg', '', '2016-02-22 17:24:53', '224', '285', null, '0', '0', 'com.wiwi.freego.hotel.model.Hotel', '343', '0');
INSERT INTO `s_resource` VALUES ('3370', '3.jpg', 'hotel', '/uploadFile/hotel/3370.jpg', '', '2016-02-22 17:25:14', '224', '285', null, '0', '0', 'com.wiwi.freego.hotel.model.Hotel', '343', '0');
INSERT INTO `s_resource` VALUES ('3371', '4.jpg', 'hotel', '/uploadFile/hotel/3371.jpg', '', '2016-02-22 17:25:44', '224', '285', null, '0', '0', 'com.wiwi.freego.hotel.model.Hotel', '343', '0');
INSERT INTO `s_resource` VALUES ('3372', '5.jpg', 'hotel', '/uploadFile/hotel/3372.jpg', '', '2016-02-22 17:26:15', '224', '285', null, '0', '0', 'com.wiwi.freego.hotel.model.Hotel', '343', '0');
INSERT INTO `s_resource` VALUES ('3373', '6.jpg', 'hotel', '/uploadFile/hotel/3373.jpg', '', '2016-02-22 17:26:38', '224', '285', null, '0', '0', 'com.wiwi.freego.hotel.model.Hotel', '343', '0');
INSERT INTO `s_resource` VALUES ('3374', '7.jpg', 'hotel', '/uploadFile/hotel/3374.jpg', '', '2016-02-22 17:27:09', '224', '285', null, '0', '0', 'com.wiwi.freego.hotel.model.Hotel', '343', '0');
INSERT INTO `s_resource` VALUES ('3375', '8.jpg', 'hotel', '/uploadFile/hotel/3375.jpg', '', '2016-02-22 17:27:43', '224', '285', null, '0', '0', 'com.wiwi.freego.hotel.model.Hotel', '343', '0');
INSERT INTO `s_resource` VALUES ('3376', '8-1.jpg', 'hotel', '/uploadFile/hotel/3376.jpg', '', '2016-02-22 17:28:04', '224', '285', null, '0', '0', 'com.wiwi.freego.hotel.model.Hotel', '343', '0');
INSERT INTO `s_resource` VALUES ('3377', '9.jpg', 'hotel', '/uploadFile/hotel/3377.jpg', '', '2016-02-22 17:28:46', '224', '285', null, '0', '0', 'com.wiwi.freego.hotel.model.Hotel', '343', '0');

-- ----------------------------
-- Table structure for s_resource_log
-- ----------------------------
DROP TABLE IF EXISTS `s_resource_log`;
CREATE TABLE `s_resource_log` (
  `id` varchar(50) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `operateTime` datetime DEFAULT NULL,
  `operateType` varchar(50) DEFAULT NULL,
  `resourceId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源操作记录表';

-- ----------------------------
-- Records of s_resource_log
-- ----------------------------

-- ----------------------------
-- Table structure for s_sms_record
-- ----------------------------
DROP TABLE IF EXISTS `s_sms_record`;
CREATE TABLE `s_sms_record` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `telphone` varchar(50) DEFAULT NULL,
  `sendTime` datetime DEFAULT NULL,
  `messageType` varchar(100) DEFAULT NULL,
  `result` varchar(500) DEFAULT NULL,
  `cancelTime` datetime DEFAULT NULL,
  `sendDatas` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_sms_record
-- ----------------------------
INSERT INTO `s_sms_record` VALUES ('1', '13708442271', '2016-02-28 21:08:28', 'register', '{\"success\":true}null', '2016-02-28 21:13:28', '993598,5');
INSERT INTO `s_sms_record` VALUES ('21', '13708442271', '2016-02-28 21:18:14', 'register', '{\"success\":true}null', '2016-02-28 21:23:14', '108598,5');
INSERT INTO `s_sms_record` VALUES ('41', '13708442271', '2016-02-28 21:20:10', 'register', '{\"success\":true}null', '2016-02-28 21:25:10', '271889,5');
INSERT INTO `s_sms_record` VALUES ('61', '13708442271', '2016-02-28 21:54:48', 'register', '{\"success\":true}null', '2016-02-28 21:59:48', '530364,5');
INSERT INTO `s_sms_record` VALUES ('62', '13398855235', '2016-02-28 22:07:33', 'register', '{\"success\":true}null', '2016-02-28 22:55:33', '720803,5');
INSERT INTO `s_sms_record` VALUES ('81', '13708442271', '2016-02-28 22:24:08', 'register', '{\"success\":false}错误码=160040 错误信息= 验证码超出同模板同号码天发送上限', '2016-02-28 22:29:08', '511891,5');
INSERT INTO `s_sms_record` VALUES ('101', '13708442271', '2016-02-28 22:30:49', 'register', '{\"success\":false}错误码=160040 错误信息= 验证码超出同模板同号码天发送上限', '2016-02-28 22:35:49', '882040,5');
INSERT INTO `s_sms_record` VALUES ('102', '13708442271', '2016-02-28 22:31:03', 'register', '{\"success\":false}错误码=160040 错误信息= 验证码超出同模板同号码天发送上限', '2016-02-28 22:36:03', '556625,5');
INSERT INTO `s_sms_record` VALUES ('103', '13708442271', '2016-02-28 22:32:32', 'register', '{\"success\":false}错误码=160040 错误信息= 验证码超出同模板同号码天发送上限', '2016-02-28 22:37:32', '669522,5');

-- ----------------------------
-- Table structure for s_user
-- ----------------------------
DROP TABLE IF EXISTS `s_user`;
CREATE TABLE `s_user` (
  `id` bigint(50) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `loginName` varchar(20) DEFAULT NULL,
  `loginPswd` varchar(50) DEFAULT NULL,
  `orgId` bigint(20) DEFAULT NULL,
  `createUserId` bigint(50) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `sequenceNo` int(11) DEFAULT NULL,
  `demo` varchar(200) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `telephone` varchar(45) DEFAULT NULL,
  `logoId` bigint(50) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  KEY `FK_S_User_S_Dept` (`orgId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='S_User';

-- ----------------------------
-- Records of s_user
-- ----------------------------
INSERT INTO `s_user` VALUES ('1', '系统管理员', 'sysadmin', '9DA1273385336B8D0FF2F460EB1E7FDA', '1', null, null, null, '', '1', '13987190791', '0');
INSERT INTO `s_user` VALUES ('163', '流浪狗管理员', 'freego', 'D06A00DDD6D5D250C2C2EDFC6E1042C8', '203', '1', '2016-01-05 10:38:24', null, '', '1', '', '0');
INSERT INTO `s_user` VALUES ('204', '江文', '别想那只大象', 'E10ADC3949BA59ABBE56E057F20F883E', '263', '163', '2016-01-24 15:50:34', null, '', '1', '', '0');
INSERT INTO `s_user` VALUES ('222', 'anmanda1', 'anmanda', '55587a910882016321201e6ebbc9f595', '283', '163', '2016-02-22 10:04:28', null, '', '1', '182067870392', '0');
INSERT INTO `s_user` VALUES ('223', '大象', 'bxnzdx', '7d87d7ed5693987e8bd7a2530eb44bdc', '284', '163', '2016-02-22 10:10:44', null, '', '1', '18787023741', '0');
INSERT INTO `s_user` VALUES ('224', '了了2', '了了族客栈', '4c74d497ab9a8034abb7f0fcfebdd4f8', '285', '163', '2016-02-22 13:12:12', null, '', '1', '18608724421', '0');
INSERT INTO `s_user` VALUES ('242', '高振洪', 'gaozhenhong', 'e10adc3949ba59abbe56e057f20f883e', '303', '1', '2017-06-11 17:59:24', null, '', '1', '13987190791', '0');
