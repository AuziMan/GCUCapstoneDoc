-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 22, 2021 at 03:33 AM
-- Server version: 5.7.32
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `JoinGymDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `gyms`
--

CREATE TABLE `gyms` (
  `gymID` int(11) NOT NULL,
  `address` int(30) NOT NULL,
  `open` tinyint(1) NOT NULL,
  `memberCount` int(50) NOT NULL,
  `name` varchar(25) NOT NULL,
  `hoursOpen` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gymUserInfo`
--

CREATE TABLE `gymUserInfo` (
  `userID` bigint(20) NOT NULL,
  `UserInfoID` int(11) NOT NULL,
  `gymGoals` varchar(255) NOT NULL,
  `gymExperience` varchar(50) NOT NULL,
  `gymPref` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `moreinfo`
--

CREATE TABLE `moreinfo` (
  `userID` bigint(20) NOT NULL,
  `age` int(50) NOT NULL,
  `gender` text NOT NULL,
  `phonenumber` int(15) NOT NULL,
  `address` varchar(30) NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gyms`
--
ALTER TABLE `gyms`
  ADD PRIMARY KEY (`gymID`);

--
-- Indexes for table `gymUserInfo`
--
ALTER TABLE `gymUserInfo`
  ADD PRIMARY KEY (`UserInfoID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `moreinfo`
--
ALTER TABLE `moreinfo`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gyms`
--
ALTER TABLE `gyms`
  MODIFY `gymID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gymUserInfo`
--
ALTER TABLE `gymUserInfo`
  MODIFY `UserInfoID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `moreinfo`
--
ALTER TABLE `moreinfo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gymUserInfo`
--
ALTER TABLE `gymUserInfo`
  ADD CONSTRAINT `gymuserinfo_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `Users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Users`
--
ALTER TABLE `Users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id`) REFERENCES `moreinfo` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
