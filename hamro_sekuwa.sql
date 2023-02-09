-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2023 at 09:43 AM
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
-- Database: `hamro_sekuwa`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(150) NOT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `featured` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `image_name`, `featured`, `status`) VALUES
(10, 'PIZZa', 'Category_5088.jpg', 'Yes', 'Yes'),
(19, 'Burger', 'Category_9018.jpg', 'No', 'Yes'),
(20, 'MOMO', 'Category_8310.jpg', 'Yes', 'Yes'),
(25, 'dal bhat(sakhari)', 'Category_3355.jpg', 'Yes', 'Yes'),
(26, 'dal bhat(non veg)', 'Category_5422.jpg', 'Yes', 'Yes'),
(27, 'Chicken chilly', 'Category_2388.jpg', 'No', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_address` varchar(150) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_contact` varchar(15) NOT NULL,
  `customer_feedback` text NOT NULL,
  `order_date` datetime NOT NULL DEFAULT current_timestamp(),
  `product` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_id`, `price`, `quantity`, `total`, `customer_name`, `customer_address`, `customer_email`, `customer_contact`, `customer_feedback`, `order_date`, `product`) VALUES
(8, 7, '150.00', 474, '71100.00', 'Mara Brown', 'Nihil saepe voluptat', 'zebexaq@mailinator.com', '9887736664', 'Nihil facilis repreh', '2022-11-21 09:07:37', 'chicken pizza'),
(13, 8, '120.00', 358, '42960.00', 'Abigail Gillespie', 'Quam esse asperiores', 'diligyjy@mailinator.com', '9895975145', 'Nulla quis veniam b', '2022-11-21 09:13:47', 'chicken '),
(14, 17, '120.00', 404, '48480.00', 'Evelyn Lynn', 'Molestias consequunt', 'vanyxiz@mailinator.com', '9010069858', 'Consequuntur et dese', '2022-11-21 09:13:59', 'buff momo'),
(15, 18, '150.00', 42, '6300.00', 'Grant Velez', 'Dolor voluptate labo', 'sivajelel@mailinator.com', '9191474560', 'Placeat quas distin', '2022-11-21 09:14:14', 'cheese pizza'),
(16, 18, '150.00', 766, '114900.00', 'Danielle Sweet', 'Id id deserunt ius', 'bibizowyw@mailinator.com', '9197513476', 'Doloremque reprehend', '2022-11-21 11:31:58', 'cheese pizza'),
(17, 7, '150.00', 229, '34350.00', 'Molly Albert', 'Magna accusantium il', 'lapyjehiq@mailinator.com', '9492648897', 'Nulla omnis fugiat ', '2022-11-21 11:34:57', 'chicken pizza'),
(18, 7, '150.00', 987, '148050.00', 'Rina Mclean', 'Provident cum labor', 'sula@mailinator.com', '9154061847', 'Excepturi eligendi p', '2022-11-21 14:55:49', 'chicken pizza'),
(19, 17, '120.00', 936, '112320.00', 'Amanda Curtis', 'Quisquam dolorum ut ', 'jihudi@mailinator.com', '9827618714', 'Ad consequatur maxim', '2022-11-21 14:57:07', 'buff momo'),
(20, 7, '150.00', 153, '22950.00', 'Hashim Terrell', 'Ullamco placeat qui', 'pifanotoke@mailinator.com', '9287679100', 'Laboriosam quo corr', '2022-11-21 15:13:37', 'chicken pizza'),
(21, 8, '120.00', 744, '89280.00', 'Kibo May', 'Et a esse nemo in ex', 'kehybydeli@mailinator.com', '9445191831', 'Non quia illo qui im', '2023-02-04 14:52:36', 'chicken '),
(22, 8, '120.00', 2, '240.00', 'name', 'address', 'sallukhw@gmail.com', '9841558311', '', '2023-02-04 14:53:57', 'chicken '),
(23, 7, '150.00', 7, '1050.00', 'samir baniya', 'BANEPA', 'samirbaniya500@gmail.com', '9841558311', 'hffcg', '2023-02-06 15:00:38', 'chicken pizza');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` text DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `image_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `description`, `category_id`, `featured`, `status`, `image_name`) VALUES
(7, 'chicken pizza', '150.00', 'tasty pizza', 10, 'Yes', 'Yes', 'Product_5871.jpg'),
(8, 'pizza', '120.00', '', 10, 'Yes', 'Yes', 'Product_2667.jpg'),
(17, 'buff momo', '120.00', '', 10, 'Yes', 'Yes', 'Product_3876.jpg'),
(18, 'cheese pizza', '150.00', 'pizza with extra cheesw', 10, 'Yes', 'Yes', 'Product_5613.jpg'),
(19, 'Burger', '200.00', 'made with 100% pure beef patty, topped with melted cheddar cheese, crisp lettuce, ripe tomato, pickles, and served on a toasted bun with our secret sauce.', 10, 'Yes', 'Yes', 'product_9936.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `user_name`, `password`) VALUES
(23, 'fullname', 'gopal', 'b6d767d2f8ed5d21a44b0e5886680cb9'),
(24, '5', 'hari', 'd41d8cd98f00b204e9800998ecf8427e'),
(29, 'fullname', 'sam', 'd41d8cd98f00b204e9800998ecf8427e'),
(30, 'fullname', 'sam', 'd41d8cd98f00b204e9800998ecf8427e'),
(31, 'sallu', 'sam', 'd41d8cd98f00b204e9800998ecf8427e'),
(32, 'sallu', 'sam', 'd41d8cd98f00b204e9800998ecf8427e'),
(33, 'l', 'sam', 'd41d8cd98f00b204e9800998ecf8427e'),
(35, 'sam', 'sam', '332532dcfaa1cbf61e2a266bd723612c');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
