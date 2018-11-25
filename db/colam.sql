/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : colam

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-11-25 10:42:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for answers
-- ----------------------------
DROP TABLE IF EXISTS `answers`;
CREATE TABLE `answers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question_id` int(10) unsigned NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `check` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of answers
-- ----------------------------
INSERT INTO `answers` VALUES ('1', '1', '<p>Đ&aacute;p &aacute;n đ&uacute;ng</p>', '1', '1', '2018-11-06 10:21:00', '2018-11-06 10:24:46');

-- ----------------------------
-- Table structure for banners
-- ----------------------------
DROP TABLE IF EXISTS `banners`;
CREATE TABLE `banners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_button` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `href` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of banners
-- ----------------------------
INSERT INTO `banners` VALUES ('1', 'Học tiếng nhật', 'Chưa bao giờ dễ đến thế', 'banners\\November2018\\2SWAE3O5t6JcBGa7bz4K.jpg', 'home', '1', '2018-11-22 13:15:42', '2018-11-22 13:15:42', null, null);
INSERT INTO `banners` VALUES ('2', 'Tiếng nhật', 'Xem thêm', 'banners\\November2018\\Uz1lUVZKcDKNiezQZrSX.jpg', 'home', '1', '2018-11-22 13:21:47', '2018-11-22 13:21:47', null, null);

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', '2', '1', 'Category 1', 'category-1', '2018-10-25 08:39:37', '2018-11-24 18:27:05');
INSERT INTO `categories` VALUES ('2', '1', '2', 'Category 2', 'category-2', '2018-10-25 08:39:37', '2018-11-24 18:27:05');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `lesson_id` int(10) unsigned NOT NULL,
  `post_id` int(10) unsigned NOT NULL,
  `page_id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of comments
-- ----------------------------

-- ----------------------------
-- Table structure for contacts
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of contacts
-- ----------------------------

-- ----------------------------
-- Table structure for courses
-- ----------------------------
DROP TABLE IF EXISTS `courses`;
CREATE TABLE `courses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `video_number` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `test_number` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of courses
-- ----------------------------
INSERT INTO `courses` VALUES ('1', 'CL45N', 'N5', '4', '123', '1', 'courses/November2018/OqqFr8KghZB6hM7Vosrx.png', '2018-11-01 07:22:44', '2018-11-01 07:22:44', 'n5', '0');
INSERT INTO `courses` VALUES ('2', 'N5b', 'N5b', '4', '4', '1', 'courses\\November2018\\AOuoeO41Delttk6ncbu1.png', '2018-11-06 10:31:45', '2018-11-23 14:30:01', 'n5b', '0');
INSERT INTO `courses` VALUES ('3', 'N4', 'N4', '6', '60', '1', 'courses\\November2018\\3hAIKRQxJkY8n0f7cXC1.png', '2018-11-23 14:31:47', '2018-11-23 14:31:47', 'n4', '10');

-- ----------------------------
-- Table structure for course_lesson
-- ----------------------------
DROP TABLE IF EXISTS `course_lesson`;
CREATE TABLE `course_lesson` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` int(10) unsigned NOT NULL,
  `lesson_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of course_lesson
-- ----------------------------
INSERT INTO `course_lesson` VALUES ('1', '1', '1');
INSERT INTO `course_lesson` VALUES ('2', '2', '1');
INSERT INTO `course_lesson` VALUES ('3', '1', '2');

-- ----------------------------
-- Table structure for course_package
-- ----------------------------
DROP TABLE IF EXISTS `course_package`;
CREATE TABLE `course_package` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` int(10) unsigned DEFAULT NULL,
  `package_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of course_package
-- ----------------------------
INSERT INTO `course_package` VALUES ('1', '1', '1', null, null);
INSERT INTO `course_package` VALUES ('2', '1', '2', null, null);
INSERT INTO `course_package` VALUES ('3', '3', '3', null, null);
INSERT INTO `course_package` VALUES ('4', '3', '1', null, null);

-- ----------------------------
-- Table structure for data_rows
-- ----------------------------
DROP TABLE IF EXISTS `data_rows`;
CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of data_rows
-- ----------------------------
INSERT INTO `data_rows` VALUES ('1', '1', 'id', 'number', 'ID', '1', '0', '0', '0', '0', '0', null, '1');
INSERT INTO `data_rows` VALUES ('2', '1', 'name', 'text', 'Name', '1', '1', '1', '1', '1', '1', null, '2');
INSERT INTO `data_rows` VALUES ('3', '1', 'email', 'text', 'Email', '1', '1', '1', '1', '1', '1', null, '3');
INSERT INTO `data_rows` VALUES ('4', '1', 'password', 'password', 'Password', '1', '0', '0', '1', '1', '0', null, '4');
INSERT INTO `data_rows` VALUES ('5', '1', 'remember_token', 'text', 'Remember Token', '0', '0', '0', '0', '0', '0', null, '5');
INSERT INTO `data_rows` VALUES ('6', '1', 'created_at', 'timestamp', 'Created At', '0', '1', '1', '0', '0', '0', null, '6');
INSERT INTO `data_rows` VALUES ('7', '1', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', null, '7');
INSERT INTO `data_rows` VALUES ('8', '1', 'avatar', 'image', 'Avatar', '0', '1', '1', '1', '1', '1', null, '8');
INSERT INTO `data_rows` VALUES ('9', '1', 'user_belongsto_role_relationship', 'relationship', 'Role', '0', '1', '1', '1', '1', '0', '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', '10');
INSERT INTO `data_rows` VALUES ('10', '1', 'user_belongstomany_role_relationship', 'relationship', 'Roles', '0', '1', '1', '1', '1', '0', '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', '11');
INSERT INTO `data_rows` VALUES ('11', '1', 'locale', 'text', 'Locale', '0', '1', '1', '1', '1', '0', null, '12');
INSERT INTO `data_rows` VALUES ('12', '1', 'settings', 'hidden', 'Settings', '0', '0', '0', '0', '0', '0', null, '12');
INSERT INTO `data_rows` VALUES ('13', '2', 'id', 'number', 'ID', '1', '0', '0', '0', '0', '0', null, '1');
INSERT INTO `data_rows` VALUES ('14', '2', 'name', 'text', 'Name', '1', '1', '1', '1', '1', '1', null, '2');
INSERT INTO `data_rows` VALUES ('15', '2', 'created_at', 'timestamp', 'Created At', '0', '0', '0', '0', '0', '0', null, '3');
INSERT INTO `data_rows` VALUES ('16', '2', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', null, '4');
INSERT INTO `data_rows` VALUES ('17', '3', 'id', 'number', 'ID', '1', '0', '0', '0', '0', '0', null, '1');
INSERT INTO `data_rows` VALUES ('18', '3', 'name', 'text', 'Name', '1', '1', '1', '1', '1', '1', null, '2');
INSERT INTO `data_rows` VALUES ('19', '3', 'created_at', 'timestamp', 'Created At', '0', '0', '0', '0', '0', '0', null, '3');
INSERT INTO `data_rows` VALUES ('20', '3', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', null, '4');
INSERT INTO `data_rows` VALUES ('21', '3', 'display_name', 'text', 'Display Name', '1', '1', '1', '1', '1', '1', null, '5');
INSERT INTO `data_rows` VALUES ('22', '1', 'role_id', 'text', 'Role', '1', '1', '1', '1', '1', '1', null, '9');
INSERT INTO `data_rows` VALUES ('23', '4', 'id', 'hidden', 'ID', '1', '0', '0', '0', '0', '0', '{}', '1');
INSERT INTO `data_rows` VALUES ('24', '4', 'parent_id', 'select_dropdown', 'Parent', '0', '0', '1', '1', '1', '1', '{\"default\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', '2');
INSERT INTO `data_rows` VALUES ('25', '4', 'order', 'text', 'Order', '1', '1', '1', '1', '1', '1', '{\"default\":1}', '3');
INSERT INTO `data_rows` VALUES ('26', '4', 'name', 'text', 'Name', '1', '1', '1', '1', '1', '1', '{}', '4');
INSERT INTO `data_rows` VALUES ('27', '4', 'slug', 'text', 'Slug', '1', '1', '1', '1', '1', '1', '{\"slugify\":{\"origin\":\"name\"}}', '5');
INSERT INTO `data_rows` VALUES ('28', '4', 'created_at', 'timestamp', 'Created At', '0', '0', '1', '0', '0', '0', '{}', '6');
INSERT INTO `data_rows` VALUES ('29', '4', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', '{}', '7');
INSERT INTO `data_rows` VALUES ('30', '5', 'id', 'number', 'ID', '1', '0', '0', '0', '0', '0', null, '1');
INSERT INTO `data_rows` VALUES ('31', '5', 'author_id', 'text', 'Author', '1', '0', '1', '1', '0', '1', null, '2');
INSERT INTO `data_rows` VALUES ('32', '5', 'category_id', 'text', 'Category', '1', '0', '1', '1', '1', '0', null, '3');
INSERT INTO `data_rows` VALUES ('33', '5', 'title', 'text', 'Title', '1', '1', '1', '1', '1', '1', null, '4');
INSERT INTO `data_rows` VALUES ('34', '5', 'excerpt', 'text_area', 'Excerpt', '1', '0', '1', '1', '1', '1', null, '5');
INSERT INTO `data_rows` VALUES ('35', '5', 'body', 'rich_text_box', 'Body', '1', '0', '1', '1', '1', '1', null, '6');
INSERT INTO `data_rows` VALUES ('36', '5', 'image', 'image', 'Post Image', '0', '1', '1', '1', '1', '1', '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', '7');
INSERT INTO `data_rows` VALUES ('37', '5', 'slug', 'text', 'Slug', '1', '0', '1', '1', '1', '1', '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', '8');
INSERT INTO `data_rows` VALUES ('38', '5', 'meta_description', 'text_area', 'Meta Description', '1', '0', '1', '1', '1', '1', null, '9');
INSERT INTO `data_rows` VALUES ('39', '5', 'meta_keywords', 'text_area', 'Meta Keywords', '1', '0', '1', '1', '1', '1', null, '10');
INSERT INTO `data_rows` VALUES ('40', '5', 'status', 'select_dropdown', 'Status', '1', '1', '1', '1', '1', '1', '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', '11');
INSERT INTO `data_rows` VALUES ('41', '5', 'created_at', 'timestamp', 'Created At', '0', '1', '1', '0', '0', '0', null, '12');
INSERT INTO `data_rows` VALUES ('42', '5', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', null, '13');
INSERT INTO `data_rows` VALUES ('43', '5', 'seo_title', 'text', 'SEO Title', '0', '1', '1', '1', '1', '1', null, '14');
INSERT INTO `data_rows` VALUES ('44', '5', 'featured', 'checkbox', 'Featured', '1', '1', '1', '1', '1', '1', null, '15');
INSERT INTO `data_rows` VALUES ('45', '6', 'id', 'number', 'ID', '1', '0', '0', '0', '0', '0', null, '1');
INSERT INTO `data_rows` VALUES ('46', '6', 'author_id', 'text', 'Author', '1', '0', '0', '0', '0', '0', null, '2');
INSERT INTO `data_rows` VALUES ('47', '6', 'title', 'text', 'Title', '1', '1', '1', '1', '1', '1', null, '3');
INSERT INTO `data_rows` VALUES ('48', '6', 'excerpt', 'text_area', 'Excerpt', '1', '0', '1', '1', '1', '1', null, '4');
INSERT INTO `data_rows` VALUES ('49', '6', 'body', 'rich_text_box', 'Body', '1', '0', '1', '1', '1', '1', null, '5');
INSERT INTO `data_rows` VALUES ('50', '6', 'slug', 'text', 'Slug', '1', '0', '1', '1', '1', '1', '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', '6');
INSERT INTO `data_rows` VALUES ('51', '6', 'meta_description', 'text', 'Meta Description', '1', '0', '1', '1', '1', '1', null, '7');
INSERT INTO `data_rows` VALUES ('52', '6', 'meta_keywords', 'text', 'Meta Keywords', '1', '0', '1', '1', '1', '1', null, '8');
INSERT INTO `data_rows` VALUES ('53', '6', 'status', 'select_dropdown', 'Status', '1', '1', '1', '1', '1', '1', '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', '9');
INSERT INTO `data_rows` VALUES ('54', '6', 'created_at', 'timestamp', 'Created At', '1', '1', '1', '0', '0', '0', null, '10');
INSERT INTO `data_rows` VALUES ('55', '6', 'updated_at', 'timestamp', 'Updated At', '1', '0', '0', '0', '0', '0', null, '11');
INSERT INTO `data_rows` VALUES ('56', '6', 'image', 'image', 'Page Image', '0', '1', '1', '1', '1', '1', null, '12');
INSERT INTO `data_rows` VALUES ('57', '7', 'id', 'hidden', 'Id', '1', '0', '0', '0', '0', '0', '{}', '1');
INSERT INTO `data_rows` VALUES ('58', '7', 'code', 'text', 'Code', '0', '1', '1', '1', '1', '1', '{}', '2');
INSERT INTO `data_rows` VALUES ('59', '7', 'name', 'text', 'Name', '0', '1', '1', '1', '1', '1', '{}', '3');
INSERT INTO `data_rows` VALUES ('65', '7', 'time', 'number', 'Time', '0', '1', '1', '1', '1', '1', '{}', '6');
INSERT INTO `data_rows` VALUES ('66', '7', 'video_number', 'number', 'Video Number', '0', '1', '1', '1', '1', '1', '{}', '8');
INSERT INTO `data_rows` VALUES ('67', '7', 'status', 'select_dropdown', 'Status', '1', '1', '1', '1', '1', '1', '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', '9');
INSERT INTO `data_rows` VALUES ('68', '7', 'image', 'image', 'Image', '0', '1', '1', '1', '1', '1', '{}', '10');
INSERT INTO `data_rows` VALUES ('70', '7', 'created_at', 'timestamp', 'Created At', '0', '0', '0', '0', '0', '0', '{}', '11');
INSERT INTO `data_rows` VALUES ('71', '7', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', '{}', '12');
INSERT INTO `data_rows` VALUES ('73', '7', 'slug', 'text', 'Slug', '0', '1', '1', '1', '1', '1', '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true}}', '5');
INSERT INTO `data_rows` VALUES ('74', '8', 'id', 'number', 'Id', '1', '0', '0', '0', '0', '0', '{}', '1');
INSERT INTO `data_rows` VALUES ('75', '8', 'test_id', 'select_dropdown', 'Test Id', '1', '1', '1', '1', '1', '1', '{}', '4');
INSERT INTO `data_rows` VALUES ('76', '8', 'name', 'text', 'Name', '0', '1', '1', '1', '1', '1', '{}', '2');
INSERT INTO `data_rows` VALUES ('77', '8', 'video', 'text', 'Video', '0', '1', '1', '1', '1', '1', '{}', '5');
INSERT INTO `data_rows` VALUES ('78', '8', 'content', 'rich_text_box', 'Content', '0', '1', '1', '1', '1', '1', '{}', '6');
INSERT INTO `data_rows` VALUES ('80', '8', 'view', 'number', 'View', '0', '1', '1', '1', '1', '1', '{}', '8');
INSERT INTO `data_rows` VALUES ('81', '8', 'trial', 'select_dropdown', 'Trial', '1', '1', '1', '1', '1', '1', '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', '10');
INSERT INTO `data_rows` VALUES ('82', '8', 'status', 'select_dropdown', 'Status', '1', '1', '1', '1', '1', '1', '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', '14');
INSERT INTO `data_rows` VALUES ('83', '8', 'created_at', 'timestamp', 'Created At', '0', '1', '1', '1', '0', '1', '{}', '15');
INSERT INTO `data_rows` VALUES ('84', '8', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', '{}', '16');
INSERT INTO `data_rows` VALUES ('85', '8', 'parent_id', 'select_dropdown', 'Parent Id', '1', '1', '1', '1', '1', '1', '{\"default\":\"0\",\"options\":{\"0\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', '7');
INSERT INTO `data_rows` VALUES ('86', '8', 'slug', 'text', 'Slug', '0', '1', '1', '1', '1', '1', '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true}}', '3');
INSERT INTO `data_rows` VALUES ('87', '8', 'lesson_belongstomany_course_relationship', 'relationship', 'courses', '0', '1', '1', '1', '1', '1', '{\"model\":\"App\\\\Course\",\"table\":\"courses\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"course_lesson\",\"pivot\":\"1\",\"taggable\":\"0\"}', '12');
INSERT INTO `data_rows` VALUES ('89', '8', 'youtube', 'text', 'Youtube', '0', '1', '1', '1', '1', '1', '{}', '9');
INSERT INTO `data_rows` VALUES ('90', '9', 'id', 'number', 'Id', '1', '0', '0', '0', '0', '0', '{}', '1');
INSERT INTO `data_rows` VALUES ('91', '9', 'name', 'text', 'Name', '0', '1', '1', '1', '1', '1', '{}', '2');
INSERT INTO `data_rows` VALUES ('92', '9', 'status', 'select_dropdown', 'Status', '0', '1', '1', '1', '1', '1', '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', '4');
INSERT INTO `data_rows` VALUES ('93', '9', 'created_at', 'timestamp', 'Created At', '0', '1', '1', '1', '0', '1', '{}', '5');
INSERT INTO `data_rows` VALUES ('94', '9', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', '{}', '6');
INSERT INTO `data_rows` VALUES ('95', '9', 'slug', 'text', 'Slug', '0', '1', '1', '1', '1', '1', '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true}}', '3');
INSERT INTO `data_rows` VALUES ('97', '10', 'id', 'number', 'Id', '1', '0', '0', '0', '0', '0', '{}', '1');
INSERT INTO `data_rows` VALUES ('98', '10', 'test_id', 'text', 'Test Id', '1', '1', '1', '1', '1', '1', '{}', '3');
INSERT INTO `data_rows` VALUES ('99', '10', 'status', 'select_dropdown', 'Status', '0', '1', '1', '1', '1', '1', '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', '6');
INSERT INTO `data_rows` VALUES ('100', '10', 'created_at', 'timestamp', 'Created At', '0', '1', '1', '1', '0', '1', '{}', '7');
INSERT INTO `data_rows` VALUES ('101', '10', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', '{}', '8');
INSERT INTO `data_rows` VALUES ('102', '10', 'name', 'rich_text_box', 'Name', '0', '1', '1', '1', '1', '1', '{}', '2');
INSERT INTO `data_rows` VALUES ('103', '10', 'type', 'select_dropdown', 'Type', '0', '1', '1', '1', '1', '1', '{\"default\":\"d\",\"options\":{\"d\":\"\\u0110\\u00e1p \\u00e1n d\\u00e0i\",\"n\":\"\\u0110\\u00e1p \\u00e1n ng\\u1eafn\"}}', '5');
INSERT INTO `data_rows` VALUES ('104', '10', 'question_belongsto_test_relationship', 'relationship', 'tests', '0', '1', '1', '1', '1', '1', '{\"model\":\"App\\\\Test\",\"table\":\"tests\",\"type\":\"belongsTo\",\"column\":\"test_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"answers\",\"pivot\":\"0\",\"taggable\":\"0\"}', '4');
INSERT INTO `data_rows` VALUES ('105', '11', 'id', 'hidden', 'Id', '1', '0', '0', '0', '0', '0', '{}', '1');
INSERT INTO `data_rows` VALUES ('106', '11', 'question_id', 'text', 'Question Id', '1', '1', '1', '1', '1', '1', '{}', '4');
INSERT INTO `data_rows` VALUES ('107', '11', 'name', 'rich_text_box', 'Name', '0', '1', '1', '1', '1', '1', '{}', '2');
INSERT INTO `data_rows` VALUES ('108', '11', 'check', 'select_dropdown', 'Check', '0', '1', '1', '1', '1', '1', '{\"default\":\"0\",\"options\":{\"0\":\"\\u0110\\u00e1p \\u00e1n sai\",\"1\":\"\\u0110\\u00e1p \\u00e1n \\u0111\\u00fang\"}}', '5');
INSERT INTO `data_rows` VALUES ('109', '11', 'status', 'select_dropdown', 'Status', '0', '1', '1', '1', '1', '1', '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', '6');
INSERT INTO `data_rows` VALUES ('110', '11', 'created_at', 'timestamp', 'Created At', '0', '1', '1', '1', '0', '1', '{}', '7');
INSERT INTO `data_rows` VALUES ('111', '11', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', '{}', '8');
INSERT INTO `data_rows` VALUES ('112', '11', 'answer_belongsto_question_relationship', 'relationship', 'questions', '0', '1', '1', '1', '1', '1', '{\"model\":\"App\\\\Question\",\"table\":\"questions\",\"type\":\"belongsTo\",\"column\":\"question_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"answers\",\"pivot\":\"0\",\"taggable\":\"0\"}', '3');
INSERT INTO `data_rows` VALUES ('113', '12', 'id', 'number', 'Id', '1', '0', '0', '0', '0', '0', '{}', '1');
INSERT INTO `data_rows` VALUES ('114', '12', 'user_id', 'text', 'User Id', '1', '1', '1', '1', '1', '1', '{}', '2');
INSERT INTO `data_rows` VALUES ('115', '12', 'lesson_id', 'text', 'Lesson Id', '1', '1', '1', '1', '1', '1', '{}', '4');
INSERT INTO `data_rows` VALUES ('116', '12', 'post_id', 'text', 'Post Id', '1', '1', '1', '1', '1', '1', '{}', '6');
INSERT INTO `data_rows` VALUES ('117', '12', 'page_id', 'text', 'Page Id', '1', '1', '1', '1', '1', '1', '{}', '8');
INSERT INTO `data_rows` VALUES ('118', '12', 'parent_id', 'text', 'Parent Id', '1', '1', '1', '1', '1', '1', '{}', '10');
INSERT INTO `data_rows` VALUES ('119', '12', 'content', 'rich_text_box', 'Content', '0', '1', '1', '1', '1', '1', '{}', '11');
INSERT INTO `data_rows` VALUES ('120', '12', 'status', 'select_dropdown', 'Status', '0', '1', '1', '1', '1', '1', '{}', '12');
INSERT INTO `data_rows` VALUES ('121', '12', 'created_at', 'timestamp', 'Created At', '0', '1', '1', '1', '0', '1', '{}', '13');
INSERT INTO `data_rows` VALUES ('122', '12', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', '{}', '14');
INSERT INTO `data_rows` VALUES ('123', '12', 'comment_belongsto_user_relationship', 'relationship', 'users', '0', '1', '1', '1', '1', '1', '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"answers\",\"pivot\":\"0\",\"taggable\":\"0\"}', '3');
INSERT INTO `data_rows` VALUES ('124', '12', 'comment_belongsto_lesson_relationship', 'relationship', 'lessons', '0', '1', '1', '1', '1', '1', '{\"model\":\"App\\\\Lesson\",\"table\":\"lessons\",\"type\":\"belongsTo\",\"column\":\"lesson_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"answers\",\"pivot\":\"0\",\"taggable\":\"0\"}', '5');
INSERT INTO `data_rows` VALUES ('125', '12', 'comment_belongsto_post_relationship', 'relationship', 'posts', '0', '1', '1', '1', '1', '1', '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Post\",\"table\":\"posts\",\"type\":\"belongsTo\",\"column\":\"post_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"answers\",\"pivot\":\"0\",\"taggable\":\"0\"}', '7');
INSERT INTO `data_rows` VALUES ('126', '12', 'comment_belongsto_page_relationship', 'relationship', 'pages', '0', '1', '1', '1', '1', '1', '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Page\",\"table\":\"pages\",\"type\":\"belongsTo\",\"column\":\"page_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"answers\",\"pivot\":\"0\",\"taggable\":\"0\"}', '9');
INSERT INTO `data_rows` VALUES ('127', '13', 'id', 'number', 'Id', '1', '0', '0', '0', '0', '0', '{}', '1');
INSERT INTO `data_rows` VALUES ('128', '13', 'user_id', 'text', 'User Id', '1', '1', '1', '1', '1', '1', '{}', '6');
INSERT INTO `data_rows` VALUES ('129', '13', 'name', 'text', 'Name', '0', '1', '1', '1', '1', '1', '{}', '2');
INSERT INTO `data_rows` VALUES ('130', '13', 'phone', 'text', 'Phone', '0', '1', '1', '1', '1', '1', '{}', '3');
INSERT INTO `data_rows` VALUES ('131', '13', 'email', 'text', 'Email', '0', '1', '1', '1', '1', '1', '{}', '4');
INSERT INTO `data_rows` VALUES ('132', '13', 'content', 'rich_text_box', 'Content', '0', '1', '1', '1', '1', '1', '{}', '5');
INSERT INTO `data_rows` VALUES ('133', '13', 'status', 'select_dropdown', 'Status', '0', '1', '1', '1', '1', '1', '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', '8');
INSERT INTO `data_rows` VALUES ('134', '13', 'created_at', 'timestamp', 'Created At', '0', '1', '1', '1', '0', '1', '{}', '9');
INSERT INTO `data_rows` VALUES ('135', '13', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', '{}', '10');
INSERT INTO `data_rows` VALUES ('136', '13', 'contact_belongsto_user_relationship', 'relationship', 'users', '0', '1', '1', '1', '1', '1', '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"answers\",\"pivot\":\"0\",\"taggable\":\"0\"}', '7');
INSERT INTO `data_rows` VALUES ('137', '14', 'id', 'hidden', 'Id', '1', '0', '0', '0', '0', '0', '{}', '1');
INSERT INTO `data_rows` VALUES ('138', '14', 'user_id', 'select_dropdown', 'User Id', '1', '1', '1', '1', '1', '1', '{}', '2');
INSERT INTO `data_rows` VALUES ('139', '14', 'course_id', 'select_dropdown', 'Course Id', '1', '1', '1', '1', '1', '1', '{}', '4');
INSERT INTO `data_rows` VALUES ('140', '14', 'price', 'text', 'Price', '0', '1', '1', '1', '1', '1', '{}', '6');
INSERT INTO `data_rows` VALUES ('141', '14', 'price_sale', 'text', 'Price Sale', '0', '1', '1', '1', '1', '1', '{}', '7');
INSERT INTO `data_rows` VALUES ('142', '14', 'start_date', 'date', 'Start Date', '0', '1', '1', '1', '1', '1', '{}', '8');
INSERT INTO `data_rows` VALUES ('143', '14', 'end_date', 'date', 'End Date', '0', '1', '1', '1', '1', '1', '{}', '9');
INSERT INTO `data_rows` VALUES ('144', '14', 'status', 'select_dropdown', 'Status', '1', '1', '1', '1', '1', '1', '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', '10');
INSERT INTO `data_rows` VALUES ('145', '14', 'created_at', 'timestamp', 'Created At', '0', '1', '1', '1', '0', '1', '{}', '11');
INSERT INTO `data_rows` VALUES ('146', '14', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', '{}', '12');
INSERT INTO `data_rows` VALUES ('147', '14', 'payment_belongsto_course_relationship', 'relationship', 'courses', '0', '1', '1', '1', '1', '1', '{\"model\":\"App\\\\Course\",\"table\":\"courses\",\"type\":\"belongsTo\",\"column\":\"course_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"answers\",\"pivot\":\"0\",\"taggable\":\"0\"}', '5');
INSERT INTO `data_rows` VALUES ('148', '14', 'payment_belongsto_user_relationship', 'relationship', 'users', '0', '1', '1', '1', '1', '1', '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"answers\",\"pivot\":\"0\",\"taggable\":\"0\"}', '3');
INSERT INTO `data_rows` VALUES ('149', '8', 'is_home', 'select_dropdown', 'trang chủ', '1', '1', '1', '1', '1', '1', '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', '11');
INSERT INTO `data_rows` VALUES ('150', '8', 'image', 'image', 'Image', '0', '1', '1', '1', '1', '1', '{}', '13');
INSERT INTO `data_rows` VALUES ('151', '15', 'id', 'hidden', 'Id', '1', '0', '0', '0', '0', '0', '{}', '1');
INSERT INTO `data_rows` VALUES ('152', '15', 'title', 'text', 'Title', '0', '1', '1', '1', '1', '1', '{}', '2');
INSERT INTO `data_rows` VALUES ('153', '15', 'text_button', 'text', 'Text Button', '0', '1', '1', '1', '1', '1', '{}', '3');
INSERT INTO `data_rows` VALUES ('154', '15', 'image', 'image', 'Image', '0', '1', '1', '1', '1', '1', '{}', '4');
INSERT INTO `data_rows` VALUES ('155', '15', 'type', 'select_dropdown', 'Type', '0', '1', '1', '1', '1', '1', '{\"default\":\"home\",\"options\":{\"home\":\"Trang ch\\u1ee7\",\"new\":\"Trang tin t\\u1ee9c\"}}', '5');
INSERT INTO `data_rows` VALUES ('156', '15', 'status', 'select_dropdown', 'Status', '0', '1', '1', '1', '1', '1', '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', '8');
INSERT INTO `data_rows` VALUES ('157', '15', 'created_at', 'timestamp', 'Created At', '0', '1', '1', '1', '0', '1', '{}', '9');
INSERT INTO `data_rows` VALUES ('158', '15', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', '{}', '10');
INSERT INTO `data_rows` VALUES ('159', '15', 'order', 'number', 'Order', '0', '1', '1', '1', '1', '1', '{}', '7');
INSERT INTO `data_rows` VALUES ('160', '15', 'href', 'text', 'Href', '0', '1', '1', '1', '1', '1', '{}', '6');
INSERT INTO `data_rows` VALUES ('161', '16', 'id', 'hidden', 'Id', '1', '0', '0', '0', '0', '0', '{}', '1');
INSERT INTO `data_rows` VALUES ('162', '16', 'code', 'text', 'Code', '0', '1', '1', '1', '1', '1', '{}', '2');
INSERT INTO `data_rows` VALUES ('163', '16', 'name', 'text', 'Name', '0', '1', '1', '1', '1', '1', '{}', '3');
INSERT INTO `data_rows` VALUES ('164', '16', 'title', 'text', 'Title', '0', '1', '1', '1', '1', '1', '{}', '5');
INSERT INTO `data_rows` VALUES ('165', '16', 'type', 'select_dropdown', 'Type', '0', '1', '1', '1', '1', '1', '{\"default\":\"single\",\"options\":{\"single\":\"M\\u1ed9t kh\\u00f3a h\\u1ecdc\",\"combo\":\"Combo kh\\u00f3a h\\u1ecdc\"}}', '6');
INSERT INTO `data_rows` VALUES ('166', '16', 'course_type', 'text', 'Course Type', '0', '1', '1', '1', '1', '1', '{}', '7');
INSERT INTO `data_rows` VALUES ('167', '16', 'price_sale', 'number', 'Price Sale', '0', '1', '1', '1', '1', '1', '{}', '8');
INSERT INTO `data_rows` VALUES ('168', '16', 'price', 'number', 'Price', '0', '1', '1', '1', '1', '1', '{}', '9');
INSERT INTO `data_rows` VALUES ('169', '16', 'time', 'number', 'Time', '0', '1', '1', '1', '1', '1', '{}', '10');
INSERT INTO `data_rows` VALUES ('170', '16', 'video_number', 'number', 'Video Number', '0', '1', '1', '1', '1', '1', '{}', '11');
INSERT INTO `data_rows` VALUES ('171', '16', 'status', 'select_dropdown', 'Status', '0', '1', '1', '1', '1', '1', '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', '15');
INSERT INTO `data_rows` VALUES ('172', '16', 'image', 'image', 'Image', '0', '1', '1', '1', '1', '1', '{}', '12');
INSERT INTO `data_rows` VALUES ('173', '16', 'slug', 'text', 'Slug', '0', '1', '1', '1', '1', '1', '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true}}', '4');
INSERT INTO `data_rows` VALUES ('174', '16', 'test_number', 'number', 'Test Number', '0', '1', '1', '1', '1', '1', '{}', '13');
INSERT INTO `data_rows` VALUES ('175', '16', 'created_at', 'timestamp', 'Created At', '0', '1', '1', '1', '0', '1', '{}', '16');
INSERT INTO `data_rows` VALUES ('176', '16', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', '{}', '17');
INSERT INTO `data_rows` VALUES ('177', '7', 'course_belongstomany_package_relationship', 'relationship', 'packages', '0', '1', '1', '1', '1', '1', '{\"model\":\"App\\\\Package\",\"table\":\"packages\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"course_package\",\"pivot\":\"1\",\"taggable\":\"0\"}', '4');
INSERT INTO `data_rows` VALUES ('178', '7', 'test_number', 'text', 'Test Number', '1', '1', '1', '1', '1', '1', '{}', '7');
INSERT INTO `data_rows` VALUES ('179', '16', 'is_home', 'select_dropdown', 'Is Home', '0', '1', '1', '1', '1', '1', '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', '14');
INSERT INTO `data_rows` VALUES ('180', '8', 'lesson_hasmany_test_relationship', 'relationship', 'tests', '0', '1', '1', '1', '1', '1', '{\"model\":\"App\\\\Test\",\"table\":\"tests\",\"type\":\"hasMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"answers\",\"pivot\":\"0\",\"taggable\":\"0\"}', '17');

-- ----------------------------
-- Table structure for data_types
-- ----------------------------
DROP TABLE IF EXISTS `data_types`;
CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of data_types
-- ----------------------------
INSERT INTO `data_types` VALUES ('1', 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', '1', '0', null, '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `data_types` VALUES ('2', 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', null, '', '', '1', '0', null, '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `data_types` VALUES ('3', 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', null, '', '', '1', '0', null, '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `data_types` VALUES ('4', 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-10-25 08:39:37', '2018-11-24 18:37:39');
INSERT INTO `data_types` VALUES ('5', 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', '1', '0', null, '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `data_types` VALUES ('6', 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', null, '', '', '1', '0', null, '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `data_types` VALUES ('7', 'courses', 'courses', 'Course', 'Courses', 'voyager-browser', 'App\\Course', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-11-01 04:48:42', '2018-11-23 14:01:09');
INSERT INTO `data_types` VALUES ('8', 'lessons', 'lessons', 'Lesson', 'Lessons', 'voyager-youtube-play', 'App\\Lesson', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-11-01 07:48:50', '2018-11-24 17:38:09');
INSERT INTO `data_types` VALUES ('9', 'tests', 'tests', 'Test', 'Tests', 'voyager-tree', 'App\\Test', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-11-06 09:30:45', '2018-11-06 10:01:48');
INSERT INTO `data_types` VALUES ('10', 'questions', 'questions', 'Question', 'Questions', 'voyager-question', 'App\\Question', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-11-06 09:48:31', '2018-11-08 09:47:31');
INSERT INTO `data_types` VALUES ('11', 'answers', 'answers', 'Answer', 'Answers', 'voyager-pen', 'App\\Answer', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-11-06 10:18:06', '2018-11-18 12:43:38');
INSERT INTO `data_types` VALUES ('12', 'comments', 'comments', 'Comment', 'Comments', 'voyager-person', 'App\\Comment', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-11-08 06:55:37', '2018-11-08 07:07:47');
INSERT INTO `data_types` VALUES ('13', 'contacts', 'contacts', 'Contact', 'Contacts', 'voyager-file-text', 'App\\Contact', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-11-08 07:11:02', '2018-11-08 07:23:05');
INSERT INTO `data_types` VALUES ('14', 'payments', 'payments', 'Payment', 'Payments', 'voyager-paypal', 'App\\Payment', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-11-08 07:13:55', '2018-11-08 07:19:06');
INSERT INTO `data_types` VALUES ('15', 'banners', 'banners', 'Banner', 'Banners', 'voyager-book', 'App\\Banner', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-11-21 16:42:40', '2018-11-22 13:43:22');
INSERT INTO `data_types` VALUES ('16', 'packages', 'packages', 'Package', 'Packages', 'voyager-folder', 'App\\Package', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-11-23 13:51:59', '2018-11-23 14:16:10');

-- ----------------------------
-- Table structure for lessons
-- ----------------------------
DROP TABLE IF EXISTS `lessons`;
CREATE TABLE `lessons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `test_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `parent_id` int(11) NOT NULL,
  `view` int(11) DEFAULT NULL,
  `trial` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_home` tinyint(4) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of lessons
-- ----------------------------
INSERT INTO `lessons` VALUES ('1', '0', 'Bảng chữ cái hiragana', 'huu.mp4', '<p>ff</p>', '2', '2', '1', '1', '2018-11-01 09:13:00', '2018-11-24 17:07:42', 'bang-chu-cai-hiragana', 'https://www.youtube.com/watch?v=LmVBhe1AyXU', '0', null);
INSERT INTO `lessons` VALUES ('2', '0', 'Bản chữ cái hiragana', null, null, '0', null, '0', '1', '2018-11-24 17:02:13', '2018-11-24 17:02:13', 'ban-chu-cai-hiragana', null, '0', null);

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES ('1', 'admin', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `menus` VALUES ('2', 'topmenu', '2018-11-18 15:23:49', '2018-11-18 15:31:35');

-- ----------------------------
-- Table structure for menu_items
-- ----------------------------
DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of menu_items
-- ----------------------------
INSERT INTO `menu_items` VALUES ('1', '1', 'Tổng quan', '', '_self', 'voyager-boat', '#000000', null, '1', '2018-10-25 08:39:37', '2018-11-08 06:48:18', 'voyager.dashboard', 'null');
INSERT INTO `menu_items` VALUES ('2', '1', 'Media', '', '_self', 'voyager-images', null, null, '3', '2018-10-25 08:39:37', '2018-11-21 16:32:42', 'voyager.media.index', null);
INSERT INTO `menu_items` VALUES ('3', '1', 'Người dùng', '', '_self', 'voyager-person', '#000000', '30', '2', '2018-10-25 08:39:37', '2018-11-21 16:32:42', 'voyager.users.index', 'null');
INSERT INTO `menu_items` VALUES ('4', '1', 'Quản lí quyền', '', '_self', 'voyager-lock', '#000000', '30', '1', '2018-10-25 08:39:37', '2018-11-21 16:32:40', 'voyager.roles.index', 'null');
INSERT INTO `menu_items` VALUES ('5', '1', 'Tools', '', '_self', 'voyager-tools', null, null, '15', '2018-10-25 08:39:37', '2018-11-23 14:06:51', null, null);
INSERT INTO `menu_items` VALUES ('6', '1', 'Menu Builder', '', '_self', 'voyager-list', null, '5', '1', '2018-10-25 08:39:37', '2018-11-21 16:32:23', 'voyager.menus.index', null);
INSERT INTO `menu_items` VALUES ('7', '1', 'Database', '', '_self', 'voyager-data', null, '5', '2', '2018-10-25 08:39:37', '2018-11-21 16:32:23', 'voyager.database.index', null);
INSERT INTO `menu_items` VALUES ('8', '1', 'Compass', '', '_self', 'voyager-compass', null, '5', '3', '2018-10-25 08:39:37', '2018-11-21 16:32:23', 'voyager.compass.index', null);
INSERT INTO `menu_items` VALUES ('9', '1', 'BREAD', '', '_self', 'voyager-bread', null, '5', '4', '2018-10-25 08:39:37', '2018-11-21 16:32:23', 'voyager.bread.index', null);
INSERT INTO `menu_items` VALUES ('10', '1', 'Cấu hình', '', '_self', 'voyager-settings', '#000000', null, '14', '2018-10-25 08:39:37', '2018-11-23 14:06:51', 'voyager.settings.index', 'null');
INSERT INTO `menu_items` VALUES ('11', '1', 'Danh mục', '', '_self', 'voyager-categories', '#000000', null, '6', '2018-10-25 08:39:37', '2018-11-21 16:32:42', 'voyager.categories.index', 'null');
INSERT INTO `menu_items` VALUES ('12', '1', 'Bài viết', '', '_self', 'voyager-news', '#000000', null, '4', '2018-10-25 08:39:37', '2018-11-21 16:32:42', 'voyager.posts.index', 'null');
INSERT INTO `menu_items` VALUES ('13', '1', 'Trang', '', '_self', 'voyager-file-text', '#000000', null, '5', '2018-10-25 08:39:37', '2018-11-21 16:32:42', 'voyager.pages.index', 'null');
INSERT INTO `menu_items` VALUES ('14', '1', 'Hooks', '', '_self', 'voyager-hook', null, '5', '5', '2018-10-25 08:39:37', '2018-11-21 16:32:23', 'voyager.hooks', null);
INSERT INTO `menu_items` VALUES ('16', '1', 'Khóa học', '/admin/courses', '_self', 'voyager-browser', '#000000', null, '7', '2018-11-01 06:55:37', '2018-11-21 16:32:42', null, '');
INSERT INTO `menu_items` VALUES ('17', '1', 'Bài học', '', '_self', 'voyager-youtube-play', '#000000', null, '8', '2018-11-01 07:48:50', '2018-11-21 16:32:42', 'voyager.lessons.index', 'null');
INSERT INTO `menu_items` VALUES ('18', '1', 'Đề', '', '_self', 'voyager-tree', '#000000', '29', '2', '2018-11-06 09:30:45', '2018-11-21 16:31:31', 'voyager.tests.index', 'null');
INSERT INTO `menu_items` VALUES ('19', '1', 'Câu hỏi', '', '_self', 'voyager-question', '#000000', '29', '1', '2018-11-06 09:48:32', '2018-11-21 16:31:31', 'voyager.questions.index', 'null');
INSERT INTO `menu_items` VALUES ('20', '1', 'Đáp án', '', '_self', 'voyager-pen', '#000000', '29', '3', '2018-11-06 10:18:06', '2018-11-21 16:31:25', 'voyager.answers.index', 'null');
INSERT INTO `menu_items` VALUES ('21', '1', 'Bình luận', '', '_self', 'voyager-person', '#000000', null, '12', '2018-11-08 06:55:37', '2018-11-23 14:06:34', 'voyager.comments.index', 'null');
INSERT INTO `menu_items` VALUES ('22', '1', 'Liên hệ', '', '_self', 'voyager-file-text', '#000000', null, '11', '2018-11-08 07:11:02', '2018-11-23 14:06:34', 'voyager.contacts.index', 'null');
INSERT INTO `menu_items` VALUES ('23', '1', 'Thanh toán', '', '_self', 'voyager-paypal', '#000000', '31', '2', '2018-11-08 07:13:55', '2018-11-23 14:06:34', 'voyager.payments.index', 'null');
INSERT INTO `menu_items` VALUES ('24', '2', 'Khóa học', '/khoa-hoc', '_self', null, '#000000', null, '1', '2018-11-18 15:25:26', '2018-11-18 15:25:41', null, '');
INSERT INTO `menu_items` VALUES ('25', '2', 'Lộ trình', '/lo-trinh', '_self', null, '#000000', null, '18', '2018-11-18 15:26:15', '2018-11-18 15:26:15', null, '');
INSERT INTO `menu_items` VALUES ('26', '2', 'Tin tức', '/tin-tuc', '_self', null, '#000000', null, '19', '2018-11-18 15:38:41', '2018-11-18 15:38:41', null, '');
INSERT INTO `menu_items` VALUES ('27', '2', 'Cảm nhận của học viên', 'cam-nhan-cua-hoc-vien', '_self', null, '#000000', null, '20', '2018-11-18 15:39:09', '2018-11-18 15:39:09', null, '');
INSERT INTO `menu_items` VALUES ('28', '2', 'Hỗ trợ', 'ho-tro', '_self', null, '#000000', null, '21', '2018-11-18 15:39:34', '2018-11-18 15:39:34', null, '');
INSERT INTO `menu_items` VALUES ('29', '1', 'Câu hỏi', '', '_self', 'voyager-question', '#000000', null, '10', '2018-11-21 16:29:05', '2018-11-23 14:06:34', null, '');
INSERT INTO `menu_items` VALUES ('30', '1', 'Người dùng', '', '_self', 'voyager-person', '#000000', null, '2', '2018-11-21 16:29:39', '2018-11-21 16:35:01', null, '');
INSERT INTO `menu_items` VALUES ('31', '1', 'Thanh toán', '', '_self', 'voyager-paypal', '#000000', null, '9', '2018-11-21 16:30:07', '2018-11-21 16:35:45', null, '');
INSERT INTO `menu_items` VALUES ('32', '1', 'Banners', '', '_self', 'voyager-book', null, null, '13', '2018-11-21 16:42:40', '2018-11-23 14:06:51', 'voyager.banners.index', null);
INSERT INTO `menu_items` VALUES ('33', '1', 'Packages', '', '_self', 'voyager-folder', '#000000', '31', '1', '2018-11-23 13:52:00', '2018-11-23 14:06:33', 'voyager.packages.index', 'null');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2016_01_01_000000_add_voyager_user_fields', '1');
INSERT INTO `migrations` VALUES ('4', '2016_01_01_000000_create_data_types_table', '1');
INSERT INTO `migrations` VALUES ('5', '2016_05_19_173453_create_menu_table', '1');
INSERT INTO `migrations` VALUES ('6', '2016_10_21_190000_create_roles_table', '1');
INSERT INTO `migrations` VALUES ('7', '2016_10_21_190000_create_settings_table', '1');
INSERT INTO `migrations` VALUES ('8', '2016_11_30_135954_create_permission_table', '1');
INSERT INTO `migrations` VALUES ('9', '2016_11_30_141208_create_permission_role_table', '1');
INSERT INTO `migrations` VALUES ('10', '2016_12_26_201236_data_types__add__server_side', '1');
INSERT INTO `migrations` VALUES ('11', '2017_01_13_000000_add_route_to_menu_items_table', '1');
INSERT INTO `migrations` VALUES ('12', '2017_01_14_005015_create_translations_table', '1');
INSERT INTO `migrations` VALUES ('13', '2017_01_15_000000_make_table_name_nullable_in_permissions_table', '1');
INSERT INTO `migrations` VALUES ('14', '2017_03_06_000000_add_controller_to_data_types_table', '1');
INSERT INTO `migrations` VALUES ('15', '2017_04_21_000000_add_order_to_data_rows_table', '1');
INSERT INTO `migrations` VALUES ('16', '2017_07_05_210000_add_policyname_to_data_types_table', '1');
INSERT INTO `migrations` VALUES ('17', '2017_08_05_000000_add_group_to_settings_table', '1');
INSERT INTO `migrations` VALUES ('18', '2017_11_26_013050_add_user_role_relationship', '1');
INSERT INTO `migrations` VALUES ('19', '2017_11_26_015000_create_user_roles_table', '1');
INSERT INTO `migrations` VALUES ('20', '2018_03_11_000000_add_user_settings', '1');
INSERT INTO `migrations` VALUES ('21', '2018_03_14_000000_add_details_to_data_types_table', '1');
INSERT INTO `migrations` VALUES ('22', '2018_03_16_000000_make_settings_value_nullable', '1');
INSERT INTO `migrations` VALUES ('23', '2016_01_01_000000_create_pages_table', '2');
INSERT INTO `migrations` VALUES ('24', '2016_01_01_000000_create_posts_table', '2');
INSERT INTO `migrations` VALUES ('25', '2016_02_15_204651_create_categories_table', '2');
INSERT INTO `migrations` VALUES ('26', '2017_04_11_000000_alter_post_nullable_fields_table', '2');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `package_id` int(10) unsigned DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `fullname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `address_ship` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for packages
-- ----------------------------
DROP TABLE IF EXISTS `packages`;
CREATE TABLE `packages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_sale` float DEFAULT NULL,
  `price` float DEFAULT NULL,
  `time` float DEFAULT NULL,
  `video_number` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `test_number` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_home` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of packages
-- ----------------------------
INSERT INTO `packages` VALUES ('1', 'CL45N', 'COMBO N4 + N5', null, 'combo', null, '600000', '800000', '10', '149', '1', 'packages\\November2018\\ml1tbBmgHQTbvK0GFrBj.png', 'combo-n4-n5', '50', '2018-11-23 14:20:00', '2018-11-24 14:26:10', '1');
INSERT INTO `packages` VALUES ('2', 'CL45L', 'N5', 'Khóa học dành cho sinh viên du học', 'single', 'n5', null, '990000', '4', '123', '1', 'packages\\November2018\\DFqLPtRH0CMSqdZ0oj8R.png', 'n5', null, '2018-11-23 14:24:00', '2018-11-24 14:25:55', '0');
INSERT INTO `packages` VALUES ('3', 'N4', 'N4', 'Khóa học N4', 'single', 'n4', null, '800000', '5', '40', '1', 'packages\\November2018\\SduUGZL086bLIranJhQK.png', 'n4', null, '2018-11-23 14:27:00', '2018-11-24 14:25:34', '0');

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES ('1', '0', 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2018-10-25 08:39:37', '2018-10-25 08:39:37');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for payments
-- ----------------------------
DROP TABLE IF EXISTS `payments`;
CREATE TABLE `payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `course_id` int(10) unsigned NOT NULL,
  `price` float DEFAULT NULL,
  `price_sale` float DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of payments
-- ----------------------------

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES ('1', 'browse_admin', null, '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `permissions` VALUES ('2', 'browse_bread', null, '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `permissions` VALUES ('3', 'browse_database', null, '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `permissions` VALUES ('4', 'browse_media', null, '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `permissions` VALUES ('5', 'browse_compass', null, '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `permissions` VALUES ('6', 'browse_menus', 'menus', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `permissions` VALUES ('7', 'read_menus', 'menus', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `permissions` VALUES ('8', 'edit_menus', 'menus', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `permissions` VALUES ('9', 'add_menus', 'menus', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `permissions` VALUES ('10', 'delete_menus', 'menus', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `permissions` VALUES ('11', 'browse_roles', 'roles', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `permissions` VALUES ('12', 'read_roles', 'roles', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `permissions` VALUES ('13', 'edit_roles', 'roles', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `permissions` VALUES ('14', 'add_roles', 'roles', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `permissions` VALUES ('15', 'delete_roles', 'roles', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `permissions` VALUES ('16', 'browse_users', 'users', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `permissions` VALUES ('17', 'read_users', 'users', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `permissions` VALUES ('18', 'edit_users', 'users', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `permissions` VALUES ('19', 'add_users', 'users', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `permissions` VALUES ('20', 'delete_users', 'users', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `permissions` VALUES ('21', 'browse_settings', 'settings', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `permissions` VALUES ('22', 'read_settings', 'settings', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `permissions` VALUES ('23', 'edit_settings', 'settings', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `permissions` VALUES ('24', 'add_settings', 'settings', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `permissions` VALUES ('25', 'delete_settings', 'settings', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `permissions` VALUES ('26', 'browse_categories', 'categories', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `permissions` VALUES ('27', 'read_categories', 'categories', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `permissions` VALUES ('28', 'edit_categories', 'categories', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `permissions` VALUES ('29', 'add_categories', 'categories', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `permissions` VALUES ('30', 'delete_categories', 'categories', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `permissions` VALUES ('31', 'browse_posts', 'posts', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `permissions` VALUES ('32', 'read_posts', 'posts', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `permissions` VALUES ('33', 'edit_posts', 'posts', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `permissions` VALUES ('34', 'add_posts', 'posts', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `permissions` VALUES ('35', 'delete_posts', 'posts', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `permissions` VALUES ('36', 'browse_pages', 'pages', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `permissions` VALUES ('37', 'read_pages', 'pages', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `permissions` VALUES ('38', 'edit_pages', 'pages', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `permissions` VALUES ('39', 'add_pages', 'pages', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `permissions` VALUES ('40', 'delete_pages', 'pages', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `permissions` VALUES ('41', 'browse_hooks', null, '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `permissions` VALUES ('42', 'browse_courses', 'courses', '2018-11-01 04:48:42', '2018-11-01 04:48:42');
INSERT INTO `permissions` VALUES ('43', 'read_courses', 'courses', '2018-11-01 04:48:42', '2018-11-01 04:48:42');
INSERT INTO `permissions` VALUES ('44', 'edit_courses', 'courses', '2018-11-01 04:48:42', '2018-11-01 04:48:42');
INSERT INTO `permissions` VALUES ('45', 'add_courses', 'courses', '2018-11-01 04:48:42', '2018-11-01 04:48:42');
INSERT INTO `permissions` VALUES ('46', 'delete_courses', 'courses', '2018-11-01 04:48:42', '2018-11-01 04:48:42');
INSERT INTO `permissions` VALUES ('47', 'browse_lessons', 'lessons', '2018-11-01 07:48:50', '2018-11-01 07:48:50');
INSERT INTO `permissions` VALUES ('48', 'read_lessons', 'lessons', '2018-11-01 07:48:50', '2018-11-01 07:48:50');
INSERT INTO `permissions` VALUES ('49', 'edit_lessons', 'lessons', '2018-11-01 07:48:50', '2018-11-01 07:48:50');
INSERT INTO `permissions` VALUES ('50', 'add_lessons', 'lessons', '2018-11-01 07:48:50', '2018-11-01 07:48:50');
INSERT INTO `permissions` VALUES ('51', 'delete_lessons', 'lessons', '2018-11-01 07:48:50', '2018-11-01 07:48:50');
INSERT INTO `permissions` VALUES ('52', 'browse_tests', 'tests', '2018-11-06 09:30:45', '2018-11-06 09:30:45');
INSERT INTO `permissions` VALUES ('53', 'read_tests', 'tests', '2018-11-06 09:30:45', '2018-11-06 09:30:45');
INSERT INTO `permissions` VALUES ('54', 'edit_tests', 'tests', '2018-11-06 09:30:45', '2018-11-06 09:30:45');
INSERT INTO `permissions` VALUES ('55', 'add_tests', 'tests', '2018-11-06 09:30:45', '2018-11-06 09:30:45');
INSERT INTO `permissions` VALUES ('56', 'delete_tests', 'tests', '2018-11-06 09:30:45', '2018-11-06 09:30:45');
INSERT INTO `permissions` VALUES ('57', 'browse_questions', 'questions', '2018-11-06 09:48:32', '2018-11-06 09:48:32');
INSERT INTO `permissions` VALUES ('58', 'read_questions', 'questions', '2018-11-06 09:48:32', '2018-11-06 09:48:32');
INSERT INTO `permissions` VALUES ('59', 'edit_questions', 'questions', '2018-11-06 09:48:32', '2018-11-06 09:48:32');
INSERT INTO `permissions` VALUES ('60', 'add_questions', 'questions', '2018-11-06 09:48:32', '2018-11-06 09:48:32');
INSERT INTO `permissions` VALUES ('61', 'delete_questions', 'questions', '2018-11-06 09:48:32', '2018-11-06 09:48:32');
INSERT INTO `permissions` VALUES ('62', 'browse_answers', 'answers', '2018-11-06 10:18:06', '2018-11-06 10:18:06');
INSERT INTO `permissions` VALUES ('63', 'read_answers', 'answers', '2018-11-06 10:18:06', '2018-11-06 10:18:06');
INSERT INTO `permissions` VALUES ('64', 'edit_answers', 'answers', '2018-11-06 10:18:06', '2018-11-06 10:18:06');
INSERT INTO `permissions` VALUES ('65', 'add_answers', 'answers', '2018-11-06 10:18:06', '2018-11-06 10:18:06');
INSERT INTO `permissions` VALUES ('66', 'delete_answers', 'answers', '2018-11-06 10:18:06', '2018-11-06 10:18:06');
INSERT INTO `permissions` VALUES ('67', 'browse_comments', 'comments', '2018-11-08 06:55:37', '2018-11-08 06:55:37');
INSERT INTO `permissions` VALUES ('68', 'read_comments', 'comments', '2018-11-08 06:55:37', '2018-11-08 06:55:37');
INSERT INTO `permissions` VALUES ('69', 'edit_comments', 'comments', '2018-11-08 06:55:37', '2018-11-08 06:55:37');
INSERT INTO `permissions` VALUES ('70', 'add_comments', 'comments', '2018-11-08 06:55:37', '2018-11-08 06:55:37');
INSERT INTO `permissions` VALUES ('71', 'delete_comments', 'comments', '2018-11-08 06:55:37', '2018-11-08 06:55:37');
INSERT INTO `permissions` VALUES ('72', 'browse_contacts', 'contacts', '2018-11-08 07:11:02', '2018-11-08 07:11:02');
INSERT INTO `permissions` VALUES ('73', 'read_contacts', 'contacts', '2018-11-08 07:11:02', '2018-11-08 07:11:02');
INSERT INTO `permissions` VALUES ('74', 'edit_contacts', 'contacts', '2018-11-08 07:11:02', '2018-11-08 07:11:02');
INSERT INTO `permissions` VALUES ('75', 'add_contacts', 'contacts', '2018-11-08 07:11:02', '2018-11-08 07:11:02');
INSERT INTO `permissions` VALUES ('76', 'delete_contacts', 'contacts', '2018-11-08 07:11:02', '2018-11-08 07:11:02');
INSERT INTO `permissions` VALUES ('77', 'browse_payments', 'payments', '2018-11-08 07:13:55', '2018-11-08 07:13:55');
INSERT INTO `permissions` VALUES ('78', 'read_payments', 'payments', '2018-11-08 07:13:55', '2018-11-08 07:13:55');
INSERT INTO `permissions` VALUES ('79', 'edit_payments', 'payments', '2018-11-08 07:13:55', '2018-11-08 07:13:55');
INSERT INTO `permissions` VALUES ('80', 'add_payments', 'payments', '2018-11-08 07:13:55', '2018-11-08 07:13:55');
INSERT INTO `permissions` VALUES ('81', 'delete_payments', 'payments', '2018-11-08 07:13:55', '2018-11-08 07:13:55');
INSERT INTO `permissions` VALUES ('82', 'browse_banners', 'banners', '2018-11-21 16:42:40', '2018-11-21 16:42:40');
INSERT INTO `permissions` VALUES ('83', 'read_banners', 'banners', '2018-11-21 16:42:40', '2018-11-21 16:42:40');
INSERT INTO `permissions` VALUES ('84', 'edit_banners', 'banners', '2018-11-21 16:42:40', '2018-11-21 16:42:40');
INSERT INTO `permissions` VALUES ('85', 'add_banners', 'banners', '2018-11-21 16:42:40', '2018-11-21 16:42:40');
INSERT INTO `permissions` VALUES ('86', 'delete_banners', 'banners', '2018-11-21 16:42:40', '2018-11-21 16:42:40');
INSERT INTO `permissions` VALUES ('87', 'browse_packages', 'packages', '2018-11-23 13:52:00', '2018-11-23 13:52:00');
INSERT INTO `permissions` VALUES ('88', 'read_packages', 'packages', '2018-11-23 13:52:00', '2018-11-23 13:52:00');
INSERT INTO `permissions` VALUES ('89', 'edit_packages', 'packages', '2018-11-23 13:52:00', '2018-11-23 13:52:00');
INSERT INTO `permissions` VALUES ('90', 'add_packages', 'packages', '2018-11-23 13:52:00', '2018-11-23 13:52:00');
INSERT INTO `permissions` VALUES ('91', 'delete_packages', 'packages', '2018-11-23 13:52:00', '2018-11-23 13:52:00');

-- ----------------------------
-- Table structure for permission_role
-- ----------------------------
DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of permission_role
-- ----------------------------
INSERT INTO `permission_role` VALUES ('1', '1');
INSERT INTO `permission_role` VALUES ('2', '1');
INSERT INTO `permission_role` VALUES ('3', '1');
INSERT INTO `permission_role` VALUES ('4', '1');
INSERT INTO `permission_role` VALUES ('5', '1');
INSERT INTO `permission_role` VALUES ('6', '1');
INSERT INTO `permission_role` VALUES ('7', '1');
INSERT INTO `permission_role` VALUES ('8', '1');
INSERT INTO `permission_role` VALUES ('9', '1');
INSERT INTO `permission_role` VALUES ('10', '1');
INSERT INTO `permission_role` VALUES ('11', '1');
INSERT INTO `permission_role` VALUES ('12', '1');
INSERT INTO `permission_role` VALUES ('13', '1');
INSERT INTO `permission_role` VALUES ('14', '1');
INSERT INTO `permission_role` VALUES ('15', '1');
INSERT INTO `permission_role` VALUES ('16', '1');
INSERT INTO `permission_role` VALUES ('17', '1');
INSERT INTO `permission_role` VALUES ('18', '1');
INSERT INTO `permission_role` VALUES ('19', '1');
INSERT INTO `permission_role` VALUES ('20', '1');
INSERT INTO `permission_role` VALUES ('21', '1');
INSERT INTO `permission_role` VALUES ('22', '1');
INSERT INTO `permission_role` VALUES ('23', '1');
INSERT INTO `permission_role` VALUES ('24', '1');
INSERT INTO `permission_role` VALUES ('25', '1');
INSERT INTO `permission_role` VALUES ('26', '1');
INSERT INTO `permission_role` VALUES ('27', '1');
INSERT INTO `permission_role` VALUES ('28', '1');
INSERT INTO `permission_role` VALUES ('29', '1');
INSERT INTO `permission_role` VALUES ('30', '1');
INSERT INTO `permission_role` VALUES ('31', '1');
INSERT INTO `permission_role` VALUES ('32', '1');
INSERT INTO `permission_role` VALUES ('33', '1');
INSERT INTO `permission_role` VALUES ('34', '1');
INSERT INTO `permission_role` VALUES ('35', '1');
INSERT INTO `permission_role` VALUES ('36', '1');
INSERT INTO `permission_role` VALUES ('37', '1');
INSERT INTO `permission_role` VALUES ('38', '1');
INSERT INTO `permission_role` VALUES ('39', '1');
INSERT INTO `permission_role` VALUES ('40', '1');
INSERT INTO `permission_role` VALUES ('42', '1');
INSERT INTO `permission_role` VALUES ('43', '1');
INSERT INTO `permission_role` VALUES ('44', '1');
INSERT INTO `permission_role` VALUES ('45', '1');
INSERT INTO `permission_role` VALUES ('46', '1');
INSERT INTO `permission_role` VALUES ('47', '1');
INSERT INTO `permission_role` VALUES ('48', '1');
INSERT INTO `permission_role` VALUES ('49', '1');
INSERT INTO `permission_role` VALUES ('50', '1');
INSERT INTO `permission_role` VALUES ('51', '1');
INSERT INTO `permission_role` VALUES ('52', '1');
INSERT INTO `permission_role` VALUES ('53', '1');
INSERT INTO `permission_role` VALUES ('54', '1');
INSERT INTO `permission_role` VALUES ('55', '1');
INSERT INTO `permission_role` VALUES ('56', '1');
INSERT INTO `permission_role` VALUES ('57', '1');
INSERT INTO `permission_role` VALUES ('58', '1');
INSERT INTO `permission_role` VALUES ('59', '1');
INSERT INTO `permission_role` VALUES ('60', '1');
INSERT INTO `permission_role` VALUES ('61', '1');
INSERT INTO `permission_role` VALUES ('62', '1');
INSERT INTO `permission_role` VALUES ('63', '1');
INSERT INTO `permission_role` VALUES ('64', '1');
INSERT INTO `permission_role` VALUES ('65', '1');
INSERT INTO `permission_role` VALUES ('66', '1');
INSERT INTO `permission_role` VALUES ('67', '1');
INSERT INTO `permission_role` VALUES ('68', '1');
INSERT INTO `permission_role` VALUES ('69', '1');
INSERT INTO `permission_role` VALUES ('70', '1');
INSERT INTO `permission_role` VALUES ('71', '1');
INSERT INTO `permission_role` VALUES ('72', '1');
INSERT INTO `permission_role` VALUES ('73', '1');
INSERT INTO `permission_role` VALUES ('74', '1');
INSERT INTO `permission_role` VALUES ('75', '1');
INSERT INTO `permission_role` VALUES ('76', '1');
INSERT INTO `permission_role` VALUES ('77', '1');
INSERT INTO `permission_role` VALUES ('78', '1');
INSERT INTO `permission_role` VALUES ('79', '1');
INSERT INTO `permission_role` VALUES ('80', '1');
INSERT INTO `permission_role` VALUES ('81', '1');
INSERT INTO `permission_role` VALUES ('82', '1');
INSERT INTO `permission_role` VALUES ('83', '1');
INSERT INTO `permission_role` VALUES ('84', '1');
INSERT INTO `permission_role` VALUES ('85', '1');
INSERT INTO `permission_role` VALUES ('86', '1');
INSERT INTO `permission_role` VALUES ('87', '1');
INSERT INTO `permission_role` VALUES ('88', '1');
INSERT INTO `permission_role` VALUES ('89', '1');
INSERT INTO `permission_role` VALUES ('90', '1');
INSERT INTO `permission_role` VALUES ('91', '1');

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES ('1', '1', '1', 'Lorem Ipsum Post', null, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/October2018/ab1eYi1CRGACVAPSvVsc.png', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', '0', '2018-10-25 08:39:37', '2018-10-25 09:00:36');
INSERT INTO `posts` VALUES ('2', '0', null, 'My Sample Post', null, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', '0', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `posts` VALUES ('3', '0', null, 'Latest Post', null, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', '0', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `posts` VALUES ('4', '0', null, 'Yarr Post', null, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', '0', '2018-10-25 08:39:37', '2018-10-25 08:39:37');

-- ----------------------------
-- Table structure for questions
-- ----------------------------
DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `test_id` int(10) unsigned NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of questions
-- ----------------------------
INSERT INTO `questions` VALUES ('1', '1', '1', '2018-11-06 10:10:00', '2018-11-08 07:57:03', '<p>sdsd</p>', 'd');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'admin', 'Administrator', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `roles` VALUES ('2', 'user', 'Người học', '2018-10-25 08:39:37', '2018-11-01 07:42:33');

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES ('1', 'site.title', 'Site Title', 'Site Title', '', 'text', '1', 'Site');
INSERT INTO `settings` VALUES ('2', 'site.description', 'Site Description', 'Site Description', '', 'text', '2', 'Site');
INSERT INTO `settings` VALUES ('3', 'site.logo', 'Site Logo', 'settings\\November2018\\09BdGPxJ0MBY44gTRIEe.png', '', 'image', '3', 'Site');
INSERT INTO `settings` VALUES ('4', 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', null, '', 'text', '4', 'Site');
INSERT INTO `settings` VALUES ('5', 'admin.bg_image', 'Admin Background Image', '', '', 'image', '5', 'Admin');
INSERT INTO `settings` VALUES ('6', 'admin.title', 'Admin Title', 'Admin', '', 'text', '1', 'Admin');
INSERT INTO `settings` VALUES ('7', 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', '2', 'Admin');
INSERT INTO `settings` VALUES ('8', 'admin.loader', 'Admin Loader', '', '', 'image', '3', 'Admin');
INSERT INTO `settings` VALUES ('9', 'admin.icon_image', 'Admin Icon Image', 'settings/November2018/WRJhTKXfw5QdYXM4Hfdh.png', '', 'image', '4', 'Admin');
INSERT INTO `settings` VALUES ('10', 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', null, '', 'text', '1', 'Admin');
INSERT INTO `settings` VALUES ('11', 'site.hotline', 'Hotline', '0982 735 392', null, 'text', '6', 'Site');
INSERT INTO `settings` VALUES ('12', 'site.open_time', 'Giờ mở cửa', '8h - 22h hàng ngày', null, 'text', '7', 'Site');
INSERT INTO `settings` VALUES ('13', 'gioi-thieu.title', 'Tiêu đề', 'HỌC TIẾNG NHẬT ONLINE', null, 'text', '8', 'Giới thiệu');
INSERT INTO `settings` VALUES ('14', 'gioi-thieu.name', 'Name', 'GIỚI THIỆU', null, 'text', '9', 'Giới thiệu');
INSERT INTO `settings` VALUES ('15', 'gioi-thieu.description', 'Mô tả', 'Lorem ipsum dollor site amet the best consectuer adipiscing elites sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat insignia the consectuer adipiscing elit.', null, 'text_area', '10', 'Giới thiệu');
INSERT INTO `settings` VALUES ('16', 'gioi-thieu.button', 'Nút', 'LỘ TRÌNH HỌC', null, 'text', '11', 'Giới thiệu');
INSERT INTO `settings` VALUES ('18', 'gioi-thieu.href', 'Link', '/lo-trinh', null, 'text', '12', 'Giới thiệu');
INSERT INTO `settings` VALUES ('19', 'gioi-thieu.youtube', 'Youtube', 'https://www.youtube.com/watch?v=yU6BSPNnuWA', null, 'text', '13', 'Giới thiệu');
INSERT INTO `settings` VALUES ('20', 'gioi-thieu.background_color', 'Màu nền', 'ffd800', null, 'text', '14', 'Giới thiệu');
INSERT INTO `settings` VALUES ('21', 'gioi-thieu.background_img', 'Ảnh nền', 'settings\\November2018\\tu5t5CZ9QqE95TNFs6pN.png', null, 'image', '15', 'Giới thiệu');

-- ----------------------------
-- Table structure for tests
-- ----------------------------
DROP TABLE IF EXISTS `tests`;
CREATE TABLE `tests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tests
-- ----------------------------
INSERT INTO `tests` VALUES ('1', 'n5', '1', '2018-11-06 10:02:16', '2018-11-06 10:02:16', 'n5');

-- ----------------------------
-- Table structure for translations
-- ----------------------------
DROP TABLE IF EXISTS `translations`;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of translations
-- ----------------------------
INSERT INTO `translations` VALUES ('1', 'data_types', 'display_name_singular', '5', 'pt', 'Post', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `translations` VALUES ('2', 'data_types', 'display_name_singular', '6', 'pt', 'Página', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `translations` VALUES ('3', 'data_types', 'display_name_singular', '1', 'pt', 'Utilizador', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `translations` VALUES ('4', 'data_types', 'display_name_singular', '4', 'pt', 'Categoria', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `translations` VALUES ('5', 'data_types', 'display_name_singular', '2', 'pt', 'Menu', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `translations` VALUES ('6', 'data_types', 'display_name_singular', '3', 'pt', 'Função', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `translations` VALUES ('7', 'data_types', 'display_name_plural', '5', 'pt', 'Posts', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `translations` VALUES ('8', 'data_types', 'display_name_plural', '6', 'pt', 'Páginas', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `translations` VALUES ('9', 'data_types', 'display_name_plural', '1', 'pt', 'Utilizadores', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `translations` VALUES ('10', 'data_types', 'display_name_plural', '4', 'pt', 'Categorias', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `translations` VALUES ('11', 'data_types', 'display_name_plural', '2', 'pt', 'Menus', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `translations` VALUES ('12', 'data_types', 'display_name_plural', '3', 'pt', 'Funções', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `translations` VALUES ('13', 'categories', 'slug', '1', 'pt', 'categoria-1', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `translations` VALUES ('14', 'categories', 'name', '1', 'pt', 'Categoria 1', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `translations` VALUES ('15', 'categories', 'slug', '2', 'pt', 'categoria-2', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `translations` VALUES ('16', 'categories', 'name', '2', 'pt', 'Categoria 2', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `translations` VALUES ('17', 'pages', 'title', '1', 'pt', 'Olá Mundo', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `translations` VALUES ('18', 'pages', 'slug', '1', 'pt', 'ola-mundo', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `translations` VALUES ('19', 'pages', 'body', '1', 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `translations` VALUES ('20', 'menu_items', 'title', '1', 'pt', 'Painel de Controle', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `translations` VALUES ('21', 'menu_items', 'title', '2', 'pt', 'Media', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `translations` VALUES ('22', 'menu_items', 'title', '12', 'pt', 'Publicações', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `translations` VALUES ('23', 'menu_items', 'title', '3', 'pt', 'Utilizadores', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `translations` VALUES ('24', 'menu_items', 'title', '11', 'pt', 'Categorias', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `translations` VALUES ('25', 'menu_items', 'title', '13', 'pt', 'Páginas', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `translations` VALUES ('26', 'menu_items', 'title', '4', 'pt', 'Funções', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `translations` VALUES ('27', 'menu_items', 'title', '5', 'pt', 'Ferramentas', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `translations` VALUES ('28', 'menu_items', 'title', '6', 'pt', 'Menus', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `translations` VALUES ('29', 'menu_items', 'title', '7', 'pt', 'Base de dados', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `translations` VALUES ('30', 'menu_items', 'title', '10', 'pt', 'Configurações', '2018-10-25 08:39:37', '2018-10-25 08:39:37');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_original` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '1', 'Admin', 'admin@admin.com', 'users/default.png', null, '$2y$10$bGfkxA0t4eoIDw496vdQ9OC25qf1VsgURbhheSLFlZS1xq1v16HpK', 'fbluq2tA6fCS2SWhRLJrKCpEQpNX2NWlnchjrbQ1C1eHyjxNLGD1YwpkiNYA', null, '2018-10-25 08:39:37', '2018-10-25 08:39:37', '0', null, null);
INSERT INTO `users` VALUES ('4', '2', 'huunv', 'nguyenhuu140490@gmail.com', 'users/default.png', null, '$2y$10$oIFryIq/JTMnYyLIJlN8T.pcEcSPgbdosq7SS7coyhQqukXNLbm.W', 'MMXnRkuEDFV89mrpAlBiZpLXi0FsTCSe8DyBizbIBxotUgdluNgDwOefnkdR', null, '2018-11-18 08:42:31', '2018-11-18 08:42:31', '0', null, null);
INSERT INTO `users` VALUES ('5', '2', 'ha vu', 'ha.vuvu25@gmail.com', 'https://lh6.googleusercontent.com/-lAV_ty5-WkI/AAAAAAAAAAI/AAAAAAAAABY/vyjQj6ShrFs/photo.jpg?sz=50', null, null, 'Bh3QmuUROktGmKm35voTefiCNyRtMEmnJhHL1Rktss8bSbxFUpdNJUBUHkc7', null, '2018-11-18 14:13:47', '2018-11-18 14:13:47', '107198651449671391412', 'https://lh6.googleusercontent.com/-lAV_ty5-WkI/AAAAAAAAAAI/AAAAAAAAABY/vyjQj6ShrFs/photo.jpg', null);

-- ----------------------------
-- Table structure for user_roles
-- ----------------------------
DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_roles
-- ----------------------------
