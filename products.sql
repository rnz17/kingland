-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2025 at 09:49 AM
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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `service_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subcategory_id` bigint(20) UNSIGNED DEFAULT NULL,
  `supplier` varchar(255) DEFAULT NULL,
  `spec` text DEFAULT NULL,
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

INSERT INTO `products` (`id`, `code`, `name`, `service_id`, `category_id`, `subcategory_id`, `supplier`, `spec`, `unit`, `unit_price`, `pcs_unit`, `value_ratio`, `status`, `available`, `needed`, `to_buy`, `low_alert`, `prod_note`, `created_at`, `updated_at`) VALUES
(1, 'WI-000001', 'Rover Sprint Ballpoint Pen Stick 0.5mm', 1, 1, 1, 'Rover', 'Pend tip: 0.5mm, Weight: 0.1kg, Length: 14cm, Width: 1.5cm, Height: 1cm, Colour: Black, Blue, Red', 'piece', 3.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, 'Rover sprint ballpoint pen stick - clear body, a pocket size pen, damage free tungsten carbide ball. Ultra smooth writing pen with 0.5mm pen tip. Available in 3 colors - Black, Blue, Red', NULL, NULL),
(2, 'WI-000002', 'Faber Castell 1423 Ballpoint Pen Black', 1, 1, 1, 'Faber Castell', 'Weight: 0.1kg, Length: 14cm, Width: 1cm, Height: 1cm, Colour: Black', 'piece', 16.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, 'Quality Pen Provides Skip-Free And Superior Writing Performance.\nRubberized Grip For Comfort Handling. Stainless Steel Nib Offers Smooth Writing And Clean Lines.', NULL, NULL),
(3, 'WI-000003', 'Faber Castell X5 Ballpoint Pen Retractable 0.5mm', 1, 1, 1, 'Faber Castell', 'Weight: 0.1kg, Length: 14cm, Width: 1cm, Height: 1cm, Colour: Black, Blue, Red', 'piece', 28.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, 'Semi-Gel ink, Nickel Silver Pen and Tungsten Carbide Ball, Low viscosity ink for super smooth writing, Needle point, High color intensity ink.', NULL, NULL),
(4, 'WI-000004', 'Faber Castell X5 Ballpoint Pen Retractable 0.7mm', 1, 1, 1, 'Faber Castell', 'Weight: 0.1kg, Length: 14cm, Width: 1cm, Height: 1cm, Colour: Black, Blue, Red', 'piece', 28.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, 'Semi-Gel ink, Nickel Silver Pen and Tungsten Carbide Ball, Low viscosity ink for super smooth writing, Needle point, High color intensity ink.', NULL, NULL),
(5, 'WI-000005', 'Faber Castell X5 Ballpoint Pen Retractable 1.0mm', 1, 1, 1, 'Faber Castell', 'Weight: 0.1kg, Length: 14cm, Width: 1cm, Height: 1cm, Colour: Black, Blue, Red', 'piece', 28.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, 'Semi-Gel ink, Nickel Silver Pen and Tungsten Carbide Ball, Low viscosity ink for super smooth writing, Needle point, High color intensity ink.', NULL, NULL),
(6, 'WI-000006', 'Faber Castell 1419 Ballpoint Pen Pastel 0.5mm', 1, 1, 1, 'Faber Castell', 'Weight: 0.1kg, Length: 14cm, Width: 1cm, Height: 1cm, Colour: Black', 'piece', 16.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, 'Grip zone caught compact hand while writing, Fade-resistant, High color intensity ink for perfect writing results, Water-resistant ink for smooth writing.', NULL, NULL),
(7, 'WI-000007', 'Faber Castell Click X Ball Pen Retractable Click X5 0.5mm', 1, 1, 1, 'Faber Castell', 'line width: 0.5mm, Colour: blue and black (60pcs/box)', 'box', 805.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, 'Retractable pen\nSuper smooth - low viscosity ink\nWater-resistant ink\nHigh colour intensity ink\n2 line widths: 0.5mm & 0.7mm\nAvailable in different colours\nColour: blue and black', NULL, NULL),
(8, 'WI-000008', 'Faber Castell Click X Ball Pen Retractable Click X7 0.7MM', 1, 1, 1, 'Faber Castell', 'line width: 0.7mm, Colour: blue and black (60pcs/box)', 'box', 805.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, 'Retractable pen\nSuper smooth - low viscosity ink\nWater-resistant ink\nHigh colour intensity ink\n2 line widths: 0.5mm & 0.7mm\nAvailable in different colours\nColour: blue and black', NULL, NULL),
(9, 'WI-000009', 'Faber Castell NX23 0.5', 1, 1, 1, 'Faber Castell', 'line width: 0.5mm, Colour: Green, Red, Blue, Black', 'piece', 14.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(10, 'WI-000010', 'Faber Castell Retractable Ballpen RX5', 1, 1, 1, 'Faber Castell', 'line width: 0.5mm, Colour: Blue, Black (30pcs/box)', 'box', 545.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(11, 'WI-000011', 'Blue Faber-Castell Poly Ball XB', 1, 1, 1, 'Faber Castell', 'line width: 0.6mm, Colour: Sweet Lilac, Black, Blue, Caribic Blue, Emerald Green, Navy Blue, Rosem Stone Grey ', 'piece', 334.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(12, 'WI-000012', 'Black Faber-Castell K-One Ballpoint Pen - 0.7mm', 1, 1, 1, 'Faber Castell', 'line width: 0.7mm, Colour: Black, Blue', 'piece', 58.12, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(13, 'WI-000013', 'Faber-Castell 241109 ballpoint pen Blue Clip-on retractable', 1, 1, 1, 'Faber Castell', 'line width: 0.6mm, Colour: Blue', 'piece', 364.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(14, 'WI-000014', 'Faber Castell Ballpoint Pen Grip X Push Type Size 0.5mm', 1, 1, 1, 'Faber Castell', 'line width: 0.5mm, Colour: Blue, Red, Black (10pcs/box)', 'box', 445.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(15, 'WI-000015', 'Faber Castell Ballpoint Pen Grip X Push Type Size 0.7mm', 1, 1, 1, 'Faber Castell', 'line width: 0.7mm, Colour: Blue, Red, Black (10pcs/box)', 'box', 445.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(16, 'WI-000016', 'Pilot Better Retractable Pen 0.7mm BP-145-F', 1, 1, 1, 'Pilot', 'line width: 0.7mm, Colour: Black Blue Red', 'piece', 49.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(17, 'WI-000017', 'Pilot Ballpen BPS 0.7mm', 1, 1, 1, 'Pilot', 'line width: 0.7mm, Colour: Black Blue Red Green', 'piece', 25.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(18, 'WI-000018', 'Pilot BP-1RT retractable', 1, 1, 1, 'Pilot', 'line width: 1.0mm, Colour: Black Blue Red (12pcs/box)', 'box', 162.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(19, 'WI-000019', 'Pilot Hi-Tecpoint BXRT-V5 / V5 RT Retractable Rollerball Or Refill Only', 1, 1, 1, 'Pilot', 'line width: 0.5mm, Colour: Black Blue Red Green', 'piece', 75.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(20, 'WI-000020', 'Pilot Hi-Tecpoint BXRT-V7 / V7 RT Retractable Rollerball Or Refill Only', 1, 1, 1, 'Pilot', 'line width: 0.7mm, Colour: Black Blue Red Green', 'piece', 75.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(21, 'WI-000021', 'Pilot Hi-Tecpoint V5 Sign Pen', 1, 1, 1, 'Pilot', 'Colour: Black Blue Red', 'piece', 53.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(22, 'WI-000022', 'Pilot - BP-145-M - Retractable - 1.0mm', 1, 1, 1, 'Pilot', 'line width: 1.0mm, Colour: Black Blue Red', 'piece', 50.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(23, 'WI-000023', 'Pilot Easytouch Refillable & Retractable - Medium Point', 1, 1, 1, 'Pilot', 'line width: 1.0mm, Colour: Black Blue Red (12pcs/box)', 'box', 2541.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(24, 'WI-000024', 'Pilot Hi-Techpoint V10 Grip Ballpen/BXGPN-V10 1.0mm', 1, 1, 1, 'Pilot', 'line width: 1.0mm, Colour: Black Blue Red', 'piece', 74.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(25, 'WI-000025', 'Pilot Rexgrip Retractable Medium', 1, 1, 1, 'Pilot', 'line width: 1.0mm, Colour: Black Green', 'piece', 69.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(26, 'WI-000026', 'Pilot Hi-tecpoint BXRT-V10 RT 1.0 Retractable', 1, 1, 1, 'Pilot', 'line width: 1.0mm, Colour: Black (12pcs/box)', 'box', 1008.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(27, 'WI-000027', 'Pilot 31820 Acroball Pen, 0.1mm Point, Retractable', 1, 1, 1, 'Pilot', 'line width: 1.0mm, Colour: Assorted, (5pcs/pack)', 'pack', 1237.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(28, 'PP-000001', 'Hard Copy Bond Paper Legal (70gsm)', 1, 2, 2, 'Hard Copy', 'Paper Grammage: (70gsm) Sub 20, 500 sheet per ream (216mm x 330mm)/Legal', 'ream', 260.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(29, 'PP-000002', 'Hard Copy Bond Paper A4 (70gsm)', 1, 2, 2, 'Hard Copy', 'Paper Grammage: (70gsm) Sub 20, 500 sheet per ream (210mm x 297mm)/A4', 'ream', 260.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(30, 'PP-000003', 'Hard Copy Bond Paper Letter (70gsm)', 1, 2, 2, 'Hard Copy', 'Paper Grammage: (70gsm) Sub 20, 500 sheet per ream (216mm x 279mm)/Letter', 'ream', 280.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(31, 'PP-000004', 'Hard Copy Bond Paper Legal (80gsm)', 1, 2, 2, 'Hard Copy', 'Paper Grammage: (80gsm) Sub 24, 500 sheet per ream (216mm x 330mm)/Legal', 'ream', 280.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(32, 'PP-000005', 'Hard Copy Bond Paper A4 (80gsm)', 1, 2, 2, 'Hard Copy', 'Paper Grammage: (80gsm) Sub 24, 500 sheet per ream (210mm x 297mm)/A4', 'ream', 280.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(33, 'PP-000006', 'Hard Copy Bond Paper Letter (80gsm)', 1, 2, 2, 'Hard Copy', 'Paper Grammage: (80gsm) Sub 24, 500 sheet per ream (216mm x 279mm)/Letter', 'ream', 280.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(34, 'PP-000007', 'Paper One Bond Paper Legal (70gsm)', 1, 2, 2, 'Paper One', 'Paper Grammage: (70gsm) Sub 20, 500 sheet per ream (216mm x 330mm)/Legal', 'ream', 280.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(35, 'PP-000008', 'Paper One Bond Paper A4 (70gsm)', 1, 2, 2, 'Paper One', 'Paper Grammage: (70gsm) Sub 20, 500 sheet per ream (210mm x 297mm)/A4', 'ream', 280.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(36, 'PP-000009', 'Paper One Bond Paper Letter (70gsm)', 1, 2, 2, 'Paper One', 'Paper Grammage: (70gsm) Sub 20, 500 sheet per ream (216mm x 279mm)/Letter', 'ream', 280.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(37, 'PP-000010', 'Paper One Bond Paper Legal (80gsm)', 1, 2, 2, 'Paper One', 'Paper Grammage: (80gsm) Sub 24, 500 sheet per ream (216mm x 330mm)/Legal', 'ream', 280.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(38, 'PP-000011', 'Paper One Bond Paper A4 (80gsm)', 1, 2, 2, 'Paper One', 'Paper Grammage: (80gsm) Sub 24, 500 sheet per ream (210mm x 297mm)/A4', 'ream', 280.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(39, 'PP-000012', 'Paper One Bond Paper Letter (80gsm)', 1, 2, 2, 'Paper One', 'Paper Grammage: (80gsm) Sub 24, 500 sheet per ream (216mm x 279mm)/Letter', 'ream', 280.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(40, 'PP-000013', 'Post-It Super Sticky Notes 3x3 In, 1 Cube', 1, 2, 3, 'Post-it', '3M (76mmx76mm) - 360 sheets per pad', 'piece', 268.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL),
(41, 'PP-000014', 'Joy Sign Here Tab Sticky Note', 1, 2, 3, 'Joy', 'Please Sign Here (see through)', 'piece', 75.00, 1, 1.00, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_service_id_foreign` (`service_id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
