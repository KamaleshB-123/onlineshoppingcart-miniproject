-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Jul 15, 2022 at 02:38 AM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-shoppingkart`
--

-- --------------------------------------------------------

--
-- Table structure for table `insert_cart`
--

DROP TABLE IF EXISTS `insert_cart`;
CREATE TABLE IF NOT EXISTS `insert_cart` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Product_title` varchar(255) NOT NULL,
  `Price` varchar(255) NOT NULL,
  `Product_category` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `insert_cart`
--

INSERT INTO `insert_cart` (`ID`, `Product_title`, `Price`, `Product_category`) VALUES
(71, 'Mens-sheo', '350', 'Sheo');

-- --------------------------------------------------------

--
-- Table structure for table `userslogin`
--

DROP TABLE IF EXISTS `userslogin`;
CREATE TABLE IF NOT EXISTS `userslogin` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `PhoneNumber` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userslogin`
--

INSERT INTO `userslogin` (`ID`, `username`, `FirstName`, `LastName`, `PhoneNumber`, `Email`, `password`, `address`, `city`, `state`, `zip`) VALUES
(1, 'kamalesh', 'Kamalesh', 'B', '9842744566', 'kamalesh944555@gmail.com', 'Kamal@123', 'nagar Vittampalayam kokkarayanpettai main road t.gode nammakkal', 'Tiruchengode', 'Tamil Nadu', '637214'),
(5, '', '', '', '', '', '', '', '', 'AN', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
