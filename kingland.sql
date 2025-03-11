-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2025 at 04:09 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kingland`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `content`, `created_at`, `updated_at`) VALUES
(7, 'Discounts for bulk orders available!!', '2025-01-26 01:56:25', '2025-01-26 01:56:25'),
(9, 'Sample Marquee content', '2025-01-26 01:56:56', '2025-01-26 01:56:56'),
(13, 'Lorem ipsum dolor sit amet.', '2025-02-23 21:14:37', '2025-02-23 21:14:37');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `content` longtext NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `content`, `image_url`, `created_at`, `updated_at`) VALUES
(3, 'Kingland Marketing Company Inc. Announces Mayor\'s Permit Renewal for FY 2025 and Celebrates 2024 Growth Milestones', 'January 26, 2025 – Santa Rosa, Laguna Kingland Marketing Company Inc. is delighted to announce the successful renewal of its Mayor’s Permit for Fiscal Year 2025, ensuring its continued operations and dedication to delivering innovative, customer-centric solutions. “Our renewed permit allows us to confidently move forward in fulfilling our mission to serve our clients with integrity and excellence,” said Richard Abanilla, Chairman of the Board, President, and CEO. 2024: A Remarkable Year Despite a Mid-Year Start Starting operations in the middle of 2024, Kingland Marketing Company Inc. achieved a phenomenal milestone by generating an impressive ₱5.5 million in revenue in its inaugural year. This remarkable achievement reflects the company’s strong strategy, dedicated team, and the trust placed in it by its clients and partners. Key contributors to this success include: Logistics Services: Generating the highest revenue share, this division thrived thanks to strategic partnerships with major players, providing seamless and efficient logistics solutions. Government Projects: As the second-largest revenue source, government projects showcased Kingland Marketing’s capability to deliver high-quality services while maintaining transparency and compliance. Private Company: The company’s supply of janitorial products, consumables materials, and other essentials to private companies rounded out the year’s performance, meeting the unique needs of its diverse client base. “We are immensely proud to have reached ₱5.5 million in revenue despite only starting operations mid-year,” said Katrina Abanilla, COO and VP. “This achievement highlights the hard work of our team and the trust we’ve earned from our clients. It’s a solid foundation for even greater success in 2025.” Looking Ahead to 2025 With the Mayor’s Permit renewed, Kingland Marketing is ready to build on its strong start, aiming to expand its logistics services further, strengthen government partnerships, and enhance its offerings to private sector clients. “2024 was just the beginning,” said Niño Feland Mendoza, CFO. “We’re excited to grow our revenue and explore new opportunities that will drive even greater value for our clients and stakeholders.” Kingland Marketing Company is committed to delivering exceptional results, fostering innovation, and contributing positively to the local economy as it continues its journey in 2025.', 'not null', '2025-01-28 19:46:54', '2025-01-28 19:46:54'),
(7, 'test blog yes', 'asdfasdfsdfhgasdklfjhaskldfa kjhasdklfja aksdjhf askdljfhakls jfaklsdjhf lk breakline dito\r\n\r\n aksdjlfhaskldjhfalkjshdfklajhsdfkl jhasdkljfhas kldjfh aklsdh fkalsjhd fkljash fkljas hfklask fasd. kjahsdflkjahsdlkfjhalksdfa\r\nsdfhalksdjfhalksjdhfklahsdflkahdflka breakline dito\r\n\r\naskdjfhalksdfhklasdflkasdf', NULL, '2025-02-03 01:32:18', '2025-02-23 21:27:01');

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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `service_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Writing Instruments', '2025-01-20 00:45:44', '2025-01-20 00:45:44'),
(2, 1, 'Paper Product', '2025-01-20 00:45:52', '2025-01-20 00:45:52'),
(3, 2, 'CCTV Cable', '2025-01-27 19:14:41', '2025-01-27 19:14:41'),
(9, 9, 'Power Supply', '2025-01-28 19:23:23', '2025-01-28 19:23:23');

-- --------------------------------------------------------

--
-- Table structure for table `concerns`
--

CREATE TABLE `concerns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `contacted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `concerns`
--

INSERT INTO `concerns` (`id`, `name`, `email`, `content`, `contacted`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'john.doe@gmail.com', 'test1', 0, '2025-02-24 07:07:16', '2025-02-23 23:07:52'),
(2, 'Jane Doe', 'jane.doe@gmail.com', 'fasdfadfsasdf', 0, '2025-02-24 07:07:28', '2025-02-23 23:07:50');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_01_05_095043_create_products_table', 1),
(5, '2025_01_09_042318_create_filters_table', 1),
(6, '2025_01_10_081829_add_admin_verified_at_to_users_table', 1),
(7, '2025_01_11_032118_create_blogs_table', 1),
(8, '2025_01_12_062007_add_descriptions_to_filters_table', 1),
(9, '2025_01_20_031119_rename_filters_to_services', 1),
(10, '2025_01_20_040149_create_categories_table', 1),
(11, '2025_01_20_040152_create_subcategories_table', 1),
(12, '2025_01_20_054510_update_products_table', 2),
(14, '2025_01_26_084418_create_announcements_table', 3),
(15, '2025_01_29_095031_create_offers_table', 4),
(16, '2025_01_31_012856_add_brand_to_products_table', 5),
(18, '2025_02_24_043901_create_concerns_table', 6),
(23, '2025_03_02_061058_add_hidden_column_to_products_table', 7),
(24, '2025_03_06_074227_create_prod_logs_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `descriptions` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `name`, `descriptions`, `created_at`, `updated_at`) VALUES
(1, 'School and Office Supplies', 'Notebook, Pens, Folders, Tape, File organizer, Calculator, Uniform, etc.', NULL, NULL),
(2, 'CCTV Supply and Installation', 'CCTV unit, Installation, Repair and Maintenance, etc.', NULL, NULL),
(3, 'Appliances', 'Television, Speakers, Fans, electronic devices, etc.', NULL, NULL),
(4, 'Agriculture', 'Egg, Rice, Feeds supplies, Agricultural equipment, etc.', NULL, NULL),
(5, 'Information and Communication Technology', 'Desktop, Laptop, Tablets, Two way Radio, Smart Phones, etc.', NULL, NULL),
(6, 'Lighting Control and Automation', 'Lighting control, Lighting Automation, Data Networking, etc.', NULL, NULL),
(7, 'Computer / IT Services', 'Monitor, Mouse, Keyboard, Hardware, Software, Printers, Networking, etc.', NULL, NULL),
(8, 'Logistics Services', 'Cargo forwarding, Hauling services, etc.', NULL, NULL),
(9, 'Electronics / Electrical Supply', 'Solar Panel System, Switch, Fuse, Connectors, Lamp holder, Junction Box, Vehicle parts, etc.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `service_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subcategory_id` bigint(20) UNSIGNED DEFAULT NULL,
  `supplier` varchar(255) DEFAULT NULL,
  `spec` longtext DEFAULT NULL,
  `brand` varchar(255) NOT NULL,
  `unit` enum('ream','book','piece','box','bundle','pack','pad','set','can','unit','pouch','bottle','gallon','roll','pair','tube','jar','cart','kg','ml','l','oz','g') NOT NULL DEFAULT 'piece',
  `unit_price` decimal(8,2) NOT NULL,
  `pcs_unit` int(11) DEFAULT 1,
  `value_ratio` decimal(8,2) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `available` decimal(8,2) DEFAULT NULL,
  `needed` decimal(8,2) DEFAULT NULL,
  `to_buy` decimal(8,2) DEFAULT NULL,
  `low_alert` tinyint(1) DEFAULT NULL,
  `prod_note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `hidden`, `code`, `name`, `service_id`, `category_id`, `subcategory_id`, `supplier`, `spec`, `brand`, `unit`, `unit_price`, `pcs_unit`, `value_ratio`, `status`, `available`, `needed`, `to_buy`, `low_alert`, `prod_note`, `created_at`, `updated_at`) VALUES
(1, 0, 'WI-000001', 'Rover Sprint Ballpoint Pen Stick 0.5mm', 1, 1, 1, 'Rover', 'Pend tip: 0.5mm, Weight: 0.1kg, Length: 14cm, Width: 1.5cm, Height: 1cm, Colour: Black, Blue, Red', '', 'piece', 3.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, 'Rover sprint ballpoint pen stick - clear body, a pocket size pen, damage free tungsten carbide ball. Ultra smooth writing pen with 0.5mm pen tip. Available in 3 colors - Black, Blue, Red', NULL, '2025-03-06 20:45:36'),
(2, 0, 'WI-000002', 'Faber Castell 1423 Ballpoint Pen Black', 1, 1, 1, 'Faber Castell', 'Weight: 0.1kg, Length: 14cm, Width: 1cm, Height: 1cm, Colour: Black', '', 'piece', 16.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, 'Quality Pen Provides Skip-Free And Superior Writing Performance.\nRubberized Grip For Comfort Handling. Stainless Steel Nib Offers Smooth Writing And Clean Lines.', NULL, '2025-03-02 00:26:26'),
(3, 0, 'WI-000003', 'Faber Castell X5 Ballpoint Pen Retractable 0.5mm', 1, 1, 1, 'Faber Castell', 'Weight: 0.1kg, Length: 14cm, Width: 1cm, Height: 1cm, Colour: Black, Blue, Red', '', 'piece', 28.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, 'Semi-Gel ink, Nickel Silver Pen and Tungsten Carbide Ball, Low viscosity ink for super smooth writing, Needle point, High color intensity ink.', NULL, NULL),
(4, 0, 'WI-000004', 'Faber Castell X5 Ballpoint Pen Retractable 0.7mm', 1, 1, 1, 'Faber Castell', 'Weight: 0.1kg, Length: 14cm, Width: 1cm, Height: 1cm, Colour: Black, Blue, Red', '', 'piece', 28.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, 'Semi-Gel ink, Nickel Silver Pen and Tungsten Carbide Ball, Low viscosity ink for super smooth writing, Needle point, High color intensity ink.', NULL, NULL),
(5, 0, 'WI-000005', 'Faber Castell X5 Ballpoint Pen Retractable 1.0mm', 1, 1, 1, 'Faber Castell', 'Weight: 0.1kg, Length: 14cm, Width: 1cm, Height: 1cm, Colour: Black, Blue, Red', '', 'piece', 28.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, 'Semi-Gel ink, Nickel Silver Pen and Tungsten Carbide Ball, Low viscosity ink for super smooth writing, Needle point, High color intensity ink.', NULL, NULL),
(6, 0, 'WI-000006', 'Faber Castell 1419 Ballpoint Pen Pastel 0.5mm', 1, 1, 1, 'Faber Castell', 'Weight: 0.1kg, Length: 14cm, Width: 1cm, Height: 1cm, Colour: Black', '', 'piece', 16.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, 'Grip zone caught compact hand while writing, Fade-resistant, High color intensity ink for perfect writing results, Water-resistant ink for smooth writing.', NULL, NULL),
(7, 0, 'WI-000007', 'Faber Castell Click X Ball Pen Retractable Click X5 0.5mm', 1, 1, 1, 'Faber Castell', 'line width: 0.5mm, Colour: blue and black (60pcs/box)', '', 'box', 805.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, 'Retractable pen\nSuper smooth - low viscosity ink\nWater-resistant ink\nHigh colour intensity ink\n2 line widths: 0.5mm & 0.7mm\nAvailable in different colours\nColour: blue and black', NULL, NULL),
(8, 0, 'WI-000008', 'Faber Castell Click X Ball Pen Retractable Click X7 0.7MM', 1, 1, 1, 'Faber Castell', 'line width: 0.7mm, Colour: blue and black (60pcs/box)', '', 'box', 805.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, 'Retractable pen\nSuper smooth - low viscosity ink\nWater-resistant ink\nHigh colour intensity ink\n2 line widths: 0.5mm & 0.7mm\nAvailable in different colours\nColour: blue and black', NULL, NULL),
(9, 0, 'WI-000009', 'Faber Castell NX23 0.5', 1, 1, 1, 'Faber Castell', 'line width: 0.5mm, Colour: Green, Red, Blue, Black', '', 'piece', 14.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(10, 0, 'WI-000010', 'Faber Castell Retractable Ballpen RX5', 1, 1, 1, 'Faber Castell', 'line width: 0.5mm, Colour: Blue, Black (30pcs/box)', '', 'box', 545.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(11, 0, 'WI-000011', 'Blue Faber-Castell Poly Ball XB', 1, 1, 1, 'Faber Castell', 'line width: 0.6mm, Colour: Sweet Lilac, Black, Blue, Caribic Blue, Emerald Green, Navy Blue, Rosem Stone Grey ', '', 'piece', 334.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(12, 0, 'WI-000012', 'Black Faber-Castell K-One Ballpoint Pen - 0.7mm', 1, 1, 1, 'Faber Castell', 'line width: 0.7mm, Colour: Black, Blue', '', 'piece', 58.12, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(13, 0, 'WI-000013', 'Faber-Castell 241109 ballpoint pen Blue Clip-on retractable', 1, 1, 1, 'Faber Castell', 'line width: 0.6mm, Colour: Blue', '', 'piece', 364.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(14, 0, 'WI-000014', 'Faber Castell Ballpoint Pen Grip X Push Type Size 0.5mm', 1, 1, 1, 'Faber Castell', 'line width: 0.5mm, Colour: Blue, Red, Black (10pcs/box)', '', 'box', 445.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(15, 0, 'WI-000015', 'Faber Castell Ballpoint Pen Grip X Push Type Size 0.7mm', 1, 1, 1, 'Faber Castell', 'line width: 0.7mm, Colour: Blue, Red, Black (10pcs/box)', '', 'box', 445.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(16, 0, 'WI-000016', 'Pilot Better Retractable Pen 0.7mm BP-145-F', 1, 1, 1, 'Pilot', 'line width: 0.7mm, Colour: Black Blue Red', '', 'piece', 49.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(17, 0, 'WI-000017', 'Pilot Ballpen BPS 0.7mm', 1, 1, 1, 'Pilot', 'line width: 0.7mm, Colour: Black Blue Red Green', '', 'piece', 25.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(18, 0, 'WI-000018', 'Pilot BP-1RT retractable', 1, 1, 1, 'Pilot', 'line width: 1.0mm, Colour: Black Blue Red (12pcs/box)', '', 'box', 162.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(19, 0, 'WI-000019', 'Pilot Hi-Tecpoint BXRT-V5 / V5 RT Retractable Rollerball Or Refill Only', 1, 1, 1, 'Pilot', 'line width: 0.5mm, Colour: Black Blue Red Green', '', 'piece', 75.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(20, 0, 'WI-000020', 'Pilot Hi-Tecpoint BXRT-V7 / V7 RT Retractable Rollerball Or Refill Only', 1, 1, 1, 'Pilot', 'line width: 0.7mm, Colour: Black Blue Red Green', '', 'piece', 75.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(21, 0, 'WI-000021', 'Pilot Hi-Tecpoint V5 Sign Pen', 1, 1, 1, 'Pilot', 'Colour: Black Blue Red', '', 'piece', 53.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(22, 0, 'WI-000022', 'Pilot - BP-145-M - Retractable - 1.0mm', 1, 1, 1, 'Pilot', 'line width: 1.0mm, Colour: Black Blue Red', '', 'piece', 50.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(23, 0, 'WI-000023', 'Pilot Easytouch Refillable & Retractable - Medium Point', 1, 1, 1, 'Pilot', 'line width: 1.0mm, Colour: Black Blue Red (12pcs/box)', '', 'box', 2541.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(24, 0, 'WI-000024', 'Pilot Hi-Techpoint V10 Grip Ballpen/BXGPN-V10 1.0mm', 1, 1, 1, 'Pilot', 'line width: 1.0mm, Colour: Black Blue Red', '', 'piece', 74.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(25, 0, 'WI-000025', 'Pilot Rexgrip Retractable Medium', 1, 1, 1, 'Pilot', 'line width: 1.0mm, Colour: Black Green', '', 'piece', 69.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(26, 0, 'WI-000026', 'Pilot Hi-tecpoint BXRT-V10 RT 1.0 Retractable', 1, 1, 1, 'Pilot', 'line width: 1.0mm, Colour: Black (12pcs/box)', '', 'box', 1008.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(27, 0, 'WI-000027', 'Pilot 31820 Acroball Pen, 0.1mm Point, Retractable', 1, 1, 1, 'Pilot', 'line width: 1.0mm, Colour: Assorted, (5pcs/pack)', '', 'pack', 1237.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(28, 0, 'PP-000001', 'Hard Copy Bond Paper Legal (70gsm)', 1, 2, 2, 'Hard Copy', 'Paper Grammage: (70gsm) Sub 20, 500 sheet per ream (216mm x 330mm)/Legal', '', 'ream', 260.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, '2025-03-02 00:22:46'),
(29, 0, 'PP-000002', 'Hard Copy Bond Paper A4 (70gsm)', 1, 2, 2, 'Hard Copy', 'Paper Grammage: (70gsm) Sub 20, 500 sheet per ream (210mm x 297mm)/A4', '', 'ream', 260.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(30, 0, 'PP-000003', 'Hard Copy Bond Paper Letter (70gsm)', 1, 2, 2, 'Hard Copy', 'Paper Grammage: (70gsm) Sub 20, 500 sheet per ream (216mm x 279mm)/Letter', '', 'ream', 280.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(31, 0, 'PP-000004', 'Hard Copy Bond Paper Legal (80gsm)', 1, 2, 2, 'Hard Copy', 'Paper Grammage: (80gsm) Sub 24, 500 sheet per ream (216mm x 330mm)/Legal', '', 'ream', 280.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(32, 0, 'PP-000005', 'Hard Copy Bond Paper A4 (80gsm)', 1, 2, 2, 'Hard Copy', 'Paper Grammage: (80gsm) Sub 24, 500 sheet per ream (210mm x 297mm)/A4', '', 'ream', 280.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(33, 0, 'PP-000006', 'Hard Copy Bond Paper Letter (80gsm)', 1, 2, 2, 'Hard Copy', 'Paper Grammage: (80gsm) Sub 24, 500 sheet per ream (216mm x 279mm)/Letter', '', 'ream', 280.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(34, 0, 'PP-000007', 'Paper One Bond Paper Legal (70gsm)', 1, 2, 2, 'Paper One', 'Paper Grammage: (70gsm) Sub 20, 500 sheet per ream (216mm x 330mm)/Legal', '', 'ream', 280.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(35, 0, 'PP-000008', 'Paper One Bond Paper A4 (70gsm)', 1, 2, 2, 'Paper One', 'Paper Grammage: (70gsm) Sub 20, 500 sheet per ream (210mm x 297mm)/A4', '', 'ream', 280.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(36, 0, 'PP-000009', 'Paper One Bond Paper Letter (70gsm)', 1, 2, 2, 'Paper One', 'Paper Grammage: (70gsm) Sub 20, 500 sheet per ream (216mm x 279mm)/Letter', '', 'ream', 280.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(37, 0, 'PP-000010', 'Paper One Bond Paper Legal (80gsm)', 1, 2, 2, 'Paper One', 'Paper Grammage: (80gsm) Sub 24, 500 sheet per ream (216mm x 330mm)/Legal', '', 'ream', 280.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(38, 0, 'PP-000011', 'Paper One Bond Paper A4 (80gsm)', 1, 2, 2, 'Paper One', 'Paper Grammage: (80gsm) Sub 24, 500 sheet per ream (210mm x 297mm)/A4', '', 'ream', 280.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(39, 0, 'PP-000012', 'Paper One Bond Paper Letter (80gsm)', 1, 2, 2, 'Paper One', 'Paper Grammage: (80gsm) Sub 24, 500 sheet per ream (216mm x 279mm)/Letter', '', 'ream', 280.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(40, 0, 'PP-000013', 'Post-It Super Sticky Notes 3x3 In, 1 Cube', 1, 2, 3, 'Post-it', '3M (76mmx76mm) - 360 sheets per pad', '', 'piece', 268.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(41, 0, 'PP-000014', 'Joy Sign Here Tab Sticky Note', 1, 2, 3, 'Joy', 'Please Sign Here (see through)', '', 'piece', 75.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, '2025-03-06 20:47:55'),
(48, 0, 'EB-000010', 'Lorem ipsum dolor - sit amet hihi', 1, 1, 2, 'P-Lim Trading', 'SIZE AAA', 'brand name bow', 'piece', 33.90, 1, NULL, 'In Stock', 50.00, 100.00, 50.00, 50, NULL, '2025-01-28 17:45:58', '2025-03-08 04:16:00'),
(50, 0, 'test-0001', 'test product 1', 1, 1, 1, 'test product 1', 'test product 1', 'test product 1', 'ream', 12.00, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-10 17:10:57', '2025-03-06 00:38:36'),
(51, 0, 'test-0002', 'test product 2', 1, 1, 1, 'test product 2', 'test product 2', 'test product 2', 'ream', 12.00, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-10 17:11:28', '2025-03-06 00:38:35'),
(52, 0, 'test-0003', 'test product 3', 1, 1, 1, 'test product 3', 'test product 3', 'test product 3', 'ream', 12.00, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-10 17:12:08', '2025-03-06 00:38:35'),
(53, 0, 'test-0004', 'test product 5 yea nabago', 1, 1, 1, 'test product 5', 'test product 5', 'test product 5', 'ream', 12.00, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-10 17:12:26', '2025-03-06 00:38:35'),
(55, 0, 'test-0007', 'cable bro', 2, 3, 9, 'yo', 'bahasdfasd', 'brand name bow', 'kg', 12.00, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-01 21:46:55', '2025-03-08 04:16:04'),
(60, 0, 'test-0006', 'test product 6 w/ long spec', 1, 1, 1, 'yo', 'lorem: ipsum\r\ndolor: sit amet\r\n\r\nhihi spacing to^^', 'brand name bow', 'ream', 12.00, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-10 16:22:24', '2025-03-10 16:22:24'),
(61, 0, 'test-0008', 'test product 8 w/ long spec again', 1, 1, 1, 'yo', '<p>lorem: ipsumasdfasdfasdfasdfasfdasdfasdfasdfasdfasdfasf</p>\r\n<p>dolor: sit amet</p>', 'brand name bow', 'ream', 12.00, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-10 16:41:54', '2025-03-10 16:50:51');

-- --------------------------------------------------------

--
-- Table structure for table `prod_logs`
--

CREATE TABLE `prod_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `action` enum('add','edit','delete') NOT NULL,
  `old_values` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`old_values`)),
  `new_values` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`new_values`)),
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prod_logs`
--

INSERT INTO `prod_logs` (`id`, `product_code`, `action`, `old_values`, `new_values`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'test-0005', 'add', NULL, '{\"code\":\"test-0005\",\"name\":\"Test product 5\",\"service_id\":\"1\",\"category_id\":\"1\",\"subcategory_id\":\"1\",\"supplier\":\"supplier\",\"brand\":\"brand\",\"spec\":\"specifications\",\"unit\":\"ream\",\"pcs_unit\":\"1\",\"unit_price\":\"12\",\"value_ratio\":null,\"status\":null,\"available\":null,\"needed\":null,\"to_buy\":null,\"low_alert\":null,\"prod_note\":null,\"updated_at\":\"2025-03-06T08:12:46.000000Z\",\"created_at\":\"2025-03-06T08:12:46.000000Z\",\"id\":59}', 2, '2025-03-06 00:12:46', '2025-03-06 00:12:46'),
(2, 'test-0005', 'edit', '{\"id\":59,\"hidden\":0,\"code\":\"test-0005\",\"name\":\"Test product 5\",\"service_id\":1,\"category_id\":1,\"subcategory_id\":1,\"supplier\":\"supplier\",\"spec\":\"specifications\",\"brand\":\"brand\",\"unit\":\"ream\",\"unit_price\":\"12.00\",\"pcs_unit\":1,\"value_ratio\":null,\"status\":null,\"available\":null,\"needed\":null,\"to_buy\":null,\"low_alert\":null,\"prod_note\":null,\"created_at\":\"2025-03-06T08:12:46.000000Z\",\"updated_at\":\"2025-03-06T08:12:46.000000Z\"}', '{\"name\":\"Test product 5 edited bro\",\"updated_at\":\"2025-03-06 08:13:21\"}', 2, '2025-03-06 00:13:21', '2025-03-06 00:13:21'),
(3, 'test-0005', 'delete', '{\"id\":59,\"hidden\":0,\"code\":\"test-0005\",\"name\":\"Test product 5 edited bro\",\"service_id\":1,\"category_id\":1,\"subcategory_id\":1,\"supplier\":\"supplier\",\"spec\":\"specifications\",\"brand\":\"brand\",\"unit\":\"ream\",\"unit_price\":\"12.00\",\"pcs_unit\":1,\"value_ratio\":null,\"status\":null,\"available\":null,\"needed\":null,\"to_buy\":null,\"low_alert\":null,\"prod_note\":null,\"created_at\":\"2025-03-06T08:12:46.000000Z\",\"updated_at\":\"2025-03-06T08:13:21.000000Z\"}', NULL, 2, '2025-03-06 00:14:21', '2025-03-06 00:14:21'),
(4, 'test-0004', 'edit', '{\"id\":53,\"hidden\":1,\"code\":\"test-0004\",\"name\":\"test product 5 yea nabago\",\"service_id\":1,\"category_id\":1,\"subcategory_id\":1,\"supplier\":\"test product 5\",\"spec\":\"test product 5\",\"brand\":\"test product 5\",\"unit\":\"ream\",\"unit_price\":\"12.00\",\"pcs_unit\":1,\"value_ratio\":null,\"status\":null,\"available\":null,\"needed\":null,\"to_buy\":null,\"low_alert\":null,\"prod_note\":null,\"created_at\":\"2025-02-11T01:12:26.000000Z\",\"updated_at\":\"2025-03-02T08:26:47.000000Z\"}', '{\"hidden\":\"0\",\"updated_at\":\"2025-03-06 08:38:35\"}', 2, '2025-03-06 00:38:35', '2025-03-06 00:38:35'),
(5, 'test-0003', 'edit', '{\"id\":52,\"hidden\":1,\"code\":\"test-0003\",\"name\":\"test product 3\",\"service_id\":1,\"category_id\":1,\"subcategory_id\":1,\"supplier\":\"test product 3\",\"spec\":\"test product 3\",\"brand\":\"test product 3\",\"unit\":\"ream\",\"unit_price\":\"12.00\",\"pcs_unit\":1,\"value_ratio\":null,\"status\":null,\"available\":null,\"needed\":null,\"to_buy\":null,\"low_alert\":null,\"prod_note\":null,\"created_at\":\"2025-02-11T01:12:08.000000Z\",\"updated_at\":\"2025-03-02T08:26:47.000000Z\"}', '{\"hidden\":\"0\",\"updated_at\":\"2025-03-06 08:38:35\"}', 2, '2025-03-06 00:38:35', '2025-03-06 00:38:35'),
(6, 'test-0002', 'edit', '{\"id\":51,\"hidden\":1,\"code\":\"test-0002\",\"name\":\"test product 2\",\"service_id\":1,\"category_id\":1,\"subcategory_id\":1,\"supplier\":\"test product 2\",\"spec\":\"test product 2\",\"brand\":\"test product 2\",\"unit\":\"ream\",\"unit_price\":\"12.00\",\"pcs_unit\":1,\"value_ratio\":null,\"status\":null,\"available\":null,\"needed\":null,\"to_buy\":null,\"low_alert\":null,\"prod_note\":null,\"created_at\":\"2025-02-11T01:11:28.000000Z\",\"updated_at\":\"2025-03-02T08:26:48.000000Z\"}', '{\"hidden\":\"0\",\"updated_at\":\"2025-03-06 08:38:35\"}', 2, '2025-03-06 00:38:35', '2025-03-06 00:38:35'),
(7, 'test-0001', 'edit', '{\"id\":50,\"hidden\":1,\"code\":\"test-0001\",\"name\":\"test product 1\",\"service_id\":1,\"category_id\":1,\"subcategory_id\":1,\"supplier\":\"test product 1\",\"spec\":\"test product 1\",\"brand\":\"test product 1\",\"unit\":\"ream\",\"unit_price\":\"12.00\",\"pcs_unit\":1,\"value_ratio\":null,\"status\":null,\"available\":null,\"needed\":null,\"to_buy\":null,\"low_alert\":null,\"prod_note\":null,\"created_at\":\"2025-02-11T01:10:57.000000Z\",\"updated_at\":\"2025-03-02T08:26:48.000000Z\"}', '{\"hidden\":\"0\",\"updated_at\":\"2025-03-06 08:38:36\"}', 2, '2025-03-06 00:38:36', '2025-03-06 00:38:36'),
(8, 'WI-000001', 'edit', '{\"id\":1,\"hidden\":0,\"code\":\"WI-000001\",\"name\":\"Rover Sprint Ballpoint Pen Stick 0.5mm\",\"service_id\":1,\"category_id\":1,\"subcategory_id\":1,\"supplier\":\"Rover\",\"spec\":\"Pend tip: 0.5mm, Weight: 0.1kg, Length: 14cm, Width: 1.5cm, Height: 1cm, Colour: Black, Blue, Red\",\"brand\":\"\",\"unit\":\"piece\",\"unit_price\":\"3.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"status\":\"Out of stock\",\"available\":\"0.00\",\"needed\":\"100.00\",\"to_buy\":\"100.00\",\"low_alert\":50,\"prod_note\":\"Rover sprint ballpoint pen stick - clear body, a pocket size pen, damage free tungsten carbide ball. Ultra smooth writing pen with 0.5mm pen tip. Available in 3 colors - Black, Blue, Red\",\"created_at\":null,\"updated_at\":\"2025-03-02T08:26:26.000000Z\"}', '{\"hidden\":\"1\",\"updated_at\":\"2025-03-07 04:45:36\"}', 2, '2025-03-06 20:45:36', '2025-03-06 20:45:36'),
(9, 'WI-000001', 'edit', '{\"id\":1,\"hidden\":1,\"code\":\"WI-000001\",\"name\":\"Rover Sprint Ballpoint Pen Stick 0.5mm\",\"service_id\":1,\"category_id\":1,\"subcategory_id\":1,\"supplier\":\"Rover\",\"spec\":\"Pend tip: 0.5mm, Weight: 0.1kg, Length: 14cm, Width: 1.5cm, Height: 1cm, Colour: Black, Blue, Red\",\"brand\":\"\",\"unit\":\"piece\",\"unit_price\":\"3.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"status\":\"Out of stock\",\"available\":\"0.00\",\"needed\":\"100.00\",\"to_buy\":\"100.00\",\"low_alert\":50,\"prod_note\":\"Rover sprint ballpoint pen stick - clear body, a pocket size pen, damage free tungsten carbide ball. Ultra smooth writing pen with 0.5mm pen tip. Available in 3 colors - Black, Blue, Red\",\"created_at\":null,\"updated_at\":\"2025-03-07T04:45:36.000000Z\"}', '{\"hidden\":\"0\"}', 2, '2025-03-06 20:45:36', '2025-03-06 20:45:36'),
(10, 'PP-000014', 'edit', '{\"id\":41,\"hidden\":0,\"code\":\"PP-000014\",\"name\":\"Joy Sign Here Tab Sticky Note\",\"service_id\":1,\"category_id\":2,\"subcategory_id\":3,\"supplier\":\"Joy\",\"spec\":\"Please Sign Here (see through)\",\"brand\":\"\",\"unit\":\"piece\",\"unit_price\":\"75.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"status\":\"Out of stock\",\"available\":\"0.00\",\"needed\":\"100.00\",\"to_buy\":\"100.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":null,\"updated_at\":null}', '{\"hidden\":\"1\",\"updated_at\":\"2025-03-07 04:47:54\"}', 2, '2025-03-06 20:47:54', '2025-03-06 20:47:54'),
(11, 'PP-000014', 'edit', '{\"id\":41,\"hidden\":1,\"code\":\"PP-000014\",\"name\":\"Joy Sign Here Tab Sticky Note\",\"service_id\":1,\"category_id\":2,\"subcategory_id\":3,\"supplier\":\"Joy\",\"spec\":\"Please Sign Here (see through)\",\"brand\":\"\",\"unit\":\"piece\",\"unit_price\":\"75.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"status\":\"Out of stock\",\"available\":\"0.00\",\"needed\":\"100.00\",\"to_buy\":\"100.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":null,\"updated_at\":\"2025-03-07T04:47:54.000000Z\"}', '{\"hidden\":\"0\",\"updated_at\":\"2025-03-07 04:47:55\"}', 2, '2025-03-06 20:47:55', '2025-03-06 20:47:55'),
(12, 'EB-000010', 'edit', '{\"id\":48,\"hidden\":1,\"code\":\"EB-000010\",\"name\":\"Lorem ipsum dolor - sit amet hihi\",\"service_id\":1,\"category_id\":1,\"subcategory_id\":2,\"supplier\":\"P-Lim Trading\",\"spec\":\"SIZE AAA\",\"brand\":\"brand name bow\",\"unit\":\"piece\",\"unit_price\":\"33.90\",\"pcs_unit\":1,\"value_ratio\":null,\"status\":\"In Stock\",\"available\":\"50.00\",\"needed\":\"100.00\",\"to_buy\":\"50.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":\"2025-01-29T01:45:58.000000Z\",\"updated_at\":\"2025-03-02T08:26:51.000000Z\"}', '{\"hidden\":\"0\",\"updated_at\":\"2025-03-08 12:16:00\"}', 2, '2025-03-08 04:16:00', '2025-03-08 04:16:00'),
(13, 'test-0007', 'edit', '{\"id\":55,\"hidden\":1,\"code\":\"test-0007\",\"name\":\"cable bro\",\"service_id\":2,\"category_id\":3,\"subcategory_id\":9,\"supplier\":\"yo\",\"spec\":\"bahasdfasd\",\"brand\":\"brand name bow\",\"unit\":\"kg\",\"unit_price\":\"12.00\",\"pcs_unit\":1,\"value_ratio\":null,\"status\":null,\"available\":null,\"needed\":null,\"to_buy\":null,\"low_alert\":null,\"prod_note\":null,\"created_at\":\"2025-03-02T05:46:55.000000Z\",\"updated_at\":\"2025-03-02T08:26:47.000000Z\"}', '{\"hidden\":\"0\",\"updated_at\":\"2025-03-08 12:16:04\"}', 2, '2025-03-08 04:16:04', '2025-03-08 04:16:04'),
(14, 'test-0006', 'add', NULL, '{\"code\":\"test-0006\",\"name\":\"test product 6 w\\/ long spec\",\"service_id\":\"1\",\"category_id\":\"1\",\"subcategory_id\":\"1\",\"supplier\":\"yo\",\"brand\":\"brand name bow\",\"spec\":\"lorem: ipsum\\r\\ndolor: sit amet\\r\\n\\r\\nhihi spacing to^^\",\"unit\":\"ream\",\"pcs_unit\":\"1\",\"unit_price\":\"12\",\"value_ratio\":null,\"status\":null,\"available\":null,\"needed\":null,\"to_buy\":null,\"low_alert\":null,\"prod_note\":null,\"updated_at\":\"2025-03-11T00:22:24.000000Z\",\"created_at\":\"2025-03-11T00:22:24.000000Z\",\"id\":60}', 2, '2025-03-10 16:22:24', '2025-03-10 16:22:24'),
(15, 'test-0008', 'add', NULL, '{\"code\":\"test-0008\",\"name\":\"test product 8 w\\/ long spec again\",\"service_id\":\"1\",\"category_id\":\"1\",\"subcategory_id\":\"1\",\"supplier\":\"yo\",\"brand\":\"brand name bow\",\"spec\":\"<p>lorem: ipsum<\\/p>\\r\\n<p>dolor: sit amet<\\/p>\",\"unit\":\"ream\",\"pcs_unit\":\"12\",\"unit_price\":\"12\",\"value_ratio\":null,\"status\":null,\"available\":null,\"needed\":null,\"to_buy\":null,\"low_alert\":null,\"prod_note\":null,\"updated_at\":\"2025-03-11T00:41:54.000000Z\",\"created_at\":\"2025-03-11T00:41:54.000000Z\",\"id\":61}', 2, '2025-03-10 16:41:54', '2025-03-10 16:41:54'),
(16, 'test-0008', 'edit', '{\"id\":61,\"hidden\":0,\"code\":\"test-0008\",\"name\":\"test product 8 w\\/ long spec again\",\"service_id\":1,\"category_id\":1,\"subcategory_id\":1,\"supplier\":\"yo\",\"spec\":\"<p>lorem: ipsum<\\/p>\\r\\n<p>dolor: sit amet<\\/p>\",\"brand\":\"brand name bow\",\"unit\":\"ream\",\"unit_price\":\"12.00\",\"pcs_unit\":12,\"value_ratio\":null,\"status\":null,\"available\":null,\"needed\":null,\"to_buy\":null,\"low_alert\":null,\"prod_note\":null,\"created_at\":\"2025-03-11T00:41:54.000000Z\",\"updated_at\":\"2025-03-11T00:41:54.000000Z\"}', '{\"spec\":\"<p>lorem: ipsumasdfasdfasdfasdfasfdasdfasdfasdfasdfasdfasf<\\/p>\\r\\n<p>dolor: sit amet<\\/p>\",\"updated_at\":\"2025-03-11 00:50:51\"}', 2, '2025-03-10 16:50:51', '2025-03-10 16:50:51');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `descriptions` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `created_at`, `updated_at`, `descriptions`) VALUES
(1, 'School and Office Supplies', NULL, NULL, 'Notebook, Pens, Folders, Tape, File organizer, Calculator, Uniform, etc.'),
(2, 'CCTV Supply and Installation', NULL, NULL, 'CCTV unit, Installation, Repair and Maintenance, etc.'),
(3, 'Appliances', NULL, NULL, 'Television, Speakers, Fans, electronic devices, etc.'),
(4, 'Agriculture', NULL, NULL, 'Egg, Rice, Feeds supplies, Agricultural equipment, etc.'),
(5, 'Information and Communication Technology', NULL, NULL, 'Desktop, Laptop, Tablets, Two way Radio, Smart Phones, etc.'),
(6, 'Lighting Control and Automation', NULL, NULL, 'Lighting control, Lighting Automation, Data Networking, etc.'),
(7, 'Computer / IT Services', NULL, NULL, 'Monitor, Mouse, Keyboard, Hardware, Software, Printers, Networking, etc.'),
(9, 'Electronics / Electrical Supply', NULL, NULL, 'Solar Panel System, Switch, Fuse, Connectors, Lamp holder, Junction Box, Vehicle parts, etc.'),
(10, 'Logistics Services', NULL, NULL, 'Cargo forwarding, Hauling services, etc.'),
(11, 'Garments', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('UZwkdyVGosLgh1J6mZDDlhF4K7oI925iaQxmH06G', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVHpiN3Q1YzY5WWM4eEZ0Yno2T3lIQnl1bFZBdnkxaklLSjRaWFVrNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9rbWNpLmxvY2FsL2Rhc2hib2FyZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7fQ==', 1741662563);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ballpen', '2025-01-20 00:46:09', '2025-01-20 00:46:09'),
(2, 2, 'Bond Paper', '2025-01-20 00:46:21', '2025-01-20 00:46:21'),
(3, 2, 'Sticky Notes', '2025-01-20 00:46:27', '2025-01-20 00:46:27'),
(9, 3, 'network cable', '2025-03-01 21:46:29', '2025-03-01 21:46:29');

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
  `admin_verified_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `admin_verified_at`) VALUES
(2, 'Renzo Gregorio', 'gregoriorenzo05@gmail.com', '2025-01-20 08:44:00', '$2y$12$lVkqXN87cwJwdvzVN2D3EeeE9byLSdQp04.2Z436PU4cqsnrA4bYO', '2ecQRiCKFCAWXVR0zX9aHfVkmGyEem0J4x0x4wLGU3aROnoU3LaI94ABGwoc', '2025-01-20 00:42:43', '2025-01-20 00:42:43', '2025-01-20 08:44:13'),
(8, 'Test Request', 'test.request@gmail.com', NULL, '$2y$12$fe.QcdXdfiFmvpLYT80EQ.Ys8pZ45rspN290Z8t2s95AfnjrHkrly', NULL, '2025-03-06 16:40:33', '2025-03-06 16:40:33', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_service_id_foreign` (`service_id`);

--
-- Indexes for table `concerns`
--
ALTER TABLE `concerns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_service_id_foreign` (`service_id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `prod_logs`
--
ALTER TABLE `prod_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prod_logs_user_id_foreign` (`user_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

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
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `concerns`
--
ALTER TABLE `concerns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `prod_logs`
--
ALTER TABLE `prod_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `prod_logs`
--
ALTER TABLE `prod_logs`
  ADD CONSTRAINT `prod_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
