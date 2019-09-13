-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 10, 2019 at 05:58 AM
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
-- Database: `REGISTRY_ADMIN`
--

-- --------------------------------------------------------

--
-- Table structure for table `REGISTRY`
--

CREATE TABLE `REGISTRY` (
  `RID` varchar(6) NOT NULL,
  `RegistryName` varchar(50) NOT NULL,
  `Region` varchar(10) NOT NULL,
  `Division` varchar(20) NOT NULL,
  `SubDivision` varchar(20) NOT NULL,
  `Password` varchar(16) NOT NULL,
  `Tel` int(15) NOT NULL,
  `Email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `REGISTRY`
--

INSERT INTO `REGISTRY` (`RID`, `RegistryName`, `Region`, `Division`, `SubDivision`, `Password`, `Tel`, `Email`) VALUES
('BUEASW', 'BUEA REGISTRY', 'SOUTH WEST', 'FAKO', 'BUEA', '36996300jr', 678289617, 'jstar.divinio@gmail.com'),
('KUMBSW', 'KUMBA REGISTRY', 'SOUTH WEST', 'MEME', 'KUMBA', '36996300ku', 691486443, 'theemail@gmail.com\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `REGISTRY`
--
ALTER TABLE `REGISTRY`
  ADD PRIMARY KEY (`RID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
