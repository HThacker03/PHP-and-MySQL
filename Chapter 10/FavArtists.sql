-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 02, 2025 at 08:55 PM
-- Server version: 8.0.40
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `FavArtists`
--

-- --------------------------------------------------------

--
-- Table structure for table `Genres`
--

CREATE TABLE `Genres` (
  `Genre Key` int NOT NULL,
  `Genre` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Genres`
--

INSERT INTO `Genres` (`Genre Key`, `Genre`) VALUES
(1, 'Pop Rock'),
(2, 'Pop Punk'),
(3, 'Pop Hip-hop'),
(4, 'Pop Country'),
(5, 'Punk Rock'),
(6, 'Punk Hip-hop'),
(7, 'Punk Country'),
(8, 'Rock Hip-hop'),
(9, 'Rock Country'),
(10, 'Hip-hop Country');

-- --------------------------------------------------------

--
-- Table structure for table `Pop Hip-hop`
--

CREATE TABLE `Pop Hip-hop` (
  `ID` int NOT NULL,
  `Genre Key` int NOT NULL DEFAULT '3',
  `Artists` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Pop Hip-hop`
--

INSERT INTO `Pop Hip-hop` (`ID`, `Genre Key`, `Artists`) VALUES
(1, 3, 'Nicki Minaj'),
(2, 3, 'will.i.am'),
(3, 3, 'Macklemore'),
(4, 3, 'the Black Eyed Peas'),
(5, 3, 'Run DMC');

-- --------------------------------------------------------

--
-- Table structure for table `Pop Punk`
--

CREATE TABLE `Pop Punk` (
  `ID` int NOT NULL,
  `Genre Key` int NOT NULL DEFAULT '2',
  `Artists` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Pop Punk`
--

INSERT INTO `Pop Punk` (`ID`, `Genre Key`, `Artists`) VALUES
(1, 2, 'Fall Out Boy'),
(2, 2, 'All Time Low'),
(3, 2, 'blink-182'),
(4, 2, 'The Offspring'),
(5, 2, 'Paramore');

-- --------------------------------------------------------

--
-- Table structure for table `Pop Rock`
--

CREATE TABLE `Pop Rock` (
  `ID` int NOT NULL,
  `Genre Key` int NOT NULL DEFAULT '1',
  `Artists` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Pop Rock`
--

INSERT INTO `Pop Rock` (`ID`, `Genre Key`, `Artists`) VALUES
(1, 1, 'Fleetwood Mac'),
(2, 1, 'Elton John'),
(3, 1, 'The Beatles'),
(4, 1, 'Prince'),
(5, 1, 'Queen');

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `UserID` int NOT NULL,
  `Name` char(50) NOT NULL,
  `Email` char(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `User Fav Artists`
--

CREATE TABLE `User Fav Artists` (
  `UserID` int NOT NULL,
  `Genre Key` int NOT NULL,
  `Artists` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `User_Feedback`
--

CREATE TABLE `User_Feedback` (
  `ID` int NOT NULL,
  `UserID` int NOT NULL,
  `Feedback` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Genres`
--
ALTER TABLE `Genres`
  ADD PRIMARY KEY (`Genre Key`);

--
-- Indexes for table `Pop Hip-hop`
--
ALTER TABLE `Pop Hip-hop`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Genre Key` (`Genre Key`);

--
-- Indexes for table `Pop Punk`
--
ALTER TABLE `Pop Punk`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Genre Key` (`Genre Key`);

--
-- Indexes for table `Pop Rock`
--
ALTER TABLE `Pop Rock`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Genre Key` (`Genre Key`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `User Fav Artists`
--
ALTER TABLE `User Fav Artists`
  ADD PRIMARY KEY (`UserID`,`Genre Key`),
  ADD KEY `Genre Key` (`Genre Key`);

--
-- Indexes for table `User_Feedback`
--
ALTER TABLE `User_Feedback`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserID` (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Genres`
--
ALTER TABLE `Genres`
  MODIFY `Genre Key` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `Pop Hip-hop`
--
ALTER TABLE `Pop Hip-hop`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Pop Punk`
--
ALTER TABLE `Pop Punk`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Pop Rock`
--
ALTER TABLE `Pop Rock`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `UserID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `User_Feedback`
--
ALTER TABLE `User_Feedback`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Pop Hip-hop`
--
ALTER TABLE `Pop Hip-hop`
  ADD CONSTRAINT `pop hip-hop_ibfk_1` FOREIGN KEY (`Genre Key`) REFERENCES `Genres` (`Genre Key`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `Pop Punk`
--
ALTER TABLE `Pop Punk`
  ADD CONSTRAINT `pop punk_ibfk_1` FOREIGN KEY (`Genre Key`) REFERENCES `Genres` (`Genre Key`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `Pop Rock`
--
ALTER TABLE `Pop Rock`
  ADD CONSTRAINT `pop rock_ibfk_1` FOREIGN KEY (`Genre Key`) REFERENCES `Genres` (`Genre Key`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `User Fav Artists`
--
ALTER TABLE `User Fav Artists`
  ADD CONSTRAINT `user fav artists_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `User` (`UserID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `user fav artists_ibfk_2` FOREIGN KEY (`Genre Key`) REFERENCES `Genres` (`Genre Key`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `User_Feedback`
--
ALTER TABLE `User_Feedback`
  ADD CONSTRAINT `user_feedback_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `User` (`UserID`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
