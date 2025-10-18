-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 27, 2025 at 07:21 AM
-- Server version: 10.6.22-MariaDB
-- PHP Version: 8.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wealthmaxima_exam_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

CREATE TABLE `batches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `centre_id` bigint(20) UNSIGNED NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `batches`
--

INSERT INTO `batches` (`id`, `name`, `course_id`, `centre_id`, `start_date`, `end_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'BATCH 1(6 MONTH)', 1, 2, '0000-00-00', '0000-00-00', 1, '2024-12-05 11:29:55', '2024-12-05 11:29:55'),
(2, 'BATCH 1 (12 MONTH)', 2, 2, '0000-00-00', '0000-00-00', 1, '2024-12-05 11:30:18', '2024-12-05 11:30:29'),
(3, 'BATCH 2 (6 MONTH)', 1, 2, '0000-00-00', '0000-00-00', 1, '2024-12-05 11:31:02', '2024-12-05 11:31:02'),
(4, 'BATCH 2 (12 MONTH)', 2, 2, '0000-00-00', '0000-00-00', 1, '2024-12-05 11:31:27', '2024-12-05 11:31:27'),
(5, 'BATCH 3 (6 MONTH)', 1, 2, '0000-00-00', '0000-00-00', 1, '2024-12-05 11:31:55', '2024-12-05 11:31:55'),
(6, 'BATCH 3 ( 12 MONTH)', 2, 2, '0000-00-00', '0000-00-00', 1, '2024-12-05 11:32:23', '2024-12-05 11:32:23'),
(7, 'BATCH 4 ( 6 MONTH)', 1, 2, '0000-00-00', '0000-00-00', 1, '2024-12-05 11:32:48', '2024-12-05 11:32:48'),
(8, 'BATCH 4 (12 MONTH)', 2, 2, '0000-00-00', '0000-00-00', 1, '2024-12-05 11:33:14', '2024-12-05 11:33:14'),
(9, 'BATCH 5 (6 MONTH)', 1, 2, '0000-00-00', '0000-00-00', 1, '2024-12-05 11:33:40', '2024-12-05 11:33:40'),
(10, 'BATCH 5 (12 MONTH)', 2, 2, '0000-00-00', '0000-00-00', 1, '2024-12-05 11:34:05', '2024-12-05 11:34:05'),
(11, 'BATCH 6 ( 6 MONTH)', 1, 2, '0000-00-00', '0000-00-00', 1, '2024-12-05 11:34:26', '2024-12-05 11:34:26'),
(14, 'first batch', 8, 3, '2025-02-18', '2025-05-31', 1, '2025-02-18 06:59:33', '2025-02-18 06:59:59'),
(15, 'first batch', 1, 1, NULL, NULL, 1, '2025-06-06 04:39:57', '2025-06-06 04:39:57');

-- --------------------------------------------------------

--
-- Table structure for table `carosels`
--

CREATE TABLE `carosels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'HOSPITAL ADMINISTRATION', NULL, 1, '2024-12-01 04:47:38', '2024-12-05 11:07:57', NULL),
(2, 'LOGISTICS', NULL, 1, '2024-12-01 04:47:48', '2024-12-05 11:08:10', NULL),
(3, 'ACCOUNTING', NULL, 1, '2024-12-05 11:05:50', '2024-12-05 11:05:50', NULL),
(4, 'AVIATION', NULL, 1, '2024-12-05 11:06:01', '2024-12-05 11:06:01', NULL),
(5, 'BUSINESS ADMINISTRATION', NULL, 1, '2024-12-05 11:07:28', '2024-12-05 11:07:28', NULL),
(6, 'MS OFFICE', NULL, 1, '2025-02-17 10:09:54', '2025-02-17 10:09:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `centres`
--

CREATE TABLE `centres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `admin` bigint(20) UNSIGNED DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `centres`
--

INSERT INTO `centres` (`id`, `user_id`, `name`, `address`, `city`, `pincode`, `mobile`, `website`, `admin`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 20, 'wealthmaxima kadakkal', 'kadakkal,kollam', 'kollam', '695524', '9744896970', 'https://www.wealthmaxima.in/', 1, 1, '2024-10-22 23:25:14', '2024-10-23 00:05:03', NULL),
(2, 28, 'Wealthmaxima Nilamel', 'Qassim Centre Nilamel', 'kollam', '691535', '9544196970', 'https://www.wealthmaxima.in/', 1, 1, '2024-11-28 17:57:11', '2024-11-28 17:57:11', NULL),
(3, 29, 'Wealth Maxima College of Advanced Studies PMNA', 'Valamboor Poopalam Rd, , Valamboor', 'Perinthalmanna', '679325', '6235679325', 'wealthmaxima.in', 1, 1, '2024-11-29 06:12:34', '2024-11-29 06:12:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) DEFAULT NULL,
  `shortname` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phonecode` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `shortname`, `name`, `phonecode`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'AF', 'Afghanistan', 93, '2023-04-30 17:29:46', NULL, NULL),
(2, 'AL', 'Albania', 355, '2023-04-30 17:29:46', NULL, NULL),
(3, 'DZ', 'Algeria', 213, '2023-04-30 17:29:46', NULL, NULL),
(4, 'AS', 'American Samoa', 1684, '2023-04-30 17:29:46', NULL, NULL),
(5, 'AD', 'Andorra', 376, '2023-04-30 17:29:46', NULL, NULL),
(6, 'AO', 'Angola', 244, '2023-04-30 17:29:46', NULL, NULL),
(7, 'AI', 'Anguilla', 1264, '2023-04-30 17:29:46', NULL, NULL),
(8, 'AQ', 'Antarctica', 0, '2023-04-30 17:29:46', NULL, NULL),
(9, 'AG', 'Antigua And Barbuda', 1268, '2023-04-30 17:29:46', NULL, NULL),
(10, 'AR', 'Argentina', 54, '2023-04-30 17:29:46', NULL, NULL),
(11, 'AM', 'Armenia', 374, '2023-04-30 17:29:46', NULL, NULL),
(12, 'AW', 'Aruba', 297, '2023-04-30 17:29:46', NULL, NULL),
(13, 'AU', 'Australia', 61, '2023-04-30 17:29:46', NULL, NULL),
(14, 'AT', 'Austria', 43, '2023-04-30 17:29:46', NULL, NULL),
(15, 'AZ', 'Azerbaijan', 994, '2023-04-30 17:29:46', NULL, NULL),
(16, 'BS', 'Bahamas The', 1242, '2023-04-30 17:29:46', NULL, NULL),
(17, 'BH', 'Bahrain', 973, '2023-04-30 17:29:46', NULL, NULL),
(18, 'BD', 'Bangladesh', 880, '2023-04-30 17:29:46', NULL, NULL),
(19, 'BB', 'Barbados', 1246, '2023-04-30 17:29:46', NULL, NULL),
(20, 'BY', 'Belarus', 375, '2023-04-30 17:29:46', NULL, NULL),
(21, 'BE', 'Belgium', 32, '2023-04-30 17:29:46', NULL, NULL),
(22, 'BZ', 'Belize', 501, '2023-04-30 17:29:46', NULL, NULL),
(23, 'BJ', 'Benin', 229, '2023-04-30 17:29:46', NULL, NULL),
(24, 'BM', 'Bermuda', 1441, '2023-04-30 17:29:46', NULL, NULL),
(25, 'BT', 'Bhutan', 975, '2023-04-30 17:29:46', NULL, NULL),
(26, 'BO', 'Bolivia', 591, '2023-04-30 17:29:46', NULL, NULL),
(27, 'BA', 'Bosnia and Herzegovina', 387, '2023-04-30 17:29:46', NULL, NULL),
(28, 'BW', 'Botswana', 267, '2023-04-30 17:29:46', NULL, NULL),
(29, 'BV', 'Bouvet Island', 0, '2023-04-30 17:29:46', NULL, NULL),
(30, 'BR', 'Brazil', 55, '2023-04-30 17:29:46', NULL, NULL),
(31, 'IO', 'British Indian Ocean Territory', 246, '2023-04-30 17:29:46', NULL, NULL),
(32, 'BN', 'Brunei', 673, '2023-04-30 17:29:46', NULL, NULL),
(33, 'BG', 'Bulgaria', 359, '2023-04-30 17:29:46', NULL, NULL),
(34, 'BF', 'Burkina Faso', 226, '2023-04-30 17:29:46', NULL, NULL),
(35, 'BI', 'Burundi', 257, '2023-04-30 17:29:46', NULL, NULL),
(36, 'KH', 'Cambodia', 855, '2023-04-30 17:29:46', NULL, NULL),
(37, 'CM', 'Cameroon', 237, '2023-04-30 17:29:46', NULL, NULL),
(38, 'CA', 'Canada', 1, '2023-04-30 17:29:46', NULL, NULL),
(39, 'CV', 'Cape Verde', 238, '2023-04-30 17:29:46', NULL, NULL),
(40, 'KY', 'Cayman Islands', 1345, '2023-04-30 17:29:46', NULL, NULL),
(41, 'CF', 'Central African Republic', 236, '2023-04-30 17:29:46', NULL, NULL),
(42, 'TD', 'Chad', 235, '2023-04-30 17:29:46', NULL, NULL),
(43, 'CL', 'Chile', 56, '2023-04-30 17:29:46', NULL, NULL),
(44, 'CN', 'China', 86, '2023-04-30 17:29:46', NULL, NULL),
(45, 'CX', 'Christmas Island', 61, '2023-04-30 17:29:46', NULL, NULL),
(46, 'CC', 'Cocos (Keeling) Islands', 672, '2023-04-30 17:29:46', NULL, NULL),
(47, 'CO', 'Colombia', 57, '2023-04-30 17:29:46', NULL, NULL),
(48, 'KM', 'Comoros', 269, '2023-04-30 17:29:46', NULL, NULL),
(49, 'CG', 'Republic Of The Congo', 242, '2023-04-30 17:29:46', NULL, NULL),
(50, 'CD', 'Democratic Republic Of The Congo', 242, '2023-04-30 17:29:46', NULL, NULL),
(51, 'CK', 'Cook Islands', 682, '2023-04-30 17:29:46', NULL, NULL),
(52, 'CR', 'Costa Rica', 506, '2023-04-30 17:29:46', NULL, NULL),
(53, 'CI', 'Cote D\'Ivoire (Ivory Coast)', 225, '2023-04-30 17:29:46', NULL, NULL),
(54, 'HR', 'Croatia (Hrvatska)', 385, '2023-04-30 17:29:46', NULL, NULL),
(55, 'CU', 'Cuba', 53, '2023-04-30 17:29:46', NULL, NULL),
(56, 'CY', 'Cyprus', 357, '2023-04-30 17:29:46', NULL, NULL),
(57, 'CZ', 'Czech Republic', 420, '2023-04-30 17:29:46', NULL, NULL),
(58, 'DK', 'Denmark', 45, '2023-04-30 17:29:46', NULL, NULL),
(59, 'DJ', 'Djibouti', 253, '2023-04-30 17:29:46', NULL, NULL),
(60, 'DM', 'Dominica', 1767, '2023-04-30 17:29:46', NULL, NULL),
(61, 'DO', 'Dominican Republic', 1809, '2023-04-30 17:29:46', NULL, NULL),
(62, 'TP', 'East Timor', 670, '2023-04-30 17:29:46', NULL, NULL),
(63, 'EC', 'Ecuador', 593, '2023-04-30 17:29:46', NULL, NULL),
(64, 'EG', 'Egypt', 20, '2023-04-30 17:29:46', NULL, NULL),
(65, 'SV', 'El Salvador', 503, '2023-04-30 17:29:46', NULL, NULL),
(66, 'GQ', 'Equatorial Guinea', 240, '2023-04-30 17:29:46', NULL, NULL),
(67, 'ER', 'Eritrea', 291, '2023-04-30 17:29:46', NULL, NULL),
(68, 'EE', 'Estonia', 372, '2023-04-30 17:29:46', NULL, NULL),
(69, 'ET', 'Ethiopia', 251, '2023-04-30 17:29:46', NULL, NULL),
(70, 'XA', 'External Territories of Australia', 61, '2023-04-30 17:29:46', NULL, NULL),
(71, 'FK', 'Falkland Islands', 500, '2023-04-30 17:29:46', NULL, NULL),
(72, 'FO', 'Faroe Islands', 298, '2023-04-30 17:29:46', NULL, NULL),
(73, 'FJ', 'Fiji Islands', 679, '2023-04-30 17:29:46', NULL, NULL),
(74, 'FI', 'Finland', 358, '2023-04-30 17:29:46', NULL, NULL),
(75, 'FR', 'France', 33, '2023-04-30 17:29:46', NULL, NULL),
(76, 'GF', 'French Guiana', 594, '2023-04-30 17:29:46', NULL, NULL),
(77, 'PF', 'French Polynesia', 689, '2023-04-30 17:29:46', NULL, NULL),
(78, 'TF', 'French Southern Territories', 0, '2023-04-30 17:29:46', NULL, NULL),
(79, 'GA', 'Gabon', 241, '2023-04-30 17:29:46', NULL, NULL),
(80, 'GM', 'Gambia The', 220, '2023-04-30 17:29:46', NULL, NULL),
(81, 'GE', 'Georgia', 995, '2023-04-30 17:29:46', NULL, NULL),
(82, 'DE', 'Germany', 49, '2023-04-30 17:29:46', NULL, NULL),
(83, 'GH', 'Ghana', 233, '2023-04-30 17:29:46', NULL, NULL),
(84, 'GI', 'Gibraltar', 350, '2023-04-30 17:29:46', NULL, NULL),
(85, 'GR', 'Greece', 30, '2023-04-30 17:29:46', NULL, NULL),
(86, 'GL', 'Greenland', 299, '2023-04-30 17:29:46', NULL, NULL),
(87, 'GD', 'Grenada', 1473, '2023-04-30 17:29:46', NULL, NULL),
(88, 'GP', 'Guadeloupe', 590, '2023-04-30 17:29:46', NULL, NULL),
(89, 'GU', 'Guam', 1671, '2023-04-30 17:29:46', NULL, NULL),
(90, 'GT', 'Guatemala', 502, '2023-04-30 17:29:46', NULL, NULL),
(91, 'XU', 'Guernsey and Alderney', 44, '2023-04-30 17:29:46', NULL, NULL),
(92, 'GN', 'Guinea', 224, '2023-04-30 17:29:46', NULL, NULL),
(93, 'GW', 'Guinea-Bissau', 245, '2023-04-30 17:29:46', NULL, NULL),
(94, 'GY', 'Guyana', 592, '2023-04-30 17:29:46', NULL, NULL),
(95, 'HT', 'Haiti', 509, '2023-04-30 17:29:46', NULL, NULL),
(96, 'HM', 'Heard and McDonald Islands', 0, '2023-04-30 17:29:46', NULL, NULL),
(97, 'HN', 'Honduras', 504, '2023-04-30 17:29:46', NULL, NULL),
(98, 'HK', 'Hong Kong S.A.R.', 852, '2023-04-30 17:29:46', NULL, NULL),
(99, 'HU', 'Hungary', 36, '2023-04-30 17:29:46', NULL, NULL),
(100, 'IS', 'Iceland', 354, '2023-04-30 17:29:46', NULL, NULL),
(101, 'IN', 'India', 91, '2023-04-30 17:29:46', NULL, NULL),
(102, 'ID', 'Indonesia', 62, '2023-04-30 17:29:46', NULL, NULL),
(103, 'IR', 'Iran', 98, '2023-04-30 17:29:46', NULL, NULL),
(104, 'IQ', 'Iraq', 964, '2023-04-30 17:29:46', NULL, NULL),
(105, 'IE', 'Ireland', 353, '2023-04-30 17:29:46', NULL, NULL),
(106, 'IL', 'Israel', 972, '2023-04-30 17:29:46', NULL, NULL),
(107, 'IT', 'Italy', 39, '2023-04-30 17:29:46', NULL, NULL),
(108, 'JM', 'Jamaica', 1876, '2023-04-30 17:29:46', NULL, NULL),
(109, 'JP', 'Japan', 81, '2023-04-30 17:29:46', NULL, NULL),
(110, 'XJ', 'Jersey', 44, '2023-04-30 17:29:46', NULL, NULL),
(111, 'JO', 'Jordan', 962, '2023-04-30 17:29:46', NULL, NULL),
(112, 'KZ', 'Kazakhstan', 7, '2023-04-30 17:29:46', NULL, NULL),
(113, 'KE', 'Kenya', 254, '2023-04-30 17:29:46', NULL, NULL),
(114, 'KI', 'Kiribati', 686, '2023-04-30 17:29:46', NULL, NULL),
(115, 'KP', 'Korea North', 850, '2023-04-30 17:29:46', NULL, NULL),
(116, 'KR', 'Korea South', 82, '2023-04-30 17:29:46', NULL, NULL),
(117, 'KW', 'Kuwait', 965, '2023-04-30 17:29:46', NULL, NULL),
(118, 'KG', 'Kyrgyzstan', 996, '2023-04-30 17:29:46', NULL, NULL),
(119, 'LA', 'Laos', 856, '2023-04-30 17:29:46', NULL, NULL),
(120, 'LV', 'Latvia', 371, '2023-04-30 17:29:46', NULL, NULL),
(121, 'LB', 'Lebanon', 961, '2023-04-30 17:29:46', NULL, NULL),
(122, 'LS', 'Lesotho', 266, '2023-04-30 17:29:46', NULL, NULL),
(123, 'LR', 'Liberia', 231, '2023-04-30 17:29:46', NULL, NULL),
(124, 'LY', 'Libya', 218, '2023-04-30 17:29:46', NULL, NULL),
(125, 'LI', 'Liechtenstein', 423, '2023-04-30 17:29:46', NULL, NULL),
(126, 'LT', 'Lithuania', 370, '2023-04-30 17:29:46', NULL, NULL),
(127, 'LU', 'Luxembourg', 352, '2023-04-30 17:29:46', NULL, NULL),
(128, 'MO', 'Macau S.A.R.', 853, '2023-04-30 17:29:46', NULL, NULL),
(129, 'MK', 'Macedonia', 389, '2023-04-30 17:29:46', NULL, NULL),
(130, 'MG', 'Madagascar', 261, '2023-04-30 17:29:46', NULL, NULL),
(131, 'MW', 'Malawi', 265, '2023-04-30 17:29:46', NULL, NULL),
(132, 'MY', 'Malaysia', 60, '2023-04-30 17:29:46', NULL, NULL),
(133, 'MV', 'Maldives', 960, '2023-04-30 17:29:46', NULL, NULL),
(134, 'ML', 'Mali', 223, '2023-04-30 17:29:46', NULL, NULL),
(135, 'MT', 'Malta', 356, '2023-04-30 17:29:46', NULL, NULL),
(136, 'XM', 'Man (Isle of)', 44, '2023-04-30 17:29:46', NULL, NULL),
(137, 'MH', 'Marshall Islands', 692, '2023-04-30 17:29:46', NULL, NULL),
(138, 'MQ', 'Martinique', 596, '2023-04-30 17:29:46', NULL, NULL),
(139, 'MR', 'Mauritania', 222, '2023-04-30 17:29:46', NULL, NULL),
(140, 'MU', 'Mauritius', 230, '2023-04-30 17:29:46', NULL, NULL),
(141, 'YT', 'Mayotte', 269, '2023-04-30 17:29:46', NULL, NULL),
(142, 'MX', 'Mexico', 52, '2023-04-30 17:29:46', NULL, NULL),
(143, 'FM', 'Micronesia', 691, '2023-04-30 17:29:46', NULL, NULL),
(144, 'MD', 'Moldova', 373, '2023-04-30 17:29:46', NULL, NULL),
(145, 'MC', 'Monaco', 377, '2023-04-30 17:29:46', NULL, NULL),
(146, 'MN', 'Mongolia', 976, '2023-04-30 17:29:46', NULL, NULL),
(147, 'MS', 'Montserrat', 1664, '2023-04-30 17:29:46', NULL, NULL),
(148, 'MA', 'Morocco', 212, '2023-04-30 17:29:46', NULL, NULL),
(149, 'MZ', 'Mozambique', 258, '2023-04-30 17:29:46', NULL, NULL),
(150, 'MM', 'Myanmar', 95, '2023-04-30 17:29:46', NULL, NULL),
(151, 'NA', 'Namibia', 264, '2023-04-30 17:29:46', NULL, NULL),
(152, 'NR', 'Nauru', 674, '2023-04-30 17:29:46', NULL, NULL),
(153, 'NP', 'Nepal', 977, '2023-04-30 17:29:46', NULL, NULL),
(154, 'AN', 'Netherlands Antilles', 599, '2023-04-30 17:29:46', NULL, NULL),
(155, 'NL', 'Netherlands The', 31, '2023-04-30 17:29:46', NULL, NULL),
(156, 'NC', 'New Caledonia', 687, '2023-04-30 17:29:46', NULL, NULL),
(157, 'NZ', 'New Zealand', 64, '2023-04-30 17:29:46', NULL, NULL),
(158, 'NI', 'Nicaragua', 505, '2023-04-30 17:29:46', NULL, NULL),
(159, 'NE', 'Niger', 227, '2023-04-30 17:29:46', NULL, NULL),
(160, 'NG', 'Nigeria', 234, '2023-04-30 17:29:46', NULL, NULL),
(161, 'NU', 'Niue', 683, '2023-04-30 17:29:46', NULL, NULL),
(162, 'NF', 'Norfolk Island', 672, '2023-04-30 17:29:46', NULL, NULL),
(163, 'MP', 'Northern Mariana Islands', 1670, '2023-04-30 17:29:46', NULL, NULL),
(164, 'NO', 'Norway', 47, '2023-04-30 17:29:46', NULL, NULL),
(165, 'OM', 'Oman', 968, '2023-04-30 17:29:46', NULL, NULL),
(166, 'PK', 'Pakistan', 92, '2023-04-30 17:29:46', NULL, NULL),
(167, 'PW', 'Palau', 680, '2023-04-30 17:29:46', NULL, NULL),
(168, 'PS', 'Palestinian Territory Occupied', 970, '2023-04-30 17:29:46', NULL, NULL),
(169, 'PA', 'Panama', 507, '2023-04-30 17:29:46', NULL, NULL),
(170, 'PG', 'Papua new Guinea', 675, '2023-04-30 17:29:46', NULL, NULL),
(171, 'PY', 'Paraguay', 595, '2023-04-30 17:29:46', NULL, NULL),
(172, 'PE', 'Peru', 51, '2023-04-30 17:29:46', NULL, NULL),
(173, 'PH', 'Philippines', 63, '2023-04-30 17:29:46', NULL, NULL),
(174, 'PN', 'Pitcairn Island', 0, '2023-04-30 17:29:46', NULL, NULL),
(175, 'PL', 'Poland', 48, '2023-04-30 17:29:46', NULL, NULL),
(176, 'PT', 'Portugal', 351, '2023-04-30 17:29:46', NULL, NULL),
(177, 'PR', 'Puerto Rico', 1787, '2023-04-30 17:29:46', NULL, NULL),
(178, 'QA', 'Qatar', 974, '2023-04-30 17:29:46', NULL, NULL),
(179, 'RE', 'Reunion', 262, '2023-04-30 17:29:46', NULL, NULL),
(180, 'RO', 'Romania', 40, '2023-04-30 17:29:46', NULL, NULL),
(181, 'RU', 'Russia', 70, '2023-04-30 17:29:46', NULL, NULL),
(182, 'RW', 'Rwanda', 250, '2023-04-30 17:29:46', NULL, NULL),
(183, 'SH', 'Saint Helena', 290, '2023-04-30 17:29:46', NULL, NULL),
(184, 'KN', 'Saint Kitts And Nevis', 1869, '2023-04-30 17:29:46', NULL, NULL),
(185, 'LC', 'Saint Lucia', 1758, '2023-04-30 17:29:46', NULL, NULL),
(186, 'PM', 'Saint Pierre and Miquelon', 508, '2023-04-30 17:29:46', NULL, NULL),
(187, 'VC', 'Saint Vincent And The Grenadines', 1784, '2023-04-30 17:29:46', NULL, NULL),
(188, 'WS', 'Samoa', 684, '2023-04-30 17:29:46', NULL, NULL),
(189, 'SM', 'San Marino', 378, '2023-04-30 17:29:46', NULL, NULL),
(190, 'ST', 'Sao Tome and Principe', 239, '2023-04-30 17:29:46', NULL, NULL),
(191, 'SA', 'Saudi Arabia', 966, '2023-04-30 17:29:46', NULL, NULL),
(192, 'SN', 'Senegal', 221, '2023-04-30 17:29:46', NULL, NULL),
(193, 'RS', 'Serbia', 381, '2023-04-30 17:29:46', NULL, NULL),
(194, 'SC', 'Seychelles', 248, '2023-04-30 17:29:46', NULL, NULL),
(195, 'SL', 'Sierra Leone', 232, '2023-04-30 17:29:46', NULL, NULL),
(196, 'SG', 'Singapore', 65, '2023-04-30 17:29:46', NULL, NULL),
(197, 'SK', 'Slovakia', 421, '2023-04-30 17:29:46', NULL, NULL),
(198, 'SI', 'Slovenia', 386, '2023-04-30 17:29:46', NULL, NULL),
(199, 'XG', 'Smaller Territories of the UK', 44, '2023-04-30 17:29:46', NULL, NULL),
(200, 'SB', 'Solomon Islands', 677, '2023-04-30 17:29:46', NULL, NULL),
(201, 'SO', 'Somalia', 252, '2023-04-30 17:29:46', NULL, NULL),
(202, 'ZA', 'South Africa', 27, '2023-04-30 17:29:46', NULL, NULL),
(203, 'GS', 'South Georgia', 0, '2023-04-30 17:29:46', NULL, NULL),
(204, 'SS', 'South Sudan', 211, '2023-04-30 17:29:46', NULL, NULL),
(205, 'ES', 'Spain', 34, '2023-04-30 17:29:46', NULL, NULL),
(206, 'LK', 'Sri Lanka', 94, '2023-04-30 17:29:46', NULL, NULL),
(207, 'SD', 'Sudan', 249, '2023-04-30 17:29:46', NULL, NULL),
(208, 'SR', 'Suriname', 597, '2023-04-30 17:29:46', NULL, NULL),
(209, 'SJ', 'Svalbard And Jan Mayen Islands', 47, '2023-04-30 17:29:46', NULL, NULL),
(210, 'SZ', 'Swaziland', 268, '2023-04-30 17:29:46', NULL, NULL),
(211, 'SE', 'Sweden', 46, '2023-04-30 17:29:46', NULL, NULL),
(212, 'CH', 'Switzerland', 41, '2023-04-30 17:29:46', NULL, NULL),
(213, 'SY', 'Syria', 963, '2023-04-30 17:29:46', NULL, NULL),
(214, 'TW', 'Taiwan', 886, '2023-04-30 17:29:46', NULL, NULL),
(215, 'TJ', 'Tajikistan', 992, '2023-04-30 17:29:46', NULL, NULL),
(216, 'TZ', 'Tanzania', 255, '2023-04-30 17:29:46', NULL, NULL),
(217, 'TH', 'Thailand', 66, '2023-04-30 17:29:46', NULL, NULL),
(218, 'TG', 'Togo', 228, '2023-04-30 17:29:46', NULL, NULL),
(219, 'TK', 'Tokelau', 690, '2023-04-30 17:29:46', NULL, NULL),
(220, 'TO', 'Tonga', 676, '2023-04-30 17:29:46', NULL, NULL),
(221, 'TT', 'Trinidad And Tobago', 1868, '2023-04-30 17:29:46', NULL, NULL),
(222, 'TN', 'Tunisia', 216, '2023-04-30 17:29:46', NULL, NULL),
(223, 'TR', 'Turkey', 90, '2023-04-30 17:29:46', NULL, NULL),
(224, 'TM', 'Turkmenistan', 7370, '2023-04-30 17:29:46', NULL, NULL),
(225, 'TC', 'Turks And Caicos Islands', 1649, '2023-04-30 17:29:46', NULL, NULL),
(226, 'TV', 'Tuvalu', 688, '2023-04-30 17:29:46', NULL, NULL),
(227, 'UG', 'Uganda', 256, '2023-04-30 17:29:46', NULL, NULL),
(228, 'UA', 'Ukraine', 380, '2023-04-30 17:29:46', NULL, NULL),
(229, 'AE', 'United Arab Emirates', 971, '2023-04-30 17:29:46', NULL, NULL),
(230, 'GB', 'United Kingdom', 44, '2023-04-30 17:29:46', NULL, NULL),
(231, 'US', 'United States', 1, '2023-04-30 17:29:46', NULL, NULL),
(232, 'UM', 'United States Minor Outlying Islands', 1, '2023-04-30 17:29:46', NULL, NULL),
(233, 'UY', 'Uruguay', 598, '2023-04-30 17:29:46', NULL, NULL),
(234, 'UZ', 'Uzbekistan', 998, '2023-04-30 17:29:46', NULL, NULL),
(235, 'VU', 'Vanuatu', 678, '2023-04-30 17:29:46', NULL, NULL),
(236, 'VA', 'Vatican City State (Holy See)', 39, '2023-04-30 17:29:46', NULL, NULL),
(237, 'VE', 'Venezuela', 58, '2023-04-30 17:29:46', NULL, NULL),
(238, 'VN', 'Vietnam', 84, '2023-04-30 17:29:46', NULL, NULL),
(239, 'VG', 'Virgin Islands (British)', 1284, '2023-04-30 17:29:46', NULL, NULL),
(240, 'VI', 'Virgin Islands (US)', 1340, '2023-04-30 17:29:46', NULL, NULL),
(241, 'WF', 'Wallis And Futuna Islands', 681, '2023-04-30 17:29:46', NULL, NULL),
(242, 'EH', 'Western Sahara', 212, '2023-04-30 17:29:46', NULL, NULL),
(243, 'YE', 'Yemen', 967, '2023-04-30 17:29:46', NULL, NULL),
(244, 'YU', 'Yugoslavia', 38, '2023-04-30 17:29:46', NULL, NULL),
(245, 'ZM', 'Zambia', 260, '2023-04-30 17:29:46', NULL, NULL),
(246, 'ZW', 'Zimbabwe', 263, '2023-04-30 17:29:46', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `fees` varchar(255) DEFAULT NULL,
  `installment` int(11) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `module_count` int(11) DEFAULT NULL,
  `centre_id` int(11) DEFAULT NULL,
  `class_count` int(11) DEFAULT NULL,
  `quiz_count` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `is_top_rated` int(11) NOT NULL DEFAULT 0,
  `is_trending` int(11) NOT NULL DEFAULT 0,
  `is_most_purchased` int(11) NOT NULL DEFAULT 0,
  `is_newly_added` int(11) NOT NULL DEFAULT 0,
  `is_free` int(11) NOT NULL DEFAULT 0,
  `is_hadpicked` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `category_id`, `title`, `description`, `level`, `fees`, `installment`, `duration`, `module_count`, `centre_id`, `class_count`, `quiz_count`, `status`, `is_top_rated`, `is_trending`, `is_most_purchased`, `is_newly_added`, `is_free`, `is_hadpicked`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'DIPLOMA IN HOSPITAL ADMINISTRATION', NULL, 'beginner', '65000', 5, 2, 8, 2, 60, 100, 1, 0, 0, 0, 0, 0, 0, '2024-12-05 11:11:42', '2025-01-13 08:48:34', NULL),
(2, 1, 'ADVANCED/ PG DIPLOMA IN HOSPITAL ADMINISTRATION', NULL, 'advanced', '130000', 9, 1, 13, 2, 108, 100, 1, 0, 0, 0, 0, 0, 0, '2024-12-05 11:17:18', '2025-01-13 08:50:53', NULL),
(3, 2, 'DIPLOMA IN LOGISTICS', NULL, 'beginner', '85000', 5, 2, 7, 2, 60, 100, 1, 0, 0, 0, 0, 0, 0, '2024-12-05 11:19:29', '2025-01-13 08:49:29', NULL),
(4, 2, 'ADVANCED/PG DIPLOMA IN LOGISTICS', NULL, 'advanced', '165000', 9, 1, 9, 2, 108, 100, 1, 0, 0, 0, 0, 0, 0, '2024-12-05 11:21:09', '2025-01-13 08:50:35', NULL),
(5, 5, 'DIPLOMA IN BUSINESS ADMINISTRATION AND HOSPITALITY MANAGEMENT', NULL, 'beginner', '75000', 6, 2, 12, 2, 120, 100, 1, 0, 0, 0, 0, 0, 0, '2024-12-05 11:26:37', '2025-01-13 08:52:34', NULL),
(8, 6, 'MS OFFICE', NULL, 'beginner', '6000', 1, 2, 5, NULL, 60, 100, 1, 0, 0, 0, 0, 0, 0, '2025-02-17 10:26:17', '2025-02-17 10:43:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course_centres`
--

CREATE TABLE `course_centres` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `centre_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `course_centres`
--

INSERT INTO `course_centres` (`id`, `course_id`, `centre_id`, `created_at`, `updated_at`) VALUES
(25, 3, 1, '2025-01-13 08:49:29', '2025-01-13 08:49:29'),
(26, 3, 2, '2025-01-13 08:49:29', '2025-01-13 08:49:29'),
(27, 3, 3, '2025-01-13 08:49:29', '2025-01-13 08:49:29'),
(31, 4, 1, '2025-01-13 08:50:35', '2025-01-13 08:50:35'),
(32, 4, 2, '2025-01-13 08:50:36', '2025-01-13 08:50:36'),
(33, 4, 3, '2025-01-13 08:50:36', '2025-01-13 08:50:36'),
(34, 2, 1, '2025-01-13 08:50:53', '2025-01-13 08:50:53'),
(35, 2, 2, '2025-01-13 08:50:53', '2025-01-13 08:50:53'),
(36, 2, 3, '2025-01-13 08:50:53', '2025-01-13 08:50:53'),
(37, 1, 1, '2025-01-13 08:51:49', '2025-01-13 08:51:49'),
(38, 1, 2, '2025-01-13 08:51:49', '2025-01-13 08:51:49'),
(39, 1, 3, '2025-01-13 08:51:49', '2025-01-13 08:51:49'),
(40, 5, 1, '2025-01-13 08:52:34', '2025-01-13 08:52:34'),
(41, 5, 2, '2025-01-13 08:52:34', '2025-01-13 08:52:34'),
(42, 5, 3, '2025-01-13 08:52:34', '2025-01-13 08:52:34'),
(46, 8, 3, '2025-02-17 10:43:49', '2025-02-17 10:43:49');

-- --------------------------------------------------------

--
-- Table structure for table `course_playlists`
--

CREATE TABLE `course_playlists` (
  `id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `cover_photo` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `prelude_video_link` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `youtube_url` varchar(255) DEFAULT NULL,
  `url_1` text DEFAULT NULL,
  `url_2` text DEFAULT NULL,
  `url_3` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `course_playlists`
--

INSERT INTO `course_playlists` (`id`, `course_id`, `cover_photo`, `image_url`, `prelude_video_link`, `video_url`, `youtube_url`, `url_1`, `url_2`, `url_3`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, NULL, NULL, NULL, 'www.yt.com', 'www.yt.com', 'www.yt.com', 'www.yt.com', '2024-10-17 03:41:28', '2024-10-17 03:41:28', NULL),
(2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-29 06:49:58', '2024-10-29 06:49:58', NULL),
(3, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-28 17:58:45', '2024-11-28 17:58:45', NULL),
(4, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-28 17:59:36', '2024-11-28 17:59:36', NULL),
(5, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-30 16:49:36', '2024-11-30 16:49:36', NULL),
(6, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-01 04:49:51', '2024-12-01 04:49:51', NULL),
(7, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-01 04:50:41', '2024-12-01 04:50:41', NULL),
(8, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-05 11:11:42', '2024-12-05 11:11:42', NULL),
(9, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-05 11:17:18', '2024-12-05 11:17:18', NULL),
(10, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-05 11:19:29', '2024-12-05 11:19:29', NULL),
(11, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-05 11:21:09', '2024-12-05 11:21:09', NULL),
(12, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-05 11:26:37', '2024-12-05 11:26:37', NULL),
(13, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-11 05:59:51', '2024-12-11 05:59:51', NULL),
(14, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-17 10:26:17', '2025-02-17 10:26:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course_pricings`
--

CREATE TABLE `course_pricings` (
  `id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `offer_price` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_study_materials`
--

CREATE TABLE `course_study_materials` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `is_free` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_tags`
--

CREATE TABLE `course_tags` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_tutors`
--

CREATE TABLE `course_tutors` (
  `id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `tutor_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exam_name` varchar(255) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `exam_centre_id` int(11) DEFAULT NULL,
  `module_id` varchar(255) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `time_in_minutes` time DEFAULT NULL,
  `question_weightage` double DEFAULT NULL,
  `exam_date` date DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `exam_name`, `course_id`, `batch_id`, `exam_centre_id`, `module_id`, `marks`, `time_in_minutes`, `question_weightage`, `exam_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'WEALTHMAXIMA COLLEGE OF ADVANCED STUDIES  HOSPITAL ADMINISTRATION  EXAMS', 1, 1, 2, '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\"]', 100, '01:15:00', 1, '2024-11-12', 1, '2024-11-08 01:16:45', '2025-06-10 10:56:05'),
(2, 'Demo Test', 1, 1, 2, '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\"]', 100, '01:15:00', 1, '2024-11-12', 1, '2024-11-12 03:00:17', '2025-06-10 10:56:15'),
(3, 'MS Office Exam', 1, 2, 1, 'null', 100, '01:00:00', 1, '2025-02-14', 1, '2025-02-14 04:03:00', '2025-02-14 04:03:00'),
(11, 'WEALTHMAXIMA COLLEGE OF ADVANCED STUDIES HOSPITAL ADMINISTRATION EXAMS', 2, 4, 2, '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\"]', 100, '01:15:00', 1, '2025-06-10', 1, '2025-06-10 04:54:55', '2025-06-10 04:54:55');

-- --------------------------------------------------------

--
-- Table structure for table `exam_modules`
--

CREATE TABLE `exam_modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `modules_name` varchar(255) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `exam_modules`
--

INSERT INTO `exam_modules` (`id`, `modules_name`, `course_id`, `batch_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Basic Concepts Of Hospital', 1, 1, 1, '2024-11-08 00:32:11', '2024-11-08 00:32:11'),
(2, 'Supportive Departments In Hospital', 1, 1, 1, '2024-11-08 00:33:19', '2024-11-08 00:33:19'),
(3, 'Drugs And Pharmacuticeuticals', 1, 1, 1, '2024-11-08 00:34:56', '2024-11-08 00:34:56'),
(4, 'Materials Management', 1, 1, 1, '2024-11-08 00:35:58', '2024-11-08 00:35:58'),
(5, 'Hospital Administration And General Management', 1, 1, 1, '2024-11-08 00:37:19', '2024-11-08 00:37:19'),
(6, 'HRM And Marketing Management at Hospitals', 1, 1, 1, '2024-11-08 00:39:06', '2024-11-08 00:39:06');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2024_10_18_041735_create_batches_table', 2),
(9, '2024_10_18_055257_create_centres_table', 3),
(10, '2024_10_19_061105_create_exams_table', 4),
(11, '2024_10_19_070745_create_exam_modules_table', 5),
(12, '2024_10_19_072613_add_new_field_to_quizzes', 6);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 20),
(2, 'App\\Models\\User', 28),
(2, 'App\\Models\\User', 29);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `posters` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `section` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `section`, `created_at`, `updated_at`) VALUES
(1, 'role_list', 'web', 'roles', NULL, NULL),
(2, 'role_create', 'web', 'roles', NULL, NULL),
(3, 'role_edit', 'web', 'roles', NULL, NULL),
(4, 'role_delete', 'web', 'roles', NULL, NULL),
(5, 'dashboard_view', 'web', 'dashboard', NULL, NULL),
(6, 'centre_list', 'web', 'centre', NULL, NULL),
(7, 'centre_create', 'web', 'centre', NULL, NULL),
(8, 'centre_edit', 'web', 'centre', NULL, NULL),
(9, 'centre_delete', 'web', 'centre', NULL, NULL),
(10, 'courses_list', 'web', 'course', NULL, NULL),
(11, 'courses_create', 'web', 'course', NULL, NULL),
(12, 'courses_edit', 'web', 'course', NULL, NULL),
(13, 'courses_delete', 'web', 'course', NULL, NULL),
(14, 'admission_list', 'web', 'admissions', NULL, NULL),
(15, 'scheme_list', 'web', 'schemes', NULL, NULL),
(16, 'scheme_create', 'web', 'schemes', NULL, NULL),
(17, 'scheme_edit', 'web', 'schemes', NULL, NULL),
(18, 'scheme_delete', 'web', 'schemes', NULL, NULL),
(19, 'question_list', 'web', 'exam_questions', NULL, NULL),
(20, 'question_create', 'web', 'exam_questions', NULL, NULL),
(21, 'question_edit', 'web', 'exam_questions', NULL, NULL),
(22, 'question_delete', 'web', 'exam_questions', NULL, NULL),
(23, 'student_list', 'web', 'students', NULL, NULL),
(24, 'student_create', 'web', 'students', NULL, NULL),
(25, 'student_edit', 'web', 'students', NULL, NULL),
(26, 'student_delete', 'web', 'students', NULL, NULL),
(27, 'category_list', 'web', 'category', NULL, NULL),
(28, 'category_create', 'web', 'category', NULL, NULL),
(29, 'category_edit', 'web', 'category', NULL, NULL),
(30, 'category_delete', 'web', 'category', NULL, NULL),
(31, 'banner_list', 'web', 'banner', NULL, NULL),
(32, 'banner_create', 'web', 'banner', NULL, NULL),
(33, 'banner_edit', 'web', 'banner', NULL, NULL),
(34, 'banner_delete', 'web', 'banner', NULL, NULL),
(35, 'faculty_list', 'web', 'faculty', NULL, NULL),
(36, 'faculty_create', 'web', 'faculty', NULL, NULL),
(37, 'faculty_edit', 'web', 'faculty', NULL, NULL),
(38, 'faculty_delete', 'web', 'faculty', NULL, NULL),
(39, 'payment_list', 'web', 'payments', NULL, NULL),
(40, 'payment_create', 'web', 'payments', NULL, NULL),
(41, 'payment_edit', 'web', 'payments', NULL, NULL),
(42, 'payment_delete', 'web', 'payments', NULL, NULL),
(43, 'setting_list', 'web', 'settings', NULL, NULL),
(44, 'batch_list', 'web', 'batch', NULL, NULL),
(45, 'batch_create', 'web', 'batch', NULL, NULL),
(46, 'batch_edit', 'web', 'batch', NULL, NULL),
(47, 'batch_delete', 'web', 'batch', NULL, NULL),
(48, 'exam_list', 'web', 'exams', NULL, NULL),
(49, 'exam_create', 'web', 'exams', NULL, NULL),
(50, 'exam_edit', 'web', 'exams', NULL, NULL),
(51, 'exam_delete', 'web', 'exams', NULL, NULL),
(52, 'module_list', 'web', 'modules', NULL, NULL),
(53, 'module_create', 'web', 'modules', NULL, NULL),
(54, 'module_edit', 'web', 'modules', NULL, NULL),
(55, 'module_delete', 'web', 'modules', NULL, NULL),
(56, 'result_list', 'web', 'result', NULL, NULL),
(57, 'result_create', 'web', 'result', NULL, NULL),
(58, 'result_edit', 'web', 'result', NULL, NULL),
(59, 'result_delete', 'web', 'result', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 3, 'API Token', '460d9439483d26872ca3d1f4881caa7f0687ea6e713a7eb86cba0585a1daa9dd', '[\"*\"]', '2023-05-19 15:56:44', NULL, '2023-05-19 15:54:11', '2023-05-19 15:56:44'),
(2, 'App\\Models\\User', 9, 'API Token', 'c257f9adb6003b175222c5095dbc6a643fd9b94c2daa22f1adb162d81101b033', '[\"*\"]', '2024-07-17 12:34:05', NULL, '2024-07-16 09:21:27', '2024-07-17 12:34:05'),
(3, 'App\\Models\\User', 9, 'API Token', '90a7d3ec275d661e19aee02aa8a4553d877a201411eca24507d8fa5711ea9d4b', '[\"*\"]', NULL, NULL, '2024-08-25 10:12:57', '2024-08-25 10:12:57'),
(4, 'App\\Models\\User', 9, 'API Token', 'ad3cdd899d4156dc57309bdbd62f954b05b005d3ac46606203f64e9c5f42a37f', '[\"*\"]', NULL, NULL, '2024-08-25 10:14:58', '2024-08-25 10:14:58'),
(5, 'App\\Models\\User', 9, 'API Token', '6dc1e3cea598f9333a947ad40374af351763ec321d0e3aca05d5e79c52a2863c', '[\"*\"]', NULL, NULL, '2024-08-25 10:21:46', '2024-08-25 10:21:46'),
(6, 'App\\Models\\User', 9, 'API Token', '26e9dde7cf6427d8e26ad596b244a7b5e78a8365fc25a400ee8a43ff8d080535', '[\"*\"]', '2024-09-03 10:57:38', NULL, '2024-09-01 12:02:18', '2024-09-03 10:57:38'),
(7, 'App\\Models\\User', 9, 'API Token', '3255fcb25601d2081ed9fe248272c534b88e41a7bf448e70ed17c00d10b6e9b7', '[\"*\"]', '2024-09-04 09:55:18', NULL, '2024-09-04 09:50:13', '2024-09-04 09:55:18'),
(8, 'App\\Models\\User', 1, 'API Token', '3daff8d7972a06ce3d27493720eb64e28d6767c6089e8ec9521d126cc5019bf6', '[\"*\"]', NULL, NULL, '2024-10-18 06:16:59', '2024-10-18 06:16:59'),
(9, 'App\\Models\\User', 1, 'API Token', 'd21cfba4c4fcca3e9030c9061d036fb2ccc3229923e81fce6614a9db02c411aa', '[\"*\"]', NULL, NULL, '2024-10-18 23:17:30', '2024-10-18 23:17:30'),
(10, 'App\\Models\\User', 1, 'API Token', '0b0d503b8922cc53fd291ce223aef53dd333f9752bb1dbba87976ddc44ac8578', '[\"*\"]', '2024-10-26 00:51:00', NULL, '2024-10-18 23:22:34', '2024-10-26 00:51:00'),
(11, 'App\\Models\\User', 1, 'API Token', 'd6c1d9dcc224bb2ad12915e631a7408064a0d3ef07ce6b1f4d8842ac3222de08', '[\"*\"]', NULL, NULL, '2024-10-19 00:15:46', '2024-10-19 00:15:46'),
(12, 'App\\Models\\User', 1, 'API Token', 'ae6f50938507b4a43beac724eae16013b2b03efce001e9c449a3662c15dfbfd2', '[\"*\"]', NULL, NULL, '2024-10-19 00:19:06', '2024-10-19 00:19:06'),
(13, 'App\\Models\\User', 1, 'API Token', 'd68d976df5c679497fc8ecd0ef70c2f47b6fc33b046a87413044e7cd2ed2adfb', '[\"*\"]', NULL, NULL, '2024-10-21 05:53:29', '2024-10-21 05:53:29'),
(14, 'App\\Models\\User', 1, 'API Token', 'f964a3fd8ea27068ced6123466e6ece976a36969a67120835fa237512576b02c', '[\"*\"]', NULL, NULL, '2024-10-25 22:23:16', '2024-10-25 22:23:16'),
(15, 'App\\Models\\User', 1, 'API Token', '9ff5bea63aa948f43a385e6ea1307e24f316f99722c8d66efc47d48d1282b680', '[\"*\"]', NULL, NULL, '2024-10-25 22:40:50', '2024-10-25 22:40:50'),
(16, 'App\\Models\\User', 14, 'API Token', '594f86089a130f41843e81a224160ea12e5723ed73f413a6ca274cf45c2e821b', '[\"*\"]', NULL, NULL, '2024-10-25 23:42:24', '2024-10-25 23:42:24'),
(17, 'App\\Models\\User', 14, 'API Token', 'a8ef6e3351e74f988f18b2b00e66a884c1cc50f91d593720b6d3e0f7a785d283', '[\"*\"]', NULL, NULL, '2024-10-25 23:42:38', '2024-10-25 23:42:38'),
(18, 'App\\Models\\User', 14, 'API Token', '0b0f86853c5ea3d040df6901c556dba70e88ff5dd7b4f0154cf90cac943cfcdd', '[\"*\"]', '2024-10-26 04:02:02', NULL, '2024-10-26 00:50:32', '2024-10-26 04:02:02'),
(19, 'App\\Models\\User', 21, 'API Token', 'e36e7a2f929fbf84a27fb3fa0bca54e5a377a01da3ac598db8d24ac304d31750', '[\"*\"]', '2024-10-26 04:18:07', NULL, '2024-10-26 04:02:27', '2024-10-26 04:18:07'),
(20, 'App\\Models\\User', 21, 'API Token', '2a285d9bb6df0b1659447379a653cb88c0ebd74cae0def7adc23afc31d8a7f7e', '[\"*\"]', '2024-10-30 03:56:04', NULL, '2024-10-26 04:33:19', '2024-10-30 03:56:04'),
(21, 'App\\Models\\User', 21, 'API Token', 'ddfcd65193a9e6a64e6764326f886ff784d15ee167367c88060fc180eee39d2b', '[\"*\"]', '2024-10-30 05:58:44', NULL, '2024-10-26 04:34:51', '2024-10-30 05:58:44'),
(22, 'App\\Models\\User', 21, 'API Token', '24c8e3b87c39499219fb586c6e1dba08d2b3d9b4db1c469781587f671f5cf0ef', '[\"*\"]', '2024-10-26 04:46:12', NULL, '2024-10-26 04:46:11', '2024-10-26 04:46:12'),
(23, 'App\\Models\\User', 21, 'API Token', '8f0d49928dfdbab90274af89767cfc599cb63e2219fbdcbc70e0d2ceaeede4b7', '[\"*\"]', '2024-10-26 04:47:37', NULL, '2024-10-26 04:47:36', '2024-10-26 04:47:37'),
(24, 'App\\Models\\User', 14, 'API Token', 'f5dc657793ec3c11efb92b1268ec7ba560ca5225af8ef489826e475a05718feb', '[\"*\"]', '2024-10-27 22:31:34', NULL, '2024-10-27 22:31:34', '2024-10-27 22:31:34'),
(25, 'App\\Models\\User', 21, 'API Token', '58aa5c650feb44fe20444fd2373f4dc48b4341b3bded4dca485fa079effce5b8', '[\"*\"]', '2024-10-28 00:00:36', NULL, '2024-10-28 00:00:35', '2024-10-28 00:00:36'),
(26, 'App\\Models\\User', 21, 'API Token', 'b014fc2dff8f94654a7a9f5a49483e30049f617be9804560dff92738b569ac90', '[\"*\"]', '2024-10-28 00:11:38', NULL, '2024-10-28 00:11:37', '2024-10-28 00:11:38'),
(27, 'App\\Models\\User', 21, 'API Token', '398842dad6ef6fb9e166f369a058bf131b0e42d74322adad24da1e0501be74c9', '[\"*\"]', '2024-10-28 00:12:58', NULL, '2024-10-28 00:12:57', '2024-10-28 00:12:58'),
(28, 'App\\Models\\User', 21, 'API Token', 'cc4a06ab0bb76eebbd8a5e6955767eeb04bf14fa154b67722e947dbf19a73221', '[\"*\"]', '2024-10-28 00:14:19', NULL, '2024-10-28 00:14:18', '2024-10-28 00:14:19'),
(29, 'App\\Models\\User', 21, 'API Token', 'a206143ac85b5570abddc440310bc1921f621f3e6b88579ebb817bcb5a98f4ca', '[\"*\"]', '2024-10-28 00:21:56', NULL, '2024-10-28 00:21:56', '2024-10-28 00:21:56'),
(30, 'App\\Models\\User', 21, 'API Token', '8fef9fbe039aa570cb651ed722033492fe29f6d3d22d77435ea38872fc3b2a57', '[\"*\"]', '2024-10-28 00:24:14', NULL, '2024-10-28 00:24:13', '2024-10-28 00:24:14'),
(31, 'App\\Models\\User', 21, 'API Token', '1a23ce3a618db71106a14888b80fb338da6aa8e58508c1174781f15a87fce037', '[\"*\"]', '2024-10-28 00:35:38', NULL, '2024-10-28 00:35:38', '2024-10-28 00:35:38'),
(32, 'App\\Models\\User', 21, 'API Token', 'f19fb743285db5de8456374ed35dacf5f5dd5a7237226612d666fbef4b5345a4', '[\"*\"]', '2024-10-28 00:37:05', NULL, '2024-10-28 00:37:01', '2024-10-28 00:37:05'),
(33, 'App\\Models\\User', 21, 'API Token', '6542e9d6c43b2b39d5fc8759073129c549f24f8f6b98cf7ca58a2ef8babf2fbc', '[\"*\"]', '2024-10-28 00:38:59', NULL, '2024-10-28 00:38:57', '2024-10-28 00:38:59'),
(34, 'App\\Models\\User', 21, 'API Token', '18beb3d4cecc64fa8149f75df1e7d70cb9a5c84f8688f9bdbce9cafa7e5b8cb3', '[\"*\"]', '2024-10-28 00:40:17', NULL, '2024-10-28 00:40:14', '2024-10-28 00:40:17'),
(35, 'App\\Models\\User', 21, 'API Token', '8fbec600fb366ee40c07cfaeba1d6fee26af518a0cf7d3364ba478933beaac38', '[\"*\"]', '2024-10-28 02:51:43', NULL, '2024-10-28 02:51:33', '2024-10-28 02:51:43'),
(36, 'App\\Models\\User', 21, 'API Token', 'ac33964bac30f530a98873a42f3fc42e6af6f8b6c226c92220e69544a62f91f7', '[\"*\"]', '2024-10-28 04:27:51', NULL, '2024-10-28 04:27:50', '2024-10-28 04:27:51'),
(37, 'App\\Models\\User', 21, 'API Token', '4480423ec73adadb7eb0a7ff787ec6475cc5e4a4119d57b2807944fe64e95a04', '[\"*\"]', '2024-10-28 04:36:14', NULL, '2024-10-28 04:36:12', '2024-10-28 04:36:14'),
(38, 'App\\Models\\User', 21, 'API Token', '14d1cd81413f814760338c6ee6aacc93f82bf413fbd552baa0bc44c00a5aea81', '[\"*\"]', '2024-10-28 04:37:56', NULL, '2024-10-28 04:37:43', '2024-10-28 04:37:56'),
(39, 'App\\Models\\User', 21, 'API Token', '129f4e8fb863f321cfd2ad237b58d682862f3ea3026de9b25ffce606e8d9401a', '[\"*\"]', '2024-10-28 22:28:53', NULL, '2024-10-28 22:28:48', '2024-10-28 22:28:53'),
(40, 'App\\Models\\User', 21, 'API Token', '61f3db7ffb0f3b4aab6bff43a2975db8c55b275ab2d2f74a0c13cc6f4bf5d846', '[\"*\"]', '2024-10-28 22:43:15', NULL, '2024-10-28 22:42:43', '2024-10-28 22:43:15'),
(41, 'App\\Models\\User', 21, 'API Token', '96d177a50cfc7c2ad1708b77b7e3267fd3e48e5b8e1788b11c7da0fb64b7aca1', '[\"*\"]', '2024-10-28 22:50:15', NULL, '2024-10-28 22:50:10', '2024-10-28 22:50:15'),
(42, 'App\\Models\\User', 21, 'API Token', '1b21eef66f2973f6f98c4b2de8dc824a622a6974a38c54ff6538f75908c0d8ec', '[\"*\"]', '2024-10-28 22:59:11', NULL, '2024-10-28 22:59:04', '2024-10-28 22:59:11'),
(43, 'App\\Models\\User', 21, 'API Token', '957647531eddb8c01835dfbbe6a38990d5499782a3c1735a9330ad852a147b63', '[\"*\"]', '2024-10-28 23:28:04', NULL, '2024-10-28 23:27:59', '2024-10-28 23:28:04'),
(44, 'App\\Models\\User', 21, 'API Token', 'd435a1e4b595510923364eaecb9e0dc3c40e347d35548104fd5969da9300b291', '[\"*\"]', '2024-10-28 23:28:53', NULL, '2024-10-28 23:28:49', '2024-10-28 23:28:53'),
(45, 'App\\Models\\User', 21, 'API Token', 'b6de77458bf95a8b705d1acbc1d4756d6bc664fd0165ac84a34f83d6288b0c28', '[\"*\"]', '2024-10-28 23:31:23', NULL, '2024-10-28 23:31:18', '2024-10-28 23:31:23'),
(46, 'App\\Models\\User', 21, 'API Token', '6075b6c83bc9f4f0a87bc797bb75a04c512408efa5fecbec5e3225f9f316a0df', '[\"*\"]', '2024-10-28 23:33:54', NULL, '2024-10-28 23:33:50', '2024-10-28 23:33:54'),
(47, 'App\\Models\\User', 21, 'API Token', 'c91c6fa2d81191e44f8e3ff764230790e2dcf1fe20af89b91e42467da441ab94', '[\"*\"]', '2024-10-28 23:36:13', NULL, '2024-10-28 23:36:08', '2024-10-28 23:36:13'),
(48, 'App\\Models\\User', 21, 'API Token', '57fe09107ca9108ec67910f4fd0e3b7950c5a57fa4dc483dd4cb003ecd25b1b5', '[\"*\"]', '2024-10-28 23:37:32', NULL, '2024-10-28 23:37:27', '2024-10-28 23:37:32'),
(49, 'App\\Models\\User', 21, 'API Token', 'c68889fb736a8a7bdd4d1b28618da1d0a5f47cf8d8605c45083b6865866c0ef9', '[\"*\"]', '2024-10-28 23:39:14', NULL, '2024-10-28 23:39:08', '2024-10-28 23:39:14'),
(50, 'App\\Models\\User', 21, 'API Token', '0f061944b9d1cb3b4d45e85dbf740ae5fa574d69432cc48bc9779a568486c93f', '[\"*\"]', '2024-10-28 23:42:04', NULL, '2024-10-28 23:40:47', '2024-10-28 23:42:04'),
(51, 'App\\Models\\User', 21, 'API Token', '4db6157558e53356c4e9dbdaf04713d0cc5f3836ec371b1215eb86485cb26adf', '[\"*\"]', '2024-10-28 23:46:40', NULL, '2024-10-28 23:46:34', '2024-10-28 23:46:40'),
(52, 'App\\Models\\User', 21, 'API Token', '5bbe7793f9e74a0d7b5def7492074b14a0662464c6b303eef0817aad0a1b3ff2', '[\"*\"]', '2024-10-29 00:01:04', NULL, '2024-10-28 23:59:20', '2024-10-29 00:01:04'),
(53, 'App\\Models\\User', 21, 'API Token', '8cc32077c036c25b3c76ee02569d6d35f65f3d6e488dec6a7bec05d260afbaf0', '[\"*\"]', '2024-10-29 00:09:22', NULL, '2024-10-29 00:09:09', '2024-10-29 00:09:22'),
(54, 'App\\Models\\User', 21, 'API Token', '37feb400c743360256e77dbc9d8b4b72e22f7983113cbe73d17be5efc996f132', '[\"*\"]', '2024-10-29 01:02:31', NULL, '2024-10-29 00:49:49', '2024-10-29 01:02:31'),
(55, 'App\\Models\\User', 21, 'API Token', '6f3623df11a2a6fa11cb950aba546bd91333050a7cdf5811137ae98872380c94', '[\"*\"]', '2024-10-29 01:50:06', NULL, '2024-10-29 01:47:36', '2024-10-29 01:50:06'),
(56, 'App\\Models\\User', 21, 'API Token', '036cb0f690ba7a99f9709cdfceb851f8487429554be542f726bd48068c9a408c', '[\"*\"]', '2024-10-29 04:00:37', NULL, '2024-10-29 02:20:44', '2024-10-29 04:00:37'),
(57, 'App\\Models\\User', 21, 'API Token', 'fc6aa5a7133f31e72ddf6f97101511681768735651010ad670c0b2e5b92674b7', '[\"*\"]', '2024-10-29 04:33:08', NULL, '2024-10-29 04:09:35', '2024-10-29 04:33:08'),
(58, 'App\\Models\\User', 21, 'API Token', '770214d0e2e174da61e5890de907ecb9d3327b576717abb82ca463df7add0002', '[\"*\"]', '2024-10-29 04:59:29', NULL, '2024-10-29 04:37:22', '2024-10-29 04:59:29'),
(59, 'App\\Models\\User', 21, 'API Token', '0807f41a2afc25f7b12afd37db060e4b0e782348e04e96e266ba4df5c84e6d22', '[\"*\"]', '2024-10-29 05:11:41', NULL, '2024-10-29 05:00:22', '2024-10-29 05:11:41'),
(60, 'App\\Models\\User', 21, 'API Token', 'a44ee6e342c7687d6bd3ed7dc813a0d824af51007ff8722b7e17545a4b7aebfa', '[\"*\"]', '2024-10-29 05:19:24', NULL, '2024-10-29 05:13:28', '2024-10-29 05:19:24'),
(61, 'App\\Models\\User', 21, 'API Token', '6d74fa17a9d5492befd904d32de012e2219935833bed2211ea340bcdcd135a56', '[\"*\"]', '2024-10-29 05:20:25', NULL, '2024-10-29 05:20:23', '2024-10-29 05:20:25'),
(62, 'App\\Models\\User', 21, 'API Token', 'c408394f2a307b42851949d803abb1b0d16bb5c51c6a72b337c53218cd888c03', '[\"*\"]', '2024-10-29 05:23:49', NULL, '2024-10-29 05:23:42', '2024-10-29 05:23:49'),
(63, 'App\\Models\\User', 21, 'API Token', '11f7c27e04f3708eb93b385579a48a613a07245c6a5442cfab22aa3ed5945031', '[\"*\"]', '2024-10-29 05:45:37', NULL, '2024-10-29 05:45:36', '2024-10-29 05:45:37'),
(64, 'App\\Models\\User', 21, 'API Token', '30a7f6569626e13a7b5fd9c24fbf86c4bd6904ec3e0c3075a1b50fcdca163865', '[\"*\"]', '2024-10-29 22:35:48', NULL, '2024-10-29 22:35:48', '2024-10-29 22:35:48'),
(65, 'App\\Models\\User', 21, 'API Token', 'b5d847a4a0fdc66c781fb2c79e72598599a4353ea74ece8e1754964a2e73a8c6', '[\"*\"]', NULL, NULL, '2024-10-29 22:36:56', '2024-10-29 22:36:56'),
(66, 'App\\Models\\User', 21, 'API Token', '8bebe0964895fc94ea6cc3c0c068fc8c4804611b48dcfbff78c23a1a827be089', '[\"*\"]', '2024-10-29 22:37:00', NULL, '2024-10-29 22:37:00', '2024-10-29 22:37:00'),
(67, 'App\\Models\\User', 22, 'API Token', '777ab5b98a27e7d9b4b186d988e08c88ec0af8b85c2a782bb2c1154553baea26', '[\"*\"]', '2024-10-30 01:38:20', NULL, '2024-10-29 22:41:15', '2024-10-30 01:38:20'),
(68, 'App\\Models\\User', 22, 'API Token', 'f82dae3f091202b0a64e462403cf908dec433bbb7db13492dd5eacab7018a8f1', '[\"*\"]', '2024-10-30 01:49:38', NULL, '2024-10-30 01:49:29', '2024-10-30 01:49:38'),
(69, 'App\\Models\\User', 22, 'API Token', '836c5e58e788acc109a1af67aac8cf153d9e956f10dd54e8444ba57801fd0d46', '[\"*\"]', '2024-10-30 01:50:48', NULL, '2024-10-30 01:50:41', '2024-10-30 01:50:48'),
(70, 'App\\Models\\User', 22, 'API Token', '50c7d246c94d0c3d3eecc260530301f01d5c8535f4f10cfcfe8e1219d702a842', '[\"*\"]', '2024-10-30 01:52:11', NULL, '2024-10-30 01:52:00', '2024-10-30 01:52:11'),
(71, 'App\\Models\\User', 22, 'API Token', 'f33e83c1e1c942d5c854efed9fccaf1fd6a7c1bebe73b2b1f95f9bd0a6bbbc96', '[\"*\"]', '2024-10-30 01:56:45', NULL, '2024-10-30 01:56:40', '2024-10-30 01:56:45'),
(72, 'App\\Models\\User', 22, 'API Token', '1d3f8db9854796b3561de3db384fa6f0f5db8def4e2207bef67f2ad32fd0f934', '[\"*\"]', '2024-10-30 02:00:02', NULL, '2024-10-30 01:59:55', '2024-10-30 02:00:02'),
(73, 'App\\Models\\User', 22, 'API Token', '24bbf14cdd766300db58d814fac2c029d13f7f0493ec6c48fa4b85fce4fb0ca7', '[\"*\"]', '2024-10-30 02:49:23', NULL, '2024-10-30 02:48:00', '2024-10-30 02:49:23'),
(74, 'App\\Models\\User', 22, 'API Token', 'ce9336f598befe2f4499b4a04f5b84f72b9e89e65e91021f164d9f4d3e52827b', '[\"*\"]', '2024-10-30 02:54:54', NULL, '2024-10-30 02:51:50', '2024-10-30 02:54:54'),
(75, 'App\\Models\\User', 22, 'API Token', 'ecc59aed06d51cae7ec3c83206e8de876f38b2e6435b79aa9e8ea36218549afd', '[\"*\"]', '2024-10-30 03:06:31', NULL, '2024-10-30 03:06:26', '2024-10-30 03:06:31'),
(76, 'App\\Models\\User', 22, 'API Token', '1f010678eca0aab4c9c75409dc4d254a83caec75af8b0135ed5bae249ae9f5c3', '[\"*\"]', '2024-10-30 03:07:24', NULL, '2024-10-30 03:07:19', '2024-10-30 03:07:24'),
(77, 'App\\Models\\User', 22, 'API Token', '9bdb9a565f38c092cda6ae912174174ca9c32a5651f802a4ad8e0556191cf97a', '[\"*\"]', '2024-10-30 03:08:01', NULL, '2024-10-30 03:07:53', '2024-10-30 03:08:01'),
(78, 'App\\Models\\User', 22, 'API Token', '16d0ce2bcfb6ee4432c83e2cf2ae8a5483fb5ef37684c4a2e595c8d3d6beca79', '[\"*\"]', '2024-10-30 03:09:44', NULL, '2024-10-30 03:09:39', '2024-10-30 03:09:44'),
(79, 'App\\Models\\User', 22, 'API Token', '1afd2a4574c9b259d5876d3072e0a9ee382b1c4eb3092d10bde3754f37ebfcab', '[\"*\"]', '2024-10-30 03:10:54', NULL, '2024-10-30 03:10:53', '2024-10-30 03:10:54'),
(80, 'App\\Models\\User', 22, 'API Token', 'ff49174699de9c64b5bcb9a7050c564a40f17163cdef4f105323b883b250b8d4', '[\"*\"]', '2024-10-30 03:10:59', NULL, '2024-10-30 03:10:54', '2024-10-30 03:10:59'),
(81, 'App\\Models\\User', 22, 'API Token', 'de07d60cc330650f55f7746509b40854c54ddcc72acbc262bbb63cf801bb9844', '[\"*\"]', '2024-10-30 03:14:56', NULL, '2024-10-30 03:13:21', '2024-10-30 03:14:56'),
(82, 'App\\Models\\User', 22, 'API Token', '65cb0698fc4606f5deda373f4968d8d22525a76d37e426454a42ff62bf3be441', '[\"*\"]', '2024-10-30 03:17:21', NULL, '2024-10-30 03:17:13', '2024-10-30 03:17:21'),
(83, 'App\\Models\\User', 22, 'API Token', '4d869e50dcf564875ea52710f88b6849b7a2a944d1f1d5fa6085452e245d4e06', '[\"*\"]', '2024-10-30 03:19:44', NULL, '2024-10-30 03:19:40', '2024-10-30 03:19:44'),
(84, 'App\\Models\\User', 22, 'API Token', '332b8603a8a15002f3bfef5fe761bae492a0c32120074834e16c9713ffce7354', '[\"*\"]', '2024-10-30 03:22:07', NULL, '2024-10-30 03:22:03', '2024-10-30 03:22:07'),
(85, 'App\\Models\\User', 22, 'API Token', '6bdeb3357bbc673043ee8cb70f205e7b9a004ea99ab95619211ada3d63e00c6c', '[\"*\"]', '2024-10-30 03:23:22', NULL, '2024-10-30 03:23:05', '2024-10-30 03:23:22'),
(86, 'App\\Models\\User', 22, 'API Token', '48020293ad668b0c3d80b90d1437ca58aef0096a5541399c7659189eaa6089ea', '[\"*\"]', '2024-10-30 03:24:18', NULL, '2024-10-30 03:24:15', '2024-10-30 03:24:18'),
(87, 'App\\Models\\User', 22, 'API Token', '2f3e057ed1c590986d1554c8351d014bc938f02c36dc4eb693fb0c376e55d618', '[\"*\"]', '2024-10-30 03:27:50', NULL, '2024-10-30 03:27:45', '2024-10-30 03:27:50'),
(88, 'App\\Models\\User', 22, 'API Token', '5bbce6c0454b7a8a584ef53087bbbef21d758380a034c07749f1a9552073fe78', '[\"*\"]', '2024-10-30 03:31:45', NULL, '2024-10-30 03:31:36', '2024-10-30 03:31:45'),
(89, 'App\\Models\\User', 24, 'API Token', '12273ea84b9e742193250f246eb128ff42699d4dff7b65529fdb3fbe52b824df', '[\"*\"]', NULL, NULL, '2024-10-30 03:36:23', '2024-10-30 03:36:23'),
(90, 'App\\Models\\User', 24, 'API Token', 'dae77d573b11b0e9b22cadeb06e099cb10af99921cc78baead7a187487670e3d', '[\"*\"]', NULL, NULL, '2024-10-30 03:37:32', '2024-10-30 03:37:32'),
(91, 'App\\Models\\User', 24, 'API Token', 'fcd9336bdb56489a80c31c54b732fc66a177fa38c874e957579ded6bcb67cd93', '[\"*\"]', '2024-10-30 03:53:00', NULL, '2024-10-30 03:52:18', '2024-10-30 03:53:00'),
(92, 'App\\Models\\User', 24, 'API Token', '5d28425bca7853d3a97fc29961fb3e09d9313d07d3a1671e32a8c3b545cf709a', '[\"*\"]', '2024-10-30 03:55:05', NULL, '2024-10-30 03:54:57', '2024-10-30 03:55:05'),
(93, 'App\\Models\\User', 24, 'API Token', '22b1304f603cb62471ac53a8d027b8f86c4343d6a0865d580373a2efa744a877', '[\"*\"]', '2024-10-30 03:56:15', NULL, '2024-10-30 03:56:11', '2024-10-30 03:56:15'),
(94, 'App\\Models\\User', 24, 'API Token', '158c5f823db993b81d9a9f278a314c9b1312fece15105d3e4f2440ffb832242b', '[\"*\"]', '2024-11-12 02:10:59', NULL, '2024-10-30 03:58:34', '2024-11-12 02:10:59'),
(95, 'App\\Models\\User', 24, 'API Token', 'cbd5c86c9adff00fc3b5fae3e79269535a2305f5f2f59e1068358a578442bb83', '[\"*\"]', '2024-10-30 03:59:17', NULL, '2024-10-30 03:59:12', '2024-10-30 03:59:17'),
(96, 'App\\Models\\User', 24, 'API Token', 'bdc7984c8dffb96b4f6616d36d0b118b758f30383c0269565692ed96f39de0a9', '[\"*\"]', '2024-10-30 04:01:55', NULL, '2024-10-30 04:01:52', '2024-10-30 04:01:55'),
(97, 'App\\Models\\User', 24, 'API Token', '30f9b7fd181e8dd8128bfb5e2300fd02df63aa1820d0524118d4cc9efe7deac4', '[\"*\"]', '2024-10-30 04:04:11', NULL, '2024-10-30 04:04:06', '2024-10-30 04:04:11'),
(98, 'App\\Models\\User', 24, 'API Token', 'ca6a743a7e1b4de18eeecc45633d8368a59119ffef8a10a03de4eb7bba86174b', '[\"*\"]', '2024-10-30 04:16:30', NULL, '2024-10-30 04:16:24', '2024-10-30 04:16:30'),
(99, 'App\\Models\\User', 24, 'API Token', '8cc3417689b3837e1558689c99024e761ad72594acc02dec678b22a80c73a6b0', '[\"*\"]', '2024-10-30 04:17:26', NULL, '2024-10-30 04:17:22', '2024-10-30 04:17:26'),
(100, 'App\\Models\\User', 24, 'API Token', 'a70b088dbbe04b09e558fd09cced00a0b9f274d0bd02fea827b96881bdbef493', '[\"*\"]', '2024-10-30 04:22:56', NULL, '2024-10-30 04:22:52', '2024-10-30 04:22:56'),
(101, 'App\\Models\\User', 24, 'API Token', 'b2ca15dc7f6a6f88ad671ecff89f02769795997e05e3f1de0febfdbe5c4bbab8', '[\"*\"]', '2024-10-30 04:25:07', NULL, '2024-10-30 04:25:03', '2024-10-30 04:25:07'),
(102, 'App\\Models\\User', 24, 'API Token', 'f4de79be631b380861b7e474c043f486b74d13d03a8be0f313ef51ba66c50a7c', '[\"*\"]', '2024-10-30 04:28:56', NULL, '2024-10-30 04:28:50', '2024-10-30 04:28:56'),
(103, 'App\\Models\\User', 24, 'API Token', '3b88b16aec8153379dfcc5f1b90703ccbb1fdfd144ff76807195fb5aa99e16c0', '[\"*\"]', '2024-10-30 04:34:00', NULL, '2024-10-30 04:33:56', '2024-10-30 04:34:00'),
(104, 'App\\Models\\User', 24, 'API Token', 'be4c330992f221e78e504035db0e2ca50d195f19e557ba562a73434e634e2df0', '[\"*\"]', '2024-10-30 04:37:24', NULL, '2024-10-30 04:37:19', '2024-10-30 04:37:24'),
(105, 'App\\Models\\User', 24, 'API Token', '72cc2e076831bb399b37e4718fefe72316c274f3a328463b3c4acf63820cef08', '[\"*\"]', '2024-10-30 04:40:05', NULL, '2024-10-30 04:39:57', '2024-10-30 04:40:05'),
(106, 'App\\Models\\User', 24, 'API Token', 'd07f8c0d71b6991aef00e85f24b418db9556155516d277f747f815824aba9c1d', '[\"*\"]', '2024-10-30 04:41:27', NULL, '2024-10-30 04:41:22', '2024-10-30 04:41:27'),
(107, 'App\\Models\\User', 24, 'API Token', '8a824467ee74465acce7ffafea84289e0346e0376e50ca5e71bc0fd78f88b2ae', '[\"*\"]', '2024-10-30 04:45:42', NULL, '2024-10-30 04:45:37', '2024-10-30 04:45:42'),
(108, 'App\\Models\\User', 24, 'API Token', '57e99bd836ebe1ebae0dcaa354e986cae8d0a814bc1db02419fadfee3aaf9324', '[\"*\"]', '2024-10-30 04:52:20', NULL, '2024-10-30 04:52:14', '2024-10-30 04:52:20'),
(109, 'App\\Models\\User', 24, 'API Token', '35c196acd549371d51f62914ff3ed95bab9d103cffc313ad9b90156a2b5a203f', '[\"*\"]', '2024-10-30 04:57:29', NULL, '2024-10-30 04:53:06', '2024-10-30 04:57:29'),
(110, 'App\\Models\\User', 24, 'API Token', 'ab841a489b910232cb0ca436bd591a16b651215b38d2ea404ec3f222d04b9cdb', '[\"*\"]', '2024-10-30 05:22:07', NULL, '2024-10-30 05:21:57', '2024-10-30 05:22:07'),
(111, 'App\\Models\\User', 24, 'API Token', 'c3d999a08f5992f6243ac9f7e7912c7e3576aa0ff1d7aad4959308005dc528d2', '[\"*\"]', '2024-10-30 05:27:03', NULL, '2024-10-30 05:26:57', '2024-10-30 05:27:03'),
(112, 'App\\Models\\User', 24, 'API Token', 'e65bf63ab1f068e45a54f179d8811c47f1a573d9d3630811dceb6efbb66c1cc0', '[\"*\"]', '2024-10-30 05:28:14', NULL, '2024-10-30 05:28:03', '2024-10-30 05:28:14'),
(113, 'App\\Models\\User', 24, 'API Token', '917c78fe5a36593f7c5f2c58fbd39cfefb081326e0040fdebc7a814c8553d1ba', '[\"*\"]', '2024-11-12 02:11:50', NULL, '2024-10-30 05:59:07', '2024-11-12 02:11:50'),
(114, 'App\\Models\\User', 24, 'API Token', 'f682c17c5523ebc49700778178a96420a89759072784b8e044a3f02221baf9e2', '[\"*\"]', '2024-10-30 06:03:13', NULL, '2024-10-30 06:01:32', '2024-10-30 06:03:13'),
(115, 'App\\Models\\User', 24, 'API Token', '4e6d86023e6ef553c81056111b1c9ddf3a2f8cc4081247e399539afc6c5e530b', '[\"*\"]', '2024-10-30 06:07:03', NULL, '2024-10-30 06:06:59', '2024-10-30 06:07:03'),
(116, 'App\\Models\\User', 24, 'API Token', '62b442d704b90d74a523cfa9c79da11e4fe8a2841ab84043b2ef26658111b108', '[\"*\"]', '2024-10-30 06:13:12', NULL, '2024-10-30 06:13:09', '2024-10-30 06:13:12'),
(117, 'App\\Models\\User', 24, 'API Token', '8cf17ccd0615b576e87f8b00a94bd09b98ba958988bcd0119607e54b680cc39b', '[\"*\"]', '2024-10-30 06:19:03', NULL, '2024-10-30 06:18:57', '2024-10-30 06:19:03'),
(118, 'App\\Models\\User', 22, 'API Token', '0257690db6bb5d216778583386c2f9ab8ae7c6e8065990f3a9b029eeb96ff7b3', '[\"*\"]', '2024-10-31 22:30:28', NULL, '2024-10-31 22:30:08', '2024-10-31 22:30:28'),
(119, 'App\\Models\\User', 22, 'API Token', '0afc1dd7bd4ffe7af7b0260d6983930302d5ce7a63c54666277dd27caab66625', '[\"*\"]', '2024-10-31 22:35:25', NULL, '2024-10-31 22:34:49', '2024-10-31 22:35:25'),
(120, 'App\\Models\\User', 22, 'API Token', '7928318b2101a53cdada4b0a3fe9c9d544df1db1d886a5def824ab383af26dd6', '[\"*\"]', '2024-10-31 22:37:33', NULL, '2024-10-31 22:37:18', '2024-10-31 22:37:33'),
(121, 'App\\Models\\User', 22, 'API Token', '9fb8769a2f78ff2ff1fb66512ebe70c70022be31d9314db3689293b39494188f', '[\"*\"]', '2024-10-31 22:45:31', NULL, '2024-10-31 22:45:12', '2024-10-31 22:45:31'),
(122, 'App\\Models\\User', 22, 'API Token', '59ce1e41684e9eabaaeea464de5fd9c86eedcbe1ac2889b802c59bde7a5a4395', '[\"*\"]', '2024-10-31 22:50:27', NULL, '2024-10-31 22:50:15', '2024-10-31 22:50:27'),
(123, 'App\\Models\\User', 22, 'API Token', 'a429c039b32e6555bbe981377b4fc4fc8927ca53e4e2b7391049a26ad92350ea', '[\"*\"]', '2024-10-31 22:58:28', NULL, '2024-10-31 22:58:20', '2024-10-31 22:58:28'),
(124, 'App\\Models\\User', 22, 'API Token', 'e7b816973f73ee30f1b0d7f00f5b226ce1b845ecc77d66655b1c7ef551e508c3', '[\"*\"]', '2024-10-31 23:01:11', NULL, '2024-10-31 23:01:04', '2024-10-31 23:01:11'),
(125, 'App\\Models\\User', 22, 'API Token', 'acef05fdb59989bf5116468df449fe6feb67654847a5cdf6986519ec18a59738', '[\"*\"]', '2024-10-31 23:03:38', NULL, '2024-10-31 23:03:32', '2024-10-31 23:03:38'),
(126, 'App\\Models\\User', 22, 'API Token', 'c26ffa6561b3968386eea22c49da4a578d345517340a8676dc3485a151cf906e', '[\"*\"]', '2024-10-31 23:07:45', NULL, '2024-10-31 23:07:40', '2024-10-31 23:07:45'),
(127, 'App\\Models\\User', 22, 'API Token', 'cd1081cb601ce9c7ca1da6ddaab375b381ca1cb0cc3593f37afbe7305b41a010', '[\"*\"]', '2024-10-31 23:27:17', NULL, '2024-10-31 23:12:08', '2024-10-31 23:27:17'),
(128, 'App\\Models\\User', 22, 'API Token', 'e58c4eb89e77bdfbddda596aa996f8556caaaae1dbabfbc490c18a6f8a20bb3d', '[\"*\"]', '2024-11-01 00:04:56', NULL, '2024-10-31 23:37:49', '2024-11-01 00:04:56'),
(129, 'App\\Models\\User', 22, 'API Token', '3847f05ef3a883ab811f8243da7cbd265bdb7516122f574da6fc85d0d42f11f5', '[\"*\"]', '2024-11-01 00:32:22', NULL, '2024-11-01 00:32:17', '2024-11-01 00:32:22'),
(130, 'App\\Models\\User', 22, 'API Token', '822672e7837e1858b5ab9502e0d40fc4b288dcb2697bd7f8b69dd19da418b83b', '[\"*\"]', '2024-11-01 00:43:08', NULL, '2024-11-01 00:41:46', '2024-11-01 00:43:08'),
(131, 'App\\Models\\User', 22, 'API Token', '19e89d5f2d085849d4565e46b0103dbd0616c30a5b584154dbba45b6465c2d8b', '[\"*\"]', '2024-11-01 00:43:52', NULL, '2024-11-01 00:43:52', '2024-11-01 00:43:52'),
(132, 'App\\Models\\User', 22, 'API Token', 'f6f636ca7fae01c9ee4b2a688da0eb430c7f84da48c00a6d98c9f4a557ff0a9b', '[\"*\"]', '2024-11-01 00:45:37', NULL, '2024-11-01 00:44:36', '2024-11-01 00:45:37'),
(133, 'App\\Models\\User', 22, 'API Token', '264722d934c3970016e545f754260f33af4c7c0772762c22f2d796078c5c4fd6', '[\"*\"]', '2024-11-01 01:24:22', NULL, '2024-11-01 01:24:21', '2024-11-01 01:24:22'),
(134, 'App\\Models\\User', 22, 'API Token', 'c486cd93e02e70590eab3184ce993c110645cc0724816e2c62091e7b0f81979b', '[\"*\"]', '2024-11-01 05:51:21', NULL, '2024-11-01 05:36:53', '2024-11-01 05:51:21'),
(135, 'App\\Models\\User', 22, 'API Token', '8e6dec8e22551cdd3e35af1cab4663aaaf0109b00bf73ca8abd4d319f8f446a3', '[\"*\"]', '2024-11-04 00:43:15', NULL, '2024-11-04 00:43:09', '2024-11-04 00:43:15'),
(136, 'App\\Models\\User', 22, 'API Token', '2fb08d6726a1181dedbac9df90d37b8889a93b76d98b720eba8704d9c7a98f61', '[\"*\"]', '2024-11-04 00:52:05', NULL, '2024-11-04 00:51:37', '2024-11-04 00:52:05'),
(137, 'App\\Models\\User', 22, 'API Token', '6b5d280e4a74fa05f2d95f192630eee4ea6ce06b81005f814881a420e0e25664', '[\"*\"]', NULL, NULL, '2024-11-04 00:54:10', '2024-11-04 00:54:10'),
(138, 'App\\Models\\User', 22, 'API Token', '0f5c9f30065beaf06b5a61416f50faabba226b106d01bb0edb5aaf1af1331ee4', '[\"*\"]', '2024-11-04 00:57:30', NULL, '2024-11-04 00:54:54', '2024-11-04 00:57:30'),
(139, 'App\\Models\\User', 22, 'API Token', 'c35f0947f6640c9d05e2ac1246f946334e3647c82de09b67ebceef4165cf1007', '[\"*\"]', '2024-11-04 01:00:53', NULL, '2024-11-04 00:58:37', '2024-11-04 01:00:53'),
(140, 'App\\Models\\User', 22, 'API Token', '667ca94041c74b06fe6f85d61915fea06929f21aa6df124d72d9569bae55cfbe', '[\"*\"]', '2024-11-06 02:03:19', NULL, '2024-11-06 02:03:12', '2024-11-06 02:03:19'),
(141, 'App\\Models\\User', 22, 'API Token', 'f12aa54ecbd2435b2000ca0a275b5102b2e8d11914e2d0762996cdd44c1c32f8', '[\"*\"]', '2024-11-06 02:06:40', NULL, '2024-11-06 02:05:27', '2024-11-06 02:06:40'),
(142, 'App\\Models\\User', 22, 'API Token', 'e98fd76ec0cf16e73418329dfce78139f0d3db8da1b107769b3cbdeebd8a6f58', '[\"*\"]', '2024-11-06 03:31:01', NULL, '2024-11-06 03:31:01', '2024-11-06 03:31:01'),
(143, 'App\\Models\\User', 22, 'API Token', 'a618656cbf76abca54e7a8b22d95bb7d675aecffe0189b4caf7f011435977025', '[\"*\"]', '2024-11-06 03:34:11', NULL, '2024-11-06 03:32:51', '2024-11-06 03:34:11'),
(144, 'App\\Models\\User', 22, 'API Token', 'eb3b6401af9413563d2391732c797232bdfff19b4b131c4907970709b76c5199', '[\"*\"]', '2024-11-06 03:52:39', NULL, '2024-11-06 03:52:38', '2024-11-06 03:52:39'),
(145, 'App\\Models\\User', 22, 'API Token', '0d9b76b4d6760ccbe28219e72c600ebd98e49993a460f070d8e82b2c7764695c', '[\"*\"]', '2024-11-06 04:14:50', NULL, '2024-11-06 04:14:50', '2024-11-06 04:14:50'),
(146, 'App\\Models\\User', 22, 'API Token', 'f8cc62e1072bfdba2604b8a842516213b074d09ba39e54edd886cb3e75e3ab97', '[\"*\"]', '2024-11-06 04:38:26', NULL, '2024-11-06 04:38:02', '2024-11-06 04:38:26'),
(147, 'App\\Models\\User', 22, 'API Token', 'd1c77b413cee21f2ef4e02495e6043575167e03551426f0fa38d9e8891288556', '[\"*\"]', '2024-11-06 04:47:22', NULL, '2024-11-06 04:46:42', '2024-11-06 04:47:22'),
(148, 'App\\Models\\User', 22, 'API Token', 'cb5fad66c999a84dc9a63cb3d4e3460b8bb11a90862112e3b7027092db12e4f5', '[\"*\"]', '2024-11-06 04:51:16', NULL, '2024-11-06 04:47:38', '2024-11-06 04:51:16'),
(149, 'App\\Models\\User', 22, 'API Token', '771e172ff5a593e556ef3454b98e74d90ba641e251352ccd1afef81e6aa2ca48', '[\"*\"]', '2024-11-06 04:59:14', NULL, '2024-11-06 04:59:07', '2024-11-06 04:59:14'),
(150, 'App\\Models\\User', 22, 'API Token', 'ce0a4fba49f7f4b2bd9889feda8bbb4a2fa23cf24fc714ffcdba46fb99d82944', '[\"*\"]', '2024-11-06 05:04:59', NULL, '2024-11-06 05:00:01', '2024-11-06 05:04:59'),
(151, 'App\\Models\\User', 22, 'API Token', '51ff591f3910e8deb5d78b6193e4dac2f6ad23259d6c52a305679745960b5a7c', '[\"*\"]', '2024-11-07 05:31:19', NULL, '2024-11-07 05:21:00', '2024-11-07 05:31:19'),
(152, 'App\\Models\\User', 22, 'API Token', '9864c8e941f3e2a6bf47fbfb1ee420fd4f68ed97f2b6f15d6502dd0c79f5b046', '[\"*\"]', '2024-11-07 05:48:46', NULL, '2024-11-07 05:48:22', '2024-11-07 05:48:46'),
(153, 'App\\Models\\User', 22, 'API Token', '315fd787862797188408177bd2cf6b62eb508eab18261e23de7f6835e72f131c', '[\"*\"]', '2024-11-07 22:56:57', NULL, '2024-11-07 22:32:34', '2024-11-07 22:56:57'),
(154, 'App\\Models\\User', 22, 'API Token', '0495574ad5419ca9ce57d748eb51688ca4b5964b5b42471a3f6695f1a8184469', '[\"*\"]', '2024-11-08 02:55:17', NULL, '2024-11-08 02:28:39', '2024-11-08 02:55:17'),
(155, 'App\\Models\\User', 22, 'API Token', '40d906a016a2dc29ec074fccfa0fbb77416d62b6814f6ae94e5f9313e274c5ff', '[\"*\"]', '2024-11-08 02:58:21', NULL, '2024-11-08 02:58:15', '2024-11-08 02:58:21'),
(156, 'App\\Models\\User', 22, 'API Token', '06bb8381be3f50da5fbf786ba61dd16d0a0550f89cdfa441baa929359e5cac9d', '[\"*\"]', '2024-11-08 03:01:35', NULL, '2024-11-08 03:01:32', '2024-11-08 03:01:35'),
(157, 'App\\Models\\User', 22, 'API Token', '311768040825fd7d13efafdcd6fb119e5102fe6a585152f735c9042ca53740f9', '[\"*\"]', '2024-11-08 04:03:57', NULL, '2024-11-08 04:03:52', '2024-11-08 04:03:57'),
(158, 'App\\Models\\User', 22, 'API Token', '808e59db0c0bd8502fe672dad687f7a3849b942ac8c118f71dbc2e794eb193a3', '[\"*\"]', '2024-11-08 04:08:40', NULL, '2024-11-08 04:07:27', '2024-11-08 04:08:40'),
(159, 'App\\Models\\User', 22, 'API Token', '9d2828e0b1a90713e0483096a13293a1a640f3ce1ce7d8c3f0fb2864bfe86004', '[\"*\"]', '2024-11-08 04:11:21', NULL, '2024-11-08 04:10:33', '2024-11-08 04:11:21'),
(160, 'App\\Models\\User', 22, 'API Token', 'be1fffa24a8eacdbc883085d4016b3bb11ae367289a4810081faec5d82c6076b', '[\"*\"]', '2024-11-08 04:19:39', NULL, '2024-11-08 04:19:30', '2024-11-08 04:19:39'),
(161, 'App\\Models\\User', 22, 'API Token', '11b08d0182a6e81709f05de5ff0a7bf5456e1401fd6aa151e4ffe3b7ae2d2033', '[\"*\"]', '2024-11-08 04:25:43', NULL, '2024-11-08 04:25:31', '2024-11-08 04:25:43'),
(162, 'App\\Models\\User', 22, 'API Token', 'a166b99ab4a64fbe0c022ed2243baf0efc9f3f49e2488675e3177b7453e38301', '[\"*\"]', '2024-11-08 04:51:40', NULL, '2024-11-08 04:51:01', '2024-11-08 04:51:40'),
(163, 'App\\Models\\User', 22, 'API Token', '613ae15620dad7f83848e556808dac00c9ded0dfb26940451e15a0c4d6e39cd2', '[\"*\"]', '2024-11-08 05:01:23', NULL, '2024-11-08 05:01:14', '2024-11-08 05:01:23'),
(164, 'App\\Models\\User', 22, 'API Token', '3902fbd05d6fdcc5231806d45d9e3fa003613d443750293e2af5df8e0edb0b0d', '[\"*\"]', '2024-11-08 05:05:04', NULL, '2024-11-08 05:04:52', '2024-11-08 05:05:04'),
(165, 'App\\Models\\User', 22, 'API Token', '4d1b407eda366012d4833bce1899da21136e4d1f7949860e66e61343196c2ffb', '[\"*\"]', '2024-11-08 05:14:55', NULL, '2024-11-08 05:06:42', '2024-11-08 05:14:55'),
(166, 'App\\Models\\User', 22, 'API Token', '8aca5279177baccce91be9953894daae203fdddd1626cdb839e6418afca77e19', '[\"*\"]', '2024-11-08 05:16:30', NULL, '2024-11-08 05:16:20', '2024-11-08 05:16:30'),
(167, 'App\\Models\\User', 22, 'API Token', '8bdc515d909e80b1523e187f85be20a3bcc3bf7459f59c406d8e4f669f6af12d', '[\"*\"]', '2024-11-08 05:18:24', NULL, '2024-11-08 05:18:18', '2024-11-08 05:18:24'),
(168, 'App\\Models\\User', 22, 'API Token', 'df0e7aab908ac9839b3ed44d61925a3026cb3a331b61f7513db3d687479f4546', '[\"*\"]', '2024-11-08 05:20:35', NULL, '2024-11-08 05:20:29', '2024-11-08 05:20:35'),
(169, 'App\\Models\\User', 22, 'API Token', '582d0f8fae148783621863e73d0cc2dc3512fd8e80ede8460c213ca7b75afab1', '[\"*\"]', '2024-11-08 05:21:30', NULL, '2024-11-08 05:21:24', '2024-11-08 05:21:30'),
(170, 'App\\Models\\User', 22, 'API Token', '76ee24f5fafdb19a25b3db9cdd5ec0ef0be29496fd4a2bdad66be10d1817d821', '[\"*\"]', '2024-11-08 05:35:37', NULL, '2024-11-08 05:35:15', '2024-11-08 05:35:37'),
(171, 'App\\Models\\User', 22, 'API Token', 'c13e27923a6b7c523d73a57c70b67354f9fd8eaa8fac299d99b0ad20a32af448', '[\"*\"]', '2024-11-08 05:36:52', NULL, '2024-11-08 05:36:43', '2024-11-08 05:36:52'),
(172, 'App\\Models\\User', 22, 'API Token', '3570166f838e4398e72acd2743e5c55363fb60fab2c20ccbb98674cf5a2b81c0', '[\"*\"]', '2024-11-08 05:40:11', NULL, '2024-11-08 05:37:20', '2024-11-08 05:40:11'),
(173, 'App\\Models\\User', 22, 'API Token', 'e9ee7c2c7db74cbcea3c755bbb646193c8ea5eae24d6e4345ff68f4e35da0890', '[\"*\"]', '2024-11-08 05:48:55', NULL, '2024-11-08 05:48:41', '2024-11-08 05:48:55'),
(174, 'App\\Models\\User', 22, 'API Token', '589c09c4120902d57f09f3da54cc1740177e2ad636c28102c629c68346113411', '[\"*\"]', '2024-11-08 05:55:02', NULL, '2024-11-08 05:50:42', '2024-11-08 05:55:02'),
(175, 'App\\Models\\User', 22, 'API Token', 'e01847b3628104b1b72b3adab963824a54902261df01a33e3b05ebc328c73ea3', '[\"*\"]', '2024-11-10 22:46:59', NULL, '2024-11-10 22:44:57', '2024-11-10 22:46:59'),
(176, 'App\\Models\\User', 22, 'API Token', '46477e29418e66768bda53eee940e5897426b8796235bac1e4603531082d98c8', '[\"*\"]', '2024-11-10 22:53:51', NULL, '2024-11-10 22:53:43', '2024-11-10 22:53:51'),
(177, 'App\\Models\\User', 22, 'API Token', 'c81d8ff6ec3b024e2207cffd3009a3a5dcb9c8b7d9f0ba777c45657b176f26d7', '[\"*\"]', '2024-11-10 23:16:53', NULL, '2024-11-10 23:16:46', '2024-11-10 23:16:53'),
(178, 'App\\Models\\User', 22, 'API Token', '85c0601503a432655ea5ebae563aa4e932885b81152ea64c3691e3377cd4cc83', '[\"*\"]', '2024-11-10 23:22:02', NULL, '2024-11-10 23:19:07', '2024-11-10 23:22:02'),
(179, 'App\\Models\\User', 22, 'API Token', '248573167a0e02fa88328f0002cda2a3634e2778f52c72d8e60357d005d3aefb', '[\"*\"]', '2024-11-10 23:22:32', NULL, '2024-11-10 23:22:22', '2024-11-10 23:22:32'),
(180, 'App\\Models\\User', 22, 'API Token', '54fe19bd633152afcfc7f016a56dd740d9b7facf473abea7c8b39e6a4900d23a', '[\"*\"]', '2024-11-11 00:37:06', NULL, '2024-11-11 00:22:43', '2024-11-11 00:37:06'),
(181, 'App\\Models\\User', 22, 'API Token', '6f1f846e1db912909d7417c11d4bd15f72e8b749401f8cae9eb5a28bf5d7e2d9', '[\"*\"]', '2024-11-11 00:48:16', NULL, '2024-11-11 00:48:08', '2024-11-11 00:48:16'),
(182, 'App\\Models\\User', 22, 'API Token', '09eccee80b0c9ab24d518c0181b8147d5475eaa85e656f4612e6b9a92bbe8a6b', '[\"*\"]', '2024-11-11 01:19:55', NULL, '2024-11-11 00:50:25', '2024-11-11 01:19:55'),
(183, 'App\\Models\\User', 22, 'API Token', '126df5678d2e1d97a4a977baf80dbda6cfdc06ef296fda3cba31cf280ed9460c', '[\"*\"]', '2024-11-11 01:30:10', NULL, '2024-11-11 01:29:57', '2024-11-11 01:30:10'),
(184, 'App\\Models\\User', 22, 'API Token', '22eb2aa8d1878ba903d58f41250f8d8cafb3dc312f11e9f8e4be931b81648efa', '[\"*\"]', '2024-11-11 01:31:56', NULL, '2024-11-11 01:31:49', '2024-11-11 01:31:56'),
(185, 'App\\Models\\User', 22, 'API Token', 'be8c12188cad113a09e2a99e26b1abd4003520ec28bbe81689b9b0dbf95f05b0', '[\"*\"]', '2024-11-11 01:32:52', NULL, '2024-11-11 01:32:41', '2024-11-11 01:32:52'),
(186, 'App\\Models\\User', 22, 'API Token', 'f8e917de59379eb6884439657b4655ce6fb702035caff02fa9bcd8528bff0a59', '[\"*\"]', '2024-11-11 02:44:15', NULL, '2024-11-11 01:44:01', '2024-11-11 02:44:15'),
(187, 'App\\Models\\User', 22, 'API Token', '6fac05a99cc9525cc77859d436f27c0fc7182a8b9ca109debe9563a06ed8a7c8', '[\"*\"]', '2024-11-11 02:55:28', NULL, '2024-11-11 02:55:20', '2024-11-11 02:55:28'),
(188, 'App\\Models\\User', 22, 'API Token', '25ed92c98067da576b858117d1b71f5b80ac134a6f27de7c7dbc07061525e8df', '[\"*\"]', '2024-11-11 03:30:28', NULL, '2024-11-11 03:26:11', '2024-11-11 03:30:28'),
(189, 'App\\Models\\User', 22, 'API Token', '3fc6c51d64300c1b04dfd108f588fa15bf64f569c3998dd09aa1e4f7e6fa9b84', '[\"*\"]', '2024-11-11 04:59:32', NULL, '2024-11-11 04:58:51', '2024-11-11 04:59:32'),
(190, 'App\\Models\\User', 22, 'API Token', 'c4f40a76e9a032595bc969afcb5761e0b4f4e26f00b84bd69b7e9bd926a0fcc8', '[\"*\"]', '2024-11-11 06:12:19', NULL, '2024-11-11 05:02:49', '2024-11-11 06:12:19'),
(191, 'App\\Models\\User', 22, 'API Token', '2fe512a588eca75cf505e11a92c76c5c52a059409dc99c2c50bf6e11ae5f78b4', '[\"*\"]', '2024-11-11 05:08:22', NULL, '2024-11-11 05:06:55', '2024-11-11 05:08:22'),
(192, 'App\\Models\\User', 22, 'API Token', '7f8efed8e5f2818e8a36b2e3d99a0deb2079f38ecb169bd127916d292588bcf8', '[\"*\"]', '2024-11-11 22:28:16', NULL, '2024-11-11 22:17:24', '2024-11-11 22:28:16'),
(193, 'App\\Models\\User', 22, 'API Token', 'bf256ee48afd81f7de661a134b1134e7c4b2840cc03f6dedc3c0deb3cbf5f089', '[\"*\"]', '2024-11-11 22:39:33', NULL, '2024-11-11 22:39:30', '2024-11-11 22:39:33'),
(194, 'App\\Models\\User', 22, 'API Token', '9848afc4d8e306e31285447bca59027145137bb83ffcfa5081c79cd991ce9219', '[\"*\"]', '2024-11-11 22:40:46', NULL, '2024-11-11 22:40:31', '2024-11-11 22:40:46'),
(195, 'App\\Models\\User', 22, 'API Token', '3010887c247a20b7fd950504e1beabb1e99fab1f9da8769f868a5813ef6baf59', '[\"*\"]', '2024-11-11 23:15:24', NULL, '2024-11-11 22:42:03', '2024-11-11 23:15:24'),
(196, 'App\\Models\\User', 22, 'API Token', 'e794d104fb9018b98087022985b5b030aaccc91afac9f72061937edd09eeeb6f', '[\"*\"]', '2024-11-11 23:19:25', NULL, '2024-11-11 23:17:36', '2024-11-11 23:19:25'),
(197, 'App\\Models\\User', 22, 'API Token', 'c8e7268664ac9d45ac46e03fde8ba4adb2dfe144d810fcab83e56eb4688c638f', '[\"*\"]', '2024-11-11 23:23:46', NULL, '2024-11-11 23:22:25', '2024-11-11 23:23:46'),
(198, 'App\\Models\\User', 22, 'API Token', '6995bf0681e1e95a351b4873e8629be3580bb9b78c25d92c3f68caabf1584094', '[\"*\"]', '2024-11-11 23:28:49', NULL, '2024-11-11 23:25:30', '2024-11-11 23:28:49'),
(199, 'App\\Models\\User', 22, 'API Token', 'aacdabfee20f9f234aa1414a559cb9e48cd0b73b00727b9cf036e3bbe65ced8a', '[\"*\"]', '2024-11-11 23:57:37', NULL, '2024-11-11 23:29:28', '2024-11-11 23:57:37'),
(200, 'App\\Models\\User', 22, 'API Token', '967d23305168e5eb861dd2af3319d5cb9aa48c300a71cfcd7668abc8a49006e0', '[\"*\"]', '2024-11-12 00:04:10', NULL, '2024-11-12 00:01:53', '2024-11-12 00:04:10'),
(201, 'App\\Models\\User', 22, 'API Token', '64df5705c7af548de1e5242cef2802fd2d88ae6de242859901c914998a7e5cae', '[\"*\"]', '2024-11-12 00:04:56', NULL, '2024-11-12 00:04:27', '2024-11-12 00:04:56'),
(202, 'App\\Models\\User', 22, 'API Token', '6b5dfbc045d28339084b3a493db62aa756ec8a7d2b0dfd2f2be03705c6d44306', '[\"*\"]', '2024-11-12 00:06:12', NULL, '2024-11-12 00:05:40', '2024-11-12 00:06:12'),
(203, 'App\\Models\\User', 22, 'API Token', '67b018176ce4f13fc2dd7975fb9051807e816304e4829791b9145b6fd60eabd4', '[\"*\"]', '2024-11-12 00:08:25', NULL, '2024-11-12 00:07:35', '2024-11-12 00:08:25'),
(204, 'App\\Models\\User', 22, 'API Token', 'a6f89707906bf77b197469d2e53ec661a324130657990be8d49ef6f70d030f09', '[\"*\"]', '2024-11-12 01:48:21', NULL, '2024-11-12 01:46:45', '2024-11-12 01:48:21'),
(205, 'App\\Models\\User', 22, 'API Token', 'fd872cb10539d08055a0b7086e89996bb6fbb7d96d2f589e19c3d4232dd49273', '[\"*\"]', '2024-11-12 02:01:02', NULL, '2024-11-12 01:58:11', '2024-11-12 02:01:02'),
(206, 'App\\Models\\User', 25, 'API Token', '8fb7dc1c7f2697ece78099219c4b7dac9ceb1d82200eb2034c799e92d350e7e7', '[\"*\"]', '2024-11-12 02:10:57', NULL, '2024-11-12 02:10:22', '2024-11-12 02:10:57'),
(207, 'App\\Models\\User', 22, 'API Token', '69bddadc3a9195b609ce419a86ced9b832d5d9e2c8762c16814e885a397a3b8d', '[\"*\"]', '2024-11-12 02:15:24', NULL, '2024-11-12 02:15:23', '2024-11-12 02:15:24'),
(208, 'App\\Models\\User', 22, 'API Token', 'eea84d52a7d51db9a1da1fe5b6be011e51c7e15d99210f5b43f313881564ddfc', '[\"*\"]', '2024-11-12 02:16:01', NULL, '2024-11-12 02:16:00', '2024-11-12 02:16:01'),
(209, 'App\\Models\\User', 22, 'API Token', '82264e84a54d9644e8ada711da13484c067cd5dc4a43d5a900b96993ea186a25', '[\"*\"]', '2024-11-12 02:16:33', NULL, '2024-11-12 02:16:33', '2024-11-12 02:16:33'),
(210, 'App\\Models\\User', 25, 'API Token', '8ac2c8ce01c5c56ac4d86928cc0907485daf4932d27ba3e3767c30ee6cee878b', '[\"*\"]', '2024-11-12 02:18:36', NULL, '2024-11-12 02:18:22', '2024-11-12 02:18:36'),
(211, 'App\\Models\\User', 25, 'API Token', '80d792b2a112fb55b4f2a3ade8232b1667d915d14e68ca00dfd462075b6a1328', '[\"*\"]', '2024-11-12 02:37:13', NULL, '2024-11-12 02:37:04', '2024-11-12 02:37:13'),
(212, 'App\\Models\\User', 25, 'API Token', 'a555dcc3a40acb29e9197ec73d153eb1592470f69c6af1441f96f10f7c239c5e', '[\"*\"]', '2024-11-12 03:11:41', NULL, '2024-11-12 02:37:40', '2024-11-12 03:11:41'),
(213, 'App\\Models\\User', 25, 'API Token', 'dff4d9ac4979ded58588e06937a1032d52fb217625b737e40fb37dc3ff595e5d', '[\"*\"]', '2024-11-12 02:45:52', NULL, '2024-11-12 02:45:51', '2024-11-12 02:45:52'),
(214, 'App\\Models\\User', 22, 'API Token', '6d094d76b3074ae0385c92d3672d2b2b0c6a1589b74ac6a21c2cc45513438d8c', '[\"*\"]', '2024-11-12 03:00:18', NULL, '2024-11-12 03:00:06', '2024-11-12 03:00:18'),
(215, 'App\\Models\\User', 25, 'API Token', '17e14a2d4279c72d9b89359e6b34cb64401fc04ff17342e9559e1722eaff48f3', '[\"*\"]', '2024-11-12 04:12:01', NULL, '2024-11-12 03:02:46', '2024-11-12 04:12:01'),
(216, 'App\\Models\\User', 22, 'API Token', '614c53ea4955865eb3ab276191c9829a88a2b880944fafa394fac2d83fb0ebcf', '[\"*\"]', '2024-11-12 04:45:18', NULL, '2024-11-12 04:40:10', '2024-11-12 04:45:18'),
(217, 'App\\Models\\User', 22, 'API Token', '454d41aeeba2bb0e88c9f1759d431cf0565453d6dde736f555df4524073d5086', '[\"*\"]', '2024-11-25 08:19:11', NULL, '2024-11-25 08:19:11', '2024-11-25 08:19:11'),
(218, 'App\\Models\\User', 22, 'API Token', 'a3cc125704aba4a41f41eb613467c3b5d95a7d775a32b1f73d269d55a271ab35', '[\"*\"]', '2024-11-25 08:20:14', NULL, '2024-11-25 08:20:05', '2024-11-25 08:20:14'),
(219, 'App\\Models\\User', 26, 'API Token', '8ac9077245d4ce8238a4945c1780732e16a34bab2629690e6afa6c476c08f981', '[\"*\"]', '2024-11-25 08:21:54', NULL, '2024-11-25 08:21:53', '2024-11-25 08:21:54'),
(220, 'App\\Models\\User', 27, 'API Token', '8eb07e23ecc6798e96552fa333ab3b84db3893e0f5125e8d082bb692ec9fb82d', '[\"*\"]', '2024-11-25 08:23:58', NULL, '2024-11-25 08:22:56', '2024-11-25 08:23:58'),
(221, 'App\\Models\\User', 22, 'API Token', 'a4f6557670c9197500ad99afddd207b9bc01c505a3d975577ad3e2e34a681789', '[\"*\"]', '2024-11-25 08:29:16', NULL, '2024-11-25 08:28:50', '2024-11-25 08:29:16'),
(222, 'App\\Models\\User', 22, 'API Token', '58f97cd050222a86294b17e68274da523cd9cd24605e2643536e0ffdd0cc5eec', '[\"*\"]', '2024-11-25 08:30:25', NULL, '2024-11-25 08:29:56', '2024-11-25 08:30:25'),
(223, 'App\\Models\\User', 27, 'API Token', 'caa34d459cb0513aa6be068ebfca78d0f02dfb46694671b22e93bca74c0f3af5', '[\"*\"]', '2024-11-25 08:36:56', NULL, '2024-11-25 08:36:56', '2024-11-25 08:36:56'),
(224, 'App\\Models\\User', 25, 'API Token', 'e2f9e0ff934c0e9262779f8c1576f713c5f2b6bd8374589d837e7ba205c46ad8', '[\"*\"]', '2024-11-25 08:38:00', NULL, '2024-11-25 08:37:56', '2024-11-25 08:38:00'),
(225, 'App\\Models\\User', 27, 'API Token', 'b460fe6059b83c3b6b57b935f0a95251e1eb505f20d5f1cb9cc26f3eadfd0dc9', '[\"*\"]', '2024-11-25 09:06:27', NULL, '2024-11-25 09:05:45', '2024-11-25 09:06:27'),
(226, 'App\\Models\\User', 27, 'API Token', '6caccab5e6b152693c3fa2a215ae50b6369330d419b1287380a702b1e4269800', '[\"*\"]', '2024-11-25 10:18:34', NULL, '2024-11-25 09:59:48', '2024-11-25 10:18:34'),
(227, 'App\\Models\\User', 1, 'API Token', 'fd03e0fdaf4e184c950826a9d6bf11bb26ee8e593fed0a4c95350e1169771acc', '[\"*\"]', '2024-11-29 05:59:59', NULL, '2024-11-29 05:59:59', '2024-11-29 05:59:59'),
(228, 'App\\Models\\User', 22, 'API Token', 'b1c7c534a24f3e0251509a217cbd8f9788ef3eea73ffe8d8ace48d5f4ccceff9', '[\"*\"]', '2024-11-29 06:02:41', NULL, '2024-11-29 06:02:41', '2024-11-29 06:02:41'),
(229, 'App\\Models\\User', 22, 'API Token', '1bc52b134317564914d51c46637c5b4ead7fd590898ce25f4be5112555958b3c', '[\"*\"]', '2024-12-03 11:05:16', NULL, '2024-12-03 11:05:15', '2024-12-03 11:05:16'),
(230, 'App\\Models\\User', 27, 'API Token', '09ceba2a4fde44c26160adc2d93b795e472fc4b335c2f89e520a9351f32d5158', '[\"*\"]', '2024-12-03 11:28:46', NULL, '2024-12-03 11:28:46', '2024-12-03 11:28:46'),
(231, 'App\\Models\\User', 46, 'API Token', 'b477dbb96365643df0a6f83e768ba0e989b51f6dbde2a7006277917dbe7d7fdb', '[\"*\"]', '2024-12-10 08:35:44', NULL, '2024-12-10 08:25:50', '2024-12-10 08:35:44'),
(232, 'App\\Models\\User', 46, 'API Token', '41ebad66f43b8c9ac236389f77573f36dcc825318e1649f8e8d093aa7964f696', '[\"*\"]', '2024-12-10 08:35:41', NULL, '2024-12-10 08:29:22', '2024-12-10 08:35:41'),
(233, 'App\\Models\\User', 50, 'API Token', '2f515fb3d6e9b2b6e6baa78ce1eb6e44b5234de2c3721cdf7cda5863de83da3d', '[\"*\"]', '2024-12-10 08:35:23', NULL, '2024-12-10 08:35:03', '2024-12-10 08:35:23'),
(234, 'App\\Models\\User', 46, 'API Token', '7db8be60544205a830e8d6a8215e4700fa4143def6a76cce4dd2ffa7f6f17dac', '[\"*\"]', '2024-12-10 08:36:24', NULL, '2024-12-10 08:36:10', '2024-12-10 08:36:24'),
(235, 'App\\Models\\User', 50, 'API Token', '0e3dc0115c93511fa150a5e2ba1fd03cefbc54e758bab06216789eef55bccecc', '[\"*\"]', '2024-12-10 08:40:27', NULL, '2024-12-10 08:37:24', '2024-12-10 08:40:27'),
(236, 'App\\Models\\User', 46, 'API Token', '51725d2104eeb72a4d33814329b1ef55cfc1cc2509c002694d81dc27216a4367', '[\"*\"]', '2024-12-10 09:18:14', NULL, '2024-12-10 08:46:43', '2024-12-10 09:18:14'),
(237, 'App\\Models\\User', 50, 'API Token', '1fccf42a6f97940e27e52ce4d1159ac95fe265816365f5e534e491988b474266', '[\"*\"]', '2024-12-10 10:22:01', NULL, '2024-12-10 09:20:05', '2024-12-10 10:22:01'),
(238, 'App\\Models\\User', 42, 'API Token', '1b8fe09bb0213d34f4822551ef744d027b9367a074a26f2c11df1b1a824c36be', '[\"*\"]', '2025-01-04 04:38:57', NULL, '2025-01-04 04:38:45', '2025-01-04 04:38:57'),
(239, 'App\\Models\\User', 42, 'API Token', 'f43ddc1b4646e06866eb9a0f6ddca0d4225946aa69d65e3930c575f9479a5780', '[\"*\"]', '2025-01-04 04:45:30', NULL, '2025-01-04 04:45:30', '2025-01-04 04:45:30'),
(240, 'App\\Models\\User', 42, 'API Token', '13dbbf55075b6b149ce6e8e2929c01d002481a0efb82160e6acfa65aa84790c2', '[\"*\"]', '2025-01-07 06:35:57', NULL, '2025-01-07 06:35:52', '2025-01-07 06:35:57'),
(241, 'App\\Models\\User', 42, 'API Token', '9ba6fa145ddb54413f54a8903bccadbbba1694ff1740dccea503ac2729711310', '[\"*\"]', '2025-01-09 08:36:30', NULL, '2025-01-09 08:35:59', '2025-01-09 08:36:30'),
(242, 'App\\Models\\User', 42, 'API Token', 'b6b15c325e9e4ec45623623d634fcb8ea230ab6f15bceeb520683e93fa6ac6cc', '[\"*\"]', '2025-01-09 08:41:26', NULL, '2025-01-09 08:41:26', '2025-01-09 08:41:26'),
(243, 'App\\Models\\User', 42, 'API Token', '9f569be44b241ac96898cba390e29c596e139fcb08eed89020a43b6f9fd8f514', '[\"*\"]', '2025-01-09 09:28:36', NULL, '2025-01-09 08:41:45', '2025-01-09 09:28:36'),
(244, 'App\\Models\\User', 46, 'API Token', 'b6e8c5c4c96dbaea3c01575ed1c3fd6525edd32b11ad7862de22a0ad2865ca9e', '[\"*\"]', '2025-01-27 06:10:14', NULL, '2025-01-27 06:08:47', '2025-01-27 06:10:14'),
(245, 'App\\Models\\User', 46, 'API Token', '2b013b05e280b3bd1c4b02393d6c45d33cbad8fe8d031398ebd29f35f5a6a5e6', '[\"*\"]', '2025-01-27 07:21:13', NULL, '2025-01-27 06:25:38', '2025-01-27 07:21:13'),
(246, 'App\\Models\\User', 46, 'API Token', '5013e40aeb4d35c09404004897cb114f0cc6193a1c62b9889c0dc950b73b99b9', '[\"*\"]', '2025-01-27 07:22:45', NULL, '2025-01-27 07:22:41', '2025-01-27 07:22:45'),
(247, 'App\\Models\\User', 50, 'API Token', '4587b0f960bbd5790441c4469a1d47beba0448aa6b54ae8c92971f887d078ce8', '[\"*\"]', '2025-01-29 08:15:37', NULL, '2025-01-29 08:15:36', '2025-01-29 08:15:37'),
(248, 'App\\Models\\User', 50, 'API Token', '8130a78e5cf7500b703ee695becdceec37165c8502393453be472ddfb84415a7', '[\"*\"]', '2025-01-29 08:15:53', NULL, '2025-01-29 08:15:53', '2025-01-29 08:15:53'),
(249, 'App\\Models\\User', 50, 'API Token', '46a711938ccdbc99658798ee1a4eeb02ef8bc9320da985cf6c337c7a7a6c996d', '[\"*\"]', '2025-01-29 09:29:43', NULL, '2025-01-29 08:19:12', '2025-01-29 09:29:43'),
(250, 'App\\Models\\User', 42, 'API Token', '7c3eb16dccf24e0d4c5a50c83b74088b2bb3556515326f94220484de860d4db9', '[\"*\"]', '2025-01-30 05:40:22', NULL, '2025-01-30 05:40:22', '2025-01-30 05:40:22'),
(251, 'App\\Models\\User', 42, 'API Token', 'd46a10a69299e4a9854a1834e46ec7ec8eb68e7fe3823cf8d687752cda2f68e2', '[\"*\"]', '2025-01-30 05:44:15', NULL, '2025-01-30 05:43:31', '2025-01-30 05:44:15'),
(252, 'App\\Models\\User', 42, 'API Token', 'db113055490379d607fe6b601963ffd008605df2dc5f61d362584ce6fc23335a', '[\"*\"]', '2025-01-30 06:19:28', NULL, '2025-01-30 05:47:07', '2025-01-30 06:19:28'),
(253, 'App\\Models\\User', 148, 'API Token', '9a0cd7c846776d37844c2579c56ed49e3bf1122046d27621257433fc44eb1595', '[\"*\"]', '2025-02-08 05:06:15', NULL, '2025-02-08 05:06:15', '2025-02-08 05:06:15'),
(254, 'App\\Models\\User', 148, 'API Token', '86532dd00ee916c28b48fadc1444171abb6fe7fd39f13a9b21ec5e346dbf9ba9', '[\"*\"]', '2025-02-08 05:07:02', NULL, '2025-02-08 05:07:02', '2025-02-08 05:07:02');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(255, 'App\\Models\\User', 149, 'API Token', 'de1490bd9ba9ea9299f135a612e97b3bb0538cab97df78be6c5d6f5bcdd05edb', '[\"*\"]', '2025-02-08 05:13:08', NULL, '2025-02-08 05:13:08', '2025-02-08 05:13:08'),
(256, 'App\\Models\\User', 149, 'API Token', '3e7e5389558049faf821f2114947c85fa3e7200877ef4f11f886b5449e96f3d4', '[\"*\"]', '2025-02-08 05:14:34', NULL, '2025-02-08 05:14:33', '2025-02-08 05:14:34'),
(257, 'App\\Models\\User', 149, 'API Token', '0c72753a51683461f3847ced80ba4952d539cf9e4b688fef8f3538bf7e87a490', '[\"*\"]', '2025-02-08 05:16:10', NULL, '2025-02-08 05:16:10', '2025-02-08 05:16:10'),
(258, 'App\\Models\\User', 149, 'API Token', 'd6bd51c86f9d3eed05c7a67412873f7e4bafeb51692d061e1026d359127a5f28', '[\"*\"]', '2025-02-08 05:19:20', NULL, '2025-02-08 05:17:58', '2025-02-08 05:19:20'),
(259, 'App\\Models\\User', 149, 'API Token', 'f9713744b5e8668fab959a69c3a0e9e885b675e381f774f571095c756fe39995', '[\"*\"]', '2025-02-14 07:00:38', NULL, '2025-02-08 05:34:05', '2025-02-14 07:00:38'),
(260, 'App\\Models\\User', 149, 'API Token', '50933c43e91184e6ecdef79e0097d196d30bd99b3c9f4a7219cb563eaa62f33f', '[\"*\"]', '2025-02-14 11:17:03', NULL, '2025-02-08 05:42:07', '2025-02-14 11:17:03'),
(261, 'App\\Models\\User', 149, 'API Token', '6f6401a142cfec81e8cec58e38e6c2c968ea814e98b6529c8ce8eaae9c2d7806', '[\"*\"]', '2025-02-08 09:40:14', NULL, '2025-02-08 09:40:07', '2025-02-08 09:40:14'),
(262, 'App\\Models\\User', 149, 'API Token', '14034dbf909249c7ec4c0dd83f05480572439277eebe159ed15e57fc553d4c67', '[\"*\"]', '2025-02-08 09:54:45', NULL, '2025-02-08 09:54:43', '2025-02-08 09:54:45'),
(263, 'App\\Models\\User', 149, 'API Token', '7d07d5aa62a3a59c3d68e4b8f8fd7779d6222f5442342d6db0e7f054134b9747', '[\"*\"]', '2025-02-08 09:55:10', NULL, '2025-02-08 09:55:08', '2025-02-08 09:55:10'),
(264, 'App\\Models\\User', 149, 'API Token', '41845c2d465ca982e144b880f86e64fffc852c94f2d2aaee0cc01b3bb052b668', '[\"*\"]', '2025-02-08 09:55:47', NULL, '2025-02-08 09:55:46', '2025-02-08 09:55:47'),
(265, 'App\\Models\\User', 149, 'API Token', 'a4da6841d4a6d9c269a776485f6f100ff694c224e4bb6ef7f719b74d79dc7426', '[\"*\"]', '2025-02-08 10:28:22', NULL, '2025-02-08 10:03:07', '2025-02-08 10:28:22'),
(266, 'App\\Models\\User', 149, 'API Token', '28257bd6933589fdd8e8ad1644f93253019be92afea14073e3bac4009a1789c5', '[\"*\"]', '2025-02-08 10:20:28', NULL, '2025-02-08 10:20:22', '2025-02-08 10:20:28'),
(267, 'App\\Models\\User', 149, 'API Token', 'a283cef1407273689a5dcdec70d820104d2708270ca1b3e37d6c2b4b1c727bbb', '[\"*\"]', '2025-02-08 10:21:10', NULL, '2025-02-08 10:20:58', '2025-02-08 10:21:10'),
(268, 'App\\Models\\User', 149, 'API Token', '0a341d72f3b780a0281d1c78c7dab80efe9d53fb3905776a9ba33bf9482814d9', '[\"*\"]', '2025-02-10 04:51:49', NULL, '2025-02-10 04:51:46', '2025-02-10 04:51:49'),
(269, 'App\\Models\\User', 149, 'API Token', 'b6180d44931970abc974b6881ad64c9116bbb0ad569c2e7b9f18e6a95e08454b', '[\"*\"]', '2025-02-10 05:11:46', NULL, '2025-02-10 05:11:19', '2025-02-10 05:11:46'),
(270, 'App\\Models\\User', 149, 'API Token', '4d9ee438af0b37d416a5ee051285df1d0a54973d40b4976481895410839fed63', '[\"*\"]', '2025-02-10 05:30:56', NULL, '2025-02-10 05:30:54', '2025-02-10 05:30:56'),
(271, 'App\\Models\\User', 149, 'API Token', '71b547d452891020e7443b0953446b68614fdbee9327272f4d23d110f6adf6ef', '[\"*\"]', '2025-02-10 05:32:24', NULL, '2025-02-10 05:32:23', '2025-02-10 05:32:24'),
(272, 'App\\Models\\User', 149, 'API Token', '63b57f5216a2f2072a0a05e2dae7e0e86764f664738bd252e349cd756ead20fd', '[\"*\"]', '2025-02-10 05:36:02', NULL, '2025-02-10 05:35:59', '2025-02-10 05:36:02'),
(273, 'App\\Models\\User', 149, 'API Token', '72abc9c806968fda22867aa1f77fa5177edd5bda48168f60265bf32929d254b3', '[\"*\"]', '2025-02-10 05:46:30', NULL, '2025-02-10 05:46:29', '2025-02-10 05:46:30'),
(274, 'App\\Models\\User', 149, 'API Token', 'bb12c2ae711095978b27f0416cee1e802847f1bdbcd21b6fc12f87a2bd6f53e6', '[\"*\"]', '2025-02-10 05:47:40', NULL, '2025-02-10 05:47:39', '2025-02-10 05:47:40'),
(275, 'App\\Models\\User', 149, 'API Token', 'b0dddfd91434afd549c07c0ef449880d51e3397dd4157c1f68397e27a6fa2a7a', '[\"*\"]', '2025-02-10 06:03:47', NULL, '2025-02-10 06:03:45', '2025-02-10 06:03:47'),
(276, 'App\\Models\\User', 149, 'API Token', '69bd78460ac9380106ed9a2f277e485efbb06acd51d699e0e593b11231a0b6fd', '[\"*\"]', '2025-02-10 06:18:22', NULL, '2025-02-10 06:18:19', '2025-02-10 06:18:22'),
(277, 'App\\Models\\User', 149, 'API Token', 'd915bfcd140e6203acc61f98f768b4fc8b78e7433763b09f75f40f98dbcd96ee', '[\"*\"]', '2025-02-10 06:26:23', NULL, '2025-02-10 06:26:21', '2025-02-10 06:26:23'),
(278, 'App\\Models\\User', 149, 'API Token', '233a025fe5c43077170897dbdfe7aa3436c76581fd3063dc0077a8292fff383b', '[\"*\"]', '2025-02-10 06:59:39', NULL, '2025-02-10 06:59:37', '2025-02-10 06:59:39'),
(279, 'App\\Models\\User', 149, 'API Token', 'aa7f4a7164e73e79e92c378f5a77b9422b230f6e444ea72b0102044258091b58', '[\"*\"]', '2025-02-10 07:00:35', NULL, '2025-02-10 07:00:33', '2025-02-10 07:00:35'),
(280, 'App\\Models\\User', 149, 'API Token', '7b44c424aeb3267e4f53efd94ed9045ea9c730621ef3cbcceecd0e1c2691797d', '[\"*\"]', '2025-02-10 07:18:00', NULL, '2025-02-10 07:17:58', '2025-02-10 07:18:00'),
(281, 'App\\Models\\User', 149, 'API Token', '2b2f1f8bc843cc943ee3c643955bb68bdd15d90ff3ca4bf75e60b09bff0e71a7', '[\"*\"]', '2025-02-10 07:21:08', NULL, '2025-02-10 07:21:05', '2025-02-10 07:21:08'),
(282, 'App\\Models\\User', 149, 'API Token', 'ed6cf3667289e621c88c876fd73c266505278bce4d729a2cc069304cd74590cc', '[\"*\"]', '2025-02-10 09:05:23', NULL, '2025-02-10 09:05:19', '2025-02-10 09:05:23'),
(283, 'App\\Models\\User', 149, 'API Token', '6a905d07745e5042e26a652db7804838b605f10fe0fbfe1903a6f8073982d2ca', '[\"*\"]', '2025-02-10 09:08:19', NULL, '2025-02-10 09:08:17', '2025-02-10 09:08:19'),
(284, 'App\\Models\\User', 149, 'API Token', '9bbfcad711e6f70bf046bcb2ff7f0aae477be67a5f00dff2820607957c04a520', '[\"*\"]', '2025-02-10 09:41:44', NULL, '2025-02-10 09:41:42', '2025-02-10 09:41:44'),
(285, 'App\\Models\\User', 149, 'API Token', 'be5e0724f218f530d58a77525f469095b192bef4de520bba65f18ff780325dfc', '[\"*\"]', '2025-02-10 09:45:14', NULL, '2025-02-10 09:45:13', '2025-02-10 09:45:14'),
(286, 'App\\Models\\User', 149, 'API Token', 'ea58de05001776bff669e7da2828c9f5f2e84d4be811a8011abec236ae014866', '[\"*\"]', '2025-02-10 09:47:33', NULL, '2025-02-10 09:47:31', '2025-02-10 09:47:33'),
(287, 'App\\Models\\User', 149, 'API Token', '8b44d6c8be53552924437aa5985ec2ab76a2adac7bc0c8ceaa11f39c38f7f541', '[\"*\"]', '2025-02-10 09:50:07', NULL, '2025-02-10 09:50:06', '2025-02-10 09:50:07'),
(288, 'App\\Models\\User', 149, 'API Token', '0c0e0efc870b0ba66a9bc778f645bda59ea47b04308e966ae31be9ea58c62de3', '[\"*\"]', '2025-02-10 09:54:48', NULL, '2025-02-10 09:54:47', '2025-02-10 09:54:48'),
(289, 'App\\Models\\User', 149, 'API Token', '83220e96e168a1ef0abb6c42f8f4292c6f08b7928654bd38ff13ddb14f7ae089', '[\"*\"]', '2025-02-11 04:10:18', NULL, '2025-02-11 04:10:15', '2025-02-11 04:10:18'),
(290, 'App\\Models\\User', 149, 'API Token', '70e89ca1d47677bfb8fc6a70914a89b93469a7ebeebda9918a0f06ebf2afee08', '[\"*\"]', '2025-02-14 06:45:03', NULL, '2025-02-14 06:44:51', '2025-02-14 06:45:03'),
(291, 'App\\Models\\User', 149, 'API Token', '6eca1fa7c7089d77d1f120396dfdfd5e4fa45475ed5b1e4029cf0c21722d8fe6', '[\"*\"]', '2025-02-14 06:59:21', NULL, '2025-02-14 06:59:12', '2025-02-14 06:59:21'),
(292, 'App\\Models\\User', 149, 'API Token', '4b286dc570685d81298066e9c88cb1414e1f35ceadb833225060193d778e7aeb', '[\"*\"]', '2025-02-14 07:02:57', NULL, '2025-02-14 07:02:54', '2025-02-14 07:02:57'),
(293, 'App\\Models\\User', 149, 'API Token', '33d544307f2fc4bd1212ea704779d9e83af02531d60fb6fbc9a7224d709dc5d5', '[\"*\"]', '2025-02-14 07:19:00', NULL, '2025-02-14 07:18:49', '2025-02-14 07:19:00'),
(294, 'App\\Models\\User', 149, 'API Token', 'a2303df6260761bda46f66ad1e93893076a8f5ded7695409c71f1d6ec28b6c2d', '[\"*\"]', '2025-02-14 07:32:19', NULL, '2025-02-14 07:32:15', '2025-02-14 07:32:19'),
(295, 'App\\Models\\User', 149, 'API Token', '5464d8fe45639e6ef66a9abd6784357550ce3153e2ccb306b71f6d87db8406a9', '[\"*\"]', '2025-02-14 07:36:49', NULL, '2025-02-14 07:36:42', '2025-02-14 07:36:49'),
(296, 'App\\Models\\User', 149, 'API Token', '91f231b1c7cf87a782900f259f6c4f0018a11c3e31342600110b085a44601ce1', '[\"*\"]', '2025-02-14 07:41:36', NULL, '2025-02-14 07:41:34', '2025-02-14 07:41:36'),
(297, 'App\\Models\\User', 149, 'API Token', 'b07ba03db85207af51974bfaa2c95b21febba223a7f65809eb79a7e6839e9810', '[\"*\"]', '2025-02-14 08:29:25', NULL, '2025-02-14 08:17:22', '2025-02-14 08:29:25'),
(298, 'App\\Models\\User', 149, 'API Token', '6f7f11e28aa5f5ecef70d70ff2031bd4793da56a53b354220a21e8453cb4ded3', '[\"*\"]', '2025-02-14 08:31:39', NULL, '2025-02-14 08:31:37', '2025-02-14 08:31:39'),
(299, 'App\\Models\\User', 149, 'API Token', '72c079c60b071602a7b13c20f598014e86bc7a062e9a202ede487fec5810e723', '[\"*\"]', '2025-02-14 09:08:41', NULL, '2025-02-14 09:08:39', '2025-02-14 09:08:41'),
(300, 'App\\Models\\User', 149, 'API Token', '83d0d5a8b83f78a3f6e81894ec4cf472337f1d2173fed012f69c7e632d069477', '[\"*\"]', '2025-02-14 09:10:07', NULL, '2025-02-14 09:10:05', '2025-02-14 09:10:07'),
(301, 'App\\Models\\User', 149, 'API Token', '9f2326517bce5da55d84f8a8da9f0daded64631f055babdfcee596f133305243', '[\"*\"]', '2025-02-14 09:11:06', NULL, '2025-02-14 09:11:01', '2025-02-14 09:11:06'),
(302, 'App\\Models\\User', 149, 'API Token', 'd8ccf32f43eeb57e99773e95218d2e10ddfaaa4e86609174ce7c344527d498b1', '[\"*\"]', '2025-02-14 09:12:47', NULL, '2025-02-14 09:12:44', '2025-02-14 09:12:47'),
(303, 'App\\Models\\User', 149, 'API Token', 'f1ab3f296d58587c8b1d28cd158bb08bbed3aca4c4f32c9725bcecafff8e95c3', '[\"*\"]', '2025-02-14 09:14:49', NULL, '2025-02-14 09:14:44', '2025-02-14 09:14:49'),
(304, 'App\\Models\\User', 149, 'API Token', '2df62c33f2a69e0566a6d95247d81f840a94ebaebfc595e3ee7e80bc832bc31b', '[\"*\"]', '2025-02-14 10:52:03', NULL, '2025-02-14 09:58:45', '2025-02-14 10:52:03'),
(305, 'App\\Models\\User', 149, 'API Token', '7680604ee2fe2942269b9447aadc47f4a5355d321736c9e2fff82d1bdcf44649', '[\"*\"]', '2025-02-14 11:18:28', NULL, '2025-02-14 11:13:54', '2025-02-14 11:18:28'),
(306, 'App\\Models\\User', 149, 'API Token', 'b1d2f90670a584150216b4139054cd267b60e840fcf1f9cc7467c4bb3e40417f', '[\"*\"]', '2025-02-14 11:21:22', NULL, '2025-02-14 11:21:20', '2025-02-14 11:21:22'),
(307, 'App\\Models\\User', 149, 'API Token', '6edc7bfdd84ecd868e1bf5a13b66334eae8f78de84714dc58b5ab6bd8789b299', '[\"*\"]', '2025-02-14 11:22:54', NULL, '2025-02-14 11:22:51', '2025-02-14 11:22:54'),
(308, 'App\\Models\\User', 149, 'API Token', '05420aa89a03377878c585130d1a8ac255ca83f6d2addb8b3ae97b2baae78fab', '[\"*\"]', '2025-02-14 11:24:04', NULL, '2025-02-14 11:24:03', '2025-02-14 11:24:04'),
(309, 'App\\Models\\User', 149, 'API Token', 'bc003683c2cdc88938fbe00ad7969534ec4615202fedd1e31e25048d4867a6dc', '[\"*\"]', '2025-02-14 11:25:17', NULL, '2025-02-14 11:25:13', '2025-02-14 11:25:17'),
(310, 'App\\Models\\User', 149, 'API Token', 'c01e23f82651666533350c3ce448bcdf0aa13a90d3ffdfcbfb12af7979f8c39f', '[\"*\"]', '2025-02-14 12:01:48', NULL, '2025-02-14 11:39:17', '2025-02-14 12:01:48'),
(311, 'App\\Models\\User', 149, 'API Token', 'a6ba383f3fb32ca7d2c02a20bbab3759d6ecd0817c67745bc13d8039c331449c', '[\"*\"]', '2025-02-15 09:39:34', NULL, '2025-02-15 09:38:57', '2025-02-15 09:39:34'),
(312, 'App\\Models\\User', 149, 'API Token', 'd6e5b5a626a66c7d5316ca5b497cf20c5885a7b02c3f7ea00c5dd8f437de8587', '[\"*\"]', '2025-02-15 11:18:56', NULL, '2025-02-15 09:41:43', '2025-02-15 11:18:56'),
(313, 'App\\Models\\User', 149, 'API Token', 'cd2ad75bc81c7f669ea2bcaa0bc4f80b88fecd8b2ddf0e640b726860d0e24b92', '[\"*\"]', '2025-02-15 11:21:53', NULL, '2025-02-15 11:21:06', '2025-02-15 11:21:53'),
(314, 'App\\Models\\User', 149, 'API Token', 'f06a945e425ca14a9db3487a21e6fb6fa7905baa69bf231dc7caa86f4d40cfbb', '[\"*\"]', '2025-02-15 11:24:37', NULL, '2025-02-15 11:23:51', '2025-02-15 11:24:37'),
(315, 'App\\Models\\User', 149, 'API Token', '4d501f107c6ae5e0db0fc6e2d8cf2e921e2ba51f1190f30665d048c114e49212', '[\"*\"]', '2025-02-15 11:27:49', NULL, '2025-02-15 11:26:34', '2025-02-15 11:27:49'),
(316, 'App\\Models\\User', 149, 'API Token', '77811ae5f385afd2579476330d98712ac0e365b1b86650f54d6aa79b668a1843', '[\"*\"]', '2025-02-17 04:09:05', NULL, '2025-02-17 04:08:35', '2025-02-17 04:09:05'),
(317, 'App\\Models\\User', 149, 'API Token', 'dc4371277835f3917f0efda9a6eda42b3c0feeede93920fa70de58a6436c576f', '[\"*\"]', '2025-02-17 04:21:49', NULL, '2025-02-17 04:17:28', '2025-02-17 04:21:49'),
(318, 'App\\Models\\User', 149, 'API Token', '64de0e940645395acb81faf3bac654cc1724d1f7896c50716e259b9e3b038623', '[\"*\"]', '2025-02-17 04:23:52', NULL, '2025-02-17 04:23:46', '2025-02-17 04:23:52'),
(319, 'App\\Models\\User', 149, 'API Token', '79384f0975549b1704e59a34187931b4be099468819513233f45c71254cd58f8', '[\"*\"]', '2025-02-17 04:26:45', NULL, '2025-02-17 04:26:40', '2025-02-17 04:26:45'),
(320, 'App\\Models\\User', 149, 'API Token', '8f315342332d87f51e84be2756cd2557aaeda1f2808637ed6a3eaa2318df248c', '[\"*\"]', '2025-02-17 04:29:51', NULL, '2025-02-17 04:29:13', '2025-02-17 04:29:51'),
(321, 'App\\Models\\User', 149, 'API Token', '90f8d744b5de0a67d7ce84a941bd613feacfbba0cbc04efcc318cdebeb29d895', '[\"*\"]', '2025-02-17 04:33:47', NULL, '2025-02-17 04:33:41', '2025-02-17 04:33:47'),
(322, 'App\\Models\\User', 149, 'API Token', '1eab9b4d580e4a598ce6f0a32321646dce143c83b78e7888ba63c87a3de40709', '[\"*\"]', '2025-02-17 06:41:32', NULL, '2025-02-17 05:17:51', '2025-02-17 06:41:32'),
(323, 'App\\Models\\User', 149, 'API Token', 'f13fdb1c6418142007f9a3f235c35b1fc012f30d8a7b32fa84f50d40507337b4', '[\"*\"]', '2025-02-17 06:48:37', NULL, '2025-02-17 06:42:02', '2025-02-17 06:48:37'),
(324, 'App\\Models\\User', 149, 'API Token', 'c54629a72bc59aa0d2c696a4659d34f4d8b65d37309e82df9d2c255af99107c2', '[\"*\"]', '2025-02-17 07:45:14', NULL, '2025-02-17 07:43:56', '2025-02-17 07:45:14'),
(325, 'App\\Models\\User', 149, 'API Token', 'd682d88f89b9471fd35254a3ec3afc316e9dd2bd348034ebb2411e1fc19d6eb4', '[\"*\"]', '2025-02-17 07:46:08', NULL, '2025-02-17 07:46:04', '2025-02-17 07:46:08'),
(326, 'App\\Models\\User', 149, 'API Token', '110c6aa2837d0d2efef6629fd71763a3726514654f27a9a1bd90bb9ca2e6a934', '[\"*\"]', '2025-02-17 07:52:08', NULL, '2025-02-17 07:51:05', '2025-02-17 07:52:08'),
(327, 'App\\Models\\User', 149, 'API Token', 'e327acce50dffb8dfbba701d64e945dbb0c32cad4ec92e239bb0a99c66132c37', '[\"*\"]', '2025-02-17 07:53:47', NULL, '2025-02-17 07:53:12', '2025-02-17 07:53:47'),
(328, 'App\\Models\\User', 149, 'API Token', '8ac42319a4e01c4169f7c6b12cb0f8d1aa83af27316a83d58633f8c8a5eeb8ff', '[\"*\"]', '2025-02-17 08:02:15', NULL, '2025-02-17 08:02:04', '2025-02-17 08:02:15'),
(329, 'App\\Models\\User', 150, 'API Token', '4099aa8cfaf1504cc690e5a88e110baad700a99c9e6c99fa06d03bd8e2341ab8', '[\"*\"]', '2025-02-18 08:38:41', NULL, '2025-02-18 08:38:41', '2025-02-18 08:38:41'),
(330, 'App\\Models\\User', 150, 'API Token', 'a378da8a743947678b5e84bbd08dfa9f05d1d3ed9b799dece8b1e3a31eb0d73c', '[\"*\"]', '2025-02-18 08:39:29', NULL, '2025-02-18 08:39:28', '2025-02-18 08:39:29'),
(331, 'App\\Models\\User', 149, 'API Token', '2f79b589068546308bfa270db5c397b31b364ff776dadb52a4f2498848748dbc', '[\"*\"]', '2025-02-18 08:40:04', NULL, '2025-02-18 08:40:03', '2025-02-18 08:40:04'),
(332, 'App\\Models\\User', 149, 'API Token', '1899dd30941fa0356f24c2f3b4b90940e6ae85fe9e55d628385a088a5199aa7e', '[\"*\"]', '2025-02-18 08:50:27', NULL, '2025-02-18 08:50:21', '2025-02-18 08:50:27'),
(333, 'App\\Models\\User', 149, 'API Token', '28f0d41283c165382df51a38cb6d0f16cceb9b7e40d96ed757eac0e769bdfcaa', '[\"*\"]', '2025-02-18 08:51:22', NULL, '2025-02-18 08:50:57', '2025-02-18 08:51:22'),
(334, 'App\\Models\\User', 150, 'API Token', 'c735f04d692295977c2fa76639f28d29163752af7b0ce3d333049536acc2fe70', '[\"*\"]', '2025-02-18 08:52:31', NULL, '2025-02-18 08:52:31', '2025-02-18 08:52:31'),
(335, 'App\\Models\\User', 150, 'API Token', 'f86d4423af7297c24f61b6540b117300081da284274655f8f8b3b8be9a415f66', '[\"*\"]', '2025-02-18 08:53:34', NULL, '2025-02-18 08:53:34', '2025-02-18 08:53:34'),
(336, 'App\\Models\\User', 149, 'API Token', 'f79321166dbe4de450704cd933dfc82be022f35ab5eabc59e4fd6c77966d43b7', '[\"*\"]', '2025-02-18 08:56:30', NULL, '2025-02-18 08:55:21', '2025-02-18 08:56:30'),
(337, 'App\\Models\\User', 149, 'API Token', '9e2784fff31cc532390b089e46fa9db125e1404203b1a49881d824c424c010fc', '[\"*\"]', '2025-02-18 09:00:54', NULL, '2025-02-18 08:57:03', '2025-02-18 09:00:54'),
(338, 'App\\Models\\User', 150, 'API Token', '97be6cd3e68a7625477331bd26da2c5c065d8ef5bc3fa7fd14e0eb8d4da8b6de', '[\"*\"]', '2025-06-10 05:15:43', NULL, '2025-02-18 09:00:44', '2025-06-10 05:15:43'),
(339, 'App\\Models\\User', 149, 'API Token', '40575e8661fff75340f503e30dc3ffcb839046289b996159211b5786213c2338', '[\"*\"]', '2025-02-22 09:26:02', NULL, '2025-02-22 09:25:50', '2025-02-22 09:26:02'),
(340, 'App\\Models\\User', 150, 'API Token', '3d95f02d1c88e6f04e1e012a3f102b1ac5d7c78fe569acab7b33b7ed0ff9da3d', '[\"*\"]', '2025-02-22 09:27:24', NULL, '2025-02-22 09:27:24', '2025-02-22 09:27:24'),
(341, 'App\\Models\\User', 150, 'API Token', '3e35a22f88bce27a0ebb6fbc1e640f4be759c9f6ed476fa63ee94bd1e057126f', '[\"*\"]', '2025-02-22 09:41:20', NULL, '2025-02-22 09:41:18', '2025-02-22 09:41:20'),
(342, 'App\\Models\\User', 150, 'API Token', '002b7681c264b3f9150641bedd3fd7089a35356a2916b56834b97d0c7082f1fa', '[\"*\"]', '2025-02-22 09:42:29', NULL, '2025-02-22 09:42:19', '2025-02-22 09:42:29'),
(343, 'App\\Models\\User', 150, 'API Token', '0fffb301ec80f0cee36ed19f6c2bb5004c735f515afc1d16adad011a60d4126e', '[\"*\"]', '2025-02-22 10:26:34', NULL, '2025-02-22 09:44:40', '2025-02-22 10:26:34'),
(344, 'App\\Models\\User', 151, 'API Token', 'e20f63ef60aa344418fbd043d9b3116b2e10413d7111f53b8621540196cf8138', '[\"*\"]', '2025-02-22 10:28:37', NULL, '2025-02-22 10:28:37', '2025-02-22 10:28:37'),
(345, 'App\\Models\\User', 150, 'API Token', '5dcf68da9972fc1e8be97042f912c98f1ad0b02fe0bff2a327f09c31681527de', '[\"*\"]', '2025-02-24 09:50:09', NULL, '2025-02-24 09:24:07', '2025-02-24 09:50:09'),
(346, 'App\\Models\\User', 151, 'API Token', '97f1adce554bfabfb08741bc78f93f8bb2034075967abbca66ac3419b7ff5deb', '[\"*\"]', '2025-02-24 10:41:16', NULL, '2025-02-24 10:18:20', '2025-02-24 10:41:16'),
(347, 'App\\Models\\User', 65, 'API Token', 'f07595e6015a48fc4457a0c0796032b5957da7d78eeb25ea09a206e5fd77025a', '[\"*\"]', '2025-03-05 10:46:43', NULL, '2025-03-05 10:45:52', '2025-03-05 10:46:43'),
(348, 'App\\Models\\User', 65, 'API Token', '81b88bda932eb26340405c5bd536806bf0b9587f6f0bf950d7eecff13cc8bd47', '[\"*\"]', '2025-03-05 11:13:51', NULL, '2025-03-05 10:59:23', '2025-03-05 11:13:51'),
(349, 'App\\Models\\User', 65, 'API Token', 'ee1635908f7fd9754f652c1c67549ad22bd5d552486096373c12008be057c40b', '[\"*\"]', '2025-03-10 10:20:27', NULL, '2025-03-10 10:20:20', '2025-03-10 10:20:27'),
(350, 'App\\Models\\User', 65, 'API Token', '83852976d13e8063d086d6c5eb84ee2d325770d5fb95e0677e27b81d566a414b', '[\"*\"]', '2025-03-11 07:00:08', NULL, '2025-03-11 06:59:23', '2025-03-11 07:00:08'),
(351, 'App\\Models\\User', 65, 'API Token', '8edfdd5ac238638a7218ffab6bdd0da4a4c7c8cb0a1009612e53f5c3973bd884', '[\"*\"]', '2025-03-11 07:08:47', NULL, '2025-03-11 07:04:59', '2025-03-11 07:08:47'),
(352, 'App\\Models\\User', 65, 'API Token', 'e708f5f26fb90efb59fd283129cc7fbf51b2a083d81a0a2e7472992d90552bae', '[\"*\"]', '2025-03-11 07:10:03', NULL, '2025-03-11 07:09:52', '2025-03-11 07:10:03'),
(353, 'App\\Models\\User', 65, 'API Token', '9c89017ecd801f83e656181f28ce33514fec4cde3bff225316ee661fee98aac0', '[\"*\"]', '2025-03-11 07:10:46', NULL, '2025-03-11 07:10:40', '2025-03-11 07:10:46'),
(354, 'App\\Models\\User', 65, 'API Token', '00c5fd60a6e8c6eabce1f05d563fc307dde23581876d94b28d1e704cf0f76842', '[\"*\"]', '2025-03-11 07:12:02', NULL, '2025-03-11 07:11:57', '2025-03-11 07:12:02'),
(355, 'App\\Models\\User', 65, 'API Token', 'df7ce12f9eb6255dcae863e4d63e889a28ca0ad28213cc04b0254a06b75bb32c', '[\"*\"]', '2025-03-11 07:16:09', NULL, '2025-03-11 07:16:04', '2025-03-11 07:16:09'),
(356, 'App\\Models\\User', 65, 'API Token', '21971e58340f01a708c4accde13321417f3aadd320954e8721fc927975eb3336', '[\"*\"]', '2025-03-11 07:30:57', NULL, '2025-03-11 07:30:50', '2025-03-11 07:30:57'),
(357, 'App\\Models\\User', 65, 'API Token', 'fb19d03eb3ec88a377996f03013f1e02584089071645c6c76ad5164fec880fd8', '[\"*\"]', '2025-03-11 08:04:41', NULL, '2025-03-11 08:04:38', '2025-03-11 08:04:41'),
(358, 'App\\Models\\User', 65, 'API Token', 'b9a7b8ca71b07c26b18ef70cf4e79f748eec8edb70be419dbb24271a98909ba8', '[\"*\"]', '2025-03-11 08:06:25', NULL, '2025-03-11 08:06:22', '2025-03-11 08:06:25'),
(359, 'App\\Models\\User', 65, 'API Token', '627ccb6643ae02cdf4c94ce7f715ac94fec74401ff4ae5f8b363a0cc547bb592', '[\"*\"]', '2025-03-11 08:14:34', NULL, '2025-03-11 08:14:30', '2025-03-11 08:14:34'),
(360, 'App\\Models\\User', 65, 'API Token', 'dc9cf77e3199ce7cd39e1f4c134ab88813252c4a55e4402130ae0dfb2e8ee717', '[\"*\"]', '2025-03-11 08:19:59', NULL, '2025-03-11 08:19:55', '2025-03-11 08:19:59'),
(361, 'App\\Models\\User', 65, 'API Token', '2267eec242628d3bd79a48764c633c113082ee3c15c81411c0ab91b1bb283eba', '[\"*\"]', '2025-03-11 08:28:40', NULL, '2025-03-11 08:28:37', '2025-03-11 08:28:40'),
(362, 'App\\Models\\User', 65, 'API Token', '8c29117a8a41857370a51a708419e4bf062ea5c365746acfe04711b638103dba', '[\"*\"]', '2025-03-11 08:33:15', NULL, '2025-03-11 08:33:08', '2025-03-11 08:33:15'),
(363, 'App\\Models\\User', 65, 'API Token', 'ee5c883d334aa89a0908f592de9e4457ad0c0229627576880aa2af44c759f617', '[\"*\"]', '2025-03-11 08:39:32', NULL, '2025-03-11 08:38:55', '2025-03-11 08:39:32'),
(364, 'App\\Models\\User', 65, 'API Token', '186e4c0c58f476657a0d4e9a4559f63120d9631a5a7c3cb382879eb8a0077658', '[\"*\"]', '2025-03-11 08:42:45', NULL, '2025-03-11 08:41:21', '2025-03-11 08:42:45'),
(365, 'App\\Models\\User', 65, 'API Token', 'b5a1fa9df03bfb54fa5ed28bae7be9403292237909956bef578d654fb1f86a96', '[\"*\"]', '2025-03-11 08:51:47', NULL, '2025-03-11 08:51:42', '2025-03-11 08:51:47'),
(366, 'App\\Models\\User', 65, 'API Token', '97c82fbe64994f85db2df5c983c2c5be3da1cfc1314813837c2c2b78e95b1712', '[\"*\"]', '2025-03-11 08:53:21', NULL, '2025-03-11 08:53:12', '2025-03-11 08:53:21'),
(367, 'App\\Models\\User', 65, 'API Token', '1abf084ddb5106408758849b56ea8338ec1e26b86324d7f1a457f46eb7cf67eb', '[\"*\"]', '2025-03-11 08:54:39', NULL, '2025-03-11 08:53:53', '2025-03-11 08:54:39'),
(368, 'App\\Models\\User', 65, 'API Token', 'c966ac23148e52f3fd2a5b023ac70d43b7c4b8cda0621eb497bacbe421125c1c', '[\"*\"]', '2025-03-11 08:56:44', NULL, '2025-03-11 08:56:41', '2025-03-11 08:56:44'),
(369, 'App\\Models\\User', 65, 'API Token', '5ae52e0f33fc8ee7b3b306c01c0f603668fdf3f14285dd25ef910cb4e3805c62', '[\"*\"]', '2025-03-13 09:39:48', NULL, '2025-03-13 09:39:41', '2025-03-13 09:39:48'),
(370, 'App\\Models\\User', 74, 'API Token', 'd26f3e9f20431d4f76d771ff597abd769e99192d5c3a866e48edcda7de1b6071', '[\"*\"]', '2025-03-17 04:31:45', NULL, '2025-03-17 04:31:37', '2025-03-17 04:31:45'),
(371, 'App\\Models\\User', 74, 'API Token', '6b63865231acd3a8980c357179615a3422bcd9aaf7f2e280022c9f4af66c3494', '[\"*\"]', '2025-03-17 08:25:44', NULL, '2025-03-17 08:25:42', '2025-03-17 08:25:44'),
(372, 'App\\Models\\User', 74, 'API Token', '0d4f2c3312a8375638891a65f5ef8f075f7241eb705529f4d56183403560429e', '[\"*\"]', '2025-03-17 09:34:19', NULL, '2025-03-17 08:27:03', '2025-03-17 09:34:19'),
(373, 'App\\Models\\User', 72, 'API Token', '2681b8b7daad5c268f237db00411b56d9bb2ca729a69f2d1ab409f169886c13a', '[\"*\"]', '2025-03-18 08:25:47', NULL, '2025-03-18 08:25:47', '2025-03-18 08:25:47'),
(374, 'App\\Models\\User', 72, 'API Token', 'cebc050ce98d9f2070cd00dfd8e7783a01c7b3529e15c129288f0b151b50e364', '[\"*\"]', '2025-03-18 09:27:38', NULL, '2025-03-18 08:26:05', '2025-03-18 09:27:38'),
(375, 'App\\Models\\User', 61, 'API Token', 'd82da9c1ab5934b03ea79426a5a256a1ef08645f6f0d991f737a890ce33a398c', '[\"*\"]', '2025-03-20 08:33:41', NULL, '2025-03-20 08:33:41', '2025-03-20 08:33:41'),
(376, 'App\\Models\\User', 61, 'API Token', 'b51ea18a2f75f8d49ebdd8847ce79b4e7055eae9d4d072d0175cb1ecb47b1e90', '[\"*\"]', '2025-03-20 09:20:44', NULL, '2025-03-20 08:34:08', '2025-03-20 09:20:44'),
(377, 'App\\Models\\User', 67, 'API Token', '2a6954776ea2338c715e03b0060a69b16c63e9091ade98427a7ba1c1b12769a4', '[\"*\"]', '2025-05-06 09:57:12', NULL, '2025-05-06 09:56:31', '2025-05-06 09:57:12'),
(378, 'App\\Models\\User', 67, 'API Token', '205b4fce6914371493cb381bbea0c4a656eeb666d59e6c6dd0e8da29f47c99e0', '[\"*\"]', '2025-05-07 08:21:14', NULL, '2025-05-07 08:20:20', '2025-05-07 08:21:14'),
(379, 'App\\Models\\User', 67, 'API Token', '6da35500c28c2a2f39e3ce200d9ef25c57212dbbaa065fa357b4ee55f96569c8', '[\"*\"]', '2025-05-07 11:12:18', NULL, '2025-05-07 08:49:30', '2025-05-07 11:12:18'),
(380, 'App\\Models\\User', 67, 'API Token', '0f8cae46b2b5a14a1741851d8b88dc59d0c841ec8f714dce150e0767581be4da', '[\"*\"]', '2025-05-07 11:13:30', NULL, '2025-05-07 11:10:21', '2025-05-07 11:13:30'),
(381, 'App\\Models\\User', 71, 'API Token', '59e33748d343c5db9294cd907f088a0fa35b8c3a443bb921f561cf2e45728717', '[\"*\"]', '2025-05-09 08:29:15', NULL, '2025-05-09 08:29:15', '2025-05-09 08:29:15'),
(382, 'App\\Models\\User', 71, 'API Token', '490d44f8d844429a0731a8e6f85dcba2e07764b35b342d0ab9f0c014dc52af69', '[\"*\"]', '2025-05-09 09:19:44', NULL, '2025-05-09 08:33:01', '2025-05-09 09:19:44'),
(383, 'App\\Models\\User', 71, 'API Token', 'ca537ad1ca53cee826726f17561d38c7a56bc2d1ee82ea80231e98577cf33a7c', '[\"*\"]', '2025-05-09 09:27:59', NULL, '2025-05-09 09:27:51', '2025-05-09 09:27:59'),
(384, 'App\\Models\\User', 71, 'API Token', '2494fc358721ac124ee91fabce9e28c05a0e3870e67226bfa4ac0155ed98aef7', '[\"*\"]', '2025-05-09 09:30:33', NULL, '2025-05-09 09:30:31', '2025-05-09 09:30:33'),
(385, 'App\\Models\\User', 70, 'API Token', 'f82d3ac80d559aeb343a3f6cc91c16e0fc45ff2a2742bedb737fde1e5f47b6d3', '[\"*\"]', '2025-05-12 09:42:41', NULL, '2025-05-12 09:03:44', '2025-05-12 09:42:41'),
(386, 'App\\Models\\User', 143, 'API Token', '2e38c45a0dd32c4e1e6d44ba5a5ee38808e534ea228021eeed68a48c8c06e42a', '[\"*\"]', '2025-05-12 09:33:23', NULL, '2025-05-12 09:33:22', '2025-05-12 09:33:23'),
(387, 'App\\Models\\User', 53, 'API Token', '5136b1d0c89d244d506db5467146f7afb3a6b662596a1aa3c8576645bb5773d1', '[\"*\"]', '2025-05-19 08:49:16', NULL, '2025-05-19 08:48:52', '2025-05-19 08:49:16'),
(388, 'App\\Models\\User', 53, 'API Token', '616621db8091b3d6ce9f2866333091324b3a951972d675a05fd69eca121feab2', '[\"*\"]', '2025-05-19 09:43:30', NULL, '2025-05-19 08:54:39', '2025-05-19 09:43:30'),
(389, 'App\\Models\\User', 53, 'API Token', '294baa5ab6d2552aea7476963a0fa292984ccd717ae4ddd4f82bed57d4b6e319', '[\"*\"]', '2025-05-19 09:11:11', NULL, '2025-05-19 09:11:02', '2025-05-19 09:11:11'),
(390, 'App\\Models\\User', 137, 'API Token', '086d4fcd9c6ca43fc80048106bea48a1d550da5989386f322dea1d82e65a34dc', '[\"*\"]', '2025-05-19 09:12:55', NULL, '2025-05-19 09:12:45', '2025-05-19 09:12:55'),
(391, 'App\\Models\\User', 77, 'API Token', '17ea29284319a90116273c05afb93ef24f444501ff97ba0faa4af194e36d7b8a', '[\"*\"]', '2025-05-20 08:26:21', NULL, '2025-05-20 08:26:17', '2025-05-20 08:26:21'),
(392, 'App\\Models\\User', 77, 'API Token', '2cf0a305c3097dcf11a448984bfb4aebe4020c78f1f92a4ff1bfbb0e0086711a', '[\"*\"]', '2025-05-20 09:29:28', NULL, '2025-05-20 08:34:39', '2025-05-20 09:29:28'),
(393, 'App\\Models\\User', 154, 'API Token', '594747c1bdd9a1e92249f53d407a20120074bfdd34490c98a2f3628031a6f2d2', '[\"*\"]', '2025-05-21 06:11:07', NULL, '2025-05-21 06:11:07', '2025-05-21 06:11:07'),
(394, 'App\\Models\\User', 154, 'API Token', '182da3b3562de1a4d2665dd06057456c26fd6f89a8ae912dd4d242deeb122b1a', '[\"*\"]', '2025-05-21 06:12:12', NULL, '2025-05-21 06:12:11', '2025-05-21 06:12:12'),
(395, 'App\\Models\\User', 154, 'API Token', 'aafd5a13421d3bcbbf463feee7a07451b1e596c48d49250061364a1b869564cc', '[\"*\"]', '2025-05-21 06:46:29', NULL, '2025-05-21 06:14:41', '2025-05-21 06:46:29'),
(396, 'App\\Models\\User', 62, 'API Token', '95dd0f295df69dcb486999b0bd5698dd5950b26ad6352598ed195f3e4da4bf8f', '[\"*\"]', '2025-05-21 09:29:41', NULL, '2025-05-21 08:14:34', '2025-05-21 09:29:41'),
(397, 'App\\Models\\User', 154, 'API Token', '92c2385d3c311762277dacb1b522efaf16874e81abbace76cc85a3cb36841911', '[\"*\"]', '2025-05-21 11:02:12', NULL, '2025-05-21 09:34:48', '2025-05-21 11:02:12'),
(398, 'App\\Models\\User', 51, 'API Token', '19642d00d40e4d8bb2781128d93467804755dd74ff6f67b155b3db073ab9ddcc', '[\"*\"]', '2025-05-22 08:47:41', NULL, '2025-05-22 08:47:27', '2025-05-22 08:47:41'),
(399, 'App\\Models\\User', 51, 'API Token', '25ac457c54e9c2ba96b9567ac41ac7870def194d73b3395af78901c04e203497', '[\"*\"]', '2025-05-22 09:24:06', NULL, '2025-05-22 08:48:29', '2025-05-22 09:24:06'),
(400, 'App\\Models\\User', 64, 'API Token', 'b21ab879a8d78dd1fafd785e862811382e8bff5bb197ae0bcd515d3b98154002', '[\"*\"]', '2025-06-02 05:18:30', NULL, '2025-06-02 04:54:58', '2025-06-02 05:18:30'),
(401, 'App\\Models\\User', 154, 'API Token', '3c8f97a06952c3d0df445331992377fe4d85b6cb72aa025472a008eac482058b', '[\"*\"]', '2025-06-02 13:25:23', NULL, '2025-06-02 13:25:23', '2025-06-02 13:25:23'),
(402, 'App\\Models\\User', 154, 'API Token', '3f3cf3144292d67c6e461078a8cfb6e107209e9409ed74c8297fb2dfd5d478ac', '[\"*\"]', '2025-06-02 13:26:08', NULL, '2025-06-02 13:25:57', '2025-06-02 13:26:08'),
(403, 'App\\Models\\User', 154, 'API Token', '408738e9f931ccaeafceb7b48177d2cf167c5b62f1de68d3dc3fca0424a5ad3d', '[\"*\"]', '2025-06-02 13:26:30', NULL, '2025-06-02 13:26:09', '2025-06-02 13:26:30'),
(404, 'App\\Models\\User', 154, 'API Token', '4d518ef7a48590a2e9af66817f171d4f82b5e76323e293397f308c216e979c1c', '[\"*\"]', '2025-06-03 04:22:28', NULL, '2025-06-03 04:20:24', '2025-06-03 04:22:28'),
(405, 'App\\Models\\User', 154, 'API Token', '046e87144d0d40736f2c04f8d2cbe4e41ea00bf80e8ee93873bad9316ea47c4d', '[\"*\"]', '2025-06-03 09:27:22', NULL, '2025-06-03 09:27:21', '2025-06-03 09:27:22'),
(406, 'App\\Models\\User', 154, 'API Token', 'c044ab048cb40871a1727c2b72c46484a66bbd2f73ce1e7faec682f4e3c36438', '[\"*\"]', '2025-06-03 09:47:31', NULL, '2025-06-03 09:27:22', '2025-06-03 09:47:31'),
(407, 'App\\Models\\User', 68, 'API Token', '1277da1335019d0d16e92bf440657769acf3dba4af12658a7ec3ada1846becdd', '[\"*\"]', '2025-06-04 04:59:47', NULL, '2025-06-04 04:59:36', '2025-06-04 04:59:47'),
(408, 'App\\Models\\User', 68, 'API Token', 'b2097a14c73de36b30213ef0835e0bcd8cd35c37eed77c1b385b30ce8594f6df', '[\"*\"]', '2025-06-04 05:00:34', NULL, '2025-06-04 05:00:32', '2025-06-04 05:00:34'),
(409, 'App\\Models\\User', 68, 'API Token', '6d09ccd268d85c5b4bd4500fbd1ac52d2edd546c441a6df51fee5e87f2c32799', '[\"*\"]', '2025-06-04 05:01:38', NULL, '2025-06-04 05:01:35', '2025-06-04 05:01:38'),
(410, 'App\\Models\\User', 68, 'API Token', '82627250301c5e5e78674b2a0b32a138940b464c781ebc9e34ed71461490565b', '[\"*\"]', '2025-06-04 05:09:33', NULL, '2025-06-04 05:09:25', '2025-06-04 05:09:33'),
(411, 'App\\Models\\User', 154, 'API Token', '9ecc0c36e7ea55ec5f80f1cfac4f45146dffc4974348a35588f8ae30be301cd8', '[\"*\"]', '2025-06-04 05:11:24', NULL, '2025-06-04 05:11:24', '2025-06-04 05:11:24'),
(412, 'App\\Models\\User', 112, 'API Token', '27e1b445e61e99bee2cfc8254d92cbc27b8158110c742a7d54939ea679458b22', '[\"*\"]', '2025-06-04 05:11:47', NULL, '2025-06-04 05:11:44', '2025-06-04 05:11:47'),
(413, 'App\\Models\\User', 68, 'API Token', '218bf21d16485bac2fcea580db47766c0ba0d155be2fc8717ea880305d27f6eb', '[\"*\"]', '2025-06-04 05:12:32', NULL, '2025-06-04 05:12:27', '2025-06-04 05:12:32'),
(414, 'App\\Models\\User', 68, 'API Token', '96b6ad93cf337ba12141d970d74a0dc858c74ccdc855481ff3a02a90ccced391', '[\"*\"]', '2025-06-04 05:24:29', NULL, '2025-06-04 05:24:27', '2025-06-04 05:24:29'),
(415, 'App\\Models\\User', 70, 'API Token', 'e26013661edef034871a686d1f5bfba29c7ead3b1924efd8c8a69f761968acc5', '[\"*\"]', '2025-06-04 05:38:02', NULL, '2025-06-04 05:38:00', '2025-06-04 05:38:02'),
(416, 'App\\Models\\User', 69, 'API Token', '6accc8da03822e20a563affadd7efa8d0d71ffb423ff4069a1feb51bc5489045', '[\"*\"]', '2025-06-04 05:46:21', NULL, '2025-06-04 05:40:25', '2025-06-04 05:46:21'),
(417, 'App\\Models\\User', 69, 'API Token', 'f9136050d9714c91ef0d15e1d5a700d8048705f2aa0df3685e0c3bc9c1d09940', '[\"*\"]', '2025-06-04 05:47:08', NULL, '2025-06-04 05:47:08', '2025-06-04 05:47:08'),
(418, 'App\\Models\\User', 69, 'API Token', 'aa069d1a049dc894aeb03526d197ff163a60b59eef6492697c78742d2eb88e35', '[\"*\"]', '2025-06-04 05:49:19', NULL, '2025-06-04 05:49:03', '2025-06-04 05:49:19'),
(419, 'App\\Models\\User', 68, 'API Token', 'faeb2f6061f60500217ec74bd721c4e2bd840ca9f06511b858820871be992403', '[\"*\"]', '2025-06-04 05:50:39', NULL, '2025-06-04 05:49:18', '2025-06-04 05:50:39'),
(420, 'App\\Models\\User', 68, 'API Token', '1b5ddc506b1d67a95cda6a50b636da0aab527a58521650df1accdf92f04dd0cf', '[\"*\"]', '2025-06-04 05:51:06', NULL, '2025-06-04 05:51:04', '2025-06-04 05:51:06'),
(421, 'App\\Models\\User', 68, 'API Token', '453e7701b1367fb855837f831597b4578e632784f9246cc4a1a3cb8483466dbc', '[\"*\"]', '2025-06-04 05:52:28', NULL, '2025-06-04 05:52:26', '2025-06-04 05:52:28'),
(422, 'App\\Models\\User', 68, 'API Token', 'fa5cd0e04b0fdc132bc55a2815b80c495ff555eef5304b19262245164157ccd7', '[\"*\"]', '2025-06-04 05:54:18', NULL, '2025-06-04 05:54:15', '2025-06-04 05:54:18'),
(423, 'App\\Models\\User', 68, 'API Token', '567c7e170dd2a513084b3852dd98850809f024de1a6af7e75c9e94d86ea3fdca', '[\"*\"]', '2025-06-04 06:02:16', NULL, '2025-06-04 06:02:13', '2025-06-04 06:02:16'),
(424, 'App\\Models\\User', 68, 'API Token', '8ac6ccc155361163bafa2f4ee11b31c808495af02920ee586ec1c60687882390', '[\"*\"]', '2025-06-04 06:36:11', NULL, '2025-06-04 06:36:08', '2025-06-04 06:36:11'),
(425, 'App\\Models\\User', 69, 'API Token', '215f2e91ff96e87533523aa0704ccf56c4198f4c8bef4dc47509627ac8ab3dbe', '[\"*\"]', '2025-06-04 09:20:15', NULL, '2025-06-04 08:33:30', '2025-06-04 09:20:15'),
(426, 'App\\Models\\User', 69, 'API Token', '64812082c3f90bcc47e60a8cc9445d0dd34c0cab418211232c694b89efd43ed2', '[\"*\"]', '2025-06-05 05:09:45', NULL, '2025-06-05 05:05:05', '2025-06-05 05:09:45'),
(427, 'App\\Models\\User', 68, 'API Token', '088cdb0c2c5409d5f237a60dd9707320c2db24a9848e556d7079647579d43a4d', '[\"*\"]', '2025-06-05 05:10:05', NULL, '2025-06-05 05:10:03', '2025-06-05 05:10:05'),
(428, 'App\\Models\\User', 68, 'API Token', 'c497ee2f12e3219a63221c38cd528ac58c2d7eb76917f93b0a771fd94bbd2744', '[\"*\"]', '2025-06-05 05:22:55', NULL, '2025-06-05 05:10:49', '2025-06-05 05:22:55'),
(429, 'App\\Models\\User', 39, 'API Token', 'eb7fd10543234f598b134ac0c28e24f5c55ed98f31a79e5312e6fffca2cdd061', '[\"*\"]', '2025-06-05 05:44:37', NULL, '2025-06-05 05:44:34', '2025-06-05 05:44:37'),
(430, 'App\\Models\\User', 68, 'API Token', '9f859ab36c441459f06fe01c9ff781eba369ccba777c59bad1f8e95effbab15e', '[\"*\"]', '2025-06-05 05:53:51', NULL, '2025-06-05 05:53:49', '2025-06-05 05:53:51'),
(431, 'App\\Models\\User', 68, 'API Token', '958819a7daa9ea9a877bb690420bcd30ddc3cc39ad19a3b0e6ea3322914853aa', '[\"*\"]', '2025-06-05 05:54:32', NULL, '2025-06-05 05:54:31', '2025-06-05 05:54:32'),
(432, 'App\\Models\\User', 69, 'API Token', 'bc4a8c6e3c4df34789a850622fdfcfc36badbfff32f68218d0e5fe896d1d85ab', '[\"*\"]', '2025-06-05 05:56:09', NULL, '2025-06-05 05:55:08', '2025-06-05 05:56:09'),
(433, 'App\\Models\\User', 69, 'API Token', '903a2fc2c1c541e3275297c564c5dc0d13afedf308040978e26b4006de94d171', '[\"*\"]', '2025-06-05 06:00:38', NULL, '2025-06-05 06:00:22', '2025-06-05 06:00:38'),
(434, 'App\\Models\\User', 68, 'API Token', '82f619bf9dbe3701b4e89bee99018810d210682acd3d06f47b1c1395f46828c5', '[\"*\"]', '2025-06-05 06:01:30', NULL, '2025-06-05 06:01:27', '2025-06-05 06:01:30'),
(435, 'App\\Models\\User', 68, 'API Token', '921aa5e9e6973a7bafb47347fa60fbf8699de3dde18c370b7ea3c7ff35c4b917', '[\"*\"]', '2025-06-05 06:03:09', NULL, '2025-06-05 06:03:07', '2025-06-05 06:03:09'),
(436, 'App\\Models\\User', 68, 'API Token', 'f95a725b74c188c30e72b16463d87bc1fd90e7c6519fe0f43d94f6225d05cdda', '[\"*\"]', '2025-06-05 06:04:23', NULL, '2025-06-05 06:03:36', '2025-06-05 06:04:23'),
(437, 'App\\Models\\User', 68, 'API Token', 'c039c0576928386f32e98d79c9900c90b052f7cb923af7c9c1bffca14a83539d', '[\"*\"]', '2025-06-05 06:05:34', NULL, '2025-06-05 06:05:29', '2025-06-05 06:05:34'),
(438, 'App\\Models\\User', 68, 'API Token', 'd36ec4f5b0527952b9c5787b6cff3b4c127475cf696edf198932b243ce1ef5d1', '[\"*\"]', '2025-06-05 06:17:15', NULL, '2025-06-05 06:11:06', '2025-06-05 06:17:15'),
(439, 'App\\Models\\User', 65, 'API Token', '9dcd6b50b74b8521c4fac8cbc61b0dec7599fa221b056d605393aabe8a9f06dd', '[\"*\"]', '2025-06-05 07:07:43', NULL, '2025-06-05 06:19:07', '2025-06-05 07:07:43'),
(440, 'App\\Models\\User', 68, 'API Token', '41fde62d3f0bbca920433318bc43b8d500ac7ef13450be42b86811343874fedd', '[\"*\"]', '2025-06-05 09:36:07', NULL, '2025-06-05 09:05:54', '2025-06-05 09:36:07'),
(441, 'App\\Models\\User', 155, 'API Token', '3ce397db2ba0a0ef4e289d3a56c2c5bc9de5e17d404cde03cf4040d17e03b4c9', '[\"*\"]', '2025-06-06 04:44:49', NULL, '2025-06-06 04:44:49', '2025-06-06 04:44:49'),
(442, 'App\\Models\\User', 155, 'API Token', '25740f9694f056bb9c77586c297711d4e1edd1c423a5fa5d55b05d6656665f9a', '[\"*\"]', '2025-06-06 04:45:19', NULL, '2025-06-06 04:45:19', '2025-06-06 04:45:19'),
(443, 'App\\Models\\User', 156, 'API Token', 'd91c54d688fa78901d9590ea6f9b94c9cc96dd59a9b288f86b1839f1ac74fe08', '[\"*\"]', '2025-06-06 05:13:44', NULL, '2025-06-06 05:13:44', '2025-06-06 05:13:44'),
(444, 'App\\Models\\User', 158, 'API Token', '78e744ff0199ef12df539eb25b5fb12f213f9f3fc14cf6987c9222045ed30fc4', '[\"*\"]', '2025-06-06 05:15:17', NULL, '2025-06-06 05:15:16', '2025-06-06 05:15:17'),
(445, 'App\\Models\\User', 160, 'API Token', '308cd4c8488a09ad3fbd858ae8ad6638d3dc576ac58e6771e8b936d283e7b864', '[\"*\"]', '2025-06-06 06:27:54', NULL, '2025-06-06 06:27:28', '2025-06-06 06:27:54'),
(446, 'App\\Models\\User', 161, 'API Token', 'd4aadf8b465f257f0af06a3c96a2dda53347af808c8d63d402a1a4100c995104', '[\"*\"]', '2025-06-06 06:54:49', NULL, '2025-06-06 06:54:25', '2025-06-06 06:54:49'),
(447, 'App\\Models\\User', 87, 'API Token', '5869e8e75ce10e756fd0f164c8c159ac3505dc34763d6cebf546643052ba0db3', '[\"*\"]', '2025-06-08 05:21:34', NULL, '2025-06-08 04:11:57', '2025-06-08 05:21:34'),
(448, 'App\\Models\\User', 97, 'API Token', 'db7262ad574c9abdf7bca8e9c5f49ac92855fe6229022965d38f8f45b4bcb8d5', '[\"*\"]', '2025-06-08 05:12:24', NULL, '2025-06-08 04:13:53', '2025-06-08 05:12:24'),
(449, 'App\\Models\\User', 39, 'API Token', '076fde7e1b60d5930b241f4f190d4fba94e295294c214d38478ad656c3ee31db', '[\"*\"]', '2025-06-08 04:14:46', NULL, '2025-06-08 04:14:44', '2025-06-08 04:14:46'),
(450, 'App\\Models\\User', 38, 'API Token', 'd8d1aed0c7e15822572f8d08c98d1deaa45aff07e502c4df30e5bb90c91161cf', '[\"*\"]', '2025-06-08 04:16:35', NULL, '2025-06-08 04:16:31', '2025-06-08 04:16:35'),
(451, 'App\\Models\\User', 108, 'API Token', 'd96cee765e4cf0c943c949e5506378ee95c6effb296d9af216f94fad0936ea8b', '[\"*\"]', '2025-06-08 05:41:17', NULL, '2025-06-08 04:23:57', '2025-06-08 05:41:17'),
(452, 'App\\Models\\User', 105, 'API Token', '74019210e27d2809c12f20242d044739625987651b15bb1b3c7d3effc3533b51', '[\"*\"]', '2025-06-08 05:25:04', NULL, '2025-06-08 04:25:03', '2025-06-08 05:25:04'),
(453, 'App\\Models\\User', 81, 'API Token', '8099df08526cb8abe0d6e4ada11ef2761abaefeb7d95d993eb04ea2a050a1a7b', '[\"*\"]', '2025-06-08 05:02:03', NULL, '2025-06-08 04:29:13', '2025-06-08 05:02:03'),
(454, 'App\\Models\\User', 162, 'API Token', 'f042a9fa98f68570b11da7e8ad7064fa58718887760cce96086c98ef1a7919bf', '[\"*\"]', '2025-06-08 04:30:43', NULL, '2025-06-08 04:30:41', '2025-06-08 04:30:43'),
(455, 'App\\Models\\User', 162, 'API Token', '10099f76794dfa380e2c3e8d7f4f2e3f0a13bf90b747954b3ab498197238a220', '[\"*\"]', '2025-06-08 04:33:30', NULL, '2025-06-08 04:31:38', '2025-06-08 04:33:30'),
(456, 'App\\Models\\User', 163, 'API Token', 'fd83c3195f1028501fc34eb19db4e95aae8f9f28da88c4ab9a767e9cddff72a5', '[\"*\"]', '2025-06-08 04:33:36', NULL, '2025-06-08 04:33:31', '2025-06-08 04:33:36'),
(457, 'App\\Models\\User', 164, 'API Token', 'bf11bc4f50692c9205ca343b860fc7712c4c1139c325b2f5c795a4c617d6d7c7', '[\"*\"]', '2025-06-08 04:36:53', NULL, '2025-06-08 04:36:49', '2025-06-08 04:36:53'),
(458, 'App\\Models\\User', 162, 'API Token', '182b12e8295cfcca4f184ae595d3a33f6297c13bb97216ebb4fbdb55c71db1ce', '[\"*\"]', '2025-06-08 05:25:57', NULL, '2025-06-08 04:37:42', '2025-06-08 05:25:57'),
(459, 'App\\Models\\User', 164, 'API Token', '17ae256fee6f0806a5fff4d48fbba64971cbdcc561b5e26895edc2a50c584de8', '[\"*\"]', '2025-06-08 05:35:15', NULL, '2025-06-08 04:38:48', '2025-06-08 05:35:15'),
(460, 'App\\Models\\User', 163, 'API Token', '2647d33e948a760be9f6589e41e14b635155a3ecb50c9b91a1a2c84b934d7a4e', '[\"*\"]', '2025-06-08 04:39:18', NULL, '2025-06-08 04:39:18', '2025-06-08 04:39:18'),
(461, 'App\\Models\\User', 163, 'API Token', 'd9efb26787a6a13c35236d60b8f18dfdaadbf7eee26b595ea5333b4c43c24e8f', '[\"*\"]', '2025-06-08 04:39:24', NULL, '2025-06-08 04:39:18', '2025-06-08 04:39:24'),
(462, 'App\\Models\\User', 163, 'API Token', '85a9fc613a0593c9ff86858c756b1f36e9bee98b59eaabf0d179f9ad176c0621', '[\"*\"]', '2025-06-08 05:25:04', NULL, '2025-06-08 04:49:43', '2025-06-08 05:25:04'),
(463, 'App\\Models\\User', 52, 'API Token', '5cbfa27a784848aa9b852f6321ad4abb99e8a093b52b67c6118e93cf7065333b', '[\"*\"]', '2025-06-08 04:59:38', NULL, '2025-06-08 04:59:11', '2025-06-08 04:59:38'),
(464, 'App\\Models\\User', 52, 'API Token', '6402d69d64b61c4520ec0724b1b6e0fd2e7e647c31e7d2756bc89ea480914eb2', '[\"*\"]', '2025-06-08 06:22:24', NULL, '2025-06-08 05:00:36', '2025-06-08 06:22:24'),
(465, 'App\\Models\\User', 73, 'API Token', 'ecb1cb72f5908839686285a033cea48b55b58f9a03c0057c6480359dd25a6e07', '[\"*\"]', '2025-06-08 06:02:20', NULL, '2025-06-08 05:02:30', '2025-06-08 06:02:20'),
(466, 'App\\Models\\User', 125, 'API Token', 'b7335656c28e248968ad32e5b26a47833767c35a2f8203faf070f820675e695d', '[\"*\"]', '2025-06-08 05:31:51', NULL, '2025-06-08 05:05:09', '2025-06-08 05:31:51'),
(467, 'App\\Models\\User', 99, 'API Token', '95b375f19b04505170433c11f603d1bfa5036d181d53623a515d326c9a6a2032', '[\"*\"]', '2025-06-08 05:09:32', NULL, '2025-06-08 05:09:28', '2025-06-08 05:09:32'),
(468, 'App\\Models\\User', 95, 'API Token', '49e7744f2eb28aea5f56d93fd2751dcffe7c60dfe7c19a1a80471a09cdd1ae59', '[\"*\"]', '2025-06-08 06:03:54', NULL, '2025-06-08 05:10:16', '2025-06-08 06:03:54'),
(469, 'App\\Models\\User', 130, 'API Token', '0542d7ea76b261fc65dba8b67cacd8df789bf7ea49bcb94689a46bee9601f628', '[\"*\"]', '2025-06-08 06:01:56', NULL, '2025-06-08 05:16:16', '2025-06-08 06:01:56'),
(470, 'App\\Models\\User', 109, 'API Token', '1c50a847c712c7b522ede83ef7e05a151fae326e3e1e225edecfa23ec2ae7bd7', '[\"*\"]', '2025-06-08 05:54:30', NULL, '2025-06-08 05:22:41', '2025-06-08 05:54:30'),
(471, 'App\\Models\\User', 165, 'API Token', '2514b47a407bbfad1d0ce88e514e6467f6939c0c0c386c5adc4beee9848b214a', '[\"*\"]', '2025-06-08 06:14:19', NULL, '2025-06-08 05:24:53', '2025-06-08 06:14:19'),
(472, 'App\\Models\\User', 103, 'API Token', '9fe4202706e13167ca3b91231068c759b0f52917dfc8bcce979c101ed4a4071a', '[\"*\"]', '2025-06-08 06:08:49', NULL, '2025-06-08 05:27:50', '2025-06-08 06:08:49'),
(473, 'App\\Models\\User', 96, 'API Token', '646b2a4162bcb556aadb74a39d94a9a58b4f627bd4991ce5b8f5437627e450dd', '[\"*\"]', '2025-06-08 05:28:34', NULL, '2025-06-08 05:28:34', '2025-06-08 05:28:34'),
(474, 'App\\Models\\User', 96, 'API Token', '3a4de6d314b5518ce3fe3eabd65fb33a7a11af0af606117115d1c1ad2b9c2255', '[\"*\"]', '2025-06-08 05:31:25', NULL, '2025-06-08 05:28:34', '2025-06-08 05:31:25'),
(475, 'App\\Models\\User', 123, 'API Token', 'c9f035cb0277a7a860bf8fe432144c6b36f145a69ad0323c744b2e103e431c3b', '[\"*\"]', '2025-06-08 06:03:19', NULL, '2025-06-08 05:33:11', '2025-06-08 06:03:19'),
(476, 'App\\Models\\User', 90, 'API Token', '69fd1288ad332016f86a226277b0115f9116e811fe1f4a78435ce8ce0472ba05', '[\"*\"]', '2025-06-08 05:44:58', NULL, '2025-06-08 05:44:38', '2025-06-08 05:44:58'),
(477, 'App\\Models\\User', 90, 'API Token', 'ddb7e17b5d4f9db0ee5e10dcbd8fa11e39c40ce1bdf94dce1f1d3f323bdde34c', '[\"*\"]', '2025-06-08 06:36:50', NULL, '2025-06-08 05:45:44', '2025-06-08 06:36:50'),
(478, 'App\\Models\\User', 83, 'API Token', 'd4e26c540a27569f075fd67294829b2e6eadfa33cbc589a2527032c5ea1d910e', '[\"*\"]', '2025-06-08 05:52:42', NULL, '2025-06-08 05:52:40', '2025-06-08 05:52:42'),
(479, 'App\\Models\\User', 78, 'API Token', 'fbb831a0e9e41ce948d751349a59a7709f5d226c114adae3e87a97c4c8d0866c', '[\"*\"]', '2025-06-08 06:35:01', NULL, '2025-06-08 05:53:14', '2025-06-08 06:35:01'),
(480, 'App\\Models\\User', 83, 'API Token', '767c0a5c5d7ec204833b93a30e140273782462111553ded5d1f34c45d26bd035', '[\"*\"]', '2025-06-08 06:00:12', NULL, '2025-06-08 06:00:10', '2025-06-08 06:00:12'),
(481, 'App\\Models\\User', 166, 'API Token', '3ea2063d006f3aab310533c7cdba31b48aac3d7c800b26478a236efc3d3aac28', '[\"*\"]', '2025-06-08 06:06:45', NULL, '2025-06-08 06:06:40', '2025-06-08 06:06:45'),
(482, 'App\\Models\\User', 166, 'API Token', 'c0030987eace17bc8d0c85170bbf3d701b7cb6cd391810698e3089550b7667c6', '[\"*\"]', '2025-06-08 06:57:53', NULL, '2025-06-08 06:07:05', '2025-06-08 06:57:53'),
(483, 'App\\Models\\User', 86, 'API Token', 'c1abdd724026c448645c3880e3fe3f0d16141302a5e8539d721082399fea1452', '[\"*\"]', '2025-06-08 06:44:07', NULL, '2025-06-08 06:08:46', '2025-06-08 06:44:07'),
(484, 'App\\Models\\User', 96, 'API Token', 'ab8a694ce1afe6886fedae276d2e3b7854d45bb3e8a8cf380026cae1d073741e', '[\"*\"]', '2025-06-08 06:49:22', NULL, '2025-06-08 06:28:52', '2025-06-08 06:49:22'),
(485, 'App\\Models\\User', 37, 'API Token', 'e3e0b8609628a340359283a3df15ad1ca378e5c97ca1d3628b8027b1c150502f', '[\"*\"]', '2025-06-09 05:06:46', NULL, '2025-06-09 05:06:42', '2025-06-09 05:06:46'),
(486, 'App\\Models\\User', 37, 'API Token', 'f2ae9ea5908c6686bc642ac7f298feaf6b96271d803581a510629355b791526a', '[\"*\"]', '2025-06-09 05:07:47', NULL, '2025-06-09 05:07:45', '2025-06-09 05:07:47'),
(487, 'App\\Models\\User', 37, 'API Token', '855c9b2342880686d1a0e9565d5077e84abf295f0fc4f2911737c0c5f7bcff33', '[\"*\"]', NULL, NULL, '2025-06-09 05:09:35', '2025-06-09 05:09:35'),
(488, 'App\\Models\\User', 37, 'API Token', 'c143db1d14ebe806ae53e6d2388eb828d84e72ecec4265561de0e44649cc745f', '[\"*\"]', '2025-06-09 05:09:35', NULL, '2025-06-09 05:09:35', '2025-06-09 05:09:35'),
(489, 'App\\Models\\User', 37, 'API Token', '01219d4f4ee88b4f3dbda2fb8cf093ed2cf3eb387e9cd854ad30658b92b972d4', '[\"*\"]', '2025-06-09 05:10:43', NULL, '2025-06-09 05:10:42', '2025-06-09 05:10:43'),
(490, 'App\\Models\\User', 37, 'API Token', '6c467267eeea84dc780fc3821a2ff9ef9334c6017250e078c2f0ce9d66982345', '[\"*\"]', '2025-06-09 05:39:44', NULL, '2025-06-09 05:39:42', '2025-06-09 05:39:44'),
(491, 'App\\Models\\User', 37, 'API Token', 'dee4931b474997c0365a127a6c2e52519c46ae5b2659b7f61b3c37587664aad8', '[\"*\"]', '2025-06-09 05:40:59', NULL, '2025-06-09 05:40:58', '2025-06-09 05:40:59'),
(492, 'App\\Models\\User', 37, 'API Token', '376739254864ed41bbc77db96edc841614dd976775677849b79b87d62a06d605', '[\"*\"]', '2025-06-09 05:41:20', NULL, '2025-06-09 05:41:20', '2025-06-09 05:41:20'),
(493, 'App\\Models\\User', 37, 'API Token', '5198b2f3c8b1671551a28ade2f65df086bcd03acf1e950dc58d009a12ef41347', '[\"*\"]', '2025-06-09 09:42:58', NULL, '2025-06-09 09:06:22', '2025-06-09 09:42:58'),
(494, 'App\\Models\\User', 66, 'API Token', '30c3689c6dd4eb603049c5bc28818fc4cc7106121cb48da0342e200ef37eaf5c', '[\"*\"]', '2025-06-10 04:34:26', NULL, '2025-06-10 04:34:21', '2025-06-10 04:34:26'),
(495, 'App\\Models\\User', 75, 'API Token', '6aeab0a9c4a8297298bd39c0968d9bfe2cd0142d3f1cae964bfc592bbdc04e50', '[\"*\"]', '2025-06-10 04:35:22', NULL, '2025-06-10 04:35:20', '2025-06-10 04:35:22'),
(496, 'App\\Models\\User', 55, 'API Token', 'a81560eaca4f179874c631b7fddbe1448e1734938b1f40166bed06d696085baf', '[\"*\"]', '2025-06-10 04:38:14', NULL, '2025-06-10 04:38:13', '2025-06-10 04:38:14'),
(497, 'App\\Models\\User', 55, 'API Token', '78dd7f7c289f2d0d364764bb01ca8cfc87be0bd062fae4cae5844ff1dbe7ba5f', '[\"*\"]', '2025-06-10 04:55:56', NULL, '2025-06-10 04:55:51', '2025-06-10 04:55:56'),
(498, 'App\\Models\\User', 55, 'API Token', 'e226e577319f43224e8a2c3cc727b1b28483c34a1b4472f7f09e18021f9b12f9', '[\"*\"]', '2025-06-10 04:57:03', NULL, '2025-06-10 04:56:15', '2025-06-10 04:57:03'),
(499, 'App\\Models\\User', 55, 'API Token', '77d92665e6bde9d599a43fb22008eb0f37abbc6f502916c1355c3fc36bee6a70', '[\"*\"]', NULL, NULL, '2025-06-10 04:59:43', '2025-06-10 04:59:43'),
(500, 'App\\Models\\User', 75, 'API Token', 'c17e4e4d21a8c6f744ec4162033be1e4b59c4245011dc8a70141f1b2e62bec6b', '[\"*\"]', '2025-06-10 05:11:01', NULL, '2025-06-10 05:10:57', '2025-06-10 05:11:01'),
(501, 'App\\Models\\User', 75, 'API Token', 'a6392c9e99ccb352c6a1b2186a9770f549c27d448ff7d1d0690cebaad4d5f9d9', '[\"*\"]', '2025-06-10 05:58:37', NULL, '2025-06-10 05:12:25', '2025-06-10 05:58:37'),
(502, 'App\\Models\\User', 55, 'API Token', '225904ef01c3b1b5c1ad4c6979be582012ea668f72693ca459ef304191911885', '[\"*\"]', '2025-06-10 05:16:55', NULL, '2025-06-10 05:15:57', '2025-06-10 05:16:55'),
(503, 'App\\Models\\User', 55, 'API Token', '8c9526363c55f45464ebfd6d07f9c1ef5c5c4d4190e2c90e9318a706ba30785d', '[\"*\"]', '2025-06-10 05:21:14', NULL, '2025-06-10 05:21:12', '2025-06-10 05:21:14'),
(504, 'App\\Models\\User', 66, 'API Token', '0207a712f6dbe3eabaa1ab8091dec369220e876673bb3a414c04dce79279b13b', '[\"*\"]', '2025-06-10 05:21:55', NULL, '2025-06-10 05:21:49', '2025-06-10 05:21:55'),
(505, 'App\\Models\\User', 60, 'API Token', '1982060c322a8bbd7509e05bc9d465a4b7287a68d315ff5243bac8e1f8e26489', '[\"*\"]', '2025-06-10 05:22:58', NULL, '2025-06-10 05:22:55', '2025-06-10 05:22:58'),
(506, 'App\\Models\\User', 55, 'API Token', 'ea03dd78a9f11ae0984c0f010e08c07266157bb4360cef6cc464f64b258eb5c2', '[\"*\"]', '2025-06-10 06:52:38', NULL, '2025-06-10 06:17:23', '2025-06-10 06:52:38');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(507, 'App\\Models\\User', 66, 'API Token', '435e46b40bc5196b72b1da90585d445d91f911f6ae8445d0c086d34cbaf0abda', '[\"*\"]', '2025-06-10 07:34:00', NULL, '2025-06-10 06:53:02', '2025-06-10 07:34:00'),
(508, 'App\\Models\\User', 60, 'API Token', '7067ad8e95c0613e8c66f40c020991d3be190d94586e6336eb70a832444fc03e', '[\"*\"]', '2025-06-10 08:40:44', NULL, '2025-06-10 08:12:31', '2025-06-10 08:40:44'),
(509, 'App\\Models\\User', 127, 'API Token', 'e3c246674a26637c6781a22451b6afcb8f8420b8365e9d9ebafdc8a990592a9c', '[\"*\"]', '2025-06-11 04:44:46', NULL, '2025-06-11 04:39:02', '2025-06-11 04:44:46'),
(510, 'App\\Models\\User', 127, 'API Token', 'ffd342e884dc184893f4b49aaf7a178e3d90738cc3447cb8d61bacf0037ffc47', '[\"*\"]', '2025-06-11 05:38:07', NULL, '2025-06-11 04:57:14', '2025-06-11 05:38:07'),
(511, 'App\\Models\\User', 124, 'API Token', '6ae7c74e872b63a244de90b93dd3e50205c7118b6f28bab66c93c2699d9e760e', '[\"*\"]', '2025-06-11 09:55:24', NULL, '2025-06-11 09:06:18', '2025-06-11 09:55:24'),
(512, 'App\\Models\\User', 111, 'API Token', 'e3df44f323787c66e8ace84770952b6d66ef188af03e4d7dcfb7548b9c7a9ef8', '[\"*\"]', '2025-06-12 05:40:29', NULL, '2025-06-12 04:43:35', '2025-06-12 05:40:29'),
(513, 'App\\Models\\User', 161, 'API Token', '451d7ac62b5846f0a96cf72107bb6e8c6ca65dc7c156032bfa336aa9d2f6242a', '[\"*\"]', '2025-06-13 07:00:28', NULL, '2025-06-13 06:59:49', '2025-06-13 07:00:28'),
(514, 'App\\Models\\User', 161, 'API Token', 'd395c9611b8aab4f1f552e731964b429f069b26ff1ea00007eafa4227a8d8188', '[\"*\"]', '2025-06-16 07:38:52', NULL, '2025-06-13 07:03:35', '2025-06-16 07:38:52'),
(515, 'App\\Models\\User', 100, 'API Token', '44c828d74059b5c0155058f4efe81a4084b3ca8dd4626a3caa9701de6873e77b', '[\"*\"]', '2025-06-16 05:23:16', NULL, '2025-06-16 05:23:16', '2025-06-16 05:23:16'),
(516, 'App\\Models\\User', 102, 'API Token', '1978b460c3c350718b16b3880ca61f6ebd0be506e5b718395bfadfad724d7205', '[\"*\"]', '2025-06-16 06:36:32', NULL, '2025-06-16 05:27:06', '2025-06-16 06:36:32'),
(517, 'App\\Models\\User', 161, 'API Token', '8203ea537de36040aee815164379cd0a68238f8324044ee673cf4459da4752f5', '[\"*\"]', '2025-06-16 07:22:20', NULL, '2025-06-16 07:22:12', '2025-06-16 07:22:20'),
(518, 'App\\Models\\User', 161, 'API Token', 'ddcac339202b93d3e944c857ba1aa73c955fe04b6ed8d042750ad1f4e22d831a', '[\"*\"]', '2025-06-16 07:23:09', NULL, '2025-06-16 07:22:44', '2025-06-16 07:23:09'),
(519, 'App\\Models\\User', 161, 'API Token', '09e4b701dff57b47a5def69c3c88fc6c67b04132aa591cd490ee8615c083c27d', '[\"*\"]', NULL, NULL, '2025-06-16 07:35:58', '2025-06-16 07:35:58'),
(520, 'App\\Models\\User', 169, 'API Token', '2bd21d4ae35009721674281cd76b93c6dc30a490da1b5aa5703da9cf21150d38', '[\"*\"]', '2025-06-16 10:08:02', NULL, '2025-06-16 10:06:52', '2025-06-16 10:08:02'),
(521, 'App\\Models\\User', 169, 'API Token', '3373d269d02f7c84e5e47b703616e6f16347ace81f942d14972912a6b53ec188', '[\"*\"]', '2025-06-16 10:09:58', NULL, '2025-06-16 10:09:55', '2025-06-16 10:09:58'),
(522, 'App\\Models\\User', 170, 'API Token', '350d90fb79ccf94874b52bb348e1423639ac0f58fdd9cf01500b577562e6e652', '[\"*\"]', '2025-06-16 10:16:24', NULL, '2025-06-16 10:16:22', '2025-06-16 10:16:24'),
(523, 'App\\Models\\User', 171, 'API Token', '461fff20f4add3f62a5e2779584577c127ddb450bf4ddaf2b3fda9f47d5a1322', '[\"*\"]', '2025-06-16 10:20:13', NULL, '2025-06-16 10:20:12', '2025-06-16 10:20:13'),
(524, 'App\\Models\\User', 171, 'API Token', 'e223f23a1ca23728d2af6a7f2b2f32ef705f2564a7de0ebb94a96dccfd6316c3', '[\"*\"]', '2025-06-16 10:23:47', NULL, '2025-06-16 10:23:34', '2025-06-16 10:23:47'),
(525, 'App\\Models\\User', 172, 'API Token', 'a6f06d5c03546e8459a4c3d7b7b75f745de5dfea47318769980bdf8e7bcae809', '[\"*\"]', '2025-06-16 10:27:35', NULL, '2025-06-16 10:27:33', '2025-06-16 10:27:35'),
(526, 'App\\Models\\User', 173, 'API Token', '7ffa220b409529bbaef0b39de8b82f964d167611329c63aae47682acfee2230e', '[\"*\"]', '2025-06-16 10:31:53', NULL, '2025-06-16 10:31:50', '2025-06-16 10:31:53'),
(527, 'App\\Models\\User', 174, 'API Token', 'e72206be79315e8042e32f3a938292bea70f34beba21f620d3168aaf5c6c72b2', '[\"*\"]', '2025-06-16 10:43:49', NULL, '2025-06-16 10:43:47', '2025-06-16 10:43:49'),
(528, 'App\\Models\\User', 175, 'API Token', 'a8ebfcbeaffa46c1eb03761403cc30f056da6e48e25cd0ce46e98b465a691d77', '[\"*\"]', '2025-06-16 10:47:30', NULL, '2025-06-16 10:47:28', '2025-06-16 10:47:30'),
(529, 'App\\Models\\User', 176, 'API Token', '3c4682303d6580a189023650a22d877b6558b694837958a6a883ef3fb415138f', '[\"*\"]', '2025-06-16 10:52:21', NULL, '2025-06-16 10:52:19', '2025-06-16 10:52:21'),
(530, 'App\\Models\\User', 176, 'API Token', 'e652cc181f878a9f2881e3da2ff0cb28dad26eff380ae2aadbd607d536dd61fb', '[\"*\"]', '2025-06-16 10:58:49', NULL, '2025-06-16 10:58:42', '2025-06-16 10:58:49'),
(531, 'App\\Models\\User', 91, 'API Token', '14e44c0c507920da7e23bedca2bb19716d9260808b42675cb28127bf5c96a951', '[\"*\"]', '2025-06-17 05:09:26', NULL, '2025-06-17 05:09:22', '2025-06-17 05:09:26'),
(532, 'App\\Models\\User', 91, 'API Token', '2f9050ec82853ad603b39533d72f13e163541108b41b2964a3a07ce1b357f45b', '[\"*\"]', '2025-06-17 05:10:58', NULL, '2025-06-17 05:10:50', '2025-06-17 05:10:58'),
(533, 'App\\Models\\User', 91, 'API Token', 'a746f734730e32cd1a4f47a7a3368d2549e84d658a46e16524231040cd332c54', '[\"*\"]', '2025-06-17 05:11:58', NULL, '2025-06-17 05:11:38', '2025-06-17 05:11:58'),
(534, 'App\\Models\\User', 91, 'API Token', '9a5536f9e2b6cd7076206882c0f3a67f419cb0bd7df33a8cbcad5b23084ed215', '[\"*\"]', '2025-06-17 07:23:33', NULL, '2025-06-17 05:15:36', '2025-06-17 07:23:33'),
(535, 'App\\Models\\User', 173, 'API Token', '05d98b851d211c504dad0bc1110aab8f42b338afc4f1cc80e8343ad76e0599c1', '[\"*\"]', '2025-06-17 05:38:07', NULL, '2025-06-17 05:37:54', '2025-06-17 05:38:07'),
(536, 'App\\Models\\User', 173, 'API Token', '531183eb7acab50d1f88661acad68a1b819775a17a3346496a0b62c096c6bbd0', '[\"*\"]', '2025-06-17 08:29:13', NULL, '2025-06-17 05:40:55', '2025-06-17 08:29:13'),
(537, 'App\\Models\\User', 170, 'API Token', '504e5054634c7311a09f2f7c9d0cd64694fa09b1b5ef3a9bc53a4c55f9bab19e', '[\"*\"]', '2025-06-17 06:52:36', NULL, '2025-06-17 05:44:25', '2025-06-17 06:52:36'),
(538, 'App\\Models\\User', 169, 'API Token', '391850558355ef2cd7b9c8f05908efe4dabb4277d45eced42c000f4deda0d421', '[\"*\"]', '2025-06-17 06:52:48', NULL, '2025-06-17 05:44:29', '2025-06-17 06:52:48'),
(539, 'App\\Models\\User', 172, 'API Token', '14948bc3c92c923c8c1bdb12f5d95e00e831a880cff46f37eeedfdc47df67b53', '[\"*\"]', '2025-06-17 06:50:51', NULL, '2025-06-17 05:44:42', '2025-06-17 06:50:51'),
(540, 'App\\Models\\User', 171, 'API Token', '180393bd42b19da3086120fe6701a1a1a770747178dc9d6f54276391672b67e5', '[\"*\"]', '2025-06-17 06:42:27', NULL, '2025-06-17 05:44:43', '2025-06-17 06:42:27'),
(541, 'App\\Models\\User', 174, 'API Token', 'ac9da691669da8f8f928ad00ab8f0b35f704bdd366fd27527f39e4dc370c89c7', '[\"*\"]', '2025-06-17 06:50:22', NULL, '2025-06-17 05:44:48', '2025-06-17 06:50:22'),
(542, 'App\\Models\\User', 175, 'API Token', '9a7e7b69cb29eeb9c49bbbfb5b9625b25de20d1ce3021081b6b3388b5fb25f17', '[\"*\"]', '2025-06-17 06:55:24', NULL, '2025-06-17 05:46:47', '2025-06-17 06:55:24'),
(543, 'App\\Models\\User', 176, 'API Token', 'bb9de7079db310a21bab0d7250053287606174764d93e5393ebb603012180695', '[\"*\"]', '2025-06-17 07:11:28', NULL, '2025-06-17 06:17:10', '2025-06-17 07:11:28'),
(544, 'App\\Models\\User', 91, 'API Token', 'dbe99a98acc061d836f97faf58c7c98b425528d7b7655db6b06a8ee2f7068758', '[\"*\"]', '2025-06-17 08:55:20', NULL, '2025-06-17 08:30:38', '2025-06-17 08:55:20'),
(545, 'App\\Models\\User', 47, 'API Token', '866a1f15bfcc7d35dd425c5787082c12a592698f32a425cc9827b5fbb29be0ab', '[\"*\"]', '2025-06-17 08:31:34', NULL, '2025-06-17 08:31:33', '2025-06-17 08:31:34'),
(546, 'App\\Models\\User', 43, 'API Token', 'f6994418a8b79dd15445a9caabf3290bffc2aa259845562c88dad60dd5638deb', '[\"*\"]', '2025-06-17 08:33:09', NULL, '2025-06-17 08:32:03', '2025-06-17 08:33:09'),
(547, 'App\\Models\\User', 43, 'API Token', '620e2800b35a6033a7d962b1d2ab85be7a458571d3331153b5b795d77732aea1', '[\"*\"]', '2025-06-17 08:36:22', NULL, '2025-06-17 08:35:27', '2025-06-17 08:36:22'),
(548, 'App\\Models\\User', 47, 'API Token', 'cbb865b1ddd2dc9b9c23ad43119285c9c709bce44078303dda4ccb0165cb8c69', '[\"*\"]', '2025-06-17 08:38:17', NULL, '2025-06-17 08:38:00', '2025-06-17 08:38:17'),
(549, 'App\\Models\\User', 63, 'API Token', 'cf8f9616bf28e149305f10073eb0076f999c01f594a65334fbd642d5ceee1f1c', '[\"*\"]', '2025-06-17 10:29:09', NULL, '2025-06-17 09:30:29', '2025-06-17 10:29:09');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_requests`
--

CREATE TABLE `purchase_requests` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `option_a` text DEFAULT NULL,
  `option_b` text DEFAULT NULL,
  `option_c` text DEFAULT NULL,
  `option_d` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `course_id`, `question`, `answer`, `option_a`, `option_b`, `option_c`, `option_d`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`, `module_id`, `batch_id`, `exam_id`) VALUES
(1, 1, ' HOSPITAL CAN BE TERMED AS A _________________ WHICH OFFERING A GALAXY OF SERVICE TO THE SOCIETY.', 'A', ' SERVICE INDUSTRY', 'HOSPITAL ADMINISTRATION', 'TECHNICAL INDUSTRY', 'MARKETING', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(2, 1, 'HOSPITAL CAN BE TERMED AS A SERVICE INDUSTRY WHICH OFFERING A _________ SERVICE TO THE SOCIETY.', 'B', 'LIMITED', '   GALAXY', 'UNLIMITED', 'SPECIAL', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(3, 1, 'A____________ IS DEFINED AS\' AN ACT OR PERFORMANCE OFFERED BY ONE PARTY TO ANOTHER THAT IS ESSENTIALLY INTANGIBLE.', 'A', ' SERVICE ', 'CARRING', 'CURAITIVE FUCTION', 'HOSPITALITY', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(4, 1, 'A TRUE__________ BEGINS WHERE NOTHING IS EXPECTED IN RETURN.', 'D', 'HOSPITALITY', 'VALUE', 'CARE', ' SERVICE ', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(5, 1, 'A SERVICE TO BE _________ WITHOUT EXPECTING ANYTHING.', 'C', 'PROCES', 'EVALUATION', 'SPONTANEOUS', 'ALL OF THE ABOVE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(6, 1, 'THE WORD HOSPITAL HAS DERIVED FROM A ____________ “HOSPICES” WHICH MEANS “A HOST OR GUEST”', 'D', 'GREEK WORD', 'GERMEN WORD', 'IRESH WORD', 'LATIN WORD', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(7, 1, ' THE WORD HOSPITAL HAS  DERIVED FROM THE LATIN WORD___________ WHICH MEANS “A HOST OR GUEST”', 'A', ' HOSPICES', 'HOSPEES', 'HOSPICESS', 'HOSTAL', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(9, 1, 'CURRENTLY HOSPITALS ARE NOT JUST A ______________BUT ALSO A PLACE THAT ACTUALLY PROMOTE HEALTHFUL LIVING.', 'C', 'ACTIVE CENTER', 'RESTRICTIVE CENTER', 'CURATIVE CENTRE', 'NONE OF THESE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(10, 1, 'ACCORDING TO______________\"A HOSPITAL IS AN INTEGRAL PART OF A MEDICAL AND SOCIAL ORGANIZATION, THE FUNCTION OF WHICH IS TO PROVIDE FOR THE POPULATION COMPLETE HEALTH CARE ,BOTH CUEATIVE AND PREVENTIVE AND WHOSE OUT PATIENT SERVICES REACH OUT TO THE FAMILY AND ITS HOME ENVIRONMENT, THE HOSPITAL IS ALSO CENTRE FOR THE TRAINING OF HEALTH WORKERS AND BIO-SOCIAL RESEARCH.', 'A', 'WORLD HEALTH ORGANISATION ', 'INDIAN MEDICAL COUNCIL', 'BOTH A&B', 'WORD HEALTH COUNCIL', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(11, 1, ' INDIA A COUNTRY  WITH A CENTURIES OLD HERITAGE OF MEDICAL SCIENCE, FIRST BECAME FAMILIAR WITH THE MODERN SYSTEMS OF MEDICINE IN THE___________CENTURY.', 'B', '18 TH', '17 TH', '19 TH', '16 TH', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(12, 1, 'THE APPROACH OF THE ANCIENT INDIAN MEDICAL SYSTEM WAS ONE OF ______________', 'A', 'HOLISTIC TREATMENT', 'ATHARVAVEDA TREATMENT', 'SIDDHA TREATMENT', ' AYURVEDA', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(13, 1, 'THE APPROACH OF THE ANCIENT _______________MEDICAL SYSTEM WAS ONE OF HOLISTIC TREATMENT', 'D', 'IRISH', 'GERMEN', 'LATIN', 'INDIAN', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(14, 1, 'THE HISTORY OF HEALTHCARE IN INDIA CAN BE TRACED TO THE ________________TIME', 'A', 'VEDIC', 'INDEPENDANCE ERA', 'SHILAYUGAM', 'NONE OF THESE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(15, 1, 'WHO IS THE HINDU GOD OF MEDICINE?', 'A', 'DHANWANTHARI', 'KING ASHOKA', 'CHARAKA', 'SUSHRUTHA', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(16, 1, 'DHANWANTHARI IS THE __________OF MEDICINE', 'A', 'HINDU GOD', 'FATHER', 'FATHER OF SURGERY', 'NONE OF THESE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(150, 1, ' RADIOLOGY  MODULE CATTERS TO SERVICES SUCH AS ______________', 'D', 'ULTRASOUND', 'SCANNING', 'X-RAY', 'ALL OF THESE ABOVE', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(149, 1, 'WHAT IS THE FULL FORM OF HMS?', 'A', 'HOSPITAL MANAGEMENT SOFTWARE', 'HUMAN RESOURSE SERVICE', 'HOSPITAL MANAGEMENT SERVICE', 'HUMAN RESOURSE SOFTWARE', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(19, 1, '  ______________ A TRADITIONAL INDIAN FORM OF HOLISTIC MEDICINE.', 'C', 'SIDDHA', 'NATUROPATHY', ' AYURVEDA', 'HOMEOPATHY', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(20, 1, 'THE PHILOSOPHY OF _______________IS,CHARAKA SAMHITA  ', 'B', 'SIDDHA', ' AYURVEDA', 'NATUROPATHY', 'HOMEOPATHY', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(21, 1, 'SURGICAL SKILL ENUNCIATED BY ______________ .', 'C', 'CHARAKA', 'DHANWANTHARI', 'SUSHRUTHA', 'NONE OF THESE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(22, 1, ' THE FATHER OF INDIAN SURGERY IS____________', 'A', 'SUSHRUTHA', 'DHANWANTHARI', 'CHARAKA', 'KING ASHOKA', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(23, 1, ' SUSHRUTHA IS THE FATHER OF INDIAN ___________', 'C', 'MEDICINE', ' AYURVEDA', 'SURGERY', 'NONE OF THESE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(24, 1, 'HISTORICALLY, THE MOST OUTSTANDING HOSPITALS IN INDIA WERE THOSE BUILT BY ___________.', 'A', 'KING ASHOKA', 'DHANWANTHARI', 'BOTH A&D', 'SUSHRUTHA', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(25, 1, 'AYURVEDA APPLIES THE ____________ THEORY OF DISEASE.', 'D', 'YOGA', 'SIDDHA', 'HOMEOPATHY', 'THRIDHOSHA', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(26, 1, ' ____________ APPLIES THE THRIDHOSHA THEORY OF DISEASE.', 'A', 'AYURVEDA', 'SIDDHA', 'YOGA', 'HOMEOPATHY', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(27, 1, '___________ DESCRIBES THE BIOLOGICAL ELEMENTS WHICH ARE LINKED TO A PATIENT’S HEALTH.', 'D', 'YOGA', 'ALLOPATHIC', 'NATUROPATHY', 'THRIDHOSHA ', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(28, 1, 'WIND , GALL,MUCUS IS THE BASE OF ____________ ', 'B', 'YOGA', 'AYURVEDA', 'HOMEOPATHY', 'NATUROPATHY', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(30, 1, ' THE COOPERATIVE HOSPITAL IS THE EXAMPLE OF ______________ BASES OF CLASSIFICATION OF HOSPITAL', 'A', 'OWNERSHIP', 'SERVICE PROVIDED', 'SYSTEM OF MEDICINE', 'NUMBER OF BEDS', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(31, 1, ' ________________ TYPE OF THE HOSPITAL WERE DIFFERENT SPECIALIST SERVICE ARE PROVIDING TO BOTH ADULT AND CHILDREN UNDER THE SAME ROOF INCLUDING MEDICAL,SURGERY, PAEDIATRICS, CARDIOLOGY ,DERMATOLOGY ,ORTHOPAEDICS ETC.', 'C', 'RURAL HOSPITALS', 'SPECIAL HOSPITAL ', 'GENERAL HOSPITAL', 'NONE OF THESE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(32, 1, '___________ HOSPITAL HAVE MORE THAN 500 BEDS', 'A', 'TEACHING HOSPITAL', 'PRIVATE HOSPITAL', 'SPECIAL HOSPITAL ', 'NONE OF THESE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(33, 1, 'AHALYA HOSPITAL,AMRITA INSTITUTE OF MEDICAL COLLEGE IS THE EXAMPLE OF _________ HOSPITAL.', 'A', 'REGIONAL TEACHING', 'SPECIAL HOSPITAL ', 'COOPERATIVE HOSPITALS', 'PUBLIC HOSPITAL', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(34, 1, 'DISTRICT HOSPITAL HAVE RANGE OF BEDS FROM______________', 'D', '20-100', '100-400', '200-500', '100-500', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(35, 1, 'DISTRICT HOSPITAL PROVIDE ABOUT _____________ SPECIALITIES.', 'C', '18', '16', '15', '20', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(36, 1, ' RURAL HOSPITAL HAVE A RANGE OF BEDS FROM _____________.', 'A', '20 -100', '100-500', '20-500', '200-500', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(37, 1, '___________ HOSPITAL HAVE RANGE OF BEDS  FROM 100 TO 500', 'B', 'TEACHING HOSPITAL', 'DISTRICT HOSPITAL', 'SPECIAL HOSPITAL ', 'RURAL HOSPITAL', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(38, 1, '__________HOSPITALS HAVE A RANGE OF BEDS FROM 20 TO 100', 'C', 'SPECIAL HOSPITAL ', 'DISTRICT HOSPITAL', 'RURAL HOSPITALS', 'PUBLIC HOSPITAL', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(39, 1, ' WHICH TYPE OF HOSPITAL IS PROVIDE MEDICAL,SURGICAL CARE ONLY', 'A', 'RURAL HOSPITALS', 'SPECIAL HOSPITAL ', 'DISTRICT HOSPITAL', 'BOTH A&B', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(40, 1, '___________HOSPITAL ARE OWNED AND MANAGED BY GOVERNMENT AND OR AUTONOMOUS BODY', 'A', '  PUBLIC HOSPITAL', 'TEACHING HOSPITAL', 'RURAL HOSPITALS', 'DISTRICT HOSPITAL', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(41, 1, ' NATIONAL INSTITUTE OF CHILD AND HEALTH IS THE EXAMPLE OF __________ HOSPITAL', 'A', '  PUBLIC HOSPITAL', 'RURAL HOSPITALS', 'DISTRICT HOSPITAL', 'TEACHING HOSPITAL', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(148, 1, 'CHEMICAL WASTE IS INCLUDED IN ____________ TYPE OF CONTAINERS', 'A', 'NON-CHLORINATED PLASTIC BAGS', 'NON-CHLORINATED PLASTIC BAGS OR CONTAINERS ', 'TEMPER PROOF CONTAINERS', 'NONE OF THESE', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(43, 1, ' APPOLO HOSPITAL IS THE EXAMPLE OF _______HOSPITALS', 'D', 'CHARITY HOSPITAL', 'MEDICAL COLLEAGE', 'TEACHING HOSPITAL', 'PRIVATE HOSPITAL', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(44, 1, 'CO- OPERATIVE HOSPITALS ARE OWNED BY CO-OPERATIVE SOCIETIES AND IT HAVE SET OF_____________TO MAKE DECISION ', 'A', 'BOARD MEMBERS', ' AUTONOMOUS BODY', 'PRIVATE PEOPLE ', 'GOVERNMENT', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(147, 1, '\"_______________  REFERS TO THE CLEANING AND UPKEEP OF THE HOSPITAL PREMISES WHICH RENDERS THE ENVIORNMENTAL SURFACES SAFE TO HANDLE BY REMOVING ORGANIC MATTER SALTS AND VISIBLE SOILS\".', 'C', 'SANITATION', 'HOUSE KEEPING', 'BOTH A&B', 'NONE OF THESE', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(146, 1, 'A MINIMUM BELOW-CEILING HIGHT OF _________IS RECOMMENDED', 'B', '2600MM', '2800MM', '2400MM', '2500MM', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(47, 1, 'ASTER MEDICITY IS THE EXAMPLE OF____________HOSPITAL ', 'A', 'ALLOPATHIC', 'HOMEOPATHY', 'SPECIAL HOSPITAL ', 'NATUROPATHY', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(48, 1, 'SIDDHA IS THE ACRONYM OF_________', 'D', 'UNANI', 'AIUSH', 'AYURVEDA', 'AYUSH', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(145, 1, '_____________ SHOULD BE WASHABLE,PREFERRABLE CLADED BY WELDED SHEET VINYL', 'B', 'FLOOR', 'WALL', 'CEILINGS', 'WINDOWS', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(50, 1, '___________ IS THE STUDY AND TREATMENT OF DISORDERS OF THE HEART AND THE BLOOD VESSELS.', 'C', 'HAEMATOLOGY', 'CARDIOVASCULAR', 'CARDIOLOGY', 'NONE OF THESE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(51, 1, 'A PERSON WITH HEART DISEASES OR _________ DISEASES MAY BE REFERRED TO A CARDIOLOGIST ', 'A', 'CARDIOVASCULAR', 'STROKE', 'BOTH A&B', 'NONE OF THESE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(52, 1, 'WHAT IS THE FULLFORM OF ICU?', 'A', 'INTENSIVE CARE UNIT ', 'INTESIVE CARE UNIT', 'INTENSIVE CRITICAL UNIT', 'ALL OF THESE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(54, 1, 'THE DEPARTMENT OF CLINICAL ___________  LOOKS AFTER AND TREATS PEOPLE WITH BLOOD RELATED DISORDER.', 'D', 'NEPHROLOGY', 'HEAMETOOLOGY', 'ONGOLOGY', 'HAEMATOLOGY', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(55, 1, '____________ DEPARTMENT IS VERY IMPORTANT AS IT IS BRIDGE THE GAP BETWEEN PLAM AND RESULT.', 'A', 'ADMINISTRATIVE', 'CARDIOLOGY', 'FRONT OFFICE', 'NONE OF THESE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(56, 1, 'WHAT IS THE FULLFORM OF MRD?', 'D', 'MARKETING  RECORD DEPARTMENT', 'MEDICINE RECORD  DEPARTMENT', 'MEDICAL RECOVERY DEPARTMAENT', 'MEDICAL  RECORD DEPARTMENT', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(144, 1, 'FLOOR SHOULD BE ___________ COVERED UP THE WALL ENSURES A WATER TIGHT HYGIENIC SURFACE WHICH WILL STAND DAILY CLEANING', 'A', 'PVC WELDED SHEET VINYL', 'FLOORING CARPET', ' FORM BOARD SHEET', 'NONE OF THESE', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(58, 1, '________ DEALS WITH RECORDING AND MAINTAIN ALL THE RECORDS OR FILES OF INPATIENTS AS WELL AS OUTPATIENTS', 'C', 'PR', 'HR', 'MRD', 'NONE OF THESE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(59, 1, 'MEDICAL RECORD INCHARGE STAFF  PART OF WHICH DEPARTMENT ?', 'A', 'MRD DEPARTMENT', 'FRONT OFFICE', 'TOP LEVEL DEPARTMENT', 'HR DEPARTMENT', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(60, 1, '______________ IS A DEPARTMENT OF THE HOSPITAL WHICH DIRECTLY INTRACT WITH THE PATIENTS WHEN THEY FIRST ARRIVE', 'A', 'FRONT OFFICE', 'HR DEPARTMENT', 'BOTH A&B', 'MEDICAL DEPARTMENT', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(61, 1, 'WHAT IS THE FULLFORM OF PRE?', 'A', 'PUBLIC RELATION EXECUTIVE', 'PUBLIC RECORD EXICUTIVE', 'PROGRESSIVE RESISTANCE EXERCISE', 'PROGRESSIVE  RELATION EXECUTIVE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(62, 1, 'WHAT IS THE FULLFORM OF PRO?', 'C', 'PATIENT RELATION OUTCOME', 'PROGRESSIVE RELATION OFFICER', 'PUBLIC RELATION OFFICER', 'NONE OF THESE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(64, 1, 'WHAT IS THE FULLFORM OF LAMA?', 'A', 'LEAVE AGAINST MEDICAL ADVICE', 'LEGAL ACTIONS IN MEDICAL ADVICE', 'LEGAL ACT OF MAJOR ACCIDENT', 'NONE OF THESE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(65, 1, 'WHAT IS THE FULLFORM OF DAMA?', 'A', 'DISCHARGE AGAINST MEDICAL ADVICE', 'DISCOMFORT ASSESSING METHOD OF ACT', 'DAILY ADMISSION ON MEDICAL APPROACH', 'NONE OF THESE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(66, 1, '______________ IS AN ALTERNATIVE MEDICINE SYSTEM WITH HISTORICAL ROOTS IN THE INDIAN SUBCONTINENT.', 'D', 'HOMEOPATHY', 'SIDDHA', 'NATUROPATHY', 'AYURVEDA', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(143, 1, 'WHAT IS THE FULLFORM OF TSSD?', 'A', 'THEATER STERILE SERVICE DEPARTMENT', 'THEATER SUPPORTIVE SERVICE DEPARTMENT', 'THERAPY SERVICE SUPPORTIVE DEPARTMENT', 'THEATER STERILE SUPPORTIVE DEPARTMENT', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(68, 1, 'THE THEORY AND PRACTICE OF ____________ IS PSEUDOSCIENTIFIC ', 'A', 'AYURVEDA', 'SIDDA', 'YOGA', 'NATUROPATHY', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(70, 1, 'THE INDIAN MEDICAL ASSOCIATION DESCRIBES ___________ PRACTITONERS WHO TO PRACTICE MEDICINE AS QUACKS', 'B', 'SIDDHA', 'AYURVEDA', 'NATUROPATHY', 'HOMEOPATHY', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(71, 1, 'ALLOPATHIC MEDICINE IS ANOTHER TERM FOR CONVENTIOANAL OR______________', 'A', 'MODERN WESTERN MEDICINE', 'MODERN INDIAN MEDICINE', 'WESTERN INDIAN MEDICINE', 'NONE OF THESE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(142, 1, 'WHAT IS THE FULLFORM OF TSSU?', 'A', 'THEATER STERILE SERVICE UNIT', 'THEATER SUPPORTIVE SERVICE UNIT', 'THEATER STERILE SUPPORTIVE UNIT', 'THERAPY SERVICE SUPPORTIVE UNIT', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(73, 1, 'NATURE CARE FUNDAMENTAL BELIEF IS USING THE _________PRIMORDIAL AGENTS OF NATURE', 'C', '4', '3', '5', '6', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(74, 1, '___________TREATS A PERSON AS A WHOLE NOT AS A GROUP OF INDIVIDUAL PARTS ', 'A', 'UNANI', 'AYURVEDA', 'HOMEOPATHY', 'NATUROPATHY', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(75, 1, '____________ IS AIMED AT TREATING BODY MIND AND SOUL', 'D', 'SIDDHA', 'THRIDHOSHA ', 'HOMEOPATHY', 'UNANI', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(76, 1, 'UNANI SYSTEM IS BASED ON HIPPOCRATIC THEORY OF _________', 'A', 'FOUR HUMOURS', 'THRIDHOSHA ', 'NATUROPATHY', 'HOMEOPATHY', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(77, 1, 'FOURS HUMOURS IS BLOOD,___________YELLOW BILE AND BLACK BILE.', 'B', 'WIND', 'PHLEGM', 'PITTA', 'GALL', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(78, 1, '______________ TRADITIONAL SYSTEM OF HEALING THAT ORGINATED IS SOUTH INDIA AND CONSIDERED TO BE ONE OF INDIA’S OLDEST SYSTEMS OF MEDICINE', 'A', 'SIDDHA MEDICINE', 'AYURVEDA', 'NATUROPATHY', 'HOMEOPATHY', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(141, 1, 'WHAT IS THE FULLFORM OF SPD?', 'A', 'STERILE PROCESSING DEPARTMENT', 'SERVICE PROCESSING DEPARTMENT', 'SUPPLY PROVIDING DEPARTMENT', 'STERILE PROVISSION DEPARTMENT', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(80, 1, '____________ SYSTEM IS BASED ON A COMBINATION OF ANCIENT  MEDICAL PRACTICES AND SPIRITUAL DISCIPLINES AS WELL AS ALCHEMY AND MISTICISM', 'C', 'HOMEOPATHY', 'NATUROPATHY', 'SIDDHA', 'UNANI', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(81, 1, '____________ IS A MEDICAL SYSTEM BASED ON BELIEF THAT THE BODY CAN CURE ITSELF', 'A', 'HOMEOPATHY', 'NATUROPATHY', 'SIDDHA', 'UNANI', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(82, 1, '__________ WAS DEVELOPED IN THE LATE 1700 S  IN GERMANY', 'D', 'UNANI', 'NATUROPATHY', 'SIDDHA', 'HOMEOPATHY', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(83, 1, 'HOMEOPATHY WAS DEVELOPED IN THE LATE _______ IN GERMANY', 'C', '1500 s', '1600s', '1700 s', '1800 s', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(84, 1, 'HOMEOPATHY WAS DEVELOPED IN THE 1700 S IN __________', 'B', 'LATIN', 'GERMANY', 'INDIA', 'GREEK', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(85, 1, '________________ IS A TYPE OF TECHNOLOGY THAT IS USED TO CREATE VISUAL REPRESENTATIONS OF THE HUMAN BODY’S INTERIOR', 'A', 'MEDICAL IMAGING', 'X-RAY', 'CT -SCAN', 'ALL OF THE ABOVE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(86, 1, 'MEDICAL IMAGING IS A TYPE OF TECHNOLOGY THAT IS USED TO CREATE_____________ OF THE HUMAN BODY’S INTERIOR', 'A', 'VISUAL REPRESENTATION', 'CLINICAL ANALYSIS', 'ABNORMALITY', 'ALL OF THESE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(87, 1, 'RADIOGRAPHY IS A EXAMPLE OF WHICH EQUIPMENTS?', 'A', 'MEDICAL IMAGING', 'X-RAY', 'CT-SCAN', 'ALL OF THE ABOVE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(88, 1, 'THE ___________ IS A ACOUSTIC MEDICAL DEVICE FOR AUSCULATION OR LISTENING TO INTERNAL SOUNDS OF AN ANIMAL OR HUMAN BODY', 'A', 'STETHOSCOPE', 'SPHYGMOMANOMETER', 'STATHASCOP', 'SPYGNOMETTER', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(89, 1, 'IT TYPICALLY HAS A SMALL DISC-SHAPED_________ THAT IS PLACED AGAINST THE SKIN, AND ONE OR TWO TUBES CONNECTED TO TWO EARPIECES', 'B', 'RESONATER', 'RESONATOR', 'RESONATAR', 'ROSANATER', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(140, 1, '_____________ ALSO KNOWN AS SPD AND CSD', 'C', 'OPD', 'TSSE', 'CSSD', 'NONE OF THESE', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(91, 1, 'A_____________ IS A DEVICE USED TO MEASURE BLOOD PRESSURE', 'A', 'BLOOD PRESSUREGANG', 'NAMOMANOMETER', 'BOTH A&B', 'NONE OF THESE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(92, 1, 'A _____________ IS AN ELECTRONIC DEVICE THAT MEASURES SATURATION OF OXYGEN CARRIED IN YOUR RED BLOOD CELLS.', 'A', 'PULSE OXIMETER', 'BLOOD PRESSURE GUAGE', 'NEBULIZERS', 'VENTILATORS', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(93, 1, 'THE PULSE OXIMITER IS AN____________DEVICE THAT MEASURES THE SATURATION OF OXYGEN CARRIED IN YOUR RED BLOOD CELLS', 'D', 'SURGICAL', 'BREATHING', 'TRACTION', 'ELECTRONIC', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(94, 1, 'OPERATING ROOM COMES UNDER WHICH ZOONE?', 'A', 'STERILE', 'HOUSE KEEPING', 'SANITIZATION', 'NONE OF THESE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(96, 1, 'WHO IS THE FIRST INDIAN PHYSICIAN?', 'C', 'CHARAKA', 'SUSHRUTHA', 'ATRAYA', 'NONE OF THESE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(97, 1, 'THE OBJECTIVE OF _______________IS TO PROVIDE ITS CUSTOMERS ACCURATE RESULTS WHICH IS HELPFUL IN DIAGNOSIS AND TREATMENT ', 'A', 'LABORATORY', 'HRM', 'HRM', 'BOTH A&C', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(98, 1, 'THE FORMAL RELEASE OF A PATIENT FROM A HOSPITAL AFTER A COURSE OF TREATMENT IS CALLED _____________', 'A', 'DISCHARGE', 'FORM C', 'FORM D', 'NONE OF THESE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(99, 1, '_______________ HOSPITALS ARE MANAGED BY DISTRICT ADMINISTRATION ', 'B', 'STATE GOVT', 'MUNCIPAL', 'CENTRAL GOVT', 'NONE OF THESE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(100, 1, 'HOW MANY LITRES OF BLOOD DOES AN AVERAGE PERSON CARRY', 'D', '3 LITER', '4 LITER', '6 LITER', '5 LITER', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(101, 1, 'WHO MUST KEEP THE PROPER SYSTEM OF BLOOD TRANSFUSION PROTOCOLS', 'C', 'FRONT OFFICE DEPARTMENT', 'HR DEPARTMENT', 'HOSPITAL ADMINISTRATION', 'NONE OF THESE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(102, 1, 'WHICH IS THE RAREST BLOOD GROUP', 'A', 'AB NEGATIVE', 'B NEGATIVE', 'A NEGATIVE', 'O NEGATIVE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(103, 1, 'WHICH BLOOD CELLS CARRY OXYGEN TO THE TISSUES', 'A', 'RBC', 'PLATELETS', 'WBC', 'NONE OF THESE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(104, 1, 'WHOSE CONSENT IS REQUIRED FOR THE PATIENT IN CASUALITY TO LEAVE THE HOSPITAL', 'B', 'PRO', 'CMO', 'HR', 'FRONT OFFICE EXICUTIVE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(105, 1, 'WHICH MEDICAL DEPARTMENT DEALS WITH DIAGNOSIS AND MANAGEMENT OF LIVER DISORDERS ', 'C', 'HEPATOLOGY', 'NEPHROLOGY', 'HEPATOLOGY', 'NONE OF THESE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(106, 1, 'THE ________________ HAS THE RIGHT TO INITIATE AND CARRYOUT EMERGENCY TREATMENT WITHOUT PERMISSION', 'A', 'SENIOR RESIDENT', 'HRM', 'BOTH A&B', 'NONE OF THESE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(107, 1, 'MEDICAL RECORDS IS ______________ DEPARTMENT OF HOSPITAL', 'B', 'HR DEPARTMENT', 'MEDICAL DEPARTMENT', 'ADMINISTRATIVE DEPARTMENT', 'NONE OF THESE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(108, 1, 'SORTING PATIENT FOR PROVIDING OPTIMUM CARE AND CONSISTANT WITH THEIR MEDICAL NEED AND ENSURING EFFICIENT UTILISATION OF AVAILABLE RESOURCES IN A& E', 'A', 'TRIAGE', 'QUEUEING', 'ADMISSION', 'NONE OF THESE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(109, 1, 'A SERVICE SHOULD HAVE THE QUALITIES __________________', 'D', 'SERVICE SHOULD BE VOLUNTARY WITHOUT ANY COMPULSION', 'CARING WITH A PLEASANT SMILE IS SERVICE', 'SERVICE IS AN ART WHEREIN THE END CUSTOMER IS SATISFIED', 'ALL OF THESE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(110, 1, '_______________ HAVE THE RESPOSIBILITIES TO SERVE THE MEDICAL INDUSTRY', 'A', 'HOSPITAL ADMINISTRATION', 'HOSPITALS', 'SERVICE INDUSTRY', 'PATIENTS', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(111, 1, 'HOSPITAL ADMINISTRATION HAVE TO TAKE CARE', 'D', 'EMPLOYEES', 'STAKE HOLDERS', 'PATIENTS', 'ALL OF THESE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(112, 1, 'THE WORD __________ HAS DERIVED FROM THE LATIN WORD \"HOSPICES\"', 'A', 'HOSPITAL', 'HOST', 'BOTH A & B', 'NONE OF THESE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(113, 1, '__________ IS A TRADITIONAL INDIAN FORM OF HOLISTIC MEDICINE DEVELOPEDFROM ATHARVAVEDA', 'B', 'SIDDHA', 'AYURVEDA', 'NATUROPATHY', 'HOMEOPATHY', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(114, 1, 'THE PHILOSOPHY OF AYURVEDA', 'A', 'CHARAKA SAMHITA', 'SUSHRUTHA SAMHITHA', 'ATHARVAVEDA', 'NONE OF THE ABOVE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(115, 1, 'WHO IS THE FATHER OF INDIAN SURGERY', 'C', 'ASHOKA', 'ATHRAYA', 'SUSHRUTHA', 'CHARAKA', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(116, 1, 'UNANI MEDICINE WAS DEVELOPED DURING THE PERIOD OF__________', 'B', 'BUDDHA', 'AKBAR', 'ASHOKA', 'NONE OF THESE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(117, 1, 'AYURVEDA APPLIES THE_________ THEORY OF DISEASE', 'A', 'THRIDHOSA THEORY', 'CURATIVE THEORY', 'ANCIENT THEORY', 'HISTORICAL THEORY', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(118, 1, 'IN AYURVEDA DISEASE IS EXPLAINED AS A DISTURBANCE IN THE EQUILIBRIUM OF THE_________', 'D', 'VATA', 'PITTA', 'KAPHA', 'ALL OF THE ABOVE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(119, 1, 'ORGANISED MEDICAL TRAINING BEGAN WITH THE OPENING OF THE FIRST MEDICAL COLLEGE IN ______ IN 1835', 'A', 'CALCUTTA', 'CHENNAI', 'BANGLORE', 'MUMBAI', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(120, 1, 'NON COMMUNICABLE DISEASE RELATED TO URBANIZATION', 'D', 'HYPERTENSION', 'CARDIOVASCULAR DISEASES', 'CANCER', 'ALL OF THESE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(121, 1, 'HOSPITALS CAN BE CLASSIFIED ON THE BASIS OF____________ ', 'C', 'SERVICE PROVIDED', 'SIZE OR NUMBER OF BEDS', 'OWNERSHIP', 'NONE OF THESE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(122, 1, 'ON THE BASIS OF OWNERSHIP, HOSPITALS CAN BE DIVIDED INTO', 'B', 'TWO', 'FOUR', 'THREE', 'FIVE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(123, 1, '____________ HOSPITALS DEAL WITH SPECIFIC CATEGORY OF DISEASES', 'A', 'SPECIAL HOSPITAL ', 'AYUSH HOSPITAL', 'GENERAL HOSPITAL', 'SPECIFIC HOSPITAL', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(124, 1, 'ACCORDING TO THE SIZE OR NUMBER OF BEDS HOSPITAL IS CLASSIFIED AS:', 'C', 'COOPERATIVE HOSPITAL', 'ALLOPATHIC HOSPITAL', 'REGIONAL HOSPITAL', 'NONE OF THE ABOVE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(125, 1, 'NUMBER OF BEDS IN A REGIONAL HOSPITAL', 'A', 'MORE THAN 500 BEDS', '200 BEDS', 'UPTO 500 BEDS', 'LESS THAN 200 BEDS', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(126, 1, '__________________ HOSPITALS ARE OWNED AND MANAGED BY GOVERNMENT OR AUTONOMOUS BODY', 'A', 'PUBLIC HOSPITALS', 'COOPERATIVE HOSPITALS', 'AUTONOMY HOSPITAL', 'RURAL HOSPITAL', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(127, 1, 'NATIONAL INSTITUTE OF CHILD HEALTH IS AN EXAMPLE OF _____________ HOSPITAL', 'B', 'REGIONAL HOSPITAL', 'PUBLIC HOSPITAL', 'PRIVATE HOSPITAL', 'COOPERATIVE HOSPITAL', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(128, 1, '___________ IS AN EXAMPLE FOR AYUSH HOSPITAL', 'A', 'SANTHIGIRI SIDDHA HOSPITAL', 'AHALYA AYURVEDA HOSPITAL', 'ALL OF THE ABOVE', 'NONE OF THESE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(129, 1, 'WHICH ONE IS NOT A FUNCTION OF HOSPITAL', 'D', 'TRAINING FUNCTION', 'PREVENTIVE FUNCTION', 'CURATIVE FUNCTION', 'NONE OF THESE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(130, 1, '____________ HELPS EVERY ORGANIZATION FOR PROPER MANAGEMNET OF THE WORK AND ACTIVITIES OF THE SAME', 'A', 'DEPARTMENTISATION', 'HOSPITALS', 'INDUSTRIALISATION', 'PREVENTION', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(131, 1, 'THE SECONDARY FUNCTION FOR THE HOSPITAL AND CONCERNED WITH ____________', 'D', 'HEALTH PROMOTION', 'PROVIDING TRAINING AND EDUCATION', 'CONDUCTING THE HEALTH REALATED RESEARCHES', 'ALL OF THE ABOVE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(132, 1, 'PRIMARY FUNCTION OF THE HOSPITAL AND CONCERN WITH PROVIDING__________', 'C', 'RESEARCH FUNCTION', 'PREVENTIVE FUNCTION', 'CURATIVE FUNCTION', 'ALL OF THE ABOVE', NULL, 1, '2024-11-12 00:27:54', '2024-11-12 00:27:54', NULL, 1, 1, 1),
(139, 1, 'WHAT IS THE FULLFORM OF CSSD?', 'A', 'CENTRAL STERILE SERVICE DEPARTMENT', 'CENTRAL SERVICE STERILE DEPARTMENT', 'CENTRAL SUPPORTIVE SERVICE DEPARTMENT', 'CENTRAL STERILE SUPPORTIVE DEPARTMENT', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(152, 1, 'WHAT IS THE FULLFORM OF TCO ?', 'A', 'TOTAL COST OF OWNERSHIP', 'TOTAL COST OUTFLOW', 'TOTAL CONTROL OF OWNERSHIP', 'TOTAL CONTRIBUTION OVERHEAD', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(153, 1, 'WHAT IS THE FULLFORM OF HAI?', 'A', 'HOSPITAL ASSOCIATED INFECTIONS', 'HOSPITAL ASSOCIATES OF INFECTION', 'HOSPITAL ACCREDITED INFO', 'HOSPITAL ASSESSMENT INGNORANCE', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(154, 1, ' HIS IS ALSO KNOWN AS____________', 'A', 'HOSPITAL MANAGEMENT SOFTWARE', 'HOSPITAL INFECTION SOFTWARE', 'HOSPITAL MALWARE', 'HOSPITAL INDEX STATEMENT', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(155, 1, 'SHELVING SHOULD BE ___________ , SLATED 375MM DEEP ,EASILY CLEANED AND ALLOW AIR CIRCULATED AROUND STORED PACKS ', 'D', 'FLOORING CARPET', 'PVC WELDED SHEET VINYL', 'FORM BOARD SHEET', 'STAINLESS STEEL', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(156, 1, 'HUMAN ANATOMICAL WASTE IS CONTAINED IN ______________ CONATINERS', 'A', 'NON-CHLORINATED PLASTIC BAGS  ', 'TEMPER PROOF CONTAINERS', 'NONE OF THESE', 'NON-CHLORINATED PLASTIC BAGS OR CONTAINERS ', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(157, 1, 'WHEELCHAIR SERVICE IS EXAMPLE OF EMT OR NEMT ?', 'D', 'NAMT', 'EMT', 'BOTH A&B', 'NEMT', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(158, 1, 'WHAT IS THE FULLFORM BLS ?', 'A', 'BASIC LIFE SUPPORT TRANSPORTATION', 'BASIC LIFE SERVICE TRANSPORTATION', 'BOTH A&B', 'ONLY B', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(159, 1, '_____________ MEDICAL TRANSPORT TYPE VEHICLES CONTAIN HEART PADDLES IV UNITS ', 'A', 'ADVANCED LIFE SUPPORT TRANSFORMATION', 'CRITICAL CARE TRANSPORTATION', 'BASIC LIFE SUPPORT TRANSPORTATION', 'NEO-NATAL INTENSIVE CARE TRANSPORT', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(160, 1, '______________ TYPE OF TRANSPORT IS HELPFUL IN RELOCATING THE NEWBORN BABIES WHO REQUIRE INTENSIVE CARE SUPPORT', 'A', 'NEO- NATAL INTENSIVE CARE TRANSPORT', 'CRITICAL CARE TRANSPORTATION', 'BASIC LIFE SUPPORT TRANSPORTATION', 'NONE OF THESE', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(161, 1, 'PASSANGER ELEVATOR CAPACITY IS ____________', 'B', '1200-6000', '1500 TO 5000', '1000-5000', '5000-6000', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(162, 1, 'THE MEANING OF “PLACE WHERE THE DISEASED ARE KEPT TEMPORARILY “ WAS FIRST RECORDED IN__________', 'D', '1845', '1835', '1855', '1865', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(163, 1, 'WHAT IS THE FULLFORM OF COPP ?', 'A', 'COMMITEE ON PLAN PROJECT', 'COMMITEE ON PRODECT PLANNING', 'COMMITTEE ON PROCUREMENT PLANNING', 'NONE OF THESE', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(164, 1, 'WHAT IS THE FULLFORM OF OEE?', 'A', 'OVERALL EQUIPMENT EFFECTIVENESS', 'ORGINAL EQUIPMENT EFFECTIVENESS', 'OPERATIONAL EFFECIENCY EVALUATION', 'OUT-PATIANT EFFECIANCY EVALUATION', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(165, 1, 'WHAT IS THE FULLFORM OF CBET?', 'A', ' CERTIFIED BIOMEDICAL EQUIPMENT TECHNICIAN', ' CERTIFIED BIO-CHEMICAL EDUCATION TECHNICIAN', 'COMPUTRAICED BIO-CHEMICAL EDUCATION TECHNICIAN', ' CERTIFIED BIO-CHEMICAL EDUCATION TECHNICIAN', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(166, 1, '_______   GENERALLY REFERES TO A GROUP OF MAINTENANCE WORKERS THAT ARE RESPONSIBILE FOR COMPLETING A VARIETY OF CLEANING TASKS.', 'C', 'STERILE STAFF', 'JANUTOORIAL STAFF', 'JANITORIAL STAFF', 'MAINTAINANCE TECHNICIAN', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(167, 1, 'JANITORIAL STAFF GENERALLY REFERES TO A GROUP OF MAINTENANCE WORKERS THAT ARE RESPONSIBLE COMPLETING A VARIETY OF _____________', 'B', 'DIATRY TASK', 'CLEANING TASK', 'ADMINISTRATIVE TASK', 'NONE OF THESE', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(168, 1, '____________ STAFF DUTIES INCLUDE SWEEPING ,MOPPING,AND VACCUM OF FLOOR', 'A', 'JANITORIAL STAFF', 'JANUTOORIAL STAFF', 'STERILE STAFF', 'ALL OF THESE ABOVE', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(169, 1, 'WHAT IS THE FULLFORM OF BMD?', 'A', 'BIOMEDICAL ELECTRONICS TECHNICIAN', 'BIOMEDICAL ELECTRONIC THEATER', 'BIO MEDICAL EXTRACTION TECHNICIAN', 'NONE OF THESE', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(170, 1, 'MAINTAINANCE TECHNICIAN ARE SKILLED ____________ WORKERS WITH THE HANDS ON TRAINING REQUIRED TO WORK DIRECTLY ON MACHINE REPARING AND SERVICING.', 'D', 'RED-COLLAR', 'BLACK COLLAR', 'GREEN COLLAR', 'BLUE- COLLAR', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(172, 1, 'WHICH SUPERVISOR WORKS LIKE A GO-BETWEEN THE FACILITIES MANAGER AND OTHER MEMBERS OF THE TEAM', 'A', 'MAINTAINANCE TECHNICIAN', 'HOUSEKEEPING TECHNICIAN', 'ADMINISTRATIVE TECHNICIAN', 'NONE OF THESE', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(173, 1, 'THE ____________ MANAGER LEADS THE MAINTANANCE TEAM AND ITS RESPONSIBLE FOR MAINTANANCE PLANNING AND EXECUTION ON A STRATEGIC LEVEL.', 'A', 'FACILITIES MANAGER', 'HOUSEKEEPING MANAGER', 'BOTH A&B', 'NONE OF THESE', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(174, 1, 'MERGING YOUR WORK ORDERS AND FLOOR PLANS THROUGH YOUR MOBILE _________ APP ALSO REDUCE DATA ENTRY ERRORS.', 'C', 'SAP', 'ERP', 'CMMS', 'NONE OF THESE', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(175, 1, ' ', 'C', 'FSSAI', 'DELIVERY NOTE', 'INVOICE', 'NONE OF THESE', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(176, 1, 'HOSPITAL ____________ TEAMS ARE RESPONSIBLE FOR HEATING ,AIR CONDITIONING ,REFRIGERATION ,VENTILATION ,AND ANY OTHER ASSETS WITHIN YOUR HEALTHCARE FACILITIES.', 'A', 'BULIDING MANAGEMENT', 'FACILITIES MANAGEMENT', 'ADMINISTRATIVE MANAGEMENT', 'MAINTAINANCE MANAGEMENT', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(177, 1, 'WHAT IS THE FULLFORM OF TJC?', 'A', 'THE JOINT COMMISION', 'THEATER JOINT COMMISSION', 'THE JOINING COMMISION', 'THEATER JOING CENTER', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(179, 1, 'PD.M. IS A _____________ STRATEGY IDEAL FOR HIGH-RISK ASSET', 'A', 'PRECAUTIONARY MAINTANANCE', 'TECHNICAL PROBLEM', 'BOTH A&B', 'NONE OF THESE', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(180, 1, '___________ IS A PRECAUTIONARY MAINTANANCE STRATEGY IDEAL FOR HIGH-RISK ASSET', 'C', 'FD.M.', 'ED.M', ' PD.M.', 'ALL OF THESE ABOVE', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(181, 1, 'PREDUCTIVE MAINTENANCE MONITORS THE ____________CONDITION OF EQUIPMENT AND ALERTS MAINTANANCE WHEN THERE IS A POTENTIAL PROBLEM', 'A', 'REAL TIME', 'DIRECT', 'INDIRECT', 'NONE OF THESE', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(183, 1, 'PREDUCTIVE MAINTENANCE MONITORS THE REAL TIME CONDITION OF EQUIPMENT AND ALERTS MAINTANANCE WHEN THER IS A______________ PROBLEM', 'A', 'POTENTIAL PROBLEM', 'TECHNICAL PROBLEM', 'COST PROBLEM', 'ALL OF THESE ABOVE', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(184, 1, 'THE ____________ DEPARTMENT NEED TO UNDERSTAND THE UNIQUE NATURE OF THE HOSPITAL AND STRATEGICALLY RESEARCH AVENUE TO LOWER COSTS WITHOUT COMPROMISING PATIENT CARE', 'C', 'FRONT OFFICE', 'MAINTANANCE', 'ADMINISTRATIVE', 'FACILITY', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(185, 1, 'WHAT IS THE FULLFORM OF FSSAI?', 'A', ' FOOD SAFETY AND STANDARDS AUTHORITY OF INDIA', 'FOOD SAFETY AND SERVICE AUTHORITY OF INDIA', 'FOOD SERVICE SAFETY AUTHORITY OF INDIA', 'NONE OF THESE', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(186, 1, '______________ IS AN ORGANISATION SETUP BY MINISTRY OF HEALTH AND FAMILY WELFARE WHICH DEDICATES TO ENSURE FOOD SAFETY AND HYGIENE REQUIREMENT IN INDIA  ', 'C', 'FSSI', 'FCSAI', 'FSSAI', 'FSSIA', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(188, 1, 'TODAY’S KITCHENS CARE NOT ONLY LABOUR INTENSIVE BUT THE EQUIPMENTS ALSO PLAY VERY IMPORTANT ROLE IN THE _________________', 'D', 'LAUNDRY SERVICES', 'HOUSE KEEPING DEPARTMENT', 'STERILIZATION', 'DIETRY SERVICE  ', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(189, 1, 'TODAY, THE ___________ RANKS AS ONE OF THE MAJOR DEPARTMENTS OF THE HOSPITAL ,HEADED BY A SPECIALIST , THE DIETITION', 'A', 'DIETARY DEPARTMENT', 'LAUNDRY SERVICES', 'HOUSE KEEPING DEPARTMENT', 'STERILIZATION', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(191, 1, ' ______________ IS A PROCESS OF FREEING AN ARTICLE FROM ALL LIVING ORGANISMS INCLUDING BACTERIA, FUNGAL SPORES AND VIRUSES', 'A', 'STERILIZATION', 'SANITIZATION', 'BOTH A&B', 'NONE OF THESE', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(193, 1, 'THE TERM MORTUARY DATES FROM THE EARLY 14TH CENTURY ,FROM ________________ MORTUARIES.', 'A', 'ANGLO-FRENCH MORTUARIES', 'ANGLO-GREEK MORTUARIES', 'ANGLO-LATIN MORTUARIES', 'ANGLO-INDIAN MORTUARIES', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(194, 1, 'THE TERM MORTUARY DATES FROM THE EARLY_________________CENTURY ,FROM ANGLO-FRENCH MORTUARIES.', 'C', '15', '16', '14', '17', NULL, 1, '2024-11-12 00:30:59', '2024-11-12 00:30:59', NULL, 2, 1, 1),
(272, 1, 'AN _______________IS NORMALLY NOT DIRECTLY INVOLVED EITHER IN THE PRESCRIPTION OR DISTRIBUTION OF A DRUG OR A PHARMACEUTICAL  FORMULATION ', 'A', ' ADMINISTRATOR', 'HUMAN RESOURSE', 'PRO', 'ALL OF THESE ABOVE', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(273, 1, 'A _______________,IS A SUBSTANCE USED TO PREVENT OR CURE A DISEASE OR AILMENT OR TO ALLEVIATE ITS SYSPTOMS ', 'C', 'MEDICAL EQUIPMENT', 'CSSD', 'DRUG', 'ALL OF THESE ABOVE', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(274, 1, '______________ARE BOND TO HAVE A GENERAL IDEA OF DRUGS & PHARMACEUTICALS .', 'A', 'ADMINISTRATORS', 'HUMAN RESOURSE', 'HOUSEKEEPING STAFF', 'ALL OF THESE ABOVE', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(275, 1, 'WHAT IS THE FULLFORM OF GMP?', 'A', 'GOOD  MANUFACTURING  PRACTICE ', 'GOOD MANUFACTURING PLACE', 'DRUG MANUFACTURING  PRACTICE ', 'NONE OF THESE', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(276, 1, 'A_________IS A MANDATORY PROTOCOLE OF MANUFACTURE AND SALES OF DRUGS AND PHARMACEUTICALS IRRESPECTIVE OF ITS STATUS', 'A', 'DRUG  MANUFACTURING LICENCE', 'GOOD MANUFACTURING LICENCE', 'DRUG MANUFACTURING  LIMITED', 'DRUG MAINTAIN LIMITED', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(277, 1, 'A DRUG  MANUFACTURING LICENCE____________ OF MANUFACTURE AND SALES OF DRUGS AND PHARMACEUTICALS IRRESPECTIVE OF ITS STATUS', 'D', 'LEGAL DOCUMENT', 'HANDOVER DOCUMENT', 'LEGAL PROTOCOLE', 'MANDATORY PROTOCOLE', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(278, 1, 'A DRUG  MANUFACTURING LICENCE IS A MANDATORY PROTOCOL OF___________________OF DRUGS AND PHARMACEUTICALS IRRESPECTIVE OF ITS STATUS', 'A', 'MANUFACTURE AND SALES', 'INTERNATIONAL EXPORT', 'BOTH A&B', 'NONE OF THESE', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(279, 1, '_______________IS A SYSTEM FOR ENSURING THAT PRODUCTS ARE CONSISTENTLY PRODUCED AND CONTROLLED ACCORDING TO QUALITY STANDERDS.', 'C', 'QUALITY TEST', 'EXPAIRY DATE', 'GMP', 'NONE OF THESE', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(280, 1, 'GMP IS A SYSTEM FOR ENSURING THAT PRODUCTS ARE CONSISTENTLY PRODUCED AND CONTROLLED ACCORDING TO____________', 'B', 'QUANDITY STANDERS', 'QUALITY STANDERS', 'FSSAI', 'ALL OF THESE ABOVE', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(281, 1, '_____________IS DESIGNED TO MINIMIZE THE RISK INVOLVED IN ANY PHARMACEUTICAL PRODUCTION THAT CANNOT BE ELIMINATED  THROUGH TESTING THE FINAL PRODUCT. ', 'A', 'GMP', 'LEGAL DOCUMENT', 'LASA', 'DRUG  MANUFACTURING LICENCE', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(283, 1, '______________ARE THE TECHNICAL NAME OF THE RAW MATERIAL  OR CHEMICAL SALT  WHICH IS A COMMON NAME OF A PARTICULAR DRUG', 'A', 'GENERIC DRUGS', 'SALINE', 'SALAINE', 'PATENT DRUG', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(284, 1, 'GENERIC DRUGS  ARE THE___________ OF THE RAW MATERIAL  OR CHEMICAL SALT  WHICH IS A COMMON NAME OF A PARTICULAR DRUG', 'D', 'LEGAL NAME', 'STOCK REGISTER NAME', 'DELIVERY NAME', 'TECHNICAL NAME', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(285, 1, 'GENERIC DRUGS  ARE THE TECHNICAL NAME OF THE _____________ OR CHEMICAL SALT  WHICH IS A COMMON NAME OF A PARTICULAR DRUG', 'C', 'MEDICAL PRESCRIPTION', 'SURGICAL PRESCRIPTION', ' RAW MATERIAL ', 'ALL OF THESE ABOVE', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(287, 1, '_______IS A MEDICAL PRESCRIPTION', 'A', 'Rx', 'SCHEDULE U', 'PD.M.', 'GENERIC DRUGS', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(288, 1, 'Rx IS A __________', 'A', 'MEDICAL PRESCRIPTION', 'MANUFACTURING FOR GRUG', 'UN MEDICAL PRESCRIPTION', 'SURGICAL PRESCRIPTION', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(289, 1, 'THE SYMBOL\"Rx\" IS USUALLY SAID TO STAND FOR THE LATIN WORD \"__________\" MEANING \"TO TAKE\".', 'D', 'PRECIPE', 'PRECICE', 'RECIEPE', 'RECIPE', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(290, 1, 'THE SYMBOL\"Rx\" IS USUALLY SAID TO STAND FOR THE LATIN WORD \"RECIPE\" MEANING \"____________\"', 'A', 'TO TAKE', 'NOT TAKE', 'PRODECTION', 'DISTRIBUTION', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(291, 1, 'THE SYMBOL\"Rx\" IS USUALLY SAID TO STAND FOR THE_______________WORD \"RECIPE\"MEANING\"TO TAKE\".', 'A', 'LATIN', 'GERMAN ', 'IRISH', 'GREEK', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(293, 1, 'THE  MANUFACTURE AND SALES OF ALL DRUGS ARE COVERED UNDER THE SCHEDULED DRUGS ACT AND RULES.', 'A', 'DRUGS  AND COSMETICS ACT', 'THE NARCOTIC DRUGS AND PSYCHOTROPIC SUBSTANCES', 'PHARMACY ACT', 'INDIAN MEDICAL COUNCILACT', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(294, 1, 'SCHEDULE Y CONTAINS REQUIREMENT AND GUIDELINES FOR ____________', 'A', 'CLINICAL TRIALS', 'MANUFACTURING FOR GRUG', 'SALES OF DRUG', 'NONE OF THESE', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(295, 1, '______________CONTAINS REQUIREMENT AND GUIDELINES FOR  CLINICAL TRIALS', 'D', 'SCHEDULE U', 'SCHEDULE T', 'SCHEDULE W ', 'SCHEDULE Y', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(296, 1, '___________ CONTAINS GENERIC  DRUGS LIST ', 'C', 'SCHEDULE Q', 'SCHEDULE U', 'SCHEDULE W ', 'SCHEDULE T', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(297, 1, 'SCHEDULE W CONTAINS______________', 'A', 'GENERIC  DRUGS LIST', 'DRUG PATENTS', 'SURGICAL DRESSING', ' UMBILICAL TAPES', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(298, 1, 'SCHEDULE V CONTAINS STANDERDS FOR _______________', 'A', 'DRUG PATENTS', 'GENERIC  DRUGS LIST', ' UMBILICAL TAPES', 'SURGICAL DRESSING', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(299, 1, '______________CONTAINS STANDERDS FOR DRUG PATENTS', 'A', 'SCHEDULE V', 'SCHEDULE U', 'SCHEDULE T', 'SCHEDULE R', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(300, 1, '_____________CONTAINS VARIOUS REGULATIONS AND REQUIREMENTS FOR RECORD KEEPING .', 'B', 'SCHEDULE W', 'SCHEDULE U', 'SCHEDULE R', 'SCHEDULE Q', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(301, 1, '_______________CONTAINS VARIOUS REGULATIONS AND REQUIREMENTS FOR MANUFACTURE OF AYURVEDIC,SIDDHA AND UNANI PRODUCTS', 'D', 'SCHEDULE Q', 'SCHEDULE U', 'SCHEDULE W ', 'SCHEDULE T', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(302, 1, '___________CONTAINS VARIOUS REGULATIONS AND REQUIREMENTS FOR CONDOMS AND OTHER MECHANICAL CONTRACEPTIVES.', 'A', 'SCHEDULE R', 'SCHEDULE T', 'SCHEDULE W ', 'SCHEDULE U', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(303, 1, '___________CONTAINS A LIST OF PERMITTED DYES AND PIGMENTS IN SOAP AND COSMETICS.', 'A', 'SCHEDULE Q', 'SCHEDULE R', 'SCHEDULE T', 'SCHEDULE W ', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(304, 1, '____________CONTAINS REGULATIONS REGARDING RETAIL PACKAGE SIZE OF VARIOUS DRUGS.', 'A', 'SCHEDULE P-l', 'SCHEDULE R', 'SCHEDULE T', 'SCHEDULE W ', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(305, 1, 'SCHEDULE O CONTAINS VARIOUS REGULATIONS AND REQUIREMENTS FOR ___________', 'B', ' SURGICAL DRESSING', 'DISINFECTANT FLUIDS', 'VACCINES', 'NONE OF THESE', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(306, 1, '_____________CONTAINS VARIOUS REGULATIONS AND REQUIREMENTS FOR A PHARMACY.', 'A', 'SCHEDULE N', 'SCHEDULE X', 'SCHEDULE A', 'SCHEDULE B', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(307, 1, '_____________CONTAINS VARIOUS REGULATIONS  FOR MANUFACTURING,PREMISES,WASTE DISPOSAL AND EQUIPMENT.', 'C', 'SCHEDULE A', 'SCHEDULE X', 'SCHEDULE M', 'SCHEDULE B', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(308, 1, '___________CONTAINS VARIOUS SUBSTANCES AND DRUGS AND THEIR CORRESPONDING REGULATIONS.', 'D', 'SCHEDULE B', 'SCHEDULE X', 'SCHEDULE A', 'SCHEDULE K', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(310, 1, '_______________ THIS CONTAINS REGULATIONS AND STANDARDSFOR OPHTHALMIC OINTMENTS  AND SOLUTIONS.', 'A', 'SCHEDULE  F-F', 'SCHEDULE  F', 'SCHEDULE X', 'SCHEDULE  V', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(311, 1, '___________LIST OF DRUGS EXEMPTED FROM THE PROVISION OF IMPORT OF DRUGS', 'D', 'SCHEDULE  B ', 'SCHEDULE X', 'SCHEDULE A', 'SCHEDULE D', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(312, 1, '____________CONTAINS VARIOUS  POISONS AND THEIR REGULATIONS.', 'A', 'SCHEDULE  E', 'SCHEDULE A', 'SCHEDULE X', 'SCHEDULE B', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(313, 1, 'SCHEDULE  E CONTAINS VARIOUS___________AND THEIR REGULATIONS.', 'D', 'VACCINES.', 'SURGICAL DRESSING', 'BLOOD BANK', 'POISIONS ', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(314, 1, 'SARPA VISHA IS A EXAMPLE OF _____________SCHEDULE', 'D', 'SCHEDULE  V', 'SCHEDULE X', 'SCHEDULE R', 'SCHEDULE E', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(315, 1, '____________CONTAINS REGULATIONS AND STANDARDS FOR RUNNING A BLOOD BANK', 'A', 'SCHEDULE  F', 'SCHEDULE  F-F', 'SCHEDULE  E', 'SCHEDULE  F-l', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(316, 1, 'SCHEDULE  F CONTAINS REGULATIONS AND STANDARDS FOR RUNNING A_________', 'A', 'BLOOD BANK', 'VACCINES.', 'SURGICAL DRESSING', ' UMBILICAL TAPES', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(317, 1, '___________CONTAINS REGULATIONS AND STANDARDS FOR VACCINES.', 'C', 'SCHEDULE  F-F', 'SCHEDULE  F', 'SCHEDULE  F-l', 'SURGICAL DRESSING', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(319, 1, '___________CONTAINS REGULATIONS AND STANDARDS FOR  SURGICAL DRESSING.', 'B', 'SCHEDULE  F-l', 'SCHEDULE  F-ll', 'SCHEDULE  F', 'SCHEDULE  F-F', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(321, 1, '____________CONTAINS REGULATIONS AND STANDARDS FOR  UMBILICAL TAPES', 'A', 'SCHEDULE  F-lll', 'SCHEDULE A', 'SCHEDULE X', 'SCHEDULE C', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(322, 1, '_____________CONTAINS VARIOUS FORMS AND FORMATS OF LETTERS FOR APPLICATIONS OF LICENSING ETC.', 'A', 'SCHEDULE A', 'SCHEDULE B', 'SCHEDULE C', 'SCHEDULE X', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(323, 1, '_____________CONTAINS FEES STRUCTURE FOR GOVERNMENT-RUN LABS.', 'C', 'SCHEDULE C', 'SCHEDULE A', 'SCHEDULE B', 'SCHEDULE X', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(324, 1, '___________CONTAINS VARIOUS BIOLOGICAL PRODUCTS AND THEIR REGULATION', 'A', 'SCHEDULE C', 'SCHEDULE A', 'SCHEDULE B', 'SCHEDULE X', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(325, 1, 'SCHEDULE_____ MOST OF THESE DRUGS ARE HORMONAL PREPARATIONS.', 'C', 'B', 'A', 'G', 'C', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(327, 1, '__________ALL THE REGULATIONS  OF SCHEDULE  H APPLY.', 'D', 'SCHEDULE J', 'SCHEDULE G', 'SCHEDULE H', 'SCHEDULE X', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1);
INSERT INTO `quizzes` (`id`, `course_id`, `question`, `answer`, `option_a`, `option_b`, `option_c`, `option_d`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`, `module_id`, `batch_id`, `exam_id`) VALUES
(328, 1, '_____________CONTAINS  A LIST OF VARIOUS DISEASES AND CONDITIONS THAT CANNOT BE TREATED UNDER ANY DRUG CURRENTLY IN MARKET.', 'B', 'SCHEDULE X', 'SCHEDULE J', 'SCHEDULE JI', 'SCHEDULE H', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(329, 1, 'THE RULE __________DETAILS THE CONDITIONS OF LICENSES.', 'C', '97', '45', '65', '54', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(330, 1, 'THE RULE 97 CONTAINS THE __________________', 'A', 'LABELLING  REGULATIONS.', 'BATCH NUMBER', 'CONDITIONS OF LICENSES.', 'DRUG MANUFACTURED', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(331, 1, 'THE DRUGS AND COSMETICS RULE IN___________ HAS PROVISION FOR CLASSIFICATION OF DRUGS UNDER GIVEN SCHEDULES AND THERE ARE GUIDELINES FOR THE STORAGE,SALE,DISPLAY AND PRESCRIPTION OF EACH SCHEDULE.', 'C', '1965', '1967', '1945', '1955', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(334, 1, '___________IS A MANDATORY PROTOCOL TO BE ISSUED FOR EACH AND EVERY LOT OF DRUG MANUFACTURED', 'C', 'DELIVERY NOTE', 'PACKING NUMBER', 'BATCH NUMBER', 'ALL OF THESE ABOVE', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(335, 1, 'BATCH NUMBER _IS A MANDTORY____________ TO BE ISSUED FOR EACH AND EVERY LOT OF DRUG MANUFACTURED', 'A', 'PROTOCOL', 'DOCUMENT', 'LEGAL BOND', 'NONE OF THESE', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(336, 1, 'TABLETS ARE NORMALLY PACKED IN STRIP AND_____________________', 'D', 'BLISTER PACKING', 'BOTTLE PACK', 'ALUMINIUM STRIP', 'ALL OF THESE ABOVE', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(337, 1, 'THE RULE 65 CONTAIN_______________', 'B', 'LABELLING  REGULATIONS.', 'CONDITIONS OF LICENSES.', 'BATCH NUMBER', 'NONE OF THESE', NULL, 1, '2024-11-12 00:43:38', '2024-11-12 00:43:38', NULL, 3, 1, 1),
(404, 1, '_____________IS A VITAL PART OF ANY ORGANIZATION .', 'A', 'MATERIAL MANAGEMENT', 'HOUSE KEEPING ', 'HUMAN RESOURSE', 'NONE OF THESE', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(405, 1, '_____________IS INDIRECT CONTACT WITH THE OPERATOR DEPARTMENT IN ITS DAILY ACTIVITIES', 'C', 'HOUSE KEEPING ', 'HUMAN RESOURSE', 'MATERIAL MANAGEMENT', 'NONE OF THESE', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(406, 1, 'AS PART OF A SUCCESSFUL SUPPLY CHAIN STRATEGY,SKILLFUL MATERIAL MANAGEMENT PLAYS A KEY ROLE IN THE SUCCESS OF ANY PROJECT WHERE ________________ARE REQUIRED.', 'B', 'INTANGABLE COMPONEATS', 'TANGIBLE COMPONEATS', 'BOTH A&B', 'ONLY A', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(407, 1, 'AS PART OF A SUCCESSFUL________________ STRATEGY,SKILLFUL MATERIAL MANAGEMENT PLAYS A KEY ROLE IN THE SUCCESS OF ANY PROJECT WHERE TANGIBLE COMPONENTS ARE REQUIRED.', 'A', 'SUPPLY CHAIN', 'MARKETTING MIX', 'VENDOR SELECTION', 'NONE OF THESE', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(408, 1, 'AS PART OF A SUCCESSFUL SUPPLY CHAIN STRATEGY,SKILLFUL_______________ PLAYS A KEY ROLE IN THE SUCCESS OF ANY PROJECT WHERE TANGIBLE COMPONENTS ARE REQUIRED.', 'A', 'MATERIAL MANAGEMENT', 'VENDOR SELECTION', 'MARKETTING ', 'NONE OF THESE', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(409, 1, 'MAINTAINING AN IDEAL INVENTORY IS KEY TO AN EFFECTIVE ______________PLAN.', 'A', 'MATERIAL MANAGEMENT', 'SALES', 'VENDOR SELECTION', 'SUPPLY CHAIN', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(410, 1, '____________MEANS TO BUY DIFFERENT MATERIALS BY PAYING MONEY OR ITS EQUAL  FROM SUPPLIERS/SALES PERSONS.', 'C', 'VENDORS', 'SALES', 'PURCHASING', 'BOTH B&C', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(411, 1, '___________IS EMPLOYED IN CURTAILING THE TOTAL COST OF INVENTORY.', 'D', 'MARKETTING CONTROL', 'MATERIAL CONTROL', 'ONLY A', 'INVENTORY CONTROL', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(412, 1, '__________IS A PROSPECTIVE FACTOR OF PRODUCING BECAUSE IT NEED TO OCCUPY CERTAIN CAPITAL', 'A', 'INVENTORY', 'VENDORS', 'BOTH A&B', 'ONLY B', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(413, 1, 'INVENTORY IS A PROSPECTIVE FACTOR OF PRODUCING BECAUSE IT NEED TO OCCUPY CERTAIN _________', 'D', 'SALES', 'PURCHASE', 'INVOICE', ' CAPITAL', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(414, 1, '__________IS ALSO A KIND OF ESSENTIAL  GOODS RESERVATION FOR NORMAL MANUFACTURING ', 'B', 'INVOICE', 'INVENTORY', 'PRODECTION', 'DISTRIBUTION', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(415, 1, 'THE INTER -RELATED TASK\'S OF THE ________________ARE USUALLY LOOKED AFTER BY INDIVIDUALS.', 'A', 'MATERIAL MANAGEMENT', 'HUMAN RESOURSE', 'FACILITY MANAGEMENT', 'ALL OF THESE ABOVE', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(416, 1, 'WITH THE HELP OF ______________ A LOT OF ACTIVITIES RELATING TO PURCHASE INDENT CAN BE AUTOMATED', 'A', 'ERP', 'SAP', 'SOCIAL MEDIA', 'TALLY PRIME', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(417, 1, '_______ MAKES IT EASIER TO EDIT /MODIFY/RESUBMIT THE INDENT.', 'C', 'SAP', 'TALLY PRIME', 'ERP', 'SOCIAL MEDIA', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(418, 1, 'THE PURCHASING DEPARTMENT TAKES RESPONSIBILITY FOR THE VENDOR SELECTION WHICH IS AN INTEGRAL PART OF THE _____________PROCESS ', 'A', 'PROCUREMENT', 'MATERIAL CONTROL', 'MATERIAL MANAGEMENT', 'STOCK REGISTER', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(419, 1, 'THE___________ IS A SUBSIDIARY PROCESS THAT ALLOWS CLEARLY STATING , DEFINING AND APPROVING THOSE VENDORS WHICH MEET REQUIREMENTS OF THE PROCUREMENT PROCESS.', 'A', 'VENDOR SELECTION', 'PRO', 'PROCUREMENT', 'STOCK REGISTER', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(420, 1, 'WHAT IS THE FULL FORM OF RFI?', 'D', 'REQUIREMENT OF INVOICE', 'REVIEW OF INFORMATION', 'RESTRICTION OF INVOICE', 'REQUEST FOR INFORMATON', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(421, 1, 'ACCORDING TO _____________THE VENDOR SURVEYS AND CAPABILITY DETERMINATION IS AN IMPORTANT TASK TO THE PURCHASER’S ORGANIZATION TO DETERMINE , IN ADVANCE , THE CAPABILITY OF THE VENDOR TO PRODUCE QUALITY PRODUCTS ON SCHEDULE', 'A', 'FRANK CAPLAN', 'KOONTZ O’DONNELL', 'J D MOONEY', 'NONE OF THESE', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(422, 1, 'A___________ IS A DOCUMENT A BUYER SENDS TO A SELLER REQUESTING PARTICULAR PRODUCTS OR SERVICES.', 'A', 'PURCHASE ORDER', 'STOCK REGISTER', 'INVOICE', 'SALES ORDER', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(424, 1, 'THE _________IS A DOCUMENT INCLUDE WITH DELIVERY OF THE ORDER ', 'C', 'INVOICE', 'STOCK REGISTER', 'PACKING SLIP', 'SALES ORDER', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(425, 1, ' AN ____________INCLUDES MUCH OF THE SAME INFORMATION AS THE PURCHASE ORDER', 'A', 'INVOICE', 'PURCHASE ORDER', 'SALES ORDER', 'STOCK REGISTER', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(426, 1, 'YOUR ELECTRICITY,GAS, WATER OR RENT CANNOT BE DETAILED ON A _________________', 'C', 'PURCHASE AGENT', 'STOCK REGISTER', 'PURCHASE ORDER', 'INVOICE', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(427, 1, 'TODAY’S TECHNOLOGY ALLOWS FOR ____________TO BE SENT VIA THE POSTAL, SERVICE,EMAIL,FAX AND TELEPHONE.', 'A', 'PURCHASE ORDER', 'STOCK REGISTER', 'SALES ORDER', 'INVOICE', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(428, 1, 'DEPENDING ON THE SIZE OF THE COMPANY, ONE PERSON MAY BE RESPONSIBLE FOR INITIATING PURCHASE ORDER SUCH AS A ___________', 'D', 'SALES AGENT', 'PURCHASE ORDER', 'STOCK REGISTER', 'PURCHASE AGENT', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(429, 1, 'A _________ IS A DETAILED RECORD KEPT OF THE SHARES ISSUED BY A CORPORATION, AS WELL AS ANY REPURCHASES AND TRANSFERS BETWEEN SHARE HOLDERS', 'B', 'PURCHASE REGISTER', 'STOCK REGISTER', 'CATEGORY RECORDS', 'SALES REGISTER', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(430, 1, '____________ KEEP INFORMATION ABOUT GROUPS OF PRODUCTS.', 'A', 'CATEGORY RECORDS', 'INVOICE RECORD', 'PURCHASE AGENT', 'SALES RECORD', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(431, 1, '.________ KEEP INFORMATION ABOUT THE COMPANIES AND PEOPLE YOU BUY PRODUCTS AND SERVICE FROM.', 'C', 'INVOICE', 'PROCUREMENT', 'VENDOR RECORDS', 'STOCK REGISTER', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(432, 1, 'USING A CENTRAL PURCHASING DEPARTMENT IS PART OF AN ORGANAISATION STRATEGY AIMED AT_______________', 'A', 'EFFICIENCY', 'INVOICE MANAGEMENT', 'MATERIAL MANAGEMENT', 'NONE OF THESE', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(433, 1, 'USING A ______________DEPARTMENT IS PART OF AN ORGANAISATION STRATEGY AIMED AT EFFICIENCY.', 'C', 'PURCHASING', 'SALES ', 'CENTREL PURCHASING', 'VENDOR SELECTION', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(434, 1, '____________OR PROCUREMENT IS A SYSTEM IN WHICH ONE  DEPARTMENT MANAGES THE PURCHASING OF GOOD AND SERVICES FOR THE ENTIRE ORGANIZATION', 'A', 'CENTREL PURCHASING', 'HOSPITAL ADMINISTRATION', 'MATERIAL MANAGEMENT', 'MARKETTING MANAGEMENT', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(436, 1, 'CENTRAL PURCHASING OR PROCUREMENT  IS A SYSTEM IN WHICH ONE  DEPARTMENT MANAGES THE_____________OF GOOD AND SERVICES FOR THE ENTIRE ORGANIZATION.', 'A', 'PURCHASING', 'VENDOR SELECTION', 'MAINTAIN OF INVENTORY', 'CREDIT PURCHASING', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(438, 1, 'CENTRAL PURCHASING DEPARTMENT IS HEADED BY A___________WHO MANAGES AND TRACKS THE MATERIALS THAT NEED BE PROCURED AND THEIR  QUANTITIES.', 'B', 'MATERIAL MANAGER', 'PURCHASING MANAGER', 'INVENTORY MANAGER', 'PRODECTION DEPARTMENT', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(439, 1, 'THE PURCHASING PROCESS IS A SUB-PROCESS OF PROCUREMENT AND FOCUSES ON THE TRANSACTIONAL PHASE ASSOCIATED WITH BUYING_______________', 'A', 'PRODUCTS AND SERVICES', 'MANUFACTURING AND DISTRIBUTION', 'BOTH A&B', 'NONE OF THESE', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(440, 1, 'THE PURCHASING PROCESS IS A SUB-PROCESS OF ______________AND FOCUSES ON THE TRANSACTIONAL PHASE ASSOCIATED WITH BUYING PRODUCTS AND SERVICES', 'A', 'PROCUREMENT', 'INVENTORY PROCESS', 'PRODECTION', 'NONE OF THESE', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(441, 1, 'A______________IS THE SIMPLEST TYPE OF BUYING CHANNEL THAT EXIST AND IT IS PRETTY STRAIGHT FORWARD.', 'C', 'SALES ORDER', 'INVENTORY', 'PURCHASE ORDER', 'INVOICE', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(444, 1, 'GOOD STOCK MANAGEMENT WILL HELP YOU MAINTAIN THE RIGHT LEVEL OF STOCK TO MEET ________________.', 'A', 'CUSTOMER DEMANDS', 'PRODECT DEMAND', 'PRODECTION DEMAND', 'MARKETTING DEMAND', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(445, 1, 'THE OBJECTIVES OF AN EFFECTIVE ______________IS LOWER OPERATING COSTS?', 'A', 'MATERIAL MANAGEMENT', 'HUMAN RESOURSE', 'PURCHASING DEPARTMENT', 'NONE OF THESE', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(448, 1, 'THE___________DEPARTMENT IS USUALLY LOCATED IN THE ORGANIZATIONS HEADQURTERS WHERE IT HANDLES THE PURCHASING FOR ALL THE BRANCHES OF THE FIRM ', 'C', 'INVENTORY DEPARTMENT', 'MATERIAL MANAGEMENT', 'PURCHASING ', 'PRODECTION DEPARTMENT', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(449, 1, 'WITH______________,ORGANIZATIONS CAN SAVE MONEY,OPERATE MORE EFFICIENTLY ACROSS THE FIRM,AND IMPROVE COLLABORATION BETWEEN EMPLOYEES  .                                                                                                                                                                                                                               ', 'A', 'CENTRALIZED PURCHASE', 'MATERIAL MANAGEMENT', 'HUMAN RESOURSE', 'ADMINISTRATIVE', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(451, 1, 'ANALYSE RESULTS,KPIs AND MARGINS IS THE PROCESS OF_______________', 'A', 'PROCUREMENT', 'PURCHASING', 'PLANNING', 'NONE OF THESE', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(452, 1, 'BUYING CHANNELS PROCUREMENT IS AN INTEGRAL PART OF THE ______________ PROCESS', 'A', 'P2P', 'B2B', 'P2C', 'B2C', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(453, 1, 'WHAT IS THE FULL FORM OF MRP?', 'C', 'MATERIAL REQUIREMENTS PRODECTION', 'MATERIAL REQUIREMENTS PLANNING', 'MANAGEMENT REQUIREMENTS PLANNING', 'MATERIAL REQUASITION PLANNING', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(454, 1, 'WHAT IS THE FULL FORM OF CIPS?', 'A', 'CHARTERED INSTITUTE OF PROCUREMENT AND SUPPLY', 'CHARTERED INSTITUTE OF PRODECTION  AND SUPPLY', 'CHARTERED INSTITUTE OF PLANNING AND SUPPLY', 'CHARTERED INSTITUTE OF PURCHASE AND SUPPLY', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(455, 1, 'PURCHASE INDENT PRESENT A ______________FOR THE PURCHASE OF ITEMS/MATERIALS NEEDED BY AN ORGANIZATION.', 'D', 'INFORMAL REQUISITION', 'PURCHASE REQUISITION', 'INVENTORY REQUISITION', 'FORMAL REQUISITION', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(456, 1, '________________PRESENT A FORMAL REQUISITION FOR THE PURCHASE OF ITEMS/MATERIALS NEEDED BY AN ORGANIZATION.', 'A', 'PURCHASE INDENT', 'SALES ORDER', 'MATERIAL MANAGEMENT', 'INVENTORY CONTROL', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(457, 1, 'PURCHASE INDENT PRESENT A  FORMAL REQUISITION FOR THE ______________OF ITEMS/MATERIALS NEEDED BY AN ORGANIZATION.', 'A', ' PURCHASE ', 'SALES', 'PURCHASE ORDER', 'SALES ORDER', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(458, 1, '_____________PROVIDES ALL DETAILS ABOUT THE ITEMS REQUIRED,MAKES SPECIFICATIONS,UNITS.', 'B', 'SALES ORDER', 'PURCHASE INDENT', 'INVOICE', 'INVENTORY', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(459, 1, 'PURCHASE INDENT CAN BE PREPARED IN HARD COPY IN_________OR PREPARED AS ONLINE FORMS VIA ERP AND A SOFT COPY CAN BE SENT TO VARIOUS APPROVERS ONLINE VIA E-MAILS/SMS.', 'C', 'POWER POINT', 'SAP', 'WORD EXCEL', 'ALL OF THESE ABOVE', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(460, 1, '_______________CAN BE PREPARED IN HARD COPY IN WORD EXCEL OR PREPARED AS ONLINE FORMS VIA ERP AND A SOFT COPY CAN BE SENT TO VARIOUS APPROVERS ONLINE VIA E-MAILS/SMS.', 'A', 'PURCHASE INDENT', 'STOCK REGISTER', 'DELIVERY NOTE', 'NONE OF THESE', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(461, 1, 'PURCHASE INDENT CAN BE PREPARED IN______________ IN WORD EXCEL OR PREPARED AS ONLINE FORMS VIA ERP AND A SOFT COPY CAN BE SENT TO VARIOUS APPROVERS ONLINE VIA E-MAILS/SMS.', 'A', 'HARD COPY', 'DOCCUMENT', 'BACK UP', 'NONE OF THESE', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(462, 1, 'PURCHASE INDENT CAN BE PREPARED IN HARD COPY IN WORD EXCEL OR PREPARED AS ONLINE FORMS VIA___________AND A SOFT COPY CAN BE SENT TO VARIOUS APPROVERS ONLINE VIA E-MAILS/SMS.', 'C', 'SAP', 'PRIME', ' ERP', 'SOCIAL MEDIA', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(463, 1, 'PURCHASE INDENT CAN BE PREPARED IN HARD COPY IN WORD EXCEL OR PREPARED AS ONLINE FORMS VIA ERP AND A SOFT COPY CAN BE SENT TO VARIOUS APPROVERS _____________', 'D', 'EMAILS/SMS', 'CLOUD', 'ONE DRIVE', 'ALL OF THESE ABOVE', NULL, 1, '2024-11-12 00:50:28', '2024-11-12 00:50:28', NULL, 4, 1, 1),
(537, 1, '______________IS THE MANAGEMENT OF THE HOSPITAL AS A BUSINESS.', 'A', 'HOSPITAL ADMINISTRATION', 'MARKETTING DEPARTMENT', 'HUMAN RESOURCE MANAGEMENT', 'MATERIAL MANAGEMENT', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(538, 1, 'ADMINISTRATION  INCLUDES THE FOLOWING ACTIVITES TERMED AS_______________', 'C', 'PEST CORD', 'PESD CORD', 'POSD CORB', 'POSD CARD', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(539, 1, 'THE TERM _______________COVERS A LARGE NUMBER OF ACTIVITES WHICH MAY ROUGHLY BE CLASSIFIED INTO 3 CATEGORIES', 'A', 'HOSPITAL ADMINISTRATION', 'HR', 'PR', 'FRONT OFFICE', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(540, 1, 'THE TERM HOSPITAL ADMINISTRATION COVERS A LARGE NUMBER OF ACTIVITES WHICH MAY ROUGHLY BE CLASSIFIED INTO_____________CATEGORIES', 'D', '5', '4', '2', '3', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(541, 1, '\"MANAGEMENT\" IS TO FORECAST,TO PLAN,TO ORGANIZE, TO COMMAND, TO COORDINATE AND CONTROL ACTIVITIES OF OTHERS\"______________', 'C', 'KOONTZ O’DONNELL', 'J D MOONEY', 'HENRY FAYOL', 'MILLET', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(542, 1, 'MANAGEMENT IS SOMETIMES THOUGHT TO BE A PROCESS OF_____________ CENTURY BUT THIS IS NOT SO.', 'A', '20', '18', '19', '21', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(543, 1, 'STRATEGIC PLAN IS DEVELOPED BY___________ MANAGEMENT .', 'C', 'LOVER LEVEL', 'MIDDLE LEVEL', 'TOP LEVEL', 'BOTH A&B', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(544, 1, ' ORGANIZATION IS THE FORM OF EVERY HUMAN ASSOCIATION FOR THE ATTAINMENT OF COMMON PURPOSE AND THE PROCESS OF RELATING SPECIFIC DUTIES OR FUNCTION IN A WHOLE__________', 'A', 'J D MOONEY', 'KOONTZ O’DONNELL', 'HENRY FAYOL', 'MILLET', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(545, 1, '_____________IS A SYSTEM OF ORGANIZING PEOPLE INTO DIFFERENT RANKS OR LEVEL OF IMPORTANCE', 'D', 'SPAN OF CONTROL', 'UNITY OF COMMAND', 'SUB-ORDINATES', 'HIERARCHY', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(546, 1, '_____________IS THE NUMBER OF SUB-ORDINATES WHO REPORTS DIRECTLY TO A MANAGER OR LEADER ', 'A', 'SPAN OF CONTROL', ' SUPERVISOR', 'HIERARCHY', 'UNITY OF COMMAND', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(547, 1, 'SPAN OF CONTROL IS THE NUMBER OF ________________WHO REPORTS DIRECTLY TO A MANAGER OR LEADER ', 'C', 'UNITY OF COMMAND', 'HIERARCHY', 'SUB-ORDINATES', ' SUPERVISOR', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(548, 1, '_____________IS A CLASSICAL PRINCIPLE OF MANAGEMENT THEORY IN WHICH EACH EMPLOYEE ONLY RESPONDS TO ONE SUPERVISOR.', 'D', 'SPAN OF CONTROL', 'HIERARCHY', 'DELEGATION', 'UNITY OF COMMAND', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(549, 1, 'UNITY OF COMMAND IS A CLASSICAL PRINCIPLE OF MANAGEMENT THEORY IN WHICH EACH EMPLOYEE ONLY RESPONDS TO ONE_____________', 'A', ' SUPERVISOR', 'DELEGATION', 'SPAN OF CONTROL', 'HIERARCHY', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(550, 1, '_____________IS THE ASSIGNMENT OF AUTHORITY TO ANOTHER PERSON TO CARRY OUT SPECIFIC ACTIVITIES .', 'A', 'DELEGATION', 'SPAN OF CONTROL', 'UNITY OF COMMAND', 'HIERARCHY', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(551, 1, ' ACCOUNTING TO ______________ ,”MANAGERIAL FUNCTION OF STAFFING INVOLVES MANAGING THE ORGANIZATION STRUCTURE THROUGH PROPER AND EFFECTIVE SELECTION ,APPRAISAL DEVELOPMENT OF PERSONNEL TO FILL THE ROLES DESIGNED AND THE STRUCTURE”.', 'A', 'KOONTZ O’DONNELL', 'J D MOONEY', 'HENRY FAYOL', 'MILLET', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(552, 1, '______________IS THE PROCESS OF ACTIVELY SEEKLY ACT , FINDING AND HIRING CANDIDATES FOR SPECIFIC POSITION OR JOB ', 'A', 'RECRUITMENT', 'RECUIREMENT', 'PLACEMENT', 'NONE OF THESE', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(553, 1, '___________ IS THE PROCESS OF ASSIGNING A SPECIFIC JOB TO EACH ONE OF THE SELECTED CANDIDATES ', 'B', 'RECRUITMENT', 'PLACEMENT', 'DIRECTING', 'NONE OF THESE', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(554, 1, '____________ IS A SHORT-TERM REACTIVE PROCESS MEANT FOR OPERATIVES AND PROCESS WHILE DEVELOPMENT IS DESIGNED CONTINUOUS PRO-ACTIVE PROCESS MEANT FOR EXECUTIVES.', 'C', 'PLACEMENT', 'DIRECTING', 'TRAINING', 'NONE OF THESE', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(555, 1, '____________IS DEFINED IS THE MOVEMENT OF A COMPANY FROM ONE POSITION TO ANOTHER POSITION AT THE SAME PAY GRADE LEVEL OR SIMILAR SALARY.', 'A', ' TRANSFER', 'PROMOTION', 'PLACEMENT', 'RECRUITMENT', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(556, 1, '______________ IS INFLUENCING PEOPLE’S BEHAVIOR THROUGH MOTIVATION, COMMUNICATION, GROUP DYNAMICS ,LEADERSHIP AND DISCIPLINE .', 'A', 'DIRECTING', 'PLACEMENT', 'RECRUITMENT', 'PLANNING', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(557, 1, '______________ MEASURING AND CORRECTING THE ACTIVITIES OF THE SUB-ORDINATES IN ORDER TO ENSURE THAT THE EVENTS CONFORM TO THE PLANS.', 'D', 'SPAN OF CONTROL', 'DIRECTING', 'UNITY OF COMMAND', 'CONTROLLING', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(558, 1, 'CONTROLLING MEASURING AND CORRECTING THE ACTIVITIES OF THE________________ IN ORDER TO ENSURE THAT THE EVENTS CONFORM TO THE PLANS.', 'D', 'SPAN OF CONTROL', 'CONTROLLING', 'DIRECTING', 'SUB-ORDINATES', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(559, 1, 'CONTROLLING IS THE PROCESS OF CHECKING WHETHER OR NOT PROPER PROGRESS IS BEING MADE TOWARDS THE OBJECTIVES AND GOALS AND ACTING IF NECESSARY ,TO CORRECT ANY DEVIATION _________ ', 'A', 'THE HAYMAN', 'J D MOONEY', 'MILLET', 'KOONTZ O’DONNELL', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(560, 1, 'THE FUNCTION OF CARING FOR STAFF IN THE ORGANIZATION IS KNOWN AS THE ______________', 'A', 'PERSONAL MANAGEMENT', 'TOP LEVEL MANAGEMENT', 'MIDDLE LEVEL MANAGEMENT', 'NONE OF THESE', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(561, 1, '______________IS THE PROCESS OF CHECKING WHETHER OR NOT PROPER PROGRESS IS BEING MADE TOWARDS THE OBJECTIVES AND GOALS AND ACTING IF NECESSARY ,TO CORRECT ANY DEVIATION THE HAYMAN', 'C', 'PLANING', 'SPAN OF CONTROL', 'CONTROLLING', 'DIRECTING', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(562, 1, 'THE DESCRIPTION REFERS TO A WRITTEN __________ THAT STATE THE DUTIES , TASKS, RESPONSIBILITIES AND QUALIFICATION OF A JOB BASED ON THE FINDINGS OF A JOB ANALYSIS ', 'A', 'INFORMATIVE DOCUMENTATION ', 'LEGAL DOCUMENT', 'BASIC DOCUMENT', 'FORMAL DOCUMENT', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(563, 1, 'A MONTHLY STATEMENT IS A WRITTEN RECORD PREPARED BY A _____________ USUALLY ONCE A MONTH, LISTING ALL CREDIT CARDS TRANSACTION FOR AN ACCOUNT INCLUDING PURCHASE PAYMENT, FEES, AND FINANCE CHARGE.', 'C', 'PURCHASING INSTITUTION', 'ADMINISTRATIVE DEPARTMENT', 'FINANCE INSTITUTION', 'INVENTORY INSTITUTION', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(564, 1, ' A MONTHLY STATEMENT IS A WRITTEN ____________BY A FINANCE INSTITUTION USUALLY ONCE A MONTH, LISTING ALL CREDIT CARDS TRANSACTION FOR AN ACCOUNT INCLUDING PURCHASE PAYMENT, FEES, AND FINANCE CHARGE.', 'A', 'WRITTEN RECORD', 'UNWRITTEN RECORD', 'LEGAL RECORD', 'BASIC RECORD', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(565, 1, 'A______________ IS A WRITTEN RECORD PREPARED BY A FINANCE INSTITUTION USUALLY ONCE A MONTH, LISTING ALL CREDIT CARDS TRANSACTION FOR AN ACCOUNT INCLUDING PURCHASE PAYMENT, FEES, AND FINANCE CHARGE.', 'C', 'ANNUAL STATEMENT', 'QURTARLY STATEMENT', 'MONTHLY STATEMENT', 'NONE OF THESE', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(566, 1, 'ACCOUNTING IS THE ____________ OF FINANCE', 'A', 'LANGUAGE', 'BIBLE', 'FOUNDATION', 'DOCUMENT', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(567, 1, 'ACCOUNTING IS THE LANGUAGE_____________', 'A', 'FINANCE', 'MATERIAL MANAGEMENT', 'INVENTORY', 'HIS', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(568, 1, '_____________ HELPS TO TRANSLATE THE WORKING OF A FIRM INTO TANGIBLE REPORTS THAT CAN BE COMPARED ', 'A', 'ACCOUNTING ', 'ERP', 'SAP', 'ALL OF THESE ABOVE', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(569, 1, 'ACCOUNTING HELPS TO TRANSLATE THE WORKING OF A FIRM INTO______________THAT CAN BE COMPARED ', 'A', 'TANGIBLE REPORTS ', 'INTANGABE REPORT', 'BOTH A&B', 'NONE OF THESE', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(571, 1, 'AUDITING  IS THE EXAMINATION OF OR INSPECTION OF VARIOUS _____________', 'D', 'PROFIT AND LOSS', 'TRADING ACCOUNT', 'BALANCE SHEET', 'ALL OF THESE ABOVE', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(572, 1, 'AUDITOR FOLLOWED BY PHYSICAL CHECKING OF ______________ TO MAKE SURE THAT ALL THE DEPARTMENTS ARE FOLLOWING DOCUMENTED SYSTEM OR RECORDING TRANSACTIONS.', 'B', 'INVOICE', 'INVENTORY', 'STOCK REJISTER', 'PURCHASE ORDER', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(573, 1, '____________FOLLOWED BY PHYSICAL CHECKING OF INVENTORY TO MAKE SURE THAT ALL THE DEPARTMENTS ARE FOLLOWING DOCUMENTED SYSTEM OR RECORDING TRANSACTIONS. ', 'A', 'AUDITOR', 'FINANCIAL MANAGER', 'ADMINISTRATOR', 'PRO', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(574, 1, '____________ IS DONE TO AS CERTAIN THE ACCURACY OF FINANCIAL STATEMENT PROVIDED BY THE ORGANIZATION', 'B', 'ACCOUNTING ', 'AUDITING', 'BUDJECT', 'NONE OF THESE', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(575, 1, ' AUDITING  IS DONE TO AS CERTAIN THE ACCURACY OF ______________PROVIDED BY THE ORGANIZATION ', 'A', 'FINANCIAL STATEMENT ', 'PURCHASE STATEMENT', 'SALES STATEMENT', 'INVENTORY STATEMENT', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(576, 1, '___________ IS A PROCESS OF IDENTIFYING AND HIRING THE APPLICANTS FOR THE FILLING THE VACANCIES IN AN ORGANIZATION ', 'D', 'STAFFING', 'TRANSFER ', 'TRAINING', 'SELECTION', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(577, 1, 'HUMAN RESOURCES WILL THEN REVIEW THIS INFORMATION AND CONDUCT A BRIEF SCREENING INTERVIEW OF _____________ OR LESS OVER THE TELEPHONE.', 'A', '30 MINUTES', '15 MINUTES', '20 MINUTES', '10 MINUTES', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(578, 1, 'A FIRM MAY REQUIRE AN APPLICANT TO HAVE A _______________ TO ENSURE HE OR SHE IS PHYSICALLY ABLE TO PERFORM JOB TASKS.', 'A', 'MEDICAL CHECKUP', 'PHYSICAL TEST', 'MENTEL TEST', 'INTERVIEW', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(579, 1, '_____________ IS ONE THE VERY IMPORTANT TASKS OF MANAGEMENT AND DEALS WITH HOW TO SPEND MONEY AND GET MAXIMUM BENEFITS FOR THE ORGANIZATION.', 'A', 'FINACIAL MANAGEMENTS', 'ACCOUNTING', 'PRODECTION', 'PURCHASING', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(580, 1, '._____________ STRATEGIC PLANNING , ORGANIZING,DIRECTING AND CONTROLLING OF FINANCIAL UNDERTAKING IN AN ORGANIZATION OR AN INSTITUTE ', 'D', 'HR MANAGEMENT', 'FACILITY MANAGEMENT', 'CENTRALIZED MANAGEMENT', 'FINANCIAL MANAGEMENT', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(582, 1, ' BUDGET IS A ______________ OF PROGRAM SHOWING THE PROPOSED OR ESTIMATED SCHEDULE OF EXPENDITURE IN COMING YEARS KEEPING IN VIEW THE ESTIMATED INCOME OF THE NEXT YEAR.', 'A', 'NUMERICAL STATEMENT', 'LEGAL FORM', 'FINANCIAL DOCUMENT', 'NONE OF THESE', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(583, 1, '___________ IS THE PAYMENT OR COMPENSATION RECEIVED FOR SERVICES OR EMPLOYMENT .', 'C', 'REMUNIZATION', 'PROMOTION', 'REMUNERATION', 'ALL OF THESE ABOVE', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(584, 1, '_____________INCLUDES A BASE SALARY AND ANY BONUSES OR OTHER ECONOMIC BENEFITS THAT AN EMPLOYEE OR EXECUTIVE RECEIVES DURING EMPLOYMENT ', 'D', 'PROMOTION', 'TRANSFER ', 'JOB APPRAISEL', 'REMUNERATION', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(585, 1, 'THE TERM ________________ REFERS TO THE REGULAR REVIEW OF AN EMPLOYEE \'S JOB PERFORMANCE AND OVERALL CONTRIBUTION TO A COMPANY', 'A', 'PERFORMANCE APPRAISAL ', 'PROHIBITION PERIOD', 'JOB APPRAISEL', 'NONE OF THESE', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(586, 1, '___________IS DEFINED AS THE MOVEMENT OF AN EMPLOYEE FROM ONE POSITION TO ANOTHER POSITION OF A HIGHER PAY GRADE OR SALARY', 'C', 'TRANSFER ', 'RECUIREMENT', 'PROMOTION', 'SELECTION', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(587, 1, '____________IS DEFINED AS THE MOVEMENT OF AN EMPLOYEE FROM ONE POSITION AT THE SAME PAY GRADE LEVEL OR SIMILAR SALARY.', 'A', 'TRANSFER ', 'PROMOTION', 'REMUNERATION', 'RECUIREMENT', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(588, 1, 'TRANSFER  IS DEFINED AS THE MOVEMENT OF AN EMPLOYEE FROM ONE POSITION AT THE _________ PAY GRADE LEVEL OR SIMILAR SALARY.', 'A', 'SAME', 'NOT SAME', 'COMMON', 'NONE OF THESE', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(590, 1, 'IMPROPERLY DESIGNED TOOLS OR WORK AREAS ALSO CAN BE ______________ ', 'D', 'BIOLOGICAL HAZARD', 'PHYSICAL HAZARD', 'CHEMICAL  HAZARD', 'ERGONOMIC HAZARDS', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(592, 1, '__________ INCLUDE RADIATION, NOISE, VIBRATION, ILLUMINATION AND TEMPERATURE.', 'C', 'CHEMICAL  HAZARD', 'BIOLOGICAL HAZARD', 'PHYSICAL HAZARD', 'NONE OF THESE', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(593, 1, '_____________ INCLUDE BACTERIA, VIRUSES, FUNGI AND OTHER LIVING ORGANISM THAT CAN CAUSE ACUTE AND CHRONIC INFECTIONS BY ENTERING THE BODY EITHER DIRECTLY OR THROUGH THE BREAKS IN THE SKIN ', 'A', 'BIOLOGICAL HAZARD', 'PHYSICAL HAZARD', 'CHEMICAL  HAZARD', 'ALL OF THESE ABOVE', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(594, 1, '______________ IS THE SCIENCE OF ANTICIPATING, RECOGNIZING, EVALUATING AND CONTROLLING WORK PALCE CONDITIONS THAT MAY CAUSE WORKER’S INJURY OR ILLNESS ', 'C', 'PHYSICAL HAZARD', 'MEDICAL STERAIL', 'INDUSTRIAL HYGIENE', 'NONE OF THESE', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(595, 1, '_____________ IS DONE THROUGH MACHINE MAINTAIN AND ASSET TRACKING FEATURE', 'A', 'FINANCIAL MANAGEMENT', 'MATERIAL MANAGEMENT', 'PROCUREMENT', 'PURCHASE MANAGEMENT', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(596, 1, 'FACILITIES MANAGEMENT IS THE DAY TO DAY OPERATIONS NECESSARY TO ENSURE A _____________ SUPPORTS AN ORGANIZATION NEEDS AND CORE FUNCTION.', 'A', 'PHYSICAL ENVIRONMENT', 'FINANCIAL MANAGEMENT', 'EFFICIANCY MANAGEMENT', 'FACILITY MANAGEMENT', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(597, 1, '______________ IS THE PROCESS OF ORGANIZING AND PLANNING HOW TO DIVIDE YOUR TIME BETWEEN DIFFERENT ACTIVITIES', 'A', 'TIME MANAGEMENT', 'MATERIAL MANAGEMENT', 'EFFICIANCY MANAGEMENT', 'FACILITY MANAGEMENT', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(598, 1, '_____________ IS THE PLANNING ,PURCHASING AND MAINTAINING OF DIFFERENT ITEM USED IN THE HOSPITALS', 'A', 'MATERIAL MANAGEMENT', 'MARKETTING MANAGEMENT', 'PRODECTION MANAGEMENT', 'ADMINISTRATIVE MANAGEMENT', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(599, 1, 'PLANNING INVOLVES SELECTING THE_______________', 'A', 'ALL OFF THE ABOVE', 'MISSION', 'GOALS', 'OBJECTIVES', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(600, 1, '_____________IS DEFINED AS SETTING OBJECTIVES,DETERMINING RESOURCES AND SELECTING COURSES AND REQUIRES DECISION MAKING', 'A', 'PLANNING', 'DIRECTING', 'STAFFING', 'NONE OF THESE', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(601, 1, 'PLANNING MUST AIM AT THE _______________', 'A', 'FULFILLMENT', 'PROFIT', 'PRODECTION', 'ALL OF THESE ABOVE', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(602, 1, 'ACCORDING TO _______________,\"PLANNING IS DECIDING IN ADVANCE -WHAT TO DO ,WHEN TO DO &HOW TO DO.IT BRIDGES THE GAP FROM WHERE WE ARE&WHERE WE WANT TO BE\"', 'C', 'HENRY FAYOL', 'J D MOONEY', 'KOONTZ', 'NONE OF THESE', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(603, 1, 'ACCORDING TO KOONTZ,\"______________ IS DECIDING IN ADVANCE -WHAT TO DO ,WHEN TO DO &HOW TO DO.IT BRIDGES THE GAP FROM WHERE WE ARE&WHERE WE WANT TO BE\"', 'A', 'PLANNING', 'DIRECTING', 'BOTH OF THESE', 'NONE OF THESE', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(604, 1, 'ACCORDING TO WHOM \"A PLAN IS A FUTURE COURSE OF ACTIONS. PLANNING IS A PROCESS OF DETERMINING THE OBJECTIVES EFFORT AND DEVISING THE MEANS CALCULATED TO ACHIEVE THEM\".', 'A', 'MILLET', 'MELAIT', 'MELLIT', 'MILEIT', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(605, 1, '_____________DEPENDS ON THE TYPE OF THE BUSINESS AND STRUCTURE OF THE ORGANIZATION.', 'A', 'TIME PERIOD', 'PLACE', 'MANAGEMENT', 'NONE OF THESE', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(606, 1, 'TWO TYPES OF PLANNING ARE PROACTIVE PLANNING AND ______________PLANNING', 'D', 'POSITIVE', 'RELEVANT', 'REVALUTION', 'REACTIVE', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(607, 1, '________________IS THE SUITABLE COURSE OF ACTIVITIES DESIGNED CONSIDERING THE CHANGES EXPECTED IN A RELEVANT', 'A', 'PROACTIVE PLANNING', 'RELEVANT PLANNING', 'REACTIVE PLANINNG', 'POSITIVE PLANNING', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(608, 1, '________________IS THE TYPE OF PLANNING THAT IS DONE AFTER THE ENVIRONMENT CHANGES HAVE TAKEN PLACE.', 'C', 'PROACTIVE PLANNING', 'RELEVANT PLANNING', 'REACTIVE PLANINNG', 'NONE OF THESE', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(610, 1, '\"_____________ IS THE FORM OF EVERY HUMAN ASSOCIATION FOR THE ATTAINMENT OF COMMON PURPOSE AND THE PROCESS OF RELATING SPECIFIC DUTIES OR FUNCTION IN A WHOLE\" J.D MOONEY', 'A', 'ORGANIZATION', 'HR DEPARTMENT', 'MARKETTING DEPARTMENT', 'HOSPITAL', NULL, 1, '2024-11-12 00:58:24', '2024-11-12 00:58:24', NULL, 5, 1, 1),
(671, 1, '__________IS THE SET OF PEOPLE WHO MAKE UP THE WORKFORCE OF AN ORGANIZATION, BUSINESS SECTOR, INDUSTRY ,OR ECONOMY.', 'A', 'HUMAN RESOURCE', 'MATERIAL MANAGEMENT', 'MARKETTING MANAGEMENT', 'NONE OF THESE', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(672, 1, 'THE POLICIES IN THE FORM OF STIPULATED RULES AND REGULATIONS,SPECIFIC FORMS,PROTOCOLS WITH RESPECT TO THE HR HAS BEEN DOCUMENTED IN THE FORM OF AN AUTHENTIC DOCUMENT NORMALLY NAMED AS_______________?', 'C', 'INDENT FOR TALENT ACQUISITION', 'HR POLICIES', 'HR MANNUAL ', 'HR ACQUISION', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(674, 1, 'HR MANNUAL IS CONSIDERED AS THE_____________OF HR WHICH IS THE BASE DOCUMENT ACTS AS A REFERRAL DICTIONARY.', 'C', 'LEGAL DOCUMENT', 'HANDOVER DOCCUMENT', 'BIBLE', 'HEART', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(675, 1, 'SOFT AND HARD FILES MAINTAINED THE _____________DEPARTMENT MIGHT BE RECEIVING NUMEROUS APPLICATIONS BY POST MAIL OR DIRECTLY EVEN WHEN VACANCIES ARE NOT EITHER NOTIFIED OR ADVERTIZED. ', 'D', 'PLACEMENT CELL', 'MARKETTING DEPARTMENT', 'PRO', 'HR', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(676, 1, 'MORE COLLECTION OF CV\'S CAN BE DONE THROUGH PROFESSIONAL CONSULTANTS WHO ARE THROUGH IN THE ___________', 'A', 'HR INDUSTRY ', 'PLACEMENT CELL', 'MARKETTING DEPARTMENT', 'PRO', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(677, 1, '______________IS A MANAGEMENT FUNCTION SUPPLYING DEVELOPMENT AND MAINTENANCE OF RELATIONS BASED ON BENEFIT AND MUTUAL COMMUNICATION BETWEEN THE INSTITUTION AND TARGET COMMUNITIES WHICH PLAY A FUNDAMENTAL ROLE IN THE SUCCESS AND FAILURE OF AN INSTITUTION ', 'A', 'PR', 'MATERIAL MANAGEMENT', 'HR', 'ALL OFF THE ABOVE', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(678, 1, '____________IS A PROCESS OF THE PROFITABLE INTEGRATION OF NEW AND CONTINUING RELATIONS BETWEEN AN INSTITUTION AND PARTNERS.', 'A', 'PR', 'FRONT OFFICE', 'MATERIAL MANAGEMENT', 'HR', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(679, 1, 'THE ______________IS A DEPARTMENT OF THE HOSPITAL WHICH DIRECTLY INTERACTS WITH THE PATIENTS WHEN THEY FIRST ARRIVE', 'A', 'FRONT OFFICE', 'HOUSE KEEPING', 'ADMISTRATIVE DEPARTMENT', 'NONE OF THESE', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(680, 1, 'THE CODE BLUE IS USED FOR _____________?', 'A', 'CARDIAC ARREST/MEDICAL EMERGENCY', ' HAZARDOUS MATERIAL SPILL/LEAK', 'HOSTAGE TAKING', 'INFANT OR CHILD ABDUCTION', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(681, 1, '______________CODE IS USED FOR EXTERNAL DISASTER', 'A', 'ORANGE', 'GREAY', 'SILVER', 'BLACK', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(682, 1, '__________CODE IS USED FOR THE INFRASTRUCTURE LOSS/AIR EXCLUSION', 'C', 'ORANGE', 'BLACK', 'GREAY', 'SILVER', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(683, 1, 'THE CODE PINK USED FOR______________?', 'A', 'INFANT OR CHILD ABDUCTION', ' HAZARDOUS MATERIAL SPILL/LEAK', 'HOSTAGE TAKING', 'MASS CASUALTY', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(684, 1, 'CODE BROWN  IS USED FOR______________', 'A', ' HAZARDOUS MATERIAL SPILL/LEAK', 'INFANT OR CHILD ABDUCTION', 'MISSING PATIENTS', 'HOSTAGE TAKING', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(685, 1, 'THE____________IN SOME CASES SOURCE CANDIDATES THROUGH ONLINE JOB SITES LIKE HEAD HONCHOS INDEED ETC AND VARIOUS OTHER ONLINE PORTALS WHICH INVOLVES  ONLY LITTLE TIME AND EFFORT', 'C', 'PRO', 'ADMINISTRATIVE', 'HRD', 'NONE OF THESE', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(686, 1, 'THE\" LINKED IN\" IS THE EXAMPLE OF______________NETWORK', 'A', 'SOCIAL MEDIA', 'ONLINE JOB SITES', 'ERP', 'WEB PORTER', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(687, 1, 'NAUKRI IS THE EXAMPLE OF____________', 'A', 'ONLINE JOB SITES', 'SOCIAL MEDIA', 'ERP', 'SAP', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(688, 1, 'JOB DESCRIPTION IS AN ATTACHMENT OF THE OFFER OF _______________', 'A', 'APPOINTMENT ORDER', 'LEGAL DOCUMENT', 'CONTRACT', 'NONE OF THESE', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(689, 1, 'THE_____________IS A BASE DOCUMENT REGARDING THE DUTIES AND RESPONSIBILITES ENTRUSTED TO AN EMPLOYEE', 'B', 'APPOINTMENT ORDER', 'JOB DESCRIPTION', 'BOTH A&B', 'NONE OF THESE', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(690, 1, 'CLAUSE NO______________OF APPOINTMENT ORDER INDICATES THAT \"YOU WILL BE ON A PROBATION FOR A PERIOD OF 6 MONTH FROM THE DATE OF JOINING\"', 'B', '6', '5', '3', '4', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(692, 1, 'THE APPRAISAL OF THE STAFF MEMBERS IS TAKEN EVERY ____________FOR CASH STAFF.', 'A', '6 MONTHS', '5 MONTHS', '4 MONTHS', '3 MONTHS', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(693, 1, '_____________REFERS TO ACTIVITES A COMPANY UNDERTAKES TO PROMOTE  THE BUYING OR SELLING OF A PRODUCT OR SERVICE ', 'A', 'MARKETING', 'MATERIAL MANAGEMENT', 'INVENTORY MANAGEMENT', 'ALL OFF THE ABOVE', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(694, 1, '_______________INCLUDES ADVERTISING ,SELLING,AND DELIVERING PRODUCTS TO CONSUMER OR OTHER BUSINESSES', 'A', 'MARKETING', 'MATERIAL MANAGEMENT', 'HUMAN RESOURCE', 'NONE OF THESE', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(695, 1, 'THE TERM _____________IS A FOUNDATION MODEL FOR BUSINESS', 'A', 'MARKETING MIX', 'CUSTOMER DEMAND', 'PRICE', 'PLACE', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(696, 1, 'THE ____________HAS BEEN DEFINED AS THE \"SET OF MARKETING TOOLS THAT THE FIRM USES TO PURSUE ITS MARKETING OBJECTIVES IN THE TARGET MARKET\"', 'C', 'MANUFACTURING', 'RAWMATERIAL PURCHASING', 'MARKETING MIX', 'ALL OFF THE ABOVE', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(697, 1, '4 Ps OF_____________IS PRODUCT,PLACE,PRICE,PROMOTION', 'A', 'MARKETING', 'PRODECTION', 'DISTRIBUTION', 'ALL OFF THE ABOVE', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(698, 1, '______________CAN BE PHYSICAL OR IN VIRTUAL OR CYBER FORM', 'C', 'PRISE', 'DEMAND', 'PRODUCT', 'NONE OF THESE', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(699, 1, '_____________IS CONSIDERED A VITAL ELEMENT OF THE MARKETING MIX BECAUSE IT DICTATES A COMPANY\'S SURVIVAL AND PROFIT', 'A', 'PRIZE', 'PRODECT', 'PLACE', 'PRODECTION', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(701, 1, '_____________ENCOMPASS THE USERS AND PEES GROUPS OUTLOOK WHICH IS MOULDED BY FACTORS LIKE SATISFACTION IN TERMS OF SERVICES PROVIDED AND ATTITUDES OF THE HOSPITAL PERSONNEL', 'A', 'PUBLIC RELATIONS', 'HUMAN RESOURCE', 'MATERIAL MANAGEMENT', 'NONE OF THESE', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(702, 1, 'CODE_____________IS USED TO ALLERT FIRE IN THE HOSPITAL', 'C', 'SILVER', 'CODE BLUE', 'RED', 'CODE PURPLE', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(703, 1, 'CODES SHALL BE ANNOUNCED___________OVER THE PA SYSTEM', 'D', 'FIVE', 'TWO', 'FOUR', 'THRICE', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(704, 1, 'CODES SHALL BE ANNOUNCED THRICE OVER THE PA SYSTEM AND SHALL BE REPEATED EVERY______________', 'B', '30s,5m', '30s,2m', '30s,3m', '30s,4m', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(705, 1, 'CODE GREEN IS ________________', 'A', 'INTERNAL EVACUATION', 'EXTERNAL EVACUATION', 'DIRECT  EVACUATION', 'INDIRECT EVACUATION', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(706, 1, '_________CODE IS USED FOR VIOLENT OR COMBATIVE INDIVIDUALS ', 'A', 'WHITE', 'CODE BLUE', 'CODE YELLOW', 'CODE RED', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(707, 1, 'CODE YELLOW IS USED FOR______________', 'A', 'MISSING PATIENTS', 'HOSTAGE TAKING', 'BOMB THREAT OR SUSPICIOUS PACKAGE', 'MASS CASUALTY', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(708, 1, 'CODE VIOLET IS USE FOR_______________', 'A', 'HOSTAGE TAKING', 'MISSING PATIENTS', 'BOMB THREAT OR SUSPICIOUS PACKAGE', 'MASS CASUALTY', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(709, 1, 'ACTIVE SHOOTER SITUATION USED CODE IS______________', 'A', 'SILVER', 'CODE BLUE', 'BLACK', 'CODE RED', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(710, 1, 'CODE BLACK IS USED IN ______________SITUATION', 'A', 'BOMB THREAT OR SUSPICIOUS PACKAGE', 'HOSTAGE TAKING', 'MASS CASUALTY', 'MISSING PATIENTS', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(711, 1, '_____________CODE IS THE MOST UNIVERSALLY RECOGNIZED EMERGENCY CODE', 'A', 'CODE BLUE', 'SILVER', 'CODE RED', 'BLACK', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(713, 1, 'A_____________OUGHT TO HAVE A CONTROL OVER THE ENTIRE HUMAN RESOURCE TO GET A FULL -FLEDGED CONTROL OVER THE HOSPITAL IRRESPECTIVE OF ITS STATUS', 'D', 'PRO', ' HUMAN RESOURCE', 'HOSPITAL ADMINISTRATOR', 'GENERAL ADMINISTRATOR', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(714, 1, 'A GENERAL ADMINISTRATOR OUGHT TO HAVE A CONTROL OVER THE ENTIRE_____________TO GET A FULL -FLEDGED CONTROL OVER THE HOSPITAL IRRESPECTIVE OF ITS STATUS.', 'C', 'PRO', 'GENERAL ADMINISTRATOR', ' HUMAN RESOURCE', 'GRO', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(715, 1, 'THE POLICIES IN THE FORM OF STIPULATED RULES AND REGULATIONS,SPECIFIC FORMS,PROTOCOLS WITH RESPECT TO THE HR HAS BEEN DOCUMENTED IN THE FORM OF AN_____________NORMALLY NAMED AS HR MANNUAL', 'A', ' AUTHENTIC DOCUMENT', 'LEGAL DOCUMENT', ' HANDOVER DOCUMENT', 'NONE OF THESE', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(717, 1, 'WHICH ONE IS THE APPROPRIATE PERSONAL WHO ARE PREDESIGNATED TEAM FOR WHEN A CODE IS CALLED SWIFTLY AND EFFICIENTLY BASED ON THEIR TRAINING ', 'B', 'NURSE', 'PHYSICIANS', 'APPROPRIATE PERSONNEL', 'ALL OFF THE ABOVE', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(719, 1, 'EMERGENCY RESPONSE CODE TEAM MEMBERS FUNCTION COLLABORATIVELY DURING THE CODE WITH ONE PERSON IDENTYFIED AS___________', 'C', 'HRM', 'PRO', 'CODE TEAM LEADER', 'CODE MEMBER', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(720, 1, 'HOSPITAL TEND TO USE ___________ALONG WITH OTHER AS IT INDICATES THAT HOSPITAL IS ACTIVITING AN EMERGENCY OPERATIONS PLAN', 'B', 'CODE BLUE', 'CODE GREEN', 'CODE RED', 'CODE YELLOW', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(721, 1, 'SOME HOSPITALS ALSO USED A CODE GREEN TO DENOTE A ______________EVENT', 'D', 'OPERATION', 'SHOOTER SITUATION', 'EMERGENCY OPERATION', 'MASS CASUALTY', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(722, 1, 'INTERNAL EVACUATION IS _______________', 'A', 'CODE GREEN', 'CODE BLUE', 'CODE YELLOW', 'CODE RED', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(724, 1, 'IF NOT FOUND, CALL A CODE YELLOW AND PROVIDE _____________', 'D', 'PATIENT NAME', 'DEPARTMENT AND UNIT', 'TIME AND LOCATION', 'ALL OFF THE ABOVE', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(725, 1, 'MISSING CHILD IS ________________', 'D', 'CODE GREEN', 'CODE BLUE', 'CODE YELLOW', 'CODE AMBER', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(726, 1, '_____________IS USED FOR HOSTAGE TAKING', 'B', 'CODE BLUE', 'CODE VIOLET', 'CODE YELLOW', 'CODE BLUE', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(727, 1, 'CODE VIOLET YOU WITNESS THIS KIND OF SITUATION AND PROVIDE __________', 'D', 'NUMBER AND PHYSICAL DESCRIPTION', 'LOCATION', 'VISIBLE SIGNS ', 'ALL OFF THE ABOVE', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(728, 1, 'WHICH SITUATION IS DIAL 9-1-1 IMMEDIATELY AND GIVE OPERATOR ALL NECESSARY INFORMATION?', 'A', 'HOSTAGE SITUATION', 'MISSING SITUATION', 'BOMB THREAT OR SUSPICIOUS PACKAGE', 'CHILD MISSING', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(729, 1, 'DIAL__________AND ADVICE SWITCH BOARD THAT __________WAS CALLED FOR A CODE PURPLE', 'A', '3-3-3-3,9-1-1', '2-2-2-2,8-1-1', '4-4-4-4,6-1-1', '5-5-5-5,2-1-1', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(730, 1, 'PERSON WITH A WEAPON IS ______________', 'C', 'CODE RED', 'CODE BLACK', 'CODE SILVER', 'CODE PURPLE', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(731, 1, 'CODE BLACK IS BOMB THREAT OR_____________', 'C', 'FIRE', 'HOSTAGE SITUATION', 'SUSPICIOUS PACKAGE', 'PERSON WITH A WEAPON', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(732, 1, 'CODE ORANGE IS____________', 'A', 'EXTERNAL DISATER', 'INTERNAL DISATER', 'CHILD MISSING', 'HOSTAGE SITUATION', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(733, 1, '___________CODE IS USED FOR EXTERNAL DISASTER', 'A', 'CODE ORANGE', 'CODE BLUE', 'CODE BLACK', 'CODE RED', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(734, 1, 'HOSPITAL HAS BEEN NOTIFIED THAT A DISASTER HAS OCCURRED IN THE COMMUNITY -NO CASUALTIES ARE ARIVING YET', 'A', 'CODE ORANGE ALERT', 'CODE BLUE ALERT', 'CODE RED ALERT', 'CODE BLACK ALERT', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(735, 1, 'HOSPITAL IS NO LONGER RECEVING NEW CASUALTIES IS ____________', 'A', 'CODE ORANGE DOWNGRADED', 'CODE ORENGE ALERT', 'CODE RED ALERT', 'CODE BLACK ALERT', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(736, 1, 'A CHEMICAL BIOLOGICAL NUCLEAR AND OR RADIOACTIVE DISASTER HAS OCCURRED-LOCKDOWN AND DECOMTAMINATION PROCEDURES NEED TO BE IMPLEMENT IS ____________', 'A', 'CODE ORENGE DECONTAM', 'CODE ORENGE', 'CODE RED ALERT', 'CODE ORANGE DOWNGRADED', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(737, 1, 'HAZARDOUS MATERIAL SPILL/LEAK_______________', 'B', 'CODE RED', 'CODE BROWN', 'CODE AMBER', 'CODE ORENGE', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(738, 1, 'CODE GREY IS USED FOR______________', 'A', 'INFRASTRUCTURE LOSS/AIR EXCLUSION', 'MATERIAL SPILL/LEAK', 'HAZARDOUS MATERIAL SPILL/LEAK', 'EXTERNAL DISATER', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(739, 1, 'SKILL OF FRONT OFFICE EXECUTIVE IS ____________', 'D', 'TEAM WORK', 'PROFESSIONALISM', 'PROMPTNESS', 'ALL OFF THE ABOVE', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(740, 1, 'SKILL OF A GUEST RELATION EXECUTIVE IS _________________', 'D', 'PATIENTS', 'GUEST SERVICE', 'HYATT', 'ALL OFF THE ABOVE', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1);
INSERT INTO `quizzes` (`id`, `course_id`, `question`, `answer`, `option_a`, `option_b`, `option_c`, `option_d`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`, `module_id`, `batch_id`, `exam_id`) VALUES
(741, 1, 'A GUEST RELATION OFFICER ALSO KNOWN AS A_____________', 'A', 'GUEST RELATION CORDINATOR', 'FREND OFFICE EXICUTIVE', 'BOTH A&B', 'NONE OF THESE', NULL, 1, '2024-11-12 01:06:17', '2024-11-12 01:06:17', NULL, 6, 1, 1),
(920, 1, 'AYURVEDA APPLIES THE_________ THEORY OF DISEASE', 'A', 'THRIDHOSA THEORY', 'CURATIVE THEORY', 'ANCIENT THEORY', 'HISTORICAL THEORY', NULL, 1, '2024-11-13 01:32:06', '2024-11-13 01:32:06', NULL, 1, 1, 2),
(921, 1, 'IN AYURVEDA DISEASE IS EXPLAINED AS A DISTURBANCE IN THE EQUILIBRIUM OF THE_________', 'D', 'VATA', 'PITTA', 'KAPHA', 'ALL OF THE ABOVE', NULL, 1, '2024-11-13 01:32:06', '2024-11-13 01:32:06', NULL, 1, 1, 2),
(922, 1, 'ORGANISED MEDICAL TRAINING BEGAN WITH THE OPENING OF THE FIRST MEDICAL COLLEGE IN ______ IN 1835', 'A', 'CALCUTTA', 'CHENNAI', 'BANGLORE', 'MUMBAI', NULL, 1, '2024-11-13 01:32:06', '2024-11-13 01:32:06', NULL, 1, 1, 2),
(923, 1, 'NON COMMUNICABLE DISEASE RELATED TO URBANIZATION', 'D', 'HYPERTENSION', 'CARDIOVASCULAR DISEASES', 'CANCER', 'ALL OF THESE', NULL, 1, '2024-11-13 01:32:06', '2024-11-13 01:32:06', NULL, 1, 1, 2),
(924, 1, 'HOSPITALS CAN BE CLASSIFIED ON THE BASIS OF____________ ', 'C', 'SERVICE PROVIDED', 'SIZE OR NUMBER OF BEDS', 'OWNERSHIP', 'NONE OF THESE', NULL, 1, '2024-11-13 01:32:06', '2024-11-13 01:32:06', NULL, 1, 1, 2),
(925, 1, 'ON THE BASIS OF OWNERSHIP, HOSPITALS CAN BE DIVIDED INTO', 'B', 'TWO', 'FOUR', 'THREE', 'FIVE', NULL, 1, '2024-11-13 01:32:06', '2024-11-13 01:32:06', NULL, 1, 1, 2),
(926, 1, '____________ HOSPITALS DEAL WITH SPECIFIC CATEGORY OF DISEASES', 'A', 'SPECIAL HOSPITAL ', 'AYUSH HOSPITAL', 'GENERAL HOSPITAL', 'SPECIFIC HOSPITAL', NULL, 1, '2024-11-13 01:32:06', '2024-11-13 01:32:06', NULL, 1, 1, 2),
(927, 1, 'ACCORDING TO THE SIZE OR NUMBER OF BEDS HOSPITAL IS CLASSIFIED AS:', 'C', 'COOPERATIVE HOSPITAL', 'ALLOPATHIC HOSPITAL', 'REGIONAL HOSPITAL', 'NONE OF THE ABOVE', NULL, 1, '2024-11-13 01:32:06', '2024-11-13 01:32:06', NULL, 1, 1, 2),
(928, 1, 'NUMBER OF BEDS IN A REGIONAL HOSPITAL', 'A', 'MORE THAN 500 BEDS', '200 BEDS', 'UPTO 500 BEDS', 'LESS THAN 200 BEDS', NULL, 1, '2024-11-13 01:32:06', '2024-11-13 01:32:06', NULL, 1, 1, 2),
(929, 1, '__________________ HOSPITALS ARE OWNED AND MANAGED BY GOVERNMENT OR AUTONOMOUS BODY', 'A', 'PUBLIC HOSPITALS', 'COOPERATIVE HOSPITALS', 'AUTONOMY HOSPITAL', 'RURAL HOSPITAL', NULL, 1, '2024-11-13 01:32:06', '2024-11-13 01:32:06', NULL, 1, 1, 2),
(930, 1, 'NATIONAL INSTITUTE OF CHILD HEALTH IS AN EXAMPLE OF _____________ HOSPITAL', 'B', 'REGIONAL HOSPITAL', 'PUBLIC HOSPITAL', 'PRIVATE HOSPITAL', 'COOPERATIVE HOSPITAL', NULL, 1, '2024-11-13 01:32:06', '2024-11-13 01:32:06', NULL, 1, 1, 2),
(931, 1, '___________ IS AN EXAMPLE FOR AYUSH HOSPITAL', 'A', 'SANTHIGIRI SIDDHA HOSPITAL', 'AHALYA AYURVEDA HOSPITAL', 'ALL OF THE ABOVE', 'NONE OF THESE', NULL, 1, '2024-11-13 01:32:06', '2024-11-13 01:32:06', NULL, 1, 1, 2),
(932, 1, 'WHICH ONE IS NOT A FUNCTION OF HOSPITAL', 'D', 'TRAINING FUNCTION', 'PREVENTIVE FUNCTION', 'CURATIVE FUNCTION', 'NONE OF THESE', NULL, 1, '2024-11-13 01:32:06', '2024-11-13 01:32:06', NULL, 1, 1, 2),
(933, 1, '____________ HELPS EVERY ORGANIZATION FOR PROPER MANAGEMNET OF THE WORK AND ACTIVITIES OF THE SAME', 'A', 'DEPARTMENTISATION', 'HOSPITALS', 'INDUSTRIALISATION', 'PREVENTION', NULL, 1, '2024-11-13 01:32:06', '2024-11-13 01:32:06', NULL, 1, 1, 2),
(934, 1, 'THE SECONDARY FUNCTION FOR THE HOSPITAL AND CONCERNED WITH ____________', 'D', 'HEALTH PROMOTION', 'PROVIDING TRAINING AND EDUCATION', 'CONDUCTING THE HEALTH REALATED RESEARCHES', 'ALL OF THE ABOVE', NULL, 1, '2024-11-13 01:32:06', '2024-11-13 01:32:06', NULL, 1, 1, 2),
(935, 1, 'PRIMARY FUNCTION OF THE HOSPITAL AND CONCERN WITH PROVIDING__________', 'C', 'RESEARCH FUNCTION', 'PREVENTIVE FUNCTION', 'CURATIVE FUNCTION', 'ALL OF THE ABOVE', NULL, 1, '2024-11-13 01:32:06', '2024-11-13 01:32:06', NULL, 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exam_id` bigint(20) UNSIGNED DEFAULT NULL,
  `exam_name` varchar(255) DEFAULT NULL,
  `batch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `centre_id` bigint(20) UNSIGNED DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `reg_no` varchar(255) DEFAULT NULL,
  `marks` int(10) UNSIGNED DEFAULT NULL,
  `correct_answer_count` int(10) UNSIGNED DEFAULT NULL,
  `wrong_answer_count` int(10) UNSIGNED DEFAULT NULL,
  `percentage` decimal(5,2) DEFAULT NULL,
  `grade` varchar(5) DEFAULT NULL,
  `result` enum('pass','fail') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `exam_id`, `exam_name`, `batch_id`, `course_id`, `centre_id`, `student_id`, `reg_no`, `marks`, `correct_answer_count`, `wrong_answer_count`, `percentage`, `grade`, `result`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 1, 1, 1, 9, 'WMH1009', 97, 97, 24, 97.00, 'A+', 'pass', '2024-11-12 04:11:43', '2025-06-21 04:17:48'),
(3, 2, NULL, 1, 1, 1, 5, '112', 3, 3, 6, 3.00, 'D', 'fail', '2024-11-25 08:23:30', '2025-06-21 04:21:58'),
(4, 2, NULL, 1, 1, 1, 1, '112', 2, 2, 8, 2.00, 'D', 'fail', '2024-11-25 08:29:16', '2025-06-21 04:21:58'),
(5, 2, NULL, 1, 1, 1, 1, 'wm2024812947', 1, 1, 2, 1.00, 'D', 'fail', '2024-11-25 08:30:18', '2025-06-21 04:21:58'),
(6, 1, NULL, 1, 1, 1, 5, '1631566', 82, 82, 19, 82.00, 'A', 'pass', '2024-11-25 10:18:34', '2025-06-21 04:17:48'),
(7, 1, NULL, 1, 1, 1, 10, 'WMH1010', 55, 55, 51, 55.00, 'C+', 'pass', '2024-12-10 09:15:02', '2025-06-21 04:17:48'),
(8, 1, NULL, 1, 1, 1, 13, 'WMH1013', 81, 81, 44, 81.00, 'A', 'pass', '2024-12-10 10:20:51', '2025-06-21 04:17:48'),
(9, 2, NULL, 1, 1, 1, 6, 'WMH1006', 88, 88, 40, 88.00, 'A', 'pass', '2025-01-09 09:11:19', '2025-06-21 04:21:58'),
(10, 1, NULL, 1, 1, 1, 6, 'WMH1006', 83, 83, 40, 83.00, 'A', 'pass', '2025-01-09 09:28:36', '2025-06-21 04:17:48'),
(11, 2, NULL, 1, 1, 1, 10, 'WMH1010', 33, 33, 33, 33.00, 'D+', 'pass', '2025-01-27 06:49:18', '2025-06-21 04:21:58'),
(12, 1, NULL, 1, 1, 1, 10, 'WMH1010', 61, 61, 39, 61.00, 'B', 'pass', '2025-01-27 07:18:26', '2025-06-21 04:17:48'),
(13, 1, NULL, 1, 1, 1, 13, 'WMH1013', 85, 85, 49, 85.00, 'A', 'pass', '2025-01-29 09:29:16', '2025-06-21 04:17:48'),
(14, 1, NULL, 1, 1, 1, 6, 'WMH1006', 96, 96, 45, 96.00, 'A+', 'pass', '2025-01-30 06:19:28', '2025-06-21 04:17:48'),
(61, 2, 'null', 1, 1, 1, 100, 'wmdemo123', 1, 1, 5, 1.00, 'D', 'fail', '2025-05-21 06:15:38', '2025-06-21 04:21:58'),
(60, 1, 'null', 1, 1, 1, 37, 'WMH1126', 76, 76, 31, 76.00, 'B+', 'pass', '2025-05-20 09:13:21', '2025-06-21 04:17:48'),
(59, 2, 'null', 1, 1, 1, 37, 'WMH1126', 2, 2, 4, 2.00, 'D', 'fail', '2025-05-20 08:38:49', '2025-06-21 04:21:58'),
(58, 1, 'null', 1, 1, 1, 16, 'WMH1103', 88, 88, 30, 88.00, 'A', 'pass', '2025-05-19 09:43:30', '2025-06-21 04:17:48'),
(57, 2, 'null', 1, 1, 1, 16, 'WMH1103', 4, 4, 4, 4.00, 'D', 'fail', '2025-05-19 08:56:25', '2025-06-21 04:21:58'),
(44, 3, 'Microsoft PowerPoint Exam', NULL, NULL, NULL, 98, 'WMPMNA1', 13, 13, 17, 13.00, 'D', 'fail', '2025-02-24 09:33:08', '2025-06-17 07:03:34'),
(45, 3, 'Microsoft Word Exam', NULL, NULL, NULL, 98, 'WMPMNA1', 27, 27, 4, 27.00, 'D', 'fail', '2025-02-24 09:41:43', '2025-06-17 07:03:34'),
(46, 3, 'Microsoft Excel Exam', NULL, NULL, NULL, 98, 'WMPMNA1', 21, 21, 17, 21.00, 'D', 'fail', '2025-02-24 09:49:51', '2025-06-17 07:03:34'),
(47, 3, 'Microsoft PowerPoint Exam', NULL, NULL, NULL, 99, 'WMPMNA2', 18, 18, 11, 18.00, 'D', 'fail', '2025-02-24 10:27:45', '2025-06-17 07:03:34'),
(51, 1, 'null', 1, 1, 1, 34, 'WMH1123', 74, 74, 59, 74.00, 'B+', 'pass', '2025-03-17 09:32:10', '2025-06-21 04:18:08'),
(49, 3, 'Microsoft Word Exam', NULL, NULL, NULL, 99, 'WMPMNA2', 24, 24, 5, 24.00, 'D', 'fail', '2025-02-24 10:33:04', '2025-06-17 07:03:34'),
(50, 3, 'Microsoft Excel Exam', NULL, NULL, NULL, 99, 'WMPMNA2', 24, 24, 6, 24.00, 'D', 'fail', '2025-02-24 10:41:16', '2025-06-17 07:03:34'),
(52, 1, 'null', 1, 1, 1, 32, 'WMH 1120', 92, 92, 55, 92.00, 'A+', 'pass', '2025-03-18 09:27:38', '2025-06-21 04:18:08'),
(53, 1, 'null', 1, 1, 1, 21, 'WMH1108', 65, 65, 38, 65.00, 'B', 'pass', '2025-03-20 09:20:44', '2025-06-21 04:18:08'),
(54, 1, 'null', 1, 1, 1, 27, 'WMH1114', 84, 84, 20, 84.00, 'A', 'pass', '2025-05-07 09:27:57', '2025-06-21 04:18:08'),
(55, 1, 'null', 1, 1, 1, 31, 'WMH1119', 72, 72, 28, 72.00, 'B+', 'pass', '2025-05-09 09:18:00', '2025-06-21 04:18:08'),
(56, 1, 'null', 1, 1, 1, 30, 'WMH1118', 54, 54, 64, 54.00, 'C+', 'pass', '2025-05-12 09:42:41', '2025-06-21 04:18:08'),
(62, 1, 'null', 1, 1, 1, 100, 'wmdemo123', 8, 8, 34, 8.00, 'D', 'fail', '2025-05-21 06:18:32', '2025-06-21 04:18:08'),
(63, 1, 'null', 1, 1, 1, 100, 'wmdemo123', 0, 0, 3, 0.00, 'D', 'fail', '2025-05-21 06:19:56', '2025-06-21 04:18:08'),
(64, 1, 'null', 1, 1, 1, 100, 'wmdemo123', 1, 1, 3, 1.00, 'D', 'fail', '2025-05-21 06:22:28', '2025-06-21 04:18:08'),
(65, 1, 'null', 1, 1, 1, 100, 'wmdemo123', 3, 3, 4, 3.00, 'D', 'fail', '2025-05-21 06:24:12', '2025-06-21 04:18:08'),
(66, 1, 'null', 1, 1, 1, 100, 'wmdemo123', 0, 0, 6, 0.00, 'D', 'fail', '2025-05-21 06:25:06', '2025-06-21 04:19:11'),
(67, 1, 'null', 1, 1, 1, 100, 'wmdemo123', 0, 0, 4, 0.00, 'D', 'fail', '2025-05-21 06:25:49', '2025-06-21 04:19:11'),
(68, 2, 'null', 1, 1, 1, 22, 'WMH1109', 8, 8, 1, 8.00, 'D', 'fail', '2025-05-21 08:47:07', '2025-06-21 04:21:58'),
(69, 1, 'null', 1, 1, 1, 22, 'WMH1109', 79, 79, 21, 79.00, 'B+', 'pass', '2025-05-21 09:29:41', '2025-06-21 04:19:11'),
(70, 1, 'null', 1, 1, 1, 100, 'wmdemo123', 17, 17, 83, 17.00, 'D', 'fail', '2025-05-21 09:40:11', '2025-06-21 04:19:11'),
(71, 1, 'null', 1, 1, 1, 100, 'wmdemo123', 21, 21, 82, 21.00, 'D', 'fail', '2025-05-21 09:59:21', '2025-06-21 04:19:11'),
(72, 1, 'null', 1, 1, 1, 100, 'wmdemo123', 4, 4, 6, 4.00, 'D', 'fail', '2025-05-21 11:02:12', '2025-06-21 04:19:11'),
(73, 1, 'null', 1, 1, 1, 14, 'WMH1101', 68, 68, 33, 68.00, 'B', 'pass', '2025-05-22 09:24:06', '2025-06-21 04:19:11'),
(74, 2, 'null', 1, 1, 1, 24, 'WMH1111', 1, 1, 5, 1.00, 'D', 'fail', '2025-06-02 05:00:34', '2025-06-21 04:21:58'),
(75, 1, 'null', 1, 1, 1, 24, 'WMH1111', 34, 34, 66, 34.00, 'D+', 'pass', '2025-06-02 05:18:30', '2025-06-21 04:19:11'),
(76, 1, 'null', 1, 1, 1, 100, 'wmdemo123', 16, 16, 84, 16.00, 'D', 'fail', '2025-06-03 09:47:31', '2025-06-21 04:19:11'),
(77, 2, 'null', 1, 1, 1, 29, 'WMH1116', 10, 10, 4, 10.00, 'D', 'fail', '2025-06-04 08:43:06', '2025-06-21 04:22:01'),
(78, 1, 'null', 1, 1, 1, 29, 'WMH1116', 79, 79, 27, 79.00, 'B+', 'pass', '2025-06-04 09:20:15', '2025-06-21 04:19:11'),
(84, 2, 'null', 1, 1, 1, 28, 'WMH 1115', 8, 8, 6, 8.00, 'D', 'fail', '2025-06-05 09:09:13', '2025-06-21 04:22:01'),
(83, 1, 'null', 1, 1, 1, 25, 'WMH1112', 52, 52, 48, 52.00, 'C+', 'pass', '2025-06-05 07:07:15', '2025-06-21 04:19:08'),
(82, 2, 'null', 1, 1, 1, 25, 'WMH1112', 5, 5, 1, 5.00, 'D', 'fail', '2025-06-05 06:24:09', '2025-06-21 04:22:01'),
(85, 1, 'null', 1, 1, 1, 28, 'WMH 1115', 69, 69, 31, 69.00, 'B', 'pass', '2025-06-05 09:36:07', '2025-06-21 04:19:08'),
(86, 1, 'null', 1, 1, 1, 106, 'wm20250202', 1, 1, 1, 1.00, 'D', 'fail', '2025-06-06 06:54:49', '2025-06-21 04:19:08'),
(87, 2, 'null', 1, 1, 1, 65, 'WMH1304', 13, 13, 3, 13.00, 'D', 'fail', '2025-06-08 04:39:58', '2025-06-21 04:22:01'),
(88, 2, 'null', 1, 1, 1, 41, 'WMH1204', 42, 42, 24, 42.00, 'C', 'pass', '2025-06-08 04:42:08', '2025-06-21 04:22:01'),
(89, 2, 'null', 1, 1, 1, 57, 'WMH1222', 33, 33, 41, 33.00, 'D+', 'pass', '2025-06-08 04:43:57', '2025-06-21 04:22:01'),
(90, 2, 'null', 1, 1, 1, 63, 'WMH 1302', 24, 24, 17, 24.00, 'D', 'fail', '2025-06-08 04:45:17', '2025-06-21 04:22:01'),
(91, 2, 'null', 1, 1, 1, 109, 'WMH1004', 8, 8, 6, 8.00, 'D', 'fail', '2025-06-08 04:48:15', '2025-06-21 04:22:01'),
(92, 1, 'null', 1, 1, 1, 41, 'WMH1204', 64, 64, 36, 64.00, 'B', 'pass', '2025-06-08 05:00:32', '2025-06-21 04:19:08'),
(93, 2, 'null', 1, 1, 1, 33, 'WMH 1121', 7, 7, 4, 7.00, 'D', 'fail', '2025-06-08 05:09:41', '2025-06-21 04:22:01'),
(94, 1, 'null', 1, 1, 1, 57, 'WMH1222', 34, 34, 66, 34.00, 'D+', 'pass', '2025-06-08 05:12:24', '2025-06-21 04:19:08'),
(95, 2, 'null', 1, 1, 1, 79, 'WMH1317', 35, 35, 2, 35.00, 'D+', 'pass', '2025-06-08 05:12:58', '2025-06-21 04:22:01'),
(96, 2, 'null', 1, 1, 1, 84, 'WMH1322', 2, 2, 4, 2.00, 'D', 'fail', '2025-06-08 05:18:45', '2025-06-21 04:22:04'),
(97, 1, 'null', 1, 1, 1, 47, 'WMH1210', 46, 46, 54, 46.00, 'C', 'pass', '2025-06-08 05:21:03', '2025-06-21 04:19:08'),
(98, 1, 'null', 1, 1, 1, 107, 'WMH1002', 30, 30, 70, 30.00, 'D+', 'pass', '2025-06-08 05:24:56', '2025-06-21 04:19:08'),
(99, 1, 'null', 1, 1, 1, 108, 'WMH1003', 61, 61, 39, 61.00, 'B', 'pass', '2025-06-08 05:25:04', '2025-06-21 04:19:08'),
(100, 1, 'null', 1, 1, 1, 63, 'WMH 1302', 58, 58, 42, 57.00, 'C+', 'pass', '2025-06-08 05:25:04', '2025-06-21 04:19:08'),
(101, 2, 'null', 1, 1, 1, 110, 'wmh1224', 1, 1, 3, 1.00, 'D', 'fail', '2025-06-08 05:26:09', '2025-06-21 04:22:04'),
(102, 2, 'null', 1, 1, 1, 56, 'WMH1221', 2, 2, 3, 2.00, 'D', 'fail', '2025-06-08 05:31:17', '2025-06-21 04:22:04'),
(103, 1, 'null', 1, 1, 1, 79, 'WMH1317', 93, 93, 14, 93.00, 'A+', 'pass', '2025-06-08 05:31:51', '2025-06-21 04:19:08'),
(104, 1, 'null', 1, 1, 1, 109, 'WMH1004', 40, 40, 60, 40.00, 'C', 'pass', '2025-06-08 05:35:15', '2025-06-21 04:19:04'),
(105, 2, 'null', 1, 1, 1, 77, 'WMH1315', 6, 6, 6, 6.00, 'D', 'fail', '2025-06-08 05:36:30', '2025-06-21 04:22:04'),
(106, 1, 'null', 1, 1, 1, 65, 'WMH1304', 53, 53, 47, 53.00, 'C+', 'pass', '2025-06-08 05:41:17', '2025-06-21 04:19:04'),
(107, 2, 'null', 1, 1, 1, 50, 'WMH1213', 8, 8, 4, 8.00, 'D', 'fail', '2025-06-08 05:51:19', '2025-06-21 04:22:04'),
(108, 1, 'null', 1, 1, 1, 66, 'WMH1305', 73, 73, 27, 73.00, 'B+', 'pass', '2025-06-08 05:54:30', '2025-06-21 04:19:04'),
(109, 1, 'null', 1, 1, 1, 84, 'WMH1322', 49, 49, 51, 49.00, 'C', 'pass', '2025-06-08 06:01:56', '2025-06-21 04:19:04'),
(110, 1, 'null', 1, 1, 1, 33, 'WMH 1121', 48, 48, 52, 48.00, 'C', 'pass', '2025-06-08 06:02:17', '2025-06-21 04:19:04'),
(111, 1, 'null', 1, 1, 1, 77, 'WMH1315', 47, 47, 53, 47.00, 'C', 'pass', '2025-06-08 06:03:19', '2025-06-21 04:19:04'),
(112, 1, 'null', 1, 1, 1, 55, 'WMH1220', 43, 43, 57, 43.00, 'C', 'pass', '2025-06-08 06:03:54', '2025-06-21 04:19:04'),
(113, 2, 'null', 1, 1, 1, 38, 'WMH1201', 12, 12, 19, 12.00, 'D', 'fail', '2025-06-08 06:05:26', '2025-06-21 04:22:04'),
(114, 1, 'null', 1, 1, 1, 61, 'WMH1226', 59, 59, 41, 59.00, 'C+', 'pass', '2025-06-08 06:08:49', '2025-06-21 04:19:04'),
(115, 2, 'null', 1, 1, 1, 46, 'WMH1209', 3, 3, 3, 3.00, 'D', 'fail', '2025-06-08 06:11:43', '2025-06-21 04:22:04'),
(116, 2, 'null', 1, 1, 1, 111, 'wmh1206', 13, 13, 4, 13.00, 'D', 'fail', '2025-06-08 06:12:13', '2025-06-21 04:22:04'),
(117, 1, 'null', 1, 1, 1, 110, 'wmh1224', 32, 32, 68, 32.00, 'D+', 'pass', '2025-06-08 06:14:19', '2025-06-21 04:19:04'),
(118, 1, 'null', 1, 1, 1, 15, 'WMH1102', 92, 92, 75, 92.00, 'A+', 'pass', '2025-06-08 06:22:24', '2025-06-21 04:19:04'),
(119, 1, 'null', 1, 1, 1, 38, 'WMH1201', 37, 37, 66, 37.00, 'D+', 'pass', '2025-06-08 06:35:01', '2025-06-21 04:19:01'),
(120, 1, 'null', 1, 1, 1, 50, 'WMH1213', 75, 75, 34, 75.00, 'B+', 'pass', '2025-06-08 06:36:50', '2025-06-21 04:19:01'),
(121, 1, 'null', 1, 1, 1, 46, 'WMH1209', 56, 56, 44, 56.00, 'C+', 'pass', '2025-06-08 06:44:07', '2025-06-21 04:19:01'),
(122, 1, 'null', 1, 1, 1, 56, 'WMH1221', 42, 42, 58, 42.00, 'C', 'pass', '2025-06-08 06:49:22', '2025-06-21 04:19:01'),
(123, 1, 'null', 1, 1, 1, 111, 'wmh1206', 54, 54, 51, 54.00, 'C+', 'pass', '2025-06-08 06:57:53', '2025-06-21 04:19:01'),
(124, 2, 'null', 1, 1, 1, 1, 'WMH1001', 1, 1, 11, 1.00, 'D', 'fail', '2025-06-09 09:12:05', '2025-06-21 04:22:04'),
(125, 1, 'null', 1, 1, 1, 1, 'WMH1001', 60, 60, 40, 60.00, 'B', 'pass', '2025-06-09 09:42:58', '2025-06-21 04:19:01'),
(126, 2, 'null', 1, 1, 1, 35, 'WMH 1124', 6, 6, 8, 6.00, 'D', 'fail', '2025-06-10 05:15:33', '2025-06-21 04:22:04'),
(127, 1, 'null', 1, 1, 1, 35, 'WMH 1124', 57, 57, 44, 56.00, 'C+', 'pass', '2025-06-10 05:58:37', '2025-06-21 04:19:01'),
(128, 1, 'null', 1, 1, 1, 18, 'WMH1105', 72, 72, 41, 72.00, 'B+', 'pass', '2025-06-10 06:50:10', '2025-06-21 04:19:01'),
(129, 2, 'null', 1, 1, 1, 26, 'WMH1113', 1, 1, 18, 1.00, 'D', 'fail', '2025-06-10 06:54:41', '2025-06-21 04:22:07'),
(130, 1, 'null', 1, 1, 1, 26, 'WMH1113', 43, 43, 57, 43.00, 'C', 'pass', '2025-06-10 07:34:00', '2025-06-21 04:19:01'),
(131, 2, 'null', 1, 1, 1, 20, 'WMH1107', 3, 3, 15, 3.00, 'D', 'fail', '2025-06-10 08:15:01', '2025-06-21 04:22:07'),
(132, 1, 'null', 1, 1, 1, 20, 'WMH1107', 66, 66, 34, 66.00, 'B', 'pass', '2025-06-10 08:40:44', '2025-06-21 04:19:01'),
(133, 2, 'null', 1, 1, 1, 81, 'WMH1319', 7, 7, 7, 7.00, 'D', 'fail', '2025-06-11 04:44:30', '2025-06-21 04:22:07'),
(134, 1, 'null', 1, 1, 1, 81, 'WMH1319', 68, 68, 39, 68.00, 'B', 'pass', '2025-06-11 05:36:52', '2025-06-21 04:18:33'),
(135, 2, 'null', 1, 1, 1, 78, 'WMH1316', 7, 7, 6, 7.00, 'D', 'fail', '2025-06-11 09:13:07', '2025-06-21 04:22:07'),
(136, 1, 'null', 1, 1, 1, 78, 'WMH1316', 68, 68, 32, 68.00, 'B', 'pass', '2025-06-11 09:55:24', '2025-06-21 04:18:33'),
(137, 2, 'null', 1, 1, 1, 68, 'WMH 1307', 4, 4, 13, 4.00, 'D', 'fail', '2025-06-12 04:49:10', '2025-06-21 04:22:07'),
(138, 1, 'null', 1, 1, 1, 68, 'WMH 1307', 43, 43, 57, 43.00, 'C', 'pass', '2025-06-12 05:37:34', '2025-06-21 04:18:33'),
(139, 1, 'null', 1, 1, 1, 106, 'wm20250202', 0, 0, 4, 0.00, 'D', 'fail', '2025-06-13 07:00:28', '2025-06-21 04:18:33'),
(140, 2, 'null', 1, 1, 1, 60, 'WMH1225', 3, 3, 12, 3.00, 'D', 'fail', '2025-06-16 05:30:53', '2025-06-21 04:22:07'),
(141, 1, 'null', 1, 1, 1, 60, 'WMH1225', 43, 43, 57, 43.00, 'C', 'pass', '2025-06-16 06:35:38', '2025-06-21 04:18:33'),
(142, 2, 'null', 1, 1, 1, 116, 'WMKDL5', 20, 20, 9, 20.00, 'D', 'fail', '2025-06-17 05:51:22', '2025-06-21 04:22:07'),
(143, 2, 'null', 1, 1, 1, 117, 'WMKDL8', 9, 9, 6, 9.00, 'D', 'fail', '2025-06-17 05:52:07', '2025-06-21 04:22:07'),
(144, 2, 'null', 1, 1, 1, 118, 'WMKDL7', 6, 6, 9, 6.00, 'D', 'fail', '2025-06-17 05:52:13', '2025-06-21 04:22:07'),
(145, 2, 'null', 1, 1, 1, 113, 'WMKDL9', 13, 13, 2, 13.00, 'D', 'fail', '2025-06-17 05:52:19', '2025-06-21 04:22:07'),
(146, 2, 'null', 1, 1, 1, 112, 'WMKDL2', 7, 7, 13, 7.00, 'D', 'fail', '2025-06-17 05:53:25', '2025-06-21 04:19:42'),
(147, 2, 'null', 1, 1, 1, 114, 'WMKDL10', 14, 14, 3, 14.00, 'D', 'fail', '2025-06-17 05:53:52', '2025-06-21 04:19:42'),
(148, 2, 'null', 1, 1, 1, 119, 'WMKDL6', 2, 2, 1, 2.00, 'D', 'fail', '2025-06-17 06:20:02', '2025-06-21 04:19:42'),
(149, 1, 'null', 1, 1, 1, 116, 'WMKDL5', 49, 49, 51, 49.00, 'C', 'pass', '2025-06-17 06:38:32', '2025-06-21 04:18:33'),
(150, 1, 'null', 1, 1, 1, 114, 'WMKDL10', 55, 55, 45, 55.00, 'C+', 'pass', '2025-06-17 06:42:18', '2025-06-21 04:18:33'),
(151, 1, 'null', 1, 1, 1, 117, 'WMKDL8', 62, 62, 42, 62.00, 'B', 'pass', '2025-06-17 06:50:22', '2025-06-21 04:18:33'),
(152, 1, 'null', 1, 1, 1, 115, 'WMKDL12', 65, 65, 43, 65.00, 'B', 'pass', '2025-06-17 06:50:51', '2025-06-21 04:18:33'),
(153, 1, 'null', 1, 1, 1, 113, 'WMKDL9', 67, 67, 33, 67.00, 'B', 'pass', '2025-06-17 06:52:36', '2025-06-21 04:18:33'),
(154, 1, 'null', 1, 1, 1, 112, 'WMKDL2', 64, 64, 36, 64.00, 'B', 'pass', '2025-06-17 06:52:48', '2025-06-21 04:18:31'),
(155, 1, 'null', 1, 1, 1, 118, 'WMKDL7', 49, 49, 53, 49.00, 'C', 'pass', '2025-06-17 06:55:24', '2025-06-21 04:18:31'),
(156, 1, 'null', 1, 1, 1, 119, 'WMKDL6', 59, 59, 41, 59.00, 'C+', 'pass', '2025-06-17 07:11:28', '2025-06-21 04:18:31'),
(157, 2, 'null', 1, 1, 1, 51, 'WMH1214', 2, 2, 1, 2.00, 'D', 'fail', '2025-06-17 08:32:21', '2025-06-21 04:19:42'),
(158, 1, 'null', 1, 1, 1, 51, 'WMH1214', 65, 65, 35, 65.00, 'B', 'pass', '2025-06-17 08:55:20', '2025-06-21 04:18:31'),
(159, 2, 'null', 1, 1, 1, 23, 'WMH1110', 6, 6, 4, 6.00, 'D', 'fail', '2025-06-17 09:35:19', '2025-06-21 04:19:42'),
(160, 1, 'null', 1, 1, 1, 23, 'WMH1110', 55, 55, 52, 55.00, 'C+', 'pass', '2025-06-17 10:24:01', '2025-06-21 04:18:31');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'web', '2024-12-01 10:05:18', '2024-12-01 10:05:18'),
(2, 'Centre', 'web', '2024-12-01 10:05:18', '2024-12-01 10:05:18');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(5, 2),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(23, 2),
(24, 1),
(24, 2),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1);

-- --------------------------------------------------------

--
-- Table structure for table `schemes`
--

CREATE TABLE `schemes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `discount` decimal(8,2) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `schemes`
--

INSERT INTO `schemes` (`id`, `name`, `discount`, `category_id`, `course_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'offer', 10.00, NULL, NULL, 1, '2024-12-01 06:42:15', '2024-12-01 06:42:15'),
(3, 'Deewali 25%', 25.00, NULL, NULL, 1, '2024-12-03 10:02:37', '2024-12-03 10:02:37'),
(4, 'Inaugural offer 35%', 35.00, NULL, NULL, 1, '2024-12-03 10:14:24', '2024-12-03 10:14:24'),
(5, 'Inaugural offer 63%', 63.00, NULL, NULL, 1, '2024-12-03 10:17:53', '2024-12-03 10:27:39'),
(6, 'Inaugural offer 48.88%', 48.88, NULL, NULL, 1, '2024-12-03 10:41:40', '2024-12-03 10:41:40'),
(7, 'Inaugural offer 20%', 20.00, NULL, NULL, 1, '2024-12-03 10:52:30', '2025-01-21 09:55:52'),
(8, 'Inaugural offer 22.59%', 22.59, NULL, NULL, 1, '2024-12-03 10:57:16', '2024-12-03 10:57:16'),
(9, 'Inaugural offer 58.21%', 58.21, NULL, NULL, 1, '2024-12-06 09:05:35', '2024-12-06 09:05:35'),
(10, 'Inaugural offer 81.81%', 81.81, NULL, NULL, 1, '2024-12-06 10:16:50', '2024-12-06 10:16:50'),
(11, 'inaugural offer 64.79%', 64.79, NULL, NULL, 1, '2024-12-07 03:59:51', '2024-12-07 03:59:51'),
(12, 'Inaugural offer 63.78%', 63.78, NULL, NULL, 1, '2024-12-09 04:52:47', '2024-12-09 04:52:47'),
(13, 'FREE SCHOLARSHIP0%', 0.00, NULL, NULL, 1, '2024-12-09 05:14:17', '2024-12-09 05:14:17'),
(14, 'Deewali 25%', 25.00, NULL, NULL, 1, '2024-12-10 10:42:01', '2024-12-10 10:42:01'),
(15, 'DEEWALI OFFER 25%', 34.00, NULL, NULL, 1, '2024-12-10 10:43:41', '2025-01-21 09:53:59'),
(16, 'NEW OFFER 20%', 20.00, NULL, NULL, 1, '2025-02-17 10:29:51', '2025-02-17 10:45:23');

-- --------------------------------------------------------

--
-- Table structure for table `scheme_category_courses`
--

CREATE TABLE `scheme_category_courses` (
  `id` int(11) NOT NULL,
  `scheme_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `scheme_category_courses`
--

INSERT INTO `scheme_category_courses` (`id`, `scheme_id`, `cat_id`, `course_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2024-12-01 06:42:15', '2024-12-01 06:42:15'),
(2, 1, 1, 2, '2024-12-01 06:42:15', '2024-12-01 06:42:15'),
(5, 3, 1, 1, '2024-12-03 10:08:02', '2024-12-03 10:08:02'),
(6, 3, 1, 2, '2024-12-03 10:08:02', '2024-12-03 10:08:02'),
(7, 4, 1, 1, '2024-12-03 10:14:24', '2024-12-03 10:14:24'),
(9, 5, 1, 2, '2024-12-03 10:27:39', '2024-12-03 10:27:39'),
(10, 6, 1, 2, '2024-12-03 10:41:40', '2024-12-03 10:41:40'),
(12, 8, 1, 2, '2024-12-03 10:57:16', '2024-12-03 10:57:16'),
(13, 9, 1, 1, '2024-12-06 09:05:35', '2024-12-06 09:05:35'),
(14, 10, 1, 2, '2024-12-06 10:16:50', '2024-12-06 10:16:50'),
(15, 11, 1, 1, '2024-12-07 03:59:51', '2024-12-07 03:59:51'),
(16, 12, 1, 2, '2024-12-09 04:52:47', '2024-12-09 04:52:47'),
(17, 13, 1, 1, '2024-12-09 05:14:17', '2024-12-09 05:14:17'),
(18, 14, 1, 1, '2024-12-10 10:42:01', '2024-12-10 10:42:01'),
(21, 15, 1, 1, '2025-01-21 09:54:27', '2025-01-21 09:54:27'),
(23, 7, 1, 1, '2025-01-21 09:55:52', '2025-01-21 09:55:52'),
(27, 16, 6, 8, '2025-02-17 10:45:23', '2025-02-17 10:45:23');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `discount_price` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `duration` varchar(255) NOT NULL,
  `duration_hours` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `student_code` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `mobile_no` varchar(50) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `centre_id` int(11) NOT NULL,
  `scheme_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `batch_id` int(11) NOT NULL,
  `reg_no` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `address_1` varchar(255) DEFAULT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `user_id`, `student_code`, `country_id`, `dob`, `mobile_no`, `email`, `centre_id`, `scheme_id`, `category_id`, `course_id`, `batch_id`, `reg_no`, `photo`, `address_1`, `address_2`, `city`, `pincode`, `image`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 37, '900309', 101, '1998-01-26', '8943085181', 'dhanya1234@gmail.com', 2, 5, 1, 1, 2, 'WMH1001', NULL, 'RETNA VILASAM NALUMUKKU MOONNUMUKKU PO', NULL, 'KOLLAM', 691535, '1733474583.jpg', 0, '2024-12-06 08:43:03', '2024-12-06 08:43:03', NULL),
(2, 38, '357538', 101, '2001-01-19', '9847920182', 'anamika@gmail.com', 2, 5, 1, 2, 2, 'WMH1002', NULL, 'PADMATHEERTHAM , THERUVINBHAGOM,POREDOM PO', NULL, 'KOLLAM', 691534, '1733474774.jpg', 0, '2024-12-06 08:46:14', '2025-01-13 08:33:14', NULL),
(3, 39, '173621', 101, '2005-03-12', '9207946746', 'binuja@gmail.com', 2, 5, 1, 2, 2, 'WMH1003', NULL, 'BINU SADANAM, KALAYAM ,KURIYODE PO', NULL, 'KOLLAM', 691534, '1733474905.jpg', 0, '2024-12-06 08:48:25', '2024-12-06 08:48:25', NULL),
(4, 40, '905013', 101, '2001-02-24', '9539171189', 'anu@gmail.com', 2, 5, 1, 2, 2, 'WMH1004', NULL, 'ANAND VILASAM, POTHENPARA,CHANNNAPETTA PO KOLLAM', NULL, 'KOLLAM', 691536, '1733475071.jpg', 0, '2024-12-06 08:51:11', '2024-12-06 08:51:11', NULL),
(5, 41, '882665', 101, '2003-11-30', '9746703520', 'muhsina@gmail.com', 2, 5, 1, 2, 2, 'WMH1005', NULL, 'MULLUMMOOTTIL VEEDU,KAITHODE,NILAMEL', NULL, 'KOLLAM', 691535, '1733475329.jpg', 0, '2024-12-06 08:55:29', '2024-12-06 08:55:29', NULL),
(6, 42, '735656', 101, '2002-04-29', '9526387798', 'fathiman@gmail.com', 2, 9, 1, 1, 1, 'WMH1006', NULL, 'KUNNUMPURATH VEEDU VAYKKAL PO AYOOR', NULL, 'KOLLAM', 691534, '1733476167.jpg', 0, '2024-12-06 09:09:27', '2024-12-06 09:09:27', NULL),
(7, 43, '829690', 101, '1997-05-28', '9072051880', 'GOPIKA@gmail.com', 2, 10, 1, 2, 2, 'WMH1007', NULL, 'SUNITHA BHAVAN,VELLAMPARA,NILAMEL PO', NULL, 'KOLLAM', 691534, '1733480600.jpg', 0, '2024-12-06 10:23:20', '2024-12-06 10:23:20', NULL),
(9, 45, '318503', 101, '2000-11-08', '9074958092', 'aminas@gmail.com', 2, 4, 1, 1, 1, 'WMH1009', NULL, 'AMINA MANZIL,MANKONAM, PULIYOORKONAM PO', NULL, 'KOLLAM', 691534, '1733481369.jpg', 0, '2024-12-06 10:36:09', '2024-12-06 10:36:09', NULL),
(10, 46, '157784', 101, '2002-12-06', '9946951352', 'arshad123@gmail.com', 2, 9, 1, 1, 1, 'WMH1010', NULL, 'ASHIK MANZIL,KOCHUMULLIKKADU,KOLLAYIL PO', NULL, 'KOLLAM', 691534, '1733481532.jpg', 0, '2024-12-06 10:38:52', '2024-12-06 10:38:52', NULL),
(11, 47, '159565', 101, '2002-02-27', '8714956568', 'devika@gmail.com', 2, 10, 1, 2, 2, 'WMH1011', NULL, 'GLORY BHAVAN, PULAMON,KOTTARAKKARA', NULL, 'KOLLAM', 691534, '1733481757.jpg', 0, '2024-12-06 10:42:37', '2024-12-06 10:42:37', NULL),
(12, 48, '474474', 101, '2006-03-04', '9645161194', 'irfana123@gmail.com', 2, 9, 1, 1, 1, 'WMH1012', NULL, 'MULLUMMOOTTIL VEEDU,KAITHODE,NILAMEL', NULL, 'KOLLAM', 691534, '1733482045.jpg', 0, '2024-12-06 10:47:25', '2024-12-06 10:47:25', NULL),
(13, 50, '114509', 101, '2002-02-16', '9946500238', 'vijayalekshmi123@gmail.com', 2, 4, 1, 1, 1, 'WMH1013', NULL, 'AMBIKA VILASOM,PANAPPAMKUNNU,MALACKAL PO', NULL, 'KOLLAM', 691534, '1733482531.jpg', 0, '2024-12-06 10:55:31', '2024-12-06 10:55:31', NULL),
(14, 51, '152068', 101, '2003-06-16', '9526559328', 'adithya@gmail.com', 2, 9, 1, 1, 1, 'WMH1101', NULL, 'N R SADANAM,KOCHALUMMOODU,MADAVOOR, PALLICKAL PO', NULL, 'KOLLAM', 691534, '1733483675.jpg', 0, '2024-12-06 11:14:35', '2024-12-06 11:14:35', NULL),
(15, 52, '413917', 101, '2000-06-14', '7306852933', 'fathima@gmail.com', 2, 4, 1, 1, 3, 'WMH1102', NULL, 'NILAMEL,KOLLAM.', NULL, 'KOLLAM', 691534, '1733484139.jpg', 0, '2024-12-06 11:22:19', '2024-12-06 11:22:19', NULL),
(16, 53, '117371', 101, '2001-03-16', '8129708031', 'asha@gmail.com', 2, 4, 1, 1, 3, 'WMH1103', NULL, 'DEVADEYAM,VATTAKAITHA,PULIYOORKONAM,', NULL, 'KOLLAM', 691534, '1733484388.jpg', 0, '2024-12-06 11:26:28', '2024-12-06 11:26:28', NULL),
(17, 54, '945201', 101, '2004-12-03', '7592930992', 'anusree@gmail.com', 2, 4, 1, 1, 1, 'WMH1104', NULL, 'A S BHAVAN,THUDAYANNOOR KADAKKAL', NULL, 'KOLLAM', 691534, '1733485470.jpg', 0, '2024-12-06 11:44:30', '2024-12-06 11:44:30', NULL),
(18, 55, '821686', 101, '2003-05-25', '9947885555', 'pooja@gmail.com', 2, 10, 1, 1, 4, 'WMH1105', NULL, 'ANANDHU BHAVANAM, MAVINMOODU KALLAMBALAM PO', NULL, 'KOLLAM', 691534, '1733485640.jpg', 0, '2024-12-06 11:47:20', '2024-12-06 11:47:20', NULL),
(19, 59, '279212', 101, '2001-12-02', '09544196970', 'nishananoushad@gmail.com', 2, 11, 1, 1, 1, 'WMH1106', NULL, 'MAROTTIVILA VEEDU,PARUTHYIL KURIYODE PO', 'NILAMEL,KOLLAM.', 'KOLLAM', 691535, '1733719144.jpg', 0, '2024-12-09 04:39:04', '2024-12-09 04:39:04', NULL),
(20, 60, '441638', 101, '2007-06-27', '9526259324', 'abhiramiss@gmail.com', 2, 12, 1, 1, 4, 'WMH1107', NULL, 'A S NIVAS,MELVETTOOR PO AYANTHI,VARKALA', NULL, 'KOLLAM', 691535, '1733720857.jpg', 0, '2024-12-09 05:07:37', '2024-12-09 05:07:37', NULL),
(21, 61, '945039', 101, '2001-02-28', '9539844538', 'akhilal@gmail.com', 2, 4, 1, 1, 1, 'WMH1108', NULL, 'CHARUVILA VEEDU,KARARA ,MADATHARA PO', NULL, 'KOLLAM', 691535, '1733721088.jpg', 0, '2024-12-09 05:11:28', '2024-12-09 05:11:28', NULL),
(22, 62, '425404', 101, '2003-11-10', '9778735270', 'shereenas@gmail.com', 2, 13, 1, 1, 3, 'WMH1109', NULL, 'SHEREENA MANZIL,BLOCK NO 90, KOLLAYIL', NULL, 'KOLLAM', 691535, '1733721484.jpg', 0, '2024-12-09 05:18:04', '2024-12-09 05:18:04', NULL),
(23, 63, '198841', 101, '1997-10-04', '9744882376', 'jesiya@gmail.com', 2, 12, 1, 1, 4, 'WMH1110', NULL, 'SAJINA MANZIL,KUMMIL KUMMIL PO', NULL, 'KOLLAM', 691536, '1733721773.jpg', 0, '2024-12-09 05:22:53', '2024-12-09 05:22:53', NULL),
(24, 64, '906601', 101, '1993-05-25', '8848534280', 'parvathyl@gmail.com', 2, 4, 1, 1, 3, 'WMH1111', NULL, 'R P SADANAM,ALAYAMON PO ANCHAL', NULL, 'KOLLAM', 691536, '1733721927.jpg', 0, '2024-12-09 05:25:27', '2024-12-09 05:25:27', NULL),
(25, 65, '344257', 101, '2005-08-27', '8714817138', 'amritha@gmail.com', 2, 7, 1, 1, 3, 'WMH1112', NULL, 'KANGANIYIL CHARUVILA VEEDU,KUTTIKKADU PO KADAKKKAL', NULL, 'KOLLAM', 691536, '1733722147.jpg', 0, '2024-12-09 05:29:07', '2024-12-09 05:29:07', NULL),
(26, 66, '613966', 101, '2004-02-20', '7736254680', 'muhammedyaseen@gmail.com', 2, 4, 1, 1, 3, 'WMH1113', NULL, 'NIZAM MANZIL,KADAKKAL', NULL, 'KOLLAM', 691534, '1733724242.jpg', 0, '2024-12-09 06:04:02', '2024-12-09 06:04:02', NULL),
(27, 67, '787012', 101, '1997-10-27', '94951978569', 'alfiyaabbas@gmail.com', 2, 4, 1, 1, 3, 'WMH1114', NULL, 'A S HOUSE VATTAPPARA CHERIYAVELINALLOOR', NULL, 'KOLLAM', 691536, '1733727578.jpg', 0, '2024-12-09 06:59:38', '2024-12-09 06:59:38', NULL),
(28, 68, '385980', 101, '2000-11-19', '7559874104', 'ajinaa@gmail.com', 2, 12, 1, 1, 4, 'WMH 1115', NULL, 'ANWAR MANZIL,VATTAKKARIKKAKOM,PANGODE', NULL, 'KOLLAM', 691536, '1733727709.jpg', 0, '2024-12-09 07:01:49', '2024-12-09 07:01:49', NULL),
(29, 69, '222137', 101, '2003-05-27', '8089140045', 'sonafathima@gmail.com', 2, 7, 1, 1, 3, 'WMH1116', NULL, 'MELETHAZHATHU VEEDU,KOONTHALLOOR,CHIRAYINKEEZHU', NULL, 'KOLLAM', 691536, '1733728022.jpg', 0, '2024-12-09 07:07:02', '2024-12-09 07:07:02', NULL),
(30, 70, '546671', 101, '2003-02-05', '8590247450', 'anjali@gmail.com', 2, 4, 1, 1, 3, 'WMH1118', NULL, 'ANJALI VILASAM,CHARIPPARAMBU, KADAKKAL', NULL, 'KOLLAM', 691536, '1733728180.jpg', 0, '2024-12-09 07:09:40', '2024-12-09 07:09:40', NULL),
(31, 71, '971155', 101, '2002-10-07', '8848683296', 'punya@gmail.com', 2, 7, 1, 1, 3, 'WMH1119', NULL, 'POOJA BHAVAN,MUNDUKONAM,THANDRAMPOIKA,VENJARAMOODU', NULL, 'KOLLAM', 691536, '1733728651.jpg', 0, '2024-12-09 07:17:31', '2024-12-09 07:17:31', NULL),
(32, 72, '568186', 101, '2007-08-03', '9539711905', 'abhiramipb@gmail.com', 2, 7, 1, 1, 3, 'WMH 1120', NULL, 'KIZHAKKUMKARA PUTHEN VEEDU,KUMMIL PO KUMMIL', NULL, 'KOLLAM', 691536, '1733729071.jpg', 0, '2024-12-09 07:24:31', '2025-03-17 04:29:43', NULL),
(33, 73, '817629', 101, '2006-09-20', '9746035775', 'anujaraj@gmail.com', 2, 4, 1, 1, 3, 'WMH 1121', NULL, 'CHAVARU VAZHODE,CHARUVILA VEEDU,VAYYANAM', NULL, 'KOLLAM', 691536, '1733729335.jpg', 0, '2024-12-09 07:28:55', '2024-12-09 07:28:55', NULL),
(34, 74, '739283', 101, '2006-08-11', '9633635397', 'Bismiya@gmail.com', 2, 7, 1, 1, 3, 'WMH1123', NULL, 'CHARUVILA  PUTHEN VEEDU K K KONAM PO PALLICKAL', NULL, 'KOLLAM', 691536, '1733729530.jpg', 0, '2024-12-09 07:32:10', '2024-12-09 07:32:10', NULL),
(35, 75, '799048', 101, '1998-09-26', '09544196970', 'alfiyamusthafa@gmail.com', 2, 12, 1, 1, 4, 'WMH 1124', NULL, 'A M MANZIL,PERUPURAM ,KARINGANNOOR', NULL, 'KOLLAM', 691536, '1733729756.jpg', 0, '2024-12-09 07:35:56', '2024-12-09 07:35:56', NULL),
(36, 76, '108995', 101, '2001-02-05', '7558074352', 'aryalm@gmail.com', 2, 4, 1, 1, 3, 'WMH 1125', NULL, 'ARYA BHAVAN,THUDAYANNOOR PO ,VATTAPPADY', NULL, 'KOLLAM', 691536, '1733732230.jpg', 0, '2024-12-09 08:17:10', '2024-12-09 08:17:10', NULL),
(37, 77, '423068', 101, '2002-08-02', '8592006339', 'anzy@gmail.com', 2, 7, 1, 1, 3, 'WMH1126', NULL, 'THASLIMA MANZIL,KAITHODE  PO NILAMEL.', NULL, 'KOLLAM', 691536, '1733732394.jpg', 0, '2024-12-09 08:19:54', '2024-12-09 08:19:54', NULL),
(38, 78, '589354', 101, '2007-09-07', '9746050766', 'gopikas@gmail.com', 2, 4, 1, 1, 5, 'WMH1201', NULL, 'SUJA BHAVAN,KANJIRATHUMMOODU,AYIRAKKUZHY PO', NULL, 'KOLLAM', 691536, '1733732608.jpg', 0, '2024-12-09 08:23:28', '2024-12-09 08:23:28', NULL),
(39, 79, '415289', 101, '2006-07-10', '6235361031', 'noufiyaf@gmail.com', 2, 8, 1, 1, 6, 'wmh1202', NULL, 'NOUFIYA MANZIL,VAZHODE NILAMEL PO', NULL, 'KOLLAM', 691536, '1733732955.jpg', 0, '2024-12-09 08:29:15', '2024-12-09 08:29:15', NULL),
(40, 80, '676276', 101, '2006-12-11', '9747278922', 'abhiramirs@gmail.com', 2, 8, 1, 2, 6, 'WMH1203', NULL, 'MAROTTIPOIKAYIL CHARUVILA VEEDU,BENGLAMKUNNU,NILAMEL.', NULL, 'KOLLAM', 691535, '1733733844.jpg', 0, '2024-12-09 08:44:04', '2024-12-09 08:44:04', NULL),
(41, 81, '613482', 101, '2002-08-15', '9495842025', 'fathimasalim@gmail.com', 2, 11, 1, 1, 5, 'WMH1204', NULL, 'SHEMI MANZIL,THAZHAMEL,ANCHAL', NULL, 'KOLLAM', 691535, '1733733996.jpg', 0, '2024-12-09 08:46:36', '2024-12-09 08:46:36', NULL),
(42, 82, '113729', 101, '2002-03-30', '9495911331', 'sitarah@gmail.com', 2, 7, 1, 1, 5, 'WMH1205', NULL, 'SITHRA\'S,AMBALAMUKKU,KUMMIL PO', NULL, 'KOLLAM', 691535, '1733734440.jpg', 0, '2024-12-09 08:54:00', '2024-12-09 08:54:00', NULL),
(43, 83, '711226', 101, '2006-06-10', '8589097303', 'hasnashaijan@gmail.com', 2, 8, 1, 2, 6, 'WMH1206', NULL, 'PALAVILAYIL THRTEE J HOUSE,NADAYARA,SREENIVASAPURAM', NULL, 'KOLLAM', 691535, '1733734793.jpg', 0, '2024-12-09 08:59:53', '2024-12-09 08:59:53', NULL),
(44, 84, '191363', 101, '2002-11-23', '7356006520', 'vaishnavik@gmail.com', 2, 8, 1, 2, 6, 'WMH1207', NULL, 'V V HOUSE MANALIYIL,PULIPPARA PO', NULL, 'KOLLAM', 691535, '1733735169.jpg', 0, '2024-12-09 09:06:09', '2024-12-09 09:06:09', NULL),
(45, 85, '769188', 101, '2005-10-18', '8593068532', 'aswani@mail.com', 2, 8, 1, 2, 6, 'WMH 1208', NULL, 'NILAMEL,KOLLAM.', NULL, 'KOLLAM', 691535, '1733735796.jpg', 0, '2024-12-09 09:16:36', '2024-12-09 09:16:36', NULL),
(46, 86, '943530', 101, '2003-08-20', '9995485009', 'soumyasm@gmail.com', 2, 4, 1, 1, 6, 'WMH1209', NULL, 'CHARUVILA VEEDU,NARAMKODE,MUTHAYIL,MANKODE PO', NULL, 'KOLLAM', 691535, '1733736438.jpg', 0, '2024-12-09 09:27:18', '2024-12-09 09:27:18', NULL),
(47, 87, '890653', 101, '2000-07-15', '9633080940', 'sibana@gmail.com', 2, 7, 1, 1, 5, 'WMH1210', NULL, 'PULINCHIKKA POIKA VEEDU,THUMPODE KALLARA PO', NULL, 'KOLLAM', 695608, '1733737499.jpg', 0, '2024-12-09 09:44:59', '2024-12-09 09:44:59', NULL),
(48, 88, '511121', 101, '1997-09-20', '9207258153', 'arathy@gmail.com', 2, 7, 1, 1, 6, 'WMH1211', NULL, 'CHARUVILA PUTHEN VEEDU KUTTIKKADU KADAKKAL', NULL, 'KOLLAM', 691535, '1733738294.jpg', 0, '2024-12-09 09:58:14', '2024-12-09 09:58:14', NULL),
(49, 89, '993857', 101, '2003-05-20', '9744240948', 'mhdashik@gmail.com', 2, 8, 1, 2, 6, 'WMH1212', NULL, 'ASHIK COTTAGE,VATTAKKARIKKAKAM', NULL, 'KOLLAM', 691535, '1733739040.jpg', 0, '2024-12-09 10:10:40', '2024-12-09 10:10:40', NULL),
(50, 90, '414286', 101, '1996-03-02', '9074958895', 'jasmin@gmail.com', 2, 13, 1, 1, 5, 'WMH1213', NULL, 'VATTAVILA VEEDU,ERUNNOOTTY,VATTATHAMARA PO', NULL, 'KOLLAM', 691535, '1733741743.jpg', 0, '2024-12-09 10:55:43', '2024-12-09 10:55:43', NULL),
(51, 91, '621594', 101, '2005-03-04', '9539570465', 'saramol@gmail.com', 2, 8, 1, 1, 6, 'WMH1214', NULL, 'VILAYIL VEEDU,S V PURAM NADAYARA VARKALA', NULL, 'KOLLAM', 691535, '1733742150.jpg', 0, '2024-12-09 11:02:30', '2024-12-09 11:02:30', NULL),
(52, 92, '884425', 101, '2006-03-07', '8943501052', 'aryavs@gmail.com', 2, 8, 1, 1, 6, 'WMH1216', NULL, 'ATHIRA BHAVAN,VAYYANAM  PO VAYYANAM', NULL, 'KOLLAM', 691535, '1733742826.jpg', 0, '2024-12-09 11:13:46', '2024-12-09 11:13:46', NULL),
(53, 93, '753244', 101, '2006-09-30', '7025782126', 'ramseena@gmail.com', 2, 8, 1, 2, 6, 'WMH1217', NULL, 'OLIPPINKARA PUTHEN VEEDU ELAMPAZHANNOOR PO CHADAYAMANGALAM', NULL, 'KOLLAM', 691535, '1733743005.jpg', 0, '2024-12-09 11:16:45', '2024-12-09 11:16:45', NULL),
(54, 94, '640569', 101, '2006-11-23', '8075484693', 'mhdshafeek@gmail.com', 2, 8, 1, 2, 6, 'WMH 1219', NULL, 'MUBEENA MANZIL, CHERUKKARAM,PULLAYIL PO', NULL, 'KOLLAM', 691535, '1733743315.jpg', 0, '2024-12-09 11:21:55', '2024-12-09 11:21:55', NULL),
(55, 95, '682940', 101, '2006-12-03', '9539191537', 'vineetha@gmail.com', 2, 4, 1, 1, 5, 'WMH1220', NULL, 'NILAMEL,KOLLAM.', NULL, 'KOLLAM', 691535, '1733743497.jpg', 0, '2024-12-09 11:24:57', '2024-12-09 11:24:57', NULL),
(56, 96, '244397', 101, '2007-01-19', '9846486815', 'prijitha@gmail.com', 2, 7, 1, 1, 5, 'WMH1221', NULL, 'POYIKAVILA VEEDU,KK KONAM,PALLICKAL', NULL, 'KOLLAM', 691535, '1733743853.jpg', 0, '2024-12-09 11:30:53', '2024-12-09 11:30:53', NULL),
(57, 97, '658096', 101, '2005-10-09', '9656477538', 'alfiyabs@gmail.com', 2, 4, 1, 1, 5, 'WMH1222', NULL, 'AMINA MANZIL,PULIPPARA PO PANGODE', NULL, 'KOLLAM', 691535, '1733744071.jpg', 0, '2024-12-09 11:34:31', '2024-12-09 11:34:31', NULL),
(58, 98, '920464', 101, '2004-01-07', '8848676058', 'snehab@gmail.com', 2, 8, 1, 1, 5, 'WMH1223', NULL, 'KOKKATTU VEEDU, ARTHUNGAL KADAKKAL PO', NULL, 'KOLLAM', 691535, '1733744214.jpg', 0, '2024-12-09 11:36:54', '2024-12-09 11:36:54', NULL),
(59, 99, '747390', 101, '2006-05-06', '09544196970', 'arunima@gmail.com', 2, 8, 1, 2, 6, 'WMH1224', NULL, 'SHIFANA MANZIL,MATHIRA,MELE PANGODE,CHEKKITTAMUKKU,KUMMIL PO MATHIRA', NULL, 'KOLLAM', 691535, '1733744422.jpg', 0, '2024-12-09 11:40:22', '2024-12-09 11:40:22', NULL),
(60, 102, '788784', 101, '2006-11-29', '9074598151', 'muneernn@gmail.com', 2, 8, 1, 1, 6, 'WMH1225', NULL, 'RAZIYA MANZIL,MULLIKKADU,CHITHARA', NULL, NULL, 691535, '1733805080.jpg', 0, '2024-12-10 04:31:20', '2024-12-10 04:31:20', NULL),
(61, 103, '518638', 101, '2006-01-21', '09544196970', 'abhiramij@gmail.com', 2, 4, 1, 1, 5, 'WMH1226', NULL, 'BABU VILASOM POREDOM PO CHADAYAMANGALAM', NULL, 'KOLLAM', 691536, '1733805321.jpg', 0, '2024-12-10 04:35:22', '2024-12-10 04:35:22', NULL),
(62, 104, '595936', 101, '2003-06-26', '9746799397', 'libina@gmail.com', 2, 8, 1, 2, 6, 'WMH1227', NULL, 'LIBINA MANZIL,OZHUKAPARA,MADATHARA PO MADATHARA', NULL, 'KOLLAM', 691536, '1733805474.jpg', 0, '2024-12-10 04:37:54', '2024-12-10 04:37:54', NULL),
(63, 105, '379995', 101, '2007-01-11', '9745848323', 'sangeetha@gmail.com', 2, 7, 1, 1, 5, 'WMH 1302', NULL, 'SINDHU SADANAM,KUTTIKKADU PO KADAKKAL', NULL, 'KOLLAM', 691536, '1733810552.jpg', 0, '2024-12-10 06:02:32', '2024-12-10 06:02:32', NULL),
(64, 107, '750895', 101, '2007-04-12', '9567354550', 'varshabs123@gmail.com', 2, 4, 1, 1, 7, 'WMH 1203', NULL, 'SHEENA VILASOM,PULIMPALLOKKONAM,MULAKKALATHUKAVU PO KILIMANOOR', NULL, 'KOLLAM', 691536, '1733812273.jpg', 1, '2024-12-10 06:31:13', '2024-12-10 06:31:13', NULL),
(65, 108, '956253', 101, '2003-11-13', '9539135704', 'remyakrishna@gmail.com', 2, 13, 1, 1, 7, 'WMH1304', NULL, 'CHARUVILA PUTHEN VEEDU,VALUPACHA,PULIPPARA PO KADAKKAL', NULL, 'KOLLAM', 691536, '1733812706.jpg', 1, '2024-12-10 06:38:26', '2024-12-10 06:38:26', NULL),
(66, 109, '355339', 101, '2003-06-09', '8547838356', 'nandhanah@gmail.com', 2, 11, 1, 1, 7, 'WMH1305', NULL, 'SANTHI VILASAM,PULLANJIYODE,KADAKKAL', NULL, 'KOLLAM', 691536, '1733813819.jpg', 1, '2024-12-10 06:56:59', '2024-12-10 06:56:59', NULL),
(67, 110, '599301', 101, '2006-09-08', '9562508122', 'fathimashajahan@gmail.com', 2, 7, 1, 1, 7, 'WMH1306', NULL, 'SIDDIQUE MANZIL,MUTTATHUKONAM,POREDOM', NULL, 'KOLLAM', 691536, '1733814337.jpg', 1, '2024-12-10 07:05:37', '2024-12-10 07:05:37', NULL),
(68, 111, '764309', 101, '1989-05-20', '9946508217', 'shameenaf@gmail.com', 2, 7, 1, 1, 7, 'WMH 1307', NULL, 'MAMMOOTTIL VEEDU,CHENNAMCODE,CHEKKAKONAMPO KARAKULAM', NULL, 'KOLLAM', 691536, '1733815206.jpg', 1, '2024-12-10 07:20:06', '2024-12-10 07:20:06', NULL),
(69, 112, '821867', 101, '2003-01-04', '9947014701', 'subhana@gmail.com', 2, 8, 1, 2, 8, 'WMH1308', NULL, 'S M MANZIL,SASTHAMPARA,PUTHUKULANGARA PO TVPM', NULL, 'KOLLAM', 691536, '1733815589.jpg', 1, '2024-12-10 07:26:29', '2024-12-10 07:26:29', NULL),
(71, 117, '209524', 101, '1993-03-16', '9048319048', 'reshmaraj123@gmail.com', 2, 7, 1, 1, 7, 'WMH1309', NULL, 'AKSHAY ,MANDIRAM CHETTIYARKONAM ,KADAKKAL', NULL, 'KOLLAM', 691534, '1733823335.jpg', 1, '2024-12-10 09:35:35', '2024-12-10 09:35:35', NULL),
(72, 118, '384288', 101, '1991-03-14', '7025407793', 'amruthamnairm@gmail.com', 2, 7, 1, 1, 7, 'WMH1310', NULL, 'USHA BHAVAN ,KALLLADAKKARIKKAKAM,MADATHARA PO', NULL, 'KOLLAM', 691534, '1733823535.jpg', 1, '2024-12-10 09:38:55', '2024-12-10 09:38:55', NULL),
(73, 119, '893921', 101, '1997-03-31', '9072979042', 'parvathybs@gmail.com', 2, 4, 1, 1, 7, 'WMH1311', NULL, 'KOCHUPUTHOORKONAM,VETTUVAZHY,KURIYODE PO', NULL, 'KOLLAM', 691534, '1733823768.jpg', 1, '2024-12-10 09:42:48', '2024-12-10 09:42:48', NULL),
(74, 120, '356193', 101, '2003-09-29', '9645248632', 'ameenah@gmail.com', 2, 4, 1, 1, 7, 'WMH1312', NULL, 'AJINA MANZIL,KUMMIL,KADAKKAL', NULL, 'KOLLAM', 691534, '1733823990.jpg', 1, '2024-12-10 09:46:30', '2024-12-10 09:46:30', NULL),
(75, 121, '725949', 101, '2007-05-16', '9539253941', 'shesna@gmail.com', 2, 8, 1, 2, 8, 'WMH1313', NULL, 'KURAVAN VILAKTHU VEEDU,NELLANADU,VENJARAMOODU', NULL, 'KOLLAM', 691534, '1733824140.jpg', 1, '2024-12-10 09:49:00', '2024-12-10 09:49:00', NULL),
(76, 122, '834437', 101, '2006-05-12', '9747151496', 'vrindhavs@gmail.com', 2, 4, 1, 1, 7, 'WMH1314', NULL, 'SUNIL BHAVAN,KUTTIKKADU PO KADAKKAL', NULL, 'KOLLAM', 691534, '1733824279.jpg', 1, '2024-12-10 09:51:19', '2024-12-10 09:51:19', NULL),
(77, 123, '498264', 101, '2001-05-28', '9747424102', 'sumayyah@gmail.com', 2, 7, 1, 1, 7, 'WMH1315', NULL, 'FATHIMA MANZIL,WEST VAYALA PO KOTTUKKAL', NULL, 'KOLLAM', 691534, '1733824379.jpg', 1, '2024-12-10 09:52:59', '2024-12-10 09:52:59', NULL),
(78, 124, '384073', 101, '1979-05-04', '7306298703', 'swapna@gmail.com', 2, 7, 1, 1, 7, 'WMH1316', NULL, 'KARIKKOTTU,POTHENPURAM,PAMPADY', NULL, 'KOLLAM', 691534, NULL, 1, '2024-12-10 09:58:58', '2024-12-10 09:58:58', NULL),
(79, 125, '857738', 101, '2002-12-26', '9605696886', 'afinayousuf@gmail.com', 2, 7, 1, 1, 7, 'WMH1317', NULL, 'KOCHUPADINJATTHATHIL VEEDU,CHUNDA CHERUKAULAM PO', NULL, 'KOLLAM', 691534, '1733825199.jpg', 1, '2024-12-10 10:06:39', '2024-12-10 10:06:39', NULL),
(80, 126, '868217', 101, '1989-05-11', '9207049018', 'jithatnair@gmail.com', 2, 7, 1, 1, 7, 'WMH 1318', NULL, 'PADINJATTATHIL VEEDU,CHARIPPARAMBU PO KADAKKAL', NULL, 'KOLLAM', 691534, '1733826394.jpg', 1, '2024-12-10 10:26:34', '2024-12-10 10:26:34', NULL),
(81, 127, '681272', 101, '2004-05-21', '7034359941', 'siyafathima2004@gmail.com', 2, 7, 1, 1, 7, 'WMH1319', NULL, 'ALHAMDTH,VAZHODU, THATTTHAUMALA', NULL, 'KOLLAM', 691534, '1733826561.jpg', 1, '2024-12-10 10:29:21', '2024-12-10 10:29:21', NULL),
(82, 128, '104902', 101, '2005-11-04', '9048276816', 'anakharenjith@gmail.com', 2, 4, 1, 1, 7, 'WMH1320', NULL, 'NIKESH BHAVAN,KRISHNAN KUNNU, MALACKAL', NULL, NULL, 691534, '1733826742.jpg', 1, '2024-12-10 10:32:22', '2024-12-10 10:32:22', NULL),
(83, 129, '751694', 101, '2006-06-02', '7736779358', 'sajnas@gmail.com', 2, 7, 1, 1, 7, 'WMH1321', NULL, 'SAJEENA MANZIL,PULLOORMUKK,KALLAMBALAMPPO NAVAIKKULAM', NULL, 'KOLLAM', 691534, '1733826992.jpg', 1, '2024-12-10 10:36:32', '2024-12-10 10:36:32', NULL),
(84, 130, '153138', 101, '1998-09-17', '9946764061', 'rizana@gmail.com', 2, 15, 1, 1, 7, 'WMH1322', NULL, 'SHAJI NIVAS, CHEMPAKASSERY,THATTATHUMALA', NULL, 'KOLLAM', 691534, '1733827581.jpg', 1, '2024-12-10 10:46:21', '2024-12-10 10:46:21', NULL),
(85, 131, '549289', 101, '2000-11-23', '9072147391', 'fathimasaifudheen@gmail.com', 2, 15, 1, 1, 7, 'WMH1323', NULL, 'SHEFNA MANZIL,VANCHIYOOR PO ALAMCODE ,TRIVANDRUM', NULL, 'KOLLAM', 691534, '1733827700.jpg', 1, '2024-12-10 10:48:20', '2024-12-10 10:48:20', NULL),
(86, 132, '107980', 101, '2000-04-27', '7902890525', 'subinas@gmail.com', 2, 15, 1, 1, 7, 'WMH1402', NULL, 'SUDHEENA MANZIL,PALLIMUKKU,KURIYODE', NULL, 'KOLLAM', 691534, '1733827837.jpg', 1, '2024-12-10 10:50:37', '2024-12-10 10:50:37', NULL),
(87, 133, '626768', 101, '1991-05-28', '7902851663', 'sameena@gmail.com', 2, 15, 1, 1, 7, 'WMH1403', NULL, 'NAZIYA MANZIL,KATTUMPURAM PO KALLAMBALAM', NULL, 'KOLLAM', 691534, '1733827958.jpg', 1, '2024-12-10 10:52:38', '2024-12-10 10:52:38', NULL),
(88, 134, '978050', 101, '2000-03-11', '9778421864', 'simi@gmail.com', 2, 15, 1, 1, 7, 'WMH1404', NULL, 'AMINA MANZIL,KANNAMKODE,CHADAYAMANGALAM', NULL, 'KOLLAM', 691534, '1733828057.jpg', 1, '2024-12-10 10:54:17', '2024-12-10 10:54:17', NULL),
(89, 135, '332523', 101, '2005-08-24', '9746037562', 'jibreelmuhammed@gmail.com', 2, 15, 1, 1, 7, 'WMH1405', NULL, 'YASEEN MANZIL,MADATHARA PO CHITHARA KOLLAM', NULL, 'KOLLAM', 691534, '1733828168.jpg', 1, '2024-12-10 10:56:08', '2024-12-10 10:56:08', NULL),
(90, 136, '420449', 101, '1998-06-11', '7592994626', 'alahadkhan@gmail.com', 2, 15, 1, 1, 7, 'WMH1407', NULL, 'PANDARAVILA VEEDU,KARALIKONAM,ARKKANNOOR PO ELAMADU', NULL, 'KOLLAM', 691534, NULL, 1, '2024-12-10 10:58:50', '2024-12-10 10:58:50', NULL),
(91, 137, '990681', 101, '2004-08-09', '8590559728', 'anandhuar@gmail.com', 2, 15, 1, 1, 7, 'WMH1407', NULL, 'CHARUVILA PUTHEN VEEDU,NAINAMKONAM,PARAYATHUKONAM PO TRIVANDRUM', NULL, 'KOLLAM', 691534, '1733828466.jpg', 1, '2024-12-10 11:01:06', '2024-12-10 11:01:06', NULL),
(92, 138, '418044', 101, '2003-12-10', '9995089551', 'FATHIMA', 2, 15, 1, 1, 7, 'WMH1408', NULL, 'JALEELA MANZIL,ANCHUMUKKU,KADAKKAL', NULL, 'KOLLAM', 691534, '1733828646.jpg', 1, '2024-12-10 11:04:06', '2024-12-10 11:04:06', NULL),
(93, 139, '917211', 101, '2003-05-20', '8896778800', 'alfiyasmnjapra@gmail.com', 2, 7, 1, 1, 9, 'WMH1409', NULL, 'SHIBU MANZIL,MANJAPPARA,THALIKKUZHY POPULIMATH VILLAGE,THALIKKUZHY', NULL, 'KOLLAM', 691534, '1733829376.jpg', 1, '2024-12-10 11:16:16', '2024-12-10 11:16:16', NULL),
(94, 140, '402062', 101, NULL, '9946161813', 'mhdthoufeeq@gmail.com', 2, 7, 1, 1, 7, 'WMH1410', NULL, 'T A MANZIL,EETTIMMOODU PULIYOORKONAM', NULL, 'KOLLAM', 691534, '1733829503.jpg', 1, '2024-12-10 11:18:23', '2024-12-10 11:18:23', NULL),
(95, 143, '274403', 101, '1999-04-27', '8136990852', 'shabnanoushad1234@gmail.com', 2, 7, 1, NULL, 9, 'WMH 1411', NULL, 'SHABNA MANZIL,CHINGELI,PULIPPARA PO', NULL, 'KOLLAM', 691536, '1736925324.jpg', 1, '2025-01-15 07:15:24', '2025-01-15 07:15:24', NULL),
(97, 149, '263080', 101, NULL, '8129471788', 'testdata123@gmail.com', 2, 3, 1, 1, 1, 'wm2024812944', NULL, 'kollam, kadakkal', NULL, 'kollam', NULL, '1738991482.png', 1, '2025-02-08 05:11:22', '2025-02-08 05:11:22', NULL),
(98, 150, '831438', 101, '1994-04-03', '9061638687', 'basiman@gmail.com', 3, 16, 6, 8, 14, 'WMPMNA1', NULL, 'NEDUMKANDATHIL', 'PERINTHALMMANNA', NULL, 691538, NULL, 1, '2025-02-18 08:34:42', '2025-02-18 08:34:42', NULL),
(99, 151, '784819', 101, '1981-05-25', '8304031094', 'naseemakooriyadan@gmail.com', 3, 16, 6, 8, 14, 'WMPMNA2', NULL, 'MUNDARAYIL', 'VALAMBOOR PO', 'MALAPPURAM', 691538, NULL, 1, '2025-02-18 08:37:37', '2025-02-18 08:37:37', NULL),
(100, 154, '881856', 101, NULL, '2222244433', 'testpurpose@gmail.com', 2, 3, 1, 1, 1, 'wmdemo123', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2025-05-21 06:07:36', '2025-05-21 06:07:36', NULL),
(109, 164, '783398', 101, '2001-02-24', '9995890659', 'anulekshmibs@gmail.com', 2, 6, 1, 1, 1, 'WMH1004', NULL, 'ANAND VILASAM, POTHENPARA,CHANNNAPETTA PO KOLLAM', NULL, 'KOLLAM', 691535, NULL, 1, '2025-06-08 04:36:14', '2025-06-08 04:36:14', NULL),
(106, 161, '615112', 101, NULL, '9927237461', 'testdata123456@gmail.com', 1, 15, 1, 1, 15, 'wm20250202', NULL, 'uu', NULL, 'tvm', 695525, NULL, 1, '2025-06-06 06:49:29', '2025-06-06 06:49:29', NULL),
(107, 162, '506851', 101, '2001-01-19', '9847920182', 'anamikar@gmail.com', 2, 6, 1, 1, 1, 'WMH1002', NULL, 'PADMATHEERTHAM , THERUVINBHAGOM,POREDOM PO', NULL, 'KOLLAM', 691535, NULL, 1, '2025-06-08 04:30:14', '2025-06-08 04:30:14', NULL),
(108, 163, '182485', 101, '2005-03-12', '9207946746', 'binujabr@gmail.com', 2, 9, 1, 1, 1, 'WMH1003', NULL, 'BINU SADANAM, KALAYAM ,KURIYODE PO', NULL, 'KOLLAM', 691535, NULL, 1, '2025-06-08 04:32:45', '2025-06-08 04:32:45', NULL),
(110, 165, '602657', 101, '2006-05-06', '8714033926', 'arunimaudayan@gmail.com', 2, 11, 1, 1, 5, 'wmh1224', NULL, 'shifana manzil,mathira', NULL, 'KOLLAM', 691535, NULL, 1, '2025-06-08 05:18:16', '2025-06-08 05:18:16', NULL),
(111, 166, '260228', 101, '2006-06-10', '8589097303', 'hasnas@gmail.com', 2, 9, 1, 1, 5, 'wmh1206', NULL, 'palavilayil 3 j house nadayara', NULL, 'KOLLAM', 691535, NULL, 1, '2025-06-08 06:04:31', '2025-06-08 06:04:31', NULL),
(112, 169, '601130', 101, '1994-05-30', '9539054208', 'seminanl123@gmail.com', 1, 13, 1, 1, 15, 'WMKDL2', NULL, 'NASIYA MANZIL,KATTUMPURAMPO KALLARA', 'kallara', 'KOLLAM', 691534, NULL, 1, '2025-06-16 10:04:45', '2025-06-16 10:08:51', NULL),
(113, 170, '658850', 101, '1992-10-13', '09544224568', 'nayanahnair@gmail.com', 1, 5, 1, 1, 15, 'WMKDL9', NULL, 'THUNDU VILAKATHU VEEDU PANGODE KALLARA', NULL, 'KOLLAM', 691535, NULL, 1, '2025-06-16 10:15:18', '2025-06-16 10:15:18', NULL),
(114, 171, '691715', 101, '1997-09-22', NULL, 'najmamujeeb123@gmail.com', 1, 5, 1, 1, 15, 'WMKDL10', NULL, 'AKBAR MANZIL,KADAVARAM', 'ALAYAMON', 'KOLLAM', 691535, NULL, 1, '2025-06-16 10:18:41', '2025-06-16 10:23:04', NULL),
(115, 172, '863827', 101, '2005-06-23', '09744760362', 'ahalya123@gmail.com', 1, 5, 1, 1, 15, 'WMKDL12', NULL, 'IDAKKUNNIL VEEDU VAYALA KOTTUKKAL', 'KOTTUKKAL', 'KOLLAM', 691535, NULL, 1, '2025-06-16 10:26:58', '2025-06-16 10:26:58', NULL),
(116, 173, '948717', 101, '2003-06-25', '9633793948', 'husna123@gmail.com', 1, 9, 1, 1, 15, 'WMKDL5', NULL, 'DARUL ISHQ,VALLABHAN KUNNU,KK KONAM', 'PALLICKAL', 'KOLLAM', 691535, NULL, 1, '2025-06-16 10:30:25', '2025-06-16 10:30:25', NULL),
(117, 174, '385419', 101, '2002-12-16', '8129974508', 'aswin123@gmail.com', 1, 5, 1, 1, 15, 'WMKDL8', NULL, 'a s nivas njandoorkonam', 'tvpm', 'KOLLAM', 691535, NULL, 1, '2025-06-16 10:42:48', '2025-06-16 10:43:43', NULL),
(118, 175, '887407', 101, '2003-06-09', '7025713002', 'shibina123@gmail.com', 1, 5, 1, 1, 15, 'WMKDL7', NULL, 'NALUCENT COLONY,CHANTHAKUNNU,PANGODE', NULL, 'KOLLAM', 691535, NULL, 1, '2025-06-16 10:46:40', '2025-06-16 10:46:40', NULL),
(119, 176, '810401', 101, '1994-05-01', NULL, 'aswathi123@gmail.com', 1, 5, 1, 1, 15, 'WMKDL6', NULL, 'AR BHAVAN,KALAYAPURAM,KOLLAYIL PO', 'MADATHARA', 'KOLLAM', 691535, NULL, 1, '2025-06-16 10:51:15', '2025-06-16 10:52:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_payments`
--

CREATE TABLE `student_payments` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `invoice_number` varchar(191) NOT NULL,
  `pay_amount` decimal(10,2) NOT NULL,
  `installment` int(11) DEFAULT NULL,
  `current_installment` decimal(10,2) DEFAULT NULL,
  `due_amount` decimal(10,2) DEFAULT 0.00,
  `amount` decimal(10,2) NOT NULL,
  `payment_date` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_payments`
--

INSERT INTO `student_payments` (`id`, `student_id`, `course_id`, `invoice_number`, `pay_amount`, `installment`, `current_installment`, `due_amount`, `amount`, `payment_date`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 100, 1, '1', 10000.00, 1, 9750.00, -250.00, 48750.00, '2025-05-28', 1, '2025-05-28 07:27:19', '2025-05-28 07:27:19', NULL),
(2, 100, 1, '2', 7250.00, 2, 9750.00, 2500.00, 48750.00, '2025-05-28', 1, '2025-05-28 07:28:30', '2025-05-28 07:28:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_purchased_courses`
--

CREATE TABLE `student_purchased_courses` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `course_total_amount` decimal(10,0) DEFAULT NULL,
  `installment` int(11) DEFAULT NULL,
  `purchased_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_purchased_courses`
--

INSERT INTO `student_purchased_courses` (`id`, `student_id`, `course_id`, `course_total_amount`, `installment`, `purchased_date`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 2, NULL, NULL, '2024-12-06 08:43:03', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(2, 2, 2, NULL, NULL, '2024-12-06 08:46:14', '2024-12-10 12:00:54', '2025-01-13 08:33:14', NULL),
(3, 3, 2, NULL, NULL, '2024-12-06 08:48:25', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(4, 4, 2, NULL, NULL, '2024-12-06 08:51:11', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(5, 5, 2, NULL, NULL, '2024-12-06 08:55:29', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(6, 6, 1, NULL, NULL, '2024-12-06 09:09:27', '2024-12-10 12:00:54', '2025-01-04 04:34:18', NULL),
(7, 7, 2, NULL, NULL, '2024-12-06 10:23:20', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(8, 8, 1, NULL, NULL, '2024-12-06 10:29:56', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(9, 9, 1, NULL, NULL, '2024-12-06 10:36:09', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(10, 10, 1, NULL, NULL, '2024-12-06 10:38:52', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(11, 11, 2, NULL, NULL, '2024-12-06 10:42:37', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(12, 12, 1, NULL, NULL, '2024-12-06 10:47:25', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(13, 13, 1, NULL, NULL, '2024-12-06 10:55:31', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(14, 14, 1, NULL, NULL, '2024-12-06 11:14:35', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(15, 15, 1, NULL, NULL, '2024-12-06 11:22:19', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(16, 16, 1, NULL, NULL, '2024-12-06 11:26:28', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(17, 17, 1, NULL, NULL, '2024-12-06 11:44:30', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(18, 18, 2, NULL, NULL, '2024-12-06 11:47:20', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(19, 19, 1, NULL, NULL, '2024-12-09 04:39:04', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(20, 20, 2, NULL, NULL, '2024-12-09 05:07:37', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(21, 21, 1, NULL, NULL, '2024-12-09 05:11:28', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(22, 22, 1, NULL, NULL, '2024-12-09 05:18:04', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(23, 23, 2, NULL, NULL, '2024-12-09 05:22:53', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(24, 24, 1, NULL, NULL, '2024-12-09 05:25:27', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(25, 25, 1, 52000, 5, '2024-12-09 05:29:07', '2024-12-10 12:00:54', '2025-03-05 10:44:53', NULL),
(26, 26, 1, NULL, NULL, '2024-12-09 06:04:02', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(27, 27, 1, NULL, NULL, '2024-12-09 06:59:38', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(28, 28, 1, 47086, 9, '2024-12-09 07:01:49', '2024-12-10 12:00:54', '2025-06-05 05:49:34', NULL),
(29, 29, 1, NULL, NULL, '2024-12-09 07:07:02', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(30, 30, 1, NULL, NULL, '2024-12-09 07:09:40', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(31, 31, 1, NULL, NULL, '2024-12-09 07:17:31', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(32, 32, 1, 52000, 5, '2024-12-09 07:24:31', '2024-12-10 12:00:54', '2025-03-17 04:29:43', NULL),
(33, 33, 1, NULL, NULL, '2024-12-09 07:28:55', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(34, 34, 1, NULL, NULL, '2024-12-09 07:32:10', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(35, 35, 2, NULL, NULL, '2024-12-09 07:35:56', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(36, 36, 1, NULL, NULL, '2024-12-09 08:17:10', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(37, 37, 1, NULL, NULL, '2024-12-09 08:19:54', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(38, 38, 1, NULL, NULL, '2024-12-09 08:23:28', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(39, 39, 1, NULL, NULL, '2024-12-09 08:29:15', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(40, 40, 2, NULL, NULL, '2024-12-09 08:44:04', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(41, 41, 1, 22887, 5, '2024-12-09 08:46:36', '2024-12-10 12:00:54', '2025-06-08 04:27:25', NULL),
(42, 42, 1, NULL, NULL, '2024-12-09 08:54:00', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(43, 43, 2, NULL, NULL, '2024-12-09 08:59:53', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(44, 44, 2, NULL, NULL, '2024-12-09 09:06:09', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(45, 45, 2, NULL, NULL, '2024-12-09 09:16:36', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(46, 46, 1, NULL, NULL, '2024-12-09 09:27:18', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(47, 47, 1, NULL, NULL, '2024-12-09 09:44:59', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(48, 48, 1, NULL, NULL, '2024-12-09 09:58:14', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(49, 49, 2, NULL, NULL, '2024-12-09 10:10:40', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(50, 50, 1, NULL, NULL, '2024-12-09 10:55:43', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(51, 51, 2, 100633, 9, '2024-12-09 11:02:30', '2024-12-10 12:00:54', '2025-06-17 05:08:33', NULL),
(52, 52, 1, NULL, NULL, '2024-12-09 11:13:46', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(53, 53, 2, NULL, NULL, '2024-12-09 11:16:45', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(54, 54, 2, NULL, NULL, '2024-12-09 11:21:55', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(55, 55, 1, NULL, NULL, '2024-12-09 11:24:57', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(56, 56, 1, NULL, NULL, '2024-12-09 11:30:53', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(57, 57, 1, NULL, NULL, '2024-12-09 11:34:31', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(58, 58, 1, NULL, NULL, '2024-12-09 11:36:54', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(59, 59, 2, NULL, NULL, '2024-12-09 11:40:22', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(60, 60, 2, NULL, NULL, '2024-12-10 04:31:20', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(61, 61, 1, NULL, NULL, '2024-12-10 04:35:22', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(62, 62, 2, NULL, NULL, '2024-12-10 04:37:54', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(63, 63, 1, NULL, NULL, '2024-12-10 06:02:32', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(64, 64, 1, NULL, NULL, '2024-12-10 06:31:13', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(65, 65, 1, NULL, NULL, '2024-12-10 06:38:26', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(66, 66, 1, NULL, NULL, '2024-12-10 06:56:59', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(67, 67, 1, NULL, NULL, '2024-12-10 07:05:37', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(68, 68, 1, NULL, NULL, '2024-12-10 07:20:06', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(69, 69, 2, NULL, NULL, '2024-12-10 07:26:29', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(70, 71, 1, NULL, NULL, '2024-12-10 09:35:35', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(71, 72, 1, NULL, NULL, '2024-12-10 09:38:55', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(72, 73, 1, NULL, NULL, '2024-12-10 09:42:48', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(73, 74, 1, NULL, NULL, '2024-12-10 09:46:30', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(74, 75, 2, NULL, NULL, '2024-12-10 09:49:00', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(75, 76, 1, NULL, NULL, '2024-12-10 09:51:19', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(76, 77, 1, NULL, NULL, '2024-12-10 09:52:59', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(77, 78, 1, NULL, NULL, '2024-12-10 09:58:58', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(78, 79, 1, NULL, NULL, '2024-12-10 10:06:39', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(79, 80, 1, NULL, NULL, '2024-12-10 10:26:34', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(80, 81, 1, NULL, NULL, '2024-12-10 10:29:21', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(81, 82, 1, NULL, NULL, '2024-12-10 10:32:22', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(82, 83, 1, NULL, NULL, '2024-12-10 10:36:32', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(83, 84, 1, NULL, NULL, '2024-12-10 10:46:21', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(84, 85, 1, NULL, NULL, '2024-12-10 10:48:20', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(85, 86, 1, NULL, NULL, '2024-12-10 10:50:37', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(86, 87, 1, NULL, NULL, '2024-12-10 10:52:38', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(87, 88, 1, NULL, NULL, '2024-12-10 10:54:17', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(88, 89, 1, NULL, NULL, '2024-12-10 10:56:08', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(89, 90, 1, NULL, NULL, '2024-12-10 10:58:50', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(90, 91, 1, NULL, NULL, '2024-12-10 11:01:06', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(91, 92, 1, 42900, 5, '2024-12-10 11:04:06', '2024-12-10 12:00:54', '2025-01-21 10:22:19', NULL),
(92, 93, 1, NULL, NULL, '2024-12-10 11:16:16', '2024-12-10 12:00:54', '2024-12-10 12:00:54', NULL),
(93, 94, 1, NULL, NULL, '2024-12-10 11:18:23', '2024-12-10 12:00:54', '2025-01-15 07:16:17', NULL),
(94, 95, 1, 52000, 5, '2025-01-15 07:15:24', '2025-01-15 07:15:24', '2025-01-21 09:56:34', NULL),
(95, 96, 1, 48750, 5, '2025-02-08 05:05:25', '2025-02-08 05:05:25', '2025-02-08 05:05:25', NULL),
(96, 97, 1, 48750, 5, '2025-02-08 05:11:22', '2025-02-08 05:11:22', '2025-02-08 05:11:22', NULL),
(97, 98, 8, 4800, 1, '2025-02-18 08:34:42', '2025-02-18 08:34:42', '2025-02-18 08:34:42', NULL),
(98, 99, 8, 4800, 1, '2025-02-18 08:37:37', '2025-02-18 08:37:37', '2025-02-18 08:37:37', NULL),
(99, 100, 1, 48750, 5, '2025-05-21 06:07:36', '2025-05-21 06:07:36', '2025-06-02 13:25:12', NULL),
(105, 106, 1, 42900, 5, '2025-06-06 06:49:29', '2025-06-06 06:49:29', '2025-06-06 06:49:29', NULL),
(109, 110, 1, 22887, 5, '2025-06-08 05:18:16', '2025-06-08 05:18:16', '2025-06-08 05:18:16', NULL),
(108, 109, 1, 33228, 5, '2025-06-08 04:36:14', '2025-06-08 04:36:14', '2025-06-08 04:36:14', NULL),
(107, 108, 1, 27164, 5, '2025-06-08 04:32:45', '2025-06-08 04:32:45', '2025-06-08 04:32:45', NULL),
(106, 107, 1, 33228, 5, '2025-06-08 04:30:14', '2025-06-08 04:30:14', '2025-06-08 04:30:14', NULL),
(110, 111, 1, 27164, 5, '2025-06-08 06:04:31', '2025-06-08 06:04:31', '2025-06-08 06:04:31', NULL),
(111, 112, 1, 65000, 5, '2025-06-16 10:04:45', '2025-06-16 10:04:45', '2025-06-16 10:08:51', NULL),
(112, 113, 1, 24050, 5, '2025-06-16 10:15:18', '2025-06-16 10:15:18', '2025-06-16 10:15:18', NULL),
(113, 114, 1, 24050, 5, '2025-06-16 10:18:41', '2025-06-16 10:18:41', '2025-06-16 10:23:04', NULL),
(114, 115, 1, 24050, 5, '2025-06-16 10:26:58', '2025-06-16 10:26:58', '2025-06-16 10:26:58', NULL),
(115, 116, 1, 27164, 5, '2025-06-16 10:30:25', '2025-06-16 10:30:25', '2025-06-16 10:30:25', NULL),
(116, 117, 1, 24050, 5, '2025-06-16 10:42:48', '2025-06-16 10:42:48', '2025-06-16 10:43:43', NULL),
(117, 118, 1, 24050, 5, '2025-06-16 10:46:40', '2025-06-16 10:46:40', '2025-06-16 10:46:40', NULL),
(118, 119, 1, 24050, 5, '2025-06-16 10:51:15', '2025-06-16 10:51:15', '2025-06-16 10:52:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_wishlisted_courses`
--

CREATE TABLE `student_wishlisted_courses` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `wishlisted_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tutors`
--

CREATE TABLE `tutors` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `mobile_no` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `city` varchar(150) DEFAULT NULL,
  `pincode` varchar(150) DEFAULT NULL,
  `address_1` varchar(255) DEFAULT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `delete_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tutors_tags`
--

CREATE TABLE `tutors_tags` (
  `id` int(11) NOT NULL,
  `tutor_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `mobile_no` varchar(50) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `is_student` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `mobile_no`, `password`, `type`, `remember_token`, `is_student`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin User', 'admin@gmail.com', NULL, NULL, '$2y$10$WEu6aWx6uN8K7WoiLMALFObXBlLcgeq6xRhV1BmlzG5lADfq0CLtm', 1, NULL, 0, '2023-04-26 12:51:49', '2023-04-26 12:51:49', NULL),
(2, 'Manager User', 'manager@gmail.com', NULL, NULL, '$2y$10$BnEbkGVxnf4wvmvEeXu19.KWd3zZfL9TGbjen1nHpZ8dGOqWjweGy', 2, NULL, 0, '2023-04-26 12:51:50', '2023-04-26 12:51:50', NULL),
(3, 'User', 'user@gmail.com', NULL, NULL, '$2y$10$Jibxcxtmf.4Gv3Al0IHx7uaHvp85pJdvs1CnYCqk4yO7yxLk0PSbG', 2, NULL, 0, '2023-04-26 12:51:50', '2023-04-26 12:51:50', NULL),
(5, 'Sandeep', 'sandeep@gmail.com', NULL, NULL, '$2y$10$P9/IM0bhu1OxTQRf3YOHUOwnJJSOLF.YKxWvkIv/B3MOqCwj5UaSa', 0, NULL, 0, '2023-05-11 09:49:45', '2024-03-10 04:48:21', NULL),
(9, 'Student 1', 'student1@gmail.com', NULL, '8765432109', '$2y$10$6CAXOaT0OEyiVVREDQl6fuQIEjYI4CUrbV2pHWGeJokeNAgdeCIcK', 0, NULL, 1, '2023-05-13 04:33:45', '2024-08-25 10:12:06', NULL),
(10, 'vipinkumar v', 'vipin123@gmail.com', NULL, '8129471721', '$2y$10$3Jjp61kKmf8xZSRdB2q6MuFhsodfHoJSVZMWwWYMb./np1tGaMOLO', 0, NULL, 1, '2023-08-08 17:16:32', '2023-08-08 17:16:32', NULL),
(11, 'Lael Bird', 'gefekigi@mailinator.com', NULL, '+1 (465) 259-3423', '$2y$10$x23XnU0Kxbt3KXer.09XE.zwecAa8jPvbhIIqgskykca/.C3mfPVO', 0, NULL, 1, '2024-09-04 10:20:40', '2024-09-04 10:20:40', NULL),
(12, 'vipin kumar', 'vipinmultysense@gmail.com', NULL, '8129471721', '$2y$10$nqj61SgG/lzZ85rLR0Q10.mWhhPDCX9E/QbUlpuuvB.SyT1SCKAM2', 0, NULL, 1, '2024-10-17 03:43:42', '2024-10-17 03:43:42', NULL),
(13, 'abhay', 'abhay@gmail.com', NULL, '8129471778', '$2y$10$RehdJbG0pDG16ZpyH6gS/OxdAcRB1CWiJ5E3U4SE5XaH7vSVVku4u', 0, NULL, 1, '2024-10-17 03:45:35', '2024-10-17 03:45:35', NULL),
(14, 'manu', 'manu@gmail.com', NULL, '8129471767', '$2y$10$asrQh5XM3n1.n94vN4Bzwe0Ep2ZDWVRqywqIjhkJ2XZC8cxovOrQ6', 0, NULL, 1, '2024-10-21 05:50:02', '2024-10-21 05:50:02', NULL),
(21, 'vipinkumar', 'vipinpvr@gmail.com', NULL, '8129471745', '$2y$10$pA/YAEAGsy7d4J3.M2FMAevSPYln0iQE18vOe5lh/XNjAHhqSKOWy', 0, NULL, 1, '2024-10-26 01:48:17', '2024-10-26 03:04:08', NULL),
(20, 'wealthmaxima kadakkal', 'wealthmaximakadakkal@gmail.com', NULL, '9744896970', '$2y$10$M.JjncVTJXzFMXeeSiTZFewwOsVpuEeCru.vofc7i4GAae8bL4atS', 1, NULL, 0, '2024-10-22 23:25:14', '2024-12-05 10:42:55', NULL),
(38, 'Anamika raveendran', 'anamika@gmail.com', NULL, '9847920182', '$2y$10$mKIbvMW5Vdc.lCCICzWxa.5g0OmAL6o1GQgANuSZE5exh8RU.45ha', 0, NULL, 1, '2024-12-06 08:46:14', '2024-12-06 08:46:14', NULL),
(48, 'Irfana', 'irfana123@gmail.com', NULL, '9645161194', '$2y$10$fa/upWVR03OT2wbB5lUucObXc9lMQc.3xMHu5IDyDoMNa4K2.U.ky', 0, NULL, 1, '2024-12-06 10:47:25', '2024-12-06 10:47:25', NULL),
(37, 'Dhanya  s', 'dhanya1234@gmail.com', NULL, '8943085181', '$2y$10$.utkKzncEJiFTFTULkL8.urRSFtrNtn4n5H/uzh7sh5KWo9tjmViu', 0, NULL, 1, '2024-12-06 08:43:03', '2024-12-06 08:43:03', NULL),
(25, 'Amina S', 'aaa4236189@gmail.com', NULL, '9074958092', '$2y$10$n8bNuIk0S/1rQu1jG4fLleofQIgyu33o6unP5NRoHE8/2/PdpH55C', 0, NULL, 1, '2024-11-12 02:09:51', '2024-11-12 04:46:33', NULL),
(26, 'Ajmi.B', 'gtechnilamel@gmail.com', NULL, NULL, '$2y$10$7KLpSGLf/.nAMNYI0LBHRufqCQpuFcuDo4Lqw6lTeZ1PHyu9aSzo6', 0, NULL, 1, '2024-11-25 08:21:32', '2024-11-25 08:21:32', NULL),
(27, 'Ajmi.B', 'gtecnilamel@gmail.com', NULL, NULL, '$2y$10$uztfGyAwPSjqa629pX6pGeiMEMFAj3q1eqf0kZwm3PHr4Ma61M0mG', 0, NULL, 1, '2024-11-25 08:22:42', '2024-11-25 08:22:42', NULL),
(28, 'Wealthmaxima Nilamel', 'wealthmaximanml@gmail.com', NULL, '9544196970', '$2y$10$IIX4KpPYdCDKQKqTzBq72OxugNxFizI9uU0uOmtL7DMlQSDbX0Y9i', 1, NULL, 0, '2024-11-28 17:57:11', '2024-12-03 09:47:40', NULL),
(29, 'Wealth Maxima College of Advanced Studies PMNA', 'perinthalmanna@wealthmaxima.in', NULL, '6235679325', '$2y$10$HxqiswamNDP5ROy/MkpWOuLfCNv2PzIgVXmlN..T9vvuTMNrYmkSC', 1, NULL, 0, '2024-11-29 06:12:34', '2024-12-05 10:40:10', NULL),
(43, 'Gopika d s', 'GOPIKA@gmail.com', NULL, '9072051880', '$2y$10$Ia5hygf8sOAY4lS9GtKPe.Ws1Mev3g4MHVdqxyoB83mJS.jR2deYS', 0, NULL, 1, '2024-12-06 10:23:20', '2024-12-06 10:23:20', NULL),
(42, 'Fathima Beevi N', 'fathiman@gmail.com', NULL, '9526387798', '$2y$10$uUXdEURE0jCYtQa7UzmTBuWxsw897Aezli9yU1M6Tgv2xobcg2.uO', 0, NULL, 1, '2024-12-06 09:09:27', '2025-01-04 04:34:18', NULL),
(41, 'Muhsina', 'muhsina@gmail.com', NULL, '9746703520', '$2y$10$Sqk8zD5J1XZgIQUdsqSLG.KWNetYXAaXoCSL8teSbwp3HzRXu5ds2', 0, NULL, 1, '2024-12-06 08:55:29', '2024-12-06 08:55:29', NULL),
(40, 'Anulekshmi', 'anu@gmail.com', NULL, '9539171189', '$2y$10$YJ8ssV30Tmiifhg8/MT0juGVStnaUu6pfAF97nFMSg0jPqriMrXCe', 0, NULL, 1, '2024-12-06 08:51:11', '2024-12-06 08:51:11', NULL),
(39, 'BINUJA', 'binuja@gmail.com', NULL, '9207946746', '$2y$10$e1DEwwrPSwGqGKJ/4nEv.Ourl5Ol9XypwbjVu79JOsNIdzfOoj65m', 0, NULL, 1, '2024-12-06 08:48:25', '2024-12-06 08:48:25', NULL),
(141, 'SHABNA NOUSHAD', 'shabnanoushad@gmail.com', NULL, '8136990852', '$2y$10$6uwcatGZj.zoWd9sNpEsEOkX0KUuAlf.TD0cTtQl9SnGv2PWLZ8oq', 0, NULL, 1, '2025-01-13 09:09:26', '2025-01-13 09:09:26', NULL),
(45, 'Amina s', 'aminas@gmail.com', NULL, '9074958092', '$2y$10$RsuNBWYy9H/LnASdBp4gNeqDs57u.0zqToKNWWyELTSrXrldFswEO', 0, NULL, 1, '2024-12-06 10:36:09', '2024-12-06 10:36:09', NULL),
(46, 'Arshad.Y', 'arshad123@gmail.com', NULL, '9946951352', '$2y$10$K0ejhUDC4l/WY4r.NAthTOJoTtLJhTtJNxFVrhEzyeK5iee3uIHyi', 0, NULL, 1, '2024-12-06 10:38:52', '2024-12-06 10:38:52', NULL),
(47, 'Devika', 'devika@gmail.com', NULL, '8714956568', '$2y$10$iv9abAb69MJ/5q04woKP0OZhW5HzXmuI1d2PqjhlEQnZNIsOdgE4u', 0, NULL, 1, '2024-12-06 10:42:37', '2024-12-06 10:42:37', NULL),
(60, 'ABHIRAMI S S', 'abhiramiss@gmail.com', NULL, '9526259324', '$2y$10$JltmuxMMr8dd6Th1f8KxT.TL6gdyAvzKa1P9525k07sPvJBhYzg26', 0, NULL, 1, '2024-12-09 05:07:37', '2024-12-09 05:07:37', NULL),
(50, 'VIJAYALEKSHMI', 'vijayalekshmi123@gmail.com', NULL, '9946500238', '$2y$10$MFHH5l0imoK.NAePCfkqAetnF0Q97X9ad28QmaQV3s4xkR9Y691Ui', 0, NULL, 1, '2024-12-06 10:55:31', '2024-12-06 10:55:31', NULL),
(51, 'ADITHYA', 'adithya@gmail.com', NULL, '9526559328', '$2y$10$sgpw5gzKW.O/cVMPUvf1Lu.VqwTVQA1WIYVMBpRqa3TbClGtj7XiK', 0, NULL, 1, '2024-12-06 11:14:35', '2024-12-06 11:14:35', NULL),
(52, 'FATHIMA V S', 'fathima@gmail.com', NULL, '7306852933', '$2y$10$fzrKh2Zv6GeWWyCN7ex2DekvXwtCHISDtWWnF.9EMMcG20bb7HkBm', 0, NULL, 1, '2024-12-06 11:22:19', '2024-12-06 11:22:19', NULL),
(53, 'ASHA B J', 'asha@gmail.com', NULL, '8129708031', '$2y$10$0Bzcx0Mcb0IX4RXksojJyuGQNceEuQ3GHtk5Hk7SFR0XDYhJPZxzu', 0, NULL, 1, '2024-12-06 11:26:28', '2024-12-06 11:26:28', NULL),
(54, 'ANUSREE A S', 'anusree@gmail.com', NULL, '7592930992', '$2y$10$DkWjcJALMr.0TTmuSJ4KFOUcM1KiY49wQ6u7tNGXJlKAuMZhMmNxW', 0, NULL, 1, '2024-12-06 11:44:30', '2024-12-06 11:44:30', NULL),
(55, 'POOJALEKSHMI', 'pooja@gmail.com', NULL, '9947885555', '$2y$10$E6dB/OVbkPT6OBjUxy7oru.tuKQAG7MsEzwtd5r5oMLn1pqhbCv4O', 0, NULL, 1, '2024-12-06 11:47:20', '2024-12-06 11:47:20', NULL),
(63, 'JASIYA', 'jesiya@gmail.com', NULL, '9744882376', '$2y$10$PCCWjFjdqgJwXL9rjOo2eOnGCEUQ/qUKyulrYEegDjhHABZPVQDGK', 0, NULL, 1, '2024-12-09 05:22:53', '2024-12-09 05:22:53', NULL),
(62, 'SHEREENA S', 'shereenas@gmail.com', NULL, '9778735270', '$2y$10$w5wjDhA3QIyoZJ.9Evo.ZevPRvSjHGt1baozYe9uBbzkFyi1VDIZC', 0, NULL, 1, '2024-12-09 05:18:04', '2024-12-09 05:18:04', NULL),
(61, 'AKHILA.L', 'akhilal@gmail.com', NULL, '9539844538', '$2y$10$gaDQV1AHcOPDmQso5oWUm.j0hlTOtmZXtkgfSpQz5vadr4Vt2swyW', 0, NULL, 1, '2024-12-09 05:11:28', '2024-12-09 05:11:28', NULL),
(59, 'NISHANA', 'nishananoushad@gmail.com', NULL, '9747971667', '$2y$10$sz8JYrSpEZOXg56IX/uIXOJKIG6F9WmAdLrQS6sBMVG0OfQHnbHEm', 0, NULL, 1, '2024-12-09 04:39:04', '2024-12-09 04:39:04', NULL),
(64, 'parvathy  L', 'parvathyl@gmail.com', NULL, '8848534280', '$2y$10$5wokt7JmRL0HJAKYoVLJuuUGnWO67kKGTW/DoorAqwMWAdwUDp6Je', 0, NULL, 1, '2024-12-09 05:25:27', '2024-12-09 05:25:27', NULL),
(65, 'AMRITHA', 'amritha@gmail.com', NULL, '8714817138', '$2y$10$eEfVfI6y3viiAhDxmM8nnuggQhPrf/RqK7gWq3JZp1KbBrSSyoH9W', 0, NULL, 1, '2024-12-09 05:29:07', '2025-03-05 10:44:53', NULL),
(66, 'MUHAMMED YASEEN', 'muhammedyaseen@gmail.com', NULL, '7736254680', '$2y$10$0z/AjcqQj.Z/h0646H/9KOJQXFRSJzmLzIzAquaFNT2nvrEWJeAbe', 0, NULL, 1, '2024-12-09 06:04:02', '2024-12-09 06:04:02', NULL),
(67, 'ALFIYA A S', 'alfiyaabbas@gmail.com', NULL, '94951978569', '$2y$10$8ATETbLK.SnNkkJ/0NOB8eRYhpDmv3faI.Gck7GkZV8KSMyN8an36', 0, NULL, 1, '2024-12-09 06:59:38', '2024-12-09 06:59:38', NULL),
(68, 'AJINA', 'ajinaa@gmail.com', NULL, '7559874104', '$2y$10$gAaOghVjCrLB.RUXjiACUuhCZXIL4MH8ZEOSoX1fTdlJzU3lSwuFi', 0, NULL, 1, '2024-12-09 07:01:49', '2024-12-09 07:01:49', NULL),
(69, 'SONA FATHIMA', 'sonafathima@gmail.com', NULL, '8089140045', '$2y$10$lmMxSIavlsWB3f2LQUcyDuedcEAVEZmNpj19ZMigl.h2AegAK4EaW', 0, NULL, 1, '2024-12-09 07:07:02', '2024-12-09 07:07:02', NULL),
(70, 'ANJALI', 'anjali@gmail.com', NULL, '8590247450', '$2y$10$AGWHRU71ZWgUtIkk4mq11uP3vAbSt.8oTq.1ad44I0APka..HAuJS', 0, NULL, 1, '2024-12-09 07:09:40', '2024-12-09 07:09:40', NULL),
(71, 'PUNNYA S', 'punya@gmail.com', NULL, '8848683296', '$2y$10$dptxavewP0VrF7QM2rJjXOcwOZ6NQL0yuLX/9KBj8SUp3MSCidNcS', 0, NULL, 1, '2024-12-09 07:17:31', '2024-12-09 07:17:31', NULL),
(72, 'ABHIRAMI PB', 'abhiramipb@gmail.com', NULL, '9539711905', '$2y$10$4coxH9TMuAeEU5stk5GXd.TJK1dt3Wo1cSad6PeWgVZP2fRyuES8K', 0, NULL, 1, '2024-12-09 07:24:31', '2025-03-17 04:29:43', NULL),
(73, 'ANUJA RAJ', 'anujaraj@gmail.com', NULL, '9746035775', '$2y$10$nytSS4tmT1MgxXeXaO9DNe2.4dmwBc6VuX9/RIuFDK0zF45S0tW7a', 0, NULL, 1, '2024-12-09 07:28:55', '2024-12-09 07:28:55', NULL),
(74, 'BISMIYA', 'Bismiya@gmail.com', NULL, '9633635397', '$2y$10$IXE9SbZeGsxGIAq4c3oMh.CUd33PtS7Zkc0EQ3BoVk.wz67JjINeS', 0, NULL, 1, '2024-12-09 07:32:10', '2024-12-09 07:32:10', NULL),
(75, 'ALFIYA  MUSTHAFA', 'alfiyamusthafa@gmail.com', NULL, '09544196970', '$2y$10$GPITmfQfaZjHRCy24EFJ.uxJRrQa2hK0JIwoMPB6mdwhqedcIkgbK', 0, NULL, 1, '2024-12-09 07:35:56', '2024-12-09 07:35:56', NULL),
(76, 'ARYA LM', 'aryalm@gmail.com', NULL, '7558074352', '$2y$10$0cc/F/7QvuXwYvhu24uZA.udBP1Kegk0JpY6KGrYDhw0ByVvFNolG', 0, NULL, 1, '2024-12-09 08:17:10', '2024-12-09 08:17:10', NULL),
(77, 'ANZY S', 'anzy@gmail.com', NULL, '8592006339', '$2y$10$i0hrmRuqy8pFcui1zcIAOeZieyvIRfmcu63gtmoW9U1NcLGYi4Cta', 0, NULL, 1, '2024-12-09 08:19:54', '2024-12-09 08:19:54', NULL),
(78, 'GOPIIKA S', 'gopikas@gmail.com', NULL, '9746050766', '$2y$10$uHtQrmrpapJozuo.ytWsW.Uqmd7jNZiIFDEZpec.JlzS4v77KCQUi', 0, NULL, 1, '2024-12-09 08:23:28', '2024-12-09 08:23:28', NULL),
(79, 'NOUFIYA  F', 'noufiyaf@gmail.com', NULL, '6235361031', '$2y$10$E/3yl9dYsvdf.EmTdflxTeXC6EsXDJZ2j8XEL5wfPCGPIkaNs1Kkq', 0, NULL, 1, '2024-12-09 08:29:15', '2024-12-09 08:29:15', NULL),
(80, 'ABHIRAMI R S', 'abhiramirs@gmail.com', NULL, '9747278922', '$2y$10$HWPYkHcBan.XoCtda7jWeux8Mn.5SVGb.riVFUbZA0FOU49azaq6u', 0, NULL, 1, '2024-12-09 08:44:04', '2024-12-09 08:44:04', NULL),
(81, 'FATHIMA SALIM .S', 'fathimasalim@gmail.com', NULL, '9495842025', '$2y$10$UPcGea0LbI28l7sEWrJNAu1wVRGtW6sBZjlJvBe5DNXKOqH0JDOXm', 0, NULL, 1, '2024-12-09 08:46:36', '2025-06-08 04:27:25', NULL),
(82, 'SITARAH S HASHIM', 'sitarah@gmail.com', NULL, '9495911331', '$2y$10$gKdN7ffwFQxkpzxhgFl0MOsC.sydRFyq.jBjUdU.jswJpYd6nHrdG', 0, NULL, 1, '2024-12-09 08:54:00', '2024-12-09 08:54:00', NULL),
(83, 'HASNA SHAIJAN', 'hasnashaijan@gmail.com', NULL, '8589097303', '$2y$10$4T58mymc.tSV6wo1AYT/Cu7ebS/dw5ieniZICOH.wGjjALwYbvy2a', 0, NULL, 1, '2024-12-09 08:59:53', '2024-12-09 08:59:53', NULL),
(84, 'VAISHNAVI . K', 'vaishnavik@gmail.com', NULL, '7356006520', '$2y$10$9.OcjXGyX0sL3kLBVty0c.YPgqCW/D0FVU7jrL12Ft0OHXQlnMkDK', 0, NULL, 1, '2024-12-09 09:06:09', '2024-12-09 09:06:09', NULL),
(85, 'ASWANI.S.ASHOK', 'aswani@mail.com', NULL, '8593068532', '$2y$10$Fnu1qxmlJ5fhZHnbsA.alesa/J459ix1CYaSep0ngDaHyLOdgqAay', 0, NULL, 1, '2024-12-09 09:16:36', '2024-12-09 09:16:36', NULL),
(86, 'SOUMYA', 'soumyasm@gmail.com', NULL, '9995485009', '$2y$10$fgBrzMhu9JQmprF6EPbTxuttfdwafNzu18P1detdYi1haMzib3m2e', 0, NULL, 1, '2024-12-09 09:27:18', '2024-12-09 09:27:18', NULL),
(87, 'SIBANA R SAJI', 'sibana@gmail.com', NULL, '9633080940', '$2y$10$XAsRkTGBno6QOXOMgIyJFuruWtntKamS8V5gsILWt1SslVmWpRHsS', 0, NULL, 1, '2024-12-09 09:44:59', '2024-12-09 09:44:59', NULL),
(88, 'ARATHY.R', 'arathy@gmail.com', NULL, '9207258153', '$2y$10$vBDs7zUICDG0yqVGtcnAWud.v8KxP9XauebbFZoHtL/UPdkwv3dZm', 0, NULL, 1, '2024-12-09 09:58:14', '2024-12-09 09:58:14', NULL),
(89, 'MUHAMMED ASHIK', 'mhdashik@gmail.com', NULL, '9744240948', '$2y$10$v9lmt2Hk.2HXaJnvTLVafuRxJcBEp4UPKXSbua2KnpFUmAJGhXz5m', 0, NULL, 1, '2024-12-09 10:10:40', '2024-12-09 10:10:40', NULL),
(90, 'JASMI', 'jasmin@gmail.com', NULL, '9074958895', '$2y$10$1gfTx0xzdAIERt15dqJS7OAbCBkx.va7YFYIW5X5zYKATHh/68Lzy', 0, NULL, 1, '2024-12-09 10:55:43', '2024-12-09 10:55:43', NULL),
(91, 'SARAMOL', 'saramol@gmail.com', NULL, '9539570465', '$2y$10$3YdQcmlSM.ZJxeNa.cfzZ.mXs4r6UoqE5yl1m5ktnrMRz1H6E8/Ai', 0, NULL, 1, '2024-12-09 11:02:30', '2025-06-17 05:08:33', NULL),
(92, 'ARYA   V.S', 'aryavs@gmail.com', NULL, '8943501052', '$2y$10$z.SGQDOP458BwCZfqjkFSuYobjEiwW0bF.WLRZWsX4QMZQfrAHvx6', 0, NULL, 1, '2024-12-09 11:13:46', '2024-12-09 11:13:46', NULL),
(93, 'RAMSEENA', 'ramseena@gmail.com', NULL, '7025782126', '$2y$10$ylj8oxKa4CacoP4LBzq0GO4UKlpelfkBLywqGFdHVZiYNrK49Xgkq', 0, NULL, 1, '2024-12-09 11:16:45', '2024-12-09 11:16:45', NULL),
(94, 'MUHAMMED SHEFEEK', 'mhdshafeek@gmail.com', NULL, '8075484693', '$2y$10$bIBvHN17M6krYlgacnJ8huRMtcHV/RHmL77oCf5DjePhulefBeBfu', 0, NULL, 1, '2024-12-09 11:21:55', '2024-12-09 11:21:55', NULL),
(95, 'VINEETHA V S', 'vineetha@gmail.com', NULL, '9539191537', '$2y$10$O1fdkolY7vaH.78Qs8DfyOF6nrvyLnv/bCACATKpMwFxA41AQ/f.y', 0, NULL, 1, '2024-12-09 11:24:57', '2024-12-09 11:24:57', NULL),
(96, 'PRIJITHA', 'prijitha@gmail.com', NULL, '9846486815', '$2y$10$bwv49nAORUQ8l9hwjtzfk.FgVrT5zVnY4rF4IosV79Rtqt2MgwY4m', 0, NULL, 1, '2024-12-09 11:30:53', '2024-12-09 11:30:53', NULL),
(97, 'ALFIYA B S', 'alfiyabs@gmail.com', NULL, '9656477538', '$2y$10$oiH1dZ/pUBvrZGrekDOuo.sQhc0AwxdG3IdZycZ5cTBh/QqbWsnRi', 0, NULL, 1, '2024-12-09 11:34:31', '2024-12-09 11:34:31', NULL),
(98, 'SNEHA B', 'snehab@gmail.com', NULL, '8848676058', '$2y$10$BTGpNbHsNPd2FotCAOzBbe1mbxenXqDKogfd0IwygRNzVpTLBniGq', 0, NULL, 1, '2024-12-09 11:36:54', '2024-12-09 11:36:54', NULL),
(99, 'ARUNIMA', 'arunima@gmail.com', NULL, '09544196970', '$2y$10$bjx3IASCVBgUEYVNbTaV7ubjabT6czBzWjRC0aEAqtz3/lZ3SyGI2', 0, NULL, 1, '2024-12-09 11:40:22', '2024-12-09 11:40:22', NULL),
(100, 'MUNEER', 'muneer@gmail.com', NULL, '9074598151', '$2y$10$RnxUkI0VifZTc1uFCsrCzeCMeKGvCCYr49HGxhl2W1RESm2fiedU2', 0, NULL, 1, '2024-12-10 04:12:18', '2024-12-10 04:12:18', NULL),
(101, 'MUNEER N', 'muneern@gmail.com', NULL, '09544196970', '$2y$10$iLBjm/3tcPU75Yfm10YRJuQMjhrf.xDHU2s.ZBh3mkqJi3iWdiUgu', 0, NULL, 1, '2024-12-10 04:15:52', '2024-12-10 04:15:52', NULL),
(102, 'MUNEER N', 'muneernn@gmail.com', NULL, '9074598151', '$2y$10$9QrSbbXmRN6L1T6.vWkDn.V.0dPE.JufxaYeXYJV5P9iD7MadECFq', 0, NULL, 1, '2024-12-10 04:31:20', '2024-12-10 04:31:20', NULL),
(103, 'ABHIRAMI.J', 'abhiramij@gmail.com', NULL, '09544196970', '$2y$10$Y.GOWKjngDmEW9BmS6ZSzuBkZ/6I1LqPfs/3DPcOtXs4RmFu0CJFO', 0, NULL, 1, '2024-12-10 04:35:21', '2024-12-10 04:35:21', NULL),
(104, 'LIBINA S', 'libina@gmail.com', NULL, '9746799397', '$2y$10$2/uYzT878ER.P2Th0bR7EuGvTdDToQNSbEzKA5iwKgAFVMbiopB7W', 0, NULL, 1, '2024-12-10 04:37:54', '2024-12-10 04:37:54', NULL),
(105, 'SANGEETHA T', 'sangeetha@gmail.com', NULL, '9745848323', '$2y$10$1WjdgNfn.k9rtgI3f1JmOubTbqnk7dTSo8mKZKpbGZ8LeqsCA8tWu', 0, NULL, 1, '2024-12-10 06:02:32', '2024-12-10 06:02:32', NULL),
(106, 'VARSHA B S', 'varshabs@gmail.com', NULL, '9567354550', '$2y$10$AIsdIcEtjeXSvkjxgDKS7O9hJB6KVYcnMzxzB5yNwUOv2usgy.6i.', 0, NULL, 1, '2024-12-10 06:08:28', '2024-12-10 06:08:28', NULL),
(107, 'VARSHA B S', 'varshabs123@gmail.com', NULL, '9567354550', '$2y$10$tjKs5ZMT/E1a7EQU9BAZQesRIx5EK0pzdJTNgKxR6051fY1YJxlke', 0, NULL, 1, '2024-12-10 06:31:13', '2024-12-10 06:31:13', NULL),
(108, 'REMYAKRISHNA', 'remyakrishna@gmail.com', NULL, '9539135704', '$2y$10$Rgs6cY26NRc.6LYbjvDHIeEOzROj9/.wUESNVRdGlQfjbt8uPzK6i', 0, NULL, 1, '2024-12-10 06:38:26', '2024-12-10 06:38:26', NULL),
(109, 'NANDANA H', 'nandhanah@gmail.com', NULL, '8547838356', '$2y$10$sYukVFuffM8p9dSA4x9t7uvedhgSW5T/ZtSG9abIlDnFnQNdzVgwa', 0, NULL, 1, '2024-12-10 06:56:59', '2024-12-10 06:56:59', NULL),
(110, 'FATHIMA SHAJAHAN', 'fathimashajahan@gmail.com', NULL, '9562508122', '$2y$10$PnYqfkv2.FvgiYryLUJCCehB9kwkACmw4JLkRY9jFyEB.vyriRPEW', 0, NULL, 1, '2024-12-10 07:05:37', '2024-12-10 07:05:37', NULL),
(111, 'SHAMEENA.F', 'shameenaf@gmail.com', NULL, '9946508217', '$2y$10$dfrqJaBugPvLw27SXR6QeeVu08o8aFZq/LoYmJJi3XtrEaFPoXMvK', 0, NULL, 1, '2024-12-10 07:20:06', '2024-12-10 07:20:06', NULL),
(112, 'SUBHANA S', 'subhana@gmail.com', NULL, '9947014701', '$2y$10$5b2ikJyGIp6X8jjyioG.gOH/R7iE.i3LCSM6jbVDIYmBw8sCj5i6m', 0, NULL, 1, '2024-12-10 07:26:29', '2024-12-10 07:26:29', NULL),
(121, 'SHESNA', 'shesna@gmail.com', NULL, '9539253941', '$2y$10$N0ELjM3jpNX33GTyidzX2eNThka6y52vaUXYnXHDJV1/Tq0lZRzxe', 0, NULL, 1, '2024-12-10 09:49:00', '2024-12-10 09:49:00', NULL),
(120, 'AMEENA H', 'ameenah@gmail.com', NULL, '9645248632', '$2y$10$JAeH0TjtoOWWowAXe9axmOIE3i.cgdP6cuX1.Bi0njAhbeAyKALuG', 0, NULL, 1, '2024-12-10 09:46:30', '2024-12-10 09:46:30', NULL),
(119, 'PARVATHY B S', 'parvathybs@gmail.com', NULL, '9072979042', '$2y$10$.VR3dO9/yBsN0/r.OCw2NOHxoaHxRzz1dt2dGkzBUDEKY6S7/huQG', 0, NULL, 1, '2024-12-10 09:42:48', '2024-12-10 09:42:48', NULL),
(117, 'RESHMA RAJ', 'reshmaraj123@gmail.com', NULL, '9048319048', '$2y$10$10aVcImCFV.saj5C.JMmnugt80FdyMWFA/nZ4ciTteTakhAjmZRDu', 0, NULL, 1, '2024-12-10 09:35:35', '2024-12-10 09:35:35', NULL),
(118, 'AMRUTHA M NAIR', 'amruthamnairm@gmail.com', NULL, '7025407793', '$2y$10$fUS/rMsiuhToswsjMVUSPetaDr6BKrdaCJ/udJRTFI7DbGyvfZVUm', 0, NULL, 1, '2024-12-10 09:38:55', '2024-12-10 09:38:55', NULL),
(122, 'VRINDHA V S', 'vrindhavs@gmail.com', NULL, '9747151496', '$2y$10$gfUzSFz1mSBYMyiuS6/fUuFKG14cZgsBM4rMaq/EygkDtMlGRqNfi', 0, NULL, 1, '2024-12-10 09:51:19', '2024-12-10 09:51:19', NULL),
(123, 'SUMAYYA H', 'sumayyah@gmail.com', NULL, '9747424102', '$2y$10$YfiaVd0dOVr/W.TpesIq1.kKveDapE/t0m0er6MzBwzhXGxUP2HMu', 0, NULL, 1, '2024-12-10 09:52:59', '2024-12-10 09:52:59', NULL),
(124, 'SWAPNA', 'swapna@gmail.com', NULL, '7306298703', '$2y$10$sgoSCqo7.4HTrUtT9mTHCuOM7JT3vcCblkgyeKUf9dXNi9xR0XZj6', 0, NULL, 1, '2024-12-10 09:58:58', '2024-12-10 09:58:58', NULL),
(125, 'AFINA YOUSUF', 'afinayousuf@gmail.com', NULL, '9605696886', '$2y$10$K1Xil43xz2YCboZWhrm9qeGkZZSy5oVfKasAo6OJaDv.klPi4eehq', 0, NULL, 1, '2024-12-10 10:06:39', '2024-12-10 10:06:39', NULL),
(126, 'JITHA T NAIR', 'jithatnair@gmail.com', NULL, '9207049018', '$2y$10$jibFHI7nxsUH6LeyAUSCpOUd36VRVV2muOifn.N3D6KIsAjbDSs3O', 0, NULL, 1, '2024-12-10 10:26:34', '2024-12-10 10:26:34', NULL),
(127, 'SIYA FATHIMA', 'siyafathima2004@gmail.com', NULL, '7034359941', '$2y$10$1zSsiYbUHHpYIdXRp1a7TOuihTni7CaqL6gygnoKzEPGkzCQMKPyu', 0, NULL, 1, '2024-12-10 10:29:21', '2024-12-10 10:29:21', NULL),
(128, 'ANAKHA RENJITH', 'anakharenjith@gmail.com', NULL, '9048276816', '$2y$10$HOBM7SFqfzeip4e8ssc1/.QhitTuajZq28v0CAAOFId.PPgtpH6Vm', 0, NULL, 1, '2024-12-10 10:32:22', '2024-12-10 10:32:22', NULL),
(129, 'SAJNA S', 'sajnas@gmail.com', NULL, '7736779358', '$2y$10$Vn2/4cna53uwliGCqDjkq.2a9ZvjPzBafai1ZeYBePa0uGaGDdtWq', 0, NULL, 1, '2024-12-10 10:36:32', '2024-12-10 10:36:32', NULL),
(130, 'RIZANA', 'rizana@gmail.com', NULL, '9946764061', '$2y$10$j08XKwK.OfDhBIC7MVoIbOtl0zFyOhzlID61p5Aho3JTZU0oq1VVa', 0, NULL, 1, '2024-12-10 10:46:21', '2024-12-10 10:46:21', NULL),
(131, 'FATHIMA SAIFUDHEEN', 'fathimasaifudheen@gmail.com', NULL, '9072147391', '$2y$10$eAa4IDwn06sx/vOu3vTkXO0LEQXqK/HMSp2fWgNbKcJ/7Gf8N.yzW', 0, NULL, 1, '2024-12-10 10:48:20', '2024-12-10 10:48:20', NULL),
(132, 'SUBINA S', 'subinas@gmail.com', NULL, '7902890525', '$2y$10$HPaoyD7jN51rf4RhAW11teLlsD.MZ65FmMJoF06DOZpR92hwqLIjC', 0, NULL, 1, '2024-12-10 10:50:37', '2024-12-10 10:50:37', NULL),
(133, 'SAMEENA', 'sameena@gmail.com', NULL, '7902851663', '$2y$10$G1xTvwcy0MBpCk25TuuMR.1P8hG0Zj/uyhF49KSbJlVOSsM3ygLsK', 0, NULL, 1, '2024-12-10 10:52:38', '2024-12-10 10:52:38', NULL),
(134, 'SIMI B N', 'simi@gmail.com', NULL, '9778421864', '$2y$10$kunfvPSOg3DIj24tGHSdUu5x9gr.4sfay7S4uM86QHwEBngm7BS1O', 0, NULL, 1, '2024-12-10 10:54:17', '2024-12-10 10:54:17', NULL),
(135, 'JIBREEL MUHAMMED', 'jibreelmuhammed@gmail.com', NULL, '9746037562', '$2y$10$dz1YZZZgh2.AzqxKT/Y/ceF1d8QepCMcrAl6Ycpy//NTpqII8pZ9e', 0, NULL, 1, '2024-12-10 10:56:08', '2024-12-10 10:56:08', NULL),
(136, 'AL AHAD KHAN', 'alahadkhan@gmail.com', NULL, '7592994626', '$2y$10$VWmQoonK0AHCx8G5icE/sO4uT8aeCCwz1lXMdFgHpeG/PiThi29IG', 0, NULL, 1, '2024-12-10 10:58:50', '2024-12-10 10:58:50', NULL),
(137, 'ANANDHU A R', 'anandhuar@gmail.com', NULL, '8590559728', '$2y$10$xPRL6TEZUEKaW2c6xu1U.OtNEhhTQSNUODjhDj3KSAMTmpQzRXUnO', 0, NULL, 1, '2024-12-10 11:01:06', '2024-12-10 11:01:06', NULL),
(138, 'FATHIMA H', 'FATHIMA', NULL, '9995089551', '$2y$10$w7.2UmycO99x4Kk6Kr17oechKe7sfuyhrPc.eLsDt1VKCg7ry3IDW', 0, NULL, 1, '2024-12-10 11:04:06', '2024-12-10 11:04:06', NULL),
(139, 'ALFIYA S', 'alfiyasmnjapra@gmail.com', NULL, '8896778800', '$2y$10$KEOdm.AuVLfNxvus88rnjOTbjqFc6f.d6MY48Pu2MJYqLVH9CPv9y', 0, NULL, 1, '2024-12-10 11:16:16', '2024-12-10 11:16:16', NULL),
(140, 'MUHAMMED THOUFEEQ.S', 'mhdthoufeeq@gmail.com', NULL, '9946161813', '$2y$10$y/B99AUH7efgmZPz9onxsuUP28oW7i9rBRzpoDftjGdmpCEiBhKHy', 0, NULL, 1, '2024-12-10 11:18:23', '2024-12-10 11:18:23', NULL),
(142, 'SHABNA NOUSHAD', 'shabnanoushad123@gmail.com', NULL, '8136990852', '$2y$10$rOynKoZIFS0ujqb5oQ0zxOpA3TPAiwGzbziPAm.IUCp5TIed0Wilm', 0, NULL, 1, '2025-01-15 07:14:17', '2025-01-15 07:14:17', NULL),
(143, 'SHABNA NOUSHAD', 'shabnanoushad1234@gmail.com', NULL, '8136990852', '$2y$10$WOtvZ34CasSHI3Q18Aa0UurS0AbNdJvkwGFrqoNUpR.s.p5I1Dwfq', 0, NULL, 1, '2025-01-15 07:15:24', '2025-01-15 07:15:24', NULL),
(144, 'BABITHA PK', 'babithapk123@gmail.com', NULL, '09847945481', '$2y$10$ufTP0zzqcOmkqy2QiEKRR.NXDhGRHH6QKIft5yiJmqcaeqXXk7Kdq', 0, NULL, 1, '2025-01-15 07:27:09', '2025-01-15 07:27:09', NULL),
(145, 'BABITHA PK', 'babithapk1234@gmail.com', NULL, '09847945481', '$2y$10$JOQqa9mUwUKrU/t41OzVJ.Pz.hQig1nOr.dsCJsjlBNUtnmqgthQu', 0, NULL, 1, '2025-01-15 07:28:06', '2025-01-15 07:28:06', NULL),
(150, 'BASIMA N', 'basiman@gmail.com', NULL, '9061638687', '$2y$10$MK6OyYzDsDJqVc3KCm8piewCjkzp6eg0iq7PYqMogd7SLsuBMikRm', 0, NULL, 1, '2025-02-18 08:34:42', '2025-02-18 08:34:42', NULL),
(149, 'test data', 'testdata123@gmail.com', NULL, '8129471788', '$2y$10$gy4nPbloXjDJEgqzaKzDpusYtbdjoEtkgDsxPDSWAtJ2yvGMItuhG', 0, NULL, 1, '2025-02-08 05:11:22', '2025-02-08 05:11:22', NULL),
(151, 'NASEEMA KOORIYADAN', 'naseemakooriyadan@gmail.com', NULL, '8304031094', '$2y$10$wAWXQ5rFRySTYSdwLVfhbOLjVjVRH8cNgxCentFvdc61aql30o7hS', 0, NULL, 1, '2025-02-18 08:37:37', '2025-02-18 08:37:37', NULL),
(152, 'BABITHA PK', 'babithapk@gmail.com', NULL, '09847945481', '$2y$10$IdJKAFERge0Uv4P0kb6IFeD5IQHc1SOEk08yVtOcoUtE.Dc2QXQey', 0, NULL, 1, '2025-03-21 10:35:52', '2025-03-21 10:35:52', NULL),
(154, 'test purpose', 'testpurpose@gmail.com', NULL, '2222244433', '$2y$10$fC17MCzi67WBgStSfUwFtORGbWu42Z5CxHCmCAslStt3aKpgEiIRq', 0, NULL, 1, '2025-05-21 06:07:36', '2025-06-02 13:25:12', NULL),
(164, 'Anulekshmi', 'anulekshmibs@gmail.com', NULL, '9995890659', '$2y$10$Tfku4uueuYzzCDUg8UaUv.AxA2AnighxpDXnLoiRtFK/FJurL0SIy', 0, NULL, 1, '2025-06-08 04:36:14', '2025-06-08 04:36:14', NULL),
(163, 'BINUJA', 'binujabr@gmail.com', NULL, '9207946746', '$2y$10$eZu55ezrpR9UvDEeRGIV0.vW0uE0GffUSj57D73PANcwxNyGBGkZm', 0, NULL, 1, '2025-06-08 04:32:45', '2025-06-08 04:32:45', NULL),
(162, 'Anamika raveendran', 'anamikar@gmail.com', NULL, '9847920182', '$2y$10$o0kViqQ0Q02kqx/lwRgP8.Hy3LaU/gn0lSCED.xYkPnR35.iC4VKi', 0, NULL, 1, '2025-06-08 04:30:14', '2025-06-08 04:30:14', NULL),
(161, 'testdata123456', 'testdata123456@gmail.com', NULL, '9927237461', '$2y$10$dcvNBuqMWGKEQzbjbNIa5OjAH9inJCo6jL.jfHKquO9mj8/l5Qx1q', 0, NULL, 1, '2025-06-06 06:49:29', '2025-06-06 06:49:29', NULL),
(165, 'ARUNIMAUDAYAN', 'arunimaudayan@gmail.com', NULL, '8714033926', '$2y$10$IGymE3yCVXwQW2eOyXq4OOxF823HW4nyR.FK/5igZgjeHwn/J.GpG', 0, NULL, 1, '2025-06-08 05:18:16', '2025-06-08 05:18:16', NULL),
(166, 'HASNA SHAIJAN', 'hasnas@gmail.com', NULL, '8589097303', '$2y$10$QMV.jcA8qLJX1Ym8hPyZbuLsU/zqFHgmkT.LLUSeOStXKqxNCdRgi', 0, NULL, 1, '2025-06-08 06:04:31', '2025-06-08 06:04:31', NULL),
(167, 'SEMINA N L', 'seminanl@mail.com', NULL, '9539054208', '$2y$10$.STan2Dv1W95zqj3xRvmoebfq9vHQEbYHvqAdwqFs6.6e/TUJ2AVq', 0, NULL, 1, '2025-06-16 09:59:53', '2025-06-16 09:59:53', NULL),
(168, 'SEMINA N L', 'seminaanl@mail.com', NULL, '9539054208', '$2y$10$PhmNpGTCxb4hBVfx2TRh6eEV3IGTxLPI63W7BMNbpKdhwxjj20PDi', 0, NULL, 1, '2025-06-16 10:00:30', '2025-06-16 10:00:30', NULL),
(169, 'SEMINA N L', 'seminanl123@gmail.com', NULL, '9539054208', '$2y$10$EZs1YCoelpfli/mjGEPg.OP7UZBtVHE8uEEkB4i8174f10OO2QQE6', 0, NULL, 1, '2025-06-16 10:04:45', '2025-06-16 10:08:51', NULL),
(170, 'NAYANA H NAIR', 'nayanahnair@gmail.com', NULL, '09544224568', '$2y$10$Ze3vpd9FYWf1R2l7AIyyAe7RuK3r4dIo9ENcv55zKNGa7vn/eLUm2', 0, NULL, 1, '2025-06-16 10:15:18', '2025-06-16 10:15:18', NULL),
(171, 'NAJMA MUJEEB', 'najmamujeeb123@gmail.com', NULL, NULL, '$2y$10$9tQ11vvQJsrPmlDqAojGfOjsNK/oURDlXMG9un1ijwo86G2qrOOqS', 0, NULL, 1, '2025-06-16 10:18:41', '2025-06-16 10:23:04', NULL),
(172, 'AHALYA', 'ahalya123@gmail.com', NULL, '09744760362', '$2y$10$UJIsyydappZifXS0xmHGIugjCZYPy5Ytn1KTB12umWRAH2DxBWroO', 0, NULL, 1, '2025-06-16 10:26:58', '2025-06-16 10:26:58', NULL),
(173, 'HUSNA FATHIMA.N', 'husna123@gmail.com', NULL, '9633793948', '$2y$10$dVbk1J5RC6qF9xzrojzuf.0Ha2aBbHW2vJ4dTjfIi.BxXpH.MXVZK', 0, NULL, 1, '2025-06-16 10:30:25', '2025-06-16 10:30:25', NULL),
(174, 'ASWIN B S', 'aswin123@gmail.com', NULL, '8129974508', '$2y$10$Al5PEBxRMXUUz8sYh9bBsOEVThpXVUH/Ieybe04cUyaissiYWHBJa', 0, NULL, 1, '2025-06-16 10:42:48', '2025-06-16 10:43:43', NULL),
(175, 'SHIBINA', 'shibina123@gmail.com', NULL, '7025713002', '$2y$10$/hv2KcbfjH1AnEQ6jImnkO2mx9hM0sx13seAnCs1VwEH/VNJmaZsW', 0, NULL, 1, '2025-06-16 10:46:40', '2025-06-16 10:46:40', NULL),
(176, 'ASWATHI', 'aswathi123@gmail.com', NULL, NULL, '$2y$10$wvbeIYxcgEpsWaLBHINy8evnDGOyYhjmGLAccf/eluJWlhGZX3BR2', 0, NULL, 1, '2025-06-16 10:51:15', '2025-06-16 10:52:16', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `batches`
--
ALTER TABLE `batches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `batches_course_id_foreign` (`course_id`),
  ADD KEY `batches_centre_id_foreign` (`centre_id`);

--
-- Indexes for table `carosels`
--
ALTER TABLE `carosels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `centres`
--
ALTER TABLE `centres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `centres_admin_foreign` (`admin`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_centres`
--
ALTER TABLE `course_centres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_playlists`
--
ALTER TABLE `course_playlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_pricings`
--
ALTER TABLE `course_pricings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_study_materials`
--
ALTER TABLE `course_study_materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_tags`
--
ALTER TABLE `course_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_modules`
--
ALTER TABLE `exam_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `purchase_requests`
--
ALTER TABLE `purchase_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `schemes`
--
ALTER TABLE `schemes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scheme_category_courses`
--
ALTER TABLE `scheme_category_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_payments`
--
ALTER TABLE `student_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_purchased_courses`
--
ALTER TABLE `student_purchased_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_wishlisted_courses`
--
ALTER TABLE `student_wishlisted_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutors`
--
ALTER TABLE `tutors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutors_tags`
--
ALTER TABLE `tutors_tags`
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
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `batches`
--
ALTER TABLE `batches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `carosels`
--
ALTER TABLE `carosels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `centres`
--
ALTER TABLE `centres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `course_centres`
--
ALTER TABLE `course_centres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `course_playlists`
--
ALTER TABLE `course_playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `course_pricings`
--
ALTER TABLE `course_pricings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_study_materials`
--
ALTER TABLE `course_study_materials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_tags`
--
ALTER TABLE `course_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `exam_modules`
--
ALTER TABLE `exam_modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=550;

--
-- AUTO_INCREMENT for table `purchase_requests`
--
ALTER TABLE `purchase_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=941;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `schemes`
--
ALTER TABLE `schemes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `scheme_category_courses`
--
ALTER TABLE `scheme_category_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `student_payments`
--
ALTER TABLE `student_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_purchased_courses`
--
ALTER TABLE `student_purchased_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `student_wishlisted_courses`
--
ALTER TABLE `student_wishlisted_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tutors`
--
ALTER TABLE `tutors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tutors_tags`
--
ALTER TABLE `tutors_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
