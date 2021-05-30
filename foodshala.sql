-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 05, 2019 at 05:53 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodshala`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `prefer_food_type` varchar(255) NOT NULL,
  `user_prefer` varchar(255) NOT NULL,
  `user_location` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `user_id`, `prefer_food_type`, `user_prefer`, `user_location`, `created_at`) VALUES
(3, 22, 'veg', '', '', '2021-05-28 11:30:55');

-- --------------------------------------------------------

--
-- Table structure for table `food_order`
--

DROP TABLE IF EXISTS `food_order`;
CREATE TABLE IF NOT EXISTS `food_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_number` varchar(255) NOT NULL,
  `order_by_customers_user_id` varchar(255) NOT NULL,
  `order_to_restaurants_user_id` varchar(255) NOT NULL,
  `order_restaurants_food_id` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `restaurant_rating` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food_order`
--

INSERT INTO `food_order` (`id`, `order_number`, `order_by_customers_user_id`, `order_to_restaurants_user_id`, `order_restaurants_food_id`, `quantity`, `status`, `restaurant_rating`, `created_at`) VALUES
(15, '119', '22', '25', '19', '1', 0, '', '2021-05-28 12:36:58'),
(19, '118', '22', '24', '18', '2', 0, '', '2021-05-28 12:40:44');

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

DROP TABLE IF EXISTS `restaurants`;
CREATE TABLE IF NOT EXISTS `restaurants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `restaurant_name` varchar(255) NOT NULL,
  `restaurant_location` varchar(255) NOT NULL,
  `restaurant_mobile` varchar(255) NOT NULL,
  `restaurant_rating` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `user_id`, `restaurant_name`, `restaurant_location`, `restaurant_mobile`, `restaurant_rating`, `created_at`) VALUES
(2, '23', 'Indian Food', 'Darbhanga', '6202209823', '****', '2021-05-28 12:40:00'),
(3, '24', 'Bihari Food', 'Benipur', '06258692357', '****', '2021-05-28 13:40:20'),
(4, '25', 'KFC', 'Darbhanga', '06234168597', '*****', '2021-05-28 13:50:00');

-- --------------------------------------------------------

--
-- Table structure for table `restaurants_dish`
--

DROP TABLE IF EXISTS `restaurants_dish`;
CREATE TABLE IF NOT EXISTS `restaurants_dish` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `restaurant_user_id` varchar(255) NOT NULL,
  `dish_name` varchar(255) NOT NULL,
  `dish_description` varchar(255) NOT NULL,
  `dish_price` varchar(255) NOT NULL,
  `today_discount_percentage` varchar(255) NOT NULL,
  `dish_food_type` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurants_dish`
--

INSERT INTO `restaurants_dish` (`id`, `restaurant_user_id`, `dish_name`, `dish_description`, `dish_price`, `today_discount_percentage`, `dish_food_type`, `created_at`) VALUES
(3, '23', 'Shahi Paneer', 'DescriptionShahi paneer is a preparation of paneer, indigenous to the Indian subcontinent, consisting of a thick gravy of cream, tomatoes and Indian spices. ', '150', '', 'veg', '2021-28-05 12:40:05'),
(4, '23', 'xyz', 'this is demo this is demo this is demo this is demo this is demo this is demo this is demo this is demo this is demo this is demo ', '100', '', 'veg', '2021-28-05 10:49:31'),
(5, '23', 'xyzy', 'this is demo this is demo this is demo this is demo ', '100', '', 'non_veg', '2021-28-05 10:51:08'),
(6, '23', 'xyza', 'this is demo this is demo this is demo this is demo ', '100', '', 'drinks', '2021-28-05 10:51:26'),
(7, '23', 'desserts', 'this is demo this is demo this is demo this is demo ', '100', '', 'desserts', '2021-28-05 10:51:54'),
(8, '23', 'desserts1', 'this is demo this is demo this is demo this is demo ', '100', '', 'desserts', '2021-28-05 10:52:08'),
(9, '23', 'veg', 'this is demo this is demo this is demo this is demo ', '100', '', 'veg', '2021-28-05 10:52:21'),
(10, '23', 'food1', 'this is demo this is demo this is demo this is demo ', '1000', '', 'veg', '2021-28-05 10:52:37'),
(11, '23', 'veg12', 'this is demo this is demo this is demo this is demo ', '100', '', 'veg', '2021-28-05 10:52:54'),
(12, '23', 'nonveg', 'this is demo this is demo this is demo this is demo ', '150', '', 'non_veg', '2021-28-05 10:53:11'),
(13, '23', 'food2', 'this is demo this is demo this is demo this is demo ', '1000', '', 'non_veg', '2021-28-05 10:53:30'),
(14, '23', 'food3', 'this is demo this is demo this is demo this is demo ', '500', '', 'non_veg', '2021-28-05 10:53:47'),
(15, '23', 'drinks', 'this is demo this is demo this is demo this is demo ', '150', '', 'drinks', '2021-28-05 10:54:00'),
(16, '24', 'xyz', 'xyz', '100', '', 'veg', '2021-28-05 12:47:39'),
(17, '24', 'roti', 'dummy dummmy', '100', '', 'non_veg', '2021-28-05 12:47:49'),
(18, '24', 'Shahi Paneer', 'DescriptionShahi paneer is a preparation of paneer, indigenous to the Indian subcontinent, consisting of a thick gravy of cream, tomatoes and Indian spices. ', '100', '', 'veg', '2021-28-05 12:48:05'),
(19, '25', 'Shahi Paneer', 'DescriptionShahi paneer is a preparation of paneer, indigenous to the Indian subcontinent, consisting of a thick gravy of cream, tomatoes and Indian spices. ', '150', '', 'veg', '2021-28-05 12:49:18');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` varchar(255) NOT NULL,
  `role_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_id`, `role_name`) VALUES
(1, '1', 'Restaurants'),
(2, '2', 'Customers');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

DROP TABLE IF EXISTS `tbl_users`;
CREATE TABLE IF NOT EXISTS `tbl_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) DEFAULT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_mobile` varchar(255) DEFAULT NULL,
  `user_password` varchar(40) DEFAULT NULL,
  `user_role` varchar(3) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `user_name`, `user_email`, `user_mobile`, `user_password`, `user_role`, `created_at`) VALUES
(24, 'ravijha', 'ravijha@gmail.com', '6202209823', 'e10adc3949ba59abbe56e057f20f883e', '1', '2021-28-05 12:47:02'),
(23, 'ravishankarjha', 'ravishankarjha@gmail.com', '6202209823', 'e10adc3949ba59abbe56e057f20f883e', '1', '2021-28-05 10:42:00'),
(22, 'rsjha', 'ravishankarjha7898@gmail.com', '+919823542136', 'e10adc3949ba59abbe56e057f20f883e', '2', '2021-28-05 10:39:55'),
(25, 'rs_jha10', 'rsjha10@gmail.com', '09823542136', 'e10adc3949ba59abbe56e057f20f883e', '1', '2021-28-05 12:49:00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
