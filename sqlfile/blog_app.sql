-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2024 at 10:40 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `created_at`) VALUES
(15, 'Colombo', 'Colombo, city, executive and judicial capital of Sri Lanka. (Sri Jayewardenepura Kotte, a Colombo suburb, is the legislative capital.) Situated on the west coast of the island, just south of the Kelani River, Colombo is a principal port on the Indian Ocean.', '2024-09-01 08:00:34'),
(16, 'Trincomali', 'Colombo, city, executive and judicial capital of Sri Lanka. (Sri Jayewardenepura Kotte, a Colombo suburb, is the legislative capital.) Situated on the west coast of the island, just south of the Kelani River, Colombo is a principal port on the Indian Ocean.', '2024-09-01 08:00:54'),
(17, 'Sigiriya Rock', 'Colombo, city, executive and judicial capital of Sri Lanka. (Sri Jayewardenepura Kotte, a Colombo suburb, is the legislative capital.) Situated on the west coast of the island, just south of the Kelani River, Colombo is a principal port on the Indian Ocean.', '2024-09-01 08:02:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
