-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2022 at 12:54 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final_test`
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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(4, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(5, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(7, '2016_06_01_000004_create_oauth_clients_table', 2),
(8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(10, '2022_10_23_123956_create_varitions_table', 3),
(11, '2022_10_23_153714_create_products_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0bbe38193db5a4558aae9b84a376f9d7ee40b078c96e58defd6d20a6c201a8728b0d39dedbd40941', 2, 1, 'Personal Access Token', '[]', 0, '2022-10-23 05:02:04', '2022-10-23 05:02:04', '2023-10-23 11:02:04'),
('1afee4eafa1968f765ff810c085cdc1be8fa85f4ee79b46dd9cfb986ec4c17bead4fd5019c1ebf17', 3, 1, 'Personal Access Token', '[]', 0, '2022-10-23 08:52:54', '2022-10-23 08:52:54', '2023-10-23 14:52:54'),
('22936c22ff60dea2d8f41451659363cb8ce455e6d1eb0a7b6927e1d9ddee20cb3ad4931267822ee4', 3, 1, 'Personal Access Token', '[]', 0, '2022-10-23 05:25:38', '2022-10-23 05:25:38', '2023-10-23 11:25:38'),
('2d30912da1205bda8ff3611fb1e166d16400339b781ad347b17dc9f40427a83816735d7e34c83911', 3, 1, 'Personal Access Token', '[]', 0, '2022-10-23 13:25:54', '2022-10-23 13:25:54', '2023-10-23 19:25:54'),
('3c68dfcf1b74499fe39ff720d7f95a3ac7e7c8dd7b892c0137187e301f05d7f9421fc3a9b4a912c5', 2, 1, 'Personal Access Token', '[]', 0, '2022-10-23 04:35:29', '2022-10-23 04:35:29', '2023-10-23 10:35:29'),
('6aa2b7740f6e14893b900067b6b50d534937ffc96c036db5f4a7ce075a9720c1761baf032fc01da4', 3, 1, 'Personal Access Token', '[]', 0, '2022-10-23 05:53:16', '2022-10-23 05:53:16', '2023-10-23 11:53:16'),
('774c05555191ac4458acc80c38c0fdb3c5f11186f994fd7872f518e20a03745afb5243efafc3aa2e', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-23 04:55:27', '2022-10-23 04:55:27', '2023-10-23 10:55:27'),
('86c928422cc13d5edc7be930beee8245d6e690665dad46e8cacd0b1bf973528050fe9927f2cca3b0', 3, 1, 'Personal Access Token', '[]', 0, '2022-10-23 06:06:49', '2022-10-23 06:06:49', '2023-10-23 12:06:49'),
('a2d77b0d0a176fe60e630d0b1e37e761ce7bd430af0225da91d8e47a421f40d6e3ce56464e501b06', 3, 1, 'Personal Access Token', '[]', 0, '2022-10-23 06:01:21', '2022-10-23 06:01:21', '2023-10-23 12:01:21'),
('b22a09ea0467e6496fb060c650280d65849a4c7e094ca951921b3ca8c90b569775193fc25cf0a05c', 3, 1, 'Personal Access Token', '[]', 0, '2022-10-23 06:00:17', '2022-10-23 06:00:17', '2023-10-23 12:00:17'),
('bb4a2002ae7ed2e6ee058533df1eff5492e99388d169caa6468e899d18012ba2a92c35811cfe0641', 3, 1, 'Personal Access Token', '[]', 0, '2022-10-23 08:47:18', '2022-10-23 08:47:18', '2023-10-23 14:47:18'),
('f47c2cc41d40a164e35da228f528c10430c089738f9ae27b262024886bcec93439b664f7aa505c61', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-23 04:42:40', '2022-10-23 04:42:40', '2023-10-23 10:42:40'),
('fe557ab3db178884b4d5b31c6f4e73bedb2d9c94d7f78ab8f0161cdaf726756e4a4237559d34fb30', 3, 1, 'Personal Access Token', '[]', 0, '2022-10-23 05:06:17', '2022-10-23 05:06:17', '2023-10-23 11:06:17');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '9AMdM7IzX76p2J4jYE9nspsIqfK9J54rb5KpzaH2', NULL, 'http://localhost', 1, 0, 0, '2022-10-22 20:35:00', '2022-10-22 20:35:00'),
(2, NULL, 'Laravel Password Grant Client', 'mxMuC8HxPPHcETJHFFkQ3ReuW6WV0utffoAiPELW', 'users', 'http://localhost', 0, 1, 0, '2022-10-22 20:35:00', '2022-10-22 20:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-10-22 20:35:00', '2022-10-22 20:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `variation_id` bigint(20) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `details`, `price`, `variation_id`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Iphone14', 'Good camera and storage', 160000, 2, 'ACTIVE', '2022-10-23 22:21:31', '2022-10-23 22:21:31'),
(4, 'Samsung A50', 'Good camera and storage', 45000, 2, 'ACTIVE', '2022-10-23 23:58:46', '2022-10-23 23:58:46'),
(5, 'Nokia-240', 'Strong sound quality', 3450, 1, 'ACTIVE', '2022-10-24 02:37:09', '2022-10-24 02:37:09'),
(6, 'Smart TV', 'Clear Screen', 50000, 6, 'ACTIVE', '2022-10-24 04:40:27', '2022-10-24 04:40:27'),
(7, 'HP Laptop', 'Touch Screen', 90000, 3, 'ACTIVE', '2022-10-24 04:41:44', '2022-10-24 04:41:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `phone`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'saikat1', 'saikat1@gmail.com', '01388886666', NULL, '$2y$10$QxDoFWXIsgmYPxJiY25JAeRUyHNnqKxt3BvuByjMtWhDro0aQa0.a', NULL, '2022-10-22 21:06:27', '2022-10-22 21:06:27'),
(2, 'saikat2', 'saikat2@gmail.com', '01388888888', NULL, '$2y$10$yQWcKhT3LF0ecv3n3D1hre8.xrtwXoxGIRLWN6InWOody2DnnWH1a', NULL, '2022-10-23 04:21:11', '2022-10-23 04:21:11'),
(3, 'saikat3', 'saikat3@gmail.com', '01388777777', NULL, '$2y$10$dlyTlaZlYq7R5xrFj1PYf.O/1.aJg3le/Y.gCvj9NbeSRv9aekVuu', NULL, '2022-10-23 05:05:48', '2022-10-23 05:05:48');

-- --------------------------------------------------------

--
-- Table structure for table `varitions`
--

CREATE TABLE `varitions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `varitions`
--

INSERT INTO `varitions` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Feature phone', NULL, NULL),
(2, 'Smart phone', NULL, NULL),
(3, 'Laptop', NULL, NULL),
(4, 'Desktop', NULL, NULL),
(5, 'Watch', NULL, NULL),
(6, 'Smart TV', NULL, NULL);

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
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Indexes for table `varitions`
--
ALTER TABLE `varitions`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `varitions`
--
ALTER TABLE `varitions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
