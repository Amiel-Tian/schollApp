/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : appsoftware

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2020-11-10 08:22:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admins`
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(20) NOT NULL DEFAULT '',
  `pass` varchar(30) DEFAULT NULL,
  `power` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`,`user`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES ('1', '田蒙恩', '123456', '1');
INSERT INTO `admins` VALUES ('2', '123', '123', '2');
INSERT INTO `admins` VALUES ('3', '张玲', '123', '2');
INSERT INTO `admins` VALUES ('4', '张守成', '123', '2');
INSERT INTO `admins` VALUES ('5', '迟春峰', '123', '2');

-- ----------------------------
-- Table structure for `logs`
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(20) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=488 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logs
-- ----------------------------
INSERT INTO `logs` VALUES ('70', '2018030509田蒙恩', '2020年10月18日', '20:44:40', '登录了账号');
INSERT INTO `logs` VALUES ('71', '田蒙恩', '2020年10月18日', '20:51:17', '登录系统');
INSERT INTO `logs` VALUES ('72', '田蒙恩', '2020年10月19日', '07:59:51', '登录系统');
INSERT INTO `logs` VALUES ('73', '2018030509田蒙恩', '2020年10月19日', '08:38:36', '登录了账号');
INSERT INTO `logs` VALUES ('74', '田蒙恩', '2020年10月19日', '08:48:15', '登录系统');
INSERT INTO `logs` VALUES ('75', '田蒙恩', '2020年10月19日', '08:55:24', '登录系统');
INSERT INTO `logs` VALUES ('76', '田蒙恩', '2020年10月19日', '08:59:19', '登录系统');
INSERT INTO `logs` VALUES ('77', '田蒙恩', '2020年10月19日', '09:03:00', '登录系统');
INSERT INTO `logs` VALUES ('78', '田蒙恩', '2020年10月19日', '09:04:34', '登录系统');
INSERT INTO `logs` VALUES ('79', '田蒙恩', '2020年10月19日', '09:12:29', '登录系统');
INSERT INTO `logs` VALUES ('80', '田蒙恩', '2020年10月19日', '09:13:10', '登录系统');
INSERT INTO `logs` VALUES ('81', '田蒙恩', '2020年10月19日', '09:14:26', '登录系统');
INSERT INTO `logs` VALUES ('82', '田蒙恩', '2020年10月19日', '09:31:30', '登录系统');
INSERT INTO `logs` VALUES ('83', '田蒙恩', '2020年10月19日', '09:40:49', '登录系统');
INSERT INTO `logs` VALUES ('84', '田蒙恩', '2020年10月19日', '09:43:55', '登录系统');
INSERT INTO `logs` VALUES ('85', '田蒙恩', '2020年10月19日', '09:53:46', '登录系统');
INSERT INTO `logs` VALUES ('86', '田蒙恩', '2020年10月19日', '10:01:36', '登录系统');
INSERT INTO `logs` VALUES ('87', '田蒙恩', '2020年10月19日', '10:19:47', '登录系统');
INSERT INTO `logs` VALUES ('88', '123', '2020年10月19日', '10:23:34', '登录系统');
INSERT INTO `logs` VALUES ('89', '123', '2020年10月19日', '10:25:20', '登录系统');
INSERT INTO `logs` VALUES ('90', '2018030524迟春峰', '2020年10月19日', '10:28:49', '登录了账号');
INSERT INTO `logs` VALUES ('91', '123', '2020年10月19日', '10:30:18', '登录系统');
INSERT INTO `logs` VALUES ('92', '2018030524迟春峰', '2020年10月19日', '10:38:38', '登录了账号');
INSERT INTO `logs` VALUES ('93', '田蒙恩', '2020年10月19日', '10:41:40', '登录系统');
INSERT INTO `logs` VALUES ('94', '123', '2020年10月19日', '10:42:31', '登录系统');
INSERT INTO `logs` VALUES ('95', '田蒙恩', '2020年10月19日', '10:51:04', '登录系统');
INSERT INTO `logs` VALUES ('96', '123', '2020年10月19日', '10:54:06', '登录系统');
INSERT INTO `logs` VALUES ('97', '123', '2020年10月19日', '10:55:06', '登录系统');
INSERT INTO `logs` VALUES ('98', '田蒙恩', '2020年10月19日', '11:00:25', '登录系统');
INSERT INTO `logs` VALUES ('99', '2018030524迟春峰', '2020年10月19日', '11:02:29', '登录了账号');
INSERT INTO `logs` VALUES ('100', '田蒙恩', '2020年10月19日', '11:09:32', '登录系统');
INSERT INTO `logs` VALUES ('101', '2018030524迟春峰', '2020年10月19日', '11:16:10', '登录了账号');
INSERT INTO `logs` VALUES ('102', '2018030524迟春峰', '2020年10月19日', '11:20:53', '登录了账号');
INSERT INTO `logs` VALUES ('103', '2018030524迟春峰', '2020年10月19日', '11:22:24', '登录了账号');
INSERT INTO `logs` VALUES ('104', '2018030524迟春峰', '2020年10月19日', '11:24:02', '登录了账号');
INSERT INTO `logs` VALUES ('105', '2018030524迟春峰', '2020年10月19日', '11:29:40', '登录了账号');
INSERT INTO `logs` VALUES ('106', '田蒙恩', '2020年10月19日', '13:36:36', '登录系统');
INSERT INTO `logs` VALUES ('107', '田蒙恩', '2020年10月19日', '13:41:05', '登录系统');
INSERT INTO `logs` VALUES ('108', '田蒙恩', '2020年10月19日', '13:49:01', '登录系统');
INSERT INTO `logs` VALUES ('109', '田蒙恩', '2020年10月19日', '13:50:25', '登录系统');
INSERT INTO `logs` VALUES ('110', '田蒙恩', '2020年10月19日', '14:01:35', '登录系统');
INSERT INTO `logs` VALUES ('111', '田蒙恩', '2020年10月19日', '14:03:01', '登录系统');
INSERT INTO `logs` VALUES ('112', '田蒙恩', '2020年10月19日', '14:05:51', '登录系统');
INSERT INTO `logs` VALUES ('113', '田蒙恩', '2020年10月19日', '14:12:28', '登录系统');
INSERT INTO `logs` VALUES ('114', '田蒙恩', '2020年10月19日', '14:21:28', '登录系统');
INSERT INTO `logs` VALUES ('115', '田蒙恩', '2020年10月19日', '14:24:26', '登录系统');
INSERT INTO `logs` VALUES ('116', '123', '2020年10月19日', '14:25:44', '登录系统');
INSERT INTO `logs` VALUES ('117', '2018030524迟春峰', '2020年10月19日', '14:43:27', '登录了账号');
INSERT INTO `logs` VALUES ('118', '2018030509田蒙恩', '2020年10月19日', '14:51:59', '登录了账号');
INSERT INTO `logs` VALUES ('119', '2018030524迟春峰', '2020年10月19日', '15:31:49', '登录了账号');
INSERT INTO `logs` VALUES ('120', '田蒙恩', '2020年10月19日', '15:40:24', '登录系统');
INSERT INTO `logs` VALUES ('121', '123', '2020年10月19日', '16:05:20', '登录系统');
INSERT INTO `logs` VALUES ('122', '田蒙恩', '2020年10月19日', '16:38:47', '登录系统');
INSERT INTO `logs` VALUES ('123', '田蒙恩', '2020年10月19日', '16:41:54', '修改了用户表:User{id=1, sno=2018030509, sname=\'田蒙恩\', syear=\'2018\', zhuanye=\'软件技术\', yuanxi=\'软件与大数据系\', type=\'学\', school=\'山东信息职业技术学院\'}');
INSERT INTO `logs` VALUES ('124', '田蒙恩', '2020年10月19日', '16:42:01', '修改了用户表:User{id=1, sno=2018030509, sname=\'田蒙恩\', syear=\'2018\', zhuanye=\'软件技术\', yuanxi=\'软件与大数据系\', type=\'学生\', school=\'山东信息职业技术学院\'}');
INSERT INTO `logs` VALUES ('125', '田蒙恩', '2020年10月19日', '16:43:41', '修改了报修表:Repair{id=4, sno=2018030524, time=\'2020/10/16-19:23:5\', add=\'大门口\', deta=\'狗子有点2\', photo=\'repairs/001.jpg\', state=\'处理中\'}');
INSERT INTO `logs` VALUES ('126', '123', '2020年10月19日', '17:54:08', '登录系统');
INSERT INTO `logs` VALUES ('127', '田蒙恩', '2020年10月19日', '17:58:07', '登录系统');
INSERT INTO `logs` VALUES ('128', '田蒙恩', '2020年10月19日', '17:58:44', '登录系统');
INSERT INTO `logs` VALUES ('129', '123', '2020年10月19日', '18:01:56', '登录系统');
INSERT INTO `logs` VALUES ('130', '田蒙恩', '2020年10月19日', '18:05:47', '登录系统');
INSERT INTO `logs` VALUES ('131', '田蒙恩', '2020年10月19日', '18:10:40', '登录系统');
INSERT INTO `logs` VALUES ('132', '123', '2020年10月19日', '18:11:44', '登录系统');
INSERT INTO `logs` VALUES ('133', '123', '2020年10月19日', '18:12:30', '登录系统');
INSERT INTO `logs` VALUES ('134', '田蒙恩', '2020年10月19日', '18:16:33', '登录系统');
INSERT INTO `logs` VALUES ('135', '田蒙恩', '2020年10月19日', '18:16:46', '登录系统');
INSERT INTO `logs` VALUES ('136', '1719577753尹鹏程', '2020年10月19日', '18:19:32', '登录了账号');
INSERT INTO `logs` VALUES ('137', '田蒙恩', '2020年10月19日', '18:21:00', '修改了用户表:User{id=14, sno=1719577753, sname=\'尹鹏程\', syear=\'2018\', zhuanye=\'工业控制\', yuanxi=\'现代制造工程系\', type=\'学生\', school=\'山东工业技师学院\'}');
INSERT INTO `logs` VALUES ('138', '田蒙恩', '2020年10月19日', '18:43:37', '登录系统');
INSERT INTO `logs` VALUES ('139', '田蒙恩', '2020年10月19日', '18:45:45', '登录系统');
INSERT INTO `logs` VALUES ('140', '田蒙恩', '2020年10月19日', '18:46:20', '登录系统');
INSERT INTO `logs` VALUES ('141', '田蒙恩', '2020年10月19日', '18:47:36', '登录系统');
INSERT INTO `logs` VALUES ('142', '田蒙恩', '2020年10月19日', '18:52:15', '登录系统');
INSERT INTO `logs` VALUES ('143', '田蒙恩', '2020年10月19日', '18:57:12', '登录系统');
INSERT INTO `logs` VALUES ('144', '田蒙恩', '2020年10月19日', '19:03:35', '登录系统');
INSERT INTO `logs` VALUES ('145', '田蒙恩', '2020年10月19日', '19:05:02', '登录系统');
INSERT INTO `logs` VALUES ('146', '田蒙恩', '2020年10月19日', '19:05:27', '登录系统');
INSERT INTO `logs` VALUES ('147', '2018030524迟春峰', '2020年10月19日', '19:06:06', '登录了账号');
INSERT INTO `logs` VALUES ('148', '田蒙恩', '2020年10月19日', '19:08:54', '登录系统');
INSERT INTO `logs` VALUES ('149', '123', '2020年10月19日', '19:10:28', '登录系统');
INSERT INTO `logs` VALUES ('150', '田蒙恩', '2020年10月19日', '19:18:44', '登录系统');
INSERT INTO `logs` VALUES ('151', '田蒙恩', '2020年10月19日', '19:30:52', '登录系统');
INSERT INTO `logs` VALUES ('152', '123', '2020年10月19日', '19:33:01', '登录系统');
INSERT INTO `logs` VALUES ('153', '田蒙恩', '2020年10月19日', '20:17:51', '登录系统');
INSERT INTO `logs` VALUES ('154', '123', '2020年10月19日', '20:36:44', '登录系统');
INSERT INTO `logs` VALUES ('155', '2018030524迟春峰', '2020年10月19日', '21:28:44', '登录了账号');
INSERT INTO `logs` VALUES ('156', '田蒙恩', '2020年10月19日', '21:31:04', '登录系统');
INSERT INTO `logs` VALUES ('157', '田蒙恩', '2020年10月20日', '07:53:35', '登录系统');
INSERT INTO `logs` VALUES ('158', '2018030524迟春峰', '2020年10月20日', '08:43:23', '登录了账号');
INSERT INTO `logs` VALUES ('159', '2018030524迟春峰', '2020年10月20日', '08:46:47', '登录了账号');
INSERT INTO `logs` VALUES ('160', '2018030524迟春峰', '2020年10月20日', '08:48:46', '登录了账号');
INSERT INTO `logs` VALUES ('161', '田蒙恩', '2020年10月20日', '10:01:37', '登录系统');
INSERT INTO `logs` VALUES ('162', '2018030524迟春峰', '2020年10月20日', '10:30:12', '登录了账号');
INSERT INTO `logs` VALUES ('163', '田蒙恩', '2020年10月20日', '10:33:37', '登录系统');
INSERT INTO `logs` VALUES ('164', '2018030554窦英钊', '2020年10月20日', '10:55:17', '登录了账号');
INSERT INTO `logs` VALUES ('165', '123', '2020年10月20日', '11:13:42', '登录系统');
INSERT INTO `logs` VALUES ('166', '田蒙恩', '2020年10月20日', '11:44:32', '登录系统');
INSERT INTO `logs` VALUES ('167', '田蒙恩', '2020年10月20日', '13:31:04', '登录系统');
INSERT INTO `logs` VALUES ('168', '田蒙恩', '2020年10月20日', '14:17:51', '登录系统');
INSERT INTO `logs` VALUES ('169', '2018030554窦英钊', '2020年10月20日', '14:21:33', '登录了账号');
INSERT INTO `logs` VALUES ('170', '123', '2020年10月20日', '14:37:08', '登录系统');
INSERT INTO `logs` VALUES ('171', '2018030524迟春峰', '2020年10月20日', '14:48:30', '登录了账号');
INSERT INTO `logs` VALUES ('172', '田蒙恩', '2020年10月20日', '14:52:57', '登录系统');
INSERT INTO `logs` VALUES ('173', '田蒙恩', '2020年10月20日', '14:53:20', '登录系统');
INSERT INTO `logs` VALUES ('174', '123', '2020年10月20日', '14:54:47', '登录系统');
INSERT INTO `logs` VALUES ('175', '田蒙恩', '2020年10月20日', '15:01:07', '登录系统');
INSERT INTO `logs` VALUES ('176', '田蒙恩', '2020年10月20日', '15:01:39', '登录系统');
INSERT INTO `logs` VALUES ('177', '2018030524迟春峰', '2020年10月20日', '15:02:09', '登录了账号');
INSERT INTO `logs` VALUES ('178', '田蒙恩', '2020年10月20日', '15:05:57', '登录系统');
INSERT INTO `logs` VALUES ('179', '田蒙恩', '2020年10月20日', '15:07:11', '登录系统');
INSERT INTO `logs` VALUES ('180', '123', '2020年10月20日', '15:27:39', '登录系统');
INSERT INTO `logs` VALUES ('181', '2018030524迟春峰', '2020年10月20日', '15:37:38', '登录了账号');
INSERT INTO `logs` VALUES ('182', '田蒙恩', '2020年10月20日', '16:02:32', '登录系统');
INSERT INTO `logs` VALUES ('183', '田蒙恩', '2020年10月20日', '16:03:21', '登录系统');
INSERT INTO `logs` VALUES ('184', '2018030524迟春峰', '2020年10月20日', '16:03:24', '登录了账号');
INSERT INTO `logs` VALUES ('185', '田蒙恩', '2020年10月20日', '16:04:46', '登录系统');
INSERT INTO `logs` VALUES ('186', '田蒙恩', '2020年10月20日', '16:06:01', '登录系统');
INSERT INTO `logs` VALUES ('187', '田蒙恩', '2020年10月20日', '16:06:50', '登录系统');
INSERT INTO `logs` VALUES ('188', '田蒙恩', '2020年10月20日', '16:07:02', '修改了报修表:Repair{id=2, sno=2018030524, time=\'2020/10/15-21:7:25\', add=\'1号楼101\', deta=\'门锁坏了，门变形......\', photo=\'repairs/001.jpg\', state=\'已完成\'}');
INSERT INTO `logs` VALUES ('189', '2018030524迟春峰', '2020年10月20日', '16:07:27', '登录了账号');
INSERT INTO `logs` VALUES ('190', '田蒙恩', '2020年10月20日', '16:09:15', '登录系统');
INSERT INTO `logs` VALUES ('191', '田蒙恩', '2020年10月20日', '16:09:23', '修改了报修表:Repair{id=2, sno=2018030524, sname=\'null\', time=\'2020/10/15-21:7:25\', add=\'1号楼101\', deta=\'门锁坏了，门变\', photo=\'repairs/001.jpg\', state=\'已完成\'}');
INSERT INTO `logs` VALUES ('192', '田蒙恩', '2020年10月20日', '16:09:47', '修改了报修表:Repair{id=2, sno=2018030524, sname=\'null\', time=\'2020/10/15-21:7:25\', add=\'1号楼101\', deta=\'门锁坏了，门变sds\', photo=\'repairs/001.jpg\', state=\'已完成\'}');
INSERT INTO `logs` VALUES ('193', '田蒙恩', '2020年10月20日', '16:10:25', '登录系统');
INSERT INTO `logs` VALUES ('194', '田蒙恩', '2020年10月20日', '16:10:40', '修改了报修表:Repair{id=2, sno=2018030524, sname=\'null\', time=\'2020/10/15-21:7:25\', add=\'1号楼101\', deta=\'门锁坏了，门变\', photo=\'repairs/001.jpg\', state=\'已完成\'}');
INSERT INTO `logs` VALUES ('195', '田蒙恩', '2020年10月20日', '16:11:19', '修改了报修表:Repair{id=2, sno=2018030524, sname=\'迟春峰\', time=\'2020/10/15-21:7:25\', add=\'1号楼101\', deta=\'门锁坏了，门变形\', photo=\'repairs/001.jpg\', state=\'已完成\'}');
INSERT INTO `logs` VALUES ('196', '田蒙恩', '2020年10月20日', '16:12:34', '登录系统');
INSERT INTO `logs` VALUES ('197', '123', '2020年10月20日', '16:13:28', '登录系统');
INSERT INTO `logs` VALUES ('198', '2018030554窦英钊', '2020年10月20日', '16:15:01', '登录了账号');
INSERT INTO `logs` VALUES ('199', '123', '2020年10月20日', '16:20:38', '登录系统');
INSERT INTO `logs` VALUES ('200', '2018030524迟春峰', '2020年10月20日', '16:20:46', '登录了账号');
INSERT INTO `logs` VALUES ('201', '123', '2020年10月20日', '16:22:20', '登录系统');
INSERT INTO `logs` VALUES ('202', '田蒙恩', '2020年10月20日', '16:40:37', '登录系统');
INSERT INTO `logs` VALUES ('203', '2018030554窦英钊', '2020年10月20日', '16:40:57', '登录了账号');
INSERT INTO `logs` VALUES ('204', '田蒙恩', '2020年10月20日', '16:41:48', '登录系统');
INSERT INTO `logs` VALUES ('205', '田蒙恩', '2020年10月20日', '16:43:47', '登录系统');
INSERT INTO `logs` VALUES ('206', '田蒙恩', '2020年10月20日', '16:44:45', '登录系统');
INSERT INTO `logs` VALUES ('207', '田蒙恩', '2020年10月20日', '16:44:54', '修改了失物表:com.example.demo.bean.Lost@244738bb');
INSERT INTO `logs` VALUES ('208', '田蒙恩', '2020年10月20日', '16:45:03', '修改了市场表:com.example.demo.bean.Marke@7fcd026d');
INSERT INTO `logs` VALUES ('209', '2018030524迟春峰', '2020年10月20日', '16:53:08', '登录了账号');
INSERT INTO `logs` VALUES ('210', '田蒙恩', '2020年10月20日', '17:09:09', '登录系统');
INSERT INTO `logs` VALUES ('211', '田蒙恩', '2020年10月20日', '17:10:50', '新建新闻:New{id=0, type=\'更新日志\', time=\'2020-10-20\', title=\'更新日志\', content=\'markers，losts，repairs新增 用户姓名字段，修复了搜索Repair报修表地址时失败的问题\'}');
INSERT INTO `logs` VALUES ('212', '田蒙恩', '2020年10月20日', '17:20:46', '登录系统');
INSERT INTO `logs` VALUES ('213', '田蒙恩', '2020年10月20日', '17:21:10', '登录系统');
INSERT INTO `logs` VALUES ('214', '123', '2020年10月20日', '17:21:58', '登录系统');
INSERT INTO `logs` VALUES ('215', '田蒙恩', '2020年10月20日', '17:22:04', '登录系统');
INSERT INTO `logs` VALUES ('216', '田蒙恩', '2020年10月20日', '17:32:56', '登录系统');
INSERT INTO `logs` VALUES ('217', '田蒙恩', '2020年10月20日', '17:43:13', '修改了新闻表:New{id=5, type=\'更新日志\', time=\'2020-10-20\', title=\'更新日志\', content=\'markers，losts，repairs新增 用户姓名字段，修复了搜索Repair报修表地址时失败的问题，页面可能存在显示问题\'}');
INSERT INTO `logs` VALUES ('218', '田蒙恩', '2020年10月20日', '17:44:04', '修改了新闻表:New{id=5, type=\'更新日志\', time=\'2020-10-20\', title=\'更新日志\', content=\'markers，losts，repairs新增 用户姓名字段，页面可能存在显示问题。修复了搜索Repair报修表地址时失败的问题。\'}');
INSERT INTO `logs` VALUES ('219', '田蒙恩', '2020年10月20日', '18:04:37', '登录系统');
INSERT INTO `logs` VALUES ('220', '田蒙恩', '2020年10月20日', '18:41:10', '登录系统');
INSERT INTO `logs` VALUES ('221', '田蒙恩', '2020年10月20日', '19:57:36', '登录系统');
INSERT INTO `logs` VALUES ('222', '2018030524迟春峰', '2020年10月20日', '20:38:10', '登录了账号');
INSERT INTO `logs` VALUES ('223', '123', '2020年10月20日', '20:48:20', '登录系统');
INSERT INTO `logs` VALUES ('224', '田蒙恩', '2020年10月20日', '21:09:50', '登录系统');
INSERT INTO `logs` VALUES ('225', '田蒙恩', '2020年10月20日', '21:58:16', '登录系统');
INSERT INTO `logs` VALUES ('226', '田蒙恩', '2020年10月21日', '07:47:12', '登录系统');
INSERT INTO `logs` VALUES ('227', '2018030524迟春峰', '2020年10月21日', '08:05:10', '登录了账号');
INSERT INTO `logs` VALUES ('228', '123', '2020年10月21日', '08:34:17', '登录系统');
INSERT INTO `logs` VALUES ('229', '2018030524迟春峰', '2020年10月21日', '08:47:10', '登录了账号');
INSERT INTO `logs` VALUES ('230', '田蒙恩', '2020年10月21日', '08:47:12', '登录系统');
INSERT INTO `logs` VALUES ('231', '田蒙恩', '2020年10月21日', '08:51:20', '新建新闻:New{id=0, type=\'站内通告\', time=\'2020-10-21\', title=\'新增体温模块\', content=\'身体情况表userstate\n	id\n	sno\n	体温\n		wen\n	外出地点\n		radd\n	外出时间\n		time\n--接口：getUserstate 获取当前用户体温列表，参数：无。modifyUserstate 修改当前用户体温列表，参数：wen：体温，radd：外出地点，time：外出时间（没有传空字符串）\'}');
INSERT INTO `logs` VALUES ('232', '田蒙恩', '2020年10月21日', '08:56:40', '修改了新闻表:New{id=6, type=\'站内通告\', time=\'2020-10-21\', title=\'新增体温模块\', content=\'身体情况表userstate\n	id\n	sno\n	体温\n		wen\n	外出地点\n		radd\n	外出时间\n		time\n--接口：getUserstate 获取当前用户体温列表，参数：无。modifyUserstate 修改当前用户体温列表，参数：wen：体温，radd：外出地点，time：外出时间（没有传空字符串），成功返回1，失败返回0\'}');
INSERT INTO `logs` VALUES ('233', '田蒙恩', '2020年10月21日', '09:01:11', '登录系统');
INSERT INTO `logs` VALUES ('234', '2018030524迟春峰', '2020年10月21日', '09:02:47', '登录了账号');
INSERT INTO `logs` VALUES ('235', '123', '2020年10月21日', '09:09:03', '登录系统');
INSERT INTO `logs` VALUES ('236', '2018030509田蒙恩', '2020年10月21日', '09:23:14', '登录了账号');
INSERT INTO `logs` VALUES ('237', '2018030509田蒙恩', '2020年10月21日', '09:32:39', '登录了账号');
INSERT INTO `logs` VALUES ('238', '田蒙恩', '2020年10月21日', '09:37:07', '登录系统');
INSERT INTO `logs` VALUES ('239', '2018030509田蒙恩', '2020年10月21日', '09:53:29', '登录了账号');
INSERT INTO `logs` VALUES ('240', '2018030509田蒙恩', '2020年10月21日', '09:57:16', '登录了账号');
INSERT INTO `logs` VALUES ('241', '2018030504于亮', '2020年10月21日', '09:59:06', '登录了账号');
INSERT INTO `logs` VALUES ('242', '田蒙恩', '2020年10月21日', '10:00:43', '新建新闻:New{id=0, type=\'站内通告\', time=\'2020-10-21\', title=\'前端使用体验\', content=\'1.登录页，注册页样式\n2.登录后记住登录状态，通过登录时获取当前登录用户来判断\n3.个人头像，个人中心的头像跟名字\n4.个人中心加一个退出登录选项\n5.提交有点丑，放下边试试，或者改改样式，有点大\'}');
INSERT INTO `logs` VALUES ('243', '田蒙恩', '2020年10月21日', '10:01:32', '修改了新闻表:New{id=7, type=\'站内通告\', time=\'2020-10-21\', title=\'前端使用体验\', content=\'1.登录页，注册页样式按之前的说的样式改改\n2.登录后记住登录状态，通过登录时获取当前登录用户来判断\n3.个人头像，个人中心的头像跟名字\n4.个人中心加一个退出登录选项\n5.提交有点丑，放下边试试，或者改改样式，有点大\'}');
INSERT INTO `logs` VALUES ('244', '2018030520卢浩浩', '2020年10月21日', '10:03:05', '登录了账号');
INSERT INTO `logs` VALUES ('245', '123', '2020年10月21日', '10:09:11', '登录系统');
INSERT INTO `logs` VALUES ('246', '2018030509田蒙恩', '2020年10月21日', '10:11:38', '登录了账号');
INSERT INTO `logs` VALUES ('247', '田蒙恩', '2020年10月21日', '10:16:58', '修改了新闻表:New{id=6, type=\'更新日志\', time=\'2020-10-21\', title=\'新增体温模块\', content=\'身体情况表userstate\n	id\n	sno\n	体温\n		wen\n	外出地点\n		radd\n	外出时间\n		time\n--接口：getUserstate 获取当前用户体温列表，参数：无。modifyUserstate 修改当前用户体温列表，参数：wen：体温，radd：外出地点，time：外出时间（没有传空字符串），成功返回1，失败返回0\'}');
INSERT INTO `logs` VALUES ('248', '2018030509田蒙恩', '2020年10月21日', '10:20:33', '登录了账号');
INSERT INTO `logs` VALUES ('249', '2018030509田蒙恩', '2020年10月21日', '10:38:50', '登录了账号');
INSERT INTO `logs` VALUES ('250', '2018030509田蒙恩', '2020年10月21日', '10:52:58', '登录了账号');
INSERT INTO `logs` VALUES ('251', '2018030509田蒙恩', '2020年10月21日', '10:56:06', '登录了账号');
INSERT INTO `logs` VALUES ('252', '2018030509田蒙恩', '2020年10月21日', '11:08:25', '登录了账号');
INSERT INTO `logs` VALUES ('253', '2018030509田蒙恩', '2020年10月21日', '11:08:45', '登录了账号');
INSERT INTO `logs` VALUES ('254', '2018030509田蒙恩', '2020年10月21日', '11:34:04', '登录了账号');
INSERT INTO `logs` VALUES ('255', '2018030509田蒙恩', '2020年10月21日', '11:36:39', '登录了账号');
INSERT INTO `logs` VALUES ('256', '田蒙恩', '2020年10月21日', '11:40:50', '登录系统');
INSERT INTO `logs` VALUES ('257', '2018030509田蒙恩', '2020年10月21日', '11:42:31', '登录了账号');
INSERT INTO `logs` VALUES ('258', '2018030509田蒙恩', '2020年10月21日', '11:55:07', '登录了账号');
INSERT INTO `logs` VALUES ('259', '田蒙恩', '2020年10月21日', '11:59:00', '登录系统');
INSERT INTO `logs` VALUES ('260', '田蒙恩', '2020年10月21日', '13:20:00', '登录系统');
INSERT INTO `logs` VALUES ('261', '田蒙恩', '2020年10月21日', '13:31:10', '登录系统');
INSERT INTO `logs` VALUES ('262', '2018030509田蒙恩', '2020年10月21日', '13:43:52', '登录了账号');
INSERT INTO `logs` VALUES ('263', '2018030509田蒙恩', '2020年10月21日', '13:44:50', '登录了账号');
INSERT INTO `logs` VALUES ('264', '2018030509田蒙恩', '2020年10月21日', '13:45:02', '登录了账号');
INSERT INTO `logs` VALUES ('265', '2018030509田蒙恩', '2020年10月21日', '13:50:00', '登录了账号');
INSERT INTO `logs` VALUES ('266', '田蒙恩', '2020年10月21日', '13:53:26', '登录系统');
INSERT INTO `logs` VALUES ('267', '2018030509田蒙恩', '2020年10月21日', '13:58:44', '登录了账号');
INSERT INTO `logs` VALUES ('268', '2018030509田蒙恩', '2020年10月21日', '14:00:35', '登录了账号');
INSERT INTO `logs` VALUES ('269', '2018030524迟春峰', '2020年10月21日', '14:04:43', '登录了账号');
INSERT INTO `logs` VALUES ('270', '2018030524迟春峰', '2020年10月21日', '14:17:31', '登录了账号');
INSERT INTO `logs` VALUES ('271', '2018030524迟春峰', '2020年10月21日', '14:23:39', '登录了账号');
INSERT INTO `logs` VALUES ('272', '2018030509田蒙恩', '2020年10月21日', '14:54:53', '登录了账号');
INSERT INTO `logs` VALUES ('273', '田蒙恩', '2020年10月21日', '15:35:12', '登录系统');
INSERT INTO `logs` VALUES ('274', '田蒙恩', '2020年10月21日', '16:44:31', '登录系统');
INSERT INTO `logs` VALUES ('275', '田蒙恩', '2020年10月21日', '17:28:55', '登录系统');
INSERT INTO `logs` VALUES ('276', '田蒙恩', '2020年10月21日', '18:13:15', '登录系统');
INSERT INTO `logs` VALUES ('277', '2018030509田蒙恩', '2020年10月21日', '19:15:16', '登录了账号');
INSERT INTO `logs` VALUES ('278', '1孙', '2020年10月21日', '19:18:59', '登录了账号');
INSERT INTO `logs` VALUES ('279', '田蒙恩', '2020年10月21日', '19:20:10', '登录系统');
INSERT INTO `logs` VALUES ('280', '田蒙恩', '2020年10月21日', '20:31:29', '登录系统');
INSERT INTO `logs` VALUES ('281', '田蒙恩', '2020年10月21日', '21:36:05', '登录系统');
INSERT INTO `logs` VALUES ('282', '田蒙恩', '2020年10月22日', '08:20:54', '登录系统');
INSERT INTO `logs` VALUES ('283', '2018030524迟春峰', '2020年10月22日', '08:26:37', '登录了账号');
INSERT INTO `logs` VALUES ('284', '123', '2020年10月22日', '08:53:37', '登录系统');
INSERT INTO `logs` VALUES ('285', '123', '2020年10月22日', '09:14:55', '登录系统');
INSERT INTO `logs` VALUES ('286', '田蒙恩', '2020年10月22日', '10:06:43', '登录系统');
INSERT INTO `logs` VALUES ('287', '田蒙恩', '2020年10月22日', '10:07:06', '登录系统');
INSERT INTO `logs` VALUES ('288', '123', '2020年10月22日', '10:10:29', '登录系统');
INSERT INTO `logs` VALUES ('289', '123', '2020年10月22日', '10:11:17', '登录系统');
INSERT INTO `logs` VALUES ('290', '2018030528张守成', '2020年10月22日', '10:17:09', '登录了账号');
INSERT INTO `logs` VALUES ('291', '田蒙恩', '2020年10月22日', '10:17:28', '登录系统');
INSERT INTO `logs` VALUES ('292', '2018030528张守成', '2020年10月22日', '11:11:17', '登录了账号');
INSERT INTO `logs` VALUES ('293', '田蒙恩', '2020年10月22日', '11:16:35', '登录系统');
INSERT INTO `logs` VALUES ('294', '2018030528张守成', '2020年10月22日', '11:17:46', '登录了账号');
INSERT INTO `logs` VALUES ('295', '田蒙恩', '2020年10月22日', '11:20:14', '登录系统');
INSERT INTO `logs` VALUES ('296', '2018030524迟春峰', '2020年10月22日', '11:20:52', '登录了账号');
INSERT INTO `logs` VALUES ('297', '0null', '2020年10月22日', '11:33:12', '修改了体温表:Userstate{id=0, sno=0, sname=\'null\', wen=\'36.6\', add=\'null\', time=\'0\'}');
INSERT INTO `logs` VALUES ('298', '0null', '2020年10月22日', '11:33:13', '修改了体温表:Userstate{id=0, sno=0, sname=\'null\', wen=\'36.6\', add=\'null\', time=\'0\'}');
INSERT INTO `logs` VALUES ('299', '2018030524迟春峰', '2020年10月22日', '11:34:42', '登录了账号');
INSERT INTO `logs` VALUES ('300', '2018030524迟春峰', '2020年10月22日', '11:34:49', '修改了体温表:Userstate{id=0, sno=2018030524, sname=\'null\', wen=\'36.6\', add=\'null\', time=\'0\'}');
INSERT INTO `logs` VALUES ('301', '2018030524迟春峰', '2020年10月22日', '11:35:20', '修改了体温表:Userstate{id=0, sno=2018030524, sname=\'null\', wen=\'36.6\', add=\'null\', time=\'0\'}');
INSERT INTO `logs` VALUES ('302', '2018030524迟春峰', '2020年10月22日', '11:37:50', '登录了账号');
INSERT INTO `logs` VALUES ('303', '田蒙恩', '2020年10月22日', '11:37:52', '登录系统');
INSERT INTO `logs` VALUES ('304', '2018030524迟春峰', '2020年10月22日', '11:37:56', '修改了体温表:Userstate{id=0, sno=2018030524, sname=\'null\', wen=\'36.6\', add=\'null\', time=\'0\'}');
INSERT INTO `logs` VALUES ('305', '2018030524迟春峰', '2020年10月22日', '11:38:53', '登录了账号');
INSERT INTO `logs` VALUES ('306', '2018030524迟春峰', '2020年10月22日', '11:39:08', '修改了体温表:Userstate{id=0, sno=2018030524, sname=\'null\', wen=\'36.8\', add=\'null\', time=\'0\'}');
INSERT INTO `logs` VALUES ('307', '2018030524迟春峰', '2020年10月22日', '11:42:38', '登录了账号');
INSERT INTO `logs` VALUES ('308', '2018030524迟春峰', '2020年10月22日', '11:42:50', '修改了体温表:Userstate{id=0, sno=2018030524, sname=\'null\', wen=\'36.6\', add=\'null\', time=\'0\'}');
INSERT INTO `logs` VALUES ('309', '2018030524迟春峰', '2020年10月22日', '11:43:41', '修改了体温表:Userstate{id=0, sno=2018030524, sname=\'null\', wen=\'36.0\', add=\'null\', time=\'0\'}');
INSERT INTO `logs` VALUES ('310', '2018030524迟春峰', '2020年10月22日', '11:45:02', '修改了体温表:Userstate{id=0, sno=2018030524, sname=\'null\', wen=\'36.0\', add=\'null\', time=\'2020/10/22-11\'}');
INSERT INTO `logs` VALUES ('311', '2018030524迟春峰', '2020年10月22日', '11:46:20', '登录了账号');
INSERT INTO `logs` VALUES ('312', '2018030524迟春峰', '2020年10月22日', '11:46:29', '修改了体温表:Userstate{id=0, sno=2018030524, sname=\'null\', wen=\'36.1\', add=\'null\', time=\'0\'}');
INSERT INTO `logs` VALUES ('313', '2018030524迟春峰', '2020年10月22日', '11:46:40', '修改了体温表:Userstate{id=0, sno=2018030524, sname=\'null\', wen=\'36.1\', add=\'null\', time=\'2020/10/22-11\'}');
INSERT INTO `logs` VALUES ('314', '123', '2020年10月22日', '11:47:43', '登录系统');
INSERT INTO `logs` VALUES ('315', '0null', '2020年10月22日', '11:49:18', '修改了体温表:Userstate{id=0, sno=0, sname=\'null\', wen=\'36.6\', add=\'0\', time=\'0\'}');
INSERT INTO `logs` VALUES ('316', '0null', '2020年10月22日', '11:49:32', '修改了体温表:Userstate{id=0, sno=0, sname=\'null\', wen=\'36.6\', add=\'达瓦达瓦\', time=\'2020/10/22-11\'}');
INSERT INTO `logs` VALUES ('317', '2018030524迟春峰', '2020年10月22日', '11:49:55', '登录了账号');
INSERT INTO `logs` VALUES ('318', '2018030524迟春峰', '2020年10月22日', '11:50:05', '修改了体温表:Userstate{id=0, sno=2018030524, sname=\'null\', wen=\'36.6\', add=\'达瓦大大无大无大无多\', time=\'2020/10/22-11\'}');
INSERT INTO `logs` VALUES ('319', '2018030524迟春峰', '2020年10月22日', '11:53:28', '登录了账号');
INSERT INTO `logs` VALUES ('320', '2018030524迟春峰', '2020年10月22日', '11:53:32', '修改了体温表:Userstate{id=0, sno=2018030524, sname=\'迟春峰\', wen=\'36.6\', add=\'0\', time=\'0\'}');
INSERT INTO `logs` VALUES ('321', '田蒙恩', '2020年10月22日', '13:24:25', '登录系统');
INSERT INTO `logs` VALUES ('322', '田蒙恩', '2020年10月22日', '13:37:41', '登录系统');
INSERT INTO `logs` VALUES ('323', '田蒙恩', '2020年10月22日', '13:38:22', '修改了新闻表:New{id=6, type=\'更新日志\', time=\'2020-10-21\', title=\'新增体温模块\', content=\'身体情况表userstate\n	id\n	sno\n	体温\n		wen\n	外出地点\n		radd\n	外出时间\n		time\n--接口：getUserstate 获取当前用户体温列表，参数：无。modifyUserstate 修改当前用户体温列表，参数：wen：体温，add：外出地点，time：外出时间（没有传空字符串），成功返回1，失败返回0，-1未登录\'}');
INSERT INTO `logs` VALUES ('324', '田蒙恩', '2020年10月22日', '13:43:00', '登录系统');
INSERT INTO `logs` VALUES ('325', '田蒙恩', '2020年10月22日', '13:45:11', '登录系统');
INSERT INTO `logs` VALUES ('326', '田蒙恩', '2020年10月22日', '13:48:04', '登录系统');
INSERT INTO `logs` VALUES ('327', '2018030509田蒙恩', '2020年10月22日', '14:05:36', '登录了账号');
INSERT INTO `logs` VALUES ('328', '2018030524迟春峰', '2020年10月22日', '14:25:44', '登录了账号');
INSERT INTO `logs` VALUES ('329', '2018030509田蒙恩', '2020年10月22日', '14:26:37', '登录了账号');
INSERT INTO `logs` VALUES ('330', '2018030528张守成', '2020年10月22日', '15:04:21', '登录了账号');
INSERT INTO `logs` VALUES ('331', '2018030524迟春峰', '2020年10月22日', '15:36:28', '登录了账号');
INSERT INTO `logs` VALUES ('332', '2018030524迟春峰', '2020年10月22日', '15:59:14', '登录了账号');
INSERT INTO `logs` VALUES ('333', '2018030524迟春峰', '2020年10月22日', '16:22:45', '登录了账号');
INSERT INTO `logs` VALUES ('334', '2018030509田蒙恩', '2020年10月22日', '16:30:45', '登录了账号');
INSERT INTO `logs` VALUES ('335', '2018030528张守成', '2020年10月22日', '16:30:57', '登录了账号');
INSERT INTO `logs` VALUES ('336', '2018030509田蒙恩', '2020年10月22日', '16:31:04', '登录了账号');
INSERT INTO `logs` VALUES ('337', '2018030509田蒙恩', '2020年10月22日', '16:32:13', '登录了账号');
INSERT INTO `logs` VALUES ('338', '2018030509田蒙恩', '2020年10月22日', '16:32:22', '登录了账号');
INSERT INTO `logs` VALUES ('339', '2018030509田蒙恩', '2020年10月22日', '16:33:11', '登录了账号');
INSERT INTO `logs` VALUES ('340', '2018030509田蒙恩', '2020年10月22日', '16:34:19', '登录了账号');
INSERT INTO `logs` VALUES ('341', '2018030509田蒙恩', '2020年10月22日', '16:34:38', '登录了账号');
INSERT INTO `logs` VALUES ('342', '2018030509田蒙恩', '2020年10月22日', '16:35:09', '登录了账号');
INSERT INTO `logs` VALUES ('343', '2018030509田蒙恩', '2020年10月22日', '16:38:43', '登录了账号');
INSERT INTO `logs` VALUES ('344', '2018030554窦英钊', '2020年10月22日', '16:40:38', '登录了账号');
INSERT INTO `logs` VALUES ('345', '2018030554窦英钊', '2020年10月22日', '16:41:00', '登录了账号');
INSERT INTO `logs` VALUES ('346', '2018030554窦英钊', '2020年10月22日', '16:41:30', '登录了账号');
INSERT INTO `logs` VALUES ('347', '2018030554窦英钊', '2020年10月22日', '16:42:25', '登录了账号');
INSERT INTO `logs` VALUES ('348', '2018030509田蒙恩', '2020年10月22日', '16:46:51', '登录了账号');
INSERT INTO `logs` VALUES ('349', '2018030509田蒙恩', '2020年10月22日', '16:49:06', '登录了账号');
INSERT INTO `logs` VALUES ('350', '2018030528张守成', '2020年10月22日', '16:49:26', '登录了账号');
INSERT INTO `logs` VALUES ('351', '2018030509田蒙恩', '2020年10月22日', '16:52:14', '登录了账号');
INSERT INTO `logs` VALUES ('352', '2018030509田蒙恩', '2020年10月22日', '16:54:55', '修改了体温表:Userstate{id=0, sno=2018030509, sname=\'田蒙恩\', wen=\'37.5\', add=\'\', time=\'2020/10/22-16\'}');
INSERT INTO `logs` VALUES ('353', '2018030509田蒙恩', '2020年10月22日', '16:55:26', '修改了体温表:Userstate{id=0, sno=2018030509, sname=\'田蒙恩\', wen=\'36.6\', add=\'去他二大爷家了\', time=\'2020/10/22-16\'}');
INSERT INTO `logs` VALUES ('354', '2018030509田蒙恩', '2020年10月22日', '16:56:51', '登录了账号');
INSERT INTO `logs` VALUES ('355', '2018030524迟春峰', '2020年10月22日', '17:00:15', '登录了账号');
INSERT INTO `logs` VALUES ('356', '2018030524迟春峰', '2020年10月22日', '17:08:27', '登录了账号');
INSERT INTO `logs` VALUES ('357', '2018030524迟春峰', '2020年10月22日', '17:15:36', '登录了账号');
INSERT INTO `logs` VALUES ('358', '2018030509田蒙恩', '2020年10月22日', '17:17:13', '登录了账号');
INSERT INTO `logs` VALUES ('359', '123', '2020年10月22日', '17:21:09', '登录系统');
INSERT INTO `logs` VALUES ('360', '2018030524迟春峰', '2020年10月22日', '17:29:53', '登录了账号');
INSERT INTO `logs` VALUES ('361', '2018030509田蒙恩', '2020年10月22日', '17:50:41', '登录了账号');
INSERT INTO `logs` VALUES ('362', '2018030509田蒙恩', '2020年10月22日', '18:01:32', '登录了账号');
INSERT INTO `logs` VALUES ('363', '田蒙恩', '2020年10月22日', '18:04:59', '登录系统');
INSERT INTO `logs` VALUES ('364', '2018030509田蒙恩', '2020年10月22日', '18:09:28', '登录了账号');
INSERT INTO `logs` VALUES ('365', '田蒙恩', '2020年10月22日', '18:28:25', '登录系统');
INSERT INTO `logs` VALUES ('366', '2018030509田蒙恩', '2020年10月22日', '18:30:13', '登录了账号');
INSERT INTO `logs` VALUES ('367', '2018030509田蒙恩', '2020年10月22日', '18:31:01', '登录了账号');
INSERT INTO `logs` VALUES ('368', '田蒙恩', '2020年10月22日', '18:36:43', '新建新闻:New{id=0, type=\'站内通告\', time=\'2020-10-22\', title=\'新增文件，接口引用\', content=\'1.三张轮播图，news下的banner02.jpg，banner03.jpg，banner04.jpg\n2.新生须知，校园指引，请求接口searchNews(\"id\",id值)  8位新生须知，9为校园指引，内容为原页面的body中的所有内容\'}');
INSERT INTO `logs` VALUES ('369', '2018030524迟春峰', '2020年10月22日', '18:39:03', '登录了账号');
INSERT INTO `logs` VALUES ('370', '田蒙恩', '2020年10月22日', '18:40:21', '修改了新闻表:New{id=9, type=\'校内新闻\', time=\'2020-10-22\', title=\'\', content=\'		<div class=\"bar\">\n\n			<a href=\"mainPage.html\">\n				<div id=\"back\"> <span class=\"iconfont icon-fanhui back-icon\"></span> </div>\n			</a>\n\n			<span id=\"title\">校园指引 </span>\n			<div id=\"right\">\n\n			</div>\n		</div>\n\n\n		<div class=\"index\">\n			<div class=\"contentTitle\">\n				山东信息职业技术学院滨海校区服务设施\n			</div>\n			<div class=\"maincontent\">\n\n\n\n				<div class=\"bBox\">\n\n\n\n					<p>山东信息职业技术学院滨海校区占地八百亩，设备一应俱全，环境优雅的一所大学。本文会从食、住、行以及学习几个方面介绍校园。首先映入眼帘的是我们的校门。</p>\n<p class=\"imageTitle\">信院校门</p>\n<img src=\"http://wuqiu.vaiwan.com/news/school01.jpg\" >\n					\n\n				</div>\n				<div class=\"bBox\">\n					<p>新同学来到学校后首先会关注住宿的问题。学校现有四个宿舍楼，均是标准六人间，宿舍内卫生间，阳台，盥洗池，一应俱全。每晚10点钟过后断电。</p>\n\n\n<p class=\"imageTitle\">一号宿舍楼及楼内</p>\n<img src=\"http://wuqiu.vaiwan.com/news/school02.jpg\" >\n<img src=\"http://wuqiu.vaiwan.com/news/school03.jpg\" >\n<img src=\"http://wuqiu.vaiwan.com/news/school04.jpg\" >\n					\n\n\n				</div>\n				<div class=\"bBox\">\n					<p>喜欢吃的小伙伴们有口福了，学校食堂分为两层，全国各地各式各样的饭菜应有尽有，一定要去品尝一下。</p>\n<p class=\"imageTitle\">食堂正门</p>\n<img src=\"http://wuqiu.vaiwan.com/news/school05.jpg\" >\n					\n<p class=\"imageTitle\">食堂侧照</p>\n<img src=\"http://wuqiu.vaiwan.com/news/school06.jpg\" >\n					\n<p class=\"imageTitle\">浴池</p>\n<img src=\"http://wuqiu.vaiwan.com/news/school07.jpg\" >\n					\n\n				</div>\n				<div class=\"bBox\">\n					<p>3、4、5、号楼为教学楼，水、电、无线wifi应有尽有，环境优美，学习气氛浓烈，各位爱学习的小伙伴一定要在教学楼里感受一下。</p>\n<p class=\"imageTitle\">四，五号教学楼</p>\n<img src=\"img/school08.jpg\" >\n					\n\n\n				</div>\n				<div class=\"bBox\">\n					<p>此外，我们校园还有许多观赏地和服务地，如绵绵不断的河流，水中嬉戏的鱼儿，另外还有专门为同学们设置的快递柜，室外洗手池。</p>\n\n<p class=\"imageTitle\">学校内河流</p>\n<img src=\"http://wuqiu.vaiwan.com/news/school09.jpg\" >\n<img src=\"http://wuqiu.vaiwan.com/news/school10.jpg\" >\n					\n<p class=\"imageTitle\">校园快递柜</p>\n<img src=\"http://wuqiu.vaiwan.com/news/school11.jpg\" >\n					\n<p class=\"imageTitle\">室外洗手池</p>\n<img src=\"http://wuqiu.vaiwan.com/news/school12.jpg\" >\n					\n<p class=\"imageTitle\">室外篮球场</p>\n<img src=\"http://wuqiu.vaiwan.com/news/school13.jpg\" >\n					\n\n<p class=\"imageTitle\">学校主干道</p>\n<img src=\"http://wuqiu.vaiwan.com/news/school14.jpg\" >\n<img src=\"http://wuqiu.vaiwan.com/news/school15.jpg\" >\n					\n\n\n				</div>\n				<div class=\"aroundBox\">\n					“须知少时凌云志，曾许人间第一流”，希望每位小伙伴都可以带着自己的初心与梦想，在信院软件与大数据系扬帆起航，创造出色彩斑斓的未来！\n				</div>\n			</div>\n		</div>\'}');
INSERT INTO `logs` VALUES ('371', '田蒙恩', '2020年10月22日', '18:40:39', '修改了新闻表:New{id=9, type=\'校内新闻\', time=\'2020-10-22\', title=\'\', content=\'		\n\n			\n				  \n			\n\n			校园指引 \n			\n\n			\n		\n\n\n		\n			\n				山东信息职业技术学院滨海校区服务设施\n			\n			\n\n\n\n				\n\n\n\n					山东信息职业技术学院滨海校区占地八百亩，设备一应俱全，环境优雅的一所大学。本文会从食、住、行以及学习几个方面介绍校园。首先映入眼帘的是我们的校门。\n信院校门\n\n					\n\n				\n				\n					新同学来到学校后首先会关注住宿的问题。学校现有四个宿舍楼，均是标准六人间，宿舍内卫生间，阳台，盥洗池，一应俱全。每晚10点钟过后断电。\n\n\n一号宿舍楼及楼内\n\n\n\n					\n\n\n				\n				\n					喜欢吃的小伙伴们有口福了，学校食堂分为两层，全国各地各式各样的饭菜应有尽有，一定要去品尝一下。\n食堂正门\n\n					\n食堂侧照\n\n					\n浴池\n\n					\n\n				\n				\n					3、4、5、号楼为教学楼，水、电、无线wifi应有尽有，环境优美，学习气氛浓烈，各位爱学习的小伙伴一定要在教学楼里感受一下。\n四，五号教学楼\n\n					\n\n\n				\n				\n					此外，我们校园还有许多观赏地和服务地，如绵绵不断的河流，水中嬉戏的鱼儿，另外还有专门为同学们设置的快递柜，室外洗手池。\n\n学校内河流\n\n\n					\n校园快递柜\n\n					\n室外洗手池\n\n					\n室外篮球场\n\n					\n\n学校主干道\n\n\n					\n\n\n				\n				\n					“须知少时凌云志，曾许人间第一流”，希望每位小伙伴都可以带着自己的初心与梦想，在信院软件与大数据系扬帆起航，创造出色彩斑斓的未来！\n				\n			\n		\'}');
INSERT INTO `logs` VALUES ('372', '田蒙恩', '2020年10月22日', '18:41:31', '修改了新闻表:New{id=9, type=\'校内新闻\', time=\'2020-10-22\', title=\'\', content=\'\'}');
INSERT INTO `logs` VALUES ('373', '田蒙恩', '2020年10月22日', '18:43:35', '登录系统');
INSERT INTO `logs` VALUES ('374', '田蒙恩', '2020年10月22日', '18:43:50', '修改了新闻表:New{id=9, type=\'校内新闻\', time=\'2020-10-22\', title=\'\', content=\'\'}');
INSERT INTO `logs` VALUES ('375', '田蒙恩', '2020年10月22日', '18:44:39', '修改了新闻表:New{id=9, type=\'校内新闻\', time=\'2020-10-22\', title=\'\', content=\'\'}');
INSERT INTO `logs` VALUES ('376', '田蒙恩', '2020年10月22日', '18:45:04', '修改了新闻表:New{id=9, type=\'校内新闻\', time=\'2020-10-22\', title=\'\', content=\'\'}');
INSERT INTO `logs` VALUES ('377', '田蒙恩', '2020年10月22日', '18:46:17', '修改了新闻表:New{id=9, type=\'校内新闻\', time=\'2020-10-22\', title=\'\', content=\'\'}');
INSERT INTO `logs` VALUES ('378', '田蒙恩', '2020年10月22日', '18:46:47', '修改了新闻表:New{id=9, type=\'校内新闻\', time=\'2020-10-22\', title=\'校园指引\', content=\'\'}');
INSERT INTO `logs` VALUES ('379', '田蒙恩', '2020年10月22日', '18:47:18', '修改了新闻表:New{id=4, type=\'站内通告\', time=\'2020-10-19\', title=\'\', content=\'服务器将于2020-10-19 16：45下线维护，最晚于2020-10-19 18：40停止维护\'}');
INSERT INTO `logs` VALUES ('380', '田蒙恩', '2020年10月22日', '18:47:44', '修改了新闻表:New{id=4, type=\'站内通告\', time=\'2020-10-19\', title=\'下线维护\', content=\'服务器将于2020-10-19 16：45下线维护，最晚于2020-10-19 18：40停止维护\'}');
INSERT INTO `logs` VALUES ('381', '田蒙恩', '2020年10月22日', '18:48:49', '修改了新闻表:New{id=9, type=\'校内新闻\', time=\'2020-10-22\', title=\'校园指引\', content=\'\'}');
INSERT INTO `logs` VALUES ('382', '田蒙恩', '2020年10月22日', '18:50:15', '修改了新闻表:New{id=10, type=\'站内通告\', time=\'2020-10-22\', title=\'新增文件，接口引用\', content=\'1.三张轮播图，news下的banner02.jpg，banner03.jpg，banner04.jpg\n2.新生须知，校园指引，请求接口searchNews(\"id\",id值)  8位新生须知，9为校园指引，内容为原页面的body中的所有标签内容\'}');
INSERT INTO `logs` VALUES ('383', '田蒙恩', '2020年10月22日', '18:50:46', '修改了新闻表:New{id=10, type=\'站内通告\', time=\'2020-10-22\', title=\'新增文件，接口引用\', content=\'1.三张轮播图，news下的banner02.jpg，banner03.jpg，banner04.jpg\n2.新生须知，校园指引，请求接口searchNews(\"id\",id值)  id 8为新生须知，9为校园指引，内容为原页面的body中的所有标签内容\'}');
INSERT INTO `logs` VALUES ('384', '田蒙恩', '2020年10月22日', '18:50:58', '修改了新闻表:New{id=10, type=\'站内通告\', time=\'2020-10-22\', title=\'新增文件，接口引用\', content=\'1.三张轮播图，news下的banner02.jpg，banner03.jpg，banner04.jpg\n2.新生须知，校园指引，请求接口searchNews(\"id\",id值)  id值 8为新生须知，9为校园指引，内容为原页面的body中的所有标签内容\'}');
INSERT INTO `logs` VALUES ('385', '田蒙恩', '2020年10月22日', '19:01:51', '登录系统');
INSERT INTO `logs` VALUES ('386', '田蒙恩', '2020年10月22日', '19:03:28', '登录系统');
INSERT INTO `logs` VALUES ('387', '田蒙恩', '2020-10-22', '19:04:52', '登录系统');
INSERT INTO `logs` VALUES ('388', '2018030509田蒙恩', '2020-10-22', '19:25:52', '登录了账号');
INSERT INTO `logs` VALUES ('389', '田蒙恩', '2020-10-22', '19:41:10', '登录系统');
INSERT INTO `logs` VALUES ('390', '田蒙恩', '2020-10-22', '19:41:25', '登录系统');
INSERT INTO `logs` VALUES ('391', '2018030524迟春峰', '2020-10-22', '19:46:37', '登录了账号');
INSERT INTO `logs` VALUES ('392', '田蒙恩', '2020-10-22', '19:48:10', '登录系统');
INSERT INTO `logs` VALUES ('393', '田蒙恩', '2020-10-22', '19:48:57', '登录系统');
INSERT INTO `logs` VALUES ('394', '田蒙恩', '2020-10-22', '19:50:07', '登录系统');
INSERT INTO `logs` VALUES ('395', '田蒙恩', '2020-10-22', '19:50:38', '登录系统');
INSERT INTO `logs` VALUES ('396', '2018030524迟春峰', '2020-10-22', '20:13:34', '登录了账号');
INSERT INTO `logs` VALUES ('397', '123', '2020-10-22', '20:55:24', '登录系统');
INSERT INTO `logs` VALUES ('398', '2018030524迟春峰', '2020-10-22', '21:02:56', '登录了账号');
INSERT INTO `logs` VALUES ('399', '2018030524迟春峰', '2020-10-22', '21:09:40', '登录了账号');
INSERT INTO `logs` VALUES ('400', '201809111李文琦', '2020-10-22', '21:17:35', '登录了账号');
INSERT INTO `logs` VALUES ('401', '田蒙恩', '2020-10-22', '21:18:16', '登录系统');
INSERT INTO `logs` VALUES ('402', '201809111李文琦', '2020-10-22', '21:18:40', '登录了账号');
INSERT INTO `logs` VALUES ('403', '201809111李文琦', '2020-10-22', '21:18:54', '登录了账号');
INSERT INTO `logs` VALUES ('404', '田蒙恩', '2020-10-22', '21:19:18', '修改了用户表:User{id=18, sno=201809111, sname=\'李文琦\', syear=\'2022\', zhuanye=\'信息\', yuanxi=\'保密咯里\', type=\'学生\', school=\'山东工业技师学院\'}');
INSERT INTO `logs` VALUES ('405', '田蒙恩', '2020-10-22', '21:19:39', '修改了用户表:User{id=18, sno=201809111, sname=\'李文琦\', syear=\'2022\', zhuanye=\'信息\', yuanxi=\'信息系\', type=\'学生\', school=\'山东工业技师学院\'}');
INSERT INTO `logs` VALUES ('406', '201809111李文琦', '2020-10-22', '21:19:56', '登录了账号');
INSERT INTO `logs` VALUES ('407', '2018030509田蒙恩', '2020-10-22', '21:26:16', '登录了账号');
INSERT INTO `logs` VALUES ('408', '2018030509田蒙恩', '2020-10-22', '21:26:30', '登录了账号');
INSERT INTO `logs` VALUES ('409', '2018030509田蒙恩', '2020-10-22', '21:27:10', '登录了账号');
INSERT INTO `logs` VALUES ('410', '2018030509田蒙恩', '2020-10-22', '21:31:47', '登录了账号');
INSERT INTO `logs` VALUES ('411', '2018030524迟春峰', '2020-10-22', '21:32:47', '登录了账号');
INSERT INTO `logs` VALUES ('412', '2018030509田蒙恩', '2020-10-22', '21:36:38', '登录了账号');
INSERT INTO `logs` VALUES ('413', '2018030509田蒙恩', '2020-10-22', '21:37:23', '登录了账号');
INSERT INTO `logs` VALUES ('414', '2018030509田蒙恩', '2020-10-22', '21:41:15', '登录了账号');
INSERT INTO `logs` VALUES ('415', '2018030509田蒙恩', '2020-10-22', '21:41:38', '登录了账号');
INSERT INTO `logs` VALUES ('416', '2018030509田蒙恩', '2020-10-23', '08:44:02', '登录了账号');
INSERT INTO `logs` VALUES ('417', '田蒙恩', '2020-10-23', '08:47:03', '登录系统');
INSERT INTO `logs` VALUES ('418', '201809111李文琦', '2020-10-23', '08:47:12', '登录了账号');
INSERT INTO `logs` VALUES ('419', '2018030512吕建斌', '2020-10-23', '08:48:20', '登录了账号');
INSERT INTO `logs` VALUES ('420', '2018030504于亮', '2020-10-23', '08:49:51', '登录了账号');
INSERT INTO `logs` VALUES ('421', '20170727任乃华', '2020-10-23', '08:50:32', '登录了账号');
INSERT INTO `logs` VALUES ('422', '11', '2020-10-23', '08:52:21', '登录了账号');
INSERT INTO `logs` VALUES ('423', '2018030509田蒙恩', '2020-10-23', '08:52:59', '登录了账号');
INSERT INTO `logs` VALUES ('424', '2018030524迟春峰', '2020-10-23', '10:47:25', '登录了账号');
INSERT INTO `logs` VALUES ('425', '2018030524迟春峰', '2020-10-23', '10:54:19', '登录了账号');
INSERT INTO `logs` VALUES ('426', '2018030524迟春峰', '2020-10-23', '11:07:54', '登录了账号');
INSERT INTO `logs` VALUES ('427', '2018030509田蒙恩', '2020-10-23', '11:38:36', '登录了账号');
INSERT INTO `logs` VALUES ('428', '2018030509田蒙恩', '2020-10-23', '11:40:04', '登录了账号');
INSERT INTO `logs` VALUES ('429', '2018030509田蒙恩', '2020-10-23', '11:44:38', '登录了账号');
INSERT INTO `logs` VALUES ('430', '2018030509田蒙恩', '2020-10-23', '11:44:42', '登录了账号');
INSERT INTO `logs` VALUES ('431', '2018030509田蒙恩', '2020-10-23', '11:49:07', '登录了账号');
INSERT INTO `logs` VALUES ('432', '2018030509田蒙恩', '2020-10-23', '11:58:19', '登录了账号');
INSERT INTO `logs` VALUES ('433', '2018030509田蒙恩', '2020-10-23', '11:58:51', '登录了账号');
INSERT INTO `logs` VALUES ('434', '田蒙恩', '2020-10-23', '14:02:31', '登录系统');
INSERT INTO `logs` VALUES ('435', '2018030524迟春峰', '2020-10-23', '14:50:58', '登录了账号');
INSERT INTO `logs` VALUES ('436', '2018030509田蒙恩', '2020-10-23', '15:24:30', '登录了账号');
INSERT INTO `logs` VALUES ('437', '2018030524迟春峰', '2020-10-23', '16:19:44', '登录了账号');
INSERT INTO `logs` VALUES ('438', '0人上人', '2020-10-23', '18:13:20', '登录了账号');
INSERT INTO `logs` VALUES ('439', '田蒙恩', '2020-10-23', '18:41:05', '登录系统');
INSERT INTO `logs` VALUES ('440', '2018030524迟春峰', '2020-10-23', '18:48:01', '登录了账号');
INSERT INTO `logs` VALUES ('441', '2018030524迟春峰', '2020-10-23', '19:25:45', '登录了账号');
INSERT INTO `logs` VALUES ('442', '2018030524迟春峰', '2020-10-23', '19:48:46', '登录了账号');
INSERT INTO `logs` VALUES ('443', '2018030524迟春峰', '2020-10-23', '19:49:27', '登录了账号');
INSERT INTO `logs` VALUES ('444', '2018030509田蒙恩', '2020-10-23', '19:55:20', '登录了账号');
INSERT INTO `logs` VALUES ('445', '2018030509田蒙恩', '2020-10-23', '19:57:20', '登录了账号');
INSERT INTO `logs` VALUES ('446', '2018030509田蒙恩', '2020-10-23', '19:58:34', '登录了账号');
INSERT INTO `logs` VALUES ('447', '2018030509田蒙恩', '2020-10-23', '20:00:39', '登录了账号');
INSERT INTO `logs` VALUES ('448', '2018030509田蒙恩', '2020-10-23', '20:01:23', '登录了账号');
INSERT INTO `logs` VALUES ('449', '2018030509田蒙恩', '2020-10-23', '20:02:12', '登录了账号');
INSERT INTO `logs` VALUES ('450', '2018030524迟春峰', '2020-10-23', '20:03:33', '登录了账号');
INSERT INTO `logs` VALUES ('451', '2018030509田蒙恩', '2020-10-23', '20:04:36', '登录了账号');
INSERT INTO `logs` VALUES ('452', '2018030509田蒙恩', '2020-10-23', '20:08:10', '登录了账号');
INSERT INTO `logs` VALUES ('453', '田蒙恩', '2020-10-23', '20:13:15', '登录系统');
INSERT INTO `logs` VALUES ('454', '2018030509田蒙恩', '2020-10-23', '20:17:27', '登录了账号');
INSERT INTO `logs` VALUES ('455', '2018030509田蒙恩', '2020-10-23', '20:19:11', '修改了体温表:Userstate{id=0, sno=2018030509, sname=\'田蒙恩\', wen=\'11.1\', add=\'差\', time=\'2020/10/23-20\'}');
INSERT INTO `logs` VALUES ('456', '2018030509田蒙恩', '2020-10-23', '20:21:56', '登录了账号');
INSERT INTO `logs` VALUES ('457', '田蒙恩', '2020-10-23', '20:29:51', '登录系统');
INSERT INTO `logs` VALUES ('458', '2018030509田蒙恩', '2020-10-24', '08:38:26', '登录了账号');
INSERT INTO `logs` VALUES ('459', '2018030509田蒙恩', '2020-10-24', '09:07:51', '登录了账号');
INSERT INTO `logs` VALUES ('460', '20180305张三', '2020-10-24', '09:23:54', '登录了账号');
INSERT INTO `logs` VALUES ('461', '田蒙恩', '2020-10-24', '09:41:45', '登录系统');
INSERT INTO `logs` VALUES ('462', '田蒙恩', '2020-10-24', '09:41:58', '修改了用户表:User{id=1, sno=2018030509, sname=\'田蒙恩\', syear=\'201\', zhuanye=\'软件技术\', yuanxi=\'软件与大数据系\', type=\'学生\', school=\'山东信息职业技术学院\'}');
INSERT INTO `logs` VALUES ('463', '田蒙恩', '2020-10-24', '09:42:04', '修改了用户表:User{id=1, sno=2018030509, sname=\'田蒙恩\', syear=\'2018\', zhuanye=\'软件技术\', yuanxi=\'软件与大数据系\', type=\'学生\', school=\'山东信息职业技术学院\'}');
INSERT INTO `logs` VALUES ('464', '20180305张三', '2020-10-24', '09:44:32', '登录了账号');
INSERT INTO `logs` VALUES ('465', '2018030524迟春峰', '2020-10-24', '10:24:02', '登录了账号');
INSERT INTO `logs` VALUES ('466', '20180304张三', '2020-10-24', '10:34:56', '登录了账号');
INSERT INTO `logs` VALUES ('467', '田蒙恩', '2020-10-24', '10:36:00', '登录系统');
INSERT INTO `logs` VALUES ('468', '田蒙恩', '2020-10-24', '10:36:22', '修改了用户表:User{id=2, sno=2018030524, sname=\'迟春峰\', syear=\'201\', zhuanye=\'软件技术\', yuanxi=\'软件与大数据系\', type=\'学生\', school=\'山东信息职业技术学院\'}');
INSERT INTO `logs` VALUES ('469', '田蒙恩', '2020-10-24', '10:36:30', '修改了用户表:User{id=2, sno=2018030524, sname=\'迟春峰\', syear=\'2019\', zhuanye=\'软件技术\', yuanxi=\'软件与大数据系\', type=\'学生\', school=\'山东信息职业技术学院\'}');
INSERT INTO `logs` VALUES ('470', '20180304张三', '2020-10-24', '10:36:44', '登录了账号');
INSERT INTO `logs` VALUES ('471', '20180304张三', '2020-10-24', '10:39:29', '修改了体温表:Userstate{id=0, sno=20180304, sname=\'张三\', wen=\'36.6\', add=\'去了公园\', time=\'2020/10/24-10\'}');
INSERT INTO `logs` VALUES ('472', '田蒙恩', '2020-10-24', '10:41:29', '修改了报修表:Repair{id=4, sno=2018030524, sname=\'迟春峰\', time=\'2020/10/16-19:23:5\', add=\'大门口\', deta=\'狗子有点2\', photo=\'repairs/001.jpg\', state=\'处理完\'}');
INSERT INTO `logs` VALUES ('473', '2018030524迟春峰', '2020-10-29', '19:40:36', '登录了账号');
INSERT INTO `logs` VALUES ('474', '2018030524迟春峰', '2020-10-29', '19:49:17', '登录了账号');
INSERT INTO `logs` VALUES ('475', '2018030524迟春峰', '2020-10-29', '19:57:22', '登录了账号');
INSERT INTO `logs` VALUES ('476', '1迟春峰', '2020-10-29', '20:07:13', '登录了账号');
INSERT INTO `logs` VALUES ('477', '田蒙恩', '2020-10-29', '20:07:15', '登录系统');
INSERT INTO `logs` VALUES ('478', '110是我', '2020-10-29', '20:09:01', '登录了账号');
INSERT INTO `logs` VALUES ('479', '2018030509田蒙恩', '2020-10-29', '20:09:39', '登录了账号');
INSERT INTO `logs` VALUES ('480', '2018030509田蒙恩', '2020-10-29', '20:22:42', '登录了账号');
INSERT INTO `logs` VALUES ('481', '2018030509田蒙恩', '2020-10-29', '20:33:37', '登录了账号');
INSERT INTO `logs` VALUES ('482', '2018030509田蒙恩', '2020-10-29', '20:35:29', '登录了账号');
INSERT INTO `logs` VALUES ('483', '田蒙恩', '2020-10-29', '20:38:32', '登录系统');
INSERT INTO `logs` VALUES ('484', '田蒙恩', '2020-10-29', '20:44:50', '登录系统');
INSERT INTO `logs` VALUES ('485', '田蒙恩', '2020-10-31', '16:36:29', '登录系统');
INSERT INTO `logs` VALUES ('486', '田蒙恩', '2020-10-31', '16:37:03', '登录系统');
INSERT INTO `logs` VALUES ('487', '田蒙恩', '2020-10-31', '16:37:33', '登录系统');

-- ----------------------------
-- Table structure for `losts`
-- ----------------------------
DROP TABLE IF EXISTS `losts`;
CREATE TABLE `losts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sno` int(11) DEFAULT NULL,
  `deta` varchar(200) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `fontadd` varchar(150) DEFAULT NULL,
  `getadd` varchar(150) DEFAULT NULL,
  `sname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of losts
-- ----------------------------
INSERT INTO `losts` VALUES ('1', '2018030509', '捡到一个大金链', '2020-10-15', 'losts/001.jpg', '马路牙子边上', '我脖子上', '田蒙恩');
INSERT INTO `losts` VALUES ('2', '2018030524', '食堂3楼捡到，闪迪U盘一个', '2020/10/19-19:35:0', 'losts/54c5af5c-90a6-4df7-86bf-6f6fc56ad01a.jpg', '食堂3楼', '2号教学楼505', '迟春峰');
INSERT INTO `losts` VALUES ('4', '2018030524', '篮球场捡到AirPods一个', '2020/10/20-10:41:45', 'losts//c5a1cfa9-7008-4a18-8e14-ef6ee356d13f.jpg', '北篮球场', '1号楼505，18软5迟春峰', '迟春峰');
INSERT INTO `losts` VALUES ('5', '2018030554', '篮球场排椅，捡到外套一件', '2020/10/20-11:12:49', 'losts//28ecad54-13cf-4101-a881-30d1814d40fb.jpg', '南篮球场', '7号宿舍楼305，窦英钊', '迟春峰');
INSERT INTO `losts` VALUES ('6', '2018030524', '捡到智能手表一部', '2020/10/20-15:11:9', 'losts/5900561e-30d2-47d4-83d8-acde78a129e8.jpg', '操场', '1号宿舍楼203，王先龙', '迟春峰');
INSERT INTO `losts` VALUES ('7', '2018030524', '篮球场，捡到手串一枚', '2020/10/20-20:48:7', 'losts//6fdc6f2d-c406-47a5-8330-2dde598bf921.jpg', '篮球场', '3号宿舍楼108', '迟春峰');
INSERT INTO `losts` VALUES ('8', '2018030524', '公务员考试，教材-行测', '2020/10/21-8:33:53', 'losts//6a8900c9-952c-4baf-a1b4-e965c9e874bf.jpg', '南湖', '2号宿舍楼503', '迟春峰');
INSERT INTO `losts` VALUES ('9', '2018030509', 'demo', '2020/10/21-19:15:50', 'losts//22d7a828-3854-442c-bd4c-ba133075635d.jpg', 'demo', 'demo', '田蒙恩');
INSERT INTO `losts` VALUES ('10', '2018030528', '特摄玩具', '2020/10/22-16:51:47', 'losts//b92c5766-de87-47ae-ac93-5486c1392133.jpg', '2505', '2505', '张守成');
INSERT INTO `losts` VALUES ('11', '20180304', '衣服', '2020/10/24-10:38:56', 'losts//1f02de49-e924-4919-bd7d-efd1064b3ab0.jpg', '操场', '202教室', '张三');

-- ----------------------------
-- Table structure for `markes`
-- ----------------------------
DROP TABLE IF EXISTS `markes`;
CREATE TABLE `markes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sno` int(11) DEFAULT NULL,
  `deta` varchar(200) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `getadd` varchar(200) DEFAULT NULL,
  `sname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of markes
-- ----------------------------
INSERT INTO `markes` VALUES ('1', '2018030509', '马路牙子上捡的大金链', '2020-10-15', 'markes/001.jpg', '80', '直接来我脖子上取', '田蒙恩');
INSERT INTO `markes` VALUES ('2', '2018030524', '华为手表', '2020/10/19-20:41:18', 'markes/bb413cf9-c790-4b59-9478-752919f828d7.jpg', '200', '7号楼203宿舍', '迟春峰');
INSERT INTO `markes` VALUES ('3', '2018030524', '华为Mete80手机', '2020/10/20-10:45:38', 'markes/25d67e52-affa-4b0f-8245-2c14d6502294.jpg', '1000', '7号宿舍楼303，吕建斌', '迟春峰');
INSERT INTO `markes` VALUES ('5', '2018030554', '雅迪电动车，小电车，自用，8成新，', '2020/10/20-11:27:48', 'markes/cf4f414a-d415-4e0b-be99-2e8a884af713.jpg', '2000', '3号宿舍楼301，耿延超', '迟春峰');
INSERT INTO `markes` VALUES ('6', '2018030554', 'HP/惠普  GK100吃鸡键盘  吃鸡专用', '2020/10/20-14:36:16', 'markes/8e096fd1-6e9e-4c4a-9a90-ceef37afabf2.jpg', '119', '7号宿舍楼305王硕', '迟春峰');
INSERT INTO `markes` VALUES ('7', '2018030524', '外星人笔记本', '2020/10/20-15:3:31', 'markes/41fd7bd4-3cad-41fd-8cab-29ce3d8e649a.jpg', '3000', '2号教学楼505', '迟春峰');
INSERT INTO `markes` VALUES ('8', '2018030524', '二手大棉袄', '2020/10/20-20:52:47', 'markes/7948b61a-3ab2-48fe-adb8-2115e7161e13.jpg', '30', '1号教学楼308教室', '迟春峰');
INSERT INTO `markes` VALUES ('9', '20180304', '华为手机', '2020/10/24-10:40:19', 'markes/8481b991-193f-4247-8e92-d7deb7ae6a3a.jpg', '200', '宿舍202', '张三');

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '校内新闻', '2020-10-16', '震惊！某学生....', '所得税减肥减肥劳动力');
INSERT INTO `news` VALUES ('2', '站内测试', '2020-10-19', '第一次新建新闻', '第一次新建新闻失败，原因类名错误，未拿到数据');
INSERT INTO `news` VALUES ('3', '站内测试', '2020-10-19', '第二次新建新闻', '2020-10-19 14:24第二次新建新闻测试');
INSERT INTO `news` VALUES ('4', '站内通告', '2020-10-19', '下线维护', '服务器将于2020-10-19 16：45下线维护，最晚于2020-10-19 18：40停止维护');
INSERT INTO `news` VALUES ('5', '更新日志', '2020-10-20', '更新日志', 'markers，losts，repairs新增 用户姓名字段，页面可能存在显示问题。修复了搜索Repair报修表地址时失败的问题。');
INSERT INTO `news` VALUES ('6', '更新日志', '2020-10-21', '新增体温模块', '身体情况表userstate\n	id\n	sno\n	体温\n		wen\n	外出地点\n		radd\n	外出时间\n		time\n--接口：getUserstate 获取当前用户体温列表，参数：无。modifyUserstate 修改当前用户体温列表，参数：wen：体温，add：外出地点，time：外出时间（没有传空字符串），成功返回1，失败返回0，-1未登录');
INSERT INTO `news` VALUES ('7', '站内通告', '2020-10-21', '前端使用体验', '1.登录页，注册页样式按之前的说的样式改改\n2.登录后记住登录状态，通过登录时获取当前登录用户来判断\n3.个人头像，个人中心的头像跟名字\n4.个人中心加一个退出登录选项\n5.提交有点丑，放下边试试，或者改改样式，有点大');
INSERT INTO `news` VALUES ('8', '校内新闻', '2020-10-22', '新生须知', '<div class=\"index\">\r\n			<div class=\"bar\">\r\n\r\n				<a href=\"mainPage.html\">\r\n					<div id=\"back\"> <span class=\"iconfont icon-fanhui back-icon\"></span> </div>\r\n				</a>\r\n\r\n				<span id=\"title\"> </span>\r\n				<div id=\"right\">\r\n				</div>\r\n			</div>\r\n\r\n			<div class=\"contentTitle\">\r\n				大学新生必备物品清单\r\n			</div>\r\n			<div class=\"maincontent\">\r\n\r\n				<div class=\"aroundBox\">\r\n					<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@所有准大一新生们，你们大学生涯即将开始。在迈入大学校门前，行李物品都准备好了吗？行李装少了，怕临时买不到；行李装多了，担心到时候买多了，白白浪费一路的精力。</p>\r\n\r\n					<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;根据以往经验，在这里给大家列了一份新生入学物品清单，供大家参考。</p>\r\n				</div>\r\n\r\n\r\n				<div class=\"tbBox\">\r\n					<p>贴心小提示：此列表适合大部分新同学，重要的证件资料千万不要遗漏哦~</p>\r\n				</div>\r\n\r\n\r\n\r\n				<div class=\"bBox\">\r\n					<p class=\"classTitle\">>>>证件资料类</p>\r\n\r\n					<p>1、录取通知书、高考准考证</p>\r\n\r\n					<p>2、身份证正反两面复印件4份、户口本户主页和本人页复印件4份（部分高校院系报到需要）、兵役证（符合条件的同学）</p>\r\n\r\n					<p>3、团员档案（团员证以及转团组织关系）、学籍档案（非常重要！要从高中拿来，切记不可开封）</p>\r\n\r\n					<p>4、免冠一寸照，两寸照（学生证、团关系转接证、学生档案。）</p>\r\n\r\n					<p>5、户口迁移证明（想把户口迁到学校的同学需要带）</p>\r\n\r\n					<p>7、银行卡</p>\r\n\r\n					<p>8、贫困证明材料（这个在申请助学金的时候会用到）、生源地贷款回执单（借着生源地贷款的童鞋一定要记得带上哦）</p>\r\n\r\n				</div>\r\n				<div class=\"bBox\">\r\n					<p class=\"classTitle\">>>>生活用品类</p>\r\n\r\n					<p>1、少量现金（虽然现在大多数地方可以刷卡或在线支付，但还是带点以备不时之需）</p>\r\n\r\n					<p>2、两季衣物和鞋、衣架、挂钩（下雨天晾衣服或者在床铺上挂点零碎的小东西）</p>\r\n\r\n					<p>3、床上用品（学校会统一采购，）</p>\r\n\r\n					<p>4、创可贴（伤口比较复杂的情况下建议及时就医。）</p>\r\n\r\n					<p>5、防中暑药、感冒药、止泻药（以防水土不服拉肚子）、退烧药</p>\r\n\r\n					<p>6、外伤药品（气雾剂、碘酒、医用棉签、纱布、绷带等）</p>\r\n\r\n					<p>7、防疫用品（体温计、口罩、消毒液、一次性手套）</p>\r\n\r\n					<p>8、其它用品（针线包、带钥匙的小锁、毛巾、面巾纸、雨伞等）</p>\r\n				</div>\r\n\r\n\r\n\r\n				<div class=\"bBox\">\r\n					<p class=\"classTitle\">>>>学习用品类</p>\r\n\r\n					<p>1、应急台灯（最好能充电，宿舍停电或断电可以应急备用）</p>\r\n\r\n					<p>2、书包、笔记本、笔</p>\r\n\r\n					<p>3、文件夹、订书机并配钉、回形针或夹书的夹子</p>\r\n\r\n					<p>4、英语四、六级单词书以及自己感兴趣的书籍</p>\r\n\r\n					<p>5、电脑以及附件（U盘、移动硬盘、充电器、鼠标、网线）</p>\r\n\r\n					<p>6、移动电源、数据线、插排（小贴士：一般情况下墙上的插座不够用哦）</p>\r\n				</div>\r\n			</div>\r\n		</div>');
INSERT INTO `news` VALUES ('9', '校内新闻', '2020-10-22', '校园指引', '		<div class=\"bar\">\r\n\r\n			<a href=\"mainPage.html\">\r\n				<div id=\"back\"> <span class=\"iconfont icon-fanhui back-icon\"></span> </div>\r\n			</a>\r\n\r\n			<span id=\"title\">校园指引 </span>\r\n			<div id=\"right\">\r\n\r\n			</div>\r\n		</div>\r\n\r\n\r\n		<div class=\"index\">\r\n			<div class=\"contentTitle\">\r\n				山东信息职业技术学院滨海校区服务设施\r\n			</div>\r\n			<div class=\"maincontent\">\r\n\r\n\r\n\r\n				<div class=\"bBox\">\r\n\r\n\r\n\r\n					<p>山东信息职业技术学院滨海校区占地八百亩，设备一应俱全，环境优雅的一所大学。本文会从食、住、行以及学习几个方面介绍校园。首先映入眼帘的是我们的校门。</p>\r\n<p class=\"imageTitle\">信院校门</p>\r\n<img src=\"http://wuqiu.vaiwan.com/news/school01.jpg\" >\r\n					\r\n\r\n				</div>\r\n				<div class=\"bBox\">\r\n					<p>新同学来到学校后首先会关注住宿的问题。学校现有四个宿舍楼，均是标准六人间，宿舍内卫生间，阳台，盥洗池，一应俱全。每晚10点钟过后断电。</p>\r\n\r\n\r\n<p class=\"imageTitle\">一号宿舍楼及楼内</p>\r\n<img src=\"http://wuqiu.vaiwan.com/news/school02.jpg\" >\r\n<img src=\"http://wuqiu.vaiwan.com/news/school03.jpg\" >\r\n<img src=\"http://wuqiu.vaiwan.com/news/school04.jpg\" >\r\n					\r\n\r\n\r\n				</div>\r\n				<div class=\"bBox\">\r\n					<p>喜欢吃的小伙伴们有口福了，学校食堂分为两层，全国各地各式各样的饭菜应有尽有，一定要去品尝一下。</p>\r\n<p class=\"imageTitle\">食堂正门</p>\r\n<img src=\"http://wuqiu.vaiwan.com/news/school05.jpg\" >\r\n					\r\n<p class=\"imageTitle\">食堂侧照</p>\r\n<img src=\"http://wuqiu.vaiwan.com/news/school06.jpg\" >\r\n					\r\n<p class=\"imageTitle\">浴池</p>\r\n<img src=\"http://wuqiu.vaiwan.com/news/school07.jpg\" >\r\n					\r\n\r\n				</div>\r\n				<div class=\"bBox\">\r\n					<p>3、4、5、号楼为教学楼，水、电、无线wifi应有尽有，环境优美，学习气氛浓烈，各位爱学习的小伙伴一定要在教学楼里感受一下。</p>\r\n<p class=\"imageTitle\">四，五号教学楼</p>\r\n<img src=\"img/school08.jpg\" >\r\n					\r\n\r\n\r\n				</div>\r\n				<div class=\"bBox\">\r\n					<p>此外，我们校园还有许多观赏地和服务地，如绵绵不断的河流，水中嬉戏的鱼儿，另外还有专门为同学们设置的快递柜，室外洗手池。</p>\r\n\r\n<p class=\"imageTitle\">学校内河流</p>\r\n<img src=\"http://wuqiu.vaiwan.com/news/school09.jpg\" >\r\n<img src=\"http://wuqiu.vaiwan.com/news/school10.jpg\" >\r\n					\r\n<p class=\"imageTitle\">校园快递柜</p>\r\n<img src=\"http://wuqiu.vaiwan.com/news/school11.jpg\" >\r\n					\r\n<p class=\"imageTitle\">室外洗手池</p>\r\n<img src=\"http://wuqiu.vaiwan.com/news/school12.jpg\" >\r\n					\r\n<p class=\"imageTitle\">室外篮球场</p>\r\n<img src=\"http://wuqiu.vaiwan.com/news/school13.jpg\" >\r\n					\r\n\r\n<p class=\"imageTitle\">学校主干道</p>\r\n<img src=\"http://wuqiu.vaiwan.com/news/school14.jpg\" >\r\n<img src=\"http://wuqiu.vaiwan.com/news/school15.jpg\" >\r\n					\r\n\r\n\r\n				</div>\r\n				<div class=\"aroundBox\">\r\n					“须知少时凌云志，曾许人间第一流”，希望每位小伙伴都可以带着自己的初心与梦想，在信院软件与大数据系扬帆起航，创造出色彩斑斓的未来！\r\n				</div>\r\n			</div>\r\n		</div>');
INSERT INTO `news` VALUES ('10', '站内通告', '2020-10-22', '新增文件，接口引用', '1.三张轮播图，news下的banner02.jpg，banner03.jpg，banner04.jpg\n2.新生须知，校园指引，请求接口searchNews(\"id\",id值)  id值 8为新生须知，9为校园指引，内容为原页面的body中的所有标签内容');

-- ----------------------------
-- Table structure for `repairs`
-- ----------------------------
DROP TABLE IF EXISTS `repairs`;
CREATE TABLE `repairs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sno` int(11) NOT NULL,
  `time` varchar(20) DEFAULT NULL,
  `radd` varchar(500) DEFAULT NULL,
  `deta` varchar(200) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `sname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of repairs
-- ----------------------------
INSERT INTO `repairs` VALUES ('1', '2018030509', '2020-10-15', '大门口', '大门丢了', 'repairs/001.jpg', '已完成', '田蒙恩');
INSERT INTO `repairs` VALUES ('2', '2018030524', '2020/10/15-21:7:25', '1号楼101', '门锁坏了，门变形', 'repairs/001.jpg', '已完成', '迟春峰');
INSERT INTO `repairs` VALUES ('3', '2018030524', '2020/10/16-9:29:8', '7号宿舍楼305', '王硕裤头在床上，人丢了，', 'repairs/001.jpg', '处理中', '迟春峰');
INSERT INTO `repairs` VALUES ('4', '2018030524', '2020/10/16-19:23:5', '大门口', '狗子有点2', 'repairs/001.jpg', '处理完', '迟春峰');
INSERT INTO `repairs` VALUES ('5', '2018030524', '2020/10/16-19:49:25', '7号宿舍楼203', '小窗掉落，电灯开关漏电', 'repairs/001.jpg', '未处理', '迟春峰');
INSERT INTO `repairs` VALUES ('6', '2018030524', '2020/10/16-19:50:24', '7号宿舍楼303', '插座漏电，1号床螺丝松动，', 'repairs/001.jpg', '未处理', '迟春峰');
INSERT INTO `repairs` VALUES ('7', '2018030524', '2020/10/19-11:3:30', '1号宿舍楼203', '风扇掉了', 'repairs/001.jpg', '未处理', '迟春峰');
INSERT INTO `repairs` VALUES ('8', '2018030524', '2020/10/19-16:5:2', '5号楼202', '厕所水管漏水', 'repairs/7cb484b6-7038-4864-8cec-7e1931ca3f11.jpg', '未处理', '迟春峰');
INSERT INTO `repairs` VALUES ('9', '2018030524', '2020/10/19-16:9:11', '2号教学楼', '西侧电梯内灯坏', 'repairs/87f5208a-5695-4a31-9012-7f745ab941d7.jpg', '未处理', '迟春峰');
INSERT INTO `repairs` VALUES ('11', '2018030524', '2020/10/20-15:31:42', '2号教学楼400', '投影仪，电源接触不良', 'repairs/73dbe7e5-0b65-4f80-b866-64b4152742ee.jpg', '未处理', '迟春峰');
INSERT INTO `repairs` VALUES ('12', '2018030524', '2020/10/20-15:41:23', '学校门口', '东侧栏杆断了两根', 'repairs/9db56d28-55bf-4954-8990-9b8eb1395619.jpg', '未处理', '迟春峰');
INSERT INTO `repairs` VALUES ('13', '2018030554', '2020/10/20-16:30:52', '7号宿舍楼305', '305宿舍小窗掉了', 'repairs/d2a26bbb-e36d-4698-a142-6f226ba76dde.jpg', '未处理', '窦英钊');
INSERT INTO `repairs` VALUES ('14', '2018030554', '2020/10/20-16:34:5', '7号宿舍楼305', '电灯开关老化', 'repairs/b7ae1389-3404-4a8d-a39d-743511d252ea.jpg', '未处理', '窦英钊');
INSERT INTO `repairs` VALUES ('15', '2018030509', '2020/10/21-10:0:0', 'demo1', 'demo', 'repairs/23c9f9eb-4698-4c08-b72d-9a83905ec353.jpg', '未处理', '田蒙恩');
INSERT INTO `repairs` VALUES ('17', '2018030520', '2020/10/21-10:10:20', '地对地导弹', 'ddddd', 'repairs/103e6785-e886-4ce9-ad96-2fae951c9eb6.jpg', '未处理', '卢浩浩');
INSERT INTO `repairs` VALUES ('18', '2018030520', '2020/10/21-10:11:16', '2号楼500', '2号楼400，喇叭老化，漏电', 'repairs/1e9e1bc1-d712-4fc8-8ee9-7a94c76da853.jpg', '未处理', '卢浩浩');
INSERT INTO `repairs` VALUES ('19', '2018030520', '2020/10/21-10:13:9', '1号教学楼400', '投影仪不清楚', 'repairs/d3676c4e-dc18-449a-9829-36a77a429a22.jpg', '未处理', '卢浩浩');
INSERT INTO `repairs` VALUES ('20', '2018030528', '2020/10/22-16:50:57', '2505', '电脑坏了', 'repairs/a0bf2f16-f48a-46de-9864-24e82ff6f7d0.jpg', '未处理', '张守成');
INSERT INTO `repairs` VALUES ('21', '20180305', '2020/10/24-9:28:9', '报修', '报修1', 'repairs/f5fc942b-a664-4d66-9310-ac2454eed568.jpg', '未处理', '张三');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sno` int(11) NOT NULL,
  `sname` varchar(20) DEFAULT NULL,
  `syear` varchar(20) DEFAULT NULL,
  `zhuanye` varchar(100) DEFAULT NULL,
  `yuanxi` varchar(100) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `school` varchar(150) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`,`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '2018030509', '田蒙恩', '2018', '软件技术', '软件与大数据系', '学生', '山东信息职业技术学院', 'userHand/002.jpg');
INSERT INTO `users` VALUES ('2', '2018030524', '迟春峰', '2019', '软件技术', '软件与大数据系', '学生', '山东信息职业技术学院', 'userHand/user-ico03.jpg');
INSERT INTO `users` VALUES ('3', '2018030554', '窦英钊', '2018', '软件技术', '软件与大数据系', '学生', '山东信息职业技术学院', 'userHand/user-ico02.jpg');
INSERT INTO `users` VALUES ('4', '2018030512', '吕建斌', '2018', '软件技术', '软件与大数据系', '学生', '山东信息职业技术学院', 'userHand/user-ico03.jpg');
INSERT INTO `users` VALUES ('5', '2018030501', '丁雨欣', '2018', '软件技术', '软件与大数据系', '学生', '山东信息职业技术学院', 'userHand/001.jpg');
INSERT INTO `users` VALUES ('6', '2018030502', '马中飞', '2018', '软件技术', '软件与大数据系', '学生', '山东信息职业技术学院', 'userHand/user-ico06.jpg');
INSERT INTO `users` VALUES ('7', '2018030530', '张聪', '2018', '软件技术', '软件与大数据系', '学生', '山东信息职业技术学院', 'userHand/user-ico06.jpg');
INSERT INTO `users` VALUES ('8', '2018030528', '张守成', '2018', '软件技术', '软件与大数据系', '学生', '山东信息职业技术学院', 'userHand/user-ico01.jpg');
INSERT INTO `users` VALUES ('11', '888666', '焦腾达', '2016', '工业机器人应用与维护', '现代制造工程系', '学生', '山东工业技师学院', 'userHand/user-ico06.jpg');
INSERT INTO `users` VALUES ('12', '333333', '于子凡', '2018', '工业控制', '现代制造工程系', '学生', '山东工业技师学院', 'userHand/user-ico06.jpg');
INSERT INTO `users` VALUES ('13', '20170727', '任乃华', '2017', '机电一体化', '智能制造', '学生', '山东工业技术学院', 'userHand/user-ico06.jpg');
INSERT INTO `users` VALUES ('14', '1719577753', '尹鹏程', '2018', '工业控制', '现代制造工程系', '学生', '山东工业技师学院', 'userHand/user-ico06.jpg');
INSERT INTO `users` VALUES ('16', '2018030504', '于亮', '2018', '软件技术', '软件与大数据系', '学生', '山东信息职业技术学院', 'userHand/user-ico06.jpg');
INSERT INTO `users` VALUES ('17', '2018030520', '卢浩浩', '2018', '软件技术', '软件与大数据系', '学生', '山东信息职业技术学院', 'userHand/user-ico06.jpgico06.jpg');
INSERT INTO `users` VALUES ('18', '201809111', '李文琦', '2022', '信息', '信息系', '学生', '山东工业技师学院', 'userHand/user-ico06.jpg');
INSERT INTO `users` VALUES ('19', '20180305', '张三', '2018', '专业1', '院系1', '学生', '学校1', 'userHand/user-ico06.jpg');
INSERT INTO `users` VALUES ('20', '20180304', '张三', '2018', '专业1', '院系1', '学生', '学校1', 'userHand/user-ico06.jpg');
INSERT INTO `users` VALUES ('21', '1', '迟春峰', '2018', 'ccc', 'ccc', '学生', 'ccc', 'userHand/user-ico06.jpg');
INSERT INTO `users` VALUES ('22', '110', '是我', '2018', '软件', '软件', '院长', '山东', 'userHand/user-ico06.jpg');

-- ----------------------------
-- Table structure for `userstate`
-- ----------------------------
DROP TABLE IF EXISTS `userstate`;
CREATE TABLE `userstate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sno` int(11) DEFAULT NULL,
  `sname` varchar(20) DEFAULT NULL,
  `wen` varchar(20) DEFAULT NULL,
  `radd` varchar(200) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userstate
-- ----------------------------
INSERT INTO `userstate` VALUES ('2', '2018030509', '田蒙恩', '11.1', '差', '2020/10/23-20');
INSERT INTO `userstate` VALUES ('3', '2018030524', '迟春峰', '36.6', '0', '0');
INSERT INTO `userstate` VALUES ('4', '2018030554', '窦英钊', null, null, null);
INSERT INTO `userstate` VALUES ('5', '2018030512', '吕建斌', null, null, null);
INSERT INTO `userstate` VALUES ('6', '2018030501', '丁雨欣', null, null, null);
INSERT INTO `userstate` VALUES ('7', '2018030502', '马中飞', null, null, null);
INSERT INTO `userstate` VALUES ('8', '2018030530', '张聪', null, null, null);
INSERT INTO `userstate` VALUES ('9', '2018030528', '张守成', null, null, null);
INSERT INTO `userstate` VALUES ('10', '888666', '焦腾达', null, null, null);
INSERT INTO `userstate` VALUES ('11', '333333', '于子凡', null, null, null);
INSERT INTO `userstate` VALUES ('12', '20170727', '任乃华', null, null, null);
INSERT INTO `userstate` VALUES ('13', '1719577753', '尹鹏程', null, null, null);
INSERT INTO `userstate` VALUES ('14', '2018030504', '于亮', '', '', '');
INSERT INTO `userstate` VALUES ('15', '2018030520', '卢浩浩', '', '', '');
INSERT INTO `userstate` VALUES ('16', '1', '孙', '', '', '');
INSERT INTO `userstate` VALUES ('17', '201809111', '李文琦', '', '', '');
INSERT INTO `userstate` VALUES ('18', '1', '1', '', '', '');
INSERT INTO `userstate` VALUES ('19', '0', '人上人', '', '', '');
INSERT INTO `userstate` VALUES ('20', '20180305', '张三', '', '', '');
INSERT INTO `userstate` VALUES ('21', '20180304', '张三', '36.6', '去了公园', '2020/10/24-10');
INSERT INTO `userstate` VALUES ('22', '1', '迟春峰', '', '', '');
INSERT INTO `userstate` VALUES ('23', '110', '是我', '', '', '');
DROP TRIGGER IF EXISTS `adduserstate`;
DELIMITER ;;
CREATE TRIGGER `adduserstate` AFTER INSERT ON `users` FOR EACH ROW begin
  insert into userstate(sno,sname,wen,radd,time) values(new.sno,new.sname,'','','');
end
;;
DELIMITER ;
