/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : colam

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-03-14 22:43:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ads
-- ----------------------------
DROP TABLE IF EXISTS `ads`;
CREATE TABLE `ads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of ads
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of answers
-- ----------------------------
INSERT INTO `answers` VALUES ('1', '3', 'dap an a', '0', '1', '2018-11-06 10:21:00', '2018-12-05 14:08:52');
INSERT INTO `answers` VALUES ('2', '3', 'dap an dung', '1', '1', '2018-12-04 14:25:09', '2018-12-04 14:25:09');
INSERT INTO `answers` VALUES ('3', '1', 'dap an dung', '1', '1', '2018-12-04 14:27:20', '2018-12-04 14:27:20');
INSERT INTO `answers` VALUES ('4', '4', 'cau test', '0', '1', '2018-12-04 14:33:53', '2018-12-04 14:33:53');

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
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` tinytext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', '2', '1', 'Category 1', 'category-1', '2018-10-25 08:39:37', '2018-11-24 18:27:05', null, null);
INSERT INTO `categories` VALUES ('2', '1', '2', 'Category 2', 'category-2', '2018-10-25 08:39:37', '2018-11-24 18:27:05', null, null);

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `lesson_id` int(10) unsigned DEFAULT NULL,
  `post_id` int(10) unsigned DEFAULT NULL,
  `page_id` int(10) unsigned DEFAULT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `course_id` int(10) unsigned DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('1', '1', null, null, null, null, 'hello', '1', '2018-12-24 08:52:39', '2018-12-24 08:52:39', '1', null, null);
INSERT INTO `comments` VALUES ('2', '1', null, null, null, null, 'hello 2', '1', '2018-12-24 08:54:22', '2018-12-24 08:54:22', '1', null, null);
INSERT INTO `comments` VALUES ('3', '1', null, null, null, null, 'huudaika', '1', '2018-12-24 16:14:40', '2018-12-24 16:14:40', '1', null, null);
INSERT INTO `comments` VALUES ('4', '1', null, null, null, '1', 'bai kho qua', '1', '2018-12-24 16:53:05', '2018-12-24 16:53:05', '1', 'Admin', 'users/default.png');
INSERT INTO `comments` VALUES ('5', '1', null, null, null, '1', 'kho lam', '1', '2018-12-24 16:53:22', '2018-12-24 16:53:22', '1', 'Admin', 'users/default.png');
INSERT INTO `comments` VALUES ('6', '1', null, null, null, '2', 'heh', '1', '2018-12-24 21:25:34', '2018-12-24 21:25:34', '1', 'Admin', 'users/default.png');
INSERT INTO `comments` VALUES ('7', '1', null, null, null, null, 'ok', '1', '2018-12-24 21:35:48', '2018-12-24 21:35:48', null, 'Admin', 'users/default.png');
INSERT INTO `comments` VALUES ('8', '1', '9', null, null, null, 'hehe', '1', '2018-12-24 21:40:05', '2018-12-24 21:40:05', null, 'Admin', 'users/default.png');
INSERT INTO `comments` VALUES ('9', '1', '9', null, null, '8', 'te', '1', '2018-12-24 21:40:13', '2018-12-24 21:40:13', null, 'Admin', 'users/default.png');
INSERT INTO `comments` VALUES ('10', '1', '9', null, null, '8', 'df', '1', '2018-12-24 21:40:20', '2018-12-24 21:40:20', null, 'Admin', 'users/default.png');
INSERT INTO `comments` VALUES ('11', '1', '9', null, null, null, 'fdf', '1', '2018-12-24 21:40:24', '2018-12-24 21:40:24', null, 'Admin', 'users/default.png');
INSERT INTO `comments` VALUES ('12', '1', '9', null, null, '11', 'df', '1', '2018-12-24 21:40:28', '2018-12-24 21:40:28', null, 'Admin', 'users/default.png');
INSERT INTO `comments` VALUES ('13', '1', '6', null, null, null, 'dd', '1', '2018-12-24 21:45:53', '2018-12-24 21:45:53', null, 'Admin', 'users/default.png');
INSERT INTO `comments` VALUES ('14', '1', '6', null, null, '13', 'dd', '1', '2018-12-24 21:45:58', '2018-12-24 21:45:58', null, 'Admin', 'users/default.png');
INSERT INTO `comments` VALUES ('15', '1', '6', null, null, null, 'dd', '1', '2018-12-24 21:46:01', '2018-12-24 21:46:01', null, 'Admin', 'users/default.png');
INSERT INTO `comments` VALUES ('16', '1', '6', null, null, '15', 's', '1', '2018-12-24 21:46:06', '2018-12-24 21:46:06', null, 'Admin', 'users/default.png');

-- ----------------------------
-- Table structure for contacts
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of contacts
-- ----------------------------
INSERT INTO `contacts` VALUES ('1', '1', 'dsd', '0942334523', null, '<p>dfsdf</p>', '0', '2018-12-04 00:23:40', '2018-12-04 00:23:40');

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
  `test_number` int(11) DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` tinytext COLLATE utf8mb4_unicode_ci,
  `is_home` tinyint(4) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `price_sale` float DEFAULT NULL,
  `lock` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of courses
-- ----------------------------
INSERT INTO `courses` VALUES ('1', 'CL45N', 'N5', '4', '123', '1', 'courses/November2018/OqqFr8KghZB6hM7Vosrx.png', '2018-11-01 07:22:44', '2018-12-01 14:38:44', 'n5', '0', 'https://www.youtube.com/watch?v=yU6BSPNnuWA', '<p>&nbsp;this is the n5</p>', 'N5', 'Khóa học dành cho sinh viên du học', null, '0', '600000', null, null);
INSERT INTO `courses` VALUES ('2', 'N5b', 'N5b', '4', '4', '1', 'courses\\November2018\\AOuoeO41Delttk6ncbu1.png', '2018-11-06 10:31:45', '2018-12-01 14:38:21', 'n5b', '0', null, null, 'N5', 'Khóa học n5b', null, '0', '800000', null, null);
INSERT INTO `courses` VALUES ('3', 'N4', 'N4', '6', '60', '1', 'courses\\November2018\\3hAIKRQxJkY8n0f7cXC1.png', '2018-11-23 14:31:47', '2018-12-01 14:37:58', 'n4', '10', 'https://www.youtube.com/watch?v=yU6BSPNnuWA', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat.</p>', 'N4', 'Khóa học dành cho sinh viên du học', null, '0', '900000', null, null);

-- ----------------------------
-- Table structure for course_lesson
-- ----------------------------
DROP TABLE IF EXISTS `course_lesson`;
CREATE TABLE `course_lesson` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` int(10) unsigned NOT NULL,
  `lesson_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of course_lesson
-- ----------------------------
INSERT INTO `course_lesson` VALUES ('1', '1', '1');
INSERT INTO `course_lesson` VALUES ('2', '2', '1');
INSERT INTO `course_lesson` VALUES ('3', '1', '2');
INSERT INTO `course_lesson` VALUES ('4', '1', '3');
INSERT INTO `course_lesson` VALUES ('5', '1', '4');
INSERT INTO `course_lesson` VALUES ('6', '1', '5');
INSERT INTO `course_lesson` VALUES ('7', '1', '6');
INSERT INTO `course_lesson` VALUES ('8', '1', '7');
INSERT INTO `course_lesson` VALUES ('9', '1', '8');
INSERT INTO `course_lesson` VALUES ('10', '1', '9');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of course_package
-- ----------------------------
INSERT INTO `course_package` VALUES ('1', '1', '1', null, null);
INSERT INTO `course_package` VALUES ('4', '3', '1', null, null);
INSERT INTO `course_package` VALUES ('5', '2', '4', null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
INSERT INTO `data_rows` VALUES ('65', '7', 'time', 'number', 'Time', '0', '1', '1', '1', '1', '1', '{}', '9');
INSERT INTO `data_rows` VALUES ('66', '7', 'video_number', 'number', 'Video Number', '0', '1', '1', '1', '1', '1', '{}', '10');
INSERT INTO `data_rows` VALUES ('67', '7', 'status', 'select_dropdown', 'Status', '1', '1', '1', '1', '1', '1', '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', '16');
INSERT INTO `data_rows` VALUES ('68', '7', 'image', 'image', 'Image', '0', '1', '1', '1', '1', '1', '{}', '13');
INSERT INTO `data_rows` VALUES ('70', '7', 'created_at', 'timestamp', 'Created At', '0', '0', '0', '0', '0', '0', '{}', '19');
INSERT INTO `data_rows` VALUES ('71', '7', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', '{}', '20');
INSERT INTO `data_rows` VALUES ('73', '7', 'slug', 'text', 'Slug', '0', '1', '1', '1', '1', '1', '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true}}', '4');
INSERT INTO `data_rows` VALUES ('74', '8', 'id', 'hidden', 'Id', '1', '0', '0', '0', '0', '0', '{}', '1');
INSERT INTO `data_rows` VALUES ('76', '8', 'name', 'text', 'Name', '0', '1', '1', '1', '1', '1', '{}', '2');
INSERT INTO `data_rows` VALUES ('77', '8', 'video', 'text', 'Video', '0', '1', '1', '1', '1', '1', '{}', '6');
INSERT INTO `data_rows` VALUES ('78', '8', 'content', 'rich_text_box', 'Content', '0', '0', '0', '1', '1', '1', '{}', '7');
INSERT INTO `data_rows` VALUES ('80', '8', 'view', 'number', 'View', '0', '1', '1', '1', '1', '1', '{}', '10');
INSERT INTO `data_rows` VALUES ('81', '8', 'trial', 'select_dropdown', 'Trial', '1', '1', '1', '1', '1', '1', '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', '12');
INSERT INTO `data_rows` VALUES ('82', '8', 'status', 'select_dropdown', 'Status', '1', '1', '1', '1', '1', '1', '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', '16');
INSERT INTO `data_rows` VALUES ('83', '8', 'created_at', 'timestamp', 'Created At', '0', '1', '1', '1', '0', '1', '{}', '18');
INSERT INTO `data_rows` VALUES ('84', '8', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', '{}', '19');
INSERT INTO `data_rows` VALUES ('85', '8', 'parent_id', 'select_dropdown', 'Parent Id', '0', '1', '1', '1', '1', '1', '{\"default\":\"0\",\"options\":{\"0\":\"-- parent --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', '9');
INSERT INTO `data_rows` VALUES ('86', '8', 'slug', 'text', 'Slug', '0', '1', '1', '1', '1', '1', '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true}}', '3');
INSERT INTO `data_rows` VALUES ('87', '8', 'lesson_belongstomany_course_relationship', 'relationship', 'courses', '0', '1', '1', '1', '1', '1', '{\"model\":\"App\\\\Course\",\"table\":\"courses\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"course_lesson\",\"pivot\":\"1\",\"taggable\":\"0\"}', '14');
INSERT INTO `data_rows` VALUES ('89', '8', 'youtube', 'text', 'Youtube', '0', '0', '0', '1', '1', '1', '{}', '11');
INSERT INTO `data_rows` VALUES ('90', '9', 'id', 'number', 'Id', '1', '0', '0', '0', '0', '0', '{}', '1');
INSERT INTO `data_rows` VALUES ('91', '9', 'name', 'text', 'Name', '0', '1', '1', '1', '1', '1', '{}', '2');
INSERT INTO `data_rows` VALUES ('92', '9', 'status', 'select_dropdown', 'Status', '0', '1', '1', '1', '1', '1', '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', '6');
INSERT INTO `data_rows` VALUES ('93', '9', 'created_at', 'timestamp', 'Created At', '0', '1', '1', '1', '0', '1', '{}', '7');
INSERT INTO `data_rows` VALUES ('94', '9', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', '{}', '8');
INSERT INTO `data_rows` VALUES ('95', '9', 'slug', 'text', 'Slug', '0', '1', '1', '1', '1', '1', '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true}}', '3');
INSERT INTO `data_rows` VALUES ('97', '10', 'id', 'number', 'Id', '1', '0', '0', '0', '0', '0', '{}', '1');
INSERT INTO `data_rows` VALUES ('98', '10', 'test_id', 'text', 'Test Id', '1', '1', '1', '1', '1', '1', '{}', '4');
INSERT INTO `data_rows` VALUES ('99', '10', 'status', 'select_dropdown', 'Status', '0', '1', '1', '1', '1', '1', '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', '7');
INSERT INTO `data_rows` VALUES ('100', '10', 'created_at', 'timestamp', 'Created At', '0', '1', '1', '1', '0', '1', '{}', '10');
INSERT INTO `data_rows` VALUES ('101', '10', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', '{}', '11');
INSERT INTO `data_rows` VALUES ('102', '10', 'name', 'rich_text_box', 'Name', '0', '1', '1', '1', '1', '1', '{}', '3');
INSERT INTO `data_rows` VALUES ('103', '10', 'type', 'select_dropdown', 'Type', '0', '1', '1', '1', '1', '1', '{\"default\":\"d\",\"options\":{\"d\":\"\\u0110\\u00e1p \\u00e1n d\\u00e0i\",\"n\":\"\\u0110\\u00e1p \\u00e1n ng\\u1eafn\"}}', '6');
INSERT INTO `data_rows` VALUES ('104', '10', 'question_belongsto_test_relationship', 'relationship', 'tests', '0', '1', '1', '1', '1', '1', '{\"model\":\"App\\\\Test\",\"table\":\"tests\",\"type\":\"belongsTo\",\"column\":\"test_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"answers\",\"pivot\":\"0\",\"taggable\":\"0\"}', '5');
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
INSERT INTO `data_rows` VALUES ('139', '14', 'course_id', 'select_dropdown', 'Course Id', '0', '1', '1', '1', '1', '1', '{}', '4');
INSERT INTO `data_rows` VALUES ('140', '14', 'price', 'text', 'Price', '0', '1', '1', '1', '1', '1', '{}', '8');
INSERT INTO `data_rows` VALUES ('142', '14', 'start_date', 'date', 'Start Date', '0', '1', '1', '1', '1', '1', '{}', '10');
INSERT INTO `data_rows` VALUES ('143', '14', 'end_date', 'date', 'End Date', '0', '1', '1', '1', '1', '1', '{}', '11');
INSERT INTO `data_rows` VALUES ('144', '14', 'status', 'select_dropdown', 'Status', '1', '1', '1', '1', '1', '1', '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', '12');
INSERT INTO `data_rows` VALUES ('145', '14', 'created_at', 'timestamp', 'Created At', '0', '1', '1', '1', '0', '1', '{}', '13');
INSERT INTO `data_rows` VALUES ('146', '14', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', '{}', '14');
INSERT INTO `data_rows` VALUES ('147', '14', 'payment_belongsto_course_relationship', 'relationship', 'courses', '0', '1', '1', '1', '1', '1', '{\"model\":\"App\\\\Course\",\"table\":\"courses\",\"type\":\"belongsTo\",\"column\":\"course_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"answers\",\"pivot\":\"0\",\"taggable\":\"0\"}', '5');
INSERT INTO `data_rows` VALUES ('148', '14', 'payment_belongsto_user_relationship', 'relationship', 'users', '0', '1', '1', '1', '1', '1', '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"answers\",\"pivot\":\"0\",\"taggable\":\"0\"}', '3');
INSERT INTO `data_rows` VALUES ('149', '8', 'is_home', 'select_dropdown', 'trang chủ', '1', '1', '1', '1', '1', '1', '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', '13');
INSERT INTO `data_rows` VALUES ('150', '8', 'image', 'image', 'Image', '0', '1', '1', '1', '1', '1', '{}', '15');
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
INSERT INTO `data_rows` VALUES ('177', '7', 'course_belongstomany_package_relationship', 'relationship', 'packages', '0', '1', '1', '1', '1', '1', '{\"model\":\"App\\\\Package\",\"table\":\"packages\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"course_package\",\"pivot\":\"1\",\"taggable\":\"0\"}', '7');
INSERT INTO `data_rows` VALUES ('178', '7', 'test_number', 'text', 'Test Number', '1', '1', '1', '1', '1', '1', '{}', '8');
INSERT INTO `data_rows` VALUES ('179', '16', 'is_home', 'select_dropdown', 'Is Home', '0', '1', '1', '1', '1', '1', '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', '14');
INSERT INTO `data_rows` VALUES ('180', '8', 'lesson_hasmany_test_relationship', 'relationship', 'tests', '0', '1', '1', '1', '1', '1', '{\"model\":\"App\\\\Test\",\"table\":\"tests\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"lesson_test\",\"pivot\":\"1\",\"taggable\":\"0\"}', '4');
INSERT INTO `data_rows` VALUES ('181', '7', 'youtube', 'text', 'Youtube', '0', '1', '1', '1', '1', '1', '{}', '11');
INSERT INTO `data_rows` VALUES ('182', '7', 'info', 'rich_text_box', 'Info', '0', '0', '0', '1', '1', '1', '{}', '12');
INSERT INTO `data_rows` VALUES ('183', '4', 'type', 'text', 'Type', '0', '1', '1', '1', '1', '1', '{}', '8');
INSERT INTO `data_rows` VALUES ('184', '8', 'order', 'text', 'Order', '0', '1', '1', '1', '1', '1', '{}', '17');
INSERT INTO `data_rows` VALUES ('185', '8', 'lesson_belongsto_lesson_relationship', 'relationship', 'parent Id', '0', '1', '1', '1', '1', '1', '{\"model\":\"App\\\\Lesson\",\"table\":\"lessons\",\"type\":\"belongsTo\",\"column\":\"parent_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"answers\",\"pivot\":\"0\",\"taggable\":\"0\"}', '8');
INSERT INTO `data_rows` VALUES ('186', '7', 'type', 'text', 'Type', '0', '1', '1', '1', '1', '1', '{}', '6');
INSERT INTO `data_rows` VALUES ('187', '7', 'title', 'text', 'Title', '0', '0', '1', '1', '1', '1', '{}', '5');
INSERT INTO `data_rows` VALUES ('188', '7', 'description', 'text_area', 'Description', '0', '0', '1', '1', '1', '1', '{}', '18');
INSERT INTO `data_rows` VALUES ('189', '7', 'is_home', 'select_dropdown', 'Is Home', '0', '1', '1', '1', '1', '1', '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', '17');
INSERT INTO `data_rows` VALUES ('190', '16', 'description', 'text', 'Description', '0', '1', '1', '1', '1', '1', '{}', '16');
INSERT INTO `data_rows` VALUES ('191', '7', 'price', 'number', 'Price', '0', '1', '1', '1', '1', '1', '{}', '14');
INSERT INTO `data_rows` VALUES ('192', '7', 'price_sale', 'number', 'Price Sale', '0', '1', '1', '1', '1', '1', '{}', '15');
INSERT INTO `data_rows` VALUES ('193', '14', 'payment_belongsto_package_relationship', 'relationship', 'packages', '0', '1', '1', '1', '1', '1', '{\"model\":\"App\\\\Package\",\"table\":\"packages\",\"type\":\"belongsTo\",\"column\":\"package_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"answers\",\"pivot\":\"0\",\"taggable\":\"0\"}', '7');
INSERT INTO `data_rows` VALUES ('194', '14', 'package_id', 'text', 'Package Id', '0', '1', '1', '1', '1', '1', '{}', '6');
INSERT INTO `data_rows` VALUES ('195', '17', 'id', 'hidden', 'Id', '1', '0', '0', '0', '0', '0', '{}', '1');
INSERT INTO `data_rows` VALUES ('196', '17', 'user_id', 'text', 'User Id', '0', '1', '1', '1', '1', '1', '{}', '2');
INSERT INTO `data_rows` VALUES ('197', '17', 'package_id', 'text', 'Package Id', '0', '1', '1', '1', '1', '1', '{}', '3');
INSERT INTO `data_rows` VALUES ('198', '17', 'price', 'text', 'Price', '0', '1', '1', '1', '1', '1', '{}', '4');
INSERT INTO `data_rows` VALUES ('199', '17', 'fullname', 'text', 'Fullname', '0', '1', '1', '1', '1', '1', '{}', '5');
INSERT INTO `data_rows` VALUES ('200', '17', 'email', 'text', 'Email', '0', '1', '1', '1', '1', '1', '{}', '6');
INSERT INTO `data_rows` VALUES ('201', '17', 'phone', 'text', 'Phone', '0', '1', '1', '1', '1', '1', '{}', '7');
INSERT INTO `data_rows` VALUES ('202', '17', 'payment_method', 'text', 'Payment Method', '0', '1', '1', '1', '1', '1', '{}', '8');
INSERT INTO `data_rows` VALUES ('204', '17', 'status', 'text', 'Status', '0', '1', '1', '1', '1', '1', '{}', '10');
INSERT INTO `data_rows` VALUES ('205', '17', 'note', 'text', 'Note', '0', '1', '1', '1', '1', '1', '{}', '11');
INSERT INTO `data_rows` VALUES ('206', '17', 'address_ship', 'text', 'Address Ship', '0', '1', '1', '1', '1', '1', '{}', '12');
INSERT INTO `data_rows` VALUES ('207', '17', 'course_id', 'text', 'Course Id', '0', '1', '1', '1', '1', '1', '{}', '13');
INSERT INTO `data_rows` VALUES ('208', '17', 'created_at', 'timestamp', 'Created At', '0', '1', '1', '1', '0', '1', '{}', '14');
INSERT INTO `data_rows` VALUES ('209', '17', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', '{}', '15');
INSERT INTO `data_rows` VALUES ('210', '9', 'audio', 'file', 'Audio', '0', '1', '1', '1', '1', '1', '{}', '4');
INSERT INTO `data_rows` VALUES ('211', '9', 'content', 'rich_text_box', 'Content', '0', '1', '1', '1', '1', '1', '{}', '5');
INSERT INTO `data_rows` VALUES ('212', '10', 'code', 'text', 'Code', '0', '1', '1', '1', '1', '1', '{}', '2');
INSERT INTO `data_rows` VALUES ('213', '10', 'audio', 'file', 'Audio', '0', '1', '1', '1', '1', '1', '{}', '8');
INSERT INTO `data_rows` VALUES ('215', '18', 'id', 'text', 'Id', '1', '0', '0', '0', '0', '0', '{}', '1');
INSERT INTO `data_rows` VALUES ('216', '18', 'question', 'rich_text_box', 'Question', '0', '1', '1', '1', '1', '1', '{}', '2');
INSERT INTO `data_rows` VALUES ('217', '18', 'answer', 'rich_text_box', 'Answer', '0', '1', '1', '1', '1', '1', '{}', '3');
INSERT INTO `data_rows` VALUES ('218', '18', 'created_at', 'timestamp', 'Created At', '0', '1', '1', '1', '0', '1', '{}', '4');
INSERT INTO `data_rows` VALUES ('219', '18', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', '{}', '5');
INSERT INTO `data_rows` VALUES ('220', '10', 'explain', 'rich_text_box', 'Explain', '0', '1', '1', '1', '1', '1', '{}', '10');
INSERT INTO `data_rows` VALUES ('222', '17', 'key', 'text', 'Key', '0', '1', '1', '1', '1', '1', '{}', '16');
INSERT INTO `data_rows` VALUES ('223', '17', 'bank_code', 'text', 'Bank Code', '0', '1', '1', '1', '1', '1', '{}', '17');
INSERT INTO `data_rows` VALUES ('224', '17', 'more', 'text', 'More', '0', '1', '1', '1', '1', '1', '{}', '18');
INSERT INTO `data_rows` VALUES ('225', '19', 'id', 'text', 'Id', '1', '0', '0', '0', '0', '0', '{}', '1');
INSERT INTO `data_rows` VALUES ('226', '19', 'name', 'text', 'Name', '0', '1', '1', '1', '1', '1', '{}', '2');
INSERT INTO `data_rows` VALUES ('227', '19', 'title', 'text', 'Title', '0', '1', '1', '1', '1', '1', '{}', '3');
INSERT INTO `data_rows` VALUES ('228', '19', 'content', 'rich_text_box', 'Content', '0', '1', '1', '1', '1', '1', '{}', '4');
INSERT INTO `data_rows` VALUES ('229', '19', 'status', 'select_dropdown', 'Status', '0', '1', '1', '1', '1', '1', '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', '5');
INSERT INTO `data_rows` VALUES ('230', '19', 'created_at', 'timestamp', 'Created At', '0', '1', '1', '1', '0', '1', '{}', '7');
INSERT INTO `data_rows` VALUES ('231', '19', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', '{}', '8');
INSERT INTO `data_rows` VALUES ('232', '19', 'image', 'image', 'Image', '0', '1', '1', '1', '1', '1', '{}', '6');

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of data_types
-- ----------------------------
INSERT INTO `data_types` VALUES ('1', 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', '1', '0', null, '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `data_types` VALUES ('2', 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', null, '', '', '1', '0', null, '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `data_types` VALUES ('3', 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', null, '', '', '1', '0', null, '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `data_types` VALUES ('4', 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', null, null, null, '1', '0', '{\"order_column\":\"order\",\"order_display_column\":\"name\"}', '2018-10-25 08:39:37', '2018-11-27 14:23:24');
INSERT INTO `data_types` VALUES ('5', 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', '1', '0', null, '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `data_types` VALUES ('6', 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', null, '', '', '1', '0', null, '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `data_types` VALUES ('7', 'courses', 'courses', 'Course', 'Courses', 'voyager-browser', 'App\\Course', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-11-01 04:48:42', '2018-12-01 14:37:18');
INSERT INTO `data_types` VALUES ('8', 'lessons', 'lessons', 'Lesson', 'Lessons', 'voyager-youtube-play', 'App\\Lesson', null, null, null, '1', '0', '{\"order_column\":\"order\",\"order_display_column\":\"name\"}', '2018-11-01 07:48:50', '2018-12-03 23:40:09');
INSERT INTO `data_types` VALUES ('9', 'tests', 'tests', 'Test', 'Tests', 'voyager-tree', 'App\\Test', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-11-06 09:30:45', '2018-12-03 23:42:58');
INSERT INTO `data_types` VALUES ('10', 'questions', 'questions', 'Question', 'Questions', 'voyager-question', 'App\\Question', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-11-06 09:48:31', '2018-12-05 17:02:28');
INSERT INTO `data_types` VALUES ('11', 'answers', 'answers', 'Answer', 'Answers', 'voyager-pen', 'App\\Answer', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-11-06 10:18:06', '2018-11-18 12:43:38');
INSERT INTO `data_types` VALUES ('12', 'comments', 'comments', 'Comment', 'Comments', 'voyager-person', 'App\\Comment', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-11-08 06:55:37', '2018-11-08 07:07:47');
INSERT INTO `data_types` VALUES ('13', 'contacts', 'contacts', 'Contact', 'Contacts', 'voyager-file-text', 'App\\Contact', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-11-08 07:11:02', '2018-12-03 23:48:45');
INSERT INTO `data_types` VALUES ('14', 'payments', 'payments', 'Payment', 'Payments', 'voyager-paypal', 'App\\Payment', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-11-08 07:13:55', '2018-12-19 08:56:55');
INSERT INTO `data_types` VALUES ('15', 'banners', 'banners', 'Banner', 'Banners', 'voyager-book', 'App\\Banner', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-11-21 16:42:40', '2018-11-22 13:43:22');
INSERT INTO `data_types` VALUES ('16', 'packages', 'packages', 'Package', 'Packages', 'voyager-folder', 'App\\Package', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-11-23 13:51:59', '2018-12-01 00:33:57');
INSERT INTO `data_types` VALUES ('17', 'orders', 'orders', 'Order', 'Orders', null, 'App\\Order', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-12-01 16:29:02', '2018-12-23 15:18:30');
INSERT INTO `data_types` VALUES ('18', 'faqs', 'faqs', 'Faq', 'Faqs', null, 'App\\Faq', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-12-04 11:51:29', '2018-12-04 11:51:29');
INSERT INTO `data_types` VALUES ('19', 'reviews', 'reviews', 'Review', 'Reviews', null, 'App\\Review', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-12-26 22:05:10', '2018-12-26 22:09:00');

-- ----------------------------
-- Table structure for faqs
-- ----------------------------
DROP TABLE IF EXISTS `faqs`;
CREATE TABLE `faqs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of faqs
-- ----------------------------
INSERT INTO `faqs` VALUES ('1', '<p>Cách khắc phục các lỗi khi đăng nhập vào học</p>', '<div> </div>\r\n<div> </div>', '2018-12-05 21:19:00', '2019-01-06 16:12:28', '1');
INSERT INTO `faqs` VALUES ('2', '<p>Chính sách gia hạn khóa học Online</p>', '<div>Chính sách gia hạn khoá học online trên website (áp dụng từ ngày 01/12/2017):</div>\r\n<div> </div>\r\n<div> </div>\r\n<div>1. Điều kiện gia hạn và cách thức liên hệ:</div>\r\n<div> </div>\r\n<div> ♦ Thông báo gia hạn khi khóa học còn thời hạn.</div>\r\n<div> </div>\r\n<div> ♦ Thời hạn thông báo và thanh toán học phí gia hạn muộn nhất là ngày cuối cùng kết thúc khóa học. </div>\r\n<div> </div>\r\n<div> ♦ Những khoá học đã hết hạn không thể gia hạn được</div>\r\n<div> </div>\r\n<div> ♦ Cách thức gia hạn: Liên hệ trực tiếp qua facebook</div>\r\n<div> </div>\r\n<div> </div>\r\n<div> </div>\r\n<div> </div>', '2018-12-05 21:21:00', '2019-01-06 16:11:29', '1');
INSERT INTO `faqs` VALUES ('3', 'Hướng dẫn đăng kí tài khoản trên website', '<p><u style=\"box-sizing: border-box; color: #404040; font-family: arial, sans-serif; font-size: 16px;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Bước 1:</span></u><span style=\"color: #404040; font-family: arial, sans-serif; font-size: 16px;\"> Click vào mục tạo tài khoản:<br /><br /></span><u style=\"box-sizing: border-box; color: #404040; font-family: arial, sans-serif; font-size: 16px;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Bước 2:</span></u><span style=\"color: #404040; font-family: arial, sans-serif; font-size: 16px;\"> Sau đó sẽ hiện ra cửa sổ mới để đăng ký nhé:<br /><br /></span></p>\r\n<div style=\"box-sizing: border-box; color: #404040; font-family: arial, sans-serif; font-size: 16px;\">Tại đây sẽ có 3 cách đăng ký:<br style=\"box-sizing: border-box;\" />1 - Đăng ký bằng Facebook;<br style=\"box-sizing: border-box;\" />2 - Đăng ký bằng Gmail (Tài khoản Google);<br style=\"box-sizing: border-box;\" />3 - Đăng ký bằng email của bạn.<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" />Bạn lựa chọn một trong 3 cách trên và thực hiện tiếp theo hướng dẫn sau đây:<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" />1 - Đăng ký bằng facebook sẽ hiện ra cửa sổ sau, bạn tiếp tục đăng nhập bằng tài khoản Facebook của bạn là xong nhé!</div>\r\n<div style=\"box-sizing: border-box; color: #404040; font-family: arial, sans-serif; font-size: 16px; text-align: center;\"> </div>\r\n<div style=\"box-sizing: border-box; color: #404040; font-family: arial, sans-serif; font-size: 16px;\">2 - Đăng ký bằng Gmail (tài khoản google) sẽ hiện ra cửa sổ sau, bạn sử dụng gmail của bạn để đăng nhập là ok nhé!</div>\r\n<div style=\"box-sizing: border-box; color: #404040; font-family: arial, sans-serif; font-size: 16px; text-align: center;\"> </div>\r\n<div style=\"box-sizing: border-box; color: #404040; font-family: arial, sans-serif; font-size: 16px;\">3. Đăng ký bằng email của bạn: Bạn điền đầy đủ thông tin như trong hình, tích vào ô \"<span style=\"box-sizing: border-box; color: #727272; font-family: arial; font-size: 13px; font-weight: bold;\">Tôi đã đọc và đồng ý với điều khoản sử dụng\"</span> và ấn vào <span style=\"box-sizing: border-box; font-weight: bold;\">Đăng ký</span> là hoàn tất.</div>\r\n<div style=\"box-sizing: border-box; color: #404040; font-family: arial, sans-serif; font-size: 16px; text-align: center;\"> </div>\r\n<div style=\"box-sizing: border-box; color: #404040; font-family: arial, sans-serif; font-size: 16px;\"><br style=\"box-sizing: border-box;\" /><span style=\"box-sizing: border-box; font-weight: bold;\"><u style=\"box-sizing: border-box;\">Bước 3</u>: </span>Trong trường hợp bạn muốn thay đổi thông tin tài khoản, mật khẩu ... thì vào click chọn mục Thông tin tài cá nhân như trên hình:<br /><br /><u style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Bước 4</span></u>: Sau đó bạn ấn chỉnh sửa và thay đổi nhé!</div>', '2018-12-05 21:22:00', '2018-12-05 21:46:33', '1');

-- ----------------------------
-- Table structure for lessons
-- ----------------------------
DROP TABLE IF EXISTS `lessons`;
CREATE TABLE `lessons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `parent_id` int(11) DEFAULT '0',
  `view` int(11) DEFAULT NULL,
  `trial` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_home` tinyint(4) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `description` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of lessons
-- ----------------------------
INSERT INTO `lessons` VALUES ('4', 'Bảng chữ cái hiragana', null, null, null, null, '0', '1', '2018-11-27 14:02:00', '2018-11-27 14:26:20', 'bang-chu-cai-hiragana', null, '0', 'lessons\\November2018\\l5D4eptp6sgDq111pZcg.png', '1', null);
INSERT INTO `lessons` VALUES ('5', 'Giới thiệu về bảng chữ cái trong tiếng nhật', null, '<p>Giới thiệu về bảng chữ cái trong tiếng nhật\r\nGiới thiệu về bảng chữ cái trong tiếng nhật\r\nGiới thiệu về bảng chữ cái trong tiếng nhật\r\nGiới thiệu về bảng chữ cái trong tiếng nhật\r\nGiới thiệu về bảng chữ cái trong tiếng nhật\r\ngioi thieu khoa hoc ', '4', '100', '1', '1', '2018-11-27 14:04:00', '2018-11-27 14:52:55', 'gioi-thieu-ve-bang-chu-cai-trong-tieng-nhat', 'https://www.youtube.com/watch?v=LmVBhe1AyXU', '1', 'lessons\\November2018\\0Agt4Hx3PcauzcLyk1j7.png', '2', null);
INSERT INTO `lessons` VALUES ('6', 'Bài 1 - Hiragana A I Ư Ê Ô', null, null, '4', '101', '1', '1', '2018-11-27 15:04:00', '2019-03-14 22:39:50', 'bai-1-hiragana-a-i-e-o', 'https://www.youtube.com/watch?v=0HfoZT-8xFM', '1', 'lessons\\November2018\\CnUSFGxzaRng4Bop3sgg.png', null, null);
INSERT INTO `lessons` VALUES ('7', 'Các bài học thú vị - Miễn phí', null, null, null, null, '1', '1', '2018-11-28 13:50:08', '2018-11-28 13:50:08', 'cac-bai-hoc-thu-vi-mien-phi', null, '0', null, null, null);
INSERT INTO `lessons` VALUES ('8', 'TIẾNG NHẬT DỄ thế này cơ mà', null, '<p>this is the test</p>', '7', '100', '1', '1', '2018-11-28 13:55:00', '2018-12-04 14:36:19', 'tieng-nhat-de-the-nay-co-ma', 'https://www.youtube.com/watch?v=Cwu7qEmilss', '1', 'lessons\\November2018\\ityFxUSDSvNeuy3kafd8.png', null, null);
INSERT INTO `lessons` VALUES ('9', 'Video học tiếng nhật', 'huu', '<p>bai giang video</p>', '4', '201', '0', '1', '2018-11-29 16:13:00', '2019-03-14 22:39:12', 'video-hoc-tieng-nhat', null, '0', null, null, null);

-- ----------------------------
-- Table structure for lesson_test
-- ----------------------------
DROP TABLE IF EXISTS `lesson_test`;
CREATE TABLE `lesson_test` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lesson_id` int(10) unsigned DEFAULT NULL,
  `test_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of lesson_test
-- ----------------------------
INSERT INTO `lesson_test` VALUES ('1', '8', '1', null, null);
INSERT INTO `lesson_test` VALUES ('2', '8', '2', null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of menu_items
-- ----------------------------
INSERT INTO `menu_items` VALUES ('1', '1', 'Tổng quan', '', '_self', 'voyager-boat', '#000000', null, '1', '2018-10-25 08:39:37', '2018-11-08 06:48:18', 'voyager.dashboard', 'null');
INSERT INTO `menu_items` VALUES ('2', '1', 'Media', '', '_self', 'voyager-images', null, null, '3', '2018-10-25 08:39:37', '2018-11-21 16:32:42', 'voyager.media.index', null);
INSERT INTO `menu_items` VALUES ('3', '1', 'Người dùng', '', '_self', 'voyager-person', '#000000', '30', '2', '2018-10-25 08:39:37', '2018-11-21 16:32:42', 'voyager.users.index', 'null');
INSERT INTO `menu_items` VALUES ('4', '1', 'Quản lí quyền', '', '_self', 'voyager-lock', '#000000', '30', '1', '2018-10-25 08:39:37', '2018-11-21 16:32:40', 'voyager.roles.index', 'null');
INSERT INTO `menu_items` VALUES ('5', '1', 'Tools', '', '_self', 'voyager-tools', null, null, '15', '2018-10-25 08:39:37', '2018-12-18 00:15:53', null, null);
INSERT INTO `menu_items` VALUES ('6', '1', 'Menu Builder', '', '_self', 'voyager-list', null, '5', '1', '2018-10-25 08:39:37', '2018-11-21 16:32:23', 'voyager.menus.index', null);
INSERT INTO `menu_items` VALUES ('7', '1', 'Database', '', '_self', 'voyager-data', null, '5', '2', '2018-10-25 08:39:37', '2018-11-21 16:32:23', 'voyager.database.index', null);
INSERT INTO `menu_items` VALUES ('8', '1', 'Compass', '', '_self', 'voyager-compass', null, '5', '3', '2018-10-25 08:39:37', '2018-11-21 16:32:23', 'voyager.compass.index', null);
INSERT INTO `menu_items` VALUES ('9', '1', 'BREAD', '', '_self', 'voyager-bread', null, '5', '4', '2018-10-25 08:39:37', '2018-11-21 16:32:23', 'voyager.bread.index', null);
INSERT INTO `menu_items` VALUES ('10', '1', 'Cấu hình', '', '_self', 'voyager-settings', '#000000', null, '13', '2018-10-25 08:39:37', '2018-12-03 23:19:46', 'voyager.settings.index', 'null');
INSERT INTO `menu_items` VALUES ('11', '1', 'Danh mục', '', '_self', 'voyager-categories', '#000000', null, '6', '2018-10-25 08:39:37', '2018-11-21 16:32:42', 'voyager.categories.index', 'null');
INSERT INTO `menu_items` VALUES ('12', '1', 'Bài viết', '', '_self', 'voyager-news', '#000000', null, '4', '2018-10-25 08:39:37', '2018-11-21 16:32:42', 'voyager.posts.index', 'null');
INSERT INTO `menu_items` VALUES ('13', '1', 'Trang', '', '_self', 'voyager-file-text', '#000000', null, '5', '2018-10-25 08:39:37', '2018-11-21 16:32:42', 'voyager.pages.index', 'null');
INSERT INTO `menu_items` VALUES ('14', '1', 'Hooks', '', '_self', 'voyager-hook', null, '5', '5', '2018-10-25 08:39:37', '2018-11-21 16:32:23', 'voyager.hooks', null);
INSERT INTO `menu_items` VALUES ('16', '1', 'Khóa học', '/admin/courses', '_self', 'voyager-browser', '#000000', '34', '1', '2018-11-01 06:55:37', '2018-12-01 15:56:51', null, '');
INSERT INTO `menu_items` VALUES ('17', '1', 'Bài học', '', '_self', 'voyager-youtube-play', '#000000', '34', '3', '2018-11-01 07:48:50', '2018-12-01 15:56:51', 'voyager.lessons.index', 'null');
INSERT INTO `menu_items` VALUES ('18', '1', 'Đề', '', '_self', 'voyager-tree', '#000000', '29', '1', '2018-11-06 09:30:45', '2018-12-03 23:19:46', 'voyager.tests.index', 'null');
INSERT INTO `menu_items` VALUES ('19', '1', 'Câu hỏi', '', '_self', 'voyager-question', '#000000', '29', '2', '2018-11-06 09:48:32', '2018-12-03 23:19:46', 'voyager.questions.index', 'null');
INSERT INTO `menu_items` VALUES ('20', '1', 'Đáp án', '', '_self', 'voyager-pen', '#000000', '29', '3', '2018-11-06 10:18:06', '2018-11-21 16:31:25', 'voyager.answers.index', 'null');
INSERT INTO `menu_items` VALUES ('21', '1', 'Bình luận', '', '_self', 'voyager-person', '#000000', null, '11', '2018-11-08 06:55:37', '2018-12-03 23:19:46', 'voyager.comments.index', 'null');
INSERT INTO `menu_items` VALUES ('22', '1', 'Liên hệ', '', '_self', 'voyager-file-text', '#000000', null, '10', '2018-11-08 07:11:02', '2018-12-03 23:19:46', 'voyager.contacts.index', 'null');
INSERT INTO `menu_items` VALUES ('23', '1', 'Thanh toán', '', '_self', 'voyager-paypal', '#000000', '31', '2', '2018-11-08 07:13:55', '2018-12-18 00:15:10', 'voyager.payments.index', 'null');
INSERT INTO `menu_items` VALUES ('24', '2', 'Khóa học', '/khoa-hoc', '_self', null, '#000000', null, '1', '2018-11-18 15:25:26', '2018-11-18 15:25:41', null, '');
INSERT INTO `menu_items` VALUES ('26', '2', 'Tin tức', '/tin-tuc', '_self', null, '#000000', null, '2', '2018-11-18 15:38:41', '2018-12-24 22:28:45', null, '');
INSERT INTO `menu_items` VALUES ('27', '2', 'Cảm nhận của học viên', '/cam-nhan-cua-hoc-vien', '_self', null, '#000000', null, '3', '2018-11-18 15:39:09', '2018-12-24 22:28:45', null, '');
INSERT INTO `menu_items` VALUES ('28', '2', 'Hỗ trợ', '/ho-tro', '_self', null, '#000000', null, '4', '2018-11-18 15:39:34', '2018-12-24 22:28:45', null, '');
INSERT INTO `menu_items` VALUES ('29', '1', 'Câu hỏi', '', '_self', 'voyager-question', '#000000', null, '8', '2018-11-21 16:29:05', '2018-12-03 23:19:45', null, '');
INSERT INTO `menu_items` VALUES ('30', '1', 'Người dùng', '', '_self', 'voyager-person', '#000000', null, '2', '2018-11-21 16:29:39', '2018-11-21 16:35:01', null, '');
INSERT INTO `menu_items` VALUES ('31', '1', 'Thanh toán', '', '_self', 'voyager-paypal', '#000000', null, '9', '2018-11-21 16:30:07', '2018-12-03 23:19:46', null, '');
INSERT INTO `menu_items` VALUES ('32', '1', 'Banners', '', '_self', 'voyager-book', null, null, '12', '2018-11-21 16:42:40', '2018-12-03 23:19:46', 'voyager.banners.index', null);
INSERT INTO `menu_items` VALUES ('33', '1', 'Packages', '', '_self', 'voyager-folder', '#000000', '34', '2', '2018-11-23 13:52:00', '2018-12-01 15:56:51', 'voyager.packages.index', 'null');
INSERT INTO `menu_items` VALUES ('34', '1', 'Quản lí khóa học', '', '_self', 'voyager-documentation', '#000000', null, '7', '2018-12-01 15:55:56', '2018-12-01 15:57:06', null, '');
INSERT INTO `menu_items` VALUES ('35', '1', 'Đơn hàng', '', '_self', 'voyager-shop', '#000000', '31', '1', '2018-12-01 16:29:03', '2018-12-26 06:18:51', 'voyager.orders.index', 'null');
INSERT INTO `menu_items` VALUES ('36', '1', 'Câu hỏi thường gặp', '', '_self', 'voyager-info-circled', '#000000', null, '14', '2018-12-04 11:51:29', '2018-12-26 06:18:05', 'voyager.faqs.index', 'null');
INSERT INTO `menu_items` VALUES ('37', '2', 'Liên hệ', '/lien-he', '_self', null, '#000000', null, '5', '2018-12-04 11:53:54', '2018-12-24 22:28:45', null, '');
INSERT INTO `menu_items` VALUES ('38', '2', 'Kinh nghiệm học tiếng Nhật', '/danh-muc/1-kinh-nghiem-hoc-tieng-nhat', '_self', null, '#000000', '26', '1', '2018-12-24 21:51:16', '2018-12-24 21:52:27', null, '');
INSERT INTO `menu_items` VALUES ('39', '2', 'Khóa học đơn', '/khoa-hoc/don', '_self', null, '#000000', '24', '1', '2018-12-24 22:28:00', '2018-12-24 22:28:41', null, '');
INSERT INTO `menu_items` VALUES ('40', '2', 'Khóa học combo', '/khoa-hoc/combo', '_self', null, '#000000', '24', '2', '2018-12-24 22:28:34', '2018-12-24 22:28:45', null, '');
INSERT INTO `menu_items` VALUES ('42', '1', 'Reviews', '', '_self', 'voyager-chat', null, null, '17', '2018-12-26 22:18:19', '2018-12-26 22:18:19', 'voyager.reviews.index', null);
INSERT INTO `menu_items` VALUES ('43', '2', 'Văn hóa Nhật Bản', '/danh-muc/2-van-hoa-nhat-ban', '_self', null, '#000000', '26', '2', '2018-12-26 22:25:43', '2018-12-26 22:25:54', null, '');
INSERT INTO `menu_items` VALUES ('44', '1', 'Quảng cáo', '', '_self', 'voyager-lightbulb', '#000000', null, '18', '2019-01-01 13:36:22', '2019-01-01 13:37:35', 'voyager.ads.index', 'null');
INSERT INTO `menu_items` VALUES ('45', '2', 'Tin Tức sự kiện', '/danh-muc/3-tin-tuc-su-kien', '_self', null, '#000000', '26', '3', '2019-01-04 16:56:15', '2019-01-04 16:56:23', null, '');
INSERT INTO `menu_items` VALUES ('46', '1', 'Vouchers', '', '_self', 'voyager-gift', null, null, '19', '2019-03-08 21:54:09', '2019-03-08 21:54:09', 'voyager.vouchers.index', null);
INSERT INTO `menu_items` VALUES ('47', '1', 'Messages', '', '_self', 'voyager-mail', null, null, '20', '2019-03-08 21:57:09', '2019-03-08 21:57:09', 'voyager.messages.index', null);

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` tinytext COLLATE utf8mb4_unicode_ci,
  `recent` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of messages
-- ----------------------------
INSERT INTO `messages` VALUES ('1', 'chương trình khuyến mãi', '<p>chương trình khuyến mãi</p>', null, '1', '2019-03-08 21:58:00', '2019-03-08 22:49:16', 'chuong-trinh-khuyen-mai', 'chương trình khuyến mãi', null);

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
  `orderstatus` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `address_ship` text COLLATE utf8mb4_unicode_ci,
  `course_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `key` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `more` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('16', '1', null, '600000', 'Admin', 'admin@admin.com', '0973537381', 'CK', 'onhold', '1', null, 'ha noi, nguyen khang', '1', '2018-12-23 15:21:29', '2018-12-23 15:21:29', '5c1fa7f992845', null, null);
INSERT INTO `orders` VALUES ('17', '1', null, '600000', 'Admin', 'admin@admin.com', '0973537381', 'CK', 'onhold', '1', null, 'ha noi, nguyen khang', '1', '2018-12-23 15:26:06', '2018-12-23 15:26:06', '5c1fa90e3303a', null, 'giahan');
INSERT INTO `orders` VALUES ('18', '1', null, '600000', 'Admin', 'admin@admin.com', '0973537381', 'ATM_ONLINE', 'completed', '1', null, 'ha noi, nguyen khang', '1', '2018-12-23 15:27:54', '2018-12-23 15:27:54', '5c1fa979d1417', 'EXB', 'giahan');
INSERT INTO `orders` VALUES ('19', '1', '1', '600000', 'Admin', 'admin@admin.com', '0973537381', 'ATM_ONLINE', 'completed', '1', null, 'ha noi, nguyen khang', null, '2018-12-23 15:29:39', '2018-12-23 15:29:39', '5c1fa9e297e18', 'EXB', null);
INSERT INTO `orders` VALUES ('20', '1', '1', '800000', 'Admin', 'admin@admin.com', '0973537381', 'CK', 'onhold', '1', null, 'ha noi, nguyen khang', null, '2018-12-23 15:30:36', '2018-12-23 15:30:36', '5c1faa1c44f21', null, 'giahan');
INSERT INTO `orders` VALUES ('21', '1', '1', '600000', 'Admin', 'admin@admin.com', '0973537381', 'ATM_ONLINE', 'completed', '1', null, 'ha noi, nguyen khang', null, '2018-12-23 15:32:01', '2018-12-23 15:32:01', '5c1faa70753d9', 'EXB', 'giahan');
INSERT INTO `orders` VALUES ('22', '1', '1', '600000', 'Admin', 'admin@admin.com', '0973537381', 'ATM_ONLINE', 'completed', '1', null, 'ha noi, nguyen khang', null, '2018-12-23 15:38:02', '2018-12-23 15:38:02', '5c1fabd95bc33', 'EXB', 'giahan');

-- ----------------------------
-- Table structure for packages
-- ----------------------------
DROP TABLE IF EXISTS `packages`;
CREATE TABLE `packages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `description` tinytext COLLATE utf8mb4_unicode_ci,
  `lock` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of packages
-- ----------------------------
INSERT INTO `packages` VALUES ('1', 'CL45N', 'COMBO N4 + N5', null, '600000', '800000', '10', '149', '1', 'packages\\November2018\\ml1tbBmgHQTbvK0GFrBj.png', 'combo-n4-n5', '50', '2018-11-23 14:20:00', '2018-11-24 14:26:10', '1', null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES ('1', '0', 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2018-10-25 08:39:37', '2018-10-25 08:39:37');
INSERT INTO `pages` VALUES ('2', '1', 'Lộ trình', 'Lộ trình', '<p style=\"margin: 0px 0px 9.1875px; padding: 0px; outline: none; max-width: 100%; font-family: \'Times New Roman\'; font-size: 16px; color: #000000; line-height: 20px !important;\">B&aacute;o c&aacute;o tại hội nghị, &ocirc;ng Vũ Đức Bảo - Trưởng ban Tổ chức Th&agrave;nh ủy H&agrave; Nội cho biết, trước khi thực hiện Đề &aacute;n 06 (năm 2013), phạm vi l&atilde;nh đạo của chi bộ tr&ecirc;n địa b&agrave;n d&acirc;n cư chưa c&oacute; quy định thống nhất. Việc h&igrave;nh th&agrave;nh chi bộ ở nhiều nơi chỉ căn cứ v&agrave;o t&igrave;nh h&igrave;nh v&agrave; số lượng đảng vi&ecirc;n, kh&ocirc;ng đồng bộ với địa b&agrave;n th&ocirc;n, tổ d&acirc;n phố.</p>\r\n<p style=\"margin: 0px 0px 9.1875px; padding: 0px; outline: none; max-width: 100%; font-family: \'Times New Roman\'; font-size: 16px; color: #000000; line-height: 20px !important;\">&ldquo;T&igrave;nh h&igrave;nh tr&ecirc;n dẫn đến thực trạng nhiều chi bộ l&atilde;nh đạo một th&ocirc;n, tổ d&acirc;n phố. Điển h&igrave;nh l&agrave; th&ocirc;n Vật Lại (huyện Ba V&igrave;) c&oacute; tới 13 chi bộ l&atilde;nh đạo 1 th&ocirc;n&rdquo;, Trưởng ban Tổ chức Th&agrave;nh ủy H&agrave; Nội Vũ Đức Bảo n&oacute;i.</p>\r\n<p style=\"margin: 0px 0px 9.1875px; padding: 0px; outline: none; max-width: 100%; font-family: \'Times New Roman\'; font-size: 16px; color: #000000; line-height: 20px !important;\">&Ocirc;ng bảo cho hay, trước năm 2013, to&agrave;n TP c&oacute; 9.988 th&ocirc;n, tổ d&acirc;n phố (2.584 th&ocirc;n, 7.404 tổ d&acirc;n phố). Nhiều tổ d&acirc;n phố c&oacute; số hộ d&acirc;n thấp dưới 50 hộ, trong khi nhiều th&ocirc;n c&oacute; quy m&ocirc; tr&ecirc;n 1.000 hộ.</p>\r\n<div class=\"VCSortableInPreviewMode\" style=\"padding: 0px; outline: none; max-width: 100%; box-sizing: border-box; width: 460px; background-color: #eeeeee; font-size: 13px; font-family: tahoma; color: #000000; margin: 0px !important auto !important 9.1875px auto !important;\">\r\n<div style=\"margin: 0px auto; padding: 0px; outline: none; max-width: 100%;\"><img id=\"img_384915\" style=\"margin: 0px auto; padding: 0px; outline: none; display: inline; max-width: 100%; border: none; vertical-align: bottom; width: 460px;\" src=\"https://dantricdn.com/2018/11/30/bithuhanoi1-1543562470980805333946.jpg\" alt=\"&Ocirc;ng Ho&agrave;ng Trung Hải - B&iacute; thư Th&agrave;nh ủy H&agrave; Nội ph&aacute;t biểu tại hội nghị\" data-original=\"https://dantricdn.com/2018/11/30/bithuhanoi1-1543562470980805333946.jpg\" /></div>\r\n<div class=\"PhotoCMS_Caption\" style=\"margin: 0px auto; padding: 5px; outline: none; max-width: 100%; text-align: center;\">&Ocirc;ng Ho&agrave;ng Trung Hải - B&iacute; thư Th&agrave;nh ủy H&agrave; Nội ph&aacute;t biểu tại hội nghị</div>\r\n</div>\r\n<p style=\"margin: 0px 0px 9.1875px; padding: 0px; outline: none; max-width: 100%; font-family: \'Times New Roman\'; font-size: 16px; color: #000000; line-height: 20px !important;\">Sau 5 năm thực hiện Đề &aacute;n 06, to&agrave;n TP c&ograve;n 7.970 th&ocirc;n, tổ d&acirc;n phố - tương ứng 7.970 trưởng th&ocirc;n, tổ trưởng tổ d&acirc;n phố. Như vậy, so với trước khi thực hiện đề &aacute;n, đến nay TP H&agrave; Nội đ&atilde; giảm được 2.018 th&ocirc;n, tổ d&acirc;n phố, trong đ&oacute; giảm 34 th&ocirc;n v&agrave; 1.984 tổ d&acirc;n phố.</p>\r\n<p style=\"margin: 0px 0px 9.1875px; padding: 0px; outline: none; max-width: 100%; font-family: \'Times New Roman\'; font-size: 16px; color: #000000; line-height: 20px !important;\">Số th&ocirc;n giảm chủ yếu l&agrave; do chia t&aacute;ch huyện Từ Li&ecirc;m th&agrave;nh 2 quận Bắc Từ Li&ecirc;m v&agrave; Nam Từ Li&ecirc;m (c&aacute;c th&ocirc;n ở 2 quận n&agrave;y chuyển th&agrave;nh tổ d&acirc;n phố). C&ograve;n 1.984 tổ d&acirc;n phố giảm l&agrave; dựa tr&ecirc;n cơ sở sắp xếp lại hợp l&yacute; c&aacute;c tổ d&acirc;n phố quy m&ocirc; nhỏ.</p>\r\n<p style=\"margin: 0px 0px 9.1875px; padding: 0px; outline: none; max-width: 100%; font-family: \'Times New Roman\'; font-size: 16px; color: #000000; line-height: 20px !important;\">Về tổ chức đảng, trước khi thực hiện đề &aacute;n, Th&agrave;nh ủy c&oacute; 58 đảng bộ trực thuộc (29 đảng bộ quận, huyện, thị x&atilde; v&agrave; 29 đảng ủy trực thuộc Th&agrave;nh ủy) với 2.927 tổ chức cơ sở đảng, trong đ&oacute; c&oacute; 577 đảng bộ x&atilde;, phường, thị trấn.</p>\r\n<p style=\"margin: 0px 0px 9.1875px; padding: 0px; outline: none; max-width: 100%; font-family: \'Times New Roman\'; font-size: 16px; color: #000000; line-height: 20px !important;\">Theo &ocirc;ng Vũ Đức Bảo, hi&ecirc;n nay Th&agrave;nh ủy c&ograve;n 52 đảng bộ trực thuộc với 2.722 tổ chức cơ sở đảng, trong đ&oacute; c&oacute; 386 x&atilde;, 177 phường, 21 thị trấn.</p>\r\n<p style=\"margin: 0px 0px 9.1875px; padding: 0px; outline: none; max-width: 100%; font-family: \'Times New Roman\'; font-size: 16px; color: #000000; line-height: 20px !important;\"><strong style=\"margin: 0px; padding: 0px; outline: none; max-width: 100%;\">\"Ch&uacute;ng ta ng&agrave;y c&agrave;ng &ldquo;đẻ&rdquo; ra phụ cấp\"</strong></p>\r\n<p style=\"margin: 0px 0px 9.1875px; padding: 0px; outline: none; max-width: 100%; font-family: \'Times New Roman\'; font-size: 16px; color: #000000; line-height: 20px !important;\">Ph&aacute;t biểu tại hội nghị, &ocirc;ng Vũ Hồng Khanh - Chủ tịch Ủy ban MTTQ TP H&agrave; Nội ho&agrave;n to&agrave;n ủng hộ kế hoạch ki&ecirc;m nhiệm c&aacute;c chức danh ở địa b&agrave;n. &ldquo;Nếu như ki&ecirc;m nhiệm được l&agrave; điều rất tuyệt vời. V&igrave; n&oacute;i thật hiện nay ch&uacute;ng ta c&oacute; qu&aacute; nhiều chức danh, nhiều đến mức kh&ocirc;ng c&oacute; người để l&agrave;m&rdquo;, &ocirc;ng Khanh n&oacute;i.</p>\r\n<p style=\"margin: 0px 0px 9.1875px; padding: 0px; outline: none; max-width: 100%; font-family: \'Times New Roman\'; font-size: 16px; color: #000000; line-height: 20px !important;\">Theo &ocirc;ng Vũ Hồng Khanh, TP cũng cần phải l&agrave;m r&otilde; vấn đề thu nhập của c&aacute;c chức danh n&agrave;y. Quan điểm của &ocirc;ng Khanh l&agrave; vị tr&iacute; n&agrave;o được coi l&agrave; việc l&agrave;m th&igrave; dứt kho&aacute;t phải coi đ&oacute; l&agrave; thu nhập của người l&agrave;m việc. C&ograve;n vị tr&iacute; n&agrave;o l&agrave; tự nguyện, l&agrave; tự trang trải, l&agrave; tự quản&hellip; th&igrave; TP cũng cần phải t&iacute;nh to&aacute;n lại. Bởi nhiều người l&agrave;m kh&ocirc;ng phải v&igrave; mấy trăm ngh&igrave;n đồng.</p>', 'pages\\November2018\\bhrfwZ9afUDQQlYQCNkS.png', 'lo-trinh', 'Lộ trình', 'Lộ trình', 'ACTIVE', '2018-11-30 08:27:15', '2018-11-30 08:27:15');
INSERT INTO `pages` VALUES ('3', '1', 'Cảm nhận của học viên', 'Cảm nhận của học viên', '<p>Cảm nhận của học vi&ecirc;n</p>', 'pages\\November2018\\p4AVdpeXdjfveUUBpvGk.png', 'cam-nhan-cua-hoc-vien', 'Cảm nhận của học viên', 'Cảm nhận của học viên', 'ACTIVE', '2018-11-30 08:28:08', '2018-11-30 08:28:08');

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
  `user_id` int(10) unsigned DEFAULT NULL,
  `course_id` int(10) unsigned DEFAULT NULL,
  `price` float DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `package_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of payments
-- ----------------------------
INSERT INTO `payments` VALUES ('1', '1', '1', '600000', '2018-12-23 00:00:00', '2018-12-22 00:00:00', '1', '2018-12-23 14:54:00', '2018-12-23 15:39:40', null);
INSERT INTO `payments` VALUES ('2', '1', null, '600000', '2018-12-23 00:00:00', '2019-10-23 00:00:00', '1', '2018-12-23 15:29:00', '2018-12-23 15:38:02', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
INSERT INTO `permissions` VALUES ('92', 'browse_orders', 'orders', '2018-12-01 16:29:03', '2018-12-01 16:29:03');
INSERT INTO `permissions` VALUES ('93', 'read_orders', 'orders', '2018-12-01 16:29:03', '2018-12-01 16:29:03');
INSERT INTO `permissions` VALUES ('94', 'edit_orders', 'orders', '2018-12-01 16:29:03', '2018-12-01 16:29:03');
INSERT INTO `permissions` VALUES ('95', 'add_orders', 'orders', '2018-12-01 16:29:03', '2018-12-01 16:29:03');
INSERT INTO `permissions` VALUES ('96', 'delete_orders', 'orders', '2018-12-01 16:29:03', '2018-12-01 16:29:03');
INSERT INTO `permissions` VALUES ('97', 'browse_faqs', 'faqs', '2018-12-04 11:51:29', '2018-12-04 11:51:29');
INSERT INTO `permissions` VALUES ('98', 'read_faqs', 'faqs', '2018-12-04 11:51:29', '2018-12-04 11:51:29');
INSERT INTO `permissions` VALUES ('99', 'edit_faqs', 'faqs', '2018-12-04 11:51:29', '2018-12-04 11:51:29');
INSERT INTO `permissions` VALUES ('100', 'add_faqs', 'faqs', '2018-12-04 11:51:29', '2018-12-04 11:51:29');
INSERT INTO `permissions` VALUES ('101', 'delete_faqs', 'faqs', '2018-12-04 11:51:29', '2018-12-04 11:51:29');
INSERT INTO `permissions` VALUES ('102', 'browse_reviews', 'reviews', '2018-12-26 22:05:10', '2018-12-26 22:05:10');
INSERT INTO `permissions` VALUES ('103', 'read_reviews', 'reviews', '2018-12-26 22:05:10', '2018-12-26 22:05:10');
INSERT INTO `permissions` VALUES ('104', 'edit_reviews', 'reviews', '2018-12-26 22:05:10', '2018-12-26 22:05:10');
INSERT INTO `permissions` VALUES ('105', 'add_reviews', 'reviews', '2018-12-26 22:05:10', '2018-12-26 22:05:10');
INSERT INTO `permissions` VALUES ('106', 'delete_reviews', 'reviews', '2018-12-26 22:05:10', '2018-12-26 22:05:10');

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
INSERT INTO `permission_role` VALUES ('92', '1');
INSERT INTO `permission_role` VALUES ('93', '1');
INSERT INTO `permission_role` VALUES ('94', '1');
INSERT INTO `permission_role` VALUES ('95', '1');
INSERT INTO `permission_role` VALUES ('96', '1');
INSERT INTO `permission_role` VALUES ('97', '1');
INSERT INTO `permission_role` VALUES ('98', '1');
INSERT INTO `permission_role` VALUES ('99', '1');
INSERT INTO `permission_role` VALUES ('100', '1');
INSERT INTO `permission_role` VALUES ('101', '1');
INSERT INTO `permission_role` VALUES ('102', '1');
INSERT INTO `permission_role` VALUES ('103', '1');
INSERT INTO `permission_role` VALUES ('104', '1');
INSERT INTO `permission_role` VALUES ('105', '1');
INSERT INTO `permission_role` VALUES ('106', '1');

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
INSERT INTO `posts` VALUES ('3', '1', '1', 'Latest Post', null, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', '0', '2018-10-25 08:39:37', '2018-12-03 14:42:25');
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
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `audio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explain` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of questions
-- ----------------------------
INSERT INTO `questions` VALUES ('1', '1', '1', '2018-11-06 10:10:00', '2018-12-04 14:26:39', 'cau hoi 2', 'd', 'c2', null, 'df');
INSERT INTO `questions` VALUES ('3', '1', '1', '2018-12-04 14:22:39', '2018-12-04 14:22:39', 'dfs sdf', 'd', 'df', null, 'df');
INSERT INTO `questions` VALUES ('4', '2', '1', '2018-12-04 14:33:00', '2018-12-05 17:07:13', 'Câu hỏi thường gặp', 'd', 'df', '[{\"download_link\":\"questions\\\\December2018\\\\hfiCgORzP3vuXwKZUNjr.mp3\",\"original_name\":\"Minna_Bai1_ck1_rei.mp3\"}]', '<p>Câu hỏi thường gặp</p>');

-- ----------------------------
-- Table structure for reviews
-- ----------------------------
DROP TABLE IF EXISTS `reviews`;
CREATE TABLE `reviews` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` tinytext COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of reviews
-- ----------------------------
INSERT INTO `reviews` VALUES ('1', 'Nguyễn Trường Giang', 'Khóa học', 'Nguyễn Trường Giang', '1', '2018-12-26 22:06:00', '2018-12-26 22:14:54', null);

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
  `audio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tests
-- ----------------------------
INSERT INTO `tests` VALUES ('1', 'n5', '1', '2018-11-06 10:02:00', '2018-12-05 16:57:14', 'n5', '[{\"download_link\":\"tests\\\\December2018\\\\gWFXjAIo1ZZAj1OtS9O3.mp3\",\"original_name\":\"Minna_Bai1_ck1_rei.mp3\"}]', 'Nghe file v&agrave; trả lời c&acirc;u hỏi');
INSERT INTO `tests` VALUES ('2', 'test', '1', '2018-12-03 23:27:37', '2018-12-03 23:27:37', 'test', null, null);

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
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '1', 'Admin', 'admin@admin.com', 'users/default.png', null, '$2y$10$bGfkxA0t4eoIDw496vdQ9OC25qf1VsgURbhheSLFlZS1xq1v16HpK', 'GwKcYYmG6bDUPYqPPgD0zItszDot0XByNkPnQTJFUHJ0DNnvI5sNzbiZxw3L', null, '2018-10-25 08:39:37', '2018-12-19 10:32:43', '0', null, null, '0973537381', 'ha noi, nguyen khang');
INSERT INTO `users` VALUES ('4', '2', 'huunv', 'nguyenhuu140490@gmail.com', 'users/default.png', null, '$2y$10$oIFryIq/JTMnYyLIJlN8T.pcEcSPgbdosq7SS7coyhQqukXNLbm.W', 'MMXnRkuEDFV89mrpAlBiZpLXi0FsTCSe8DyBizbIBxotUgdluNgDwOefnkdR', null, '2018-11-18 08:42:31', '2018-11-18 08:42:31', '0', null, null, null, null);
INSERT INTO `users` VALUES ('5', '2', 'ha vu', 'ha.vuvu25@gmail.com', 'https://lh6.googleusercontent.com/-lAV_ty5-WkI/AAAAAAAAAAI/AAAAAAAAABY/vyjQj6ShrFs/photo.jpg?sz=50', null, null, 'Bh3QmuUROktGmKm35voTefiCNyRtMEmnJhHL1Rktss8bSbxFUpdNJUBUHkc7', null, '2018-11-18 14:13:47', '2018-11-18 14:13:47', '107198651449671391412', 'https://lh6.googleusercontent.com/-lAV_ty5-WkI/AAAAAAAAAAI/AAAAAAAAABY/vyjQj6ShrFs/photo.jpg', null, null, null);

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

-- ----------------------------
-- Table structure for vouchers
-- ----------------------------
DROP TABLE IF EXISTS `vouchers`;
CREATE TABLE `vouchers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `course_id` int(10) unsigned DEFAULT NULL,
  `package_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of vouchers
-- ----------------------------
INSERT INTO `vouchers` VALUES ('1', 'wecu83', '150000', 'voucher 8/8', '1', '2019-03-08 23:21:00', '2019-03-13 22:29:23', '2', null);
INSERT INTO `vouchers` VALUES ('2', 'wecu83', '150000', 'voucher 8/8', '1', '2019-03-13 22:54:17', '2019-03-13 22:54:17', null, '4');
