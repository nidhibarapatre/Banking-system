-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 19, 2022 at 08:32 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `21bcs146`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
CREATE TABLE IF NOT EXISTS `account` (
  `account_number` int(8) NOT NULL,
  `branch_name` varchar(15) DEFAULT NULL,
  `balance` int(8) DEFAULT NULL,
  `DATE` date DEFAULT NULL,
  PRIMARY KEY (`account_number`),
  KEY `branch_name` (`branch_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`account_number`, `branch_name`, `balance`, `DATE`) VALUES
(101, 'Wright town', 500, '2011-02-05'),
(215, 'Mehgawan', 700, '2012-07-03'),
(102, 'S street', 400, '2010-08-06'),
(305, 'Napier town', 350, '2009-06-04'),
(201, 'Stadium', 900, '2010-04-09'),
(222, 'Cross square', 700, '2011-11-08'),
(217, 'Stadium', 750, '2012-10-02');

-- --------------------------------------------------------

--
-- Table structure for table `borrower`
--

DROP TABLE IF EXISTS `borrower`;
CREATE TABLE IF NOT EXISTS `borrower` (
  `customer_name` varchar(15) NOT NULL,
  `LOAN_NUMBER` int(8) NOT NULL,
  PRIMARY KEY (`customer_name`,`LOAN_NUMBER`),
  KEY `LOAN_NUMBER` (`LOAN_NUMBER`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `borrower`
--

INSERT INTO `borrower` (`customer_name`, `LOAN_NUMBER`) VALUES
('Amit', 16),
('Charu', 93),
('Divya', 11),
('Divya', 23),
('Priya', 15),
('Sakshi', 17),
('Vinay', 17),
('Yash', 14);

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
CREATE TABLE IF NOT EXISTS `branch` (
  `branch_name` varchar(15) NOT NULL,
  `branch_city` varchar(15) DEFAULT NULL,
  `assets` int(8) DEFAULT NULL,
  PRIMARY KEY (`branch_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_name`, `branch_city`, `assets`) VALUES
('Stadium', 'Delhi', 710000),
('Wright town', 'Delhi', 9000000),
('Mehgawan', 'Hyderabad', 400000),
('North town', 'Raipur', 3700000),
('S street', 'Hyderabad', 1700000),
('Pownal', 'Bilaspur', 300000),
('Cross square', 'Nagpur', 2100000),
('Napier town', 'Hyderabad', 8000000);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `customer_name` varchar(15) NOT NULL,
  `customer_street` varchar(15) DEFAULT NULL,
  `customer_city` varchar(15) NOT NULL,
  PRIMARY KEY (`customer_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_name`, `customer_street`, `customer_city`) VALUES
('Amit', 'Sarafa', 'Patna'),
('Bani', 'Civil Lines', 'Delhi'),
('Charu', 'NULL', 'Raipur'),
('Jai', 'South Street', 'Mumbai'),
('Rahul', 'Vijay Nagar', 'Jabalpur'),
('Priya', 'Main Street', 'Bangalore'),
('Yash', 'Hill Road', 'Nagpur'),
('Vijay', 'Main Street', 'Bangalore'),
('Anjali', 'Mall Road', 'Patna'),
('Divya', 'NULL', 'Raipur'),
('Rohit', 'Sadar', 'Jabalpur'),
('Sakshi', 'Park Street', 'Kolkata');

-- --------------------------------------------------------

--
-- Table structure for table `depositor`
--

DROP TABLE IF EXISTS `depositor`;
CREATE TABLE IF NOT EXISTS `depositor` (
  `customer_name` varchar(15) NOT NULL,
  `ACCOUNT_NUMBER` int(8) NOT NULL,
  PRIMARY KEY (`customer_name`,`ACCOUNT_NUMBER`),
  KEY `ACCOUNT_NUMBER` (`ACCOUNT_NUMBER`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `depositor`
--

INSERT INTO `depositor` (`customer_name`, `ACCOUNT_NUMBER`) VALUES
('Anjali', 222),
('Divya', 217),
('Priya', 102),
('Rohit', 305),
('Vinay', 217),
('Yash', 101),
('Yash', 201);

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

DROP TABLE IF EXISTS `loan`;
CREATE TABLE IF NOT EXISTS `loan` (
  `LOAN_NUMBER` int(8) NOT NULL,
  `branch_name` varchar(15) DEFAULT NULL,
  `AMOUNT` int(8) DEFAULT NULL,
  PRIMARY KEY (`LOAN_NUMBER`),
  KEY `branch_name` (`branch_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`LOAN_NUMBER`, `branch_name`, `AMOUNT`) VALUES
(11, 'Napier Town', 900),
(14, 'Napier Town', 1500),
(15, 'S Street', 1500),
(16, 'S Street', 1300),
(17, 'Wright Town', 1000),
(23, 'Cross Square', 2000),
(93, 'Mehgawan', 500);

-- --------------------------------------------------------

--
-- Table structure for table `master_account`
--

DROP TABLE IF EXISTS `master_account`;
CREATE TABLE IF NOT EXISTS `master_account` (
  `name` varchar(15) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_account`
--

INSERT INTO `master_account` (`name`, `address`, `city`) VALUES
('Nidhi Barapatre', 'fvghu gvhuji', 'vghbj'),
('Nidhi', 'hbj vhbjk', ' bvhjn'),
('jyotsna', 'maharashtra', 'akola'),
('aayushi', 'up', 'varanasi');

-- --------------------------------------------------------

--
-- Table structure for table `master_login`
--

DROP TABLE IF EXISTS `master_login`;
CREATE TABLE IF NOT EXISTS `master_login` (
  `userid` varchar(15) NOT NULL,
  `password` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_login`
--

INSERT INTO `master_login` (`userid`, `password`) VALUES
('Nidhi', 'bara'),
('Jyotsna', '1234'),
('Saurabh', 'nag');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
