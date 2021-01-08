-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 08, 2021 at 08:45 PM
-- Server version: 10.3.27-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pemirahi_indra`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_class` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `meeting` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `name_class`, `date`, `meeting`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Halu Terus', '2021-01-05', 'Lalala.com', 8, '2021-01-05 04:37:18', '2021-01-05 04:48:55'),
(7, 'Prognet', '2021-01-30', 'prognet.com', 3, '2021-01-07 09:12:58', '2021-01-07 09:12:58'),
(8, 'Komputer Kuantum', '2021-01-14', 'webex.com', 11, '2021-01-07 19:10:24', '2021-01-07 19:10:24'),
(9, 'Etika', '2021-01-17', 'Webex.com', 5, '2021-01-07 21:07:31', '2021-01-07 21:07:31'),
(10, 'Progmob', '2021-01-22', 'zoom.com', 3, '2021-01-07 21:08:20', '2021-01-07 21:08:20'),
(11, 'Progmob', '2021-01-08', 'Www.google.com', 5, '2021-01-07 21:12:30', '2021-01-07 21:12:30'),
(12, 'Matematika', '2021-01-15', 'room.com', 3, '2021-01-07 21:13:56', '2021-01-07 21:13:56'),
(13, 'Biologi', '2021-01-20', 'Room.com', 5, '2021-01-07 21:15:25', '2021-01-07 21:15:25'),
(14, 'Progjar', '2021-01-12', 'Zoom.com', 5, '2021-01-07 21:20:53', '2021-01-07 21:20:53'),
(15, 'Data Warehouse', '2021-01-16', 'zoom.com', 3, '2021-01-07 21:54:01', '2021-01-07 21:54:01'),
(17, 'basis data', '2021-01-20', 'data.com', 5, '2021-01-07 22:13:29', '2021-01-07 22:13:29'),
(18, 'Iot', '2021-01-13', 'zoom.com', 5, '2021-01-07 22:24:00', '2021-01-07 22:24:00'),
(19, 'Isu dan proteksi', '2021-01-13', 'Zoom.com', 3, '2021-01-08 03:55:03', '2021-01-08 03:55:03'),
(20, 'Analisis dan desain sistem', '2021-01-13', 'Webex', 3, '2021-01-08 03:56:08', '2021-01-08 03:56:08'),
(22, 'Pemrograman mobile', '2021-01-12', 'Googlemeet.com', 3, '2021-01-08 04:12:39', '2021-01-08 04:12:39'),
(23, 'Internet of things', '2021-01-13', 'Zoom.com', 3, '2021-01-08 04:14:18', '2021-01-08 04:14:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fcm_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `photo`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `fcm_token`) VALUES
(1, 'Putu Abdi', 'Purnawan', '', 'kadekkadek@gmail.com', NULL, '$2y$10$zsBazTbDJAIt5gMKRsl6leu5KHCMgvOZSW.RXMHmGv645akoVQ0T.', NULL, '2020-12-21 08:51:12', '2020-12-21 08:51:12', NULL),
(2, 'Dwii', 'Yatna', '1609948980.jpg', 'kadek@gmail.com', NULL, '$2y$10$rp1qoLBjCnZZfJvKx4FwFerQgbqjdfp1v3u4L/AaP/UoHLKrZskC.', NULL, '2020-12-23 03:09:25', '2021-01-06 09:03:00', 'fqO05I7BR9CKsPqDslvAmZ:APA91bFK9TtQofH6Qr3qYG8Wb2J-RNBzO7a2bpPpaoRXGIXTrAfYI3ZRYO39SiO2Vlow4DwM84WgjYqRkmgbhACSPPY1zmqBy-T-07FJeFik18qVm2aFXL1wfa4Z8TUt8qll0uZbvoK4'),
(3, 'Indra', 'Purnayasa', '1609948698.jpg', 'indra@gmail.com', NULL, '$2y$10$8RpKU2EdE8UH9pT4sbgzNeGV2q3RS2qG4QGXlBZ4Bl5zCofq2VmR2', NULL, '2020-12-23 03:16:02', '2021-01-08 03:49:35', 'dQ3PUcyDSO-hPCI-rNPeRV:APA91bHPksEYoSMPlbkj9yMAzr7nADMBehLm6guCgIradyDwv0A_HAfUlkHb5gMtWWc5TKn6LII_PjdGaZYGFwi30qYy0xFG_jVMl_i4QCE7PiHmtAR1FnuhygHnoiFS6-KnthD5vfy7'),
(4, '', '', '', '', NULL, '', NULL, NULL, NULL, NULL),
(5, 'Ngurah', 'Indra', '', 'purna@gmail.com', NULL, '$2y$10$BYUdAKTjX9ED6z7sX2r7Lu4VmvlWJDFiVmZMoh.WRaAF/AQtQJWfC', NULL, '2020-12-27 08:17:58', '2021-01-07 22:10:38', 'fqO05I7BR9CKsPqDslvAmZ:APA91bFK9TtQofH6Qr3qYG8Wb2J-RNBzO7a2bpPpaoRXGIXTrAfYI3ZRYO39SiO2Vlow4DwM84WgjYqRkmgbhACSPPY1zmqBy-T-07FJeFik18qVm2aFXL1wfa4Z8TUt8qll0uZbvoK4'),
(6, 'Abdi Purnawan', '', '', 'abdi@gmail.com', NULL, '$2y$10$nXDL/E77d7099e8Mnqt36eENcmV4OcXj0uHlf6bNFQ2Xu5R9PjLJm', NULL, '2021-01-05 04:01:53', '2021-01-05 04:01:53', NULL),
(7, '', '', '', 'yoga@gmail.com', NULL, '$2y$10$cyuUAn13vzLiWgWvTquEo.t.vKIlk1RXIbwMGuQ2zGxIZCyXgCCgi', NULL, '2021-01-05 04:03:12', '2021-01-05 04:03:12', NULL),
(8, 'Nyoma', 'Deddy', '1609853116.jpg', 'deddy@gmail.com', NULL, '$2y$10$zTk4sVWPrPoIvIlgxaiofOKnHPMr2BcuKMK01CY4bTqHu8jxuyh2K', NULL, '2021-01-05 04:07:15', '2021-01-05 06:43:26', NULL),
(10, 'Yogi', 'Mulyana', '1610026239.jpg', 'yogi@gmail.com', NULL, '$2y$10$Xd/A7MwBsngWzMJ7hB2NReNIHMs4uSR9bGKzkHjBEkKOkioT.J8oi', NULL, '2021-01-07 06:30:23', '2021-01-07 06:30:39', NULL),
(11, 'Daniel', 'Reza', '1610104858.jpg', 'danielsyahreza@yahoo.co.id', NULL, '$2y$10$KCYXTbI8t97yGGbmI0ca5OxO13RQFKO4SWS8mCIQgHqCw.IRyYLd6', NULL, '2021-01-07 08:23:13', '2021-01-08 04:20:58', 'fCSuCf61R9ei9LHrOa6UEg:APA91bHCScdkbBgxJTTtwS2f4uL4ZeGsqdRGRmdPjm8YaUACBJTLAX67OPnQyNG0S7uNb9QuRyG-rZqj8qQJmHUCWQnSbtVUdnAWNtLCaoBiVAE64SwXKKR6o52OjkVZ2r1OGE-O4q4T'),
(12, 'Yoga', 'Pranatha', '1610104025.jpg', 'putu@gmail.com', NULL, '$2y$10$zetCr3x4yA887/2EbFzv2uWxbY9ldUkBpmPqRLvxSkInNbcVAMdfy', NULL, '2021-01-08 04:06:20', '2021-01-08 04:07:33', 'fqO05I7BR9CKsPqDslvAmZ:APA91bFK9TtQofH6Qr3qYG8Wb2J-RNBzO7a2bpPpaoRXGIXTrAfYI3ZRYO39SiO2Vlow4DwM84WgjYqRkmgbhACSPPY1zmqBy-T-07FJeFik18qVm2aFXL1wfa4Z8TUt8qll0uZbvoK4'),
(13, 'Iswari', 'Anggie', '', 'anggieisw@gmail.com', NULL, '$2y$10$gEXOX8mW20SVyHThRH9/Fe4d5Tcd1Cmph7JAANCOzJtx0mz5WH3OO', NULL, '2021-01-08 04:12:32', '2021-01-08 04:36:56', NULL);

--
-- Indexes for dumped tables
--

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
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
