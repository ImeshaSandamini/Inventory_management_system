-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 26, 2020 at 05:15 AM
-- Server version: 10.4.10-MariaDB
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
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
CREATE TABLE IF NOT EXISTS `registration` (
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `nic` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`firstname`, `lastname`, `gender`, `nic`, `address`, `email`, `username`, `password`) VALUES
('null', 'null', 'null', 'null', 'null', 'null', 'null', 'null'),
('kalps', 'niru', 'on', 'bjchjkhn', 'nmncm', 'nkjnckvnd', 'kjnkn', 'njkj'),
('null', 'null', 'null', 'null', 'null', 'null', 'null', 'null'),
('null', 'null', 'null', 'null', 'null', 'null', 'null', 'null'),
('siva', 'karan', 'on', 'hjhjkj', 'jkjk', 'hkjkj', 'nnk', 'jkjk'),
('ammaffd', 'vd', 'on', 'cvdv', 'dv', 'dg', 'gr', 'wd'),
('null', 'null', 'null', 'null', 'null', 'null', 'null', 'null'),
('narmi', 'narmi', 'on', '2654952625', 'hfyguhjnkjhygtfr', 'nagfsrtgyufh@gmail', 'narmi', 'narmi'),
('null', 'null', 'null', 'null', 'null', 'null', 'null', 'null'),
('null', 'null', 'null', 'null', 'null', 'null', 'null', 'null'),
('gghhg', 'jnn', 'on', 'hhjj', 'hhj', 'bjh', 'bjbjn', 'bjhj'),
('null', 'null', 'null', 'null', 'null', 'null', 'null', 'null'),
('null', 'null', 'null', 'null', 'null', 'null', 'null', 'null'),
('null', 'null', 'null', 'null', 'null', 'null', 'null', 'null'),
('siva', 'karan', 'on', '952832301v', 'jaffna', 'nadarajahsivakaran1995@gmail.com', 'karan', 'amma'),
('null', 'null', 'null', 'null', 'null', 'null', 'null', 'null'),
('visnoo', 'sayan', 'on', 'njnj', 'nkn', 'nkjk', 'nkjl', 'jkjk'),
('null', 'null', 'null', 'null', 'null', 'null', 'null', 'null'),
('null', 'null', 'null', 'null', 'null', 'null', 'null', 'null'),
('null', 'null', 'null', 'null', 'null', 'null', 'null', 'null'),
('null', 'null', 'null', 'null', 'null', 'null', 'null', 'null'),
('null', 'null', 'null', 'null', 'null', 'null', 'null', 'null'),
('null', 'null', 'null', 'null', 'null', 'null', 'null', 'null'),
('null', 'null', 'null', 'null', 'null', 'null', 'null', 'null'),
('null', 'null', 'null', 'null', 'null', 'null', 'null', 'null'),
('hj', 'jij', 'on', 'jj', 'oo', 'hjk', 'jj', 'iji'),
('', '', 'null', '', '', '', '', ''),
('null', 'null', 'null', 'null', 'null', 'null', 'null', 'null'),
('hjju', 'nkj', 'on', 'nkjk', 'mkj', 'njkj', 'jkj', 'jj'),
('', '', 'null', '', '', '', '', ''),
('', '', 'null', '', '', '', '', ''),
('', '', 'null', '', '', '', '', ''),
('', '', 'null', '', '', '', '', ''),
('imesha', 'sana', 'on', '5464', 'ddgf', 'utft', 'imesha', 'imesha');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
CREATE TABLE IF NOT EXISTS `stock` (
  `phonebrand` varchar(50) NOT NULL,
  `count` int(50) NOT NULL,
  `unitprice` int(50) NOT NULL,
  `totalamount` int(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
