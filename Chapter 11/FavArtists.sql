-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 11, 2025 at 07:16 PM
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
-- Table structure for table `Hiphop_Country`
--

CREATE TABLE `Hiphop_Country` (
  `ID` int NOT NULL,
  `Genre Key` int NOT NULL DEFAULT '10',
  `Artists` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Hiphop_Country`
--

INSERT INTO `Hiphop_Country` (`ID`, `Genre Key`, `Artists`) VALUES
(1, 10, 'Jelly Roll'),
(2, 10, 'Beyonce'),
(3, 10, 'Lil Nas X'),
(4, 10, 'Gutter Souls');

-- --------------------------------------------------------

--
-- Table structure for table `Pop_Country`
--

CREATE TABLE `Pop_Country` (
  `ID` int NOT NULL,
  `Genre Key` int NOT NULL DEFAULT '4',
  `Artists` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Pop_Country`
--

INSERT INTO `Pop_Country` (`ID`, `Genre Key`, `Artists`) VALUES
(1, 4, 'Taylor Swift'),
(2, 4, 'Shania Twain'),
(3, 4, 'Luke Bryan'),
(4, 4, 'Jessica Simpson');

-- --------------------------------------------------------

--
-- Table structure for table `Pop_Hiphop`
--

CREATE TABLE `Pop_Hiphop` (
  `ID` int NOT NULL,
  `Genre Key` int NOT NULL DEFAULT '3',
  `Artists` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Pop_Hiphop`
--

INSERT INTO `Pop_Hiphop` (`ID`, `Genre Key`, `Artists`) VALUES
(1, 3, 'Nicki Minaj'),
(2, 3, 'will.i.am'),
(3, 3, 'Macklemore'),
(4, 3, 'the Black Eyed Peas'),
(5, 3, 'Run DMC');

-- --------------------------------------------------------

--
-- Table structure for table `Pop_Punk`
--

CREATE TABLE `Pop_Punk` (
  `ID` int NOT NULL,
  `Genre Key` int NOT NULL DEFAULT '2',
  `Artists` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Pop_Punk`
--

INSERT INTO `Pop_Punk` (`ID`, `Genre Key`, `Artists`) VALUES
(1, 2, 'Fall Out Boy'),
(2, 2, 'All Time Low'),
(3, 2, 'blink-182'),
(4, 2, 'The Offspring'),
(5, 2, 'Paramore');

-- --------------------------------------------------------

--
-- Table structure for table `Pop_Rock`
--

CREATE TABLE `Pop_Rock` (
  `ID` int NOT NULL,
  `Genre Key` int NOT NULL DEFAULT '1',
  `Artists` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Pop_Rock`
--

INSERT INTO `Pop_Rock` (`ID`, `Genre Key`, `Artists`) VALUES
(1, 1, 'Fleetwood Mac'),
(2, 1, 'Elton John'),
(3, 1, 'The Beatles'),
(4, 1, 'Prince'),
(5, 1, 'Queen');

-- --------------------------------------------------------

--
-- Table structure for table `Punk_Country`
--

CREATE TABLE `Punk_Country` (
  `ID` int NOT NULL,
  `Genre Key` int NOT NULL DEFAULT '7',
  `Artists` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Punk_Country`
--

INSERT INTO `Punk_Country` (`ID`, `Genre Key`, `Artists`) VALUES
(1, 7, 'Social Distortion'),
(2, 7, 'The Gun Club'),
(3, 7, 'The Long Ryders'),
(4, 7, 'The Beat Farmers');

-- --------------------------------------------------------

--
-- Table structure for table `Punk_Hiphop`
--

CREATE TABLE `Punk_Hiphop` (
  `ID` int NOT NULL,
  `Genre Key` int NOT NULL DEFAULT '6',
  `Artists` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Punk_Hiphop`
--

INSERT INTO `Punk_Hiphop` (`ID`, `Genre Key`, `Artists`) VALUES
(1, 6, 'Nothing,Nowhere'),
(2, 6, 'Travis Scott'),
(3, 6, 'Public Enemy'),
(4, 6, '6ix9ine');

-- --------------------------------------------------------

--
-- Table structure for table `Punk_Rock`
--

CREATE TABLE `Punk_Rock` (
  `ID` int NOT NULL,
  `Genre Key` int NOT NULL DEFAULT '5',
  `Artists` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Punk_Rock`
--

INSERT INTO `Punk_Rock` (`ID`, `Genre Key`, `Artists`) VALUES
(1, 5, 'Green Day'),
(2, 5, 'Ramones'),
(3, 5, 'The Clash'),
(4, 5, 'Misfits');

-- --------------------------------------------------------

--
-- Table structure for table `Rock_Country`
--

CREATE TABLE `Rock_Country` (
  `ID` int NOT NULL,
  `Genre Key` int NOT NULL DEFAULT '9',
  `Artists` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Rock_Country`
--

INSERT INTO `Rock_Country` (`ID`, `Genre Key`, `Artists`) VALUES
(1, 9, 'Alabama'),
(2, 9, 'The Chicks'),
(3, 9, 'Eagles'),
(4, 9, 'The Grateful Dead');

-- --------------------------------------------------------

--
-- Table structure for table `Rock_Hiphop`
--

CREATE TABLE `Rock_Hiphop` (
  `ID` int NOT NULL,
  `Genre Key` int NOT NULL DEFAULT '8',
  `Artists` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Rock_Hiphop`
--

INSERT INTO `Rock_Hiphop` (`ID`, `Genre Key`, `Artists`) VALUES
(1, 8, 'The Beastie Boys'),
(2, 8, 'Limp Bizkit'),
(3, 8, 'Gorillaz'),
(4, 8, 'Insane Clown Posse');

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `UserID` int NOT NULL,
  `Name` char(50) NOT NULL,
  `Email` char(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`UserID`, `Name`, `Email`) VALUES
(1, 'Hannah Thacker', 'hannahmthacker@gmail.com'),
(2, 'Jason Crey', 'Jcrey@gmail.com'),
(3, 'Katie Prohaska', 'KP@gmail.com'),
(4, 'Lindsey Todem', 'todem@gmail.com'),
(5, 'Kyle Brown', 'brown123@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `User_Fav_Artists`
--

CREATE TABLE `User_Fav_Artists` (
  `UserID` int NOT NULL,
  `Genre Key` int NOT NULL,
  `Artists` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `User_Fav_Artists`
--

INSERT INTO `User_Fav_Artists` (`UserID`, `Genre Key`, `Artists`) VALUES
(1, 5, 'Fall Out Boy'),
(1, 7, 'The Chicks'),
(2, 3, 'Orville Peck'),
(2, 4, 'Travis Scott'),
(2, 6, 'Insane Clown Posse'),
(3, 5, 'My Chemical Romance'),
(4, 1, 'David Bowe'),
(4, 5, 'Green Day'),
(5, 1, 'Taylor Swift');

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
-- Dumping data for table `User_Feedback`
--

INSERT INTO `User_Feedback` (`ID`, `UserID`, `Feedback`) VALUES
(1, 3, 'I love everything about this website!'),
(2, 1, 'YOU SUCK!!!'),
(3, 5, 'I wish there were more genres to choose from.'),
(4, 1, 'JK your website doesn\'t suck.'),
(5, 2, 'There should be way more artist examples for each fusion genre.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Genres`
--
ALTER TABLE `Genres`
  ADD PRIMARY KEY (`Genre Key`);

--
-- Indexes for table `Hiphop_Country`
--
ALTER TABLE `Hiphop_Country`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Genre Key` (`Genre Key`);

--
-- Indexes for table `Pop_Country`
--
ALTER TABLE `Pop_Country`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Genre Key` (`Genre Key`);

--
-- Indexes for table `Pop_Hiphop`
--
ALTER TABLE `Pop_Hiphop`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Genre Key` (`Genre Key`);

--
-- Indexes for table `Pop_Punk`
--
ALTER TABLE `Pop_Punk`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Genre Key` (`Genre Key`);

--
-- Indexes for table `Pop_Rock`
--
ALTER TABLE `Pop_Rock`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Genre Key` (`Genre Key`);

--
-- Indexes for table `Punk_Country`
--
ALTER TABLE `Punk_Country`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Genre Key` (`Genre Key`);

--
-- Indexes for table `Punk_Hiphop`
--
ALTER TABLE `Punk_Hiphop`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Genre Key` (`Genre Key`);

--
-- Indexes for table `Punk_Rock`
--
ALTER TABLE `Punk_Rock`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Genre Key` (`Genre Key`);

--
-- Indexes for table `Rock_Country`
--
ALTER TABLE `Rock_Country`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Genre Key` (`Genre Key`);

--
-- Indexes for table `Rock_Hiphop`
--
ALTER TABLE `Rock_Hiphop`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Genre Key` (`Genre Key`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `User_Fav_Artists`
--
ALTER TABLE `User_Fav_Artists`
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
-- AUTO_INCREMENT for table `Hiphop_Country`
--
ALTER TABLE `Hiphop_Country`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Pop_Country`
--
ALTER TABLE `Pop_Country`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Pop_Hiphop`
--
ALTER TABLE `Pop_Hiphop`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Pop_Punk`
--
ALTER TABLE `Pop_Punk`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Pop_Rock`
--
ALTER TABLE `Pop_Rock`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Punk_Country`
--
ALTER TABLE `Punk_Country`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Punk_Hiphop`
--
ALTER TABLE `Punk_Hiphop`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Punk_Rock`
--
ALTER TABLE `Punk_Rock`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Rock_Country`
--
ALTER TABLE `Rock_Country`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Rock_Hiphop`
--
ALTER TABLE `Rock_Hiphop`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `UserID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `User_Feedback`
--
ALTER TABLE `User_Feedback`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Hiphop_Country`
--
ALTER TABLE `Hiphop_Country`
  ADD CONSTRAINT `hiphop_country_ibfk_1` FOREIGN KEY (`Genre Key`) REFERENCES `Genres` (`Genre Key`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `Pop_Country`
--
ALTER TABLE `Pop_Country`
  ADD CONSTRAINT `pop_country_ibfk_1` FOREIGN KEY (`Genre Key`) REFERENCES `Genres` (`Genre Key`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `Pop_Hiphop`
--
ALTER TABLE `Pop_Hiphop`
  ADD CONSTRAINT `pop_hiphop_ibfk_1` FOREIGN KEY (`Genre Key`) REFERENCES `Genres` (`Genre Key`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `Pop_Punk`
--
ALTER TABLE `Pop_Punk`
  ADD CONSTRAINT `pop_punk_ibfk_1` FOREIGN KEY (`Genre Key`) REFERENCES `Genres` (`Genre Key`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `Pop_Rock`
--
ALTER TABLE `Pop_Rock`
  ADD CONSTRAINT `pop_rock_ibfk_1` FOREIGN KEY (`Genre Key`) REFERENCES `Genres` (`Genre Key`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `Punk_Country`
--
ALTER TABLE `Punk_Country`
  ADD CONSTRAINT `punk_country_ibfk_1` FOREIGN KEY (`Genre Key`) REFERENCES `Genres` (`Genre Key`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `Punk_Hiphop`
--
ALTER TABLE `Punk_Hiphop`
  ADD CONSTRAINT `punk_hiphop_ibfk_1` FOREIGN KEY (`Genre Key`) REFERENCES `Genres` (`Genre Key`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `Punk_Rock`
--
ALTER TABLE `Punk_Rock`
  ADD CONSTRAINT `punk_rock_ibfk_1` FOREIGN KEY (`Genre Key`) REFERENCES `Genres` (`Genre Key`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `Rock_Country`
--
ALTER TABLE `Rock_Country`
  ADD CONSTRAINT `rock_country_ibfk_1` FOREIGN KEY (`Genre Key`) REFERENCES `Genres` (`Genre Key`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `Rock_Hiphop`
--
ALTER TABLE `Rock_Hiphop`
  ADD CONSTRAINT `rock_hiphop_ibfk_1` FOREIGN KEY (`Genre Key`) REFERENCES `Genres` (`Genre Key`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `User_Fav_Artists`
--
ALTER TABLE `User_Fav_Artists`
  ADD CONSTRAINT `user_fav_artists_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `User` (`UserID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `user_fav_artists_ibfk_2` FOREIGN KEY (`Genre Key`) REFERENCES `Genres` (`Genre Key`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `User_Feedback`
--
ALTER TABLE `User_Feedback`
  ADD CONSTRAINT `user_feedback_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `User` (`UserID`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
