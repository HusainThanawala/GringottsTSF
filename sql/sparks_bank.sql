-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2021 at 12:37 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sparks_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Lucius Malfoy', 'Bellatrix Lestrange', 5000, '2021-02-11 17:03:20'),
(2, 'Harry Potter', 'Bill Weasley', 1000, '2021-02-11 17:03:38'),
(3, 'Albus Dumbledore', 'Kingsley Shacklebolt', 100, '2021-02-11 17:04:22'),
(4, 'Neville Longbottom', 'Harry Potter', 5, '2021-02-11 17:04:48'),
(5, 'Sirius Black', 'Harry Potter', 50000, '2021-02-11 17:05:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Albus Dumbledore', 'hmadumbledore@hogwarts.org', 89900),
(2, 'Arthur Weasley', 'arthurweasley@ministry.gov', 1000),
(3, 'Lucius Malfoy', 'luciusmalfoy@malfoy.com', 89995000),
(4, 'Sirius Black', 'siriusblack@hogwarts.org', 6950000),
(5, 'Kingsley Shacklebolt', 'kshacklebolt@ministry.g', 10100),
(6, 'Bill Weasley', 'billweasley@gringott.org', 6000),
(7, 'Harry Potter', 'harrypotter@hogwarts.org', 149005),
(8, 'Bellatrix Lestrange', 'bellalestrange@lestrange.com', 995000),
(9, 'Neville Longbottom', 'nevillelongbottom@hogwarts.org', 299995),
(10, 'Marvollo Gaunt', 'marvollogaunt@gaunt.com', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
