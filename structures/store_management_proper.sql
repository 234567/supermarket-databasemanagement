-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2016 at 03:18 PM
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
  `aquantity` double(10,5) NOT NULL,
  `amrp` double(10,5) NOT NULL,
  `anet_amount` double(10,5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cid` varchar(5) NOT NULL,
  `cname` varchar(30) NOT NULL,
  `cdob` date NOT NULL,
  `caddress` varchar(50) NOT NULL,
  `ccontact_no` int(10) DEFAULT NULL,
  `cexpenditure` double(10,3) NOT NULL,
  `cpassword` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `datewise_price`
--

CREATE TABLE `datewise_price` (
  `ddate` date NOT NULL,
  `dtotal_amount` double(10,5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `eid` int(5) NOT NULL,
  `ename` varchar(30) NOT NULL,
  `edesignation` varchar(30) NOT NULL,
  `esalary` double(6,5) NOT NULL,
  `edob` date NOT NULL,
  `econtact_no` int(10) NOT NULL,
  `eaddress` varchar(40) NOT NULL,
  `edata_joined` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `ipid` varchar(8) NOT NULL,
  `ipname` varchar(40) NOT NULL,
  `iquantity` double(10,5) NOT NULL,
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
  `mtotal_amount` double(10,5) NOT NULL
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
  `pdiscount` double(5,2) NOT NULL,
  `pwarexp` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `pname`, `pmanufacturer`, `pcategory`, `pmrp`, `pdiscount`, `pwarexp`) VALUES
('bsfc0007', 'Killing Floor by Lee Child', 'Bantam', 'Books', 399.00, 19.00, NULL),
('cmac0006', 'Round Neck Blue T-Shirt', 'Adidas', 'Clothing', 1099.00, 40.00, NULL),
('eclp0004', 'Lenovo G50-80', 'Lenovo', 'Electronics', 32990.00, 22.00, '2017-10-02'),
('emsp0005', 'Moto G Plus, 4th Gen (Black, 32 GB)', 'Motorola', 'Electronics', 14999.00, 10.00, '2017-04-02'),
('emsp009', 'Apple iPhone 7 (Black, 256GB)', 'Apple', 'Electronics', 80000.00, 2.00, '2017-05-02'),
('epcp0010', 'Sony Cybershot DSC-WX500/B 18.2MP Camera', 'Sony', 'Electronics', 22990.00, 13.00, '2018-11-02'),
('fnpc0001', 'Lays American 52g', 'PepsiCo', 'Food', 20.00, 0.00, '2017-02-02'),
('fnur0003', 'Daawat Brown Basmati Rice', 'Daawat', 'Food', 165.00, 7.00, '2017-09-02'),
('fpuf0002', 'Apple', 'Kashmir apple company', 'Food', 49.00, 0.00, '2016-10-08'),
('stpn0008', 'Cello Pinpoint-blue (pack of 10)', 'Cello', 'Stationary', 100.00, 12.00, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reference_month`
--

CREATE TABLE `reference_month` (
  `rpid` varchar(8) NOT NULL,
  `rpname` varchar(30) NOT NULL,
  `rquantiy` double(10,5) NOT NULL,
  `rmrp` double(10,5) NOT NULL
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
  `squantity` double(10,5) NOT NULL,
  `smrp` double(10,5) NOT NULL,
  `samount` double(10,5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `tid` int(5) NOT NULL,
  `tcid` varchar(5) NOT NULL,
  `tpid` varchar(8) NOT NULL,
  `tpname` varchar(30) NOT NULL,
  `tquantity` double(10,3) NOT NULL,
  `tdate_of_purchase` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tmrp` double(10,2) NOT NULL,
  `tcontact_no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `analysis`
--
ALTER TABLE `analysis`
  ADD KEY `apid` (`apid`),
  ADD KEY `apname` (`apname`),
  ADD KEY `amrp` (`amrp`);

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
  ADD KEY `pmrp` (`pmrp`);

--
-- Indexes for table `reference_month`
--
ALTER TABLE `reference_month`
  ADD UNIQUE KEY `rmrp` (`rmrp`),
  ADD KEY `rpid` (`rpid`),
  ADD KEY `rpname` (`rpname`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `spid` (`spid`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`tid`),
  ADD KEY `tcid` (`tcid`),
  ADD KEY `tpid` (`tpid`),
  ADD KEY `tpname` (`tpname`),
  ADD KEY `tmrp` (`tmrp`),
  ADD KEY `tcontact_no` (`tcontact_no`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `analysis`
--
ALTER TABLE `analysis`
  ADD CONSTRAINT `realation_amrp` FOREIGN KEY (`amrp`) REFERENCES `product` (`pmrp`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `realation_apid` FOREIGN KEY (`apid`) REFERENCES `product` (`pid`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `realation_pname` FOREIGN KEY (`apname`) REFERENCES `product` (`pname`) ON DELETE NO ACTION ON UPDATE CASCADE;

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
  ADD CONSTRAINT `realation_rpid` FOREIGN KEY (`rpid`) REFERENCES `product` (`pid`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `realation_rpname` FOREIGN KEY (`rpname`) REFERENCES `product` (`pname`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `supplier`
--
ALTER TABLE `supplier`
  ADD CONSTRAINT `relation_spid` FOREIGN KEY (`spid`) REFERENCES `product` (`pid`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `realation_tcid` FOREIGN KEY (`tcid`) REFERENCES `customer` (`cid`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `realation_tcontact_no` FOREIGN KEY (`tcontact_no`) REFERENCES `customer` (`ccontact_no`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `realation_tmrp` FOREIGN KEY (`tmrp`) REFERENCES `product` (`pmrp`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `realation_tpid` FOREIGN KEY (`tpid`) REFERENCES `product` (`pid`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `realation_tpname` FOREIGN KEY (`tpname`) REFERENCES `product` (`pname`) ON DELETE NO ACTION ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
