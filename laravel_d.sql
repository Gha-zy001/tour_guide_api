-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2024 at 03:29 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_d`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `favoritable_type` varchar(255) NOT NULL,
  `favoritable_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `favoritable_type`, `favoritable_id`, `created_at`, `updated_at`) VALUES
(1, 19, 'App\\Models\\Place', 12, '2024-04-18 08:32:53', '2024-04-18 08:32:53'),
(2, 18, 'App\\Models\\Hotel', 2, '2024-04-25 17:49:25', '2024-04-25 17:49:25'),
(3, 18, 'App\\Models\\Hotel', 1, '2024-04-25 17:49:51', '2024-04-25 17:49:51');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rate` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `state_id`, `name`, `address`, `price`, `created_at`, `updated_at`, `rate`) VALUES
(1, 1, 'Sunrise Alex Avenue Hotel', 'Alexandria', 75.00, '2024-04-25 16:39:33', '2024-04-25 16:39:33', 9.00),
(2, 1, 'Windsor Palace Luxury Heritage Hotel Since 1902 by Paradise Inn Group', 'Alexandria', 50.00, '2024-04-25 16:39:33', '2024-04-25 16:39:33', 8.60),
(3, 1, 'The Grand Plaza Hotel Smouha', 'Alexandria', 26.00, '2024-04-25 16:39:33', '2024-04-25 16:39:33', 8.00),
(4, 1, 'Eastern Al Montazah Hotel', 'Alexandria', 65.00, '2024-04-25 16:39:33', '2024-04-25 16:39:33', 8.40),
(5, 1, 'Le Metropole Luxury Heritage Hotel Since 1902 by Paradise Inn Group', 'Alexandria', 59.00, '2024-04-25 16:39:33', '2024-04-25 16:39:33', 8.60),
(6, 1, 'Sunrise Alex Avenue Hotel', 'Alexandria', 75.00, '2024-04-25 16:42:02', '2024-04-25 16:42:02', 8.00),
(7, 1, 'Windsor Palace Luxury Heritage Hotel Since 1902 by Paradise Inn Group', 'Alexandria', 50.00, '2024-04-25 16:42:02', '2024-04-25 16:42:02', 8.60),
(8, 1, 'The Grand Plaza Hotel Smouha', 'Alexandria', 26.00, '2024-04-25 16:42:02', '2024-04-25 16:42:02', 8.00),
(9, 1, 'Eastern Al Montazah Hotel', 'Alexandria', 65.00, '2024-04-25 16:42:02', '2024-04-25 16:42:02', 8.40),
(10, 1, 'Le Metropole Luxury Heritage Hotel Since 1902 by Paradise Inn Group', 'Alexandria', 59.00, '2024-04-25 16:42:02', '2024-04-25 16:42:02', 8.60),
(11, 1, 'Sunrise Alex Avenue Hotel', 'Alexandria', 75.00, '2024-04-25 16:44:20', '2024-04-25 16:44:20', 8.00),
(12, 1, 'Windsor Palace Luxury Heritage Hotel Since 1902 by Paradise Inn Group', 'Alexandria', 50.00, '2024-04-25 16:44:21', '2024-04-25 16:44:21', 8.60),
(13, 1, 'The Grand Plaza Hotel Smouha', 'Alexandria', 26.00, '2024-04-25 16:44:21', '2024-04-25 16:44:21', 8.00),
(14, 1, 'Eastern Al Montazah Hotel', 'Alexandria', 65.00, '2024-04-25 16:44:21', '2024-04-25 16:44:21', 8.40),
(15, 1, 'Le Metropole Luxury Heritage Hotel Since 1902 by Paradise Inn Group', 'Alexandria', 59.00, '2024-04-25 16:44:21', '2024-04-25 16:44:21', 8.60),
(16, 1, 'Plaza Hotel Alexandria', 'Alexandria', 48.00, '2024-04-25 16:44:21', '2024-04-25 16:44:21', 8.60),
(17, 1, 'Royal Jewel Al Raml Hotel', 'Alexandria', 76.00, '2024-04-25 16:44:21', '2024-04-25 16:44:21', 8.30),
(18, 1, 'Fleet Club Mahrousa', 'Alexandria', 28.00, '2024-04-25 16:44:21', '2024-04-25 16:44:21', 8.40),
(19, 1, 'Cherry Maryski Hotel', 'Alexandria', 25.00, '2024-04-25 16:44:21', '2024-04-25 16:44:21', 8.00),
(20, 1, 'Alkadi Hotel', 'Alexandria', 20.00, '2024-04-25 16:44:21', '2024-04-25 16:44:21', 10.00),
(21, 1, 'Paradise Inn Beach Resort', 'Alexandria', 31.00, '2024-04-25 16:44:21', '2024-04-25 16:44:21', 8.20),
(22, 1, 'Kaoud Sporting Hotel.', 'Alexandria', 27.00, '2024-04-25 16:44:21', '2024-04-25 16:44:21', 8.40),
(23, 1, 'Regency Hotel', 'Alexandria', 20.00, '2024-04-25 16:44:21', '2024-04-25 16:44:21', 7.20),
(24, 1, 'Abeer Hotel Alexandria', 'Alexandria', 16.00, '2024-04-25 16:44:21', '2024-04-25 16:44:21', 7.10),
(25, 1, '26th of July Apartments', 'Alexandria', 46.00, '2024-04-25 16:44:21', '2024-04-25 16:44:21', 7.00),
(26, 1, 'Hyde Park House Hotel', 'Alexandria', 31.00, '2024-04-25 16:44:21', '2024-04-25 16:44:21', 7.30),
(27, 1, 'Triomphe Hostel', 'Alexandria', 19.00, '2024-04-25 16:44:21', '2024-04-25 16:44:21', 7.30),
(28, 1, 'Sunrise Alex Avenue Hotel', 'Alexandria', 75.00, '2024-04-25 16:44:37', '2024-04-25 16:44:37', 8.00),
(29, 1, 'Windsor Palace Luxury Heritage Hotel Since 1902 by Paradise Inn Group', 'Alexandria', 50.00, '2024-04-25 16:44:37', '2024-04-25 16:44:37', 8.60),
(30, 1, 'The Grand Plaza Hotel Smouha', 'Alexandria', 26.00, '2024-04-25 16:44:37', '2024-04-25 16:44:37', 8.00),
(31, 1, 'Eastern Al Montazah Hotel', 'Alexandria', 65.00, '2024-04-25 16:44:37', '2024-04-25 16:44:37', 8.40),
(32, 1, 'Le Metropole Luxury Heritage Hotel Since 1902 by Paradise Inn Group', 'Alexandria', 59.00, '2024-04-25 16:44:37', '2024-04-25 16:44:37', 8.60),
(33, 1, 'Plaza Hotel Alexandria', 'Alexandria', 48.00, '2024-04-25 16:44:37', '2024-04-25 16:44:37', 8.60),
(34, 1, 'Royal Jewel Al Raml Hotel', 'Alexandria', 76.00, '2024-04-25 16:44:37', '2024-04-25 16:44:37', 8.30),
(35, 1, 'Fleet Club Mahrousa', 'Alexandria', 28.00, '2024-04-25 16:44:37', '2024-04-25 16:44:37', 8.40),
(36, 1, 'Cherry Maryski Hotel', 'Alexandria', 25.00, '2024-04-25 16:44:37', '2024-04-25 16:44:37', 8.00),
(37, 1, 'Alkadi Hotel', 'Alexandria', 20.00, '2024-04-25 16:44:37', '2024-04-25 16:44:37', 10.00),
(38, 1, 'Paradise Inn Beach Resort', 'Alexandria', 31.00, '2024-04-25 16:44:37', '2024-04-25 16:44:37', 8.20),
(39, 1, 'Kaoud Sporting Hotel.', 'Alexandria', 27.00, '2024-04-25 16:44:37', '2024-04-25 16:44:37', 8.40),
(40, 1, 'Regency Hotel', 'Alexandria', 20.00, '2024-04-25 16:44:37', '2024-04-25 16:44:37', 7.20),
(41, 1, 'Abeer Hotel Alexandria', 'Alexandria', 16.00, '2024-04-25 16:44:37', '2024-04-25 16:44:37', 7.10),
(42, 1, '26th of July Apartments', 'Alexandria', 46.00, '2024-04-25 16:44:37', '2024-04-25 16:44:37', 7.00),
(43, 1, 'Hyde Park House Hotel', 'Alexandria', 31.00, '2024-04-25 16:44:37', '2024-04-25 16:44:37', 7.30),
(44, 1, 'Triomphe Hostel', 'Alexandria', 19.00, '2024-04-25 16:44:37', '2024-04-25 16:44:37', 7.30),
(45, 1, 'Caesar House', 'Alexandria', 17.00, '2024-04-25 16:44:37', '2024-04-25 16:44:37', 7.60),
(46, 1, 'Transit Alexandria Hostel', 'Alexandria', 10.00, '2024-04-25 16:44:37', '2024-04-25 16:44:37', 7.60),
(47, 1, 'Fayrouzat Almandra near the sea', 'Alexandria', 5.00, '2024-04-25 16:44:37', '2024-04-25 16:44:37', 8.80),
(48, 1, 'Clement\'s House Hostel', 'Alexandria', 11.00, '2024-04-25 16:44:37', '2024-04-25 16:44:37', 7.30),
(49, 1, 'الكيلو 91-اكوا فيو aqua view للمصرين فقط', 'Alexandria', 27.00, '2024-04-25 16:44:37', '2024-04-25 16:44:37', 7.50),
(50, 1, 'شقة فندقية اسكندر ابراهيم', 'Alexandria', 31.00, '2024-04-25 16:44:37', '2024-04-25 16:44:37', 8.10),
(51, 1, 'Elites 1', 'Alexandria', 38.00, '2024-04-25 16:44:38', '2024-04-25 16:44:38', 9.20),
(52, 4, 'Kato Dool Wellness Resort', 'Aswan', 151.00, '2024-04-25 16:53:00', '2024-04-25 16:53:00', 8.50),
(53, 4, 'Kana Kato', 'Aswan', 46.00, '2024-04-25 16:53:00', '2024-04-25 16:53:00', 9.10),
(54, 4, 'Sonesta Nouba Hotel Aswan', 'Aswan', 200.00, '2024-04-25 16:53:00', '2024-04-25 16:53:00', 9.00),
(55, 4, 'Fadlos Anay Nubian Guesthouse', 'Aswan', 29.00, '2024-04-25 16:53:00', '2024-04-25 16:53:00', 8.20),
(56, 4, 'Khodrey ka', 'Aswan', 28.00, '2024-04-25 16:53:00', '2024-04-25 16:53:00', 9.00),
(57, 4, 'Nuba Tod Abouda Guest House', 'Aswan', 38.00, '2024-04-25 16:53:00', '2024-04-25 16:53:00', 9.20),
(58, 4, 'Ekadolli Nubian Guesthouse Aswan', 'Aswan', 22.00, '2024-04-25 16:53:00', '2024-04-25 16:53:00', 8.10),
(59, 4, 'Bob Marley Guest House', 'Aswan', 22.00, '2024-04-25 16:53:00', '2024-04-25 16:53:00', 9.00),
(60, 4, 'Aswan Nubian House', 'Aswan', 19.00, '2024-04-25 16:53:00', '2024-04-25 16:53:00', 8.40),
(61, 4, 'Nub Inn', 'Aswan', 102.00, '2024-04-25 16:53:00', '2024-04-25 16:53:00', 8.80),
(62, 4, 'Nubian Holiday House Aswan', 'Aswan', 32.00, '2024-04-25 16:53:00', '2024-04-25 16:53:00', 8.80),
(63, 4, 'Onaty Ka Guest House', 'Aswan', 24.00, '2024-04-25 16:53:00', '2024-04-25 16:53:00', 9.10),
(64, 4, 'Nubian palace', 'Aswan', 58.00, '2024-04-25 16:53:00', '2024-04-25 16:53:00', 9.00),
(65, 4, 'El-amin Guest House', 'Aswan', 22.00, '2024-04-25 16:53:00', '2024-04-25 16:53:00', 8.70),
(66, 4, 'Nile View Rana Nubian Guest Houes', 'Aswan', 23.00, '2024-04-25 16:53:00', '2024-04-25 16:53:00', 8.80),
(67, 4, 'Nile View Guest House', 'Aswan', 36.00, '2024-04-25 16:53:00', '2024-04-25 16:53:00', 9.50),
(68, 4, 'david hostel', 'Aswan', 7.00, '2024-04-25 16:53:00', '2024-04-25 16:53:00', 8.50),
(69, 4, 'Nubian Farm Aswan', 'Aswan', 45.00, '2024-04-25 16:53:00', '2024-04-25 16:53:00', 8.30),
(70, 4, 'Kato Dool Wellness Resort', 'Aswan', 151.00, '2024-04-25 16:53:48', '2024-04-25 16:53:48', 8.50),
(71, 4, 'Kana Kato', 'Aswan', 46.00, '2024-04-25 16:53:48', '2024-04-25 16:53:48', 9.10),
(72, 4, 'Sonesta Nouba Hotel Aswan', 'Aswan', 200.00, '2024-04-25 16:53:48', '2024-04-25 16:53:48', 9.00),
(73, 4, 'Fadlos Anay Nubian Guesthouse', 'Aswan', 29.00, '2024-04-25 16:53:48', '2024-04-25 16:53:48', 8.20),
(74, 4, 'Khodrey ka', 'Aswan', 28.00, '2024-04-25 16:53:48', '2024-04-25 16:53:48', 9.00),
(75, 4, 'Nuba Tod Abouda Guest House', 'Aswan', 38.00, '2024-04-25 16:53:48', '2024-04-25 16:53:48', 9.20),
(76, 4, 'Ekadolli Nubian Guesthouse Aswan', 'Aswan', 22.00, '2024-04-25 16:53:48', '2024-04-25 16:53:48', 8.10),
(77, 4, 'Bob Marley Guest House', 'Aswan', 22.00, '2024-04-25 16:53:48', '2024-04-25 16:53:48', 9.00),
(78, 4, 'Aswan Nubian House', 'Aswan', 19.00, '2024-04-25 16:53:48', '2024-04-25 16:53:48', 8.40),
(79, 4, 'Nub Inn', 'Aswan', 102.00, '2024-04-25 16:53:48', '2024-04-25 16:53:48', 8.80),
(80, 4, 'Nubian Holiday House Aswan', 'Aswan', 32.00, '2024-04-25 16:53:48', '2024-04-25 16:53:48', 8.80),
(81, 4, 'Onaty Ka Guest House', 'Aswan', 24.00, '2024-04-25 16:53:48', '2024-04-25 16:53:48', 9.10),
(82, 4, 'Nubian palace', 'Aswan', 58.00, '2024-04-25 16:53:48', '2024-04-25 16:53:48', 9.00),
(83, 4, 'El-amin Guest House', 'Aswan', 22.00, '2024-04-25 16:53:48', '2024-04-25 16:53:48', 8.70),
(84, 4, 'Nile View Rana Nubian Guest Houes', 'Aswan', 23.00, '2024-04-25 16:53:48', '2024-04-25 16:53:48', 8.80),
(85, 4, 'Nile View Guest House', 'Aswan', 36.00, '2024-04-25 16:53:48', '2024-04-25 16:53:48', 9.50),
(86, 4, 'david hostel', 'Aswan', 7.00, '2024-04-25 16:53:48', '2024-04-25 16:53:48', 8.50),
(87, 4, 'Nubian Farm Aswan', 'Aswan', 45.00, '2024-04-25 16:53:48', '2024-04-25 16:53:48', 8.30),
(88, 4, 'Taharka Nubian House', 'Aswan', 45.00, '2024-04-25 16:53:48', '2024-04-25 16:53:48', 8.50),
(89, 4, 'Opal privat nubian hotel', 'Aswan', 13.00, '2024-04-25 16:53:48', '2024-04-25 16:53:48', 8.80),
(90, 4, 'Mostafa guesthouse', 'Aswan', 16.00, '2024-04-25 16:53:48', '2024-04-25 16:53:48', 9.40),
(91, 4, 'White House', 'Aswan', 30.00, '2024-04-25 16:53:48', '2024-04-25 16:53:48', 8.90),
(92, 4, 'Habibi Nubian Guest House-Nubian Hospitality', 'Aswan', 27.00, '2024-04-25 16:53:48', '2024-04-25 16:53:48', 9.40),
(93, 4, 'Shater Nubian House', 'Aswan', 16.00, '2024-04-25 16:53:48', '2024-04-25 16:53:48', 8.20),
(94, 4, 'Kendaka Nubian House', 'Aswan', 31.00, '2024-04-25 16:53:48', '2024-04-25 16:53:48', 9.30),
(95, 4, 'Carmah Guest House', 'Aswan', 16.00, '2024-04-25 16:53:48', '2024-04-25 16:53:48', 10.00),
(96, 4, 'Nuba Narty', 'Aswan', 50.00, '2024-04-25 16:53:48', '2024-04-25 16:53:48', 8.70),
(97, 4, 'OLD Nubian guest house', 'Aswan', 82.00, '2024-04-25 16:53:48', '2024-04-25 16:53:48', 8.40),
(98, 4, 'Anakob', 'Aswan', 109.00, '2024-04-25 16:53:48', '2024-04-25 16:53:48', 8.90),
(99, 4, 'Otasho Nile View House', 'Aswan', 12.00, '2024-04-25 16:53:49', '2024-04-25 16:53:49', 8.00),
(100, 3, 'Safir Hotel Cairo', 'Cairo', 114.00, '2024-04-25 16:55:18', '2024-04-25 16:55:18', 8.30),
(101, 3, 'Sheraton Cairo Hotel & Casino', 'Cairo', 189.00, '2024-04-25 16:55:18', '2024-04-25 16:55:18', 8.10),
(102, 3, 'Safir Hotel Cairo', 'Cairo', 114.00, '2024-04-25 16:55:39', '2024-04-25 16:55:39', 8.30),
(103, 3, 'Sheraton Cairo Hotel & Casino', 'Cairo', 189.00, '2024-04-25 16:55:39', '2024-04-25 16:55:39', 8.10),
(104, 3, 'Safir Hotel Cairo', 'Cairo', 114.00, '2024-04-25 16:56:41', '2024-04-25 16:56:41', 8.30),
(105, 3, 'Sheraton Cairo Hotel & Casino', 'Cairo', 189.00, '2024-04-25 16:56:41', '2024-04-25 16:56:41', 8.10),
(106, 3, 'Intercontinental Cairo Semiramis', 'Cairo', 180.00, '2024-04-25 16:56:41', '2024-04-25 16:56:41', 8.50),
(107, 3, 'Safir Hotel Cairo', 'Cairo', 114.00, '2024-04-25 16:57:01', '2024-04-25 16:57:01', 8.30),
(108, 3, 'Sheraton Cairo Hotel & Casino', 'Cairo', 189.00, '2024-04-25 16:57:02', '2024-04-25 16:57:02', 8.10),
(109, 3, 'Intercontinental Cairo Semiramis', 'Cairo', 180.00, '2024-04-25 16:57:02', '2024-04-25 16:57:02', 8.50),
(110, 3, 'Kempinski Nile Hotel', 'Cairo', 196.00, '2024-04-25 16:57:02', '2024-04-25 16:57:02', 8.40),
(111, 3, 'Holiday Inn Cairo - Citystars', 'Cairo', 129.00, '2024-04-25 16:57:02', '2024-04-25 16:57:02', 8.20),
(112, 3, 'Sofitel Cairo Nile El Gezirah', 'Cairo', 189.00, '2024-04-25 16:57:02', '2024-04-25 16:57:02', 8.60),
(113, 3, 'Intercontinental Cairo Citystars', 'Cairo', 170.00, '2024-04-25 16:57:02', '2024-04-25 16:57:02', 8.10),
(114, 3, 'Safir Hotel Cairo', 'Cairo', 114.00, '2024-04-25 16:57:20', '2024-04-25 16:57:20', 8.30),
(115, 3, 'Sheraton Cairo Hotel & Casino', 'Cairo', 189.00, '2024-04-25 16:57:20', '2024-04-25 16:57:20', 8.10),
(116, 3, 'Intercontinental Cairo Semiramis', 'Cairo', 180.00, '2024-04-25 16:57:20', '2024-04-25 16:57:20', 8.50),
(117, 3, 'Kempinski Nile Hotel', 'Cairo', 196.00, '2024-04-25 16:57:20', '2024-04-25 16:57:20', 8.40),
(118, 3, 'Holiday Inn Cairo - Citystars', 'Cairo', 129.00, '2024-04-25 16:57:20', '2024-04-25 16:57:20', 8.20),
(119, 3, 'Sofitel Cairo Nile El Gezirah', 'Cairo', 189.00, '2024-04-25 16:57:20', '2024-04-25 16:57:20', 8.60),
(120, 3, 'Intercontinental Cairo Citystars', 'Cairo', 170.00, '2024-04-25 16:57:20', '2024-04-25 16:57:20', 8.10),
(121, 3, 'Cairo Marriott Hotel & Omar Khayyam Casino', 'Cairo', 189.00, '2024-04-25 16:57:20', '2024-04-25 16:57:20', 8.50),
(122, 3, 'Peace Inn West Pyramids Cairo', 'Cairo', 81.00, '2024-04-25 16:57:20', '2024-04-25 16:57:20', 9.30),
(123, 3, 'Sphinx Inn', 'Cairo', 33.00, '2024-04-25 16:57:20', '2024-04-25 16:57:20', 8.30),
(124, 3, 'Tolip El Narges', 'Cairo', 54.00, '2024-04-25 16:57:20', '2024-04-25 16:57:20', 8.00),
(125, 3, 'Safir Hotel Cairo', 'Cairo', 114.00, '2024-04-25 16:57:34', '2024-04-25 16:57:34', 8.30),
(126, 3, 'Sheraton Cairo Hotel & Casino', 'Cairo', 189.00, '2024-04-25 16:57:34', '2024-04-25 16:57:34', 8.10),
(127, 3, 'Intercontinental Cairo Semiramis', 'Cairo', 180.00, '2024-04-25 16:57:34', '2024-04-25 16:57:34', 8.50),
(128, 3, 'Kempinski Nile Hotel', 'Cairo', 196.00, '2024-04-25 16:57:34', '2024-04-25 16:57:34', 8.40),
(129, 3, 'Holiday Inn Cairo - Citystars', 'Cairo', 129.00, '2024-04-25 16:57:34', '2024-04-25 16:57:34', 8.20),
(130, 3, 'Sofitel Cairo Nile El Gezirah', 'Cairo', 189.00, '2024-04-25 16:57:34', '2024-04-25 16:57:34', 8.60),
(131, 3, 'Intercontinental Cairo Citystars', 'Cairo', 170.00, '2024-04-25 16:57:34', '2024-04-25 16:57:34', 8.10),
(132, 3, 'Cairo Marriott Hotel & Omar Khayyam Casino', 'Cairo', 189.00, '2024-04-25 16:57:34', '2024-04-25 16:57:34', 8.50),
(133, 3, 'Peace Inn West Pyramids Cairo', 'Cairo', 81.00, '2024-04-25 16:57:34', '2024-04-25 16:57:34', 9.30),
(134, 3, 'Sphinx Inn', 'Cairo', 33.00, '2024-04-25 16:57:34', '2024-04-25 16:57:34', 8.30),
(135, 3, 'Tolip El Narges', 'Cairo', 54.00, '2024-04-25 16:57:34', '2024-04-25 16:57:34', 8.00),
(136, 3, 'Renaissance Cairo Mirage City Hotel', 'Cairo', 186.00, '2024-04-25 16:57:34', '2024-04-25 16:57:34', 8.50),
(137, 3, 'Royal Maxim Palace Kempinski Cairo', 'Cairo', 230.00, '2024-04-25 16:57:34', '2024-04-25 16:57:34', 8.10),
(138, 3, 'Museum Boutique', 'Cairo', 35.00, '2024-04-25 16:57:34', '2024-04-25 16:57:34', 8.40),
(139, 3, 'Safir Hotel Cairo', 'Cairo', 114.00, '2024-04-25 16:57:49', '2024-04-25 16:57:49', 8.30),
(140, 3, 'Sheraton Cairo Hotel & Casino', 'Cairo', 189.00, '2024-04-25 16:57:49', '2024-04-25 16:57:49', 8.10),
(141, 3, 'Intercontinental Cairo Semiramis', 'Cairo', 180.00, '2024-04-25 16:57:49', '2024-04-25 16:57:49', 8.50),
(142, 3, 'Kempinski Nile Hotel', 'Cairo', 196.00, '2024-04-25 16:57:49', '2024-04-25 16:57:49', 8.40),
(143, 3, 'Holiday Inn Cairo - Citystars', 'Cairo', 129.00, '2024-04-25 16:57:49', '2024-04-25 16:57:49', 8.20),
(144, 3, 'Sofitel Cairo Nile El Gezirah', 'Cairo', 189.00, '2024-04-25 16:57:49', '2024-04-25 16:57:49', 8.60),
(145, 3, 'Intercontinental Cairo Citystars', 'Cairo', 170.00, '2024-04-25 16:57:49', '2024-04-25 16:57:49', 8.10),
(146, 3, 'Cairo Marriott Hotel & Omar Khayyam Casino', 'Cairo', 189.00, '2024-04-25 16:57:49', '2024-04-25 16:57:49', 8.50),
(147, 3, 'Peace Inn West Pyramids Cairo', 'Cairo', 81.00, '2024-04-25 16:57:49', '2024-04-25 16:57:49', 9.30),
(148, 3, 'Sphinx Inn', 'Cairo', 33.00, '2024-04-25 16:57:49', '2024-04-25 16:57:49', 8.30),
(149, 3, 'Tolip El Narges', 'Cairo', 54.00, '2024-04-25 16:57:49', '2024-04-25 16:57:49', 8.00),
(150, 3, 'Renaissance Cairo Mirage City Hotel', 'Cairo', 186.00, '2024-04-25 16:57:49', '2024-04-25 16:57:49', 8.50),
(151, 3, 'Royal Maxim Palace Kempinski Cairo', 'Cairo', 230.00, '2024-04-25 16:57:49', '2024-04-25 16:57:49', 8.10),
(152, 3, 'Museum Boutique', 'Cairo', 35.00, '2024-04-25 16:57:49', '2024-04-25 16:57:49', 8.40),
(153, 3, 'Novotel Cairo 6th of October', 'Cairo', 98.00, '2024-04-25 16:57:49', '2024-04-25 16:57:49', 8.90),
(154, 3, 'Safir Hotel Cairo', 'Cairo', 114.00, '2024-04-25 16:58:05', '2024-04-25 16:58:05', 8.30),
(155, 3, 'Sheraton Cairo Hotel & Casino', 'Cairo', 189.00, '2024-04-25 16:58:05', '2024-04-25 16:58:05', 8.10),
(156, 3, 'Intercontinental Cairo Semiramis', 'Cairo', 180.00, '2024-04-25 16:58:05', '2024-04-25 16:58:05', 8.50),
(157, 3, 'Kempinski Nile Hotel', 'Cairo', 196.00, '2024-04-25 16:58:05', '2024-04-25 16:58:05', 8.40),
(158, 3, 'Holiday Inn Cairo - Citystars', 'Cairo', 129.00, '2024-04-25 16:58:05', '2024-04-25 16:58:05', 8.20),
(159, 3, 'Sofitel Cairo Nile El Gezirah', 'Cairo', 189.00, '2024-04-25 16:58:05', '2024-04-25 16:58:05', 8.60),
(160, 3, 'Intercontinental Cairo Citystars', 'Cairo', 170.00, '2024-04-25 16:58:05', '2024-04-25 16:58:05', 8.10),
(161, 3, 'Cairo Marriott Hotel & Omar Khayyam Casino', 'Cairo', 189.00, '2024-04-25 16:58:05', '2024-04-25 16:58:05', 8.50),
(162, 3, 'Peace Inn West Pyramids Cairo', 'Cairo', 81.00, '2024-04-25 16:58:05', '2024-04-25 16:58:05', 9.30),
(163, 3, 'Sphinx Inn', 'Cairo', 33.00, '2024-04-25 16:58:05', '2024-04-25 16:58:05', 8.30),
(164, 3, 'Tolip El Narges', 'Cairo', 54.00, '2024-04-25 16:58:05', '2024-04-25 16:58:05', 8.00),
(165, 3, 'Renaissance Cairo Mirage City Hotel', 'Cairo', 186.00, '2024-04-25 16:58:05', '2024-04-25 16:58:05', 8.50),
(166, 3, 'Royal Maxim Palace Kempinski Cairo', 'Cairo', 230.00, '2024-04-25 16:58:05', '2024-04-25 16:58:05', 8.10),
(167, 3, 'Museum Boutique', 'Cairo', 35.00, '2024-04-25 16:58:05', '2024-04-25 16:58:05', 8.40),
(168, 3, 'Novotel Cairo 6th of October', 'Cairo', 98.00, '2024-04-25 16:58:05', '2024-04-25 16:58:05', 8.90),
(169, 3, 'The Westin Cairo Golf Resort & Spa', 'Cairo', 264.00, '2024-04-25 16:58:05', '2024-04-25 16:58:05', 8.80),
(170, 3, 'JW Marriott Hotel Cairo', 'Cairo', 247.00, '2024-04-25 16:58:05', '2024-04-25 16:58:05', 8.20),
(171, 3, 'Safir Hotel Cairo', 'Cairo', 114.00, '2024-04-25 16:58:18', '2024-04-25 16:58:18', 8.30),
(172, 3, 'Sheraton Cairo Hotel & Casino', 'Cairo', 189.00, '2024-04-25 16:58:18', '2024-04-25 16:58:18', 8.10),
(173, 3, 'Intercontinental Cairo Semiramis', 'Cairo', 180.00, '2024-04-25 16:58:18', '2024-04-25 16:58:18', 8.50),
(174, 3, 'Kempinski Nile Hotel', 'Cairo', 196.00, '2024-04-25 16:58:18', '2024-04-25 16:58:18', 8.40),
(175, 3, 'Holiday Inn Cairo - Citystars', 'Cairo', 129.00, '2024-04-25 16:58:18', '2024-04-25 16:58:18', 8.20),
(176, 3, 'Sofitel Cairo Nile El Gezirah', 'Cairo', 189.00, '2024-04-25 16:58:18', '2024-04-25 16:58:18', 8.60),
(177, 3, 'Intercontinental Cairo Citystars', 'Cairo', 170.00, '2024-04-25 16:58:18', '2024-04-25 16:58:18', 8.10),
(178, 3, 'Cairo Marriott Hotel & Omar Khayyam Casino', 'Cairo', 189.00, '2024-04-25 16:58:18', '2024-04-25 16:58:18', 8.50),
(179, 3, 'Peace Inn West Pyramids Cairo', 'Cairo', 81.00, '2024-04-25 16:58:18', '2024-04-25 16:58:18', 9.30),
(180, 3, 'Sphinx Inn', 'Cairo', 33.00, '2024-04-25 16:58:18', '2024-04-25 16:58:18', 8.30),
(181, 3, 'Tolip El Narges', 'Cairo', 54.00, '2024-04-25 16:58:18', '2024-04-25 16:58:18', 8.00),
(182, 3, 'Renaissance Cairo Mirage City Hotel', 'Cairo', 186.00, '2024-04-25 16:58:18', '2024-04-25 16:58:18', 8.50),
(183, 3, 'Royal Maxim Palace Kempinski Cairo', 'Cairo', 230.00, '2024-04-25 16:58:18', '2024-04-25 16:58:18', 8.10),
(184, 3, 'Museum Boutique', 'Cairo', 35.00, '2024-04-25 16:58:18', '2024-04-25 16:58:18', 8.40),
(185, 3, 'Novotel Cairo 6th of October', 'Cairo', 98.00, '2024-04-25 16:58:18', '2024-04-25 16:58:18', 8.90),
(186, 3, 'The Westin Cairo Golf Resort & Spa', 'Cairo', 264.00, '2024-04-25 16:58:18', '2024-04-25 16:58:18', 8.80),
(187, 3, 'JW Marriott Hotel Cairo', 'Cairo', 247.00, '2024-04-25 16:58:18', '2024-04-25 16:58:18', 8.20),
(188, 3, 'Stay Inn Cairo Hotel', 'Cairo', 82.00, '2024-04-25 16:58:18', '2024-04-25 16:58:18', 9.00),
(189, 3, 'Pyramids Resort by Jaz', 'Cairo', 108.00, '2024-04-25 16:58:18', '2024-04-25 16:58:18', 9.50),
(190, 3, 'Safir Hotel Cairo', 'Cairo', 114.00, '2024-04-25 16:58:33', '2024-04-25 16:58:33', 8.30),
(191, 3, 'Sheraton Cairo Hotel & Casino', 'Cairo', 189.00, '2024-04-25 16:58:33', '2024-04-25 16:58:33', 8.10),
(192, 3, 'Intercontinental Cairo Semiramis', 'Cairo', 180.00, '2024-04-25 16:58:34', '2024-04-25 16:58:34', 8.50),
(193, 3, 'Kempinski Nile Hotel', 'Cairo', 196.00, '2024-04-25 16:58:34', '2024-04-25 16:58:34', 8.40),
(194, 3, 'Holiday Inn Cairo - Citystars', 'Cairo', 129.00, '2024-04-25 16:58:34', '2024-04-25 16:58:34', 8.20),
(195, 3, 'Sofitel Cairo Nile El Gezirah', 'Cairo', 189.00, '2024-04-25 16:58:34', '2024-04-25 16:58:34', 8.60),
(196, 3, 'Intercontinental Cairo Citystars', 'Cairo', 170.00, '2024-04-25 16:58:34', '2024-04-25 16:58:34', 8.10),
(197, 3, 'Cairo Marriott Hotel & Omar Khayyam Casino', 'Cairo', 189.00, '2024-04-25 16:58:34', '2024-04-25 16:58:34', 8.50),
(198, 3, 'Peace Inn West Pyramids Cairo', 'Cairo', 81.00, '2024-04-25 16:58:34', '2024-04-25 16:58:34', 9.30),
(199, 3, 'Sphinx Inn', 'Cairo', 33.00, '2024-04-25 16:58:34', '2024-04-25 16:58:34', 8.30),
(200, 3, 'Tolip El Narges', 'Cairo', 54.00, '2024-04-25 16:58:34', '2024-04-25 16:58:34', 8.00),
(201, 3, 'Renaissance Cairo Mirage City Hotel', 'Cairo', 186.00, '2024-04-25 16:58:34', '2024-04-25 16:58:34', 8.50),
(202, 3, 'Royal Maxim Palace Kempinski Cairo', 'Cairo', 230.00, '2024-04-25 16:58:34', '2024-04-25 16:58:34', 8.10),
(203, 3, 'Museum Boutique', 'Cairo', 35.00, '2024-04-25 16:58:34', '2024-04-25 16:58:34', 8.40),
(204, 3, 'Novotel Cairo 6th of October', 'Cairo', 98.00, '2024-04-25 16:58:34', '2024-04-25 16:58:34', 8.90),
(205, 3, 'The Westin Cairo Golf Resort & Spa', 'Cairo', 264.00, '2024-04-25 16:58:34', '2024-04-25 16:58:34', 8.80),
(206, 3, 'JW Marriott Hotel Cairo', 'Cairo', 247.00, '2024-04-25 16:58:34', '2024-04-25 16:58:34', 8.20),
(207, 3, 'Stay Inn Cairo Hotel', 'Cairo', 82.00, '2024-04-25 16:58:34', '2024-04-25 16:58:34', 9.00),
(208, 3, 'Pyramids Resort by Jaz', 'Cairo', 108.00, '2024-04-25 16:58:34', '2024-04-25 16:58:34', 9.50),
(209, 3, 'Mövenpick Hotel Cairo-Media City', 'Cairo', 109.00, '2024-04-25 16:58:34', '2024-04-25 16:58:34', 9.20),
(210, 3, 'Safir Hotel Cairo', 'Cairo', 114.00, '2024-04-25 16:58:53', '2024-04-25 16:58:53', 8.30),
(211, 3, 'Sheraton Cairo Hotel & Casino', 'Cairo', 189.00, '2024-04-25 16:58:53', '2024-04-25 16:58:53', 8.10),
(212, 3, 'Intercontinental Cairo Semiramis', 'Cairo', 180.00, '2024-04-25 16:58:53', '2024-04-25 16:58:53', 8.50),
(213, 3, 'Kempinski Nile Hotel', 'Cairo', 196.00, '2024-04-25 16:58:53', '2024-04-25 16:58:53', 8.40),
(214, 3, 'Holiday Inn Cairo - Citystars', 'Cairo', 129.00, '2024-04-25 16:58:53', '2024-04-25 16:58:53', 8.20),
(215, 3, 'Sofitel Cairo Nile El Gezirah', 'Cairo', 189.00, '2024-04-25 16:58:53', '2024-04-25 16:58:53', 8.60),
(216, 3, 'Intercontinental Cairo Citystars', 'Cairo', 170.00, '2024-04-25 16:58:53', '2024-04-25 16:58:53', 8.10),
(217, 3, 'Cairo Marriott Hotel & Omar Khayyam Casino', 'Cairo', 189.00, '2024-04-25 16:58:53', '2024-04-25 16:58:53', 8.50),
(218, 3, 'Peace Inn West Pyramids Cairo', 'Cairo', 81.00, '2024-04-25 16:58:53', '2024-04-25 16:58:53', 9.30),
(219, 3, 'Sphinx Inn', 'Cairo', 33.00, '2024-04-25 16:58:53', '2024-04-25 16:58:53', 8.30),
(220, 3, 'Tolip El Narges', 'Cairo', 54.00, '2024-04-25 16:58:53', '2024-04-25 16:58:53', 8.00),
(221, 3, 'Renaissance Cairo Mirage City Hotel', 'Cairo', 186.00, '2024-04-25 16:58:53', '2024-04-25 16:58:53', 8.50),
(222, 3, 'Royal Maxim Palace Kempinski Cairo', 'Cairo', 230.00, '2024-04-25 16:58:53', '2024-04-25 16:58:53', 8.10),
(223, 3, 'Museum Boutique', 'Cairo', 35.00, '2024-04-25 16:58:53', '2024-04-25 16:58:53', 8.40),
(224, 3, 'Novotel Cairo 6th of October', 'Cairo', 98.00, '2024-04-25 16:58:53', '2024-04-25 16:58:53', 8.90),
(225, 3, 'The Westin Cairo Golf Resort & Spa', 'Cairo', 264.00, '2024-04-25 16:58:53', '2024-04-25 16:58:53', 8.80),
(226, 3, 'JW Marriott Hotel Cairo', 'Cairo', 247.00, '2024-04-25 16:58:53', '2024-04-25 16:58:53', 8.20),
(227, 3, 'Stay Inn Cairo Hotel', 'Cairo', 82.00, '2024-04-25 16:58:53', '2024-04-25 16:58:53', 9.00),
(228, 3, 'Pyramids Resort by Jaz', 'Cairo', 108.00, '2024-04-25 16:58:53', '2024-04-25 16:58:53', 9.50),
(229, 3, 'Mövenpick Hotel Cairo-Media City', 'Cairo', 109.00, '2024-04-25 16:58:53', '2024-04-25 16:58:53', 9.20),
(230, 3, 'River Nile Edge Boutique Hotel & Restaurant', 'Cairo', 80.00, '2024-04-25 16:58:53', '2024-04-25 16:58:53', 9.10),
(231, 3, 'Waldorf Astoria Cairo Heliopolis', 'Cairo', 300.00, '2024-04-25 16:58:53', '2024-04-25 16:58:53', 9.30),
(232, 3, 'Discover Pyramids Inn', 'Cairo', 27.00, '2024-04-25 16:58:53', '2024-04-25 16:58:53', 9.90),
(233, 3, 'Safir Hotel Cairo', 'Cairo', 114.00, '2024-04-25 16:59:24', '2024-04-25 16:59:24', 8.30),
(234, 3, 'Sheraton Cairo Hotel & Casino', 'Cairo', 189.00, '2024-04-25 16:59:24', '2024-04-25 16:59:24', 8.10),
(235, 3, 'Intercontinental Cairo Semiramis', 'Cairo', 180.00, '2024-04-25 16:59:24', '2024-04-25 16:59:24', 8.50),
(236, 3, 'Kempinski Nile Hotel', 'Cairo', 196.00, '2024-04-25 16:59:24', '2024-04-25 16:59:24', 8.40),
(237, 3, 'Holiday Inn Cairo - Citystars', 'Cairo', 129.00, '2024-04-25 16:59:24', '2024-04-25 16:59:24', 8.20),
(238, 3, 'Sofitel Cairo Nile El Gezirah', 'Cairo', 189.00, '2024-04-25 16:59:24', '2024-04-25 16:59:24', 8.60),
(239, 3, 'Intercontinental Cairo Citystars', 'Cairo', 170.00, '2024-04-25 16:59:24', '2024-04-25 16:59:24', 8.10),
(240, 3, 'Cairo Marriott Hotel & Omar Khayyam Casino', 'Cairo', 189.00, '2024-04-25 16:59:24', '2024-04-25 16:59:24', 8.50),
(241, 3, 'Peace Inn West Pyramids Cairo', 'Cairo', 81.00, '2024-04-25 16:59:24', '2024-04-25 16:59:24', 9.30),
(242, 3, 'Sphinx Inn', 'Cairo', 33.00, '2024-04-25 16:59:24', '2024-04-25 16:59:24', 8.30),
(243, 3, 'Tolip El Narges', 'Cairo', 54.00, '2024-04-25 16:59:24', '2024-04-25 16:59:24', 8.00),
(244, 3, 'Renaissance Cairo Mirage City Hotel', 'Cairo', 186.00, '2024-04-25 16:59:24', '2024-04-25 16:59:24', 8.50),
(245, 3, 'Royal Maxim Palace Kempinski Cairo', 'Cairo', 230.00, '2024-04-25 16:59:24', '2024-04-25 16:59:24', 8.10),
(246, 3, 'Museum Boutique', 'Cairo', 35.00, '2024-04-25 16:59:24', '2024-04-25 16:59:24', 8.40),
(247, 3, 'Novotel Cairo 6th of October', 'Cairo', 98.00, '2024-04-25 16:59:24', '2024-04-25 16:59:24', 8.90),
(248, 3, 'The Westin Cairo Golf Resort & Spa', 'Cairo', 264.00, '2024-04-25 16:59:24', '2024-04-25 16:59:24', 8.80),
(249, 3, 'JW Marriott Hotel Cairo', 'Cairo', 247.00, '2024-04-25 16:59:24', '2024-04-25 16:59:24', 8.20),
(250, 3, 'Stay Inn Cairo Hotel', 'Cairo', 82.00, '2024-04-25 16:59:24', '2024-04-25 16:59:24', 9.00),
(251, 3, 'Pyramids Resort by Jaz', 'Cairo', 108.00, '2024-04-25 16:59:24', '2024-04-25 16:59:24', 9.50),
(252, 3, 'Mövenpick Hotel Cairo-Media City', 'Cairo', 109.00, '2024-04-25 16:59:24', '2024-04-25 16:59:24', 9.20),
(253, 3, 'River Nile Edge Boutique Hotel & Restaurant', 'Cairo', 80.00, '2024-04-25 16:59:24', '2024-04-25 16:59:24', 9.10),
(254, 3, 'Waldorf Astoria Cairo Heliopolis', 'Cairo', 300.00, '2024-04-25 16:59:24', '2024-04-25 16:59:24', 9.30),
(255, 3, 'Discover Pyramids Inn', 'Cairo', 27.00, '2024-04-25 16:59:24', '2024-04-25 16:59:24', 9.90),
(256, 3, 'Cairo World Trade Center Hotel & Residences', 'Cairo', 206.00, '2024-04-25 16:59:24', '2024-04-25 16:59:24', 10.00),
(257, 3, 'Hostgram Hotel', 'Cairo', 23.00, '2024-04-25 16:59:24', '2024-04-25 16:59:24', 8.20),
(258, 3, 'Safir Hotel Cairo', 'Cairo', 114.00, '2024-04-25 17:00:09', '2024-04-25 17:00:09', 8.30),
(259, 3, 'Sheraton Cairo Hotel & Casino', 'Cairo', 189.00, '2024-04-25 17:00:09', '2024-04-25 17:00:09', 8.10),
(260, 3, 'Intercontinental Cairo Semiramis', 'Cairo', 180.00, '2024-04-25 17:00:09', '2024-04-25 17:00:09', 8.50),
(261, 3, 'Kempinski Nile Hotel', 'Cairo', 196.00, '2024-04-25 17:00:09', '2024-04-25 17:00:09', 8.40),
(262, 3, 'Holiday Inn Cairo - Citystars', 'Cairo', 129.00, '2024-04-25 17:00:09', '2024-04-25 17:00:09', 8.20),
(263, 3, 'Sofitel Cairo Nile El Gezirah', 'Cairo', 189.00, '2024-04-25 17:00:09', '2024-04-25 17:00:09', 8.60),
(264, 3, 'Intercontinental Cairo Citystars', 'Cairo', 170.00, '2024-04-25 17:00:09', '2024-04-25 17:00:09', 8.10),
(265, 3, 'Cairo Marriott Hotel & Omar Khayyam Casino', 'Cairo', 189.00, '2024-04-25 17:00:09', '2024-04-25 17:00:09', 8.50),
(266, 3, 'Peace Inn West Pyramids Cairo', 'Cairo', 81.00, '2024-04-25 17:00:09', '2024-04-25 17:00:09', 9.30),
(267, 3, 'Sphinx Inn', 'Cairo', 33.00, '2024-04-25 17:00:09', '2024-04-25 17:00:09', 8.30),
(268, 3, 'Tolip El Narges', 'Cairo', 54.00, '2024-04-25 17:00:09', '2024-04-25 17:00:09', 8.00),
(269, 3, 'Renaissance Cairo Mirage City Hotel', 'Cairo', 186.00, '2024-04-25 17:00:09', '2024-04-25 17:00:09', 8.50),
(270, 3, 'Royal Maxim Palace Kempinski Cairo', 'Cairo', 230.00, '2024-04-25 17:00:09', '2024-04-25 17:00:09', 8.10),
(271, 3, 'Museum Boutique', 'Cairo', 35.00, '2024-04-25 17:00:09', '2024-04-25 17:00:09', 8.40),
(272, 3, 'Novotel Cairo 6th of October', 'Cairo', 98.00, '2024-04-25 17:00:09', '2024-04-25 17:00:09', 8.90),
(273, 3, 'The Westin Cairo Golf Resort & Spa', 'Cairo', 264.00, '2024-04-25 17:00:09', '2024-04-25 17:00:09', 8.80),
(274, 3, 'JW Marriott Hotel Cairo', 'Cairo', 247.00, '2024-04-25 17:00:09', '2024-04-25 17:00:09', 8.20),
(275, 3, 'Stay Inn Cairo Hotel', 'Cairo', 82.00, '2024-04-25 17:00:09', '2024-04-25 17:00:09', 9.00),
(276, 3, 'Pyramids Resort by Jaz', 'Cairo', 108.00, '2024-04-25 17:00:09', '2024-04-25 17:00:09', 9.50),
(277, 3, 'Mövenpick Hotel Cairo-Media City', 'Cairo', 109.00, '2024-04-25 17:00:09', '2024-04-25 17:00:09', 9.20),
(278, 3, 'River Nile Edge Boutique Hotel & Restaurant', 'Cairo', 80.00, '2024-04-25 17:00:09', '2024-04-25 17:00:09', 9.10),
(279, 3, 'Waldorf Astoria Cairo Heliopolis', 'Cairo', 300.00, '2024-04-25 17:00:09', '2024-04-25 17:00:09', 9.30),
(280, 3, 'Discover Pyramids Inn', 'Cairo', 27.00, '2024-04-25 17:00:09', '2024-04-25 17:00:09', 9.90),
(281, 3, 'Cairo World Trade Center Hotel & Residences', 'Cairo', 206.00, '2024-04-25 17:00:09', '2024-04-25 17:00:09', 10.00),
(282, 3, 'Hostgram Hotel', 'Cairo', 23.00, '2024-04-25 17:00:09', '2024-04-25 17:00:09', 8.20),
(283, 5, 'Tolip Resort El Galala Majestic', 'Red-Sea', 60.00, '2024-04-25 17:01:59', '2024-04-25 17:01:59', 8.60),
(284, 5, 'Mövenpick Resort El Sokhna', 'Red-Sea', 58.00, '2024-04-25 17:01:59', '2024-04-25 17:01:59', 8.50),
(285, 5, 'Grand Ocean El Sokhna', 'Red-Sea', 60.00, '2024-04-25 17:01:59', '2024-04-25 17:01:59', 8.60),
(286, 5, 'La Siesta Hotel Al Sokhna', 'Red-Sea', 45.00, '2024-04-25 17:01:59', '2024-04-25 17:01:59', 8.40),
(287, 5, 'Tanoak Resort', 'Red-Sea', 107.00, '2024-04-25 17:01:59', '2024-04-25 17:01:59', 8.30),
(288, 5, 'Tolip Resort El Galala Majestic', 'Red-Sea', 60.00, '2024-04-25 17:02:54', '2024-04-25 17:02:54', 8.60),
(289, 5, 'Mövenpick Resort El Sokhna', 'Red-Sea', 58.00, '2024-04-25 17:02:55', '2024-04-25 17:02:55', 8.50),
(290, 5, 'Grand Ocean El Sokhna', 'Red-Sea', 60.00, '2024-04-25 17:02:55', '2024-04-25 17:02:55', 8.60),
(291, 5, 'La Siesta Hotel Al Sokhna', 'Red-Sea', 45.00, '2024-04-25 17:02:55', '2024-04-25 17:02:55', 8.40),
(292, 5, 'Tanoak Resort', 'Red-Sea', 107.00, '2024-04-25 17:02:55', '2024-04-25 17:02:55', 8.30),
(293, 5, 'Retal View Resort El Sokhna', 'Red-Sea', 29.00, '2024-04-25 17:02:55', '2024-04-25 17:02:55', 8.00),
(294, 5, 'Stella Di Mare Golf & Country Club', 'Red-Sea', 113.00, '2024-04-25 17:02:55', '2024-04-25 17:02:55', 8.60),
(295, 5, 'Tolip Resort El Galala Majestic', 'Red-Sea', 60.00, '2024-04-25 17:03:13', '2024-04-25 17:03:13', 8.60),
(296, 5, 'Mövenpick Resort El Sokhna', 'Red-Sea', 58.00, '2024-04-25 17:03:13', '2024-04-25 17:03:13', 8.50),
(297, 5, 'Grand Ocean El Sokhna', 'Red-Sea', 60.00, '2024-04-25 17:03:13', '2024-04-25 17:03:13', 8.60),
(298, 5, 'La Siesta Hotel Al Sokhna', 'Red-Sea', 45.00, '2024-04-25 17:03:13', '2024-04-25 17:03:13', 8.40),
(299, 5, 'Tanoak Resort', 'Red-Sea', 107.00, '2024-04-25 17:03:13', '2024-04-25 17:03:13', 8.30),
(300, 5, 'Retal View Resort El Sokhna', 'Red-Sea', 29.00, '2024-04-25 17:03:13', '2024-04-25 17:03:13', 8.00),
(301, 5, 'Stella Di Mare Golf & Country Club', 'Red-Sea', 113.00, '2024-04-25 17:03:13', '2024-04-25 17:03:13', 8.60),
(302, 5, 'Swiss Inn Teda Hotel & Aqua Park', 'Red-Sea', 68.00, '2024-04-25 17:03:13', '2024-04-25 17:03:13', 9.00),
(303, 5, 'Marina Wadi Degla Hotel', 'Red-Sea', 29.00, '2024-04-25 17:03:13', '2024-04-25 17:03:13', 8.50),
(304, 5, 'Porto South Beach by Amer Group - Families only', 'Red-Sea', 33.00, '2024-04-25 17:03:13', '2024-04-25 17:03:13', 8.60),
(305, 5, 'Elite Residence & Aqua Park', 'Red-Sea', 124.00, '2024-04-25 17:03:13', '2024-04-25 17:03:13', 8.40),
(306, 5, 'Chalet Porto El Sokhna Panorama area -2 bedroom- excellent view شاليه ببورتو السخنة - منطقة البانوراما غرفتين وريسبشن فيو البسين والجولف والبحر- Family only', 'Red-Sea', 50.00, '2024-04-25 17:03:13', '2024-04-25 17:03:13', 9.00),
(307, 5, 'Regency Porto pyramids', 'Red-Sea', 45.00, '2024-04-25 17:03:13', '2024-04-25 17:03:13', 8.20),
(308, 5, 'Jaz Little Venice Golf Resort', 'Red-Sea', 80.00, '2024-04-25 17:03:13', '2024-04-25 17:03:13', 8.00),
(309, 5, 'Tolip Resort El Galala Majestic', 'Red-Sea', 60.00, '2024-04-25 17:04:02', '2024-04-25 17:04:02', 8.60),
(310, 5, 'Mövenpick Resort El Sokhna', 'Red-Sea', 58.00, '2024-04-25 17:04:02', '2024-04-25 17:04:02', 8.50),
(311, 5, 'Grand Ocean El Sokhna', 'Red-Sea', 60.00, '2024-04-25 17:04:02', '2024-04-25 17:04:02', 8.60),
(312, 5, 'La Siesta Hotel Al Sokhna', 'Red-Sea', 45.00, '2024-04-25 17:04:02', '2024-04-25 17:04:02', 8.40),
(313, 5, 'Tanoak Resort', 'Red-Sea', 107.00, '2024-04-25 17:04:02', '2024-04-25 17:04:02', 8.30),
(314, 5, 'Retal View Resort El Sokhna', 'Red-Sea', 29.00, '2024-04-25 17:04:02', '2024-04-25 17:04:02', 8.00),
(315, 5, 'Stella Di Mare Golf & Country Club', 'Red-Sea', 113.00, '2024-04-25 17:04:02', '2024-04-25 17:04:02', 8.60),
(316, 5, 'Swiss Inn Teda Hotel & Aqua Park', 'Red-Sea', 68.00, '2024-04-25 17:04:02', '2024-04-25 17:04:02', 9.00),
(317, 5, 'Marina Wadi Degla Hotel', 'Red-Sea', 29.00, '2024-04-25 17:04:02', '2024-04-25 17:04:02', 8.50),
(318, 5, 'Porto South Beach by Amer Group - Families only', 'Red-Sea', 33.00, '2024-04-25 17:04:02', '2024-04-25 17:04:02', 8.60),
(319, 5, 'Elite Residence & Aqua Park', 'Red-Sea', 124.00, '2024-04-25 17:04:02', '2024-04-25 17:04:02', 8.40),
(320, 5, 'Chalet Porto El Sokhna Panorama area -2 bedroom- excellent view شاليه ببورتو السخنة - منطقة البانوراما غرفتين وريسبشن فيو البسين والجولف والبحر- Family only', 'Red-Sea', 50.00, '2024-04-25 17:04:02', '2024-04-25 17:04:02', 9.00),
(321, 5, 'Regency Porto pyramids', 'Red-Sea', 45.00, '2024-04-25 17:04:02', '2024-04-25 17:04:02', 8.20),
(322, 5, 'Jaz Little Venice Golf Resort', 'Red-Sea', 80.00, '2024-04-25 17:04:02', '2024-04-25 17:04:02', 8.00),
(323, 5, 'Stella DI Mare Grand Hotel', 'Red-Sea', 64.00, '2024-04-25 17:04:02', '2024-04-25 17:04:02', 9.00),
(324, 5, 'Porto Sokhna Beach Resort', 'Red-Sea', 50.00, '2024-04-25 17:04:02', '2024-04-25 17:04:02', 9.20),
(325, 5, 'Blumar El Dome Hotel', 'Red-Sea', 51.00, '2024-04-25 17:04:02', '2024-04-25 17:04:02', 8.70),
(326, 5, 'Stella DI Mare Sea Club Hotel', 'Red-Sea', 97.00, '2024-04-25 17:04:02', '2024-04-25 17:04:02', 8.20),
(327, 5, 'Tolip Resort El Galala Hills', 'Red-Sea', 150.00, '2024-04-25 17:04:02', '2024-04-25 17:04:02', 8.30),
(328, 5, 'Zya Palmera El Sokhna -Families Only', 'Red-Sea', 77.00, '2024-04-25 17:04:02', '2024-04-25 17:04:02', 8.60),
(329, 5, 'Tolip Resort El Galala Majestic', 'Red-Sea', 60.00, '2024-04-25 17:04:28', '2024-04-25 17:04:28', 8.60),
(330, 5, 'Mövenpick Resort El Sokhna', 'Red-Sea', 58.00, '2024-04-25 17:04:28', '2024-04-25 17:04:28', 8.50),
(331, 5, 'Grand Ocean El Sokhna', 'Red-Sea', 60.00, '2024-04-25 17:04:29', '2024-04-25 17:04:29', 8.60),
(332, 5, 'La Siesta Hotel Al Sokhna', 'Red-Sea', 45.00, '2024-04-25 17:04:29', '2024-04-25 17:04:29', 8.40),
(333, 5, 'Tanoak Resort', 'Red-Sea', 107.00, '2024-04-25 17:04:29', '2024-04-25 17:04:29', 8.30),
(334, 5, 'Retal View Resort El Sokhna', 'Red-Sea', 29.00, '2024-04-25 17:04:29', '2024-04-25 17:04:29', 8.00),
(335, 5, 'Stella Di Mare Golf & Country Club', 'Red-Sea', 113.00, '2024-04-25 17:04:29', '2024-04-25 17:04:29', 8.60),
(336, 5, 'Swiss Inn Teda Hotel & Aqua Park', 'Red-Sea', 68.00, '2024-04-25 17:04:29', '2024-04-25 17:04:29', 9.00),
(337, 5, 'Marina Wadi Degla Hotel', 'Red-Sea', 29.00, '2024-04-25 17:04:29', '2024-04-25 17:04:29', 8.50),
(338, 5, 'Porto South Beach by Amer Group - Families only', 'Red-Sea', 33.00, '2024-04-25 17:04:29', '2024-04-25 17:04:29', 8.60),
(339, 5, 'Elite Residence & Aqua Park', 'Red-Sea', 124.00, '2024-04-25 17:04:29', '2024-04-25 17:04:29', 8.40),
(340, 5, 'Chalet Porto El Sokhna Panorama area -2 bedroom- excellent view شاليه ببورتو السخنة - منطقة البانوراما غرفتين وريسبشن فيو البسين والجولف والبحر- Family only', 'Red-Sea', 50.00, '2024-04-25 17:04:29', '2024-04-25 17:04:29', 9.00),
(341, 5, 'Regency Porto pyramids', 'Red-Sea', 45.00, '2024-04-25 17:04:29', '2024-04-25 17:04:29', 8.20),
(342, 5, 'Jaz Little Venice Golf Resort', 'Red-Sea', 80.00, '2024-04-25 17:04:29', '2024-04-25 17:04:29', 8.00),
(343, 5, 'Stella DI Mare Grand Hotel', 'Red-Sea', 64.00, '2024-04-25 17:04:29', '2024-04-25 17:04:29', 9.00),
(344, 5, 'Porto Sokhna Beach Resort', 'Red-Sea', 50.00, '2024-04-25 17:04:29', '2024-04-25 17:04:29', 9.20),
(345, 5, 'Blumar El Dome Hotel', 'Red-Sea', 51.00, '2024-04-25 17:04:29', '2024-04-25 17:04:29', 8.70),
(346, 5, 'Stella DI Mare Sea Club Hotel', 'Red-Sea', 97.00, '2024-04-25 17:04:29', '2024-04-25 17:04:29', 8.20),
(347, 5, 'Tolip Resort El Galala Hills', 'Red-Sea', 150.00, '2024-04-25 17:04:29', '2024-04-25 17:04:29', 8.30),
(348, 5, 'Zya Palmera El Sokhna -Families Only', 'Red-Sea', 77.00, '2024-04-25 17:04:29', '2024-04-25 17:04:29', 8.60),
(349, 5, 'Pentahouse Apartment in Pyramids Porto El-Sokhna', 'Red-Sea', 180.00, '2024-04-25 17:04:29', '2024-04-25 17:04:29', 8.30),
(350, 5, 'Ain Sokhna \'Cosmopolitan\'- Half-Board', 'Red-Sea', 45.00, '2024-04-25 17:04:29', '2024-04-25 17:04:29', 9.70),
(351, 5, 'Golden Europe Hotel', 'Red-Sea', 26.00, '2024-04-25 17:04:29', '2024-04-25 17:04:29', 8.40),
(352, 5, 'Villa 22', 'Red-Sea', 29.00, '2024-04-25 17:04:29', '2024-04-25 17:04:29', 8.40),
(353, 5, 'Penguin Village Dahab', 'Red-Sea', 45.00, '2024-04-25 17:04:29', '2024-04-25 17:04:29', 9.30),
(354, 5, 'Dahab Paradise', 'Red-Sea', 42.00, '2024-04-25 17:04:29', '2024-04-25 17:04:29', 9.20),
(355, 5, 'Tolip Resort El Galala Majestic', 'Red-Sea', 60.00, '2024-04-25 17:04:50', '2024-04-25 17:04:50', 8.60),
(356, 5, 'Mövenpick Resort El Sokhna', 'Red-Sea', 58.00, '2024-04-25 17:04:50', '2024-04-25 17:04:50', 8.50),
(357, 5, 'Grand Ocean El Sokhna', 'Red-Sea', 60.00, '2024-04-25 17:04:50', '2024-04-25 17:04:50', 8.60),
(358, 5, 'La Siesta Hotel Al Sokhna', 'Red-Sea', 45.00, '2024-04-25 17:04:50', '2024-04-25 17:04:50', 8.40),
(359, 5, 'Tanoak Resort', 'Red-Sea', 107.00, '2024-04-25 17:04:50', '2024-04-25 17:04:50', 8.30),
(360, 5, 'Retal View Resort El Sokhna', 'Red-Sea', 29.00, '2024-04-25 17:04:50', '2024-04-25 17:04:50', 8.00),
(361, 5, 'Stella Di Mare Golf & Country Club', 'Red-Sea', 113.00, '2024-04-25 17:04:50', '2024-04-25 17:04:50', 8.60),
(362, 5, 'Swiss Inn Teda Hotel & Aqua Park', 'Red-Sea', 68.00, '2024-04-25 17:04:50', '2024-04-25 17:04:50', 9.00),
(363, 5, 'Marina Wadi Degla Hotel', 'Red-Sea', 29.00, '2024-04-25 17:04:50', '2024-04-25 17:04:50', 8.50),
(364, 5, 'Porto South Beach by Amer Group - Families only', 'Red-Sea', 33.00, '2024-04-25 17:04:50', '2024-04-25 17:04:50', 8.60),
(365, 5, 'Elite Residence & Aqua Park', 'Red-Sea', 124.00, '2024-04-25 17:04:50', '2024-04-25 17:04:50', 8.40),
(366, 5, 'Chalet Porto El Sokhna Panorama area -2 bedroom- excellent view شاليه ببورتو السخنة - منطقة البانوراما غرفتين وريسبشن فيو البسين والجولف والبحر- Family only', 'Red-Sea', 50.00, '2024-04-25 17:04:50', '2024-04-25 17:04:50', 9.00),
(367, 5, 'Regency Porto pyramids', 'Red-Sea', 45.00, '2024-04-25 17:04:50', '2024-04-25 17:04:50', 8.20),
(368, 5, 'Jaz Little Venice Golf Resort', 'Red-Sea', 80.00, '2024-04-25 17:04:50', '2024-04-25 17:04:50', 8.00),
(369, 5, 'Stella DI Mare Grand Hotel', 'Red-Sea', 64.00, '2024-04-25 17:04:50', '2024-04-25 17:04:50', 9.00),
(370, 5, 'Porto Sokhna Beach Resort', 'Red-Sea', 50.00, '2024-04-25 17:04:50', '2024-04-25 17:04:50', 9.20),
(371, 5, 'Blumar El Dome Hotel', 'Red-Sea', 51.00, '2024-04-25 17:04:50', '2024-04-25 17:04:50', 8.70),
(372, 5, 'Stella DI Mare Sea Club Hotel', 'Red-Sea', 97.00, '2024-04-25 17:04:50', '2024-04-25 17:04:50', 8.20),
(373, 5, 'Tolip Resort El Galala Hills', 'Red-Sea', 150.00, '2024-04-25 17:04:50', '2024-04-25 17:04:50', 8.30),
(374, 5, 'Zya Palmera El Sokhna -Families Only', 'Red-Sea', 77.00, '2024-04-25 17:04:50', '2024-04-25 17:04:50', 8.60),
(375, 5, 'Pentahouse Apartment in Pyramids Porto El-Sokhna', 'Red-Sea', 180.00, '2024-04-25 17:04:50', '2024-04-25 17:04:50', 8.30),
(376, 5, 'Ain Sokhna \'Cosmopolitan\'- Half-Board', 'Red-Sea', 45.00, '2024-04-25 17:04:50', '2024-04-25 17:04:50', 9.70),
(377, 5, 'Golden Europe Hotel', 'Red-Sea', 26.00, '2024-04-25 17:04:50', '2024-04-25 17:04:50', 8.40),
(378, 5, 'Villa 22', 'Red-Sea', 29.00, '2024-04-25 17:04:50', '2024-04-25 17:04:50', 8.40),
(379, 5, 'Penguin Village Dahab', 'Red-Sea', 45.00, '2024-04-25 17:04:50', '2024-04-25 17:04:50', 9.30),
(380, 5, 'Dahab Paradise', 'Red-Sea', 42.00, '2024-04-25 17:04:50', '2024-04-25 17:04:50', 9.20),
(381, 5, 'Octopus Hotel', 'Red-Sea', 25.00, '2024-04-25 17:04:50', '2024-04-25 17:04:50', 8.60),
(382, 5, 'Ecotel Dahab Bay View Resort', 'Red-Sea', 55.00, '2024-04-25 17:04:50', '2024-04-25 17:04:50', 8.90),
(383, 5, 'Seaview Hotel Dahab', 'Red-Sea', 29.00, '2024-04-25 17:04:50', '2024-04-25 17:04:50', 8.60),
(384, 5, 'Shams Hotel & Dive Centre', 'Red-Sea', 60.00, '2024-04-25 17:04:50', '2024-04-25 17:04:50', 8.70),
(385, 5, 'Swiss Inn Resort Dahab', 'Red-Sea', 99.00, '2024-04-25 17:04:50', '2024-04-25 17:04:50', 8.30);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_images`
--

CREATE TABLE `hotel_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hotel_id` bigint(20) UNSIGNED DEFAULT NULL,
  `data` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotel_images`
--

INSERT INTO `hotel_images` (`id`, `hotel_id`, `data`, `created_at`, `updated_at`) VALUES
(1, 1, 'https://content.r9cdn.net/rimg/himg/fe/64/b7/expediav2-5992982-408a62-113304.jpg?width=452&height=400&xhint=500&yhint=360&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:39:33', '2024-04-25 16:39:33'),
(2, 2, 'https://content.r9cdn.net/rimg/himg/ef/0c/ec/expediav2-154845-3036623588-717875.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:39:33', '2024-04-25 16:39:33'),
(3, 3, 'https://content.r9cdn.net/rimg/himg/d4/69/24/expediav2-3006583-f13891-341786.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:39:33', '2024-04-25 16:39:33'),
(4, 4, 'https://content.r9cdn.net/rimg/himg/a5/8e/b7/expediav2-15141117-cbce69ef_z-238635.jpg?width=452&height=400&xhint=540&yhint=281&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:39:33', '2024-04-25 16:39:33'),
(5, 5, 'https://content.r9cdn.net/rimg/himg/0e/df/97/expediav2-154831-a67ed8-622356.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:39:33', '2024-04-25 16:39:33'),
(6, 6, 'https://content.r9cdn.net/rimg/himg/fe/64/b7/expediav2-5992982-408a62-113304.jpg?width=452&height=400&xhint=500&yhint=360&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:42:02', '2024-04-25 16:42:02'),
(7, 7, 'https://content.r9cdn.net/rimg/himg/ef/0c/ec/expediav2-154845-3036623588-717875.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:42:02', '2024-04-25 16:42:02'),
(8, 8, 'https://content.r9cdn.net/rimg/himg/d4/69/24/expediav2-3006583-f13891-341786.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:42:02', '2024-04-25 16:42:02'),
(9, 9, 'https://content.r9cdn.net/rimg/himg/a5/8e/b7/expediav2-15141117-cbce69ef_z-238635.jpg?width=452&height=400&xhint=540&yhint=281&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:42:02', '2024-04-25 16:42:02'),
(10, 10, 'https://content.r9cdn.net/rimg/himg/0e/df/97/expediav2-154831-a67ed8-622356.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:42:02', '2024-04-25 16:42:02'),
(11, 11, 'https://content.r9cdn.net/rimg/himg/fe/64/b7/expediav2-5992982-408a62-113304.jpg?width=452&height=400&xhint=500&yhint=360&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:44:21', '2024-04-25 16:44:21'),
(12, 12, 'https://content.r9cdn.net/rimg/himg/ef/0c/ec/expediav2-154845-3036623588-717875.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:44:21', '2024-04-25 16:44:21'),
(13, 13, 'https://content.r9cdn.net/rimg/himg/d4/69/24/expediav2-3006583-f13891-341786.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:44:21', '2024-04-25 16:44:21'),
(14, 14, 'https://content.r9cdn.net/rimg/himg/a5/8e/b7/expediav2-15141117-cbce69ef_z-238635.jpg?width=452&height=400&xhint=540&yhint=281&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:44:21', '2024-04-25 16:44:21'),
(15, 15, 'https://content.r9cdn.net/rimg/himg/0e/df/97/expediav2-154831-a67ed8-622356.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:44:21', '2024-04-25 16:44:21'),
(16, 16, 'https://content.r9cdn.net/rimg/himg/27/75/79/booking-309673-262155201-061226.jpg?width=452&height=400&xhint=420&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:44:21', '2024-04-25 16:44:21'),
(17, 17, 'https://content.r9cdn.net/rimg/himg/69/71/20/expediav2-61100357-aaf0de4f_z-187068.jpg?width=452&height=400&xhint=500&yhint=390&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:44:21', '2024-04-25 16:44:21'),
(18, 18, 'https://content.r9cdn.net/rimg/himg/2e/62/0e/booking-8329112-333639230-393736.jpg?width=452&height=400&xhint=436&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:44:21', '2024-04-25 16:44:21'),
(19, 19, 'https://content.r9cdn.net/rimg/himg/5d/81/db/expediav2-617995-afc3d1-425707.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:44:21', '2024-04-25 16:44:21'),
(20, 20, 'https://content.r9cdn.net/rimg/himg/10/1f/a0/expediav2-3025384-88ab07-191340.jpg?width=452&height=400&xhint=520&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:44:21', '2024-04-25 16:44:21'),
(21, 21, 'https://content.r9cdn.net/rimg/himg/2f/59/bd/expediav2-606497-8df34f-634731.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:44:21', '2024-04-25 16:44:21'),
(22, 22, 'https://content.r9cdn.net/rimg/himg/2e/97/f2/agoda-256765-57928961-858365.jpg?width=452&height=400&xhint=864&yhint=533&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:44:21', '2024-04-25 16:44:21'),
(23, 23, 'https://content.r9cdn.net/rimg/himg/c0/b8/39/agoda-2069256-63916217-925941.jpg?width=452&height=400&xhint=388&yhint=239&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:44:21', '2024-04-25 16:44:21'),
(24, 24, 'https://content.r9cdn.net/rimg/himg/d6/88/d7/booking-2202262-73722993-859557.jpg?width=452&height=400&xhint=470&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:44:21', '2024-04-25 16:44:21'),
(25, 25, 'https://content.r9cdn.net/rimg/himg/f4/b8/47/ostrovok-2569991-e26ef7-108193.jpg?width=452&height=400&xhint=540&yhint=332&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:44:21', '2024-04-25 16:44:21'),
(26, 26, 'https://content.r9cdn.net/rimg/himg/a4/e4/b2/ostrovok-8302284-44b83e-323044.jpg?width=452&height=400&xhint=288&yhint=384&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:44:21', '2024-04-25 16:44:21'),
(27, 27, 'https://content.r9cdn.net/rimg/himg/39/93/8d/ostrovok-387406-ff4a90-601457.jpg?width=452&height=400&xhint=300&yhint=234&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:44:21', '2024-04-25 16:44:21'),
(28, 28, 'https://content.r9cdn.net/rimg/himg/fe/64/b7/expediav2-5992982-408a62-113304.jpg?width=452&height=400&xhint=500&yhint=360&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:44:37', '2024-04-25 16:44:37'),
(29, 29, 'https://content.r9cdn.net/rimg/himg/ef/0c/ec/expediav2-154845-3036623588-717875.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:44:37', '2024-04-25 16:44:37'),
(30, 30, 'https://content.r9cdn.net/rimg/himg/d4/69/24/expediav2-3006583-f13891-341786.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:44:37', '2024-04-25 16:44:37'),
(31, 31, 'https://content.r9cdn.net/rimg/himg/a5/8e/b7/expediav2-15141117-cbce69ef_z-238635.jpg?width=452&height=400&xhint=540&yhint=281&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:44:37', '2024-04-25 16:44:37'),
(32, 32, 'https://content.r9cdn.net/rimg/himg/0e/df/97/expediav2-154831-a67ed8-622356.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:44:37', '2024-04-25 16:44:37'),
(33, 33, 'https://content.r9cdn.net/rimg/himg/27/75/79/booking-309673-262155201-061226.jpg?width=452&height=400&xhint=420&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:44:37', '2024-04-25 16:44:37'),
(34, 34, 'https://content.r9cdn.net/rimg/himg/69/71/20/expediav2-61100357-aaf0de4f_z-187068.jpg?width=452&height=400&xhint=500&yhint=390&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:44:37', '2024-04-25 16:44:37'),
(35, 35, 'https://content.r9cdn.net/rimg/himg/2e/62/0e/booking-8329112-333639230-393736.jpg?width=452&height=400&xhint=436&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:44:37', '2024-04-25 16:44:37'),
(36, 36, 'https://content.r9cdn.net/rimg/himg/5d/81/db/expediav2-617995-afc3d1-425707.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:44:37', '2024-04-25 16:44:37'),
(37, 37, 'https://content.r9cdn.net/rimg/himg/10/1f/a0/expediav2-3025384-88ab07-191340.jpg?width=452&height=400&xhint=520&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:44:37', '2024-04-25 16:44:37'),
(38, 38, 'https://content.r9cdn.net/rimg/himg/2f/59/bd/expediav2-606497-8df34f-634731.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:44:37', '2024-04-25 16:44:37'),
(39, 39, 'https://content.r9cdn.net/rimg/himg/2e/97/f2/agoda-256765-57928961-858365.jpg?width=452&height=400&xhint=864&yhint=533&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:44:37', '2024-04-25 16:44:37'),
(40, 40, 'https://content.r9cdn.net/rimg/himg/c0/b8/39/agoda-2069256-63916217-925941.jpg?width=452&height=400&xhint=388&yhint=239&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:44:37', '2024-04-25 16:44:37'),
(41, 41, 'https://content.r9cdn.net/rimg/himg/d6/88/d7/booking-2202262-73722993-859557.jpg?width=452&height=400&xhint=470&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:44:37', '2024-04-25 16:44:37'),
(42, 42, 'https://content.r9cdn.net/rimg/himg/f4/b8/47/ostrovok-2569991-e26ef7-108193.jpg?width=452&height=400&xhint=540&yhint=332&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:44:37', '2024-04-25 16:44:37'),
(43, 43, 'https://content.r9cdn.net/rimg/himg/a4/e4/b2/ostrovok-8302284-44b83e-323044.jpg?width=452&height=400&xhint=288&yhint=384&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:44:37', '2024-04-25 16:44:37'),
(44, 44, 'https://content.r9cdn.net/rimg/himg/39/93/8d/ostrovok-387406-ff4a90-601457.jpg?width=452&height=400&xhint=300&yhint=234&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:44:37', '2024-04-25 16:44:37'),
(45, 45, 'https://content.r9cdn.net/rimg/himg/4b/7f/4a/booking-4775444-158197454-347962.jpg?width=452&height=400&xhint=520&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:44:37', '2024-04-25 16:44:37'),
(46, 46, 'https://content.r9cdn.net/rimg/himg/a1/b2/3b/booking-341352-262285000-999482.jpg?width=452&height=400&xhint=470&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:44:37', '2024-04-25 16:44:37'),
(47, 47, 'https://content.r9cdn.net/rimg/himg/bc/30/e1/booking-8380401-485239549-780314.jpg?width=452&height=400&xhint=420&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:44:37', '2024-04-25 16:44:37'),
(48, 48, 'https://content.r9cdn.net/rimg/himg/55/3a/a7/booking-9274231-401698386-780976.jpg?width=452&height=400&xhint=369&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:44:37', '2024-04-25 16:44:37'),
(49, 49, 'https://content.r9cdn.net/rimg/himg/db/36/90/booking-7756206-304674924-657443.jpg?width=452&height=400&xhint=487&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:44:37', '2024-04-25 16:44:37'),
(50, 50, 'https://content.r9cdn.net/rimg/himg/45/ef/8f/booking-8402351-338028472-394234.jpg?width=452&height=400&xhint=520&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:44:38', '2024-04-25 16:44:38'),
(51, 51, 'https://content.r9cdn.net/rimg/himg/b3/fd/a3/booking-5005541-196242506-671538.jpg?width=452&height=400&xhint=552&yhint=339&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:44:38', '2024-04-25 16:44:38'),
(52, 52, 'https://content.r9cdn.net/rimg/himg/b1/bc/7c/expediav2-3557648-410415-564860.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:00', '2024-04-25 16:53:00'),
(53, 53, 'https://content.r9cdn.net/rimg/himg/c6/06/5d/booking-8466343-416212790-857237.jpg?width=452&height=400&xhint=453&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:00', '2024-04-25 16:53:00'),
(54, 54, 'https://content.r9cdn.net/rimg/himg/d6/27/00/ice-1070701401-113312326-122407.jpg?width=452&height=400&xhint=1439&yhint=1105&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:00', '2024-04-25 16:53:00'),
(55, 55, 'https://content.r9cdn.net/rimg/himg/27/60/f0/ostrovok-3060108-e32d62-520464.jpg?width=452&height=400&xhint=250&yhint=195&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:00', '2024-04-25 16:53:00'),
(56, 56, 'https://content.r9cdn.net/rimg/himg/7e/16/05/booking-9554220-443488730-979327.jpg?width=452&height=400&xhint=403&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:00', '2024-04-25 16:53:00'),
(57, 57, 'https://content.r9cdn.net/rimg/himg/89/4c/84/booking-7038766-319386677-141894.jpg?width=452&height=400&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:00', '2024-04-25 16:53:00'),
(58, 58, 'https://content.r9cdn.net/rimg/himg/a5/df/6c/booking-464126-13057949.jpg_k=6e50321b1db87c898237683abcf2ed62e01741b051f5e82b56f73778ff79c3d1_o=-770201.jpg?width=452&height=400&xhint=453&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:00', '2024-04-25 16:53:00'),
(59, 59, 'https://content.r9cdn.net/rimg/himg/b6/6e/b4/booking-4154758-245430532.jpg_k=164aa9c2124dabc685a19f706c400e5b36e0accaa33dec12b525adb2dffadec8_o=-881991.jpg?width=452&height=400&xhint=403&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:00', '2024-04-25 16:53:00'),
(60, 60, 'https://content.r9cdn.net/rimg/himg/32/e7/1b/booking-4282283-170209695.jpg_k=c5c3a4533616137ce28189156d62b26f0ad6f426c76999e4d09cb1002ccb2b14_o=-846748.jpg?width=452&height=400&xhint=436&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:00', '2024-04-25 16:53:00'),
(61, 61, 'https://content.r9cdn.net/rimg/himg/1a/1c/37/expediav2-8118346-9e3a7b-559985.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:00', '2024-04-25 16:53:00'),
(62, 62, 'https://content.r9cdn.net/rimg/himg/47/4e/d9/booking-694393-39065752-938394.jpg?width=452&height=400&xhint=352&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:00', '2024-04-25 16:53:00'),
(63, 63, 'https://content.r9cdn.net/rimg/himg/31/20/8c/booking-6206010-409637633-310293.jpg?width=452&height=400&xhint=336&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:00', '2024-04-25 16:53:00'),
(64, 64, 'https://content.r9cdn.net/rimg/himg/4e/4e/09/sembo-3193462-c69bb9-958340.jpg?width=452&height=400&xhint=375&yhint=440&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:00', '2024-04-25 16:53:00'),
(65, 65, 'https://content.r9cdn.net/rimg/himg/8c/1d/86/booking-3635383-238219740-662032.jpg?width=452&height=400&xhint=186&yhint=240&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:00', '2024-04-25 16:53:00'),
(66, 66, 'https://content.r9cdn.net/rimg/himg/e0/c5/c7/booking-6376071-350949753-229725.jpg?width=452&height=400&xhint=436&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:00', '2024-04-25 16:53:00'),
(67, 67, 'https://content.r9cdn.net/rimg/himg/c4/aa/b2/booking-1070729083-426121828-827114.jpg?width=452&height=400&xhint=470&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:00', '2024-04-25 16:53:00'),
(68, 68, 'https://content.r9cdn.net/rimg/himg/be/55/2b/booking-3337975-331257891.jpg_k=354ba295b36cd61755fb652e726adacce35cefd914850b73d55097b6cc510d1b_o=-864858.jpg?width=452&height=400&xhint=520&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:00', '2024-04-25 16:53:00'),
(69, 69, 'https://content.r9cdn.net/rimg/himg/17/be/98/booking-7471693-322261678-077136.jpg?width=452&height=400&xhint=352&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:00', '2024-04-25 16:53:00'),
(70, 70, 'https://content.r9cdn.net/rimg/himg/b1/bc/7c/expediav2-3557648-410415-564860.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:48', '2024-04-25 16:53:48'),
(71, 71, 'https://content.r9cdn.net/rimg/himg/c6/06/5d/booking-8466343-416212790-857237.jpg?width=452&height=400&xhint=453&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:48', '2024-04-25 16:53:48'),
(72, 72, 'https://content.r9cdn.net/rimg/himg/d6/27/00/ice-1070701401-113312326-122407.jpg?width=452&height=400&xhint=1439&yhint=1105&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:48', '2024-04-25 16:53:48'),
(73, 73, 'https://content.r9cdn.net/rimg/himg/27/60/f0/ostrovok-3060108-e32d62-520464.jpg?width=452&height=400&xhint=250&yhint=195&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:48', '2024-04-25 16:53:48'),
(74, 74, 'https://content.r9cdn.net/rimg/himg/7e/16/05/booking-9554220-443488730-979327.jpg?width=452&height=400&xhint=403&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:48', '2024-04-25 16:53:48'),
(75, 75, 'https://content.r9cdn.net/rimg/himg/89/4c/84/booking-7038766-319386677-141894.jpg?width=452&height=400&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:48', '2024-04-25 16:53:48'),
(76, 76, 'https://content.r9cdn.net/rimg/himg/a5/df/6c/booking-464126-13057949.jpg_k=6e50321b1db87c898237683abcf2ed62e01741b051f5e82b56f73778ff79c3d1_o=-770201.jpg?width=452&height=400&xhint=453&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:48', '2024-04-25 16:53:48'),
(77, 77, 'https://content.r9cdn.net/rimg/himg/b6/6e/b4/booking-4154758-245430532.jpg_k=164aa9c2124dabc685a19f706c400e5b36e0accaa33dec12b525adb2dffadec8_o=-881991.jpg?width=452&height=400&xhint=403&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:48', '2024-04-25 16:53:48'),
(78, 78, 'https://content.r9cdn.net/rimg/himg/32/e7/1b/booking-4282283-170209695.jpg_k=c5c3a4533616137ce28189156d62b26f0ad6f426c76999e4d09cb1002ccb2b14_o=-846748.jpg?width=452&height=400&xhint=436&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:48', '2024-04-25 16:53:48'),
(79, 79, 'https://content.r9cdn.net/rimg/himg/1a/1c/37/expediav2-8118346-9e3a7b-559985.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:48', '2024-04-25 16:53:48'),
(80, 80, 'https://content.r9cdn.net/rimg/himg/47/4e/d9/booking-694393-39065752-938394.jpg?width=452&height=400&xhint=352&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:48', '2024-04-25 16:53:48'),
(81, 81, 'https://content.r9cdn.net/rimg/himg/31/20/8c/booking-6206010-409637633-310293.jpg?width=452&height=400&xhint=336&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:48', '2024-04-25 16:53:48'),
(82, 82, 'https://content.r9cdn.net/rimg/himg/4e/4e/09/sembo-3193462-c69bb9-958340.jpg?width=452&height=400&xhint=375&yhint=440&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:48', '2024-04-25 16:53:48'),
(83, 83, 'https://content.r9cdn.net/rimg/himg/8c/1d/86/booking-3635383-238219740-662032.jpg?width=452&height=400&xhint=186&yhint=240&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:48', '2024-04-25 16:53:48'),
(84, 84, 'https://content.r9cdn.net/rimg/himg/e0/c5/c7/booking-6376071-350949753-229725.jpg?width=452&height=400&xhint=436&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:48', '2024-04-25 16:53:48'),
(85, 85, 'https://content.r9cdn.net/rimg/himg/c4/aa/b2/booking-1070729083-426121828-827114.jpg?width=452&height=400&xhint=470&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:48', '2024-04-25 16:53:48'),
(86, 86, 'https://content.r9cdn.net/rimg/himg/be/55/2b/booking-3337975-331257891.jpg_k=354ba295b36cd61755fb652e726adacce35cefd914850b73d55097b6cc510d1b_o=-864858.jpg?width=452&height=400&xhint=520&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:48', '2024-04-25 16:53:48'),
(87, 87, 'https://content.r9cdn.net/rimg/himg/17/be/98/booking-7471693-322261678-077136.jpg?width=452&height=400&xhint=352&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:48', '2024-04-25 16:53:48'),
(88, 88, 'https://content.r9cdn.net/rimg/himg/f2/af/1e/booking-1805413-213367920.jpg_k=12ee79b1fdd3eae4424748382fceccb72cc2449676a711c38787a80ae8b8a6eb_o=-484675.jpg?width=452&height=400&xhint=386&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:48', '2024-04-25 16:53:48'),
(89, 89, 'https://content.r9cdn.net/rimg/himg/c4/e9/e1/booking-7115137-361116647-649838.jpg?width=452&height=400&xhint=470&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:48', '2024-04-25 16:53:48'),
(90, 90, 'https://content.r9cdn.net/rimg/himg/e4/88/95/booking-9245691-426692456-347736.jpg?width=452&height=400&xhint=520&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:48', '2024-04-25 16:53:48'),
(91, 91, 'https://content.r9cdn.net/rimg/himg/52/bc/4a/booking-9444741-428854943-455204.jpg?width=452&height=400&xhint=336&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:48', '2024-04-25 16:53:48'),
(92, 92, 'https://content.r9cdn.net/rimg/himg/0d/d4/0b/booking-5696739-229570871.jpg_k=63a7aada5650c299b2d009d82423a58ec6dd2f662dcb561cb5359f54ae297aae_o=-177712.jpg?width=452&height=400&xhint=386&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:48', '2024-04-25 16:53:48'),
(93, 93, 'https://content.r9cdn.net/rimg/himg/6a/e0/db/booking-1070737826-249504295-260697.jpg?width=452&height=400&xhint=250&yhint=210&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:48', '2024-04-25 16:53:48'),
(94, 94, 'https://content.r9cdn.net/rimg/himg/dc/44/07/booking-5596575-237647773-258561.jpg?width=452&height=400&xhint=487&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:48', '2024-04-25 16:53:48'),
(95, 95, 'https://content.r9cdn.net/rimg/himg/ea/05/5e/booking-9337084-421035582-940891.jpg?width=452&height=400&xhint=369&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:48', '2024-04-25 16:53:48'),
(96, 96, 'https://content.r9cdn.net/rimg/himg/1b/25/d7/sembo-2990630-1cf247-598020.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:48', '2024-04-25 16:53:48'),
(97, 97, 'https://content.r9cdn.net/rimg/himg/73/0a/20/booking-4296660-335646658-709516.jpg?width=452&height=400&xhint=386&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:48', '2024-04-25 16:53:48'),
(98, 98, 'https://content.r9cdn.net/rimg/himg/e0/d6/00/booking-4818335-201164562-803658.jpg?width=452&height=400&xhint=504&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:49', '2024-04-25 16:53:49'),
(99, 99, 'https://content.r9cdn.net/rimg/himg/1c/b0/dd/booking-5399773-221437133-784697.jpg?width=452&height=400&xhint=453&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:53:49', '2024-04-25 16:53:49'),
(100, 100, 'https://content.r9cdn.net/rimg/kimg/23/ca/45b1779e39616331.jpg?width=452&height=400&xhint=254&yhint=444&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:55:18', '2024-04-25 16:55:18'),
(101, 101, 'https://content.r9cdn.net/rimg/himg/14/93/5b/leonardo-143057-156397073-222097.jpg?width=452&height=400&xhint=1620&yhint=1000&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:55:18', '2024-04-25 16:55:18'),
(103, 102, 'https://content.r9cdn.net/rimg/kimg/23/ca/45b1779e39616331.jpg?width=452&height=400&xhint=254&yhint=444&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:55:39', '2024-04-25 16:55:39'),
(105, 103, 'https://content.r9cdn.net/rimg/himg/14/93/5b/leonardo-143057-156397073-222097.jpg?width=452&height=400&xhint=1620&yhint=1000&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:55:39', '2024-04-25 16:55:39'),
(107, 104, 'https://content.r9cdn.net/rimg/kimg/23/ca/45b1779e39616331.jpg?width=452&height=400&xhint=254&yhint=444&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:56:41', '2024-04-25 16:56:41'),
(109, 105, 'https://content.r9cdn.net/rimg/himg/14/93/5b/leonardo-143057-156397073-222097.jpg?width=452&height=400&xhint=1620&yhint=1000&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:56:41', '2024-04-25 16:56:41'),
(111, 106, 'https://content.r9cdn.net/rimg/himg/09/b2/c2/leonardo-539003-156763953-732657.jpg?width=452&height=400&xhint=1620&yhint=1004&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:56:41', '2024-04-25 16:56:41'),
(113, 107, 'https://content.r9cdn.net/rimg/kimg/23/ca/45b1779e39616331.jpg?width=452&height=400&xhint=254&yhint=444&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:57:02', '2024-04-25 16:57:02'),
(115, 108, 'https://content.r9cdn.net/rimg/himg/14/93/5b/leonardo-143057-156397073-222097.jpg?width=452&height=400&xhint=1620&yhint=1000&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:57:02', '2024-04-25 16:57:02'),
(117, 109, 'https://content.r9cdn.net/rimg/himg/09/b2/c2/leonardo-539003-156763953-732657.jpg?width=452&height=400&xhint=1620&yhint=1004&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:57:02', '2024-04-25 16:57:02'),
(119, 110, 'https://content.r9cdn.net/rimg/himg/11/e5/27/ice-319927-100765785-234212.jpg?width=452&height=400&xhint=1382&yhint=960&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:57:02', '2024-04-25 16:57:02'),
(121, 111, 'https://content.r9cdn.net/rimg/himg/c5/17/c1/leonardo-1139855-CROEG_5713497187_O-406662.jpg?width=452&height=400&xhint=1620&yhint=1000&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:57:02', '2024-04-25 16:57:02'),
(123, 112, 'https://content.r9cdn.net/rimg/himg/12/52/3b/ice-156097-108000736-435004.jpg?width=452&height=400&xhint=1440&yhint=1123&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:57:02', '2024-04-25 16:57:02'),
(125, 113, 'https://content.r9cdn.net/rimg/himg/18/76/15/leonardo-2660585-CROHC_5304417561_O-858166.jpg?width=452&height=400&xhint=1500&yhint=1166&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:57:02', '2024-04-25 16:57:02'),
(127, 114, 'https://content.r9cdn.net/rimg/kimg/23/ca/45b1779e39616331.jpg?width=452&height=400&xhint=254&yhint=444&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:57:20', '2024-04-25 16:57:20'),
(129, 115, 'https://content.r9cdn.net/rimg/himg/14/93/5b/leonardo-143057-156397073-222097.jpg?width=452&height=400&xhint=1620&yhint=1000&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:57:20', '2024-04-25 16:57:20'),
(131, 116, 'https://content.r9cdn.net/rimg/himg/09/b2/c2/leonardo-539003-156763953-732657.jpg?width=452&height=400&xhint=1620&yhint=1004&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:57:20', '2024-04-25 16:57:20'),
(133, 117, 'https://content.r9cdn.net/rimg/himg/11/e5/27/ice-319927-100765785-234212.jpg?width=452&height=400&xhint=1382&yhint=960&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:57:20', '2024-04-25 16:57:20'),
(135, 118, 'https://content.r9cdn.net/rimg/himg/c5/17/c1/leonardo-1139855-CROEG_5713497187_O-406662.jpg?width=452&height=400&xhint=1620&yhint=1000&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:57:20', '2024-04-25 16:57:20'),
(137, 119, 'https://content.r9cdn.net/rimg/himg/12/52/3b/ice-156097-108000736-435004.jpg?width=452&height=400&xhint=1440&yhint=1123&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:57:20', '2024-04-25 16:57:20'),
(139, 120, 'https://content.r9cdn.net/rimg/himg/18/76/15/leonardo-2660585-CROHC_5304417561_O-858166.jpg?width=452&height=400&xhint=1500&yhint=1166&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:57:20', '2024-04-25 16:57:20'),
(141, 121, 'https://content.r9cdn.net/rimg/himg/be/fb/2b/leonardo-50790-114802606-653921.jpg?width=452&height=400&xhint=500&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:57:20', '2024-04-25 16:57:20'),
(142, 122, 'https://content.r9cdn.net/rimg/himg/21/be/3b/booking-10276051-496632389-645221.jpg?width=452&height=400&xhint=420&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:57:20', '2024-04-25 16:57:20'),
(143, 123, 'https://content.r9cdn.net/rimg/himg/76/08/95/booking-1070731000-519726901-838004.jpg?width=452&height=400&xhint=403&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:57:20', '2024-04-25 16:57:20'),
(145, 124, 'https://content.r9cdn.net/rimg/himg/26/1b/bf/booking-2581137-70088060-092950.jpg?width=452&height=400&xhint=369&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:57:20', '2024-04-25 16:57:20'),
(147, 125, 'https://content.r9cdn.net/rimg/kimg/23/ca/45b1779e39616331.jpg?width=452&height=400&xhint=254&yhint=444&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:57:34', '2024-04-25 16:57:34'),
(149, 126, 'https://content.r9cdn.net/rimg/himg/14/93/5b/leonardo-143057-156397073-222097.jpg?width=452&height=400&xhint=1620&yhint=1000&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:57:34', '2024-04-25 16:57:34'),
(151, 127, 'https://content.r9cdn.net/rimg/himg/09/b2/c2/leonardo-539003-156763953-732657.jpg?width=452&height=400&xhint=1620&yhint=1004&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:57:34', '2024-04-25 16:57:34'),
(153, 128, 'https://content.r9cdn.net/rimg/himg/11/e5/27/ice-319927-100765785-234212.jpg?width=452&height=400&xhint=1382&yhint=960&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:57:34', '2024-04-25 16:57:34'),
(155, 129, 'https://content.r9cdn.net/rimg/himg/c5/17/c1/leonardo-1139855-CROEG_5713497187_O-406662.jpg?width=452&height=400&xhint=1620&yhint=1000&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:57:34', '2024-04-25 16:57:34'),
(157, 130, 'https://content.r9cdn.net/rimg/himg/12/52/3b/ice-156097-108000736-435004.jpg?width=452&height=400&xhint=1440&yhint=1123&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:57:34', '2024-04-25 16:57:34'),
(159, 131, 'https://content.r9cdn.net/rimg/himg/18/76/15/leonardo-2660585-CROHC_5304417561_O-858166.jpg?width=452&height=400&xhint=1500&yhint=1166&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:57:34', '2024-04-25 16:57:34'),
(161, 132, 'https://content.r9cdn.net/rimg/himg/be/fb/2b/leonardo-50790-114802606-653921.jpg?width=452&height=400&xhint=500&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:57:34', '2024-04-25 16:57:34'),
(162, 133, 'https://content.r9cdn.net/rimg/himg/21/be/3b/booking-10276051-496632389-645221.jpg?width=452&height=400&xhint=420&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:57:34', '2024-04-25 16:57:34'),
(163, 134, 'https://content.r9cdn.net/rimg/himg/76/08/95/booking-1070731000-519726901-838004.jpg?width=452&height=400&xhint=403&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:57:34', '2024-04-25 16:57:34'),
(165, 135, 'https://content.r9cdn.net/rimg/himg/26/1b/bf/booking-2581137-70088060-092950.jpg?width=452&height=400&xhint=369&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:57:34', '2024-04-25 16:57:34'),
(167, 136, 'https://content.r9cdn.net/rimg/himg/a0/94/06/leonardo-550630-117633313-337118.jpg?width=452&height=400&xhint=1620&yhint=1000&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:57:34', '2024-04-25 16:57:34'),
(169, 137, 'https://content.r9cdn.net/rimg/himg/57/24/60/ice-2347707-110711595-477539.jpg?width=452&height=400&xhint=1555&yhint=961&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:57:34', '2024-04-25 16:57:34'),
(170, 138, 'https://content.r9cdn.net/rimg/himg/e4/0c/d4/expediav2-7703125-90aafb-421449.jpg?width=452&height=400&xhint=480&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:57:34', '2024-04-25 16:57:34'),
(172, 139, 'https://content.r9cdn.net/rimg/kimg/23/ca/45b1779e39616331.jpg?width=452&height=400&xhint=254&yhint=444&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:57:49', '2024-04-25 16:57:49'),
(174, 140, 'https://content.r9cdn.net/rimg/himg/14/93/5b/leonardo-143057-156397073-222097.jpg?width=452&height=400&xhint=1620&yhint=1000&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:57:49', '2024-04-25 16:57:49'),
(176, 141, 'https://content.r9cdn.net/rimg/himg/09/b2/c2/leonardo-539003-156763953-732657.jpg?width=452&height=400&xhint=1620&yhint=1004&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:57:49', '2024-04-25 16:57:49'),
(178, 142, 'https://content.r9cdn.net/rimg/himg/11/e5/27/ice-319927-100765785-234212.jpg?width=452&height=400&xhint=1382&yhint=960&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:57:49', '2024-04-25 16:57:49'),
(180, 143, 'https://content.r9cdn.net/rimg/himg/c5/17/c1/leonardo-1139855-CROEG_5713497187_O-406662.jpg?width=452&height=400&xhint=1620&yhint=1000&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:57:49', '2024-04-25 16:57:49'),
(182, 144, 'https://content.r9cdn.net/rimg/himg/12/52/3b/ice-156097-108000736-435004.jpg?width=452&height=400&xhint=1440&yhint=1123&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:57:49', '2024-04-25 16:57:49'),
(184, 145, 'https://content.r9cdn.net/rimg/himg/18/76/15/leonardo-2660585-CROHC_5304417561_O-858166.jpg?width=452&height=400&xhint=1500&yhint=1166&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:57:49', '2024-04-25 16:57:49'),
(186, 146, 'https://content.r9cdn.net/rimg/himg/be/fb/2b/leonardo-50790-114802606-653921.jpg?width=452&height=400&xhint=500&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:57:49', '2024-04-25 16:57:49'),
(187, 147, 'https://content.r9cdn.net/rimg/himg/21/be/3b/booking-10276051-496632389-645221.jpg?width=452&height=400&xhint=420&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:57:49', '2024-04-25 16:57:49'),
(188, 148, 'https://content.r9cdn.net/rimg/himg/76/08/95/booking-1070731000-519726901-838004.jpg?width=452&height=400&xhint=403&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:57:49', '2024-04-25 16:57:49'),
(190, 149, 'https://content.r9cdn.net/rimg/himg/26/1b/bf/booking-2581137-70088060-092950.jpg?width=452&height=400&xhint=369&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:57:49', '2024-04-25 16:57:49'),
(192, 150, 'https://content.r9cdn.net/rimg/himg/a0/94/06/leonardo-550630-117633313-337118.jpg?width=452&height=400&xhint=1620&yhint=1000&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:57:49', '2024-04-25 16:57:49'),
(194, 151, 'https://content.r9cdn.net/rimg/himg/57/24/60/ice-2347707-110711595-477539.jpg?width=452&height=400&xhint=1555&yhint=961&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:57:49', '2024-04-25 16:57:49'),
(195, 152, 'https://content.r9cdn.net/rimg/himg/e4/0c/d4/expediav2-7703125-90aafb-421449.jpg?width=452&height=400&xhint=480&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:57:49', '2024-04-25 16:57:49'),
(196, 153, 'https://content.r9cdn.net/rimg/himg/7d/74/12/ice-37319-70398272_3XL-231600.jpg?width=452&height=400&xhint=1440&yhint=1123&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:57:49', '2024-04-25 16:57:49'),
(198, 154, 'https://content.r9cdn.net/rimg/kimg/23/ca/45b1779e39616331.jpg?width=452&height=400&xhint=254&yhint=444&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:05', '2024-04-25 16:58:05'),
(200, 155, 'https://content.r9cdn.net/rimg/himg/14/93/5b/leonardo-143057-156397073-222097.jpg?width=452&height=400&xhint=1620&yhint=1000&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:05', '2024-04-25 16:58:05'),
(202, 156, 'https://content.r9cdn.net/rimg/himg/09/b2/c2/leonardo-539003-156763953-732657.jpg?width=452&height=400&xhint=1620&yhint=1004&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:05', '2024-04-25 16:58:05'),
(204, 157, 'https://content.r9cdn.net/rimg/himg/11/e5/27/ice-319927-100765785-234212.jpg?width=452&height=400&xhint=1382&yhint=960&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:05', '2024-04-25 16:58:05'),
(206, 158, 'https://content.r9cdn.net/rimg/himg/c5/17/c1/leonardo-1139855-CROEG_5713497187_O-406662.jpg?width=452&height=400&xhint=1620&yhint=1000&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:05', '2024-04-25 16:58:05'),
(208, 159, 'https://content.r9cdn.net/rimg/himg/12/52/3b/ice-156097-108000736-435004.jpg?width=452&height=400&xhint=1440&yhint=1123&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:05', '2024-04-25 16:58:05'),
(210, 160, 'https://content.r9cdn.net/rimg/himg/18/76/15/leonardo-2660585-CROHC_5304417561_O-858166.jpg?width=452&height=400&xhint=1500&yhint=1166&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:05', '2024-04-25 16:58:05'),
(212, 161, 'https://content.r9cdn.net/rimg/himg/be/fb/2b/leonardo-50790-114802606-653921.jpg?width=452&height=400&xhint=500&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:05', '2024-04-25 16:58:05'),
(213, 162, 'https://content.r9cdn.net/rimg/himg/21/be/3b/booking-10276051-496632389-645221.jpg?width=452&height=400&xhint=420&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:05', '2024-04-25 16:58:05'),
(214, 163, 'https://content.r9cdn.net/rimg/himg/76/08/95/booking-1070731000-519726901-838004.jpg?width=452&height=400&xhint=403&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:05', '2024-04-25 16:58:05'),
(216, 164, 'https://content.r9cdn.net/rimg/himg/26/1b/bf/booking-2581137-70088060-092950.jpg?width=452&height=400&xhint=369&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:05', '2024-04-25 16:58:05'),
(218, 165, 'https://content.r9cdn.net/rimg/himg/a0/94/06/leonardo-550630-117633313-337118.jpg?width=452&height=400&xhint=1620&yhint=1000&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:05', '2024-04-25 16:58:05'),
(220, 166, 'https://content.r9cdn.net/rimg/himg/57/24/60/ice-2347707-110711595-477539.jpg?width=452&height=400&xhint=1555&yhint=961&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:05', '2024-04-25 16:58:05'),
(221, 167, 'https://content.r9cdn.net/rimg/himg/e4/0c/d4/expediav2-7703125-90aafb-421449.jpg?width=452&height=400&xhint=480&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:05', '2024-04-25 16:58:05'),
(222, 168, 'https://content.r9cdn.net/rimg/himg/7d/74/12/ice-37319-70398272_3XL-231600.jpg?width=452&height=400&xhint=1440&yhint=1123&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:05', '2024-04-25 16:58:05'),
(224, 169, 'https://content.r9cdn.net/rimg/himg/5d/aa/97/leonardo-2022350-caiwi-exterior-hotel-0770-hor-clsc_O-762429.jpg?width=452&height=400&xhint=1620&yhint=1000&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:05', '2024-04-25 16:58:05'),
(226, 170, 'https://content.r9cdn.net/rimg/himg/22/52/7c/leonardo-50789-147969950-701766.jpg?width=452&height=400&xhint=1620&yhint=1000&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:05', '2024-04-25 16:58:05'),
(228, 171, 'https://content.r9cdn.net/rimg/kimg/23/ca/45b1779e39616331.jpg?width=452&height=400&xhint=254&yhint=444&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:18', '2024-04-25 16:58:18'),
(230, 172, 'https://content.r9cdn.net/rimg/himg/14/93/5b/leonardo-143057-156397073-222097.jpg?width=452&height=400&xhint=1620&yhint=1000&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:18', '2024-04-25 16:58:18'),
(232, 173, 'https://content.r9cdn.net/rimg/himg/09/b2/c2/leonardo-539003-156763953-732657.jpg?width=452&height=400&xhint=1620&yhint=1004&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:18', '2024-04-25 16:58:18'),
(234, 174, 'https://content.r9cdn.net/rimg/himg/11/e5/27/ice-319927-100765785-234212.jpg?width=452&height=400&xhint=1382&yhint=960&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:18', '2024-04-25 16:58:18'),
(236, 175, 'https://content.r9cdn.net/rimg/himg/c5/17/c1/leonardo-1139855-CROEG_5713497187_O-406662.jpg?width=452&height=400&xhint=1620&yhint=1000&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:18', '2024-04-25 16:58:18'),
(238, 176, 'https://content.r9cdn.net/rimg/himg/12/52/3b/ice-156097-108000736-435004.jpg?width=452&height=400&xhint=1440&yhint=1123&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:18', '2024-04-25 16:58:18'),
(240, 177, 'https://content.r9cdn.net/rimg/himg/18/76/15/leonardo-2660585-CROHC_5304417561_O-858166.jpg?width=452&height=400&xhint=1500&yhint=1166&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:18', '2024-04-25 16:58:18'),
(242, 178, 'https://content.r9cdn.net/rimg/himg/be/fb/2b/leonardo-50790-114802606-653921.jpg?width=452&height=400&xhint=500&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:18', '2024-04-25 16:58:18'),
(243, 179, 'https://content.r9cdn.net/rimg/himg/21/be/3b/booking-10276051-496632389-645221.jpg?width=452&height=400&xhint=420&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:18', '2024-04-25 16:58:18'),
(244, 180, 'https://content.r9cdn.net/rimg/himg/76/08/95/booking-1070731000-519726901-838004.jpg?width=452&height=400&xhint=403&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:18', '2024-04-25 16:58:18'),
(246, 181, 'https://content.r9cdn.net/rimg/himg/26/1b/bf/booking-2581137-70088060-092950.jpg?width=452&height=400&xhint=369&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:18', '2024-04-25 16:58:18'),
(248, 182, 'https://content.r9cdn.net/rimg/himg/a0/94/06/leonardo-550630-117633313-337118.jpg?width=452&height=400&xhint=1620&yhint=1000&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:18', '2024-04-25 16:58:18'),
(250, 183, 'https://content.r9cdn.net/rimg/himg/57/24/60/ice-2347707-110711595-477539.jpg?width=452&height=400&xhint=1555&yhint=961&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:18', '2024-04-25 16:58:18'),
(251, 184, 'https://content.r9cdn.net/rimg/himg/e4/0c/d4/expediav2-7703125-90aafb-421449.jpg?width=452&height=400&xhint=480&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:18', '2024-04-25 16:58:18'),
(252, 185, 'https://content.r9cdn.net/rimg/himg/7d/74/12/ice-37319-70398272_3XL-231600.jpg?width=452&height=400&xhint=1440&yhint=1123&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:18', '2024-04-25 16:58:18'),
(254, 186, 'https://content.r9cdn.net/rimg/himg/5d/aa/97/leonardo-2022350-caiwi-exterior-hotel-0770-hor-clsc_O-762429.jpg?width=452&height=400&xhint=1620&yhint=1000&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:18', '2024-04-25 16:58:18'),
(256, 187, 'https://content.r9cdn.net/rimg/himg/22/52/7c/leonardo-50789-147969950-701766.jpg?width=452&height=400&xhint=1620&yhint=1000&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:18', '2024-04-25 16:58:18'),
(257, 188, 'https://content.r9cdn.net/rimg/himg/02/ca/ee/ostrovok-8642803-8bbb5f-465984.jpg?width=452&height=400&xhint=552&yhint=341&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:18', '2024-04-25 16:58:18'),
(258, 189, 'https://content.r9cdn.net/rimg/himg/ed/10/60/expediav2-2159961-6cb980-422364.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:18', '2024-04-25 16:58:18'),
(260, 190, 'https://content.r9cdn.net/rimg/kimg/23/ca/45b1779e39616331.jpg?width=452&height=400&xhint=254&yhint=444&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:33', '2024-04-25 16:58:33'),
(262, 191, 'https://content.r9cdn.net/rimg/himg/14/93/5b/leonardo-143057-156397073-222097.jpg?width=452&height=400&xhint=1620&yhint=1000&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:33', '2024-04-25 16:58:33'),
(264, 192, 'https://content.r9cdn.net/rimg/himg/09/b2/c2/leonardo-539003-156763953-732657.jpg?width=452&height=400&xhint=1620&yhint=1004&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:34', '2024-04-25 16:58:34'),
(266, 193, 'https://content.r9cdn.net/rimg/himg/11/e5/27/ice-319927-100765785-234212.jpg?width=452&height=400&xhint=1382&yhint=960&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:34', '2024-04-25 16:58:34'),
(268, 194, 'https://content.r9cdn.net/rimg/himg/c5/17/c1/leonardo-1139855-CROEG_5713497187_O-406662.jpg?width=452&height=400&xhint=1620&yhint=1000&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:34', '2024-04-25 16:58:34'),
(270, 195, 'https://content.r9cdn.net/rimg/himg/12/52/3b/ice-156097-108000736-435004.jpg?width=452&height=400&xhint=1440&yhint=1123&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:34', '2024-04-25 16:58:34'),
(272, 196, 'https://content.r9cdn.net/rimg/himg/18/76/15/leonardo-2660585-CROHC_5304417561_O-858166.jpg?width=452&height=400&xhint=1500&yhint=1166&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:34', '2024-04-25 16:58:34'),
(274, 197, 'https://content.r9cdn.net/rimg/himg/be/fb/2b/leonardo-50790-114802606-653921.jpg?width=452&height=400&xhint=500&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:34', '2024-04-25 16:58:34'),
(275, 198, 'https://content.r9cdn.net/rimg/himg/21/be/3b/booking-10276051-496632389-645221.jpg?width=452&height=400&xhint=420&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:34', '2024-04-25 16:58:34'),
(276, 199, 'https://content.r9cdn.net/rimg/himg/76/08/95/booking-1070731000-519726901-838004.jpg?width=452&height=400&xhint=403&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:34', '2024-04-25 16:58:34'),
(278, 200, 'https://content.r9cdn.net/rimg/himg/26/1b/bf/booking-2581137-70088060-092950.jpg?width=452&height=400&xhint=369&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:34', '2024-04-25 16:58:34'),
(280, 201, 'https://content.r9cdn.net/rimg/himg/a0/94/06/leonardo-550630-117633313-337118.jpg?width=452&height=400&xhint=1620&yhint=1000&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:34', '2024-04-25 16:58:34'),
(282, 202, 'https://content.r9cdn.net/rimg/himg/57/24/60/ice-2347707-110711595-477539.jpg?width=452&height=400&xhint=1555&yhint=961&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:34', '2024-04-25 16:58:34'),
(283, 203, 'https://content.r9cdn.net/rimg/himg/e4/0c/d4/expediav2-7703125-90aafb-421449.jpg?width=452&height=400&xhint=480&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:34', '2024-04-25 16:58:34'),
(284, 204, 'https://content.r9cdn.net/rimg/himg/7d/74/12/ice-37319-70398272_3XL-231600.jpg?width=452&height=400&xhint=1440&yhint=1123&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:34', '2024-04-25 16:58:34'),
(286, 205, 'https://content.r9cdn.net/rimg/himg/5d/aa/97/leonardo-2022350-caiwi-exterior-hotel-0770-hor-clsc_O-762429.jpg?width=452&height=400&xhint=1620&yhint=1000&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:34', '2024-04-25 16:58:34'),
(288, 206, 'https://content.r9cdn.net/rimg/himg/22/52/7c/leonardo-50789-147969950-701766.jpg?width=452&height=400&xhint=1620&yhint=1000&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:34', '2024-04-25 16:58:34'),
(289, 207, 'https://content.r9cdn.net/rimg/himg/02/ca/ee/ostrovok-8642803-8bbb5f-465984.jpg?width=452&height=400&xhint=552&yhint=341&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:34', '2024-04-25 16:58:34'),
(290, 208, 'https://content.r9cdn.net/rimg/himg/ed/10/60/expediav2-2159961-6cb980-422364.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:34', '2024-04-25 16:58:34'),
(292, 209, 'https://content.r9cdn.net/rimg/himg/20/36/0b/leonardo-2660639-b4l4_ho_00_p_3000x2250_O-444595.jpg?width=452&height=400&xhint=1500&yhint=1170&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:34', '2024-04-25 16:58:34'),
(294, 210, 'https://content.r9cdn.net/rimg/kimg/23/ca/45b1779e39616331.jpg?width=452&height=400&xhint=254&yhint=444&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:53', '2024-04-25 16:58:53'),
(296, 211, 'https://content.r9cdn.net/rimg/himg/14/93/5b/leonardo-143057-156397073-222097.jpg?width=452&height=400&xhint=1620&yhint=1000&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:53', '2024-04-25 16:58:53'),
(298, 212, 'https://content.r9cdn.net/rimg/himg/09/b2/c2/leonardo-539003-156763953-732657.jpg?width=452&height=400&xhint=1620&yhint=1004&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:53', '2024-04-25 16:58:53'),
(300, 213, 'https://content.r9cdn.net/rimg/himg/11/e5/27/ice-319927-100765785-234212.jpg?width=452&height=400&xhint=1382&yhint=960&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:53', '2024-04-25 16:58:53');
INSERT INTO `hotel_images` (`id`, `hotel_id`, `data`, `created_at`, `updated_at`) VALUES
(302, 214, 'https://content.r9cdn.net/rimg/himg/c5/17/c1/leonardo-1139855-CROEG_5713497187_O-406662.jpg?width=452&height=400&xhint=1620&yhint=1000&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:53', '2024-04-25 16:58:53'),
(304, 215, 'https://content.r9cdn.net/rimg/himg/12/52/3b/ice-156097-108000736-435004.jpg?width=452&height=400&xhint=1440&yhint=1123&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:53', '2024-04-25 16:58:53'),
(306, 216, 'https://content.r9cdn.net/rimg/himg/18/76/15/leonardo-2660585-CROHC_5304417561_O-858166.jpg?width=452&height=400&xhint=1500&yhint=1166&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:53', '2024-04-25 16:58:53'),
(308, 217, 'https://content.r9cdn.net/rimg/himg/be/fb/2b/leonardo-50790-114802606-653921.jpg?width=452&height=400&xhint=500&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:53', '2024-04-25 16:58:53'),
(309, 218, 'https://content.r9cdn.net/rimg/himg/21/be/3b/booking-10276051-496632389-645221.jpg?width=452&height=400&xhint=420&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:53', '2024-04-25 16:58:53'),
(310, 219, 'https://content.r9cdn.net/rimg/himg/76/08/95/booking-1070731000-519726901-838004.jpg?width=452&height=400&xhint=403&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:53', '2024-04-25 16:58:53'),
(312, 220, 'https://content.r9cdn.net/rimg/himg/26/1b/bf/booking-2581137-70088060-092950.jpg?width=452&height=400&xhint=369&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:53', '2024-04-25 16:58:53'),
(314, 221, 'https://content.r9cdn.net/rimg/himg/a0/94/06/leonardo-550630-117633313-337118.jpg?width=452&height=400&xhint=1620&yhint=1000&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:53', '2024-04-25 16:58:53'),
(316, 222, 'https://content.r9cdn.net/rimg/himg/57/24/60/ice-2347707-110711595-477539.jpg?width=452&height=400&xhint=1555&yhint=961&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:53', '2024-04-25 16:58:53'),
(317, 223, 'https://content.r9cdn.net/rimg/himg/e4/0c/d4/expediav2-7703125-90aafb-421449.jpg?width=452&height=400&xhint=480&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:53', '2024-04-25 16:58:53'),
(318, 224, 'https://content.r9cdn.net/rimg/himg/7d/74/12/ice-37319-70398272_3XL-231600.jpg?width=452&height=400&xhint=1440&yhint=1123&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:53', '2024-04-25 16:58:53'),
(320, 225, 'https://content.r9cdn.net/rimg/himg/5d/aa/97/leonardo-2022350-caiwi-exterior-hotel-0770-hor-clsc_O-762429.jpg?width=452&height=400&xhint=1620&yhint=1000&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:53', '2024-04-25 16:58:53'),
(322, 226, 'https://content.r9cdn.net/rimg/himg/22/52/7c/leonardo-50789-147969950-701766.jpg?width=452&height=400&xhint=1620&yhint=1000&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:53', '2024-04-25 16:58:53'),
(323, 227, 'https://content.r9cdn.net/rimg/himg/02/ca/ee/ostrovok-8642803-8bbb5f-465984.jpg?width=452&height=400&xhint=552&yhint=341&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:53', '2024-04-25 16:58:53'),
(324, 228, 'https://content.r9cdn.net/rimg/himg/ed/10/60/expediav2-2159961-6cb980-422364.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:53', '2024-04-25 16:58:53'),
(326, 229, 'https://content.r9cdn.net/rimg/himg/20/36/0b/leonardo-2660639-b4l4_ho_00_p_3000x2250_O-444595.jpg?width=452&height=400&xhint=1500&yhint=1170&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:53', '2024-04-25 16:58:53'),
(327, 230, 'https://content.r9cdn.net/rimg/himg/22/59/ba/booking-9266653-422553247-081302.jpg?width=452&height=400&xhint=520&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:53', '2024-04-25 16:58:53'),
(328, 231, 'https://content.r9cdn.net/rimg/himg/8d/e6/98/ice-3715224-110108166-266396.jpg?width=452&height=400&xhint=1497&yhint=960&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:53', '2024-04-25 16:58:53'),
(329, 232, 'https://content.r9cdn.net/rimg/himg/61/0c/bd/booking-10298127-500612101-991258.jpg?width=452&height=400&xhint=369&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:58:53', '2024-04-25 16:58:53'),
(331, 233, 'https://content.r9cdn.net/rimg/kimg/23/ca/45b1779e39616331.jpg?width=452&height=400&xhint=254&yhint=444&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:59:24', '2024-04-25 16:59:24'),
(333, 234, 'https://content.r9cdn.net/rimg/himg/14/93/5b/leonardo-143057-156397073-222097.jpg?width=452&height=400&xhint=1620&yhint=1000&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:59:24', '2024-04-25 16:59:24'),
(335, 235, 'https://content.r9cdn.net/rimg/himg/09/b2/c2/leonardo-539003-156763953-732657.jpg?width=452&height=400&xhint=1620&yhint=1004&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:59:24', '2024-04-25 16:59:24'),
(337, 236, 'https://content.r9cdn.net/rimg/himg/11/e5/27/ice-319927-100765785-234212.jpg?width=452&height=400&xhint=1382&yhint=960&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:59:24', '2024-04-25 16:59:24'),
(339, 237, 'https://content.r9cdn.net/rimg/himg/c5/17/c1/leonardo-1139855-CROEG_5713497187_O-406662.jpg?width=452&height=400&xhint=1620&yhint=1000&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:59:24', '2024-04-25 16:59:24'),
(341, 238, 'https://content.r9cdn.net/rimg/himg/12/52/3b/ice-156097-108000736-435004.jpg?width=452&height=400&xhint=1440&yhint=1123&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:59:24', '2024-04-25 16:59:24'),
(343, 239, 'https://content.r9cdn.net/rimg/himg/18/76/15/leonardo-2660585-CROHC_5304417561_O-858166.jpg?width=452&height=400&xhint=1500&yhint=1166&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:59:24', '2024-04-25 16:59:24'),
(345, 240, 'https://content.r9cdn.net/rimg/himg/be/fb/2b/leonardo-50790-114802606-653921.jpg?width=452&height=400&xhint=500&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:59:24', '2024-04-25 16:59:24'),
(346, 241, 'https://content.r9cdn.net/rimg/himg/21/be/3b/booking-10276051-496632389-645221.jpg?width=452&height=400&xhint=420&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:59:24', '2024-04-25 16:59:24'),
(347, 242, 'https://content.r9cdn.net/rimg/himg/76/08/95/booking-1070731000-519726901-838004.jpg?width=452&height=400&xhint=403&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:59:24', '2024-04-25 16:59:24'),
(349, 243, 'https://content.r9cdn.net/rimg/himg/26/1b/bf/booking-2581137-70088060-092950.jpg?width=452&height=400&xhint=369&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:59:24', '2024-04-25 16:59:24'),
(351, 244, 'https://content.r9cdn.net/rimg/himg/a0/94/06/leonardo-550630-117633313-337118.jpg?width=452&height=400&xhint=1620&yhint=1000&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:59:24', '2024-04-25 16:59:24'),
(353, 245, 'https://content.r9cdn.net/rimg/himg/57/24/60/ice-2347707-110711595-477539.jpg?width=452&height=400&xhint=1555&yhint=961&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:59:24', '2024-04-25 16:59:24'),
(354, 246, 'https://content.r9cdn.net/rimg/himg/e4/0c/d4/expediav2-7703125-90aafb-421449.jpg?width=452&height=400&xhint=480&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:59:24', '2024-04-25 16:59:24'),
(355, 247, 'https://content.r9cdn.net/rimg/himg/7d/74/12/ice-37319-70398272_3XL-231600.jpg?width=452&height=400&xhint=1440&yhint=1123&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:59:24', '2024-04-25 16:59:24'),
(357, 248, 'https://content.r9cdn.net/rimg/himg/5d/aa/97/leonardo-2022350-caiwi-exterior-hotel-0770-hor-clsc_O-762429.jpg?width=452&height=400&xhint=1620&yhint=1000&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:59:24', '2024-04-25 16:59:24'),
(359, 249, 'https://content.r9cdn.net/rimg/himg/22/52/7c/leonardo-50789-147969950-701766.jpg?width=452&height=400&xhint=1620&yhint=1000&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:59:24', '2024-04-25 16:59:24'),
(360, 250, 'https://content.r9cdn.net/rimg/himg/02/ca/ee/ostrovok-8642803-8bbb5f-465984.jpg?width=452&height=400&xhint=552&yhint=341&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:59:24', '2024-04-25 16:59:24'),
(361, 251, 'https://content.r9cdn.net/rimg/himg/ed/10/60/expediav2-2159961-6cb980-422364.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:59:24', '2024-04-25 16:59:24'),
(363, 252, 'https://content.r9cdn.net/rimg/himg/20/36/0b/leonardo-2660639-b4l4_ho_00_p_3000x2250_O-444595.jpg?width=452&height=400&xhint=1500&yhint=1170&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:59:24', '2024-04-25 16:59:24'),
(364, 253, 'https://content.r9cdn.net/rimg/himg/22/59/ba/booking-9266653-422553247-081302.jpg?width=452&height=400&xhint=520&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:59:24', '2024-04-25 16:59:24'),
(365, 254, 'https://content.r9cdn.net/rimg/himg/8d/e6/98/ice-3715224-110108166-266396.jpg?width=452&height=400&xhint=1497&yhint=960&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:59:24', '2024-04-25 16:59:24'),
(366, 255, 'https://content.r9cdn.net/rimg/himg/61/0c/bd/booking-10298127-500612101-991258.jpg?width=452&height=400&xhint=369&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:59:24', '2024-04-25 16:59:24'),
(367, 256, '4 stars', '2024-04-25 16:59:24', '2024-04-25 16:59:24'),
(368, 256, 'https://content.r9cdn.net/rimg/kimg/4c/82/9a1f38f3-62b41f38-8.jpeg?width=452&height=400&xhint=780&yhint=499&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:59:24', '2024-04-25 16:59:24'),
(369, 257, 'https://content.r9cdn.net/rimg/himg/89/9c/71/expediav2-23331853-caf287e3_z-896283.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 16:59:24', '2024-04-25 16:59:24'),
(371, 258, 'https://content.r9cdn.net/rimg/kimg/23/ca/45b1779e39616331.jpg?width=452&height=400&xhint=254&yhint=444&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:00:09', '2024-04-25 17:00:09'),
(373, 259, 'https://content.r9cdn.net/rimg/himg/14/93/5b/leonardo-143057-156397073-222097.jpg?width=452&height=400&xhint=1620&yhint=1000&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:00:09', '2024-04-25 17:00:09'),
(375, 260, 'https://content.r9cdn.net/rimg/himg/09/b2/c2/leonardo-539003-156763953-732657.jpg?width=452&height=400&xhint=1620&yhint=1004&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:00:09', '2024-04-25 17:00:09'),
(377, 261, 'https://content.r9cdn.net/rimg/himg/11/e5/27/ice-319927-100765785-234212.jpg?width=452&height=400&xhint=1382&yhint=960&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:00:09', '2024-04-25 17:00:09'),
(379, 262, 'https://content.r9cdn.net/rimg/himg/c5/17/c1/leonardo-1139855-CROEG_5713497187_O-406662.jpg?width=452&height=400&xhint=1620&yhint=1000&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:00:09', '2024-04-25 17:00:09'),
(381, 263, 'https://content.r9cdn.net/rimg/himg/12/52/3b/ice-156097-108000736-435004.jpg?width=452&height=400&xhint=1440&yhint=1123&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:00:09', '2024-04-25 17:00:09'),
(383, 264, 'https://content.r9cdn.net/rimg/himg/18/76/15/leonardo-2660585-CROHC_5304417561_O-858166.jpg?width=452&height=400&xhint=1500&yhint=1166&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:00:09', '2024-04-25 17:00:09'),
(385, 265, 'https://content.r9cdn.net/rimg/himg/be/fb/2b/leonardo-50790-114802606-653921.jpg?width=452&height=400&xhint=500&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:00:09', '2024-04-25 17:00:09'),
(386, 266, 'https://content.r9cdn.net/rimg/himg/21/be/3b/booking-10276051-496632389-645221.jpg?width=452&height=400&xhint=420&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:00:09', '2024-04-25 17:00:09'),
(387, 267, 'https://content.r9cdn.net/rimg/himg/76/08/95/booking-1070731000-519726901-838004.jpg?width=452&height=400&xhint=403&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:00:09', '2024-04-25 17:00:09'),
(388, 268, '4 stars', '2024-04-25 17:00:09', '2024-04-25 17:00:09'),
(389, 268, 'https://content.r9cdn.net/rimg/himg/26/1b/bf/booking-2581137-70088060-092950.jpg?width=452&height=400&xhint=369&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:00:09', '2024-04-25 17:00:09'),
(391, 269, 'https://content.r9cdn.net/rimg/himg/a0/94/06/leonardo-550630-117633313-337118.jpg?width=452&height=400&xhint=1620&yhint=1000&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:00:09', '2024-04-25 17:00:09'),
(393, 270, 'https://content.r9cdn.net/rimg/himg/57/24/60/ice-2347707-110711595-477539.jpg?width=452&height=400&xhint=1555&yhint=961&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:00:09', '2024-04-25 17:00:09'),
(394, 271, 'https://content.r9cdn.net/rimg/himg/e4/0c/d4/expediav2-7703125-90aafb-421449.jpg?width=452&height=400&xhint=480&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:00:09', '2024-04-25 17:00:09'),
(395, 272, 'https://content.r9cdn.net/rimg/himg/7d/74/12/ice-37319-70398272_3XL-231600.jpg?width=452&height=400&xhint=1440&yhint=1123&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:00:09', '2024-04-25 17:00:09'),
(397, 273, 'https://content.r9cdn.net/rimg/himg/5d/aa/97/leonardo-2022350-caiwi-exterior-hotel-0770-hor-clsc_O-762429.jpg?width=452&height=400&xhint=1620&yhint=1000&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:00:09', '2024-04-25 17:00:09'),
(399, 274, 'https://content.r9cdn.net/rimg/himg/22/52/7c/leonardo-50789-147969950-701766.jpg?width=452&height=400&xhint=1620&yhint=1000&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:00:09', '2024-04-25 17:00:09'),
(400, 275, 'https://content.r9cdn.net/rimg/himg/02/ca/ee/ostrovok-8642803-8bbb5f-465984.jpg?width=452&height=400&xhint=552&yhint=341&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:00:09', '2024-04-25 17:00:09'),
(401, 276, 'https://content.r9cdn.net/rimg/himg/ed/10/60/expediav2-2159961-6cb980-422364.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:00:09', '2024-04-25 17:00:09'),
(403, 277, 'https://content.r9cdn.net/rimg/himg/20/36/0b/leonardo-2660639-b4l4_ho_00_p_3000x2250_O-444595.jpg?width=452&height=400&xhint=1500&yhint=1170&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:00:09', '2024-04-25 17:00:09'),
(404, 278, 'https://content.r9cdn.net/rimg/himg/22/59/ba/booking-9266653-422553247-081302.jpg?width=452&height=400&xhint=520&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:00:09', '2024-04-25 17:00:09'),
(405, 279, 'https://content.r9cdn.net/rimg/himg/8d/e6/98/ice-3715224-110108166-266396.jpg?width=452&height=400&xhint=1497&yhint=960&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:00:09', '2024-04-25 17:00:09'),
(406, 280, 'https://content.r9cdn.net/rimg/himg/61/0c/bd/booking-10298127-500612101-991258.jpg?width=452&height=400&xhint=369&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:00:09', '2024-04-25 17:00:09'),
(407, 281, '4 stars', '2024-04-25 17:00:09', '2024-04-25 17:00:09'),
(408, 281, 'https://content.r9cdn.net/rimg/kimg/4c/82/9a1f38f3-62b41f38-8.jpeg?width=452&height=400&xhint=780&yhint=499&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:00:09', '2024-04-25 17:00:09'),
(409, 282, 'https://content.r9cdn.net/rimg/himg/89/9c/71/expediav2-23331853-caf287e3_z-896283.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:00:09', '2024-04-25 17:00:09'),
(410, 283, 'https://content.r9cdn.net/rimg/himg/39/61/5d/expediav2-6278131-dceb2c-815315.jpg?width=452&height=400&xhint=520&yhint=346&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:01:59', '2024-04-25 17:01:59'),
(411, 284, 'https://content.r9cdn.net/rimg/himg/7e/26/5e/expediav2-305045-927e41-736919.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:01:59', '2024-04-25 17:01:59'),
(412, 285, 'https://content.r9cdn.net/rimg/himg/a5/30/6f/booking-2330570-407624561-201970.jpg?width=452&height=400&xhint=453&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:01:59', '2024-04-25 17:01:59'),
(413, 286, 'https://content.r9cdn.net/rimg/himg/79/a0/a6/expediav2-8871021-93430b-527639.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:01:59', '2024-04-25 17:01:59'),
(414, 287, 'https://content.r9cdn.net/rimg/himg/15/59/04/expediav2-7594183-84376f-456817.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:01:59', '2024-04-25 17:01:59'),
(415, 288, 'https://content.r9cdn.net/rimg/himg/39/61/5d/expediav2-6278131-dceb2c-815315.jpg?width=452&height=400&xhint=520&yhint=346&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:02:55', '2024-04-25 17:02:55'),
(416, 289, 'https://content.r9cdn.net/rimg/himg/7e/26/5e/expediav2-305045-927e41-736919.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:02:55', '2024-04-25 17:02:55'),
(417, 290, 'https://content.r9cdn.net/rimg/himg/a5/30/6f/booking-2330570-407624561-201970.jpg?width=452&height=400&xhint=453&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:02:55', '2024-04-25 17:02:55'),
(418, 291, 'https://content.r9cdn.net/rimg/himg/79/a0/a6/expediav2-8871021-93430b-527639.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:02:55', '2024-04-25 17:02:55'),
(419, 292, 'https://content.r9cdn.net/rimg/himg/15/59/04/expediav2-7594183-84376f-456817.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:02:55', '2024-04-25 17:02:55'),
(420, 293, 'https://content.r9cdn.net/rimg/himg/cc/dc/10/booking-2601977-359607361-496902.jpg?width=452&height=400&xhint=520&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:02:55', '2024-04-25 17:02:55'),
(421, 294, 'https://content.r9cdn.net/rimg/himg/0f/ed/3e/expediav2-320499-64251f-506991.jpg?width=452&height=400&xhint=500&yhint=351&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:02:55', '2024-04-25 17:02:55'),
(422, 295, 'https://content.r9cdn.net/rimg/himg/39/61/5d/expediav2-6278131-dceb2c-815315.jpg?width=452&height=400&xhint=520&yhint=346&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:03:13', '2024-04-25 17:03:13'),
(423, 296, 'https://content.r9cdn.net/rimg/himg/7e/26/5e/expediav2-305045-927e41-736919.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:03:13', '2024-04-25 17:03:13'),
(424, 297, 'https://content.r9cdn.net/rimg/himg/a5/30/6f/booking-2330570-407624561-201970.jpg?width=452&height=400&xhint=453&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:03:13', '2024-04-25 17:03:13'),
(425, 298, 'https://content.r9cdn.net/rimg/himg/79/a0/a6/expediav2-8871021-93430b-527639.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:03:13', '2024-04-25 17:03:13'),
(426, 299, 'https://content.r9cdn.net/rimg/himg/15/59/04/expediav2-7594183-84376f-456817.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:03:13', '2024-04-25 17:03:13'),
(427, 300, 'https://content.r9cdn.net/rimg/himg/cc/dc/10/booking-2601977-359607361-496902.jpg?width=452&height=400&xhint=520&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:03:13', '2024-04-25 17:03:13'),
(428, 301, 'https://content.r9cdn.net/rimg/himg/0f/ed/3e/expediav2-320499-64251f-506991.jpg?width=452&height=400&xhint=500&yhint=351&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:03:13', '2024-04-25 17:03:13'),
(429, 302, 'https://content.r9cdn.net/rimg/himg/3a/25/b5/expediav2-466110-a61e2f-407074.jpg?width=452&height=400&xhint=520&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:03:13', '2024-04-25 17:03:13'),
(430, 303, 'https://content.r9cdn.net/rimg/himg/ea/87/c4/booking-7531683-359262680-034585.jpg?width=452&height=400&xhint=487&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:03:13', '2024-04-25 17:03:13'),
(431, 304, 'https://content.r9cdn.net/rimg/himg/57/be/30/ostrovok-2289323-eaf766-721042.jpg?width=452&height=400&xhint=250&yhint=195&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:03:13', '2024-04-25 17:03:13'),
(432, 305, 'https://content.r9cdn.net/rimg/himg/be/22/68/expediav2-2763224-547d98-067240.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:03:13', '2024-04-25 17:03:13'),
(433, 306, 'https://content.r9cdn.net/rimg/himg/29/17/e7/booking-10184351-490428519-765057.jpg?width=452&height=400&xhint=420&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:03:13', '2024-04-25 17:03:13'),
(434, 307, 'https://content.r9cdn.net/rimg/himg/70/97/69/booking-9989407-476810106-346064.jpg?width=452&height=400&xhint=336&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:03:13', '2024-04-25 17:03:13'),
(435, 308, 'https://content.r9cdn.net/rimg/himg/d3/7f/71/expediav2-372380-fafe26-152333.jpg?width=452&height=400&xhint=480&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:03:13', '2024-04-25 17:03:13'),
(436, 309, 'https://content.r9cdn.net/rimg/himg/39/61/5d/expediav2-6278131-dceb2c-815315.jpg?width=452&height=400&xhint=520&yhint=346&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:02', '2024-04-25 17:04:02'),
(437, 310, 'https://content.r9cdn.net/rimg/himg/7e/26/5e/expediav2-305045-927e41-736919.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:02', '2024-04-25 17:04:02'),
(438, 311, 'https://content.r9cdn.net/rimg/himg/a5/30/6f/booking-2330570-407624561-201970.jpg?width=452&height=400&xhint=453&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:02', '2024-04-25 17:04:02'),
(439, 312, 'https://content.r9cdn.net/rimg/himg/79/a0/a6/expediav2-8871021-93430b-527639.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:02', '2024-04-25 17:04:02'),
(440, 313, 'https://content.r9cdn.net/rimg/himg/15/59/04/expediav2-7594183-84376f-456817.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:02', '2024-04-25 17:04:02'),
(441, 314, 'https://content.r9cdn.net/rimg/himg/cc/dc/10/booking-2601977-359607361-496902.jpg?width=452&height=400&xhint=520&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:02', '2024-04-25 17:04:02'),
(442, 315, 'https://content.r9cdn.net/rimg/himg/0f/ed/3e/expediav2-320499-64251f-506991.jpg?width=452&height=400&xhint=500&yhint=351&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:02', '2024-04-25 17:04:02'),
(443, 316, 'https://content.r9cdn.net/rimg/himg/3a/25/b5/expediav2-466110-a61e2f-407074.jpg?width=452&height=400&xhint=520&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:02', '2024-04-25 17:04:02'),
(444, 317, 'https://content.r9cdn.net/rimg/himg/ea/87/c4/booking-7531683-359262680-034585.jpg?width=452&height=400&xhint=487&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:02', '2024-04-25 17:04:02'),
(445, 318, 'https://content.r9cdn.net/rimg/himg/57/be/30/ostrovok-2289323-eaf766-721042.jpg?width=452&height=400&xhint=250&yhint=195&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:02', '2024-04-25 17:04:02'),
(446, 319, 'https://content.r9cdn.net/rimg/himg/be/22/68/expediav2-2763224-547d98-067240.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:02', '2024-04-25 17:04:02'),
(447, 320, 'https://content.r9cdn.net/rimg/himg/29/17/e7/booking-10184351-490428519-765057.jpg?width=452&height=400&xhint=420&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:02', '2024-04-25 17:04:02'),
(448, 321, 'https://content.r9cdn.net/rimg/himg/70/97/69/booking-9989407-476810106-346064.jpg?width=452&height=400&xhint=336&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:02', '2024-04-25 17:04:02'),
(449, 322, 'https://content.r9cdn.net/rimg/himg/d3/7f/71/expediav2-372380-fafe26-152333.jpg?width=452&height=400&xhint=480&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:02', '2024-04-25 17:04:02'),
(450, 323, 'https://content.r9cdn.net/rimg/himg/77/7a/a5/expediav2-261544-527181-462655.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:02', '2024-04-25 17:04:02'),
(451, 324, 'https://content.r9cdn.net/rimg/himg/03/e5/95/expediav2-373968-cbdc79-972124.jpg?width=452&height=400&xhint=540&yhint=268&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:02', '2024-04-25 17:04:02'),
(452, 325, 'https://content.r9cdn.net/rimg/himg/6b/10/25/booking-8996792-408555310-540927.jpg?width=452&height=400&xhint=520&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:02', '2024-04-25 17:04:02'),
(453, 326, 'https://content.r9cdn.net/rimg/himg/bb/5f/d2/expediav2-333859-0c8b03-781311.jpg?width=452&height=400&xhint=520&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:02', '2024-04-25 17:04:02'),
(454, 327, 'https://content.r9cdn.net/rimg/himg/8f/2f/c8/expediav2-7355852-fb6d05-652233.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:02', '2024-04-25 17:04:02'),
(455, 328, 'https://content.r9cdn.net/rimg/himg/5d/70/03/expediav2-4645539-fd2aec-306028.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:02', '2024-04-25 17:04:02'),
(456, 329, 'https://content.r9cdn.net/rimg/himg/39/61/5d/expediav2-6278131-dceb2c-815315.jpg?width=452&height=400&xhint=520&yhint=346&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:28', '2024-04-25 17:04:28'),
(457, 330, 'https://content.r9cdn.net/rimg/himg/7e/26/5e/expediav2-305045-927e41-736919.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:29', '2024-04-25 17:04:29'),
(458, 331, 'https://content.r9cdn.net/rimg/himg/a5/30/6f/booking-2330570-407624561-201970.jpg?width=452&height=400&xhint=453&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:29', '2024-04-25 17:04:29'),
(459, 332, 'https://content.r9cdn.net/rimg/himg/79/a0/a6/expediav2-8871021-93430b-527639.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:29', '2024-04-25 17:04:29'),
(460, 333, 'https://content.r9cdn.net/rimg/himg/15/59/04/expediav2-7594183-84376f-456817.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:29', '2024-04-25 17:04:29'),
(461, 334, 'https://content.r9cdn.net/rimg/himg/cc/dc/10/booking-2601977-359607361-496902.jpg?width=452&height=400&xhint=520&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:29', '2024-04-25 17:04:29'),
(462, 335, 'https://content.r9cdn.net/rimg/himg/0f/ed/3e/expediav2-320499-64251f-506991.jpg?width=452&height=400&xhint=500&yhint=351&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:29', '2024-04-25 17:04:29'),
(463, 336, 'https://content.r9cdn.net/rimg/himg/3a/25/b5/expediav2-466110-a61e2f-407074.jpg?width=452&height=400&xhint=520&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:29', '2024-04-25 17:04:29'),
(464, 337, 'https://content.r9cdn.net/rimg/himg/ea/87/c4/booking-7531683-359262680-034585.jpg?width=452&height=400&xhint=487&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:29', '2024-04-25 17:04:29'),
(465, 338, 'https://content.r9cdn.net/rimg/himg/57/be/30/ostrovok-2289323-eaf766-721042.jpg?width=452&height=400&xhint=250&yhint=195&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:29', '2024-04-25 17:04:29'),
(466, 339, 'https://content.r9cdn.net/rimg/himg/be/22/68/expediav2-2763224-547d98-067240.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:29', '2024-04-25 17:04:29'),
(467, 340, 'https://content.r9cdn.net/rimg/himg/29/17/e7/booking-10184351-490428519-765057.jpg?width=452&height=400&xhint=420&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:29', '2024-04-25 17:04:29'),
(468, 341, 'https://content.r9cdn.net/rimg/himg/70/97/69/booking-9989407-476810106-346064.jpg?width=452&height=400&xhint=336&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:29', '2024-04-25 17:04:29'),
(469, 342, 'https://content.r9cdn.net/rimg/himg/d3/7f/71/expediav2-372380-fafe26-152333.jpg?width=452&height=400&xhint=480&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:29', '2024-04-25 17:04:29'),
(470, 343, 'https://content.r9cdn.net/rimg/himg/77/7a/a5/expediav2-261544-527181-462655.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:29', '2024-04-25 17:04:29'),
(471, 344, 'https://content.r9cdn.net/rimg/himg/03/e5/95/expediav2-373968-cbdc79-972124.jpg?width=452&height=400&xhint=540&yhint=268&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:29', '2024-04-25 17:04:29'),
(472, 345, 'https://content.r9cdn.net/rimg/himg/6b/10/25/booking-8996792-408555310-540927.jpg?width=452&height=400&xhint=520&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:29', '2024-04-25 17:04:29'),
(473, 346, 'https://content.r9cdn.net/rimg/himg/bb/5f/d2/expediav2-333859-0c8b03-781311.jpg?width=452&height=400&xhint=520&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:29', '2024-04-25 17:04:29'),
(474, 347, 'https://content.r9cdn.net/rimg/himg/8f/2f/c8/expediav2-7355852-fb6d05-652233.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:29', '2024-04-25 17:04:29'),
(475, 348, 'https://content.r9cdn.net/rimg/himg/5d/70/03/expediav2-4645539-fd2aec-306028.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:29', '2024-04-25 17:04:29'),
(476, 349, 'https://content.r9cdn.net/rimg/himg/62/f4/06/booking-8599642-430320135-582256.jpg?width=452&height=400&xhint=453&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:29', '2024-04-25 17:04:29'),
(477, 350, 'https://content.r9cdn.net/rimg/himg/5d/b1/b6/booking-9737146-424942239-241231.jpg?width=452&height=400&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:29', '2024-04-25 17:04:29'),
(478, 351, 'https://content.r9cdn.net/rimg/himg/d6/fa/d9/expediav2-2277099-f540b6-532556.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:29', '2024-04-25 17:04:29'),
(479, 352, 'https://content.r9cdn.net/rimg/himg/f9/e6/14/booking-7752525-303075124-115573.jpg?width=452&height=400&xhint=352&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:29', '2024-04-25 17:04:29'),
(480, 353, 'https://content.r9cdn.net/rimg/himg/1a/f0/d6/booking-694396-320482666-388312.jpg?width=452&height=400&xhint=470&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:29', '2024-04-25 17:04:29'),
(481, 354, 'https://content.r9cdn.net/rimg/himg/85/b6/5d/expediav2-173964-476e89-883601.jpg?width=452&height=400&xhint=480&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:29', '2024-04-25 17:04:29'),
(482, 355, 'https://content.r9cdn.net/rimg/himg/39/61/5d/expediav2-6278131-dceb2c-815315.jpg?width=452&height=400&xhint=520&yhint=346&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:50', '2024-04-25 17:04:50'),
(483, 356, 'https://content.r9cdn.net/rimg/himg/7e/26/5e/expediav2-305045-927e41-736919.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:50', '2024-04-25 17:04:50'),
(484, 357, 'https://content.r9cdn.net/rimg/himg/a5/30/6f/booking-2330570-407624561-201970.jpg?width=452&height=400&xhint=453&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:50', '2024-04-25 17:04:50'),
(485, 358, 'https://content.r9cdn.net/rimg/himg/79/a0/a6/expediav2-8871021-93430b-527639.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:50', '2024-04-25 17:04:50'),
(486, 359, 'https://content.r9cdn.net/rimg/himg/15/59/04/expediav2-7594183-84376f-456817.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:50', '2024-04-25 17:04:50'),
(487, 360, 'https://content.r9cdn.net/rimg/himg/cc/dc/10/booking-2601977-359607361-496902.jpg?width=452&height=400&xhint=520&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:50', '2024-04-25 17:04:50'),
(488, 361, 'https://content.r9cdn.net/rimg/himg/0f/ed/3e/expediav2-320499-64251f-506991.jpg?width=452&height=400&xhint=500&yhint=351&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:50', '2024-04-25 17:04:50'),
(489, 362, 'https://content.r9cdn.net/rimg/himg/3a/25/b5/expediav2-466110-a61e2f-407074.jpg?width=452&height=400&xhint=520&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:50', '2024-04-25 17:04:50'),
(490, 363, 'https://content.r9cdn.net/rimg/himg/ea/87/c4/booking-7531683-359262680-034585.jpg?width=452&height=400&xhint=487&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:50', '2024-04-25 17:04:50'),
(491, 364, 'https://content.r9cdn.net/rimg/himg/57/be/30/ostrovok-2289323-eaf766-721042.jpg?width=452&height=400&xhint=250&yhint=195&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:50', '2024-04-25 17:04:50'),
(492, 365, 'https://content.r9cdn.net/rimg/himg/be/22/68/expediav2-2763224-547d98-067240.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:50', '2024-04-25 17:04:50'),
(493, 366, 'https://content.r9cdn.net/rimg/himg/29/17/e7/booking-10184351-490428519-765057.jpg?width=452&height=400&xhint=420&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:50', '2024-04-25 17:04:50'),
(494, 367, 'https://content.r9cdn.net/rimg/himg/70/97/69/booking-9989407-476810106-346064.jpg?width=452&height=400&xhint=336&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:50', '2024-04-25 17:04:50'),
(495, 368, 'https://content.r9cdn.net/rimg/himg/d3/7f/71/expediav2-372380-fafe26-152333.jpg?width=452&height=400&xhint=480&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:50', '2024-04-25 17:04:50'),
(496, 369, 'https://content.r9cdn.net/rimg/himg/77/7a/a5/expediav2-261544-527181-462655.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:50', '2024-04-25 17:04:50'),
(497, 370, 'https://content.r9cdn.net/rimg/himg/03/e5/95/expediav2-373968-cbdc79-972124.jpg?width=452&height=400&xhint=540&yhint=268&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:50', '2024-04-25 17:04:50'),
(498, 371, 'https://content.r9cdn.net/rimg/himg/6b/10/25/booking-8996792-408555310-540927.jpg?width=452&height=400&xhint=520&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:50', '2024-04-25 17:04:50'),
(499, 372, 'https://content.r9cdn.net/rimg/himg/bb/5f/d2/expediav2-333859-0c8b03-781311.jpg?width=452&height=400&xhint=520&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:50', '2024-04-25 17:04:50'),
(500, 373, 'https://content.r9cdn.net/rimg/himg/8f/2f/c8/expediav2-7355852-fb6d05-652233.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:50', '2024-04-25 17:04:50'),
(501, 374, 'https://content.r9cdn.net/rimg/himg/5d/70/03/expediav2-4645539-fd2aec-306028.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:50', '2024-04-25 17:04:50'),
(502, 375, 'https://content.r9cdn.net/rimg/himg/62/f4/06/booking-8599642-430320135-582256.jpg?width=452&height=400&xhint=453&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:50', '2024-04-25 17:04:50'),
(503, 376, 'https://content.r9cdn.net/rimg/himg/5d/b1/b6/booking-9737146-424942239-241231.jpg?width=452&height=400&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:50', '2024-04-25 17:04:50'),
(504, 377, 'https://content.r9cdn.net/rimg/himg/d6/fa/d9/expediav2-2277099-f540b6-532556.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:50', '2024-04-25 17:04:50'),
(505, 378, 'https://content.r9cdn.net/rimg/himg/f9/e6/14/booking-7752525-303075124-115573.jpg?width=452&height=400&xhint=352&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:50', '2024-04-25 17:04:50'),
(506, 379, 'https://content.r9cdn.net/rimg/himg/1a/f0/d6/booking-694396-320482666-388312.jpg?width=452&height=400&xhint=470&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:50', '2024-04-25 17:04:50'),
(507, 380, 'https://content.r9cdn.net/rimg/himg/85/b6/5d/expediav2-173964-476e89-883601.jpg?width=452&height=400&xhint=480&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:50', '2024-04-25 17:04:50'),
(508, 381, 'https://content.r9cdn.net/rimg/himg/4d/fc/82/booking-409359-308952770-378433.jpg?width=452&height=400&xhint=420&yhint=230&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:50', '2024-04-25 17:04:50'),
(509, 382, 'https://content.r9cdn.net/rimg/himg/5f/35/40/expediav2-757268-1e9355-328949.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:50', '2024-04-25 17:04:50'),
(510, 383, 'https://content.r9cdn.net/rimg/kimg/dc/40/21c2a1d703aeed38.jpg?width=452&height=400&xhint=228&yhint=160&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:50', '2024-04-25 17:04:50'),
(511, 384, 'https://content.r9cdn.net/rimg/himg/28/e7/10/sembo-557579-00e05d-120056.jpg?width=452&height=400&xhint=540&yhint=333&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:50', '2024-04-25 17:04:50'),
(512, 385, 'https://content.r9cdn.net/rimg/himg/ed/94/22/ice-200902-104880650-400851.jpg?width=452&height=400&xhint=1439&yhint=959&crop=true&watermarkheight=28&watermarkpadding=10', '2024-04-25 17:04:50', '2024-04-25 17:04:50');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `place_id` bigint(20) UNSIGNED DEFAULT NULL,
  `hotel_id` bigint(20) UNSIGNED DEFAULT NULL,
  `data` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `place_id`, `hotel_id`, `data`, `created_at`, `updated_at`) VALUES
(21, 12, NULL, 'https://www.cairotoptours.com/storage/256/conversions/454161fbaa2b9c2dce809b54cdc13acf-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(22, 12, NULL, 'https://www.cairotoptours.com/storage/255/conversions/e0bd8b2f0e4d4f3a0db979ed0b2c0667-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(23, 13, NULL, 'https://www.cairotoptours.com/storage/265/conversions/601838218d16f87bc6eb9a16fa7ce4f7-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(24, 13, NULL, 'https://www.cairotoptours.com/storage/264/conversions/de7aa84b7aec5abeeb1b3d83e17a496d-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(25, 14, NULL, 'https://www.cairotoptours.com/storage/273/conversions/b05838fc2535ae2381ef9d481e20f637-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(26, 14, NULL, 'https://www.cairotoptours.com/storage/272/conversions/8e84f03ff0f5accfcddc36b2543314f5-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(27, 15, NULL, 'https://www.cairotoptours.com/storage/283/conversions/447c28f1f3bf4cc92965acdbb5a7f07f-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(28, 15, NULL, 'https://www.cairotoptours.com/storage/282/conversions/6b49b4a3ccb34a30af0e476d733fc653-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(29, 16, NULL, 'https://www.cairotoptours.com/storage/291/conversions/4f0bfd8ab0076ce75033727550b163fe-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(30, 16, NULL, 'https://www.cairotoptours.com/storage/290/conversions/85601ce15da8cb1b4b424697a83fca5f-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(31, 17, NULL, 'https://www.cairotoptours.com/storage/766/conversions/13a2db126c69067375274ebd870ea5b3-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(32, 17, NULL, 'https://www.cairotoptours.com/storage/765/conversions/6b27755e6118a94c3d9336b6524ba4c0-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(33, 18, NULL, 'https://www.cairotoptours.com/storage/804/conversions/1bdcf40475caa5a5aaca17560fe4fea1-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(34, 18, NULL, 'https://www.cairotoptours.com/storage/803/conversions/f0f39ab4a4fa9f8b6ff2e384b6b30b50-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(35, 19, NULL, 'https://www.cairotoptours.com/storage/911/conversions/c77832003c8859319743cdb014909c73-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(36, 19, NULL, 'https://www.cairotoptours.com/storage/910/conversions/ff73ca242ed797026b8138cd53e9c30d-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(37, 20, NULL, 'https://www.cairotoptours.com/storage/920/conversions/cb1aae59cf0d415fabab82e1da9b2548-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(38, 20, NULL, 'https://www.cairotoptours.com/storage/919/conversions/1ee5da68b8e479452001f250e4966a17-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(39, 21, NULL, 'https://www.cairotoptours.com/storage/1378/conversions/4cf5585350df0897b0a4f49f996ad3fd-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(40, 21, NULL, 'https://www.cairotoptours.com/storage/1377/conversions/7bfc0dd25e42475ebb979877c095a7a9-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(41, 22, NULL, 'https://www.cairotoptours.com/storage/1756/conversions/492c7f4d6ba3d7fc4eb707f4a68db9cf-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(42, 22, NULL, 'https://www.cairotoptours.com/storage/1755/conversions/6fb32d0df9e4fe914992d2f1aa195fe1-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(43, 23, NULL, 'https://www.cairotoptours.com/storage/2421/conversions/b04baede280757ce08d64e256017d524-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(44, 23, NULL, 'https://www.cairotoptours.com/storage/2420/conversions/a5496f1479bd8d892c611614b66aa2b6-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(45, 24, NULL, 'https://www.cairotoptours.com/storage/2424/conversions/ccae160ea1be212c1dafebc343d2330f-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(46, 24, NULL, 'https://www.cairotoptours.com/storage/2423/conversions/bc742dc781c9cce0b4909ebb710142fe-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(47, 25, NULL, 'https://www.cairotoptours.com/storage/2436/conversions/fdbd612adcfbfdf43492e7ec7d14f18a-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(48, 25, NULL, 'https://www.cairotoptours.com/storage/2435/conversions/a1d7395d4fac2e1a037bae344a72ab7d-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(49, 26, NULL, 'https://www.cairotoptours.com/storage/2438/conversions/f050c8b61fadddbebf260d9f866f3de0-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(50, 26, NULL, 'https://www.cairotoptours.com/storage/2437/conversions/a523d8bfb84ce45331cb7edfea1834e0-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(51, 27, NULL, 'https://www.cairotoptours.com/storage/2440/conversions/45d9b775ce7431e64380a2a5c2b7b7c7-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(52, 27, NULL, 'https://www.cairotoptours.com/storage/2439/conversions/1571154a7a4412e9228645f9d40edcc9-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(53, 28, NULL, 'https://www.cairotoptours.com/storage/2649/conversions/48a797c31b2d62d30ca9bb271a3df675-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(54, 28, NULL, 'https://www.cairotoptours.com/storage/2648/conversions/1aaf2bac1feff94c1345cbb6ae3ce291-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(55, 29, NULL, 'https://www.cairotoptours.com/storage/2663/conversions/82577b6786cce7994bb3738a8320bb93-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(56, 29, NULL, 'https://www.cairotoptours.com/storage/2662/conversions/84fd0f45de15ae444c2e9e53756e6121-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(57, 30, NULL, 'https://www.cairotoptours.com/storage/2665/conversions/35141449a7fda75f05be46ac1a988381-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(58, 30, NULL, 'https://www.cairotoptours.com/storage/2664/conversions/73039708efcf0f8122f11123ca1d7ffb-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(59, 31, NULL, 'https://www.cairotoptours.com/storage/2722/conversions/89279e247c1c4a86d8975ebfb479c46a-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(60, 31, NULL, 'https://www.cairotoptours.com/storage/2721/conversions/932131bf7ec6d811e36bfe6aff134d78-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(61, 32, NULL, 'https://www.cairotoptours.com/storage/2757/conversions/dca19d6a25504acd5606a4dc9eae4ca5-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(62, 32, NULL, 'https://www.cairotoptours.com/storage/2756/conversions/007b57a9f28eaaf361f86a7e93a8fe4c-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(63, 33, NULL, 'https://www.cairotoptours.com/storage/2896/conversions/28e5d387923cfec38fc08f18aa558cb7-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(64, 33, NULL, 'https://www.cairotoptours.com/storage/2895/conversions/2f31600c327cf3facff6fab1d9a8b1f0-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(65, 34, NULL, 'https://www.cairotoptours.com/storage/2901/conversions/c9f863d2ade17a2beb8004dc485eb516-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(66, 34, NULL, 'https://www.cairotoptours.com/storage/2900/conversions/9a616c27c0014c3d3be12576e3f865fc-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(67, 35, NULL, 'https://www.cairotoptours.com/storage/2903/conversions/2a75da1b95d125aaaf4f06fd4fc41767-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(68, 35, NULL, 'https://www.cairotoptours.com/storage/2902/conversions/21f159f7d8398e592c73dcfd148895ee-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(69, 36, NULL, 'https://www.cairotoptours.com/storage/2905/conversions/8c4d40d5ea25a06ab5d16c138c8dc2fa-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(70, 36, NULL, 'https://www.cairotoptours.com/storage/2904/conversions/e345a519d1625aa63f89a0191e147aa1-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(71, 37, NULL, 'https://www.cairotoptours.com/storage/2907/conversions/38962b85c0f9efae996009a5b939482f-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(72, 37, NULL, 'https://www.cairotoptours.com/storage/2906/conversions/458fa8c7d6d35af1cdb23ad64491ea10-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(73, 38, NULL, 'https://www.cairotoptours.com/storage/2912/conversions/bac74352e859f7b98490446f9ddfd8ae-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(74, 38, NULL, 'https://www.cairotoptours.com/storage/2911/conversions/5858383b27d2187283cfa5157b99ef2c-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(75, 39, NULL, 'https://www.cairotoptours.com/storage/2914/conversions/34ef0a2f15e137824035627055e78e2c-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(76, 39, NULL, 'https://www.cairotoptours.com/storage/2913/conversions/2c189c60cfba41e22059ce92a114be8e-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(77, 40, NULL, 'https://www.cairotoptours.com/storage/2916/conversions/971716ff42c2ca067872586d19ae1072-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(78, 40, NULL, 'https://www.cairotoptours.com/storage/2915/conversions/c3ba3a738d7eeab6de9d9cca1027d007-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(79, 41, NULL, 'https://www.cairotoptours.com/storage/2919/conversions/13342508b8c001eab08f0bb5951782ff-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(80, 41, NULL, 'https://www.cairotoptours.com/storage/2918/conversions/2b25f8bd3d8430c356fa2cef0c4569dd-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(81, 42, NULL, 'https://www.cairotoptours.com/storage/2922/conversions/cfc7f659b92bcd6b56a4707f9decbd60-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(82, 42, NULL, 'https://www.cairotoptours.com/storage/2921/conversions/b78677004d442d90db5528474b403323-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(83, 43, NULL, 'https://www.cairotoptours.com/storage/2925/conversions/d386016f349296724180dac8df8eaf8c-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(84, 43, NULL, 'https://www.cairotoptours.com/storage/2924/conversions/bc0427629f604ea360bdea3bc3aa1885-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(85, 44, NULL, 'https://www.cairotoptours.com/storage/3200/conversions/6bcd17d2b8e71bb5d0d026e5b41fef67-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(86, 44, NULL, 'https://www.cairotoptours.com/storage/3199/conversions/9d99df572076bb24f1b65418ac8028a8-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(87, 45, NULL, 'https://www.cairotoptours.com/storage/3580/conversions/2f9f79a4dbd98c3a0bccb78883c55419-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(88, 45, NULL, 'https://www.cairotoptours.com/storage/3579/conversions/0b4e2fd25446cb53c6be155a214995e9-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(89, 46, NULL, 'https://www.cairotoptours.com/storage/3613/conversions/100867a79db0f7948f31da1c28e3388c-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(90, 46, NULL, 'https://www.cairotoptours.com/storage/3612/conversions/d66ef864156b306f22ab410cdbfeebf7-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(91, 47, NULL, 'https://www.cairotoptours.com/storage/3635/conversions/e6761aa476fe20969d48780e903caa96-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(92, 47, NULL, 'https://www.cairotoptours.com/storage/3634/conversions/f7f5907a98d8851111c3da1bef7a8c17-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(93, 48, NULL, 'https://www.cairotoptours.com/storage/3638/conversions/9fcbd9609aa0fa9f3b21472cee7e5970-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(94, 48, NULL, 'https://www.cairotoptours.com/storage/3637/conversions/91a11ded3352233915d51a45a4860c15-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(95, 49, NULL, 'https://www.cairotoptours.com/storage/3662/conversions/9edaff5eea52d603c9da590d2628d10c-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(96, 49, NULL, 'https://www.cairotoptours.com/storage/3661/conversions/5c1545f7585baf58a7693575e1bfffc1-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(97, 50, NULL, 'https://www.cairotoptours.com/storage/3707/conversions/b9e8e9d47448b993565884752be4df91-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(98, 50, NULL, 'https://www.cairotoptours.com/storage/3706/conversions/4bb67b0025b4cc0190a13f2ae1756068-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(99, 51, NULL, 'https://www.cairotoptours.com/storage/3710/conversions/b4877d19363184e51322a21daaf9a151-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(100, 51, NULL, 'https://www.cairotoptours.com/storage/3709/conversions/f9b28a3a4f19333ff3a9abd2127e82bc-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(101, 52, NULL, 'https://www.cairotoptours.com/storage/3814/conversions/7f1af5245071f1ea222ce3d00f4c121d-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(102, 52, NULL, 'https://www.cairotoptours.com/storage/3813/conversions/ca421098cc7b20646af76fbc04d6fb92-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(103, 53, NULL, 'https://www.cairotoptours.com/storage/3861/conversions/f068c0e325ddbc7a4a603dec6f033222-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(104, 53, NULL, 'https://www.cairotoptours.com/storage/3860/conversions/3e055cb1679f839a46451261a60505dd-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(105, 54, NULL, 'https://www.cairotoptours.com/storage/3866/conversions/db68f907a671015c79c63596c8071e1c-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(106, 54, NULL, 'https://www.cairotoptours.com/storage/3865/conversions/993564ed58dfa1fcf8cff4ba5d23350a-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(107, 55, NULL, 'https://www.cairotoptours.com/storage/3922/conversions/f61b41a0951005e125917a5a560f9810-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(108, 55, NULL, 'https://www.cairotoptours.com/storage/3921/conversions/51422c48874a8cffa240bb13d147c93b-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(109, 56, NULL, 'https://www.cairotoptours.com/storage/3968/conversions/627e5ac4243246f0681d07ae3d62753e-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(110, 56, NULL, 'https://www.cairotoptours.com/storage/3967/conversions/cbd9ba4b7e699dd6f374a06bd80c9fc8-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(111, 57, NULL, 'https://www.cairotoptours.com/storage/3998/conversions/367a20024289ee9fc6e5b5042e4ed795-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(112, 57, NULL, 'https://www.cairotoptours.com/storage/3997/conversions/996ea66020e8aef611892a0436178759-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(113, 58, NULL, 'https://www.cairotoptours.com/storage/4024/conversions/0003046c23dda57dd489b7743ec1e9ed-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(114, 58, NULL, 'https://www.cairotoptours.com/storage/4023/conversions/4f7f37307f8cdc921267624d74ecd672-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(115, 59, NULL, 'https://www.cairotoptours.com/storage/4029/conversions/b5fe5cbd30a70bc23bc044390b5acb2e-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(116, 59, NULL, 'https://www.cairotoptours.com/storage/4028/conversions/2e147197bec1a2c72e87b1650e1930ef-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(117, 60, NULL, 'https://www.cairotoptours.com/storage/4068/conversions/c0e5f2159783625d7e94876f23b6bf95-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(118, 60, NULL, 'https://www.cairotoptours.com/storage/4067/conversions/3dfdd6aca3d80678ec7c031d702687a1-webp.webp', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(119, 61, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/attr_1276_20220729125400.jpg', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(120, 62, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/41520973941da3df20e80k_20220729125910.jpg', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(121, 63, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/800px-Courtyard_of_Al-Azhar_Mosque_Cairo_Egypt_2019_6_20220729130400.jpg', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(122, 64, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/22505530294576004943bb_20220729131520.jpeg', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(123, 65, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/SaqqaraPyramidandTempleofZoserDjoser9794271904_20221007132854.jpg', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(124, 66, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/shutterstock_1087783190_20190716092421.jpg', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(125, 67, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/5208751841238e6ca4198k_20220729150801.jpg', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(126, 68, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/RoyalPrincessNilecruiseshipR04_20221007125735.jpg', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(127, 69, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/5208853062675447589b9b_20220729152512.jpeg', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(128, 70, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/dest_wiki_2606_20220729145912.jpg', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(129, 71, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/14819978313_aae9be444a_b_20190116170517.jpg', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(130, 72, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/CairoOperaHouseatevening05_20221007115027.jpg', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(131, 73, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/1176px-CairoMosqueEgyptIslamArchitecture_20221007110057.jpg', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(132, 74, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/14613624977d06d33f8b9b_20220729151427.jpeg', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(133, 75, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/1200px-Al-Muizzli-DinAllahal-FatimiStreet_20221007105422.jpg', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(134, 76, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/CopticMuseum_20181029123745_20181029124038.jpg', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(135, 77, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/4252890062_e9c6f54d96_z_20190326123549_20190326123612.jpg', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(136, 78, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/10601680196257585171b_20221007130412.jpg', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(137, 79, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/CairoMuseum_20181029122501_20181029122555.JPG', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(138, 80, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/shutterstock_1401532685_20190716092419.jpg', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(139, 81, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/CairoTalaatHarbToEast_20221007132343.jpg', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(140, 82, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/42911829350ebd36b36a9b_20221007131829.jpg', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(141, 83, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/2275730332f799d1eda2b_20221007113207.jpg', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(142, 84, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/TheexterioroftheBaronEmpainpalace_20221007125036.jpg', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(143, 85, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/AlAzharPark_20181029135919_20181029135950.jpg', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(144, 86, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/InsidePharaohTutankhamunstomb18thdynasty_20221007111245.jpg', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(145, 87, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/15816722102_33dbe27a11_k_20190826171118.jpg', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(146, 88, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/Al-HakimMosque-Cairo_20221007112345.jpg', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(147, 89, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/nc4_20190204222317.jpg', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(148, 90, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/TentMaker_20181029131838_20181029131914.jpg', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(149, 91, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/2628317354_dfa94266b4_b_20190826164509.jpg', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(150, 92, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/MosqueofQaitbey_20181029144206_20181029144251.jpg', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(151, 93, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/800px-By_ovedc_-_Ben_Ezra_Synagogue_-_02_20220729154339.jpg', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(152, 94, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/800px-Cairo_porte_settentrionali_01_20220729154558.JPG', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(153, 95, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/5602087028_7d6ca5e661_b_20190826161430.jpg', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(154, 96, NULL, 'https://www.holidify.com/images/foreign/compressed/attr_1286.jpg', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(155, 97, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/Great_Sphinx_of_Giza_-_20080716a_20190326131157_20190326131231.jpg', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(156, 98, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/1024px-Egypt.Giza.Sphinx.02_20190326124151_20190326124319.jpg', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(157, 99, NULL, 'https://holidify.com/images/todo-coming-soon.png', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(158, 100, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/The_Great_Pyramid_of_Giza_Pyramid_of_Cheops_or_Khufu_14823042753_20190326130141_20190326130211.jpg', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(159, 101, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/800px-Pyramid_of_Menkaure_in_Giza_May_2015_20190326130910_20190326130954.JPG', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(160, 103, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/Philae_temple_at_night_20221227172734.jpg', '2024-03-30 11:22:29', '2024-03-30 11:22:29'),
(161, 104, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/800px-Aswan_Elephantine_felucca_Egypt_Oct_2004_20230103155342.jpg', '2024-03-30 11:22:29', '2024-03-30 11:22:29'),
(162, 105, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/800px-Aswan_-_Unfinished_obelisk_-_2007_20230103155812.jpg', '2024-03-30 11:22:29', '2024-03-30 11:22:29'),
(163, 106, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/preview16_20230103160404.jpeg', '2024-03-30 11:22:29', '2024-03-30 11:22:29'),
(164, 107, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/Nubia_Museum_1161D_20221226191652.jpg', '2024-03-30 11:22:29', '2024-03-30 11:22:29'),
(165, 108, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/43867058990c318288d55o_20230103155556.jpg', '2024-03-30 11:22:29', '2024-03-30 11:22:29'),
(166, 109, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/31353584718b1f2934ebfb_20230103161011.jpeg', '2024-03-30 11:22:29', '2024-03-30 11:22:29'),
(167, 110, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/795px-Flickr_-_archer10_Dennis_-_Egypt-5B-040_-_Komombo_Temple_20230103161209.jpg', '2024-03-30 11:22:29', '2024-03-30 11:22:29'),
(168, 111, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/Aswan_Botanical_Garden_001_20221226190631.jpg', '2024-03-30 11:22:29', '2024-03-30 11:22:29'),
(169, 112, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/800px-Aswan_High_Dam_panorama_looking_downstream_20230103161934.jpg', '2024-03-30 11:22:29', '2024-03-30 11:22:29'),
(170, 113, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/Old_Monastery_of_St._Simeon_west_Aswan_20221227174050.jpg', '2024-03-30 11:22:29', '2024-03-30 11:22:29'),
(171, 114, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/Templo_de_kalabsha-lago_nasser-2007_20221227175130.JPG', '2024-03-30 11:22:29', '2024-03-30 11:22:29'),
(172, 115, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/Aswan_Aga_Khan_Mausoleum_R04_20221228111757.jpg', '2024-03-30 11:22:29', '2024-03-30 11:22:29'),
(173, 116, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/800px-Souq_Aswan_1_20230103162836.jpg', '2024-03-30 11:22:29', '2024-03-30 11:22:29'),
(174, 117, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/GebalSimaan_20221228125459.jpg', '2024-03-30 11:22:29', '2024-03-30 11:22:29'),
(175, 118, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/Flickr_-_archer10_28Dennis29_-_Egypt-9A-063_-_Wadi_el-Sebua_20221228114000.jpg', '2024-03-30 11:22:29', '2024-03-30 11:22:29'),
(176, 119, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/Temple_of_Edfu2C_Statue_of_Horus_22C_Egypt_20221228121554.jpg', '2024-03-30 11:22:29', '2024-03-30 11:22:29'),
(177, 120, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/Abu_Simbel2C_Egypt_20221228111429.jpg', '2024-03-30 11:22:29', '2024-03-30 11:22:29'),
(248, 193, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/1024px-Alig_walk_way_hurghada_egypt_629_20221201163026.jpg', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(249, 194, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/40174841853a842a3dda3k_20221206171647.jpg', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(250, 195, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/egyptgiannisd_20221201161735.jpeg', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(251, 196, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/2943349154177105937140021948334139401430637n_20221201163855.jpeg', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(252, 197, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/6172509925e03504e835o_20221020202000.jpg', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(253, 198, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/800px-Morning_at_Hurghada_Marina_20221124174418.JPG', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(254, 199, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/scuba-diver-selfie-sea-swimming_20200217110129.jpg', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(255, 200, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/453542042841ac468e255b_20221201163336.jpeg', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(256, 201, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/800px-EG_Hurghada_Sindbad_submarine_20221201162418.jpg', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(257, 202, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/721511597601255777464484122895835081998336n_20221201162715.jpeg', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(258, 203, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/71_20221101195117.jpg', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(259, 204, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/6bd99dd289d42ae54167f29d1268dac9_20221206171022.jpeg', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(260, 205, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/8808234528864737747315876616798875023835136o_20221201164714.jpeg', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(261, 206, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/8e798a545addd29e2d319451c4d13596_20221101195958.jpg', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(262, 207, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/45846178055429881a52bo_20221020201807.jpg', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(263, 208, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/fd0c2013e92bd566137018b0fe531fdc_20221101200530.jpg', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(264, 209, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/473488966312192a26d12k_20221201164229.jpg', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(265, 210, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/DJI0607_20221206170329.jpeg', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(266, 211, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/resort-makadi-sunwing-water-world-vacation-45980394_20221101194611.jpg', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(267, 212, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/6bd147aeced516583e24d0a9b0f027df_20221101192724.jpg', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(268, 213, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/AlMinaMosque_20230101221316.jpg', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(269, 214, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/123228871006371392772470174507957052262050o_20221201164504.jpeg', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(270, 215, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/29335406811130430159500181354066459551293094n_20221201164959.jpeg', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(271, 216, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/LUXOR_20221222122223.jpg', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(272, 217, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/D8A8D988D8A7D8A8D8A7D8AA_D985D8ADD985D98AD987_D8B1D8A7D8B3_D985D8ADD985D8AF_20221021144847.png', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(273, 218, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/Thistlegorm_train_parts_minus_red_edit_20221023113708.jpg', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(274, 219, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/SharmelSheikhNaamaBay-panoramio_20221021234459.jpg', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(275, 220, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/460235965079370e78afo_20221023114148.jpg', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(276, 221, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/Saint_Catherine_Sinai_20221023114519.jpg', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(277, 222, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/Hiking_on_Mount_Sinai_20221023121707.jpg', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(278, 223, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/Dahab_Egypt_The_Blue_Hole_PlongC3A9e_sous_marine_Diving_Picture_Image_Photo_281285999077329_20221023115207.jpg', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(279, 224, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/Sharm_El_Sheikh_diving_20221023224250.jpg', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(280, 225, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/DubaiSafari_20190716145822.jpg', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(281, 226, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/DAHAB_20221222122754.jpg', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(282, 227, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/Tiran_R01_20221023122032.jpg', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(283, 228, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/Images_from_Sharm_El_Sheikh_No_7._20221021233859.JPG', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(284, 229, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/SharmElSheikh.NaamaBay.WadiToshka_20230101222353.jpg', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(285, 230, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/soho4_20221124181957.jpeg', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(286, 231, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/800px-Al-Mustafa_Mosque_in_Sharm_El-Sheikh1_20221124183020.jpg', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(287, 232, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/18655668138456557821976317640250612239663386n_20221124183425.jpeg', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(288, 233, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/800px-Al_Sahaba_Moschee__20221124185004.jpg', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(289, 234, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/Giza_Plateau_-_Great_Sphinx_with_Pyramid_of_Khafre_in_background_20221023191125.JPG', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(290, 235, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/23bbd643e4091c5c30a4ca61e0b513db--the-canyons-egypt_20221230151953.jpeg', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(291, 236, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/6846502382e71ac691e4o_20230216230914.jpg', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(292, 237, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/Beach_Gazebo_at_Ras_Um_Sid_Bay_20230216230537.jpg', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(293, 238, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/Dahab_Blue_Hole_20221226142153.jpg', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(294, 239, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/34064339063_384dbe67f7_b_20190630231946.jpg', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(295, 240, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/Hiking_on_Mount_Sinai_20221023121707.jpg', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(296, 241, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/Saint_Catherine_Sinai_20221023114519.jpg', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(297, 242, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/23bbd643e4091c5c30a4ca61e0b513db--the-canyons-egypt_20221230151953.jpeg', '2024-03-30 11:26:56', '2024-03-30 11:26:56'),
(298, 243, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/Dahab_atmosphere_20221226172803.jpg', '2024-03-30 11:26:56', '2024-03-30 11:26:56'),
(299, 244, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/landscape-sinai-desert-with-rocks-jeep-safari213438-1377_20221230152700.jpeg', '2024-03-30 11:26:56', '2024-03-30 11:26:56'),
(300, 245, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/Blue_Lagoon2C_Dahab2C_Egypt_2013-04-23_23-07_20221226171246.jpg', '2024-03-30 11:26:56', '2024-03-30 11:26:56'),
(301, 246, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/2492741653894905094965528060568480828216589n_20221230153317.jpeg', '2024-03-30 11:26:56', '2024-03-30 11:26:56'),
(302, 247, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/24592229715746501895467237989811718341661380n_20221230153626.jpeg', '2024-03-30 11:26:56', '2024-03-30 11:26:56'),
(303, 248, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/Ras_Abu_Galum_2020-03-20-14_20221227165041.jpg', '2024-03-30 11:26:56', '2024-03-30 11:26:56'),
(304, 249, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/dest_pixa_4317_20221230154409.jpg', '2024-03-30 11:26:56', '2024-03-30 11:26:56'),
(305, 250, NULL, 'https://www.holidify.com/images/cmsuploads/compressed/The_Monastery2C_Petra2C_Jordan8_20221226171817.jpg', '2024-03-30 11:26:56', '2024-03-30 11:26:56');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_02_27_125645_create_contacts_table', 1),
(6, '2024_02_27_130245_create_trips_table', 1),
(7, '2024_02_27_164724_create_states_table', 1),
(8, '2024_03_01_182601_create_places_table', 1),
(9, '2024_03_01_182620_create_hotels_table', 1),
(10, '2024_03_01_190059_create_images_table', 1),
(11, '2024_03_02_223811_create_reviews_table', 1),
(12, '2024_03_04_185225_create_favorites_table', 1),
(14, '2024_03_30_142603_add_image_to_users', 2),
(15, '2024_04_19_230958_create_cache_table', 3),
(16, '2024_04_25_175112_create_hotel_images_table', 3),
(18, '2024_04_25_182600_add_rate_to_hotels', 4),
(19, '2019_05_11_000000_create_otps_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `otps`
--

CREATE TABLE `otps` (
  `id` int(10) UNSIGNED NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `validity` int(11) NOT NULL,
  `valid` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `otps`
--

INSERT INTO `otps` (`id`, `identifier`, `token`, `validity`, `valid`, `created_at`, `updated_at`) VALUES
(16, 'ebrahema232@gmail.com', '577649', 60, 0, '2024-05-01 18:20:53', '2024-05-01 18:21:28'),
(19, 'axxgha.zy01@gmail.com', '321882', 60, 0, '2024-05-02 11:08:29', '2024-05-02 11:11:32'),
(40, 'ebrahema232@gmail.com', '877943', 60, 1, '2024-05-02 14:03:07', '2024-05-02 14:03:07'),
(55, 'omar@gmail.com', '455992', 60, 1, '2024-05-03 12:11:26', '2024-05-03 12:11:26'),
(96, 'axxgha.zy01@gmail.com', '826875', 60, 0, '2024-05-03 15:45:22', '2024-05-03 17:17:02'),
(113, 'axxgha.zy01@gmail.com', '622274', 60, 0, '2024-05-03 17:18:13', '2024-05-04 12:37:08'),
(116, 'omarzalata2002@gmail.com', '937741', 60, 0, '2024-05-03 17:27:32', '2024-05-03 17:29:24'),
(120, 'Omarzalata@gmail.com', '745162', 60, 1, '2024-05-04 12:35:38', '2024-05-04 12:35:38'),
(122, 'omarzalata2002@gmail.com', '074511', 60, 1, '2024-05-04 12:45:43', '2024-05-04 12:45:43');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('Ahhm@gmsail.comsaaasa', '$2y$12$siPSmoo6x81x1nBikzW3hePTXiN2B59WLJB3bvj.vq/Dd5iU.h6n6', '2024-04-29 11:21:47'),
('axxgha.zy01@gmail.com', '$2y$12$NCmVdYIvGni9qXycxtd8I.Si45TsH08TOu.HmeQ8FXB6UMTQyQQU2', '2024-05-01 15:35:25');

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'Api Token ofAhmedghazy', '18a20c432ae017e8c3e49d6a9f309bd1981e0d630049050a99b9dd9ace6e3f4a', '[\"*\"]', '2024-03-30 11:27:42', NULL, '2024-03-28 10:22:48', '2024-03-30 11:27:42'),
(2, 'App\\Models\\User', 2, 'Api Token ofAhmedghazy', 'a414a963e51ca9c5fd87801499a6057876d3cdb5fb1022abdcfde70ca5bf5517', '[\"*\"]', NULL, NULL, '2024-03-30 11:47:00', '2024-03-30 11:47:00'),
(3, 'App\\Models\\User', 3, 'Api Token ofAhmedghazy', 'e3f28c8e1aa9ee792fcacf27bad5dfea006b663790e4153e5366ef574a716785', '[\"*\"]', NULL, NULL, '2024-03-30 12:02:53', '2024-03-30 12:02:53'),
(4, 'App\\Models\\User', 4, 'Api Token ofAhmedghazy', 'bf43712ceacca3b6c4ae0599eb1a2fc29ce31f05ccf62ab5d432cdc6690eda02', '[\"*\"]', NULL, NULL, '2024-03-30 12:03:32', '2024-03-30 12:03:32'),
(5, 'App\\Models\\User', 5, 'Api Token ofAhmedghazy', '110643cb38545fd213d6c6d4107720da9ec2abd3e6692e932e74e3e713aab473', '[\"*\"]', NULL, NULL, '2024-03-30 12:04:14', '2024-03-30 12:04:14'),
(6, 'App\\Models\\User', 6, 'Api Token ofAhmedghazy', '0ecec0abaaf21466499bace82c1ca93505cda5d1e59bf38d1979c0589143fadd', '[\"*\"]', NULL, NULL, '2024-03-30 12:06:15', '2024-03-30 12:06:15'),
(7, 'App\\Models\\User', 7, 'Api Token ofAhmedghazy', '4ffc5711aff23e16d70987ccb0766b5382e586a5a044c6166900a28c94898ca9', '[\"*\"]', NULL, NULL, '2024-03-30 12:16:55', '2024-03-30 12:16:55'),
(8, 'App\\Models\\User', 8, 'Api Token ofAhmedghazy', 'e9d96fac0e20f70897fda6d999eefe441bdc8424cea8152ed2b3cd08d8e5cc37', '[\"*\"]', NULL, NULL, '2024-03-30 12:17:25', '2024-03-30 12:17:25'),
(9, 'App\\Models\\User', 9, 'Api Token ofAhmedghazy', '4c0e5cd4740878a3ec490c52dcaf9b90e0306f0e11a93668e9c1a03af98cbc84', '[\"*\"]', NULL, NULL, '2024-03-30 12:19:01', '2024-03-30 12:19:01'),
(10, 'App\\Models\\User', 15, 'Api Token ofAhmedghazy', 'b97bb84848a22bb2895f9b1838aececd8175f98b08b93eadcddaafdc3d4134f8', '[\"*\"]', NULL, NULL, '2024-04-17 16:38:54', '2024-04-17 16:38:54'),
(12, 'App\\Models\\User', 16, 'Api Token ofAhmedghazy', 'b8ec38834aeb4402d7bc62e868d5505b838845b772c9f1ccd633e7e868488a94', '[\"*\"]', NULL, NULL, '2024-04-17 17:09:10', '2024-04-17 17:09:10'),
(13, 'App\\Models\\User', 17, 'Api Token ofAhmedghazy', 'ad50ec4adfbc5f8a5646129bd2d5e8eeff2f9bff5d58ff7792ecba59aad67051', '[\"*\"]', NULL, NULL, '2024-04-17 17:10:20', '2024-04-17 17:10:20'),
(14, 'App\\Models\\User', 18, 'Api Token ofAhmedghazy', '2def457a1cd223e8f0dbf0aa5bcd6a01b88ca88a7e0c1e1e6dba7bec087a38a8', '[\"*\"]', '2024-05-02 16:12:21', NULL, '2024-04-17 17:16:58', '2024-05-02 16:12:21'),
(15, 'App\\Models\\User', 19, 'Api Token ofAhmedghazy', 'e4484693f1b4dc3502b2857fdbe317af8f68962d1dfd5b22bada94c8edacdbda', '[\"*\"]', '2024-05-05 16:35:56', NULL, '2024-04-18 07:15:54', '2024-05-05 16:35:56'),
(16, 'App\\Models\\User', 20, 'Api Token ofAhmedghazy', '720839ed0e63d17b53e2bc0c77fff1542d21a33eeec79e43e51b874556e7ffa3', '[\"*\"]', NULL, NULL, '2024-04-18 07:44:10', '2024-04-18 07:44:10'),
(17, 'App\\Models\\User', 21, 'Api Token ofAhmedghazy', '19d878ba455b5efdb5e7db0d344824ff00c2ad1ed66e9abc89a7746585b4efcb', '[\"*\"]', NULL, NULL, '2024-04-18 07:45:19', '2024-04-18 07:45:19'),
(23, 'App\\Models\\User', 23, 'Api Token ofAhmedghazy', '7ea54f658407f79f03cb1d1c95436b69598579f6a0fdfccd8dc3eb473067b67c', '[\"*\"]', NULL, NULL, '2024-04-19 21:48:33', '2024-04-19 21:48:33'),
(24, 'App\\Models\\User', 23, 'Api Token of Ahmedghazy', 'b67e3384f8512d5c74e6fe540da6b24233fc7e235bff66b547e0b3cf7ccc094f', '[\"*\"]', '2024-04-19 21:50:23', NULL, '2024-04-19 21:48:52', '2024-04-19 21:50:23'),
(25, 'App\\Models\\User', 23, 'user', 'f37d0aad5b68946b2854a1c4820878fdfd19a72629d3d863b0430ca0efe87823', '[\"*\"]', NULL, NULL, '2024-04-19 22:06:49', '2024-04-19 22:06:49'),
(26, 'App\\Models\\User', 23, 'user', '75adb7813956026fdf01bad325715c444302945d65a1314ba02d62e16279f8d9', '[\"*\"]', NULL, NULL, '2024-04-19 22:06:57', '2024-04-19 22:06:57'),
(27, 'App\\Models\\User', 23, 'user', '661c2ec7626739c081060e32dd8743fa9ad8132086f8b7d166d683bdb139e3cb', '[\"*\"]', NULL, NULL, '2024-04-19 22:07:06', '2024-04-19 22:07:06'),
(28, 'App\\Models\\User', 23, 'user', 'd0c4d0a154179d70a58653f4117265cba089e366e2ed5bd0e7dfa0dcce9ef906', '[\"*\"]', NULL, NULL, '2024-04-19 22:08:02', '2024-04-19 22:08:02'),
(29, 'App\\Models\\User', 23, 'user', '35bfecbac04b314e799c649a2313c22ddeec8361337a4dc76a288d4346a9b164', '[\"*\"]', NULL, NULL, '2024-04-19 22:08:56', '2024-04-19 22:08:56'),
(30, 'App\\Models\\User', 24, 'Api Token ofAhmedghazy', '7c52a9054454b6be860411268ad359f87dfedbb63a43caa6638df323bd0d96d7', '[\"*\"]', NULL, NULL, '2024-04-19 22:13:42', '2024-04-19 22:13:42'),
(31, 'App\\Models\\User', 24, 'user', '3ef7fc455d0f075900e2109c0d9fee79c19277907c0af02c836f4ed65677ce56', '[\"*\"]', NULL, NULL, '2024-04-19 22:14:07', '2024-04-19 22:14:07'),
(32, 'App\\Models\\User', 23, 'user', '9a518c7a791f2e05eb031ed0c4e0831189986393c3ca6bc253d0b8f60dad3d57', '[\"*\"]', NULL, NULL, '2024-04-19 22:15:20', '2024-04-19 22:15:20'),
(33, 'App\\Models\\User', 24, 'user', '6148d9a28013207d11341a9b4c04822f08a0cd3fcfb8ccc639b740ea8efdb53e', '[\"*\"]', NULL, NULL, '2024-04-19 22:15:38', '2024-04-19 22:15:38'),
(34, 'App\\Models\\User', 24, 'user', '998d4a06fae0e1148f8f040c01abf5d388a63fb105e69ba4519f90f873ead8d7', '[\"*\"]', NULL, NULL, '2024-04-19 22:16:20', '2024-04-19 22:16:20'),
(35, 'App\\Models\\User', 24, 'user', 'dd7bfc91b0c056260f8cfe6e6c74321d1d13f7a5e1829f6165af954a6b424670', '[\"*\"]', NULL, NULL, '2024-04-19 22:16:27', '2024-04-19 22:16:27'),
(36, 'App\\Models\\User', 24, 'user', 'c08ef28a1bff6db7ed1c5c7a634f0fa3dfd37787de094c880299eaaebb19a77c', '[\"*\"]', NULL, NULL, '2024-04-19 22:18:43', '2024-04-19 22:18:43'),
(37, 'App\\Models\\User', 24, 'user', '03461d3996f929e00651fe0238d7d0e0c78187d77e76f12bb60bbde0329ce252', '[\"*\"]', NULL, NULL, '2024-04-19 22:20:25', '2024-04-19 22:20:25'),
(38, 'App\\Models\\User', 23, 'user', 'c35ed2f21711631f2ad67fefc98952539b542cc00232af828e3d6906efc20f68', '[\"*\"]', NULL, NULL, '2024-04-19 22:26:45', '2024-04-19 22:26:45'),
(45, 'App\\Models\\User', 25, 'Api Token ofAhmed Ebrahem', '08ea6f03478aa9aed1724093fd15667e565f51ef955c455611f8ec084c820504', '[\"*\"]', '2024-04-29 17:46:25', NULL, '2024-04-23 07:09:39', '2024-04-29 17:46:25'),
(77, 'App\\Models\\User', 26, 'Api Token ofomar', '17f830df2854dcbf573e429df21e24f7639e2d7a470b71cfa984e55d97d20fc2', '[\"*\"]', NULL, NULL, '2024-04-26 11:54:34', '2024-04-26 11:54:34'),
(78, 'App\\Models\\User', 27, 'Api Token ofomar1', '6bbfb374bfd8076a12b7fbb7fa46a772dad001a0b4d7d9f8098c69c0ee250e95', '[\"*\"]', NULL, NULL, '2024-04-26 12:16:47', '2024-04-26 12:16:47'),
(79, 'App\\Models\\User', 28, 'Api Token ofomar12', '7cb68c90d5defddb2d04171f6e0c5f491827888f59b4077df3064cabf3e2d99a', '[\"*\"]', NULL, NULL, '2024-04-26 14:25:30', '2024-04-26 14:25:30'),
(80, 'App\\Models\\User', 29, 'Api Token ofomar12455', 'b36df4029c5030e001d030d3f87a530d5ae0d433a2e78dee7903618abd2e64f1', '[\"*\"]', NULL, NULL, '2024-04-26 14:41:04', '2024-04-26 14:41:04'),
(81, 'App\\Models\\User', 30, 'Api Token ofomarewql;ekjqw', 'd46ef34b5c0a49dcc2caa70b79dd7b12dedef13138fec8ff88a98af9b90b3f1d', '[\"*\"]', NULL, NULL, '2024-04-26 14:56:12', '2024-04-26 14:56:12'),
(82, 'App\\Models\\User', 31, 'Api Token ofomarqqqwqwqwqwqw', 'deb13bad2fef3683c277345de18630bce0882538e3e8df4de46bfd6a7a5e2a15', '[\"*\"]', NULL, NULL, '2024-04-26 15:00:27', '2024-04-26 15:00:27'),
(83, 'App\\Models\\User', 32, 'Api Token ofb7bk_ya_Ghazy', '0da77bc04fbf3dd1289dd7b57b45d5b455aa271fc9b77dda2bc3f841cf83cd17', '[\"*\"]', NULL, NULL, '2024-04-26 15:02:14', '2024-04-26 15:02:14'),
(84, 'App\\Models\\User', 33, 'Api Token ofomar12455', 'a58c440960b49bb137fa90ea0f177a0264ab443def9e56b2be0db7096469a83b', '[\"*\"]', NULL, NULL, '2024-04-28 15:37:37', '2024-04-28 15:37:37'),
(85, 'App\\Models\\User', 34, 'Api Token ofAhmedghazy', '1c25e9089a7157f5f61c4efc4be3397b1fb626186d935104ebc47adcdb431eda', '[\"*\"]', '2024-04-28 15:55:14', NULL, '2024-04-28 15:52:46', '2024-04-28 15:55:14'),
(88, 'App\\Models\\User', 35, 'Api Token ofomar123', '3fd881c0f7dfc33db9f758e48d26dec3962b04de9bd50096a83bfbf435edcc38', '[\"*\"]', NULL, NULL, '2024-04-28 16:00:47', '2024-04-28 16:00:47'),
(91, 'App\\Models\\User', 36, 'Api Token ofomartttt', '7094ad7552d30cf82052cb1793f2890f8d1a7926b1730f9690ffc58fc5cd0101', '[\"*\"]', NULL, NULL, '2024-04-28 16:39:35', '2024-04-28 16:39:35'),
(115, 'App\\Models\\User', 40, 'Api Token ofomar', 'cec2ae7149d6c586cc0687725e2ebace05dffadf983cdc2ae374f799e8b35b2a', '[\"*\"]', NULL, NULL, '2024-04-29 13:43:40', '2024-04-29 13:43:40'),
(130, 'App\\Models\\User', 41, 'Api Token ofmohamed', '468eacc4d5547ee2ded31bfe4bcfea945b560f466079c406950ad64c796d040f', '[\"*\"]', NULL, NULL, '2024-05-01 13:43:03', '2024-05-01 13:43:03'),
(131, 'App\\Models\\User', 42, 'Api Token ofMohmaed', '00cd2982c24dc8a6013b82a83436b81caa0b2cd425fcd745fd6baac9dd5b16d6', '[\"*\"]', NULL, NULL, '2024-05-01 13:48:09', '2024-05-01 13:48:09'),
(150, 'App\\Models\\User', 43, 'user', '9134703448db302425afbd4a85bceaa5a348beacd11b36659c10b10f3dd01826', '[\"*\"]', '2024-05-03 14:25:36', NULL, '2024-05-01 18:21:42', '2024-05-03 14:25:36'),
(152, 'App\\Models\\User', 24, 'user', 'a23ae633c509935f4d79c12b787860a1c0aa7e0b1622cc09b977bc35aacef0d1', '[\"*\"]', NULL, NULL, '2024-05-02 11:23:27', '2024-05-02 11:23:27'),
(159, 'App\\Models\\User', 37, 'user', 'df4fb0c3b4d2fd9cdb0e7e6046f3d2912a23ae081d0ff74a73fa9cf1c20e75b0', '[\"*\"]', NULL, NULL, '2024-05-04 12:07:57', '2024-05-04 12:07:57'),
(160, 'App\\Models\\User', 37, 'user', 'b8ca4652c0422bcaa2acf4c022c6f114dd0231ccc15ade53a32a9d95350786b7', '[\"*\"]', NULL, NULL, '2024-05-04 12:08:10', '2024-05-04 12:08:10'),
(161, 'App\\Models\\User', 37, 'user', '29049d334b43ff7d2bde5d48a13b11c5151b9b57aed6fc1939098264d2c9b537', '[\"*\"]', NULL, NULL, '2024-05-04 12:08:36', '2024-05-04 12:08:36'),
(162, 'App\\Models\\User', 37, 'user', '2873279c620a7120a000505e6eee33c90484b468962da3a78a44e204ae8c4dbf', '[\"*\"]', NULL, NULL, '2024-05-04 15:22:34', '2024-05-04 15:22:34'),
(163, 'App\\Models\\User', 37, 'user', '5a6ebbf8ec2cf91a8de47bc56f5a1346658898586ecfdcbc17275663c97e447b', '[\"*\"]', NULL, NULL, '2024-05-04 16:38:05', '2024-05-04 16:38:05'),
(164, 'App\\Models\\User', 37, 'user', 'd84d2587d8e443fef57045d9aa8eb873c174ffc2f3a0e92760d5fb4089d29df4', '[\"*\"]', NULL, NULL, '2024-05-04 17:03:53', '2024-05-04 17:03:53'),
(165, 'App\\Models\\User', 37, 'user', 'a6fef7cae31a15b2965531bffeb35e971f0b1ae8e264a5de9e89246d601002e4', '[\"*\"]', NULL, NULL, '2024-05-04 17:24:44', '2024-05-04 17:24:44'),
(169, 'App\\Models\\User', 44, 'user', 'a91267f979c674e75acdf5e257b19194151a0baf714b5f4c1de5f655aa1889d9', '[\"*\"]', NULL, NULL, '2024-05-20 16:17:38', '2024-05-20 16:17:38'),
(170, 'App\\Models\\User', 44, 'user', '21ea9fb83fbd1f484dafb93d0c96bbe520372ed4917e64eeb9c092bd7f6fddcd', '[\"*\"]', NULL, NULL, '2024-05-20 16:30:09', '2024-05-20 16:30:09'),
(171, 'App\\Models\\User', 44, 'user', 'a326df5e2f8da35961b54026521c0dba28e984cdae1a26a906cc7765d33d28fe', '[\"*\"]', NULL, NULL, '2024-05-20 16:34:06', '2024-05-20 16:34:06');

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`id`, `state_id`, `name`, `description`, `address`, `created_at`, `updated_at`) VALUES
(12, 1, 'bibliotheca Alexandrina', 'The Library of Alexandria was for many centuries, more or less from 280 BC to 416, one of the largest and most important libraries on the Planet. This valiant center of knowledge was located in the city of Alexandria, north of Egypt, west of the River Nile, right on the shores of the Mediterranean.', 'Alexandria', '2024-03-28 10:58:55', '2024-03-28 10:58:55'),
(13, 1, 'Alexandria National Museum', 'The National Museum of Alexandria has grown in importance and is now considered one of the best museums in Egypt. It was inaugurated in 2003, and it is one of the reasons why this city is worth visiting. The National Museum of Alexandria is housed in a restored palace and contains around 1,800 objects that narrate the history of Alexandria through its different eras, including Pharaonic, Roman, Coptic, and Islamic.', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(14, 1, 'The Citadel of Qaitbey', 'The citadel of Qaitbay in Alexandria is considered one of the most important defensive fortresses, not only in Egypt but also along the Mediterranean coast. It was an important part of the fortifications of Alexandria in the 15th century AD.', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(15, 1, 'Alexandria Corniche', 'Alexandria Corniche is a very important Alexandrian place and you can see the wonder of the country through it. People frequent it in summer and winter to enjoy the view of the Mediterranean Sea. The Corniche stretches from Ras El-Teen in Al-Gomrok neighborhood to Montazah Palace in Al-Montazah neighborhood. It is the most important traffic artery of the city in the horizontal direction.', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(16, 1, 'The Roman Amphitheatre in Alexandria | Ancient Roman Theatre', 'The Roman amphitheater in Alexandria in Egypt is a large circular Roman theatre, and the only one of its kind to be found in the country. Though often referred to as an amphitheater, the site is actually that of a small Roman theatre rather than a larger sporting arena.', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(17, 1, 'Pompey\'s Pillar', 'Pompey\'s Pillar is an ancient Roman column located in Alexandria, Egypt. It is considered the tallest memorial monument in the world. The exact date of the creation of this column has not been determined, but it dates back to Roman times, and it was said that this column was dedicated to Christianity after its victory in Alexandria, Ali Miriam, in the Battle of the Shirt.', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(18, 1, 'The Catacombs of Kom el Shoqafa', 'The catacombs of Kom al-Shuqafa are a historical archaeological site located in Alexandria. It is considered one of the most important cemeteries in the city and is considered one of the Seven Wonders of the World in the Middle Ages. The cemetery consists of a series of Alexandrian tombs, statues, and archaeological remains of the Pharaonic funerary cult, and due to the time period at the time, many of the features of the catacombs at Kom al-Shuqafa combine Roman, Greek, and Egyptian cultural points.', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(19, 1, 'Alexandria Port', 'Alexandria is the second-largest city in Egypt and has two ports (the eastern port) between the peninsula and the shallow eastern port that is not used for shipping. The Port of Alexandria is managed by the Alexandria Port Authority and is the largest port in the region, handling approximately 55% of Egypt\'s international trade.', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(20, 1, 'Alexandria Airport | Borg El Arab International Airport', 'Borg El Arab International Airport became the principal airport of Alexandria from December 2010 when all traffic was transferred from Alexandria International Airport. The airport consists of a new passenger building and an administration building. The passenger terminal is designed in the shape of a boat and consists of three floors.', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(21, 1, 'El Alamein War Cemetery | Alamein Commonwealth in Egypt', 'The El Alamein War Cemeteries are the cemeteries where Allied and Axis soldiers have been buried since World War II at El Alamein, on the northern coast of Egypt. It is divided into individual parts and sectors and is still visited annually by some of the surviving families of Allied soldiers.', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(22, 1, 'Alexandria Lighthouse Pharos | Ancient Lighthouse Alexandria', 'Alexandria Lighthouse Pharos The ancient lighthouse of Alexandria was built for the purpose of helping sailors reach the port of Alexandria in Egypt, and was truly a unique engineering marvel of the wonders of the ancient world. Find out more here!', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(23, 1, 'Saint Mark the Evangelist', 'St. Mark, one of the most important in Christian history, especially in Egypt.', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(24, 1, 'St. Catherine of Alexandria', 'In the Coptic Orthodox Church, she is considered a martyr, and in the Catholic Church, she is considered one of the fourteen assistants.', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(25, 1, 'El montazah palace alexandria | montaza palace history', 'The gardens of Montazah Palace, with their enchanting views of the Mediterranean, are one of the most beautiful historical and tourist sites in Alexandria, and visitors need to discover its attractions on foot for hours.', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(26, 1, 'Mosque of abu al-abbas al-mursi | masjid abu al-abbas al-mursi', 'In Alexandria is the Abu al-Abbas al-Mursi Mosque or al-Marsa Abu al-Abbas, one of the oldest and most famous mosques, as it is distinguished by its distinctive shaped domes, and is one of the most important features of the Abu al-Abbas area in the Bahri area of the city, to its owner Shihab al-Din Abu al-Abbas Ahmad bin Hassan bin Ali al-Khazraji al-Ansari al-Marsa.', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(27, 1, 'The Royal Jewelry Museum', 'It is called the \"Palace of Jewels\" due to its presence in the building that was the palace of one of the princesses of the upper royal family.', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(28, 1, 'Tombs OF Shatby | Shatby Necropolis', 'the Chatby tombs are considerably older, dating back to the 3rd century BC, just before the end of the Pharaonic period. At the time of their construction, there was a huge amount of Greek and Roman influence, although the Greeks were still in power at the time. This merging of cultures can still be seen to this day, not only when visiting the tombs, but also throughout the city of Alexandria.', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(29, 1, 'Ras El Tin Palace in Alexandria | Ras El Tin Palace History', 'The Palace construction was initiated by Mohamed Ali himself in 1834 to require the form of a Roman fort and to function as another ruling headquarters almost like the functions of worship El-Din fastness. creator Yezi Bek, was commissioned to style and build the Palace. Construction works ran from1834-1848 and terminated once thirteen years of labor.', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(30, 1, 'The Graeco-Roman Museum | Roman Amphitheater of Alexandria', 'The Hellenic repository is tiny, however, it options artifacts from a desirable amount of Egyptian history once Greek, Roman, and Ancient Egyptian civilization all interacted here, leading to a motivating fusion of traditions. during this little repository, you may be available in contact with many legendary figures from world history, all of the UN agencies compete out the necessary components of their lives in Alexandria.', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(31, 1, 'Mamoura Beach Alexandria Egypt | Alexandria Attractions', 'El Maamora Beach may be a style beach within the neighborhood of El Maamora in Alexandria, Egypt. it\'s settled east of Montaza\'s royal gardens, and administrated by each the Governorate of Alexandria and also the El Maamora Housing and Construction company. it\'s thought-about one among the most traveler attractions in Alexandria for its beach and parks.', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(32, 1, 'Aquarium Museum Alexandria', 'The Aquarium Museum has an important role in spreading culture, knowledge, and information useful to interested and visiting school and university students and tourists from all over the world.', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(33, 1, 'El Nabi Daniel Mosque', 'Located in the city of Alexandria, there are several Islamic mosques attributed to prophets and messengers who preceded Christianity and Islam, and perhaps this appears in that these mosques may have been ancient temples turned into mosques, or due to the presence of large Jewish communities in the city of Alexandria in the Roman era, so the names were given to the name her prophets.', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(34, 1, 'Sidi Gaber Mosque', 'The mosque was initially a small corner that was built around the middle of the seventh century AH. This corner remained in its condition until a mosque was built on its ruins at the end of the nineteenth century AD. In 1955 AD, the old mosque was removed to build the current mosque in its place.', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(35, 1, 'Sidi Beshr Mosque', 'The Sidi Bishr area is one of the most important areas of the Montazah neighborhood, located east of the city of Alexandria in Egypt. It was named after the Sheikh and Imam Bishr, who lived and was buried in that area. The reason for the name was in reference to Sheikh Bishr bin Al Hussein bin Muhammad bin Obaid Allah bin Al Hussein bin Bishr Al Jawhari.', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(36, 1, 'AL-Imam AL-Busiry Mosque', 'The mosque is attributed to the Sufi imam and poet Sharaf al-Din Abu Abdullah Muhammad bin Saeed Hammad bin Mohsen - nicknamed Al-Busairi in relation to the city of Busir in Upper Egypt, who lived in the period from 1213 AD - 1295 AD, and his ancestors belonged to a branch of the Sanhaja tribe in the Maghreb, some of whom migrated to Egypt And they settled.', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(37, 1, 'Ras EL-Tin Palace', 'Muhammad Ali ordered that the Ras al-Tin Palace be built in the form of a fortress to serve as the seat of his rule in the Citadel of Salah al-Din in Cairo, and the design of the palace was designed by the French engineer “Sir Yeezy Beck” in 1834-1847, meaning that it took 13 years to build. It bears the name \"Muhammad Ali\" and some granite columns.', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(38, 1, 'EL-Agami Beach Alexandria', 'Alexandria is characterized by its beaches extending from Maamoura in the east to El-Agamy in the west, with wonderful waters, an ideal geographical atmosphere, and stunning landscapes.', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(39, 1, 'Miami Beach Alexandria', 'Travelers usually seek to spend a special trip, and this is indeed what all tourists in Alexandria will have, as there are various tourist attractions, such as the beaches of Alexandria, which are the main attraction for guests', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(40, 1, 'mahmoud said Museum', 'From the bride of the Mediterranean, Alexandria, and over its sands in Jancles, we go on a trip to the Museum of the most expensive paintings, to the artist with the most expensive paintings sold in the Middle East, to the Muhamed said Museum', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(41, 1, 'Sidi Bishr Mosque', 'Sidi Bishr Mosque is one of the landmarks of Alexandria in Egypt', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(42, 1, 'Cavafy museum', 'The Cavafy Museum is a residential museum located in the center of Alexandria, which was once the residence of the Greek poet Constantine Cavafy', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(43, 1, 'Abu Qir Bay', 'Abu Qir Bay is a wide bay in the Mediterranean Sea in Egypt, located between Abu Qir (near Alexandria) and the mouth of the Nile River at Rashid and west of the city of Idku', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(44, 1, 'Tomb of Abu Darda', 'This article makes an effort to identify all the alleged tombs and burial locations for Abu Darda, a well-known friend of Prophet Muhammad. The Citadel of Damascus is home to the most famous of abi Darda\'s supposed tombs, who was a well-known associate of the prophet Muhammad. The mosque and tomb\'s origins are unknown because at least two alternative locations, one in Egypt and the other in Jordan, are said to be where Abu Darda was interred. None of these are the known or verified locations where Abi Darda was interred.', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(45, 1, 'Princess Aziza Fahmy\'s Palace', 'After the cotton boom in the late century20\'s , many wealthy families built villas and palaces in the still sandy landscape . most of these villas and palaces vanished to free space for large apartments and population areas', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(46, 1, 'Tea Island Alexandria | King\'s Tea Island', 'The Tea Island is one of the most popular tourist destinations in Alexandria, to which visitors to the city, neighboring cities, and Arab tourists from different countries resort, to enjoy its picturesque nature, reflected in the seawater that surrounds it on every side, which made it one of the most famous tourist attractions. In Egypt, Alexandria is the most popular destination for families and children.', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(47, 1, 'Serapeum of Alexandria', 'An archaeological edifice, reflecting the civilizational trinity witnessed by the Mediterranean bride during the centuries before Christ, in the past, the Egyptians considered it a place to perform the rituals of pilgrimage, and as soon as the Christian faith reached the land of Egypt, they treated it as a house of idolatry, and they destroyed it, leaving only a few of it, but it It shows the greatness of those civilizations that followed it, so that the most famous traveler, Ibn Battuta, described it at the beginning of the 14th century as the strangest thing his eyes had seen in that city.', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(48, 1, 'Alexandria Naval Unknown Soldier Memorial', 'The Unknown Soldier is any soldier who was martyred in the war and his personality or identity has not been inferred, so he is not buried in the military cemetery, but a place called the memorial or the tomb of the Unknown Soldier is established to bury those soldiers whose identities have not been identified as a result of distortions from wars,', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(49, 1, 'Mohamed Ali Pasha Statue', 'The statue of Muhammad Ali, designed by the famous French sculptor Alfred Jacquemar, one of the most famous French sculptors in the nineteenth century, was commissioned by Khedive Ismail to commemorate his grandfather, Muhammad Ali Pasha, the great founder of the Alawite state. The cost of carving the statue was two million francs at the time. The statue was displayed in France for a month, until it decorated Consuls Square (now Mansheya) in December 1872.', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(50, 1, 'Saint Takla Haymanot Church', 'There are many services and activities in the Church of Anba Taklahimanot.. some of them are carried out by priests.. and some are carried out by the church community.. and others are done by servants of the church.', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(51, 1, 'El Attarine mosque', 'Al-Attarin Mosque is located in the street that bears its name in the Al-Attarin neighborhood. It was known by this name because it is located near the Attarin market, one of the most famous markets in Alexandria in the past. This mosque was also known as Al-Juyushi Mosque, in reference to the Emir of Al-Juyushi, Badr Al-Din Al-Jamali, who renovated, developed, and expanded it in the year 477 AH.', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(52, 1, 'Stanely Bridge Alexandria', 'Despite the recent establishment of the Stanley Bridge, it was able to attract the attention of many individuals and became one of the most important landmarks of Alexandria and an essential destination for all visitors and citizens of the governorate, despite the possession of the Bride of the Mediterranean many monuments such as Qaitbay Castle and the famous Library of Alexandria, not to mention the number of museums and archaeological palaces, but The bridge remains of interest to many.', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(53, 1, 'Mustafa Kamel Tombs in Alexandria', 'In the year 1934, Alexandria was on a date with happiness. While work was underway to construct a playground at one of the sites on Al-Muaskar Al-Romani Street, located in the east of the coastal city, coincidence led workers during the excavation of the land to discover one of the largest and most important tombs dating back to the Ptolemaic era, which is the ancient tombs of Mustafa Kamel.', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(54, 1, 'Pope Cyril (Kyrillos) VI', 'Pope Cyril (Kyrillos) VI was born in the town of Toukh Al-Nasara in Damanhour in Egypt on Friday, August 2, 1902. His name is Azar. Since early childhood, Azar started his love for the priesthood. He slept on the monks\' stone.', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(55, 1, 'Monastery of Mary Mina in Alexandria', 'Today, thousands of pilgrims continue to flock from all over the world to receive spiritual and physical healing at the revived monastery, which has once again become the Lourdes of the East.', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(56, 1, 'Thonis Heracleion', 'Heracleion -originally called Thonis- sank in the second century B.C. It was the most important port of Egypt during the last Pharaonic period and one of the main commercial centers of that country. Until the sea swallowed it and it was forgotten.', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(57, 1, 'Kom Al Dikka', 'Kom Al-Dakkah is one of Alexandria\'s historic regions and is currently following the central district of Alexandria, which is above sea level about eight to ten meters above, in a middle area between archaeological tourist areas and commercial hubs of the city centre, an industrial hill that is the closure of buildings that have been destroyed and accumulated above each other, and this old neighborhood is the focus of the archaeological area', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(58, 1, 'Temple of the Black Head', 'The Temple of the Black Head was built by one of the knights called \"Isidore\", meaning \"the gift of Isis\", and he fell from a war chariot, and his foot was injured.', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(59, 1, 'Antoniades Garden in Alexandria', 'The Antoniadis Palace is one of the palaces belonging to a group of wealthy people in Alexandria. The palace contains a variety of antique statues, in addition to the rare diverse gardens and trees that surround the house.', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(60, 1, 'Monastery of Saint Mina', 'The foundation stone of the Monastery of Martyr Mina was laid in 1958 by Pope Kyrollos VI, the 116th Patriarch.', 'Alexandria', '2024-03-28 10:58:56', '2024-03-28 10:58:56'),
(61, 3, 'The Great Pyramids of Giza', 'Fantastically attractive, the pyramids of Giza is the tomb of Pharaoh Khufu and the largest Egyptian pyramid. It is also the oldest of the Seven Wonders of the Ancient World. These fourth dynasty funerary pyramids are located on the city\'s edge and have always been one of the best highlights of Cairo.', 'Cairo', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(62, 3, 'Egyptian Museum of Antiquities', 'Built in the parts of downtown Cairo, the Egyptian Museum houses some of the rarest and most unique historical artefacts of the time. With a collection of roughly around 120,000 items, the Egyptian Museum is one of the largest museums in the region. It also holds the record of owning the world\'s largest collection of Pharaonic antiques.', 'Cairo', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(63, 3, 'Al-Azhar Mosque', 'A remarkable establishment, Al-Azhar Mosque is a marvellous building in Cairo. Having been built in AD972, It is really old and one of the prime landmarks in the city. It is also one of the oldest surviving mosques and one of the oldest universities in the world.', 'Cairo', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(64, 3, 'Explore Old Cairo (Coptic Cairo)', 'This little and enclosed region also called Coptic Cairo, is the most ancient part of Cairo. It is the heart of the Coptic Christian group and remains a truly fascinating spot to visit. The Coptic Museum contains an abundance of valuable information on Egypt\'s initial Christian period and is home to one of Egypt\'s finest accumulations of Coptic art collections.', 'Cairo', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(65, 3, 'Saqqara', 'Saqqara, located south of Cairo, is a home to Egypt\'s oldest pyramid and is the largest archaeological site in Egypt. The necropolis of Saqqara houses eleven step pyramids which are burial grounds of old pharaohs. Major attractions onsite include Step pyramid of Djoser, Mastaba of Ti, Serapeum, Pyramid of Unas, and Mastaba of Mereruka.', 'Cairo', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(66, 3, 'Shopping at Khan el-Khalili', 'One of the biggest markets in the world, Khan al-Khalili is very chirpy, exciting and inspiring. With the constant selling, bargaining and purchasing, the local market is worth visiting. It is known for the semiprecious and expensive stone works handicrafts to varying sizes of simulated pyramids.', 'Cairo', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(67, 3, 'Climb to the Top of Bab Zuweila', 'The only surviving southern gate of the city, Bab Zuweila was built in medieval times and served as an entry to the city of Al-Qahira. The spectacularly standing minarets on the gate beautifully depict the architecture of that era. Tourists often enjoy the mesmerising views from the top of this beautiful landmark.', 'Cairo', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(68, 3, 'Nile River Cruise', 'A Nile cruise is one of the most popular ways to explore all the major historical sites in Egypt. The cruise is a boat or cruise tour where one spends several days cruising the river and visiting various historical sites, ruins and temples. Many cruises also include some of the beautiful cities along the Nile such as Luxor, Qena and Aswan, which can be visited on a standard Nile cruise, a special Nile cruise or a private cruise depending on affordability and time availability.', 'Cairo', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(69, 3, 'Nilometer', 'The Nilometer was used to measure the water level of the river Nile in earlier times and helped predict floods and droughts. The structure, built between the Manasterly Palace and the Um Kalthoum Museum, has a beautifully built conical dome at the top with a vertical column pillar standing in the centre, immersed in water.', 'Cairo', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(70, 3, 'Enjoy Panoramic View from The Citadel', 'Right on the foothills of the enormous Mokattam, the fortress of the Saladin Citadel was established in the year 1176. It is one of the most remarkable creations of military infrastructure, attracting many tourists every year. Wander about the surroundings and witness one of the most fantastic views in the city.', 'Cairo', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(71, 3, 'Shop & Dine at Zamalek', 'Best known for its extravagance, Zamalek district is well located in the heart of Gezira alongside the gleaming Nile. The entire territory gives you a posh  European feel with English-style decorated boutiques and restaurants.', 'Cairo', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(72, 3, 'Cairo Opera House', 'The Cairo Opera House is located in southern Gezira Island in the Zamalek district of Downtown Cairo. It was a gift from Japan to Egypt and was inaugurated in 1988. It serves as a medium for music groups, museums, dance academies, galleries and other artists to present their art. Tourists interested in traditional Arabic dances and music can visit the opera house. It has four theatres and two exhibition halls for art and music respectively. Scheduled tours for public viewing of the Cairo Opera House are also available.', 'Cairo', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(73, 3, 'Islamic Cairo', 'Islamic Cairo, also known as Medieval Cairo, is a large area that houses most of the Islamic monuments. Some of the most important sites in this historic area are Midan Hussein and Sayyidna al-Hussein Mosque (not accessible to non-Muslims), Cairo Citadel, Sultan Hassan Mosque, Gary Anderson Museum, Al-Azhar Park and Bayt al Suhaymi. In addition to shopping and enjoying Islamic architecture, strolling down the ecstatic streets of medieval Cairo is one of the best things to do in this part of the city,', 'Cairo', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(74, 3, 'Visit Observation Deck at Cairo Tower', 'Standing firmly at the height of 187 metres from the ground, the Cairo Tower is situated at Sharia Hadayek Al Zuhreya Gezira. It is known for its design, architecture, and stunning view of Cairo city from the top floor. There is also the Sky Garden cafe here with an observation deck.', 'Cairo', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(75, 3, 'Al-Muizz', 'Al-Muizz is one of the oldest streets in Cairo, connecting the southern gate of Bab-Zuweil with the northern gate of Bab-en-Nasr and Bab-al-Futuh. The street is 30 minutes from Downtown Cairo and is considered a centre of Islamic architectural treasures from medieval times. Traversing the street, numerous mosques can be seen along with the goldsmiths bazaar, the markets for bowls, pots and ornaments, and the coppersmiths\' bazaar.', 'Cairo', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(76, 3, 'Coptic Museum', 'The Coptic Museum holds more than 16,000 artefacts dating back to the presence of Christians in Egypt. Almost all these artefacts have been collected from different monasteries across Egypt. It was founded in 1908.', 'Cairo', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(77, 3, 'Tour the Asfour Crystal Factory', 'Egypt has always been a home to crystals, stones and gems. The world-famous Asfour Crystal factory has some delightful, imaginative pieces with intricately made crystals. Chandeliers with sparkling and twinkling lights are the highlight. A museum-like room is also attached to the factory, which displays all the greatest works.', 'Cairo', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(78, 3, 'Cave Church', 'Mokattam Mountain, located in the southeast of Cairo, is home to Cave Church. The church, also known as St Simon\'s Monastery, is located in an area known as Garbage City and is a masterpiece with stories and paintings on the walls of the church and on the rocks of the mountain along with sculptures of the Virgin Mary and Mary Magdalene. The cave consists of 3 churches, which include a hidden chapel.', 'Cairo', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(79, 3, 'Admire Architecture of Museum of Islamic Art', 'Opposite the Cairo Governorate Office, at the intersection of Port Said and Mohamed Ali streets, is the magnificent building of the Museum of Islamic Art (MIA). It is known for the overwhelming architecture of the building and divine historical artefacts.', 'Cairo', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(80, 3, 'Sultan Hassan Mosque', 'Sultan Hassan Mosque is an excellent example of brilliant Egyptian architecture. Completed in 1363, this ancient yet interesting monument never fails to intrigue its visitors. With interesting intricacies in the features, this massive mosque was built for Sultan Hassan el-Nasir in the Mamluk era.', 'Cairo', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(81, 3, 'Downtown Cairo', 'A commercial, transportational and cultural hub of the modern city of Cairo, Downtown Cairo is in a central location with plenty of hotels, retail stores, restaurants and emporiums. Some of the major attractions and stops in the area include Museum of Islamis Arts, Tahrir Square, Egyptian Museum, Midan Falaky, Borsa, and Townhouse Gallery and Theatre.', 'Cairo', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(82, 3, 'Tahrir Square', 'Popularly known as Martyr Square, Tahrir square is a prime location in Downtown Cairo. The area around the square includes major attractions like the Egyptian Museum, the Mogamma government building, the Folklore Arts House, the Headquarters of the Arab League building, Kasr Al Dobara Evangelical church, the Nile Hotel, and the original Downtown campus-the American University of Cairo.', 'Cairo', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(83, 3, 'Ibn Tulun Mosque', 'Ibn Tulun Mosque is both the largest and the oldest mosque in Egypt that was built in the 9th century. The mosque is made up of red bricks, and the stunning architecture and sky high minarets of this ancient worship center attract millions of tourists. One can take long walks admiring the beautiful architecture through three Ziyadahs or courtyards surrounding the mosque.', 'Cairo', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(84, 3, 'Baron Empain Palace', 'Located in Heliopolis (a suburb northeast of Cairo city centre), Baron Empain Palace was founded by a Belgian businessman, and its construction is inspired from the hindu temple of Angkor Wat in Cambodia. The palace is the most unique monument in entire Cairo and attracts major crowds. The palace consists of a basement along with two floors. The basement consists of servant rooms; the ground floor has a reception, a dining room, a billiards room; and the first floor consists of four rooms with attached balconies and bathrooms. The palace’s best feature is the tower, and it stands in the middle of a lush green beautiful garden.', 'Cairo', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(85, 3, 'Al-Azhar Park', 'Spread across a sprawling area of 30 hectares, the Al-Azhar Park in Cairo is another place which is going to leave you spellbound with its beauty. The park is surrounded by some of the most historic and significant districts of Cairo city, and is a must visit place for tourists as well as local residents of the city.', 'Cairo', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(86, 3, 'Tanis', 'Tanis, a day trip from Cairo, is located in the Nile Delta, about 165 kilometres from Egypt\'s capital. Tourists can visit several temple ruins, including the main temple dedicated to Amun and an important royal necropolis containing the only intact royal pharaonic burial - the tomb of Tutankhamun. Tanis, also known as San El-Hagar, was featured in the Indiana Jones film Raiders of the Lost Ark.', 'Cairo', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(87, 3, 'Hanging Church', 'The Hanging Church of Cairo is a stone facade inscribed with Coptic and Arabic marks. Also known as the Church of Saint Virgin Mary, the Hanging Church of Cairo is one of the most popular and oldest churches present in the world today. Dating back to 3rd Century AD, the Hanging Church of Coptic Cairo comprises of 110 Holy Icons.', 'Cairo', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(88, 3, 'Al-Hakim Mosque', 'Located on the east side Al- Muizz Street in Islamic Cairo, Al-Hakim Mosque was restored in 1980 and reopened for worship. The mosque is popular for its restored or replaced Quranic inscriptions done in Kufic script. The mosque has a vast open courtyard with beautiful interiors and exteriors.', 'Cairo', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(89, 3, 'Visit City of the Dead', 'Stretching over a length of around 6.4 Km, the Northern Cemetery of Cairo contains many tombs and mausoleum structures in all of Cairo. It comprises multi-storey residential buildings and a Post Office. Since the place covers more than half of what is called Cairo Necropolis people also refer to the Northern Cemetery as the ‘City of the Dead.', 'Cairo', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(90, 3, 'Tentmakers Market', 'Situated along a 300-meter-long stretch of road across the Bab Zuwalya, the Tent Makers Market of Cairo is a must-visit place if you are fond of handwoven textile designs and embroidery techniques. Beautiful blankets, embroidered pillowcases, and blankets can be found in this ancient market.', 'Cairo', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(91, 3, 'Gayer Anderson Museum', 'Situated adjacent to the Mosque of Ahmad ibn Tulun in the Sayyida Zeinab neighbourhood lies the famous Gayer – Anderson Art Museum. Initially serving as the residence to British Major R.G. Gayer – Anderson Pasha, the place is now more popular due to the 17th Century AD artworks and artefacts belonging to the museum.', 'Cairo', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(92, 3, 'Mosque of Qaitbey', 'Situated in the northern sector of the Mamluk district, i.e. the “City of Dead”, the mosque and madrasa of Late Sultan Qaitbey is bound to take you back to the Mamluk period with the pictures queue architecture of the place. The mosque, entirely built in 1474 AD, is another proof of Islamic architecture, justifying the excellence possessed by artisans and architects of Egyptian Mamluk period.', 'Cairo', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(93, 3, 'Ben Ezra Synagogue', 'The Ben Ezra Synagogue became a place of worshipping for Jews in 882 AD. Back in the 6th Century AD, the synagogue was a figure of the Jewish revolution, when the prophet Jeremiah gathered all the Jews after Nebuchadnezzar\'s destruction of the Jerusalem Temple. Situated next to the Hanging Church and the Coptic Museum, it is considered a must-visit destination during the trip to Cairo.', 'Cairo', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(94, 3, 'Bab al Futuh', 'Completed in 1087 A.D., the Bab al Futuh gate situated on the northern end of Muizz Street in Cairo is one of the iconic figures identified in the fortification of the old city of Cairo. While its elegant curved walls showcase its distinct architecture, the same walls also provided a strong defence against enemies during old times.', 'Cairo', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(95, 3, 'Ramses Wissa Wassef Art Centre', 'Founded in the year 1951 AD by Ramses Wissa Wassef, the Wissa Wassef Art Centre is known for its Art Museum and Tapestry Works. Situated in the Harrania district in the Greater Cairo region, this art centre has been a hotspot of art and architecture for a long time. Established with a vision to teach Egyptian children arts and tapestries, it has today become an iconic place where every artist desires to exhibit their works.', 'Cairo', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(96, 3, 'Rhoda Island', 'Situated along the amazing Nile in Central Cairo, Rhoda Island is a great mix of Al-Manyal museums and green gardens. Rhoda Island is one of the most ancient landmarks in the whole of Egypt and is a lucrative spot for tourists from over the world.', 'Cairo', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(97, 3, 'Sphinx', 'With the body of a lion and the face of a human, the Sphinx of Giza plateau stands at a height of around 20 meters on the west bank of river Nile. The Sphinx has been recognized as a mythical creature in Greek mythology as well, where the Sphinx was a merciless killer who set riddles and killed anyone who was not able to answer them. Cut out from its limestone bedrock, the Sphinx is also recognized as the oldest known monumental sculpture in Egypt. It is the same bedrock which served as the quarry for the Pyramids of Giza. On your visit to the Sphinx, one may observe that the nummulitic limestone of the region comprises different layers offering different levels of resistance to erosion. Historians credit this characteristic of the limestone for the uneven degradation of the structure over time. It is quite fascinating to witness the manner in which the Sphinx has been carved out of the bedrock, especially when there was no such technology present to do so. With the Pyramids of Giza in the background, your visit to the Sphinx is going to get you some of the most memorable pictures of your trip to Cairo. And who would not want the sunset of Sahara to peek into the pictures!', 'Cairo', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(98, 3, 'Pyramid of Khafre', 'Standing with a height of around 136 meters and a base spanning over 215 meters, the Pyramid of Khafre is also popular as the Second Pyramid of Giza. Built by the 4th Dynasty Pharaoh Khafre of Egypt, the Pyramid originally had a coating of Tura limestone, making it gleam in the bright sunlight. With the passage of time, the whitish colour of the limestone got faded away, giving it the yellow-brownish colour as people can see today. Just like the Great Pyramid of Giza, the Pyramid of Khafre is also built on a large piece of rock. Due to the increased elevation of the base rock on which the Pyramid is built, the Pyramid of Khafre seems to be taller than the Pyramid of Khufu. The inner portions of the Pyramid comprise of small and large chambers cut out of limestone, some of which have been discovered by Archaeologists and Egyptologists over the last few centuries. Out of these chambers, only one chamber has been kept by the authorities for tourists to visit. During your visit to the Pyramid of Khafre, one should also spare time to visit the Satellite Pyramid and the Temples of Khafre built in close proximity to the Pyramid. Present day, one can only observe the remains of the outer foundation of the Satellite Pyramid. Further, the Temples of Khafre can also be visited near the Sphinx, close to the Temple of Khufu. Broadly, the Temples of Khafre include the Valley Temple, the Mortuary Temple and the Causeway. The place is a living feast for the eyes, carefully preserved by Mother Nature over the years only to give us a glimpse of the ancient Egyptian architecture and culture. The Great Pyramid of Khufu and the Pyramid of Menkaure are sure to add up to memories in your travel diaries.', 'Cairo', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(99, 3, 'Eastern Cemetery', 'Situated on the eastern side of the Queen’s Pyramids is the Eastern Cemetery of Giza. The Cemetery, being a burial place for most of the members of King Khufu’s family, has been a centre of attraction for the entire world. One of the reasons behind this is the large tomb structures made out of limestone challenging present-day technology. Another reason is the carvings made inside the Mastaba structures. Some of these structures even have multiple rooms inside them. On your visit to the Eastern Cemetery, one is sure to appreciate and awe at both the architecture and beauty of the place. Although the local authorities have kept some of the tombs closed for public visits since the last few years, the Tomb of Meresankh III and the Tomb of Seshemnufer IV are open for tourists. The walls and the aura of the place speak for itself and the glorious Egyptian Civilization, experiencing which one is sure to jot it down in their travel diaries.', 'Cairo', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(100, 3, 'Pyramid of Khufu', 'Popular as the largest of the three Pyramids of Giza, and the oldest of the Seven Wonders of the Ancient World, the Great Pyramid of Giza has succeeded today in preserving the eternity of ancient Egyptian civilization. Originally having a height of 146.5 meters, the height of the Great Pyramid of Giza has reduced by around 9 meters since its completion in 2570 B.C. Due to a mark in the interior chamber of the Pyramid naming the work gang and a reference of the Egyptian Pharaoh Khufu, the structure is also known as Pyramid of Khufu. The Pyramid of Khufu was covered with white coloured casing limestones. These casing stones were slant faced and flat-topped. With time, most of the casing stones have got removed from their place. The large magnitude earthquake recorded in 1303 A.D. was one of the reasons behind this. Muhamad Ali Pasha further removed a lot of casing stones from the Pyramid of Giza in the early 19th Century A.D. During your visit to the Great Pyramid of Giza, some of these casing stones can even be found lying near the Pyramid structure. On your visit to the Great Pyramid of Giza, one must also visit the other two pyramids of Giza, namely the Pyramid of Khafre and the Pyramid of Menkaure, along with the Sphinx and the Eastern Cemetery. The entrance to the Pyramid of Khufu is at a height of 17 meters from the ground level, and from there you can get a view of your lifetime. With modern built buildings of the town of El Giza on one side and the ancient Pyramids with the Sahara Desert on the other side, the view before your eyes will transition your thoughts from 21st Century A.D. to the year 2570 B.C. The best part of it is that you can return to the 21st Century whenever you want to.', 'Cairo', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(101, 3, 'Pyramid of Menkaure', 'Built by Pharaoh Menkaure, the Pyramid of Menkaure is more popular as the third pyramid of Giza. The Pyramid of Menkaure is also the smallest of all the three Pyramids of Giza and stands at a height of only 61 meters. When you visit the Pyramid of Menkaure, you can clearly observe the architectural beauty of the Pyramid, and the torments it underwent from rulers belonging to the ancient world, who attempted to demolish this magnificent marvel of the world. Since the origin of Egyptian civilization, Egyptians have continued to fascinate us with their intellectual levels and the ability to develop bizarre monuments, buildings and tombs. One of such bizarre structure is the Pyramid of Menkaure. Together with its Satellite pyramids, the Pyramid of Menkaure can surely be observed as a combination of Science, Architecture, Egyptian culture and mythology. Further, to make your visit to the Pyramid of Menkaure remind you of fun and adventure as well, you may find many locals willing to serve you paid activities such as Camel rides, Horse rides etc. across the three Pyramids of Giza with the Sphinx photo-bombing your snaps!', 'Cairo', '2024-03-30 11:14:23', '2024-03-30 11:14:23'),
(103, 4, 'Boat Trip to Philae Temple', 'The Philae temple complex is an island-based structure that was built during the reign of Ptolemy ll. Also known as the \'Pearl of Egypt\', this mystical temple is dedicated to the goddess Isis and remains the centre of her cult. This UNESCO World Heritage Site is frequented by tourists who seek to explore Aswan’s cultural history. In addition, the Light & Sound Show at Philae Temple is extremely popular.', 'Aswan', '2024-03-30 11:22:29', '2024-03-30 11:22:29'),
(104, 4, 'Felucca Ride to Elephantine Islands', 'Elephantine is one of the largest islands, located on the west bank of the Nile River. This UNESCO World Heritage Site is often visited for its enchanting beauty and archaeological heritage. Elephantine Island can be reached by ferry or via a felucca from the Aswan river bank.', 'Aswan', '2024-03-30 11:22:29', '2024-03-30 11:22:29'),
(105, 4, 'Unfinished Obelisk', 'A would-be granite structure, the Unfinished Obelisk was left incomplete thousands of years ago in Aswan\'s quarries. When finished, it would be the largest known obelisk, at over 41 meters tall. It is one of the most significant archaeological discoveries in Egypt owing to the insights it gives us into archaeology, particularly the stone mastery craft of ancient Egypt.', 'Aswan', '2024-03-30 11:22:29', '2024-03-30 11:22:29'),
(106, 4, 'Camel Trek on Aswan\'s West Bank', 'The western bank of the Nile provides a dramatic contrast between the mighty desert and the lush green surroundings of the river, making it an ideal spot for camel-back rides. It is one of the best ways to travel between the Tombs of the Nobles and the Monastery of St. Simeon. Camels can be hired from the ferry landing at the Tomb of the Nobles. It is best to do it early morning to avoid the heat.', 'Aswan', '2024-03-30 11:22:29', '2024-03-30 11:22:29'),
(107, 4, 'Nubian Museum', 'Nubian Museum is an archaeological museum in Aswan dedicated to protecting the history of the Nubian era. With over 3,000 antiques and a chronologically themed set-up, learn more about the Land of Gold\'s history and Pharaonic, Coptic and Islamic eras. Dating back to 4500 BC, the artefacts are exhibited across two areas, a three-storeyed building in one dimension and an outdoor display area.', 'Aswan', '2024-03-30 11:22:29', '2024-03-30 11:22:29'),
(108, 4, 'Felucca Ride on River Nile', 'Traditional felucca rides have been a constant on the river Nile. Take a felucca ride to Elephantine Islands and the Kitchener Islands. On this hour-long activity, you can enjoy the rapids of the river or soak in the vistas and unwind. For a fantastic experience, try booking a ride around sunset or sunrise. Feluccas are private tours, and you\'ll have to book an entire ride.', 'Aswan', '2024-03-30 11:22:29', '2024-03-30 11:22:29'),
(109, 4, 'Tombs of the Nobles', 'Also known as Qubbet el-Hawa, the Tombs of the Nobles is an ancient Egyptian necropolis on the western bank of the Nile, adjacent to Aswan. Providing an insight into the burial practices of Upper Egyptian Nome 1, these tombs date back to the Old Kingdom. Most tombs of this period are inaccessible. Only six are open to the public.', 'Aswan', '2024-03-30 11:22:29', '2024-03-30 11:22:29'),
(110, 4, 'Temple of Kom Ombo', 'Located on the banks of the river Nile, the Temple of Kom Ombo is situated in a village that goes by a similar name. This unusual temple of ancient Egypt is dedicated to two deities, Haroeris – the falcon-headed god Horus the Elder and God Sobek –crocodile–headed god, who was also the first known god of the kingdom.', 'Aswan', '2024-03-30 11:22:29', '2024-03-30 11:22:29'),
(111, 4, 'Bird Watching at Aswan Boatnical Garden', 'Nestled in Kitchener Island, towards the west of Elephantine Island, are the Aswan Botanical Gardens. Spread across 17 acres, it makes for a perfect picnic spot creating a unique blend of the panoramic views of the River Nile and the desert and is an excellent spot for bird-watching. The only way to reach here is by boat; either take a public ferry that runs for both Aswan, Elephantine Island, and Kitchener\'s Island or hire a private felucca.', 'Aswan', '2024-03-30 11:22:29', '2024-03-30 11:22:29'),
(112, 4, 'Aswan High Dam', 'The Aswan High Dam, one of the largest embankment dams in the world, was constructed across the Nile in Aswan in 1970. It has been regarded as an engineering marvel. It was built to create Lake Nasser, one of the largest artificial lakes in the world. At the top of this dam, one can watch the panoramic views of the lake contrasting with the vast sandy desert.', 'Aswan', '2024-03-30 11:22:29', '2024-03-30 11:22:29'),
(113, 4, 'Monastery of St. Simeon', 'One of Aswan\'s ancient archaeological sites, the Monastery of St. Simeon is among Egypt\'s most historical and well-preserved domed, oblong churches. It is also known as the Anba Hatre Monastery and is a well-known Bakhmi monastery that played a significant social role in the history of Nubian culture. You can hire a felucca or a boat, or take a camel ride to get here.', 'Aswan', '2024-03-30 11:22:29', '2024-03-30 11:22:29'),
(114, 4, 'Lake Nasser Temples of Kalabsha', 'A recognised UNESCO World Heritage site, the Lake Nasser Temple of Kalabsha is one of Egypt\'s most magnificent archaeological sites. This temple, constructed during the Ptolemaic period, is devoted to a Nubian solar deity called Mandulis by the Greeks and Merwel by the Romans. Later, it was used as a church. Visit this archaeological site to learn more about the history of this region.', 'Aswan', '2024-03-30 11:22:29', '2024-03-30 11:22:29'),
(115, 4, 'Aga Khan Mausoleum', 'Aga Khan Mausoleum is an architectural site in Aswan, perched on a hilltop overlooking the former residence of Aga Khan III and Begum Om Habibeh Aga Khan on the western bank of the Nile. Made out of Pink Granite, this structure resembles the Fatimid tombs in Cairo and is situated next to the Monastery of St. Simeons. It is worth a visit for the serenity of the place and the amazing panoramas of the Nile and the village below.', 'Aswan', '2024-03-30 11:22:29', '2024-03-30 11:22:29'),
(116, 4, 'Shopping at Aswan Souq', 'Also known as Sharia as-Souq,  the bustling Aswan Souq offers many Egyptian and African souvenirs. Located four blocks from the Nile, this Souq offers a wide range of stores selling cheap Nubian souvenirs like Pharaonic statues, swords, hand-crafted wooden artefacts and beaded galabiyyas. Running across seven blocks, this market is much frequented by tourists and remains a local favourite.', 'Aswan', '2024-03-30 11:22:29', '2024-03-30 11:22:29');
INSERT INTO `places` (`id`, `state_id`, `name`, `description`, `address`, `created_at`, `updated_at`) VALUES
(117, 4, 'Gebal Simaan', 'Gebal Simaan is an ancient archaeological site in Aswan, within the Western Quarry, located near the border with Syria. Considered to be an off-beat place in Aswan, the site comprises several giant megaliths believed to have been used for various purposes. Since there are no roads in this area, you can take a camel ride to get here. They can be hired at the Gharb Aswan boat landing.', 'Aswan', '2024-03-30 11:22:29', '2024-03-30 11:22:29'),
(118, 4, 'Wadi al-Sebua', 'Wadi al-Sebua temple is a complex with two temples, literally translating to the Valley of Lions. Located a 40 km ride south of the High Dam in Aswan, this temple was constructed by Ramesses II and was initially named House-of-Amun. Constructed out of stone blocks, this temple has a sanctuary imbibed into the bedrock; out of the three towers, only two have survived.', 'Aswan', '2024-03-30 11:22:29', '2024-03-30 11:22:29'),
(119, 4, 'Temple of Horus at Edfu', 'The Temple of Horus at Edfu is the second-largest temple in Egypt after Karnak. Built during the Ptolemaic period, it is dedicated to the falcon-headed god Horus. It consists of several grand columns and statues, including the famous statue of the goddess Hathor. Many tourism companies offer a day trip to Edfu from Luxor. Edfu is a usual pit stop on a Nile cruise between Luxor and Aswan.', 'Aswan', '2024-03-30 11:22:29', '2024-03-30 11:22:29'),
(120, 4, 'Day Trip to Abu Simbel', 'Abu Simbel complex makes for an excellent day-trip location. Abu Simbel is a complex housing two temples, the Great Temple of Ramses II and the Temple of Hathor. It is a 4-hour trip and hiring a taxi from Aswan to Abu Simbel will cost anywhere between TRY 700- 850.', 'Aswan', '2024-03-30 11:22:29', '2024-03-30 11:22:29'),
(193, 5, 'Stroll Along Hurghada Corniche', 'The corniche in Hurghada is a tourist hub as it has plenty to provide, from beaming beaches, restaurants along the coast and a pier by the sea. The Abdulmoneim Riadh Mosque and Saint Shenouda Coptic Orthodox Church are beautiful places of worship to visit at the corniche. The Desert Rose Aqua Park, Mahmya and the Hurghada Marina are also located at the corniche.', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(194, 5, 'Day Trip to Giftun Islands', 'Giftun Islands are among the most famous Egyptian sea islands located in the Northern Reserves of the Red Sea. There are two separate islands under Giftun Islands – Big Giftun Island and Small Giftun Island. Big Giftun Island is the more popular one among tourists. The trips to the island are usually six to eight hours long and cover most tourist marine activities like snorkelling, fishing, sunbathing, and diving.', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(195, 5, 'Scuba Diving at Strait of Gubal', 'Gubal Strait is known to have the most wrecks and reefs in the entirety of the Red Sea. There are over 30 different diving sites across the strait. Here you’ll find Egypt’s most famous wreck - The Thistlegorm. There are many other well-known wrecks like The Rosalie Moller, Dunraven, Barge Wreck and The Kingston', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(196, 5, 'Desert Safari & Bedouin Dinner', 'Hurghada is known for its majestic deserts, and a safari is the best way to explore them. The desert safaris include quad bikes and venture across hidden dunes, Bedouin villages, ancient landmarks and the east Arabian desert hills, also known as Sahara Park.', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(197, 5, 'Diving at Gota Abu Ramada', 'Gota Abu Ramada is the heart of the Red Sea aquatic life. It is, in fact, known as The Aquarium for its diverse and dense marine life. The diving depth goes up to 15 metres in Gota Abu Ramada. A variety of butterflyfish, parrotfish, groupers, sweetlips, moray eels, goatfish, barracudas, stonefish and jacks can be spotted and sometimes even turtles, dolphins, blue spotted stingrays and eagle rays too.', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(198, 5, 'Walk Along Hurghada Marina', 'Hurghada Marina is a beautiful place with strikingly picturesque views where people usually go for a refreshing stroll and delicious food. It is located near the main street of Sakala called Sheraton Road and has two entrances. A sightseeing train keeps going around the place, which children especially love.', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(199, 5, 'Go Snorkelling', 'At Hurghada, the waters are clear and have immense marine life for one to have the best snorkelling encounter. The Giftun Island National Park is Hurghada\'s most famous spot for snorkelling. Another recommendation is Makadi Bay. Here turtles, sting rays, puffers, barracuda, octopus, and morays can be found.', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(200, 5, 'Shopping in Hurghada Souks', 'El Souk in Hurghada is a buoyant market area and famous shopping arena for souvenirs, clothing, jewellery and food.  The atmosphere is one of a kind. The produce at the market is known to be extremely rich and in a huge variety of fruits, vegetables and spices. You will find some of the best coffee shops in this area too.', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(201, 5, 'Submarine Tour', 'Dive in and discover the underwater world of the Red Sea with the Middle East’s only submarine— The Sinbad. Designed for 44 passengers and 2 crew members, the submarine goes up to a depth of 22 metres.', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(202, 5, 'Astronomical Night & Stragazing', 'Stargazing at Hurghada is the city’s prized possession and can be witnessed with the astronomical night tour. The tour begins at dusk and sets off into the calm deserts with the starry night sky. Away from the lights and noise of the city, the sky’s view is simply breathtaking and surreal.', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(203, 5, 'Hurghada Grand Aquarium', 'Hurghada Grand Aquarium is a popular tourist attraction that houses 24 different galleries under it. These exhibits include the marine aquarium, freshwater aquarium, rainforest, fossil museum, mini zoo, whale valley, animal zoo, Bedouin life exhibit, Arabian tent, and more. More than 1,200 marine animals of diverse species can be found there, including stingrays, eagle rays, green sea turtles, nurse sharks, and guitarfish.', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(204, 5, 'Alf Leila Wa Leila Show', 'Hurghada’s 1001 Night show is hosted at Alf Layla Wa Layla - one of the oldest Arabic palaces in Egypt. Exploring the palace in itself is an exciting encounter. The show, however, itself has fire shows, sound and light shows and belly dancing. There are also many other traditional dances like Pharaonic, Nubian, Bedouin and Tanoura dancing. The Tanoura dance is performed by Sufi men.', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(205, 5, 'Hurghada Museum', 'The story of Egypt is narrated by over 2000 artefacts in the Hurghada Museum. There are various sculptures, paintings, inscriptions and old artefacts around the museum. The themes and exhibitions range from different eras like Ancient Egyptian, Greco-Roman, Jewish, Christian, Islamic, and Modern.', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(206, 5, 'Senzo Mall', 'Senzo Mall is the only mall of its kind in the Red Sea area, located among some of the top luxury hotels and in close proximity to Hurghada International Airport. It has a diverse range of shops, from local brands to international ones offering the latest trendy fashion collection, home decor items, a good selection of home appliances, Egyptian handicrafts, and more products.', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(207, 5, 'Enjoy Quad Biking', 'Quad biking in Hurghada is every adventurer’s wildest dream. The quad biking tours last over 3 to 4 hours with a guide that first provides important instructions and a test drive. After biking, the tour stops at a Bedouin village for some delicious Bedouin tea and other drinks for refreshment.', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(208, 5, 'Mini Egypt Park', 'Mini Egypt Park is an open-air museum displaying miniature buildings and models of Egypt. It has all the main attractions of Egypt, like the pyramids of Giza, the Sphinx, the Abu Simbel temple, the famous Karnak Temple, and more. Guides are also available.', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(209, 5, 'Sand City Hurghada', 'Sand City is the one and only open-air museum of sand sculptures in the Middle East. There are over 42 sculptures and 17 reliefs by different artists worldwide. There are different themes in sand art, from mythology to superheroes. After visiting Sand City, there are sculpting and sand art workshops which should definitely be given a go since it is a unique and enjoyable experience.', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(210, 5, 'Sliders Cable Park', 'Sliders Cable Park in El Gouna unfolds itself with many different attractions like an aqua park, wake park, pool club and beach. This complex is one of the largest Olympic standard cable parks in the world and the only cable park in Egypt.', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(211, 5, 'Makadi Water World', 'Makadi Water World is the largest water park in Makadi, with over 50 water slides. Some of the famous slides are the black hole slide, the aqua tube slide, the twister, the space boat, the body slide, and more. There is also a surf simulator, lazy river, and a wave pool, adding to their array of fun water rides.', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(212, 5, 'Mahmya Island', 'Mahmya Island is located on the Red Sea\'s southern end of Giftun Islands. Its white sandy beaches and clear-as-day blue waters make it a popular attraction. One of the best beaches in Egypt; the view of the beach is truly magnificent and breathtaking. It is also popular for snorkelling and diving.', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(213, 5, 'Al Mina Mosque', 'Masjid Al-Mina Al-Kabir is the largest mosque in the governorate of the Red Sea and is a major tourist attraction of Hurghada. The stark white marble of Al Mina mosque and the two 40-metre-high minarets stand majestically tall on the Red Sea waterfront. The insides of the mosque are equally magnificent, complete with detailed chandeliers, elaborate niches, engraved walls, and a 25-metre-high dome.', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(214, 5, 'Old Town Sahl Hasheesh', 'Sahl Hasheesh is a bay along the coast of the Red Sea near Hurghada. The area around (Old Town) Sahl Hasheesh Bay has been developed over the years to transform into a resort town. There are restaurants, hotels, apartments, shops, a long pier over the Sunken City and a gorgeous Piazza with colourful lights. There is a partially submerged artificial city with artificial reefs that attract fish and is a famous spot for snorkelling and diving.', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(215, 5, 'Boat Tour to Utopia Island', 'Utopia Island is one of the best destinations near Hurghada for water sports activities and beach days. It can be visited on a boat ride and is popular for snorkeling, fishing, banana boat riding and sofa riding.', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(216, 5, 'Day Trip to Luxor', 'Luxor is famously known as the world\'s greatest open-air museum. Located in Southern Egypt, on the east bank of the River Nile. Luxor is a beautiful city. It has some of the world\'s most famous temples and tombs, a sprawling desert and the famous Western Valley Ruins.', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(217, 5, 'Boat Trip to Ras Mohammed National Park', 'The Ras Mohammed National Park is Egypt\'s first national park and marine reserve. It is located on the Sinai Peninsula, 12 kilometres from Sharm El Sheikh city. The National park is spread over a vast desert with sand dunes, mountains, and valleys overlooking the exquisite red sea reef.  Visitors can enjoy snorkelling and scuba diving amongst the red sea\'s natural reefs and aquatic animals.', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(218, 5, 'Thistlegorm Wreck Diving', 'The Thistlegorm Wreck Diving site is one of the most popular diving sites of the Red Sea in the Sinai Peninsula. It is located 40 km from Sharm El Sheikh on the peninsula\'s west coast. The central attraction of the diving site is a sunken world war II cargo ship. The ship, which is split into two halves, is perfectly preserved at the bottom. Ruins of several jeeps, bikes, arms, and ammunition are spread within and across the ship.', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(219, 5, 'Naama Bay', 'Naama bay comprises two main areas, a beach area and a promenade complex with shops and restaurants. It is located near El Salam Road in Sharm El Sheikh. It is visited for diving safaris, snorkelling with fish, or chilling under umbrellas by the beach. The pedestrian walkway, known as the El Salam promenade road, is built right behind the beach for a breezy stroll or shopping experience.', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(220, 5, 'Yolanda Reef Site Diving', 'The Yolanda Reef Site is one of Egypt\'s most popular diving and snorkelling sites located within Ras Mohammed National Park. The Reef extends to over 800m with natural caves and strong currents. It is the site of the wreck of Jolanda, a cargo ship. The remains of the sunken ship can still be seen on the diving expedition.', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(221, 5, 'Saint Catherine\'s Monastery', 'St. Catherine’s monastery is a renowned UNESCO world heritage site. The ancient pilgrimage exists at the foot of the mountain in Saint Catherine town, Sinai Peninsula. The Oldest inhabited monastery and library in the world, it is home to texts and manuscripts in some of the most ancient languages in the world.', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(222, 5, 'Sunrise Hike to Mount Sinai', 'Mount Sinai is one of the most renowned tourist spots in Egypt. It is also known as the St. Catherine Hike and is home to the sacred pilgrimage site of St Catherine’s cathedral. There are two trails en route to the mountain. The oldest and easiest is the Camel trail, which is an upward-going trail. The name, as it suggests, is due to the trail\'s flatness, which allows camel rides to the summit. The second trail taken while travelling back to the monastery at the foot of the mountain is called the steps of repentance. It is famous for the 3750 steps believed to have been made by a repenting monk. A local guide and Government clearance are mandatory to hike the sacred mountain.', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(223, 5, 'Blue Hole Diving', 'The notoriously famous Blue Hole diving site is one of the most dangerous diving sites across the peninsula. It is a deep natural sinkhole surrounded by a vertical coral reef wall. It is located at a 10km distance from Dahab on the red sea coast. The site is famous for snorkelling and diving within its crystal-clear waters.', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(224, 5, 'Water Sports in Sharm El Sheikh', 'The Sharm El Sheikh resort city is famous for its water sports and adventure activities with its beaches, pools, and coastal reefs. Enjoy various recreational water sports activities such as kayaking, waterboarding, diving, snorkelling, boating, and more. Starfishes, sea urchins, squids, crustaceans, sharks, Eels, and lobsters are only some of the marine animals and fishes found in the Sharm waters.', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(225, 5, 'Desert Camel Ride in Sharm El Sheikh', 'Desert camel ride is a much-coveted activity in Sharm-el-Sheikh, Egypt. The tours can last anywhere from three hours to half a day depending on the package you choose. These tours will take you through the dune-filled sands of the Sinai Desert. You can even combine your camel ride tour with other activities like a quad bike ride, a Bedouin dinner, enjoy a belly dancing and fire breathing show, camping under the night sky, and stargazing through a high-powered telescope.', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(226, 5, 'Day Trip to Dahab', 'The coastal city of Dahab is located in the Gulf of Aqaba, about 2 hours from Sharm El Sheikh. Tourists can take a day trip from the resort island to downtown Dahab, with its relaxed shoreline, seaside restaurants, and shops embedded in the local Bedouin culture. The city is most famous for its diving sites. The famous Dahab blue hole is a popular diving and snorkelling site.', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(227, 5, 'Tiran Island', 'Tiran Island is a popular tourist destination near Sharm El Sheikh. Water sports such as snorkelling or scuba diving amongst the four rich coral reefs near the island are popular activities while on a tour of Tiran Island.', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(228, 5, 'Old Market Sharm El Sheikh', 'The Sharm El Sheikh old market is a vibrant souq-style marketplace located in the Qesm Sharm Ash Sheikh region. The central attraction of the market is the El Sahaba Mosque. The old market itself is filled with shops selling souvenirs, food, groceries, clothes, jewellery, and more. You can find Lampshades, lanterns, Arabic perfumes, oils, and local delicacies such as fruits and nuts.', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(229, 5, 'Turtle Bay Boat Trip', 'Turtle Bay in Sharm-el-Sheikh, located off Abu Dabbab Beach, is a drift ideal for divers of all levels and expertise. The drift is supported by a rich marine biosystem across a sandy plateau that hosts hordes of green turtles every year during their visiting time. Manatees can also be spotted here amid Turtle Bay\'s lush seaweeds and coral reefs. One-day boat trips to Turtle Bay usually come with all snorkelling and diving gear provided.', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(230, 5, 'SOHO Square', 'SOHO Square is one of the most popular shopping and entertainment centres in Sharm El Sheikh. The square is located on White Knight Beach. Famous for its vibrant nightlife, the square boasts many bars, cafes, and a club. The central attraction is the dancing fountain with a light and sound show at night.', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(231, 5, 'Al Mustafa Mosque', 'The Al Mustafa Mosque is the largest in Sharm El Sheikh. It is located close to Naama bay on Al Rewaysat Road. The signature features of the mosque are its two tall standing minarets and a huge dome made of carved stone. The mosque\'s exterior is lit up with white lights giving it a mesmerising night view.', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(232, 5, 'Hollywood Sharm El Sheikh', 'Hollywood Sharm El Sheikh is an amusement park, resort, and entertainment centre located on Peace Road in the El-Salam district. The central attraction here is the magnificent fountain show built inside a small lake with paddle boating. Jurassic amusement is popular among kids for its adventure rides, merry-go-round, and go-karting. There is also a 7D cinema in the centre.', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(233, 5, 'Al Sahaba Mosque', 'The Al Sahaba Mosque is the second-largest mosque in Sharm El Sheikh. It is the central attraction of the old market in the Qesm Sharm Ash Sheikh region. The mosque is built with beautiful minarets, high ceilings, and ornate gold domes. At a glance, it resembles a magnificent palace with extravagant architecture, an open courtyard with fountains, and a staircase leading to the entrance.', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(234, 5, 'Visit Cairo & Pyramids of Giza', 'The Pyramids of Giza in the Egyptian city of Cairo are one of the most popular day tour sites in Sharm El Sheikh. The historical site is part of the seven wonders of the ancient world. Travellers can visit the Great Pyramid or the pyramid of Khufu, the tallest of the three pyramids. The famous limestone statue of a mythical sphinx, with the head of a human and the body of a lion, is located right across the pyramids.', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(235, 5, 'See the Colored Canyon', 'About 90 kms north of Dahab lies the Colored Canyon or Salama Canyon, which is said to be around 800 meters long. The Red Canyon derives its name from the phenomenon that occurs when sunlight hits the granite rocks of the canyon. The rocks illuminate with a reddish glow, making the Salama Canyon a magnificent experience.', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(236, 5, 'Shark Bay Beach', 'Sharks Bay Beach has clear waters, fine sand, and shallow depth, which make it a popular spot for swimming. The beauty of the marine fauna and coral reefs here is unmatched, so definitely go snorkeling or diving. Encourage yourself to water sports activities like kitesurfing and windsurfing with professional help and stores to rent equipment. The beach has cafes, restaurants, and sit-down eateries with a diverse food menu!', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(237, 5, 'Ras Um Sid Beach', 'Referred to as ‘Golden Beach’ on maps but Ras Um Sid Beach by the locals, the waters are known for their crystal-clear clarity and vibrant coral reefs with giant clams that dress the waterfront, a popular spot for swimming, snorkeling, and scuba diving. You can soak up the sun whilst enjoying the natural cliffs and high surrounding mountains. Spot the regal angelfish, red sea bannerfish, and parrotfish up close during your dive. The beach is surrounded by Red sea resort hotels and individual bungalows. Don’t fret over lounges, sun beds, and umbrellas since many are available and a few shops sell them too.', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(238, 5, 'Snorkel & Scuba Dive at Dahab Blue Hole', 'Dahab Blue Hole is a popular diving location in the southeast of Sinai, on the coast of the Red Sea. Blue Hole is one of the most challenging diving locations on earth and attracts skilled divers from around the globe. It is surrounded by a reef wall that is almost vertical and has a maximum depth of about 120 meters.', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(239, 5, 'Learn Scuba Diving or Free Diving', 'With over 50 diving centres, Dahab is an excellent place for all sorts of Divers. The majestic coral backdrop and shallow waters of most diving spots in the city make it beginner friendly. PADI and CMAS courses are offered for beginners throughout Dahab. Sessions can be booked online or on-site. There are about 20 dive sites around Dahab, including the Bell, the Canyon, Eel Garden and Lighthouse reef.', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(240, 5, 'Sunrise Hike to Mount Sinai', 'Mount Sinai is one of the most renowned tourist spots in Egypt. It is also known as the St. Catherine Hike and is home to the sacred pilgrimage site of St Catherine’s cathedral. There are two trails en route to the mountain. The oldest and easiest is the Camel trail, which is an upward-going trail. The second trail taken while travelling back to the monastery at the foot of the mountain is called the steps of repentance. A local guide and Government clearance are mandatory to hike the sacred mountain.', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(241, 5, 'Saint Catherine\'s Monastery', 'St. Catherine’s monastery is a renowned UNESCO world heritage site. The ancient pilgrimage exists at the foot of the mountain in Saint Catherine town, Sinai Peninsula. The Oldest inhabited monastery and library in the world, it is home to texts and manuscripts in some of the most ancient languages in the world.', 'Red-Sea', '2024-03-30 11:26:55', '2024-03-30 11:26:55'),
(242, 5, 'See the Colored Canyon in Sinai', 'About 90 kms north of Dahab lies the Colored Canyon or Salama Canyon, which is said to be around 800 meters long. The Red Canyon derives its name from the phenomenon that occurs when sunlight hits the granite rocks of the canyon. The rocks illuminate with a reddish glow, making the Salama Canyon a magnificent experience.  Unfortunately, the canyon from which most of the pictures were captured has remained closed for more than a decade. Instead, visitors are guided to two canyons situated along the route to St. Catherine, both of which, while scenic, are relatively short and lack the same level of intrigue.', 'Red-Sea', '2024-03-30 11:26:56', '2024-03-30 11:26:56'),
(243, 5, 'Kitesurfing in Dahab', 'Dahab is windier than any other kitesurfing location in Egypt because it is situated in the Gulf of Aqaba, where the wind funnels down into the Gulf. Dahab has many kitesurfing sites that are great for beginners and advanced kite surfers. In addition, there are flat lagoons with shallow water, deep lagoons, and thrilling kitesurfing tours to remote lagoons only reachable by foot or camel.', 'Red-Sea', '2024-03-30 11:26:56', '2024-03-30 11:26:56'),
(244, 5, 'Sinai Desert Safari', 'With its varied landscapes and breathtaking vistas, Sinai\'s environment comes second to none. Desert safari tours generally include dune bashing, ATV rides, Camel back riding, dinner by the dunes, stargazing and cultural experiences like sipping on traditional Bedouin tea. These tours can be booked online.', 'Red-Sea', '2024-03-30 11:26:56', '2024-03-30 11:26:56'),
(245, 5, 'Blue Lagoon', 'The Blue Lagoon in Dahab is a large, sheltered pond with still-crystal-clear water. It is shielded from the untamed waters of the Gulf of Aqaba by a low, arched strip of sand and rock. It is popular for swimming, snorkeling or sunbathing. It is also a great place to go kitesurfing owing to its steady waters and calm environment. Stores and cafes are also located nearby', 'Red-Sea', '2024-03-30 11:26:56', '2024-03-30 11:26:56'),
(246, 5, 'Dahab Salt Lake', 'One of Egypt\'s most beautiful lakes, the Salt Lake of Dahab, has a view of the Wadi El Hitan dunes and is situated in Fayoum. Also known as the magic lake, it is known for its healing properties like nourishing and smoothening skin, relief from joint pain, and relaxing muscles. Also, its waters are known for healing blue mud, like the Dead Sea. You can swim, snorkel and windsurf in the Salt Lake.', 'Red-Sea', '2024-03-30 11:26:56', '2024-03-30 11:26:56'),
(247, 5, 'Rock Climbing in Dahab', 'Rock Climbing is an excellent activity to do in Dahab around the Sanai range. Many companies offer beginners a rock climbing experience with a few rock climbing sessions. Dahab\'s most visited rock climbing sites include granite boulders in valleys with sand as the ground surface, Waterfalls, Camel Canyon, Bedouin Garden, and Qnai Adshan. Bookings can be made online or on-site.', 'Red-Sea', '2024-03-30 11:26:56', '2024-03-30 11:26:56'),
(248, 5, 'Ras Abu Galum to Blue Hole Hike', 'A Bedouin village to the north of Dahab, Ras Abu Galum is a great place to swim and snorkel. In addition, the hiking trail from Ras Abu Galum to Blue Hole is extremely popular among tourists. The trail is about 7.21 miles, with a maximum elevation of 144 ft and has an easy to moderate difficulty level. It usually takes two and a half hours to complete this hike.', 'Red-Sea', '2024-03-30 11:26:56', '2024-03-30 11:26:56'),
(249, 5, 'Visit Cairo to See Pyramids of Giza', 'Tourists often take a day trip to Cairo from Dahab. Multiple buses and taxi options are available to and from these locations. After an overnight journey of 6 hours, start your trip by visiting the iconic Pyramid of Giza and the Egyptian Museum, and enjoy a sunset cruise across the Nile. Frequent buses run across these two cities throughout the day. The average cost per person for the journey should be around TRY155.', 'Red-Sea', '2024-03-30 11:26:56', '2024-03-30 11:26:56'),
(250, 5, 'Take 1 Day Trip to Petra', 'Petra is an ancient city carved out of variegated sandstone mountains. This 2,000-year-old city makes for a great day trip in Egypt with its jaw-dropping ruins, elaborate mausoleums, and magnificent temples. The city contains marvels such as the narrow yet long Siq, the Treasury, the Temple of Winged Lions, the Great Temple and even a dam. It is a city for enthusiasts of history and marvellous architecture.', 'Red-Sea', '2024-03-30 11:26:56', '2024-03-30 11:26:56');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `reviewable_type` varchar(255) NOT NULL,
  `reviewable_id` bigint(20) UNSIGNED NOT NULL,
  `star_rating` int(10) UNSIGNED NOT NULL,
  `comments` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `reviewable_type`, `reviewable_id`, `star_rating`, `comments`, `created_at`, `updated_at`) VALUES
(1, 19, 'App\\Models\\Place', 22, 4, 'nice place i love it!', '2024-04-23 06:17:50', '2024-04-23 06:17:50'),
(2, 25, 'App\\Models\\Place', 22, 4, 'nice place i love it!', '2024-04-23 07:10:22', '2024-04-23 07:10:22'),
(3, 25, 'App\\Models\\Place', 22, 1, 'bad', '2024-04-23 07:31:02', '2024-04-23 07:31:02'),
(4, 18, 'App\\Models\\Hotel', 1, 4, 'nice', '2024-04-25 17:54:15', '2024-04-25 17:54:15'),
(5, 25, 'App\\Models\\Place', 22, 1, 'bad', '2024-04-29 17:45:52', '2024-04-29 17:45:52'),
(6, 25, 'App\\Models\\Place', 22, 1, 'bad', '2024-04-29 17:46:15', '2024-04-29 17:46:15'),
(7, 25, 'App\\Models\\Place', 22, 1, 'bad', '2024-04-29 17:46:25', '2024-04-29 17:46:25');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Alexandria', NULL, NULL),
(3, 'cairo', NULL, NULL),
(4, 'aswan', NULL, NULL),
(5, 'red-sea', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trips`
--

CREATE TABLE `trips` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `city` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `image`) VALUES
(8, 'Ahmedghazy', 'Ahhm@gmail.commjkmkmkf', NULL, '$2y$12$i4qHoLfN6fbsHdMZ3g4GTu0RH2DFoqcGwF4SfNYRuLi7Nr3P8GnY2', NULL, '2024-03-30 12:17:25', '2024-03-30 12:17:25', ''),
(9, 'Ahmedghazy', 'Ahhm@gmail.commjkmkmkffgd', NULL, '$2y$12$8QDd6ISeVMiPy8833G1q1OMUagTnUuTomAdWBOok95aRQwJpWOqq2', NULL, '2024-03-30 12:19:01', '2024-03-30 12:19:01', ''),
(10, 'Ahmedghazy', 'Ahhm@gmail.comsaaa', NULL, '$2y$12$RCOAttjRgW90O1Ad/aQIZOmCiKQol5UR2ZzRqMHjP5B4dpRlUWzGa', NULL, '2024-03-30 12:44:32', '2024-03-30 12:44:32', '1711809871.png'),
(11, 'Ahmedghazy', 'Ahhm@gmail.comsaa', NULL, '$2y$12$fEgF0Bc5cmlimBA62qRb9uuM910Zig1osMOcjAUxImwRGA1Zkrx3y', NULL, '2024-04-17 16:23:10', '2024-04-17 16:23:10', '1713378189.png'),
(12, 'Ahmedghazy', 'Ahhm@gmsail.comsaaa', NULL, '$2y$12$ytVQCMr8old1JEC9JhKlOO0vuWP1iar1SPtIOaSFhnhTL47KiAKs2', NULL, '2024-04-17 16:36:20', '2024-04-17 16:36:20', '1713378977.png'),
(13, 'Ahmedghazy', 'Ahhm@gmsail.comsaaasa', NULL, '$2y$12$hyBQIh8ktD2Dte4cI9Ed7OU87St82oeYdNbsfO/ybY4KhQUPYL62a', NULL, '2024-04-17 16:37:51', '2024-04-17 16:37:51', 'null'),
(14, 'Ahmedghazy', 'Ahhm@gmsail.comsaaasas', NULL, '$2y$12$.5tAKllxRBqbBynv7x9Uh.chKrzL7Fz3FGGPZUcZt0zt5dvC/J22.', NULL, '2024-04-17 16:38:25', '2024-04-17 16:38:25', 'null'),
(15, 'Ahmedghazy', 'Ahhm@gmsail.comsaaasasas', NULL, '$2y$12$/90sAMKTKvaQnUVT595/buWve2ZSiWWJCB0eiCNMSwqJ/aS9CV8Si', NULL, '2024-04-17 16:38:54', '2024-04-17 16:38:54', 'null'),
(16, 'Ahmedghazy', 'Ahhm@gmsail.comsaaasaads', NULL, '$2y$12$X1IuHCGiu0ehsEjJz36pQeMnSxGYlRGWCigaf5UOvHjfNcBOXJaNO', NULL, '2024-04-17 17:09:10', '2024-04-17 17:09:10', 'null'),
(17, 'Ahmedghazy', 'Ahhm@gmsail.comsaaasaadsw', NULL, '$2y$12$.MbRfEhy2DdrOYJgK6sAyOH5tRkhd2bK7Pk0p7s3qHqK.1B2AQGx.', NULL, '2024-04-17 17:10:20', '2024-04-17 17:10:20', 'C:\\xampp\\tmp\\phpFC4.tmp'),
(18, 'Ahmedghazy', 'Ahhm@gmsail.cow', NULL, '$2y$12$NIwiYIyBhdFcO6hWoABKLOINgx2.yUHWpbb41svKc9mNE/kXnaUfy', NULL, '2024-04-17 17:16:58', '2024-04-17 17:16:58', '1713381417.png'),
(19, 'Ahmedghazy', 'Ahhm@gmsail.cows', NULL, '$2y$12$xdFlgOUE8IFZ9FcUDZTBeuKViAtJ3bs5mpZn8YiXacKv.KE8jV20G', NULL, '2024-04-18 07:15:53', '2024-04-18 07:15:53', '1713431752.png'),
(20, 'Ahmedghazy', 'Ahhm@gmsail.cowsa', NULL, '$2y$12$q0ywNQ6vhSzgFcMPnosxmuuQ3jvZHSXhupJfOy.0G/Z1OMsS.1SHu', NULL, '2024-04-18 07:44:10', '2024-04-18 07:44:10', '1713433449.png'),
(21, 'Ahmedghazy', 'Ahhm@gmsail.cowsaa', NULL, '$2y$12$DsAWqcErC8xHUAXZdl7LC.Y2T36qznfxyW2eFWdKFa0yRwrQqD9gy', NULL, '2024-04-18 07:45:19', '2024-04-18 07:45:19', '1713433517.png'),
(22, 'Omarzalata', 'Omarzalata@gmail.com', NULL, '$2y$12$Uh6ALWIOb3xQJbCold4qouf.vAj1uD/3qXrkbIfVzrG23SAJi5i3W', NULL, '2024-04-19 09:36:47', '2024-04-19 09:36:47', '1713526605.jpg'),
(23, 'Ahmedghazy', 'Ahhm1@gmsail.cowsa', NULL, '$2y$12$aPny.o.5XuYzUNjUJTYT.eoUI4HgHqB0sQBUabYWMBuyQjwoi77V.', NULL, '2024-04-19 21:48:33', '2024-04-19 21:48:33', 'null'),
(24, 'Ahmedghazy', 'Ahhm@gmsail.cowsaas', NULL, '$2y$12$MsITiObZaeL9hBomUmL1OOH/peDWpMK3fDLj8kz.x38LGyxpYISmK', NULL, '2024-04-19 22:13:42', '2024-04-19 22:13:42', 'null'),
(25, 'Ahmed Ebrahem', 'Ahhm@gmsail.comm', NULL, '$2y$12$KxWvEBzLCYm9YPr5LtxQ..UGkP10r22TQmoxpMVoxpOnLIcWcqIpS', NULL, '2024-04-23 07:09:39', '2024-04-23 07:09:39', 'null'),
(26, 'omar', 'omaee@gmail.com', NULL, '$2y$12$kRCetRUNMq0rusaQa0T73.V.xiSTwRHr5gZmYEw0yMuaH8NG5Jdkm', NULL, '2024-04-26 11:54:33', '2024-04-26 11:54:33', '1714143271.jpg'),
(27, 'omar1', 'omar1@gmail.com', NULL, '$2y$12$LMgk0DaJCHS.lxP/ozCHFOnx/qX8P9lWXiz18ixS0uukolyNfb3rC', NULL, '2024-04-26 12:16:47', '2024-04-26 12:16:47', '1714144606.jpg'),
(28, 'omar12', 'omar12@gmail.com', NULL, '$2y$12$cjYi8d9tdCi9XT2Qs3WB1OJ0nY1WjX.Ozt67sGa7NzkkPdE.CMBu.', NULL, '2024-04-26 14:25:30', '2024-04-26 14:25:30', 'null'),
(29, 'omar12455', 'omar1254545@gmail.com', NULL, '$2y$12$xYFljZ8wfW9fTUxmpjKhaeVSFe2s9E99JFEU24C38Zpq9WqVbE8PK', NULL, '2024-04-26 14:41:04', '2024-04-26 14:41:04', 'null'),
(30, 'omarewql;ekjqw', 'omar1234567@gmail.com', NULL, '$2y$12$Ws8QaKoiMUCheBbIfRmlgOJqSP8gm7rYL.OzfE4KKromHgPUFFeeq', NULL, '2024-04-26 14:56:12', '2024-04-26 14:56:12', 'null'),
(31, 'omarqqqwqwqwqwqw', 'omarteqwesadsaljkh@gmail.com', NULL, '$2y$12$L5MrRPEkp8a/xFw37Xssu..yt0xHwPGM/0xY0QSDtwO39WruD05ci', NULL, '2024-04-26 15:00:27', '2024-04-26 15:00:27', 'null'),
(32, 'b7bk_ya_Ghazy', 'omarzalatarrrwew@gmail.com', NULL, '$2y$12$1nYI8.SBkd4VG7qUzLdvieehdB5Nfxip5F77lzk1HQpFtkNy7zr4.', NULL, '2024-04-26 15:02:14', '2024-04-26 15:02:14', 'null'),
(33, 'omar12455', 'omar12542545@gmail.com', NULL, '$2y$12$/2BCo2hhhYBZAGLIca1tOepHrHnC/sV/TXBQnCoHrW6aoh/AKELaW', NULL, '2024-04-28 15:37:37', '2024-04-28 15:37:37', 'null'),
(34, 'Ahmedghazy', 'Assdhhm@gmsail.cowsa', NULL, '$2y$12$WxOtRJcSm8AiEuChGGpiSu/CFaGF2D5b9FtLKvNsFUihIUCc/UwFu', NULL, '2024-04-28 15:52:45', '2024-04-28 15:52:45', 'null'),
(35, 'omar123', 'zalata@gamil.com', NULL, '$2y$12$JQPa1K4S3K9lHQ3NAF1fM.D3hjFzRlJdyVD5PulSY7RqQKt33fS5e', NULL, '2024-04-28 16:00:47', '2024-04-28 16:00:47', 'null'),
(36, 'omartttt', 'omarzawqwerd@gmal.com', NULL, '$2y$12$riiMjzJ6QmJLpcLnVyywU.0NtU3fXDTldp2Sct8oWlrV3c4XH5YEW', NULL, '2024-04-28 16:39:35', '2024-04-28 16:39:35', 'null'),
(37, 'omar', 'omarzalata2002@gmail.com', NULL, '$2y$12$Lm2njERUAixGmllb5Gs8wunj2AF3J/5gjKgedNNo3a79HMsGk517.', NULL, '2024-04-28 17:32:04', '2024-05-03 17:28:22', 'null'),
(38, 'Ahmed Ebrahem', 'axxgha.zy01@gmail.com', NULL, '$2y$12$.XW.8VBoI/mOonIItQmCxuQ99iJsUIKpcGwWwm8uacUCrLVZiv4Je', 'oUdqZdRrqe0p3oYFVfjUNbvt3cqyOzChRD1V5cMRPqCcq9vhFXBHHyUg7LMe', '2024-04-29 11:22:36', '2024-05-03 17:18:36', 'null'),
(39, 'omar', 'omar@gmail.com', NULL, '$2y$12$c0DsBglZyxBSD4DNId8qZeH7qisgCoKzWW6H/S92e03PaYXr/w9gq', NULL, '2024-04-29 13:30:59', '2024-04-29 13:30:59', 'null'),
(40, 'omar', 'omar3656@gmail.com', NULL, '$2y$12$nBuyDp81D47GGK/m3Bl5teCk18igPaChTp6todEPiggbibZpanJse', NULL, '2024-04-29 13:43:40', '2024-04-29 13:43:40', 'null'),
(41, 'mohamed', 'mohamed@gmail.com', NULL, '$2y$12$Oe7DsnJfnOkFYMSXUFz6OuFCvIeH2nGaThrRZM3eMhXv0DWAVjXdi', NULL, '2024-05-01 13:43:03', '2024-05-01 13:43:03', 'null'),
(42, 'Mohmaed', 'Mo@gmail.com', NULL, '$2y$12$3LarRABKGPjZDiyDzlR1MOq.CiIfUzluy8zGE6tw1JmSbbqOB4ttO', NULL, '2024-05-01 13:48:09', '2024-05-01 13:48:09', 'null'),
(43, 'Ahmed Ghazyررء', 'ebrahema232@gmail.com', NULL, '$2y$12$FMS4Z.3yljZW6.uHah9NqO7L3afkl2qz7QKMk.VhGTRwUeV2mg4y6', 'VI8oYWQuuMY0UAaqOlqTqz1TVWeAaszLjD7A3nXCdzNf7hqSuaDgkzZQLVeb', '2024-05-01 15:36:43', '2024-05-03 14:25:26', 'http://127.0.0.1:8000/storage/images/1714756993.png'),
(44, 'Ammar Yasser', 'test123@gmail.com', NULL, '$2y$12$H79Os2Dl5LBTYqfXlhmIQeMPafps.VGMtoejmSPbo8Hu4oRP.G902', NULL, '2024-05-20 16:08:22', '2024-05-20 16:08:22', 'null');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_user_id_foreign` (`user_id`),
  ADD KEY `favorites_favoritable_type_favoritable_id_index` (`favoritable_type`,`favoritable_id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotels_state_id_foreign` (`state_id`);

--
-- Indexes for table `hotel_images`
--
ALTER TABLE `hotel_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotel_images_hotel_id_foreign` (`hotel_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_place_id_foreign` (`place_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otps`
--
ALTER TABLE `otps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `otps_id_index` (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`),
  ADD KEY `places_state_id_foreign` (`state_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_reviewable_type_reviewable_id_index` (`reviewable_type`,`reviewable_id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trips`
--
ALTER TABLE `trips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trips_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=386;

--
-- AUTO_INCREMENT for table `hotel_images`
--
ALTER TABLE `hotel_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=513;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=306;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `otps`
--
ALTER TABLE `otps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `trips`
--
ALTER TABLE `trips`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `hotels`
--
ALTER TABLE `hotels`
  ADD CONSTRAINT `hotels_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `hotel_images`
--
ALTER TABLE `hotel_images`
  ADD CONSTRAINT `hotel_images_hotel_id_foreign` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_hotel_id_foreign` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `images_place_id_foreign` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `places`
--
ALTER TABLE `places`
  ADD CONSTRAINT `places_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `trips`
--
ALTER TABLE `trips`
  ADD CONSTRAINT `trips_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
