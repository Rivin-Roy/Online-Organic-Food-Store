-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2022 at 09:51 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinestore`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `bid` int(11) NOT NULL,
  `brand` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`bid`, `brand`) VALUES
(1, 'HM'),
(3, 'LP');

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE `card` (
  `cardid` int(11) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `cardnum` varchar(20) DEFAULT NULL,
  `cardname` varchar(20) DEFAULT NULL,
  `expmonth` varchar(20) DEFAULT NULL,
  `expyear` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `card`
--

INSERT INTO `card` (`cardid`, `cid`, `cardnum`, `cardname`, `expmonth`, `expyear`) VALUES
(1, 1, '1111 1111 1111 1111', 'AK', '09', '21'),
(2, 1, '7777 7777 7777 7777', 'DJ', '02', '21'),
(3, 1, '8888 8888 8888 8888', 'AK', '02', '21'),
(4, 1, '6666 6666 6666 6666', 'JK', '02', '21');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `total_amount` bigint(20) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartid`, `cid`, `total_amount`, `status`) VALUES
(13, 1, 31578, 'Purchased'),
(14, 1, 1800, 'Purchased'),
(15, 1, 0, 'Purchased');

-- --------------------------------------------------------

--
-- Table structure for table `cartchild`
--

CREATE TABLE `cartchild` (
  `cartchid` int(11) NOT NULL,
  `cartid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `qty` bigint(20) DEFAULT NULL,
  `price` bigint(20) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cartchild`
--

INSERT INTO `cartchild` (`cartchid`, `cartid`, `pid`, `qty`, `price`, `status`) VALUES
(25, 13, 2, 9, 693, 'Purchased'),
(28, 13, 3, 7, 3885, 'Purchased'),
(31, 13, 4, 30, 27000, 'Purchased'),
(33, 14, 4, 2, 1800, 'Purchased'),
(34, 15, 4, 2, 1800, 'Purchased');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `catid` int(11) NOT NULL,
  `category` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`catid`, `category`) VALUES
(1, 'Formal'),
(2, 'Normal');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `cid` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `house` varchar(100) NOT NULL,
  `street` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `pincode` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`cid`, `fname`, `lname`, `house`, `street`, `district`, `pincode`, `contact`, `email`) VALUES
(1, 'Akhil', 'V', 'V', 'VV', 'Thrissur', '680570', '9090909090', 'ak@mail.com');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `logid` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `usertype` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`logid`, `username`, `password`, `usertype`, `status`) VALUES
(1, 'admin@gmail.com', 'admin', 'admin', '1'),
(2, 'ak@mail.com', '12345', 'customer', '1'),
(3, 'vis@mail.com', '12345', 'staff', '1');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `orderid` int(11) NOT NULL,
  `cartid` int(11) DEFAULT NULL,
  `orderdate` date DEFAULT NULL,
  `orderstatus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`orderid`, `cartid`, `orderdate`, `orderstatus`) VALUES
(1, 13, '2022-03-04', 'Purchased'),
(2, 13, '2022-03-05', 'Purchased'),
(3, 14, '2022-03-06', 'Purchased'),
(4, 15, '2022-03-07', 'Purchased');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payid` int(11) NOT NULL,
  `cardid` bigint(20) DEFAULT NULL,
  `orderid` int(11) DEFAULT NULL,
  `paydate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payid`, `cardid`, `orderid`, `paydate`) VALUES
(1, 2, 2, '2022-03-05'),
(2, 3, 3, '2022-03-06'),
(3, 4, 4, '2022-03-07');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pid` int(11) NOT NULL,
  `subid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `product` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `rate` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `stock` bigint(20) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `subid`, `bid`, `product`, `description`, `rate`, `img`, `stock`) VALUES
(2, 4, 3, 'LKJ', 'LKJ DESC', 77, '/media/AVENGERS%20TIMELINE_ZTM7m5B.jpg', 168),
(3, 2, 1, 'NBK', 'NBK DESC', 555, '/media/download.png', 131),
(4, 2, 1, 'PP', 'PP DESC', 900, '/media/5f4a7f73d78a2.png', 62),
(6, 4, 1, 'DJ', 'ddD jjJ', 66, '/media/5f4a803aa8560_uveZsDq.png', 6);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_child`
--

CREATE TABLE `purchase_child` (
  `pc_id` int(11) NOT NULL,
  `pm_id` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `qty` bigint(20) DEFAULT NULL,
  `rate` bigint(20) DEFAULT NULL,
  `cost_price` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchase_child`
--

INSERT INTO `purchase_child` (`pc_id`, `pm_id`, `pid`, `qty`, `rate`, `cost_price`) VALUES
(12, 6, 3, 23, 57500, 2500),
(13, 6, 2, 12, 40800, 3400),
(14, 8, 4, 5, 25000, 5000),
(15, 10, 4, 29, 130500, 4500),
(16, 31, 2, 78, 6006, 77),
(17, 32, 5, 8, 528, 66),
(18, 32, 5, 8, 528, 66),
(21, 34, 6, 6, 396, 66);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_master`
--

CREATE TABLE `purchase_master` (
  `pm_id` int(11) NOT NULL,
  `sid` int(11) DEFAULT 0,
  `purchase_date` date DEFAULT NULL,
  `total_amount` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchase_master`
--

INSERT INTO `purchase_master` (`pm_id`, `sid`, `purchase_date`, `total_amount`) VALUES
(6, 0, '2022-02-24', 98300),
(8, 1, '2022-02-24', 25000),
(10, 0, '2022-02-24', 130500),
(34, 0, '2022-03-02', 396),
(35, 0, '2022-03-05', 0),
(36, 0, '2022-03-06', 0),
(37, 0, '2022-03-06', 0),
(38, 0, '2022-03-06', 0),
(39, 0, '2022-03-07', 0);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `revid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `rdate` datetime NOT NULL,
  `feedback` varchar(100) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`revid`, `cid`, `pid`, `rdate`, `feedback`, `rating`) VALUES
(0, 1, 2, '2022-02-18 23:03:02', 'Nice', 5);

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE `staffs` (
  `sid` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `house` varchar(100) NOT NULL,
  `street` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `pincode` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` varchar(100) DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`sid`, `fname`, `lname`, `house`, `street`, `district`, `pincode`, `contact`, `email`, `status`) VALUES
(1, 'Vis', 'CC', 'Chen', 'Chendra', 'Thrissur', '678789', '9898989898', 'vis@mail.com', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `subid` int(11) NOT NULL,
  `catid` int(11) DEFAULT NULL,
  `subcategory` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`subid`, `catid`, `subcategory`) VALUES
(2, 1, 'abc'),
(3, 1, 'efg'),
(4, 2, 'KEF');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`cardid`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartid`),
  ADD KEY `rid` (`cid`),
  ADD KEY `pid` (`total_amount`);

--
-- Indexes for table `cartchild`
--
ALTER TABLE `cartchild`
  ADD PRIMARY KEY (`cartchid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`logid`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `subid` (`subid`,`bid`);

--
-- Indexes for table `purchase_child`
--
ALTER TABLE `purchase_child`
  ADD PRIMARY KEY (`pc_id`);

--
-- Indexes for table `purchase_master`
--
ALTER TABLE `purchase_master`
  ADD PRIMARY KEY (`pm_id`);

--
-- Indexes for table `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`subid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `card`
--
ALTER TABLE `card`
  MODIFY `cardid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `cartchild`
--
ALTER TABLE `cartchild`
  MODIFY `cartchid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `catid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `logid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `purchase_child`
--
ALTER TABLE `purchase_child`
  MODIFY `pc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `purchase_master`
--
ALTER TABLE `purchase_master`
  MODIFY `pm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `staffs`
--
ALTER TABLE `staffs`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `subid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
