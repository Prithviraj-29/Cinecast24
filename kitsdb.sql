-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2023 at 02:43 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kitsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `jobapplication`
--

CREATE TABLE `jobapplication` (
  `applicationid` int(5) NOT NULL,
  `jobid` int(5) NOT NULL,
  `userid` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobapplication`
--

INSERT INTO `jobapplication` (`applicationid`, `jobid`, `userid`) VALUES
(12, 12, 41);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `jobid` int(5) NOT NULL,
  `jobtitle` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`jobid`, `jobtitle`, `description`, `userid`) VALUES
(11, 'Dubbing Work', 'I need someone who can dub Telugu content into Hindi. You must be fluent in Telugu as well as Hindi. ', 39),
(12, 'Make Up', 'Need a Person who can work like my assistant with a good skill of makeup, and having good communication skills.', 36),
(13, 'Stunt Artist', 'You must be physical fit for this work, being able to rock climb, skydive and etc. ', 37),
(14, 'GFX Artist', 'I am a professional GFX/VFX artist, I need someone to handle my little work. You must be a good GFX designer with good colors knowledge.', 38);

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE `userdetails` (
  `userid` int(5) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phn` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `profession` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userdetails`
--

INSERT INTO `userdetails` (`userid`, `fname`, `lname`, `email`, `phn`, `password`, `gender`, `profession`) VALUES
(36, 'HASINI', 'DEVUNOORI', 'hasini@gmail.com', '8546975246', 'hasini123', 'off', 'Makeup'),
(37, 'Krishna', 'Tejaa', 'krishna@gmail.com', '7785455624', 'krishna123', 'on', 'Stunt Direction'),
(38, 'Rohith', 'rendla', 'rohith@gmail.com', '9985762181', 'rohith123', 'on', 'Editing'),
(39, 'Prithviraj', 'Kakatkar', 'prithvirajkakatkar4@gmail.com', '9880778754', 'prithvi123', 'on', 'Dubbing Artist'),
(40, 'Maruthi', 'Dukrei', 'maru@gmail.com', '8854679255', 'maruthi123', 'on', 'Dubbing Artist'),
(41, 'Akhila', 'Kumari', 'akhila@gmail.com', '8945628557', 'akhila123', 'off', 'Makeup'),
(42, 'Sathwik', 'Vattam', 'sathwik@gmail.com', '0548793625', 'sathwik123', 'on', 'Cast'),
(43, 'Sathwik', 'Vattam', 'sathwik@gmail.com', '5487936252', 'sathwik123', 'on', 'AudioGraphy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jobapplication`
--
ALTER TABLE `jobapplication`
  ADD PRIMARY KEY (`applicationid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`jobid`);

--
-- Indexes for table `userdetails`
--
ALTER TABLE `userdetails`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jobapplication`
--
ALTER TABLE `jobapplication`
  MODIFY `applicationid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `jobid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `userdetails`
--
ALTER TABLE `userdetails`
  MODIFY `userid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
