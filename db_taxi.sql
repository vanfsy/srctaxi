-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2020 at 07:34 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_taxi`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(2, 0, 2, 'Admin', 'fa-tasks', '', NULL, NULL, NULL),
(3, 2, 3, 'Users', 'fa-users', 'auth/users', NULL, NULL, NULL),
(4, 2, 4, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, NULL),
(5, 2, 5, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, NULL),
(6, 2, 6, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, NULL),
(7, 2, 7, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, NULL),
(8, 0, 0, '企業', 'fa-bank', 'company', '*', '2020-09-22 08:31:20', '2020-09-25 00:01:19'),
(9, 0, 0, '記事', 'fa-archive', 'article', '*', '2020-09-28 05:05:03', '2020-09-28 05:05:03'),
(10, 0, 0, '応募', 'fa-bell', 'application', '*', '2020-09-28 06:03:46', '2020-09-28 06:03:46');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-22 08:12:32', '2020-09-22 08:12:32'),
(2, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-22 08:16:28', '2020-09-22 08:16:28'),
(3, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-22 08:23:23', '2020-09-22 08:23:23'),
(4, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-22 08:24:48', '2020-09-22 08:24:48'),
(5, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-22 08:28:27', '2020-09-22 08:28:27'),
(6, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-22 08:28:35', '2020-09-22 08:28:35'),
(7, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-22 08:28:38', '2020-09-22 08:28:38'),
(8, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-22 08:28:48', '2020-09-22 08:28:48'),
(9, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-22 08:28:51', '2020-09-22 08:28:51'),
(10, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-22 08:28:56', '2020-09-22 08:28:56'),
(11, 1, 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '[]', '2020-09-22 08:30:23', '2020-09-22 08:30:23'),
(12, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-22 08:30:41', '2020-09-22 08:30:41'),
(13, 1, 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '[]', '2020-09-22 08:30:44', '2020-09-22 08:30:44'),
(14, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u30c6\\u30b9\\u30c8\",\"icon\":\"fa-bank\",\"uri\":\"test\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"d1G5fVShMCNaW1Daa5lT5IjYRfxTldl5zQ5vJ6pI\"}', '2020-09-22 08:31:20', '2020-09-22 08:31:20'),
(15, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-22 08:31:21', '2020-09-22 08:31:21'),
(16, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-22 08:31:42', '2020-09-22 08:31:42'),
(17, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-22 08:31:48', '2020-09-22 08:31:48'),
(18, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-09-22 08:32:01', '2020-09-22 08:32:01'),
(19, 1, 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-22 08:35:39', '2020-09-22 08:35:39'),
(20, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-22 08:35:44', '2020-09-22 08:35:44'),
(21, 1, 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-22 08:35:47', '2020-09-22 08:35:47'),
(22, 1, 'admin/auth/menu/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-22 08:35:49', '2020-09-22 08:35:49'),
(23, 1, 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '[]', '2020-09-22 08:35:49', '2020-09-22 08:35:49'),
(24, 1, 'admin/auth/menu/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-22 08:35:58', '2020-09-22 08:35:58'),
(25, 1, 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '[]', '2020-09-22 08:35:59', '2020-09-22 08:35:59'),
(26, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-09-22 08:36:06', '2020-09-22 08:36:06'),
(27, 1, 'admin/test', 'GET', '127.0.0.1', '[]', '2020-09-22 08:37:53', '2020-09-22 08:37:53'),
(28, 1, 'admin/test', 'GET', '127.0.0.1', '[]', '2020-09-22 08:40:59', '2020-09-22 08:40:59'),
(29, 1, 'admin/test', 'GET', '127.0.0.1', '[]', '2020-09-22 08:41:01', '2020-09-22 08:41:01'),
(30, 1, 'admin/test', 'GET', '127.0.0.1', '[]', '2020-09-22 08:41:03', '2020-09-22 08:41:03'),
(31, 1, 'admin/test', 'GET', '127.0.0.1', '[]', '2020-09-22 08:41:31', '2020-09-22 08:41:31'),
(32, 1, 'admin/test', 'GET', '127.0.0.1', '[]', '2020-09-22 08:44:46', '2020-09-22 08:44:46'),
(33, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-09-22 08:45:06', '2020-09-22 08:45:06'),
(34, 1, 'admin/test', 'GET', '127.0.0.1', '[]', '2020-09-22 08:46:57', '2020-09-22 08:46:57'),
(35, 1, 'admin/test', 'GET', '127.0.0.1', '[]', '2020-09-22 08:47:45', '2020-09-22 08:47:45'),
(36, 1, 'admin/test', 'GET', '127.0.0.1', '[]', '2020-09-22 18:45:08', '2020-09-22 18:45:08'),
(37, 1, 'admin/test', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-22 18:45:13', '2020-09-22 18:45:13'),
(38, 1, 'admin/test', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-22 18:45:16', '2020-09-22 18:45:16'),
(39, 1, 'admin/test', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"10\"}', '2020-09-22 18:45:22', '2020-09-22 18:45:22'),
(40, 1, 'admin/test', 'GET', '127.0.0.1', '{\"per_page\":\"10\"}', '2020-09-22 18:46:48', '2020-09-22 18:46:48'),
(41, 1, 'admin/test', 'GET', '127.0.0.1', '{\"per_page\":\"10\"}', '2020-09-22 18:47:20', '2020-09-22 18:47:20'),
(42, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-24 04:32:19', '2020-09-24 04:32:19'),
(43, 1, 'admin/test', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-24 04:38:51', '2020-09-24 04:38:51'),
(44, 1, 'admin/test', 'GET', '127.0.0.1', '[]', '2020-09-24 05:22:11', '2020-09-24 05:22:11'),
(45, 1, 'admin/test', 'GET', '127.0.0.1', '[]', '2020-09-24 05:23:41', '2020-09-24 05:23:41'),
(46, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 05:27:30', '2020-09-24 05:27:30'),
(47, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 05:36:59', '2020-09-24 05:36:59'),
(48, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 05:37:53', '2020-09-24 05:37:53'),
(49, 1, 'admin/test', 'POST', '127.0.0.1', '{\"title\":null,\"description\":\"ADF\",\"password\":null,\"password_confirmation\":null,\"roles\":[null],\"permissions\":[null],\"_token\":\"h6A47y88qKwYz7QGygNhXAL9H6wYp0XCA7MBQkxA\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/test\"}', '2020-09-24 05:38:03', '2020-09-24 05:38:03'),
(50, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 05:38:03', '2020-09-24 05:38:03'),
(51, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 05:38:18', '2020-09-24 05:38:18'),
(52, 1, 'admin/test', 'POST', '127.0.0.1', '{\"title\":null,\"description\":\"test123\",\"password\":null,\"password_confirmation\":null,\"roles\":[null],\"permissions\":[null],\"_token\":\"h6A47y88qKwYz7QGygNhXAL9H6wYp0XCA7MBQkxA\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/test\"}', '2020-09-24 05:38:26', '2020-09-24 05:38:26'),
(53, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 05:38:26', '2020-09-24 05:38:26'),
(54, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 05:40:43', '2020-09-24 05:40:43'),
(55, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 05:50:13', '2020-09-24 05:50:13'),
(56, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 05:52:48', '2020-09-24 05:52:48'),
(57, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 05:53:15', '2020-09-24 05:53:15'),
(58, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 05:53:25', '2020-09-24 05:53:25'),
(59, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 05:53:51', '2020-09-24 05:53:51'),
(60, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 05:54:26', '2020-09-24 05:54:26'),
(61, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 05:56:15', '2020-09-24 05:56:15'),
(62, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 06:19:37', '2020-09-24 06:19:37'),
(63, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 06:47:47', '2020-09-24 06:47:47'),
(64, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 06:48:00', '2020-09-24 06:48:00'),
(65, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 06:48:07', '2020-09-24 06:48:07'),
(66, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 06:50:29', '2020-09-24 06:50:29'),
(67, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 06:50:37', '2020-09-24 06:50:37'),
(68, 1, 'admin/test', 'POST', '127.0.0.1', '{\"title\":null,\"description\":null,\"appeal\":null,\"business_description\":null,\"requirement\":null,\"employment\":null,\"qualification\":null,\"pref\":null,\"password\":null,\"password_confirmation\":null,\"roles\":[null],\"permissions\":[null],\"_token\":\"h6A47y88qKwYz7QGygNhXAL9H6wYp0XCA7MBQkxA\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/test\"}', '2020-09-24 06:58:51', '2020-09-24 06:58:51'),
(69, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 06:58:51', '2020-09-24 06:58:51'),
(70, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 07:00:49', '2020-09-24 07:00:49'),
(71, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 07:03:19', '2020-09-24 07:03:19'),
(72, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 07:07:02', '2020-09-24 07:07:02'),
(73, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 07:10:07', '2020-09-24 07:10:07'),
(74, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 07:11:34', '2020-09-24 07:11:34'),
(75, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 07:12:19', '2020-09-24 07:12:19'),
(76, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 07:13:39', '2020-09-24 07:13:39'),
(77, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 07:14:16', '2020-09-24 07:14:16'),
(78, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 07:17:36', '2020-09-24 07:17:36'),
(79, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 07:18:35', '2020-09-24 07:18:35'),
(80, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 07:19:12', '2020-09-24 07:19:12'),
(81, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 07:19:34', '2020-09-24 07:19:34'),
(82, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 07:20:52', '2020-09-24 07:20:52'),
(83, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 07:21:05', '2020-09-24 07:21:05'),
(84, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 07:21:25', '2020-09-24 07:21:25'),
(85, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 07:21:35', '2020-09-24 07:21:35'),
(86, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 07:29:52', '2020-09-24 07:29:52'),
(87, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 07:30:53', '2020-09-24 07:30:53'),
(88, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 07:34:27', '2020-09-24 07:34:27'),
(89, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 07:39:07', '2020-09-24 07:39:07'),
(90, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":\"17\"}', '2020-09-24 07:39:12', '2020-09-24 07:39:12'),
(91, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 07:39:32', '2020-09-24 07:39:32'),
(92, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":\"19\"}', '2020-09-24 07:39:36', '2020-09-24 07:39:36'),
(93, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":\"20\"}', '2020-09-24 07:42:24', '2020-09-24 07:42:24'),
(94, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":\"21\"}', '2020-09-24 07:43:31', '2020-09-24 07:43:31'),
(95, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":\"24\"}', '2020-09-24 07:43:44', '2020-09-24 07:43:44'),
(96, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":\"26\"}', '2020-09-24 07:44:01', '2020-09-24 07:44:01'),
(97, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 07:44:27', '2020-09-24 07:44:27'),
(98, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":\"19\"}', '2020-09-24 07:44:34', '2020-09-24 07:44:34'),
(99, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":\"21\"}', '2020-09-24 07:44:39', '2020-09-24 07:44:39'),
(100, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 07:45:32', '2020-09-24 07:45:32'),
(101, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2020-09-24 07:45:37', '2020-09-24 07:45:37'),
(102, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-24 07:45:42', '2020-09-24 07:45:42'),
(103, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 07:46:31', '2020-09-24 07:46:31'),
(104, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2020-09-24 07:46:38', '2020-09-24 07:46:38'),
(105, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 07:48:19', '2020-09-24 07:48:19'),
(106, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 07:53:00', '2020-09-24 07:53:00'),
(107, 1, 'admin/test/create', 'GET', '127.0.0.1', '[]', '2020-09-24 07:57:20', '2020-09-24 07:57:20'),
(108, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2020-09-24 07:57:42', '2020-09-24 07:57:42'),
(109, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":null}', '2020-09-24 07:58:07', '2020-09-24 07:58:07'),
(110, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-24 23:47:55', '2020-09-24 23:47:55'),
(111, 1, 'admin/test', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-24 23:48:01', '2020-09-24 23:48:01'),
(112, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-24 23:49:50', '2020-09-24 23:49:50'),
(113, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-25 00:00:50', '2020-09-25 00:00:50'),
(114, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 00:01:01', '2020-09-25 00:01:01'),
(115, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 00:01:04', '2020-09-25 00:01:04'),
(116, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u4f01\\u696d\",\"icon\":\"fa-bank\",\"uri\":\"company\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"tCcS4u2BNwYw3ojFoiTrnLnT3ZWy1Vze0V4XBGbx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu\"}', '2020-09-25 00:01:19', '2020-09-25 00:01:19'),
(117, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-25 00:01:19', '2020-09-25 00:01:19'),
(118, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-25 00:01:23', '2020-09-25 00:01:23'),
(119, 1, 'admin/company', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 00:01:27', '2020-09-25 00:01:27'),
(120, 1, 'admin/company/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 00:02:19', '2020-09-25 00:02:19'),
(121, 1, 'admin/company/create', 'GET', '127.0.0.1', '[]', '2020-09-25 00:02:27', '2020-09-25 00:02:27'),
(122, 1, 'admin/company/create', 'GET', '127.0.0.1', '[]', '2020-09-25 00:03:00', '2020-09-25 00:03:00'),
(123, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2020-09-25 00:05:09', '2020-09-25 00:05:09'),
(124, 1, 'admin/company', 'POST', '127.0.0.1', '{\"title\":\"\\u30bf\\u30a4\\u30c8\\u30eb\",\"description\":\"\\u6982\\u8981\",\"appeal\":\"\\u30a2\\u30d4\\u30fc\\u30eb\\u30dd\\u30a4\\u30f3\\u30c8\",\"business_description\":\"\\u4e8b\\u696d\\u5185\\u5bb9\",\"requirement\":\"\\u52df\\u96c6\\u8981\\u9805\",\"employment\":\"\\u96c7\\u7528\\u5f62\\u614b\",\"qualification\":\"\\u5fdc\\u52df\\u8cc7\\u683c\",\"pref\":\"2\",\"city\":\"\\u516b\\u6238\",\"address\":\"\\u4f4f\\u6240\",\"business_time\":\"\\u52e4\\u52d9\\u6642\\u9593\",\"wage_sys\":\"\\u8cc3\\u91d1\\u4f53\\u7cfb\",\"salary\":\"\\u7d66\\u4e0e\",\"treatment\":\"\\u5f85\\u9047\",\"holiday\":\"\\u4f11\\u65e5\\u30fb\\u4f11\\u6687\",\"lending_sys\":\"\\u8cb8\\u4ed8\\u5236\\u5ea6\",\"_token\":\"tCcS4u2BNwYw3ojFoiTrnLnT3ZWy1Vze0V4XBGbx\"}', '2020-09-25 00:05:26', '2020-09-25 00:05:26'),
(125, 1, 'admin/company/create', 'GET', '127.0.0.1', '[]', '2020-09-25 00:05:27', '2020-09-25 00:05:27'),
(126, 1, 'admin/company/create', 'GET', '127.0.0.1', '[]', '2020-09-25 00:07:01', '2020-09-25 00:07:01'),
(127, 1, 'admin/company/create', 'GET', '127.0.0.1', '[]', '2020-09-25 00:07:06', '2020-09-25 00:07:06'),
(128, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2020-09-25 00:07:45', '2020-09-25 00:07:45'),
(129, 1, 'admin/company', 'POST', '127.0.0.1', '{\"title\":\"\\u30bf\\u30a4\\u30c8\\u30eb\",\"description\":\"\\u6982\\u8981\\r\\n\\u5165\\u529b \\u6982\\u8981\",\"appeal\":\"\\u30a2\\u30d4\\u30fc\\u30eb\\u30dd\\u30a4\\u30f3\\u30c8\",\"business_description\":\"\\u4e8b\\u696d\\u5185\\u5bb9\",\"requirement\":\"\\u52df\\u96c6\\u8981\\u9805\",\"employment\":\"\\u96c7\\u7528\\u5f62\\u614b\",\"qualification\":\"\\u5fdc\\u52df\\u8cc7\\u683c\",\"pref\":\"2\",\"city\":\"\\u516b\\u6238\",\"address\":\"\\u4f4f\\u6240\",\"business_time\":\"\\u52e4\\u52d9\\u6642\\u9593\",\"wage_sys\":\"\\u8cc3\\u91d1\\u4f53\\u7cfb\",\"salary\":\"\\u7d66\\u4e0e\",\"treatment\":\"\\u5f85\\u9047\",\"holiday\":\"\\u4f11\\u65e5\\u30fb\\u4f11\\u6687\",\"lending_sys\":\"\\u8cb8\\u4ed8\\u5236\\u5ea6\",\"_token\":\"tCcS4u2BNwYw3ojFoiTrnLnT3ZWy1Vze0V4XBGbx\"}', '2020-09-25 00:08:02', '2020-09-25 00:08:02'),
(130, 1, 'admin/company/create', 'GET', '127.0.0.1', '[]', '2020-09-25 00:08:03', '2020-09-25 00:08:03'),
(131, 1, 'admin/company', 'POST', '127.0.0.1', '{\"title\":\"\\u30bf\\u30a4\\u30c8\\u30eb\",\"description\":\"\\u6982\\u8981\\r\\n\\u5165\\u529b \\u6982\\u8981\",\"appeal\":\"\\u30a2\\u30d4\\u30fc\\u30eb\\u30dd\\u30a4\\u30f3\\u30c8\",\"business_description\":\"\\u4e8b\\u696d\\u5185\\u5bb9\",\"requirement\":\"\\u52df\\u96c6\\u8981\\u9805\",\"employment\":\"\\u96c7\\u7528\\u5f62\\u614b\",\"qualification\":\"\\u5fdc\\u52df\\u8cc7\\u683c\",\"pref\":\"2\",\"city\":null,\"address\":\"\\u4f4f\\u6240\",\"business_time\":\"\\u52e4\\u52d9\\u6642\\u9593\",\"wage_sys\":\"\\u8cc3\\u91d1\\u4f53\\u7cfb\",\"salary\":\"\\u7d66\\u4e0e\",\"treatment\":\"\\u5f85\\u9047\",\"holiday\":\"\\u4f11\\u65e5\\u30fb\\u4f11\\u6687\",\"lending_sys\":\"\\u8cb8\\u4ed8\\u5236\\u5ea6\",\"_token\":\"tCcS4u2BNwYw3ojFoiTrnLnT3ZWy1Vze0V4XBGbx\"}', '2020-09-25 00:08:55', '2020-09-25 00:08:55'),
(132, 1, 'admin/company/create', 'GET', '127.0.0.1', '[]', '2020-09-25 00:08:55', '2020-09-25 00:08:55'),
(133, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2020-09-25 00:09:01', '2020-09-25 00:09:01'),
(134, 1, 'admin/company', 'POST', '127.0.0.1', '{\"title\":\"\\u30bf\\u30a4\\u30c8\\u30eb\",\"description\":\"\\u6982\\u8981\\r\\n\\u5165\\u529b \\u6982\\u8981\",\"appeal\":\"\\u30a2\\u30d4\\u30fc\\u30eb\\u30dd\\u30a4\\u30f3\\u30c8\",\"business_description\":\"\\u4e8b\\u696d\\u5185\\u5bb9\",\"requirement\":\"\\u52df\\u96c6\\u8981\\u9805\",\"employment\":\"\\u96c7\\u7528\\u5f62\\u614b\",\"qualification\":\"\\u5fdc\\u52df\\u8cc7\\u683c\",\"pref\":\"3\",\"city\":\"\\u5927\\u901a\\u30fb\\u83dc\\u5712\\u30fb\\u80b4\\u753a\",\"address\":\"\\u4f4f\\u6240\",\"business_time\":\"\\u52e4\\u52d9\\u6642\\u9593\",\"wage_sys\":\"\\u8cc3\\u91d1\\u4f53\\u7cfb\",\"salary\":\"\\u7d66\\u4e0e\",\"treatment\":\"\\u5f85\\u9047\",\"holiday\":\"\\u4f11\\u65e5\\u30fb\\u4f11\\u6687\",\"lending_sys\":\"\\u8cb8\\u4ed8\\u5236\\u5ea6\",\"_token\":\"tCcS4u2BNwYw3ojFoiTrnLnT3ZWy1Vze0V4XBGbx\"}', '2020-09-25 00:09:14', '2020-09-25 00:09:14'),
(135, 1, 'admin/company', 'GET', '127.0.0.1', '[]', '2020-09-25 00:09:14', '2020-09-25 00:09:14'),
(136, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-09-25 00:10:09', '2020-09-25 00:10:09'),
(137, 1, 'admin/company', 'GET', '127.0.0.1', '[]', '2020-09-25 00:12:45', '2020-09-25 00:12:45'),
(138, 1, 'admin/company', 'GET', '127.0.0.1', '[]', '2020-09-25 00:12:52', '2020-09-25 00:12:52'),
(139, 1, 'admin/company', 'GET', '127.0.0.1', '[]', '2020-09-25 00:13:00', '2020-09-25 00:13:00'),
(140, 1, 'admin/company', 'GET', '127.0.0.1', '[]', '2020-09-25 00:13:14', '2020-09-25 00:13:14'),
(141, 1, 'admin/company', 'GET', '127.0.0.1', '[]', '2020-09-25 00:13:18', '2020-09-25 00:13:18'),
(142, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 00:13:39', '2020-09-25 00:13:39'),
(143, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 00:15:20', '2020-09-25 00:15:20'),
(144, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-25 00:15:35', '2020-09-25 00:15:35'),
(145, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2020-09-25 00:16:03', '2020-09-25 00:16:03'),
(146, 1, 'admin/company/1', 'PUT', '127.0.0.1', '{\"title\":\"\\u30bf\\u30a4\\u30c8\\u30eb\",\"description\":\"\\u6982\\u8981\\r\\n\\u5165\\u529b \\u6982\\u8981\",\"appeal\":\"\\u30a2\\u30d4\\u30fc\\u30eb\\u30dd\\u30a4\\u30f3\\u30c8\",\"business_description\":\"\\u4e8b\\u696d\\u5185\\u5bb9\",\"requirement\":\"\\u52df\\u96c6\\u8981\\u9805\",\"employment\":\"\\u96c7\\u7528\\u5f62\\u614b\",\"qualification\":\"\\u5fdc\\u52df\\u8cc7\\u683c\",\"pref\":\"2\",\"city\":\"\\u5341\\u548c\\u7530\\u30fb\\u4e09\\u6ca2\\u30fb\\u304a\\u3044\\u3089\\u305b\\u753a\",\"address\":\"\\u4f4f\\u6240\",\"business_time\":\"\\u52e4\\u52d9\\u6642\\u9593\",\"wage_sys\":\"\\u8cc3\\u91d1\\u4f53\\u7cfb\",\"salary\":\"\\u7d66\\u4e0e\",\"treatment\":\"\\u5f85\\u9047\",\"holiday\":\"\\u4f11\\u65e5\\u30fb\\u4f11\\u6687\",\"lending_sys\":\"\\u8cb8\\u4ed8\\u5236\\u5ea6\",\"_token\":\"tCcS4u2BNwYw3ojFoiTrnLnT3ZWy1Vze0V4XBGbx\",\"_method\":\"PUT\"}', '2020-09-25 00:16:13', '2020-09-25 00:16:13'),
(147, 1, 'admin/company', 'GET', '127.0.0.1', '[]', '2020-09-25 00:16:13', '2020-09-25 00:16:13'),
(148, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 00:16:17', '2020-09-25 00:16:17'),
(149, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-25 00:18:54', '2020-09-25 00:18:54'),
(150, 1, 'admin/company/1', 'PUT', '127.0.0.1', '{\"title\":\"\\u30bf\\u30a4\\u30c8\\u30eb\",\"description\":\"\\u6982\\u8981\\r\\n\\u5165\\u529b \\u6982\\u8981\",\"appeal\":\"\\u30a2\\u30d4\\u30fc\\u30eb\\u30dd\\u30a4\\u30f3\\u30c8\",\"business_description\":\"\\u4e8b\\u696d\\u5185\\u5bb9\",\"requirement\":\"\\u52df\\u96c6\\u8981\\u9805\",\"employment\":\"\\u96c7\\u7528\\u5f62\\u614b\",\"qualification\":\"\\u5fdc\\u52df\\u8cc7\\u683c\",\"pref\":\"1\",\"city\":\"\\u672d\\u5e4c\\u5186\\u5c71\\u5468\\u8fba\",\"address\":\"\\u4f4f\\u6240\",\"business_time\":\"\\u52e4\\u52d9\\u6642\\u9593\",\"wage_sys\":\"\\u8cc3\\u91d1\\u4f53\\u7cfb\",\"salary\":\"\\u7d66\\u4e0e\",\"treatment\":\"\\u5f85\\u9047\",\"holiday\":\"\\u4f11\\u65e5\\u30fb\\u4f11\\u6687\",\"lending_sys\":\"\\u8cb8\\u4ed8\\u5236\\u5ea6\",\"_token\":\"tCcS4u2BNwYw3ojFoiTrnLnT3ZWy1Vze0V4XBGbx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/company\"}', '2020-09-25 00:19:17', '2020-09-25 00:19:17'),
(151, 1, 'admin/company', 'GET', '127.0.0.1', '[]', '2020-09-25 00:19:17', '2020-09-25 00:19:17'),
(152, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 00:19:27', '2020-09-25 00:19:27'),
(153, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2020-09-25 00:20:30', '2020-09-25 00:20:30'),
(154, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-25 00:20:33', '2020-09-25 00:20:33'),
(155, 1, 'admin/company/1', 'PUT', '127.0.0.1', '{\"title\":\"\\u30bf\\u30a4\\u30c8\\u30eb\",\"description\":\"\\u6982\\u8981\\r\\n\\u5165\\u529b \\u6982\\u8981\",\"appeal\":\"\\u30a2\\u30d4\\u30fc\\u30eb\\u30dd\\u30a4\\u30f3\\u30c8\",\"business_description\":\"\\u4e8b\\u696d\\u5185\\u5bb9\",\"requirement\":\"\\u52df\\u96c6\\u8981\\u9805\",\"employment\":\"\\u96c7\\u7528\\u5f62\\u614b\",\"qualification\":\"\\u5fdc\\u52df\\u8cc7\\u683c\",\"pref\":\"1\",\"city\":\"\\u672d\\u5e4c\\u5186\\u5c71\\u5468\\u8fba\",\"address\":\"\\u4f4f\\u6240\",\"business_time\":\"\\u52e4\\u52d9\\u6642\\u9593\",\"wage_sys\":\"\\u8cc3\\u91d1\\u4f53\\u7cfb\",\"salary\":\"\\u7d66\\u4e0e\",\"treatment\":\"\\u5f85\\u9047\",\"holiday\":\"\\u4f11\\u65e5\\u30fb\\u4f11\\u6687\",\"lending_sys\":\"\\u8cb8\\u4ed8\\u5236\\u5ea6\",\"_token\":\"tCcS4u2BNwYw3ojFoiTrnLnT3ZWy1Vze0V4XBGbx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/company\"}', '2020-09-25 00:20:36', '2020-09-25 00:20:36'),
(156, 1, 'admin/company', 'GET', '127.0.0.1', '[]', '2020-09-25 00:20:37', '2020-09-25 00:20:37'),
(157, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 00:20:40', '2020-09-25 00:20:40'),
(158, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-25 00:21:19', '2020-09-25 00:21:19'),
(159, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-25 00:21:49', '2020-09-25 00:21:49'),
(160, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-25 00:23:05', '2020-09-25 00:23:05'),
(161, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":\"6\"}', '2020-09-25 00:23:12', '2020-09-25 00:23:12'),
(162, 1, 'admin/company/1', 'PUT', '127.0.0.1', '{\"title\":\"\\u30bf\\u30a4\\u30c8\\u30eb\",\"description\":\"\\u6982\\u8981\\r\\n\\u5165\\u529b \\u6982\\u8981\",\"appeal\":\"\\u30a2\\u30d4\\u30fc\\u30eb\\u30dd\\u30a4\\u30f3\\u30c8\",\"business_description\":\"\\u4e8b\\u696d\\u5185\\u5bb9\",\"requirement\":\"\\u52df\\u96c6\\u8981\\u9805\",\"employment\":\"\\u96c7\\u7528\\u5f62\\u614b\",\"qualification\":\"\\u5fdc\\u52df\\u8cc7\\u683c\",\"pref\":\"6\",\"city\":\"\\u305d\\u306e\\u4ed6\\u5c71\\u5f62\\u770c\",\"address\":\"\\u4f4f\\u6240\",\"business_time\":\"\\u52e4\\u52d9\\u6642\\u9593\",\"wage_sys\":\"\\u8cc3\\u91d1\\u4f53\\u7cfb\",\"salary\":\"\\u7d66\\u4e0e\",\"treatment\":\"\\u5f85\\u9047\",\"holiday\":\"\\u4f11\\u65e5\\u30fb\\u4f11\\u6687\",\"lending_sys\":\"\\u8cb8\\u4ed8\\u5236\\u5ea6\",\"_token\":\"tCcS4u2BNwYw3ojFoiTrnLnT3ZWy1Vze0V4XBGbx\",\"_method\":\"PUT\"}', '2020-09-25 00:23:34', '2020-09-25 00:23:34'),
(163, 1, 'admin/company', 'GET', '127.0.0.1', '[]', '2020-09-25 00:23:35', '2020-09-25 00:23:35'),
(164, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 00:23:38', '2020-09-25 00:23:38'),
(165, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-25 00:24:23', '2020-09-25 00:24:23'),
(166, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-25 00:24:32', '2020-09-25 00:24:32'),
(167, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2020-09-25 00:24:38', '2020-09-25 00:24:38'),
(168, 1, 'admin/company/1', 'PUT', '127.0.0.1', '{\"title\":\"\\u30bf\\u30a4\\u30c8\\u30eb\",\"description\":\"\\u6982\\u8981\\r\\n\\u5165\\u529b \\u6982\\u8981\",\"appeal\":\"\\u30a2\\u30d4\\u30fc\\u30eb\\u30dd\\u30a4\\u30f3\\u30c8\",\"business_description\":\"\\u4e8b\\u696d\\u5185\\u5bb9\",\"requirement\":\"\\u52df\\u96c6\\u8981\\u9805\",\"employment\":\"\\u96c7\\u7528\\u5f62\\u614b\",\"qualification\":\"\\u5fdc\\u52df\\u8cc7\\u683c\",\"pref\":\"1\",\"city\":\"\\u672d\\u5e4c\\u5927\\u901a\\u5468\\u8fba\",\"address\":\"\\u4f4f\\u6240\",\"business_time\":\"\\u52e4\\u52d9\\u6642\\u9593\",\"wage_sys\":\"\\u8cc3\\u91d1\\u4f53\\u7cfb\",\"salary\":\"\\u7d66\\u4e0e\",\"treatment\":\"\\u5f85\\u9047\",\"holiday\":\"\\u4f11\\u65e5\\u30fb\\u4f11\\u6687\",\"lending_sys\":\"\\u8cb8\\u4ed8\\u5236\\u5ea6\",\"_token\":\"tCcS4u2BNwYw3ojFoiTrnLnT3ZWy1Vze0V4XBGbx\",\"_method\":\"PUT\"}', '2020-09-25 00:24:53', '2020-09-25 00:24:53'),
(169, 1, 'admin/company', 'GET', '127.0.0.1', '[]', '2020-09-25 00:24:53', '2020-09-25 00:24:53'),
(170, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 00:24:56', '2020-09-25 00:24:56'),
(171, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-25 00:25:32', '2020-09-25 00:25:32'),
(172, 1, 'admin/company/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-25 00:26:17', '2020-09-25 00:26:17'),
(173, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-25 00:26:17', '2020-09-25 00:26:17'),
(174, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-28 00:09:40', '2020-09-28 00:09:40'),
(175, 1, 'admin/company', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 00:09:44', '2020-09-28 00:09:44'),
(176, 1, 'admin/company', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_export_\":\"page:1\"}', '2020-09-28 00:09:50', '2020-09-28 00:09:50'),
(177, 1, 'admin/company', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}', '2020-09-28 00:10:08', '2020-09-28 00:10:08'),
(178, 1, 'admin/company/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 00:33:58', '2020-09-28 00:33:58'),
(179, 1, 'admin/company', 'POST', '127.0.0.1', '{\"title\":null,\"description\":null,\"appeal\":null,\"business_description\":null,\"requirement\":null,\"employment\":null,\"qualification\":null,\"pref\":null,\"city\":null,\"address\":null,\"access\":null,\"phone\":null,\"business_time\":null,\"wage_sys\":null,\"salary\":null,\"treatment\":null,\"holiday\":null,\"lending_sys\":null,\"_token\":\"pCl7Zx9wwOwS6ihgcL5eZcfzRfzfOZP8GLLxdCuD\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/company\"}', '2020-09-28 00:34:05', '2020-09-28 00:34:05'),
(180, 1, 'admin/company/create', 'GET', '127.0.0.1', '[]', '2020-09-28 00:34:06', '2020-09-28 00:34:06'),
(181, 1, 'admin/company', 'POST', '127.0.0.1', '{\"title\":null,\"description\":null,\"appeal\":null,\"business_description\":null,\"requirement\":null,\"employment\":null,\"qualification\":null,\"pref\":null,\"city\":null,\"address\":null,\"access\":null,\"phone\":null,\"business_time\":null,\"wage_sys\":null,\"salary\":null,\"treatment\":null,\"holiday\":null,\"lending_sys\":null,\"_token\":\"pCl7Zx9wwOwS6ihgcL5eZcfzRfzfOZP8GLLxdCuD\"}', '2020-09-28 00:34:57', '2020-09-28 00:34:57'),
(182, 1, 'admin/company/create', 'GET', '127.0.0.1', '[]', '2020-09-28 00:34:58', '2020-09-28 00:34:58'),
(183, 1, 'admin/company', 'POST', '127.0.0.1', '{\"title\":null,\"description\":null,\"appeal\":null,\"business_description\":null,\"requirement\":null,\"employment\":null,\"qualification\":null,\"pref\":null,\"city\":null,\"address\":null,\"access\":null,\"phone\":\"asdfasdfasdf\",\"business_time\":null,\"wage_sys\":null,\"salary\":null,\"treatment\":null,\"holiday\":null,\"lending_sys\":null,\"_token\":\"pCl7Zx9wwOwS6ihgcL5eZcfzRfzfOZP8GLLxdCuD\"}', '2020-09-28 00:42:58', '2020-09-28 00:42:58'),
(184, 1, 'admin/company/create', 'GET', '127.0.0.1', '[]', '2020-09-28 00:42:58', '2020-09-28 00:42:58'),
(185, 1, 'admin/company', 'POST', '127.0.0.1', '{\"title\":null,\"description\":null,\"appeal\":null,\"business_description\":null,\"requirement\":null,\"employment\":null,\"qualification\":null,\"pref\":null,\"city\":null,\"address\":null,\"access\":null,\"phone\":\"13000001234\",\"business_time\":null,\"wage_sys\":null,\"salary\":null,\"treatment\":null,\"holiday\":null,\"lending_sys\":null,\"_token\":\"pCl7Zx9wwOwS6ihgcL5eZcfzRfzfOZP8GLLxdCuD\"}', '2020-09-28 00:43:10', '2020-09-28 00:43:10'),
(186, 1, 'admin/company/create', 'GET', '127.0.0.1', '[]', '2020-09-28 00:43:11', '2020-09-28 00:43:11'),
(187, 1, 'admin/company', 'POST', '127.0.0.1', '{\"title\":null,\"description\":null,\"appeal\":null,\"business_description\":null,\"requirement\":null,\"employment\":null,\"qualification\":null,\"pref\":null,\"city\":null,\"address\":null,\"access\":null,\"phone\":\"130-0000-1234\",\"business_time\":null,\"wage_sys\":null,\"salary\":null,\"treatment\":null,\"holiday\":null,\"lending_sys\":null,\"_token\":\"pCl7Zx9wwOwS6ihgcL5eZcfzRfzfOZP8GLLxdCuD\"}', '2020-09-28 00:43:21', '2020-09-28 00:43:21'),
(188, 1, 'admin/company/create', 'GET', '127.0.0.1', '[]', '2020-09-28 00:43:22', '2020-09-28 00:43:22'),
(189, 1, 'admin/company/create', 'GET', '127.0.0.1', '[]', '2020-09-28 00:53:22', '2020-09-28 00:53:22'),
(190, 1, 'admin/article', 'GET', '127.0.0.1', '[]', '2020-09-28 00:54:03', '2020-09-28 00:54:03'),
(191, 1, 'admin/article', 'GET', '127.0.0.1', '[]', '2020-09-28 00:56:37', '2020-09-28 00:56:37'),
(192, 1, 'admin/article', 'GET', '127.0.0.1', '[]', '2020-09-28 00:59:05', '2020-09-28 00:59:05'),
(193, 1, 'admin/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 01:00:59', '2020-09-28 01:00:59'),
(194, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2020-09-28 01:02:32', '2020-09-28 01:02:32'),
(195, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2020-09-28 01:03:29', '2020-09-28 01:03:29'),
(196, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2020-09-28 01:04:17', '2020-09-28 01:04:17'),
(197, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2020-09-28 01:06:58', '2020-09-28 01:06:58'),
(198, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2020-09-28 01:07:32', '2020-09-28 01:07:32'),
(199, 1, 'admin/company', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 01:08:23', '2020-09-28 01:08:23'),
(200, 1, 'admin/company/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 01:08:27', '2020-09-28 01:08:27'),
(201, 1, 'admin/company', 'GET', '127.0.0.1', '[]', '2020-09-28 01:08:28', '2020-09-28 01:08:28'),
(202, 1, 'admin/company', 'GET', '127.0.0.1', '[]', '2020-09-28 01:09:36', '2020-09-28 01:09:36'),
(203, 1, 'admin/company/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 01:09:42', '2020-09-28 01:09:42'),
(204, 1, 'admin/company', 'GET', '127.0.0.1', '[]', '2020-09-28 01:09:42', '2020-09-28 01:09:42'),
(205, 1, 'admin/company', 'GET', '127.0.0.1', '[]', '2020-09-28 01:10:02', '2020-09-28 01:10:02'),
(206, 1, 'admin/company/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 01:10:08', '2020-09-28 01:10:08'),
(207, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:10:31', '2020-09-28 01:10:31'),
(208, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 01:10:44', '2020-09-28 01:10:44'),
(209, 1, 'admin/company/1', 'PUT', '127.0.0.1', '{\"title\":\"\\u30bf\\u30a4\\u30c8\\u30eb\",\"description\":\"\\u6982\\u8981\\r\\n\\u5165\\u529b \\u6982\\u8981\",\"appeal\":\"\\u30a2\\u30d4\\u30fc\\u30eb\\u30dd\\u30a4\\u30f3\\u30c8\\r\\n\\u30a2\\u30d4\\u30fc\\u30eb\\u30dd\\u30a4\\u30f3\\u30c8\\r\\n\\u30a2\\u30d4\\u30fc\\u30eb\\u30dd\\u30a4\\u30f3\\u30c8\",\"business_description\":\"\\u4e8b\\u696d\\u5185\\u5bb9\",\"requirement\":\"\\u52df\\u96c6\\u8981\\u9805\",\"employment\":\"\\u96c7\\u7528\\u5f62\\u614b\",\"qualification\":\"\\u5fdc\\u52df\\u8cc7\\u683c\",\"pref\":\"1\",\"city\":null,\"address\":\"\\u4f4f\\u6240\",\"access\":null,\"phone\":null,\"business_time\":\"\\u52e4\\u52d9\\u6642\\u9593\",\"wage_sys\":\"\\u8cc3\\u91d1\\u4f53\\u7cfb\",\"salary\":\"\\u7d66\\u4e0e\",\"treatment\":\"\\u5f85\\u9047\",\"holiday\":\"\\u4f11\\u65e5\\u30fb\\u4f11\\u6687\",\"lending_sys\":\"\\u8cb8\\u4ed8\\u5236\\u5ea6\",\"_token\":\"pCl7Zx9wwOwS6ihgcL5eZcfzRfzfOZP8GLLxdCuD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/company\\/1\"}', '2020-09-28 01:10:52', '2020-09-28 01:10:52'),
(210, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 01:10:52', '2020-09-28 01:10:52'),
(211, 1, 'admin/company/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 01:10:55', '2020-09-28 01:10:55'),
(212, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:25:39', '2020-09-28 01:25:39'),
(213, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:25:57', '2020-09-28 01:25:57'),
(214, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:26:31', '2020-09-28 01:26:31'),
(215, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:26:44', '2020-09-28 01:26:44'),
(216, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:31:55', '2020-09-28 01:31:55'),
(217, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:32:08', '2020-09-28 01:32:08'),
(218, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:32:20', '2020-09-28 01:32:20'),
(219, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:32:58', '2020-09-28 01:32:58'),
(220, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:34:11', '2020-09-28 01:34:11'),
(221, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:34:52', '2020-09-28 01:34:52'),
(222, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:35:03', '2020-09-28 01:35:03'),
(223, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:36:01', '2020-09-28 01:36:01'),
(224, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:36:15', '2020-09-28 01:36:15'),
(225, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:43:19', '2020-09-28 01:43:19'),
(226, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:44:52', '2020-09-28 01:44:52'),
(227, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:45:15', '2020-09-28 01:45:15'),
(228, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:45:42', '2020-09-28 01:45:42'),
(229, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:46:42', '2020-09-28 01:46:42'),
(230, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:47:00', '2020-09-28 01:47:00'),
(231, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:47:09', '2020-09-28 01:47:09'),
(232, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:48:19', '2020-09-28 01:48:19'),
(233, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:48:29', '2020-09-28 01:48:29'),
(234, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:48:32', '2020-09-28 01:48:32'),
(235, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:48:49', '2020-09-28 01:48:49'),
(236, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:49:04', '2020-09-28 01:49:04'),
(237, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:49:13', '2020-09-28 01:49:13'),
(238, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:49:24', '2020-09-28 01:49:24'),
(239, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:49:49', '2020-09-28 01:49:49'),
(240, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:50:03', '2020-09-28 01:50:03'),
(241, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:50:20', '2020-09-28 01:50:20'),
(242, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:50:35', '2020-09-28 01:50:35'),
(243, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:50:50', '2020-09-28 01:50:50'),
(244, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:51:01', '2020-09-28 01:51:01'),
(245, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:51:08', '2020-09-28 01:51:08'),
(246, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:51:37', '2020-09-28 01:51:37'),
(247, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:52:10', '2020-09-28 01:52:10'),
(248, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:52:19', '2020-09-28 01:52:19'),
(249, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:52:28', '2020-09-28 01:52:28'),
(250, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:52:40', '2020-09-28 01:52:40'),
(251, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-28 01:54:46', '2020-09-28 01:54:46'),
(252, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 01:54:54', '2020-09-28 01:54:54'),
(253, 1, 'admin/auth/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 01:54:58', '2020-09-28 01:54:58'),
(254, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:55:30', '2020-09-28 01:55:30'),
(255, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:55:37', '2020-09-28 01:55:37'),
(256, 1, 'admin/auth/users/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:56:28', '2020-09-28 01:56:28'),
(257, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:56:30', '2020-09-28 01:56:30'),
(258, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:56:59', '2020-09-28 01:56:59'),
(259, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:57:32', '2020-09-28 01:57:32'),
(260, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:58:00', '2020-09-28 01:58:00'),
(261, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:59:25', '2020-09-28 01:59:25'),
(262, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 01:59:46', '2020-09-28 01:59:46'),
(263, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 02:02:52', '2020-09-28 02:02:52'),
(264, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 02:03:48', '2020-09-28 02:03:48'),
(265, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 02:06:19', '2020-09-28 02:06:19'),
(266, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 02:06:49', '2020-09-28 02:06:49'),
(267, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 02:07:20', '2020-09-28 02:07:20'),
(268, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 02:07:35', '2020-09-28 02:07:35'),
(269, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 02:08:01', '2020-09-28 02:08:01'),
(270, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 02:08:03', '2020-09-28 02:08:03'),
(271, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 02:08:13', '2020-09-28 02:08:13'),
(272, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 02:08:18', '2020-09-28 02:08:18'),
(273, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 02:08:38', '2020-09-28 02:08:38'),
(274, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 02:09:36', '2020-09-28 02:09:36'),
(275, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 02:09:37', '2020-09-28 02:09:37'),
(276, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 02:10:04', '2020-09-28 02:10:04'),
(277, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 02:10:17', '2020-09-28 02:10:17'),
(278, 1, 'admin/auth/users/1', 'GET', '127.0.0.1', '[]', '2020-09-28 02:33:22', '2020-09-28 02:33:22'),
(279, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 02:34:45', '2020-09-28 02:34:45'),
(280, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 02:35:12', '2020-09-28 02:35:12'),
(281, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 02:35:44', '2020-09-28 02:35:44'),
(282, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 02:36:06', '2020-09-28 02:36:06'),
(283, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 02:36:17', '2020-09-28 02:36:17'),
(284, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 02:36:31', '2020-09-28 02:36:31'),
(285, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 02:36:43', '2020-09-28 02:36:43'),
(286, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 02:36:50', '2020-09-28 02:36:50'),
(287, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 02:36:59', '2020-09-28 02:36:59'),
(288, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 02:37:12', '2020-09-28 02:37:12'),
(289, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 02:37:41', '2020-09-28 02:37:41'),
(290, 1, 'admin/auth/users/1', 'GET', '127.0.0.1', '[]', '2020-09-28 02:37:49', '2020-09-28 02:37:49'),
(291, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 03:11:23', '2020-09-28 03:11:23'),
(292, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 03:12:19', '2020-09-28 03:12:19'),
(293, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 03:16:52', '2020-09-28 03:16:52'),
(294, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2020-09-28 03:16:59', '2020-09-28 03:16:59'),
(295, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":\"4\"}', '2020-09-28 03:17:07', '2020-09-28 03:17:07'),
(296, 1, 'admin/company/1', 'PUT', '127.0.0.1', '{\"title\":\"\\u30bf\\u30a4\\u30c8\\u30eb\",\"description\":\"\\u6982\\u8981\\r\\n\\u5165\\u529b \\r\\n\\u6982\\u8981\",\"appeal\":\"\\u30a2\\u30d4\\u30fc\\u30eb\\u30dd\\u30a4\\u30f3\\u30c8\",\"business_description\":\"\\u4e8b\\u696d\\u5185\\u5bb9\",\"requirement\":\"\\u52df\\u96c6\\u8981\\u9805\",\"employment\":\"\\u96c7\\u7528\\u5f62\\u614b\",\"qualification\":\"\\u5fdc\\u52df\\u8cc7\\u683c\",\"pref_id\":\"4\",\"city\":\"\\u592a\\u767d\\u533a\\u30fb\\u540d\\u53d6\\u30fb\\u5ca9\\u6cbc\",\"address\":\"\\u4f4f\\u6240\",\"access\":\"\\u30a2\\u30af\\u30bb\\u30b9\",\"phone\":\"130-0000-1234\",\"business_time\":\"\\u52e4\\u52d9\\u6642\\u9593\",\"wage_sys\":\"\\u8cc3\\u91d1\\u4f53\\u7cfb\",\"salary\":\"\\u7d66\\u4e0e\",\"treatment\":\"\\u5f85\\u9047\",\"holiday\":\"\\u4f11\\u65e5\\u30fb\\u4f11\\u6687\",\"lending_sys\":\"\\u8cb8\\u4ed8\\u5236\\u5ea6\",\"_token\":\"pCl7Zx9wwOwS6ihgcL5eZcfzRfzfOZP8GLLxdCuD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/company\\/1\"}', '2020-09-28 03:17:19', '2020-09-28 03:17:19'),
(297, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 03:17:19', '2020-09-28 03:17:19'),
(298, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 03:17:28', '2020-09-28 03:17:28'),
(299, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 03:20:35', '2020-09-28 03:20:35'),
(300, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 03:21:59', '2020-09-28 03:21:59'),
(301, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 03:24:30', '2020-09-28 03:24:30'),
(302, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 03:25:57', '2020-09-28 03:25:57'),
(303, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 03:26:13', '2020-09-28 03:26:13'),
(304, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 03:26:19', '2020-09-28 03:26:19'),
(305, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 03:27:46', '2020-09-28 03:27:46'),
(306, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 03:28:05', '2020-09-28 03:28:05'),
(307, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 03:44:43', '2020-09-28 03:44:43'),
(308, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 03:45:13', '2020-09-28 03:45:13'),
(309, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 03:45:27', '2020-09-28 03:45:27'),
(310, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 03:46:31', '2020-09-28 03:46:31'),
(311, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2020-09-28 03:46:47', '2020-09-28 03:46:47'),
(312, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 03:46:51', '2020-09-28 03:46:51'),
(313, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 03:47:37', '2020-09-28 03:47:37'),
(314, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 03:47:58', '2020-09-28 03:47:58'),
(315, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2020-09-28 03:48:05', '2020-09-28 03:48:05'),
(316, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 03:49:29', '2020-09-28 03:49:29'),
(317, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2020-09-28 03:49:36', '2020-09-28 03:49:36'),
(318, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 03:50:01', '2020-09-28 03:50:01'),
(319, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":\"5\"}', '2020-09-28 03:50:07', '2020-09-28 03:50:07'),
(320, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 03:51:22', '2020-09-28 03:51:22'),
(321, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":\"6\"}', '2020-09-28 03:51:29', '2020-09-28 03:51:29'),
(322, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":\"6\"}', '2020-09-28 03:52:13', '2020-09-28 03:52:13'),
(323, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":\"6\"}', '2020-09-28 03:52:48', '2020-09-28 03:52:48'),
(324, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 03:53:03', '2020-09-28 03:53:03'),
(325, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":\"9\"}', '2020-09-28 03:53:08', '2020-09-28 03:53:08'),
(326, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 03:53:23', '2020-09-28 03:53:23'),
(327, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 03:53:32', '2020-09-28 03:53:32'),
(328, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":\"5\"}', '2020-09-28 03:53:38', '2020-09-28 03:53:38'),
(329, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 03:54:04', '2020-09-28 03:54:04'),
(330, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":\"5\"}', '2020-09-28 03:54:14', '2020-09-28 03:54:14'),
(331, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 03:54:51', '2020-09-28 03:54:51'),
(332, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":\"5\"}', '2020-09-28 03:55:00', '2020-09-28 03:55:00'),
(333, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":\"4\"}', '2020-09-28 03:55:17', '2020-09-28 03:55:17'),
(334, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2020-09-28 03:55:22', '2020-09-28 03:55:22'),
(335, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":\"4\"}', '2020-09-28 03:55:25', '2020-09-28 03:55:25'),
(336, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 03:56:16', '2020-09-28 03:56:16'),
(337, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2020-09-28 03:56:22', '2020-09-28 03:56:22'),
(338, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 03:56:28', '2020-09-28 03:56:28'),
(339, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2020-09-28 03:56:37', '2020-09-28 03:56:37'),
(340, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 03:57:12', '2020-09-28 03:57:12'),
(341, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2020-09-28 03:57:18', '2020-09-28 03:57:18'),
(342, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 03:57:44', '2020-09-28 03:57:44'),
(343, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 03:58:05', '2020-09-28 03:58:05'),
(344, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 03:58:40', '2020-09-28 03:58:40'),
(345, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2020-09-28 03:58:51', '2020-09-28 03:58:51'),
(346, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2020-09-28 04:35:54', '2020-09-28 04:35:54'),
(347, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 04:36:49', '2020-09-28 04:36:49'),
(348, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2020-09-28 04:36:56', '2020-09-28 04:36:56'),
(349, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 04:38:55', '2020-09-28 04:38:55'),
(350, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2020-09-28 04:39:03', '2020-09-28 04:39:03'),
(351, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 04:40:10', '2020-09-28 04:40:10'),
(352, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2020-09-28 04:40:17', '2020-09-28 04:40:17');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(353, 1, 'admin/company/1', 'PUT', '127.0.0.1', '{\"title\":\"\\u30bf\\u30a4\\u30c8\\u30eb\",\"description\":\"\\u6982\\u8981\\r\\n\\u5165\\u529b \\r\\n\\u6982\\u8981\",\"appeal\":\"\\u30a2\\u30d4\\u30fc\\u30eb\\u30dd\\u30a4\\u30f3\\u30c8\",\"business_description\":\"\\u4e8b\\u696d\\u5185\\u5bb9\",\"requirement\":\"\\u52df\\u96c6\\u8981\\u9805\",\"employment\":\"\\u96c7\\u7528\\u5f62\\u614b\",\"qualification\":\"\\u5fdc\\u52df\\u8cc7\\u683c\",\"pref_id\":\"3\",\"city\":\"75\",\"address\":\"\\u4f4f\\u6240\",\"access\":\"\\u30a2\\u30af\\u30bb\\u30b9\",\"phone\":\"130-0000-1234\",\"business_time\":\"\\u52e4\\u52d9\\u6642\\u9593\",\"wage_sys\":\"\\u8cc3\\u91d1\\u4f53\\u7cfb\",\"salary\":\"\\u7d66\\u4e0e\",\"treatment\":\"\\u5f85\\u9047\",\"holiday\":\"\\u4f11\\u65e5\\u30fb\\u4f11\\u6687\",\"lending_sys\":\"\\u8cb8\\u4ed8\\u5236\\u5ea6\",\"_token\":\"pCl7Zx9wwOwS6ihgcL5eZcfzRfzfOZP8GLLxdCuD\",\"_method\":\"PUT\"}', '2020-09-28 04:40:28', '2020-09-28 04:40:28'),
(354, 1, 'admin/company', 'GET', '127.0.0.1', '[]', '2020-09-28 04:40:30', '2020-09-28 04:40:30'),
(355, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 04:40:35', '2020-09-28 04:40:35'),
(356, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 04:41:08', '2020-09-28 04:41:08'),
(357, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 04:41:36', '2020-09-28 04:41:36'),
(358, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 04:41:52', '2020-09-28 04:41:52'),
(359, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 04:42:10', '2020-09-28 04:42:10'),
(360, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 04:43:03', '2020-09-28 04:43:03'),
(361, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 04:43:21', '2020-09-28 04:43:21'),
(362, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 04:43:32', '2020-09-28 04:43:32'),
(363, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 04:43:56', '2020-09-28 04:43:56'),
(364, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 04:44:15', '2020-09-28 04:44:15'),
(365, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 04:47:39', '2020-09-28 04:47:39'),
(366, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 04:49:23', '2020-09-28 04:49:23'),
(367, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 04:52:57', '2020-09-28 04:52:57'),
(368, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 04:53:10', '2020-09-28 04:53:10'),
(369, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 04:53:36', '2020-09-28 04:53:36'),
(370, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 04:53:52', '2020-09-28 04:53:52'),
(371, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 04:54:02', '2020-09-28 04:54:02'),
(372, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 04:54:56', '2020-09-28 04:54:56'),
(373, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 04:55:18', '2020-09-28 04:55:18'),
(374, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 04:55:53', '2020-09-28 04:55:53'),
(375, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 04:56:01', '2020-09-28 04:56:01'),
(376, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 04:56:14', '2020-09-28 04:56:14'),
(377, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 04:56:20', '2020-09-28 04:56:20'),
(378, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 04:57:12', '2020-09-28 04:57:12'),
(379, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 04:57:26', '2020-09-28 04:57:26'),
(380, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 04:57:48', '2020-09-28 04:57:48'),
(381, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 04:57:59', '2020-09-28 04:57:59'),
(382, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":\"10\"}', '2020-09-28 04:58:19', '2020-09-28 04:58:19'),
(383, 1, 'admin/company/1', 'PUT', '127.0.0.1', '{\"title\":\"\\u30bf\\u30a4\\u30c8\\u30eb\",\"description\":\"\\u6982\\u8981\\r\\n\\u5165\\u529b \\r\\n\\u6982\\u8981\",\"appeal\":\"\\u30a2\\u30d4\\u30fc\\u30eb\\u30dd\\u30a4\\u30f3\\u30c8\",\"business_description\":\"\\u4e8b\\u696d\\u5185\\u5bb9\",\"requirement\":\"\\u52df\\u96c6\\u8981\\u9805\",\"employment\":\"\\u96c7\\u7528\\u5f62\\u614b\",\"qualification\":\"\\u5fdc\\u52df\\u8cc7\\u683c\",\"pref_id\":\"10\",\"city\":\"131\",\"address\":\"\\u4f4f\\u6240\",\"access\":\"\\u30a2\\u30af\\u30bb\\u30b9\",\"phone\":\"130-0000-1234\",\"business_time\":\"\\u52e4\\u52d9\\u6642\\u9593\",\"wage_sys\":\"\\u8cc3\\u91d1\\u4f53\\u7cfb\",\"salary\":\"\\u7d66\\u4e0e\",\"treatment\":\"\\u5f85\\u9047\",\"holiday\":\"\\u4f11\\u65e5\\u30fb\\u4f11\\u6687\",\"lending_sys\":\"\\u8cb8\\u4ed8\\u5236\\u5ea6\",\"_token\":\"pCl7Zx9wwOwS6ihgcL5eZcfzRfzfOZP8GLLxdCuD\",\"_method\":\"PUT\"}', '2020-09-28 04:58:26', '2020-09-28 04:58:26'),
(384, 1, 'admin/company', 'GET', '127.0.0.1', '[]', '2020-09-28 04:58:26', '2020-09-28 04:58:26'),
(385, 1, 'admin/company/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 04:58:32', '2020-09-28 04:58:32'),
(386, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 04:59:28', '2020-09-28 04:59:28'),
(387, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 05:00:04', '2020-09-28 05:00:04'),
(388, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 05:00:27', '2020-09-28 05:00:27'),
(389, 1, 'admin/company/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 05:00:34', '2020-09-28 05:00:34'),
(390, 1, 'admin/api/cities', 'GET', '127.0.0.1', '{\"q\":\"9\"}', '2020-09-28 05:00:43', '2020-09-28 05:00:43'),
(391, 1, 'admin/company/1', 'PUT', '127.0.0.1', '{\"title\":\"\\u30bf\\u30a4\\u30c8\\u30eb\",\"description\":\"\\u6982\\u8981\\r\\n\\u5165\\u529b \\r\\n\\u6982\\u8981\",\"appeal\":\"\\u30a2\\u30d4\\u30fc\\u30eb\\u30dd\\u30a4\\u30f3\\u30c8\",\"business_description\":\"\\u4e8b\\u696d\\u5185\\u5bb9\",\"requirement\":\"\\u52df\\u96c6\\u8981\\u9805\",\"employment\":\"\\u96c7\\u7528\\u5f62\\u614b\",\"qualification\":\"\\u5fdc\\u52df\\u8cc7\\u683c\",\"pref_id\":\"9\",\"city_id\":\"117\",\"address\":\"\\u4f4f\\u6240\",\"access\":\"\\u30a2\\u30af\\u30bb\\u30b9\",\"phone\":\"130-0000-1234\",\"business_time\":\"\\u52e4\\u52d9\\u6642\\u9593\",\"wage_sys\":\"\\u8cc3\\u91d1\\u4f53\\u7cfb\",\"salary\":\"\\u7d66\\u4e0e\",\"treatment\":\"\\u5f85\\u9047\",\"holiday\":\"\\u4f11\\u65e5\\u30fb\\u4f11\\u6687\",\"lending_sys\":\"\\u8cb8\\u4ed8\\u5236\\u5ea6\",\"_token\":\"pCl7Zx9wwOwS6ihgcL5eZcfzRfzfOZP8GLLxdCuD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/company\\/1\"}', '2020-09-28 05:00:47', '2020-09-28 05:00:47'),
(392, 1, 'admin/company/1', 'GET', '127.0.0.1', '[]', '2020-09-28 05:00:47', '2020-09-28 05:00:47'),
(393, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-09-28 05:01:14', '2020-09-28 05:01:14'),
(394, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 05:02:34', '2020-09-28 05:02:34'),
(395, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 05:04:48', '2020-09-28 05:04:48'),
(396, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u8a18\\u4e8b\",\"icon\":\"fa-archive\",\"uri\":\"article\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"pCl7Zx9wwOwS6ihgcL5eZcfzRfzfOZP8GLLxdCuD\"}', '2020-09-28 05:05:03', '2020-09-28 05:05:03'),
(397, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-28 05:05:03', '2020-09-28 05:05:03'),
(398, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-28 05:05:09', '2020-09-28 05:05:09'),
(399, 1, 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 05:05:20', '2020-09-28 05:05:20'),
(400, 1, 'admin/article/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 05:05:23', '2020-09-28 05:05:23'),
(401, 1, 'admin/article/create', 'GET', '127.0.0.1', '[]', '2020-09-28 05:10:07', '2020-09-28 05:10:07'),
(402, 1, 'admin/article', 'POST', '127.0.0.1', '{\"title\":\"\\u8a18\\u4e8b\",\"user_name\":\"\\u30a4\\u30f3\\u30bf\\u30d3\\u30e5\\u30a4\\u30fc\",\"user_age\":\"25\",\"user_job\":\"\\u793e\\u9577\",\"company_id\":\"1\",\"title1\":\"\\u30bf\\u30a4\\u30c8\\u30eb\",\"content1\":\"\\u30b3\\u30f3\\u30c6\\u30f3\\u30c41\",\"title2\":\"\\u30bf\\u30a4\\u30c8\\u30eb\",\"content2\":\"\\u30b3\\u30f3\\u30c6\\u30f3\\u30c42\",\"title3\":null,\"content3\":null,\"title4\":null,\"content4\":null,\"title5\":null,\"content5\":null,\"_token\":\"pCl7Zx9wwOwS6ihgcL5eZcfzRfzfOZP8GLLxdCuD\"}', '2020-09-28 05:11:00', '2020-09-28 05:11:00'),
(403, 1, 'admin/article', 'GET', '127.0.0.1', '[]', '2020-09-28 05:11:00', '2020-09-28 05:11:00'),
(404, 1, 'admin/article/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 05:11:04', '2020-09-28 05:11:04'),
(405, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 06:02:51', '2020-09-28 06:02:51'),
(406, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u5fdc\\u52df\",\"icon\":\"fa-bell\",\"uri\":\"application\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"pCl7Zx9wwOwS6ihgcL5eZcfzRfzfOZP8GLLxdCuD\"}', '2020-09-28 06:03:46', '2020-09-28 06:03:46'),
(407, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-28 06:03:47', '2020-09-28 06:03:47'),
(408, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-09-28 06:03:53', '2020-09-28 06:03:53'),
(409, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:04:29', '2020-09-28 06:04:29'),
(410, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:06:19', '2020-09-28 06:06:19'),
(411, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:06:37', '2020-09-28 06:06:37'),
(412, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:08:43', '2020-09-28 06:08:43'),
(413, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:09:04', '2020-09-28 06:09:04'),
(414, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:10:22', '2020-09-28 06:10:22'),
(415, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:10:54', '2020-09-28 06:10:54'),
(416, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:11:14', '2020-09-28 06:11:14'),
(417, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:12:00', '2020-09-28 06:12:00'),
(418, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:12:51', '2020-09-28 06:12:51'),
(419, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:13:06', '2020-09-28 06:13:06'),
(420, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:17:09', '2020-09-28 06:17:09'),
(421, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:18:06', '2020-09-28 06:18:06'),
(422, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:18:19', '2020-09-28 06:18:19'),
(423, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:18:30', '2020-09-28 06:18:30'),
(424, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:18:41', '2020-09-28 06:18:41'),
(425, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:19:17', '2020-09-28 06:19:17'),
(426, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:19:30', '2020-09-28 06:19:30'),
(427, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-09-28 06:21:07', '2020-09-28 06:21:07'),
(428, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:21:09', '2020-09-28 06:21:09'),
(429, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:22:29', '2020-09-28 06:22:29'),
(430, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:22:49', '2020-09-28 06:22:49'),
(431, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:23:00', '2020-09-28 06:23:00'),
(432, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:24:14', '2020-09-28 06:24:14'),
(433, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:24:27', '2020-09-28 06:24:27'),
(434, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:24:33', '2020-09-28 06:24:33'),
(435, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:24:48', '2020-09-28 06:24:48'),
(436, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:24:50', '2020-09-28 06:24:50'),
(437, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-09-28 06:25:40', '2020-09-28 06:25:40'),
(438, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:25:43', '2020-09-28 06:25:43'),
(439, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:25:49', '2020-09-28 06:25:49'),
(440, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:25:54', '2020-09-28 06:25:54'),
(441, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:26:19', '2020-09-28 06:26:19'),
(442, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:26:23', '2020-09-28 06:26:23'),
(443, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:26:27', '2020-09-28 06:26:27'),
(444, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:26:34', '2020-09-28 06:26:34'),
(445, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:27:13', '2020-09-28 06:27:13'),
(446, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:27:25', '2020-09-28 06:27:25'),
(447, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:27:32', '2020-09-28 06:27:32'),
(448, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:28:02', '2020-09-28 06:28:02'),
(449, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:28:11', '2020-09-28 06:28:11'),
(450, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:28:25', '2020-09-28 06:28:25'),
(451, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:28:27', '2020-09-28 06:28:27'),
(452, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:28:42', '2020-09-28 06:28:42'),
(453, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:29:00', '2020-09-28 06:29:00'),
(454, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:29:07', '2020-09-28 06:29:07'),
(455, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:29:44', '2020-09-28 06:29:44'),
(456, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:33:15', '2020-09-28 06:33:15'),
(457, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:34:25', '2020-09-28 06:34:25'),
(458, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:34:49', '2020-09-28 06:34:49'),
(459, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:34:56', '2020-09-28 06:34:56'),
(460, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:35:48', '2020-09-28 06:35:48'),
(461, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:36:42', '2020-09-28 06:36:42'),
(462, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:43:00', '2020-09-28 06:43:00'),
(463, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:43:40', '2020-09-28 06:43:40'),
(464, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:43:59', '2020-09-28 06:43:59'),
(465, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:45:55', '2020-09-28 06:45:55'),
(466, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:46:02', '2020-09-28 06:46:02'),
(467, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:46:10', '2020-09-28 06:46:10'),
(468, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:46:35', '2020-09-28 06:46:35'),
(469, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:47:19', '2020-09-28 06:47:19'),
(470, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:48:04', '2020-09-28 06:48:04'),
(471, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:48:25', '2020-09-28 06:48:25'),
(472, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-09-28 06:48:50', '2020-09-28 06:48:50'),
(473, 1, 'admin/application/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 06:50:09', '2020-09-28 06:50:09'),
(474, 1, 'admin/application/1', 'GET', '127.0.0.1', '[]', '2020-09-28 07:37:16', '2020-09-28 07:37:16'),
(475, 1, 'admin/application/1', 'GET', '127.0.0.1', '[]', '2020-09-28 07:48:40', '2020-09-28 07:48:40'),
(476, 1, 'admin/application/1', 'GET', '127.0.0.1', '[]', '2020-09-28 07:49:15', '2020-09-28 07:49:15'),
(477, 1, 'admin/application/1', 'GET', '127.0.0.1', '[]', '2020-09-28 07:49:21', '2020-09-28 07:49:21'),
(478, 1, 'admin/application/1', 'GET', '127.0.0.1', '[]', '2020-09-28 07:50:52', '2020-09-28 07:50:52'),
(479, 1, 'admin/application/1', 'GET', '127.0.0.1', '[]', '2020-09-28 07:51:05', '2020-09-28 07:51:05'),
(480, 1, 'admin/application/1', 'GET', '127.0.0.1', '[]', '2020-09-28 07:51:52', '2020-09-28 07:51:52'),
(481, 1, 'admin/application/1', 'GET', '127.0.0.1', '[]', '2020-09-28 07:52:32', '2020-09-28 07:52:32'),
(482, 1, 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 08:00:50', '2020-09-28 08:00:50'),
(483, 1, 'admin/article/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 08:00:53', '2020-09-28 08:00:53'),
(484, 1, 'admin/application/1', 'GET', '127.0.0.1', '[]', '2020-09-28 08:04:15', '2020-09-28 08:04:15'),
(485, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-28 10:47:34', '2020-09-28 10:47:34'),
(486, 1, 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 10:47:39', '2020-09-28 10:47:39'),
(487, 1, 'admin/article/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 10:47:42', '2020-09-28 10:47:42'),
(488, 1, 'admin/article/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-28 10:48:27', '2020-09-28 10:48:27'),
(489, 1, 'admin/article/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 10:49:08', '2020-09-28 10:49:08'),
(490, 1, 'admin/article/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-09-28 10:49:12', '2020-09-28 10:49:12'),
(491, 1, 'admin/article/1', 'PUT', '127.0.0.1', '{\"title\":\"\\u8a18\\u4e8b\",\"category\":\"\\u4f11\\u65e5\",\"user_name\":\"\\u30a4\\u30f3\\u30bf\\u30d3\\u30e5\\u30a4\\u30fc\",\"user_age\":\"25\",\"user_job\":\"\\u793e\\u9577\",\"company_id\":\"1\",\"title1\":\"\\u30bf\\u30a4\\u30c8\\u30eb\",\"content1\":\"\\u30b3\\u30f3\\u30c6\\u30f3\\u30c41\",\"title2\":\"\\u30bf\\u30a4\\u30c8\\u30eb\",\"content2\":\"\\u30b3\\u30f3\\u30c6\\u30f3\\u30c42\",\"title3\":null,\"content3\":null,\"title4\":null,\"content4\":null,\"title5\":null,\"content5\":null,\"_token\":\"fPaOR7ekFxAtCaM3k25bCpRE44ZhObVYmCkuaupR\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/article\\/1\"}', '2020-09-28 10:49:18', '2020-09-28 10:49:18'),
(492, 1, 'admin/article/1', 'GET', '127.0.0.1', '[]', '2020-09-28 10:49:18', '2020-09-28 10:49:18'),
(493, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-02 06:35:01', '2020-10-02 06:35:01'),
(494, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-15 09:40:25', '2020-10-15 09:40:25'),
(495, 1, 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-15 09:40:31', '2020-10-15 09:40:31'),
(496, 1, 'admin/article/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-15 09:40:35', '2020-10-15 09:40:35'),
(497, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-15 19:17:07', '2020-10-15 19:17:07'),
(498, 1, 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-15 19:17:13', '2020-10-15 19:17:13'),
(499, 1, 'admin/article/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-15 19:17:16', '2020-10-15 19:17:16'),
(500, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-19 08:02:20', '2020-10-19 08:02:20'),
(501, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-19 08:03:04', '2020-10-19 08:03:04'),
(502, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-10-19 08:03:39', '2020-10-19 08:03:39'),
(503, 1, 'admin/auth/menu/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"AzAfdG8N1u7jLHQORJcitxsr6onKGx6UogyLCQJb\"}', '2020-10-19 08:03:56', '2020-10-19 08:03:56'),
(504, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-19 08:03:56', '2020-10-19 08:03:56'),
(505, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-19 08:04:08', '2020-10-19 08:04:08'),
(506, 1, 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-19 08:04:14', '2020-10-19 08:04:14'),
(507, 1, 'admin/company', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-19 08:04:16', '2020-10-19 08:04:16'),
(508, 1, 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-19 08:04:51', '2020-10-19 08:04:51'),
(509, 1, 'admin/application', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-19 08:04:53', '2020-10-19 08:04:53'),
(510, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-10-19 08:07:30', '2020-10-19 08:07:30'),
(511, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-19 08:08:26', '2020-10-19 08:08:26'),
(512, 1, 'admin/application', 'GET', '127.0.0.1', '[]', '2020-10-19 08:08:29', '2020-10-19 08:08:29'),
(513, 1, 'admin/company', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-19 08:08:37', '2020-10-19 08:08:37'),
(514, 1, 'admin/article', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-19 08:08:39', '2020-10-19 08:08:39'),
(515, 1, 'admin/application', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-19 08:08:44', '2020-10-19 08:08:44');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2020-09-22 08:11:42', '2020-09-22 08:11:42');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL),
(1, 8, NULL, NULL),
(1, 9, NULL, NULL),
(1, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$1mcZljDg8LonzDHooWYOfOxnardAQE0Nw0Qtukd05QmGwqwE3TXjm', 'Administrator', NULL, 'EjD3M1BnBxfOmuf3zi2NM8hDiewERaPTx4z5LfQB5t76nER4IYSMTLD1flZN', '2020-09-22 08:11:42', '2020-09-22 08:11:42');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `name_kana` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `gender` varchar(255) NOT NULL DEFAULT 'male',
  `pref_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `license` int(11) NOT NULL DEFAULT '1',
  `email` varchar(255) NOT NULL,
  `content` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `company_id`, `name`, `name_kana`, `phone`, `birthday`, `gender`, `pref_id`, `address`, `license`, `email`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, '吉田順平', 'ヨシダジュンペイ', '080-0000-0000', '1992-12-04', 'male', 12, 'テスト', 1, 'vanfsy1225@gmail.com', 'CONTENT\r\nCONTENT1\r\nCONTENT2\r\nCONTENT3', '2020-09-28 15:47:16', '2020-09-28 15:08:35'),
(2, 1, '吉田順平', 'ヨシダジュンペイ', '090-0000-0000', '1984-01-01', 'female', 18, '住所', 1, 'vanfsy1225@gmail.com', NULL, '2020-10-19 08:01:58', '2020-10-19 08:01:58');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_age` varchar(255) NOT NULL,
  `user_job` varchar(255) NOT NULL,
  `company_id` int(11) NOT NULL,
  `views_count` int(11) DEFAULT NULL,
  `title1` varchar(255) DEFAULT NULL,
  `content1` text,
  `title2` varchar(255) DEFAULT NULL,
  `content2` text,
  `title3` varchar(255) DEFAULT NULL,
  `content3` text,
  `title4` varchar(255) DEFAULT NULL,
  `content4` text,
  `title5` varchar(255) DEFAULT NULL,
  `content5` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `category`, `image`, `file`, `user_name`, `user_age`, `user_job`, `company_id`, `views_count`, `title1`, `content1`, `title2`, `content2`, `title3`, `content3`, `title4`, `content4`, `title5`, `content5`, `created_at`, `updated_at`) VALUES
(1, '記事', '休日', 'images/071006 (1).PNG', 'files/icon_star_glay_v2.png', 'インタビュイー', '25', '社長', 1, NULL, 'タイトル', 'コンテンツ1', 'タイトル', 'コンテンツ2', NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-28 19:49:18', '2020-09-28 10:49:18'),
(2, '記事', '休日', 'images/071006 (1).PNG', 'files/icon_star_glay_v2.png', 'インタビュイー', '25', '社長', 1, NULL, 'タイトル', 'コンテンツ1', 'タイトル', 'コンテンツ2', NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-15 15:00:00', '2020-10-15 15:00:00'),
(3, '記事', '休日', 'images/071006 (1).PNG', 'files/icon_star_glay_v2.png', 'インタビュイー', '25', '社長', 1, NULL, 'タイトル', 'コンテンツ1', 'タイトル', 'コンテンツ2', NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-16 00:21:00', '2020-10-16 02:19:00'),
(4, '記事', '休日', 'images/071006 (1).PNG', 'files/icon_star_glay_v2.png', 'インタビュイー', '25', '社長', 1, NULL, 'タイトル', 'コンテンツ1', 'タイトル', 'コンテンツ2', NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-16 00:21:00', '2020-10-16 02:19:00'),
(5, '記事', '休日', 'images/071006 (1).PNG', 'files/icon_star_glay_v2.png', 'インタビュイー', '25', '社長', 1, NULL, 'タイトル', 'コンテンツ1', 'タイトル', 'コンテンツ2', NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-16 00:21:00', '2020-10-16 02:19:00'),
(6, '記事', '休日', 'images/071006 (1).PNG', 'files/icon_star_glay_v2.png', 'インタビュイー', '25', '社長', 1, NULL, 'タイトル', 'コンテンツ1', 'タイトル', 'コンテンツ2', NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-16 00:21:00', '2020-10-16 02:19:00'),
(7, '記事', '休日', 'images/071006 (1).PNG', 'files/icon_star_glay_v2.png', 'インタビュイー', '25', '社長', 1, NULL, 'タイトル', 'コンテンツ1', 'タイトル', 'コンテンツ2', NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-16 00:21:00', '2020-10-16 02:19:00'),
(8, '記事', '休日', 'images/071006 (1).PNG', 'files/icon_star_glay_v2.png', 'インタビュイー', '25', '社長', 1, NULL, 'タイトル', 'コンテンツ1', 'タイトル', 'コンテンツ2', NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-16 00:21:00', '2020-10-16 02:19:00');

-- --------------------------------------------------------

--
-- Table structure for table `article_views`
--

CREATE TABLE `article_views` (
  `id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `article_views`
--

INSERT INTO `article_views` (`id`, `article_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-10-18 22:10:39', '2020-10-18 22:10:39'),
(2, 1, '2020-10-18 22:10:41', '2020-10-18 22:10:41'),
(3, 1, '2020-10-18 22:11:11', '2020-10-18 22:11:11'),
(4, 1, '2020-10-18 22:11:56', '2020-10-18 22:11:56'),
(5, 1, '2020-10-18 22:12:18', '2020-10-18 22:12:18'),
(6, 1, '2020-10-18 22:12:24', '2020-10-18 22:12:24'),
(7, 1, '2020-10-18 22:12:41', '2020-10-18 22:12:41'),
(8, 1, '2020-10-18 22:13:17', '2020-10-18 22:13:17'),
(9, 1, '2020-10-18 22:36:36', '2020-10-18 22:36:36'),
(10, 1, '2020-10-18 22:36:59', '2020-10-18 22:36:59'),
(11, 1, '2020-10-18 22:39:29', '2020-10-18 22:39:29'),
(12, 1, '2020-10-18 22:40:11', '2020-10-18 22:40:11'),
(13, 1, '2020-10-18 22:40:36', '2020-10-18 22:40:36'),
(14, 1, '2020-10-18 22:41:00', '2020-10-18 22:41:00'),
(15, 1, '2020-10-18 22:41:33', '2020-10-18 22:41:33'),
(16, 1, '2020-10-18 22:42:33', '2020-10-18 22:42:33'),
(17, 1, '2020-10-18 22:42:58', '2020-10-18 22:42:58'),
(18, 1, '2020-10-18 22:44:57', '2020-10-18 22:44:57'),
(19, 1, '2020-10-18 22:46:02', '2020-10-18 22:46:02'),
(20, 1, '2020-10-18 22:47:41', '2020-10-18 22:47:41'),
(21, 1, '2020-10-18 22:49:59', '2020-10-18 22:49:59'),
(22, 1, '2020-10-18 22:51:12', '2020-10-18 22:51:12'),
(23, 1, '2020-10-18 22:51:53', '2020-10-18 22:51:53'),
(24, 1, '2020-10-18 22:52:39', '2020-10-18 22:52:39'),
(25, 1, '2020-10-18 22:53:47', '2020-10-18 22:53:47'),
(26, 1, '2020-10-18 22:55:24', '2020-10-18 22:55:24'),
(27, 1, '2020-10-18 22:56:13', '2020-10-18 22:56:13'),
(28, 1, '2020-10-18 22:57:39', '2020-10-18 22:57:39'),
(29, 1, '2020-10-18 22:58:02', '2020-10-18 22:58:02'),
(30, 1, '2020-10-18 22:59:02', '2020-10-18 22:59:02'),
(31, 1, '2020-10-18 22:59:13', '2020-10-18 22:59:13'),
(32, 1, '2020-10-18 23:00:03', '2020-10-18 23:00:03'),
(33, 1, '2020-10-18 23:00:12', '2020-10-18 23:00:12'),
(34, 1, '2020-10-18 23:00:33', '2020-10-18 23:00:33'),
(35, 1, '2020-10-18 23:00:42', '2020-10-18 23:00:42'),
(36, 1, '2020-10-18 23:01:21', '2020-10-18 23:01:21'),
(37, 1, '2020-10-18 23:37:24', '2020-10-18 23:37:24'),
(38, 1, '2020-10-18 23:37:33', '2020-10-18 23:37:33'),
(39, 1, '2020-10-18 23:37:53', '2020-10-18 23:37:53'),
(40, 1, '2020-10-18 23:38:22', '2020-10-18 23:38:22'),
(41, 1, '2020-10-19 00:08:18', '2020-10-19 00:08:18'),
(42, 1, '2020-10-19 00:49:52', '2020-10-19 00:49:52'),
(43, 1, '2020-10-19 02:56:32', '2020-10-19 02:56:32'),
(44, 2, '2020-10-19 04:06:26', '2020-10-19 04:06:26'),
(45, 8, '2020-10-19 04:39:03', '2020-10-19 04:39:03'),
(46, 8, '2020-10-19 04:39:03', '2020-10-19 04:39:03'),
(47, 3, '2020-10-19 05:05:29', '2020-10-19 05:05:29'),
(48, 3, '2020-10-19 05:06:15', '2020-10-19 05:06:15'),
(49, 3, '2020-10-19 05:06:38', '2020-10-19 05:06:38'),
(50, 3, '2020-10-19 05:06:48', '2020-10-19 05:06:48'),
(51, 3, '2020-10-19 05:09:06', '2020-10-19 05:09:06');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `pref_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `pref_id`, `name`, `created_at`, `updated_at`) VALUES
(48, 1, '札幌駅周辺', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(49, 1, '札幌大通周辺', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(50, 1, '札幌円山周辺', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(51, 1, '札幌すすきの以南', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(52, 1, '札幌北区', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(53, 1, '札幌東区', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(54, 1, '札幌白石区', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(55, 1, '札幌豊平区・南区', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(56, 1, '札幌西区・手稲区', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(57, 1, '札幌厚別区・清田区', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(58, 1, '小樽', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(59, 1, '江別・岩見沢・滝川', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(60, 1, '苫小牧・千歳・恵庭・室蘭', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(61, 1, '旭川', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(62, 1, '帯広', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(63, 1, '釧路', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(64, 1, '函館', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(65, 1, 'その他北海道', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(66, 2, '八戸', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(67, 2, '十和田・三沢・おいらせ町', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(68, 2, '弘前', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(69, 2, '青森', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(70, 2, '五所川原', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(71, 2, 'むつ', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(72, 2, 'その他青森県', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(73, 3, '大通・菜園・肴町', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(74, 3, '本宮・津志田・紫波郡', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(75, 3, '上田・青山・滝沢市', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(76, 3, '北上・花巻', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(77, 3, '奥州・一関', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(78, 3, 'その他岩手県', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(79, 4, '仙台駅周辺・東口・五橋', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(80, 4, '北四番丁・その他青葉区', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(81, 4, '泉区・富谷', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(82, 4, '太白区・名取・岩沼', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(83, 4, '宮城野区・若林区', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(84, 4, '利府・多賀城・石巻', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(85, 4, '大崎・登米・栗原', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(86, 4, 'その他宮城県', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(87, 5, '秋田', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(88, 5, '大仙・横手・湯沢', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(89, 5, '能代・大館', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(90, 5, '由利本荘', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(91, 5, 'その他秋田県', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(92, 6, '山形', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(93, 6, '酒田', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(94, 6, '新庄・天童', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(95, 6, '鶴岡', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(96, 6, '米沢', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(97, 6, 'その他山形県', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(98, 7, '郡山駅・横塚', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(99, 7, '桑野・朝日・並木', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(100, 7, '清水台・開成・菜根', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(101, 7, '富田・八山田・大槻', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(102, 7, '安積・須賀川', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(103, 7, '福島', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(104, 7, '会津若松・喜多方', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(105, 7, 'いわき・白河', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(106, 7, 'その他福島県', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(107, 8, '取手・土浦・つくば', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(108, 8, '水戸・ひたちなか', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(109, 8, '日立', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(110, 8, '取手・牛久・土浦', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(111, 8, '石岡・笠間・筑西', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(112, 8, '守谷・つくば', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(113, 8, '鹿島・神栖', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(114, 8, 'その他茨城県', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(115, 9, '東武宇都宮・JR宇都宮駅', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(116, 9, '戸祭・御幸ヶ原', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(117, 9, '下栗・峰・ゆいの杜', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(118, 9, '鶴田・西川田・インターパーク', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(119, 9, '宇都宮市周辺・その他', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(120, 9, '栃木・真岡', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(121, 9, '足利・佐野', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(122, 9, '那須塩原・大田原', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(123, 9, '鹿沼', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(124, 9, '日光', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(125, 9, 'その他栃木県', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(126, 10, '前橋', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(127, 10, '高崎', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(128, 10, '伊勢崎', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(129, 10, '桐生・館林', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(130, 10, '渋川・沼田・藤岡', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(131, 10, '太田', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(132, 10, 'その他群馬県', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(133, 11, '大宮・浦和・川口', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(134, 11, '志木・川越', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(135, 11, '東松山・所沢・飯能・狭山', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(136, 11, '草加・越谷・春日部', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(137, 11, '久喜・羽生', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(138, 11, 'その他埼玉県', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(139, 12, '千葉・稲毛', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(140, 12, '幕張・鎌取・都賀', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(141, 12, '流山・三郷・野田', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(142, 12, '船橋・津田沼', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(143, 12, '本八幡・浦安・市川', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(144, 12, '柏・松戸・我孫子', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(145, 12, '八千代・佐倉', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(146, 12, '鎌ヶ谷・成田', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(147, 12, '市原・木更津', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(148, 12, '茂原・勝浦', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(149, 12, '東金・銚子', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(150, 12, 'その他千葉県', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(151, 13, '渋谷・青山・原宿・表参道', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(152, 13, '恵比寿・代官山・中目黒', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(153, 13, '広尾・麻布・六本木', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(154, 13, '品川・目黒・五反田・大崎', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(155, 13, '新宿・高田馬場・代々木', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(156, 13, '銀座・有楽町・新橋', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(157, 13, '丸の内・日本橋', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(158, 13, '田町・芝公園・天王洲', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(159, 13, '汐留・お台場・竹芝・有明', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(160, 13, '月島・勝どき・豊洲', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(161, 13, '上野・神田・秋葉原・錦糸町', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(162, 13, '御茶ノ水・四ツ谷・千駄木', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(163, 13, '赤羽・板橋・大塚・王子・巣鴨', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(164, 13, '池袋・目白', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(165, 13, '練馬・成増・鷺ノ宮', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(166, 13, '中野・高円寺・阿佐ヶ谷', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(167, 13, '三軒茶屋・下北沢・成城学園', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(168, 13, '学芸大・自由が丘・二子玉川', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(169, 13, '明大前・千歳烏山', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(170, 13, '大井町・大森・蒲田・羽田', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(171, 13, '吉祥寺・荻窪・西荻窪', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(172, 13, '三鷹・調布・府中', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(173, 13, '立川・国立・日野', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(174, 13, '八王子・町田', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(175, 13, '東久留米・ひばりヶ丘・西東京', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(176, 13, '田無・東村山・拝島', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(177, 13, 'その他東京都', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(178, 14, '多摩・向ヶ丘遊園・新百合ヶ丘', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(179, 14, '溝の口・武蔵小杉・菊名', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(180, 14, '川崎・鶴見', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(181, 14, 'センター南・二俣川・戸塚', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(182, 14, '相模原・厚木・大和・秦野', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(183, 14, '横須賀・小田原', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(184, 14, '湘南', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(185, 14, '横浜・関内', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(186, 14, '元町・上大岡', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(187, 14, '東神奈川', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(188, 14, 'その他神奈川県', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(189, 15, '新潟駅前・万代・古町', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(190, 15, '女池・出来島・鳥屋野潟', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(191, 15, '東区・北区・江南区・秋葉区', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(192, 15, '西区・西蒲区・南区', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(193, 15, '新発田市・五泉市・阿賀野市', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(194, 15, '上越市', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(195, 15, '長岡', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(196, 15, '川西・川東', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(197, 15, '三条・燕', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(198, 15, 'その他新潟', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(199, 16, '駅南口周辺', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(200, 16, '南部（掛尾・布瀬）', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(201, 16, '東部（山室・新庄）', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(202, 16, '北西部（岩瀬・五福・婦中）', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(203, 16, '高岡', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(204, 16, '射水・氷見・砺波・南砺', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(205, 16, 'その他富山県', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(206, 17, '片町・武蔵', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(207, 17, '金沢駅', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(208, 17, '県庁', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(209, 17, '金沢西', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(210, 17, '金沢南・野々市', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(211, 17, '金沢東', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(212, 17, 'その他石川県', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(213, 18, '福井', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(214, 18, '鯖江・越前・坂井', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(215, 18, '敦賀', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(216, 18, 'その他福井県', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(217, 19, '甲府', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(218, 19, '南アルプス・甲斐・笛吹', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(219, 19, '富士吉田', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(220, 19, 'その他山梨県', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(221, 20, '長野駅・若里・栗田', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(222, 20, '三輪・高田・東和田・稲田', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(223, 20, '青木島・稲里・篠ノ井', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(224, 20, '上田', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(225, 20, '松本', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(226, 20, 'その他長野県', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(227, 21, '岐阜駅・柳ヶ瀬周辺', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(228, 21, '市民病院・本荘・西岐阜', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(229, 21, '長良・正木・島周辺', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(230, 21, '柳津・茜部・岐南', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(231, 21, '穂積・北方周辺', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(232, 21, '日野・芥見・羽島', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(233, 21, '各務原・鵜沼', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(234, 21, '大垣', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(235, 21, '関・美濃加茂・可児・郡上', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(236, 21, '多治見・土岐・瑞浪・中津川', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(237, 21, '高山', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(238, 21, 'その他岐阜県', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(239, 22, '静岡駅・新静岡駅周辺', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(240, 22, '葵区・駿河区・その他郊外', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(241, 22, '瀬名・草薙・清水区', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(242, 22, '藤枝・焼津・島田', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(243, 22, 'ＪＲ浜松駅周辺・浜松中心部', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(244, 22, '遠州鉄道沿線エリア', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(245, 22, '有玉・市野〜東エリア', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(246, 22, '鴨江・佐鳴台・入野〜西エリア', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(247, 22, '砂山・領家・高塚〜南エリア', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(248, 22, '高丘・三方原・浜北〜北エリア', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(249, 22, '磐田・掛川・袋井', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(250, 22, '沼津', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(251, 22, '富士', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(252, 22, '富士宮', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(253, 22, '三島', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(254, 22, 'その他静岡県', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(255, 23, '岡崎・安城・西尾・蒲郡', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(256, 23, '日進・豊田・知立・刈谷・碧南', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(257, 23, '豊川・豊橋', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(258, 23, '一宮・稲沢・清洲・津島', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(259, 23, '犬山・江南・小田井', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(260, 23, '小牧・上飯田', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(261, 23, '守山・尾張旭・瀬戸', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(262, 23, '春日井・高蔵寺', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(263, 23, '名駅周辺・中村区・西区', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(264, 23, '伏見・丸の内', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(265, 23, '栄・錦', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(266, 23, '久屋大通・泉・東桜', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(267, 23, '矢場町・大須', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(268, 23, '金山周辺', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(269, 23, '新栄・千種', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(270, 23, '今池・本山', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(271, 23, '大曽根・黒川', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(272, 23, '星ヶ丘・一社', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(273, 23, '本郷・藤が丘・長久手', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(274, 23, '地下鉄名港線', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(275, 23, '高畑・荒子', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(276, 23, '笠寺・鳴海・大府・豊明', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(277, 23, '尾張横須賀・朝倉', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(278, 23, '南加木屋・半田・武豊', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(279, 23, '新瑞橋・野並・徳重', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(280, 23, '八事・平針・赤池', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(281, 23, '蟹江・弥富・桑名', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(282, 23, '松阪', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(283, 23, 'その他愛知県', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(284, 24, '桑名・四日市', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(285, 24, '鈴鹿・津', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(286, 24, '松阪・伊勢・志摩', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(287, 24, '名張・伊賀', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(288, 24, 'その他三重県', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(289, 25, '大津・草津・守山', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(290, 25, '近江八幡・彦根・長浜', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(291, 25, '大津京・堅田・安曇川', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(292, 25, 'その他滋賀県', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(293, 26, '四条烏丸・烏丸御池', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(294, 26, '河原町周辺・祇園', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(295, 26, '五条〜京都駅・下京区・南区', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(296, 26, '大宮〜西院・二条周辺', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(297, 26, '丸太町・今出川周辺', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(298, 26, '北大路〜北山・鞍馬口周辺', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(299, 26, '西京極・桂', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(300, 26, '山科・向日町・長岡京・亀岡', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(301, 26, '伏見桃山・深草・竹田・淀', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(302, 26, '八幡・松井山手・京田辺・木津', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(303, 26, '六地蔵周辺・小倉・大久保', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(304, 26, '舞鶴・福知山・京丹後', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(305, 26, 'その他京都府', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(306, 27, '江坂・吹田・淀川', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(307, 27, '東淀川・上新庄', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(308, 27, '池田・石橋・箕面・豊中', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(309, 27, '緑地公園・千里中央', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(310, 27, '豊津・山田', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(311, 27, '高槻・茨木', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(312, 27, '梅田・茶屋町・福島', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(313, 27, '京橋・天神橋・天満橋・本町他', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(314, 27, '関目・守口市・門真市', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(315, 27, '蒲生・鶴見・門真南', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(316, 27, '寝屋川市・香里園', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(317, 27, '枚方市・樟葉', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(318, 27, '心斎橋筋・東心斎橋', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(319, 27, '西心斎橋・アメ村', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(320, 27, '難波・日本橋・大国町', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(321, 27, '南船場・堀江・新町', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(322, 27, '天王寺・あべの・寺田町', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(323, 27, '上本町・谷町・玉造他', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(324, 27, '四条畷・河内磐船・長尾', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(325, 27, '鴫野・放出・住道', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(326, 27, '布施・河内花園・瓢箪山', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(327, 27, '緑橋・長田・新石切', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(328, 27, '昭和町・西田辺', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(329, 27, '帝塚山・あびこ', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(330, 27, '弁天町・大正・住之江・南港', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(331, 27, '近鉄八尾・河内山本・堅下', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(332, 27, '針中野・河内天美・松原', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(333, 27, '藤井寺・古市・富田林', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(334, 27, '平野・加美・八尾・柏原', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(335, 27, '駒川中野・喜連瓜破・八尾南', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(336, 27, '岸和田・貝塚・熊取', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(337, 27, '高石・泉大津・和泉府中', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(338, 27, '泉佐野・和泉砂川・阪南', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(339, 27, '堺東・堺・堺市・三国ヶ丘・鳳', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(340, 27, 'なかもず〜北花田・深井周辺', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(341, 27, '初芝・北野田・狭山', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(342, 27, '金剛・河内長野', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(343, 27, '泉ヶ丘・和泉中央', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(344, 27, 'その他大阪府', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(345, 28, '三宮（トアロードより東）', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(346, 28, '元町（トアロードより西）', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(347, 28, '灘・六甲道・住吉・岡本', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(348, 28, '神戸駅・兵庫', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(349, 28, '姫路駅北側周辺', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(350, 28, '姫路駅南側・飾磨・英賀保', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(351, 28, '京口・野里・辻井・今宿', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(352, 28, '広畑・網干・青山・太子', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(353, 28, 'たつの・加古川・東加古川', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(354, 28, '御着・白浜・高砂・宝殿', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(355, 28, '地下鉄西神線・西区', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(356, 28, '鈴蘭台・岡場・三木', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(357, 28, '明石・垂水・須磨', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(358, 28, '宝塚・中山・逆瀬川', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(359, 28, '川西・多田・畦野', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(360, 28, '三田・ウッディタウン', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(361, 28, '西宮・伊丹・芦屋', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(362, 28, '芦屋・西宮・甲子園口', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(363, 28, '立花・尼崎・塚本', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(364, 28, '夙川・西宮北口・甲東園', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(365, 28, '武庫之荘・塚口・伊丹', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(366, 28, '芦屋・西宮・鳴尾', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(367, 28, '千鳥橋・西九条', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(368, 28, 'その他兵庫県', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(369, 29, '王寺・郡山・田原本・天理', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(370, 29, '香芝・高田・八木・桜井', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(371, 29, '高田市・橿原神宮前・御所', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(372, 29, '生駒・学園前・登美が丘', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(373, 29, '西大寺・新大宮・奈良', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(374, 29, 'その他奈良県', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(375, 30, '和歌山', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(376, 30, '田辺', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(377, 30, 'その他和歌山県', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(378, 31, '鳥取', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(379, 31, '米子', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(380, 31, '倉吉', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(381, 31, 'その他鳥取県', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(382, 32, '松江', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(383, 32, '出雲', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(384, 32, '益田・浜田', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(385, 32, 'その他島根県', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(386, 33, '岡山駅東口・西口', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(387, 33, '表町・中山下・丸の内', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(388, 33, '大元・青江・浦安方面', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(389, 33, '北長瀬・問屋町・下中野', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(390, 33, '庭瀬・妹尾', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(391, 33, '津島・学南・下伊福・大安寺', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(392, 33, '平井・原尾島・東岡山・西大寺', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(393, 33, '倉敷・中庄・総社・玉野・笠岡', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(394, 33, 'その他岡山県', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(395, 34, '袋町・中町・小町・富士見', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(396, 34, '立町・本通・並木通り・三川町', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(397, 34, '紙屋町・大手町', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(398, 34, '八丁堀・幟町・銀山・白島', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(399, 34, '段原・皆実・宇品・千田', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(400, 34, '広島駅周辺・東区', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(401, 34, '安芸区・安芸郡', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(402, 34, '横川・十日市・天満・舟入', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(403, 34, '佐伯区・西区', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(404, 34, '廿日市', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(405, 34, '安佐南区・安佐北区', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(406, 34, '呉', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(407, 34, '東広島', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(408, 34, '福山駅前・三吉周辺', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(409, 34, '尾道周辺', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(410, 34, '三原周辺', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(411, 34, 'その他広島県', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(412, 35, '宇部・山陽小野田・美祢', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(413, 35, '下関・長門', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(414, 35, '山口・萩', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(415, 35, '防府・周南', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(416, 35, '岩国・下松', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(417, 35, 'その他山口県', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(418, 36, '徳島市内', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(419, 36, '北島・藍住・松茂・鳴門', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(420, 36, '阿南', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(421, 36, '小松島・鴨島', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(422, 36, 'その他徳島県', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(423, 37, '高松市中心部', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(424, 37, '高松市郊外', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(425, 37, '丸亀・坂出・宇多津', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(426, 37, '善通寺・多度津', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(427, 37, '三豊・観音寺・その他', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(428, 37, 'その他香川県', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(429, 38, '松山', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(430, 38, '市駅・大街道・勝山通り周辺', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(431, 38, '城北・城西', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(432, 38, '城南・城東', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(433, 38, '今治', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(434, 38, '新居浜・西条', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(435, 38, 'その他愛媛県', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(436, 39, '高知市', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(437, 39, '高知市周辺', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(438, 39, 'その他高知県', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(439, 40, '天神・大名', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(440, 40, '今泉・警固・薬院', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(441, 40, '赤坂・大濠・西新周辺', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(442, 40, '博多駅周辺', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(443, 40, '中洲・住吉・春吉', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(444, 40, '平尾・高宮・大橋', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(445, 40, '春日・大野城・筑紫野周辺', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(446, 40, '姪浜周辺', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(447, 40, '七隈沿線', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(448, 40, '箱崎・千早・香椎周辺', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(449, 40, '糟屋・新宮・古賀・福津', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(450, 40, '大牟田・柳川', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(451, 40, '飯塚・田川', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(452, 40, '宗像・遠賀', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(453, 40, '久留米駅周辺', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(454, 40, '小倉北・門司・戸畑', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(455, 40, '小倉南・行橋・苅田', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(456, 40, '黒崎・八幡東・八幡西', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(457, 40, '折尾・若松・中間・直方', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(458, 40, 'その他福岡県', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(459, 41, '佐賀・鳥栖', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(460, 41, '唐津・伊万里', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(461, 41, 'その他佐賀県', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(462, 42, '浜町・長崎駅周辺・長崎市内', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(463, 42, '浜口・浦上・住吉周辺', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(464, 42, '長崎市近郊・時津町・長与町', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(465, 42, '諫早', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(466, 42, '大村', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(467, 42, '佐世保', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(468, 42, 'その他長崎県', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(469, 43, '上通り・上乃裏・並木坂', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(470, 43, '下通り・新市街周辺', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(471, 43, '水前寺・大江・長嶺', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(472, 43, '南熊本・田崎・熊本駅周辺', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(473, 43, '健軍・益城・戸島', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(474, 43, '光の森・合志・大津', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(475, 43, '八代・宇土・宇城周辺', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(476, 43, 'その他熊本県', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(477, 44, '府内・中央・大手町', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(478, 44, '賀来・わさだ・南大分', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(479, 44, '下郡・津留・萩原・高城', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(480, 44, '明野・森町・鶴崎・大在', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(481, 44, '大道・春日・西大分', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(482, 44, '別府', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(483, 44, '中津・宇佐', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(484, 44, '佐伯', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(485, 44, '日田', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(486, 44, 'その他大分県', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(487, 45, '宮崎市中心部', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(488, 45, '吉村・一ッ葉・佐土原', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(489, 45, '神宮・霧島・花ヶ島', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(490, 45, '南宮崎・大塚・清武', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(491, 45, '都城・日南', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(492, 45, '延岡', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(493, 45, '日向', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(494, 45, 'その他宮崎県', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(495, 46, '天文館・鹿児島駅', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(496, 46, '中央駅・城西・高麗・甲南', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(497, 46, '荒田・騎射場・郡元周辺', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(498, 46, '宇宿・紫原・谷山周辺', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(499, 46, '姶良・加治木・日置', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(500, 46, '霧島・国分・隼人', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(501, 46, '鹿屋・大隅', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(502, 46, '薩摩川内', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(503, 46, 'その他鹿児島県', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(504, 47, '那覇', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(505, 47, '豊見城・南風原・与那原', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(506, 47, '糸満・八重瀬・南城', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(507, 47, '浦添・宜野湾', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(508, 47, '西原・北中城・中城', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(509, 47, '北谷・嘉手納・読谷', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(510, 47, '沖縄市・うるま', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(511, 47, '名護', '2020-09-24 15:34:16', '0000-00-00 00:00:00'),
(512, 47, 'その他沖縄県', '2020-09-24 15:34:16', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `appeal` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `business_description` text NOT NULL,
  `requirement` text NOT NULL,
  `employment` text NOT NULL,
  `qualification` text NOT NULL,
  `pref_id` varchar(255) NOT NULL,
  `city_id` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `access` text NOT NULL,
  `phone` varchar(255) NOT NULL,
  `business_time` text NOT NULL,
  `wage_sys` text NOT NULL,
  `salary` text NOT NULL,
  `treatment` text NOT NULL,
  `holiday` text NOT NULL,
  `lending_sys` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `title`, `description`, `appeal`, `image`, `business_description`, `requirement`, `employment`, `qualification`, `pref_id`, `city_id`, `address`, `access`, `phone`, `business_time`, `wage_sys`, `salary`, `treatment`, `holiday`, `lending_sys`, `created_at`, `updated_at`) VALUES
(1, 'タイトル', '概要\r\n入力 \r\n概要', 'アピールポイント', 'images/3f34f (1).png', '事業内容', '募集要項', '雇用形態', '応募資格', '9', '117', '住所', 'アクセス', '130-0000-1234', '勤務時間', '賃金体系', '給与', '待遇', '休日・休暇', '貸付制度', '2020-09-28 14:00:47', '2020-09-28 05:00:47');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_04_173148_create_admin_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prefs`
--

CREATE TABLE `prefs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prefs`
--

INSERT INTO `prefs` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '北海道', '2020-09-24 15:24:47', '0000-00-00 00:00:00'),
(2, '青森', '2020-09-24 15:24:47', '0000-00-00 00:00:00'),
(3, '岩手', '2020-09-24 15:24:47', '0000-00-00 00:00:00'),
(4, '宮城', '2020-09-24 15:24:47', '0000-00-00 00:00:00'),
(5, '秋田', '2020-09-24 15:24:47', '0000-00-00 00:00:00'),
(6, '山形', '2020-09-24 15:24:47', '0000-00-00 00:00:00'),
(7, '福島', '2020-09-24 15:24:47', '0000-00-00 00:00:00'),
(8, '茨城', '2020-09-24 15:24:47', '0000-00-00 00:00:00'),
(9, '栃木', '2020-09-24 15:24:47', '0000-00-00 00:00:00'),
(10, '群馬', '2020-09-24 15:24:47', '0000-00-00 00:00:00'),
(11, '埼玉', '2020-09-24 15:24:47', '0000-00-00 00:00:00'),
(12, '千葉', '2020-09-24 15:24:47', '0000-00-00 00:00:00'),
(13, '東京', '2020-09-24 15:24:47', '0000-00-00 00:00:00'),
(14, '神奈川', '2020-09-24 15:24:47', '0000-00-00 00:00:00'),
(15, '新潟', '2020-09-24 15:24:47', '0000-00-00 00:00:00'),
(16, '富山', '2020-09-24 15:24:47', '0000-00-00 00:00:00'),
(17, '石川', '2020-09-24 15:24:47', '0000-00-00 00:00:00'),
(18, '福井', '2020-09-24 15:24:47', '0000-00-00 00:00:00'),
(19, '山梨', '2020-09-24 15:24:47', '0000-00-00 00:00:00'),
(20, '長野', '2020-09-24 15:24:47', '0000-00-00 00:00:00'),
(21, '岐阜', '2020-09-24 15:24:47', '0000-00-00 00:00:00'),
(22, '静岡', '2020-09-24 15:24:47', '0000-00-00 00:00:00'),
(23, '愛知', '2020-09-24 15:24:47', '0000-00-00 00:00:00'),
(24, '三重', '2020-09-24 15:24:47', '0000-00-00 00:00:00'),
(25, '滋賀', '2020-09-24 15:24:47', '0000-00-00 00:00:00'),
(26, '京都', '2020-09-24 15:24:47', '0000-00-00 00:00:00'),
(27, '大阪', '2020-09-24 15:24:47', '0000-00-00 00:00:00'),
(28, '兵庫', '2020-09-24 15:24:47', '0000-00-00 00:00:00'),
(29, '奈良', '2020-09-24 15:24:47', '0000-00-00 00:00:00'),
(30, '和歌山', '2020-09-24 15:24:47', '0000-00-00 00:00:00'),
(31, '鳥取', '2020-09-24 15:24:47', '0000-00-00 00:00:00'),
(32, '島根', '2020-09-24 15:24:47', '0000-00-00 00:00:00'),
(33, '岡山', '2020-09-24 15:24:47', '0000-00-00 00:00:00'),
(34, '広島', '2020-09-24 15:24:47', '0000-00-00 00:00:00'),
(35, '山口', '2020-09-24 15:24:47', '0000-00-00 00:00:00'),
(36, '徳島', '2020-09-24 15:24:47', '0000-00-00 00:00:00'),
(37, '香川', '2020-09-24 15:24:47', '0000-00-00 00:00:00'),
(38, '愛媛', '2020-09-24 15:24:47', '0000-00-00 00:00:00'),
(39, '高知', '2020-09-24 15:24:47', '0000-00-00 00:00:00'),
(40, '福岡', '2020-09-24 15:24:47', '0000-00-00 00:00:00'),
(41, '佐賀', '2020-09-24 15:24:47', '0000-00-00 00:00:00'),
(42, '長崎', '2020-09-24 15:24:47', '0000-00-00 00:00:00'),
(43, '熊本', '2020-09-24 15:24:47', '0000-00-00 00:00:00'),
(44, '大分', '2020-09-24 15:24:47', '0000-00-00 00:00:00'),
(45, '宮崎', '2020-09-24 15:24:47', '0000-00-00 00:00:00'),
(46, '鹿児島', '2020-09-24 15:24:47', '0000-00-00 00:00:00'),
(47, '沖縄', '2020-09-24 15:24:47', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article_views`
--
ALTER TABLE `article_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `prefs`
--
ALTER TABLE `prefs`
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
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=516;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `article_views`
--
ALTER TABLE `article_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=513;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `prefs`
--
ALTER TABLE `prefs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
