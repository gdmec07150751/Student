/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : student

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2022-04-26 16:13:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for stu_class
-- ----------------------------
DROP TABLE IF EXISTS `stu_class`;
CREATE TABLE `stu_class` (
  `class_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `class_name` varchar(50) NOT NULL DEFAULT '',
  `major_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of stu_class
-- ----------------------------
INSERT INTO `stu_class` VALUES ('1', '电子2201班', '1');
INSERT INTO `stu_class` VALUES ('2', '电子2202班', '1');
INSERT INTO `stu_class` VALUES ('3', '电子2203班', '1');
INSERT INTO `stu_class` VALUES ('4', '软件2201班', '2');
INSERT INTO `stu_class` VALUES ('5', '软件2202班', '2');
INSERT INTO `stu_class` VALUES ('6', '软件2203班', '2');
INSERT INTO `stu_class` VALUES ('7', '电子2201班', '3');
INSERT INTO `stu_class` VALUES ('8', '电子2202班', '3');
INSERT INTO `stu_class` VALUES ('9', '电子2203班', '3');

-- ----------------------------
-- Table structure for stu_department
-- ----------------------------
DROP TABLE IF EXISTS `stu_department`;
CREATE TABLE `stu_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL COMMENT '父级院系id',
  `name` varchar(255) DEFAULT NULL COMMENT '院系名称',
  `order_num` int(11) DEFAULT NULL COMMENT '数据显示顺序',
  `created_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='院系表';

-- ----------------------------
-- Records of stu_department
-- ----------------------------
INSERT INTO `stu_department` VALUES ('1', '0', '信息学院', '1', null, null);
INSERT INTO `stu_department` VALUES ('2', '0', '外语学院', '2', null, null);
INSERT INTO `stu_department` VALUES ('3', '0', '汽车学院', '3', null, null);
INSERT INTO `stu_department` VALUES ('4', '0', '机械学院', '4', null, null);

-- ----------------------------
-- Table structure for stu_major
-- ----------------------------
DROP TABLE IF EXISTS `stu_major`;
CREATE TABLE `stu_major` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `major_id` int(11) NOT NULL DEFAULT '0' COMMENT '专业id',
  `major_name` varchar(255) NOT NULL DEFAULT '' COMMENT '专业名称',
  `department_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '所属院校的id',
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='专业表';

-- ----------------------------
-- Records of stu_major
-- ----------------------------
INSERT INTO `stu_major` VALUES ('1', '1000001', '电子通讯技术', '1', null, null);
INSERT INTO `stu_major` VALUES ('2', '1000002', '软件技术', '1', null, null);
INSERT INTO `stu_major` VALUES ('3', '1000003', '电子商务', '1', null, null);
INSERT INTO `stu_major` VALUES ('4', '2000001', '东方语言学', '2', null, null);
INSERT INTO `stu_major` VALUES ('5', '2000002', '西方语言学', '2', null, null);
INSERT INTO `stu_major` VALUES ('6', '2000003', '小语种', '2', null, null);
INSERT INTO `stu_major` VALUES ('7', '3000001', '机电', '3', null, null);
INSERT INTO `stu_major` VALUES ('8', '3000002', '新能源', '3', null, null);
INSERT INTO `stu_major` VALUES ('9', '3000003', '纯技能类', '3', null, null);
INSERT INTO `stu_major` VALUES ('10', '3000004', '汽车美容', '3', null, null);
INSERT INTO `stu_major` VALUES ('11', '4000001', '机械设计制造及其自动化', '4', null, null);
INSERT INTO `stu_major` VALUES ('12', '4000002', '机械电子工程', '4', null, null);
INSERT INTO `stu_major` VALUES ('13', '4000003', '车辆工程', '4', null, null);
INSERT INTO `stu_major` VALUES ('14', '4000004', '汽车服务工程', '4', null, null);

-- ----------------------------
-- Table structure for stu_user
-- ----------------------------
DROP TABLE IF EXISTS `stu_user`;
CREATE TABLE `stu_user` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '',
  `user_number` varchar(50) NOT NULL DEFAULT '',
  `phone` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `salt` char(20) NOT NULL DEFAULT '',
  `group_id` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of stu_user
-- ----------------------------
INSERT INTO `stu_user` VALUES ('1', '测试班主任1', '320221001', '13777777777', '', '', '10003', '1', null, null);
INSERT INTO `stu_user` VALUES ('2', '测试班主任2', '320221002', '13777777777', '', '', '10003', '1', null, null);
INSERT INTO `stu_user` VALUES ('3', '测试班主任3', '320221003', '13777777777', '', '', '10003', '1', null, null);
INSERT INTO `stu_user` VALUES ('4', '测试班主任4', '320221004', '13777777777', '', '', '10003', '1', null, null);
INSERT INTO `stu_user` VALUES ('5', '测试班主任5', '320221004', '13777777777', '', '', '10003', '1', null, null);
INSERT INTO `stu_user` VALUES ('6', '测试班主任6', '320221004', '13777777777', '', '', '10003', '1', null, null);
INSERT INTO `stu_user` VALUES ('7', '测试班主任7', '320221004', '13777777777', '', '', '10003', '1', null, null);
INSERT INTO `stu_user` VALUES ('8', '测试班主任8', '320221004', '13777777777', '', '', '10003', '1', null, null);
INSERT INTO `stu_user` VALUES ('9', '测试班主任9', '320221004', '13777777777', '', '', '10003', '1', null, null);
INSERT INTO `stu_user` VALUES ('10', '测试班主任10', '320221004', '13777777777', '', '', '10003', '1', null, null);
INSERT INTO `stu_user` VALUES ('11', '测试班主任11', '320221004', '13777777777', '', '', '10003', '1', null, null);
INSERT INTO `stu_user` VALUES ('12', '测试班主任12', '320221004', '13777777777', '', '', '10003', '1', null, null);
INSERT INTO `stu_user` VALUES ('13', '测试班主任13', '320221004', '13777777777', '', '', '10003', '1', null, null);

-- ----------------------------
-- Table structure for stu_user_group
-- ----------------------------
DROP TABLE IF EXISTS `stu_user_group`;
CREATE TABLE `stu_user_group` (
  `group_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10004 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of stu_user_group
-- ----------------------------
INSERT INTO `stu_user_group` VALUES ('10001', '学生');
INSERT INTO `stu_user_group` VALUES ('10002', '老师');
INSERT INTO `stu_user_group` VALUES ('10003', '班主任');

-- ----------------------------
-- Table structure for stu_user_relation
-- ----------------------------
DROP TABLE IF EXISTS `stu_user_relation`;
CREATE TABLE `stu_user_relation` (
  `relation_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `department_id` int(11) unsigned NOT NULL DEFAULT '0',
  `major_id` int(11) unsigned NOT NULL DEFAULT '0',
  `class_id` int(11) unsigned NOT NULL DEFAULT '0',
  `teacher_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of stu_user_relation
-- ----------------------------
INSERT INTO `stu_user_relation` VALUES ('1', '1', '1', '1', '1', '1');
INSERT INTO `stu_user_relation` VALUES ('2', '2', '1', '1', '2', '2');
INSERT INTO `stu_user_relation` VALUES ('3', '3', '1', '1', '3', '3');
INSERT INTO `stu_user_relation` VALUES ('4', '4', '1', '1', '4', '4');
INSERT INTO `stu_user_relation` VALUES ('5', '5', '1', '1', '5', '5');
INSERT INTO `stu_user_relation` VALUES ('6', '6', '1', '1', '6', '6');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL COMMENT '父菜单id',
  `name` varchar(255) DEFAULT NULL COMMENT '导航名字',
  `router` varchar(255) DEFAULT NULL COMMENT '链接页面的路由',
  `perms` varchar(255) DEFAULT NULL COMMENT '导航权限',
  `type` int(4) DEFAULT NULL COMMENT '菜单类型\r\n0：目录 \r\n1：菜单\r\n2：权限',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `order_num` int(11) DEFAULT NULL COMMENT '按数字大小来数据排序',
  `view_path` varchar(255) DEFAULT NULL COMMENT '跳转到目标链接',
  `keepalive` int(4) DEFAULT NULL COMMENT '页面是否需要保持状态',
  `is_show` int(4) DEFAULT NULL COMMENT '是否显示',
  `created_time` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='系统导航栏表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `label` varchar(255) DEFAULT NULL COMMENT '标签名',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `role_id` int(10) DEFAULT NULL COMMENT '角色id',
  `menu_id` int(10) DEFAULT NULL COMMENT '导航id',
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 ROW_FORMAT=FIXED COMMENT='系统导航栏与角色关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------

-- ----------------------------
-- Table structure for sys_sch_addressee
-- ----------------------------
DROP TABLE IF EXISTS `sys_sch_addressee`;
CREATE TABLE `sys_sch_addressee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id_arr` text COMMENT '收件人所属院系 \r\n*: 全部\r\n![id]:排除对应id\r\n,分割\r\n对应sys_department的id',
  `major_id_arr` text COMMENT '收件人所属专业 \r\n*: 全部\r\n![id]:排除对应id\r\n,分割\r\n对应sch_major的major_id',
  `class_id_arr` text COMMENT '收件人所属class \r\n*: 全部\r\n![id]:排除对应id\r\n,分割\r\n对应sch_class 的class_id',
  `addressee_id_arr` text COMMENT '收件人 \r\n*: 全部\r\n![id]:排除对应id\r\n,分割',
  `created_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='收件人表';

-- ----------------------------
-- Records of sys_sch_addressee
-- ----------------------------

-- ----------------------------
-- Table structure for sys_sch_class
-- ----------------------------
DROP TABLE IF EXISTS `sys_sch_class`;
CREATE TABLE `sys_sch_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) DEFAULT NULL COMMENT '班级id',
  `class_name` varchar(255) DEFAULT NULL COMMENT '班级名称',
  `major_id` int(11) DEFAULT NULL COMMENT '对应sch_major表的major_id',
  `department_id` int(11) DEFAULT NULL COMMENT '对应sys_depatrment表的id',
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='班级表';

-- ----------------------------
-- Records of sys_sch_class
-- ----------------------------

-- ----------------------------
-- Table structure for sys_sch_course
-- ----------------------------
DROP TABLE IF EXISTS `sys_sch_course`;
CREATE TABLE `sys_sch_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '对应sys_user中教师的id',
  `course_id` int(11) DEFAULT NULL COMMENT '课程id',
  `course_name` varchar(255) DEFAULT NULL COMMENT '课程名称',
  `class_id` int(11) DEFAULT NULL COMMENT '班级id',
  `major_id` int(11) DEFAULT NULL COMMENT '对应sch_major表的major_id',
  `department_id` int(11) DEFAULT NULL COMMENT '对应sys_depatrment表的id',
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='课程表';

-- ----------------------------
-- Records of sys_sch_course
-- ----------------------------

-- ----------------------------
-- Table structure for sys_sch_feedback
-- ----------------------------
DROP TABLE IF EXISTS `sys_sch_feedback`;
CREATE TABLE `sys_sch_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feedback_id` int(11) DEFAULT NULL COMMENT '建议反馈id',
  `user_id` int(11) DEFAULT NULL COMMENT '发件人id',
  `feedback_title` varchar(255) DEFAULT NULL COMMENT '建议标题',
  `feedback_content` varchar(255) DEFAULT NULL COMMENT '建议内容',
  `status` varchar(255) DEFAULT NULL COMMENT '0: 默认正常 1:删除',
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='建议反馈表';

-- ----------------------------
-- Records of sys_sch_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for sys_sch_leave
-- ----------------------------
DROP TABLE IF EXISTS `sys_sch_leave`;
CREATE TABLE `sys_sch_leave` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '申请者的用户id',
  `course_id` int(11) DEFAULT NULL COMMENT '课程id',
  `apply_time` datetime DEFAULT NULL COMMENT '请假时间',
  `teacher_opinion` varchar(255) DEFAULT NULL COMMENT '老师意见',
  `teaching_administer_opinion` varchar(255) DEFAULT NULL COMMENT '教学管理员意见',
  `status` varchar(255) DEFAULT NULL COMMENT '0:申请中\r\n1:申请成功\r\n2:申请失败-老师拒绝\r\n3:申请失败-教学管理者拒绝\r\n4:二次申请中\r\n5:二次申请成功\r\n6:二次申请失败-老师拒绝\r\n7:二次申请失败-教学管理者拒绝',
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='请假申请表';

-- ----------------------------
-- Records of sys_sch_leave
-- ----------------------------

-- ----------------------------
-- Table structure for sys_sch_message
-- ----------------------------
DROP TABLE IF EXISTS `sys_sch_message`;
CREATE TABLE `sys_sch_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_id` int(11) DEFAULT NULL COMMENT '消息id',
  `message_title` varchar(255) DEFAULT NULL COMMENT '消息标题',
  `message_content` varchar(255) DEFAULT NULL COMMENT '消息内容',
  `user_id_sender` int(11) DEFAULT NULL COMMENT '发件人id 为0:系统通知 对应 sys_user 的 user_id',
  `address_id` int(11) DEFAULT NULL COMMENT '收件人 空字符串:全部人 关联 sch_addressee 的 addressee_id',
  `status` int(11) DEFAULT NULL COMMENT '0: 默认正常 1:删除状态',
  `created_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='消息表';

-- ----------------------------
-- Records of sys_sch_message
-- ----------------------------

-- ----------------------------
-- Table structure for sys_sch_sign_in
-- ----------------------------
DROP TABLE IF EXISTS `sys_sch_sign_in`;
CREATE TABLE `sys_sch_sign_in` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `course_id` int(11) DEFAULT NULL COMMENT '课程id',
  `report_time` datetime DEFAULT NULL COMMENT '报道时间',
  `created_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 ROW_FORMAT=FIXED COMMENT='签到表';

-- ----------------------------
-- Records of sys_sch_sign_in
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_old
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_old`;
CREATE TABLE `sys_user_old` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) DEFAULT NULL COMMENT '部门id',
  `name` varchar(255) DEFAULT NULL COMMENT '用户昵称',
  `username` varchar(255) DEFAULT NULL COMMENT '登录账号',
  `password` varchar(255) DEFAULT NULL COMMENT '登录密码',
  `nick_name` varchar(255) DEFAULT NULL COMMENT '昵称',
  `head_img` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '头像',
  `email` varchar(255) DEFAULT NULL COMMENT '电子邮箱',
  `phone` varchar(255) DEFAULT NULL COMMENT '手机号',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `psalt` varchar(255) DEFAULT NULL COMMENT '登陆密码加密用的salt值',
  `status` int(5) DEFAULT NULL COMMENT '账号状态',
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户表';

-- ----------------------------
-- Records of sys_user_old
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` int(10) NOT NULL,
  `user_id` int(10) DEFAULT NULL COMMENT '用户id',
  `role_id` int(10) DEFAULT NULL COMMENT '角色id',
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 ROW_FORMAT=FIXED COMMENT='角色用户表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
