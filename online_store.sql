-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2025 at 09:54 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online store`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart_table`
--

CREATE TABLE `cart_table` (
  `id_cart` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart_table`
--

INSERT INTO `cart_table` (`id_cart`,`subtotal_cart`,`tax_cart`) VALUES
(1, 1000, 200),
(2, 1000, 200);

-- --------------------------------------------------------

--
-- Table structure for table `department_table`
--

CREATE TABLE `department_table` (
  `id_dept` int(11) NOT NULL,
  `name_dept` varchar(20) NOT NULL,
  `img_dept` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department_table`
--

INSERT INTO `department_table` (`id_dept`, `name_dept`, `img_dept`) VALUES
(1, 'Girls', 'Girls/main.jpg'),
(3, 'Children', 'Children/main.jpg'),
(5, 'Boys', 'Boys/main.png');

-- --------------------------------------------------------

--
-- Table structure for table `img_products_table`
--

CREATE TABLE `img_products_table` (
  `id_img` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `path_img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `img_products_table`
--

INSERT INTO `img_products_table` (`id_img`, `id_product`, `path_img`) VALUES
(1, 1, 'Boys\\m1.jpg'),
(2, 2, 'Children\\m5.jpg'),
(3, 3, 'Girls\\m1.jpg'),
(5, 5, 'Boys\\m6.jpg'),
(6, 6, 'Children\\m18.jpg'),
(7, 7, 'Boys\\S8b3d706936e84b7fb452db2ed93194815.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `products_cart_table`
--

CREATE TABLE `products_cart_table` (
  `id_product` int(11) NOT NULL,
  `id_cart` int(11) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products_cart_table`
--

INSERT INTO `products_cart_table` (`id_product`, `id_cart`, `count`) VALUES
(2, 1, 5),
(2, 1, 5),
(2, 1, 5),
(2, 1, 5),
(1, 1, 2),
(3, 1, 10),
(2, 2, 2),
(2, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products_table`
--

CREATE TABLE `products_table` (
  `id_product` int(11) NOT NULL,
  `name_product` varchar(50) NOT NULL,
  `price_product` double(10,2) NOT NULL,
  `count_star` int(1) NOT NULL,
  `sizes` varchar(50) NOT NULL,
  `id_dept` int(11) NOT NULL,
  `comment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products_table`
--

INSERT INTO `products_table` (`id_product`, `name_product`, `price_product`, `count_star`, `sizes`, `id_dept`, `comment`) VALUES
(1, 'فنيلة ابو رقبة', 100.50, 3, '30,32,34,36,38', 5, ''),
(2, 'بجامة أطفال', 70.00, 5, '10,12,14,16', 3, '            بجامة خامة مليح و قوة القوة       '),
(3, 'بجامة نسائية ', 120.00, 4, '20,30', 1, ''),
(5, 'طقم شبابي ', 300.00, 5, '30,32,34,36,38,40', 5, '          طقم شبابي فول أوشن مع نظارة و بوت و ساعة'),
(6, 'بربروز', 100.00, 3, '10,12,14,16', 3, '       بربروز أطفال ملييح و قوة   '),
(7, 'طقم برمودا شبابي', 100.00, 3, '36,38,40', 5, '          ');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `User_ID` int(11) NOT NULL,
  `User_Name` varchar(50) NOT NULL,
  `user_password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`User_ID`, `User_Name`, `user_password`) VALUES
(1, 'admin', 'admin123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart_table`
--
ALTER TABLE `cart_table`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indexes for table `department_table`
--
ALTER TABLE `department_table`
  ADD PRIMARY KEY (`id_dept`);

--
-- Indexes for table `img_products_table`
--
ALTER TABLE `img_products_table`
  ADD PRIMARY KEY (`id_img`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `products_cart_table`
--
ALTER TABLE `products_cart_table`
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_cart` (`id_cart`);

--
-- Indexes for table `products_table`
--
ALTER TABLE `products_table`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `id_dept` (`id_dept`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`User_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart_table`
--
ALTER TABLE `cart_table`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `department_table`
--
ALTER TABLE `department_table`
  MODIFY `id_dept` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `img_products_table`
--
ALTER TABLE `img_products_table`
  MODIFY `id_img` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products_table`
--
ALTER TABLE `products_table`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `img_products_table`
--
ALTER TABLE `img_products_table`
  ADD CONSTRAINT `img_products_table_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products_table` (`id_product`);

--
-- Constraints for table `products_cart_table`
--
ALTER TABLE `products_cart_table`
  ADD CONSTRAINT `products_cart_table_ibfk_1` FOREIGN KEY (`id_cart`) REFERENCES `cart_table` (`id_cart`),
  ADD CONSTRAINT `products_cart_table_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `products_table` (`id_product`);

--
-- Constraints for table `products_table`
--
ALTER TABLE `products_table`
  ADD CONSTRAINT `products_table_ibfk_1` FOREIGN KEY (`id_dept`) REFERENCES `department_table` (`id_dept`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
