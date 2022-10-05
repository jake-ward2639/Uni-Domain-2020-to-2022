-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 05, 2022 at 10:26 AM
-- Server version: 5.7.39
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jw1448_laptopia_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `OrderContents`
--

CREATE TABLE `OrderContents` (
  `OrderId` int(11) NOT NULL,
  `ProductId` int(11) NOT NULL,
  `Amount` int(11) NOT NULL,
  `Refund` bit(1) DEFAULT NULL,
  `DateOfReturn` date DEFAULT NULL,
  `TotalPrice` decimal(15,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Orders`
--

CREATE TABLE `Orders` (
  `OrderId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Refund` bit(1) DEFAULT NULL,
  `DateOfOrder` date NOT NULL,
  `DateOfReturn` date DEFAULT NULL,
  `OrderPrice` decimal(15,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Products`
--

CREATE TABLE `Products` (
  `ProductId` int(11) NOT NULL,
  `Stock` int(11) NOT NULL,
  `ProductName` varchar(30) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `ImageSrc` varchar(200) NOT NULL,
  `ProductPrice` decimal(15,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ProductSpecs`
--

CREATE TABLE `ProductSpecs` (
  `SpecsId` int(11) NOT NULL,
  `Processor` varchar(100) DEFAULT NULL,
  `GHz` varchar(20) DEFAULT NULL,
  `RAM` varchar(20) DEFAULT NULL,
  `Storage` varchar(100) DEFAULT NULL,
  `HDD` varchar(100) DEFAULT NULL,
  `SDD` varchar(100) DEFAULT NULL,
  `GraphicsCard` varchar(100) DEFAULT NULL,
  `MotherBoard` varchar(100) DEFAULT NULL,
  `ScreenSize` varchar(30) DEFAULT NULL,
  `ProductId` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `UserAddresses`
--

CREATE TABLE `UserAddresses` (
  `AddressId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Address1` varchar(100) NOT NULL,
  `Address2` varchar(100) DEFAULT NULL,
  `City` varchar(100) NOT NULL,
  `County` varchar(100) DEFAULT NULL,
  `Country` varchar(100) NOT NULL,
  `Postcode` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `UserPaymentMethods`
--

CREATE TABLE `UserPaymentMethods` (
  `PaymentMethodId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `CardNum` int(11) NOT NULL,
  `ExpDate` date NOT NULL,
  `CVV` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `UserId` int(11) NOT NULL,
  `Username` varchar(32) NOT NULL,
  `Password` varchar(64) NOT NULL,
  `FName` varchar(20) NOT NULL,
  `LName` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `DoB` date NOT NULL,
  `Language` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `OrderContents`
--
ALTER TABLE `OrderContents`
  ADD KEY `OrderId` (`OrderId`),
  ADD KEY `ProductId` (`ProductId`);

--
-- Indexes for table `Orders`
--
ALTER TABLE `Orders`
  ADD PRIMARY KEY (`OrderId`),
  ADD KEY `UserId` (`UserId`);

--
-- Indexes for table `Products`
--
ALTER TABLE `Products`
  ADD PRIMARY KEY (`ProductId`);

--
-- Indexes for table `ProductSpecs`
--
ALTER TABLE `ProductSpecs`
  ADD PRIMARY KEY (`SpecsId`),
  ADD KEY `ProductId` (`ProductId`);

--
-- Indexes for table `UserAddresses`
--
ALTER TABLE `UserAddresses`
  ADD PRIMARY KEY (`AddressId`),
  ADD KEY `UserId` (`UserId`);

--
-- Indexes for table `UserPaymentMethods`
--
ALTER TABLE `UserPaymentMethods`
  ADD PRIMARY KEY (`PaymentMethodId`),
  ADD KEY `UserId` (`UserId`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`UserId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
