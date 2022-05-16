-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2022 at 05:38 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `survey`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `submissionID` int(11) NOT NULL,
  `optimist` int(11) NOT NULL,
  `pessimist` int(11) NOT NULL,
  `realist` int(11) NOT NULL,
  `totalQuestions` int(11) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `userID`, `submissionID`, `optimist`, `pessimist`, `realist`, `totalQuestions`, `datetime`) VALUES
(1, 1, 1, 3, 0, 1, 4, '2022-05-15 21:16:54'),
(2, 1, 2, 1, 1, 2, 4, '2022-05-15 21:52:45'),
(3, 1, 3, 3, 0, 1, 4, '2022-05-15 23:09:14'),
(4, 1, 4, 1, 1, 1, 3, '2022-05-16 01:44:56'),
(5, 1, 5, 5, 2, 1, 8, '2022-05-16 02:23:15'),
(6, 3, 1, 10, 0, 0, 10, '2022-05-16 02:40:20'),
(7, 4, 1, 10, 0, 0, 10, '2022-05-16 02:47:34'),
(8, 1, 6, 5, 2, 3, 10, '2022-05-16 03:00:39');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` mediumtext NOT NULL,
  `answer1` mediumtext NOT NULL,
  `answer2` mediumtext NOT NULL,
  `answer3` mediumtext DEFAULT NULL,
  `answer4` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `answer1`, `answer2`, `answer3`, `answer4`) VALUES
(1, 'The glass is half full.', 'True', 'False', NULL, NULL),
(2, 'It does not take me long to shake off a bad mood.', 'Agree', 'Disagree', 'Neutral', NULL),
(3, 'Things usually turn out well in the end.', 'Agree', 'Disagree', 'Neither disagree or agree', NULL),
(8, 'I generally look at the bright side of life.', 'Agree', 'Disagree', 'Neither agree or disagree', NULL),
(9, 'I tend to make mountains out of molehills.', 'Disagree', 'Agree', 'Neither agree or disagree', NULL),
(10, 'Minor setbacks are something I usually ignore.', 'Agree', 'Disagree', 'Neither agree or disagree', NULL),
(12, 'As time goes on, things will most likely get better.', 'Agree', 'Disagree', 'Neither agree or disagree', NULL),
(13, 'I often expect that the worst thing that could happen will in fact happen.', 'Disagree', 'Agree', 'Neither agree or disagree', NULL),
(14, 'I generally feel happy.', 'Agree', 'Disagree', 'Neither agree or disagree', NULL),
(15, 'All in all, I feel the world is a good place.', 'Agree', 'Disagree', 'Neither agree or disagree', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `responses`
--

CREATE TABLE `responses` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `questionID` int(11) NOT NULL,
  `response` text NOT NULL,
  `submissionID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `responses`
--

INSERT INTO `responses` (`id`, `userID`, `questionID`, `response`, `submissionID`) VALUES
(1, 1, 1, 'answer1', 1),
(2, 1, 2, 'answer1', 1),
(3, 1, 3, 'answer1', 1),
(4, 1, 4, 'answer3', 1),
(5, 1, 1, 'answer1', 2),
(6, 1, 2, 'answer2', 2),
(7, 1, 3, 'answer3', 2),
(8, 1, 4, 'answer3', 2),
(9, 1, 1, 'answer1', 3),
(10, 1, 2, 'answer3', 3),
(11, 1, 3, 'answer1', 3),
(12, 1, 4, 'answer1', 3),
(13, 1, 1, 'answer1', 4),
(14, 1, 2, 'answer2', 4),
(15, 1, 3, 'answer3', 4),
(16, 1, 1, 'answer1', 5),
(17, 1, 2, 'answer1', 5),
(18, 1, 3, 'answer1', 5),
(19, 1, 8, 'answer2', 5),
(20, 1, 9, 'answer2', 5),
(21, 1, 10, 'answer1', 5),
(22, 1, 12, 'answer1', 5),
(23, 1, 13, 'answer3', 5),
(24, 3, 1, 'answer1', 1),
(25, 3, 2, 'answer1', 1),
(26, 3, 3, 'answer1', 1),
(27, 3, 8, 'answer1', 1),
(28, 3, 9, 'answer1', 1),
(29, 3, 10, 'answer1', 1),
(30, 3, 12, 'answer1', 1),
(31, 3, 13, 'answer1', 1),
(32, 3, 14, 'answer1', 1),
(33, 3, 15, 'answer1', 1),
(34, 4, 1, 'answer1', 1),
(35, 4, 2, 'answer1', 1),
(36, 4, 3, 'answer1', 1),
(37, 4, 8, 'answer1', 1),
(38, 4, 9, 'answer1', 1),
(39, 4, 10, 'answer1', 1),
(40, 4, 12, 'answer1', 1),
(41, 4, 13, 'answer1', 1),
(42, 4, 14, 'answer1', 1),
(43, 4, 15, 'answer1', 1),
(44, 1, 1, 'answer1', 6),
(45, 1, 2, 'answer1', 6),
(46, 1, 3, 'answer1', 6),
(47, 1, 8, 'answer3', 6),
(48, 1, 9, 'answer2', 6),
(49, 1, 10, 'answer3', 6),
(50, 1, 12, 'answer2', 6),
(51, 1, 13, 'answer1', 6),
(52, 1, 14, 'answer3', 6),
(53, 1, 15, 'answer1', 6);

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `userType` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `userType`) VALUES
(1, 'Admin', 'admin@keypath.com', NULL, '$2y$10$rNLGJO0bQWnj2NID4RA8SemeyLPlTY5e/5cHZJCn7cibt3AU2TK8S', NULL, '2022-05-14 20:47:17', '2022-05-14 20:47:17', 'admin'),
(2, 'bob', 'bob@burgers.com', NULL, '$2y$10$4ealSeHhPUiiusC36afPouJ9XWUHt5ZS3xTwKkSg6wUdt3HG/chV6', NULL, '2022-05-16 05:21:58', '2022-05-16 05:21:58', NULL),
(3, 'bob', 'bob@bob.com', NULL, '$2y$10$XIADCiTPHZxfLpEuCBnb5.Nhhsj3x/1wchkW/iZKA3lHlZJWmBAYW', NULL, '2022-05-16 06:39:46', '2022-05-16 06:39:46', NULL),
(4, 'paige', 'paige@p.com', NULL, '$2y$10$4O6AQkRZfJhqB88YYwx90eSBlCKUnH75DSPJlJHP8GEb9qGKFY3wO', NULL, '2022-05-16 06:47:11', '2022-05-16 06:47:11', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `responses`
--
ALTER TABLE `responses`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `responses`
--
ALTER TABLE `responses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
