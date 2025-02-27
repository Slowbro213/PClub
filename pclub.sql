-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 27, 2025 at 10:40 PM
-- Server version: 11.7.2-MariaDB
-- PHP Version: 8.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pclub`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `coding_categories`
--

CREATE TABLE `coding_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `difficulty_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coding_categories`
--

INSERT INTO `coding_categories` (`id`, `name`, `description`, `difficulty_id`, `created_at`, `updated_at`) VALUES
(1, 'Arrays', 'Arrays', 1, '2025-02-27 21:52:30', '2025-02-27 21:52:30'),
(2, 'Strings', 'Strings', 2, '2025-02-27 21:52:30', '2025-02-27 21:52:30'),
(3, 'Linked Lists', 'Linked Lists', 3, '2025-02-27 21:52:30', '2025-02-27 21:52:30'),
(4, 'Stacks', 'Stacks', 1, '2025-02-27 21:52:30', '2025-02-27 21:52:30'),
(5, 'Queues', 'Queues', 2, '2025-02-27 21:52:30', '2025-02-27 21:52:30'),
(6, 'Trees', 'Trees', 3, '2025-02-27 21:52:30', '2025-02-27 21:52:30'),
(7, 'Graphs', 'Graphs', 1, '2025-02-27 21:52:30', '2025-02-27 21:52:30'),
(8, 'Dynamic Programming', 'Dynamic Programming', 2, '2025-02-27 21:52:30', '2025-02-27 21:52:30'),
(9, 'Greedy Algorithms', 'Greedy Algorithms', 3, '2025-02-27 21:52:30', '2025-02-27 21:52:30'),
(10, 'Bit Manipulation', 'Bit Manipulation', 1, '2025-02-27 21:52:30', '2025-02-27 21:52:30'),
(11, 'Recursion', 'Recursion', 2, '2025-02-27 21:52:30', '2025-02-27 21:52:30'),
(12, 'Searching', 'Searching', 3, '2025-02-27 21:52:30', '2025-02-27 21:52:30'),
(13, 'Sorting', 'Sorting', 1, '2025-02-27 21:52:30', '2025-02-27 21:52:30'),
(14, 'Hashing', 'Hashing', 2, '2025-02-27 21:52:30', '2025-02-27 21:52:30'),
(15, 'Math', 'Math', 3, '2025-02-27 21:52:30', '2025-02-27 21:52:30'),
(16, 'Geometry', 'Geometry', 1, '2025-02-27 21:52:30', '2025-02-27 21:52:30'),
(17, 'Combinatorics', 'Combinatorics', 2, '2025-02-27 21:52:30', '2025-02-27 21:52:30'),
(18, 'Probability', 'Probability', 3, '2025-02-27 21:52:30', '2025-02-27 21:52:30'),
(19, 'Game Theory', 'Game Theory', 1, '2025-02-27 21:52:30', '2025-02-27 21:52:30'),
(20, 'Miscellaneous', 'Miscellaneous', 2, '2025-02-27 21:52:30', '2025-02-27 21:52:30');

-- --------------------------------------------------------

--
-- Table structure for table `coding_category_coding_challange`
--

CREATE TABLE `coding_category_coding_challange` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coding_challange_id` bigint(20) UNSIGNED NOT NULL,
  `coding_category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coding_category_coding_challange`
--

INSERT INTO `coding_category_coding_challange` (`id`, `coding_challange_id`, `coding_category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL),
(3, 1, 3, NULL, NULL),
(4, 2, 1, NULL, NULL),
(5, 3, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coding_challanges`
--

CREATE TABLE `coding_challanges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `difficulty_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coding_challanges`
--

INSERT INTO `coding_challanges` (`id`, `name`, `description`, `difficulty_id`, `created_at`, `updated_at`) VALUES
(1, 'Sum of n numbers', '<h3><strong style=\"color: rgb(255, 255, 255);\">Problem: Sum of Array Elements</strong></h3><h4><strong style=\"color: rgb(255, 255, 255);\">Difficulty:</strong><span style=\"color: rgb(255, 255, 255);\"> Easy</span></h4><h4><strong style=\"color: rgb(255, 255, 255);\">Problem Statement</strong></h4><p><span style=\"color: rgb(255, 255, 255);\">Given an array of integers </span><code style=\"color: rgb(255, 255, 255);\">nums</code><span style=\"color: rgb(255, 255, 255);\">, return the sum of all elements in the array.</span></p><h4><strong style=\"color: rgb(255, 255, 255);\">Example 1:</strong></h4><p><strong style=\"color: rgb(255, 255, 255);\">Input:</strong><span style=\"color: rgb(255, 255, 255);\"> n = 5 , nums = [1, 2, 3, 4, 5]</span></p><p><strong style=\"color: rgb(255, 255, 255);\">Output:</strong><span style=\"color: rgb(255, 255, 255);\"> 15</span></p><p><strong style=\"color: rgb(255, 255, 255);\">Explanation:</strong><span style=\"color: rgb(255, 255, 255);\"> 1 + 2 + 3 + 4 + 5 = 15</span></p><h4><strong style=\"color: rgb(255, 255, 255);\">Example 2:</strong></h4><p><strong style=\"color: rgb(255, 255, 255);\">Input:</strong><span style=\"color: rgb(255, 255, 255);\"> n = 4,  nums = [10, -2, 7, 3]</span></p><p><strong style=\"color: rgb(255, 255, 255);\">Output:</strong><span style=\"color: rgb(255, 255, 255);\"> 18</span></p><p><strong style=\"color: rgb(255, 255, 255);\">Explanation:</strong><span style=\"color: rgb(255, 255, 255);\"> 10 + (-2) + 7 + 3 = 18</span></p>', 1, '2025-02-27 21:52:30', '2025-02-27 21:52:30'),
(2, 'Test', 'This is a test', 2, '2025-02-27 21:52:30', '2025-02-27 21:52:30'),
(3, 'Test 2', 'This is a test 2', 3, '2025-02-27 21:52:30', '2025-02-27 21:52:30');

-- --------------------------------------------------------

--
-- Table structure for table `coding_challange_competition`
--

CREATE TABLE `coding_challange_competition` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coding_challange_id` bigint(20) UNSIGNED NOT NULL,
  `competition_id` bigint(20) UNSIGNED NOT NULL,
  `points` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coding_challange_competition`
--

INSERT INTO `coding_challange_competition` (`id`, `coding_challange_id`, `competition_id`, `points`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 100, NULL, NULL),
(2, 2, 1, 100, NULL, NULL),
(3, 3, 1, 100, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coding_challange_language`
--

CREATE TABLE `coding_challange_language` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coding_challange_id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coding_challange_language`
--

INSERT INTO `coding_challange_language` (`id`, `coding_challange_id`, `language_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL),
(3, 1, 3, NULL, NULL),
(4, 2, 1, NULL, NULL),
(5, 3, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `competitions`
--

CREATE TABLE `competitions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `difficulty_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `competitions`
--

INSERT INTO `competitions` (`id`, `name`, `description`, `start_date`, `end_date`, `difficulty_id`, `created_at`, `updated_at`) VALUES
(1, 'Test Competition', 'This is a test competition', '2025-02-27 21:52:30', '2025-02-28 21:52:30', 1, '2025-02-27 21:52:30', '2025-02-27 21:52:30');

-- --------------------------------------------------------

--
-- Table structure for table `competition_user`
--

CREATE TABLE `competition_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `competition_id` bigint(20) UNSIGNED NOT NULL,
  `score` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `competition_user`
--

INSERT INTO `competition_user` (`id`, `user_id`, `competition_id`, `score`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, NULL, NULL),
(2, 2, 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `difficulties`
--

CREATE TABLE `difficulties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `difficulties`
--

INSERT INTO `difficulties` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Easy', 'Easy', '2025-02-27 21:52:30', '2025-02-27 21:52:30'),
(2, 'Medium', 'Medium', '2025-02-27 21:52:30', '2025-02-27 21:52:30'),
(3, 'Hard', 'Hard', '2025-02-27 21:52:30', '2025-02-27 21:52:30');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `description` text NOT NULL,
  `text` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
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
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'c', '2025-02-27 21:52:30', '2025-02-27 21:52:30'),
(2, 'java', '2025-02-27 21:52:30', '2025-02-27 21:52:30'),
(3, 'python', '2025-02-27 21:52:30', '2025-02-27 21:52:30');

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
(4, '2025_01_02_161430_create_events_table', 1),
(5, '2025_02_08_205741_create_projects_table', 1),
(6, '2025_02_14_203752_create_languages_table', 1),
(7, '2025_02_14_203753_create_difficulties_table', 1),
(8, '2025_02_14_203754_create_coding_challanges_table', 1),
(9, '2025_02_14_204206_create_tests_table', 1),
(10, '2025_02_14_204211_create_templates_table', 1),
(11, '2025_02_14_205944_create_competitions_table', 1),
(12, '2025_02_14_210156_create_coding_categories_table', 1),
(13, '2025_02_14_211452_create_submissions_table', 1),
(14, '2025_02_15_093427_create_coding_challange_language_table', 1),
(15, '2025_02_15_093456_create_coding_challange_coding_category_table', 1),
(16, '2025_02_15_093511_create_coding_challange_competition_table', 1),
(17, '2025_02_15_093623_create_competition_user_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `submissions`
--

CREATE TABLE `submissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `coding_challange_id` bigint(20) UNSIGNED NOT NULL,
  `competition_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `successful_submissions`
--

CREATE TABLE `successful_submissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `submission_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` text NOT NULL,
  `format` text NOT NULL,
  `coding_challange_id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id`, `code`, `format`, `coding_challange_id`, `language_id`, `created_at`, `updated_at`) VALUES
(1, '#include <stdio.h>\n\nint shuma(int arr[], int size);\n\nint main() {\n    int n;\n    scanf(\"%d\", &n);\n\n    int arr[n];\n    for (int i = 0; i < n; i++) {\n        scanf(\"%d\", &arr[i]);\n    }\n\n    printf(\"%d\", shuma(arr, n));\n    return 0;\n}', '\nint shuma(int arr[], int size){\n    // Your code here\n}', 1, 1, '2025-02-27 21:52:30', '2025-02-27 21:52:30'),
(2, 'import java.util.Scanner;\n\nclass Main {\n    public static void main(String[] args) {\n        Scanner scanner = new Scanner(System.in);\n        int n = scanner.nextInt();\n        Shuma shuma = new Shuma();\n\n        int[] arr = new int[n];\n        for (int i = 0; i < n; i++) {\n            arr[i] = scanner.nextInt();\n        }\n\n        System.out.println(shuma.shuma(arr));\n    }\n}', 'class Shuma{\n     public int shuma(int[] arr){\n        // Your code here\n    }\n}', 1, 2, '2025-02-27 21:52:30', '2025-02-27 21:52:30'),
(3, 'n = int(input())\n\narr = []\nfor i in range(n):\n    arr.append(int(input()))\n\nprint(shuma(arr))', 'def shuma(arr):\n    # Your code here\n    pass', 1, 3, '2025-02-27 21:52:30', '2025-02-27 21:52:30'),
(4, '// Code', '// Your code here', 2, 1, '2025-02-27 21:52:30', '2025-02-27 21:52:30'),
(5, '// Code', '// Your code here', 3, 2, '2025-02-27 21:52:30', '2025-02-27 21:52:30');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coding_challange_id` bigint(20) UNSIGNED NOT NULL,
  `input` varchar(255) NOT NULL,
  `output` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `coding_challange_id`, `input`, `output`, `created_at`, `updated_at`) VALUES
(1, 1, '3\\n1\\n2\\n3', '6', '2025-02-27 21:52:30', '2025-02-27 21:52:30'),
(2, 1, '5\\n1\\n2\\n3\\n4\\n5', '15', '2025-02-27 21:52:30', '2025-02-27 21:52:30'),
(3, 2, '3\\n1\\n2\\n3', '6', '2025-02-27 21:52:30', '2025-02-27 21:52:30'),
(4, 3, '3\\n1\\n2\\n3', '6', '2025-02-27 21:52:30', '2025-02-27 21:52:30');

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
  `google_id` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `google_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Thanas Papa', 'thanas.papa.24@gmail.com', '2025-02-27 21:52:29', '$2y$12$erv3guc7DnN52KInS05Y5O1up3Xd8kNGEIXUAVdCYRjUKojvRLX1S', '103580523380083322392', '9awZeQZ6N2cig8h7JVLOEaOICVVMAOV9gmFA5w00Ux683TrL0zfMu3oPmCyP', '2025-02-27 21:52:29', '2025-02-27 21:52:29'),
(2, 'Imposter', 'tpapa22@epoka.edu.al', '2025-02-27 21:52:30', '$2y$12$5tn25uujbAoaz1NzowVR3eZDErdFoHsk3sbK3Z..qKAISKW0tsS9S', '103328304927085617861', 'VJsWNz5wJvam2KStkMEXdJ1D3wDMBaOgKPHQqqORYH2wcj7US1hsOmubpZVg', '2025-02-27 21:52:30', '2025-02-27 22:11:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_user_id_unique` (`user_id`);

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
-- Indexes for table `coding_categories`
--
ALTER TABLE `coding_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coding_categories_difficulty_id_foreign` (`difficulty_id`);

--
-- Indexes for table `coding_category_coding_challange`
--
ALTER TABLE `coding_category_coding_challange`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coding_category_coding_challange_coding_challange_id_foreign` (`coding_challange_id`),
  ADD KEY `coding_category_coding_challange_coding_category_id_foreign` (`coding_category_id`);

--
-- Indexes for table `coding_challanges`
--
ALTER TABLE `coding_challanges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coding_challanges_difficulty_id_foreign` (`difficulty_id`);

--
-- Indexes for table `coding_challange_competition`
--
ALTER TABLE `coding_challange_competition`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coding_challange_competition_coding_challange_id_foreign` (`coding_challange_id`),
  ADD KEY `coding_challange_competition_competition_id_foreign` (`competition_id`);

--
-- Indexes for table `coding_challange_language`
--
ALTER TABLE `coding_challange_language`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coding_challange_language_coding_challange_id_foreign` (`coding_challange_id`),
  ADD KEY `coding_challange_language_language_id_foreign` (`language_id`);

--
-- Indexes for table `competitions`
--
ALTER TABLE `competitions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `competitions_difficulty_id_foreign` (`difficulty_id`);

--
-- Indexes for table `competition_user`
--
ALTER TABLE `competition_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `competition_user_user_id_foreign` (`user_id`),
  ADD KEY `competition_user_competition_id_foreign` (`competition_id`);

--
-- Indexes for table `difficulties`
--
ALTER TABLE `difficulties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
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
-- Indexes for table `languages`
--
ALTER TABLE `languages`
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
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `submissions`
--
ALTER TABLE `submissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `submissions_user_id_foreign` (`user_id`),
  ADD KEY `submissions_coding_challange_id_foreign` (`coding_challange_id`),
  ADD KEY `submissions_competition_id_foreign` (`competition_id`);

--
-- Indexes for table `successful_submissions`
--
ALTER TABLE `successful_submissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `successful_submissions_submission_id_foreign` (`submission_id`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `templates_coding_challange_id_foreign` (`coding_challange_id`),
  ADD KEY `templates_language_id_foreign` (`language_id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tests_coding_challange_id_foreign` (`coding_challange_id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coding_categories`
--
ALTER TABLE `coding_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `coding_category_coding_challange`
--
ALTER TABLE `coding_category_coding_challange`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `coding_challanges`
--
ALTER TABLE `coding_challanges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `coding_challange_competition`
--
ALTER TABLE `coding_challange_competition`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `coding_challange_language`
--
ALTER TABLE `coding_challange_language`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `competitions`
--
ALTER TABLE `competitions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `competition_user`
--
ALTER TABLE `competition_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `difficulties`
--
ALTER TABLE `difficulties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
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
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `submissions`
--
ALTER TABLE `submissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `successful_submissions`
--
ALTER TABLE `successful_submissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `coding_categories`
--
ALTER TABLE `coding_categories`
  ADD CONSTRAINT `coding_categories_difficulty_id_foreign` FOREIGN KEY (`difficulty_id`) REFERENCES `difficulties` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `coding_category_coding_challange`
--
ALTER TABLE `coding_category_coding_challange`
  ADD CONSTRAINT `coding_category_coding_challange_coding_category_id_foreign` FOREIGN KEY (`coding_category_id`) REFERENCES `coding_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `coding_category_coding_challange_coding_challange_id_foreign` FOREIGN KEY (`coding_challange_id`) REFERENCES `coding_challanges` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `coding_challanges`
--
ALTER TABLE `coding_challanges`
  ADD CONSTRAINT `coding_challanges_difficulty_id_foreign` FOREIGN KEY (`difficulty_id`) REFERENCES `difficulties` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `coding_challange_competition`
--
ALTER TABLE `coding_challange_competition`
  ADD CONSTRAINT `coding_challange_competition_coding_challange_id_foreign` FOREIGN KEY (`coding_challange_id`) REFERENCES `coding_challanges` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `coding_challange_competition_competition_id_foreign` FOREIGN KEY (`competition_id`) REFERENCES `competitions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `coding_challange_language`
--
ALTER TABLE `coding_challange_language`
  ADD CONSTRAINT `coding_challange_language_coding_challange_id_foreign` FOREIGN KEY (`coding_challange_id`) REFERENCES `coding_challanges` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `coding_challange_language_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `competitions`
--
ALTER TABLE `competitions`
  ADD CONSTRAINT `competitions_difficulty_id_foreign` FOREIGN KEY (`difficulty_id`) REFERENCES `difficulties` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `competition_user`
--
ALTER TABLE `competition_user`
  ADD CONSTRAINT `competition_user_competition_id_foreign` FOREIGN KEY (`competition_id`) REFERENCES `competitions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `competition_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `submissions`
--
ALTER TABLE `submissions`
  ADD CONSTRAINT `submissions_coding_challange_id_foreign` FOREIGN KEY (`coding_challange_id`) REFERENCES `coding_challanges` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `submissions_competition_id_foreign` FOREIGN KEY (`competition_id`) REFERENCES `competitions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `submissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `successful_submissions`
--
ALTER TABLE `successful_submissions`
  ADD CONSTRAINT `successful_submissions_submission_id_foreign` FOREIGN KEY (`submission_id`) REFERENCES `submissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `templates`
--
ALTER TABLE `templates`
  ADD CONSTRAINT `templates_coding_challange_id_foreign` FOREIGN KEY (`coding_challange_id`) REFERENCES `coding_challanges` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `templates_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tests`
--
ALTER TABLE `tests`
  ADD CONSTRAINT `tests_coding_challange_id_foreign` FOREIGN KEY (`coding_challange_id`) REFERENCES `coding_challanges` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
