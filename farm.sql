/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : farm

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-05-25 22:22:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', '0', '1', '控制台预览', 'fa-bar-chart', '/', null, '2018-04-19 20:08:52');
INSERT INTO `admin_menu` VALUES ('2', '0', '2', '系统管理', 'fa-tasks', null, null, '2018-04-19 20:09:04');
INSERT INTO `admin_menu` VALUES ('3', '2', '3', 'Users', 'fa-users', 'auth/users', null, null);
INSERT INTO `admin_menu` VALUES ('4', '2', '4', 'Roles', 'fa-user', 'auth/roles', null, null);
INSERT INTO `admin_menu` VALUES ('5', '2', '5', 'Permission', 'fa-ban', 'auth/permissions', null, null);
INSERT INTO `admin_menu` VALUES ('6', '2', '6', 'Menu', 'fa-bars', 'auth/menu', null, null);
INSERT INTO `admin_menu` VALUES ('7', '2', '7', 'Operation log', 'fa-history', 'auth/logs', null, null);
INSERT INTO `admin_menu` VALUES ('8', '0', '12', '订单管理', 'fa-list-ul', 'orders', '2018-03-27 16:14:52', '2018-04-10 15:54:58');
INSERT INTO `admin_menu` VALUES ('12', '15', '9', '商品列表', 'fa-th-list', 'goods', '2018-03-31 15:37:53', '2018-04-20 19:44:48');
INSERT INTO `admin_menu` VALUES ('13', '15', '10', '商品种类', 'fa-th-list', 'category', '2018-03-31 15:38:09', '2018-04-10 15:50:09');
INSERT INTO `admin_menu` VALUES ('14', '0', '11', '用户管理', 'fa-user', 'member', '2018-04-01 09:10:38', '2018-04-10 15:50:29');
INSERT INTO `admin_menu` VALUES ('15', '0', '8', '商品管理', 'fa-bars', null, '2018-04-10 15:47:08', '2018-04-20 19:44:48');
INSERT INTO `admin_menu` VALUES ('16', '0', '13', '农场管理', 'fa-bars', 'farms', '2018-04-18 10:28:00', '2018-04-18 10:28:02');
INSERT INTO `admin_menu` VALUES ('17', '0', '17', '返回农牧云', 'fa-arrow-circle-left', 'http://farm.com', '2018-04-20 18:59:56', '2018-05-07 10:00:00');
INSERT INTO `admin_menu` VALUES ('18', '0', '14', '认购商品管理', 'fa-bars', 'adoptiongoods', '2018-04-27 16:41:40', '2018-04-27 16:41:58');
INSERT INTO `admin_menu` VALUES ('19', '0', '15', '认购订单管理', 'fa-bars', 'adoptionorders', '2018-05-06 20:36:58', '2018-05-06 20:37:06');
INSERT INTO `admin_menu` VALUES ('20', '0', '16', '认购详情上传', 'fa-bars', 'adoptiondetails', '2018-05-07 09:59:56', '2018-05-07 10:00:00');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES ('1', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-03-26 18:39:09', '2018-03-26 18:39:09');
INSERT INTO `admin_operation_log` VALUES ('2', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-03-26 18:39:13', '2018-03-26 18:39:13');
INSERT INTO `admin_operation_log` VALUES ('3', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-03-26 18:39:15', '2018-03-26 18:39:15');
INSERT INTO `admin_operation_log` VALUES ('4', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-03-26 18:39:16', '2018-03-26 18:39:16');
INSERT INTO `admin_operation_log` VALUES ('5', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-03-26 18:39:20', '2018-03-26 18:39:20');
INSERT INTO `admin_operation_log` VALUES ('6', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-03-26 18:39:20', '2018-03-26 18:39:20');
INSERT INTO `admin_operation_log` VALUES ('7', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-03-26 18:39:21', '2018-03-26 18:39:21');
INSERT INTO `admin_operation_log` VALUES ('8', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-03-26 18:42:16', '2018-03-26 18:42:16');
INSERT INTO `admin_operation_log` VALUES ('9', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-03-26 18:42:18', '2018-03-26 18:42:18');
INSERT INTO `admin_operation_log` VALUES ('10', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-03-27 15:50:29', '2018-03-27 15:50:29');
INSERT INTO `admin_operation_log` VALUES ('11', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-03-27 15:50:34', '2018-03-27 15:50:34');
INSERT INTO `admin_operation_log` VALUES ('12', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-03-27 16:12:43', '2018-03-27 16:12:43');
INSERT INTO `admin_operation_log` VALUES ('13', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-03-27 16:12:44', '2018-03-27 16:12:44');
INSERT INTO `admin_operation_log` VALUES ('14', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-03-27 16:12:45', '2018-03-27 16:12:45');
INSERT INTO `admin_operation_log` VALUES ('15', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-03-27 16:12:46', '2018-03-27 16:12:46');
INSERT INTO `admin_operation_log` VALUES ('16', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-03-27 16:12:48', '2018-03-27 16:12:48');
INSERT INTO `admin_operation_log` VALUES ('17', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-03-27 16:12:49', '2018-03-27 16:12:49');
INSERT INTO `admin_operation_log` VALUES ('18', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-03-27 16:14:42', '2018-03-27 16:14:42');
INSERT INTO `admin_operation_log` VALUES ('19', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Orders\",\"icon\":\"fa-bars\",\"uri\":\"orders\",\"roles\":[null],\"_token\":\"w0k2dtnBh7QlPqzBk6sDVcEtjWBkLGtEaYlDxV4f\"}', '2018-03-27 16:14:52', '2018-03-27 16:14:52');
INSERT INTO `admin_operation_log` VALUES ('20', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-03-27 16:14:52', '2018-03-27 16:14:52');
INSERT INTO `admin_operation_log` VALUES ('21', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-03-27 16:14:54', '2018-03-27 16:14:54');
INSERT INTO `admin_operation_log` VALUES ('22', '1', 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-03-27 16:14:56', '2018-03-27 16:14:56');
INSERT INTO `admin_operation_log` VALUES ('23', '1', 'admin/orders', 'GET', '127.0.0.1', '[]', '2018-03-27 16:15:45', '2018-03-27 16:15:45');
INSERT INTO `admin_operation_log` VALUES ('24', '1', 'admin/orders', 'GET', '127.0.0.1', '[]', '2018-03-27 16:16:56', '2018-03-27 16:16:56');
INSERT INTO `admin_operation_log` VALUES ('25', '1', 'admin/orders/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-03-27 16:17:52', '2018-03-27 16:17:52');
INSERT INTO `admin_operation_log` VALUES ('26', '1', 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-03-27 16:17:55', '2018-03-27 16:17:55');
INSERT INTO `admin_operation_log` VALUES ('27', '1', 'admin/orders/17/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-03-27 16:18:04', '2018-03-27 16:18:04');
INSERT INTO `admin_operation_log` VALUES ('28', '1', 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-03-27 16:18:07', '2018-03-27 16:18:07');
INSERT INTO `admin_operation_log` VALUES ('29', '1', 'admin/orders', 'GET', '127.0.0.1', '[]', '2018-03-27 16:28:41', '2018-03-27 16:28:41');
INSERT INTO `admin_operation_log` VALUES ('30', '1', 'admin/orders', 'GET', '127.0.0.1', '[]', '2018-03-27 16:28:53', '2018-03-27 16:28:53');
INSERT INTO `admin_operation_log` VALUES ('31', '1', 'admin/orders', 'GET', '127.0.0.1', '[]', '2018-03-27 16:50:46', '2018-03-27 16:50:46');
INSERT INTO `admin_operation_log` VALUES ('32', '1', 'admin/orders', 'GET', '127.0.0.1', '[]', '2018-03-27 16:50:50', '2018-03-27 16:50:50');
INSERT INTO `admin_operation_log` VALUES ('33', '1', 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-03-27 16:50:51', '2018-03-27 16:50:51');
INSERT INTO `admin_operation_log` VALUES ('34', '1', 'admin/orders', 'GET', '127.0.0.1', '[]', '2018-03-27 16:51:44', '2018-03-27 16:51:44');
INSERT INTO `admin_operation_log` VALUES ('35', '1', 'admin/orders', 'GET', '127.0.0.1', '[]', '2018-03-27 16:52:01', '2018-03-27 16:52:01');
INSERT INTO `admin_operation_log` VALUES ('36', '1', 'admin/orders/17/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-03-27 16:52:10', '2018-03-27 16:52:10');
INSERT INTO `admin_operation_log` VALUES ('37', '1', 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-03-27 16:52:11', '2018-03-27 16:52:11');
INSERT INTO `admin_operation_log` VALUES ('38', '1', 'admin/orders', 'GET', '127.0.0.1', '[]', '2018-03-27 16:52:11', '2018-03-27 16:52:11');
INSERT INTO `admin_operation_log` VALUES ('39', '1', 'admin/orders', 'GET', '127.0.0.1', '{\"order_id\":\"2018\",\"_pjax\":\"#pjax-container\"}', '2018-03-27 16:52:15', '2018-03-27 16:52:15');
INSERT INTO `admin_operation_log` VALUES ('40', '1', 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"order_id\":\"20180325\"}', '2018-03-27 16:52:22', '2018-03-27 16:52:22');
INSERT INTO `admin_operation_log` VALUES ('41', '1', 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"order_id\":\"2018032526\"}', '2018-03-27 16:52:26', '2018-03-27 16:52:26');
INSERT INTO `admin_operation_log` VALUES ('42', '1', 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"order_id\":\"20180326\"}', '2018-03-27 16:52:32', '2018-03-27 16:52:32');
INSERT INTO `admin_operation_log` VALUES ('43', '1', 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-03-27 16:52:45', '2018-03-27 16:52:45');
INSERT INTO `admin_operation_log` VALUES ('44', '1', 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-03-27 16:52:49', '2018-03-27 16:52:49');
INSERT INTO `admin_operation_log` VALUES ('45', '1', 'admin/orders', 'GET', '127.0.0.1', '[]', '2018-03-27 16:52:59', '2018-03-27 16:52:59');
INSERT INTO `admin_operation_log` VALUES ('46', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-03-28 16:51:12', '2018-03-28 16:51:12');
INSERT INTO `admin_operation_log` VALUES ('47', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-03-28 16:51:53', '2018-03-28 16:51:53');
INSERT INTO `admin_operation_log` VALUES ('48', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-03-28 16:52:15', '2018-03-28 16:52:15');
INSERT INTO `admin_operation_log` VALUES ('49', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-03-28 16:52:20', '2018-03-28 16:52:20');
INSERT INTO `admin_operation_log` VALUES ('50', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-03-28 16:52:23', '2018-03-28 16:52:23');
INSERT INTO `admin_operation_log` VALUES ('51', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-03-28 16:52:29', '2018-03-28 16:52:29');
INSERT INTO `admin_operation_log` VALUES ('52', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-03-28 16:52:33', '2018-03-28 16:52:33');
INSERT INTO `admin_operation_log` VALUES ('53', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-03-28 16:53:00', '2018-03-28 16:53:00');
INSERT INTO `admin_operation_log` VALUES ('54', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-03-28 16:53:04', '2018-03-28 16:53:04');
INSERT INTO `admin_operation_log` VALUES ('55', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-03-28 16:53:40', '2018-03-28 16:53:40');
INSERT INTO `admin_operation_log` VALUES ('56', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-03-28 16:53:43', '2018-03-28 16:53:43');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES ('1', 'All permission', '*', '', '*', null, null);
INSERT INTO `admin_permissions` VALUES ('2', 'Dashboard', 'dashboard', 'GET', '/', null, null);
INSERT INTO `admin_permissions` VALUES ('3', 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', null, null);
INSERT INTO `admin_permissions` VALUES ('4', 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', null, null);
INSERT INTO `admin_permissions` VALUES ('5', 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', null, null);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES ('1', 'Administrator', 'administrator', '2018-03-26 18:38:40', '2018-03-26 18:38:40');

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES ('1', '2', null, null);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `farm_id` int(2) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$Fca0rE77szUOCmWrGKG1y.7499KRYnMaqrvEuS/G98dWaMfEy4Qv6', 'Administrator', null, '2', '1yvTQn4gRyKESGfpYo72rIMBs2dWjWmKY49kt5C9VqxIrBiFWiXbzW3QSoB7', '2018-03-26 18:38:40', '2018-03-26 18:38:40');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for adoption_comments
-- ----------------------------
DROP TABLE IF EXISTS `adoption_comments`;
CREATE TABLE `adoption_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `comment` longtext,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of adoption_comments
-- ----------------------------
INSERT INTO `adoption_comments` VALUES ('9', '201805095304605', '100000', '1111111', '2018-05-09 20:22:31', '2018-05-09 20:22:31');
INSERT INTO `adoption_comments` VALUES ('10', '201805095304605', '100000', '哈哈哈哈哈哈哈哈1111', '2018-05-09 20:27:51', '2018-05-09 20:27:51');
INSERT INTO `adoption_comments` VALUES ('11', '201805095304605', '100000', '还不错哎', '2018-05-09 20:32:49', '2018-05-09 20:32:49');
INSERT INTO `adoption_comments` VALUES ('12', '201805105382001', '100000', '哈哈哈哈', '2018-05-10 18:59:32', '2018-05-10 18:59:32');
INSERT INTO `adoption_comments` VALUES ('13', '201805105382001', '100000', '111111111111', '2018-05-11 23:12:26', '2018-05-11 23:12:26');
INSERT INTO `adoption_comments` VALUES ('14', '201805105382001', '100000', '2111111111', '2018-05-11 23:12:44', '2018-05-11 23:12:44');
INSERT INTO `adoption_comments` VALUES ('15', '201805105382001', '100000', '111111111', '2018-05-11 23:25:01', '2018-05-11 23:25:01');
INSERT INTO `adoption_comments` VALUES ('16', '201805105382001', '100000', '111111111', '2018-05-11 23:25:21', '2018-05-11 23:25:21');
INSERT INTO `adoption_comments` VALUES ('17', '201805105382001', '100000', '11111', '2018-05-11 23:25:31', '2018-05-11 23:25:31');
INSERT INTO `adoption_comments` VALUES ('18', '201805105382001', '100000', '111111', '2018-05-11 23:25:49', '2018-05-11 23:25:49');
INSERT INTO `adoption_comments` VALUES ('19', '201805105382001', '100000', '11111', '2018-05-11 23:26:19', '2018-05-11 23:26:19');
INSERT INTO `adoption_comments` VALUES ('20', '201805105382001', '100000', '2222222', '2018-05-11 23:26:35', '2018-05-11 23:26:35');
INSERT INTO `adoption_comments` VALUES ('21', '201805105382001', '100000', '2222222', '2018-05-11 23:26:50', '2018-05-11 23:26:50');
INSERT INTO `adoption_comments` VALUES ('22', '201805105382001', '100000', '1111111', '2018-05-11 23:27:00', '2018-05-11 23:27:00');
INSERT INTO `adoption_comments` VALUES ('23', '201805105382001', '100000', '1111111', '2018-05-11 23:27:13', '2018-05-11 23:27:13');
INSERT INTO `adoption_comments` VALUES ('24', '201805105382001', '100000', '1111111111', '2018-05-11 23:27:23', '2018-05-11 23:27:23');
INSERT INTO `adoption_comments` VALUES ('25', '201805105382001', '100000', '2222222', '2018-05-11 23:27:50', '2018-05-11 23:27:50');
INSERT INTO `adoption_comments` VALUES ('26', '201805123153018', '100000', '454135132', '2018-05-12 10:12:11', '2018-05-12 10:12:11');

-- ----------------------------
-- Table structure for adoption_details
-- ----------------------------
DROP TABLE IF EXISTS `adoption_details`;
CREATE TABLE `adoption_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) DEFAULT NULL,
  `current_stage` int(11) DEFAULT NULL,
  `description` text,
  `picture` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of adoption_details
-- ----------------------------
INSERT INTO `adoption_details` VALUES ('13', '201805105382001', '1', null, 'images/ed4bfd0f2ce330f4d3108bb7f090ea1f.jpg', null, '2018-05-11 23:29:14', '2018-05-11 23:29:14');
INSERT INTO `adoption_details` VALUES ('14', '201805122725345', '1', null, 'images/3c0f8b1c7d527bda44931489a4021f96.png', null, '2018-05-12 12:25:53', '2018-05-12 12:25:53');
INSERT INTO `adoption_details` VALUES ('15', '201805125962072', '1', 'h454643', 'images/def265f095fd0a112e7df17d7ddbd83e.png', null, '2018-05-12 12:59:27', '2018-05-12 12:59:27');

-- ----------------------------
-- Table structure for adoption_goods
-- ----------------------------
DROP TABLE IF EXISTS `adoption_goods`;
CREATE TABLE `adoption_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `total_stage` int(11) DEFAULT NULL,
  `days_per_stage` int(11) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `farm` varchar(2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of adoption_goods
-- ----------------------------
INSERT INTO `adoption_goods` VALUES ('6', '香香猪', '2', '300', '头', '5', '20', 'images/9edb7482f9c9dfca71054b9e46d0aa24.jpg', '这是一头香香猪', '3', '2018-05-04 08:31:36', '2018-05-04 08:31:36');
INSERT INTO `adoption_goods` VALUES ('7', '大白鸡', '2', '73', '只', '3', '23', 'images/2c84706cdf699be76577bdd895e5f11d.jpg', '大白鸡', '2', '2018-05-04 08:31:38', '2018-05-04 08:31:38');
INSERT INTO `adoption_goods` VALUES ('8', '本地鸡', '2', '68', '只', '4', '43', 'images/a9b5c3e1f17805cd4ee31280251593b5.jpg', '这是一只本地鸡', '3', '2018-05-12 09:23:26', '2018-05-12 09:23:26');
INSERT INTO `adoption_goods` VALUES ('9', '牦牛', '2', '132', '头', '3', '34', 'images/a3dc6f830b4e0012682c056e5bf30339.jpg', '这是一头牦牛', '2', '2018-05-12 09:23:10', '2018-05-12 09:23:10');
INSERT INTO `adoption_goods` VALUES ('11', '白鸭子', '2', '36', '只', '3', '29', 'images/270f65145f29b16f21644385c14bc03d.jpg', '这是一只白鸭子', '1', '2018-05-12 09:23:21', '2018-05-12 09:23:21');
INSERT INTO `adoption_goods` VALUES ('12', '小黄鸭', '2', '23', '只', '4', '56', 'images/f96c8a506e94e4338c9e72ad1d078d9d.jpg', '这是一只小黄鸭', '3', '2018-05-12 09:23:37', '2018-05-12 09:23:37');

-- ----------------------------
-- Table structure for adoption_orders
-- ----------------------------
DROP TABLE IF EXISTS `adoption_orders`;
CREATE TABLE `adoption_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `farm_id` int(11) DEFAULT NULL,
  `good_id` varchar(255) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `total_stage` varchar(255) DEFAULT NULL,
  `price_per_stage` varchar(255) DEFAULT NULL,
  `days_per_stage` varchar(255) DEFAULT NULL,
  `estimate_bonus` varchar(255) DEFAULT NULL,
  `adopt_num` int(11) DEFAULT NULL,
  `estimate_end_time` varchar(255) DEFAULT NULL,
  `current_stage` int(11) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `delete` int(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of adoption_orders
-- ----------------------------
INSERT INTO `adoption_orders` VALUES ('26', '大白鸡', '2', '7', '201805095304605', '100000', '3', '73', '23', null, '5', '2018-07-17', '1', '2', '1', '2018-05-09 20:45:06', '2018-05-09 20:45:06');
INSERT INTO `adoption_orders` VALUES ('27', '牦牛', '2', '9', '201805092090717', '100000', '3', '132', '34', null, '1', '2018-08-19', '1', '2', '1', '2018-05-09 20:44:59', '2018-05-09 20:44:59');
INSERT INTO `adoption_orders` VALUES ('28', '香香猪', '3', '6', '201805105382001', '100000', '5', '300', '20', null, '1', '2018-08-18', '1', '2', '1', '2018-05-12 10:09:34', '2018-05-12 10:09:34');
INSERT INTO `adoption_orders` VALUES ('29', '白鸭子', '1', '11', '201805110355786', '100000', '3', '36', '29', null, '1', '2018-08-06', '1', '2', '1', '2018-05-11 15:59:33', '2018-05-11 15:59:33');
INSERT INTO `adoption_orders` VALUES ('30', '白鸭子', '1', '11', '201805120924821', '100000', '3', '36', '29', null, null, '2018-08-07', '1', '2', '0', '2018-05-12 09:17:09', '2018-05-12 09:17:09');
INSERT INTO `adoption_orders` VALUES ('31', '本地鸡', '3', '8', '201805122779224', '100000', '4', '68', '43', null, '1', '2018-10-31', '1', '2', '0', '2018-05-12 09:25:27', '2018-05-12 09:25:27');
INSERT INTO `adoption_orders` VALUES ('35', '牦牛', '2', '9', '201805122725345', '100000', '3', '132', '34', null, '1', '2018-08-22', '1', '2', '0', '2018-05-12 12:25:27', '2018-05-12 12:25:27');
INSERT INTO `adoption_orders` VALUES ('36', '牦牛', '2', '9', '201805125962072', '100000', '3', '132', '34', null, '1', '2018-08-22', '1', '2', '0', '2018-05-12 12:57:59', '2018-05-12 12:57:59');

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` text,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', '水果', null, '2018-03-26 09:51:18', '2018-03-26 09:51:19');
INSERT INTO `categories` VALUES ('2', '家禽类', '鸡鸭鹅等动物', '2018-04-21 11:27:49', '2018-04-21 11:27:49');
INSERT INTO `categories` VALUES ('3', '肉类', null, '2018-03-26 09:56:20', '2018-03-26 09:56:20');
INSERT INTO `categories` VALUES ('4', '蔬菜', null, '2018-03-31 11:26:16', '2018-03-31 11:26:16');
INSERT INTO `categories` VALUES ('5', '禽蛋类', '鸡蛋、鸭蛋等蛋类', '2018-04-21 11:28:36', '2018-04-21 11:28:36');

-- ----------------------------
-- Table structure for cities
-- ----------------------------
DROP TABLE IF EXISTS `cities`;
CREATE TABLE `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `pycode` varchar(50) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `postcode` varchar(50) DEFAULT NULL,
  `areacode` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `b_cityP_fk` (`pid`),
  CONSTRAINT `b_cityP_fk` FOREIGN KEY (`pid`) REFERENCES `provinces` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2470 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cities
-- ----------------------------
INSERT INTO `cities` VALUES ('1', '北京', 'bj', '1', '100000', '010');
INSERT INTO `cities` VALUES ('2', '通县', 'tx', '1', '101100', '010');
INSERT INTO `cities` VALUES ('3', '昌平', 'cp', '1', '102200', '010');
INSERT INTO `cities` VALUES ('4', '大兴', 'dx', '1', '102600', '010');
INSERT INTO `cities` VALUES ('5', '密云', 'my', '1', '101500', '010');
INSERT INTO `cities` VALUES ('6', '延庆', 'yq', '1', '102100', '010');
INSERT INTO `cities` VALUES ('7', '顺义', 'sy', '1', '101300', '010');
INSERT INTO `cities` VALUES ('8', '怀柔', 'hr', '1', '101400', '010');
INSERT INTO `cities` VALUES ('9', '平台', 'pt', '1', '101200', '010');
INSERT INTO `cities` VALUES ('10', '上海', 'sh', '2', '200000', '021');
INSERT INTO `cities` VALUES ('11', '上海县', 'shx', '2', '201100', '021');
INSERT INTO `cities` VALUES ('12', '嘉定', 'jd', '2', '201800', '021');
INSERT INTO `cities` VALUES ('13', '松江', 'sj', '2', '201600', '021');
INSERT INTO `cities` VALUES ('14', '南汇', 'nh', '2', '201300', '021');
INSERT INTO `cities` VALUES ('15', '奉贤', 'fx', '2', '201400', '021');
INSERT INTO `cities` VALUES ('16', '川沙', 'cs', '2', '201200', '021');
INSERT INTO `cities` VALUES ('17', '青浦', 'qp', '2', '201700', '021');
INSERT INTO `cities` VALUES ('18', '崇明', 'cm', '2', '202100', '021');
INSERT INTO `cities` VALUES ('19', '金山', 'js', '2', '201500', '021');
INSERT INTO `cities` VALUES ('20', '天津', 'tj', '3', '300000', '022');
INSERT INTO `cities` VALUES ('21', '蓟县', 'jx', '3', '301900', '022');
INSERT INTO `cities` VALUES ('22', '宝坻', 'bd', '3', '301800', '022');
INSERT INTO `cities` VALUES ('23', '武清', 'wq', '3', '301700', '022');
INSERT INTO `cities` VALUES ('24', '静海', 'jh', '3', '301600', '022');
INSERT INTO `cities` VALUES ('25', '宁河', 'nh', '3', '301500', '022');
INSERT INTO `cities` VALUES ('26', '万县', 'wx', '4', '404000', '023');
INSERT INTO `cities` VALUES ('27', '永川', 'yc', '4', '402000', '023');
INSERT INTO `cities` VALUES ('28', '北碚', 'bb', '4', '400700', '023');
INSERT INTO `cities` VALUES ('29', '巴县', 'bx', '4', '401320', '023');
INSERT INTO `cities` VALUES ('30', '江北', 'jb', '4', '401120', '023');
INSERT INTO `cities` VALUES ('31', '重庆', 'cq', '4', '400000', '023');
INSERT INTO `cities` VALUES ('32', '涪陵', 'fl', '4', '408000', '023');
INSERT INTO `cities` VALUES ('33', '石柱', 'sz', '4', '409100', '023');
INSERT INTO `cities` VALUES ('34', '丰都', 'fd', '4', '408200', '023');
INSERT INTO `cities` VALUES ('35', '南川', 'nc', '4', '408400', '023');
INSERT INTO `cities` VALUES ('36', '城口', 'ck', '4', '405900', '023');
INSERT INTO `cities` VALUES ('37', '巫溪', 'wx', '4', '405800', '023');
INSERT INTO `cities` VALUES ('38', '奉节', 'fj', '4', '404600', '023');
INSERT INTO `cities` VALUES ('39', '云阳', 'yy', '4', '404500', '023');
INSERT INTO `cities` VALUES ('40', '忠县', 'zx', '4', '404300', '023');
INSERT INTO `cities` VALUES ('41', '梁平', 'lp', '4', '405200', '023');
INSERT INTO `cities` VALUES ('42', '开县', 'kx', '4', '405400', '023');
INSERT INTO `cities` VALUES ('43', '大足', 'dz', '4', '402360', '023');
INSERT INTO `cities` VALUES ('44', '荣昌', 'rc', '4', '402460', '023');
INSERT INTO `cities` VALUES ('45', '壁山', 'bs', '4', '402760', '023');
INSERT INTO `cities` VALUES ('46', '铜梁', 'tl', '4', '402560', '023');
INSERT INTO `cities` VALUES ('47', '潼南', 'tn', '4', '402660', '023');
INSERT INTO `cities` VALUES ('48', '合川', 'hc', '4', '401520', '023');
INSERT INTO `cities` VALUES ('49', '江津', 'jj', '4', '402260', '023');
INSERT INTO `cities` VALUES ('50', '双桥', 'sq', '4', '400900', '023');
INSERT INTO `cities` VALUES ('51', '南桐', 'nt', '4', '400800', '023');
INSERT INTO `cities` VALUES ('52', '长寿', 'cs', '4', '401220', '023');
INSERT INTO `cities` VALUES ('53', '綦江', 'qj', '4', '401420', '023');
INSERT INTO `cities` VALUES ('54', '黔江', 'qj', '4', '409700', '023');
INSERT INTO `cities` VALUES ('55', '武隆', 'wl', '4', '408500', '023');
INSERT INTO `cities` VALUES ('56', '垫江', 'dj', '4', '408300', '023');
INSERT INTO `cities` VALUES ('57', '巫山', 'ws', '4', '404700', '023');
INSERT INTO `cities` VALUES ('58', '石家庄', 'sjz', '11', '050000', '0311');
INSERT INTO `cities` VALUES ('59', '获鹿', 'hl', '11', '050200', '0311');
INSERT INTO `cities` VALUES ('60', '正定', 'zd', '11', '050800', '0311');
INSERT INTO `cities` VALUES ('61', '栾城', 'lc', '11', '051400', '0311');
INSERT INTO `cities` VALUES ('62', '井陉', 'jx', '11', '050300', '0311');
INSERT INTO `cities` VALUES ('63', '元氏', 'ys', '11', '051100', '0311');
INSERT INTO `cities` VALUES ('64', '新乐', 'xl', '11', '050700', '0311');
INSERT INTO `cities` VALUES ('65', '无极', 'wj', '11', '052400', '0311');
INSERT INTO `cities` VALUES ('66', '深泽', 'sz', '11', '052500', '0311');
INSERT INTO `cities` VALUES ('67', '辛集', 'xj', '11', '052300', '0311');
INSERT INTO `cities` VALUES ('68', '晋州', 'jz', '11', '052200', '0311');
INSERT INTO `cities` VALUES ('69', '赵县', 'zx', '11', '051500', '0311');
INSERT INTO `cities` VALUES ('70', '赞皇', 'zh', '11', '051200', '0311');
INSERT INTO `cities` VALUES ('71', '高邑', 'gy', '11', '051300', '0311');
INSERT INTO `cities` VALUES ('72', '平山', 'ps', '11', '050400', '0311');
INSERT INTO `cities` VALUES ('73', '灵寿', 'ls', '11', '050500', '0311');
INSERT INTO `cities` VALUES ('74', '行唐', 'xt', '11', '050600', '0311');
INSERT INTO `cities` VALUES ('75', '保定', 'bd', '11', '071000', '0312');
INSERT INTO `cities` VALUES ('76', '潢城', 'hc', '11', '072100', '0312');
INSERT INTO `cities` VALUES ('77', '清苑', 'qy', '11', '071100', '0312');
INSERT INTO `cities` VALUES ('78', '涞水', 'ls', '11', '074100', '0312');
INSERT INTO `cities` VALUES ('79', '易县', 'yx', '11', '074200', '0312');
INSERT INTO `cities` VALUES ('80', '涞源', 'ly', '11', '102900', '0312');
INSERT INTO `cities` VALUES ('81', '唐县', 'tx', '11', '072300', '0312');
INSERT INTO `cities` VALUES ('82', '定兴', 'dx', '11', '072600', '0312');
INSERT INTO `cities` VALUES ('83', '涿州', 'zz', '11', '072700', '0312');
INSERT INTO `cities` VALUES ('84', '高碑店', 'gbd', '11', '074000', '0312');
INSERT INTO `cities` VALUES ('85', '博野', 'by', '11', '071300', '0312');
INSERT INTO `cities` VALUES ('86', '安国', 'ag', '11', '071200', '0312');
INSERT INTO `cities` VALUES ('87', '定州', 'dz', '11', '073000', '0312');
INSERT INTO `cities` VALUES ('88', '曲阳', 'qy', '11', '073100', '0312');
INSERT INTO `cities` VALUES ('89', '阜平', 'fp', '11', '073200', '0312');
INSERT INTO `cities` VALUES ('90', '高阳', 'gy', '11', '071500', '0312');
INSERT INTO `cities` VALUES ('91', '徐水', 'xs', '11', '072500', '0312');
INSERT INTO `cities` VALUES ('92', '容城', 'rc', '11', '071700', '0312');
INSERT INTO `cities` VALUES ('93', '雄县', 'xx', '11', '071800', '0312');
INSERT INTO `cities` VALUES ('94', '安新', 'ax', '11', '071600', '0312');
INSERT INTO `cities` VALUES ('95', '望都', 'wd', '11', '072400', '0312');
INSERT INTO `cities` VALUES ('96', '蠡县', 'lx', '11', '071400', '0312');
INSERT INTO `cities` VALUES ('97', '顺平', 'sp', '11', '072200', '0312');
INSERT INTO `cities` VALUES ('98', '张家口', 'zjk', '11', '075000', '0313');
INSERT INTO `cities` VALUES ('99', '宣化', 'xh', '11', '075100', '0313');
INSERT INTO `cities` VALUES ('100', '怀安', 'ha', '11', '076100', '0313');
INSERT INTO `cities` VALUES ('101', '万全', 'wq', '11', '076200', '0313');
INSERT INTO `cities` VALUES ('102', '张北', 'zb', '11', '076400', '0313');
INSERT INTO `cities` VALUES ('103', '崇礼', 'cl', '11', '076300', '0313');
INSERT INTO `cities` VALUES ('104', '沽源', 'gy', '11', '076500', '0313');
INSERT INTO `cities` VALUES ('105', '尚义', 'sy', '11', '076700', '0313');
INSERT INTO `cities` VALUES ('106', '康保', 'kb', '11', '076600', '0313');
INSERT INTO `cities` VALUES ('107', '赤城', 'cc', '11', '075500', '0313');
INSERT INTO `cities` VALUES ('108', '怀来', 'hl', '11', '075400', '0313');
INSERT INTO `cities` VALUES ('109', '涿鹿', 'zl', '11', '075600', '0313');
INSERT INTO `cities` VALUES ('110', '蔚县', 'wx', '11', '075700', '0313');
INSERT INTO `cities` VALUES ('111', '阳原', 'yy', '11', '075800', '0313');
INSERT INTO `cities` VALUES ('112', '承德', 'cd', '11', '067000', '0314');
INSERT INTO `cities` VALUES ('113', '承德县', 'cdx', '11', '067400', '0314');
INSERT INTO `cities` VALUES ('114', '兴隆', 'xl', '11', '067300', '0314');
INSERT INTO `cities` VALUES ('115', '隆化', 'lh', '11', '068100', '0314');
INSERT INTO `cities` VALUES ('116', '围场', 'wc', '11', '068400', '0314');
INSERT INTO `cities` VALUES ('117', '平泉', 'pq', '11', '067500', '0314');
INSERT INTO `cities` VALUES ('118', '宽城', 'kc', '11', '067600', '0314');
INSERT INTO `cities` VALUES ('119', '丰宁', 'fn', '11', '068300', '0314');
INSERT INTO `cities` VALUES ('120', '滦平', 'lp', '11', '068200', '0314');
INSERT INTO `cities` VALUES ('121', '唐山', 'ts', '11', '063000', '0315');
INSERT INTO `cities` VALUES ('122', '玉田', 'yt', '11', '064100', '0315');
INSERT INTO `cities` VALUES ('123', '滦县', 'lx', '11', '063700', '0315');
INSERT INTO `cities` VALUES ('124', '遵化', 'zh', '11', '064200', '0315');
INSERT INTO `cities` VALUES ('125', '滦南', 'ln', '11', '063500', '0315');
INSERT INTO `cities` VALUES ('126', '唐海', 'th', '11', '063200', '0315');
INSERT INTO `cities` VALUES ('127', '丰南', 'fn', '11', '063300', '0315');
INSERT INTO `cities` VALUES ('128', '乐亭', 'lt', '11', '063600', '0315');
INSERT INTO `cities` VALUES ('129', '丰润', 'fr', '11', '064000', '0315');
INSERT INTO `cities` VALUES ('130', '迁安', 'qa', '11', '064400', '0315');
INSERT INTO `cities` VALUES ('131', '迁西', 'qx', '11', '064300', '0315');
INSERT INTO `cities` VALUES ('132', '廊坊', 'lf', '11', '102800', '0316');
INSERT INTO `cities` VALUES ('133', '霸州', 'bz', '11', '065700', '0316');
INSERT INTO `cities` VALUES ('134', '永清', 'yq', '11', '302650', '0316');
INSERT INTO `cities` VALUES ('135', '大城', 'dc', '11', '302950', '0316');
INSERT INTO `cities` VALUES ('136', '文安', 'wa', '11', '302850', '0316');
INSERT INTO `cities` VALUES ('137', '固安', 'ga', '11', '102700', '0316');
INSERT INTO `cities` VALUES ('138', '香河', 'xh', '11', '302550', '0316');
INSERT INTO `cities` VALUES ('139', '大厂', 'dc', '11', '101700', '0316');
INSERT INTO `cities` VALUES ('140', '三河', 'sh', '11', '101600', '0316');
INSERT INTO `cities` VALUES ('141', '沧州', 'cz', '11', '061000', '0317');
INSERT INTO `cities` VALUES ('142', '黄骅', 'hh', '11', '061100', '0317');
INSERT INTO `cities` VALUES ('143', '海兴', 'hx', '11', '061200', '0317');
INSERT INTO `cities` VALUES ('144', '盐山', 'ys', '11', '061300', '0317');
INSERT INTO `cities` VALUES ('145', '孟村', 'mc', '11', '061400', '0317');
INSERT INTO `cities` VALUES ('146', '青县', 'qx', '11', '062600', '0317');
INSERT INTO `cities` VALUES ('147', '南皮', 'np', '11', '061500', '0317');
INSERT INTO `cities` VALUES ('148', '东光', 'dg', '11', '061600', '0317');
INSERT INTO `cities` VALUES ('149', '吴桥', 'wq', '11', '061800', '0317');
INSERT INTO `cities` VALUES ('150', '泊头', 'bt', '11', '062100', '0317');
INSERT INTO `cities` VALUES ('151', '河间', 'hj', '11', '062400', '0317');
INSERT INTO `cities` VALUES ('152', '肃宁', 'sn', '11', '062300', '0317');
INSERT INTO `cities` VALUES ('153', '任丘', 'rq', '11', '062500', '0317');
INSERT INTO `cities` VALUES ('154', '献县', 'xx', '11', '062200', '0317');
INSERT INTO `cities` VALUES ('155', '衡水', 'hs', '11', '053000', '0318');
INSERT INTO `cities` VALUES ('156', '铙阳', 'ny', '11', '052700', '0318');
INSERT INTO `cities` VALUES ('157', '武强', 'wq', '11', '053300', '0318');
INSERT INTO `cities` VALUES ('158', '武邑', 'wy', '11', '053400', '0318');
INSERT INTO `cities` VALUES ('159', '阜城', 'fc', '11', '061700', '0318');
INSERT INTO `cities` VALUES ('160', '景县', 'jx', '11', '053500', '0318');
INSERT INTO `cities` VALUES ('161', '故城', 'gc', '11', '253800', '0318');
INSERT INTO `cities` VALUES ('162', '枣强', 'zq', '11', '053100', '0318');
INSERT INTO `cities` VALUES ('163', '冀县', 'jx', '11', '053200', '0318');
INSERT INTO `cities` VALUES ('164', '深州', 'sz', '11', '052800', '0318');
INSERT INTO `cities` VALUES ('165', '安平', 'ap', '11', '052600', '0318');
INSERT INTO `cities` VALUES ('166', '邢台', 'xt', '11', '054000', '0319');
INSERT INTO `cities` VALUES ('167', '临西', 'lx', '11', '057800', '0319');
INSERT INTO `cities` VALUES ('168', '内丘', 'nq', '11', '054200', '0319');
INSERT INTO `cities` VALUES ('169', '临城', 'lc', '11', '054300', '0319');
INSERT INTO `cities` VALUES ('170', '柏乡', 'bx', '11', '055400', '0319');
INSERT INTO `cities` VALUES ('171', '宁晋', 'nj', '11', '051600', '0319');
INSERT INTO `cities` VALUES ('172', '隆尧', 'ly', '11', '055300', '0319');
INSERT INTO `cities` VALUES ('173', '巨鹿', 'jl', '11', '055200', '0319');
INSERT INTO `cities` VALUES ('174', '新河', 'xh', '11', '051700', '0319');
INSERT INTO `cities` VALUES ('175', '南宫', 'ng', '11', '051800', '0319');
INSERT INTO `cities` VALUES ('176', '清河', 'qh', '11', '054800', '0319');
INSERT INTO `cities` VALUES ('177', '威县', 'wx', '11', '054700', '0319');
INSERT INTO `cities` VALUES ('178', '广宗', 'gz', '11', '054600', '0319');
INSERT INTO `cities` VALUES ('179', '平乡', 'px', '11', '054500', '0319');
INSERT INTO `cities` VALUES ('180', '南和', 'nh', '11', '054400', '0319');
INSERT INTO `cities` VALUES ('181', '任县', 'rx', '11', '055100', '0319');
INSERT INTO `cities` VALUES ('182', '沙河', 'sh', '11', '054100', '0319');
INSERT INTO `cities` VALUES ('183', '邯郸', 'hd', '11', '056000', '0310');
INSERT INTO `cities` VALUES ('184', '武安', 'wa', '11', '056300', '0310');
INSERT INTO `cities` VALUES ('185', '临漳', 'lz', '11', '056600', '0310');
INSERT INTO `cities` VALUES ('186', '磁县', 'cx', '11', '056500', '0310');
INSERT INTO `cities` VALUES ('187', '涉县', 'sx', '11', '056400', '0310');
INSERT INTO `cities` VALUES ('188', '成安', 'ca', '11', '056700', '0310');
INSERT INTO `cities` VALUES ('189', '永年', 'yn', '11', '057100', '0310');
INSERT INTO `cities` VALUES ('190', '鸡泽', 'jz', '11', '057300', '0310');
INSERT INTO `cities` VALUES ('191', '曲周', 'qz', '11', '057200', '0310');
INSERT INTO `cities` VALUES ('192', '丘县', 'qx', '11', '057400', '0310');
INSERT INTO `cities` VALUES ('193', '馆陶', 'gt', '11', '057700', '0310');
INSERT INTO `cities` VALUES ('194', '大名', 'dm', '11', '056900', '0310');
INSERT INTO `cities` VALUES ('195', '魏县', 'wx', '11', '056800', '0310');
INSERT INTO `cities` VALUES ('196', '广平', 'gp', '11', '057600', '0310');
INSERT INTO `cities` VALUES ('197', '肥乡', 'fx', '11', '057500', '0310');
INSERT INTO `cities` VALUES ('198', '秦皇岛', 'qhd', '11', '066000', '0335');
INSERT INTO `cities` VALUES ('199', '昌黎', 'cl', '11', '066600', '0335');
INSERT INTO `cities` VALUES ('200', '卢龙', 'll', '11', '066400', '0335');
INSERT INTO `cities` VALUES ('201', '抚宁', 'fn', '11', '066300', '0335');
INSERT INTO `cities` VALUES ('202', '青龙', 'ql', '11', '066500', '0335');
INSERT INTO `cities` VALUES ('203', '朔州', 'sz', '24', '038500', '0349');
INSERT INTO `cities` VALUES ('204', '怀仁', 'hr', '24', '038300', '0349');
INSERT INTO `cities` VALUES ('205', '应县', 'yx', '24', '037600', '0349');
INSERT INTO `cities` VALUES ('206', '右玉', 'yy', '24', '037200', '0349');
INSERT INTO `cities` VALUES ('207', '山阴', 'sy', '24', '038400', '0349');
INSERT INTO `cities` VALUES ('208', '忻州', 'xz', '24', '034000', '0350');
INSERT INTO `cities` VALUES ('209', '原平', 'yp', '24', '034100', '0350');
INSERT INTO `cities` VALUES ('210', '定襄', 'dx', '24', '035400', '0350');
INSERT INTO `cities` VALUES ('211', '五台', 'wt', '24', '035500', '0350');
INSERT INTO `cities` VALUES ('212', '代县', 'dx', '24', '034200', '0350');
INSERT INTO `cities` VALUES ('213', '繁峙', 'fz', '24', '034300', '0350');
INSERT INTO `cities` VALUES ('214', '宁武', 'nw', '24', '036000', '0350');
INSERT INTO `cities` VALUES ('215', '神池', 'sc', '24', '036100', '0350');
INSERT INTO `cities` VALUES ('216', '五寨', 'wz', '24', '036200', '0350');
INSERT INTO `cities` VALUES ('217', '岢岚', 'kl', '24', '036300', '0350');
INSERT INTO `cities` VALUES ('218', '河曲', 'hq', '24', '036500', '0350');
INSERT INTO `cities` VALUES ('219', '保德', 'bd', '24', '036600', '0350');
INSERT INTO `cities` VALUES ('220', '偏关', 'pg', '24', '036400', '0350');
INSERT INTO `cities` VALUES ('221', '静乐', 'jl', '24', '035100', '0350');
INSERT INTO `cities` VALUES ('222', '太原', 'ty', '24', '030000', '0351');
INSERT INTO `cities` VALUES ('223', '阳曲', 'yq', '24', '030100', '0351');
INSERT INTO `cities` VALUES ('224', '娄烦', 'lf', '24', '030300', '0351');
INSERT INTO `cities` VALUES ('225', '清徐', 'qx', '24', '030400', '0351');
INSERT INTO `cities` VALUES ('226', '古交', 'gj', '24', '030200', '0351');
INSERT INTO `cities` VALUES ('227', '大同', 'dt', '24', '037000', '0352');
INSERT INTO `cities` VALUES ('228', '大同县', 'dtx', '24', '037300', '0352');
INSERT INTO `cities` VALUES ('229', '天镇', 'tz', '24', '038200', '0352');
INSERT INTO `cities` VALUES ('230', '阳高', 'yg', '24', '038100', '0352');
INSERT INTO `cities` VALUES ('231', '浑源', 'hy', '24', '037400', '0352');
INSERT INTO `cities` VALUES ('232', '广灵', 'gl', '24', '037500', '0352');
INSERT INTO `cities` VALUES ('233', '灵丘', 'lq', '24', '034400', '0352');
INSERT INTO `cities` VALUES ('234', '左云', 'zy', '24', '037100', '0352');
INSERT INTO `cities` VALUES ('235', '阳泉', 'yq', '24', '075800', '0353');
INSERT INTO `cities` VALUES ('236', '孟县', 'mx', '24', '045100', '0353');
INSERT INTO `cities` VALUES ('237', '平定', 'pd', '24', '045200', '0353');
INSERT INTO `cities` VALUES ('238', '榆次', 'yc', '24', '030600', '0354');
INSERT INTO `cities` VALUES ('239', '灵石', 'ls', '24', '031300', '0354');
INSERT INTO `cities` VALUES ('240', '昔阳', 'xy', '24', '045300', '0354');
INSERT INTO `cities` VALUES ('241', '和顺', 'hs', '24', '032700', '0354');
INSERT INTO `cities` VALUES ('242', '左权', 'zq', '24', '032600', '0354');
INSERT INTO `cities` VALUES ('243', '榆社', 'ys', '24', '031800', '0354');
INSERT INTO `cities` VALUES ('244', '寿阳', 'sy', '24', '031700', '0354');
INSERT INTO `cities` VALUES ('245', '太谷', 'tg', '24', '030800', '0354');
INSERT INTO `cities` VALUES ('246', '祁县', 'qx', '24', '030900', '0354');
INSERT INTO `cities` VALUES ('247', '平遥', 'py', '24', '031100', '0354');
INSERT INTO `cities` VALUES ('248', '介休', 'jx', '24', '031200', '0354');
INSERT INTO `cities` VALUES ('249', '长治', 'cz', '24', '046000', '0355');
INSERT INTO `cities` VALUES ('250', '长治县', 'czx', '24', '047100', '0355');
INSERT INTO `cities` VALUES ('251', '壶关', 'hg', '24', '047300', '0355');
INSERT INTO `cities` VALUES ('252', '平顺', 'ps', '24', '047400', '0355');
INSERT INTO `cities` VALUES ('253', '黎城', 'lc', '24', '047600', '0355');
INSERT INTO `cities` VALUES ('254', '襄垣', 'xy', '24', '046200', '0355');
INSERT INTO `cities` VALUES ('255', '武乡', 'wx', '24', '046300', '0355');
INSERT INTO `cities` VALUES ('256', '沁县', 'qx', '24', '046400', '0355');
INSERT INTO `cities` VALUES ('257', '沁源', 'qy', '24', '046500', '0355');
INSERT INTO `cities` VALUES ('258', '屯留', 'tl', '24', '046100', '0355');
INSERT INTO `cities` VALUES ('259', '长子', 'cz', '24', '046600', '0355');
INSERT INTO `cities` VALUES ('260', '潞城', 'lc', '24', '047500', '0355');
INSERT INTO `cities` VALUES ('261', '晋城', 'jc', '24', '048000', '0356');
INSERT INTO `cities` VALUES ('262', '高平', 'gp', '24', '046700', '0356');
INSERT INTO `cities` VALUES ('263', '阳城', 'yc', '24', '048100', '0356');
INSERT INTO `cities` VALUES ('264', '沁水', 'qs', '24', '048200', '0356');
INSERT INTO `cities` VALUES ('265', '陵川', 'lc', '24', '048300', '0356');
INSERT INTO `cities` VALUES ('266', '临汾', 'lf', '24', '041000', '0357');
INSERT INTO `cities` VALUES ('267', '候马', 'hm', '24', '043000', '0357');
INSERT INTO `cities` VALUES ('268', '大宁', 'dn', '24', '042300', '0357');
INSERT INTO `cities` VALUES ('269', '曲沃', 'qw', '24', '043400', '0357');
INSERT INTO `cities` VALUES ('270', '翼城', 'yc', '24', '043500', '0357');
INSERT INTO `cities` VALUES ('271', '襄汾', 'xf', '24', '041500', '0357');
INSERT INTO `cities` VALUES ('272', '洪洞', 'hd', '24', '031600', '0357');
INSERT INTO `cities` VALUES ('273', '霍州', 'hz', '24', '031400', '0357');
INSERT INTO `cities` VALUES ('274', '汾西', 'fx', '24', '031500', '0357');
INSERT INTO `cities` VALUES ('275', '蒲县', 'px', '24', '041200', '0357');
INSERT INTO `cities` VALUES ('276', '隰县', 'xx', '24', '041300', '0357');
INSERT INTO `cities` VALUES ('277', '永和', 'yh', '24', '041400', '0357');
INSERT INTO `cities` VALUES ('278', '乡宁', 'xn', '24', '042100', '0357');
INSERT INTO `cities` VALUES ('279', '吉县', 'jx', '24', '042200', '0357');
INSERT INTO `cities` VALUES ('280', '安泽', 'az', '24', '042500', '0357');
INSERT INTO `cities` VALUES ('281', '浮山', 'fs', '24', '042600', '0357');
INSERT INTO `cities` VALUES ('282', '古县', 'gx', '24', '042400', '0357');
INSERT INTO `cities` VALUES ('283', '离石', 'ls', '24', '033000', '0358');
INSERT INTO `cities` VALUES ('284', '石楼', 'sl', '24', '032500', '0358');
INSERT INTO `cities` VALUES ('285', '方山', 'fs', '24', '033100', '0358');
INSERT INTO `cities` VALUES ('286', '临县', 'lx', '24', '033200', '0358');
INSERT INTO `cities` VALUES ('287', '汾阳', 'fy', '24', '033200', '0358');
INSERT INTO `cities` VALUES ('288', '文水', 'ws', '24', '032100', '0358');
INSERT INTO `cities` VALUES ('289', '交城', 'jc', '24', '030500', '0358');
INSERT INTO `cities` VALUES ('290', '孝义', 'xy', '24', '032300', '0358');
INSERT INTO `cities` VALUES ('291', '交口', 'jk', '24', '032400', '0358');
INSERT INTO `cities` VALUES ('292', '中阳', 'zy', '24', '033400', '0358');
INSERT INTO `cities` VALUES ('293', '柳林', 'll', '24', '033300', '0358');
INSERT INTO `cities` VALUES ('294', '兴县', 'xx', '24', '035300', '0358');
INSERT INTO `cities` VALUES ('295', '岚县', 'lx', '24', '035200', '0358');
INSERT INTO `cities` VALUES ('296', '运城', 'yc', '24', '044000', '0359');
INSERT INTO `cities` VALUES ('297', '芮城', 'rc', '24', '044600', '0359');
INSERT INTO `cities` VALUES ('298', '平陆', 'pl', '24', '044300', '0359');
INSERT INTO `cities` VALUES ('299', '临猗', 'ly', '24', '044100', '0359');
INSERT INTO `cities` VALUES ('300', '万荣', 'wr', '24', '044200', '0359');
INSERT INTO `cities` VALUES ('301', '稷山', 'js', '24', '043200', '0359');
INSERT INTO `cities` VALUES ('302', '河津', 'hj', '24', '043300', '0359');
INSERT INTO `cities` VALUES ('303', '新绛', 'xj', '24', '043100', '0359');
INSERT INTO `cities` VALUES ('304', '闻喜', 'wx', '24', '043800', '0359');
INSERT INTO `cities` VALUES ('305', '夏县', 'xx', '24', '044400', '0359');
INSERT INTO `cities` VALUES ('306', '永剂', 'yj', '24', '044500', '0359');
INSERT INTO `cities` VALUES ('307', '绛县', 'jx', '24', '043600', '0359');
INSERT INTO `cities` VALUES ('308', '垣曲', 'yq', '24', '043700', '0359');
INSERT INTO `cities` VALUES ('309', '商丘', 'sq', '12', '476000', '0370');
INSERT INTO `cities` VALUES ('310', '商丘县', 'sqx', '12', '476100', '0370');
INSERT INTO `cities` VALUES ('311', '虞城', 'yc', '12', '476300', '0370');
INSERT INTO `cities` VALUES ('312', '夏邑', 'xy', '12', '476400', '0370');
INSERT INTO `cities` VALUES ('313', '永城', 'yc', '12', '476600', '0370');
INSERT INTO `cities` VALUES ('314', '柘城', 'zc', '12', '476200', '0370');
INSERT INTO `cities` VALUES ('315', '宁陵', 'nl', '12', '476700', '0370');
INSERT INTO `cities` VALUES ('316', '睢县', 'sx', '12', '476900', '0370');
INSERT INTO `cities` VALUES ('317', '民权', 'mq', '12', '476800', '0370');
INSERT INTO `cities` VALUES ('318', '郑州', 'zz', '12', '450000', '0371');
INSERT INTO `cities` VALUES ('319', '上街', 'sj', '12', '451000', '0371');
INSERT INTO `cities` VALUES ('320', '荥阳', 'yy', '12', '450100', '0371');
INSERT INTO `cities` VALUES ('321', '新郑', 'xz', '12', '451100', '0371');
INSERT INTO `cities` VALUES ('322', '中牟', 'zm', '12', '451400', '0371');
INSERT INTO `cities` VALUES ('323', '新密', 'xm', '12', '452300', '0371');
INSERT INTO `cities` VALUES ('324', '登封', 'df', '12', '452400', '0371');
INSERT INTO `cities` VALUES ('325', '巩县', 'gx', '12', '451200', '0371');
INSERT INTO `cities` VALUES ('326', '安阳', 'ay', '12', '455000', '0372');
INSERT INTO `cities` VALUES ('327', '安阳县', 'ayx', '12', '455100', '0372');
INSERT INTO `cities` VALUES ('328', '汤阴', 'ty', '12', '456100', '0372');
INSERT INTO `cities` VALUES ('329', '林县', 'lx', '12', '456500', '0372');
INSERT INTO `cities` VALUES ('330', '内黄', 'nh', '12', '456300', '0372');
INSERT INTO `cities` VALUES ('331', '滑县', 'hx', '12', '456400', '0372');
INSERT INTO `cities` VALUES ('332', '新乡', 'xx', '12', '453700', '0373');
INSERT INTO `cities` VALUES ('333', '卫辉', 'wh', '12', '453100', '0373');
INSERT INTO `cities` VALUES ('334', '延津', 'yj', '12', '453200', '0373');
INSERT INTO `cities` VALUES ('335', '原阳', 'yy', '12', '453500', '0373');
INSERT INTO `cities` VALUES ('336', '获嘉', 'hj', '12', '453800', '0373');
INSERT INTO `cities` VALUES ('337', '长垣', 'cy', '12', '453400', '0373');
INSERT INTO `cities` VALUES ('338', '封丘', 'fq', '12', '453300', '0373');
INSERT INTO `cities` VALUES ('339', '辉县', 'hx', '12', '453600', '0373');
INSERT INTO `cities` VALUES ('340', '许昌', 'xc', '12', '461000', '0374');
INSERT INTO `cities` VALUES ('341', '长葛', 'cg', '12', '461500', '0374');
INSERT INTO `cities` VALUES ('342', '鄢陵', 'yl', '12', '461200', '0374');
INSERT INTO `cities` VALUES ('343', '禹州', 'yz', '12', '452500', '0374');
INSERT INTO `cities` VALUES ('344', '平顶山', 'pds', '12', '467000', '0375');
INSERT INTO `cities` VALUES ('345', '舞钢', 'wg', '12', '462500', '0375');
INSERT INTO `cities` VALUES ('346', '郏县', 'jx', '12', '467100', '0375');
INSERT INTO `cities` VALUES ('347', '襄城', 'xc', '12', '452600', '0375');
INSERT INTO `cities` VALUES ('348', '叶县', 'yx', '12', '467200', '0375');
INSERT INTO `cities` VALUES ('349', '鲁山', 'ls', '12', '467300', '0375');
INSERT INTO `cities` VALUES ('350', '宝丰', 'bf', '12', '467400', '0375');
INSERT INTO `cities` VALUES ('351', '汝州', 'rz', '12', '467500', '0375');
INSERT INTO `cities` VALUES ('352', '信阳', 'xy', '12', '464000', '0376');
INSERT INTO `cities` VALUES ('353', '信阳县', 'xyx', '12', '464100', '0376');
INSERT INTO `cities` VALUES ('354', '罗山', 'ls', '12', '464200', '0376');
INSERT INTO `cities` VALUES ('355', '卧龙', 'wl', '12', '473000', '0377');
INSERT INTO `cities` VALUES ('356', '宛城', 'wc', '12', '473100', '0377');
INSERT INTO `cities` VALUES ('357', '邓州', 'dz', '12', '474100', '0377');
INSERT INTO `cities` VALUES ('358', '西峡', 'xx', '12', '474500', '0377');
INSERT INTO `cities` VALUES ('359', '浙川', 'zc', '12', '474400', '0377');
INSERT INTO `cities` VALUES ('360', '方城', 'fc', '12', '473200', '0377');
INSERT INTO `cities` VALUES ('361', '社旗', 'sq', '12', '473300', '0377');
INSERT INTO `cities` VALUES ('362', '唐河', 'th', '12', '473400', '0377');
INSERT INTO `cities` VALUES ('363', '新野', 'xy', '12', '473500', '0377');
INSERT INTO `cities` VALUES ('364', '镇平', 'zp', '12', '474200', '0377');
INSERT INTO `cities` VALUES ('365', '南召', 'nz', '12', '474600', '0377');
INSERT INTO `cities` VALUES ('366', '桐柏', 'tb', '12', '474700', '0377');
INSERT INTO `cities` VALUES ('367', '内乡', 'nx', '12', '474300', '0377');
INSERT INTO `cities` VALUES ('368', '开封', 'kf', '12', '475000', '0378');
INSERT INTO `cities` VALUES ('369', '开封县', 'kfx', '12', '475100', '0378');
INSERT INTO `cities` VALUES ('370', '兰考', 'lk', '12', '475300', '0378');
INSERT INTO `cities` VALUES ('371', '杞县', 'qx', '12', '475200', '0378');
INSERT INTO `cities` VALUES ('372', '通许', 'tx', '12', '452200', '0378');
INSERT INTO `cities` VALUES ('373', '尉氏', 'ws', '12', '452100', '0378');
INSERT INTO `cities` VALUES ('374', '洛阳', 'ly', '12', '471000', '0379');
INSERT INTO `cities` VALUES ('375', '洛宁', 'ln', '12', '471700', '0379');
INSERT INTO `cities` VALUES ('376', '孟津', 'mj', '12', '471100', '0379');
INSERT INTO `cities` VALUES ('377', '偃师', 'ys', '12', '471900', '0379');
INSERT INTO `cities` VALUES ('378', '伊川', 'yc', '12', '471300', '0379');
INSERT INTO `cities` VALUES ('379', '宜阳', 'yy', '12', '471600', '0379');
INSERT INTO `cities` VALUES ('380', '新安', 'xa', '12', '471800', '0379');
INSERT INTO `cities` VALUES ('381', '汝阳', 'ry', '12', '471200', '0379');
INSERT INTO `cities` VALUES ('382', '嵩县', 'sx', '12', '471400', '0379');
INSERT INTO `cities` VALUES ('383', '栾川', 'lc', '12', '471500', '0379');
INSERT INTO `cities` VALUES ('384', '焦作', 'jz', '12', '454100', '0391');
INSERT INTO `cities` VALUES ('385', '修武', 'xw', '12', '454300', '0391');
INSERT INTO `cities` VALUES ('386', '武陟', 'wz', '12', '454900', '0391');
INSERT INTO `cities` VALUES ('387', '温县', 'wx', '12', '454800', '0391');
INSERT INTO `cities` VALUES ('388', '孟县', 'mx', '12', '454700', '0391');
INSERT INTO `cities` VALUES ('389', '博爱', 'ba', '12', '454400', '0391');
INSERT INTO `cities` VALUES ('390', '沁阳', 'qy', '12', '454500', '0391');
INSERT INTO `cities` VALUES ('391', '济源', 'jy', '12', '454600', '0391');
INSERT INTO `cities` VALUES ('392', '鹤壁', 'hb', '12', '456600', '0392');
INSERT INTO `cities` VALUES ('393', '浚县', 'jx', '12', '456200', '0392');
INSERT INTO `cities` VALUES ('394', '淇县', 'qx', '12', '456700', '0392');
INSERT INTO `cities` VALUES ('395', '濮阳', 'py', '12', '457000', '0393');
INSERT INTO `cities` VALUES ('396', '濮阳县', 'pyx', '12', '457002', '0393');
INSERT INTO `cities` VALUES ('397', '台前', 'tq', '12', '457600', '0393');
INSERT INTO `cities` VALUES ('398', '范县', 'fx', '12', '457500', '0393');
INSERT INTO `cities` VALUES ('399', '南乐', 'nl', '12', '457400', '0393');
INSERT INTO `cities` VALUES ('400', '清丰', 'qf', '12', '457300', '0393');
INSERT INTO `cities` VALUES ('401', '周口', 'zk', '12', '466000', '0394');
INSERT INTO `cities` VALUES ('402', '西华', 'xh', '12', '466600', '0394');
INSERT INTO `cities` VALUES ('403', '淮阳', 'hy', '12', '466700', '0394');
INSERT INTO `cities` VALUES ('404', '郸城', 'dc', '12', '477100', '0394');
INSERT INTO `cities` VALUES ('405', '鹿邑', 'ly', '12', '477200', '0394');
INSERT INTO `cities` VALUES ('406', '沈丘', 'sq', '12', '466300', '0394');
INSERT INTO `cities` VALUES ('407', '项城', 'xc', '12', '466200', '0394');
INSERT INTO `cities` VALUES ('408', '扶沟', 'fg', '12', '461300', '0394');
INSERT INTO `cities` VALUES ('409', '太康', 'tk', '12', '475400', '0394');
INSERT INTO `cities` VALUES ('410', '商水', 'ss', '12', '466100', '0394');
INSERT INTO `cities` VALUES ('411', '漯河', 'lh', '12', '462000', '0395');
INSERT INTO `cities` VALUES ('412', '临颖', 'ly', '12', '462600', '0395');
INSERT INTO `cities` VALUES ('413', '舞阳', 'wy', '12', '462400', '0395');
INSERT INTO `cities` VALUES ('414', '郾城', 'yc', '12', '462300', '0395');
INSERT INTO `cities` VALUES ('415', '驻马店', 'zmd', '12', '463000', '0396');
INSERT INTO `cities` VALUES ('416', '泌阳', 'by', '12', '463700', '0396');
INSERT INTO `cities` VALUES ('417', '遂平', 'sp', '12', '463100', '0396');
INSERT INTO `cities` VALUES ('418', '汝南', 'rn', '12', '463300', '0396');
INSERT INTO `cities` VALUES ('419', '确山', 'qs', '12', '463200', '0396');
INSERT INTO `cities` VALUES ('420', '西平', 'xp', '12', '462100', '0396');
INSERT INTO `cities` VALUES ('421', '上蔡', 'sc', '12', '463800', '0396');
INSERT INTO `cities` VALUES ('422', '平舆', 'py', '12', '463400', '0396');
INSERT INTO `cities` VALUES ('423', '新蔡', 'xc', '12', '463500', '0396');
INSERT INTO `cities` VALUES ('424', '正阳', 'zy', '12', '463600', '0396');
INSERT INTO `cities` VALUES ('425', '潢川', 'hc', '12', '465100', '0397');
INSERT INTO `cities` VALUES ('426', '光山', 'gs', '12', '465400', '0397');
INSERT INTO `cities` VALUES ('427', '新县', 'xx', '12', '465500', '0397');
INSERT INTO `cities` VALUES ('428', '淮滨', 'hb', '12', '464400', '0397');
INSERT INTO `cities` VALUES ('429', '固始', 'gs', '12', '465200', '0397');
INSERT INTO `cities` VALUES ('430', '商城', 'sc', '12', '465300', '0397');
INSERT INTO `cities` VALUES ('431', '息县', 'xx', '12', '464300', '0397');
INSERT INTO `cities` VALUES ('432', '三门峡', 'smx', '12', '472000', '0398');
INSERT INTO `cities` VALUES ('433', '卢氏', 'ls', '12', '472200', '0398');
INSERT INTO `cities` VALUES ('434', '渑池', 'sc', '12', '472400', '0398');
INSERT INTO `cities` VALUES ('435', '义马', 'ym', '12', '472300', '0398');
INSERT INTO `cities` VALUES ('436', '灵宝', 'lb', '12', '472500', '0398');
INSERT INTO `cities` VALUES ('437', '陕县', 'sx', '12', '472100', '0398');
INSERT INTO `cities` VALUES ('438', '沈阳', 'sy', '19', '110000', '024');
INSERT INTO `cities` VALUES ('439', '新民', 'xm', '19', '110300', '024');
INSERT INTO `cities` VALUES ('440', '辽中', 'lz', '19', '110200', '024');
INSERT INTO `cities` VALUES ('441', '康平', 'kp', '19', '112200', '024');
INSERT INTO `cities` VALUES ('442', '法库', 'fk', '19', '112100', '024');
INSERT INTO `cities` VALUES ('443', '铁岭', 'tl', '19', '112000', '0410');
INSERT INTO `cities` VALUES ('444', '铁岭县', 'tlx', '19', '112600', '0410');
INSERT INTO `cities` VALUES ('445', '昌图', 'ct', '19', '112500', '0410');
INSERT INTO `cities` VALUES ('446', '开原', 'ky', '19', '112300', '0410');
INSERT INTO `cities` VALUES ('447', '西丰', 'xf', '19', '112400', '0410');
INSERT INTO `cities` VALUES ('448', '铁法', 'tf', '19', '112700', '0410');
INSERT INTO `cities` VALUES ('449', '大连', 'dl', '19', '116000', '0411');
INSERT INTO `cities` VALUES ('450', '庄河', 'zh', '19', '116400', '0411');
INSERT INTO `cities` VALUES ('451', '长海', 'ch', '19', '116500', '0411');
INSERT INTO `cities` VALUES ('452', '瓦房店', 'wfd', '19', '116300', '0411');
INSERT INTO `cities` VALUES ('453', '普兰店', 'pld', '19', '116600', '0411');
INSERT INTO `cities` VALUES ('454', '金县', 'jx', '19', '116100', '0411');
INSERT INTO `cities` VALUES ('455', '新金', 'xj', '19', '116200', '0411');
INSERT INTO `cities` VALUES ('456', '鞍山', 'as', '19', '114000', '0412');
INSERT INTO `cities` VALUES ('457', '海城', 'hc', '19', '114200', '0412');
INSERT INTO `cities` VALUES ('458', '台安', 'ta', '19', '114100', '0412');
INSERT INTO `cities` VALUES ('459', '岫岩', 'xy', '19', '114300', '0412');
INSERT INTO `cities` VALUES ('460', '抚顺', 'fs', '19', '113000', '0413');
INSERT INTO `cities` VALUES ('461', '抚顺县', 'fsx', '19', '113100', '0413');
INSERT INTO `cities` VALUES ('462', '清原', 'qy', '19', '113300', '0413');
INSERT INTO `cities` VALUES ('463', '新宾', 'xb', '19', '113200', '0413');
INSERT INTO `cities` VALUES ('464', '本溪', 'bx', '19', '117000', '0414');
INSERT INTO `cities` VALUES ('465', '本溪县', 'bxx', '19', '117100', '0414');
INSERT INTO `cities` VALUES ('466', '桓仁', 'hr', '19', '117200', '0414');
INSERT INTO `cities` VALUES ('467', '丹东', 'dd', '19', '118000', '0415');
INSERT INTO `cities` VALUES ('468', '东港', 'dg', '19', '118300', '0415');
INSERT INTO `cities` VALUES ('469', '凤城', 'fc', '19', '118100', '0415');
INSERT INTO `cities` VALUES ('470', '宽甸', 'kd', '19', '118200', '0415');
INSERT INTO `cities` VALUES ('471', '锦州', 'jz', '19', '121000', '0416');
INSERT INTO `cities` VALUES ('472', '凌海', 'lh', '19', '121200', '0416');
INSERT INTO `cities` VALUES ('473', '黑山', 'hs', '19', '121400', '0416');
INSERT INTO `cities` VALUES ('474', '义县', 'yx', '19', '121100', '0416');
INSERT INTO `cities` VALUES ('475', '北宁', 'bn', '19', '121300', '0416');
INSERT INTO `cities` VALUES ('476', '营口', 'yk', '19', '115000', '0417');
INSERT INTO `cities` VALUES ('477', '盖州', 'gz', '19', '115200', '0417');
INSERT INTO `cities` VALUES ('478', '大石桥', 'dsq', '19', '115100', '0417');
INSERT INTO `cities` VALUES ('479', '阜新', 'fx', '19', '123000', '0418');
INSERT INTO `cities` VALUES ('480', '阜新县', 'fxx', '19', '123100', '0418');
INSERT INTO `cities` VALUES ('481', '彰武', 'zw', '19', '123200', '0418');
INSERT INTO `cities` VALUES ('482', '辽阳', 'ly', '19', '111000', '0419');
INSERT INTO `cities` VALUES ('483', '辽阳县', 'lyx', '19', '111200', '0419');
INSERT INTO `cities` VALUES ('484', '灯塔', 'dt', '19', '111300', '0419');
INSERT INTO `cities` VALUES ('485', '朝阳', 'cy', '19', '122000', '0421');
INSERT INTO `cities` VALUES ('486', '朝阳县', 'cyx', '19', '122600', '0421');
INSERT INTO `cities` VALUES ('487', '建平', 'jp', '19', '122400', '0421');
INSERT INTO `cities` VALUES ('488', '北票', 'bp', '19', '122100', '0421');
INSERT INTO `cities` VALUES ('489', '凌源', 'ly', '19', '122500', '0421');
INSERT INTO `cities` VALUES ('490', '喀喇沁左翼', 'klqzy', '19', '122300', '0421');
INSERT INTO `cities` VALUES ('491', '盘锦', 'pj', '19', '124000', '0427');
INSERT INTO `cities` VALUES ('492', '盘山', 'ps', '19', '124100', '0427');
INSERT INTO `cities` VALUES ('493', '大洼', 'dw', '19', '124200', '0427');
INSERT INTO `cities` VALUES ('494', '葫芦岛', 'hld', '19', '121500', '0429');
INSERT INTO `cities` VALUES ('495', '绥中', 'sz', '19', '121700', '0429');
INSERT INTO `cities` VALUES ('496', '建昌', 'jc', '19', '122200', '0429');
INSERT INTO `cities` VALUES ('497', '兴城', 'xc', '19', '121600', '0429');
INSERT INTO `cities` VALUES ('498', '长春', 'cc', '16', '130000', '0431');
INSERT INTO `cities` VALUES ('499', '双阳', 'sy', '16', '130600', '0431');
INSERT INTO `cities` VALUES ('500', '农安', 'na', '16', '130200', '0431');
INSERT INTO `cities` VALUES ('501', '九台', 'jt', '16', '130500', '0431');
INSERT INTO `cities` VALUES ('502', '德惠', 'dh', '16', '130300', '0431');
INSERT INTO `cities` VALUES ('503', '榆树', 'ys', '16', '130400', '0431');
INSERT INTO `cities` VALUES ('504', '吉林', 'jl', '16', '132000', '0432');
INSERT INTO `cities` VALUES ('505', '永吉', 'yj', '16', '132200', '0432');
INSERT INTO `cities` VALUES ('506', '磬石', 'qs', '16', '132300', '0432');
INSERT INTO `cities` VALUES ('507', '桦甸', 'hd', '16', '132400', '0432');
INSERT INTO `cities` VALUES ('508', '蛟河', 'jh', '16', '132500', '0432');
INSERT INTO `cities` VALUES ('509', '舒兰', 'sl', '16', '132600', '0432');
INSERT INTO `cities` VALUES ('510', '延吉', 'yj', '16', '133000', '0433');
INSERT INTO `cities` VALUES ('511', '汪清', 'wq', '16', '133200', '0433');
INSERT INTO `cities` VALUES ('512', '和龙', 'hl', '16', '133500', '0433');
INSERT INTO `cities` VALUES ('513', '安图', 'at', '16', '133600', '0433');
INSERT INTO `cities` VALUES ('514', '敦化', 'dh', '16', '133700', '0433');
INSERT INTO `cities` VALUES ('515', '图们', 'tm', '16', '133100', '0433');
INSERT INTO `cities` VALUES ('516', '龙井', 'lj', '16', '133400', '0433');
INSERT INTO `cities` VALUES ('517', '四平', 'sp', '16', '136000', '0434');
INSERT INTO `cities` VALUES ('518', '双辽', 'sl', '16', '136400', '0434');
INSERT INTO `cities` VALUES ('519', '犁树', 'ls', '16', '136500', '0434');
INSERT INTO `cities` VALUES ('520', '公主岭', 'gzl', '16', '136100', '0434');
INSERT INTO `cities` VALUES ('521', '通化', 'th', '16', '134000', '0435');
INSERT INTO `cities` VALUES ('522', '通化县', 'thx', '16', '134100', '0435');
INSERT INTO `cities` VALUES ('523', '集安', 'ja', '16', '134200', '0435');
INSERT INTO `cities` VALUES ('524', '白城', 'bc', '16', '137000', '0436');
INSERT INTO `cities` VALUES ('525', '通榆', 'ty', '16', '137200', '0436');
INSERT INTO `cities` VALUES ('526', '大安', 'da', '16', '131300', '0436');
INSERT INTO `cities` VALUES ('527', '洮南', 'tn', '16', '137100', '0436');
INSERT INTO `cities` VALUES ('528', '镇赉', 'zl', '16', '137300', '0436');
INSERT INTO `cities` VALUES ('529', '辽源', 'ly', '16', '136200', '0437');
INSERT INTO `cities` VALUES ('530', '东辽', 'dl', '16', '136600', '0437');
INSERT INTO `cities` VALUES ('531', '东丰', 'df', '16', '136300', '0437');
INSERT INTO `cities` VALUES ('532', '松原', 'sy', '16', '131000', '0438');
INSERT INTO `cities` VALUES ('533', '扶余', 'fy', '16', '131200', '0438');
INSERT INTO `cities` VALUES ('534', '前郭', 'qg', '16', '131100', '0438');
INSERT INTO `cities` VALUES ('535', '长岭', 'cl', '16', '131500', '0438');
INSERT INTO `cities` VALUES ('536', '乾安', 'qa', '16', '131400', '0438');
INSERT INTO `cities` VALUES ('537', '临江', 'lj', '16', '134100', '0439');
INSERT INTO `cities` VALUES ('538', '靖宇', 'jy', '16', '135200', '0439');
INSERT INTO `cities` VALUES ('539', '长白', 'cb', '16', '134400', '0439');
INSERT INTO `cities` VALUES ('540', '抚松', 'fs', '16', '134500', '0439');
INSERT INTO `cities` VALUES ('541', '江源', 'jy', '16', '134300', '0439');
INSERT INTO `cities` VALUES ('542', '珲春', 'hc', '16', '133300', '0440');
INSERT INTO `cities` VALUES ('543', '梅河口', 'mhk', '16', '135000', '0448');
INSERT INTO `cities` VALUES ('544', '柳河', 'lh', '16', '135300', '0448');
INSERT INTO `cities` VALUES ('545', '辉南', 'hn', '16', '135100', '0448');
INSERT INTO `cities` VALUES ('546', '哈尔滨', 'hrb', '13', '150000', '0451');
INSERT INTO `cities` VALUES ('547', '阿城', 'ac', '13', '150300', '0451');
INSERT INTO `cities` VALUES ('548', '通河', 'th', '13', '150900', '0451');
INSERT INTO `cities` VALUES ('549', '方正', 'fz', '13', '150800', '0451');
INSERT INTO `cities` VALUES ('550', '尚志', 'sz', '13', '150600', '0451');
INSERT INTO `cities` VALUES ('551', '延寿', 'ys', '13', '150700', '0451');
INSERT INTO `cities` VALUES ('552', '双成', 'sc', '13', '150100', '0451');
INSERT INTO `cities` VALUES ('553', '肇东', 'zd', '13', '151100', '0451');
INSERT INTO `cities` VALUES ('554', '宾县', 'bx', '13', '150400', '0451');
INSERT INTO `cities` VALUES ('555', '木兰', 'ml', '13', '151900', '0451');
INSERT INTO `cities` VALUES ('556', '五常', 'wc', '13', '150200', '0451');
INSERT INTO `cities` VALUES ('557', '巴彦', 'by', '13', '151800', '0451');
INSERT INTO `cities` VALUES ('558', '呼兰', 'hl', '13', '150500', '0451');
INSERT INTO `cities` VALUES ('559', '齐齐哈尔', 'qqhr', '13', '161000', '0452');
INSERT INTO `cities` VALUES ('560', '克山', 'ks', '13', '161600', '0452');
INSERT INTO `cities` VALUES ('561', '拜泉', 'bq', '13', '161700', '0452');
INSERT INTO `cities` VALUES ('562', '依安', 'ya', '13', '161500', '0452');
INSERT INTO `cities` VALUES ('563', '龙江', 'lj', '13', '161100', '0452');
INSERT INTO `cities` VALUES ('564', '讷河', 'nh', '13', '161300', '0452');
INSERT INTO `cities` VALUES ('565', '甘南', 'gn', '13', '162100', '0452');
INSERT INTO `cities` VALUES ('566', '富裕', 'fy', '13', '161200', '0452');
INSERT INTO `cities` VALUES ('567', '克东', 'kd', '13', '161800', '0452');
INSERT INTO `cities` VALUES ('568', '泰来', 'tl', '13', '162400', '0452');
INSERT INTO `cities` VALUES ('569', '牡丹江', 'mdj', '13', '157000', '0453');
INSERT INTO `cities` VALUES ('570', '林口', 'lk', '13', '157600', '0453');
INSERT INTO `cities` VALUES ('571', '穆棱', 'ml', '13', '157500', '0453');
INSERT INTO `cities` VALUES ('572', '东宁', 'dn', '13', '157200', '0453');
INSERT INTO `cities` VALUES ('573', '海林', 'hl', '13', '157100', '0453');
INSERT INTO `cities` VALUES ('574', '宁安', 'na', '13', '157400', '0453');
INSERT INTO `cities` VALUES ('575', '绥芬河', 'sfh', '13', '157300', '0453');
INSERT INTO `cities` VALUES ('576', '虎林', 'hl', '13', '158400', '0453');
INSERT INTO `cities` VALUES ('577', '鸡西', 'jx', '13', '158100', '0453');
INSERT INTO `cities` VALUES ('578', '鸡东', 'jd', '13', '158200', '0453');
INSERT INTO `cities` VALUES ('579', '密山', 'ms', '13', '158300', '0453');
INSERT INTO `cities` VALUES ('580', '七台河', 'qth', '13', '154600', '0453');
INSERT INTO `cities` VALUES ('581', '勃利', 'bl', '13', '154500', '0453');
INSERT INTO `cities` VALUES ('582', '佳木斯', 'jms', '13', '154000', '0454');
INSERT INTO `cities` VALUES ('583', '依兰', 'yl', '13', '154800', '0454');
INSERT INTO `cities` VALUES ('584', '汤原', 'ty', '13', '154700', '0454');
INSERT INTO `cities` VALUES ('585', '桦南', 'hn', '13', '154400', '0454');
INSERT INTO `cities` VALUES ('586', '富锦', 'fj', '13', '156100', '0454');
INSERT INTO `cities` VALUES ('587', '抚远', 'fy', '13', '156500', '0454');
INSERT INTO `cities` VALUES ('588', '同江', 'tj', '13', '156400', '0454');
INSERT INTO `cities` VALUES ('589', '桦川', 'hc', '13', '154300', '0454');
INSERT INTO `cities` VALUES ('590', '饶河', 'rh', '13', '156700', '0454');
INSERT INTO `cities` VALUES ('591', '萝北', 'lb', '13', '154200', '0454');
INSERT INTO `cities` VALUES ('592', '鹤岗', 'hg', '13', '154100', '0454');
INSERT INTO `cities` VALUES ('593', '绥滨', 'sb', '13', '156200', '0454');
INSERT INTO `cities` VALUES ('594', '双鸭山', 'sys', '13', '155100', '0454');
INSERT INTO `cities` VALUES ('595', '友谊', 'yy', '13', '156900', '0454');
INSERT INTO `cities` VALUES ('596', '宝清', 'bq', '13', '156600', '0454');
INSERT INTO `cities` VALUES ('597', '集贤', 'jx', '13', '154900', '0454');
INSERT INTO `cities` VALUES ('598', '绥化', 'sh', '13', '152000', '0458');
INSERT INTO `cities` VALUES ('599', '明水', 'ms', '13', '151700', '0458');
INSERT INTO `cities` VALUES ('600', '庆安', 'qa', '13', '152400', '0458');
INSERT INTO `cities` VALUES ('601', '海伦', 'hl', '13', '152300', '0458');
INSERT INTO `cities` VALUES ('602', '绥棱', 'sl', '13', '152200', '0458');
INSERT INTO `cities` VALUES ('603', '望奎', 'wk', '13', '152100', '0458');
INSERT INTO `cities` VALUES ('604', '兰西', 'lx', '13', '151500', '0458');
INSERT INTO `cities` VALUES ('605', '青冈', 'qg', '13', '151600', '0458');
INSERT INTO `cities` VALUES ('606', '黑河', 'hh', '13', '164300', '0456');
INSERT INTO `cities` VALUES ('607', '北安', 'ba', '13', '164000', '0456');
INSERT INTO `cities` VALUES ('608', '孙吴', 'sw', '13', '164200', '0456');
INSERT INTO `cities` VALUES ('609', '逊克', 'xk', '13', '164400', '0456');
INSERT INTO `cities` VALUES ('610', '德都', 'dd', '13', '164100', '0456');
INSERT INTO `cities` VALUES ('611', '嫩江', 'nj', '13', '161400', '0456');
INSERT INTO `cities` VALUES ('612', '五大连池', 'wdlc', '13', '164500', '0456');
INSERT INTO `cities` VALUES ('613', '加格达奇', 'jgdq', '13', '165000', '0457');
INSERT INTO `cities` VALUES ('614', '塔河', 'th', '13', '165200', '0457');
INSERT INTO `cities` VALUES ('615', '呼玛', 'hm', '13', '165100', '0457');
INSERT INTO `cities` VALUES ('616', '漠河', 'mh', '13', '165300', '0457');
INSERT INTO `cities` VALUES ('617', '伊春', 'yc', '13', '153000', '0458');
INSERT INTO `cities` VALUES ('618', '嘉荫', 'jy', '13', '153200', '0458');
INSERT INTO `cities` VALUES ('619', '铁力', 'tl', '13', '152500', '0458');
INSERT INTO `cities` VALUES ('620', '大庆', 'dq', '13', '163000', '0459');
INSERT INTO `cities` VALUES ('621', '林甸', 'ld', '13', '162300', '0459');
INSERT INTO `cities` VALUES ('622', '安达', 'ad', '13', '151400', '0459');
INSERT INTO `cities` VALUES ('623', '肇州', 'zz', '13', '151200', '0459');
INSERT INTO `cities` VALUES ('624', '杜尔伯特', 'drbt', '13', '162000', '0459');
INSERT INTO `cities` VALUES ('625', '肇源', 'zy', '13', '151300', '0459');
INSERT INTO `cities` VALUES ('626', '海拉尔', 'hlr', '20', '021000', '0470');
INSERT INTO `cities` VALUES ('627', '鄂温克', 'ewk', '20', '021100', '0470');
INSERT INTO `cities` VALUES ('628', '阿荣旗', 'arq', '20', '162750', '0470');
INSERT INTO `cities` VALUES ('629', '牙克石', 'yks', '20', '022100', '0470');
INSERT INTO `cities` VALUES ('630', '扎兰屯', 'zlt', '20', '162650', '0470');
INSERT INTO `cities` VALUES ('631', '鄂伦春', 'elc', '20', '022400', '0470');
INSERT INTO `cities` VALUES ('632', '陈巴尔虎旗', 'cbrhq', '20', '021500', '0470');
INSERT INTO `cities` VALUES ('633', '新巴尔虎左旗', 'xbrhzq', '20', '021200', '0470');
INSERT INTO `cities` VALUES ('634', '新巴尔虎右旗', 'xbrhyq', '20', '021300', '0470');
INSERT INTO `cities` VALUES ('635', '根河', 'gh', '20', '022300', '0470');
INSERT INTO `cities` VALUES ('636', '额尔古纳右旗', 'ergnyq', '20', '022200', '0470');
INSERT INTO `cities` VALUES ('637', '莫力达瓦旗', 'mldwq', '20', '162800', '0470');
INSERT INTO `cities` VALUES ('638', '满洲里', 'mzl', '20', '021400', '0470');
INSERT INTO `cities` VALUES ('639', '呼和浩特', 'hhht', '20', '010000', '0471');
INSERT INTO `cities` VALUES ('640', '托克托', 'tkt', '20', '010200', '0471');
INSERT INTO `cities` VALUES ('641', '土默特左旗', 'tmtzq', '20', '010100', '0471');
INSERT INTO `cities` VALUES ('642', '和林格尔', 'hlgr', '20', '011500', '0471');
INSERT INTO `cities` VALUES ('643', '武川', 'wc', '20', '011700', '0471');
INSERT INTO `cities` VALUES ('644', '清水河', 'qsh', '20', '011600', '0471');
INSERT INTO `cities` VALUES ('645', '包头', 'bt', '20', '014000', '0472');
INSERT INTO `cities` VALUES ('646', '固阳', 'gy', '20', '014200', '0472');
INSERT INTO `cities` VALUES ('647', '土默特右旗', 'tmtyq', '20', '014100', '0472');
INSERT INTO `cities` VALUES ('648', '白云鄂博', 'byeb', '20', '014080', '0472');
INSERT INTO `cities` VALUES ('649', '达茂旗', 'dmq', '20', '014300', '0472');
INSERT INTO `cities` VALUES ('650', '乌海', 'wh', '20', '016000', '0473');
INSERT INTO `cities` VALUES ('651', '集宁', 'jn', '20', '012000', '0474');
INSERT INTO `cities` VALUES ('652', '四子王旗', 'szwq', '20', '011800', '0474');
INSERT INTO `cities` VALUES ('653', '化德', 'hd', '20', '013300', '0474');
INSERT INTO `cities` VALUES ('654', '丰镇', 'fz', '20', '012100', '0474');
INSERT INTO `cities` VALUES ('655', '卓资', 'zz', '20', '012300', '0474');
INSERT INTO `cities` VALUES ('656', '商都', 'sd', '20', '013400', '0474');
INSERT INTO `cities` VALUES ('657', '兴和', 'xh', '20', '013600', '0474');
INSERT INTO `cities` VALUES ('658', '凉城', 'lc', '20', '013700', '0474');
INSERT INTO `cities` VALUES ('659', '察哈尔右翼前旗', 'chryyqq', '20', '012200', '0474');
INSERT INTO `cities` VALUES ('660', '察哈尔右翼中旗', 'chryyzq', '20', '013500', '0474');
INSERT INTO `cities` VALUES ('661', '察哈尔右翼后旗', 'chryyhq', '20', '012400', '0474');
INSERT INTO `cities` VALUES ('662', '通辽', 'tl', '20', '028000', '0475');
INSERT INTO `cities` VALUES ('663', '开鲁', 'kl', '20', '028400', '0475');
INSERT INTO `cities` VALUES ('664', '库伦旗', 'klq', '20', '028200', '0475');
INSERT INTO `cities` VALUES ('665', '奈曼旗', 'nmq', '20', '028300', '0475');
INSERT INTO `cities` VALUES ('666', '扎鲁特旗', 'zltq', '20', '029100', '0475');
INSERT INTO `cities` VALUES ('667', '科尔沁左翼中旗', 'krqzyzq', '20', '029300', '0475');
INSERT INTO `cities` VALUES ('668', '科尔沁左翼后旗', 'krqzyhq', '20', '028100', '0475');
INSERT INTO `cities` VALUES ('669', '霍林郭勒', 'hlgl', '20', '029200', '0475');
INSERT INTO `cities` VALUES ('670', '赤峰', 'cf', '20', '024000', '0476');
INSERT INTO `cities` VALUES ('671', '阿鲁科尔沁', 'alkrq', '20', '025500', '0476');
INSERT INTO `cities` VALUES ('672', '宁城', 'nc', '20', '024200', '0476');
INSERT INTO `cities` VALUES ('673', '敖汉旗', 'ahq', '20', '024300', '0476');
INSERT INTO `cities` VALUES ('674', '翁牛特旗', 'wntq', '20', '024500', '0476');
INSERT INTO `cities` VALUES ('675', '巴林左旗', 'blzq', '20', '025400', '0476');
INSERT INTO `cities` VALUES ('676', '巴林右旗', 'blyq', '20', '025100', '0476');
INSERT INTO `cities` VALUES ('677', '林西', 'lx', '20', '025200', '0476');
INSERT INTO `cities` VALUES ('678', '克什克腾旗', 'ksktq', '20', '025300', '0476');
INSERT INTO `cities` VALUES ('679', '喀喇沁旗', 'klqq', '20', '024400', '0476');
INSERT INTO `cities` VALUES ('680', '东胜', 'ds', '20', '017000', '0477');
INSERT INTO `cities` VALUES ('681', '达拉特旗', 'dltq', '20', '014300', '0477');
INSERT INTO `cities` VALUES ('682', '伊金霍洛旗', 'yjhlq', '20', '017200', '0477');
INSERT INTO `cities` VALUES ('683', '准格尔旗', 'zgrq', '20', '017100', '0477');
INSERT INTO `cities` VALUES ('684', '杭棉旗', 'hmq', '20', '017400', '0477');
INSERT INTO `cities` VALUES ('685', '乌审', 'ws', '20', '017300', '0477');
INSERT INTO `cities` VALUES ('686', '鄂托克旗', 'etkq', '20', '016100', '0477');
INSERT INTO `cities` VALUES ('687', '鄂托克前旗', 'etkqq', '20', '016200', '0477');
INSERT INTO `cities` VALUES ('688', '临河', 'lh', '20', '015000', '0478');
INSERT INTO `cities` VALUES ('689', '五原', 'wy', '20', '015100', '0478');
INSERT INTO `cities` VALUES ('690', '磴口', 'dk', '20', '015200', '0478');
INSERT INTO `cities` VALUES ('691', '乌拉特前镇', 'wltqz', '20', '014400', '0478');
INSERT INTO `cities` VALUES ('692', '乌拉特中镇', 'wltzz', '20', '015300', '0478');
INSERT INTO `cities` VALUES ('693', '乌拉特后镇', 'wlthz', '20', '015500', '0478');
INSERT INTO `cities` VALUES ('694', '杭锦后旗', 'hjhq', '20', '015400', '0478');
INSERT INTO `cities` VALUES ('695', '锡林浩特', 'xlht', '20', '026000', '0479');
INSERT INTO `cities` VALUES ('696', '二连浩特', 'elht', '20', '012600', '0479');
INSERT INTO `cities` VALUES ('697', '多伦', 'dl', '20', '027300', '0479');
INSERT INTO `cities` VALUES ('698', '太仆寺旗', 'tpsq', '20', '027000', '0479');
INSERT INTO `cities` VALUES ('699', '苏尼特左旗', 'sntzq', '20', '013100', '0479');
INSERT INTO `cities` VALUES ('700', '苏尼特右旗', 'sntyq', '20', '012500', '0479');
INSERT INTO `cities` VALUES ('701', '镶黄旗', 'xhq', '20', '013200', '0479');
INSERT INTO `cities` VALUES ('702', '东乌珠穆沁旗', 'dwzmqq', '20', '026300', '0479');
INSERT INTO `cities` VALUES ('703', '西乌珠穆沁旗', 'xwzmqq', '20', '026200', '0479');
INSERT INTO `cities` VALUES ('704', '阿马嗄旗', 'amsq', '20', '026100', '0479');
INSERT INTO `cities` VALUES ('705', '正镶白旗', 'zxbq', '20', '027100', '0479');
INSERT INTO `cities` VALUES ('706', '正蓝旗', 'zlq', '20', '027200', '0479');
INSERT INTO `cities` VALUES ('707', '乌兰浩特', 'wlht', '20', '137400', '0482');
INSERT INTO `cities` VALUES ('708', '扎赉特旗', 'zltq', '20', '137600', '0482');
INSERT INTO `cities` VALUES ('709', '突泉', 'tq', '20', '037500', '0482');
INSERT INTO `cities` VALUES ('710', '科右中旗', 'kyzq', '20', '029400', '0482');
INSERT INTO `cities` VALUES ('711', '阿拉善左旗', 'alszq', '20', '750300', '04831');
INSERT INTO `cities` VALUES ('712', '阿拉善右旗', 'alsyq', '20', '737300', '04887');
INSERT INTO `cities` VALUES ('713', '额济纳旗', 'ejnq', '20', '735400', '04888');
INSERT INTO `cities` VALUES ('714', '南京', 'nj', '17', '210000', '025');
INSERT INTO `cities` VALUES ('715', '江浦', 'jp', '17', '211800', '025');
INSERT INTO `cities` VALUES ('716', '六合', 'lh', '17', '211500', '025');
INSERT INTO `cities` VALUES ('717', '江宁', 'jn', '17', '211100', '025');
INSERT INTO `cities` VALUES ('718', '高淳', 'gc', '17', '211300', '025');
INSERT INTO `cities` VALUES ('719', '溧水', 'ls', '17', '211200', '025');
INSERT INTO `cities` VALUES ('720', '无锡', 'wx', '17', '214000', '0510');
INSERT INTO `cities` VALUES ('721', '江阴', 'jy', '17', '214400', '0510');
INSERT INTO `cities` VALUES ('722', '宜兴', 'yx', '17', '214200', '0510');
INSERT INTO `cities` VALUES ('723', '锡山', 'xs', '17', '214100', '0510');
INSERT INTO `cities` VALUES ('724', '镇江', 'zj', '17', '212000', '0511');
INSERT INTO `cities` VALUES ('725', '丹徒', 'dt', '17', '212100', '0511');
INSERT INTO `cities` VALUES ('726', '丹阳', 'dy', '17', '212300', '0511');
INSERT INTO `cities` VALUES ('727', '句容', 'jr', '17', '212400', '0511');
INSERT INTO `cities` VALUES ('728', '扬中', 'yz', '17', '212200', '0511');
INSERT INTO `cities` VALUES ('729', '苏州', 'sz', '17', '215000', '0512');
INSERT INTO `cities` VALUES ('730', '吴江', 'wj', '17', '215200', '0512');
INSERT INTO `cities` VALUES ('731', '吴县', 'wx', '17', '215100', '0512');
INSERT INTO `cities` VALUES ('732', '南通', 'nt', '17', '226300', '0513');
INSERT INTO `cities` VALUES ('733', '如东', 'rd', '17', '226400', '0513');
INSERT INTO `cities` VALUES ('734', '如皋', 'rg', '17', '226500', '0513');
INSERT INTO `cities` VALUES ('735', '通州市', 'tzs', '17', '226300', '0513');
INSERT INTO `cities` VALUES ('736', '海门', 'hm', '17', '226100', '0513');
INSERT INTO `cities` VALUES ('737', '启东', 'qd', '17', '226200', '0513');
INSERT INTO `cities` VALUES ('738', '海安', 'ha', '17', '226600', '0513');
INSERT INTO `cities` VALUES ('739', '扬州', 'yz', '17', '225000', '0514');
INSERT INTO `cities` VALUES ('740', '江都', 'jd', '17', '225200', '0514');
INSERT INTO `cities` VALUES ('741', '邗江', 'hj', '17', '225100', '0514');
INSERT INTO `cities` VALUES ('742', '仪征', 'yz', '17', '211400', '0514');
INSERT INTO `cities` VALUES ('743', '高邮', 'gy', '17', '225600', '0514');
INSERT INTO `cities` VALUES ('744', '宝应', 'by', '17', '225800', '0514');
INSERT INTO `cities` VALUES ('745', '盐城', 'yc', '17', '224000', '0515');
INSERT INTO `cities` VALUES ('746', '响水', 'xs', '17', '224600', '0515');
INSERT INTO `cities` VALUES ('747', '滨海', 'bh', '17', '224500', '0515');
INSERT INTO `cities` VALUES ('748', '阜宁', 'fn', '17', '224400', '0515');
INSERT INTO `cities` VALUES ('749', '射阳', 'sy', '17', '224300', '0515');
INSERT INTO `cities` VALUES ('750', '建湖', 'jh', '17', '224700', '0515');
INSERT INTO `cities` VALUES ('751', '大丰', 'df', '17', '224100', '0515');
INSERT INTO `cities` VALUES ('752', '东台', 'dt', '17', '224200', '0515');
INSERT INTO `cities` VALUES ('753', '徐州', 'xz', '17', '221000', '0516');
INSERT INTO `cities` VALUES ('754', '铜山', 'ts', '17', '221100', '0516');
INSERT INTO `cities` VALUES ('755', '丰县', 'fx', '17', '221700', '0516');
INSERT INTO `cities` VALUES ('756', '沛县', 'px', '17', '221600', '0516');
INSERT INTO `cities` VALUES ('757', '邳县', 'px', '17', '221300', '0516');
INSERT INTO `cities` VALUES ('758', '新沂', 'xy', '17', '221400', '0516');
INSERT INTO `cities` VALUES ('759', '睢宁', 'sn', '17', '221200', '0516');
INSERT INTO `cities` VALUES ('760', '淮阴', 'hy', '17', '223000', '0517');
INSERT INTO `cities` VALUES ('761', '淮阴县', 'hyx', '17', '223300', '0517');
INSERT INTO `cities` VALUES ('762', '淮安', 'ha', '17', '223200', '0517');
INSERT INTO `cities` VALUES ('763', '洪泽', 'hz', '17', '223100', '0517');
INSERT INTO `cities` VALUES ('764', '金湖', 'jh', '17', '211600', '0517');
INSERT INTO `cities` VALUES ('765', '涟水', 'ls', '17', '223400', '0517');
INSERT INTO `cities` VALUES ('766', '盱眙', 'xy', '17', '211700', '0517');
INSERT INTO `cities` VALUES ('767', '连云港', 'lyg', '17', '222000', '0518');
INSERT INTO `cities` VALUES ('768', '东海', 'dh', '17', '222300', '0518');
INSERT INTO `cities` VALUES ('769', '赣榆', 'gy', '17', '222100', '0518');
INSERT INTO `cities` VALUES ('770', '灌云', 'gy', '17', '222200', '0518');
INSERT INTO `cities` VALUES ('771', '灌南', 'gn', '17', '223500', '0518');
INSERT INTO `cities` VALUES ('772', '常州', 'cz', '17', '213000', '0519');
INSERT INTO `cities` VALUES ('773', '武进', 'wj', '17', '213100', '0519');
INSERT INTO `cities` VALUES ('774', '金坛', 'jt', '17', '213200', '0519');
INSERT INTO `cities` VALUES ('775', '溧阳', 'ly', '17', '213300', '0519');
INSERT INTO `cities` VALUES ('776', '张家港', 'zjg', '17', '215600', '0520');
INSERT INTO `cities` VALUES ('777', '常熟', 'cs', '17', '215500', '0520');
INSERT INTO `cities` VALUES ('778', '昆山', 'ks', '17', '215300', '0520');
INSERT INTO `cities` VALUES ('779', '太仓', 'tc', '17', '215400', '0520');
INSERT INTO `cities` VALUES ('780', '泰州', 'tz', '17', '225300', '0523');
INSERT INTO `cities` VALUES ('781', '靖江', 'jj', '17', '214500', '0523');
INSERT INTO `cities` VALUES ('782', '泰兴', 'tx', '17', '225400', '0523');
INSERT INTO `cities` VALUES ('783', '姜堰', 'jy', '17', '225500', '0523');
INSERT INTO `cities` VALUES ('784', '兴化', 'xh', '17', '225700', '0523');
INSERT INTO `cities` VALUES ('785', '沐阳', 'my', '17', '223600', '0527');
INSERT INTO `cities` VALUES ('786', '宿迁', 'sq', '17', '223800', '0527');
INSERT INTO `cities` VALUES ('787', '泗阳', 'sy', '17', '223700', '0527');
INSERT INTO `cities` VALUES ('788', '泗洪', 'sh', '17', '211900', '0527');
INSERT INTO `cities` VALUES ('789', '南京', 'nj', '17', '210000', '025');
INSERT INTO `cities` VALUES ('790', '江浦', 'jp', '17', '211800', '025');
INSERT INTO `cities` VALUES ('791', '六合', 'lh', '17', '211500', '025');
INSERT INTO `cities` VALUES ('792', '江宁', 'jn', '17', '211100', '025');
INSERT INTO `cities` VALUES ('793', '高淳', 'gc', '17', '211300', '025');
INSERT INTO `cities` VALUES ('794', '溧水', 'ls', '17', '211200', '025');
INSERT INTO `cities` VALUES ('795', '无锡', 'wx', '17', '214000', '0510');
INSERT INTO `cities` VALUES ('796', '江阴', 'jy', '17', '214400', '0510');
INSERT INTO `cities` VALUES ('797', '宜兴', 'yx', '17', '214200', '0510');
INSERT INTO `cities` VALUES ('798', '锡山', 'xs', '17', '214100', '0510');
INSERT INTO `cities` VALUES ('799', '镇江', 'zj', '17', '212000', '0511');
INSERT INTO `cities` VALUES ('800', '丹徒', 'dt', '17', '212100', '0511');
INSERT INTO `cities` VALUES ('801', '丹阳', 'dy', '17', '212300', '0511');
INSERT INTO `cities` VALUES ('802', '句容', 'jr', '17', '212400', '0511');
INSERT INTO `cities` VALUES ('803', '扬中', 'yz', '17', '212200', '0511');
INSERT INTO `cities` VALUES ('804', '苏州', 'sz', '17', '215000', '0512');
INSERT INTO `cities` VALUES ('805', '吴江', 'wj', '17', '215200', '0512');
INSERT INTO `cities` VALUES ('806', '吴县', 'wx', '17', '215100', '0512');
INSERT INTO `cities` VALUES ('807', '南通', 'nt', '17', '226300', '0513');
INSERT INTO `cities` VALUES ('808', '如东', 'rd', '17', '226400', '0513');
INSERT INTO `cities` VALUES ('809', '如皋', 'rg', '17', '226500', '0513');
INSERT INTO `cities` VALUES ('810', '通州市', 'tzs', '17', '226300', '0513');
INSERT INTO `cities` VALUES ('811', '海门', 'hm', '17', '226100', '0513');
INSERT INTO `cities` VALUES ('812', '启东', 'qd', '17', '226200', '0513');
INSERT INTO `cities` VALUES ('813', '海安', 'ha', '17', '226600', '0513');
INSERT INTO `cities` VALUES ('814', '扬州', 'yz', '17', '225000', '0514');
INSERT INTO `cities` VALUES ('815', '江都', 'jd', '17', '225200', '0514');
INSERT INTO `cities` VALUES ('816', '邗江', 'hj', '17', '225100', '0514');
INSERT INTO `cities` VALUES ('817', '仪征', 'yz', '17', '211400', '0514');
INSERT INTO `cities` VALUES ('818', '高邮', 'gy', '17', '225600', '0514');
INSERT INTO `cities` VALUES ('819', '宝应', 'by', '17', '225800', '0514');
INSERT INTO `cities` VALUES ('820', '盐城', 'yc', '17', '224000', '0515');
INSERT INTO `cities` VALUES ('821', '响水', 'xs', '17', '224600', '0515');
INSERT INTO `cities` VALUES ('822', '滨海', 'bh', '17', '224500', '0515');
INSERT INTO `cities` VALUES ('823', '阜宁', 'fn', '17', '224400', '0515');
INSERT INTO `cities` VALUES ('824', '射阳', 'sy', '17', '224300', '0515');
INSERT INTO `cities` VALUES ('825', '建湖', 'jh', '17', '224700', '0515');
INSERT INTO `cities` VALUES ('826', '大丰', 'df', '17', '224100', '0515');
INSERT INTO `cities` VALUES ('827', '东台', 'dt', '17', '224200', '0515');
INSERT INTO `cities` VALUES ('828', '徐州', 'xz', '17', '221000', '0516');
INSERT INTO `cities` VALUES ('829', '铜山', 'ts', '17', '221100', '0516');
INSERT INTO `cities` VALUES ('830', '丰县', 'fx', '17', '221700', '0516');
INSERT INTO `cities` VALUES ('831', '沛县', 'px', '17', '221600', '0516');
INSERT INTO `cities` VALUES ('832', '邳县', 'px', '17', '221300', '0516');
INSERT INTO `cities` VALUES ('833', '新沂', 'xy', '17', '221400', '0516');
INSERT INTO `cities` VALUES ('834', '睢宁', 'sn', '17', '221200', '0516');
INSERT INTO `cities` VALUES ('835', '淮阴', 'hy', '17', '223000', '0517');
INSERT INTO `cities` VALUES ('836', '淮阴县', 'hyx', '17', '223300', '0517');
INSERT INTO `cities` VALUES ('837', '淮安', 'ha', '17', '223200', '0517');
INSERT INTO `cities` VALUES ('838', '洪泽', 'hz', '17', '223100', '0517');
INSERT INTO `cities` VALUES ('839', '金湖', 'jh', '17', '211600', '0517');
INSERT INTO `cities` VALUES ('840', '涟水', 'ls', '17', '223400', '0517');
INSERT INTO `cities` VALUES ('841', '盱眙', 'xy', '17', '211700', '0517');
INSERT INTO `cities` VALUES ('842', '连云港', 'lyg', '17', '222000', '0518');
INSERT INTO `cities` VALUES ('843', '东海', 'dh', '17', '222300', '0518');
INSERT INTO `cities` VALUES ('844', '赣榆', 'gy', '17', '222100', '0518');
INSERT INTO `cities` VALUES ('845', '灌云', 'gy', '17', '222200', '0518');
INSERT INTO `cities` VALUES ('846', '灌南', 'gn', '17', '223500', '0518');
INSERT INTO `cities` VALUES ('847', '常州', 'cz', '17', '213000', '0519');
INSERT INTO `cities` VALUES ('848', '武进', 'wj', '17', '213100', '0519');
INSERT INTO `cities` VALUES ('849', '金坛', 'jt', '17', '213200', '0519');
INSERT INTO `cities` VALUES ('850', '溧阳', 'ly', '17', '213300', '0519');
INSERT INTO `cities` VALUES ('851', '张家港', 'zjg', '17', '215600', '0520');
INSERT INTO `cities` VALUES ('852', '常熟', 'cs', '17', '215500', '0520');
INSERT INTO `cities` VALUES ('853', '昆山', 'ks', '17', '215300', '0520');
INSERT INTO `cities` VALUES ('854', '太仓', 'tc', '17', '215400', '0520');
INSERT INTO `cities` VALUES ('855', '泰州', 'tz', '17', '225300', '0523');
INSERT INTO `cities` VALUES ('856', '靖江', 'jj', '17', '214500', '0523');
INSERT INTO `cities` VALUES ('857', '泰兴', 'tx', '17', '225400', '0523');
INSERT INTO `cities` VALUES ('858', '姜堰', 'jy', '17', '225500', '0523');
INSERT INTO `cities` VALUES ('859', '兴化', 'xh', '17', '225700', '0523');
INSERT INTO `cities` VALUES ('860', '沐阳', 'my', '17', '223600', '0527');
INSERT INTO `cities` VALUES ('861', '宿迁', 'sq', '17', '223800', '0527');
INSERT INTO `cities` VALUES ('862', '泗阳', 'sy', '17', '223700', '0527');
INSERT INTO `cities` VALUES ('863', '泗洪', 'sh', '17', '211900', '0527');
INSERT INTO `cities` VALUES ('864', '南京', 'nj', '17', '210000', '025');
INSERT INTO `cities` VALUES ('865', '江浦', 'jp', '17', '211800', '025');
INSERT INTO `cities` VALUES ('866', '六合', 'lh', '17', '211500', '025');
INSERT INTO `cities` VALUES ('867', '江宁', 'jn', '17', '211100', '025');
INSERT INTO `cities` VALUES ('868', '高淳', 'gc', '17', '211300', '025');
INSERT INTO `cities` VALUES ('869', '溧水', 'ls', '17', '211200', '025');
INSERT INTO `cities` VALUES ('870', '无锡', 'wx', '17', '214000', '0510');
INSERT INTO `cities` VALUES ('871', '江阴', 'jy', '17', '214400', '0510');
INSERT INTO `cities` VALUES ('872', '宜兴', 'yx', '17', '214200', '0510');
INSERT INTO `cities` VALUES ('873', '锡山', 'xs', '17', '214100', '0510');
INSERT INTO `cities` VALUES ('874', '镇江', 'zj', '17', '212000', '0511');
INSERT INTO `cities` VALUES ('875', '丹徒', 'dt', '17', '212100', '0511');
INSERT INTO `cities` VALUES ('876', '丹阳', 'dy', '17', '212300', '0511');
INSERT INTO `cities` VALUES ('877', '句容', 'jr', '17', '212400', '0511');
INSERT INTO `cities` VALUES ('878', '扬中', 'yz', '17', '212200', '0511');
INSERT INTO `cities` VALUES ('879', '苏州', 'sz', '17', '215000', '0512');
INSERT INTO `cities` VALUES ('880', '吴江', 'wj', '17', '215200', '0512');
INSERT INTO `cities` VALUES ('881', '吴县', 'wx', '17', '215100', '0512');
INSERT INTO `cities` VALUES ('882', '南通', 'nt', '17', '226300', '0513');
INSERT INTO `cities` VALUES ('883', '如东', 'rd', '17', '226400', '0513');
INSERT INTO `cities` VALUES ('884', '如皋', 'rg', '17', '226500', '0513');
INSERT INTO `cities` VALUES ('885', '通州市', 'tzs', '17', '226300', '0513');
INSERT INTO `cities` VALUES ('886', '海门', 'hm', '17', '226100', '0513');
INSERT INTO `cities` VALUES ('887', '启东', 'qd', '17', '226200', '0513');
INSERT INTO `cities` VALUES ('888', '海安', 'ha', '17', '226600', '0513');
INSERT INTO `cities` VALUES ('889', '扬州', 'yz', '17', '225000', '0514');
INSERT INTO `cities` VALUES ('890', '江都', 'jd', '17', '225200', '0514');
INSERT INTO `cities` VALUES ('891', '邗江', 'hj', '17', '225100', '0514');
INSERT INTO `cities` VALUES ('892', '仪征', 'yz', '17', '211400', '0514');
INSERT INTO `cities` VALUES ('893', '高邮', 'gy', '17', '225600', '0514');
INSERT INTO `cities` VALUES ('894', '宝应', 'by', '17', '225800', '0514');
INSERT INTO `cities` VALUES ('895', '盐城', 'yc', '17', '224000', '0515');
INSERT INTO `cities` VALUES ('896', '响水', 'xs', '17', '224600', '0515');
INSERT INTO `cities` VALUES ('897', '滨海', 'bh', '17', '224500', '0515');
INSERT INTO `cities` VALUES ('898', '阜宁', 'fn', '17', '224400', '0515');
INSERT INTO `cities` VALUES ('899', '射阳', 'sy', '17', '224300', '0515');
INSERT INTO `cities` VALUES ('900', '建湖', 'jh', '17', '224700', '0515');
INSERT INTO `cities` VALUES ('901', '大丰', 'df', '17', '224100', '0515');
INSERT INTO `cities` VALUES ('902', '东台', 'dt', '17', '224200', '0515');
INSERT INTO `cities` VALUES ('903', '徐州', 'xz', '17', '221000', '0516');
INSERT INTO `cities` VALUES ('904', '铜山', 'ts', '17', '221100', '0516');
INSERT INTO `cities` VALUES ('905', '丰县', 'fx', '17', '221700', '0516');
INSERT INTO `cities` VALUES ('906', '沛县', 'px', '17', '221600', '0516');
INSERT INTO `cities` VALUES ('907', '邳县', 'px', '17', '221300', '0516');
INSERT INTO `cities` VALUES ('908', '新沂', 'xy', '17', '221400', '0516');
INSERT INTO `cities` VALUES ('909', '睢宁', 'sn', '17', '221200', '0516');
INSERT INTO `cities` VALUES ('910', '淮阴', 'hy', '17', '223000', '0517');
INSERT INTO `cities` VALUES ('911', '淮阴县', 'hyx', '17', '223300', '0517');
INSERT INTO `cities` VALUES ('912', '淮安', 'ha', '17', '223200', '0517');
INSERT INTO `cities` VALUES ('913', '洪泽', 'hz', '17', '223100', '0517');
INSERT INTO `cities` VALUES ('914', '金湖', 'jh', '17', '211600', '0517');
INSERT INTO `cities` VALUES ('915', '涟水', 'ls', '17', '223400', '0517');
INSERT INTO `cities` VALUES ('916', '盱眙', 'xy', '17', '211700', '0517');
INSERT INTO `cities` VALUES ('917', '连云港', 'lyg', '17', '222000', '0518');
INSERT INTO `cities` VALUES ('918', '东海', 'dh', '17', '222300', '0518');
INSERT INTO `cities` VALUES ('919', '赣榆', 'gy', '17', '222100', '0518');
INSERT INTO `cities` VALUES ('920', '灌云', 'gy', '17', '222200', '0518');
INSERT INTO `cities` VALUES ('921', '灌南', 'gn', '17', '223500', '0518');
INSERT INTO `cities` VALUES ('922', '常州', 'cz', '17', '213000', '0519');
INSERT INTO `cities` VALUES ('923', '武进', 'wj', '17', '213100', '0519');
INSERT INTO `cities` VALUES ('924', '金坛', 'jt', '17', '213200', '0519');
INSERT INTO `cities` VALUES ('925', '溧阳', 'ly', '17', '213300', '0519');
INSERT INTO `cities` VALUES ('926', '张家港', 'zjg', '17', '215600', '0520');
INSERT INTO `cities` VALUES ('927', '常熟', 'cs', '17', '215500', '0520');
INSERT INTO `cities` VALUES ('928', '昆山', 'ks', '17', '215300', '0520');
INSERT INTO `cities` VALUES ('929', '太仓', 'tc', '17', '215400', '0520');
INSERT INTO `cities` VALUES ('930', '泰州', 'tz', '17', '225300', '0523');
INSERT INTO `cities` VALUES ('931', '靖江', 'jj', '17', '214500', '0523');
INSERT INTO `cities` VALUES ('932', '泰兴', 'tx', '17', '225400', '0523');
INSERT INTO `cities` VALUES ('933', '姜堰', 'jy', '17', '225500', '0523');
INSERT INTO `cities` VALUES ('934', '兴化', 'xh', '17', '225700', '0523');
INSERT INTO `cities` VALUES ('935', '沐阳', 'my', '17', '223600', '0527');
INSERT INTO `cities` VALUES ('936', '宿迁', 'sq', '17', '223800', '0527');
INSERT INTO `cities` VALUES ('937', '泗阳', 'sy', '17', '223700', '0527');
INSERT INTO `cities` VALUES ('938', '泗洪', 'sh', '17', '211900', '0527');
INSERT INTO `cities` VALUES ('939', '荷泽', 'hz', '23', '274000', '0530');
INSERT INTO `cities` VALUES ('940', '巨野', 'jy', '23', '274900', '0530');
INSERT INTO `cities` VALUES ('941', '定陶', 'dt', '23', '274100', '0530');
INSERT INTO `cities` VALUES ('942', '成武', 'cw', '23', '243600', '0530');
INSERT INTO `cities` VALUES ('943', '单县', 'dx', '23', '273700', '0530');
INSERT INTO `cities` VALUES ('944', '曹县', 'cx', '23', '274400', '0530');
INSERT INTO `cities` VALUES ('945', '东明', 'dm', '23', '274500', '0530');
INSERT INTO `cities` VALUES ('946', '鄄城', 'jc', '23', '274600', '0530');
INSERT INTO `cities` VALUES ('947', '郓城', 'yc', '23', '274700', '0530');
INSERT INTO `cities` VALUES ('948', '济南', 'jn', '23', '250000', '0531');
INSERT INTO `cities` VALUES ('949', '长清', 'cq', '23', '250300', '0531');
INSERT INTO `cities` VALUES ('950', '章丘', 'zq', '23', '250200', '0531');
INSERT INTO `cities` VALUES ('951', '商河', 'sh', '23', '251600', '0531');
INSERT INTO `cities` VALUES ('952', '济阳', 'jy', '23', '251400', '0531');
INSERT INTO `cities` VALUES ('953', '平阴', 'py', '23', '250400', '0531');
INSERT INTO `cities` VALUES ('954', '青岛', 'qd', '23', '266000', '0532');
INSERT INTO `cities` VALUES ('955', '胶南', 'jn', '23', '266400', '0532');
INSERT INTO `cities` VALUES ('956', '胶州', 'jz', '23', '266300', '0532');
INSERT INTO `cities` VALUES ('957', '平度', 'pd', '23', '262800', '0532');
INSERT INTO `cities` VALUES ('958', '莱西', 'lx', '23', '266600', '0532');
INSERT INTO `cities` VALUES ('959', '即墨', 'jm', '23', '266200', '0532');
INSERT INTO `cities` VALUES ('960', '淄博', 'zb', '23', '255000', '0533');
INSERT INTO `cities` VALUES ('961', '桓台', 'ht', '23', '256400', '0533');
INSERT INTO `cities` VALUES ('962', '高青', 'gq', '23', '256300', '0533');
INSERT INTO `cities` VALUES ('963', '沂源', 'yy', '23', '256100', '0533');
INSERT INTO `cities` VALUES ('964', '德州', 'dz', '23', '253000', '0534');
INSERT INTO `cities` VALUES ('965', '庆云', 'qy', '23', '253700', '0534');
INSERT INTO `cities` VALUES ('966', '监邑', 'jy', '23', '251500', '0534');
INSERT INTO `cities` VALUES ('967', '夏津', 'xj', '23', '253200', '0534');
INSERT INTO `cities` VALUES ('968', '平原', 'py', '23', '253100', '0534');
INSERT INTO `cities` VALUES ('969', '宁津', 'nj', '23', '253400', '0534');
INSERT INTO `cities` VALUES ('970', '齐河', 'qh', '23', '251100', '0534');
INSERT INTO `cities` VALUES ('971', '乐陵', 'll', '23', '253600', '0534');
INSERT INTO `cities` VALUES ('972', '武城', 'wc', '23', '253300', '0534');
INSERT INTO `cities` VALUES ('973', '禹城', 'yc', '23', '251200', '0534');
INSERT INTO `cities` VALUES ('974', '陵县', 'lx', '23', '253500', '0534');
INSERT INTO `cities` VALUES ('975', '烟台', 'yt', '23', '264000', '0535');
INSERT INTO `cities` VALUES ('976', '招远', 'zy', '23', '265400', '0535');
INSERT INTO `cities` VALUES ('977', '莱阳', 'ly', '23', '265200', '0535');
INSERT INTO `cities` VALUES ('978', '海阳', 'hy', '23', '265100', '0535');
INSERT INTO `cities` VALUES ('979', '长岛', 'cd', '23', '265800', '0535');
INSERT INTO `cities` VALUES ('980', '莱州', 'lz', '23', '261400', '0535');
INSERT INTO `cities` VALUES ('981', '龙口', 'lk', '23', '265700', '0535');
INSERT INTO `cities` VALUES ('982', '蓬莱', 'pl', '23', '265600', '0535');
INSERT INTO `cities` VALUES ('983', '栖霞', 'qx', '23', '265300', '0535');
INSERT INTO `cities` VALUES ('984', '牟平', 'mp', '23', '264100', '0535');
INSERT INTO `cities` VALUES ('985', '潍坊', 'wf', '23', '261000', '0536');
INSERT INTO `cities` VALUES ('986', '寿光', 'sg', '23', '262700', '0536');
INSERT INTO `cities` VALUES ('987', '昌邑', 'cy', '23', '261300', '0536');
INSERT INTO `cities` VALUES ('988', '高密', 'gm', '23', '261500', '0536');
INSERT INTO `cities` VALUES ('989', '诸城', 'zc', '23', '262200', '0536');
INSERT INTO `cities` VALUES ('990', '安丘', 'aq', '23', '262100', '0536');
INSERT INTO `cities` VALUES ('991', '临朐', 'lq', '23', '262600', '0536');
INSERT INTO `cities` VALUES ('992', '青州', 'qz', '23', '262500', '0536');
INSERT INTO `cities` VALUES ('993', '昌乐', 'cl', '23', '262400', '0536');
INSERT INTO `cities` VALUES ('994', '济宁', 'jn', '23', '272100', '0537');
INSERT INTO `cities` VALUES ('995', '梁山', 'ls', '23', '274800', '0537');
INSERT INTO `cities` VALUES ('996', '曲阜', 'qf', '23', '273100', '0537');
INSERT INTO `cities` VALUES ('997', '兖州', 'yz', '23', '272000', '0537');
INSERT INTO `cities` VALUES ('998', '邹城', 'zc', '23', '273500', '0537');
INSERT INTO `cities` VALUES ('999', '微山', 'ws', '23', '277600', '0537');
INSERT INTO `cities` VALUES ('1000', '鱼台', 'yt', '23', '272300', '0537');
INSERT INTO `cities` VALUES ('1001', '金乡', 'jx', '23', '272200', '0537');
INSERT INTO `cities` VALUES ('1002', '嘉祥', 'jx', '23', '272400', '0537');
INSERT INTO `cities` VALUES ('1003', '泗水', 'ss', '23', '273200', '0537');
INSERT INTO `cities` VALUES ('1004', '汶上', 'ws', '23', '272500', '0537');
INSERT INTO `cities` VALUES ('1005', '泰安', 'ta', '23', '271000', '0538');
INSERT INTO `cities` VALUES ('1006', '新泰', 'xt', '23', '271200', '0538');
INSERT INTO `cities` VALUES ('1007', '宁阳', 'ny', '23', '271400', '0538');
INSERT INTO `cities` VALUES ('1008', '东平', 'dp', '23', '271500', '0538');
INSERT INTO `cities` VALUES ('1009', '肥城', 'fc', '23', '271600', '0538');
INSERT INTO `cities` VALUES ('1010', '临沂', 'ly', '23', '276000', '0539');
INSERT INTO `cities` VALUES ('1011', '苍山', 'cs', '23', '277700', '0539');
INSERT INTO `cities` VALUES ('1012', '平邑', 'py', '23', '273300', '0539');
INSERT INTO `cities` VALUES ('1013', '蒙阴', 'my', '23', '276200', '0539');
INSERT INTO `cities` VALUES ('1014', '沂水', 'ys', '23', '276400', '0539');
INSERT INTO `cities` VALUES ('1015', '沂南', 'yn', '23', '276300', '0539');
INSERT INTO `cities` VALUES ('1016', '莒南', 'jn', '23', '276600', '0539');
INSERT INTO `cities` VALUES ('1017', '临沭', 'ls', '23', '276700', '0539');
INSERT INTO `cities` VALUES ('1018', '郯城', 'tc', '23', '276100', '0539');
INSERT INTO `cities` VALUES ('1019', '费县', 'fx', '23', '273400', '0539');
INSERT INTO `cities` VALUES ('1020', '滨州', 'bz', '23', '256600', '0543');
INSERT INTO `cities` VALUES ('1021', '博兴', 'bx', '23', '256500', '0543');
INSERT INTO `cities` VALUES ('1022', '邹平', 'zp', '23', '256200', '0543');
INSERT INTO `cities` VALUES ('1023', '惠民', 'hm', '23', '251700', '0543');
INSERT INTO `cities` VALUES ('1024', '无棣', 'wd', '23', '251900', '0543');
INSERT INTO `cities` VALUES ('1025', '沾化', 'zh', '23', '256800', '0543');
INSERT INTO `cities` VALUES ('1026', '阳信', 'yx', '23', '251800', '0543');
INSERT INTO `cities` VALUES ('1027', '东营', 'dy', '23', '257000', '0546');
INSERT INTO `cities` VALUES ('1028', '利津', 'lj', '23', '257400', '0546');
INSERT INTO `cities` VALUES ('1029', '广饶', 'gr', '23', '257300', '0546');
INSERT INTO `cities` VALUES ('1030', '垦利', 'kl', '23', '257500', '0546');
INSERT INTO `cities` VALUES ('1031', '威海', 'wh', '23', '264200', '0631');
INSERT INTO `cities` VALUES ('1032', '荣城', 'rc', '23', '264300', '0631');
INSERT INTO `cities` VALUES ('1033', '文登', 'wd', '23', '264400', '0631');
INSERT INTO `cities` VALUES ('1034', '乳山', 'rs', '23', '264500', '0631');
INSERT INTO `cities` VALUES ('1035', '枣庄', 'zz', '23', '277100', '0632');
INSERT INTO `cities` VALUES ('1036', '滕州', 'tz', '23', '277500', '0632');
INSERT INTO `cities` VALUES ('1037', '日照', 'rz', '23', '276800', '0633');
INSERT INTO `cities` VALUES ('1038', '五莲', 'wl', '23', '262300', '0633');
INSERT INTO `cities` VALUES ('1039', '河口', 'hk', '23', '257200', '0633');
INSERT INTO `cities` VALUES ('1040', '莱芜', 'lw', '23', '271100', '0634');
INSERT INTO `cities` VALUES ('1041', '聊城', 'lc', '23', '252000', '0635');
INSERT INTO `cities` VALUES ('1042', '临清', 'lq', '23', '252600', '0635');
INSERT INTO `cities` VALUES ('1043', '茌平', 'cp', '23', '252100', '0635');
INSERT INTO `cities` VALUES ('1044', '高唐', 'gt', '23', '251300', '0635');
INSERT INTO `cities` VALUES ('1045', '东阿', 'da', '23', '252200', '0635');
INSERT INTO `cities` VALUES ('1046', '阳谷', 'yg', '23', '252300', '0635');
INSERT INTO `cities` VALUES ('1047', '莘县', 'sx', '23', '252400', '0635');
INSERT INTO `cities` VALUES ('1048', '冠县', 'gx', '23', '252500', '0635');
INSERT INTO `cities` VALUES ('1049', '寿县', 'sx', '5', '232200', '0564');
INSERT INTO `cities` VALUES ('1050', '舒城', 'sc', '5', '231300', '0564');
INSERT INTO `cities` VALUES ('1051', '六安', 'la', '5', '237000', '0564');
INSERT INTO `cities` VALUES ('1052', '绩溪', 'jx', '5', '245300', '0563');
INSERT INTO `cities` VALUES ('1053', '广德', 'gd', '5', '242200', '0563');
INSERT INTO `cities` VALUES ('1054', '旌德', 'jd', '5', '242600', '0563');
INSERT INTO `cities` VALUES ('1055', '宁国', 'ng', '5', '242300', '0563');
INSERT INTO `cities` VALUES ('1056', '郎溪', 'lx', '5', '242100', '0563');
INSERT INTO `cities` VALUES ('1057', '泾县', 'jx', '5', '242500', '0563');
INSERT INTO `cities` VALUES ('1058', '宣州', 'xz', '5', '242000', '0563');
INSERT INTO `cities` VALUES ('1059', '铜陵县', 'tlx', '5', '244100', '0562');
INSERT INTO `cities` VALUES ('1060', '铜陵', 'tl', '5', '244000', '0562');
INSERT INTO `cities` VALUES ('1061', '濉溪', 'sx', '5', '235100', '0561');
INSERT INTO `cities` VALUES ('1062', '淮北', 'hb', '5', '235000', '0561');
INSERT INTO `cities` VALUES ('1063', '黟县', 'yx', '5', '245500', '0559');
INSERT INTO `cities` VALUES ('1064', '休宁', 'xn', '5', '245400', '0559');
INSERT INTO `cities` VALUES ('1065', '祁门', 'qm', '5', '245600', '0559');
INSERT INTO `cities` VALUES ('1066', '歙县', 'xx', '5', '245200', '0559');
INSERT INTO `cities` VALUES ('1067', '黄山', 'hs', '5', '245000', '0559');
INSERT INTO `cities` VALUES ('1068', '利辛', 'lx', '5', '236700', '0558');
INSERT INTO `cities` VALUES ('1069', '临泉', 'lq', '5', '236400', '0558');
INSERT INTO `cities` VALUES ('1070', '太和', 'th', '5', '236600', '0558');
INSERT INTO `cities` VALUES ('1071', '颍上', 'ys', '5', '236200', '0558');
INSERT INTO `cities` VALUES ('1072', '界首', 'js', '5', '236500', '0558');
INSERT INTO `cities` VALUES ('1073', '涡阳', 'wy', '5', '233600', '0558');
INSERT INTO `cities` VALUES ('1074', '蒙城', 'mc', '5', '233500', '0558');
INSERT INTO `cities` VALUES ('1075', '阜南', 'fn', '5', '236300', '0558');
INSERT INTO `cities` VALUES ('1076', '毫州', 'hz', '5', '236800', '0558');
INSERT INTO `cities` VALUES ('1077', '阜阳', 'fy', '5', '236000', '0558');
INSERT INTO `cities` VALUES ('1078', '泗县', 'sx', '5', '234300', '0557');
INSERT INTO `cities` VALUES ('1079', '灵壁', 'lb', '5', '234200', '0557');
INSERT INTO `cities` VALUES ('1080', '砀山', 'ds', '5', '235300', '0557');
INSERT INTO `cities` VALUES ('1081', '萧县', 'xx', '5', '235200', '0557');
INSERT INTO `cities` VALUES ('1082', '宿州', 'sz', '5', '234000', '0557');
INSERT INTO `cities` VALUES ('1083', '岳西', 'yx', '5', '246600', '0556');
INSERT INTO `cities` VALUES ('1084', '怀宁', 'hn', '5', '246100', '0556');
INSERT INTO `cities` VALUES ('1085', '宿松', 'ss', '5', '246500', '0556');
INSERT INTO `cities` VALUES ('1086', '潜山', 'qs', '5', '246300', '0556');
INSERT INTO `cities` VALUES ('1087', '望江', 'wj', '5', '246200', '0556');
INSERT INTO `cities` VALUES ('1088', '桐城', 'tc', '5', '231400', '0556');
INSERT INTO `cities` VALUES ('1089', '枞阳', 'cy', '5', '246700', '0556');
INSERT INTO `cities` VALUES ('1090', '太湖', 'th', '5', '246400', '0556');
INSERT INTO `cities` VALUES ('1091', '安庆', 'aq', '5', '246000', '0556');
INSERT INTO `cities` VALUES ('1092', '当涂', 'dt', '5', '243100', '0555');
INSERT INTO `cities` VALUES ('1093', '马鞍山', 'mas', '5', '243000', '0555');
INSERT INTO `cities` VALUES ('1094', '凤台', 'ft', '5', '232100', '0554');
INSERT INTO `cities` VALUES ('1095', '淮南', 'hn', '5', '232000', '0554');
INSERT INTO `cities` VALUES ('1096', '南陵', 'nl', '5', '242400', '0553');
INSERT INTO `cities` VALUES ('1097', '繁昌', 'fc', '5', '241200', '0553');
INSERT INTO `cities` VALUES ('1098', '芜湖县', 'whx', '5', '241100', '0553');
INSERT INTO `cities` VALUES ('1099', '芜湖', 'wh', '5', '241000', '0553');
INSERT INTO `cities` VALUES ('1100', '固镇', 'gz', '5', '233700', '0552');
INSERT INTO `cities` VALUES ('1101', '怀远', 'hy', '5', '233400', '0552');
INSERT INTO `cities` VALUES ('1102', '五河', 'wh', '5', '233300', '0552');
INSERT INTO `cities` VALUES ('1103', '蚌埠', 'bb', '5', '233000', '0552');
INSERT INTO `cities` VALUES ('1104', '长丰', 'cf', '5', '231100', '0551');
INSERT INTO `cities` VALUES ('1105', '肥西', 'fx', '5', '231200', '0551');
INSERT INTO `cities` VALUES ('1106', '肥东', 'fd', '5', '231600', '0551');
INSERT INTO `cities` VALUES ('1107', '明光', 'mg', '5', '239400', '0550');
INSERT INTO `cities` VALUES ('1108', '定远', 'dy', '5', '233200', '0550');
INSERT INTO `cities` VALUES ('1109', '来安', 'la', '5', '239200', '0550');
INSERT INTO `cities` VALUES ('1110', '天长', 'tc', '5', '239300', '0550');
INSERT INTO `cities` VALUES ('1111', '凤阳', 'fy', '5', '233100', '0550');
INSERT INTO `cities` VALUES ('1112', '全椒', 'qj', '5', '239500', '0550');
INSERT INTO `cities` VALUES ('1113', '滁州', 'cz', '5', '239000', '0550');
INSERT INTO `cities` VALUES ('1114', '合肥', 'hf', '5', '230000', '0551');
INSERT INTO `cities` VALUES ('1115', '石台', 'st', '5', '245100', '0566');
INSERT INTO `cities` VALUES ('1116', '东至', 'dz', '5', '247200', '0566');
INSERT INTO `cities` VALUES ('1117', '青阳', 'qy', '5', '242800', '0566');
INSERT INTO `cities` VALUES ('1118', '贵池', 'gc', '5', '247100', '0566');
INSERT INTO `cities` VALUES ('1119', '含山', 'hs', '5', '238100', '0565');
INSERT INTO `cities` VALUES ('1120', '和县', 'hx', '5', '238200', '0565');
INSERT INTO `cities` VALUES ('1121', '庐江', 'lj', '5', '231500', '0565');
INSERT INTO `cities` VALUES ('1122', '无为', 'ww', '5', '238300', '0565');
INSERT INTO `cities` VALUES ('1123', '巢湖', 'ch', '5', '238000', '0565');
INSERT INTO `cities` VALUES ('1124', '金寨', 'jz', '5', '237300', '0564');
INSERT INTO `cities` VALUES ('1125', '霍山', 'hs', '5', '237200', '0564');
INSERT INTO `cities` VALUES ('1126', '霍邱', 'hq', '5', '237400', '0564');
INSERT INTO `cities` VALUES ('1127', '衢州', 'qz', '30', '324000', '0570');
INSERT INTO `cities` VALUES ('1128', '江山', 'js', '30', '324100', '0570');
INSERT INTO `cities` VALUES ('1129', '常山', 'cs', '30', '324200', '0570');
INSERT INTO `cities` VALUES ('1130', '开化', 'kh', '30', '324300', '0570');
INSERT INTO `cities` VALUES ('1131', '衢县', 'qx', '30', '324000', '0570');
INSERT INTO `cities` VALUES ('1132', '龙游', 'ly', '30', '324400', '0570');
INSERT INTO `cities` VALUES ('1133', '杭州', 'hz', '30', '310000', '0571');
INSERT INTO `cities` VALUES ('1134', '余杭', 'yh', '30', '311100', '0571');
INSERT INTO `cities` VALUES ('1135', '富阳', 'fy', '30', '311400', '0571');
INSERT INTO `cities` VALUES ('1136', '淳安', 'ca', '30', '311700', '0571');
INSERT INTO `cities` VALUES ('1137', '建德', 'jd', '30', '311600', '0571');
INSERT INTO `cities` VALUES ('1138', '桐庐', 'tl', '30', '311500', '0571');
INSERT INTO `cities` VALUES ('1139', '临安', 'la', '30', '311300', '0571');
INSERT INTO `cities` VALUES ('1140', '萧山', 'xs', '30', '311200', '0571');
INSERT INTO `cities` VALUES ('1141', '湖州', 'hz', '30', '313000', '0572');
INSERT INTO `cities` VALUES ('1142', '德清', 'dq', '30', '313200', '0572');
INSERT INTO `cities` VALUES ('1143', '安吉', 'aj', '30', '313300', '0572');
INSERT INTO `cities` VALUES ('1144', '长兴', 'cx', '30', '313100', '0572');
INSERT INTO `cities` VALUES ('1145', '嘉兴', 'jx', '30', '314000', '0573');
INSERT INTO `cities` VALUES ('1146', '桐乡', 'tx', '30', '314500', '0573');
INSERT INTO `cities` VALUES ('1147', '嘉善', 'js', '30', '314100', '0573');
INSERT INTO `cities` VALUES ('1148', '海盐', 'hy', '30', '314300', '0573');
INSERT INTO `cities` VALUES ('1149', '平湖', 'ph', '30', '314200', '0573');
INSERT INTO `cities` VALUES ('1150', '海宁', 'hn', '30', '314400', '0573');
INSERT INTO `cities` VALUES ('1151', '宁波', 'nb', '30', '315000', '0574');
INSERT INTO `cities` VALUES ('1152', '镇海', 'zh', '30', '315200', '0574');
INSERT INTO `cities` VALUES ('1153', '余姚', 'yy', '30', '315400', '0574');
INSERT INTO `cities` VALUES ('1154', '慈溪', 'cx', '30', '315300', '0574');
INSERT INTO `cities` VALUES ('1155', '鄞县', 'yx', '30', '315100', '0574');
INSERT INTO `cities` VALUES ('1156', '奉化', 'fh', '30', '315500', '0574');
INSERT INTO `cities` VALUES ('1157', '宁海', 'nh', '30', '315600', '0574');
INSERT INTO `cities` VALUES ('1158', '象山', 'xs', '30', '315700', '0574');
INSERT INTO `cities` VALUES ('1159', '绍兴', 'sx', '30', '312000', '0575');
INSERT INTO `cities` VALUES ('1160', '绍兴县', 'sxx', '30', '312300', '0575');
INSERT INTO `cities` VALUES ('1161', '上虞', 'sy', '30', '312300', '0575');
INSERT INTO `cities` VALUES ('1162', '嵊县', 'sx', '30', '312400', '0575');
INSERT INTO `cities` VALUES ('1163', '新昌', 'xc', '30', '312500', '0575');
INSERT INTO `cities` VALUES ('1164', '诸暨', 'zj', '30', '311800', '0575');
INSERT INTO `cities` VALUES ('1165', '台州', 'tz', '30', '317000', '0576');
INSERT INTO `cities` VALUES ('1166', '临海', 'lh', '30', '317000', '0576');
INSERT INTO `cities` VALUES ('1167', '黄岩', 'hy', '30', '317400', '0576');
INSERT INTO `cities` VALUES ('1168', '椒江', 'jj', '30', '317700', '0576');
INSERT INTO `cities` VALUES ('1169', '温岭', 'wl', '30', '317500', '0576');
INSERT INTO `cities` VALUES ('1170', '玉环', 'yh', '30', '317600', '0576');
INSERT INTO `cities` VALUES ('1171', '仙居', 'xj', '30', '317300', '0576');
INSERT INTO `cities` VALUES ('1172', '天台', 'tt', '30', '317200', '0576');
INSERT INTO `cities` VALUES ('1173', '三门', 'sm', '30', '317100', '0576');
INSERT INTO `cities` VALUES ('1174', '温州', 'wz', '30', '325000', '0577');
INSERT INTO `cities` VALUES ('1175', '瓯海', 'oh', '30', '325000', '0577');
INSERT INTO `cities` VALUES ('1176', '永嘉', 'yj', '30', '325100', '0577');
INSERT INTO `cities` VALUES ('1177', '乐清', 'lq', '30', '325600', '0577');
INSERT INTO `cities` VALUES ('1178', '洞头', 'dt', '30', '325700', '0577');
INSERT INTO `cities` VALUES ('1179', '瑞安', 'ra', '30', '325200', '0577');
INSERT INTO `cities` VALUES ('1180', '平阳', 'py', '30', '325400', '0577');
INSERT INTO `cities` VALUES ('1181', '苍南', 'cn', '30', '325800', '0577');
INSERT INTO `cities` VALUES ('1182', '泰顺', 'ts', '30', '325500', '0577');
INSERT INTO `cities` VALUES ('1183', '文成', 'wc', '30', '325300', '0577');
INSERT INTO `cities` VALUES ('1184', '丽水', 'ls', '30', '323000', '0578');
INSERT INTO `cities` VALUES ('1185', '缙云', 'jy', '30', '321400', '0578');
INSERT INTO `cities` VALUES ('1186', '青田', 'qt', '30', '323900', '0578');
INSERT INTO `cities` VALUES ('1187', '云和', 'yh', '30', '323600', '0578');
INSERT INTO `cities` VALUES ('1188', '庆元', 'qy', '30', '323800', '0578');
INSERT INTO `cities` VALUES ('1189', '龙泉', 'lq', '30', '323700', '0578');
INSERT INTO `cities` VALUES ('1190', '遂昌', 'sc', '30', '323300', '0578');
INSERT INTO `cities` VALUES ('1191', '松阳', 'sy', '30', '323400', '0578');
INSERT INTO `cities` VALUES ('1192', '景宁', 'jn', '30', '323500', '0578');
INSERT INTO `cities` VALUES ('1193', '金华', 'jh', '30', '321000', '0579');
INSERT INTO `cities` VALUES ('1194', '金华县', 'jhx', '30', '321000', '0579');
INSERT INTO `cities` VALUES ('1195', '义乌', 'yw', '30', '322000', '0579');
INSERT INTO `cities` VALUES ('1196', '东阳', 'dy', '30', '322100', '0579');
INSERT INTO `cities` VALUES ('1197', '浦江', 'pj', '30', '322200', '0579');
INSERT INTO `cities` VALUES ('1198', '永康', 'yk', '30', '321300', '0579');
INSERT INTO `cities` VALUES ('1199', '武义', 'wy', '30', '321200', '0579');
INSERT INTO `cities` VALUES ('1200', '兰溪', 'lx', '30', '321100', '0579');
INSERT INTO `cities` VALUES ('1201', '磐安', 'pa', '30', '322300', '0579');
INSERT INTO `cities` VALUES ('1202', '舟山', 'zs', '30', '316000', '0580');
INSERT INTO `cities` VALUES ('1203', '岱山', 'ds', '30', '316200', '0580');
INSERT INTO `cities` VALUES ('1204', '嵊泗', 'ss', '30', '202450', '0580');
INSERT INTO `cities` VALUES ('1205', '普陀', 'pt', '30', '316100', '0580');
INSERT INTO `cities` VALUES ('1206', '福州', 'fz', '6', '350000', '0591');
INSERT INTO `cities` VALUES ('1207', '闽候', 'mh', '6', '350100', '0591');
INSERT INTO `cities` VALUES ('1208', '连江', 'lj', '6', '350500', '0591');
INSERT INTO `cities` VALUES ('1209', '长乐', 'cl', '6', '350200', '0591');
INSERT INTO `cities` VALUES ('1210', '福清', 'fq', '6', '350300', '0591');
INSERT INTO `cities` VALUES ('1211', '平潭', 'pt', '6', '350400', '0591');
INSERT INTO `cities` VALUES ('1212', '永泰', 'yt', '6', '350700', '0591');
INSERT INTO `cities` VALUES ('1213', '闽清', 'mq', '6', '350800', '0591');
INSERT INTO `cities` VALUES ('1214', '罗源', 'ly', '6', '350600', '0591');
INSERT INTO `cities` VALUES ('1215', '厦门', 'sm', '6', '361000', '0592');
INSERT INTO `cities` VALUES ('1216', '同安', 'ta', '6', '361100', '0592');
INSERT INTO `cities` VALUES ('1217', '宁德', 'nd', '6', '352100', '0593');
INSERT INTO `cities` VALUES ('1218', '福安', 'fa', '6', '355000', '0593');
INSERT INTO `cities` VALUES ('1219', '柘荣', 'zr', '6', '355300', '0593');
INSERT INTO `cities` VALUES ('1220', '福鼎', 'fd', '6', '355200', '0593');
INSERT INTO `cities` VALUES ('1221', '霞浦', 'xp', '6', '355100', '0593');
INSERT INTO `cities` VALUES ('1222', '寿宁', 'sn', '6', '355500', '0593');
INSERT INTO `cities` VALUES ('1223', '古田', 'gt', '6', '352200', '0593');
INSERT INTO `cities` VALUES ('1224', '屏南', 'pn', '6', '352300', '0593');
INSERT INTO `cities` VALUES ('1225', '周宁', 'zn', '6', '355400', '0593');
INSERT INTO `cities` VALUES ('1226', '莆田', 'pt', '6', '351100', '0594');
INSERT INTO `cities` VALUES ('1227', '仙游', 'xy', '6', '351200', '0594');
INSERT INTO `cities` VALUES ('1228', '泉州', 'qz', '6', '362000', '0595');
INSERT INTO `cities` VALUES ('1229', '晋江', 'jj', '6', '362200', '0595');
INSERT INTO `cities` VALUES ('1230', '南安', 'na', '6', '362300', '0595');
INSERT INTO `cities` VALUES ('1231', '安溪', 'ax', '6', '362400', '0595');
INSERT INTO `cities` VALUES ('1232', '永春', 'yc', '6', '362600', '0595');
INSERT INTO `cities` VALUES ('1233', '德化', 'dh', '6', '362500', '0595');
INSERT INTO `cities` VALUES ('1234', '惠安', 'ha', '6', '362100', '0595');
INSERT INTO `cities` VALUES ('1235', '石狮', 'ss', '6', '362700', '0595');
INSERT INTO `cities` VALUES ('1236', '漳州', 'zz', '6', '363000', '0596');
INSERT INTO `cities` VALUES ('1237', '南靖', 'nj', '6', '363600', '0596');
INSERT INTO `cities` VALUES ('1238', '华安', 'ha', '6', '363800', '0596');
INSERT INTO `cities` VALUES ('1239', '长泰', 'ct', '6', '363900', '0596');
INSERT INTO `cities` VALUES ('1240', '龙海', 'lh', '6', '363100', '0596');
INSERT INTO `cities` VALUES ('1241', '漳浦', 'zp', '6', '363200', '0596');
INSERT INTO `cities` VALUES ('1242', '云霄', 'yx', '6', '363300', '0596');
INSERT INTO `cities` VALUES ('1243', '东山', 'ds', '6', '363400', '0596');
INSERT INTO `cities` VALUES ('1244', '诏安', 'za', '6', '363500', '0596');
INSERT INTO `cities` VALUES ('1245', '平和', 'ph', '6', '363700', '0596');
INSERT INTO `cities` VALUES ('1246', '龙岩', 'ly', '6', '364000', '0597');
INSERT INTO `cities` VALUES ('1247', '漳平', 'zp', '6', '364400', '0597');
INSERT INTO `cities` VALUES ('1248', '永定', 'yd', '6', '364100', '0597');
INSERT INTO `cities` VALUES ('1249', '上杭', 'sh', '6', '364200', '0597');
INSERT INTO `cities` VALUES ('1250', '武平', 'wp', '6', '364300', '0597');
INSERT INTO `cities` VALUES ('1251', '长汀', 'ct', '6', '366300', '0597');
INSERT INTO `cities` VALUES ('1252', '连城', 'lc', '6', '366200', '0597');
INSERT INTO `cities` VALUES ('1253', '三明', 'sm', '6', '365000', '0598');
INSERT INTO `cities` VALUES ('1254', '沙县', 'sx', '6', '365500', '0598');
INSERT INTO `cities` VALUES ('1255', '尤溪', 'yx', '6', '365100', '0598');
INSERT INTO `cities` VALUES ('1256', '大田', 'dt', '6', '366100', '0598');
INSERT INTO `cities` VALUES ('1257', '永安', 'ya', '6', '366000', '0598');
INSERT INTO `cities` VALUES ('1258', '清流', 'ql', '6', '365300', '0598');
INSERT INTO `cities` VALUES ('1259', '宁化', 'nh', '6', '365400', '0598');
INSERT INTO `cities` VALUES ('1260', '明溪', 'mx', '6', '365200', '0598');
INSERT INTO `cities` VALUES ('1261', '建宁', 'jn', '6', '354500', '0598');
INSERT INTO `cities` VALUES ('1262', '泰宁', 'tn', '6', '354400', '0598');
INSERT INTO `cities` VALUES ('1263', '将乐', 'jl', '6', '353300', '0598');
INSERT INTO `cities` VALUES ('1264', '南平', 'np', '6', '353000', '0599');
INSERT INTO `cities` VALUES ('1265', '建瓯', 'jo', '6', '353100', '0599');
INSERT INTO `cities` VALUES ('1266', '顺昌', 'sc', '6', '353200', '0599');
INSERT INTO `cities` VALUES ('1267', '建阳', 'jy', '6', '354200', '0599');
INSERT INTO `cities` VALUES ('1268', '邵武', 'sw', '6', '354000', '0599');
INSERT INTO `cities` VALUES ('1269', '浦城', 'pc', '6', '353400', '0599');
INSERT INTO `cities` VALUES ('1270', '松溪', 'sx', '6', '353500', '0599');
INSERT INTO `cities` VALUES ('1271', '政和', 'zh', '6', '353600', '0599');
INSERT INTO `cities` VALUES ('1272', '光泽', 'gz', '6', '354100', '0599');
INSERT INTO `cities` VALUES ('1273', '武夷山', 'wys', '6', '354300', '0599');
INSERT INTO `cities` VALUES ('1274', '武汉', 'wh', '14', '430000', '027');
INSERT INTO `cities` VALUES ('1275', '武昌', 'wc', '14', '430200', '027');
INSERT INTO `cities` VALUES ('1276', '武昌县', 'wcx', '14', '430200', '027');
INSERT INTO `cities` VALUES ('1277', '蔡甸', 'cd', '14', '430100', '027');
INSERT INTO `cities` VALUES ('1278', '黄陂', 'hp', '14', '432200', '027');
INSERT INTO `cities` VALUES ('1279', '新洲', 'xz', '14', '431400', '027');
INSERT INTO `cities` VALUES ('1280', '襄樊', 'xf', '14', '441000', '0710');
INSERT INTO `cities` VALUES ('1281', '襄阳', 'xy', '14', '441100', '0710');
INSERT INTO `cities` VALUES ('1282', '宜城', 'yc', '14', '441400', '0710');
INSERT INTO `cities` VALUES ('1283', '南漳', 'nz', '14', '441500', '0710');
INSERT INTO `cities` VALUES ('1284', '谷城', 'gc', '14', '441700', '0710');
INSERT INTO `cities` VALUES ('1285', '枣阳', 'zy', '14', '441200', '0710');
INSERT INTO `cities` VALUES ('1286', '老河口', 'lhk', '14', '441800', '0710');
INSERT INTO `cities` VALUES ('1287', '保康', 'bk', '14', '441600', '0710');
INSERT INTO `cities` VALUES ('1288', '鄂州', 'ez', '14', '436000', '0711');
INSERT INTO `cities` VALUES ('1289', '孝感', 'xg', '14', '432100', '0712');
INSERT INTO `cities` VALUES ('1290', '大悟', 'dw', '14', '432800', '0712');
INSERT INTO `cities` VALUES ('1291', '汉川', 'hc', '14', '432300', '0712');
INSERT INTO `cities` VALUES ('1292', '应城', 'yc', '14', '432400', '0712');
INSERT INTO `cities` VALUES ('1293', '云梦', 'ym', '14', '432500', '0712');
INSERT INTO `cities` VALUES ('1294', '安陆', 'al', '14', '432600', '0712');
INSERT INTO `cities` VALUES ('1295', '广水', 'gs', '14', '432700', '0712');
INSERT INTO `cities` VALUES ('1296', '黄冈', 'hg', '14', '436100', '0713');
INSERT INTO `cities` VALUES ('1297', '黄州', 'hz', '14', '436100', '0713');
INSERT INTO `cities` VALUES ('1298', '麻城', 'mc', '14', '431600', '0713');
INSERT INTO `cities` VALUES ('1299', '红安', 'ha', '14', '431500', '0713');
INSERT INTO `cities` VALUES ('1300', '浠水', 'xs', '14', '436200', '0713');
INSERT INTO `cities` VALUES ('1301', '罗田', 'lt', '14', '436600', '0713');
INSERT INTO `cities` VALUES ('1302', '英山', 'ys', '14', '436700', '0713');
INSERT INTO `cities` VALUES ('1303', '蕲春', 'qc', '14', '436300', '0713');
INSERT INTO `cities` VALUES ('1304', '黄梅', 'hm', '14', '436500', '0713');
INSERT INTO `cities` VALUES ('1305', '武穴', 'wx', '14', '436400', '0713');
INSERT INTO `cities` VALUES ('1306', '黄石', 'hs', '14', '435000', '0714');
INSERT INTO `cities` VALUES ('1307', '大冶', 'dy', '14', '435100', '0714');
INSERT INTO `cities` VALUES ('1308', '咸宁', 'xn', '14', '437000', '0715');
INSERT INTO `cities` VALUES ('1309', '阳新', 'yx', '14', '435200', '0715');
INSERT INTO `cities` VALUES ('1310', '通山', 'ts', '14', '437600', '0715');
INSERT INTO `cities` VALUES ('1311', '崇阳', 'cy', '14', '437500', '0715');
INSERT INTO `cities` VALUES ('1312', '通城', 'tc', '14', '437400', '0715');
INSERT INTO `cities` VALUES ('1313', '蒲圻', 'pq', '14', '437300', '0715');
INSERT INTO `cities` VALUES ('1314', '嘉鱼', 'jy', '14', '437200', '0715');
INSERT INTO `cities` VALUES ('1315', '荆沙', 'js', '14', '434100', '0716');
INSERT INTO `cities` VALUES ('1316', '沙市', 'ss', '14', '434000', '0716');
INSERT INTO `cities` VALUES ('1317', '监利', 'jl', '14', '433300', '0716');
INSERT INTO `cities` VALUES ('1318', '石首', 'ss', '14', '434400', '0716');
INSERT INTO `cities` VALUES ('1319', '公安', 'ga', '14', '434300', '0716');
INSERT INTO `cities` VALUES ('1320', '松滋', 'sz', '14', '434200', '0716');
INSERT INTO `cities` VALUES ('1321', '钟祥', 'zx', '14', '431900', '0716');
INSERT INTO `cities` VALUES ('1322', '京山', 'js', '14', '431800', '0716');
INSERT INTO `cities` VALUES ('1323', '宜昌', 'yc', '14', '443000', '0717');
INSERT INTO `cities` VALUES ('1324', '宜昌县', 'ycx', '14', '443100', '0717');
INSERT INTO `cities` VALUES ('1325', '远发', 'yf', '14', '444200', '0717');
INSERT INTO `cities` VALUES ('1326', '当阳', 'dy', '14', '444100', '0717');
INSERT INTO `cities` VALUES ('1327', '枝江', 'zj', '14', '443200', '0717');
INSERT INTO `cities` VALUES ('1328', '枝城', 'zc', '14', '443300', '0717');
INSERT INTO `cities` VALUES ('1329', '长阳', 'cy', '14', '443500', '0717');
INSERT INTO `cities` VALUES ('1330', '五峰', 'wf', '14', '443400', '0717');
INSERT INTO `cities` VALUES ('1331', '秭归', 'zg', '14', '443600', '0717');
INSERT INTO `cities` VALUES ('1332', '兴山', 'xs', '14', '443700', '0717');
INSERT INTO `cities` VALUES ('1333', '恩施', 'es', '14', '445000', '0718');
INSERT INTO `cities` VALUES ('1334', '建始', 'js', '14', '445300', '0718');
INSERT INTO `cities` VALUES ('1335', '巴东', 'bd', '14', '444300', '0718');
INSERT INTO `cities` VALUES ('1336', '鹤峰', 'hf', '14', '445800', '0718');
INSERT INTO `cities` VALUES ('1337', '宣恩', 'xe', '14', '445500', '0718');
INSERT INTO `cities` VALUES ('1338', '来凤', 'lf', '14', '445700', '0718');
INSERT INTO `cities` VALUES ('1339', '咸丰', 'xf', '14', '445600', '0718');
INSERT INTO `cities` VALUES ('1340', '利川', 'lc', '14', '445400', '0718');
INSERT INTO `cities` VALUES ('1341', '十堰', 'sy', '14', '442000', '0719');
INSERT INTO `cities` VALUES ('1342', '郧县', 'yx', '14', '442500', '0719');
INSERT INTO `cities` VALUES ('1343', '丹江口', 'djk', '14', '441900', '0719');
INSERT INTO `cities` VALUES ('1344', '房县', 'fx', '14', '442100', '0719');
INSERT INTO `cities` VALUES ('1345', '神农架', 'snj', '14', '442400', '0719');
INSERT INTO `cities` VALUES ('1346', '竹山', 'zs', '14', '442200', '0719');
INSERT INTO `cities` VALUES ('1347', '竹溪', 'zx', '14', '442300', '0719');
INSERT INTO `cities` VALUES ('1348', '郧西', 'yx', '14', '442600', '0719');
INSERT INTO `cities` VALUES ('1349', '随枣', 'sz', '14', '441200', '0722');
INSERT INTO `cities` VALUES ('1350', '随州', 'sz', '14', '441300', '0722');
INSERT INTO `cities` VALUES ('1351', '荆门', 'jm', '14', '434500', '0727');
INSERT INTO `cities` VALUES ('1352', '江汉', 'jh', '14', '433000', '0728');
INSERT INTO `cities` VALUES ('1353', '天门', 'tm', '14', '431700', '0728');
INSERT INTO `cities` VALUES ('1354', '潜江', 'qj', '14', '433100', '0728');
INSERT INTO `cities` VALUES ('1355', '洪湖', 'hh', '14', '433200', '0728');
INSERT INTO `cities` VALUES ('1356', '岳阳', 'yy', '15', '414000', '0730');
INSERT INTO `cities` VALUES ('1357', '岳阳县', 'yyx', '15', '414100', '0730');
INSERT INTO `cities` VALUES ('1358', '湘阴', 'xy', '15', '410500', '0730');
INSERT INTO `cities` VALUES ('1359', '华容', 'hr', '15', '414200', '0730');
INSERT INTO `cities` VALUES ('1360', '临湘', 'lx', '15', '414300', '0730');
INSERT INTO `cities` VALUES ('1361', '平江', 'pj', '15', '410400', '0730');
INSERT INTO `cities` VALUES ('1362', '汨罗', 'ml', '15', '414400', '0730');
INSERT INTO `cities` VALUES ('1363', '长沙', 'cs', '15', '410000', '0731');
INSERT INTO `cities` VALUES ('1364', '长沙县', 'csx', '15', '410100', '0731');
INSERT INTO `cities` VALUES ('1365', '宁乡', 'nx', '15', '410600', '0731');
INSERT INTO `cities` VALUES ('1366', '望城', 'wc', '15', '410200', '0731');
INSERT INTO `cities` VALUES ('1367', '浏阳', 'ly', '15', '410300', '0731');
INSERT INTO `cities` VALUES ('1368', '湘潭', 'xt', '15', '411100', '0732');
INSERT INTO `cities` VALUES ('1369', '湘潭县', 'xtx', '15', '411200', '0732');
INSERT INTO `cities` VALUES ('1370', '韶山', 'ss', '15', '411300', '0732');
INSERT INTO `cities` VALUES ('1371', '湘乡', 'xx', '15', '411400', '0732');
INSERT INTO `cities` VALUES ('1372', '株洲', 'zz', '15', '412000', '0733');
INSERT INTO `cities` VALUES ('1373', '株洲县', 'zzx', '15', '412100', '0733');
INSERT INTO `cities` VALUES ('1374', '攸县', 'yx', '15', '412300', '0733');
INSERT INTO `cities` VALUES ('1375', '茶陵', 'cl', '15', '412400', '0733');
INSERT INTO `cities` VALUES ('1376', '醴陵', 'll', '15', '412200', '0733');
INSERT INTO `cities` VALUES ('1377', '炎陵', 'yl', '15', '412500', '0733');
INSERT INTO `cities` VALUES ('1378', '衡阳', 'hy', '15', '421000', '0734');
INSERT INTO `cities` VALUES ('1379', '衡阳县', 'hyx', '15', '421200', '0734');
INSERT INTO `cities` VALUES ('1380', '耒阳', 'ly', '15', '421800', '0734');
INSERT INTO `cities` VALUES ('1381', '常宁', 'cn', '15', '421500', '0734');
INSERT INTO `cities` VALUES ('1382', '衡南', 'hn', '15', '421100', '0734');
INSERT INTO `cities` VALUES ('1383', '衡东', 'hd', '15', '421400', '0734');
INSERT INTO `cities` VALUES ('1384', '衡山', 'hs', '15', '421300', '0734');
INSERT INTO `cities` VALUES ('1385', '祁东', 'qd', '15', '421600', '0734');
INSERT INTO `cities` VALUES ('1386', '郴州', 'cz', '15', '423000', '0735');
INSERT INTO `cities` VALUES ('1387', '资兴', 'zx', '15', '423400', '0735');
INSERT INTO `cities` VALUES ('1388', '桂东', 'gd', '15', '423500', '0735');
INSERT INTO `cities` VALUES ('1389', '汝城', 'rc', '15', '424100', '0735');
INSERT INTO `cities` VALUES ('1390', '临武', 'lw', '15', '424300', '0735');
INSERT INTO `cities` VALUES ('1391', '嘉禾', 'jh', '15', '424500', '0735');
INSERT INTO `cities` VALUES ('1392', '安仁', 'ar', '15', '423600', '0735');
INSERT INTO `cities` VALUES ('1393', '桂阳', 'gy', '15', '424400', '0735');
INSERT INTO `cities` VALUES ('1394', '永兴', 'yx', '15', '423300', '0735');
INSERT INTO `cities` VALUES ('1395', '宜章', 'yz', '15', '424200', '0735');
INSERT INTO `cities` VALUES ('1396', '常德', 'cd', '15', '415100', '0736');
INSERT INTO `cities` VALUES ('1397', '桃源', 'ty', '15', '425700', '0736');
INSERT INTO `cities` VALUES ('1398', '汉寿', 'hs', '15', '415900', '0736');
INSERT INTO `cities` VALUES ('1399', '石门', 'sm', '15', '415300', '0736');
INSERT INTO `cities` VALUES ('1400', '澧县', 'lx', '15', '425500', '0736');
INSERT INTO `cities` VALUES ('1401', '津市', 'js', '15', '415400', '0736');
INSERT INTO `cities` VALUES ('1402', '安乡', 'ax', '15', '415600', '0736');
INSERT INTO `cities` VALUES ('1403', '临澧', 'll', '15', '415200', '0736');
INSERT INTO `cities` VALUES ('1404', '益阳', 'yy', '15', '413000', '0737');
INSERT INTO `cities` VALUES ('1405', '桃江', 'tj', '15', '413400', '0737');
INSERT INTO `cities` VALUES ('1406', '安化', 'ah', '15', '413500', '0737');
INSERT INTO `cities` VALUES ('1407', '南县', 'nx', '15', '413200', '0737');
INSERT INTO `cities` VALUES ('1408', '沅江', 'yj', '15', '413100', '0737');
INSERT INTO `cities` VALUES ('1409', '娄底', 'ld', '15', '417000', '0738');
INSERT INTO `cities` VALUES ('1410', '双峰', 'sf', '15', '411500', '0738');
INSERT INTO `cities` VALUES ('1411', '冷水江', 'lsj', '15', '417500', '0738');
INSERT INTO `cities` VALUES ('1412', '新化', 'xh', '15', '417600', '0738');
INSERT INTO `cities` VALUES ('1413', '涟源', 'ly', '15', '417100', '0738');
INSERT INTO `cities` VALUES ('1414', '邵阳', 'sy', '15', '422000', '0739');
INSERT INTO `cities` VALUES ('1415', '邵阳县', 'syx', '15', '422100', '0739');
INSERT INTO `cities` VALUES ('1416', '新宁', 'xn', '15', '422700', '0739');
INSERT INTO `cities` VALUES ('1417', '城步', 'cb', '15', '422500', '0739');
INSERT INTO `cities` VALUES ('1418', '新邵', 'xs', '15', '422900', '0739');
INSERT INTO `cities` VALUES ('1419', '绥宁', 'sn', '15', '422600', '0739');
INSERT INTO `cities` VALUES ('1420', '武岗', 'wg', '15', '422400', '0739');
INSERT INTO `cities` VALUES ('1421', '洞口', 'dk', '15', '422300', '0739');
INSERT INTO `cities` VALUES ('1422', '邵东', 'sd', '15', '422800', '0739');
INSERT INTO `cities` VALUES ('1423', '隆回', 'lh', '15', '422200', '0739');
INSERT INTO `cities` VALUES ('1424', '吉首', 'js', '15', '416000', '0743');
INSERT INTO `cities` VALUES ('1425', '凤凰', 'fh', '15', '416200', '0743');
INSERT INTO `cities` VALUES ('1426', '龙山', 'ls', '15', '416800', '0743');
INSERT INTO `cities` VALUES ('1427', '永顺', 'ys', '15', '416700', '0743');
INSERT INTO `cities` VALUES ('1428', '保靖', 'bj', '15', '416500', '0743');
INSERT INTO `cities` VALUES ('1429', '花垣', 'hy', '15', '416400', '0743');
INSERT INTO `cities` VALUES ('1430', '古丈', 'gz', '15', '416300', '0743');
INSERT INTO `cities` VALUES ('1431', '泸溪', 'lx', '15', '416100', '0743');
INSERT INTO `cities` VALUES ('1432', '张家界', 'zjj', '15', '416600', '0744');
INSERT INTO `cities` VALUES ('1433', '桑植', 'sz', '15', '416900', '0744');
INSERT INTO `cities` VALUES ('1434', '慈利', 'cl', '15', '415800', '0744');
INSERT INTO `cities` VALUES ('1435', '怀化', 'hh', '15', '418000', '0745');
INSERT INTO `cities` VALUES ('1436', '麻阳', 'my', '15', '419400', '0745');
INSERT INTO `cities` VALUES ('1437', '芷江', 'zj', '15', '419100', '0745');
INSERT INTO `cities` VALUES ('1438', '黔阳', 'qy', '15', '418100', '0745');
INSERT INTO `cities` VALUES ('1439', '溆浦', 'xp', '15', '419300', '0745');
INSERT INTO `cities` VALUES ('1440', '通道', 'td', '15', '418500', '0745');
INSERT INTO `cities` VALUES ('1441', '靖州', 'jz', '15', '418400', '0745');
INSERT INTO `cities` VALUES ('1442', '会同', 'ht', '15', '418300', '0745');
INSERT INTO `cities` VALUES ('1443', '新晃', 'xh', '15', '419200', '0745');
INSERT INTO `cities` VALUES ('1444', '辰溪', 'cx', '15', '419500', '0745');
INSERT INTO `cities` VALUES ('1445', '沅陵', 'yl', '15', '419600', '0745');
INSERT INTO `cities` VALUES ('1446', '洪江', 'hj', '15', '418200', '0745');
INSERT INTO `cities` VALUES ('1447', '永州', 'yz', '15', '425000', '0746');
INSERT INTO `cities` VALUES ('1448', '东安', 'da', '15', '425900', '0746');
INSERT INTO `cities` VALUES ('1449', '祁阳', 'qy', '15', '421700', '0746');
INSERT INTO `cities` VALUES ('1450', '新田', 'xt', '15', '425700', '0746');
INSERT INTO `cities` VALUES ('1451', '宁远', 'ny', '15', '425600', '0746');
INSERT INTO `cities` VALUES ('1452', '蓝山', 'ls', '15', '425800', '0746');
INSERT INTO `cities` VALUES ('1453', '江华', 'jh', '15', '425500', '0746');
INSERT INTO `cities` VALUES ('1454', '江永', 'jy', '15', '425400', '0746');
INSERT INTO `cities` VALUES ('1455', '道县', 'dx', '15', '425300', '0746');
INSERT INTO `cities` VALUES ('1456', '双牌', 'sp', '15', '425200', '0746');
INSERT INTO `cities` VALUES ('1457', '广州', 'gz', '8', '510000', '020');
INSERT INTO `cities` VALUES ('1458', '番禺', 'fy', '8', '511400', '020');
INSERT INTO `cities` VALUES ('1459', '花县', 'hx', '8', '510800', '020');
INSERT INTO `cities` VALUES ('1460', '从化', 'ch', '8', '510900', '020');
INSERT INTO `cities` VALUES ('1461', '增城', 'zc', '8', '511300', '020');
INSERT INTO `cities` VALUES ('1462', '汕尾', 'sw', '8', '516600', '0660');
INSERT INTO `cities` VALUES ('1463', '海丰', 'hf', '8', '516400', '0660');
INSERT INTO `cities` VALUES ('1464', '陆河', 'lh', '8', '516700', '0660');
INSERT INTO `cities` VALUES ('1465', '陆丰', 'lf', '8', '516500', '0660');
INSERT INTO `cities` VALUES ('1466', '潮阳', 'cy', '8', '515100', '0661');
INSERT INTO `cities` VALUES ('1467', '阳江', 'yj', '8', '529500', '0662');
INSERT INTO `cities` VALUES ('1468', '阳春', 'yc', '8', '529600', '0662');
INSERT INTO `cities` VALUES ('1469', '阳东', 'yd', '8', '529500', '0662');
INSERT INTO `cities` VALUES ('1470', '阳西', 'yx', '8', '529800', '0662');
INSERT INTO `cities` VALUES ('1471', '揭阳', 'jy', '8', '515500', '0663');
INSERT INTO `cities` VALUES ('1472', '揭东', 'jd', '8', '515500', '0663');
INSERT INTO `cities` VALUES ('1473', '惠来', 'hl', '8', '515200', '0663');
INSERT INTO `cities` VALUES ('1474', '揭西', 'jx', '8', '515400', '0663');
INSERT INTO `cities` VALUES ('1475', '普宁', 'pn', '8', '515300', '0663');
INSERT INTO `cities` VALUES ('1476', '茂名', 'mm', '8', '525000', '0668');
INSERT INTO `cities` VALUES ('1477', '化州', 'hz', '8', '525100', '0668');
INSERT INTO `cities` VALUES ('1478', '高州', 'gz', '8', '525200', '0668');
INSERT INTO `cities` VALUES ('1479', '信宜', 'xy', '8', '525300', '0668');
INSERT INTO `cities` VALUES ('1480', '电白', 'db', '8', '525400', '0668');
INSERT INTO `cities` VALUES ('1481', '江门', 'jm', '8', '529000', '0750');
INSERT INTO `cities` VALUES ('1482', '台山', 'ts', '8', '529200', '0750');
INSERT INTO `cities` VALUES ('1483', '开平', 'kp', '8', '529300', '0750');
INSERT INTO `cities` VALUES ('1484', '恩平', 'ep', '8', '529400', '0750');
INSERT INTO `cities` VALUES ('1485', '新会', 'xh', '8', '529100', '0750');
INSERT INTO `cities` VALUES ('1486', '鹤山', 'hs', '8', '529700', '0750');
INSERT INTO `cities` VALUES ('1487', '韶关', 'sg', '8', '512000', '0751');
INSERT INTO `cities` VALUES ('1488', '曲江', 'qj', '8', '512100', '0751');
INSERT INTO `cities` VALUES ('1489', '翁源', 'wy', '8', '512600', '0751');
INSERT INTO `cities` VALUES ('1490', '新丰', 'xf', '8', '511100', '0751');
INSERT INTO `cities` VALUES ('1491', '始兴', 'sx', '8', '512500', '0751');
INSERT INTO `cities` VALUES ('1492', '仁化', 'rh', '8', '512300', '0751');
INSERT INTO `cities` VALUES ('1493', '南雄', 'nx', '8', '512400', '0751');
INSERT INTO `cities` VALUES ('1494', '乳源', 'ry', '8', '512700', '0751');
INSERT INTO `cities` VALUES ('1495', '乐昌', 'lc', '8', '512200', '0751');
INSERT INTO `cities` VALUES ('1496', '惠州', 'hz', '8', '516000', '0752');
INSERT INTO `cities` VALUES ('1497', '惠东', 'hd', '8', '526300', '0752');
INSERT INTO `cities` VALUES ('1498', '惠阳', 'hy', '8', '516200', '0752');
INSERT INTO `cities` VALUES ('1499', '博罗', 'bl', '8', '516100', '0752');
INSERT INTO `cities` VALUES ('1500', '龙门', 'lm', '8', '511200', '0752');
INSERT INTO `cities` VALUES ('1501', '梅州', 'mz', '8', '514000', '0753');
INSERT INTO `cities` VALUES ('1502', '梅县', 'mx', '8', '514000', '0753');
INSERT INTO `cities` VALUES ('1503', '蕉岭', 'jl', '8', '514100', '0753');
INSERT INTO `cities` VALUES ('1504', '大埔', 'dp', '8', '514200', '0753');
INSERT INTO `cities` VALUES ('1505', '丰顺', 'fs', '8', '514300', '0753');
INSERT INTO `cities` VALUES ('1506', '五华', 'wh', '8', '514400', '0753');
INSERT INTO `cities` VALUES ('1507', '兴宁', 'xn', '8', '514500', '0753');
INSERT INTO `cities` VALUES ('1508', '平远', 'py', '8', '514600', '0753');
INSERT INTO `cities` VALUES ('1509', '汕头', 'st', '8', '515000', '0754');
INSERT INTO `cities` VALUES ('1510', '澄海', 'ch', '8', '515800', '0754');
INSERT INTO `cities` VALUES ('1511', '南澳', 'na', '8', '515900', '0754');
INSERT INTO `cities` VALUES ('1512', '深圳', 'sz', '8', '518000', '0755');
INSERT INTO `cities` VALUES ('1513', '宝安', 'ba', '8', '518100', '0755');
INSERT INTO `cities` VALUES ('1514', '珠海', 'zh', '8', '519000', '0756');
INSERT INTO `cities` VALUES ('1515', '斗门', 'dm', '8', '519100', '0756');
INSERT INTO `cities` VALUES ('1516', '佛山', 'fs', '8', '528000', '0757');
INSERT INTO `cities` VALUES ('1517', '南海', 'nh', '8', '528200', '0757');
INSERT INTO `cities` VALUES ('1518', '高明', 'gm', '8', '528500', '0757');
INSERT INTO `cities` VALUES ('1519', '三水', 'ss', '8', '528100', '0757');
INSERT INTO `cities` VALUES ('1520', '肇庆', 'zq', '8', '526000', '0758');
INSERT INTO `cities` VALUES ('1521', '高要', 'gy', '8', '526100', '0758');
INSERT INTO `cities` VALUES ('1522', '四会', 'sh', '8', '526200', '0758');
INSERT INTO `cities` VALUES ('1523', '怀集', 'hj', '8', '526400', '0758');
INSERT INTO `cities` VALUES ('1524', '封开', 'fk', '8', '526500', '0758');
INSERT INTO `cities` VALUES ('1525', '德庆', 'dq', '8', '526600', '0758');
INSERT INTO `cities` VALUES ('1526', '广宁', 'gn', '8', '526300', '0758');
INSERT INTO `cities` VALUES ('1527', '湛江', 'zj', '8', '524000', '0759');
INSERT INTO `cities` VALUES ('1528', '遂溪', 'sx', '8', '524300', '0759');
INSERT INTO `cities` VALUES ('1529', '廉江', 'lj', '8', '524400', '0759');
INSERT INTO `cities` VALUES ('1530', '吴川', 'wc', '8', '524500', '0759');
INSERT INTO `cities` VALUES ('1531', '徐闻', 'xw', '8', '524100', '0759');
INSERT INTO `cities` VALUES ('1532', '雷州', 'lz', '8', '524200', '0759');
INSERT INTO `cities` VALUES ('1533', '中山', 'zs', '8', '528400', '0760');
INSERT INTO `cities` VALUES ('1534', '河源', 'hy', '8', '517000', '0762');
INSERT INTO `cities` VALUES ('1535', '连平', 'lp', '8', '517100', '0762');
INSERT INTO `cities` VALUES ('1536', '和平', 'hp', '8', '517200', '0762');
INSERT INTO `cities` VALUES ('1537', '龙川', 'lc', '8', '517300', '0762');
INSERT INTO `cities` VALUES ('1538', '紫金', 'zj', '8', '517400', '0762');
INSERT INTO `cities` VALUES ('1539', '清远', 'qy', '8', '511500', '0763');
INSERT INTO `cities` VALUES ('1540', '佛冈', 'fg', '8', '511600', '0763');
INSERT INTO `cities` VALUES ('1541', '英德', 'yd', '8', '513000', '0763');
INSERT INTO `cities` VALUES ('1542', '连山', 'ls', '8', '513200', '0763');
INSERT INTO `cities` VALUES ('1543', '阳山', 'ys', '8', '513100', '0763');
INSERT INTO `cities` VALUES ('1544', '连南', 'ln', '8', '513300', '0763');
INSERT INTO `cities` VALUES ('1545', '连州', 'lz', '8', '513400', '0763');
INSERT INTO `cities` VALUES ('1546', '顺德', 'sd', '8', '528300', '0765');
INSERT INTO `cities` VALUES ('1547', '云浮', 'yf', '8', '527300', '0766');
INSERT INTO `cities` VALUES ('1548', '罗定', 'ld', '8', '527200', '0766');
INSERT INTO `cities` VALUES ('1549', '郁南', 'yn', '8', '527100', '0766');
INSERT INTO `cities` VALUES ('1550', '新兴', 'xx', '8', '527400', '0766');
INSERT INTO `cities` VALUES ('1551', '潮州', 'cz', '8', '515600', '0768');
INSERT INTO `cities` VALUES ('1552', '潮安', 'ca', '8', '515600', '0768');
INSERT INTO `cities` VALUES ('1553', '饶平', 'rp', '8', '515700', '0768');
INSERT INTO `cities` VALUES ('1554', '东莞', 'dw', '8', '511700', '0769');
INSERT INTO `cities` VALUES ('1555', '防城港', 'fcg', '9', '535700', '0770');
INSERT INTO `cities` VALUES ('1556', '上思', 'ss', '9', '535500', '0770');
INSERT INTO `cities` VALUES ('1557', '南宁', 'nn', '9', '530000', '0771');
INSERT INTO `cities` VALUES ('1558', '上林', 'sl', '9', '530500', '0771');
INSERT INTO `cities` VALUES ('1559', '凭祥', 'px', '9', '532600', '0771');
INSERT INTO `cities` VALUES ('1560', '邕宁', 'yn', '9', '530200', '0771');
INSERT INTO `cities` VALUES ('1561', '崇左', 'cz', '9', '532200', '0771');
INSERT INTO `cities` VALUES ('1562', '宁明', 'nm', '9', '532500', '0771');
INSERT INTO `cities` VALUES ('1563', '武鸣', 'wm', '9', '530100', '0771');
INSERT INTO `cities` VALUES ('1564', '马山', 'ms', '9', '530600', '0771');
INSERT INTO `cities` VALUES ('1565', '龙州', 'lz', '9', '532400', '0771');
INSERT INTO `cities` VALUES ('1566', '宾阳', 'by', '9', '530400', '0771');
INSERT INTO `cities` VALUES ('1567', '大新', 'dx', '9', '532300', '0771');
INSERT INTO `cities` VALUES ('1568', '天等', 'td', '9', '532800', '0771');
INSERT INTO `cities` VALUES ('1569', '横县', 'hx', '9', '530300', '0771');
INSERT INTO `cities` VALUES ('1570', '隆安', 'la', '9', '532700', '0771');
INSERT INTO `cities` VALUES ('1571', '扶绥', 'fs', '9', '532100', '0771');
INSERT INTO `cities` VALUES ('1572', '柳州', 'lz', '9', '545000', '0772');
INSERT INTO `cities` VALUES ('1573', '柳江', 'lj', '9', '545100', '0772');
INSERT INTO `cities` VALUES ('1574', '鹿寨', 'lz', '9', '545600', '0772');
INSERT INTO `cities` VALUES ('1575', '柳城', 'lc', '9', '545200', '0772');
INSERT INTO `cities` VALUES ('1576', '三江', 'sj', '9', '545500', '0772');
INSERT INTO `cities` VALUES ('1577', '融安', 'ra', '9', '545400', '0772');
INSERT INTO `cities` VALUES ('1578', '融冰', 'rb', '9', '545300', '0772');
INSERT INTO `cities` VALUES ('1579', '金秀', 'jx', '9', '545700', '0772');
INSERT INTO `cities` VALUES ('1580', '合山', 'hs', '9', '546500', '0772');
INSERT INTO `cities` VALUES ('1581', '忻城', 'xc', '9', '546200', '0772');
INSERT INTO `cities` VALUES ('1582', '来宾', 'lb', '9', '546100', '0772');
INSERT INTO `cities` VALUES ('1583', '武宣', 'wx', '9', '545900', '0772');
INSERT INTO `cities` VALUES ('1584', '象州', 'xz', '9', '545800', '0772');
INSERT INTO `cities` VALUES ('1585', '桂林', 'gl', '9', '541000', '0773');
INSERT INTO `cities` VALUES ('1586', '阳朔', 'ys', '9', '541900', '0773');
INSERT INTO `cities` VALUES ('1587', '临桂', 'lg', '9', '541100', '0773');
INSERT INTO `cities` VALUES ('1588', '荔浦', 'lp', '9', '546600', '0773');
INSERT INTO `cities` VALUES ('1589', '灌阳', 'gy', '9', '541600', '0773');
INSERT INTO `cities` VALUES ('1590', '平乐', 'pl', '9', '542400', '0773');
INSERT INTO `cities` VALUES ('1591', '兴安', 'xa', '9', '541300', '0773');
INSERT INTO `cities` VALUES ('1592', '灵川', 'lc', '9', '541200', '0773');
INSERT INTO `cities` VALUES ('1593', '全州', 'qz', '9', '541500', '0773');
INSERT INTO `cities` VALUES ('1594', '永福', 'yf', '9', '541800', '0773');
INSERT INTO `cities` VALUES ('1595', '龙胜', 'ls', '9', '541700', '0773');
INSERT INTO `cities` VALUES ('1596', '恭城', 'gc', '9', '542500', '0773');
INSERT INTO `cities` VALUES ('1597', '资源', 'zy', '9', '541400', '0773');
INSERT INTO `cities` VALUES ('1598', '梧州', 'wz', '9', '543000', '0774');
INSERT INTO `cities` VALUES ('1599', '苍梧', 'cw', '9', '543100', '0774');
INSERT INTO `cities` VALUES ('1600', '藤县', 'tx', '9', '543300', '0774');
INSERT INTO `cities` VALUES ('1601', '岑溪', 'cx', '9', '543200', '0774');
INSERT INTO `cities` VALUES ('1602', '昭平', 'zp', '9', '546800', '0774');
INSERT INTO `cities` VALUES ('1603', '贺县', 'hx', '9', '542800', '0774');
INSERT INTO `cities` VALUES ('1604', '蒙山', 'ms', '9', '546700', '0774');
INSERT INTO `cities` VALUES ('1605', '钟山', 'zs', '9', '542600', '0774');
INSERT INTO `cities` VALUES ('1606', '富川', 'fc', '9', '542700', '0774');
INSERT INTO `cities` VALUES ('1607', '玉林', 'yl', '9', '537000', '0775');
INSERT INTO `cities` VALUES ('1608', '容县', 'rx', '9', '537500', '0775');
INSERT INTO `cities` VALUES ('1609', '北流', 'bl', '9', '537400', '0775');
INSERT INTO `cities` VALUES ('1610', '陆川', 'lc', '9', '537700', '0775');
INSERT INTO `cities` VALUES ('1611', '博白', 'bb', '9', '537600', '0775');
INSERT INTO `cities` VALUES ('1612', '贵港', 'gg', '9', '537100', '0775');
INSERT INTO `cities` VALUES ('1613', '桂平', 'gp', '9', '537200', '0775');
INSERT INTO `cities` VALUES ('1614', '平南', 'pn', '9', '537300', '0775');
INSERT INTO `cities` VALUES ('1615', '百色', 'bs', '9', '533000', '0776');
INSERT INTO `cities` VALUES ('1616', '田林', 'tl', '9', '533300', '0776');
INSERT INTO `cities` VALUES ('1617', '隆林', 'll', '9', '533400', '0776');
INSERT INTO `cities` VALUES ('1618', '西林', 'xl', '9', '533500', '0776');
INSERT INTO `cities` VALUES ('1619', '凌云', 'ly', '9', '533100', '0776');
INSERT INTO `cities` VALUES ('1620', '田阳', 'ty', '9', '533600', '0776');
INSERT INTO `cities` VALUES ('1621', '靖西', 'jx', '9', '533800', '0776');
INSERT INTO `cities` VALUES ('1622', '田东', 'td', '9', '531500', '0776');
INSERT INTO `cities` VALUES ('1623', '乐业', 'ly', '9', '533200', '0776');
INSERT INTO `cities` VALUES ('1624', '平果', 'pg', '9', '531400', '0776');
INSERT INTO `cities` VALUES ('1625', '德保', 'db', '9', '533700', '0776');
INSERT INTO `cities` VALUES ('1626', '那坡', 'np', '9', '533900', '0776');
INSERT INTO `cities` VALUES ('1627', '钦州', 'qz', '9', '535000', '0777');
INSERT INTO `cities` VALUES ('1628', '灵山', 'ls', '9', '535400', '0777');
INSERT INTO `cities` VALUES ('1629', '浦北', 'pb', '9', '535300', '0777');
INSERT INTO `cities` VALUES ('1630', '河池', 'hc', '9', '547000', '0778');
INSERT INTO `cities` VALUES ('1631', '宜州', 'yz', '9', '546300', '0778');
INSERT INTO `cities` VALUES ('1632', '罗城', 'lc', '9', '546400', '0778');
INSERT INTO `cities` VALUES ('1633', '环江', 'hj', '9', '547100', '0778');
INSERT INTO `cities` VALUES ('1634', '天峨', 'te', '9', '547300', '0778');
INSERT INTO `cities` VALUES ('1635', '凤山', 'fs', '9', '547600', '0778');
INSERT INTO `cities` VALUES ('1636', '东兰', 'dl', '9', '547400', '0778');
INSERT INTO `cities` VALUES ('1637', '南丹', 'nd', '9', '547200', '0778');
INSERT INTO `cities` VALUES ('1638', '巴马', 'bm', '9', '547500', '0778');
INSERT INTO `cities` VALUES ('1639', '都安', 'da', '9', '530700', '0778');
INSERT INTO `cities` VALUES ('1640', '大化', 'dh', '9', '530800', '0778');
INSERT INTO `cities` VALUES ('1641', '北海', 'bh', '9', '536000', '0779');
INSERT INTO `cities` VALUES ('1642', '合浦', 'hp', '9', '536100', '0779');
INSERT INTO `cities` VALUES ('1643', '新余', 'xy', '18', '336500', '0790');
INSERT INTO `cities` VALUES ('1644', '分宜', 'fy', '18', '336600', '0790');
INSERT INTO `cities` VALUES ('1645', '南昌', 'nc', '18', '330000', '0791');
INSERT INTO `cities` VALUES ('1646', '南昌县', 'ncx', '18', '330200', '0791');
INSERT INTO `cities` VALUES ('1647', '新建', 'xj', '18', '330100', '0791');
INSERT INTO `cities` VALUES ('1648', '进贤', 'jx', '18', '331700', '0791');
INSERT INTO `cities` VALUES ('1649', '安义', 'ay', '18', '330500', '0791');
INSERT INTO `cities` VALUES ('1650', '九江', 'jj', '18', '332000', '0792');
INSERT INTO `cities` VALUES ('1651', '九江县', 'jjx', '18', '332100', '0792');
INSERT INTO `cities` VALUES ('1652', '庐山', 'ls', '18', '332900', '0792');
INSERT INTO `cities` VALUES ('1653', '修水', 'xs', '18', '322400', '0792');
INSERT INTO `cities` VALUES ('1654', '湖口', 'hk', '18', '332500', '0792');
INSERT INTO `cities` VALUES ('1655', '星子', 'xz', '18', '332800', '0792');
INSERT INTO `cities` VALUES ('1656', '瑞昌', 'rc', '18', '333200', '0792');
INSERT INTO `cities` VALUES ('1657', '德安', 'da', '18', '330400', '0792');
INSERT INTO `cities` VALUES ('1658', '彭泽', 'pz', '18', '332700', '0792');
INSERT INTO `cities` VALUES ('1659', '都昌', 'dc', '18', '332600', '0792');
INSERT INTO `cities` VALUES ('1660', '永修', 'yx', '18', '330300', '0792');
INSERT INTO `cities` VALUES ('1661', '武宁', 'wn', '18', '332300', '0792');
INSERT INTO `cities` VALUES ('1662', '上饶', 'sr', '18', '334000', '0793');
INSERT INTO `cities` VALUES ('1663', '上饶县', 'srx', '18', '334100', '0793');
INSERT INTO `cities` VALUES ('1664', '玉山', 'ys', '18', '334700', '0793');
INSERT INTO `cities` VALUES ('1665', '余干', 'yg', '18', '335100', '0793');
INSERT INTO `cities` VALUES ('1666', '弋阳', 'yy', '18', '334400', '0793');
INSERT INTO `cities` VALUES ('1667', '波阳', 'by', '18', '333100', '0793');
INSERT INTO `cities` VALUES ('1668', '广丰', 'gf', '18', '334600', '0793');
INSERT INTO `cities` VALUES ('1669', '万年', 'wn', '18', '335500', '0793');
INSERT INTO `cities` VALUES ('1670', '铅山', 'qs', '18', '334500', '0793');
INSERT INTO `cities` VALUES ('1671', '横峰', 'hf', '18', '334300', '0793');
INSERT INTO `cities` VALUES ('1672', '婺源', 'wy', '18', '333200', '0793');
INSERT INTO `cities` VALUES ('1673', '德兴', 'dx', '18', '334200', '0793');
INSERT INTO `cities` VALUES ('1674', '抚州', 'fz', '18', '344000', '0794');
INSERT INTO `cities` VALUES ('1675', '资溪', 'zx', '18', '335300', '0794');
INSERT INTO `cities` VALUES ('1676', '广昌', 'gc', '18', '344900', '0794');
INSERT INTO `cities` VALUES ('1677', '东乡', 'dx', '18', '331800', '0794');
INSERT INTO `cities` VALUES ('1678', '金溪', 'jx', '18', '344800', '0794');
INSERT INTO `cities` VALUES ('1679', '崇仁', 'cr', '18', '344200', '0794');
INSERT INTO `cities` VALUES ('1680', '临川', 'lc', '18', '344100', '0794');
INSERT INTO `cities` VALUES ('1681', '宜黄', 'yh', '18', '344400', '0794');
INSERT INTO `cities` VALUES ('1682', '尔安', 'ra', '18', '344300', '0794');
INSERT INTO `cities` VALUES ('1683', '南城', 'nc', '18', '344700', '0794');
INSERT INTO `cities` VALUES ('1684', '南丰', 'nf', '18', '344500', '0794');
INSERT INTO `cities` VALUES ('1685', '黎川', 'lc', '18', '344600', '0794');
INSERT INTO `cities` VALUES ('1686', '宜春', 'yc', '18', '336000', '0795');
INSERT INTO `cities` VALUES ('1687', '宜丰', 'yf', '18', '336300', '0795');
INSERT INTO `cities` VALUES ('1688', '上高', 'sg', '18', '336400', '0795');
INSERT INTO `cities` VALUES ('1689', '奉新', 'fx', '18', '330700', '0795');
INSERT INTO `cities` VALUES ('1690', '靖安', 'ja', '18', '330600', '0795');
INSERT INTO `cities` VALUES ('1691', '高安', 'ga', '18', '330800', '0795');
INSERT INTO `cities` VALUES ('1692', '丰城', 'fc', '18', '331100', '0795');
INSERT INTO `cities` VALUES ('1693', '樟树', 'zs', '18', '331200', '0795');
INSERT INTO `cities` VALUES ('1694', '万载', 'wz', '18', '336100', '0795');
INSERT INTO `cities` VALUES ('1695', '铜鼓', 'tg', '18', '336200', '0795');
INSERT INTO `cities` VALUES ('1696', '吉安', 'ja', '18', '343000', '0796');
INSERT INTO `cities` VALUES ('1697', '吉安县', 'jax', '18', '343100', '0796');
INSERT INTO `cities` VALUES ('1698', '新干', 'xg', '18', '331300', '0796');
INSERT INTO `cities` VALUES ('1699', '永丰', 'yf', '18', '331500', '0796');
INSERT INTO `cities` VALUES ('1700', '吉水', 'js', '18', '331600', '0796');
INSERT INTO `cities` VALUES ('1701', '峡江', 'xj', '18', '331400', '0796');
INSERT INTO `cities` VALUES ('1702', '泰和', 'th', '18', '343700', '0796');
INSERT INTO `cities` VALUES ('1703', '万安', 'wa', '18', '343800', '0796');
INSERT INTO `cities` VALUES ('1704', '遂川', 'sc', '18', '343900', '0796');
INSERT INTO `cities` VALUES ('1705', '宁冈', 'ng', '18', '343500', '0796');
INSERT INTO `cities` VALUES ('1706', '永新', 'yx', '18', '343400', '0796');
INSERT INTO `cities` VALUES ('1707', '井岗山', 'jgs', '18', '343600', '0796');
INSERT INTO `cities` VALUES ('1708', '安福', 'af', '18', '343200', '0796');
INSERT INTO `cities` VALUES ('1709', '赣州', 'gz', '18', '341000', '0797');
INSERT INTO `cities` VALUES ('1710', '瑞金', 'rj', '18', '342500', '0797');
INSERT INTO `cities` VALUES ('1711', '于都', 'yd', '18', '342300', '0797');
INSERT INTO `cities` VALUES ('1712', '兴国', 'xg', '18', '342400', '0797');
INSERT INTO `cities` VALUES ('1713', '宁都', 'nd', '18', '342800', '0797');
INSERT INTO `cities` VALUES ('1714', '石城', 'sc', '18', '342700', '0797');
INSERT INTO `cities` VALUES ('1715', '寻乌', 'xw', '18', '342200', '0797');
INSERT INTO `cities` VALUES ('1716', '南康', 'nk', '18', '341400', '0797');
INSERT INTO `cities` VALUES ('1717', '赣县', 'gx', '18', '341100', '0797');
INSERT INTO `cities` VALUES ('1718', '大余', 'dy', '18', '341500', '0797');
INSERT INTO `cities` VALUES ('1719', '上犹', 'sy', '18', '341200', '0797');
INSERT INTO `cities` VALUES ('1720', '崇义', 'cy', '18', '341300', '0797');
INSERT INTO `cities` VALUES ('1721', '信丰', 'xf', '18', '341600', '0797');
INSERT INTO `cities` VALUES ('1722', '龙南', 'ln', '18', '341700', '0797');
INSERT INTO `cities` VALUES ('1723', '定南', 'dn', '18', '341900', '0797');
INSERT INTO `cities` VALUES ('1724', '全南', 'qn', '18', '341800', '0797');
INSERT INTO `cities` VALUES ('1725', '安远', 'ay', '18', '342100', '0797');
INSERT INTO `cities` VALUES ('1726', '会昌', 'hc', '18', '342600', '0797');
INSERT INTO `cities` VALUES ('1727', '景德镇', 'jdz', '18', '333000', '0798');
INSERT INTO `cities` VALUES ('1728', '乐平', 'lp', '18', '333300', '0798');
INSERT INTO `cities` VALUES ('1729', '浮梁', 'fl', '18', '333400', '0798');
INSERT INTO `cities` VALUES ('1730', '萍乡', 'px', '18', '337000', '0799');
INSERT INTO `cities` VALUES ('1731', '莲花', 'lh', '18', '337100', '0799');
INSERT INTO `cities` VALUES ('1732', '鹰潭', 'yt', '18', '335000', '0701');
INSERT INTO `cities` VALUES ('1733', '贵溪', 'gx', '18', '335400', '0701');
INSERT INTO `cities` VALUES ('1734', '余江', 'yj', '18', '335200', '0701');
INSERT INTO `cities` VALUES ('1735', '成都', 'cd', '26', '610000', '028');
INSERT INTO `cities` VALUES ('1736', '温江', 'wj', '26', '611100', '028');
INSERT INTO `cities` VALUES ('1737', '金堂', 'jt', '26', '610400', '028');
INSERT INTO `cities` VALUES ('1738', '双流', 'sl', '26', '610200', '028');
INSERT INTO `cities` VALUES ('1739', '新津', 'xj', '26', '611400', '028');
INSERT INTO `cities` VALUES ('1740', '蒲江', 'pj', '26', '611600', '028');
INSERT INTO `cities` VALUES ('1741', '郫县', 'px', '26', '611700', '028');
INSERT INTO `cities` VALUES ('1742', '新都', 'xd', '26', '610500', '028');
INSERT INTO `cities` VALUES ('1743', '彭州', 'pz', '26', '611900', '028');
INSERT INTO `cities` VALUES ('1744', '都江堰', 'djy', '26', '611800', '028');
INSERT INTO `cities` VALUES ('1745', '崇州', 'cz', '26', '611200', '028');
INSERT INTO `cities` VALUES ('1746', '大邑', 'dy', '26', '611300', '028');
INSERT INTO `cities` VALUES ('1747', '邛崃', 'ql', '26', '611500', '028');
INSERT INTO `cities` VALUES ('1748', '攀枝花', 'pzh', '26', '617000', '0812');
INSERT INTO `cities` VALUES ('1749', '自贡', 'zg', '26', '643000', '0813');
INSERT INTO `cities` VALUES ('1750', '富顺', 'fs', '26', '643200', '0813');
INSERT INTO `cities` VALUES ('1751', '荣县', 'rx', '26', '643100', '0813');
INSERT INTO `cities` VALUES ('1752', '绵阳', 'my', '26', '621000', '0816');
INSERT INTO `cities` VALUES ('1753', '平武', 'pw', '26', '622500', '0816');
INSERT INTO `cities` VALUES ('1754', '安县', 'ax', '26', '622600', '0816');
INSERT INTO `cities` VALUES ('1755', '江油', 'jy', '26', '621700', '0816');
INSERT INTO `cities` VALUES ('1756', '梓潼', 'zt', '26', '622100', '0816');
INSERT INTO `cities` VALUES ('1757', '三台', 'st', '26', '621100', '0816');
INSERT INTO `cities` VALUES ('1758', '盐亭', 'yt', '26', '621600', '0816');
INSERT INTO `cities` VALUES ('1759', '南充', 'nc', '26', '637100', '0817');
INSERT INTO `cities` VALUES ('1760', '西充', 'xc', '26', '637200', '0817');
INSERT INTO `cities` VALUES ('1761', '南部', 'nb', '26', '637300', '0817');
INSERT INTO `cities` VALUES ('1762', '阆中', 'lz', '26', '637400', '0817');
INSERT INTO `cities` VALUES ('1763', '营山', 'ys', '26', '638150', '0817');
INSERT INTO `cities` VALUES ('1764', '蓬安', 'pa', '26', '638200', '0817');
INSERT INTO `cities` VALUES ('1765', '仪陇', 'yl', '26', '637600', '0817');
INSERT INTO `cities` VALUES ('1766', '达川', 'dc', '26', '636400', '0818');
INSERT INTO `cities` VALUES ('1767', '宣汉', 'xh', '26', '636100', '0818');
INSERT INTO `cities` VALUES ('1768', '开江', 'kj', '26', '636200', '0818');
INSERT INTO `cities` VALUES ('1769', '万源', 'wy', '26', '636300', '0818');
INSERT INTO `cities` VALUES ('1770', '大竹', 'dz', '26', '635100', '0818');
INSERT INTO `cities` VALUES ('1771', '渠县', 'qx', '26', '635200', '0818');
INSERT INTO `cities` VALUES ('1772', '遂宁', 'sn', '26', '629000', '0825');
INSERT INTO `cities` VALUES ('1773', '蓬溪', 'px', '26', '629100', '0825');
INSERT INTO `cities` VALUES ('1774', '射洪', 'sh', '26', '629200', '0825');
INSERT INTO `cities` VALUES ('1775', '广安', 'ga', '26', '638000', '0826');
INSERT INTO `cities` VALUES ('1776', '岳池', 'yc', '26', '638300', '0826');
INSERT INTO `cities` VALUES ('1777', '武胜', 'ws', '26', '638400', '0825');
INSERT INTO `cities` VALUES ('1778', '华蓥', 'hy', '26', '638600', '0825');
INSERT INTO `cities` VALUES ('1779', '邻水', 'ls', '26', '635300', '0830');
INSERT INTO `cities` VALUES ('1780', '泸州', 'lz', '26', '646000', '0830');
INSERT INTO `cities` VALUES ('1781', '合江', 'hj', '26', '646200', '0830');
INSERT INTO `cities` VALUES ('1782', '纳溪', 'nx', '26', '646300', '0830');
INSERT INTO `cities` VALUES ('1783', '叙永', 'xy', '26', '646400', '0830');
INSERT INTO `cities` VALUES ('1784', '古蔺', 'gl', '26', '646500', '0830');
INSERT INTO `cities` VALUES ('1785', '宜宾', 'yb', '26', '644000', '0831');
INSERT INTO `cities` VALUES ('1786', '南溪', 'nx', '26', '644100', '0831');
INSERT INTO `cities` VALUES ('1787', '屏山', 'ps', '26', '645300', '0831');
INSERT INTO `cities` VALUES ('1788', '兴文', 'xw', '26', '644400', '0831');
INSERT INTO `cities` VALUES ('1789', '长宁', 'cn', '26', '644300', '0831');
INSERT INTO `cities` VALUES ('1790', '珙县', 'gx', '26', '644500', '0831');
INSERT INTO `cities` VALUES ('1791', '高县', 'gx', '26', '645100', '0831');
INSERT INTO `cities` VALUES ('1792', '筠连', 'jl', '26', '645200', '0831');
INSERT INTO `cities` VALUES ('1793', '江安', 'ja', '26', '644200', '0831');
INSERT INTO `cities` VALUES ('1794', '内江', 'nj', '26', '641000', '0832');
INSERT INTO `cities` VALUES ('1795', '资中', 'zz', '26', '641200', '0832');
INSERT INTO `cities` VALUES ('1796', '资阳', 'zy', '26', '641300', '0832');
INSERT INTO `cities` VALUES ('1797', '简阳', 'jy', '26', '641400', '0832');
INSERT INTO `cities` VALUES ('1798', '威远', 'wy', '26', '642400', '0832');
INSERT INTO `cities` VALUES ('1799', '隆昌', 'lc', '26', '642100', '0832');
INSERT INTO `cities` VALUES ('1800', '乐至', 'lz', '26', '641500', '0832');
INSERT INTO `cities` VALUES ('1801', '乐山', 'ls', '26', '614000', '0833');
INSERT INTO `cities` VALUES ('1802', '峨边', 'eb', '26', '614300', '0833');
INSERT INTO `cities` VALUES ('1803', '眉山', 'ms', '26', '612100', '0833');
INSERT INTO `cities` VALUES ('1804', '峨眉山', 'ems', '26', '614200', '0833');
INSERT INTO `cities` VALUES ('1805', '仁寿', 'rs', '26', '612500', '0833');
INSERT INTO `cities` VALUES ('1806', '井研', 'jy', '26', '612600', '0833');
INSERT INTO `cities` VALUES ('1807', '洪雅', 'hy', '26', '612300', '0833');
INSERT INTO `cities` VALUES ('1808', '沐川', 'mc', '26', '614500', '0833');
INSERT INTO `cities` VALUES ('1809', '彭山', 'ps', '26', '612700', '0833');
INSERT INTO `cities` VALUES ('1810', '青神', 'qs', '26', '612400', '0833');
INSERT INTO `cities` VALUES ('1811', '丹梭', 'ds', '26', '612200', '0833');
INSERT INTO `cities` VALUES ('1812', '马边', 'mb', '26', '614600', '0833');
INSERT INTO `cities` VALUES ('1813', '犍为', 'jw', '26', '614400', '0833');
INSERT INTO `cities` VALUES ('1814', '夹江', 'jj', '26', '614100', '0833');
INSERT INTO `cities` VALUES ('1815', '金口河', 'jkh', '26', '614700', '0833');
INSERT INTO `cities` VALUES ('1816', '西昌', 'xc', '26', '615000', '0834');
INSERT INTO `cities` VALUES ('1817', '雅安', 'ya', '26', '625000', '0835');
INSERT INTO `cities` VALUES ('1818', '康定', 'kd', '26', '626000', '0836');
INSERT INTO `cities` VALUES ('1819', '马尔康', 'mrk', '26', '624000', '0837');
INSERT INTO `cities` VALUES ('1820', '德阳', 'dy', '26', '618200', '0838');
INSERT INTO `cities` VALUES ('1821', '广汉', 'gh', '26', '618300', '0838');
INSERT INTO `cities` VALUES ('1822', '什邡', 'sf', '26', '618400', '0838');
INSERT INTO `cities` VALUES ('1823', '绵竹', 'mz', '26', '618200', '0838');
INSERT INTO `cities` VALUES ('1824', '中江', 'zj', '26', '618100', '0838');
INSERT INTO `cities` VALUES ('1825', '广元', 'gy', '26', '628000', '0839');
INSERT INTO `cities` VALUES ('1826', '剑阁', 'jg', '26', '628300', '0839');
INSERT INTO `cities` VALUES ('1827', '旺苍', 'wc', '26', '628200', '0839');
INSERT INTO `cities` VALUES ('1828', '青川', 'qc', '26', '628100', '0839');
INSERT INTO `cities` VALUES ('1829', '苍溪', 'cx', '26', '628400', '0839');
INSERT INTO `cities` VALUES ('1830', '璧山', 'bs', '26', '632700', '08225');
INSERT INTO `cities` VALUES ('1831', '米易', 'my', '26', '617200', '08228');
INSERT INTO `cities` VALUES ('1832', '盐边', 'yb', '26', '617100', '08229');
INSERT INTO `cities` VALUES ('1833', '宁南', 'nn', '26', '615400', '08241');
INSERT INTO `cities` VALUES ('1834', '盐源', 'yy', '26', '615700', '08247');
INSERT INTO `cities` VALUES ('1835', '平昌', 'pc', '26', '635400', '08270');
INSERT INTO `cities` VALUES ('1836', '通江', 'tj', '26', '635700', '08277');
INSERT INTO `cities` VALUES ('1837', '南江', 'nj', '26', '635600', '08278');
INSERT INTO `cities` VALUES ('1838', '巴中', 'bz', '26', '635500', '08279');
INSERT INTO `cities` VALUES ('1839', '酉阳', 'yy', '26', '648800', '08295');
INSERT INTO `cities` VALUES ('1840', '秀山', 'xs', '26', '648900', '08296');
INSERT INTO `cities` VALUES ('1841', '彭水', 'ps', '26', '648600', '08298');
INSERT INTO `cities` VALUES ('1842', '理县', 'lx', '26', '623100', '08407');
INSERT INTO `cities` VALUES ('1843', '昭觉', 'zj', '26', '616100', '08411');
INSERT INTO `cities` VALUES ('1844', '甘洛', 'gl', '26', '616800', '08417');
INSERT INTO `cities` VALUES ('1845', '宝兴', 'bx', '26', '625700', '08430');
INSERT INTO `cities` VALUES ('1846', '石棉', 'sm', '26', '625400', '07437');
INSERT INTO `cities` VALUES ('1847', '木里', 'ml', '26', '615800', '08440');
INSERT INTO `cities` VALUES ('1848', '会理', 'hl', '26', '615100', '08444');
INSERT INTO `cities` VALUES ('1849', '会东', 'hd', '26', '615200', '08445');
INSERT INTO `cities` VALUES ('1850', '冕宁', 'mn', '26', '615600', '08447');
INSERT INTO `cities` VALUES ('1851', '越西', 'yx', '26', '616600', '08452');
INSERT INTO `cities` VALUES ('1852', '雷波', 'lb', '26', '616500', '08453');
INSERT INTO `cities` VALUES ('1853', '喜德', 'xd', '26', '616700', '08455');
INSERT INTO `cities` VALUES ('1854', '普格', 'pg', '26', '615300', '08456');
INSERT INTO `cities` VALUES ('1855', '布拖', 'bt', '26', '616300', '08457');
INSERT INTO `cities` VALUES ('1856', '金阳', 'jy', '26', '616200', '08458');
INSERT INTO `cities` VALUES ('1857', '美姑', 'mg', '26', '616400', '08459');
INSERT INTO `cities` VALUES ('1858', '名山', 'ms', '26', '625100', '08461');
INSERT INTO `cities` VALUES ('1859', '荥经', 'yj', '26', '625200', '08462');
INSERT INTO `cities` VALUES ('1860', '汉源', 'hy', '26', '625300', '08463');
INSERT INTO `cities` VALUES ('1861', '天全', 'tq', '26', '625500', '08465');
INSERT INTO `cities` VALUES ('1862', '芦山', 'ls', '26', '625600', '08466');
INSERT INTO `cities` VALUES ('1863', '汶川', 'wc', '26', '623000', '08489');
INSERT INTO `cities` VALUES ('1864', '松潘', 'sp', '26', '623300', '08493');
INSERT INTO `cities` VALUES ('1865', '海口', 'hk', '31', '570000', '0898');
INSERT INTO `cities` VALUES ('1866', '澄迈', 'cm', '31', '571900', '0898');
INSERT INTO `cities` VALUES ('1867', '安定', 'ad', '31', '571200', '0898');
INSERT INTO `cities` VALUES ('1868', '文昌', 'wc', '31', '571300', '0898');
INSERT INTO `cities` VALUES ('1869', '屯昌', 'tc', '31', '571600', '0898');
INSERT INTO `cities` VALUES ('1870', '琼海', 'qh', '31', '571400', '0898');
INSERT INTO `cities` VALUES ('1871', '万宁', 'wn', '31', '571500', '0898');
INSERT INTO `cities` VALUES ('1872', '琼山', 'qs', '31', '571100', '0898');
INSERT INTO `cities` VALUES ('1873', '三亚', 'sy', '31', '572000', '0899');
INSERT INTO `cities` VALUES ('1874', '通什', 'ts', '31', '572200', '0899');
INSERT INTO `cities` VALUES ('1875', '乐东', 'ld', '31', '572500', '0899');
INSERT INTO `cities` VALUES ('1876', '保亭', 'bt', '31', '572300', '0899');
INSERT INTO `cities` VALUES ('1877', '陵水', 'ls', '31', '572400', '0899');
INSERT INTO `cities` VALUES ('1878', '琼中', 'qz', '31', '572900', '0899');
INSERT INTO `cities` VALUES ('1879', '儋州', 'dz', '31', '571700', '0890');
INSERT INTO `cities` VALUES ('1880', '白沙', 'bs', '31', '572800', '0890');
INSERT INTO `cities` VALUES ('1881', '洋浦', 'yp', '31', '578000', '0890');
INSERT INTO `cities` VALUES ('1882', '东方', 'df', '31', '572600', '0890');
INSERT INTO `cities` VALUES ('1883', '昌江', 'cj', '31', '572700', '0890');
INSERT INTO `cities` VALUES ('1884', '临高', 'lg', '31', '571800', '0890');
INSERT INTO `cities` VALUES ('1885', '贵阳', 'gy', '10', '550000', '0851');
INSERT INTO `cities` VALUES ('1886', '清镇', 'qz', '10', '551400', '0851');
INSERT INTO `cities` VALUES ('1887', '修文', 'xw', '10', '550200', '0851');
INSERT INTO `cities` VALUES ('1888', '息烽', 'xf', '10', '551100', '0851');
INSERT INTO `cities` VALUES ('1889', '开阳', 'ky', '10', '550300', '0851');
INSERT INTO `cities` VALUES ('1890', '遵义', 'zy', '10', '563000', '0852');
INSERT INTO `cities` VALUES ('1891', '赤水', 'cs', '10', '564700', '0852');
INSERT INTO `cities` VALUES ('1892', '习水', 'xs', '10', '564600', '0852');
INSERT INTO `cities` VALUES ('1893', '仁怀', 'rh', '10', '564500', '0852');
INSERT INTO `cities` VALUES ('1894', '遵义县', 'zyx', '10', '563100', '0852');
INSERT INTO `cities` VALUES ('1895', '桐梓', 'tz', '10', '563200', '0852');
INSERT INTO `cities` VALUES ('1896', '绥阳', 'sy', '10', '533300', '0852');
INSERT INTO `cities` VALUES ('1897', '正安', 'za', '10', '563400', '0852');
INSERT INTO `cities` VALUES ('1898', '道真', 'dz', '10', '563500', '0852');
INSERT INTO `cities` VALUES ('1899', '湄潭', 'mt', '10', '564100', '0852');
INSERT INTO `cities` VALUES ('1900', '凤冈', 'fg', '10', '564200', '0852');
INSERT INTO `cities` VALUES ('1901', '务川', 'wc', '10', '564300', '0852');
INSERT INTO `cities` VALUES ('1902', '余庆', 'yq', '10', '564400', '0852');
INSERT INTO `cities` VALUES ('1903', '安顺', 'as', '10', '561000', '0853');
INSERT INTO `cities` VALUES ('1904', '都匀', 'dy', '10', '558000', '0854');
INSERT INTO `cities` VALUES ('1905', '凯里', 'kl', '10', '556000', '0855');
INSERT INTO `cities` VALUES ('1906', '铜仁', 'tr', '10', '564300', '0856');
INSERT INTO `cities` VALUES ('1907', '毕节', 'bj', '10', '551700', '0857');
INSERT INTO `cities` VALUES ('1908', '六盘水', 'lps', '10', '553000', '0858');
INSERT INTO `cities` VALUES ('1909', '兴义', 'xy', '10', '562400', '0859');
INSERT INTO `cities` VALUES ('1910', '册亨', 'ch', '10', '552200', '0859');
INSERT INTO `cities` VALUES ('1911', '望谟', 'wm', '10', '552300', '0859');
INSERT INTO `cities` VALUES ('1912', '安龙', 'al', '10', '552400', '0859');
INSERT INTO `cities` VALUES ('1913', '兴仁', 'xr', '10', '562300', '0859');
INSERT INTO `cities` VALUES ('1914', '贞丰', 'zf', '10', '562200', '0859');
INSERT INTO `cities` VALUES ('1915', '普安', 'pa', '10', '561500', '0859');
INSERT INTO `cities` VALUES ('1916', '晴隆', 'ql', '10', '561400', '0859');
INSERT INTO `cities` VALUES ('1917', '平坝', 'pb', '10', '561100', '08631');
INSERT INTO `cities` VALUES ('1918', '紫云', 'zy', '10', '550800', '08632');
INSERT INTO `cities` VALUES ('1919', '关岭', 'gl', '10', '561300', '08633');
INSERT INTO `cities` VALUES ('1920', '镇宁', 'zn', '10', '561200', '08634');
INSERT INTO `cities` VALUES ('1921', '普定', 'pd', '10', '562100', '08635');
INSERT INTO `cities` VALUES ('1922', '贵定', 'gd', '10', '551300', '08640');
INSERT INTO `cities` VALUES ('1923', '福泉', 'fq', '10', '550500', '08641');
INSERT INTO `cities` VALUES ('1924', '瓮安', 'wa', '10', '550400', '08642');
INSERT INTO `cities` VALUES ('1925', '三都', 'sd', '10', '558100', '08643');
INSERT INTO `cities` VALUES ('1926', '荔波', 'lb', '10', '558400', '08644');
INSERT INTO `cities` VALUES ('1927', '独山', 'ds', '10', '558200', '08645');
INSERT INTO `cities` VALUES ('1928', '平塘', 'pt', '10', '558300', '08646');
INSERT INTO `cities` VALUES ('1929', '罗甸', 'ld', '10', '550100', '08647');
INSERT INTO `cities` VALUES ('1930', '惠水', 'hs', '10', '550600', '08648');
INSERT INTO `cities` VALUES ('1931', '龙里', 'll', '10', '551200', '08649');
INSERT INTO `cities` VALUES ('1932', '榕江', 'rj', '10', '557200', '08650');
INSERT INTO `cities` VALUES ('1933', '黄平', 'hp', '10', '556100', '08651');
INSERT INTO `cities` VALUES ('1934', '施秉', 'sb', '10', '556200', '08652');
INSERT INTO `cities` VALUES ('1935', '镇远', 'zy', '10', '557700', '08653');
INSERT INTO `cities` VALUES ('1936', '岑巩', 'cg', '10', '557800', '08654');
INSERT INTO `cities` VALUES ('1937', '三穗', 'ss', '10', '556500', '08655');
INSERT INTO `cities` VALUES ('1938', '天柱', 'tz', '10', '556600', '08656');
INSERT INTO `cities` VALUES ('1939', '锦屏', 'jp', '10', '556700', '08657');
INSERT INTO `cities` VALUES ('1940', '黎平', 'lp', '10', '557300', '08658');
INSERT INTO `cities` VALUES ('1941', '从江', 'cj', '10', '557400', '08659');
INSERT INTO `cities` VALUES ('1942', '沿河', 'yh', '10', '565300', '08661');
INSERT INTO `cities` VALUES ('1943', '松桃', 'st', '10', '554100', '08662');
INSERT INTO `cities` VALUES ('1944', '万山', 'ws', '10', '554200', '08663');
INSERT INTO `cities` VALUES ('1945', '玉屏', 'yp', '10', '554000', '08664');
INSERT INTO `cities` VALUES ('1946', '江口', 'jk', '10', '554400', '08665');
INSERT INTO `cities` VALUES ('1947', '石阡', 'sq', '10', '555100', '08666');
INSERT INTO `cities` VALUES ('1948', '思南', 'sn', '10', '565100', '08667');
INSERT INTO `cities` VALUES ('1949', '印江', 'yj', '10', '555200', '08668');
INSERT INTO `cities` VALUES ('1950', '德江', 'dj', '10', '565200', '08669');
INSERT INTO `cities` VALUES ('1951', '长顺', 'cs', '10', '550700', '08670');
INSERT INTO `cities` VALUES ('1952', '威宁', 'wn', '10', '553100', '08671');
INSERT INTO `cities` VALUES ('1953', '赫章', 'hz', '10', '553200', '08672');
INSERT INTO `cities` VALUES ('1954', '纳雍', 'ny', '10', '553300', '08673');
INSERT INTO `cities` VALUES ('1955', '黔西', 'qx', '10', '551500', '08674');
INSERT INTO `cities` VALUES ('1956', '大方', 'df', '10', '551600', '08675');
INSERT INTO `cities` VALUES ('1957', '金沙', 'js', '10', '551800', '08676');
INSERT INTO `cities` VALUES ('1958', '织金', 'zj', '10', '552100', '08677');
INSERT INTO `cities` VALUES ('1959', '剑河', 'jh', '10', '556400', '08680');
INSERT INTO `cities` VALUES ('1960', '六枝', 'lz', '10', '553400', '08681');
INSERT INTO `cities` VALUES ('1961', '盘县', 'px', '10', '561600', '08682');
INSERT INTO `cities` VALUES ('1962', '雷山', 'ls', '10', '557100', '08686');
INSERT INTO `cities` VALUES ('1963', '丹寨', 'dz', '10', '557500', '08687');
INSERT INTO `cities` VALUES ('1964', '麻江', 'mj', '10', '557600', '08688');
INSERT INTO `cities` VALUES ('1965', '台江', 'tj', '10', '556300', '08689');
INSERT INTO `cities` VALUES ('1966', '昭通', 'zt', '29', '657000', '0870');
INSERT INTO `cities` VALUES ('1967', '镇雄', 'zx', '29', '657200', '0870');
INSERT INTO `cities` VALUES ('1968', '永善', 'ys', '29', '657300', '0870');
INSERT INTO `cities` VALUES ('1969', '彝良', 'yl', '29', '657600', '0870');
INSERT INTO `cities` VALUES ('1970', '大关', 'dg', '29', '657400', '0870');
INSERT INTO `cities` VALUES ('1971', '威信', 'wx', '29', '657900', '0870');
INSERT INTO `cities` VALUES ('1972', '盐津', 'yj', '29', '657500', '0870');
INSERT INTO `cities` VALUES ('1973', '巧家', 'qj', '29', '654600', '0870');
INSERT INTO `cities` VALUES ('1974', '绥江', 'sj', '29', '657700', '0870');
INSERT INTO `cities` VALUES ('1975', '鲁甸', 'ld', '29', '657100', '0870');
INSERT INTO `cities` VALUES ('1976', '水富', 'sf', '29', '657800', '0870');
INSERT INTO `cities` VALUES ('1977', '昆明', 'km', '29', '650000', '0871');
INSERT INTO `cities` VALUES ('1978', '富民', 'fm', '29', '650400', '0871');
INSERT INTO `cities` VALUES ('1979', '嵩明', 'sm', '29', '651700', '0871');
INSERT INTO `cities` VALUES ('1980', '宜良', 'yl', '29', '652100', '0871');
INSERT INTO `cities` VALUES ('1981', '呈贡', 'cg', '29', '650500', '0871');
INSERT INTO `cities` VALUES ('1982', '晋宁', 'jn', '29', '650600', '0871');
INSERT INTO `cities` VALUES ('1983', '安宁', 'an', '29', '650300', '0871');
INSERT INTO `cities` VALUES ('1984', '路南', 'ln', '29', '652200', '0871');
INSERT INTO `cities` VALUES ('1985', '禄劝', 'lq', '29', '651500', '0871');
INSERT INTO `cities` VALUES ('1986', '大理', 'dl', '29', '671000', '0872');
INSERT INTO `cities` VALUES ('1987', '鹤庆', 'hq', '29', '671500', '0872');
INSERT INTO `cities` VALUES ('1988', '剑川', 'jc', '29', '671300', '0872');
INSERT INTO `cities` VALUES ('1989', '祥云', 'xy', '29', '672100', '0872');
INSERT INTO `cities` VALUES ('1990', '南涧', 'nj', '29', '675700', '0872');
INSERT INTO `cities` VALUES ('1991', '宾川', 'bc', '29', '671600', '0872');
INSERT INTO `cities` VALUES ('1992', '云龙', 'yl', '29', '672700', '0872');
INSERT INTO `cities` VALUES ('1993', '弥渡', 'md', '29', '675600', '0872');
INSERT INTO `cities` VALUES ('1994', '洱源', 'ey', '29', '671200', '0872');
INSERT INTO `cities` VALUES ('1995', '永平', 'yp', '29', '672600', '0872');
INSERT INTO `cities` VALUES ('1996', '巍山', 'ws', '29', '672400', '0872');
INSERT INTO `cities` VALUES ('1997', '漾濞', 'yb', '29', '672500', '0872');
INSERT INTO `cities` VALUES ('1998', '个旧', 'gj', '29', '661400', '0873');
INSERT INTO `cities` VALUES ('1999', '石屏', 'sp', '29', '662200', '0873');
INSERT INTO `cities` VALUES ('2000', '弥勒', 'ml', '29', '652300', '0873');
INSERT INTO `cities` VALUES ('2001', '红河', 'hh', '29', '654400', '0873');
INSERT INTO `cities` VALUES ('2002', '开远', 'ky', '29', '661000', '0873');
INSERT INTO `cities` VALUES ('2003', '蒙自', 'mz', '29', '661100', '0873');
INSERT INTO `cities` VALUES ('2004', '建水', 'js', '29', '654300', '0873');
INSERT INTO `cities` VALUES ('2005', '河口', 'hk', '29', '661300', '0873');
INSERT INTO `cities` VALUES ('2006', '泸西', 'lx', '29', '652400', '0873');
INSERT INTO `cities` VALUES ('2007', '金平', 'jp', '29', '661500', '0873');
INSERT INTO `cities` VALUES ('2008', '绿春', 'lc', '29', '662500', '0873');
INSERT INTO `cities` VALUES ('2009', '元阳', 'yy', '29', '662400', '0873');
INSERT INTO `cities` VALUES ('2010', '屏边', 'pb', '29', '661200', '0873');
INSERT INTO `cities` VALUES ('2011', '曲靖', 'qj', '29', '655000', '0874');
INSERT INTO `cities` VALUES ('2012', '寻甸', 'xd', '29', '655200', '0874');
INSERT INTO `cities` VALUES ('2013', '马龙', 'ml', '29', '655100', '0874');
INSERT INTO `cities` VALUES ('2014', '会泽', 'hz', '29', '654200', '0874');
INSERT INTO `cities` VALUES ('2015', '师宗', 'sz', '29', '655700', '0874');
INSERT INTO `cities` VALUES ('2016', '陆良', 'll', '29', '655600', '0874');
INSERT INTO `cities` VALUES ('2017', '富源', 'fy', '29', '655500', '0874');
INSERT INTO `cities` VALUES ('2018', '宣威', 'xw', '29', '665400', '0874');
INSERT INTO `cities` VALUES ('2019', '罗平', 'lp', '29', '665800', '0874');
INSERT INTO `cities` VALUES ('2020', '保山', 'bs', '29', '678000', '0875');
INSERT INTO `cities` VALUES ('2021', '腾冲', 'tc', '29', '679100', '0875');
INSERT INTO `cities` VALUES ('2022', '昌宁', 'cn', '29', '678100', '0875');
INSERT INTO `cities` VALUES ('2023', '龙陵', 'll', '29', '678300', '0875');
INSERT INTO `cities` VALUES ('2024', '施甸', 'sd', '29', '678200', '0875');
INSERT INTO `cities` VALUES ('2025', '文山', 'ws', '29', '663000', '0876');
INSERT INTO `cities` VALUES ('2026', '砚山', 'ys', '29', '663100', '0876');
INSERT INTO `cities` VALUES ('2027', '丘北', 'qb', '29', '663200', '0876');
INSERT INTO `cities` VALUES ('2028', '广南', 'gn', '29', '663300', '0876');
INSERT INTO `cities` VALUES ('2029', '马关', 'mg', '29', '663700', '0876');
INSERT INTO `cities` VALUES ('2030', '富宁', 'fn', '29', '663400', '0876');
INSERT INTO `cities` VALUES ('2031', '西畴', 'xc', '29', '663500', '0876');
INSERT INTO `cities` VALUES ('2032', '麻栗坡', 'mlp', '29', '663600', '0876');
INSERT INTO `cities` VALUES ('2033', '玉溪', 'yx', '29', '653100', '0877');
INSERT INTO `cities` VALUES ('2034', '华宁', 'hn', '29', '652800', '0877');
INSERT INTO `cities` VALUES ('2035', '江川', 'jc', '29', '652600', '0877');
INSERT INTO `cities` VALUES ('2036', '新平', 'xp', '29', '653400', '0877');
INSERT INTO `cities` VALUES ('2037', '元江', 'yj', '29', '653300', '0877');
INSERT INTO `cities` VALUES ('2038', '通海', 'th', '29', '652700', '0877');
INSERT INTO `cities` VALUES ('2039', '易门', 'ym', '29', '651100', '0877');
INSERT INTO `cities` VALUES ('2040', '澄江', 'cj', '29', '652500', '0877');
INSERT INTO `cities` VALUES ('2041', '峨山', 'es', '29', '653200', '0877');
INSERT INTO `cities` VALUES ('2042', '楚雄', 'cx', '29', '675000', '0878');
INSERT INTO `cities` VALUES ('2043', '禄丰', 'lf', '29', '651200', '0878');
INSERT INTO `cities` VALUES ('2044', '牟定', 'md', '29', '675500', '0878');
INSERT INTO `cities` VALUES ('2045', '大姚', 'dy', '29', '675400', '0878');
INSERT INTO `cities` VALUES ('2046', '永仁', 'yr', '29', '651400', '0878');
INSERT INTO `cities` VALUES ('2047', '南华', 'nh', '29', '675200', '0878');
INSERT INTO `cities` VALUES ('2048', '姚安', 'ya', '29', '675300', '0878');
INSERT INTO `cities` VALUES ('2049', '元谋', 'ym', '29', '651300', '0878');
INSERT INTO `cities` VALUES ('2050', '双柏', 'sb', '29', '675100', '0878');
INSERT INTO `cities` VALUES ('2051', '武定', 'wd', '29', '651600', '0878');
INSERT INTO `cities` VALUES ('2052', '思茅', 'sm', '29', '665000', '0879');
INSERT INTO `cities` VALUES ('2053', '普洱', 'pe', '29', '665100', '0879');
INSERT INTO `cities` VALUES ('2054', '墨江', 'mj', '29', '654800', '0879');
INSERT INTO `cities` VALUES ('2055', '景谷', 'jg', '29', '666400', '0879');
INSERT INTO `cities` VALUES ('2056', '景东', 'jd', '29', '676200', '0879');
INSERT INTO `cities` VALUES ('2057', '澜沧', 'lc', '29', '665600', '0879');
INSERT INTO `cities` VALUES ('2058', '西盟', 'xm', '29', '665700', '0879');
INSERT INTO `cities` VALUES ('2059', '江城', 'jc', '29', '665900', '0879');
INSERT INTO `cities` VALUES ('2060', '镇沅', 'zy', '29', '666500', '0879');
INSERT INTO `cities` VALUES ('2061', '孟连', 'ml', '29', '665800', '0879');
INSERT INTO `cities` VALUES ('2062', '东川', 'dc', '29', '654100', '0881');
INSERT INTO `cities` VALUES ('2063', '临沧', 'lc', '29', '677000', '0883');
INSERT INTO `cities` VALUES ('2064', '耿马', 'gm', '29', '677500', '0883');
INSERT INTO `cities` VALUES ('2065', '镇康', 'zk', '29', '677700', '0883');
INSERT INTO `cities` VALUES ('2066', '沧源', 'cy', '29', '677400', '0883');
INSERT INTO `cities` VALUES ('2067', '永德', 'yd', '29', '677600', '0883');
INSERT INTO `cities` VALUES ('2068', '凤庆', 'fq', '29', '675900', '0883');
INSERT INTO `cities` VALUES ('2069', '云县', 'yx', '29', '675800', '0883');
INSERT INTO `cities` VALUES ('2070', '双江', 'sj', '29', '677300', '0883');
INSERT INTO `cities` VALUES ('2071', '六库', 'lk', '29', '673100', '0886');
INSERT INTO `cities` VALUES ('2072', '泸水', 'ls', '29', '673200', '0886');
INSERT INTO `cities` VALUES ('2073', '福贡', 'fg', '29', '673400', '0886');
INSERT INTO `cities` VALUES ('2074', '贡山', 'gs', '29', '673500', '0886');
INSERT INTO `cities` VALUES ('2075', '兰坪', 'lp', '29', '671400', '0886');
INSERT INTO `cities` VALUES ('2076', '中甸', 'zd', '29', '674400', '0887');
INSERT INTO `cities` VALUES ('2077', '维西', 'wx', '29', '674600', '0887');
INSERT INTO `cities` VALUES ('2078', '德钦', 'dq', '29', '674500', '0887');
INSERT INTO `cities` VALUES ('2079', '丽江', 'lj', '29', '674100', '0888');
INSERT INTO `cities` VALUES ('2080', '宁蒗', 'nl', '29', '674300', '0888');
INSERT INTO `cities` VALUES ('2081', '华坪', 'hp', '29', '617300', '0888');
INSERT INTO `cities` VALUES ('2082', '永胜', 'ys', '29', '674200', '0888');
INSERT INTO `cities` VALUES ('2083', '景洪', 'jh', '29', '666100', '0691');
INSERT INTO `cities` VALUES ('2084', '孟海', 'mh', '29', '666200', '0691');
INSERT INTO `cities` VALUES ('2085', '孟腊', 'ml', '29', '666300', '0691');
INSERT INTO `cities` VALUES ('2086', '潞西', 'lx', '29', '678400', '0692');
INSERT INTO `cities` VALUES ('2087', '畹町', 'wt', '29', '678500', '0692');
INSERT INTO `cities` VALUES ('2088', '瑞丽', 'rl', '29', '678600', '0692');
INSERT INTO `cities` VALUES ('2089', '陇川', 'lc', '29', '678700', '0692');
INSERT INTO `cities` VALUES ('2090', '盈江', 'yj', '29', '679300', '0692');
INSERT INTO `cities` VALUES ('2091', '梁河', 'lh', '29', '679200', '0692');
INSERT INTO `cities` VALUES ('2092', '拉萨', 'ls', '27', '850000', '0891');
INSERT INTO `cities` VALUES ('2093', '日喀则', 'rkz', '27', '857000', '0892');
INSERT INTO `cities` VALUES ('2094', '林芝', 'lz', '27', '850400', '0894');
INSERT INTO `cities` VALUES ('2095', '昌都', 'cd', '27', '854000', '0895');
INSERT INTO `cities` VALUES ('2096', '堆龙德庆', 'dldq', '27', '851400', '08015');
INSERT INTO `cities` VALUES ('2097', '曲水', 'qs', '27', '850600', '08016');
INSERT INTO `cities` VALUES ('2098', '尼木', 'nm', '27', '851300', '08017');
INSERT INTO `cities` VALUES ('2099', '仁布', 'rb', '27', '857200', '08018');
INSERT INTO `cities` VALUES ('2100', '扎囊', 'zn', '27', '850800', '08040');
INSERT INTO `cities` VALUES ('2101', '贡嘎', 'gg', '27', '850700', '08049');
INSERT INTO `cities` VALUES ('2102', '江达', 'jd', '27', '854100', '08051');
INSERT INTO `cities` VALUES ('2103', '芒康', 'mk', '27', '854500', '08054');
INSERT INTO `cities` VALUES ('2104', '八宿', 'bs', '27', '854600', '08056');
INSERT INTO `cities` VALUES ('2105', '洛隆', 'll', '27', '855400', '08057');
INSERT INTO `cities` VALUES ('2106', '丁青', 'dq', '27', '855700', '08059');
INSERT INTO `cities` VALUES ('2107', '巴青', 'bq', '27', '852100', '08061');
INSERT INTO `cities` VALUES ('2108', '比如', 'br', '27', '852300', '08062');
INSERT INTO `cities` VALUES ('2109', '那曲', 'nq', '27', '852000', '0896');
INSERT INTO `cities` VALUES ('2110', '班戈', 'bg', '27', '852500', '08067');
INSERT INTO `cities` VALUES ('2111', '措勤', 'cq', '27', '859300', '08069');
INSERT INTO `cities` VALUES ('2112', '阿里', 'al', '27', '859000', '08073');
INSERT INTO `cities` VALUES ('2113', '索县', 'sx', '27', '852200', '08078');
INSERT INTO `cities` VALUES ('2114', '尼玛', 'nm', '27', '852600', '08081');
INSERT INTO `cities` VALUES ('2115', '山南', 'sn', '27', '852000', '0893');
INSERT INTO `cities` VALUES ('2116', '合阳', 'hy', '25', '715300', '0913');
INSERT INTO `cities` VALUES ('2117', '蒲城', 'pc', '25', '715500', '0913');
INSERT INTO `cities` VALUES ('2118', '韩城', 'hc', '25', '715400', '0913');
INSERT INTO `cities` VALUES ('2119', '富平', 'fp', '25', '711700', '0913');
INSERT INTO `cities` VALUES ('2120', '潼关', 'tg', '25', '714300', '0913');
INSERT INTO `cities` VALUES ('2121', '华阴', 'hy', '25', '714200', '0913');
INSERT INTO `cities` VALUES ('2122', '大荔', 'dl', '25', '715100', '0913');
INSERT INTO `cities` VALUES ('2123', '华县', 'hx', '25', '714100', '0913');
INSERT INTO `cities` VALUES ('2124', '渭南', 'wn', '25', '714000', '0913');
INSERT INTO `cities` VALUES ('2125', '榆林', 'yl', '25', '719000', '0912');
INSERT INTO `cities` VALUES ('2126', '富县', 'fx', '25', '727500', '0911');
INSERT INTO `cities` VALUES ('2127', '安塞', 'as', '25', '717400', '0911');
INSERT INTO `cities` VALUES ('2128', '甘泉', 'gq', '25', '716100', '0911');
INSERT INTO `cities` VALUES ('2129', '志丹', 'zd', '25', '717500', '0911');
INSERT INTO `cities` VALUES ('2130', '洛川', 'lc', '25', '727400', '0911');
INSERT INTO `cities` VALUES ('2131', '宜川', 'yc', '25', '716200', '0911');
INSERT INTO `cities` VALUES ('2132', '黄龙', 'hl', '25', '715700', '0911');
INSERT INTO `cities` VALUES ('2133', '吴旗', 'wq', '25', '717600', '0911');
INSERT INTO `cities` VALUES ('2134', '延长', 'yc', '25', '717100', '0911');
INSERT INTO `cities` VALUES ('2135', '子长', 'zc', '25', '717300', '0911');
INSERT INTO `cities` VALUES ('2136', '延川', 'yc', '25', '717200', '0911');
INSERT INTO `cities` VALUES ('2137', '黄陵', 'hl', '25', '727300', '0911');
INSERT INTO `cities` VALUES ('2138', '延安', 'ya', '25', '716000', '0911');
INSERT INTO `cities` VALUES ('2139', '彬县', 'bx', '25', '713500', '0910');
INSERT INTO `cities` VALUES ('2140', '乾县', 'qx', '25', '713300', '0910');
INSERT INTO `cities` VALUES ('2141', '礼泉', 'lq', '25', '713200', '0910');
INSERT INTO `cities` VALUES ('2142', '泾阳', 'jy', '25', '713700', '0910');
INSERT INTO `cities` VALUES ('2143', '三原', 'sy', '25', '713800', '0910');
INSERT INTO `cities` VALUES ('2144', '淳化', 'ch', '25', '711200', '0910');
INSERT INTO `cities` VALUES ('2145', '旬邑', 'xy', '25', '711300', '0910');
INSERT INTO `cities` VALUES ('2146', '兴平', 'xp', '25', '713100', '0910');
INSERT INTO `cities` VALUES ('2147', '永寿', 'ys', '25', '713400', '0910');
INSERT INTO `cities` VALUES ('2148', '长武', 'cw', '25', '713600', '0910');
INSERT INTO `cities` VALUES ('2149', '武功', 'wg', '25', '712200', '0910');
INSERT INTO `cities` VALUES ('2150', '咸阳', 'xy', '25', '712000', '0910');
INSERT INTO `cities` VALUES ('2151', '长安', 'ca', '25', '710100', '029');
INSERT INTO `cities` VALUES ('2152', '临潼', 'lt', '25', '710600', '029');
INSERT INTO `cities` VALUES ('2153', '蓝田', 'lt', '25', '710500', '029');
INSERT INTO `cities` VALUES ('2154', '周至', 'zz', '25', '710400', '029');
INSERT INTO `cities` VALUES ('2155', '户县', 'hx', '25', '710300', '029');
INSERT INTO `cities` VALUES ('2156', '高陵', 'gl', '25', '710200', '029');
INSERT INTO `cities` VALUES ('2157', '西安', 'xa', '25', '710000', '029');
INSERT INTO `cities` VALUES ('2158', '商南', 'sn', '25', '726300', '0914');
INSERT INTO `cities` VALUES ('2159', '略阳', 'ly', '25', '724300', '0916');
INSERT INTO `cities` VALUES ('2160', '宁强', 'nq', '25', '724400', '0916');
INSERT INTO `cities` VALUES ('2161', '佛坪', 'fp', '25', '723400', '0916');
INSERT INTO `cities` VALUES ('2162', '留坝', 'lb', '25', '724100', '0916');
INSERT INTO `cities` VALUES ('2163', '白河', 'bh', '25', '725800', '0915');
INSERT INTO `cities` VALUES ('2164', '镇坪', 'zp', '25', '725600', '0915');
INSERT INTO `cities` VALUES ('2165', '山阳', 'sy', '25', '726400', '09244');
INSERT INTO `cities` VALUES ('2166', '镇安', 'za', '25', '711500', '09243');
INSERT INTO `cities` VALUES ('2167', '柞水', 'zs', '25', '711400', '09242');
INSERT INTO `cities` VALUES ('2168', '清涧', 'qj', '25', '718300', '09240');
INSERT INTO `cities` VALUES ('2169', '神木', 'sm', '25', '719300', '09229');
INSERT INTO `cities` VALUES ('2170', '靖边', 'jb', '25', '718500', '09228');
INSERT INTO `cities` VALUES ('2171', '定边', 'db', '25', '718600', '09227');
INSERT INTO `cities` VALUES ('2172', '绥德', 'sd', '25', '718000', '09226');
INSERT INTO `cities` VALUES ('2173', '米脂', 'mz', '25', '718100', '09225');
INSERT INTO `cities` VALUES ('2174', '横山', 'hs', '25', '719100', '09224');
INSERT INTO `cities` VALUES ('2175', '府谷', 'fg', '25', '719400', '09223');
INSERT INTO `cities` VALUES ('2176', '佳县', 'jx', '25', '719200', '09222');
INSERT INTO `cities` VALUES ('2177', '子洲', 'zz', '25', '718400', '09221');
INSERT INTO `cities` VALUES ('2178', '吴堡', 'wb', '25', '718200', '09220');
INSERT INTO `cities` VALUES ('2179', '宜君', 'yj', '25', '727200', '0919');
INSERT INTO `cities` VALUES ('2180', '耀县', 'yx', '25', '727100', '0919');
INSERT INTO `cities` VALUES ('2181', '铜川', 'tc', '25', '727000', '0919');
INSERT INTO `cities` VALUES ('2182', '麟游', 'ly', '25', '721500', '0917');
INSERT INTO `cities` VALUES ('2183', '太白', 'tb', '25', '721600', '0917');
INSERT INTO `cities` VALUES ('2184', '千阳', 'qy', '25', '721100', '0917');
INSERT INTO `cities` VALUES ('2185', '陇县', 'lx', '25', '721200', '0917');
INSERT INTO `cities` VALUES ('2186', '凤县', 'fx', '25', '721700', '0917');
INSERT INTO `cities` VALUES ('2187', '眉县', 'mx', '25', '722300', '0917');
INSERT INTO `cities` VALUES ('2188', '扶风', 'ff', '25', '722200', '0917');
INSERT INTO `cities` VALUES ('2189', '岐山', 'qs', '25', '722400', '0917');
INSERT INTO `cities` VALUES ('2190', '凤翔', 'fx', '25', '721400', '0917');
INSERT INTO `cities` VALUES ('2191', '宝鸡县', 'bjx', '25', '721300', '0917');
INSERT INTO `cities` VALUES ('2192', '宝鸡', 'bj', '25', '721000', '0917');
INSERT INTO `cities` VALUES ('2193', '勉县', 'mx', '25', '724200', '0916');
INSERT INTO `cities` VALUES ('2194', '镇巴', 'zb', '25', '713600', '0916');
INSERT INTO `cities` VALUES ('2195', '西乡', 'xx', '25', '723500', '0916');
INSERT INTO `cities` VALUES ('2196', '洋县', 'yx', '25', '723300', '0916');
INSERT INTO `cities` VALUES ('2197', '城固', 'cg', '25', '723200', '0916');
INSERT INTO `cities` VALUES ('2198', '南郑', 'nz', '25', '723100', '0916');
INSERT INTO `cities` VALUES ('2199', '汉中', 'hz', '25', '723000', '0916');
INSERT INTO `cities` VALUES ('2200', '紫阳', 'zy', '25', '725300', '0915');
INSERT INTO `cities` VALUES ('2201', '平利', 'pl', '25', '725500', '0915');
INSERT INTO `cities` VALUES ('2202', '石泉', 'sq', '25', '725200', '0915');
INSERT INTO `cities` VALUES ('2203', '旬阳', 'xy', '25', '725700', '0915');
INSERT INTO `cities` VALUES ('2204', '汉阴', 'hy', '25', '725100', '0915');
INSERT INTO `cities` VALUES ('2205', '宁陕', 'ns', '25', '711600', '0915');
INSERT INTO `cities` VALUES ('2206', '岚皋', 'lg', '25', '725400', '0915');
INSERT INTO `cities` VALUES ('2207', '安康', 'ak', '25', '725000', '0915');
INSERT INTO `cities` VALUES ('2208', '洛南', 'ln', '25', '726100', '0914');
INSERT INTO `cities` VALUES ('2209', '丹凤', 'df', '25', '726200', '0914');
INSERT INTO `cities` VALUES ('2210', '商州', 'sz', '25', '726000', '0914');
INSERT INTO `cities` VALUES ('2211', '澄城', 'cc', '25', '715200', '0913');
INSERT INTO `cities` VALUES ('2212', '白水', 'bs', '25', '715600', '0913');
INSERT INTO `cities` VALUES ('2213', '临夏市', 'lxs', '7', '731100', '0930');
INSERT INTO `cities` VALUES ('2214', '兰州', 'lz', '7', '730000', '0931');
INSERT INTO `cities` VALUES ('2215', '红古区', 'hgq', '7', '730000', '0931');
INSERT INTO `cities` VALUES ('2216', '皋兰', 'gl', '7', '730200', '0931');
INSERT INTO `cities` VALUES ('2217', '榆中', 'yz', '7', '730100', '0931');
INSERT INTO `cities` VALUES ('2218', '永登', 'yd', '7', '730300', '0931');
INSERT INTO `cities` VALUES ('2219', '定西', 'dx', '7', '743000', '0932');
INSERT INTO `cities` VALUES ('2220', '静宁', 'jn', '7', '743400', '0933');
INSERT INTO `cities` VALUES ('2221', '泾川', 'jc', '7', '744300', '0933');
INSERT INTO `cities` VALUES ('2222', '灵台', 'lt', '7', '744400', '0933');
INSERT INTO `cities` VALUES ('2223', '崇信', 'cx', '7', '744200', '0933');
INSERT INTO `cities` VALUES ('2224', '华亭', 'ht', '7', '744100', '0993');
INSERT INTO `cities` VALUES ('2225', '庄浪', 'zl', '7', '741700', '0993');
INSERT INTO `cities` VALUES ('2226', '西峰', 'xf', '7', '745000', '0934');
INSERT INTO `cities` VALUES ('2227', '金昌', 'jc', '7', '733000', '0935');
INSERT INTO `cities` VALUES ('2228', '民勤', 'mq', '7', '733300', '0935');
INSERT INTO `cities` VALUES ('2229', '天祝', 'tz', '7', '733200', '0935');
INSERT INTO `cities` VALUES ('2230', '古浪', 'gl', '7', '733100', '0935');
INSERT INTO `cities` VALUES ('2231', '金川', 'jc', '7', '737100', '0935');
INSERT INTO `cities` VALUES ('2232', '永昌', 'yc', '7', '737200', '0935');
INSERT INTO `cities` VALUES ('2233', '张掖', 'zy', '7', '734000', '0936');
INSERT INTO `cities` VALUES ('2234', '山丹', 'sd', '7', '734100', '0936');
INSERT INTO `cities` VALUES ('2235', '高台', 'gt', '7', '734300', '0936');
INSERT INTO `cities` VALUES ('2236', '民乐', 'ml', '7', '734500', '0936');
INSERT INTO `cities` VALUES ('2237', '临泽', 'lz', '7', '734200', '0936');
INSERT INTO `cities` VALUES ('2238', '萧南', 'xn', '7', '734400', '0936');
INSERT INTO `cities` VALUES ('2239', '酒泉', 'jq', '7', '735000', '0937');
INSERT INTO `cities` VALUES ('2240', '玉门', 'ym', '7', '735200', '0937');
INSERT INTO `cities` VALUES ('2241', '安西', 'ax', '7', '736100', '0937');
INSERT INTO `cities` VALUES ('2242', '敦煌', 'dh', '7', '736200', '0937');
INSERT INTO `cities` VALUES ('2243', '金塔', 'jt', '7', '735300', '0937');
INSERT INTO `cities` VALUES ('2244', '阿克塞', 'aks', '7', '736400', '0937');
INSERT INTO `cities` VALUES ('2245', '嘉峪关', 'jyg', '7', '735100', '0937');
INSERT INTO `cities` VALUES ('2246', '肃北', 'sb', '7', '736300', '0937');
INSERT INTO `cities` VALUES ('2247', '天水', 'ts', '7', '741000', '0938');
INSERT INTO `cities` VALUES ('2248', '甘谷', 'gg', '7', '741200', '0938');
INSERT INTO `cities` VALUES ('2249', '武山', 'ws', '7', '741300', '0938');
INSERT INTO `cities` VALUES ('2250', '秦安', 'qa', '7', '741600', '0938');
INSERT INTO `cities` VALUES ('2251', '张家川', 'zjc', '7', '741500', '0938');
INSERT INTO `cities` VALUES ('2252', '清水', 'qs', '7', '741400', '0938');
INSERT INTO `cities` VALUES ('2253', '武都', 'wd', '7', '746000', '0939');
INSERT INTO `cities` VALUES ('2254', '白银', 'by', '7', '730900', '0943');
INSERT INTO `cities` VALUES ('2255', '靖远', 'jy', '7', '730600', '0943');
INSERT INTO `cities` VALUES ('2256', '平凉', 'pl', '7', '744000', '0943');
INSERT INTO `cities` VALUES ('2257', '景泰', 'jt', '7', '730400', '0943');
INSERT INTO `cities` VALUES ('2258', '会宁', 'hn', '7', '743200', '0943');
INSERT INTO `cities` VALUES ('2259', '临夏县', 'lxx', '7', '731800', '09401');
INSERT INTO `cities` VALUES ('2260', '永靖', 'yj', '7', '731600', '09402');
INSERT INTO `cities` VALUES ('2261', '和政', 'hz', '7', '731200', '09403');
INSERT INTO `cities` VALUES ('2262', '东乡', 'dx', '7', '731400', '09404');
INSERT INTO `cities` VALUES ('2263', '康乐', 'kl', '7', '731500', '09405');
INSERT INTO `cities` VALUES ('2264', '广河', 'gh', '7', '731300', '09406');
INSERT INTO `cities` VALUES ('2265', '积石山', 'jss', '7', '731700', '09407');
INSERT INTO `cities` VALUES ('2266', '甘南州', 'gnz', '7', '747000', '09411');
INSERT INTO `cities` VALUES ('2267', '夏河', 'xh', '7', '747100', '09412');
INSERT INTO `cities` VALUES ('2268', '临潭', 'lt', '7', '747500', '09413');
INSERT INTO `cities` VALUES ('2269', '舟曲', 'zq', '7', '746300', '09414');
INSERT INTO `cities` VALUES ('2270', '碌曲', 'lq', '7', '747200', '09415');
INSERT INTO `cities` VALUES ('2271', '玛曲', 'mq', '7', '747300', '09416');
INSERT INTO `cities` VALUES ('2272', '旧尼', 'jn', '7', '747600', '09417');
INSERT INTO `cities` VALUES ('2273', '迭部', 'db', '7', '747400', '09418');
INSERT INTO `cities` VALUES ('2274', '陇西', 'lx', '7', '748100', '09421');
INSERT INTO `cities` VALUES ('2275', '漳县', 'zx', '7', '748300', '09422');
INSERT INTO `cities` VALUES ('2276', '通渭', 'tw', '7', '743300', '09423');
INSERT INTO `cities` VALUES ('2277', '岷县', 'mx', '7', '748400', '09424');
INSERT INTO `cities` VALUES ('2278', '临洮', 'lt', '7', '730500', '09425');
INSERT INTO `cities` VALUES ('2279', '渭源', 'wy', '7', '748200', '09426');
INSERT INTO `cities` VALUES ('2280', '庆阳', 'qy', '7', '745100', '09441');
INSERT INTO `cities` VALUES ('2281', '宁县', 'nx', '7', '745200', '09442');
INSERT INTO `cities` VALUES ('2282', '镇原', 'zy', '7', '744500', '09443');
INSERT INTO `cities` VALUES ('2283', '环县', 'hx', '7', '745700', '09444');
INSERT INTO `cities` VALUES ('2284', '合水', 'hs', '7', '745400', '09445');
INSERT INTO `cities` VALUES ('2285', '正宁', 'zn', '7', '745300', '09446');
INSERT INTO `cities` VALUES ('2286', '华池', 'hc', '7', '745600', '09447');
INSERT INTO `cities` VALUES ('2287', '成县', 'cx', '7', '742500', '09491');
INSERT INTO `cities` VALUES ('2288', '康县', 'kx', '7', '746500', '09492');
INSERT INTO `cities` VALUES ('2289', '文县', 'wx', '7', '746400', '09493');
INSERT INTO `cities` VALUES ('2290', '宕昌', 'dc', '7', '748500', '09494');
INSERT INTO `cities` VALUES ('2291', '西和', 'xh', '7', '742100', '09495');
INSERT INTO `cities` VALUES ('2292', '礼县', 'lx', '7', '742200', '09496');
INSERT INTO `cities` VALUES ('2293', '徽县', 'hx', '7', '742300', '09497');
INSERT INTO `cities` VALUES ('2294', '两当', 'ld', '7', '742400', '09498');
INSERT INTO `cities` VALUES ('2295', '海晏', 'hy', '22', '812200', '0970');
INSERT INTO `cities` VALUES ('2296', '西宁', 'xn', '22', '810000', '0971');
INSERT INTO `cities` VALUES ('2297', '大通', 'dt', '22', '810100', '0971');
INSERT INTO `cities` VALUES ('2298', '乐都', 'ld', '22', '810700', '0972');
INSERT INTO `cities` VALUES ('2299', '湟中', 'hz', '22', '811600', '0972');
INSERT INTO `cities` VALUES ('2300', '互助', 'hz', '22', '810500', '0972');
INSERT INTO `cities` VALUES ('2301', '湟源', 'hy', '22', '812100', '0972');
INSERT INTO `cities` VALUES ('2302', '民和', 'mh', '22', '810800', '0972');
INSERT INTO `cities` VALUES ('2303', '循化', 'xh', '22', '811100', '0972');
INSERT INTO `cities` VALUES ('2304', '化隆', 'hl', '22', '810900', '0972');
INSERT INTO `cities` VALUES ('2305', '同仁', 'tr', '22', '811300', '0973');
INSERT INTO `cities` VALUES ('2306', '共和', 'gh', '22', '813000', '0974');
INSERT INTO `cities` VALUES ('2307', '玛沁', 'mq', '22', '814000', '0975');
INSERT INTO `cities` VALUES ('2308', '玉树', 'ys', '22', '815000', '0976');
INSERT INTO `cities` VALUES ('2309', '德令哈', 'dlh', '22', '817000', '0977');
INSERT INTO `cities` VALUES ('2310', '门源', 'my', '22', '810300', '0978');
INSERT INTO `cities` VALUES ('2311', '格尔木', 'grm', '22', '816000', '0979');
INSERT INTO `cities` VALUES ('2312', '河南', 'hn', '22', '811500', '09820');
INSERT INTO `cities` VALUES ('2313', '尖扎', 'jz', '22', '811200', '09828');
INSERT INTO `cities` VALUES ('2314', '泽库', 'zk', '22', '811400', '09828');
INSERT INTO `cities` VALUES ('2315', '乌兰', 'wl', '22', '817100', '09831');
INSERT INTO `cities` VALUES ('2316', '都兰', 'dl', '22', '816100', '09832');
INSERT INTO `cities` VALUES ('2317', '天峻', 'tj', '22', '817200', '09833');
INSERT INTO `cities` VALUES ('2318', '治多', 'zd', '22', '815400', '09834');
INSERT INTO `cities` VALUES ('2319', '称多', 'cd', '22', '815100', '09835');
INSERT INTO `cities` VALUES ('2320', '囊谦', 'nq', '22', '815200', '09836');
INSERT INTO `cities` VALUES ('2321', '杂多', 'zd', '22', '815300', '09837');
INSERT INTO `cities` VALUES ('2322', '曲麻莱', 'qml', '22', '815500', '09838');
INSERT INTO `cities` VALUES ('2323', '龙羊峡', 'lyx', '22', '811800', '09839');
INSERT INTO `cities` VALUES ('2324', '茫崖', 'my', '22', '817500', '09840');
INSERT INTO `cities` VALUES ('2325', '贵德', 'gd', '22', '811700', '09841');
INSERT INTO `cities` VALUES ('2326', '贵南', 'gn', '22', '813100', '09842');
INSERT INTO `cities` VALUES ('2327', '兴海', 'xh', '22', '813300', '09843');
INSERT INTO `cities` VALUES ('2328', '同德', 'td', '22', '813200', '09844');
INSERT INTO `cities` VALUES ('2329', '祁连', 'ql', '22', '810400', '09846');
INSERT INTO `cities` VALUES ('2330', '刚察', 'gc', '22', '812300', '09847');
INSERT INTO `cities` VALUES ('2331', '大柴旦', 'dcd', '22', '817300', '09848');
INSERT INTO `cities` VALUES ('2332', '冷湖', 'lh', '22', '817400', '09849');
INSERT INTO `cities` VALUES ('2333', '达日', 'dr', '22', '814200', '09851');
INSERT INTO `cities` VALUES ('2334', '玛多', 'md', '22', '813500', '09852');
INSERT INTO `cities` VALUES ('2335', '班玛', 'bm', '22', '814300', '09853');
INSERT INTO `cities` VALUES ('2336', '甘德', 'gd', '22', '814100', '09854');
INSERT INTO `cities` VALUES ('2337', '银川', 'yc', '21', '750000', '0951');
INSERT INTO `cities` VALUES ('2338', '贺兰', 'hl', '21', '750200', '0951');
INSERT INTO `cities` VALUES ('2339', '永宁', 'yn', '21', '750100', '0951');
INSERT INTO `cities` VALUES ('2340', '石嘴山', 'szs', '21', '753000', '0952');
INSERT INTO `cities` VALUES ('2341', '平罗', 'pl', '21', '753400', '0952');
INSERT INTO `cities` VALUES ('2342', '惠农', 'hn', '21', '753600', '0952');
INSERT INTO `cities` VALUES ('2343', '陶乐', 'tl', '21', '753500', '0952');
INSERT INTO `cities` VALUES ('2344', '吴忠', 'wz', '21', '751100', '0953');
INSERT INTO `cities` VALUES ('2345', '中宁', 'zn', '21', '751200', '0953');
INSERT INTO `cities` VALUES ('2346', '中卫', 'zw', '21', '751700', '0953');
INSERT INTO `cities` VALUES ('2347', '青铜峡', 'qtx', '21', '751600', '0953');
INSERT INTO `cities` VALUES ('2348', '灵武', 'lw', '21', '751400', '0953');
INSERT INTO `cities` VALUES ('2349', '同心', 'tx', '21', '751300', '0953');
INSERT INTO `cities` VALUES ('2350', '盐池', 'yc', '21', '751500', '0953');
INSERT INTO `cities` VALUES ('2351', '固原', 'gy', '21', '756000', '0954');
INSERT INTO `cities` VALUES ('2352', '海原', 'hy', '21', '756100', '0954');
INSERT INTO `cities` VALUES ('2353', '西吉', 'xj', '21', '756200', '0954');
INSERT INTO `cities` VALUES ('2354', '隆德', 'ld', '21', '756300', '0954');
INSERT INTO `cities` VALUES ('2355', '泾源', 'jy', '21', '756400', '0954');
INSERT INTO `cities` VALUES ('2356', '彭阳', 'py', '21', '756500', '0954');
INSERT INTO `cities` VALUES ('2357', '塔城', 'tc', '28', '834700', '0901');
INSERT INTO `cities` VALUES ('2358', '额敏', 'em', '28', '834600', '0901');
INSERT INTO `cities` VALUES ('2359', '裕民', 'ym', '28', '834800', '0901');
INSERT INTO `cities` VALUES ('2360', '托里', 'tl', '28', '834500', '0901');
INSERT INTO `cities` VALUES ('2361', '哈密', 'hm', '28', '839000', '0902');
INSERT INTO `cities` VALUES ('2362', '马里坤', 'mlk', '28', '839200', '0902');
INSERT INTO `cities` VALUES ('2363', '伊吾', 'yw', '28', '839300', '0902');
INSERT INTO `cities` VALUES ('2364', '和田', 'ht', '28', '848000', '0903');
INSERT INTO `cities` VALUES ('2365', '皮山', 'ps', '28', '845100', '0903');
INSERT INTO `cities` VALUES ('2366', '墨玉', 'my', '28', '848100', '0903');
INSERT INTO `cities` VALUES ('2367', '洛浦', 'lp', '28', '848200', '0903');
INSERT INTO `cities` VALUES ('2368', '策勒', 'cl', '28', '848300', '0903');
INSERT INTO `cities` VALUES ('2369', '于田', 'yt', '28', '848400', '0903');
INSERT INTO `cities` VALUES ('2370', '民丰', 'mf', '28', '848500', '0903');
INSERT INTO `cities` VALUES ('2371', '阿勒泰', 'alt', '28', '836500', '0906');
INSERT INTO `cities` VALUES ('2372', '青河', 'qh', '28', '836200', '0906');
INSERT INTO `cities` VALUES ('2373', '布尔律', 'brl', '28', '836600', '0906');
INSERT INTO `cities` VALUES ('2374', '哈巴河', 'hbh', '28', '836700', '0906');
INSERT INTO `cities` VALUES ('2375', '富蕴', 'fy', '28', '836100', '0906');
INSERT INTO `cities` VALUES ('2376', '福海', 'fh', '28', '836400', '0906');
INSERT INTO `cities` VALUES ('2377', '吉木乃', 'jmn', '28', '836800', '0906');
INSERT INTO `cities` VALUES ('2378', '阿图什', 'ats', '28', '845300', '0908');
INSERT INTO `cities` VALUES ('2379', '乌恰', 'wq', '28', '845400', '0908');
INSERT INTO `cities` VALUES ('2380', '阿克陶', 'akt', '28', '845500', '0908');
INSERT INTO `cities` VALUES ('2381', '博乐', 'bl', '28', '833400', '0909');
INSERT INTO `cities` VALUES ('2382', '精河', 'jh', '28', '833300', '0909');
INSERT INTO `cities` VALUES ('2383', '温泉', 'wq', '28', '833500', '0909');
INSERT INTO `cities` VALUES ('2384', '克拉玛依', 'klmy', '28', '834000', '0990');
INSERT INTO `cities` VALUES ('2385', '布克赛尔', 'bksr', '28', '834000', '0990');
INSERT INTO `cities` VALUES ('2386', '乌鲁木齐', 'wlmq', '28', '830000', '0991');
INSERT INTO `cities` VALUES ('2387', '奎屯', 'kt', '28', '833200', '0992');
INSERT INTO `cities` VALUES ('2388', '乌苏', 'ws', '28', '833000', '0992');
INSERT INTO `cities` VALUES ('2389', '石河子', 'shz', '28', '832000', '0993');
INSERT INTO `cities` VALUES ('2390', '沙湾', 'sw', '28', '832100', '0993');
INSERT INTO `cities` VALUES ('2391', '昌吉', 'cj', '28', '831100', '0994');
INSERT INTO `cities` VALUES ('2392', '奇台', 'qt', '28', '831800', '0994');
INSERT INTO `cities` VALUES ('2393', '米泉', 'mq', '28', '831400', '0994');
INSERT INTO `cities` VALUES ('2394', '呼图壁', 'htb', '28', '831200', '0994');
INSERT INTO `cities` VALUES ('2395', '玛纳斯', 'mns', '28', '832200', '0994');
INSERT INTO `cities` VALUES ('2396', '吉木萨尔', 'jmsr', '28', '831700', '0994');
INSERT INTO `cities` VALUES ('2397', '阜康', 'fk', '28', '831500', '0994');
INSERT INTO `cities` VALUES ('2398', '木垒', 'ml', '28', '831900', '0994');
INSERT INTO `cities` VALUES ('2399', '吐鲁番', 'tlf', '28', '838000', '0995');
INSERT INTO `cities` VALUES ('2400', '鄯善', 'ss', '28', '838200', '0995');
INSERT INTO `cities` VALUES ('2401', '托克逊', 'tkx', '28', '838100', '0995');
INSERT INTO `cities` VALUES ('2402', '库尔勒', 'krl', '28', '841000', '0996');
INSERT INTO `cities` VALUES ('2403', '焉耆', 'yq', '28', '841100', '0996');
INSERT INTO `cities` VALUES ('2404', '博湖', 'bh', '28', '841400', '0996');
INSERT INTO `cities` VALUES ('2405', '轮台', 'lt', '28', '841600', '0996');
INSERT INTO `cities` VALUES ('2406', '和静', 'hj', '28', '841300', '0996');
INSERT INTO `cities` VALUES ('2407', '和硕', 'hs', '28', '841200', '0996');
INSERT INTO `cities` VALUES ('2408', '若羌', 'rq', '28', '841800', '0996');
INSERT INTO `cities` VALUES ('2409', '尉犁', 'wl', '28', '841500', '0996');
INSERT INTO `cities` VALUES ('2410', '且末', 'qm', '28', '841900', '0996');
INSERT INTO `cities` VALUES ('2411', '阿克苏', 'aks', '28', '843000', '0997');
INSERT INTO `cities` VALUES ('2412', '库车', 'kc', '28', '842000', '0997');
INSERT INTO `cities` VALUES ('2413', '新和', 'xh', '28', '842100', '0997');
INSERT INTO `cities` VALUES ('2414', '沙雅', 'sy', '28', '842200', '0997');
INSERT INTO `cities` VALUES ('2415', '拜城', 'bc', '28', '842300', '0997');
INSERT INTO `cities` VALUES ('2416', '温宿', 'ws', '28', '843100', '0997');
INSERT INTO `cities` VALUES ('2417', '乌什', 'ws', '28', '843400', '0997');
INSERT INTO `cities` VALUES ('2418', '阿拉尔', 'alr', '28', '843300', '0997');
INSERT INTO `cities` VALUES ('2419', '阿瓦提', 'awt', '28', '843200', '0997');
INSERT INTO `cities` VALUES ('2420', '柯坪', 'kp', '28', '843600', '0997');
INSERT INTO `cities` VALUES ('2421', '阿合奇', 'ahq', '28', '843500', '0997');
INSERT INTO `cities` VALUES ('2422', '咯什', 'ls', '28', '844000', '0998');
INSERT INTO `cities` VALUES ('2423', '疏附', 'sf', '28', '844100', '0998');
INSERT INTO `cities` VALUES ('2424', '伽师', 'js', '28', '844300', '0998');
INSERT INTO `cities` VALUES ('2425', '巴楚', 'bc', '28', '843800', '0998');
INSERT INTO `cities` VALUES ('2426', '麦盖提', 'mgt', '28', '844600', '0998');
INSERT INTO `cities` VALUES ('2427', '叶城', 'yc', '28', '844900', '0998');
INSERT INTO `cities` VALUES ('2428', '泽普', 'zp', '28', '844800', '0998');
INSERT INTO `cities` VALUES ('2429', '莎车', 'sc', '28', '844700', '0998');
INSERT INTO `cities` VALUES ('2430', '岳普湖', 'yph', '28', '844400', '0998');
INSERT INTO `cities` VALUES ('2431', '英吉沙', 'yjs', '28', '844500', '0998');
INSERT INTO `cities` VALUES ('2432', '塔什库尔干', 'tskrg', '28', '845200', '0999');
INSERT INTO `cities` VALUES ('2433', '疏勒', 'sl', '28', '844200', '0999');
INSERT INTO `cities` VALUES ('2434', '伊宁', 'yn', '28', '835000', '0999');
INSERT INTO `cities` VALUES ('2435', '察布查尔', 'cbcr', '28', '835300', '0999');
INSERT INTO `cities` VALUES ('2436', '霍城', 'hc', '28', '835200', '0999');
INSERT INTO `cities` VALUES ('2437', '新源', 'xy', '28', '835800', '0999');
INSERT INTO `cities` VALUES ('2438', '巩留', 'gl', '28', '835400', '0999');
INSERT INTO `cities` VALUES ('2439', '尼勒克', 'nlk', '28', '835700', '0999');
INSERT INTO `cities` VALUES ('2440', '特克斯', 'tks', '28', '835500', '0999');
INSERT INTO `cities` VALUES ('2441', '昭苏', 'zs', '28', '835600', '0999');
INSERT INTO `cities` VALUES ('2442', '阿莲', 'al', '33', '000822', '886');
INSERT INTO `cities` VALUES ('2443', '安定', 'ad', '33', '000745', '887');
INSERT INTO `cities` VALUES ('2444', '安平', 'ap', '33', '000708', '888');
INSERT INTO `cities` VALUES ('2445', '八德', 'bd', '33', '000334', '889');
INSERT INTO `cities` VALUES ('2446', '八里', 'bl', '33', '000249', '890');
INSERT INTO `cities` VALUES ('2447', '白河', 'bh', '33', '000732', '891');
INSERT INTO `cities` VALUES ('2448', '白沙', 'bs', '33', '000884', '892');
INSERT INTO `cities` VALUES ('2449', '板桥', 'bq', '33', '000220', '893');
INSERT INTO `cities` VALUES ('2450', '褒忠', 'bz', '33', '000634', '894');
INSERT INTO `cities` VALUES ('2451', '宝山', 'bs', '33', '000308', '895');
INSERT INTO `cities` VALUES ('2452', '卑南', 'bn', '33', '000931', '896');
INSERT INTO `cities` VALUES ('2453', '北斗', 'bd', '33', '000521', '897');
INSERT INTO `cities` VALUES ('2454', '北港', 'bg', '33', '000651', '898');
INSERT INTO `cities` VALUES ('2455', '北门', 'bm', '33', '000727', '899');
INSERT INTO `cities` VALUES ('2456', '北埔', 'bp', '33', '000314', '900');
INSERT INTO `cities` VALUES ('2457', '北投', 'bt', '33', '000112', '901');
INSERT INTO `cities` VALUES ('2458', '补子', 'bz', '33', '000613', '902');
INSERT INTO `cities` VALUES ('2459', '布袋', 'bd', '33', '000739', '903');
INSERT INTO `cities` VALUES ('2460', '草屯', 'ct', '33', '000542', '904');
INSERT INTO `cities` VALUES ('2461', '长宾', 'cb', '33', '000937', '905');
INSERT INTO `cities` VALUES ('2462', '长治', 'cz', '33', '000905', '906');
INSERT INTO `cities` VALUES ('2463', '潮州', 'cz', '33', '000910', '907');
INSERT INTO `cities` VALUES ('2464', '车城', 'cc', '33', '000923', '908');
INSERT INTO `cities` VALUES ('2465', '城中区', 'czq', '33', '000100', '909');
INSERT INTO `cities` VALUES ('2466', '成功', 'cg', '33', '000936', '910');
INSERT INTO `cities` VALUES ('2467', '池上', 'cs', '33', '000934', '911');
INSERT INTO `cities` VALUES ('2468', '春日', 'cr', '33', '000920', '912');
INSERT INTO `cities` VALUES ('2469', '刺桐', 'ct', '33', '000647', '913');

-- ----------------------------
-- Table structure for farms
-- ----------------------------
DROP TABLE IF EXISTS `farms`;
CREATE TABLE `farms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `pics` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of farms
-- ----------------------------
INSERT INTO `farms` VALUES ('1', '鲜家坝村', '鲜家坝村', null, null, '2018-05-11 15:58:56', '2018-05-11 15:58:56');
INSERT INTO `farms` VALUES ('2', '唇牙村', '唇牙村', null, null, '2018-05-11 17:35:51', '2018-05-11 17:35:51');
INSERT INTO `farms` VALUES ('3', '冯二垭', '冯二垭', null, null, '2018-05-11 17:37:33', '2018-05-11 17:37:33');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `description` longtext,
  `farm` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `pics` varchar(255) DEFAULT NULL,
  `goods_type` int(11) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  `stocks` int(11) DEFAULT NULL,
  `sales` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1064 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1028', '牛肉', '正宗黄牛肉新鲜牛肉农家生牛肉牛腩生鲜牛腱子四斤 顺丰速运', '2', 'images/c35a07e9ec70458065e45296a368d926.jpg', null, '3', '168', '125', null, '1', '2018-04-20 16:22:17', '2018-04-20 16:22:17');
INSERT INTO `goods` VALUES ('1029', '牛肉', '包邮5斤装进口原装生鲜牛腱子真空包装新鲜牛肉生牛肉黄牛肉', '2', 'images/ad9c1470fce1d2ee187fc3bfbf76069e.jpg', null, '3', '139', '35', null, '1', '2018-04-20 16:22:57', '2018-04-20 16:22:57');
INSERT INTO `goods` VALUES ('1030', '鸭肉', '西华师大鸭胗五香味168g鸭肫鸭肉零食卤味熟食小包装', '2', 'images/6fead4eb707633d856b56739fbb09566.jpg', null, '3', '36', '32', null, '1', '2018-04-20 16:23:47', '2018-04-20 16:23:47');
INSERT INTO `goods` VALUES ('1031', '羊肉', '诺伯豪斯清真内蒙羊肉新鲜包邮整只生羊腿内蒙古批发冰冻生鲜', '2', 'images/6a4ff59c659f3922b47eac4719b99d3a.jpg', null, '3', '179', '253', null, '1', '2018-04-20 16:24:18', '2018-04-20 16:24:18');
INSERT INTO `goods` VALUES ('1032', '猪肉', '大别山农家散养黑猪土猪肉鲜肉五花肉排骨现杀白崖寨农家土猪', '2', 'images/0fd99783882b19dacf93331f6d5a98a8.jpg', null, '3', '116', '23', null, '1', '2018-04-20 16:24:56', '2018-04-20 16:24:56');
INSERT INTO `goods` VALUES ('1033', '猪肉', '正宗土猪肉前后腿肉4斤 农家散养新鲜现杀黑猪肉生五花肉排骨', '2', 'images/506a63f2b9ee3a96ba4b8ffbbb607111.jpg', null, '3', '89', '232', null, '1', '2018-04-20 16:25:17', '2018-04-20 16:25:17');
INSERT INTO `goods` VALUES ('1034', '胡萝卜', '有机汇 有机胡萝卜新鲜蔬菜宝宝辅食榨汁2500g', '1', 'images/cbc6e498d5b602e58864627c3a071755.jpg', null, '4', '23', '133', null, '1', '2018-05-11 23:37:12', '2018-05-11 23:37:12');
INSERT INTO `goods` VALUES ('1035', '花菜', '农科院推荐春季种花菜种子白花椰菜种子冬季蔬菜种子农家四季', '3', 'images/ebfc8c5ead929651cdc6c55402b0bb16.jpg', null, '4', '13', '212', null, '1', '2018-04-20 19:07:29', '2018-04-20 19:07:29');
INSERT INTO `goods` VALUES ('1036', '辣椒', '新鲜农家 超香特辣印度魔鬼辣椒红干辣椒250g包邮超辣特辣干辣', '1', 'images/ace9f9b3cd1ebe53e2b955e8e2f83271.jpg', null, '4', '9', '4142', null, '1', '2018-04-21 22:05:11', '2018-04-21 22:05:11');
INSERT INTO `goods` VALUES ('1037', '土豆', '新鲜高山小土豆10斤包邮农家自种云南小洋芋马铃薯红皮黄心小', '1', 'images/c15ff09730dca6bfc53497b10c81aead.jpg', null, '4', '12', '132', null, '1', '2018-04-20 19:08:06', '2018-04-20 19:08:06');
INSERT INTO `goods` VALUES ('1038', '西红柿', '西红柿铁皮柿子草莓番茄绿腚铁柿子碱地柿子新鲜蔬菜2.5斤包', '1', 'images/2a0d00893d1fdaf313440ee2432e1f55.jpg', null, '4', '12', '113', null, '1', '2018-05-02 21:07:45', '2018-05-02 21:07:45');
INSERT INTO `goods` VALUES ('1039', '西蓝花', '南山鑫农无公害农家种植西蓝花新鲜蔬菜不打农药西兰花300g装', '3', 'images/7676c400820cc39b5ee6c6372f8925eb.jpg', null, '4', '8.8', '56', null, '1', '2018-04-20 18:48:11', '2018-04-20 18:48:11');
INSERT INTO `goods` VALUES ('1040', '小白菜', '四季小白菜种子冬季阳台盆栽鸡毛菜菜种子四季蔬菜种子青菜菜', '1', 'images/be11ae866dbcad96458924041b9136bb.jpg', null, '4', '3.8', '202', null, '1', '2018-04-20 18:49:01', '2018-04-20 18:49:01');
INSERT INTO `goods` VALUES ('1041', '洋葱', '优质山东洋葱新鲜蔬菜农家自种2500g/5斤包邮西餐烧烤紫皮大', '1', 'images/3e5b6e412ad0a9c1ba29a70663963f81.jpg', null, '4', '13.8', '262', null, '1', '2018-04-20 18:49:45', '2018-04-20 18:49:45');
INSERT INTO `goods` VALUES ('1042', '玉米', '东北农嫂方便即食水果玉米鲜嫩甜玉米粒甜脆多汁60g*10袋', '1', 'images/116467b67fb9782eb2be37b19983c285.jpg', null, '4', '32', '323', null, '1', '2018-04-20 18:50:12', '2018-04-20 18:50:12');
INSERT INTO `goods` VALUES ('1043', '草莓', '丹东99草莓新鲜草莓奶油草莓巧克力孕妇红颜草莓牛奶现摘现发', '1', 'images/829a2a0f59be0371a0a62f32fdd4962f.jpg', null, '1', '89', '121', null, '1', '2018-04-20 18:50:48', '2018-04-20 18:50:48');
INSERT INTO `goods` VALUES ('1044', '哈密瓜', '新鲜绿宝甜瓜 农家孕妇水果新鲜蜜瓜哈密瓜绿宝石香瓜脆瓜共发', '1', 'images/d2e70ed7f76cf12bb1305ef8b68b68de.jpg', null, '1', '29.9', '323', null, '1', '2018-05-02 20:31:04', '2018-05-02 20:31:04');
INSERT INTO `goods` VALUES ('1045', '梨', '新疆库尔勒精选香梨1kg120g以上/个 梨子', '3', 'images/084eb92bb4dce0568e08584aed110883.jpg', null, '1', '15.8', '412', null, '1', '2018-05-11 15:55:45', '2018-05-11 15:55:45');
INSERT INTO `goods` VALUES ('1046', '芒果', '贵妃芒果中大果10斤 一级果海南红金', '1', 'images/721c39ee96b47bf0580153f75fa0ebb8.jpg', null, '1', '35.8', '121', null, '1', '2018-04-20 18:53:03', '2018-04-20 18:53:03');
INSERT INTO `goods` VALUES ('1047', '猕猴桃', '陕西绿心猕猴桃奇异果当季新鲜水果包', '3', 'images/2a86a698be650e2c617760a7fa895e87.jpg', null, '1', '26.9', '122', null, '1', '2018-04-20 18:53:33', '2018-04-20 18:53:33');
INSERT INTO `goods` VALUES ('1048', '柠檬', '当季四川安岳黄柠檬新鲜水果二级果5', '3', 'images/29f2e36bc32e41a0bca543aa6664d417.jpg', null, '1', '19.8', '212', null, '1', '2018-04-20 18:54:08', '2018-04-20 18:54:08');
INSERT INTO `goods` VALUES ('1049', '桃', '现摘新鲜桃子水蜜桃红桃血桃脆桃毛桃', '3', 'images/a6a52dc6ece98c5ca3c85c5cb3a0e7fa.jpg', null, '1', '25.8', '212', null, '1', '2018-04-20 18:54:36', '2018-04-20 18:54:36');
INSERT INTO `goods` VALUES ('1050', '香蕉', '广西小米蕉鸡蕉新鲜banana酸甜皇帝', '3', 'images/07e268cb0620ca02aeca05442f5270e4.jpg', null, '1', '29.9', '133', null, '1', '2018-04-27 16:37:10', '2018-04-27 16:37:10');
INSERT INTO `goods` VALUES ('1051', '樱桃', '现摘现发山东烟台大樱桃车厘子5车里', '3', 'images/cbc0b7c61be98651d75294c02f082582.jpg', null, '1', '69', '122', null, '1', '2018-04-20 18:56:14', '2018-04-20 18:56:14');
INSERT INTO `goods` VALUES ('1052', '柚子', '【常山胡柚旗舰店】胡柚 常山胡柚 新', '1', 'images/225fb7a0cf508ba97ab22ceafebc81ae.jpg', null, '1', '19.8', '113', null, '1', '2018-05-06 15:41:07', '2018-05-06 15:41:07');
INSERT INTO `goods` VALUES ('1053', '鸡', '买一送一正宗土鸡 散养 农家老母鸡草鸡笨鸡柴鸡月子鸡', '2', 'images/caf9fe364bdf8d2cb2a3629d50ca41ca.jpg', null, '2', '88', '362', null, '1', '2018-04-21 15:51:48', '2018-04-21 15:51:48');
INSERT INTO `goods` VALUES ('1054', '鸡', '发2只再送猪肉2年正宗散养土鸡老母鸡农家公鸡乌鸡草鸡笨鸡走地鸡', '2', 'images/d02428a2a5e5091f2652098708492d56.jpg', null, '2', '63', '121', null, '1', '2018-04-21 15:52:09', '2018-04-21 15:52:09');
INSERT INTO `goods` VALUES ('1055', '鸡蛋', '百食轩土鸡蛋农家散养小鸡蛋新鲜草鸡蛋皖南鸡蛋小妹谷物笨鸡蛋纯', '2', 'images/450087c9f185e85edefcc0ecff46b637.jpg', null, '5', '49', '360', null, '1', '2018-04-21 15:52:38', '2018-04-21 15:52:38');
INSERT INTO `goods` VALUES ('1056', '鸡肉', '肌肉小王子鸡胸肉健身即食鸡肉增肌食品高蛋白代餐轻食8*100g', '2', 'images/e1567cbe306ea9317928fea80ffe838b.jpg', null, '3', '56', '522', null, '1', '2018-04-21 15:54:09', '2018-04-21 15:54:09');
INSERT INTO `goods` VALUES ('1057', '牛', '正宗黄牛肉新鲜牛肉农家生牛肉牛腩生鲜牛腱子四斤 顺丰速运', '2', 'images/ecc24f0c2eaf44c5035a76fe9dbb2501.jpg', null, '2', '63', '33', null, '1', '2018-05-12 12:57:40', '2018-05-12 12:57:40');
INSERT INTO `goods` VALUES ('1058', '牛肉', '包邮5斤装进口原装生鲜牛腱子真空包装新鲜牛肉生牛肉黄牛肉牛腩', '2', 'images/db5b85523687c9f9e64039be8e76f6b0.jpg', null, '3', '139', '266', null, '1', '2018-04-21 15:55:41', '2018-04-21 15:55:41');
INSERT INTO `goods` VALUES ('1059', '鸭肉', '原膳嫩鸭（樱桃谷鸭）950g 山东特产 鸭肉', '2', 'images/faacd4262a18c4d544f122ff073560ac.jpg', null, '3', '43', '323', null, '1', '2018-04-21 15:56:47', '2018-04-21 15:56:47');
INSERT INTO `goods` VALUES ('1060', '羊肉', '蒙羊 羊腿4.3斤内蒙古清真生羊肉 羊肉新鲜 烧烤火锅食材生羊腿肉', '2', 'images/fe60b7122ff24162e9ada6566613471a.jpg', null, '3', '197', '226', null, '1', '2018-04-21 15:58:07', '2018-04-21 15:58:07');
INSERT INTO `goods` VALUES ('1061', '猪肉', '原膳丹麦皇冠谷饲猪蹄700g/包 猪脚 进口猪肉 生鲜食材', '2', 'images/962952fe409cf37d0c0dcd90a1e55738.jpg', null, '3', '25.9', '63', null, '1', '2018-04-21 15:59:11', '2018-04-21 15:59:11');
INSERT INTO `goods` VALUES ('1062', '猪肉', '正宗土猪肉前后腿肉4斤 农家散养新鲜现杀黑猪肉生五花肉排骨包邮', '2', 'images/51b61b5bbbb9f88de0e1d2635a263c8b.jpg', null, '3', '109', '562', null, '1', '2018-04-21 15:59:55', '2018-04-21 15:59:55');
INSERT INTO `goods` VALUES ('1063', '花菜', '花菜', '1', 'images/87236451b48ada2320d34fd5655826e0.jpg', null, '4', '6', '136', null, '1', '2018-04-25 11:05:53', '2018-04-25 11:05:53');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2016_01_04_173148_create_admin_tables', '1');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) NOT NULL,
  `payment` varchar(255) DEFAULT NULL,
  `payment_type` int(2) DEFAULT NULL,
  `post_fee` varchar(255) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `payment_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `consign_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `end_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `close_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `shipping_name` varchar(100) DEFAULT NULL,
  `shipping_code` varchar(50) DEFAULT NULL,
  `shipping_id` varchar(2) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `buyer_message` varchar(255) DEFAULT NULL,
  `buyer_nick` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('48', '201805024526681', null, null, null, '1', '2018-05-02 21:07:45', '2018-05-02 21:07:45', null, null, null, null, null, null, null, '100000', null, null);
INSERT INTO `orders` VALUES ('49', '201805060785571', null, null, null, '1', '2018-05-06 15:41:07', '2018-05-06 15:41:07', null, null, null, null, null, null, null, '100000', null, null);
INSERT INTO `orders` VALUES ('50', '201805070609449', null, null, null, '1', '2018-05-07 11:26:06', '2018-05-07 11:26:06', null, null, null, null, null, null, null, '100000', null, null);
INSERT INTO `orders` VALUES ('51', '201805114511984', null, null, null, '1', '2018-05-11 15:55:45', '2018-05-11 15:55:45', null, null, null, null, null, null, null, '100000', null, null);
INSERT INTO `orders` VALUES ('52', '201805111203149', null, null, null, '1', '2018-05-11 23:37:12', '2018-05-11 23:37:12', null, null, null, null, null, null, null, '100000', null, null);
INSERT INTO `orders` VALUES ('53', '201805123596208', null, null, null, '1', '2018-05-12 10:08:35', '2018-05-12 10:08:35', null, null, null, null, null, null, null, '100000', null, null);
INSERT INTO `orders` VALUES ('54', '201805122834150', null, null, null, '1', '2018-05-12 10:10:28', '2018-05-12 10:10:28', null, null, null, null, null, null, null, '100000', null, null);
INSERT INTO `orders` VALUES ('55', '201805120870939', null, null, null, '1', '2018-05-12 12:18:08', '2018-05-12 12:18:08', null, null, null, null, null, null, null, '100000', null, null);
INSERT INTO `orders` VALUES ('56', '201805124046771', null, null, null, '1', '2018-05-12 12:57:40', '2018-05-12 12:57:40', null, null, null, null, null, null, null, '100000', null, null);

-- ----------------------------
-- Table structure for order_goods
-- ----------------------------
DROP TABLE IF EXISTS `order_goods`;
CREATE TABLE `order_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` varchar(255) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  `total_fee` varchar(255) DEFAULT NULL,
  `pics` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_goods
-- ----------------------------
INSERT INTO `order_goods` VALUES ('44', '1038', '201805024526681', '100', '西红柿', '12', '1200', 'images/2a0d00893d1fdaf313440ee2432e1f55.jpg', '2018-05-02 21:07:45', '2018-05-02 21:07:45');
INSERT INTO `order_goods` VALUES ('45', '1052', '201805060785571', '100', '柚子', '19.8', '1980', 'images/225fb7a0cf508ba97ab22ceafebc81ae.jpg', '2018-05-06 15:41:07', '2018-05-06 15:41:07');
INSERT INTO `order_goods` VALUES ('46', '1045', '201805070609449', '100', '梨', '15.8', '1580', 'images/084eb92bb4dce0568e08584aed110883.jpg', '2018-05-07 11:26:06', '2018-05-07 11:26:06');
INSERT INTO `order_goods` VALUES ('47', '1045', '201805114511984', '100', '梨', '15.8', '1580', 'images/084eb92bb4dce0568e08584aed110883.jpg', '2018-05-11 15:55:45', '2018-05-11 15:55:45');
INSERT INTO `order_goods` VALUES ('48', '1034', '201805111203149', '100', '胡萝卜', '23', '2300', 'images/cbc6e498d5b602e58864627c3a071755.jpg', '2018-05-11 23:37:12', '2018-05-11 23:37:12');
INSERT INTO `order_goods` VALUES ('49', '1057', '201805123596208', '100', '牛', '63', '6300', 'images/ecc24f0c2eaf44c5035a76fe9dbb2501.jpg', '2018-05-12 10:08:35', '2018-05-12 10:08:35');
INSERT INTO `order_goods` VALUES ('50', '1057', '201805122834150', '100', '牛', '63', '6300', 'images/ecc24f0c2eaf44c5035a76fe9dbb2501.jpg', '2018-05-12 10:10:28', '2018-05-12 10:10:28');
INSERT INTO `order_goods` VALUES ('51', '1057', '201805120870939', '100', '牛', '63', '6300', 'images/ecc24f0c2eaf44c5035a76fe9dbb2501.jpg', '2018-05-12 12:18:08', '2018-05-12 12:18:08');
INSERT INTO `order_goods` VALUES ('52', '1057', '201805124046771', '100', '牛', '63', '6300', 'images/ecc24f0c2eaf44c5035a76fe9dbb2501.jpg', '2018-05-12 12:57:40', '2018-05-12 12:57:40');

-- ----------------------------
-- Table structure for order_rating
-- ----------------------------
DROP TABLE IF EXISTS `order_rating`;
CREATE TABLE `order_rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `goods_grade` int(2) DEFAULT NULL,
  `goods_content` text,
  `goods_pics` varchar(255) DEFAULT NULL,
  `shop_grade` int(2) DEFAULT NULL,
  `shop_content` text,
  `shop_pics` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_rating
-- ----------------------------

-- ----------------------------
-- Table structure for provinces
-- ----------------------------
DROP TABLE IF EXISTS `provinces`;
CREATE TABLE `provinces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `pycode` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of provinces
-- ----------------------------
INSERT INTO `provinces` VALUES ('1', '北京市', 'bjs');
INSERT INTO `provinces` VALUES ('2', '上海市', 'shs');
INSERT INTO `provinces` VALUES ('3', '天津市', 'tjs');
INSERT INTO `provinces` VALUES ('4', '重庆市', 'cqs');
INSERT INTO `provinces` VALUES ('5', '安徽省', 'ahs');
INSERT INTO `provinces` VALUES ('6', '福建省', 'fjs');
INSERT INTO `provinces` VALUES ('7', '甘肃省', 'gss');
INSERT INTO `provinces` VALUES ('8', '广东省', 'gds');
INSERT INTO `provinces` VALUES ('9', '广西省', 'gx');
INSERT INTO `provinces` VALUES ('10', '贵州省', 'gzs');
INSERT INTO `provinces` VALUES ('11', '河北省', 'hbs');
INSERT INTO `provinces` VALUES ('12', '河南省', 'hns');
INSERT INTO `provinces` VALUES ('13', '黑龙江省', 'hljs');
INSERT INTO `provinces` VALUES ('14', '湖北省', 'hbs');
INSERT INTO `provinces` VALUES ('15', '湖南省', 'hns');
INSERT INTO `provinces` VALUES ('16', '吉林省', 'jls');
INSERT INTO `provinces` VALUES ('17', '江苏省', 'jss');
INSERT INTO `provinces` VALUES ('18', '江西省', 'jxs');
INSERT INTO `provinces` VALUES ('19', '辽宁省', 'lns');
INSERT INTO `provinces` VALUES ('20', '内蒙古', 'nmg');
INSERT INTO `provinces` VALUES ('21', '宁夏', 'nx');
INSERT INTO `provinces` VALUES ('22', '青海省', 'qhs');
INSERT INTO `provinces` VALUES ('23', '山东省', 'sds');
INSERT INTO `provinces` VALUES ('24', '山西省', 'sxs');
INSERT INTO `provinces` VALUES ('25', '陕西省', 'sxs');
INSERT INTO `provinces` VALUES ('26', '四川省', 'scs');
INSERT INTO `provinces` VALUES ('27', '西藏', 'xz');
INSERT INTO `provinces` VALUES ('28', '新疆', 'xj');
INSERT INTO `provinces` VALUES ('29', '云南省', 'yns');
INSERT INTO `provinces` VALUES ('30', '浙江省', 'zjs');
INSERT INTO `provinces` VALUES ('31', '海南省', 'hls');
INSERT INTO `provinces` VALUES ('32', '香港', 'xg');
INSERT INTO `provinces` VALUES ('33', '台湾省', 'tys');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(50) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `last_time` varchar(100) DEFAULT NULL,
  `last_ip` varchar(100) DEFAULT NULL,
  `grade` int(5) NOT NULL,
  `pid` int(5) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100110 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('100000', '张三', '$2y$10$vPZ/OYwvTO1jDyv6UD81t.DMtylgNVqQNs3fhcrgdV2xypjkOcT7O', 'admin', '570057644@qq.com', '2018-05-21 12:46:28', '127.0.0.1', '7', '22', 'users/avatars/1000007', 'LpNXOe5kz4tOGWN7kHgVfRq3EEbWTUmbL1y4WjUmcYIN8UXvGzn3vRbHlubY', '2018-05-21 12:46:28', '2018-05-21 12:46:28');
INSERT INTO `users` VALUES ('100103', '新用户0571', '$2y$10$OrRYU5x6Bv9H9bYjfLsnnO8i7Gr7drEPTScSEwhxQJ//evWOBYlrK', '15808310571', null, '2018-05-06 08:49:43', '127.0.0.1', '1', '1', 'users/avatars/default.jpg', 'wNZub0LI3jNQ96cwHJ3abkHf2y4z4aBpfUcRBoXzkfefYMsHtM02L3n0j7tU', '2018-05-06 08:55:03', '2018-05-06 08:55:03');
INSERT INTO `users` VALUES ('100104', '新用户0571', '$2y$10$ROgis7TiDptHeBCxDKA7a.mWv8xV18GdLJ5rV9fjK3qFtDEVmcNkO', '15808310571', null, null, null, '1', '1', 'users/avatars/default.jpg', null, '2018-04-27 16:36:49', '2018-04-27 16:36:49');
INSERT INTO `users` VALUES ('100105', '新用户2557', '$2y$10$8zHPBPZvg9u0rNjUhZ/faOyLZWhVYWpyE3uO9DmRYbniZW26tPXwa', '17781112557', null, '2018-05-04 16:33:27', '127.0.0.1', '1', '1', 'users/avatars/default.jpg', '8hjoZIbJZVO5ExwiQvK6OtI9jdZ0sm8pJFV1gveMci8CyBFQYWS4bzUS9LbN', '2018-05-04 16:33:29', '2018-05-04 16:33:29');
INSERT INTO `users` VALUES ('100106', '新用户0571', '$2y$10$WtVhvGlLkCL.Huvxgl9sVu6hEqZSLYWUcwV5Mh.svOh2jwqNBrTj6', '15808310571', null, null, null, '1', '1', 'users/avatars/default.jpg', null, '2018-05-05 19:47:42', '2018-05-05 19:47:42');
INSERT INTO `users` VALUES ('100107', '新用户8888', '$2y$10$GG1CJPCq/Cq62MDT5IZaRuqS21uXPJjwQDpc5OO0SSt.RVkrjdYem', '18888888888', null, null, null, '1', '1', 'users/avatars/default.jpg', null, '2018-05-06 10:59:03', '2018-05-06 10:59:03');
INSERT INTO `users` VALUES ('100108', '新用户8888', '$2y$10$yCqJKdTeuSdrkaxKH9lDHewhhZdLE7BFGs9qnNUY8tpTeVMI88JgW', '15888888888', null, '2018-05-06 17:01:45', '127.0.0.1', '1', '1', 'users/avatars/100108', 'QYcVDTwn8ar5KBt5lPx3NnDV9ABlMY5oUHRS4ManeGsmk0MI77EDlA5D3GWu', '2018-05-06 17:02:04', '2018-05-06 17:02:04');
INSERT INTO `users` VALUES ('100109', '新用户1111', '$2y$10$NtACCIcO2QstnfAU8ZPhi.unpFCKonKTQNBwRxJgVnbXkjCPd6VsS', '11111111111', null, null, null, '1', '1', 'users/avatars/default.jpg', null, '2018-05-10 17:04:20', '2018-05-10 17:04:20');

-- ----------------------------
-- Table structure for users_address
-- ----------------------------
DROP TABLE IF EXISTS `users_address`;
CREATE TABLE `users_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `receiver_name` varchar(50) DEFAULT NULL,
  `receiver_phone` varchar(255) DEFAULT NULL,
  `receiver_mobile` varchar(255) DEFAULT NULL,
  `receiver_province` varchar(255) DEFAULT NULL,
  `receiver_city` varchar(255) DEFAULT NULL,
  `receiver_district` varchar(255) DEFAULT NULL,
  `receiver_address` varchar(255) DEFAULT NULL,
  `receiver_zip` varchar(255) DEFAULT NULL,
  `default` int(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_address
-- ----------------------------
INSERT INTO `users_address` VALUES ('1', '19', '肖勇', '15808310571', '15808310571', '四川省', '南充市', '顺庆区', '西华师大', '100000', '0', '2018-04-10 15:28:38', '2018-04-10 15:28:38');
INSERT INTO `users_address` VALUES ('2', '19', '张大', '12121212311', '21213412331', '北京市', '北京市', '北京市', '北京市', '212124', '1', '2018-04-10 15:28:41', '2018-04-10 15:28:41');
SET FOREIGN_KEY_CHECKS=1;
