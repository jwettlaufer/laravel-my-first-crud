-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 06, 2020 at 04:00 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `my_first_crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_02_27_235642_create_tweets_table', 1),
(5, '2020_03_05_234021_create_teams_table', 1),
(6, '2020_03_06_005933_create_teams_user_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'blue', '2020-03-06 09:36:13', '2020-03-06 09:36:13'),
(2, 'teal', '2020-03-06 09:36:13', '2020-03-06 09:36:13'),
(3, 'red', '2020-03-06 09:36:13', '2020-03-06 09:36:13'),
(4, 'fuchsia', '2020-03-06 09:36:13', '2020-03-06 09:36:13'),
(5, 'white', '2020-03-06 09:36:13', '2020-03-06 09:36:13'),
(6, 'olive', '2020-03-06 09:36:13', '2020-03-06 09:36:13'),
(7, 'yellow', '2020-03-06 09:36:13', '2020-03-06 09:36:13'),
(8, 'pink', '2020-03-06 09:36:13', '2020-03-06 09:36:13'),
(9, 'purple', '2020-03-06 09:36:13', '2020-03-06 09:36:13'),
(10, 'gray', '2020-03-06 09:36:13', '2020-03-06 09:36:13'),
(11, 'maroon', '2020-03-06 09:36:13', '2020-03-06 09:36:13'),
(12, 'gold', '2020-03-06 09:36:13', '2020-03-06 09:36:13'),
(13, 'green', '2020-03-06 09:36:13', '2020-03-06 09:36:13'),
(14, 'silver', '2020-03-06 09:36:13', '2020-03-06 09:36:13'),
(15, 'navy', '2020-03-06 09:36:13', '2020-03-06 09:36:13');

-- --------------------------------------------------------

--
-- Table structure for table `teams_user`
--

CREATE TABLE `teams_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `teams_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams_user`
--

INSERT INTO `teams_user` (`id`, `teams_id`, `user_id`) VALUES
(1, 1, 3),
(2, 2, 4),
(3, 3, 11),
(4, 4, 6),
(5, 5, 13),
(6, 6, 7),
(7, 7, 8),
(8, 8, 3),
(9, 9, 1),
(10, 10, 13),
(11, 11, 6),
(12, 12, 7),
(13, 13, 4),
(14, 14, 11),
(15, 15, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tweets`
--

CREATE TABLE `tweets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Ilene Treutel', 'roob.jennings@hotmail.com', NULL, 'password', NULL, '2020-03-06 09:36:13', '2020-03-06 09:36:13'),
(2, 'Loyce Jast', 'lillie.rutherford@yahoo.com', NULL, 'password', NULL, '2020-03-06 09:36:13', '2020-03-06 09:36:13'),
(3, 'Prof. Kathryne Daugherty', 'agustin.durgan@yahoo.com', NULL, 'password', NULL, '2020-03-06 09:36:13', '2020-03-06 09:36:13'),
(4, 'Dr. Cooper Lakin III', 'shanel77@gmail.com', NULL, 'password', NULL, '2020-03-06 09:36:13', '2020-03-06 09:36:13'),
(5, 'Prof. Elvie Bartell', 'xlittle@hotmail.com', NULL, 'password', NULL, '2020-03-06 09:36:13', '2020-03-06 09:36:13'),
(6, 'Edna Wiza PhD', 'qrogahn@goodwin.net', NULL, 'password', NULL, '2020-03-06 09:36:13', '2020-03-06 09:36:13'),
(7, 'Thad Morissette', 'rozella.lebsack@nienow.com', NULL, 'password', NULL, '2020-03-06 09:36:13', '2020-03-06 09:36:13'),
(8, 'Tyler Swaniawski', 'verner.block@hotmail.com', NULL, 'password', NULL, '2020-03-06 09:36:13', '2020-03-06 09:36:13'),
(9, 'Armando Bosco', 'trobel@langworth.com', NULL, 'password', NULL, '2020-03-06 09:36:13', '2020-03-06 09:36:13'),
(10, 'Jasmin Hodkiewicz', 'hillary.bahringer@yahoo.com', NULL, 'password', NULL, '2020-03-06 09:36:13', '2020-03-06 09:36:13'),
(11, 'Soledad Goyette', 'brekke.karen@yost.biz', NULL, 'password', NULL, '2020-03-06 09:36:13', '2020-03-06 09:36:13'),
(12, 'Dr. Omari Franecki Jr.', 'akassulke@kling.info', NULL, 'password', NULL, '2020-03-06 09:36:13', '2020-03-06 09:36:13'),
(13, 'Geoffrey Berge', 'wdubuque@yahoo.com', NULL, 'password', NULL, '2020-03-06 09:36:13', '2020-03-06 09:36:13'),
(14, 'Ms. Madelynn Baumbach', 'wprice@gmail.com', NULL, 'password', NULL, '2020-03-06 09:36:13', '2020-03-06 09:36:13'),
(15, 'Jaida Lubowitz II', 'xvolkman@hotmail.com', NULL, 'password', NULL, '2020-03-06 09:36:13', '2020-03-06 09:36:13'),
(16, 'Jenny', 'jenny@gmail.com', NULL, '$2y$10$sMrKGUkX5KhxbyY/qjoQseYgtSpQJnHqyLaEB8leREyfZMiJF89ai', NULL, '2020-03-06 09:42:25', '2020-03-06 09:42:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams_user`
--
ALTER TABLE `teams_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tweets`
--
ALTER TABLE `tweets`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `teams_user`
--
ALTER TABLE `teams_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tweets`
--
ALTER TABLE `tweets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
