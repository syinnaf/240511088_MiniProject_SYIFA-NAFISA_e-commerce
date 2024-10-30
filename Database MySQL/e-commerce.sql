-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2024 at 01:04 PM
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
-- Database: `e-commerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `stock`, `category`, `description`, `brand`, `created_at`, `updated_at`) VALUES
(2, 'iPhone 14 Pro', 14999000.00, 15, 'Electronics', '256GB Storage, Black, 5G Ready', 'Apple', '2024-10-30 10:37:23', '2024-10-30 10:37:23'),
(3, 'Galaxy S23 Ultra', 13999000.00, 12, 'Electronics', '512GB Storage, Green, 5G Ready', 'Samsung', '2024-10-30 10:37:23', '2024-10-30 10:37:23'),
(4, 'Logitech G Pro X', 1599000.00, 25, 'Electronics', 'Wireless Gaming Mouse, RGB', 'Logitech', '2024-10-30 10:37:23', '2024-10-30 10:37:23'),
(5, 'Keychron K2', 1299000.00, 20, 'Electronics', 'Mechanical Keyboard, Brown Switch', 'Keychron', '2024-10-30 10:37:23', '2024-10-30 10:37:23'),
(6, 'Sony WH-1000XM4', 3499000.00, 18, 'Electronics', 'Noise Cancelling Headphones', 'Sony', '2024-10-30 10:37:23', '2024-10-30 10:37:23'),
(7, 'PlayStation 5', 7999000.00, 8, 'Gaming', 'Digital Edition, White', 'Sony', '2024-10-30 10:37:23', '2024-10-30 10:37:23'),
(8, 'Nintendo Switch OLED', 4599000.00, 12, 'Gaming', 'White, Latest Model', 'Nintendo', '2024-10-30 10:37:23', '2024-10-30 10:37:23'),
(9, 'God of War Ragnarök', 799000.00, 20, 'Gaming', 'PS5 Game, Action Adventure', 'PlayStation', '2024-10-30 10:37:23', '2024-10-30 10:37:23'),
(10, 'Gaming Monitor 27\"', 4299000.00, 10, 'Gaming', '165Hz, 1ms, QHD', 'LG', '2024-10-30 10:37:23', '2024-10-30 10:37:23'),
(11, 'Coffee Maker', 2999000.00, 10, 'Home & Living', 'Automatic Drip, 12 Cups', 'Phillips', '2024-10-30 10:37:23', '2024-10-30 10:37:23'),
(12, 'Air Purifier', 3999000.00, 8, 'Home & Living', 'HEPA Filter, WiFi Connected', 'Dyson', '2024-10-30 10:37:23', '2024-10-30 10:37:23'),
(13, 'Smart LED TV 55\"', 7999000.00, 10, 'Home & Living', '4K UHD, Smart Android TV', 'Samsung', '2024-10-30 10:37:23', '2024-10-30 10:37:23'),
(14, 'Gaming Chair', 1999000.00, 15, 'Home & Living', 'Ergonomic Design, Black/Red', 'DXRacer', '2024-10-30 10:37:23', '2024-10-30 10:37:23'),
(15, 'Atomic Habits', 199000.00, 50, 'Books', 'Hardcover, Self Development', 'James Clear', '2024-10-30 10:37:23', '2024-10-30 10:37:23'),
(16, 'The Psychology of Money', 249000.00, 45, 'Books', 'Paperback, Finance', 'Morgan Housel', '2024-10-30 10:37:23', '2024-10-30 10:37:23'),
(17, 'Premium Denim Jacket', 899000.00, 30, 'Fashion', 'Blue, Cotton Denim, All Sizes', 'Levis', '2024-10-30 10:38:37', '2024-10-30 10:38:37'),
(18, 'Running Shoes Air Max', 1299000.00, 25, 'Fashion', 'Black/White, Sports Collection', 'Nike', '2024-10-30 10:38:37', '2024-10-30 10:38:37'),
(19, 'Classic Watch Series 5', 2499000.00, 15, 'Fashion', 'Stainless Steel, Water Resistant', 'Fossil', '2024-10-30 10:38:37', '2024-10-30 10:38:37'),
(20, 'Leather Wallet', 299000.00, 40, 'Fashion', 'Genuine Leather, Brown', 'Braun Buffel', '2024-10-30 10:38:37', '2024-10-30 10:38:37'),
(21, 'Mechanical Keyboard', 1500000.00, 20, 'Electronics', 'RGB Backlit, Blue Switch', 'Ducky', '2024-10-30 11:42:52', '2024-10-30 11:42:52'),
(23, 'ROG Strix Gaming Laptop', 15999000.00, 10, 'Electronics', '15.6 inch, RTX 3060, Ryzen 7, 16GB RAM', 'ASUS', '2024-10-30 11:45:56', '2024-10-30 11:45:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
