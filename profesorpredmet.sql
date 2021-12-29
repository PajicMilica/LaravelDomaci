-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2021 at 09:08 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `profesorpredmet`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(21, '2014_10_12_000000_create_users_table', 1),
(22, '2014_10_12_100000_create_password_resets_table', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2021_12_20_201819_create_profesors_table', 1),
(26, '2021_12_20_201835_create_predmets_table', 1),
(27, '2021_12_20_202013_create_profesor_predmets_table', 1),
(28, '2021_12_20_232328_add_column_predmet_id_to_profesor_predmet_table', 1),
(29, '2021_12_21_210702__add_column_to_profesor_table', 1),
(30, '2021_12_21_221534__make_predmet_espb__nullable', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `predmets`
--

CREATE TABLE `predmets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `espb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `predmets`
--

INSERT INTO `predmets` (`id`, `name`, `created_at`, `updated_at`, `espb`) VALUES
(1, 'Matematika 1', NULL, NULL, '6'),
(2, 'Projektovanje softvera', NULL, NULL, '3'),
(3, 'Internet tehnologije', NULL, NULL, '4'),
(4, 'Multimediji', NULL, NULL, '5'),
(5, 'Modelovanje poslovnh procesa', NULL, NULL, '5'),
(6, 'Ekonomija', NULL, NULL, '6');

-- --------------------------------------------------------

--
-- Table structure for table `profesors`
--

CREATE TABLE `profesors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profesors`
--

INSERT INTO `profesors` (`id`, `name`, `lastName`, `created_at`, `updated_at`, `gender`) VALUES
(1, 'Miloš', 'Marković', NULL, NULL, 'muški'),
(2, 'Nikola', 'Petrović', NULL, NULL, 'muški'),
(3, 'Ana', 'Mitrović', NULL, NULL, 'ženski'),
(4, 'Nevena', 'Ristić', NULL, NULL, 'ženski'),
(5, 'Dušan', 'Lazić', NULL, NULL, 'muški');

-- --------------------------------------------------------

--
-- Table structure for table `profesor_predmets`
--

CREATE TABLE `profesor_predmets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profesor_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pusblished_at` timestamp NULL DEFAULT NULL,
  `predmet_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profesor_predmets`
--

INSERT INTO `profesor_predmets` (`id`, `profesor_id`, `created_at`, `updated_at`, `pusblished_at`, `predmet_id`) VALUES
(1, 5, NULL, NULL, NULL, 2),
(2, 1, NULL, NULL, NULL, 3),
(3, 3, NULL, NULL, NULL, 5),
(4, 2, NULL, NULL, NULL, 6),
(5, 4, NULL, NULL, NULL, 4),
(6, 2, '2021-12-28 20:50:01', '2021-12-28 20:50:01', NULL, 3),
(7, 2, '2021-12-28 20:51:49', '2021-12-28 20:51:49', NULL, 3),
(8, 4, '2021-12-28 20:52:35', '2021-12-28 22:10:36', NULL, 3);

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
(1, 'Trystan Krajcik', 'trevion78@example.com', '2021-12-28 17:33:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ln5csHF9y4', '2021-12-28 17:33:51', '2021-12-28 17:33:51'),
(2, 'Prof. Lilla Howell', 'kstokes@example.org', '2021-12-28 17:33:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HnZdCf1W4T', '2021-12-28 17:33:51', '2021-12-28 17:33:51'),
(3, 'Dr. Aron Bayer', 'gaylord23@example.net', '2021-12-28 17:33:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eA9JkdkQTR', '2021-12-28 17:33:51', '2021-12-28 17:33:51'),
(4, 'Dr. Alfonzo Hill', 'shanel.pagac@example.net', '2021-12-28 17:33:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ijvqheDNvf', '2021-12-28 17:33:51', '2021-12-28 17:33:51'),
(5, 'Andreanne Orn', 'katharina.hessel@example.com', '2021-12-28 17:33:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SCGwiC59Qe', '2021-12-28 17:33:51', '2021-12-28 17:33:51'),
(6, 'Meta Pouros', 'ulises86@example.net', '2021-12-28 17:33:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '33kqd7ihBo', '2021-12-28 17:33:51', '2021-12-28 17:33:51'),
(7, 'Milica', 'milica123@gmail.com', NULL, '$2y$10$5Ece3wFCAaoK6bPw8EGDYu1i2yRAPZ0S6rOuK9nrqSAqzhOqJmZnW', NULL, '2021-12-28 20:44:25', '2021-12-28 20:44:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `predmets`
--
ALTER TABLE `predmets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `predmets_id_unique` (`id`);

--
-- Indexes for table `profesors`
--
ALTER TABLE `profesors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profesors_id_unique` (`id`);

--
-- Indexes for table `profesor_predmets`
--
ALTER TABLE `profesor_predmets`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `predmets`
--
ALTER TABLE `predmets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `profesors`
--
ALTER TABLE `profesors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `profesor_predmets`
--
ALTER TABLE `profesor_predmets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
