-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 21 Tem 2022, 11:47:46
-- Sunucu sürümü: 10.4.20-MariaDB
-- PHP Sürümü: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `deneme`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `failed_jobs`
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
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2022_07_17_075504_create_post_table', 2),
(5, '2022_07_17_084140_create_users_table', 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personal_access_tokens`
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
-- Tablo için tablo yapısı `post`
--

CREATE TABLE `post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `post`
--

INSERT INTO `post` (`id`, `users_id`, `full_name`, `email_address`, `file`, `file_link`, `created_at`, `updated_at`) VALUES
(1, 1, 'ufuk demirel', 'ufukdemirel234@gmail.com', '62d3c1869b2d5.jpg', 'deneme/copy/62d3c1869b2d5.jpg', '2022-07-17 05:00:06', NULL),
(2, 2, 'deniz demirel', 'denizdemirel@gmail.com', '62d3c1d2312c6.JPG', 'deneme/copy/62d3c1d2312c6.JPG', '2022-07-17 05:01:22', NULL),
(3, NULL, 'ufuk demirel', 'ufukdemirel234@gmail.com', '62d3d381c1edd.jpg', 'deneme/copy/62d3d381c1edd.jpg', '2022-07-17 06:16:49', NULL),
(4, NULL, 'ufuk demirel', 'ufukdemirel234@gmail.com', '62d3d3a711cfa.jpg', 'deneme/copy/62d3d3a711cfa.jpg', '2022-07-17 06:17:27', NULL),
(5, NULL, 'ufuk demirel', 'ufukdemirel234@gmail.com', '62d3d3e7e236b.jpg', 'deneme/copy/62d3d3e7e236b.jpg', '2022-07-17 06:18:31', NULL),
(6, NULL, 'ufuk demirel', 'ufukdemirel234@gmail.com', '62d3d3fb537aa.JPG', 'deneme/copy/62d3d3fb537aa.JPG', '2022-07-17 06:18:51', NULL),
(7, NULL, 'ufuk demirel', 'ufukdemirel234@gmail.com', '62d3d4fc6b82e.jpg', 'deneme/copy/62d3d4fc6b82e.jpg', '2022-07-17 06:23:08', NULL),
(8, NULL, 'ufuk demirel', 'ufukdemirel234@gmail.com', '62d3d51f1bd1b.jpg', 'deneme/copy/62d3d51f1bd1b.jpg', '2022-07-17 06:23:43', NULL),
(9, NULL, 'ufuk demirel', 'ufukdemirel234@gmail.com', '62d3d566531d4.jpg', 'deneme/copy/62d3d566531d4.jpg', '2022-07-17 06:24:54', NULL),
(10, NULL, 'ufuk demirel', 'ufukdemirel234@gmail.com', '62d3d6ced6b8b.JPG', 'deneme/copy/62d3d6ced6b8b.JPG', '2022-07-17 06:30:54', NULL),
(11, NULL, 'ufuk demirel', 'ufukdemirel456@gmail.com', '62d3dcd4c0b41.JPG', 'deneme/copy/62d3dcd4c0b41.JPG', '2022-07-17 06:56:36', NULL),
(12, NULL, 'ufuk demirel', 'ufukdemirel234@gmail.com', '62d422e5a8ffb.jpg', 'deneme/copy/62d422e5a8ffb.jpg', '2022-07-17 11:55:33', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_link` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission_level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `file_link`, `permission_level`, `created_at`, `updated_at`) VALUES
(1, 'ufukdemirel234@gmail.com', '$2y$10$ZOFdB1AixMIlT4ZWOxudw.yOIU9FTgZ4zIg7zpFYEX4E9kZRwp9LO', 'deneme/copy/62d422e5a8ffb.jpg', 'user', NULL, NULL),
(3, 'ufukdemirel456@gmail.com', '$2y$10$BarBATn2MaLmimNMzMphK.MQhhDwvOydaG6asabWlu79VPRKU.Mb6', 'deneme/copy/62d3dcd4c0b41.JPG', 'user', NULL, NULL);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Tablo için indeksler `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Tablo için indeksler `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `post`
--
ALTER TABLE `post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
