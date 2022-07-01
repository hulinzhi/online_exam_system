/*
Navicat MySQL Data Transfer

Source Server         : 111
Source Server Version : 80020
Source Host           : localhost:3306
Source Database       : my_exam_test

Target Server Type    : MYSQL
Target Server Version : 80020
File Encoding         : 65001

Date: 2022-07-01 17:29:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `class_id` int NOT NULL AUTO_INCREMENT,
  `class_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_by` bigint DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` bigint DEFAULT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES ('1', '66班', null, null, '2022-06-22 09:42:50', '42');
INSERT INTO `class` VALUES ('2', '二班', null, null, null, null);
INSERT INTO `class` VALUES ('3', '三班', '2022-06-19 19:02:43', '1', null, null);
INSERT INTO `class` VALUES ('4', '四', '2022-06-19 19:16:09', '1', '2022-06-22 08:48:57', '45');

-- ----------------------------
-- Table structure for exam
-- ----------------------------
DROP TABLE IF EXISTS `exam`;
CREATE TABLE `exam` (
  `exam_id` int NOT NULL AUTO_INCREMENT,
  `exam_name` varchar(128) DEFAULT NULL COMMENT '试卷名',
  `exam_start_date` datetime DEFAULT NULL COMMENT '考试开始时间',
  `exam_last_time` bigint DEFAULT NULL COMMENT '考试持续的时间，单位为分钟',
  `reviewer_id` int DEFAULT NULL COMMENT '审批老师的id',
  `create_by` bigint DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL,
  `update_by` bigint DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `score` decimal(10,0) DEFAULT NULL COMMENT '试卷总分',
  PRIMARY KEY (`exam_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='试卷表';

-- ----------------------------
-- Records of exam
-- ----------------------------
INSERT INTO `exam` VALUES ('32', '测试试卷1号', '2022-06-20 00:00:00', '2', '39', null, '2022-06-20 22:25:29', null, null, '26');
INSERT INTO `exam` VALUES ('33', '测试试卷2号', '2022-06-20 22:34:19', '2', '40', null, '2022-06-20 22:34:34', null, null, '26');
INSERT INTO `exam` VALUES ('36', '测试试卷3号', '2022-06-20 22:45:03', '2', '41', null, '2022-06-20 22:45:18', null, null, '71');
INSERT INTO `exam` VALUES ('37', 'ee', '2022-06-22 09:08:33', '2555', '39', null, '2022-06-22 09:08:53', null, null, '64');
INSERT INTO `exam` VALUES ('38', '22', '2022-06-22 10:40:36', '1', '39', null, '2022-06-22 10:40:51', null, null, '5');
INSERT INTO `exam` VALUES ('39', 'www', '2022-06-22 11:08:42', '111111', '40', null, '2022-06-22 11:09:03', null, null, '38');

-- ----------------------------
-- Table structure for exam_detail
-- ----------------------------
DROP TABLE IF EXISTS `exam_detail`;
CREATE TABLE `exam_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `exam_id` int DEFAULT NULL COMMENT '试卷的id',
  `stu_id` int DEFAULT NULL COMMENT '学生的id',
  `score` decimal(10,0) DEFAULT NULL COMMENT '考试成绩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考试的信息';

-- ----------------------------
-- Records of exam_detail
-- ----------------------------

-- ----------------------------
-- Table structure for exam_question
-- ----------------------------
DROP TABLE IF EXISTS `exam_question`;
CREATE TABLE `exam_question` (
  `eq_id` int NOT NULL AUTO_INCREMENT,
  `exam_id` int DEFAULT NULL COMMENT '试卷的id',
  `question_id` int DEFAULT NULL COMMENT '问题的id',
  PRIMARY KEY (`eq_id`)
) ENGINE=InnoDB AUTO_INCREMENT=292 DEFAULT CHARSET=utf8 COMMENT='试卷和问题的关联表';

-- ----------------------------
-- Records of exam_question
-- ----------------------------
INSERT INTO `exam_question` VALUES ('222', '12', '55');
INSERT INTO `exam_question` VALUES ('223', '12', '56');
INSERT INTO `exam_question` VALUES ('224', '13', '55');
INSERT INTO `exam_question` VALUES ('225', '13', '56');
INSERT INTO `exam_question` VALUES ('226', '13', '29');
INSERT INTO `exam_question` VALUES ('227', '13', '30');
INSERT INTO `exam_question` VALUES ('228', '13', '25');
INSERT INTO `exam_question` VALUES ('229', '13', '22');
INSERT INTO `exam_question` VALUES ('230', '13', '23');
INSERT INTO `exam_question` VALUES ('231', '13', '24');
INSERT INTO `exam_question` VALUES ('232', '13', '31');
INSERT INTO `exam_question` VALUES ('233', '13', '32');
INSERT INTO `exam_question` VALUES ('234', '13', '33');
INSERT INTO `exam_question` VALUES ('235', '13', '34');
INSERT INTO `exam_question` VALUES ('236', '13', '35');
INSERT INTO `exam_question` VALUES ('237', '13', '36');
INSERT INTO `exam_question` VALUES ('238', '13', '37');
INSERT INTO `exam_question` VALUES ('239', '13', '38');
INSERT INTO `exam_question` VALUES ('240', '13', '39');
INSERT INTO `exam_question` VALUES ('241', '13', '40');
INSERT INTO `exam_question` VALUES ('242', '13', '41');
INSERT INTO `exam_question` VALUES ('243', '13', '42');
INSERT INTO `exam_question` VALUES ('244', '13', '43');
INSERT INTO `exam_question` VALUES ('245', '13', '44');
INSERT INTO `exam_question` VALUES ('246', '13', '45');
INSERT INTO `exam_question` VALUES ('247', '13', '46');
INSERT INTO `exam_question` VALUES ('248', '13', '47');
INSERT INTO `exam_question` VALUES ('249', '13', '48');
INSERT INTO `exam_question` VALUES ('250', '13', '49');
INSERT INTO `exam_question` VALUES ('251', '13', '50');
INSERT INTO `exam_question` VALUES ('252', '13', '51');
INSERT INTO `exam_question` VALUES ('253', '13', '52');
INSERT INTO `exam_question` VALUES ('254', '13', '53');
INSERT INTO `exam_question` VALUES ('255', '13', '54');
INSERT INTO `exam_question` VALUES ('256', '14', '22');
INSERT INTO `exam_question` VALUES ('257', '14', '23');
INSERT INTO `exam_question` VALUES ('258', '32', '22');
INSERT INTO `exam_question` VALUES ('259', '32', '23');
INSERT INTO `exam_question` VALUES ('260', '32', '24');
INSERT INTO `exam_question` VALUES ('261', '32', '25');
INSERT INTO `exam_question` VALUES ('262', '32', '29');
INSERT INTO `exam_question` VALUES ('263', '33', '22');
INSERT INTO `exam_question` VALUES ('264', '33', '23');
INSERT INTO `exam_question` VALUES ('265', '33', '24');
INSERT INTO `exam_question` VALUES ('266', '33', '25');
INSERT INTO `exam_question` VALUES ('267', '33', '29');
INSERT INTO `exam_question` VALUES ('268', '34', '30');
INSERT INTO `exam_question` VALUES ('269', '34', '31');
INSERT INTO `exam_question` VALUES ('270', '34', '32');
INSERT INTO `exam_question` VALUES ('271', '34', '33');
INSERT INTO `exam_question` VALUES ('272', '34', '34');
INSERT INTO `exam_question` VALUES ('274', '36', '55');
INSERT INTO `exam_question` VALUES ('275', '36', '56');
INSERT INTO `exam_question` VALUES ('276', '36', '34');
INSERT INTO `exam_question` VALUES ('277', '36', '33');
INSERT INTO `exam_question` VALUES ('278', '36', '39');
INSERT INTO `exam_question` VALUES ('279', '36', '40');
INSERT INTO `exam_question` VALUES ('280', '36', '38');
INSERT INTO `exam_question` VALUES ('281', '37', '45');
INSERT INTO `exam_question` VALUES ('282', '37', '47');
INSERT INTO `exam_question` VALUES ('283', '37', '51');
INSERT INTO `exam_question` VALUES ('284', '37', '22');
INSERT INTO `exam_question` VALUES ('285', '37', '23');
INSERT INTO `exam_question` VALUES ('286', '37', '34');
INSERT INTO `exam_question` VALUES ('287', '38', '23');
INSERT INTO `exam_question` VALUES ('288', '39', '50');
INSERT INTO `exam_question` VALUES ('289', '39', '24');
INSERT INTO `exam_question` VALUES ('290', '39', '34');
INSERT INTO `exam_question` VALUES ('291', '39', '39');

-- ----------------------------
-- Table structure for exam_record
-- ----------------------------
DROP TABLE IF EXISTS `exam_record`;
CREATE TABLE `exam_record` (
  `exam_id` int NOT NULL,
  `stu_id` int NOT NULL,
  `question_id` int NOT NULL,
  `answer` text,
  `final_score` decimal(10,0) DEFAULT '0' COMMENT '最终成绩',
  PRIMARY KEY (`exam_id`,`stu_id`,`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考试记录';

-- ----------------------------
-- Records of exam_record
-- ----------------------------
INSERT INTO `exam_record` VALUES ('11', '23', '45', '123', '0');
INSERT INTO `exam_record` VALUES ('11', '23', '46', '123', '0');
INSERT INTO `exam_record` VALUES ('11', '23', '47', '123', '0');
INSERT INTO `exam_record` VALUES ('11', '23', '48', '123', '0');
INSERT INTO `exam_record` VALUES ('11', '23', '49', '1', '3');
INSERT INTO `exam_record` VALUES ('11', '23', '50', '1', '3');
INSERT INTO `exam_record` VALUES ('11', '23', '51', '1', '0');
INSERT INTO `exam_record` VALUES ('11', '23', '52', '1', '0');
INSERT INTO `exam_record` VALUES ('11', '23', '53', '1', '3');
INSERT INTO `exam_record` VALUES ('11', '23', '54', '1', '3');
INSERT INTO `exam_record` VALUES ('12', '22', '55', '1', '3');
INSERT INTO `exam_record` VALUES ('12', '22', '56', '1', '3');
INSERT INTO `exam_record` VALUES ('12', '23', '55', '1', '3');
INSERT INTO `exam_record` VALUES ('12', '23', '56', '1', '3');
INSERT INTO `exam_record` VALUES ('12', '24', '55', '0', '0');
INSERT INTO `exam_record` VALUES ('12', '24', '56', '1', '0');
INSERT INTO `exam_record` VALUES ('13', '22', '22', 'B', '0');
INSERT INTO `exam_record` VALUES ('13', '22', '23', 'D', '0');
INSERT INTO `exam_record` VALUES ('13', '22', '24', 'C', '0');
INSERT INTO `exam_record` VALUES ('13', '22', '25', 'C', '0');
INSERT INTO `exam_record` VALUES ('13', '22', '29', 'A', '5');
INSERT INTO `exam_record` VALUES ('13', '22', '30', 'B', '0');
INSERT INTO `exam_record` VALUES ('13', '22', '31', 'C', '0');
INSERT INTO `exam_record` VALUES ('13', '22', '32', 'A', '0');
INSERT INTO `exam_record` VALUES ('13', '22', '33', 'B', '0');
INSERT INTO `exam_record` VALUES ('13', '22', '34', 'B,C,D', '0');
INSERT INTO `exam_record` VALUES ('13', '22', '35', 'B,C,D', '0');
INSERT INTO `exam_record` VALUES ('13', '22', '36', 'B,C', '0');
INSERT INTO `exam_record` VALUES ('13', '22', '37', 'B,C', '0');
INSERT INTO `exam_record` VALUES ('13', '22', '38', 'B,D', '0');
INSERT INTO `exam_record` VALUES ('13', '22', '39', '123', '5');
INSERT INTO `exam_record` VALUES ('13', '22', '40', '123', '3');
INSERT INTO `exam_record` VALUES ('13', '22', '41', '123', '0');
INSERT INTO `exam_record` VALUES ('13', '22', '42', '123', '1');
INSERT INTO `exam_record` VALUES ('13', '22', '43', '123', '0');
INSERT INTO `exam_record` VALUES ('13', '22', '44', '123', '2');
INSERT INTO `exam_record` VALUES ('13', '22', '45', '123', '3');
INSERT INTO `exam_record` VALUES ('13', '22', '46', '123', '5');
INSERT INTO `exam_record` VALUES ('13', '22', '47', '123', '0');
INSERT INTO `exam_record` VALUES ('13', '22', '48', '123', '3');
INSERT INTO `exam_record` VALUES ('13', '22', '49', '0', '0');
INSERT INTO `exam_record` VALUES ('13', '22', '50', '1', '3');
INSERT INTO `exam_record` VALUES ('13', '22', '51', '1', '0');
INSERT INTO `exam_record` VALUES ('13', '22', '52', '1', '0');
INSERT INTO `exam_record` VALUES ('13', '22', '53', '0', '0');
INSERT INTO `exam_record` VALUES ('13', '22', '54', '1', '3');
INSERT INTO `exam_record` VALUES ('13', '22', '55', '1', '3');
INSERT INTO `exam_record` VALUES ('13', '22', '56', '1', '3');
INSERT INTO `exam_record` VALUES ('13', '24', '22', 'D', '0');
INSERT INTO `exam_record` VALUES ('13', '24', '23', 'B', '0');
INSERT INTO `exam_record` VALUES ('13', '24', '24', 'D', '0');
INSERT INTO `exam_record` VALUES ('13', '24', '25', 'B', '0');
INSERT INTO `exam_record` VALUES ('13', '24', '29', 'A', '5');
INSERT INTO `exam_record` VALUES ('13', '24', '30', 'C', '0');
INSERT INTO `exam_record` VALUES ('13', '24', '31', 'C', '0');
INSERT INTO `exam_record` VALUES ('13', '24', '32', 'C', '0');
INSERT INTO `exam_record` VALUES ('13', '24', '33', 'C', '0');
INSERT INTO `exam_record` VALUES ('13', '24', '34', 'D', '0');
INSERT INTO `exam_record` VALUES ('13', '24', '35', 'D', '0');
INSERT INTO `exam_record` VALUES ('13', '24', '36', 'B', '0');
INSERT INTO `exam_record` VALUES ('13', '24', '37', 'C', '0');
INSERT INTO `exam_record` VALUES ('13', '24', '38', '', '0');
INSERT INTO `exam_record` VALUES ('13', '24', '39', '11111', '0');
INSERT INTO `exam_record` VALUES ('13', '24', '40', '111', '0');
INSERT INTO `exam_record` VALUES ('13', '24', '41', '1111', '0');
INSERT INTO `exam_record` VALUES ('13', '24', '42', '11111111111111111111111', '0');
INSERT INTO `exam_record` VALUES ('13', '24', '43', '111111111111111111', '0');
INSERT INTO `exam_record` VALUES ('13', '24', '44', '1111111111', '0');
INSERT INTO `exam_record` VALUES ('13', '24', '45', '111111111111111', '0');
INSERT INTO `exam_record` VALUES ('13', '24', '46', '1111111111111111111', '0');
INSERT INTO `exam_record` VALUES ('13', '24', '47', '', '0');
INSERT INTO `exam_record` VALUES ('13', '24', '48', '', '0');
INSERT INTO `exam_record` VALUES ('13', '24', '49', '0', '0');
INSERT INTO `exam_record` VALUES ('13', '24', '50', '0', '0');
INSERT INTO `exam_record` VALUES ('13', '24', '51', '0', '0');
INSERT INTO `exam_record` VALUES ('13', '24', '52', '0', '0');
INSERT INTO `exam_record` VALUES ('13', '24', '53', '0', '0');
INSERT INTO `exam_record` VALUES ('13', '24', '54', '0', '0');
INSERT INTO `exam_record` VALUES ('13', '24', '55', '0', '0');
INSERT INTO `exam_record` VALUES ('13', '24', '56', '0', '0');
INSERT INTO `exam_record` VALUES ('32', '31', '22', 'B', '0');
INSERT INTO `exam_record` VALUES ('32', '31', '23', 'B', '0');
INSERT INTO `exam_record` VALUES ('32', '31', '24', 'B', '0');
INSERT INTO `exam_record` VALUES ('32', '31', '25', 'B', '0');
INSERT INTO `exam_record` VALUES ('32', '31', '29', 'B', '0');
INSERT INTO `exam_record` VALUES ('36', '38', '33', 'D', '0');
INSERT INTO `exam_record` VALUES ('36', '38', '34', 'B', '0');
INSERT INTO `exam_record` VALUES ('36', '38', '38', 'B,C', '0');
INSERT INTO `exam_record` VALUES ('36', '38', '39', 'ds', '5');
INSERT INTO `exam_record` VALUES ('36', '38', '40', 'fds', '20');
INSERT INTO `exam_record` VALUES ('36', '38', '55', '1', '3');
INSERT INTO `exam_record` VALUES ('36', '38', '56', '1', '3');
INSERT INTO `exam_record` VALUES ('37', '31', '22', 'B', '0');
INSERT INTO `exam_record` VALUES ('37', '31', '23', 'B', '0');
INSERT INTO `exam_record` VALUES ('37', '31', '34', 'B,C', '0');
INSERT INTO `exam_record` VALUES ('37', '31', '45', '太厉害了他', '5');
INSERT INTO `exam_record` VALUES ('37', '31', '47', '富丽堂皇', '6');
INSERT INTO `exam_record` VALUES ('37', '31', '51', '1', '0');
INSERT INTO `exam_record` VALUES ('38', '31', '23', 'B', '0');
INSERT INTO `exam_record` VALUES ('39', '31', '24', 'B', '0');
INSERT INTO `exam_record` VALUES ('39', '31', '34', 'B', '0');
INSERT INTO `exam_record` VALUES ('39', '31', '39', 'wwww', '1');
INSERT INTO `exam_record` VALUES ('39', '31', '50', '0', '0');

-- ----------------------------
-- Table structure for exam_student
-- ----------------------------
DROP TABLE IF EXISTS `exam_student`;
CREATE TABLE `exam_student` (
  `es_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int DEFAULT NULL COMMENT '学生的id',
  `exam_id` int DEFAULT NULL COMMENT '试卷的id',
  `status` char(1) DEFAULT '0' COMMENT '状态，0表示还未参加考试，1表示参加考试完成',
  `total_score` decimal(10,0) DEFAULT NULL COMMENT '总分',
  `reading` char(1) DEFAULT '1' COMMENT '1表示正在阅卷中，0表示阅卷完成',
  PRIMARY KEY (`es_id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COMMENT='试卷和学生的关联表';

-- ----------------------------
-- Records of exam_student
-- ----------------------------
INSERT INTO `exam_student` VALUES ('69', '22', '14', '0', null, '1');
INSERT INTO `exam_student` VALUES ('70', '23', '14', '0', null, '1');
INSERT INTO `exam_student` VALUES ('71', '24', '14', '0', null, '1');
INSERT INTO `exam_student` VALUES ('107', '31', '32', '1', '0', '0');
INSERT INTO `exam_student` VALUES ('108', '35', '32', '0', null, '1');
INSERT INTO `exam_student` VALUES ('109', '32', '33', '0', null, '1');
INSERT INTO `exam_student` VALUES ('110', '37', '33', '0', null, '1');
INSERT INTO `exam_student` VALUES ('119', '33', '36', '0', null, '1');
INSERT INTO `exam_student` VALUES ('120', '36', '36', '0', null, '1');
INSERT INTO `exam_student` VALUES ('121', '34', '36', '0', null, '1');
INSERT INTO `exam_student` VALUES ('122', '38', '36', '1', '28', '0');
INSERT INTO `exam_student` VALUES ('123', '31', '37', '1', '5', '0');
INSERT INTO `exam_student` VALUES ('124', '35', '37', '0', null, '1');
INSERT INTO `exam_student` VALUES ('125', '32', '37', '1', '0', '0');
INSERT INTO `exam_student` VALUES ('126', '37', '37', '1', '0', '0');
INSERT INTO `exam_student` VALUES ('127', '33', '37', '1', '0', '0');
INSERT INTO `exam_student` VALUES ('128', '36', '37', '1', '0', '0');
INSERT INTO `exam_student` VALUES ('129', '34', '37', '1', '0', '0');
INSERT INTO `exam_student` VALUES ('130', '38', '37', '1', null, '1');
INSERT INTO `exam_student` VALUES ('131', '31', '38', '1', '0', '0');
INSERT INTO `exam_student` VALUES ('132', '35', '38', '0', null, '1');
INSERT INTO `exam_student` VALUES ('133', '32', '38', '0', null, '1');
INSERT INTO `exam_student` VALUES ('134', '37', '38', '0', null, '1');
INSERT INTO `exam_student` VALUES ('135', '46', '38', '0', null, '1');
INSERT INTO `exam_student` VALUES ('136', '33', '38', '0', null, '1');
INSERT INTO `exam_student` VALUES ('137', '36', '38', '0', null, '1');
INSERT INTO `exam_student` VALUES ('138', '34', '38', '0', null, '1');
INSERT INTO `exam_student` VALUES ('139', '38', '38', '0', null, '1');
INSERT INTO `exam_student` VALUES ('140', '31', '39', '1', '0', '0');
INSERT INTO `exam_student` VALUES ('141', '35', '39', '0', null, '1');
INSERT INTO `exam_student` VALUES ('142', '32', '39', '0', null, '1');
INSERT INTO `exam_student` VALUES ('143', '37', '39', '0', null, '1');
INSERT INTO `exam_student` VALUES ('144', '46', '39', '0', null, '1');
INSERT INTO `exam_student` VALUES ('145', '33', '39', '0', null, '1');
INSERT INTO `exam_student` VALUES ('146', '36', '39', '0', null, '1');
INSERT INTO `exam_student` VALUES ('147', '34', '39', '0', null, '1');
INSERT INTO `exam_student` VALUES ('148', '38', '39', '0', null, '1');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告的id',
  `title` varchar(128) DEFAULT NULL COMMENT '公告的标题',
  `content` varchar(1024) DEFAULT NULL COMMENT '公告的内容',
  `type` char(1) DEFAULT NULL COMMENT '公告的类型：1表示需要弹框提示2表示页面提示',
  `create_by` int DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` int DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='公告管理';

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('7', '考试周', '考试周即将结束，最后几天不要松懈。', '1', null, '2022-06-20 21:14:36', null, null);
INSERT INTO `notice` VALUES ('9', '考试周', '考试周即将结束，请同学们最后几天不要松懈，继续保持良好的学习状态。', '2', null, '2022-06-20 22:20:17', null, null);
INSERT INTO `notice` VALUES ('12', 'fff', '共同讨论', '2', null, '2022-06-22 11:07:33', null, null);

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` char(1) DEFAULT NULL COMMENT '问题类型：1表示单选，2表示多选，3表示天空，4表示判断，5表示问答',
  `title` text COMMENT '题干',
  `option_a` varchar(5120) DEFAULT NULL COMMENT 'A选项答案',
  `option_b` varchar(5120) DEFAULT NULL COMMENT 'B选项答案',
  `option_c` varchar(5120) DEFAULT NULL COMMENT 'C选项答案',
  `option_d` varchar(5120) DEFAULT NULL COMMENT 'D选项答案',
  `answer` text COMMENT '答案',
  `analyse` text COMMENT '解析',
  `score` decimal(10,0) DEFAULT NULL COMMENT '该题的分数',
  `create_by` int DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` int DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COMMENT='问题表';

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('22', '1', '关于sleep()和wait()，以下描述错误的一项是？', 'sleep是线程类（Thread）的方法，wait是Object类的方法； ', 'sleep不释放对象锁，wait放弃对象锁； ', 'sleep暂停线程、但监控状态仍然保持，结束后会自动恢复；', 'wait后进入等待锁定池，只有针对此对象发出notify方法后获得对象锁进入运行状态。', 'D', 'Notify后是进入对象锁定池，准备获得锁，而不是立即获得。', '6', null, '2022-06-20 22:39:53', null, '2022-06-20 21:12:31');
INSERT INTO `question` VALUES ('23', '1', '提供Java存取数据库能力的包是？', 'java.sql ', 'java.awt ', 'java.lang ', 'java.swing', 'A', null, '5', null, '2022-06-20 22:39:53', null, null);
INSERT INTO `question` VALUES ('24', '1', '方法resume()负责恢复哪些线程的执行？', '通过调用stop()方法而停止的线程。 ', '通过调用sleep()方法而停止的线程。', '通过调用wait()方法而停止的线程。 ', '通过调用suspend()方法而停止的线程。', 'D', null, '5', null, '2022-06-20 22:39:53', null, null);
INSERT INTO `question` VALUES ('25', '1', 'Java I/O程序设计中，下列描述正确的是', 'OutputStream用于写操作 ', 'InputStream用于写操作 ', 'I/O库不支持对文件可读可写API', '以上都对', 'A', null, '5', null, '2022-06-20 22:39:53', null, null);
INSERT INTO `question` VALUES ('29', '1', '分析选项中关于Java中this关键字的说法正确的是', 'this关键字是在对象内部指代自身的引用 ', ' this关键字可以在类中的任何位置使用 ', 'this关键字和类关联，而不是和特定的对象关联 ', '同一个类的不同对象共用一个this', 'A', null, '5', null, '2022-06-20 22:39:53', null, null);
INSERT INTO `question` VALUES ('30', '1', '在JAVA中，LinkedList类和ArrayList类同属于集合框架类，下列（ ）选项中的方法是LinkedList类有而ArrayList类没有的。', ' add(Object o) ', ' add(int index，Object o) ', ' remove(Object o) ', 'removeLast()', 'D', null, '5', null, '2022-06-20 22:39:53', null, null);
INSERT INTO `question` VALUES ('31', '1', '在JAVA中ArrayList类实现了可变大小的数组，便于遍历元素和随机访问元素，已知 获得了ArrayList类的对象bookTypeList，则下列语句中能够实现判断列表中是否存在字符串“小说”的', '基本数据类型和String相加结果一定是字符串型 ', 'char类型和int类型相加结果一定是字符 ', 'double类型可以自动转换为int ', ' char + int + double +”” 结果一定是double', 'A', null, '5', null, '2022-06-20 22:39:53', null, null);
INSERT INTO `question` VALUES ('32', '1', '对象的特征在类中表示为变量，称为类的', '对象 ', '属性', '方法 ', '数据类型', 'B', null, '5', null, '2022-06-20 22:39:53', null, '2019-05-08 23:48:24');
INSERT INTO `question` VALUES ('33', '1', '在Java中,关于构造方法，下列说法错误的是', '构造方法的名称必须与类名相同 ', ' 构造方法可以带参数 ', '构造方法不可以重载 ', '构造方法绝对不能有返回值', 'C', null, '5', null, '2022-06-20 22:39:53', null, null);
INSERT INTO `question` VALUES ('34', '2', '下面哪几个函数是public void example(){…}的重载函数（  ），选两项', 'public void example( int m){…}', 'public int example(){…}', 'public void example2(){…}', 'public int example ( int m, float f){…}', 'A,D,', '方法名一定相同，参数签名（参数数量，类型，顺序）一定不同。', '10', null, '2022-06-20 22:39:53', null, null);
INSERT INTO `question` VALUES ('35', '2', '已知如下定义：String s = “story”; 下面哪个表达式是合法的（ ），选两项', ' s += “books”', 'char c = s[1];', 'int len = s.length;', 'String t = s.toLowerCase();', 'A,D,', 'String类型没有length属性，这个专属于数组。', '10', null, '2022-06-20 22:39:53', null, null);
INSERT INTO `question` VALUES ('36', '2', ' 如下哪些字串是Java中的标识符（ ），选两项', 'fieldname', 'super', '#number', '$number', 'A,C,', '标识符以￥$_或者字母开头，不能用关键字。', '10', null, '2022-06-21 22:39:53', null, null);
INSERT INTO `question` VALUES ('37', '2', '如下哪些是Java中有效的关键字（ ）', ' const', 'false', 'this', 'native', 'A,B,C,D,', null, '10', null, '2022-06-20 22:39:53', null, null);
INSERT INTO `question` VALUES ('38', '2', '如下哪些是Java中正确的整数表示', '22', '0x22', '022', '22H', 'A,B,C,', '从上到下依次十进制，八进制，十六进制。', '10', null, '2022-06-17 22:39:53', null, null);
INSERT INTO `question` VALUES ('39', '5', '父类的静态方法能否被子类重写', null, null, null, null, '不能。重写只适用于实例方法,不能用于静态方法，而子类当中含有和父类相同签名的静态方法，我们一般称之为隐藏。', null, '20', null, '2022-06-20 22:39:53', null, null);
INSERT INTO `question` VALUES ('40', '5', 'java 创建对象的几种方式', null, null, null, null, '采用new\n\n通过反射\n\n采用clone\n\n通过序列化机制', null, '20', null, '2022-06-21 22:39:53', null, null);
INSERT INTO `question` VALUES ('41', '5', 'String s1=”ab”, String s2=”a”+”b”, String s3=”a”, String s4=”b”, s5=s3+s4请问s5==s2返回什么？', null, null, null, null, '返回false。在编译过程中，编译器会将s2直接优化为”ab”，会将其放置在常量池当中，s5则是被创建在堆区，相当于s5=new String(“ab”);', null, '20', null, '2022-06-20 22:39:53', null, null);
INSERT INTO `question` VALUES ('42', '5', 'java当中的四种引用', null, null, null, null, '强引用，软引用，弱引用，虚引用。不同的引用类型主要体现在GC上:\n\n强引用：如果一个对象具有强引用，它就不会被垃圾回收器回收。即使当前内存空间不足，JVM也不会回收它，而是抛出 OutOfMemoryError 错误，使程序异常终止。如果想中断强引用和某个对象之间的关联，可以显式地将引用赋值为null，这样一来的话，JVM在合适的时间就会回收该对象。\n\n软引用：在使用软引用时，如果内存的空间足够，软引用就能继续被使用，而不会被垃圾回收器回收，只有在内存不足时，软引用才会被垃圾回收器回收。\n\n弱引用：具有弱引用的对象拥有的生命周期更短暂。因为当 JVM 进行垃圾回收，一旦发现弱引用对象，无论当前内存空间是否充足，都会将弱引用回收。不过由于垃圾回收器是一个优先级较低的线程，所以并不一定能迅速发现弱引用对象。\n\n虚引用：顾名思义，就是形同虚设，如果一个对象仅持有虚引用，那么它相当于没有引用，在任何时候都可能被垃圾回收器回收。\n\n ', null, '20', null, '2022-06-20 22:39:53', null, null);
INSERT INTO `question` VALUES ('43', '5', '有没有可能两个不相等的对象有相同的hashcode', null, null, null, null, '有可能，两个不相等的对象可能会有相同的 hashcode 值，这就是为什么在 hashmap 中会有冲突。如果两个对象相等，必须有相同的hashcode 值，反之不成立。', null, '20', null, '2022-06-20 22:39:53', null, null);
INSERT INTO `question` VALUES ('44', '5', '内部类的作用', null, null, null, null, '内部类可以有多个实例，每个实例都有自己的状态信息，并且与其他外围对象的信息相互独立.在单个外围类当中，可以让多个内部类以不同的方式实现同一接口，或者继承同一个类.创建内部类对象的时刻不依赖于外部类对象的创建。内部类并没有令人疑惑的”is-a”管系，它就像是一个独立的实体。\n\n内部类提供了更好的封装，除了该外围类，其他类都不能访问。', null, '20', null, '2022-06-20 22:39:53', null, null);
INSERT INTO `question` VALUES ('45', '5', 'final有哪些用法', null, null, null, null, 'final也是很多面试喜欢问的地方，能回答下以下三点就不错了：\n1.被final修饰的类不可以被继承 \n2.被final修饰的方法不可以被重写 \n3.被final修饰的变量不可以被改变。如果修饰引用，那么表示引用不可变，引用指向的内容可变。\n4.被final修饰的方法，JVM会尝试将其内联，以提高运行效率 \n5.被final修饰的常量，在编译阶段会存入常量池中。\n\n回答出编译器对final域要遵守的两个重排序规则更好：\n1.在构造函数内对一个final域的写入，与随后把这个被构造对象的引用赋值给一个引用变量,这两个操作之间不能重排序。\n2.初次读一个包含final域的对象的引用，与随后初次读这个final域,这两个操作之间不能重排序。', null, '20', null, '2022-06-16 22:39:53', null, null);
INSERT INTO `question` VALUES ('46', '5', '64位的JVM当中,int的长度是多少?', null, null, null, null, 'Java 中，int 类型变量的长度是一个固定值，与平台无关，都是 32 位。意思就是说，在 32 位 和 64 位 的Java 虚拟机中，int 类型的长度是相同的。', null, '20', null, '2022-06-20 22:39:53', null, null);
INSERT INTO `question` VALUES ('47', '5', 'String和StringBuffer', null, null, null, null, 'String和StringBuffer主要区别是性能：String是不可变对象，每次对String类型进行操作都等同于产生了一个新的String对象，然后指向新的String对象。所以尽量不在对String进行大量的拼接操作，否则会产生很多临时对象，导致GC开始工作，影响系统性能。\n\nStringBuffer是对对象本身操作，而不是产生新的对象，因此在有大量拼接的情况下，我们建议使用StringBuffer。\n\n但是需要注意现在JVM会对String拼接做一定的优化：\nString s=“This is only ”+”simple”+”test”会被虚拟机直接优化成String s=“This is only simple test”，此时就不存在拼接过程。', null, '20', null, '2022-06-20 22:39:53', null, null);
INSERT INTO `question` VALUES ('48', '5', '你知道哪些垃圾回收算法?', null, null, null, null, '垃圾回收从理论上非常容易理解,具体的方法有以下几种: \n1. 标记-清除 \n2. 标记-复制 \n3. 标记-整理 \n4. 分代回收 ', null, '20', null, '2022-06-17 22:39:53', null, null);
INSERT INTO `question` VALUES ('49', '4', '覆盖的同名方法中，子类方法不能比父类方法的访问权限低', null, null, null, null, '1', null, '3', null, '2022-06-09 22:39:53', null, null);
INSERT INTO `question` VALUES ('50', '4', '接口是特殊的类，所以接口也可以继承，子接口将继承父接口的所有常量和抽象方法。', null, null, null, null, '1', null, '3', null, '2022-06-20 22:39:53', null, null);
INSERT INTO `question` VALUES ('51', '4', 'Java支持多重继承。', null, null, null, null, '0', null, '3', null, '2022-06-20 22:39:53', null, null);
INSERT INTO `question` VALUES ('52', '4', '抽象方法没有方法体。', null, null, null, null, '0', null, '3', null, '2022-06-20 22:39:53', null, null);
INSERT INTO `question` VALUES ('53', '4', '一个Java类可以有一个直接父类，并可以实现多个接口。', null, null, null, null, '1', null, '3', null, '2022-06-20 22:39:53', null, null);
INSERT INTO `question` VALUES ('54', '4', 'final类中的属性和方法都必须是final的。', null, null, null, null, '1', null, '3', null, '2022-06-20 22:39:53', null, null);
INSERT INTO `question` VALUES ('55', '4', '一个类中含有几个构造方法，称为构造方法的重载。对于重载的方法，其参数列表可以相同。', null, null, null, null, '1', null, '3', null, '2022-06-15 00:00:13', null, null);
INSERT INTO `question` VALUES ('56', '4', '成员变量的值会因为对象的不同而不同。', null, null, null, null, '1', null, '3', null, '2022-06-09 00:00:29', null, null);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `login_name` varchar(36) DEFAULT NULL COMMENT '登录名',
  `nick_name` varchar(40) DEFAULT NULL COMMENT '昵称',
  `icon` varchar(2000) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL COMMENT '密码',
  `salt` varchar(40) DEFAULT NULL COMMENT 'shiro加密盐',
  `tel` varchar(11) DEFAULT NULL COMMENT '手机号码',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱地址',
  `locked` tinyint DEFAULT NULL COMMENT '是否锁定',
  `create_date` datetime DEFAULT NULL,
  `create_by` bigint DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` bigint DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `del_flag` tinyint DEFAULT NULL,
  `user_type` char(1) DEFAULT NULL,
  `class_id` int DEFAULT NULL COMMENT '班级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('31', 'zwj', '张文杰', null, '79bdf1313e5646d68a353962d218e4c277f1de50', '9c4d572aaf60524e', '222', 'test0@test.com', null, '2022-06-20 22:00:21', '1', '2022-06-20 22:02:39', null, '张文杰', null, '3', '1');
INSERT INTO `sys_user` VALUES ('32', 'lcr', '李诚榕', null, '2e6b077c391f7d429ac56ea333881daee493e7cc', 'd62fdc8c2c982040', '333', 'test1@test.com', null, '2022-06-20 22:01:03', '1', '2022-06-20 22:01:24', null, '李诚榕', null, '3', '2');
INSERT INTO `sys_user` VALUES ('33', 'fws', '冯伟森', null, 'd785a6eae52c558bb4c342ef924b3946b8554c3f', 'a153e431c4f91cba', '111', 'test2@test.com', null, '2022-06-20 22:02:29', '1', null, null, null, null, '3', '3');
INSERT INTO `sys_user` VALUES ('34', 'hlz', '胡凌志', null, '941f3bc05d0c3edb15453b401319fb7a25f86579', '2ffc99ec6d29cc97', '555', 'test3@test.com', null, '2022-06-20 22:03:08', '1', null, null, null, null, '3', '4');
INSERT INTO `sys_user` VALUES ('35', 'jwj', '蒋伟楗', null, '160fff66b8d10716587bd1553f54dd2bbd5e22ff', '262a3d4e0eb19efa', '666', 'test5@test.com', null, '2022-06-20 22:03:40', '1', null, null, null, null, '3', '1');
INSERT INTO `sys_user` VALUES ('36', 'HY', '何宇杰', null, '571ecf9fb2dd9890438c81994d8bc25d7379a6e7', 'ef9e23da5e402885', '777', 'test7@test.com', null, '2022-06-20 22:04:20', '1', null, null, null, null, '3', '3');
INSERT INTO `sys_user` VALUES ('37', 'csx', '池膳喜', null, 'eebecc81c457be182bc713b15e7988f2f0c4048f', 'd84b1a87fa7e2a7d', '999', 'test9@test.com', null, '2022-06-20 22:05:33', '1', null, null, null, null, '3', '2');
INSERT INTO `sys_user` VALUES ('38', 'mk', '木可', null, '0b2d485f82af523b9ee3ef319f72fe7b62814b42', 'cdbea31298f1373c', '1010', 'test10@test.com', null, '2022-06-20 22:06:02', '1', null, null, null, null, '3', '4');
INSERT INTO `sys_user` VALUES ('39', 'teacher', '测试教师1号', null, 'c889d0b6ed5e1d3d96ddff991ece76bbd0d61c9c', '7ecbd57bc188eb31', '1', 'teacher@teacher.com', null, '2022-06-20 22:06:57', '1', null, null, null, null, '2', null);
INSERT INTO `sys_user` VALUES ('40', 'teacher2', '测试教师2号', null, 'f27aefeb9342d90b468de9910d30707b1e9d93c9', '6809dfe0302380e8', '2', 'teacher2@teacher.com', null, '2022-06-20 22:07:28', '1', null, null, null, null, '2', null);
INSERT INTO `sys_user` VALUES ('41', 'teacher3', '测试教师3号', null, '68f20b126b0efb9d690d930ff5760ad25a04b646', 'acbfba69b9feffb5', '3', 'teacher3@teacher.com', null, '2022-06-20 22:07:58', '1', null, null, null, null, '2', null);
INSERT INTO `sys_user` VALUES ('42', 'admin', '测试管理员1号', null, '785f8d14b5620cd5d5ee62333caac3a4b7338786', 'a82e4e0878d87b5a', '1', 'admin@admin.com', null, '2022-06-20 22:08:38', '1', null, null, null, null, '1', null);
INSERT INTO `sys_user` VALUES ('43', 'admin2', '测试管理员2号', null, '3a5b99b89791242892e83074f629aca97fc05da9', '45d9a6e3f08dc3df', '2', 'admin2@admin.com', null, '2022-06-20 22:09:21', '1', null, null, null, null, '1', null);
INSERT INTO `sys_user` VALUES ('45', 'test', 'test', null, 'a4ea5b6d1061f5c020a77f16d5416285d283128c', 'cd7765193e6f8a9f', '123', 'test', null, '2022-06-22 08:46:48', '42', null, null, null, null, '1', null);
INSERT INTO `sys_user` VALUES ('46', 'qq', 'eeeee', null, 'b2b6af33299099d9276d0f43a5ad039a47c3a7f9', '83df8af1ea8eab59', '11111111', 'itheima@itcast.cn', null, '2022-06-22 09:50:26', '31', null, null, 'yyy', null, '3', '2');
