-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 02, 2018 at 10:02 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `search_id` int(11) NOT NULL,
  `country` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `search_id`, `country`, `state`, `city`) VALUES
(1, 1, 'India', 'Gujrat', 'Ahmedabad'),
(2, 2, 'India', 'Gujrat', 'Nagpur'),
(3, 3, 'India', 'Gujrat', 'Mumbai'),
(4, 4, 'India', 'Rajsthan', 'Jaipur'),
(5, 5, 'India', 'UttaraKhand', 'ABC'),
(6, 6, 'Japan', 'chiba', 'Hamamatsu'),
(7, 7, 'Singapor', 'abc', 'Tampines'),
(8, 8, 'Australia', 'def', 'sydney'),
(9, 9, 'Canada', 'ijk', 'torrento'),
(10, 10, 'US', 'pqr', 'London'),
(11, 11, 'India', 'Asam', 'Guwahti'),
(12, 12, 'Japan', 'chiba', 'Hamamatsu'),
(13, 13, 'Singapor', 'abc', 'Tampines'),
(14, 14, 'Australia', 'def', 'sydney'),
(15, 15, 'Canada', 'ijk', 'torrento'),
(16, 16, 'US', 'pqr', 'London'),
(17, 17, 'India', 'Asam', 'Guwahti');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `search_id` (`search_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`search_id`) REFERENCES `search_tbl` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
