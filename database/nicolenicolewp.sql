-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2021 at 10:11 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nicolenicolewp`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'WordPress komentator', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-10-23 09:11:18', '2021-10-23 07:11:18', 'Bok, ovo je komentar.\nKako biste započeli s moderiranjem, uređivanjem i brisanjem komentara, na Nadzornoj ploči otvorite zaslon Komentara.\nAvatari komentatora dolaze iz <a href=\"https://gravatar.com\">Gravatara</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

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
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_ngg_album`
--

CREATE TABLE `wp_ngg_album` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `previewpic` bigint(20) NOT NULL DEFAULT 0,
  `albumdesc` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sortorder` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `pageid` bigint(20) NOT NULL DEFAULT 0,
  `extras_post_id` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_ngg_gallery`
--

CREATE TABLE `wp_ngg_gallery` (
  `gid` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `galdesc` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pageid` bigint(20) NOT NULL DEFAULT 0,
  `previewpic` bigint(20) NOT NULL DEFAULT 0,
  `author` bigint(20) NOT NULL DEFAULT 0,
  `extras_post_id` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_ngg_gallery`
--

INSERT INTO `wp_ngg_gallery` (`gid`, `name`, `slug`, `path`, `title`, `galdesc`, `pageid`, `previewpic`, `author`, `extras_post_id`) VALUES
(1, 'nicole-nicole', 'nicole-nicole', '/wp-content/gallery/nicole-nicole/', 'Nicole Nicole', '', 0, 0, 1, 193);

-- --------------------------------------------------------

--
-- Table structure for table `wp_ngg_pictures`
--

CREATE TABLE `wp_ngg_pictures` (
  `pid` bigint(20) NOT NULL,
  `image_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) NOT NULL DEFAULT 0,
  `galleryid` bigint(20) NOT NULL DEFAULT 0,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alttext` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagedate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `exclude` tinyint(4) DEFAULT 0,
  `sortorder` bigint(20) NOT NULL DEFAULT 0,
  `meta_data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras_post_id` bigint(20) NOT NULL DEFAULT 0,
  `updated_at` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_ngg_pictures`
--

INSERT INTO `wp_ngg_pictures` (`pid`, `image_slug`, `post_id`, `galleryid`, `filename`, `description`, `alttext`, `imagedate`, `exclude`, `sortorder`, `meta_data`, `extras_post_id`, `updated_at`) VALUES
(1, 'galerija-4', 0, 1, 'galerija-4.jpg', '', 'galerija-4', '2021-10-25 14:46:45', 0, 0, 'eyJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJ3aWR0aCI6NjAxNiwiaGVpZ2h0Ijo0MDE2LCJzYXZlZCI6dHJ1ZSwiYmFja3VwIjp7ImZpbGVuYW1lIjoiZ2FsZXJpamEtNC5qcGciLCJ3aWR0aCI6NjAxNiwiaGVpZ2h0Ijo0MDE2LCJnZW5lcmF0ZWQiOiIwLjkwNjQ5OTAwIDE2MzUxNzMyMDUifX0=', 199, 1635173278),
(2, 'galerija-3', 0, 1, 'galerija-3.jpg', '', 'galerija-3', '2021-10-25 14:46:45', 0, 0, 'eyJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJ3aWR0aCI6NjAxNiwiaGVpZ2h0Ijo0MDE2LCJzYXZlZCI6dHJ1ZSwiYmFja3VwIjp7ImZpbGVuYW1lIjoiZ2FsZXJpamEtMy5qcGciLCJ3aWR0aCI6NjAxNiwiaGVpZ2h0Ijo0MDE2LCJnZW5lcmF0ZWQiOiIwLjkwODc5OTAwIDE2MzUxNzMyMDUifX0=', 200, 1635173278),
(3, 'galerija-6', 0, 1, 'galerija-6.jpg', '', 'galerija-6', '2021-10-25 14:46:45', 0, 0, 'eyJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJ3aWR0aCI6NjAxNiwiaGVpZ2h0Ijo0MDE2LCJzYXZlZCI6dHJ1ZSwiYmFja3VwIjp7ImZpbGVuYW1lIjoiZ2FsZXJpamEtNi5qcGciLCJ3aWR0aCI6NjAxNiwiaGVpZ2h0Ijo0MDE2LCJnZW5lcmF0ZWQiOiIwLjc2MzkxMTAwIDE2MzUxNzMyMDUifX0=', 197, 1635173279),
(4, 'galerija-5', 0, 1, 'galerija-5.jpg', '', 'galerija-5', '2021-10-25 14:46:45', 0, 0, 'eyJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJ3aWR0aCI6NTg3OCwiaGVpZ2h0IjozOTI0LCJzYXZlZCI6dHJ1ZSwiYmFja3VwIjp7ImZpbGVuYW1lIjoiZ2FsZXJpamEtNS5qcGciLCJ3aWR0aCI6NTg3OCwiaGVpZ2h0IjozOTI0LCJnZW5lcmF0ZWQiOiIwLjc1MjIxODAwIDE2MzUxNzMyMDUifX0=', 198, 1635173279),
(5, 'galerija-1', 0, 1, 'galerija-1.jpg', '', 'galerija-1', '2021-10-25 14:46:45', 0, 0, 'eyJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJ3aWR0aCI6NjAxNiwiaGVpZ2h0Ijo0MDE2LCJzYXZlZCI6dHJ1ZSwiYmFja3VwIjp7ImZpbGVuYW1lIjoiZ2FsZXJpamEtMS5qcGciLCJ3aWR0aCI6NjAxNiwiaGVpZ2h0Ijo0MDE2LCJnZW5lcmF0ZWQiOiIwLjc1ODQ1NDAwIDE2MzUxNzMyMDUifX0=', 196, 1635173279),
(6, 'galerija-2', 0, 1, 'galerija-2.jpg', '', 'galerija-2', '2021-10-25 14:46:45', 0, 0, 'eyJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJ3aWR0aCI6Mzk3NSwiaGVpZ2h0Ijo1OTU0LCJzYXZlZCI6dHJ1ZSwiYmFja3VwIjp7ImZpbGVuYW1lIjoiZ2FsZXJpamEtMi5qcGciLCJ3aWR0aCI6Mzk3NSwiaGVpZ2h0Ijo1OTU0LCJnZW5lcmF0ZWQiOiIwLjc1MzA3MDAwIDE2MzUxNzMyMDUifX0=', 195, 1635173280),
(7, 'galerija-11', 0, 1, 'galerija-11.jpg', '', 'galerija-11', '2021-10-25 14:46:50', 0, 0, 'eyJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJ3aWR0aCI6MTUwNCwiaGVpZ2h0IjoyMDE1LCJzYXZlZCI6dHJ1ZSwiYmFja3VwIjp7ImZpbGVuYW1lIjoiZ2FsZXJpamEtMTEuanBnIiwid2lkdGgiOjE1MDQsImhlaWdodCI6MjAxNSwiZ2VuZXJhdGVkIjoiMC43OTMwMjIwMCAxNjM1MTczMjEwIn19', 201, 1635173280),
(8, 'galerija-10', 0, 1, 'galerija-10.jpg', '', 'galerija-10', '2021-10-25 14:46:50', 0, 0, 'eyJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJ3aWR0aCI6MTUwNCwiaGVpZ2h0IjoyMDE1LCJzYXZlZCI6dHJ1ZSwiYmFja3VwIjp7ImZpbGVuYW1lIjoiZ2FsZXJpamEtMTAuanBnIiwid2lkdGgiOjE1MDQsImhlaWdodCI6MjAxNSwiZ2VuZXJhdGVkIjoiMC43OTIyNDMwMCAxNjM1MTczMjEwIn19', 203, 1635173280),
(9, 'galerija-8', 0, 1, 'galerija-8.jpg', '', 'galerija-8', '2021-10-25 14:46:50', 0, 0, 'eyJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJ3aWR0aCI6NTIwOCwiaGVpZ2h0IjozNDc3LCJzYXZlZCI6dHJ1ZSwiYmFja3VwIjp7ImZpbGVuYW1lIjoiZ2FsZXJpamEtOC5qcGciLCJ3aWR0aCI6NTIwOCwiaGVpZ2h0IjozNDc3LCJnZW5lcmF0ZWQiOiIwLjc5MTE2NDAwIDE2MzUxNzMyMTAifX0=', 202, 1635173280),
(10, 'galerija-7', 0, 1, 'galerija-7.jpg', '', 'galerija-7', '2021-10-25 14:46:50', 0, 0, 'eyJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJ3aWR0aCI6NjAxNiwiaGVpZ2h0Ijo0MDE2LCJzYXZlZCI6dHJ1ZSwiYmFja3VwIjp7ImZpbGVuYW1lIjoiZ2FsZXJpamEtNy5qcGciLCJ3aWR0aCI6NjAxNiwiaGVpZ2h0Ijo0MDE2LCJnZW5lcmF0ZWQiOiIwLjg4MDgwMTAwIDE2MzUxNzMyMTAifX0=', 205, 1635173281),
(11, 'galerija-9', 0, 1, 'galerija-9.jpg', '', 'galerija-9', '2021-10-25 14:46:50', 0, 0, 'eyJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJ3aWR0aCI6NTY2OCwiaGVpZ2h0IjozNzg0LCJzYXZlZCI6dHJ1ZSwiYmFja3VwIjp7ImZpbGVuYW1lIjoiZ2FsZXJpamEtOS5qcGciLCJ3aWR0aCI6NTY2OCwiaGVpZ2h0IjozNzg0LCJnZW5lcmF0ZWQiOiIwLjk2NDMzNjAwIDE2MzUxNzMyMTAifX0=', 204, 1635173281),
(12, 'galerija-12', 0, 1, 'galerija-12.jpg', '', 'galerija-12', '2021-10-25 14:46:50', 0, 0, 'eyJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJ3aWR0aCI6MTA4MCwiaGVpZ2h0IjoxMDgwLCJzYXZlZCI6dHJ1ZSwiYmFja3VwIjp7ImZpbGVuYW1lIjoiZ2FsZXJpamEtMTIuanBnIiwid2lkdGgiOjEwODAsImhlaWdodCI6MTA4MCwiZ2VuZXJhdGVkIjoiMC4xODM2OTQwMCAxNjM1MTczMjExIn19', 206, 1635173281),
(13, 'galerija-18', 0, 1, 'galerija-18.jpg', '', 'galerija-18', '2021-10-25 14:46:55', 0, 0, 'eyJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJ3aWR0aCI6ODI2LCJoZWlnaHQiOjExMDIsInNhdmVkIjp0cnVlLCJiYWNrdXAiOnsiZmlsZW5hbWUiOiJnYWxlcmlqYS0xOC5qcGciLCJ3aWR0aCI6ODI2LCJoZWlnaHQiOjExMDIsImdlbmVyYXRlZCI6IjAuOTQwMjg0MDAgMTYzNTE3MzIxNSJ9fQ==', 212, 1635173281),
(14, 'galerija-16', 0, 1, 'galerija-16.jpg', '', 'galerija-16', '2021-10-25 14:46:55', 0, 0, 'eyJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJ3aWR0aCI6MTUwNCwiaGVpZ2h0IjoyMDE1LCJzYXZlZCI6dHJ1ZSwiYmFja3VwIjp7ImZpbGVuYW1lIjoiZ2FsZXJpamEtMTYuanBnIiwid2lkdGgiOjE1MDQsImhlaWdodCI6MjAxNSwiZ2VuZXJhdGVkIjoiMC45MTA0NjEwMCAxNjM1MTczMjE1In19', 211, 1635173281),
(15, 'galerija-15', 0, 1, 'galerija-15.jpg', '', 'galerija-15', '2021-10-25 14:46:55', 0, 0, 'eyJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJ3aWR0aCI6MTI3NiwiaGVpZ2h0IjoyMDE1LCJzYXZlZCI6dHJ1ZSwiYmFja3VwIjp7ImZpbGVuYW1lIjoiZ2FsZXJpamEtMTUuanBnIiwid2lkdGgiOjEyNzYsImhlaWdodCI6MjAxNSwiZ2VuZXJhdGVkIjoiMC44OTM1NDEwMCAxNjM1MTczMjE1In19', 207, 1635173282),
(16, 'galerija-13', 0, 1, 'galerija-13.jpg', '', 'galerija-13', '2021-10-25 14:46:55', 0, 0, 'eyJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJ3aWR0aCI6MTUzNiwiaGVpZ2h0IjoyMDQ4LCJzYXZlZCI6dHJ1ZSwiYmFja3VwIjp7ImZpbGVuYW1lIjoiZ2FsZXJpamEtMTMuanBnIiwid2lkdGgiOjE1MzYsImhlaWdodCI6MjA0OCwiZ2VuZXJhdGVkIjoiMC45NDcwNzQwMCAxNjM1MTczMjE1In19', 210, 1635173282),
(17, 'galerija-14', 0, 1, 'galerija-14.jpg', '', 'galerija-14', '2021-10-25 14:46:55', 0, 0, 'eyJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJ3aWR0aCI6MTUwNCwiaGVpZ2h0IjoyMDE1LCJzYXZlZCI6dHJ1ZSwiYmFja3VwIjp7ImZpbGVuYW1lIjoiZ2FsZXJpamEtMTQuanBnIiwid2lkdGgiOjE1MDQsImhlaWdodCI6MjAxNSwiZ2VuZXJhdGVkIjoiMC45NjEyMjcwMCAxNjM1MTczMjE1In19', 208, 1635173283),
(18, 'galerija-17', 0, 1, 'galerija-17.jpg', '', 'galerija-17', '2021-10-25 14:46:55', 0, 0, 'eyJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJ3aWR0aCI6MTQwMywiaGVpZ2h0IjoyMDE1LCJzYXZlZCI6dHJ1ZSwiYmFja3VwIjp7ImZpbGVuYW1lIjoiZ2FsZXJpamEtMTcuanBnIiwid2lkdGgiOjE0MDMsImhlaWdodCI6MjAxNSwiZ2VuZXJhdGVkIjoiMC45MjMzNzkwMCAxNjM1MTczMjE1In19', 209, 1635173283),
(19, 'galerija-20', 0, 1, 'galerija-20.jpg', '', 'galerija-20', '2021-10-25 14:46:59', 0, 0, 'eyJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJ3aWR0aCI6NzIwLCJoZWlnaHQiOjk2MCwic2F2ZWQiOnRydWUsImJhY2t1cCI6eyJmaWxlbmFtZSI6ImdhbGVyaWphLTIwLmpwZyIsIndpZHRoIjo3MjAsImhlaWdodCI6OTYwLCJnZW5lcmF0ZWQiOiIwLjkwODk5MjAwIDE2MzUxNzMyMTkifX0=', 213, 1635173283);

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
(1, 'siteurl', 'http://localhost/NicoleNicole', 'yes'),
(2, 'home', 'http://localhost/NicoleNicole', 'yes'),
(3, 'blogname', 'NicoleNicole', 'yes'),
(4, 'blogdescription', 'Samo još jedna WordPress web-stranica', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'edunova@edunova.hr', 'yes'),
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
(23, 'date_format', 'j. F Y.', 'yes'),
(24, 'time_format', 'G:i', 'yes'),
(25, 'links_updated_date_format', 'j. F Y. G:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:173:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"tretmani/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"tretmani/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"tretmani/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"tretmani/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"tretmani/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"tretmani/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"tretmani/(.+?)/embed/?$\";s:41:\"index.php?tretmani=$matches[1]&embed=true\";s:27:\"tretmani/(.+?)/trackback/?$\";s:35:\"index.php?tretmani=$matches[1]&tb=1\";s:35:\"tretmani/(.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?tretmani=$matches[1]&paged=$matches[2]\";s:42:\"tretmani/(.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?tretmani=$matches[1]&cpage=$matches[2]\";s:31:\"tretmani/(.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?tretmani=$matches[1]&page=$matches[2]\";s:43:\"cjenik_naslovna/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:53:\"cjenik_naslovna/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:73:\"cjenik_naslovna/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"cjenik_naslovna/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"cjenik_naslovna/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:49:\"cjenik_naslovna/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"cjenik_naslovna/([^/]+)/embed/?$\";s:48:\"index.php?cjenik_naslovna=$matches[1]&embed=true\";s:36:\"cjenik_naslovna/([^/]+)/trackback/?$\";s:42:\"index.php?cjenik_naslovna=$matches[1]&tb=1\";s:44:\"cjenik_naslovna/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?cjenik_naslovna=$matches[1]&paged=$matches[2]\";s:51:\"cjenik_naslovna/([^/]+)/comment-page-([0-9]{1,})/?$\";s:55:\"index.php?cjenik_naslovna=$matches[1]&cpage=$matches[2]\";s:40:\"cjenik_naslovna/([^/]+)(?:/([0-9]+))?/?$\";s:54:\"index.php?cjenik_naslovna=$matches[1]&page=$matches[2]\";s:32:\"cjenik_naslovna/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"cjenik_naslovna/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"cjenik_naslovna/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"cjenik_naslovna/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"cjenik_naslovna/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"cjenik_naslovna/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"osvrti/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"osvrti/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"osvrti/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"osvrti/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"osvrti/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"osvrti/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"osvrti/([^/]+)/embed/?$\";s:39:\"index.php?osvrti=$matches[1]&embed=true\";s:27:\"osvrti/([^/]+)/trackback/?$\";s:33:\"index.php?osvrti=$matches[1]&tb=1\";s:35:\"osvrti/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?osvrti=$matches[1]&paged=$matches[2]\";s:42:\"osvrti/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?osvrti=$matches[1]&cpage=$matches[2]\";s:31:\"osvrti/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?osvrti=$matches[1]&page=$matches[2]\";s:23:\"osvrti/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"osvrti/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"osvrti/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"osvrti/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"osvrti/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"osvrti/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"sve_cijene/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"sve_cijene/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"sve_cijene/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"sve_cijene/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"sve_cijene/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"sve_cijene/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"sve_cijene/([^/]+)/embed/?$\";s:43:\"index.php?sve_cijene=$matches[1]&embed=true\";s:31:\"sve_cijene/([^/]+)/trackback/?$\";s:37:\"index.php?sve_cijene=$matches[1]&tb=1\";s:39:\"sve_cijene/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?sve_cijene=$matches[1]&paged=$matches[2]\";s:46:\"sve_cijene/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?sve_cijene=$matches[1]&cpage=$matches[2]\";s:35:\"sve_cijene/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?sve_cijene=$matches[1]&page=$matches[2]\";s:27:\"sve_cijene/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"sve_cijene/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"sve_cijene/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"sve_cijene/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"sve_cijene/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"sve_cijene/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:44:\"savjeti-naslovna/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:54:\"savjeti-naslovna/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:74:\"savjeti-naslovna/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"savjeti-naslovna/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"savjeti-naslovna/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:50:\"savjeti-naslovna/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"savjeti-naslovna/([^/]+)/embed/?$\";s:49:\"index.php?savjeti-naslovna=$matches[1]&embed=true\";s:37:\"savjeti-naslovna/([^/]+)/trackback/?$\";s:43:\"index.php?savjeti-naslovna=$matches[1]&tb=1\";s:45:\"savjeti-naslovna/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?savjeti-naslovna=$matches[1]&paged=$matches[2]\";s:52:\"savjeti-naslovna/([^/]+)/comment-page-([0-9]{1,})/?$\";s:56:\"index.php?savjeti-naslovna=$matches[1]&cpage=$matches[2]\";s:41:\"savjeti-naslovna/([^/]+)(?:/([0-9]+))?/?$\";s:55:\"index.php?savjeti-naslovna=$matches[1]&page=$matches[2]\";s:33:\"savjeti-naslovna/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"savjeti-naslovna/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"savjeti-naslovna/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"savjeti-naslovna/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"savjeti-naslovna/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"savjeti-naslovna/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:2;s:23:\"ml-slider/ml-slider.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'nicolenicole', 'yes'),
(41, 'stylesheet', 'nicolenicole', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
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
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'Europe/Zagreb', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1650525068', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'hr', 'yes'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:153:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Nove objave</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:231:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Najnoviji komentari</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:144:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Arhiva</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Kategorije</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:8:{i:1636017081;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1636053081;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1636096280;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1636096295;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1636096300;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1636269080;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1636383302;a:1:{s:28:\"ml-slider_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1634974914;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(122, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:26:\"SSL provjera nije uspjela.\";}}', 'yes'),
(139, 'can_compress_scripts', '1', 'no'),
(148, 'dismissed_update_core', 'a:1:{s:8:\"5.8.1|hr\";b:1;}', 'no'),
(149, 'recently_activated', 'a:2:{s:29:\"nextgen-gallery/nggallery.php\";i:1635173512;s:25:\"foogallery/foogallery.php\";i:1635172414;}', 'yes'),
(151, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:18:\"edunova@edunova.hr\";s:7:\"version\";s:5:\"5.8.1\";s:9:\"timestamp\";i:1634973153;}', 'no'),
(154, 'finished_updating_comment_type', '1', 'yes'),
(155, 'current_theme', 'NicoleNicole W29', 'yes'),
(156, 'theme_mods_nicolenicole', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(157, 'theme_switched', '', 'yes'),
(159, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(160, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(181, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(196, 'cptui_new_install', 'false', 'yes'),
(199, 'acf_version', '5.10.2', 'yes'),
(214, 'cptui_post_types', 'a:5:{s:8:\"tretmani\";a:30:{s:4:\"name\";s:8:\"tretmani\";s:5:\"label\";s:8:\"Tretmani\";s:14:\"singular_label\";s:7:\"tretman\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:4:\"true\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:15:\"cjenik_naslovna\";a:30:{s:4:\"name\";s:15:\"cjenik_naslovna\";s:5:\"label\";s:17:\"Istaknuti cjenici\";s:14:\"singular_label\";s:16:\"Istaknuti cjenik\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:6:\"osvrti\";a:30:{s:4:\"name\";s:6:\"osvrti\";s:5:\"label\";s:6:\"Osvrti\";s:14:\"singular_label\";s:5:\"Osvrt\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:10:\"sve_cijene\";a:30:{s:4:\"name\";s:10:\"sve_cijene\";s:5:\"label\";s:6:\"Cijene\";s:14:\"singular_label\";s:6:\"Cijena\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:16:\"savjeti-naslovna\";a:30:{s:4:\"name\";s:16:\"savjeti-naslovna\";s:5:\"label\";s:7:\"Savjeti\";s:14:\"singular_label\";s:6:\"Savjet\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:5:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";i:3;s:7:\"excerpt\";i:4;s:6:\"author\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes'),
(259, '_transient_health-check-site-status-result', '{\"good\":14,\"recommended\":4,\"critical\":1}', 'yes'),
(268, 'cptui_taxonomies', 'a:0:{}', 'yes'),
(280, 'tretmani_naslovna_children', 'a:0:{}', 'yes'),
(341, 'category_children', 'a:0:{}', 'yes'),
(351, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:62:\"https://downloads.wordpress.org/release/hr/wordpress-5.8.1.zip\";s:6:\"locale\";s:2:\"hr\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:62:\"https://downloads.wordpress.org/release/hr/wordpress-5.8.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.1\";s:7:\"version\";s:5:\"5.8.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1636016870;s:15:\"version_checked\";s:5:\"5.8.1\";s:12:\"translations\";a:0:{}}', 'no'),
(353, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1636016872;s:7:\"checked\";a:1:{s:12:\"nicolenicole\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(356, 'widget_ngg-images', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(357, 'widget_ngg-mrssw', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(358, 'widget_slideshow', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(359, 'ngg_transient_groups', 'a:7:{s:9:\"__counter\";i:7;s:16:\"WordPress-Router\";a:2:{s:2:\"id\";i:2;s:7:\"enabled\";b:1;}s:15:\"col_in_wp_posts\";a:2:{s:2:\"id\";i:3;s:7:\"enabled\";b:1;}s:21:\"col_in_wp_ngg_gallery\";a:2:{s:2:\"id\";i:4;s:7:\"enabled\";b:1;}s:22:\"col_in_wp_ngg_pictures\";a:2:{s:2:\"id\";i:5;s:7:\"enabled\";b:1;}s:19:\"col_in_wp_ngg_album\";a:2:{s:2:\"id\";i:6;s:7:\"enabled\";b:1;}s:27:\"displayed_gallery_rendering\";a:2:{s:2:\"id\";i:7;s:7:\"enabled\";b:1;}}', 'yes'),
(362, 'ngg_options', 'a:74:{s:11:\"gallerypath\";s:19:\"wp-content\\gallery\\\";s:9:\"deleteImg\";b:1;s:13:\"usePermalinks\";b:0;s:13:\"permalinkSlug\";s:9:\"nggallery\";s:14:\"graphicLibrary\";s:2:\"gd\";s:11:\"useMediaRSS\";b:0;s:18:\"galleries_in_feeds\";b:0;s:12:\"activateTags\";i:0;s:10:\"appendType\";s:4:\"tags\";s:9:\"maxImages\";i:7;s:14:\"relatedHeading\";s:24:\"<h3>Related Images:</h3>\";s:10:\"thumbwidth\";i:240;s:11:\"thumbheight\";i:160;s:8:\"thumbfix\";b:1;s:12:\"thumbquality\";i:100;s:8:\"imgWidth\";i:1800;s:9:\"imgHeight\";i:1200;s:10:\"imgQuality\";i:100;s:9:\"imgBackup\";b:1;s:13:\"imgAutoResize\";b:1;s:9:\"galImages\";s:2:\"24\";s:17:\"galPagedGalleries\";i:0;s:10:\"galColumns\";i:0;s:12:\"galShowSlide\";b:0;s:12:\"galTextSlide\";s:14:\"View Slideshow\";s:14:\"galTextGallery\";s:15:\"View Thumbnails\";s:12:\"galShowOrder\";s:7:\"gallery\";s:7:\"galSort\";s:9:\"sortorder\";s:10:\"galSortDir\";s:3:\"ASC\";s:10:\"galNoPages\";b:1;s:13:\"galImgBrowser\";i:0;s:12:\"galHiddenImg\";i:0;s:10:\"galAjaxNav\";i:1;s:11:\"thumbEffect\";s:14:\"simplelightbox\";s:9:\"thumbCode\";s:47:\"class=\"ngg-simplelightbox\" rel=\"%GALLERY_NAME%\"\";s:18:\"thumbEffectContext\";s:14:\"nextgen_images\";s:33:\"watermark_automatically_at_upload\";i:0;s:5:\"wmPos\";s:9:\"midCenter\";s:6:\"wmXpos\";i:15;s:6:\"wmYpos\";i:5;s:6:\"wmType\";s:4:\"text\";s:6:\"wmPath\";s:0:\"\";s:6:\"wmFont\";s:9:\"arial.ttf\";s:6:\"wmSize\";i:30;s:6:\"wmText\";s:12:\"NicoleNicole\";s:7:\"wmColor\";s:6:\"ffffff\";s:8:\"wmOpaque\";s:2:\"33\";s:7:\"slideFX\";s:4:\"fade\";s:7:\"irWidth\";i:750;s:8:\"irHeight\";i:500;s:12:\"irRotatetime\";i:5;s:11:\"activateCSS\";i:1;s:7:\"CSSfile\";s:13:\"nggallery.css\";s:28:\"always_enable_frontend_logic\";b:0;s:27:\"use_alternate_random_method\";b:0;s:19:\"disable_fontawesome\";b:0;s:21:\"disable_ngg_tags_page\";b:0;s:23:\"random_widget_cache_ttl\";i:30;s:22:\"router_param_separator\";s:2:\"--\";s:19:\"router_param_prefix\";s:0:\"\";s:17:\"router_param_slug\";s:9:\"nggallery\";s:11:\"wpmuCSSfile\";s:13:\"nggallery.css\";s:9:\"wpmuStyle\";b:0;s:9:\"wpmuRoles\";b:0;s:16:\"wpmuImportFolder\";b:0;s:13:\"wpmuZipUpload\";b:0;s:14:\"wpmuQuotaCheck\";b:0;s:17:\"datamapper_driver\";s:22:\"custom_post_datamapper\";s:20:\"maximum_entity_count\";i:500;s:22:\"dynamic_thumbnail_slug\";s:13:\"nextgen-image\";s:23:\"dynamic_stylesheet_slug\";s:12:\"nextgen-dcss\";s:11:\"installDate\";i:1635170695;s:13:\"gallery_count\";i:1;s:40:\"gallery_created_after_reviews_introduced\";b:1;}', 'yes'),
(364, 'photocrati_auto_update_admin_update_list', '', 'yes'),
(365, 'photocrati_auto_update_admin_check_date', '', 'yes'),
(366, 'ngg_db_version', '1.8.1', 'yes'),
(384, 'fs_active_plugins', 'O:8:\"stdClass\":0:{}', 'yes'),
(385, 'fs_debug_mode', '', 'yes'),
(386, 'fs_accounts', 'a:6:{s:21:\"id_slug_type_path_map\";a:1:{i:843;a:3:{s:4:\"slug\";s:10:\"foogallery\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:25:\"foogallery/foogallery.php\";}}s:11:\"plugin_data\";a:1:{s:10:\"foogallery\";a:18:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:25:\"foogallery/foogallery.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1635172035;s:17:\"was_plugin_loaded\";b:1;s:21:\"is_plugin_new_install\";b:1;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.4.2\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:6:\"2.1.18\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:9:\"localhost\";s:9:\"server_ip\";s:3:\"::1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1635172035;s:7:\"version\";s:6:\"2.1.18\";}s:15:\"prev_is_premium\";b:0;s:12:\"is_anonymous\";a:3:{s:2:\"is\";b:1;s:9:\"timestamp\";i:1635172067;s:7:\"version\";s:6:\"2.1.18\";}s:21:\"is_pending_activation\";b:1;s:16:\"uninstall_reason\";O:8:\"stdClass\":3:{s:2:\"id\";s:2:\"14\";s:4:\"info\";s:0:\"\";s:12:\"is_anonymous\";b:0;}}}s:13:\"file_slug_map\";a:1:{s:25:\"foogallery/foogallery.php\";s:10:\"foogallery\";}s:7:\"plugins\";a:1:{s:10:\"foogallery\";O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:10:\"FooGallery\";s:4:\"slug\";s:10:\"foogallery\";s:12:\"premium_slug\";s:18:\"foogallery-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";b:0;s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:25:\"foogallery/foogallery.php\";s:7:\"version\";s:6:\"2.1.18\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_d87616455a835af1d0658699d0192\";s:10:\"secret_key\";N;s:2:\"id\";s:3:\"843\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:9:\"unique_id\";s:32:\"9692bfa915fa84d0abee579d2bbd95f8\";s:13:\"admin_notices\";a:1:{s:10:\"foogallery\";a:0:{}}}', 'yes'),
(387, 'fs_gdpr', 'a:1:{s:2:\"u1\";a:1:{s:8:\"required\";b:0;}}', 'yes'),
(388, 'fs_api_cache', 'a:0:{}', 'no'),
(391, 'foogallery_extensions_auto_activated', '1', 'yes'),
(394, 'foogallery-version', '2.1.18', 'no'),
(395, 'widget_foogallery_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(396, 'foogallery-thumb-test', 'a:2:{s:3:\"key\";s:41:\"php$(8.0.7}-http://localhost/NicoleNicole\";s:7:\"results\";a:4:{s:7:\"success\";b:0;s:5:\"thumb\";s:70:\"http://localhost/NicoleNicole/wp-content/uploads/2021/10/flaticon1.png\";s:5:\"error\";O:8:\"WP_Error\":3:{s:6:\"errors\";a:1:{s:15:\"image_no_editor\";a:1:{i:0;s:35:\"Uređivač nije mogao biti odabran.\";}}s:10:\"error_data\";a:0:{}s:18:\"\0*\0additional_data\";a:0:{}}s:9:\"file_info\";a:2:{s:3:\"ext\";s:3:\"png\";s:4:\"type\";s:9:\"image/png\";}}}', 'yes'),
(399, 'new_admin_email', 'barbarafriscic93@gmail.com', 'yes'),
(400, 'adminhash', 'a:2:{s:4:\"hash\";s:32:\"17997c283ce8862c4ef043cbb44b03c6\";s:8:\"newemail\";s:26:\"barbarafriscic93@gmail.com\";}', 'yes'),
(429, 'widget_metaslider_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(430, 'ms_hide_all_ads_until', '1636383296', 'yes'),
(431, 'metaslider_systemcheck', 'a:1:{s:16:\"wordPressVersion\";b:0;}', 'no'),
(432, 'metaslider_optin_via', 'modal', 'yes'),
(433, 'metaslider_global_settings', 'a:1:{s:5:\"optIn\";i:1;}', 'yes'),
(434, 'metaslider_optin_user_extras', 'a:4:{s:2:\"id\";i:1;s:5:\"email\";s:18:\"edunova@edunova.hr\";s:2:\"ip\";s:3:\"::1\";s:4:\"time\";i:1635173702;}', 'yes'),
(435, 'ml-slider_allow_tracking', 'yes', 'yes'),
(436, 'ml-slider_tracking_notice', 'hide', 'yes'),
(437, 'ml-slider_tracking_last_send', '1635173703', 'yes'),
(439, 'metagallery_opened', '1', 'yes'),
(476, '_site_transient_timeout_theme_roots', '1636018671', 'no'),
(477, '_site_transient_theme_roots', 'a:1:{s:12:\"nicolenicole\";s:7:\"/themes\";}', 'no'),
(478, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1636016872;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.2.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.2.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:5:\"5.8.1\";s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.10.2\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.10.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:6:\"1.10.0\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.10.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=2549362\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=2549362\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=2549362\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=2549362\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.5\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:23:\"ml-slider/ml-slider.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:23:\"w.org/plugins/ml-slider\";s:4:\"slug\";s:9:\"ml-slider\";s:6:\"plugin\";s:23:\"ml-slider/ml-slider.php\";s:11:\"new_version\";s:6:\"3.23.0\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/ml-slider/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/ml-slider.3.23.0.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:62:\"https://ps.w.org/ml-slider/assets/icon-256x256.png?rev=2370840\";s:2:\"1x\";s:54:\"https://ps.w.org/ml-slider/assets/icon.svg?rev=1837669\";s:3:\"svg\";s:54:\"https://ps.w.org/ml-slider/assets/icon.svg?rev=1837669\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/ml-slider/assets/banner-1544x500.png?rev=1837669\";s:2:\"1x\";s:64:\"https://ps.w.org/ml-slider/assets/banner-772x250.png?rev=2370840\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.5\";}s:29:\"nextgen-gallery/nggallery.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:29:\"w.org/plugins/nextgen-gallery\";s:4:\"slug\";s:15:\"nextgen-gallery\";s:6:\"plugin\";s:29:\"nextgen-gallery/nggallery.php\";s:11:\"new_version\";s:4:\"3.17\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/nextgen-gallery/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/nextgen-gallery.3.17.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/nextgen-gallery/assets/icon-256x256.png?rev=2083961\";s:2:\"1x\";s:68:\"https://ps.w.org/nextgen-gallery/assets/icon-128x128.png?rev=2083961\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/nextgen-gallery/assets/banner-1544x500.png?rev=2083961\";s:2:\"1x\";s:70:\"https://ps.w.org/nextgen-gallery/assets/banner-772x250.png?rev=2083961\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"5.5.4\";}}s:7:\"checked\";a:6:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"5.10.2\";s:19:\"akismet/akismet.php\";s:6:\"4.1.10\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:6:\"1.10.0\";s:9:\"hello.php\";s:5:\"1.7.2\";s:23:\"ml-slider/ml-slider.php\";s:6:\"3.23.0\";s:29:\"nextgen-gallery/nggallery.php\";s:4:\"3.17\";}}', 'no'),
(479, '_site_transient_timeout_php_check_dcf448a31f072675e98776ba60f55c18', '1636621677', 'no'),
(480, '_site_transient_php_check_dcf448a31f072675e98776ba60f55c18', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(19, 2, '_wp_trash_meta_status', 'publish'),
(20, 2, '_wp_trash_meta_time', '1634991593'),
(21, 2, '_wp_desired_post_slug', 'primjer-stranice'),
(22, 3, '_wp_trash_meta_status', 'draft'),
(23, 3, '_wp_trash_meta_time', '1634991598'),
(24, 3, '_wp_desired_post_slug', 'pravila-privatnosti'),
(25, 17, '_edit_lock', '1634991497:1'),
(26, 19, '_edit_lock', '1635170375:1'),
(27, 21, '_edit_lock', '1634991525:1'),
(28, 23, '_edit_lock', '1635145120:1'),
(29, 25, '_edit_lock', '1635174635:1'),
(30, 27, '_edit_lock', '1634991589:1'),
(31, 29, '_edit_lock', '1635170567:1'),
(32, 31, '_menu_item_type', 'post_type'),
(33, 31, '_menu_item_menu_item_parent', '0'),
(34, 31, '_menu_item_object_id', '29'),
(35, 31, '_menu_item_object', 'page'),
(36, 31, '_menu_item_target', ''),
(37, 31, '_menu_item_classes', 'a:1:{i:0;s:8:\"nav-item\";}'),
(38, 31, '_menu_item_xfn', ''),
(39, 31, '_menu_item_url', ''),
(41, 32, '_menu_item_type', 'post_type'),
(42, 32, '_menu_item_menu_item_parent', '0'),
(43, 32, '_menu_item_object_id', '27'),
(44, 32, '_menu_item_object', 'page'),
(45, 32, '_menu_item_target', ''),
(46, 32, '_menu_item_classes', 'a:1:{i:0;s:8:\"nav-item\";}'),
(47, 32, '_menu_item_xfn', ''),
(48, 32, '_menu_item_url', ''),
(50, 33, '_menu_item_type', 'post_type'),
(51, 33, '_menu_item_menu_item_parent', '0'),
(52, 33, '_menu_item_object_id', '25'),
(53, 33, '_menu_item_object', 'page'),
(54, 33, '_menu_item_target', ''),
(55, 33, '_menu_item_classes', 'a:1:{i:0;s:8:\"nav-item\";}'),
(56, 33, '_menu_item_xfn', ''),
(57, 33, '_menu_item_url', ''),
(59, 34, '_menu_item_type', 'post_type'),
(60, 34, '_menu_item_menu_item_parent', '0'),
(61, 34, '_menu_item_object_id', '23'),
(62, 34, '_menu_item_object', 'page'),
(63, 34, '_menu_item_target', ''),
(64, 34, '_menu_item_classes', 'a:1:{i:0;s:8:\"nav-item\";}'),
(65, 34, '_menu_item_xfn', ''),
(66, 34, '_menu_item_url', ''),
(68, 35, '_menu_item_type', 'post_type'),
(69, 35, '_menu_item_menu_item_parent', '0'),
(70, 35, '_menu_item_object_id', '21'),
(71, 35, '_menu_item_object', 'page'),
(72, 35, '_menu_item_target', ''),
(73, 35, '_menu_item_classes', 'a:1:{i:0;s:8:\"nav-item\";}'),
(74, 35, '_menu_item_xfn', ''),
(75, 35, '_menu_item_url', ''),
(77, 36, '_menu_item_type', 'post_type'),
(78, 36, '_menu_item_menu_item_parent', '0'),
(79, 36, '_menu_item_object_id', '19'),
(80, 36, '_menu_item_object', 'page'),
(81, 36, '_menu_item_target', ''),
(82, 36, '_menu_item_classes', 'a:1:{i:0;s:8:\"nav-item\";}'),
(83, 36, '_menu_item_xfn', ''),
(84, 36, '_menu_item_url', ''),
(95, 38, '_edit_lock', '1634998381:1'),
(98, 1, '_wp_trash_meta_status', 'publish'),
(99, 1, '_wp_trash_meta_time', '1634998551'),
(100, 1, '_wp_desired_post_slug', 'dan-svijete'),
(101, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(102, 43, '_edit_lock', '1635000419:1'),
(104, 45, '_edit_last', '1'),
(105, 45, '_edit_lock', '1635168318:1'),
(107, 43, '_edit_last', '1'),
(109, 43, 'podnaslov', 'Tko smo mi'),
(110, 43, '_podnaslov', 'field_61741e69440be'),
(111, 47, 'podnaslov', 'Tko smo mi'),
(112, 47, '_podnaslov', 'field_61741e69440be'),
(114, 50, 'podnaslov', 'Tko smo mi'),
(115, 50, '_podnaslov', 'field_61741e69440be'),
(116, 51, '_edit_lock', '1635006095:1'),
(118, 51, '_edit_last', '1'),
(120, 51, 'podnaslov', 'Istaknute usluge'),
(121, 51, '_podnaslov', 'field_61741e69440be'),
(122, 53, 'podnaslov', 'Istaknute usluge'),
(123, 53, '_podnaslov', 'field_61741e69440be'),
(125, 55, 'podnaslov', 'Istaknute usluge'),
(126, 55, '_podnaslov', 'field_61741e69440be'),
(127, 56, '_edit_lock', '1635006104:1'),
(129, 56, '_edit_last', '1'),
(130, 56, '_encloseme', '1'),
(131, 56, 'podnaslov', ''),
(132, 56, '_podnaslov', 'field_61741e69440be'),
(133, 57, 'podnaslov', ''),
(134, 57, '_podnaslov', 'field_61741e69440be'),
(136, 59, '_edit_lock', '1635008414:1'),
(137, 60, '_edit_lock', '1635008434:1'),
(138, 61, '_edit_lock', '1635008454:1'),
(139, 62, '_edit_lock', '1635011500:1'),
(140, 63, '_edit_last', '1'),
(141, 63, '_edit_lock', '1635084634:1'),
(142, 72, '_edit_lock', '1635063373:1'),
(143, 72, '_edit_last', '1'),
(144, 72, 'naslov_1', 'Rješavanje masnoće vlasišta'),
(145, 72, '_naslov_1', 'field_61743f58fe8ce'),
(146, 72, 'naslov_2', 'Tretman za rast kose'),
(147, 72, '_naslov_2', 'field_61743f8ffe8cf'),
(148, 72, 'naslov_3', 'Tretman za osjetljivo vlasište'),
(149, 72, '_naslov_3', 'field_61743f9bfe8d0'),
(150, 72, 'naslov_4', 'Rješavanje prhuti'),
(151, 72, '_naslov_4', 'field_61743fa1fe8d1'),
(152, 72, 'sadrzaj_1', 'Tretman uključuje piling i glinu koja apsorbira višak sebuma i nečistoća te uklanja toksine i neugodan miris vlasišta. Kako bi se došlo do rezultatat, tretman se isprva treba ponavljati više puta tijekom 4 do 5 tjedana.  '),
(153, 72, '_sadrzaj_1', 'field_61743faafe8d2'),
(154, 72, 'sadrzaj_2', 'Na bazi zelene kave i metvice koja će osvježiti vlasište i obnoviti ga.\r\nOvaj tretman dodatno podupiremo tretmanima kisikom koji su izvrsni za buđenje korijena kose djelujući na probleme vlasišta.'),
(155, 72, '_sadrzaj_2', 'field_61743fb8fe8d3'),
(156, 72, 'sadrzaj_3', 'Osjetljiva je koža često podložna nelagodi i iritacijama. Proizvodima na bazi komorača i amarantha nježno čistimo vlasište bez iritacije kože. Umirujuće djelovanje vraća vlasište u prirodno stanje.'),
(157, 72, '_sadrzaj_3', 'field_61743fbffe8d4'),
(158, 72, 'sadrzaj_4', 'Linija na bazi ružmarina i timijana uklanja masnu i suhu prhut te ponovno aktivira mikro-cirkulaciju vlasišta.Ekstrakt vrbe djeluje umirujuće na vlasište te smanjuje svrbež i iritacije.'),
(159, 72, '_sadrzaj_4', 'field_61743fc6fe8d5'),
(160, 51, '_wp_trash_meta_status', 'publish'),
(161, 51, '_wp_trash_meta_time', '1635011337'),
(162, 51, '_wp_desired_post_slug', 'za-zdravlje-vase-kose'),
(163, 56, '_wp_trash_meta_status', 'publish'),
(164, 56, '_wp_trash_meta_time', '1635011341'),
(165, 56, '_wp_desired_post_slug', 'rjesavanje-masnoce-vlasista'),
(166, 62, '_wp_trash_meta_status', 'publish'),
(167, 62, '_wp_trash_meta_time', '1635011356'),
(168, 62, '_wp_desired_post_slug', 'rjesavanje-prhuti'),
(169, 61, '_wp_trash_meta_status', 'publish'),
(170, 61, '_wp_trash_meta_time', '1635011356'),
(171, 61, '_wp_desired_post_slug', 'tretman-za-osjetljivo-vlasiste'),
(172, 60, '_wp_trash_meta_status', 'publish'),
(173, 60, '_wp_trash_meta_time', '1635011356'),
(174, 60, '_wp_desired_post_slug', 'tretman-za-rast-kose'),
(175, 59, '_wp_trash_meta_status', 'publish'),
(176, 59, '_wp_trash_meta_time', '1635011357'),
(177, 59, '_wp_desired_post_slug', 'rjesavanje-masnoce-vlasista'),
(178, 74, '_edit_lock', '1635012419:1'),
(180, 74, '_edit_last', '1'),
(182, 74, 'podnaslov', ' Ugrabi popust'),
(183, 74, '_podnaslov', 'field_61741e69440be'),
(184, 74, 'span', '30% '),
(185, 74, '_span', 'field_61744aee96695'),
(186, 76, 'podnaslov', 'Ugrabi popust'),
(187, 76, '_podnaslov', 'field_61741e69440be'),
(188, 76, 'span', '30%'),
(189, 76, '_span', 'field_61744aee96695'),
(191, 77, 'podnaslov', ' Ugrabi popust'),
(192, 77, '_podnaslov', 'field_61741e69440be'),
(193, 77, 'span', '30% '),
(194, 77, '_span', 'field_61744aee96695'),
(195, 79, '_edit_last', '1'),
(196, 79, '_edit_lock', '1635103887:1'),
(197, 83, '_edit_lock', '1635085070:1'),
(198, 84, '_edit_last', '1'),
(199, 84, '_edit_lock', '1635085020:1'),
(200, 83, '_edit_last', '1'),
(201, 83, 'podnaslov', 'Osvrti'),
(202, 83, '_podnaslov', 'field_61745a3558529'),
(203, 83, 'naslov', 'Što kažu naši klijenti'),
(204, 83, '_naslov', 'field_61745a415852a'),
(205, 83, 'osvrt_1', '\"Predivno i ugodno mjesto, s obzirom na to da sam aromaterapeut obožavam mjesta gdje se koriste eterična ulja jer znam koliko znače za dobrobit organizma. Otići na frizuru u Nicole-Nicole je uživancija na puno razina.\"'),
(206, 83, '_osvrt_1', 'field_61745a485852b'),
(207, 83, 'osvrt_2', '\"Moj odlazak frizeru već odavno nije samo šišanje, a zadnjih par puta dobio je još jednu novu dimenziju jer je postao predivni rasadnik sinkroniciteta i sudbonosnoh susreta! Draga Suza, tako te bilo lijepo vidjeti i zagrliti danas! Istinski sam se razveselila! Draga Nikolina, hvala ti što tako majstorski ubodeš pravi termin za mene :)\"'),
(208, 83, '_osvrt_2', 'field_61745a5c5852c'),
(209, 83, 'osvrt_3', '\"Žena s velikim srcem koja ljubav pretače u posao koji voli, Nicole-Nicole.\"'),
(210, 83, '_osvrt_3', 'field_61745a645852d'),
(211, 83, 'osvrt_4', '\"Jedino mjesto gdje sam kao doma. Više ne odlazim u salone gdje je glasno tračanje, slušanje neke glazbe koja mi para uši i sl. Ovaj balans glazbe i ugodnih mirisa je opuštajuć nakon stresnog dana!\"'),
(212, 83, '_osvrt_4', 'field_61745a665852e'),
(213, 83, 'klijent_1', 'Tajana Varićak'),
(214, 83, '_klijent_1', 'field_61745a6f5852f'),
(215, 83, 'klijent_2', 'Ljiljana Marjanović'),
(216, 83, '_klijent_2', 'field_61745a7d58530'),
(217, 83, 'klijent_3', 'Gordana Horvat'),
(218, 83, '_klijent_3', 'field_61745a8858531'),
(219, 83, 'klijent_4', 'Ivana'),
(220, 83, '_klijent_4', 'field_61745a8e58532'),
(221, 95, '_edit_last', '1'),
(222, 95, '_edit_lock', '1635194883:1'),
(223, 110, '_edit_lock', '1635086228:1'),
(224, 110, '_edit_last', '1'),
(225, 110, 'podnaslov', 'Savjeti'),
(226, 110, '_podnaslov', 'field_61745efaf5d55'),
(227, 110, 'naslov', 'Savjeti za njegu kose i lica'),
(228, 110, '_naslov', 'field_61745f05f5d56'),
(229, 110, 'savjet_1', 'Za kosu se često kaže da je pokazatelj zdravlja. Ukoliko izgleda beživotno i pojačano opada te se osjećate umorno, možda bi bilo dobro napraviti krvni sliku jer je možda riječ o manjku određenih mikronutrijenata.'),
(230, 110, '_savjet_1', 'field_61745f0bf5d57'),
(231, 110, 'savjet_2', 'Većina žena koje žele pospješiti rast i poboljšati zdravlje svoje kose posežu za raznim vitaminima i tretmanima zaboravljajući na jednu jako važnu stavku, a to je prehrana.'),
(232, 110, '_savjet_2', 'field_61745f3ef5d59'),
(233, 110, 'savjet_3', 'Puštate kosu, a čini vam se da ona stoji na mjestu? Jeste li pogledali svoje vrhove? Ako su ispucani, listaju se te će zbog toga utjecati na rast kose.'),
(234, 110, '_savjet_3', 'field_61745f20f5d58'),
(235, 110, 'savjet_4', 'Vlasište vas svrbi, osjećate da vas zateže i iritira? Zasigurno je riječ o osjetljivom vlasištu. Češće se pojavljuje zimi jer se više vremena provodi u zatvorenim prostorima čiji je zrak najčešće suh zbog grijanja.'),
(236, 110, '_savjet_4', 'field_61745f95f5d5a'),
(237, 110, 'savjet_5', 'Nakon što izađete iz frizerskog salona s novom frizurom zasigurno pomislite na održavanje frizure kod kuće. Vaš frizer bi vam uvijek trebao dati savjet kako na pravilan način održavati frizuru. '),
(238, 110, '_savjet_5', 'field_61745f9cf5d5b'),
(239, 110, 'savjet_6', 'Skup šampon ne znači nužno da je dobar za Vašu kosu! Prije kupnje šampona važno je konzultirati se s frizerom kako bi se odredio Vaš tip kose. Tek nakon što utvrdi Vaš tip kose, frizer će preporučiti odgovarajući šampon.'),
(240, 110, '_savjet_6', 'field_61745fa0f5d5c'),
(241, 110, 'savjet_1_naslov', 'Beživotna kosa i opadanje'),
(242, 110, '_savjet_1_naslov', 'field_61745fcaf5d5d'),
(243, 110, 'savjet_2_naslov', 'Prehrana za rast kose'),
(244, 110, '_savjet_2_naslov', 'field_61745fdff5d5e'),
(245, 110, 'savjet_3_naslov', 'Ispucani vrhovi'),
(246, 110, '_savjet_3_naslov', 'field_61745feef5d5f'),
(247, 110, 'savjet_4_naslov', 'Osjetljivo vlasište'),
(248, 110, '_savjet_4_naslov', 'field_61745ffcf5d60'),
(249, 110, 'savjet_5_naslov', 'Održavanje frizure'),
(250, 110, '_savjet_5_naslov', 'field_61746007f5d61'),
(251, 110, 'savjet_6_naslov', 'Odabir šampona'),
(252, 110, '_savjet_6_naslov', 'field_61746019f5d62'),
(253, 111, '_edit_lock', '1635077114:1'),
(254, 113, '_wp_attached_file', '2021/10/flaticon1.png'),
(255, 113, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:64;s:6:\"height\";i:64;s:4:\"file\";s:21:\"2021/10/flaticon1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(257, 111, '_edit_last', '1'),
(258, 111, 'naslov_1', ''),
(259, 111, '_naslov_1', 'field_61743f58fe8ce'),
(260, 111, 'naslov_2', ''),
(261, 111, '_naslov_2', 'field_61743f8ffe8cf'),
(262, 111, 'naslov_3', ''),
(263, 111, '_naslov_3', 'field_61743f9bfe8d0'),
(264, 111, 'naslov_4', ''),
(265, 111, '_naslov_4', 'field_61743fa1fe8d1'),
(266, 111, 'sadrzaj_1', ''),
(267, 111, '_sadrzaj_1', 'field_61743faafe8d2'),
(268, 111, 'sadrzaj_2', ''),
(269, 111, '_sadrzaj_2', 'field_61743fb8fe8d3'),
(270, 111, 'sadrzaj_3', ''),
(271, 111, '_sadrzaj_3', 'field_61743fbffe8d4'),
(272, 111, 'sadrzaj_4', ''),
(273, 111, '_sadrzaj_4', 'field_61743fc6fe8d5'),
(274, 114, '_edit_lock', '1635084592:1'),
(275, 115, '_wp_attached_file', '2021/10/flaticon.png'),
(276, 115, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:64;s:6:\"height\";i:64;s:4:\"file\";s:20:\"2021/10/flaticon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(278, 114, '_edit_last', '1'),
(279, 114, 'naslov_1', ''),
(280, 114, '_naslov_1', 'field_61743f58fe8ce'),
(281, 114, 'naslov_2', ''),
(282, 114, '_naslov_2', 'field_61743f8ffe8cf'),
(283, 114, 'naslov_3', ''),
(284, 114, '_naslov_3', 'field_61743f9bfe8d0'),
(285, 114, 'naslov_4', ''),
(286, 114, '_naslov_4', 'field_61743fa1fe8d1'),
(287, 114, 'sadrzaj_1', ''),
(288, 114, '_sadrzaj_1', 'field_61743faafe8d2'),
(289, 114, 'sadrzaj_2', ''),
(290, 114, '_sadrzaj_2', 'field_61743fb8fe8d3'),
(291, 114, 'sadrzaj_3', ''),
(292, 114, '_sadrzaj_3', 'field_61743fbffe8d4'),
(293, 114, 'sadrzaj_4', ''),
(294, 114, '_sadrzaj_4', 'field_61743fc6fe8d5'),
(295, 116, '_edit_lock', '1635077142:1'),
(297, 116, '_edit_last', '1'),
(298, 116, 'naslov_1', ''),
(299, 116, '_naslov_1', 'field_61743f58fe8ce'),
(300, 116, 'naslov_2', ''),
(301, 116, '_naslov_2', 'field_61743f8ffe8cf'),
(302, 116, 'naslov_3', ''),
(303, 116, '_naslov_3', 'field_61743f9bfe8d0'),
(304, 116, 'naslov_4', ''),
(305, 116, '_naslov_4', 'field_61743fa1fe8d1'),
(306, 116, 'sadrzaj_1', ''),
(307, 116, '_sadrzaj_1', 'field_61743faafe8d2'),
(308, 116, 'sadrzaj_2', ''),
(309, 116, '_sadrzaj_2', 'field_61743fb8fe8d3'),
(310, 116, 'sadrzaj_3', ''),
(311, 116, '_sadrzaj_3', 'field_61743fbffe8d4'),
(312, 116, 'sadrzaj_4', ''),
(313, 116, '_sadrzaj_4', 'field_61743fc6fe8d5'),
(314, 117, '_edit_lock', '1635098877:1'),
(316, 117, '_edit_last', '1'),
(317, 117, 'naslov_1', ''),
(318, 117, '_naslov_1', 'field_61743f58fe8ce'),
(319, 117, 'naslov_2', ''),
(320, 117, '_naslov_2', 'field_61743f8ffe8cf'),
(321, 117, 'naslov_3', ''),
(322, 117, '_naslov_3', 'field_61743f9bfe8d0'),
(323, 117, 'naslov_4', ''),
(324, 117, '_naslov_4', 'field_61743fa1fe8d1'),
(325, 117, 'sadrzaj_1', ''),
(326, 117, '_sadrzaj_1', 'field_61743faafe8d2'),
(327, 117, 'sadrzaj_2', ''),
(328, 117, '_sadrzaj_2', 'field_61743fb8fe8d3'),
(329, 117, 'sadrzaj_3', ''),
(330, 117, '_sadrzaj_3', 'field_61743fbffe8d4'),
(331, 117, 'sadrzaj_4', ''),
(332, 117, '_sadrzaj_4', 'field_61743fc6fe8d5'),
(333, 72, '_wp_trash_meta_status', 'publish'),
(334, 72, '_wp_trash_meta_time', '1635075303'),
(335, 72, '_wp_desired_post_slug', 'svi-tretmani'),
(336, 117, 'slika', '115'),
(337, 117, '_slika', 'field_617545c005331'),
(338, 114, 'slika', '115'),
(339, 114, '_slika', 'field_617545c005331'),
(340, 111, 'slika', '113'),
(341, 111, '_slika', 'field_617545c005331'),
(342, 116, 'slika', '113'),
(343, 116, '_slika', 'field_617545c005331'),
(345, 120, '_edit_lock', '1635085205:1'),
(346, 120, '_edit_last', '1'),
(347, 120, 'podnaslov', ''),
(348, 120, '_podnaslov', 'field_61745a3558529'),
(349, 120, 'naslov', ''),
(350, 120, '_naslov', 'field_61745a415852a'),
(351, 120, 'osvrt_1', ''),
(352, 120, '_osvrt_1', 'field_61745a485852b'),
(353, 120, 'osvrt_2', ''),
(354, 120, '_osvrt_2', 'field_61745a5c5852c'),
(355, 120, 'osvrt_3', ''),
(356, 120, '_osvrt_3', 'field_61745a645852d'),
(357, 120, 'osvrt_4', ''),
(358, 120, '_osvrt_4', 'field_61745a665852e'),
(359, 120, 'klijent_1', ''),
(360, 120, '_klijent_1', 'field_61745a6f5852f'),
(361, 120, 'klijent_2', ''),
(362, 120, '_klijent_2', 'field_61745a7d58530'),
(363, 120, 'klijent_3', ''),
(364, 120, '_klijent_3', 'field_61745a8858531'),
(365, 120, 'klijent_4', ''),
(366, 120, '_klijent_4', 'field_61745a8e58532'),
(367, 121, '_edit_lock', '1635085229:1'),
(368, 121, '_edit_last', '1'),
(369, 121, 'podnaslov', ''),
(370, 121, '_podnaslov', 'field_61745a3558529'),
(371, 121, 'naslov', ''),
(372, 121, '_naslov', 'field_61745a415852a'),
(373, 121, 'osvrt_1', ''),
(374, 121, '_osvrt_1', 'field_61745a485852b'),
(375, 121, 'osvrt_2', ''),
(376, 121, '_osvrt_2', 'field_61745a5c5852c'),
(377, 121, 'osvrt_3', ''),
(378, 121, '_osvrt_3', 'field_61745a645852d'),
(379, 121, 'osvrt_4', ''),
(380, 121, '_osvrt_4', 'field_61745a665852e'),
(381, 121, 'klijent_1', ''),
(382, 121, '_klijent_1', 'field_61745a6f5852f'),
(383, 121, 'klijent_2', ''),
(384, 121, '_klijent_2', 'field_61745a7d58530'),
(385, 121, 'klijent_3', ''),
(386, 121, '_klijent_3', 'field_61745a8858531'),
(387, 121, 'klijent_4', ''),
(388, 121, '_klijent_4', 'field_61745a8e58532'),
(389, 122, '_edit_lock', '1635085249:1'),
(390, 122, '_edit_last', '1'),
(391, 122, 'podnaslov', ''),
(392, 122, '_podnaslov', 'field_61745a3558529'),
(393, 122, 'naslov', ''),
(394, 122, '_naslov', 'field_61745a415852a'),
(395, 122, 'osvrt_1', ''),
(396, 122, '_osvrt_1', 'field_61745a485852b'),
(397, 122, 'osvrt_2', ''),
(398, 122, '_osvrt_2', 'field_61745a5c5852c'),
(399, 122, 'osvrt_3', ''),
(400, 122, '_osvrt_3', 'field_61745a645852d'),
(401, 122, 'osvrt_4', ''),
(402, 122, '_osvrt_4', 'field_61745a665852e'),
(403, 122, 'klijent_1', ''),
(404, 122, '_klijent_1', 'field_61745a6f5852f'),
(405, 122, 'klijent_2', ''),
(406, 122, '_klijent_2', 'field_61745a7d58530'),
(407, 122, 'klijent_3', ''),
(408, 122, '_klijent_3', 'field_61745a8858531'),
(409, 122, 'klijent_4', ''),
(410, 122, '_klijent_4', 'field_61745a8e58532'),
(411, 123, '_edit_lock', '1635086970:1'),
(412, 123, '_edit_last', '1'),
(413, 123, 'podnaslov', ''),
(414, 123, '_podnaslov', 'field_61745a3558529'),
(415, 123, 'naslov', ''),
(416, 123, '_naslov', 'field_61745a415852a'),
(417, 123, 'osvrt_1', ''),
(418, 123, '_osvrt_1', 'field_61745a485852b'),
(419, 123, 'osvrt_2', ''),
(420, 123, '_osvrt_2', 'field_61745a5c5852c'),
(421, 123, 'osvrt_3', ''),
(422, 123, '_osvrt_3', 'field_61745a645852d'),
(423, 123, 'osvrt_4', ''),
(424, 123, '_osvrt_4', 'field_61745a665852e'),
(425, 123, 'klijent_1', ''),
(426, 123, '_klijent_1', 'field_61745a6f5852f'),
(427, 123, 'klijent_2', ''),
(428, 123, '_klijent_2', 'field_61745a7d58530'),
(429, 123, 'klijent_3', ''),
(430, 123, '_klijent_3', 'field_61745a8858531'),
(431, 123, 'klijent_4', ''),
(432, 123, '_klijent_4', 'field_61745a8e58532'),
(433, 83, '_wp_trash_meta_status', 'publish'),
(434, 83, '_wp_trash_meta_time', '1635085080'),
(435, 83, '_wp_desired_post_slug', 'svi-osvrti'),
(436, 126, '_wp_attached_file', '2021/10/announcement.png'),
(437, 126, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:256;s:6:\"height\";i:256;s:4:\"file\";s:24:\"2021/10/announcement.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(438, 127, '_wp_attached_file', '2021/10/announcement3.png'),
(439, 127, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:256;s:6:\"height\";i:256;s:4:\"file\";s:25:\"2021/10/announcement3.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(440, 120, 'slika', '126'),
(441, 120, '_slika', 'field_61756b4aff6e8'),
(442, 121, 'slika', '127'),
(443, 121, '_slika', 'field_61756b4aff6e8'),
(444, 122, 'slika', '126'),
(445, 122, '_slika', 'field_61756b4aff6e8'),
(446, 123, 'slika', '127'),
(447, 123, '_slika', 'field_61756b4aff6e8'),
(448, 128, '_edit_lock', '1635189215:1'),
(449, 128, '_edit_last', '1'),
(450, 130, '_wp_attached_file', '2021/10/blog-1.jpg'),
(451, 130, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:500;s:4:\"file\";s:18:\"2021/10/blog-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(452, 131, '_wp_attached_file', '2021/10/blog-2.jpg'),
(453, 131, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:500;s:4:\"file\";s:18:\"2021/10/blog-2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(454, 132, '_wp_attached_file', '2021/10/blog-3.jpg'),
(455, 132, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:500;s:4:\"file\";s:18:\"2021/10/blog-3.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(456, 133, '_wp_attached_file', '2021/10/blog-4.jpg'),
(457, 133, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:500;s:4:\"file\";s:18:\"2021/10/blog-4.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(458, 134, '_wp_attached_file', '2021/10/blog-5.jpg'),
(459, 134, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:500;s:4:\"file\";s:18:\"2021/10/blog-5.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(460, 135, '_wp_attached_file', '2021/10/blog-6.jpg'),
(461, 135, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:500;s:4:\"file\";s:18:\"2021/10/blog-6.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(462, 128, 'slika', '130'),
(463, 128, '_slika', 'field_6175705619975'),
(464, 136, '_edit_lock', '1635189192:1'),
(465, 136, '_edit_last', '1'),
(466, 136, 'slika', '131'),
(467, 136, '_slika', 'field_6175705619975'),
(468, 137, '_edit_lock', '1635189173:1'),
(469, 137, '_edit_last', '1'),
(470, 137, 'slika', '132'),
(471, 137, '_slika', 'field_6175705619975'),
(472, 138, '_edit_lock', '1635189153:1'),
(473, 138, '_edit_last', '1'),
(474, 138, 'slika', '133'),
(475, 138, '_slika', 'field_6175705619975'),
(476, 139, '_edit_lock', '1635189134:1'),
(477, 139, '_edit_last', '1'),
(478, 139, 'slika', '134'),
(479, 139, '_slika', 'field_6175705619975'),
(480, 140, '_edit_lock', '1635189111:1'),
(481, 140, '_edit_last', '1'),
(482, 140, 'slika', '135'),
(483, 140, '_slika', 'field_6175705619975'),
(484, 110, '_wp_trash_meta_status', 'publish'),
(485, 110, '_wp_trash_meta_time', '1635086980'),
(486, 110, '_wp_desired_post_slug', 'savjeti-naslovna'),
(487, 141, '_edit_lock', '1635104945:1'),
(488, 141, '_edit_last', '1'),
(489, 141, 'tretman_1', 'Rješavanje prhuti'),
(490, 141, '_tretman_1', 'field_6175a3eea3945'),
(491, 141, 'tretman_2', 'Tretman za osjetljivo vlasište'),
(492, 141, '_tretman_2', 'field_6175a405a3946'),
(493, 141, 'tretman_3', 'Tretman za rast kose'),
(494, 141, '_tretman_3', 'field_6175a40fa3947'),
(495, 141, 'tretman_4', 'Rješavanje masnoće vlasišta'),
(496, 141, '_tretman_4', 'field_6175a417a3948'),
(497, 141, 'tretman_5', ''),
(498, 141, '_tretman_5', 'field_6175a419a3949'),
(499, 141, 'tretman_6', ''),
(500, 141, '_tretman_6', 'field_6175a41ca394a'),
(501, 141, 'ispred_cijene', 'od'),
(502, 141, '_ispred_cijene', 'field_6175a426a394b'),
(503, 141, 'cijena', '65'),
(504, 141, '_cijena', 'field_6175a436a394c'),
(505, 141, 'valuta', 'kn'),
(506, 141, '_valuta', 'field_6175a43ca394d'),
(507, 151, '_edit_lock', '1635101583:1'),
(508, 151, '_edit_last', '1'),
(509, 151, 'tretman_1', 'Rješavanje prhuti'),
(510, 151, '_tretman_1', 'field_6175a3eea3945'),
(511, 151, 'tretman_2', 'Tretman za osjetljivo vlasište'),
(512, 151, '_tretman_2', 'field_6175a405a3946'),
(513, 151, 'tretman_3', 'Tretman za rast kose'),
(514, 151, '_tretman_3', 'field_6175a40fa3947'),
(515, 151, 'tretman_4', 'Rješavanje masnoće vlasišta'),
(516, 151, '_tretman_4', 'field_6175a417a3948'),
(517, 151, 'tretman_5', ''),
(518, 151, '_tretman_5', 'field_6175a419a3949'),
(519, 151, 'tretman_6', ''),
(520, 151, '_tretman_6', 'field_6175a41ca394a'),
(521, 151, 'ispred_cijene', ''),
(522, 151, '_ispred_cijene', 'field_6175a426a394b'),
(523, 151, 'cijena', '150'),
(524, 151, '_cijena', 'field_6175a436a394c'),
(525, 151, 'valuta', 'kn'),
(526, 151, '_valuta', 'field_6175a43ca394d'),
(527, 152, '_edit_lock', '1635100015:1'),
(528, 152, '_edit_last', '1'),
(529, 152, 'tretman_1', 'Rješavanje prhuti'),
(530, 152, '_tretman_1', 'field_6175a3eea3945'),
(531, 152, 'tretman_2', 'Tretman za osjetljivo vlasište'),
(532, 152, '_tretman_2', 'field_6175a405a3946'),
(533, 152, 'tretman_3', 'Tretman za rast kose'),
(534, 152, '_tretman_3', 'field_6175a40fa3947'),
(535, 152, 'tretman_4', 'Rješavanje masnoće vlasišta'),
(536, 152, '_tretman_4', 'field_6175a417a3948'),
(537, 152, 'tretman_5', ''),
(538, 152, '_tretman_5', 'field_6175a419a3949'),
(539, 152, 'tretman_6', ''),
(540, 152, '_tretman_6', 'field_6175a41ca394a'),
(541, 152, 'ispred_cijene', ''),
(542, 152, '_ispred_cijene', 'field_6175a426a394b'),
(543, 152, 'cijena', '490'),
(544, 152, '_cijena', 'field_6175a436a394c'),
(545, 152, 'valuta', 'kn'),
(546, 152, '_valuta', 'field_6175a43ca394d'),
(547, 155, '_edit_lock', '1635177335:1'),
(548, 156, '_edit_lock', '1635177434:1'),
(549, 157, '_edit_lock', '1635177529:1'),
(550, 158, '_edit_lock', '1635177675:1'),
(551, 159, '_edit_lock', '1635177782:1'),
(552, 160, '_edit_lock', '1635178828:1'),
(554, 36, '_wp_old_date', '2021-10-23'),
(555, 35, '_wp_old_date', '2021-10-23'),
(556, 34, '_wp_old_date', '2021-10-23'),
(557, 33, '_wp_old_date', '2021-10-23'),
(558, 32, '_wp_old_date', '2021-10-23'),
(559, 31, '_wp_old_date', '2021-10-23'),
(560, 161, '_menu_item_type', 'custom'),
(561, 161, '_menu_item_menu_item_parent', '0'),
(562, 161, '_menu_item_object_id', '161'),
(563, 161, '_menu_item_object', 'custom'),
(564, 161, '_menu_item_target', ''),
(565, 161, '_menu_item_classes', 'a:2:{i:0;s:8:\"nav-item\";i:1;s:6:\"active\";}'),
(566, 161, '_menu_item_xfn', ''),
(567, 161, '_menu_item_url', 'http://localhost/NicoleNicole/'),
(570, 163, '_edit_lock', '1635170299:1'),
(572, 163, '_edit_last', '1'),
(574, 163, 'podnaslov', ''),
(575, 163, '_podnaslov', 'field_61741e69440be'),
(576, 163, 'span', ''),
(577, 163, '_span', 'field_61744aee96695'),
(578, 164, 'podnaslov', ''),
(579, 164, '_podnaslov', 'field_61741e69440be'),
(580, 164, 'span', ''),
(581, 164, '_span', 'field_61744aee96695'),
(582, 165, '_edit_last', '1'),
(583, 165, '_edit_lock', '1635169124:1'),
(584, 171, '_wp_attached_file', '2021/10/post-1.jpg'),
(585, 171, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1169;s:6:\"height\";i:780;s:4:\"file\";s:18:\"2021/10/post-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(587, 163, 'slika', '171'),
(588, 163, '_slika', 'field_6176b0e835ad7'),
(589, 163, 'ime_autora', 'Nikolina'),
(590, 163, '_ime_autora', 'field_6176b0ff35ad8'),
(591, 163, 'slika_autora', '174'),
(592, 163, '_slika_autora', 'field_6176b12a35ad9'),
(593, 163, 'o_autoru', 'Voditeljica salona i zaljubljenica u svoj posao i ljude oko sebe. Svakodnevno se trudimo pružiti Vam najbolje usluge uljepšavanja i opuštanja u našem salonu.'),
(594, 163, '_o_autoru', 'field_6176b14935ada'),
(595, 163, '_', 'field_6176b15c35adb'),
(596, 172, 'podnaslov', ''),
(597, 172, '_podnaslov', 'field_61741e69440be'),
(598, 172, 'span', ''),
(599, 172, '_span', 'field_61744aee96695'),
(600, 172, 'slika', '171'),
(601, 172, '_slika', 'field_6176b0e835ad7'),
(602, 172, 'ime_autora', ''),
(603, 172, '_ime_autora', 'field_6176b0ff35ad8'),
(604, 172, 'slika_autora', ''),
(605, 172, '_slika_autora', 'field_6176b12a35ad9'),
(606, 172, 'o_autoru', 'Voditeljica salona i zaljubljenica u svoj posao i ljude oko sebe. Svakodnevno se trudimo pružiti Vam najbolje usluge uljepšavanja i opuštanja u našem salonu.'),
(607, 172, '_o_autoru', 'field_6176b14935ada'),
(609, 173, 'podnaslov', ''),
(610, 173, '_podnaslov', 'field_61741e69440be'),
(611, 173, 'span', ''),
(612, 173, '_span', 'field_61744aee96695'),
(613, 173, 'slika', '171'),
(614, 173, '_slika', 'field_6176b0e835ad7'),
(615, 173, 'ime_autora', 'Nikolina'),
(616, 173, '_ime_autora', 'field_6176b0ff35ad8'),
(617, 173, 'slika_autora', ''),
(618, 173, '_slika_autora', 'field_6176b12a35ad9'),
(619, 173, 'o_autoru', 'Voditeljica salona i zaljubljenica u svoj posao i ljude oko sebe. Svakodnevno se trudimo pružiti Vam najbolje usluge uljepšavanja i opuštanja u našem salonu.'),
(620, 173, '_o_autoru', 'field_6176b14935ada'),
(621, 174, '_wp_attached_file', '2021/10/user.jpg'),
(622, 174, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:16:\"2021/10/user.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(624, 175, 'podnaslov', ''),
(625, 175, '_podnaslov', 'field_61741e69440be'),
(626, 175, 'span', ''),
(627, 175, '_span', 'field_61744aee96695'),
(628, 175, 'slika', '171'),
(629, 175, '_slika', 'field_6176b0e835ad7'),
(630, 175, 'ime_autora', 'Nikolina'),
(631, 175, '_ime_autora', 'field_6176b0ff35ad8'),
(632, 175, 'slika_autora', '174'),
(633, 175, '_slika_autora', 'field_6176b12a35ad9'),
(634, 175, 'o_autoru', 'Voditeljica salona i zaljubljenica u svoj posao i ljude oko sebe. Svakodnevno se trudimo pružiti Vam najbolje usluge uljepšavanja i opuštanja u našem salonu.'),
(635, 175, '_o_autoru', 'field_6176b14935ada'),
(638, 163, '_encloseme', '1'),
(639, 178, 'podnaslov', ''),
(640, 178, '_podnaslov', 'field_61741e69440be'),
(641, 178, 'span', ''),
(642, 178, '_span', 'field_61744aee96695'),
(643, 178, 'slika', '171'),
(644, 178, '_slika', 'field_6176b0e835ad7'),
(645, 178, 'ime_autora', 'Nikolina'),
(646, 178, '_ime_autora', 'field_6176b0ff35ad8'),
(647, 178, 'slika_autora', '174'),
(648, 178, '_slika_autora', 'field_6176b12a35ad9'),
(649, 178, 'o_autoru', 'Voditeljica salona i zaljubljenica u svoj posao i ljude oko sebe. Svakodnevno se trudimo pružiti Vam najbolje usluge uljepšavanja i opuštanja u našem salonu.'),
(650, 178, '_o_autoru', 'field_6176b14935ada'),
(651, 179, 'title', 'NextGEN Basic Thumbnails'),
(652, 179, 'module_id', 'photocrati-nextgen_basic_gallery'),
(653, 179, 'preview_image_relpath', 'photocrati-nextgen_basic_gallery#thumb_preview.jpg'),
(654, 179, 'default_source', 'galleries'),
(655, 179, 'view_order', '10000'),
(656, 179, 'name', 'photocrati-nextgen_basic_thumbnails'),
(657, 179, 'installed_at_version', '3.17'),
(658, 179, 'hidden_from_ui', ''),
(659, 179, 'hidden_from_igw', ''),
(660, 179, '__defaults_set', '1'),
(661, 179, 'filter', 'raw'),
(662, 179, 'entity_types', 'WyJpbWFnZSJd'),
(663, 179, 'aliases', 'WyJiYXNpY190aHVtYm5haWwiLCJiYXNpY190aHVtYm5haWxzIiwibmV4dGdlbl9iYXNpY190aHVtYm5haWxzIl0='),
(664, 179, 'id_field', 'ID'),
(665, 179, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJkaXNwbGF5X3ZpZXciOiJkZWZhdWx0LXZpZXcucGhwIiwiaW1hZ2VzX3Blcl9wYWdlIjoiMjQiLCJudW1iZXJfb2ZfY29sdW1ucyI6MCwidGh1bWJuYWlsX3dpZHRoIjoyNDAsInRodW1ibmFpbF9oZWlnaHQiOjE2MCwic2hvd19hbGxfaW5fbGlnaHRib3giOjAsImFqYXhfcGFnaW5hdGlvbiI6MSwidXNlX2ltYWdlYnJvd3Nlcl9lZmZlY3QiOjAsInRlbXBsYXRlIjoiIiwiZGlzcGxheV9ub19pbWFnZXNfZXJyb3IiOjEsImRpc2FibGVfcGFnaW5hdGlvbiI6MCwic2hvd19zbGlkZXNob3dfbGluayI6MCwic2xpZGVzaG93X2xpbmtfdGV4dCI6IlZpZXcgU2xpZGVzaG93Iiwib3ZlcnJpZGVfdGh1bWJuYWlsX3NldHRpbmdzIjowLCJ0aHVtYm5haWxfcXVhbGl0eSI6IjEwMCIsInRodW1ibmFpbF9jcm9wIjoxLCJ0aHVtYm5haWxfd2F0ZXJtYXJrIjowLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119'),
(666, 180, 'title', 'NextGEN Basic Slideshow'),
(667, 180, 'module_id', 'photocrati-nextgen_basic_gallery'),
(668, 180, 'preview_image_relpath', 'photocrati-nextgen_basic_gallery#slideshow_preview.jpg'),
(669, 180, 'default_source', 'galleries'),
(670, 180, 'view_order', '10010'),
(671, 180, 'name', 'photocrati-nextgen_basic_slideshow'),
(672, 180, 'installed_at_version', '3.17'),
(673, 180, 'hidden_from_ui', ''),
(674, 180, 'hidden_from_igw', ''),
(675, 180, '__defaults_set', '1'),
(676, 180, 'filter', 'raw'),
(677, 180, 'entity_types', 'WyJpbWFnZSJd'),
(678, 180, 'aliases', 'WyJiYXNpY19zbGlkZXNob3ciLCJuZXh0Z2VuX2Jhc2ljX3NsaWRlc2hvdyJd'),
(679, 180, 'id_field', 'ID'),
(680, 180, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJ5X3dpZHRoIjo3NTAsImdhbGxlcnlfaGVpZ2h0Ijo1MDAsInNob3dfdGh1bWJuYWlsX2xpbmsiOjAsInRodW1ibmFpbF9saW5rX3RleHQiOiJWaWV3IFRodW1ibmFpbHMiLCJ0ZW1wbGF0ZSI6IiIsImRpc3BsYXlfdmlldyI6ImRlZmF1bHQiLCJhdXRvcGxheSI6MSwicGF1c2VvbmhvdmVyIjoxLCJhcnJvd3MiOjAsImludGVydmFsIjozMDAwLCJ0cmFuc2l0aW9uX3NwZWVkIjozMDAsInRyYW5zaXRpb25fc3R5bGUiOiJmYWRlIiwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciIsIl9lcnJvcnMiOltdfQ=='),
(681, 181, 'title', 'NextGEN Basic ImageBrowser'),
(682, 181, 'preview_image_relpath', 'photocrati-nextgen_basic_imagebrowser#preview.jpg'),
(683, 181, 'default_source', 'galleries'),
(684, 181, 'view_order', '10020'),
(685, 181, 'name', 'photocrati-nextgen_basic_imagebrowser'),
(686, 181, 'installed_at_version', '3.17'),
(687, 181, 'hidden_from_ui', ''),
(688, 181, 'hidden_from_igw', ''),
(689, 181, '__defaults_set', '1'),
(690, 181, 'filter', 'raw'),
(691, 181, 'entity_types', 'WyJpbWFnZSJd'),
(692, 181, 'aliases', 'WyJiYXNpY19pbWFnZWJyb3dzZXIiLCJpbWFnZWJyb3dzZXIiLCJuZXh0Z2VuX2Jhc2ljX2ltYWdlYnJvd3NlciJd'),
(693, 181, 'id_field', 'ID'),
(694, 181, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJkaXNwbGF5X3ZpZXciOiJkZWZhdWx0LXZpZXcucGhwIiwidGVtcGxhdGUiOiIiLCJhamF4X3BhZ2luYXRpb24iOiIxIiwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciIsIl9lcnJvcnMiOltdfQ=='),
(695, 182, 'title', 'NextGEN Basic SinglePic'),
(696, 182, 'preview_image_relpath', 'photocrati-nextgen_basic_singlepic#preview.gif'),
(697, 182, 'default_source', 'galleries'),
(698, 182, 'view_order', '10060'),
(699, 182, 'hidden_from_ui', '1'),
(700, 182, 'hidden_from_igw', '1'),
(701, 182, 'name', 'photocrati-nextgen_basic_singlepic'),
(702, 182, 'installed_at_version', '3.17'),
(703, 182, '__defaults_set', '1'),
(704, 182, 'filter', 'raw'),
(705, 182, 'entity_types', 'WyJpbWFnZSJd'),
(706, 182, 'aliases', 'WyJiYXNpY19zaW5nbGVwaWMiLCJzaW5nbGVwaWMiLCJuZXh0Z2VuX2Jhc2ljX3NpbmdsZXBpYyJd'),
(707, 182, 'id_field', 'ID'),
(708, 182, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJ3aWR0aCI6IiIsImhlaWdodCI6IiIsIm1vZGUiOiIiLCJkaXNwbGF5X3dhdGVybWFyayI6MCwiZGlzcGxheV9yZWZsZWN0aW9uIjowLCJmbG9hdCI6IiIsImxpbmsiOiIiLCJsaW5rX3RhcmdldCI6Il9ibGFuayIsInF1YWxpdHkiOjEwMCwiY3JvcCI6MCwidGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119'),
(709, 183, 'title', 'NextGEN Basic TagCloud'),
(710, 183, 'preview_image_relpath', 'photocrati-nextgen_basic_tagcloud#preview.gif'),
(711, 183, 'default_source', 'tags'),
(712, 183, 'view_order', '10100'),
(713, 183, 'name', 'photocrati-nextgen_basic_tagcloud'),
(714, 183, 'installed_at_version', '3.17'),
(715, 183, 'hidden_from_ui', ''),
(716, 183, 'hidden_from_igw', ''),
(717, 183, '__defaults_set', '1'),
(718, 183, 'filter', 'raw'),
(719, 183, 'entity_types', 'WyJpbWFnZSJd'),
(720, 183, 'aliases', 'WyJiYXNpY190YWdjbG91ZCIsInRhZ2Nsb3VkIiwibmV4dGdlbl9iYXNpY190YWdjbG91ZCJd'),
(721, 183, 'id_field', 'ID'),
(722, 183, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJ5X2Rpc3BsYXlfdHlwZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwibnVtYmVyIjo0NSwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciIsIl9lcnJvcnMiOltdfQ=='),
(723, 184, 'title', 'NextGEN Basic Compact Album'),
(724, 184, 'module_id', 'photocrati-nextgen_basic_album'),
(725, 184, 'preview_image_relpath', 'photocrati-nextgen_basic_album#compact_preview.jpg'),
(726, 184, 'default_source', 'albums'),
(727, 184, 'view_order', '10200'),
(728, 184, 'name', 'photocrati-nextgen_basic_compact_album'),
(729, 184, 'installed_at_version', '3.17'),
(730, 184, 'hidden_from_ui', ''),
(731, 184, 'hidden_from_igw', ''),
(732, 184, '__defaults_set', '1'),
(733, 184, 'filter', 'raw'),
(734, 184, 'entity_types', 'WyJhbGJ1bSIsImdhbGxlcnkiXQ=='),
(735, 184, 'aliases', 'WyJiYXNpY19jb21wYWN0X2FsYnVtIiwibmV4dGdlbl9iYXNpY19hbGJ1bSIsImJhc2ljX2FsYnVtX2NvbXBhY3QiLCJjb21wYWN0X2FsYnVtIl0='),
(736, 184, 'id_field', 'ID'),
(737, 184, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJkaXNwbGF5X3ZpZXciOiJkZWZhdWx0LXZpZXcucGhwIiwiZ2FsbGVyaWVzX3Blcl9wYWdlIjowLCJlbmFibGVfYnJlYWRjcnVtYnMiOjEsImRpc2FibGVfcGFnaW5hdGlvbiI6MCwiZW5hYmxlX2Rlc2NyaXB0aW9ucyI6MCwidGVtcGxhdGUiOiIiLCJvcGVuX2dhbGxlcnlfaW5fbGlnaHRib3giOjAsIm92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6MSwidGh1bWJuYWlsX3F1YWxpdHkiOjEwMCwidGh1bWJuYWlsX2Nyb3AiOjEsInRodW1ibmFpbF93YXRlcm1hcmsiOjAsInRodW1ibmFpbF93aWR0aCI6MjQwLCJ0aHVtYm5haWxfaGVpZ2h0IjoxNjAsImdhbGxlcnlfZGlzcGxheV90eXBlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMiLCJnYWxsZXJ5X2Rpc3BsYXlfdGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119'),
(738, 185, 'title', 'NextGEN Basic Extended Album'),
(739, 185, 'module_id', 'photocrati-nextgen_basic_album'),
(740, 185, 'preview_image_relpath', 'photocrati-nextgen_basic_album#extended_preview.jpg'),
(741, 185, 'default_source', 'albums'),
(742, 185, 'view_order', '10210'),
(743, 185, 'name', 'photocrati-nextgen_basic_extended_album'),
(744, 185, 'installed_at_version', '3.17'),
(745, 185, 'hidden_from_ui', ''),
(746, 185, 'hidden_from_igw', ''),
(747, 185, '__defaults_set', '1'),
(748, 185, 'filter', 'raw'),
(749, 185, 'entity_types', 'WyJhbGJ1bSIsImdhbGxlcnkiXQ=='),
(750, 185, 'aliases', 'WyJiYXNpY19leHRlbmRlZF9hbGJ1bSIsIm5leHRnZW5fYmFzaWNfZXh0ZW5kZWRfYWxidW0iLCJleHRlbmRlZF9hbGJ1bSJd'),
(751, 185, 'id_field', 'ID'),
(752, 185, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJkaXNwbGF5X3ZpZXciOiJkZWZhdWx0LXZpZXcucGhwIiwiZ2FsbGVyaWVzX3Blcl9wYWdlIjowLCJlbmFibGVfYnJlYWRjcnVtYnMiOjEsImRpc2FibGVfcGFnaW5hdGlvbiI6MCwiZW5hYmxlX2Rlc2NyaXB0aW9ucyI6MCwidGVtcGxhdGUiOiIiLCJvcGVuX2dhbGxlcnlfaW5fbGlnaHRib3giOjAsIm92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6MSwidGh1bWJuYWlsX3F1YWxpdHkiOjEwMCwidGh1bWJuYWlsX2Nyb3AiOjEsInRodW1ibmFpbF93YXRlcm1hcmsiOjAsInRodW1ibmFpbF93aWR0aCI6MzAwLCJ0aHVtYm5haWxfaGVpZ2h0IjoyMDAsImdhbGxlcnlfZGlzcGxheV90eXBlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMiLCJnYWxsZXJ5X2Rpc3BsYXlfdGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119'),
(753, 186, 'title', 'NextGEN Basic Thumbnails'),
(754, 186, 'module_id', 'photocrati-nextgen_basic_gallery'),
(755, 186, 'preview_image_relpath', 'photocrati-nextgen_basic_gallery#thumb_preview.jpg'),
(756, 186, 'default_source', 'galleries'),
(757, 186, 'view_order', '10000'),
(758, 186, 'name', 'photocrati-nextgen_basic_thumbnails'),
(759, 186, 'installed_at_version', '3.17'),
(760, 186, 'hidden_from_ui', ''),
(761, 186, 'hidden_from_igw', ''),
(762, 186, '__defaults_set', '1'),
(763, 186, 'filter', 'raw'),
(764, 186, 'entity_types', 'WyJpbWFnZSJd'),
(765, 186, 'aliases', 'WyJiYXNpY190aHVtYm5haWwiLCJiYXNpY190aHVtYm5haWxzIiwibmV4dGdlbl9iYXNpY190aHVtYm5haWxzIl0='),
(766, 186, 'id_field', 'ID'),
(767, 186, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJkaXNwbGF5X3ZpZXciOiJkZWZhdWx0LXZpZXcucGhwIiwiaW1hZ2VzX3Blcl9wYWdlIjoiMjQiLCJudW1iZXJfb2ZfY29sdW1ucyI6MCwidGh1bWJuYWlsX3dpZHRoIjoyNDAsInRodW1ibmFpbF9oZWlnaHQiOjE2MCwic2hvd19hbGxfaW5fbGlnaHRib3giOjAsImFqYXhfcGFnaW5hdGlvbiI6MSwidXNlX2ltYWdlYnJvd3Nlcl9lZmZlY3QiOjAsInRlbXBsYXRlIjoiIiwiZGlzcGxheV9ub19pbWFnZXNfZXJyb3IiOjEsImRpc2FibGVfcGFnaW5hdGlvbiI6MCwic2hvd19zbGlkZXNob3dfbGluayI6MCwic2xpZGVzaG93X2xpbmtfdGV4dCI6IlZpZXcgU2xpZGVzaG93Iiwib3ZlcnJpZGVfdGh1bWJuYWlsX3NldHRpbmdzIjowLCJ0aHVtYm5haWxfcXVhbGl0eSI6IjEwMCIsInRodW1ibmFpbF9jcm9wIjoxLCJ0aHVtYm5haWxfd2F0ZXJtYXJrIjowLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119'),
(768, 187, 'title', 'NextGEN Basic Slideshow'),
(769, 187, 'module_id', 'photocrati-nextgen_basic_gallery'),
(770, 187, 'preview_image_relpath', 'photocrati-nextgen_basic_gallery#slideshow_preview.jpg'),
(771, 187, 'default_source', 'galleries'),
(772, 187, 'view_order', '10010'),
(773, 187, 'name', 'photocrati-nextgen_basic_slideshow'),
(774, 187, 'installed_at_version', '3.17'),
(775, 187, 'hidden_from_ui', ''),
(776, 187, 'hidden_from_igw', ''),
(777, 187, '__defaults_set', '1'),
(778, 187, 'filter', 'raw'),
(779, 187, 'entity_types', 'WyJpbWFnZSJd'),
(780, 187, 'aliases', 'WyJiYXNpY19zbGlkZXNob3ciLCJuZXh0Z2VuX2Jhc2ljX3NsaWRlc2hvdyJd'),
(781, 187, 'id_field', 'ID'),
(782, 187, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJ5X3dpZHRoIjo3NTAsImdhbGxlcnlfaGVpZ2h0Ijo1MDAsInNob3dfdGh1bWJuYWlsX2xpbmsiOjAsInRodW1ibmFpbF9saW5rX3RleHQiOiJWaWV3IFRodW1ibmFpbHMiLCJ0ZW1wbGF0ZSI6IiIsImRpc3BsYXlfdmlldyI6ImRlZmF1bHQiLCJhdXRvcGxheSI6MSwicGF1c2VvbmhvdmVyIjoxLCJhcnJvd3MiOjAsImludGVydmFsIjozMDAwLCJ0cmFuc2l0aW9uX3NwZWVkIjozMDAsInRyYW5zaXRpb25fc3R5bGUiOiJmYWRlIiwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciIsIl9lcnJvcnMiOltdfQ=='),
(783, 188, 'title', 'NextGEN Basic ImageBrowser'),
(784, 188, 'preview_image_relpath', 'photocrati-nextgen_basic_imagebrowser#preview.jpg'),
(785, 188, 'default_source', 'galleries'),
(786, 188, 'view_order', '10020'),
(787, 188, 'name', 'photocrati-nextgen_basic_imagebrowser'),
(788, 188, 'installed_at_version', '3.17'),
(789, 188, 'hidden_from_ui', ''),
(790, 188, 'hidden_from_igw', ''),
(791, 188, '__defaults_set', '1'),
(792, 188, 'filter', 'raw'),
(793, 188, 'entity_types', 'WyJpbWFnZSJd'),
(794, 188, 'aliases', 'WyJiYXNpY19pbWFnZWJyb3dzZXIiLCJpbWFnZWJyb3dzZXIiLCJuZXh0Z2VuX2Jhc2ljX2ltYWdlYnJvd3NlciJd'),
(795, 188, 'id_field', 'ID'),
(796, 188, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJkaXNwbGF5X3ZpZXciOiJkZWZhdWx0LXZpZXcucGhwIiwidGVtcGxhdGUiOiIiLCJhamF4X3BhZ2luYXRpb24iOiIxIiwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciIsIl9lcnJvcnMiOltdfQ=='),
(797, 189, 'title', 'NextGEN Basic SinglePic'),
(798, 189, 'preview_image_relpath', 'photocrati-nextgen_basic_singlepic#preview.gif'),
(799, 189, 'default_source', 'galleries'),
(800, 189, 'view_order', '10060'),
(801, 189, 'hidden_from_ui', '1'),
(802, 189, 'hidden_from_igw', '1'),
(803, 189, 'name', 'photocrati-nextgen_basic_singlepic'),
(804, 189, 'installed_at_version', '3.17'),
(805, 189, '__defaults_set', '1'),
(806, 189, 'filter', 'raw'),
(807, 189, 'entity_types', 'WyJpbWFnZSJd'),
(808, 189, 'aliases', 'WyJiYXNpY19zaW5nbGVwaWMiLCJzaW5nbGVwaWMiLCJuZXh0Z2VuX2Jhc2ljX3NpbmdsZXBpYyJd'),
(809, 189, 'id_field', 'ID'),
(810, 189, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJ3aWR0aCI6IiIsImhlaWdodCI6IiIsIm1vZGUiOiIiLCJkaXNwbGF5X3dhdGVybWFyayI6MCwiZGlzcGxheV9yZWZsZWN0aW9uIjowLCJmbG9hdCI6IiIsImxpbmsiOiIiLCJsaW5rX3RhcmdldCI6Il9ibGFuayIsInF1YWxpdHkiOjEwMCwiY3JvcCI6MCwidGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119'),
(811, 190, 'title', 'NextGEN Basic TagCloud'),
(812, 190, 'preview_image_relpath', 'photocrati-nextgen_basic_tagcloud#preview.gif'),
(813, 190, 'default_source', 'tags'),
(814, 190, 'view_order', '10100'),
(815, 190, 'name', 'photocrati-nextgen_basic_tagcloud'),
(816, 190, 'installed_at_version', '3.17'),
(817, 190, 'hidden_from_ui', ''),
(818, 190, 'hidden_from_igw', ''),
(819, 190, '__defaults_set', '1'),
(820, 190, 'filter', 'raw'),
(821, 190, 'entity_types', 'WyJpbWFnZSJd'),
(822, 190, 'aliases', 'WyJiYXNpY190YWdjbG91ZCIsInRhZ2Nsb3VkIiwibmV4dGdlbl9iYXNpY190YWdjbG91ZCJd'),
(823, 190, 'id_field', 'ID'),
(824, 190, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJ5X2Rpc3BsYXlfdHlwZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwibnVtYmVyIjo0NSwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciIsIl9lcnJvcnMiOltdfQ=='),
(825, 191, 'title', 'NextGEN Basic Compact Album'),
(826, 191, 'module_id', 'photocrati-nextgen_basic_album'),
(827, 191, 'preview_image_relpath', 'photocrati-nextgen_basic_album#compact_preview.jpg'),
(828, 191, 'default_source', 'albums'),
(829, 191, 'view_order', '10200'),
(830, 191, 'name', 'photocrati-nextgen_basic_compact_album'),
(831, 191, 'installed_at_version', '3.17'),
(832, 191, 'hidden_from_ui', ''),
(833, 191, 'hidden_from_igw', ''),
(834, 191, '__defaults_set', '1'),
(835, 191, 'filter', 'raw'),
(836, 191, 'entity_types', 'WyJhbGJ1bSIsImdhbGxlcnkiXQ=='),
(837, 191, 'aliases', 'WyJiYXNpY19jb21wYWN0X2FsYnVtIiwibmV4dGdlbl9iYXNpY19hbGJ1bSIsImJhc2ljX2FsYnVtX2NvbXBhY3QiLCJjb21wYWN0X2FsYnVtIl0='),
(838, 191, 'id_field', 'ID'),
(839, 191, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJkaXNwbGF5X3ZpZXciOiJkZWZhdWx0LXZpZXcucGhwIiwiZ2FsbGVyaWVzX3Blcl9wYWdlIjowLCJlbmFibGVfYnJlYWRjcnVtYnMiOjEsImRpc2FibGVfcGFnaW5hdGlvbiI6MCwiZW5hYmxlX2Rlc2NyaXB0aW9ucyI6MCwidGVtcGxhdGUiOiIiLCJvcGVuX2dhbGxlcnlfaW5fbGlnaHRib3giOjAsIm92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6MSwidGh1bWJuYWlsX3F1YWxpdHkiOjEwMCwidGh1bWJuYWlsX2Nyb3AiOjEsInRodW1ibmFpbF93YXRlcm1hcmsiOjAsInRodW1ibmFpbF93aWR0aCI6MjQwLCJ0aHVtYm5haWxfaGVpZ2h0IjoxNjAsImdhbGxlcnlfZGlzcGxheV90eXBlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMiLCJnYWxsZXJ5X2Rpc3BsYXlfdGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119'),
(840, 192, 'title', 'NextGEN Basic Extended Album'),
(841, 192, 'module_id', 'photocrati-nextgen_basic_album'),
(842, 192, 'preview_image_relpath', 'photocrati-nextgen_basic_album#extended_preview.jpg'),
(843, 192, 'default_source', 'albums'),
(844, 192, 'view_order', '10210'),
(845, 192, 'name', 'photocrati-nextgen_basic_extended_album'),
(846, 192, 'installed_at_version', '3.17'),
(847, 192, 'hidden_from_ui', ''),
(848, 192, 'hidden_from_igw', ''),
(849, 192, '__defaults_set', '1'),
(850, 192, 'filter', 'raw'),
(851, 192, 'entity_types', 'WyJhbGJ1bSIsImdhbGxlcnkiXQ=='),
(852, 192, 'aliases', 'WyJiYXNpY19leHRlbmRlZF9hbGJ1bSIsIm5leHRnZW5fYmFzaWNfZXh0ZW5kZWRfYWxidW0iLCJleHRlbmRlZF9hbGJ1bSJd'),
(853, 192, 'id_field', 'ID'),
(854, 192, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJkaXNwbGF5X3ZpZXciOiJkZWZhdWx0LXZpZXcucGhwIiwiZ2FsbGVyaWVzX3Blcl9wYWdlIjowLCJlbmFibGVfYnJlYWRjcnVtYnMiOjEsImRpc2FibGVfcGFnaW5hdGlvbiI6MCwiZW5hYmxlX2Rlc2NyaXB0aW9ucyI6MCwidGVtcGxhdGUiOiIiLCJvcGVuX2dhbGxlcnlfaW5fbGlnaHRib3giOjAsIm92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6MSwidGh1bWJuYWlsX3F1YWxpdHkiOjEwMCwidGh1bWJuYWlsX2Nyb3AiOjEsInRodW1ibmFpbF93YXRlcm1hcmsiOjAsInRodW1ibmFpbF93aWR0aCI6MzAwLCJ0aHVtYm5haWxfaGVpZ2h0IjoyMDAsImdhbGxlcnlfZGlzcGxheV90eXBlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMiLCJnYWxsZXJ5X2Rpc3BsYXlfdGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIiwiX2Vycm9ycyI6W119'),
(972, 193, '__defaults_set', '1'),
(973, 193, 'filter', 'raw'),
(974, 193, 'id_field', 'ID'),
(975, 199, '__defaults_set', '1'),
(976, 199, 'filter', 'raw'),
(977, 199, 'id_field', 'ID'),
(978, 200, '__defaults_set', '1'),
(979, 200, 'filter', 'raw'),
(980, 200, 'id_field', 'ID'),
(981, 197, '__defaults_set', '1'),
(982, 197, 'filter', 'raw'),
(983, 197, 'id_field', 'ID'),
(984, 198, '__defaults_set', '1'),
(985, 198, 'filter', 'raw'),
(986, 198, 'id_field', 'ID'),
(987, 196, '__defaults_set', '1'),
(988, 196, 'filter', 'raw'),
(989, 196, 'id_field', 'ID'),
(990, 195, '__defaults_set', '1'),
(991, 195, 'filter', 'raw'),
(992, 195, 'id_field', 'ID'),
(993, 201, '__defaults_set', '1'),
(994, 201, 'filter', 'raw'),
(995, 201, 'id_field', 'ID'),
(996, 203, '__defaults_set', '1'),
(997, 203, 'filter', 'raw'),
(998, 203, 'id_field', 'ID'),
(999, 202, '__defaults_set', '1'),
(1000, 202, 'filter', 'raw'),
(1001, 202, 'id_field', 'ID'),
(1002, 205, '__defaults_set', '1'),
(1003, 205, 'filter', 'raw'),
(1004, 205, 'id_field', 'ID'),
(1005, 204, '__defaults_set', '1'),
(1006, 204, 'filter', 'raw'),
(1007, 204, 'id_field', 'ID'),
(1008, 206, '__defaults_set', '1'),
(1009, 206, 'filter', 'raw'),
(1010, 206, 'id_field', 'ID'),
(1011, 212, '__defaults_set', '1'),
(1012, 212, 'filter', 'raw'),
(1013, 212, 'id_field', 'ID'),
(1014, 211, '__defaults_set', '1'),
(1015, 211, 'filter', 'raw'),
(1016, 211, 'id_field', 'ID'),
(1017, 207, '__defaults_set', '1'),
(1018, 207, 'filter', 'raw'),
(1019, 207, 'id_field', 'ID'),
(1020, 210, '__defaults_set', '1'),
(1021, 210, 'filter', 'raw'),
(1022, 210, 'id_field', 'ID'),
(1023, 208, '__defaults_set', '1'),
(1024, 208, 'filter', 'raw'),
(1025, 208, 'id_field', 'ID'),
(1026, 209, '__defaults_set', '1'),
(1027, 209, 'filter', 'raw'),
(1028, 209, 'id_field', 'ID'),
(1029, 213, '__defaults_set', '1'),
(1030, 213, 'filter', 'raw'),
(1031, 213, 'id_field', 'ID'),
(1032, 214, 'metagallery-title', 'Nicole Nicole');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1033, 214, 'metagallery-images', 'a:20:{i:0;a:8:{s:4:\"_uid\";i:1635175978103;s:6:\"height\";i:749;s:5:\"width\";i:500;s:5:\"title\";s:10:\"galerija-2\";s:3:\"alt\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"src\";a:1:{s:4:\"main\";a:4:{s:3:\"url\";s:73:\"http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-2-1.jpg\";s:6:\"height\";i:749;s:5:\"width\";i:500;s:11:\"orientation\";s:8:\"portrait\";}}s:2:\"WP\";a:1:{s:2:\"id\";i:237;}}i:1;a:8:{s:4:\"_uid\";i:1635176135747;s:6:\"height\";i:334;s:5:\"width\";i:500;s:5:\"title\";s:10:\"galerija-1\";s:3:\"alt\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"src\";a:1:{s:4:\"main\";a:4:{s:3:\"url\";s:73:\"http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-1-1.jpg\";s:6:\"height\";i:334;s:5:\"width\";i:500;s:11:\"orientation\";s:9:\"landscape\";}}s:2:\"WP\";a:1:{s:2:\"id\";i:236;}}i:2;a:8:{s:4:\"_uid\";i:1635175540509;s:6:\"height\";i:566;s:5:\"width\";i:500;s:5:\"title\";s:11:\"galerija-12\";s:3:\"alt\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"src\";a:1:{s:4:\"main\";a:4:{s:3:\"url\";s:74:\"http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-12-1.jpg\";s:6:\"height\";i:566;s:5:\"width\";i:500;s:11:\"orientation\";s:8:\"portrait\";}}s:2:\"WP\";a:1:{s:2:\"id\";i:247;}}i:3;a:8:{s:4:\"_uid\";i:1635175459654;s:6:\"height\";i:334;s:5:\"width\";i:500;s:5:\"title\";s:10:\"galerija-3\";s:3:\"alt\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"src\";a:1:{s:4:\"main\";a:4:{s:3:\"url\";s:73:\"http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-3-1.jpg\";s:6:\"height\";i:334;s:5:\"width\";i:500;s:11:\"orientation\";s:9:\"landscape\";}}s:2:\"WP\";a:1:{s:2:\"id\";i:238;}}i:4;a:8:{s:4:\"_uid\";i:1635176112175;s:6:\"height\";i:670;s:5:\"width\";i:500;s:5:\"title\";s:11:\"galerija-11\";s:3:\"alt\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"src\";a:1:{s:4:\"main\";a:4:{s:3:\"url\";s:74:\"http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-11-1.jpg\";s:6:\"height\";i:670;s:5:\"width\";i:500;s:11:\"orientation\";s:8:\"portrait\";}}s:2:\"WP\";a:1:{s:2:\"id\";i:246;}}i:5;a:8:{s:4:\"_uid\";i:1635175948667;s:6:\"height\";i:670;s:5:\"width\";i:500;s:5:\"title\";s:11:\"galerija-10\";s:3:\"alt\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"src\";a:1:{s:4:\"main\";a:4:{s:3:\"url\";s:74:\"http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-10-1.jpg\";s:6:\"height\";i:670;s:5:\"width\";i:500;s:11:\"orientation\";s:8:\"portrait\";}}s:2:\"WP\";a:1:{s:2:\"id\";i:245;}}i:6;a:8:{s:4:\"_uid\";i:1635176096845;s:6:\"height\";i:334;s:5:\"width\";i:500;s:5:\"title\";s:10:\"galerija-4\";s:3:\"alt\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"src\";a:1:{s:4:\"main\";a:4:{s:3:\"url\";s:73:\"http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-4-1.jpg\";s:6:\"height\";i:334;s:5:\"width\";i:500;s:11:\"orientation\";s:9:\"landscape\";}}s:2:\"WP\";a:1:{s:2:\"id\";i:239;}}i:7;a:8:{s:4:\"_uid\";i:1635176082295;s:6:\"height\";i:334;s:5:\"width\";i:500;s:5:\"title\";s:10:\"galerija-5\";s:3:\"alt\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"src\";a:1:{s:4:\"main\";a:4:{s:3:\"url\";s:73:\"http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-5-1.jpg\";s:6:\"height\";i:334;s:5:\"width\";i:500;s:11:\"orientation\";s:9:\"landscape\";}}s:2:\"WP\";a:1:{s:2:\"id\";i:240;}}i:8;a:8:{s:4:\"_uid\";i:1635175858016;s:6:\"height\";i:667;s:5:\"width\";i:500;s:5:\"title\";s:11:\"galerija-13\";s:3:\"alt\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"src\";a:1:{s:4:\"main\";a:4:{s:3:\"url\";s:74:\"http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-13-1.jpg\";s:6:\"height\";i:667;s:5:\"width\";i:500;s:11:\"orientation\";s:8:\"portrait\";}}s:2:\"WP\";a:1:{s:2:\"id\";i:248;}}i:9;a:8:{s:4:\"_uid\";i:1635176076046;s:6:\"height\";i:334;s:5:\"width\";i:500;s:5:\"title\";s:10:\"galerija-6\";s:3:\"alt\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"src\";a:1:{s:4:\"main\";a:4:{s:3:\"url\";s:73:\"http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-6-1.jpg\";s:6:\"height\";i:334;s:5:\"width\";i:500;s:11:\"orientation\";s:9:\"landscape\";}}s:2:\"WP\";a:1:{s:2:\"id\";i:241;}}i:10;a:8:{s:4:\"_uid\";i:1635176284056;s:6:\"height\";i:334;s:5:\"width\";i:500;s:5:\"title\";s:10:\"galerija-9\";s:3:\"alt\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"src\";a:1:{s:4:\"main\";a:4:{s:3:\"url\";s:73:\"http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-9-1.jpg\";s:6:\"height\";i:334;s:5:\"width\";i:500;s:11:\"orientation\";s:9:\"landscape\";}}s:2:\"WP\";a:1:{s:2:\"id\";i:244;}}i:11;a:8:{s:4:\"_uid\";i:1635176071590;s:6:\"height\";i:670;s:5:\"width\";i:500;s:5:\"title\";s:11:\"galerija-14\";s:3:\"alt\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"src\";a:1:{s:4:\"main\";a:4:{s:3:\"url\";s:74:\"http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-14-1.jpg\";s:6:\"height\";i:670;s:5:\"width\";i:500;s:11:\"orientation\";s:8:\"portrait\";}}s:2:\"WP\";a:1:{s:2:\"id\";i:249;}}i:12;a:8:{s:4:\"_uid\";i:1635176344848;s:6:\"height\";i:667;s:5:\"width\";i:500;s:5:\"title\";s:11:\"galerija-19\";s:3:\"alt\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"src\";a:1:{s:4:\"main\";a:4:{s:3:\"url\";s:74:\"http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-19-1.jpg\";s:6:\"height\";i:667;s:5:\"width\";i:500;s:11:\"orientation\";s:8:\"portrait\";}}s:2:\"WP\";a:1:{s:2:\"id\";i:254;}}i:13;a:8:{s:4:\"_uid\";i:1635175628162;s:6:\"height\";i:667;s:5:\"width\";i:500;s:5:\"title\";s:11:\"galerija-20\";s:3:\"alt\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"src\";a:1:{s:4:\"main\";a:4:{s:3:\"url\";s:74:\"http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-20-1.jpg\";s:6:\"height\";i:667;s:5:\"width\";i:500;s:11:\"orientation\";s:8:\"portrait\";}}s:2:\"WP\";a:1:{s:2:\"id\";i:255;}}i:14;a:8:{s:4:\"_uid\";i:1635175718325;s:6:\"height\";i:790;s:5:\"width\";i:500;s:5:\"title\";s:11:\"galerija-15\";s:3:\"alt\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"src\";a:1:{s:4:\"main\";a:4:{s:3:\"url\";s:74:\"http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-15-1.jpg\";s:6:\"height\";i:790;s:5:\"width\";i:500;s:11:\"orientation\";s:8:\"portrait\";}}s:2:\"WP\";a:1:{s:2:\"id\";i:250;}}i:15;a:8:{s:4:\"_uid\";i:1635175442958;s:6:\"height\";i:718;s:5:\"width\";i:500;s:5:\"title\";s:11:\"galerija-17\";s:3:\"alt\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"src\";a:1:{s:4:\"main\";a:4:{s:3:\"url\";s:74:\"http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-17-1.jpg\";s:6:\"height\";i:718;s:5:\"width\";i:500;s:11:\"orientation\";s:8:\"portrait\";}}s:2:\"WP\";a:1:{s:2:\"id\";i:252;}}i:16;a:8:{s:4:\"_uid\";i:1635175792451;s:6:\"height\";i:667;s:5:\"width\";i:500;s:5:\"title\";s:11:\"galerija-18\";s:3:\"alt\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"src\";a:1:{s:4:\"main\";a:4:{s:3:\"url\";s:74:\"http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-18-1.jpg\";s:6:\"height\";i:667;s:5:\"width\";i:500;s:11:\"orientation\";s:8:\"portrait\";}}s:2:\"WP\";a:1:{s:2:\"id\";i:253;}}i:17;a:8:{s:4:\"_uid\";i:1635175750265;s:6:\"height\";i:670;s:5:\"width\";i:500;s:5:\"title\";s:11:\"galerija-16\";s:3:\"alt\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"src\";a:1:{s:4:\"main\";a:4:{s:3:\"url\";s:74:\"http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-16-1.jpg\";s:6:\"height\";i:670;s:5:\"width\";i:500;s:11:\"orientation\";s:8:\"portrait\";}}s:2:\"WP\";a:1:{s:2:\"id\";i:251;}}i:18;a:8:{s:4:\"_uid\";i:1635175654732;s:6:\"height\";i:334;s:5:\"width\";i:500;s:5:\"title\";s:10:\"galerija-8\";s:3:\"alt\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"src\";a:1:{s:4:\"main\";a:4:{s:3:\"url\";s:73:\"http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-8-1.jpg\";s:6:\"height\";i:334;s:5:\"width\";i:500;s:11:\"orientation\";s:9:\"landscape\";}}s:2:\"WP\";a:1:{s:2:\"id\";i:243;}}i:19;a:8:{s:4:\"_uid\";i:1635175778232;s:6:\"height\";i:334;s:5:\"width\";i:500;s:5:\"title\";s:10:\"galerija-7\";s:3:\"alt\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"src\";a:1:{s:4:\"main\";a:4:{s:3:\"url\";s:73:\"http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-7-1.jpg\";s:6:\"height\";i:334;s:5:\"width\";i:500;s:11:\"orientation\";s:9:\"landscape\";}}s:2:\"WP\";a:1:{s:2:\"id\";i:242;}}}'),
(1034, 214, 'metagallery-settings', 'a:4:{s:13:\"maxImageWidth\";s:3:\"400\";s:13:\"minImageWidth\";s:3:\"300\";s:17:\"percentImageWidth\";s:2:\"25\";s:12:\"imageSpacing\";s:2:\"10\";}'),
(1035, 215, '_wp_attached_file', '2021/10/galerija-1.jpg'),
(1036, 215, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:6016;s:6:\"height\";i:4016;s:4:\"file\";s:22:\"2021/10/galerija-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1037, 216, '_wp_attached_file', '2021/10/galerija-2.jpg'),
(1038, 216, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3975;s:6:\"height\";i:5954;s:4:\"file\";s:22:\"2021/10/galerija-2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1039, 217, '_wp_attached_file', '2021/10/galerija-3.jpg'),
(1040, 217, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:6016;s:6:\"height\";i:4016;s:4:\"file\";s:22:\"2021/10/galerija-3.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1041, 218, '_wp_attached_file', '2021/10/galerija-4.jpg'),
(1042, 218, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:6016;s:6:\"height\";i:4016;s:4:\"file\";s:22:\"2021/10/galerija-4.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1043, 219, '_wp_attached_file', '2021/10/galerija-5.jpg'),
(1044, 219, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5878;s:6:\"height\";i:3924;s:4:\"file\";s:22:\"2021/10/galerija-5.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1045, 220, '_wp_attached_file', '2021/10/galerija-6.jpg'),
(1046, 220, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:6016;s:6:\"height\";i:4016;s:4:\"file\";s:22:\"2021/10/galerija-6.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1047, 221, '_wp_attached_file', '2021/10/galerija-7.jpg'),
(1048, 221, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:6016;s:6:\"height\";i:4016;s:4:\"file\";s:22:\"2021/10/galerija-7.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1049, 222, '_wp_attached_file', '2021/10/galerija-8.jpg'),
(1050, 222, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5208;s:6:\"height\";i:3477;s:4:\"file\";s:22:\"2021/10/galerija-8.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1051, 223, '_wp_attached_file', '2021/10/galerija-9.jpg'),
(1052, 223, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5668;s:6:\"height\";i:3784;s:4:\"file\";s:22:\"2021/10/galerija-9.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1053, 224, '_wp_attached_file', '2021/10/galerija-10.jpg'),
(1054, 224, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1504;s:6:\"height\";i:2015;s:4:\"file\";s:23:\"2021/10/galerija-10.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1055, 225, '_wp_attached_file', '2021/10/galerija-11.jpg'),
(1056, 225, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1504;s:6:\"height\";i:2015;s:4:\"file\";s:23:\"2021/10/galerija-11.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1057, 226, '_wp_attached_file', '2021/10/galerija-12.jpg'),
(1058, 226, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1080;s:6:\"height\";i:1080;s:4:\"file\";s:23:\"2021/10/galerija-12.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1059, 227, '_wp_attached_file', '2021/10/galerija-13.jpg'),
(1060, 227, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:2048;s:4:\"file\";s:23:\"2021/10/galerija-13.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1061, 228, '_wp_attached_file', '2021/10/galerija-14.jpg'),
(1062, 228, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1504;s:6:\"height\";i:2015;s:4:\"file\";s:23:\"2021/10/galerija-14.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1063, 229, '_wp_attached_file', '2021/10/galerija-15.jpg'),
(1064, 229, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1276;s:6:\"height\";i:2015;s:4:\"file\";s:23:\"2021/10/galerija-15.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1065, 230, '_wp_attached_file', '2021/10/galerija-16.jpg'),
(1066, 230, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1504;s:6:\"height\";i:2015;s:4:\"file\";s:23:\"2021/10/galerija-16.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1067, 231, '_wp_attached_file', '2021/10/galerija-17.jpg'),
(1068, 231, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1403;s:6:\"height\";i:2015;s:4:\"file\";s:23:\"2021/10/galerija-17.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1069, 232, '_wp_attached_file', '2021/10/galerija-18.jpg'),
(1070, 232, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:826;s:6:\"height\";i:1102;s:4:\"file\";s:23:\"2021/10/galerija-18.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1071, 233, '_wp_attached_file', '2021/10/galerija-20.jpg'),
(1072, 233, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:960;s:4:\"file\";s:23:\"2021/10/galerija-20.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1073, 235, '_wp_attached_file', '2021/10/galerija-19.jpg'),
(1074, 235, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:960;s:4:\"file\";s:23:\"2021/10/galerija-19.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1075, 236, '_wp_attached_file', '2021/10/galerija-1-1.jpg'),
(1076, 236, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:334;s:4:\"file\";s:24:\"2021/10/galerija-1-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1077, 237, '_wp_attached_file', '2021/10/galerija-2-1.jpg'),
(1078, 237, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:749;s:4:\"file\";s:24:\"2021/10/galerija-2-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1079, 238, '_wp_attached_file', '2021/10/galerija-3-1.jpg'),
(1080, 238, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:334;s:4:\"file\";s:24:\"2021/10/galerija-3-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1081, 239, '_wp_attached_file', '2021/10/galerija-4-1.jpg'),
(1082, 239, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:334;s:4:\"file\";s:24:\"2021/10/galerija-4-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1083, 240, '_wp_attached_file', '2021/10/galerija-5-1.jpg'),
(1084, 240, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:334;s:4:\"file\";s:24:\"2021/10/galerija-5-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1085, 241, '_wp_attached_file', '2021/10/galerija-6-1.jpg'),
(1086, 241, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:334;s:4:\"file\";s:24:\"2021/10/galerija-6-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1087, 242, '_wp_attached_file', '2021/10/galerija-7-1.jpg'),
(1088, 242, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:334;s:4:\"file\";s:24:\"2021/10/galerija-7-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1089, 243, '_wp_attached_file', '2021/10/galerija-8-1.jpg'),
(1090, 243, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:334;s:4:\"file\";s:24:\"2021/10/galerija-8-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1091, 244, '_wp_attached_file', '2021/10/galerija-9-1.jpg'),
(1092, 244, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:334;s:4:\"file\";s:24:\"2021/10/galerija-9-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1093, 245, '_wp_attached_file', '2021/10/galerija-10-1.jpg'),
(1094, 245, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:670;s:4:\"file\";s:25:\"2021/10/galerija-10-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1095, 246, '_wp_attached_file', '2021/10/galerija-11-1.jpg'),
(1096, 246, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:670;s:4:\"file\";s:25:\"2021/10/galerija-11-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1097, 247, '_wp_attached_file', '2021/10/galerija-12-1.jpg'),
(1098, 247, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:566;s:4:\"file\";s:25:\"2021/10/galerija-12-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1099, 248, '_wp_attached_file', '2021/10/galerija-13-1.jpg'),
(1100, 248, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:667;s:4:\"file\";s:25:\"2021/10/galerija-13-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1101, 249, '_wp_attached_file', '2021/10/galerija-14-1.jpg'),
(1102, 249, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:670;s:4:\"file\";s:25:\"2021/10/galerija-14-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1103, 250, '_wp_attached_file', '2021/10/galerija-15-1.jpg'),
(1104, 250, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:790;s:4:\"file\";s:25:\"2021/10/galerija-15-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1105, 251, '_wp_attached_file', '2021/10/galerija-16-1.jpg'),
(1106, 251, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:670;s:4:\"file\";s:25:\"2021/10/galerija-16-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1107, 252, '_wp_attached_file', '2021/10/galerija-17-1.jpg'),
(1108, 252, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:718;s:4:\"file\";s:25:\"2021/10/galerija-17-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1109, 253, '_wp_attached_file', '2021/10/galerija-18-1.jpg'),
(1110, 253, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:667;s:4:\"file\";s:25:\"2021/10/galerija-18-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1111, 254, '_wp_attached_file', '2021/10/galerija-19-1.jpg'),
(1112, 254, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:667;s:4:\"file\";s:25:\"2021/10/galerija-19-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1113, 255, '_wp_attached_file', '2021/10/galerija-20-1.jpg'),
(1114, 255, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:667;s:4:\"file\";s:25:\"2021/10/galerija-20-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1115, 256, '_edit_last', '1'),
(1116, 256, '_edit_lock', '1635177076:1'),
(1117, 155, '_edit_last', '1'),
(1118, 155, 'usluga_1', 'Žensko šišanje'),
(1119, 155, '_usluga_1', 'field_6176d187c5dc1'),
(1120, 155, 'cijena_1', '140-170 kn'),
(1121, 155, '_cijena_1', 'field_6176d1bbc5dc9'),
(1122, 155, 'usluga_2', 'Dječje šišanje'),
(1123, 155, '_usluga_2', 'field_6176d198c5dc2'),
(1124, 155, 'cijena_2', '60-80 kn'),
(1125, 155, '_cijena_2', 'field_6176d1c3c5dca'),
(1126, 155, 'usluga_3', 'Muško šišanje'),
(1127, 155, '_usluga_3', 'field_6176d19fc5dc3'),
(1128, 155, 'cijena_3', '80-100 kn'),
(1129, 155, '_cijena_3', 'field_6176d1c5c5dcb'),
(1130, 155, 'usluga_4', ''),
(1131, 155, '_usluga_4', 'field_6176d1a1c5dc4'),
(1132, 155, 'cijena_4', ''),
(1133, 155, '_cijena_4', 'field_6176d1c7c5dcc'),
(1134, 155, 'usluga_5', ''),
(1135, 155, '_usluga_5', 'field_6176d1a3c5dc5'),
(1136, 155, 'cijena_5', ''),
(1137, 155, '_cijena_5', 'field_6176d1c9c5dcd'),
(1138, 155, 'usluga_6', ''),
(1139, 155, '_usluga_6', 'field_6176d1a5c5dc6'),
(1140, 155, 'cijena_6', ''),
(1141, 155, '_cijena_6', 'field_6176d1ccc5dce'),
(1142, 155, 'usluga_7', ''),
(1143, 155, '_usluga_7', 'field_6176d1a7c5dc7'),
(1144, 155, 'cijena_7', ''),
(1145, 155, '_cijena_7', 'field_6176d1cec5dcf'),
(1146, 155, 'usluga_8', ''),
(1147, 155, '_usluga_8', 'field_6176d1a9c5dc8'),
(1148, 155, 'cijena_8', ''),
(1149, 155, '_cijena_8', 'field_6176d1d0c5dd0'),
(1150, 156, '_edit_last', '1'),
(1151, 156, 'usluga_1', 'Frizure na četku ili s uvijačima'),
(1152, 156, '_usluga_1', 'field_6176d187c5dc1'),
(1153, 156, 'cijena_1', '80-130 kn'),
(1154, 156, '_cijena_1', 'field_6176d1bbc5dc9'),
(1155, 156, 'usluga_2', 'Svečane frizure'),
(1156, 156, '_usluga_2', 'field_6176d198c5dc2'),
(1157, 156, 'cijena_2', '200-350 kn'),
(1158, 156, '_cijena_2', 'field_6176d1c3c5dca'),
(1159, 156, 'usluga_3', 'Minival prirodni za volumen'),
(1160, 156, '_usluga_3', 'field_6176d19fc5dc3'),
(1161, 156, 'cijena_3', '200-400 kn'),
(1162, 156, '_cijena_3', 'field_6176d1c5c5dcb'),
(1163, 156, 'usluga_4', ''),
(1164, 156, '_usluga_4', 'field_6176d1a1c5dc4'),
(1165, 156, 'cijena_4', ''),
(1166, 156, '_cijena_4', 'field_6176d1c7c5dcc'),
(1167, 156, 'usluga_5', ''),
(1168, 156, '_usluga_5', 'field_6176d1a3c5dc5'),
(1169, 156, 'cijena_5', ''),
(1170, 156, '_cijena_5', 'field_6176d1c9c5dcd'),
(1171, 156, 'usluga_6', ''),
(1172, 156, '_usluga_6', 'field_6176d1a5c5dc6'),
(1173, 156, 'cijena_6', ''),
(1174, 156, '_cijena_6', 'field_6176d1ccc5dce'),
(1175, 156, 'usluga_7', ''),
(1176, 156, '_usluga_7', 'field_6176d1a7c5dc7'),
(1177, 156, 'cijena_7', ''),
(1178, 156, '_cijena_7', 'field_6176d1cec5dcf'),
(1179, 156, 'usluga_8', ''),
(1180, 156, '_usluga_8', 'field_6176d1a9c5dc8'),
(1181, 156, 'cijena_8', ''),
(1182, 156, '_cijena_8', 'field_6176d1d0c5dd0'),
(1183, 157, '_edit_last', '1'),
(1184, 157, 'usluga_1', 'Trajne i polutrajne boje'),
(1185, 157, '_usluga_1', 'field_6176d187c5dc1'),
(1186, 157, 'cijena_1', '200-350 kn'),
(1187, 157, '_cijena_1', 'field_6176d1bbc5dc9'),
(1188, 157, 'usluga_2', 'Skidanje boje'),
(1189, 157, '_usluga_2', 'field_6176d198c5dc2'),
(1190, 157, 'cijena_2', 'na upit'),
(1191, 157, '_cijena_2', 'field_6176d1c3c5dca'),
(1192, 157, 'usluga_3', 'Pramenovi, ombre, balayage'),
(1193, 157, '_usluga_3', 'field_6176d19fc5dc3'),
(1194, 157, 'cijena_3', '350-650 kn'),
(1195, 157, '_cijena_3', 'field_6176d1c5c5dcb'),
(1196, 157, 'usluga_4', ''),
(1197, 157, '_usluga_4', 'field_6176d1a1c5dc4'),
(1198, 157, 'cijena_4', ''),
(1199, 157, '_cijena_4', 'field_6176d1c7c5dcc'),
(1200, 157, 'usluga_5', ''),
(1201, 157, '_usluga_5', 'field_6176d1a3c5dc5'),
(1202, 157, 'cijena_5', ''),
(1203, 157, '_cijena_5', 'field_6176d1c9c5dcd'),
(1204, 157, 'usluga_6', ''),
(1205, 157, '_usluga_6', 'field_6176d1a5c5dc6'),
(1206, 157, 'cijena_6', ''),
(1207, 157, '_cijena_6', 'field_6176d1ccc5dce'),
(1208, 157, 'usluga_7', ''),
(1209, 157, '_usluga_7', 'field_6176d1a7c5dc7'),
(1210, 157, 'cijena_7', ''),
(1211, 157, '_cijena_7', 'field_6176d1cec5dcf'),
(1212, 157, 'usluga_8', ''),
(1213, 157, '_usluga_8', 'field_6176d1a9c5dc8'),
(1214, 157, 'cijena_8', ''),
(1215, 157, '_cijena_8', 'field_6176d1d0c5dd0'),
(1216, 158, '_edit_last', '1'),
(1217, 158, 'usluga_1', 'Maska za kosu'),
(1218, 158, '_usluga_1', 'field_6176d187c5dc1'),
(1219, 158, 'cijena_1', '30-60 kn'),
(1220, 158, '_cijena_1', 'field_6176d1bbc5dc9'),
(1221, 158, 'usluga_2', 'Ampule za kosu'),
(1222, 158, '_usluga_2', 'field_6176d198c5dc2'),
(1223, 158, 'cijena_2', '20 kn'),
(1224, 158, '_cijena_2', 'field_6176d1c3c5dca'),
(1225, 158, 'usluga_3', 'Detox vlasišta'),
(1226, 158, '_usluga_3', 'field_6176d19fc5dc3'),
(1227, 158, 'cijena_3', '90 kn'),
(1228, 158, '_cijena_3', 'field_6176d1c5c5dcb'),
(1229, 158, 'usluga_4', 'Nashi njega kose'),
(1230, 158, '_usluga_4', 'field_6176d1a1c5dc4'),
(1231, 158, 'cijena_4', '70-150 kn'),
(1232, 158, '_cijena_4', 'field_6176d1c7c5dcc'),
(1233, 158, 'usluga_5', ''),
(1234, 158, '_usluga_5', 'field_6176d1a3c5dc5'),
(1235, 158, 'cijena_5', ''),
(1236, 158, '_cijena_5', 'field_6176d1c9c5dcd'),
(1237, 158, 'usluga_6', ''),
(1238, 158, '_usluga_6', 'field_6176d1a5c5dc6'),
(1239, 158, 'cijena_6', ''),
(1240, 158, '_cijena_6', 'field_6176d1ccc5dce'),
(1241, 158, 'usluga_7', ''),
(1242, 158, '_usluga_7', 'field_6176d1a7c5dc7'),
(1243, 158, 'cijena_7', ''),
(1244, 158, '_cijena_7', 'field_6176d1cec5dcf'),
(1245, 158, 'usluga_8', ''),
(1246, 158, '_usluga_8', 'field_6176d1a9c5dc8'),
(1247, 158, 'cijena_8', ''),
(1248, 158, '_cijena_8', 'field_6176d1d0c5dd0'),
(1249, 159, '_edit_last', '1'),
(1250, 159, 'usluga_1', 'Kisik tretman za lice'),
(1251, 159, '_usluga_1', 'field_6176d187c5dc1'),
(1252, 159, 'cijena_1', '70 kn'),
(1253, 159, '_cijena_1', 'field_6176d1bbc5dc9'),
(1254, 159, 'usluga_2', 'Threading obrva'),
(1255, 159, '_usluga_2', 'field_6176d198c5dc2'),
(1256, 159, 'cijena_2', '80 kn'),
(1257, 159, '_cijena_2', 'field_6176d1c3c5dca'),
(1258, 159, 'usluga_3', 'Bojanje obrva'),
(1259, 159, '_usluga_3', 'field_6176d19fc5dc3'),
(1260, 159, 'cijena_3', '20 kn'),
(1261, 159, '_cijena_3', 'field_6176d1c5c5dcb'),
(1262, 159, 'usluga_4', 'Bojanje trepavica'),
(1263, 159, '_usluga_4', 'field_6176d1a1c5dc4'),
(1264, 159, 'cijena_4', '40 kn'),
(1265, 159, '_cijena_4', 'field_6176d1c7c5dcc'),
(1266, 159, 'usluga_5', ''),
(1267, 159, '_usluga_5', 'field_6176d1a3c5dc5'),
(1268, 159, 'cijena_5', ''),
(1269, 159, '_cijena_5', 'field_6176d1c9c5dcd'),
(1270, 159, 'usluga_6', ''),
(1271, 159, '_usluga_6', 'field_6176d1a5c5dc6'),
(1272, 159, 'cijena_6', ''),
(1273, 159, '_cijena_6', 'field_6176d1ccc5dce'),
(1274, 159, 'usluga_7', ''),
(1275, 159, '_usluga_7', 'field_6176d1a7c5dc7'),
(1276, 159, 'cijena_7', ''),
(1277, 159, '_cijena_7', 'field_6176d1cec5dcf'),
(1278, 159, 'usluga_8', ''),
(1279, 159, '_usluga_8', 'field_6176d1a9c5dc8'),
(1280, 159, 'cijena_8', ''),
(1281, 159, '_cijena_8', 'field_6176d1d0c5dd0'),
(1282, 160, '_edit_last', '1'),
(1283, 160, 'usluga_1', 'šišanje'),
(1284, 160, '_usluga_1', 'field_6176d187c5dc1'),
(1285, 160, 'cijena_1', '80-100 kn'),
(1286, 160, '_cijena_1', 'field_6176d1bbc5dc9'),
(1287, 160, 'usluga_2', 'Minival'),
(1288, 160, '_usluga_2', 'field_6176d198c5dc2'),
(1289, 160, 'cijena_2', '130-150 kn'),
(1290, 160, '_cijena_2', 'field_6176d1c3c5dca'),
(1291, 160, 'usluga_3', 'Bojanje kose'),
(1292, 160, '_usluga_3', 'field_6176d19fc5dc3'),
(1293, 160, 'cijena_3', '90 kn'),
(1294, 160, '_cijena_3', 'field_6176d1c5c5dcb'),
(1295, 160, 'usluga_4', 'Brijanje'),
(1296, 160, '_usluga_4', 'field_6176d1a1c5dc4'),
(1297, 160, 'cijena_4', '70 kn'),
(1298, 160, '_cijena_4', 'field_6176d1c7c5dcc'),
(1299, 160, 'usluga_5', ''),
(1300, 160, '_usluga_5', 'field_6176d1a3c5dc5'),
(1301, 160, 'cijena_5', ''),
(1302, 160, '_cijena_5', 'field_6176d1c9c5dcd'),
(1303, 160, 'usluga_6', ''),
(1304, 160, '_usluga_6', 'field_6176d1a5c5dc6'),
(1305, 160, 'cijena_6', ''),
(1306, 160, '_cijena_6', 'field_6176d1ccc5dce'),
(1307, 160, 'usluga_7', ''),
(1308, 160, '_usluga_7', 'field_6176d1a7c5dc7'),
(1309, 160, 'cijena_7', ''),
(1310, 160, '_cijena_7', 'field_6176d1cec5dcf'),
(1311, 160, 'usluga_8', ''),
(1312, 160, '_usluga_8', 'field_6176d1a9c5dc8'),
(1313, 160, 'cijena_8', ''),
(1314, 160, '_cijena_8', 'field_6176d1d0c5dd0'),
(1315, 282, '_wp_attached_file', '2021/10/user-1.jpg'),
(1316, 282, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:18:\"2021/10/user-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1317, 140, 'ime_autora', 'Nikolina'),
(1318, 140, '_ime_autora', 'field_6176ffa5b50b2'),
(1319, 140, 'o_autoru', 'Voditeljica salona i zaljubljenica u svoj posao i ljude oko sebe. Svakodnevno se trudimo pružiti Vam najbolje usluge uljepšavanja i opuštanja u našem salonu.'),
(1320, 140, '_o_autoru', 'field_61770014b50b4'),
(1321, 140, 'autor_slika', '282'),
(1322, 140, '_autor_slika', 'field_6176ffb3b50b3'),
(1323, 140, 'slika_autora', '282'),
(1324, 140, '_slika_autora', 'field_6176ffb3b50b3'),
(1325, 139, 'ime_autora', 'Nikolina'),
(1326, 139, '_ime_autora', 'field_6176ffa5b50b2'),
(1327, 139, 'o_autoru', 'Voditeljica salona i zaljubljenica u svoj posao i ljude oko sebe. Svakodnevno se trudimo pružiti Vam najbolje usluge uljepšavanja i opuštanja u našem salonu.'),
(1328, 139, '_o_autoru', 'field_61770014b50b4'),
(1329, 139, 'slika_autora', '282'),
(1330, 139, '_slika_autora', 'field_6176ffb3b50b3'),
(1331, 138, 'ime_autora', 'Nikolina'),
(1332, 138, '_ime_autora', 'field_6176ffa5b50b2'),
(1333, 138, 'o_autoru', 'Voditeljica salona i zaljubljenica u svoj posao i ljude oko sebe. Svakodnevno se trudimo pružiti Vam najbolje usluge uljepšavanja i opuštanja u našem salonu.'),
(1334, 138, '_o_autoru', 'field_61770014b50b4'),
(1335, 138, 'slika_autora', '282'),
(1336, 138, '_slika_autora', 'field_6176ffb3b50b3'),
(1337, 137, 'ime_autora', 'Nikolina'),
(1338, 137, '_ime_autora', 'field_6176ffa5b50b2'),
(1339, 137, 'o_autoru', 'Voditeljica salona i zaljubljenica u svoj posao i ljude oko sebe. Svakodnevno se trudimo pružiti Vam najbolje usluge uljepšavanja i opuštanja u našem salonu.'),
(1340, 137, '_o_autoru', 'field_61770014b50b4'),
(1341, 137, 'slika_autora', '282'),
(1342, 137, '_slika_autora', 'field_6176ffb3b50b3'),
(1343, 136, 'ime_autora', 'Nikolina'),
(1344, 136, '_ime_autora', 'field_6176ffa5b50b2'),
(1345, 136, 'o_autoru', 'Voditeljica salona i zaljubljenica u svoj posao i ljude oko sebe. Svakodnevno se trudimo pružiti Vam najbolje usluge uljepšavanja i opuštanja u našem salonu.'),
(1346, 136, '_o_autoru', 'field_61770014b50b4'),
(1347, 136, 'slika_autora', '282'),
(1348, 136, '_slika_autora', 'field_6176ffb3b50b3'),
(1349, 128, 'ime_autora', 'Nikolina'),
(1350, 128, '_ime_autora', 'field_6176ffa5b50b2'),
(1351, 128, 'o_autoru', 'Voditeljica salona i zaljubljenica u svoj posao i ljude oko sebe. Svakodnevno se trudimo pružiti Vam najbolje usluge uljepšavanja i opuštanja u našem salonu.'),
(1352, 128, '_o_autoru', 'field_61770014b50b4'),
(1353, 128, 'slika_autora', '282'),
(1354, 128, '_slika_autora', 'field_6176ffb3b50b3');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-10-23 09:11:18', '2021-10-23 07:11:18', '<!-- wp:paragraph -->\n<p>Dobro došli u WordPress. Ovo je vaša prva objava. Uredite je ili izbrišite, a zatim počnite pisati!</p>\n<!-- /wp:paragraph -->', 'Dobar dan, svijete!', '', 'trash', 'open', 'open', '', 'dan-svijete__trashed', '', '', '2021-10-23 16:15:51', '2021-10-23 14:15:51', '', 0, 'http://localhost/NicoleNicole/?p=1', 0, 'post', '', 1),
(2, 1, '2021-10-23 09:11:18', '2021-10-23 07:11:18', '<!-- wp:paragraph -->\n<p>Ovo je primjer stranice. Razlikuje se od blog objave jer se stalno nalazi na istom mjestu i prikazati će se u izborniku vaše web-stranice (u većini tema). Većina ljudi započinje s \"O meni\" stranicom koja ih predstavlja potencijalnim posjetiteljima web stranice. Na primjer može sadržavati:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Pozdrav! Ja sam dostavljač paket tijekom dana, nadahnuti glumac tijekom noći i ovo je moja web-stranica. Živim u Varaždinu, imam predobrog psa koji se zove Floki i volim piña colada. (I da me ponekad ulovi kiša bez kišobrana.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ili nešto poput ovoga:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Tvrtka XYZ Doohickey osnovana je 1971. godine i od tada pruža kvalitetne doohickejeve javnosti. Smješten u gradu Gotham, XYZ zapošljava više od 2.000 ljudi i čini sve vrste fenomenalnih stvari za Gotham zajednicu.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Kao novi WordPress korisnik, trebali biste posjetiti <a href=\"http://localhost/NicoleNicole/wp-admin/\">nadzornu ploču</a> kako biste obrisali ovu stranicu i kreirali nove stranice za svoj sadržaj. Uživajte!</p>\n<!-- /wp:paragraph -->', 'Primjer stranice', '', 'trash', 'closed', 'open', '', 'primjer-stranice__trashed', '', '', '2021-10-23 14:19:53', '2021-10-23 12:19:53', '', 0, 'http://localhost/NicoleNicole/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-10-23 09:11:18', '2021-10-23 07:11:18', '<!-- wp:heading --><h2>Tko smo mi</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Predloženi tekst: </strong>Adresa naše web-stranice je: http://localhost/NicoleNicole.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Komentari</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Predloženi tekst: </strong>Kada posjetitelji napišu komentar na web-stranici mi prikupljamo podatke prikazane u formi komentara, i također IP adresu posjetitelja kao i string korisničkog agenta preglednika kako lakše detektirali spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Moguće je da je anonimiziran string kreiran iz vaše adrese e-pošte (koji se također zove hash) dostavljen Gravatar servisu kako bismo provjerili koristite li ga. Pravila privatnosti Gravatar servisa dostupna su ovdje: https://automattic.com/privacy/. Nakon odobrenja vašeg komentara, vaša profilna slika je javno vidljiva u kontekstu vašeg komentara.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Medij</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Predloženi tekst: </strong>Ako prenesete sliku na web-stranicu, trebali biste izbjegavati prijenos slika koje imaju ugrađene podatke o lokaciji (EXIF GPS). Posjetitelji web-stranice mogu ih preuzeti i izdvojiti bilo koje podatke o lokaciji iz slika s web-stranice.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Kolačići</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Predloženi tekst: </strong>Ako napišete komentar na našoj web-stranici, možete odabrati spremanje imena, adrese e-pošte i web-stranice u kolačiće. To vam olakšava ponovno komentiranje, da ne morate ponovno unositi te informacije. Ovi kolačići traju godinu dana.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ako posjetite našu stranicu za prijavu, postavit ćemo privremeni kolačić kako bismo utvrdili prihvaća li vaš preglednik kolačiće. Ovaj kolačić ne sadrži osobne podatke i briše se kada ugasite preglednik.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Kada se prijavite, također ćemo postaviti nekoliko kolačića kako bismo sačuvali vaše podatke o prijavi i vaše postavke zaslona. Kolačići prijave traju dva dana, a kolačići postavki zaslona traju godinu dana. Ako odaberete &quot;Zapamti me&quot;, vaša prijava će trajati dva tjedna. Ako se odjavite s računa, kolačići prijave biti će uklonjeni.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ako uredite ili objavite članak, dodatni kolačić biti će spremljen u vašem pregledniku. Ovaj kolačić ne sadrži osobne podatke i samo ukazuje na ID objave članka koji ste upravo uredili. Kolačić istekne nakon 1 dana.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ugrađeni sadržaj s drugih web-stranica</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Predloženi tekst: </strong>Članci na ovoj web-stranici mogu sadržavati ugrađeni sadržaj (npr. video, slike, članke, itd.). Ugrađeni sadržaj sa drugih web-stranica ponaša se istovjetno kao da je posjetitelj posjetio tu drugu web-stranicu.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ove web-stranice možda prikupljaju podatke o vama, koriste kolačiće, imaju ugrađeno dodatno praćenje od trećih strana, i nadgledaju vašu interakciju s tim ugrađenim sadržajem, uključujući praćenje vaše interakcije s ugrađenim sadržajem ako imate račun i prijavljeni ste na web-stranici.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>S kime dijelimo vaše podatke</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Predloženi tekst: </strong>Ako zatražite ponovno postavljanje lozinke, vaša IP adresa bit će uključena u poruku e-pošte za ponovno postavljanje.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Koliko dugo čuvamo vaše podatke</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Predloženi tekst: </strong>Ako napišete komentar, komentar i njegovi meta podaci su sačuvani zauvijek. To je zato da možemo automatski prepoznati i odobriti buduće komentare, umjesto da ih držimo na čekanju za odobrenje.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Za korisnike koji se registriraju na našoj web-stranici (ako ih ima), mi također pohranjujemo osobne podatke koje navedu u njihovim korisničkim profilima, Svi korisnici mogu vidjeti, urediti, ili obrisati svoje osobne podatke u bilo koje vrijeme ( osim što ne mogu promijeniti svoje korisničko ime). Administratori web-stranice također mogu vidjeti i urediti te informacije.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Koja prava imate nad svojim podacima</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Predloženi tekst: </strong>Ako imate račun na ovoj web-stranici, ili ste pisali komentare, možete zatražiti primanje izvozne datoteke osobnih podataka koje imamo o vama, uključujući sve podatke koje ste nam dostavili. Također možete zatražiti brisanje svih osobnih podataka koje imamo o vama. Ovo ne uključuje bilo koje podatke koje smo obavezni držati za administrativne, pravne ili sigurnosne namjene.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Gdje šaljemo vaše podatke</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Predloženi tekst: </strong>Komentari posjetitelja mogu se provjeriti putem automatske usluge za otkrivanje neželjene pošte.</p><!-- /wp:paragraph -->', 'Pravila privatnosti', '', 'trash', 'closed', 'open', '', 'pravila-privatnosti__trashed', '', '', '2021-10-23 14:19:58', '2021-10-23 12:19:58', '', 0, 'http://localhost/NicoleNicole/?page_id=3', 0, 'page', '', 0),
(15, 1, '2021-10-23 14:19:53', '2021-10-23 12:19:53', '<!-- wp:paragraph -->\n<p>Ovo je primjer stranice. Razlikuje se od blog objave jer se stalno nalazi na istom mjestu i prikazati će se u izborniku vaše web-stranice (u većini tema). Većina ljudi započinje s \"O meni\" stranicom koja ih predstavlja potencijalnim posjetiteljima web stranice. Na primjer može sadržavati:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Pozdrav! Ja sam dostavljač paket tijekom dana, nadahnuti glumac tijekom noći i ovo je moja web-stranica. Živim u Varaždinu, imam predobrog psa koji se zove Floki i volim piña colada. (I da me ponekad ulovi kiša bez kišobrana.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ili nešto poput ovoga:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Tvrtka XYZ Doohickey osnovana je 1971. godine i od tada pruža kvalitetne doohickejeve javnosti. Smješten u gradu Gotham, XYZ zapošljava više od 2.000 ljudi i čini sve vrste fenomenalnih stvari za Gotham zajednicu.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Kao novi WordPress korisnik, trebali biste posjetiti <a href=\"http://localhost/NicoleNicole/wp-admin/\">nadzornu ploču</a> kako biste obrisali ovu stranicu i kreirali nove stranice za svoj sadržaj. Uživajte!</p>\n<!-- /wp:paragraph -->', 'Primjer stranice', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-10-23 14:19:53', '2021-10-23 12:19:53', '', 2, 'http://localhost/NicoleNicole/?p=15', 0, 'revision', '', 0),
(16, 1, '2021-10-23 14:19:58', '2021-10-23 12:19:58', '<!-- wp:heading --><h2>Tko smo mi</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Predloženi tekst: </strong>Adresa naše web-stranice je: http://localhost/NicoleNicole.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Komentari</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Predloženi tekst: </strong>Kada posjetitelji napišu komentar na web-stranici mi prikupljamo podatke prikazane u formi komentara, i također IP adresu posjetitelja kao i string korisničkog agenta preglednika kako lakše detektirali spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Moguće je da je anonimiziran string kreiran iz vaše adrese e-pošte (koji se također zove hash) dostavljen Gravatar servisu kako bismo provjerili koristite li ga. Pravila privatnosti Gravatar servisa dostupna su ovdje: https://automattic.com/privacy/. Nakon odobrenja vašeg komentara, vaša profilna slika je javno vidljiva u kontekstu vašeg komentara.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Medij</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Predloženi tekst: </strong>Ako prenesete sliku na web-stranicu, trebali biste izbjegavati prijenos slika koje imaju ugrađene podatke o lokaciji (EXIF GPS). Posjetitelji web-stranice mogu ih preuzeti i izdvojiti bilo koje podatke o lokaciji iz slika s web-stranice.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Kolačići</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Predloženi tekst: </strong>Ako napišete komentar na našoj web-stranici, možete odabrati spremanje imena, adrese e-pošte i web-stranice u kolačiće. To vam olakšava ponovno komentiranje, da ne morate ponovno unositi te informacije. Ovi kolačići traju godinu dana.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ako posjetite našu stranicu za prijavu, postavit ćemo privremeni kolačić kako bismo utvrdili prihvaća li vaš preglednik kolačiće. Ovaj kolačić ne sadrži osobne podatke i briše se kada ugasite preglednik.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Kada se prijavite, također ćemo postaviti nekoliko kolačića kako bismo sačuvali vaše podatke o prijavi i vaše postavke zaslona. Kolačići prijave traju dva dana, a kolačići postavki zaslona traju godinu dana. Ako odaberete &quot;Zapamti me&quot;, vaša prijava će trajati dva tjedna. Ako se odjavite s računa, kolačići prijave biti će uklonjeni.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ako uredite ili objavite članak, dodatni kolačić biti će spremljen u vašem pregledniku. Ovaj kolačić ne sadrži osobne podatke i samo ukazuje na ID objave članka koji ste upravo uredili. Kolačić istekne nakon 1 dana.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ugrađeni sadržaj s drugih web-stranica</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Predloženi tekst: </strong>Članci na ovoj web-stranici mogu sadržavati ugrađeni sadržaj (npr. video, slike, članke, itd.). Ugrađeni sadržaj sa drugih web-stranica ponaša se istovjetno kao da je posjetitelj posjetio tu drugu web-stranicu.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ove web-stranice možda prikupljaju podatke o vama, koriste kolačiće, imaju ugrađeno dodatno praćenje od trećih strana, i nadgledaju vašu interakciju s tim ugrađenim sadržajem, uključujući praćenje vaše interakcije s ugrađenim sadržajem ako imate račun i prijavljeni ste na web-stranici.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>S kime dijelimo vaše podatke</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Predloženi tekst: </strong>Ako zatražite ponovno postavljanje lozinke, vaša IP adresa bit će uključena u poruku e-pošte za ponovno postavljanje.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Koliko dugo čuvamo vaše podatke</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Predloženi tekst: </strong>Ako napišete komentar, komentar i njegovi meta podaci su sačuvani zauvijek. To je zato da možemo automatski prepoznati i odobriti buduće komentare, umjesto da ih držimo na čekanju za odobrenje.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Za korisnike koji se registriraju na našoj web-stranici (ako ih ima), mi također pohranjujemo osobne podatke koje navedu u njihovim korisničkim profilima, Svi korisnici mogu vidjeti, urediti, ili obrisati svoje osobne podatke u bilo koje vrijeme ( osim što ne mogu promijeniti svoje korisničko ime). Administratori web-stranice također mogu vidjeti i urediti te informacije.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Koja prava imate nad svojim podacima</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Predloženi tekst: </strong>Ako imate račun na ovoj web-stranici, ili ste pisali komentare, možete zatražiti primanje izvozne datoteke osobnih podataka koje imamo o vama, uključujući sve podatke koje ste nam dostavili. Također možete zatražiti brisanje svih osobnih podataka koje imamo o vama. Ovo ne uključuje bilo koje podatke koje smo obavezni držati za administrativne, pravne ili sigurnosne namjene.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Gdje šaljemo vaše podatke</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Predloženi tekst: </strong>Komentari posjetitelja mogu se provjeriti putem automatske usluge za otkrivanje neželjene pošte.</p><!-- /wp:paragraph -->', 'Pravila privatnosti', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2021-10-23 14:19:58', '2021-10-23 12:19:58', '', 3, 'http://localhost/NicoleNicole/?p=16', 0, 'revision', '', 0),
(17, 1, '2021-10-23 14:20:35', '2021-10-23 12:20:35', '', 'Početna', '', 'publish', 'closed', 'closed', '', 'pocetna', '', '', '2021-10-23 14:20:35', '2021-10-23 12:20:35', '', 0, 'http://localhost/NicoleNicole/?page_id=17', 0, 'page', '', 0),
(18, 1, '2021-10-23 14:20:35', '2021-10-23 12:20:35', '', 'Početna', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-10-23 14:20:35', '2021-10-23 12:20:35', '', 17, 'http://localhost/NicoleNicole/?p=18', 0, 'revision', '', 0),
(19, 1, '2021-10-23 14:20:51', '2021-10-23 12:20:51', '', 'O nama', '', 'publish', 'closed', 'closed', '', 'o-nama', '', '', '2021-10-23 14:20:51', '2021-10-23 12:20:51', '', 0, 'http://localhost/NicoleNicole/?page_id=19', 0, 'page', '', 0),
(20, 1, '2021-10-23 14:20:51', '2021-10-23 12:20:51', '', 'O nama', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2021-10-23 14:20:51', '2021-10-23 12:20:51', '', 19, 'http://localhost/NicoleNicole/?p=20', 0, 'revision', '', 0),
(21, 1, '2021-10-23 14:21:06', '2021-10-23 12:21:06', '', 'Usluge', '', 'publish', 'closed', 'closed', '', 'usluge', '', '', '2021-10-23 14:21:06', '2021-10-23 12:21:06', '', 0, 'http://localhost/NicoleNicole/?page_id=21', 0, 'page', '', 0),
(22, 1, '2021-10-23 14:21:06', '2021-10-23 12:21:06', '', 'Usluge', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2021-10-23 14:21:06', '2021-10-23 12:21:06', '', 21, 'http://localhost/NicoleNicole/?p=22', 0, 'revision', '', 0),
(23, 1, '2021-10-23 14:21:18', '2021-10-23 12:21:18', '', 'Cjenik', '', 'publish', 'closed', 'closed', '', 'cjenik', '', '', '2021-10-23 14:21:18', '2021-10-23 12:21:18', '', 0, 'http://localhost/NicoleNicole/?page_id=23', 0, 'page', '', 0),
(24, 1, '2021-10-23 14:21:18', '2021-10-23 12:21:18', '', 'Cjenik', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2021-10-23 14:21:18', '2021-10-23 12:21:18', '', 23, 'http://localhost/NicoleNicole/?p=24', 0, 'revision', '', 0),
(25, 1, '2021-10-23 14:21:28', '2021-10-23 12:21:28', '<!-- wp:shortcode -->\n[metagallery id=214]\n<!-- /wp:shortcode -->', 'Galerija', '', 'publish', 'closed', 'closed', '', 'galerija', '', '', '2021-10-25 17:02:40', '2021-10-25 15:02:40', '', 0, 'http://localhost/NicoleNicole/?page_id=25', 0, 'page', '', 0),
(26, 1, '2021-10-23 14:21:28', '2021-10-23 12:21:28', '', 'Galerija', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2021-10-23 14:21:28', '2021-10-23 12:21:28', '', 25, 'http://localhost/NicoleNicole/?p=26', 0, 'revision', '', 0),
(27, 1, '2021-10-23 14:21:41', '2021-10-23 12:21:41', '', 'Savjeti', '', 'publish', 'closed', 'closed', '', 'savjeti', '', '', '2021-10-23 14:21:41', '2021-10-23 12:21:41', '', 0, 'http://localhost/NicoleNicole/?page_id=27', 0, 'page', '', 0),
(28, 1, '2021-10-23 14:21:41', '2021-10-23 12:21:41', '', 'Savjeti', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2021-10-23 14:21:41', '2021-10-23 12:21:41', '', 27, 'http://localhost/NicoleNicole/?p=28', 0, 'revision', '', 0),
(29, 1, '2021-10-23 14:22:28', '2021-10-23 12:22:28', '', 'Kontakt', '', 'publish', 'closed', 'closed', '', 'kontakt', '', '', '2021-10-23 14:22:28', '2021-10-23 12:22:28', '', 0, 'http://localhost/NicoleNicole/?page_id=29', 0, 'page', '', 0),
(30, 1, '2021-10-23 14:22:28', '2021-10-23 12:22:28', '', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2021-10-23 14:22:28', '2021-10-23 12:22:28', '', 29, 'http://localhost/NicoleNicole/?p=30', 0, 'revision', '', 0),
(31, 1, '2021-10-25 08:42:33', '2021-10-23 12:23:23', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2021-10-25 08:42:33', '2021-10-25 06:42:33', '', 0, 'http://localhost/NicoleNicole/?p=31', 7, 'nav_menu_item', '', 0),
(32, 1, '2021-10-25 08:42:33', '2021-10-23 12:23:23', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2021-10-25 08:42:33', '2021-10-25 06:42:33', '', 0, 'http://localhost/NicoleNicole/?p=32', 6, 'nav_menu_item', '', 0),
(33, 1, '2021-10-25 08:42:32', '2021-10-23 12:23:23', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2021-10-25 08:42:32', '2021-10-25 06:42:32', '', 0, 'http://localhost/NicoleNicole/?p=33', 5, 'nav_menu_item', '', 0),
(34, 1, '2021-10-25 08:42:32', '2021-10-23 12:23:23', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2021-10-25 08:42:32', '2021-10-25 06:42:32', '', 0, 'http://localhost/NicoleNicole/?p=34', 4, 'nav_menu_item', '', 0),
(35, 1, '2021-10-25 08:42:32', '2021-10-23 12:23:22', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2021-10-25 08:42:32', '2021-10-25 06:42:32', '', 0, 'http://localhost/NicoleNicole/?p=35', 3, 'nav_menu_item', '', 0),
(36, 1, '2021-10-25 08:42:32', '2021-10-23 12:23:22', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2021-10-25 08:42:32', '2021-10-25 06:42:32', '', 0, 'http://localhost/NicoleNicole/?p=36', 2, 'nav_menu_item', '', 0),
(38, 1, '2021-10-23 16:00:09', '2021-10-23 14:00:09', '<!-- wp:paragraph -->\n<p>Family friendly salon za sve generacije. Osim klasičnih usluga šišanja, bojanja, modeliranja frizura, već duže vrijeme i puno više od toga. <br>Posvetite vrijeme sebi i svojem izgledu, ali i zdravlju kose jer jedno bez drugoga ne ide. Tu smo za Vas!</p>\n<!-- /wp:paragraph -->', 'Frizerski salon', '', 'publish', 'open', 'open', '', 'frizerski-salon', '', '', '2021-10-23 16:07:31', '2021-10-23 14:07:31', '', 0, 'http://localhost/NicoleNicole/?p=38', 0, 'post', '', 0),
(39, 1, '2021-10-23 16:00:09', '2021-10-23 14:00:09', '<!-- wp:paragraph -->\n<p>Family friendly salon u kojemu će se cijela Vaša obitelj osjećati ugodno.</p>\n<!-- /wp:paragraph -->', 'Frizerski salon', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2021-10-23 16:00:09', '2021-10-23 14:00:09', '', 38, 'http://localhost/NicoleNicole/?p=39', 0, 'revision', '', 0),
(40, 1, '2021-10-23 16:07:11', '2021-10-23 14:07:11', '<!-- wp:paragraph -->\n<p>Family friendly salon za sve generacije. Osim klasičnih usluga šišanja, bojanja, modeliranja frizura, već duže vrijeme i puno više od toga. <br>Posvetite vrijeme sebi i svojem izgledu, ali i zdravlju kose jer</p>\n<!-- /wp:paragraph -->', 'Frizerski salon', '', 'inherit', 'closed', 'closed', '', '38-autosave-v1', '', '', '2021-10-23 16:07:11', '2021-10-23 14:07:11', '', 38, 'http://localhost/NicoleNicole/?p=40', 0, 'revision', '', 0),
(41, 1, '2021-10-23 16:07:31', '2021-10-23 14:07:31', '<!-- wp:paragraph -->\n<p>Family friendly salon za sve generacije. Osim klasičnih usluga šišanja, bojanja, modeliranja frizura, već duže vrijeme i puno više od toga. <br>Posvetite vrijeme sebi i svojem izgledu, ali i zdravlju kose jer jedno bez drugoga ne ide. Tu smo za Vas!</p>\n<!-- /wp:paragraph -->', 'Frizerski salon', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2021-10-23 16:07:31', '2021-10-23 14:07:31', '', 38, 'http://localhost/NicoleNicole/?p=41', 0, 'revision', '', 0),
(42, 1, '2021-10-23 16:15:51', '2021-10-23 14:15:51', '<!-- wp:paragraph -->\n<p>Dobro došli u WordPress. Ovo je vaša prva objava. Uredite je ili izbrišite, a zatim počnite pisati!</p>\n<!-- /wp:paragraph -->', 'Dobar dan, svijete!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-10-23 16:15:51', '2021-10-23 14:15:51', '', 1, 'http://localhost/NicoleNicole/?p=42', 0, 'revision', '', 0),
(43, 1, '2021-10-23 16:37:49', '2021-10-23 14:37:49', '<!-- wp:paragraph -->\n<p>Salon je otvoren 2001. godine. Od samoga početka naši se radnici educiraju na najboljim frizerskim seminarima u Hrvatskoj i inozemstvu. Zahvaljujući predavanjima vrhunskih stručnjaka, frizeri salona Nicole Nicole uvijek iznova proširuju svoja znanja i prate najnovije trendove mode i struke.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mi brinemo o dubinskoj njezi Vaše kose i lica! Nudimo jedinstvene i vrlo efikasne tretmane kisikom za lice koji brišu umor i vraćaju vlagu i sjaj Vašoj koži.<br>Osim navedenih usluga, kod nas potražite idealne preparate prilagođene Vašoj kosi te se pobrinite da svojoj kosi pružite najbolji mogući tretman iz udobnosti vlastitoga doma.</p>\n<!-- /wp:paragraph -->', 'Nicole Nicole', '', 'publish', 'open', 'open', '', 'nicole-nicole', '', '', '2021-10-23 16:46:44', '2021-10-23 14:46:44', '', 0, 'http://localhost/NicoleNicole/?p=43', 0, 'post', '', 0),
(44, 1, '2021-10-23 16:37:49', '2021-10-23 14:37:49', '<!-- wp:paragraph -->\n<p>Salon je otvoren 2001. godine. Od samoga početka naši se radnici educiraju na najboljim frizerskim seminarima u Hrvatskoj i inozemstvu. Zahvaljujući predavanjima vrhunskih stručnjaka, frizeri salona Nicole Nicole uvijek iznova proširuju svoja znanja i prate najnovije trendove mode i struke.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mi brinemo o dubinskoj njezi Vaše kose i lica! Nudimo jedinstvene i vrlo efikasne tretmane kisikom za lice koji brišu umor i vraćaju vlagu i sjaj Vašoj koži.</p>\n<!-- /wp:paragraph -->', 'Nicole Nicole', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2021-10-23 16:37:49', '2021-10-23 14:37:49', '', 43, 'http://localhost/NicoleNicole/?p=44', 0, 'revision', '', 0),
(45, 1, '2021-10-23 16:39:49', '2021-10-23 14:39:49', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Naslovna', 'naslovna', 'publish', 'closed', 'closed', '', 'group_61741e48c324d', '', '', '2021-10-23 19:48:42', '2021-10-23 17:48:42', '', 0, 'http://localhost/NicoleNicole/?post_type=acf-field-group&#038;p=45', 0, 'acf-field-group', '', 0),
(46, 1, '2021-10-23 16:39:49', '2021-10-23 14:39:49', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'podnaslov', 'podnaslov', 'publish', 'closed', 'closed', '', 'field_61741e69440be', '', '', '2021-10-23 16:39:49', '2021-10-23 14:39:49', '', 45, 'http://localhost/NicoleNicole/?post_type=acf-field&p=46', 0, 'acf-field', '', 0),
(47, 1, '2021-10-23 16:41:54', '2021-10-23 14:41:54', '<!-- wp:paragraph -->\n<p>Salon je otvoren 2001. godine. Od samoga početka naši se radnici educiraju na najboljim frizerskim seminarima u Hrvatskoj i inozemstvu. Zahvaljujući predavanjima vrhunskih stručnjaka, frizeri salona Nicole Nicole uvijek iznova proširuju svoja znanja i prate najnovije trendove mode i struke.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mi brinemo o dubinskoj njezi Vaše kose i lica! Nudimo jedinstvene i vrlo efikasne tretmane kisikom za lice koji brišu umor i vraćaju vlagu i sjaj Vašoj koži.</p>\n<!-- /wp:paragraph -->', 'Nicole Nicole', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2021-10-23 16:41:54', '2021-10-23 14:41:54', '', 43, 'http://localhost/NicoleNicole/?p=47', 0, 'revision', '', 0),
(49, 1, '2021-10-23 16:46:42', '2021-10-23 14:46:42', '<!-- wp:paragraph -->\n<p>Salon je otvoren 2001. godine. Od samoga početka naši se radnici educiraju na najboljim frizerskim seminarima u Hrvatskoj i inozemstvu. Zahvaljujući predavanjima vrhunskih stručnjaka, frizeri salona Nicole Nicole uvijek iznova proširuju svoja znanja i prate najnovije trendove mode i struke.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mi brinemo o dubinskoj njezi Vaše kose i lica! Nudimo jedinstvene i vrlo efikasne tretmane kisikom za lice koji brišu umor i vraćaju vlagu i sjaj Vašoj koži.<br>Osim navedenih usluga, kod nas potražite idealne preparate prilagođene Vašoj kosi te se pobrinite da svojoj kosi pružite najbolji mogući tretman iz udobnosti vlastitoga doma.</p>\n<!-- /wp:paragraph -->', 'Nicole Nicole', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2021-10-23 16:46:42', '2021-10-23 14:46:42', '', 43, 'http://localhost/NicoleNicole/?p=49', 0, 'revision', '', 0),
(50, 1, '2021-10-23 16:46:44', '2021-10-23 14:46:44', '<!-- wp:paragraph -->\n<p>Salon je otvoren 2001. godine. Od samoga početka naši se radnici educiraju na najboljim frizerskim seminarima u Hrvatskoj i inozemstvu. Zahvaljujući predavanjima vrhunskih stručnjaka, frizeri salona Nicole Nicole uvijek iznova proširuju svoja znanja i prate najnovije trendove mode i struke.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mi brinemo o dubinskoj njezi Vaše kose i lica! Nudimo jedinstvene i vrlo efikasne tretmane kisikom za lice koji brišu umor i vraćaju vlagu i sjaj Vašoj koži.<br>Osim navedenih usluga, kod nas potražite idealne preparate prilagođene Vašoj kosi te se pobrinite da svojoj kosi pružite najbolji mogući tretman iz udobnosti vlastitoga doma.</p>\n<!-- /wp:paragraph -->', 'Nicole Nicole', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2021-10-23 16:46:44', '2021-10-23 14:46:44', '', 43, 'http://localhost/NicoleNicole/?p=50', 0, 'revision', '', 0),
(51, 1, '2021-10-23 16:50:15', '2021-10-23 14:50:15', '', 'Tretmani za zdravlje Vaše kose', '', 'trash', 'open', 'open', '', 'za-zdravlje-vase-kose__trashed', '', '', '2021-10-23 19:48:57', '2021-10-23 17:48:57', '', 0, 'http://localhost/NicoleNicole/?p=51', 0, 'post', '', 0),
(52, 1, '2021-10-23 16:50:15', '2021-10-23 14:50:15', '', 'Za zdravlje Vaše kose', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2021-10-23 16:50:15', '2021-10-23 14:50:15', '', 51, 'http://localhost/NicoleNicole/?p=52', 0, 'revision', '', 0),
(53, 1, '2021-10-23 16:50:18', '2021-10-23 14:50:18', '', 'Za zdravlje Vaše kose', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2021-10-23 16:50:18', '2021-10-23 14:50:18', '', 51, 'http://localhost/NicoleNicole/?p=53', 0, 'revision', '', 0),
(54, 1, '2021-10-23 18:09:17', '2021-10-23 16:09:17', '', 'Tretmani za zdravlje Vaše kose', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2021-10-23 18:09:17', '2021-10-23 16:09:17', '', 51, 'http://localhost/NicoleNicole/?p=54', 0, 'revision', '', 0),
(55, 1, '2021-10-23 18:09:20', '2021-10-23 16:09:20', '', 'Tretmani za zdravlje Vaše kose', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2021-10-23 18:09:20', '2021-10-23 16:09:20', '', 51, 'http://localhost/NicoleNicole/?p=55', 0, 'revision', '', 0),
(56, 1, '2021-10-23 18:14:25', '2021-10-23 16:14:25', '<!-- wp:paragraph -->\n<p>Tretman uključuje piling i glinu koja apsorbira višak sebuma i nečistoća te uklanja toksine i neugodan miris vlasišta. Kako bi se došlo do rezultatat, tretman se isprva treba ponavljati više puta tijekom 4 do 5 tjedana. </p>\n<!-- /wp:paragraph -->', 'Rješavanje masnoće vlasišta', '', 'trash', 'open', 'open', '', 'rjesavanje-masnoce-vlasista__trashed', '', '', '2021-10-23 19:49:01', '2021-10-23 17:49:01', '', 0, 'http://localhost/NicoleNicole/?p=56', 0, 'post', '', 0),
(57, 1, '2021-10-23 18:14:25', '2021-10-23 16:14:25', '<!-- wp:paragraph -->\n<p>Tretman uključuje piling i glinu koja apsorbira višak sebuma i nečistoća te uklanja toksine i neugodan miris vlasišta. Kako bi se došlo do rezultatat, tretman se isprva treba ponavljati više puta tijekom 4 do 5 tjedana. </p>\n<!-- /wp:paragraph -->', 'Rješavanje masnoće vlasišta', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2021-10-23 18:14:25', '2021-10-23 16:14:25', '', 56, 'http://localhost/NicoleNicole/?p=57', 0, 'revision', '', 0),
(59, 1, '2021-10-23 18:24:31', '2021-10-23 16:24:31', '<!-- wp:paragraph -->\n<p> Tretman uključuje piling i glinu koja apsorbira višak sebuma i nečistoća te uklanja toksine i neugodan miris vlasišta. Kako bi se došlo do rezultatat, tretman se isprva treba ponavljati više puta tijekom 4 do 5 tjedana.  </p>\n<!-- /wp:paragraph -->', 'Rješavanje masnoće vlasišta', '', 'trash', 'closed', 'closed', '', 'rjesavanje-masnoce-vlasista__trashed', '', '', '2021-10-23 19:49:17', '2021-10-23 17:49:17', '', 0, 'http://localhost/NicoleNicole/?post_type=tretmani&#038;p=59', 0, 'tretmani', '', 0),
(60, 1, '2021-10-23 18:27:19', '2021-10-23 16:27:19', '<!-- wp:paragraph -->\n<p>Na bazi zelene kave i metvice koja će osvježiti vlasište i obnoviti ga.<br>Ovaj tretman dodatno podupiremo tretmanima kisikom koji su izvrsni za buđenje korijena kose djelujući na probleme vlasišta.</p>\n<!-- /wp:paragraph -->', 'Tretman za rast kose', '', 'trash', 'closed', 'closed', '', 'tretman-za-rast-kose__trashed', '', '', '2021-10-23 19:49:16', '2021-10-23 17:49:16', '', 0, 'http://localhost/NicoleNicole/?post_type=tretmani&#038;p=60', 0, 'tretmani', '', 0),
(61, 1, '2021-10-23 18:31:51', '2021-10-23 16:31:51', '<!-- wp:paragraph -->\n<p>Osjetljiva je koža često podložna nelagodi i iritacijama. Proizvodima na bazi komorača i amarantha nježno čistimo vlasište bez iritacije kože. Umirujuće djelovanje vraća vlasište u prirodno stanje.</p>\n<!-- /wp:paragraph -->', 'Tretman za osjetljivo vlasište', '', 'trash', 'closed', 'closed', '', 'tretman-za-osjetljivo-vlasiste__trashed', '', '', '2021-10-23 19:49:16', '2021-10-23 17:49:16', '', 0, 'http://localhost/NicoleNicole/?post_type=tretmani&#038;p=61', 0, 'tretmani', '', 0),
(62, 1, '2021-10-23 18:34:21', '2021-10-23 16:34:21', '<!-- wp:paragraph -->\n<p>Linija na bazi ružmarina i timijana uklanja masnu i suhu prhut te ponovno aktivira mikro-cirkulaciju vlasišta.Ekstrakt vrbe djeluje umirujuće na vlasište te smanjuje svrbež i iritacije.</p>\n<!-- /wp:paragraph -->', 'Rješavanje prhuti', '', 'trash', 'closed', 'closed', '', 'rjesavanje-prhuti__trashed', '', '', '2021-10-23 19:49:16', '2021-10-23 17:49:16', '', 0, 'http://localhost/NicoleNicole/?post_type=tretmani&#038;p=62', 0, 'tretmani', '', 0),
(63, 1, '2021-10-23 19:01:46', '2021-10-23 17:01:46', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"tretmani\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Tretmani-objave', 'tretmani-objave', 'publish', 'closed', 'closed', '', 'group_61743f364d12b', '', '', '2021-10-24 13:46:35', '2021-10-24 11:46:35', '', 0, 'http://localhost/NicoleNicole/?post_type=acf-field-group&#038;p=63', 0, 'acf-field-group', '', 0),
(72, 1, '2021-10-23 19:03:43', '2021-10-23 17:03:43', '', 'Svi tretmani', '', 'trash', 'closed', 'closed', '', 'svi-tretmani__trashed', '', '', '2021-10-24 13:35:04', '2021-10-24 11:35:04', '', 0, 'http://localhost/NicoleNicole/?post_type=tretmani&#038;p=72', 0, 'tretmani', '', 0),
(73, 1, '2021-10-23 19:48:42', '2021-10-23 17:48:42', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'span', 'span', 'publish', 'closed', 'closed', '', 'field_61744aee96695', '', '', '2021-10-23 19:48:42', '2021-10-23 17:48:42', '', 45, 'http://localhost/NicoleNicole/?post_type=acf-field&p=73', 1, 'acf-field', '', 0),
(74, 1, '2021-10-23 19:59:25', '2021-10-23 17:59:25', '<!-- wp:paragraph -->\n<p>Dragi naši muškarci, za Vas smo u studenom pripremili odličnu akciju od 30% popusta na sve naše usluge namijenjene upravo Vama. Dođite na novu frizuru ili uredite svoju bradu i brkove po najboljoj cijeni u gradu! Studeni je Vaš mjesec!</p>\n<!-- /wp:paragraph -->', 'Popusta za sve muškarce u studenom', '', 'publish', 'open', 'open', '', 'popusta-za-sve-muskarce-u-studenom', '', '', '2021-10-23 20:03:14', '2021-10-23 18:03:14', '', 0, 'http://localhost/NicoleNicole/?p=74', 0, 'post', '', 0),
(75, 1, '2021-10-23 19:59:25', '2021-10-23 17:59:25', '<!-- wp:paragraph -->\n<p>Dragi naši muškarci, za Vas smo u studenom pripremili odličnu akciju od 30% popusta na sve naše usluge namijenjene upravo Vama. Dođite na novu frizuru ili uredite svoju bradu i brkove po najboljoj cijeni u gradu! Studeni je Vaš mjesec!</p>\n<!-- /wp:paragraph -->', 'Popusta za sve muškarce u studenom', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2021-10-23 19:59:25', '2021-10-23 17:59:25', '', 74, 'http://localhost/NicoleNicole/?p=75', 0, 'revision', '', 0),
(76, 1, '2021-10-23 19:59:28', '2021-10-23 17:59:28', '<!-- wp:paragraph -->\n<p>Dragi naši muškarci, za Vas smo u studenom pripremili odličnu akciju od 30% popusta na sve naše usluge namijenjene upravo Vama. Dođite na novu frizuru ili uredite svoju bradu i brkove po najboljoj cijeni u gradu! Studeni je Vaš mjesec!</p>\n<!-- /wp:paragraph -->', 'Popusta za sve muškarce u studenom', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2021-10-23 19:59:28', '2021-10-23 17:59:28', '', 74, 'http://localhost/NicoleNicole/?p=76', 0, 'revision', '', 0),
(77, 1, '2021-10-23 20:03:14', '2021-10-23 18:03:14', '<!-- wp:paragraph -->\n<p>Dragi naši muškarci, za Vas smo u studenom pripremili odličnu akciju od 30% popusta na sve naše usluge namijenjene upravo Vama. Dođite na novu frizuru ili uredite svoju bradu i brkove po najboljoj cijeni u gradu! Studeni je Vaš mjesec!</p>\n<!-- /wp:paragraph -->', 'Popusta za sve muškarce u studenom', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2021-10-23 20:03:14', '2021-10-23 18:03:14', '', 74, 'http://localhost/NicoleNicole/?p=77', 0, 'revision', '', 0),
(79, 1, '2021-10-23 20:51:45', '2021-10-23 18:51:45', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:15:\"cjenik_naslovna\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Cjenik usluga', 'cjenik-usluga', 'publish', 'closed', 'closed', '', 'group_61745029559ed', '', '', '2021-10-24 20:23:05', '2021-10-24 18:23:05', '', 0, 'http://localhost/NicoleNicole/?post_type=acf-field-group&#038;p=79', 0, 'acf-field-group', '', 0),
(83, 1, '2021-10-23 20:53:21', '2021-10-23 18:53:21', '', 'Svi osvrti', '', 'trash', 'closed', 'closed', '', 'svi-osvrti__trashed', '', '', '2021-10-24 16:18:00', '2021-10-24 14:18:00', '', 0, 'http://localhost/NicoleNicole/?post_type=osvrti&#038;p=83', 0, 'osvrti', '', 0),
(84, 1, '2021-10-23 20:56:19', '2021-10-23 18:56:19', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"osvrti\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Osvrti', 'osvrti', 'publish', 'closed', 'closed', '', 'group_61745a2b150d2', '', '', '2021-10-24 16:19:21', '2021-10-24 14:19:21', '', 0, 'http://localhost/NicoleNicole/?post_type=acf-field-group&#038;p=84', 0, 'acf-field-group', '', 0),
(95, 1, '2021-10-23 21:20:20', '2021-10-23 19:20:20', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:16:\"savjeti-naslovna\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Savjeti', 'savjeti', 'publish', 'closed', 'closed', '', 'group_61745ed61a813', '', '', '2021-10-25 21:16:10', '2021-10-25 19:16:10', '', 0, 'http://localhost/NicoleNicole/?post_type=acf-field-group&#038;p=95', 0, 'acf-field-group', '', 0),
(110, 1, '2021-10-23 21:43:15', '2021-10-23 19:43:15', '', 'Savjeti naslovna', '', 'trash', 'closed', 'closed', '', 'savjeti-naslovna__trashed', '', '', '2021-10-24 16:49:40', '2021-10-24 14:49:40', '', 0, 'http://localhost/NicoleNicole/?post_type=savjeti_naslovna&#038;p=110', 0, 'savjeti_naslovna', '', 0),
(111, 1, '2021-10-24 10:14:47', '2021-10-24 08:14:47', '<!-- wp:paragraph -->\n<p>Tretman uključuje piling i glinu koja apsorbira višak sebuma i nečistoća te uklanja toksine i neugodan miris vlasišta. Kako bi se došlo do rezultatat, tretman se isprva treba ponavljati više puta tijekom 4 do 5 tjedana.</p>\n<!-- /wp:paragraph -->', 'Rješavanje masnoće vlasišta', '', 'publish', 'closed', 'closed', '', 'rjesavanje-masnoce-vlasista', '', '', '2021-10-24 14:05:14', '2021-10-24 12:05:14', '', 0, 'http://localhost/NicoleNicole/?post_type=tretmani&#038;p=111', 0, 'tretmani', '', 0),
(112, 1, '2021-10-24 10:14:11', '2021-10-24 08:14:11', '<!-- wp:paragraph -->\n<p>Tretman uključuje piling i glinu koja apsorbira višak sebuma i nečistoća te uklanja toksine i neugodan miris vlasišta. Kako bi se došlo do rezultatat, tretman se isprva treba ponavljati više puta tijekom 4 do 5 tjedana.</p>\n<!-- /wp:paragraph -->', 'Svi tretmani', '', 'inherit', 'closed', 'closed', '', '72-autosave-v1', '', '', '2021-10-24 10:14:11', '2021-10-24 08:14:11', '', 72, 'http://localhost/NicoleNicole/?p=112', 0, 'revision', '', 0),
(113, 1, '2021-10-24 10:14:28', '2021-10-24 08:14:28', '', 'flaticon1', '', 'inherit', 'open', 'closed', '', 'flaticon1', '', '', '2021-10-24 10:14:28', '2021-10-24 08:14:28', '', 111, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/flaticon1.png', 0, 'attachment', 'image/png', 0),
(114, 1, '2021-10-24 10:15:23', '2021-10-24 08:15:23', '<!-- wp:paragraph -->\n<p>Na bazi zelene kave i metvice koja će osvježiti vlasište i obnoviti ga.<br>Ovaj tretman dodatno podupiremo tretmanima kisikom koji su izvrsni za buđenje korijena kose djelujući na probleme vlasišta.</p>\n<!-- /wp:paragraph -->', 'Tretman za rast kose', '', 'publish', 'closed', 'closed', '', 'tretman-za-rast-kose', '', '', '2021-10-24 14:06:11', '2021-10-24 12:06:11', '', 0, 'http://localhost/NicoleNicole/?post_type=tretmani&#038;p=114', 0, 'tretmani', '', 0),
(115, 1, '2021-10-24 10:15:19', '2021-10-24 08:15:19', '', 'flaticon', '', 'inherit', 'open', 'closed', '', 'flaticon', '', '', '2021-10-24 10:15:19', '2021-10-24 08:15:19', '', 114, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/flaticon.png', 0, 'attachment', 'image/png', 0),
(116, 1, '2021-10-24 10:15:51', '2021-10-24 08:15:51', '<!-- wp:paragraph -->\n<p>Osjetljiva je koža često podložna nelagodi i iritacijama. Proizvodima na bazi komorača i amarantha nježno čistimo vlasište bez iritacije kože. Umirujuće djelovanje vraća vlasište u prirodno stanje.</p>\n<!-- /wp:paragraph -->', 'Tretman za osjetljivo vlasište', '', 'publish', 'closed', 'closed', '', 'tretman-za-osjetljivo-vlasiste', '', '', '2021-10-24 14:05:41', '2021-10-24 12:05:41', '', 0, 'http://localhost/NicoleNicole/?post_type=tretmani&#038;p=116', 0, 'tretmani', '', 0),
(117, 1, '2021-10-24 10:16:25', '2021-10-24 08:16:25', '<!-- wp:paragraph -->\n<p>Linija na bazi ružmarina i timijana uklanja masnu i suhu prhut te ponovno aktivira mikro-cirkulaciju vlasišta.Ekstrakt vrbe djeluje umirujuće na vlasište te smanjuje svrbež i iritacije.</p>\n<!-- /wp:paragraph -->', 'Rješavanje prhuti', '', 'publish', 'closed', 'closed', '', 'rjesavanje-prhuti', '', '', '2021-10-24 14:05:55', '2021-10-24 12:05:55', '', 0, 'http://localhost/NicoleNicole/?post_type=tretmani&#038;p=117', 0, 'tretmani', '', 0),
(118, 1, '2021-10-24 13:39:54', '2021-10-24 11:39:54', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'slika', 'slika', 'publish', 'closed', 'closed', '', 'field_617545c005331', '', '', '2021-10-24 13:46:35', '2021-10-24 11:46:35', '', 63, 'http://localhost/NicoleNicole/?post_type=acf-field&#038;p=118', 0, 'acf-field', '', 0),
(120, 1, '2021-10-24 16:09:12', '2021-10-24 14:09:12', '<!-- wp:paragraph -->\n<p>\"Predivno i ugodno mjesto, s obzirom na to da sam aromaterapeut obožavam mjesta gdje se koriste eterična ulja jer znam koliko znače za dobrobit organizma. Otići na frizuru u Nicole-Nicole je uživancija na puno razina.\"</p>\n<!-- /wp:paragraph -->', 'Tajana Varićak', '', 'publish', 'closed', 'closed', '', 'tajana-varicak', '', '', '2021-10-24 16:20:04', '2021-10-24 14:20:04', '', 0, 'http://localhost/NicoleNicole/?post_type=osvrti&#038;p=120', 0, 'osvrti', '', 0),
(121, 1, '2021-10-24 16:09:43', '2021-10-24 14:09:43', '<!-- wp:paragraph -->\n<p>\"Moj odlazak frizeru već odavno nije samo šišanje, a zadnjih par puta dobio je još jednu novu dimenziju jer je postao predivni rasadnik sinkroniciteta i sudbonosnoh susreta! Draga Suza, tako te bilo lijepo vidjeti i zagrliti danas! Istinski sam se razveselila! Draga Nikolina, hvala ti što tako majstorski ubodeš pravi termin za mene :)\"</p>\n<!-- /wp:paragraph -->', 'Ljiljana Marjanović', '', 'publish', 'closed', 'closed', '', 'ljiljana-marjanovic', '', '', '2021-10-24 16:20:28', '2021-10-24 14:20:28', '', 0, 'http://localhost/NicoleNicole/?post_type=osvrti&#038;p=121', 0, 'osvrti', '', 0),
(122, 1, '2021-10-24 16:10:19', '2021-10-24 14:10:19', '<!-- wp:paragraph -->\n<p>\"Žena s velikim srcem koja ljubav pretače u posao koji voli, Nicole-Nicole.\"</p>\n<!-- /wp:paragraph -->', 'Gordana Horvat', '', 'publish', 'closed', 'closed', '', 'gordana-horvat', '', '', '2021-10-24 16:20:48', '2021-10-24 14:20:48', '', 0, 'http://localhost/NicoleNicole/?post_type=osvrti&#038;p=122', 0, 'osvrti', '', 0),
(123, 1, '2021-10-24 16:10:46', '2021-10-24 14:10:46', '<!-- wp:paragraph -->\n<p>\"Jedino mjesto gdje sam kao doma. Više ne odlazim u salone gdje je glasno tračanje, slušanje neke glazbe koja mi para uši i sl. Ovaj balans glazbe i ugodnih mirisa je opuštajuć nakon stresnog dana!\"</p>\n<!-- /wp:paragraph -->', 'Ivana', '', 'publish', 'closed', 'closed', '', 'ivana', '', '', '2021-10-24 16:21:03', '2021-10-24 14:21:03', '', 0, 'http://localhost/NicoleNicole/?post_type=osvrti&#038;p=123', 0, 'osvrti', '', 0),
(124, 1, '2021-10-24 16:11:55', '2021-10-24 14:11:55', '<!-- wp:paragraph -->\n<p>Osvrti</p>\n<!-- /wp:paragraph -->', 'Što kažu naši klijenti', '', 'inherit', 'closed', 'closed', '', '83-autosave-v1', '', '', '2021-10-24 16:11:55', '2021-10-24 14:11:55', '', 83, 'http://localhost/NicoleNicole/?p=124', 0, 'revision', '', 0),
(125, 1, '2021-10-24 16:19:20', '2021-10-24 14:19:20', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'slika', 'slika', 'publish', 'closed', 'closed', '', 'field_61756b4aff6e8', '', '', '2021-10-24 16:19:20', '2021-10-24 14:19:20', '', 84, 'http://localhost/NicoleNicole/?post_type=acf-field&p=125', 0, 'acf-field', '', 0),
(126, 1, '2021-10-24 16:19:43', '2021-10-24 14:19:43', '', 'announcement', '', 'inherit', 'open', 'closed', '', 'announcement', '', '', '2021-10-24 16:19:43', '2021-10-24 14:19:43', '', 120, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/announcement.png', 0, 'attachment', 'image/png', 0),
(127, 1, '2021-10-24 16:19:44', '2021-10-24 14:19:44', '', 'announcement3', '', 'inherit', 'open', 'closed', '', 'announcement3', '', '', '2021-10-24 16:19:44', '2021-10-24 14:19:44', '', 120, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/announcement3.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(128, 1, '2021-10-24 16:44:44', '2021-10-24 14:44:44', '<!-- wp:paragraph -->\n<p>Budite se i liježete umorni? Izvadite krv, možda je riječ o manjku ovog mikronutrijenta .<br>Ako tu i tamo primijetite nekoliko dlaka u kadi ili nakon češljanja, to nije razlog za brigu jer je normalno gubiti oko 100 vlasi dnevno. Također, morate znati da kosa s godinama slabi i sve je tanja. To je velikim dijelom i nasljedno. <br>Ali nagli gubitak kose, pogotovo u mlađim godinama, može biti znak neke bolesti ili nedostatka nekog nutrijenta u organizmu, a najčešće se radi o željezu. <br>Deficit željeza najčešći je kod žena reproduktivne dobi. <br>Dobra vijest je da je takvo stanje lako izlječivo, a kosa će se nakon terapije oporaviti. Nemote nagađati i tretirati kosu neprovjerenim sredstvima jer bi to moglo samo pogoršati situaciju. Osim opadanja kose, simptomi mogu biti i umor, hladne ruke i stopala. Ako sumnjate da vam fali željeza, možda je vrijeme da kontrolirate njegovu razinu u krvi. Ako nalaz pokaže manjak željeza, liječnik će vam dati terapiju i ponovno provjeriti stanje nekoliko tjedana nakon uzimanja tableta. Ako Suplementi ne budu pomagali, treba istražiti što uzrokuje manjak željeza i tretirati to stanje. Morate imati na umu da nije pametno piti željezo ako vam nalazi nisu potvrdili da ga organizam treba. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Najvažnije je prohranom unositi dovoljno željeza</strong><br>lako mnoge biljke sadrže željezo, pogotovo grah i leća, špinat, kvinoja i sjemenke bundeve, željezo iz ovh namirnica organizam ne apsorbira u potpunosti, tako da su najbolji izvori ovog nutrijenta meso i morski plodovi. <br>Veganima se savjetuje da uzimaju 50% više od preporučenog dnevnog unosa kako bi kompenzirali meso. Hrana bogata vitaminom pomaže da se željezo iz biljaka bolje apsorbira <br>Visoke doze kalcija, osobito kalcij karbonata, također mogu blokirati apsorpciju željeza, ali to se odnosi na medikamente, a ne na hranu.<br>Ali ako sumnjate da imate manjak željeza, a koristite tablete kalcija, pijte ga prije spavanja kako bi minimalizirali šanse da dođe u doticaj s onim što ste pojeli. Ako uzimate tablete żeljeza, pijte ga u drugo doba dana nego kalcij.<br>Nedostatak željeza može uzrokovati anemiju, ali ona može nastati i iz drugih razloga, primjerice, zbog niskog nivoa vitamina B12. Zato, ako pijete B12, možda ćete teže otkriti da vam fali željeza. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><br><strong>Nemojte na svoju ruku piti dodatke prehrani</strong> <br>Uzimanje dodatnih doza vitamina preko tableta možda se čini kao nešto što neće štetiti, a djeluje vam zdravo. Ali ako ne trebate te vitamine, onda je to bacanje novca, a potencijalno i opasnost za zdravlje jer mogu dovesti do nuspojava, trovanja jetre i bubrega, i zbog njih možda nećete mnoći otkriti pravu dijagnozu. <br>Osim ako su vam nalazi pokazali da imate manjak nekog vitamina, tablete nisu najbolji način da opskrbite svoje tijelo nutrijentima koje ono treba. To ćete postići raznovrsnom izbalansiranom prehranom. A dobra hrana je i jeftiniji i ljepši način da unesete sastojke koji vam trebaju nego da pijete tablete. <br>Odgovarajuća ishrana, bogata željezom će dovesti do toga da izgledate lijepo i imate zdravu kosu. Ekstreman gubitak kose može biti znak nedostatka nutrijenata ili drugih stanja. Ali ako mislite da vam kosa previše opada, otiđite liječniku prije nego sebi dijagnosticirate neko stanje ili počnete uzimati neke vitamine, osobito željezo.</p>\n<!-- /wp:paragraph -->', 'Beživotna kosa i opadanje', 'Za kosu se često kaže da je pokazatelj zdravlja. Ukoliko izgleda beživotno i pojačano opada te se osjećate umorno, možda bi bilo dobro napraviti krvni sliku jer je možda riječ o manjku određenih mikronutrijenata.', 'publish', 'closed', 'closed', '', 'bezivotna-kosa-i-opadanje', '', '', '2021-10-25 21:13:34', '2021-10-25 19:13:34', '', 0, 'http://localhost/NicoleNicole/?post_type=savjeti_naslovna&#038;p=128', 0, 'savjeti-naslovna', '', 0),
(129, 1, '2021-10-24 16:40:45', '2021-10-24 14:40:45', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'slika', 'slika', 'publish', 'closed', 'closed', '', 'field_6175705619975', '', '', '2021-10-25 19:18:31', '2021-10-25 17:18:31', '', 95, 'http://localhost/NicoleNicole/?post_type=acf-field&#038;p=129', 0, 'acf-field', '', 0),
(130, 1, '2021-10-24 16:45:07', '2021-10-24 14:45:07', '', 'blog-1', '', 'inherit', 'open', 'closed', '', 'blog-1', '', '', '2021-10-24 16:45:07', '2021-10-24 14:45:07', '', 128, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/blog-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(131, 1, '2021-10-24 16:45:08', '2021-10-24 14:45:08', '', 'blog-2', '', 'inherit', 'open', 'closed', '', 'blog-2', '', '', '2021-10-24 16:45:08', '2021-10-24 14:45:08', '', 128, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/blog-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(132, 1, '2021-10-24 16:45:10', '2021-10-24 14:45:10', '', 'blog-3', '', 'inherit', 'open', 'closed', '', 'blog-3', '', '', '2021-10-24 16:45:10', '2021-10-24 14:45:10', '', 128, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/blog-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(133, 1, '2021-10-24 16:45:11', '2021-10-24 14:45:11', '', 'blog-4', '', 'inherit', 'open', 'closed', '', 'blog-4', '', '', '2021-10-24 16:45:11', '2021-10-24 14:45:11', '', 128, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/blog-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(134, 1, '2021-10-24 16:45:11', '2021-10-24 14:45:11', '', 'blog-5', '', 'inherit', 'open', 'closed', '', 'blog-5', '', '', '2021-10-24 16:45:11', '2021-10-24 14:45:11', '', 128, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/blog-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(135, 1, '2021-10-24 16:45:12', '2021-10-24 14:45:12', '', 'blog-6', '', 'inherit', 'open', 'closed', '', 'blog-6', '', '', '2021-10-24 16:45:12', '2021-10-24 14:45:12', '', 128, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/blog-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(136, 1, '2021-10-24 16:46:02', '2021-10-24 14:46:02', '<!-- wp:paragraph -->\n<p>Većina žena koje žele pospješiti rast i poboljšati zdravlje svoje kose posežu za različitim vitaminima i tretmanima zaboravljajući na jednu jako važnu stavku, a to je prehrana. Naime, kako za Who What Wear ističe nutricionistica Robin Foroutan, namirnice koje su dobre za vašu kožu, dobre su i za vašu kosu. Foroutan objašnjava da su kosa, koža i nokti načinjeni od sličnih proteina pa im stoga odgovaraju iste namirnice i suplementi. <br>lako je poželjno uzimati vitamine i ostale provjerene dodatke prehrani, izuzetno je bitno balansirati prehranu. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Najpoželjnije namirnice kada su u pitanju rast i jačanje kose su one pune antioksidansa koje detoksificiraju tijelo i štite ga od slobodnih radikala. Također, napominje Foroutan, važno je ne štedjeti na unosu zdravih masti iz biljnih izvora. Neke namirnice koje je izdvojla i preporučila su špinat, koje sjajan izvor željeza koje potiče cirkulaciju u cijelom tijelu pa tako i u tjemenu, sjemenke bundove koje su odličan izvor cinka, avokado, losos i orasasti proizvodi zbog zdravih masti, batat i jagode zbog visokog udjela antioksidansa te kvinoja, mahunarke, govedina, naranče i paprike</p>\n<!-- /wp:paragraph -->', 'Prehrana za rast kose', 'Većina žena koje žele pospješiti rast i poboljšati zdravlje svoje kose posežu za raznim vitaminima i tretmanima zaboravljajući na jednu jako važnu stavku, a to je prehrana.', 'publish', 'closed', 'closed', '', 'prehrana-za-rast-kose', '', '', '2021-10-25 21:13:11', '2021-10-25 19:13:11', '', 0, 'http://localhost/NicoleNicole/?post_type=savjeti_naslovna&#038;p=136', 0, 'savjeti-naslovna', '', 0),
(137, 1, '2021-10-24 16:46:43', '2021-10-24 14:46:43', '<!-- wp:paragraph -->\n<p>Puštate kosu, a čini vam se da ona stoji na mjestu? Jeste li pogledali svoje vrhove? Ako su ispucani, listaju se te će zbog toga utjecati na rast kose.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Kosa se lista i povlači prema gore, tako da je obvezno ošišajte i savjetujte se s frizerom za njegu istih. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Frizer vam može savjetovati i koji preparat bi bio najbolji da se ne lista dalje nego da zdravo raste.</p>\n<!-- /wp:paragraph -->', 'Ispucani vrhovi', 'Puštate kosu, a čini vam se da ona stoji na mjestu? Jeste li pogledali svoje vrhove? Ako su ispucani, listaju se te će zbog toga utjecati na rast kose.', 'publish', 'closed', 'closed', '', 'ispucani-vrhovi', '', '', '2021-10-25 21:12:52', '2021-10-25 19:12:52', '', 0, 'http://localhost/NicoleNicole/?post_type=savjeti_naslovna&#038;p=137', 0, 'savjeti-naslovna', '', 0),
(138, 1, '2021-10-24 16:47:38', '2021-10-24 14:47:38', '<!-- wp:paragraph -->\n<p>Vlasište vas svrbi, osjećate da vas zateže i iritira? Zasigurno je riječ o osjetljivom vlasištu. Češće se pojavljuje zimi jer se više vremena provodi u zatvorenim prostorima čiji je zrak najčešće suh zbog grijanja. <br>Podjednako neželjen suputnik suhog vlasišta je prhut čak i najosjetljivija vlasišta umire se uz ispravnu njegu. U prosjeku više muškaraca ima problem s prhuti nego što ga imaju žene, no uporaba blagog, njeżnog proizvoda za njegu kose uglavnom vraća svakom suhom vlasištu njegovu prirodnu ravnotežu i obustavlja stvaranje prhuti. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Osobito su prikladni nježni proizvodi za njegu kose koji je vlaže. Nježni proizvodi ne oštećuju vlasište, a dodatna vlažnost pomaže u obnovi vanjskog štita vlasišta. Suhom vlasištu ponajviše pomažu uravnoteženi paketi za kosu koji se sastoje od blagog šampona, regeneratora te ciljanog proizvoda poput seruma za vlasište.</p>\n<!-- /wp:paragraph -->', 'Osjetljivo vlasište', 'Vlasište vas svrbi, osjećate da vas zateže i iritira? Zasigurno je riječ o osjetljivom vlasištu. Češće se pojavljuje zimi jer se više vremena provodi u zatvorenim prostorima čiji je zrak najčešće suh zbog grijanja.', 'publish', 'closed', 'closed', '', 'osjetljivo-vlasiste', '', '', '2021-10-25 21:12:31', '2021-10-25 19:12:31', '', 0, 'http://localhost/NicoleNicole/?post_type=savjeti_naslovna&#038;p=138', 0, 'savjeti-naslovna', '', 0),
(139, 1, '2021-10-24 16:48:27', '2021-10-24 14:48:27', '<!-- wp:paragraph -->\n<p><strong>Kosa je definitivno jedan od najljepših ukrasa koje imamo, pa ne čudi činjenica da joj uvijek poklanjamo posebnu pažnju i njegu te brinemo za njezino zdravlje. Tijekom blagdanskog razdoblja posebno je važno da nam kosa bude uredna i postojana, no što kada nam to ne uspije poći za rukom?</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Užurbanost i manjak vremena neki su od najvećih problema suvremenog svijeta, a taj nedostatak posebno se očituje u blagdanskom periodu. Nije lako istovremeno obaviti sve kućanske poslove, pripremiti hranu i pritom izgledati sjajno, a ono što najčešće najviše pati je naša kosa, odnosno frizura. Sigurno vam se je više od jednog puta dogodilo da ste bili kod frizera te nakon svega nekoliko sati imali dojam kao da niti niste, a ista situacija može se dogoditi i ako ste sami proveli određeno vrijeme dotjerivajući kosu. Postoje različite vrste kose, neke lakše primaju određene frizure, neke teže, ali postoji nekoliko univerzalnih načina friziranja koji uvijek pale. Glavna stavka na koju morate obratiti pažnju je što ćete sve raditi s određenom frizurom; hoćete li vježbati, tuširati se, kuhati ili spavati. Kada ste sagledali koje vas situacije očekuju i koja su vaša očekivanja, potrebno je mudro odabrati stil frizure, a kako bismo vam olakšali izbor, u nastavku smo izdvojili tri najzahvalnije frizure koje vas neće razočarati svojom postojanošću i praktičnošću.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Želite li spuštenu kosu, ravna ispeglana kosa nikako nije dobar odabir jer će vrlo vjerojatno kroz neko vrijeme postati neposlušna na ključnim mjestima te neće izgledati lijepo. Ono što se preporučuje kod spuštene kose su razbarušene kovrče ili lagani&nbsp;<em>beach waves</em>. Specifičnost ove frizure i leži u njezinoj neurednosti te volumenu, pa bez razmišljanja posegnite za suhim šamponom kako biste podigli i osvježili kovrče koje mogu potrajati i do nekoliko dana. Kovrče osim što si lake za održavanje, iznimno su praktične jer ih možete zavezati u pundžu tijekom aktivnosti bez straha da će se pokvariti jednom kada ih raspustite.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pletenice su jedna od najtraženijih frizura jer su istovremeno neizmjerno lijepe, praktične i udobne. Mogućnosti stiliziranja je doista raznolika i za koju god se varijantu odlučili s ovom šarmantnom frizurom nećete pogriješiti. Ono što se preporučuje želite li postojanost je riblja kost s kojom možete eksperimentirati, pa tako osim standardne pletenice po sredini, možete razdijeliti kosu u dva dijela ili napraviti pletencu na stranu. Pustite mašti na volju i uživajte u ovoj fantastičnoj frizuri koja može potrajati sve dok je vi sami ne odlučite raspustiti.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Fen frizura je na prvi pogled jednostavna i mnogi se zapitaju čemu je uopće potreban odlazak frizeru, ali vrlo brzo se očituje razlika između prave kvalitetne fen frizure i one koja to nije. Pažljivo i temeljito isfenirana kosa traje sve do sljedećeg pranja i izgleda odlično zato što svaki dan poprima neki novi oblik, odnosno formu, no ne u lošem smislu. Ova frizura odlična je za one koji imaju kovrčavu kosu i žele kratkotrajnu promjenu ili za one koji jednostavno ne žele brinuti ni o čemu i ujutro samo proći češljom kroz kosu. Osim što je lijepa u svom originalnom izdanju, fen frizura odlično će izgledati i u repu ili polupodignutoj kosi jer posjeduje dobru bazu i potrebnu teksturu.</p>\n<!-- /wp:paragraph -->', 'Održavanje frizure', 'Nakon što izađete iz frizerskog salona s novom frizurom zasigurno pomislite na održavanje frizure kod kuće. Vaš frizer bi vam uvijek trebao dati savjet kako na pravilan način održavati frizuru.', 'publish', 'closed', 'closed', '', 'odrzavanje-frizure', '', '', '2021-10-25 21:12:13', '2021-10-25 19:12:13', '', 0, 'http://localhost/NicoleNicole/?post_type=savjeti_naslovna&#038;p=139', 0, 'savjeti-naslovna', '', 0),
(140, 1, '2021-10-24 16:49:03', '2021-10-24 14:49:03', '<!-- wp:paragraph -->\n<p>Postoji nekoliko vrsta šampona za različite tipove kose.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Kako možemo znati koji je šampon najbolji za našu kosu? Kako bismo mogli odgovoriti na to pitanje potrebno je razumjeti od čega se sve sastoje šamponi za kosu.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Svi šamponi sadrže u određenom postotku “šampon” i regenerator. Količina tih sastojaka ovisit će o vrsti šampona. Šampon pomaže očistiti kosu od prljavštine i prašine koja se akumulirala na kosi&nbsp;i vlasištu,&nbsp;a regenerator učvršćuje dlaku kose.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>Glavni radikali unutar šampona za kosu su:</h4>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li><strong>amonijev laureth sulfat</strong>&nbsp;(ammonium laureth sufate),</li><li><strong>amonijev lauryl sulfat</strong>&nbsp;(ammonioum lauryl sulfate),</li><li><strong>natrijev lauryl sulfat</strong>&nbsp;(sodium laureth sulfare),</li><li><strong>TEA lauryl sulfat</strong>&nbsp;( herbal tea layril sulfate),</li><li><strong>laureth sulfa</strong>t (laureth sulfate).</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Amonijev laureth sulfat i amonijev lauryl sulfat su glavni sastojci svakog jeftinijeg šampona, jer su povoljniji, a imaju dobru moć čišćenja vlasišta i kose te se lako ispiru. Posljedica korištenja ovakvih agresivnijih šampona je pogoršanje općeg stanja vlasišta, suho tjeme i osjetljive vlasi kose koje lakše pucaju.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Preostala tri radikala su nježnije sintetičke tekućine koje su najčešći sastojci skupljih šampona. Također se mogu pronaći u šamponima za suhu i oštećenu kosu.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Od ostalih sastojaka u šamponima možemo još pronaći sljedeće:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li><strong>Aditive –</strong>&nbsp;poput konzervansa, boja i ostalih dodataka, čija je zadaća da učine iskustvo korištenja šampona ugodnim.</li><li><strong>Polimere –&nbsp;</strong>koji se koriste kako bi se kosa sačuvala od topline (sušila za kosu i drugih aparata za stiliziranje kose). Oni apsorbiraju toplinu i raspoređuju je kroz cijelu dužinu kose.</li><li><strong>Biološko umjetne aditive</strong>: ekstrakti bilja, vitamini i minerali.</li><li><strong>Ulja</strong>: ricinusovo ulje, ulje jojobe i avokada, lanolin.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 id=\"tipovi-kose\">Tipovi kose</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>Šampon za tanku tanka kosu</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>S obzirom da je riječ o kosi koja je jako tanka i sklona padu pod težinom masnoća i prljavština, za ovakav tip kose pogodni su šamponi za volumen. Ljudi s tankom kosom trebaju koristiti šampone koji imaju sastojke za dobro čišćenje vlasišta.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>Šampon za gustu kosu</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Za gustu kosu pogodni su šamponi koji u jednakoj mjeri dobro čiste, ali i sadrže regenerator koji će njegovati guste vlasi. Ovakva kosa je sklona taloženju više prljavštine i u nekim slučajevima može se mastiti jako brzo.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>Šampon za suhu kosu</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Za njegu suhe kose potrebni su šamponi koji su bogati esencijalnim uljima. Najbolji su oni koji sadrže kokosovo ulje, ulje grožđa, ulje avokada i arganovo ulje.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>Šampon za masnu kosu</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Najveći problem masne kose je perut. Masno tjeme je pogodno za razvoj bakterija stoga mogu pomoći šamponi namijenjeni protiv peruti jer sadrže sastojke za uklanjanje infekcija na vlasištu. Takvi šamponi sadrže sastojke kao što su: ketoconazole i selenium sulfide orzinc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Svi šamponi koji sadrže visoki udio alkohola, silikona i sulfata mogu uništiti kosu jer uklanjaju prirodna ulja koja su potrebna za zdravu i lijepu kosu.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>Prilikom odabira šampona uzmite u obzir</h4>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li><strong>zdravlje vlasišta&nbsp;</strong>– ukoliko vam se vlasište zacrveni ili dolazi do iritacije nakon pranja pokušajte SLS free šampone. U velikom broju slučajeva takvi simptomi su alergijska reakcija na sulfate,</li><li><strong>ph razinu šampona,</strong></li><li><strong>učestalost korištenja šampona</strong>&nbsp;(često pranje kose zahtijeva nježnije šampone, a rjeđe pranje kose, šampone koji dubinski čiste)</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Ukoliko je moguće, &nbsp;koristite šampone bez sulfata (SLS free), oni su dobri za očuvanje kose i postojanost boje jer ne sadrže kemijske tvari koje utječu na brže ispiranje boje te uništavanje kose. Trebate znati da, iako se šamponi bez sulfata manje pjene i potrebna je veća količina od običnih šampona, to ne znači da oni lošije peru kosu, već da nisu agresivni kao i šamponi koji sadrže sulfate.</p>\n<!-- /wp:paragraph -->', 'Odabir šampona', 'Skup šampon ne znači nužno da je dobar za Vašu kosu! Prije kupnje šampona važno je konzultirati se s frizerom kako bi se odredio Vaš tip kose. Tek nakon što utvrdi Vaš tip kose, frizer će preporučiti odgovarajući šampon.', 'publish', 'closed', 'closed', '', 'odabir-sampona', '', '', '2021-10-25 21:11:50', '2021-10-25 19:11:50', '', 0, 'http://localhost/NicoleNicole/?post_type=savjeti_naslovna&#038;p=140', 0, 'savjeti-naslovna', '', 0),
(141, 1, '2021-10-24 20:24:33', '2021-10-24 18:24:33', '', 'Jedan tretman', '', 'publish', 'closed', 'closed', '', 'jedan-tretman', '', '', '2021-10-24 20:24:34', '2021-10-24 18:24:34', '', 0, 'http://localhost/NicoleNicole/?post_type=cjenik_naslovna&#038;p=141', 0, 'cjenik_naslovna', '', 0),
(142, 1, '2021-10-24 20:23:03', '2021-10-24 18:23:03', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'tretman 1', 'tretman_1', 'publish', 'closed', 'closed', '', 'field_6175a3eea3945', '', '', '2021-10-24 20:23:03', '2021-10-24 18:23:03', '', 79, 'http://localhost/NicoleNicole/?post_type=acf-field&p=142', 0, 'acf-field', '', 0),
(143, 1, '2021-10-24 20:23:03', '2021-10-24 18:23:03', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'tretman 2', 'tretman_2', 'publish', 'closed', 'closed', '', 'field_6175a405a3946', '', '', '2021-10-24 20:23:03', '2021-10-24 18:23:03', '', 79, 'http://localhost/NicoleNicole/?post_type=acf-field&p=143', 1, 'acf-field', '', 0),
(144, 1, '2021-10-24 20:23:04', '2021-10-24 18:23:04', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'tretman 3', 'tretman_3', 'publish', 'closed', 'closed', '', 'field_6175a40fa3947', '', '', '2021-10-24 20:23:04', '2021-10-24 18:23:04', '', 79, 'http://localhost/NicoleNicole/?post_type=acf-field&p=144', 2, 'acf-field', '', 0),
(145, 1, '2021-10-24 20:23:04', '2021-10-24 18:23:04', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'tretman 4', 'tretman_4', 'publish', 'closed', 'closed', '', 'field_6175a417a3948', '', '', '2021-10-24 20:23:04', '2021-10-24 18:23:04', '', 79, 'http://localhost/NicoleNicole/?post_type=acf-field&p=145', 3, 'acf-field', '', 0),
(146, 1, '2021-10-24 20:23:04', '2021-10-24 18:23:04', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'tretman 5', 'tretman_5', 'publish', 'closed', 'closed', '', 'field_6175a419a3949', '', '', '2021-10-24 20:23:04', '2021-10-24 18:23:04', '', 79, 'http://localhost/NicoleNicole/?post_type=acf-field&p=146', 4, 'acf-field', '', 0),
(147, 1, '2021-10-24 20:23:04', '2021-10-24 18:23:04', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'tretman 6', 'tretman_6', 'publish', 'closed', 'closed', '', 'field_6175a41ca394a', '', '', '2021-10-24 20:23:04', '2021-10-24 18:23:04', '', 79, 'http://localhost/NicoleNicole/?post_type=acf-field&p=147', 5, 'acf-field', '', 0),
(148, 1, '2021-10-24 20:23:04', '2021-10-24 18:23:04', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'ispred cijene', 'ispred_cijene', 'publish', 'closed', 'closed', '', 'field_6175a426a394b', '', '', '2021-10-24 20:23:04', '2021-10-24 18:23:04', '', 79, 'http://localhost/NicoleNicole/?post_type=acf-field&p=148', 6, 'acf-field', '', 0),
(149, 1, '2021-10-24 20:23:04', '2021-10-24 18:23:04', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'cijena', 'cijena', 'publish', 'closed', 'closed', '', 'field_6175a436a394c', '', '', '2021-10-24 20:23:04', '2021-10-24 18:23:04', '', 79, 'http://localhost/NicoleNicole/?post_type=acf-field&p=149', 7, 'acf-field', '', 0),
(150, 1, '2021-10-24 20:23:05', '2021-10-24 18:23:05', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'valuta', 'valuta', 'publish', 'closed', 'closed', '', 'field_6175a43ca394d', '', '', '2021-10-24 20:23:05', '2021-10-24 18:23:05', '', 79, 'http://localhost/NicoleNicole/?post_type=acf-field&p=150', 8, 'acf-field', '', 0),
(151, 1, '2021-10-24 20:25:43', '2021-10-24 18:25:43', '', '3 Tretmana', '', 'publish', 'closed', 'closed', '', 'paket-3-tretmana', '', '', '2021-10-24 20:27:06', '2021-10-24 18:27:06', '', 0, 'http://localhost/NicoleNicole/?post_type=cjenik_naslovna&#038;p=151', 0, 'cjenik_naslovna', '', 0),
(152, 1, '2021-10-24 20:26:53', '2021-10-24 18:26:53', '', '12 Tretmana', '', 'publish', 'closed', 'closed', '', '12-tretmana', '', '', '2021-10-24 20:26:54', '2021-10-24 18:26:54', '', 0, 'http://localhost/NicoleNicole/?post_type=cjenik_naslovna&#038;p=152', 0, 'cjenik_naslovna', '', 0),
(155, 1, '2021-10-24 21:38:21', '2021-10-24 19:38:21', '', 'Šišanje', '', 'publish', 'closed', 'closed', '', 'sisanje', '', '', '2021-10-25 17:55:32', '2021-10-25 15:55:32', '', 0, 'http://localhost/NicoleNicole/?post_type=sve_cijene&#038;p=155', 0, 'sve_cijene', '', 0),
(156, 1, '2021-10-24 21:39:37', '2021-10-24 19:39:37', '', 'Frizure', '', 'publish', 'closed', 'closed', '', 'frizure', '', '', '2021-10-25 17:57:12', '2021-10-25 15:57:12', '', 0, 'http://localhost/NicoleNicole/?post_type=sve_cijene&#038;p=156', 0, 'sve_cijene', '', 0),
(157, 1, '2021-10-24 21:40:24', '2021-10-24 19:40:24', '', 'Bojanje', '', 'publish', 'closed', 'closed', '', 'bojanje', '', '', '2021-10-25 17:58:48', '2021-10-25 15:58:48', '', 0, 'http://localhost/NicoleNicole/?post_type=sve_cijene&#038;p=157', 0, 'sve_cijene', '', 0),
(158, 1, '2021-10-24 21:40:54', '2021-10-24 19:40:54', '', 'Njega kose', '', 'publish', 'closed', 'closed', '', 'njega-kose', '', '', '2021-10-25 18:01:12', '2021-10-25 16:01:12', '', 0, 'http://localhost/NicoleNicole/?post_type=sve_cijene&#038;p=158', 0, 'sve_cijene', '', 0),
(159, 1, '2021-10-24 21:42:07', '2021-10-24 19:42:07', '', 'Njega lica', '', 'publish', 'closed', 'closed', '', 'njega-lica', '', '', '2021-10-25 18:02:59', '2021-10-25 16:02:59', '', 0, 'http://localhost/NicoleNicole/?post_type=sve_cijene&#038;p=159', 0, 'sve_cijene', '', 0),
(160, 1, '2021-10-24 21:43:20', '2021-10-24 19:43:20', '', 'Muškarci', '', 'publish', 'closed', 'closed', '', 'muskarci', '', '', '2021-10-25 18:20:27', '2021-10-25 16:20:27', '', 0, 'http://localhost/NicoleNicole/?post_type=sve_cijene&#038;p=160', 0, 'sve_cijene', '', 0),
(161, 1, '2021-10-25 08:42:32', '2021-10-25 06:42:32', '', 'Početna', '', 'publish', 'closed', 'closed', '', 'pocetna', '', '', '2021-10-25 08:42:32', '2021-10-25 06:42:32', '', 0, 'http://localhost/NicoleNicole/?p=161', 1, 'nav_menu_item', '', 0),
(163, 1, '2021-10-25 15:08:42', '2021-10-25 13:08:42', '<!-- wp:paragraph -->\n<p>Frizerski salon Nicole-Nicole već je više od 15 godina mjesto gdje svaka žena, ali i muškarac pronađe nešto za sebe. Osim klasičnih usluga šišanja, bojanja, modeliranja fizura, ved duže vrjeme je i puno više od toga. Ovdje se možete našminkati za posebne prigode vrhunskom kozmetikom, a osim prepuštanja u ruke naših vizažista brinemo o dubinskoj njezi vaše kose, ali i lica. Nudimo jedinstvene i vrlo efikasne tretmane kisikom za lice koji brišu umor i vraćaju vlagu i sjaj vašoj koži</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Salon je orijientiran i na mušku klijentelu, te od nedavno ima poseban kutak za sve muškarce koji drže do svog izgleda. Osim njege i brige o kosi, od sada u našem barber dijelu salona pružamo i uslugu brijanja. Nismo zaboravili ni najmlađe! Nicole-Nicole je family-friendly salon tako da će se i sva dječica u našem salonu lijepo opustiti, zabavit, i što je najvažnije izacći uredno ošišani i sređeni!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Osim navedenih usluga koje možete potražiti u salonu, uz naravno razne prigodne akcije i pogodnosti, ukoliko ste naš redoviti kljent, ovdje potražite i idealne preparate, prilagođene baš vašoj kosi. Opremite se najboljim proizvodima na tržištu, naravno uz korisne savjete naših stručnjaka. Pobrinite se da i kod kuće svoju kosu tretirate onako kako ona zaslužuje.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nicole Nicole otvoren je 2001 godine. Od samog početka frizeri ovog salona educiraju se na najboljim frizerskim seminarima u Hrvatskoj i inozemstvu. Zahvaljujući predavanjima vrhunskih stručnjaka, frizeri salona Nicole Nicole uvijek iznova proširuju znanja te prate najnovije trendove mode i struke.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>U salonu rade frizeri koji svojim vještinama te s apsolutno najboljim preparatima na tržištu rade vrhunske frizure te svoje klijente čine doslovno ovisnim o njihovim uslugama. Pratite s nama nove trendove, a pritom zadržite svoju osobnost jer to je ono što vas čini posebnima. Kosa da bi bila što ljepša treba redovnu i pravilnu njegu. Naši frizeri razumiju kosu, a vrhunski preparati nam daju izvrsne rezultate - zdravu, sjajnu i čvrstu kosu. Svaka kosa je posebna i jedinstvena i govori puno toga o nama samima. Prepustite brigu o vašoj kosi timu salona \'Nicole Nicole i naučite kako da se o njoj brinete i kod kuće.</p>\n<!-- /wp:paragraph -->', 'O nama', '', 'publish', 'closed', 'open', '', 'o-nama', '', '', '2021-10-25 15:55:43', '2021-10-25 13:55:43', '', 0, 'http://localhost/NicoleNicole/?p=163', 0, 'post', '', 0),
(164, 1, '2021-10-25 15:08:42', '2021-10-25 13:08:42', '<!-- wp:paragraph -->\n<p>Frizerski salon Nicole-Nicole već je više od 15 godina mjesto gdje svaka žena, ali i muškarac pronađe nešto za sebe. Osim klasičnih usluga šišanja, bojanja, modeliranja fizura, ved duže vrjeme je i puno više od toga. Ovdje se možete našminkati za posebne prigode vrhunskom kozmetikom, a osim prepuštanja u ruke naših vizažista brinemo o dubinskoj njezi vaše kose, ali i lica. Nudimo jedinstvene i vrlo efikasne tretmane kisikom za lice koji brišu umor i vraćaju vlagu i sjaj vašoj koži</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Salon je orijientiran i na mušku klijentelu, te od nedavno ima poseban kutak za sve muškarce koji drže do svog izgleda. Osim njege i brige o kosi, od sada u našem barber dijelu salona pružamo i uslugu brijanja. Nismo zaboravili ni najmlađe! Nicole-Nicole je family-friendly salon tako da će se i sva dječica u našem salonu lijepo opustiti, zabavit, i što je najvažnije izacći uredno ošišani i sređeni!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Osim navedenih usluga koje možete potražiti u salonu, uz naravno razne prigodne akcije i pogodnosti, ukoliko ste naš redoviti kljent, ovdje potražite i idealne preparate, prilagođene baš vašoj kosi. Opremite se najboljim proizvodima na tržištu, naravno uz korisne savjete naših stručnjaka. Pobrinite se da i kod kuće svoju kosu tretirate onako kako ona zaslužuje.</p>\n<!-- /wp:paragraph -->', 'O nama', '', 'inherit', 'closed', 'closed', '', '163-revision-v1', '', '', '2021-10-25 15:08:42', '2021-10-25 13:08:42', '', 163, 'http://localhost/NicoleNicole/?p=164', 0, 'revision', '', 0),
(165, 1, '2021-10-25 15:30:19', '2021-10-25 13:30:19', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Objave-o nama', 'objave-o-nama', 'publish', 'closed', 'closed', '', 'group_6176b0cf3111a', '', '', '2021-10-25 15:38:44', '2021-10-25 13:38:44', '', 0, 'http://localhost/NicoleNicole/?post_type=acf-field-group&#038;p=165', 0, 'acf-field-group', '', 0),
(166, 1, '2021-10-25 15:30:19', '2021-10-25 13:30:19', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'slika', 'slika', 'publish', 'closed', 'closed', '', 'field_6176b0e835ad7', '', '', '2021-10-25 15:30:19', '2021-10-25 13:30:19', '', 165, 'http://localhost/NicoleNicole/?post_type=acf-field&p=166', 0, 'acf-field', '', 0),
(167, 1, '2021-10-25 15:30:19', '2021-10-25 13:30:19', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'ime autora', 'ime_autora', 'publish', 'closed', 'closed', '', 'field_6176b0ff35ad8', '', '', '2021-10-25 15:38:44', '2021-10-25 13:38:44', '', 165, 'http://localhost/NicoleNicole/?post_type=acf-field&#038;p=167', 1, 'acf-field', '', 0),
(168, 1, '2021-10-25 15:30:19', '2021-10-25 13:30:19', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'slika autora', 'slika_autora', 'publish', 'closed', 'closed', '', 'field_6176b12a35ad9', '', '', '2021-10-25 15:30:19', '2021-10-25 13:30:19', '', 165, 'http://localhost/NicoleNicole/?post_type=acf-field&p=168', 2, 'acf-field', '', 0),
(169, 1, '2021-10-25 15:30:19', '2021-10-25 13:30:19', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'O autoru', 'o_autoru', 'publish', 'closed', 'closed', '', 'field_6176b14935ada', '', '', '2021-10-25 15:30:19', '2021-10-25 13:30:19', '', 165, 'http://localhost/NicoleNicole/?post_type=acf-field&p=169', 3, 'acf-field', '', 0),
(170, 1, '2021-10-25 15:30:19', '2021-10-25 13:30:19', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', '', '', 'publish', 'closed', 'closed', '', 'field_6176b15c35adb', '', '', '2021-10-25 15:30:19', '2021-10-25 13:30:19', '', 165, 'http://localhost/NicoleNicole/?post_type=acf-field&p=170', 4, 'acf-field', '', 0),
(171, 1, '2021-10-25 15:31:02', '2021-10-25 13:31:02', '', 'post-1', '', 'inherit', 'open', 'closed', '', 'post-1', '', '', '2021-10-25 15:31:02', '2021-10-25 13:31:02', '', 163, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/post-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(172, 1, '2021-10-25 15:37:21', '2021-10-25 13:37:21', '<!-- wp:paragraph -->\n<p>Frizerski salon Nicole-Nicole već je više od 15 godina mjesto gdje svaka žena, ali i muškarac pronađe nešto za sebe. Osim klasičnih usluga šišanja, bojanja, modeliranja fizura, ved duže vrjeme je i puno više od toga. Ovdje se možete našminkati za posebne prigode vrhunskom kozmetikom, a osim prepuštanja u ruke naših vizažista brinemo o dubinskoj njezi vaše kose, ali i lica. Nudimo jedinstvene i vrlo efikasne tretmane kisikom za lice koji brišu umor i vraćaju vlagu i sjaj vašoj koži</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Salon je orijientiran i na mušku klijentelu, te od nedavno ima poseban kutak za sve muškarce koji drže do svog izgleda. Osim njege i brige o kosi, od sada u našem barber dijelu salona pružamo i uslugu brijanja. Nismo zaboravili ni najmlađe! Nicole-Nicole je family-friendly salon tako da će se i sva dječica u našem salonu lijepo opustiti, zabavit, i što je najvažnije izacći uredno ošišani i sređeni!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Osim navedenih usluga koje možete potražiti u salonu, uz naravno razne prigodne akcije i pogodnosti, ukoliko ste naš redoviti kljent, ovdje potražite i idealne preparate, prilagođene baš vašoj kosi. Opremite se najboljim proizvodima na tržištu, naravno uz korisne savjete naših stručnjaka. Pobrinite se da i kod kuće svoju kosu tretirate onako kako ona zaslužuje.</p>\n<!-- /wp:paragraph -->', 'O nama', '', 'inherit', 'closed', 'closed', '', '163-revision-v1', '', '', '2021-10-25 15:37:21', '2021-10-25 13:37:21', '', 163, 'http://localhost/NicoleNicole/?p=172', 0, 'revision', '', 0),
(173, 1, '2021-10-25 15:39:13', '2021-10-25 13:39:13', '<!-- wp:paragraph -->\n<p>Frizerski salon Nicole-Nicole već je više od 15 godina mjesto gdje svaka žena, ali i muškarac pronađe nešto za sebe. Osim klasičnih usluga šišanja, bojanja, modeliranja fizura, ved duže vrjeme je i puno više od toga. Ovdje se možete našminkati za posebne prigode vrhunskom kozmetikom, a osim prepuštanja u ruke naših vizažista brinemo o dubinskoj njezi vaše kose, ali i lica. Nudimo jedinstvene i vrlo efikasne tretmane kisikom za lice koji brišu umor i vraćaju vlagu i sjaj vašoj koži</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Salon je orijientiran i na mušku klijentelu, te od nedavno ima poseban kutak za sve muškarce koji drže do svog izgleda. Osim njege i brige o kosi, od sada u našem barber dijelu salona pružamo i uslugu brijanja. Nismo zaboravili ni najmlađe! Nicole-Nicole je family-friendly salon tako da će se i sva dječica u našem salonu lijepo opustiti, zabavit, i što je najvažnije izacći uredno ošišani i sređeni!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Osim navedenih usluga koje možete potražiti u salonu, uz naravno razne prigodne akcije i pogodnosti, ukoliko ste naš redoviti kljent, ovdje potražite i idealne preparate, prilagođene baš vašoj kosi. Opremite se najboljim proizvodima na tržištu, naravno uz korisne savjete naših stručnjaka. Pobrinite se da i kod kuće svoju kosu tretirate onako kako ona zaslužuje.</p>\n<!-- /wp:paragraph -->', 'O nama', '', 'inherit', 'closed', 'closed', '', '163-revision-v1', '', '', '2021-10-25 15:39:13', '2021-10-25 13:39:13', '', 163, 'http://localhost/NicoleNicole/?p=173', 0, 'revision', '', 0),
(174, 1, '2021-10-25 15:42:05', '2021-10-25 13:42:05', '', 'user', '', 'inherit', 'open', 'closed', '', 'user', '', '', '2021-10-25 15:42:05', '2021-10-25 13:42:05', '', 163, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/user.jpg', 0, 'attachment', 'image/jpeg', 0),
(175, 1, '2021-10-25 15:42:15', '2021-10-25 13:42:15', '<!-- wp:paragraph -->\n<p>Frizerski salon Nicole-Nicole već je više od 15 godina mjesto gdje svaka žena, ali i muškarac pronađe nešto za sebe. Osim klasičnih usluga šišanja, bojanja, modeliranja fizura, ved duže vrjeme je i puno više od toga. Ovdje se možete našminkati za posebne prigode vrhunskom kozmetikom, a osim prepuštanja u ruke naših vizažista brinemo o dubinskoj njezi vaše kose, ali i lica. Nudimo jedinstvene i vrlo efikasne tretmane kisikom za lice koji brišu umor i vraćaju vlagu i sjaj vašoj koži</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Salon je orijientiran i na mušku klijentelu, te od nedavno ima poseban kutak za sve muškarce koji drže do svog izgleda. Osim njege i brige o kosi, od sada u našem barber dijelu salona pružamo i uslugu brijanja. Nismo zaboravili ni najmlađe! Nicole-Nicole je family-friendly salon tako da će se i sva dječica u našem salonu lijepo opustiti, zabavit, i što je najvažnije izacći uredno ošišani i sređeni!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Osim navedenih usluga koje možete potražiti u salonu, uz naravno razne prigodne akcije i pogodnosti, ukoliko ste naš redoviti kljent, ovdje potražite i idealne preparate, prilagođene baš vašoj kosi. Opremite se najboljim proizvodima na tržištu, naravno uz korisne savjete naših stručnjaka. Pobrinite se da i kod kuće svoju kosu tretirate onako kako ona zaslužuje.</p>\n<!-- /wp:paragraph -->', 'O nama', '', 'inherit', 'closed', 'closed', '', '163-revision-v1', '', '', '2021-10-25 15:42:15', '2021-10-25 13:42:15', '', 163, 'http://localhost/NicoleNicole/?p=175', 0, 'revision', '', 0),
(178, 1, '2021-10-25 15:55:41', '2021-10-25 13:55:41', '<!-- wp:paragraph -->\n<p>Frizerski salon Nicole-Nicole već je više od 15 godina mjesto gdje svaka žena, ali i muškarac pronađe nešto za sebe. Osim klasičnih usluga šišanja, bojanja, modeliranja fizura, ved duže vrjeme je i puno više od toga. Ovdje se možete našminkati za posebne prigode vrhunskom kozmetikom, a osim prepuštanja u ruke naših vizažista brinemo o dubinskoj njezi vaše kose, ali i lica. Nudimo jedinstvene i vrlo efikasne tretmane kisikom za lice koji brišu umor i vraćaju vlagu i sjaj vašoj koži</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Salon je orijientiran i na mušku klijentelu, te od nedavno ima poseban kutak za sve muškarce koji drže do svog izgleda. Osim njege i brige o kosi, od sada u našem barber dijelu salona pružamo i uslugu brijanja. Nismo zaboravili ni najmlađe! Nicole-Nicole je family-friendly salon tako da će se i sva dječica u našem salonu lijepo opustiti, zabavit, i što je najvažnije izacći uredno ošišani i sređeni!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Osim navedenih usluga koje možete potražiti u salonu, uz naravno razne prigodne akcije i pogodnosti, ukoliko ste naš redoviti kljent, ovdje potražite i idealne preparate, prilagođene baš vašoj kosi. Opremite se najboljim proizvodima na tržištu, naravno uz korisne savjete naših stručnjaka. Pobrinite se da i kod kuće svoju kosu tretirate onako kako ona zaslužuje.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nicole Nicole otvoren je 2001 godine. Od samog početka frizeri ovog salona educiraju se na najboljim frizerskim seminarima u Hrvatskoj i inozemstvu. Zahvaljujući predavanjima vrhunskih stručnjaka, frizeri salona Nicole Nicole uvijek iznova proširuju znanja te prate najnovije trendove mode i struke.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>U salonu rade frizeri koji svojim vještinama te s apsolutno najboljim preparatima na tržištu rade vrhunske frizure te svoje klijente čine doslovno ovisnim o njihovim uslugama. Pratite s nama nove trendove, a pritom zadržite svoju osobnost jer to je ono što vas čini posebnima. Kosa da bi bila što ljepša treba redovnu i pravilnu njegu. Naši frizeri razumiju kosu, a vrhunski preparati nam daju izvrsne rezultate - zdravu, sjajnu i čvrstu kosu. Svaka kosa je posebna i jedinstvena i govori puno toga o nama samima. Prepustite brigu o vašoj kosi timu salona \'Nicole Nicole i naučite kako da se o njoj brinete i kod kuće.</p>\n<!-- /wp:paragraph -->', 'O nama', '', 'inherit', 'closed', 'closed', '', '163-revision-v1', '', '', '2021-10-25 15:55:41', '2021-10-25 13:55:41', '', 163, 'http://localhost/NicoleNicole/?p=178', 0, 'revision', '', 0),
(193, 1, '2021-10-25 16:47:58', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_gallery', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2021-10-25 16:47:58', '2021-10-25 14:47:58', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/NicoleNicole/?p=193', 0, 'ngg_gallery', '', 0),
(195, 1, '2021-10-25 16:48:00', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2021-10-25 16:48:00', '2021-10-25 14:48:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/NicoleNicole/?p=195', 0, 'ngg_pictures', '', 0),
(196, 1, '2021-10-25 16:47:59', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2021-10-25 16:47:59', '2021-10-25 14:47:59', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/NicoleNicole/?p=196', 0, 'ngg_pictures', '', 0),
(197, 1, '2021-10-25 16:47:59', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2021-10-25 16:47:59', '2021-10-25 14:47:59', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/NicoleNicole/?p=197', 0, 'ngg_pictures', '', 0),
(198, 1, '2021-10-25 16:47:59', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2021-10-25 16:47:59', '2021-10-25 14:47:59', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/NicoleNicole/?p=198', 0, 'ngg_pictures', '', 0),
(199, 1, '2021-10-25 16:47:58', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2021-10-25 16:47:58', '2021-10-25 14:47:58', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/NicoleNicole/?p=199', 0, 'ngg_pictures', '', 0),
(200, 1, '2021-10-25 16:47:58', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2021-10-25 16:47:58', '2021-10-25 14:47:58', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/NicoleNicole/?p=200', 0, 'ngg_pictures', '', 0),
(201, 1, '2021-10-25 16:48:00', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2021-10-25 16:48:00', '2021-10-25 14:48:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/NicoleNicole/?p=201', 0, 'ngg_pictures', '', 0),
(202, 1, '2021-10-25 16:48:00', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2021-10-25 16:48:00', '2021-10-25 14:48:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/NicoleNicole/?p=202', 0, 'ngg_pictures', '', 0),
(203, 1, '2021-10-25 16:48:00', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2021-10-25 16:48:00', '2021-10-25 14:48:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/NicoleNicole/?p=203', 0, 'ngg_pictures', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(204, 1, '2021-10-25 16:48:01', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2021-10-25 16:48:01', '2021-10-25 14:48:01', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/NicoleNicole/?p=204', 0, 'ngg_pictures', '', 0),
(205, 1, '2021-10-25 16:48:01', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2021-10-25 16:48:01', '2021-10-25 14:48:01', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/NicoleNicole/?p=205', 0, 'ngg_pictures', '', 0),
(206, 1, '2021-10-25 16:48:01', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2021-10-25 16:48:01', '2021-10-25 14:48:01', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/NicoleNicole/?p=206', 0, 'ngg_pictures', '', 0),
(207, 1, '2021-10-25 16:48:02', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2021-10-25 16:48:02', '2021-10-25 14:48:02', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/NicoleNicole/?p=207', 0, 'ngg_pictures', '', 0),
(208, 1, '2021-10-25 16:48:03', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2021-10-25 16:48:03', '2021-10-25 14:48:03', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/NicoleNicole/?p=208', 0, 'ngg_pictures', '', 0),
(209, 1, '2021-10-25 16:48:03', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2021-10-25 16:48:03', '2021-10-25 14:48:03', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/NicoleNicole/?p=209', 0, 'ngg_pictures', '', 0),
(210, 1, '2021-10-25 16:48:02', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2021-10-25 16:48:02', '2021-10-25 14:48:02', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/NicoleNicole/?p=210', 0, 'ngg_pictures', '', 0),
(211, 1, '2021-10-25 16:48:01', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2021-10-25 16:48:01', '2021-10-25 14:48:01', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/NicoleNicole/?p=211', 0, 'ngg_pictures', '', 0),
(212, 1, '2021-10-25 16:48:01', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2021-10-25 16:48:01', '2021-10-25 14:48:01', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/NicoleNicole/?p=212', 0, 'ngg_pictures', '', 0),
(213, 1, '2021-10-25 16:48:03', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2021-10-25 16:48:03', '2021-10-25 14:48:03', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/NicoleNicole/?p=213', 0, 'ngg_pictures', '', 0),
(214, 1, '2021-10-25 16:56:35', '2021-10-25 14:56:35', '', '', '', 'publish', 'closed', 'closed', '', '214', '', '', '2021-10-25 17:27:32', '2021-10-25 15:27:32', '', 0, 'http://localhost/NicoleNicole/?p=214', 0, 'metagallery', '', 0),
(215, 1, '2021-10-25 16:56:56', '2021-10-25 14:56:56', '', 'galerija-1', '', 'inherit', 'open', 'closed', '', 'galerija-1', '', '', '2021-10-25 16:56:56', '2021-10-25 14:56:56', '', 0, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(216, 1, '2021-10-25 16:56:56', '2021-10-25 14:56:56', '', 'galerija-2', '', 'inherit', 'open', 'closed', '', 'galerija-2', '', '', '2021-10-25 16:56:56', '2021-10-25 14:56:56', '', 0, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(217, 1, '2021-10-25 16:56:58', '2021-10-25 14:56:58', '', 'galerija-3', '', 'inherit', 'open', 'closed', '', 'galerija-3', '', '', '2021-10-25 16:56:58', '2021-10-25 14:56:58', '', 0, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(218, 1, '2021-10-25 16:56:59', '2021-10-25 14:56:59', '', 'galerija-4', '', 'inherit', 'open', 'closed', '', 'galerija-4', '', '', '2021-10-25 16:56:59', '2021-10-25 14:56:59', '', 0, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(219, 1, '2021-10-25 16:57:00', '2021-10-25 14:57:00', '', 'galerija-5', '', 'inherit', 'open', 'closed', '', 'galerija-5', '', '', '2021-10-25 16:57:00', '2021-10-25 14:57:00', '', 0, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(220, 1, '2021-10-25 16:57:01', '2021-10-25 14:57:01', '', 'galerija-6', '', 'inherit', 'open', 'closed', '', 'galerija-6', '', '', '2021-10-25 16:57:01', '2021-10-25 14:57:01', '', 0, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(221, 1, '2021-10-25 16:57:02', '2021-10-25 14:57:02', '', 'galerija-7', '', 'inherit', 'open', 'closed', '', 'galerija-7', '', '', '2021-10-25 16:57:02', '2021-10-25 14:57:02', '', 0, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-7.jpg', 0, 'attachment', 'image/jpeg', 0),
(222, 1, '2021-10-25 16:57:04', '2021-10-25 14:57:04', '', 'galerija-8', '', 'inherit', 'open', 'closed', '', 'galerija-8', '', '', '2021-10-25 16:57:04', '2021-10-25 14:57:04', '', 0, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-8.jpg', 0, 'attachment', 'image/jpeg', 0),
(223, 1, '2021-10-25 16:57:05', '2021-10-25 14:57:05', '', 'galerija-9', '', 'inherit', 'open', 'closed', '', 'galerija-9', '', '', '2021-10-25 16:57:05', '2021-10-25 14:57:05', '', 0, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-9.jpg', 0, 'attachment', 'image/jpeg', 0),
(224, 1, '2021-10-25 16:57:06', '2021-10-25 14:57:06', '', 'galerija-10', '', 'inherit', 'open', 'closed', '', 'galerija-10', '', '', '2021-10-25 16:57:06', '2021-10-25 14:57:06', '', 0, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-10.jpg', 0, 'attachment', 'image/jpeg', 0),
(225, 1, '2021-10-25 16:57:07', '2021-10-25 14:57:07', '', 'galerija-11', '', 'inherit', 'open', 'closed', '', 'galerija-11', '', '', '2021-10-25 16:57:07', '2021-10-25 14:57:07', '', 0, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-11.jpg', 0, 'attachment', 'image/jpeg', 0),
(226, 1, '2021-10-25 16:57:08', '2021-10-25 14:57:08', '', 'galerija-12', '', 'inherit', 'open', 'closed', '', 'galerija-12', '', '', '2021-10-25 16:57:08', '2021-10-25 14:57:08', '', 0, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-12.jpg', 0, 'attachment', 'image/jpeg', 0),
(227, 1, '2021-10-25 16:57:09', '2021-10-25 14:57:09', '', 'galerija-13', '', 'inherit', 'open', 'closed', '', 'galerija-13', '', '', '2021-10-25 16:57:09', '2021-10-25 14:57:09', '', 0, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-13.jpg', 0, 'attachment', 'image/jpeg', 0),
(228, 1, '2021-10-25 16:57:10', '2021-10-25 14:57:10', '', 'galerija-14', '', 'inherit', 'open', 'closed', '', 'galerija-14', '', '', '2021-10-25 16:57:10', '2021-10-25 14:57:10', '', 0, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-14.jpg', 0, 'attachment', 'image/jpeg', 0),
(229, 1, '2021-10-25 16:57:10', '2021-10-25 14:57:10', '', 'galerija-15', '', 'inherit', 'open', 'closed', '', 'galerija-15', '', '', '2021-10-25 16:57:10', '2021-10-25 14:57:10', '', 0, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-15.jpg', 0, 'attachment', 'image/jpeg', 0),
(230, 1, '2021-10-25 16:57:11', '2021-10-25 14:57:11', '', 'galerija-16', '', 'inherit', 'open', 'closed', '', 'galerija-16', '', '', '2021-10-25 16:57:11', '2021-10-25 14:57:11', '', 0, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-16.jpg', 0, 'attachment', 'image/jpeg', 0),
(231, 1, '2021-10-25 16:57:12', '2021-10-25 14:57:12', '', 'galerija-17', '', 'inherit', 'open', 'closed', '', 'galerija-17', '', '', '2021-10-25 16:57:12', '2021-10-25 14:57:12', '', 0, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-17.jpg', 0, 'attachment', 'image/jpeg', 0),
(232, 1, '2021-10-25 16:57:13', '2021-10-25 14:57:13', '', 'galerija-18', '', 'inherit', 'open', 'closed', '', 'galerija-18', '', '', '2021-10-25 16:57:13', '2021-10-25 14:57:13', '', 0, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-18.jpg', 0, 'attachment', 'image/jpeg', 0),
(233, 1, '2021-10-25 16:57:14', '2021-10-25 14:57:14', '', 'galerija-20', '', 'inherit', 'open', 'closed', '', 'galerija-20', '', '', '2021-10-25 16:57:14', '2021-10-25 14:57:14', '', 0, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-20.jpg', 0, 'attachment', 'image/jpeg', 0),
(234, 1, '2021-10-25 17:02:40', '2021-10-25 15:02:40', '<!-- wp:shortcode -->\n[metagallery id=214]\n<!-- /wp:shortcode -->', 'Galerija', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2021-10-25 17:02:40', '2021-10-25 15:02:40', '', 25, 'http://localhost/NicoleNicole/?p=234', 0, 'revision', '', 0),
(235, 1, '2021-10-25 17:11:43', '2021-10-25 15:11:43', '', 'galerija-19', '', 'inherit', 'open', 'closed', '', 'galerija-19', '', '', '2021-10-25 17:11:43', '2021-10-25 15:11:43', '', 0, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-19.jpg', 0, 'attachment', 'image/jpeg', 0),
(236, 1, '2021-10-25 17:22:41', '2021-10-25 15:22:41', '', 'galerija-1', '', 'inherit', 'open', 'closed', '', 'galerija-1-2', '', '', '2021-10-25 17:22:41', '2021-10-25 15:22:41', '', 0, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(237, 1, '2021-10-25 17:22:42', '2021-10-25 15:22:42', '', 'galerija-2', '', 'inherit', 'open', 'closed', '', 'galerija-2-2', '', '', '2021-10-25 17:22:42', '2021-10-25 15:22:42', '', 0, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(238, 1, '2021-10-25 17:22:43', '2021-10-25 15:22:43', '', 'galerija-3', '', 'inherit', 'open', 'closed', '', 'galerija-3-2', '', '', '2021-10-25 17:22:43', '2021-10-25 15:22:43', '', 0, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-3-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(239, 1, '2021-10-25 17:22:44', '2021-10-25 15:22:44', '', 'galerija-4', '', 'inherit', 'open', 'closed', '', 'galerija-4-2', '', '', '2021-10-25 17:22:44', '2021-10-25 15:22:44', '', 0, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-4-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(240, 1, '2021-10-25 17:22:44', '2021-10-25 15:22:44', '', 'galerija-5', '', 'inherit', 'open', 'closed', '', 'galerija-5-2', '', '', '2021-10-25 17:22:44', '2021-10-25 15:22:44', '', 0, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-5-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(241, 1, '2021-10-25 17:22:45', '2021-10-25 15:22:45', '', 'galerija-6', '', 'inherit', 'open', 'closed', '', 'galerija-6-2', '', '', '2021-10-25 17:22:45', '2021-10-25 15:22:45', '', 0, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-6-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(242, 1, '2021-10-25 17:22:47', '2021-10-25 15:22:47', '', 'galerija-7', '', 'inherit', 'open', 'closed', '', 'galerija-7-2', '', '', '2021-10-25 17:22:47', '2021-10-25 15:22:47', '', 0, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-7-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(243, 1, '2021-10-25 17:22:48', '2021-10-25 15:22:48', '', 'galerija-8', '', 'inherit', 'open', 'closed', '', 'galerija-8-2', '', '', '2021-10-25 17:22:48', '2021-10-25 15:22:48', '', 0, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-8-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(244, 1, '2021-10-25 17:22:48', '2021-10-25 15:22:48', '', 'galerija-9', '', 'inherit', 'open', 'closed', '', 'galerija-9-2', '', '', '2021-10-25 17:22:48', '2021-10-25 15:22:48', '', 0, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-9-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(245, 1, '2021-10-25 17:22:49', '2021-10-25 15:22:49', '', 'galerija-10', '', 'inherit', 'open', 'closed', '', 'galerija-10-2', '', '', '2021-10-25 17:22:49', '2021-10-25 15:22:49', '', 0, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-10-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(246, 1, '2021-10-25 17:22:50', '2021-10-25 15:22:50', '', 'galerija-11', '', 'inherit', 'open', 'closed', '', 'galerija-11-2', '', '', '2021-10-25 17:22:50', '2021-10-25 15:22:50', '', 0, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-11-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(247, 1, '2021-10-25 17:22:50', '2021-10-25 15:22:50', '', 'galerija-12', '', 'inherit', 'open', 'closed', '', 'galerija-12-2', '', '', '2021-10-25 17:22:50', '2021-10-25 15:22:50', '', 0, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-12-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(248, 1, '2021-10-25 17:22:51', '2021-10-25 15:22:51', '', 'galerija-13', '', 'inherit', 'open', 'closed', '', 'galerija-13-2', '', '', '2021-10-25 17:22:51', '2021-10-25 15:22:51', '', 0, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-13-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(249, 1, '2021-10-25 17:22:52', '2021-10-25 15:22:52', '', 'galerija-14', '', 'inherit', 'open', 'closed', '', 'galerija-14-2', '', '', '2021-10-25 17:22:52', '2021-10-25 15:22:52', '', 0, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-14-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(250, 1, '2021-10-25 17:22:53', '2021-10-25 15:22:53', '', 'galerija-15', '', 'inherit', 'open', 'closed', '', 'galerija-15-2', '', '', '2021-10-25 17:22:53', '2021-10-25 15:22:53', '', 0, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-15-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(251, 1, '2021-10-25 17:22:53', '2021-10-25 15:22:53', '', 'galerija-16', '', 'inherit', 'open', 'closed', '', 'galerija-16-2', '', '', '2021-10-25 17:22:53', '2021-10-25 15:22:53', '', 0, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-16-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(252, 1, '2021-10-25 17:22:54', '2021-10-25 15:22:54', '', 'galerija-17', '', 'inherit', 'open', 'closed', '', 'galerija-17-2', '', '', '2021-10-25 17:22:54', '2021-10-25 15:22:54', '', 0, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-17-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(253, 1, '2021-10-25 17:22:55', '2021-10-25 15:22:55', '', 'galerija-18', '', 'inherit', 'open', 'closed', '', 'galerija-18-2', '', '', '2021-10-25 17:22:55', '2021-10-25 15:22:55', '', 0, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-18-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(254, 1, '2021-10-25 17:22:56', '2021-10-25 15:22:56', '', 'galerija-19', '', 'inherit', 'open', 'closed', '', 'galerija-19-2', '', '', '2021-10-25 17:22:56', '2021-10-25 15:22:56', '', 0, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-19-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(255, 1, '2021-10-25 17:22:57', '2021-10-25 15:22:57', '', 'galerija-20', '', 'inherit', 'open', 'closed', '', 'galerija-20-2', '', '', '2021-10-25 17:22:57', '2021-10-25 15:22:57', '', 0, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/galerija-20-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(256, 1, '2021-10-25 17:49:39', '2021-10-25 15:49:39', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"sve_cijene\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'usluge-cijene', 'usluge-cijene', 'publish', 'closed', 'closed', '', 'group_6176d1630569d', '', '', '2021-10-25 17:49:40', '2021-10-25 15:49:40', '', 0, 'http://localhost/NicoleNicole/?post_type=acf-field-group&#038;p=256', 0, 'acf-field-group', '', 0),
(257, 1, '2021-10-25 17:49:39', '2021-10-25 15:49:39', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'usluga 1', 'usluga_1', 'publish', 'closed', 'closed', '', 'field_6176d187c5dc1', '', '', '2021-10-25 17:49:39', '2021-10-25 15:49:39', '', 256, 'http://localhost/NicoleNicole/?post_type=acf-field&p=257', 0, 'acf-field', '', 0),
(258, 1, '2021-10-25 17:49:39', '2021-10-25 15:49:39', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'cijena 1', 'cijena_1', 'publish', 'closed', 'closed', '', 'field_6176d1bbc5dc9', '', '', '2021-10-25 17:49:39', '2021-10-25 15:49:39', '', 256, 'http://localhost/NicoleNicole/?post_type=acf-field&p=258', 1, 'acf-field', '', 0),
(259, 1, '2021-10-25 17:49:39', '2021-10-25 15:49:39', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'usluga 2', 'usluga_2', 'publish', 'closed', 'closed', '', 'field_6176d198c5dc2', '', '', '2021-10-25 17:49:39', '2021-10-25 15:49:39', '', 256, 'http://localhost/NicoleNicole/?post_type=acf-field&p=259', 2, 'acf-field', '', 0),
(260, 1, '2021-10-25 17:49:39', '2021-10-25 15:49:39', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'cijena 2', 'cijena_2', 'publish', 'closed', 'closed', '', 'field_6176d1c3c5dca', '', '', '2021-10-25 17:49:39', '2021-10-25 15:49:39', '', 256, 'http://localhost/NicoleNicole/?post_type=acf-field&p=260', 3, 'acf-field', '', 0),
(261, 1, '2021-10-25 17:49:39', '2021-10-25 15:49:39', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'usluga 3', 'usluga_3', 'publish', 'closed', 'closed', '', 'field_6176d19fc5dc3', '', '', '2021-10-25 17:49:39', '2021-10-25 15:49:39', '', 256, 'http://localhost/NicoleNicole/?post_type=acf-field&p=261', 4, 'acf-field', '', 0),
(262, 1, '2021-10-25 17:49:39', '2021-10-25 15:49:39', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'cijena 3', 'cijena_3', 'publish', 'closed', 'closed', '', 'field_6176d1c5c5dcb', '', '', '2021-10-25 17:49:39', '2021-10-25 15:49:39', '', 256, 'http://localhost/NicoleNicole/?post_type=acf-field&p=262', 5, 'acf-field', '', 0),
(263, 1, '2021-10-25 17:49:39', '2021-10-25 15:49:39', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'usluga 4', 'usluga_4', 'publish', 'closed', 'closed', '', 'field_6176d1a1c5dc4', '', '', '2021-10-25 17:49:39', '2021-10-25 15:49:39', '', 256, 'http://localhost/NicoleNicole/?post_type=acf-field&p=263', 6, 'acf-field', '', 0),
(264, 1, '2021-10-25 17:49:39', '2021-10-25 15:49:39', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'cijena 4', 'cijena_4', 'publish', 'closed', 'closed', '', 'field_6176d1c7c5dcc', '', '', '2021-10-25 17:49:39', '2021-10-25 15:49:39', '', 256, 'http://localhost/NicoleNicole/?post_type=acf-field&p=264', 7, 'acf-field', '', 0),
(265, 1, '2021-10-25 17:49:39', '2021-10-25 15:49:39', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'usluga 5', 'usluga_5', 'publish', 'closed', 'closed', '', 'field_6176d1a3c5dc5', '', '', '2021-10-25 17:49:39', '2021-10-25 15:49:39', '', 256, 'http://localhost/NicoleNicole/?post_type=acf-field&p=265', 8, 'acf-field', '', 0),
(266, 1, '2021-10-25 17:49:40', '2021-10-25 15:49:40', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'cijena 5', 'cijena_5', 'publish', 'closed', 'closed', '', 'field_6176d1c9c5dcd', '', '', '2021-10-25 17:49:40', '2021-10-25 15:49:40', '', 256, 'http://localhost/NicoleNicole/?post_type=acf-field&p=266', 9, 'acf-field', '', 0),
(267, 1, '2021-10-25 17:49:40', '2021-10-25 15:49:40', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'usluga 6', 'usluga_6', 'publish', 'closed', 'closed', '', 'field_6176d1a5c5dc6', '', '', '2021-10-25 17:49:40', '2021-10-25 15:49:40', '', 256, 'http://localhost/NicoleNicole/?post_type=acf-field&p=267', 10, 'acf-field', '', 0),
(268, 1, '2021-10-25 17:49:40', '2021-10-25 15:49:40', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'cijena 6', 'cijena_6', 'publish', 'closed', 'closed', '', 'field_6176d1ccc5dce', '', '', '2021-10-25 17:49:40', '2021-10-25 15:49:40', '', 256, 'http://localhost/NicoleNicole/?post_type=acf-field&p=268', 11, 'acf-field', '', 0),
(269, 1, '2021-10-25 17:49:40', '2021-10-25 15:49:40', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'usluga 7', 'usluga_7', 'publish', 'closed', 'closed', '', 'field_6176d1a7c5dc7', '', '', '2021-10-25 17:49:40', '2021-10-25 15:49:40', '', 256, 'http://localhost/NicoleNicole/?post_type=acf-field&p=269', 12, 'acf-field', '', 0),
(270, 1, '2021-10-25 17:49:40', '2021-10-25 15:49:40', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'cijena 7', 'cijena_7', 'publish', 'closed', 'closed', '', 'field_6176d1cec5dcf', '', '', '2021-10-25 17:49:40', '2021-10-25 15:49:40', '', 256, 'http://localhost/NicoleNicole/?post_type=acf-field&p=270', 13, 'acf-field', '', 0),
(271, 1, '2021-10-25 17:49:40', '2021-10-25 15:49:40', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'usluga 8', 'usluga_8', 'publish', 'closed', 'closed', '', 'field_6176d1a9c5dc8', '', '', '2021-10-25 17:49:40', '2021-10-25 15:49:40', '', 256, 'http://localhost/NicoleNicole/?post_type=acf-field&p=271', 14, 'acf-field', '', 0),
(272, 1, '2021-10-25 17:49:40', '2021-10-25 15:49:40', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'cijena 8', 'cijena_8', 'publish', 'closed', 'closed', '', 'field_6176d1d0c5dd0', '', '', '2021-10-25 17:49:40', '2021-10-25 15:49:40', '', 256, 'http://localhost/NicoleNicole/?post_type=acf-field&p=272', 15, 'acf-field', '', 0),
(279, 1, '2021-10-25 21:06:23', '2021-10-25 19:06:23', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'ime autora', 'ime_autora', 'publish', 'closed', 'closed', '', 'field_6176ffa5b50b2', '', '', '2021-10-25 21:06:23', '2021-10-25 19:06:23', '', 95, 'http://localhost/NicoleNicole/?post_type=acf-field&p=279', 1, 'acf-field', '', 0),
(280, 1, '2021-10-25 21:06:23', '2021-10-25 19:06:23', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'o autoru', 'o_autoru', 'publish', 'closed', 'closed', '', 'field_61770014b50b4', '', '', '2021-10-25 21:10:14', '2021-10-25 19:10:14', '', 95, 'http://localhost/NicoleNicole/?post_type=acf-field&#038;p=280', 2, 'acf-field', '', 0),
(281, 1, '2021-10-25 21:06:23', '2021-10-25 19:06:23', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'slika autora', 'slika_autora', 'publish', 'closed', 'closed', '', 'field_6176ffb3b50b3', '', '', '2021-10-25 21:14:33', '2021-10-25 19:14:33', '', 95, 'http://localhost/NicoleNicole/?post_type=acf-field&#038;p=281', 3, 'acf-field', '', 0),
(282, 1, '2021-10-25 21:09:16', '2021-10-25 19:09:16', '', 'user', '', 'inherit', 'open', 'closed', '', 'user-2', '', '', '2021-10-25 21:09:16', '2021-10-25 19:09:16', '', 140, 'http://localhost/NicoleNicole/wp-content/uploads/2021/10/user-1.jpg', 0, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Nekategorizirano', 'nekategorizirano', 0),
(2, 'Glavni izbornik', 'glavni-izbornik', 0),
(4, 'O nama objave', 'o_nama_objave', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(31, 2, 0),
(32, 2, 0),
(33, 2, 0),
(34, 2, 0),
(35, 2, 0),
(36, 2, 0),
(38, 1, 0),
(43, 1, 0),
(51, 1, 0),
(56, 1, 0),
(74, 1, 0),
(161, 2, 0),
(163, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'nav_menu', '', 0, 7),
(4, 4, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'edunova'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:8:{s:64:\"7920aa57876496b85ec759765c9fbceb2f689ceca6d456f0b062b3a56d967e04\";a:4:{s:10:\"expiration\";i:1635145893;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36\";s:5:\"login\";i:1634973093;}s:64:\"c84e8d64a646273056fc663085af2f85315e4b1d16fa447ab9e61b4f16d675c2\";a:4:{s:10:\"expiration\";i:1635228938;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36\";s:5:\"login\";i:1635056138;}s:64:\"fc12d4a2c844ee1df66b1aa51ccb80eae1075187661559b3d67c5e92326398e4\";a:4:{s:10:\"expiration\";i:1635228944;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36\";s:5:\"login\";i:1635056144;}s:64:\"d8aedbc406f660710130b21abce39b818c2b06333b130cea1d2c2e3110f26ea7\";a:4:{s:10:\"expiration\";i:1635228954;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36\";s:5:\"login\";i:1635056154;}s:64:\"431cf6c3e6fe4ff4b9f45dd7be3546c7eaaf9ef4cf3c50de182ff64eceba45a3\";a:4:{s:10:\"expiration\";i:1635228962;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36\";s:5:\"login\";i:1635056162;}s:64:\"a5a6867e4f79e7638de1dd426b3c05d2800b6db3b3e0ccf2be9bd09f1960b6d3\";a:4:{s:10:\"expiration\";i:1635228974;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36\";s:5:\"login\";i:1635056174;}s:64:\"9567bde8e07c18660a37b79811d7c98488e10f7149c9eae7a52359c98259b2d6\";a:4:{s:10:\"expiration\";i:1635228987;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36\";s:5:\"login\";i:1635056187;}s:64:\"5d07dc1e16b9f52698a21fd3180385ebbe4b17a48fb2de73ab149f2d93bc88e9\";a:4:{s:10:\"expiration\";i:1635229096;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36\";s:5:\"login\";i:1635056296;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_user-settings', 'mfold=o&libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1635169332'),
(20, 1, 'managenav-menuscolumnshidden', 'a:2:{i:0;s:15:\"title-attribute\";i:1;s:11:\"description\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(22, 1, 'nav_menu_recently_edited', '2'),
(23, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(24, 1, 'closedpostboxes_post', 'a:0:{}'),
(25, 1, 'metaboxhidden_post', 'a:0:{}'),
(26, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(27, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(28, 1, 'wp_metaslider_analytics_onboarding_status', 'yes'),
(29, 1, 'extendifysdk_uuid', '8d67c34fb25f90faee81de597f4be6af'),
(30, 1, 'extendifysdk_user_data', '{\"state\":{\"email\":\"\",\"apiKey\":\"\",\"imports\":0,\"uuid\":\"8d67c34fb25f90faee81de597f4be6af\",\"registration\":{\"email\":\"\"},\"allowedImports\":\"3\",\"entryPoint\":\"not-set\",\"enabled\":true,\"hasClickedThroughWelcomePage\":false,\"canInstallPlugins\":true,\"canActivatePlugins\":true},\"version\":0}');

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
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'edunova', '$P$BhiCcV3ufNrBwkiW8gE9JdLYSteiGz0', 'edunova', 'edunova@edunova.hr', 'http://localhost/NicoleNicole', '2021-10-23 07:11:16', '', 0, 'edunova');

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
-- Indexes for table `wp_ngg_album`
--
ALTER TABLE `wp_ngg_album`
  ADD PRIMARY KEY (`id`),
  ADD KEY `extras_post_id_key` (`extras_post_id`);

--
-- Indexes for table `wp_ngg_gallery`
--
ALTER TABLE `wp_ngg_gallery`
  ADD PRIMARY KEY (`gid`),
  ADD KEY `extras_post_id_key` (`extras_post_id`);

--
-- Indexes for table `wp_ngg_pictures`
--
ALTER TABLE `wp_ngg_pictures`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `extras_post_id_key` (`extras_post_id`);

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
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_ngg_album`
--
ALTER TABLE `wp_ngg_album`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_ngg_gallery`
--
ALTER TABLE `wp_ngg_gallery`
  MODIFY `gid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_ngg_pictures`
--
ALTER TABLE `wp_ngg_pictures`
  MODIFY `pid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=481;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1355;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
