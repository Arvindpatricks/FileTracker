-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Jan 27, 2016 at 08:17 PM
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
('123987654', 'arvind', 'tamizh', 'Hello', '', '27/01/2016', ''),
('2345', 'arvind', 'daya', 'ldlkdlkd', '', '27/01/2016', ''),
('674', 'arvind', 'diva', '1231Hello', '', '27/01/2016', '');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `file_id` varchar(100) COLLATE utf32_bin NOT NULL,
  `sender` varchar(100) COLLATE utf32_bin NOT NULL,
  `receiver` varchar(100) COLLATE utf32_bin NOT NULL,
  `status` mediumtext COLLATE utf32_bin NOT NULL,
  `comment` longtext COLLATE utf32_bin NOT NULL,
  `received_date` varchar(20) COLLATE utf32_bin NOT NULL,
  `received_time` varchar(30) COLLATE utf32_bin NOT NULL,
  `completed_date` varchar(100) COLLATE utf32_bin NOT NULL,
  `completed_time` varchar(100) COLLATE utf32_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`file_id`, `sender`, `receiver`, `status`, `comment`, `received_date`, `received_time`, `completed_date`, `completed_time`) VALUES
('123987654', 'arvind', 'tamizh', 'PROCESS', 'Hello', '27/01/2016', '06:40:36pm', '', ''),
('2345', 'arvind', 'daya', 'PROCESS', 'ldlkdlkd', '27/01/2016', '06:39:23pm', '', ''),
('674', 'arvind', 'arvind', 'READ', '1231Hello', '27/01/2016', '06:41:33pm', '', '');

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
('arvind', 'password');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `master_record`
--
ALTER TABLE `master_record`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `user_account`
--
ALTER TABLE `user_account`
  ADD PRIMARY KEY (`username`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
