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
-- Database: `jw1448_assignment2Database`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `to` varchar(32) NOT NULL,
  `from` varchar(32) NOT NULL,
  `message` varchar(3000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `to`, `from`, `message`) VALUES
(17, 'freshprince', 'rockman', 'cool'),
(2, 'callum', 'oliver', 'sup bro'),
(16, 'freshprince', 'rockman', '*slap*'),
(15, 'Carl45', 'Magnus2', 'Script is finished'),
(9, 'chris', 'oliver', 'test2'),
(10, 'chris', 'callum', 'testing123'),
(14, 'chris', 'nierman5', 'what r u playing?'),
(13, 'co5555', 'al77767', 'wassup'),
(18, 'freshprince', 'rockman', 'chris is a bot'),
(19, 'rockman', 'freshprince', 'chris is a bot?'),
(20, 'rockman', 'freshprince', 'ok'),
(21, 'rockman', 'freshprince', 'lol'),
(22, 'rockman', 'freshprince', 'more data 4 u'),
(23, 'rockman', 'freshprince', 'another message'),
(24, 'postman2', 'postmun1', 'this is  postmun test'),
(25, 'postman2', 'postmun1', 'post'),
(26, 'postman2', 'postmun1', 'more post'),
(27, 'postman2', 'postmun1', 'more post?'),
(28, 'rockman', 'freshprince', 'back again'),
(29, 'rockman', 'freshprince', 'back again?'),
(30, 'ropeguy66', 'dudebro99', 'hello'),
(31, 'ropeguy66', 'dudebro99', 'hello there'),
(32, 'ropeguy66', 'dudebro99', 'hello there one mo time'),
(33, 'postman2', 'postmun1', 'more post?'),
(34, 'postman8', 'postmun7', 'this is a test message'),
(35, 'jake575', 'postmun7', 'this is a test message'),
(36, 'testman16', 'testman14', 'hello testman'),
(37, 'testwoman32', 'testman43', 'whats up'),
(38, 'testwoman32', 'testman43', 'whats up'),
(39, 'mia101', 'amir99', 'hello & good bye'),
(40, 'mia1011', 'amir99', 'hello & good bye 2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
