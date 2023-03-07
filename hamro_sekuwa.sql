-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2023 at 02:38 PM
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
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_feedback` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `customer_name`, `customer_email`, `customer_feedback`) VALUES
(1, 'Jakeem Stout', 'sijylaj@mailinator.com', 'Ad atque voluptate r'),
(2, 'Fletcher Harrell', 'wepivux@mailinator.com', 'Dolorem do debitis sab\r\ncd\r\nef\r\ng'),
(3, 'Patrick Price', 'kydota@mailinator.com', 'Amet veniam blandi'),
(4, 'Rae Atkinson', 'gunykudafi@mailinator.com', 'Aut consequatur cup'),
(5, 'Olympia Solomon', 'bopaga@mailinator.com', 'Ut ducimus totam no'),
(6, 'Lydia Stout', 'vimuf@mailinator.com', 'Illo earum non vitae'),
(7, 'samir baniya', '9841558311', '“I love the avocado toast and the California focaccia”\r\n\r\n“Their brunch is awesome, I love the avocado toast and the California focaccia. Pizza is really good as well.” – Alison B.\r\n\r\n“Not just on the lower Cape…. anywhere!”\r\n\r\n“Best Pizza EVER! Not just on the lower Cape…. anywhere!” – Ellen H.\r\n\r\n“I will definitely be back!”\r\n\r\n“I was so impressed with my breakfast this morning! I tried the Fried Green Tomato Benedict and my boyfriend got the Crab Cakes Benedict. We both finished our whole plates and were so impressed with the quality of the food and the short amount of time it took to receive it. Our waitress was sweet and helpful. I will definitely be back!” – Julia L.\r\n\r\n“Always worth the stop.”\r\n\r\n“This is always our breakfast stop before heading home from vacation. Always delicious. Always great service. Always worth the stop.” – Kristine R.\r\n\r\n“I would recommend Fairway Restaurant.”\r\n\r\n“I won a $30. Gift card for Fairway Restaurant in Eastham from Cape 104.7 radio. Brought my sister for breakfast. The breakfast was crab cakes with spinach and poached eggs and hollandaise sauce. Jill got fried green tomatoes with spinach and poached eggs with hollandaise sauce. Both were Excellent. The restaurant is very clean. Professional Staff. I would recommend Fairway Restaurant.” – James T.\r\n\r\n“One of the best places…”\r\n\r\n“One of the best places I’ve eaten on Cape Cod. Great cocktails, awesome.” – Eric T.\r\n\r\n“Im from the south, thats saying a lot…”\r\n\r\n“Breakfast was delicious. Like a good homestyle country savory breakfast (and Im from the south, thats saying a lot)… Enjoyed the whole experience and definitely recommend this place for a place to eat on the cape.” – Ronnie E.\r\n\r\n“Best breakfast on the east coast!”'),
(8, '', 'setojamucy@mailinator.com', 'sdfg\r\n'),
(9, 'name', 'verav@mailinator.com', ''),
(10, 'Solomon Hensley', 'zufyqy@mailinator.com', 'Est sequi voluptate '),
(11, 'Garrison Barry', 'guhemofa@mailinator.com', 'Iste dolor quo minim'),
(12, 'Jayme Pierce', 'lexo@mailinator.com', 'Excepturi excepturi ');

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
(23, 7, '150.00', 7, '1050.00', 'samir baniya', 'BANEPA', 'samirbaniya500@gmail.com', '9841558311', 'hffcg', '2023-02-06 15:00:38', 'chicken pizza'),
(24, 7, '150.00', 794, '119100.00', 'Quynn Whitley', 'Sed repudiandae exce', 'penipiwydi@mailinator.com', '9504057984', 'Sed ipsum distincti', '2023-02-15 14:38:45', 'chicken pizza'),
(25, 7, '150.00', 443, '66450.00', 'Erin Cabrera', 'Modi reprehenderit ', 'wyqi@mailinator.com', '9910411980', 'Nulla ut ut amet el', '2023-02-16 03:14:51', 'chicken pizza'),
(26, 8, '120.00', 675, '81000.00', 'Burton Boyer', 'Aperiam dolore et re', 'cowomof@mailinator.com', '9760756579', 'Incididunt illo repu', '2023-03-03 00:38:47', 'pizza'),
(27, 8, '120.00', 401, '48120.00', 'Sierra Singleton', 'Perspiciatis id tem', 'davytyfe@mailinator.com', '9916677588', 'Molestiae laboris si', '2023-03-03 00:40:26', 'pizza'),
(28, 8, '120.00', 794, '95280.00', 'Giselle Foster', 'Corporis autem perfe', 'jagobi@mailinator.com', '9599635837', 'Consectetur cum adi', '2023-03-03 00:41:15', 'pizza'),
(29, 8, '120.00', 479, '57480.00', 'Hall Vaughan', 'Et velit molestiae q', 'tusarapa@mailinator.com', '9294830098', 'Vero dicta voluptate', '2023-03-03 00:43:15', 'pizza'),
(30, 8, '120.00', 779, '93480.00', 'Tobias Bullock', 'Numquam esse volupt', 'qufeve@mailinator.com', '9382549145', 'Laborum dolore ipsum', '2023-03-03 00:44:23', 'pizza'),
(31, 8, '120.00', 805, '96600.00', 'Baker Charles', 'Explicabo Ea amet ', 'refa@mailinator.com', '9474364205', 'Quas obcaecati sit ', '2023-03-03 00:47:04', 'pizza'),
(32, 8, '120.00', 630, '75600.00', 'Karly Morris', 'Sequi necessitatibus', 'bylasig@mailinator.com', '9962062096', 'Dolorum ipsum quisq', '2023-03-03 00:47:17', 'pizza');

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
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
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
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

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
