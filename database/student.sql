-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 23, 2018 at 06:40 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `combobox_master`
--

CREATE TABLE `combobox_master` (
  `id` int(11) NOT NULL,
  `keyword` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `field_identifier` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `combobox_master`
--

INSERT INTO `combobox_master` (`id`, `keyword`, `name`, `type`, `field_identifier`) VALUES
(1, 'SUBJECT_LIST', 'sub_list', 'checkbox', ''),
(2, 'GENDER_LIST', 'gen_list', 'radio', ''),
(3, 'CLASS_LIST', 'class_list', 'select', 'key');

-- --------------------------------------------------------

--
-- Table structure for table `optionmenu`
--

CREATE TABLE `optionmenu` (
  `id` int(11) NOT NULL,
  `combo_id` int(11) NOT NULL,
  `key` varchar(200) NOT NULL,
  `value` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `optionmenu`
--

INSERT INTO `optionmenu` (`id`, `combo_id`, `key`, `value`) VALUES
(1, 1, 'php', 'php'),
(3, 1, 'android', 'android'),
(4, 1, 'java', 'java'),
(5, 1, 'maths', 'maths'),
(6, 1, 'c', 'c'),
(7, 1, 'c++', 'c++'),
(8, 1, 'python', 'python'),
(9, 1, 'ai', 'ai'),
(10, 2, 'male', 'male'),
(11, 2, 'female', 'female'),
(12, 3, '12A', '12A'),
(13, 3, '12B', '12B'),
(14, 3, '11A', '11A'),
(15, 3, '11B', '11B'),
(16, 3, '11COM', '11COM'),
(17, 3, '11ART', '11ART');

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
-- Table structure for table `stu`
--

CREATE TABLE `stu` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stu`
--

INSERT INTO `stu` (`id`, `name`) VALUES
(1, 'KAJAL'),
(2, 'KIRTAN'),
(3, 'mansi'),
(4, 'sagar'),
(5, 'roshni'),
(6, 'juhi'),
(555, 'ghmjkh');

-- --------------------------------------------------------

--
-- Table structure for table `student_class_master`
--

CREATE TABLE `student_class_master` (
  `id` int(11) NOT NULL,
  `class_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_class_master`
--

INSERT INTO `student_class_master` (`id`, `class_name`) VALUES
(1, 'STD1A'),
(2, 'STD1B'),
(3, 'STD2A'),
(4, 'STD2B');

-- --------------------------------------------------------

--
-- Table structure for table `student_exam_matser`
--

CREATE TABLE `student_exam_matser` (
  `id` int(11) NOT NULL,
  `stu_id` int(11) NOT NULL,
  `php` int(11) NOT NULL,
  `android` int(11) NOT NULL,
  `java` int(11) NOT NULL,
  `python` int(11) NOT NULL,
  `maths` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_exam_matser`
--

INSERT INTO `student_exam_matser` (`id`, `stu_id`, `php`, `android`, `java`, `python`, `maths`) VALUES
(1, 1, 77, 88, 87, 98, 58),
(2, 17, 58, 96, 84, 85, 87),
(3, 18, 88, 78, 75, 98, 47),
(4, 19, 85, 74, 75, 98, 47),
(5, 20, 88, 78, 75, 96, 88),
(6, 21, 74, 78, 75, 98, 77),
(7, 22, 88, 78, 44, 98, 65),
(8, 23, 97, 78, 75, 77, 98),
(9, 24, 88, 89, 75, 98, 47),
(10, 25, 77, 78, 75, 88, 87);

-- --------------------------------------------------------

--
-- Table structure for table `student_master`
--

CREATE TABLE `student_master` (
  `id` int(11) NOT NULL,
  `name` varchar(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `cno` int(10) NOT NULL,
  `class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_master`
--

INSERT INTO `student_master` (`id`, `name`, `address`, `fname`, `email`, `cno`, `class_id`) VALUES
(1, 'Rahul', 'Ambawadi', 'Rameshbhai', 'rchavda88@gmail.com', 123456789, 4),
(17, 'Harivadan', 'Ishanpur', 'xyz', 'xyz@mail.com', 321654987, 3),
(18, 'Maulik', 'Shivranjani', 'abc', 'abc@mail.com', 741852933, 2),
(19, 'Kajal', 'ishanpur', 'pqr', 'pqr@mail.com', 951847623, 1),
(20, 'Uttam', 'kalupur', 'mno', 'mno@mail.com', 986753421, 3),
(21, 'Sudhanshu', 'sattadhar', 'qwe', 'qwe@mail.com', 785412369, 1),
(22, 'Kirtan', 'maninagar', 'zxc', 'zxc@mail.com', 36928147, 1),
(23, 'Jaimil', 'Thol', 'poi', 'poi@mail.com', 784512369, 3),
(24, 'Karan', 'baroda', 'vbn', 'vbn@mail.com', 351426987, 4),
(25, 'Dip', 'Gota', 'asd', 'asd@mail.com', 32654741, 4),
(26, 'Manshi', 'vadodra', 'mkl', 'mkl@mail.com', 541236987, 2),
(27, 'Dharmesh', 'sattadhar', 'fgh', 'fgh@mail.com', 321654741, 1),
(28, 'Sanket', 'jamalpur', 'mnb', 'mnb@mail.com', 963258741, 3),
(29, 'Akshay', 'Memnagar', 'lkj', 'lkj@mail.com', 36521789, 2),
(30, 'Vrushi', 'PG', 'zaq', 'zaq@mail.com', 985632147, 4),
(31, 'Jaynil', 'Gota', 'tyu', 'tyu@mail.com', 145278963, 3),
(32, 'Tej', 'shastrinagar', 'xcv', 'xcv@mail.com', 785412365, 2);

-- --------------------------------------------------------

--
-- Table structure for table `student_registration`
--

CREATE TABLE `student_registration` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(40) NOT NULL,
  `confirmpass` varchar(40) NOT NULL,
  `contactno` bigint(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `class` varchar(500) NOT NULL,
  `birthdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_registration`
--

INSERT INTO `student_registration` (`id`, `username`, `email`, `password`, `confirmpass`, `contactno`, `gender`, `subject`, `class`, `birthdate`) VALUES
(1, 'kajalpatel', 'kajal@patel.com', 'kajal123', 'kajal123', 7878552759, 'female', 'java,maths,c,c++', '11ART', '1997-07-04'),
(2, 'kirtan', 'kirtan@ab.com', 'kirtan123', 'kirtan123', 7854691230, 'female', 'java,maths,c,c++', '11B', '1997-04-12'),
(3, 'mansi', 'mansi@12.com', 'mansi123', 'mansi123', 9874561230, 'female', 'android,java,c++,python,ai', '11COM', '1974-06-12'),
(4, 'sagar', 'sagar@as.com', 'sagar123', 'sagar123', 8794562314, 'male', 'php,android,c,c++,python', '11A', '1996-04-15'),
(5, 'ankit', 'ankit@ab.com', 'ankit', 'ankit', 8546791234, 'male', 'php,android,java,maths,c', '11COM', '1995-12-11'),
(6, 'juhi', 'juhi@ab.com', 'juhi', 'juhi', 8745629136, 'female', 'php,android,java,python,ai', '11ART', '0000-00-00'),
(7, 'mamta', 'mamta12@12.com', 'mamata', 'mamata', 8456721391, 'female', 'php,android,c,c++', '11B', '1994-07-02'),
(8, 'roshni', 'roshni@12ab.com', 'roshni', 'roshni', 8547963210, 'female', 'php,c,c++,python,ai', '11COM', '1996-07-24'),
(9, 'hiren', 'hiren@ab.com', 'hiren', 'hiren', 9033025528, 'male', 'java,maths,c,c++,python', '12A', '1994-10-27'),
(10, 'disha', 'disha@abc.com', 'disha', 'disha', 8547962134, 'female', 'php,c,c++,python,ai', '11A', '1996-11-04'),
(11, 'ronak', 'ronak@aj.com', 'ronak', 'ronak', 8752139512, 'male', 'c,c++,python,ai', '11ART', '1995-11-02'),
(12, 'krimal', 'krimal@12.com', 'krimal', 'krimal', 8546971230, 'female', 'java,c,python,ai', '11ART', '1997-04-12'),
(13, 'monika', 'monika@nbm.com', 'monika', 'monika', 7845692315, 'female', 'php,android,c,python,ai', '11A', '1995-02-08'),
(14, 'kajal', 'kajal@patel.com', 'kajal123', 'kajal123', 7878552759, 'female', 'php,android,java,maths,c', '12B', '1997-07-04'),
(15, 'kiran', 'kiran@gmail.com', 'kiran123', 'kiran123', 7894562130, 'Female', 'maths,phy,chem', '12A', '1997-02-01'),
(16, 'parth', 'parth@gmail.com', 'parth123', 'parth123', 8754691231, 'Male', 'phy,chem,bio,eng', '12A', '1997-11-02'),
(17, 'kamal', 'kamal@gmail.com', 'kamal123', 'kamal123', 8974561230, 'Male', 'maths,phy,chem,bio', '12A', '1998-11-05');

-- --------------------------------------------------------

--
-- Table structure for table `stu_reg`
--

CREATE TABLE `stu_reg` (
  `id` int(11) NOT NULL,
  `username` varchar(1000) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `password` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stu_reg`
--

INSERT INTO `stu_reg` (`id`, `username`, `email`, `password`) VALUES
(1, 'kajal', 'k@k.com', 'kajal123'),
(2, 'kirtan', 'k@kk.com', 'kirtan123456'),
(3, 'KAJAL123', 'K@JK.JKL', 'ASDFGHJKL'),
(4, 'sagar', 'sagar@mail.com', 'sagar123456'),
(5, 'ankit', 'ankit@jh.gjh', 'ankit123'),
(6, 'kiran', 'k@gj.ghj', 'kiran123'),
(7, 'aaryan', 'arayan@kjhk.hjd', 'aaryan123'),
(8, 'roshni', 'roshni@mail.com', 'roshni123'),
(9, 'bgfhb', 'hfgh@gf.fcg', 'ghfhdfryghtfr'),
(10, 'jdfh', 'hfgh@gf.hbg', 'ghfhdfryghtfr'),
(11, 'hiren', 'hiren@gmail.com', 'hiren123'),
(12, 'kajal_dhameliya', 'dfs@vfvc.fds', 'hhjjjjjjjjjjjjjjjjjj');

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
-- Indexes for table `combobox_master`
--
ALTER TABLE `combobox_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `optionmenu`
--
ALTER TABLE `optionmenu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `combo_id` (`combo_id`);

--
-- Indexes for table `search_tbl`
--
ALTER TABLE `search_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `select_master`
--
ALTER TABLE `select_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stu`
--
ALTER TABLE `stu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_class_master`
--
ALTER TABLE `student_class_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_exam_matser`
--
ALTER TABLE `student_exam_matser`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stu_id` (`stu_id`);

--
-- Indexes for table `student_master`
--
ALTER TABLE `student_master`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `student_registration`
--
ALTER TABLE `student_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stu_reg`
--
ALTER TABLE `stu_reg`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `combobox_master`
--
ALTER TABLE `combobox_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `optionmenu`
--
ALTER TABLE `optionmenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `search_tbl`
--
ALTER TABLE `search_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `select_master`
--
ALTER TABLE `select_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_class_master`
--
ALTER TABLE `student_class_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student_exam_matser`
--
ALTER TABLE `student_exam_matser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `student_master`
--
ALTER TABLE `student_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `student_registration`
--
ALTER TABLE `student_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `stu_reg`
--
ALTER TABLE `stu_reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`search_id`) REFERENCES `search_tbl` (`id`);

--
-- Constraints for table `optionmenu`
--
ALTER TABLE `optionmenu`
  ADD CONSTRAINT `optionmenu_ibfk_1` FOREIGN KEY (`combo_id`) REFERENCES `combobox_master` (`id`);

--
-- Constraints for table `student_master`
--
ALTER TABLE `student_master`
  ADD CONSTRAINT `student_master_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `student_class_master` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
