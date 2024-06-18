/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : library

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 18/06/2024 12:27:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for app01_administrator
-- ----------------------------
DROP TABLE IF EXISTS `app01_administrator`;
CREATE TABLE `app01_administrator`  (
  `ad_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ad_name` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ad_password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ad_gender` tinyint(1) NOT NULL,
  `ad_phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ad_email` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`ad_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app01_administrator
-- ----------------------------
INSERT INTO `app01_administrator` VALUES ('10010', '王二', '$2b$12$mewuTkI1DOBXgnfcw2ss0eZQYGlScrExX5KG0UuPERkxlkpDDBLUi', 1, '13355099080', 'gengzun@126.com');
INSERT INTO `app01_administrator` VALUES ('111', '1', '$2b$12$RqVUyVB9p/tSxuEjkZ1XPOGLzEbSmgrlUlTNU6Bn7AP9mbrfO9gT6', 1, '1', '1');
INSERT INTO `app01_administrator` VALUES ('123', '1', '$2b$12$4/y2cFZmKdEtKZZ5RygmGOVjD4d9ahWYseGY3BJJsgZa42E3chIly', 1, '1', 'gengzun@126.com');
INSERT INTO `app01_administrator` VALUES ('202100130110', 'sduqx', '$2b$12$vTeBJgLCH4mQlSDcQ7fMsuFAbfmWQwmAhNY/LNMk7ZfvNPoxTtSzu', 1, '13355099080', '2775469595@qq.com');

-- ----------------------------
-- Table structure for app01_complaint
-- ----------------------------
DROP TABLE IF EXISTS `app01_complaint`;
CREATE TABLE `app01_complaint`  (
  `complaint_id` int NOT NULL,
  `complaint_time` datetime(6) NOT NULL,
  `complaint_content` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `complaint_user_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`complaint_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app01_complaint
-- ----------------------------
INSERT INTO `app01_complaint` VALUES (1, '2024-06-17 10:14:14.000000', '1234', '321');

-- ----------------------------
-- Table structure for app01_default
-- ----------------------------
DROP TABLE IF EXISTS `app01_default`;
CREATE TABLE `app01_default`  (
  `default_id` int NOT NULL,
  `default_reason` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `default_id_student` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `default_id_administrator` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `default_time` datetime(6) NOT NULL,
  PRIMARY KEY (`default_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app01_default
-- ----------------------------
INSERT INTO `app01_default` VALUES (1, '早退', '24201', '111', '2024-06-17 11:31:12.000000');
INSERT INTO `app01_default` VALUES (2, '泄露公司机密', '24201', '111', '2024-06-17 16:43:10.000000');

-- ----------------------------
-- Table structure for app01_payroll
-- ----------------------------
DROP TABLE IF EXISTS `app01_payroll`;
CREATE TABLE `app01_payroll`  (
  `payRoll_id` int NOT NULL,
  `month` int NOT NULL,
  `basicSalary` double NOT NULL,
  `bonus` double NOT NULL,
  `deductions` double NOT NULL,
  `total` double NOT NULL,
  `user_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`payRoll_id`) USING BTREE,
  INDEX `app01_payroll_user_id_5ba4f259_fk_app01_user_user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `app01_payroll_user_id_5ba4f259_fk_app01_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `app01_user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app01_payroll
-- ----------------------------
INSERT INTO `app01_payroll` VALUES (24601, 6, 10000, 3000, 400, 12600, '24201');
INSERT INTO `app01_payroll` VALUES (24603, 8, 8000, 2200, 200, 10000, '20242');
INSERT INTO `app01_payroll` VALUES (24604, 6, 8000, 2200, 200, 10000, '20242');

-- ----------------------------
-- Table structure for app01_seat
-- ----------------------------
DROP TABLE IF EXISTS `app01_seat`;
CREATE TABLE `app01_seat`  (
  `seat_id` int NOT NULL,
  `seat_storey` int NOT NULL,
  `seat_area` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `seat_position` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `seat_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `seat_state` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`seat_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app01_seat
-- ----------------------------

-- ----------------------------
-- Table structure for app01_usedseat
-- ----------------------------
DROP TABLE IF EXISTS `app01_usedseat`;
CREATE TABLE `app01_usedseat`  (
  `user_id` int NOT NULL,
  `seat_id` int NOT NULL,
  `time` datetime(6) NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app01_usedseat
-- ----------------------------

-- ----------------------------
-- Table structure for app01_usedworkshop
-- ----------------------------
DROP TABLE IF EXISTS `app01_usedworkshop`;
CREATE TABLE `app01_usedworkshop`  (
  `user_id` int NOT NULL,
  `workshop_id` int NOT NULL,
  `time` datetime(6) NOT NULL,
  `keeptime` double NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app01_usedworkshop
-- ----------------------------

-- ----------------------------
-- Table structure for app01_user
-- ----------------------------
DROP TABLE IF EXISTS `app01_user`;
CREATE TABLE `app01_user`  (
  `user_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_gender` tinyint(1) NOT NULL,
  `user_name` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_academy` int NOT NULL,
  `user_age` int NOT NULL,
  `user_workage` int NOT NULL,
  `user_nation` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_times` int NOT NULL,
  `user_phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_email` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_mariage` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_post` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_statue` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app01_user
-- ----------------------------
INSERT INTO `app01_user` VALUES ('20242', '123456', 1, '李四', 6, 25, 3, '汉族', 0, 'XXXXXXXXXXX', 'XXX@XXX.com', '未婚', '销售', '在岗');
INSERT INTO `app01_user` VALUES ('20243', '123456', 1, '王五', 5, 30, 10, '汉族', 0, 'XXXXXXXXXXX', 'XXX@XXX.com', '已婚', '销售', '在岗');
INSERT INTO `app01_user` VALUES ('20244', '123456', 0, '孙六', 3, 30, 10, '汉族', 0, 'XXXXXXXXXXX', 'XXX@XXX.com', '已婚', '销售', '在岗');
INSERT INTO `app01_user` VALUES ('20245', '123456', 1, '周七', 3, 30, 10, '汉族', 0, 'XXXXXXXXXXX', 'XXX@XXX.com', '未婚', '客服', '辞退');
INSERT INTO `app01_user` VALUES ('24201', '123456', 1, '张四', 6, 25, 4, '汉族', 2, '13153629203', 'gengzun@126.com', '未婚', '工程师', '在岗');

-- ----------------------------
-- Table structure for app01_workshop
-- ----------------------------
DROP TABLE IF EXISTS `app01_workshop`;
CREATE TABLE `app01_workshop`  (
  `workshop_id` int NOT NULL,
  `workshop_storey` int NOT NULL,
  `workshop_area` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `workshop_position` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `workshop_state` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`workshop_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app01_workshop
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id` ASC, `permission_id` ASC) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id` ASC) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id` ASC, `codename` ASC) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add administrator', 7, 'add_administrator');
INSERT INTO `auth_permission` VALUES (26, 'Can change administrator', 7, 'change_administrator');
INSERT INTO `auth_permission` VALUES (27, 'Can delete administrator', 7, 'delete_administrator');
INSERT INTO `auth_permission` VALUES (28, 'Can view administrator', 7, 'view_administrator');
INSERT INTO `auth_permission` VALUES (29, 'Can add complaint', 8, 'add_complaint');
INSERT INTO `auth_permission` VALUES (30, 'Can change complaint', 8, 'change_complaint');
INSERT INTO `auth_permission` VALUES (31, 'Can delete complaint', 8, 'delete_complaint');
INSERT INTO `auth_permission` VALUES (32, 'Can view complaint', 8, 'view_complaint');
INSERT INTO `auth_permission` VALUES (33, 'Can add default', 9, 'add_default');
INSERT INTO `auth_permission` VALUES (34, 'Can change default', 9, 'change_default');
INSERT INTO `auth_permission` VALUES (35, 'Can delete default', 9, 'delete_default');
INSERT INTO `auth_permission` VALUES (36, 'Can view default', 9, 'view_default');
INSERT INTO `auth_permission` VALUES (37, 'Can add seat', 10, 'add_seat');
INSERT INTO `auth_permission` VALUES (38, 'Can change seat', 10, 'change_seat');
INSERT INTO `auth_permission` VALUES (39, 'Can delete seat', 10, 'delete_seat');
INSERT INTO `auth_permission` VALUES (40, 'Can view seat', 10, 'view_seat');
INSERT INTO `auth_permission` VALUES (41, 'Can add usedseat', 11, 'add_usedseat');
INSERT INTO `auth_permission` VALUES (42, 'Can change usedseat', 11, 'change_usedseat');
INSERT INTO `auth_permission` VALUES (43, 'Can delete usedseat', 11, 'delete_usedseat');
INSERT INTO `auth_permission` VALUES (44, 'Can view usedseat', 11, 'view_usedseat');
INSERT INTO `auth_permission` VALUES (45, 'Can add usedworkshop', 12, 'add_usedworkshop');
INSERT INTO `auth_permission` VALUES (46, 'Can change usedworkshop', 12, 'change_usedworkshop');
INSERT INTO `auth_permission` VALUES (47, 'Can delete usedworkshop', 12, 'delete_usedworkshop');
INSERT INTO `auth_permission` VALUES (48, 'Can view usedworkshop', 12, 'view_usedworkshop');
INSERT INTO `auth_permission` VALUES (49, 'Can add user', 13, 'add_user');
INSERT INTO `auth_permission` VALUES (50, 'Can change user', 13, 'change_user');
INSERT INTO `auth_permission` VALUES (51, 'Can delete user', 13, 'delete_user');
INSERT INTO `auth_permission` VALUES (52, 'Can view user', 13, 'view_user');
INSERT INTO `auth_permission` VALUES (53, 'Can add workshop', 14, 'add_workshop');
INSERT INTO `auth_permission` VALUES (54, 'Can change workshop', 14, 'change_workshop');
INSERT INTO `auth_permission` VALUES (55, 'Can delete workshop', 14, 'delete_workshop');
INSERT INTO `auth_permission` VALUES (56, 'Can view workshop', 14, 'view_workshop');
INSERT INTO `auth_permission` VALUES (57, 'Can add payroll', 15, 'add_payroll');
INSERT INTO `auth_permission` VALUES (58, 'Can change payroll', 15, 'change_payroll');
INSERT INTO `auth_permission` VALUES (59, 'Can delete payroll', 15, 'delete_payroll');
INSERT INTO `auth_permission` VALUES (60, 'Can view payroll', 15, 'view_payroll');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id` ASC, `group_id` ASC) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id` ASC) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id` ASC, `permission_id` ASC) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id` ASC) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content_type_id` int NULL DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id` ASC) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_chk_1` CHECK (`action_flag` >= 0)
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label` ASC, `model` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (7, 'app01', 'administrator');
INSERT INTO `django_content_type` VALUES (8, 'app01', 'complaint');
INSERT INTO `django_content_type` VALUES (9, 'app01', 'default');
INSERT INTO `django_content_type` VALUES (15, 'app01', 'payroll');
INSERT INTO `django_content_type` VALUES (10, 'app01', 'seat');
INSERT INTO `django_content_type` VALUES (11, 'app01', 'usedseat');
INSERT INTO `django_content_type` VALUES (12, 'app01', 'usedworkshop');
INSERT INTO `django_content_type` VALUES (13, 'app01', 'user');
INSERT INTO `django_content_type` VALUES (14, 'app01', 'workshop');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2024-06-03 07:30:15.574396');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2024-06-03 07:30:15.953851');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2024-06-03 07:30:16.031934');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2024-06-03 07:30:16.038915');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2024-06-03 07:30:16.045717');
INSERT INTO `django_migrations` VALUES (6, 'app01', '0001_initial', '2024-06-03 07:30:16.175277');
INSERT INTO `django_migrations` VALUES (7, 'contenttypes', '0002_remove_content_type_name', '2024-06-03 07:30:16.238915');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0002_alter_permission_name_max_length', '2024-06-03 07:30:16.278634');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0003_alter_user_email_max_length', '2024-06-03 07:30:16.299380');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0004_alter_user_username_opts', '2024-06-03 07:30:16.307360');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0005_alter_user_last_login_null', '2024-06-03 07:30:16.356596');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0006_require_contenttypes_0002', '2024-06-03 07:30:16.359627');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0007_alter_validators_add_error_messages', '2024-06-03 07:30:16.367606');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0008_alter_user_username_max_length', '2024-06-03 07:30:16.416397');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0009_alter_user_last_name_max_length', '2024-06-03 07:30:16.465583');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0010_alter_group_name_max_length', '2024-06-03 07:30:16.482483');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0011_update_proxy_permissions', '2024-06-03 07:30:16.493473');
INSERT INTO `django_migrations` VALUES (18, 'auth', '0012_alter_user_first_name_max_length', '2024-06-03 07:30:16.541822');
INSERT INTO `django_migrations` VALUES (19, 'sessions', '0001_initial', '2024-06-03 07:30:16.569253');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('zrcrn85tqypkqvxyupjs22my6axek0d4', '.eJxNjF0LgjAYRv_L8DJiWxblVYgiUdCnUN2IzTlenJtsLqXov7fuujzPOTxvBFVBUIQIxgSjCeJtCdKz4Eq8nFoTupgy3Xrz5AZqYGUPWhVMV9xX4WxFw6WXYAupBSgU9cZxz9XfZ1daO2jzmwL6CAgNWj64S7MhyT6-ClWzgVqL-f14y-SZmXS8zrcZzt0hPTWjbLokiXc5oM8X-Og2HA:1sJ82S:JGIZ4QQ0Gei22co535RRAc4ZuOeVw6g9C_TfNKeXcQg', '2024-07-01 08:48:32.612868');

SET FOREIGN_KEY_CHECKS = 1;
