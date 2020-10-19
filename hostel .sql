-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2019 at 05:51 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel	`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `route` ()  NO SQL
BEGIN
SELECT * FROM registration;
SELECT * FROM courses;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin', '2019-10-01 20:31:45', '2019-11-18');

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE `counter` (
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `counter`
--

INSERT INTO `counter` (`count`) VALUES
(1),
(2);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_code` varchar(255) NOT NULL,
  `course_sn` varchar(255) NOT NULL,
  `course_fn` varchar(255) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_sn`, `course_fn`, `posting_date`) VALUES
(1, 'SCE1092', 'CSE', 'Computer Science & Engineering', '2016-04-11 19:31:42'),
(2, 'SCE1453', 'ISE', 'Information Science & Engineering', '2016-04-11 19:32:46'),
(3, 'SCE1112', 'ME', 'Mechanical Engineering', '2016-04-11 19:33:23'),
(4, 'SCE6356', 'ECE', 'Electronics & Communication Engineering', '2016-04-11 19:34:18'),
(5, 'SCE1565', 'CV', 'Civil Engineering', '2016-04-11 19:34:40'),
(6, 'SCE4175', 'BT', 'Bio Technology', '2016-04-11 19:34:59'),
(7, 'SCE1765', 'EEE', 'Electrical & Electronics Engineering', '2016-04-11 19:35:19');

-- --------------------------------------------------------

--
-- Table structure for table `logintime`
--

CREATE TABLE `logintime` (
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `roomno` int(11) NOT NULL,
  `seater` int(11) NOT NULL,
  `feespm` int(11) NOT NULL,
  `foodstatus` int(11) NOT NULL,
  `stayfrom` date NOT NULL,
  `duration` int(11) NOT NULL,
  `course` varchar(500) NOT NULL,
  `regno` int(11) NOT NULL,
  `firstName` varchar(500) NOT NULL,
  `middleName` varchar(500) NOT NULL,
  `lastName` varchar(500) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `emailid` varchar(500) NOT NULL,
  `egycontactno` bigint(11) NOT NULL,
  `guardianName` varchar(500) NOT NULL,
  `guardianRelation` varchar(500) NOT NULL,
  `guardianContactno` bigint(11) NOT NULL,
  `corresAddress` varchar(500) NOT NULL,
  `corresCIty` varchar(500) NOT NULL,
  `corresState` varchar(500) NOT NULL,
  `corresPincode` int(11) NOT NULL,
  `pmntAddress` varchar(500) NOT NULL,
  `pmntCity` varchar(500) NOT NULL,
  `pmnatetState` varchar(500) NOT NULL,
  `pmntPincode` int(11) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `roomno`, `seater`, `feespm`, `foodstatus`, `stayfrom`, `duration`, `course`, `regno`, `firstName`, `middleName`, `lastName`, `gender`, `contactno`, `emailid`, `egycontactno`, `guardianName`, `guardianRelation`, `guardianContactno`, `corresAddress`, `corresCIty`, `corresState`, `corresPincode`, `pmntAddress`, `pmntCity`, `pmnatetState`, `pmntPincode`, `postingDate`, `updationDate`) VALUES
(10, 100, 3, 6000, 0, '2019-11-18', 6, 'Computer Science & Engineering', 1, 'UJJWAL', 'KUMAR', 'SINGH', 'male', 8073524686, 'kumarujjwal959@gmail.com', 9470029789, 'R_KS', 'FATHER', 1234567890, 'KIRLOSKAR LAYOUT', 'BENGALURU', 'Karnataka', 560073, 'KIRLOSKAR LAYOUT', 'BENGALURU', 'Karnataka', 560073, '2019-11-18 19:44:26', ''),
(11, 100, 3, 6000, 0, '2019-11-19', 6, 'Computer Science & Engineering', 1, 'SUDHAKAR', 'KUMAR', 'MISHRA', 'male', 7090667080, 'sudhakarmishra2011@gmail.com', 100, 'M_MISHRA', 'FATHER', 123698745, 'KIRLOSKAR LAYOUT', 'BENGALURU', 'Karnataka', 560073, 'KIRLOSKAR LAYOUT', 'BENGALURU', 'Karnataka', 560073, '2019-11-18 19:47:46', ''),
(12, 201, 3, 6000, 1, '2019-11-19', 12, 'Computer Science & Engineering', 1, 'HANUMAN', 'KUMAR', 'SHARMA', 'male', 5693256532, 'vikassharma@gmail.com', 2563985623, 'V_sharma', 'Brother', 246454321717, '9th cross,Sapthagiri Layout', 'BENGALURU', 'Karnataka', 560057, '9th cross,Sapthagiri Layout', 'BENGALURU', 'Karnataka', 560057, '2019-11-18 19:51:17', ''),
(13, 201, 3, 6000, 0, '2019-11-20', 9, 'Computer Science & Engineering', 1, 'SIDDHANTH', 'KUMAR', 'CHADDA', 'male', 34984343873, 'racerboysiddhanth@gmail.com', 2346723167, 'M_Chadda', 'Brother', 15344132494, 'KR PURAM', 'BENGALURU', 'Karnataka', 560102, 'KR PURAM', 'BENGALURU', 'Karnataka', 560102, '2019-11-18 19:54:31', ''),
(14, 112, 3, 6000, 1, '2019-11-19', 9, 'Computer Science & Engineering', 1, 'RAHUL', 'KUMAR', 'SWAMY', 'male', 5487486432148, 'Rahulverma123@gmail.com', 100, 'Gangasagar Swamy', 'Brother', 198, 'AGB  LAYOUT', 'BENGALURU', 'Karnataka', 560021, 'AGB  LAYOUT', 'BENGALURU', 'Karnataka', 560021, '2019-11-18 19:58:42', ''),
(15, 112, 3, 6000, 0, '2019-11-19', 6, 'Electronics & Communication Engineering', 1, 'KARAN ', '', 'SINGH', 'male', 4649, 'JGDCHGKFKHWQ@GMAIL.COM', 1468743149741, 'S_SINGH', 'FATHER', 324643454657, 'JALAHALLI', 'BENGALURU', 'Karnataka', 560106, 'JALAHALLI', 'BENGALURU', 'Karnataka', 560106, '2019-11-18 20:00:57', ''),
(16, 112, 3, 6000, 0, '2019-11-19', 6, 'Computer Science & Engineering', 1, 'akash', 'KUMAR', 'SHARMA', 'male', 34984343873, 'vikassharma@gmail.com', 9470029789, 'R_KS1', 'father', 12345678, '9th cross,Sapthagiri Layout', 'BENGALURU', 'Karnataka', 560057, '9th cross,Sapthagiri Layout', 'BENGALURU', 'Karnataka', 560057, '2019-11-19 08:42:47', ''),
(17, 201, 3, 6000, 0, '2019-11-21', 6, 'Electronics & Communication Engineering', 112, 'vinay', '', 'k', 'male', 123456, 'vinay@gmail.com', 664641, 'M_MISHRA', 'Brother', 246454321717, 'JALAHALLI', 'BENGALURU', 'Karnataka', 560106, 'JALAHALLI', 'BENGALURU', 'Karnataka', 560106, '2019-11-19 13:00:25', ''),
(18, 100, 3, 6000, 0, '2019-12-25', 6, 'Bio Technology', 123454, 'rahul', '', 'kumar', 'male', 9113270406, 'raulkuamr1@gmail.com', 192, 'Ravi Kumar', 'Father', 9976541230, 'Bangalore', 'Bangalore', 'Karnataka', 560057, 'Bangalore', 'Bangalore', 'Karnataka', 560057, '2019-11-23 15:48:36', '');

--
-- Triggers `registration`
--
DELIMITER $$
CREATE TRIGGER `trig` AFTER INSERT ON `registration` FOR EACH ROW INSERT INTO counter VALUES(0)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `seater` int(11) NOT NULL,
  `room_no` int(11) NOT NULL,
  `fees` int(11) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `seater`, `room_no`, `fees`, `posting_date`) VALUES
(1, 3, 100, 6000, '2016-04-11 22:45:43'),
(2, 3, 201, 6000, '2016-04-12 01:30:47'),
(3, 3, 200, 6000, '2016-04-12 01:30:58'),
(4, 3, 112, 6000, '2016-04-12 01:31:07'),
(5, 3, 132, 6000, '2016-04-12 01:31:15');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `State` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `State`) VALUES
(1, 'Andaman and Nicobar Island (UT)'),
(2, 'Andhra Pradesh'),
(3, 'Arunachal Pradesh'),
(4, 'Assam'),
(5, 'Bihar'),
(6, 'Chandigarh (UT)'),
(7, 'Chhattisgarh'),
(8, 'Dadra and Nagar Haveli (UT)'),
(9, 'Daman and Diu (UT)'),
(10, 'Delhi (NCT)'),
(11, 'Goa'),
(12, 'Gujarat'),
(13, 'Haryana'),
(14, 'Himachal Pradesh'),
(15, 'Jammu and Kashmir'),
(16, 'Jharkhand'),
(17, 'Karnataka'),
(18, 'Kerala'),
(19, 'Lakshadweep (UT)'),
(20, 'Madhya Pradesh'),
(21, 'Maharashtra'),
(22, 'Manipur'),
(23, 'Meghalaya'),
(24, 'Mizoram'),
(25, 'Nagaland'),
(26, 'Odisha'),
(27, 'Puducherry (UT)'),
(28, 'Punjab'),
(29, 'Rajastha'),
(30, 'Sikkim'),
(31, 'Tamil Nadu'),
(32, 'Telangana'),
(33, 'Tripura'),
(34, 'Uttarakhand'),
(35, 'EPE'),
(36, 'West Bengal');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userId`, `userEmail`, `userIp`, `city`, `country`, `loginTime`) VALUES
(1, 10, 'test@gmail.com', '', '', '', '2016-06-22 06:16:42'),
(2, 10, 'test@gmail.com', '', '', '', '2016-06-24 11:20:28'),
(4, 10, 'test@gmail.com', 0x3a3a31, '', '', '2016-06-24 11:22:47'),
(5, 10, 'test@gmail.com', 0x3a3a31, '', '', '2019-11-15 15:37:40'),
(6, 20, 'Benjamin@gmail.com', 0x3a3a31, '', '', '2016-06-26 16:40:57'),
(7, 21, 'kumarujjwal959@gmail.com', 0x3a3a31, '', '', '2019-11-18 20:04:33'),
(8, 21, 'kumarujjwal959@gmail.com', 0x3a3a31, '', '', '2019-11-19 05:41:26'),
(9, 21, 'kumarujjwal959@gmail.com', 0x3a3a31, '', '', '2019-11-19 08:40:30'),
(10, 21, 'kumarujjwal959@gmail.com', 0x3a3a31, '', '', '2019-11-19 09:25:30'),
(11, 21, 'kumarujjwal959@gmail.com', 0x3a3a31, '', '', '2019-11-20 04:53:26'),
(12, 29, 'trurdtutrik22@gmail.com', 0x3a3a31, '', '', '2019-11-20 04:56:12'),
(13, 22, 'sudhakarmishra2011@gmail.com', 0x3a3a31, '', '', '2019-11-23 15:55:26'),
(14, 21, 'kumarujjwal959@gmail.com', 0x3a3a31, '', '', '2019-11-23 15:56:39');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `id` int(11) NOT NULL,
  `regNo` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `contactNo` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(45) NOT NULL,
  `passUdateDate` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `regNo`, `firstName`, `middleName`, `lastName`, `gender`, `contactNo`, `email`, `password`, `regDate`, `updationDate`, `passUdateDate`) VALUES
(10, '108061211', 'code', 'test', 'projects', 'male', 8467067344, 'test@gmail.com', 'Test@123', '2016-06-22 04:21:33', '23-06-2016 11:04:15', '22-06-2016 05:16:49'),
(19, '102355', 'Harry', 'projects', 'Singh', 'male', 6786786786, 'Harry@gmail.com', '6786786786', '2016-06-26 16:33:36', '', ''),
(20, '586952', 'Benjamin', '', 'projects', 'male', 8596185625, 'Benjamin@gmail.com', '8596185625', '2016-06-26 16:40:07', '', ''),
(21, '1SG17CS095', 'UJJWAL', 'KUMAR', 'SINGH', 'male', 8073524686, 'kumarujjwal959@gmail.com', '8073524686', '2019-11-18 19:44:26', '19-11-2019 11:11:48', ''),
(22, '1SG17CS091', 'SUDHAKAR', 'KUMAR', 'MISHRA', 'male', 7090667080, 'sudhakarmishra2011@gmail.com', '7090667080', '2019-11-18 19:47:46', '', ''),
(23, '1SG17CS099', 'HANUMAN', 'KUMAR', 'SHARMA', 'male', 5693256532, 'vikassharma@gmail.com', '5693256532', '2019-11-18 19:51:17', '', ''),
(24, '1SG17CS084', 'SIDDHANTH', 'KUMAR', 'CHADDA', 'male', 34984343873, 'racerboysiddhanth@gmail.com', '34984343873', '2019-11-18 19:54:31', '', ''),
(25, '1SG17CS062', 'RAHUL', 'KUMAR', 'SWAMY', 'male', 5487486432148, 'Rahulverma123@gmail.com', '5487486432148', '2019-11-18 19:58:42', '', ''),
(26, '1SG17EC099', 'KARAN', '', 'SINGH', 'male', 4649, 'JGDCHGKFKHWQ@GMAIL.COM', '4649+74324', '2019-11-18 20:00:57', '', ''),
(27, '1SG17CS062', 'akash', 'KUMAR', 'SHARMA', 'male', 34984343873, 'vikassharma@gmail.com', '34984343873', '2019-11-19 08:42:47', '', ''),
(28, '112', 'vinay', '', 'k', 'male', 123456, 'vinay@gmail.com', '123456', '2019-11-19 13:00:25', '', ''),
(29, '2574538378', 'wetet', 'rewtte', 'eewtet', 'male', 547654278, 'trurdtutrik22@gmail.com', '123456789', '2019-11-20 04:55:43', '', ''),
(30, '123454', 'rahul', '', 'kumar', 'male', 9113270406, 'raulkuamr1@gmail.com', '9113270406', '2019-11-23 15:48:36', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counter`
--
ALTER TABLE `counter`
  ADD PRIMARY KEY (`count`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userregistration`
--
ALTER TABLE `userregistration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `counter`
--
ALTER TABLE `counter`
  MODIFY `count` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
