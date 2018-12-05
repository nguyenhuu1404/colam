-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 05, 2018 lúc 11:21 PM
-- Phiên bản máy phục vụ: 10.1.37-MariaDB
-- Phiên bản PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `colam`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `answers`
--

CREATE TABLE `answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `check` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `answers`
--

INSERT INTO `answers` (`id`, `question_id`, `name`, `check`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 'dap an a', 0, 1, '2018-11-06 03:21:00', '2018-12-05 07:08:52'),
(2, 3, 'dap an dung', 1, 1, '2018-12-04 07:25:09', '2018-12-04 07:25:09'),
(3, 1, 'dap an dung', 1, 1, '2018-12-04 07:27:20', '2018-12-04 07:27:20'),
(4, 4, 'cau test', 0, 1, '2018-12-04 07:33:53', '2018-12-04 07:33:53'),
(5, 4, 'đáp án đúng', 1, 1, '2018-12-05 10:44:55', '2018-12-05 10:44:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_button` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `href` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banners`
--

INSERT INTO `banners` (`id`, `title`, `text_button`, `image`, `type`, `status`, `created_at`, `updated_at`, `order`, `href`) VALUES
(1, 'Học tiếng nhật', 'Chưa bao giờ dễ đến thế', 'banners\\November2018\\2SWAE3O5t6JcBGa7bz4K.jpg', 'home', 1, '2018-11-22 06:15:42', '2018-11-22 06:15:42', NULL, NULL),
(2, 'Tiếng nhật', 'Xem thêm', 'banners\\November2018\\Uz1lUVZKcDKNiezQZrSX.jpg', 'home', 1, '2018-11-22 06:21:47', '2018-11-22 06:21:47', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`, `type`) VALUES
(1, 2, 1, 'Category 1', 'category-1', '2018-10-25 01:39:37', '2018-11-24 11:27:05', NULL),
(2, 1, 2, 'Category 2', 'category-2', '2018-10-25 01:39:37', '2018-11-24 11:27:05', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `lesson_id` int(10) UNSIGNED DEFAULT NULL,
  `post_id` int(10) UNSIGNED DEFAULT NULL,
  `page_id` int(10) UNSIGNED DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `course_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `user_id`, `name`, `phone`, `email`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'dsd', '0942334523', NULL, '<p>dfsdf</p>', 0, '2018-12-03 17:23:40', '2018-12-03 17:23:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `courses`
--

CREATE TABLE `courses` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` tinytext COLLATE utf8mb4_unicode_ci,
  `is_home` tinyint(4) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `price_sale` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `courses`
--

INSERT INTO `courses` (`id`, `code`, `name`, `time`, `video_number`, `status`, `image`, `created_at`, `updated_at`, `slug`, `test_number`, `youtube`, `info`, `type`, `title`, `description`, `is_home`, `price`, `price_sale`) VALUES
(1, 'CL45N', 'N5', 4, 123, 1, 'courses/November2018/OqqFr8KghZB6hM7Vosrx.png', '2018-11-01 00:22:44', '2018-12-01 07:38:44', 'n5', 0, 'https://www.youtube.com/watch?v=yU6BSPNnuWA', '<p>&nbsp;this is the n5</p>', 'N5', 'Khóa học dành cho sinh viên du học', NULL, 0, 600000, NULL),
(2, 'N5b', 'N5b', 4, 4, 1, 'courses\\November2018\\AOuoeO41Delttk6ncbu1.png', '2018-11-06 03:31:45', '2018-12-01 07:38:21', 'n5b', 0, NULL, NULL, 'N5', 'Khóa học n5b', NULL, 0, 800000, NULL),
(3, 'N4', 'N4', 6, 60, 1, 'courses\\November2018\\3hAIKRQxJkY8n0f7cXC1.png', '2018-11-23 07:31:47', '2018-12-01 07:37:58', 'n4', 10, 'https://www.youtube.com/watch?v=yU6BSPNnuWA', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat.</p>', 'N4', 'Khóa học dành cho sinh viên du học', NULL, 0, 900000, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `course_lesson`
--

CREATE TABLE `course_lesson` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `lesson_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `course_lesson`
--

INSERT INTO `course_lesson` (`id`, `course_id`, `lesson_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 1, 2),
(4, 1, 3),
(5, 1, 4),
(6, 1, 5),
(7, 1, 6),
(8, 1, 7),
(9, 1, 8),
(10, 1, 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `course_package`
--

CREATE TABLE `course_package` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED DEFAULT NULL,
  `package_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `course_package`
--

INSERT INTO `course_package` (`id`, `course_id`, `package_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(4, 3, 1, NULL, NULL),
(5, 2, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
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
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 0, NULL, 12),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(22, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(23, 4, 'id', 'hidden', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(24, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(25, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(26, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 4),
(27, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(28, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 6),
(29, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(30, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(31, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(32, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(33, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(34, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(35, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(36, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(37, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(38, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(39, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(40, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(41, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(42, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(43, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(44, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(45, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(46, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(47, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(48, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(49, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(50, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(51, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(52, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(53, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(54, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(55, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(56, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(57, 7, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(58, 7, 'code', 'text', 'Code', 0, 1, 1, 1, 1, 1, '{}', 2),
(59, 7, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 3),
(65, 7, 'time', 'number', 'Time', 0, 1, 1, 1, 1, 1, '{}', 9),
(66, 7, 'video_number', 'number', 'Video Number', 0, 1, 1, 1, 1, 1, '{}', 10),
(67, 7, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', 16),
(68, 7, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 13),
(70, 7, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 19),
(71, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 20),
(73, 7, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true}}', 4),
(74, 8, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(76, 8, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(77, 8, 'video', 'text', 'Video', 0, 1, 1, 1, 1, 1, '{}', 6),
(78, 8, 'content', 'rich_text_box', 'Content', 0, 0, 0, 1, 1, 1, '{}', 7),
(80, 8, 'view', 'number', 'View', 0, 1, 1, 1, 1, 1, '{}', 10),
(81, 8, 'trial', 'select_dropdown', 'Trial', 1, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', 12),
(82, 8, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', 16),
(83, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 18),
(84, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 19),
(85, 8, 'parent_id', 'select_dropdown', 'Parent Id', 0, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"-- parent --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 9),
(86, 8, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true}}', 3),
(87, 8, 'lesson_belongstomany_course_relationship', 'relationship', 'courses', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Course\",\"table\":\"courses\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"course_lesson\",\"pivot\":\"1\",\"taggable\":\"0\"}', 14),
(89, 8, 'youtube', 'text', 'Youtube', 0, 0, 0, 1, 1, 1, '{}', 11),
(90, 9, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(91, 9, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(92, 9, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', 6),
(93, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(94, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(95, 9, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true}}', 3),
(97, 10, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(98, 10, 'test_id', 'text', 'Test Id', 1, 1, 1, 1, 1, 1, '{}', 4),
(99, 10, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', 7),
(100, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 10),
(101, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(102, 10, 'name', 'rich_text_box', 'Name', 0, 1, 1, 1, 1, 1, '{}', 3),
(103, 10, 'type', 'select_dropdown', 'Type', 0, 1, 1, 1, 1, 1, '{\"default\":\"d\",\"options\":{\"d\":\"\\u0110\\u00e1p \\u00e1n d\\u00e0i\",\"n\":\"\\u0110\\u00e1p \\u00e1n ng\\u1eafn\"}}', 6),
(104, 10, 'question_belongsto_test_relationship', 'relationship', 'tests', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Test\",\"table\":\"tests\",\"type\":\"belongsTo\",\"column\":\"test_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"answers\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(105, 11, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(106, 11, 'question_id', 'text', 'Question Id', 1, 1, 1, 1, 1, 1, '{}', 4),
(107, 11, 'name', 'rich_text_box', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(108, 11, 'check', 'select_dropdown', 'Check', 0, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"\\u0110\\u00e1p \\u00e1n sai\",\"1\":\"\\u0110\\u00e1p \\u00e1n \\u0111\\u00fang\"}}', 5),
(109, 11, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', 6),
(110, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(111, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(112, 11, 'answer_belongsto_question_relationship', 'relationship', 'questions', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Question\",\"table\":\"questions\",\"type\":\"belongsTo\",\"column\":\"question_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"answers\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(113, 12, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(114, 12, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(115, 12, 'lesson_id', 'text', 'Lesson Id', 1, 1, 1, 1, 1, 1, '{}', 4),
(116, 12, 'post_id', 'text', 'Post Id', 1, 1, 1, 1, 1, 1, '{}', 6),
(117, 12, 'page_id', 'text', 'Page Id', 1, 1, 1, 1, 1, 1, '{}', 8),
(118, 12, 'parent_id', 'text', 'Parent Id', 1, 1, 1, 1, 1, 1, '{}', 10),
(119, 12, 'content', 'rich_text_box', 'Content', 0, 1, 1, 1, 1, 1, '{}', 11),
(120, 12, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{}', 12),
(121, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 13),
(122, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 14),
(123, 12, 'comment_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"answers\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(124, 12, 'comment_belongsto_lesson_relationship', 'relationship', 'lessons', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Lesson\",\"table\":\"lessons\",\"type\":\"belongsTo\",\"column\":\"lesson_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"answers\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(125, 12, 'comment_belongsto_post_relationship', 'relationship', 'posts', 0, 1, 1, 1, 1, 1, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Post\",\"table\":\"posts\",\"type\":\"belongsTo\",\"column\":\"post_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"answers\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(126, 12, 'comment_belongsto_page_relationship', 'relationship', 'pages', 0, 1, 1, 1, 1, 1, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Page\",\"table\":\"pages\",\"type\":\"belongsTo\",\"column\":\"page_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"answers\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(127, 13, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(128, 13, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 6),
(129, 13, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(130, 13, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 3),
(131, 13, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 4),
(132, 13, 'content', 'rich_text_box', 'Content', 0, 1, 1, 1, 1, 1, '{}', 5),
(133, 13, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', 8),
(134, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 9),
(135, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(136, 13, 'contact_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"answers\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(137, 14, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(138, 14, 'user_id', 'select_dropdown', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(139, 14, 'course_id', 'select_dropdown', 'Course Id', 1, 1, 1, 1, 1, 1, '{}', 4),
(140, 14, 'price', 'text', 'Price', 0, 1, 1, 1, 1, 1, '{}', 8),
(141, 14, 'price_sale', 'text', 'Price Sale', 0, 1, 1, 1, 1, 1, '{}', 9),
(142, 14, 'start_date', 'date', 'Start Date', 0, 1, 1, 1, 1, 1, '{}', 10),
(143, 14, 'end_date', 'date', 'End Date', 0, 1, 1, 1, 1, 1, '{}', 11),
(144, 14, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', 12),
(145, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 13),
(146, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 14),
(147, 14, 'payment_belongsto_course_relationship', 'relationship', 'courses', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Course\",\"table\":\"courses\",\"type\":\"belongsTo\",\"column\":\"course_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"answers\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(148, 14, 'payment_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"answers\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(149, 8, 'is_home', 'select_dropdown', 'trang chủ', 1, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', 13),
(150, 8, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 15),
(151, 15, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(152, 15, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(153, 15, 'text_button', 'text', 'Text Button', 0, 1, 1, 1, 1, 1, '{}', 3),
(154, 15, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(155, 15, 'type', 'select_dropdown', 'Type', 0, 1, 1, 1, 1, 1, '{\"default\":\"home\",\"options\":{\"home\":\"Trang ch\\u1ee7\",\"new\":\"Trang tin t\\u1ee9c\"}}', 5),
(156, 15, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', 8),
(157, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 9),
(158, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(159, 15, 'order', 'number', 'Order', 0, 1, 1, 1, 1, 1, '{}', 7),
(160, 15, 'href', 'text', 'Href', 0, 1, 1, 1, 1, 1, '{}', 6),
(161, 16, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(162, 16, 'code', 'text', 'Code', 0, 1, 1, 1, 1, 1, '{}', 2),
(163, 16, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 3),
(164, 16, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 5),
(167, 16, 'price_sale', 'number', 'Price Sale', 0, 1, 1, 1, 1, 1, '{}', 8),
(168, 16, 'price', 'number', 'Price', 0, 1, 1, 1, 1, 1, '{}', 9),
(169, 16, 'time', 'number', 'Time', 0, 1, 1, 1, 1, 1, '{}', 10),
(170, 16, 'video_number', 'number', 'Video Number', 0, 1, 1, 1, 1, 1, '{}', 11),
(171, 16, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', 15),
(172, 16, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 12),
(173, 16, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true}}', 4),
(174, 16, 'test_number', 'number', 'Test Number', 0, 1, 1, 1, 1, 1, '{}', 13),
(175, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 16),
(176, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 17),
(177, 7, 'course_belongstomany_package_relationship', 'relationship', 'packages', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Package\",\"table\":\"packages\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"course_package\",\"pivot\":\"1\",\"taggable\":\"0\"}', 7),
(178, 7, 'test_number', 'text', 'Test Number', 1, 1, 1, 1, 1, 1, '{}', 8),
(179, 16, 'is_home', 'select_dropdown', 'Is Home', 0, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', 14),
(180, 8, 'lesson_hasmany_test_relationship', 'relationship', 'tests', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Test\",\"table\":\"tests\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"lesson_test\",\"pivot\":\"1\",\"taggable\":\"0\"}', 4),
(181, 7, 'youtube', 'text', 'Youtube', 0, 1, 1, 1, 1, 1, '{}', 11),
(182, 7, 'info', 'rich_text_box', 'Info', 0, 0, 0, 1, 1, 1, '{}', 12),
(183, 4, 'type', 'text', 'Type', 0, 1, 1, 1, 1, 1, '{}', 8),
(184, 8, 'order', 'text', 'Order', 0, 1, 1, 1, 1, 1, '{}', 17),
(185, 8, 'lesson_belongsto_lesson_relationship', 'relationship', 'parent Id', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Lesson\",\"table\":\"lessons\",\"type\":\"belongsTo\",\"column\":\"parent_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"answers\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(186, 7, 'type', 'text', 'Type', 0, 1, 1, 1, 1, 1, '{}', 6),
(187, 7, 'title', 'text', 'Title', 0, 0, 1, 1, 1, 1, '{}', 5),
(188, 7, 'description', 'text_area', 'Description', 0, 0, 1, 1, 1, 1, '{}', 18),
(189, 7, 'is_home', 'select_dropdown', 'Is Home', 0, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"Ch\\u01b0a k\\u00edch ho\\u1ea1t\",\"1\":\"\\u0110\\u00e3 k\\u00edch ho\\u1ea1t\"}}', 17),
(190, 16, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 16),
(191, 7, 'price', 'number', 'Price', 0, 1, 1, 1, 1, 1, '{}', 14),
(192, 7, 'price_sale', 'number', 'Price Sale', 0, 1, 1, 1, 1, 1, '{}', 15),
(193, 14, 'payment_belongsto_package_relationship', 'relationship', 'packages', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Package\",\"table\":\"packages\",\"type\":\"belongsTo\",\"column\":\"package_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"answers\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(194, 14, 'package_id', 'text', 'Package Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(195, 17, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(196, 17, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(197, 17, 'package_id', 'text', 'Package Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(198, 17, 'price', 'text', 'Price', 0, 1, 1, 1, 1, 1, '{}', 4),
(199, 17, 'fullname', 'text', 'Fullname', 0, 1, 1, 1, 1, 1, '{}', 5),
(200, 17, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 6),
(201, 17, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 7),
(202, 17, 'payment_method', 'text', 'Payment Method', 0, 1, 1, 1, 1, 1, '{}', 8),
(204, 17, 'status', 'text', 'Status', 0, 1, 1, 1, 1, 1, '{}', 10),
(205, 17, 'note', 'text', 'Note', 0, 1, 1, 1, 1, 1, '{}', 11),
(206, 17, 'address_ship', 'text', 'Address Ship', 0, 1, 1, 1, 1, 1, '{}', 12),
(207, 17, 'course_id', 'text', 'Course Id', 0, 1, 1, 1, 1, 1, '{}', 13),
(208, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 14),
(209, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 15),
(210, 9, 'audio', 'file', 'Audio', 0, 1, 1, 1, 1, 1, '{}', 4),
(211, 9, 'content', 'rich_text_box', 'Content', 0, 1, 1, 1, 1, 1, '{}', 5),
(212, 10, 'code', 'text', 'Code', 0, 1, 1, 1, 1, 1, '{}', 2),
(213, 10, 'audio', 'file', 'Audio', 0, 1, 1, 1, 1, 1, '{}', 8),
(215, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(216, 18, 'question', 'text', 'Question', 0, 1, 1, 1, 1, 1, '{}', 2),
(217, 18, 'answer', 'rich_text_box', 'Answer', 0, 1, 1, 1, 1, 1, '{}', 3),
(218, 18, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(219, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(220, 10, 'explain', 'rich_text_box', 'Explain', 0, 1, 1, 1, 1, 1, '{}', 10),
(221, 18, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"1\",\"options\":{\"0\":\"Nh\\u00e1p\",\"1\":\"Xu\\u1ea5t b\\u1ea3n\"}}', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"name\"}', '2018-10-25 01:39:37', '2018-11-27 07:23:24'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(7, 'courses', 'courses', 'Course', 'Courses', 'voyager-browser', 'App\\Course', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-10-31 21:48:42', '2018-12-01 07:37:18'),
(8, 'lessons', 'lessons', 'Lesson', 'Lessons', 'voyager-youtube-play', 'App\\Lesson', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"name\"}', '2018-11-01 00:48:50', '2018-12-03 16:40:09'),
(9, 'tests', 'tests', 'Test', 'Tests', 'voyager-tree', 'App\\Test', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-11-06 02:30:45', '2018-12-03 16:42:58'),
(10, 'questions', 'questions', 'Question', 'Questions', 'voyager-question', 'App\\Question', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-11-06 02:48:31', '2018-12-05 10:02:28'),
(11, 'answers', 'answers', 'Answer', 'Answers', 'voyager-pen', 'App\\Answer', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-11-06 03:18:06', '2018-11-18 05:43:38'),
(12, 'comments', 'comments', 'Comment', 'Comments', 'voyager-person', 'App\\Comment', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-11-07 23:55:37', '2018-11-08 00:07:47'),
(13, 'contacts', 'contacts', 'Contact', 'Contacts', 'voyager-file-text', 'App\\Contact', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-11-08 00:11:02', '2018-12-03 16:48:45'),
(14, 'payments', 'payments', 'Payment', 'Payments', 'voyager-paypal', 'App\\Payment', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-11-08 00:13:55', '2018-12-01 09:26:21'),
(15, 'banners', 'banners', 'Banner', 'Banners', 'voyager-book', 'App\\Banner', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-11-21 09:42:40', '2018-11-22 06:43:22'),
(16, 'packages', 'packages', 'Package', 'Packages', 'voyager-folder', 'App\\Package', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-11-23 06:51:59', '2018-11-30 17:33:57'),
(17, 'orders', 'orders', 'Order', 'Orders', NULL, 'App\\Order', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-12-01 09:29:02', '2018-12-01 09:29:02'),
(18, 'faqs', 'faqs', 'Faq', 'Faqs', NULL, 'App\\Faq', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-12-04 04:51:29', '2018-12-05 14:43:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Cách khắc phục các lỗi khi đăng nhập vào học', '<div> </div>\r\n<div>♦ Trường hợp tài khoản đã mua khóa học nhưng khi đăng nhập vào học thì trang web thông báo bắt mua khóa học các bạn tiến hành kiểm tra theo các bước sau:</div>\r\n<div> </div>\r\n<div>1. Click vào tên hiển thị và chọn kiểm tra khóa học của tôi để kiểm tra xem khóa học còn thời hạn học hay đã hết.</div>\r\n<div> </div>\r\n<div>2. Nếu tài khoản vừa kiểm tra chưa mua khóa học các bạn vui lòng nhắn tin về trong facebook của trung tâm: Dũng Mori bộ phận kĩ thuật của trung tâm sẽ hỗ trợ giúp bạn.</div>\r\n<div> </div>\r\n<div> </div>\r\n<div>♦ Trường hợp khi các bạn truy cập vào website của chúng tôi và màn hình thiết bị hiển thị lỗi 404 các bạn vui lòng xóa lịch sử trình duyệt web trên thiết bị và sau đó tiến hành truy cập trở lại bình thường vào website. ( Đây là lỗi do trình duyệt web đã lưu bookmark của website cũ )</div>\r\n<div> </div>\r\n<div>♦ Trường hợp không thể xem được bài học và màn hình thiết bị báo lỗi: “ Không tải và xem được video vì không thể kết nối được tới máy chủ hoặc định dạng video mà bạn yêu cầu không hỗ trợ”,  thì các bạn chuyển sang máy chủ Nhật Bản hoặc giảm chất lượng video xuống thấp hơn.</div>\r\n<div> </div>\r\n<div>♦ Trường hợp bạn bị kích ra do đăng nhập trên 1 thiết bị khác bạn chọn đăng nhập lại là được và phiên làm việc trên thiết bị còn lại sẽ bị đẩy ra, điều khoản sử dụng của website không cho phép người dùng đăng nhập trên nhiều thiết bị cùng 1 lúc. </div>\r\n<div> </div>\r\n<div>♦ Trong trường hợp nhập đã nhập đầy đủ tên đăng nhập và mật khẩu mà trang web vẫn báo “ Sai email/tên đăng nhập hoặc mật khẩu” thì các bạn nên kiểm tra lại tên đăng nhập hoặc mật khẩu liệu đã nhập đúng các kí tự hay chưa? Khi nhập sai quá 2 lần hệ thống sẽ yêu cầu nhập mã xác thực các bạn nhập theo đoạn mã màu xanh. Nếu quên mật khẩu của tài khoản các bạn xem hướng dẫn trong bài viết sau: Hướng dẫn cấp lại mật khẩu</div>', '2018-12-05 14:19:00', '2018-12-05 14:46:45', 1),
(2, 'Chính sách gia hạn khóa học Online', '<div>Chính sách gia hạn khoá học online trên website (áp dụng từ ngày 23/12/2017):</div>\r\n<div> </div>\r\n<div> </div>\r\n<div>1. Điều kiện gia hạn và cách thức liên hệ:</div>\r\n<div> </div>\r\n<div> ♦ Thông báo gia hạn khi khóa học còn thời hạn.</div>\r\n<div> </div>\r\n<div> ♦ Thời hạn thông báo và thanh toán học phí gia hạn muộn nhất là ngày cuối cùng kết thúc khóa học. </div>\r\n<div> </div>\r\n<div> ♦ Những khoá học đã hết hạn không thể gia hạn được</div>\r\n<div> </div>\r\n<div> ♦ Cách thức gia hạn: Liên hệ trực tiếp qua facebook</div>\r\n<div> </div>\r\n<div> </div>\r\n<div> </div>\r\n<div>2. Học phí gia hạn :</div>\r\n<div> </div>\r\n<div>Mã số khóa học 1 (N5), 2 (N4), 3 (N3): 250.000VND (1300 yên)/1 tháng </div>\r\n<div> </div>\r\n<div>Mã số khóa học 4 (N5+N4), 5 (N4+N3), 6 (N5+N4+N3): 150.000VND (700 yên)/1 tháng </div>\r\n<div> </div>\r\n<div>Mã số khóa học 7 (N2): 300.000VND (1500 yên)/1 tháng </div>\r\n<div> </div>\r\n<div>Mã số khóa học 8 (N3+N2), 9 (N4+N3+N2), 10 (N5+N4+N3+N2): 200.000VND (1000 yên)/1 tháng</div>\r\n<div> </div>\r\n<div>Mã số khóa học 11 (N1): 320.000VND (1600 yên)/1 tháng </div>\r\n<div> </div>\r\n<div>Mã số khóa học 12 (N1+N2),13 (N1+N2+N3),14(N1+N2+N3+N4): 220.000VND (1100 yên)/1 tháng</div>', '2018-12-05 14:21:00', '2018-12-05 14:46:39', 1),
(3, 'Hướng dẫn đăng kí tài khoản trên website', '<p><u style=\"box-sizing: border-box; color: #404040; font-family: arial, sans-serif; font-size: 16px;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Bước 1:</span></u><span style=\"color: #404040; font-family: arial, sans-serif; font-size: 16px;\"> Click vào mục tạo tài khoản:<br /><br /></span><u style=\"box-sizing: border-box; color: #404040; font-family: arial, sans-serif; font-size: 16px;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Bước 2:</span></u><span style=\"color: #404040; font-family: arial, sans-serif; font-size: 16px;\"> Sau đó sẽ hiện ra cửa sổ mới để đăng ký nhé:<br /><br /></span></p>\r\n<div style=\"box-sizing: border-box; color: #404040; font-family: arial, sans-serif; font-size: 16px;\">Tại đây sẽ có 3 cách đăng ký:<br style=\"box-sizing: border-box;\" />1 - Đăng ký bằng Facebook;<br style=\"box-sizing: border-box;\" />2 - Đăng ký bằng Gmail (Tài khoản Google);<br style=\"box-sizing: border-box;\" />3 - Đăng ký bằng email của bạn.<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" />Bạn lựa chọn một trong 3 cách trên và thực hiện tiếp theo hướng dẫn sau đây:<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" />1 - Đăng ký bằng facebook sẽ hiện ra cửa sổ sau, bạn tiếp tục đăng nhập bằng tài khoản Facebook của bạn là xong nhé!</div>\r\n<div style=\"box-sizing: border-box; color: #404040; font-family: arial, sans-serif; font-size: 16px; text-align: center;\"> </div>\r\n<div style=\"box-sizing: border-box; color: #404040; font-family: arial, sans-serif; font-size: 16px;\">2 - Đăng ký bằng Gmail (tài khoản google) sẽ hiện ra cửa sổ sau, bạn sử dụng gmail của bạn để đăng nhập là ok nhé!</div>\r\n<div style=\"box-sizing: border-box; color: #404040; font-family: arial, sans-serif; font-size: 16px; text-align: center;\"> </div>\r\n<div style=\"box-sizing: border-box; color: #404040; font-family: arial, sans-serif; font-size: 16px;\">3. Đăng ký bằng email của bạn: Bạn điền đầy đủ thông tin như trong hình, tích vào ô \"<span style=\"box-sizing: border-box; color: #727272; font-family: arial; font-size: 13px; font-weight: bold;\">Tôi đã đọc và đồng ý với điều khoản sử dụng\"</span> và ấn vào <span style=\"box-sizing: border-box; font-weight: bold;\">Đăng ký</span> là hoàn tất.</div>\r\n<div style=\"box-sizing: border-box; color: #404040; font-family: arial, sans-serif; font-size: 16px; text-align: center;\"> </div>\r\n<div style=\"box-sizing: border-box; color: #404040; font-family: arial, sans-serif; font-size: 16px;\"><br style=\"box-sizing: border-box;\" /><span style=\"box-sizing: border-box; font-weight: bold;\"><u style=\"box-sizing: border-box;\">Bước 3</u>: </span>Trong trường hợp bạn muốn thay đổi thông tin tài khoản, mật khẩu ... thì vào click chọn mục Thông tin tài cá nhân như trên hình:<br /><br /><u style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-weight: bold;\">Bước 4</span></u>: Sau đó bạn ấn chỉnh sửa và thay đổi nhé!</div>', '2018-12-05 14:22:00', '2018-12-05 14:46:33', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lessons`
--

CREATE TABLE `lessons` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lessons`
--

INSERT INTO `lessons` (`id`, `name`, `video`, `content`, `parent_id`, `view`, `trial`, `status`, `created_at`, `updated_at`, `slug`, `youtube`, `is_home`, `image`, `order`) VALUES
(4, 'Bảng chữ cái hiragana', NULL, NULL, NULL, NULL, 0, 1, '2018-11-27 07:02:00', '2018-11-27 07:26:20', 'bang-chu-cai-hiragana', NULL, 0, 'lessons\\November2018\\l5D4eptp6sgDq111pZcg.png', 1),
(5, 'Giới thiệu về bảng chữ cái trong tiếng nhật', NULL, '<p>Giới thiệu về bảng chữ cái trong tiếng nhật\r\nGiới thiệu về bảng chữ cái trong tiếng nhật\r\nGiới thiệu về bảng chữ cái trong tiếng nhật\r\nGiới thiệu về bảng chữ cái trong tiếng nhật\r\nGiới thiệu về bảng chữ cái trong tiếng nhật\r\ngioi thieu khoa hoc ', 4, 100, 1, 1, '2018-11-27 07:04:00', '2018-11-27 07:52:55', 'gioi-thieu-ve-bang-chu-cai-trong-tieng-nhat', 'https://www.youtube.com/watch?v=LmVBhe1AyXU', 1, 'lessons\\November2018\\0Agt4Hx3PcauzcLyk1j7.png', 2),
(6, 'Bài 1 - Hiragana A I Ư Ê Ô', NULL, NULL, 4, 100, 1, 1, '2018-11-27 08:04:00', '2018-11-27 08:04:00', 'bai-1-hiragana-a-i-e-o', 'https://www.youtube.com/watch?v=0HfoZT-8xFM', 1, 'lessons\\November2018\\CnUSFGxzaRng4Bop3sgg.png', NULL),
(7, 'Các bài học thú vị - Miễn phí', NULL, NULL, NULL, NULL, 1, 1, '2018-11-28 06:50:08', '2018-11-28 06:50:08', 'cac-bai-hoc-thu-vi-mien-phi', NULL, 0, NULL, NULL),
(8, 'TIẾNG NHẬT DỄ thế này cơ mà', NULL, '<p>this is the test</p>', 7, 100, 1, 1, '2018-11-28 06:55:00', '2018-12-04 07:36:19', 'tieng-nhat-de-the-nay-co-ma', 'https://www.youtube.com/watch?v=Cwu7qEmilss', 1, 'lessons\\November2018\\ityFxUSDSvNeuy3kafd8.png', NULL),
(9, 'Video học tiếng nhật', 'huu', '<p>bai giang video</p>', 4, 200, 0, 1, '2018-11-29 09:13:00', '2018-11-29 20:59:32', 'video-hoc-tieng-nhat', NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lesson_test`
--

CREATE TABLE `lesson_test` (
  `id` int(10) UNSIGNED NOT NULL,
  `lesson_id` int(10) UNSIGNED DEFAULT NULL,
  `test_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lesson_test`
--

INSERT INTO `lesson_test` (`id`, `lesson_id`, `test_id`, `created_at`, `updated_at`) VALUES
(1, 8, 1, NULL, NULL),
(2, 8, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(2, 'topmenu', '2018-11-18 08:23:49', '2018-11-18 08:31:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
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
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Tổng quan', '', '_self', 'voyager-boat', '#000000', NULL, 1, '2018-10-25 01:39:37', '2018-11-07 23:48:18', 'voyager.dashboard', 'null'),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 3, '2018-10-25 01:39:37', '2018-11-21 09:32:42', 'voyager.media.index', NULL),
(3, 1, 'Người dùng', '', '_self', 'voyager-person', '#000000', 30, 2, '2018-10-25 01:39:37', '2018-11-21 09:32:42', 'voyager.users.index', 'null'),
(4, 1, 'Quản lí quyền', '', '_self', 'voyager-lock', '#000000', 30, 1, '2018-10-25 01:39:37', '2018-11-21 09:32:40', 'voyager.roles.index', 'null'),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 14, '2018-10-25 01:39:37', '2018-12-03 16:19:46', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2018-10-25 01:39:37', '2018-11-21 09:32:23', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2018-10-25 01:39:37', '2018-11-21 09:32:23', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2018-10-25 01:39:37', '2018-11-21 09:32:23', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2018-10-25 01:39:37', '2018-11-21 09:32:23', 'voyager.bread.index', NULL),
(10, 1, 'Cấu hình', '', '_self', 'voyager-settings', '#000000', NULL, 13, '2018-10-25 01:39:37', '2018-12-03 16:19:46', 'voyager.settings.index', 'null'),
(11, 1, 'Danh mục', '', '_self', 'voyager-categories', '#000000', NULL, 6, '2018-10-25 01:39:37', '2018-11-21 09:32:42', 'voyager.categories.index', 'null'),
(12, 1, 'Bài viết', '', '_self', 'voyager-news', '#000000', NULL, 4, '2018-10-25 01:39:37', '2018-11-21 09:32:42', 'voyager.posts.index', 'null'),
(13, 1, 'Trang', '', '_self', 'voyager-file-text', '#000000', NULL, 5, '2018-10-25 01:39:37', '2018-11-21 09:32:42', 'voyager.pages.index', 'null'),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2018-10-25 01:39:37', '2018-11-21 09:32:23', 'voyager.hooks', NULL),
(16, 1, 'Khóa học', '/admin/courses', '_self', 'voyager-browser', '#000000', 34, 1, '2018-10-31 23:55:37', '2018-12-01 08:56:51', NULL, ''),
(17, 1, 'Bài học', '', '_self', 'voyager-youtube-play', '#000000', 34, 3, '2018-11-01 00:48:50', '2018-12-01 08:56:51', 'voyager.lessons.index', 'null'),
(18, 1, 'Đề', '', '_self', 'voyager-tree', '#000000', 29, 1, '2018-11-06 02:30:45', '2018-12-03 16:19:46', 'voyager.tests.index', 'null'),
(19, 1, 'Câu hỏi', '', '_self', 'voyager-question', '#000000', 29, 2, '2018-11-06 02:48:32', '2018-12-03 16:19:46', 'voyager.questions.index', 'null'),
(20, 1, 'Đáp án', '', '_self', 'voyager-pen', '#000000', 29, 3, '2018-11-06 03:18:06', '2018-11-21 09:31:25', 'voyager.answers.index', 'null'),
(21, 1, 'Bình luận', '', '_self', 'voyager-person', '#000000', NULL, 11, '2018-11-07 23:55:37', '2018-12-03 16:19:46', 'voyager.comments.index', 'null'),
(22, 1, 'Liên hệ', '', '_self', 'voyager-file-text', '#000000', NULL, 10, '2018-11-08 00:11:02', '2018-12-03 16:19:46', 'voyager.contacts.index', 'null'),
(23, 1, 'Thanh toán', '', '_self', 'voyager-paypal', '#000000', 31, 1, '2018-11-08 00:13:55', '2018-12-01 08:56:40', 'voyager.payments.index', 'null'),
(24, 2, 'Khóa học', '/khoa-hoc', '_self', NULL, '#000000', NULL, 1, '2018-11-18 08:25:26', '2018-11-18 08:25:41', NULL, ''),
(26, 2, 'Tin tức', '/tin-tuc', '_self', NULL, '#000000', NULL, 19, '2018-11-18 08:38:41', '2018-11-18 08:38:41', NULL, ''),
(27, 2, 'Cảm nhận của học viên', 'cam-nhan-cua-hoc-vien', '_self', NULL, '#000000', NULL, 20, '2018-11-18 08:39:09', '2018-11-18 08:39:09', NULL, ''),
(28, 2, 'Hỗ trợ', 'ho-tro', '_self', NULL, '#000000', NULL, 21, '2018-11-18 08:39:34', '2018-11-18 08:39:34', NULL, ''),
(29, 1, 'Câu hỏi', '', '_self', 'voyager-question', '#000000', NULL, 8, '2018-11-21 09:29:05', '2018-12-03 16:19:45', NULL, ''),
(30, 1, 'Người dùng', '', '_self', 'voyager-person', '#000000', NULL, 2, '2018-11-21 09:29:39', '2018-11-21 09:35:01', NULL, ''),
(31, 1, 'Thanh toán', '', '_self', 'voyager-paypal', '#000000', NULL, 9, '2018-11-21 09:30:07', '2018-12-03 16:19:46', NULL, ''),
(32, 1, 'Banners', '', '_self', 'voyager-book', NULL, NULL, 12, '2018-11-21 09:42:40', '2018-12-03 16:19:46', 'voyager.banners.index', NULL),
(33, 1, 'Packages', '', '_self', 'voyager-folder', '#000000', 34, 2, '2018-11-23 06:52:00', '2018-12-01 08:56:51', 'voyager.packages.index', 'null'),
(34, 1, 'Quản lí khóa học', '', '_self', 'voyager-documentation', '#000000', NULL, 7, '2018-12-01 08:55:56', '2018-12-01 08:57:06', NULL, ''),
(35, 1, 'Orders', '', '_self', NULL, NULL, NULL, 15, '2018-12-01 09:29:03', '2018-12-03 16:19:46', 'voyager.orders.index', NULL),
(36, 1, 'Faqs', '', '_self', NULL, NULL, NULL, 22, '2018-12-04 04:51:29', '2018-12-04 04:51:29', 'voyager.faqs.index', NULL),
(37, 2, 'Liên hệ', '/lien-he', '_self', NULL, '#000000', NULL, 23, '2018-12-04 04:53:54', '2018-12-04 04:53:54', NULL, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2016_01_01_000000_create_pages_table', 2),
(24, '2016_01_01_000000_create_posts_table', 2),
(25, '2016_02_15_204651_create_categories_table', 2),
(26, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `package_id` int(10) UNSIGNED DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `fullname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `address_ship` text COLLATE utf8mb4_unicode_ci,
  `course_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `packages`
--

CREATE TABLE `packages` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `description` tinytext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `packages`
--

INSERT INTO `packages` (`id`, `code`, `name`, `title`, `price_sale`, `price`, `time`, `video_number`, `status`, `image`, `slug`, `test_number`, `created_at`, `updated_at`, `is_home`, `description`) VALUES
(1, 'CL45N', 'COMBO N4 + N5', NULL, 600000, 800000, 10, 149, 1, 'packages\\November2018\\ml1tbBmgHQTbvK0GFrBj.png', 'combo-n4-n5', 50, '2018-11-23 07:20:00', '2018-11-24 07:26:10', 1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(2, 1, 'Lộ trình', 'Lộ trình', '<p style=\"margin: 0px 0px 9.1875px; padding: 0px; outline: none; max-width: 100%; font-family: \'Times New Roman\'; font-size: 16px; color: #000000; line-height: 20px !important;\">B&aacute;o c&aacute;o tại hội nghị, &ocirc;ng Vũ Đức Bảo - Trưởng ban Tổ chức Th&agrave;nh ủy H&agrave; Nội cho biết, trước khi thực hiện Đề &aacute;n 06 (năm 2013), phạm vi l&atilde;nh đạo của chi bộ tr&ecirc;n địa b&agrave;n d&acirc;n cư chưa c&oacute; quy định thống nhất. Việc h&igrave;nh th&agrave;nh chi bộ ở nhiều nơi chỉ căn cứ v&agrave;o t&igrave;nh h&igrave;nh v&agrave; số lượng đảng vi&ecirc;n, kh&ocirc;ng đồng bộ với địa b&agrave;n th&ocirc;n, tổ d&acirc;n phố.</p>\r\n<p style=\"margin: 0px 0px 9.1875px; padding: 0px; outline: none; max-width: 100%; font-family: \'Times New Roman\'; font-size: 16px; color: #000000; line-height: 20px !important;\">&ldquo;T&igrave;nh h&igrave;nh tr&ecirc;n dẫn đến thực trạng nhiều chi bộ l&atilde;nh đạo một th&ocirc;n, tổ d&acirc;n phố. Điển h&igrave;nh l&agrave; th&ocirc;n Vật Lại (huyện Ba V&igrave;) c&oacute; tới 13 chi bộ l&atilde;nh đạo 1 th&ocirc;n&rdquo;, Trưởng ban Tổ chức Th&agrave;nh ủy H&agrave; Nội Vũ Đức Bảo n&oacute;i.</p>\r\n<p style=\"margin: 0px 0px 9.1875px; padding: 0px; outline: none; max-width: 100%; font-family: \'Times New Roman\'; font-size: 16px; color: #000000; line-height: 20px !important;\">&Ocirc;ng bảo cho hay, trước năm 2013, to&agrave;n TP c&oacute; 9.988 th&ocirc;n, tổ d&acirc;n phố (2.584 th&ocirc;n, 7.404 tổ d&acirc;n phố). Nhiều tổ d&acirc;n phố c&oacute; số hộ d&acirc;n thấp dưới 50 hộ, trong khi nhiều th&ocirc;n c&oacute; quy m&ocirc; tr&ecirc;n 1.000 hộ.</p>\r\n<div class=\"VCSortableInPreviewMode\" style=\"padding: 0px; outline: none; max-width: 100%; box-sizing: border-box; width: 460px; background-color: #eeeeee; font-size: 13px; font-family: tahoma; color: #000000; margin: 0px !important auto !important 9.1875px auto !important;\">\r\n<div style=\"margin: 0px auto; padding: 0px; outline: none; max-width: 100%;\"><img id=\"img_384915\" style=\"margin: 0px auto; padding: 0px; outline: none; display: inline; max-width: 100%; border: none; vertical-align: bottom; width: 460px;\" src=\"https://dantricdn.com/2018/11/30/bithuhanoi1-1543562470980805333946.jpg\" alt=\"&Ocirc;ng Ho&agrave;ng Trung Hải - B&iacute; thư Th&agrave;nh ủy H&agrave; Nội ph&aacute;t biểu tại hội nghị\" data-original=\"https://dantricdn.com/2018/11/30/bithuhanoi1-1543562470980805333946.jpg\" /></div>\r\n<div class=\"PhotoCMS_Caption\" style=\"margin: 0px auto; padding: 5px; outline: none; max-width: 100%; text-align: center;\">&Ocirc;ng Ho&agrave;ng Trung Hải - B&iacute; thư Th&agrave;nh ủy H&agrave; Nội ph&aacute;t biểu tại hội nghị</div>\r\n</div>\r\n<p style=\"margin: 0px 0px 9.1875px; padding: 0px; outline: none; max-width: 100%; font-family: \'Times New Roman\'; font-size: 16px; color: #000000; line-height: 20px !important;\">Sau 5 năm thực hiện Đề &aacute;n 06, to&agrave;n TP c&ograve;n 7.970 th&ocirc;n, tổ d&acirc;n phố - tương ứng 7.970 trưởng th&ocirc;n, tổ trưởng tổ d&acirc;n phố. Như vậy, so với trước khi thực hiện đề &aacute;n, đến nay TP H&agrave; Nội đ&atilde; giảm được 2.018 th&ocirc;n, tổ d&acirc;n phố, trong đ&oacute; giảm 34 th&ocirc;n v&agrave; 1.984 tổ d&acirc;n phố.</p>\r\n<p style=\"margin: 0px 0px 9.1875px; padding: 0px; outline: none; max-width: 100%; font-family: \'Times New Roman\'; font-size: 16px; color: #000000; line-height: 20px !important;\">Số th&ocirc;n giảm chủ yếu l&agrave; do chia t&aacute;ch huyện Từ Li&ecirc;m th&agrave;nh 2 quận Bắc Từ Li&ecirc;m v&agrave; Nam Từ Li&ecirc;m (c&aacute;c th&ocirc;n ở 2 quận n&agrave;y chuyển th&agrave;nh tổ d&acirc;n phố). C&ograve;n 1.984 tổ d&acirc;n phố giảm l&agrave; dựa tr&ecirc;n cơ sở sắp xếp lại hợp l&yacute; c&aacute;c tổ d&acirc;n phố quy m&ocirc; nhỏ.</p>\r\n<p style=\"margin: 0px 0px 9.1875px; padding: 0px; outline: none; max-width: 100%; font-family: \'Times New Roman\'; font-size: 16px; color: #000000; line-height: 20px !important;\">Về tổ chức đảng, trước khi thực hiện đề &aacute;n, Th&agrave;nh ủy c&oacute; 58 đảng bộ trực thuộc (29 đảng bộ quận, huyện, thị x&atilde; v&agrave; 29 đảng ủy trực thuộc Th&agrave;nh ủy) với 2.927 tổ chức cơ sở đảng, trong đ&oacute; c&oacute; 577 đảng bộ x&atilde;, phường, thị trấn.</p>\r\n<p style=\"margin: 0px 0px 9.1875px; padding: 0px; outline: none; max-width: 100%; font-family: \'Times New Roman\'; font-size: 16px; color: #000000; line-height: 20px !important;\">Theo &ocirc;ng Vũ Đức Bảo, hi&ecirc;n nay Th&agrave;nh ủy c&ograve;n 52 đảng bộ trực thuộc với 2.722 tổ chức cơ sở đảng, trong đ&oacute; c&oacute; 386 x&atilde;, 177 phường, 21 thị trấn.</p>\r\n<p style=\"margin: 0px 0px 9.1875px; padding: 0px; outline: none; max-width: 100%; font-family: \'Times New Roman\'; font-size: 16px; color: #000000; line-height: 20px !important;\"><strong style=\"margin: 0px; padding: 0px; outline: none; max-width: 100%;\">\"Ch&uacute;ng ta ng&agrave;y c&agrave;ng &ldquo;đẻ&rdquo; ra phụ cấp\"</strong></p>\r\n<p style=\"margin: 0px 0px 9.1875px; padding: 0px; outline: none; max-width: 100%; font-family: \'Times New Roman\'; font-size: 16px; color: #000000; line-height: 20px !important;\">Ph&aacute;t biểu tại hội nghị, &ocirc;ng Vũ Hồng Khanh - Chủ tịch Ủy ban MTTQ TP H&agrave; Nội ho&agrave;n to&agrave;n ủng hộ kế hoạch ki&ecirc;m nhiệm c&aacute;c chức danh ở địa b&agrave;n. &ldquo;Nếu như ki&ecirc;m nhiệm được l&agrave; điều rất tuyệt vời. V&igrave; n&oacute;i thật hiện nay ch&uacute;ng ta c&oacute; qu&aacute; nhiều chức danh, nhiều đến mức kh&ocirc;ng c&oacute; người để l&agrave;m&rdquo;, &ocirc;ng Khanh n&oacute;i.</p>\r\n<p style=\"margin: 0px 0px 9.1875px; padding: 0px; outline: none; max-width: 100%; font-family: \'Times New Roman\'; font-size: 16px; color: #000000; line-height: 20px !important;\">Theo &ocirc;ng Vũ Hồng Khanh, TP cũng cần phải l&agrave;m r&otilde; vấn đề thu nhập của c&aacute;c chức danh n&agrave;y. Quan điểm của &ocirc;ng Khanh l&agrave; vị tr&iacute; n&agrave;o được coi l&agrave; việc l&agrave;m th&igrave; dứt kho&aacute;t phải coi đ&oacute; l&agrave; thu nhập của người l&agrave;m việc. C&ograve;n vị tr&iacute; n&agrave;o l&agrave; tự nguyện, l&agrave; tự trang trải, l&agrave; tự quản&hellip; th&igrave; TP cũng cần phải t&iacute;nh to&aacute;n lại. Bởi nhiều người l&agrave;m kh&ocirc;ng phải v&igrave; mấy trăm ngh&igrave;n đồng.</p>', 'pages\\November2018\\bhrfwZ9afUDQQlYQCNkS.png', 'lo-trinh', 'Lộ trình', 'Lộ trình', 'ACTIVE', '2018-11-30 01:27:15', '2018-11-30 01:27:15'),
(3, 1, 'Cảm nhận của học viên', 'Cảm nhận của học viên', '<p>Cảm nhận của học vi&ecirc;n</p>', 'pages\\November2018\\p4AVdpeXdjfveUUBpvGk.png', 'cam-nhan-cua-hoc-vien', 'Cảm nhận của học viên', 'Cảm nhận của học viên', 'ACTIVE', '2018-11-30 01:28:08', '2018-11-30 01:28:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `price` float DEFAULT NULL,
  `price_sale` float DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `package_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `payments`
--

INSERT INTO `payments` (`id`, `user_id`, `course_id`, `price`, `price_sale`, `start_date`, `end_date`, `status`, `created_at`, `updated_at`, `package_id`) VALUES
(3, 1, 1, 900000, NULL, '2018-12-01 00:00:00', '2019-03-03 00:00:00', 1, '2018-12-01 08:49:00', '2018-12-02 08:06:15', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(2, 'browse_bread', NULL, '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(3, 'browse_database', NULL, '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(4, 'browse_media', NULL, '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(5, 'browse_compass', NULL, '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(6, 'browse_menus', 'menus', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(7, 'read_menus', 'menus', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(8, 'edit_menus', 'menus', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(9, 'add_menus', 'menus', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(10, 'delete_menus', 'menus', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(11, 'browse_roles', 'roles', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(12, 'read_roles', 'roles', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(13, 'edit_roles', 'roles', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(14, 'add_roles', 'roles', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(15, 'delete_roles', 'roles', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(16, 'browse_users', 'users', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(17, 'read_users', 'users', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(18, 'edit_users', 'users', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(19, 'add_users', 'users', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(20, 'delete_users', 'users', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(21, 'browse_settings', 'settings', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(22, 'read_settings', 'settings', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(23, 'edit_settings', 'settings', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(24, 'add_settings', 'settings', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(25, 'delete_settings', 'settings', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(26, 'browse_categories', 'categories', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(27, 'read_categories', 'categories', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(28, 'edit_categories', 'categories', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(29, 'add_categories', 'categories', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(30, 'delete_categories', 'categories', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(31, 'browse_posts', 'posts', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(32, 'read_posts', 'posts', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(33, 'edit_posts', 'posts', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(34, 'add_posts', 'posts', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(35, 'delete_posts', 'posts', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(36, 'browse_pages', 'pages', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(37, 'read_pages', 'pages', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(38, 'edit_pages', 'pages', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(39, 'add_pages', 'pages', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(40, 'delete_pages', 'pages', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(41, 'browse_hooks', NULL, '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(42, 'browse_courses', 'courses', '2018-10-31 21:48:42', '2018-10-31 21:48:42'),
(43, 'read_courses', 'courses', '2018-10-31 21:48:42', '2018-10-31 21:48:42'),
(44, 'edit_courses', 'courses', '2018-10-31 21:48:42', '2018-10-31 21:48:42'),
(45, 'add_courses', 'courses', '2018-10-31 21:48:42', '2018-10-31 21:48:42'),
(46, 'delete_courses', 'courses', '2018-10-31 21:48:42', '2018-10-31 21:48:42'),
(47, 'browse_lessons', 'lessons', '2018-11-01 00:48:50', '2018-11-01 00:48:50'),
(48, 'read_lessons', 'lessons', '2018-11-01 00:48:50', '2018-11-01 00:48:50'),
(49, 'edit_lessons', 'lessons', '2018-11-01 00:48:50', '2018-11-01 00:48:50'),
(50, 'add_lessons', 'lessons', '2018-11-01 00:48:50', '2018-11-01 00:48:50'),
(51, 'delete_lessons', 'lessons', '2018-11-01 00:48:50', '2018-11-01 00:48:50'),
(52, 'browse_tests', 'tests', '2018-11-06 02:30:45', '2018-11-06 02:30:45'),
(53, 'read_tests', 'tests', '2018-11-06 02:30:45', '2018-11-06 02:30:45'),
(54, 'edit_tests', 'tests', '2018-11-06 02:30:45', '2018-11-06 02:30:45'),
(55, 'add_tests', 'tests', '2018-11-06 02:30:45', '2018-11-06 02:30:45'),
(56, 'delete_tests', 'tests', '2018-11-06 02:30:45', '2018-11-06 02:30:45'),
(57, 'browse_questions', 'questions', '2018-11-06 02:48:32', '2018-11-06 02:48:32'),
(58, 'read_questions', 'questions', '2018-11-06 02:48:32', '2018-11-06 02:48:32'),
(59, 'edit_questions', 'questions', '2018-11-06 02:48:32', '2018-11-06 02:48:32'),
(60, 'add_questions', 'questions', '2018-11-06 02:48:32', '2018-11-06 02:48:32'),
(61, 'delete_questions', 'questions', '2018-11-06 02:48:32', '2018-11-06 02:48:32'),
(62, 'browse_answers', 'answers', '2018-11-06 03:18:06', '2018-11-06 03:18:06'),
(63, 'read_answers', 'answers', '2018-11-06 03:18:06', '2018-11-06 03:18:06'),
(64, 'edit_answers', 'answers', '2018-11-06 03:18:06', '2018-11-06 03:18:06'),
(65, 'add_answers', 'answers', '2018-11-06 03:18:06', '2018-11-06 03:18:06'),
(66, 'delete_answers', 'answers', '2018-11-06 03:18:06', '2018-11-06 03:18:06'),
(67, 'browse_comments', 'comments', '2018-11-07 23:55:37', '2018-11-07 23:55:37'),
(68, 'read_comments', 'comments', '2018-11-07 23:55:37', '2018-11-07 23:55:37'),
(69, 'edit_comments', 'comments', '2018-11-07 23:55:37', '2018-11-07 23:55:37'),
(70, 'add_comments', 'comments', '2018-11-07 23:55:37', '2018-11-07 23:55:37'),
(71, 'delete_comments', 'comments', '2018-11-07 23:55:37', '2018-11-07 23:55:37'),
(72, 'browse_contacts', 'contacts', '2018-11-08 00:11:02', '2018-11-08 00:11:02'),
(73, 'read_contacts', 'contacts', '2018-11-08 00:11:02', '2018-11-08 00:11:02'),
(74, 'edit_contacts', 'contacts', '2018-11-08 00:11:02', '2018-11-08 00:11:02'),
(75, 'add_contacts', 'contacts', '2018-11-08 00:11:02', '2018-11-08 00:11:02'),
(76, 'delete_contacts', 'contacts', '2018-11-08 00:11:02', '2018-11-08 00:11:02'),
(77, 'browse_payments', 'payments', '2018-11-08 00:13:55', '2018-11-08 00:13:55'),
(78, 'read_payments', 'payments', '2018-11-08 00:13:55', '2018-11-08 00:13:55'),
(79, 'edit_payments', 'payments', '2018-11-08 00:13:55', '2018-11-08 00:13:55'),
(80, 'add_payments', 'payments', '2018-11-08 00:13:55', '2018-11-08 00:13:55'),
(81, 'delete_payments', 'payments', '2018-11-08 00:13:55', '2018-11-08 00:13:55'),
(82, 'browse_banners', 'banners', '2018-11-21 09:42:40', '2018-11-21 09:42:40'),
(83, 'read_banners', 'banners', '2018-11-21 09:42:40', '2018-11-21 09:42:40'),
(84, 'edit_banners', 'banners', '2018-11-21 09:42:40', '2018-11-21 09:42:40'),
(85, 'add_banners', 'banners', '2018-11-21 09:42:40', '2018-11-21 09:42:40'),
(86, 'delete_banners', 'banners', '2018-11-21 09:42:40', '2018-11-21 09:42:40'),
(87, 'browse_packages', 'packages', '2018-11-23 06:52:00', '2018-11-23 06:52:00'),
(88, 'read_packages', 'packages', '2018-11-23 06:52:00', '2018-11-23 06:52:00'),
(89, 'edit_packages', 'packages', '2018-11-23 06:52:00', '2018-11-23 06:52:00'),
(90, 'add_packages', 'packages', '2018-11-23 06:52:00', '2018-11-23 06:52:00'),
(91, 'delete_packages', 'packages', '2018-11-23 06:52:00', '2018-11-23 06:52:00'),
(92, 'browse_orders', 'orders', '2018-12-01 09:29:03', '2018-12-01 09:29:03'),
(93, 'read_orders', 'orders', '2018-12-01 09:29:03', '2018-12-01 09:29:03'),
(94, 'edit_orders', 'orders', '2018-12-01 09:29:03', '2018-12-01 09:29:03'),
(95, 'add_orders', 'orders', '2018-12-01 09:29:03', '2018-12-01 09:29:03'),
(96, 'delete_orders', 'orders', '2018-12-01 09:29:03', '2018-12-01 09:29:03'),
(97, 'browse_faqs', 'faqs', '2018-12-04 04:51:29', '2018-12-04 04:51:29'),
(98, 'read_faqs', 'faqs', '2018-12-04 04:51:29', '2018-12-04 04:51:29'),
(99, 'edit_faqs', 'faqs', '2018-12-04 04:51:29', '2018-12-04 04:51:29'),
(100, 'add_faqs', 'faqs', '2018-12-04 04:51:29', '2018-12-04 04:51:29'),
(101, 'delete_faqs', 'faqs', '2018-12-04 04:51:29', '2018-12-04 04:51:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/October2018/ab1eYi1CRGACVAPSvVsc.png', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-10-25 01:39:37', '2018-10-25 02:00:36'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(3, 1, 1, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-10-25 01:39:37', '2018-12-03 07:42:25'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-10-25 01:39:37', '2018-10-25 01:39:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `test_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `audio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explain` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `questions`
--

INSERT INTO `questions` (`id`, `test_id`, `status`, `created_at`, `updated_at`, `name`, `type`, `code`, `audio`, `explain`) VALUES
(1, 1, 1, '2018-11-06 03:10:00', '2018-12-04 07:26:39', 'cau hoi 2', 'd', 'c2', NULL, 'df'),
(3, 1, 1, '2018-12-04 07:22:39', '2018-12-04 07:22:39', 'dfs sdf', 'd', 'df', NULL, 'df'),
(4, 2, 1, '2018-12-04 07:33:00', '2018-12-05 10:07:13', 'Câu hỏi thường gặp', 'd', 'df', '[{\"download_link\":\"questions\\\\December2018\\\\hfiCgORzP3vuXwKZUNjr.mp3\",\"original_name\":\"Minna_Bai1_ck1_rei.mp3\"}]', '<p>Câu hỏi thường gặp</p>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(2, 'user', 'Người học', '2018-10-25 01:39:37', '2018-11-01 00:42:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\November2018\\09BdGPxJ0MBY44gTRIEe.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Admin', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings/November2018/WRJhTKXfw5QdYXM4Hfdh.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.hotline', 'Hotline', '0982 735 392', NULL, 'text', 6, 'Site'),
(12, 'site.open_time', 'Giờ mở cửa', '8h - 22h hàng ngày', NULL, 'text', 7, 'Site'),
(13, 'gioi-thieu.title', 'Tiêu đề', 'HỌC TIẾNG NHẬT ONLINE', NULL, 'text', 8, 'Giới thiệu'),
(14, 'gioi-thieu.name', 'Name', 'GIỚI THIỆU', NULL, 'text', 9, 'Giới thiệu'),
(15, 'gioi-thieu.description', 'Mô tả', 'Lorem ipsum dollor site amet the best consectuer adipiscing elites sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat insignia the consectuer adipiscing elit.', NULL, 'text_area', 10, 'Giới thiệu'),
(16, 'gioi-thieu.button', 'Nút', 'LỘ TRÌNH HỌC', NULL, 'text', 11, 'Giới thiệu'),
(18, 'gioi-thieu.href', 'Link', '/lo-trinh', NULL, 'text', 12, 'Giới thiệu'),
(19, 'gioi-thieu.youtube', 'Youtube', 'https://www.youtube.com/watch?v=yU6BSPNnuWA', NULL, 'text', 13, 'Giới thiệu'),
(20, 'gioi-thieu.background_color', 'Màu nền', 'ffd800', NULL, 'text', 14, 'Giới thiệu'),
(21, 'gioi-thieu.background_img', 'Ảnh nền', 'settings\\November2018\\tu5t5CZ9QqE95TNFs6pN.png', NULL, 'image', 15, 'Giới thiệu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tests`
--

CREATE TABLE `tests` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `audio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tests`
--

INSERT INTO `tests` (`id`, `name`, `status`, `created_at`, `updated_at`, `slug`, `audio`, `content`) VALUES
(1, 'n5', 1, '2018-11-06 03:02:00', '2018-12-05 09:57:14', 'n5', '[{\"download_link\":\"tests\\\\December2018\\\\gWFXjAIo1ZZAj1OtS9O3.mp3\",\"original_name\":\"Minna_Bai1_ck1_rei.mp3\"}]', 'Nghe file v&agrave; trả lời c&acirc;u hỏi'),
(2, 'test', 1, '2018-12-03 16:27:37', '2018-12-03 16:27:37', 'test', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2018-10-25 01:39:37', '2018-10-25 01:39:37'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2018-10-25 01:39:37', '2018-10-25 01:39:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
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
  `facebook_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`, `google_id`, `avatar_original`, `facebook_id`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$bGfkxA0t4eoIDw496vdQ9OC25qf1VsgURbhheSLFlZS1xq1v16HpK', 'sweipB40IG7kHNyNP3pF8oOss3KG97fgei0sszLdl07jY1Iqm5cqZ5Pgxuxg', NULL, '2018-10-25 01:39:37', '2018-10-25 01:39:37', '0', NULL, NULL),
(4, 2, 'huunv', 'nguyenhuu140490@gmail.com', 'users/default.png', NULL, '$2y$10$oIFryIq/JTMnYyLIJlN8T.pcEcSPgbdosq7SS7coyhQqukXNLbm.W', 'MMXnRkuEDFV89mrpAlBiZpLXi0FsTCSe8DyBizbIBxotUgdluNgDwOefnkdR', NULL, '2018-11-18 01:42:31', '2018-11-18 01:42:31', '0', NULL, NULL),
(5, 2, 'ha vu', 'ha.vuvu25@gmail.com', 'https://lh6.googleusercontent.com/-lAV_ty5-WkI/AAAAAAAAAAI/AAAAAAAAABY/vyjQj6ShrFs/photo.jpg?sz=50', NULL, NULL, 'Bh3QmuUROktGmKm35voTefiCNyRtMEmnJhHL1Rktss8bSbxFUpdNJUBUHkc7', NULL, '2018-11-18 07:13:47', '2018-11-18 07:13:47', '107198651449671391412', 'https://lh6.googleusercontent.com/-lAV_ty5-WkI/AAAAAAAAAAI/AAAAAAAAABY/vyjQj6ShrFs/photo.jpg', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `course_lesson`
--
ALTER TABLE `course_lesson`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `course_package`
--
ALTER TABLE `course_package`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Chỉ mục cho bảng `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lesson_test`
--
ALTER TABLE `lesson_test`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Chỉ mục cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Chỉ mục cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Chỉ mục cho bảng `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `course_lesson`
--
ALTER TABLE `course_lesson`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `course_package`
--
ALTER TABLE `course_package`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT cho bảng `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `lesson_test`
--
ALTER TABLE `lesson_test`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Các ràng buộc cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
