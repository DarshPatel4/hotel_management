-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2024 at 03:56 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `item` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `category`, `item`, `price`) VALUES
(1, 'Appetizer', 'Spring Rolls', 150.00),
(2, 'Appetizer', 'Vegetable Samosa', 100.00),
(3, 'Appetizer', 'Paneer Tikka', 200.00),
(4, 'Appetizer', 'Chilli Paneer', 180.00),
(5, 'Appetizer', 'Hara Bhara Kabab', 160.00),
(6, 'Appetizer', 'Stuffed Mushrooms', 170.00),
(7, 'Appetizer', 'Corn Cheese Balls', 140.00),
(8, 'Appetizer', 'Vegetable Seekh Kebab', 150.00),
(9, 'Appetizer', 'Cheese Garlic Bread', 130.00),
(10, 'Appetizer', 'Crispy Veg', 120.00),
(11, 'Main Course', 'Paneer Butter Masala', 250.00),
(12, 'Main Course', 'Veg Pulao', 220.00),
(13, 'Main Course', 'Veg Biryani', 230.00),
(14, 'Main Course', 'Dal Makhani', 180.00),
(15, 'Main Course', 'Aloo Gobi', 170.00),
(16, 'Main Course', 'Chana Masala', 190.00),
(17, 'Main Course', 'Baingan Bharta', 160.00),
(18, 'Main Course', 'Mix Veg Curry', 200.00),
(19, 'Main Course', 'Palak Paneer', 240.00),
(20, 'Main Course', 'Paneer Tikka Masala', 260.00),
(21, 'Main Course', 'Kadai Paneer', 250.00),
(22, 'Main Course', 'Mutter Paneer', 230.00),
(23, 'Main Course', 'Navratan Korma', 270.00),
(24, 'Main Course', 'Veg Kofta Curry', 220.00),
(25, 'Main Course', 'Malai Kofta', 260.00),
(26, 'Main Course', 'Aloo Methi', 180.00),
(27, 'Main Course', 'Bhindi Masala', 190.00),
(28, 'Main Course', 'Jeera Aloo', 170.00),
(29, 'Main Course', 'Veg Handi', 250.00),
(30, 'Main Course', 'Shahi Paneer', 270.00),
(31, 'Main Course', 'Paneer Lababdar', 260.00),
(32, 'Main Course', 'Paneer Pasanda', 280.00),
(33, 'Main Course', 'Kashmiri Dum Aloo', 240.00),
(34, 'Main Course', 'Aloo Jeera', 150.00),
(35, 'Main Course', 'Methi Malai Matar', 220.00),
(36, 'Main Course', 'Gobi Masala', 180.00),
(37, 'Main Course', 'Veg Kolhapuri', 210.00),
(38, 'Main Course', 'Veg Jalfrezi', 200.00),
(39, 'Main Course', 'Mutter Mushroom', 230.00),
(40, 'Main Course', 'Aloo Baingan', 160.00),
(41, 'Main Course', 'Veg Kadai', 220.00),
(42, 'Main Course', 'Dal Tadka', 150.00),
(43, 'Main Course', 'Dal Fry', 140.00),
(44, 'Main Course', 'Rajma Masala', 180.00),
(45, 'Main Course', 'Kaddu Ki Sabzi', 130.00),
(46, 'Main Course', 'Lauki Kofta', 200.00),
(47, 'Main Course', 'Paneer Bhurji', 240.00),
(48, 'Main Course', 'Chole Bhature', 190.00),
(49, 'Main Course', 'Pindi Chole', 210.00),
(50, 'Main Course', 'Paneer Jalfrezi', 250.00),
(51, 'Main Course', 'Aloo Tamatar', 150.00),
(52, 'Main Course', 'Aloo Simla Mirch', 170.00),
(53, 'Main Course', 'Veg Makhanwala', 240.00),
(54, 'Main Course', 'Paneer Makhani', 260.00),
(55, 'Dessert', 'Gulab Jamun', 100.00),
(56, 'Dessert', 'Ras Malai', 120.00),
(57, 'Dessert', 'Kesar Pista Kulfi', 80.00),
(58, 'Dessert', 'Gajar Ka Halwa', 110.00),
(59, 'Dessert', 'Moong Dal Halwa', 130.00),
(60, 'Dessert', 'Rasgulla', 90.00),
(61, 'Dessert', 'Ice Cream', 70.00),
(62, 'Dessert', 'Jalebi', 100.00),
(63, 'Dessert', 'Malpua', 110.00),
(64, 'Dessert', 'Phirni', 120.00),
(65, 'Dessert', 'Rabri', 130.00),
(66, 'Dessert', 'Kheer', 90.00),
(67, 'Dessert', 'Shahi Tukda', 140.00),
(68, 'Dessert', 'Chocolate Brownie', 150.00),
(69, 'Dessert', 'Sizzling Brownie', 180.00),
(70, 'Dessert', 'Fruit Salad', 80.00),
(71, 'Dessert', 'Kulfi Falooda', 160.00),
(72, 'Dessert', 'Basundi', 120.00),
(73, 'Dessert', 'Kesari Bath', 100.00),
(74, 'Dessert', 'Milkshake', 70.00),
(75, 'Beverage', 'Lassi', 50.00),
(76, 'Beverage', 'Masala Chai', 30.00),
(77, 'Beverage', 'Coffee', 40.00),
(78, 'Beverage', 'Cold Coffee', 60.00),
(79, 'Beverage', 'Mango Shake', 70.00),
(80, 'Beverage', 'Banana Shake', 70.00),
(81, 'Beverage', 'Orange Juice', 60.00),
(82, 'Beverage', 'Lemonade', 40.00),
(83, 'Beverage', 'Coconut Water', 30.00),
(84, 'Beverage', 'Green Tea', 40.00),
(85, 'Beverage', 'Herbal Tea', 50.00),
(86, 'Beverage', 'Soda', 20.00),
(87, 'Beverage', 'Butter Milk', 30.00),
(88, 'Beverage', 'Mint Mojito', 80.00),
(89, 'Beverage', 'Fresh Lime Soda', 40.00),
(90, 'Beverage', 'Smoothie', 90.00),
(91, 'Beverage', 'Iced Tea', 50.00),
(92, 'Beverage', 'Sparkling Water', 60.00),
(93, 'Beverage', 'Aam Panna', 70.00),
(94, 'Beverage', 'Sugarcane Juice', 50.00),
(95, 'Beverage', 'Chaas', 30.00);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `items` text DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `items`, `total_price`, `rating`) VALUES
(1, 'Sugarcane Juice, Aam Panna, Sparkling Water, Iced Tea', 230.00, NULL),
(2, 'Sparkling Water, Sugarcane Juice, Chaas, Chaas', 170.00, 4),
(3, 'Iced Tea, Sparkling Water, Aam Panna, Fresh Lime Soda', 220.00, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
