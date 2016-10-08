-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2016 at 09:23 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `faisalrev1`
--

-- --------------------------------------------------------

--
-- Table structure for table `bangunan`
--

CREATE TABLE `bangunan` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_sekolah` int(11) NOT NULL,
  `id_infrastruktur` int(11) NOT NULL,
  `bangunan_milik` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bangunan_kondisi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bangunan_tahun` year(4) NOT NULL,
  `bangunan_jml_m` int(11) NOT NULL,
  `bangunan_jml_bm` int(11) NOT NULL,
  `photo_bangunan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bangunan`
--

INSERT INTO `bangunan` (`id`, `id_sekolah`, `id_infrastruktur`, `bangunan_milik`, `bangunan_kondisi`, `bangunan_tahun`, `bangunan_jml_m`, `bangunan_jml_bm`, `photo_bangunan`, `create_at`, `update_at`, `deleted_at`) VALUES
(2, 1, 1, 'Milik', 'Baik', 0000, 1, 0, 'uploads/2016-09/5e09dd91a50e003f8dd3685c9e8d8440.jpg', '2016-09-30 08:25:36', '0000-00-00 00:00:00', '2016-09-30 01:25:36'),
(3, 0, 11, 'Milik', 'Rusak Ringan', 1998, 1, 0, 'uploads/2016-09/8e46d83228b8006488706d2c224ecfea.jpg', '2016-09-29 13:54:32', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permalink` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tabel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `aksi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kolom` text COLLATE utf8_unicode_ci NOT NULL,
  `orderby` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sub_query_1` text COLLATE utf8_unicode_ci NOT NULL,
  `sql_where` text COLLATE utf8_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parameter` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_companies`
--

CREATE TABLE `cms_companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `longitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_companies`
--

INSERT INTO `cms_companies` (`id`, `created_at`, `updated_at`, `name`, `address`, `phone`, `email`, `photo`, `description`, `latitude`, `longitude`, `is_primary`) VALUES
(1, '2016-09-06 08:49:07', '2016-09-13 21:53:44', 'MISD Pacitan', 'pacitan', '083846899193', 'misdpacitan@gmail.com', 'vendor/crudbooster/avatar.jpg', 'MISD (Monitoring Infrastruktur Sekolah Dasar) Pacitan adalah website ', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_cms_privileges` int(11) NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_dashboard`
--

INSERT INTO `cms_dashboard` (`id`, `created_at`, `updated_at`, `name`, `id_cms_privileges`, `content`) VALUES
(1, '2016-09-06 08:49:07', NULL, 'Total Users', 1, 'a:9:{s:4:"type";s:16:"statistic_number";s:2:"id";s:1:"3";s:5:"label";s:11:"Total Users";s:4:"icon";s:18:"ion-person-stalker";s:5:"color";s:3:"red";s:10:"table_name";s:9:"cms_users";s:14:"aggregate_type";s:5:"count";s:6:"column";s:2:"id";s:9:"sql_where";s:0:"";}'),
(2, '2016-09-06 08:49:07', NULL, 'Total Companies', 1, 'a:8:{s:4:"type";s:16:"statistic_number";s:2:"id";s:1:"4";s:5:"label";s:13:"Total Company";s:5:"color";s:6:"yellow";s:10:"table_name";s:13:"cms_companies";s:14:"aggregate_type";s:5:"count";s:6:"column";s:2:"id";s:9:"sql_where";s:0:"";}'),
(3, '2016-09-06 08:49:07', NULL, 'Total Articles', 1, 'a:9:{s:4:"type";s:16:"statistic_number";s:2:"id";s:1:"5";s:5:"label";s:14:"Total Articles";s:4:"icon";s:23:"ion-arrow-graph-up-left";s:5:"color";s:4:"aqua";s:10:"table_name";s:9:"cms_posts";s:14:"aggregate_type";s:5:"count";s:6:"column";s:2:"id";s:9:"sql_where";s:0:"";}'),
(4, '2016-09-06 08:49:07', NULL, 'Total Pages', 1, 'a:9:{s:4:"type";s:16:"statistic_number";s:2:"id";s:1:"6";s:5:"label";s:11:"Total Pages";s:4:"icon";s:23:"ion-arrow-graph-up-left";s:5:"color";s:5:"green";s:10:"table_name";s:9:"cms_pages";s:14:"aggregate_type";s:5:"count";s:6:"column";s:2:"id";s:9:"sql_where";s:0:"";}'),
(5, '2016-09-06 08:49:07', NULL, 'Articles By Date', 1, 'a:10:{s:4:"type";s:10:"chart_line";s:2:"id";s:2:"11";s:5:"label";s:16:"Articles By Date";s:5:"color";s:6:"yellow";s:5:"width";s:4:"half";s:10:"table_name";s:9:"cms_posts";s:14:"aggregate_type";s:5:"count";s:6:"column";s:2:"id";s:9:"sql_where";s:0:"";s:12:"sql_group_by";s:27:"DATE(created_at) as tanggal";}'),
(6, '2016-09-06 08:49:07', NULL, 'Articles Bar', 1, 'a:10:{s:4:"type";s:9:"chart_bar";s:2:"id";s:2:"14";s:5:"label";s:12:"Articles Bar";s:5:"color";s:5:"green";s:5:"width";s:4:"half";s:10:"table_name";s:9:"cms_posts";s:14:"aggregate_type";s:5:"count";s:6:"column";s:2:"id";s:9:"sql_where";s:0:"";s:12:"sql_group_by";s:27:"date(created_at) as tanggal";}');

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `send_at` datetime NOT NULL,
  `email_recipient` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_cc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_content` text COLLATE utf8_unicode_ci NOT NULL,
  `is_sent` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ipaddress` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `useragent` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_cms_users` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `created_at`, `updated_at`, `ipaddress`, `useragent`, `url`, `description`, `id_cms_users`) VALUES
(1, '2016-09-06 10:23:28', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/cms_pages/add-save', 'Add new data test at Pages', 1),
(2, '2016-09-07 08:36:18', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/users/add-save', 'Add new data SDN Wonoanti 1 at Users', 1),
(3, '2016-09-07 08:36:58', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/users/edit-save/3', 'Update data SDN Wonoanti 1 at Users', 1),
(4, '2016-09-07 08:37:26', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/users/edit-save/3', 'Update data SDN Wonoanti 1 at Users', 1),
(5, '2016-09-07 08:39:31', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/users/edit-save/3', 'Update data SDN Wonoanti 1 at Users', 1),
(6, '2016-09-07 08:44:33', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/users/edit-save/3', 'Update data SDN Wonoanti 1 at Users', 1),
(7, '2016-09-07 08:46:19', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/settings/edit-save/1', 'Update data appname at Settings', 1),
(8, '2016-09-07 11:15:13', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/users/edit-save/3', 'Update data SDN Wonoanti 1 at Users', 1),
(9, '2016-09-09 00:29:43', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/cms_moduls/delete/17', 'Delete data Infrastruktur Sekolah at Moduls', 1),
(10, '2016-09-09 00:37:52', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/cms_moduls/delete/16', 'Delete data Identitas Sekolah at Moduls', 1),
(11, '2016-09-09 00:38:10', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/cms_moduls/delete/18', 'Delete data Jenis Infrastruktur at Moduls', 1),
(12, '2016-09-09 00:38:24', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/cms_moduls/delete/19', 'Delete data Tanggal Perbaikan at Moduls', 1),
(13, '2016-09-09 00:38:36', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/cms_moduls/delete/20', 'Delete data Infrastruktur Sekolah at Moduls', 1),
(14, '2016-09-10 22:24:08', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/infrastruktur/add-save', 'Add new data  at Tambah Infrastruktur', 1),
(15, '2016-09-10 22:56:43', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/users/add-save', 'Add new data AdminDinas at Users', 1),
(16, '2016-09-10 23:30:11', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/users/delete/5', 'Delete data member1 at Users', 1),
(17, '2016-09-10 23:31:24', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/users/delete-image', 'Delete image for Super Admin at Users', 1),
(18, '2016-09-10 23:33:20', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/users/edit-save/1', 'Update data Super Admin at Users', 1),
(19, '2016-09-10 23:39:26', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/users/delete-image', 'Delete image for AdminDinas at Users', 1),
(20, '2016-09-10 23:39:48', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/users/edit-save/4', 'Update data AdminDinas at Users', 1),
(21, '2016-09-13 07:10:06', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/users/delete-image', 'Delete image for SDN Wonoanti 1 at Users', 1),
(22, '2016-09-13 07:12:59', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/users/edit-save/3', 'Update data SDN Wonoanti at Users', 1),
(23, '2016-09-13 21:53:23', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/companies/edit-save/1', 'Update data MISD Pacitan at Companies', 1),
(24, '2016-09-13 21:53:44', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/companies/edit-save/1', 'Update data MISD Pacitan at Companies', 1),
(25, '2016-09-13 21:54:19', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/cms_posts/delete/30', 'Delete data Ad sunt aliquam rerum ipsam sit. at Articles', 1),
(26, '2016-09-13 21:54:41', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/cms_posts/delete-selected', 'Delete data Error incidunt quidem modi animi illum assumenda qui. at Articles', 1),
(27, '2016-09-13 21:54:41', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/cms_posts/delete-selected', 'Delete data Explicabo ex praesentium ipsa vel soluta ea velit. at Articles', 1),
(28, '2016-09-13 21:54:41', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/cms_posts/delete-selected', 'Delete data Placeat aut magnam possimus aut deleniti non consequatur. at Articles', 1),
(29, '2016-09-13 21:54:41', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/cms_posts/delete-selected', 'Delete data Id ut hic quo consequatur. at Articles', 1),
(30, '2016-09-13 21:54:41', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/cms_posts/delete-selected', 'Delete data Adipisci aperiam sunt dolorem qui eos. at Articles', 1),
(31, '2016-09-13 21:54:41', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/cms_posts/delete-selected', 'Delete data Eum sapiente tenetur consequatur a unde. at Articles', 1),
(32, '2016-09-13 21:54:41', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/cms_posts/delete-selected', 'Delete data Non minus quam quidem corporis quasi aliquid. at Articles', 1),
(33, '2016-09-13 21:54:41', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/cms_posts/delete-selected', 'Delete data Debitis temporibus sunt est nihil. at Articles', 1),
(34, '2016-09-13 21:54:41', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/cms_posts/delete-selected', 'Delete data Ullam aliquid alias atque est atque. at Articles', 1),
(35, '2016-09-13 21:54:41', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/cms_posts/delete-selected', 'Delete data Quisquam omnis quis quam quia. at Articles', 1),
(36, '2016-09-13 21:54:41', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/cms_posts/delete-selected', 'Delete data Consectetur nemo quo voluptas at facilis. at Articles', 1),
(37, '2016-09-13 21:54:41', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/cms_posts/delete-selected', 'Delete data Omnis quia pariatur nihil aut maxime. at Articles', 1),
(38, '2016-09-13 21:54:42', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/cms_posts/delete-selected', 'Delete data Est quasi ipsam nam ad ut debitis in velit. at Articles', 1),
(39, '2016-09-13 21:54:42', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/cms_posts/delete-selected', 'Delete data Laborum quaerat saepe dolores dolore fugiat distinctio voluptatibus tempora. at Articles', 1),
(40, '2016-09-13 21:54:42', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/cms_posts/delete-selected', 'Delete data Maxime eligendi et ut et cum eos. at Articles', 1),
(41, '2016-09-13 21:54:42', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/cms_posts/delete-selected', 'Delete data Saepe a molestiae vel molestias nam et. at Articles', 1),
(42, '2016-09-13 21:54:42', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/cms_posts/delete-selected', 'Delete data Vitae repellat est consequuntur neque. at Articles', 1),
(43, '2016-09-13 21:54:42', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/cms_posts/delete-selected', 'Delete data Velit quia autem dolor impedit a officiis. at Articles', 1),
(44, '2016-09-13 21:54:42', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/cms_posts/delete-selected', 'Delete data Quia ipsam eius quidem excepturi. at Articles', 1),
(45, '2016-09-13 21:54:42', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/cms_posts/delete-selected', 'Delete data Quasi ut cum et enim. at Articles', 1),
(46, '2016-09-13 21:57:31', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/cms_posts/delete/9', 'Delete data Commodi sint voluptatem ut voluptas eaque fugiat. at Articles', 1),
(47, '2016-09-13 21:57:44', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/cms_posts/delete/8', 'Delete data Voluptatibus et voluptas harum et. at Articles', 1),
(48, '2016-09-13 21:58:43', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/cms_posts/delete-selected', 'Delete data Nostrum rerum perspiciatis libero corporis ut. at Articles', 1),
(49, '2016-09-13 21:58:43', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/cms_posts/delete-selected', 'Delete data Est omnis porro voluptate odio repellat minima sunt. at Articles', 1),
(50, '2016-09-13 21:58:43', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/cms_posts/delete-selected', 'Delete data Et eius et nihil quo sed. at Articles', 1),
(51, '2016-09-13 21:59:07', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/cms_posts/delete-selected', 'Delete data Laudantium aut omnis iure officia dolorem a beatae quae. at Articles', 1),
(52, '2016-09-13 21:59:07', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/cms_posts/delete-selected', 'Delete data Eligendi fuga enim tempora. at Articles', 1),
(53, '2016-09-13 21:59:07', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/cms_posts/delete-selected', 'Delete data Et autem non commodi eum magni possimus. at Articles', 1),
(54, '2016-09-13 21:59:07', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisite/public/admin/cms_posts/delete-selected', 'Delete data Commodi sit iste hic exercitationem. at Articles', 1),
(55, '2016-09-16 16:05:54', NULL, '36.84.69.153', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://misdpacitan.esy.es/public/admin/users/delete-image', 'Trying delete image AdminDinas at ', 4),
(56, '2016-09-16 16:08:14', NULL, '36.84.69.153', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://misdpacitan.esy.es/public/admin/users/delete-image', 'Delete image for AdminDinas at Users', 1),
(57, '2016-09-16 16:09:12', NULL, '36.84.69.153', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://misdpacitan.esy.es/public/admin/users/edit-save/4', 'Update data AdminDinas at Users', 1),
(58, '2016-09-16 16:09:38', NULL, '36.84.69.153', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://misdpacitan.esy.es/public/admin/users/delete-image', 'Delete image for Super Admin at Users', 1),
(59, '2016-09-16 16:10:10', NULL, '36.84.69.153', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://misdpacitan.esy.es/public/admin/users/edit-save/1', 'Update data Super Admin at Users', 1),
(60, '2016-09-16 16:11:19', NULL, '36.84.69.153', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://misdpacitan.esy.es/public/admin/users/delete-image', 'Delete image for Super Admin at Users', 1),
(61, '2016-09-16 16:12:28', NULL, '36.84.69.153', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://misdpacitan.esy.es/public/admin/users/edit-save/1', 'Update data Super Admin at Users', 1),
(62, '2016-09-16 16:14:03', NULL, '36.84.69.153', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://misdpacitan.esy.es/public/admin/users/delete-image', 'Delete image for SDN Wonoanti at Users', 1),
(63, '2016-09-16 16:14:22', NULL, '36.84.69.153', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://misdpacitan.esy.es/public/admin/users/edit-save/3', 'Update data SDN Wonoanti at Users', 1),
(64, '2016-09-17 22:01:51', NULL, '112.215.153.27', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://misdpacitan.esy.es/public/admin/sekolah/add-save', 'Add new data SDN WONOANTI 1 at Identitas Sekolah', 3),
(65, '2016-09-17 22:05:56', NULL, '112.215.153.27', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0', 'http://misdpacitan.esy.es/public/admin/infrastruktur/add-save', 'Add new data  at Tambah Infrastruktur', 4),
(66, '2016-09-17 22:06:14', NULL, '112.215.173.152', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0', 'http://misdpacitan.esy.es/public/admin/infrastruktur/add-save', 'Add new data  at Tambah Infrastruktur', 4),
(67, '2016-09-17 22:06:41', NULL, '112.215.153.27', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0', 'http://misdpacitan.esy.es/public/admin/infrastruktur/add-save', 'Add new data  at Tambah Infrastruktur', 4),
(68, '2016-09-17 22:06:54', NULL, '112.215.173.152', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0', 'http://misdpacitan.esy.es/public/admin/infrastruktur/add-save', 'Add new data  at Tambah Infrastruktur', 4),
(69, '2016-09-17 22:07:13', NULL, '112.215.153.27', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0', 'http://misdpacitan.esy.es/public/admin/infrastruktur/add-save', 'Add new data  at Tambah Infrastruktur', 4),
(70, '2016-09-17 22:07:30', NULL, '112.215.153.27', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0', 'http://misdpacitan.esy.es/public/admin/infrastruktur/add-save', 'Add new data  at Tambah Infrastruktur', 4),
(71, '2016-09-17 22:07:48', NULL, '112.215.173.152', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0', 'http://misdpacitan.esy.es/public/admin/infrastruktur/add-save', 'Add new data  at Tambah Infrastruktur', 4),
(72, '2016-09-17 22:08:13', NULL, '112.215.153.27', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0', 'http://misdpacitan.esy.es/public/admin/infrastruktur/add-save', 'Add new data  at Tambah Infrastruktur', 4),
(73, '2016-09-17 22:08:37', NULL, '112.215.173.152', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0', 'http://misdpacitan.esy.es/public/admin/infrastruktur/add-save', 'Add new data  at Tambah Infrastruktur', 4),
(74, '2016-09-17 22:08:56', NULL, '112.215.153.27', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0', 'http://misdpacitan.esy.es/public/admin/infrastruktur/add-save', 'Add new data  at Tambah Infrastruktur', 4),
(75, '2016-09-17 22:09:24', NULL, '112.215.173.152', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0', 'http://misdpacitan.esy.es/public/admin/infrastruktur/add-save', 'Add new data  at Tambah Infrastruktur', 4),
(76, '2016-09-17 22:09:47', NULL, '112.215.173.152', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0', 'http://misdpacitan.esy.es/public/admin/infrastruktur/add-save', 'Add new data  at Tambah Infrastruktur', 4),
(77, '2016-09-17 22:16:07', NULL, '8.37.230.14', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://misdpacitan.esy.es/public/admin/sekolah/edit-save/1', 'Update data SDN WONOANTI 1 at Identitas Sekolah', 3),
(78, '2016-09-17 22:19:26', NULL, '8.37.230.14', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://misdpacitan.esy.es/public/admin/sekolah/edit-save/1', 'Update data SDN WONOANTI 1 at Identitas Sekolah', 3),
(79, '2016-09-17 22:36:07', NULL, '8.37.230.14', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://misdpacitan.esy.es/public/admin/sekolah/edit-save/1', 'Update data SDN WONOANTI 1 at Identitas Sekolah', 3),
(80, '2016-09-17 22:40:42', NULL, '112.215.173.152', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://misdpacitan.esy.es/public/admin/bangunan/add-save', 'Add new data  at Infrastruktur Sekolah', 3),
(81, '2016-09-17 22:42:53', NULL, '112.215.173.152', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0', 'http://misdpacitan.esy.es/public/admin/bangunan/delete-image', 'Trying delete image 1 at Infrastruktur Sekolah', 4),
(82, '2016-09-17 20:30:56', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisiterev1/public/admin/bangunan/add-save', 'Add new data  at Infrastruktur Sekolah', 3),
(83, '2016-09-20 06:01:20', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisiterev1/public/admin/bangunan/delete-image', 'Delete image for 1 at Infrastruktur Sekolah', 1),
(84, '2016-09-20 06:01:31', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisiterev1/public/admin/bangunan/edit-save/1', 'Update data  at Infrastruktur Sekolah', 1),
(85, '2016-09-20 06:02:46', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.14488.1025 Safari/537.36', 'http://localhost/faisiterev1/public/admin/users/delete-image', 'Trying delete image SDN Wonoanti at ', 3),
(86, '2016-09-26 03:58:00', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.15533.1010 Safari/537.36', 'http://localhost/faisiterev1/public/admin/sekolah/edit-save/1', 'Update data SDN WONOANTI 1 at Identitas Sekolah', 1),
(87, '2016-09-26 04:04:52', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.15533.1010 Safari/537.36', 'http://localhost/faisiterev1/public/admin/sekolah/edit-save/1', 'Update data SDN WONOANTI 1 at Identitas Sekolah', 1),
(88, '2016-09-28 01:00:54', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.101 Safari/537.36 OPR/40.0.2308.62', 'http://localhost/faisiterev1/public/admin/renovasi/add-save', 'Add new data  at Tanggal Perbaikan', 3),
(89, '2016-09-28 01:05:23', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.101 Safari/537.36 OPR/40.0.2308.62', 'http://localhost/faisiterev1/public/admin/bangunan/delete/1', 'Delete data 1 at Infrastruktur Sekolah', 3),
(90, '2016-09-29 06:54:32', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 UBrowser/5.7.15533.1010 Safari/537.36', 'http://localhost/faisiterev1/public/admin/bangunan/add-save', 'Add new data  at Infrastruktur Sekolah', 1),
(91, '2016-09-30 00:53:22', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.101 Safari/537.36 OPR/40.0.2308.62', 'http://localhost/faisiterev1/public/admin/tanah/add-save', 'Add new data  at Luas Tanah', 1),
(92, '2016-09-30 00:54:38', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.101 Safari/537.36 OPR/40.0.2308.62', 'http://localhost/faisiterev1/public/admin/renovasi/edit-save/1', 'Update data  at Tanggal Perbaikan', 1),
(93, '2016-09-30 01:25:36', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.101 Safari/537.36 OPR/40.0.2308.62', 'http://localhost/faisiterev1/public/admin/bangunan/delete/2', 'Delete data 2 at Infrastruktur Sekolah', 1),
(94, '2016-10-01 12:20:27', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.101 Safari/537.36 OPR/40.0.2308.62', 'http://localhost/faisiterev1/public/admin/users/delete-image', 'Delete image for AdminDinas at Users', 1),
(95, '2016-10-01 12:20:54', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.101 Safari/537.36 OPR/40.0.2308.62', 'http://localhost/faisiterev1/public/admin/users/edit-save/4', 'Update data AdminDinas at Users', 1),
(96, '2016-10-01 12:21:18', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.101 Safari/537.36 OPR/40.0.2308.62', 'http://localhost/faisiterev1/public/admin/users/delete-image', 'Delete image for SDN Wonoanti at Users', 1),
(97, '2016-10-01 12:21:46', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.101 Safari/537.36 OPR/40.0.2308.62', 'http://localhost/faisiterev1/public/admin/users/edit-save/3', 'Update data SDN Wonoanti at Users', 1),
(98, '2016-10-01 12:22:09', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.101 Safari/537.36 OPR/40.0.2308.62', 'http://localhost/faisiterev1/public/admin/users/delete-image', 'Delete image for Super Admin at Users', 1),
(99, '2016-10-01 12:22:34', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.101 Safari/537.36 OPR/40.0.2308.62', 'http://localhost/faisiterev1/public/admin/users/edit-save/1', 'Update data Super Admin at Users', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_cms_menus_groups` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `menu_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `menu_link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_cms_pages` int(11) NOT NULL,
  `id_cms_posts` int(11) NOT NULL,
  `id_cms_posts_categories` int(11) NOT NULL,
  `parent_id_cms_menus` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus_groups`
--

CREATE TABLE `cms_menus_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sql_where` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sql_orderby` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `limit_data` int(11) DEFAULT NULL,
  `id_cms_moduls_group` int(11) NOT NULL,
  `is_softdelete` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `created_at`, `updated_at`, `name`, `icon`, `path`, `table_name`, `controller`, `sql_where`, `sql_orderby`, `sorting`, `limit_data`, `id_cms_moduls_group`, `is_softdelete`, `is_active`) VALUES
(1, '2016-09-06 08:49:07', NULL, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', '', '', 1, NULL, 4, 0, 1),
(2, '2016-09-06 08:49:07', NULL, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', '', '', 6, NULL, 3, 0, 1),
(3, '2016-09-06 08:49:07', NULL, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', '', '', 8, NULL, 4, 0, 0),
(4, '2016-09-06 08:49:07', NULL, 'Moduls', 'fa fa-cog', 'cms_moduls', 'cms_moduls', 'ModulsController', '', '', 2, NULL, 4, 0, 0),
(5, '2016-09-06 08:49:07', NULL, 'Users', 'fa fa-users', 'users', 'cms_users', 'UsersController', '', '', 1, NULL, 3, 0, 1),
(6, '2016-09-06 08:49:07', NULL, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', '', '', 1, NULL, 4, 0, 1),
(7, '2016-09-06 08:49:07', NULL, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls_group', 'ModulsGroupController', '', '', 1, NULL, 4, 0, 1),
(8, '2016-09-06 08:49:07', NULL, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', '', '', 1, NULL, 4, 0, 1),
(9, '2016-09-06 08:49:07', NULL, 'Companies', 'fa fa-bank', 'companies', 'cms_companies', 'CompaniesController', '', '', 1, NULL, 1, 0, 1),
(10, '2016-09-06 08:49:07', NULL, 'Logs', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', '', '', 1, NULL, 4, 0, 1),
(11, '2016-09-06 08:49:07', NULL, 'Menu Group', 'fa fa-flag-o', 'cms_menus_groups', 'cms_menus_groups', 'MenusGroupsController', '', '', 1, NULL, 4, 0, 1),
(12, '2016-09-06 08:49:07', NULL, 'Menu', 'fa fa-bars', 'cms_menus', 'cms_menus', 'MenusController', '', '', 1, NULL, 4, 0, 0),
(13, '2016-09-06 08:49:07', NULL, 'Articles', 'fa fa-bars', 'cms_posts', 'cms_posts', 'PostsController', '', '', 1, NULL, 2, 0, 1),
(14, '2016-09-06 08:49:07', NULL, 'Categories', 'fa fa-bars', 'cms_posts_categories', 'cms_posts_categories', 'PostsCategoriesController', '', '', 1, NULL, 2, 0, 1),
(15, '2016-09-06 08:49:07', NULL, 'Pages', 'fa fa-bars', 'cms_pages', 'cms_pages', 'PagesController', '', '', 2, NULL, 1, 0, 1),
(16, NULL, NULL, 'Identitas Sekolah', 'fa fa-bars', 'sekolah', 'sekolah', 'AdminSekolahController', '', '', 3, 0, 1, 1, 1),
(17, NULL, NULL, 'Infrastruktur Sekolah', 'fa fa-bars', 'bangunan', 'bangunan', 'AdminBangunanController', '', '', 4, 0, 1, 1, 1),
(18, NULL, NULL, 'Tanggal Perbaikan', 'fa fa-bars', 'renovasi', 'renovasi', 'AdminRenovasiController', '', '', 5, 0, 1, 1, 1),
(19, NULL, NULL, 'Tambah Infrastruktur', 'fa fa-bars', 'infrastruktur', 'infrastruktur', 'AdminInfrastrukturController', '', '', 6, 0, 1, 1, 1),
(20, NULL, NULL, 'Luas Tanah', 'fa fa-bars', 'tanah', 'tanah', 'AdminTanahController', '', '', 7, 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_moduls_group`
--

CREATE TABLE `cms_moduls_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nama_group` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sorting_group` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_group` tinyint(1) NOT NULL,
  `icon_group` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_moduls_group`
--

INSERT INTO `cms_moduls_group` (`id`, `created_at`, `updated_at`, `nama_group`, `sorting_group`, `is_group`, `icon_group`) VALUES
(1, '2016-09-06 08:49:07', NULL, 'Public', '1', 0, 'fa fa-bars'),
(2, '2016-09-06 08:49:07', NULL, 'Articles', '2', 1, 'fa fa-bars'),
(3, '2016-09-06 08:49:07', NULL, 'Users', '3', 1, 'fa fa-users'),
(4, '2016-09-06 08:49:07', NULL, 'Setting', '4', 1, 'fa fa-cog');

-- --------------------------------------------------------

--
-- Table structure for table `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_cms_users` int(11) NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notification_command` text COLLATE utf8_unicode_ci NOT NULL,
  `is_read` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_notifications`
--

INSERT INTO `cms_notifications` (`id`, `created_at`, `updated_at`, `id_cms_users`, `content`, `icon`, `notification_command`, `is_read`) VALUES
(1, '2016-09-18 00:00:00', NULL, 1, 'SELAMAT DATANG', 'wellcome', 'SELMAT DATANG DI WEBSITE MONITORING INFRASTRUKTUR SEKOLAH DASAR KABUPATEN PACITAN', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_pages`
--

CREATE TABLE `cms_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_pages`
--

INSERT INTO `cms_pages` (`id`, `created_at`, `updated_at`, `slug`, `title`, `content`, `deleted_at`) VALUES
(1, '2016-09-06 10:23:28', NULL, 'test', 'test', 'You can update your crudbooster by replacing your old script to newest script. Then you must install crudbooster again, crudbooster will update your database but will not remove your own table. Please make sure you have backup your CRUDBooster before updating the newest CRUDBooster.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_posts`
--

CREATE TABLE `cms_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `id_cms_users` int(11) NOT NULL,
  `id_cms_posts_categories` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_posts_categories`
--

CREATE TABLE `cms_posts_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_posts_categories`
--

INSERT INTO `cms_posts_categories` (`id`, `created_at`, `updated_at`, `name`, `slug`) VALUES
(1, '2016-08-19 21:42:35', NULL, 'possimus dolorem quas', ''),
(2, '2016-08-07 10:04:02', NULL, 'quod ut voluptatem', ''),
(3, '2016-08-10 07:17:00', NULL, 'rem voluptas sed', ''),
(4, '2016-08-11 18:50:32', NULL, 'veniam amet assumenda', ''),
(5, '2016-09-04 18:37:04', NULL, 'commodi aspernatur vitae', '');

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_superadmin` tinyint(1) NOT NULL,
  `theme_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_register` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `created_at`, `updated_at`, `name`, `is_superadmin`, `theme_color`, `is_register`) VALUES
(1, '2016-09-06 08:49:07', NULL, 'Super Administrator', 0, 'skin-blue', 0),
(2, '2016-09-06 08:49:07', NULL, 'Member', 0, 'skin-green-light', 1),
(3, NULL, NULL, 'Adminsekolah', 0, 'skin-yellow', 0),
(4, NULL, NULL, 'AdminDinas', 0, 'skin-red', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_visible` tinyint(1) NOT NULL,
  `is_create` tinyint(1) NOT NULL,
  `is_read` tinyint(1) NOT NULL,
  `is_edit` tinyint(1) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `id_cms_privileges` int(11) NOT NULL,
  `id_cms_moduls` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `created_at`, `updated_at`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`) VALUES
(14, '2016-09-06 08:49:08', NULL, 1, 1, 1, 1, 1, 2, 13),
(130, NULL, NULL, 1, 1, 1, 1, 1, 3, 18),
(129, NULL, NULL, 1, 1, 1, 1, 1, 3, 20),
(128, NULL, NULL, 1, 1, 1, 1, 1, 3, 17),
(127, NULL, NULL, 1, 0, 1, 0, 0, 3, 16),
(122, NULL, NULL, 1, 1, 1, 1, 1, 1, 5),
(121, NULL, NULL, 1, 1, 1, 1, 1, 1, 18),
(120, NULL, NULL, 1, 1, 1, 1, 1, 1, 19),
(119, NULL, NULL, 1, 1, 1, 1, 1, 1, 6),
(118, NULL, NULL, 0, 1, 1, 1, 1, 1, 3),
(117, NULL, NULL, 1, 1, 1, 1, 1, 1, 2),
(116, NULL, NULL, 1, 1, 1, 1, 1, 1, 15),
(115, NULL, NULL, 1, 1, 1, 1, 1, 1, 1),
(114, NULL, NULL, 1, 1, 1, 1, 1, 1, 4),
(113, NULL, NULL, 1, 1, 1, 1, 1, 1, 7),
(112, NULL, NULL, 1, 1, 1, 1, 1, 1, 11),
(111, NULL, NULL, 1, 1, 1, 1, 1, 1, 12),
(110, NULL, NULL, 1, 1, 1, 1, 1, 1, 20),
(109, NULL, NULL, 1, 0, 1, 0, 1, 1, 10),
(108, NULL, NULL, 1, 1, 1, 1, 1, 1, 17),
(107, NULL, NULL, 1, 1, 1, 1, 1, 1, 16),
(106, NULL, NULL, 1, 1, 1, 1, 1, 1, 9),
(105, NULL, NULL, 1, 1, 1, 1, 1, 1, 14),
(104, NULL, NULL, 1, 1, 1, 1, 1, 1, 13),
(103, NULL, NULL, 1, 1, 1, 1, 1, 1, 8),
(138, NULL, NULL, 1, 0, 1, 0, 0, 4, 18),
(137, NULL, NULL, 1, 1, 1, 1, 1, 4, 19),
(136, NULL, NULL, 1, 1, 1, 1, 1, 4, 1),
(135, NULL, NULL, 1, 1, 1, 1, 1, 4, 11),
(134, NULL, NULL, 1, 1, 1, 1, 1, 4, 12),
(133, NULL, NULL, 1, 0, 1, 0, 0, 4, 20),
(132, NULL, NULL, 1, 0, 1, 0, 0, 4, 17),
(131, NULL, NULL, 1, 1, 1, 1, 1, 4, 16);

-- --------------------------------------------------------

--
-- Table structure for table `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `created_at`, `updated_at`, `name`, `content`, `content_input_type`, `dataenum`, `helper`) VALUES
(1, '2016-09-06 08:49:08', '2016-09-07 08:46:19', 'appname', 'MISD Pacitan', 'text', NULL, NULL),
(2, '2016-09-06 08:49:08', NULL, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL),
(3, '2016-09-06 08:49:08', NULL, 'app_lockscreen_timeout', '60', 'text', NULL, NULL),
(4, '2016-09-06 08:49:08', NULL, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc'),
(5, '2016-09-06 08:49:08', NULL, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL),
(6, '2016-09-06 08:49:08', NULL, 'smtp_host', '', 'text', NULL, NULL),
(7, '2016-09-06 08:49:08', NULL, 'smtp_port', '', 'text', NULL, 'default 25'),
(8, '2016-09-06 08:49:08', NULL, 'smtp_username', '', 'text', NULL, NULL),
(9, '2016-09-06 08:49:08', NULL, 'smtp_password', '', 'text', NULL, NULL),
(10, '2016-09-06 08:49:08', NULL, 'logo', '', 'upload', NULL, NULL),
(11, '2016-09-06 08:49:08', NULL, 'favicon', '', 'upload', NULL, NULL),
(12, '2016-09-06 08:49:08', NULL, 'api_debug_mode', 'true', 'select', 'true,false', NULL),
(13, '2016-09-06 08:49:08', NULL, 'google_api_key', '', 'text', NULL, NULL),
(14, '2016-09-06 08:49:08', NULL, 'register_email_confirmation', '', 'wysiwyg', NULL, 'Input message about email confirmation here, use alias [link_confirmation] to include the link.'),
(15, '2016-09-06 08:49:08', NULL, 'register_email_welcome', '', 'wysiwyg', NULL, 'You can input message after registration is success. Then the message will be send to registrant. use [name] as user ''s name, use [email] as user''s email');

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_cms_privileges` int(11) NOT NULL,
  `id_cms_companies` int(11) NOT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hash_confirmation` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`id`, `created_at`, `updated_at`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `id_cms_companies`, `status`, `hash_confirmation`) VALUES
(1, '2016-09-06 08:49:07', '2016-10-01 12:22:34', 'Super Admin', 'uploads/2016-10/4bbd5eb44af5b53803884f936801ab15.jpg', 'superadmin@misdpacitan.esy.es', '$2y$10$B7J67ZhJVoX.nZpj9SmhZeDLKhaXA2Q7jPR56Ig1JJyOBVrPh.Ozq', 1, 1, 'Active', ''),
(2, '2016-09-06 08:49:07', NULL, 'Member', 'vendor/crudbooster/avatar.jpg', 'member@crudbooster.com', '$2y$10$9kWvop.pGAwljLPLq4HPSOnPDoQ0rMH9jXP5XH/tRmwtHzZjGWwx6', 2, 1, 'Active', ''),
(3, '2016-09-07 08:36:18', '2016-10-01 12:21:46', 'SDN Wonoanti', 'uploads/2016-10/128020beca9c3d9b35b7f43e3e93a535.png', 'sdwonoanti@misdpacitan.esy.es', '$2y$10$qEcoZWFpParGqYuTlGe9audlVFlmRGDWNDa7cplcdaBlQMgTwqcUG', 3, 1, 'Active', ''),
(4, '2016-09-10 22:56:43', '2016-10-01 12:20:54', 'AdminDinas', 'uploads/2016-10/8ceb007ada34a1e5e360cd03945910e5.jpg', 'faisal@misdpacitan.esy.es', '$2y$10$yt/ddtWMpKoiYhIpai58g.QohoQ7.t3v7r7q9ekNST5GZpBG3L8Sy', 4, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `infrastruktur`
--

CREATE TABLE `infrastruktur` (
  `id` int(10) UNSIGNED NOT NULL,
  `infrastruktur_jenis` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `infrastruktur`
--

INSERT INTO `infrastruktur` (`id`, `infrastruktur_jenis`, `create_at`, `update_at`, `deleted_at`) VALUES
(1, 'Ruang Kelas', '2016-09-11 05:24:08', '0000-00-00 00:00:00', NULL),
(2, 'Ruang Perpustakaan', '2016-09-17 22:05:56', '0000-00-00 00:00:00', NULL),
(3, 'Laboratorium IPA', '2016-09-17 22:06:14', '0000-00-00 00:00:00', NULL),
(4, 'Ruang Kepala Sekolah', '2016-09-17 22:06:41', '0000-00-00 00:00:00', NULL),
(5, 'Ruang Guru', '2016-09-17 22:06:54', '0000-00-00 00:00:00', NULL),
(6, 'Ruang Komputer', '2016-09-17 22:07:13', '0000-00-00 00:00:00', NULL),
(7, 'Tempat Ibadah', '2016-09-17 22:07:30', '0000-00-00 00:00:00', NULL),
(8, 'Ruang Kesehatan (UKS)', '2016-09-17 22:07:48', '0000-00-00 00:00:00', NULL),
(9, 'Kamar mandi / WC Guru ', '2016-09-17 22:08:13', '0000-00-00 00:00:00', NULL),
(10, 'Kamar mandi / WC Siswa', '2016-09-17 22:08:37', '0000-00-00 00:00:00', NULL),
(11, 'Gudang', '2016-09-17 22:08:56', '0000-00-00 00:00:00', NULL),
(12, 'Ruang Sirkulasi / selasar', '2016-09-17 22:09:24', '0000-00-00 00:00:00', NULL),
(13, 'Tempat bermain / olahraga', '2016-09-17 22:09:47', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_08_07_145904_add_table_cms_apicustom', 1),
('2016_08_07_150332_add_table_cms_companies', 1),
('2016_08_07_150834_add_table_cms_dashboard', 1),
('2016_08_07_151210_add_table_cms_logs', 1),
('2016_08_07_151329_add_table_cms_menus', 1),
('2016_08_07_151445_add_table_cms_menus_groups', 1),
('2016_08_07_151533_add_table_cms_pages', 1),
('2016_08_07_151709_add_table_cms_posts', 1),
('2016_08_07_151829_add_table_cms_posts_categories', 1),
('2016_08_07_152014_add_table_cms_privileges', 1),
('2016_08_07_152214_add_table_cms_privileges_roles', 1),
('2016_08_07_152320_add_table_cms_settings', 1),
('2016_08_07_152421_add_table_cms_users', 1),
('2016_08_07_154624_add_table_cms_moduls', 1),
('2016_08_07_154802_add_table_cms_moduls_group', 1),
('2016_08_17_173115_add_is_register_to_privileges', 1),
('2016_08_17_225409_add_status_cms_users', 1),
('2016_08_17_230703_add_hash_confirmation_cms_users', 1),
('2016_08_20_125418_add_table_cms_notifications', 1),
('2016_09_04_033706_add_table_cms_email_queues', 1),
('2016_09_09_082138_create_sekolah_table', 2),
('2016_09_09_082745_create_bangunan_table', 3),
('2016_09_09_082808_create_infrastruktur_table', 3),
('2016_09_09_082841_create_renovasi_table', 3),
('2016_09_09_170153_create_tanah_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `renovasi`
--

CREATE TABLE `renovasi` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_bangunan` int(11) NOT NULL,
  `renovasi_ket` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `renovasi_renov` year(4) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `renovasi`
--

INSERT INTO `renovasi` (`id`, `id_bangunan`, `renovasi_ket`, `renovasi_renov`, `create_at`, `update_at`, `deleted_at`) VALUES
(1, 2, 'renovasi atap ruang kelas', 2012, '2016-09-30 07:54:38', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sekolah`
--

CREATE TABLE `sekolah` (
  `id` int(10) UNSIGNED NOT NULL,
  `nss` int(11) NOT NULL,
  `npsn` int(11) NOT NULL,
  `sekolah_nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sekolah_jalan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sekolah_jenis` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sekolah_kel_des` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sekolah_kat_wil` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sekolah_kec` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sekolah_kab_kota` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Sekolah_kat_kab_kot` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sekolah_prop` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sekolah_pos` int(11) NOT NULL,
  `sekolah_telp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sekolah_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sekolah_web` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sekolah_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sekolah_akred` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sekolah_waktu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sekolah_gusus` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sekolah_kat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sekolah_mjmn` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sekolah_kuri` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sekolah_inet` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sekolah_bos` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sekolah`
--

INSERT INTO `sekolah` (`id`, `nss`, `npsn`, `sekolah_nama`, `sekolah_jalan`, `sekolah_jenis`, `sekolah_kel_des`, `sekolah_kat_wil`, `sekolah_kec`, `sekolah_kab_kota`, `Sekolah_kat_kab_kot`, `sekolah_prop`, `sekolah_pos`, `sekolah_telp`, `sekolah_email`, `sekolah_web`, `sekolah_status`, `sekolah_akred`, `sekolah_waktu`, `sekolah_gusus`, `sekolah_kat`, `sekolah_mjmn`, `sekolah_kuri`, `sekolah_inet`, `sekolah_bos`, `create_at`, `update_at`, `deleted_at`) VALUES
(1, 322332443, 435452, 'SDN WONOANTI 1', 'Jl. Pentung - Jetak km 2,5', 'SD', 'Wonoanti', 'Tidak Termasuk Kategori 1, 2 dan 3', 'Tulakan', 'Pacitan', 'Kabupaten', 'Jawa Timur', 63571, '8890780', 'rudiadvent@yahoo.com', 'www.sdwonoanti.com', 'Negeri', 'A', 'Pagi', 'Inti', 'SD SSN (Sekolah Standar Nasional)', 'YA', '2004 (KBK)', 'YA', 'YA', '2016-09-17 22:36:07', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tanah`
--

CREATE TABLE `tanah` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_infrastruktur` int(11) NOT NULL,
  `tanah_milik` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tanah_luas` int(11) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tanah`
--

INSERT INTO `tanah` (`id`, `id_infrastruktur`, `tanah_milik`, `tanah_luas`, `create_at`, `update_at`, `deleted_at`) VALUES
(1, 1, 'Milik', 100, '2016-09-30 07:53:22', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bangunan`
--
ALTER TABLE `bangunan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_companies`
--
ALTER TABLE `cms_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus_groups`
--
ALTER TABLE `cms_menus_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_moduls_group`
--
ALTER TABLE `cms_moduls_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_pages`
--
ALTER TABLE `cms_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_posts`
--
ALTER TABLE `cms_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_posts_categories`
--
ALTER TABLE `cms_posts_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `infrastruktur`
--
ALTER TABLE `infrastruktur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `renovasi`
--
ALTER TABLE `renovasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sekolah`
--
ALTER TABLE `sekolah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tanah`
--
ALTER TABLE `tanah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bangunan`
--
ALTER TABLE `bangunan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_companies`
--
ALTER TABLE `cms_companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT for table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_menus_groups`
--
ALTER TABLE `cms_menus_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `cms_moduls_group`
--
ALTER TABLE `cms_moduls_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cms_pages`
--
ALTER TABLE `cms_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cms_posts`
--
ALTER TABLE `cms_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_posts_categories`
--
ALTER TABLE `cms_posts_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;
--
-- AUTO_INCREMENT for table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `infrastruktur`
--
ALTER TABLE `infrastruktur`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `renovasi`
--
ALTER TABLE `renovasi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sekolah`
--
ALTER TABLE `sekolah`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tanah`
--
ALTER TABLE `tanah`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
