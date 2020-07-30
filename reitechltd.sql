-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2020 at 09:21 PM
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
-- Database: `reitechltd`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `price` float NOT NULL,
  `weight` double NOT NULL,
  `description` varchar(130) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `price`, `weight`, `description`) VALUES
(5, 'RT200', 55, 0.5, 'Fully Calibrated thermometer with cert, one year warranty plus user manual.  '),
(6, 'RT200-24', 120, 0.8, 'Fully Calibrated thermometer and RT24 probe with cert, one year warranty plus user manual.  '),
(7, 'RT24', 35, 0.2, 'Stainless Steel straight probe with user manual and labels for raw meat etc..'),
(8, 'RT20', 40, 0.3, 'Bent Stainless Steel probe with user manual and labels for raw meat etc..'),
(9, 'Repair', 54, 0, 'Repair of ReitechLtd thermometer with calibration cert and maintenance. ');

-- --------------------------------------------------------

--
-- Table structure for table `product_purchased`
--

CREATE TABLE `product_purchased` (
  `purchased_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `price` double NOT NULL,
  `description` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_purchased`
--

INSERT INTO `product_purchased` (`purchased_id`, `product_id`, `order_id`, `price`, `description`) VALUES
(365, 6, 9, 120, 'Fully Calibrated thermometer and RT24 probe with cert, one year warranty plus user manual.  '),
(366, 8, 9, 40, 'Bent Stainless Steel probe with user manual and labels for raw meat etc..'),
(367, 6, 9, 120, 'Fully Calibrated thermometer and RT24 probe with cert, one year warranty plus user manual.  '),
(368, 9, 11, 54, 'Repair of ReitechLtd thermometer with calibration cert and maintenance. '),
(369, 9, 11, 54, 'Repair of ReitechLtd thermometer with calibration cert and maintenance. '),
(393, 6, 8, 120, 'Fully Calibrated thermometer and RT24 probe with cert, one year warranty plus user manual.  '),
(394, 8, 8, 40, 'Bent Stainless Steel probe with user manual and labels for raw meat etc..'),
(395, 6, 8, 120, 'Fully Calibrated thermometer and RT24 probe with cert, one year warranty plus user manual.  '),
(400, 5, 10, 55, 'Fully Calibrated thermometer with cert, one year warranty plus user manual.  '),
(401, 5, 10, 55, 'Fully Calibrated thermometer with cert, one year warranty plus user manual.  '),
(402, 7, 10, 35, 'Stainless Steel straight probe with user manual and labels for raw meat etc..'),
(420, 5, 7, 55, 'Fully Calibrated thermometer with cert, one year warranty plus user manual.  '),
(421, 5, 7, 55, 'Fully Calibrated thermometer with cert, one year warranty plus user manual.  '),
(462, 5, 64, 55, 'Fully Calibrated thermometer with cert, one year warranty plus user manual.  '),
(463, 7, 64, 35, 'Stainless Steel straight probe with user manual and labels for raw meat etc..'),
(464, 8, 64, 40, 'Bent Stainless Steel probe with user manual and labels for raw meat etc..'),
(465, 9, 64, 54, 'Repair of ReitechLtd thermometer with calibration cert and maintenance. '),
(467, 8, 12, 40, 'Bent Stainless Steel probe with user manual and labels for raw meat etc..'),
(529, 6, 62, 120, 'Fully Calibrated thermometer and RT24 probe with cert, one year warranty plus user manual.  '),
(538, 9, 6, 54, 'Repair of ReitechLtd thermometer with calibration cert and maintenance. '),
(539, 6, 6, 120, 'Fully Calibrated thermometer and RT24 probe with cert, one year warranty plus user manual.  '),
(544, 5, 65, 55, 'Fully Calibrated thermometer with cert, one year warranty plus user manual.  '),
(545, 6, 65, 120, 'Fully Calibrated thermometer and RT24 probe with cert, one year warranty plus user manual.  ');

-- --------------------------------------------------------

--
-- Table structure for table `records`
--

CREATE TABLE `records` (
  `id` int(60) NOT NULL,
  `customer` varchar(60) NOT NULL,
  `address` varchar(60) NOT NULL,
  `price` int(10) NOT NULL,
  `note` varchar(150) NOT NULL,
  `status` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `name` varchar(30) NOT NULL,
  `postcode` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `records`
--

INSERT INTO `records` (`id`, `customer`, `address`, `price`, `note`, `status`, `quantity`, `date`, `name`, `postcode`) VALUES
(6, 'Omeath Road', 'Pig Road Omeath Co.Louth Ireland', 174, 'Wants wipes with order (No extra charge) ', 1, 2, '2020-03-20 08:57:09', 'Liz Duffy', 'A95TR25'),
(7, 'St.Peters Hospital', 'Grafton Street Dublin 12 Co.Dublin Ireland', 395, 'Wire Split and repaired(no Charge)', 2, 4, '2020-03-20 08:57:09', 'Kevin Duffy', 'AR43 TT4'),
(9, 'Summers Delights', 'Saint Grow Road Co.Limerick Ireland  ', 108, 'new customer make sure its extra clean', 1, 2, '2020-03-20 08:57:09', 'Daniel Quinn', 'AR53 TG4'),
(11, 'Captain Americas', 'Graffton Street Dublin Co.Dublin Ireland', 70, 'customer wants to check with use about another prop contact when ready', 2, 2, '2020-03-20 08:57:09', 'George McCourt', ''),
(12, 'Wonder Dinner', 'Dundalk Street Co.Cork Ireland', 40, 'No Charge on shipping', 1, 1, '2020-03-20 08:57:09', 'Ryan ', 'AR53 TY4'),
(62, 'Spar Limrick', 'Steet 2nd Limerick Co.Limrick Ireland', 0, 'Order Is empty customer unsure about order', 0, 0, '2020-03-23 14:51:27', 'Tim Duffy', 'RE2 TF22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_purchased`
--
ALTER TABLE `product_purchased`
  ADD PRIMARY KEY (`purchased_id`);

--
-- Indexes for table `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_purchased`
--
ALTER TABLE `product_purchased`
  MODIFY `purchased_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=546;

--
-- AUTO_INCREMENT for table `records`
--
ALTER TABLE `records`
  MODIFY `id` int(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
