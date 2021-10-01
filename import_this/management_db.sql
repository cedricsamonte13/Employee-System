-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2021 at 01:31 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `management_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `departments` varchar(30) NOT NULL,
  `date_time_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_time_updated` datetime NOT NULL DEFAULT current_timestamp(),
  `remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `departments`, `date_time_created`, `date_time_updated`, `remarks`) VALUES
(1, 'Hr Department', '2021-09-30 09:18:31', '2021-09-30 09:18:31', ''),
(2, 'It Department ', '2021-09-30 09:18:31', '2021-09-30 09:18:31', ''),
(3, 'Finance Department', '2021-09-30 15:20:47', '2021-09-30 15:20:47', '');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `gender` char(8) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `city` varchar(30) NOT NULL,
  `company` varchar(30) NOT NULL,
  `position` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `date_time_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_time_updated` datetime NOT NULL DEFAULT current_timestamp(),
  `remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `department_id`, `fullname`, `address`, `gender`, `mobile`, `city`, `company`, `position`, `email`, `date_time_created`, `date_time_updated`, `remarks`) VALUES
(1, 0, 'asdad', '', 'male', 'asdad', ' asdad', 'asdadasda', 'asdad', 'asdad@gmail.com', '2021-09-30 17:30:25', '2021-09-30 17:30:25', ''),
(2, 0, 'waeae', 'waeae', 'female', '2131313', ' waeaea', 'aweaeaw', 'aewaeae', 'aweae@gmail.com', '2021-09-30 17:30:25', '2021-09-30 17:30:25', ''),
(3, 0, 'waeae', 'waeae', 'female', '2131313', ' waeaea', 'aweaeaw', 'aewaeae', 'aweae@gmail.com', '2021-09-30 18:06:36', '2021-09-30 18:06:36', ''),
(4, 0, 's', '', 'none', '', ' ', '', '', '', '2021-09-30 18:06:41', '2021-09-30 18:06:41', ''),
(5, 0, 's', '', 'none', '', ' ', '', '', '', '2021-09-30 18:10:23', '2021-09-30 18:10:23', ''),
(6, 0, 'cedric samonte', '125 tondo manila', 'male', '21313132', ' Quezon ', 'abc', 'awa', 'awea@gmail.com', '2021-09-30 18:12:14', '2021-09-30 18:12:14', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `User_Id` int(11) NOT NULL,
  `Employee_Id` int(11) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Date_Time_Created` datetime NOT NULL,
  `Date_Time_Updated` datetime NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`User_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `User_Id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
