-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 30, 2024 at 12:57 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alqowybwa`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'HTML', 'html', 'icons/iUcGeGVTJYjmpJC33zqQJtwjhWMfTA2Vcsm7n3Bk.png', NULL, '2024-04-18 22:30:41', '2024-04-19 02:37:46'),
(2, 'CSS', 'css', 'icons/OX9EFiDFL8rF7hpgNoTpTWhsk3IhshqLY6BjDCIo.png', NULL, '2024-04-18 22:34:08', '2024-04-18 22:34:08'),
(3, 'JavaScript', 'javascript', 'icons/EWtVUkU3mJPANfQIIOOGBNj1rmI1jzRSBIGzmY5P.png', NULL, '2024-04-18 22:45:01', '2024-04-18 22:45:01'),
(4, 'HTML X', 'html-x', 'icons/MPKIwztVYip5eUlEnwEJwZoTS4ksBVu0kTHRdWv3.png', '2024-04-19 02:46:40', '2024-04-18 22:45:40', '2024-04-19 02:46:40'),
(5, 'Digital Marketing', 'digital-marketing', 'icons/m1UNCq4R2Br9j06iOQb5Tj6RxiFUN2Z1fqhEbJKD.png', NULL, '2024-04-18 23:03:20', '2024-04-18 23:03:20');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path_trailer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `slug`, `path_trailer`, `about`, `thumbnail`, `teacher_id`, `category_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Latihan Dasar HTML', 'latihan-dasar-html', 'iFw-AB4iAnQ', 'HTML, singkatan dari Hypertext Markup Language, adalah bahasa markup yang digunakan untuk membuat dan memformat halaman web. Ini merupakan fondasi dari hampir semua halaman web di internet. HTML menggunakan tag-tag untuk menandai elemen-elemen pada halaman web, seperti judul, paragraf, gambar, tautan, dan lainnya. Dengan HTML, pengguna dapat membuat struktur dasar sebuah halaman web dan menambahkan konten ke dalamnya. Ini adalah bahasa yang penting dipahami oleh pengembang web dan merupakan langkah pertama dalam pembuatan halaman web yang interaktif dan informatif.', 'thumbnails/ALvBvA5z9FP9iRmKUqePrib7yj0XFfZEhVaVCsDd.png', 3, 1, NULL, '2024-04-19 08:13:24', '2024-04-19 08:13:24'),
(2, 'tes', 'tes', 'tes aja ini mah', 'blablaballbbaaa', 'thumbnails/LFTZnHyZ8a3X3EsF12rexid4fQOddjgttALIhtiO.png', 3, 5, '2024-04-19 08:19:50', '2024-04-19 08:16:53', '2024-04-19 08:19:50'),
(3, 'Latihan Dasar CSS', 'latihan-dasar-css', 'B17ATAt9vA', 'CSS, atau Cascading Style Sheets, adalah bahasa yang digunakan untuk mengontrol tampilan dan tata letak elemen-elemen HTML pada halaman web. Dengan CSS, Anda dapat menyesuaikan warna, ukuran, jenis huruf, jarak, dan banyak aspek visual lainnya dari elemen-elemen halaman web. Ini memungkinkan Anda untuk menciptakan desain yang menarik dan konsisten di seluruh situs web Anda, serta meningkatkan pengalaman pengguna secara keseluruhan. CSS bekerja secara terpisah dari HTML, memungkinkan pengembang untuk memisahkan struktur konten dari presentasi visual, sehingga memudahkan pemeliharaan dan pengembangan halaman web yang kompleks.', 'thumbnails/ACpfmXg0uLtIYbkGKi6i470tNOd50lRtTewQZ1ye.png', 3, 2, NULL, '2024-04-19 08:24:53', '2024-04-19 08:24:53'),
(4, 'Instalasi Bootstrap', 'instalasi-bootstrap', 'pJpnMyFNaz0', 'Bootstrap adalah kerangka kerja front-end yang populer untuk pengembangan web responsif dan mobile-first. Dikembangkan oleh Twitter, Bootstrap menyediakan kumpulan alat dan gaya desain yang siap pakai, termasuk tata letak, komponen antarmuka pengguna, dan plugin JavaScript, yang memudahkan pengembang untuk membuat situs web yang konsisten dan menarik dengan cepat. Dengan Bootstrap, pengembang dapat menghemat waktu dan usaha dalam merancang tampilan yang responsif dan estetis, serta memastikan bahwa situs web mereka berfungsi dengan baik di berbagai perangkat dan ukuran layar.', 'thumbnails/wAkXs2jj7Gl1R5vXyi7Kj1ftvKxtoxsDXKqE4Xcb.png', 3, 2, NULL, '2024-04-19 08:27:59', '2024-04-19 08:27:59'),
(5, 'Latihan Dasar Javascript', 'latihan-dasar-javascript', 'W6NZfCO5SIk', 'JavaScript adalah bahasa pemrograman yang sering digunakan untuk mengembangkan aplikasi web interaktif. Berbeda dengan HTML dan CSS yang fokus pada struktur dan tampilan halaman web, JavaScript memberikan kemampuan dinamis kepada halaman web dengan memungkinkan interaksi pengguna, manipulasi elemen halaman, dan berbagai fungsi lainnya. JavaScript dapat digunakan untuk membuat efek animasi, validasi formulir, pengambilan data dari server, dan banyak lagi. Sebagai bahasa pemrograman yang berjalan di sisi klien (browser), JavaScript memungkinkan pengembang untuk menciptakan pengalaman web yang lebih dinamis dan menarik bagi pengguna.', 'thumbnails/SdtnWGTCsnyhB59vM7PwrMHy9zIkbGVpJmKA51Ua.png', 3, 3, NULL, '2024-04-19 08:31:36', '2024-04-19 08:31:36'),
(6, 'Masih Coba Edit Course HTML', 'masih-coba-edit-course-html', 'W6NZfCO5SIk', '<img src=\"{{ Storage::url($course->thumbnail) }}\" alt=\"\" class=\"rounded-2xl object-cover w-[120px] h-[90px]\">', 'thumbnails/L0n2VaiPkmtEBKyQovrMRvToIIZSyBgmjRIMQMiS.png', 3, 5, '2024-04-19 18:54:27', '2024-04-19 18:51:53', '2024-04-19 18:54:27'),
(7, 'Latihan HTML, CSS', 'latihan-html-css', 'MCVkMmYL-aY', 'Website kedai kopi yang dibuat dengan HTML dan CSS mungkin memiliki tata letak sederhana dengan elemen-elemen seperti header yang menampilkan nama kedai dan mungkin logo, daftar menu kopi dan makanan, informasi kontak seperti alamat dan nomor telepon, serta mungkin beberapa foto suasana kedai kopi. Desainnya mungkin memanfaatkan warna-warna yang hangat dan menenangkan, serta gambar-gambar yang berkaitan dengan kopi untuk menciptakan atmosfir yang cocok.', 'thumbnails/sqQqKeoBjnEm2Pqc6P2vpiIjzoNR4sY9zmfDPlzD.jpg', 3, 1, '2024-04-22 01:46:58', '2024-04-21 09:40:55', '2024-04-22 01:46:58'),
(8, 'Latihan SQL', 'latihan-sql', 'mNV8ADh7Rdc', 'aaaaaaaaaaaaaaaaa', 'thumbnails/7orMsFlbTB4XWhUfFAKuW5ZINjYYqmdvPqQQu8MQ.jpg', 4, 5, '2024-04-22 01:47:01', '2024-04-21 09:47:24', '2024-04-22 01:47:01');

-- --------------------------------------------------------

--
-- Table structure for table `course_keypoints`
--

CREATE TABLE `course_keypoints` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_id` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_keypoints`
--

INSERT INTO `course_keypoints` (`id`, `name`, `course_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'menciptakan halaman web yang menarik dan informatif', 1, NULL, '2024-04-19 08:13:24', '2024-04-19 08:13:24'),
(2, 'bahasa markup yang mendefinisikan web itu sendiri', 1, NULL, '2024-04-19 08:13:24', '2024-04-19 08:13:24'),
(3, 'Bangun fondasi yang kuat untuk keberhasilan', 1, NULL, '2024-04-19 08:13:24', '2024-04-19 08:13:24'),
(4, 'langkah pertama dalam pembuatan halaman web', 1, NULL, '2024-04-19 08:13:24', '2024-04-19 08:13:24'),
(5, 'abcbjjkskskls', 2, NULL, '2024-04-19 08:16:53', '2024-04-19 08:16:53'),
(6, 'abcbjjkskskls', 2, NULL, '2024-04-19 08:16:53', '2024-04-19 08:16:53'),
(7, 'abcbjjkskskls', 2, NULL, '2024-04-19 08:16:53', '2024-04-19 08:16:53'),
(8, 'abcbjjkskskls', 2, NULL, '2024-04-19 08:16:53', '2024-04-19 08:16:53'),
(9, 'Kunci untuk menciptakan keindahan di web', 3, '2024-04-26 20:45:27', '2024-04-19 08:24:53', '2024-04-26 20:45:27'),
(10, 'dengan desain yang menawan dan tampilan yang konsisten', 3, '2024-04-26 20:45:27', '2024-04-19 08:24:53', '2024-04-26 20:45:27'),
(11, 'sentuhan visual yang memikat', 3, '2024-04-26 20:45:27', '2024-04-19 08:24:53', '2024-04-26 20:45:27'),
(12, 'buat pengalaman pengguna yang tak terlupakan', 3, '2024-04-26 20:45:27', '2024-04-19 08:24:53', '2024-04-26 20:45:27'),
(13, 'jalur yang cepat dan responsif', 4, '2024-04-26 20:45:08', '2024-04-19 08:27:59', '2024-04-26 20:45:08'),
(14, 'merancang situs web yang indah', 4, '2024-04-26 20:45:08', '2024-04-19 08:27:59', '2024-04-26 20:45:08'),
(15, 'berfungsi dengan mudah, tanpa harus memulai dari awal', 4, '2024-04-26 20:45:08', '2024-04-19 08:27:59', '2024-04-26 20:45:08'),
(16, 'hadirkan pengalaman pengguna yang konsisten di semua perangkat', 4, '2024-04-26 20:45:08', '2024-04-19 08:27:59', '2024-04-26 20:45:08'),
(17, 'Tenaga dinamis', 5, NULL, '2024-04-19 08:31:36', '2024-04-19 08:31:36'),
(18, 'interaktivitas yang memukau', 5, NULL, '2024-04-19 08:31:36', '2024-04-19 08:31:36'),
(19, 'pengalaman yang lebih menarik dan fungsional', 5, NULL, '2024-04-19 08:31:36', '2024-04-19 08:31:36'),
(20, 'pengambilan data dari server', 5, NULL, '2024-04-19 08:31:36', '2024-04-19 08:31:36'),
(21, 'Tenaga dinamis', 6, '2024-04-19 18:54:09', '2024-04-19 18:51:53', '2024-04-19 18:54:09'),
(22, 'interaktivitas yang memukau', 6, '2024-04-19 18:54:09', '2024-04-19 18:51:53', '2024-04-19 18:54:09'),
(23, 'pengalaman yang lebih menarik dan fungsional', 6, '2024-04-19 18:54:09', '2024-04-19 18:51:53', '2024-04-19 18:54:09'),
(24, 'pengambilan data dari server', 6, '2024-04-19 18:54:09', '2024-04-19 18:51:53', '2024-04-19 18:54:09'),
(25, '1', 6, NULL, '2024-04-19 18:54:09', '2024-04-19 18:54:09'),
(26, '2', 6, NULL, '2024-04-19 18:54:09', '2024-04-19 18:54:09'),
(27, '3', 6, NULL, '2024-04-19 18:54:09', '2024-04-19 18:54:09'),
(28, '4', 6, NULL, '2024-04-19 18:54:09', '2024-04-19 18:54:09'),
(29, 'elemen HTML', 7, NULL, '2024-04-21 09:40:55', '2024-04-21 09:40:55'),
(30, 'elemen CSS', 7, NULL, '2024-04-21 09:40:55', '2024-04-21 09:40:55'),
(31, 'daftar menu kopi', 7, NULL, '2024-04-21 09:40:55', '2024-04-21 09:40:55'),
(32, 'suasana kedai kopi', 7, NULL, '2024-04-21 09:40:55', '2024-04-21 09:40:55'),
(33, 'abcbjjkskskls', 8, NULL, '2024-04-21 09:47:24', '2024-04-21 09:47:24'),
(34, '122', 8, NULL, '2024-04-21 09:47:24', '2024-04-21 09:47:24'),
(35, 'abcbjjkskskls', 8, NULL, '2024-04-21 09:47:24', '2024-04-21 09:47:24'),
(36, '1234', 8, NULL, '2024-04-21 09:47:24', '2024-04-21 09:47:24'),
(37, 'jalur yang cepat dan responsif', 4, NULL, '2024-04-26 20:45:08', '2024-04-26 20:45:08'),
(38, 'merancang situs web yang indah', 4, NULL, '2024-04-26 20:45:08', '2024-04-26 20:45:08'),
(39, 'berfungsi dengan mudah, tanpa harus memulai dari awal', 4, NULL, '2024-04-26 20:45:08', '2024-04-26 20:45:08'),
(40, 'hadirkan pengalaman pengguna yang konsisten di semua perangkat', 4, NULL, '2024-04-26 20:45:08', '2024-04-26 20:45:08'),
(41, 'Kunci untuk menciptakan keindahan di web', 3, NULL, '2024-04-26 20:45:27', '2024-04-26 20:45:27'),
(42, 'dengan desain yang menawan dan tampilan yang konsisten', 3, NULL, '2024-04-26 20:45:27', '2024-04-26 20:45:27'),
(43, 'sentuhan visual yang memikat', 3, NULL, '2024-04-26 20:45:27', '2024-04-26 20:45:27'),
(44, 'buat pengalaman pengguna yang tak terlupakan', 3, NULL, '2024-04-26 20:45:27', '2024-04-26 20:45:27');

-- --------------------------------------------------------

--
-- Table structure for table `course_students`
--

CREATE TABLE `course_students` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `course_id` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_students`
--

INSERT INTO `course_students` (`id`, `user_id`, `course_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 5, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course_videos`
--

CREATE TABLE `course_videos` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path_video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_id` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_videos`
--

INSERT INTO `course_videos` (`id`, `name`, `path_video`, `course_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'JavaScript Tutorial for Beginners: Learn JavaScript in 1 Hour', 'W6NZfCO5SIk', 5, NULL, '2024-04-21 08:41:25', '2024-04-21 09:20:05'),
(2, 'Coba dlu', '222222222', 5, '2024-04-21 09:27:51', '2024-04-21 08:41:36', '2024-04-21 09:27:51'),
(3, 'Build this JS calculator in 15 minutes!', 'I5kj-YsmWjM', 5, NULL, '2024-04-21 09:28:29', '2024-04-21 09:28:29'),
(4, 'How To Make Weather App Using JavaScript Step By Step Explained', 'MIYQR-Ybrn4', 5, NULL, '2024-04-21 09:30:00', '2024-04-21 09:30:00'),
(5, 'Belajar Web Dasar [HTML] - Latihan HTML 4', 'iFw-AB4iAnQ', 1, NULL, '2024-04-21 09:31:04', '2024-04-21 09:31:04'),
(6, 'Bootstrap - Instalasi', 'pJpnMyFNaz0', 4, NULL, '2024-04-21 09:31:53', '2024-04-21 09:31:53'),
(7, 'Belajar Web Dasar [CSS]', '-B17ATAt9vA', 3, NULL, '2024-04-21 09:34:07', '2024-04-21 09:34:19');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `attempts` tinyint UNSIGNED NOT NULL,
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
(4, '2024_04_18_094038_create_categories_table', 1),
(5, '2024_04_18_095120_create_teachers_table', 1),
(6, '2024_04_18_095138_create_courses_table', 1),
(7, '2024_04_18_095152_create_course_keypoints_table', 1),
(8, '2024_04_18_095211_create_course_students_table', 1),
(9, '2024_04_18_095239_create_subscribe_transactions_table', 1),
(10, '2024_04_18_095559_create_project_students_table', 1),
(11, '2024_04_18_114300_create_course_videos_table', 1),
(12, '2024_04_18_142804_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 6);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_students`
--

CREATE TABLE `project_students` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'owner', 'web', '2024-04-18 17:48:35', '2024-04-18 17:48:35'),
(2, 'student', 'web', '2024-04-18 17:48:35', '2024-04-18 17:48:35'),
(3, 'teacher', 'web', '2024-04-18 17:48:35', '2024-04-18 17:48:35');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('gh54oQdKp53d2wMHVbBxAT2QJW4ZN2jzuUr6aGVg', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRmNTYXVZOWxJWDlGN2JRWW5kTXR1VzRVeEdaWGR6MVV3VGZ3OGtvNSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9zdWJzY3JpYmVfdHJhbnNhY3Rpb25zLzMiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1714190084);

-- --------------------------------------------------------

--
-- Table structure for table `subscribe_transactions`
--

CREATE TABLE `subscribe_transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `total_amount` bigint UNSIGNED NOT NULL,
  `is_paid` tinyint(1) NOT NULL,
  `subscription_start_date` date DEFAULT NULL,
  `proof` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribe_transactions`
--

INSERT INTO `subscribe_transactions` (`id`, `total_amount`, `is_paid`, `subscription_start_date`, `proof`, `user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 890000, 1, '2024-04-21', 'proof/resi.png', 2, NULL, '2024-04-18 18:24:34', '2024-04-21 11:19:19'),
(2, 650000, 1, NULL, 'proof/cek.png', 2, NULL, '2024-04-21 10:14:12', '2024-04-21 10:14:12'),
(3, 429000, 1, '2024-04-27', 'proofs/roL4TuTuedQMXw6kU95lEaEdRPlGvo7O3CqyWmLK.jpg', 5, NULL, '2024-04-26 20:48:45', '2024-04-26 20:51:19');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `user_id`, `is_active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 3, 1, '2024-04-19 04:37:12', '2024-04-19 03:53:21', '2024-04-19 04:37:12'),
(3, 3, 1, NULL, '2024-04-19 04:38:13', '2024-04-19 04:38:13'),
(4, 4, 1, NULL, '2024-04-21 09:42:26', '2024-04-21 09:42:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `occupation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `occupation`, `avatar`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Shelma Bakir', 'Educator', 'images/default-avatar.png', 'shelma@owner.com', NULL, '$2y$12$oKM89krfrBFZ5SMpgeTxgOaCZdPotjj/4mM26KfsXH9n9MWI0a1q2', NULL, '2024-04-18 17:48:36', '2024-04-18 17:48:36'),
(2, 'Mala', 'Web Developer', 'avatars/8j43RMmuzV9u0s0H97SqimAvBFhpdhpKA8DYxgR4.png', 'mala@gmail.com', NULL, '$2y$12$QEUceEQQRZx3ULxYfSrIbewFbIzwMXFRkwFh6K6s9PZjKkVYzKpmC', NULL, '2024-04-18 18:24:34', '2024-04-18 18:24:34'),
(3, 'Navy', 'Teacher', 'avatars/wauy8fEYRJeY4iC4xQObzLlZ4OzIB8znrPEJLBr6.png', 'navy@gmail.com', NULL, '$2y$12$VbhRdr4FzXrXvzd8X8Fv3OSMdS1jUMHO7RLjBHpCxH0j.vSTml1Xm', NULL, '2024-04-19 03:04:38', '2024-04-19 03:04:38'),
(4, 'Nabila', 'Programming Web Teacher', 'avatars/6Zwsffq9QYnQJ4ioIHjYdgBB28jVp63D22SERcJo.jpg', 'nanab@teacher.com', NULL, '$2y$12$IZxOLScoovaslw8YDUxeU.5LgE5rnfjIGyGX72uwNL85HTEJ3RRoS', NULL, '2024-04-21 09:42:04', '2024-04-21 09:42:04'),
(5, 'nuri', 'gamer', 'avatars/RX93MTeDU7bk3MWGiQdUa48xZQxuz1jewwF2GPjY.png', 'nuri@gmail.com', NULL, '$2y$12$uX1Lk7p.uZ/1eTQZbDG5qegqMCCCoFx10PIJDrA5Ux45MWZbvOLzC', NULL, '2024-04-22 04:19:26', '2024-04-22 04:19:26'),
(6, 'Student 4', 'gamer', 'avatars/RDcM0DoyjpGk238F1nRx4i6xNdyPLza2c33MKT9S.png', 'student4@gmail.com', NULL, '$2y$12$Kzi8FxlshkF/MDgf5z1QOeYaa4EOpWiLq95Gwacxf81r6k6UDJonq', NULL, '2024-04-22 05:53:24', '2024-04-22 05:53:24');

--
-- Indexes for dumped tables
--

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_teacher_id_foreign` (`teacher_id`),
  ADD KEY `courses_category_id_foreign` (`category_id`);

--
-- Indexes for table `course_keypoints`
--
ALTER TABLE `course_keypoints`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_keypoints_course_id_foreign` (`course_id`);

--
-- Indexes for table `course_students`
--
ALTER TABLE `course_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_students_user_id_foreign` (`user_id`),
  ADD KEY `course_students_course_id_foreign` (`course_id`);

--
-- Indexes for table `course_videos`
--
ALTER TABLE `course_videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_videos_course_id_foreign` (`course_id`);

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
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `project_students`
--
ALTER TABLE `project_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `subscribe_transactions`
--
ALTER TABLE `subscribe_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscribe_transactions_user_id_foreign` (`user_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teachers_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `course_keypoints`
--
ALTER TABLE `course_keypoints`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `course_students`
--
ALTER TABLE `course_students`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course_videos`
--
ALTER TABLE `course_videos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_students`
--
ALTER TABLE `project_students`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscribe_transactions`
--
ALTER TABLE `subscribe_transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `courses_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_keypoints`
--
ALTER TABLE `course_keypoints`
  ADD CONSTRAINT `course_keypoints_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_students`
--
ALTER TABLE `course_students`
  ADD CONSTRAINT `course_students_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_students_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_videos`
--
ALTER TABLE `course_videos`
  ADD CONSTRAINT `course_videos_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subscribe_transactions`
--
ALTER TABLE `subscribe_transactions`
  ADD CONSTRAINT `subscribe_transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `teachers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
