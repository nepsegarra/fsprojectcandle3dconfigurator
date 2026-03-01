-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2026 at 02:38 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `candledb`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `recipient_name` varchar(255) DEFAULT NULL,
  `occasion` varchar(100) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `extra_prayer` text DEFAULT NULL,
  `font_style` varchar(50) DEFAULT NULL,
  `cross_type` varchar(100) DEFAULT NULL,
  `design_colour` varchar(20) DEFAULT NULL,
  `ribbon_type` varchar(100) DEFAULT NULL,
  `delivery_method` varchar(50) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_email`, `recipient_name`, `occasion`, `size`, `location`, `event_date`, `extra_prayer`, `font_style`, `cross_type`, `design_colour`, `ribbon_type`, `delivery_method`, `image_path`, `price`, `created_at`) VALUES
(1, 'Guest', 'Jose', 'Baptism', 'medium', '', '2026-01-11', '', 'Classic', 'Celtic', '#d4af37', 'Gold', 'Ship', NULL, NULL, '2026-01-08 12:01:02'),
(2, 'Guest', 'Jose', 'Baptism', 'medium', '', '2026-01-10', '', 'Classic', 'Celtic', '#d4af37', 'Gold', 'Ship', NULL, NULL, '2026-01-08 12:03:29'),
(3, 'Guest', 'Jose', 'Baptism', 'medium', '', '2026-01-10', '', 'Modern', 'Celtic', '#d4af37', 'Gold', 'Ship', NULL, NULL, '2026-01-08 12:39:22'),
(4, 'Guest', 'Jose', 'Wedding', 'small', '', '2026-01-10', '', 'Classic', 'Celtic', '#d4af37', 'Gold', 'Collect', NULL, NULL, '2026-01-08 12:42:09'),
(5, 'Guest', 'test', 'Baptism', 'large', '', '2026-01-16', 'dfsgd', 'Classic', 'Celtic', '#d4af37', 'Gold', 'Ship', NULL, NULL, '2026-01-08 12:45:55'),
(6, 'Guest', 'yrdy', 'Baptism', 'large', '', '2026-01-10', 'dgdd', 'Modern', 'Celtic', '#d4af37', 'Gold', 'Ship', NULL, NULL, '2026-01-08 12:57:45'),
(7, 'Guest', 'jose', 'Baptism', 'medium', '', '2026-01-12', 'test', 'Classic', 'Celtic', '#736535', 'Gold', 'Ship', NULL, NULL, '2026-01-10 10:05:36'),
(8, 'junsegarra@gmail.com', 'Jose', 'Baptism', 'medium', 'St Patrick Church', '2026-01-18', '', 'Classic', 'Celtic', '#d4af37', 'Gold', 'Collect', NULL, NULL, '2026-01-10 10:33:28'),
(9, 'junsegarra@gmail.com', 'Jose', 'Baptism', 'small', 'St Patrick', '2026-01-18', '', 'Classic', 'Celtic', '#504f49', 'Gold', 'Collect', NULL, NULL, '2026-01-10 10:53:13'),
(10, 'junsegarra@gmail.com', 'Maria', 'Baptism', 'medium', 'St Patrick', '2026-01-18', '', 'Modern', 'Simple', '#d4af37', 'Gold', 'Ship', NULL, NULL, '2026-01-10 11:17:24'),
(11, 'Guest', 'Jose', 'Baptism', 'small', '', '2026-01-18', '', 'Classic', 'Celtic', '#35332c', 'Gold', 'Ship', NULL, NULL, '2026-01-10 12:39:00'),
(12, 'Guest', 'Jose', 'Baptism', 'small', '', '2026-01-18', '', 'Classic', 'Celtic', '#35332c', 'Gold', 'Ship', NULL, NULL, '2026-01-10 12:44:30'),
(13, 'Guest', 'Jose and Maria', 'FIRST HOLY COMMUNION', 'Medium', 'St Patrick', '2026-01-18', '', 'Cursive', '†', '#917a2b', '#D4AF37', 'Ship', NULL, NULL, '2026-01-10 12:58:45'),
(14, 'Guest', 'Marina Jean', 'THE BAPTISM OF', 'medium', 'New Zealand', '2026-02-20', 'God Bless', 'Cursive', '†', '#d4af37', '#ADD8E6', NULL, NULL, NULL, '2026-02-04 05:57:24'),
(15, 'Guest', 'Jose Rizal', 'THE WEDDING OF', 'large', '', '2026-02-27', 'God Bless', 'Serif', '☩', '#d4af37', '#FFC0CB', NULL, NULL, NULL, '2026-02-04 06:18:28'),
(16, 'Guest', 'John Wick', 'THE BAPTISM OF', 'large', 'New Zealand', '2026-02-18', 'God Bless you.', 'Cursive', '†', '#d4af37', '#ADD8E6', NULL, NULL, NULL, '2026-02-15 09:23:55'),
(17, 'junsegarra@gmail.com', 'John Cena', 'FIRST HOLY COMMUNION', 'small', 'New zealand', '2026-02-20', 'Blessings', 'Serif', '†', '#7655b4', '#D4AF37', NULL, NULL, NULL, '2026-02-15 09:29:38'),
(18, 'nep.segarra@gmail.com', 'Nep Segarra', 'FIRST HOLY COMMUNION', 'medium', 'Auckland', '2026-02-20', 'It is well with my soul', 'Serif', '†', '#4035d4', '#ADD8E6', NULL, NULL, NULL, '2026-02-16 07:11:04'),
(19, 'admin@squaregift.com', 'Juan Tamad', 'THE BAPTISM OF', 'small', 'New Zealand', '2026-02-20', 'God Bless', 'Serif', '†', '#9535d4', '#ADD8E6', NULL, NULL, NULL, '2026-02-18 05:56:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `mobile`, `address`, `password`) VALUES
(1, 'junsegarra@gmail.com', '02102218486', 'Flat 304/21 Tawari Street, Mount Eden', '1q2w3e4r'),
(3, 'admin@thesquaregiftstore', '02102218486', '43 Wyndham Street, Auckland CBD', '123456'),
(4, 'admin@squaregift.com', '021881386', 'Auckland CBD', 'qwerty1'),
(5, 'nep.segarra@gmail.com', '02102218486', '43 Wyndham Street', 'qwerty1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
