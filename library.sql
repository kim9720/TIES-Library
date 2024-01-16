-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 10, 2024 at 10:22 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `author` varchar(255) NOT NULL,
  `likes` int(11) NOT NULL DEFAULT 0,
  `comments` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `description`, `author`, `likes`, `comments`, `image`, `created_at`, `updated_at`) VALUES
(17, 'Amazon', 'talking about business', 'kadiri', 0, 0, '1704916509.jpg', '2024-01-10 16:55:09', '2024-01-10 16:55:09'),
(20, 'Hypocrite World', 'Talkin about life', 'Adam', 0, 0, '1704916904.webp', '2024-01-10 17:01:44', '2024-01-10 17:01:44'),
(21, 'Sophie Kinsella', 'the dramatic godless', 'Sophie', 0, 0, '1704917140.jpg', '2024-01-10 17:05:40', '2024-01-10 17:05:40'),
(22, 'Memory', 'About Memory', 'Khamis Jecha', 0, 0, '1704917331.jpg', '2024-01-10 17:08:51', '2024-01-10 17:08:51'),
(23, 'Soal', 'Love ness and sadness', 'Mohamed Sadik', 0, 0, '1704917444.jpg', '2024-01-10 17:10:44', '2024-01-10 17:10:44'),
(24, 'My Book Cover', 'talking about books', 'hajum', 0, 0, '1704917978.jpg', '2024-01-10 17:19:38', '2024-01-10 17:19:38'),
(25, 'Swahili made Easy', 'Teaching Swahili', 'Wakamoga Masinde', 0, 0, '1704918334.jpg', '2024-01-10 17:25:34', '2024-01-10 17:25:34'),
(26, 'Paul Rix', 'Alianse', 'Relic', 0, 0, '1704918651.png', '2024-01-10 17:30:51', '2024-01-10 17:30:51'),
(27, 'Crack The Code', 'hacking', 'kim pembe', 0, 0, '1704918952.jpg', '2024-01-10 17:35:52', '2024-01-10 17:35:52'),
(28, 'Mungu Hakopeshwi', 'Uchawi', 'Zainab', 0, 0, '1704919109.webp', '2024-01-10 17:38:29', '2024-01-10 17:38:29'),
(29, 'Hujafa Hujaumbika', 'kuhusiana na kifo', 'Alwatan', 0, 0, '1704919260.webp', '2024-01-10 17:41:00', '2024-01-10 17:41:00'),
(30, 'Shamba La wanyama', 'khusu wanyama', 'kurwa', 0, 0, '1704919369.jpg', '2024-01-10 17:42:49', '2024-01-10 17:42:49'),
(31, 'Zuhura na Zahara', 'family', 'Zahara yunus', 0, 0, '1704919473.jpg', '2024-01-10 17:44:33', '2024-01-10 17:44:33'),
(32, 'Shanazi katili', 'ukatili', 'ali kiba', 0, 0, '1704919585.jpg', '2024-01-10 17:46:25', '2024-01-10 17:46:25'),
(33, 'The Girl', 'Which', 'amanda', 0, 0, '1704919664.jpg', '2024-01-10 17:47:44', '2024-01-10 17:47:44'),
(34, 'Thunde I Love', 'About love', 'Charles', 0, 0, '1704919788.jpg', '2024-01-10 17:49:48', '2024-01-10 17:49:48');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
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
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2014_10_12_100000_create_password_reset_tokens_table', 2),
(4, '2019_08_19_000000_create_failed_jobs_table', 2),
(5, '2024_01_09_180211_create_books_table', 3),
(6, '2024_01_09_180513_create_favorites_table', 4),
(7, '2024_01_09_180719_create_comments_table', 5),
(8, '2024_01_10_034417_add_image_to_books_table', 6),
(9, '2024_01_10_034937_create_likes_table', 7);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'token', '3ac7802ae735ed612b5241db4ccf2e4c134ac01b6e19f2e04c1ae2e0048f1494', '[\"*\"]', NULL, NULL, '2024-01-08 22:04:13', '2024-01-08 22:04:13'),
(2, 'App\\Models\\User', 1, 'token', '9830f12515bfc5f941ed4315ea8ba3c10f5401f2e4060ec617282379b7370e9f', '[\"*\"]', NULL, NULL, '2024-01-08 22:05:18', '2024-01-08 22:05:18'),
(3, 'App\\Models\\User', 1, 'token', '66d6a572e3ccffa7379500e5fdb11e438170659e06f19c8dbd5744b6baab0568', '[\"*\"]', NULL, NULL, '2024-01-08 22:10:25', '2024-01-08 22:10:25'),
(4, 'App\\Models\\User', 1, 'token', 'a2ea57ec2c4a4028c45173bd8333ab3d915c59f0b34b88bdb961b49a6c6be909', '[\"*\"]', NULL, NULL, '2024-01-08 22:12:38', '2024-01-08 22:12:38'),
(5, 'App\\Models\\User', 1, 'token', '67e8f3d08d8649a61a6fe0ce599c309ef557b512ab67060263338610d176d0fe', '[\"*\"]', NULL, NULL, '2024-01-08 22:13:31', '2024-01-08 22:13:31'),
(6, 'App\\Models\\User', 1, 'token', 'd354d5abfe825e166e1bc3cf105c2206ed175192fc7a36677fe3b304cbbb6fe9', '[\"*\"]', NULL, NULL, '2024-01-08 22:14:11', '2024-01-08 22:14:11'),
(7, 'App\\Models\\User', 1, 'token', '5062cba9fba1bd601539cf1b6423c0afa2db8df5277819e556358fbcd1ab1074', '[\"*\"]', NULL, NULL, '2024-01-08 22:17:21', '2024-01-08 22:17:21'),
(8, 'App\\Models\\User', 1, 'token', 'e74fd44c3f8c73b1800840bf3c1d3b0d1dee369249b31f31a29a48c81f63b8bf', '[\"*\"]', NULL, NULL, '2024-01-08 22:36:10', '2024-01-08 22:36:10'),
(9, 'App\\Models\\User', 1, 'token', '294ddb7cd01f3ed0f1e7eb91b496d57b1f1c3135fac863ec03912c060eac8f6f', '[\"*\"]', NULL, NULL, '2024-01-08 22:38:40', '2024-01-08 22:38:40'),
(10, 'App\\Models\\User', 2, 'token', '6ee075b75b1996c931b146676c790d4050d54b9b24f6fbed20a0d34cd6f878e9', '[\"*\"]', NULL, NULL, '2024-01-08 22:41:19', '2024-01-08 22:41:19'),
(11, 'App\\Models\\User', 1, 'token', '273dba4d5ece2c3ebfb662d65d87919fd04649a27b3cc9315fb73418e65684e3', '[\"*\"]', NULL, NULL, '2024-01-08 22:41:30', '2024-01-08 22:41:30'),
(12, 'App\\Models\\User', 1, 'token', 'c69d02e63f669bd3e0e9838d5ee90f7c23441eabf8b8ad009abcc5dcca4fc74c', '[\"*\"]', NULL, NULL, '2024-01-08 22:49:28', '2024-01-08 22:49:28'),
(13, 'App\\Models\\User', 1, 'token', 'f83ae97b65e626aedec569c78ef5bcb677cb2a091d4c944d57864f357f5b5fca', '[\"*\"]', NULL, NULL, '2024-01-09 00:04:31', '2024-01-09 00:04:31'),
(14, 'App\\Models\\User', 1, 'token', '470c24594cbebce887108f6315d838cff132fbe0f864e6a16861e188c37614fe', '[\"*\"]', NULL, NULL, '2024-01-09 00:17:01', '2024-01-09 00:17:01'),
(15, 'App\\Models\\User', 2, 'token', '8a79eee2dca31d8b380f15bfc9b631ae8365a1645b2306998d43d24da034b7d7', '[\"*\"]', NULL, NULL, '2024-01-09 00:17:29', '2024-01-09 00:17:29'),
(16, 'App\\Models\\User', 1, 'token', '9296522c9a5bdd9d0147ac366f440a64a933d5bada58a11d4c2ccd1c9b79c7be', '[\"*\"]', NULL, NULL, '2024-01-09 00:22:22', '2024-01-09 00:22:22'),
(17, 'App\\Models\\User', 2, 'token', 'e377d2b07a81f5cc29a5e7b87a55f424a1c785dcc20444214dd55ef3bb1e894b', '[\"*\"]', NULL, NULL, '2024-01-09 00:23:32', '2024-01-09 00:23:32'),
(18, 'App\\Models\\User', 3, 'token', '8bc470b2c5b82ea3892941acd21fe967bc02e5a19affc2dbbfbdd9004a61104f', '[\"*\"]', NULL, NULL, '2024-01-09 00:30:49', '2024-01-09 00:30:49'),
(19, 'App\\Models\\User', 4, 'token', '4f398f98789190be22df9dab2340b6e663508d5b5e168d6e8762e4f5fa8a7b1b', '[\"*\"]', NULL, NULL, '2024-01-09 00:34:26', '2024-01-09 00:34:26'),
(20, 'App\\Models\\User', 2, 'token', 'e7ef7ddd6122505ebbaa9231038037a2ddcd7e6f52d44eadf739e30b6939b70f', '[\"*\"]', NULL, NULL, '2024-01-09 00:34:57', '2024-01-09 00:34:57'),
(21, 'App\\Models\\User', 2, 'token', '0cd1f7a1260915965ebce7e13c0569df7693458e0590892ba6abc92270c5ae29', '[\"*\"]', NULL, NULL, '2024-01-09 00:37:06', '2024-01-09 00:37:06'),
(22, 'App\\Models\\User', 2, 'token', '34c9764904b25a989c9f375fbe43f0acf3dae93871d9675660b88e3f016cf77e', '[\"*\"]', NULL, NULL, '2024-01-09 00:40:13', '2024-01-09 00:40:13'),
(23, 'App\\Models\\User', 2, 'token', '91cc2a894e1a56a6f3b0d3055d0bfeaf37490b90144c668cb4b0594ffa1a1aa1', '[\"*\"]', NULL, NULL, '2024-01-09 00:40:37', '2024-01-09 00:40:37'),
(24, 'App\\Models\\User', 5, 'token', '652ce05ec0f72db28407be56e557c4e899a0bf72b5a8aadbd98480fbb501397e', '[\"*\"]', NULL, NULL, '2024-01-09 00:41:35', '2024-01-09 00:41:35'),
(25, 'App\\Models\\User', 5, 'token', '1dbcbc198431cb8e562d5e4c0c2216256299d0fced76a0b88dd29e1915db6600', '[\"*\"]', NULL, NULL, '2024-01-09 00:41:55', '2024-01-09 00:41:55'),
(26, 'App\\Models\\User', 5, 'token', '87563ae7f9d20d4cf04adf81824e838be4150f915b4d362ee2b3380eeb8d49d3', '[\"*\"]', NULL, NULL, '2024-01-09 00:42:29', '2024-01-09 00:42:29'),
(27, 'App\\Models\\User', 2, 'token', '69add5bef8867a6aeb83d848f2cc8b7da0d5ddb8eab53f9d61d12485e3257a5e', '[\"*\"]', NULL, NULL, '2024-01-09 03:55:06', '2024-01-09 03:55:06'),
(28, 'App\\Models\\User', 1, 'token', '942d93872e2899c43c6d62e6a71f19cb4ed1b3a9b6e6f5a4838c8acd1c30db2f', '[\"*\"]', NULL, NULL, '2024-01-09 03:55:15', '2024-01-09 03:55:15'),
(29, 'App\\Models\\User', 2, 'token', '609a28c76fcc12e9976f82546204f7b0b4491c1dfc6965939491a02a674c8db7', '[\"*\"]', NULL, NULL, '2024-01-09 05:26:28', '2024-01-09 05:26:28'),
(30, 'App\\Models\\User', 2, 'token', '403da9f1bf62f42bac8d495783ea037cb9d6a82fbe5171694c1edee69cf0852d', '[\"*\"]', NULL, NULL, '2024-01-09 05:26:31', '2024-01-09 05:26:31'),
(31, 'App\\Models\\User', 2, 'token', '99a6047e118d4a3826e668fd6afaaa3862b651cd79546eac8ccc63881d411fb2', '[\"*\"]', NULL, NULL, '2024-01-09 05:26:31', '2024-01-09 05:26:31'),
(32, 'App\\Models\\User', 1, 'token', '640e0d06a522ba839a876cd979540e7f8e4a60f633e628c0c515290a7f117ce4', '[\"*\"]', NULL, NULL, '2024-01-09 05:26:48', '2024-01-09 05:26:48'),
(33, 'App\\Models\\User', 1, 'token', '1c939cac015d6d58fdb3f4c6674d9c314c6a5b3f557ba40d80ca4a4d0cfab57a', '[\"*\"]', NULL, NULL, '2024-01-09 05:33:08', '2024-01-09 05:33:08'),
(34, 'App\\Models\\User', 1, 'token', '504c0296c100ca97155ddcf817d1ca29045d5751167e76df9030fb593ba0017e', '[\"*\"]', NULL, NULL, '2024-01-09 05:51:09', '2024-01-09 05:51:09'),
(35, 'App\\Models\\User', 2, 'token', 'c0a7f50fff5ce41a0f4c06713d69bf09b9153445ab07b4731f52e94270c01e25', '[\"*\"]', NULL, NULL, '2024-01-09 07:51:55', '2024-01-09 07:51:55'),
(36, 'App\\Models\\User', 2, 'token', '0a363701fa9c127ace487907d1fab46bd8d70c8c4f083f729d90a215b20d7c0c', '[\"*\"]', NULL, NULL, '2024-01-09 07:52:04', '2024-01-09 07:52:04'),
(37, 'App\\Models\\User', 6, 'token', '4bea9d0151242bcd1bf041b2297f5e3c033fd1b29985e18ff9d3e42113d73abc', '[\"*\"]', NULL, NULL, '2024-01-09 07:52:18', '2024-01-09 07:52:18'),
(38, 'App\\Models\\User', 7, 'token', '99c22eefd976cd8764d41c8aa97f70aa4b40ca08dcf27d96bfbc8cb83527f649', '[\"*\"]', NULL, NULL, '2024-01-09 07:52:34', '2024-01-09 07:52:34'),
(39, 'App\\Models\\User', 1, 'token', 'e88bdf340a9df528f46dca462f6eff6018a0dd5da89f31b0a5126517ef3b58c2', '[\"*\"]', NULL, NULL, '2024-01-09 07:54:32', '2024-01-09 07:54:32'),
(40, 'App\\Models\\User', 1, 'token', '065ea38c8b1651e63aa9529bc57121238f03e813a038afe542516792abe429de', '[\"*\"]', NULL, NULL, '2024-01-09 07:54:41', '2024-01-09 07:54:41'),
(41, 'App\\Models\\User', 1, 'token', '75acc4ea55ff6f22db6505bfd683361ae66481cc38eedca4ef2502200ee88dfb', '[\"*\"]', NULL, NULL, '2024-01-09 07:54:49', '2024-01-09 07:54:49'),
(42, 'App\\Models\\User', 1, 'token', '83ada87e3667ca0e15fe3f89b5c716a5d76a5da441648d3b3f693a84dd9e8dd0', '[\"*\"]', NULL, NULL, '2024-01-09 07:56:24', '2024-01-09 07:56:24'),
(43, 'App\\Models\\User', 1, 'token', 'c9dd7c40715d6c88908dab25787f3be8fef7fdb1ac0bdbd924dab7abd3a209f8', '[\"*\"]', NULL, NULL, '2024-01-09 08:00:53', '2024-01-09 08:00:53'),
(44, 'App\\Models\\User', 2, 'token', 'a109f7d4b22df287ab74a9dadef896309c5016c55a22739ce68eedf3715f0d3d', '[\"*\"]', NULL, NULL, '2024-01-09 08:01:22', '2024-01-09 08:01:22'),
(45, 'App\\Models\\User', 8, 'token', '40700db08b62bf39699695605b42529b4bb5a70836ed9670f1c820cedcd37818', '[\"*\"]', NULL, NULL, '2024-01-09 08:02:22', '2024-01-09 08:02:22'),
(46, 'App\\Models\\User', 2, 'token', '6056d2278ae1584b46a4f61d6734a2d1744ea0abb99276ec0c11a6f46d1d0078', '[\"*\"]', NULL, NULL, '2024-01-09 08:02:34', '2024-01-09 08:02:34'),
(47, 'App\\Models\\User', 2, 'token', '1c5563a84301d5ea3e2a2bcce72c7abc975bda29c8231632978a2963e4662cd8', '[\"*\"]', NULL, NULL, '2024-01-09 08:04:44', '2024-01-09 08:04:44'),
(48, 'App\\Models\\User', 2, 'token', 'bbc7f3c7befe4fe2a4feca2c5312eca1ca7223d4ab1f6172c86c34a5d1ea678b', '[\"*\"]', NULL, NULL, '2024-01-09 08:07:54', '2024-01-09 08:07:54'),
(49, 'App\\Models\\User', 2, 'token', '161dc93c65874daa40b77def30c7bb14501cc6b546c9c6ae5c6ef0b6cef7fa07', '[\"*\"]', NULL, NULL, '2024-01-09 08:21:34', '2024-01-09 08:21:34'),
(50, 'App\\Models\\User', 2, 'token', '77971974cbe54ce81d91c3b1a81f6cfcee2645d7bbec1a05c8a1dd0ef8c3e2cf', '[\"*\"]', NULL, NULL, '2024-01-09 08:22:24', '2024-01-09 08:22:24'),
(51, 'App\\Models\\User', 1, 'token', '989c9dea13aa6f079a10101b39d8d3e8037c65f8f36d9489b62d2b1696995d87', '[\"*\"]', NULL, NULL, '2024-01-09 08:23:03', '2024-01-09 08:23:03'),
(52, 'App\\Models\\User', 1, 'token', 'f3b335d5a69b6bb89260f8d519be1d7894cb84cdb7aa88f7bde0c355dd642d48', '[\"*\"]', NULL, NULL, '2024-01-09 08:27:52', '2024-01-09 08:27:52'),
(53, 'App\\Models\\User', 1, 'token', '5239d5a2fb3106cca323e7f9304abf427664ad8af3066c67992ffc650a29c62d', '[\"*\"]', NULL, NULL, '2024-01-09 08:28:40', '2024-01-09 08:28:40'),
(54, 'App\\Models\\User', 2, 'token', '97bd0cd005987306d7371f0d30f5438f68d97026b96466acc049cefa97a762e6', '[\"*\"]', NULL, NULL, '2024-01-09 08:31:44', '2024-01-09 08:31:44'),
(55, 'App\\Models\\User', 1, 'token', 'a8fd83dde366fb6ae368d0925ef8325dbaf38f79a661e3cabdd88c866b7e4c70', '[\"*\"]', NULL, NULL, '2024-01-09 08:32:20', '2024-01-09 08:32:20'),
(56, 'App\\Models\\User', 1, 'token', '7967fbaa6be0b6c32e4a59906b2a9163c12d77f53515db2aaf242e37020ffccd', '[\"*\"]', NULL, NULL, '2024-01-09 08:32:48', '2024-01-09 08:32:48'),
(57, 'App\\Models\\User', 1, 'token', '771f3cc3d85e3ddf734df029a7b37ed64b9f747b6f24cfc6fb5921e2c81dc26f', '[\"*\"]', NULL, NULL, '2024-01-09 08:32:54', '2024-01-09 08:32:54'),
(58, 'App\\Models\\User', 1, 'token', 'b1b572d0c47ac827820e5a6668ba6be385ed0816a5d5fca9c57aac63d89b3ba2', '[\"*\"]', NULL, NULL, '2024-01-09 08:32:59', '2024-01-09 08:32:59'),
(59, 'App\\Models\\User', 1, 'token', 'c1afe1bc731605834a7f0ef32f2082635dcf4855ad68208b16d7e02f421540f0', '[\"*\"]', NULL, NULL, '2024-01-09 08:33:36', '2024-01-09 08:33:36'),
(60, 'App\\Models\\User', 1, 'token', '219bfae775c683cb5f33921eca4fb6e32279b55ff3c4cac9da892ca954f96ecd', '[\"*\"]', NULL, NULL, '2024-01-09 08:36:06', '2024-01-09 08:36:06'),
(61, 'App\\Models\\User', 9, 'token', 'a08e1550486891cfc7295bba1ac79770236663c8c1c5b13c449154ab562919f5', '[\"*\"]', NULL, NULL, '2024-01-09 08:36:36', '2024-01-09 08:36:36'),
(62, 'App\\Models\\User', 1, 'token', '8d5e1734ffd5254578b3789595d68114797eef8037a86d5d6fa8ad713aba8d22', '[\"*\"]', NULL, NULL, '2024-01-09 08:37:08', '2024-01-09 08:37:08'),
(63, 'App\\Models\\User', 1, 'token', '534734775da219d601832441b04ac85e8a2d7e2c3aa7f294265aa84b738f7c99', '[\"*\"]', NULL, NULL, '2024-01-09 08:38:12', '2024-01-09 08:38:12'),
(64, 'App\\Models\\User', 1, 'token', '91b33cfbadcafcacba84f0db00b35f62c9bee049e05cb393c40082465401dc90', '[\"*\"]', NULL, NULL, '2024-01-09 08:44:59', '2024-01-09 08:44:59'),
(65, 'App\\Models\\User', 1, 'token', '2ecaec5f54f83dad8204f445f79d3a440b091b68e079106b27d6bfa4ed0ec2ee', '[\"*\"]', NULL, NULL, '2024-01-09 08:49:21', '2024-01-09 08:49:21'),
(66, 'App\\Models\\User', 2, 'token', 'a9df730c20a669a783a2cc12594acb019d539e8efacff505521823043fdb22ae', '[\"*\"]', NULL, NULL, '2024-01-09 08:54:07', '2024-01-09 08:54:07'),
(67, 'App\\Models\\User', 2, 'token', '9c06275387063ded4d3274d9a434d2f4b575c49d63a519700f2d01bb9c61d805', '[\"*\"]', NULL, NULL, '2024-01-09 08:54:14', '2024-01-09 08:54:14'),
(68, 'App\\Models\\User', 2, 'token', '4dfd47dd3e720cdb164e968f786b634094c7f70177a736bf4bcc1ead9639a60b', '[\"*\"]', NULL, NULL, '2024-01-09 08:54:20', '2024-01-09 08:54:20'),
(69, 'App\\Models\\User', 2, 'token', '34e7f1dcadaa6220c141bf333d3bdf1251177502e744ac74a7c8b1d534e5640a', '[\"*\"]', NULL, NULL, '2024-01-09 08:54:44', '2024-01-09 08:54:44'),
(70, 'App\\Models\\User', 2, 'token', '8333abccd6d6a8d7a5dcab778375730a1472b8586d5555b92b9c4b1fba12e59c', '[\"*\"]', NULL, NULL, '2024-01-09 08:57:03', '2024-01-09 08:57:03'),
(71, 'App\\Models\\User', 2, 'token', '4473ee7c837de1f10b6ce035321e9856651518c84b41b319bc3885edb830997c', '[\"*\"]', NULL, NULL, '2024-01-09 08:59:25', '2024-01-09 08:59:25'),
(72, 'App\\Models\\User', 1, 'token', '9d28db14e69f385e4d87355a0dd0231696dee6d9ea73837ea04ef4e2671ace19', '[\"*\"]', NULL, NULL, '2024-01-09 09:00:04', '2024-01-09 09:00:04'),
(73, 'App\\Models\\User', 2, 'token', '780e56565e4ff089197dfd152ed540efb627d26aaeaf63ac46edf4b9b515025b', '[\"*\"]', NULL, NULL, '2024-01-09 09:07:08', '2024-01-09 09:07:08'),
(74, 'App\\Models\\User', 2, 'token', '59df36ea8af844b82b762f0b4dcd3ae01c8a96807ffc54ce936c4c2dac3bf3be', '[\"*\"]', NULL, NULL, '2024-01-09 09:07:14', '2024-01-09 09:07:14'),
(75, 'App\\Models\\User', 1, 'token', 'f2839340c79d7974b995a08eab79d97a678ccdd6052dbf3f5597cb50f2b40f35', '[\"*\"]', NULL, NULL, '2024-01-09 09:07:37', '2024-01-09 09:07:37'),
(76, 'App\\Models\\User', 1, 'token', '875353826f9ea6c186654c2ecb73923a71aa2bd70986dd4ada39703461075347', '[\"*\"]', NULL, NULL, '2024-01-09 09:07:47', '2024-01-09 09:07:47'),
(77, 'App\\Models\\User', 2, 'token', '70e4c7879e1ee13f4adbf3a8163fca1e5a74841c60265d5279e7c6ce7a6a21b2', '[\"*\"]', NULL, NULL, '2024-01-09 09:12:10', '2024-01-09 09:12:10'),
(78, 'App\\Models\\User', 1, 'token', 'fd3dd69e625775d28ae172fb93261031904619481f947f37150029a3ea5bc4da', '[\"*\"]', NULL, NULL, '2024-01-09 09:17:07', '2024-01-09 09:17:07'),
(79, 'App\\Models\\User', 2, 'token', '8ffd823af6df9f49323b66b16ebef6d5ef063b930dc1417534adf76d7896cbfc', '[\"*\"]', NULL, NULL, '2024-01-09 09:21:49', '2024-01-09 09:21:49'),
(80, 'App\\Models\\User', 2, 'token', '53d14c6118652c41c5d4c31dc5a01b4aebf0d0b8ed599540e555330ff91b3a86', '[\"*\"]', NULL, NULL, '2024-01-09 09:21:54', '2024-01-09 09:21:54'),
(81, 'App\\Models\\User', 1, 'token', '5c6855cda4ac3ec4dfed599e4cfdbc63301b1623ca80882f62f6289139c26705', '[\"*\"]', NULL, NULL, '2024-01-09 09:22:00', '2024-01-09 09:22:00'),
(82, 'App\\Models\\User', 1, 'token', 'db696dbbb8dcd863670d7b6d32df876905821d08ac7548075f4ab0a1f9ea2f7c', '[\"*\"]', NULL, NULL, '2024-01-09 09:30:10', '2024-01-09 09:30:10'),
(83, 'App\\Models\\User', 2, 'token', '7933b7d2b04b527b5ba807c734d0d9613ad643b03da1cfce82785f58de8ac2ac', '[\"*\"]', NULL, NULL, '2024-01-09 09:33:32', '2024-01-09 09:33:32'),
(84, 'App\\Models\\User', 1, 'token', '8dcf0ccf131b812d39cd7e46a33486a5dcfcf70bed1aa08d4fc15c666d70f888', '[\"*\"]', NULL, NULL, '2024-01-09 09:33:45', '2024-01-09 09:33:45'),
(85, 'App\\Models\\User', 1, 'token', '5fa01d77e35866591331a9244aca7e87f1504ffb5d434133661f4023e4d8e254', '[\"*\"]', NULL, NULL, '2024-01-09 09:34:59', '2024-01-09 09:34:59'),
(86, 'App\\Models\\User', 2, 'token', '0b981fe24c4241917f41ed3f79cbd5fcf8ad441e5dc3bac2ffdc4ec1b9ec950d', '[\"*\"]', NULL, NULL, '2024-01-09 09:39:47', '2024-01-09 09:39:47'),
(87, 'App\\Models\\User', 1, 'token', '9f522c5a9818b5234516b14a1710feea83f337589123dea8b043cb4d060f1626', '[\"*\"]', NULL, NULL, '2024-01-09 11:00:04', '2024-01-09 11:00:04'),
(88, 'App\\Models\\User', 2, 'token', 'c45125037eac5fa95195eceafe45dfb9ef4d60fdf7ab3e96c70c8a4acb3ea7f2', '[\"*\"]', NULL, NULL, '2024-01-09 11:00:35', '2024-01-09 11:00:35'),
(89, 'App\\Models\\User', 1, 'token', '5b0935a3ff20f6b6d4971d28ac29a8adcd7fe7f2616565d0a1f16e31e5e6dcc0', '[\"*\"]', NULL, NULL, '2024-01-09 11:04:08', '2024-01-09 11:04:08'),
(90, 'App\\Models\\User', 1, 'token', '4b840cc63f14debd1b297e18cd4bc5becce742f8c4e2704a68753a8bf5f39676', '[\"*\"]', NULL, NULL, '2024-01-09 11:05:47', '2024-01-09 11:05:47'),
(91, 'App\\Models\\User', 1, 'token', '303657fdb171d38ea45881476fd239bd2808d53ac313337f455f50d4850b4bb4', '[\"*\"]', NULL, NULL, '2024-01-09 11:07:54', '2024-01-09 11:07:54'),
(92, 'App\\Models\\User', 2, 'token', '30ae8ad12f554b6e8b5e900b88b1b74065ddd6ffcaf1e40a7a09d494ba991c96', '[\"*\"]', NULL, NULL, '2024-01-09 11:08:42', '2024-01-09 11:08:42'),
(93, 'App\\Models\\User', 1, 'token', 'f68cd0cdc5889f354094c1d5888d5f0823dcf339eb5d6e8592a81e9097c677f9', '[\"*\"]', NULL, NULL, '2024-01-09 11:11:55', '2024-01-09 11:11:55'),
(94, 'App\\Models\\User', 2, 'token', 'c20dde092626bf061a264b6445a2cf2353ac12b94a1a730c9237f7037d04e304', '[\"*\"]', NULL, NULL, '2024-01-09 11:15:13', '2024-01-09 11:15:13'),
(95, 'App\\Models\\User', 1, 'token', '9bbabba1d18b2b90bf16ad1cc5bb3d8099d476c9c5e207f5670eaba90f47b786', '[\"*\"]', NULL, NULL, '2024-01-09 11:28:02', '2024-01-09 11:28:02'),
(96, 'App\\Models\\User', 2, 'token', '7e64cff2fddb4e5e591966952a0a736d76d9b68a0654dd8d5f99d5ec6bc262fe', '[\"*\"]', NULL, NULL, '2024-01-09 11:29:35', '2024-01-09 11:29:35'),
(97, 'App\\Models\\User', 2, 'token', '95e7eb56fb276ac86b6654ed56880af5e4607a71f56779607c7badcc98dddd73', '[\"*\"]', NULL, NULL, '2024-01-09 11:50:23', '2024-01-09 11:50:23'),
(98, 'App\\Models\\User', 2, 'token', '3fd915bc6d9a25cf7cae868a4bee2511e1805fad0d240b39689092e220fd80d2', '[\"*\"]', NULL, NULL, '2024-01-09 12:03:11', '2024-01-09 12:03:11'),
(99, 'App\\Models\\User', 2, 'token', 'f321f170087ed7da8f8ff96f441dd87f20a092dfe4b52fd9dcb4df0ff5fa7189', '[\"*\"]', NULL, NULL, '2024-01-09 12:23:35', '2024-01-09 12:23:35'),
(100, 'App\\Models\\User', 2, 'token', '34b33c0ffe5e89eeedb93870328a2c47fd748fbea907a690896bdb9f994c34ab', '[\"*\"]', NULL, NULL, '2024-01-09 12:23:52', '2024-01-09 12:23:52'),
(101, 'App\\Models\\User', 1, 'token', 'b3dd1e39fc5d4808da7203f5c6b1b23021d58790a65f4f3443779dca8fdae392', '[\"*\"]', NULL, NULL, '2024-01-09 12:30:40', '2024-01-09 12:30:40'),
(102, 'App\\Models\\User', 1, 'token', '8a3bf604697b0b531c3f9809c3601833d2d2b71034c1c77203a73bcaef563c79', '[\"*\"]', NULL, NULL, '2024-01-09 12:32:42', '2024-01-09 12:32:42'),
(103, 'App\\Models\\User', 1, 'token', 'd87dbd79d10b1f2fd5e62243254f223ac0c94989aa69df5872a2cb93a4a88146', '[\"*\"]', NULL, NULL, '2024-01-09 12:35:22', '2024-01-09 12:35:22'),
(104, 'App\\Models\\User', 1, 'token', '04d27c74377ed848b9549738f43053d94d4394e8d28c388d3d15f4784881f318', '[\"*\"]', NULL, NULL, '2024-01-09 12:37:31', '2024-01-09 12:37:31'),
(105, 'App\\Models\\User', 10, 'token', '74b38da4ed4cf91268a94fa8de07163237056c03af325f919859668f0da5763c', '[\"*\"]', NULL, NULL, '2024-01-09 13:04:34', '2024-01-09 13:04:34'),
(106, 'App\\Models\\User', 2, 'token', '1692a42b8452757d3cc9481c14fb5925bbdc591163dbb0fa78384098727bb505', '[\"*\"]', NULL, NULL, '2024-01-09 13:07:49', '2024-01-09 13:07:49'),
(107, 'App\\Models\\User', 2, 'token', '74bf6acead2dd55008e5b0b050ef4f1537b4908771b41ff7f854512a21960fef', '[\"*\"]', NULL, NULL, '2024-01-09 13:08:01', '2024-01-09 13:08:01'),
(108, 'App\\Models\\User', 1, 'token', '6e574c8495aa188412e00f84cf932e341ea8a619e5060fe47ebc5c138f71c27e', '[\"*\"]', NULL, NULL, '2024-01-09 13:08:10', '2024-01-09 13:08:10'),
(109, 'App\\Models\\User', 11, 'token', 'a67f2281e2191086563be1aa71c6ddbed5bc24196f6f545412ec530c434a3f37', '[\"*\"]', NULL, NULL, '2024-01-09 14:19:38', '2024-01-09 14:19:38'),
(110, 'App\\Models\\User', 11, 'token', '280f1756dd7220c1bfec5894db95623de13bf8e0a614299b4b1c5759dabd1285', '[\"*\"]', NULL, NULL, '2024-01-09 14:25:57', '2024-01-09 14:25:57'),
(111, 'App\\Models\\User', 12, 'token', 'a209425a15486eb351d91fea8bde538d293de67e890bf4d683b211aa59c87d15', '[\"*\"]', NULL, NULL, '2024-01-09 14:29:18', '2024-01-09 14:29:18'),
(112, 'App\\Models\\User', 12, 'token', '2c307c7a4a1c64cfdc336578f6582b2f0f09939a107256d14b78666174ef97c9', '[\"*\"]', NULL, NULL, '2024-01-09 14:29:43', '2024-01-09 14:29:43'),
(113, 'App\\Models\\User', 11, 'token', '7ae28dd7ad8672679c5b079ebed5accf6fb52645bf8c9be7d4fd0de8d43cb766', '[\"*\"]', NULL, NULL, '2024-01-09 14:39:08', '2024-01-09 14:39:08'),
(114, 'App\\Models\\User', 11, 'token', 'd6c57bb6a93a47245b0cf9f9014c7fc2de4020976ee40d7512e155373b1bec76', '[\"*\"]', NULL, NULL, '2024-01-10 00:11:24', '2024-01-10 00:11:24'),
(115, 'App\\Models\\User', 10, 'token', 'aee1a9ceb03d534534bb06f727b79fbc4eef8239a89ffe9a84cd5b183d506422', '[\"*\"]', NULL, NULL, '2024-01-10 00:11:59', '2024-01-10 00:11:59'),
(116, 'App\\Models\\User', 11, 'token', '6e6660ab4ccd3848f55b789be526709127d245a0b5ceac5da529fd45724403fc', '[\"*\"]', NULL, NULL, '2024-01-10 01:44:04', '2024-01-10 01:44:04'),
(117, 'App\\Models\\User', 11, 'token', '024038f884808ba6827459f23c6c81a770ad0af75cd0c403e5cef67d36634038', '[\"*\"]', NULL, NULL, '2024-01-10 01:45:27', '2024-01-10 01:45:27'),
(118, 'App\\Models\\User', 11, 'token', 'c6532dc73b9d9fc2672614cf274fd206f3aab069babf9705882a1ac4046ead09', '[\"*\"]', NULL, NULL, '2024-01-10 01:50:24', '2024-01-10 01:50:24'),
(119, 'App\\Models\\User', 11, 'token', '8c68e9fe8aaf367a2fad4dcf1ff9f82beb49f448e392ceff55b135203f93ada4', '[\"*\"]', NULL, NULL, '2024-01-10 03:11:31', '2024-01-10 03:11:31'),
(120, 'App\\Models\\User', 13, 'token', 'e67b8fd6fc7fae4ceeaa113f2a6ce8979f3ea264a6f010f6d88243db7648aca2', '[\"*\"]', NULL, NULL, '2024-01-10 04:43:51', '2024-01-10 04:43:51'),
(121, 'App\\Models\\User', 10, 'token', '15ae21c773fed2917b6a4bf15c5d0bf680d06f4de386a56d0fe8f4fab7635ed5', '[\"*\"]', NULL, NULL, '2024-01-10 04:44:00', '2024-01-10 04:44:00'),
(122, 'App\\Models\\User', 11, 'token', '85b9d3d283d2bb631abbb866110f2ac6b32589f210c3451029f18bca9cba5a81', '[\"*\"]', NULL, NULL, '2024-01-10 04:44:14', '2024-01-10 04:44:14'),
(123, 'App\\Models\\User', 10, 'token', '71396a187320ab3def4f42dad6c76db481c79080b702f90582bdb1c4d6af4a3f', '[\"*\"]', NULL, NULL, '2024-01-10 04:45:06', '2024-01-10 04:45:06'),
(124, 'App\\Models\\User', 11, 'token', 'c4fbee475fa1e1d53850be4e23f7db6ac3f81d8e95bc876ebf69ddd509413a3d', '[\"*\"]', NULL, NULL, '2024-01-10 04:54:46', '2024-01-10 04:54:46'),
(125, 'App\\Models\\User', 11, 'token', 'e83e69624641dc4845f44027c3738798b782df753dc1c94c5a3bd1320fad25fd', '[\"*\"]', NULL, NULL, '2024-01-10 04:56:55', '2024-01-10 04:56:55'),
(126, 'App\\Models\\User', 10, 'token', 'babe0c080cba68de3be0223b495e62aa4928ca5c4155254f952804a5fe0848c4', '[\"*\"]', NULL, NULL, '2024-01-10 06:14:31', '2024-01-10 06:14:31'),
(127, 'App\\Models\\User', 11, 'token', '254d3b841601ffa3bbc646650884ae4c60cecad1bcae46122259cbdab6cbc321', '[\"*\"]', NULL, NULL, '2024-01-10 06:30:47', '2024-01-10 06:30:47'),
(128, 'App\\Models\\User', 10, 'token', '7f9edb66708a7a2870feff6feb2caee194a931bf6f48d6d0dc16d5773e1ad0a5', '[\"*\"]', NULL, NULL, '2024-01-10 06:31:25', '2024-01-10 06:31:25'),
(129, 'App\\Models\\User', 11, 'token', '2d794ab5e9dcbf95383bd9529f3b0e54d5e4fc768c88e6fcc390f9d4ca22df24', '[\"*\"]', NULL, NULL, '2024-01-10 06:41:58', '2024-01-10 06:41:58'),
(130, 'App\\Models\\User', 10, 'token', '90ea99255366b6dc7841e8016a718cb5c94dc2c4606d76511fd1ceb4436c8e53', '[\"*\"]', NULL, NULL, '2024-01-10 06:42:06', '2024-01-10 06:42:06'),
(131, 'App\\Models\\User', 11, 'token', '951458e308de14f7881b93c10cc4c56627d05d8814c1619643d2cf4f967bfb52', '[\"*\"]', NULL, NULL, '2024-01-10 06:56:38', '2024-01-10 06:56:38'),
(132, 'App\\Models\\User', 12, 'token', '08d42036f1c9f0dd4c349bcd5b4156841aacd38fa4f9b8028c432642c41a93de', '[\"*\"]', NULL, NULL, '2024-01-10 07:02:46', '2024-01-10 07:02:46'),
(133, 'App\\Models\\User', 10, 'token', '323387b1c508880a342e01789d6a538f11dc0b968da6dc6afdee3ba87ad9038b', '[\"*\"]', NULL, NULL, '2024-01-10 08:47:52', '2024-01-10 08:47:52'),
(134, 'App\\Models\\User', 10, 'token', '98a6368b6e2c891903ecf52fd0c525f840767668c8acbcb8a889fbdc0ecdb4e9', '[\"*\"]', NULL, NULL, '2024-01-10 09:34:02', '2024-01-10 09:34:02'),
(135, 'App\\Models\\User', 10, 'token', '8017cc47294fc6a2f2fe646daecf407b44c2f3b479c1e01b8017fac5aea1f988', '[\"*\"]', NULL, NULL, '2024-01-10 09:36:25', '2024-01-10 09:36:25'),
(136, 'App\\Models\\User', 10, 'token', '4dc1883850644e00a6652efc82e2994caafddb3734dc4d9b14eac9c5626adbde', '[\"*\"]', NULL, NULL, '2024-01-10 09:36:42', '2024-01-10 09:36:42'),
(137, 'App\\Models\\User', 10, 'token', 'e54d4c6e9bafb4eaecce8442d5ceb15634dbdf81c01a7b7ceeef5d8612a9e3d9', '[\"*\"]', NULL, NULL, '2024-01-10 09:36:51', '2024-01-10 09:36:51'),
(138, 'App\\Models\\User', 10, 'token', '47772e76791ddba2ac6365d9ae3bfee80002ce10f90c914dc57d49172773c66f', '[\"*\"]', NULL, NULL, '2024-01-10 09:37:14', '2024-01-10 09:37:14'),
(139, 'App\\Models\\User', 10, 'token', '3d01f5ba72207b373fef89cd7a8f6d19b81e1f2bd5ea7f78c695b4474291938b', '[\"*\"]', NULL, NULL, '2024-01-10 09:37:22', '2024-01-10 09:37:22'),
(140, 'App\\Models\\User', 10, 'token', 'fbb94d45f00dc98ea98b5e5a64839664b3f0b35663e0e4c95792fd0a5203bd30', '[\"*\"]', NULL, NULL, '2024-01-10 09:37:52', '2024-01-10 09:37:52'),
(141, 'App\\Models\\User', 10, 'token', 'ac4da28e78e9a6d5af42078c9b0438784be045e2a47424e716d6ea9b0ee2f1f9', '[\"*\"]', NULL, NULL, '2024-01-10 09:38:00', '2024-01-10 09:38:00'),
(142, 'App\\Models\\User', 10, 'token', '5c0845bff41e638c1e60bf0ce54eb0af51e953dd169a3de8cc353a62e3a59a3c', '[\"*\"]', NULL, NULL, '2024-01-10 09:38:14', '2024-01-10 09:38:14'),
(143, 'App\\Models\\User', 10, 'token', 'a1936cae8b29104d6f1b5f3a757c3abe22383e77d64357a420b27083870bf43f', '[\"*\"]', NULL, NULL, '2024-01-10 09:39:21', '2024-01-10 09:39:21'),
(144, 'App\\Models\\User', 10, 'token', '9633e2ca32bb3fdd05f94f2cede27a9c1085453d77ce875eee982c2af9c8b72c', '[\"*\"]', NULL, NULL, '2024-01-10 09:39:52', '2024-01-10 09:39:52'),
(145, 'App\\Models\\User', 11, 'token', '1aa0daf5cd9f01cefe59f9d898048a6788e1309fe07770dc71ba367b53f2ecf5', '[\"*\"]', NULL, NULL, '2024-01-10 09:40:04', '2024-01-10 09:40:04'),
(146, 'App\\Models\\User', 11, 'token', '9e07db08691aabed738dc531107bb0438da0167699f8b0d04b376f4cd3c9703f', '[\"*\"]', NULL, NULL, '2024-01-10 09:40:28', '2024-01-10 09:40:28'),
(147, 'App\\Models\\User', 10, 'token', '4cde8f2c224d9c1bdb87ba38b4d04789553919c68f1a0fa557843ad5842de778', '[\"*\"]', NULL, NULL, '2024-01-10 09:40:55', '2024-01-10 09:40:55'),
(148, 'App\\Models\\User', 11, 'token', '49cb17bc10029eb031f0056e7765154e53e409d9e29d6c3303624c55e90afb72', '[\"*\"]', NULL, NULL, '2024-01-10 09:46:13', '2024-01-10 09:46:13'),
(149, 'App\\Models\\User', 10, 'token', 'd1eb9ab8436fa1c9710df82872709a574f2bda9f140c9ab77584ba7a0415f9eb', '[\"*\"]', NULL, NULL, '2024-01-10 09:46:39', '2024-01-10 09:46:39'),
(150, 'App\\Models\\User', 11, 'token', '26599f747f182f651989afcd5ac9fb610650e96dd7af44a1254150e5a45e2a4b', '[\"*\"]', NULL, NULL, '2024-01-10 09:46:51', '2024-01-10 09:46:51'),
(151, 'App\\Models\\User', 11, 'token', '6f2e5c57dd2bbe8d61d46de8d25bba0a1402b832675065a3c50f3bed303dbde8', '[\"*\"]', NULL, NULL, '2024-01-10 09:48:40', '2024-01-10 09:48:40'),
(152, 'App\\Models\\User', 11, 'token', 'a437c5f048bcf4f6e501481af8d723cb92864e97866e33b62e24317db581c1bb', '[\"*\"]', NULL, NULL, '2024-01-10 10:06:07', '2024-01-10 10:06:07'),
(153, 'App\\Models\\User', 10, 'token', '3f234b30283af5f08f65e5bbf909407d038fad7043142a6eae60be9523ac01e9', '[\"*\"]', NULL, NULL, '2024-01-10 10:59:05', '2024-01-10 10:59:05'),
(154, 'App\\Models\\User', 10, 'token', '750b02970a76df3bcc42d4be61b631e4b8b4a73b090a22b12c82c18e05841871', '[\"*\"]', NULL, NULL, '2024-01-10 16:02:44', '2024-01-10 16:02:44'),
(155, 'App\\Models\\User', 11, 'token', 'a6dfdd15a6acf10a2571c20e20ef7810240d05a43ee25567219a303326a6ae06', '[\"*\"]', NULL, NULL, '2024-01-10 16:04:39', '2024-01-10 16:04:39'),
(156, 'App\\Models\\User', 10, 'token', 'd4f84e5ac385efe1d47a560ae6995246b6b6cb8e0d4a2c1541f9334412186927', '[\"*\"]', NULL, NULL, '2024-01-10 16:05:18', '2024-01-10 16:05:18'),
(157, 'App\\Models\\User', 11, 'token', 'a00443ec744bb40990a78f3b703a69dae63fe9a5557fc13da595ebb133246235', '[\"*\"]', NULL, NULL, '2024-01-10 16:56:03', '2024-01-10 16:56:03'),
(158, 'App\\Models\\User', 10, 'token', '337d072fbf6a0b7fd71b22226093cf91a8c8148119406e77582cb1980a719169', '[\"*\"]', NULL, NULL, '2024-01-10 16:56:48', '2024-01-10 16:56:48'),
(159, 'App\\Models\\User', 11, 'token', '03cf036f4e921cdb4a29be8d99c816025cf42c591bfe4be5000560bbed43bb13', '[\"*\"]', NULL, NULL, '2024-01-10 16:58:38', '2024-01-10 16:58:38'),
(160, 'App\\Models\\User', 10, 'token', 'be75a696cee6c1ebc37f44af7feef51ee3d5ace76f09f9aab4fca05b4f7d9d3c', '[\"*\"]', NULL, NULL, '2024-01-10 16:58:48', '2024-01-10 16:58:48'),
(161, 'App\\Models\\User', 11, 'token', '603f94c6d7aab7de86eb77e8c6f91a9a70056c7953a4f23c642297c3690b4668', '[\"*\"]', NULL, NULL, '2024-01-10 17:00:15', '2024-01-10 17:00:15'),
(162, 'App\\Models\\User', 10, 'token', '2e688cda1c25e3a58eb23f646686edc2c5fa7cbd21307d2bd045a5e54fbb9e48', '[\"*\"]', NULL, NULL, '2024-01-10 17:02:17', '2024-01-10 17:02:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `created_at`, `updated_at`) VALUES
(9, 'Oliver Gould', 'nuwybunyp@mailinator.com', '$2y$12$V/fhUKIbC8OqpayZa2bKvetm1BLN3J1jJCOREh0mOntEP4H7zWYC2', 'user', '2024-01-09 08:36:36', '2024-01-09 08:36:36'),
(10, 'kibwana', 'samaki@hh.com', '$2y$12$kKTTFyGDVcwB.ukUWqSYGeh/Uyk8NXuvtMyO7Fk6ocSZASAoNXZr2', 'user', '2024-01-09 13:04:34', '2024-01-09 13:04:34'),
(11, 'kim', 'dulisadik@gmail.com', '$2y$12$4zWyeuxw..uxf.CK4EZ2T.dlru9cA./66R2tjthpa13da1IA7nME2', 'admin', '2024-01-09 14:19:38', '2024-01-09 14:19:38'),
(12, 'mohamed', 'hajum@gmail.com', '$2y$12$B1Qs2Xkzpk73LCEsGvrasODvyBn61dMNQL2f37t5q/5T74z8Q4Oye', 'user', '2024-01-09 14:29:18', '2024-01-09 14:29:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_book_id_foreign` (`book_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_user_id_foreign` (`user_id`),
  ADD KEY `favorites_book_id_foreign` (`book_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `likes_user_id_book_id_unique` (`user_id`,`book_id`),
  ADD KEY `likes_book_id_foreign` (`book_id`);

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
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
