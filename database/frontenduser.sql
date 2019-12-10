-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2018 at 11:02 AM
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
-- Database: `frontenduser`
--

-- --------------------------------------------------------

--
-- Table structure for table `feu_commentmeta`
--

CREATE TABLE `feu_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feu_comments`
--

CREATE TABLE `feu_comments` (
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
-- Dumping data for table `feu_comments`
--

INSERT INTO `feu_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-07-20 10:58:52', '2018-07-20 10:58:52', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `feu_links`
--

CREATE TABLE `feu_links` (
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
-- Table structure for table `feu_options`
--

CREATE TABLE `feu_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feu_options`
--

INSERT INTO `feu_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/frontenduser', 'yes'),
(2, 'home', 'http://localhost/frontenduser', 'yes'),
(3, 'blogname', 'FrontEndUser', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@mail.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:129:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:36:\"amn_smtp/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"amn_smtp/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"amn_smtp/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"amn_smtp/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"amn_smtp/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"amn_smtp/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"amn_smtp/([^/]+)/embed/?$\";s:41:\"index.php?amn_smtp=$matches[1]&embed=true\";s:29:\"amn_smtp/([^/]+)/trackback/?$\";s:35:\"index.php?amn_smtp=$matches[1]&tb=1\";s:37:\"amn_smtp/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?amn_smtp=$matches[1]&paged=$matches[2]\";s:44:\"amn_smtp/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?amn_smtp=$matches[1]&cpage=$matches[2]\";s:33:\"amn_smtp/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?amn_smtp=$matches[1]&page=$matches[2]\";s:25:\"amn_smtp/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"amn_smtp/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"amn_smtp/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"amn_smtp/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"amn_smtp/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"amn_smtp/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"products/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"products/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"products/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"products/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"products/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"products/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"products/([^/]+)/embed/?$\";s:53:\"index.php?frontenduser_product=$matches[1]&embed=true\";s:29:\"products/([^/]+)/trackback/?$\";s:47:\"index.php?frontenduser_product=$matches[1]&tb=1\";s:37:\"products/([^/]+)/page/?([0-9]{1,})/?$\";s:60:\"index.php?frontenduser_product=$matches[1]&paged=$matches[2]\";s:44:\"products/([^/]+)/comment-page-([0-9]{1,})/?$\";s:60:\"index.php?frontenduser_product=$matches[1]&cpage=$matches[2]\";s:33:\"products/([^/]+)(?:/([0-9]+))?/?$\";s:59:\"index.php?frontenduser_product=$matches[1]&page=$matches[2]\";s:25:\"products/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"products/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"products/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"products/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"products/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"products/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:63:\"index.php?frontenduser_product_tax=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:63:\"index.php?frontenduser_product_tax=$matches[1]&feed=$matches[2]\";s:24:\"product/([^/]+)/embed/?$\";s:57:\"index.php?frontenduser_product_tax=$matches[1]&embed=true\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:64:\"index.php?frontenduser_product_tax=$matches[1]&paged=$matches[2]\";s:18:\"product/([^/]+)/?$\";s:46:\"index.php?frontenduser_product_tax=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=33&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:43:\"learndash-image-map-master/ld-image-map.php\";i:2;s:29:\"wp-mail-smtp/wp_mail_smtp.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'frontenduser', 'yes'),
(41, 'stylesheet', 'frontenduser', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
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
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '35', 'yes'),
(84, 'page_on_front', '33', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'feu_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:6:{i:1533110334;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1533121134;a:3:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1533121161;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1533121162;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1533123695;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1532084749;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(120, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1533107673;s:7:\"checked\";a:4:{s:12:\"frontenduser\";s:3:\"1.0\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.6\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(124, 'can_compress_scripts', '1', 'no'),
(137, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.7.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.7.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.7-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.7-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.7\";s:7:\"version\";s:5:\"4.9.7\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1533107676;s:15:\"version_checked\";s:5:\"4.9.7\";s:12:\"translations\";a:0:{}}', 'no'),
(139, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:14:\"admin@mail.com\";s:7:\"version\";s:5:\"4.9.7\";s:9:\"timestamp\";i:1532084380;}', 'no'),
(141, 'current_theme', 'Front End User', 'yes'),
(142, 'theme_mods_demotheme', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1532084740;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(143, 'theme_switched', '', 'yes'),
(144, 'widget_followus', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(147, 'theme_mods_frontenduser', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(153, 'recently_activated', 'a:1:{s:29:\"livesupporti/livesupporti.php\";i:1532504198;}', 'yes'),
(154, 'acf_version', '5.6.7', 'yes'),
(156, 'options_vc_general_theme_setting_site_logo_home_page', '28', 'no'),
(157, '_options_vc_general_theme_setting_site_logo_home_page', 'field_5b4d79d1f0e03', 'no'),
(158, 'options_vc_general_theme_setting_site_logo', '28', 'no'),
(159, '_options_vc_general_theme_setting_site_logo', 'field_5b4880ddd7147', 'no'),
(160, 'options_vc_general_theme_setting_favicon_logo', '29', 'no'),
(161, '_options_vc_general_theme_setting_favicon_logo', 'field_5b4880e1cd160', 'no'),
(162, 'options_vc_general_theme_setting_admin_logo', '28', 'no'),
(163, '_options_vc_general_theme_setting_admin_logo', 'field_5b48812bcd161', 'no'),
(164, 'options_vc_general_theme_setting_contact_no', ' 619 270-9453', 'no'),
(165, '_options_vc_general_theme_setting_contact_no', 'field_5b4883c356cce', 'no'),
(166, 'options_vc_general_theme_setting_contct_email', 'info@temarry.com', 'no'),
(167, '_options_vc_general_theme_setting_contct_email', 'field_5b4883ea56ccf', 'no'),
(168, 'options_vc_footer_theme_setting_copyright', 'Temarry Recycling', 'no'),
(169, '_options_vc_footer_theme_setting_copyright', 'field_5b4883920c050', 'no'),
(170, 'options_vc_footer_theme_setting_backgrond_image', '30', 'no'),
(171, '_options_vc_footer_theme_setting_backgrond_image', 'field_5b4c9051c0120', 'no'),
(174, 'options_feu_general_theme_setting_site_logo_home_page', '28', 'no'),
(175, '_options_feu_general_theme_setting_site_logo_home_page', 'field_5b4d79d1f0e03', 'no'),
(176, 'options_feu_general_theme_setting_site_logo', '', 'no'),
(177, '_options_feu_general_theme_setting_site_logo', 'field_5b4880ddd7147', 'no'),
(178, 'options_feu_general_theme_setting_favicon_logo', '29', 'no'),
(179, '_options_feu_general_theme_setting_favicon_logo', 'field_5b4880e1cd160', 'no'),
(180, 'options_feu_general_theme_setting_admin_logo', '28', 'no'),
(181, '_options_feu_general_theme_setting_admin_logo', 'field_5b48812bcd161', 'no'),
(182, 'options_feu_general_theme_setting_contact_no', ' 619 270-9453', 'no'),
(183, '_options_feu_general_theme_setting_contact_no', 'field_5b4883c356cce', 'no'),
(184, 'options_feu_general_theme_setting_contct_email', 'info@temarry.com', 'no'),
(185, '_options_feu_general_theme_setting_contct_email', 'field_5b4883ea56ccf', 'no'),
(186, 'options_feu_footer_theme_setting_copyright', 'Temarry Recycling', 'no'),
(187, '_options_feu_footer_theme_setting_copyright', 'field_5b4883920c050', 'no'),
(188, 'options_feu_footer_theme_setting_backgrond_image', '30', 'no'),
(189, '_options_feu_footer_theme_setting_backgrond_image', 'field_5b4c9051c0120', 'no'),
(241, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(341, 'liveSupportiEmail', 'webdeveloper1011@gmail.com', 'yes'),
(342, 'liveSupportiSkin', 'Classic', 'yes'),
(343, 'liveSupportiLicense', 'a5565d21-fa91-4911-8df5-318cc06074ca', 'yes'),
(422, 'wp_mail_smtp_initial_version', '1.3.3', 'no'),
(423, 'wp_mail_smtp_version', '1.3.3', 'no'),
(424, 'wp_mail_smtp', 'a:5:{s:4:\"mail\";a:6:{s:10:\"from_email\";s:22:\"klpatel199747@mail.com\";s:9:\"from_name\";s:12:\"FrontEndUser\";s:6:\"mailer\";s:4:\"smtp\";s:11:\"return_path\";b:0;s:16:\"from_email_force\";b:0;s:15:\"from_name_force\";b:0;}s:4:\"smtp\";a:7:{s:7:\"autotls\";b:1;s:4:\"host\";s:17:\"mail.ebizwork.com\";s:10:\"encryption\";s:4:\"none\";s:4:\"port\";i:587;s:4:\"user\";s:22:\"developer@ebizwork.com\";s:4:\"pass\";s:12:\"yBbb_SU[g]Sq\";s:4:\"auth\";b:1;}s:5:\"gmail\";a:2:{s:9:\"client_id\";s:0:\"\";s:13:\"client_secret\";s:0:\"\";}s:7:\"mailgun\";a:2:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";}s:8:\"sendgrid\";a:1:{s:7:\"api_key\";s:0:\"\";}}', 'no'),
(425, '_amn_smtp_last_checked', '1532908800', 'yes'),
(426, 'wp_mail_smtp_debug', 'a:0:{}', 'no'),
(427, '_transient_random_seed', '6a47222ef674f9448573ceee7298effc', 'yes'),
(487, '_site_transient_timeout_browser_a54eb83090ed984332f4eca22d3ec5e4', '1533362107', 'no'),
(488, '_site_transient_browser_a54eb83090ed984332f4eca22d3ec5e4', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"67.0.3396.99\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(502, 'category_children', 'a:0:{}', 'yes'),
(506, '_transient_is_multi_author', '0', 'yes'),
(526, '_site_transient_timeout_theme_roots', '1533109471', 'no'),
(527, '_site_transient_theme_roots', 'a:4:{s:12:\"frontenduser\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(529, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1533107682;s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.7.1\";s:3:\"url\";s:37:\"https://www.advancedcustomfields.com/\";s:6:\"tested\";s:5:\"4.9.9\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:1:{s:7:\"default\";s:66:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"buddypress-learndash/buddypress-learndash.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/buddypress-learndash\";s:4:\"slug\";s:20:\"buddypress-learndash\";s:6:\"plugin\";s:45:\"buddypress-learndash/buddypress-learndash.php\";s:11:\"new_version\";s:5:\"1.2.5\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/buddypress-learndash/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/buddypress-learndash.1.2.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/buddypress-learndash/assets/icon-256x256.png?rev=1189398\";s:2:\"1x\";s:73:\"https://ps.w.org/buddypress-learndash/assets/icon-128x128.png?rev=1189402\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/buddypress-learndash/assets/banner-1544x500.png?rev=1189401\";s:2:\"1x\";s:75:\"https://ps.w.org/buddypress-learndash/assets/banner-772x250.png?rev=1189400\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:29:\"livesupporti/livesupporti.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/livesupporti\";s:4:\"slug\";s:12:\"livesupporti\";s:6:\"plugin\";s:29:\"livesupporti/livesupporti.php\";s:11:\"new_version\";s:5:\"1.0.6\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/livesupporti/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/livesupporti.1.0.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/livesupporti/assets/icon-256x256.png?rev=1104978\";s:2:\"1x\";s:65:\"https://ps.w.org/livesupporti/assets/icon-128x128.png?rev=1104978\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/livesupporti/assets/banner-1544x500.png?rev=1667149\";s:2:\"1x\";s:67:\"https://ps.w.org/livesupporti/assets/banner-772x250.png?rev=1667149\";}s:11:\"banners_rtl\";a:0:{}}s:29:\"wp-mail-smtp/wp_mail_smtp.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/wp-mail-smtp\";s:4:\"slug\";s:12:\"wp-mail-smtp\";s:6:\"plugin\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:11:\"new_version\";s:5:\"1.3.3\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-mail-smtp/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/wp-mail-smtp.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-256x256.png?rev=1755440\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-128x128.png?rev=1755440\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-mail-smtp/assets/banner-1544x500.png?rev=1900656\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-mail-smtp/assets/banner-772x250.png?rev=1900656\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `feu_postmeta`
--

CREATE TABLE `feu_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feu_postmeta`
--

INSERT INTO `feu_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 28, '_wp_attached_file', '2018/07/logo2.png'),
(4, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:304;s:6:\"height\";i:70;s:4:\"file\";s:17:\"2018/07/logo2.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo2-150x70.png\";s:5:\"width\";i:150;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"logo2-300x69.png\";s:5:\"width\";i:300;s:6:\"height\";i:69;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 29, '_wp_attached_file', '2018/07/favicon.ico'),
(6, 30, '_wp_attached_file', '2018/07/footer.jpg'),
(7, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1371;s:6:\"height\";i:428;s:4:\"file\";s:18:\"2018/07/footer.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"footer-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"footer-300x94.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:94;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"footer-768x240.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"footer-1024x320.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:19:\"footer-1200x375.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(8, 8, '_edit_lock', '1532086197:1'),
(9, 8, '_edit_last', '1'),
(10, 22, '_edit_lock', '1532085287:1'),
(11, 22, '_edit_last', '1'),
(12, 5, '_edit_lock', '1532584335:1'),
(13, 5, '_edit_last', '1'),
(17, 33, '_edit_last', '1'),
(18, 33, '_wp_page_template', 'default'),
(19, 33, '_edit_lock', '1532409476:1'),
(20, 35, '_edit_last', '1'),
(21, 35, '_wp_page_template', 'default'),
(22, 35, '_edit_lock', '1532086803:1'),
(23, 37, '_edit_last', '1'),
(24, 37, '_wp_page_template', 'templates/register-page.php'),
(25, 37, '_edit_lock', '1532171114:1'),
(26, 39, '_edit_last', '1'),
(27, 39, '_wp_page_template', 'templates/register-page.php'),
(28, 39, '_edit_lock', '1532157382:1'),
(29, 41, '_edit_last', '1'),
(30, 41, '_wp_page_template', 'default'),
(31, 41, '_edit_lock', '1532323135:1'),
(32, 43, '_menu_item_type', 'post_type'),
(33, 43, '_menu_item_menu_item_parent', '0'),
(34, 43, '_menu_item_object_id', '41'),
(35, 43, '_menu_item_object', 'page'),
(36, 43, '_menu_item_target', ''),
(37, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(38, 43, '_menu_item_xfn', ''),
(39, 43, '_menu_item_url', ''),
(43, 44, '_edit_lock', '1532411758:1'),
(44, 44, '_edit_last', '1'),
(45, 44, '_wp_page_template', 'templates/login-page.php'),
(46, 46, '_edit_lock', '1532421824:1'),
(47, 46, '_edit_last', '1'),
(48, 47, '_edit_lock', '1532421722:1'),
(49, 47, '_edit_last', '1'),
(50, 47, '_wp_page_template', 'templates/forget-password.php'),
(51, 49, '_menu_item_type', 'post_type'),
(52, 49, '_menu_item_menu_item_parent', '0'),
(53, 49, '_menu_item_object_id', '47'),
(54, 49, '_menu_item_object', 'page'),
(55, 49, '_menu_item_target', ''),
(56, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(57, 49, '_menu_item_xfn', ''),
(58, 49, '_menu_item_url', ''),
(60, 50, '_edit_lock', '1532497761:1'),
(61, 50, '_edit_last', '1'),
(64, 53, '_edit_lock', '1532759460:1'),
(65, 53, '_edit_last', '1'),
(66, 53, '_wp_page_template', 'default'),
(67, 55, '_menu_item_type', 'post_type'),
(68, 55, '_menu_item_menu_item_parent', '0'),
(69, 55, '_menu_item_object_id', '53'),
(70, 55, '_menu_item_object', 'page'),
(71, 55, '_menu_item_target', ''),
(72, 55, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(73, 55, '_menu_item_xfn', ''),
(74, 55, '_menu_item_url', ''),
(82, 1, '_edit_lock', '1532523748:1'),
(83, 59, '_edit_last', '1'),
(84, 59, '_wp_page_template', 'default'),
(85, 59, '_edit_lock', '1532523789:1'),
(86, 62, '_menu_item_type', 'post_type'),
(87, 62, '_menu_item_menu_item_parent', '0'),
(88, 62, '_menu_item_object_id', '59'),
(89, 62, '_menu_item_object', 'page'),
(90, 62, '_menu_item_target', ''),
(91, 62, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(92, 62, '_menu_item_xfn', ''),
(93, 62, '_menu_item_url', ''),
(96, 64, '_edit_last', '1'),
(97, 64, '_wp_page_template', 'default'),
(98, 64, '_edit_lock', '1532599751:1'),
(99, 66, '_edit_last', '1'),
(100, 66, '_wp_page_template', 'default'),
(101, 66, '_edit_lock', '1532599760:1'),
(102, 68, '_edit_lock', '1532759460:1'),
(103, 68, '_edit_last', '1'),
(104, 53, 'dsfghyujik', ''),
(105, 53, '_dsfghyujik', 'field_5b5aabb39c3b7'),
(106, 75, 'dsfghyujik', ''),
(107, 75, '_dsfghyujik', 'field_5b5aabb39c3b7');

-- --------------------------------------------------------

--
-- Table structure for table `feu_posts`
--

CREATE TABLE `feu_posts` (
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
-- Dumping data for table `feu_posts`
--

INSERT INTO `feu_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-07-20 10:58:52', '2018-07-20 10:58:52', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-07-20 10:58:52', '2018-07-20 10:58:52', '', 0, 'http://localhost/frontenduser/?p=1', 0, 'post', '', 1),
(2, 1, '2018-07-20 10:58:52', '2018-07-20 10:58:52', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/frontenduser/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-07-20 10:58:52', '2018-07-20 10:58:52', '', 0, 'http://localhost/frontenduser/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-07-20 10:58:52', '2018-07-20 10:58:52', '<h2>Who we are</h2><p>Our website address is: http://localhost/frontenduser.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracing your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-07-20 10:58:52', '2018-07-20 10:58:52', '', 0, 'http://localhost/frontenduser/?page_id=3', 0, 'page', '', 0),
(5, 1, '2018-07-20 11:09:30', '2018-07-20 11:09:30', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"acf-options-footer\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Footer Setting Custom Meta Field', 'footer-setting-custom-meta-field', 'publish', 'closed', 'closed', '', 'group_5b4889024f074', '', '', '2018-07-20 11:18:46', '2018-07-20 11:18:46', '', 0, 'http://localhost/frontenduser/?post_type=acf-field-group&#038;p=5', 0, 'acf-field-group', '', 0),
(6, 1, '2018-07-20 11:09:31', '2018-07-20 11:09:31', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Copyright', 'feu_footer_theme_setting_copyright', 'publish', 'closed', 'closed', '', 'field_5b4883920c050', '', '', '2018-07-20 11:18:46', '2018-07-20 11:18:46', '', 5, 'http://localhost/frontenduser/?post_type=acf-field&#038;p=6', 0, 'acf-field', '', 0),
(7, 1, '2018-07-20 11:09:31', '2018-07-20 11:09:31', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Footer Backgrond Image', 'feu_footer_theme_setting_backgrond_image', 'publish', 'closed', 'closed', '', 'field_5b4c9051c0120', '', '', '2018-07-20 11:18:46', '2018-07-20 11:18:46', '', 5, 'http://localhost/frontenduser/?post_type=acf-field&#038;p=7', 1, 'acf-field', '', 0),
(8, 1, '2018-07-20 11:09:31', '2018-07-20 11:09:31', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:22:\"theme-general-settings\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'General Setting Custom Meta Field', 'general-setting-custom-meta-field', 'publish', 'closed', 'closed', '', 'group_5b48808976420', '', '', '2018-07-20 11:16:10', '2018-07-20 11:16:10', '', 0, 'http://localhost/frontenduser/?post_type=acf-field-group&#038;p=8', 0, 'acf-field-group', '', 0),
(9, 1, '2018-07-20 11:09:31', '2018-07-20 11:09:31', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Site Logo For Home Page', 'feu_general_theme_setting_site_logo_home_page', 'publish', 'closed', 'closed', '', 'field_5b4d79d1f0e03', '', '', '2018-07-20 11:16:10', '2018-07-20 11:16:10', '', 8, 'http://localhost/frontenduser/?post_type=acf-field&#038;p=9', 0, 'acf-field', '', 0),
(10, 1, '2018-07-20 11:09:31', '2018-07-20 11:09:31', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Site Logo', 'feu_general_theme_setting_site_logo', 'publish', 'closed', 'closed', '', 'field_5b4880ddd7147', '', '', '2018-07-20 11:16:10', '2018-07-20 11:16:10', '', 8, 'http://localhost/frontenduser/?post_type=acf-field&#038;p=10', 1, 'acf-field', '', 0),
(11, 1, '2018-07-20 11:09:31', '2018-07-20 11:09:31', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Favicon Logo', 'feu_general_theme_setting_favicon_logo', 'publish', 'closed', 'closed', '', 'field_5b4880e1cd160', '', '', '2018-07-20 11:16:10', '2018-07-20 11:16:10', '', 8, 'http://localhost/frontenduser/?post_type=acf-field&#038;p=11', 2, 'acf-field', '', 0),
(12, 1, '2018-07-20 11:09:31', '2018-07-20 11:09:31', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Admin Login Page Logo', 'feu_general_theme_setting_admin_logo', 'publish', 'closed', 'closed', '', 'field_5b48812bcd161', '', '', '2018-07-20 11:16:10', '2018-07-20 11:16:10', '', 8, 'http://localhost/frontenduser/?post_type=acf-field&#038;p=12', 3, 'acf-field', '', 0),
(13, 1, '2018-07-20 11:09:31', '2018-07-20 11:09:31', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Contact No.', 'feu_general_theme_setting_contact_no', 'publish', 'closed', 'closed', '', 'field_5b4883c356cce', '', '', '2018-07-20 11:16:10', '2018-07-20 11:16:10', '', 8, 'http://localhost/frontenduser/?post_type=acf-field&#038;p=13', 4, 'acf-field', '', 0),
(14, 1, '2018-07-20 11:09:31', '2018-07-20 11:09:31', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Contct Email Address', 'feu_general_theme_setting_contct_email', 'publish', 'closed', 'closed', '', 'field_5b4883ea56ccf', '', '', '2018-07-20 11:16:10', '2018-07-20 11:16:10', '', 8, 'http://localhost/frontenduser/?post_type=acf-field&#038;p=14', 5, 'acf-field', '', 0),
(15, 1, '2018-07-20 11:09:31', '2018-07-20 11:09:31', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"65\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:5:\"local\";s:3:\"php\";}', 'Slider Content', 'slider-content', 'publish', 'closed', 'closed', '', 'group_5b4ec56c787b2', '', '', '2018-07-20 11:09:31', '2018-07-20 11:09:31', '', 0, 'http://localhost/frontenduser/?post_type=acf-field-group&p=15', 0, 'acf-field-group', '', 0),
(16, 1, '2018-07-20 11:09:32', '2018-07-20 11:09:32', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:0;s:3:\"max\";i:0;s:6:\"layout\";s:5:\"block\";s:12:\"button_label\";s:0:\"\";}', 'Slider Content', 'vc_theme_setting_slider_content', 'publish', 'closed', 'closed', '', 'field_5b4ed64bee565', '', '', '2018-07-20 11:09:32', '2018-07-20 11:09:32', '', 15, 'http://localhost/frontenduser/?post_type=acf-field&p=16', 0, 'acf-field', '', 0),
(17, 1, '2018-07-20 11:09:32', '2018-07-20 11:09:32', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Slider Title', 'vc_theme_setting_slider_title', 'publish', 'closed', 'closed', '', 'field_5b4ec59c9d37f', '', '', '2018-07-20 11:09:32', '2018-07-20 11:09:32', '', 16, 'http://localhost/frontenduser/?post_type=acf-field&p=17', 0, 'acf-field', '', 0),
(18, 1, '2018-07-20 11:09:32', '2018-07-20 11:09:32', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:0;s:3:\"max\";i:0;s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Slider List Section', 'vc_theme_setting_slider_list_section', 'publish', 'closed', 'closed', '', 'field_5b4ec6439d380', '', '', '2018-07-20 11:09:32', '2018-07-20 11:09:32', '', 16, 'http://localhost/frontenduser/?post_type=acf-field&p=18', 1, 'acf-field', '', 0),
(19, 1, '2018-07-20 11:09:32', '2018-07-20 11:09:32', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Page Title', 'page_title', 'publish', 'closed', 'closed', '', 'field_5b4ed098d9a48', '', '', '2018-07-20 11:09:32', '2018-07-20 11:09:32', '', 18, 'http://localhost/frontenduser/?post_type=acf-field&p=19', 0, 'acf-field', '', 0),
(20, 1, '2018-07-20 11:09:32', '2018-07-20 11:09:32', 'a:10:{s:4:\"type\";s:9:\"page_link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:4:\"page\";}s:8:\"taxonomy\";a:0:{}s:10:\"allow_null\";i:0;s:14:\"allow_archives\";i:1;s:8:\"multiple\";i:0;}', 'Page Link', 'page_link', 'publish', 'closed', 'closed', '', 'field_5b4ed0c0d9a49', '', '', '2018-07-20 11:09:32', '2018-07-20 11:09:32', '', 18, 'http://localhost/frontenduser/?post_type=acf-field&p=20', 1, 'acf-field', '', 0),
(21, 1, '2018-07-20 11:09:32', '2018-07-20 11:09:32', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Slider Subtitle', 'vc_theme_setting_slider_subtitle', 'publish', 'closed', 'closed', '', 'field_5b4ec66a9d381', '', '', '2018-07-20 11:09:32', '2018-07-20 11:09:32', '', 16, 'http://localhost/frontenduser/?post_type=acf-field&p=21', 2, 'acf-field', '', 0),
(22, 1, '2018-07-20 11:09:32', '2018-07-20 11:09:32', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"acf-options-social\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Social Setting Custom Meta Field', 'social-setting-custom-meta-field', 'publish', 'closed', 'closed', '', 'group_5b488890c4f47', '', '', '2018-07-20 11:17:03', '2018-07-20 11:17:03', '', 0, 'http://localhost/frontenduser/?post_type=acf-field-group&#038;p=22', 0, 'acf-field-group', '', 0),
(23, 1, '2018-07-20 11:09:32', '2018-07-20 11:09:32', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Facebook Url', 'feu_social_theme_setting_facebook_url', 'publish', 'closed', 'closed', '', 'field_5b4881bcc866b', '', '', '2018-07-20 11:17:03', '2018-07-20 11:17:03', '', 22, 'http://localhost/frontenduser/?post_type=acf-field&#038;p=23', 0, 'acf-field', '', 0),
(24, 1, '2018-07-20 11:09:33', '2018-07-20 11:09:33', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Twitter Url', 'feu_social_theme_setting_twitter_url', 'publish', 'closed', 'closed', '', 'field_5b48820cc866c', '', '', '2018-07-20 11:17:03', '2018-07-20 11:17:03', '', 22, 'http://localhost/frontenduser/?post_type=acf-field&#038;p=24', 1, 'acf-field', '', 0),
(25, 1, '2018-07-20 11:09:33', '2018-07-20 11:09:33', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'LinkedIn Url', 'feu_social_theme_setting_linkedin_url', 'publish', 'closed', 'closed', '', 'field_5b488259c866d', '', '', '2018-07-20 11:17:03', '2018-07-20 11:17:03', '', 22, 'http://localhost/frontenduser/?post_type=acf-field&#038;p=25', 2, 'acf-field', '', 0),
(26, 1, '2018-07-20 11:09:33', '2018-07-20 11:09:33', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Google Plus Url', 'feu_social_theme_setting_google_plus_url', 'publish', 'closed', 'closed', '', 'field_5b48827ec866e', '', '', '2018-07-20 11:17:03', '2018-07-20 11:17:03', '', 22, 'http://localhost/frontenduser/?post_type=acf-field&#038;p=26', 3, 'acf-field', '', 0),
(27, 1, '2018-07-20 11:09:33', '2018-07-20 11:09:33', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Youtube Url', 'feu_social_theme_setting_youtube_url', 'publish', 'closed', 'closed', '', 'field_5b488294c866f', '', '', '2018-07-20 11:17:03', '2018-07-20 11:17:03', '', 22, 'http://localhost/frontenduser/?post_type=acf-field&#038;p=27', 4, 'acf-field', '', 0),
(28, 1, '2018-07-20 11:10:40', '2018-07-20 11:10:40', '', 'logo2', '', 'inherit', 'open', 'closed', '', 'logo2', '', '', '2018-07-20 11:26:15', '2018-07-20 11:26:15', '', 0, 'http://localhost/frontenduser/wp-content/uploads/2018/07/logo2.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2018-07-20 11:11:35', '2018-07-20 11:11:35', '', 'favicon', '', 'inherit', 'open', 'closed', '', 'favicon', '', '', '2018-07-20 11:11:35', '2018-07-20 11:11:35', '', 0, 'http://localhost/frontenduser/wp-content/uploads/2018/07/favicon.ico', 0, 'attachment', 'image/x-icon', 0),
(30, 1, '2018-07-20 11:12:10', '2018-07-20 11:12:10', '', 'footer', '', 'inherit', 'open', 'closed', '', 'footer', '', '', '2018-07-20 11:26:28', '2018-07-20 11:26:28', '', 0, 'http://localhost/frontenduser/wp-content/uploads/2018/07/footer.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2018-07-20 11:42:16', '2018-07-20 11:42:16', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-07-24 05:17:33', '2018-07-24 05:17:33', '', 0, 'http://localhost/frontenduser/?page_id=33', 0, 'page', '', 0),
(34, 1, '2018-07-20 11:42:16', '2018-07-20 11:42:16', '', 'Home', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2018-07-20 11:42:16', '2018-07-20 11:42:16', '', 33, 'http://localhost/frontenduser/2018/07/20/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2018-07-20 11:42:24', '2018-07-20 11:42:24', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-07-20 11:42:24', '2018-07-20 11:42:24', '', 0, 'http://localhost/frontenduser/?page_id=35', 0, 'page', '', 0),
(36, 1, '2018-07-20 11:42:24', '2018-07-20 11:42:24', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-07-20 11:42:24', '2018-07-20 11:42:24', '', 35, 'http://localhost/frontenduser/2018/07/20/35-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2018-07-20 12:53:44', '2018-07-20 12:53:44', '', 'Register', '', 'publish', 'closed', 'closed', '', 'register', '', '', '2018-07-21 07:48:21', '2018-07-21 07:48:21', '', 0, 'http://localhost/frontenduser/?page_id=37', 0, 'page', '', 0),
(38, 1, '2018-07-20 12:53:44', '2018-07-20 12:53:44', '', 'Register', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2018-07-20 12:53:44', '2018-07-20 12:53:44', '', 37, 'http://localhost/frontenduser/2018/07/20/37-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2018-07-21 07:13:44', '2018-07-21 07:13:44', '', 'Register', '', 'publish', 'closed', 'closed', '', 'register-2', '', '', '2018-07-21 07:14:26', '2018-07-21 07:14:26', '', 0, 'http://localhost/frontenduser/?page_id=39', 0, 'page', '', 0),
(40, 1, '2018-07-21 07:13:44', '2018-07-21 07:13:44', '', 'Register', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2018-07-21 07:13:44', '2018-07-21 07:13:44', '', 39, 'http://localhost/frontenduser/2018/07/21/39-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2018-07-23 05:19:26', '2018-07-23 05:19:26', '', 'User Listing', '', 'publish', 'closed', 'closed', '', 'user-listing', '', '', '2018-07-23 05:19:26', '2018-07-23 05:19:26', '', 0, 'http://localhost/frontenduser/?page_id=41', 0, 'page', '', 0),
(42, 1, '2018-07-23 05:19:26', '2018-07-23 05:19:26', '', 'User Listing', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2018-07-23 05:19:26', '2018-07-23 05:19:26', '', 41, 'http://localhost/frontenduser/2018/07/23/41-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2018-07-23 05:21:53', '2018-07-23 05:21:53', ' ', '', '', 'publish', 'closed', 'closed', '', '43', '', '', '2018-07-25 13:05:39', '2018-07-25 13:05:39', '', 0, 'http://localhost/frontenduser/?p=43', 1, 'nav_menu_item', '', 0),
(44, 1, '2018-07-24 05:49:14', '2018-07-24 05:49:14', '', 'Login', '', 'publish', 'closed', 'closed', '', 'login', '', '', '2018-07-24 05:49:14', '2018-07-24 05:49:14', '', 0, 'http://localhost/frontenduser/?page_id=44', 0, 'page', '', 0),
(45, 1, '2018-07-24 05:49:14', '2018-07-24 05:49:14', '', 'Login', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2018-07-24 05:49:14', '2018-07-24 05:49:14', '', 44, 'http://localhost/frontenduser/2018/07/24/44-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2018-07-24 08:43:30', '0000-00-00 00:00:00', '', 'Forget Password', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-07-24 08:43:30', '2018-07-24 08:43:30', '', 0, 'http://localhost/frontenduser/?page_id=46', 0, 'page', '', 0),
(47, 1, '2018-07-24 08:44:17', '2018-07-24 08:44:17', '', 'Forget Password', '', 'publish', 'closed', 'closed', '', 'forget-password', '', '', '2018-07-24 08:44:17', '2018-07-24 08:44:17', '', 0, 'http://localhost/frontenduser/?page_id=47', 0, 'page', '', 0),
(48, 1, '2018-07-24 08:44:17', '2018-07-24 08:44:17', '', 'Forget Password', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2018-07-24 08:44:17', '2018-07-24 08:44:17', '', 47, 'http://localhost/frontenduser/2018/07/24/47-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2018-07-24 08:44:36', '2018-07-24 08:44:36', ' ', '', '', 'publish', 'closed', 'closed', '', '49', '', '', '2018-07-25 13:05:39', '2018-07-25 13:05:39', '', 0, 'http://localhost/frontenduser/?p=49', 2, 'nav_menu_item', '', 0),
(50, 1, '2018-07-24 13:54:43', '2018-07-24 13:54:43', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"user_form\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"edit\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'User Status', 'user-status', 'publish', 'closed', 'closed', '', 'group_5b572f7ac0164', '', '', '2018-07-25 05:30:14', '2018-07-25 05:30:14', '', 0, 'http://localhost/frontenduser/?post_type=acf-field-group&#038;p=50', 0, 'acf-field-group', '', 0),
(51, 1, '2018-07-24 13:54:43', '2018-07-24 13:54:43', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:1;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'User Status', 'feu_user_status', 'publish', 'closed', 'closed', '', 'field_5b572f84ca8ea', '', '', '2018-07-25 05:30:14', '2018-07-25 05:30:14', '', 50, 'http://localhost/frontenduser/?post_type=acf-field&#038;p=51', 0, 'acf-field', '', 0),
(53, 1, '2018-07-25 10:50:45', '2018-07-25 10:50:45', '[dropdown_test_shortcode]', 'Test', '', 'publish', 'closed', 'closed', '', 'test', '', '', '2018-07-27 07:20:12', '2018-07-27 07:20:12', '', 0, 'http://localhost/frontenduser/?page_id=53', 0, 'page', '', 0),
(54, 1, '2018-07-25 10:50:45', '2018-07-25 10:50:45', '[dropdown_test_shortcode]', 'Test', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2018-07-25 10:50:45', '2018-07-25 10:50:45', '', 53, 'http://localhost/frontenduser/2018/07/25/53-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2018-07-25 10:50:56', '2018-07-25 10:50:56', ' ', '', '', 'publish', 'closed', 'closed', '', '55', '', '', '2018-07-25 13:05:39', '2018-07-25 13:05:39', '', 0, 'http://localhost/frontenduser/?p=55', 3, 'nav_menu_item', '', 0),
(59, 1, '2018-07-25 13:05:00', '2018-07-25 13:05:00', '[dropdown_test_shortcode]', 'test2', '', 'publish', 'closed', 'closed', '', 'test2', '', '', '2018-07-25 13:05:25', '2018-07-25 13:05:25', '', 0, 'http://localhost/frontenduser/?page_id=59', 0, 'page', '', 0),
(60, 1, '2018-07-25 13:05:00', '2018-07-25 13:05:00', '', 'test2', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2018-07-25 13:05:00', '2018-07-25 13:05:00', '', 59, 'http://localhost/frontenduser/2018/07/25/59-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2018-07-25 13:05:25', '2018-07-25 13:05:25', '[dropdown_test_shortcode]', 'test2', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2018-07-25 13:05:25', '2018-07-25 13:05:25', '', 59, 'http://localhost/frontenduser/2018/07/25/59-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2018-07-25 13:05:39', '2018-07-25 13:05:39', ' ', '', '', 'publish', 'closed', 'closed', '', '62', '', '', '2018-07-25 13:05:39', '2018-07-25 13:05:39', '', 0, 'http://localhost/frontenduser/?p=62', 4, 'nav_menu_item', '', 0),
(64, 1, '2018-07-26 09:47:41', '2018-07-26 09:47:41', '', 'test3', '', 'publish', 'closed', 'closed', '', 'test3', '', '', '2018-07-26 09:47:41', '2018-07-26 09:47:41', '', 0, 'http://localhost/frontenduser/?page_id=64', 0, 'page', '', 0),
(65, 1, '2018-07-26 09:47:41', '2018-07-26 09:47:41', '', 'test3', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2018-07-26 09:47:41', '2018-07-26 09:47:41', '', 64, 'http://localhost/frontenduser/2018/07/26/64-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2018-07-26 10:11:42', '2018-07-26 10:11:42', '', 'test4', '', 'publish', 'closed', 'closed', '', 'test4', '', '', '2018-07-26 10:11:42', '2018-07-26 10:11:42', '', 0, 'http://localhost/frontenduser/?page_id=66', 0, 'page', '', 0),
(67, 1, '2018-07-26 10:11:42', '2018-07-26 10:11:42', '', 'test4', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2018-07-26 10:11:42', '2018-07-26 10:11:42', '', 66, 'http://localhost/frontenduser/2018/07/26/66-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2018-07-27 05:09:47', '2018-07-27 05:09:47', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"53\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Test', 'test', 'publish', 'closed', 'closed', '', 'group_5b5aa7e704c13', '', '', '2018-07-28 06:19:59', '2018-07-28 06:19:59', '', 0, 'http://localhost/frontenduser/?post_type=acf-field-group&#038;p=68', 0, 'acf-field-group', '', 0),
(69, 1, '2018-07-27 05:09:47', '2018-07-27 05:09:47', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Responsive Package', 'responsive_package', 'publish', 'closed', 'closed', '', 'field_5b5aa7e9f62cc', '', '', '2018-07-27 07:19:55', '2018-07-27 07:19:55', '', 68, 'http://localhost/frontenduser/?post_type=acf-field&#038;p=69', 0, 'acf-field', '', 0),
(70, 1, '2018-07-27 05:09:47', '2018-07-27 05:09:47', 'a:8:{s:4:\"type\";s:9:\"accordion\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"open\";i:0;s:12:\"multi_expand\";i:0;s:8:\"endpoint\";i:0;}', 'Add Package', 'add_package', 'publish', 'closed', 'closed', '', 'field_5b5aa837f62cd', '', '', '2018-07-27 07:19:55', '2018-07-27 07:19:55', '', 72, 'http://localhost/frontenduser/?post_type=acf-field&#038;p=70', 0, 'acf-field', '', 0),
(72, 1, '2018-07-27 05:22:24', '2018-07-27 05:22:24', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"block\";s:12:\"button_label\";s:0:\"\";}', '', 'dsfghyujik', 'publish', 'closed', 'closed', '', 'field_5b5aabb39c3b7', '', '', '2018-07-27 07:19:55', '2018-07-27 07:19:55', '', 68, 'http://localhost/frontenduser/?post_type=acf-field&#038;p=72', 1, 'acf-field', '', 0),
(73, 1, '2018-07-27 05:23:09', '2018-07-27 05:23:09', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'dfg', 'dfg', 'publish', 'closed', 'closed', '', 'field_5b5aac2f15091', '', '', '2018-07-27 07:19:55', '2018-07-27 07:19:55', '', 76, 'http://localhost/frontenduser/?post_type=acf-field&#038;p=73', 1, 'acf-field', '', 0),
(74, 1, '2018-07-27 05:23:09', '2018-07-27 05:23:09', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'efrtyuik', 'efrtyuik', 'publish', 'closed', 'closed', '', 'field_5b5aac3715092', '', '', '2018-07-27 07:19:55', '2018-07-27 07:19:55', '', 76, 'http://localhost/frontenduser/?post_type=acf-field&#038;p=74', 0, 'acf-field', '', 0),
(75, 1, '2018-07-27 06:28:17', '2018-07-27 06:28:17', '[dropdown_test_shortcode]', 'Test', '', 'inherit', 'closed', 'closed', '', '53-autosave-v1', '', '', '2018-07-27 06:28:17', '2018-07-27 06:28:17', '', 53, 'http://localhost/frontenduser/2018/07/27/53-autosave-v1/', 0, 'revision', '', 0),
(76, 1, '2018-07-27 07:19:55', '2018-07-27 07:19:55', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Main Title Section', 'main_title', 'publish', 'closed', 'closed', '', 'field_5b5abbd687650', '', '', '2018-07-27 07:26:23', '2018-07-27 07:26:23', '', 72, 'http://localhost/frontenduser/?post_type=acf-field&#038;p=76', 1, 'acf-field', '', 0),
(77, 1, '2018-07-28 05:55:08', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-07-28 05:55:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/frontenduser/?p=77', 0, 'post', '', 0),
(78, 1, '2018-07-28 06:11:22', '2018-07-28 06:11:22', 'a:13:{s:4:\"type\";s:8:\"taxonomy\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:8:\"taxonomy\";s:8:\"category\";s:10:\"field_type\";s:8:\"checkbox\";s:10:\"allow_null\";i:0;s:8:\"add_term\";i:1;s:10:\"save_terms\";i:0;s:10:\"load_terms\";i:0;s:13:\"return_format\";s:2:\"id\";s:8:\"multiple\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:2:{s:5:\"field\";s:0:\"\";s:8:\"operator\";s:2:\"==\";}}}}', '', '', 'publish', 'closed', 'closed', '', 'field_5b5c055d3c038', '', '', '2018-07-28 06:11:22', '2018-07-28 06:11:22', '', 72, 'http://localhost/frontenduser/?post_type=acf-field&p=78', 2, 'acf-field', '', 0),
(79, 1, '2018-07-28 06:11:22', '2018-07-28 06:11:22', 'a:13:{s:4:\"type\";s:8:\"taxonomy\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:8:\"taxonomy\";s:8:\"category\";s:10:\"field_type\";s:8:\"checkbox\";s:10:\"allow_null\";i:0;s:8:\"add_term\";i:1;s:10:\"save_terms\";i:0;s:10:\"load_terms\";i:0;s:13:\"return_format\";s:2:\"id\";s:8:\"multiple\";i:0;}', '', '', 'publish', 'closed', 'closed', '', 'field_5b5c05973c039', '', '', '2018-07-28 06:19:59', '2018-07-28 06:19:59', '', 72, 'http://localhost/frontenduser/?post_type=acf-field&#038;p=79', 3, 'acf-field', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `feu_termmeta`
--

CREATE TABLE `feu_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feu_terms`
--

CREATE TABLE `feu_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feu_terms`
--

INSERT INTO `feu_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Top Menu', 'top-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `feu_term_relationships`
--

CREATE TABLE `feu_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feu_term_relationships`
--

INSERT INTO `feu_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(43, 2, 0),
(49, 2, 0),
(55, 2, 0),
(62, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `feu_term_taxonomy`
--

CREATE TABLE `feu_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feu_term_taxonomy`
--

INSERT INTO `feu_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `feu_usermeta`
--

CREATE TABLE `feu_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feu_usermeta`
--

INSERT INTO `feu_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
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
(12, 1, 'feu_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'feu_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'feu_dashboard_quick_press_last_post_id', '77'),
(18, 1, 'feu_user-settings', 'libraryContent=browse'),
(19, 1, 'feu_user-settings-time', '1532085074'),
(24, 2, 'nickname', 'kajal'),
(25, 2, 'first_name', 'kajal'),
(26, 2, 'last_name', 'patel'),
(27, 2, 'description', ''),
(28, 2, 'rich_editing', 'true'),
(29, 2, 'syntax_highlighting', 'true'),
(30, 2, 'comment_shortcuts', 'false'),
(31, 2, 'admin_color', 'fresh'),
(32, 2, 'use_ssl', '0'),
(33, 2, 'show_admin_bar_front', 'true'),
(34, 2, 'locale', ''),
(35, 2, 'feu_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(36, 2, 'feu_user_level', '0'),
(37, 2, 'dismissed_wp_pointers', 'wp496_privacy'),
(41, 1, 'session_tokens', 'a:32:{s:64:\"7710e4107fc7f54ea9f5fa2c4f19a63debdea5f071efec2ff3e8e63b59d5efc4\";a:4:{s:10:\"expiration\";i:1533536985;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1532327385;}s:64:\"db5ee5a2f043b9e4fb54aa30b805c3752be441bba924a9bb8ccba72655cc9de9\";a:4:{s:10:\"expiration\";i:1533537435;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1532327835;}s:64:\"82b45cbe3356742afd2c61eeb68f67ca81cedcdb90303682446f87ca8e7ab53f\";a:4:{s:10:\"expiration\";i:1533537456;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1532327856;}s:64:\"ccc77b0fe2b24644ab90a6f8648480c532d5a5c61b072632ee47b455b4bedaeb\";a:4:{s:10:\"expiration\";i:1533539370;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1532329770;}s:64:\"f669e5f76da35d42a45291e98c7009acc563950291e3b30f2f7bd9d90c40bff2\";a:4:{s:10:\"expiration\";i:1533544721;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1532335121;}s:64:\"f329747590bd15a7170ca5206ef984657c8cd5216377fbe3d55b4ad713b6c867\";a:4:{s:10:\"expiration\";i:1533544741;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1532335141;}s:64:\"ca6730c7630a1627b6d0a5598ec2c2d65aaf3eaabf284bd8cf0ff860b5f4c7ad\";a:4:{s:10:\"expiration\";i:1533544782;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1532335182;}s:64:\"4bd917f0de140ecc80bdaa33f68d0c7680bfa44f655fd1b209a3965e26f5c2f1\";a:4:{s:10:\"expiration\";i:1533544785;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1532335185;}s:64:\"ac113335618bd669135fefcb7272692ae14ae01635af1e186536ecf3e423d5d9\";a:4:{s:10:\"expiration\";i:1533544984;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1532335384;}s:64:\"3696b4923b44d66e73b5318659a452fbfffcd2a1e9c78239c6674489bb4993fe\";a:4:{s:10:\"expiration\";i:1533545077;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1532335477;}s:64:\"796227ceb6ee4d6718ce927c76e6281698b290e0b4dcbfda187f4da4149c3b2d\";a:4:{s:10:\"expiration\";i:1533545103;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1532335503;}s:64:\"5b26422b53e884465e730d715bdf10c02a451397c656db3130852e36de580a04\";a:4:{s:10:\"expiration\";i:1533545118;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1532335518;}s:64:\"ce96aadc774a2209459ac5137c90cc3341ffbaae9e9f90eb0436019b47dd08c9\";a:4:{s:10:\"expiration\";i:1533545122;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1532335522;}s:64:\"7b0a17fa3799a57089489d8f5133119c1bcf53f900ae20ce4092f58f3bc1c83a\";a:4:{s:10:\"expiration\";i:1533545135;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1532335535;}s:64:\"dea20c035959027b2d878a315fa4538dd2d250f9f7c467a519e38be91b257c34\";a:4:{s:10:\"expiration\";i:1533545208;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1532335608;}s:64:\"f99c6d9980fa55306f9400e200f87fb82e81dc78b238c98480088d33b7058c18\";a:4:{s:10:\"expiration\";i:1533545213;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1532335613;}s:64:\"860ccb95fba3ef28b666d6df9823556b8569ca7e15670afbe804638843ba5614\";a:4:{s:10:\"expiration\";i:1533545476;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1532335876;}s:64:\"6f086dd1ca4b63e8613c292e90711b71d3617ad664ac6da2650595f07d570fac\";a:4:{s:10:\"expiration\";i:1533545771;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1532336171;}s:64:\"be99d034665b4214b3ff1e356e9b1b97de122486ea5fd502eaac0d2b91c12d97\";a:4:{s:10:\"expiration\";i:1533615385;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1532405785;}s:64:\"0023c8b889af96bb90f7cff804192d7901c17eb92d27e48ff91813c1daceb09a\";a:4:{s:10:\"expiration\";i:1533615423;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1532405823;}s:64:\"8227f7ea8d6fafd4cb8900b83e360524b983650e91437bfaa4492b7aae0d947f\";a:4:{s:10:\"expiration\";i:1533615864;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1532406264;}s:64:\"4ce97868d9acb1c0e8bfb434ff099adaf6e2b74381a75d339efede3552e5a602\";a:4:{s:10:\"expiration\";i:1533615909;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1532406309;}s:64:\"4c5eac5a640163f9b69a709541602f88b2fabd8a46bdf3b3dd833c0460075de7\";a:4:{s:10:\"expiration\";i:1533618009;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1532408409;}s:64:\"9ed1ec06a5d7f58dcb64f7bb087f6a1868d7ff70083be72372762390b42a3e15\";a:4:{s:10:\"expiration\";i:1533621411;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1532411811;}s:64:\"05e34003d75c5d968ef217d872a2bb4d366172dd6473d18ea707c1b4b4d405fa\";a:4:{s:10:\"expiration\";i:1533621450;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1532411850;}s:64:\"ee30d33de36c3918fcf29e9dd7855652498365ee8a77bf55eee7d997c90f3a56\";a:4:{s:10:\"expiration\";i:1533622620;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1532413020;}s:64:\"e3f5cf0dc0f886b2fe38d35b80cf319b4fa7eb53f7de4213858287755ed23542\";a:4:{s:10:\"expiration\";i:1533631520;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1532421920;}s:64:\"395b9992776d871d76386fede2642d5a4f442889a219f50e156780af7832fac6\";a:4:{s:10:\"expiration\";i:1533713959;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1532504359;}s:64:\"8032cfb5cb47de1eb9b4ee8d4de73e60be36fa02a3a98b081043ebd9d9d14190\";a:4:{s:10:\"expiration\";i:1533733559;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1532523959;}s:64:\"14b447a6c8d89ddedfbf4f01d3706f848036e07b18c57e9bf398b980b41ace3f\";a:4:{s:10:\"expiration\";i:1533733929;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1532524329;}s:64:\"6fba58e7777e323d30dadd6ed53d8f16aaaf7f19f81fc02aa374e0c16f9d2aac\";a:4:{s:10:\"expiration\";i:1533734537;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1532524937;}s:64:\"87adb5383aba0f73c7ef54907ceddf288967e2d34a302aa40d774b0364548119\";a:4:{s:10:\"expiration\";i:1533878436;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1532668836;}}'),
(43, 2, 'session_tokens', 'a:2:{s:64:\"ece1550302f077a00b9b30df5251165a389fa827310a9834b33c327edfb2b1f5\";a:4:{s:10:\"expiration\";i:1533365229;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1532155629;}s:64:\"7afe1779e55ea63a68a7190f8f1756375fe5d1ee842da7a09df4bb59d5b5b9f9\";a:4:{s:10:\"expiration\";i:1533621380;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1532411780;}}'),
(44, 3, 'nickname', 'kiran'),
(45, 3, 'first_name', 'Kiran'),
(46, 3, 'last_name', 'Patel'),
(47, 3, 'description', ''),
(48, 3, 'rich_editing', 'true'),
(49, 3, 'syntax_highlighting', 'true'),
(50, 3, 'comment_shortcuts', 'false'),
(51, 3, 'admin_color', 'fresh'),
(52, 3, 'use_ssl', '0'),
(53, 3, 'show_admin_bar_front', 'true'),
(54, 3, 'locale', ''),
(55, 3, 'feu_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(56, 3, 'feu_user_level', '0'),
(57, 3, 'session_tokens', 'a:1:{s:64:\"41dc1081d0e8c324cd1aedb6fde384c046ea930b332394ce1b3e6a6e057c57d9\";a:4:{s:10:\"expiration\";i:1532492373;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1532319573;}}'),
(58, 4, 'nickname', 'kamal'),
(59, 4, 'first_name', 'kamal_f'),
(60, 4, 'last_name', 'kaml_l'),
(61, 4, 'description', ''),
(62, 4, 'rich_editing', 'true'),
(63, 4, 'syntax_highlighting', 'true'),
(64, 4, 'comment_shortcuts', 'false'),
(65, 4, 'admin_color', 'fresh'),
(66, 4, 'use_ssl', '0'),
(67, 4, 'show_admin_bar_front', 'true'),
(68, 4, 'locale', ''),
(69, 4, 'feu_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(70, 4, 'feu_user_level', '0'),
(73, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(74, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:34:\"add-post-type-frontenduser_product\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";i:3;s:28:\"add-frontenduser_product_tax\";}'),
(102, 1, 'nav_menu_recently_edited', '2'),
(117, 1, 'mobile', '1245789632'),
(170, 1, 'mobile_field', '12'),
(171, 1, 'feu_user_status', '1'),
(172, 1, '_feu_user_status', 'field_5b572f84ca8ea'),
(178, 1, 'tgmpa_dismissed_notice_frontenduser', '1'),
(201, 2, 'mobile_field', '2'),
(202, 2, 'feu_user_status', '0'),
(203, 2, '_feu_user_status', 'field_5b572f84ca8ea'),
(204, 4, 'mobile_field', '5'),
(205, 4, 'feu_user_status', '0'),
(206, 4, '_feu_user_status', 'field_5b572f84ca8ea'),
(207, 3, 'mobile_field', '1'),
(208, 3, 'feu_user_status', '1'),
(209, 3, '_feu_user_status', 'field_5b572f84ca8ea'),
(210, 12, 'nickname', 'kanak'),
(211, 12, 'first_name', 'kanak'),
(212, 12, 'last_name', 'patel'),
(213, 12, 'description', ''),
(214, 12, 'rich_editing', 'true'),
(215, 12, 'syntax_highlighting', 'true'),
(216, 12, 'comment_shortcuts', 'false'),
(217, 12, 'admin_color', 'fresh'),
(218, 12, 'use_ssl', '0'),
(219, 12, 'show_admin_bar_front', 'true'),
(220, 12, 'locale', ''),
(221, 12, 'feu_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(222, 12, 'feu_user_level', '0'),
(223, 12, 'feu_user_status', '0'),
(225, 12, 'mobile_field', ''),
(226, 12, '_feu_user_status', 'field_5b572f84ca8ea'),
(227, 13, 'nickname', 'Kinjal'),
(228, 13, 'first_name', 'Kinjal'),
(229, 13, 'last_name', 'Patel'),
(230, 13, 'description', ''),
(231, 13, 'rich_editing', 'true'),
(232, 13, 'syntax_highlighting', 'true'),
(233, 13, 'comment_shortcuts', 'false'),
(234, 13, 'admin_color', 'fresh'),
(235, 13, 'use_ssl', '0'),
(236, 13, 'show_admin_bar_front', 'true'),
(237, 13, 'locale', ''),
(238, 13, 'feu_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(239, 13, 'feu_user_level', '0'),
(240, 13, 'feu_user_status', '1'),
(241, 13, 'mobile_field', ''),
(243, 13, '_feu_user_status', 'field_5b572f84ca8ea'),
(244, 14, 'nickname', 'Kirtan'),
(245, 14, 'first_name', 'Kirtan'),
(246, 14, 'last_name', 'Vyas'),
(247, 14, 'description', ''),
(248, 14, 'rich_editing', 'true'),
(249, 14, 'syntax_highlighting', 'true'),
(250, 14, 'comment_shortcuts', 'false'),
(251, 14, 'admin_color', 'fresh'),
(252, 14, 'use_ssl', '0'),
(253, 14, 'show_admin_bar_front', 'true'),
(254, 14, 'locale', ''),
(255, 14, 'feu_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(256, 14, 'feu_user_level', '0'),
(257, 14, 'feu_user_status', '0'),
(259, 14, 'mobile_field', ''),
(260, 14, '_feu_user_status', 'field_5b572f84ca8ea'),
(261, 1, '_new_email', 'a:2:{s:4:\"hash\";s:32:\"dd0837b097d5e87f17efb0664adc0198\";s:8:\"newemail\";s:23:\"klpatel199747@gmail.com\";}'),
(262, 1, 'acf_user_settings', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `feu_users`
--

CREATE TABLE `feu_users` (
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
-- Dumping data for table `feu_users`
--

INSERT INTO `feu_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BBOuShTnoHsXV.VnHq.D3yRaqyHDPw.', 'admin', 'admin@mail.com', '', '2018-07-20 10:58:51', '', 0, 'admin'),
(2, 'kajal', '$P$BTG6YO.dQSAJ7hz0DuvaA4YZhQRxEn0', 'kajal', 'kajal@mail.com', '', '2018-07-20 13:51:43', '1532094705:$P$B2EhPzzuMg1l0pLJXdKLQgD/Q0gtbd/', 0, 'kajal patel'),
(3, 'kiran', '$P$B2.FDyCl9mFbz7ZMwLoKJWkItKtafz0', 'kiran', 'kiran@mail.com', '', '2018-07-23 04:19:32', '', 0, 'Kiran Patel'),
(4, 'kamal', '$P$BnDUtosyJTkxIjQQNU4wQxWGKfAPLV/', 'kamal', 'kamal@mail.com', '', '2018-07-23 04:22:06', '', 0, 'kamal'),
(12, 'kanak', '$P$Brcv/.CSBH79s5AyRhO1GV5Yr8FjAN.', 'kanak', 'kanak@mail.com', '', '2018-07-25 05:56:50', '', 0, 'kanak patel'),
(13, 'Kinjal', '$P$ByXIsDvKE5q9DY2keWHI0JaNTLMVnm.', 'kinjal', 'kinjal@mail.com', '', '2018-07-25 05:59:29', '', 0, 'Kinjal Patel'),
(14, 'Kirtan', '$P$B.t/DLaZc3rdhcH3dxqvhUAV8XHn9n.', 'kirtan', 'kirtan@mail.com', '', '2018-07-25 06:06:11', '', 0, 'Kirtan Vyas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feu_commentmeta`
--
ALTER TABLE `feu_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `feu_comments`
--
ALTER TABLE `feu_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `feu_links`
--
ALTER TABLE `feu_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `feu_options`
--
ALTER TABLE `feu_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `feu_postmeta`
--
ALTER TABLE `feu_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `feu_posts`
--
ALTER TABLE `feu_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `feu_termmeta`
--
ALTER TABLE `feu_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `feu_terms`
--
ALTER TABLE `feu_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `feu_term_relationships`
--
ALTER TABLE `feu_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `feu_term_taxonomy`
--
ALTER TABLE `feu_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `feu_usermeta`
--
ALTER TABLE `feu_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `feu_users`
--
ALTER TABLE `feu_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feu_commentmeta`
--
ALTER TABLE `feu_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feu_comments`
--
ALTER TABLE `feu_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feu_links`
--
ALTER TABLE `feu_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feu_options`
--
ALTER TABLE `feu_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=530;

--
-- AUTO_INCREMENT for table `feu_postmeta`
--
ALTER TABLE `feu_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `feu_posts`
--
ALTER TABLE `feu_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `feu_termmeta`
--
ALTER TABLE `feu_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feu_terms`
--
ALTER TABLE `feu_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feu_term_taxonomy`
--
ALTER TABLE `feu_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feu_usermeta`
--
ALTER TABLE `feu_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;

--
-- AUTO_INCREMENT for table `feu_users`
--
ALTER TABLE `feu_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
