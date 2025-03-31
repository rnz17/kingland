-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 30, 2025 at 07:35 PM
-- Server version: 10.6.21-MariaDB-cll-lve
-- PHP Version: 8.3.15

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
(7, 'Discounts for bulk orders available!!', '2025-01-26 01:56:25', '2025-01-26 01:56:25');

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
(2, 'Kingland Marketing Company Inc. Announces Mayor\'s Permit Renewal for FY 2025 and Celebrates 2024 Growth Milestones', '<p><strong>January 26, 2025</strong><br><br>Kingland Marketing Company Inc. is delighted to announce the successful renewal of its Mayor&rsquo;s Permit for Fiscal Year 2025, ensuring its continued operations and dedication to delivering innovative, customer-centric solutions. &ldquo;Our renewed permit allows us to confidently move forward in fulfilling our mission to serve our clients with integrity and excellence,&rdquo; said Richard Abanilla, Chairman of the Board, President, and CEO. 2024: A Remarkable Year Despite a Mid-Year Start Starting operations in the middle of 2024, Kingland Marketing Company Inc. achieved a phenomenal milestone by generating an impressive ₱5.5 million in revenue in its inaugural year. This remarkable achievement reflects the company&rsquo;s strong strategy, dedicated team, and the trust placed in it by its clients and partners. Key contributors to this success include: Logistics Services: Generating the highest revenue share, this division thrived thanks to strategic partnerships with major players, providing seamless and efficient logistics solutions. Government Projects: As the second-largest revenue source, government projects showcased Kingland Marketing&rsquo;s capability to deliver high-quality services while maintaining transparency and compliance. Private Company: The company&rsquo;s supply of janitorial products, consumables materials, and other essentials to private companies rounded out the year&rsquo;s performance, meeting the unique needs of its diverse client base. &ldquo;We are immensely proud to have reached ₱5.5 million in revenue despite only starting operations mid-year,&rdquo; said Katrina Abanilla, COO and VP. &ldquo;This achievement highlights the hard work of our team and the trust we&rsquo;ve earned from our clients. It&rsquo;s a solid foundation for even greater success in 2025.&rdquo; Looking Ahead to 2025 With the Mayor&rsquo;s Permit renewed, Kingland Marketing is ready to build on its strong start, aiming to expand its logistics services further, strengthen government partnerships, and enhance its offerings to private sector clients. &ldquo;2024 was just the beginning,&rdquo; said Ni&ntilde;o Feland Mendoza, CFO. &ldquo;We&rsquo;re excited to grow our revenue and explore new opportunities that will drive even greater value for our clients and stakeholders.&rdquo; Kingland Marketing Company is committed to delivering exceptional results, fostering innovation, and contributing positively to the local economy as it continues its journey in 2025.</p>', 'images/blog/VAgZyrTIUT72lBpyrFnzjhu5V0oE34snaL47bG4x.jpg', '2025-01-28 17:11:34', '2025-03-21 19:51:03'),
(5, 'Ensuring Accuracy & Reliability: Successful Completion of Weighing Scale Assembly & Support', '<p><strong>January 28, 2025 <br></strong><br>We are pleased to announce the <strong>successful completion</strong> of our <strong>after-sales support and assembly</strong> for high-quality weighing scales, which play a vital role in monitoring students\' nutritional status in school-based programs. This initiative highlights our commitment to ensuring that all equipment provided is properly assembled, tested, and optimized for reliable use.</p>\r\n<p>To uphold the highest standards of accuracy and functionality, <strong>President and CEO Richard Abanilla, Chief Marketing Officer Marlon Balazon, and Chief Operating Officer Katrina Abanilla</strong> personally oversaw the assembly and quality assurance process. Their hands-on involvement ensured that each weighing scale met strict performance standards and was set up <strong>efficiently and without delay</strong>, reinforcing our dedication to <strong>exceptional customer support.<br><br></strong><strong>&ldquo;Delivering high-quality products is just the beginning. We are committed to ensuring that every piece of equipment is assembled and functioning as intended. Our focus remains on reliability, efficiency, and customer satisfaction,&rdquo; said Richard Abanilla.</strong><br><br>With the weighing scales now fully assembled and tested, schools can confidently utilize them to assess student nutrition, track progress, and enhance their health programs with precision.</p>\r\n<p>We remain committed to providing <strong>comprehensive customer support and innovative solutions</strong> that contribute to the success of education and wellness initiatives nationwide</p>\r\n<p><br>For inquiries and future collaborations, feel free to contact us.<br><br></p>\r\n<div><hr></div>\r\n<p data-pm-slice=\"1 1 []\"><em>Kingland Marketing Company Inc. &ndash; Delivering Quality, On Time, Every Time.</em></p>', 'images/blog/n3ZdSUHHJEfZdbBzcOLgeFpwdYXPijRpTEGokLpu.jpg', '2025-02-03 16:50:18', '2025-03-22 23:42:54'),
(9, 'Supplier\'s Summit 2025! Bayanihan sa Edukasyon: Bida Bidders for Collaboration and Innovation', '<p><strong>March 19 - 21, 2025</strong></p>\r\n<p>As the <strong>President of Kingland Marketing Company Inc.</strong>, I had the privilege of joining the <strong>Bayanihan sa Edukasyon: Bida Bidders for Collaboration and Innovation</strong>&mdash;an initiative aimed at fostering strong partnerships between suppliers and the <strong>Department of Education (DepEd)</strong>. This event provided a great opportunity to engage with fellow suppliers, learn about procurement updates, and explore ways to contribute to the educational sector.</p>\r\n<p>One of the most valuable discussions centered around the <strong>New Government Procurement Act (NGPA) and its Implementing Rules and Regulations (IRR) under RA 12009</strong>. Understanding these new policies is crucial for ensuring compliance, efficiency, and transparency in government procurement. The summit shed light on how these changes will impact the bidding process and how suppliers can better align with DepEd&rsquo;s requirements.</p>\r\n<p>The event featured several key activities and discussions, including:</p>\r\n<ul>\r\n<li>&ldquo;Connecting Suppliers, Advancing Education: Introducing the Suppliers Registry&rdquo; &ndash; Launching of the Suppliers Registry</li>\r\n<li>&ldquo;Innovating Together: Collective Action for DepEd&rsquo;s 5-Point Agenda&rdquo; &ndash; Presentation and Panel Discussion</li>\r\n<li>&ldquo;Navigating NGPA and its IRR: Shaping the Future of Procurement&rdquo; &ndash; Engagement Forum</li>\r\n<li>&ldquo;Tatak Pinoy Act: Strengthening Government-Private Sector Collaboration to Boost Philippine Industry Competitiveness in the Global Market&rdquo;</li>\r\n<li>&ldquo;Pillars of Progress: Showcasing DepEd&rsquo;s Big-Ticket Projects for FY 2025 and 3-Year Procurement Plan (Computerization Program)&rdquo;</li>\r\n<li>&ldquo;Improving Procurement Requirements Compliance: Experience from the Ground and Tales from Bidding Failures&rdquo;</li>\r\n<li>&ldquo;Procurement Observers&rsquo; Portal: A Path towards Digital Transformation&rdquo;</li>\r\n<li>&ldquo;Pillars of Progress: Showcasing DepEd&rsquo;s Big Ticket Projects for FY 2025 and 3-Year Procurement Plan (Learning Tools and Equipment)&rdquo;</li>\r\n<li>&ldquo;Pillars of Progress: Showcasing DepEd&rsquo;s Big Ticket Projects for FY 2025 and 3-Year Procurement Plan (Infrastructure and School Furniture)&rdquo;</li>\r\n<li>&ldquo;Pillars of Progress: Showcasing DepEd&rsquo;s Big Ticket Projects for FY 2025 and 3-Year Procurement Plan (Disaster Risk Reduction and Management)&rdquo;</li>\r\n<li>&ldquo;Pillars of Progress: Showcasing DepEd&rsquo;s Big Ticket Projects for FY 2025 and 3-Year Procurement Plan (School-Based Feeding Program)&rdquo;</li>\r\n<li>&ldquo;DepEd\'s Best Practice for Negotiated Procurement: Lease of Real Property and Venue (NP- LRPV) and Catering Services&rdquo;</li>\r\n<li>&ldquo;Strengthening Education through Collaboration: Public-Private Partnership (PPP) for School Infrastructure Project (PSIP) 3 and PSIP Connect Program&rdquo;</li>\r\n<li>&ldquo;Understanding Protest Mechanisms in Government Procurement: Procedures in Filing a Request for Reconsideration and Protest&rdquo;</li>\r\n<li>&ldquo;Best Practices for Avoiding Blacklisting: Compliance and Performance Standards&rdquo;</li>\r\n<li>&ldquo;Pillars of Progress: Showcasing DepEd&rsquo;s Big Ticket Projects for FY 2025 and 3-Year Procurement Plan (Education Assessment)&rdquo;</li>\r\n<li>&ldquo;Pillars of Progress: Showcasing DepEd&rsquo;s Big Ticket Projects for FY 2025 and 3-Year Procurement Plan (Textbooks and other Learning Resources)</li>\r\n</ul>\r\n<p>I am truly grateful for the <strong>three days of learning and collaboration</strong>. This summit has provided valuable insights into the future of procurement, allowing suppliers to better align with government policies and contribute effectively to education. Kingland Marketing Company Inc. remains committed to supporting DepEd in delivering quality educational resources and services.</p>\r\n<p>This initiative is a significant step towards <strong>enhancing supplier-government relations</strong>, and I look forward to future engagements that will help strengthen our collective efforts in advancing education in the Philippines.</p>', 'images/blog/W59Z74B0aEfGmO8mF5DcDloYDDxr1OdRv4gTMI8F.jpg', '2025-03-21 18:34:02', '2025-03-21 19:48:44'),
(10, 'Kingland Marketing Company Inc. Successfully Completes Government Procurement Project for 2025', '<p data-pm-slice=\"1 1 []\"><strong>March 21, 2025<br><br></strong></p>\r\n<p>Kingland Marketing Company Inc. is pleased to announce the successful and timely completion of a government procurement project for <strong>secure packaging of essential materials</strong> in preparation for national events in 2025. This initiative reinforces our commitment to efficiency, quality, and excellence in public sector procurement.</p>\r\n<p>Through our team&rsquo;s dedication and streamlined operations, we fulfilled the project <strong>ahead of schedule</strong>, ensuring all technical specifications and compliance requirements were met. Our procurement and logistics teams worked seamlessly to deliver high-quality materials, leveraging a well-established supply chain and advanced logistics solutions to maintain reliability and efficiency.</p>\r\n<p><strong>Commitment to Speed, Quality, and Compliance</strong><br>At Kingland, we take pride in meeting stringent deadlines while upholding the highest industry standards. Our team carefully follows procurement regulations and compliance guidelines to guarantee that all deliveries align with government specifications.</p>\r\n<p><strong>Quality Assurance and Leadership Oversight</strong><br>Demonstrating our dedication to service excellence, Kingland&rsquo;s leadership actively oversees quality assurance efforts to ensure that all materials are handled with care and delivered in optimal condition. This proactive approach reinforces our commitment to professionalism, accountability, and exceptional customer service.</p>\r\n<p><strong>A Testament to Excellence in Procurement</strong><br>This successful project completion is a testament to <strong>Kingland Marketing Company Inc.&rsquo;s</strong> ongoing dedication to delivering <strong>reliable procurement solutions</strong> for both public and private sector initiatives. As we continue to expand our operations, we look forward to supporting more projects that contribute to national development.</p>\r\n<p>We appreciate the trust placed in us and remain committed to delivering <strong>quality, efficiency, and excellence&mdash;on time, every time.</strong></p>\r\n<p>For inquiries and future collaborations, feel free to contact us.</p>\r\n<p data-pm-slice=\"1 1 []\">&nbsp;</p>\r\n<div><hr></div>\r\n<p data-pm-slice=\"1 1 []\"><em>Kingland Marketing Company Inc. &ndash; Delivering Quality, On Time, Every Time.</em></p>\r\n<p data-pm-slice=\"1 1 []\">&nbsp;</p>', 'images/blog/RhiYTgH82Wol8ghGX8iJdIkYmHSkDZgFGrK2vcac.jpg', '2025-03-21 19:15:21', '2025-03-22 23:12:12'),
(11, 'KMCI Secures Tax Clearance for 2025', '<p data-pm-slice=\"1 1 []\"><strong>March 21, 2025</strong></p>\r\n<p>Kingland Marketing Company Inc. is proud to announce that we have officially secured our <strong>Tax Clearance for 2025</strong>, reaffirming our commitment to transparency, compliance, and excellence in business operations.</p>\r\n<p>As a company dedicated to <strong>integrity and professionalism</strong>, obtaining our annual tax clearance is a testament to our strong corporate governance and adherence to financial regulations. This certification is a key requirement for engaging in government projects and partnerships, ensuring that Kingland remains a <strong>trusted and eligible</strong> partner in procurement and logistics services.</p>\r\n<h3>What This Means for Our Clients and Partners</h3>\r\n<p>Securing our <strong>Tax Clearance for 2025</strong> reinforces our dedication to responsible business practices. It assures our government and private sector partners that Kingland operates with <strong>full compliance</strong> with tax laws, reflecting our commitment to ethical business operations.</p>\r\n<p>With this certification, Kingland continues to be a <strong>reliable and qualified provider</strong> for government procurement, private sector contracts, and large-scale business engagements. This milestone further strengthens our credibility and enhances our ability to serve our valued clients with the highest standards.</p>\r\n<h3>A Step Forward in Business Excellence</h3>\r\n<p>At Kingland Marketing Company Inc., we believe that <strong>strong financial discipline and regulatory compliance</strong> are fundamental to business success. Our team works diligently to ensure that we meet all statutory requirements, allowing us to focus on delivering exceptional products and services to our clients.</p>\r\n<p>We extend our gratitude to our finance and compliance teams for their hard work in securing this clearance. Their dedication ensures that Kingland remains at the forefront of ethical and responsible business practices.</p>\r\n<h3>Looking Ahead</h3>\r\n<p>With our <strong>2025 Tax Clearance in place</strong>, we look forward to another year of growth, innovation, and service excellence. Whether in <strong>logistics, procurement, ICT, agriculture, or office and school supplies</strong>, Kingland remains committed to providing the best solutions for our partners.</p>\r\n<p>We appreciate the continued trust of our clients and stakeholders, and we remain dedicated to upholding the highest industry standards in all aspects of our business.</p>\r\n<p>For inquiries and future collaborations, feel free to contact us.<br><br></p>\r\n<div><hr></div>\r\n<p data-pm-slice=\"1 1 []\"><em>Kingland Marketing Company Inc. &ndash; Making Everyday, Beyond the Ordinary.</em></p>', 'images/blog/lB8P7pyE6vhEnTLslhaOvUH2DDGPZi5q0Ibp5W1A.png', '2025-03-21 19:43:27', '2025-03-21 19:43:27'),
(12, 'Kingland Marketing Company Inc. Upgrades to PhilGEPS Platinum Membership: Strengthening Our Commitment to Excellence', '<p><strong>March 27, 2025<br></strong></p>\r\n<p class=\"\" data-start=\"310\" data-end=\"666\">We are excited to announce a significant milestone in our journey at <strong data-start=\"379\" data-end=\"414\">Kingland Marketing Company Inc.</strong> (KMCI): we have officially upgraded to <strong data-start=\"454\" data-end=\"486\">PhilGEPS Platinum Membership</strong>. This prestigious recognition enhances our capacity to deliver exceptional service, support the government, and meet the ever-growing demands of our valued private sector clients.</p>\r\n<h3 class=\"\" data-start=\"668\" data-end=\"700\"><strong>What Does This Mean for You?</strong></h3>\r\n<p class=\"\" data-start=\"702\" data-end=\"1184\">As a <strong data-start=\"707\" data-end=\"735\">PhilGEPS Platinum Member</strong>, KMCI now holds a trusted and recognized position within the Philippine Government Electronic Procurement System. This upgrade allows us to serve government agencies with even greater efficiency, transparency, and reliability. It assures our partners that we are fully compliant with all legal and procurement requirements, empowering us to assist in the timely acquisition of materials and services essential for the government\'s daily operations.</p>\r\n<h3 class=\"\" data-start=\"1186\" data-end=\"1236\"><strong>A Stronger Partnership with the Private Sector</strong></h3>\r\n<p class=\"\" data-start=\"1238\" data-end=\"1669\">For our private sector clients, this achievement reinforces our unwavering commitment to professionalism and legal compliance. Our <strong data-start=\"1369\" data-end=\"1401\">PhilGEPS Platinum Membership</strong> ensures that KMCI is not only a trusted partner but also a company you can rely on for seamless, compliant, and high-quality services. Whether it&rsquo;s logistics, procurement, or janitorial solutions, we stand as a reliable partner with the legal credentials you deserve.</p>\r\n<h3 class=\"\" data-start=\"1671\" data-end=\"1689\"><strong>Why It Matters</strong></h3>\r\n<p class=\"\" data-start=\"1691\" data-end=\"2044\">Upgrading to <strong data-start=\"1704\" data-end=\"1725\">PhilGEPS Platinum</strong> isn&rsquo;t just about gaining access to more opportunities; it&rsquo;s about maintaining the highest standards of service, efficiency, and trust. This certification strengthens our resolve to provide solutions that are timely, cost-effective, and perfectly suited to the unique needs of both government and private organizations.</p>\r\n<p class=\"\" data-start=\"2046\" data-end=\"2318\">We are proud to serve as a trusted partner to both sectors, and this advancement marks just the beginning of our continued growth and dedication to excellence. Our commitment to supporting your business, whether in the government or private sectors, is stronger than ever.</p>\r\n<h3 class=\"\" data-start=\"2320\" data-end=\"2337\"><strong>Looking Ahead</strong></h3>\r\n<p class=\"\" data-start=\"2339\" data-end=\"2623\">At KMCI, we remain focused on growing, evolving, and continuously enhancing the quality of our services. Our <strong data-start=\"2448\" data-end=\"2480\">PhilGEPS Platinum Membership</strong> is a testament to the strides we&rsquo;ve made, and we look forward to using it as a foundation to better serve you&mdash;our valued clients and partners.</p>\r\n<p class=\"\" data-start=\"2625\" data-end=\"2719\">Thank you for your continued trust and support. Together, we can achieve even greater success.</p>\r\n<p class=\"\" data-start=\"2625\" data-end=\"2719\">&nbsp;</p>\r\n<div><hr></div>\r\n<p data-pm-slice=\"1 1 []\"><em>Kingland Marketing Company Inc. &ndash; <strong>Delivering Quality, On Time, Every Time.</strong></em></p>', 'images/blog/OjdeeCgkUzxnH2ZWrdUcCfKxzHI6GD5tHVHCgFvZ.png', '2025-03-27 23:24:39', '2025-03-27 23:43:26');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('abanilla.richard@yahoo.com|192.88.134.10', 'i:1;', 1741662322),
('abanilla.richard@yahoo.com|192.88.134.10:timer', 'i:1741662322;', 1741662322),
('abanilla.richard@yahoo.com|66.248.202.2', 'i:1;', 1741246100),
('abanilla.richard@yahoo.com|66.248.202.2:timer', 'i:1741246100;', 1741246100),
('raabanilla@kingland.ph|192.88.134.10', 'i:1;', 1741246664),
('raabanilla@kingland.ph|192.88.134.10:timer', 'i:1741246664;', 1741246664);

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
(4, 9, 'Power Source', '2025-01-28 22:15:32', '2025-01-28 22:15:32'),
(5, 1, 'Filing and Organization', '2025-01-28 22:29:07', '2025-01-28 22:29:07'),
(6, 1, 'Cleaning and Maintenance Supplies', '2025-01-31 12:16:54', '2025-01-31 12:16:54'),
(8, 1, 'Arts and Crafts Materials', '2025-02-02 14:32:14', '2025-02-02 14:32:14'),
(9, 1, 'Awards and Recognition', '2025-02-02 14:37:38', '2025-02-02 14:37:38'),
(10, 5, 'Printers and Accessories', '2025-02-02 15:05:58', '2025-02-02 15:05:58'),
(11, 1, 'Bells and Sound Signaling Devices', '2025-03-02 16:35:02', '2025-03-02 16:35:02'),
(12, 1, 'Office Essentials', '2025-03-02 17:01:03', '2025-03-02 17:01:03'),
(13, 1, 'Packaging and Wrapping Supplies', '2025-03-10 09:55:00', '2025-03-10 09:55:00'),
(14, 1, 'Storage and Organization', '2025-03-10 10:08:59', '2025-03-10 10:08:59');

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
(13, '2025_01_26_084418_create_announcements_table', 1),
(14, '2025_01_29_095031_create_offers_table', 1),
(15, '2025_01_31_012856_add_brand_to_products_table', 1),
(16, '2025_02_24_043901_create_concerns_table', 1),
(17, '2025_03_02_061058_add_hidden_column_to_products_table', 3),
(18, '2025_03_06_074227_create_prod_logs_table', 4),
(19, '2025_03_11_031523_create_suppliers_table', 5),
(20, '2025_03_11_041121_create_prices_table', 5),
(21, '2025_03_20_090333_create_slides_table', 6),
(22, '2025_03_22_092933_add_available_to_prices_table', 7);

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

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('raabanilla@kingland.ph', '$2y$12$BohtismxayS.H0O3Hvh3j.nGeB1BPNi1dLdZynUkjH.HYD1BsC5s.', '2025-02-28 13:55:50');

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `available` tinyint(1) NOT NULL DEFAULT 1,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prices`
--

INSERT INTO `prices` (`id`, `available`, `supplier_id`, `product_id`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 37, 219.00, '2025-03-12 18:34:44', '2025-03-12 18:34:44'),
(2, 1, 1, 38, 192.00, '2025-03-12 18:36:06', '2025-03-12 18:36:06'),
(3, 1, 1, 39, 185.00, '2025-03-12 18:38:11', '2025-03-12 18:38:11'),
(4, 1, 1, 80, 185.00, '2025-03-17 13:06:11', '2025-03-17 13:08:50'),
(5, 1, 1, 81, 225.00, '2025-03-17 13:16:30', '2025-03-17 13:16:30'),
(6, 1, 1, 83, 225.00, '2025-03-17 13:29:46', '2025-03-17 13:29:46'),
(7, 1, 1, 86, 120.00, '2025-03-17 13:45:33', '2025-03-17 13:45:33'),
(8, 1, 1, 28, 186.00, '2025-03-22 10:18:17', '2025-03-22 10:18:17');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `spec` text DEFAULT NULL,
  `brand` varchar(255) NOT NULL,
  `supplier` varchar(255) DEFAULT NULL,
  `unit` enum('ream','book','piece','box','bundle','pack','pad','set','can','unit','pouch','bottle','gallon','roll','pair','tube','jar','cart','kg','ml','l','oz','g') NOT NULL DEFAULT 'piece',
  `unit_price` decimal(8,2) NOT NULL,
  `pcs_unit` int(11) DEFAULT 1,
  `value_ratio` decimal(8,2) DEFAULT NULL,
  `service_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subcategory_id` bigint(20) UNSIGNED DEFAULT NULL,
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

INSERT INTO `products` (`id`, `hidden`, `code`, `name`, `spec`, `brand`, `supplier`, `unit`, `unit_price`, `pcs_unit`, `value_ratio`, `service_id`, `category_id`, `subcategory_id`, `status`, `available`, `needed`, `to_buy`, `low_alert`, `prod_note`, `created_at`, `updated_at`) VALUES
(8, 1, 'WI-000008', 'Faber Castell Click X Ball Pen Retractable Click X7 0.7MM', 'line width: 0.7mm, Colour: blue and black (60pcs/box)', '', 'Faber Castell', 'box', 27.00, 60, 1.00, 1, 1, 1, 'Out of stock', 0.00, 100.00, 100.00, 50, 'Retractable penSuper smooth - low viscosity inkWater-resistant inkHigh colour intensity ink2 line widths: 0.5mm & 0.7mmAvailable in different coloursColour: blue and black', NULL, '2025-03-22 09:20:20'),
(9, 1, 'WI-000009', 'Faber Castell NX23 0.5', 'line width: 0.5mm, Colour: Green, Red, Blue, Black', '', 'Faber Castell', 'piece', 27.00, 1, 1.00, 1, 1, 1, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, '2025-03-22 09:20:20'),
(10, 1, 'WI-000010', 'Faber Castell Retractable Ballpen RX5', 'line width: 0.5mm, Colour: Blue, Black (30pcs/box)', '', 'Faber Castell', 'box', 27.00, 30, 1.00, 1, 1, 1, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, '2025-03-22 09:20:20'),
(11, 1, 'WI-000011', 'Blue Faber-Castell Poly Ball XB', 'line width: 0.6mm, Colour: Sweet Lilac, Black, Blue, Caribic Blue, Emerald Green, Navy Blue, Rosem Stone Grey ', '', 'Faber Castell', 'piece', 27.00, 1, 1.00, 1, 1, 1, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, '2025-03-22 09:20:20'),
(12, 1, 'WI-000012', 'Black Faber-Castell K-One Ballpoint Pen - 0.7mm', 'line width: 0.7mm, Colour: Black, Blue', '', 'Faber Castell', 'piece', 27.00, 1, 1.00, 1, 1, 1, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, '2025-03-22 09:20:20'),
(13, 1, 'WI-000013', 'Faber-Castell 241109 ballpoint pen Blue Clip-on retractable', 'line width: 0.6mm, Colour: Blue', '', 'Faber Castell', 'piece', 27.00, 1, 1.00, 1, 1, 1, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, '2025-03-22 09:20:20'),
(14, 1, 'WI-000014', 'Faber Castell Ballpoint Pen Grip X Push Type Size 0.5mm', 'line width: 0.5mm, Colour: Blue, Red, Black (10pcs/box)', '', 'Faber Castell', 'box', 27.00, 10, 1.00, 1, 1, 1, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, '2025-03-22 09:20:20'),
(15, 1, 'WI-000015', 'Faber Castell Ballpoint Pen Grip X Push Type Size 0.7mm', 'line width: 0.7mm, Colour: Blue, Red, Black (10pcs/box)', '', 'Faber Castell', 'box', 27.00, 10, 1.00, 1, 1, 1, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, '2025-03-22 09:20:20'),
(16, 1, 'WI-000016', 'Pilot Better Retractable Pen 0.7mm BP-145-F', 'line width: 0.7mm, Colour: Black Blue Red', '', 'Pilot', 'piece', 27.00, 1, 1.00, 1, 1, 1, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, '2025-03-22 09:20:20'),
(17, 1, 'WI-000017', 'Pilot Ballpen BPS 0.7mm', 'line width: 0.7mm, Colour: Black Blue Red Green', '', 'Pilot', 'piece', 27.00, 1, 1.00, 1, 1, 1, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, '2025-03-22 09:20:20'),
(18, 1, 'WI-000018', 'Pilot BP-1RT retractable', 'line width: 1.0mm, Colour: Black Blue Red (12pcs/box)', '', 'Pilot', 'box', 27.00, 12, 1.00, 1, 1, 1, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, '2025-03-22 09:20:20'),
(19, 1, 'WI-000019', 'Pilot Hi-Tecpoint BXRT-V5 / V5 RT Retractable Rollerball Or Refill Only', 'line width: 0.5mm, Colour: Black Blue Red Green', '', 'Pilot', 'piece', 27.00, 1, 1.00, 1, 1, 1, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, '2025-03-22 09:20:20'),
(20, 1, 'WI-000020', 'Pilot Hi-Tecpoint BXRT-V7 / V7 RT Retractable Rollerball Or Refill Only', 'line width: 0.7mm, Colour: Black Blue Red Green', '', 'Pilot', 'piece', 27.00, 1, 1.00, 1, 1, 1, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, '2025-03-22 09:20:20'),
(21, 1, 'WI-000021', 'Pilot Hi-Tecpoint V5 Sign Pen', 'Colour: Black Blue Red', '', 'Pilot', 'piece', 27.00, 1, 1.00, 1, 1, 1, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, '2025-03-22 09:20:20'),
(22, 1, 'WI-000022', 'Pilot - BP-145-M - Retractable - 1.0mm', 'line width: 1.0mm, Colour: Black Blue Red', '', 'Pilot', 'piece', 27.00, 1, 1.00, 1, 1, 1, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, '2025-03-22 09:20:20'),
(23, 1, 'WI-000023', 'Pilot Easytouch Refillable & Retractable - Medium Point', 'line width: 1.0mm, Colour: Black Blue Red (12pcs/box)', '', 'Pilot', 'box', 27.00, 12, 1.00, 1, 1, 1, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, '2025-03-22 09:20:20'),
(24, 1, 'WI-000024', 'Pilot Hi-Techpoint V10 Grip Ballpen/BXGPN-V10 1.0mm', 'line width: 1.0mm, Colour: Black Blue Red', '', 'Pilot', 'piece', 27.00, 1, 1.00, 1, 1, 1, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, '2025-03-22 09:20:20'),
(25, 1, 'WI-000025', 'Pilot Rexgrip Retractable Medium', 'line width: 1.0mm, Colour: Black Green', '', 'Pilot', 'piece', 27.00, 1, 1.00, 1, 1, 1, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, '2025-03-22 09:20:20'),
(26, 1, 'WI-000026', 'Pilot Hi-tecpoint BXRT-V10 RT 1.0 Retractable', 'line width: 1.0mm, Colour: Black (12pcs/box)', '', 'Pilot', 'box', 27.00, 1, 1.00, 1, 1, 1, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, '2025-03-22 09:20:20'),
(27, 1, 'WI-000027', 'Pilot 31820 Acroball Pen, 0.1mm Point, Retractable', 'line width: 1.0mm, Colour: Assorted, (5pcs/pack)', '', 'Pilot', 'pack', 27.00, 1, 1.00, 1, 1, 1, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, '2025-03-22 09:20:20'),
(28, 0, 'PP-000001', 'Hard Copy ~  Legal (70gsm)', '<p><span style=\"color: #000000;\"><span style=\"color: #ffd700;\"><strong>Grammage:</strong></span>&nbsp;</span>70gsm (Sub 20)<br><span style=\"color: #ffd700;\"><strong>Sheet/UOM:</strong></span> 500 sheets<br><span style=\"color: #ffd700;\"><strong>Size:</strong></span> Legal (216mm x 330mm)<br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Ultra White<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Advance \"ink-lock\" system<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; 99.99% Jam Free<br>&nbsp;<br><strong>Note:</strong> 5 reams per box</p>', 'Advance', 'Hard Copy', 'ream', 27.00, 1, 1.00, 1, 2, 2, 'in Stock', 50.00, 100.00, 50.00, 50, NULL, NULL, '2025-03-22 10:18:17'),
(29, 0, 'PP-000002', 'Hard Copy ~ A4 (70gsm)', '<p><span style=\"color: #ffd700;\"><strong>Grammage:</strong></span> 70gsm (Sub 20)<br><span style=\"color: #ffd700;\"><strong>Sheets/UOM:</strong></span> 500 sheets<br><span style=\"color: #ffd700;\"><strong>Size:</strong></span> A4 (210mm x 297mm)<br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Ultra White<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Advance \"ink-lock\" system<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; 99.99% Jam Free<br><br><strong>Note:</strong> 5 reams per box</p>', 'Hard Copy', 'Hard Copy', 'ream', 27.00, 1, 1.00, 1, 2, 2, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, '2025-03-22 09:08:02'),
(30, 0, 'PP-000003', 'Hard Copy ~ Letter (70gsm)', '<p><span style=\"color: #ffd700;\"><strong>Grammage:</strong></span> 70gsm (Sub 20)<br><strong><span style=\"color: #ffd700;\">Sheet/UOM:</span></strong> 500 sheets<br><strong><span style=\"color: #ffd700;\">Size:</span></strong> Letter (216mm x 279mm)<br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Ultra White<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Advance \"ink-lock\" system<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; 99.99% Jam Free<br><br>Note: 5 reams per box</p>', 'Hard Copy', 'Hard Copy', 'ream', 27.00, 1, 1.00, 1, 2, 2, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, '2025-03-22 09:08:02'),
(31, 0, 'PP-000004', 'Hard Copy ~ Legal (80gsm)', '<p><span style=\"color: #ffd700;\"><strong>Grammage:</strong></span> 80gsm (Sub 24)<br><strong><span style=\"color: #ffd700;\">Sheet/UOM:</span></strong> 500 sheets<br><strong><span style=\"color: #ffd700;\">Size:</span></strong> Legal (216mm x 330mm)<br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Ultra White<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Advance \"ink-lock\" system<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; 99.99% Jam Free<br><br>Note: 5 reams per box</p>', 'Hard Copy', 'Hard Copy', 'ream', 27.00, 1, 1.00, 1, 2, 2, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, '2025-03-22 09:08:02'),
(32, 0, 'PP-000005', 'Hard Copy ~ A4 (80gsm)', '<p><span style=\"color: #ffd700;\"><strong>Grammage:</strong></span> 80gsm (Sub 24)<br><strong><span style=\"color: #ffd700;\">Sheet/UOM:</span></strong> 500 sheets<br><strong><span style=\"color: #ffd700;\">Size:</span></strong> A4 (210mm x 297mm)<br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Ultra White<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Advance \"ink-lock\" system<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; 99.99% Jam Free<br><br>Note: 5 reams per box</p>', 'Hard Copy', 'Hard Copy', 'ream', 27.00, 1, 1.00, 1, 2, 2, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, '2025-03-22 09:08:02'),
(33, 0, 'PP-000006', 'Hard Copy ~ Letter (80gsm)', '<p><span style=\"color: #ffd700;\"><strong>Grammage:</strong></span> 80gsm (Sub 24)<br><strong><span style=\"color: #ffd700;\">Sheet/UOM:</span></strong> 500 sheets<br><strong><span style=\"color: #ffd700;\">Size:</span></strong> Letter (216mm x 279mm)<br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Ultra White<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Advance \"ink-lock\" system<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; 99.99% Jam Free<br><br>Note: 5 reams per box</p>', 'Hard Copy', 'Hard Copy', 'ream', 27.00, 1, 1.00, 1, 2, 2, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, '2025-03-22 09:08:02'),
(34, 0, 'PP-000007', 'Paper One ~ Legal (70gsm)', '<p><span style=\"color: #ffd700;\"><strong>Grammage:</strong></span> 70gsm (Sub 20)<br><strong><span style=\"color: #ffd700;\">Sheet/UOM:</span></strong> 500 sheets<br><strong><span style=\"color: #ffd700;\">Size:</span></strong> Legal (216mm x 330mm)<br><br>&radic; Engineered for laser printers and high-volume copiers<br>&radic; Bright white paper<br>&radic; High image contrast, clarity and sharpness<br><br>Note: 5 reams per box</p>', 'Paper One', 'Paper One', 'ream', 27.00, 1, 1.00, 1, 2, 2, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, '2025-03-22 09:08:02'),
(35, 0, 'PP-000008', 'Paper One ~ A4 (70gsm)', '<p><span style=\"color: #ffd700;\"><strong>Grammage:</strong></span> 70gsm (Sub 20)<br><strong><span style=\"color: #ffd700;\">Sheet/UOM:</span></strong> 500 sheets<br><strong><span style=\"color: #ffd700;\">Size:</span></strong> A4 (210mm x 297mm)<br><br>&radic; Engineered for laser printers and high-volume copiers<br>&radic; Bright white paper<br>&radic; High image contrast, clarity and sharpness<br><br>Note: 5 reams per box</p>', 'Paper One', 'Paper One', 'ream', 27.00, 1, 1.00, 1, 2, 2, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, '2025-03-22 09:08:02'),
(36, 0, 'PP-000009', 'Paper One ~ Letter (70gsm)', '<p><span style=\"color: #ffd700;\"><strong>Grammage:</strong></span> 70gsm (Sub 20)<br><strong><span style=\"color: #ffd700;\">Sheet/UOM:</span></strong> 500 sheets<br><strong><span style=\"color: #ffd700;\">Size:</span></strong> Letter (216mm x 279mm)<br><br>&radic; Engineered for laser printers and high-volume copiers<br>&radic; Bright white paper<br>&radic; High image contrast, clarity and sharpness<br><br>Note: 5 reams per box</p>', 'Paper One', 'Paper One', 'ream', 27.00, 1, 1.00, 1, 2, 2, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, '2025-03-22 09:08:02'),
(37, 0, 'PP-000010', 'Paper One ~ Legal (80gsm)', '<p><span style=\"color: #ffd700;\"><strong>Grammage:</strong></span> 80gsm (Sub 24)<br><strong><span style=\"color: #ffd700;\">Sheet/UOM:</span></strong> 500 sheets<br><strong><span style=\"color: #ffd700;\">Size:</span></strong> Legal (216mm x 330mm)<br><br>&radic; Environmentally Friendly, &radic; High thickness, &radic; High opacity, &radic; High whiteness, &radic; High smoothness, &radic; &nbsp;Precision cut edges &ndash; Trouble-free performance, jam-free, &radic; User friendly box, &radic; ProDigi Nanotechnology<br><br>Note: 5 reams per box</p>', 'Paper One', 'Paper One', 'ream', 27.00, 1, 1.00, 1, 2, 2, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, '2025-03-22 09:08:02'),
(38, 0, 'PP-000011', 'Paper One ~ A4 (80gsm)', '<p><span style=\"color: #ffd700;\"><strong>Grammage:</strong></span> 80gsm (Sub 24)<br><strong><span style=\"color: #ffd700;\">Sheet/UOM:</span></strong> 500 sheets<br><strong><span style=\"color: #ffd700;\">Size:</span></strong> A4 (210mm x 297mm)<br><br>&radic; Environmentally Friendly, &radic; High thickness, &radic; High opacity, &radic; High whiteness, &radic; High smoothness, &radic; &nbsp;Precision cut edges &ndash; Trouble-free performance, jam-free, &radic; User friendly box, &radic; ProDigi Nanotechnology<br><br>Note: 5 reams per box</p>', 'Paper One', 'Paper One', 'ream', 27.00, 1, 1.00, 1, 2, 2, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, '2025-03-22 09:08:02'),
(39, 0, 'PP-000012', 'Paper One ~ Letter (80gsm)', '<p><span style=\"color: #ffd700;\"><strong>Grammage:</strong></span> 80gsm (Sub 24)<br><strong><span style=\"color: #ffd700;\">Sheet/UOM:</span></strong> 500 sheets<br><strong><span style=\"color: #ffd700;\">Size:</span></strong> Letter (216mm x 279mm)<br><br>&radic; Environmentally Friendly, &radic; High thickness, &radic; High opacity, &radic; High whiteness, &radic; High smoothness, &radic; &nbsp;Precision cut edges &ndash; Trouble-free performance, jam-free, &radic; User friendly box, &radic; ProDigi Nanotechnology<br><br>Note: 5 reams per box</p>', 'Paper One', 'Paper One', 'ream', 27.00, 1, 1.00, 1, 2, 2, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, '2025-03-22 09:08:02'),
(40, 1, 'PP-000013', 'Post-It Super Sticky Notes 3x3 In, 1 Cube', '3M (76mmx76mm) - 360 sheets per pad', '', 'Post-it', 'piece', 27.00, 1, 1.00, 1, 2, 3, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, '2025-03-22 09:08:02'),
(41, 1, 'PP-000014', 'Joy Sign Here Tab Sticky Note', 'Please Sign Here (see through)', '', 'Joy', 'piece', 27.00, 1, 1.00, 1, 2, 3, 'Out of stock', 0.00, 100.00, 100.00, 50, NULL, NULL, '2025-03-22 09:08:02'),
(53, 0, 'CM-000001', 'GLADE AIR FRESHNER 320ML - FLORAL PERFECTION', '<p><span style=\"color: #ffd700;\"><strong>Net Content:</strong></span> 320ML<br><strong><span style=\"color: #ffd700;\">Fragrance/Scent:</span></strong> Floral Perfection</p>', 'Glade', 'P-Lim Trading', 'bottle', 27.00, 1, 1.00, 1, 6, 14, 'in stock', 50.00, 100.00, 50.00, 50, NULL, '2025-01-31 12:20:20', '2025-03-22 09:08:09'),
(54, 0, 'CM-000002', 'GLADE AIR FRESHNER 320ML - JASMINE', '<p><span style=\"color: #ffd700;\"><strong>Net Content:</strong></span> 320ML<br><span style=\"color: #ffd700;\"><strong>Fragrance/Scent:</strong></span> Jasmine</p>', 'Glade', 'P-Lim Trading', 'bottle', 27.00, 1, 1.00, 1, 6, 14, 'In Stock', 50.00, 100.00, 50.00, 50, NULL, '2025-01-31 12:43:05', '2025-03-22 09:08:09'),
(55, 0, 'CM-000003', 'GLADE AIR FRESHNER 320ML - LAVENDER', '<p><span style=\"color: #ffd700;\"><strong>Net Content:</strong></span> 320ML<br><span style=\"color: #ffd700;\"><strong>Fragrance/Scent: </strong></span>Lavender</p>', 'Glade', 'P-Lim Trading', 'bottle', 27.00, 1, 1.00, 1, 6, 14, 'In Stock', 50.00, 100.00, 50.00, 50, NULL, '2025-01-31 12:48:38', '2025-03-22 09:08:09'),
(56, 0, 'CM-000004', 'GLADE AIR FRESHNER 320ML - LEMON', '<p><span style=\"color: #ffd700;\"><strong>Net Content: </strong></span>320ML<br><span style=\"color: #ffd700;\"><strong>Fragrance/Scent:</strong></span> Lemon</p>', 'Glade', 'P-Lim Trading', 'bottle', 27.00, 1, 1.00, 1, 6, 14, 'In Stock', 50.00, 100.00, 50.00, 50, NULL, '2025-01-31 12:51:08', '2025-03-22 09:08:09'),
(58, 0, 'CM-000005', 'GLADE AIR FRESHNER 320ML - MORNING FRESHNESS', '<p><span style=\"color: #ffd700;\"><strong>Net Content:&nbsp;</strong></span>320ML<br><span style=\"color: #ffd700;\"><strong>Fragrance/Scent:</strong></span> Morning Freshness</p>', 'Glade', 'P-Lim Trading', 'bottle', 27.00, 1, 1.00, 1, 6, 14, 'In Stock', 50.00, 100.00, 50.00, 50, NULL, '2025-02-01 13:24:50', '2025-03-22 09:08:09'),
(59, 0, 'CM-000006', 'GLADE AIR FRESHNER 320ML - ORANGE SQUEEZE', '<p><span style=\"color: #ffd700;\"><strong>Net Content:&nbsp;</strong></span>320ML<br><span style=\"color: #ffd700;\"><strong>Fragrance/Scent:</strong></span> Orange Squeeze</p>', 'Glade', 'P-Lim Trading', 'bottle', 27.00, 1, 1.00, 1, 6, 14, 'In Stock', 50.00, 100.00, 50.00, 50, NULL, '2025-02-01 13:26:50', '2025-03-22 09:08:09'),
(60, 0, 'CM-000007', 'GLADE AIR FRESHNER 320ML - SAKURA & WATERLILY', '<p><span style=\"color: #ffd700;\"><strong>Net Content:&nbsp;</strong></span>320ML<br><span style=\"color: #ffd700;\"><strong>Fragrance/Scent:</strong></span> Sakura &amp; Waterlily</p>', 'Glade', 'p-Lim Trading', 'bottle', 27.00, 1, 1.00, 1, 6, 14, 'In Stock', 50.00, 100.00, 50.00, 50, NULL, '2025-02-01 13:28:58', '2025-03-22 09:08:09'),
(61, 0, 'CM-000008', 'GLADE SCENTED GEL 200G LAVENDER', '<p><span style=\"color: #ffd700;\"><strong>Net Content:&nbsp;</strong></span>200g<br><span style=\"color: #ffd700;\"><strong>Fragrance/Scent:</strong></span> Lavender</p>', 'Glade', 'P-Lim Trading', 'piece', 27.00, 1, 1.00, 1, 6, 14, 'In Stock', 50.00, 100.00, 50.00, 50, NULL, '2025-02-01 13:34:52', '2025-03-22 09:08:09'),
(62, 0, 'CM-000009', 'GLADE SCENTED GEL 200G LEMON', '<p><span style=\"color: #ffd700;\"><strong>Net Content:&nbsp;</strong></span>200g<br><span style=\"color: #ffd700;\"><strong>Fragrance/Scent:</strong></span> Lemon</p>', 'Glade', 'p-Lim Trading', 'piece', 27.00, 1, 1.00, 1, 6, 14, 'In Stock', 50.00, 100.00, 50.00, 50, NULL, '2025-02-01 13:39:01', '2025-03-22 09:08:09'),
(63, 0, 'CM-000010', 'CLEENE ETHYL ALCOHOL 70% 500ML', '<p><span style=\"color: #ffd700;\"><strong>Net Content:</strong></span> 500ml<br><span style=\"color: #ffd700;\"><strong>Active Ingredient:</strong></span> Ethyl Alcohol 70%<br><strong><span style=\"color: #ffd700;\">Formulation Type:</span></strong> Antiseptic Disinfectant</p>', 'CLEENE', 'p-Lim Trading', 'bottle', 27.00, 1, 1.00, 1, 6, 15, 'In Stock', 50.00, 100.00, 50.00, 50, NULL, '2025-02-02 14:23:16', '2025-03-22 09:08:09'),
(64, 0, 'CM-000011', 'GREEN CROSS ISOPROPYL ALCOHOL  500 ML 70%', '<p><strong><span style=\"color: #ffd700;\">Net Content:</span></strong> 500ml<br><span style=\"color: #ffd700;\"><strong>Active Ingredient:</strong></span> Isopropyl Alcohol 70%<br><strong><span style=\"color: #ffd700;\">Variant:</span></strong> w/ Moisturizer<br><span style=\"color: #ffd700;\"><strong>Type:</strong></span> Antiseptic, Disinfectant</p>', 'Green Cross', 'P-Lim Trading', 'bottle', 27.00, 1, 1.00, 1, 6, 15, 'In Stock', 50.00, 100.00, 50.00, 50, NULL, '2025-02-02 14:26:20', '2025-03-22 09:08:09'),
(65, 0, 'AC-000003', 'MEGA/RAMBO YARN THREAD 12S - VIOLET', 'YARN THREAD 12S - VIOLET', 'Mega/Rambo/Estambre', 'P-Lim Trading', 'pack', 27.00, 12, 8.13, 1, 8, 16, 'In Stock', 50.00, 100.00, 50.00, 50, NULL, '2025-02-02 14:34:00', '2025-03-22 09:08:15'),
(66, 0, 'AC-000004', 'MEGA/RAMBO YARN THREAD 12S - WHITE', 'YARN THREAD 12S - WHITE', 'Mega/Rambo/Estambre', 'P-Lim Trading', 'pack', 27.00, 12, 8.13, 1, 8, 16, 'In Stock', 50.00, 100.00, 50.00, 50, NULL, '2025-02-02 14:36:29', '2025-03-22 09:08:15'),
(67, 0, 'AR-000001', 'KAGAWARAN NG EDUKASYON - 5CM BRONZE MEDAL', '5CM BRONZE MEDAL', 'Generic', 'P-Lim Trading', 'piece', 27.00, 1, 1.00, 1, 9, 17, 'In Stock', 50.00, 100.00, 50.00, 50, NULL, '2025-02-02 14:38:59', '2025-03-22 09:08:19'),
(68, 0, 'AR-000002', 'KAGAWARAN NG EDUKASYON - 5CM GOLD MEDAL', '5CM GOLD MEDAL', 'Generic', 'P-Lim Trading', 'piece', 27.00, 1, 1.00, 1, 9, 17, 'In Stock', 50.00, 100.00, 50.00, 50, NULL, '2025-02-02 14:42:20', '2025-03-22 09:08:19'),
(69, 0, 'AR-000003', 'KAGAWARAN NG EDUKASYON - 5CM SILVER MEDAL', '5CM SILVER MEDAL', 'Generic', 'P-Lim Trading', 'piece', 27.00, 1, 1.00, 1, 9, 17, 'In Stock', 50.00, 100.00, 50.00, 50, NULL, '2025-02-02 14:44:39', '2025-03-22 09:08:19'),
(70, 0, 'CM-000012', 'GARBAGE BAG 18\"X18\" - BLACK 100`S (SMALL)', '<p><span style=\"color: #ffd700;\"><strong data-start=\"87\" data-end=\"96\">Size:</strong></span> 18\" x 18\"<br><span style=\"color: #ffd700;\"><strong data-start=\"135\" data-end=\"145\">Color:</strong></span> Black<br><span style=\"color: #ffd700;\"><strong data-start=\"208\" data-end=\"227\">Classification:</strong></span> Small</p>', 'Generic', 'P-Lim Trading', 'pack', 27.00, 100, 1.00, 1, 6, 18, 'In Stock', 50.00, 100.00, 50.00, 50, NULL, '2025-02-02 14:50:03', '2025-03-22 09:08:09'),
(71, 0, 'CM-000014', 'GARBAGE BAG 22\"X24\" - BLACK 100`S (MEDIUM)', '<p><span style=\"color: #ffd700;\"><strong data-start=\"87\" data-end=\"96\">Size:</strong></span> 22\" x 24\"<br><span style=\"color: #ffd700;\"><strong data-start=\"135\" data-end=\"145\">Color:</strong></span> Black<br><span style=\"color: #ffd700;\"><strong data-start=\"208\" data-end=\"227\">Classification:</strong></span> Medium</p>', 'Generic', 'p-Lim Trading', 'pack', 27.00, 100, 1.00, 1, 6, 18, 'In Stock', 50.00, 100.00, 50.00, 50, NULL, '2025-02-02 14:51:16', '2025-03-22 09:08:09'),
(72, 0, 'CM-000015', 'GARBAGE BAG 26\"X32\" - BLACK 100`S (LARGE)', '26\"X32\" - BLACK 100`S (LARGE)', 'Generic', 'P-Lim Trading', 'pack', 27.00, 1, 1.00, 1, 6, 18, 'In Stock', 50.00, 100.00, 50.00, 50, NULL, '2025-02-02 14:52:52', '2025-03-22 09:08:09'),
(73, 0, 'CM-000016', 'GARBAGE BAG 30\"X37\" - BLACK 100`S (XL)', '30\"X37\" - BLACK 100`S (XL)', 'Generic', 'P-Lim Trading', 'pack', 27.00, 1, 1.00, 1, 6, 18, 'In Stock', 50.00, 100.00, 50.00, 50, NULL, '2025-02-02 14:54:06', '2025-03-22 09:08:09'),
(74, 0, 'CM-000017', 'GARBAGE BAG 37\"X40\" - BLACK 100`S (2XL)', '37\"X40\" - BLACK 100`S (2XL)', 'Generic', 'P-Lim Trading', 'pack', 27.00, 1, 1.00, 1, 6, 18, 'In Stock', 50.00, 100.00, 50.00, 50, NULL, '2025-02-02 15:01:04', '2025-03-22 09:08:09'),
(75, 0, 'CM-000013', 'GARBAGE BAG 18\"X18\" -TRANSPARENT 100`S (SMALL)', '<p><span style=\"color: #ffd700;\"><strong data-start=\"87\" data-end=\"96\">Size:</strong></span> 18\" x 18\"<br><span style=\"color: #ffd700;\"><strong data-start=\"135\" data-end=\"145\">Color:</strong></span> Transparent<br><span style=\"color: #ffd700;\"><strong data-start=\"208\" data-end=\"227\">Classification:</strong></span> Small</p>', 'Generic', 'P-Lim Trading', 'pack', 27.00, 100, 1.00, 1, 6, 18, 'In stock', 50.00, 100.00, 50.00, 50, NULL, '2025-02-02 15:03:50', '2025-03-22 09:08:09'),
(76, 0, 'PA-000001', 'BARCODE THERMAL RIBBON - BLACK', 'BARCODE THERMAL RIBBON - BLACK', 'Generic', 'P-Lim Trading', 'roll', 27.00, 1, 1.00, 5, 10, 19, 'In Stock', 50.00, 100.00, 50.00, 50, NULL, '2025-02-02 15:07:50', '2025-03-22 09:08:48'),
(77, 0, 'PA-000003', 'BARCODE STICKER 32MMX25MMX5000PCS', '32MMX25MMX5000PCS', 'Generic', 'P-Lim Trading', 'roll', 27.00, 1, 1.00, 5, 10, 20, 'In Stock', 50.00, 100.00, 50.00, 50, NULL, '2025-02-02 15:29:37', '2025-03-22 09:08:48'),
(78, 0, 'PA-000002', 'BARCODE STICKER 32MMX19MMX5000PCS', '32MMX19MMX5000PCS', 'Generic', 'P-Lim Trading', 'roll', 27.00, 1, 1.00, 5, 10, 20, 'In Stock', 50.00, 100.00, 50.00, 50, NULL, '2025-02-02 15:31:31', '2025-03-22 09:08:48'),
(80, 0, 'PS-000001', 'ENERGIZER BATTERY AA', '<p><span style=\"color: #ffd700;\"><strong>Size:</strong></span> AA<br><br>&radic; 100% Original<br>&radic; 100% Brand New<br>&radic; Long lasting Power</p>', 'Energizer', 'P-Lim Trading', 'pack', 27.00, 4, 60.13, 9, 4, 4, 'In Stock', 50.00, 100.00, 50.00, 50, NULL, '2025-03-02 12:13:16', '2025-03-22 09:08:52'),
(81, 0, 'PS-000002', 'ENERGIZER BATTERY AAA', '<p><span style=\"color: #ffd700;\"><strong>Size:</strong></span> AAA<br><br>&radic; 100% Original<br>&radic; 100% Brand New<br>&radic; Long lasting Power</p>', 'Energizer', 'P-Lim Trading', 'pack', 27.00, 4, 73.13, 9, 4, 4, 'Out of Stock', 0.00, 100.00, 100.00, 50, NULL, '2025-03-02 12:26:01', '2025-03-22 09:08:52'),
(83, 0, 'PS-000003', 'ENERGIZER BATTERY SIZE 9V', '<p><span style=\"color: #ffd700;\"><strong>Packaging Size:</strong></span> 1 pc per pack<br><span style=\"color: #ffd700;\"><strong>Classification:</strong></span> Alkaline<br><span style=\"color: #ffd700;\"><strong>Chemical System:</strong></span> Zinc-Manganese Dioxide (Zn/MnO2)<br><span style=\"color: #ffd700;\"><strong>Designation:</strong></span> ANSI 1604A, IEC-6LF22 or 6LR61<br><strong><span style=\"color: #ffd700;\">Operating Temp:</span></strong> -18&deg;C to 55&deg;C<br><span style=\"color: #ffd700;\"><strong>Typical Weight:</strong></span> 45 grams<br><span style=\"color: #ffd700;\"><strong>Typical Volume:</strong></span> 21 cubic centimeters<br><span style=\"color: #ffd700;\"><strong>Shelf Life:</strong></span> 5 years at 21&deg;C<br><span style=\"color: #ffd700;\"><strong>Terminal:</strong></span> Miniature Snap<br><span style=\"color: #ffd700;\"><strong>Nominal Voltage:</strong></span> 9.0 volts</p>', 'Energizer', 'p-Lim Trading', 'piece', 27.00, 1, 1.00, 9, 4, 4, 'Out of Stock', 0.00, 100.00, 100.00, 50, NULL, '2025-03-02 12:36:50', '2025-03-22 09:08:52'),
(85, 0, 'PS-000005', 'ENERGIZER BATTERY SIZE D', 'BATTERY SIZE D', 'Energizer', 'P-Lim Trading', 'piece', 27.00, 1, 1.00, 9, 4, 4, 'out of Stock', 0.00, 100.00, 100.00, 50, NULL, '2025-03-02 12:57:48', '2025-03-22 09:08:52'),
(86, 0, 'PS-000004', 'ENERGIZER BATTERY SIZE C', '<p><span style=\"color: #ffd700;\"><strong>Brand Range:</strong></span> Energizer MAX<br><span style=\"color: #ffd700;\"><strong>Size:</strong></span> C<br><span style=\"color: #ffd700;\"><strong>Chemistry:</strong></span> Alkaline<br><span style=\"color: #ffd700;\"><strong>Nominal Voltage:</strong></span> 1.5V<br><span style=\"color: #ffd700;\"><strong>IEC Name:</strong></span> LR14<br><span style=\"color: #ffd700;\"><strong>Terminal Type:</strong></span> Standard<br><span style=\"color: #ffd700;\"><strong>Capacity:</strong></span> 8Ah</p>', 'Energizer', 'P-Lim Trading', 'piece', 27.00, 1, 1.00, 9, 4, 4, 'OUt of Stock', 0.00, 100.00, 100.00, 50, NULL, '2025-03-02 13:02:52', '2025-03-22 09:08:52'),
(87, 0, 'PS-000006', 'ENERGIZER RECHARGEABLE BATTERY AA (4PCS/PACK)', 'RECHARGEABLE BATTERY AA (4PCS/PACK)', 'Energizer', 'P-Lim Trading', 'pack', 27.00, 4, 373.75, 9, 4, 4, 'Out of Stock', 0.00, 100.00, 100.00, 50, NULL, '2025-03-02 13:08:45', '2025-03-22 09:08:52'),
(88, 0, 'PS-000007', 'ENERGIZER RECHARGEABLE BATTERY AAA(4PCS/PACK)', 'RECHARGEABLE BATTERY AAA(4PCS/PACK)', 'Energizer', 'P-Lim Trading', 'pack', 27.00, 4, 373.75, 9, 4, 4, 'Out of Stock', 0.00, 100.00, 100.00, 50, NULL, '2025-03-02 13:10:53', '2025-03-22 09:08:52'),
(89, 0, 'PS-000008', 'EVEREADY BATTERY SIZE 9V', 'BATTERY SIZE 9V', 'Eveready', 'P-Lim Trading', 'piece', 27.00, 1, 1.00, 9, 4, 4, 'out of Stock', 0.00, 100.00, 100.00, 50, NULL, '2025-03-02 15:28:38', '2025-03-22 09:08:52'),
(90, 0, 'PS-000009', 'EVEREADY BATTERY SIZE AA', 'BATTERY SIZE AA', 'Eveready', 'P-Lim Trading', 'piece', 27.00, 1, 1.00, 9, 4, 4, 'Out of Stock', 0.00, 100.00, 100.00, 50, NULL, '2025-03-02 15:34:01', '2025-03-22 09:08:52'),
(91, 0, 'PS-000010', 'EVEREADY BATTERY SIZE AAA', 'BATTERY SIZE AAA', 'Eveready', 'P-Lim Trading', 'piece', 27.00, 1, 1.00, 9, 4, 4, 'Out of Stock', 0.00, 100.00, 100.00, 50, NULL, '2025-03-02 15:46:24', '2025-03-22 09:08:52'),
(92, 0, 'PS-000011', 'EVEREADY BATTERY SIZE C', 'BATTERY SIZE C', 'Eveready', 'P-Lim Trading', 'piece', 27.00, 1, 1.00, 9, 4, 4, 'Out of Stock', 0.00, 100.00, 100.00, 50, NULL, '2025-03-02 16:04:52', '2025-03-22 09:08:52'),
(93, 0, 'PS-000012', 'EVEREADY BATTERY SIZE D', 'BATTERY SIZE D', 'Eveready', 'P-Lim Trading', 'piece', 27.00, 1, 1.00, 9, 4, 4, 'Out of Stock', 0.00, 100.00, 100.00, 50, NULL, '2025-03-02 16:07:43', '2025-03-22 09:08:52'),
(94, 0, 'PS-000013', 'MAXELL BATTERY LITHIUM CR1620', 'BATTERY LITHIUM CR1620', 'Maxell', 'P-Lim Trading', 'piece', 27.00, 1, 1.00, 9, 4, 4, 'Out of Stock', 0.00, 100.00, 100.00, 50, NULL, '2025-03-02 16:10:40', '2025-03-22 09:08:52'),
(95, 0, 'PS-000014', 'MAXELL BATTERY CR2025 (5PCS/PAD)', 'COIN CELL BATTERY CR2025 (5PCS/PAD)', 'Maxell', 'P-Lim Trading', 'pad', 27.00, 5, 1.00, 9, 4, 4, 'OUt of Stock', 0.00, 100.00, 100.00, 50, NULL, '2025-03-02 16:15:03', '2025-03-22 09:08:52'),
(96, 0, 'PS-000015', 'MAXELL BATTERY CR2032 (5PCS/PAD)', 'COIN CELL BATTERY CR2032 (5PCS/PAD)', 'Maxell', 'P-Lim Trading', 'pad', 27.00, 5, 1.00, 9, 4, 4, 'OUT of Stock', 0.00, 100.00, 100.00, 50, NULL, '2025-03-02 16:17:07', '2025-03-22 09:08:52'),
(97, 1, 'test-0001', 'test product 1', 'test specs', 'test brand name', 'test supplier', 'unit', 27.00, 1, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-02 16:19:47', '2025-03-22 09:20:20'),
(98, 0, 'PS-000016', 'MAXELL BATTERY LR-44 (10PCS/PAD)', 'Button Cell Batteries LR-44 (10PCS/PAD)', 'Maxell', 'P-Lim Trading', 'pad', 27.00, 10, 1.00, 9, 4, 4, 'out of Stock', 0.00, 100.00, 100.00, 50, NULL, '2025-03-02 16:21:45', '2025-03-22 09:08:52'),
(99, 0, 'PS-000017', 'MAXELL BATTERY LR-54 (LR1130) (10PCS/PAD)', 'Button Cell Batteries LR-54 (LR1130) (10PCS/PAD)', 'Maxell', 'P-Lim Trading', 'pad', 27.00, 10, 1.00, 9, 4, 4, 'Out of Stock', 0.00, 100.00, 100.00, 50, NULL, '2025-03-02 16:24:58', '2025-03-22 09:08:52'),
(100, 0, 'ED-000001', 'DL CALL BELL (85200)', 'Manual call bell (85200)', 'DL', 'P-Lim Trading', 'piece', 27.00, 1, 1.00, 1, 11, 21, 'out of Stock', 0.00, 100.00, 100.00, 50, NULL, '2025-03-02 16:37:27', '2025-03-22 09:08:24'),
(101, 0, 'ED-000002', 'GENMES CALL BELL', 'Manual call bell 3A00', 'Genmes', 'P-Lim Trading', 'piece', 27.00, 1, 1.00, 1, 11, 21, 'Out of Stock', 0.00, 100.00, 100.00, 50, NULL, '2025-03-02 16:42:04', '2025-03-22 09:08:24'),
(102, 0, 'ED-000003', 'TEA BELL BIG', 'Manual call bell (Big) 6\"x3\"', 'Generic', 'P-Lim Trading', 'piece', 27.00, 1, 1.00, 1, 11, 21, 'out of Stock', 0.00, 100.00, 100.00, 0, NULL, '2025-03-02 16:46:08', '2025-03-22 09:08:24'),
(103, 0, 'ED-000004', 'TEA BELL MEDIUM', 'Manual call bell (Medium) 2 1/2 diameter steel base', 'Generic', 'P-Lim Trading', 'piece', 27.00, 1, 1.00, 1, 11, 21, 'Out of Stock', 0.00, 100.00, 100.00, 50, NULL, '2025-03-02 16:49:39', '2025-03-22 09:08:24'),
(104, 0, 'ED-000005', 'TEA BELL SMALL', 'Manual call bell (Small)', 'Generic', 'P-Lim Trading', 'piece', 27.00, 1, 1.00, 1, 11, 21, 'Out of Stock', 0.00, 100.00, 100.00, 50, NULL, '2025-03-02 16:56:02', '2025-03-22 09:08:24'),
(105, 0, 'OE-000001', 'SEAGULL 3-RING BINDER (CVP20) A4 2IN - ROYAL BLUE', '3-RING BINDER (CVP20) A4 2IN - ROYAL BLUE', 'Seagull', 'P-Lim Trading', 'piece', 27.00, 1, 1.00, 1, 12, 22, 'Out of Stock', 0.00, 100.00, 100.00, 50, NULL, '2025-03-02 17:02:54', '2025-03-22 09:08:30'),
(106, 0, 'PW-000003', 'STRETCH FILM 20MIC (~20 INCHES x 500 METERS) - CLEAR', '20MIC (~20 INCHES x 500 METERS) - CLEAR', 'Generic', 'Sumwell Philippines Inc.', 'roll', 27.00, 1, 1.00, 1, 13, 23, 'In Stock', 50.00, 100.00, 50.00, 50, NULL, '2025-03-10 09:57:28', '2025-03-22 09:08:36'),
(107, 0, 'PW-000004', 'STRETCH FILM 20MIC (~20 INCHES x 500 METERS) - CLEAR', '20MIC (~20 INCHES x 500 METERS) - CLEAR', 'Generic', 'CONANN Packaging Supplies', 'roll', 27.00, 1, 1.00, 1, 13, 23, 'In Stock', 50.00, 100.00, 50.00, 50, NULL, '2025-03-10 09:59:14', '2025-03-22 09:08:36'),
(108, 0, 'SO-000023', 'ZOOEY MULTI BOX -BIG', 'MULTI BOX -BIG (LxHxW: 61cm x 41cm x 46cm) - 77 Liters', 'ZOOEY', 'Zooey', 'piece', 27.00, 1, 1.00, 1, 14, 24, 'In Stock', 50.00, 100.00, 50.00, 50, NULL, '2025-03-10 10:10:56', '2025-03-22 09:08:42');

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
(1, 'AC-000003', 'edit', '{\"id\":65,\"hidden\":0,\"code\":\"AC-000003\",\"name\":\"MEGA\\/RAMBO YARN THREAD 12S - VIOLET\",\"spec\":\"YARN THREAD 12S - VIOLET\",\"brand\":\"Mega\\/Rambo\\/Estambre\",\"supplier\":\"P-Lim Trading\",\"unit\":\"pack\",\"unit_price\":\"97.50\",\"pcs_unit\":12,\"value_ratio\":\"8.13\",\"service_id\":1,\"category_id\":8,\"subcategory_id\":16,\"status\":\"In Stock\",\"available\":\"50.00\",\"needed\":\"100.00\",\"to_buy\":\"50.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":\"2025-02-02T07:34:00.000000Z\",\"updated_at\":\"2025-02-02T07:34:00.000000Z\"}', '{\"hidden\":\"1\",\"updated_at\":\"2025-03-07 01:29:03\"}', 2, '2025-03-07 08:29:03', '2025-03-07 08:29:03'),
(2, 'AC-000003', 'edit', '{\"id\":65,\"hidden\":1,\"code\":\"AC-000003\",\"name\":\"MEGA\\/RAMBO YARN THREAD 12S - VIOLET\",\"spec\":\"YARN THREAD 12S - VIOLET\",\"brand\":\"Mega\\/Rambo\\/Estambre\",\"supplier\":\"P-Lim Trading\",\"unit\":\"pack\",\"unit_price\":\"97.50\",\"pcs_unit\":12,\"value_ratio\":\"8.13\",\"service_id\":1,\"category_id\":8,\"subcategory_id\":16,\"status\":\"In Stock\",\"available\":\"50.00\",\"needed\":\"100.00\",\"to_buy\":\"50.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":\"2025-02-02T07:34:00.000000Z\",\"updated_at\":\"2025-03-07T01:29:03.000000Z\"}', '{\"hidden\":\"0\",\"updated_at\":\"2025-03-07 01:29:04\"}', 2, '2025-03-07 08:29:04', '2025-03-07 08:29:04'),
(3, 'AC-000004', 'edit', '{\"id\":66,\"hidden\":0,\"code\":\"AC-000004\",\"name\":\"MEGA\\/RAMBO YARN THREAD 12S - WHITE\",\"spec\":\"YARN THREAD 12S - WHITE\",\"brand\":\"Mega\\/Rambo\\/Estambre\",\"supplier\":\"P-Lim Trading\",\"unit\":\"pack\",\"unit_price\":\"97.50\",\"pcs_unit\":12,\"value_ratio\":\"8.13\",\"service_id\":1,\"category_id\":8,\"subcategory_id\":16,\"status\":\"In Stock\",\"available\":\"50.00\",\"needed\":\"100.00\",\"to_buy\":\"50.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":\"2025-02-02T07:36:29.000000Z\",\"updated_at\":\"2025-02-02T07:36:29.000000Z\"}', '{\"hidden\":\"1\",\"updated_at\":\"2025-03-07 01:29:04\"}', 2, '2025-03-07 08:29:04', '2025-03-07 08:29:04'),
(4, 'AC-000004', 'edit', '{\"id\":66,\"hidden\":1,\"code\":\"AC-000004\",\"name\":\"MEGA\\/RAMBO YARN THREAD 12S - WHITE\",\"spec\":\"YARN THREAD 12S - WHITE\",\"brand\":\"Mega\\/Rambo\\/Estambre\",\"supplier\":\"P-Lim Trading\",\"unit\":\"pack\",\"unit_price\":\"97.50\",\"pcs_unit\":12,\"value_ratio\":\"8.13\",\"service_id\":1,\"category_id\":8,\"subcategory_id\":16,\"status\":\"In Stock\",\"available\":\"50.00\",\"needed\":\"100.00\",\"to_buy\":\"50.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":\"2025-02-02T07:36:29.000000Z\",\"updated_at\":\"2025-03-07T01:29:04.000000Z\"}', '{\"hidden\":\"0\"}', 2, '2025-03-07 08:29:04', '2025-03-07 08:29:04'),
(5, 'AR-000001', 'edit', '{\"id\":67,\"hidden\":0,\"code\":\"AR-000001\",\"name\":\"KAGAWARAN NG EDUKASYON - 5CM BRONZE MEDAL\",\"spec\":\"5CM BRONZE MEDAL\",\"brand\":\"Generic\",\"supplier\":\"P-Lim Trading\",\"unit\":\"piece\",\"unit_price\":\"110.50\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":9,\"subcategory_id\":17,\"status\":\"In Stock\",\"available\":\"50.00\",\"needed\":\"100.00\",\"to_buy\":\"50.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":\"2025-02-02T07:38:59.000000Z\",\"updated_at\":\"2025-02-02T07:38:59.000000Z\"}', '{\"hidden\":\"1\",\"updated_at\":\"2025-03-07 01:29:05\"}', 2, '2025-03-07 08:29:05', '2025-03-07 08:29:05'),
(6, 'AR-000001', 'edit', '{\"id\":67,\"hidden\":1,\"code\":\"AR-000001\",\"name\":\"KAGAWARAN NG EDUKASYON - 5CM BRONZE MEDAL\",\"spec\":\"5CM BRONZE MEDAL\",\"brand\":\"Generic\",\"supplier\":\"P-Lim Trading\",\"unit\":\"piece\",\"unit_price\":\"110.50\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":9,\"subcategory_id\":17,\"status\":\"In Stock\",\"available\":\"50.00\",\"needed\":\"100.00\",\"to_buy\":\"50.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":\"2025-02-02T07:38:59.000000Z\",\"updated_at\":\"2025-03-07T01:29:05.000000Z\"}', '{\"hidden\":\"0\"}', 2, '2025-03-07 08:29:05', '2025-03-07 08:29:05'),
(7, 'PW-000003', 'add', NULL, '{\"code\":\"PW-000003\",\"name\":\"STRETCH FILM 20MIC (~20 INCHES x 500 METERS) - CLEAR\",\"service_id\":\"1\",\"category_id\":\"13\",\"subcategory_id\":\"23\",\"supplier\":\"Sumwell Philippines Inc.\",\"brand\":\"Generic\",\"spec\":\"20MIC (~20 INCHES x 500 METERS) - CLEAR\",\"unit\":\"roll\",\"pcs_unit\":\"1\",\"unit_price\":\"300\",\"value_ratio\":\"1\",\"status\":\"In Stock\",\"available\":\"50\",\"needed\":\"100\",\"to_buy\":\"50\",\"low_alert\":\"50\",\"prod_note\":null,\"updated_at\":\"2025-03-10T02:57:28.000000Z\",\"created_at\":\"2025-03-10T02:57:28.000000Z\",\"id\":106}', 3, '2025-03-10 09:57:28', '2025-03-10 09:57:28'),
(8, 'PW-000004', 'add', NULL, '{\"code\":\"PW-000004\",\"name\":\"STRETCH FILM 20MIC (~20 INCHES x 500 METERS) - CLEAR\",\"service_id\":\"1\",\"category_id\":\"13\",\"subcategory_id\":\"23\",\"supplier\":\"CONANN Packaging Supplies\",\"brand\":\"Generic\",\"spec\":\"20MIC (~20 INCHES x 500 METERS) - CLEAR\",\"unit\":\"roll\",\"pcs_unit\":\"1\",\"unit_price\":\"280\",\"value_ratio\":\"1\",\"status\":\"In Stock\",\"available\":\"50\",\"needed\":\"100\",\"to_buy\":\"50\",\"low_alert\":\"50\",\"prod_note\":null,\"updated_at\":\"2025-03-10T02:59:14.000000Z\",\"created_at\":\"2025-03-10T02:59:14.000000Z\",\"id\":107}', 3, '2025-03-10 09:59:14', '2025-03-10 09:59:14'),
(9, 'SO-000023', 'add', NULL, '{\"code\":\"SO-000023\",\"name\":\"ZOOEY MULTI BOX -BIG\",\"service_id\":\"1\",\"category_id\":\"14\",\"subcategory_id\":\"24\",\"supplier\":\"Zooey\",\"brand\":\"ZOOEY\",\"spec\":\"MULTI BOX -BIG (LxHxW: 61cm x 41cm x 46cm) - 77 Liters\",\"unit\":\"piece\",\"pcs_unit\":\"1\",\"unit_price\":\"479\",\"value_ratio\":\"1\",\"status\":\"In Stock\",\"available\":\"50\",\"needed\":\"100\",\"to_buy\":\"50\",\"low_alert\":\"50\",\"prod_note\":null,\"updated_at\":\"2025-03-10T03:10:56.000000Z\",\"created_at\":\"2025-03-10T03:10:56.000000Z\",\"id\":108}', 3, '2025-03-10 10:10:56', '2025-03-10 10:10:56'),
(10, 'WI-000017', 'edit', '{\"id\":17,\"hidden\":1,\"code\":\"WI-000017\",\"name\":\"Pilot Ballpen BPS 0.7mm\",\"spec\":\"line width: 0.7mm, Colour: Black Blue Red Green\",\"brand\":\"\",\"supplier\":\"Pilot\",\"unit\":\"piece\",\"unit_price\":\"25.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":1,\"subcategory_id\":1,\"status\":\"Out of stock\",\"available\":\"0.00\",\"needed\":\"100.00\",\"to_buy\":\"100.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":null,\"updated_at\":\"2025-03-02T08:48:14.000000Z\"}', '{\"hidden\":\"0\",\"updated_at\":\"2025-03-10 03:25:22\"}', 2, '2025-03-10 10:25:22', '2025-03-10 10:25:22'),
(11, 'WI-000017', 'edit', '{\"id\":17,\"hidden\":0,\"code\":\"WI-000017\",\"name\":\"Pilot Ballpen BPS 0.7mm\",\"spec\":\"line width: 0.7mm, Colour: Black Blue Red Green\",\"brand\":\"\",\"supplier\":\"Pilot\",\"unit\":\"piece\",\"unit_price\":\"25.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":1,\"subcategory_id\":1,\"status\":\"Out of stock\",\"available\":\"0.00\",\"needed\":\"100.00\",\"to_buy\":\"100.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":null,\"updated_at\":\"2025-03-10T03:25:22.000000Z\"}', '{\"hidden\":\"1\"}', 2, '2025-03-10 10:25:22', '2025-03-10 10:25:22'),
(12, 'PP-000001', 'edit', '{\"id\":28,\"hidden\":0,\"code\":\"PP-000001\",\"name\":\"Hard Copy Bond Paper Legal (70gsm)\",\"spec\":\"Paper Grammage: (70gsm) Sub 20, 500 sheet per ream (216mm x 330mm)\\/Legal\",\"brand\":\"\",\"supplier\":\"Hard Copy\",\"unit\":\"ream\",\"unit_price\":\"260.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":2,\"subcategory_id\":2,\"status\":\"Out of stock\",\"available\":\"0.00\",\"needed\":\"100.00\",\"to_buy\":\"100.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":null,\"updated_at\":null}', '{\"spec\":\"<p><strong>Grammage:<\\/strong> (70gsm) Sub 20, <br><strong>Sheet\\/Ream:<\\/strong> 500 sheet<br><strong>Size:<\\/strong> (216mm x 330mm) - Legal<br><br><strong>Note:<\\/strong> 5 reams per box<\\/p>\",\"brand\":\"Hard Copy\",\"updated_at\":\"2025-03-11 03:18:53\"}', 9, '2025-03-11 10:18:53', '2025-03-11 10:18:53'),
(13, 'PP-000001', 'edit', '{\"id\":28,\"hidden\":0,\"code\":\"PP-000001\",\"name\":\"Hard Copy Bond Paper Legal (70gsm)\",\"spec\":\"<p><strong>Grammage:<\\/strong> (70gsm) Sub 20, <br><strong>Sheet\\/Ream:<\\/strong> 500 sheet<br><strong>Size:<\\/strong> (216mm x 330mm) - Legal<br><br><strong>Note:<\\/strong> 5 reams per box<\\/p>\",\"brand\":\"Hard Copy\",\"supplier\":\"Hard Copy\",\"unit\":\"ream\",\"unit_price\":\"260.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":2,\"subcategory_id\":2,\"status\":\"Out of stock\",\"available\":\"0.00\",\"needed\":\"100.00\",\"to_buy\":\"100.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":null,\"updated_at\":\"2025-03-11T03:18:53.000000Z\"}', '{\"spec\":\"<p><span style=\\\"color: #bfedd2;\\\"><strong>Grammage:<\\/strong><\\/span> (70gsm) Sub 20, <br><span style=\\\"color: #bfedd2;\\\"><strong>Sheet\\/Ream:<\\/strong><\\/span> 500 sheet<br><span style=\\\"color: #bfedd2;\\\"><strong>Size:<\\/strong><\\/span> (216mm x 330mm) - Legal<br><br><span style=\\\"color: #c2e0f4;\\\"><strong>Note:<\\/strong><\\/span> 5 reams per box<\\/p>\",\"updated_at\":\"2025-03-11 03:31:18\"}', 9, '2025-03-11 10:31:18', '2025-03-11 10:31:18'),
(14, 'PP-000001', 'edit', '{\"id\":28,\"hidden\":0,\"code\":\"PP-000001\",\"name\":\"Hard Copy Bond Paper Legal (70gsm)\",\"spec\":\"<p><span style=\\\"color: #bfedd2;\\\"><strong>Grammage:<\\/strong><\\/span> (70gsm) Sub 20, <br><span style=\\\"color: #bfedd2;\\\"><strong>Sheet\\/Ream:<\\/strong><\\/span> 500 sheet<br><span style=\\\"color: #bfedd2;\\\"><strong>Size:<\\/strong><\\/span> (216mm x 330mm) - Legal<br><br><span style=\\\"color: #c2e0f4;\\\"><strong>Note:<\\/strong><\\/span> 5 reams per box<\\/p>\",\"brand\":\"Hard Copy\",\"supplier\":\"Hard Copy\",\"unit\":\"ream\",\"unit_price\":\"260.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":2,\"subcategory_id\":2,\"status\":\"Out of stock\",\"available\":\"0.00\",\"needed\":\"100.00\",\"to_buy\":\"100.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":null,\"updated_at\":\"2025-03-11T03:31:18.000000Z\"}', '{\"spec\":\"<p><span style=\\\"color: #000000;\\\"><span style=\\\"color: #69fe00;\\\"><strong>Grammage:<\\/strong><\\/span> (70gsm) Sub 20, <\\/span><br><span style=\\\"color: #000000;\\\"><strong>Sheet\\/Ream:<\\/strong> 500 sheet<\\/span><br><span style=\\\"color: #000000;\\\"><strong>Size:<\\/strong> (216mm x 330mm) - Legal<\\/span><br><br><span style=\\\"color: #000000;\\\"><strong>Note:<\\/strong> 5 reams <\\/span>per box<\\/p>\",\"updated_at\":\"2025-03-11 03:35:25\"}', 9, '2025-03-11 10:35:25', '2025-03-11 10:35:25'),
(15, 'PP-000001', 'edit', '{\"id\":28,\"hidden\":0,\"code\":\"PP-000001\",\"name\":\"Hard Copy Bond Paper Legal (70gsm)\",\"spec\":\"<p><span style=\\\"color: #000000;\\\"><span style=\\\"color: #69fe00;\\\"><strong>Grammage:<\\/strong><\\/span> (70gsm) Sub 20, <\\/span><br><span style=\\\"color: #000000;\\\"><strong>Sheet\\/Ream:<\\/strong> 500 sheet<\\/span><br><span style=\\\"color: #000000;\\\"><strong>Size:<\\/strong> (216mm x 330mm) - Legal<\\/span><br><br><span style=\\\"color: #000000;\\\"><strong>Note:<\\/strong> 5 reams <\\/span>per box<\\/p>\",\"brand\":\"Hard Copy\",\"supplier\":\"Hard Copy\",\"unit\":\"ream\",\"unit_price\":\"260.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":2,\"subcategory_id\":2,\"status\":\"Out of stock\",\"available\":\"0.00\",\"needed\":\"100.00\",\"to_buy\":\"100.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":null,\"updated_at\":\"2025-03-11T03:35:25.000000Z\"}', '{\"spec\":\"<p><span style=\\\"color: #000000;\\\"><span style=\\\"color: #69fe00;\\\"><strong>Grammage:<\\/strong><\\/span> <\\/span>(70gsm) Sub 20, <br><strong>Sheet\\/Ream:<\\/strong> 500 sheet<br><strong>Size:<\\/strong> (216mm x 330mm) - Legal<br><br><strong>Note:<\\/strong> 5 reams per box<\\/p>\",\"updated_at\":\"2025-03-11 03:36:41\"}', 9, '2025-03-11 10:36:41', '2025-03-11 10:36:41'),
(16, 'PP-000001', 'edit', '{\"id\":28,\"hidden\":0,\"code\":\"PP-000001\",\"name\":\"Hard Copy Bond Paper Legal (70gsm)\",\"spec\":\"<p><span style=\\\"color: #000000;\\\"><span style=\\\"color: #69fe00;\\\"><strong>Grammage:<\\/strong><\\/span> <\\/span>(70gsm) Sub 20, <br><strong>Sheet\\/Ream:<\\/strong> 500 sheet<br><strong>Size:<\\/strong> (216mm x 330mm) - Legal<br><br><strong>Note:<\\/strong> 5 reams per box<\\/p>\",\"brand\":\"Hard Copy\",\"supplier\":\"Hard Copy\",\"unit\":\"ream\",\"unit_price\":\"260.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":2,\"subcategory_id\":2,\"status\":\"Out of stock\",\"available\":\"0.00\",\"needed\":\"100.00\",\"to_buy\":\"100.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":null,\"updated_at\":\"2025-03-11T03:36:41.000000Z\"}', '{\"spec\":\"<p><span style=\\\"color: #000000;\\\"><span style=\\\"color: #ffd700;\\\"><strong>Grammage:<\\/strong><\\/span> <\\/span>(70gsm) Sub 20, <br><span style=\\\"color: #ffd700;\\\"><strong>Sheet\\/Ream:<\\/strong><\\/span> 500 sheet<br><span style=\\\"color: #ffd700;\\\"><strong>Size:<\\/strong><\\/span> (216mm x 330mm) - Legal<br><br><strong>Note:<\\/strong> 5 reams per box<\\/p>\",\"updated_at\":\"2025-03-11 03:43:41\"}', 9, '2025-03-11 10:43:41', '2025-03-11 10:43:41'),
(17, 'PP-000002', 'edit', '{\"id\":29,\"hidden\":0,\"code\":\"PP-000002\",\"name\":\"Hard Copy Bond Paper A4 (70gsm)\",\"spec\":\"Paper Grammage: (70gsm) Sub 20, 500 sheet per ream (210mm x 297mm)\\/A4\",\"brand\":\"\",\"supplier\":\"Hard Copy\",\"unit\":\"ream\",\"unit_price\":\"260.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":2,\"subcategory_id\":2,\"status\":\"Out of stock\",\"available\":\"0.00\",\"needed\":\"100.00\",\"to_buy\":\"100.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":null,\"updated_at\":null}', '{\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Grammage:<\\/strong><\\/span> 70gsm (Sub 20)<br><span style=\\\"color: #ffd700;\\\"><strong>Sheets\\/UOM:<\\/strong><\\/span> 500 sheets<br><span style=\\\"color: #ffd700;\\\"><strong>Size:<\\/strong><\\/span> A4 (210mm x 297mm)<br><br><strong>Note:<\\/strong> 5 reams per box<\\/p>\",\"brand\":\"Hard Copy\",\"updated_at\":\"2025-03-11 03:57:01\"}', 9, '2025-03-11 10:57:01', '2025-03-11 10:57:01'),
(18, 'PP-000001', 'edit', '{\"id\":28,\"hidden\":0,\"code\":\"PP-000001\",\"name\":\"Hard Copy Bond Paper Legal (70gsm)\",\"spec\":\"<p><span style=\\\"color: #000000;\\\"><span style=\\\"color: #ffd700;\\\"><strong>Grammage:<\\/strong><\\/span> <\\/span>(70gsm) Sub 20, <br><span style=\\\"color: #ffd700;\\\"><strong>Sheet\\/Ream:<\\/strong><\\/span> 500 sheet<br><span style=\\\"color: #ffd700;\\\"><strong>Size:<\\/strong><\\/span> (216mm x 330mm) - Legal<br><br><strong>Note:<\\/strong> 5 reams per box<\\/p>\",\"brand\":\"Hard Copy\",\"supplier\":\"Hard Copy\",\"unit\":\"ream\",\"unit_price\":\"260.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":2,\"subcategory_id\":2,\"status\":\"Out of stock\",\"available\":\"0.00\",\"needed\":\"100.00\",\"to_buy\":\"100.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":null,\"updated_at\":\"2025-03-11T03:43:41.000000Z\"}', '{\"spec\":\"<p><span style=\\\"color: #000000;\\\"><span style=\\\"color: #ffd700;\\\"><strong>Grammage:<\\/strong><\\/span>&nbsp;<\\/span>70gsm (Sub 20)<br><span style=\\\"color: #ffd700;\\\"><strong>Sheet\\/UOM:<\\/strong><\\/span> 500 sheets<br><span style=\\\"color: #ffd700;\\\"><strong>Size:<\\/strong><\\/span> Legal (216mm x 330mm)<br><br><strong>Note:<\\/strong> 5 reams per box<\\/p>\",\"updated_at\":\"2025-03-11 03:59:09\"}', 9, '2025-03-11 10:59:09', '2025-03-11 10:59:09'),
(19, 'PP-000001', 'edit', '{\"id\":28,\"hidden\":0,\"code\":\"PP-000001\",\"name\":\"Hard Copy Bond Paper Legal (70gsm)\",\"spec\":\"<p><span style=\\\"color: #000000;\\\"><span style=\\\"color: #ffd700;\\\"><strong>Grammage:<\\/strong><\\/span>&nbsp;<\\/span>70gsm (Sub 20)<br><span style=\\\"color: #ffd700;\\\"><strong>Sheet\\/UOM:<\\/strong><\\/span> 500 sheets<br><span style=\\\"color: #ffd700;\\\"><strong>Size:<\\/strong><\\/span> Legal (216mm x 330mm)<br><br><strong>Note:<\\/strong> 5 reams per box<\\/p>\",\"brand\":\"Hard Copy\",\"supplier\":\"Hard Copy\",\"unit\":\"ream\",\"unit_price\":\"260.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":2,\"subcategory_id\":2,\"status\":\"Out of stock\",\"available\":\"0.00\",\"needed\":\"100.00\",\"to_buy\":\"100.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":null,\"updated_at\":\"2025-03-11T03:59:09.000000Z\"}', '{\"name\":\"Hard Copy ~  Legal (70gsm)\",\"updated_at\":\"2025-03-11 04:06:45\"}', 9, '2025-03-11 11:06:45', '2025-03-11 11:06:45'),
(20, 'PP-000001', 'edit', '{\"id\":28,\"hidden\":0,\"code\":\"PP-000001\",\"name\":\"Hard Copy ~  Legal (70gsm)\",\"spec\":\"<p><span style=\\\"color: #000000;\\\"><span style=\\\"color: #ffd700;\\\"><strong>Grammage:<\\/strong><\\/span>&nbsp;<\\/span>70gsm (Sub 20)<br><span style=\\\"color: #ffd700;\\\"><strong>Sheet\\/UOM:<\\/strong><\\/span> 500 sheets<br><span style=\\\"color: #ffd700;\\\"><strong>Size:<\\/strong><\\/span> Legal (216mm x 330mm)<br><br><strong>Note:<\\/strong> 5 reams per box<\\/p>\",\"brand\":\"Hard Copy\",\"supplier\":\"Hard Copy\",\"unit\":\"ream\",\"unit_price\":\"260.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":2,\"subcategory_id\":2,\"status\":\"Out of stock\",\"available\":\"0.00\",\"needed\":\"100.00\",\"to_buy\":\"100.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":null,\"updated_at\":\"2025-03-11T04:06:45.000000Z\"}', '{\"spec\":\"<p><span style=\\\"color: #000000;\\\"><span style=\\\"color: #ffd700;\\\"><strong>Grammage:<\\/strong><\\/span>&nbsp;<\\/span>70gsm (Sub 20)<br><span style=\\\"color: #ffd700;\\\"><strong>Sheet\\/UOM:<\\/strong><\\/span> 500 sheets<br><span style=\\\"color: #ffd700;\\\"><strong>Size:<\\/strong><\\/span> Legal (216mm x 330mm)<br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Ultra White<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Advance (ink-lock) system<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; 99.9% Jam Free<br>&nbsp;<br><strong>Note:<\\/strong> 5 reams per box<br><br><\\/p>\",\"updated_at\":\"2025-03-11 04:31:51\"}', 9, '2025-03-11 11:31:51', '2025-03-11 11:31:51'),
(21, 'PP-000001', 'edit', '{\"id\":28,\"hidden\":0,\"code\":\"PP-000001\",\"name\":\"Hard Copy ~  Legal (70gsm)\",\"spec\":\"<p><span style=\\\"color: #000000;\\\"><span style=\\\"color: #ffd700;\\\"><strong>Grammage:<\\/strong><\\/span>&nbsp;<\\/span>70gsm (Sub 20)<br><span style=\\\"color: #ffd700;\\\"><strong>Sheet\\/UOM:<\\/strong><\\/span> 500 sheets<br><span style=\\\"color: #ffd700;\\\"><strong>Size:<\\/strong><\\/span> Legal (216mm x 330mm)<br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Ultra White<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Advance (ink-lock) system<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; 99.9% Jam Free<br>&nbsp;<br><strong>Note:<\\/strong> 5 reams per box<br><br><\\/p>\",\"brand\":\"Hard Copy\",\"supplier\":\"Hard Copy\",\"unit\":\"ream\",\"unit_price\":\"260.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":2,\"subcategory_id\":2,\"status\":\"Out of stock\",\"available\":\"0.00\",\"needed\":\"100.00\",\"to_buy\":\"100.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":null,\"updated_at\":\"2025-03-11T04:31:51.000000Z\"}', '{\"spec\":\"<p><span style=\\\"color: #000000;\\\"><span style=\\\"color: #ffd700;\\\"><strong>Grammage:<\\/strong><\\/span>&nbsp;<\\/span>70gsm (Sub 20)<br><span style=\\\"color: #ffd700;\\\"><strong>Sheet\\/UOM:<\\/strong><\\/span> 500 sheets<br><span style=\\\"color: #ffd700;\\\"><strong>Size:<\\/strong><\\/span> Legal (216mm x 330mm)<br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Ultra White<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Advance \\\"ink-lock\\\" system<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; 99.99% Jam Free<br>&nbsp;<br><strong>Note:<\\/strong> 5 reams per box<br><br><\\/p>\",\"updated_at\":\"2025-03-11 04:33:27\"}', 9, '2025-03-11 11:33:27', '2025-03-11 11:33:27'),
(22, 'PP-000002', 'edit', '{\"id\":29,\"hidden\":0,\"code\":\"PP-000002\",\"name\":\"Hard Copy Bond Paper A4 (70gsm)\",\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Grammage:<\\/strong><\\/span> 70gsm (Sub 20)<br><span style=\\\"color: #ffd700;\\\"><strong>Sheets\\/UOM:<\\/strong><\\/span> 500 sheets<br><span style=\\\"color: #ffd700;\\\"><strong>Size:<\\/strong><\\/span> A4 (210mm x 297mm)<br><br><strong>Note:<\\/strong> 5 reams per box<\\/p>\",\"brand\":\"Hard Copy\",\"supplier\":\"Hard Copy\",\"unit\":\"ream\",\"unit_price\":\"260.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":2,\"subcategory_id\":2,\"status\":\"Out of stock\",\"available\":\"0.00\",\"needed\":\"100.00\",\"to_buy\":\"100.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":null,\"updated_at\":\"2025-03-11T03:57:01.000000Z\"}', '{\"name\":\"Hard Copy ~ A4 (70gsm)\",\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Grammage:<\\/strong><\\/span> 70gsm (Sub 20)<br><span style=\\\"color: #ffd700;\\\"><strong>Sheets\\/UOM:<\\/strong><\\/span> 500 sheets<br><span style=\\\"color: #ffd700;\\\"><strong>Size:<\\/strong><\\/span> A4 (210mm x 297mm)<br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Ultra White<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Advance \\\"ink-lock\\\" system<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; 99.99% Jam Free<br><br><strong>Note:<\\/strong> 5 reams per box<\\/p>\",\"updated_at\":\"2025-03-11 04:37:08\"}', 9, '2025-03-11 11:37:08', '2025-03-11 11:37:08'),
(23, 'PP-000001', 'edit', '{\"id\":28,\"hidden\":0,\"code\":\"PP-000001\",\"name\":\"Hard Copy ~  Legal (70gsm)\",\"spec\":\"<p><span style=\\\"color: #000000;\\\"><span style=\\\"color: #ffd700;\\\"><strong>Grammage:<\\/strong><\\/span>&nbsp;<\\/span>70gsm (Sub 20)<br><span style=\\\"color: #ffd700;\\\"><strong>Sheet\\/UOM:<\\/strong><\\/span> 500 sheets<br><span style=\\\"color: #ffd700;\\\"><strong>Size:<\\/strong><\\/span> Legal (216mm x 330mm)<br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Ultra White<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Advance \\\"ink-lock\\\" system<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; 99.99% Jam Free<br>&nbsp;<br><strong>Note:<\\/strong> 5 reams per box<br><br><\\/p>\",\"brand\":\"Hard Copy\",\"supplier\":\"Hard Copy\",\"unit\":\"ream\",\"unit_price\":\"260.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":2,\"subcategory_id\":2,\"status\":\"Out of stock\",\"available\":\"0.00\",\"needed\":\"100.00\",\"to_buy\":\"100.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":null,\"updated_at\":\"2025-03-11T04:33:27.000000Z\"}', '{\"spec\":\"<p><span style=\\\"color: #000000;\\\"><span style=\\\"color: #ffd700;\\\"><strong>Grammage:<\\/strong><\\/span>&nbsp;<\\/span>70gsm (Sub 20)<br><span style=\\\"color: #ffd700;\\\"><strong>Sheet\\/UOM:<\\/strong><\\/span> 500 sheets<br><span style=\\\"color: #ffd700;\\\"><strong>Size:<\\/strong><\\/span> Legal (216mm x 330mm)<br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Ultra White<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Advance \\\"ink-lock\\\" system<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; 99.99% Jam Free<br>&nbsp;<br><strong>Note:<\\/strong> 5 reams per box<\\/p>\",\"updated_at\":\"2025-03-11 04:38:08\"}', 9, '2025-03-11 11:38:08', '2025-03-11 11:38:08'),
(24, 'PP-000003', 'edit', '{\"id\":30,\"hidden\":0,\"code\":\"PP-000003\",\"name\":\"Hard Copy Bond Paper Letter (70gsm)\",\"spec\":\"Paper Grammage: (70gsm) Sub 20, 500 sheet per ream (216mm x 279mm)\\/Letter\",\"brand\":\"\",\"supplier\":\"Hard Copy\",\"unit\":\"ream\",\"unit_price\":\"280.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":2,\"subcategory_id\":2,\"status\":\"Out of stock\",\"available\":\"0.00\",\"needed\":\"100.00\",\"to_buy\":\"100.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":null,\"updated_at\":null}', '{\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Grammage:<\\/strong><\\/span> 70gsm (Sub 20)<br><strong><span style=\\\"color: #ffd700;\\\">Sheet\\/UOM:<\\/span><\\/strong> 500 sheet<br><strong><span style=\\\"color: #ffd700;\\\">Size:<\\/span><\\/strong> Letter (216mm x 279mm)<br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Ultra White<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Advance \\\"ink-lock\\\" system<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; 99.99% Jam Free<br><br>Note: 5 reams per box<\\/p>\",\"brand\":\"Hard Copy\",\"updated_at\":\"2025-03-11 04:53:56\"}', 9, '2025-03-11 11:53:56', '2025-03-11 11:53:56'),
(25, 'PP-000003', 'edit', '{\"id\":30,\"hidden\":0,\"code\":\"PP-000003\",\"name\":\"Hard Copy Bond Paper Letter (70gsm)\",\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Grammage:<\\/strong><\\/span> 70gsm (Sub 20)<br><strong><span style=\\\"color: #ffd700;\\\">Sheet\\/UOM:<\\/span><\\/strong> 500 sheet<br><strong><span style=\\\"color: #ffd700;\\\">Size:<\\/span><\\/strong> Letter (216mm x 279mm)<br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Ultra White<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Advance \\\"ink-lock\\\" system<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; 99.99% Jam Free<br><br>Note: 5 reams per box<\\/p>\",\"brand\":\"Hard Copy\",\"supplier\":\"Hard Copy\",\"unit\":\"ream\",\"unit_price\":\"280.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":2,\"subcategory_id\":2,\"status\":\"Out of stock\",\"available\":\"0.00\",\"needed\":\"100.00\",\"to_buy\":\"100.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":null,\"updated_at\":\"2025-03-11T04:53:56.000000Z\"}', '{\"name\":\"Hard Copy ~ Letter (70gsm)\",\"updated_at\":\"2025-03-11 04:54:31\"}', 9, '2025-03-11 11:54:31', '2025-03-11 11:54:31'),
(26, 'PP-000004', 'edit', '{\"id\":31,\"hidden\":0,\"code\":\"PP-000004\",\"name\":\"Hard Copy Bond Paper Legal (80gsm)\",\"spec\":\"Paper Grammage: (80gsm) Sub 24, 500 sheet per ream (216mm x 330mm)\\/Legal\",\"brand\":\"\",\"supplier\":\"Hard Copy\",\"unit\":\"ream\",\"unit_price\":\"280.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":2,\"subcategory_id\":2,\"status\":\"Out of stock\",\"available\":\"0.00\",\"needed\":\"100.00\",\"to_buy\":\"100.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":null,\"updated_at\":null}', '{\"name\":\"Hard Copy ~ Legal (80gsm)\",\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Grammage:<\\/strong><\\/span> 80gsm (Sub 24)<br><strong><span style=\\\"color: #ffd700;\\\">Sheet\\/UOM:<\\/span><\\/strong> 500 sheet<br><strong><span style=\\\"color: #ffd700;\\\">Size:<\\/span><\\/strong> Legal (216mm x 330mm)<br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Ultra White<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Advance \\\"ink-lock\\\" system<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; 99.99% Jam Free<br><br>Note: 5 reams per box<\\/p>\",\"brand\":\"Hard Copy\",\"updated_at\":\"2025-03-11 04:57:30\"}', 9, '2025-03-11 11:57:30', '2025-03-11 11:57:30'),
(27, 'PP-000005', 'edit', '{\"id\":32,\"hidden\":0,\"code\":\"PP-000005\",\"name\":\"Hard Copy Bond Paper A4 (80gsm)\",\"spec\":\"Paper Grammage: (80gsm) Sub 24, 500 sheet per ream (210mm x 297mm)\\/A4\",\"brand\":\"\",\"supplier\":\"Hard Copy\",\"unit\":\"ream\",\"unit_price\":\"280.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":2,\"subcategory_id\":2,\"status\":\"Out of stock\",\"available\":\"0.00\",\"needed\":\"100.00\",\"to_buy\":\"100.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":null,\"updated_at\":null}', '{\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Grammage:<\\/strong><\\/span> 80gsm (Sub 24)<br><strong><span style=\\\"color: #ffd700;\\\">Sheet\\/UOM:<\\/span><\\/strong> 500 sheets<br><strong><span style=\\\"color: #ffd700;\\\">Size:<\\/span><\\/strong> A4 (210mm x 297mm)<br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Ultra White<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Advance \\\"ink-lock\\\" system<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; 99.99% Jam Free<br><br>Note: 5 reams per box<\\/p>\",\"brand\":\"Hard Copy\",\"updated_at\":\"2025-03-11 04:59:21\"}', 9, '2025-03-11 11:59:21', '2025-03-11 11:59:21'),
(28, 'PP-000005', 'edit', '{\"id\":32,\"hidden\":0,\"code\":\"PP-000005\",\"name\":\"Hard Copy Bond Paper A4 (80gsm)\",\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Grammage:<\\/strong><\\/span> 80gsm (Sub 24)<br><strong><span style=\\\"color: #ffd700;\\\">Sheet\\/UOM:<\\/span><\\/strong> 500 sheets<br><strong><span style=\\\"color: #ffd700;\\\">Size:<\\/span><\\/strong> A4 (210mm x 297mm)<br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Ultra White<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Advance \\\"ink-lock\\\" system<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; 99.99% Jam Free<br><br>Note: 5 reams per box<\\/p>\",\"brand\":\"Hard Copy\",\"supplier\":\"Hard Copy\",\"unit\":\"ream\",\"unit_price\":\"280.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":2,\"subcategory_id\":2,\"status\":\"Out of stock\",\"available\":\"0.00\",\"needed\":\"100.00\",\"to_buy\":\"100.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":null,\"updated_at\":\"2025-03-11T04:59:21.000000Z\"}', '{\"name\":\"Hard Copy ~ A4 (80gsm)\",\"updated_at\":\"2025-03-11 04:59:59\"}', 9, '2025-03-11 11:59:59', '2025-03-11 11:59:59'),
(29, 'PP-000003', 'edit', '{\"id\":30,\"hidden\":0,\"code\":\"PP-000003\",\"name\":\"Hard Copy ~ Letter (70gsm)\",\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Grammage:<\\/strong><\\/span> 70gsm (Sub 20)<br><strong><span style=\\\"color: #ffd700;\\\">Sheet\\/UOM:<\\/span><\\/strong> 500 sheet<br><strong><span style=\\\"color: #ffd700;\\\">Size:<\\/span><\\/strong> Letter (216mm x 279mm)<br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Ultra White<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Advance \\\"ink-lock\\\" system<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; 99.99% Jam Free<br><br>Note: 5 reams per box<\\/p>\",\"brand\":\"Hard Copy\",\"supplier\":\"Hard Copy\",\"unit\":\"ream\",\"unit_price\":\"280.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":2,\"subcategory_id\":2,\"status\":\"Out of stock\",\"available\":\"0.00\",\"needed\":\"100.00\",\"to_buy\":\"100.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":null,\"updated_at\":\"2025-03-11T04:54:31.000000Z\"}', '{\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Grammage:<\\/strong><\\/span> 70gsm (Sub 20)<br><strong><span style=\\\"color: #ffd700;\\\">Sheet\\/UOM:<\\/span><\\/strong> 500 sheets<br><strong><span style=\\\"color: #ffd700;\\\">Size:<\\/span><\\/strong> Letter (216mm x 279mm)<br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Ultra White<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Advance \\\"ink-lock\\\" system<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; 99.99% Jam Free<br><br>Note: 5 reams per box<\\/p>\",\"updated_at\":\"2025-03-11 05:01:00\"}', 9, '2025-03-11 12:01:00', '2025-03-11 12:01:00'),
(30, 'PP-000004', 'edit', '{\"id\":31,\"hidden\":0,\"code\":\"PP-000004\",\"name\":\"Hard Copy ~ Legal (80gsm)\",\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Grammage:<\\/strong><\\/span> 80gsm (Sub 24)<br><strong><span style=\\\"color: #ffd700;\\\">Sheet\\/UOM:<\\/span><\\/strong> 500 sheet<br><strong><span style=\\\"color: #ffd700;\\\">Size:<\\/span><\\/strong> Legal (216mm x 330mm)<br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Ultra White<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Advance \\\"ink-lock\\\" system<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; 99.99% Jam Free<br><br>Note: 5 reams per box<\\/p>\",\"brand\":\"Hard Copy\",\"supplier\":\"Hard Copy\",\"unit\":\"ream\",\"unit_price\":\"280.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":2,\"subcategory_id\":2,\"status\":\"Out of stock\",\"available\":\"0.00\",\"needed\":\"100.00\",\"to_buy\":\"100.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":null,\"updated_at\":\"2025-03-11T04:57:30.000000Z\"}', '{\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Grammage:<\\/strong><\\/span> 80gsm (Sub 24)<br><strong><span style=\\\"color: #ffd700;\\\">Sheet\\/UOM:<\\/span><\\/strong> 500 sheets<br><strong><span style=\\\"color: #ffd700;\\\">Size:<\\/span><\\/strong> Legal (216mm x 330mm)<br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Ultra White<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Advance \\\"ink-lock\\\" system<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; 99.99% Jam Free<br><br>Note: 5 reams per box<\\/p>\",\"updated_at\":\"2025-03-11 05:01:16\"}', 9, '2025-03-11 12:01:16', '2025-03-11 12:01:16'),
(31, 'PP-000006', 'edit', '{\"id\":33,\"hidden\":0,\"code\":\"PP-000006\",\"name\":\"Hard Copy Bond Paper Letter (80gsm)\",\"spec\":\"Paper Grammage: (80gsm) Sub 24, 500 sheet per ream (216mm x 279mm)\\/Letter\",\"brand\":\"\",\"supplier\":\"Hard Copy\",\"unit\":\"ream\",\"unit_price\":\"280.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":2,\"subcategory_id\":2,\"status\":\"Out of stock\",\"available\":\"0.00\",\"needed\":\"100.00\",\"to_buy\":\"100.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":null,\"updated_at\":null}', '{\"name\":\"Hard Copy ~ Letter (80gsm)\",\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Grammage:<\\/strong><\\/span> 80gsm (Sub 24)<br><strong><span style=\\\"color: #ffd700;\\\">Sheet\\/UOM:<\\/span><\\/strong> 500 sheets<br><strong><span style=\\\"color: #ffd700;\\\">Size:<\\/span><\\/strong> Letter (216mm x 279mm)<br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Ultra White<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Advance \\\"ink-lock\\\" system<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; 99.99% Jam Free<br><br>Note: 5 reams per box<\\/p>\",\"brand\":\"Hard Copy\",\"updated_at\":\"2025-03-11 05:27:20\"}', 9, '2025-03-11 12:27:20', '2025-03-11 12:27:20'),
(32, 'PP-000007', 'edit', '{\"id\":34,\"hidden\":0,\"code\":\"PP-000007\",\"name\":\"Paper One Bond Paper Legal (70gsm)\",\"spec\":\"Paper Grammage: (70gsm) Sub 20, 500 sheet per ream (216mm x 330mm)\\/Legal\",\"brand\":\"\",\"supplier\":\"Paper One\",\"unit\":\"ream\",\"unit_price\":\"280.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":2,\"subcategory_id\":2,\"status\":\"Out of stock\",\"available\":\"0.00\",\"needed\":\"100.00\",\"to_buy\":\"100.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":null,\"updated_at\":null}', '{\"name\":\"Paper One ~ Legal (70gsm)\",\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Grammage:<\\/strong><\\/span> 70gsm (Sub 20)<br><strong><span style=\\\"color: #ffd700;\\\">Sheet\\/UOM:<\\/span><\\/strong> 500 sheets<br><strong><span style=\\\"color: #ffd700;\\\">Size:<\\/span><\\/strong> Legal (216mm x 330mm)<br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Ultra White<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Advance \\\"ink-lock\\\" system<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; 99.99% Jam Free<br><br>Note: 5 reams per box<\\/p>\",\"brand\":\"Paper One\",\"updated_at\":\"2025-03-11 05:29:17\"}', 9, '2025-03-11 12:29:17', '2025-03-11 12:29:17'),
(33, 'PP-000007', 'edit', '{\"id\":34,\"hidden\":0,\"code\":\"PP-000007\",\"name\":\"Paper One ~ Legal (70gsm)\",\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Grammage:<\\/strong><\\/span> 70gsm (Sub 20)<br><strong><span style=\\\"color: #ffd700;\\\">Sheet\\/UOM:<\\/span><\\/strong> 500 sheets<br><strong><span style=\\\"color: #ffd700;\\\">Size:<\\/span><\\/strong> Legal (216mm x 330mm)<br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Ultra White<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Advance \\\"ink-lock\\\" system<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; 99.99% Jam Free<br><br>Note: 5 reams per box<\\/p>\",\"brand\":\"Paper One\",\"supplier\":\"Paper One\",\"unit\":\"ream\",\"unit_price\":\"280.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":2,\"subcategory_id\":2,\"status\":\"Out of stock\",\"available\":\"0.00\",\"needed\":\"100.00\",\"to_buy\":\"100.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":null,\"updated_at\":\"2025-03-11T05:29:17.000000Z\"}', '{\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Grammage:<\\/strong><\\/span> 70gsm (Sub 20)<br><strong><span style=\\\"color: #ffd700;\\\">Sheet\\/UOM:<\\/span><\\/strong> 500 sheets<br><strong><span style=\\\"color: #ffd700;\\\">Size:<\\/span><\\/strong> Legal (216mm x 330mm)<br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Engineered for laser printers and &nbsp; &nbsp; high-volume copiers<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &radic; Bright white paper<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &radic; High image contrast, clarity and sharpness<br><br>Note: 5 reams per box<\\/p>\",\"updated_at\":\"2025-03-11 05:35:57\"}', 9, '2025-03-11 12:35:57', '2025-03-11 12:35:57'),
(34, 'PP-000007', 'edit', '{\"id\":34,\"hidden\":0,\"code\":\"PP-000007\",\"name\":\"Paper One ~ Legal (70gsm)\",\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Grammage:<\\/strong><\\/span> 70gsm (Sub 20)<br><strong><span style=\\\"color: #ffd700;\\\">Sheet\\/UOM:<\\/span><\\/strong> 500 sheets<br><strong><span style=\\\"color: #ffd700;\\\">Size:<\\/span><\\/strong> Legal (216mm x 330mm)<br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Engineered for laser printers and &nbsp; &nbsp; high-volume copiers<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &radic; Bright white paper<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &radic; High image contrast, clarity and sharpness<br><br>Note: 5 reams per box<\\/p>\",\"brand\":\"Paper One\",\"supplier\":\"Paper One\",\"unit\":\"ream\",\"unit_price\":\"280.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":2,\"subcategory_id\":2,\"status\":\"Out of stock\",\"available\":\"0.00\",\"needed\":\"100.00\",\"to_buy\":\"100.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":null,\"updated_at\":\"2025-03-11T05:35:57.000000Z\"}', '{\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Grammage:<\\/strong><\\/span> 70gsm (Sub 20)<br><strong><span style=\\\"color: #ffd700;\\\">Sheet\\/UOM:<\\/span><\\/strong> 500 sheets<br><strong><span style=\\\"color: #ffd700;\\\">Size:<\\/span><\\/strong> Legal (216mm x 330mm)<br><br>&radic; Engineered for laser printers and high-volume copiers<br>&radic; Bright white paper<br>&radic; High image contrast, clarity and sharpness<br><br>Note: 5 reams per box<\\/p>\",\"updated_at\":\"2025-03-11 05:37:04\"}', 9, '2025-03-11 12:37:04', '2025-03-11 12:37:04'),
(35, 'PP-000008', 'edit', '{\"id\":35,\"hidden\":0,\"code\":\"PP-000008\",\"name\":\"Paper One Bond Paper A4 (70gsm)\",\"spec\":\"Paper Grammage: (70gsm) Sub 20, 500 sheet per ream (210mm x 297mm)\\/A4\",\"brand\":\"\",\"supplier\":\"Paper One\",\"unit\":\"ream\",\"unit_price\":\"280.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":2,\"subcategory_id\":2,\"status\":\"Out of stock\",\"available\":\"0.00\",\"needed\":\"100.00\",\"to_buy\":\"100.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":null,\"updated_at\":null}', '{\"name\":\"Paper One ~ A4 (70gsm)\",\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Grammage:<\\/strong><\\/span> 70gsm (Sub 20)<br><strong><span style=\\\"color: #ffd700;\\\">Sheet\\/UOM:<\\/span><\\/strong> 500 sheets<br><strong><span style=\\\"color: #ffd700;\\\">Size:<\\/span><\\/strong> A4 (210mm x 297mm)<br><br>&radic; Engineered for laser printers and high-volume copiers<br>&radic; Bright white paper<br>&radic; High image contrast, clarity and sharpness<br><br>Note: 5 reams per box<\\/p>\",\"brand\":\"Paper One\",\"updated_at\":\"2025-03-11 05:40:45\"}', 9, '2025-03-11 12:40:45', '2025-03-11 12:40:45'),
(36, 'PP-000009', 'edit', '{\"id\":36,\"hidden\":0,\"code\":\"PP-000009\",\"name\":\"Paper One Bond Paper Letter (70gsm)\",\"spec\":\"Paper Grammage: (70gsm) Sub 20, 500 sheet per ream (216mm x 279mm)\\/Letter\",\"brand\":\"\",\"supplier\":\"Paper One\",\"unit\":\"ream\",\"unit_price\":\"280.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":2,\"subcategory_id\":2,\"status\":\"Out of stock\",\"available\":\"0.00\",\"needed\":\"100.00\",\"to_buy\":\"100.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":null,\"updated_at\":null}', '{\"name\":\"Paper One ~ Letter (70gsm)\",\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Grammage:<\\/strong><\\/span> 70gsm (Sub 20)<br><strong><span style=\\\"color: #ffd700;\\\">Sheet\\/UOM:<\\/span><\\/strong> 500 sheets<br><strong><span style=\\\"color: #ffd700;\\\">Size:<\\/span><\\/strong> Letter (216mm x 279mm)<br><br>&radic; Engineered for laser printers and high-volume copiers<br>&radic; Bright white paper<br>&radic; High image contrast, clarity and sharpness<br><br>Note: 5 reams per box<\\/p>\",\"brand\":\"Paper One\",\"updated_at\":\"2025-03-11 05:41:52\"}', 9, '2025-03-11 12:41:52', '2025-03-11 12:41:52'),
(37, 'PP-000011', 'edit', '{\"id\":38,\"hidden\":0,\"code\":\"PP-000011\",\"name\":\"Paper One Bond Paper A4 (80gsm)\",\"spec\":\"Paper Grammage: (80gsm) Sub 24, 500 sheet per ream (210mm x 297mm)\\/A4\",\"brand\":\"\",\"supplier\":\"Paper One\",\"unit\":\"ream\",\"unit_price\":\"280.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":2,\"subcategory_id\":2,\"status\":\"Out of stock\",\"available\":\"0.00\",\"needed\":\"100.00\",\"to_buy\":\"100.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":null,\"updated_at\":null}', '{\"name\":\"Paper One ~ A4 (80gsm)\",\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Grammage:<\\/strong><\\/span> 80gsm (Sub 24)<br><strong><span style=\\\"color: #ffd700;\\\">Sheet\\/UOM:<\\/span><\\/strong> 500 sheets<br><strong><span style=\\\"color: #ffd700;\\\">Size:<\\/span><\\/strong> A4 (210mm x 297mm)<br><br>&radic; Environmentally Friendly &ndash; 100% renewable plantation fiber<br>&radic; High thickness &ndash; Enables superb duplex (double-sided) printing with great paper feel<br>&radic; High opacity &ndash; No show-through<br>&radic; High whiteness &ndash; Great print contrast and clarity<br>&radic; High smoothness &ndash; Sharp, crisp and clear print quality with silky paper feel<br>&radic; &nbsp;Precision cut edges &ndash; Trouble-free performance, jam-free<br>&radic; User friendly box &ndash; Built-in handles for easy carrying, perforated tear strip for ease of access to reams, and unprinted lined area for labeling.<br>&radic; ProDigi Nanotechnology &ndash; Enhanced surface technology for better color inkjet\\/laser printing<br><br>Note: 5 reams per box<\\/p>\",\"brand\":\"Paper One\",\"updated_at\":\"2025-03-11 05:46:40\"}', 9, '2025-03-11 12:46:40', '2025-03-11 12:46:40'),
(38, 'PP-000012', 'edit', '{\"id\":39,\"hidden\":0,\"code\":\"PP-000012\",\"name\":\"Paper One Bond Paper Letter (80gsm)\",\"spec\":\"Paper Grammage: (80gsm) Sub 24, 500 sheet per ream (216mm x 279mm)\\/Letter\",\"brand\":\"\",\"supplier\":\"Paper One\",\"unit\":\"ream\",\"unit_price\":\"280.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":2,\"subcategory_id\":2,\"status\":\"Out of stock\",\"available\":\"0.00\",\"needed\":\"100.00\",\"to_buy\":\"100.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":null,\"updated_at\":null}', '{\"name\":\"Paper One ~ Letter (80gsm)\",\"spec\":\"<p>Paper Grammage: (80gsm) Sub 24, 500 sheet per ream (216mm x 279mm)\\/Letter<br><br><br><\\/p>\",\"brand\":\"Paper One\",\"updated_at\":\"2025-03-11 05:53:58\"}', 9, '2025-03-11 12:53:58', '2025-03-11 12:53:58'),
(39, 'PP-000012', 'edit', '{\"id\":39,\"hidden\":0,\"code\":\"PP-000012\",\"name\":\"Paper One ~ Letter (80gsm)\",\"spec\":\"<p>Paper Grammage: (80gsm) Sub 24, 500 sheet per ream (216mm x 279mm)\\/Letter<br><br><br><\\/p>\",\"brand\":\"Paper One\",\"supplier\":\"Paper One\",\"unit\":\"ream\",\"unit_price\":\"280.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":2,\"subcategory_id\":2,\"status\":\"Out of stock\",\"available\":\"0.00\",\"needed\":\"100.00\",\"to_buy\":\"100.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":null,\"updated_at\":\"2025-03-11T05:53:58.000000Z\"}', '{\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Grammage:<\\/strong><\\/span> 80gsm (Sub 24)<br><strong><span style=\\\"color: #ffd700;\\\">Sheet\\/UOM:<\\/span><\\/strong> 500 sheets<br><strong><span style=\\\"color: #ffd700;\\\">Size:<\\/span><\\/strong> Letter (216mm x 279mm)<br><br>&radic; Environmentally Friendly &ndash; 100% renewable plantation fiber<br>&radic; High thickness &ndash; Enables superb duplex (double-sided) printing with great paper feel<br>&radic; High opacity &ndash; No show-through<br>&radic; High whiteness &ndash; Great print contrast and clarity<br>&radic; High smoothness &ndash; Sharp, crisp and clear print quality with silky paper feel<br>&radic; &nbsp;Precision cut edges &ndash; Trouble-free performance, jam-free<br>&radic; User friendly box &ndash; Built-in handles for easy carrying, perforated tear strip for ease of access to reams, and unprinted lined area for labeling.<br>&radic; ProDigi Nanotechnology &ndash; Enhanced surface technology for better color inkjet\\/laser printing<br><br>Note: 5 reams per box<\\/p>\",\"updated_at\":\"2025-03-11 05:57:52\"}', 9, '2025-03-11 12:57:52', '2025-03-11 12:57:52'),
(40, 'PP-000010', 'edit', '{\"id\":37,\"hidden\":0,\"code\":\"PP-000010\",\"name\":\"Paper One Bond Paper Legal (80gsm)\",\"spec\":\"Paper Grammage: (80gsm) Sub 24, 500 sheet per ream (216mm x 330mm)\\/Legal\",\"brand\":\"\",\"supplier\":\"Paper One\",\"unit\":\"ream\",\"unit_price\":\"280.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":2,\"subcategory_id\":2,\"status\":\"Out of stock\",\"available\":\"0.00\",\"needed\":\"100.00\",\"to_buy\":\"100.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":null,\"updated_at\":null}', '{\"name\":\"Paper One ~ Legal (80gsm)\",\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Grammage:<\\/strong><\\/span> 80gsm (Sub 24)<br><strong><span style=\\\"color: #ffd700;\\\">Sheet\\/UOM:<\\/span><\\/strong> 500 sheets<br><strong><span style=\\\"color: #ffd700;\\\">Size:<\\/span><\\/strong> Legal (216mm x 330mm)<br><br>&radic; Environmentally Friendly &ndash; 100% renewable plantation fiber<br>&radic; High thickness &ndash; Enables superb duplex (double-sided) printing with great paper feel<br>&radic; High opacity &ndash; No show-through<br>&radic; High whiteness &ndash; Great print contrast and clarity<br>&radic; High smoothness &ndash; Sharp, crisp and clear print quality with silky paper feel<br>&radic; &nbsp;Precision cut edges &ndash; Trouble-free performance, jam-free<br>&radic; User friendly box &ndash; Built-in handles for easy carrying, perforated tear strip for ease of access to reams, and unprinted lined area for labeling.<br>&radic; ProDigi Nanotechnology &ndash; Enhanced surface technology for better color inkjet\\/laser printing<br><br>Note: 5 reams per box<\\/p>\",\"brand\":\"Paper One\",\"updated_at\":\"2025-03-11 05:59:30\"}', 9, '2025-03-11 12:59:30', '2025-03-11 12:59:30'),
(41, 'CM-000001', 'edit', '{\"id\":53,\"hidden\":0,\"code\":\"CM-000001\",\"name\":\"GLADE AIR FRESHNER 320ML - FLORAL PERFECTION\",\"spec\":\"320ML - FLORAL PERFECTION\",\"brand\":\"Glade\",\"supplier\":\"P-Lim Trading\",\"unit\":\"bottle\",\"unit_price\":\"286.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":6,\"subcategory_id\":14,\"status\":\"in stock\",\"available\":\"50.00\",\"needed\":\"100.00\",\"to_buy\":\"50.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":\"2025-01-31T05:20:20.000000Z\",\"updated_at\":\"2025-01-31T05:22:00.000000Z\"}', '{\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Net Content:<\\/strong><\\/span> 320ML -&nbsp;<br><strong><span style=\\\"color: #ffd700;\\\">Fragrance\\/Scent:<\\/span><\\/strong> Floral Perfection<\\/p>\",\"updated_at\":\"2025-03-11 06:07:02\"}', 9, '2025-03-11 13:07:02', '2025-03-11 13:07:02'),
(42, 'CM-000001', 'edit', '{\"id\":53,\"hidden\":0,\"code\":\"CM-000001\",\"name\":\"GLADE AIR FRESHNER 320ML - FLORAL PERFECTION\",\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Net Content:<\\/strong><\\/span> 320ML -&nbsp;<br><strong><span style=\\\"color: #ffd700;\\\">Fragrance\\/Scent:<\\/span><\\/strong> Floral Perfection<\\/p>\",\"brand\":\"Glade\",\"supplier\":\"P-Lim Trading\",\"unit\":\"bottle\",\"unit_price\":\"286.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":6,\"subcategory_id\":14,\"status\":\"in stock\",\"available\":\"50.00\",\"needed\":\"100.00\",\"to_buy\":\"50.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":\"2025-01-31T05:20:20.000000Z\",\"updated_at\":\"2025-03-11T06:07:02.000000Z\"}', '{\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Net Content:<\\/strong><\\/span> 320ML<br><strong><span style=\\\"color: #ffd700;\\\">Fragrance\\/Scent:<\\/span><\\/strong> Floral Perfection<\\/p>\",\"updated_at\":\"2025-03-11 06:09:45\"}', 9, '2025-03-11 13:09:45', '2025-03-11 13:09:45');
INSERT INTO `prod_logs` (`id`, `product_code`, `action`, `old_values`, `new_values`, `user_id`, `created_at`, `updated_at`) VALUES
(43, 'CM-000002', 'edit', '{\"id\":54,\"hidden\":0,\"code\":\"CM-000002\",\"name\":\"GLADE AIR FRESHNER 320ML - JASMINE\",\"spec\":\"AIR FRESHNER 320ML - JASMINE\",\"brand\":\"Glade\",\"supplier\":\"P-Lim Trading\",\"unit\":\"bottle\",\"unit_price\":\"286.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":6,\"subcategory_id\":14,\"status\":\"In Stock\",\"available\":\"50.00\",\"needed\":\"100.00\",\"to_buy\":\"50.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":\"2025-01-31T05:43:05.000000Z\",\"updated_at\":\"2025-01-31T05:43:05.000000Z\"}', '{\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Net Content:<\\/strong><\\/span> 320ML<br><span style=\\\"color: #ffd700;\\\"><strong>Fragrance\\/Scent:<\\/strong><\\/span> Jasmine<\\/p>\",\"updated_at\":\"2025-03-11 06:13:09\"}', 9, '2025-03-11 13:13:09', '2025-03-11 13:13:09'),
(44, 'CM-000003', 'edit', '{\"id\":55,\"hidden\":0,\"code\":\"CM-000003\",\"name\":\"GLADE AIR FRESHNER 320ML - LAVENDER\",\"spec\":\"AIR FRESHNER 320ML - LAVENDER\",\"brand\":\"Glade\",\"supplier\":\"P-Lim Trading\",\"unit\":\"bottle\",\"unit_price\":\"286.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":6,\"subcategory_id\":14,\"status\":\"In Stock\",\"available\":\"50.00\",\"needed\":\"100.00\",\"to_buy\":\"50.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":\"2025-01-31T05:48:38.000000Z\",\"updated_at\":\"2025-01-31T05:48:38.000000Z\"}', '{\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Net Content:<\\/strong><\\/span> 320ML<br><span style=\\\"color: #ffd700;\\\"><strong>Fragrance\\/Scent: <\\/strong><\\/span>Lavender<\\/p>\",\"updated_at\":\"2025-03-11 06:16:45\"}', 9, '2025-03-11 13:16:45', '2025-03-11 13:16:45'),
(45, 'CM-000004', 'edit', '{\"id\":56,\"hidden\":0,\"code\":\"CM-000004\",\"name\":\"GLADE AIR FRESHNER 320ML - LEMON\",\"spec\":\"AIR FRESHNER 320ML - LEMON\",\"brand\":\"Glade\",\"supplier\":\"P-Lim Trading\",\"unit\":\"bottle\",\"unit_price\":\"286.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":6,\"subcategory_id\":14,\"status\":\"In Stock\",\"available\":\"50.00\",\"needed\":\"100.00\",\"to_buy\":\"50.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":\"2025-01-31T05:51:08.000000Z\",\"updated_at\":\"2025-01-31T05:51:08.000000Z\"}', '{\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Net Content: <\\/strong><\\/span>320ML<br><span style=\\\"color: #ffd700;\\\"><strong>Fragrance\\/Scent:<\\/strong><\\/span> Lemon<\\/p>\",\"updated_at\":\"2025-03-11 06:18:26\"}', 9, '2025-03-11 13:18:26', '2025-03-11 13:18:26'),
(46, 'CM-000005', 'edit', '{\"id\":57,\"hidden\":0,\"code\":\"CM-000005\",\"name\":\"GLADE AIR FRESHNER 320ML - MORNING FRESHNESS\",\"spec\":\"AIR FRESHNER 320ML - MORNING FRESHNESS\",\"brand\":\"Glade\",\"supplier\":\"P-Lim Trading\",\"unit\":\"bottle\",\"unit_price\":\"286.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":6,\"subcategory_id\":14,\"status\":\"In Stock\",\"available\":\"50.00\",\"needed\":\"100.00\",\"to_buy\":\"50.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":\"2025-01-31T05:56:02.000000Z\",\"updated_at\":\"2025-01-31T05:56:02.000000Z\"}', '{\"hidden\":\"1\",\"updated_at\":\"2025-03-11 06:19:55\"}', 9, '2025-03-11 13:19:55', '2025-03-11 13:19:55'),
(47, 'CM-000005', 'delete', '{\"id\":57,\"hidden\":1,\"code\":\"CM-000005\",\"name\":\"GLADE AIR FRESHNER 320ML - MORNING FRESHNESS\",\"spec\":\"AIR FRESHNER 320ML - MORNING FRESHNESS\",\"brand\":\"Glade\",\"supplier\":\"P-Lim Trading\",\"unit\":\"bottle\",\"unit_price\":\"286.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":6,\"subcategory_id\":14,\"status\":\"In Stock\",\"available\":\"50.00\",\"needed\":\"100.00\",\"to_buy\":\"50.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":\"2025-01-31T05:56:02.000000Z\",\"updated_at\":\"2025-03-11T06:19:55.000000Z\"}', NULL, 9, '2025-03-11 13:20:19', '2025-03-11 13:20:19'),
(48, 'CM-000005', 'edit', '{\"id\":58,\"hidden\":0,\"code\":\"CM-000005\",\"name\":\"GLADE AIR FRESHNER 320ML - MORNING FRESHNESS\",\"spec\":\"AIR FRESHNER 320ML - MORNING FRESHNESS\",\"brand\":\"Glade\",\"supplier\":\"P-Lim Trading\",\"unit\":\"bottle\",\"unit_price\":\"286.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":6,\"subcategory_id\":14,\"status\":\"In Stock\",\"available\":\"50.00\",\"needed\":\"100.00\",\"to_buy\":\"50.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":\"2025-02-01T06:24:50.000000Z\",\"updated_at\":\"2025-02-01T06:24:50.000000Z\"}', '{\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Net Content:&nbsp;<\\/strong><\\/span>320ML<br><span style=\\\"color: #ffd700;\\\"><strong>Fragrance\\/Scent:<\\/strong><\\/span> Morning Freshness<\\/p>\",\"updated_at\":\"2025-03-11 06:21:01\"}', 9, '2025-03-11 13:21:01', '2025-03-11 13:21:01'),
(49, 'CM-000006', 'edit', '{\"id\":59,\"hidden\":0,\"code\":\"CM-000006\",\"name\":\"GLADE AIR FRESHNER 320ML - ORANGE SQUEEZE\",\"spec\":\"AIR FRESHNER 320ML - ORANGE SQUEEZE\",\"brand\":\"Glade\",\"supplier\":\"P-Lim Trading\",\"unit\":\"bottle\",\"unit_price\":\"286.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":6,\"subcategory_id\":14,\"status\":\"In Stock\",\"available\":\"50.00\",\"needed\":\"100.00\",\"to_buy\":\"50.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":\"2025-02-01T06:26:50.000000Z\",\"updated_at\":\"2025-02-01T06:26:50.000000Z\"}', '{\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Net Content:&nbsp;<\\/strong><\\/span>320ML<br><span style=\\\"color: #ffd700;\\\"><strong>Fragrance\\/Scent:<\\/strong><\\/span> Orange Squeeze<\\/p>\",\"updated_at\":\"2025-03-11 06:21:34\"}', 9, '2025-03-11 13:21:34', '2025-03-11 13:21:34'),
(50, 'CM-000007', 'edit', '{\"id\":60,\"hidden\":0,\"code\":\"CM-000007\",\"name\":\"GLADE AIR FRESHNER 320ML - SAKURA & WATERLILY\",\"spec\":\"AIR FRESHNER 320ML - SAKURA & WATERLILY\",\"brand\":\"Glade\",\"supplier\":\"p-Lim Trading\",\"unit\":\"bottle\",\"unit_price\":\"286.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":6,\"subcategory_id\":14,\"status\":\"In Stock\",\"available\":\"50.00\",\"needed\":\"100.00\",\"to_buy\":\"50.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":\"2025-02-01T06:28:58.000000Z\",\"updated_at\":\"2025-02-01T06:28:58.000000Z\"}', '{\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Net Content:&nbsp;<\\/strong><\\/span>320ML<br><span style=\\\"color: #ffd700;\\\"><strong>Fragrance\\/Scent:<\\/strong><\\/span> Sakura &amp; Waterlily<\\/p>\",\"updated_at\":\"2025-03-11 06:22:22\"}', 9, '2025-03-11 13:22:22', '2025-03-11 13:22:22'),
(51, 'CM-000008', 'edit', '{\"id\":61,\"hidden\":0,\"code\":\"CM-000008\",\"name\":\"GLADE SCENTED GEL 200G LAVENDER\",\"spec\":\"SCENTED GEL 200G LAVENDER\",\"brand\":\"Glade\",\"supplier\":\"P-Lim Trading\",\"unit\":\"piece\",\"unit_price\":\"227.50\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":6,\"subcategory_id\":14,\"status\":\"In Stock\",\"available\":\"50.00\",\"needed\":\"100.00\",\"to_buy\":\"50.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":\"2025-02-01T06:34:52.000000Z\",\"updated_at\":\"2025-02-01T06:34:52.000000Z\"}', '{\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Net Content:&nbsp;<\\/strong><\\/span>200g<br><span style=\\\"color: #ffd700;\\\"><strong>Fragrance\\/Scent:<\\/strong><\\/span> Lavender<\\/p>\",\"updated_at\":\"2025-03-11 07:20:31\"}', 9, '2025-03-11 14:20:31', '2025-03-11 14:20:31'),
(52, 'CM-000009', 'edit', '{\"id\":62,\"hidden\":0,\"code\":\"CM-000009\",\"name\":\"GLADE SCENTED GEL 200G LEMON\",\"spec\":\"SCENTED GEL 200G LEMON\",\"brand\":\"Glade\",\"supplier\":\"p-Lim Trading\",\"unit\":\"piece\",\"unit_price\":\"227.50\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":6,\"subcategory_id\":14,\"status\":\"In Stock\",\"available\":\"50.00\",\"needed\":\"100.00\",\"to_buy\":\"50.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":\"2025-02-01T06:39:01.000000Z\",\"updated_at\":\"2025-02-01T06:39:01.000000Z\"}', '{\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Net Content:&nbsp;<\\/strong><\\/span>200g<br><span style=\\\"color: #ffd700;\\\"><strong>Fragrance\\/Scent:<\\/strong><\\/span> Lemon<\\/p>\",\"updated_at\":\"2025-03-11 07:21:50\"}', 9, '2025-03-11 14:21:50', '2025-03-11 14:21:50'),
(53, 'CM-000010', 'edit', '{\"id\":63,\"hidden\":0,\"code\":\"CM-000010\",\"name\":\"CLEENE ETHYL ALCOHOL 70% 500ML\",\"spec\":\"ETHYL ALCOHOL 70% 500ML\",\"brand\":\"CLEENE\",\"supplier\":\"p-Lim Trading\",\"unit\":\"bottle\",\"unit_price\":\"117.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":6,\"subcategory_id\":15,\"status\":\"In Stock\",\"available\":\"50.00\",\"needed\":\"100.00\",\"to_buy\":\"50.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":\"2025-02-02T07:23:16.000000Z\",\"updated_at\":\"2025-02-02T07:27:03.000000Z\"}', '{\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Net Content:<\\/strong><\\/span> 500ml<br><span style=\\\"color: #ffd700;\\\"><strong>Active Ingredient:<\\/strong><\\/span> Ethyl Alcohol 70%<br><strong><span style=\\\"color: #ffd700;\\\">Formulation Type:<\\/span><\\/strong> Antiseptic Disinfectant<\\/p>\",\"updated_at\":\"2025-03-11 07:25:45\"}', 9, '2025-03-11 14:25:45', '2025-03-11 14:25:45'),
(54, 'CM-000011', 'edit', '{\"id\":64,\"hidden\":0,\"code\":\"CM-000011\",\"name\":\"GREEN CROSS ISOPROPYL ALCOHOL  500 ML 70%\",\"spec\":\"ISOPROPYL ALCOHOL  500 ML 70%\",\"brand\":\"Green Cross\",\"supplier\":\"P-Lim Trading\",\"unit\":\"bottle\",\"unit_price\":\"119.60\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":6,\"subcategory_id\":15,\"status\":\"In Stock\",\"available\":\"50.00\",\"needed\":\"100.00\",\"to_buy\":\"50.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":\"2025-02-02T07:26:20.000000Z\",\"updated_at\":\"2025-02-02T07:26:20.000000Z\"}', '{\"spec\":\"<p><strong><span style=\\\"color: #ffd700;\\\">Net Content:<\\/span><\\/strong> 500ml<br><span style=\\\"color: #ffd700;\\\"><strong>Active Ingredient:<\\/strong><\\/span> Isopropyl Alcohol 70%<br><strong><span style=\\\"color: #ffd700;\\\">Variant:<\\/span><\\/strong> w\\/ Moisturizer<br><span style=\\\"color: #ffd700;\\\"><strong>Type:<\\/strong><\\/span> Antiseptic, Disinfectant<\\/p>\",\"updated_at\":\"2025-03-11 07:30:59\"}', 9, '2025-03-11 14:30:59', '2025-03-11 14:30:59'),
(55, 'CM-000012', 'edit', '{\"id\":70,\"hidden\":0,\"code\":\"CM-000012\",\"name\":\"GARBAGE BAG 18\\\"X18\\\" - BLACK 100`S (SMALL)\",\"spec\":\"18\\\"X18\\\" - BLACK 100`S (SMALL)\",\"brand\":\"Generic\",\"supplier\":\"P-Lim Trading\",\"unit\":\"pack\",\"unit_price\":\"123.50\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":6,\"subcategory_id\":18,\"status\":\"In Stock\",\"available\":\"50.00\",\"needed\":\"100.00\",\"to_buy\":\"50.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":\"2025-02-02T07:50:03.000000Z\",\"updated_at\":\"2025-02-02T07:50:03.000000Z\"}', '{\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong data-start=\\\"87\\\" data-end=\\\"96\\\">Size:<\\/strong><\\/span> 18\\\" x 18\\\"<br><span style=\\\"color: #ffd700;\\\"><strong data-start=\\\"135\\\" data-end=\\\"145\\\">Color:<\\/strong><\\/span> Black<br><span style=\\\"color: #ffd700;\\\"><strong data-start=\\\"156\\\" data-end=\\\"169\\\">Qty\\/UOM:<\\/strong><\\/span> 100&rsquo;s<br><span style=\\\"color: #ffd700;\\\"><strong data-start=\\\"208\\\" data-end=\\\"227\\\">Classification:<\\/strong><\\/span> Small<\\/p>\",\"updated_at\":\"2025-03-11 07:34:46\"}', 9, '2025-03-11 14:34:46', '2025-03-11 14:34:46'),
(56, 'CM-000012', 'edit', '{\"id\":70,\"hidden\":0,\"code\":\"CM-000012\",\"name\":\"GARBAGE BAG 18\\\"X18\\\" - BLACK 100`S (SMALL)\",\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong data-start=\\\"87\\\" data-end=\\\"96\\\">Size:<\\/strong><\\/span> 18\\\" x 18\\\"<br><span style=\\\"color: #ffd700;\\\"><strong data-start=\\\"135\\\" data-end=\\\"145\\\">Color:<\\/strong><\\/span> Black<br><span style=\\\"color: #ffd700;\\\"><strong data-start=\\\"156\\\" data-end=\\\"169\\\">Qty\\/UOM:<\\/strong><\\/span> 100&rsquo;s<br><span style=\\\"color: #ffd700;\\\"><strong data-start=\\\"208\\\" data-end=\\\"227\\\">Classification:<\\/strong><\\/span> Small<\\/p>\",\"brand\":\"Generic\",\"supplier\":\"P-Lim Trading\",\"unit\":\"pack\",\"unit_price\":\"123.50\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":6,\"subcategory_id\":18,\"status\":\"In Stock\",\"available\":\"50.00\",\"needed\":\"100.00\",\"to_buy\":\"50.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":\"2025-02-02T07:50:03.000000Z\",\"updated_at\":\"2025-03-11T07:34:46.000000Z\"}', '{\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong data-start=\\\"87\\\" data-end=\\\"96\\\">Size:<\\/strong><\\/span> 18\\\" x 18\\\"<br><span style=\\\"color: #ffd700;\\\"><strong data-start=\\\"135\\\" data-end=\\\"145\\\">Color:<\\/strong><\\/span> Black<br><span style=\\\"color: #ffd700;\\\"><strong data-start=\\\"208\\\" data-end=\\\"227\\\">Classification:<\\/strong><\\/span> Small<\\/p>\",\"pcs_unit\":\"100\",\"updated_at\":\"2025-03-11 07:36:33\"}', 9, '2025-03-11 14:36:33', '2025-03-11 14:36:33'),
(57, 'CM-000013', 'edit', '{\"id\":75,\"hidden\":0,\"code\":\"CM-000013\",\"name\":\"GARBAGE BAG 18\\\"X18\\\" -TRANSPARENT 100`S (SMALL)\",\"spec\":\"18\\\"X18\\\" -TRANSPARENT 100`S (SMALL)\",\"brand\":\"Generic\",\"supplier\":\"P-Lim Trading\",\"unit\":\"pack\",\"unit_price\":\"143.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":6,\"subcategory_id\":18,\"status\":\"In stock\",\"available\":\"50.00\",\"needed\":\"100.00\",\"to_buy\":\"50.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":\"2025-02-02T08:03:50.000000Z\",\"updated_at\":\"2025-02-02T08:03:50.000000Z\"}', '{\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong data-start=\\\"87\\\" data-end=\\\"96\\\">Size:<\\/strong><\\/span> 18\\\" x 18\\\"<br><span style=\\\"color: #ffd700;\\\"><strong data-start=\\\"135\\\" data-end=\\\"145\\\">Color:<\\/strong><\\/span> Transparent<br><span style=\\\"color: #ffd700;\\\"><strong data-start=\\\"208\\\" data-end=\\\"227\\\">Classification:<\\/strong><\\/span> Small<\\/p>\",\"pcs_unit\":\"100\",\"updated_at\":\"2025-03-11 07:53:35\"}', 9, '2025-03-11 14:53:35', '2025-03-11 14:53:35'),
(58, 'CM-000014', 'edit', '{\"id\":71,\"hidden\":0,\"code\":\"CM-000014\",\"name\":\"GARBAGE BAG 22\\\"X24\\\" - BLACK 100`S (MEDIUM)\",\"spec\":\"22\\\"X24\\\" - BLACK 100`S (MEDIUM)\",\"brand\":\"Generic\",\"supplier\":\"p-Lim Trading\",\"unit\":\"pack\",\"unit_price\":\"208.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":6,\"subcategory_id\":18,\"status\":\"In Stock\",\"available\":\"50.00\",\"needed\":\"100.00\",\"to_buy\":\"50.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":\"2025-02-02T07:51:16.000000Z\",\"updated_at\":\"2025-02-02T07:51:16.000000Z\"}', '{\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong data-start=\\\"87\\\" data-end=\\\"96\\\">Size:<\\/strong><\\/span> 22\\\" x 24\\\"<br><span style=\\\"color: #ffd700;\\\"><strong data-start=\\\"135\\\" data-end=\\\"145\\\">Color:<\\/strong><\\/span> Black<br><span style=\\\"color: #ffd700;\\\"><strong data-start=\\\"208\\\" data-end=\\\"227\\\">Classification:<\\/strong><\\/span> Medium<\\/p>\",\"updated_at\":\"2025-03-11 08:11:18\"}', 9, '2025-03-11 15:11:18', '2025-03-11 15:11:18'),
(59, 'CM-000014', 'edit', '{\"id\":71,\"hidden\":0,\"code\":\"CM-000014\",\"name\":\"GARBAGE BAG 22\\\"X24\\\" - BLACK 100`S (MEDIUM)\",\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong data-start=\\\"87\\\" data-end=\\\"96\\\">Size:<\\/strong><\\/span> 22\\\" x 24\\\"<br><span style=\\\"color: #ffd700;\\\"><strong data-start=\\\"135\\\" data-end=\\\"145\\\">Color:<\\/strong><\\/span> Black<br><span style=\\\"color: #ffd700;\\\"><strong data-start=\\\"208\\\" data-end=\\\"227\\\">Classification:<\\/strong><\\/span> Medium<\\/p>\",\"brand\":\"Generic\",\"supplier\":\"p-Lim Trading\",\"unit\":\"pack\",\"unit_price\":\"208.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":6,\"subcategory_id\":18,\"status\":\"In Stock\",\"available\":\"50.00\",\"needed\":\"100.00\",\"to_buy\":\"50.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":\"2025-02-02T07:51:16.000000Z\",\"updated_at\":\"2025-03-11T08:11:18.000000Z\"}', '{\"pcs_unit\":\"100\",\"updated_at\":\"2025-03-11 08:11:48\"}', 9, '2025-03-11 15:11:48', '2025-03-11 15:11:48'),
(60, 'AC-000003', 'edit', '{\"id\":65,\"hidden\":0,\"code\":\"AC-000003\",\"name\":\"MEGA\\/RAMBO YARN THREAD 12S - VIOLET\",\"spec\":\"YARN THREAD 12S - VIOLET\",\"brand\":\"Mega\\/Rambo\\/Estambre\",\"supplier\":\"P-Lim Trading\",\"unit\":\"pack\",\"unit_price\":\"97.50\",\"pcs_unit\":12,\"value_ratio\":\"8.13\",\"service_id\":1,\"category_id\":8,\"subcategory_id\":16,\"status\":\"In Stock\",\"available\":\"50.00\",\"needed\":\"100.00\",\"to_buy\":\"50.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":\"2025-02-02T07:34:00.000000Z\",\"updated_at\":\"2025-03-07T01:29:04.000000Z\"}', '{\"hidden\":\"1\",\"updated_at\":\"2025-03-12 04:24:23\"}', 2, '2025-03-12 11:24:23', '2025-03-12 11:24:23'),
(61, 'AC-000003', 'edit', '{\"id\":65,\"hidden\":1,\"code\":\"AC-000003\",\"name\":\"MEGA\\/RAMBO YARN THREAD 12S - VIOLET\",\"spec\":\"YARN THREAD 12S - VIOLET\",\"brand\":\"Mega\\/Rambo\\/Estambre\",\"supplier\":\"P-Lim Trading\",\"unit\":\"pack\",\"unit_price\":\"97.50\",\"pcs_unit\":12,\"value_ratio\":\"8.13\",\"service_id\":1,\"category_id\":8,\"subcategory_id\":16,\"status\":\"In Stock\",\"available\":\"50.00\",\"needed\":\"100.00\",\"to_buy\":\"50.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":\"2025-02-02T07:34:00.000000Z\",\"updated_at\":\"2025-03-12T04:24:23.000000Z\"}', '{\"hidden\":\"0\",\"updated_at\":\"2025-03-12 04:24:34\"}', 2, '2025-03-12 11:24:34', '2025-03-12 11:24:34'),
(62, 'PP-000010', 'edit', '{\"id\":37,\"hidden\":0,\"code\":\"PP-000010\",\"name\":\"Paper One ~ Legal (80gsm)\",\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Grammage:<\\/strong><\\/span> 80gsm (Sub 24)<br><strong><span style=\\\"color: #ffd700;\\\">Sheet\\/UOM:<\\/span><\\/strong> 500 sheets<br><strong><span style=\\\"color: #ffd700;\\\">Size:<\\/span><\\/strong> Legal (216mm x 330mm)<br><br>&radic; Environmentally Friendly &ndash; 100% renewable plantation fiber<br>&radic; High thickness &ndash; Enables superb duplex (double-sided) printing with great paper feel<br>&radic; High opacity &ndash; No show-through<br>&radic; High whiteness &ndash; Great print contrast and clarity<br>&radic; High smoothness &ndash; Sharp, crisp and clear print quality with silky paper feel<br>&radic; &nbsp;Precision cut edges &ndash; Trouble-free performance, jam-free<br>&radic; User friendly box &ndash; Built-in handles for easy carrying, perforated tear strip for ease of access to reams, and unprinted lined area for labeling.<br>&radic; ProDigi Nanotechnology &ndash; Enhanced surface technology for better color inkjet\\/laser printing<br><br>Note: 5 reams per box<\\/p>\",\"brand\":\"Paper One\",\"supplier\":\"Paper One\",\"unit\":\"ream\",\"unit_price\":\"280.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":2,\"subcategory_id\":2,\"status\":\"Out of stock\",\"available\":\"0.00\",\"needed\":\"100.00\",\"to_buy\":\"100.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":null,\"updated_at\":\"2025-03-11T05:59:30.000000Z\"}', '{\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Grammage:<\\/strong><\\/span> 80gsm (Sub 24)<br><strong><span style=\\\"color: #ffd700;\\\">Sheet\\/UOM:<\\/span><\\/strong> 500 sheets<br><strong><span style=\\\"color: #ffd700;\\\">Size:<\\/span><\\/strong> Legal (216mm x 330mm)<br><br>&radic; Environmentally Friendly, &radic; High thickness, &radic; High opacity, &radic; High whiteness, &radic; High smoothness, &radic; &nbsp;Precision cut edges &ndash; Trouble-free performance, jam-free, &radic; User friendly box, &radic; ProDigi Nanotechnology<br><br>Note: 5 reams per box<\\/p>\",\"updated_at\":\"2025-03-12 11:34:44\"}', 3, '2025-03-12 18:34:44', '2025-03-12 18:34:44'),
(63, 'PP-000011', 'edit', '{\"id\":38,\"hidden\":0,\"code\":\"PP-000011\",\"name\":\"Paper One ~ A4 (80gsm)\",\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Grammage:<\\/strong><\\/span> 80gsm (Sub 24)<br><strong><span style=\\\"color: #ffd700;\\\">Sheet\\/UOM:<\\/span><\\/strong> 500 sheets<br><strong><span style=\\\"color: #ffd700;\\\">Size:<\\/span><\\/strong> A4 (210mm x 297mm)<br><br>&radic; Environmentally Friendly &ndash; 100% renewable plantation fiber<br>&radic; High thickness &ndash; Enables superb duplex (double-sided) printing with great paper feel<br>&radic; High opacity &ndash; No show-through<br>&radic; High whiteness &ndash; Great print contrast and clarity<br>&radic; High smoothness &ndash; Sharp, crisp and clear print quality with silky paper feel<br>&radic; &nbsp;Precision cut edges &ndash; Trouble-free performance, jam-free<br>&radic; User friendly box &ndash; Built-in handles for easy carrying, perforated tear strip for ease of access to reams, and unprinted lined area for labeling.<br>&radic; ProDigi Nanotechnology &ndash; Enhanced surface technology for better color inkjet\\/laser printing<br><br>Note: 5 reams per box<\\/p>\",\"brand\":\"Paper One\",\"supplier\":\"Paper One\",\"unit\":\"ream\",\"unit_price\":\"280.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":2,\"subcategory_id\":2,\"status\":\"Out of stock\",\"available\":\"0.00\",\"needed\":\"100.00\",\"to_buy\":\"100.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":null,\"updated_at\":\"2025-03-11T05:46:40.000000Z\"}', '{\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Grammage:<\\/strong><\\/span> 80gsm (Sub 24)<br><strong><span style=\\\"color: #ffd700;\\\">Sheet\\/UOM:<\\/span><\\/strong> 500 sheets<br><strong><span style=\\\"color: #ffd700;\\\">Size:<\\/span><\\/strong> A4 (210mm x 297mm)<br><br>&radic; Environmentally Friendly, &radic; High thickness, &radic; High opacity, &radic; High whiteness, &radic; High smoothness, &radic; &nbsp;Precision cut edges &ndash; Trouble-free performance, jam-free, &radic; User friendly box, &radic; ProDigi Nanotechnology<br><br>Note: 5 reams per box<\\/p>\",\"updated_at\":\"2025-03-12 11:36:06\"}', 3, '2025-03-12 18:36:06', '2025-03-12 18:36:06'),
(64, 'PP-000012', 'edit', '{\"id\":39,\"hidden\":0,\"code\":\"PP-000012\",\"name\":\"Paper One ~ Letter (80gsm)\",\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Grammage:<\\/strong><\\/span> 80gsm (Sub 24)<br><strong><span style=\\\"color: #ffd700;\\\">Sheet\\/UOM:<\\/span><\\/strong> 500 sheets<br><strong><span style=\\\"color: #ffd700;\\\">Size:<\\/span><\\/strong> Letter (216mm x 279mm)<br><br>&radic; Environmentally Friendly &ndash; 100% renewable plantation fiber<br>&radic; High thickness &ndash; Enables superb duplex (double-sided) printing with great paper feel<br>&radic; High opacity &ndash; No show-through<br>&radic; High whiteness &ndash; Great print contrast and clarity<br>&radic; High smoothness &ndash; Sharp, crisp and clear print quality with silky paper feel<br>&radic; &nbsp;Precision cut edges &ndash; Trouble-free performance, jam-free<br>&radic; User friendly box &ndash; Built-in handles for easy carrying, perforated tear strip for ease of access to reams, and unprinted lined area for labeling.<br>&radic; ProDigi Nanotechnology &ndash; Enhanced surface technology for better color inkjet\\/laser printing<br><br>Note: 5 reams per box<\\/p>\",\"brand\":\"Paper One\",\"supplier\":\"Paper One\",\"unit\":\"ream\",\"unit_price\":\"280.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":2,\"subcategory_id\":2,\"status\":\"Out of stock\",\"available\":\"0.00\",\"needed\":\"100.00\",\"to_buy\":\"100.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":null,\"updated_at\":\"2025-03-11T05:57:52.000000Z\"}', '{\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Grammage:<\\/strong><\\/span> 80gsm (Sub 24)<br><strong><span style=\\\"color: #ffd700;\\\">Sheet\\/UOM:<\\/span><\\/strong> 500 sheets<br><strong><span style=\\\"color: #ffd700;\\\">Size:<\\/span><\\/strong> Letter (216mm x 279mm)<br><br>&radic; Environmentally Friendly, &radic; High thickness, &radic; High opacity, &radic; High whiteness, &radic; High smoothness, &radic; &nbsp;Precision cut edges &ndash; Trouble-free performance, jam-free, &radic; User friendly box, &radic; ProDigi Nanotechnology<br><br>Note: 5 reams per box<\\/p>\",\"updated_at\":\"2025-03-12 11:38:11\"}', 3, '2025-03-12 18:38:11', '2025-03-12 18:38:11'),
(65, 'PS-000001', 'edit', '{\"id\":80,\"hidden\":0,\"code\":\"PS-000001\",\"name\":\"ENERGIZER BATTERY AA (4PCS\\/PACK)\",\"spec\":\"BATTERY AA (4PCS\\/PACK)\",\"brand\":\"Energizer\",\"supplier\":\"P-Lim Trading\",\"unit\":\"pack\",\"unit_price\":\"240.50\",\"pcs_unit\":4,\"value_ratio\":\"60.13\",\"service_id\":9,\"category_id\":4,\"subcategory_id\":4,\"status\":\"In Stock\",\"available\":\"50.00\",\"needed\":\"100.00\",\"to_buy\":\"50.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":\"2025-03-02T05:13:16.000000Z\",\"updated_at\":\"2025-03-02T05:13:16.000000Z\"}', '{\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Size:<\\/strong><\\/span> AA <br><span style=\\\"color: #ffd700;\\\"><strong>Qty per pack:<\\/strong><\\/span> 4<\\/p>\",\"pcs_unit\":\"1\",\"updated_at\":\"2025-03-17 06:06:11\"}', 9, '2025-03-17 13:06:11', '2025-03-17 13:06:11'),
(66, 'PS-000001', 'edit', '{\"id\":80,\"hidden\":0,\"code\":\"PS-000001\",\"name\":\"ENERGIZER BATTERY AA (4PCS\\/PACK)\",\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Size:<\\/strong><\\/span> AA <br><span style=\\\"color: #ffd700;\\\"><strong>Qty per pack:<\\/strong><\\/span> 4<\\/p>\",\"brand\":\"Energizer\",\"supplier\":\"P-Lim Trading\",\"unit\":\"pack\",\"unit_price\":\"240.50\",\"pcs_unit\":1,\"value_ratio\":\"60.13\",\"service_id\":9,\"category_id\":4,\"subcategory_id\":4,\"status\":\"In Stock\",\"available\":\"50.00\",\"needed\":\"100.00\",\"to_buy\":\"50.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":\"2025-03-02T05:13:16.000000Z\",\"updated_at\":\"2025-03-17T06:06:11.000000Z\"}', '{\"name\":\"ENERGIZER BATTERY AA\",\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Size:<\\/strong><\\/span> AA<\\/p>\",\"pcs_unit\":\"4\",\"updated_at\":\"2025-03-17 06:07:54\"}', 9, '2025-03-17 13:07:54', '2025-03-17 13:07:54'),
(67, 'PS-000001', 'edit', '{\"id\":80,\"hidden\":0,\"code\":\"PS-000001\",\"name\":\"ENERGIZER BATTERY AA\",\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Size:<\\/strong><\\/span> AA<\\/p>\",\"brand\":\"Energizer\",\"supplier\":\"P-Lim Trading\",\"unit\":\"pack\",\"unit_price\":\"240.50\",\"pcs_unit\":4,\"value_ratio\":\"60.13\",\"service_id\":9,\"category_id\":4,\"subcategory_id\":4,\"status\":\"In Stock\",\"available\":\"50.00\",\"needed\":\"100.00\",\"to_buy\":\"50.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":\"2025-03-02T05:13:16.000000Z\",\"updated_at\":\"2025-03-17T06:07:54.000000Z\"}', '{\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Size:<\\/strong><\\/span> AA<br><br>&radic; 100% Original<br>&radic; 100% Brand New<br>&radic; Long lasting Power<\\/p>\",\"updated_at\":\"2025-03-17 06:15:07\"}', 9, '2025-03-17 13:15:07', '2025-03-17 13:15:07'),
(68, 'PS-000002', 'edit', '{\"id\":81,\"hidden\":0,\"code\":\"PS-000002\",\"name\":\"ENERGIZER BATTERY AAA (4PCS\\/PACK)\",\"spec\":\"BATTERY AAA (4PCS\\/PACK)\",\"brand\":\"Energizer\",\"supplier\":\"P-Lim Trading\",\"unit\":\"pack\",\"unit_price\":\"292.50\",\"pcs_unit\":4,\"value_ratio\":\"73.13\",\"service_id\":9,\"category_id\":4,\"subcategory_id\":4,\"status\":\"Out of Stock\",\"available\":\"0.00\",\"needed\":\"100.00\",\"to_buy\":\"100.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":\"2025-03-02T05:26:01.000000Z\",\"updated_at\":\"2025-03-02T05:26:01.000000Z\"}', '{\"name\":\"ENERGIZER BATTERY AAA\",\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Size:<\\/strong><\\/span> AAA<br><br>&radic; 100% Original<br>&radic; 100% Brand New<br>&radic; Long lasting Power<\\/p>\",\"updated_at\":\"2025-03-17 06:16:30\"}', 9, '2025-03-17 13:16:30', '2025-03-17 13:16:30'),
(69, 'PS-000003', 'edit', '{\"id\":83,\"hidden\":0,\"code\":\"PS-000003\",\"name\":\"ENERGIZER BATTERY SIZE 9V\",\"spec\":\"BATTERY SIZE 9V\",\"brand\":\"Energizer\",\"supplier\":\"p-Lim Trading\",\"unit\":\"piece\",\"unit_price\":\"258.70\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":9,\"category_id\":4,\"subcategory_id\":4,\"status\":\"Out of Stock\",\"available\":\"0.00\",\"needed\":\"100.00\",\"to_buy\":\"100.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":\"2025-03-02T05:36:50.000000Z\",\"updated_at\":\"2025-03-02T05:36:50.000000Z\"}', '{\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Packaging Size:<\\/strong><\\/span> 1 pc per pack<br><span style=\\\"color: #ffd700;\\\"><strong>Classification:<\\/strong><\\/span> Alkaline<br><span style=\\\"color: #ffd700;\\\"><strong>Chemical System:<\\/strong><\\/span> Zinc-Manganese Dioxide (Zn\\/MnO2)<br><span style=\\\"color: #ffd700;\\\"><strong>Designation:<\\/strong><\\/span> ANSI 1604A, IEC-6LF22 or 6LR61<br><strong><span style=\\\"color: #ffd700;\\\">Operating Temp:<\\/span><\\/strong> -18&deg;C to 55&deg;C<br><span style=\\\"color: #ffd700;\\\"><strong>Typical Weight:<\\/strong><\\/span> 45 grams<br><span style=\\\"color: #ffd700;\\\"><strong>Typical Volume:<\\/strong><\\/span> 21 cubic centimeters<br><span style=\\\"color: #ffd700;\\\"><strong>Shelf Life:<\\/strong><\\/span> 5 years at 21&deg;C<br><span style=\\\"color: #ffd700;\\\"><strong>Terminal:<\\/strong><\\/span> Miniature Snap<br><span style=\\\"color: #ffd700;\\\"><strong>Nominal Voltage:<\\/strong><\\/span> 9.0 volts<\\/p>\",\"updated_at\":\"2025-03-17 06:29:46\"}', 9, '2025-03-17 13:29:46', '2025-03-17 13:29:46'),
(70, 'PS-000004', 'edit', '{\"id\":86,\"hidden\":0,\"code\":\"PS-000004\",\"name\":\"ENERGIZER BATTERY SIZE C\",\"spec\":\"BATTERY SIZE C\",\"brand\":\"Energizer\",\"supplier\":\"P-Lim Trading\",\"unit\":\"piece\",\"unit_price\":\"156.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":9,\"category_id\":4,\"subcategory_id\":4,\"status\":\"OUt of Stock\",\"available\":\"0.00\",\"needed\":\"100.00\",\"to_buy\":\"100.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":\"2025-03-02T06:02:52.000000Z\",\"updated_at\":\"2025-03-02T06:02:52.000000Z\"}', '{\"spec\":\"<p><span style=\\\"color: #ffd700;\\\"><strong>Brand Range:<\\/strong><\\/span> Energizer MAX<br><span style=\\\"color: #ffd700;\\\"><strong>Size:<\\/strong><\\/span> C<br><span style=\\\"color: #ffd700;\\\"><strong>Chemistry:<\\/strong><\\/span> Alkaline<br><span style=\\\"color: #ffd700;\\\"><strong>Nominal Voltage:<\\/strong><\\/span> 1.5V<br><span style=\\\"color: #ffd700;\\\"><strong>IEC Name:<\\/strong><\\/span> LR14<br><span style=\\\"color: #ffd700;\\\"><strong>Terminal Type:<\\/strong><\\/span> Standard<br><span style=\\\"color: #ffd700;\\\"><strong>Capacity:<\\/strong><\\/span> 8Ah<\\/p>\",\"updated_at\":\"2025-03-17 06:45:33\"}', 9, '2025-03-17 13:45:33', '2025-03-17 13:45:33'),
(71, 'PP-000001', 'edit', '{\"id\":28,\"hidden\":0,\"code\":\"PP-000001\",\"name\":\"Hard Copy ~  Legal (70gsm)\",\"spec\":\"<p><span style=\\\"color: #000000;\\\"><span style=\\\"color: #ffd700;\\\"><strong>Grammage:<\\/strong><\\/span>&nbsp;<\\/span>70gsm (Sub 20)<br><span style=\\\"color: #ffd700;\\\"><strong>Sheet\\/UOM:<\\/strong><\\/span> 500 sheets<br><span style=\\\"color: #ffd700;\\\"><strong>Size:<\\/strong><\\/span> Legal (216mm x 330mm)<br><br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Ultra White<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; Advance \\\"ink-lock\\\" system<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&radic; 99.99% Jam Free<br>&nbsp;<br><strong>Note:<\\/strong> 5 reams per box<\\/p>\",\"brand\":\"Hard Copy\",\"supplier\":\"Hard Copy\",\"unit\":\"ream\",\"unit_price\":\"27.00\",\"pcs_unit\":1,\"value_ratio\":\"1.00\",\"service_id\":1,\"category_id\":2,\"subcategory_id\":2,\"status\":\"Out of stock\",\"available\":\"0.00\",\"needed\":\"100.00\",\"to_buy\":\"100.00\",\"low_alert\":50,\"prod_note\":null,\"created_at\":null,\"updated_at\":\"2025-03-22T02:08:02.000000Z\"}', '{\"brand\":\"Advance\",\"status\":\"in Stock\",\"available\":\"50\",\"to_buy\":\"50\",\"updated_at\":\"2025-03-22 03:18:17\"}', 3, '2025-03-22 10:18:17', '2025-03-22 10:18:17');

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
('24vuXoi8aOJF7FoyLOdpvygfh6HReP1PdXSUjPBE', NULL, '185.93.228.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMzRuSDA4bXFHbENyZnRnVEhRM1c0SUo2b3RVTDZqbEN1OEtVcUNWMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8va2luZ2xhbmQucGgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1743345435),
('2DvjXrlpfl3FHt3oSibD4C4OPFZ6nY5rTjlDD5CU', NULL, '185.93.229.10', '\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36\"', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZjdmWWpPbEgzRmR4blQ2MHYyWk82bU10R3o3Z1lzNkJURk9aVm9RSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHBzOi8va2luZ2xhbmQucGgvc2VsbCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1743369294),
('4fOPN4dd5T5SFBBZPQESsNdppItVyLROnvp7Db6K', NULL, '192.88.134.10', 'Godaddy Uptime Monitor', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUktkd0RpanNFWHVpall2cGJjWnlWMzNPVklJcmUzbng3eVUydmR1bSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8va2luZ2xhbmQucGgvP3JuZD0xNzQzMzg0ODExMjU0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743384812),
('7Z4eRA5JjNl5RhO8b2HOVI2QzHh93MsMCSmWJ7mj', NULL, '192.88.134.10', 'Godaddy Uptime Monitor', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidVVRM2tDWEtYSTNqdnZOSzNMeHRyeEFRekl5VDBiV01DRGptaVdsVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8va2luZ2xhbmQucGgvP3JuZD0xNzQzMzg4NDEwNDI2Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743388412),
('aMetZPjz2IAfs5XumrZ8zxA7kRZoYhme3HtdjgoF', NULL, '192.88.134.10', 'Godaddy Uptime Monitor', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSlZWUHdlbHNRR1VOcU12MzF1eWpqUUxxeDlFMlR1cTFTRlFpazA5eiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8va2luZ2xhbmQucGgvP3JuZD0xNzQzMzY2ODEwNjYxIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743366812),
('aShaSOq8FcB003lbwSLt3LCi1VRKLWYSZE0QrxQ7', NULL, '185.93.228.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYVZ2TDlhNlNVbjdjcm1iTjE3T3ZqZVRYR1RVRFBaMmY3a0txV3VrdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8va2luZ2xhbmQucGgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1743372298),
('Bg0fg3YptlQPUdGm2tjO6JM9OuAPhQ3ECTopaMni', NULL, '192.88.134.10', 'Godaddy Uptime Monitor', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSXlZNXpFZURpSHhCRlUzMFZNNm1YZGtEaG1ERGo0ZjZrY1lnc0pOcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8va2luZ2xhbmQucGgvP3JuZD0xNzQzMzc0MDEyNDU3Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743374013),
('bSR5jcGna15FPopuyBqvWYoMKomfjELrjg2KoLol', NULL, '192.88.134.10', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibU1TRTJoTXFwSUxDTVN6WWJoT0tHVmhTd1VOalkxbzFpZXE0SVVQTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHBzOi8vd3d3LmtpbmdsYW5kLnBoIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743345370),
('cgeKVp2D5ksoPSReOT0wlUBfrhJ13QFUFts63kOS', NULL, '185.93.229.10', '\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36\"', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRmVNRUM3NnlpT0xHdUh2UTh6WDR3ZE5Uc1RTem5ZbkE4dEN6VkprUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8va2luZ2xhbmQucGgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1743369292),
('E5LsyT7R2rre4efVOfh1kmQrwZGaRboJ0CAHnqCl', NULL, '192.88.134.10', 'Godaddy Uptime Monitor', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRWp1bGViZ2lWb2ZicDhpT2VPWUdrVHA4VENLRGZVU0xiclRKZmd2SiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8va2luZ2xhbmQucGgvP3JuZD0xNzQzMzQ1MjEwNTQ3Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743345212),
('gKv0eq6SLXF19pK2LQd3cfEL3A5C2bzHnV2zWvHq', NULL, '192.88.134.10', 'Godaddy Uptime Monitor', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQWRUQkhXOFc5U3hjMjhPVnpDUVRLelU5SzBMS2NLY3pYS2s4MGhmaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8va2luZ2xhbmQucGgvP3JuZD0xNzQzMzcwNDExMTU3Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743370412),
('IHMlggAPBblCeyU3AGwjsb9IYzjKAAvr4iFmSfaO', NULL, '185.93.229.10', '\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36\"', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicUVXUjJyV3VRYnpDN1d5dlpUb254aTlZRmwydEl1U093RFNvenBBOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8va2luZ2xhbmQucGgvZm91bmRlcnMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1743369294),
('j0KDt4NOoJeL49AdKdvR6dCH1Jj1vmH6s2J7ZwLK', NULL, '185.93.229.10', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ0R6aFd0UE5kdFRNaVVrSERlN1h4UWZSaWVUVjFBU3AwSkRvWDE3MyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8va2luZ2xhbmQucGgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1743355075),
('j2tst6zjmM3Ufz6PyVvQOvwH5sHi1EDrAKmFbpiV', NULL, '185.93.228.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/85.0.4183.127 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia3Rtdlg0M2FzVnMyWGF6Mmd4c2ZqVWdzYUducGZhamU2bHJIOFRjeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHBzOi8vd3d3LmtpbmdsYW5kLnBoIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743346221),
('JTJmOL1vV1V8PmWRPw0SBZqIIsxVjebkD5V4Q97n', NULL, '192.88.134.10', 'Godaddy Uptime Monitor', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWkM1Y2pPa1gycWNFVHRXQTFRTEFZc3BlbWl2RnhVNzFadmJuQ0dkbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8va2luZ2xhbmQucGgvP3JuZD0xNzQzMzU5NjEwNDM3Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743359612),
('kulCcK6TuNLnT6aZcdfuHrJIqXldNKz0aUuoVFTO', NULL, '185.93.228.10', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Safari/605.1.63', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib0p1TTBKZjBBbWw3NXNIMkZpTXV2SjI3b1RwaXRRY3E0TEVBQVN1ZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHBzOi8vd3d3LmtpbmdsYW5kLnBoIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743346221),
('N4W3kzoVBFkL16QJmTfis0pWqm7QEBTLDtqeTaSF', NULL, '185.93.229.10', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR2pOV0NYb0paTkdxSjZrMlh4VUxvR2JjbGJ1VjdrTnZTWWxkQUxpTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8va2luZ2xhbmQucGgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1743355162),
('Ncc4pwDIoOvVsSxl8YHXRdCa0lZ2npJRAhaixg7m', NULL, '192.88.134.10', 'Godaddy Uptime Monitor', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicjROMUE5ZEtuN0dOWEYwdXZUQzh5ZHE2RERkT2dCTDhJYUlEam83dCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8va2luZ2xhbmQucGgvP3JuZD0xNzQzMzc3NjEwOTc0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743377612),
('PyuOpEesia3WUVHQZj9GGttK6q6lLfQcNOs6sZQ8', NULL, '185.93.229.10', '\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36\"', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTnFPRFNHaUNvbkgxUmxTakFVb2wyYXJlVWtWRFZydXJkcWtvZTlJRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8va2luZ2xhbmQucGgvc3RvcnkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1743369294),
('q1vzJbj1ftmvjNcfmdEVTWdhmFT4d7UIicIGbhza', NULL, '185.93.229.10', '\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36\"', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWEdhS0NreE1Dd2FaZEpjdDZVN09GN1U0UHVabmNGdWZ4NEdkMzFzYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHBzOi8va2luZ2xhbmQucGgvcHZwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743369295),
('RKmWvustqiXQNKHsnV3OnUUoHXLRbKRpRHMoBby5', NULL, '192.88.134.10', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUDNwaWo1S09scmVRaTZVbDdlN2ltSjJxc0RNVzdkUlJaT1g0VnNVTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8va2luZ2xhbmQucGgvaGlzdG9yeSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1743380042),
('rQgFV42ASLDtHSWzcyd8iobtDyPQpXlhUQebThD2', NULL, '192.88.134.10', 'Godaddy Uptime Monitor', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoielF5VE1Cc0lWNm9NaFFYeWdXRnBqT0c5bDVkeDNUUUVkQWV2RDRvdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8va2luZ2xhbmQucGgvP3JuZD0xNzQzMzYzMjEwNTM3Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743363212),
('rtbRw42W9FMVnUjmMtTiLfLGhv87XeGBU5BZrkNL', NULL, '192.88.134.10', 'Godaddy Uptime Monitor', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWVJHbzNBTkxZNnpyYmRhRVBHRlU4REtyN1A1YnpMUUpKWE5SYjZnZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8va2luZ2xhbmQucGgvP3JuZD0xNzQzMzUyNDEwMzQyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743352412),
('sKh2O5v8EgrTRiEyJWtETiJ6YRzFd0riEcEG7UbK', NULL, '185.93.229.10', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.6998.165 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYnFCdFdvbHRXZ0NwRTRNVVl4OW5PM1pZN3FWTlQzRGJ3QkUxR1RzbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8va2luZ2xhbmQucGgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1743356163),
('SZDmicl8ZgAzGev58HcfpEa3meAPY5YArqpo0wVQ', NULL, '185.93.229.10', '\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36\"', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieEVDTXcxTksxQ0Y3ODdQcWpRQnlNdVQ3QUxJbldYM1dobWdueWhtZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHBzOi8va2luZ2xhbmQucGgvYnV5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743369294),
('t0jF9JIUqD4qmfBoPKYXAX7FYCFmfvTsMIKw2FdN', NULL, '185.93.228.10', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidHFvcmNRMUFZWXNXWmNtTXJpak1RM0VwY1dDTURVVHBJM3Z2Ykd5RCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8va2luZ2xhbmQucGgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1743345433),
('VUqPpU3KCxCdCpm06Zs25hpNWCjmDeslk7jG1hWS', NULL, '185.93.228.10', 'Mozilla/5.0 (Fedora; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY0FINlFxcWY1V2pETk9PaFdIV2hlMG9Kc3hvb0xIOTJzMXVMZnlrRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8va2luZ2xhbmQucGgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1743372015),
('VWBpCx7zO1MmKr9kt7TLwU6gRgVKQpCUJUz1gGV3', NULL, '185.93.229.10', 'Mozilla/5.0 (compatible)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNlg1VEpqenNwY2FmOTJqS1VRWUVoNThsckFtZEtzbXExbHc2YjFmTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHBzOi8vd3d3LmtpbmdsYW5kLnBoIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743379921),
('W0l6suGJ3dv1NxN1nRPx54ngm81SqhBcL5tP8q1L', NULL, '192.88.134.10', 'Godaddy Uptime Monitor', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieEpkQWdxNDJkSklwN2VIR09MVlJrbGJNUHQ5VVRCTW1Jdk9KNkxUcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8va2luZ2xhbmQucGgvP3JuZD0xNzQzMzQ4ODEwNDA3Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743348812),
('WV7GtkxXUKhSbxMQj07ZD0MJfiDL9LoKWj7fV6EV', NULL, '192.88.134.10', 'Godaddy Uptime Monitor', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZTZ0b2ZTeFM5MktWbzFBQnd0eWR4VUczem9jYWx6eGR4VG1rMVNVdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8va2luZ2xhbmQucGgvP3JuZD0xNzQzMzU2MDEwODc4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743356012),
('XOkIe1Ygsma3jTNvj18B371vmSRPz4iMktXAqrWJ', NULL, '185.93.229.10', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:24.0) Gecko/20100101 Firefox/24.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicktnQW9mTzI0NjZxZVJsbVhzbzhoTzhQdFVRcjZXTWlCRnFpenhkbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8va2luZ2xhbmQucGgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1743356060),
('y3kF6DF1uY5UKVguC5XGRlsNUqtxhx2e5eOBQcaU', NULL, '192.88.134.10', 'Godaddy Uptime Monitor', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTjd6d2ZBbmVXdnQxUW16aTlEWk40M3hJcUhoZjlVR3dxaWdkMndYdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8va2luZ2xhbmQucGgvP3JuZD0xNzQzMzgxMjEwOTA0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743381212),
('YKoGYEyMM4p47mRujopBnmu6OT4CMSX4Zeb9GAef', NULL, '192.88.134.10', 'Godaddy Uptime Monitor', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTDR4SkZuUFI5ZmVmbVdORHdKZ09aYzJ1MmRrNkNtZGdrWDVOaDlnTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8va2luZ2xhbmQucGgvP3JuZD0xNzQzMzQxNjEwNTg5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743341612),
('YYDwVFWZWFxcpZyaO985Ix4Mmyw2V4mIgoGGuvtV', NULL, '185.93.228.10', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicU5iS1BOTEJ6aUd5bHhUVTlvaEJjNlk2czlCM0pKSG1YZUdWdWl5MyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8va2luZ2xhbmQucGgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1743372017),
('Z5tRojVVPG5x5oRjNIHaRUj0rCcK72QkkhJ2uclP', 2, '192.88.134.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZzFBUzZiVXBrQTYxZFdaOGlYMzY2S3BGZlhJbjZoSDlFVzdKR0NOUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8va2luZ2xhbmQucGgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1743388413);

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fileName` varchar(255) NOT NULL,
  `pos` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(4, 4, 'Battery', '2025-01-28 22:15:42', '2025-01-28 22:15:42'),
(5, 5, 'File Folders', '2025-01-28 22:29:21', '2025-01-28 22:29:21'),
(6, 5, 'Hanging Folders', '2025-01-28 22:30:31', '2025-01-28 22:30:31'),
(7, 5, 'Binders', '2025-01-28 22:31:18', '2025-01-28 22:31:18'),
(8, 5, 'Binder Dividers', '2025-01-28 22:31:29', '2025-01-28 22:31:29'),
(9, 5, 'Clipboards', '2025-01-28 22:31:39', '2025-01-28 22:31:39'),
(10, 5, 'Document Holders', '2025-01-28 22:32:00', '2025-01-28 22:32:00'),
(11, 5, 'Filing Cabinets', '2025-01-28 22:32:08', '2025-01-28 22:32:08'),
(12, 5, 'Storage Boxes', '2025-01-28 22:32:18', '2025-01-28 22:32:18'),
(13, 5, 'Labels and Label Makers', '2025-01-28 22:32:27', '2025-01-28 22:32:27'),
(14, 6, 'Air Fresheners', '2025-01-31 12:17:07', '2025-01-31 12:17:07'),
(15, 6, 'Disinfectants & Sanitizers', '2025-02-02 14:22:03', '2025-02-02 14:22:03'),
(16, 8, 'Yarn and Threads', '2025-02-02 14:32:24', '2025-02-02 14:32:24'),
(17, 9, 'Medals and Trophies', '2025-02-02 14:37:47', '2025-02-02 14:37:47'),
(18, 6, 'Waste Management', '2025-02-02 14:49:01', '2025-02-02 14:49:01'),
(19, 10, 'Thermal Ribbons', '2025-02-02 15:06:09', '2025-02-02 15:06:09'),
(20, 10, 'Labels and Stickers', '2025-02-02 15:16:44', '2025-02-02 15:16:44'),
(21, 11, 'Call Bells and Notification Systems', '2025-03-02 16:35:18', '2025-03-02 16:35:18'),
(22, 12, 'Binders and Folders', '2025-03-02 17:01:13', '2025-03-02 17:01:13'),
(23, 13, 'Stretch Film', '2025-03-10 09:55:51', '2025-03-10 09:55:51'),
(24, 14, 'Storage Boxes', '2025-03-10 10:09:10', '2025-03-10 10:09:10');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'P-Lim Trading', '2025-03-12 18:32:02', '2025-03-12 18:32:02');

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
(2, 'Renzo Gregorio', 'gregoriorenzo05@gmail.com', '2025-01-20 08:44:00', '$2y$12$lVkqXN87cwJwdvzVN2D3EeeE9byLSdQp04.2Z436PU4cqsnrA4bYO', 'uIXxlpAC2ur71Me2hZVqFLq6ncJHBHk04P8m2il8X52pmPARt36giV0CgEam', '2025-01-20 00:42:43', '2025-01-20 00:42:43', '2025-02-28 22:03:25'),
(3, 'Richard A. Abanilla', 'raabanilla@kingland.ph', '2025-01-29 01:09:05', '$2y$12$m593MPENkKMCnVJrBNq5H.KQzXj/yeNDj90Tz1OdOjm9TVTNoRlb2', 'nQ7SDRgluR1DWaG9Oxdm2ED0q4ywHJpHeyiUhy7LtXMTgAjtCKTvh7wwJGxU', '2025-01-28 17:08:15', '2025-01-28 17:08:15', '2025-01-29 01:09:16'),
(7, 'Richard Abanilla', 'abanilla.richard@yahoo.com', '2025-02-28 22:15:11', '$2y$12$duJzA9kTP4m0bjysqtRZq.9Yr.m4CGe7IH3CgNXrlWDqOMMTEvNtG', NULL, '2025-02-28 13:57:49', '2025-02-28 13:57:49', '2025-02-28 22:02:29'),
(9, 'Richard Abanilla', 'richard.abanilla25@gmail.com', '2025-03-06 14:41:21', '$2y$12$ALTLaV0TIsVFvc1Vtz.iUOYe2DQ8/UJdDcxnNskSspFK1CTSHgYle', NULL, '2025-03-06 14:39:01', '2025-03-06 14:41:21', '2025-03-06 14:41:21');

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
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `prices_supplier_id_product_id_unique` (`supplier_id`,`product_id`),
  ADD KEY `prices_product_id_foreign` (`product_id`);

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
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
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
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `concerns`
--
ALTER TABLE `concerns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `prod_logs`
--
ALTER TABLE `prod_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `prices`
--
ALTER TABLE `prices`
  ADD CONSTRAINT `prices_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `prices_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE;

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
