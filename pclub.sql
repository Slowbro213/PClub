-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 03, 2025 at 02:58 PM
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
-- Table structure for table `admin_to_admin`
--

CREATE TABLE `admin_to_admin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `admin_id_2` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_to_admin`
--

INSERT INTO `admin_to_admin` (`id`, `admin_id`, `admin_id_2`, `created_at`, `updated_at`) VALUES
(2, 1, 2, '2025-03-03 13:44:20', '2025-03-03 13:44:20');

-- --------------------------------------------------------

--
-- Table structure for table `banned_users`
--

CREATE TABLE `banned_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `reason` varchar(255) NOT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `banned_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'Arrays', 'Arrays', 1, '2025-03-03 13:41:56', '2025-03-03 13:41:56'),
(2, 'Strings', 'Strings', 2, '2025-03-03 13:41:56', '2025-03-03 13:41:56'),
(3, 'Linked Lists', 'Linked Lists', 3, '2025-03-03 13:41:56', '2025-03-03 13:41:56'),
(4, 'Stacks', 'Stacks', 1, '2025-03-03 13:41:56', '2025-03-03 13:41:56'),
(5, 'Queues', 'Queues', 2, '2025-03-03 13:41:56', '2025-03-03 13:41:56'),
(6, 'Trees', 'Trees', 3, '2025-03-03 13:41:56', '2025-03-03 13:41:56'),
(7, 'Graphs', 'Graphs', 1, '2025-03-03 13:41:56', '2025-03-03 13:41:56'),
(8, 'Dynamic Programming', 'Dynamic Programming', 2, '2025-03-03 13:41:56', '2025-03-03 13:41:56'),
(9, 'Greedy Algorithms', 'Greedy Algorithms', 3, '2025-03-03 13:41:56', '2025-03-03 13:41:56'),
(10, 'Bit Manipulation', 'Bit Manipulation', 1, '2025-03-03 13:41:56', '2025-03-03 13:41:56'),
(11, 'Recursion', 'Recursion', 2, '2025-03-03 13:41:56', '2025-03-03 13:41:56'),
(12, 'Searching', 'Searching', 3, '2025-03-03 13:41:56', '2025-03-03 13:41:56'),
(13, 'Sorting', 'Sorting', 1, '2025-03-03 13:41:56', '2025-03-03 13:41:56'),
(14, 'Hashing', 'Hashing', 2, '2025-03-03 13:41:56', '2025-03-03 13:41:56'),
(15, 'Math', 'Math', 3, '2025-03-03 13:41:56', '2025-03-03 13:41:56'),
(16, 'Geometry', 'Geometry', 1, '2025-03-03 13:41:56', '2025-03-03 13:41:56'),
(17, 'Combinatorics', 'Combinatorics', 2, '2025-03-03 13:41:56', '2025-03-03 13:41:56'),
(18, 'Probability', 'Probability', 3, '2025-03-03 13:41:56', '2025-03-03 13:41:56'),
(19, 'Game Theory', 'Game Theory', 1, '2025-03-03 13:41:56', '2025-03-03 13:41:56'),
(20, 'Miscellaneous', 'Miscellaneous', 2, '2025-03-03 13:41:56', '2025-03-03 13:41:56');

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
(1, 'Sum of n numbers', '<h3><strong style=\"color: rgb(255, 255, 255);\">Problem: Sum of Array Elements</strong></h3><h4><strong style=\"color: rgb(255, 255, 255);\">Difficulty:</strong><span style=\"color: rgb(255, 255, 255);\"> Easy</span></h4><h4><strong style=\"color: rgb(255, 255, 255);\">Problem Statement</strong></h4><p><span style=\"color: rgb(255, 255, 255);\">Given an array of integers </span><code style=\"color: rgb(255, 255, 255);\">nums</code><span style=\"color: rgb(255, 255, 255);\">, return the sum of all elements in the array.</span></p><h4><strong style=\"color: rgb(255, 255, 255);\">Example 1:</strong></h4><p><strong style=\"color: rgb(255, 255, 255);\">Input:</strong><span style=\"color: rgb(255, 255, 255);\"> n = 5 , nums = [1, 2, 3, 4, 5]</span></p><p><strong style=\"color: rgb(255, 255, 255);\">Output:</strong><span style=\"color: rgb(255, 255, 255);\"> 15</span></p><p><strong style=\"color: rgb(255, 255, 255);\">Explanation:</strong><span style=\"color: rgb(255, 255, 255);\"> 1 + 2 + 3 + 4 + 5 = 15</span></p><h4><strong style=\"color: rgb(255, 255, 255);\">Example 2:</strong></h4><p><strong style=\"color: rgb(255, 255, 255);\">Input:</strong><span style=\"color: rgb(255, 255, 255);\"> n = 4,  nums = [10, -2, 7, 3]</span></p><p><strong style=\"color: rgb(255, 255, 255);\">Output:</strong><span style=\"color: rgb(255, 255, 255);\"> 18</span></p><p><strong style=\"color: rgb(255, 255, 255);\">Explanation:</strong><span style=\"color: rgb(255, 255, 255);\"> 10 + (-2) + 7 + 3 = 18</span></p>', 1, '2025-03-03 13:41:56', '2025-03-03 13:41:56'),
(2, 'Test', 'This is a test', 2, '2025-03-03 13:41:56', '2025-03-03 13:41:56'),
(3, 'Test 2', 'This is a test 2', 3, '2025-03-03 13:41:56', '2025-03-03 13:41:56');

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
  `elo` double NOT NULL DEFAULT 1500,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `difficulty_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `competitions`
--

INSERT INTO `competitions` (`id`, `name`, `description`, `elo`, `start_date`, `end_date`, `difficulty_id`, `created_at`, `updated_at`) VALUES
(1, 'Test Competition', 'This is a test competition', 1500, '2025-03-03 14:41:56', '2025-03-04 14:41:56', 1, '2025-03-03 13:41:56', '2025-03-03 13:41:56');

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
(1, 1, 1, 0, NULL, NULL);

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
(1, 'Easy', 'Easy', '2025-03-03 13:41:56', '2025-03-03 13:41:56'),
(2, 'Medium', 'Medium', '2025-03-03 13:41:56', '2025-03-03 13:41:56'),
(3, 'Hard', 'Hard', '2025-03-03 13:41:56', '2025-03-03 13:41:56');

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
-- Table structure for table `exceptions`
--

CREATE TABLE `exceptions` (
  `email` varchar(255) NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT 0,
  `added_by` bigint(20) UNSIGNED NOT NULL
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

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, '5ecfa370-7c33-42d6-9dee-8333efde67f3', 'redis', 'default', '{\"uuid\":\"5ecfa370-7c33-42d6-9dee-8333efde67f3\",\"displayName\":\"App\\\\Events\\\\SubmissionProcessed\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:30:\\\"App\\\\Events\\\\SubmissionProcessed\\\":3:{s:6:\\\"userId\\\";i:1;s:7:\\\"message\\\";s:8:\\\"Success!\\\";s:4:\\\"code\\\";i:0;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"id\":\"HzCJiCOdS34pZEwRSJTmCQ4biOvthw4i\",\"attempts\":0}', 'Illuminate\\Broadcasting\\BroadcastException: Pusher error: cURL error 7: Failed to connect to 192.168.1.18 port 8080 after 3057 ms: Could not connect to server (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for http://192.168.1.18:8080/apps/730531/events?auth_key=vyvjz37rt2s6vokzr510&auth_timestamp=1741013310&auth_version=1.0&body_md5=60bcdb05c8eb10318ee2b2cb2c5d29fa&auth_signature=9e058ab8fe1f20acef3a720c526ba87aa8fe4295e5d45d43717c66c0bbac50af. in /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Broadcasting/Broadcasters/PusherBroadcaster.php:164\nStack trace:\n#0 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Broadcasting/BroadcastEvent.php(93): Illuminate\\Broadcasting\\Broadcasters\\PusherBroadcaster->broadcast()\n#1 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Broadcasting\\BroadcastEvent->handle()\n#2 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Container/Util.php(43): Illuminate\\Container\\BoundMethod::{closure:Illuminate\\Container\\BoundMethod::call():35}()\n#3 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure()\n#4 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#5 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Container/Container.php(696): Illuminate\\Container\\BoundMethod::call()\n#6 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(126): Illuminate\\Container\\Container->call()\n#7 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(170): Illuminate\\Bus\\Dispatcher->{closure:Illuminate\\Bus\\Dispatcher::dispatchNow():123}()\n#8 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->{closure:Illuminate\\Pipeline\\Pipeline::prepareDestination():168}()\n#9 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(130): Illuminate\\Pipeline\\Pipeline->then()\n#10 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(126): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#11 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(170): Illuminate\\Queue\\CallQueuedHandler->{closure:Illuminate\\Queue\\CallQueuedHandler::dispatchThroughMiddleware():121}()\n#12 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->{closure:Illuminate\\Pipeline\\Pipeline::prepareDestination():168}()\n#13 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(121): Illuminate\\Pipeline\\Pipeline->then()\n#14 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(69): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#15 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call()\n#16 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(442): Illuminate\\Queue\\Jobs\\Job->fire()\n#17 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(392): Illuminate\\Queue\\Worker->process()\n#18 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(178): Illuminate\\Queue\\Worker->runJob()\n#19 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(149): Illuminate\\Queue\\Worker->daemon()\n#20 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(132): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#21 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#22 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Container/Util.php(43): Illuminate\\Container\\BoundMethod::{closure:Illuminate\\Container\\BoundMethod::call():35}()\n#23 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure()\n#24 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#25 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Container/Container.php(696): Illuminate\\Container\\BoundMethod::call()\n#26 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Console/Command.php(213): Illuminate\\Container\\Container->call()\n#27 /home/slowking/Desktop/Programmingclub/vendor/symfony/console/Command/Command.php(279): Illuminate\\Console\\Command->execute()\n#28 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Console/Command.php(182): Symfony\\Component\\Console\\Command\\Command->run()\n#29 /home/slowking/Desktop/Programmingclub/vendor/symfony/console/Application.php(1094): Illuminate\\Console\\Command->run()\n#30 /home/slowking/Desktop/Programmingclub/vendor/symfony/console/Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand()\n#31 /home/slowking/Desktop/Programmingclub/vendor/symfony/console/Application.php(193): Symfony\\Component\\Console\\Application->doRun()\n#32 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(198): Symfony\\Component\\Console\\Application->run()\n#33 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(1235): Illuminate\\Foundation\\Console\\Kernel->handle()\n#34 /home/slowking/Desktop/Programmingclub/artisan(13): Illuminate\\Foundation\\Application->handleCommand()\n#35 {main}', '2025-03-03 13:48:33'),
(2, 'b7616e00-67d8-4757-8dfa-bb7d9b644516', 'redis', 'default', '{\"uuid\":\"b7616e00-67d8-4757-8dfa-bb7d9b644516\",\"displayName\":\"App\\\\Events\\\\SubmissionProcessed\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:30:\\\"App\\\\Events\\\\SubmissionProcessed\\\":3:{s:6:\\\"userId\\\";i:1;s:7:\\\"message\\\";s:8:\\\"Success!\\\";s:4:\\\"code\\\";i:0;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"id\":\"y2UtFKnTAtHpgQOxyBvmBcZ6aRdaw5Me\",\"attempts\":0}', 'Illuminate\\Broadcasting\\BroadcastException: Pusher error: cURL error 7: Failed to connect to 192.168.1.18 port 8080 after 3111 ms: Could not connect to server (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for http://192.168.1.18:8080/apps/730531/events?auth_key=vyvjz37rt2s6vokzr510&auth_timestamp=1741013332&auth_version=1.0&body_md5=60bcdb05c8eb10318ee2b2cb2c5d29fa&auth_signature=47c60f00b837121492954ece26d96afcff21ebd51dcb3912c28680d9f1a153e3. in /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Broadcasting/Broadcasters/PusherBroadcaster.php:164\nStack trace:\n#0 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Broadcasting/BroadcastEvent.php(93): Illuminate\\Broadcasting\\Broadcasters\\PusherBroadcaster->broadcast()\n#1 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Broadcasting\\BroadcastEvent->handle()\n#2 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Container/Util.php(43): Illuminate\\Container\\BoundMethod::{closure:Illuminate\\Container\\BoundMethod::call():35}()\n#3 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure()\n#4 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#5 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Container/Container.php(696): Illuminate\\Container\\BoundMethod::call()\n#6 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(126): Illuminate\\Container\\Container->call()\n#7 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(170): Illuminate\\Bus\\Dispatcher->{closure:Illuminate\\Bus\\Dispatcher::dispatchNow():123}()\n#8 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->{closure:Illuminate\\Pipeline\\Pipeline::prepareDestination():168}()\n#9 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(130): Illuminate\\Pipeline\\Pipeline->then()\n#10 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(126): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#11 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(170): Illuminate\\Queue\\CallQueuedHandler->{closure:Illuminate\\Queue\\CallQueuedHandler::dispatchThroughMiddleware():121}()\n#12 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->{closure:Illuminate\\Pipeline\\Pipeline::prepareDestination():168}()\n#13 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(121): Illuminate\\Pipeline\\Pipeline->then()\n#14 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(69): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#15 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call()\n#16 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(442): Illuminate\\Queue\\Jobs\\Job->fire()\n#17 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(392): Illuminate\\Queue\\Worker->process()\n#18 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(178): Illuminate\\Queue\\Worker->runJob()\n#19 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(149): Illuminate\\Queue\\Worker->daemon()\n#20 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(132): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#21 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#22 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Container/Util.php(43): Illuminate\\Container\\BoundMethod::{closure:Illuminate\\Container\\BoundMethod::call():35}()\n#23 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure()\n#24 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#25 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Container/Container.php(696): Illuminate\\Container\\BoundMethod::call()\n#26 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Console/Command.php(213): Illuminate\\Container\\Container->call()\n#27 /home/slowking/Desktop/Programmingclub/vendor/symfony/console/Command/Command.php(279): Illuminate\\Console\\Command->execute()\n#28 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Console/Command.php(182): Symfony\\Component\\Console\\Command\\Command->run()\n#29 /home/slowking/Desktop/Programmingclub/vendor/symfony/console/Application.php(1094): Illuminate\\Console\\Command->run()\n#30 /home/slowking/Desktop/Programmingclub/vendor/symfony/console/Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand()\n#31 /home/slowking/Desktop/Programmingclub/vendor/symfony/console/Application.php(193): Symfony\\Component\\Console\\Application->doRun()\n#32 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(198): Symfony\\Component\\Console\\Application->run()\n#33 /home/slowking/Desktop/Programmingclub/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(1235): Illuminate\\Foundation\\Console\\Kernel->handle()\n#34 /home/slowking/Desktop/Programmingclub/artisan(13): Illuminate\\Foundation\\Application->handleCommand()\n#35 {main}', '2025-03-03 13:48:55');

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
(1, 'c', '2025-03-03 13:41:56', '2025-03-03 13:41:56'),
(2, 'java', '2025-03-03 13:41:56', '2025-03-03 13:41:56'),
(3, 'python', '2025-03-03 13:41:56', '2025-03-03 13:41:56');

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
(1, '#include <stdio.h>\n\nint shuma(int arr[], int size);\n\nint main() {\n    int n;\n    scanf(\"%d\", &n);\n\n    int arr[n];\n    for (int i = 0; i < n; i++) {\n        scanf(\"%d\", &arr[i]);\n    }\n\n    printf(\"%d\", shuma(arr, n));\n    return 0;\n}', '\nint shuma(int arr[], int size){\n    // Your code here\n}', 1, 1, '2025-03-03 13:41:56', '2025-03-03 13:41:56'),
(2, 'import java.util.Scanner;\n\nclass Main {\n    public static void main(String[] args) {\n        Scanner scanner = new Scanner(System.in);\n        int n = scanner.nextInt();\n        Shuma shuma = new Shuma();\n\n        int[] arr = new int[n];\n        for (int i = 0; i < n; i++) {\n            arr[i] = scanner.nextInt();\n        }\n\n        System.out.println(shuma.shuma(arr));\n    }\n}', 'class Shuma{\n     public int shuma(int[] arr){\n        // Your code here\n    }\n}', 1, 2, '2025-03-03 13:41:56', '2025-03-03 13:41:56'),
(3, 'n = int(input())\n\narr = []\nfor i in range(n):\n    arr.append(int(input()))\n\nprint(shuma(arr))', 'def shuma(arr):\n    # Your code here\n    pass', 1, 3, '2025-03-03 13:41:56', '2025-03-03 13:41:56'),
(4, '// Code', '// Your code here', 2, 1, '2025-03-03 13:41:56', '2025-03-03 13:41:56'),
(5, '// Code', '// Your code here', 3, 2, '2025-03-03 13:41:56', '2025-03-03 13:41:56');

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
(1, 1, '3\\n1\\n2\\n3', '6', '2025-03-03 13:41:56', '2025-03-03 13:41:56'),
(2, 1, '5\\n1\\n2\\n3\\n4\\n5', '15', '2025-03-03 13:41:56', '2025-03-03 13:41:56'),
(3, 2, '3\\n1\\n2\\n3', '6', '2025-03-03 13:41:56', '2025-03-03 13:41:56'),
(4, 3, '3\\n1\\n2\\n3', '6', '2025-03-03 13:41:56', '2025-03-03 13:41:56');

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
  `elo` int(11) NOT NULL DEFAULT 1200,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `google_id`, `elo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Thanas Papa', 'thanas.papa.24@gmail.com', '2025-03-03 13:41:55', '$2y$12$MMbK6dO/UOUQ1OcKygOwAOuopii6M.4sgiQeKhqDSYWopPHE9OKvG', '103580523380083322392', 1200, 'Gr4WEjmFbTOf91fcUYqrje8Axr0jfLu8mVC3NW05vWe1CDTBbe25YtnIroWg', '2025-03-03 13:41:55', '2025-03-03 13:41:55'),
(2, 'Imposter', 'tpapa22@epoka.edu.al', '2025-03-03 13:41:56', '$2y$12$y5zRL8A7ta2axhQE1S/aEup9So6S3sUBUewx8B/VD4xvxRvMpWzf6', '103328304927085617861', 1200, 'OtDO8o2ijF', '2025-03-03 13:41:56', '2025-03-03 13:41:56');

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
-- Indexes for table `admin_to_admin`
--
ALTER TABLE `admin_to_admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_to_admin_admin_id_foreign` (`admin_id`),
  ADD KEY `admin_to_admin_admin_id_2_foreign` (`admin_id_2`);

--
-- Indexes for table `banned_users`
--
ALTER TABLE `banned_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `banned_users_user_id_unique` (`user_id`),
  ADD UNIQUE KEY `banned_users_google_id_unique` (`google_id`),
  ADD KEY `banned_users_banned_by_foreign` (`banned_by`);

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
-- Indexes for table `exceptions`
--
ALTER TABLE `exceptions`
  ADD UNIQUE KEY `exceptions_email_unique` (`email`),
  ADD KEY `exceptions_added_by_foreign` (`added_by`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_to_admin`
--
ALTER TABLE `admin_to_admin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `banned_users`
--
ALTER TABLE `banned_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `admin_to_admin`
--
ALTER TABLE `admin_to_admin`
  ADD CONSTRAINT `admin_to_admin_admin_id_2_foreign` FOREIGN KEY (`admin_id_2`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `admin_to_admin_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `banned_users`
--
ALTER TABLE `banned_users`
  ADD CONSTRAINT `banned_users_banned_by_foreign` FOREIGN KEY (`banned_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `banned_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Constraints for table `exceptions`
--
ALTER TABLE `exceptions`
  ADD CONSTRAINT `exceptions_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
