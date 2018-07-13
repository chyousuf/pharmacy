-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2018 at 09:34 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_07_11_123801_create_pharmacies_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pharmacies`
--

CREATE TABLE `pharmacies` (
  `id` int(10) UNSIGNED NOT NULL,
  `place_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `place_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `place_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `place_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `place_lat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `place_lng` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pharmacies`
--

INSERT INTO `pharmacies` (`id`, `place_id`, `place_name`, `place_address`, `place_number`, `place_lat`, `place_lng`, `created_at`, `updated_at`) VALUES
(65, 'ChIJy_TZlMkaGTkR8IrzEfPMTpU', 'Fazal Din\'s Pharma Plus', 'Shalimar Larechs Colony, Lahore, Punjab 54000, Pakistan', NULL, '31.5742537', '74.3807029', '2018-07-13 02:07:32', '2018-07-13 02:07:35'),
(66, 'ChIJW0tOiCYFGTkRKzWgqcQFiwE', 'Bhai Bhai Medical Store', 'Allama Iqbal Road، Dharampura, Lahore, Punjab, Pakistan', NULL, '31.5515707', '74.363334', '2018-07-13 02:07:32', '2018-07-13 02:07:37'),
(67, 'ChIJX8g6bXQGGTkRQtYnRAh9_fI', 'Guardian Pharmacy DHA', 'Y-Block Street 10 DHA, Lahore Pakistan، Sector Y DHA Phase 3, Lahore, Punjab, Pakistan', '0300 8445660', '31.4734926', '74.3778598', '2018-07-13 02:07:32', '2018-07-13 02:07:39'),
(68, 'ChIJicJ4lVUBGTkRN0pwVi0_u50', 'Clinix', 'Near Akbar Chowk، Abul Hassan Isfahani Rd, Block D Faisal Town, Lahore, Punjab, Pakistan', '(042) 35173535', '31.4681338', '74.3075434', '2018-07-13 02:07:32', '2018-07-13 02:07:43'),
(69, 'ChIJZQkq-AoHGTkRXPxNo11yTLg', 'BM Private Limited', '22-Anuam Road, Industrial Estate Glaxo Town, 20th KM, Ferozepur Road، Lahore–Kasur Rd, Glaxo Town, Lahore, Punjab, Pakistan', '(042) 35950401', '31.4110247', '74.3571156', '2018-07-13 02:07:32', '2018-07-13 02:07:44'),
(70, 'ChIJ4YELQvkDGTkRPYoXXPP5QyQ', 'Masood Pharmacy', 'Qazi Muhammad Isa Rd, Block B Faisal Town, Lahore, Punjab, Pakistan', '0345 4004202', '31.4764059', '74.3068651', '2018-07-13 02:07:33', '2018-07-13 02:07:45'),
(71, 'ChIJl4JXZmocGTkRqmLgB1ihr2Y', 'Pharmagen Pharmacy', 'Jeti Rd, Shahdara Town, Shahdara, Lahore, Punjab, Pakistan', NULL, '31.6196795', '74.2896604', '2018-07-13 02:07:33', '2018-07-13 02:07:47'),
(72, 'ChIJ2-zer8n_GDkR5DdE-P-lkX0', 'Arsons Pharmaceutical Industries Pvt. Ltd.', 'Block M Lda Avenue Phase 1 Lda Avenue, Lahore, Punjab, Pakistan', NULL, '31.4032608', '74.1969294', '2018-07-13 02:07:33', '2018-07-13 02:07:47'),
(73, 'ChIJ2YRFTKsGGTkRpxvwEyVfKS4', 'Dr. Masood & Sons', 'Mochi Pura Stop، Maulana Shaukat Ali Road، Sector B-1 Block 1 Sector B 1 Township, Lahore, Punjab 54600, Pakistan', NULL, '31.465347', '74.3120639', '2018-07-13 02:07:33', '2018-07-13 02:07:48'),
(74, 'ChIJP_z7N3sBGTkRaWDaZhfvvyc', 'Selmore Pharmaceuticals', 'Service Rd, Block R1 Block R 1 Phase 2 Johar Town, Lahore, Punjab, Pakistan', '(042) 35291775', '31.4582564', '74.27600790000001', '2018-07-13 02:07:33', '2018-07-13 02:07:49'),
(75, 'ChIJ0ZFj0gH-GDkRqzYx-LH95rs', 'Cure Pharmacy', '1- Canal Bank Road, Near Muhafiz Town، Mohlanwal Road, Block A Muhafiz Town, Lahore, Punjab, Pakistan', '(042) 37512560', '31.4549966', '74.2171244', '2018-07-13 02:07:33', '2018-07-13 02:07:51'),
(76, 'ChIJISvAdRMGGTkRy98mRp7S7Lc', 'Fazal Din\'s Pharma Plus', 'Defence Phase 4 (Franchise) 108-CCA، Commercial Area, Defence phase IV، DHA Phase 4 Sector CCA Dha Phase 4, Lahore, Punjab, Pakistan', '(042) 35742262', '31.46349099999999', '74.3850599', '2018-07-13 02:07:33', '2018-07-13 02:07:53'),
(77, 'ChIJlU32ZFQbGTkR91m0PYnNtrA', 'Fazal Din & Sons', '54 Service Road، Mazang, Lahore, Punjab 54000, Pakistan', '(042) 37313877', '31.5629973', '74.31670780000002', '2018-07-13 02:07:33', '2018-07-13 02:07:55'),
(78, 'ChIJlSbiT1gEGTkR1fimf18_WFY', 'ANTex', 'Suite No.32, 2nd Floor Al-Latif Center 88-D Main Boulevard Gulberg 3, Block D1 Block D 1 Gulberg III, Lahore, Punjab 54000, Pakistan', '0321 4001447', '31.5164448', '74.34472579999999', '2018-07-13 02:07:33', '2018-07-13 02:07:58'),
(79, 'ChIJf6tLf1MDGTkRLuh5l7-WFGE', 'Clinix Pharmacy', 'Chauburgi Roundabout، Lower Mall Police Station، Lower Mall Road، Mazang, Lahore, Punjab 54000, Pakistan', NULL, '31.55532849999999', '74.3055636', '2018-07-13 02:07:33', '2018-07-13 02:08:02'),
(80, 'ChIJBzkWR-4DGTkRI8gOG16qqM8', 'Green Pharmacy', 'Opp. Jinnah Hospital Usmani Road، Block A Faisal Town, Lahore, Punjab, Pakistan', '0304 1112244', '31.4830928', '74.2984262', '2018-07-13 02:07:33', '2018-07-13 02:08:04'),
(81, 'ChIJ92F21OAEGTkRxxzSRoQBMXA', 'Green Plus Pharmacie', 'Zafar Ali Rd, Gulberg V, Lahore, Punjab, Pakistan', '0304 1112244', '31.5395223', '74.35322839999999', '2018-07-13 02:07:33', '2018-07-13 02:08:05'),
(82, 'ChIJTxVGOP0FGTkRsopJ0kupLyI', 'Fazal Din\'s Pharma Plus H-Block', '5-h، Khyaban-e-Jinnah, Sector H Dha Phase 1, Lahore, Punjab, Pakistan', '(042) 35722032', '31.48162760000001', '74.3948966', '2018-07-13 02:07:33', '2018-07-13 02:08:05'),
(83, 'ChIJuYQaqBsDGTkRhv_87BJ_14k', 'GT Pharma', '313-B main blvd, sabzazar scheme, multan road, B Block Block B Sabzazar Housing Scheme Phase 1 & 2 Sabzazar, Lahore, Punjab 54000, Pakistan', '(042) 37449002', '31.5236007', '74.2729586', '2018-07-13 02:07:33', '2018-07-13 02:08:06'),
(84, 'ChIJ1_wMLRIEGTkRvAnVbpSQvhw', 'Servaid Pharmacy', 'Model Town Circular Road, Model Town, Lahore, Punjab, Pakistan', '(042) 111 626 364', '31.48910429999999', '74.32611899999999', '2018-07-13 02:07:33', '2018-07-13 02:08:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `pharmacy_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lng` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `pharmacy_name`, `email`, `password`, `contact_details`, `location`, `lat`, `lng`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'yousuf', 'ch@gmail.com', '123456', 'dffddffgdfgdfg', 'lahore', '32.333', '2233.222', NULL, '2018-07-07 00:31:23', '2018-07-07 00:31:23'),
(3, 'yousuf', 'ch3@gmail.com', '123456', 'dffddffgdfgdfg', 'lahore', '32.333', '2233.222', NULL, '2018-07-08 00:06:08', '2018-07-08 00:06:08'),
(4, 'yousuf', 'ch6@gmail.com', '123456', 'dffddffgdfgdfg', 'lahore', '32.333', '2233.222', NULL, '2018-07-08 00:39:16', '2018-07-08 00:39:16'),
(5, 'yousuf', 'ch64@gmail.com', '123456', 'dffddffgdfgdfg', 'lahore', '32.333', '2233.222', NULL, '2018-07-09 08:12:33', '2018-07-09 08:12:33'),
(6, 'yousuf', 'ch646@gmail.com', '123456', 'dffddffgdfgdfg', 'lahore', '32.333', '2233.222', NULL, '2018-07-09 08:13:25', '2018-07-09 08:13:25'),
(7, 'yousuf', 'ch6456@gmail.com', '123456', 'dffddffgdfgdfg', 'lahore', '32.333', '2233.222', NULL, '2018-07-09 08:13:55', '2018-07-09 08:13:55'),
(8, 'yousuf', 'ch64546@gmail.com', '123456', 'dffddffgdfgdfg', 'lahore', '32.333', '2233.222', NULL, '2018-07-09 08:14:21', '2018-07-09 08:14:21'),
(9, 'yousufyyyy', 'ch6450455556@gmail.com', '123456yy', 'dffddffgdfgdfgtt', 'lahorett', '32.333', '2233.222', NULL, '2018-07-09 08:14:49', '2018-07-09 09:03:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacies`
--
ALTER TABLE `pharmacies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pharmacies`
--
ALTER TABLE `pharmacies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
