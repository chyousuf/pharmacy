-- phpMyAdmin SQL Dump
-- version 4.0.10.18
-- https://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jul 16, 2018 at 06:11 AM
-- Server version: 5.6.39-cll-lve
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pharmacy_121`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_07_11_123801_create_pharmacies_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pharmacies`
--

CREATE TABLE IF NOT EXISTS `pharmacies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `place_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `place_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `place_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `place_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `place_lat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `place_lng` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=308 ;

--
-- Dumping data for table `pharmacies`
--

INSERT INTO `pharmacies` (`id`, `place_id`, `place_name`, `place_address`, `place_number`, `place_lat`, `place_lng`, `created_at`, `updated_at`, `user_id`, `count`) VALUES
(252, 'ChIJ1_wMLRIEGTkRvAnVbpSQvhw', 'Servaid Pharmacy', 'Model Town Circular Road, Model Town, Lahore, Punjab, Pakistan', '(042) 111 626 364', '31.48910429999999', '74.32611899999999', '2018-07-16 15:42:38', '2018-07-16 19:02:56', NULL, 3),
(253, 'ChIJjeg-_RMEGTkRCLZAKWKsKYY', 'Shifa Pharmacy', 'Model Town Circular Road, Block B Model Town, Lahore, Punjab, Pakistan', '(042) 35887780', '31.48902389999999', '74.32886429999999', '2018-07-16 15:42:38', '2018-07-16 16:35:21', NULL, NULL),
(254, 'ChIJ2R1A7RkEGTkRtv-Dt1EonkM', 'Aziz Son''s Pharma Plus', 'Model Town, Lahore, Punjab, Pakistan', '0321 5767111', '31.4821017', '74.3302406', '2018-07-16 15:42:38', '2018-07-16 16:35:22', NULL, NULL),
(255, 'ChIJ34vBVREEGTkRiebbWA4HLVo', 'Waqar Medics', '2 Model Town Circular Road, Block B Model Town, Lahore, Punjab, Pakistan', NULL, '31.4887883', '74.3290758', '2018-07-16 15:42:38', '2018-07-16 16:35:22', NULL, NULL),
(256, 'ChIJ-f___xsEGTkRgBsXrkaQUGk', 'Afaq', '77C Block Market، Model Town, Lahore, Punjab, Pakistan', '0321 4168008', '31.4777367', '74.3294198', '2018-07-16 15:42:38', '2018-07-16 16:35:22', NULL, NULL),
(257, 'ChIJTyHhuX0FGTkRUvFX3AS5D08', 'Fazal & Sons Pharmacy', 'Block D Model Town, Lahore, Punjab, Pakistan', '0316 4001207', '31.49026989999999', '74.31832519999999', '2018-07-16 15:42:38', '2018-07-16 16:35:22', NULL, NULL),
(258, 'ChIJf6tLf1MDGTkRLuh5l7-WFGE', 'Clinix Pharmacy', 'Chauburgi Roundabout، Lower Mall Police Station، Lower Mall Road، Mazang, Lahore, Punjab 54000, Pakistan', NULL, '31.55532849999999', '74.3055636', '2018-07-16 16:30:40', '2018-07-16 16:36:17', NULL, NULL),
(259, 'ChIJV60OhlMDGTkR4C1lefYKnKM', 'DHAMI (VET) MEDICOS', 'Iftikhar Building,Bahwalsher Road,Chauburji, Mazang, Lahore, Punjab 54000, Pakistan', '0300 4290130', '31.55488949999999', '74.3058724', '2018-07-16 16:30:40', '2018-07-16 16:36:17', NULL, NULL),
(260, 'ChIJ6Qa5flMDGTkR5trCor_TXYU', 'Mahmood Pharmacy', 'chuburji chowk, Lake Road, Mazang, Lahore, Punjab 54000, Pakistan', '(042) 37232152', '31.5557417', '74.3056203', '2018-07-16 16:30:40', '2018-07-16 16:36:17', NULL, NULL),
(261, 'ChIJi3gF91MDGTkRpAE_6HaXLdw', 'Pakistan Pharmacy', 'Bahawalpur Rd, Chauburji, Mazang, Lahore, Punjab 54000, Pakistan', NULL, '31.5535266', '74.3057366', '2018-07-16 16:30:40', '2018-07-16 16:36:17', NULL, NULL),
(262, 'ChIJk1jmCVQDGTkRwpz4hJsctpA', 'Wafaq Life Care Pharmcay', 'Mazang, Lahore, Punjab 54000, Pakistan', NULL, '31.5537011', '74.3059893', '2018-07-16 16:30:40', '2018-07-16 19:10:32', NULL, 2),
(263, 'ChIJfezRg1MDGTkRQMcBR-2Po6c', 'Linx Pharmacy', 'Mazang, Lahore, Punjab 54000, Pakistan', NULL, '31.5552574', '74.3055471', '2018-07-16 16:30:40', '2018-07-16 16:36:17', NULL, NULL),
(264, 'ChIJpfpVeFQDGTkREq6PwviyT6k', 'Bio Solutions', 'Poultry Medicine Markete Chuburji, Mazang, Lahore, Punjab 54000, Pakistan', '(042) 37114545', '31.5550043', '74.3061178', '2018-07-16 16:30:40', '2018-07-16 16:36:18', NULL, NULL),
(265, 'ChIJRa-2flQDGTkRflNTOFSHJkg', 'URFI MEDICOSE', 'Iftikhar building chouburji، Mazang, Lahore, Punjab 54000, Pakistan', '(042) 37353363', '31.5552206', '74.30624990000001', '2018-07-16 16:30:40', '2018-07-16 16:36:18', NULL, NULL),
(266, 'ChIJFT4-fFQDGTkRXQSewpO89z0', 'AJWA PHARMACIA', '23 BUILDING, Justice Iftikhar Chaudhry Complex, 15 Fane Rd, Mazang, Lahore, Punjab 54000, Pakistan', NULL, '31.5553069', '74.3063961', '2018-07-16 16:30:40', '2018-07-16 16:36:18', NULL, NULL),
(267, 'ChIJ_eGpCVUDGTkR5S9EUuEO9V4', 'Al-Madina Medical Store', 'Lytton Rd, Muslim Ganj, Mozang, Lahore, Punjab, Muslim Gunj Mazang, Lahore, Punjab 54000, Pakistan', NULL, '31.55616760000001', '74.30983189999999', '2018-07-16 16:30:40', '2018-07-16 16:36:18', NULL, NULL),
(268, 'ChIJz9P4eFUDGTkRf5KMI6Wz2eI', 'Billal Medical Store', 'Lytton Road, Mazang, Lahore, Punjab 54000, Pakistan', '0333 4174751', '31.5563262', '74.3112807', '2018-07-16 16:30:40', '2018-07-16 16:36:18', NULL, NULL),
(269, 'ChIJkcxR4qwcGTkR1ZFnSZBRByY', 'Ali Hajvery Pharma & Clinic', '250-Riwaz Garden Market, Rewaz Garden Rewaz Gardens, Lahore, Punjab 54000, Pakistan', '(042) 37171399', '31.55983679999999', '74.3031563', '2018-07-16 16:30:40', '2018-07-16 16:36:18', NULL, NULL),
(270, 'ChIJhwqB06ocGTkR51OjxlkLID0', 'Hamdard Laboratory', 'Lytton Road, Mazang, Lahore, Punjab 54000, Pakistan', NULL, '31.5588903', '74.3092711', '2018-07-16 16:30:40', '2018-07-16 16:36:18', NULL, NULL),
(271, 'ChIJ_1Yiw6ocGTkRgl9T-7e5rQ8', 'Hudebia Hostel', '4-A Lytton Road, Mazang, Lahore, Punjab 54000, Pakistan', NULL, '31.5599533', '74.30969', '2018-07-16 16:30:40', '2018-07-16 16:36:18', NULL, NULL),
(272, 'ChIJ_75Zd1ADGTkRAIckO67kIBQ', 'Hassan Medical Store', 'Poonch Rd, Islamia Park Lahore, Punjab 54000, Pakistan', NULL, '31.5469292', '74.30228160000001', '2018-07-16 16:30:40', '2018-07-16 16:36:18', NULL, NULL),
(273, 'ChIJp1MKNKgEGTkRduFAQTV2Czo', 'Shifa medical store', 'Saadi Park Mazang, Lahore, Punjab 54000, Pakistan', '0321 6533879', '31.5505444', '74.3129319', '2018-07-16 16:30:40', '2018-07-16 16:36:18', NULL, NULL),
(274, 'ChIJldcJnVoDGTkR3MDt6AHF4No', 'Latif Medical Store', 'Poonch Rd, Islamia Park Arya Nagar, Lahore, Punjab 54000, Pakistan', '(042) 37583825', '31.5465623', '74.3021049', '2018-07-16 16:30:40', '2018-07-16 16:36:18', NULL, NULL),
(275, 'ChIJC-8Ota0cGTkRG8Ldg05GvUo', 'Raheem Hospital', 'Sanda Rd, Muslim Ganj, Islampura, Lahore, Punjab, Rewaz Gardens, Lahore, Punjab 54000, Pakistan', NULL, '31.5619595', '74.3028686', '2018-07-16 16:30:40', '2018-07-16 16:36:18', NULL, NULL),
(276, 'ChIJZRcZuEwDGTkRRvi7oEcydHM', 'Aziz Medical Store', 'Rajgarh Rd, Sanda, Sham Nagar Sanda, Lahore, Punjab 54000, Pakistan', NULL, '31.5562698', '74.29561029999999', '2018-07-16 16:30:40', '2018-07-16 16:36:19', NULL, NULL),
(277, 'ChIJN-igHjQDGTkRrB8YhgvEje4', 'PharmaShop.pk', '267 ‏Main Blvd Gulshan-e-Ravi, Block C Gulshan-e-Ravi, Lahore, Punjab 54500, Pakistan', '0300 9450498', '31.5501992', '74.2835944', '2018-07-16 16:36:48', '2018-07-16 17:05:25', NULL, NULL),
(278, 'ChIJtT6OezYDGTkRGuv8Ty7Ke1I', 'Mahmood Pharmacy', '‏Main Blvd Gulshan-e-Ravi, A Block Block A Gulshan-e-Ravi, Lahore, Punjab 54000, Pakistan', '(042) 37413166', '31.5497213', '74.2856884', '2018-07-16 16:36:48', '2018-07-16 17:05:25', NULL, NULL),
(279, 'ChIJFT-WFzYDGTkRyAETWKRP51U', 'Servaid Pharmacy', '141-A,Gulshan-e-Ravi Rd، A Block Block A Gulshan-e-Ravi, Lahore, Punjab 54500, Pakistan', '(042) 111 626 364', '31.5491407', '74.28753379999999', '2018-07-16 16:36:48', '2018-07-16 17:05:25', NULL, NULL),
(280, 'ChIJb_4vFzIDGTkR-e1Spf-tlnE', 'Pharma +', 'F-Block ‏Main Blvd Gulshan-e-Ravi, F Block Block F Gulshan-e-Ravi, Lahore, Punjab 54000, Pakistan', '(042) 37808078', '31.5499138', '74.2787579', '2018-07-16 16:36:48', '2018-07-16 17:05:25', NULL, NULL),
(281, 'ChIJpx4rXMscGTkRv254ERaZzbY', 'Shan Medical Store', 'Malik Munir Rd, Sanda Kalan, Sanda, Sanda Block D 1 Gulshan-e-Ravi, Lahore, Punjab 54000, Pakistan', '0300 4650470', '31.5566049', '74.2828656', '2018-07-16 16:36:48', '2018-07-16 17:05:26', NULL, NULL),
(282, 'ChIJW9N2ZMwcGTkRKgLGdW27PwU', 'Al-Shifa Medical Store', 'Afzal Rd, Sanda Kalan, Sanda, Sanda Lahore, Punjab 54000, Pakistan', '0308 4271711', '31.5583755', '74.28151050000001', '2018-07-16 16:36:48', '2018-07-16 17:05:26', NULL, NULL),
(283, 'ChIJU3EZGDYDGTkR0cwTGyfV8T0', 'Zee Pharmacy', '‏Main Blvd Gulshan-e-Ravi, A Block Block A Gulshan-e-Ravi, Lahore, Punjab 54000, Pakistan', NULL, '31.5491098', '74.2876531', '2018-07-16 16:36:48', '2018-07-16 17:05:26', NULL, NULL),
(284, 'ChIJIf46g0oDGTkRHhEu7Of3mR0', 'Medi Link Pharmacy', 'Malik Munir Rd, Block D Gulshan-e-Ravi, Lahore, Punjab 54000, Pakistan', '(042) 37401443', '31.5539726', '74.2885932', '2018-07-16 16:36:48', '2018-07-16 17:05:26', NULL, NULL),
(285, 'ChIJpXM4pjQDGTkRrXae8RUdFYc', 'Multazim Pharma', 'A Block Block A Gulshan-e-Ravi, Lahore, Punjab 54000, Pakistan', '0320 4182669', '31.5470623', '74.2866488', '2018-07-16 16:36:48', '2018-07-16 17:05:26', NULL, NULL),
(286, 'ChIJMajfmkoDGTkRxjpnNP14Aro', 'Solution Z Pharmacy', 'Khawaja Fareed Rd Lahore Punjab, D Block Block D Gulshan-e-Ravi, Lahore, Punjab 54000, Pakistan', '0321 4458538', '31.5541432', '74.28891279999999', '2018-07-16 16:36:48', '2018-07-16 17:05:26', NULL, NULL),
(287, 'ChIJZ1l23UkDGTkR3N53IVkxttE', 'Universal Pharmacy and Superstore', '‏Main Blvd Gulshan-e-Ravi, Muqaddas Park Block B Gulshan-e-Ravi, Lahore, Punjab 54000, Pakistan', NULL, '31.5491407', '74.2889138', '2018-07-16 16:36:48', '2018-07-16 17:05:27', NULL, NULL),
(288, 'ChIJQ9Z03EkDGTkRhjoLnlqWw4Q', 'Medilink Pharmacy', '‏Main Blvd Gulshan-e-Ravi, A Block Block A Gulshan-e-Ravi, Lahore, Punjab 54000, Pakistan', NULL, '31.5488498', '74.2888138', '2018-07-16 16:36:48', '2018-07-16 17:05:27', NULL, NULL),
(289, 'ChIJm9ihEjoDGTkRJnzmSeQQbfs', 'Nawaz Pharmacy', 'بابو صابو - نوناریاں روڈ، Shera Kot, Lahore, Punjab 54000, Pakistan', '0333 4284443', '31.5433415', '74.2811102', '2018-07-16 16:36:48', '2018-07-16 17:05:27', NULL, NULL),
(290, 'ChIJBbB6wy0BGTkRIENqBVq0LmI', 'Mushtaq & Sons Pharma Plus', '757 Main Road Green Town، Sector D2 Sector D 2 Block 1 Green Town, Lahore, Punjab, Pakistan', '0323 4788174', '31.4342314', '74.3068282', '2018-07-16 17:06:52', '2018-07-16 18:20:00', 12, NULL),
(291, 'ChIJS1Vm5iwBGTkRtLlorbSSjLs', 'New Awan Medical Store', 'Sector D2 Sector D 2 Block 5 Green Town, Lahore, Punjab, Pakistan', '0320 6666162', '31.4333691', '74.3089576', '2018-07-16 17:06:52', '2018-07-16 18:20:00', 12, NULL),
(292, 'ChIJ06JWuGYBGTkRw1xnJCOzrxM', 'Zulcaif Pharmacy', '678, Sector D2 Sector D 2 Block 1 Green Town, Lahore, Punjab, Pakistan', '0323 3332716', '31.4340301', '74.3045739', '2018-07-16 17:06:52', '2018-07-16 18:20:00', 12, NULL),
(293, 'ChIJ03iVaC0BGTkRDnIcTpjBsVc', 'Faizan Medical Store', 'Sector D2 Sector D 2 Block 3 Green Town, Lahore, Punjab, Pakistan', '0321 4792672', '31.435565', '74.31008109999999', '2018-07-16 17:06:52', '2018-07-16 18:20:00', 12, NULL),
(294, 'ChIJVVVVlS0BGTkR2uXf7PzZzqg', 'Al-Siddiqe Pharmacy', '377-4-D2, Main Itwar Bazar Road، Sector D2 Sector D 2 Block 4 Green Town, Lahore, Punjab 54000, Pakistan', '0300 4064895', '31.436341', '74.3106392', '2018-07-16 17:06:52', '2018-07-16 18:20:00', 12, NULL),
(295, 'ChIJAQAAQC4BGTkRU3aMMOqexPQ', 'Convenience Plus Pharmacy & Healthcare', 'Sector D2 Sector D 2 Block 4 Green Town, Lahore, Punjab, Pakistan', '0335 0444072', '31.43373960000001', '74.3123864', '2018-07-16 17:06:52', '2018-07-16 18:20:00', 12, NULL),
(296, 'ChIJ02pHPTEBGTkRg62iXa8Si-c', 'Sohail ashraf medical store', '537-2-d2 azmat chowk green town lahore، Sector D2 Sector D 2 Block 2 Green Town, Azmat chowk green town lahore, Lahore, Punjab 54000, Pakistan', '000000000', '31.4359838', '74.3025529', '2018-07-16 17:06:52', '2018-07-16 18:20:01', 12, NULL),
(297, 'ChIJKwXTzjIBGTkRfEA39Mhfbxo', 'Okara Medical Store', 'Sector D1 Block 5 Twp Sector D 1 Township, Lahore, Punjab, Pakistan', NULL, '31.4382394', '74.3113034', '2018-07-16 17:06:52', '2018-07-16 18:20:01', 12, NULL),
(298, 'ChIJW6Pp4S8BGTkR769ZkRrZF7s', 'Mahmood Sons Pharmacy', 'Bagrian Rd, Block 6 Twp Sector C 2 Township, Lahore, Punjab, Pakistan', '0321 8861977', '31.435207', '74.3012107', '2018-07-16 17:06:52', '2018-07-16 18:20:01', 12, NULL),
(299, 'ChIJK25z0DIBGTkRNB0gcAOfNzM', 'Health Care Pharmacy', 'House no 80 Shop no 1 block no 5 Sector D1 green town، Sector D1 Block 5 Twp Sector D 1 Township, Lahore, Punjab 54770, Pakistan', NULL, '31.438834', '74.31166999999999', '2018-07-16 17:06:52', '2018-07-16 18:20:01', 12, NULL),
(300, 'ChIJ6-Aghi8BGTkR5eGLwZeBf5U', 'City Pharmacy', 'Bagrian Rd, Sector D2 Sector D 2 Block 1 Green Town, Lahore, Punjab, Pakistan', '0321 6944484', '31.4330221', '74.30034599999999', '2018-07-16 17:06:52', '2018-07-16 18:20:01', 12, NULL),
(301, 'ChIJCe3Jhi8BGTkRHeGaqgBkQ-4', 'Usama Medical Store', 'Madar-e-Millat Road, Sector D2 Sector D 2 Block 1 Green Town, Lahore, Punjab, Pakistan', NULL, '31.4327103', '74.30035769999999', '2018-07-16 17:06:52', '2018-07-16 18:20:01', 12, NULL),
(302, 'ChIJ0VqDgC8BGTkRauMKmX0GxZk', 'Awan Medicos', 'Bagharian Chowk,, Sector D 2 Block 6 Green Town, Lahore, Punjab, Pakistan', '0321 9423995', '31.4325204', '74.300108', '2018-07-16 17:06:52', '2018-07-16 18:20:01', 12, NULL),
(303, 'ChIJA3YbgCUBGTkRW1zUauHH9OY', 'Madina Medical Store', 'Sector D 2 Block 6 Green Town, Lahore, Punjab, Pakistan', NULL, '31.4322706', '74.30003049999999', '2018-07-16 17:06:52', '2018-07-16 18:20:01', 12, NULL),
(304, 'ChIJ_3iKkjoBGTkRwhcyDM17ziE', 'Al Shifaa Homeopathic Clinic', 'Awan Road, Block 4 Twp Sector C 2 Township, Lahore, Punjab 54600, Pakistan', '0322 8457620', '31.4369421', '74.2988037', '2018-07-16 17:06:52', '2018-07-16 18:20:01', 12, NULL),
(305, 'ChIJO_1xKCUBGTkR4B6A1LN5luc', 'Mediway Pharmacy', 'Block 4 Twp Sector C 2 Township, Lahore, Punjab, Pakistan', '0332 4287885', '31.43408290000001', '74.2972715', '2018-07-16 17:06:52', '2018-07-16 18:20:01', 12, NULL),
(306, 'ChIJPTljnDYBGTkRvfg5UKbpzQU', 'Pharmacy Hall', 'Sadiq Chowk, Chaudhary Rahmat Ali Road, Sector C1 Block 3 Twp Sector C 1 Township, Lahore, Punjab, Pakistan', NULL, '31.4432509', '74.30563769999999', '2018-07-16 17:06:52', '2018-07-16 18:20:01', 12, NULL),
(307, 'ChIJwxKTRzQBGTkRfiPuO--hOXU', 'Haji Shafi Medical Store', 'Sector D1 Block 1 Twp Sector D 1 Township, Lahore, Punjab, Pakistan', '0322 4840685', '31.4435765', '74.307484', '2018-07-16 17:06:52', '2018-07-16 18:20:01', 12, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pharmacy_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lng` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `close_hr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_hr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `pharmacy_name`, `email`, `password`, `contact_details`, `location`, `lat`, `lng`, `remember_token`, `created_at`, `updated_at`, `website`, `close_hr`, `start_hr`) VALUES
(1, 'yousuf', 'ch@gmail.com', '123456', 'dffddffgdfgdfg', 'lahore', '32.333', '2233.222', NULL, '2018-07-07 00:31:23', '2018-07-07 00:31:23', NULL, NULL, NULL),
(3, 'yousuf', 'ch3@gmail.com', '123456', 'dffddffgdfgdfg', 'lahore', '32.333', '2233.222', NULL, '2018-07-08 00:06:08', '2018-07-08 00:06:08', NULL, NULL, NULL),
(4, 'yousuf', 'ch6@gmail.com', '123456', 'dffddffgdfgdfg', 'lahore', '32.333', '2233.222', NULL, '2018-07-08 00:39:16', '2018-07-08 00:39:16', NULL, NULL, NULL),
(5, 'yousuf', 'ch64@gmail.com', '123456', 'dffddffgdfgdfg', 'lahore', '32.333', '2233.222', NULL, '2018-07-09 08:12:33', '2018-07-09 08:12:33', NULL, NULL, NULL),
(6, 'yousuf', 'ch646@gmail.com', '123456', 'dffddffgdfgdfg', 'lahore', '32.333', '2233.222', NULL, '2018-07-09 08:13:25', '2018-07-09 08:13:25', NULL, NULL, NULL),
(7, 'yousuf', 'ch6456@gmail.com', '123456', 'dffddffgdfgdfg', 'lahore', '32.333', '2233.222', NULL, '2018-07-09 08:13:55', '2018-07-09 08:13:55', NULL, NULL, NULL),
(8, 'yousuf', 'ch64546@gmail.com', '123456', 'dffddffgdfgdfg', 'lahore', '32.333', '2233.222', NULL, '2018-07-09 08:14:21', '2018-07-09 08:14:21', NULL, NULL, NULL),
(9, 'yousufyyyy', 'ch6450455556@gmail.com', '123456yy', 'dffddffgdfgdfgtt', 'lahorett', '32.333', '2233.222', NULL, '2018-07-09 08:14:49', '2018-07-16 19:06:46', 'website', '10:00', '22:00'),
(10, 'yousuf', 'ch656676@gmail.com', '123456', 'dffddffgdfgdfg', 'lahore', '32.333', '2233.222', NULL, '2018-07-13 19:09:55', '2018-07-13 19:09:55', NULL, NULL, NULL),
(11, 'yousuf', 'ch16@gmail.com', '123456', 'dffddffgdfgdfg', 'lahore', '32.333', '2233.222', NULL, '2018-07-13 23:34:13', '2018-07-13 23:34:13', 'www.google.com', '10', NULL),
(12, 'yousufyyyy', 'ch6450455556@gmail.com', '123456yy', 'dffddffgdfgdfgtt', 'lahorett', '32.333', '2233.222', NULL, '2018-07-13 23:35:13', '2018-07-16 16:38:23', NULL, NULL, NULL),
(13, 'shani pharma', 'faisal@g.com', '123456', '03214148671', 'Hall Rd, Lahore, Punjab, Pakistan', '31.4730552', '74.34723', NULL, '2018-07-15 13:31:15', '2018-07-15 13:31:15', NULL, '22:00', '10:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
