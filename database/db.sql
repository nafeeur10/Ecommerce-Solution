-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 12, 2021 at 06:15 AM
-- Server version: 10.3.28-MariaDB-log-cll-lve
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nafeeurcsekuet10_fleetcart`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'MDAHUSXej4U4DAfKqg7IKDN5dcMn8jwr', 1, '2020-07-03 22:17:06', '2020-07-04 02:17:06', '2020-07-04 02:17:06'),
(2, 2, 'FMtO9wBeMwW9D9K5pZn5pzgV1SB5ZQkC', 1, '2020-07-04 15:34:58', '2020-07-04 19:34:58', '2020-07-04 19:34:58'),
(3, 3, 'jMCT8jHdqBH8TCN9QjXZJskkYXFwHE5G', 1, '2020-07-04 21:42:40', '2020-07-05 01:42:40', '2020-07-05 01:42:40'),
(4, 4, 'cGTnrtQRHqlFGxUkhw9PTfmDfCP4gmKX', 1, '2020-07-04 22:48:30', '2020-07-05 02:48:30', '2020-07-05 02:48:30'),
(5, 5, 'MGyDeKC7mzBsI5XaIeg2oFArZe0iB44G', 1, '2020-09-23 13:20:50', '2020-09-23 17:20:50', '2020-09-23 17:20:50'),
(6, 6, 'MBjOi3pdttJw9zlDVVkUCJdpoHJ3VnGD', 1, '2020-10-27 09:23:43', '2020-10-27 13:23:43', '2020-10-27 13:23:43');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_set_id` int(10) UNSIGNED NOT NULL,
  `is_filterable` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_categories`
--

CREATE TABLE `attribute_categories` (
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_sets`
--

CREATE TABLE `attribute_sets` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_set_translations`
--

CREATE TABLE `attribute_set_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_set_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_translations`
--

CREATE TABLE `attribute_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_value_translations`
--

CREATE TABLE `attribute_value_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_value_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brand_translations`
--

CREATE TABLE `brand_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(11) NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(10) UNSIGNED DEFAULT NULL,
  `is_searchable` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `slug`, `position`, `is_searchable`, `is_active`, `created_at`, `updated_at`) VALUES
(1, NULL, 'honey', NULL, 0, 0, '2020-07-04 09:47:55', '2020-08-25 22:08:12'),
(2, NULL, 'mustered-oil', NULL, 0, 0, '2020-07-04 09:52:21', '2020-08-25 22:08:20'),
(3, NULL, 'books', NULL, 0, 0, '2020-07-04 09:53:17', '2020-08-25 22:08:26'),
(4, NULL, 'nakshi-katha', NULL, 1, 1, '2020-07-04 09:55:37', '2020-07-04 09:55:37'),
(5, NULL, 'handy-three-pieces', NULL, 0, 0, '2020-07-04 09:56:50', '2020-08-25 22:08:34'),
(6, NULL, 'three-pieces', NULL, 1, 1, '2020-08-14 11:35:41', '2020-08-14 11:35:41');

-- --------------------------------------------------------

--
-- Table structure for table `category_translations`
--

CREATE TABLE `category_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_translations`
--

INSERT INTO `category_translations` (`id`, `category_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'Honey'),
(2, 2, 'en', 'Mustered Oil'),
(3, 3, 'en', 'Books'),
(4, 4, 'en', 'নকশী কাঁথা'),
(5, 5, 'en', 'Handy Three Pieces'),
(6, 6, 'en', 'থ্রি পিস');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(18,4) UNSIGNED DEFAULT NULL,
  `is_percent` tinyint(1) NOT NULL,
  `free_shipping` tinyint(1) NOT NULL,
  `minimum_spend` decimal(18,4) UNSIGNED DEFAULT NULL,
  `maximum_spend` decimal(18,4) UNSIGNED DEFAULT NULL,
  `usage_limit_per_coupon` int(10) UNSIGNED DEFAULT NULL,
  `usage_limit_per_customer` int(10) UNSIGNED DEFAULT NULL,
  `used` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_categories`
--

CREATE TABLE `coupon_categories` (
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `exclude` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_products`
--

CREATE TABLE `coupon_products` (
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `exclude` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_translations`
--

CREATE TABLE `coupon_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cross_sell_products`
--

CREATE TABLE `cross_sell_products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `cross_sell_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currency_rates`
--

CREATE TABLE `currency_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(8,4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currency_rates`
--

INSERT INTO `currency_rates` (`id`, `currency`, `rate`, `created_at`, `updated_at`) VALUES
(1, 'USD', 1.0000, '2020-07-04 02:17:06', '2020-07-04 02:17:06'),
(2, 'BDT', 1.0000, '2020-07-04 08:20:07', '2020-07-04 08:20:07');

-- --------------------------------------------------------

--
-- Table structure for table `entity_files`
--

CREATE TABLE `entity_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED NOT NULL,
  `entity_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` bigint(20) UNSIGNED NOT NULL,
  `zone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `entity_files`
--

INSERT INTO `entity_files` (`id`, `file_id`, `entity_type`, `entity_id`, `zone`, `created_at`, `updated_at`) VALUES
(7, 12, 'Modules\\Product\\Entities\\Product', 1, 'base_image', '2020-07-04 10:00:16', '2020-07-04 10:00:16'),
(8, 13, 'Modules\\Product\\Entities\\Product', 2, 'base_image', '2020-07-04 10:04:03', '2020-07-04 10:04:03'),
(9, 14, 'Modules\\Product\\Entities\\Product', 3, 'base_image', '2020-07-04 10:08:00', '2020-07-04 10:08:00'),
(10, 15, 'Modules\\Product\\Entities\\Product', 4, 'base_image', '2020-07-04 10:09:13', '2020-07-04 10:09:13'),
(11, 19, 'Modules\\Product\\Entities\\Product', 5, 'base_image', '2020-08-09 22:39:57', '2020-08-09 22:39:57'),
(18, 7, 'Modules\\Category\\Entities\\Category', 1, 'logo', '2020-08-25 22:08:12', '2020-08-25 22:08:12'),
(19, 6, 'Modules\\Category\\Entities\\Category', 1, 'banner', '2020-08-25 22:08:12', '2020-08-25 22:08:12'),
(20, 8, 'Modules\\Category\\Entities\\Category', 2, 'logo', '2020-08-25 22:08:20', '2020-08-25 22:08:20'),
(21, 9, 'Modules\\Category\\Entities\\Category', 3, 'logo', '2020-08-25 22:08:26', '2020-08-25 22:08:26'),
(22, 11, 'Modules\\Category\\Entities\\Category', 5, 'logo', '2020-08-25 22:08:34', '2020-08-25 22:08:34'),
(23, 10, 'Modules\\Category\\Entities\\Category', 4, 'logo', '2020-08-25 22:08:56', '2020-08-25 22:08:56'),
(28, 28, 'Modules\\Product\\Entities\\Product', 11, 'base_image', '2020-08-25 22:33:21', '2020-08-25 22:33:21'),
(31, 30, 'Modules\\Product\\Entities\\Product', 7, 'base_image', '2020-10-01 19:29:27', '2020-10-01 19:29:27'),
(32, 31, 'Modules\\Product\\Entities\\Product', 8, 'base_image', '2020-10-01 19:33:00', '2020-10-01 19:33:00'),
(33, 32, 'Modules\\Product\\Entities\\Product', 9, 'base_image', '2020-10-01 19:36:40', '2020-10-01 19:36:40'),
(34, 33, 'Modules\\Product\\Entities\\Product', 9, 'additional_images', '2020-10-01 19:36:40', '2020-10-01 19:36:40'),
(35, 35, 'Modules\\Product\\Entities\\Product', 9, 'additional_images', '2020-10-01 19:36:40', '2020-10-01 19:36:40'),
(37, 36, 'Modules\\Product\\Entities\\Product', 10, 'base_image', '2020-10-01 19:40:32', '2020-10-01 19:40:32'),
(40, 39, 'Modules\\Product\\Entities\\Product', 12, 'base_image', '2020-10-01 19:52:35', '2020-10-01 19:52:35'),
(41, 40, 'Modules\\Product\\Entities\\Product', 12, 'additional_images', '2020-10-01 19:52:35', '2020-10-01 19:52:35'),
(42, 37, 'Modules\\Product\\Entities\\Product', 6, 'base_image', '2020-10-01 19:53:09', '2020-10-01 19:53:09'),
(43, 38, 'Modules\\Product\\Entities\\Product', 6, 'additional_images', '2020-10-01 19:53:09', '2020-10-01 19:53:09'),
(46, 41, 'Modules\\Product\\Entities\\Product', 13, 'base_image', '2020-10-01 19:56:30', '2020-10-01 19:56:30'),
(47, 42, 'Modules\\Product\\Entities\\Product', 13, 'additional_images', '2020-10-01 19:56:30', '2020-10-01 19:56:30'),
(50, 43, 'Modules\\Product\\Entities\\Product', 14, 'base_image', '2020-10-01 20:00:22', '2020-10-01 20:00:22'),
(51, 44, 'Modules\\Product\\Entities\\Product', 14, 'additional_images', '2020-10-01 20:00:22', '2020-10-01 20:00:22'),
(52, 45, 'Modules\\Product\\Entities\\Product', 15, 'base_image', '2020-10-01 20:03:24', '2020-10-01 20:03:24'),
(53, 46, 'Modules\\Product\\Entities\\Product', 15, 'additional_images', '2020-10-01 20:03:24', '2020-10-01 20:03:24'),
(54, 47, 'Modules\\Product\\Entities\\Product', 16, 'base_image', '2020-10-01 20:06:17', '2020-10-01 20:06:17');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `user_id`, `filename`, `disk`, `path`, `extension`, `mime`, `size`, `created_at`, `updated_at`) VALUES
(1, 1, 'shoponline.png', 'public_storage', 'media/9hV4QCwes3PymnjWG5d5DSL7zdrOUiLCcwCiH1TL.png', 'png', 'image/png', '293401', '2020-07-04 08:38:20', '2020-07-04 08:38:20'),
(3, 1, 'point.png', 'public_storage', 'media/d1R6I69RIPIliIsSO2GHkR0FXuraqmpRgCqWnfRy.png', 'png', 'image/png', '331016', '2020-07-04 09:00:10', '2020-07-04 09:00:10'),
(4, 1, 'honey.png', 'public_storage', 'media/MWkEmJOT1GAvYU2RXFDeQVFDpgbBppmBAzUAXY1s.png', 'png', 'image/png', '154890', '2020-07-04 09:00:27', '2020-07-04 09:00:27'),
(5, 1, 'point.png', 'public_storage', 'media/nlCob7Q1FyVfZEeeGbFjyPJq1OO8pWvbSddi1bDV.png', 'png', 'image/png', '330749', '2020-07-04 09:21:17', '2020-07-04 09:21:17'),
(6, 1, 'honey.png', 'public_storage', 'media/WSHV6YI7bvPowgVlW1fwDmqLKaPBKV3ycQZqaG6s.png', 'png', 'image/png', '26949', '2020-07-04 09:21:33', '2020-07-04 09:21:33'),
(7, 1, 'icons8-honey-100.png', 'public_storage', 'media/Aui9uRuMycCIyMFjpRx1gBQbVioRraRdj2MkIDa3.png', 'png', 'image/png', '2792', '2020-07-04 09:47:36', '2020-07-04 09:47:36'),
(8, 1, 'icons8-oil-massage-100.png', 'public_storage', 'media/PWNfU3EP2OCnHjV04WZHD6Eua4dwNqYFunDiRAcw.png', 'png', 'image/png', '4336', '2020-07-04 09:51:32', '2020-07-04 09:51:32'),
(9, 1, 'icons8-book-100.png', 'public_storage', 'media/QYH0w4nO62d390XfdMufW1szSQvlEQwj4ECwSdNb.png', 'png', 'image/png', '2311', '2020-07-04 09:53:09', '2020-07-04 09:53:09'),
(10, 1, 'icons8-blanket-100.png', 'public_storage', 'media/yaTfE0j5edWLbg5dfGkzwTJr1leQ3DOgPV25dqP3.png', 'png', 'image/png', '5321', '2020-07-04 09:55:26', '2020-07-04 09:55:26'),
(11, 1, 'icons8-wedding-dress-100.png', 'public_storage', 'media/5JrCr2NbQYV9jKXAEcS2WtAOaKGRCYJR5VHmr3Xc.png', 'png', 'image/png', '3800', '2020-07-04 09:56:44', '2020-07-04 09:56:44'),
(12, 1, '1371603793161.jpeg', 'public_storage', 'media/0Ck8YWlDVbFDf0Q1kxv8qVbh3C5ckxaPJndMlBFB.jpeg', 'jpeg', 'image/jpeg', '17885', '2020-07-04 10:00:08', '2020-07-04 10:00:08'),
(13, 1, 'sorishar te.png', 'public_storage', 'media/Zaj0XUYCmapsoH6h6vcNC69slP3FoWYCLRUj9flx.png', 'png', 'image/png', '238376', '2020-07-04 10:03:55', '2020-07-04 10:03:55'),
(14, 1, '72531212_550141775790654_776832693332606976_n-1-250x350.jpg', 'public_storage', 'media/ddwCdJE1meygobghAcYMW4gaXEqWvcu5NLg8gz8E.jpeg', 'jpeg', 'image/jpeg', '21665', '2020-07-04 10:07:51', '2020-07-04 10:07:51'),
(15, 1, '72669243_919086818462667_6139952742325551104_n-250x350.jpg', 'public_storage', 'media/i9zKhBloi9fYJe7v5yp1iu1yDSRahpTM7KXt0AVN.jpeg', 'jpeg', 'image/jpeg', '11382', '2020-07-04 10:09:04', '2020-07-04 10:09:04'),
(16, 1, 'favicon icon - 1.jpg', 'public_storage', 'media/mwvvy05CgJFycFXqaiiPyFxy9BS6riX7fCcNeSwI.jpeg', 'jpeg', 'image/jpeg', '34527', '2020-08-03 23:42:53', '2020-08-03 23:42:53'),
(17, 1, 'PNG 3.png', 'public_storage', 'media/jzRZnn2ZF6E9Tc2mVlZk5tGDQeaojA4EPisK1FO7.png', 'png', 'image/png', '67348', '2020-08-03 23:43:17', '2020-08-03 23:43:17'),
(18, 1, 'PNG 1.png', 'public_storage', 'media/pvmoP0iByLqtlCrovr2Yms0QLc2leSorJFLxVqHJ.png', 'png', 'image/png', '75403', '2020-08-03 23:44:22', '2020-08-03 23:44:22'),
(19, 1, 'Post1.png', 'public_storage', 'media/icZ5D4C4hkV4WDsJAkEdlTBQGZqSYLztOFTKbtis.png', 'png', 'image/png', '1663474', '2020-08-09 22:38:29', '2020-08-09 22:38:29'),
(20, 1, 'Nokshi Katha.png', 'public_storage', 'media/P9gMRek7qUkmf2VduzB9oyHvIh7LnooAhoPTRmqX.png', 'png', 'image/png', '1569771', '2020-08-09 23:26:41', '2020-08-09 23:26:41'),
(21, 1, 'fbpost2.png', 'public_storage', 'media/KIgQ97q6AjKnrLBDouh2qtUdXZNrNBInyQ1lnRya.png', 'png', 'image/png', '1716951', '2020-08-09 23:36:15', '2020-08-09 23:36:15'),
(22, 1, 'IMG-20200813-WA0009.jpg', 'public_storage', 'media/HaTBElelV6LCsAdcRVYAetsDQFkvbIPidbdYWcmR.jpeg', 'jpeg', 'image/jpeg', '164281', '2020-08-14 11:38:27', '2020-08-14 11:38:27'),
(23, 1, 'IMG-20200813-WA0010.jpg', 'public_storage', 'media/q3iaZnLmw26q06KuYegQERxWUmXxLkgy9X45KVw9.jpeg', 'jpeg', 'image/jpeg', '150807', '2020-08-14 11:38:54', '2020-08-14 11:38:54'),
(24, 1, 'WhatsApp Image 2020-08-25 at 5.53.37 PM.jpeg', 'public_storage', 'media/g5fyd5DPIZ7ZWDQ0eTDimsxQommFDK04n18DhxC1.jpeg', 'jpeg', 'image/jpeg', '329434', '2020-08-25 21:55:12', '2020-08-25 21:55:12'),
(25, 1, 'NBA002.jpg', 'public_storage', 'media/RObsAWYoDNiR6xCKIwmyGqOS5VNDLCMNOM2ZWxpH.jpeg', 'jpeg', 'image/jpeg', '314626', '2020-08-25 22:12:09', '2020-08-25 22:12:09'),
(26, 1, 'NBA003.jpg', 'public_storage', 'media/NgVTc8Dn23aGSyQL4mR91JBdSSXGT4uQB8WqyRub.jpeg', 'jpeg', 'image/jpeg', '375764', '2020-08-25 22:16:20', '2020-08-25 22:16:20'),
(27, 1, 'NBA004.jpg', 'public_storage', 'media/Y7drJbUyg90s0k3PeDgjOuIeLIGhbgLSwfeUIaJ8.jpeg', 'jpeg', 'image/jpeg', '369859', '2020-08-25 22:17:47', '2020-08-25 22:17:47'),
(28, 1, 'NBA005.jpg', 'public_storage', 'media/epyErljSJWr1fjIyuQyTMrxb2ys35AwUEV9MyBoe.jpeg', 'jpeg', 'image/jpeg', '558513', '2020-08-25 22:33:10', '2020-08-25 22:33:10'),
(29, 1, 'NBA001.png', 'public_storage', 'media/P6Fl8EHOVQibhGJtUOakZ8IngG2VILv0dvYmeCSV.png', 'png', 'image/png', '376463', '2020-10-01 19:28:07', '2020-10-01 19:28:07'),
(30, 1, 'WhatsApp_Image_2020-10-01_at_3.20.22_PM-removebg-preview.png', 'public_storage', 'media/wiKo6Zxa1GouVpBzmwAhVDvC8Nvm9jc12ixk9iGt.png', 'png', 'image/png', '262291', '2020-10-01 19:29:17', '2020-10-01 19:29:17'),
(31, 1, 'Post1-removebg-preview.png', 'public_storage', 'media/jxeo3aIsfpPZ5tHXDprFYE45kALHxGiw36jNECVv.png', 'png', 'image/png', '304088', '2020-10-01 19:32:32', '2020-10-01 19:32:32'),
(32, 1, 'WhatsApp_Image_2020-08-24_at_1.31.47_PM-removebg-preview.png', 'public_storage', 'media/1nsZlSSL7K0dV1rDjvYAJ2ldGKkaYnDczJ5ciJcD.png', 'png', 'image/png', '303608', '2020-10-01 19:35:27', '2020-10-01 19:35:27'),
(33, 1, 'WhatsApp Image 2020-09-29 at 3.28.14 PM.jpeg', 'public_storage', 'media/GTusqVHWlXXGksUyVEa0WpriGMWsWYxzspV07QzN.jpeg', 'jpeg', 'image/jpeg', '225931', '2020-10-01 19:35:46', '2020-10-01 19:35:46'),
(35, 1, 'WhatsApp Image 2020-09-29 at 3.28.14 PM (1).jpeg', 'public_storage', 'media/PRdNzsNmovjRzccp1uQrFydvvDzlkdlbuKz6qfQH.jpeg', 'jpeg', 'image/jpeg', '194556', '2020-10-01 19:36:14', '2020-10-01 19:36:14'),
(36, 1, 'WhatsApp_Image_2020-08-24_at_1.32.13_PM-removebg.png', 'public_storage', 'media/VyiOB2ksWL0kcT8NkM2C48WcdkVoMYhOJAG9vDcL.png', 'png', 'image/png', '1343286', '2020-10-01 19:39:25', '2020-10-01 19:39:25'),
(37, 1, 'WhatsApp_Image_2020-08-06_at_8.43.08_PM-removebg-preview.png', 'public_storage', 'media/oAaILF86gdbn3AqxF60dLI3lMGay13bw8mJWWorv.png', 'png', 'image/png', '522911', '2020-10-01 19:48:11', '2020-10-01 19:48:11'),
(38, 1, 'WhatsApp_Image_2020-08-06_at_8.43.09_PM-removebg-preview.png', 'public_storage', 'media/sRr149TLMOmcMaJtzsQUI7tXiMU3EYIoWe9a49Y7.png', 'png', 'image/png', '372711', '2020-10-01 19:48:29', '2020-10-01 19:48:29'),
(39, 1, 'WhatsApp_Image_2020-07-30_at_10.46.41_PM-removebg.png', 'public_storage', 'media/0cuKUc16hgm05Jz6e0AhI4kT8DP6figB2IQSH7rJ.png', 'png', 'image/png', '1673607', '2020-10-01 19:50:52', '2020-10-01 19:50:52'),
(40, 1, 'WhatsApp_Image_2020-07-30_at_10.46.40_PM-removebg-preview.png', 'public_storage', 'media/ofn38556H9Leg71xCSXGOXEFvJktJW0hm3KtShJy.png', 'png', 'image/png', '479094', '2020-10-01 19:51:44', '2020-10-01 19:51:44'),
(41, 1, 'WhatsApp_Image_2020-09-07_at_8.37.11_AM-removebg-preview.png', 'public_storage', 'media/sw2vbFZQu6D7aFMnKqNU6DKfH6jgTpHDTNH5auFK.png', 'png', 'image/png', '444604', '2020-10-01 19:55:38', '2020-10-01 19:55:38'),
(42, 1, 'WhatsApp_Image_2020-09-07_at_8.37.11_AM__1_-removebg-preview.png', 'public_storage', 'media/2kMlWN26rviAIMP6v1E2v1YvwL897ROnRFZAgiLV.png', 'png', 'image/png', '334767', '2020-10-01 19:55:55', '2020-10-01 19:55:55'),
(43, 1, 'WhatsApp_Image_2020-08-24_at_12.50.57_PM-removebg-preview.png', 'public_storage', 'media/4dC8GDVazB48v9MNTDBNGsc0mmqpySvOU3wJMVtE.png', 'png', 'image/png', '504045', '2020-10-01 19:59:31', '2020-10-01 19:59:31'),
(44, 1, 'WhatsApp_Image_2020-08-24_at_12.50.57_PM__1_-removebg-preview.png', 'public_storage', 'media/GwPxAWxXqr5esuq8VAze9CpBuFAiGEcrQSETfdBb.png', 'png', 'image/png', '409636', '2020-10-01 19:59:51', '2020-10-01 19:59:51'),
(45, 1, 'WhatsApp_Image_2020-08-24_at_12.52.28_PM__1_-removebg-preview.png', 'public_storage', 'media/9Iy9BsCD92LxK1NyUNGjemRueYK1jRMhZCAEsMNL.png', 'png', 'image/png', '567742', '2020-10-01 20:02:26', '2020-10-01 20:02:26'),
(46, 1, 'WhatsApp_Image_2020-08-24_at_12.52.28_PM-removebg-preview.png', 'public_storage', 'media/gRaA0vd5u2rdGKva3qRkpia9FF0MdsfNkv3s9lyu.png', 'png', 'image/png', '475811', '2020-10-01 20:02:57', '2020-10-01 20:02:57'),
(47, 1, 'WhatsApp_Image_2020-08-24_at_1.32.44_PM-removebg-preview.png', 'public_storage', 'media/vhTqhmqwC6tA3UZKezvsbCrf6hKTEs6RWBhdxSxQ.png', 'png', 'image/png', '398616', '2020-10-01 20:06:02', '2020-10-01 20:06:02'),
(48, 1, '24522783.jpg', 'public_storage', 'media/A42MHP5YBpyKOsxYRKDHeuCEHFC4bIH0noudd8kF.jpeg', 'jpeg', 'image/jpeg', '140547', '2020-10-01 20:08:46', '2020-10-01 20:08:46'),
(49, 1, 'banner3.png', 'public_storage', 'media/NCkL1sLPjz0sATGedpYvPIqq9jzRMiND4hGlzgbz.png', 'png', 'image/png', '176892', '2020-10-01 20:12:57', '2020-10-01 20:12:57'),
(50, 1, 'sbanner1.png', 'public_storage', 'media/ML9lXlIg0BGvGDhq22PEcPSCE1ERBju5nUB2QSYR.png', 'png', 'image/png', '29873', '2020-10-01 20:22:55', '2020-10-01 20:22:55'),
(51, 1, 'sbanner1.png', 'public_storage', 'media/CFyGRtrzjfNr9eHLQSw5UrRQs1IQYyIyckOwuqQr.png', 'png', 'image/png', '25669', '2020-10-01 20:24:18', '2020-10-01 20:24:18'),
(52, 1, 'sbanner1.png', 'public_storage', 'media/BSqUAv2a1srqADjF8OfHKOOaBSDmcYfHt1b6MucU.png', 'png', 'image/png', '25450', '2020-10-01 20:26:14', '2020-10-01 20:26:14'),
(53, 1, 'sbanner2.png', 'public_storage', 'media/qxYyhlD5ABBmY801laQzObG7srwTZxRPqK1Qu7LZ.png', 'png', 'image/png', '28790', '2020-10-01 20:31:06', '2020-10-01 20:31:06');

-- --------------------------------------------------------

--
-- Table structure for table `flash_sales`
--

CREATE TABLE `flash_sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale_products`
--

CREATE TABLE `flash_sale_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `flash_sale_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `end_date` date NOT NULL,
  `price` decimal(18,4) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale_product_orders`
--

CREATE TABLE `flash_sale_product_orders` (
  `flash_sale_product_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale_translations`
--

CREATE TABLE `flash_sale_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `flash_sale_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `campaign_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-07-04 10:13:28', '2020-07-04 10:13:28');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `page_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(10) UNSIGNED DEFAULT NULL,
  `is_root` tinyint(1) NOT NULL DEFAULT 0,
  `is_fluid` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `parent_id`, `category_id`, `page_id`, `type`, `url`, `icon`, `target`, `position`, `is_root`, `is_fluid`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, NULL, 'URL', NULL, NULL, '_self', 0, 1, 0, 1, '2020-07-04 10:13:28', '2020-07-04 10:13:28'),
(2, 1, 1, 3, NULL, 'category', NULL, 'las la-book', '_self', NULL, 0, 0, 1, '2020-07-04 10:16:04', '2020-07-04 10:22:59'),
(3, 1, 1, 2, NULL, 'category', NULL, 'las la-oil-can', '_self', NULL, 0, 0, 1, '2020-07-04 10:16:52', '2020-07-04 10:22:38'),
(4, 1, 1, 1, NULL, 'category', NULL, 'lab la-forumbee', '_self', NULL, 0, 0, 1, '2020-07-04 10:18:07', '2020-07-04 10:23:28'),
(5, 1, 1, 4, NULL, 'category', NULL, 'las la-bed', '_self', NULL, 0, 0, 1, '2020-07-04 10:20:47', '2020-07-04 10:23:54');

-- --------------------------------------------------------

--
-- Table structure for table `menu_item_translations`
--

CREATE TABLE `menu_item_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_item_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_item_translations`
--

INSERT INTO `menu_item_translations` (`id`, `menu_item_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'root'),
(2, 1, 'bn_BD', 'root'),
(3, 2, 'en', 'Books'),
(4, 3, 'en', 'Mustered Oil'),
(5, 4, 'en', 'Honey'),
(6, 5, 'en', 'Nakshi Katha');

-- --------------------------------------------------------

--
-- Table structure for table `menu_translations`
--

CREATE TABLE `menu_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_translations`
--

INSERT INTO `menu_translations` (`id`, `menu_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'Category Menu');

-- --------------------------------------------------------

--
-- Table structure for table `meta_data`
--

CREATE TABLE `meta_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_data`
--

INSERT INTO `meta_data` (`id`, `entity_type`, `entity_id`, `created_at`, `updated_at`) VALUES
(1, 'Modules\\Product\\Entities\\Product', 1, '2020-07-04 10:00:16', '2020-07-04 10:00:16'),
(2, 'Modules\\Product\\Entities\\Product', 2, '2020-07-04 10:04:03', '2020-07-04 10:04:03'),
(3, 'Modules\\Product\\Entities\\Product', 3, '2020-07-04 10:08:00', '2020-07-04 10:08:00'),
(4, 'Modules\\Product\\Entities\\Product', 4, '2020-07-04 10:09:13', '2020-07-04 10:09:13'),
(5, 'Modules\\Product\\Entities\\Product', 5, '2020-08-09 22:39:57', '2020-08-09 22:39:57'),
(6, 'Modules\\Product\\Entities\\Product', 6, '2020-08-14 11:39:32', '2020-08-14 11:39:32'),
(7, 'Modules\\Product\\Entities\\Product', 7, '2020-08-25 21:43:52', '2020-08-25 21:43:52'),
(8, 'Modules\\Product\\Entities\\Product', 8, '2020-08-25 22:13:34', '2020-08-25 22:13:34'),
(9, 'Modules\\Product\\Entities\\Product', 9, '2020-08-25 22:16:37', '2020-08-25 22:16:37'),
(10, 'Modules\\Product\\Entities\\Product', 10, '2020-08-25 22:18:07', '2020-08-25 22:18:07'),
(11, 'Modules\\Product\\Entities\\Product', 11, '2020-08-25 22:33:21', '2020-08-25 22:33:21'),
(12, 'Modules\\Product\\Entities\\Product', 12, '2020-10-01 19:52:35', '2020-10-01 19:52:35'),
(13, 'Modules\\Product\\Entities\\Product', 13, '2020-10-01 19:56:15', '2020-10-01 19:56:15'),
(14, 'Modules\\Product\\Entities\\Product', 14, '2020-10-01 20:00:10', '2020-10-01 20:00:10'),
(15, 'Modules\\Product\\Entities\\Product', 15, '2020-10-01 20:03:24', '2020-10-01 20:03:24'),
(16, 'Modules\\Product\\Entities\\Product', 16, '2020-10-01 20:06:17', '2020-10-01 20:06:17');

-- --------------------------------------------------------

--
-- Table structure for table `meta_data_translations`
--

CREATE TABLE `meta_data_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `meta_data_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_data_translations`
--

INSERT INTO `meta_data_translations` (`id`, `meta_data_id`, `locale`, `meta_title`, `meta_description`) VALUES
(1, 1, 'en', NULL, NULL),
(2, 2, 'en', NULL, NULL),
(3, 3, 'en', NULL, NULL),
(4, 4, 'en', NULL, NULL),
(5, 5, 'en', 'নকশী কাথা', 'জামালপুরের হাতের কাজের নকশী কাথা'),
(6, 6, 'en', NULL, NULL),
(7, 7, 'en', NULL, NULL),
(8, 8, 'en', NULL, NULL),
(9, 9, 'en', NULL, NULL),
(10, 10, 'en', NULL, NULL),
(11, 11, 'en', NULL, NULL),
(12, 12, 'en', 'থ্রি-পিস', NULL),
(13, 13, 'en', NULL, NULL),
(14, 14, 'en', NULL, NULL),
(15, 15, 'en', NULL, NULL),
(16, 16, 'en', NULL, NULL);

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
(1, '2014_07_02_230147_migration_cartalyst_sentinel', 1),
(2, '2014_10_14_200250_create_settings_table', 1),
(3, '2014_10_26_162751_create_files_table', 1),
(4, '2014_10_30_191858_create_pages_table', 1),
(5, '2014_11_31_125848_create_page_translations_table', 1),
(6, '2015_02_27_105241_create_entity_files_table', 1),
(7, '2015_11_20_184604486385_create_translations_table', 1),
(8, '2015_11_20_184604743083_create_translation_translations_table', 1),
(9, '2017_05_29_155126144426_create_products_table', 1),
(10, '2017_05_30_155126416338_create_product_translations_table', 1),
(11, '2017_08_02_153217_create_options_table', 1),
(12, '2017_08_02_153348_create_option_translations_table', 1),
(13, '2017_08_02_153406_create_option_values_table', 1),
(14, '2017_08_02_153736_create_option_value_translations_table', 1),
(15, '2017_08_03_156576_create_product_options_table', 1),
(16, '2017_08_17_170128_create_related_products_table', 1),
(17, '2017_08_17_175236_create_up_sell_products_table', 1),
(18, '2017_08_17_175828_create_cross_sell_products_table', 1),
(19, '2017_11_09_141332910964_create_categories_table', 1),
(20, '2017_11_09_141332931539_create_category_translations_table', 1),
(21, '2017_11_26_083614526622_create_meta_data_table', 1),
(22, '2017_11_26_083614526828_create_meta_data_translations_table', 1),
(23, '2018_01_24_125642_create_product_categories_table', 1),
(24, '2018_02_04_150917488267_create_coupons_table', 1),
(25, '2018_02_04_150917488698_create_coupon_translations_table', 1),
(26, '2018_03_11_181317_create_coupon_products_table', 1),
(27, '2018_03_15_091937_create_coupon_categories_table', 1),
(28, '2018_04_18_154028776225_create_reviews_table', 1),
(29, '2018_05_17_115822452977_create_currency_rates_table', 1),
(30, '2018_07_03_124153537506_create_sliders_table', 1),
(31, '2018_07_03_124153537695_create_slider_translations_table', 1),
(32, '2018_07_03_133107770172_create_slider_slides_table', 1),
(33, '2018_07_03_133107770486_create_slider_slide_translations_table', 1),
(34, '2018_07_28_190524758357_create_attribute_sets_table', 1),
(35, '2018_07_28_190524758497_create_attribute_set_translations_table', 1),
(36, '2018_07_28_190524758646_create_attributes_table', 1),
(37, '2018_07_28_190524758877_create_attribute_translations_table', 1),
(38, '2018_07_28_190524759461_create_product_attributes_table', 1),
(39, '2018_08_01_001919718631_create_tax_classes_table', 1),
(40, '2018_08_01_001919718935_create_tax_class_translations_table', 1),
(41, '2018_08_01_001919723551_create_tax_rates_table', 1),
(42, '2018_08_01_001919723781_create_tax_rate_translations_table', 1),
(43, '2018_08_03_195922206748_create_attribute_values_table', 1),
(44, '2018_08_03_195922207019_create_attribute_value_translations_table', 1),
(45, '2018_08_04_190524764275_create_product_attribute_values_table', 1),
(46, '2018_08_07_135631306565_create_orders_table', 1),
(47, '2018_08_07_135631309451_create_order_products_table', 1),
(48, '2018_08_07_135631309512_create_order_product_options_table', 1),
(49, '2018_08_07_135631309624_create_order_product_option_values_table', 1),
(50, '2018_09_11_213926106353_create_transactions_table', 1),
(51, '2018_09_19_081602135631_create_order_taxes_table', 1),
(52, '2018_09_19_103745_create_setting_translations_table', 1),
(53, '2018_10_01_224852175056_create_wish_lists_table', 1),
(54, '2018_10_04_185608_create_search_terms_table', 1),
(55, '2018_11_03_160015_create_menus_table', 1),
(56, '2018_11_03_160138_create_menu_translations_table', 1),
(57, '2018_11_03_160753_create_menu_items_table', 1),
(58, '2018_11_03_160804_create_menu_item_translation_table', 1),
(59, '2019_02_05_162605_add_position_to_slider_slides_table', 1),
(60, '2019_02_09_164343_remove_file_id_from_slider_slides_table', 1),
(61, '2019_02_09_164434_add_file_id_to_slider_slide_translations_table', 1),
(62, '2019_02_14_103408_create_attribute_categories_table', 1),
(63, '2019_08_09_164759_add_slug_column_to_attributes_table', 1),
(64, '2019_11_01_201511_add_special_price_type_column_to_products_table', 1),
(65, '2019_11_23_193101_add_value_column_to_order_product_options_table', 1),
(66, '2020_01_04_211424_add_icon_column_to_menu_items_table', 1),
(67, '2020_01_05_160502_add_direction_column_to_slider_slide_translations_table', 1),
(68, '2020_01_05_234014_add_speed_column_to_sliders_table', 1),
(69, '2020_01_05_235014_add_fade_column_to_sliders_table', 1),
(70, '2020_01_15_000346259038_create_flash_sales_table', 1),
(71, '2020_01_15_000346259349_create_flash_sale_translations_table', 1),
(72, '2020_01_23_011234_create_flash_sale_products_table', 1),
(73, '2020_01_30_015722_create_flash_sale_product_orders_table', 1),
(74, '2020_02_22_215943_delete_meta_keywords_column_from_meta_data_translations_table', 1),
(75, '2020_03_05_214602901973_create_brands_table', 1),
(76, '2020_03_05_214602902369_create_brand_translations_table', 1),
(77, '2020_03_06_234605_add_brand_id_column_to_products_table', 1),
(78, '2020_04_06_211526_add_note_column_to_orders_table', 1),
(79, '2020_04_28_034118164376_create_tags_table', 1),
(80, '2020_04_28_034118164618_create_tag_translations_table', 1),
(81, '2020_04_28_225657_create_product_tags_table', 1),
(82, '2020_05_10_041616_create_updater_scripts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_required` tinyint(1) NOT NULL,
  `is_global` tinyint(1) NOT NULL DEFAULT 1,
  `position` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `option_translations`
--

CREATE TABLE `option_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `option_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `option_values`
--

CREATE TABLE `option_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `option_id` int(10) UNSIGNED NOT NULL,
  `price` decimal(18,4) UNSIGNED DEFAULT NULL,
  `price_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `option_value_translations`
--

CREATE TABLE `option_value_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `option_value_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address_1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_zip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address_1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_zip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_total` decimal(18,4) UNSIGNED NOT NULL,
  `shipping_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_cost` decimal(18,4) UNSIGNED NOT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `discount` decimal(18,4) UNSIGNED NOT NULL,
  `total` decimal(18,4) UNSIGNED NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` decimal(18,4) NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `customer_email`, `customer_phone`, `customer_first_name`, `customer_last_name`, `billing_first_name`, `billing_last_name`, `billing_address_1`, `billing_address_2`, `billing_city`, `billing_state`, `billing_zip`, `billing_country`, `shipping_first_name`, `shipping_last_name`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_state`, `shipping_zip`, `shipping_country`, `sub_total`, `shipping_method`, `shipping_cost`, `coupon_id`, `discount`, `total`, `payment_method`, `currency`, `currency_rate`, `locale`, `status`, `note`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, 'moinulce09@gmail.com', NULL, 'Moinul', 'Islam', 'Moinul', 'Islam', 'Ri8', NULL, 'bogra', 'BOG', '5840', 'BD', 'Moinul', 'Islam', 'Ri8', NULL, 'bogra', 'BOG', '5840', 'BD', 290.0000, 'free_shipping', 0.0000, NULL, 0.0000, 290.0000, 'cod', 'BDT', 1.0000, 'en', 'completed', NULL, NULL, '2020-07-05 01:40:35', '2020-07-05 03:21:27'),
(2, 4, 'zakaria.ibna@yahoo.com', '01722830342', 'Zakaria', 'Zen', 'Zakaria', 'Zen', 'Dhaka,Uttara', NULL, 'Dhaka', 'DHA', '1230', 'BD', 'Zakaria', 'Zen', 'Dhaka,Uttara', NULL, 'Dhaka', 'DHA', '1230', 'BD', 900.0000, 'free_shipping', 0.0000, NULL, 0.0000, 900.0000, 'cod', 'BDT', 1.0000, 'en', 'completed', NULL, NULL, '2020-07-05 02:48:30', '2020-07-05 03:21:06'),
(3, 1, 'inafeeur@gmail.com', '+8801793445766', 'Aspile', 'Inc', 'Aspile', 'Inc', 'Alhera Nagar, Bera', NULL, 'Pabna', 'PAB', '6680', 'BD', 'Aspile', 'Inc', 'Alhera Nagar, Bera', NULL, 'Pabna', 'PAB', '6680', 'BD', 900.0000, 'free_shipping', 0.0000, NULL, 0.0000, 900.0000, 'cod', 'BDT', 1.0000, 'en', 'completed', NULL, NULL, '2020-07-07 16:11:11', '2020-07-07 16:13:57'),
(4, NULL, 'nafeeur.kuet.cse6@gmail.com', '01793445766', 'Nafeeur', 'Rahman', 'Nafeeur', 'Rahman', 'Bera, Pabna', NULL, 'Pabna', 'PAB', '6680', 'BD', 'Nafeeur', 'Rahman', 'Bera, Pabna', NULL, 'Pabna', 'PAB', '6680', 'BD', 900.0000, 'free_shipping', 0.0000, NULL, 0.0000, 900.0000, 'cod', 'BDT', 1.0000, 'en', 'canceled', NULL, NULL, '2020-07-07 16:17:26', '2020-07-07 16:18:19');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `unit_price` decimal(18,4) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `line_total` decimal(18,4) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `unit_price`, `qty`, `line_total`) VALUES
(1, 1, 3, 290.0000, 1, 290.0000),
(2, 2, 1, 900.0000, 1, 900.0000),
(3, 3, 1, 900.0000, 1, 900.0000),
(4, 4, 1, 900.0000, 1, 900.0000);

-- --------------------------------------------------------

--
-- Table structure for table `order_product_options`
--

CREATE TABLE `order_product_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_product_id` int(10) UNSIGNED NOT NULL,
  `option_id` int(10) UNSIGNED NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_product_option_values`
--

CREATE TABLE `order_product_option_values` (
  `order_product_option_id` int(10) UNSIGNED NOT NULL,
  `option_value_id` int(10) UNSIGNED NOT NULL,
  `price` decimal(18,4) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_taxes`
--

CREATE TABLE `order_taxes` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `tax_rate_id` int(10) UNSIGNED NOT NULL,
  `amount` decimal(15,4) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page_translations`
--

CREATE TABLE `page_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `persistences`
--

CREATE TABLE `persistences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `persistences`
--

INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(1, 1, 'YicdHMAI89qjdbH23YL6ZBXSEz8r1ufF', '2020-07-04 08:17:33', '2020-07-04 08:17:33'),
(2, 1, 'LFDNhAOdjg4dxL9yRRq2ZGwE9fgCKzOF', '2020-07-04 18:51:17', '2020-07-04 18:51:17'),
(3, 2, 'w2i8LM6NICKf2n6QaX62LyEiUi4G8U4B', '2020-07-05 00:18:07', '2020-07-05 00:18:07'),
(4, 3, '44v8UuHaeLb4KC07rzOXrOrMk3kVaelS', '2020-07-05 01:43:10', '2020-07-05 01:43:10'),
(5, 4, '6VZ2PkaqxHxRPZOYtBgLfidp9USVZzHD', '2020-07-05 02:48:30', '2020-07-05 02:48:30'),
(6, 2, '1FoIGlxFJekzLtpHDZ2nZimpgDhWWklD', '2020-07-06 16:51:44', '2020-07-06 16:51:44'),
(7, 1, 'Si0n8Hp5GsoHOwwpyvTzVniVnIcILDml', '2020-08-03 23:42:20', '2020-08-03 23:42:20'),
(9, 1, '8hrOzgKRi1e0kj10fqN0H42jYBgVu30g', '2020-08-25 21:46:41', '2020-08-25 21:46:41'),
(10, 1, 'nl8n70ehXavirShQ7EDnfEAKYQ2H9sbx', '2020-08-25 22:00:40', '2020-08-25 22:00:40'),
(11, 1, 'WhRiLRxThJZTvSNG07ZvHs1iqRkftLRi', '2020-08-25 22:03:10', '2020-08-25 22:03:10'),
(12, 1, 'VIrVfdxhzZ6vDNKCZJKjMnrcxsQJm6g1', '2020-09-23 17:20:00', '2020-09-23 17:20:00'),
(14, 1, 'tFrdOe5sHJ370q26h36BwGmcHJVus9SZ', '2020-11-13 03:39:41', '2020-11-13 03:39:41');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED DEFAULT NULL,
  `tax_class_id` int(10) UNSIGNED DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(18,4) UNSIGNED NOT NULL,
  `special_price` decimal(18,4) UNSIGNED DEFAULT NULL,
  `special_price_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special_price_start` date DEFAULT NULL,
  `special_price_end` date DEFAULT NULL,
  `selling_price` decimal(18,4) UNSIGNED DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manage_stock` tinyint(1) NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `in_stock` tinyint(1) NOT NULL,
  `viewed` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL,
  `new_from` datetime DEFAULT NULL,
  `new_to` datetime DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `tax_class_id`, `slug`, `price`, `special_price`, `special_price_type`, `special_price_start`, `special_price_end`, `selling_price`, `sku`, `manage_stock`, `qty`, `in_stock`, `viewed`, `is_active`, `new_from`, `new_to`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'honey-pumpkin-flower', 900.0000, NULL, 'fixed', NULL, NULL, 900.0000, NULL, 0, NULL, 1, 7, 1, NULL, NULL, '2020-08-25 22:02:20', '2020-07-04 10:00:16', '2020-08-25 22:02:20'),
(2, NULL, NULL, 'mustard-oil', 300.0000, NULL, 'fixed', NULL, NULL, 300.0000, NULL, 0, NULL, 1, 6, 1, NULL, NULL, '2020-08-25 22:02:20', '2020-07-04 10:04:03', '2020-08-25 22:02:20'),
(3, NULL, NULL, 'how-to-win-your-wifes-heart', 290.0000, NULL, 'fixed', NULL, NULL, 290.0000, NULL, 0, NULL, 1, 10, 1, NULL, NULL, '2020-08-25 22:02:20', '2020-07-04 10:08:00', '2020-08-25 22:02:20'),
(4, NULL, NULL, 'how-to-win-your-husbands-heart', 280.0000, NULL, 'fixed', NULL, NULL, 280.0000, NULL, 0, NULL, 1, 6, 1, NULL, NULL, '2020-08-25 22:02:20', '2020-07-04 10:09:13', '2020-08-25 22:02:20'),
(5, NULL, NULL, 'নকশী-কাথা', 2400.0000, 2250.0000, 'fixed', NULL, NULL, 2250.0000, 'NK-001', 1, 4, 1, 19, 1, NULL, NULL, '2020-10-01 19:15:14', '2020-08-09 22:39:57', '2020-10-01 19:15:14'),
(6, NULL, NULL, 'টু-পিস', 1850.0000, NULL, 'fixed', NULL, NULL, 1850.0000, NULL, 0, NULL, 1, 96, 1, NULL, NULL, NULL, '2020-08-14 11:39:32', '2021-06-05 10:08:43'),
(7, NULL, NULL, 'nokshi-katha', 2250.0000, NULL, 'fixed', NULL, NULL, 2250.0000, NULL, 0, NULL, 1, 124, 1, NULL, NULL, NULL, '2020-08-25 21:43:52', '2021-06-11 22:25:21'),
(8, NULL, NULL, 'nba002', 2250.0000, NULL, 'fixed', NULL, NULL, 2250.0000, NULL, 0, NULL, 1, 17, 1, NULL, NULL, NULL, '2020-08-25 22:13:34', '2021-05-20 11:21:08'),
(9, NULL, NULL, 'nba003', 2250.0000, NULL, 'fixed', NULL, NULL, 2250.0000, NULL, 0, NULL, 1, 50, 1, NULL, NULL, NULL, '2020-08-25 22:16:37', '2021-05-28 06:52:51'),
(10, NULL, NULL, 'nba004', 2250.0000, NULL, 'fixed', NULL, NULL, 2250.0000, NULL, 0, NULL, 0, 17, 1, NULL, NULL, NULL, '2020-08-25 22:18:07', '2021-06-08 03:21:05'),
(11, NULL, NULL, 'nba005', 4000.0000, NULL, 'fixed', NULL, NULL, 4000.0000, NULL, 0, NULL, 1, 4, 1, NULL, NULL, NULL, '2020-08-25 22:33:21', '2020-08-27 08:06:34'),
(12, NULL, NULL, 'l2a002', 1850.0000, NULL, 'fixed', NULL, NULL, 1850.0000, NULL, 0, NULL, 1, 52, 1, NULL, NULL, NULL, '2020-10-01 19:52:35', '2021-05-20 11:21:13'),
(13, NULL, NULL, 'l3a001', 1850.0000, NULL, 'fixed', NULL, NULL, 1850.0000, NULL, 0, NULL, 1, 48, 1, NULL, NULL, NULL, '2020-10-01 19:56:15', '2021-06-06 23:58:22'),
(14, NULL, NULL, 'l2a003', 1850.0000, NULL, 'fixed', NULL, NULL, 1850.0000, NULL, 0, NULL, 1, 28, 1, NULL, NULL, NULL, '2020-10-01 20:00:10', '2021-06-12 00:59:40'),
(15, NULL, NULL, 'l2a004', 1850.0000, NULL, 'fixed', NULL, NULL, 1850.0000, NULL, 0, NULL, 1, 45, 1, NULL, NULL, NULL, '2020-10-01 20:03:24', '2021-06-03 09:54:17'),
(16, NULL, NULL, 'exclusive', 4100.0000, NULL, 'fixed', NULL, NULL, 4100.0000, NULL, 0, NULL, 1, 20, 1, NULL, NULL, NULL, '2020-10-01 20:06:17', '2021-05-20 11:21:12');

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_attribute_values`
--

CREATE TABLE `product_attribute_values` (
  `product_attribute_id` int(10) UNSIGNED NOT NULL,
  `attribute_value_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`product_id`, `category_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 3),
(5, 4),
(6, 6),
(7, 4),
(8, 4),
(9, 4),
(10, 4),
(12, 6),
(13, 6),
(14, 6),
(15, 6),
(16, 4);

-- --------------------------------------------------------

--
-- Table structure for table `product_options`
--

CREATE TABLE `product_options` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `option_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_tags`
--

CREATE TABLE `product_tags` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_translations`
--

CREATE TABLE `product_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_translations`
--

INSERT INTO `product_translations` (`id`, `product_id`, `locale`, `name`, `description`, `short_description`) VALUES
(1, 1, 'en', 'Honey (Pumpkin Flower)', '<p>This honey is collected from Pumpkin Flowers. It has some smell of Pumpkin.&nbsp;</p>', NULL),
(2, 2, 'en', 'Mustard Oil', '<p>The term mustard oil is used for two different oils that are made from mustard seeds: A fatty vegetable oil resulting from pressing the seeds, An essential oil resulting from grinding the seeds, mixing them with water, and extracting the resulting volatile oil by distillation.</p>', NULL),
(3, 3, 'en', 'How to Win Your Wife\'s Heart', '<p>This book is written by&nbsp;<strong>Sheikh Ibrahim Ibnu Saleh Al Mahmud</strong></p>', NULL),
(4, 4, 'en', 'How to Win Your Husband\'s Heart', '<p>This book is written by&nbsp;<strong>Sheikh Ibrahim Ibnu Saleh Al Mahmud</strong></p>', NULL),
(5, 5, 'en', 'নকশী কাথা', '<p>সম্পূর্ণ হাতে কাজ করা জামালপুরের ঐতিহ্যবাহী নকশী কাঁথা</p>\r\n<ol>\r\n<li>ফেব্রিক: উন্নত কোয়ালিটির কটন</li>\r\n<li>বুনন সুতাঃ কটন</li>\r\n<li>কাথার টাইপঃ বকুল কাথা এবং দুই পার্ট কাজ করা</li>\r\n<li>চমৎকার নকশা</li>\r\n<li>কালার গ্যারেন্টেড</li>\r\n<li>৫/৬ হাত ( ৬ ফিট ৮ ইন্চি / ৭ ফিট ৯ ইন্চি)</li>\r\n</ol>', NULL),
(6, 6, 'en', 'টু-পিস (L2A001)', '<p>১. পিউর কটন</p>\r\n<p>২. পিচ</p>\r\n<p>.৩. লকারি টাইপ,&nbsp;&nbsp;</p>\r\n<p>৪. অরগেন্ডি ওড়না।&nbsp;</p>\r\n<p>&nbsp;</p>', NULL),
(7, 7, 'en', 'নকশি কাথা (NBA001)', '<ul>\r\n<li>ফেব্রিক: উন্নত কোয়ালিটির কটন</li>\r\n<li><span style=\"line-height: 1.4;\">বুনন সুতাঃ কটন</span></li>\r\n<li><span style=\"line-height: 1.4;\">কাথার টাইপঃ বকুল কাথা এবং দুই পার্ট কাজ করা</span></li>\r\n<li><span style=\"line-height: 1.4;\">চমৎকার নকশা</span></li>\r\n<li><span style=\"line-height: 1.4;\">কালার গ্যারেন্টেড</span></li>\r\n<li><span style=\"line-height: 1.4;\">৫/৬ হাত ( ৬ ফিট ৮ ইন্চি / ৭ ফিট ৯ ইন্চি)&nbsp;</span></li>\r\n</ul>\r\n<div class=\"text_exposed_show\">\r\n<p>&nbsp;</p>\r\n</div>', NULL),
(8, 8, 'en', 'নকশি কাঁথা (NBA002)', '<ul>\r\n<li>ফেব্রিক: উন্নত কোয়ালিটির কটন</li>\r\n<li>বুনন সুতাঃ কটন</li>\r\n<li>কাথার টাইপঃ বকুল কাথা এবং দুই পার্ট কাজ করা</li>\r\n<li>চমৎকার নকশা</li>\r\n<li>কালার গ্যারেন্টেড</li>\r\n<li>৫/৬ হাত ( ৬ ফিট ৮ ইন্চি / ৭ ফিট ৯ ইন্চি)&nbsp;</li>\r\n</ul>\r\n<div class=\"text_exposed_show\">\r\n<p>&nbsp;</p>\r\n</div>', NULL),
(9, 9, 'en', 'নকশি কাঁথা (NBA003)', '<ul>\r\n<li>ফেব্রিক: উন্নত কোয়ালিটির কটন</li>\r\n<li>বুনন সুতাঃ কটন</li>\r\n<li>কাথার টাইপঃ বকুল কাথা এবং দুই পার্ট কাজ করা</li>\r\n<li>চমৎকার নকশা</li>\r\n<li>কালার গ্যারেন্টেড</li>\r\n<li>৫/৬ হাত ( ৬ ফিট ৮ ইন্চি / ৭ ফিট ৯ ইন্চি)&nbsp;</li>\r\n</ul>\r\n<div class=\"text_exposed_show\">\r\n<p>&nbsp;</p>\r\n</div>', NULL),
(10, 10, 'en', 'নকশি কাঁথা (NBA004)', '<ul>\r\n<li>ফেব্রিক: উন্নত কোয়ালিটির কটন</li>\r\n<li>বুনন সুতাঃ কটন</li>\r\n<li>কাথার টাইপঃ বকুল কাথা এবং দুই পার্ট কাজ করা</li>\r\n<li>চমৎকার নকশা</li>\r\n<li>কালার গ্যারেন্টেড</li>\r\n<li>৫/৬ হাত ( ৬ ফিট ৮ ইন্চি / ৭ ফিট ৯ ইন্চি)&nbsp;</li>\r\n</ul>\r\n<div class=\"text_exposed_show\">\r\n<p>&nbsp;</p>\r\n</div>', NULL),
(11, 11, 'en', 'নকশি কাঁথা (NBA005)', '<ul>\r\n<li>ফেব্রিক: উন্নত কোয়ালিটির কটন</li>\r\n<li>বুনন সুতাঃ কটন</li>\r\n<li>কাথার টাইপঃ বকুল কাথা এবং দুই পার্ট কাজ করা</li>\r\n<li>চমৎকার নকশা</li>\r\n<li>কালার গ্যারেন্টেড</li>\r\n<li>৫/৬ হাত ( ৬ ফিট ৮ ইন্চি / ৭ ফিট ৯ ইন্চি)&nbsp;</li>\r\n</ul>\r\n<div class=\"text_exposed_show\">\r\n<p>&nbsp;</p>\r\n</div>', NULL),
(12, 12, 'en', 'টু-পিস (L2A002)', '<p>১. পিউর কটন</p>\r\n<p>২. পিচ</p>\r\n<p>.৩. লকারি টাইপ,&nbsp;&nbsp;</p>\r\n<p>৪. অরগেন্ডি ওড়না।&nbsp;</p>', NULL),
(13, 13, 'en', 'থ্রি-পিস (L3A001)', '<p>১. পিউর কটন</p>\r\n<p>২. পিচ</p>\r\n<p>.৩. লকারি টাইপ,&nbsp;&nbsp;</p>\r\n<p>৪. অরগেন্ডি ওড়না।&nbsp;</p>', NULL),
(14, 14, 'en', 'টু-পিস (L2A003)', '<p>১. পিউর কটন</p>\r\n<p>২. পিচ</p>\r\n<p>.৩. লকারি টাইপ,&nbsp;&nbsp;</p>\r\n<p>৪. অরগেন্ডি ওড়না।&nbsp;</p>', NULL),
(15, 15, 'en', 'টু-পিস (L2A004)', '<p>১. পিউর কটন</p>\r\n<p>২. পিচ</p>\r\n<p>.৩. লকারি টাইপ,&nbsp;&nbsp;</p>\r\n<p>৪. অরগেন্ডি ওড়না।&nbsp;</p>', NULL),
(16, 16, 'en', 'নকশি কাথা (Exclusive)', '<ul>\r\n<li>ফেব্রিক: উন্নত কোয়ালিটির কটন</li>\r\n<li><span style=\"line-height: 1.4;\">বুনন সুতাঃ কটন</span></li>\r\n<li><span style=\"line-height: 1.4;\">কাথার টাইপঃ বকুল কাথা এবং দুই পার্ট কাজ করা</span></li>\r\n<li><span style=\"line-height: 1.4;\">চমৎকার নকশা</span></li>\r\n<li><span style=\"line-height: 1.4;\">কালার গ্যারেন্টেড</span></li>\r\n<li><span style=\"line-height: 1.4;\">৫/৬ হাত ( ৬ ফিট ৮ ইন্চি / ৭ ফিট ৯ ইন্চি)&nbsp;</span></li>\r\n</ul>\r\n<div class=\"text_exposed_show\">\r\n<p>&nbsp;</p>\r\n</div>', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `related_products`
--

CREATE TABLE `related_products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `related_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `reviewer_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `reviewer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `reviewer_id`, `product_id`, `rating`, `reviewer_name`, `comment`, `is_approved`, `created_at`, `updated_at`) VALUES
(1, NULL, 5, 5, 'Abdullah', 'Excellent', 0, '2020-08-10 03:02:23', '2020-08-10 03:02:23');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `permissions`, `created_at`, `updated_at`) VALUES
(1, '{\"admin.users.index\":true,\"admin.users.create\":true,\"admin.users.edit\":true,\"admin.users.destroy\":true,\"admin.roles.index\":true,\"admin.roles.create\":true,\"admin.roles.edit\":true,\"admin.roles.destroy\":true,\"admin.products.index\":true,\"admin.products.create\":true,\"admin.products.edit\":true,\"admin.products.destroy\":true,\"admin.brands.index\":true,\"admin.brands.create\":true,\"admin.brands.edit\":true,\"admin.brands.destroy\":true,\"admin.attributes.index\":true,\"admin.attributes.create\":true,\"admin.attributes.edit\":true,\"admin.attributes.destroy\":true,\"admin.attribute_sets.index\":true,\"admin.attribute_sets.create\":true,\"admin.attribute_sets.edit\":true,\"admin.attribute_sets.destroy\":true,\"admin.options.index\":true,\"admin.options.create\":true,\"admin.options.edit\":true,\"admin.options.destroy\":true,\"admin.filters.index\":true,\"admin.filters.create\":true,\"admin.filters.edit\":true,\"admin.filters.destroy\":true,\"admin.reviews.index\":true,\"admin.reviews.create\":true,\"admin.reviews.edit\":true,\"admin.reviews.destroy\":true,\"admin.categories.index\":true,\"admin.categories.create\":true,\"admin.categories.edit\":true,\"admin.categories.destroy\":true,\"admin.tags.index\":true,\"admin.tags.create\":true,\"admin.tags.edit\":true,\"admin.tags.destroy\":true,\"admin.orders.index\":true,\"admin.orders.show\":true,\"admin.orders.edit\":true,\"admin.flash_sales.index\":true,\"admin.flash_sales.create\":true,\"admin.flash_sales.edit\":true,\"admin.flash_sales.destroy\":true,\"admin.transactions.index\":true,\"admin.coupons.index\":true,\"admin.coupons.create\":true,\"admin.coupons.edit\":true,\"admin.coupons.destroy\":true,\"admin.menus.index\":true,\"admin.menus.create\":true,\"admin.menus.edit\":true,\"admin.menus.destroy\":true,\"admin.menu_items.index\":true,\"admin.menu_items.create\":true,\"admin.menu_items.edit\":true,\"admin.menu_items.destroy\":true,\"admin.media.index\":true,\"admin.media.create\":true,\"admin.media.destroy\":true,\"admin.pages.index\":true,\"admin.pages.create\":true,\"admin.pages.edit\":true,\"admin.pages.destroy\":true,\"admin.currency_rates.index\":true,\"admin.currency_rates.edit\":true,\"admin.taxes.index\":true,\"admin.taxes.create\":true,\"admin.taxes.edit\":true,\"admin.taxes.destroy\":true,\"admin.translations.index\":true,\"admin.translations.edit\":true,\"admin.sliders.index\":true,\"admin.sliders.create\":true,\"admin.sliders.edit\":true,\"admin.sliders.destroy\":true,\"admin.reports.index\":true,\"admin.settings.edit\":true,\"admin.storefront.edit\":true}', '2020-07-04 02:17:06', '2020-07-04 02:17:06'),
(2, NULL, '2020-07-04 02:17:06', '2020-07-04 02:17:06');

-- --------------------------------------------------------

--
-- Table structure for table `role_translations`
--

CREATE TABLE `role_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_translations`
--

INSERT INTO `role_translations` (`id`, `role_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'Admin'),
(2, 2, 'en', 'Customer');

-- --------------------------------------------------------

--
-- Table structure for table `search_terms`
--

CREATE TABLE `search_terms` (
  `id` int(10) UNSIGNED NOT NULL,
  `term` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `results` int(10) UNSIGNED NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_translatable` tinyint(1) NOT NULL DEFAULT 0,
  `plain_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `is_translatable`, `plain_value`, `created_at`, `updated_at`) VALUES
(1, 'store_name', 1, NULL, '2020-07-04 02:17:06', '2020-07-04 02:17:06'),
(2, 'store_email', 0, 's:23:\"needsandpeace@gmail.com\";', '2020-07-04 02:17:06', '2020-07-04 08:19:28'),
(3, 'search_engine', 0, 's:5:\"mysql\";', '2020-07-04 02:17:06', '2020-07-04 02:17:06'),
(4, 'algolia_app_id', 0, 'N;', '2020-07-04 02:17:06', '2020-07-04 02:17:06'),
(5, 'algolia_secret', 0, 'N;', '2020-07-04 02:17:06', '2020-07-04 02:17:06'),
(6, 'active_theme', 0, 's:10:\"Storefront\";', '2020-07-04 02:17:06', '2020-07-04 02:17:06'),
(7, 'supported_countries', 0, 'a:1:{i:0;s:2:\"BD\";}', '2020-07-04 02:17:06', '2020-07-04 02:17:06'),
(8, 'default_country', 0, 's:2:\"BD\";', '2020-07-04 02:17:06', '2020-07-04 02:17:06'),
(9, 'supported_locales', 0, 'a:2:{i:0;s:5:\"bn_BD\";i:1;s:2:\"en\";}', '2020-07-04 02:17:06', '2020-07-04 19:52:59'),
(10, 'default_locale', 0, 's:2:\"en\";', '2020-07-04 02:17:06', '2020-07-04 02:17:06'),
(11, 'default_timezone', 0, 's:10:\"Asia/Dhaka\";', '2020-07-04 02:17:06', '2020-07-04 02:17:06'),
(12, 'customer_role', 0, 's:1:\"2\";', '2020-07-04 02:17:06', '2020-07-04 08:18:37'),
(13, 'reviews_enabled', 0, 's:1:\"1\";', '2020-07-04 02:17:06', '2020-07-04 08:18:37'),
(14, 'auto_approve_reviews', 0, 's:1:\"0\";', '2020-07-04 02:17:06', '2020-07-04 08:18:37'),
(15, 'cookie_bar_enabled', 0, 's:1:\"1\";', '2020-07-04 02:17:06', '2020-07-04 08:18:37'),
(16, 'supported_currencies', 0, 'a:2:{i:0;s:3:\"BDT\";i:1;s:3:\"USD\";}', '2020-07-04 02:17:06', '2020-07-04 08:20:35'),
(17, 'default_currency', 0, 's:3:\"BDT\";', '2020-07-04 02:17:06', '2020-07-04 08:20:08'),
(18, 'send_order_invoice_email', 0, 'b:0;', '2020-07-04 02:17:06', '2020-07-04 02:17:06'),
(19, 'newsletter_enabled', 0, 's:1:\"0\";', '2020-07-04 02:17:06', '2020-07-04 19:52:59'),
(20, 'local_pickup_cost', 0, 's:1:\"0\";', '2020-07-04 02:17:06', '2020-07-04 08:18:37'),
(21, 'flat_rate_cost', 0, 's:1:\"0\";', '2020-07-04 02:17:06', '2020-07-04 08:18:37'),
(22, 'free_shipping_label', 1, NULL, '2020-07-04 02:17:06', '2020-07-04 02:17:06'),
(23, 'local_pickup_label', 1, NULL, '2020-07-04 02:17:06', '2020-07-04 02:17:06'),
(24, 'flat_rate_label', 1, NULL, '2020-07-04 02:17:06', '2020-07-04 02:17:06'),
(25, 'paypal_label', 1, NULL, '2020-07-04 02:17:06', '2020-07-04 02:17:06'),
(26, 'paypal_description', 1, NULL, '2020-07-04 02:17:06', '2020-07-04 02:17:06'),
(27, 'stripe_label', 1, NULL, '2020-07-04 02:17:06', '2020-07-04 02:17:06'),
(28, 'stripe_description', 1, NULL, '2020-07-04 02:17:06', '2020-07-04 02:17:06'),
(29, 'razorpay_label', 1, NULL, '2020-07-04 02:17:06', '2020-07-04 02:17:06'),
(30, 'razorpay_description', 1, NULL, '2020-07-04 02:17:06', '2020-07-04 02:17:06'),
(31, 'instamojo_label', 1, NULL, '2020-07-04 02:17:06', '2020-07-04 02:17:06'),
(32, 'instamojo_description', 1, NULL, '2020-07-04 02:17:06', '2020-07-04 02:17:06'),
(33, 'cod_label', 1, NULL, '2020-07-04 02:17:06', '2020-07-04 02:17:06'),
(34, 'cod_description', 1, NULL, '2020-07-04 02:17:06', '2020-07-04 02:17:06'),
(35, 'bank_transfer_label', 1, NULL, '2020-07-04 02:17:06', '2020-07-04 02:17:06'),
(36, 'bank_transfer_description', 1, NULL, '2020-07-04 02:17:06', '2020-07-04 02:17:06'),
(37, 'check_payment_label', 1, NULL, '2020-07-04 02:17:06', '2020-07-04 02:17:06'),
(38, 'check_payment_description', 1, NULL, '2020-07-04 02:17:06', '2020-07-04 02:17:06'),
(39, 'storefront_copyright_text', 1, 's:92:\"Copyright © <a href=\"{{ store_url }}\">{{ store_name }}</a> {{ year }}. All rights reserved.\";', '2020-07-04 02:17:06', '2020-07-04 08:23:52'),
(40, 'welcome_email', 0, 's:1:\"0\";', '2020-07-04 08:18:37', '2020-07-04 08:18:37'),
(41, 'admin_order_email', 0, 's:1:\"0\";', '2020-07-04 08:18:37', '2020-07-04 08:18:37'),
(42, 'order_status_email', 0, 's:1:\"0\";', '2020-07-04 08:18:37', '2020-07-04 08:18:37'),
(43, 'invoice_email', 0, 's:1:\"0\";', '2020-07-04 08:18:37', '2020-07-04 08:18:37'),
(44, 'maintenance_mode', 0, 's:1:\"0\";', '2020-07-04 08:18:37', '2020-07-04 08:18:37'),
(45, 'allowed_ips', 0, 'N;', '2020-07-04 08:18:37', '2020-07-04 08:18:37'),
(46, 'store_tagline', 1, NULL, '2020-07-04 08:18:37', '2020-07-04 08:18:37'),
(47, 'bank_transfer_instructions', 1, NULL, '2020-07-04 08:18:37', '2020-07-04 08:18:37'),
(48, 'check_payment_instructions', 1, NULL, '2020-07-04 08:18:37', '2020-07-04 08:18:37'),
(49, 'store_phone', 0, 'N;', '2020-07-04 08:18:37', '2020-07-04 08:18:37'),
(50, 'store_address_1', 0, 'N;', '2020-07-04 08:18:37', '2020-07-04 08:18:37'),
(51, 'store_address_2', 0, 'N;', '2020-07-04 08:18:37', '2020-07-04 08:18:37'),
(52, 'store_city', 0, 'N;', '2020-07-04 08:18:37', '2020-07-04 08:18:37'),
(53, 'store_country', 0, 's:2:\"BD\";', '2020-07-04 08:18:37', '2020-07-04 08:19:28'),
(54, 'store_state', 0, 'N;', '2020-07-04 08:18:37', '2020-07-04 08:18:37'),
(55, 'store_zip', 0, 'N;', '2020-07-04 08:18:37', '2020-07-04 08:18:37'),
(56, 'currency_rate_exchange_service', 0, 'N;', '2020-07-04 08:18:37', '2020-07-04 08:18:37'),
(57, 'fixer_access_key', 0, 's:10:\"cse1007036\";', '2020-07-04 08:18:37', '2020-07-04 08:18:37'),
(58, 'forge_api_key', 0, 'N;', '2020-07-04 08:18:37', '2020-07-04 08:18:37'),
(59, 'currency_data_feed_api_key', 0, 'N;', '2020-07-04 08:18:37', '2020-07-04 08:18:37'),
(60, 'auto_refresh_currency_rates', 0, 's:1:\"0\";', '2020-07-04 08:18:37', '2020-07-04 08:18:37'),
(61, 'auto_refresh_currency_rate_frequency', 0, 's:5:\"daily\";', '2020-07-04 08:18:37', '2020-07-04 08:18:37'),
(62, 'mail_from_address', 0, 'N;', '2020-07-04 08:18:37', '2020-07-04 08:18:37'),
(63, 'mail_from_name', 0, 'N;', '2020-07-04 08:18:37', '2020-07-04 08:18:37'),
(64, 'mail_host', 0, 'N;', '2020-07-04 08:18:37', '2020-07-04 08:18:37'),
(65, 'mail_port', 0, 'N;', '2020-07-04 08:18:37', '2020-07-04 08:18:37'),
(66, 'mail_username', 0, 'N;', '2020-07-04 08:18:37', '2020-07-04 08:18:37'),
(67, 'mail_password', 0, 'N;', '2020-07-04 08:18:37', '2020-07-04 08:18:37'),
(68, 'mail_encryption', 0, 'N;', '2020-07-04 08:18:37', '2020-07-04 08:18:37'),
(69, 'mailchimp_api_key', 0, 'N;', '2020-07-04 08:18:37', '2020-07-04 08:18:37'),
(70, 'mailchimp_list_id', 0, 'N;', '2020-07-04 08:18:37', '2020-07-04 08:18:37'),
(71, 'custom_header_assets', 0, 'N;', '2020-07-04 08:18:37', '2020-07-04 08:18:37'),
(72, 'custom_footer_assets', 0, 'N;', '2020-07-04 08:18:37', '2020-07-04 08:18:37'),
(73, 'facebook_login_enabled', 0, 's:1:\"0\";', '2020-07-04 08:18:37', '2020-07-04 08:18:37'),
(74, 'facebook_login_app_id', 0, 'N;', '2020-07-04 08:18:37', '2020-07-04 08:18:37'),
(75, 'facebook_login_app_secret', 0, 'N;', '2020-07-04 08:18:37', '2020-07-04 08:18:37'),
(76, 'google_login_enabled', 0, 's:1:\"0\";', '2020-07-04 08:18:37', '2020-07-04 08:18:37'),
(77, 'google_login_client_id', 0, 'N;', '2020-07-04 08:18:37', '2020-07-04 08:18:37'),
(78, 'google_login_client_secret', 0, 'N;', '2020-07-04 08:18:37', '2020-07-04 08:18:37'),
(79, 'free_shipping_enabled', 0, 's:1:\"1\";', '2020-07-04 08:18:37', '2020-07-04 08:21:16'),
(80, 'free_shipping_min_amount', 0, 's:2:\"60\";', '2020-07-04 08:18:37', '2020-07-04 08:21:16'),
(81, 'local_pickup_enabled', 0, 's:1:\"0\";', '2020-07-04 08:18:37', '2020-07-04 08:18:37'),
(82, 'flat_rate_enabled', 0, 's:1:\"0\";', '2020-07-04 08:18:37', '2020-07-04 08:18:37'),
(83, 'paypal_enabled', 0, 's:1:\"0\";', '2020-07-04 08:18:37', '2020-07-04 08:18:37'),
(84, 'paypal_test_mode', 0, 's:1:\"0\";', '2020-07-04 08:18:38', '2020-07-04 08:18:38'),
(85, 'paypal_client_id', 0, 'N;', '2020-07-04 08:18:38', '2020-07-04 08:18:38'),
(86, 'paypal_secret', 0, 'N;', '2020-07-04 08:18:38', '2020-07-04 08:18:38'),
(87, 'stripe_enabled', 0, 's:1:\"0\";', '2020-07-04 08:18:38', '2020-07-04 08:18:38'),
(88, 'stripe_publishable_key', 0, 'N;', '2020-07-04 08:18:38', '2020-07-04 08:18:38'),
(89, 'stripe_secret_key', 0, 'N;', '2020-07-04 08:18:38', '2020-07-04 08:18:38'),
(90, 'razorpay_enabled', 0, 's:1:\"0\";', '2020-07-04 08:18:38', '2020-07-04 08:18:38'),
(91, 'razorpay_key_id', 0, 'N;', '2020-07-04 08:18:38', '2020-07-04 08:18:38'),
(92, 'razorpay_key_secret', 0, 'N;', '2020-07-04 08:18:38', '2020-07-04 08:18:38'),
(93, 'instamojo_enabled', 0, 's:1:\"0\";', '2020-07-04 08:18:38', '2020-07-04 08:18:38'),
(94, 'instamojo_test_mode', 0, 's:1:\"0\";', '2020-07-04 08:18:38', '2020-07-04 08:18:38'),
(95, 'instamojo_api_key', 0, 'N;', '2020-07-04 08:18:38', '2020-07-04 08:18:38'),
(96, 'instamojo_auth_token', 0, 'N;', '2020-07-04 08:18:38', '2020-07-04 08:18:38'),
(97, 'cod_enabled', 0, 's:1:\"1\";', '2020-07-04 08:18:38', '2020-07-04 08:20:35'),
(98, 'bank_transfer_enabled', 0, 's:1:\"0\";', '2020-07-04 08:18:38', '2020-07-04 08:18:38'),
(99, 'check_payment_enabled', 0, 's:1:\"0\";', '2020-07-04 08:18:38', '2020-07-04 08:18:38'),
(100, 'storefront_welcome_text', 1, NULL, '2020-07-04 08:23:51', '2020-07-04 08:23:51'),
(101, 'storefront_address', 1, NULL, '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(102, 'storefront_navbar_text', 1, NULL, '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(103, 'storefront_footer_menu_one_title', 1, NULL, '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(104, 'storefront_footer_menu_two_title', 1, NULL, '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(105, 'storefront_feature_1_title', 1, NULL, '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(106, 'storefront_feature_1_subtitle', 1, NULL, '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(107, 'storefront_feature_2_title', 1, NULL, '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(108, 'storefront_feature_2_subtitle', 1, NULL, '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(109, 'storefront_feature_3_title', 1, NULL, '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(110, 'storefront_feature_3_subtitle', 1, NULL, '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(111, 'storefront_feature_4_title', 1, NULL, '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(112, 'storefront_feature_4_subtitle', 1, NULL, '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(113, 'storefront_feature_5_title', 1, NULL, '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(114, 'storefront_feature_5_subtitle', 1, NULL, '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(115, 'storefront_product_page_banner_file_id', 1, NULL, '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(116, 'storefront_slider_banner_1_file_id', 1, NULL, '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(117, 'storefront_slider_banner_2_file_id', 1, NULL, '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(118, 'storefront_three_column_full_width_banners_1_file_id', 1, NULL, '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(119, 'storefront_three_column_full_width_banners_2_file_id', 1, NULL, '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(120, 'storefront_three_column_full_width_banners_3_file_id', 1, NULL, '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(121, 'storefront_featured_categories_section_title', 1, NULL, '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(122, 'storefront_featured_categories_section_subtitle', 1, NULL, '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(123, 'storefront_product_tabs_1_section_tab_1_title', 1, NULL, '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(124, 'storefront_product_tabs_1_section_tab_2_title', 1, NULL, '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(125, 'storefront_product_tabs_1_section_tab_3_title', 1, NULL, '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(126, 'storefront_product_tabs_1_section_tab_4_title', 1, NULL, '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(127, 'storefront_two_column_banners_1_file_id', 1, NULL, '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(128, 'storefront_two_column_banners_2_file_id', 1, NULL, '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(129, 'storefront_product_grid_section_tab_1_title', 1, NULL, '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(130, 'storefront_product_grid_section_tab_2_title', 1, NULL, '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(131, 'storefront_product_grid_section_tab_3_title', 1, NULL, '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(132, 'storefront_product_grid_section_tab_4_title', 1, NULL, '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(133, 'storefront_three_column_banners_1_file_id', 1, NULL, '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(134, 'storefront_three_column_banners_2_file_id', 1, NULL, '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(135, 'storefront_three_column_banners_3_file_id', 1, NULL, '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(136, 'storefront_product_tabs_2_section_title', 1, NULL, '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(137, 'storefront_product_tabs_2_section_tab_1_title', 1, NULL, '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(138, 'storefront_product_tabs_2_section_tab_2_title', 1, NULL, '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(139, 'storefront_product_tabs_2_section_tab_3_title', 1, NULL, '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(140, 'storefront_product_tabs_2_section_tab_4_title', 1, NULL, '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(141, 'storefront_one_column_banner_file_id', 1, NULL, '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(142, 'storefront_theme_color', 0, 's:5:\"green\";', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(143, 'storefront_custom_theme_color', 0, 's:7:\"#000000\";', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(144, 'storefront_mail_theme_color', 0, 's:5:\"green\";', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(145, 'storefront_custom_mail_theme_color', 0, 's:7:\"#000000\";', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(146, 'storefront_slider', 0, 's:1:\"1\";', '2020-07-04 08:23:52', '2020-07-04 08:49:06'),
(147, 'storefront_terms_page', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(148, 'storefront_privacy_page', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(149, 'storefront_primary_menu', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(150, 'storefront_category_menu', 0, 's:1:\"1\";', '2020-07-04 08:23:52', '2020-07-04 10:21:14'),
(151, 'storefront_footer_menu_one', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(152, 'storefront_footer_menu_two', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(153, 'storefront_features_section_enabled', 0, 's:1:\"1\";', '2020-07-04 08:23:52', '2020-07-04 09:30:04'),
(154, 'storefront_feature_1_icon', 0, 's:17:\"las la-headphones\";', '2020-07-04 08:23:52', '2020-07-04 09:30:04'),
(155, 'storefront_feature_2_icon', 0, 's:21:\"las la-calendar-minus\";', '2020-07-04 08:23:52', '2020-07-04 09:30:04'),
(156, 'storefront_feature_3_icon', 0, 's:12:\"las la-truck\";', '2020-07-04 08:23:52', '2020-07-04 09:33:04'),
(157, 'storefront_feature_4_icon', 0, 's:17:\"las la-shield-alt\";', '2020-07-04 08:23:52', '2020-07-04 09:33:04'),
(158, 'storefront_feature_5_icon', 0, 's:12:\"lar la-heart\";', '2020-07-04 08:23:52', '2020-07-04 09:33:04'),
(159, 'storefront_product_page_banner_call_to_action_url', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(160, 'storefront_product_page_banner_open_in_new_window', 0, 's:1:\"0\";', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(161, 'storefront_facebook_link', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(162, 'storefront_twitter_link', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(163, 'storefront_instagram_link', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(164, 'storefront_youtube_link', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(165, 'storefront_slider_banner_1_call_to_action_url', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 09:25:25'),
(166, 'storefront_slider_banner_1_open_in_new_window', 0, 's:1:\"0\";', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(167, 'storefront_slider_banner_2_call_to_action_url', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 09:25:25'),
(168, 'storefront_slider_banner_2_open_in_new_window', 0, 's:1:\"0\";', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(169, 'storefront_three_column_full_width_banners_enabled', 0, 's:1:\"0\";', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(170, 'storefront_three_column_full_width_banners_1_call_to_action_url', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(171, 'storefront_three_column_full_width_banners_1_open_in_new_window', 0, 's:1:\"0\";', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(172, 'storefront_three_column_full_width_banners_2_call_to_action_url', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(173, 'storefront_three_column_full_width_banners_2_open_in_new_window', 0, 's:1:\"0\";', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(174, 'storefront_three_column_full_width_banners_3_call_to_action_url', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(175, 'storefront_three_column_full_width_banners_3_open_in_new_window', 0, 's:1:\"0\";', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(176, 'storefront_featured_categories_section_enabled', 0, 's:1:\"0\";', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(177, 'storefront_featured_categories_section_category_1_category_id', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(178, 'storefront_featured_categories_section_category_1_product_type', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(179, 'storefront_featured_categories_section_category_1_products_limit', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(180, 'storefront_featured_categories_section_category_2_category_id', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(181, 'storefront_featured_categories_section_category_2_product_type', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(182, 'storefront_featured_categories_section_category_2_products_limit', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(183, 'storefront_featured_categories_section_category_3_category_id', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(184, 'storefront_featured_categories_section_category_3_product_type', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(185, 'storefront_featured_categories_section_category_3_products_limit', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(186, 'storefront_featured_categories_section_category_4_category_id', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(187, 'storefront_featured_categories_section_category_4_product_type', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(188, 'storefront_featured_categories_section_category_4_products_limit', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(189, 'storefront_featured_categories_section_category_5_category_id', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(190, 'storefront_featured_categories_section_category_5_product_type', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(191, 'storefront_featured_categories_section_category_5_products_limit', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(192, 'storefront_featured_categories_section_category_6_category_id', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(193, 'storefront_featured_categories_section_category_6_product_type', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(194, 'storefront_featured_categories_section_category_6_products_limit', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(195, 'storefront_product_tabs_1_section_enabled', 0, 's:1:\"1\";', '2020-07-04 08:23:52', '2020-07-04 09:46:30'),
(196, 'storefront_product_tabs_1_section_tab_1_product_type', 0, 's:17:\"category_products\";', '2020-07-04 08:23:52', '2020-08-25 22:04:13'),
(197, 'storefront_product_tabs_1_section_tab_1_category_id', 0, 's:1:\"6\";', '2020-07-04 08:23:52', '2020-08-25 22:04:13'),
(198, 'storefront_product_tabs_1_section_tab_1_products_limit', 0, 's:1:\"5\";', '2020-07-04 08:23:52', '2020-08-09 22:34:32'),
(199, 'storefront_product_tabs_1_section_tab_2_product_type', 0, 'N;', '2020-07-04 08:23:52', '2020-08-09 22:34:32'),
(200, 'storefront_product_tabs_1_section_tab_2_category_id', 0, 'N;', '2020-07-04 08:23:52', '2020-10-01 20:23:04'),
(201, 'storefront_product_tabs_1_section_tab_2_products_limit', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(202, 'storefront_product_tabs_1_section_tab_3_product_type', 0, 'N;', '2020-07-04 08:23:52', '2020-08-09 22:34:32'),
(203, 'storefront_product_tabs_1_section_tab_3_category_id', 0, 'N;', '2020-07-04 08:23:52', '2020-10-01 20:23:04'),
(204, 'storefront_product_tabs_1_section_tab_3_products_limit', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(205, 'storefront_product_tabs_1_section_tab_4_product_type', 0, 'N;', '2020-07-04 08:23:52', '2020-08-09 22:34:32'),
(206, 'storefront_product_tabs_1_section_tab_4_category_id', 0, 'N;', '2020-07-04 08:23:52', '2020-10-01 20:23:04'),
(207, 'storefront_product_tabs_1_section_tab_4_products_limit', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(208, 'storefront_top_brands_section_enabled', 0, 's:1:\"0\";', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(209, 'storefront_flash_sale_and_vertical_products_section_enabled', 0, 's:1:\"0\";', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(210, 'storefront_flash_sale_title', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(211, 'storefront_active_flash_sale_campaign', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(212, 'storefront_vertical_products_1_title', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(213, 'storefront_vertical_products_1_product_type', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(214, 'storefront_vertical_products_1_category_id', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(215, 'storefront_vertical_products_1_products_limit', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(216, 'storefront_vertical_products_2_title', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(217, 'storefront_vertical_products_2_product_type', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(218, 'storefront_vertical_products_2_category_id', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(219, 'storefront_vertical_products_2_products_limit', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(220, 'storefront_vertical_products_3_title', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(221, 'storefront_vertical_products_3_product_type', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(222, 'storefront_vertical_products_3_category_id', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(223, 'storefront_vertical_products_3_products_limit', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(224, 'storefront_two_column_banners_enabled', 0, 's:1:\"1\";', '2020-07-04 08:23:52', '2020-08-09 23:38:34'),
(225, 'storefront_two_column_banners_1_call_to_action_url', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(226, 'storefront_two_column_banners_1_open_in_new_window', 0, 's:1:\"0\";', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(227, 'storefront_two_column_banners_2_call_to_action_url', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(228, 'storefront_two_column_banners_2_open_in_new_window', 0, 's:1:\"0\";', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(229, 'storefront_product_grid_section_enabled', 0, 's:1:\"1\";', '2020-07-04 08:23:52', '2020-07-08 13:44:27'),
(230, 'storefront_product_grid_section_tab_1_product_type', 0, 's:17:\"category_products\";', '2020-07-04 08:23:52', '2020-08-25 22:05:22'),
(231, 'storefront_product_grid_section_tab_1_category_id', 0, 's:1:\"4\";', '2020-07-04 08:23:52', '2020-08-25 22:05:22'),
(232, 'storefront_product_grid_section_tab_1_products_limit', 0, 's:1:\"5\";', '2020-07-04 08:23:52', '2020-07-08 13:44:27'),
(233, 'storefront_product_grid_section_tab_2_product_type', 0, 'N;', '2020-07-04 08:23:52', '2020-08-25 22:05:22'),
(234, 'storefront_product_grid_section_tab_2_category_id', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(235, 'storefront_product_grid_section_tab_2_products_limit', 0, 's:1:\"5\";', '2020-07-04 08:23:52', '2020-07-08 13:44:27'),
(236, 'storefront_product_grid_section_tab_3_product_type', 0, 'N;', '2020-07-04 08:23:52', '2020-08-25 22:05:22'),
(237, 'storefront_product_grid_section_tab_3_category_id', 0, 'N;', '2020-07-04 08:23:52', '2020-10-01 20:23:04'),
(238, 'storefront_product_grid_section_tab_3_products_limit', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(239, 'storefront_product_grid_section_tab_4_product_type', 0, 'N;', '2020-07-04 08:23:52', '2020-08-25 22:05:22'),
(240, 'storefront_product_grid_section_tab_4_category_id', 0, 'N;', '2020-07-04 08:23:52', '2020-10-01 20:23:04'),
(241, 'storefront_product_grid_section_tab_4_products_limit', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(242, 'storefront_three_column_banners_enabled', 0, 's:1:\"0\";', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(243, 'storefront_three_column_banners_1_call_to_action_url', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(244, 'storefront_three_column_banners_1_open_in_new_window', 0, 's:1:\"0\";', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(245, 'storefront_three_column_banners_2_call_to_action_url', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(246, 'storefront_three_column_banners_2_open_in_new_window', 0, 's:1:\"0\";', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(247, 'storefront_three_column_banners_3_call_to_action_url', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(248, 'storefront_three_column_banners_3_open_in_new_window', 0, 's:1:\"0\";', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(249, 'storefront_product_tabs_2_section_enabled', 0, 's:1:\"0\";', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(250, 'storefront_product_tabs_2_section_tab_1_product_type', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(251, 'storefront_product_tabs_2_section_tab_1_category_id', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(252, 'storefront_product_tabs_2_section_tab_1_products_limit', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(253, 'storefront_product_tabs_2_section_tab_2_product_type', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(254, 'storefront_product_tabs_2_section_tab_2_category_id', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(255, 'storefront_product_tabs_2_section_tab_2_products_limit', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(256, 'storefront_product_tabs_2_section_tab_3_product_type', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(257, 'storefront_product_tabs_2_section_tab_3_category_id', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(258, 'storefront_product_tabs_2_section_tab_3_products_limit', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(259, 'storefront_product_tabs_2_section_tab_4_product_type', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(260, 'storefront_product_tabs_2_section_tab_4_category_id', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(261, 'storefront_product_tabs_2_section_tab_4_products_limit', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(262, 'storefront_one_column_banner_enabled', 0, 's:1:\"0\";', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(263, 'storefront_one_column_banner_call_to_action_url', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(264, 'storefront_one_column_banner_open_in_new_window', 0, 's:1:\"0\";', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(265, 'storefront_footer_tags', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(266, 'storefront_featured_categories_section_category_1_products', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(267, 'storefront_featured_categories_section_category_2_products', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(268, 'storefront_featured_categories_section_category_3_products', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(269, 'storefront_featured_categories_section_category_4_products', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(270, 'storefront_featured_categories_section_category_5_products', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(271, 'storefront_featured_categories_section_category_6_products', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(272, 'storefront_product_tabs_1_section_tab_1_products', 0, 'N;', '2020-07-04 08:23:52', '2020-08-25 22:04:14'),
(273, 'storefront_product_tabs_1_section_tab_2_products', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(274, 'storefront_product_tabs_1_section_tab_3_products', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(275, 'storefront_product_tabs_1_section_tab_4_products', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(276, 'storefront_top_brands', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(277, 'storefront_vertical_products_1_products', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(278, 'storefront_vertical_products_2_products', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(279, 'storefront_vertical_products_3_products', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(280, 'storefront_product_grid_section_tab_1_products', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(281, 'storefront_product_grid_section_tab_2_products', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(282, 'storefront_product_grid_section_tab_3_products', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(283, 'storefront_product_grid_section_tab_4_products', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(284, 'storefront_product_tabs_2_section_tab_1_products', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(285, 'storefront_product_tabs_2_section_tab_2_products', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(286, 'storefront_product_tabs_2_section_tab_3_products', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(287, 'storefront_product_tabs_2_section_tab_4_products', 0, 'N;', '2020-07-04 08:23:52', '2020-07-04 08:23:52'),
(288, 'storefront_header_logo', 1, NULL, '2020-08-03 23:43:51', '2020-08-03 23:43:51'),
(289, 'storefront_favicon', 0, 's:2:\"16\";', '2020-08-03 23:43:51', '2020-08-03 23:43:51');

-- --------------------------------------------------------

--
-- Table structure for table `setting_translations`
--

CREATE TABLE `setting_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `setting_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting_translations`
--

INSERT INTO `setting_translations` (`id`, `setting_id`, `locale`, `value`) VALUES
(1, 1, 'en', 's:13:\"Needs & Peace\";'),
(2, 22, 'en', 's:13:\"Free Shipping\";'),
(3, 23, 'en', 's:12:\"Local Pickup\";'),
(4, 24, 'en', 's:9:\"Flat Rate\";'),
(5, 25, 'en', 's:6:\"PayPal\";'),
(6, 26, 'en', 's:28:\"Pay via your PayPal account.\";'),
(7, 27, 'en', 's:6:\"Stripe\";'),
(8, 28, 'en', 's:29:\"Pay via credit or debit card.\";'),
(9, 29, 'en', 's:8:\"Razorpay\";'),
(10, 30, 'en', 's:74:\"Pay securely by Credit or Debit card or Internet Banking through Razorpay.\";'),
(11, 31, 'en', 's:9:\"Instamojo\";'),
(12, 32, 'en', 's:16:\"CC/DB/NB/Wallets\";'),
(13, 33, 'en', 's:16:\"Cash On Delivery\";'),
(14, 34, 'en', 's:28:\"Pay with cash upon delivery.\";'),
(15, 35, 'en', 's:13:\"Bank Transfer\";'),
(16, 36, 'en', 's:100:\"Make your payment directly into our bank account. Please use your Order ID as the payment reference.\";'),
(17, 37, 'en', 's:19:\"Check / Money Order\";'),
(18, 38, 'en', 's:33:\"Please send a check to our store.\";'),
(19, 46, 'en', 'N;'),
(20, 47, 'en', 'N;'),
(21, 48, 'en', 'N;'),
(22, 100, 'en', 'N;'),
(23, 101, 'en', 'N;'),
(24, 102, 'en', 'N;'),
(25, 103, 'en', 'N;'),
(26, 104, 'en', 'N;'),
(27, 39, 'en', 's:92:\"Copyright © <a href=\"{{ store_url }}\">{{ store_name }}</a> {{ year }}. All rights reserved.\";'),
(28, 105, 'en', 's:12:\"24/7 SUPPORT\";'),
(29, 106, 'en', 's:18:\"Support every time\";'),
(30, 107, 'en', 's:20:\"MONEY BACK GUARANTEE\";'),
(31, 108, 'en', 's:17:\"30 days guarantee\";'),
(32, 109, 'en', 's:20:\"LOWEST SHIPPING COST\";'),
(33, 110, 'en', 's:26:\"We want to save your money\";'),
(34, 111, 'en', 's:14:\"TRUST & SAFETY\";'),
(35, 112, 'en', 's:15:\"Safety is first\";'),
(36, 113, 'en', 's:18:\"FRIENDLY BEHAVIOUR\";'),
(37, 114, 'en', 's:22:\"We are always friendly\";'),
(38, 115, 'en', 'N;'),
(39, 116, 'en', 's:2:\"52\";'),
(40, 117, 'en', 's:2:\"53\";'),
(41, 118, 'en', 'N;'),
(42, 119, 'en', 'N;'),
(43, 120, 'en', 'N;'),
(44, 121, 'en', 'N;'),
(45, 122, 'en', 'N;'),
(46, 123, 'en', 's:41:\"থ্রি পিস / টু পিস\";'),
(47, 124, 'en', 'N;'),
(48, 125, 'en', 'N;'),
(49, 126, 'en', 'N;'),
(50, 127, 'en', 's:2:\"20\";'),
(51, 128, 'en', 's:2:\"21\";'),
(52, 129, 'en', 's:28:\"নকশী কাঁথা\";'),
(53, 130, 'en', 'N;'),
(54, 131, 'en', 'N;'),
(55, 132, 'en', 'N;'),
(56, 133, 'en', 'N;'),
(57, 134, 'en', 'N;'),
(58, 135, 'en', 'N;'),
(59, 136, 'en', 'N;'),
(60, 137, 'en', 'N;'),
(61, 138, 'en', 'N;'),
(62, 139, 'en', 'N;'),
(63, 140, 'en', 'N;'),
(64, 141, 'en', 'N;'),
(65, 288, 'en', 's:2:\"18\";');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `speed` int(11) DEFAULT NULL,
  `autoplay` tinyint(1) DEFAULT NULL,
  `autoplay_speed` int(11) DEFAULT NULL,
  `fade` tinyint(1) NOT NULL DEFAULT 0,
  `dots` tinyint(1) DEFAULT NULL,
  `arrows` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `speed`, `autoplay`, `autoplay_speed`, `fade`, `dots`, `arrows`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 3000, 0, 0, 0, '2020-07-04 08:44:15', '2020-07-04 08:44:15');

-- --------------------------------------------------------

--
-- Table structure for table `slider_slides`
--

CREATE TABLE `slider_slides` (
  `id` int(10) UNSIGNED NOT NULL,
  `slider_id` int(10) UNSIGNED NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_to_action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_in_new_window` tinyint(1) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider_slides`
--

INSERT INTO `slider_slides` (`id`, `slider_id`, `options`, `call_to_action_url`, `open_in_new_window`, `position`, `created_at`, `updated_at`) VALUES
(2, 1, '{\"caption_1\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"caption_2\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"call_to_action\":{\"delay\":null,\"effect\":\"fadeInUp\"}}', NULL, 1, 0, '2020-07-04 08:44:15', '2020-07-04 09:00:39');

-- --------------------------------------------------------

--
-- Table structure for table `slider_slide_translations`
--

CREATE TABLE `slider_slide_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `slider_slide_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `caption_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_to_action_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direction` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider_slide_translations`
--

INSERT INTO `slider_slide_translations` (`id`, `slider_slide_id`, `locale`, `file_id`, `caption_1`, `caption_2`, `call_to_action_text`, `direction`) VALUES
(2, 2, 'en', 49, NULL, NULL, NULL, 'left');

-- --------------------------------------------------------

--
-- Table structure for table `slider_translations`
--

CREATE TABLE `slider_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `slider_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider_translations`
--

INSERT INTO `slider_translations` (`id`, `slider_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'main_slider');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tag_translations`
--

CREATE TABLE `tag_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_classes`
--

CREATE TABLE `tax_classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `based_on` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_class_translations`
--

CREATE TABLE `tax_class_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `tax_class_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_rates`
--

CREATE TABLE `tax_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `tax_class_id` int(10) UNSIGNED NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(8,4) UNSIGNED NOT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_rate_translations`
--

CREATE TABLE `tax_rate_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `tax_rate_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `throttle`
--

CREATE TABLE `throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `throttle`
--

INSERT INTO `throttle` (`id`, `user_id`, `type`, `ip`, `created_at`, `updated_at`) VALUES
(1, NULL, 'global', NULL, '2020-07-04 19:46:56', '2020-07-04 19:46:56'),
(2, NULL, 'ip', '103.230.104.19', '2020-07-04 19:46:56', '2020-07-04 19:46:56'),
(3, NULL, 'global', NULL, '2020-07-04 19:47:12', '2020-07-04 19:47:12'),
(4, NULL, 'ip', '103.230.104.19', '2020-07-04 19:47:12', '2020-07-04 19:47:12'),
(5, NULL, 'global', NULL, '2020-08-25 21:46:19', '2020-08-25 21:46:19'),
(6, NULL, 'ip', '37.111.238.23', '2020-08-25 21:46:19', '2020-08-25 21:46:19'),
(7, 1, 'user', NULL, '2020-08-25 21:46:19', '2020-08-25 21:46:19'),
(8, NULL, 'global', NULL, '2020-11-13 03:39:24', '2020-11-13 03:39:24'),
(9, NULL, 'ip', '37.111.238.131', '2020-11-13 03:39:24', '2020-11-13 03:39:24'),
(10, 1, 'user', NULL, '2020-11-13 03:39:24', '2020-11-13 03:39:24'),
(11, NULL, 'global', NULL, '2020-11-21 16:27:19', '2020-11-21 16:27:19'),
(12, NULL, 'ip', '5.188.62.214', '2020-11-21 16:27:19', '2020-11-21 16:27:19'),
(13, NULL, 'global', NULL, '2020-11-21 16:52:09', '2020-11-21 16:52:09'),
(14, NULL, 'ip', '5.188.62.214', '2020-11-21 16:52:09', '2020-11-21 16:52:09'),
(15, NULL, 'global', NULL, '2020-11-29 12:14:52', '2020-11-29 12:14:52'),
(16, NULL, 'ip', '5.188.62.214', '2020-11-29 12:14:52', '2020-11-29 12:14:52'),
(17, NULL, 'global', NULL, '2020-11-29 12:39:14', '2020-11-29 12:39:14'),
(18, NULL, 'ip', '5.188.62.214', '2020-11-29 12:39:14', '2020-11-29 12:39:14'),
(19, NULL, 'global', NULL, '2020-11-29 13:03:33', '2020-11-29 13:03:33'),
(20, NULL, 'ip', '5.188.62.214', '2020-11-29 13:03:33', '2020-11-29 13:03:33'),
(21, NULL, 'global', NULL, '2020-11-29 13:28:02', '2020-11-29 13:28:02'),
(22, NULL, 'ip', '5.188.62.214', '2020-11-29 13:28:02', '2020-11-29 13:28:02'),
(23, NULL, 'global', NULL, '2020-12-07 16:57:21', '2020-12-07 16:57:21'),
(24, NULL, 'ip', '5.188.62.214', '2020-12-07 16:57:21', '2020-12-07 16:57:21'),
(25, NULL, 'global', NULL, '2020-12-07 17:22:22', '2020-12-07 17:22:22'),
(26, NULL, 'ip', '5.188.62.214', '2020-12-07 17:22:22', '2020-12-07 17:22:22'),
(27, NULL, 'global', NULL, '2020-12-07 17:47:12', '2020-12-07 17:47:12'),
(28, NULL, 'ip', '5.188.62.214', '2020-12-07 17:47:12', '2020-12-07 17:47:12'),
(29, NULL, 'global', NULL, '2020-12-07 18:11:42', '2020-12-07 18:11:42'),
(30, NULL, 'ip', '5.188.62.214', '2020-12-07 18:11:42', '2020-12-07 18:11:42'),
(31, NULL, 'global', NULL, '2020-12-07 18:36:23', '2020-12-07 18:36:23'),
(32, NULL, 'ip', '5.188.62.214', '2020-12-07 18:36:23', '2020-12-07 18:36:23'),
(33, NULL, 'global', NULL, '2020-12-07 19:32:16', '2020-12-07 19:32:16'),
(34, NULL, 'ip', '5.188.62.214', '2020-12-07 19:32:16', '2020-12-07 19:32:16'),
(35, NULL, 'global', NULL, '2020-12-07 20:02:05', '2020-12-07 20:02:05'),
(36, NULL, 'ip', '5.188.62.214', '2020-12-07 20:02:05', '2020-12-07 20:02:05'),
(37, NULL, 'global', NULL, '2020-12-07 20:47:42', '2020-12-07 20:47:42'),
(38, NULL, 'ip', '5.188.62.214', '2020-12-07 20:47:42', '2020-12-07 20:47:42'),
(39, NULL, 'global', NULL, '2020-12-18 12:34:29', '2020-12-18 12:34:29'),
(40, NULL, 'ip', '5.188.62.140', '2020-12-18 12:34:29', '2020-12-18 12:34:29'),
(41, NULL, 'global', NULL, '2020-12-18 13:22:50', '2020-12-18 13:22:50'),
(42, NULL, 'ip', '5.188.62.140', '2020-12-18 13:22:50', '2020-12-18 13:22:50'),
(43, NULL, 'global', NULL, '2020-12-21 00:59:51', '2020-12-21 00:59:51'),
(44, NULL, 'ip', '5.188.62.214', '2020-12-21 00:59:51', '2020-12-21 00:59:51'),
(45, NULL, 'global', NULL, '2020-12-21 01:54:55', '2020-12-21 01:54:55'),
(46, NULL, 'ip', '5.188.62.214', '2020-12-21 01:54:55', '2020-12-21 01:54:55'),
(47, NULL, 'global', NULL, '2021-04-12 19:59:09', '2021-04-12 19:59:09'),
(48, NULL, 'ip', '92.204.170.186', '2021-04-12 19:59:09', '2021-04-12 19:59:09'),
(49, NULL, 'global', NULL, '2021-04-12 19:59:11', '2021-04-12 19:59:11'),
(50, NULL, 'ip', '92.204.170.186', '2021-04-12 19:59:11', '2021-04-12 19:59:11');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translation_translations`
--

CREATE TABLE `translation_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `translation_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `updater_scripts`
--

CREATE TABLE `updater_scripts` (
  `id` int(10) UNSIGNED NOT NULL,
  `script` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `updater_scripts`
--

INSERT INTO `updater_scripts` (`id`, `script`) VALUES
(1, 'V2_0_0');

-- --------------------------------------------------------

--
-- Table structure for table `up_sell_products`
--

CREATE TABLE `up_sell_products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `up_sell_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `permissions`, `last_login`, `created_at`, `updated_at`) VALUES
(1, 'Super', 'Admin', 'inafeeur@gmail.com', '$2y$10$B6YakiLHAzhh9sQColeKEeurDYrfIHlC4gTXjqM/gPDkQoD4DaSjm', NULL, '2020-11-12 22:39:41', '2020-07-04 02:17:06', '2020-11-13 03:39:41'),
(2, 'Mushfiqur', 'Rahman', 'a1muslman@gmail.com', '$2y$10$5F1T8WjMioqHlPKu6RU95ONuOIIryUzg7BqnnMVQMvfoxvvCXOkTK', '[]', '2020-07-06 12:51:44', '2020-07-04 19:34:58', '2020-07-06 16:51:44'),
(3, 'Moinul', 'Islam', 'moinulce09@gmail.com', '$2y$10$fFHgZBXIcV0nSBzW1kmVB.iqjY4QkJbjV.Zhh0yxl1WjBbnEIgMwW', NULL, '2020-07-04 21:43:10', '2020-07-05 01:42:40', '2020-07-05 01:43:10'),
(4, 'Zakaria', 'Zen', 'zakaria.ibna@yahoo.com', '$2y$10$/bnFKPjen2UH0Q7gj2lbAeU267Zb0FEDH71vVevIPzPLPhe4Ppm32', NULL, '2020-07-04 22:48:30', '2020-07-05 02:48:30', '2020-07-05 02:48:30'),
(5, 'Demo', 'Admin', 'admin@admin.com', '$2y$10$W6RTVpPvefnHTweEklKnlui6XZkeAx2fFRm3toUNJVvIBZ59fFNRu', '[]', '2020-09-23 14:11:18', '2020-09-23 17:20:50', '2020-09-23 18:11:18'),
(6, 'manik', 'uddin', 'manikcsekuet2@gmail.com', '$2y$10$O./5h.28Ek8XWwT9G7W2P.9/d7iKb54NkK2hTynthnsglPRKGR8zy', NULL, NULL, '2020-10-27 13:23:43', '2020-10-27 13:23:43');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-07-04 02:17:06', '2020-07-04 02:17:06'),
(2, 1, '2020-07-04 19:34:58', '2020-07-04 19:34:58'),
(3, 2, '2020-07-05 01:42:40', '2020-07-05 01:42:40'),
(4, 2, '2020-07-05 02:48:30', '2020-07-05 02:48:30'),
(5, 1, '2020-09-23 17:20:50', '2020-09-23 17:20:50'),
(6, 2, '2020-10-27 13:23:44', '2020-10-27 13:23:44');

-- --------------------------------------------------------

--
-- Table structure for table `wish_lists`
--

CREATE TABLE `wish_lists` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_slug_unique` (`slug`),
  ADD KEY `attributes_attribute_set_id_index` (`attribute_set_id`);

--
-- Indexes for table `attribute_categories`
--
ALTER TABLE `attribute_categories`
  ADD PRIMARY KEY (`attribute_id`,`category_id`),
  ADD KEY `attribute_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `attribute_sets`
--
ALTER TABLE `attribute_sets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_set_translations`
--
ALTER TABLE `attribute_set_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_set_translations_attribute_set_id_locale_unique` (`attribute_set_id`,`locale`);

--
-- Indexes for table `attribute_translations`
--
ALTER TABLE `attribute_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_translations_attribute_id_locale_unique` (`attribute_id`,`locale`);

--
-- Indexes for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_values_attribute_id_index` (`attribute_id`);

--
-- Indexes for table `attribute_value_translations`
--
ALTER TABLE `attribute_value_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_value_translations_attribute_value_id_locale_unique` (`attribute_value_id`,`locale`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Indexes for table `brand_translations`
--
ALTER TABLE `brand_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brand_translations_brand_id_locale_unique` (`brand_id`,`locale`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_translations_category_id_locale_unique` (`category_id`,`locale`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupons_code_index` (`code`);

--
-- Indexes for table `coupon_categories`
--
ALTER TABLE `coupon_categories`
  ADD PRIMARY KEY (`coupon_id`,`category_id`,`exclude`),
  ADD KEY `coupon_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `coupon_products`
--
ALTER TABLE `coupon_products`
  ADD PRIMARY KEY (`coupon_id`,`product_id`),
  ADD KEY `coupon_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `coupon_translations`
--
ALTER TABLE `coupon_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupon_translations_coupon_id_locale_unique` (`coupon_id`,`locale`);

--
-- Indexes for table `cross_sell_products`
--
ALTER TABLE `cross_sell_products`
  ADD PRIMARY KEY (`product_id`,`cross_sell_product_id`),
  ADD KEY `cross_sell_products_cross_sell_product_id_foreign` (`cross_sell_product_id`);

--
-- Indexes for table `currency_rates`
--
ALTER TABLE `currency_rates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `currency_rates_currency_unique` (`currency`);

--
-- Indexes for table `entity_files`
--
ALTER TABLE `entity_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entity_files_entity_type_entity_id_index` (`entity_type`,`entity_id`),
  ADD KEY `entity_files_file_id_index` (`file_id`),
  ADD KEY `entity_files_zone_index` (`zone`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_user_id_index` (`user_id`),
  ADD KEY `files_filename_index` (`filename`);

--
-- Indexes for table `flash_sales`
--
ALTER TABLE `flash_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_sale_products`
--
ALTER TABLE `flash_sale_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flash_sale_products_flash_sale_id_foreign` (`flash_sale_id`),
  ADD KEY `flash_sale_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `flash_sale_product_orders`
--
ALTER TABLE `flash_sale_product_orders`
  ADD PRIMARY KEY (`flash_sale_product_id`,`order_id`),
  ADD KEY `flash_sale_product_orders_order_id_foreign` (`order_id`);

--
-- Indexes for table `flash_sale_translations`
--
ALTER TABLE `flash_sale_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `flash_sale_translations_flash_sale_id_locale_unique` (`flash_sale_id`,`locale`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_parent_id_foreign` (`parent_id`),
  ADD KEY `menu_items_category_id_foreign` (`category_id`),
  ADD KEY `menu_items_page_id_foreign` (`page_id`),
  ADD KEY `menu_items_menu_id_index` (`menu_id`);

--
-- Indexes for table `menu_item_translations`
--
ALTER TABLE `menu_item_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menu_item_translations_menu_item_id_locale_unique` (`menu_item_id`,`locale`);

--
-- Indexes for table `menu_translations`
--
ALTER TABLE `menu_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menu_translations_menu_id_locale_unique` (`menu_id`,`locale`);

--
-- Indexes for table `meta_data`
--
ALTER TABLE `meta_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_data_entity_type_entity_id_index` (`entity_type`,`entity_id`);

--
-- Indexes for table `meta_data_translations`
--
ALTER TABLE `meta_data_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `meta_data_translations_meta_data_id_locale_unique` (`meta_data_id`,`locale`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `option_translations`
--
ALTER TABLE `option_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `option_translations_option_id_locale_unique` (`option_id`,`locale`);

--
-- Indexes for table `option_values`
--
ALTER TABLE `option_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `option_values_option_id_index` (`option_id`);

--
-- Indexes for table `option_value_translations`
--
ALTER TABLE `option_value_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `option_value_translations_option_value_id_locale_unique` (`option_value_id`,`locale`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_index` (`customer_id`),
  ADD KEY `orders_coupon_id_index` (`coupon_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_products_order_id_foreign` (`order_id`),
  ADD KEY `order_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `order_product_options`
--
ALTER TABLE `order_product_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_product_options_order_product_id_option_id_unique` (`order_product_id`,`option_id`),
  ADD KEY `order_product_options_option_id_foreign` (`option_id`);

--
-- Indexes for table `order_product_option_values`
--
ALTER TABLE `order_product_option_values`
  ADD PRIMARY KEY (`order_product_option_id`,`option_value_id`),
  ADD KEY `order_product_option_values_option_value_id_foreign` (`option_value_id`);

--
-- Indexes for table `order_taxes`
--
ALTER TABLE `order_taxes`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `order_taxes_tax_rate_id_foreign` (`tax_rate_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `page_translations`
--
ALTER TABLE `page_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `page_translations_page_id_locale_unique` (`page_id`,`locale`);

--
-- Indexes for table `persistences`
--
ALTER TABLE `persistences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `persistences_code_unique` (`code`),
  ADD KEY `persistences_user_id_foreign` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_attributes_product_id_index` (`product_id`),
  ADD KEY `product_attributes_attribute_id_index` (`attribute_id`);

--
-- Indexes for table `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  ADD PRIMARY KEY (`product_attribute_id`,`attribute_value_id`),
  ADD KEY `product_attribute_values_attribute_value_id_foreign` (`attribute_value_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `product_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_options`
--
ALTER TABLE `product_options`
  ADD PRIMARY KEY (`product_id`,`option_id`),
  ADD KEY `product_options_option_id_foreign` (`option_id`);

--
-- Indexes for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`product_id`,`tag_id`),
  ADD KEY `product_tags_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `product_translations`
--
ALTER TABLE `product_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_translations_product_id_locale_unique` (`product_id`,`locale`);
ALTER TABLE `product_translations` ADD FULLTEXT KEY `name` (`name`);

--
-- Indexes for table `related_products`
--
ALTER TABLE `related_products`
  ADD PRIMARY KEY (`product_id`,`related_product_id`),
  ADD KEY `related_products_related_product_id_foreign` (`related_product_id`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reminders_user_id_foreign` (`user_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_reviewer_id_index` (`reviewer_id`),
  ADD KEY `reviews_product_id_index` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_translations`
--
ALTER TABLE `role_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_translations_role_id_locale_unique` (`role_id`,`locale`);

--
-- Indexes for table `search_terms`
--
ALTER TABLE `search_terms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `search_terms_term_unique` (`term`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `setting_translations`
--
ALTER TABLE `setting_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting_translations_setting_id_locale_unique` (`setting_id`,`locale`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider_slides`
--
ALTER TABLE `slider_slides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slider_slides_slider_id_foreign` (`slider_id`);

--
-- Indexes for table `slider_slide_translations`
--
ALTER TABLE `slider_slide_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slider_slide_translations_slider_slide_id_locale_unique` (`slider_slide_id`,`locale`);

--
-- Indexes for table `slider_translations`
--
ALTER TABLE `slider_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slider_translations_slider_id_locale_unique` (`slider_id`,`locale`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Indexes for table `tag_translations`
--
ALTER TABLE `tag_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tag_translations_tag_id_locale_unique` (`tag_id`,`locale`);

--
-- Indexes for table `tax_classes`
--
ALTER TABLE `tax_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_class_translations`
--
ALTER TABLE `tax_class_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tax_class_translations_tax_class_id_locale_unique` (`tax_class_id`,`locale`);

--
-- Indexes for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tax_rates_tax_class_id_index` (`tax_class_id`);

--
-- Indexes for table `tax_rate_translations`
--
ALTER TABLE `tax_rate_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tax_rate_translations_tax_rate_id_locale_unique` (`tax_rate_id`,`locale`);

--
-- Indexes for table `throttle`
--
ALTER TABLE `throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `throttle_user_id_foreign` (`user_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transactions_order_id_unique` (`order_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translations_key_index` (`key`);

--
-- Indexes for table `translation_translations`
--
ALTER TABLE `translation_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translation_translations_translation_id_locale_unique` (`translation_id`,`locale`);

--
-- Indexes for table `updater_scripts`
--
ALTER TABLE `updater_scripts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `up_sell_products`
--
ALTER TABLE `up_sell_products`
  ADD PRIMARY KEY (`product_id`,`up_sell_product_id`),
  ADD KEY `up_sell_products_up_sell_product_id_foreign` (`up_sell_product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_role_id_foreign` (`role_id`);

--
-- Indexes for table `wish_lists`
--
ALTER TABLE `wish_lists`
  ADD PRIMARY KEY (`user_id`,`product_id`),
  ADD KEY `wish_lists_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attribute_sets`
--
ALTER TABLE `attribute_sets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attribute_set_translations`
--
ALTER TABLE `attribute_set_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attribute_translations`
--
ALTER TABLE `attribute_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attribute_value_translations`
--
ALTER TABLE `attribute_value_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brand_translations`
--
ALTER TABLE `brand_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupon_translations`
--
ALTER TABLE `coupon_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currency_rates`
--
ALTER TABLE `currency_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `entity_files`
--
ALTER TABLE `entity_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `flash_sales`
--
ALTER TABLE `flash_sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flash_sale_products`
--
ALTER TABLE `flash_sale_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flash_sale_translations`
--
ALTER TABLE `flash_sale_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `menu_item_translations`
--
ALTER TABLE `menu_item_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menu_translations`
--
ALTER TABLE `menu_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `meta_data`
--
ALTER TABLE `meta_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `meta_data_translations`
--
ALTER TABLE `meta_data_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `option_translations`
--
ALTER TABLE `option_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `option_values`
--
ALTER TABLE `option_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `option_value_translations`
--
ALTER TABLE `option_value_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_product_options`
--
ALTER TABLE `order_product_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `page_translations`
--
ALTER TABLE `page_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `persistences`
--
ALTER TABLE `persistences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_translations`
--
ALTER TABLE `product_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role_translations`
--
ALTER TABLE `role_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `search_terms`
--
ALTER TABLE `search_terms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=290;

--
-- AUTO_INCREMENT for table `setting_translations`
--
ALTER TABLE `setting_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider_slides`
--
ALTER TABLE `slider_slides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `slider_slide_translations`
--
ALTER TABLE `slider_slide_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `slider_translations`
--
ALTER TABLE `slider_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tag_translations`
--
ALTER TABLE `tag_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_classes`
--
ALTER TABLE `tax_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_class_translations`
--
ALTER TABLE `tax_class_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_rates`
--
ALTER TABLE `tax_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_rate_translations`
--
ALTER TABLE `tax_rate_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `throttle`
--
ALTER TABLE `throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translation_translations`
--
ALTER TABLE `translation_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `updater_scripts`
--
ALTER TABLE `updater_scripts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activations`
--
ALTER TABLE `activations`
  ADD CONSTRAINT `activations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attributes`
--
ALTER TABLE `attributes`
  ADD CONSTRAINT `attributes_attribute_set_id_foreign` FOREIGN KEY (`attribute_set_id`) REFERENCES `attribute_sets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_categories`
--
ALTER TABLE `attribute_categories`
  ADD CONSTRAINT `attribute_categories_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_set_translations`
--
ALTER TABLE `attribute_set_translations`
  ADD CONSTRAINT `attribute_set_translations_attribute_set_id_foreign` FOREIGN KEY (`attribute_set_id`) REFERENCES `attribute_sets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_translations`
--
ALTER TABLE `attribute_translations`
  ADD CONSTRAINT `attribute_translations_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD CONSTRAINT `attribute_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_value_translations`
--
ALTER TABLE `attribute_value_translations`
  ADD CONSTRAINT `attribute_value_translations_attribute_value_id_foreign` FOREIGN KEY (`attribute_value_id`) REFERENCES `attribute_values` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD CONSTRAINT `category_translations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `coupon_categories`
--
ALTER TABLE `coupon_categories`
  ADD CONSTRAINT `coupon_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `coupon_categories_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `coupon_products`
--
ALTER TABLE `coupon_products`
  ADD CONSTRAINT `coupon_products_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `coupon_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `coupon_translations`
--
ALTER TABLE `coupon_translations`
  ADD CONSTRAINT `coupon_translations_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cross_sell_products`
--
ALTER TABLE `cross_sell_products`
  ADD CONSTRAINT `cross_sell_products_cross_sell_product_id_foreign` FOREIGN KEY (`cross_sell_product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cross_sell_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `entity_files`
--
ALTER TABLE `entity_files`
  ADD CONSTRAINT `entity_files_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `flash_sale_products`
--
ALTER TABLE `flash_sale_products`
  ADD CONSTRAINT `flash_sale_products_flash_sale_id_foreign` FOREIGN KEY (`flash_sale_id`) REFERENCES `flash_sales` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `flash_sale_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `flash_sale_product_orders`
--
ALTER TABLE `flash_sale_product_orders`
  ADD CONSTRAINT `flash_sale_product_orders_flash_sale_product_id_foreign` FOREIGN KEY (`flash_sale_product_id`) REFERENCES `flash_sale_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `flash_sale_product_orders_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `flash_sale_translations`
--
ALTER TABLE `flash_sale_translations`
  ADD CONSTRAINT `flash_sale_translations_flash_sale_id_foreign` FOREIGN KEY (`flash_sale_id`) REFERENCES `flash_sales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_items_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `menu_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_item_translations`
--
ALTER TABLE `menu_item_translations`
  ADD CONSTRAINT `menu_item_translations_menu_item_id_foreign` FOREIGN KEY (`menu_item_id`) REFERENCES `menu_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_translations`
--
ALTER TABLE `menu_translations`
  ADD CONSTRAINT `menu_translations_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `meta_data_translations`
--
ALTER TABLE `meta_data_translations`
  ADD CONSTRAINT `meta_data_translations_meta_data_id_foreign` FOREIGN KEY (`meta_data_id`) REFERENCES `meta_data` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `option_translations`
--
ALTER TABLE `option_translations`
  ADD CONSTRAINT `option_translations_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `option_values`
--
ALTER TABLE `option_values`
  ADD CONSTRAINT `option_values_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `option_value_translations`
--
ALTER TABLE `option_value_translations`
  ADD CONSTRAINT `option_value_translations_option_value_id_foreign` FOREIGN KEY (`option_value_id`) REFERENCES `option_values` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_product_options`
--
ALTER TABLE `order_product_options`
  ADD CONSTRAINT `order_product_options_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_product_options_order_product_id_foreign` FOREIGN KEY (`order_product_id`) REFERENCES `order_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_product_option_values`
--
ALTER TABLE `order_product_option_values`
  ADD CONSTRAINT `order_product_option_values_option_value_id_foreign` FOREIGN KEY (`option_value_id`) REFERENCES `option_values` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_product_option_values_order_product_option_id_foreign` FOREIGN KEY (`order_product_option_id`) REFERENCES `order_product_options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_taxes`
--
ALTER TABLE `order_taxes`
  ADD CONSTRAINT `order_taxes_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_taxes_tax_rate_id_foreign` FOREIGN KEY (`tax_rate_id`) REFERENCES `tax_rates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `page_translations`
--
ALTER TABLE `page_translations`
  ADD CONSTRAINT `page_translations_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `persistences`
--
ALTER TABLE `persistences`
  ADD CONSTRAINT `persistences_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD CONSTRAINT `product_attributes_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_attributes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  ADD CONSTRAINT `product_attribute_values_attribute_value_id_foreign` FOREIGN KEY (`attribute_value_id`) REFERENCES `attribute_values` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_attribute_values_product_attribute_id_foreign` FOREIGN KEY (`product_attribute_id`) REFERENCES `product_attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD CONSTRAINT `product_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_categories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_options`
--
ALTER TABLE `product_options`
  ADD CONSTRAINT `product_options_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_options_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD CONSTRAINT `product_tags_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_translations`
--
ALTER TABLE `product_translations`
  ADD CONSTRAINT `product_translations_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `related_products`
--
ALTER TABLE `related_products`
  ADD CONSTRAINT `related_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `related_products_related_product_id_foreign` FOREIGN KEY (`related_product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reminders`
--
ALTER TABLE `reminders`
  ADD CONSTRAINT `reminders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_translations`
--
ALTER TABLE `role_translations`
  ADD CONSTRAINT `role_translations_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `setting_translations`
--
ALTER TABLE `setting_translations`
  ADD CONSTRAINT `setting_translations_setting_id_foreign` FOREIGN KEY (`setting_id`) REFERENCES `settings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `slider_slides`
--
ALTER TABLE `slider_slides`
  ADD CONSTRAINT `slider_slides_slider_id_foreign` FOREIGN KEY (`slider_id`) REFERENCES `sliders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `slider_slide_translations`
--
ALTER TABLE `slider_slide_translations`
  ADD CONSTRAINT `slider_slide_translations_slider_slide_id_foreign` FOREIGN KEY (`slider_slide_id`) REFERENCES `slider_slides` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `slider_translations`
--
ALTER TABLE `slider_translations`
  ADD CONSTRAINT `slider_translations_slider_id_foreign` FOREIGN KEY (`slider_id`) REFERENCES `sliders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tag_translations`
--
ALTER TABLE `tag_translations`
  ADD CONSTRAINT `tag_translations_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tax_class_translations`
--
ALTER TABLE `tax_class_translations`
  ADD CONSTRAINT `tax_class_translations_tax_class_id_foreign` FOREIGN KEY (`tax_class_id`) REFERENCES `tax_classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD CONSTRAINT `tax_rates_tax_class_id_foreign` FOREIGN KEY (`tax_class_id`) REFERENCES `tax_classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tax_rate_translations`
--
ALTER TABLE `tax_rate_translations`
  ADD CONSTRAINT `tax_rate_translations_tax_rate_id_foreign` FOREIGN KEY (`tax_rate_id`) REFERENCES `tax_rates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `throttle`
--
ALTER TABLE `throttle`
  ADD CONSTRAINT `throttle_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `translation_translations`
--
ALTER TABLE `translation_translations`
  ADD CONSTRAINT `translation_translations_translation_id_foreign` FOREIGN KEY (`translation_id`) REFERENCES `translations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_sell_products`
--
ALTER TABLE `up_sell_products`
  ADD CONSTRAINT `up_sell_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_sell_products_up_sell_product_id_foreign` FOREIGN KEY (`up_sell_product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wish_lists`
--
ALTER TABLE `wish_lists`
  ADD CONSTRAINT `wish_lists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wish_lists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
