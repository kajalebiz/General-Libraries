-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2018 at 02:06 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_one`
--

-- --------------------------------------------------------

--
-- Table structure for table `option_master`
--

CREATE TABLE `option_master` (
  `id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `option_key` varchar(255) NOT NULL,
  `option_val` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `option_master`
--

INSERT INTO `option_master` (`id`, `s_id`, `option_key`, `option_val`) VALUES
(1, 1, 'maths', 'maths'),
(2, 1, 'phy', 'phy'),
(3, 1, 'chem', 'chem'),
(4, 1, 'bio', 'bio'),
(5, 1, 'eng', 'eng'),
(6, 2, '11A', '11A'),
(7, 2, '11B', '11B'),
(8, 2, '12B', '12B'),
(9, 2, '12A', '12A'),
(10, 2, '10', '10'),
(11, 2, '9A', '9A'),
(12, 2, '8A', '8A'),
(15, 3, 'Male', 'Male'),
(16, 3, 'Female', 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `select_master`
--

CREATE TABLE `select_master` (
  `id` int(11) NOT NULL,
  `key_word` varchar(255) NOT NULL,
  `ctr_name` varchar(255) NOT NULL,
  `ctr_type` varchar(255) NOT NULL,
  `ctr_extra` varchar(255) NOT NULL,
  `field_identifire` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `select_master`
--

INSERT INTO `select_master` (`id`, `key_word`, `ctr_name`, `ctr_type`, `ctr_extra`, `field_identifire`) VALUES
(1, 'SUBJECT_LIST', 'sub_list', 'CHECKBOX', '', NULL),
(2, 'CLASS_LIST', 'sub_list', 'SELECT', 'style=\"color:red\"', 'option_key'),
(3, 'GENDER_LIST', 'sub_list', 'RADIO', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_data`
--

CREATE TABLE `student_data` (
  `id` int(11) NOT NULL,
  `f_name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `subjects` varchar(20) NOT NULL,
  `class` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_data`
--

INSERT INTO `student_data` (`id`, `f_name`, `password`, `email`, `date`, `subjects`, `class`, `gender`) VALUES
(1, 'mansi', 'mansi1238568', 'man@gmail.com', '2018-08-11', 'maths,bio', '12B', 'Female'),
(2, 'jinal', 'jinal1234', 'ji@gmail.com', '2018-01-17', 'maths,phy', '12A', 'Female'),
(5, 'kirtan', 'vyas', 'ki@gmail.com', '2018-03-17', 'maths', '12A', 'Female'),
(6, 'ruchita', 'ruchu1234', 'ri@gmail.com', '2018-04-17', 'maths,phy', '12A', 'Female'),
(7, 'palakpatel', 'palak12345745', 'palak@gmail.com', '2018-01-07', 'maths,che', '10A', 'Female'),
(8, 'mansi', 'shahyegy', 'm@gmail.com', '2017-09-12', 'maths,che', '10A', 'Female'),
(9, 'tej', 'tej123455', 't@gmail.com', '2018-03-12', 'maths,che', '10A', 'Male'),
(10, 'kirtan', 'vyas1233', 'ki@gmail.com', '2015-09-12', 'maths,bio', '12A', 'Female'),
(11, 'shaurya', 'shaurya123', 'sha@gmail.com', '2016-05-16', 'maths,chem', '10', 'Male'),
(12, 'kirtan', 'vyas5454', 'ki@gmail.com', '2018-03-17', 'maths,chem', '10', 'Male'),
(13, 'Tej', 'patel1', '11@gmail.com', '2012-10-11', 'bio,eng', '11B', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `s_validate`
--

CREATE TABLE `s_validate` (
  `id` int(11) NOT NULL,
  `firstname` varchar(10) NOT NULL,
  `lastname` varchar(10) NOT NULL,
  `fathername` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `date` varchar(30) NOT NULL,
  `subjects` varchar(50) NOT NULL,
  `class` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `uploadtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `s_validate`
--

INSERT INTO `s_validate` (`id`, `firstname`, `lastname`, `fathername`, `email`, `contact`, `address`, `date`, `subjects`, `class`, `gender`, `uploadtime`) VALUES
(1, '.mansi.', '.shah.', '.jayesh.', '.man@gmail.com.', 85977, '.abd.', '.2018-01-20.', '.maths,phy.', ' .12B.', 'Female', '2018-01-19 13:48:36'),
(2, 'jinal', 'shah', 'sanjaybhai', 'j@gmail.com', 98989090, 'baroda', '2018-01-03 ', 'maths,chem', ' 12B', 'Female', '2018-01-19 07:42:48'),
(3, 'sdf', 'sf', 'df', 'm@gmail.com', 85465, 'vfd', '2018-05-12 ', 'maths,phy', ' 11A', 'Male', '2018-01-19 08:33:47'),
(4, 'tej', 'shah', 'prakashbha', 't@gmail.com', 899999, 'godhra', '2017-02-12 ', 'chem,bio', ' 12B', 'Male', '2018-01-19 08:49:55'),
(5, 'jay', 'patel', 'jigneshbha', 'jay@gmail.com', 899999, 'abd', '2017-02-15 ', 'maths,phy,bio', ' 11A', 'Male', '2018-01-19 08:53:27'),
(6, 'gtrhtry', 'gtrgtry', 'gretrt', 'm@gmail.com', 678467, 'retret', '2018-02-12 ', 'maths,phy', ' 11A', 'Male', '2018-01-19 09:38:15'),
(7, 'hsajd', 'bdsjakd', 'fsdjfug', 'm@gmail.com', 54476, 'gusg', '2018-09-12 ', 'maths,phy', ' 12A', 'Male', '2018-01-19 10:34:53'),
(8, 'jinal', 'patel', 'sanjaybhai', 'j@gmail.com', 98989090, 'baroda', '2018-01-12 ', 'maths,phy', ' 11A', 'Female', '2018-01-19 10:39:24'),
(9, 'mansi', 'shah', 'jayeshbhai', 'm@gmail.com', 989898, 'dfhgds', '2018-05-12 ', 'maths,phy', ' 12B', 'Female', '2018-01-19 11:47:46'),
(10, 'sdfds', 'gret', 'drgre', 'g@gmail.com', 6546547, 'rgre', '2018-05-12 ', 'maths,phy', ' 12B', 'Male', '2018-01-19 11:53:24'),
(11, 'sdfdbsdfgj', 'gret', 'drgre', 'g@gmail.com', 6546547, 'rgre', '2018-05-12 ', 'maths,phy', ' 11A', 'Male', '2018-01-19 11:54:04'),
(12, 'mansi', 'shah', 'jayeshbhAI', 'M@gmail.com', 5843768, 'hjjhcxhc', '2018-05-12 ', 'maths,phy', ' 10', 'Male', '2018-01-19 12:06:51'),
(13, 'mansi', 'shah', 'jayeshbhai', 'm@gmail.com', 909090, 'godhra', '2018-02-12 ', 'maths,phy', ' 12A', 'Female', '2018-01-19 14:04:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `option_master`
--
ALTER TABLE `option_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `select_master`
--
ALTER TABLE `select_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_data`
--
ALTER TABLE `student_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `s_validate`
--
ALTER TABLE `s_validate`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `option_master`
--
ALTER TABLE `option_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `select_master`
--
ALTER TABLE `select_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `student_data`
--
ALTER TABLE `student_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `s_validate`
--
ALTER TABLE `s_validate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
