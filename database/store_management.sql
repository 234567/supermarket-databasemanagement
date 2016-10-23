-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2016 at 11:41 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store management`
--

-- --------------------------------------------------------

--
-- Table structure for table `analysis`
--

CREATE TABLE `analysis` (
  `adate` date NOT NULL,
  `apid` varchar(8) NOT NULL,
  `apname` varchar(30) NOT NULL,
  `aquantity` double(10,2) NOT NULL,
  `amrp` double(10,2) NOT NULL,
  `anet_amount` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `ccontact_no` varchar(10) DEFAULT NULL,
  `cexpenditure` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cid`, `cname`, `cpassword`, `cdob`, `caddress`, `ccontact_no`, `cexpenditure`) VALUES
(1, 'Oliver Queen', 'password', '1986-10-04', '#69,some street,some area,some city,city-*******', '987654321', NULL),
(2, 'Barry allen', 'password', '1992-02-15', '#111,central city', '912546878', NULL),
(3, 'Bruce Wayne', 'password', '1975-03-18', 'Gotham city', '998844556', NULL),
(4, 'karthik rao', 'aarowan1', '1995-11-07', '# 97, Opp: Girinagar Police Station, 6th Main Road', '9341948012', NULL),
(5, 'pinky', 'inky', '1991-12-01', '#221  shimoga  ', '85454545', NULL),
(6, 'pavan ', 'qwerty', '2016-10-05', '# 97, Opp: Girinagar Police Station, 6th Main Road', '7899545', NULL),
(7, 'Robert Queen', 'gambit', '1965-08-12', 'starling city', '9568142370', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `datewise_price`
--

CREATE TABLE `datewise_price` (
  `ddate` date NOT NULL,
  `dtotal_amount` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `esalary` double(10,2) NOT NULL,
  `eaddress` varchar(40) NOT NULL,
  `econtact_no` varchar(10) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`eid`, `ename`, `epassword`, `edob`, `edesignation`, `esalary`, `eaddress`, `econtact_no`, `created`) VALUES
(1, 'karthil', 'asa', '2016-10-05', 'emop', 10.00, '#p7 yuotyitu', '9845193516', '2016-10-20 23:56:30'),
(2, 'kkk', 'ASD', '2016-10-23', 'kk', 1.00, '# 97, Opp: Girinagar Police Station, 6th', '1', '2016-10-20 23:56:30'),
(3, 'kkkqq', 'asdas', '2016-10-23', 'kk', 10.00, '# 97, Opp: Girinagar Police Station, 6th', '1223334', '2016-10-20 23:58:09'),
(4, 'kkkqqsaafds', 'dsgfdsf', '2016-10-23', 'kk', 10.00, '# 97, Opp: Girinagar Police Station, 6th', '1223334', '2016-10-20 23:58:53'),
(5, 'Sara Lance', 'laurel', '1985-03-25', 'Cashier', 10.00, '#star,city', '9876543210', '2016-10-23 01:31:16');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `ipid` varchar(8) NOT NULL,
  `ipname` varchar(40) NOT NULL,
  `iquantity` double(10,2) NOT NULL,
  `iunit` varchar(5) NOT NULL,
  `isid` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` varchar(5) NOT NULL,
  `password` varchar(10) NOT NULL,
  `last_login_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `monthwise_profit`
--

CREATE TABLE `monthwise_profit` (
  `month` varchar(10) NOT NULL,
  `mtotal_amount` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `pdiscount` double(10,2) NOT NULL,
  `pnet_amount` double(10,2) NOT NULL,
  `pwarexp` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `pname`, `pmanufacturer`, `pcategory`, `pmrp`, `pdiscount`, `pnet_amount`, `pwarexp`) VALUES
('bsfc0007', 'Killing Floor by Lee Child', 'Bantam', 'Books', 399.00, 19.00, 0.00, NULL),
('cmac0006', 'Round Neck Blue T-Shirt', 'Adidas', 'Clothing', 1099.00, 40.00, 0.00, NULL),
('eclp0004', 'Lenovo G50-80', 'Lenovo', 'Electronics', 32990.00, 22.00, 0.00, '2017-10-02'),
('emsp0005', 'Moto G Plus, 4th Gen (Black, 32 GB)', 'Motorola', 'Electronics', 14999.00, 10.00, 0.00, '2017-04-02'),
('emsp009', 'Apple iPhone 7 (Black, 256GB)', 'Apple', 'Electronics', 80000.00, 2.00, 0.00, '2017-05-02'),
('epcp0010', 'Sony Cybershot DSC-WX500/B 18.2MP Camera', 'Sony', 'Electronics', 22990.00, 13.00, 0.00, '2018-11-02'),
('fnpc0001', 'Lays American 52g', 'PepsiCo', 'Food', 20.00, 0.00, 0.00, '2017-02-02'),
('fnur0003', 'Daawat Brown Basmati Rice', 'Daawat', 'Food', 165.00, 7.00, 0.00, '2017-09-02'),
('fpuf0002', 'Apple', 'Kashmir apple company', 'Food', 49.00, 0.00, 0.00, '2016-10-08'),
('stpn0008', 'Cello Pinpoint-blue (pack of 10)', 'Cello', 'Stationary', 100.00, 12.00, 0.00, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reference_month`
--

CREATE TABLE `reference_month` (
  `rpid` varchar(8) NOT NULL,
  `rpname` varchar(30) NOT NULL,
  `rquantiy` double(10,2) NOT NULL,
  `rmrp` double(10,2) NOT NULL,
  `rnet_amount` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `sid` varchar(5) NOT NULL,
  `sname` varchar(30) NOT NULL,
  `scontact_no` int(10) NOT NULL,
  `saddress` varchar(50) NOT NULL,
  `spid` varchar(8) NOT NULL,
  `squantity` double(10,2) NOT NULL,
  `smrp` double(10,2) NOT NULL,
  `samount` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `tid` int(5) NOT NULL,
  `tcid` int(5) NOT NULL,
  `tpid` varchar(8) NOT NULL,
  `tpname` varchar(40) NOT NULL,
  `tquantity` double(10,2) NOT NULL,
  `tdate_of_purchase` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tmrp` double(10,2) NOT NULL,
  `tdiscount` double(10,2) NOT NULL,
  `tnet_amount` double(10,2) NOT NULL,
  `tcontact_no` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`tid`, `tcid`, `tpid`, `tpname`, `tquantity`, `tdate_of_purchase`, `tmrp`, `tdiscount`, `tnet_amount`, `tcontact_no`) VALUES
(1, 1, 'fnpc0001', 'Lays American 52g', 15.00, '2016-10-21 04:57:52', 20.00, 0.00, 0.00, '987654321'),
(2, 2, 'eclp0004', 'Lenovo G50-80', 5.00, '2016-10-21 05:00:37', 32990.00, 22.00, 0.00, '987654321'),
(3, 3, 'emsp009', 'Apple iPhone 7 (Black, 256GB)', 8.00, '2016-10-21 05:04:42', 80000.00, 2.00, 0.00, '998844556'),
(4, 3, 'fnpc0001', 'Lays American 52g', 4.00, '2016-10-21 05:07:46', 20.00, 0.00, 0.00, '912546878'),
(5, 2, 'fnpc0001', 'Lays American 52g', 12.00, '2016-10-21 05:08:42', 20.00, 0.00, 0.00, '912546878'),
(6, 2, 'cmac0006', 'Round Neck Blue T-Shirt', 5.00, '2016-05-14 07:40:40', 1099.00, 40.00, 0.00, '912546878'),
(7, 3, 'bsfc0007', 'Killing Floor by Lee Child', 3.00, '2016-06-14 20:00:00', 399.00, 19.00, 0.00, '912546878'),
(8, 2, 'fnur0003', 'Daawat Brown Basmati Rice', 3.00, '2016-03-17 01:50:00', 165.00, 7.00, 0.00, '987654321'),
(9, 1, 'epcp0010', 'Sony Cybershot DSC-WX500/B 18.2MP Camera', 3.00, '2016-01-15 03:21:00', 22990.00, 13.00, 0.00, '912546878'),
(10, 3, 'fnpc0001', 'Lays American 52g', 3.00, '2016-01-15 19:50:10', 20.00, 0.00, 0.00, '998844556'),
(11, 1, 'fnpc0001', 'Lays American 52g', 9.00, '2016-02-07 16:30:00', 20.00, 0.00, 0.00, '912546878'),
(12, 2, 'emsp0005', 'Moto G Plus, 4th Gen (Black, 32 GB)', 1.00, '2016-01-01 17:30:00', 14999.00, 10.00, 0.00, '987654321'),
(13, 3, 'fnpc0001', 'Lays American 52g', 2.00, '2015-11-11 21:19:00', 20.00, 0.00, 0.00, '998844556'),
(14, 2, 'eclp0004', 'Lenovo G50-80', 1.00, '2014-05-06 14:20:00', 32990.00, 22.00, 0.00, '987654321'),
(15, 1, 'epcp0010', 'Sony Cybershot DSC-WX500/B 18.2MP Camera', 1.00, '2016-10-21 08:15:00', 22990.00, 13.00, 0.00, '912546878');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `analysis`
--
ALTER TABLE `analysis`
  ADD KEY `apid` (`apid`),
  ADD KEY `apname` (`apname`),
  ADD KEY `amrp` (`amrp`),
  ADD KEY `anet_amount` (`anet_amount`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `ccontact_no` (`ccontact_no`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`iquantity`),
  ADD KEY `ipid` (`ipid`),
  ADD KEY `ipname` (`ipname`),
  ADD KEY `isid` (`isid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD KEY `login_id` (`login_id`);

--
-- Indexes for table `monthwise_profit`
--
ALTER TABLE `monthwise_profit`
  ADD PRIMARY KEY (`month`);

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
-- Indexes for table `reference_month`
--
ALTER TABLE `reference_month`
  ADD UNIQUE KEY `rmrp` (`rmrp`),
  ADD KEY `rpid` (`rpid`),
  ADD KEY `rpname` (`rpname`),
  ADD KEY `rnet_amount` (`rnet_amount`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `spid` (`spid`),
  ADD KEY `smrp` (`smrp`);

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
  MODIFY `eid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `analysis`
--
ALTER TABLE `analysis`
  ADD CONSTRAINT `realation_amrp` FOREIGN KEY (`amrp`) REFERENCES `product` (`pmrp`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `realation_apid` FOREIGN KEY (`apid`) REFERENCES `product` (`pid`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `realation_pname` FOREIGN KEY (`apname`) REFERENCES `product` (`pname`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `relation_amrp` FOREIGN KEY (`amrp`) REFERENCES `product` (`pmrp`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `relation_anet_amount` FOREIGN KEY (`anet_amount`) REFERENCES `product` (`pnet_amount`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `realation_isid` FOREIGN KEY (`isid`) REFERENCES `supplier` (`sid`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `relation_ipid` FOREIGN KEY (`ipid`) REFERENCES `product` (`pid`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `relation_pname` FOREIGN KEY (`ipname`) REFERENCES `product` (`pname`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `reference_month`
--
ALTER TABLE `reference_month`
  ADD CONSTRAINT `realation_rmrp` FOREIGN KEY (`rmrp`) REFERENCES `product` (`pmrp`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `realation_rnet_amount` FOREIGN KEY (`rnet_amount`) REFERENCES `product` (`pnet_amount`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `realation_rpid` FOREIGN KEY (`rpid`) REFERENCES `product` (`pid`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `realation_rpname` FOREIGN KEY (`rpname`) REFERENCES `product` (`pname`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `supplier`
--
ALTER TABLE `supplier`
  ADD CONSTRAINT `relation_smrp` FOREIGN KEY (`smrp`) REFERENCES `product` (`pmrp`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `relation_spid` FOREIGN KEY (`spid`) REFERENCES `product` (`pid`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `realation_tcid` FOREIGN KEY (`tcid`) REFERENCES `customer` (`cid`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `realation_tcontact_no` FOREIGN KEY (`tcontact_no`) REFERENCES `customer` (`ccontact_no`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `realation_tmrp` FOREIGN KEY (`tmrp`) REFERENCES `product` (`pmrp`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `realation_tpid` FOREIGN KEY (`tpid`) REFERENCES `product` (`pid`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `realation_tpname` FOREIGN KEY (`tpname`) REFERENCES `product` (`pname`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `relation_tdiscount` FOREIGN KEY (`tdiscount`) REFERENCES `product` (`pdiscount`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `relation_tnetamount` FOREIGN KEY (`tnet_amount`) REFERENCES `product` (`pnet_amount`) ON DELETE NO ACTION ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
