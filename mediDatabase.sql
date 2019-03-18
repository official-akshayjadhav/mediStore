-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 18, 2019 at 08:32 AM
-- Server version: 5.6.43
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mediDatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `CID` int(11) NOT NULL,
  `UID` int(11) NOT NULL,
  `PID` int(11) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`CID`, `UID`, `PID`, `count`) VALUES
(43, 8, 8, 3),
(42, 8, 4, 3),
(41, 8, 9, 2),
(40, 8, 2, 1),
(39, 7, 1, 1),
(38, 6, 2, 1),
(37, 2, 14, 7),
(36, 2, 2, 1),
(35, 2, 6, 1),
(34, 2, 2, 3),
(33, 2, 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `loginTable`
--

CREATE TABLE `loginTable` (
  `UID` int(5) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Address` varchar(40) NOT NULL,
  `Phone` bigint(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loginTable`
--

INSERT INTO `loginTable` (`UID`, `Username`, `Password`, `Name`, `Address`, `Phone`) VALUES
(1, 'akshay@gmail.com', 'asdf', 'akshay', 'address1', 973085),
(2, 'rohit@gmail.com', 'asdf', 'rohit', 'add-1, pune', 1234),
(3, 'rohit@gmail.com', 'asdf', 'rohit', 'add-1, pune', 1234),
(4, 'rohit@gmail.com', 'asdf', 'rohit', 'add-1, pune', 1234),
(5, 'rohit@gmail.com', 'asdf', 'rohit', 'add-1, pune', 1234),
(6, 'adik86000@gmail.com', 'asdf', 'aditya kulkarni', 'J-301 , Queenstown Society , Udyog Nagar', 8459868596),
(7, 'rohitsa40@gmail.com', 'asdfg', 'Pooja', 'J-301 , Queenstown Society , Udyog Nagar', 9850527766),
(8, 'niyu06078@gmail.com', '111', 'Niyati', 'Abc', 9922);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `OID` int(11) NOT NULL,
  `UID` int(11) NOT NULL,
  `CID` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `delivery_date` varchar(50) NOT NULL,
  `payment` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`OID`, `UID`, `CID`, `status`, `delivery_date`, `payment`) VALUES
(1, 3, 4, 0, '2days', 200),
(2, 3, 3, 3, '-', 0);

-- --------------------------------------------------------

--
-- Table structure for table `prescriptions`
--

CREATE TABLE `prescriptions` (
  `ID` int(11) NOT NULL,
  `UID` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `tokenNo` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescriptions`
--

INSERT INTO `prescriptions` (`ID`, `UID`, `image`, `status`, `tokenNo`) VALUES
(8, 1, 'SIH(USECASE).png', 1, 1),
(9, 1, 'icon64.png', 1, 1),
(7, 1, '5z_3_051110326751.jpg', 1, 1),
(6, 1, '84616.jpg', 1, 1),
(5, 1, '5z_3_051110326751.jpg', 1, 1),
(10, 1, '5z_3_051110326751.jpg', 1, 1),
(11, 1, 'icon64.png', 1, 1),
(12, 1, 'image.jpg', 1, 1),
(13, 1, 'transactionList.png', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `productTable`
--

CREATE TABLE `productTable` (
  `productId` int(10) NOT NULL DEFAULT '0',
  `productName` varchar(40) DEFAULT NULL,
  `productDescription` varchar(33) DEFAULT NULL,
  `productMfgDate` date DEFAULT NULL,
  `productExpDate` date DEFAULT NULL,
  `productPrice` decimal(5,2) DEFAULT NULL,
  `Image` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `productTable`
--

INSERT INTO `productTable` (`productId`, `productName`, `productDescription`, `productMfgDate`, `productExpDate`, `productPrice`, `Image`) VALUES
(1, 'Tab.Crocin', 'Pain management and relief Tablet', '2019-01-20', '2021-01-20', '0.94', 'medicine_images/1.jpg'),
(2, 'Tab.Sinarest', 'Common cold and flu Tablet', '2018-10-05', '2021-10-05', '6.56', 'medicine_images/2.jpg'),
(3, 'Syp.Benadryl', 'Cough Syrup', '2019-08-15', '2023-08-28', '85.00', 'medicine_images/3.jpeg'),
(4, 'Tab.Combiflam', 'Paracetamol Tablet', '2019-04-12', '2021-04-12', '1.18', 'medicine_images/4.jpg'),
(5, 'Dettol Antiseptic Liquid 125ml', 'Antiseptic Liquid', '2019-03-20', '2024-03-20', '50.00', 'medicine_images/5.jpg'),
(6, 'ODOMOS CREAM 50GM', 'MOSQUITO REPELLENT CREAM', '2018-04-24', '2021-04-14', '43.00', 'medicine_images/6.jpeg'),
(7, 'KRACK HEEL REPAIR CREAM - 15 GM', 'HEEL REPAIR CREAM', '2018-04-06', '2020-09-26', '48.00', 'medicine_images/7.jpg'),
(8, 'MEDLIFE TRAVEL FIRST AID KIT', 'FIRST AID KIT', '2018-04-06', '2020-09-26', '399.00', 'medicine_images/8.jpeg'),
(9, 'JOHNSON\'S BABY CREAM', 'BABY CREAM', '2019-04-15', '2021-07-26', '127.00', 'medicine_images/9.jpg'),
(10, 'HIMALAYA KOFLET SYRUP 100ml', 'COUGH SYRUP', '2019-11-15', '2022-07-30', '55.00', 'medicine_images/10.jpg'),
(11, 'PATANJALI DANT KANTI TOOTH PASTE 100GM', 'TOOTH PASTE', '2019-01-20', '2021-01-20', '40.00', 'medicine_images/11.jpg'),
(12, 'PATANJALI HONEY 250 GM', 'HONEY', '2018-10-05', '2021-10-05', '70.00', 'medicine_images/12.jpg'),
(13, 'ZANDU BALM', 'OINMENT', '2019-08-15', '2023-08-28', '81.00', 'medicine_images/13.jpg'),
(14, 'HIMALAYA ANTI DANDRUFF SHAMPOO 200 ML', 'ANTI DANDRUFF SHAMPOO', '2019-04-12', '2021-04-12', '109.00', 'medicine_images/14.jpg'),
(15, 'OMRON DIGITAL THERMOMETER MODEL MC-246', 'THERMOMETER', '2019-03-20', '2024-03-20', '142.00', 'medicine_images/15.jpg'),
(16, 'DABUR HAJMOLA IMLI TABLETS FOR DIGESTION', 'DIGESTION', '2018-04-24', '2021-04-14', '1.00', 'medicine_images/16.jpg'),
(17, 'ENO COLA FLAVOUR POWDER SACHET', 'ANTACID', '2018-04-06', '2020-09-26', '6.00', 'medicine_images/17.jpg'),
(18, 'ENO LEMON SACHET 5 GM', 'ANTACID', '2018-04-06', '2020-09-26', '7.00', 'medicine_images/18.jpeg'),
(19, 'MEDIMIX SANDAL SOAP - 125 GM', 'SOAP', '2019-04-15', '2021-07-26', '41.00', 'medicine_images/19.jpg'),
(20, 'JOHNSON BAND AID WATERPROOF BANDAGE', 'BANDAGES', '2019-11-15', '2022-07-30', '23.00', 'medicine_images/20.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`CID`);

--
-- Indexes for table `loginTable`
--
ALTER TABLE `loginTable`
  ADD PRIMARY KEY (`UID`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`OID`);

--
-- Indexes for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `productTable`
--
ALTER TABLE `productTable`
  ADD PRIMARY KEY (`productId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `CID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `loginTable`
--
ALTER TABLE `loginTable`
  MODIFY `UID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `OID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `prescriptions`
--
ALTER TABLE `prescriptions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
