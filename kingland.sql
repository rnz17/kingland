-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2025 at 04:02 AM
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
(19, 'Sample Blog 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'images/blog/qYWK5Swwr5eGTT6ftnXqZUgdLEr3yB41xxCBNeCL.jpg', '2025-01-17 17:23:19', '2025-01-17 17:23:19'),
(20, 'Sample Blog 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'images/blog/s7og8tT7r7k38d04G6Y6xZ4daRPn78OyN0UjGFmU.jpg', '2025-01-17 17:23:31', '2025-01-17 17:23:31'),
(21, 'Sample Blog 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'images/blog/JHJ5KbjvKymy5X6mZMApff2jb4ThqTDxoJ5jAMaC.jpg', '2025-01-17 17:23:46', '2025-01-17 17:23:46');

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
-- Table structure for table `filters`
--

CREATE TABLE `filters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `descriptions` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `filters`
--

INSERT INTO `filters` (`id`, `name`, `created_at`, `updated_at`, `descriptions`) VALUES
(1, 'School and Office Supplies', NULL, NULL, 'Notebook, Pens, Folders, Tape, File organizer, Calculator, Uniform, etc.'),
(2, 'CCTV Supply and Installation', NULL, NULL, 'CCTV unit, Installation, Repair and Maintenance, etc.'),
(3, 'Appliances', NULL, NULL, 'Television, Speakers, Fans, electronic devices, etc.'),
(4, 'Agriculture', NULL, NULL, 'Egg, Rice, Feeds supplies, Agricultural equipment, etc.'),
(5, 'Information and Communication Technology', NULL, NULL, 'Desktop, Laptop, Tablets, Two way Radio, Smart Phones, etc.'),
(6, 'Lighting Control and Automation', NULL, NULL, 'Lighting control, Lighting Automation, Data Networking, etc.'),
(7, 'Computer / IT Services', NULL, NULL, 'Monitor, Mouse, Keyboard, Hardware, Software, Printers, Networking, etc.'),
(8, 'Logistics Services', NULL, NULL, 'Cargo forwarding, Hauling services, etc.'),
(9, 'Electronics / Electrical Supply', NULL, NULL, 'Solar Panel System, Switch, Fuse, Connectors, Lamp holder, Junction Box, Vehicle parts, etc.');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` text DEFAULT NULL,
  `code` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `supplier` text DEFAULT NULL,
  `spec` text DEFAULT NULL,
  `Unit` text DEFAULT NULL,
  `Unit Price` text DEFAULT NULL,
  `Value Ratio (Units/Price)` text DEFAULT NULL,
  `Last Date Updated` text DEFAULT NULL,
  `Status` text DEFAULT NULL,
  `Available Stocks` text DEFAULT NULL,
  `Stocks Needed` text DEFAULT NULL,
  `Stocks to Buy` text DEFAULT NULL,
  `Low Stock Alert Level` text DEFAULT NULL,
  `Inventory Value` text DEFAULT NULL,
  `Notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(4, '2025_01_05_095043_create_products_table', 2),
(5, '2025_01_09_042318_create_filters_table', 3),
(6, '2025_01_10_081829_add_admin_verified_at_to_users_table', 4),
(7, '2025_01_11_032118_create_blogs_table', 5),
(8, '2025_01_12_062007_add_descriptions_to_filters_table', 6);

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
('gregoriorenzo05@gmail.com', '$2y$12$Cc1rsFnDpGZA61bi1BQ6f.qdnnxWdaejNu/Ib2khTY.LEdHDqGTju', '2025-01-09 23:20:14'),
('renzogregorio0517@gmail.com', '$2y$12$conXVdBj10Ct4CSUVrWmye/3TCkornAAS2tvmxExFyfD7RbOw4yz6', '2025-01-06 21:58:13');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `supplier` varchar(255) DEFAULT NULL,
  `spec` text DEFAULT NULL,
  `unit` enum('ream','book','piece','box','bundle','pack','pad','set','can','unit','pouch','bottle','gallon','roll','pair','tube','jar','cart','kg','ml','Litter','oz','grams') NOT NULL,
  `pcs_unit` int(11) DEFAULT NULL,
  `unit_price` decimal(8,2) NOT NULL,
  `value_ratio` decimal(8,2) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `available` decimal(8,2) DEFAULT NULL,
  `needed` decimal(8,2) DEFAULT NULL,
  `to_buy` decimal(8,2) DEFAULT NULL,
  `low_alert` tinyint(1) DEFAULT NULL,
  `prod_note` text DEFAULT NULL,
  `img_link` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `code`, `name`, `category_id`, `category`, `supplier`, `spec`, `unit`, `pcs_unit`, `unit_price`, `value_ratio`, `status`, `available`, `needed`, `to_buy`, `low_alert`, `prod_note`, `img_link`, `created_at`, `updated_at`) VALUES
(3, 'PP-0001', 'BONDPAPER, MULTI COPY, LEGAL', 4, 'Agriculture', NULL, '216mm x 330mm (80gsm)', 'ream', NULL, 232.96, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(4, 'PP-0002', 'BONDPAPER, MULTI COPY, A4', 8, 'Logistics Services', NULL, '210mm x 297mm (80gsm)', 'ream', NULL, 213.80, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(5, 'PP-0003', 'CLEARBOOK, LEGAL', 6, 'Lighting Control and Automation', NULL, '345mm x 235mm (opaque plastic)', 'piece', NULL, 37.67, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(6, 'PP-0004', 'RECORD BOOK, 300 PAGES', 5, 'Information and Communication Technology', NULL, '265mmx205mm (55gsm)', 'book', NULL, 91.70, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(7, 'PP-0005', 'ERASER, FELT, BLACKBOARD/WHITEBOARD', 8, 'Logistics Services', NULL, '125mm x 45mm x 21mm (Felt)', 'piece', NULL, 14.48, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(8, 'PP-0006', 'PAPER, PARCHMENT', 5, 'Information and Communication Technology', NULL, '210mm x 297mm (80gsm)', 'box', NULL, 154.21, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, 'to be sold in boxes of 100 sheets', '', NULL, NULL),
(9, 'PP-0007', 'FOLDER, FANCY, WITH SLIDE, LEGAL', 4, 'Agriculture', NULL, '225mm x 345mm', 'bundle', NULL, 291.20, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, 'To be sold in bundles of 50pcs', '', NULL, NULL),
(10, 'PP-0008', 'RECORD BOOK, 500 PAGES', 2, 'CCTV Supply and Installation', NULL, '265mmx205mm (55gsm)', 'book', NULL, 124.56, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(11, 'PP-0009', 'FOLDER, FANCY, WITH SLIDE, A4', 6, 'Lighting Control and Automation', NULL, '225mm x 320mm', 'bundle', NULL, 270.40, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, 'To be sold in bundles of 50pcs', '', NULL, NULL),
(12, 'PP-0010', 'CLEARBOOK, A4', 3, 'Appliances', NULL, '310mm x 235mm (Plastic)', 'piece', NULL, 35.16, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(13, 'PP-0011', 'FOLDER WITH TAB, A4', 6, 'Lighting Control and Automation', NULL, '240mm x 320mm', 'pack', NULL, 379.60, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, 'To be sold in packs of 100pcs', '', NULL, NULL),
(14, 'PP-0012', 'COMPUTER CONTINUOUS FORM, 1 PLY, 280MM X 378MM', 6, 'Lighting Control and Automation', NULL, '280mm x 378mm (11\"x14-7/8\") (70gsm)', 'box', NULL, 1973.92, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(15, 'PP-0013', 'DATA FOLDER', 4, 'Agriculture', NULL, 'W:H:L 75mm x 230mm x 380mm (Chipboard)', 'piece', NULL, 99.84, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(16, 'PP-0014', 'STENO NOTEBOOK', 1, 'School and Office Supplies', NULL, '150mm x 225mm (55gsm) (60 leaves)', 'piece', NULL, 11.28, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(17, 'PP-0015', 'FOLDER WITH TAB, LEGAL', 2, 'CCTV Supply and Installation', NULL, '240mm x 365mm (FC)', 'pack', NULL, 413.92, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, 'To be sold in packs of 100pcs', '', NULL, NULL),
(18, 'PP-0016', 'ENVELOPE, DOCUMENTARY, A4', 6, 'Lighting Control and Automation', NULL, '229mm x 324mm (150gsm) (Kraft)', 'box', NULL, 847.60, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, 'To be sold in boxes of 500pcs', '', NULL, NULL),
(19, 'PP-0017', 'ENVELOPE, MAILING', 6, 'Lighting Control and Automation', NULL, 'W:L 105mm x 241mm (70gsm) - White', 'box', NULL, 460.51, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, 'To be sold in boxes of 500pcs', '', NULL, NULL),
(20, 'PP-0018', 'ENVELOPE, MAILING WITH WINDOW', 8, 'Logistics Services', NULL, 'W:L 105mm x 241mm (70gsm) - White', 'box', NULL, 523.95, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, 'To be sold in boxes of 500pcs', '', NULL, NULL),
(21, 'PP-0019', 'ENVELOPE, DOCUMENTARY, LEGAL', 4, 'Agriculture', NULL, '254mm x 381mm (150gsm) (Kraft)', 'box', NULL, 1057.59, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, 'To be sold in boxes of 500pcs', '', NULL, NULL),
(22, 'PP-0020', 'ENVELOPE, EXPANDING, KRAFT', 6, 'Lighting Control and Automation', NULL, '380mm x 250mm (w/ string and eyelet)', 'box', NULL, 939.95, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, 'To be sold in boxes of 100pcs', '', NULL, NULL),
(23, 'PP-0021', 'DATA FILE BOX', 1, 'School and Office Supplies', NULL, 'W:H:L 125mm x 230mm x 400mm (w closed ends)', 'piece', NULL, 145.89, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(24, 'PP-0022', 'PAD PAPER, RULED', 4, 'Agriculture', NULL, '216mm x 330mm (55gsm) (90sheets per pad)', 'pad', NULL, 34.82, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(25, 'PP-0023', 'CARTOLINA, ASSORTED COLORS', 4, 'Agriculture', NULL, '572mm x 724mm (100gsm) (Bristol board)', 'pack', NULL, 83.72, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, 'To be sold in packs of 20pcs', '', NULL, NULL),
(26, 'PP-0024', 'NOTE PAD, STICK ON, 76MM X 100MM (3\" X 4\") MIN', 5, 'Information and Communication Technology', NULL, 'LxW 76mm x 10mm (70gsm) (100 sheet/pad)', 'pad', NULL, 59.28, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(27, 'PP-0025', 'BONDPAPER, MULTI-PURPOSE, A4', 3, 'Appliances', NULL, '210mm x 297mm (70gsm)', 'ream', NULL, 137.74, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(28, 'PP-0026', 'PAPER, MULTI-PURPOSE, 70GSM (MIN.), LEGAL', 7, 'Computer / IT Services', NULL, '216mm x 330mm (70gsm)', 'ream', NULL, 158.91, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(29, 'PP-0027', 'COMPUTER CONTINUOUS FORM, 1 PLY, 280MM X 241MM', 7, 'Computer / IT Services', NULL, '280mm x 241mm (11\"x9-1/2\") (70gsm)', 'box', NULL, 945.36, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(30, 'PP-0028', 'FILE TAB DIVIDER, A4', 5, 'Information and Communication Technology', NULL, 'Leaf: LxW 297mm x 210mm Tab: LxW 65mm x 12mm (153gsm)', 'set', NULL, 11.13, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, 'To be sold in sets of 5 colors', '', NULL, NULL),
(31, 'PP-0029', 'FILE TAB DIVIDER, LEGAL', 6, 'Lighting Control and Automation', NULL, 'Leaf: LxW 330mm x 216mm Tab: LxW 68mm x 15mm (153gsm)', 'set', NULL, 14.23, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, 'To be sold in sets of 5 colors', '', NULL, NULL),
(32, 'PP-0030', 'FOLDER, PRESSBOARD', 8, 'Logistics Services', NULL, '369mm x 242 (312gms) (Paperboard)', 'box', NULL, 952.64, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, 'To be sold in boxes of 100pcs', '', NULL, NULL),
(33, 'CE-0001', 'AIR FRESHENER, AEROSOL TYPE', 5, 'Information and Communication Technology', 'Ambree', '280ml or 150g', 'can', NULL, 87.31, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(34, 'CE-0002', 'DETERGENT BAR, 140G', 3, 'Appliances', 'Speed', '140grams as packed', 'piece', NULL, 9.34, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(35, 'CE-0003', 'FURNITURE CLEANER', 4, 'Agriculture', 'Splenda', '300ml (Aerosol Type)', 'can', NULL, 141.39, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(36, 'CE-0004', 'WASTEBASKET', 8, 'Logistics Services', NULL, 'H: 225mm, Vol 8.5liters', 'piece', NULL, 43.68, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(37, 'CE-0005', 'TRASHBAG, XXL SIZE', 4, 'Agriculture', NULL, '37\" x 40\" Thickness: 0.02mm (Polyethylene (PE) Plastic)', 'pack', NULL, 130.00, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, 'To be sold in packs of 10pcs', '', NULL, NULL),
(38, 'CE-0006', 'RAGS', 2, 'CCTV Supply and Installation', NULL, 'Absorbent fabric, diameter 178mm', 'bundle', NULL, 69.47, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, 'To be sold in bundles of 32 pieces per kilo', '', NULL, NULL),
(39, 'CE-0007', 'SCOURING PAD', 8, 'Logistics Services', NULL, '150mm x 200mm (made of synthetic nylon)', 'pack', NULL, 85.63, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, 'To be sold in packs of 5 pads', '', NULL, NULL),
(40, 'CE-0008', 'MOP BUCKET, HEAVY DUTY, HARD PLASTIC', 2, 'CCTV Supply and Installation', NULL, 'W:L:H 350mm x 475mm x 245mm (Heavy Duty) (30 liters) w/ wheels, squeezer and precautionary markings', 'unit', NULL, 2288.00, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(41, 'CE-0009', 'BROOM (WALIS TAMBO)', 5, 'Information and Communication Technology', NULL, 'Wood, smooth finish, plastic coated (500g Max)', 'piece', NULL, 124.80, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(42, 'CE-0010', 'BROOM (WALIS TING-TING)', 6, 'Lighting Control and Automation', NULL, 'made from mature coconut midribs (atleast 350pieces)', 'piece', NULL, 26.00, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(43, 'CE-0011', 'DUST PAN', 5, 'Information and Communication Technology', NULL, 'made of rigid non-breakable plastic', 'piece', NULL, 46.80, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(44, 'CE-0012', 'INSECTICIDE, AEROSOL TYPE', 8, 'Logistics Services', 'Kwik', '600ml (Aerosol, Kerosene based, Multi-insect killer)', 'can', NULL, 139.36, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(45, 'CE-0013', 'FLOOR WAX, PASTE TYPE, RED', 7, 'Computer / IT Services', 'Shining Star', '450grams, Petroleum based, Paste type, Red, for wood and cemented surfaces,', 'can', NULL, 309.76, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(46, 'CE-0014', 'DETERGENT POWDER, ALL-PURPOSE', 2, 'CCTV Supply and Installation', NULL, 'Net Weight: One (1) kilogram', 'pouch', NULL, 54.08, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(47, 'MR-0001', 'ALCOHOL, ETHYL, 500ML', 2, 'CCTV Supply and Installation', NULL, '70% Ethanol (Ethyl Alcohol) 500ml', 'bottle', NULL, 55.62, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(48, 'MR-0002', 'ALCOHOL, ETHYL, 1 GALLON', 8, 'Logistics Services', NULL, '70% Ethanol (Ethyl Alcohol) 1 Gallon or 3.785 Liters (3,785 ml)', 'gallon', NULL, 357.09, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(49, 'MR-0003', 'TOILET TISSUE PAPER, 2 PLY', 2, 'CCTV Supply and Installation', 'ECO', '150 pull per roll (300 sheets) (28gsm) (100% recycled pulp)', 'pack', NULL, 99.84, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, 'To be sold in packs of 12 rolls', '', NULL, NULL),
(50, 'MR-0004', 'HAND SANITIZER, 500ML', 7, 'Computer / IT Services', 'Bactigel', 'Liquid or Gel, Scented, 500ML, Alcohol based', 'bottle', NULL, 85.08, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(51, 'MR-0005', 'HAND SOAP, LIQUID, 500ML', 4, 'Agriculture', 'Dermistat', 'Liquid, Scented, 500ML 80% kill Bactericidal against Staphylococcus aureus', 'bottle', NULL, 42.95, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(52, 'MR-0006', 'TISSUE, INTERFOLDED PAPER TOWEL', 1, 'School and Office Supplies', 'ECO', 'W:L 200mm x 200mm, 34gsm, One (1) ply, 150 pulls', 'pack', NULL, 33.80, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(53, 'MR-0007', 'DISINFECTANT SPRAY, AEROSOL, 400G', 2, 'CCTV Supply and Installation', 'Solbac', 'Aerosol Type, 400g, Crisp, Clean scent', 'can', NULL, 139.89, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(54, 'MR-0008', 'CLEANSER, SCOURING POWDER', 4, 'Agriculture', 'Zim', 'Net Weight: 350 grams', 'can', NULL, 23.92, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(55, 'MR-0009', 'CLEANER, TOILET AND URINAL', 3, 'Appliances', 'Zim', 'Net Content: 1000mL, Fully Miscible in Water, Not Chlorine based', 'bottle', NULL, 41.60, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(56, 'ES-0001', 'BATTERY, DRY CELL, AAA', 7, 'Computer / IT Services', 'Piscell', '1.5volts, Alkaline Type, Shelf Life (5) years', 'pack', NULL, 18.34, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, 'To be sold in blister packs of 2pcs', '', NULL, NULL),
(57, 'ES-0002', 'BATTERY, DRY CELL, SIZE AA', 2, 'CCTV Supply and Installation', 'Pairdeer', '1.5volts, Alkaline Type, Shelf Life (5) years', 'pack', NULL, 20.49, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, 'To be sold in blister packs of 2pcs', '', NULL, NULL),
(58, 'ES-0003', 'LIGHT EMITTING DIODE (LED), LIGHT BULB', 4, 'Agriculture', NULL, '6-7 watts, 85-265 volts, AC, Cool Daylight, 60Hz', 'piece', NULL, 75.61, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(59, 'ES-0004', 'LINEAR TUBE, LIGHT EMITTING DIODE (LED), 18 WATTS', 1, 'School and Office Supplies', NULL, '18 watts, 220-240 volts, AC, Daylight/Coll White', 'piece', NULL, 205.82, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(60, 'OE-0001', 'ELECTRIC FAN, STAND TYPE', 3, 'Appliances', 'Hanabishi', 'Plastic Blade, Three (3) blades, 220 - 240 volts, 60Hz, w/ ICC Mark', 'unit', NULL, 1560.00, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(61, 'OE-0002', 'ELECTRIC FAN, WALL MOUNT', 4, 'Agriculture', 'Union', 'Plastic Blade, Three (3) blades, 220 - 240 volts, 60Hz, w/ ICC Mark', 'unit', NULL, 901.68, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(62, 'OE-0003', 'PAPER TRIMMER/CUTTING MACHINE, TABLE TOP', 1, 'School and Office Supplies', NULL, 'Cutting Machine, Table top', 'unit', NULL, 9873.76, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(63, 'OE-0004', 'CALCULATOR, COMPACT', 5, 'Information and Communication Technology', 'Canon', '100mm - 130mm, LCD Display, 12 digits Capacity, (Solar and Cell) ', 'unit', NULL, 217.24, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(64, 'OE-0005', 'PRINTER, LASER, MONOCHROME', 1, 'School and Office Supplies', 'HP/LaserJet Pro M404dn', 'Tray Capacity: 250 sheets, A4, A5, A6, Letter, Legal', 'unit', NULL, 9201.92, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(65, 'OE-0006', 'ELECTRIC FAN, INDUSTRIAL, GROUND TYPE', 3, 'Appliances', 'Union', 'Metal Blade, Three (3) blades, 220 - 240 volts, 60Hz, w/ ICC Mark', 'unit', NULL, 1352.00, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(66, 'OE-0007', 'TAPE DISPENSER, TABLE TOP', 1, 'School and Office Supplies', 'Printo', 'table top, 1.2kg, Body made of molded plastic, smooth finish', 'unit', NULL, 77.58, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(67, 'OE-0008', 'PAPER SHREDDER', 2, 'CCTV Supply and Installation', NULL, 'Can shred paper, paper clips, staples, credit cards and CDs, 30liters, 200 watts', 'unit', NULL, 5699.00, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(68, 'OE-0009', 'ELECTRIC FAN, CEILING MOUNT, ORBIT TYPE', 2, 'CCTV Supply and Installation', 'Union', 'Metal Blade, Three (3) blades, 220 - 240 volts, 60Hz, w/ ICC Mark', 'unit', NULL, 1222.00, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(69, 'OE-0010', 'DATER STAMP', 1, 'School and Office Supplies', 'Printo/S-5030D', '30mm x 45mm, Four band date and 12 year band, Self-inking stam pad', 'piece', NULL, 434.95, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(70, 'OE-0011', 'MULTIMEDIA PROJECTOR, 4000 MIN', 1, 'School and Office Supplies', 'InFocus', 'Type: DLP, Native Aspec Ratio: 16:9, Full HD (1920x1080 pixels)', 'unit', NULL, 16588.00, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(71, 'OE-0012', 'BINDING AND PUNCHING MACHINE, 50MM BINDING CAPACITY', 8, 'Logistics Services', 'NIRO', 'Binding Cap: 425 sheets of paper (80gsm), Punching Cap: 15 sheets of paper (80gsm)', 'unit', NULL, 9534.72, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(72, 'OE-0013', 'PRINTER, IMPACT, DOT MATRIX, 24 PINS, 136 COLUMNS', 2, 'CCTV Supply and Installation', 'Epson', 'No of Columns: 136, Speed 480cps high speed', 'unit', NULL, 38100.97, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(73, 'OE-0014', 'MONOBLOC CHAIR, WHITE', 7, 'Computer / IT Services', NULL, 'White or Beige, plain finish', 'piece', NULL, 341.12, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(74, 'OE-0015', 'FIRE EXTINGUISHER, DRY CHEMICAL', 5, 'Information and Communication Technology', NULL, '4.5kg, Dry Chemical (Mono-Ammonium Phosphate), ABC Class of fire', 'unit', NULL, 1144.00, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(75, 'OS-0001', 'TAPE, TRANSPARENT, 24MM', 7, 'Computer / IT Services', NULL, '50 meters, 1\", Thickness: 0.040mm', 'roll', NULL, 17.68, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(76, 'OS-0002', 'CORRECTION TAPE', 5, 'Information and Communication Technology', NULL, 'Dispensing Mechanism: Gear type, single line tape, L: 8meters, W: 5mm', 'piece', NULL, 13.50, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(77, 'OS-0003', 'SCISSORS, SYMMETRICAL / ASYMMETRICAL', 3, 'Appliances', NULL, 'Stainless steel, for cutting papers, plastic, and rubber', 'pair', NULL, 65.52, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(78, 'OS-0004', 'PAPER CLIP, VINYL/PLASTIC COATED, JUMBO, 50MM', 8, 'Logistics Services', NULL, 'Wire Diameter: 1.0mm, Length of Clip: 50mm', 'box', NULL, 19.46, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(79, 'OS-0005', 'TAPE, TRANSPARENT, 48MM', 3, 'Appliances', NULL, '50 meters, 2\", Thickness: 0.040mm', 'roll', NULL, 29.12, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(80, 'OS-0006', 'ERASER, PLASTIC/RUBBER', 2, 'CCTV Supply and Installation', NULL, 'Material: Plastic/Rubber, Rectangular, for erasing wood-cased and mechanical pencil impressions', 'piece', NULL, 9.20, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(81, 'OS-0007', 'STAPLE WIRE, STANDARD', 7, 'Computer / IT Services', 'Printo', '5000 wires per box, wire per strip: 100, ', 'box', NULL, 28.08, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(82, 'OS-0008', 'STAPLER, STANDARD TYPE', 5, 'Information and Communication Technology', 'Joy', 'Load Capacity: 200 staple wires, ', 'piece', NULL, 197.60, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(83, 'OS-0009', 'RULER, PLASTIC, 450MM', 1, 'School and Office Supplies', NULL, 'Transparent/Clear, Ruler Scale: MM,CM, Inches', 'piece', NULL, 19.93, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(84, 'OS-0010', 'STAPLE REMOVER, PLIER TYPE', 1, 'School and Office Supplies', NULL, 'Metal', 'piece', NULL, 46.51, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(85, 'OS-0011', 'CARBON FILM, LEGAL SIZE', 3, 'Appliances', NULL, 'Polyethylene Film, Black, 216mm x 330mm', 'box', NULL, 351.83, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, 'To be sold in boxes of 100 sheets', '', NULL, NULL),
(86, 'OS-0012', 'TAPE, MASKING, 24MM', 8, 'Logistics Services', NULL, '50 meters, 1\", Thickness: 0.25mm', 'roll', NULL, 55.68, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(87, 'OS-0013', 'COMPUTER MOUSE, WIRELESS', 2, 'CCTV Supply and Installation', NULL, 'Wireless with USB receiver, Optical', 'unit', NULL, 161.92, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(88, 'OS-0014', 'ACETATE', 6, 'Lighting Control and Automation', NULL, 'Transparent, Thickness: 0.08mm, Width: 120meters, 50 meters per roll', 'roll', NULL, 1243.84, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(89, 'OS-0015', 'STAPLE WIRE, HEAVY DUTY (BINDER TYPE)', 6, 'Lighting Control and Automation', 'Joy', '1000 wires per box, wire per strip: 100, 0.60mm thickness', 'box', NULL, 36.40, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(90, 'OS-0016', 'FILE ORGANIZER', 4, 'Agriculture', NULL, '220mm x 380mm, Expanding, plastic material, with 12 plastic inside pockets, w/ elastic strap', 'piece', NULL, 90.20, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(91, 'OS-0017', 'BINDING RING/COMB, PLASTIC, 32MM', 5, 'Information and Communication Technology', NULL, 'plastic, 84 rings, Diameter: 32mm, length: 1.2meter, thickness: 0.60mm', 'bundle', NULL, 259.89, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, 'To be sold in bundles of 10pcs', '', NULL, NULL),
(92, 'OS-0018', 'STAPLER, HEAVY DUTY (BINDER)', 8, 'Logistics Services', NULL, 'Load Capacity:100 staples, staple wire sizes: 13mm and 17mm', 'unit', NULL, 693.15, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(93, 'OS-0019', 'TWINE, PLASTIC', 6, 'Lighting Control and Automation', NULL, 'Weight per roll: 1000g, Breaking Strength: 25kg', 'roll', NULL, 70.72, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(94, 'OS-0020', 'PAPER CLIP, VINYL/PLASTIC COATED, 33MM', 7, 'Computer / IT Services', NULL, 'Wire Diameter: 0.80mm, Length of Clip: 33mm', 'box', NULL, 8.84, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(95, 'OS-0021', 'CLIP, BACKFOLD, 25MM', 2, 'CCTV Supply and Installation', NULL, 'All metal, Clamping length: 25mm, Clamping Depth: 13mm, Binding Capacity: 9.5mm', 'box', NULL, 19.61, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, 'To be sold in boxes of 12pcs', '', NULL, NULL),
(96, 'OS-0022', 'CLIP, BACKFOLD, 50MM', 8, 'Logistics Services', NULL, 'All metal, Clamping length: 50mm, Clamping Depth: 25mm, Binding Capacity: 19mm', 'box', NULL, 62.89, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, 'To be sold in boxes of 12pcs', '', NULL, NULL),
(97, 'OS-0023', 'TAPE, MASKING, 48MM', 6, 'Lighting Control and Automation', NULL, '50 meters, 2\", Thickness: 0.25mm', 'roll', NULL, 138.32, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(98, 'OS-0024', 'CLIP, BACKFOLD, 19MM', 4, 'Agriculture', NULL, 'All metal, Clamping length: 19mm, Clamping Depth: 10mm, Binding Capacity: 5.5mm', 'box', NULL, 11.13, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, 'To be sold in boxes of 12pcs', '', NULL, NULL),
(99, 'OS-0025', 'STAMP PAD, INK', 7, 'Computer / IT Services', NULL, 'Vol: 50ml, with applicator, Color: Violet', 'bottle', NULL, 28.79, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(100, 'OS-0026', 'INDEX TAB', 4, 'Agriculture', NULL, 'Transparent, self-adhesive, Five sets per box, ', 'box', NULL, 68.41, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(101, 'OS-0027', 'FOLDER, L-TYPE, A4', 4, 'Agriculture', NULL, 'Plastic, 216mm x 304mm, Thickness: 0.17mm', 'pack', NULL, 200.28, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, 'To be sold in packs of 50pcs', '', NULL, NULL),
(102, 'OS-0028', 'FOLDER, L-TYPE,LEGAL', 6, 'Lighting Control and Automation', NULL, 'Plastic, 235mm x 346mm, Thickness: 0.17mm', 'pack', NULL, 249.08, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, 'To be sold in packs of 50pcs', '', NULL, NULL),
(103, 'OS-0029', 'RUBBER BAND, NO. 18', 7, 'Computer / IT Services', NULL, 'Net weight: 350g, Tensile Strength: 9.81Mpa, Elongation: 500%', 'box', NULL, 135.20, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(104, 'OS-0030', 'PUNCHER, PAPER, HEAVY DUTY', 4, 'Agriculture', NULL, 'Diameter of Hole: 7.00mm, Thirty sheets of 70gsm Capacity, w/ two hole guide', 'piece', NULL, 153.92, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(105, 'OS-0031', 'PENCIL SHARPENER', 4, 'Agriculture', NULL, 'Manual, Table Mountable type, with metal clamp, single cutter-head', 'piece', NULL, 236.08, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(106, 'OS-0032', 'CHALK, WHITE ENAMEL', 3, 'Appliances', NULL, 'Molded, White, Dustless, Non-toxic, L: 80mm', 'box', NULL, 32.97, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, 'To be sold in boxes of 100pcs', '', NULL, NULL),
(107, 'OS-0033', 'STAMP PAD, FELT', 5, 'Information and Communication Technology', NULL, 'Material: Felt, Combination of Plastic and Metal, 61mm x 102mm', 'piece', NULL, 39.92, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(108, 'OS-0034', 'TAPE, ELECTRICAL', 4, 'Agriculture', NULL, 'Made of Polyvinyl Chloride (PVC), 19mm x 20 meters', 'roll', NULL, 19.45, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(109, 'OS-0035', 'ENVELOPE, EXPANDING, PLASTIC', 2, 'CCTV Supply and Installation', NULL, 'Polypropylene plastic, with elastic strp, 380mm x 260mm', 'piece', NULL, 30.49, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(110, 'OS-0036', 'BLADE, FOR GENERAL PURPOSE CUTTER/UTILITY KNIFE', 5, 'Information and Communication Technology', NULL, 'LXW: 100mm x 16mm, Thickness: 0.40mm', 'tube', NULL, 16.37, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(111, 'OS-0037', 'CUTTER/UTILITY KNIFE, FOR GENERAL PURPOSE', 5, 'Information and Communication Technology', NULL, 'LXW: 100mm x 16mm, Thickness: 0.40mm', 'piece', NULL, 31.72, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(112, 'OS-0038', 'TAPE, PACKAGING, 48MM', 3, 'Appliances', NULL, '50 meters, 2\", Thickness: 0.25mm, Color: Tan, Biaxially-oriented Polypropylene', 'roll', NULL, 22.36, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(113, 'OS-0039', 'GLUE, ALL PURPOSE', 7, 'Computer / IT Services', 'Kippy', '240 grams, pH: 4 to 8, Solid content: 30%, Strength: No slippage on pasted part', 'jar', NULL, 62.14, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(114, 'OS-0040', 'FASTENER, METAL', 5, 'Information and Communication Technology', NULL, 'Metal, Compressor: 9mm, Base: 9mm, Prongs: 4.5mm', 'box', NULL, 94.64, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, 'To be sold in boxes of 50 sets', '', NULL, NULL),
(115, 'OS-0041', 'CLIP, BACKFOLD, 32MM', 2, 'CCTV Supply and Installation', NULL, 'All metal, Clamping length: 32mm, Clamping Depth: 14mm, Binding Capacity: 1.45mm', 'box', NULL, 33.28, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, 'To be sold in boxes of 12pcs', '', NULL, NULL),
(116, 'OS-0042', 'WRAPPING PAPER, KRAFT', 7, 'Computer / IT Services', NULL, 'Kraft, (65gsm), WxL: 36\"x48\"', 'pack', NULL, 161.20, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, 'To be sold in packs of 50 sheets', '', NULL, NULL),
(117, 'TC-0001', 'TONER CARTRIDGE, HP CE285A (HP85A), BLACK', 5, 'Information and Communication Technology', 'HP', 'Laserjet', 'cart', NULL, 3598.40, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(118, 'TC-0002', 'TONER CARTRIDGE, HP CF217A (HP17A), BLACK,', 1, 'School and Office Supplies', 'HP', 'Laserjet', 'cart', NULL, 3194.88, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(119, 'TC-0003', 'TONER CARTRIDGE, HP CE278A, BLACK', 7, 'Computer / IT Services', 'HP', 'Laserjet', 'cart', NULL, 4152.72, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(120, 'TC-0004', 'TONER CARTRIDGE, HP CB435A, BLACK', 1, 'School and Office Supplies', 'HP', 'Laserjet', 'cart', NULL, 3439.28, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(121, 'TC-0005', 'TONER CARTRIDGE, SAMSUNG MLT-D104S, BLACK', 6, 'Lighting Control and Automation', 'Samsung', 'black', 'cart', NULL, 2454.40, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(122, 'TC-0006', 'TONER CARTRIDGE, HP CE255A, BLACK', 5, 'Information and Communication Technology', 'HP', 'Laserjet', 'cart', NULL, 7705.36, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(123, 'TC-0007', 'INK CARTRIDGE, HP CH561WA (HP61), BLACK', 4, 'Agriculture', 'HP', 'black', 'cart', NULL, 865.28, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(124, 'TC-0008', 'TONER CARTRIDGE, HP CF400A (HP201A), BLACK', 5, 'Information and Communication Technology', 'HP', 'Laserjet', 'cart', NULL, 3439.28, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(125, 'TC-0009', 'TONER CARTRIDGE, HP CF360A (HP508A), BLACK', 1, 'School and Office Supplies', 'HP', 'Laserjet', 'cart', NULL, 7803.12, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(126, 'TC-0010', 'TONER CARTRIDGE, HP CF412A (HP410A), YELLOW', 8, 'Logistics Services', 'HP', 'Laserjet', 'cart', NULL, 5592.08, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(127, 'TC-0011', 'TONER CARTRIDGE, HP CF411A (HP410A), CYAN', 8, 'Logistics Services', 'HP', 'Laserjet', 'cart', NULL, 5592.08, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(128, 'TC-0012', 'TONER CARTRIDGE, HP CF410A (HP410A), BLACK', 6, 'Lighting Control and Automation', 'HP', 'Laserjet', 'cart', NULL, 4328.48, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(129, 'TC-0013', 'TONER CARTRIDGE, HP CF351A, CYAN LJ', 6, 'Lighting Control and Automation', 'HP', 'Laserjet', 'cart', NULL, 2943.20, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(130, 'TC-0014', 'TONER CARTRIDGE, HP CF402A (HP201A), YELLOW', 8, 'Logistics Services', 'HP', 'Laserjet', 'cart', NULL, 4063.28, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(131, 'TC-0015', '\nTONER CARTRIDGE, HP CF352A, YELLOW LJ', 4, 'Agriculture', 'HP', 'Laserjet', 'cart', NULL, 2943.20, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(132, 'TC-0016', 'TONER CARTRIDGE, HP CF353A, MAGENTA LJ', 8, 'Logistics Services', 'HP', 'Laserjet', 'cart', NULL, 2943.20, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(133, 'TC-0017', 'TONER CARTRIDGE, HP CF413A (HP410A), MAGENTA', 7, 'Computer / IT Services', 'HP', 'Laserjet', 'cart', NULL, 5592.08, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(134, 'TC-0018', 'TONER CARTRIDGE, HP CF401A (HP201A), CYAN', 8, 'Logistics Services', 'HP', 'Laserjet', 'cart', NULL, 4063.28, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(135, 'TC-0019', 'TONER CARTRIDGE, HP CF350A, BLACK LJ', 6, 'Lighting Control and Automation', 'HP', 'Laserjet', 'cart', NULL, 2856.88, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(136, 'TC-0020', 'TONER CARTRIDGE, HP CE402A, YELLOW', 7, 'Computer / IT Services', 'HP', 'Laserjet', 'cart', NULL, 10193.04, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(137, 'TC-0021', 'TONER CARTRIDGE, HP CE403A, MAGENTA', 1, 'School and Office Supplies', 'HP', 'Laserjet', 'cart', NULL, 10103.60, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(138, 'TC-0022', 'TONER CARTRIDGE, HP CF226A (HP26A), BLACK,', 8, 'Logistics Services', 'HP', 'Laserjet', 'cart', NULL, 5822.96, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(139, 'TC-0023', 'TONER CARTRIDGE, HP CF363A (HP508A), MAGENTA', 8, 'Logistics Services', 'HP', 'Laserjet', 'cart', NULL, 9783.28, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(140, 'TC-0024', 'TONER CARTRIDGE, HP CF362A (HP508A), YELLOW', 8, 'Logistics Services', 'HP', 'Laserjet', 'cart', NULL, 9783.28, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(141, 'TC-0025', 'TONER CARTRIDGE, HP CF361A (HP508A), CYAN', 5, 'Information and Communication Technology', 'HP', 'Laserjet', 'cart', NULL, 9783.28, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(142, 'TC-0026', 'TONER CARTRIDGE, SAMSUNG ML-D2850B, BLACK', 4, 'Agriculture', 'Samsung', 'black', 'cart', NULL, 5116.80, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(143, 'TC-0027', 'TONER CARTRIDGE, HP CF403A (HP201A), MAGENTA', 6, 'Lighting Control and Automation', 'HP', 'Laserjet', 'cart', NULL, 4063.28, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(144, 'TC-0028', 'TONER CARTRIDGE, HP Q7553A, BLACK', 8, 'Logistics Services', 'HP', 'Laserjet', 'cart', NULL, 4680.00, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(145, 'TC-0029', 'TONER CARTRIDGE, HP CE505A, BLACK', 6, 'Lighting Control and Automation', 'HP', 'Laserjet', 'cart', NULL, 4495.92, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(146, 'TC-0030', 'TONER CARTRIDGE, BROTHER TN-2130, BLACK', 6, 'Lighting Control and Automation', 'Brother', 'black', 'cart', NULL, 1892.80, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(147, 'TC-0031', 'TONER CARTRIDGE, HP CE310A, BLACK', 6, 'Lighting Control and Automation', 'HP', 'Laserjet', 'cart', NULL, 2608.32, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(148, 'TC-0032', 'TONER CARTRIDGE, HP CE313A, MAGENTA', 8, 'Logistics Services', 'HP', 'Laserjet', 'cart', NULL, 2897.44, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(149, 'TC-0033', 'TONER CARTRIDGE, HP CE311A, CYAN', 5, 'Information and Communication Technology', 'HP', 'Laserjet', 'cart', NULL, 2897.44, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(150, 'TC-0034', 'TONER CARTRIDGE, HP CF281A (HP81A), BLACK,', 1, 'School and Office Supplies', 'HP', 'Laserjet', 'cart', NULL, 8658.00, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(151, 'TC-0035', 'TONER CARTRIDGE, HP CE400A, BLACK', 4, 'Agriculture', 'HP', 'Laserjet', 'cart', NULL, 6786.00, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(152, 'TC-0036', 'TONER CARTRIDGE, HP CF325XC (HP25X) BLACK LASERJET', 5, 'Information and Communication Technology', 'HP', 'Laserjet', 'cart', NULL, 13728.00, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(153, 'TC-0037', 'TONER CARTRIDGE, SAMSUNG MLT-D108S, BLACK', 5, 'Information and Communication Technology', 'Samsung', 'black', 'cart', NULL, 3289.52, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(154, 'TC-0038', 'TONER CARTRIDGE, HP CF283XC (HP83X) BLK CONTRACT L', 8, 'Logistics Services', 'HP', 'Laserjet', 'cart', NULL, 3796.00, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(155, 'TC-0039', 'TONER CARTRIDGE, SAMSUNG MLT-D103S, BLACK', 1, 'School and Office Supplies', 'Samsung', 'black', 'cart', NULL, 2689.44, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(156, 'TC-0040', 'INK CARTRIDGE, HP CN047AA (HP951XL) MAGENTA', 1, 'School and Office Supplies', 'HP', 'officejet', 'cart', NULL, 1517.36, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(157, 'TC-0041', 'TONER CART, HP CE401A, CYAN', 6, 'Lighting Control and Automation', 'HP', 'Laserjet', 'cart', NULL, 10103.60, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(158, 'TC-0042', 'TONER CART, SAMSUNG SCX-D6555A, BLACK', 6, 'Lighting Control and Automation', 'Samsung', 'black', 'cart', NULL, 4066.40, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(159, 'TC-0043', 'TONER CART, SAMSUNG MLT-D203U, BLACK', 3, 'Appliances', 'Samsung', 'black', 'cart', NULL, 6442.80, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(160, 'TC-0044', 'INK CARTRIDGE, CANON CL-741, COLORED', 8, 'Logistics Services', 'Canon', 'Colored', 'cart', NULL, 1126.32, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(161, 'TC-0045', 'TONER CARTRIDGE, HP CF283A (HP83A), LASERJET,', 2, 'CCTV Supply and Installation', 'HP', 'Laserjet', 'cart', NULL, 3367.52, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(162, 'TC-0046', 'TONER CARTRIDGE, HP CF287A (HP87), BLACK', 3, 'Appliances', 'HP', 'Laserjet', 'cart', NULL, 10908.56, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(163, 'TC-0047', 'TONER CARTRIDGE, HP Q2612A, BLACK', 8, 'Logistics Services', 'HP', 'Laserjet', 'cart', NULL, 4155.84, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(164, 'TC-0048', 'TONER CART, HP CB540A, BLACK', 4, 'Agriculture', 'HP', 'Laserjet', 'cart', NULL, 3603.60, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(165, 'TC-0049', 'TONER CART, BROTHER TN-3320, BLACK', 1, 'School and Office Supplies', 'Brother', 'black', 'cart', NULL, 3567.20, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(166, 'TC-0050', 'TONER CART, BROTHER TN-3350, BLACK', 1, 'School and Office Supplies', 'Brother', 'black', 'cart', NULL, 5002.40, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(167, 'TC-0051', 'TONER CART, BROTHER TN-3478, BLACK', 8, 'Logistics Services', 'Brother', 'black', 'cart', NULL, 5575.44, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(168, 'TC-0052', 'TONER CARTRIDGE, BROTHER TN-456 BLACK, HIGH YIELD', 6, 'Lighting Control and Automation', 'Brother', 'black', 'cart', NULL, 4564.56, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(169, 'TC-0053', 'TONER CARTRIDGE, BROTHER TN-456 CYAN, HIGH YIELD', 2, 'CCTV Supply and Installation', 'Brother', 'Cyan', 'cart', NULL, 7716.80, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(170, 'TC-0054', 'TONER CARTRIDGE, BROTHER TN-456 MAGENTA, HIGH', 7, 'Computer / IT Services', 'Brother', 'Magenta', 'cart', NULL, 7716.80, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(171, 'TC-0055', 'TONER CARTRIDGE, BROTHER TN-456 YELLOW, HIGH YIELD', 1, 'School and Office Supplies', 'Brother', 'Yellow', 'cart', NULL, 7716.80, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(172, 'TC-0056', 'TONER CARTRIDGE, CANON CRG-324 II', 2, 'CCTV Supply and Installation', 'Canon', 'Canon', 'cart', NULL, 13399.36, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(173, 'TC-0057', 'TONER CARTRIDGE, HP CE312A, YELLOW', 2, 'CCTV Supply and Installation', 'HP', 'Laserjet', 'cart', NULL, 2897.44, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(174, 'TC-0058', 'INK CARTRIDGE, HP CZ107AA (HP678) BLACK', 5, 'Information and Communication Technology', 'HP', 'black', 'cart', NULL, 404.56, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(175, 'TC-0059', 'INK CARTRIDGE, HP CD887AA (HP703), BLACK', 1, 'School and Office Supplies', 'HP', 'black', 'cart', NULL, 419.12, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(176, 'TC-0060', 'INK CARTRIDGE, HP CN692AA (HP704) BLACK', 2, 'CCTV Supply and Installation', 'HP', 'black', 'cart', NULL, 419.12, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(177, 'TC-0061', 'INK CARTRIDGE, HP C2P04AA (HP62), BLACK', 1, 'School and Office Supplies', 'HP', 'black', 'cart', NULL, 852.80, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(178, 'TC-0062', 'INK CARTRIDGE, HP F6V27AA (HP680) BLACK', 8, 'Logistics Services', 'HP', 'black', 'cart', NULL, 424.32, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(179, 'TC-0063', 'INK CARTRIDGE, HP L0S60AA (HP955) BLACK ORIGINAL', 4, 'Agriculture', 'HP', 'black', 'cart', NULL, 1294.80, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(180, 'TC-0064', 'INK CARTRIDGE, HP T6M01AA (HP905) BLACK ORIGINAL', 7, 'Computer / IT Services', 'HP', 'black', 'cart', NULL, 774.80, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(181, 'TC-0065', 'INK CARTRIDGE, HP L0S51AA (HP955) CYAN ORIGINAL', 7, 'Computer / IT Services', 'HP', 'Cyan', 'cart', NULL, 982.80, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(182, 'TC-0066', 'INK CARTRIDGE, HP T6L89AA (HP905) CYAN ORIGINAL', 7, 'Computer / IT Services', 'HP', 'Cyan', 'cart', NULL, 468.00, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(183, 'TC-0067', 'INK CARTRIDGE, HP L0S54AA (HP955) MAGENTA ORIGINAL', 5, 'Information and Communication Technology', 'HP', 'Magenda', 'cart', NULL, 982.80, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(184, 'TC-0068', 'INK CARTRIDGE, HP T6L93AA (HP905) MAGENTA ORIGINAL', 1, 'School and Office Supplies', 'HP', 'Magenda', 'cart', NULL, 468.00, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(185, 'TC-0069', 'INK CARTRIDGE, HP C9352AA, (HP22), TRI-COLOR', 5, 'Information and Communication Technology', 'HP', 'Tri-Color', 'cart', NULL, 1053.52, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(186, 'TC-0070', 'INK CARTRIDGE, HP CC643WA (HP60), TRI-COLOR', 8, 'Logistics Services', 'HP', 'Tri-Color', 'cart', NULL, 1047.28, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(187, 'TC-0071', 'INK CARTRIDGE, HP CH562WA (HP61), TRI-COLOR', 1, 'School and Office Supplies', 'HP', 'Tri-Color', 'cart', NULL, 1066.00, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(188, 'TC-0072', 'INK CARTRIDGE, HP CZ108AA (HP678) TRI-COLOR', 6, 'Lighting Control and Automation', 'HP', 'Tri-Color', 'cart', NULL, 404.56, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(189, 'TC-0073', 'INK CARTRIDGE, HP CD888AA (HP703), TRI-COLOR', 8, 'Logistics Services', 'HP', 'Tri-Color', 'cart', NULL, 419.12, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(190, 'TC-0074', 'INK CARTRIDGE, HP CN693AA (HP704) TRI-COLOR', 1, 'School and Office Supplies', 'HP', 'Tri-Color', 'cart', NULL, 419.12, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(191, 'TC-0075', 'INK CARTRIDGE, HP C2P06AA (HP62), TRI-COLOR', 5, 'Information and Communication Technology', 'HP', 'Tri-Color', 'cart', NULL, 1048.32, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(192, 'TC-0076', 'INK CARTRIDGE, HP F6V26AA (HP680) TRI-COLOR', 5, 'Information and Communication Technology', 'HP', 'Tri-Color', 'cart', NULL, 424.32, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(193, 'TC-0077', 'INK CARTRIDGE, HP L0S57AA (HP955) YELLOW ORIGINAL', 2, 'CCTV Supply and Installation', 'HP', 'Yellow', 'cart', NULL, 982.80, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(194, 'TC-0078', 'INK CARTRIDGE, HP T6L97AA (HP905) YELLOW ORIGINAL', 6, 'Lighting Control and Automation', 'HP', 'Yellow', 'cart', NULL, 468.00, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(195, 'TC-0079', 'INK CARTRIDGE, HP CD975AA (HP920XL), BLACK', 4, 'Agriculture', 'HP', 'black', 'cart', NULL, 1541.28, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(196, 'TC-0080', 'INK CARTRIDGE, HP CN045AA (HP950XL), BLACK', 7, 'Computer / IT Services', 'HP', 'black', 'cart', NULL, 1970.80, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(197, 'TC-0081', 'INK CARTRIDGE, HP L0S72AA (HP955XL) BLACK ORIGINAL', 5, 'Information and Communication Technology', 'HP', 'black', 'cart', NULL, 1817.92, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(198, 'TC-0082', 'INK CARTRIDGE, HP CD972AA (HP920XL), CYAN', 7, 'Computer / IT Services', 'HP', 'Cyan', 'cart', NULL, 823.68, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(199, 'TC-0083', 'INK CARTRIDGE, HP CN046AA (HP951XL) CYAN', 3, 'Appliances', 'HP', 'Cyan', 'cart', NULL, 1517.36, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(200, 'TC-0084', 'INK CARTRIDGE, HP L0S63AA (HP955XL) CYAN ORIGINAL', 2, 'CCTV Supply and Installation', 'HP', 'Cyan', 'cart', NULL, 1339.52, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(201, 'TC-0085', 'INK CARTRIDGE, HP CD973AA (HP920XL), MAGENTA', 7, 'Computer / IT Services', 'HP', 'Magenta', 'cart', NULL, 823.68, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(202, 'TC-0086', 'INK CARTRIDGE, EPSON C13T664100 (T6641), BLACK', 6, 'Lighting Control and Automation', 'Epson', 'Black', 'cart', NULL, 231.90, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(203, 'TC-0087', 'INK CARTRIDGE, EPSON C13T664200 (T6642), CYAN', 5, 'Information and Communication Technology', 'Epson', 'Cyan', 'cart', NULL, 242.20, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(204, 'TC-0088', 'INK CARTRIDGE, EPSON C13T664300 (T6643), MAGENTA', 1, 'School and Office Supplies', 'Epson', 'Magenta', 'cart', NULL, 242.20, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(205, 'TC-0089', 'INK CARTRIDGE, EPSON C13T664400 (T6644), YELLOW', 1, 'School and Office Supplies', 'Epson', 'Yellow', 'cart', NULL, 242.20, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(206, 'TC-0090', 'INK CARTRIDGE, HP C9351AA, (HP21), BLACK', 8, 'Logistics Services', 'HP', 'black', 'cart', NULL, 910.00, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(207, 'TC-0091', 'INK CARTRIDGE, HP CC640WA (HP60), BLACK', 4, 'Agriculture', 'HP', 'black', 'cart', NULL, 880.88, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(208, 'TC-0092', 'INK CARTRIDGE, CANON PG-810, BLACK', 6, 'Lighting Control and Automation', 'Canon', 'black', 'cart', NULL, 892.32, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(209, 'TC-0093', 'INK CARTRIDGE, CANON PG-740, BLACK', 5, 'Information and Communication Technology', 'Canon', 'black', 'cart', NULL, 861.12, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(210, 'TC-0094', 'INK CARTRIDGE, CANON CL-811, COLORED', 8, 'Logistics Services', 'Canon', 'Colored', 'cart', NULL, 1178.32, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(211, 'TC-0095', 'INK CARTRIDGE, HP L0S66AA (HP955XL) MAGENTA', 4, 'Agriculture', 'HP', 'Magenta', 'cart', NULL, 1339.52, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(212, 'TC-0096', 'INK CARTRIDGE, HP CD974AA (HP920XL), YELLOW', 6, 'Lighting Control and Automation', 'HP', 'Yellow', 'cart', NULL, 823.68, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(213, 'TC-0097', 'INK CARTRIDGE, HP CN048AA (HP951XL) YELLOW', 5, 'Information and Communication Technology', 'HP', 'Yellow', 'cart', NULL, 1517.36, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(214, 'TC-0098', 'INK CARTRIDGE, HP L0S69AA (HP955XL) YELLOW', 1, 'School and Office Supplies', 'HP', 'Yellow', 'cart', NULL, 1339.52, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(215, 'TC-0099', 'DRUM CART, BROTHER DR-3455, BLACK', 1, 'School and Office Supplies', 'Brother', 'black', 'cart', NULL, 6947.20, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(216, 'TC-0100', 'RIBBON CART, EPSON C13S015516 (#8750), BLACK', 2, 'CCTV Supply and Installation', 'Epson', 'black', 'cart', NULL, 77.43, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(217, 'TC-0101', 'RIBBON CARTRIDGE, EPSON C13S015531 (S015086)', 8, 'Logistics Services', 'Epson', 'black', 'cart', NULL, 818.48, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(218, 'TC-0102', 'RIBBON CART, EPSON C13S015632, BLACK', 7, 'Computer / IT Services', 'Epson', 'black', 'cart', NULL, 77.94, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(219, 'WS-0001', 'MARKER, FLUORESCENT', 2, 'CCTV Supply and Installation', NULL, 'Barrel: Flat, Tip: Chisel point', 'set', NULL, 31.11, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, 'To be sold in sets of 3 colors', '', NULL, NULL),
(220, 'WS-0002', 'PENCIL, LEAD/GRAPHITE, WITH ERASER', 8, 'Logistics Services', NULL, 'Wood cased, Hardness: HB or 2', 'box', NULL, 44.71, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, 'To be sold in boxes of 12pcs', '', NULL, NULL),
(221, 'WS-0003', 'MARKER, PERMANENT, BLACK, BLUE, RED', 3, 'Appliances', 'Dixon', 'Tip: Felt, Width: 1.5mm', 'piece', NULL, 8.27, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(222, 'WS-0004', 'MARKER, WHITEBOARD, BLACK, BLUE, RED', 5, 'Information and Communication Technology', 'Deli', 'Tip: Felt, Width: 1.5mm', 'piece', NULL, 9.65, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(223, 'WS-0005', 'SIGN PEN, EXTRA FINE TIP, BLACK, BLUE, RED', 5, 'Information and Communication Technology', 'Dixon', 'Tip: 0.5mm, needle type, Type: Liquid or gel / with metal clip', 'piece', NULL, 22.20, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(224, 'MR-0010', 'Hygienix 70% Solution (1 Gallon)', 4, 'Agriculture', 'Hygienix', 'Antibac', 'gallon', NULL, 1068.00, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(225, 'PS-0001', 'Immunpro (Sodium Ascorbate Zinc)', 3, 'Appliances', 'Unilab', NULL, 'box', NULL, 1000.00, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(226, 'MR-0011', 'Interfolded Paper Towel Size: 200mmx200mm (175 sheets)', 5, 'Information and Communication Technology', NULL, NULL, 'pack', NULL, 46.00, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(227, 'OE-0016', 'Detecto Weighing Scale - (CAP 200kg)', 3, 'Appliances', 'Detecto', NULL, 'unit', NULL, 24500.00, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(228, 'MR-0010', 'Bioderm (Family Germacidal Soap) 60g', 7, 'Computer / IT Services', 'IPI', NULL, 'piece', NULL, 23.00, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL),
(229, 'CE-0015', 'WHITE SACK 21X38 (50KG)', 6, 'Lighting Control and Automation', NULL, NULL, 'piece', NULL, 17.00, NULL, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, '', NULL, NULL);

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
('4qeet4uUkBEv9RTjB9tA0qEstaRoavYCzrLjs1Vq', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVm1keGE1ME5WSkVSWnhvOWRuVUFoOXAya1dHa1BpRURqWThjQ0hwViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTc6Imh0dHA6Ly9rbWNpLmxvY2FsIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1737254195),
('zZ83dL7oeNh1slU0Vn2kjMESQBCzH5j0rOolJNcQ', NULL, '192.168.1.4', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_0_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/132.0.6834.78 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSmNoSENXM1JyeldxM2gwYkxYSXZjZXNIdzRRcVVNTjA0T3JaRWtBdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly8xOTIuMTY4LjEuMy9idXkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1737251811);

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
(3, 'Renzo Gregorio', 'gregoriorenzo05@gmail.com', '2025-01-09 23:43:43', '$2y$12$LIWYp0OUi7kC7693.vqzIOen0Cf2xV0h1xEQXmzlkEQ4AWH3t.bcG', '6SL0lrBQ0wIoPi1kJfKqtmrLMwYeoVCPDSjCoEJDzUauvB8FgZalH5ycvTHc', '2025-01-09 23:31:32', '2025-01-10 00:37:22', '2025-01-10 00:37:22');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `filters`
--
ALTER TABLE `filters`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_products_category` (`category_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `filters`
--
ALTER TABLE `filters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_products_category` FOREIGN KEY (`category_id`) REFERENCES `filters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
