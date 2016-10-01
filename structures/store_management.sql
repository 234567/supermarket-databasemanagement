--
-- Database: `store management`
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `pname` (`pname`),
  ADD KEY `pmrp` (`pmrp`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
