-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Jan 28, 2016 at 02:56 PM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `file_tracking`
--

-- --------------------------------------------------------

--
-- Table structure for table `master_record`
--

CREATE TABLE `master_record` (
  `file_id` varchar(100) COLLATE utf32_bin NOT NULL,
  `created_by` varchar(100) COLLATE utf32_bin NOT NULL,
  `receiver` varchar(100) COLLATE utf32_bin NOT NULL,
  `description` mediumtext COLLATE utf32_bin NOT NULL,
  `status` varchar(100) COLLATE utf32_bin NOT NULL,
  `start_date` varchar(30) COLLATE utf32_bin NOT NULL,
  `end_date` varchar(30) COLLATE utf32_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

--
-- Dumping data for table `master_record`
--

INSERT INTO `master_record` (`file_id`, `created_by`, `receiver`, `description`, `status`, `start_date`, `end_date`) VALUES
('PDY_UNI1', 'supervisor', 'hod', 'Student Semester Mark list', '', '28/01/2016', ''),
('pDY_UNI1', 'finance_section', 'finance_officer', 'Student Semester Mark list', '', '28/01/2016', '');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sender` varchar(100) COLLATE utf32_bin NOT NULL,
  `receiver` varchar(100) COLLATE utf32_bin NOT NULL,
  `status` mediumtext COLLATE utf32_bin NOT NULL,
  `comment` longtext COLLATE utf32_bin NOT NULL,
  `received_date` varchar(20) COLLATE utf32_bin NOT NULL,
  `received_time` varchar(30) COLLATE utf32_bin NOT NULL,
  `completed_date` varchar(100) COLLATE utf32_bin NOT NULL,
  `completed_time` varchar(100) COLLATE utf32_bin NOT NULL,
  `file_id` varchar(100) COLLATE utf32_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sender`, `receiver`, `status`, `comment`, `received_date`, `received_time`, `completed_date`, `completed_time`, `file_id`) VALUES
('supervisor', 'hod', 'PROCESS', 'Student Semester Mark list', '28/01/2016', '11:13:06am', '', '', 'PDY_UNI1'),
('hod', 'dean', 'PROCESS', 'Student Semester Mark list', '28/01/2016', '11:14:01am', '', '', 'PDY_UNI1'),
('dean', 'registrar', 'PROCESS', 'Student Semester Mark list', '28/01/2016', '11:15:09am', '', '', 'PDY_UNI1'),
('registrar', 'project_cell', 'PROCESS', 'Student Semester Mark list', '28/01/2016', '11:18:47am', '', '', 'PDY_UNI1'),
('project_cell', 'finance_section', 'PROCESS', 'Student Semester Mark list', '28/01/2016', '11:19:32am', '', '', 'PDY_UNI1'),
('finance_section', 'finance_officer', 'PROCESS', 'Student Semester Mark list', '28/01/2016', '11:20:51am', '', '', 'pDY_UNI1'),
('finance_officer', 'vice_chairman', 'PROCESS', 'Student Semester Mark list\r\n', '28/01/2016', '11:22:34am', '', '', 'PDY_UNI1');

-- --------------------------------------------------------

--
-- Table structure for table `user_account`
--

CREATE TABLE `user_account` (
  `username` varchar(100) COLLATE utf32_bin NOT NULL,
  `password` varchar(100) COLLATE utf32_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

--
-- Dumping data for table `user_account`
--

INSERT INTO `user_account` (`username`, `password`) VALUES
('Dayanidhi', 'cse'),
('Divahar', 'root'),
('Tamizh', '123'),
('arvind', 'password'),
('dean', 'dean'),
('finance_officer', 'finance_officer'),
('finance_section', 'finance_section'),
('hod', 'hod'),
('project_cell', 'project_cell'),
('registrar', 'registrar'),
('supervisor', 'supervisor'),
('vice_chairman', 'vice_chairman');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `master_record`
--
ALTER TABLE `master_record`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `user_account`
--
ALTER TABLE `user_account`
  ADD PRIMARY KEY (`username`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
