-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2025 at 03:29 AM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `filters`
--
ALTER TABLE `filters`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `filters`
--
ALTER TABLE `filters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
