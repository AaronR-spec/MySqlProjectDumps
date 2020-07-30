-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2020 at 03:53 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `java_ca`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_table`
--

CREATE TABLE `customer_table` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(40) NOT NULL,
  `customer_address` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_table`
--

INSERT INTO `customer_table` (`customer_id`, `customer_name`, `customer_address`) VALUES
(1, 'Bob Duffy', 'Dundalk louth ireland'),
(2, 'Greg Murphy', 'cork ireland'),
(5, 'Sarah Campbell', 'Dublin ireland'),
(6, 'Patrick Campbell', 'Dublin ireland');

-- --------------------------------------------------------

--
-- Table structure for table `customer_vehicle`
--

CREATE TABLE `customer_vehicle` (
  `customer_vehicleid` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_vehicle`
--

INSERT INTO `customer_vehicle` (`customer_vehicleid`, `customer_id`, `vehicle_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 4),
(4, 2, 3),
(5, 5, 5),
(6, 6, 6),
(7, 1, 7),
(8, 6, 8);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `Event_id` int(11) NOT NULL,
  `Reg` varchar(20) DEFAULT NULL,
  `Img` varchar(20) DEFAULT NULL,
  `TimeStamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `boothId` varchar(20) NOT NULL,
  `status` varchar(40) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`Event_id`, `Reg`, `Img`, `TimeStamp`, `boothId`, `status`) VALUES
(881, '181MH3461', '30441', '2020-02-17 23:25:10', 'TB_M50', 'pending'),
(882, '191LH1114', '30414', '2020-02-15 12:15:42', 'TB_M50', 'pending'),
(883, '191LH1112', '30412', '2020-02-15 12:15:40', 'TB_M50', 'pending'),
(884, '201LH3076', '30426', '2020-02-16 11:16:54', 'TB_M50', 'pending'),
(885, '191LH1111', '30402', '2020-02-14 10:15:30', 'TB_M50', 'pending'),
(886, '191LH1111', '30411', '2020-02-14 23:15:39', 'TB_M50', 'pending'),
(887, '191LH1111', '30421', '2020-02-16 11:16:49', 'TB_M50', 'pending'),
(888, '191LH1111', '30432', '2020-02-17 13:20:01', 'TB_M50', 'pending'),
(889, '201LH310', '30429', '2020-02-16 11:16:57', 'TB_M50', 'pending'),
(890, '161C3457', '30410', '2020-02-14 22:15:38', 'TB_M50', 'pending'),
(891, '201LH312', '30431', '2020-02-16 11:16:59', 'TB_M50', 'pending'),
(892, '201LH311', '30430', '2020-02-16 11:16:58', 'TB_M50', 'pending'),
(893, '192D33457', '30409', '2020-02-14 16:15:37', 'TB_M50', 'pending'),
(894, '201LH3083', '30427', '2020-02-16 11:16:55', 'TB_M50', 'pending'),
(895, '181MH3456', '30436', '2020-02-17 17:33:05', 'TB_M50', 'pending'),
(896, '181MH3456', '30437', '2020-02-17 18:20:06', 'TB_M50', 'pending'),
(897, '201LH3025', '30408', '2020-02-14 15:15:36', 'TB_M50', 'pending'),
(898, '152DL345', '30422', '2020-02-16 11:16:50', 'TB_M50', 'pending'),
(899, '181MH3458', '30438', '2020-02-17 18:20:07', 'TB_M50', 'pending'),
(900, '181MH3459', '30439', '2020-02-17 18:58:08', 'TB_M50', 'pending'),
(901, '201LH3064', '30425', '2020-02-16 11:16:53', 'TB_M50', 'pending'),
(902, '201LH307', '30418', '2020-02-15 12:15:46', 'TB_M50', 'pending'),
(903, '201LH306', '30417', '2020-02-15 12:15:45', 'TB_M50', 'pending'),
(904, '201LH305', '30416', '2020-02-15 12:15:44', 'TB_M50', 'pending'),
(905, '201LH305', '30424', '2020-02-16 11:16:52', 'TB_M50', 'pending'),
(906, '201LH304', '30405', '2020-02-14 13:15:33', 'TB_M50', 'pending'),
(907, '201LH304', '30415', '2020-02-15 12:15:43', 'TB_M50', 'pending'),
(908, '201LH304', '30423', '2020-02-16 11:16:51', 'TB_M50', 'pending'),
(909, '201LH304', '30435', '2020-02-17 16:20:04', 'TB_M50', 'pending'),
(910, '201LH309', '30428', '2020-02-16 11:16:56', 'TB_M50', 'pending'),
(911, '201CN3457', '30434', '2020-02-17 16:20:03', 'TB_M50', 'pending'),
(912, '201LH308', '30419', '2020-02-15 21:15:47', 'TB_M50', 'pending'),
(913, '201CN3456', '30433', '2020-02-17 14:25:02', 'TB_M50', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `Reg` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `vehicle_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`Reg`, `type`, `vehicle_id`) VALUES
('151DL200', 'car', 1),
('151MN666', 'car', 2),
('152DL345', 'car', 3),
('161C3457', 'car', 4),
('181MH3456', 'car', 5),
('181MH3458', 'car', 6),
('181MH3459', 'car', 7),
('181MH3461', 'van', 8),
('191LH1111', 'van', 9),
('191LH1112', 'van', 10),
('191LH1113', 'van', 11),
('191LH1114', 'van', 12),
('192D33457', 'van', 13),
('201CN3456', 'van', 14),
('201CN3457', 'van', 15),
('201LH3025', 'van', 16),
('201LH304', 'van', 17),
('201LH305', 'truck', 18),
('201LH306', 'truck', 19),
('201LH3064', 'truck', 20),
('201LH307', 'truck', 21),
('201LH3076', 'truck', 22),
('201LH308', 'truck', 23),
('201LH3083', 'car', 24),
('201LH309', 'car', 25),
('201LH310', 'van', 26),
('201LH311', 'van', 27),
('201LH312', 'car', 28),
('201LH355', 'car', 29),
('201LH777', 'car', 30);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_table`
--

CREATE TABLE `vehicle_table` (
  `vehicle_id` int(11) NOT NULL,
  `vehicle_registration` varchar(40) NOT NULL,
  `vehicle_type` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_table`
--

INSERT INTO `vehicle_table` (`vehicle_id`, `vehicle_registration`, `vehicle_type`) VALUES
(405, '181MH3461', 'van'),
(406, '191LH1114', 'van'),
(407, '191LH1112', 'van'),
(408, '201LH3076', 'truck'),
(409, '191LH1111', 'van'),
(410, '191LH1111', 'van'),
(411, '191LH1111', 'van'),
(412, '191LH1111', 'van'),
(413, '201LH310', 'van'),
(414, '161C3457', 'car'),
(415, '201LH312', 'car'),
(416, '201LH311', 'van'),
(417, '192D33457', 'van'),
(418, '201LH3083', 'car'),
(419, '181MH3456', 'car'),
(420, '181MH3456', 'car'),
(421, '201LH3025', 'van'),
(422, '152DL345', 'car'),
(423, '181MH3458', 'car'),
(424, '181MH3459', 'car'),
(425, '201LH3064', 'truck'),
(426, '201LH307', 'truck'),
(427, '201LH306', 'truck'),
(428, '201LH305', 'truck'),
(429, '201LH305', 'truck'),
(430, '201LH304', 'van'),
(431, '201LH304', 'van'),
(432, '201LH304', 'van'),
(433, '201LH304', 'van'),
(434, '201LH309', 'car'),
(435, '201CN3457', 'van'),
(436, '201LH308', 'truck'),
(437, '201CN3456', 'van');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_type_cost`
--

CREATE TABLE `vehicle_type_cost` (
  `vehicle_type_id` int(11) NOT NULL,
  `vehicle_type` varchar(50) NOT NULL,
  `cost` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_type_cost`
--

INSERT INTO `vehicle_type_cost` (`vehicle_type_id`, `vehicle_type`, `cost`) VALUES
(1, 'truck', 40),
(2, 'van', 30),
(5, 'car', 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer_table`
--
ALTER TABLE `customer_table`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_vehicle`
--
ALTER TABLE `customer_vehicle`
  ADD PRIMARY KEY (`customer_vehicleid`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`Event_id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`Reg`);

--
-- Indexes for table `vehicle_table`
--
ALTER TABLE `vehicle_table`
  ADD PRIMARY KEY (`vehicle_id`);

--
-- Indexes for table `vehicle_type_cost`
--
ALTER TABLE `vehicle_type_cost`
  ADD PRIMARY KEY (`vehicle_type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer_table`
--
ALTER TABLE `customer_table`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customer_vehicle`
--
ALTER TABLE `customer_vehicle`
  MODIFY `customer_vehicleid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `Event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=914;

--
-- AUTO_INCREMENT for table `vehicle_table`
--
ALTER TABLE `vehicle_table`
  MODIFY `vehicle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=438;

--
-- AUTO_INCREMENT for table `vehicle_type_cost`
--
ALTER TABLE `vehicle_type_cost`
  MODIFY `vehicle_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
