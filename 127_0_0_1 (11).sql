-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2021 at 11:06 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pessdb`
--
CREATE DATABASE IF NOT EXISTS `pessdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pessdb`;

-- --------------------------------------------------------

--
-- Table structure for table `dispatch`
--

CREATE TABLE `dispatch` (
  `incident_id` int(11) NOT NULL,
  `patrolcar_id` varchar(10) NOT NULL,
  `time_dispatched` datetime NOT NULL,
  `time_arrived` datetime DEFAULT NULL,
  `time_completed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dispatch`
--

INSERT INTO `dispatch` (`incident_id`, `patrolcar_id`, `time_dispatched`, `time_arrived`, `time_completed`) VALUES
(12, 'QX2222G', '2014-05-29 10:51:15', NULL, '2014-05-29 10:53:43'),
(13, 'QX2222G', '2014-05-29 10:59:42', NULL, NULL),
(14, 'QX444P', '2014-05-29 11:10:57', NULL, NULL),
(24, 'QX1234', '2021-03-17 14:42:14', NULL, NULL),
(25, 'QX4321R', '2021-03-17 14:42:59', NULL, NULL),
(26, 'QX4321R', '2021-03-17 14:43:31', NULL, NULL),
(27, 'QX45545', '2021-03-17 14:43:33', NULL, NULL),
(28, 'QX9999H', '2021-03-17 14:43:39', NULL, NULL),
(29, 'QX4444P', '2021-03-17 14:43:46', NULL, NULL),
(35, 'QX1234', '2021-03-17 14:52:49', NULL, NULL),
(36, 'QX4444P', '2021-03-17 14:52:59', NULL, NULL),
(37, 'QX45545', '2021-03-17 15:07:26', NULL, NULL),
(38, 'QX4321R', '2021-05-12 09:38:19', NULL, NULL),
(38, 'QX9999H', '2021-05-12 09:38:19', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `incident`
--

CREATE TABLE `incident` (
  `incident_id` int(11) NOT NULL,
  `caller_name` varchar(30) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `incident_type_id` varchar(3) NOT NULL,
  `incident_location` varchar(50) NOT NULL,
  `incident_desc` varchar(100) NOT NULL,
  `incident_status_id` varchar(1) NOT NULL,
  `time_called` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `incident`
--

INSERT INTO `incident` (`incident_id`, `caller_name`, `phone_number`, `incident_type_id`, `incident_location`, `incident_desc`, `incident_status_id`, `time_called`) VALUES
(2, 'qwerty', '12345678', '030', 'cck', 'qwerty', '3', '2021-03-03 15:08:29'),
(6, 'Peter Leow', '81234567', '010', 'Junction of North Bridge Road', 'A bus collided with a Taxi 2 Injuries', '1', '2021-03-03 15:07:03'),
(7, '', '1', '010', '1', '1', '1', '2021-03-12 14:14:41'),
(8, '', '1', '010', '1', '1', '1', '2021-03-12 14:14:47'),
(9, '', '1', '010', '1', '1', '1', '2021-03-12 14:14:49'),
(10, '', '1', '010', '1', '1', '1', '2021-03-12 14:14:49'),
(11, '', '1', '010', '1', '1', '1', '2021-03-12 14:14:49'),
(12, '', '1', '010', '1', '1', '1', '2021-03-12 14:14:50'),
(13, '', '1', '010', '1', '1', '1', '2021-03-12 14:14:50'),
(14, '', '1', '010', '1', '1', '1', '2021-03-12 14:14:50'),
(15, '', '1', '010', '1', '1', '1', '2021-03-12 14:14:51'),
(16, '', '1', '010', '1', '1', '1', '2021-03-12 14:14:51'),
(17, '', '1', '010', '1', '1', '1', '2021-03-12 14:14:52'),
(18, '', '1', '010', '1', '1', '1', '2021-03-12 14:14:56'),
(19, '', '1', '010', '1', '1', '1', '2021-03-12 14:15:00'),
(20, '', '1', '010', '1', '1', '1', '2021-03-12 14:15:05'),
(21, '', '1', '010', '1', '1', '1', '2021-03-12 14:15:08'),
(22, '', '1', '010', '1', '1', '1', '2021-03-12 14:25:40'),
(23, '', '11', '010', '1', '1', '1', '2021-03-17 13:22:11'),
(24, '', '11', '010', '1', '1', '2', '2021-03-17 14:42:14'),
(25, '', '11', '010', '1', '1', '2', '2021-03-17 14:42:59'),
(26, '', '11', '010', '1', '1', '2', '2021-03-17 14:43:31'),
(27, '', '11', '010', '1', '1', '2', '2021-03-17 14:43:33'),
(28, '', '11', '010', '1', '1', '2', '2021-03-17 14:43:39'),
(29, '', '11', '010', '1', '1', '2', '2021-03-17 14:43:46'),
(30, '', '1', '010', '1', '1', '1', '2021-03-17 14:46:10'),
(31, '', '1', '010', '1', '1', '1', '2021-03-17 14:46:11'),
(32, '', '1', '010', '1', '1', '1', '2021-03-17 14:46:12'),
(33, '', '1', '010', '1', '1', '1', '2021-03-17 14:49:32'),
(34, '', '1', '010', '1', '1', '1', '2021-03-17 14:49:39'),
(35, '', '11', '010', '1', '1', '2', '2021-03-17 14:52:49'),
(36, '', '23133', '010', '2', '2', '2', '2021-03-17 14:52:59'),
(37, '', '1', '010', '1', '1', '2', '2021-03-17 15:07:26'),
(38, '', 'q', '010', 'q', 'q', '2', '2021-05-12 09:38:19');

-- --------------------------------------------------------

--
-- Table structure for table `incident_status`
--

CREATE TABLE `incident_status` (
  `incident_status_id` varchar(1) NOT NULL,
  `ident_status_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `incident_status`
--

INSERT INTO `incident_status` (`incident_status_id`, `ident_status_desc`) VALUES
('1', 'Pending'),
('2', 'Dispatched'),
('3', 'Completed'),
('4', 'Duplicate');

-- --------------------------------------------------------

--
-- Table structure for table `incident_type`
--

CREATE TABLE `incident_type` (
  `incident_type_id` varchar(3) NOT NULL,
  `incident_type_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `incident_type`
--

INSERT INTO `incident_type` (`incident_type_id`, `incident_type_desc`) VALUES
('010', 'Fire'),
('020', 'RIot'),
('030', 'Burglary'),
('040', 'Domestic Violent'),
('050', 'Fallen Tree'),
('060', 'Traffic Accident'),
('070', 'Loan Shark'),
('999', 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `patrolcar`
--

CREATE TABLE `patrolcar` (
  `patrolcar_id` varchar(10) NOT NULL,
  `patrolcar_status_id` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patrolcar`
--

INSERT INTO `patrolcar` (`patrolcar_id`, `patrolcar_status_id`) VALUES
('QX1234', '1'),
('QX4321R', '1'),
('QX4444P', '1'),
('QX45545', '1'),
('QX9999H', '1');

-- --------------------------------------------------------

--
-- Table structure for table `patrolcar_status`
--

CREATE TABLE `patrolcar_status` (
  `patrolcar_status_id` varchar(1) NOT NULL,
  `patrolcar_status_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patrolcar_status`
--

INSERT INTO `patrolcar_status` (`patrolcar_status_id`, `patrolcar_status_desc`) VALUES
('1', 'Dispatched'),
('2', 'Patrol'),
('3', 'Free'),
('4', 'On-site'),
('5', 'NA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dispatch`
--
ALTER TABLE `dispatch`
  ADD PRIMARY KEY (`incident_id`,`patrolcar_id`);

--
-- Indexes for table `incident`
--
ALTER TABLE `incident`
  ADD PRIMARY KEY (`incident_id`);

--
-- Indexes for table `incident_status`
--
ALTER TABLE `incident_status`
  ADD PRIMARY KEY (`incident_status_id`);

--
-- Indexes for table `incident_type`
--
ALTER TABLE `incident_type`
  ADD PRIMARY KEY (`incident_type_id`);

--
-- Indexes for table `patrolcar`
--
ALTER TABLE `patrolcar`
  ADD PRIMARY KEY (`patrolcar_id`);

--
-- Indexes for table `patrolcar_status`
--
ALTER TABLE `patrolcar_status`
  ADD PRIMARY KEY (`patrolcar_status_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `incident`
--
ALTER TABLE `incident`
  MODIFY `incident_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
