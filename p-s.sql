-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2016 at 04:00 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gautham_sample_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `p-s`
--

CREATE TABLE `p-s` (
  `Pid` varchar(8) COLLATE ascii_bin NOT NULL,
  `Sid` varchar(5) COLLATE ascii_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii COLLATE=ascii_bin;

--
-- Dumping data for table `p-s`
--

INSERT INTO `p-s` (`Pid`, `Sid`) VALUES
('bsfc0001', 'sup1'),
('bsfc0005', 'sup1'),
('bsfc0007', 'sup1'),
('bsfc0010', 'sup1'),
('cmac0006', 'sup2'),
('cmac007', 'sup2'),
('eclp0001', 'sup3'),
('eclp0004', 'sup3'),
('emsp0003', 'sup3'),
('emsp0005', 'sup3'),
('emsp009', 'sup3'),
('epcp0007', 'sup3'),
('epcp0010', 'sup3'),
('fcnp0005', 'sup4'),
('fnpc0001', 'sup4'),
('fnur0003', 'sup4'),
('fnur0004', 'sup4'),
('fnur0005', 'sup4'),
('watch1', 'sup5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `p-s`
--
ALTER TABLE `p-s`
  ADD PRIMARY KEY (`Pid`,`Sid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
