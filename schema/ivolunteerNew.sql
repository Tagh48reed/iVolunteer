-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2017 at 01:01 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ivolunteer`
--

-- --------------------------------------------------------

--
-- Table structure for table `connection`
--

CREATE TABLE `connection` (
  `Vol_ID` int(11) NOT NULL,
  `Org_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

CREATE TABLE `organization` (
  `Org_ID` int(11) NOT NULL,
  `UsernameOrg` text NOT NULL,
  `NameOrg` text NOT NULL,
  `EmailOrg` text NOT NULL,
  `PasswordOrg` text NOT NULL,
  `Field` text NOT NULL,
  `Location` text NOT NULL,
  `AvatarOrg` blob NOT NULL,
  `BioOrg` text NOT NULL,
  `ExperienceOrg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `Request_ID` int(11) NOT NULL,
  `Vol_ID` int(11) NOT NULL,
  `Org_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `volunteer`
--

CREATE TABLE `volunteer` (
  `Vol_ID` int(11) NOT NULL,
  `Username` text NOT NULL,
  `Name` text NOT NULL,
  `Email` text NOT NULL,
  `Password` text NOT NULL,
  `Skill` text NOT NULL,
  `Sex` text NOT NULL,
  `Location` text NOT NULL,
  `Avatar` blob NOT NULL,
  `Bio` text NOT NULL,
  `Experience` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `volunteer`
--

INSERT INTO `volunteer` (`Vol_ID`, `Username`, `Name`, `Email`, `Password`, `Skill`, `Sex`, `Location`, `Avatar`, `Bio`, `Experience`) VALUES
(1, 'Tagh48reed', 'Taghreed AlShenqiti', 'Taghreed.48@outlook.com', '1234567', 'Designer', 'Female', 'Saudi Arabia', '', 'My name is Taghreed , I''m a designer!', '3 years Experiance');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `connection`
--
ALTER TABLE `connection`
  ADD KEY `Vol_ID` (`Vol_ID`,`Org_ID`),
  ADD KEY `Org_ID` (`Org_ID`);

--
-- Indexes for table `organization`
--
ALTER TABLE `organization`
  ADD PRIMARY KEY (`Org_ID`),
  ADD UNIQUE KEY `UsernameOrg` (`UsernameOrg`(20)),
  ADD UNIQUE KEY `EmailOrg` (`EmailOrg`(20));

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`Request_ID`),
  ADD KEY `Vol_ID` (`Vol_ID`,`Org_ID`),
  ADD KEY `Org_ID` (`Org_ID`);

--
-- Indexes for table `volunteer`
--
ALTER TABLE `volunteer`
  ADD PRIMARY KEY (`Vol_ID`),
  ADD UNIQUE KEY `Email` (`Email`(50)),
  ADD UNIQUE KEY `Username` (`Username`(20));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `organization`
--
ALTER TABLE `organization`
  MODIFY `Org_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `volunteer`
--
ALTER TABLE `volunteer`
  MODIFY `Vol_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
