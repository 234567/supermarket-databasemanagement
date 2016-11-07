-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2016 at 04:06 PM
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
-- Table structure for table `e-t`
--

CREATE TABLE `e-t` (
  `Eid` int(5) NOT NULL,
  `Tid` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii COLLATE=ascii_bin;

--
-- Dumping data for table `e-t`
--

INSERT INTO `e-t` (`Eid`, `Tid`) VALUES
(1, 100018),
(1, 100019),
(1, 100020),
(1, 100021),
(2, 100022),
(2, 100023),
(2, 100024),
(2, 100025),
(2, 100039),
(2, 100040),
(3, 100026),
(3, 100027),
(3, 100028),
(3, 100029),
(3, 100041),
(3, 100042),
(3, 100043),
(3, 100044),
(4, 100030),
(4, 100031),
(4, 100032),
(5, 100033),
(5, 100034),
(5, 100036),
(5, 100038);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `e-t`
--
ALTER TABLE `e-t`
  ADD PRIMARY KEY (`Eid`,`Tid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
