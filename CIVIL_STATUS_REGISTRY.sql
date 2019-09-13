-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 10, 2019 at 03:58 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `CIVIL_STATUS_REGISTRY`
--

-- --------------------------------------------------------

--
-- Table structure for table `BIRTH_CERTIFICATE`
--

CREATE TABLE `BIRTH_CERTIFICATE` (
  `BCNumber` int(11) NOT NULL,
  `BCID` varchar(7) NOT NULL,
  `CName` varchar(100) NOT NULL,
  `CDOB` date NOT NULL,
  `CSex` varchar(6) NOT NULL,
  `CPOB` varchar(50) NOT NULL,
  `IDate` date NOT NULL,
  `RCenterID` varchar(100) NOT NULL,
  `Registrar_Name` varchar(100) NOT NULL,
  `DecID` varchar(7) NOT NULL,
  `DCenterID` varchar(100) NOT NULL,
  `DeclarerName` varchar(100) NOT NULL,
  `DeclarerPost` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BIRTH_CERTIFICATE`
--

INSERT INTO `BIRTH_CERTIFICATE` (`BCNumber`, `BCID`, `CName`, `CDOB`, `CSex`, `CPOB`, `IDate`, `RCenterID`, `Registrar_Name`, `DecID`, `DCenterID`, `DeclarerName`, `DeclarerPost`) VALUES
(6, '1/19', 'Tchokokam Larissa keysha', '2019-08-21', 'Male', 'Buea', '2019-08-22', 'BUEA', 'John John', '453/97', 'General hostpital Buea', 'Dogmo Petter', 'Medical Doctor'),
(7, '2/19', 'Ekambi johnson', '2019-08-20', 'Male', 'Buea', '2019-08-12', 'BUEA', 'John Doe', '22/18', 'General hostpital Buea', 'JOhn Ngu', 'Doctor');

-- --------------------------------------------------------

--
-- Table structure for table `BIRTH_FILES`
--

CREATE TABLE `BIRTH_FILES` (
  `FNum` int(11) NOT NULL,
  `CNumber` int(11) NOT NULL,
  `File` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BIRTH_STATS`
--

CREATE TABLE `BIRTH_STATS` (
  `Year` int(4) NOT NULL,
  `BirthCount` int(11) NOT NULL,
  `Boys` int(11) NOT NULL,
  `Girls` int(11) NOT NULL,
  `PercentageIncrease` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BIRTH_STATS`
--

INSERT INTO `BIRTH_STATS` (`Year`, `BirthCount`, `Boys`, `Girls`, `PercentageIncrease`) VALUES
(2018, 5, 2, 3, 60),
(2019, 2, 2, 0, -60);

-- --------------------------------------------------------

--
-- Table structure for table `JOBREQUEST`
--

CREATE TABLE `JOBREQUEST` (
  `RID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `IDCardNumber` int(10) NOT NULL,
  `JobType` varchar(20) NOT NULL,
  `JobName` varchar(50) NOT NULL,
  `CertificateID` varchar(8) DEFAULT NULL,
  `Fees` int(5) NOT NULL,
  `DatePosted` datetime NOT NULL,
  `Phone` int(15) NOT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `RCenterID` varchar(50) NOT NULL,
  `Status` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `JOBREQUEST`
--

INSERT INTO `JOBREQUEST` (`RID`, `Name`, `IDCardNumber`, `JobType`, `JobName`, `CertificateID`, `Fees`, `DatePosted`, `Phone`, `Email`, `RCenterID`, `Status`) VALUES
(1, 'Chinda Jordan', 100005587, 'Marriage Certificate', 'Check Genuinity', '234/19', 5000, '2019-08-15 08:21:37', 678289617, 'jstar.divinio@gmail.com', 'Buea', 'Undone'),
(2, 'Chinda Jordan', 100005587, 'Marriage Certificate', 'Apply', '', 5000, '2019-08-15 10:17:44', 678289617, 'jstar.divinio@gmail.com', 'Buea', 'Undone');

-- --------------------------------------------------------

--
-- Table structure for table `Marriage_Certificate`
--

CREATE TABLE `Marriage_Certificate` (
  `Mar_id` int(11) NOT NULL,
  `Pub_id` varchar(50) NOT NULL,
  `BgName` varchar(50) DEFAULT NULL,
  `BgAge` int(11) DEFAULT NULL,
  `BgFName` varchar(50) DEFAULT NULL,
  `BgMName` varchar(50) DEFAULT NULL,
  `BgOcc` varchar(50) DEFAULT NULL,
  `BgDOB` date DEFAULT NULL,
  `BgPOB` varchar(50) DEFAULT NULL,
  `BgRes` varchar(50) DEFAULT NULL,
  `BrName` varchar(50) DEFAULT NULL,
  `BrAge` int(11) DEFAULT NULL,
  `BrFName` varchar(50) DEFAULT NULL,
  `BrMName` varchar(50) DEFAULT NULL,
  `BrOcc` varchar(50) DEFAULT NULL,
  `BrDOB` date DEFAULT NULL,
  `BrPOB` varchar(50) DEFAULT NULL,
  `BrRes` varchar(50) DEFAULT NULL,
  `Mar_type` varchar(50) DEFAULT NULL,
  `Prop_type` varchar(50) DEFAULT NULL,
  `Reg_Cen` varchar(50) DEFAULT NULL,
  `Registrar` varchar(50) DEFAULT NULL,
  `DateIssued` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Marriage_Certificate`
--

INSERT INTO `Marriage_Certificate` (`Mar_id`, `Pub_id`, `BgName`, `BgAge`, `BgFName`, `BgMName`, `BgOcc`, `BgDOB`, `BgPOB`, `BgRes`, `BrName`, `BrAge`, `BrFName`, `BrMName`, `BrOcc`, `BrDOB`, `BrPOB`, `BrRes`, `Mar_type`, `Prop_type`, `Reg_Cen`, `Registrar`, `DateIssued`) VALUES
(6, '567/19', 'Fongang Kevin', 25, 'gfname', 'Fongang Mireille', 'Footballer', '2019-08-07', 'Maroua', 'Buea', 'Noumessi Ange', 20, 'Noumessi Prosper', 'Noumessi Regina', 'Student', '2019-07-31', 'Yaounde', 'Buea', 'Monogamy', 'Seperate Property', 'BUEA', 'John Doe', '2019-08-15');

-- --------------------------------------------------------

--
-- Table structure for table `Marriage_Files`
--

CREATE TABLE `Marriage_Files` (
  `MF_id` int(11) NOT NULL,
  `Mar_id` int(11) NOT NULL,
  `Photocopy` varchar(150) DEFAULT NULL,
  `Pub_pic` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `MARRIAGE_STATS`
--

CREATE TABLE `MARRIAGE_STATS` (
  `Year` int(11) NOT NULL,
  `MarriageCount` int(11) NOT NULL,
  `Monogamy` int(11) NOT NULL,
  `Polygamy` int(11) NOT NULL,
  `PercentageIncrease` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `MARRIAGE_STATS`
--

INSERT INTO `MARRIAGE_STATS` (`Year`, `MarriageCount`, `Monogamy`, `Polygamy`, `PercentageIncrease`) VALUES
(2018, 5, 4, 1, 45),
(2019, 1, 1, 0, -80);

-- --------------------------------------------------------

--
-- Table structure for table `PARENTS`
--

CREATE TABLE `PARENTS` (
  `PID` int(21) NOT NULL,
  `BNumber` varchar(11) NOT NULL,
  `FName` varchar(100) DEFAULT NULL,
  `FPOB` varchar(50) DEFAULT NULL,
  `FDOB` date DEFAULT NULL,
  `FLocation` varchar(50) DEFAULT NULL,
  `FOccupation` varchar(50) DEFAULT NULL,
  `MName` varchar(100) NOT NULL,
  `MPOB` varchar(50) NOT NULL,
  `MDOB` date NOT NULL,
  `MLocation` varchar(50) NOT NULL,
  `MOccupation` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PARENTS`
--

INSERT INTO `PARENTS` (`PID`, `BNumber`, `FName`, `FPOB`, `FDOB`, `FLocation`, `FOccupation`, `MName`, `MPOB`, `MDOB`, `MLocation`, `MOccupation`) VALUES
(2, '6', 'Tchokokam Henry', 'Bafoussam', '2019-08-21', 'Buea', 'Farmer', 'Tchokokam Ruth', 'Garoua', '2019-08-26', 'Buea', 'Teacher'),
(3, '7', 'Ekambi Peter', 'Mankon', '2019-08-20', 'Buea', 'Farmer', 'Ekambi Elisa', 'Douala', '2019-08-19', 'Buea', 'Police officer');

-- --------------------------------------------------------

--
-- Table structure for table `Witness`
--

CREATE TABLE `Witness` (
  `W_id` int(11) NOT NULL,
  `Mar_id` int(11) NOT NULL,
  `BgWitness1` varchar(50) DEFAULT NULL,
  `BgWitness2` varchar(50) DEFAULT NULL,
  `BrWitness1` varchar(50) DEFAULT NULL,
  `BrWitness2` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Witness`
--

INSERT INTO `Witness` (`W_id`, `Mar_id`, `BgWitness1`, `BgWitness2`, `BrWitness1`, `BrWitness2`) VALUES
(5, 6, 'John Camer', 'Etalo city', 'Hayaba Hotel', 'Naira');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `BIRTH_CERTIFICATE`
--
ALTER TABLE `BIRTH_CERTIFICATE`
  ADD PRIMARY KEY (`BCNumber`);

--
-- Indexes for table `BIRTH_FILES`
--
ALTER TABLE `BIRTH_FILES`
  ADD PRIMARY KEY (`FNum`),
  ADD KEY `BIRTH_CERTIFICATE.BCNumber` (`CNumber`);

--
-- Indexes for table `BIRTH_STATS`
--
ALTER TABLE `BIRTH_STATS`
  ADD PRIMARY KEY (`Year`);

--
-- Indexes for table `JOBREQUEST`
--
ALTER TABLE `JOBREQUEST`
  ADD PRIMARY KEY (`RID`);

--
-- Indexes for table `Marriage_Certificate`
--
ALTER TABLE `Marriage_Certificate`
  ADD PRIMARY KEY (`Mar_id`,`Pub_id`);

--
-- Indexes for table `Marriage_Files`
--
ALTER TABLE `Marriage_Files`
  ADD PRIMARY KEY (`MF_id`,`Mar_id`),
  ADD KEY `Mar_id` (`Mar_id`);

--
-- Indexes for table `MARRIAGE_STATS`
--
ALTER TABLE `MARRIAGE_STATS`
  ADD PRIMARY KEY (`Year`);

--
-- Indexes for table `PARENTS`
--
ALTER TABLE `PARENTS`
  ADD PRIMARY KEY (`PID`,`BNumber`),
  ADD KEY `BIRTH_CERTIFICATE.BCNumber` (`BNumber`);

--
-- Indexes for table `Witness`
--
ALTER TABLE `Witness`
  ADD PRIMARY KEY (`W_id`,`Mar_id`),
  ADD KEY `Mar_id` (`Mar_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `BIRTH_CERTIFICATE`
--
ALTER TABLE `BIRTH_CERTIFICATE`
  MODIFY `BCNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `BIRTH_FILES`
--
ALTER TABLE `BIRTH_FILES`
  MODIFY `FNum` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `JOBREQUEST`
--
ALTER TABLE `JOBREQUEST`
  MODIFY `RID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Marriage_Certificate`
--
ALTER TABLE `Marriage_Certificate`
  MODIFY `Mar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Marriage_Files`
--
ALTER TABLE `Marriage_Files`
  MODIFY `MF_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PARENTS`
--
ALTER TABLE `PARENTS`
  MODIFY `PID` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Witness`
--
ALTER TABLE `Witness`
  MODIFY `W_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
