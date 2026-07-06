-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 06, 2026 at 06:42 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_inst4class`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `room_id` bigint UNSIGNED NOT NULL,
  `booking_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `participant_count` int NOT NULL DEFAULT '0',
  `purpose` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `ktm_photo_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `user_id`, `room_id`, `booking_date`, `start_time`, `end_time`, `participant_count`, `purpose`, `status`, `ktm_photo_path`, `created_at`, `updated_at`) VALUES
(1, 2, 2, '2026-06-18', '10:00:00', '10:30:00', 13, 'kerkel', 'approved', 'ktm_photos/bncq56R3cpRWWF2J8E3j2AaTiOIx05jgqDgazFmy.jpg', '2026-06-17 18:41:31', '2026-06-17 18:42:42'),
(2, 2, 1, '2026-06-18', '10:00:00', '11:00:00', 9, 'kerkel', 'approved', 'ktm_photos/YXGEFY7Ok9mLyNaO9p1Yn4BRSD3MetuU1v03z6nU.jpg', '2026-06-17 19:46:18', '2026-06-17 19:50:10'),
(3, 2, 1, '2026-06-18', '12:00:00', '14:00:00', 20, 'kerja kelompok', 'rejected', 'ktm_photos/RgaKFrrtNgw1ho7jD0TkDGidVueGvCiIpzfvl4Jh.jpg', '2026-06-17 19:48:52', '2026-06-17 19:50:03'),
(4, 2, 1, '2026-06-18', '11:30:00', '12:00:00', 16, 'kerja kelompok', 'active', 'ktm_photos/CQo0rAP37KmR7nEZ4ImuV70abK7PJ1P1XYSpn9r5.jpg', '2026-06-17 20:08:08', '2026-06-17 20:08:08');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` smallint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_06_14_141143_create_personal_access_tokens_table', 1),
(5, '2026_06_14_141326_create_rooms_table', 1),
(6, '2026_06_14_141944_create_bookings_table', 1),
(7, '2026_06_14_144059_create_schedules_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint UNSIGNED NOT NULL,
  `room_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `floor` int NOT NULL,
  `capacity` int NOT NULL,
  `status` enum('available','in_use','cleaning') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'available',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `room_name`, `floor`, `capacity`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Ruang 101', 1, 40, 'available', '2026-06-17 18:39:06', '2026-06-17 18:39:06'),
(2, 'Ruang 102', 1, 40, 'available', '2026-06-17 18:39:06', '2026-06-17 18:39:06'),
(3, 'Ruang 103', 1, 40, 'available', '2026-06-17 18:39:06', '2026-06-17 18:39:06'),
(4, 'Ruang 104', 1, 40, 'available', '2026-06-17 18:39:06', '2026-06-17 18:39:06'),
(5, 'Ruang 105', 1, 40, 'available', '2026-06-17 18:39:06', '2026-06-17 18:39:06'),
(6, 'Ruang 106', 1, 40, 'available', '2026-06-17 18:39:06', '2026-06-17 18:39:06'),
(7, 'Ruang 107', 1, 40, 'available', '2026-06-17 18:39:06', '2026-06-17 18:39:06'),
(8, 'Ruang 108', 1, 40, 'available', '2026-06-17 18:39:06', '2026-06-17 18:39:06'),
(9, 'Ruang 109', 1, 40, 'available', '2026-06-17 18:39:06', '2026-06-17 18:39:06'),
(10, 'Ruang 110', 1, 40, 'available', '2026-06-17 18:39:06', '2026-06-17 18:39:06'),
(11, 'Ruang 111', 1, 40, 'available', '2026-06-17 18:39:06', '2026-06-17 18:39:06'),
(12, 'Ruang 112', 1, 40, 'available', '2026-06-17 18:39:06', '2026-06-17 18:39:06'),
(13, 'Ruang 113', 1, 40, 'available', '2026-06-17 18:39:06', '2026-06-17 18:39:06'),
(14, 'Ruang 114', 1, 40, 'available', '2026-06-17 18:39:06', '2026-06-17 18:39:06'),
(15, 'Ruang 115', 1, 40, 'available', '2026-06-17 18:39:06', '2026-06-17 18:39:06'),
(16, 'Ruang 116', 1, 40, 'available', '2026-06-17 18:39:06', '2026-06-17 18:39:06'),
(17, 'Ruang 117', 1, 40, 'available', '2026-06-17 18:39:06', '2026-06-17 18:39:06'),
(18, 'Ruang 118', 1, 40, 'available', '2026-06-17 18:39:06', '2026-06-17 18:39:06'),
(19, 'Ruang 119', 1, 40, 'available', '2026-06-17 18:39:06', '2026-06-17 18:39:06'),
(20, 'Ruang 120', 1, 40, 'available', '2026-06-17 18:39:06', '2026-06-17 18:39:06'),
(21, 'Ruang 201', 2, 40, 'available', '2026-06-17 18:39:06', '2026-06-17 18:39:06'),
(22, 'Ruang 202', 2, 40, 'available', '2026-06-17 18:39:06', '2026-06-17 18:39:06'),
(23, 'Ruang 203', 2, 40, 'available', '2026-06-17 18:39:06', '2026-06-17 18:39:06'),
(24, 'Ruang 204', 2, 40, 'available', '2026-06-17 18:39:06', '2026-06-17 18:39:06'),
(25, 'Ruang 205', 2, 40, 'available', '2026-06-17 18:39:06', '2026-06-17 18:39:06'),
(26, 'Ruang 206', 2, 40, 'available', '2026-06-17 18:39:06', '2026-06-17 18:39:06'),
(27, 'Ruang 207', 2, 40, 'available', '2026-06-17 18:39:06', '2026-06-17 18:39:06'),
(28, 'Ruang 208', 2, 40, 'available', '2026-06-17 18:39:06', '2026-06-17 18:39:06'),
(29, 'Ruang 209', 2, 40, 'available', '2026-06-17 18:39:06', '2026-06-17 18:39:06'),
(30, 'Ruang 210', 2, 40, 'available', '2026-06-17 18:39:06', '2026-06-17 18:39:06'),
(31, 'Ruang 211', 2, 40, 'available', '2026-06-17 18:39:06', '2026-06-17 18:39:06'),
(32, 'Ruang 212', 2, 40, 'available', '2026-06-17 18:39:06', '2026-06-17 18:39:06'),
(33, 'Ruang 213', 2, 40, 'available', '2026-06-17 18:39:06', '2026-06-17 18:39:06'),
(34, 'Ruang 214', 2, 40, 'available', '2026-06-17 18:39:06', '2026-06-17 18:39:06'),
(35, 'Ruang 215', 2, 40, 'available', '2026-06-17 18:39:06', '2026-06-17 18:39:06'),
(36, 'Ruang 216', 2, 40, 'available', '2026-06-17 18:39:06', '2026-06-17 18:39:06'),
(37, 'Ruang 217', 2, 40, 'available', '2026-06-17 18:39:06', '2026-06-17 18:39:06'),
(38, 'Ruang 218', 2, 40, 'available', '2026-06-17 18:39:06', '2026-06-17 18:39:06'),
(39, 'Ruang 219', 2, 40, 'available', '2026-06-17 18:39:06', '2026-06-17 18:39:06'),
(40, 'Ruang 220', 2, 40, 'available', '2026-06-17 18:39:06', '2026-06-17 18:39:06');

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint UNSIGNED NOT NULL,
  `room_id` bigint UNSIGNED NOT NULL,
  `course_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `day_of_week` enum('Monday','Tuesday','Wednesday','Thursday','Friday','Saturday') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `room_id`, `course_name`, `class_code`, `start_time`, `end_time`, `day_of_week`, `created_at`, `updated_at`) VALUES
(1, 1, 'Sistem Operasi Xinu', 'TI-23-01', '08:30:00', '11:30:00', 'Monday', '2026-06-17 18:39:06', '2026-06-17 18:39:06'),
(2, 1, 'Pengantar Pemrograman', 'IF-25-02', '13:30:00', '16:30:00', 'Monday', '2026-06-17 18:39:06', '2026-06-17 18:39:06'),
(3, 2, 'Pemodelan Basis Data', 'RPL-24-03', '09:30:00', '12:30:00', 'Monday', '2026-06-17 18:39:06', '2026-06-17 18:39:06'),
(4, 2, 'Keamanan Siber', 'TI-23-02', '14:00:00', '17:00:00', 'Monday', '2026-06-17 18:39:06', '2026-06-17 18:39:06'),
(5, 21, 'Sistem Tertanam', 'TE-23-01', '10:30:00', '13:30:00', 'Monday', '2026-06-17 18:39:06', '2026-06-17 18:39:06'),
(6, 21, 'Kalkulus Lanjut', 'TI-25-03', '14:30:00', '17:30:00', 'Monday', '2026-06-17 18:39:06', '2026-06-17 18:39:06');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','mahasiswa') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'mahasiswa',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nim` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `study_program` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ktm_photo_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `name`, `nim`, `study_program`, `whatsapp_number`, `ktm_photo_path`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'adamhs', '$2y$12$4imysUiLRhMy/gx4ChesEeXgTPIe7svQXJOvykmpwv0.mYH37Kgxa', 'admin', 'Adam Admin', NULL, NULL, NULL, NULL, NULL, '2026-06-17 18:39:06', '2026-06-17 18:39:06'),
(2, 'ahmaddewa', '$2y$12$TUerXCy/3OeG3zasP6P88.Mk8jgFJYtXeMcZV/yk06WNfGHB7Qkty', 'mahasiswa', 'Ahmad Dewa', '1301190001', 'Teknologi Informasi', '081234567890', NULL, NULL, '2026-06-17 18:39:06', '2026-06-17 18:39:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_user_id_foreign` (`user_id`),
  ADD KEY `bookings_room_id_foreign` (`room_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`),
  ADD KEY `failed_jobs_connection_queue_failed_at_index` (`connection`,`queue`,`failed_at`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedules_room_id_foreign` (`room_id`);

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
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_nim_unique` (`nim`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `schedules`
--
ALTER TABLE `schedules`
  ADD CONSTRAINT `schedules_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
