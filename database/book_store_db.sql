-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2024 at 10:31 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_store_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`) VALUES
(1, 'Ramli M.S'),
(2, 'Hussein Rahmat'),
(3, 'Aliff Teega'),
(4, 'Mat Lutfi'),
(5, 'Adam'),
(6, 'Muhammad Adam Zikri Bin Mohd Fauzi'),
(7, 'Stephen Hawking');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(30) NOT NULL,
  `author_ids` text NOT NULL,
  `title` varchar(200) NOT NULL,
  `year` int(4) NOT NULL,
  `description` text NOT NULL,
  `image_path` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `author_ids`, `title`, `year`, `description`, `image_path`, `date_created`) VALUES
(6, '2', 'What The Dead Know', 2009, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '1714670700_book1.jpeg', '2024-05-03 01:25:56'),
(7, '4', 'I Saw A Man', 2012, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '1714670760_book2.jpeg', '2024-05-03 01:26:21'),
(8, '3', 'I Will Save You', 2016, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '1714670760_book3.jpeg', '2024-05-03 01:26:50'),
(9, '5', 'All is Silence', 2020, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '1714670820_book4.jpg', '2024-05-03 01:27:26'),
(10, '5', 'The Secret History', 2007, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '1714670940_book5.jpg', '2024-05-03 01:29:32'),
(11, '7', 'A Brief History Of Time', 2009, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '1714671000_book6.webp', '2024-05-03 01:30:10');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`) VALUES
(1, 'Book Collection App');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
