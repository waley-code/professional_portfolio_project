-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2022 at 06:42 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `website`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE IF NOT EXISTS `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `short_title`, `short_description`, `long_description`, `about_image`, `created_at`, `updated_at`) VALUES
(1, 'I transform your ideas into remarkable digital products', '2+ Years Experience In this game, Means Product Designing', 'I love to work in User Experience & User Interface designing. Because I love to solve the design problem and find easy and better solutions to solve it. I always try my best to make good user interface with the best user experience. I have been working as a UX Designer', '<p class=\"desc\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of lorem ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated lorem ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n<ul class=\"about__exp__list\">\r\n<li>\r\n<h5 class=\"title\">User experience design - (Product Design)</h5>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable. If you are going to unseery.</p>\r\n</li>\r\n<li>\r\n<h5 class=\"title\">Web and user interface design - Development</h5>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable. If you are going to use a passage of lorem ipsum.</p>\r\n</li>\r\n<li>\r\n<h5 class=\"title\">Interaction design - Animation</h5>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable.</p>\r\n</li>\r\n</ul>', 'upload/home_about/1748572385932032.png', NULL, '2022-11-04 13:33:25');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE IF NOT EXISTS `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `blog_category_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_category` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `blog_category_id`, `blog_title`, `blog_image`, `blog_text`, `blog_description`, `blog_category`, `created_at`, `updated_at`) VALUES
(1, '2', 'Laravel - The PHP Framework For Web Artisans', 'upload/blog/1749205849050050.png', 'Laravel', '<ul>\r\n<li>You are tasked to come up with solutions for the tasks below yourself to meet with the above learning objectives.</li>\r\n<li>You will not be able to meet the objectives of this or any following project by copying and pasting someone else&rsquo;s work.</li>\r\n<li>You are not allowed to publish any content of this project.</li>\r\n<li>Any form of plagiarism is strictly forbidden and will result in removal from the program.</li>\r\n</ul>', NULL, '2022-11-11 13:18:12', '2022-11-14 11:01:59'),
(2, '8', 'Online Degree Programs', 'upload/blog/1749206537914175.png', 'learning,Education', '<p>Coursera is a U.S.-based massive open online course provider founded in 2012 by Stanford University computer science professors Andrew Ng and Daphne Koller. Coursera works with universities and other organizations to offer online courses, certifications, and degrees in a variety of subjects.</p>', NULL, '2022-11-11 13:29:09', '2022-11-12 16:49:36'),
(3, '9', 'Node.js® is a JavaScript runtime built on Chrome\'s V8 JavaScript', 'upload/blog/1749208742438899.png', 'home, tech', '<p>It is used for&nbsp;<strong>server-side programming, and primarily deployed for non-blocking, event-driven servers, such as traditional web sites and back-end API services</strong>, but was originally designed with real-time, push-based architectures in mind.</p>', NULL, '2022-11-11 14:04:11', NULL),
(5, '9', 'React', 'upload/blog/1749311883984629.png', 'home, tech', '<ul>\r\n<li>You are tasked to come up with solutions for the tasks below yourself to meet with the above learning objectives.</li>\r\n<li>You will not be able to meet the objectives of this or any following project by copying and pasting someone else&rsquo;s work.</li>\r\n<li>You are not allowed to publish any content of this project.</li>\r\n<li>Any form of plagiarism is strictly forbidden and will result in removal from the program.</li>\r\n</ul>', NULL, '2022-11-12 17:23:35', '2022-11-14 11:19:38');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE IF NOT EXISTS `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `blog_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `blog_category`, `created_at`, `updated_at`) VALUES
(1, 'LinkedIn', NULL, NULL),
(2, 'Laravel', NULL, NULL),
(3, 'React', NULL, NULL),
(4, 'JavaScript', NULL, NULL),
(5, 'HTML', NULL, NULL),
(7, 'LinkedIn 2', NULL, '2022-11-11 11:18:26'),
(8, 'Coursera', NULL, NULL),
(9, 'Node.js', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Wale', 'damilareolabisi81@gmail.com', 'Enquiries', '08131352515', 'qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqeeeeeeeeeeeeeeeeeeeeeeee', NULL, NULL),
(2, 'James', 'florence.chiroma@olamnet.com', 'Enquiries', '081313527777', 'qwwwwwwwwwwwwwwwwww\r\nqwwwwwwwwwwwwwwww\r\nwqqqqqqqqqqqqqq', '2022-11-14 13:45:56', NULL),
(4, 'james', 'mathiasamade@gmail.com', 'drwfrew', '23456789', 'fhbrtjny5jm', '2022-11-15 16:34:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `footers`
--

CREATE TABLE IF NOT EXISTS `footers` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twiter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footers`
--

INSERT INTO `footers` (`id`, `number`, `short_description`, `address`, `email`, `facebook`, `twiter`, `copyright`, `created_at`, `updated_at`) VALUES
(1, '0901111111111', 'There are many variations of passages of lorem ipsum available but the majority have suffered alteration in some form is also here.', '1, pipeline road', 'walephlp@gmail.com', 'https://www.facebook.com', 'https://www.twiter.com', '© waley-code 2022', NULL, '2022-11-14 12:34:41');

-- --------------------------------------------------------

--
-- Table structure for table `home_slides`
--

CREATE TABLE IF NOT EXISTS `home_slides` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_slide` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_slides`
--

INSERT INTO `home_slides` (`id`, `title`, `short_title`, `home_slide`, `video_url`, `created_at`, `updated_at`) VALUES
(1, 'Giving you the Best Product in the shortest time.', 'I\'m a Rasalina based product design & visual designer focused on crafting clean & user‑friendly experiences', 'upload/home_slide/1748550415019853.png', 'https://www.youtube.com/watch?v=XHOmBV4js_E', NULL, '2022-11-04 07:57:30');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_03_175834_create_home_slides_table', 2),
(6, '2022_11_04_093306_create_abouts_table', 3),
(7, '2022_11_05_061916_create_multi_images_table', 4),
(8, '2022_11_05_161247_create_portfolios_table', 5),
(9, '2022_11_10_161554_create_blog_categories_table', 6),
(10, '2022_11_11_112957_create_blogs_table', 7),
(11, '2022_11_14_112725_create_footers_table', 8),
(12, '2022_11_14_124941_create_contacts_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `multi_images`
--

CREATE TABLE IF NOT EXISTS `multi_images` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `multi_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_images`
--

INSERT INTO `multi_images` (`id`, `multi_image`, `created_at`, `updated_at`) VALUES
(2, 'upload/multi/1748641404279599.png', '2022-11-05 07:46:35', NULL),
(3, 'upload/multi/1748641404367439.png', '2022-11-05 07:46:36', NULL),
(4, 'upload/multi/1748641404596356.png', '2022-11-05 07:46:36', NULL),
(5, 'upload/multi/1748672995466600.jpg', '2022-11-05 16:08:44', NULL),
(6, 'upload/multi/1748672996030117.png', '2022-11-05 16:08:44', NULL),
(7, 'upload/multi/1748672996174737.png', '2022-11-05 16:08:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('oyewaleadeosun@yahoo.com', '$2y$10$WpdKzK6fJXM73EuBzMbLD.KRF9Cn.IvjXp84Cq0E.qs5s7Z94KhLa', '2022-10-26 11:48:46');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE IF NOT EXISTS `portfolios` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `portfolio_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portfolio_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portfolio_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portfolio_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `portfolio_name`, `portfolio_title`, `portfolio_image`, `portfolio_description`, `created_at`, `updated_at`) VALUES
(1, 'Achieving', 'Achieving effectiveness,', 'upload/portfolio/1748685170621943.png', '<ul>\r\n<li>Achieving effectiveness,</li>\r\n<li>Achieving effectiveness,</li>\r\n<li>Achieving effectiveness,</li>\r\n<li>Achieving effectiveness,</li>\r\n<li>Achieving effectiveness,</li>\r\n<li>Achieving effectiveness,</li>\r\n<li>Achieving effectiveness,</li>\r\n<li>Achieving effectiveness,</li>\r\n<li>Achieving effectiveness,</li>\r\n<li>Achieving effectiveness,</li>\r\n<li>Achieving effectiveness,</li>\r\n<li>Achieving effectiveness,</li>\r\n<li>Achieving effectiveness,</li>\r\n<li>Achieving effectiveness,</li>\r\n<li>Achieving effectiveness,</li>\r\n<li>Achieving effectiveness,</li>\r\n<li>Achieving effectiveness,</li>\r\n<li>Achieving effectiveness,</li>\r\n<li>Achieving effectiveness,</li>\r\n</ul>', '2022-11-05 19:22:15', NULL),
(2, 'Business Strategy', 'Nature of Business Strategy', 'upload/portfolio/1748685318666093.png', '<p>Definition: Business strategy can be understood as the course of action or set of decisions which assist the entrepreneurs in achieving specific business objectives.</p>\r\n<p>It is nothing but a master plan that the management of a company implements to secure a competitive position in the market, carry on its operations, please customers and achieve the desired ends of the business.</p>\r\n<p>In business, it is the long-range sketch of the desired image, direction and destination of the organization. It is a scheme of corporate intent and action, which is carefully planned and flexibly designed with the purpose of</p>\r\n<ul class=\"services__details__list\">\r\n<li>Achieving effectiveness,</li>\r\n<li>Perceiving and utilizing opportunities,</li>\r\n<li>Mobilising resources,</li>\r\n<li>Securing an advantageous position,</li>\r\n<li>Meeting challenges and threats,</li>\r\n<li>Directing efforts and behaviour and</li>\r\n<li>Gaining command over the situation.</li>\r\n</ul>\r\n<p>A business strategy is a set of competitive moves and actions that a business uses to attract customers, compete successfully, strengthening performance, and achieve organizational goals. It outlines how business should be carried out to reach the desired ends</p>', '2022-11-05 19:24:36', '2022-11-14 15:12:45'),
(4, 'React', 'Laravel', 'upload/portfolio/1748685577574954.png', '<p>Definition: Business strategy can be understood as the course of action or set of decisions which assist the entrepreneurs in achieving specific business objectives.</p>\r\n<p>It is nothing but a master plan that the management of a company implements to secure a competitive position in the market, carry on its operations, please customers and achieve the desired ends of the business.</p>\r\n<p>In business, it is the long-range sketch of the desired image, direction and destination of the organization. It is a scheme of corporate intent and action, which is carefully planned and flexibly designed with the purpose of</p>\r\n<ul class=\"services__details__list\">\r\n<li>Achieving effectiveness,</li>\r\n<li>Perceiving and utilizing opportunities,</li>\r\n<li>Mobilising resources,</li>\r\n<li>Securing an advantageous position,</li>\r\n<li>Meeting challenges and threats,</li>\r\n<li>Directing efforts and behaviour and</li>\r\n<li>Gaining command over the situation.</li>\r\n</ul>\r\n<p>A business strategy is a set of competitive moves and actions that a business uses to attract customers, compete successfully, strengthening performance, and achieve organizational goals. It outlines how business should be carried out to reach the desired ends</p>', '2022-11-05 19:28:43', '2022-11-10 13:47:38'),
(5, 'Framework', 'Node.js', 'upload/portfolio/1749118063496984.png', '<div role=\"heading\" aria-level=\"4\">\r\n<div class=\"dnXCYb\" tabindex=\"0\" role=\"button\" aria-controls=\"_IgRtY4qrMM3vsAeHiprABA_33\" aria-expanded=\"true\" data-hveid=\"CBIQAQ\">\r\n<div class=\"JlqpRe\"><span class=\"JCzEY ZwRhJd\"><span class=\"CSkcDe\">What is NodeJS used for?</span></span></div>\r\n<div class=\"aj35ze\">&nbsp;</div>\r\n<div class=\"L3Ezfd\" data-ved=\"2ahUKEwiKxO-i46P7AhXNN-wKHQeFBkgQuk56BAgSEAI\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<div id=\"_IgRtY4qrMM3vsAeHiprABA_33\" class=\"bCOlv\" data-ved=\"2ahUKEwiKxO-i46P7AhXNN-wKHQeFBkgQ7NUEegQIEhAE\">\r\n<div class=\"IZE3Td\">\r\n<div id=\"_IgRtY4qrMM3vsAeHiprABA_34\" class=\"t0bRye r2fjmd\" data-hveid=\"CBIQBQ\" data-ved=\"2ahUKEwiKxO-i46P7AhXNN-wKHQeFBkgQu04oAHoECBIQBQ\">\r\n<div id=\"IgRtY4qrMM3vsAeHiprABA__11\">\r\n<div class=\"wDYxhc\" data-md=\"61\">\r\n<div class=\"LGOjhe\" role=\"heading\" data-attrid=\"wa:/description\" aria-level=\"3\" data-hveid=\"CBcQAA\"><span class=\"ILfuVd\" lang=\"en\"><span class=\"hgKElc\">It is used for&nbsp;<strong>server-side programming, and primarily deployed for non-blocking, event-driven servers, such as traditional web sites and back-end API services</strong>, but was originally designed with real-time, push-based architectures in mind.</span></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2022-11-10 14:02:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `username`, `profile_image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'wale', 'oyewaleadeosun@yahoo.com', NULL, '$2y$10$5fp8/mmBTIDw6Fm/NOFBd.GCLovfz5zwRDEDhbYqdP.HrDU7FRayG', NULL, NULL, NULL, '2022-10-26 10:41:12', '2022-10-26 10:41:12'),
(2, 'Oyewale', 'walephlp@gmail.com', '2022-10-26 12:24:36', '$2y$10$YofxEnTcFN0OJuORrm917ex4/haxMn0yUaoP9pTA/3rJa42oP8u26', NULL, NULL, '9QJUoZce2eaMRGytXadaZxLlI2LftGl3e2u9LTV9irnq1rjxqWziX3qCryxP', '2022-10-26 11:51:06', '2022-10-26 12:24:36'),
(4, 'waley-code', 'uderdemo@gmail.com', '2022-10-26 13:42:29', '$2y$10$kHfqYZpN0mLXiNf5KvtA2.r.y4BM/PGglMlwxs/nSrM/avA6P6zn.', 'wale', '202211021749logolaravel.png', NULL, '2022-10-26 13:41:54', '2022-11-15 17:39:02'),
(5, 'testing02', 'testing@gmail.com', '2022-11-01 14:41:22', '$2y$10$rxL263FHFED7YK8OQ/Xt1eatW1lCg5NmgcIpdrBMRK6zULMR.tQ9.', 'test', '202211021830hackWallPaper.jpg', NULL, '2022-11-01 14:26:19', '2022-11-02 18:47:29');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
