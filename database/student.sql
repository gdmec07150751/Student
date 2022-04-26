/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : student

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 26/04/2022 08:44:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_department
-- ----------------------------
DROP TABLE IF EXISTS `sys_department`;
CREATE TABLE `sys_department`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NULL DEFAULT NULL COMMENT '父级院系id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '院系名称',
  `order_num` int(11) NULL DEFAULT NULL COMMENT '数据显示顺序',
  `created_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '院系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_department
-- ----------------------------

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NULL DEFAULT NULL COMMENT '父菜单id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '导航名字',
  `router` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '链接页面的路由',
  `perms` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '导航权限',
  `type` int(4) NULL DEFAULT NULL COMMENT '菜单类型\r\n0：目录 \r\n1：菜单\r\n2：权限',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图标',
  `order_num` int(11) NULL DEFAULT NULL COMMENT '按数字大小来数据排序',
  `view_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '跳转到目标链接',
  `keepalive` int(4) NULL DEFAULT NULL COMMENT '页面是否需要保持状态',
  `is_show` int(4) NULL DEFAULT NULL COMMENT '是否显示',
  `created_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统导航栏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标签名',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `created_time` datetime NULL DEFAULT NULL,
  `updated_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `role_id` int(10) NULL DEFAULT NULL COMMENT '角色id',
  `menu_id` int(10) NULL DEFAULT NULL COMMENT '导航id',
  `created_time` datetime NULL DEFAULT NULL,
  `updated_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统导航栏与角色关联表' ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------

-- ----------------------------
-- Table structure for sys_sch_addressee
-- ----------------------------
DROP TABLE IF EXISTS `sys_sch_addressee`;
CREATE TABLE `sys_sch_addressee`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id_arr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '收件人所属院系 \r\n*: 全部\r\n![id]:排除对应id\r\n,分割\r\n对应sys_department的id',
  `major_id_arr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '收件人所属专业 \r\n*: 全部\r\n![id]:排除对应id\r\n,分割\r\n对应sch_major的major_id',
  `class_id_arr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '收件人所属class \r\n*: 全部\r\n![id]:排除对应id\r\n,分割\r\n对应sch_class 的class_id',
  `addressee_id_arr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '收件人 \r\n*: 全部\r\n![id]:排除对应id\r\n,分割',
  `created_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '收件人表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_sch_addressee
-- ----------------------------

-- ----------------------------
-- Table structure for sys_sch_class
-- ----------------------------
DROP TABLE IF EXISTS `sys_sch_class`;
CREATE TABLE `sys_sch_class`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NULL DEFAULT NULL COMMENT '班级id',
  `class_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '班级名称',
  `major_id` int(11) NULL DEFAULT NULL COMMENT '对应sch_major表的major_id',
  `department_id` int(11) NULL DEFAULT NULL COMMENT '对应sys_depatrment表的id',
  `created_time` datetime NULL DEFAULT NULL,
  `updated_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '班级表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_sch_class
-- ----------------------------

-- ----------------------------
-- Table structure for sys_sch_course
-- ----------------------------
DROP TABLE IF EXISTS `sys_sch_course`;
CREATE TABLE `sys_sch_course`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL COMMENT '对应sys_user中教师的id',
  `course_id` int(11) NULL DEFAULT NULL COMMENT '课程id',
  `course_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `class_id` int(11) NULL DEFAULT NULL COMMENT '班级id',
  `major_id` int(11) NULL DEFAULT NULL COMMENT '对应sch_major表的major_id',
  `department_id` int(11) NULL DEFAULT NULL COMMENT '对应sys_depatrment表的id',
  `created_time` datetime NULL DEFAULT NULL,
  `updated_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '课程表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_sch_course
-- ----------------------------

-- ----------------------------
-- Table structure for sys_sch_feedback
-- ----------------------------
DROP TABLE IF EXISTS `sys_sch_feedback`;
CREATE TABLE `sys_sch_feedback`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feedback_id` int(11) NULL DEFAULT NULL COMMENT '建议反馈id',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '发件人id',
  `feedback_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '建议标题',
  `feedback_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '建议内容',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '0: 默认正常 1:删除',
  `created_time` datetime NULL DEFAULT NULL,
  `updated_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '建议反馈表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_sch_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for sys_sch_leave
-- ----------------------------
DROP TABLE IF EXISTS `sys_sch_leave`;
CREATE TABLE `sys_sch_leave`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL COMMENT '申请者的用户id',
  `course_id` int(11) NULL DEFAULT NULL COMMENT '课程id',
  `apply_time` datetime NULL DEFAULT NULL COMMENT '请假时间',
  `teacher_opinion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '老师意见',
  `teaching_administer_opinion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '教学管理员意见',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '0:申请中\r\n1:申请成功\r\n2:申请失败-老师拒绝\r\n3:申请失败-教学管理者拒绝\r\n4:二次申请中\r\n5:二次申请成功\r\n6:二次申请失败-老师拒绝\r\n7:二次申请失败-教学管理者拒绝',
  `created_time` datetime NULL DEFAULT NULL,
  `updated_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '请假申请表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_sch_leave
-- ----------------------------

-- ----------------------------
-- Table structure for sys_sch_major
-- ----------------------------
DROP TABLE IF EXISTS `sys_sch_major`;
CREATE TABLE `sys_sch_major`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `major_id` int(11) NULL DEFAULT NULL COMMENT '专业id',
  `major_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '专业名称',
  `department_id` int(11) NULL DEFAULT NULL COMMENT 'sys_department的id',
  `created_time` datetime NULL DEFAULT NULL,
  `updated_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '专业表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_sch_major
-- ----------------------------

-- ----------------------------
-- Table structure for sys_sch_message
-- ----------------------------
DROP TABLE IF EXISTS `sys_sch_message`;
CREATE TABLE `sys_sch_message`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_id` int(11) NULL DEFAULT NULL COMMENT '消息id',
  `message_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '消息标题',
  `message_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '消息内容',
  `user_id_sender` int(11) NULL DEFAULT NULL COMMENT '发件人id 为0:系统通知 对应 sys_user 的 user_id',
  `address_id` int(11) NULL DEFAULT NULL COMMENT '收件人 空字符串:全部人 关联 sch_addressee 的 addressee_id',
  `status` int(11) NULL DEFAULT NULL COMMENT '0: 默认正常 1:删除状态',
  `created_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '消息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_sch_message
-- ----------------------------

-- ----------------------------
-- Table structure for sys_sch_sign_in
-- ----------------------------
DROP TABLE IF EXISTS `sys_sch_sign_in`;
CREATE TABLE `sys_sch_sign_in`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `course_id` int(11) NULL DEFAULT NULL COMMENT '课程id',
  `report_time` datetime NULL DEFAULT NULL COMMENT '报道时间',
  `created_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '签到表' ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of sys_sch_sign_in
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) NULL DEFAULT NULL COMMENT '部门id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登录账号',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登录密码',
  `nick_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `head_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电子邮箱',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `psalt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登陆密码加密用的salt值',
  `status` int(5) NULL DEFAULT NULL COMMENT '账号状态',
  `created_time` datetime NULL DEFAULT NULL,
  `updated_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` int(10) NOT NULL,
  `user_id` int(10) NULL DEFAULT NULL COMMENT '用户id',
  `role_id` int(10) NULL DEFAULT NULL COMMENT '角色id',
  `created_time` datetime NULL DEFAULT NULL,
  `updated_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色用户表' ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
