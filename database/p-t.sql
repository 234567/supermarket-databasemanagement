-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2016 at 03:51 PM
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
-- Table structure for table `p-t`
--

CREATE TABLE `p-t` (
  `Pid` varchar(8) COLLATE ascii_bin NOT NULL,
  `Tid` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii COLLATE=ascii_bin;

--
-- Dumping data for table `p-t`
--

INSERT INTO `p-t` (`Pid`, `Tid`) VALUES
('bsfc0007', 100021),
('bsfc0007', 100025),
('bsfc0007', 100034),
('bsfc0007', 100041),
('bsfc0007', 100042),
('bsfc0007', 100043),
('bsfc0007', 100044),
('cmac0006', 100018),
('cmac0006', 100022),
('cmac0006', 100026),
('cmac0006', 100028),
('cmac0006', 100029),
('cmac0006', 100030),
('cmac0006', 100031),
('cmac0006', 100032),
('cmac0006', 100033),
('cmac0006', 100039),
('emsp009', 100020),
('emsp009', 100024),
('emsp009', 100027),
('fnur0004', 100019),
('fnur0004', 100023),
('fnur0004', 100036),
('fnur0004', 100038),
('fnur0004', 100040);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `p-t`
--
ALTER TABLE `p-t`
  ADD PRIMARY KEY (`Pid`,`Tid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
