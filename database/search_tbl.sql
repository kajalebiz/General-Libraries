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
-- Table structure for table `search_tbl`
--

CREATE TABLE `search_tbl` (
  `id` int(11) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `contactno` bigint(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `birthdate` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `search_tbl`
--

INSERT INTO `search_tbl` (`id`, `fname`, `lname`, `contactno`, `email`, `birthdate`, `gender`) VALUES
(1, 'kajal', 'patel', 7878552759, 'kajal@patel.com', '1997-07-04', 'female'),
(2, 'kirtan', 'vyas', 7854691230, 'kirtan@ab.com', '1997-04-12', 'female'),
(3, 'mansi', 'shah', 9874561230, 'mansi@12.com', '1974-06-12', 'female'),
(4, 'sagar', 'shah', 8794562314, 'sagar@as.com', '1996-04-15', 'male'),
(5, 'ankit', 'pandya', 8546791234, 'ankit@ab.com', '1995-12-11', 'male'),
(6, 'juhi', 'desai', 8745629136, 'juhi@ab.com', '0000-00-00', 'female'),
(7, 'mamta', 'chavda', 8456721391, 'mamta12@12.com', '1994-07-02', 'female'),
(8, 'roshni', 'bangal', 8547963210, 'roshni@12ab.com', '1996-07-24', 'female'),
(9, 'hiren', 'patel', 9033025528, 'hiren@ab.com', '1994-10-27', 'male'),
(10, 'disha', 'jogani', 8547962134, 'disha@abc.com', '1996-11-04', 'female'),
(11, 'ronak', 'shah', 8752139512, 'ronak@aj.com', '1995-11-02', 'male'),
(12, 'krimal', 'vyas', 8546971230, 'krimal@12.com', '1997-04-12', 'female'),
(13, 'monika', 'vadchhak', 7845692315, 'monika@nbm.com', '1995-02-08', 'female'),
(14, 'Krishna', 'dhameliya', 7878552759, 'kajal@patel.com', '1997-07-04', 'female'),
(15, 'kiran', 'gondaliya', 7894562130, 'kiran@gmail.com', '1997-02-01', 'Female'),
(16, 'parth', 'parmar', 8754691231, 'parth@gmail.com', '1997-11-02', 'Male'),
(17, 'kamal', 'patel', 8974561230, 'kamal@gmail.com', '1998-11-05', 'Male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `search_tbl`
--
ALTER TABLE `search_tbl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `search_tbl`
--
ALTER TABLE `search_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
