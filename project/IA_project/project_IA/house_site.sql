-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2017 at 01:59 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `house_site`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertisement`
--

CREATE TABLE `advertisement` (
  `Id` int(50) NOT NULL,
  `Suspend` varchar(1) DEFAULT NULL,
  `User_Id` int(10) DEFAULT NULL,
  `Date` varchar(50) DEFAULT NULL,
  `Rate` varchar(10) DEFAULT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `Size` varchar(100) DEFAULT NULL,
  `Price` varchar(100) DEFAULT NULL,
  `Location` varchar(100) DEFAULT NULL,
  `Floor` varchar(100) DEFAULT NULL,
  `Offer` varchar(100) DEFAULT NULL,
  `Discription` varchar(100) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `Img` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advertisement`
--

INSERT INTO `advertisement` (`Id`, `Suspend`, `User_Id`, `Date`, `Rate`, `Type`, `Size`, `Price`, `Location`, `Floor`, `Offer`, `Discription`, `Status`, `Img`) VALUES
(3, NULL, 6, 'Mon Dec 11 01:36:23 EET 2017', NULL, 'Rent', 'new', 'new', 'new', 'new', '', '', 'Full_Duplex', NULL),
(4, NULL, 1, 'Thu Dec 14 17:19:30 EET 2017', NULL, 'Sell', '666', '66', '6666', '66', '66', '', 'Full_Duplex', NULL),
(5, '1', 1, 'Thu Dec 14 17:28:19 EET 2017', NULL, 'Rent', '9000000000000000', 'ergerg', 'rgerge', 'ergerg', 'rgerger', '', 'Full_Duplex', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `alert`
--

CREATE TABLE `alert` (
  `Id` int(11) NOT NULL,
  `User_Id` varchar(11) DEFAULT NULL,
  `Adv_Id` varchar(11) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Size` varchar(11) DEFAULT NULL,
  `Price` varchar(50) DEFAULT NULL,
  `Location` varchar(50) DEFAULT NULL,
  `Floor` varchar(11) DEFAULT NULL,
  `Offer` varchar(50) DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `Img` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alert`
--

INSERT INTO `alert` (`Id`, `User_Id`, `Adv_Id`, `Type`, `Size`, `Price`, `Location`, `Floor`, `Offer`, `Description`, `Status`, `Img`) VALUES
(1, '1', NULL, 'Rent', '333', '', '', '', '', NULL, 'HALF_Duplex', NULL),
(2, '1', NULL, 'Rent', '333', '', '', '', '', NULL, 'HALF_Duplex', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `Id` int(50) NOT NULL,
  `User_Id` varchar(50) DEFAULT NULL,
  `Ads_Id` varchar(50) DEFAULT NULL,
  `Text` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`Id`, `User_Id`, `Ads_Id`, `Text`) VALUES
(1, '2', '3', 'So Good'),
(2, '1', '3', 'tasty'),
(3, '1', '3', 'buaty'),
(4, '1', '5', 'dfbldkjfbdlfvjbfvld');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `Id` int(50) NOT NULL,
  `User_Id` varchar(50) DEFAULT NULL,
  `Ads_Id` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Address` varchar(90) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `Img` longtext,
  `is_admin` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Id`, `Name`, `Phone`, `Address`, `Email`, `Password`, `Img`, `is_admin`) VALUES
(1, 'ab', '11', 'giza', 'mmm', '111', '', '0'),
(2, '+name+', ' + phone+', '+ address+', ' + email+', ' + password+', '', '0'),
(3, 'ahmed', '999999', '111111', 'ahmed@', '123', NULL, '1'),
(4, 'rageh', '011', 'doki', 'rageh@m', '555', NULL, '1'),
(5, 'mohamed', '9999', '5555', 'ahmed@', '4444', NULL, '1'),
(6, 'mahmoud', '64646', '6464', 'dfsfasfa', '465654', NULL, '1'),
(7, 'rageh', '999999', '6666', 'nnnnnnn', '11111', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertisement`
--
ALTER TABLE `advertisement`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `alert`
--
ALTER TABLE `alert`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Id` (`Id`),
  ADD UNIQUE KEY `Id_2` (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertisement`
--
ALTER TABLE `advertisement`
  MODIFY `Id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `alert`
--
ALTER TABLE `alert`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `Id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `Id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
