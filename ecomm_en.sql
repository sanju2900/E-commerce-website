-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2021 at 02:54 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm_en`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(13, 3, 3, '2021-05-25 07:02:35', '2021-05-25 07:02:35'),
(14, 4, 3, '2021-05-25 07:02:40', '2021-05-25 07:02:40'),
(15, 3, 1, '2021-05-25 07:04:21', '2021-05-25 07:04:21'),
(16, 3, 1, '2021-05-25 07:08:53', '2021-05-25 07:08:53');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_05_22_102140_create_users_table', 1),
(2, '2021_05_23_091902_create_products_table', 2),
(3, '2021_05_24_074819_create_cart_table', 3),
(4, '2021_05_25_075527_create_orders_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_id`, `user_id`, `status`, `payment_method`, `payment_status`, `address`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'pending', 'Net Banking', 'pending', 'npida,up', NULL, NULL),
(2, 3, 1, 'pending', 'EMI Payment', 'pending', 'delhi', NULL, NULL),
(3, 3, 1, 'pending', 'EMI Payment', 'pending', 'delhi', NULL, NULL),
(4, 4, 2, 'pending', 'Cash on Delivery', 'pending', 'ppkkktra', NULL, NULL),
(5, 3, 2, 'pending', 'Cash on Delivery', 'pending', 'nodia', NULL, NULL),
(6, 4, 2, 'pending', 'Cash on Delivery', 'pending', 'nodia', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mrp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `brand`, `gallery`, `description`, `mrp`, `rating`, `created_at`, `updated_at`) VALUES
(1, 'LG refrigrator', '10999', 'LG', 'http://www.auntpeaches.com/wp-content/uploads/2015/04/fridge-682.jpg', 'The LG W41 Pro is powered by 2.3GHz octa-core MediaTek Helio G35 processor and it comes with 6GB of RAM. The phone packs 128GB of internal storage that can be expanded up to 512GB via a microSD card. As far as the cameras are concerned', 'till feb 2022', '4.5/5', NULL, NULL),
(3, 'ASUS Rog', '12999', 'smart phone', 'https://static.toiimg.com/photo/74552749.cms', 'The LG W41 Pro is powered by 2.3GHz octa-core MediaTek Helio G35 processor and it comes with 6GB of RAM. The phone packs 128GB of internal storage that can be expanded up to 512GB via a microSD card. As far as the cameras are concerned', 'till jan 2022', '4.5/5', NULL, NULL),
(4, 'boAt Airdopes 131', '8999', 'boat', 'https://rukminim1.flixcart.com/image/612/612/kj1r53k0-0/headphone/e/y/o/shots-x1-air-2-truly-wireless-noise-original-imafyp3adtqgebbg.jpeg?q=70', 'The LG W41 Pro is powered by 2.3GHz octa-core MediaTek Helio G35 processor and it comes with 6GB of RAM. The phone packs 128GB of internal storage that can be expanded up to 512GB via a microSD card. As far as the cameras are concerned', 'till feb 2022', '4.5/5', NULL, NULL),
(5, 'sumsung', '19999', 'smart phone', 'https://rukminim1.flixcart.com/image/416/416/kcm9t3k0/mobile/p/p/q/vivo-x50-pro-vivo-2006-original-imaftppahwbc6myx.jpeg?q=70', 'The LG W41 Pro is powered by 2.3GHz octa-core MediaTek Helio G35 processor and it comes with 6GB of RAM. The phone packs 128GB of internal storage that can be expanded up to 512GB via a microSD card. As far as the cameras are concerned', 'till feb 2022', '4.5/5', NULL, NULL),
(6, 'smart tv', '1000000', 'sumsung', 'https://rukminim1.flixcart.com/image/416/416/kmqn3bk0/television/v/p/f/55put8215-94-philips-original-imagfkpbcqsg5hkq.jpeg?q=70', 'this smart lamp', '22feb 2022', '3/5', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `address`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', 'hajipur,bihar', '$2y$10$Fl7mj8xEpduhP/BMtg4fB.uWZ.yYN3ydWECUhIILLGZs2Zdhe1bJm', NULL, NULL),
(2, 'sanju', 'sanju@gmail.com', 'J.p colony(last house) Hajipur, Vaishali', '$2y$10$hB3Ok3zqrcWCs5/VyPLmFOfcEd8X3FyOZW3JkDiTbFUPFTP7qvG8W', '2021-05-25 03:41:21', '2021-05-25 03:41:21'),
(3, 'sir', 'sir@gmail.com', 'patna', '$2y$10$ouwpp1hwwy/jc7oGdZF8vebEEB5fkKijMsI2XKdyJL/ysjmEPPJry', '2021-05-25 06:59:29', '2021-05-25 06:59:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
