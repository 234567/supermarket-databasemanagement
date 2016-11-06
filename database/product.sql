-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2016 at 08:09 AM
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
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pid` varchar(8) NOT NULL,
  `pname` varchar(40) NOT NULL,
  `pmanufacturer` varchar(30) DEFAULT NULL,
  `pcategory` varchar(30) NOT NULL,
  `pmrp` double(10,2) NOT NULL,
  `pdiscount` double(7,2) NOT NULL,
  `pnet_amount` double(10,2) NOT NULL,
  `pwarexp` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `pname`, `pmanufacturer`, `pcategory`, `pmrp`, `pdiscount`, `pnet_amount`, `pwarexp`) VALUES
('bsfc0001', 'The Nice Guy Who Finished First', 'Rupa&Co', 'Books', 408.00, 0.00, 408.00, NULL),
('bsfc0005', 'Playing It My Way', 'Hatchette India', 'Books', 647.00, 27.00, 620.00, NULL),
('bsfc0007', 'Killing Floor by Lee Child', 'Bantam', 'Books', 399.00, 19.00, 380.45, NULL),
('bsfc0010', 'Wings Of Fire', 'O''REILLY', 'Books', 660.45, 60.45, 600.00, NULL),
('cmac0006', 'Round Neck Blue T-Shirt', 'Adidas', 'Clothing', 1099.00, 40.00, 1059.00, NULL),
('cmac007', ' V Neck White T-Shirt', 'Nike', 'Clothing', 1745.00, 50.00, 1695.00, NULL),
('eclp0001', 'Lenovo Phab Tablet', 'Lenovo', 'Electronics', 25000.00, 999.99, 22667.00, '2017-11-12'),
('eclp0004', 'Lenovo G50-80', 'Lenovo', 'Electronics', 32990.00, 22.00, 32968.00, '2017-10-02'),
('emsp0003', 'Apple iphone 6s (64GB)', 'Apple', 'Electronics', 62500.00, 999.99, 40000.00, '2017-10-13'),
('emsp0005', 'Moto G Plus, 4th Gen (Black, 32 GB)', 'Motorola', 'Electronics', 14999.00, 10.00, 14989.00, '2017-04-02'),
('emsp009', 'Apple iPhone 7 (Black, 256GB)', 'Apple', 'Electronics', 80000.00, 2.00, 79998.00, '2017-05-02'),
('epcp0007', 'Asus A555LA-XX2384T Laptop', 'Asus', 'Electronics', 39359.00, 2000.00, 37359.00, '2019-10-08'),
('epcp0010', 'Sony Cybershot DSC-WX500/B 18.2MP Camera', 'Sony', 'Electronics', 22990.00, 13.00, 22977.00, '2018-11-02'),
('fcnp0005', 'Kurkure Puffcorn (32g)', 'PepsiCo', 'Food', 10.00, 0.00, 10.00, '2016-12-12'),
('fnpc0001', 'Lays American 52g', 'PepsiCo', 'Food', 20.00, 0.00, 20.00, '2017-02-02'),
('fnur0003', 'Daawat Brown Basmati Rice', 'Daawat', 'Food', 165.00, 7.00, 158.00, '2017-09-02'),
('fnur0004', 'Apple', 'Kashmir apple company', 'Food', 49.00, 0.00, 49.00, '2016-10-08'),
('fnur0005', 'Orange', 'Nagpur Orange Company', 'Food', 80.45, 7.45, 73.00, '2016-11-10'),
('watch1', 'Fastrack silver-black s500', 'Fastrack', 'watches', 2200.00, 556.00, 1644.00, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `pname` (`pname`),
  ADD KEY `pmrp` (`pmrp`),
  ADD KEY `pdiscount` (`pdiscount`),
  ADD KEY `pnet_amount` (`pnet_amount`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
