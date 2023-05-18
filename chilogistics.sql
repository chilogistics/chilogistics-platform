-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2023 at 09:54 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chilogistics`
--

-- --------------------------------------------------------

--
-- Table structure for table `available_trucks`
--

CREATE TABLE `available_trucks` (
  `id` int(11) NOT NULL,
  `make` text NOT NULL,
  `model` varchar(12) NOT NULL,
  `year` year(4) NOT NULL,
  `odometer` int(16) NOT NULL,
  `transmission_type` text NOT NULL,
  `engine` varchar(16) NOT NULL,
  `horse_power` int(8) NOT NULL,
  `suspension_type` text NOT NULL,
  `VIN` varchar(24) NOT NULL,
  `tires_condition` text NOT NULL,
  `tire_size` varchar(16) NOT NULL,
  `wheels` text NOT NULL,
  `available_for` text NOT NULL,
  `available` text NOT NULL,
  `price` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `available_trucks`
--

INSERT INTO `available_trucks` (`id`, `make`, `model`, `year`, `odometer`, `transmission_type`, `engine`, `horse_power`, `suspension_type`, `VIN`, `tires_condition`, `tire_size`, `wheels`, `available_for`, `available`, `price`) VALUES
(22, 'Mack', 'CXU', 2011, 55000, 'Automatic', 'MP8', 430, 'x', '1M1AW07Y3BM017112', 'Good', '295/75 22.5', 'Aluminium', 'Rent', 'NO', 50000),
(45, 'Freightliner', 'Cascadia', 2015, 910000, 'Manual', 'Detroit', 505, 'Air Ride', '1FUJGLD50ELFH6787', 'Good', '295/75 22.5', 'Steel', 'Purchase', 'YES', 50000),
(87, 'Freightliner', 'Cascadia', 2015, 785000, 'Manual', 'DD', 505, 'AIR', 'X3AKJGLD50FSGR6891', 'Good', '295/75 22.5', 'Steel', 'Purchase', 'YES', 50000),
(537, 'Kenworth', 'T680', 2018, 350000, 'Manual', 'Paccar', 500, 'Air', '1XKYDP9X1JJ209537', 'New', '295/75 22.5', 'Aluminum / Steel', 'Purchase', 'YES', 104000),
(679, 'Freightliner', 'Cascadia', 2016, 749000, 'Automatic', 'x', 0, 'AIR', '1FUJGLD57GLHE3679', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 50000),
(683, 'Volvo', 'VNL', 2009, 1, 'Manual', 'x', 0, 'AIR', '4V4NC9EJ59N269683', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1),
(761, 'Kenworth', 'T680', 2021, 80500, 'Automatic', 'Paccar', 0, 'AIR', '1XKYDP9X5MJ460761', 'New', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1),
(848, 'Volvo', 'VNL', 2020, 112000, 'Automatic', 'D13', 0, 'AIR', '4V4NC9EH8LN230848', 'New', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1),
(1171, 'Kenworth', 'T270', 2022, 0, 'Automatic', 'PX-7', 300, 'Air ride', '2NKHHM6X7NM481171', 'NEW', '295/75 22.5', 'Steel', 'Lease purchase', 'YES', 120000),
(1890, 'Freightliner', 'Cascadia', 2021, 87000, 'Automatic', 'x', 0, 'AIR', '1FUJHHDRXMLMZ1890', 'New', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1),
(1999, 'International', 'Navistar', 1999, 250000, 'Automatic', 'T444E V8', 200, 'Leaf Springs', 'XNVXH0444ANA', 'Good, Kumho', '295/75', 'Steel', 'Purchase', 'YES', 20000),
(2504, 'Kenworth', 'T680', 2022, 48000, 'Automatic', 'Paccar', 0, 'AIR', '1XKYDP9X5NJ482504', 'New', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1),
(3070, 'Freightliner', 'M2106', 2012, 430000, 'Automatic', 'x', 0, 'Regular', '1FVACWDTXCDBF2158', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 28000),
(3254, 'International', 'MV607', 2019, 241000, 'Automatic', 'x', 0, 'Regular', '1HTEUMMLXKH740846', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1),
(3256, 'International', 'MV607', 2019, 178000, 'Automatic', 'x', 0, 'Regular', '1HTEUMML6KH196197', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1),
(3283, 'Mack', 'MD6', 2022, 0, 'Automatic', 'Cummins', 260, 'Spring Ride Rear Suspension', '1M2MDBAA7NS003283', 'Brand New', '11R 22.5', 'Steel', 'Rent or Lease', 'NO', 110000),
(3290, 'International', 'MV607', 2020, 230000, 'Automatic', 'x', 0, 'Regular', '1HTEUMML5LH847577', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1),
(3291, 'International', 'MV607', 2020, 190000, 'Automatic', 'x', 0, 'Regular', '1HTEUMML4LH847554', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1),
(3295, 'International', 'MV607', 2020, 128000, 'Automatic', 'x', 0, 'Regular', '1HTEUMML4LH847568', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1),
(3321, 'International', 'MV607', 2022, 32500, 'Automatic', 'x', 0, 'Regular', '3HAEUMML1NL231999', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1),
(3330, 'International', 'MV607', 2019, 161000, 'Automatic', 'x', 0, 'Regular', '1HTMMMML6KH343565', 'Good', '295/75 22.5', 'x', 'Rent', 'NO', 700),
(3762, 'Volvo', 'MV607', 2020, 607000, 'Automatic', 'x', 0, 'AIR', '4V4NC9EH2LN233762', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1),
(4219, 'Kenworth', 'T680', 2019, 430000, 'Automatic', 'x', 0, 'AIR', '1XKYDP9X8KJ284219', 'Good', '295/75 22.5', 'x', 'Purchase', 'NO', 110000),
(4742, 'Kenworth', 'T680', 2021, 60000, 'Automatic', 'Paccar', 0, 'AIR', '1XKYDP9XXMJ464742', 'Good', '295/75 22.5', 'x', 'Lease Purchase', 'NO', 140000),
(5001, 'Kenworth', 'T680', 2018, 483000, '10 Speed Automatic', 'Paccar', 455, 'AIR', '1XKYDP9X6JJ205001', 'Good', '295/75 22.5', 'Aluminum', 'Lease Purchase', 'YES', 100000),
(6952, 'Freightliner', 'Cascadia', 2016, 493826, 'Manual', 'x', 0, 'AIR', '3AKJGLBG1GSHT6952', 'Good', '295/75 22.5', 'x', 'Lease Purchase', 'NO', 100000),
(7162, 'Freightliner', 'Cascadia', 2016, 350000, 'Manual', 'x', 0, 'AIR', '3AKJGLBGXGSHT7162', 'New', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1),
(7373, 'Freightliner', 'Cascadia', 2016, 390000, 'Manual', 'x', 0, 'AIR', '3AKJGLBG1GSHT7373', 'New', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1),
(7619, 'Kenworth', 'T680', 2016, 581000, 'Manual', 'x', 0, 'AIR', '1XKYD49X1GJ487619', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1),
(8148, 'Freightliner', 'Cascadia', 2021, 69000, 'Automatic', 'x', 0, 'AIR', '3AKJHHDR9MSMT8148', 'New', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1),
(8149, 'Freightliner', 'Cascadia', 2021, 47000, 'Automatic', 'x', 0, 'AIR', '3AKJHHDR0MSMT8149', 'New', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1),
(8151, 'Freightliner', 'Cascadia', 2021, 1, 'Automatic', 'x', 0, 'AIR', '3AKJHHDR9MSMT8151', 'New', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1),
(8152, 'Freightliner', 'Cascadia', 2021, 107000, 'Automatic', 'x', 0, 'AIR', '3AKJHHDR0MSMT8152', 'New', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1),
(8204, 'Freightliner', 'Cascadia', 2021, 52000, 'Automatic', 'x', 0, 'AIR', '3AKJHHDR4MSMT8204', 'New', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1),
(9004, 'Kenworth', 'T680', 2022, 8000, 'Automatic', 'Paccar', 0, 'AIR', '1XKYDP9X9NJ489004', 'New', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1),
(9576, 'Freightliner', 'Cascadia', 2019, 404000, 'Automatic', 'DD', 0, 'AIR', '3AKJHHDR2KSKJ9576', 'New', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1),
(9577, 'Freightliner', 'Cascadia', 2019, 405000, 'Automatic', 'DD', 0, 'AIR', '3AKJHHDR4KSKJ9577', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1),
(9578, 'Freightliner', 'Cascadia', 2019, 360000, 'Automatic', 'DD', 0, 'AIR', '3AKJHHDR6KSKJ9578', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1),
(9579, 'Freightliner', 'Cascadia', 2019, 389000, 'Automatic', 'DD', 0, 'AIR', '3AKJHHDR8KSKJ9579', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1),
(9580, 'Freightliner', 'Cascadia', 2019, 308000, 'Automatic', 'DD', 0, 'AIR', '3AKJHHDR4KSKJ9580', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1),
(9581, 'Freightliner', 'Cascadia', 2019, 305000, 'Automatic', 'DD', 0, 'AIR', '3AKJHHDR6KSKJ9581', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1),
(9582, 'Freightliner', 'Cascadia', 2019, 315000, 'Automatic', 'DD', 0, 'AIR', '3AKJHHDR8KSKJ9582', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1),
(9583, 'Freightliner', 'Cascadia', 2019, 335000, 'Automatic', 'DD', 0, 'AIR', '3AKJHHDRXKSKJ9583', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1),
(12345, 'Freightliner', 'Cascadia', 2022, 0, 'Automatic', 'Detroit', 505, 'Air Ride', 'xxxxxxxxxxxxx', 'NEW', '295/75 22.5', 'Aluminum', 'Purchase', 'YES', 182000),
(36414, 'International', 'MV607', 2020, 132000, 'Automatic', 'x', 0, 'Regular', '1HTEUMML1LH829139', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1),
(651623, 'International', 'Box', 2016, 1, 'Automatic', 'x', 0, 'AIR', '1HTMMMML6GH219769', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1),
(683747, 'International', 'Box', 2018, 244000, 'Automatic', 'x', 0, 'AIR', '1HTMMMML5JH567540', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1),
(686391, 'Freightliner', 'Box', 2018, 259000, 'Automatic', 'x', 0, 'AIR', '1FVACWFC65HHR2214', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1),
(828850, 'Freightliner', 'Cascadia', 2019, 1, 'Automatic', 'DD', 0, 'AIR', '1FUJHHDR3KLKN8060', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1),
(828851, 'Freightliner', 'Cascadia', 2019, 415000, 'Automatic', 'DD', 0, 'AIR', '1FUJHHDR5KLKN8061', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1),
(828852, 'Freightliner', 'Cascadia', 2019, 340000, 'Automatic', 'DD', 0, 'AIR', '1FUJHHDR7KLKN8062', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1),
(829216, 'Freightliner', 'Cascadia', 2019, 203000, 'Automatic', 'DD', 0, 'AIR', '1FUJHHDR6KLKN8067', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1),
(829217, 'Freightliner', 'Cascadia', 2019, 400000, 'Automatic', 'DD', 0, 'AIR', '1FUJHHDR8KLKN8068', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1),
(861507, 'Freightliner', 'Cascadia', 2019, 1, 'Automatic', 'DD', 0, 'AIR', '3AKJHHDR6KSKJ5174', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1),
(861508, 'Freightliner', 'Cascadia', 2019, 420000, 'Automatic', 'DD', 0, 'AIR', '3AKJHHDR8KSKJ5175', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1),
(861509, 'Freightliner', 'Cascadia', 2019, 425000, 'Automatic', 'DD', 0, 'AIR', '3AKJHHDRXKSKJ5176', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1),
(861510, 'Freightliner', 'Cascadia', 2019, 1, 'Automatic', 'DD', 0, 'AIR', '3AKJHHDR2KSKJ5138', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1),
(861511, 'Freightliner', 'Cascadia', 2019, 385000, 'Automatic', 'DD', 0, 'AIR', '3AKJHHDR4KSKJ5139', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1),
(897522, 'Freightliner', 'Cascadia', 2020, 308000, 'Automatic', 'DD', 0, 'AIR', '3AKJHHDR3LSLR3285', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1),
(897523, 'Freightliner', 'Cascadia', 2020, 136000, 'Automatic', 'DD', 0, 'AIR', '3AKJHHDR5LSLR3286', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1),
(897524, 'Freightliner', 'Cascadia', 2020, 318000, 'Automatic', 'DD', 0, 'AIR', '3AKJHHDR7LSLR3287', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1),
(897525, 'Freightliner', 'Cascadia', 2020, 247000, 'Automatic', 'DD', 0, 'AIR', '3AKJHHDR9LSLR3288', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1),
(897526, 'Freightliner', 'Cascadia', 2020, 331000, 'Automatic', 'DD', 0, 'AIR', '3AKJHHDR0LSLR3289', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(61, '2014_10_12_000000_create_users_table', 1),
(62, '2014_10_12_100000_create_password_resets_table', 1),
(63, '2019_08_19_000000_create_failed_jobs_table', 1),
(64, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(65, '2022_06_16_131342_create_trucks_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trucks`
--

CREATE TABLE `trucks` (
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id` int(11) NOT NULL,
  `make` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `odometer` varchar(255) NOT NULL,
  `transmission_type` varchar(255) NOT NULL,
  `engine` varchar(255) NOT NULL,
  `horse_power` varchar(255) NOT NULL,
  `suspension_type` varchar(255) NOT NULL,
  `VIN` varchar(255) NOT NULL,
  `tires_condition` varchar(255) NOT NULL,
  `tire_size` varchar(255) NOT NULL,
  `wheels` varchar(255) NOT NULL,
  `available_for` varchar(255) NOT NULL,
  `available` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL,
  `company` char(3) NOT NULL,
  `notes` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trucks`
--

INSERT INTO `trucks` (`created_at`, `updated_at`, `id`, `make`, `model`, `year`, `odometer`, `transmission_type`, `engine`, `horse_power`, `suspension_type`, `VIN`, `tires_condition`, `tire_size`, `wheels`, `available_for`, `available`, `price`, `status`, `company`, `notes`) VALUES
(NULL, '2023-04-19 15:52:24', 22, 'Mack', 'CXU', '2011', '50000', 'Automatic', 'MP8', '430', 'x', '1M1AW07Y3BM017112', 'Good', '295/75 22.5', 'Aluminium', 'Sold', 'NO', '50000', 'Not ready', '', NULL),
(NULL, '2023-04-19 17:18:36', 45, 'Freightliner', 'Cascadia', '2015', '28000', 'Manual', 'Detroit', '505', 'Air Ride', '1FUJGLD50ELFH6787', 'Good', '295/75 22.5', 'Steel', 'Rent', 'YES', '28000', 'Ready', 'CHI', NULL),
(NULL, '2023-04-21 12:49:52', 87, 'Freightliner', 'Cascadia', '2015', '50000', 'Manual', 'DD', '505', 'AIR', 'X3AKJGLD50FSGR6891', 'Good', '295/75 22.5', 'Steel', 'Sold', 'YES', '50000', 'Sold', 'CHI', NULL),
(NULL, '2023-04-17 13:42:24', 537, 'Kenworth', 'T680', '2018', '351000', 'Manual', 'Paccar', '500', 'Air', '1XKYDP9X1JJ209537', 'New', '295/75 22.5', 'Aluminum / Steel', 'Rent', 'YES', '100000', 'Sold', '', NULL),
(NULL, '2023-04-19 16:13:09', 679, 'Freightliner', 'Cascadia', '2016', '50000', 'Automatic', 'x', '0', 'AIR', '1FUJGLD57GLHE3679', 'Good', '295/75 22.5', 'x', 'Sold', 'YES', '50000', 'Sold', 'KZ', 'test for this'),
(NULL, '2023-04-17 17:42:20', 683, 'Volvo', 'VNL', '2009', '1', 'Manual', 'x', '0', 'AIR', '4V4NC9EJ59N269683', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'YES', '1', 'Wash', '', 'U dealershipu je problemi sa prednjim radarom, engine oil leak, colant hose leak 4/17'),
(NULL, '2023-04-17 14:02:30', 761, 'Kenworth', 'T680', '2021', '132000', 'Automatic', 'Paccar', '0', 'AIR', '1XKYDP9X5MJ460761', 'New', '295/75 22.5', 'x', 'Company Driver Only', 'YES', '1', 'Sold', '', NULL),
(NULL, '2023-04-19 16:44:49', 848, 'Volvo', 'VNL', '2020', '1', 'Automatic', 'D13', '0', 'AIR', '4V4NC9EH8LN230848', 'New', '295/75 22.5', 'x', 'Rent or Lease', 'YES', '1', 'Ready', '', NULL),
(NULL, '2023-04-19 16:45:34', 1171, 'Kenworth', 'T270', '2022', '120000', 'Automatic', 'PX-7', '300', 'Air ride', '2NKHHM6X7NM481171', 'NEW', '295/75 22.5', 'Steel', 'Lease purchase', 'YES', '120000', 'Wash', '', NULL),
(NULL, NULL, 1890, 'Freightliner', 'Cascadia', '2021', '87000', 'Automatic', 'x', '0', 'AIR', '1FUJHHDRXMLMZ1890', 'New', '295/75 22.5', 'x', 'Rent or Lease', 'NO', '1', '', '', NULL),
(NULL, '2023-01-12 03:42:08', 1999, 'International', 'Navistar', '1999', '275,571', 'Automatic', 'T444E V8', '200', 'Leaf Springs', 'XNVXH0444ANA', 'Good, Kumho', '295/75', 'Steel', 'Purchase', 'YES', '15000', 'Ready', '', NULL),
('2023-01-12 04:33:17', '2023-04-17 13:42:13', 2151, 'International', '4300', '2018', '219,333', 'Automatic', 'Cummins', '270', 'Air', '1HTMMMML3KH442151', '/', '/', 'Aluminum', 'Purchase', 'YES', '80000', 'Ready', '', NULL),
(NULL, NULL, 2504, 'Kenworth', 'T680', '2022', '48000', 'Automatic', 'Paccar', '0', 'AIR', '1XKYDP9X5NJ482504', 'New', '295/75 22.5', 'x', 'Rent or Lease', 'NO', '1', '', '', NULL),
(NULL, NULL, 3070, 'Freightliner', 'M2106', '2012', '430000', 'Automatic', 'x', '0', 'Regular', '1FVACWDTXCDBF2158', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', '28000', '', '', NULL),
(NULL, NULL, 3254, 'International', 'MV607', '2019', '241000', 'Automatic', 'x', '0', 'Regular', '1HTEUMMLXKH740846', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', '1', '', '', NULL),
(NULL, NULL, 3256, 'International', 'MV607', '2019', '178000', 'Automatic', 'x', '0', 'Regular', '1HTEUMML6KH196197', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', '1', '', '', NULL),
(NULL, NULL, 3283, 'Mack', 'MD6', '2022', '0', 'Automatic', 'Cummins', '260', 'Spring Ride Rear Suspension', '1M2MDBAA7NS003283', 'Brand New', '11R 22.5', 'Steel', 'Rent or Lease', 'NO', '110000', '', '', NULL),
(NULL, NULL, 3290, 'International', 'MV607', '2020', '230000', 'Automatic', 'x', '0', 'Regular', '1HTEUMML5LH847577', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', '1', '', '', NULL),
(NULL, NULL, 3291, 'International', 'MV607', '2020', '190000', 'Automatic', 'x', '0', 'Regular', '1HTEUMML4LH847554', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', '1', '', '', NULL),
(NULL, NULL, 3295, 'International', 'MV607', '2020', '128000', 'Automatic', 'x', '0', 'Regular', '1HTEUMML4LH847568', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', '1', '', '', NULL),
(NULL, NULL, 3321, 'International', 'MV607', '2022', '32500', 'Automatic', 'x', '0', 'Regular', '3HAEUMML1NL231999', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', '1', '', '', NULL),
(NULL, NULL, 3330, 'International', 'MV607', '2019', '161000', 'Automatic', 'x', '0', 'Regular', '1HTMMMML6KH343565', 'Good', '295/75 22.5', 'x', 'Rent', 'NO', '700', '', '', NULL),
(NULL, NULL, 3762, 'Volvo', 'MV607', '2020', '607000', 'Automatic', 'x', '0', 'AIR', '4V4NC9EH2LN233762', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', '1', '', '', NULL),
(NULL, NULL, 4219, 'Kenworth', 'T680', '2019', '430000', 'Automatic', 'x', '0', 'AIR', '1XKYDP9X8KJ284219', 'Good', '295/75 22.5', 'x', 'Purchase', 'NO', '110000', '', '', NULL),
(NULL, NULL, 4742, 'Kenworth', 'T680', '2021', '60000', 'Automatic', 'Paccar', '0', 'AIR', '1XKYDP9XXMJ464742', 'Good', '295/75 22.5', 'x', 'Lease Purchase', 'NO', '140000', '', '', NULL),
(NULL, '2023-01-12 05:03:14', 5001, 'Kenworth', 'T680', '2018', '525621', '10 Speed Automatic', 'Paccar', '455', 'AIR', '1XKYDP9X6JJ205001', 'Good', '295/75 22.5', 'Aluminum', 'Lease-Purchase', 'NO', '100000', '', '', NULL),
('2023-01-12 04:57:18', '2023-01-12 04:57:18', 5428, 'Great Dane', '53ft, Dry Van', '2015', '/', '/', '/', '/', 'Air', '1GRAP0625GT605428', '/', '/', 'Steel', 'Purchase', 'NO', '40000', '', '', NULL),
(NULL, '2023-04-17 17:44:07', 6952, 'Freightliner', 'Cascadia', '2016', '100000', 'Manual', 'x', '0', 'AIR', '3AKJGLBG1GSHT6952', 'Good', '295/75 22.5', 'x', 'Lease Purchase', 'YES', '100000', 'Ready', '', 'Harvey Ready Ryan Fields 4/20'),
(NULL, NULL, 7162, 'Freightliner', 'Cascadia', '2016', '350000', 'Manual', 'x', '0', 'AIR', '3AKJGLBGXGSHT7162', 'New', '295/75 22.5', 'x', 'Rent or Lease', 'NO', '1', '', '', NULL),
(NULL, NULL, 7373, 'Freightliner', 'Cascadia', '2016', '390000', 'Manual', 'x', '0', 'AIR', '3AKJGLBG1GSHT7373', 'New', '295/75 22.5', 'x', 'Rent or Lease', 'NO', '1', '', '', NULL),
(NULL, NULL, 7619, 'Kenworth', 'T680', '2016', '581000', 'Manual', 'x', '0', 'AIR', '1XKYD49X1GJ487619', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', '1', '', '', NULL),
(NULL, NULL, 8148, 'Freightliner', 'Cascadia', '2021', '69000', 'Automatic', 'x', '0', 'AIR', '3AKJHHDR9MSMT8148', 'New', '295/75 22.5', 'x', 'Rent or Lease', 'NO', '1', '', '', NULL),
(NULL, NULL, 8149, 'Freightliner', 'Cascadia', '2021', '47000', 'Automatic', 'x', '0', 'AIR', '3AKJHHDR0MSMT8149', 'New', '295/75 22.5', 'x', 'Rent or Lease', 'NO', '1', '', '', NULL),
(NULL, NULL, 8151, 'Freightliner', 'Cascadia', '2021', '1', 'Automatic', 'x', '0', 'AIR', '3AKJHHDR9MSMT8151', 'New', '295/75 22.5', 'x', 'Rent or Lease', 'NO', '1', '', '', NULL),
(NULL, NULL, 8152, 'Freightliner', 'Cascadia', '2021', '107000', 'Automatic', 'x', '0', 'AIR', '3AKJHHDR0MSMT8152', 'New', '295/75 22.5', 'x', 'Rent or Lease', 'NO', '1', '', '', NULL),
(NULL, NULL, 8204, 'Freightliner', 'Cascadia', '2021', '52000', 'Automatic', 'x', '0', 'AIR', '3AKJHHDR4MSMT8204', 'New', '295/75 22.5', 'x', 'Rent or Lease', 'NO', '1', '', '', NULL),
(NULL, NULL, 9004, 'Kenworth', 'T680', '2022', '8000', 'Automatic', 'Paccar', '0', 'AIR', '1XKYDP9X9NJ489004', 'New', '295/75 22.5', 'x', 'Rent or Lease', 'NO', '1', '', '', NULL),
(NULL, NULL, 9576, 'Freightliner', 'Cascadia', '2019', '404000', 'Automatic', 'DD', '0', 'AIR', '3AKJHHDR2KSKJ9576', 'New', '295/75 22.5', 'x', 'Rent or Lease', 'NO', '1', '', '', NULL),
(NULL, NULL, 9577, 'Freightliner', 'Cascadia', '2019', '405000', 'Automatic', 'DD', '0', 'AIR', '3AKJHHDR4KSKJ9577', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', '1', '', '', NULL),
(NULL, NULL, 9578, 'Freightliner', 'Cascadia', '2019', '360000', 'Automatic', 'DD', '0', 'AIR', '3AKJHHDR6KSKJ9578', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', '1', '', '', NULL),
(NULL, NULL, 9579, 'Freightliner', 'Cascadia', '2019', '389000', 'Automatic', 'DD', '0', 'AIR', '3AKJHHDR8KSKJ9579', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', '1', '', '', NULL),
(NULL, NULL, 9580, 'Freightliner', 'Cascadia', '2019', '308000', 'Automatic', 'DD', '0', 'AIR', '3AKJHHDR4KSKJ9580', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', '1', '', '', NULL),
(NULL, NULL, 9581, 'Freightliner', 'Cascadia', '2019', '305000', 'Automatic', 'DD', '0', 'AIR', '3AKJHHDR6KSKJ9581', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', '1', '', '', NULL),
(NULL, NULL, 9582, 'Freightliner', 'Cascadia', '2019', '315000', 'Automatic', 'DD', '0', 'AIR', '3AKJHHDR8KSKJ9582', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', '1', '', '', NULL),
(NULL, NULL, 9583, 'Freightliner', 'Cascadia', '2019', '335000', 'Automatic', 'DD', '0', 'AIR', '3AKJHHDRXKSKJ9583', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', '1', '', '', NULL),
(NULL, '2023-02-24 17:40:43', 12345, 'Freightliner', 'Cascadia', '2022', '0', 'Automatic', 'Detroit', '505', 'Air Ride', 'xxxxxxxxxxxxx', 'NEW', '295/75 22.5', 'Aluminum', 'Lease-Purchase', 'YES', '178000', 'shop', '', NULL),
(NULL, NULL, 36414, 'International', 'MV607', '2020', '132000', 'Automatic', 'x', '0', 'Regular', '1HTEUMML1LH829139', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', '1', '', '', NULL),
(NULL, NULL, 651623, 'International', 'Box', '2016', '1', 'Automatic', 'x', '0', 'AIR', '1HTMMMML6GH219769', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', '1', '', '', NULL),
(NULL, NULL, 683747, 'International', 'Box', '2018', '244000', 'Automatic', 'x', '0', 'AIR', '1HTMMMML5JH567540', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', '1', '', '', NULL),
(NULL, NULL, 686391, 'Freightliner', 'Box', '2018', '259000', 'Automatic', 'x', '0', 'AIR', '1FVACWFC65HHR2214', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', '1', '', '', NULL),
(NULL, NULL, 828850, 'Freightliner', 'Cascadia', '2019', '1', 'Automatic', 'DD', '0', 'AIR', '1FUJHHDR3KLKN8060', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', '1', '', '', NULL),
(NULL, NULL, 828851, 'Freightliner', 'Cascadia', '2019', '415000', 'Automatic', 'DD', '0', 'AIR', '1FUJHHDR5KLKN8061', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', '1', '', '', NULL),
(NULL, NULL, 828852, 'Freightliner', 'Cascadia', '2019', '340000', 'Automatic', 'DD', '0', 'AIR', '1FUJHHDR7KLKN8062', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', '1', '', '', NULL),
(NULL, NULL, 829216, 'Freightliner', 'Cascadia', '2019', '203000', 'Automatic', 'DD', '0', 'AIR', '1FUJHHDR6KLKN8067', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', '1', '', '', NULL),
(NULL, NULL, 829217, 'Freightliner', 'Cascadia', '2019', '400000', 'Automatic', 'DD', '0', 'AIR', '1FUJHHDR8KLKN8068', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', '1', '', '', NULL),
(NULL, NULL, 861507, 'Freightliner', 'Cascadia', '2019', '1', 'Automatic', 'DD', '0', 'AIR', '3AKJHHDR6KSKJ5174', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', '1', '', '', NULL),
(NULL, NULL, 861508, 'Freightliner', 'Cascadia', '2019', '420000', 'Automatic', 'DD', '0', 'AIR', '3AKJHHDR8KSKJ5175', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', '1', '', '', NULL),
(NULL, NULL, 861509, 'Freightliner', 'Cascadia', '2019', '425000', 'Automatic', 'DD', '0', 'AIR', '3AKJHHDRXKSKJ5176', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', '1', '', '', NULL),
(NULL, NULL, 861510, 'Freightliner', 'Cascadia', '2019', '1', 'Automatic', 'DD', '0', 'AIR', '3AKJHHDR2KSKJ5138', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', '1', '', '', NULL),
(NULL, NULL, 861511, 'Freightliner', 'Cascadia', '2019', '385000', 'Automatic', 'DD', '0', 'AIR', '3AKJHHDR4KSKJ5139', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', '1', '', '', NULL),
(NULL, NULL, 897522, 'Freightliner', 'Cascadia', '2020', '308000', 'Automatic', 'DD', '0', 'AIR', '3AKJHHDR3LSLR3285', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', '1', '', '', NULL),
(NULL, NULL, 897523, 'Freightliner', 'Cascadia', '2020', '136000', 'Automatic', 'DD', '0', 'AIR', '3AKJHHDR5LSLR3286', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', '1', '', '', NULL),
(NULL, NULL, 897524, 'Freightliner', 'Cascadia', '2020', '318000', 'Automatic', 'DD', '0', 'AIR', '3AKJHHDR7LSLR3287', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', '1', '', '', NULL),
(NULL, NULL, 897525, 'Freightliner', 'Cascadia', '2020', '247000', 'Automatic', 'DD', '0', 'AIR', '3AKJHHDR9LSLR3288', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', '1', '', '', NULL),
(NULL, NULL, 897526, 'Freightliner', 'Cascadia', '2020', '331000', 'Automatic', 'DD', '0', 'AIR', '3AKJHHDR0LSLR3289', 'Good', '295/75 22.5', 'x', 'Rent or Lease', 'NO', '1', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `role_id` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'James', 'james@chilogisticsinc.com', NULL, '$2y$10$Ruk2cXI56b4d.cP6E2RkgedatGY9e3QEXz7IsanGPIqcIPiEMjGbm', 'Admin', '1', 'xywZRHxdPRXA9AOPGNtbwzamR8E6MDS2lpb9j3OrrDypAae9cKxAhHbe9NfX', '2022-10-28 11:30:03', '2022-10-28 11:30:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `available_trucks`
--
ALTER TABLE `available_trucks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `VIN` (`VIN`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `trucks`
--
ALTER TABLE `trucks`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
