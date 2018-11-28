-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2017 at 10:33 PM
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
  `Rate` int(10) DEFAULT NULL,
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
(2, '1', 6, 'Sun Dec 10 16:38:03 EET 2017', NULL, 'Rent', '66468888888', '646488888888', '468888888', '8888888888', '888888888888888888888888888888888', '646455555555', 'Full_Duplex', NULL),
(3, NULL, 6, 'Mon Dec 11 01:36:23 EET 2017', NULL, 'Rent', 'new', 'new', 'new', 'new', '', '', 'Full_Duplex', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `alert`
--

CREATE TABLE `alert` (
  `Id` int(11) NOT NULL,
  `Owner_Id` int(11) NOT NULL,
  `Adv_Id` int(11) NOT NULL,
  `Type` varchar(50) NOT NULL,
  `Size` int(11) NOT NULL,
  `Price` double NOT NULL,
  `Location` varchar(11) NOT NULL,
  `Floor` int(11) NOT NULL,
  `Offer` varchar(50) NOT NULL,
  `Description` text NOT NULL,
  `Status` varchar(50) NOT NULL,
  `Img` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(3, '1', '3', 'buaty');

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
(1, 'ab', '11', 'giza', 'mmm', '123', '', '0'),
(2, '+name+', ' + phone+', '+ address+', ' + email+', ' + password+', '', '0'),
(3, 'ahmed', '888', '111111', 'ahmed@', '123', NULL, '1'),
(4, 'rageh', '011', 'doki', 'rageh@m', '555', NULL, '1'),
(5, 'mohamed', '9999', '5555', 'ahmed@', '4444', NULL, '1'),
(6, 'mahmoud', '64646', '6464', 'dfsfasfa', '465654', NULL, NULL);

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
  MODIFY `Id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `Id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
