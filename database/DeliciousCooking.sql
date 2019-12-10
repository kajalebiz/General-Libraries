-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2018 at 04:09 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.1.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `deliciouscooking`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-05-28 09:47:14', '2018-05-28 09:47:14', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 53, 'Kajal Patel', 'kajal@gmail.com', '', '::1', '2018-05-29 07:18:36', '2018-05-29 07:18:36', 'this is comment for post 3', 0, '1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', '', 0, 1),
(3, 53, 'Kajal Patel', 'kajal@gmail.com', '', '::1', '2018-05-29 07:19:36', '2018-05-29 07:19:36', 'hii this reply to ur comment', 0, '1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', '', 2, 1),
(4, 53, 'kirtan vyas', 'kirtan@mail.com', '', '::1', '2018-05-29 07:21:03', '2018-05-29 07:21:03', 'hii helloo kitan\'s comment on post3', 0, '1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/DeliciousCooking', 'yes'),
(2, 'home', 'http://localhost/DeliciousCooking', 'yes'),
(3, 'blogname', 'Delicious Cooking', 'yes'),
(4, 'blogdescription', 'We makes Delicious Food for you........', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'kajal@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '3', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:199:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:9:\"campus/?$\";s:26:\"index.php?post_type=campus\";s:39:\"campus/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=campus&feed=$matches[1]\";s:34:\"campus/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=campus&feed=$matches[1]\";s:26:\"campus/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=campus&paged=$matches[1]\";s:8:\"event/?$\";s:25:\"index.php?post_type=event\";s:38:\"event/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:33:\"event/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:25:\"event/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=event&paged=$matches[1]\";s:10:\"program/?$\";s:27:\"index.php?post_type=program\";s:40:\"program/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:35:\"program/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:27:\"program/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=program&paged=$matches[1]\";s:12:\"professor/?$\";s:29:\"index.php?post_type=professor\";s:42:\"professor/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=professor&feed=$matches[1]\";s:37:\"professor/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=professor&feed=$matches[1]\";s:29:\"professor/page/([0-9]{1,})/?$\";s:47:\"index.php?post_type=professor&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"campus/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"campus/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"campus/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"campus/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"campus/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"campus/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"campus/([^/]+)/embed/?$\";s:39:\"index.php?campus=$matches[1]&embed=true\";s:27:\"campus/([^/]+)/trackback/?$\";s:33:\"index.php?campus=$matches[1]&tb=1\";s:47:\"campus/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?campus=$matches[1]&feed=$matches[2]\";s:42:\"campus/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?campus=$matches[1]&feed=$matches[2]\";s:35:\"campus/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?campus=$matches[1]&paged=$matches[2]\";s:42:\"campus/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?campus=$matches[1]&cpage=$matches[2]\";s:31:\"campus/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?campus=$matches[1]&page=$matches[2]\";s:23:\"campus/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"campus/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"campus/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"campus/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"campus/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"campus/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"event/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"event/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"event/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"event/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"event/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"event/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"event/([^/]+)/embed/?$\";s:38:\"index.php?event=$matches[1]&embed=true\";s:26:\"event/([^/]+)/trackback/?$\";s:32:\"index.php?event=$matches[1]&tb=1\";s:46:\"event/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:41:\"event/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:34:\"event/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&paged=$matches[2]\";s:41:\"event/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&cpage=$matches[2]\";s:30:\"event/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?event=$matches[1]&page=$matches[2]\";s:22:\"event/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"event/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"event/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"event/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"event/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"event/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"program/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"program/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"program/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"program/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"program/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"program/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"program/([^/]+)/embed/?$\";s:40:\"index.php?program=$matches[1]&embed=true\";s:28:\"program/([^/]+)/trackback/?$\";s:34:\"index.php?program=$matches[1]&tb=1\";s:48:\"program/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:43:\"program/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:36:\"program/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&paged=$matches[2]\";s:43:\"program/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&cpage=$matches[2]\";s:32:\"program/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?program=$matches[1]&page=$matches[2]\";s:24:\"program/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"program/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"program/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"program/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"program/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"program/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"professor/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"professor/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"professor/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"professor/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"professor/([^/]+)/embed/?$\";s:42:\"index.php?professor=$matches[1]&embed=true\";s:30:\"professor/([^/]+)/trackback/?$\";s:36:\"index.php?professor=$matches[1]&tb=1\";s:50:\"professor/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?professor=$matches[1]&feed=$matches[2]\";s:45:\"professor/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?professor=$matches[1]&feed=$matches[2]\";s:38:\"professor/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&paged=$matches[2]\";s:45:\"professor/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&cpage=$matches[2]\";s:34:\"professor/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?professor=$matches[1]&page=$matches[2]\";s:26:\"professor/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"professor/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"professor/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"professor/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"note/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"note/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"note/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"note/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"note/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"note/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"note/([^/]+)/embed/?$\";s:37:\"index.php?note=$matches[1]&embed=true\";s:25:\"note/([^/]+)/trackback/?$\";s:31:\"index.php?note=$matches[1]&tb=1\";s:33:\"note/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?note=$matches[1]&paged=$matches[2]\";s:40:\"note/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?note=$matches[1]&cpage=$matches[2]\";s:29:\"note/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?note=$matches[1]&page=$matches[2]\";s:21:\"note/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"note/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"note/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"note/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"note/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"note/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:40:\"index.php?&page_id=151&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:39:\"manual-image-crop/manual-image-crop.php\";i:2;s:19:\"members/members.php\";i:3;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:4:{i:0;s:100:\"/home/uttam/Documents/NetBeansProjects/DeliciousCooking/wp-content/themes/deliciouscooking/style.css\";i:1;s:78:\"/opt/lampp/htdocs/DeliciousCooking/wp-content/themes/twentyseventeen/style.css\";i:2;s:79:\"/opt/lampp/htdocs/DeliciousCooking/wp-content/themes/deliciouscooking/style.css\";i:3;s:0:\"\";}', 'no'),
(40, 'template', 'deliciouscooking', 'yes'),
(41, 'stylesheet', 'deliciouscooking', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'identicon', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:9:{i:2;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;i:6;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:7;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:8;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:9;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}}', 'yes'),
(80, 'widget_rss', 'a:3:{i:1;a:0:{}i:2;a:8:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:0:\"\";s:4:\"link\";s:0:\"\";s:5:\"items\";i:10;s:5:\"error\";s:44:\"WP HTTP Error: A valid URL was not provided.\";s:12:\"show_summary\";i:0;s:11:\"show_author\";i:0;s:9:\"show_date\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(84, 'page_on_front', '151', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '68', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:6:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:96:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:17:\"manage_categories\";b:1;s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:16:\"restrict_content\";b:1;s:10:\"list_roles\";b:1;s:12:\"create_roles\";b:1;s:12:\"delete_roles\";b:1;s:10:\"edit_roles\";b:1;s:13:\"delete_events\";b:1;s:20:\"delete_others_events\";b:1;s:21:\"delete_private_events\";b:1;s:23:\"delete_published_events\";b:1;s:11:\"edit_events\";b:1;s:18:\"edit_others_events\";b:1;s:19:\"edit_private_events\";b:1;s:21:\"edit_published_events\";b:1;s:14:\"publish_events\";b:1;s:19:\"read_private_events\";b:1;s:12:\"edit_campuss\";b:1;s:19:\"edit_others_campuss\";b:1;s:15:\"publish_campuss\";b:1;s:20:\"read_private_campuss\";b:1;s:14:\"delete_campuss\";b:1;s:22:\"delete_private_campuss\";b:1;s:24:\"delete_published_campuss\";b:1;s:21:\"delete_others_campuss\";b:1;s:20:\"edit_private_campuss\";b:1;s:22:\"edit_published_campuss\";b:1;s:14:\"edit_dashboard\";b:1;s:10:\"edit_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:12:\"manage_links\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:4:\"read\";b:1;s:15:\"unfiltered_html\";b:1;s:11:\"update_core\";b:1;s:10:\"edit_notes\";b:1;s:17:\"edit_others_notes\";b:1;s:13:\"publish_notes\";b:1;s:18:\"read_private_notes\";b:1;s:12:\"delete_notes\";b:1;s:20:\"delete_private_notes\";b:1;s:22:\"delete_published_notes\";b:1;s:19:\"delete_others_notes\";b:1;s:18:\"edit_private_notes\";b:1;s:20:\"edit_published_notes\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"event_planner\";a:2:{s:4:\"name\";s:13:\"Event Planner\";s:12:\"capabilities\";a:11:{s:4:\"read\";b:1;s:11:\"edit_events\";b:1;s:18:\"edit_others_events\";b:1;s:14:\"publish_events\";b:1;s:19:\"read_private_events\";b:1;s:13:\"delete_events\";b:1;s:21:\"delete_private_events\";b:1;s:23:\"delete_published_events\";b:1;s:20:\"delete_others_events\";b:1;s:19:\"edit_private_events\";b:1;s:21:\"edit_published_events\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:4:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;i:3;a:1:{s:5:\"title\";s:6:\"Search\";}i:4;a:1:{s:5:\"title\";s:6:\"Search\";}}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:11:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:6:\"text-2\";i:4;s:6:\"text-3\";i:5;s:6:\"text-4\";i:6;s:6:\"text-5\";i:7;s:12:\"categories-2\";i:8;s:14:\"recent-posts-2\";i:9;s:17:\"recent-comments-2\";i:10;s:5:\"rss-2\";}s:9:\"sidebar-1\";a:3:{i:0;s:6:\"text-6\";i:1;s:8:\"search-3\";i:2;s:6:\"text-7\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-8\";}s:9:\"sidebar-3\";a:2:{i:0;s:6:\"text-9\";i:1;s:8:\"search-4\";}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'cron', 'a:6:{i:1530598625;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1530611235;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1530611236;a:2:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1530611260;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1530613685;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:10:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:2:{s:3:\"top\";i:13;s:6:\"social\";i:-5;}s:7:\"panel_1\";i:20;s:7:\"panel_2\";i:17;s:7:\"panel_3\";i:19;s:7:\"panel_4\";i:18;s:11:\"custom_logo\";s:0:\"\";s:12:\"header_image\";s:83:\"http://localhost/DeliciousCooking/wp-content/uploads/2018/05/cropped-coffee-1-2.jpg\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:69;s:3:\"url\";s:83:\"http://localhost/DeliciousCooking/wp-content/uploads/2018/05/cropped-coffee-1-2.jpg\";s:13:\"thumbnail_url\";s:83:\"http://localhost/DeliciousCooking/wp-content/uploads/2018/05/cropped-coffee-1-2.jpg\";s:6:\"height\";i:1200;s:5:\"width\";i:2000;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1527587752;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:4:{i:0;s:6:\"text-6\";i:1;s:8:\"search-3\";i:2;s:6:\"text-7\";i:3;s:5:\"rss-2\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-8\";}s:9:\"sidebar-3\";a:2:{i:0;s:6:\"text-9\";i:1;s:8:\"search-4\";}}}}', 'yes'),
(124, 'can_compress_scripts', '1', 'no'),
(145, 'theme_mods_deliciouscooking', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1527511355;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:6:\"text-6\";i:1;s:8:\"search-3\";i:2;s:6:\"text-7\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-8\";}s:9:\"sidebar-3\";a:2:{i:0;s:6:\"text-9\";i:1;s:8:\"search-4\";}}}s:18:\"nav_menu_locations\";a:3:{s:10:\"headerMenu\";i:15;s:13:\"footerMenuOne\";i:16;s:13:\"footerMenuTwo\";i:18;}}', 'yes'),
(148, 'current_theme', 'Delicious Cooking', 'yes'),
(149, 'theme_switched', '', 'yes'),
(150, 'theme_switched_via_customizer', '', 'yes'),
(151, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:1:{i:0;i:13;}}', 'yes'),
(152, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(155, 'WPLANG', '', 'yes'),
(156, 'new_admin_email', 'kajal@gmail.com', 'yes'),
(251, 'page_for_posts', '154', 'yes'),
(264, 'recently_activated', 'a:0:{}', 'yes'),
(355, 'ftp_credentials', 'a:3:{s:8:\"hostname\";s:9:\"localhost\";s:8:\"username\";s:5:\"admin\";s:15:\"connection_type\";s:3:\"ftp\";}', 'yes'),
(356, 'acf_version', '5.6.7', 'yes'),
(386, 'mic_make2x', 'true', 'yes'),
(395, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:15:\"kajal@gmail.com\";s:7:\"version\";s:5:\"4.9.6\";s:9:\"timestamp\";i:1527826619;}', 'no'),
(483, 'category_children', 'a:1:{i:4;a:3:{i:0;i:6;i:1;i:7;i:2;i:8;}}', 'yes'),
(606, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.6-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.6-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.6\";s:7:\"version\";s:5:\"4.9.6\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1530596555;s:15:\"version_checked\";s:5:\"4.9.6\";s:12:\"translations\";a:0:{}}', 'no'),
(687, '_site_transient_timeout_browser_a54eb83090ed984332f4eca22d3ec5e4', '1530775879', 'no'),
(688, '_site_transient_browser_a54eb83090ed984332f4eca22d3ec5e4', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"67.0.3396.99\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(705, '_site_transient_timeout_theme_roots', '1530598363', 'no'),
(706, '_site_transient_theme_roots', 'a:2:{s:16:\"deliciouscooking\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";}', 'no'),
(707, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1530596568;s:7:\"checked\";a:2:{s:16:\"deliciouscooking\";s:3:\"1.0\";s:15:\"twentyseventeen\";s:3:\"1.5\";}s:8:\"response\";a:1:{s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.1.6.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(708, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1530596571;s:7:\"checked\";a:6:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.6.7\";s:19:\"akismet/akismet.php\";s:5:\"4.0.7\";s:9:\"hello.php\";s:3:\"1.7\";s:39:\"manual-image-crop/manual-image-crop.php\";s:4:\"1.12\";s:19:\"members/members.php\";s:5:\"2.1.0\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.0.2\";}s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"5.6.10\";s:3:\"url\";s:37:\"https://www.advancedcustomfields.com/\";s:6:\"tested\";s:5:\"4.9.9\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:1:{s:7:\"default\";s:66:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"manual-image-crop/manual-image-crop.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/manual-image-crop\";s:4:\"slug\";s:17:\"manual-image-crop\";s:6:\"plugin\";s:39:\"manual-image-crop/manual-image-crop.php\";s:11:\"new_version\";s:4:\"1.12\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/manual-image-crop/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/manual-image-crop.1.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/manual-image-crop/assets/icon-256x256.png?rev=1154913\";s:2:\"1x\";s:70:\"https://ps.w.org/manual-image-crop/assets/icon-128x128.png?rev=1154913\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/manual-image-crop/assets/banner-1544x500.jpg?rev=781224\";s:2:\"1x\";s:71:\"https://ps.w.org/manual-image-crop/assets/banner-772x250.jpg?rev=781224\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"members/members.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/members\";s:4:\"slug\";s:7:\"members\";s:6:\"plugin\";s:19:\"members/members.php\";s:11:\"new_version\";s:5:\"2.1.0\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/members/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/members.2.1.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/members/assets/icon-256x256.png?rev=1242689\";s:2:\"1x\";s:60:\"https://ps.w.org/members/assets/icon-128x128.png?rev=1242689\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/members/assets/banner-1544x500.png?rev=1242689\";s:2:\"1x\";s:62:\"https://ps.w.org/members/assets/banner-772x250.png?rev=1242689\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.0.2\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(29, 13, '_wp_attached_file', '2018/05/espresso-1.jpg'),
(30, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2018/05/espresso-1.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"espresso-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"espresso-1-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"espresso-1-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"espresso-1-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"professorLandScapImage\";a:4:{s:4:\"file\";s:22:\"espresso-1-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"professorPotraitImage\";a:4:{s:4:\"file\";s:22:\"espresso-1-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:22:\"espresso-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(31, 13, '_starter_content_theme', 'twentyseventeen'),
(33, 14, '_wp_attached_file', '2018/05/sandwich-1.jpg'),
(34, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2018/05/sandwich-1.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"sandwich-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"sandwich-1-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"sandwich-1-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"sandwich-1-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"professorLandScapImage\";a:4:{s:4:\"file\";s:22:\"sandwich-1-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"professorPotraitImage\";a:4:{s:4:\"file\";s:22:\"sandwich-1-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:22:\"sandwich-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(35, 14, '_starter_content_theme', 'twentyseventeen'),
(37, 15, '_wp_attached_file', '2018/05/coffee-1.jpg'),
(38, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2018/05/coffee-1.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"coffee-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"coffee-1-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"coffee-1-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"coffee-1-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"professorLandScapImage\";a:4:{s:4:\"file\";s:20:\"coffee-1-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"professorPotraitImage\";a:4:{s:4:\"file\";s:20:\"coffee-1-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"coffee-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(39, 15, '_starter_content_theme', 'twentyseventeen'),
(52, 20, '_thumbnail_id', '13'),
(54, 20, '_customize_changeset_uuid', 'e71870bb-6e1a-4b55-b067-bea7e6b8b887'),
(56, 27, '_menu_item_type', 'custom'),
(57, 27, '_menu_item_menu_item_parent', '0'),
(58, 27, '_menu_item_object_id', '27'),
(59, 27, '_menu_item_object', 'custom'),
(60, 27, '_menu_item_target', ''),
(61, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(62, 27, '_menu_item_xfn', ''),
(63, 27, '_menu_item_url', 'http://localhost/DeliciousCooking/'),
(88, 31, '_menu_item_type', 'custom'),
(89, 31, '_menu_item_menu_item_parent', '0'),
(90, 31, '_menu_item_object_id', '31'),
(91, 31, '_menu_item_object', 'custom'),
(92, 31, '_menu_item_target', ''),
(93, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(94, 31, '_menu_item_xfn', ''),
(95, 31, '_menu_item_url', 'https://www.yelp.com'),
(96, 32, '_menu_item_type', 'custom'),
(97, 32, '_menu_item_menu_item_parent', '0'),
(98, 32, '_menu_item_object_id', '32'),
(99, 32, '_menu_item_object', 'custom'),
(100, 32, '_menu_item_target', ''),
(101, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(102, 32, '_menu_item_xfn', ''),
(103, 32, '_menu_item_url', 'https://www.facebook.com/wordpress'),
(104, 33, '_menu_item_type', 'custom'),
(105, 33, '_menu_item_menu_item_parent', '0'),
(106, 33, '_menu_item_object_id', '33'),
(107, 33, '_menu_item_object', 'custom'),
(108, 33, '_menu_item_target', ''),
(109, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(110, 33, '_menu_item_xfn', ''),
(111, 33, '_menu_item_url', 'https://twitter.com/wordpress'),
(112, 34, '_menu_item_type', 'custom'),
(113, 34, '_menu_item_menu_item_parent', '0'),
(114, 34, '_menu_item_object_id', '34'),
(115, 34, '_menu_item_object', 'custom'),
(116, 34, '_menu_item_target', ''),
(117, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(118, 34, '_menu_item_xfn', ''),
(119, 34, '_menu_item_url', 'https://www.instagram.com/explore/tags/wordcamp/'),
(120, 35, '_menu_item_type', 'custom'),
(121, 35, '_menu_item_menu_item_parent', '0'),
(122, 35, '_menu_item_object_id', '35'),
(123, 35, '_menu_item_object', 'custom'),
(124, 35, '_menu_item_target', ''),
(125, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(126, 35, '_menu_item_xfn', ''),
(127, 35, '_menu_item_url', 'mailto:wordpress@example.com'),
(134, 37, '_edit_last', '1'),
(137, 37, '_edit_lock', '1528182208:1'),
(138, 39, '_edit_last', '1'),
(139, 39, '_edit_lock', '1528355927:1'),
(161, 43, '_edit_last', '1'),
(162, 43, '_edit_lock', '1527598697:1'),
(163, 45, '_edit_last', '1'),
(164, 45, '_edit_lock', '1528347922:1'),
(168, 3, '_edit_last', '1'),
(169, 3, '_edit_lock', '1527512787:1'),
(170, 53, '_edit_last', '1'),
(171, 53, '_edit_lock', '1528183944:1'),
(173, 62, '_edit_lock', '1528193310:1'),
(174, 62, '_edit_last', '1'),
(175, 64, '_wp_attached_file', '2018/05/cropped-coffee-1.jpg'),
(176, 64, '_wp_attachment_context', 'custom-logo'),
(177, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:250;s:4:\"file\";s:28:\"2018/05/cropped-coffee-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"cropped-coffee-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:28:\"cropped-coffee-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(180, 66, '_wp_attached_file', '2018/05/cropped-coffee-1-1.jpg'),
(181, 66, '_wp_attachment_context', 'site-icon'),
(182, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:30:\"2018/05/cropped-coffee-1-1.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"cropped-coffee-1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"cropped-coffee-1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:30:\"cropped-coffee-1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:30:\"cropped-coffee-1-1-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:30:\"cropped-coffee-1-1-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:30:\"cropped-coffee-1-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:28:\"cropped-coffee-1-1-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(184, 68, '_wp_attached_file', '2018/05/cropped-sandwich-1.jpg'),
(185, 68, '_wp_attachment_context', 'site-icon'),
(186, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:30:\"2018/05/cropped-sandwich-1.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"cropped-sandwich-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"cropped-sandwich-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:30:\"cropped-sandwich-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:30:\"cropped-sandwich-1-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:30:\"cropped-sandwich-1-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:30:\"cropped-sandwich-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:28:\"cropped-sandwich-1-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(187, 69, '_wp_attached_file', '2018/05/cropped-coffee-1-2.jpg'),
(188, 69, '_wp_attachment_context', 'custom-header'),
(189, 69, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:30:\"2018/05/cropped-coffee-1-2.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"cropped-coffee-1-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"cropped-coffee-1-2-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"cropped-coffee-1-2-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"cropped-coffee-1-2-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:30:\"cropped-coffee-1-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:15;}'),
(190, 69, '_wp_attachment_custom_header_last_used_twentyseventeen', '1527568593'),
(191, 69, '_wp_attachment_is_custom_header', 'twentyseventeen'),
(194, 2, '_edit_lock', '1527571657:1'),
(195, 2, '_edit_last', '1'),
(196, 72, '_edit_lock', '1527573034:1'),
(197, 72, '_edit_last', '1'),
(200, 72, '_thumbnail_id', '13'),
(219, 76, '_menu_item_type', 'custom'),
(220, 76, '_menu_item_menu_item_parent', '0'),
(221, 76, '_menu_item_object_id', '76'),
(222, 76, '_menu_item_object', 'custom'),
(223, 76, '_menu_item_target', ''),
(224, 76, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(225, 76, '_menu_item_xfn', ''),
(226, 76, '_menu_item_url', 'http://google.com'),
(228, 77, '_menu_item_type', 'post_type'),
(229, 77, '_menu_item_menu_item_parent', '0'),
(230, 77, '_menu_item_object_id', '45'),
(231, 77, '_menu_item_object', 'page'),
(232, 77, '_menu_item_target', ''),
(233, 77, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(234, 77, '_menu_item_xfn', ''),
(235, 77, '_menu_item_url', ''),
(237, 78, '_menu_item_type', 'post_type'),
(238, 78, '_menu_item_menu_item_parent', '0'),
(239, 78, '_menu_item_object_id', '43'),
(240, 78, '_menu_item_object', 'page'),
(241, 78, '_menu_item_target', ''),
(242, 78, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(243, 78, '_menu_item_xfn', ''),
(244, 78, '_menu_item_url', ''),
(255, 80, '_menu_item_type', 'post_type'),
(256, 80, '_menu_item_menu_item_parent', '86'),
(257, 80, '_menu_item_object_id', '72'),
(258, 80, '_menu_item_object', 'page'),
(259, 80, '_menu_item_target', ''),
(260, 80, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(261, 80, '_menu_item_xfn', ''),
(262, 80, '_menu_item_url', ''),
(273, 82, '_menu_item_type', 'taxonomy'),
(274, 82, '_menu_item_menu_item_parent', '0'),
(275, 82, '_menu_item_object_id', '4'),
(276, 82, '_menu_item_object', 'category'),
(277, 82, '_menu_item_target', ''),
(278, 82, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(279, 82, '_menu_item_xfn', ''),
(280, 82, '_menu_item_url', ''),
(282, 83, '_menu_item_type', 'taxonomy'),
(283, 83, '_menu_item_menu_item_parent', '82'),
(284, 83, '_menu_item_object_id', '6'),
(285, 83, '_menu_item_object', 'category'),
(286, 83, '_menu_item_target', ''),
(287, 83, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(288, 83, '_menu_item_xfn', ''),
(289, 83, '_menu_item_url', ''),
(291, 84, '_menu_item_type', 'taxonomy'),
(292, 84, '_menu_item_menu_item_parent', '82'),
(293, 84, '_menu_item_object_id', '7'),
(294, 84, '_menu_item_object', 'category'),
(295, 84, '_menu_item_target', ''),
(296, 84, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(297, 84, '_menu_item_xfn', ''),
(298, 84, '_menu_item_url', ''),
(300, 85, '_menu_item_type', 'taxonomy'),
(301, 85, '_menu_item_menu_item_parent', '84'),
(302, 85, '_menu_item_object_id', '8'),
(303, 85, '_menu_item_object', 'category'),
(304, 85, '_menu_item_target', ''),
(305, 85, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(306, 85, '_menu_item_xfn', ''),
(307, 85, '_menu_item_url', ''),
(309, 86, '_menu_item_type', 'post_type'),
(310, 86, '_menu_item_menu_item_parent', '0'),
(311, 86, '_menu_item_object_id', '2'),
(312, 86, '_menu_item_object', 'page'),
(313, 86, '_menu_item_target', ''),
(314, 86, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(315, 86, '_menu_item_xfn', ''),
(316, 86, '_menu_item_url', ''),
(318, 87, '_menu_item_type', 'post_type'),
(319, 87, '_menu_item_menu_item_parent', '84'),
(320, 87, '_menu_item_object_id', '72'),
(321, 87, '_menu_item_object', 'page'),
(322, 87, '_menu_item_target', ''),
(323, 87, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(324, 87, '_menu_item_xfn', ''),
(325, 87, '_menu_item_url', ''),
(330, 95, '_menu_item_type', 'post_type'),
(331, 95, '_menu_item_menu_item_parent', '0'),
(332, 95, '_menu_item_object_id', '2'),
(333, 95, '_menu_item_object', 'page'),
(334, 95, '_menu_item_target', ''),
(335, 95, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(336, 95, '_menu_item_xfn', ''),
(337, 95, '_menu_item_url', ''),
(338, 96, '_menu_item_type', 'post_type'),
(339, 96, '_menu_item_menu_item_parent', '0'),
(340, 96, '_menu_item_object_id', '43'),
(341, 96, '_menu_item_object', 'page'),
(342, 96, '_menu_item_target', ''),
(343, 96, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(344, 96, '_menu_item_xfn', ''),
(345, 96, '_menu_item_url', ''),
(346, 97, '_menu_item_type', 'taxonomy'),
(347, 97, '_menu_item_menu_item_parent', '0'),
(348, 97, '_menu_item_object_id', '6'),
(349, 97, '_menu_item_object', 'category'),
(350, 97, '_menu_item_target', ''),
(351, 97, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(352, 97, '_menu_item_xfn', ''),
(353, 97, '_menu_item_url', ''),
(354, 98, '_menu_item_type', 'taxonomy'),
(355, 98, '_menu_item_menu_item_parent', '97'),
(356, 98, '_menu_item_object_id', '7'),
(357, 98, '_menu_item_object', 'category'),
(358, 98, '_menu_item_target', ''),
(359, 98, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(360, 98, '_menu_item_xfn', ''),
(361, 98, '_menu_item_url', ''),
(362, 99, '_menu_item_type', 'taxonomy'),
(363, 99, '_menu_item_menu_item_parent', '97'),
(364, 99, '_menu_item_object_id', '4'),
(365, 99, '_menu_item_object', 'category'),
(366, 99, '_menu_item_target', ''),
(367, 99, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(368, 99, '_menu_item_xfn', ''),
(369, 99, '_menu_item_url', ''),
(370, 100, '_menu_item_type', 'taxonomy'),
(371, 100, '_menu_item_menu_item_parent', '97'),
(372, 100, '_menu_item_object_id', '8'),
(373, 100, '_menu_item_object', 'category'),
(374, 100, '_menu_item_target', ''),
(375, 100, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(376, 100, '_menu_item_xfn', ''),
(377, 100, '_menu_item_url', ''),
(380, 102, '_edit_lock', '1527775508:1'),
(381, 102, '_edit_last', '1'),
(382, 103, '_menu_item_type', 'post_type'),
(383, 103, '_menu_item_menu_item_parent', '0'),
(384, 103, '_menu_item_object_id', '102'),
(385, 103, '_menu_item_object', 'page'),
(386, 103, '_menu_item_target', ''),
(387, 103, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(388, 103, '_menu_item_xfn', ''),
(389, 103, '_menu_item_url', ''),
(390, 105, '_edit_lock', '1527598705:1'),
(391, 105, '_edit_last', '1'),
(392, 106, '_menu_item_type', 'post_type'),
(393, 106, '_menu_item_menu_item_parent', '0'),
(394, 106, '_menu_item_object_id', '105'),
(395, 106, '_menu_item_object', 'page'),
(396, 106, '_menu_item_target', ''),
(397, 106, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(398, 106, '_menu_item_xfn', ''),
(399, 106, '_menu_item_url', ''),
(400, 108, '_edit_lock', '1527600891:1'),
(401, 108, '_edit_last', '1'),
(402, 109, '_menu_item_type', 'post_type'),
(403, 109, '_menu_item_menu_item_parent', '0'),
(404, 109, '_menu_item_object_id', '108'),
(405, 109, '_menu_item_object', 'page'),
(406, 109, '_menu_item_target', ''),
(407, 109, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(408, 109, '_menu_item_xfn', ''),
(409, 109, '_menu_item_url', ''),
(410, 111, '_edit_lock', '1527600922:1'),
(411, 111, '_edit_last', '1'),
(412, 113, '_edit_lock', '1527600969:1'),
(413, 113, '_edit_last', '1'),
(414, 115, '_menu_item_type', 'post_type'),
(415, 115, '_menu_item_menu_item_parent', '0'),
(416, 115, '_menu_item_object_id', '105'),
(417, 115, '_menu_item_object', 'page'),
(418, 115, '_menu_item_target', ''),
(419, 115, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(420, 115, '_menu_item_xfn', ''),
(421, 115, '_menu_item_url', ''),
(432, 117, '_menu_item_type', 'post_type'),
(433, 117, '_menu_item_menu_item_parent', '0'),
(434, 117, '_menu_item_object_id', '102'),
(435, 117, '_menu_item_object', 'page'),
(436, 117, '_menu_item_target', ''),
(437, 117, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(438, 117, '_menu_item_xfn', ''),
(439, 117, '_menu_item_url', ''),
(459, 120, '_menu_item_type', 'post_type'),
(460, 120, '_menu_item_menu_item_parent', '0'),
(461, 120, '_menu_item_object_id', '45'),
(462, 120, '_menu_item_object', 'page'),
(463, 120, '_menu_item_target', ''),
(464, 120, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(465, 120, '_menu_item_xfn', ''),
(466, 120, '_menu_item_url', ''),
(468, 121, '_menu_item_type', 'post_type'),
(469, 121, '_menu_item_menu_item_parent', '0'),
(470, 121, '_menu_item_object_id', '105'),
(471, 121, '_menu_item_object', 'page'),
(472, 121, '_menu_item_target', ''),
(473, 121, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(474, 121, '_menu_item_xfn', ''),
(475, 121, '_menu_item_url', ''),
(477, 122, '_menu_item_type', 'post_type'),
(478, 122, '_menu_item_menu_item_parent', '0'),
(479, 122, '_menu_item_object_id', '102'),
(480, 122, '_menu_item_object', 'page'),
(481, 122, '_menu_item_target', ''),
(482, 122, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(483, 122, '_menu_item_xfn', ''),
(484, 122, '_menu_item_url', ''),
(486, 123, '_menu_item_type', 'post_type'),
(487, 123, '_menu_item_menu_item_parent', '0'),
(488, 123, '_menu_item_object_id', '2'),
(489, 123, '_menu_item_object', 'page'),
(490, 123, '_menu_item_target', ''),
(491, 123, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(492, 123, '_menu_item_xfn', ''),
(493, 123, '_menu_item_url', ''),
(495, 124, '_menu_item_type', 'post_type'),
(496, 124, '_menu_item_menu_item_parent', '0'),
(497, 124, '_menu_item_object_id', '108'),
(498, 124, '_menu_item_object', 'page'),
(499, 124, '_menu_item_target', ''),
(500, 124, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(501, 124, '_menu_item_xfn', ''),
(502, 124, '_menu_item_url', ''),
(503, 124, '_menu_item_orphaned', '1527665351'),
(504, 125, '_menu_item_type', 'post_type'),
(505, 125, '_menu_item_menu_item_parent', '0'),
(506, 125, '_menu_item_object_id', '72'),
(507, 125, '_menu_item_object', 'page'),
(508, 125, '_menu_item_target', ''),
(509, 125, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(510, 125, '_menu_item_xfn', ''),
(511, 125, '_menu_item_url', ''),
(512, 125, '_menu_item_orphaned', '1527665351'),
(631, 140, '_menu_item_type', 'post_type'),
(633, 140, '_menu_item_menu_item_parent', '0'),
(635, 140, '_menu_item_object_id', '113'),
(637, 140, '_menu_item_object', 'page'),
(639, 140, '_menu_item_target', ''),
(641, 140, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(643, 140, '_menu_item_xfn', ''),
(645, 140, '_menu_item_url', ''),
(649, 142, '_menu_item_type', 'post_type'),
(651, 142, '_menu_item_menu_item_parent', '0'),
(654, 142, '_menu_item_object_id', '111'),
(656, 142, '_menu_item_object', 'page'),
(658, 142, '_menu_item_target', ''),
(660, 142, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(662, 142, '_menu_item_xfn', ''),
(663, 142, '_menu_item_url', ''),
(667, 144, '_menu_item_type', 'post_type'),
(669, 144, '_menu_item_menu_item_parent', '0'),
(671, 144, '_menu_item_object_id', '108'),
(672, 144, '_menu_item_object', 'page'),
(674, 144, '_menu_item_target', ''),
(676, 144, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(678, 144, '_menu_item_xfn', ''),
(680, 144, '_menu_item_url', ''),
(684, 145, '_menu_item_type', 'post_type'),
(685, 145, '_menu_item_menu_item_parent', '0'),
(687, 145, '_menu_item_object_id', '72'),
(689, 145, '_menu_item_object', 'page'),
(691, 145, '_menu_item_target', ''),
(693, 145, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(695, 145, '_menu_item_xfn', ''),
(697, 145, '_menu_item_url', ''),
(702, 147, '_menu_item_type', 'post_type'),
(703, 147, '_menu_item_menu_item_parent', '0'),
(704, 147, '_menu_item_object_id', '45'),
(705, 147, '_menu_item_object', 'page'),
(706, 147, '_menu_item_target', ''),
(707, 147, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(708, 147, '_menu_item_xfn', ''),
(709, 147, '_menu_item_url', ''),
(711, 148, '_menu_item_type', 'post_type'),
(712, 148, '_menu_item_menu_item_parent', '0'),
(713, 148, '_menu_item_object_id', '43'),
(714, 148, '_menu_item_object', 'page'),
(715, 148, '_menu_item_target', ''),
(716, 148, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(717, 148, '_menu_item_xfn', ''),
(718, 148, '_menu_item_url', ''),
(720, 149, '_menu_item_type', 'post_type'),
(721, 149, '_menu_item_menu_item_parent', '0'),
(722, 149, '_menu_item_object_id', '2'),
(723, 149, '_menu_item_object', 'page'),
(724, 149, '_menu_item_target', ''),
(725, 149, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(726, 149, '_menu_item_xfn', ''),
(727, 149, '_menu_item_url', ''),
(729, 150, '_menu_item_type', 'post_type'),
(730, 150, '_menu_item_menu_item_parent', '0'),
(731, 150, '_menu_item_object_id', '2'),
(732, 150, '_menu_item_object', 'page'),
(733, 150, '_menu_item_target', ''),
(734, 150, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(735, 150, '_menu_item_xfn', ''),
(736, 150, '_menu_item_url', ''),
(738, 151, '_edit_last', '1'),
(739, 152, '_menu_item_type', 'post_type'),
(740, 152, '_menu_item_menu_item_parent', '0'),
(741, 152, '_menu_item_object_id', '151'),
(742, 152, '_menu_item_object', 'page'),
(743, 152, '_menu_item_target', ''),
(744, 152, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(745, 152, '_menu_item_xfn', ''),
(746, 152, '_menu_item_url', ''),
(747, 151, '_edit_lock', '1528454357:1'),
(748, 154, '_edit_last', '1'),
(749, 155, '_menu_item_type', 'post_type'),
(750, 155, '_menu_item_menu_item_parent', '0'),
(751, 155, '_menu_item_object_id', '154'),
(752, 155, '_menu_item_object', 'page'),
(753, 155, '_menu_item_target', ''),
(754, 155, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(755, 155, '_menu_item_xfn', ''),
(756, 155, '_menu_item_url', ''),
(757, 154, '_edit_lock', '1528716977:1'),
(758, 157, '_menu_item_type', 'post_type'),
(759, 157, '_menu_item_menu_item_parent', '0'),
(760, 157, '_menu_item_object_id', '154'),
(761, 157, '_menu_item_object', 'page'),
(762, 157, '_menu_item_target', ''),
(763, 157, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(764, 157, '_menu_item_xfn', ''),
(765, 157, '_menu_item_url', ''),
(767, 158, '_menu_item_type', 'post_type'),
(768, 158, '_menu_item_menu_item_parent', '0'),
(769, 158, '_menu_item_object_id', '151'),
(770, 158, '_menu_item_object', 'page'),
(771, 158, '_menu_item_target', ''),
(772, 158, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(773, 158, '_menu_item_xfn', ''),
(774, 158, '_menu_item_url', ''),
(776, 159, '_edit_lock', '1527764010:1'),
(777, 159, '_edit_last', '1'),
(778, 160, '_edit_lock', '1527763982:1'),
(779, 160, '_edit_last', '1'),
(780, 161, '_edit_lock', '1527764991:1'),
(781, 161, '_edit_last', '1'),
(783, 168, '_edit_lock', '1527747605:1'),
(784, 168, '_edit_last', '1'),
(785, 161, 'event_date', '20180615'),
(786, 161, '_event_date', 'field_5b0f82cc0e55a'),
(787, 160, 'event_date', '20180725'),
(788, 160, '_event_date', 'field_5b0f82cc0e55a'),
(789, 159, 'event_date', '20180524'),
(790, 159, '_event_date', 'field_5b0f82cc0e55a'),
(793, 161, 'event_picture', '15'),
(794, 161, '_event_picture', 'field_5b0f953605540'),
(801, 173, '_edit_lock', '1528362221:1'),
(802, 173, '_edit_last', '1'),
(803, 174, '_menu_item_type', 'post_type'),
(804, 174, '_menu_item_menu_item_parent', '0'),
(805, 174, '_menu_item_object_id', '173'),
(806, 174, '_menu_item_object', 'page'),
(807, 174, '_menu_item_target', ''),
(808, 174, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(809, 174, '_menu_item_xfn', ''),
(810, 174, '_menu_item_url', ''),
(811, 176, '_edit_lock', '1528269660:1'),
(812, 176, '_edit_last', '1'),
(813, 176, 'event_date', '20170511'),
(814, 176, '_event_date', 'field_5b0f82cc0e55a'),
(815, 177, '_edit_lock', '1528108151:1'),
(816, 177, '_edit_last', '1'),
(817, 178, '_edit_lock', '1528108181:1'),
(818, 178, '_edit_last', '1'),
(819, 179, '_edit_lock', '1528108091:1'),
(820, 179, '_edit_last', '1'),
(821, 181, '_edit_lock', '1528120841:1'),
(822, 181, '_edit_last', '1'),
(823, 182, '_edit_lock', '1527762554:1'),
(824, 182, '_edit_last', '1'),
(825, 176, 'related_program', 'a:2:{i:0;s:3:\"177\";i:1;s:3:\"181\";}'),
(826, 176, '_related_program', 'field_5b0fba8d54a50'),
(827, 160, 'related_program', 'a:2:{i:0;s:3:\"179\";i:1;s:3:\"177\";}'),
(828, 160, '_related_program', 'field_5b0fba8d54a50'),
(829, 184, '_edit_lock', '1528542973:1'),
(830, 184, '_edit_last', '1'),
(831, 185, '_edit_lock', '1528274699:1'),
(832, 185, '_edit_last', '1'),
(833, 186, '_edit_lock', '1528282559:1'),
(834, 186, '_edit_last', '1'),
(835, 186, 'related_program', 'a:3:{i:0;s:3:\"177\";i:1;s:3:\"178\";i:2;s:3:\"225\";}'),
(836, 186, '_related_program', 'field_5b0fba8d54a50'),
(837, 184, 'related_program', 'a:2:{i:0;s:3:\"181\";i:1;s:3:\"178\";}'),
(838, 184, '_related_program', 'field_5b0fba8d54a50'),
(839, 185, 'related_program', 'a:2:{i:0;s:3:\"179\";i:1;s:3:\"225\";}'),
(840, 185, '_related_program', 'field_5b0fba8d54a50'),
(841, 159, 'related_program', 'a:1:{i:0;s:3:\"178\";}'),
(842, 159, '_related_program', 'field_5b0fba8d54a50'),
(843, 161, 'related_program', 'a:1:{i:0;s:3:\"178\";}'),
(844, 161, '_related_program', 'field_5b0fba8d54a50'),
(845, 189, '_wp_attached_file', '2018/05/barksalot.jpg'),
(846, 189, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:260;s:4:\"file\";s:21:\"2018/05/barksalot.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"barksalot-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"barksalot-300x195.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:195;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(847, 190, '_wp_attached_file', '2018/05/meowsalot.jpg'),
(848, 190, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:260;s:4:\"file\";s:21:\"2018/05/meowsalot.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"meowsalot-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"meowsalot-300x195.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:195;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(849, 186, '_thumbnail_id', '190'),
(852, 192, '_wp_attached_file', '2018/05/apples.jpg'),
(853, 192, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:800;s:4:\"file\";s:18:\"2018/05/apples.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"apples-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"apples-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"apples-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"apples-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"professorLandScapImage\";a:4:{s:4:\"file\";s:18:\"apples-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"professorPotraitImage\";a:4:{s:4:\"file\";s:18:\"apples-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(854, 185, '_thumbnail_id', '192'),
(855, 184, '_thumbnail_id', '189'),
(856, 193, '_edit_lock', '1528542830:1'),
(857, 193, '_edit_last', '1'),
(858, 194, '_wp_attached_file', '2018/05/bus.jpg'),
(859, 194, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:800;s:4:\"file\";s:15:\"2018/05/bus.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"bus-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"bus-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"bus-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"bus-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"professorLandScapImage\";a:4:{s:4:\"file\";s:15:\"bus-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"professorPotraitImage\";a:4:{s:4:\"file\";s:15:\"bus-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(860, 193, '_thumbnail_id', '194'),
(861, 193, 'related_program', ''),
(862, 193, '_related_program', 'field_5b0fba8d54a50'),
(864, 196, '_edit_lock', '1527772557:1'),
(865, 196, '_edit_last', '1'),
(866, 186, 'page_banner_subtitle', 'The leading voice in math and Physics.'),
(867, 186, '_page_banner_subtitle', 'field_5b0ff33fb8c6f'),
(868, 186, 'page_banner_background_image', '200'),
(869, 186, '_page_banner_background_image', 'field_5b0ff355b8c70'),
(870, 199, '_wp_attached_file', '2018/05/sec-10-2-4-frog-bio.jpg'),
(871, 199, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:7598;s:6:\"height\";i:5933;s:4:\"file\";s:31:\"2018/05/sec-10-2-4-frog-bio.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"sec-10-2-4-frog-bio-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"sec-10-2-4-frog-bio-300x234.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:234;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"sec-10-2-4-frog-bio-768x600.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"sec-10-2-4-frog-bio-1024x800.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"professorLandScapImage\";a:4:{s:4:\"file\";s:31:\"sec-10-2-4-frog-bio-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"professorPotraitImage\";a:4:{s:4:\"file\";s:31:\"sec-10-2-4-frog-bio-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"pageBanner\";a:4:{s:4:\"file\";s:32:\"sec-10-2-4-frog-bio-1500x300.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(872, 200, '_wp_attached_file', '2018/05/sec-10-4-field.jpg'),
(873, 200, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2784;s:6:\"height\";i:1856;s:4:\"file\";s:26:\"2018/05/sec-10-4-field.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"sec-10-4-field-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"sec-10-4-field-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"sec-10-4-field-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"sec-10-4-field-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"professorLandScapImage\";a:4:{s:4:\"file\";s:26:\"sec-10-4-field-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"professorPotraitImage\";a:4:{s:4:\"file\";s:26:\"sec-10-4-field-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"pageBanner\";a:4:{s:4:\"file\";s:27:\"sec-10-4-field-1500x300.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:15:\"micSelectedArea\";a:1:{s:10:\"pageBanner\";a:5:{s:1:\"x\";s:1:\"0\";s:1:\"y\";s:3:\"209\";s:1:\"w\";s:3:\"500\";s:1:\"h\";s:3:\"100\";s:5:\"scale\";s:5:\"5.568\";}}}'),
(874, 201, '_wp_attached_file', '2018/05/sec-11-2-1-notebook.jpg'),
(875, 201, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4592;s:6:\"height\";i:3448;s:4:\"file\";s:31:\"2018/05/sec-11-2-1-notebook.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"sec-11-2-1-notebook-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"sec-11-2-1-notebook-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"sec-11-2-1-notebook-768x577.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:577;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"sec-11-2-1-notebook-1024x769.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:769;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"professorLandScapImage\";a:4:{s:4:\"file\";s:31:\"sec-11-2-1-notebook-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"professorPotraitImage\";a:4:{s:4:\"file\";s:31:\"sec-11-2-1-notebook-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"pageBanner\";a:4:{s:4:\"file\";s:32:\"sec-11-2-1-notebook-1500x300.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(876, 102, 'page_banner_subtitle', 'This is subtitle of about Page.'),
(877, 102, '_page_banner_subtitle', 'field_5b0ff33fb8c6f'),
(878, 102, 'page_banner_background_image', '201'),
(879, 102, '_page_banner_background_image', 'field_5b0ff355b8c70'),
(880, 202, 'page_banner_subtitle', 'This is subtitle of about Page.'),
(881, 202, '_page_banner_subtitle', 'field_5b0ff33fb8c6f'),
(882, 202, 'page_banner_background_image', '201'),
(883, 202, '_page_banner_background_image', 'field_5b0ff355b8c70'),
(884, 203, '_edit_lock', '1528115542:1'),
(885, 203, '_edit_last', '1'),
(886, 203, 'page_banner_subtitle', 'This is downtown west Subtitle.'),
(887, 203, '_page_banner_subtitle', 'field_5b0ff33fb8c6f'),
(888, 203, 'page_banner_background_image', ''),
(889, 203, '_page_banner_background_image', 'field_5b0ff355b8c70'),
(890, 204, '_edit_lock', '1527846899:1'),
(891, 204, '_edit_last', '1'),
(892, 204, 'page_banner_subtitle', 'This is downtown East Subtitle.'),
(893, 204, '_page_banner_subtitle', 'field_5b0ff33fb8c6f'),
(894, 204, 'page_banner_background_image', ''),
(895, 204, '_page_banner_background_image', 'field_5b0ff355b8c70'),
(896, 206, '_edit_lock', '1527834648:1'),
(897, 206, '_edit_last', '1'),
(898, 204, 'map_location', 'a:3:{s:7:\"address\";s:47:\"A-36, Sarkhej, Ahmedabad, Gujarat 380054, India\";s:3:\"lat\";s:18:\"22.990996179860346\";s:3:\"lng\";s:17:\"72.48747597390707\";}'),
(899, 204, '_map_location', 'field_5b10d76b3fb8d'),
(900, 203, 'map_location', 'a:3:{s:7:\"address\";s:59:\"10, Science City Rd, Sola, Ahmedabad, Gujarat 380060, India\";s:3:\"lat\";s:18:\"23.080521368328828\";s:3:\"lng\";s:17:\"72.49757766723633\";}'),
(901, 203, '_map_location', 'field_5b10d76b3fb8d'),
(902, 209, '_edit_lock', '1530170983:1'),
(903, 209, '_edit_last', '1'),
(905, 177, 'page_banner_subtitle', ''),
(906, 177, '_page_banner_subtitle', 'field_5b0ff33fb8c6f'),
(907, 177, 'page_banner_background_image', ''),
(908, 177, '_page_banner_background_image', 'field_5b0ff355b8c70'),
(909, 177, 'related_campus', 'a:1:{i:0;s:3:\"204\";}'),
(910, 177, '_related_campus', 'field_5b15141a7f94d'),
(911, 178, 'page_banner_subtitle', ''),
(912, 178, '_page_banner_subtitle', 'field_5b0ff33fb8c6f'),
(913, 178, 'page_banner_background_image', ''),
(914, 178, '_page_banner_background_image', 'field_5b0ff355b8c70'),
(915, 178, 'related_campus', 'a:1:{i:0;s:3:\"203\";}'),
(916, 178, '_related_campus', 'field_5b15141a7f94d'),
(917, 213, '_edit_lock', '1528265119:1'),
(918, 213, '_edit_last', '1'),
(919, 213, 'map_location', 'a:3:{s:7:\"address\";s:12:\"Delhi, India\";s:3:\"lat\";s:17:\"28.68627380000001\";s:3:\"lng\";s:17:\"77.22178310000004\";}'),
(920, 213, '_map_location', 'field_5b10d76b3fb8d'),
(921, 213, 'page_banner_subtitle', ''),
(922, 213, '_page_banner_subtitle', 'field_5b0ff33fb8c6f'),
(923, 213, 'page_banner_background_image', ''),
(924, 213, '_page_banner_background_image', 'field_5b0ff355b8c70'),
(925, 181, 'page_banner_subtitle', ''),
(926, 181, '_page_banner_subtitle', 'field_5b0ff33fb8c6f'),
(927, 181, 'page_banner_background_image', ''),
(928, 181, '_page_banner_background_image', 'field_5b0ff355b8c70'),
(929, 181, 'related_campus', 'a:1:{i:0;s:3:\"213\";}'),
(930, 181, '_related_campus', 'field_5b15141a7f94d'),
(931, 214, '_edit_lock', '1528354202:1'),
(932, 214, '_edit_last', '1'),
(935, 214, 'page_banner_subtitle', ''),
(936, 214, '_page_banner_subtitle', 'field_5b0ff33fb8c6f'),
(937, 214, 'page_banner_background_image', ''),
(938, 214, '_page_banner_background_image', 'field_5b0ff355b8c70'),
(939, 215, 'page_banner_subtitle', ''),
(940, 215, '_page_banner_subtitle', 'field_5b0ff33fb8c6f'),
(941, 215, 'page_banner_background_image', ''),
(942, 215, '_page_banner_background_image', 'field_5b0ff355b8c70'),
(943, 62, 'page_banner_subtitle', ''),
(944, 62, '_page_banner_subtitle', 'field_5b0ff33fb8c6f'),
(945, 62, 'page_banner_background_image', ''),
(946, 62, '_page_banner_background_image', 'field_5b0ff355b8c70'),
(947, 218, 'page_banner_subtitle', ''),
(948, 218, '_page_banner_subtitle', 'field_5b0ff33fb8c6f'),
(949, 218, 'page_banner_background_image', ''),
(950, 218, '_page_banner_background_image', 'field_5b0ff355b8c70'),
(952, 222, '_edit_lock', '1528268043:1'),
(953, 222, '_edit_last', '1'),
(956, 222, 'page_banner_subtitle', ''),
(957, 222, '_page_banner_subtitle', 'field_5b0ff33fb8c6f'),
(958, 222, 'page_banner_background_image', ''),
(959, 222, '_page_banner_background_image', 'field_5b0ff355b8c70'),
(960, 223, 'page_banner_subtitle', ''),
(961, 223, '_page_banner_subtitle', 'field_5b0ff33fb8c6f'),
(962, 223, 'page_banner_background_image', ''),
(963, 223, '_page_banner_background_image', 'field_5b0ff355b8c70'),
(964, 176, 'page_banner_subtitle', ''),
(965, 176, '_page_banner_subtitle', 'field_5b0ff33fb8c6f'),
(966, 176, 'page_banner_background_image', ''),
(967, 176, '_page_banner_background_image', 'field_5b0ff355b8c70'),
(968, 225, '_edit_lock', '1530171692:1'),
(969, 225, '_edit_last', '1'),
(970, 225, 'page_banner_subtitle', ''),
(971, 225, '_page_banner_subtitle', 'field_5b0ff33fb8c6f'),
(972, 225, 'page_banner_background_image', ''),
(973, 225, '_page_banner_background_image', 'field_5b0ff355b8c70'),
(974, 225, 'related_campus', 'a:1:{i:0;s:3:\"204\";}'),
(975, 225, '_related_campus', 'field_5b15141a7f94d'),
(976, 185, 'page_banner_subtitle', ''),
(977, 185, '_page_banner_subtitle', 'field_5b0ff33fb8c6f'),
(978, 185, 'page_banner_background_image', ''),
(979, 185, '_page_banner_background_image', 'field_5b0ff355b8c70'),
(980, 226, '_edit_last', '1'),
(981, 227, '_menu_item_type', 'post_type'),
(982, 227, '_menu_item_menu_item_parent', '0'),
(983, 227, '_menu_item_object_id', '226'),
(984, 227, '_menu_item_object', 'page'),
(985, 227, '_menu_item_target', ''),
(986, 227, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(987, 227, '_menu_item_xfn', ''),
(988, 227, '_menu_item_url', ''),
(989, 226, 'page_banner_subtitle', ''),
(990, 226, '_page_banner_subtitle', 'field_5b0ff33fb8c6f'),
(991, 226, 'page_banner_background_image', ''),
(992, 226, '_page_banner_background_image', 'field_5b0ff355b8c70'),
(993, 228, 'page_banner_subtitle', ''),
(994, 228, '_page_banner_subtitle', 'field_5b0ff33fb8c6f'),
(995, 228, 'page_banner_background_image', ''),
(996, 228, '_page_banner_background_image', 'field_5b0ff355b8c70'),
(997, 226, '_edit_lock', '1528280445:1'),
(1001, 45, 'page_banner_subtitle', ''),
(1002, 45, '_page_banner_subtitle', 'field_5b0ff33fb8c6f'),
(1003, 45, 'page_banner_background_image', ''),
(1004, 45, '_page_banner_background_image', 'field_5b0ff355b8c70'),
(1005, 93, 'page_banner_subtitle', ''),
(1006, 93, '_page_banner_subtitle', 'field_5b0ff33fb8c6f'),
(1007, 93, 'page_banner_background_image', ''),
(1008, 93, '_page_banner_background_image', 'field_5b0ff355b8c70'),
(1009, 229, '_menu_item_type', 'post_type'),
(1010, 229, '_menu_item_menu_item_parent', '0'),
(1011, 229, '_menu_item_object_id', '20'),
(1012, 229, '_menu_item_object', 'page'),
(1013, 229, '_menu_item_target', ''),
(1014, 229, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1015, 229, '_menu_item_xfn', ''),
(1016, 229, '_menu_item_url', ''),
(1017, 20, '_edit_lock', '1528347983:1'),
(1018, 20, '_wp_trash_meta_status', 'publish'),
(1019, 20, '_wp_trash_meta_time', '1528348132'),
(1020, 20, '_wp_desired_post_slug', 'a-homepage-section'),
(1021, 230, '_edit_lock', '1528354196:1'),
(1022, 230, '_edit_last', '1'),
(1025, 230, 'page_banner_subtitle', ''),
(1026, 230, '_page_banner_subtitle', 'field_5b0ff33fb8c6f'),
(1027, 230, 'page_banner_background_image', ''),
(1028, 230, '_page_banner_background_image', 'field_5b0ff355b8c70'),
(1029, 231, 'page_banner_subtitle', ''),
(1030, 231, '_page_banner_subtitle', 'field_5b0ff33fb8c6f'),
(1031, 231, 'page_banner_background_image', ''),
(1032, 231, '_page_banner_background_image', 'field_5b0ff355b8c70'),
(1033, 233, '_edit_lock', '1528354706:1'),
(1034, 233, '_edit_last', '1'),
(1035, 233, 'page_banner_subtitle', ''),
(1036, 233, '_page_banner_subtitle', 'field_5b0ff33fb8c6f'),
(1037, 233, 'page_banner_background_image', ''),
(1038, 233, '_page_banner_background_image', 'field_5b0ff355b8c70'),
(1039, 234, 'page_banner_subtitle', ''),
(1040, 234, '_page_banner_subtitle', 'field_5b0ff33fb8c6f'),
(1041, 234, 'page_banner_background_image', ''),
(1042, 234, '_page_banner_background_image', 'field_5b0ff355b8c70'),
(1043, 235, 'page_banner_subtitle', ''),
(1044, 235, '_page_banner_subtitle', 'field_5b0ff33fb8c6f'),
(1045, 235, 'page_banner_background_image', ''),
(1046, 235, '_page_banner_background_image', 'field_5b0ff355b8c70'),
(1047, 236, 'page_banner_subtitle', ''),
(1048, 236, '_page_banner_subtitle', 'field_5b0ff33fb8c6f'),
(1049, 236, 'page_banner_background_image', ''),
(1050, 236, '_page_banner_background_image', 'field_5b0ff355b8c70'),
(1051, 237, 'page_banner_subtitle', ''),
(1052, 237, '_page_banner_subtitle', 'field_5b0ff33fb8c6f'),
(1053, 237, 'page_banner_background_image', ''),
(1054, 237, '_page_banner_background_image', 'field_5b0ff355b8c70'),
(1057, 39, 'page_banner_subtitle', ''),
(1058, 39, '_page_banner_subtitle', 'field_5b0ff33fb8c6f'),
(1059, 39, 'page_banner_background_image', ''),
(1060, 39, '_page_banner_background_image', 'field_5b0ff355b8c70'),
(1061, 238, 'page_banner_subtitle', ''),
(1062, 238, '_page_banner_subtitle', 'field_5b0ff33fb8c6f'),
(1063, 238, 'page_banner_background_image', ''),
(1064, 238, '_page_banner_background_image', 'field_5b0ff355b8c70'),
(1069, 230, '_wp_trash_meta_status', 'publish'),
(1070, 230, '_wp_trash_meta_time', '1528355798'),
(1071, 230, '_wp_desired_post_slug', 'post-for-7-6-2018'),
(1072, 239, '_edit_lock', '1528432366:1'),
(1073, 239, '_edit_last', '1'),
(1074, 239, 'page_banner_subtitle', ''),
(1075, 239, '_page_banner_subtitle', 'field_5b0ff33fb8c6f'),
(1076, 239, 'page_banner_background_image', ''),
(1077, 239, '_page_banner_background_image', 'field_5b0ff355b8c70'),
(1078, 240, '_edit_lock', '1528360652:1'),
(1079, 240, '_edit_last', '1'),
(1080, 240, 'page_banner_subtitle', ''),
(1081, 240, '_page_banner_subtitle', 'field_5b0ff33fb8c6f'),
(1082, 240, 'page_banner_background_image', ''),
(1083, 240, '_page_banner_background_image', 'field_5b0ff355b8c70'),
(1084, 241, '_edit_lock', '1528434276:1');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1085, 241, '_edit_last', '1'),
(1086, 241, 'page_banner_subtitle', ''),
(1087, 241, '_page_banner_subtitle', 'field_5b0ff33fb8c6f'),
(1088, 241, 'page_banner_background_image', ''),
(1089, 241, '_page_banner_background_image', 'field_5b0ff355b8c70'),
(1090, 242, '_edit_last', '1'),
(1091, 243, '_menu_item_type', 'post_type'),
(1092, 243, '_menu_item_menu_item_parent', '0'),
(1093, 243, '_menu_item_object_id', '242'),
(1094, 243, '_menu_item_object', 'page'),
(1095, 243, '_menu_item_target', ''),
(1096, 243, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1097, 243, '_menu_item_xfn', ''),
(1098, 243, '_menu_item_url', ''),
(1099, 242, 'page_banner_subtitle', ''),
(1100, 242, '_page_banner_subtitle', 'field_5b0ff33fb8c6f'),
(1101, 242, 'page_banner_background_image', ''),
(1102, 242, '_page_banner_background_image', 'field_5b0ff355b8c70'),
(1103, 244, 'page_banner_subtitle', ''),
(1104, 244, '_page_banner_subtitle', 'field_5b0ff33fb8c6f'),
(1105, 244, 'page_banner_background_image', ''),
(1106, 244, '_page_banner_background_image', 'field_5b0ff355b8c70'),
(1107, 242, '_edit_lock', '1528433690:1'),
(1108, 245, '_edit_lock', '1528431726:1'),
(1109, 245, '_edit_last', '1'),
(1110, 246, '_menu_item_type', 'post_type'),
(1111, 246, '_menu_item_menu_item_parent', '0'),
(1112, 246, '_menu_item_object_id', '245'),
(1113, 246, '_menu_item_object', 'page'),
(1114, 246, '_menu_item_target', ''),
(1115, 246, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1116, 246, '_menu_item_xfn', ''),
(1117, 246, '_menu_item_url', ''),
(1118, 245, 'page_banner_subtitle', ''),
(1119, 245, '_page_banner_subtitle', 'field_5b0ff33fb8c6f'),
(1120, 245, 'page_banner_background_image', ''),
(1121, 245, '_page_banner_background_image', 'field_5b0ff355b8c70'),
(1122, 247, 'page_banner_subtitle', ''),
(1123, 247, '_page_banner_subtitle', 'field_5b0ff33fb8c6f'),
(1124, 247, 'page_banner_background_image', ''),
(1125, 247, '_page_banner_background_image', 'field_5b0ff355b8c70'),
(1126, 248, '_edit_lock', '1528432205:1'),
(1127, 248, '_edit_last', '1'),
(1128, 248, 'page_banner_subtitle', ''),
(1129, 248, '_page_banner_subtitle', 'field_5b0ff33fb8c6f'),
(1130, 248, 'page_banner_background_image', ''),
(1131, 248, '_page_banner_background_image', 'field_5b0ff355b8c70'),
(1146, 239, '_wp_old_slug', 'math-note-1__trashed'),
(1147, 241, '_wp_old_slug', 'english-note-1__trashed'),
(1148, 240, '_wp_old_slug', 'physics-note-1__trashed');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-05-28 09:47:14', '2018-05-28 09:47:14', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-05-28 09:47:14', '2018-05-28 09:47:14', '', 0, 'http://localhost/DeliciousCooking/?p=1', 0, 'post', '', 1),
(2, 1, '2018-05-28 09:47:14', '2018-05-28 09:47:14', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n\r\nAs a new WordPress user, you should go to <a href=\"http://localhost/DeliciousCooking/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-05-29 04:58:37', '2018-05-29 04:58:37', '', 0, 'http://localhost/DeliciousCooking/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-05-28 13:06:26', '0000-00-00 00:00:00', 'This is my quick Draft', 'Draft 1', '', 'draft', 'open', 'open', '', '', '', '', '2018-05-28 13:06:26', '2018-05-28 13:06:26', '', 0, 'http://localhost/DeliciousCooking/?p=3', 0, 'post', '', 0),
(13, 1, '2018-05-28 09:52:37', '2018-05-28 09:52:37', '', 'Espresso', '', 'inherit', 'open', 'closed', '', 'espresso', '', '', '2018-05-31 06:22:42', '2018-05-31 06:22:42', '', 161, 'http://localhost/DeliciousCooking/wp-content/uploads/2018/05/espresso-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2018-05-28 09:52:37', '2018-05-28 09:52:37', '', 'Sandwich', '', 'inherit', 'open', 'closed', '', 'sandwich', '', '', '2018-05-29 09:38:58', '2018-05-29 09:38:58', '', 53, 'http://localhost/DeliciousCooking/wp-content/uploads/2018/05/sandwich-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2018-05-28 09:52:37', '2018-05-28 09:52:37', '', 'Coffee', '', 'inherit', 'open', 'closed', '', 'coffee', '', '', '2018-05-31 06:26:25', '2018-05-31 06:26:25', '', 161, 'http://localhost/DeliciousCooking/wp-content/uploads/2018/05/coffee-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2018-05-28 09:52:38', '2018-05-28 09:52:38', 'This is an example of a homepage section. Homepage sections can be any page other than the homepage itself, including the page that shows your latest blog posts.', 'A homepage section', '', 'trash', 'closed', 'closed', '', 'a-homepage-section__trashed', '', '', '2018-06-07 05:08:52', '2018-06-07 05:08:52', '', 0, 'http://localhost/DeliciousCooking/?page_id=20', 0, 'page', '', 0),
(26, 1, '2018-05-28 09:52:38', '2018-05-28 09:52:38', 'This is an example of a homepage section. Homepage sections can be any page other than the homepage itself, including the page that shows your latest blog posts.', 'A homepage section', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2018-05-28 09:52:38', '2018-05-28 09:52:38', '', 20, 'http://localhost/DeliciousCooking/index.php/2018/05/28/20-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2018-05-28 09:52:39', '2018-05-28 09:52:39', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-05-28 09:52:39', '2018-05-28 09:52:39', '', 0, 'http://localhost/DeliciousCooking/index.php/2018/05/28/home/', 0, 'nav_menu_item', '', 0),
(31, 1, '2018-05-28 09:52:41', '2018-05-28 09:52:41', '', 'Yelp', '', 'publish', 'closed', 'closed', '', 'yelp', '', '', '2018-05-28 09:52:41', '2018-05-28 09:52:41', '', 0, 'http://localhost/DeliciousCooking/index.php/2018/05/28/yelp/', 0, 'nav_menu_item', '', 0),
(32, 1, '2018-05-28 09:52:42', '2018-05-28 09:52:42', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2018-05-28 09:52:42', '2018-05-28 09:52:42', '', 0, 'http://localhost/DeliciousCooking/index.php/2018/05/28/facebook/', 1, 'nav_menu_item', '', 0),
(33, 1, '2018-05-28 09:52:42', '2018-05-28 09:52:42', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2018-05-28 09:52:42', '2018-05-28 09:52:42', '', 0, 'http://localhost/DeliciousCooking/index.php/2018/05/28/twitter/', 2, 'nav_menu_item', '', 0),
(34, 1, '2018-05-28 09:52:43', '2018-05-28 09:52:43', '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2018-05-28 09:52:43', '2018-05-28 09:52:43', '', 0, 'http://localhost/DeliciousCooking/index.php/2018/05/28/instagram/', 3, 'nav_menu_item', '', 0),
(35, 1, '2018-05-28 09:52:43', '2018-05-28 09:52:43', '', 'Email', '', 'publish', 'closed', 'closed', '', 'email', '', '', '2018-05-28 09:52:43', '2018-05-28 09:52:43', '', 0, 'http://localhost/DeliciousCooking/index.php/2018/05/28/email/', 4, 'nav_menu_item', '', 0),
(37, 1, '2018-05-28 10:30:28', '2018-05-28 10:30:28', '<h3>Frozen Fruits &amp; Vegetables</h3>\r\nThese are picked at the peak of ripeness and then flash frozen to preserve optimal nutrition. They last for several months in the freezer and can be a very economical choice.\r\n<ul>\r\n 	<li><strong>Watch for Sodium:</strong> Compare the sodium content on the Nutrition Facts label and choose the product with the lowest amount. Sauces and seasonings can contain excess salt and add calories.</li>\r\n 	<li><strong>Watch for added sugar: </strong>Choose 100% frozen fruits without added sugars.</li>\r\n 	<li><strong>Delicious uses:</strong>\r\n<ul>\r\n 	<li>When you boil pasta, throw in some frozen veggies at the end of the cooking time for added nutrients and variety.</li>\r\n 	<li>Whip up a smoothie of frozen fruit, nonfat or low-fat milk and yogurt.</li>\r\n 	<li>Mix frozen berries into baked goods and oatmeal.</li>\r\n</ul>\r\n</li>\r\n</ul>', 'Fresh, Frozen or Canned Fruits and Vegetables', '', 'publish', 'open', 'open', '', 'fresh-frozen-or-canned-fruits-and-vegetables', '', '', '2018-05-28 10:30:28', '2018-05-28 10:30:28', '', 0, 'http://localhost/DeliciousCooking/?p=37', 0, 'post', '', 0),
(38, 1, '2018-05-28 10:30:28', '2018-05-28 10:30:28', '<h3>Frozen Fruits &amp; Vegetables</h3>\r\nThese are picked at the peak of ripeness and then flash frozen to preserve optimal nutrition. They last for several months in the freezer and can be a very economical choice.\r\n<ul>\r\n 	<li><strong>Watch for Sodium:</strong> Compare the sodium content on the Nutrition Facts label and choose the product with the lowest amount. Sauces and seasonings can contain excess salt and add calories.</li>\r\n 	<li><strong>Watch for added sugar: </strong>Choose 100% frozen fruits without added sugars.</li>\r\n 	<li><strong>Delicious uses:</strong>\r\n<ul>\r\n 	<li>When you boil pasta, throw in some frozen veggies at the end of the cooking time for added nutrients and variety.</li>\r\n 	<li>Whip up a smoothie of frozen fruit, nonfat or low-fat milk and yogurt.</li>\r\n 	<li>Mix frozen berries into baked goods and oatmeal.</li>\r\n</ul>\r\n</li>\r\n</ul>', 'Fresh, Frozen or Canned Fruits and Vegetables', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2018-05-28 10:30:28', '2018-05-28 10:30:28', '', 37, 'http://localhost/DeliciousCooking/index.php/2018/05/28/37-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2018-05-28 10:31:14', '2018-05-28 10:31:14', '<h3>Healthy Breakfasts To Go</h3>\r\nFor many of us, breakfast is something quick we grab as we\'re running out the door, or maybe even a meal we skip completely. It\'s easy to grab a packaged bar from the cupboard when we\'re in a rush, or think we\'ll make up for it at lunch. But oftentimes, packaged foods have added sugars and unhealthy fats, and won\'t keep you full and energized until lunch. Here are some homemade breakfast options that are better for you, and easy to make.\r\n<ul>\r\n 	<li><strong>Take muffins, for example.</strong> Instead of buying muffins at the coffee shop or grocery store (which can be jumbo-sized with little nutritional value) you can make your own muffins with healthy ingredients like fruit, nuts and whole wheat flour. Make them on a weekend and freeze them. Put one in your bag and it will be thawed and ready to eat by the time you get to work or school.</li>\r\n 	<li><strong>Instant oatmeal</strong> is a great option that\'s a quick whole grain and will keep you full. Buy packets at the store and make them at work using hot water from the coffee maker. Just be sure to compare labels and pick flavors low in added sugars.</li>\r\n 	<li><strong>Try a homemade smoothie.</strong><strong> </strong>Smoothies are a great way to increase your fruit intake, and they\'re easy to make. A basic smoothie is just frozen fruit, low-fat milk or yogurt and 100% fruit juice, processed together in a blender until smooth. Experiment with different fruits to find out what you like. You can even add fresh vegetables to the mix!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!</li>\r\n</ul>', 'Breakfast: Eating Healthy', '', 'publish', 'open', 'open', '', 'breakfast-eating-healthy-on-the-run', '', '', '2018-06-07 06:57:56', '2018-06-07 06:57:56', '', 0, 'http://localhost/DeliciousCooking/?p=39', 0, 'post', '', 0),
(40, 1, '2018-05-28 10:31:14', '2018-05-28 10:31:14', '<h3>Healthy Breakfasts To Go</h3>\r\nFor many of us, breakfast is something quick we grab as we\'re running out the door, or maybe even a meal we skip completely. It\'s easy to grab a packaged bar from the cupboard when we\'re in a rush, or think we\'ll make up for it at lunch. But oftentimes, packaged foods have added sugars and unhealthy fats, and won\'t keep you full and energized until lunch. Here are some homemade breakfast options that are better for you, and easy to make.\r\n<ul>\r\n 	<li><strong>Take muffins, for example.</strong> Instead of buying muffins at the coffee shop or grocery store (which can be jumbo-sized with little nutritional value) you can make your own muffins with healthy ingredients like fruit, nuts and whole wheat flour. Make them on a weekend and freeze them. Put one in your bag and it will be thawed and ready to eat by the time you get to work or school.</li>\r\n 	<li><strong>Instant oatmeal</strong> is a great option that\'s a quick whole grain and will keep you full. Buy packets at the store and make them at work using hot water from the coffee maker. Just be sure to compare labels and pick flavors low in added sugars.</li>\r\n 	<li><strong>Try a homemade smoothie.</strong><strong> </strong>Smoothies are a great way to increase your fruit intake, and they\'re easy to make. A basic smoothie is just frozen fruit, low-fat milk or yogurt and 100% fruit juice, processed together in a blender until smooth. Experiment with different fruits to find out what you like. You can even add fresh vegetables to the mix!</li>\r\n</ul>', 'Breakfast: Eating Healthy On The Run', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2018-05-28 10:31:14', '2018-05-28 10:31:14', '', 39, 'http://localhost/DeliciousCooking/index.php/2018/05/28/39-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2018-05-28 10:59:08', '2018-05-28 10:59:08', '<ul>\r\n 	<li><strong>Take muffins, for example.</strong> Instead of buying muffins at the coffee shop or grocery store (which can be jumbo-sized with little nutritional value) you can make your own muffins with healthy ingredients like fruit, nuts and whole wheat flour. Make them on a weekend and freeze them. Put one in your bag and it will be thawed and ready to eat by the time you get to work or school.</li>\r\n 	<li><strong>Instant oatmeal</strong> is a great option that’s a quick whole grain and will keep you full. Buy packets at the store and make them at work using hot water from the coffee maker. Just be sure to compare labels and pick flavors low in added sugars.</li>\r\n 	<li><strong>Try a homemade smoothie.</strong><strong> </strong>Smoothies are a great way to increase your fruit intake, and they’re easy to make. A basic smoothie is just frozen fruit, low-fat milk or yogurt and 100% fruit juice, processed together in a blender until smooth. Experiment with different fruits to find out what you like. You can even add fresh vegetables to the mix!</li>\r\n</ul>', 'Breakfast: Page1', '', 'publish', 'closed', 'closed', '', 'breakfast-page1', '', '', '2018-05-28 10:59:08', '2018-05-28 10:59:08', '', 0, 'http://localhost/DeliciousCooking/?page_id=43', 0, 'page', '', 0),
(44, 1, '2018-05-28 10:59:08', '2018-05-28 10:59:08', '<ul>\r\n 	<li><strong>Take muffins, for example.</strong> Instead of buying muffins at the coffee shop or grocery store (which can be jumbo-sized with little nutritional value) you can make your own muffins with healthy ingredients like fruit, nuts and whole wheat flour. Make them on a weekend and freeze them. Put one in your bag and it will be thawed and ready to eat by the time you get to work or school.</li>\r\n 	<li><strong>Instant oatmeal</strong> is a great option that’s a quick whole grain and will keep you full. Buy packets at the store and make them at work using hot water from the coffee maker. Just be sure to compare labels and pick flavors low in added sugars.</li>\r\n 	<li><strong>Try a homemade smoothie.</strong><strong> </strong>Smoothies are a great way to increase your fruit intake, and they’re easy to make. A basic smoothie is just frozen fruit, low-fat milk or yogurt and 100% fruit juice, processed together in a blender until smooth. Experiment with different fruits to find out what you like. You can even add fresh vegetables to the mix!</li>\r\n</ul>', 'Breakfast: Page1', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2018-05-28 10:59:08', '2018-05-28 10:59:08', '', 43, 'http://localhost/DeliciousCooking/index.php/2018/05/28/43-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2018-05-28 10:59:48', '2018-05-28 10:59:48', '&nbsp;\r\n\r\n<strong><img class=\"alignnone wp-image-14 size-medium\" src=\"http://localhost/DeliciousCooking/wp-content/uploads/2018/05/sandwich-1-300x180.jpg\" alt=\"\" width=\"300\" height=\"180\" /></strong>\r\n\r\n<strong>Watch for Sodium:</strong> Compare the sodium content on the Nutrition Facts label and choose the product with the lowest amount. Sauces and seasonings can contain excess salt and add calories.\r\n<ul>\r\n 	<li style=\"text-align: left;\"><strong>Watch for added sugar: </strong>Choose 100% frozen fruits without added sugars.</li>\r\n 	<li><strong>Delicious uses:</strong>\r\n<ul>\r\n 	<li style=\"text-align: left;\">When you boil pasta, throw in some frozen veggies at the end of the cooking time for added nutrients and variety.</li>\r\n 	<li style=\"text-align: left;\">Whip up a smoothie of frozen fruit, nonfat or low-fat milk and yogurt.</li>\r\n 	<li style=\"text-align: left;\">Mix frozen berries into baked goods and oatmeal.</li>\r\n</ul>\r\n</li>\r\n</ul>', 'Page 2', '', 'publish', 'closed', 'closed', '', 'page-2__trashed', '', '', '2018-06-07 05:07:39', '2018-06-07 05:07:39', '', 0, 'http://localhost/DeliciousCooking/?page_id=45', 0, 'page', '', 0),
(46, 1, '2018-05-28 10:59:48', '2018-05-28 10:59:48', '<ul>\r\n 	<li><strong>Watch for Sodium:</strong> Compare the sodium content on the Nutrition Facts label and choose the product with the lowest amount. Sauces and seasonings can contain excess salt and add calories.</li>\r\n 	<li><strong>Watch for added sugar: </strong>Choose 100% frozen fruits without added sugars.</li>\r\n 	<li><strong>Delicious uses:</strong>\r\n<ul>\r\n 	<li>When you boil pasta, throw in some frozen veggies at the end of the cooking time for added nutrients and variety.</li>\r\n 	<li>Whip up a smoothie of frozen fruit, nonfat or low-fat milk and yogurt.</li>\r\n 	<li>Mix frozen berries into baked goods and oatmeal.</li>\r\n</ul>\r\n</li>\r\n</ul>', 'Page 2', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2018-05-28 10:59:48', '2018-05-28 10:59:48', '', 45, 'http://localhost/DeliciousCooking/index.php/2018/05/28/45-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2018-05-28 13:06:26', '2018-05-28 13:06:26', 'This is my quick Draft', 'Draft 1', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-05-28 13:06:26', '2018-05-28 13:06:26', '', 3, 'http://localhost/DeliciousCooking/index.php/2018/05/28/3-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2018-05-28 13:18:12', '2018-05-28 13:18:12', '<blockquote>\r\n<p style=\"padding-left: 210px;\"><span style=\"color: #99cc00;\"><em><strong><img class=\"alignnone size-medium wp-image-14\" src=\"http://localhost/DeliciousCooking/wp-content/uploads/2018/05/sandwich-1-300x180.jpg\" alt=\"\" width=\"300\" height=\"180\" /></strong></em></span></p>\r\n<p style=\"padding-left: 210px;\"><span style=\"color: #99cc00;\"><em><strong>This is third post...</strong></em></span></p>\r\n</blockquote>', 'Post 3', '', 'publish', 'open', 'open', '', 'post-3', '', '', '2018-05-29 09:39:12', '2018-05-29 09:39:12', '', 0, 'http://localhost/DeliciousCooking/?p=53', 0, 'post', '', 3),
(55, 1, '2018-05-28 13:27:10', '2018-05-28 13:27:10', '', 'Post 3', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2018-05-28 13:27:10', '2018-05-28 13:27:10', '', 53, 'http://localhost/DeliciousCooking/index.php/2018/05/28/53-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2018-05-28 13:32:32', '2018-05-28 13:32:32', '<blockquote>\n<p style=\"padding-left: 210px;\"><span style=\"color: #99cc00;\"><em><strong>This is third post...</strong></em>.....</span></p>\n</blockquote>\n<!--more-->', 'Post 3', '', 'inherit', 'closed', 'closed', '', '53-autosave-v1', '', '', '2018-05-28 13:32:32', '2018-05-28 13:32:32', '', 53, 'http://localhost/DeliciousCooking/index.php/2018/05/28/53-autosave-v1/', 0, 'revision', '', 0),
(57, 1, '2018-05-28 13:29:29', '2018-05-28 13:29:29', 'This is third post........', 'Post 3', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2018-05-28 13:29:29', '2018-05-28 13:29:29', '', 53, 'http://localhost/DeliciousCooking/index.php/2018/05/28/53-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2018-05-28 13:34:09', '2018-05-28 13:34:09', '<blockquote>\r\n<p style=\"padding-left: 210px;\"><span style=\"color: #99cc00;\"><em><strong>This is third post...</strong></em>.....</span></p>\r\n\r\n<!--more--></blockquote>', 'Post 3', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2018-05-28 13:34:09', '2018-05-28 13:34:09', '', 53, 'http://localhost/DeliciousCooking/index.php/2018/05/28/53-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2018-05-28 13:35:06', '2018-05-28 13:35:06', '<blockquote>\r\n<p style=\"padding-left: 210px;\"><span style=\"color: #99cc00;\"><em><strong>This is third post...</strong></em></span></p>\r\n</blockquote>', 'Post 3', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2018-05-28 13:35:06', '2018-05-28 13:35:06', '', 53, 'http://localhost/DeliciousCooking/index.php/2018/05/28/53-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2018-05-29 05:30:23', '2018-05-29 05:30:23', 'This my schedule post 4', 'Post 4', 'This my schedule post 4 Excerpt..........', 'private', 'open', 'open', '', 'post-4', '', '', '2018-06-05 07:39:01', '2018-06-05 07:39:01', '', 0, 'http://localhost/DeliciousCooking/?p=62', 0, 'post', '', 0),
(63, 1, '2018-05-29 04:31:58', '2018-05-29 04:31:58', 'This my schedule post 4..........', 'Post 4', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2018-05-29 04:31:58', '2018-05-29 04:31:58', '', 62, 'http://localhost/DeliciousCooking/index.php/2018/05/29/62-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2018-05-29 04:33:28', '2018-05-29 04:33:28', 'http://localhost/DeliciousCooking/wp-content/uploads/2018/05/cropped-coffee-1.jpg', 'cropped-coffee-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-coffee-1-jpg', '', '', '2018-05-29 04:33:28', '2018-05-29 04:33:28', '', 0, 'http://localhost/DeliciousCooking/wp-content/uploads/2018/05/cropped-coffee-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2018-05-29 04:34:24', '2018-05-29 04:34:24', 'http://localhost/DeliciousCooking/wp-content/uploads/2018/05/cropped-coffee-1-1.jpg', 'cropped-coffee-1-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-coffee-1-1-jpg', '', '', '2018-05-29 04:34:24', '2018-05-29 04:34:24', '', 0, 'http://localhost/DeliciousCooking/wp-content/uploads/2018/05/cropped-coffee-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2018-05-29 04:35:47', '2018-05-29 04:35:47', 'http://localhost/DeliciousCooking/wp-content/uploads/2018/05/cropped-sandwich-1.jpg', 'cropped-sandwich-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-sandwich-1-jpg', '', '', '2018-05-29 04:35:47', '2018-05-29 04:35:47', '', 0, 'http://localhost/DeliciousCooking/wp-content/uploads/2018/05/cropped-sandwich-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2018-05-29 04:36:15', '2018-05-29 04:36:15', '', 'cropped-coffee-1-2.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-coffee-1-2-jpg', '', '', '2018-05-29 04:36:15', '2018-05-29 04:36:15', '', 0, 'http://localhost/DeliciousCooking/wp-content/uploads/2018/05/cropped-coffee-1-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2018-05-29 04:58:37', '2018-05-29 04:58:37', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n\r\nAs a new WordPress user, you should go to <a href=\"http://localhost/DeliciousCooking/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-05-29 04:58:37', '2018-05-29 04:58:37', '', 2, 'http://localhost/DeliciousCooking/index.php/2018/05/29/2-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2018-05-29 05:40:15', '2018-05-29 05:40:15', 'this my page 4................................', 'page 4', '', 'publish', 'closed', 'closed', '', 'page-4', '', '', '2018-05-29 05:45:56', '2018-05-29 05:45:56', '', 2, 'http://localhost/DeliciousCooking/?page_id=72', 0, 'page', '', 0),
(73, 1, '2018-05-29 05:30:31', '2018-05-29 05:30:31', 'this my page 4.......................................', 'page 4', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2018-05-29 05:30:31', '2018-05-29 05:30:31', '', 72, 'http://localhost/DeliciousCooking/index.php/2018/05/29/72-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2018-05-29 05:40:15', '2018-05-29 05:40:15', 'this my page 4................................', 'page 4', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2018-05-29 05:40:15', '2018-05-29 05:40:15', '', 72, 'http://localhost/DeliciousCooking/index.php/2018/05/29/72-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2018-05-29 07:33:49', '2018-05-29 07:33:49', '', 'Google', '', 'publish', 'closed', 'closed', '', 'google', '', '', '2018-05-29 07:37:04', '2018-05-29 07:37:04', '', 0, 'http://localhost/DeliciousCooking/?p=76', 1, 'nav_menu_item', '', 0),
(77, 1, '2018-05-29 07:35:31', '2018-05-29 07:35:31', ' ', '', '', 'publish', 'closed', 'closed', '', '77', '', '', '2018-05-29 07:37:05', '2018-05-29 07:37:05', '', 0, 'http://localhost/DeliciousCooking/?p=77', 5, 'nav_menu_item', '', 0),
(78, 1, '2018-05-29 07:35:31', '2018-05-29 07:35:31', ' ', '', '', 'publish', 'closed', 'closed', '', '78', '', '', '2018-05-29 07:37:05', '2018-05-29 07:37:05', '', 0, 'http://localhost/DeliciousCooking/?p=78', 4, 'nav_menu_item', '', 0),
(80, 1, '2018-05-29 07:35:31', '2018-05-29 07:35:31', ' ', '', '', 'publish', 'closed', 'closed', '', '80', '', '', '2018-05-29 07:37:05', '2018-05-29 07:37:05', '', 2, 'http://localhost/DeliciousCooking/?p=80', 3, 'nav_menu_item', '', 0),
(82, 1, '2018-05-29 07:37:05', '2018-05-29 07:37:05', 'vegetables are good for health.', '', '', 'publish', 'closed', 'closed', '', '82', '', '', '2018-05-29 07:37:05', '2018-05-29 07:37:05', '', 0, 'http://localhost/DeliciousCooking/?p=82', 6, 'nav_menu_item', '', 0),
(83, 1, '2018-05-29 07:37:05', '2018-05-29 07:37:05', 'vagetable child 1', '', '', 'publish', 'closed', 'closed', '', '83', '', '', '2018-05-29 07:37:05', '2018-05-29 07:37:05', '', 4, 'http://localhost/DeliciousCooking/?p=83', 7, 'nav_menu_item', '', 0),
(84, 1, '2018-05-29 07:37:05', '2018-05-29 07:37:05', 'vagetable child 2', '', '', 'publish', 'closed', 'closed', '', '84', '', '', '2018-05-29 07:37:05', '2018-05-29 07:37:05', '', 4, 'http://localhost/DeliciousCooking/?p=84', 8, 'nav_menu_item', '', 0),
(85, 1, '2018-05-29 07:37:06', '2018-05-29 07:37:06', 'vagetable child 3', '', '', 'publish', 'closed', 'closed', '', '85', '', '', '2018-05-29 07:37:06', '2018-05-29 07:37:06', '', 4, 'http://localhost/DeliciousCooking/?p=85', 9, 'nav_menu_item', '', 0),
(86, 1, '2018-05-29 07:37:05', '2018-05-29 07:37:05', ' ', '', '', 'publish', 'closed', 'closed', '', '86', '', '', '2018-05-29 07:37:05', '2018-05-29 07:37:05', '', 0, 'http://localhost/DeliciousCooking/?p=86', 2, 'nav_menu_item', '', 0),
(87, 1, '2018-05-29 07:37:06', '2018-05-29 07:37:06', ' ', '', '', 'publish', 'closed', 'closed', '', '87', '', '', '2018-05-29 07:37:06', '2018-05-29 07:37:06', '', 2, 'http://localhost/DeliciousCooking/?p=87', 10, 'nav_menu_item', '', 0),
(88, 1, '2018-05-29 09:39:12', '2018-05-29 09:39:12', '<blockquote>\r\n<p style=\"padding-left: 210px;\"><span style=\"color: #99cc00;\"><em><strong><img class=\"alignnone size-medium wp-image-14\" src=\"http://localhost/DeliciousCooking/wp-content/uploads/2018/05/sandwich-1-300x180.jpg\" alt=\"\" width=\"300\" height=\"180\" /></strong></em></span></p>\r\n<p style=\"padding-left: 210px;\"><span style=\"color: #99cc00;\"><em><strong>This is third post...</strong></em></span></p>\r\n</blockquote>', 'Post 3', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2018-05-29 09:39:12', '2018-05-29 09:39:12', '', 53, 'http://localhost/DeliciousCooking/index.php/2018/05/29/53-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2018-05-29 09:40:22', '2018-05-29 09:40:22', '<strong><img class=\"alignnone size-medium wp-image-14\" src=\"http://localhost/DeliciousCooking/wp-content/uploads/2018/05/sandwich-1-300x180.jpg\" alt=\"\" width=\"300\" height=\"180\" /></strong>\r\n<ul>\r\n 	<li><strong>Watch for Sodium:</strong> Compare the sodium content on the Nutrition Facts label and choose the product with the lowest amount. Sauces and seasonings can contain excess salt and add calories.</li>\r\n 	<li><strong>Watch for added sugar: </strong>Choose 100% frozen fruits without added sugars.</li>\r\n 	<li><strong>Delicious uses:</strong>\r\n<ul>\r\n 	<li>When you boil pasta, throw in some frozen veggies at the end of the cooking time for added nutrients and variety.</li>\r\n 	<li>Whip up a smoothie of frozen fruit, nonfat or low-fat milk and yogurt.</li>\r\n 	<li>Mix frozen berries into baked goods and oatmeal.</li>\r\n</ul>\r\n</li>\r\n</ul>', 'Page 2', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2018-05-29 09:40:22', '2018-05-29 09:40:22', '', 45, 'http://localhost/DeliciousCooking/index.php/2018/05/29/45-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2018-05-29 09:48:36', '2018-05-29 09:48:36', '&nbsp;\n\n<strong><img class=\"alignnone size-medium wp-image-14\" src=\"http://localhost/DeliciousCooking/wp-content/uploads/2018/05/sandwich-1-300x180.jpg\" alt=\"\" width=\"300\" height=\"180\" /></strong>\n\n<strong>Watch for Sodium:</strong> Compare the sodium content on the Nutrition Facts label and choose the product with the lowest amount. Sauces and seasonings can contain excess salt and add calories.\n<ul>\n 	<li style=\"text-align: left;\"><strong>Watch for added sugar: </strong>Choose 100% frozen fruits without added sugars.</li>\n 	<li><strong>Delicious uses:</strong>\n<ul>\n 	<li style=\"text-align: left;\">When you boil pasta, throw in some frozen veggies at the end of the cooking time for added nutrients and variety.</li>\n 	<li style=\"text-align: left;\">Whip up a smoothie of frozen fruit, nonfat or low-fat milk and yogurt.</li>\n 	<li style=\"text-align: left;\">Mix frozen berries into baked goods and oatmeal.</li>\n</ul>\n</li>\n</ul>', 'Page 2', '', 'inherit', 'closed', 'closed', '', '45-autosave-v1', '', '', '2018-05-29 09:48:36', '2018-05-29 09:48:36', '', 45, 'http://localhost/DeliciousCooking/index.php/2018/05/29/45-autosave-v1/', 0, 'revision', '', 0),
(91, 1, '2018-05-29 09:44:22', '2018-05-29 09:44:22', '<strong><a href=\"http://google.com\"><img class=\"aligncenter wp-image-14 size-medium\" title=\"Sandwich\" src=\"http://localhost/DeliciousCooking/wp-content/uploads/2018/05/sandwich-1-300x180.jpg\" alt=\"\" width=\"300\" height=\"180\" /></a></strong>\r\n<ul>\r\n 	<li style=\"text-align: left;\"><strong>Watch for Sodium:</strong> Compare the sodium content on the Nutrition Facts label and choose the product with the lowest amount. Sauces and seasonings can contain excess salt and add calories.</li>\r\n 	<li style=\"text-align: left;\"><strong>Watch for added sugar: </strong>Choose 100% frozen fruits without added sugars.</li>\r\n 	<li><strong>Delicious uses:</strong>\r\n<ul>\r\n 	<li style=\"text-align: left;\">When you boil pasta, throw in some frozen veggies at the end of the cooking time for added nutrients and variety.</li>\r\n 	<li style=\"text-align: left;\">Whip up a smoothie of frozen fruit, nonfat or low-fat milk and yogurt.</li>\r\n 	<li style=\"text-align: left;\">Mix frozen berries into baked goods and oatmeal.</li>\r\n</ul>\r\n</li>\r\n</ul>', 'Page 2', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2018-05-29 09:44:22', '2018-05-29 09:44:22', '', 45, 'http://localhost/DeliciousCooking/index.php/2018/05/29/45-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2018-05-29 09:48:59', '2018-05-29 09:48:59', '&nbsp;\r\n\r\n<strong><a href=\"https://www.google.com/\"><img class=\"alignnone wp-image-14 size-medium\" src=\"http://localhost/DeliciousCooking/wp-content/uploads/2018/05/sandwich-1-300x180.jpg\" alt=\"\" width=\"300\" height=\"180\" /></a></strong>\r\n\r\n<strong>Watch for Sodium:</strong> Compare the sodium content on the Nutrition Facts label and choose the product with the lowest amount. Sauces and seasonings can contain excess salt and add calories.\r\n<ul>\r\n 	<li style=\"text-align: left;\"><strong>Watch for added sugar: </strong>Choose 100% frozen fruits without added sugars.</li>\r\n 	<li><strong>Delicious uses:</strong>\r\n<ul>\r\n 	<li style=\"text-align: left;\">When you boil pasta, throw in some frozen veggies at the end of the cooking time for added nutrients and variety.</li>\r\n 	<li style=\"text-align: left;\">Whip up a smoothie of frozen fruit, nonfat or low-fat milk and yogurt.</li>\r\n 	<li style=\"text-align: left;\">Mix frozen berries into baked goods and oatmeal.</li>\r\n</ul>\r\n</li>\r\n</ul>', 'Page 2', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2018-05-29 09:48:59', '2018-05-29 09:48:59', '', 45, 'http://localhost/DeliciousCooking/index.php/2018/05/29/45-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2018-05-29 09:50:03', '2018-05-29 09:50:03', '&nbsp;\r\n\r\n<strong><img class=\"alignnone wp-image-14 size-medium\" src=\"http://localhost/DeliciousCooking/wp-content/uploads/2018/05/sandwich-1-300x180.jpg\" alt=\"\" width=\"300\" height=\"180\" /></strong>\r\n\r\n<strong>Watch for Sodium:</strong> Compare the sodium content on the Nutrition Facts label and choose the product with the lowest amount. Sauces and seasonings can contain excess salt and add calories.\r\n<ul>\r\n 	<li style=\"text-align: left;\"><strong>Watch for added sugar: </strong>Choose 100% frozen fruits without added sugars.</li>\r\n 	<li><strong>Delicious uses:</strong>\r\n<ul>\r\n 	<li style=\"text-align: left;\">When you boil pasta, throw in some frozen veggies at the end of the cooking time for added nutrients and variety.</li>\r\n 	<li style=\"text-align: left;\">Whip up a smoothie of frozen fruit, nonfat or low-fat milk and yogurt.</li>\r\n 	<li style=\"text-align: left;\">Mix frozen berries into baked goods and oatmeal.</li>\r\n</ul>\r\n</li>\r\n</ul>', 'Page 2', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2018-05-29 09:50:03', '2018-05-29 09:50:03', '', 45, 'http://localhost/DeliciousCooking/index.php/2018/05/29/45-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2018-05-29 10:19:05', '2018-05-29 10:19:05', ' ', '', '', 'publish', 'closed', 'closed', '', '95', '', '', '2018-05-29 10:19:05', '2018-05-29 10:19:05', '', 0, 'http://localhost/DeliciousCooking/index.php/2018/05/29/95/', 1, 'nav_menu_item', '', 0),
(96, 1, '2018-05-29 10:19:06', '2018-05-29 10:19:06', ' ', '', '', 'publish', 'closed', 'closed', '', '96', '', '', '2018-05-29 10:19:06', '2018-05-29 10:19:06', '', 0, 'http://localhost/DeliciousCooking/index.php/2018/05/29/96/', 2, 'nav_menu_item', '', 0),
(97, 1, '2018-05-29 10:19:06', '2018-05-29 10:19:06', ' ', '', '', 'publish', 'closed', 'closed', '', '97', '', '', '2018-05-29 10:19:06', '2018-05-29 10:19:06', '', 4, 'http://localhost/DeliciousCooking/index.php/2018/05/29/97/', 3, 'nav_menu_item', '', 0),
(98, 1, '2018-05-29 10:19:07', '2018-05-29 10:19:07', ' ', '', '', 'publish', 'closed', 'closed', '', '98', '', '', '2018-05-29 10:19:07', '2018-05-29 10:19:07', '', 4, 'http://localhost/DeliciousCooking/index.php/2018/05/29/98/', 5, 'nav_menu_item', '', 0),
(99, 1, '2018-05-29 10:19:07', '2018-05-29 10:19:07', ' ', '', '', 'publish', 'closed', 'closed', '', '99', '', '', '2018-05-29 10:19:07', '2018-05-29 10:19:07', '', 0, 'http://localhost/DeliciousCooking/index.php/2018/05/29/99/', 4, 'nav_menu_item', '', 0),
(100, 1, '2018-05-29 10:19:08', '2018-05-29 10:19:08', ' ', '', '', 'publish', 'closed', 'closed', '', '100', '', '', '2018-05-29 10:19:08', '2018-05-29 10:19:08', '', 4, 'http://localhost/DeliciousCooking/index.php/2018/05/29/100/', 6, 'nav_menu_item', '', 0),
(102, 1, '2018-05-29 12:59:48', '2018-05-29 12:59:48', 'This is about us content.<strong>Take muffins, for example.</strong> Instead of buying muffins at the coffee shop or grocery store (which can be jumbo-sized with little nutritional value) you can make your own muffins with healthy ingredients like fruit, nuts and whole wheat flour. Make them on a weekend and freeze them. Put one in your bag and it will be thawed and ready to eat by the time you get to work or school.<strong>Instant oatmeal</strong> is a great option that’s a quick whole grain and will keep you full. Buy packets at the store and make them at work using hot water from the coffee maker. Just be sure to compare labels and pick flavors low in added sugars.<strong>Try a homemade smoothie.</strong><strong> </strong>Smoothies are a great way to increase your fruit intake, and they’re easy to make. A basic smoothie is just frozen fruit, low-fat milk or yogurt and 100% fruit juice, processed together in a blender until smooth. Experiment with different fruits to find out what you like. You can even add fresh vegetables to the mix!', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2018-05-31 13:36:16', '2018-05-31 13:36:16', '', 0, 'http://localhost/DeliciousCooking/?page_id=102', 0, 'page', '', 0),
(103, 1, '2018-05-29 12:59:48', '2018-05-29 12:59:48', ' ', '', '', 'publish', 'closed', 'closed', '', '103', '', '', '2018-05-29 12:59:48', '2018-05-29 12:59:48', '', 0, 'http://localhost/DeliciousCooking/index.php/2018/05/29/103/', 11, 'nav_menu_item', '', 0),
(104, 1, '2018-05-29 12:59:48', '2018-05-29 12:59:48', 'This is about us content.<strong>Take muffins, for example.</strong> Instead of buying muffins at the coffee shop or grocery store (which can be jumbo-sized with little nutritional value) you can make your own muffins with healthy ingredients like fruit, nuts and whole wheat flour. Make them on a weekend and freeze them. Put one in your bag and it will be thawed and ready to eat by the time you get to work or school.<strong>Instant oatmeal</strong> is a great option that’s a quick whole grain and will keep you full. Buy packets at the store and make them at work using hot water from the coffee maker. Just be sure to compare labels and pick flavors low in added sugars.<strong>Try a homemade smoothie.</strong><strong> </strong>Smoothies are a great way to increase your fruit intake, and they’re easy to make. A basic smoothie is just frozen fruit, low-fat milk or yogurt and 100% fruit juice, processed together in a blender until smooth. Experiment with different fruits to find out what you like. You can even add fresh vegetables to the mix!', 'About Us', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2018-05-29 12:59:48', '2018-05-29 12:59:48', '', 102, 'http://localhost/DeliciousCooking/index.php/2018/05/29/102-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2018-05-29 13:00:25', '2018-05-29 13:00:25', 'This is Privacy Policy Content.<strong>Take muffins, for example.</strong> Instead of buying muffins at the coffee shop or grocery store (which can be jumbo-sized with little nutritional value) you can make your own muffins with healthy ingredients like fruit, nuts and whole wheat flour. Make them on a weekend and freeze them. Put one in your bag and it will be thawed and ready to eat by the time you get to work or school.<strong>Instant oatmeal</strong> is a great option that’s a quick whole grain and will keep you full. Buy packets at the store and make them at work using hot water from the coffee maker. Just be sure to compare labels and pick flavors low in added sugars.<strong>Try a homemade smoothie.</strong><strong> </strong>Smoothies are a great way to increase your fruit intake, and they’re easy to make. A basic smoothie is just frozen fruit, low-fat milk or yogurt and 100% fruit juice, processed together in a blender until smooth. Experiment with different fruits to find out what you like. You can even add fresh vegetables to the mix!', 'Privacy Policy', '', 'publish', 'closed', 'closed', '', 'privacy-policy', '', '', '2018-05-29 13:00:25', '2018-05-29 13:00:25', '', 0, 'http://localhost/DeliciousCooking/?page_id=105', 0, 'page', '', 0),
(106, 1, '2018-05-29 13:00:25', '2018-05-29 13:00:25', ' ', '', '', 'publish', 'closed', 'closed', '', '106', '', '', '2018-05-29 13:00:25', '2018-05-29 13:00:25', '', 0, 'http://localhost/DeliciousCooking/index.php/2018/05/29/106/', 12, 'nav_menu_item', '', 0),
(107, 1, '2018-05-29 13:00:25', '2018-05-29 13:00:25', 'This is Privacy Policy Content.<strong>Take muffins, for example.</strong> Instead of buying muffins at the coffee shop or grocery store (which can be jumbo-sized with little nutritional value) you can make your own muffins with healthy ingredients like fruit, nuts and whole wheat flour. Make them on a weekend and freeze them. Put one in your bag and it will be thawed and ready to eat by the time you get to work or school.<strong>Instant oatmeal</strong> is a great option that’s a quick whole grain and will keep you full. Buy packets at the store and make them at work using hot water from the coffee maker. Just be sure to compare labels and pick flavors low in added sugars.<strong>Try a homemade smoothie.</strong><strong> </strong>Smoothies are a great way to increase your fruit intake, and they’re easy to make. A basic smoothie is just frozen fruit, low-fat milk or yogurt and 100% fruit juice, processed together in a blender until smooth. Experiment with different fruits to find out what you like. You can even add fresh vegetables to the mix!', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2018-05-29 13:00:25', '2018-05-29 13:00:25', '', 105, 'http://localhost/DeliciousCooking/index.php/2018/05/29/105-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2018-05-29 13:37:03', '2018-05-29 13:37:03', 'This is Our History Content.This is about us content.<strong>Take muffins, for example.</strong> Instead of buying muffins at the coffee shop or grocery store (which can be jumbo-sized with little nutritional value) you can make your own muffins with healthy ingredients like fruit, nuts and whole wheat flour. Make them on a weekend and freeze them. Put one in your bag and it will be thawed and ready to eat by the time you get to work or school.<strong>Instant oatmeal</strong> is a great option that’s a quick whole grain and will keep you full. Buy packets at the store and make them at work using hot water from the coffee maker. Just be sure to compare labels and pick flavors low in added sugars.<strong>Try a homemade smoothie.</strong><strong> </strong>Smoothies are a great way to increase your fruit intake, and they’re easy to make. A basic smoothie is just frozen fruit, low-fat milk or yogurt and 100% fruit juice, processed together in a blender until smooth. Experiment with different fruits to find out what you like. You can even add fresh vegetables to the mix!', 'Our History', '', 'publish', 'closed', 'closed', '', 'our-history', '', '', '2018-05-29 13:37:10', '2018-05-29 13:37:10', '', 102, 'http://localhost/DeliciousCooking/?page_id=108', 0, 'page', '', 0),
(109, 1, '2018-05-29 13:37:03', '2018-05-29 13:37:03', ' ', '', '', 'publish', 'closed', 'closed', '', '109', '', '', '2018-05-29 13:37:03', '2018-05-29 13:37:03', '', 0, 'http://localhost/DeliciousCooking/index.php/2018/05/29/109/', 13, 'nav_menu_item', '', 0),
(110, 1, '2018-05-29 13:37:03', '2018-05-29 13:37:03', 'This is Our History Content.This is about us content.<strong>Take muffins, for example.</strong> Instead of buying muffins at the coffee shop or grocery store (which can be jumbo-sized with little nutritional value) you can make your own muffins with healthy ingredients like fruit, nuts and whole wheat flour. Make them on a weekend and freeze them. Put one in your bag and it will be thawed and ready to eat by the time you get to work or school.<strong>Instant oatmeal</strong> is a great option that’s a quick whole grain and will keep you full. Buy packets at the store and make them at work using hot water from the coffee maker. Just be sure to compare labels and pick flavors low in added sugars.<strong>Try a homemade smoothie.</strong><strong> </strong>Smoothies are a great way to increase your fruit intake, and they’re easy to make. A basic smoothie is just frozen fruit, low-fat milk or yogurt and 100% fruit juice, processed together in a blender until smooth. Experiment with different fruits to find out what you like. You can even add fresh vegetables to the mix!', 'Our History', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2018-05-29 13:37:03', '2018-05-29 13:37:03', '', 108, 'http://localhost/DeliciousCooking/index.php/2018/05/29/108-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2018-05-29 13:37:39', '2018-05-29 13:37:39', 'This is goal page.This is about us content.<strong>Take muffins, for example.</strong> Instead of buying muffins at the coffee shop or grocery store (which can be jumbo-sized with little nutritional value) you can make your own muffins with healthy ingredients like fruit, nuts and whole wheat flour. Make them on a weekend and freeze them. Put one in your bag and it will be thawed and ready to eat by the time you get to work or school.<strong>Instant oatmeal</strong> is a great option that’s a quick whole grain and will keep you full. Buy packets at the store and make them at work using hot water from the coffee maker. Just be sure to compare labels and pick flavors low in added sugars.<strong>Try a homemade smoothie.</strong><strong> </strong>Smoothies are a great way to increase your fruit intake, and they’re easy to make. A basic smoothie is just frozen fruit, low-fat milk or yogurt and 100% fruit juice, processed together in a blender until smooth. Experiment with different fruits to find out what you like. You can even add fresh vegetables to the mix!', 'Our Goal', '', 'publish', 'closed', 'closed', '', 'our-goal', '', '', '2018-05-29 13:37:39', '2018-05-29 13:37:39', '', 102, 'http://localhost/DeliciousCooking/?page_id=111', 0, 'page', '', 0),
(112, 1, '2018-05-29 13:37:39', '2018-05-29 13:37:39', 'This is goal page.This is about us content.<strong>Take muffins, for example.</strong> Instead of buying muffins at the coffee shop or grocery store (which can be jumbo-sized with little nutritional value) you can make your own muffins with healthy ingredients like fruit, nuts and whole wheat flour. Make them on a weekend and freeze them. Put one in your bag and it will be thawed and ready to eat by the time you get to work or school.<strong>Instant oatmeal</strong> is a great option that’s a quick whole grain and will keep you full. Buy packets at the store and make them at work using hot water from the coffee maker. Just be sure to compare labels and pick flavors low in added sugars.<strong>Try a homemade smoothie.</strong><strong> </strong>Smoothies are a great way to increase your fruit intake, and they’re easy to make. A basic smoothie is just frozen fruit, low-fat milk or yogurt and 100% fruit juice, processed together in a blender until smooth. Experiment with different fruits to find out what you like. You can even add fresh vegetables to the mix!', 'Our Goal', '', 'inherit', 'closed', 'closed', '', '111-revision-v1', '', '', '2018-05-29 13:37:39', '2018-05-29 13:37:39', '', 111, 'http://localhost/DeliciousCooking/index.php/2018/05/29/111-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2018-05-29 13:38:23', '2018-05-29 13:38:23', 'This is Cookie privacy Page.This is about us content.<strong>Take muffins, for example.</strong> Instead of buying muffins at the coffee shop or grocery store (which can be jumbo-sized with little nutritional value) you can make your own muffins with healthy ingredients like fruit, nuts and whole wheat flour. Make them on a weekend and freeze them. Put one in your bag and it will be thawed and ready to eat by the time you get to work or school.<strong>Instant oatmeal</strong> is a great option that’s a quick whole grain and will keep you full. Buy packets at the store and make them at work using hot water from the coffee maker. Just be sure to compare labels and pick flavors low in added sugars.<strong>Try a homemade smoothie.</strong><strong> </strong>Smoothies are a great way to increase your fruit intake, and they’re easy to make. A basic smoothie is just frozen fruit, low-fat milk or yogurt and 100% fruit juice, processed together in a blender until smooth. Experiment with different fruits to find out what you like. You can even add fresh vegetables to the mix!', 'Cookie Privacy', '', 'publish', 'closed', 'closed', '', 'cookie-privacy', '', '', '2018-05-29 13:38:23', '2018-05-29 13:38:23', '', 105, 'http://localhost/DeliciousCooking/?page_id=113', 0, 'page', '', 0),
(114, 1, '2018-05-29 13:38:23', '2018-05-29 13:38:23', 'This is Cookie privacy Page.This is about us content.<strong>Take muffins, for example.</strong> Instead of buying muffins at the coffee shop or grocery store (which can be jumbo-sized with little nutritional value) you can make your own muffins with healthy ingredients like fruit, nuts and whole wheat flour. Make them on a weekend and freeze them. Put one in your bag and it will be thawed and ready to eat by the time you get to work or school.<strong>Instant oatmeal</strong> is a great option that’s a quick whole grain and will keep you full. Buy packets at the store and make them at work using hot water from the coffee maker. Just be sure to compare labels and pick flavors low in added sugars.<strong>Try a homemade smoothie.</strong><strong> </strong>Smoothies are a great way to increase your fruit intake, and they’re easy to make. A basic smoothie is just frozen fruit, low-fat milk or yogurt and 100% fruit juice, processed together in a blender until smooth. Experiment with different fruits to find out what you like. You can even add fresh vegetables to the mix!', 'Cookie Privacy', '', 'inherit', 'closed', 'closed', '', '113-revision-v1', '', '', '2018-05-29 13:38:23', '2018-05-29 13:38:23', '', 113, 'http://localhost/DeliciousCooking/index.php/2018/05/29/113-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2018-05-30 07:28:38', '2018-05-30 07:28:38', ' ', '', '', 'publish', 'closed', 'closed', '', '115', '', '', '2018-05-30 09:36:12', '2018-05-30 09:36:12', '', 0, 'http://localhost/DeliciousCooking/?p=115', 5, 'nav_menu_item', '', 0),
(117, 1, '2018-05-30 07:28:39', '2018-05-30 07:28:39', ' ', '', '', 'publish', 'closed', 'closed', '', '117', '', '', '2018-05-30 09:36:12', '2018-05-30 09:36:12', '', 0, 'http://localhost/DeliciousCooking/?p=117', 6, 'nav_menu_item', '', 0),
(120, 1, '2018-05-30 07:28:39', '2018-05-30 07:28:39', ' ', '', '', 'publish', 'closed', 'closed', '', '120', '', '', '2018-05-30 09:36:12', '2018-05-30 09:36:12', '', 0, 'http://localhost/DeliciousCooking/?p=120', 2, 'nav_menu_item', '', 0),
(121, 1, '2018-05-30 07:29:46', '2018-05-30 07:29:46', ' ', '', '', 'publish', 'closed', 'closed', '', '121', '', '', '2018-05-30 08:55:51', '2018-05-30 08:55:51', '', 0, 'http://localhost/DeliciousCooking/?p=121', 1, 'nav_menu_item', '', 0),
(122, 1, '2018-05-30 07:29:46', '2018-05-30 07:29:46', ' ', '', '', 'publish', 'closed', 'closed', '', '122', '', '', '2018-05-30 08:55:51', '2018-05-30 08:55:51', '', 0, 'http://localhost/DeliciousCooking/?p=122', 2, 'nav_menu_item', '', 0),
(123, 1, '2018-05-30 07:29:47', '2018-05-30 07:29:47', ' ', '', '', 'publish', 'closed', 'closed', '', '123', '', '', '2018-05-30 08:55:51', '2018-05-30 08:55:51', '', 0, 'http://localhost/DeliciousCooking/?p=123', 3, 'nav_menu_item', '', 0),
(124, 1, '2018-05-30 07:29:10', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-05-30 07:29:10', '0000-00-00 00:00:00', '', 102, 'http://localhost/DeliciousCooking/?p=124', 1, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(125, 1, '2018-05-30 07:29:11', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-05-30 07:29:11', '0000-00-00 00:00:00', '', 2, 'http://localhost/DeliciousCooking/?p=125', 1, 'nav_menu_item', '', 0),
(140, 1, '2018-05-30 08:54:45', '2018-05-30 08:54:45', ' ', '', '', 'publish', 'closed', 'closed', '', '140', '', '', '2018-05-30 08:55:30', '2018-05-30 08:55:30', '', 105, 'http://localhost/DeliciousCooking/?p=140', 1, 'nav_menu_item', '', 0),
(142, 1, '2018-05-30 08:54:45', '2018-05-30 08:54:45', ' ', '', '', 'publish', 'closed', 'closed', '', '142', '', '', '2018-05-30 08:55:30', '2018-05-30 08:55:30', '', 102, 'http://localhost/DeliciousCooking/?p=142', 2, 'nav_menu_item', '', 0),
(144, 1, '2018-05-30 08:54:45', '2018-05-30 08:54:45', ' ', '', '', 'publish', 'closed', 'closed', '', '144', '', '', '2018-05-30 08:55:30', '2018-05-30 08:55:30', '', 102, 'http://localhost/DeliciousCooking/?p=144', 3, 'nav_menu_item', '', 0),
(145, 1, '2018-05-30 08:54:45', '2018-05-30 08:54:45', ' ', '', '', 'publish', 'closed', 'closed', '', '145', '', '', '2018-05-30 08:55:30', '2018-05-30 08:55:30', '', 2, 'http://localhost/DeliciousCooking/?p=145', 4, 'nav_menu_item', '', 0),
(147, 1, '2018-05-30 08:55:51', '2018-05-30 08:55:51', ' ', '', '', 'publish', 'closed', 'closed', '', '147', '', '', '2018-05-30 08:55:51', '2018-05-30 08:55:51', '', 0, 'http://localhost/DeliciousCooking/?p=147', 4, 'nav_menu_item', '', 0),
(148, 1, '2018-05-30 08:55:51', '2018-05-30 08:55:51', ' ', '', '', 'publish', 'closed', 'closed', '', '148', '', '', '2018-05-30 08:55:51', '2018-05-30 08:55:51', '', 0, 'http://localhost/DeliciousCooking/?p=148', 5, 'nav_menu_item', '', 0),
(149, 1, '2018-05-30 08:55:51', '2018-05-30 08:55:51', ' ', '', '', 'publish', 'closed', 'closed', '', '149', '', '', '2018-05-30 08:55:51', '2018-05-30 08:55:51', '', 0, 'http://localhost/DeliciousCooking/?p=149', 6, 'nav_menu_item', '', 0),
(150, 1, '2018-05-30 08:56:07', '2018-05-30 08:56:07', ' ', '', '', 'publish', 'closed', 'closed', '', '150', '', '', '2018-05-30 09:36:12', '2018-05-30 09:36:12', '', 0, 'http://localhost/DeliciousCooking/?p=150', 3, 'nav_menu_item', '', 0),
(151, 1, '2018-05-30 08:56:17', '2018-05-30 08:56:17', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-05-30 08:56:17', '2018-05-30 08:56:17', '', 0, 'http://localhost/DeliciousCooking/?page_id=151', 0, 'page', '', 0),
(152, 1, '2018-05-30 08:56:17', '2018-05-30 08:56:17', ' ', '', '', 'publish', 'closed', 'closed', '', '152', '', '', '2018-05-30 08:56:17', '2018-05-30 08:56:17', '', 0, 'http://localhost/DeliciousCooking/index.php/2018/05/30/152/', 14, 'nav_menu_item', '', 0),
(153, 1, '2018-05-30 08:56:17', '2018-05-30 08:56:17', '', 'Home', '', 'inherit', 'closed', 'closed', '', '151-revision-v1', '', '', '2018-05-30 08:56:17', '2018-05-30 08:56:17', '', 151, 'http://localhost/DeliciousCooking/index.php/2018/05/30/151-revision-v1/', 0, 'revision', '', 0),
(154, 1, '2018-05-30 08:56:26', '2018-05-30 08:56:26', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-05-30 08:56:26', '2018-05-30 08:56:26', '', 0, 'http://localhost/DeliciousCooking/?page_id=154', 0, 'page', '', 0),
(155, 1, '2018-05-30 08:56:26', '2018-05-30 08:56:26', ' ', '', '', 'publish', 'closed', 'closed', '', '155', '', '', '2018-05-30 08:56:26', '2018-05-30 08:56:26', '', 0, 'http://localhost/DeliciousCooking/index.php/2018/05/30/155/', 15, 'nav_menu_item', '', 0),
(156, 1, '2018-05-30 08:56:26', '2018-05-30 08:56:26', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '154-revision-v1', '', '', '2018-05-30 08:56:26', '2018-05-30 08:56:26', '', 154, 'http://localhost/DeliciousCooking/index.php/2018/05/30/154-revision-v1/', 0, 'revision', '', 0),
(157, 1, '2018-05-30 09:36:12', '2018-05-30 09:36:12', ' ', '', '', 'publish', 'closed', 'closed', '', '157', '', '', '2018-05-30 09:36:12', '2018-05-30 09:36:12', '', 0, 'http://localhost/DeliciousCooking/?p=157', 4, 'nav_menu_item', '', 0),
(158, 1, '2018-05-30 09:36:12', '2018-05-30 09:36:12', ' ', '', '', 'publish', 'closed', 'closed', '', '158', '', '', '2018-05-30 09:36:12', '2018-05-30 09:36:12', '', 0, 'http://localhost/DeliciousCooking/?p=158', 1, 'nav_menu_item', '', 0),
(159, 1, '2018-05-30 12:49:10', '2018-05-30 12:49:10', 'EVENT 1....For many of us, breakfast is something quick we grab as we\'re running out the door, or maybe even a meal we skip completely. It\'s easy to grab a packaged bar from the cupboard when we\'re in a rush, or think we\'ll make up for it at lunch. But oftentimes, packaged foods have added sugars and unhealthy fats, and won\'t keep you full and energized until lunch. Here are some homemade breakfast options that are better for you, and easy to make.', 'Event 1', '', 'publish', 'closed', 'closed', '', 'event-1', '', '', '2018-05-31 10:55:33', '2018-05-31 10:55:33', '', 0, 'http://localhost/DeliciousCooking/?post_type=event&#038;p=159', 0, 'event', '', 0),
(160, 1, '2018-05-30 12:49:25', '2018-05-30 12:49:25', 'EVENT 2....For many of us, breakfast is something quick we grab as we\'re running out the door, or maybe even a meal we skip completely. It\'s easy to grab a packaged bar from the cupboard when we\'re in a rush, or think we\'ll make up for it at lunch. But oftentimes, packaged foods have added sugars and unhealthy fats, and won\'t keep you full and energized until lunch. Here are some homemade breakfast options that are better for you, and easy to make.', 'Event 2', '', 'publish', 'closed', 'closed', '', 'event-2', '', '', '2018-05-31 09:36:57', '2018-05-31 09:36:57', '', 0, 'http://localhost/DeliciousCooking/?post_type=event&#038;p=160', 0, 'event', '', 0),
(161, 1, '2018-05-30 12:49:39', '2018-05-30 12:49:39', 'EVENT 3....For many of us, breakfast is something quick we grab as we\'re running out the door, or maybe even a meal we skip completely. It\'s easy to grab a packaged bar from the cupboard when we\'re in a rush, or think we\'ll make up for it at lunch. But oftentimes, packaged foods have added sugars and unhealthy fats, and won\'t keep you full and energized until lunch. Here are some homemade breakfast options that are better for you, and easy to make.', 'Event 3', 'this is excerpt text for EVENT 3.', 'publish', 'closed', 'closed', '', 'event-3', '', '', '2018-05-31 10:56:07', '2018-05-31 10:56:07', '', 0, 'http://localhost/DeliciousCooking/?post_type=event&#038;p=161', 0, 'event', '', 0),
(164, 1, '2018-05-31 04:21:17', '2018-05-31 04:21:17', 'This my schedule post 4..........', 'Post 4', 'This my schedule post 4 Excerpt..........', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2018-05-31 04:21:17', '2018-05-31 04:21:17', '', 62, 'http://localhost/DeliciousCooking/index.php/2018/05/31/62-revision-v1/', 0, 'revision', '', 0),
(168, 1, '2018-05-31 05:07:07', '2018-05-31 05:07:07', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Event Date', 'event-date', 'publish', 'closed', 'closed', '', 'group_5b0f82bcb8767', '', '', '2018-05-31 05:14:50', '2018-05-31 05:14:50', '', 0, 'http://localhost/DeliciousCooking/?post_type=acf-field-group&#038;p=168', 0, 'acf-field-group', '', 0),
(169, 1, '2018-05-31 05:07:07', '2018-05-31 05:07:07', 'a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:3:\"Ymd\";s:9:\"first_day\";i:1;}', 'Event Date', 'event_date', 'publish', 'closed', 'closed', '', 'field_5b0f82cc0e55a', '', '', '2018-05-31 05:14:50', '2018-05-31 05:14:50', '', 168, 'http://localhost/DeliciousCooking/?post_type=acf-field&#038;p=169', 0, 'acf-field', '', 0),
(173, 1, '2018-05-31 07:03:41', '2018-05-31 07:03:41', '', 'History Of Event', '', 'publish', 'closed', 'closed', '', 'history_event', '', '', '2018-05-31 07:04:09', '2018-05-31 07:04:09', '', 0, 'http://localhost/DeliciousCooking/?page_id=173', 0, 'page', '', 0),
(174, 1, '2018-05-31 07:03:41', '2018-05-31 07:03:41', ' ', '', '', 'publish', 'closed', 'closed', '', '174', '', '', '2018-05-31 07:03:41', '2018-05-31 07:03:41', '', 0, 'http://localhost/DeliciousCooking/index.php/2018/05/31/174/', 16, 'nav_menu_item', '', 0),
(175, 1, '2018-05-31 07:03:41', '2018-05-31 07:03:41', '', 'History Of Event', '', 'inherit', 'closed', 'closed', '', '173-revision-v1', '', '', '2018-05-31 07:03:41', '2018-05-31 07:03:41', '', 173, 'http://localhost/DeliciousCooking/index.php/2018/05/31/173-revision-v1/', 0, 'revision', '', 0),
(176, 1, '2018-05-31 07:37:01', '2018-05-31 07:37:01', 'Event 4......', 'math event', '', 'publish', 'closed', 'closed', '', 'event-4', '', '', '2018-06-06 07:09:52', '2018-06-06 07:09:52', '', 0, 'http://localhost/DeliciousCooking/?post_type=event&#038;p=176', 0, 'event', '', 0),
(177, 1, '2018-05-31 08:46:24', '2018-05-31 08:46:24', 'Math Program...................', 'Math', '', 'publish', 'closed', 'closed', '', 'math', '', '', '2018-06-04 10:31:31', '2018-06-04 10:31:31', '', 0, 'http://localhost/DeliciousCooking/?post_type=program&#038;p=177', 0, 'program', '', 0),
(178, 1, '2018-05-31 08:46:47', '2018-05-31 08:46:47', 'This is Biology Program....', 'Biology', '', 'publish', 'closed', 'closed', '', 'biology', '', '', '2018-06-04 10:31:44', '2018-06-04 10:31:44', '', 0, 'http://localhost/DeliciousCooking/?post_type=program&#038;p=178', 0, 'program', '', 0),
(179, 1, '2018-05-31 08:47:09', '2018-05-31 08:47:09', 'This is English Program......', 'English', '', 'publish', 'closed', 'closed', '', 'english', '', '', '2018-05-31 08:47:09', '2018-05-31 08:47:09', '', 0, 'http://localhost/DeliciousCooking/?post_type=program&#038;p=179', 0, 'program', '', 0),
(181, 1, '2018-05-31 08:47:36', '2018-05-31 08:47:36', 'This is Physics Program.........\r\n\r\n&nbsp;', 'Physics', '', 'publish', 'closed', 'closed', '', 'physics', '', '', '2018-06-04 13:42:13', '2018-06-04 13:42:13', '', 0, 'http://localhost/DeliciousCooking/?post_type=program&#038;p=181', 0, 'program', '', 0),
(182, 1, '2018-05-31 09:05:22', '2018-05-31 09:05:22', 'a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"professor\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Related Program', 'related-program', 'publish', 'closed', 'closed', '', 'group_5b0fba7c27600', '', '', '2018-05-31 10:31:31', '2018-05-31 10:31:31', '', 0, 'http://localhost/DeliciousCooking/?post_type=acf-field-group&#038;p=182', 0, 'acf-field-group', '', 0),
(183, 1, '2018-05-31 09:05:22', '2018-05-31 09:05:22', 'a:12:{s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:7:\"program\";}s:8:\"taxonomy\";a:0:{}s:7:\"filters\";a:3:{i:0;s:6:\"search\";i:1;s:9:\"post_type\";i:2;s:8:\"taxonomy\";}s:8:\"elements\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";}', 'Related Program', 'related_program', 'publish', 'closed', 'closed', '', 'field_5b0fba8d54a50', '', '', '2018-05-31 09:05:22', '2018-05-31 09:05:22', '', 182, 'http://localhost/DeliciousCooking/?post_type=acf-field&p=183', 0, 'acf-field', '', 0),
(184, 1, '2018-05-31 10:23:44', '2018-05-31 10:23:44', 'Hello I am Brakslot...............', 'Prof. Barkslot', '', 'publish', 'closed', 'closed', '', 'dr-barkslot', '', '', '2018-05-31 11:18:15', '2018-05-31 11:18:15', '', 0, 'http://localhost/DeliciousCooking/?post_type=professor&#038;p=184', 0, 'professor', '', 0),
(185, 1, '2018-05-31 10:24:33', '2018-05-31 10:24:33', 'Hello I am ABC.........', 'Prof. ABC', '', 'publish', 'closed', 'closed', '', 'prof-abc', '', '', '2018-06-06 08:47:21', '2018-06-06 08:47:21', '', 0, 'http://localhost/DeliciousCooking/?post_type=professor&#038;p=185', 0, 'professor', '', 0),
(186, 1, '2018-05-31 10:25:05', '2018-05-31 10:25:05', 'I love Math.\r\n\r\nhello I am DEF................', 'Prof. DEF', '', 'publish', 'closed', 'closed', '', 'prof-def', '', '', '2018-06-06 10:23:43', '2018-06-06 10:23:43', '', 0, 'http://localhost/DeliciousCooking/?post_type=professor&#038;p=186', 0, 'professor', '', 0),
(189, 1, '2018-05-31 11:16:36', '2018-05-31 11:16:36', '', 'barksalot', '', 'inherit', 'open', 'closed', '', 'barksalot', '', '', '2018-05-31 11:16:36', '2018-05-31 11:16:36', '', 186, 'http://localhost/DeliciousCooking/wp-content/uploads/2018/05/barksalot.jpg', 0, 'attachment', 'image/jpeg', 0),
(190, 1, '2018-05-31 11:16:57', '2018-05-31 11:16:57', '', 'meowsalot', '', 'inherit', 'open', 'closed', '', 'meowsalot', '', '', '2018-05-31 11:16:57', '2018-05-31 11:16:57', '', 186, 'http://localhost/DeliciousCooking/wp-content/uploads/2018/05/meowsalot.jpg', 0, 'attachment', 'image/jpeg', 0),
(192, 1, '2018-05-31 11:17:50', '2018-05-31 11:17:50', '', 'apples', '', 'inherit', 'open', 'closed', '', 'apples', '', '', '2018-05-31 11:17:50', '2018-05-31 11:17:50', '', 185, 'http://localhost/DeliciousCooking/wp-content/uploads/2018/05/apples.jpg', 0, 'attachment', 'image/jpeg', 0),
(193, 1, '2018-05-31 11:40:14', '2018-05-31 11:40:14', 'Hello i am frogslot...............', 'Prof. frogslot', '', 'publish', 'closed', 'closed', '', 'prof-frogslot', '', '', '2018-05-31 11:40:14', '2018-05-31 11:40:14', '', 0, 'http://localhost/DeliciousCooking/?post_type=professor&#038;p=193', 0, 'professor', '', 0),
(194, 1, '2018-05-31 11:40:07', '2018-05-31 11:40:07', '', 'bus', '', 'inherit', 'open', 'closed', '', 'bus', '', '', '2018-05-31 11:40:07', '2018-05-31 11:40:07', '', 193, 'http://localhost/DeliciousCooking/wp-content/uploads/2018/05/bus.jpg', 0, 'attachment', 'image/jpeg', 0),
(196, 1, '2018-05-31 13:07:23', '2018-05-31 13:07:23', 'a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Page Banner Subtitle', 'page-banner-subtitle', 'publish', 'closed', 'closed', '', 'group_5b0ff32d66432', '', '', '2018-05-31 13:07:24', '2018-05-31 13:07:24', '', 0, 'http://localhost/DeliciousCooking/?post_type=acf-field-group&#038;p=196', 0, 'acf-field-group', '', 0),
(197, 1, '2018-05-31 13:07:24', '2018-05-31 13:07:24', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Page Banner Subtitle', 'page_banner_subtitle', 'publish', 'closed', 'closed', '', 'field_5b0ff33fb8c6f', '', '', '2018-05-31 13:07:24', '2018-05-31 13:07:24', '', 196, 'http://localhost/DeliciousCooking/?post_type=acf-field&p=197', 0, 'acf-field', '', 0),
(198, 1, '2018-05-31 13:07:24', '2018-05-31 13:07:24', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Page Banner Background Image', 'page_banner_background_image', 'publish', 'closed', 'closed', '', 'field_5b0ff355b8c70', '', '', '2018-05-31 13:07:24', '2018-05-31 13:07:24', '', 196, 'http://localhost/DeliciousCooking/?post_type=acf-field&p=198', 1, 'acf-field', '', 0),
(199, 1, '2018-05-31 13:10:47', '2018-05-31 13:10:47', '', 'sec-10-2-4-frog-bio', '', 'inherit', 'open', 'closed', '', 'sec-10-2-4-frog-bio', '', '', '2018-05-31 13:11:01', '2018-05-31 13:11:01', '', 186, 'http://localhost/DeliciousCooking/wp-content/uploads/2018/05/sec-10-2-4-frog-bio.jpg', 0, 'attachment', 'image/jpeg', 0),
(200, 1, '2018-05-31 13:11:15', '2018-05-31 13:11:15', '', 'sec-10-4-field', '', 'inherit', 'open', 'closed', '', 'sec-10-4-field', '', '', '2018-05-31 13:16:15', '2018-05-31 13:16:15', '', 186, 'http://localhost/DeliciousCooking/wp-content/uploads/2018/05/sec-10-4-field.jpg', 0, 'attachment', 'image/jpeg', 0),
(201, 1, '2018-05-31 13:36:07', '2018-05-31 13:36:07', '', 'sec-11-2-1-notebook', '', 'inherit', 'open', 'closed', '', 'sec-11-2-1-notebook', '', '', '2018-05-31 13:36:13', '2018-05-31 13:36:13', '', 102, 'http://localhost/DeliciousCooking/wp-content/uploads/2018/05/sec-11-2-1-notebook.jpg', 0, 'attachment', 'image/jpeg', 0),
(202, 1, '2018-05-31 13:36:16', '2018-05-31 13:36:16', 'This is about us content.<strong>Take muffins, for example.</strong> Instead of buying muffins at the coffee shop or grocery store (which can be jumbo-sized with little nutritional value) you can make your own muffins with healthy ingredients like fruit, nuts and whole wheat flour. Make them on a weekend and freeze them. Put one in your bag and it will be thawed and ready to eat by the time you get to work or school.<strong>Instant oatmeal</strong> is a great option that’s a quick whole grain and will keep you full. Buy packets at the store and make them at work using hot water from the coffee maker. Just be sure to compare labels and pick flavors low in added sugars.<strong>Try a homemade smoothie.</strong><strong> </strong>Smoothies are a great way to increase your fruit intake, and they’re easy to make. A basic smoothie is just frozen fruit, low-fat milk or yogurt and 100% fruit juice, processed together in a blender until smooth. Experiment with different fruits to find out what you like. You can even add fresh vegetables to the mix!', 'About Us', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2018-05-31 13:36:16', '2018-05-31 13:36:16', '', 102, 'http://localhost/DeliciousCooking/index.php/2018/05/31/102-revision-v1/', 0, 'revision', '', 0),
(203, 1, '2018-06-01 05:18:11', '2018-06-01 05:18:11', 'This is about us content.<strong>Take muffins, for example.</strong> Instead of buying muffins at the coffee shop or grocery store (which can be jumbo-sized with little nutritional value) you can make your own muffins with healthy ingredients like fruit, nuts and whole wheat flour. Make them on a weekend and freeze them. Put one in your bag and it will be thawed and ready to eat by the time you get to work or school.<strong>Instant oatmeal</strong> is a great option that’s a quick whole grain and will keep you full. Buy packets at the store and make them at work using hot water from the coffee maker. Just be sure to compare labels and pick flavors low in added sugars.<strong>Try a homemade smoothie.</strong><strong> </strong>Smoothies are a great way to increase your fruit intake, and they’re easy to make. A basic smoothie is just frozen fruit, low-fat milk or yogurt and 100% fruit juice, processed together in a blender until smooth.', 'Downtown West', '', 'publish', 'closed', 'closed', '', 'downtown-west', '', '', '2018-06-01 06:47:09', '2018-06-01 06:47:09', '', 0, 'http://localhost/DeliciousCooking/?post_type=campus&#038;p=203', 0, 'campus', '', 0),
(204, 1, '2018-06-01 05:19:01', '2018-06-01 05:19:01', 'This is about us content.<strong>Take muffins, for example.</strong> Instead of buying muffins at the coffee shop or grocery store (which can be jumbo-sized with little nutritional value) you can make your own muffins with healthy ingredients like fruit, nuts and whole wheat flour. Make them on a weekend and freeze them. Put one in your bag and it will be thawed and ready to eat by the time you get to work or school.<strong>Instant oatmeal</strong> is a great option that’s a quick whole grain and will keep you full. Buy packets at the store and make them at work using hot water from the coffee maker. Just be sure to compare labels and pick flavors low in added sugars.<strong>Try a homemade smoothie.</strong><strong> </strong>Smoothies are a great way to increase your fruit intake, and they’re easy to make. A basic smoothie is just frozen fruit, low-fat milk or yogurt and 100% fruit juice, processed together in a blender until smooth.', 'Downtown East', '', 'publish', 'closed', 'closed', '', 'downtown-east', '', '', '2018-06-01 06:45:39', '2018-06-01 06:45:39', '', 0, 'http://localhost/DeliciousCooking/?post_type=campus&#038;p=204', 0, 'campus', '', 0),
(206, 1, '2018-06-01 05:20:06', '2018-06-01 05:20:06', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"campus\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Map Location', 'map-location', 'publish', 'closed', 'closed', '', 'group_5b10d7640a8b3', '', '', '2018-06-01 05:20:06', '2018-06-01 05:20:06', '', 0, 'http://localhost/DeliciousCooking/?post_type=acf-field-group&#038;p=206', 0, 'acf-field-group', '', 0),
(207, 1, '2018-06-01 05:20:06', '2018-06-01 05:20:06', 'a:9:{s:4:\"type\";s:10:\"google_map\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"center_lat\";s:0:\"\";s:10:\"center_lng\";s:0:\"\";s:4:\"zoom\";s:0:\"\";s:6:\"height\";s:0:\"\";}', 'Map Location', 'map_location', 'publish', 'closed', 'closed', '', 'field_5b10d76b3fb8d', '', '', '2018-06-01 05:20:06', '2018-06-01 05:20:06', '', 206, 'http://localhost/DeliciousCooking/?post_type=acf-field&p=207', 0, 'acf-field', '', 0),
(209, 1, '2018-06-04 10:28:20', '2018-06-04 10:28:20', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"program\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Related campus', 'related-campus', 'publish', 'closed', 'closed', '', 'group_5b151406b9dbc', '', '', '2018-06-04 10:31:15', '2018-06-04 10:31:15', '', 0, 'http://localhost/DeliciousCooking/?post_type=acf-field-group&#038;p=209', 0, 'acf-field-group', '', 0),
(210, 1, '2018-06-04 10:28:20', '2018-06-04 10:28:20', 'a:12:{s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:6:\"campus\";}s:8:\"taxonomy\";a:0:{}s:7:\"filters\";a:3:{i:0;s:6:\"search\";i:1;s:9:\"post_type\";i:2;s:8:\"taxonomy\";}s:8:\"elements\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";}', 'Related Campus', 'related_campus', 'publish', 'closed', 'closed', '', 'field_5b15141a7f94d', '', '', '2018-06-04 10:31:10', '2018-06-04 10:31:10', '', 209, 'http://localhost/DeliciousCooking/?post_type=acf-field&#038;p=210', 0, 'acf-field', '', 0),
(213, 1, '2018-06-04 12:29:52', '2018-06-04 12:29:52', '<strong>Delhi College.</strong>', 'Delhi College', '', 'publish', 'closed', 'closed', '', 'delhi-college', '', '', '2018-06-06 05:30:02', '2018-06-06 05:30:02', '', 0, 'http://localhost/DeliciousCooking/?post_type=campus&#038;p=213', 0, 'campus', '', 0),
(214, 1, '2018-06-05 06:54:36', '2018-06-05 06:54:36', '<strong>AWARD.</strong>For many of us, breakfast is something quick we grab as we\'re running out the door, or maybe even a meal we skip completely. It\'s easy to grab a packaged bar from the cupboard when we\'re in a rush, or think we\'ll make up for it at lunch. But oftentimes, packaged foods have added sugars and unhealthy fats, and won\'t keep you full and energized until lunch. Here are some homemade breakfast options that are better for you, and easy to make', 'award', '', 'publish', 'open', 'open', '', 'award', '', '', '2018-06-05 06:54:36', '2018-06-05 06:54:36', '', 0, 'http://localhost/DeliciousCooking/?p=214', 0, 'post', '', 0),
(215, 1, '2018-06-05 06:54:36', '2018-06-05 06:54:36', '<strong>AWARD.</strong>For many of us, breakfast is something quick we grab as we\'re running out the door, or maybe even a meal we skip completely. It\'s easy to grab a packaged bar from the cupboard when we\'re in a rush, or think we\'ll make up for it at lunch. But oftentimes, packaged foods have added sugars and unhealthy fats, and won\'t keep you full and energized until lunch. Here are some homemade breakfast options that are better for you, and easy to make', 'award', '', 'inherit', 'closed', 'closed', '', '214-revision-v1', '', '', '2018-06-05 06:54:36', '2018-06-05 06:54:36', '', 214, 'http://localhost/DeliciousCooking/index.php/2018/06/05/214-revision-v1/', 0, 'revision', '', 0),
(217, 1, '2018-06-05 07:38:48', '2018-06-05 07:38:48', 'This my schedule post 4', 'Post 4', 'This my schedule post 4 Excerpt..........', 'inherit', 'closed', 'closed', '', '62-autosave-v1', '', '', '2018-06-05 07:38:48', '2018-06-05 07:38:48', '', 62, 'http://localhost/DeliciousCooking/index.php/2018/06/05/62-autosave-v1/', 0, 'revision', '', 0),
(218, 1, '2018-06-05 07:39:01', '2018-06-05 07:39:01', 'This my schedule post 4', 'Post 4', 'This my schedule post 4 Excerpt..........', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2018-06-05 07:39:01', '2018-06-05 07:39:01', '', 62, 'http://localhost/DeliciousCooking/index.php/2018/06/05/62-revision-v1/', 0, 'revision', '', 0),
(222, 1, '2018-06-06 06:08:17', '2018-06-06 06:08:17', '<strong>THIS IS MATH POST..........</strong>', 'math Post', '', 'publish', 'open', 'open', '', 'math-post', '', '', '2018-06-06 06:08:17', '2018-06-06 06:08:17', '', 0, 'http://localhost/DeliciousCooking/?p=222', 0, 'post', '', 0),
(223, 1, '2018-06-06 06:08:17', '2018-06-06 06:08:17', '<strong>THIS IS MATH POST..........</strong>', 'math Post', '', 'inherit', 'closed', 'closed', '', '222-revision-v1', '', '', '2018-06-06 06:08:17', '2018-06-06 06:08:17', '', 222, 'http://localhost/DeliciousCooking/index.php/2018/06/06/222-revision-v1/', 0, 'revision', '', 0),
(225, 1, '2018-06-06 08:46:22', '2018-06-06 08:46:22', '<strong>THIS IS BASIC MATH CUSTOM POST TYPE PROGRAM ......</strong>', 'basic math', '', 'publish', 'closed', 'closed', '', 'basic-math', '', '', '2018-06-07 07:45:29', '2018-06-07 07:45:29', '', 0, 'http://localhost/DeliciousCooking/?post_type=program&#038;p=225', 0, 'program', '', 0),
(226, 1, '2018-06-06 09:27:50', '2018-06-06 09:27:50', '', 'Search', '', 'publish', 'closed', 'closed', '', 'search', '', '', '2018-06-06 09:27:50', '2018-06-06 09:27:50', '', 0, 'http://localhost/DeliciousCooking/?page_id=226', 0, 'page', '', 0),
(227, 1, '2018-06-06 09:27:50', '2018-06-06 09:27:50', ' ', '', '', 'publish', 'closed', 'closed', '', '227', '', '', '2018-06-06 09:27:50', '2018-06-06 09:27:50', '', 0, 'http://localhost/DeliciousCooking/index.php/2018/06/06/227/', 17, 'nav_menu_item', '', 0),
(228, 1, '2018-06-06 09:27:50', '2018-06-06 09:27:50', '', 'Search', '', 'inherit', 'closed', 'closed', '', '226-revision-v1', '', '', '2018-06-06 09:27:50', '2018-06-06 09:27:50', '', 226, 'http://localhost/DeliciousCooking/index.php/2018/06/06/226-revision-v1/', 0, 'revision', '', 0),
(229, 1, '2018-06-07 05:08:05', '2018-06-07 05:08:05', ' ', '', '', 'publish', 'closed', 'closed', '', '229', '', '', '2018-06-07 05:08:05', '2018-06-07 05:08:05', '', 0, 'http://localhost/DeliciousCooking/index.php/2018/06/07/229/', 18, 'nav_menu_item', '', 0),
(230, 1, '2018-06-07 05:17:33', '2018-06-07 05:17:33', '<strong>This is post on 7-6-2018.</strong>', 'post for 7-6-2018', '', 'trash', 'open', 'open', '', 'post-for-7-6-2018__trashed', '', '', '2018-06-07 07:16:38', '2018-06-07 07:16:38', '', 0, 'http://localhost/DeliciousCooking/?p=230', 0, 'post', '', 0),
(231, 1, '2018-06-07 05:17:33', '2018-06-07 05:17:33', '<strong>This is post on 7-6-2018.</strong>', 'post for 7-6-2018', '', 'inherit', 'closed', 'closed', '', '230-revision-v1', '', '', '2018-06-07 05:17:33', '2018-06-07 05:17:33', '', 230, 'http://localhost/DeliciousCooking/index.php/2018/06/07/230-revision-v1/', 0, 'revision', '', 0),
(233, 1, '2018-06-07 07:00:11', '2018-06-07 07:00:11', '<strong>draft post on 7-6-2018....................</strong>', 'draft post on 7-6-2018', '', 'publish', 'open', 'open', '', 'draft-post-on-6-6-2018', '', '', '2018-06-07 07:00:11', '2018-06-07 07:00:11', '', 0, 'http://localhost/DeliciousCooking/?p=233', 0, 'post', '', 0),
(234, 1, '2018-06-07 05:36:23', '2018-06-07 05:36:23', '<strong>draft post on 7-6-2018</strong>', 'draft post on 7-6-2018', '', 'inherit', 'closed', 'closed', '', '233-revision-v1', '', '', '2018-06-07 05:36:23', '2018-06-07 05:36:23', '', 233, 'http://localhost/DeliciousCooking/index.php/2018/06/07/233-revision-v1/', 0, 'revision', '', 0),
(235, 1, '2018-06-07 05:40:11', '2018-06-07 05:40:11', '<strong>draft post on 7-6-2018....................</strong>', 'draft post on 7-6-2018', '', 'inherit', 'closed', 'closed', '', '233-revision-v1', '', '', '2018-06-07 05:40:11', '2018-06-07 05:40:11', '', 233, 'http://localhost/DeliciousCooking/index.php/2018/06/07/233-revision-v1/', 0, 'revision', '', 0),
(236, 1, '2018-06-07 06:40:44', '2018-06-07 06:40:44', '<strong>draft post on 6-6-2018....................</strong>', 'draft post on 6-6-2018', '', 'inherit', 'closed', 'closed', '', '233-revision-v1', '', '', '2018-06-07 06:40:44', '2018-06-07 06:40:44', '', 233, 'http://localhost/DeliciousCooking/index.php/2018/06/07/233-revision-v1/', 0, 'revision', '', 0),
(237, 1, '2018-06-07 06:48:29', '2018-06-07 06:48:29', '<strong>draft post on 7-6-2018....................</strong>', 'draft post on 7-6-2018', '', 'inherit', 'closed', 'closed', '', '233-revision-v1', '', '', '2018-06-07 06:48:29', '2018-06-07 06:48:29', '', 233, 'http://localhost/DeliciousCooking/index.php/2018/06/07/233-revision-v1/', 0, 'revision', '', 0),
(238, 1, '2018-06-07 06:53:01', '2018-06-07 06:53:01', '<h3>Healthy Breakfasts To Go</h3>\r\nFor many of us, breakfast is something quick we grab as we\'re running out the door, or maybe even a meal we skip completely. It\'s easy to grab a packaged bar from the cupboard when we\'re in a rush, or think we\'ll make up for it at lunch. But oftentimes, packaged foods have added sugars and unhealthy fats, and won\'t keep you full and energized until lunch. Here are some homemade breakfast options that are better for you, and easy to make.\r\n<ul>\r\n 	<li><strong>Take muffins, for example.</strong> Instead of buying muffins at the coffee shop or grocery store (which can be jumbo-sized with little nutritional value) you can make your own muffins with healthy ingredients like fruit, nuts and whole wheat flour. Make them on a weekend and freeze them. Put one in your bag and it will be thawed and ready to eat by the time you get to work or school.</li>\r\n 	<li><strong>Instant oatmeal</strong> is a great option that\'s a quick whole grain and will keep you full. Buy packets at the store and make them at work using hot water from the coffee maker. Just be sure to compare labels and pick flavors low in added sugars.</li>\r\n 	<li><strong>Try a homemade smoothie.</strong><strong> </strong>Smoothies are a great way to increase your fruit intake, and they\'re easy to make. A basic smoothie is just frozen fruit, low-fat milk or yogurt and 100% fruit juice, processed together in a blender until smooth. Experiment with different fruits to find out what you like. You can even add fresh vegetables to the mix!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!</li>\r\n</ul>', 'Breakfast: Eating Healthy', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2018-06-07 06:53:01', '2018-06-07 06:53:01', '', 39, 'http://localhost/DeliciousCooking/index.php/2018/06/07/39-revision-v1/', 0, 'revision', '', 0),
(239, 1, '2018-06-07 08:36:56', '2018-06-07 08:36:56', '2+2=4;', 'Math Note 1', '', 'publish', 'closed', 'closed', '', 'math-note-1', '', '', '2018-06-08 06:12:47', '2018-06-08 06:12:47', '', 0, 'http://localhost/DeliciousCooking/?post_type=note&#038;p=239', 0, 'note', '', 0),
(240, 1, '2018-06-07 08:38:53', '2018-06-07 08:38:53', 'Today\'s Physic Lecture is amzing.................', 'Physics Note 1', '', 'publish', 'closed', 'closed', '', 'physics-note-1', '', '', '2018-06-08 06:12:51', '2018-06-08 06:12:51', '', 0, 'http://localhost/DeliciousCooking/?post_type=note&#038;p=240', 0, 'note', '', 0),
(241, 1, '2018-06-07 13:24:59', '2018-06-07 13:24:59', 'This is English Note 1........', 'English note 1', '', 'publish', 'closed', 'closed', '', 'english-note-1', '', '', '2018-06-08 06:12:49', '2018-06-08 06:12:49', '', 0, 'http://localhost/DeliciousCooking/?post_type=note&#038;p=241', 0, 'note', '', 0),
(242, 1, '2018-06-07 09:06:43', '2018-06-07 09:06:43', '', 'Notes', '', 'publish', 'closed', 'closed', '', 'note', '', '', '2018-06-08 04:56:40', '2018-06-08 04:56:40', '', 0, 'http://localhost/DeliciousCooking/?page_id=242', 0, 'page', '', 0),
(243, 1, '2018-06-07 09:06:43', '2018-06-07 09:06:43', ' ', '', '', 'publish', 'closed', 'closed', '', '243', '', '', '2018-06-07 09:06:43', '2018-06-07 09:06:43', '', 0, 'http://localhost/DeliciousCooking/index.php/2018/06/07/243/', 19, 'nav_menu_item', '', 0),
(244, 1, '2018-06-07 09:06:43', '2018-06-07 09:06:43', '', 'Notes', '', 'inherit', 'closed', 'closed', '', '242-revision-v1', '', '', '2018-06-07 09:06:43', '2018-06-07 09:06:43', '', 242, 'http://localhost/DeliciousCooking/index.php/2018/06/07/242-revision-v1/', 0, 'revision', '', 0),
(245, 1, '2018-06-08 04:24:13', '2018-06-08 04:24:13', '', 'Prog', '', 'publish', 'closed', 'closed', '', 'prog', '', '', '2018-06-08 04:24:13', '2018-06-08 04:24:13', '', 0, 'http://localhost/DeliciousCooking/?page_id=245', 0, 'page', '', 0),
(246, 1, '2018-06-08 04:24:13', '2018-06-08 04:24:13', ' ', '', '', 'publish', 'closed', 'closed', '', '246', '', '', '2018-06-08 04:24:13', '2018-06-08 04:24:13', '', 0, 'http://localhost/DeliciousCooking/2018/06/08/246/', 20, 'nav_menu_item', '', 0),
(247, 1, '2018-06-08 04:24:13', '2018-06-08 04:24:13', '', 'Prog', '', 'inherit', 'closed', 'closed', '', '245-revision-v1', '', '', '2018-06-08 04:24:13', '2018-06-08 04:24:13', '', 245, 'http://localhost/DeliciousCooking/2018/06/08/245-revision-v1/', 0, 'revision', '', 0),
(248, 1, '2018-06-08 04:31:56', '2018-06-08 04:31:56', 'fdygtyh', 'Prog 1', '', 'publish', 'closed', 'closed', '', 'prog-1', '', '', '2018-06-08 04:31:56', '2018-06-08 04:31:56', '', 0, 'http://localhost/DeliciousCooking/?post_type=prog&#038;p=248', 0, 'prog', '', 0),
(250, 1, '2018-06-28 07:31:18', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-06-28 07:31:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/DeliciousCooking/?p=250', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 20, 'image', 'Saved Image Text');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Top Menu', 'top-menu', 0),
(3, 'Social Links Menu', 'social-links-menu', 0),
(4, 'vagetables', 'vagetables', 0),
(5, 'post-format-gallery', 'post-format-gallery', 0),
(6, 'vagetable child 1', 'vagetable-child-1', 0),
(7, 'vagetable child 2', 'vagetable-child-2', 0),
(8, 'vagetable child 3', 'vagetable-child-3', 0),
(9, 'veg 1', 'veg-1', 0),
(10, 'veg 2', 'veg-2', 0),
(11, 'veg 3', 'veg-3', 0),
(12, 'veg4', 'veg4', 0),
(13, 'Top Menu', 'top-menu', 0),
(14, 'Top-Menu', 'top-menu-2', 0),
(15, 'Header Menu', 'header-menu', 0),
(16, 'Footer One', 'footer-one', 0),
(18, 'Footer Two', 'footer-two', 0),
(19, 'addded category', 'addded-category', 0),
(20, 'saved category', 'saved-category', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(3, 1, 0),
(27, 2, 0),
(28, 2, 0),
(29, 2, 0),
(30, 2, 0),
(31, 3, 0),
(32, 3, 0),
(33, 3, 0),
(34, 3, 0),
(35, 3, 0),
(37, 1, 0),
(39, 1, 0),
(53, 6, 0),
(53, 7, 0),
(53, 9, 0),
(53, 10, 0),
(53, 11, 0),
(53, 12, 0),
(62, 4, 0),
(62, 5, 0),
(62, 6, 0),
(62, 7, 0),
(62, 8, 0),
(76, 13, 0),
(77, 13, 0),
(78, 13, 0),
(80, 13, 0),
(82, 13, 0),
(83, 13, 0),
(84, 13, 0),
(85, 13, 0),
(86, 13, 0),
(87, 13, 0),
(95, 14, 0),
(96, 14, 0),
(97, 14, 0),
(98, 14, 0),
(99, 14, 0),
(100, 14, 0),
(103, 13, 0),
(106, 13, 0),
(109, 13, 0),
(115, 15, 0),
(117, 15, 0),
(120, 15, 0),
(121, 16, 0),
(122, 16, 0),
(123, 16, 0),
(140, 18, 0),
(142, 18, 0),
(144, 18, 0),
(145, 18, 0),
(147, 16, 0),
(148, 16, 0),
(149, 16, 0),
(150, 15, 0),
(152, 13, 0),
(155, 13, 0),
(157, 15, 0),
(158, 15, 0),
(174, 13, 0),
(214, 1, 0),
(222, 1, 0),
(227, 13, 0),
(229, 13, 0),
(230, 1, 0),
(233, 1, 0),
(243, 13, 0),
(246, 13, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 6),
(4, 4, 'category', 'vegetables are good for health.\r\n', 0, 0),
(6, 6, 'category', 'vagetable child 1', 4, 1),
(7, 7, 'category', 'vagetable child 2', 4, 1),
(8, 8, 'category', 'vagetable child 3', 4, 0),
(9, 9, 'post_tag', 'this is tag veg1', 0, 1),
(10, 10, 'post_tag', 'this is tag veg2', 0, 1),
(11, 11, 'post_tag', 'this is tag veg3', 0, 1),
(12, 12, 'post_tag', 'this is tag veg4', 0, 1),
(13, 13, 'nav_menu', '', 0, 20),
(14, 14, 'nav_menu', '', 0, 6),
(15, 15, 'nav_menu', '', 0, 6),
(16, 16, 'nav_menu', '', 0, 6),
(18, 18, 'nav_menu', '', 0, 4),
(19, 19, 'category', 'added category....................', 0, 0),
(20, 20, 'category', 'saved category...', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'kajal'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', 'Helloo Everyone..'),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'midnight'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice,wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '250'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(19, 1, 'wp_user-settings', 'mfold=o&hidetb=0&post_dfw=off&editor_plain_text_paste_warning=2&libraryContent=browse&advImgDetails=show'),
(20, 1, 'wp_user-settings-time', '1527587058'),
(21, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(22, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(23, 2, 'nickname', 'kirtan'),
(24, 2, 'first_name', 'kirtan'),
(25, 2, 'last_name', 'vyas'),
(26, 2, 'description', ''),
(27, 2, 'rich_editing', 'true'),
(28, 2, 'syntax_highlighting', 'true'),
(29, 2, 'comment_shortcuts', 'false'),
(30, 2, 'admin_color', 'fresh'),
(31, 2, 'use_ssl', '0'),
(32, 2, 'show_admin_bar_front', 'true'),
(33, 2, 'locale', ''),
(34, 2, 'wp_capabilities', 'a:1:{s:13:\"event_planner\";b:1;}'),
(35, 2, 'wp_user_level', '0'),
(36, 2, 'dismissed_wp_pointers', ''),
(37, 1, 'closedpostboxes_post', 'a:1:{i:0;s:12:\"revisionsdiv\";}'),
(38, 1, 'metaboxhidden_post', 'a:9:{i:0;s:23:\"acf-group_5b0f82bcb8767\";i:1;s:23:\"acf-group_5b10d7640a8b3\";i:2;s:23:\"acf-group_5b151406b9dbc\";i:3;s:23:\"acf-group_5b0fba7c27600\";i:4;s:13:\"trackbacksdiv\";i:5;s:16:\"commentstatusdiv\";i:6;s:11:\"commentsdiv\";i:7;s:7:\"slugdiv\";i:8;s:9:\"authordiv\";}'),
(39, 2, 'session_tokens', 'a:1:{s:64:\"2f7ed5bd7597340d88eb42457bd638cff65cb4724ebb24635d6a5a45452b6e99\";a:4:{s:10:\"expiration\";i:1528460380;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36\";s:5:\"login\";i:1528287580;}}'),
(40, 2, 'wp_dashboard_quick_press_last_post_id', '60'),
(41, 2, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(43, 1, 'closedpostboxes_page', 'a:0:{}'),
(44, 1, 'metaboxhidden_page', 'a:4:{i:0;s:23:\"acf-group_5b0f82bcb8767\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:9:\"authordiv\";}'),
(45, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(46, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(47, 1, 'nav_menu_recently_edited', '15'),
(48, 1, 'closedpostboxes_event', 'a:0:{}'),
(49, 1, 'metaboxhidden_event', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(50, 1, 'wp_media_library_mode', 'list'),
(51, 1, 'closedpostboxes_campus', 'a:1:{i:0;s:23:\"acf-group_5b0ff32d66432\";}'),
(52, 1, 'metaboxhidden_campus', 'a:4:{i:0;s:23:\"acf-group_5b0f82bcb8767\";i:1;s:23:\"acf-group_5b151406b9dbc\";i:2;s:23:\"acf-group_5b0fba7c27600\";i:3;s:7:\"slugdiv\";}'),
(56, 3, 'nickname', 'mansi'),
(57, 3, 'first_name', ''),
(58, 3, 'last_name', ''),
(59, 3, 'description', ''),
(60, 3, 'rich_editing', 'true'),
(61, 3, 'syntax_highlighting', 'true'),
(62, 3, 'comment_shortcuts', 'false'),
(63, 3, 'admin_color', 'fresh'),
(64, 3, 'use_ssl', '0'),
(65, 3, 'show_admin_bar_front', 'true'),
(66, 3, 'locale', ''),
(67, 3, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(68, 3, 'wp_user_level', '0'),
(69, 3, 'default_password_nag', ''),
(73, 1, 'session_tokens', 'a:3:{s:64:\"52c017f71911f378ae71adc538ac6ef0e8a6e923180c72ba5b70b1cbd7e63788\";a:4:{s:10:\"expiration\";i:1530343874;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1530171074;}s:64:\"951ae20658b4bb0995965a3ae2696f127f4bf474aaaec1e751b6a21ee53b59a4\";a:4:{s:10:\"expiration\";i:1530343876;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1530171076;}s:64:\"f62a0be3b46ac23510b9068249389bd2f8343ffdb9683ac7bd86c93f9cc69e93\";a:4:{s:10:\"expiration\";i:1530343877;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1530171077;}}'),
(74, 1, 'closedpostboxes_users_page_roles', 'a:0:{}'),
(75, 1, 'metaboxhidden_users_page_roles', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'kajal', '$P$BvZccLdJduDcJjsEAwF542qIyOgQiA/', 'kajal', 'kajal@gmail.com', '', '2018-05-28 09:47:13', '', 0, 'Kajal Patel'),
(2, 'kirtan', '$P$BbqzXobzN7YGSeE6l8yZEtTy0tdJs7/', 'kirtan', 'kirtan@mail.com', '', '2018-05-28 13:57:59', '1527515880:$P$B9MaYSXz2Nlu0wVhtR9mzMuP7tyc4s.', 0, 'kirtan vyas'),
(3, 'mansi', '$P$BYoqI0fxWtZF8QL.sFHQQL0ryw9Tuh.', 'mansi', 'mansi@mail.com', '', '2018-06-06 13:12:28', '1528290749:$P$B6Dx5CtbR9.OqUh/Fc9/jK/u0G54mx0', 0, 'mansi');

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
  ADD UNIQUE KEY `option_name` (`option_name`);

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
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=709;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1149;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
