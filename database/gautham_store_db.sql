-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2016 at 10:58 AM
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
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cid` int(5) NOT NULL,
  `cname` varchar(30) NOT NULL,
  `cpassword` varchar(10) NOT NULL,
  `cdob` date NOT NULL,
  `caddress` varchar(50) NOT NULL,
  `ccontact_no` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cid`, `cname`, `cpassword`, `cdob`, `caddress`, `ccontact_no`) VALUES
(1, 'Oliver Queen', 'password', '1986-10-04', '#69,R.RNagar,Bengaluru', '987654321'),
(2, 'Barry allen', 'psswd', '1992-02-15', '#111,central city', '912546878'),
(3, 'Bruce Wayne', 'psswd007', '1975-03-18', 'Gotham city', '998844556'),
(4, 'karthik rao', 'aarowan1', '1995-11-07', '# 97, Opp: Girinagar Police Station, 6th Main Road', '9341948012'),
(5, 'pinky', 'inky', '1991-12-01', '#221  shimoga  ', '8545454578'),
(6, 'pavan ', 'qwerty', '2016-10-05', '# 97, Opp: Girinagar Police Station, 6th Main Road', '7899545909'),
(7, 'Robert Queen', 'gambit', '1965-08-12', 'starling city', '9568142370');

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

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `eid` int(5) NOT NULL,
  `ename` varchar(30) NOT NULL,
  `epassword` varchar(10) NOT NULL,
  `edob` date NOT NULL,
  `edesignation` varchar(30) NOT NULL,
  `esalary` float NOT NULL,
  `eaddress` varchar(40) NOT NULL,
  `econtact_no` varchar(10) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`eid`, `ename`, `epassword`, `edob`, `edesignation`, `esalary`, `eaddress`, `econtact_no`, `created`) VALUES
(1, 'karthik', 'asa', '2016-10-05', 'emop', 10000, '#97,Opp Girinagar police station', '9845193516', '2016-10-20 23:56:30'),
(2, 'shashank', 'ASD', '2016-10-23', 'kk', 10000, '# 97, Opp: Girinagar Police Station, 6th', '9996663330', '2016-10-20 23:56:30'),
(3, 'gautham', 'asdas', '2016-10-23', 'kk', 10000, '# 97, Opp: Girinagar Police Station, 6th', '8886663339', '2016-10-20 23:58:09'),
(4, 'mithun', 'dsgfdsf', '2016-10-23', 'kk', 10000, '# 97, Opp: Girinagar Police Station, 6th', '7891234534', '2016-10-20 23:58:53');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `ipid` varchar(8) NOT NULL,
  `ipname` varchar(40) NOT NULL,
  `iquantity` double(10,5) NOT NULL,
  `iunit` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`ipid`, `ipname`, `iquantity`, `iunit`) VALUES
('bsfc0001', 'The Nice Guy Who Finished First', 0.00000, ''),
('bsfc0005', 'Playing It My Way', 0.00000, ''),
('bsfc0007', 'Killing Floor by Lee Child', 0.00000, ''),
('bsfc0010', 'Wings Of Fire', 0.00000, ''),
('cmac0006', 'Round Neck Blue T-Shirt', 0.00000, ''),
('cmac007', ' V Neck White T-Shirt', 0.00000, ''),
('eclp0001', 'Lenovo Phab Tablet', 0.00000, ''),
('eclp0004', 'Lenovo G50-80', 0.00000, ''),
('emsp0003', 'Apple iphone 6s (64GB)', 0.00000, ''),
('emsp0005', 'Moto G Plus, 4th Gen (Black, 32 GB)', 0.00000, ''),
('emsp009', 'Apple iPhone 7 (Black, 256GB)', 0.00000, ''),
('epcp0007', 'Asus A555LA-XX2384T Laptop', 0.00000, ''),
('epcp0010', 'Sony Cybershot DSC-WX500/B 18.2MP Camera', 0.00000, ''),
('fcnp0005', 'Kurkure Puffcorn (32g)', 0.00000, ''),
('fnpc0001', 'Lays American 52g', 0.00000, ''),
('fnur0003', 'Daawat Brown Basmati Rice', 0.00000, ''),
('fnur0004', 'Apple', 0.00000, ''),
('fnur0005', 'Orange', 0.00000, ''),
('watch1', 'Fastrack silver-black s500', 0.00000, '');

-- --------------------------------------------------------

--
-- Table structure for table `p-s`
--

CREATE TABLE `p-s` (
  `Pid` varchar(8) COLLATE ascii_bin NOT NULL,
  `Sid` varchar(5) COLLATE ascii_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii COLLATE=ascii_bin;

-- --------------------------------------------------------

--
-- Table structure for table `p-t`
--

CREATE TABLE `p-t` (
  `Pid` varchar(8) COLLATE ascii_bin NOT NULL,
  `Tid` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ascii COLLATE=ascii_bin;

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
  `pwarexp` date DEFAULT NULL,
  `psid` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `pname`, `pmanufacturer`, `pcategory`, `pmrp`, `pdiscount`, `pnet_amount`, `pwarexp`, `psid`) VALUES
('bsfc0001', 'The Nice Guy Who Finished First', 'Rupa&Co', 'Books', 408.00, 0.00, 408.00, NULL, 'sup1'),
('bsfc0005', 'Playing It My Way', 'Hatchette India', 'Books', 647.00, 27.00, 620.00, NULL, 'sup1'),
('bsfc0007', 'Killing Floor by Lee Child', 'Bantam', 'Books', 399.00, 19.00, 380.45, NULL, 'sup1'),
('bsfc0010', 'Wings Of Fire', 'O''REILLY', 'Books', 660.45, 60.45, 600.00, NULL, 'sup1'),
('cmac0006', 'Round Neck Blue T-Shirt', 'Adidas', 'Clothing', 1099.00, 40.00, 1059.00, NULL, 'sup1'),
('cmac007', ' V Neck White T-Shirt', 'Nike', 'Clothing', 1745.00, 50.00, 1695.00, NULL, 'sup2'),
('eclp0001', 'Lenovo Phab Tablet', 'Lenovo', 'Electronics', 25000.00, 999.99, 22667.00, '2017-11-12', 'sup2'),
('eclp0004', 'Lenovo G50-80', 'Lenovo', 'Electronics', 32990.00, 22.00, 32968.00, '2017-10-02', 'sup2'),
('emsp0003', 'Apple iphone 6s (64GB)', 'Apple', 'Electronics', 62500.00, 999.99, 40000.00, '2017-10-13', 'sup2'),
('emsp0005', 'Moto G Plus, 4th Gen (Black, 32 GB)', 'Motorola', 'Electronics', 14999.00, 10.00, 14989.00, '2017-04-02', 'sup2'),
('emsp009', 'Apple iPhone 7 (Black, 256GB)', 'Apple', 'Electronics', 80000.00, 2.00, 79998.00, '2017-05-02', 'sup3'),
('epcp0007', 'Asus A555LA-XX2384T Laptop', 'Asus', 'Electronics', 39359.00, 2000.00, 37359.00, '2019-10-08', 'sup3'),
('epcp0010', 'Sony Cybershot DSC-WX500/B 18.2MP Camera', 'Sony', 'Electronics', 22990.00, 13.00, 22977.00, '2018-11-02', 'sup3'),
('fcnp0005', 'Kurkure Puffcorn (32g)', 'PepsiCo', 'Food', 10.00, 0.00, 10.00, '2016-12-12', 'sup3'),
('fnpc0001', 'Lays American 52g', 'PepsiCo', 'Food', 20.00, 0.00, 20.00, '2017-02-02', 'sup3'),
('fnur0003', 'Daawat Brown Basmati Rice', 'Daawat', 'Food', 165.00, 7.00, 158.00, '2017-09-02', 'sup4'),
('fnur0004', 'Apple', 'Kashmir apple company', 'Food', 49.00, 0.00, 49.00, '2016-10-08', 'sup4'),
('fnur0005', 'Orange', 'Nagpur Orange Company', 'Food', 80.45, 7.45, 73.00, '2016-11-10', 'sup5'),
('watch1', 'Fastrack silver-black s500', 'Fastrack', 'watches', 2200.00, 556.00, 1644.00, NULL, 'sup5');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `sid` varchar(5) NOT NULL,
  `sname` varchar(30) NOT NULL,
  `scontact_no` varchar(10) NOT NULL,
  `saddress` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`sid`, `sname`, `scontact_no`, `saddress`) VALUES
('sup1', 'Rakesh Suppliers', '9876543210', 'Bangalore'),
('sup2', 'Ramesh Suppliers', '9988774455', 'Mysore'),
('sup3', 'Suresh Suppliers', '7744558869', 'New Delhi'),
('sup4', 'Rashmi Supliers', '9855221146', 'Mangalore'),
('sup5', 'Mahesh Suppliers', '4455996632', 'Kodaikanal');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `tid` int(100) NOT NULL,
  `tcid` int(5) NOT NULL,
  `tpid` varchar(8) NOT NULL,
  `tpname` varchar(30) NOT NULL,
  `tquantity` double(10,3) NOT NULL,
  `tdate_of_purchase` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tmrp` double(10,2) NOT NULL,
  `tdiscount` double(7,2) NOT NULL,
  `tnet_amount` double(10,2) NOT NULL,
  `tcontact_no` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`tid`, `tcid`, `tpid`, `tpname`, `tquantity`, `tdate_of_purchase`, `tmrp`, `tdiscount`, `tnet_amount`, `tcontact_no`) VALUES
(100018, 1, 'cmac0006', 'Round Neck Blue T-Shirt', 2.000, '2016-10-29 15:32:17', 1099.00, 40.00, 2118.00, '987654321'),
(100019, 1, 'fnur0004', 'Apple', 3.000, '2016-10-29 15:32:17', 49.00, 0.00, 147.45, '987654321'),
(100020, 1, 'emsp009', 'Apple iPhone 7 (Black, 256GB)', 4.000, '2016-10-29 15:32:17', 80000.00, 2.00, 319992.00, '987654321'),
(100021, 1, 'bsfc0007', 'Killing Floor by Lee Child', 1.000, '2016-10-29 15:32:47', 399.00, 19.00, 380.45, '987654321'),
(100022, 2, 'cmac0006', 'Round Neck Blue T-Shirt', 2.000, '2016-10-29 15:32:47', 1099.00, 40.00, 2118.00, '912546878'),
(100023, 2, 'fnur0004', 'Apple', 3.000, '2016-10-29 15:32:47', 49.00, 0.00, 147.00, '912546878'),
(100024, 2, 'emsp009', 'Apple iPhone 7 (Black, 256GB)', 4.000, '2016-10-29 15:32:47', 80000.00, 2.00, 319992.00, '912546878'),
(100025, 2, 'bsfc0007', 'Killing Floor by Lee Child', 1.000, '2016-10-29 15:33:32', 399.00, 19.00, 380.00, '912546878'),
(100026, 3, 'cmac0006', 'Round Neck Blue T-Shirt', 2.000, '2016-10-29 15:33:32', 1099.00, 40.00, 2118.00, '998844556'),
(100027, 3, 'emsp009', 'Apple iPhone 7 (Black, 256GB)', 1.000, '2016-10-29 15:33:32', 80000.00, 2.00, 79998.00, '998844556'),
(100028, 3, 'cmac0006', 'Round Neck Blue T-Shirt', 10.000, '2016-10-29 17:37:16', 1099.00, 40.00, 10590.00, '998844556'),
(100029, 3, 'cmac0006', 'Round Neck Blue T-Shirt', 10.000, '2016-10-29 17:39:58', 1099.00, 40.00, 10590.00, '998844556'),
(100030, 4, 'cmac0006', 'Round Neck Blue T-Shirt', 2.000, '2016-10-29 17:45:41', 1099.00, 40.00, 2118.00, '9341948012'),
(100031, 4, 'cmac0006', 'Round Neck Blue T-Shirt', 2.000, '2016-10-29 17:46:21', 1099.00, 40.00, 2118.00, '9341948012'),
(100032, 4, 'cmac0006', 'Round Neck Blue T-Shirt', 2.000, '2016-10-29 17:49:42', 1099.00, 40.00, 2118.00, '9341948012'),
(100033, 5, 'cmac0006', 'Round Neck Blue T-Shirt', 1.000, '2016-10-29 17:54:51', 1099.00, 40.00, 1059.00, '8545454578'),
(100034, 5, 'bsfc0007', 'Killing Floor by Lee Child', 2.000, '2016-10-29 17:54:51', 399.00, 19.00, 760.00, '8545454578'),
(100036, 5, 'fnur0004', 'Apple', 2.000, '2016-10-29 17:58:22', 49.00, 0.00, 98.00, '8545454578'),
(100038, 5, 'fnur0004', 'Apple', 2.000, '2016-10-29 18:01:38', 49.00, 0.00, 98.00, '8545454578'),
(100039, 6, 'cmac0006', 'Round Neck Blue T-Shirt', 2.000, '2016-10-29 18:03:21', 1099.00, 40.00, 2118.00, '7899545909'),
(100040, 6, 'fnur0004', 'Apple', 1.000, '2016-10-29 18:03:21', 49.00, 0.00, 49.00, '7899545909'),
(100041, 7, 'bsfc0007', 'Killing Floor by Lee Child', 1.000, '2016-10-29 18:03:21', 399.00, 19.00, 380.00, '9568142370'),
(100042, 7, 'bsfc0007', 'Killing Floor by Lee Child', 2.000, '2016-10-29 18:30:39', 399.00, 19.00, 760.90, '9568142370'),
(100043, 7, 'bsfc0007', 'Killing Floor by Lee Child', 2.000, '2016-10-29 19:54:54', 399.00, 19.00, 760.90, '9568142370'),
(100044, 7, 'bsfc0007', 'Killing Floor by Lee Child', 2.000, '2016-10-29 19:55:52', 399.00, 19.00, 760.90, '9568142370'),
(100045, 1, 'bsfc0007', 'Killing Floor by Lee Child', 2.000, '2016-10-29 19:56:20', 399.00, 19.00, 760.90, '9341948012'),
(100046, 1, 'bsfc0007', 'Killing Floor by Lee Child', 1.000, '2016-10-30 18:57:05', 399.00, 19.00, 380.45, '9341948012'),
(100047, 1, 'cmac0006', 'Round Neck Blue T-Shirt', 4.000, '2016-10-30 18:57:06', 1099.00, 40.00, 4236.00, '9341948012'),
(100048, 1, 'fnur0004', 'Apple', 2.000, '2016-10-30 18:57:06', 49.00, 0.00, 98.00, '9341948012'),
(100049, 1, 'bsfc0007', 'Killing Floor by Lee Child', 1.000, '2016-10-30 18:59:09', 399.00, 19.00, 380.45, '9341948012'),
(100050, 1, 'cmac0006', 'Round Neck Blue T-Shirt', 4.000, '2016-10-30 18:59:09', 1099.00, 40.00, 4236.00, '9341948012'),
(100051, 1, 'fnur0004', 'Apple', 2.000, '2016-10-30 18:59:09', 49.00, 0.00, 98.00, '9341948012'),
(100052, 1, 'bsfc0007', 'Killing Floor by Lee Child', 1.000, '2016-10-30 19:17:05', 399.00, 19.00, 380.45, '9341948012'),
(100053, 1, 'cmac0006', 'Round Neck Blue T-Shirt', 4.000, '2016-10-30 19:17:05', 1099.00, 40.00, 4236.00, '9341948012'),
(100054, 1, 'fnur0004', 'Apple', 2.000, '2016-10-30 19:17:05', 49.00, 0.00, 98.00, '9341948012');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `ccontact_no` (`ccontact_no`);

--
-- Indexes for table `e-t`
--
ALTER TABLE `e-t`
  ADD PRIMARY KEY (`Eid`,`Tid`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`ipid`),
  ADD KEY `ipid` (`ipid`),
  ADD KEY `ipname` (`ipname`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `pname` (`pname`),
  ADD KEY `pmrp` (`pmrp`),
  ADD KEY `pdiscount` (`pdiscount`),
  ADD KEY `pnet_amount` (`pnet_amount`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`tid`),
  ADD KEY `tcid` (`tcid`),
  ADD KEY `tpid` (`tpid`),
  ADD KEY `tpname` (`tpname`),
  ADD KEY `tmrp` (`tmrp`),
  ADD KEY `tcontact_no` (`tcontact_no`),
  ADD KEY `tmrp_2` (`tmrp`),
  ADD KEY `tnet_amount` (`tnet_amount`),
  ADD KEY `tdiscount` (`tdiscount`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `eid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `tid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100055;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `relation_ipid` FOREIGN KEY (`ipid`) REFERENCES `product` (`pid`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `relation_pname` FOREIGN KEY (`ipname`) REFERENCES `product` (`pname`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `realation_tmrp` FOREIGN KEY (`tmrp`) REFERENCES `product` (`pmrp`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `realation_tpid` FOREIGN KEY (`tpid`) REFERENCES `product` (`pid`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `realation_tpname` FOREIGN KEY (`tpname`) REFERENCES `product` (`pname`) ON DELETE NO ACTION ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
