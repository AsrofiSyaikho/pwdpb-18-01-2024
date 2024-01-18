-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2024 at 03:45 AM
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
-- Database: `projekpwdpb2024`
--

-- --------------------------------------------------------

--
-- Table structure for table `formkeluhan`
--

CREATE TABLE `formkeluhan` (
  `nokeluhan` int(11) NOT NULL,
  `idpc` varchar(5) NOT NULL,
  `username` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `servis` varchar(40) NOT NULL,
  `gantisparepart` varchar(40) NOT NULL,
  `paraf` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `formkeluhan`
--

INSERT INTO `formkeluhan` (`nokeluhan`, `idpc`, `username`, `tanggal`, `servis`, `gantisparepart`, `paraf`) VALUES
(7, 'PC001', 'Asrofi', '2024-01-18', 'Didi', 'Fauzan', 0x2074616b20746175);

-- --------------------------------------------------------

--
-- Table structure for table `listpc`
--

CREATE TABLE `listpc` (
  `idpc` varchar(5) NOT NULL,
  `nolab` int(11) NOT NULL,
  `processor` varchar(40) NOT NULL,
  `ram` varchar(40) NOT NULL,
  `hardisk` varchar(40) NOT NULL,
  `monitor` varchar(40) NOT NULL,
  `vga` varchar(40) NOT NULL,
  `mouse` varchar(40) NOT NULL,
  `keyboard` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `listpc`
--

INSERT INTO `listpc` (`idpc`, `nolab`, `processor`, `ram`, `hardisk`, `monitor`, `vga`, `mouse`, `keyboard`) VALUES
('PC001', 301, '', '', '', '', '', '', ''),
('PC002', 301, '', '', '', '', '', '', ''),
('PC003', 301, '', '', '', '', '', '', ''),
('PC004', 301, '', '', '', '', '', '', ''),
('PC005', 301, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `useraccount`
--

CREATE TABLE `useraccount` (
  `username` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `useraccount`
--

INSERT INTO `useraccount` (`username`, `email`, `password`) VALUES
('Asrofi', 'asrofi@gmail.com', '123'),
('Didi', '', 'satusampedelapan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `formkeluhan`
--
ALTER TABLE `formkeluhan`
  ADD PRIMARY KEY (`nokeluhan`),
  ADD KEY `username` (`username`),
  ADD KEY `idpc` (`idpc`);

--
-- Indexes for table `listpc`
--
ALTER TABLE `listpc`
  ADD PRIMARY KEY (`idpc`);

--
-- Indexes for table `useraccount`
--
ALTER TABLE `useraccount`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `formkeluhan`
--
ALTER TABLE `formkeluhan`
  MODIFY `nokeluhan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `formkeluhan`
--
ALTER TABLE `formkeluhan`
  ADD CONSTRAINT `formkeluhan_ibfk_1` FOREIGN KEY (`idpc`) REFERENCES `listpc` (`idpc`),
  ADD CONSTRAINT `formkeluhan_ibfk_2` FOREIGN KEY (`username`) REFERENCES `useraccount` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
