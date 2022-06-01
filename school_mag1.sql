CREATE DATABASE school_mag1;
USE school_mag1;
-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2022 at 06:36 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school.mag1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` varchar(20) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `Name`, `Password`) VALUES
('1', 'Jeff Nun', '12345'),
('2', 'Clark Wealth', '98765'),
('3', 'Success Nfon', '456789');

-- --------------------------------------------------------

--
-- Table structure for table `basic_tech_cycle`
--

CREATE TABLE `basic_tech_cycle` (
  `ordinary_level_pass` varchar(6) NOT NULL,
  `pass_equivalent` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `Std_ID` int(20) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `cycle` varchar(50) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `ENGLISH` varchar(20) NOT NULL,
  `FRENCH` varchar(20) NOT NULL,
  `MATHS` varchar(20) NOT NULL,
  `PHYSICS` varchar(20) NOT NULL,
  `CVE` varchar(20) NOT NULL,
  `GEOGRAPHY` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cycle`
--

CREATE TABLE `cycle` (
  `Cycle_ID` varchar(20) NOT NULL,
  `CycleNAME` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `Dept_ID` varchar(20) NOT NULL,
  `DeptName` varchar(20) NOT NULL,
  `Cycle_ID` varchar(20) NOT NULL,
  `Sch_ID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `higher_technical_cycle`
--

CREATE TABLE `higher_technical_cycle` (
  `Advance_level_pass` varchar(6) NOT NULL,
  `pass_physics` varchar(6) NOT NULL,
  `pass_chem` varchar(6) NOT NULL,
  `pass_math` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `Inst_ID` int(20) NOT NULL,
  `InstName` varchar(20) NOT NULL,
  `InstEMAIL` varchar(60) NOT NULL,
  `SubjectAssigned` varchar(50) NOT NULL,
  `Cycle` varchar(50) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `Qualification` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`Inst_ID`, `InstName`, `InstEMAIL`, `SubjectAssigned`, `Cycle`, `Department`, `Qualification`) VALUES
(1, 'James Stuttgart', 'jamesstuttgart', 'Physics', 'Higher Technical', 'Rural Engineering', 'PHD'),
(2, 'Valery', 'valery@gmail.com', 'Physics', 'Higher Technical cycle', 'Rural engineering', 'Phd');

-- --------------------------------------------------------

--
-- Table structure for table `list`
--

CREATE TABLE `list` (
  `number_registered_student` varchar(20) NOT NULL,
  `student_class` varchar(20) NOT NULL,
  `female_std_dep` varchar(20) NOT NULL,
  `male_std_dep` varchar(20) NOT NULL,
  `student_per_cycle` varchar(20) NOT NULL,
  `student_per_dep` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ordinary_technical_cycle`
--

CREATE TABLE `ordinary_technical_cycle` (
  `Advance_level_pass` varchar(6) NOT NULL,
  `pass_physics` varchar(6) NOT NULL,
  `pass_chem` varchar(6) NOT NULL,
  `pass_math` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `ID` int(11) NOT NULL,
  `Std_ID` varchar(50) NOT NULL,
  `StdSurname` varchar(50) NOT NULL,
  `Lastname` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `Fathersname` varchar(50) NOT NULL,
  `Mothersname` varchar(50) NOT NULL,
  `Dateofbirth` varchar(50) NOT NULL,
  `Nationality` varchar(50) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `password` varchar(15) NOT NULL,
  `Gender` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`ID`, `Std_ID`, `StdSurname`, `Lastname`, `username`, `Fathersname`, `Mothersname`, `Dateofbirth`, `Nationality`, `Phone`, `City`, `Email`, `password`, `Gender`) VALUES
(1, '1', 'Peter', 'hdhdhdd', 'Peter Andrew', 'Paul Andrew', 'Sara Andrew', '09-09-2000', 'Cameroon', '+7866838838', 'Buea', 'peterandrew@gmail.com', '12345', 'Male'),
(2, 'FE20A044', 'JOY', 'RYANE', 'GAMUAH', 'GER', 'SER', '09/09/2000', 'Cameroon', '678903245', 'BUEA', 'gamuahryane@gmail.com', 'padjinou', 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `Std_ID` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `Maths` int(30) NOT NULL,
  `Physics` int(30) NOT NULL,
  `English` int(30) NOT NULL,
  `French` int(30) NOT NULL,
  `CVE` int(30) NOT NULL,
  `Geography` int(30) NOT NULL,
  `Grade` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`Std_ID`, `username`, `Maths`, `Physics`, `English`, `French`, `CVE`, `Geography`, `Grade`) VALUES
('1', 'Mary watson', 60, 70, 80, 58, 100, 75, 'A'),
('2', 'Peter Parker', 90, 80, 60, 50, 100, 78, 'A'),
('1', 'Peter parker', 60, 80, 80, 40, 60, 70, 'B');

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `Sch_ID` varchar(20) NOT NULL,
  `SchName` varchar(30) NOT NULL,
  `SchEmail` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cycle`
--
ALTER TABLE `cycle`
  ADD PRIMARY KEY (`Cycle_ID`),
  ADD KEY `Cycle_ID` (`Cycle_ID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`Dept_ID`),
  ADD UNIQUE KEY `Cycle_ID` (`Cycle_ID`),
  ADD UNIQUE KEY `Dept_ID` (`Dept_ID`),
  ADD KEY `Sch_ID` (`Sch_ID`),
  ADD KEY `Cycle_ID_2` (`Cycle_ID`),
  ADD KEY `Sch_ID_2` (`Sch_ID`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `password` (`password`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `password_2` (`password`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`Sch_ID`),
  ADD KEY `Sch_ID` (`Sch_ID`),
  ADD KEY `Sch_ID_2` (`Sch_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`Dept_ID`) REFERENCES `instructor` (`Inst_ID`),
  ADD CONSTRAINT `department_ibfk_2` FOREIGN KEY (`Cycle_ID`) REFERENCES `cycle` (`Cycle_ID`),
  ADD CONSTRAINT `department_ibfk_3` FOREIGN KEY (`Sch_ID`) REFERENCES `school` (`Sch_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
