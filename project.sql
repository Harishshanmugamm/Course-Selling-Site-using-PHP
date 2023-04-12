-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2022 at 01:08 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`) VALUES
(0, 'admin vishwa', 'vishwaadmin@localhost.net', 'fd7477d4332033bc9a918421609670b1'),
(1, 'admin kanishkar', 'kanishkaradmin@localhost.net', 'fd7477d4332033bc9a918421609670b1'),
(2, 'rohan', 'rohanadmin@localhost.net', 'e807f1fcf82d132f9bb018ca6738a19f'),
(3, 'admin harish', 'harishadmin@localhost.net', 'fd7477d4332033bc9a918421609670b1'),
(5, 'admin prassana', 'prassanaadmin@localhost.net', '6eea9b7ef19179a06954edd0f6c05ceb'),
(7, 'admin bushan', 'bushanadmin@localhost.net', '6eea9b7ef19179a06954edd0f6c05ceb');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `comments` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `user_id`, `name`, `email`, `number`, `comments`) VALUES
(13, 0, 'Harish', 'harishshanmugam66@gmail.com', '', 'hi buddys');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(1, 1, 'Kids', '9638527410', 'kids@gmail.com', 'Cash On Delivery', '125/188 tn-india,641602', '10', 10000, '14-June-22', 'completed'),
(10, 0, 'Shanmugam', '9344823878', '720721110012@hicet.ac.in', 'credit card', 'flat no. 28, /36 Lakshmi nagar 3rd street, Tirupur, India - 641602', ', MYSQL Fundamentals by Jayalakshmi Mam (1) , Photoshop basics by rohan (4) , Computer Fundaments by Hsirah (1) ', 1040, '24-Jun-2022', 'completed'),
(11, 0, 'Harish', '936367749', '720721110012@hicet.ac.in', 'cash on delivery', 'flat no. 465, aesdfghjk, coimbatore, india - 641600', ', Photoshop basics by rohan (1) , MYSQL Fundamentals by Jayalakshmi Mam (1) , PC building Course (1) ', 2010, '25-Jun-2022', 'completed'),
(12, 0, 'Harish', '1234567890', 'harishadmin@localhost.net', 'cash on delivery', 'flat no. 49, sdrsff, coimbatore, india - 641602', ', MYSQL Fundamentals by Jayalakshmi Mam (2) ', 2000, '25-Jun-2022', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--
-- Error reading structure for table project.product: #1932 - Table &#039;project.product&#039; doesn&#039;t exist in engine
-- Error reading data for table project.product: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `project`.`product`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(12, 'MYSQL Fundamentals by Jayalakshmi Mam', 1000, 'pexels-olia-danilevich-4974912.jpg'),
(13, 'Photoshop basics by rohan', 10, 'pexels-caio-56759 (1).jpg'),
(14, 'Computer Fundaments by Hsirah', 0, 'pexels-mateusz-dach-450035.jpg'),
(15, 'PC building Course', 1000, 'pexels-athena-2582937.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'harish', 'harishshanmugamm@outlook.com', '1qazxsw23edcvfrtgbnhy'),
(9, 'Hsirah', 'harishshanmugam66@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f'),
(10, 'Sk Rohan', 'skrohanhsr@gmail.com', '5d8bf0bc2f50699dc01772968be0b7d7'),
(11, 'Prassana', 'srivallidecorators@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f'),
(12, 'Harish.K', '720721110011@hicet.ac.in', 'dcddb75469b4b4875094e14561e573d8'),
(13, 'V.K.Bharath', 'bharathvenkatesan95@gmail.com', 'fd7477d4332033bc9a918421609670b1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
