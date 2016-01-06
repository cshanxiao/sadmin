/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50537
Source Host           : localhost:3306
Source Database       : accounts

Target Server Type    : MYSQL
Target Server Version : 50537
File Encoding         : 65001

Date: 2016-01-06 17:34:33
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_group_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_58c48ba9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_permission`
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_51277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO auth_permission VALUES ('1', 'Can add permission', '1', 'add_permission');
INSERT INTO auth_permission VALUES ('2', 'Can change permission', '1', 'change_permission');
INSERT INTO auth_permission VALUES ('3', 'Can delete permission', '1', 'delete_permission');
INSERT INTO auth_permission VALUES ('4', 'Can add group', '2', 'add_group');
INSERT INTO auth_permission VALUES ('5', 'Can change group', '2', 'change_group');
INSERT INTO auth_permission VALUES ('6', 'Can delete group', '2', 'delete_group');
INSERT INTO auth_permission VALUES ('7', 'Can add content type', '3', 'add_contenttype');
INSERT INTO auth_permission VALUES ('8', 'Can change content type', '3', 'change_contenttype');
INSERT INTO auth_permission VALUES ('9', 'Can delete content type', '3', 'delete_contenttype');
INSERT INTO auth_permission VALUES ('10', 'Can add session', '4', 'add_session');
INSERT INTO auth_permission VALUES ('11', 'Can change session', '4', 'change_session');
INSERT INTO auth_permission VALUES ('12', 'Can delete session', '4', 'delete_session');
INSERT INTO auth_permission VALUES ('13', 'Can add permission list', '5', 'add_permissionlist');
INSERT INTO auth_permission VALUES ('14', 'Can change permission list', '5', 'change_permissionlist');
INSERT INTO auth_permission VALUES ('15', 'Can delete permission list', '5', 'delete_permissionlist');
INSERT INTO auth_permission VALUES ('16', 'Can add role list', '6', 'add_rolelist');
INSERT INTO auth_permission VALUES ('17', 'Can change role list', '6', 'change_rolelist');
INSERT INTO auth_permission VALUES ('18', 'Can delete role list', '6', 'delete_rolelist');
INSERT INTO auth_permission VALUES ('19', 'Can add user', '7', 'add_user');
INSERT INTO auth_permission VALUES ('20', 'Can change user', '7', 'change_user');
INSERT INTO auth_permission VALUES ('21', 'Can delete user', '7', 'delete_user');

-- ----------------------------
-- Table structure for `django_content_type`
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_3ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO django_content_type VALUES ('2', 'auth', 'group');
INSERT INTO django_content_type VALUES ('1', 'auth', 'permission');
INSERT INTO django_content_type VALUES ('3', 'contenttypes', 'contenttype');
INSERT INTO django_content_type VALUES ('4', 'sessions', 'session');
INSERT INTO django_content_type VALUES ('5', 'UserManage', 'permissionlist');
INSERT INTO django_content_type VALUES ('6', 'UserManage', 'rolelist');
INSERT INTO django_content_type VALUES ('7', 'UserManage', 'user');

-- ----------------------------
-- Table structure for `django_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO django_migrations VALUES ('1', 'contenttypes', '0001_initial', '2016-01-06 08:08:17');
INSERT INTO django_migrations VALUES ('2', 'contenttypes', '0002_remove_content_type_name', '2016-01-06 08:08:17');
INSERT INTO django_migrations VALUES ('3', 'auth', '0001_initial', '2016-01-06 08:08:18');
INSERT INTO django_migrations VALUES ('4', 'auth', '0002_alter_permission_name_max_length', '2016-01-06 08:08:19');
INSERT INTO django_migrations VALUES ('5', 'auth', '0003_alter_user_email_max_length', '2016-01-06 08:08:19');
INSERT INTO django_migrations VALUES ('6', 'auth', '0004_alter_user_username_opts', '2016-01-06 08:08:19');
INSERT INTO django_migrations VALUES ('7', 'auth', '0005_alter_user_last_login_null', '2016-01-06 08:08:19');
INSERT INTO django_migrations VALUES ('8', 'auth', '0006_require_contenttypes_0002', '2016-01-06 08:08:19');
INSERT INTO django_migrations VALUES ('9', 'sessions', '0001_initial', '2016-01-06 08:08:19');

-- ----------------------------
-- Table structure for `django_session`
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO django_session VALUES ('a8y479cl67yfy3ln0j6mxg1kjsrk8d1i', 'Y2Y1MzBmNGYzNjc2OGM4MjAwNjM0N2FhNjZjMDc5ODhjNzk1ZDAxYzp7Il9hdXRoX3VzZXJfaGFzaCI6ImUzM2E3YmIxYjRlMmVhZDFiM2ZkZTM1NTcwNTBhZTU5MTRlOTc4NWYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-01-20 09:29:01');

-- ----------------------------
-- Table structure for `usermanage_permissionlist`
-- ----------------------------
DROP TABLE IF EXISTS `usermanage_permissionlist`;
CREATE TABLE `usermanage_permissionlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usermanage_permissionlist
-- ----------------------------

-- ----------------------------
-- Table structure for `usermanage_rolelist`
-- ----------------------------
DROP TABLE IF EXISTS `usermanage_rolelist`;
CREATE TABLE `usermanage_rolelist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usermanage_rolelist
-- ----------------------------
INSERT INTO usermanage_rolelist VALUES ('1', '超级管理员');
INSERT INTO usermanage_rolelist VALUES ('2', '普通用户');

-- ----------------------------
-- Table structure for `usermanage_rolelist_permission`
-- ----------------------------
DROP TABLE IF EXISTS `usermanage_rolelist_permission`;
CREATE TABLE `usermanage_rolelist_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rolelist_id` int(11) NOT NULL,
  `permissionlist_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rolelist_id` (`rolelist_id`,`permissionlist_id`),
  KEY `UserM_permissionlist_id_240f9044_fk_UserManage_permissionlist_id` (`permissionlist_id`),
  CONSTRAINT `UserM_permissionlist_id_240f9044_fk_UserManage_permissionlist_id` FOREIGN KEY (`permissionlist_id`) REFERENCES `usermanage_permissionlist` (`id`),
  CONSTRAINT `UserManage_roleli_rolelist_id_591a9e13_fk_UserManage_rolelist_id` FOREIGN KEY (`rolelist_id`) REFERENCES `usermanage_rolelist` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usermanage_rolelist_permission
-- ----------------------------

-- ----------------------------
-- Table structure for `usermanage_user`
-- ----------------------------
DROP TABLE IF EXISTS `usermanage_user`;
CREATE TABLE `usermanage_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `username` varchar(40) NOT NULL,
  `email` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `nickname` varchar(64) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `UserManage_user_role_id_16721a93_fk_UserManage_rolelist_id` (`role_id`),
  CONSTRAINT `usermanage_user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `usermanage_rolelist` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usermanage_user
-- ----------------------------
INSERT INTO usermanage_user VALUES ('1', 'pbkdf2_sha256$20000$zHXeYACv98tE$wLXeOqG3bFIWkDQ3rrucxYritjnV/ihYUcYkgwIb9v0=', '2016-01-06 09:29:01', 'admin', 'test@163.com', '1', '1', 'admin', '男', null);
