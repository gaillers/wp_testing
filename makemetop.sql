-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 26 2021 г., 12:23
-- Версия сервера: 5.7.29
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `makemetop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-02-24 17:26:37', '2021-02-24 17:26:37', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://test.oo', 'yes'),
(2, 'home', 'https://test.oo', 'yes'),
(3, 'blogname', 'MakeMeTop', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'gailers23@gmail.com', 'yes'),
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
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:65:\"C:\\OpenServer\\domains\\Test/wp-content/themes/wpTemplate/style.css\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'wpTemplate', 'yes'),
(41, 'stylesheet', 'wpTemplate', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '5', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1629739594', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(107, 'cron', 'a:7:{i:1614331606;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1614360404;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1614360406;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1614360415;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1614360416;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1614878805;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:1:{s:22:\"weVFUGTdORcMvHMhcOTVWk\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BAm69kLSkQnG7AbkFTEco2JTcRgY76/\";s:10:\"created_at\";i:1614256263;}}', 'yes'),
(119, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.6.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.6.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.6.2\";s:7:\"version\";s:5:\"5.6.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1614330509;s:15:\"version_checked\";s:5:\"5.6.2\";s:12:\"translations\";a:0:{}}', 'no'),
(124, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1614330515;s:7:\"checked\";a:4:{s:14:\"twentynineteen\";s:3:\"1.9\";s:12:\"twentytwenty\";s:3:\"1.6\";s:15:\"twentytwentyone\";s:3:\"1.1\";s:10:\"wpTemplate\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.9.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.6.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.1.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(125, '_site_transient_timeout_browser_1a2dc04bb795f060fbb9a0d4921dd3e5', '1614792415', 'no'),
(126, '_site_transient_browser_1a2dc04bb795f060fbb9a0d4921dd3e5', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"88.0.4324.182\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(127, '_site_transient_timeout_php_check_f9714bbe413cc376a70847d9c1f86fcc', '1614792416', 'no'),
(128, '_site_transient_php_check_f9714bbe413cc376a70847d9c1f86fcc', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(142, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1614187698;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(143, 'can_compress_scripts', '1', 'no'),
(146, 'theme_mods_wpTemplate', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(149, 'finished_updating_comment_type', '1', 'yes'),
(150, 'current_theme', 'coelix', 'yes'),
(151, 'theme_switched', '', 'yes'),
(154, 'WPLANG', '', 'yes'),
(155, 'new_admin_email', 'gailers23@gmail.com', 'yes'),
(161, 'recently_activated', 'a:1:{s:18:\"acfml/wpml-acf.php\";i:1614194493;}', 'yes'),
(170, 'acf_version', '5.8.9', 'yes'),
(174, '_transient_timeout_acf_plugin_updates', '1614422029', 'no'),
(175, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.9.5\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.6\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.9\";}}', 'no'),
(182, 'recovery_mode_email_last_sent', '1614256262', 'yes'),
(190, '_transient_health-check-site-status-result', '{\"good\":16,\"recommended\":4,\"critical\":0}', 'yes'),
(196, '_site_transient_timeout_theme_roots', '1614332314', 'no'),
(197, '_site_transient_theme_roots', 'a:4:{s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:10:\"wpTemplate\";s:7:\"/themes\";}', 'no'),
(198, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1614330517;s:7:\"checked\";a:3:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.9\";s:19:\"akismet/akismet.php\";s:5:\"4.1.8\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.9.5\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.6\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1614289962:1'),
(4, 5, '_wp_page_template', 'templates/homepage.php'),
(9, 9, '_edit_last', '1'),
(10, 9, '_edit_lock', '1614252389:1'),
(11, 2, '_edit_lock', '1614195155:1'),
(12, 5, '_edit_last', '1'),
(13, 5, 'customers_', 'Our <span>customers</span> says'),
(14, 5, '_customers_', 'field_6036a789f54e8'),
(15, 5, 'customers_main-sub', 'Ipsum faucibus viverra tempus magna non ut nibh convallis eleifend fames arcu'),
(16, 5, '_customers_main-sub', 'field_6036a79806367'),
(17, 5, 'customers_slider_item_0_title', 'New Technologies Company'),
(18, 5, '_customers_slider_item_0_title', 'field_6036a8e7e5a1f'),
(19, 5, 'customers_slider_item_0_sub', 'Dui magna nisi, lacus eget cursus semper nibh morbi massa. Nunc faucibus habitant tortor vel. Maecenas ut vivamus in fringilla dictum nunc quam luctus. Nunc faucibus habitant tortor vel...'),
(20, 5, '_customers_slider_item_0_sub', 'field_6036a8fae5a20'),
(21, 5, 'customers_slider_item_0_avatar', '25'),
(22, 5, '_customers_slider_item_0_avatar', 'field_6036a90ce5a21'),
(23, 5, 'customers_slider_item_0_name', 'Lucy Lewis'),
(24, 5, '_customers_slider_item_0_name', 'field_6036a91ae5a22'),
(25, 5, 'customers_slider_item_0_position', 'CMO, Co-Founder'),
(26, 5, '_customers_slider_item_0_position', 'field_6036a926e5a23'),
(27, 5, 'customers_slider_item_0_social_item_0_icon', '26'),
(28, 5, '_customers_slider_item_0_social_item_0_icon', 'field_6036a994e5a27'),
(29, 5, 'customers_slider_item_0_social_item_0_link', 'a:3:{s:5:\"title\";s:8:\"Homepage\";s:3:\"url\";s:26:\"https://www.instagram.com/\";s:6:\"target\";s:0:\"\";}'),
(30, 5, '_customers_slider_item_0_social_item_0_link', 'field_6036a9a9e5a28'),
(31, 5, 'customers_slider_item_0_social_item', '2'),
(32, 5, '_customers_slider_item_0_social_item', 'field_6036a98ae5a26'),
(33, 5, 'customers_slider_item_0_social', ''),
(34, 5, '_customers_slider_item_0_social', 'field_6036a930e5a24'),
(35, 5, 'customers_slider_item', '4'),
(36, 5, '_customers_slider_item', 'field_6036a7ae06369'),
(37, 5, 'customers_slider', ''),
(38, 5, '_customers_slider', 'field_6036a7a206368'),
(39, 5, 'customers', ''),
(40, 5, '_customers', 'field_6036a77df54e7'),
(41, 24, 'customers_', 'Our <span>customers</span> says'),
(42, 24, '_customers_', 'field_6036a789f54e8'),
(43, 24, 'customers_main-sub', 'Ipsum faucibus viverra tempus magna non ut nibh convallis eleifend fames arcu'),
(44, 24, '_customers_main-sub', 'field_6036a79806367'),
(45, 24, 'customers_slider_item_0_title', 'New Technologies Company'),
(46, 24, '_customers_slider_item_0_title', 'field_6036a8e7e5a1f'),
(47, 24, 'customers_slider_item_0_sub', ''),
(48, 24, '_customers_slider_item_0_sub', 'field_6036a8fae5a20'),
(49, 24, 'customers_slider_item_0_avatar', ''),
(50, 24, '_customers_slider_item_0_avatar', 'field_6036a90ce5a21'),
(51, 24, 'customers_slider_item_0_name', ''),
(52, 24, '_customers_slider_item_0_name', 'field_6036a91ae5a22'),
(53, 24, 'customers_slider_item_0_position', ''),
(54, 24, '_customers_slider_item_0_position', 'field_6036a926e5a23'),
(55, 24, 'customers_slider_item_0_social_item_0_icon', ''),
(56, 24, '_customers_slider_item_0_social_item_0_icon', 'field_6036a994e5a27'),
(57, 24, 'customers_slider_item_0_social_item_0_link', ''),
(58, 24, '_customers_slider_item_0_social_item_0_link', 'field_6036a9a9e5a28'),
(59, 24, 'customers_slider_item_0_social_item', '1'),
(60, 24, '_customers_slider_item_0_social_item', 'field_6036a98ae5a26'),
(61, 24, 'customers_slider_item_0_social', ''),
(62, 24, '_customers_slider_item_0_social', 'field_6036a930e5a24'),
(63, 24, 'customers_slider_item', '1'),
(64, 24, '_customers_slider_item', 'field_6036a7ae06369'),
(65, 24, 'customers_slider', ''),
(66, 24, '_customers_slider', 'field_6036a7a206368'),
(67, 24, 'customers', ''),
(68, 24, '_customers', 'field_6036a77df54e7'),
(69, 25, '_wp_attached_file', '2021/02/avatar-1.png'),
(70, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:48;s:6:\"height\";i:48;s:4:\"file\";s:20:\"2021/02/avatar-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(71, 26, '_wp_attached_file', '2021/02/instagram.png'),
(72, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:32;s:6:\"height\";i:32;s:4:\"file\";s:21:\"2021/02/instagram.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(73, 27, '_wp_attached_file', '2021/02/twitter.png'),
(74, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:32;s:6:\"height\";i:32;s:4:\"file\";s:19:\"2021/02/twitter.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(75, 28, '_wp_attached_file', '2021/02/avatar-2.png'),
(76, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:48;s:6:\"height\";i:48;s:4:\"file\";s:20:\"2021/02/avatar-2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(77, 5, 'customers_slider_item_0_social_item_1_icon', '27'),
(78, 5, '_customers_slider_item_0_social_item_1_icon', 'field_6036a994e5a27'),
(79, 5, 'customers_slider_item_0_social_item_1_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:22:\"http://www.twitter.com\";s:6:\"target\";s:0:\"\";}'),
(80, 5, '_customers_slider_item_0_social_item_1_link', 'field_6036a9a9e5a28'),
(81, 5, 'customers_slider_item_1_title', 'Digital  Smart Agency'),
(82, 5, '_customers_slider_item_1_title', 'field_6036a8e7e5a1f'),
(83, 5, 'customers_slider_item_1_sub', 'Dui magna nisi, lacus eget cursus semper nibh morbi massa. Nunc faucibus habitant tortor vel. Maecenas ut vivamus in fringilla dictum nunc quam luctus. Nunc faucibus habitant tortor vel...'),
(84, 5, '_customers_slider_item_1_sub', 'field_6036a8fae5a20'),
(85, 5, 'customers_slider_item_1_avatar', '28'),
(86, 5, '_customers_slider_item_1_avatar', 'field_6036a90ce5a21'),
(87, 5, 'customers_slider_item_1_name', 'Lee Warren'),
(88, 5, '_customers_slider_item_1_name', 'field_6036a91ae5a22'),
(89, 5, 'customers_slider_item_1_position', 'CMO, Co-Founder'),
(90, 5, '_customers_slider_item_1_position', 'field_6036a926e5a23'),
(91, 5, 'customers_slider_item_1_social_item_0_icon', '26'),
(92, 5, '_customers_slider_item_1_social_item_0_icon', 'field_6036a994e5a27'),
(93, 5, 'customers_slider_item_1_social_item_0_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:26:\"https://www.instagram.com/\";s:6:\"target\";s:0:\"\";}'),
(94, 5, '_customers_slider_item_1_social_item_0_link', 'field_6036a9a9e5a28'),
(95, 5, 'customers_slider_item_1_social_item_1_icon', '27'),
(96, 5, '_customers_slider_item_1_social_item_1_icon', 'field_6036a994e5a27'),
(97, 5, 'customers_slider_item_1_social_item_1_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:24:\"https://www.twitter.com/\";s:6:\"target\";s:0:\"\";}'),
(98, 5, '_customers_slider_item_1_social_item_1_link', 'field_6036a9a9e5a28'),
(99, 5, 'customers_slider_item_1_social_item', '2'),
(100, 5, '_customers_slider_item_1_social_item', 'field_6036a98ae5a26'),
(101, 5, 'customers_slider_item_1_social', ''),
(102, 5, '_customers_slider_item_1_social', 'field_6036a930e5a24'),
(103, 5, 'customers_slider_item_2_title', 'New Technologies Company'),
(104, 5, '_customers_slider_item_2_title', 'field_6036a8e7e5a1f'),
(105, 5, 'customers_slider_item_2_sub', 'Dui magna nisi, lacus eget cursus semper nibh morbi massa. Nunc faucibus habitant tortor vel. Maecenas ut vivamus in fringilla dictum nunc quam luctus. Nunc faucibus habitant tortor vel...'),
(106, 5, '_customers_slider_item_2_sub', 'field_6036a8fae5a20'),
(107, 5, 'customers_slider_item_2_avatar', '25'),
(108, 5, '_customers_slider_item_2_avatar', 'field_6036a90ce5a21'),
(109, 5, 'customers_slider_item_2_name', 'Lucy Lewis'),
(110, 5, '_customers_slider_item_2_name', 'field_6036a91ae5a22'),
(111, 5, 'customers_slider_item_2_position', 'CMO, Co-Founder'),
(112, 5, '_customers_slider_item_2_position', 'field_6036a926e5a23'),
(113, 5, 'customers_slider_item_2_social_item_0_icon', '26'),
(114, 5, '_customers_slider_item_2_social_item_0_icon', 'field_6036a994e5a27'),
(115, 5, 'customers_slider_item_2_social_item_0_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:26:\"https://www.instagram.com/\";s:6:\"target\";s:0:\"\";}'),
(116, 5, '_customers_slider_item_2_social_item_0_link', 'field_6036a9a9e5a28'),
(117, 5, 'customers_slider_item_2_social_item_1_icon', '27'),
(118, 5, '_customers_slider_item_2_social_item_1_icon', 'field_6036a994e5a27'),
(119, 5, 'customers_slider_item_2_social_item_1_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:24:\"https://www.twitter.com/\";s:6:\"target\";s:0:\"\";}'),
(120, 5, '_customers_slider_item_2_social_item_1_link', 'field_6036a9a9e5a28'),
(121, 5, 'customers_slider_item_2_social_item', '2'),
(122, 5, '_customers_slider_item_2_social_item', 'field_6036a98ae5a26'),
(123, 5, 'customers_slider_item_2_social', ''),
(124, 5, '_customers_slider_item_2_social', 'field_6036a930e5a24'),
(125, 5, 'customers_slider_item_3_title', 'Digital  Smart Agency'),
(126, 5, '_customers_slider_item_3_title', 'field_6036a8e7e5a1f'),
(127, 5, 'customers_slider_item_3_sub', 'Dui magna nisi, lacus eget cursus semper nibh morbi massa. Nunc faucibus habitant tortor vel. Maecenas ut vivamus in fringilla dictum nunc quam luctus. Nunc faucibus habitant tortor vel...'),
(128, 5, '_customers_slider_item_3_sub', 'field_6036a8fae5a20'),
(129, 5, 'customers_slider_item_3_avatar', '28'),
(130, 5, '_customers_slider_item_3_avatar', 'field_6036a90ce5a21'),
(131, 5, 'customers_slider_item_3_name', 'Lee Warren'),
(132, 5, '_customers_slider_item_3_name', 'field_6036a91ae5a22'),
(133, 5, 'customers_slider_item_3_position', 'CMO, Co-Founder'),
(134, 5, '_customers_slider_item_3_position', 'field_6036a926e5a23'),
(135, 5, 'customers_slider_item_3_social_item_0_icon', '26'),
(136, 5, '_customers_slider_item_3_social_item_0_icon', 'field_6036a994e5a27'),
(137, 5, 'customers_slider_item_3_social_item_0_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:26:\"https://www.instagram.com/\";s:6:\"target\";s:0:\"\";}'),
(138, 5, '_customers_slider_item_3_social_item_0_link', 'field_6036a9a9e5a28'),
(139, 5, 'customers_slider_item_3_social_item_1_icon', '27'),
(140, 5, '_customers_slider_item_3_social_item_1_icon', 'field_6036a994e5a27'),
(141, 5, 'customers_slider_item_3_social_item_1_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:24:\"https://www.twitter.com/\";s:6:\"target\";s:0:\"\";}'),
(142, 5, '_customers_slider_item_3_social_item_1_link', 'field_6036a9a9e5a28'),
(143, 5, 'customers_slider_item_3_social_item', '2'),
(144, 5, '_customers_slider_item_3_social_item', 'field_6036a98ae5a26'),
(145, 5, 'customers_slider_item_3_social', ''),
(146, 5, '_customers_slider_item_3_social', 'field_6036a930e5a24'),
(147, 29, 'customers_', 'Our <span>customers</span> says'),
(148, 29, '_customers_', 'field_6036a789f54e8'),
(149, 29, 'customers_main-sub', 'Ipsum faucibus viverra tempus magna non ut nibh convallis eleifend fames arcu'),
(150, 29, '_customers_main-sub', 'field_6036a79806367'),
(151, 29, 'customers_slider_item_0_title', 'New Technologies Company'),
(152, 29, '_customers_slider_item_0_title', 'field_6036a8e7e5a1f'),
(153, 29, 'customers_slider_item_0_sub', 'Dui magna nisi, lacus eget cursus semper nibh morbi massa. Nunc faucibus habitant tortor vel. Maecenas ut vivamus in fringilla dictum nunc quam luctus. Nunc faucibus habitant tortor vel...'),
(154, 29, '_customers_slider_item_0_sub', 'field_6036a8fae5a20'),
(155, 29, 'customers_slider_item_0_avatar', '25'),
(156, 29, '_customers_slider_item_0_avatar', 'field_6036a90ce5a21'),
(157, 29, 'customers_slider_item_0_name', 'Lucy Lewis'),
(158, 29, '_customers_slider_item_0_name', 'field_6036a91ae5a22'),
(159, 29, 'customers_slider_item_0_position', 'CMO, Co-Founder'),
(160, 29, '_customers_slider_item_0_position', 'field_6036a926e5a23'),
(161, 29, 'customers_slider_item_0_social_item_0_icon', '26'),
(162, 29, '_customers_slider_item_0_social_item_0_icon', 'field_6036a994e5a27'),
(163, 29, 'customers_slider_item_0_social_item_0_link', 'a:3:{s:5:\"title\";s:8:\"Homepage\";s:3:\"url\";s:26:\"https://www.instagram.com/\";s:6:\"target\";s:0:\"\";}'),
(164, 29, '_customers_slider_item_0_social_item_0_link', 'field_6036a9a9e5a28'),
(165, 29, 'customers_slider_item_0_social_item', '2'),
(166, 29, '_customers_slider_item_0_social_item', 'field_6036a98ae5a26'),
(167, 29, 'customers_slider_item_0_social', ''),
(168, 29, '_customers_slider_item_0_social', 'field_6036a930e5a24'),
(169, 29, 'customers_slider_item', '4'),
(170, 29, '_customers_slider_item', 'field_6036a7ae06369'),
(171, 29, 'customers_slider', ''),
(172, 29, '_customers_slider', 'field_6036a7a206368'),
(173, 29, 'customers', ''),
(174, 29, '_customers', 'field_6036a77df54e7'),
(175, 29, 'customers_slider_item_0_social_item_1_icon', '27'),
(176, 29, '_customers_slider_item_0_social_item_1_icon', 'field_6036a994e5a27'),
(177, 29, 'customers_slider_item_0_social_item_1_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:22:\"http://www.twitter.com\";s:6:\"target\";s:0:\"\";}'),
(178, 29, '_customers_slider_item_0_social_item_1_link', 'field_6036a9a9e5a28'),
(179, 29, 'customers_slider_item_1_title', 'Digital  Smart Agency'),
(180, 29, '_customers_slider_item_1_title', 'field_6036a8e7e5a1f'),
(181, 29, 'customers_slider_item_1_sub', 'Dui magna nisi, lacus eget cursus semper nibh morbi massa. Nunc faucibus habitant tortor vel. Maecenas ut vivamus in fringilla dictum nunc quam luctus. Nunc faucibus habitant tortor vel...'),
(182, 29, '_customers_slider_item_1_sub', 'field_6036a8fae5a20'),
(183, 29, 'customers_slider_item_1_avatar', '28'),
(184, 29, '_customers_slider_item_1_avatar', 'field_6036a90ce5a21'),
(185, 29, 'customers_slider_item_1_name', 'Lee Warren'),
(186, 29, '_customers_slider_item_1_name', 'field_6036a91ae5a22'),
(187, 29, 'customers_slider_item_1_position', 'CMO, Co-Founder'),
(188, 29, '_customers_slider_item_1_position', 'field_6036a926e5a23'),
(189, 29, 'customers_slider_item_1_social_item_0_icon', '26'),
(190, 29, '_customers_slider_item_1_social_item_0_icon', 'field_6036a994e5a27'),
(191, 29, 'customers_slider_item_1_social_item_0_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:26:\"https://www.instagram.com/\";s:6:\"target\";s:0:\"\";}'),
(192, 29, '_customers_slider_item_1_social_item_0_link', 'field_6036a9a9e5a28'),
(193, 29, 'customers_slider_item_1_social_item_1_icon', '27'),
(194, 29, '_customers_slider_item_1_social_item_1_icon', 'field_6036a994e5a27'),
(195, 29, 'customers_slider_item_1_social_item_1_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:24:\"https://www.twitter.com/\";s:6:\"target\";s:0:\"\";}'),
(196, 29, '_customers_slider_item_1_social_item_1_link', 'field_6036a9a9e5a28'),
(197, 29, 'customers_slider_item_1_social_item', '2'),
(198, 29, '_customers_slider_item_1_social_item', 'field_6036a98ae5a26'),
(199, 29, 'customers_slider_item_1_social', ''),
(200, 29, '_customers_slider_item_1_social', 'field_6036a930e5a24'),
(201, 29, 'customers_slider_item_2_title', 'New Technologies Company'),
(202, 29, '_customers_slider_item_2_title', 'field_6036a8e7e5a1f'),
(203, 29, 'customers_slider_item_2_sub', 'Dui magna nisi, lacus eget cursus semper nibh morbi massa. Nunc faucibus habitant tortor vel. Maecenas ut vivamus in fringilla dictum nunc quam luctus. Nunc faucibus habitant tortor vel...'),
(204, 29, '_customers_slider_item_2_sub', 'field_6036a8fae5a20'),
(205, 29, 'customers_slider_item_2_avatar', '25'),
(206, 29, '_customers_slider_item_2_avatar', 'field_6036a90ce5a21'),
(207, 29, 'customers_slider_item_2_name', 'Lucy Lewis'),
(208, 29, '_customers_slider_item_2_name', 'field_6036a91ae5a22'),
(209, 29, 'customers_slider_item_2_position', 'CMO, Co-Founder'),
(210, 29, '_customers_slider_item_2_position', 'field_6036a926e5a23'),
(211, 29, 'customers_slider_item_2_social_item_0_icon', '26'),
(212, 29, '_customers_slider_item_2_social_item_0_icon', 'field_6036a994e5a27'),
(213, 29, 'customers_slider_item_2_social_item_0_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:26:\"https://www.instagram.com/\";s:6:\"target\";s:0:\"\";}'),
(214, 29, '_customers_slider_item_2_social_item_0_link', 'field_6036a9a9e5a28'),
(215, 29, 'customers_slider_item_2_social_item_1_icon', '27'),
(216, 29, '_customers_slider_item_2_social_item_1_icon', 'field_6036a994e5a27'),
(217, 29, 'customers_slider_item_2_social_item_1_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:24:\"https://www.twitter.com/\";s:6:\"target\";s:0:\"\";}'),
(218, 29, '_customers_slider_item_2_social_item_1_link', 'field_6036a9a9e5a28'),
(219, 29, 'customers_slider_item_2_social_item', '2'),
(220, 29, '_customers_slider_item_2_social_item', 'field_6036a98ae5a26'),
(221, 29, 'customers_slider_item_2_social', ''),
(222, 29, '_customers_slider_item_2_social', 'field_6036a930e5a24'),
(223, 29, 'customers_slider_item_3_title', 'Digital  Smart Agency'),
(224, 29, '_customers_slider_item_3_title', 'field_6036a8e7e5a1f'),
(225, 29, 'customers_slider_item_3_sub', 'Dui magna nisi, lacus eget cursus semper nibh morbi massa. Nunc faucibus habitant tortor vel. Maecenas ut vivamus in fringilla dictum nunc quam luctus. Nunc faucibus habitant tortor vel...'),
(226, 29, '_customers_slider_item_3_sub', 'field_6036a8fae5a20'),
(227, 29, 'customers_slider_item_3_avatar', '28'),
(228, 29, '_customers_slider_item_3_avatar', 'field_6036a90ce5a21'),
(229, 29, 'customers_slider_item_3_name', 'Lee Warren'),
(230, 29, '_customers_slider_item_3_name', 'field_6036a91ae5a22'),
(231, 29, 'customers_slider_item_3_position', 'CMO, Co-Founder'),
(232, 29, '_customers_slider_item_3_position', 'field_6036a926e5a23'),
(233, 29, 'customers_slider_item_3_social_item_0_icon', '26'),
(234, 29, '_customers_slider_item_3_social_item_0_icon', 'field_6036a994e5a27'),
(235, 29, 'customers_slider_item_3_social_item_0_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:26:\"https://www.instagram.com/\";s:6:\"target\";s:0:\"\";}'),
(236, 29, '_customers_slider_item_3_social_item_0_link', 'field_6036a9a9e5a28'),
(237, 29, 'customers_slider_item_3_social_item_1_icon', '27'),
(238, 29, '_customers_slider_item_3_social_item_1_icon', 'field_6036a994e5a27'),
(239, 29, 'customers_slider_item_3_social_item_1_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:24:\"https://www.twitter.com/\";s:6:\"target\";s:0:\"\";}'),
(240, 29, '_customers_slider_item_3_social_item_1_link', 'field_6036a9a9e5a28'),
(241, 29, 'customers_slider_item_3_social_item', '2'),
(242, 29, '_customers_slider_item_3_social_item', 'field_6036a98ae5a26'),
(243, 29, 'customers_slider_item_3_social', ''),
(244, 29, '_customers_slider_item_3_social', 'field_6036a930e5a24'),
(245, 5, 'customers_main-title', 'Our <span>customers</span> says'),
(246, 5, '_customers_main-title', 'field_6036a789f54e8'),
(247, 30, 'customers_', 'Our <span>customers</span> says'),
(248, 30, '_customers_', 'field_6036a789f54e8'),
(249, 30, 'customers_main-sub', 'Ipsum faucibus viverra tempus magna non ut nibh convallis eleifend fames arcu'),
(250, 30, '_customers_main-sub', 'field_6036a79806367'),
(251, 30, 'customers_slider_item_0_title', 'New Technologies Company'),
(252, 30, '_customers_slider_item_0_title', 'field_6036a8e7e5a1f'),
(253, 30, 'customers_slider_item_0_sub', 'Dui magna nisi, lacus eget cursus semper nibh morbi massa. Nunc faucibus habitant tortor vel. Maecenas ut vivamus in fringilla dictum nunc quam luctus. Nunc faucibus habitant tortor vel...'),
(254, 30, '_customers_slider_item_0_sub', 'field_6036a8fae5a20'),
(255, 30, 'customers_slider_item_0_avatar', '25'),
(256, 30, '_customers_slider_item_0_avatar', 'field_6036a90ce5a21'),
(257, 30, 'customers_slider_item_0_name', 'Lucy Lewis'),
(258, 30, '_customers_slider_item_0_name', 'field_6036a91ae5a22'),
(259, 30, 'customers_slider_item_0_position', 'CMO, Co-Founder'),
(260, 30, '_customers_slider_item_0_position', 'field_6036a926e5a23'),
(261, 30, 'customers_slider_item_0_social_item_0_icon', '26'),
(262, 30, '_customers_slider_item_0_social_item_0_icon', 'field_6036a994e5a27'),
(263, 30, 'customers_slider_item_0_social_item_0_link', 'a:3:{s:5:\"title\";s:8:\"Homepage\";s:3:\"url\";s:26:\"https://www.instagram.com/\";s:6:\"target\";s:0:\"\";}'),
(264, 30, '_customers_slider_item_0_social_item_0_link', 'field_6036a9a9e5a28'),
(265, 30, 'customers_slider_item_0_social_item', '2'),
(266, 30, '_customers_slider_item_0_social_item', 'field_6036a98ae5a26'),
(267, 30, 'customers_slider_item_0_social', ''),
(268, 30, '_customers_slider_item_0_social', 'field_6036a930e5a24'),
(269, 30, 'customers_slider_item', '4'),
(270, 30, '_customers_slider_item', 'field_6036a7ae06369'),
(271, 30, 'customers_slider', ''),
(272, 30, '_customers_slider', 'field_6036a7a206368'),
(273, 30, 'customers', ''),
(274, 30, '_customers', 'field_6036a77df54e7'),
(275, 30, 'customers_slider_item_0_social_item_1_icon', '27'),
(276, 30, '_customers_slider_item_0_social_item_1_icon', 'field_6036a994e5a27'),
(277, 30, 'customers_slider_item_0_social_item_1_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:22:\"http://www.twitter.com\";s:6:\"target\";s:0:\"\";}'),
(278, 30, '_customers_slider_item_0_social_item_1_link', 'field_6036a9a9e5a28'),
(279, 30, 'customers_slider_item_1_title', 'Digital  Smart Agency'),
(280, 30, '_customers_slider_item_1_title', 'field_6036a8e7e5a1f'),
(281, 30, 'customers_slider_item_1_sub', 'Dui magna nisi, lacus eget cursus semper nibh morbi massa. Nunc faucibus habitant tortor vel. Maecenas ut vivamus in fringilla dictum nunc quam luctus. Nunc faucibus habitant tortor vel...'),
(282, 30, '_customers_slider_item_1_sub', 'field_6036a8fae5a20'),
(283, 30, 'customers_slider_item_1_avatar', '28'),
(284, 30, '_customers_slider_item_1_avatar', 'field_6036a90ce5a21'),
(285, 30, 'customers_slider_item_1_name', 'Lee Warren'),
(286, 30, '_customers_slider_item_1_name', 'field_6036a91ae5a22'),
(287, 30, 'customers_slider_item_1_position', 'CMO, Co-Founder'),
(288, 30, '_customers_slider_item_1_position', 'field_6036a926e5a23'),
(289, 30, 'customers_slider_item_1_social_item_0_icon', '26'),
(290, 30, '_customers_slider_item_1_social_item_0_icon', 'field_6036a994e5a27'),
(291, 30, 'customers_slider_item_1_social_item_0_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:26:\"https://www.instagram.com/\";s:6:\"target\";s:0:\"\";}'),
(292, 30, '_customers_slider_item_1_social_item_0_link', 'field_6036a9a9e5a28'),
(293, 30, 'customers_slider_item_1_social_item_1_icon', '27'),
(294, 30, '_customers_slider_item_1_social_item_1_icon', 'field_6036a994e5a27'),
(295, 30, 'customers_slider_item_1_social_item_1_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:24:\"https://www.twitter.com/\";s:6:\"target\";s:0:\"\";}'),
(296, 30, '_customers_slider_item_1_social_item_1_link', 'field_6036a9a9e5a28'),
(297, 30, 'customers_slider_item_1_social_item', '2'),
(298, 30, '_customers_slider_item_1_social_item', 'field_6036a98ae5a26'),
(299, 30, 'customers_slider_item_1_social', ''),
(300, 30, '_customers_slider_item_1_social', 'field_6036a930e5a24'),
(301, 30, 'customers_slider_item_2_title', 'New Technologies Company'),
(302, 30, '_customers_slider_item_2_title', 'field_6036a8e7e5a1f'),
(303, 30, 'customers_slider_item_2_sub', 'Dui magna nisi, lacus eget cursus semper nibh morbi massa. Nunc faucibus habitant tortor vel. Maecenas ut vivamus in fringilla dictum nunc quam luctus. Nunc faucibus habitant tortor vel...'),
(304, 30, '_customers_slider_item_2_sub', 'field_6036a8fae5a20'),
(305, 30, 'customers_slider_item_2_avatar', '25'),
(306, 30, '_customers_slider_item_2_avatar', 'field_6036a90ce5a21'),
(307, 30, 'customers_slider_item_2_name', 'Lucy Lewis'),
(308, 30, '_customers_slider_item_2_name', 'field_6036a91ae5a22'),
(309, 30, 'customers_slider_item_2_position', 'CMO, Co-Founder'),
(310, 30, '_customers_slider_item_2_position', 'field_6036a926e5a23'),
(311, 30, 'customers_slider_item_2_social_item_0_icon', '26'),
(312, 30, '_customers_slider_item_2_social_item_0_icon', 'field_6036a994e5a27'),
(313, 30, 'customers_slider_item_2_social_item_0_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:26:\"https://www.instagram.com/\";s:6:\"target\";s:0:\"\";}'),
(314, 30, '_customers_slider_item_2_social_item_0_link', 'field_6036a9a9e5a28'),
(315, 30, 'customers_slider_item_2_social_item_1_icon', '27'),
(316, 30, '_customers_slider_item_2_social_item_1_icon', 'field_6036a994e5a27'),
(317, 30, 'customers_slider_item_2_social_item_1_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:24:\"https://www.twitter.com/\";s:6:\"target\";s:0:\"\";}'),
(318, 30, '_customers_slider_item_2_social_item_1_link', 'field_6036a9a9e5a28'),
(319, 30, 'customers_slider_item_2_social_item', '2'),
(320, 30, '_customers_slider_item_2_social_item', 'field_6036a98ae5a26'),
(321, 30, 'customers_slider_item_2_social', ''),
(322, 30, '_customers_slider_item_2_social', 'field_6036a930e5a24'),
(323, 30, 'customers_slider_item_3_title', 'Digital  Smart Agency'),
(324, 30, '_customers_slider_item_3_title', 'field_6036a8e7e5a1f'),
(325, 30, 'customers_slider_item_3_sub', 'Dui magna nisi, lacus eget cursus semper nibh morbi massa. Nunc faucibus habitant tortor vel. Maecenas ut vivamus in fringilla dictum nunc quam luctus. Nunc faucibus habitant tortor vel...'),
(326, 30, '_customers_slider_item_3_sub', 'field_6036a8fae5a20'),
(327, 30, 'customers_slider_item_3_avatar', '28'),
(328, 30, '_customers_slider_item_3_avatar', 'field_6036a90ce5a21'),
(329, 30, 'customers_slider_item_3_name', 'Lee Warren'),
(330, 30, '_customers_slider_item_3_name', 'field_6036a91ae5a22'),
(331, 30, 'customers_slider_item_3_position', 'CMO, Co-Founder'),
(332, 30, '_customers_slider_item_3_position', 'field_6036a926e5a23'),
(333, 30, 'customers_slider_item_3_social_item_0_icon', '26'),
(334, 30, '_customers_slider_item_3_social_item_0_icon', 'field_6036a994e5a27'),
(335, 30, 'customers_slider_item_3_social_item_0_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:26:\"https://www.instagram.com/\";s:6:\"target\";s:0:\"\";}'),
(336, 30, '_customers_slider_item_3_social_item_0_link', 'field_6036a9a9e5a28'),
(337, 30, 'customers_slider_item_3_social_item_1_icon', '27'),
(338, 30, '_customers_slider_item_3_social_item_1_icon', 'field_6036a994e5a27'),
(339, 30, 'customers_slider_item_3_social_item_1_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:24:\"https://www.twitter.com/\";s:6:\"target\";s:0:\"\";}'),
(340, 30, '_customers_slider_item_3_social_item_1_link', 'field_6036a9a9e5a28'),
(341, 30, 'customers_slider_item_3_social_item', '2'),
(342, 30, '_customers_slider_item_3_social_item', 'field_6036a98ae5a26'),
(343, 30, 'customers_slider_item_3_social', ''),
(344, 30, '_customers_slider_item_3_social', 'field_6036a930e5a24'),
(345, 30, 'customers_main-title', 'Our <span>customers</span> says'),
(346, 30, '_customers_main-title', 'field_6036a789f54e8'),
(347, 5, 'customers_slider_item_0_social_instagram_icon', '26'),
(348, 5, '_customers_slider_item_0_social_instagram_icon', 'field_6037874a8de17'),
(349, 5, 'customers_slider_item_0_social_instagram_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:26:\"https://www.instagram.com/\";s:6:\"target\";s:6:\"_blank\";}'),
(350, 5, '_customers_slider_item_0_social_instagram_link', 'field_603787558de18'),
(351, 5, 'customers_slider_item_0_social_instagram', ''),
(352, 5, '_customers_slider_item_0_social_instagram', 'field_603787308de15'),
(353, 5, 'customers_slider_item_0_social_twitter_icon', '27'),
(354, 5, '_customers_slider_item_0_social_twitter_icon', 'field_603787668de1a'),
(355, 5, 'customers_slider_item_0_social_twitter_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:24:\"https://www.twitter.com/\";s:6:\"target\";s:6:\"_blank\";}'),
(356, 5, '_customers_slider_item_0_social_twitter_link', 'field_603787668de1b'),
(357, 5, 'customers_slider_item_0_social_twitter', ''),
(358, 5, '_customers_slider_item_0_social_twitter', 'field_603787668de19'),
(359, 5, 'customers_slider_item_1_social_instagram_icon', '26'),
(360, 5, '_customers_slider_item_1_social_instagram_icon', 'field_6037874a8de17'),
(361, 5, 'customers_slider_item_1_social_instagram_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:26:\"https://www.instagram.com/\";s:6:\"target\";s:0:\"\";}'),
(362, 5, '_customers_slider_item_1_social_instagram_link', 'field_603787558de18'),
(363, 5, 'customers_slider_item_1_social_instagram', ''),
(364, 5, '_customers_slider_item_1_social_instagram', 'field_603787308de15'),
(365, 5, 'customers_slider_item_1_social_twitter_icon', '27'),
(366, 5, '_customers_slider_item_1_social_twitter_icon', 'field_603787668de1a'),
(367, 5, 'customers_slider_item_1_social_twitter_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:24:\"https://www.twitter.com/\";s:6:\"target\";s:0:\"\";}'),
(368, 5, '_customers_slider_item_1_social_twitter_link', 'field_603787668de1b'),
(369, 5, 'customers_slider_item_1_social_twitter', ''),
(370, 5, '_customers_slider_item_1_social_twitter', 'field_603787668de19'),
(371, 5, 'customers_slider_item_2_social_instagram_icon', '26'),
(372, 5, '_customers_slider_item_2_social_instagram_icon', 'field_6037874a8de17'),
(373, 5, 'customers_slider_item_2_social_instagram_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:26:\"https://www.instagram.com/\";s:6:\"target\";s:0:\"\";}'),
(374, 5, '_customers_slider_item_2_social_instagram_link', 'field_603787558de18'),
(375, 5, 'customers_slider_item_2_social_instagram', ''),
(376, 5, '_customers_slider_item_2_social_instagram', 'field_603787308de15'),
(377, 5, 'customers_slider_item_2_social_twitter_icon', '27'),
(378, 5, '_customers_slider_item_2_social_twitter_icon', 'field_603787668de1a'),
(379, 5, 'customers_slider_item_2_social_twitter_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:24:\"https://www.twitter.com/\";s:6:\"target\";s:0:\"\";}'),
(380, 5, '_customers_slider_item_2_social_twitter_link', 'field_603787668de1b'),
(381, 5, 'customers_slider_item_2_social_twitter', ''),
(382, 5, '_customers_slider_item_2_social_twitter', 'field_603787668de19'),
(383, 5, 'customers_slider_item_3_social_instagram_icon', '26'),
(384, 5, '_customers_slider_item_3_social_instagram_icon', 'field_6037874a8de17'),
(385, 5, 'customers_slider_item_3_social_instagram_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:26:\"https://www.instagram.com/\";s:6:\"target\";s:0:\"\";}'),
(386, 5, '_customers_slider_item_3_social_instagram_link', 'field_603787558de18'),
(387, 5, 'customers_slider_item_3_social_instagram', ''),
(388, 5, '_customers_slider_item_3_social_instagram', 'field_603787308de15'),
(389, 5, 'customers_slider_item_3_social_twitter_icon', '27'),
(390, 5, '_customers_slider_item_3_social_twitter_icon', 'field_603787668de1a'),
(391, 5, 'customers_slider_item_3_social_twitter_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:24:\"https://www.twitter.com/\";s:6:\"target\";s:0:\"\";}'),
(392, 5, '_customers_slider_item_3_social_twitter_link', 'field_603787668de1b'),
(393, 5, 'customers_slider_item_3_social_twitter', ''),
(394, 5, '_customers_slider_item_3_social_twitter', 'field_603787668de19'),
(395, 43, 'customers_', 'Our <span>customers</span> says'),
(396, 43, '_customers_', 'field_6036a789f54e8'),
(397, 43, 'customers_main-sub', 'Ipsum faucibus viverra tempus magna non ut nibh convallis eleifend fames arcu'),
(398, 43, '_customers_main-sub', 'field_6036a79806367'),
(399, 43, 'customers_slider_item_0_title', 'New Technologies Company'),
(400, 43, '_customers_slider_item_0_title', 'field_6036a8e7e5a1f'),
(401, 43, 'customers_slider_item_0_sub', 'Dui magna nisi, lacus eget cursus semper nibh morbi massa. Nunc faucibus habitant tortor vel. Maecenas ut vivamus in fringilla dictum nunc quam luctus. Nunc faucibus habitant tortor vel...'),
(402, 43, '_customers_slider_item_0_sub', 'field_6036a8fae5a20'),
(403, 43, 'customers_slider_item_0_avatar', '25'),
(404, 43, '_customers_slider_item_0_avatar', 'field_6036a90ce5a21'),
(405, 43, 'customers_slider_item_0_name', 'Lucy Lewis'),
(406, 43, '_customers_slider_item_0_name', 'field_6036a91ae5a22'),
(407, 43, 'customers_slider_item_0_position', 'CMO, Co-Founder'),
(408, 43, '_customers_slider_item_0_position', 'field_6036a926e5a23'),
(409, 43, 'customers_slider_item_0_social_item_0_icon', '26'),
(410, 43, '_customers_slider_item_0_social_item_0_icon', 'field_6036a994e5a27'),
(411, 43, 'customers_slider_item_0_social_item_0_link', 'a:3:{s:5:\"title\";s:8:\"Homepage\";s:3:\"url\";s:26:\"https://www.instagram.com/\";s:6:\"target\";s:0:\"\";}'),
(412, 43, '_customers_slider_item_0_social_item_0_link', 'field_6036a9a9e5a28'),
(413, 43, 'customers_slider_item_0_social_item', '2'),
(414, 43, '_customers_slider_item_0_social_item', 'field_6036a98ae5a26'),
(415, 43, 'customers_slider_item_0_social', ''),
(416, 43, '_customers_slider_item_0_social', 'field_6036a930e5a24'),
(417, 43, 'customers_slider_item', '4'),
(418, 43, '_customers_slider_item', 'field_6036a7ae06369'),
(419, 43, 'customers_slider', ''),
(420, 43, '_customers_slider', 'field_6036a7a206368'),
(421, 43, 'customers', ''),
(422, 43, '_customers', 'field_6036a77df54e7'),
(423, 43, 'customers_slider_item_0_social_item_1_icon', '27'),
(424, 43, '_customers_slider_item_0_social_item_1_icon', 'field_6036a994e5a27'),
(425, 43, 'customers_slider_item_0_social_item_1_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:22:\"http://www.twitter.com\";s:6:\"target\";s:0:\"\";}'),
(426, 43, '_customers_slider_item_0_social_item_1_link', 'field_6036a9a9e5a28'),
(427, 43, 'customers_slider_item_1_title', 'Digital  Smart Agency'),
(428, 43, '_customers_slider_item_1_title', 'field_6036a8e7e5a1f'),
(429, 43, 'customers_slider_item_1_sub', 'Dui magna nisi, lacus eget cursus semper nibh morbi massa. Nunc faucibus habitant tortor vel. Maecenas ut vivamus in fringilla dictum nunc quam luctus. Nunc faucibus habitant tortor vel...'),
(430, 43, '_customers_slider_item_1_sub', 'field_6036a8fae5a20'),
(431, 43, 'customers_slider_item_1_avatar', '28'),
(432, 43, '_customers_slider_item_1_avatar', 'field_6036a90ce5a21'),
(433, 43, 'customers_slider_item_1_name', 'Lee Warren'),
(434, 43, '_customers_slider_item_1_name', 'field_6036a91ae5a22'),
(435, 43, 'customers_slider_item_1_position', 'CMO, Co-Founder'),
(436, 43, '_customers_slider_item_1_position', 'field_6036a926e5a23'),
(437, 43, 'customers_slider_item_1_social_item_0_icon', '26'),
(438, 43, '_customers_slider_item_1_social_item_0_icon', 'field_6036a994e5a27'),
(439, 43, 'customers_slider_item_1_social_item_0_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:26:\"https://www.instagram.com/\";s:6:\"target\";s:0:\"\";}'),
(440, 43, '_customers_slider_item_1_social_item_0_link', 'field_6036a9a9e5a28'),
(441, 43, 'customers_slider_item_1_social_item_1_icon', '27'),
(442, 43, '_customers_slider_item_1_social_item_1_icon', 'field_6036a994e5a27'),
(443, 43, 'customers_slider_item_1_social_item_1_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:24:\"https://www.twitter.com/\";s:6:\"target\";s:0:\"\";}'),
(444, 43, '_customers_slider_item_1_social_item_1_link', 'field_6036a9a9e5a28'),
(445, 43, 'customers_slider_item_1_social_item', '2'),
(446, 43, '_customers_slider_item_1_social_item', 'field_6036a98ae5a26'),
(447, 43, 'customers_slider_item_1_social', ''),
(448, 43, '_customers_slider_item_1_social', 'field_6036a930e5a24'),
(449, 43, 'customers_slider_item_2_title', 'New Technologies Company'),
(450, 43, '_customers_slider_item_2_title', 'field_6036a8e7e5a1f'),
(451, 43, 'customers_slider_item_2_sub', 'Dui magna nisi, lacus eget cursus semper nibh morbi massa. Nunc faucibus habitant tortor vel. Maecenas ut vivamus in fringilla dictum nunc quam luctus. Nunc faucibus habitant tortor vel...'),
(452, 43, '_customers_slider_item_2_sub', 'field_6036a8fae5a20'),
(453, 43, 'customers_slider_item_2_avatar', '25'),
(454, 43, '_customers_slider_item_2_avatar', 'field_6036a90ce5a21'),
(455, 43, 'customers_slider_item_2_name', 'Lucy Lewis'),
(456, 43, '_customers_slider_item_2_name', 'field_6036a91ae5a22'),
(457, 43, 'customers_slider_item_2_position', 'CMO, Co-Founder'),
(458, 43, '_customers_slider_item_2_position', 'field_6036a926e5a23'),
(459, 43, 'customers_slider_item_2_social_item_0_icon', '26'),
(460, 43, '_customers_slider_item_2_social_item_0_icon', 'field_6036a994e5a27'),
(461, 43, 'customers_slider_item_2_social_item_0_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:26:\"https://www.instagram.com/\";s:6:\"target\";s:0:\"\";}'),
(462, 43, '_customers_slider_item_2_social_item_0_link', 'field_6036a9a9e5a28'),
(463, 43, 'customers_slider_item_2_social_item_1_icon', '27'),
(464, 43, '_customers_slider_item_2_social_item_1_icon', 'field_6036a994e5a27'),
(465, 43, 'customers_slider_item_2_social_item_1_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:24:\"https://www.twitter.com/\";s:6:\"target\";s:0:\"\";}'),
(466, 43, '_customers_slider_item_2_social_item_1_link', 'field_6036a9a9e5a28'),
(467, 43, 'customers_slider_item_2_social_item', '2'),
(468, 43, '_customers_slider_item_2_social_item', 'field_6036a98ae5a26'),
(469, 43, 'customers_slider_item_2_social', ''),
(470, 43, '_customers_slider_item_2_social', 'field_6036a930e5a24'),
(471, 43, 'customers_slider_item_3_title', 'Digital  Smart Agency'),
(472, 43, '_customers_slider_item_3_title', 'field_6036a8e7e5a1f'),
(473, 43, 'customers_slider_item_3_sub', 'Dui magna nisi, lacus eget cursus semper nibh morbi massa. Nunc faucibus habitant tortor vel. Maecenas ut vivamus in fringilla dictum nunc quam luctus. Nunc faucibus habitant tortor vel...'),
(474, 43, '_customers_slider_item_3_sub', 'field_6036a8fae5a20'),
(475, 43, 'customers_slider_item_3_avatar', '28'),
(476, 43, '_customers_slider_item_3_avatar', 'field_6036a90ce5a21'),
(477, 43, 'customers_slider_item_3_name', 'Lee Warren'),
(478, 43, '_customers_slider_item_3_name', 'field_6036a91ae5a22'),
(479, 43, 'customers_slider_item_3_position', 'CMO, Co-Founder'),
(480, 43, '_customers_slider_item_3_position', 'field_6036a926e5a23'),
(481, 43, 'customers_slider_item_3_social_item_0_icon', '26'),
(482, 43, '_customers_slider_item_3_social_item_0_icon', 'field_6036a994e5a27'),
(483, 43, 'customers_slider_item_3_social_item_0_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:26:\"https://www.instagram.com/\";s:6:\"target\";s:0:\"\";}'),
(484, 43, '_customers_slider_item_3_social_item_0_link', 'field_6036a9a9e5a28'),
(485, 43, 'customers_slider_item_3_social_item_1_icon', '27'),
(486, 43, '_customers_slider_item_3_social_item_1_icon', 'field_6036a994e5a27'),
(487, 43, 'customers_slider_item_3_social_item_1_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:24:\"https://www.twitter.com/\";s:6:\"target\";s:0:\"\";}'),
(488, 43, '_customers_slider_item_3_social_item_1_link', 'field_6036a9a9e5a28'),
(489, 43, 'customers_slider_item_3_social_item', '2'),
(490, 43, '_customers_slider_item_3_social_item', 'field_6036a98ae5a26'),
(491, 43, 'customers_slider_item_3_social', ''),
(492, 43, '_customers_slider_item_3_social', 'field_6036a930e5a24'),
(493, 43, 'customers_main-title', 'Our <span>customers</span> says'),
(494, 43, '_customers_main-title', 'field_6036a789f54e8'),
(495, 43, 'customers_slider_item_0_social_instagram_icon', '26'),
(496, 43, '_customers_slider_item_0_social_instagram_icon', 'field_6037874a8de17'),
(497, 43, 'customers_slider_item_0_social_instagram_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:26:\"https://www.instagram.com/\";s:6:\"target\";s:0:\"\";}'),
(498, 43, '_customers_slider_item_0_social_instagram_link', 'field_603787558de18'),
(499, 43, 'customers_slider_item_0_social_instagram', ''),
(500, 43, '_customers_slider_item_0_social_instagram', 'field_603787308de15'),
(501, 43, 'customers_slider_item_0_social_twitter_icon', '27'),
(502, 43, '_customers_slider_item_0_social_twitter_icon', 'field_603787668de1a'),
(503, 43, 'customers_slider_item_0_social_twitter_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:24:\"https://www.twitter.com/\";s:6:\"target\";s:0:\"\";}'),
(504, 43, '_customers_slider_item_0_social_twitter_link', 'field_603787668de1b'),
(505, 43, 'customers_slider_item_0_social_twitter', ''),
(506, 43, '_customers_slider_item_0_social_twitter', 'field_603787668de19'),
(507, 43, 'customers_slider_item_1_social_instagram_icon', '26'),
(508, 43, '_customers_slider_item_1_social_instagram_icon', 'field_6037874a8de17'),
(509, 43, 'customers_slider_item_1_social_instagram_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:26:\"https://www.instagram.com/\";s:6:\"target\";s:0:\"\";}'),
(510, 43, '_customers_slider_item_1_social_instagram_link', 'field_603787558de18'),
(511, 43, 'customers_slider_item_1_social_instagram', ''),
(512, 43, '_customers_slider_item_1_social_instagram', 'field_603787308de15'),
(513, 43, 'customers_slider_item_1_social_twitter_icon', '27'),
(514, 43, '_customers_slider_item_1_social_twitter_icon', 'field_603787668de1a'),
(515, 43, 'customers_slider_item_1_social_twitter_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:24:\"https://www.twitter.com/\";s:6:\"target\";s:0:\"\";}'),
(516, 43, '_customers_slider_item_1_social_twitter_link', 'field_603787668de1b'),
(517, 43, 'customers_slider_item_1_social_twitter', ''),
(518, 43, '_customers_slider_item_1_social_twitter', 'field_603787668de19'),
(519, 43, 'customers_slider_item_2_social_instagram_icon', '26'),
(520, 43, '_customers_slider_item_2_social_instagram_icon', 'field_6037874a8de17'),
(521, 43, 'customers_slider_item_2_social_instagram_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:26:\"https://www.instagram.com/\";s:6:\"target\";s:0:\"\";}'),
(522, 43, '_customers_slider_item_2_social_instagram_link', 'field_603787558de18'),
(523, 43, 'customers_slider_item_2_social_instagram', ''),
(524, 43, '_customers_slider_item_2_social_instagram', 'field_603787308de15'),
(525, 43, 'customers_slider_item_2_social_twitter_icon', '27'),
(526, 43, '_customers_slider_item_2_social_twitter_icon', 'field_603787668de1a'),
(527, 43, 'customers_slider_item_2_social_twitter_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:24:\"https://www.twitter.com/\";s:6:\"target\";s:0:\"\";}'),
(528, 43, '_customers_slider_item_2_social_twitter_link', 'field_603787668de1b'),
(529, 43, 'customers_slider_item_2_social_twitter', ''),
(530, 43, '_customers_slider_item_2_social_twitter', 'field_603787668de19'),
(531, 43, 'customers_slider_item_3_social_instagram_icon', '26'),
(532, 43, '_customers_slider_item_3_social_instagram_icon', 'field_6037874a8de17'),
(533, 43, 'customers_slider_item_3_social_instagram_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:26:\"https://www.instagram.com/\";s:6:\"target\";s:0:\"\";}'),
(534, 43, '_customers_slider_item_3_social_instagram_link', 'field_603787558de18'),
(535, 43, 'customers_slider_item_3_social_instagram', ''),
(536, 43, '_customers_slider_item_3_social_instagram', 'field_603787308de15'),
(537, 43, 'customers_slider_item_3_social_twitter_icon', '27'),
(538, 43, '_customers_slider_item_3_social_twitter_icon', 'field_603787668de1a'),
(539, 43, 'customers_slider_item_3_social_twitter_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:24:\"https://www.twitter.com/\";s:6:\"target\";s:0:\"\";}'),
(540, 43, '_customers_slider_item_3_social_twitter_link', 'field_603787668de1b'),
(541, 43, 'customers_slider_item_3_social_twitter', ''),
(542, 43, '_customers_slider_item_3_social_twitter', 'field_603787668de19'),
(543, 44, 'customers_', 'Our <span>customers</span> says'),
(544, 44, '_customers_', 'field_6036a789f54e8'),
(545, 44, 'customers_main-sub', 'Ipsum faucibus viverra tempus magna non ut nibh convallis eleifend fames arcu'),
(546, 44, '_customers_main-sub', 'field_6036a79806367'),
(547, 44, 'customers_slider_item_0_title', 'New Technologies Company'),
(548, 44, '_customers_slider_item_0_title', 'field_6036a8e7e5a1f'),
(549, 44, 'customers_slider_item_0_sub', 'Dui magna nisi, lacus eget cursus semper nibh morbi massa. Nunc faucibus habitant tortor vel. Maecenas ut vivamus in fringilla dictum nunc quam luctus. Nunc faucibus habitant tortor vel...'),
(550, 44, '_customers_slider_item_0_sub', 'field_6036a8fae5a20'),
(551, 44, 'customers_slider_item_0_avatar', '25'),
(552, 44, '_customers_slider_item_0_avatar', 'field_6036a90ce5a21'),
(553, 44, 'customers_slider_item_0_name', 'Lucy Lewis'),
(554, 44, '_customers_slider_item_0_name', 'field_6036a91ae5a22'),
(555, 44, 'customers_slider_item_0_position', 'CMO, Co-Founder'),
(556, 44, '_customers_slider_item_0_position', 'field_6036a926e5a23'),
(557, 44, 'customers_slider_item_0_social_item_0_icon', '26'),
(558, 44, '_customers_slider_item_0_social_item_0_icon', 'field_6036a994e5a27'),
(559, 44, 'customers_slider_item_0_social_item_0_link', 'a:3:{s:5:\"title\";s:8:\"Homepage\";s:3:\"url\";s:26:\"https://www.instagram.com/\";s:6:\"target\";s:0:\"\";}'),
(560, 44, '_customers_slider_item_0_social_item_0_link', 'field_6036a9a9e5a28'),
(561, 44, 'customers_slider_item_0_social_item', '2'),
(562, 44, '_customers_slider_item_0_social_item', 'field_6036a98ae5a26'),
(563, 44, 'customers_slider_item_0_social', ''),
(564, 44, '_customers_slider_item_0_social', 'field_6036a930e5a24'),
(565, 44, 'customers_slider_item', '4'),
(566, 44, '_customers_slider_item', 'field_6036a7ae06369'),
(567, 44, 'customers_slider', ''),
(568, 44, '_customers_slider', 'field_6036a7a206368'),
(569, 44, 'customers', ''),
(570, 44, '_customers', 'field_6036a77df54e7'),
(571, 44, 'customers_slider_item_0_social_item_1_icon', '27'),
(572, 44, '_customers_slider_item_0_social_item_1_icon', 'field_6036a994e5a27'),
(573, 44, 'customers_slider_item_0_social_item_1_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:22:\"http://www.twitter.com\";s:6:\"target\";s:0:\"\";}'),
(574, 44, '_customers_slider_item_0_social_item_1_link', 'field_6036a9a9e5a28'),
(575, 44, 'customers_slider_item_1_title', 'Digital  Smart Agency'),
(576, 44, '_customers_slider_item_1_title', 'field_6036a8e7e5a1f'),
(577, 44, 'customers_slider_item_1_sub', 'Dui magna nisi, lacus eget cursus semper nibh morbi massa. Nunc faucibus habitant tortor vel. Maecenas ut vivamus in fringilla dictum nunc quam luctus. Nunc faucibus habitant tortor vel...'),
(578, 44, '_customers_slider_item_1_sub', 'field_6036a8fae5a20'),
(579, 44, 'customers_slider_item_1_avatar', '28'),
(580, 44, '_customers_slider_item_1_avatar', 'field_6036a90ce5a21'),
(581, 44, 'customers_slider_item_1_name', 'Lee Warren'),
(582, 44, '_customers_slider_item_1_name', 'field_6036a91ae5a22'),
(583, 44, 'customers_slider_item_1_position', 'CMO, Co-Founder'),
(584, 44, '_customers_slider_item_1_position', 'field_6036a926e5a23'),
(585, 44, 'customers_slider_item_1_social_item_0_icon', '26'),
(586, 44, '_customers_slider_item_1_social_item_0_icon', 'field_6036a994e5a27'),
(587, 44, 'customers_slider_item_1_social_item_0_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:26:\"https://www.instagram.com/\";s:6:\"target\";s:0:\"\";}'),
(588, 44, '_customers_slider_item_1_social_item_0_link', 'field_6036a9a9e5a28'),
(589, 44, 'customers_slider_item_1_social_item_1_icon', '27'),
(590, 44, '_customers_slider_item_1_social_item_1_icon', 'field_6036a994e5a27'),
(591, 44, 'customers_slider_item_1_social_item_1_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:24:\"https://www.twitter.com/\";s:6:\"target\";s:0:\"\";}'),
(592, 44, '_customers_slider_item_1_social_item_1_link', 'field_6036a9a9e5a28'),
(593, 44, 'customers_slider_item_1_social_item', '2'),
(594, 44, '_customers_slider_item_1_social_item', 'field_6036a98ae5a26'),
(595, 44, 'customers_slider_item_1_social', ''),
(596, 44, '_customers_slider_item_1_social', 'field_6036a930e5a24'),
(597, 44, 'customers_slider_item_2_title', 'New Technologies Company'),
(598, 44, '_customers_slider_item_2_title', 'field_6036a8e7e5a1f'),
(599, 44, 'customers_slider_item_2_sub', 'Dui magna nisi, lacus eget cursus semper nibh morbi massa. Nunc faucibus habitant tortor vel. Maecenas ut vivamus in fringilla dictum nunc quam luctus. Nunc faucibus habitant tortor vel...'),
(600, 44, '_customers_slider_item_2_sub', 'field_6036a8fae5a20'),
(601, 44, 'customers_slider_item_2_avatar', '25'),
(602, 44, '_customers_slider_item_2_avatar', 'field_6036a90ce5a21'),
(603, 44, 'customers_slider_item_2_name', 'Lucy Lewis'),
(604, 44, '_customers_slider_item_2_name', 'field_6036a91ae5a22'),
(605, 44, 'customers_slider_item_2_position', 'CMO, Co-Founder'),
(606, 44, '_customers_slider_item_2_position', 'field_6036a926e5a23'),
(607, 44, 'customers_slider_item_2_social_item_0_icon', '26'),
(608, 44, '_customers_slider_item_2_social_item_0_icon', 'field_6036a994e5a27'),
(609, 44, 'customers_slider_item_2_social_item_0_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:26:\"https://www.instagram.com/\";s:6:\"target\";s:0:\"\";}'),
(610, 44, '_customers_slider_item_2_social_item_0_link', 'field_6036a9a9e5a28'),
(611, 44, 'customers_slider_item_2_social_item_1_icon', '27'),
(612, 44, '_customers_slider_item_2_social_item_1_icon', 'field_6036a994e5a27'),
(613, 44, 'customers_slider_item_2_social_item_1_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:24:\"https://www.twitter.com/\";s:6:\"target\";s:0:\"\";}'),
(614, 44, '_customers_slider_item_2_social_item_1_link', 'field_6036a9a9e5a28'),
(615, 44, 'customers_slider_item_2_social_item', '2'),
(616, 44, '_customers_slider_item_2_social_item', 'field_6036a98ae5a26'),
(617, 44, 'customers_slider_item_2_social', ''),
(618, 44, '_customers_slider_item_2_social', 'field_6036a930e5a24'),
(619, 44, 'customers_slider_item_3_title', 'Digital  Smart Agency'),
(620, 44, '_customers_slider_item_3_title', 'field_6036a8e7e5a1f'),
(621, 44, 'customers_slider_item_3_sub', 'Dui magna nisi, lacus eget cursus semper nibh morbi massa. Nunc faucibus habitant tortor vel. Maecenas ut vivamus in fringilla dictum nunc quam luctus. Nunc faucibus habitant tortor vel...'),
(622, 44, '_customers_slider_item_3_sub', 'field_6036a8fae5a20'),
(623, 44, 'customers_slider_item_3_avatar', '28'),
(624, 44, '_customers_slider_item_3_avatar', 'field_6036a90ce5a21');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(625, 44, 'customers_slider_item_3_name', 'Lee Warren'),
(626, 44, '_customers_slider_item_3_name', 'field_6036a91ae5a22'),
(627, 44, 'customers_slider_item_3_position', 'CMO, Co-Founder'),
(628, 44, '_customers_slider_item_3_position', 'field_6036a926e5a23'),
(629, 44, 'customers_slider_item_3_social_item_0_icon', '26'),
(630, 44, '_customers_slider_item_3_social_item_0_icon', 'field_6036a994e5a27'),
(631, 44, 'customers_slider_item_3_social_item_0_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:26:\"https://www.instagram.com/\";s:6:\"target\";s:0:\"\";}'),
(632, 44, '_customers_slider_item_3_social_item_0_link', 'field_6036a9a9e5a28'),
(633, 44, 'customers_slider_item_3_social_item_1_icon', '27'),
(634, 44, '_customers_slider_item_3_social_item_1_icon', 'field_6036a994e5a27'),
(635, 44, 'customers_slider_item_3_social_item_1_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:24:\"https://www.twitter.com/\";s:6:\"target\";s:0:\"\";}'),
(636, 44, '_customers_slider_item_3_social_item_1_link', 'field_6036a9a9e5a28'),
(637, 44, 'customers_slider_item_3_social_item', '2'),
(638, 44, '_customers_slider_item_3_social_item', 'field_6036a98ae5a26'),
(639, 44, 'customers_slider_item_3_social', ''),
(640, 44, '_customers_slider_item_3_social', 'field_6036a930e5a24'),
(641, 44, 'customers_main-title', 'Our <span>customers</span> says'),
(642, 44, '_customers_main-title', 'field_6036a789f54e8'),
(643, 44, 'customers_slider_item_0_social_instagram_icon', '26'),
(644, 44, '_customers_slider_item_0_social_instagram_icon', 'field_6037874a8de17'),
(645, 44, 'customers_slider_item_0_social_instagram_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:26:\"https://www.instagram.com/\";s:6:\"target\";s:6:\"_blank\";}'),
(646, 44, '_customers_slider_item_0_social_instagram_link', 'field_603787558de18'),
(647, 44, 'customers_slider_item_0_social_instagram', ''),
(648, 44, '_customers_slider_item_0_social_instagram', 'field_603787308de15'),
(649, 44, 'customers_slider_item_0_social_twitter_icon', '27'),
(650, 44, '_customers_slider_item_0_social_twitter_icon', 'field_603787668de1a'),
(651, 44, 'customers_slider_item_0_social_twitter_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:24:\"https://www.twitter.com/\";s:6:\"target\";s:6:\"_blank\";}'),
(652, 44, '_customers_slider_item_0_social_twitter_link', 'field_603787668de1b'),
(653, 44, 'customers_slider_item_0_social_twitter', ''),
(654, 44, '_customers_slider_item_0_social_twitter', 'field_603787668de19'),
(655, 44, 'customers_slider_item_1_social_instagram_icon', '26'),
(656, 44, '_customers_slider_item_1_social_instagram_icon', 'field_6037874a8de17'),
(657, 44, 'customers_slider_item_1_social_instagram_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:26:\"https://www.instagram.com/\";s:6:\"target\";s:0:\"\";}'),
(658, 44, '_customers_slider_item_1_social_instagram_link', 'field_603787558de18'),
(659, 44, 'customers_slider_item_1_social_instagram', ''),
(660, 44, '_customers_slider_item_1_social_instagram', 'field_603787308de15'),
(661, 44, 'customers_slider_item_1_social_twitter_icon', '27'),
(662, 44, '_customers_slider_item_1_social_twitter_icon', 'field_603787668de1a'),
(663, 44, 'customers_slider_item_1_social_twitter_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:24:\"https://www.twitter.com/\";s:6:\"target\";s:0:\"\";}'),
(664, 44, '_customers_slider_item_1_social_twitter_link', 'field_603787668de1b'),
(665, 44, 'customers_slider_item_1_social_twitter', ''),
(666, 44, '_customers_slider_item_1_social_twitter', 'field_603787668de19'),
(667, 44, 'customers_slider_item_2_social_instagram_icon', '26'),
(668, 44, '_customers_slider_item_2_social_instagram_icon', 'field_6037874a8de17'),
(669, 44, 'customers_slider_item_2_social_instagram_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:26:\"https://www.instagram.com/\";s:6:\"target\";s:0:\"\";}'),
(670, 44, '_customers_slider_item_2_social_instagram_link', 'field_603787558de18'),
(671, 44, 'customers_slider_item_2_social_instagram', ''),
(672, 44, '_customers_slider_item_2_social_instagram', 'field_603787308de15'),
(673, 44, 'customers_slider_item_2_social_twitter_icon', '27'),
(674, 44, '_customers_slider_item_2_social_twitter_icon', 'field_603787668de1a'),
(675, 44, 'customers_slider_item_2_social_twitter_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:24:\"https://www.twitter.com/\";s:6:\"target\";s:0:\"\";}'),
(676, 44, '_customers_slider_item_2_social_twitter_link', 'field_603787668de1b'),
(677, 44, 'customers_slider_item_2_social_twitter', ''),
(678, 44, '_customers_slider_item_2_social_twitter', 'field_603787668de19'),
(679, 44, 'customers_slider_item_3_social_instagram_icon', '26'),
(680, 44, '_customers_slider_item_3_social_instagram_icon', 'field_6037874a8de17'),
(681, 44, 'customers_slider_item_3_social_instagram_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:26:\"https://www.instagram.com/\";s:6:\"target\";s:0:\"\";}'),
(682, 44, '_customers_slider_item_3_social_instagram_link', 'field_603787558de18'),
(683, 44, 'customers_slider_item_3_social_instagram', ''),
(684, 44, '_customers_slider_item_3_social_instagram', 'field_603787308de15'),
(685, 44, 'customers_slider_item_3_social_twitter_icon', '27'),
(686, 44, '_customers_slider_item_3_social_twitter_icon', 'field_603787668de1a'),
(687, 44, 'customers_slider_item_3_social_twitter_link', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:24:\"https://www.twitter.com/\";s:6:\"target\";s:0:\"\";}'),
(688, 44, '_customers_slider_item_3_social_twitter_link', 'field_603787668de1b'),
(689, 44, 'customers_slider_item_3_social_twitter', ''),
(690, 44, '_customers_slider_item_3_social_twitter', 'field_603787668de19');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-02-24 17:26:37', '2021-02-24 17:26:37', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2021-02-24 17:26:37', '2021-02-24 17:26:37', '', 0, 'https://test.oo/?p=1', 0, 'post', '', 1),
(2, 1, '2021-02-24 17:26:37', '2021-02-24 17:26:37', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"https://test.oo/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2021-02-24 17:26:37', '2021-02-24 17:26:37', '', 0, 'https://test.oo/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-02-24 17:26:37', '2021-02-24 17:26:37', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: https://test.oo.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-02-24 17:26:37', '2021-02-24 17:26:37', '', 0, 'https://test.oo/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-02-24 17:26:56', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-02-24 17:26:56', '0000-00-00 00:00:00', '', 0, 'https://test.oo/?p=4', 0, 'post', '', 0),
(5, 1, '2021-02-24 17:30:01', '2021-02-24 17:30:01', '', 'Homepage', '', 'publish', 'closed', 'closed', '', 'homepage', '', '', '2021-02-25 11:27:00', '2021-02-25 11:27:00', '', 0, 'https://test.oo/?page_id=5', 0, 'page', '', 0),
(6, 1, '2021-02-24 17:30:01', '2021-02-24 17:30:01', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-02-24 17:30:01', '2021-02-24 17:30:01', '', 5, 'https://test.oo/?p=6', 0, 'revision', '', 0),
(9, 1, '2021-02-24 19:22:58', '2021-02-24 19:22:58', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:22:\"templates/homepage.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Homepage', 'homepage', 'publish', 'closed', 'closed', '', 'group_6036a7705cc16', '', '', '2021-02-25 11:26:27', '2021-02-25 11:26:27', '', 0, 'https://test.oo/?post_type=acf-field-group&#038;p=9', 0, 'acf-field-group', '', 0),
(10, 1, '2021-02-24 19:22:58', '2021-02-24 19:22:58', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'customers', 'customers', 'publish', 'closed', 'closed', '', 'field_6036a77df54e7', '', '', '2021-02-24 19:22:58', '2021-02-24 19:22:58', '', 9, 'https://test.oo/?post_type=acf-field&p=10', 0, 'acf-field', '', 0),
(11, 1, '2021-02-24 19:22:58', '2021-02-24 19:22:58', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'main-title', 'main-title', 'publish', 'closed', 'closed', '', 'field_6036a789f54e8', '', '', '2021-02-25 10:38:38', '2021-02-25 10:38:38', '', 10, 'https://test.oo/?post_type=acf-field&#038;p=11', 0, 'acf-field', '', 0),
(12, 1, '2021-02-24 19:23:59', '2021-02-24 19:23:59', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'main-sub', 'main-sub', 'publish', 'closed', 'closed', '', 'field_6036a79806367', '', '', '2021-02-24 19:23:59', '2021-02-24 19:23:59', '', 10, 'https://test.oo/?post_type=acf-field&p=12', 1, 'acf-field', '', 0),
(13, 1, '2021-02-24 19:23:59', '2021-02-24 19:23:59', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'slider', 'slider', 'publish', 'closed', 'closed', '', 'field_6036a7a206368', '', '', '2021-02-24 19:23:59', '2021-02-24 19:23:59', '', 10, 'https://test.oo/?post_type=acf-field&p=13', 2, 'acf-field', '', 0),
(14, 1, '2021-02-24 19:23:59', '2021-02-24 19:23:59', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'item', 'item', 'publish', 'closed', 'closed', '', 'field_6036a7ae06369', '', '', '2021-02-24 19:23:59', '2021-02-24 19:23:59', '', 13, 'https://test.oo/?post_type=acf-field&p=14', 0, 'acf-field', '', 0),
(15, 1, '2021-02-24 19:32:22', '2021-02-24 19:32:22', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title', 'title', 'publish', 'closed', 'closed', '', 'field_6036a8e7e5a1f', '', '', '2021-02-24 19:32:22', '2021-02-24 19:32:22', '', 14, 'https://test.oo/?post_type=acf-field&p=15', 0, 'acf-field', '', 0),
(16, 1, '2021-02-24 19:32:22', '2021-02-24 19:32:22', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'sub', 'sub', 'publish', 'closed', 'closed', '', 'field_6036a8fae5a20', '', '', '2021-02-24 19:34:38', '2021-02-24 19:34:38', '', 14, 'https://test.oo/?post_type=acf-field&#038;p=16', 1, 'acf-field', '', 0),
(17, 1, '2021-02-24 19:32:22', '2021-02-24 19:32:22', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'avatar', 'avatar', 'publish', 'closed', 'closed', '', 'field_6036a90ce5a21', '', '', '2021-02-24 19:32:22', '2021-02-24 19:32:22', '', 14, 'https://test.oo/?post_type=acf-field&p=17', 2, 'acf-field', '', 0),
(18, 1, '2021-02-24 19:32:22', '2021-02-24 19:32:22', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'name', 'name', 'publish', 'closed', 'closed', '', 'field_6036a91ae5a22', '', '', '2021-02-24 19:32:22', '2021-02-24 19:32:22', '', 14, 'https://test.oo/?post_type=acf-field&p=18', 3, 'acf-field', '', 0),
(19, 1, '2021-02-24 19:32:22', '2021-02-24 19:32:22', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'position', 'position', 'publish', 'closed', 'closed', '', 'field_6036a926e5a23', '', '', '2021-02-24 19:32:22', '2021-02-24 19:32:22', '', 14, 'https://test.oo/?post_type=acf-field&p=19', 4, 'acf-field', '', 0),
(20, 1, '2021-02-24 19:32:22', '2021-02-24 19:32:22', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'social', 'social', 'publish', 'closed', 'closed', '', 'field_6036a930e5a24', '', '', '2021-02-24 19:32:22', '2021-02-24 19:32:22', '', 14, 'https://test.oo/?post_type=acf-field&p=20', 5, 'acf-field', '', 0),
(24, 1, '2021-02-24 19:33:50', '2021-02-24 19:33:50', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-02-24 19:33:50', '2021-02-24 19:33:50', '', 5, 'https://test.oo/?p=24', 0, 'revision', '', 0),
(25, 1, '2021-02-24 19:35:29', '2021-02-24 19:35:29', '', 'avatar-1', '', 'inherit', 'open', 'closed', '', 'avatar-1', '', '', '2021-02-24 19:35:29', '2021-02-24 19:35:29', '', 5, 'https://test.oo/wp-content/uploads/2021/02/avatar-1.png', 0, 'attachment', 'image/png', 0),
(26, 1, '2021-02-24 19:36:13', '2021-02-24 19:36:13', '', 'instagram', '', 'inherit', 'open', 'closed', '', 'instagram', '', '', '2021-02-24 19:36:13', '2021-02-24 19:36:13', '', 5, 'https://test.oo/wp-content/uploads/2021/02/instagram.png', 0, 'attachment', 'image/png', 0),
(27, 1, '2021-02-24 19:36:31', '2021-02-24 19:36:31', '', 'twitter', '', 'inherit', 'open', 'closed', '', 'twitter', '', '', '2021-02-24 19:36:31', '2021-02-24 19:36:31', '', 5, 'https://test.oo/wp-content/uploads/2021/02/twitter.png', 0, 'attachment', 'image/png', 0),
(28, 1, '2021-02-24 19:37:40', '2021-02-24 19:37:40', '', 'avatar-2', '', 'inherit', 'open', 'closed', '', 'avatar-2', '', '', '2021-02-24 19:37:40', '2021-02-24 19:37:40', '', 5, 'https://test.oo/wp-content/uploads/2021/02/avatar-2.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2021-02-24 19:41:30', '2021-02-24 19:41:30', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-02-24 19:41:30', '2021-02-24 19:41:30', '', 5, 'https://test.oo/?p=29', 0, 'revision', '', 0),
(30, 1, '2021-02-25 10:39:44', '2021-02-25 10:39:44', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-02-25 10:39:44', '2021-02-25 10:39:44', '', 5, 'https://test.oo/?p=30', 0, 'revision', '', 0),
(37, 1, '2021-02-25 11:18:17', '2021-02-25 11:18:17', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'instagram', 'instagram', 'publish', 'closed', 'closed', '', 'field_603787308de15', '', '', '2021-02-25 11:18:17', '2021-02-25 11:18:17', '', 20, 'https://test.oo/?post_type=acf-field&p=37', 0, 'acf-field', '', 0),
(38, 1, '2021-02-25 11:18:17', '2021-02-25 11:18:17', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'icon', 'icon', 'publish', 'closed', 'closed', '', 'field_6037874a8de17', '', '', '2021-02-25 11:26:27', '2021-02-25 11:26:27', '', 37, 'https://test.oo/?post_type=acf-field&#038;p=38', 0, 'acf-field', '', 0),
(39, 1, '2021-02-25 11:18:17', '2021-02-25 11:18:17', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}', 'link', 'link', 'publish', 'closed', 'closed', '', 'field_603787558de18', '', '', '2021-02-25 11:26:27', '2021-02-25 11:26:27', '', 37, 'https://test.oo/?post_type=acf-field&#038;p=39', 1, 'acf-field', '', 0),
(40, 1, '2021-02-25 11:18:17', '2021-02-25 11:18:17', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'twitter', 'twitter', 'publish', 'closed', 'closed', '', 'field_603787668de19', '', '', '2021-02-25 11:18:17', '2021-02-25 11:18:17', '', 20, 'https://test.oo/?post_type=acf-field&p=40', 1, 'acf-field', '', 0),
(41, 1, '2021-02-25 11:18:17', '2021-02-25 11:18:17', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'icon', 'icon', 'publish', 'closed', 'closed', '', 'field_603787668de1a', '', '', '2021-02-25 11:26:27', '2021-02-25 11:26:27', '', 40, 'https://test.oo/?post_type=acf-field&#038;p=41', 0, 'acf-field', '', 0),
(42, 1, '2021-02-25 11:18:17', '2021-02-25 11:18:17', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}', 'link', 'link', 'publish', 'closed', 'closed', '', 'field_603787668de1b', '', '', '2021-02-25 11:26:27', '2021-02-25 11:26:27', '', 40, 'https://test.oo/?post_type=acf-field&#038;p=42', 1, 'acf-field', '', 0),
(43, 1, '2021-02-25 11:21:41', '2021-02-25 11:21:41', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-02-25 11:21:41', '2021-02-25 11:21:41', '', 5, 'https://test.oo/?p=43', 0, 'revision', '', 0),
(44, 1, '2021-02-25 11:24:03', '2021-02-25 11:24:03', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-02-25 11:24:03', '2021-02-25 11:24:03', '', 5, 'https://test.oo/?p=44', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
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
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"8855d6aec4e826855ff803bbe453849d0ac6b1ed2889359431223d8724a56cf8\";a:4:{s:10:\"expiration\";i:1614360412;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36\";s:5:\"login\";i:1614187612;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1614195692');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BStDcePfDXvLfTUuIYqQ9ILZUv.e5u1', 'admin', 'gailers23@gmail.com', 'https://test.oo', '2021-02-24 17:26:36', '', 0, 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=691;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
