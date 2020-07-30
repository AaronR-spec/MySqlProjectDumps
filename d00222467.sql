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
-- Database: `d00222467`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(5) NOT NULL,
  `category` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL,
  `price` float NOT NULL,
  `image` varchar(40) NOT NULL,
  `description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `title`, `price`, `image`, `description`) VALUES
(0, 'women', 'White T-Shirt', 10.99, 'product-01.jpg', 'Crisp White T-shirt, perfect for a casual wear eve'),
(1, 'women', 'White Shirt', 20, 'product-02.jpg', 'Elegant white shirt for a casual formal event'),
(2, 'men ', 'Blue Dotted Shirt', 15.99, 'product-03.jpg', 'Short shirt made for style and comfort'),
(3, 'women', 'Dark Green Furry Coat', 74.99, 'product-04.jpg', 'Cozy and perfect for a party'),
(4, 'women', 'Black Mini Skirt', 20.99, 'product-05.jpg', 'style and comfort all in one'),
(5, 'accessorie', 'Black Styled Watch', 55.99, 'product-06.jpg', 'elegant and stylish'),
(6, 'women', 'Blue Jeans', 13.99, 'product-07.jpg', 'Great for a night out'),
(7, 'women', 'Withe Cactus T-shirt', 9.99, 'product-08.jpg', 'funk and cozy to wear'),
(8, 'accessorie', 'Black and White Shoes', 37.99, 'product-09.jpg', 'Stylish and cozy'),
(9, 'women', 'Black Top', 10.52, 'product-10.jpg', 'Elegant and cozy'),
(10, 'men', 'Blue Long Sleeved Shirt', 37.54, 'product-11.jpg', 'cozy with an elegant look'),
(11, 'accessorie', 'Brown Belt', 65.78, 'product-12.jpg', ''),
(12, 'women', 'Blue Tight Jeans', 44.44, 'product-13.jpg', ''),
(13, 'women', 'Red Rose Dress With Pink Trim', 25.44, 'red-dress.jpg', 'dgsgsdg'),
(14, 'accessorie', 'Black Watch With Metal Trim', 24.34, 'product-15.jpg', 'Elegant for men'),
(15, 'women', 'Black Rose T-shirt', 15.67, 'product-14.jpg', 'simple design of a rose'),
(16, 'women', 'Black T-shirt with mix Black a', 22.22, 'product-16.jpg', ''),
(18, 'women', 'Black Jacket With Blue', 33.33, 'product-04.jpg', 'rtqgdgwgew'),
(25, 'men', 'Red jacket', 30, 'product-17.jpg', NULL),
(26, 'men', 'Grey Checked Suit Jacket', 23.33, 'product-18.jpg', NULL),
(28, 'men', 'Grey Suit', 95.55, 'product-19.jpg', NULL),
(29, 'men', 'Red and Blue Jacket', 25, 'product-20.jpg', NULL),
(30, 'men', 'Pink Shirt and Shorts', 40.99, 'product-21.jpg', NULL),
(31, 'men', 'Green Boomer Jacket', 45.88, 'product-22.jpg', NULL),
(32, 'men', 'Green T-Shirt', 9.99, 'product-23.jpg', NULL),
(33, 'men', 'Yellow T-Shirt', 12.5, 'product-24.jpg', NULL),
(34, 'women', 'Yellow Rain Coat', 25.99, 'product-25.jpg', NULL),
(35, 'women', 'Yellow and Green Shorts', 24.99, 'product-26.jpg', NULL),
(36, 'men', 'Black Suit With With Shirt', 150.99, 'product-27.jpg', NULL),
(37, 'men', 'Black leather', 39.99, 'product-28.jpg', NULL),
(38, 'accessorie', 'Green Watch', 20, 'product-29.jpg', NULL),
(39, 'accessories', 'Silver Letter Necklace', 40, 'product-30.jpg', NULL),
(40, 'accessorie', 'Silver White Crown Neckalace', 56.78, 'product-31.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user` varchar(60) NOT NULL,
  `password` varchar(80) NOT NULL,
  `name` varchar(60) NOT NULL,
  `access` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user`, `password`, `name`, `access`) VALUES
(109, 'fsafas@fsaf.com', '$2y$10$OAY83o36WzPqdpUs.xsvSuxTRmA9GcVlvs/587ypacOinb6z8wkJm', 'fsafas', 0),
(113, 'aaron@gmail.com', '$2y$10$cwBcnD.Ciuxv5BXXCYnK6uzD22zG54y85hmtvXJiF40YZ7HFxnqOu', 'Aaron', 1),
(114, 'bob@gmail.com', '$2y$10$zvGtxdmI3R7/fWD/SerAdu28CU/kuSJyEYAyN5JiF5j5B8WUHlwLG', 'Bob', 1),
(117, 'test@gmail.com', '$2y$10$hzoX26.WPpdLbwxYTAr7Ve5WaR2bD0wiozUZPo1S3Ci4beZ8c.6IK', 'Test', 0),
(124, 'saasff@afsfas.com', '$2y$10$b.4sVy2rAntI099YCSmWyuOUBRkmE/Bdua.yWE3h2YglzSUnFDn4K', 'Fasfsa', 0),
(125, 'fafs', '$2y$10$mNLmG4id/VHb7LpHgXp2z.ZhkB45G.SvI.t4fKlCnEDqhqb9MB8Ja', 'Asfsfa', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_cart`
--

CREATE TABLE `users_cart` (
  `cart_item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_cart`
--
ALTER TABLE `users_cart`
  ADD PRIMARY KEY (`cart_item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `users_cart`
--
ALTER TABLE `users_cart`
  MODIFY `cart_item_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
