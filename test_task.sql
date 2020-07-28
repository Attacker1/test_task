-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 28, 2020 at 10:35 PM
-- Server version: 8.0.21
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_task`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `comment_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint UNSIGNED NOT NULL,
  `comment_post_ID` bigint UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-07-20 21:16:35', '2020-07-20 18:16:35', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE `wp_links` (
  `link_id` bigint UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE `wp_options` (
  `option_id` bigint UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(3, 'siteurl', 'http://php.test/wp', 'yes'),
(4, 'home', 'http://php.test/wp', 'yes'),
(5, 'blogname', 'Рестораны Казани', 'yes'),
(6, 'blogdescription', 'Лучшие рестораны по всему городу', 'yes'),
(7, 'users_can_register', '0', 'yes'),
(8, 'admin_email', 'kamvalgen@mail.ru', 'yes'),
(9, 'start_of_week', '1', 'yes'),
(10, 'use_balanceTags', '0', 'yes'),
(11, 'use_smilies', '1', 'yes'),
(12, 'require_name_email', '1', 'yes'),
(13, 'comments_notify', '1', 'yes'),
(14, 'posts_per_rss', '10', 'yes'),
(15, 'rss_use_excerpt', '0', 'yes'),
(16, 'mailserver_url', 'mail.example.com', 'yes'),
(17, 'mailserver_login', 'login@example.com', 'yes'),
(18, 'mailserver_pass', 'password', 'yes'),
(19, 'mailserver_port', '110', 'yes'),
(20, 'default_category', '1', 'yes'),
(21, 'default_comment_status', 'open', 'yes'),
(22, 'default_ping_status', 'open', 'yes'),
(23, 'default_pingback_flag', '0', 'yes'),
(24, 'posts_per_page', '10', 'yes'),
(25, 'date_format', 'd.m.Y', 'yes'),
(26, 'time_format', 'H:i', 'yes'),
(27, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(28, 'comment_moderation', '0', 'yes'),
(29, 'moderation_notify', '1', 'yes'),
(30, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(31, 'rewrite_rules', 'a:114:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:38:\"restaurant/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"restaurant/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"restaurant/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"restaurant/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"restaurant/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"restaurant/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"restaurant/([^/]+)/embed/?$\";s:43:\"index.php?restaurant=$matches[1]&embed=true\";s:31:\"restaurant/([^/]+)/trackback/?$\";s:37:\"index.php?restaurant=$matches[1]&tb=1\";s:39:\"restaurant/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?restaurant=$matches[1]&paged=$matches[2]\";s:46:\"restaurant/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?restaurant=$matches[1]&cpage=$matches[2]\";s:35:\"restaurant/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?restaurant=$matches[1]&page=$matches[2]\";s:27:\"restaurant/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"restaurant/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"restaurant/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"restaurant/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"restaurant/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"restaurant/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\"kitchen/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?kitchen=$matches[1]&feed=$matches[2]\";s:43:\"kitchen/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?kitchen=$matches[1]&feed=$matches[2]\";s:24:\"kitchen/([^/]+)/embed/?$\";s:40:\"index.php?kitchen=$matches[1]&embed=true\";s:36:\"kitchen/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?kitchen=$matches[1]&paged=$matches[2]\";s:18:\"kitchen/([^/]+)/?$\";s:29:\"index.php?kitchen=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(32, 'hack_file', '0', 'yes'),
(33, 'blog_charset', 'UTF-8', 'yes'),
(34, 'moderation_keys', '', 'no'),
(35, 'active_plugins', 'a:0:{}', 'yes'),
(36, 'category_base', '', 'yes'),
(37, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(38, 'comment_max_links', '2', 'yes'),
(39, 'gmt_offset', '3', 'yes'),
(40, 'default_email_category', '1', 'yes'),
(41, 'recently_edited', '', 'no'),
(42, 'template', 'sage/resources', 'yes'),
(43, 'stylesheet', 'sage/resources', 'yes'),
(44, 'comment_whitelist', '1', 'yes'),
(45, 'blacklist_keys', '', 'no'),
(46, 'comment_registration', '0', 'yes'),
(47, 'html_type', 'text/html', 'yes'),
(48, 'use_trackback', '0', 'yes'),
(49, 'default_role', 'subscriber', 'yes'),
(50, 'db_version', '47018', 'yes'),
(51, 'uploads_use_yearmonth_folders', '1', 'yes'),
(52, 'upload_path', '', 'yes'),
(53, 'blog_public', '1', 'yes'),
(54, 'default_link_category', '2', 'yes'),
(55, 'show_on_front', 'page', 'yes'),
(56, 'tag_base', '', 'yes'),
(57, 'show_avatars', '1', 'yes'),
(58, 'avatar_rating', 'G', 'yes'),
(59, 'upload_url_path', '', 'yes'),
(60, 'thumbnail_size_w', '150', 'yes'),
(61, 'thumbnail_size_h', '150', 'yes'),
(62, 'thumbnail_crop', '1', 'yes'),
(63, 'medium_size_w', '300', 'yes'),
(64, 'medium_size_h', '300', 'yes'),
(65, 'avatar_default', 'mystery', 'yes'),
(66, 'large_size_w', '1024', 'yes'),
(67, 'large_size_h', '1024', 'yes'),
(68, 'image_default_link_type', 'none', 'yes'),
(69, 'image_default_size', '', 'yes'),
(70, 'image_default_align', '', 'yes'),
(71, 'close_comments_for_old_posts', '0', 'yes'),
(72, 'close_comments_days_old', '14', 'yes'),
(73, 'thread_comments', '1', 'yes'),
(74, 'thread_comments_depth', '5', 'yes'),
(75, 'page_comments', '0', 'yes'),
(76, 'comments_per_page', '50', 'yes'),
(77, 'default_comments_page', 'newest', 'yes'),
(78, 'comment_order', 'asc', 'yes'),
(79, 'sticky_posts', 'a:0:{}', 'yes'),
(80, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(82, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(83, 'uninstall_plugins', 'a:0:{}', 'no'),
(84, 'timezone_string', '', 'yes'),
(85, 'page_for_posts', '0', 'yes'),
(86, 'page_on_front', '2', 'yes'),
(87, 'default_post_format', '0', 'yes'),
(88, 'link_manager_enabled', '0', 'yes'),
(89, 'finished_splitting_shared_terms', '1', 'yes'),
(90, 'site_icon', '0', 'yes'),
(91, 'medium_large_size_w', '768', 'yes'),
(92, 'medium_large_size_h', '0', 'yes'),
(93, 'wp_page_for_privacy_policy', '3', 'yes'),
(94, 'show_comments_cookies_opt_in', '1', 'yes'),
(95, 'admin_email_lifespan', '1610820992', 'yes'),
(96, 'initial_db_version', '47018', 'yes'),
(97, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(98, 'fresh_site', '0', 'yes'),
(99, 'WPLANG', 'ru_RU', 'yes'),
(100, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:15:\"sidebar-primary\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:14:\"sidebar-footer\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'bedrock_autoloader', 'a:2:{s:7:\"plugins\";a:0:{}s:5:\"count\";i:0;}', 'no'),
(107, 'cron', 'a:7:{i:1595978197;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1596003397;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1596046596;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1596046619;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1596046621;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1596564996;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'theme_mods_twentytwenty', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1595427586;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(130, 'can_compress_scripts', '1', 'no'),
(141, 'template_root', '/themes', 'yes'),
(142, 'stylesheet_root', '/themes', 'yes'),
(143, 'current_theme', 'Sage Starter Theme', 'yes'),
(144, 'theme_mods_sage', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:5;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1595421555;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:15:\"sidebar-primary\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:14:\"sidebar-footer\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(145, 'theme_switched', '', 'yes'),
(156, '_transient_health-check-site-status-result', '{\"good\":9,\"recommended\":6,\"critical\":2}', 'yes'),
(172, 'recently_activated', 'a:2:{s:41:\"wp-database-backup/wp-database-backup.php\";i:1595874906;s:30:\"advanced-custom-fields/acf.php\";i:1595874903;}', 'yes'),
(179, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.4.2.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.4.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.2\";s:7:\"version\";s:5:\"5.4.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.4.2-partial-1.zip\";s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.2\";s:7:\"version\";s:5:\"5.4.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:5:\"5.4.1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.4.2-partial-1.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.2-rollback-1.zip\";}s:7:\"current\";s:5:\"5.4.2\";s:7:\"version\";s:5:\"5.4.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:5:\"5.4.1\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1595960315;s:15:\"version_checked\";s:5:\"5.4.1\";s:12:\"translations\";a:0:{}}', 'no'),
(183, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1595960316;s:7:\"checked\";a:11:{s:14:\"sage/resources\";s:5:\"9.0.9\";s:12:\"twentyeleven\";s:3:\"3.4\";s:13:\"twentyfifteen\";s:3:\"2.6\";s:14:\"twentyfourteen\";s:3:\"2.8\";s:14:\"twentynineteen\";s:3:\"1.5\";s:15:\"twentyseventeen\";s:3:\"2.3\";s:13:\"twentysixteen\";s:3:\"2.1\";s:9:\"twentyten\";s:3:\"3.0\";s:14:\"twentythirteen\";s:3:\"3.0\";s:12:\"twentytwelve\";s:3:\"3.1\";s:12:\"twentytwenty\";s:3:\"1.2\";}s:8:\"response\";a:2:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.6.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:10:{i:0;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:12:\"twentyeleven\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"3.4\";s:7:\"updated\";s:19:\"2020-03-31 20:43:03\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/theme/twentyeleven/3.4/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:13:\"twentyfifteen\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"2.6\";s:7:\"updated\";s:19:\"2020-03-31 20:40:58\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/translation/theme/twentyfifteen/2.6/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentyfourteen\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"2.8\";s:7:\"updated\";s:19:\"2020-03-31 20:44:14\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/theme/twentyfourteen/2.8/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:3;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentynineteen\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2020-03-31 20:45:48\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/theme/twentynineteen/1.5/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:4;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"2.3\";s:7:\"updated\";s:19:\"2020-03-31 20:44:55\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/2.3/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:5;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:13:\"twentysixteen\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"2.1\";s:7:\"updated\";s:19:\"2019-07-18 22:07:45\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/translation/theme/twentysixteen/2.1/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:6;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:9:\"twentyten\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"3.0\";s:7:\"updated\";s:19:\"2020-03-31 20:42:24\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/theme/twentyten/3.0/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:7;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentythirteen\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"3.0\";s:7:\"updated\";s:19:\"2020-03-31 20:43:36\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/theme/twentythirteen/3.0/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:8;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:12:\"twentytwelve\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"3.1\";s:7:\"updated\";s:19:\"2020-03-31 20:43:21\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/theme/twentytwelve/3.1/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:9;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:12:\"twentytwenty\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"1.2\";s:7:\"updated\";s:19:\"2020-03-31 20:46:17\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/theme/twentytwenty/1.2/ru_RU.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(184, 'acf_version', '5.8.12', 'yes'),
(197, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1595960315;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.8.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"wp-database-backup/wp-database-backup.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/wp-database-backup\";s:4:\"slug\";s:18:\"wp-database-backup\";s:6:\"plugin\";s:41:\"wp-database-backup/wp-database-backup.php\";s:11:\"new_version\";s:5:\"5.5.1\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wp-database-backup/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-database-backup.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/wp-database-backup/assets/icon-128x128.png?rev=1456861\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/wp-database-backup/assets/banner-1544x500.png?rev=1456043\";s:2:\"1x\";s:73:\"https://ps.w.org/wp-database-backup/assets/banner-772x250.png?rev=1456043\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(198, 'wp_db_backup_destination_FTP', '1', 'yes'),
(199, 'wp_db_backup_destination_Email', '1', 'yes'),
(200, 'wp_db_backup_destination_s3', '1', 'yes'),
(201, 'wp_db_remove_local_backup', '0', 'yes'),
(202, 'wp_db_backup_backups', 'a:1:{i:0;a:8:{s:4:\"date\";i:1595416838;s:8:\"filename\";s:76:\"______________________________________2020_07_22_1595416838_b7edc19_wpdb.zip\";s:3:\"url\";s:114:\"http://php.test/app/uploads/db-backup/______________________________________2020_07_22_1595416838_b7edc19_wpdb.zip\";s:3:\"dir\";s:145:\"C:\\Server\\data\\htdocs\\virthosts\\host1\\site/web/app/uploads/db-backup/______________________________________2020_07_22_1595416838_b7edc19_wpdb.zip\";s:3:\"log\";s:0:\"\";s:7:\"sqlfile\";s:145:\"C:\\Server\\data\\htdocs\\virthosts\\host1\\site/web/app/uploads/db-backup/______________________________________2020_07_22_1595416838_b7edc19_wpdb.sql\";s:4:\"size\";i:124967;s:11:\"destination\";s:7:\"Local, \";}}', 'yes'),
(203, 'wp_db_backup_options', '', 'yes'),
(227, 'theme_mods_sage/resources', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:5;}', 'yes'),
(267, 'new_admin_email', 'kamvalgen@mail.ru', 'yes'),
(274, '_site_transient_timeout_browser_3f8a4b0ecc7f96ed3b12a5afb6fb270d', '1596108972', 'no'),
(275, '_site_transient_browser_3f8a4b0ecc7f96ed3b12a5afb6fb270d', 'a:10:{s:4:\"name\";s:7:\"unknown\";s:7:\"version\";s:0:\"\";s:8:\"platform\";s:0:\"\";s:10:\"update_url\";s:0:\"\";s:7:\"img_src\";s:0:\"\";s:11:\"img_src_ssl\";s:0:\"\";s:15:\"current_version\";s:0:\"\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(360, 'category_children', 'a:0:{}', 'yes'),
(400, '_site_transient_timeout_theme_roots', '1595962111', 'no'),
(401, '_site_transient_theme_roots', 'a:11:{s:14:\"sage/resources\";s:7:\"/themes\";s:12:\"twentyeleven\";s:67:\"C:\\Server\\data\\htdocs\\virthosts\\host1\\site\\web\\wp/wp-content/themes\";s:13:\"twentyfifteen\";s:67:\"C:\\Server\\data\\htdocs\\virthosts\\host1\\site\\web\\wp/wp-content/themes\";s:14:\"twentyfourteen\";s:67:\"C:\\Server\\data\\htdocs\\virthosts\\host1\\site\\web\\wp/wp-content/themes\";s:14:\"twentynineteen\";s:67:\"C:\\Server\\data\\htdocs\\virthosts\\host1\\site\\web\\wp/wp-content/themes\";s:15:\"twentyseventeen\";s:67:\"C:\\Server\\data\\htdocs\\virthosts\\host1\\site\\web\\wp/wp-content/themes\";s:13:\"twentysixteen\";s:67:\"C:\\Server\\data\\htdocs\\virthosts\\host1\\site\\web\\wp/wp-content/themes\";s:9:\"twentyten\";s:67:\"C:\\Server\\data\\htdocs\\virthosts\\host1\\site\\web\\wp/wp-content/themes\";s:14:\"twentythirteen\";s:67:\"C:\\Server\\data\\htdocs\\virthosts\\host1\\site\\web\\wp/wp-content/themes\";s:12:\"twentytwelve\";s:67:\"C:\\Server\\data\\htdocs\\virthosts\\host1\\site\\web\\wp/wp-content/themes\";s:12:\"twentytwenty\";s:67:\"C:\\Server\\data\\htdocs\\virthosts\\host1\\site\\web\\wp/wp-content/themes\";}', 'no'),
(402, '_site_transient_timeout_php_check_3dbf48b9658abaee82651209c2ca7be3', '1596565112', 'no'),
(403, '_site_transient_php_check_3dbf48b9658abaee82651209c2ca7be3', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'views/template-custom.blade.php'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', '2020/07/logo.png'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:468;s:6:\"height\";i:65;s:4:\"file\";s:16:\"2020/07/logo.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"logo-300x42.png\";s:5:\"width\";i:300;s:6:\"height\";i:42;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-150x65.png\";s:5:\"width\";i:150;s:6:\"height\";i:65;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 5, '_wp_attachment_image_alt', ''),
(6, 6, '_wp_trash_meta_status', 'publish'),
(7, 6, '_wp_trash_meta_time', '1595361188'),
(8, 7, '_wp_trash_meta_status', 'publish'),
(9, 7, '_wp_trash_meta_time', '1595362420'),
(10, 8, '_edit_last', '1'),
(11, 8, '_edit_lock', '1595375629:1'),
(12, 3, '_edit_lock', '1595460999:1'),
(13, 2, '_edit_lock', '1595974604:1'),
(14, 2, '_edit_last', '1'),
(15, 2, 'address', 'г. Казань, ул. Серова, 48'),
(16, 2, '_address', 'field_5f1775fcb5b4d'),
(17, 11, 'address', 'г. Казань, ул. Серова, 48'),
(18, 11, '_address', 'field_5f1775fcb5b4d'),
(19, 2, 'download_price', 'Скачать прайс'),
(20, 2, '_download_price', 'field_5f17801ecddf5'),
(21, 13, 'address', 'г. Казань, ул. Серова, 48'),
(22, 13, '_address', 'field_5f1775fcb5b4d'),
(23, 13, 'download_price', 'Скачать прайс'),
(24, 13, '_download_price', 'field_5f17801ecddf5'),
(25, 14, '_edit_last', '1'),
(26, 14, '_edit_lock', '1595461057:1'),
(27, 2, 'main', 'Главная'),
(28, 2, '_main', 'field_5f1780d5aff66'),
(29, 2, 'prices', 'Цены'),
(30, 2, '_prices', 'field_5f1780e4645b9'),
(31, 2, 'about', 'О клинике'),
(32, 2, '_about', 'field_5f178103fe8a9'),
(33, 2, 'shares', 'Акции'),
(34, 2, '_shares', 'field_5f17813ee4175'),
(35, 2, 'blog', 'Блог'),
(36, 2, '_blog', 'field_5f1781523abb7'),
(37, 2, 'questions_for_doctor', 'Вопросы врачу'),
(38, 2, '_questions_for_doctor', 'field_5f1781628212a'),
(39, 2, 'contacts', 'Контакты'),
(40, 2, '_contacts', 'field_5f17817a9cd88'),
(41, 2, 'phone', '+7 929 725 61 14'),
(42, 2, '_phone', 'field_5f17819549b1d'),
(43, 23, 'address', 'г. Казань, ул. Серова, 48'),
(44, 23, '_address', 'field_5f1775fcb5b4d'),
(45, 23, 'download_price', 'Скачать прайс'),
(46, 23, '_download_price', 'field_5f17801ecddf5'),
(47, 23, 'main', 'Главная'),
(48, 23, '_main', 'field_5f1780d5aff66'),
(49, 23, 'prices', 'Цены'),
(50, 23, '_prices', 'field_5f1780e4645b9'),
(51, 23, 'about', 'О клинике'),
(52, 23, '_about', 'field_5f178103fe8a9'),
(53, 23, 'shares', 'Акции'),
(54, 23, '_shares', 'field_5f17813ee4175'),
(55, 23, 'blog', 'Блог'),
(56, 23, '_blog', 'field_5f1781523abb7'),
(57, 23, 'questions_for_doctor', 'Вопросы врачу'),
(58, 23, '_questions_for_doctor', 'field_5f1781628212a'),
(59, 23, 'contacts', 'Контакты'),
(60, 23, '_contacts', 'field_5f17817a9cd88'),
(61, 23, 'phone', '+7 929 725 61 14'),
(62, 23, '_phone', 'field_5f17819549b1d'),
(63, 24, '_edit_last', '1'),
(64, 24, '_edit_lock', '1595851699:1'),
(65, 2, 'form_title', 'Записаться на прием к стоматологу в Казани'),
(66, 2, '_form_title', 'field_5f1782a7c1a51'),
(67, 26, 'address', 'г. Казань, ул. Серова, 48'),
(68, 26, '_address', 'field_5f1775fcb5b4d'),
(69, 26, 'download_price', 'Скачать прайс'),
(70, 26, '_download_price', 'field_5f17801ecddf5'),
(71, 26, 'main', 'Главная'),
(72, 26, '_main', 'field_5f1780d5aff66'),
(73, 26, 'prices', 'Цены'),
(74, 26, '_prices', 'field_5f1780e4645b9'),
(75, 26, 'about', 'О клинике'),
(76, 26, '_about', 'field_5f178103fe8a9'),
(77, 26, 'shares', 'Акции'),
(78, 26, '_shares', 'field_5f17813ee4175'),
(79, 26, 'blog', 'Блог'),
(80, 26, '_blog', 'field_5f1781523abb7'),
(81, 26, 'questions_for_doctor', 'Вопросы врачу'),
(82, 26, '_questions_for_doctor', 'field_5f1781628212a'),
(83, 26, 'contacts', 'Контакты'),
(84, 26, '_contacts', 'field_5f17817a9cd88'),
(85, 26, 'phone', '+7 929 725 61 14'),
(86, 26, '_phone', 'field_5f17819549b1d'),
(87, 26, 'form_title', 'Записаться на прием к стоматологу в Казани'),
(88, 26, '_form_title', 'field_5f1782a7c1a51'),
(89, 1, '_edit_lock', '1595429470:1'),
(91, 28, '_wp_trash_meta_status', 'publish'),
(92, 28, '_wp_trash_meta_time', '1595429348'),
(93, 1, '_wp_trash_meta_status', 'publish'),
(94, 1, '_wp_trash_meta_time', '1595429626'),
(95, 1, '_wp_desired_post_slug', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80'),
(96, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(97, 29, '_menu_item_type', 'custom'),
(98, 29, '_menu_item_menu_item_parent', '0'),
(99, 29, '_menu_item_object_id', '29'),
(100, 29, '_menu_item_object', 'custom'),
(101, 29, '_menu_item_target', ''),
(102, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(103, 29, '_menu_item_xfn', ''),
(104, 29, '_menu_item_url', 'http://php.test/'),
(105, 29, '_menu_item_orphaned', '1595461081'),
(106, 30, '_menu_item_type', 'post_type'),
(107, 30, '_menu_item_menu_item_parent', '0'),
(108, 30, '_menu_item_object_id', '2'),
(109, 30, '_menu_item_object', 'page'),
(110, 30, '_menu_item_target', ''),
(111, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(112, 30, '_menu_item_xfn', ''),
(113, 30, '_menu_item_url', ''),
(114, 30, '_menu_item_orphaned', '1595461081'),
(115, 31, '_menu_item_type', 'custom'),
(116, 31, '_menu_item_menu_item_parent', '0'),
(117, 31, '_menu_item_object_id', '31'),
(118, 31, '_menu_item_object', 'custom'),
(119, 31, '_menu_item_target', ''),
(120, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(121, 31, '_menu_item_xfn', ''),
(122, 31, '_menu_item_url', 'http://php.test/'),
(123, 31, '_menu_item_orphaned', '1595461115'),
(124, 32, '_menu_item_type', 'post_type'),
(125, 32, '_menu_item_menu_item_parent', '0'),
(126, 32, '_menu_item_object_id', '2'),
(127, 32, '_menu_item_object', 'page'),
(128, 32, '_menu_item_target', ''),
(129, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(130, 32, '_menu_item_xfn', ''),
(131, 32, '_menu_item_url', ''),
(132, 32, '_menu_item_orphaned', '1595461115'),
(133, 33, '_wp_attached_file', '2020/07/logo.png'),
(134, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:468;s:6:\"height\";i:65;s:4:\"file\";s:16:\"2020/07/logo.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"logo-300x42.png\";s:5:\"width\";i:300;s:6:\"height\";i:42;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-150x65.png\";s:5:\"width\";i:150;s:6:\"height\";i:65;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(135, 33, '_wp_attachment_image_alt', 'logo'),
(136, 34, '_wp_trash_meta_status', 'publish'),
(137, 34, '_wp_trash_meta_time', '1595498001'),
(139, 35, '_customize_restore_dismissed', '1'),
(140, 36, '_wp_trash_meta_status', 'publish'),
(141, 36, '_wp_trash_meta_time', '1595594648'),
(143, 37, '_customize_restore_dismissed', '1'),
(144, 38, '_wp_attached_file', '2020/07/logo-1.png'),
(145, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:153;s:6:\"height\";i:20;s:4:\"file\";s:18:\"2020/07/logo-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"logo-1-150x20.png\";s:5:\"width\";i:150;s:6:\"height\";i:20;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(146, 39, '_edit_lock', '1595595992:1'),
(147, 38, '_wp_attachment_image_alt', 'logo'),
(148, 39, '_wp_trash_meta_status', 'publish'),
(149, 39, '_wp_trash_meta_time', '1595596002'),
(150, 40, '_wp_trash_meta_status', 'publish'),
(151, 40, '_wp_trash_meta_time', '1595596256'),
(152, 41, '_edit_lock', '1595857125:1'),
(153, 42, '_edit_lock', '1595860354:1'),
(154, 43, '_edit_lock', '1595860400:1'),
(155, 45, '_edit_lock', '1595862375:1'),
(156, 46, '_edit_lock', '1595864366:1'),
(157, 47, '_edit_lock', '1595864379:1'),
(158, 48, '_edit_lock', '1595864463:1'),
(159, 49, '_edit_lock', '1595864506:1'),
(160, 50, '_edit_lock', '1595864902:1'),
(161, 51, '_edit_lock', '1595864907:1'),
(162, 52, '_edit_lock', '1595876446:1'),
(163, 53, '_wp_attached_file', '2020/07/restauran1.png'),
(164, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:362;s:6:\"height\";i:197;s:4:\"file\";s:22:\"2020/07/restauran1.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"restauran1-300x163.png\";s:5:\"width\";i:300;s:6:\"height\";i:163;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"restauran1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(165, 54, '_wp_attached_file', '2020/07/restauran1-1.png'),
(166, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:362;s:6:\"height\";i:197;s:4:\"file\";s:24:\"2020/07/restauran1-1.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"restauran1-1-300x163.png\";s:5:\"width\";i:300;s:6:\"height\";i:163;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"restauran1-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(167, 55, '_edit_lock', '1595887726:1'),
(168, 56, '_wp_attached_file', '2020/07/restauran1-2.png'),
(169, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:362;s:6:\"height\";i:197;s:4:\"file\";s:24:\"2020/07/restauran1-2.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"restauran1-2-300x163.png\";s:5:\"width\";i:300;s:6:\"height\";i:163;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"restauran1-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(170, 57, '_edit_lock', '1595871876:1'),
(171, 58, '_edit_lock', '1595872400:1'),
(172, 55, '_edit_last', '1'),
(173, 59, '_edit_lock', '1595873374:1'),
(174, 60, '_edit_lock', '1595874781:1'),
(175, 61, '_edit_lock', '1595876411:1'),
(176, 52, '_wp_trash_meta_status', 'draft'),
(177, 52, '_wp_trash_meta_time', '1595876596'),
(178, 52, '_wp_desired_post_slug', ''),
(179, 62, '_edit_lock', '1595890111:1'),
(180, 63, '_wp_attached_file', '2020/07/restauran2.png'),
(181, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:362;s:6:\"height\";i:197;s:4:\"file\";s:22:\"2020/07/restauran2.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"restauran2-300x163.png\";s:5:\"width\";i:300;s:6:\"height\";i:163;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"restauran2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(182, 64, '_edit_lock', '1595888087:1'),
(183, 65, '_wp_attached_file', '2020/07/restauran4.png'),
(184, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:362;s:6:\"height\";i:197;s:4:\"file\";s:22:\"2020/07/restauran4.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"restauran4-300x163.png\";s:5:\"width\";i:300;s:6:\"height\";i:163;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"restauran4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(185, 64, '_edit_last', '1'),
(186, 62, '_edit_last', '1'),
(187, 68, '_edit_lock', '1595880440:1'),
(189, 70, '_edit_lock', '1595880411:1'),
(190, 70, '_wp_trash_meta_status', 'publish'),
(191, 70, '_wp_trash_meta_time', '1595880571'),
(192, 70, '_wp_desired_post_slug', '%d0%b0%d1%8b%d0%b8-%d0%b0%d0%bf%d0%b8%d0%b0%d0%bf%d0%b8'),
(193, 68, '_wp_trash_meta_status', 'publish'),
(194, 68, '_wp_trash_meta_time', '1595880592'),
(195, 68, '_wp_desired_post_slug', '%d0%b0%d1%88%d0%be%d0%bf%d0%b8%d0%bf%d0%ba%d0%be%d1%88%d0%b8'),
(196, 65, '_wp_attachment_image_alt', 'rest'),
(197, 62, '_thumbnail_id', '65'),
(198, 55, '_thumbnail_id', '63'),
(199, 64, '_thumbnail_id', '56'),
(200, 73, '_edit_lock', '1595888358:1'),
(201, 74, '_wp_attached_file', '2020/07/restauran5.png'),
(202, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:362;s:6:\"height\";i:197;s:4:\"file\";s:22:\"2020/07/restauran5.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"restauran5-300x163.png\";s:5:\"width\";i:300;s:6:\"height\";i:163;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"restauran5-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(203, 73, '_thumbnail_id', '74'),
(204, 73, '_edit_last', '1'),
(205, 73, '_wp_trash_meta_status', 'publish'),
(206, 73, '_wp_trash_meta_time', '1595888367'),
(207, 73, '_wp_desired_post_slug', '%d0%b2%d0%b0%d1%80%d0%bb%d0%b0%d0%bc%d0%be%d0%b2-%d0%b5%d1%81%d1%82%d1%8c'),
(208, 75, '_edit_lock', '1595958731:1'),
(209, 76, '_wp_attached_file', '2020/07/restauran6.png'),
(210, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:362;s:6:\"height\";i:197;s:4:\"file\";s:22:\"2020/07/restauran6.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"restauran6-300x163.png\";s:5:\"width\";i:300;s:6:\"height\";i:163;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"restauran6-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(211, 75, '_thumbnail_id', '76'),
(212, 75, '_edit_last', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE `wp_posts` (
  `ID` bigint UNSIGNED NOT NULL,
  `post_author` bigint UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-07-20 21:16:35', '2020-07-20 18:16:35', '', 'Привет, мир!', '', 'trash', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80__trashed', '', '', '2020-07-22 17:53:46', '2020-07-22 14:53:46', '', 0, 'http://php.test/?p=1', 0, 'post', '', 1),
(2, 1, '2020-07-20 21:16:35', '2020-07-20 18:16:35', '', 'Главная', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-07-27 23:03:51', '2020-07-27 20:03:51', '', 0, 'http://php.test/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-07-20 21:16:35', '2020-07-20 18:16:35', '<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Наш адрес сайта: http://php.test.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие персональные данные мы собираем и с какой целью</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Комментарии</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Медиафайлы</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Формы контактов</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Куки</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Встраиваемое содержимое других вебсайтов</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Веб-аналитика</h3><!-- /wp:heading --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда мы отправляем ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ваша контактная информация</h2><!-- /wp:heading --><!-- wp:heading --><h2>Дополнительная информация</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Как мы защищаем ваши данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие принимаются процедуры против взлома данных</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>От каких третьих сторон мы получаем данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие автоматические решения принимаются на основе данных пользователей</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Требования к раскрытию отраслевых нормативных требований</h3><!-- /wp:heading -->', 'Политика конфиденциальности', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-07-20 21:16:35', '2020-07-20 18:16:35', '', 0, 'http://php.test/?page_id=3', 0, 'page', '', 0),
(5, 1, '2020-07-21 22:52:33', '2020-07-21 19:52:33', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2020-07-21 22:52:44', '2020-07-21 19:52:44', '', 0, 'http://php.test/app/uploads/2020/07/logo.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2020-07-21 22:53:08', '2020-07-21 19:53:08', '{\n    \"sage::custom_logo\": {\n        \"value\": 5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-21 19:53:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '76fcd7a3-e7b4-482b-b682-beadfcc28a7d', '', '', '2020-07-21 22:53:08', '2020-07-21 19:53:08', '', 0, 'http://php.test/2020/07/21/76fcd7a3-e7b4-482b-b682-beadfcc28a7d/', 0, 'customize_changeset', '', 0),
(7, 1, '2020-07-21 23:13:40', '2020-07-21 20:13:40', '{\n    \"blogname\": {\n        \"value\": \"\\u0421\\u0442\\u043e\\u043c\\u0430\\u0442\\u043e\\u043b\\u043e\\u0433\\u0438\\u044f \\u041a\\u0430\\u0437\\u0430\\u043d\\u0438\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-21 20:13:40\"\n    },\n    \"blogdescription\": {\n        \"value\": \"\\u0421\\u0442\\u043e\\u043c\\u0430\\u0442\\u043e\\u043b\\u043e\\u0433\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u0443\\u0441\\u043b\\u0443\\u0433\\u0438 \\u043e\\u0442 \\u043b\\u0443\\u0447\\u0448\\u0438\\u0445 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442\\u043e\\u0432\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-21 20:13:40\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '45929e73-9282-40be-9d1a-260ade111841', '', '', '2020-07-21 23:13:40', '2020-07-21 20:13:40', '', 0, 'http://php.test/2020/07/21/45929e73-9282-40be-9d1a-260ade111841/', 0, 'customize_changeset', '', 0),
(8, 1, '2020-07-22 02:12:22', '2020-07-21 23:12:22', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"2\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Общая информация по сайту', '%d0%be%d0%b1%d1%89%d0%b0%d1%8f-%d0%b8%d0%bd%d1%84%d0%be%d1%80%d0%bc%d0%b0%d1%86%d0%b8%d1%8f-%d0%bf%d0%be-%d1%81%d0%b0%d0%b9%d1%82%d1%83', 'publish', 'closed', 'closed', '', 'group_5f17718a9f41c', '', '', '2020-07-22 02:55:00', '2020-07-21 23:55:00', '', 0, 'http://php.test/?post_type=acf-field-group&#038;p=8', 0, 'acf-field-group', '', 0),
(9, 1, '2020-07-22 02:12:22', '2020-07-21 23:12:22', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Адрес', 'address', 'publish', 'closed', 'closed', '', 'field_5f1775fcb5b4d', '', '', '2020-07-22 02:12:22', '2020-07-21 23:12:22', '', 8, 'http://php.test/?post_type=acf-field&p=9', 0, 'acf-field', '', 0),
(10, 1, '2020-07-22 02:15:51', '2020-07-21 23:15:51', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-07-22 02:15:51', '2020-07-21 23:15:51', '', 2, 'http://php.test/2020/07/22/2-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2020-07-22 02:18:39', '2020-07-21 23:18:39', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-07-22 02:18:39', '2020-07-21 23:18:39', '', 2, 'http://php.test/2020/07/22/2-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2020-07-22 02:54:35', '2020-07-21 23:54:35', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Скачать прайс', 'download_price', 'publish', 'closed', 'closed', '', 'field_5f17801ecddf5', '', '', '2020-07-22 02:54:35', '2020-07-21 23:54:35', '', 8, 'http://php.test/?post_type=acf-field&p=12', 1, 'acf-field', '', 0),
(13, 1, '2020-07-22 02:56:30', '2020-07-21 23:56:30', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-07-22 02:56:30', '2020-07-21 23:56:30', '', 2, 'http://php.test/2020/07/22/2-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2020-07-22 02:57:22', '2020-07-21 23:57:22', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"2\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Навигационная панель', '%d0%bd%d0%b0%d0%b2%d0%b8%d0%b3%d0%b0%d1%86%d0%b8%d0%be%d0%bd%d0%bd%d0%b0%d1%8f-%d0%bf%d0%b0%d0%bd%d0%b5%d0%bb%d1%8c', 'publish', 'closed', 'closed', '', 'group_5f1780c5266e7', '', '', '2020-07-22 03:00:34', '2020-07-22 00:00:34', '', 0, 'http://php.test/?post_type=acf-field-group&#038;p=14', 0, 'acf-field-group', '', 0),
(15, 1, '2020-07-22 02:57:22', '2020-07-21 23:57:22', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Главная', 'main', 'publish', 'closed', 'closed', '', 'field_5f1780d5aff66', '', '', '2020-07-22 02:57:22', '2020-07-21 23:57:22', '', 14, 'http://php.test/?post_type=acf-field&p=15', 0, 'acf-field', '', 0),
(16, 1, '2020-07-22 02:57:48', '2020-07-21 23:57:48', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Цены', 'prices', 'publish', 'closed', 'closed', '', 'field_5f1780e4645b9', '', '', '2020-07-22 02:57:48', '2020-07-21 23:57:48', '', 14, 'http://php.test/?post_type=acf-field&p=16', 1, 'acf-field', '', 0),
(17, 1, '2020-07-22 02:58:12', '2020-07-21 23:58:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'О клинике', 'about', 'publish', 'closed', 'closed', '', 'field_5f178103fe8a9', '', '', '2020-07-22 02:58:12', '2020-07-21 23:58:12', '', 14, 'http://php.test/?post_type=acf-field&p=17', 2, 'acf-field', '', 0),
(18, 1, '2020-07-22 02:59:07', '2020-07-21 23:59:07', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Акции', 'shares', 'publish', 'closed', 'closed', '', 'field_5f17813ee4175', '', '', '2020-07-22 02:59:07', '2020-07-21 23:59:07', '', 14, 'http://php.test/?post_type=acf-field&p=18', 3, 'acf-field', '', 0),
(19, 1, '2020-07-22 02:59:26', '2020-07-21 23:59:26', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Блог', 'blog', 'publish', 'closed', 'closed', '', 'field_5f1781523abb7', '', '', '2020-07-22 02:59:26', '2020-07-21 23:59:26', '', 14, 'http://php.test/?post_type=acf-field&p=19', 4, 'acf-field', '', 0),
(20, 1, '2020-07-22 02:59:51', '2020-07-21 23:59:51', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Вопросы врачу', 'questions_for_doctor', 'publish', 'closed', 'closed', '', 'field_5f1781628212a', '', '', '2020-07-22 02:59:51', '2020-07-21 23:59:51', '', 14, 'http://php.test/?post_type=acf-field&p=20', 5, 'acf-field', '', 0),
(21, 1, '2020-07-22 03:00:12', '2020-07-22 00:00:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Контакты', 'contacts', 'publish', 'closed', 'closed', '', 'field_5f17817a9cd88', '', '', '2020-07-22 03:00:12', '2020-07-22 00:00:12', '', 14, 'http://php.test/?post_type=acf-field&p=21', 6, 'acf-field', '', 0),
(22, 1, '2020-07-22 03:00:34', '2020-07-22 00:00:34', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Телефон', 'phone', 'publish', 'closed', 'closed', '', 'field_5f17819549b1d', '', '', '2020-07-22 03:00:34', '2020-07-22 00:00:34', '', 14, 'http://php.test/?post_type=acf-field&p=22', 7, 'acf-field', '', 0),
(23, 1, '2020-07-22 03:01:31', '2020-07-22 00:01:31', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-07-22 03:01:31', '2020-07-22 00:01:31', '', 2, 'http://php.test/2020/07/22/2-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2020-07-22 03:05:11', '2020-07-22 00:05:11', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"2\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Форма', '%d1%84%d0%be%d1%80%d0%bc%d0%b0', 'publish', 'closed', 'closed', '', 'group_5f17829539376', '', '', '2020-07-22 03:05:11', '2020-07-22 00:05:11', '', 0, 'http://php.test/?post_type=acf-field-group&#038;p=24', 0, 'acf-field-group', '', 0),
(25, 1, '2020-07-22 03:05:11', '2020-07-22 00:05:11', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Заголовок формы', 'form_title', 'publish', 'closed', 'closed', '', 'field_5f1782a7c1a51', '', '', '2020-07-22 03:05:11', '2020-07-22 00:05:11', '', 24, 'http://php.test/?post_type=acf-field&p=25', 0, 'acf-field', '', 0),
(26, 1, '2020-07-22 03:05:39', '2020-07-22 00:05:39', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-07-22 03:05:39', '2020-07-22 00:05:39', '', 2, 'http://php.test/2020/07/22/2-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2020-07-22 17:47:57', '2020-07-22 14:47:57', '', 'Привет, мир!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-07-22 17:47:57', '2020-07-22 14:47:57', '', 1, 'http://php.test/2020/07/22/1-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2020-07-22 17:49:08', '2020-07-22 14:49:08', '{\n    \"sage/resources::custom_logo\": {\n        \"value\": 5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-22 14:49:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4fa5cb5e-f250-40a6-a0e8-fe6a064ca5ea', '', '', '2020-07-22 17:49:08', '2020-07-22 14:49:08', '', 0, 'http://php.test/2020/07/22/4fa5cb5e-f250-40a6-a0e8-fe6a064ca5ea/', 0, 'customize_changeset', '', 0),
(29, 1, '2020-07-23 02:38:01', '0000-00-00 00:00:00', '', 'Главная', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-07-23 02:38:01', '0000-00-00 00:00:00', '', 0, 'http://php.test/?p=29', 1, 'nav_menu_item', '', 0),
(30, 1, '2020-07-23 02:38:01', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-07-23 02:38:01', '0000-00-00 00:00:00', '', 0, 'http://php.test/?p=30', 1, 'nav_menu_item', '', 0),
(31, 1, '2020-07-23 02:38:34', '0000-00-00 00:00:00', '', 'Главная', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-07-23 02:38:34', '0000-00-00 00:00:00', '', 0, 'http://php.test/?p=31', 1, 'nav_menu_item', '', 0),
(32, 1, '2020-07-23 02:38:35', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-07-23 02:38:35', '0000-00-00 00:00:00', '', 0, 'http://php.test/?p=32', 1, 'nav_menu_item', '', 0),
(33, 1, '2020-07-23 12:53:09', '2020-07-23 09:53:09', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo-2', '', '', '2020-07-23 12:53:17', '2020-07-23 09:53:17', '', 0, 'http://php.test/app/uploads/2020/07/logo.png', 0, 'attachment', 'image/png', 0),
(34, 1, '2020-07-23 12:53:21', '2020-07-23 09:53:21', '{\n    \"site_icon\": {\n        \"value\": 33,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-23 09:53:21\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '58dca0f2-c7db-4ff0-bde8-f1db7884beae', '', '', '2020-07-23 12:53:21', '2020-07-23 09:53:21', '', 0, 'http://php.test/2020/07/23/58dca0f2-c7db-4ff0-bde8-f1db7884beae/', 0, 'customize_changeset', '', 0),
(35, 1, '2020-07-23 14:37:48', '0000-00-00 00:00:00', '{\n    \"show_on_front\": {\n        \"value\": \"posts\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-23 11:37:48\"\n    },\n    \"page_on_front\": {\n        \"value\": \"2\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-23 11:37:48\"\n    },\n    \"page_for_posts\": {\n        \"value\": \"2\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-23 11:37:48\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '81a6c02b-b548-46d1-a8e0-b4d222fc2583', '', '', '2020-07-23 14:37:48', '0000-00-00 00:00:00', '', 0, 'http://php.test/?p=35', 0, 'customize_changeset', '', 0),
(36, 1, '2020-07-24 15:44:08', '2020-07-24 12:44:08', '{\n    \"blogname\": {\n        \"value\": \"\\u0420\\u0435\\u0441\\u0442\\u043e\\u0440\\u0430\\u043d\\u044b \\u041a\\u0430\\u0437\\u0430\\u043d\\u0438\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-24 12:44:08\"\n    },\n    \"blogdescription\": {\n        \"value\": \"\\u041b\\u0443\\u0447\\u0448\\u0438\\u0435 \\u0440\\u0435\\u0441\\u0442\\u043e\\u0440\\u0430\\u043d\\u044b \\u043f\\u043e \\u0432\\u0441\\u0435\\u043c\\u0443 \\u0433\\u043e\\u0440\\u043e\\u0434\\u0443\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-24 12:44:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '068262f5-a53b-47b2-b44a-9cc972948c7d', '', '', '2020-07-24 15:44:08', '2020-07-24 12:44:08', '', 0, 'http://php.test/2020/07/24/068262f5-a53b-47b2-b44a-9cc972948c7d/', 0, 'customize_changeset', '', 0),
(37, 1, '2020-07-24 15:44:29', '0000-00-00 00:00:00', '{\n    \"site_icon\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-24 12:44:29\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '2cb32230-8822-45cc-b3ca-0b8451ed8026', '', '', '2020-07-24 15:44:29', '0000-00-00 00:00:00', '', 0, 'http://php.test/?p=37', 0, 'customize_changeset', '', 0),
(38, 1, '2020-07-24 16:06:32', '2020-07-24 13:06:32', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo-3', '', '', '2020-07-24 16:06:37', '2020-07-24 13:06:37', '', 0, 'http://php.test/app/uploads/2020/07/logo-1.png', 0, 'attachment', 'image/png', 0),
(39, 1, '2020-07-24 16:06:42', '2020-07-24 13:06:42', '{\n    \"site_icon\": {\n        \"value\": 38,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-24 13:06:42\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ea0f0dfe-41c3-4dbe-981d-3aea3c473b1a', '', '', '2020-07-24 16:06:42', '2020-07-24 13:06:42', '', 0, 'http://php.test/?p=39', 0, 'customize_changeset', '', 0),
(40, 1, '2020-07-24 16:10:55', '2020-07-24 13:10:55', '{\n    \"site_icon\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-24 13:10:55\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '98c18f69-1833-4ca0-8ceb-4820fb83c810', '', '', '2020-07-24 16:10:55', '2020-07-24 13:10:55', '', 0, 'http://php.test/2020/07/24/98c18f69-1833-4ca0-8ceb-4820fb83c810/', 0, 'customize_changeset', '', 0),
(41, 1, '2020-07-27 16:41:02', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-07-27 16:41:02', '0000-00-00 00:00:00', '', 0, 'http://php.test/?p=41', 0, 'post', '', 0),
(42, 1, '2020-07-27 17:22:30', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-07-27 17:22:30', '0000-00-00 00:00:00', '', 0, 'http://php.test/?p=42', 0, 'post', '', 0),
(43, 1, '2020-07-27 17:35:06', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-07-27 17:35:06', '0000-00-00 00:00:00', '', 0, 'http://php.test/?p=43', 0, 'post', '', 0),
(44, 1, '2020-07-27 17:45:49', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-07-27 17:45:49', '0000-00-00 00:00:00', '', 0, 'http://php.test/?post_type=acf-field-group&p=44', 0, 'acf-field-group', '', 0),
(45, 1, '2020-07-27 18:08:14', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-07-27 18:08:14', '0000-00-00 00:00:00', '', 0, 'http://php.test/?p=45', 0, 'post', '', 0),
(46, 1, '2020-07-27 18:41:44', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-07-27 18:41:44', '0000-00-00 00:00:00', '', 0, 'http://php.test/?post_type=restaurant&p=46', 0, 'restaurant', '', 0),
(47, 1, '2020-07-27 18:41:55', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-07-27 18:41:55', '0000-00-00 00:00:00', '', 0, 'http://php.test/?post_type=restaurant&p=47', 0, 'restaurant', '', 0),
(48, 1, '2020-07-27 18:42:46', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-07-27 18:42:46', '0000-00-00 00:00:00', '', 0, 'http://php.test/?post_type=restaurant&p=48', 0, 'restaurant', '', 0),
(49, 1, '2020-07-27 18:43:40', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-07-27 18:43:40', '0000-00-00 00:00:00', '', 0, 'http://php.test/?p=49', 0, 'wp_block', '', 0),
(50, 1, '2020-07-27 18:50:43', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-07-27 18:50:43', '0000-00-00 00:00:00', '', 0, 'http://php.test/?p=50', 0, 'wp_block', '', 0),
(51, 1, '2020-07-27 18:50:48', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-07-27 18:50:48', '0000-00-00 00:00:00', '', 0, 'http://php.test/?post_type=restaurant&p=51', 0, 'restaurant', '', 0),
(52, 1, '2020-07-27 22:03:16', '2020-07-27 19:03:16', '<!-- wp:gallery {\"ids\":[54]} -->\n<figure class=\"wp-block-gallery columns-1 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://php.test/app/uploads/2020/07/restauran1-1.png\" alt=\"\" data-id=\"54\" data-full-url=\"http://php.test/app/uploads/2020/07/restauran1-1.png\" data-link=\"http://php.test/?attachment_id=54\" class=\"wp-image-54\"/></figure></li></ul></figure>\n<!-- /wp:gallery -->\n\n<!-- wp:heading -->\n<h2>Soul in the Bowl</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Американская . Тайская</p>\n<!-- /wp:paragraph -->', '', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2020-07-27 22:03:16', '2020-07-27 19:03:16', '', 0, 'http://php.test/?post_type=restaurant&#038;p=52', 0, 'restaurant', '', 0),
(53, 1, '2020-07-27 18:52:03', '2020-07-27 15:52:03', '', 'restauran1', '', 'inherit', 'open', 'closed', '', 'restauran1', '', '', '2020-07-27 18:52:03', '2020-07-27 15:52:03', '', 52, 'http://php.test/app/uploads/2020/07/restauran1.png', 0, 'attachment', 'image/png', 0),
(54, 1, '2020-07-27 18:55:17', '2020-07-27 15:55:17', '', 'restauran1-1', '', 'inherit', 'open', 'closed', '', 'restauran1-1', '', '', '2020-07-27 18:55:17', '2020-07-27 15:55:17', '', 52, 'http://php.test/app/uploads/2020/07/restauran1-1.png', 0, 'attachment', 'image/png', 0),
(55, 1, '2020-07-27 20:46:25', '2020-07-27 17:46:25', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:gallery {\"ids\":[]} -->\n<figure class=\"wp-block-gallery columns-0 is-cropped\"><ul class=\"blocks-gallery-grid\"></ul></figure>\n<!-- /wp:gallery -->', 'Soul in the Bowl', '', 'publish', 'closed', 'closed', '', '55', '', '', '2020-07-28 00:31:29', '2020-07-27 21:31:29', '', 0, 'http://php.test/?post_type=restaurant&#038;p=55', 0, 'restaurant', '', 0),
(56, 1, '2020-07-27 20:43:46', '2020-07-27 17:43:46', '', 'restauran1-2', '', 'inherit', 'open', 'closed', '', 'restauran1-2', '', '', '2020-07-27 20:43:46', '2020-07-27 17:43:46', '', 55, 'http://php.test/app/uploads/2020/07/restauran1-2.png', 0, 'attachment', 'image/png', 0),
(57, 1, '2020-07-27 20:46:39', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-07-27 20:46:39', '0000-00-00 00:00:00', '', 0, 'http://php.test/?post_type=restaurant&p=57', 0, 'restaurant', '', 0),
(58, 1, '2020-07-27 20:49:50', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-07-27 20:49:50', '0000-00-00 00:00:00', '', 0, 'http://php.test/?post_type=restaurant&p=58', 0, 'restaurant', '', 0),
(59, 1, '2020-07-27 21:11:35', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-07-27 21:11:35', '0000-00-00 00:00:00', '', 0, 'http://php.test/?post_type=restaurant&p=59', 0, 'restaurant', '', 0),
(60, 1, '2020-07-27 21:35:22', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-07-27 21:35:22', '0000-00-00 00:00:00', '', 0, 'http://php.test/?post_type=restaurant&p=60', 0, 'restaurant', '', 0),
(61, 1, '2020-07-27 21:35:28', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-07-27 21:35:28', '0000-00-00 00:00:00', '', 0, 'http://php.test/?post_type=restaurant&p=61', 0, 'restaurant', '', 0),
(62, 1, '2020-07-27 22:57:53', '2020-07-27 19:57:53', '<!-- wp:gallery {\"ids\":[]} -->\n<figure class=\"wp-block-gallery columns-0 is-cropped\"><ul class=\"blocks-gallery-grid\"></ul></figure>\n<!-- /wp:gallery -->', 'Falafel Bro', '', 'publish', 'closed', 'closed', '', 'falafel-bro', '', '', '2020-07-28 01:48:31', '2020-07-27 22:48:31', '', 0, 'http://php.test/?post_type=restaurant&#038;p=62', 0, 'restaurant', '', 0),
(63, 1, '2020-07-27 22:57:38', '2020-07-27 19:57:38', '', 'restauran2', '', 'inherit', 'open', 'closed', '', 'restauran2', '', '', '2020-07-27 22:57:38', '2020-07-27 19:57:38', '', 62, 'http://php.test/app/uploads/2020/07/restauran2.png', 0, 'attachment', 'image/png', 0),
(64, 1, '2020-07-27 22:58:25', '2020-07-27 19:58:25', '<!-- wp:gallery {\"ids\":[65]} -->\n<figure class=\"wp-block-gallery columns-1 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://php.test/app/uploads/2020/07/restauran4.png\" alt=\"\" data-id=\"65\" data-full-url=\"http://php.test/app/uploads/2020/07/restauran4.png\" data-link=\"http://php.test/?attachment_id=65\" class=\"wp-image-65\"/></figure></li></ul></figure>\n<!-- /wp:gallery -->\n\n<!-- wp:heading -->\n<h2>Первый ресторан</h2>\n<!-- /wp:heading -->', 'Tacodor', '', 'publish', 'closed', 'closed', '', 'tacodor', '', '', '2020-07-28 01:12:31', '2020-07-27 22:12:31', '', 0, 'http://php.test/?post_type=restaurant&#038;p=64', 0, 'restaurant', '', 0),
(65, 1, '2020-07-27 22:58:23', '2020-07-27 19:58:23', '', 'restauran_img', '', 'inherit', 'open', 'closed', '', 'restauran4', '', '', '2020-07-28 00:26:03', '2020-07-27 21:26:03', '', 64, 'http://php.test/app/uploads/2020/07/restauran4.png', 0, 'attachment', 'image/png', 0),
(66, 1, '2020-07-27 23:03:34', '2020-07-27 20:03:34', '', 'Главная для теста', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-07-27 23:03:34', '2020-07-27 20:03:34', '', 2, 'http://php.test/2020/07/27/2-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2020-07-27 23:03:51', '2020-07-27 20:03:51', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-07-27 23:03:51', '2020-07-27 20:03:51', '', 2, 'http://php.test/2020/07/27/2-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2020-07-27 23:08:28', '2020-07-27 20:08:28', '', 'ашопипкоши', '', 'trash', 'open', 'open', '', '%d0%b0%d1%88%d0%be%d0%bf%d0%b8%d0%bf%d0%ba%d0%be%d1%88%d0%b8__trashed', '', '', '2020-07-27 23:09:52', '2020-07-27 20:09:52', '', 0, 'http://php.test/?p=68', 0, 'post', '', 0),
(69, 1, '2020-07-27 23:08:28', '2020-07-27 20:08:28', '', 'ашопипкоши', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2020-07-27 23:08:28', '2020-07-27 20:08:28', '', 68, 'http://php.test/2020/07/27/68-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2020-07-27 23:09:05', '2020-07-27 20:09:05', '', 'аыи апиапи', '', 'trash', 'closed', 'closed', '', '%d0%b0%d1%8b%d0%b8-%d0%b0%d0%bf%d0%b8%d0%b0%d0%bf%d0%b8__trashed', '', '', '2020-07-27 23:09:31', '2020-07-27 20:09:31', '', 0, 'http://php.test/?page_id=70', 0, 'page', '', 0),
(71, 1, '2020-07-27 23:09:05', '2020-07-27 20:09:05', '', 'аыи апиапи', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2020-07-27 23:09:05', '2020-07-27 20:09:05', '', 70, 'http://php.test/2020/07/27/70-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2020-07-28 00:27:04', '2020-07-27 21:27:04', '<!-- wp:gallery {\"ids\":[63]} -->\n<figure class=\"wp-block-gallery columns-1 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://php.test/app/uploads/2020/07/restauran2.png\" alt=\"\" data-id=\"63\" data-full-url=\"http://php.test/app/uploads/2020/07/restauran2.png\" data-link=\"http://php.test/?attachment_id=63\" class=\"wp-image-63\"/></figure></li></ul></figure>\n<!-- /wp:gallery -->', 'Falafel Bro', '', 'inherit', 'closed', 'closed', '', '62-autosave-v1', '', '', '2020-07-28 00:27:04', '2020-07-27 21:27:04', '', 62, 'http://php.test/2020/07/28/62-autosave-v1/', 0, 'revision', '', 0),
(73, 1, '2020-07-28 01:17:37', '2020-07-27 22:17:37', '', 'Варламов Есть', '', 'trash', 'closed', 'closed', '', '%d0%b2%d0%b0%d1%80%d0%bb%d0%b0%d0%bc%d0%be%d0%b2-%d0%b5%d1%81%d1%82%d1%8c__trashed', '', '', '2020-07-28 01:19:27', '2020-07-27 22:19:27', '', 0, 'http://php.test/?post_type=restaurant&#038;p=73', 0, 'restaurant', '', 0),
(74, 1, '2020-07-28 01:17:29', '2020-07-27 22:17:29', '', 'restauran5', '', 'inherit', 'open', 'closed', '', 'restauran5', '', '', '2020-07-28 01:17:29', '2020-07-27 22:17:29', '', 73, 'http://php.test/app/uploads/2020/07/restauran5.png', 0, 'attachment', 'image/png', 0),
(75, 1, '2020-07-28 20:51:59', '2020-07-28 17:51:59', '', 'Город-Сад', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%be%d1%80%d0%be%d0%b4-%d1%81%d0%b0%d0%b4', '', '', '2020-07-28 20:52:11', '2020-07-28 17:52:11', '', 0, 'http://php.test/?post_type=restaurant&#038;p=75', 0, 'restaurant', '', 0),
(76, 1, '2020-07-28 20:51:52', '2020-07-28 17:51:52', '', 'restauran6', '', 'inherit', 'open', 'closed', '', 'restauran6', '', '', '2020-07-28 20:51:52', '2020-07-28 17:51:52', '', 75, 'http://php.test/app/uploads/2020/07/restauran6.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE `wp_terms` (
  `term_id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'Русская', 'russian', 0),
(3, 'Татарская', 'tatar', 0),
(4, 'Итальянская', 'italian', 0),
(5, 'Десерты', 'desserts', 0),
(6, 'Американская', 'american', 0),
(7, 'Тайская', 'tai', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(55, 7, 0),
(62, 2, 0),
(64, 4, 0),
(68, 1, 0),
(73, 6, 0),
(75, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'kitchen', 'Русская кухня', 0, 1),
(3, 3, 'kitchen', 'Татарская кухня', 0, 0),
(4, 4, 'kitchen', 'Итальянская кухня', 0, 1),
(5, 5, 'kitchen', '', 0, 0),
(6, 6, 'kitchen', '', 0, 1),
(7, 7, 'kitchen', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"6e7961fff0cd4fd1ec022de49ac15890542c1c46280365bcbbc414fff93fefca\";a:4:{s:10:\"expiration\";i:1596016380;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36\";s:5:\"login\";i:1595843580;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1595361185'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(23, 1, 'closedpostboxes_page', 'a:2:{i:0;s:23:\"acf-group_5f1780c5266e7\";i:1;s:23:\"acf-group_5f17718a9f41c\";}'),
(24, 1, 'metaboxhidden_page', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE `wp_users` (
  `ID` bigint UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$2y$10$4tHgnOYGgxJdj6C.pIcqEeONj6K6AHZBN7hK9rNaEbYBoHe3X8fyu', 'admin', 'kamvalgen@mail.ru', 'http://php.test/wp', '2020-07-20 18:16:35', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=407;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
