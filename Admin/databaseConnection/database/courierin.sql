-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2022 at 05:31 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `courierin`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `acc_no` varchar(50) DEFAULT NULL,
  `cash` float DEFAULT NULL,
  `pin` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `acc_no`, `cash`, `pin`) VALUES
(2, '1234237196', 55048200, '1234'),
(3, '1234237193', 47950, '1234'),
(4, '4321561279', 60000, '1234'),
(5, '7861235641', 70000, '1234'),
(6, '56412054124', 80000, '1234'),
(7, '1237839012', 90000, '1234'),
(8, '4512394310', 100000, '1234'),
(9, '2397125701', 200000, '1234'),
(10, '4312805104', 300000, '1234'),
(11, '2187345601', 400000, '1234'),
(12, '1278904512', 500000, '1234'),
(13, '9021845632', 100000, '1234'),
(14, '9612670124', 70000, '1234'),
(15, '5621349810', 80000, '1234'),
(16, '1234567891', 90000, '1234'),
(17, '4532178932', 90000, '1234'),
(18, '3456871285', 70000, '1234'),
(19, '6712349845', 80000, '1234'),
(20, '7012345678', 60000, '1234'),
(21, '3214671235', 50000, '1234'),
(22, '2345671923', 90000, '1234'),
(23, '4521390431', 90000, '1234'),
(24, '2345678912', 100000, '1234'),
(25, '8734210987', 200000, '1234'),
(26, '6745290128', 300000, '1234'),
(27, '03147896502', 300000, '1234'),
(28, '3256789120', 400000, '1234'),
(29, '5478931209', 200000, '1234'),
(30, '1297843210', 100000, '1234'),
(31, '2397841209', 500000, '1234'),
(32, '4567123975', 500000, '1234');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `c_id` int(11) NOT NULL,
  `city` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`c_id`, `city`) VALUES
(18, 'Karachi'),
(19, 'Lahore'),
(20, 'Islamabad');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `messages` varchar(1000) DEFAULT NULL,
  `phone` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `name`, `email`, `messages`, `phone`) VALUES
(1, 'dgsa', 'ksahda@jashdkja.com', 'asdsdsa', 7678678678),
(2, 'dgsa', 'ksahda@jashdkja.com', 'asdasdasdsasda', 7678678678123);

-- --------------------------------------------------------

--
-- Table structure for table `courier_detail`
--

CREATE TABLE `courier_detail` (
  `dc_id` int(11) NOT NULL,
  `d_departure` varchar(50) DEFAULT NULL,
  `d_destination` varchar(50) DEFAULT NULL,
  `height` varchar(50) DEFAULT NULL,
  `width` varchar(50) DEFAULT NULL,
  `totalprice` decimal(50,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courier_detail`
--

INSERT INTO `courier_detail` (`dc_id`, `d_departure`, `d_destination`, `height`, `width`, `totalprice`) VALUES
(7, 'karachi', 'lahore', '100', '100', '600'),
(8, 'hsadgjhs', 'askljdlakjskd', '100', '100', '600'),
(9, 'kasjdkjs', 'al;dfk;', '100', '100', '800'),
(10, 'kasjdkjs', 'al;dfk;', '100', '100', '800'),
(11, 'askjdlka', 'askdjkljsd', '100', '100', '800'),
(12, 'askjdlka', 'askdjkljsd', '100', '100', '800'),
(13, 'z,xnck', 'kajshdkjd', '100', '100', '1750'),
(14, 'sakjdads', 'aksdjklajdasdasas', '100', '100', '800'),
(15, 'sakjdads', 'aksdjklajdasdasas', '100', '100', '800'),
(16, 'sdfgh', 'akshajhs', '1001', '1001', '3503'),
(17, 'sdfgh', 'akshajhs', '1001', '1001', '3503'),
(18, 'sdfgh', 'akshajhs', '1001', '1001', '3503'),
(19, 'asdfghj', 'asdfghjk', '100', '100', '1750'),
(20, 'asdfghj', 'asdfghjk', '100', '100', '1750'),
(21, 'sdffsf', 'alsjdlkasd', '100', '100', '2050'),
(22, 'sdffsf', 'alsjdlkasd', '100', '100', '2050'),
(23, 'asdfghjkl;', 'asdfghj', '200', '200', '1400'),
(24, 'asdfghjkl;', 'asdfghj', '200', '200', '1400'),
(25, 'asdf', 'asdfg', '123', '123', '1869'),
(26, 'asdf', 'asdfg', '123', '123', '1869'),
(27, 'asdasd', 'asdasds', '123', '123', '12969'),
(28, 'asdfgh', 'asdfg', '123', '123', '12969'),
(29, 'asdfgh', 'asdfg', '123', '123', '600'),
(30, 'asdfgh', 'asdfg', '123', '123', '12969'),
(31, '234', '123', '123', '1234', '2980'),
(32, 'asdfgh', 'asdfg', '123', '123', '12969'),
(33, 'asdfgh', 'asdfg', '123', '123', '12969'),
(34, 'asdfgh', 'asdfg', '123', '123', '12969'),
(35, 'asdfgh', 'asdfg', '123', '123', '12969'),
(36, 'asdfgh', 'asdfg', '123', '123', '12969'),
(37, 'asdfgh', 'asdfg', '123', '123', '12969'),
(38, 'asdfgh', 'asdfg', '123', '123', '12969'),
(39, '123', '123', '123', '123', '12969'),
(40, '123444', '1234', '123', '123', '124069'),
(41, 'sdaadsas', 'asdfjk', '213', '321', '3347'),
(42, 'adfssdf', 'asdfads', '144', '155', '1243'),
(43, 'adassad123', '123asddsa', '123', '123', '12969'),
(44, 'asdfghjk', 'askkl;', '100', '100', '10600'),
(45, 'sdfa234', 'werq234sdf', '232', '234', '5398'),
(46, '', '', '123', '123', '600');

-- --------------------------------------------------------

--
-- Table structure for table `courior`
--

CREATE TABLE `courior` (
  `id` int(11) NOT NULL,
  `startdate` date DEFAULT NULL,
  `deliverydate` date DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `departure` varchar(50) DEFAULT NULL,
  `destination` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courior`
--

INSERT INTO `courior` (`id`, `startdate`, `deliverydate`, `weight`, `departure`, `destination`) VALUES
(7, '2022-07-13', '2022-07-15', 2, 'Islamabad', 'Islamabad'),
(8, '2022-07-21', '2022-07-15', 2, 'Lahore', 'Karachi'),
(9, '2022-07-21', '2022-07-22', 2, 'Karachi', 'Islamabad'),
(10, '2022-07-21', '2022-07-22', 2, 'Karachi', 'Islamabad'),
(11, '2022-07-21', '2022-07-22', 2, 'Karachi', 'Islamabad'),
(12, '2022-07-21', '2022-07-22', 2, 'Karachi', 'Islamabad'),
(13, '2022-07-21', '2022-07-22', 11.5, 'Lahore', 'Karachi'),
(14, '2022-07-21', '2022-07-30', 2, 'Islamabad', 'Karachi'),
(15, '2022-07-21', '2022-07-30', 2, 'Islamabad', 'Karachi'),
(16, '2022-07-22', '2022-07-28', 2, 'Karachi', 'Islamabad'),
(17, '2022-07-22', '2022-07-28', 2, 'Karachi', 'Islamabad'),
(18, '2022-07-22', '2022-07-28', 2, 'Karachi', 'Islamabad'),
(19, '2022-07-14', '2022-07-16', 11.5, 'Karachi', 'Islamabad'),
(20, '2022-07-14', '2022-07-16', 11.5, 'Karachi', 'Islamabad'),
(21, '2022-07-13', '2022-07-22', 11.5, 'Islamabad', 'Islamabad'),
(22, '2022-07-13', '2022-07-22', 11.5, 'Islamabad', 'Islamabad'),
(23, '2022-07-15', '2022-07-22', 5, 'Islamabad', 'Karachi'),
(24, '2022-07-15', '2022-07-22', 5, 'Islamabad', 'Karachi'),
(25, '2022-07-22', '2022-07-29', 12, 'Lahore', 'Karachi'),
(26, '2022-07-22', '2022-07-29', 12, 'Lahore', 'Karachi'),
(27, '2022-07-15', '2022-07-15', 123, 'Lahore', 'Karachi'),
(28, '2022-07-15', '2022-07-16', 123, 'Karachi', 'Lahore'),
(29, '2022-07-15', '2022-07-16', 123, 'Karachi', 'Lahore'),
(30, '2022-07-15', '2022-07-16', 123, 'Karachi', 'Lahore'),
(31, '2022-07-15', '2022-07-22', 12, 'Lahore', 'Karachi'),
(32, '2022-07-15', '2022-07-16', 123, 'Karachi', 'Lahore'),
(33, '2022-07-15', '2022-07-16', 123, 'Karachi', 'Lahore'),
(34, '2022-07-15', '2022-07-16', 123, 'Karachi', 'Lahore'),
(35, '2022-07-15', '2022-07-16', 123, 'Karachi', 'Lahore'),
(36, '2022-07-15', '2022-07-16', 123, 'Karachi', 'Lahore'),
(37, '2022-07-15', '2022-07-16', 123, 'Karachi', 'Lahore'),
(38, '2022-07-15', '2022-07-16', 123, 'Karachi', 'Lahore'),
(39, '2022-07-15', '2022-07-20', 123, 'Lahore', 'Karachi'),
(40, '2022-07-16', '2022-07-16', 1234, 'Islamabad', 'Karachi'),
(41, '2022-07-15', '2022-07-16', 23, 'Karachi', 'Lahore'),
(42, '2022-07-21', '2022-07-23', 5, 'Lahore', 'Karachi'),
(43, '2022-07-21', '2022-07-27', 123, 'Lahore', 'Islamabad'),
(44, '2022-07-31', '2022-08-31', 100, 'Lahore', 'Karachi'),
(45, '2022-07-30', '2022-07-31', 44, 'Karachi', 'Lahore'),
(46, '2022-07-07', '2022-07-16', 123, 'Lahore', 'Lahore');

-- --------------------------------------------------------

--
-- Stand-in structure for view `dayname`
-- (See below for the actual view)
--
CREATE TABLE `dayname` (
`count(courior_id)` bigint(21)
,`DAYNAME(o_date)` varchar(9)
);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `datetimes` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `userid`, `datetimes`) VALUES
(1, 11, '2022-07-13 05:25:13'),
(2, 11, '2022-07-13 08:41:26'),
(3, 11, '2022-07-13 02:56:00'),
(4, 13, '2022-07-14 09:59:59'),
(5, 13, '2022-07-14 10:15:17'),
(6, 13, '2022-07-14 10:16:31'),
(7, 13, '2022-07-14 01:19:24'),
(8, 11, '2022-07-15 04:49:00'),
(9, 12, '2022-07-15 05:24:09');

-- --------------------------------------------------------

--
-- Stand-in structure for view `monthname`
-- (See below for the actual view)
--
CREATE TABLE `monthname` (
`count(courior_id)` bigint(21)
,`MONTHNAME(o_date)` varchar(9)
);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `o_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `courior_id` int(11) DEFAULT NULL,
  `o_date` date DEFAULT NULL,
  `paid` decimal(50,0) DEFAULT NULL,
  `acc_no` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`o_id`, `user_id`, `courior_id`, `o_date`, `paid`, `acc_no`) VALUES
(1211, 12, 7, '2022-07-13', '6000', '876837687'),
(1212, 12, 8, '2022-07-22', '7000', '5756577565'),
(1213, 11, 18, '2022-07-13', '3505', '1234237196'),
(1214, 11, 19, '2022-07-13', '1750', '1234237196'),
(1215, 11, 19, '2022-03-13', '1750', '1234237196'),
(1216, 11, 21, '2022-05-13', '2500', '1234237196'),
(1217, 11, 22, '2022-03-13', '2050', '1234237196'),
(1218, 13, 40, '2022-02-14', '2123', '1234567'),
(1219, 13, 42, '2022-05-14', '232423', '1234237196'),
(1220, 13, 43, '2022-05-14', '23122', '1234237196'),
(1221, 13, 44, '2022-05-14', '10600', '1234237196'),
(1222, 13, 45, '2022-03-14', '5398', '1234237196'),
(1223, 13, 45, '2022-03-14', '5398', '1234237196'),
(1224, 13, 45, '2022-03-14', '5398', '1234237196'),
(1225, 13, 45, '2022-02-14', '5398', '1234237196'),
(1226, 13, 45, '2022-02-14', '5398', '1234237196'),
(1227, 13, 45, '2022-02-14', '5398', '1234237196'),
(1228, 13, 45, '2022-02-14', '5398', '1234237196'),
(1229, 13, 45, '2022-05-14', '5398', '1234237196'),
(1230, 13, 45, '2022-05-14', '5398', '1234237196'),
(1231, 13, 45, '2022-07-14', '5398', '1234237196'),
(1232, 13, 45, '2022-07-14', '5398', '1234237196'),
(1233, 13, 45, '2022-07-14', '5398', '1234237196'),
(1234, 13, 45, '2022-07-14', '5398', '1234237196'),
(1235, 13, 45, '2022-07-14', '5398', '1234237196'),
(1236, 13, 45, '2022-07-14', '5398', '1234237196'),
(1237, 13, 45, '2022-07-14', '5398', '1234237196'),
(1238, 13, 45, '2022-07-14', '5398', '1234237196'),
(1239, 13, 45, '2022-07-14', '5398', '1234237196'),
(1240, 13, 45, '2022-07-14', '5398', '1234237196');

-- --------------------------------------------------------

--
-- Table structure for table `priceing`
--

CREATE TABLE `priceing` (
  `height` double DEFAULT NULL,
  `width` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `parcel_cost` decimal(50,0) DEFAULT NULL,
  `h_cost` decimal(50,0) NOT NULL,
  `wt_cost` decimal(50,0) NOT NULL,
  `w_cost` decimal(50,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `priceing`
--

INSERT INTO `priceing` (`height`, `width`, `weight`, `parcel_cost`, `h_cost`, `wt_cost`, `w_cost`) VALUES
(100, 100, 2, '300', '100', '200', '100');

-- --------------------------------------------------------

--
-- Stand-in structure for view `useractivities`
-- (See below for the actual view)
--
CREATE TABLE `useractivities` (
`count(userid)` bigint(21)
,`DAYNAME(datetimes)` varchar(9)
);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT 'user',
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `created` date DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `address`, `role`, `phone`, `email`, `password`, `created`, `status`) VALUES
(11, 'prince', 'karachi', 'admin', '12345678', 'admin', '123', '2022-07-12', 'active'),
(12, 'prince', 'karachi', 'agent', '12345678', 'agent', '123', NULL, 'active'),
(13, 'prince', 'Karachi', 'user', '1234567', 'user', '123', NULL, 'active');

-- --------------------------------------------------------

--
-- Structure for view `dayname`
--
DROP TABLE IF EXISTS `dayname`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dayname`  AS SELECT count(`orders`.`courior_id`) AS `count(courior_id)`, dayname(`orders`.`o_date`) AS `DAYNAME(o_date)` FROM `orders` GROUP BY dayname(`orders`.`o_date`) ;

-- --------------------------------------------------------

--
-- Structure for view `monthname`
--
DROP TABLE IF EXISTS `monthname`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `monthname`  AS SELECT count(`orders`.`courior_id`) AS `count(courior_id)`, monthname(`orders`.`o_date`) AS `MONTHNAME(o_date)` FROM `orders` GROUP BY monthname(`orders`.`o_date`) ;

-- --------------------------------------------------------

--
-- Structure for view `useractivities`
--
DROP TABLE IF EXISTS `useractivities`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `useractivities`  AS SELECT count(`login`.`userid`) AS `count(userid)`, dayname(`login`.`datetimes`) AS `DAYNAME(datetimes)` FROM `login` GROUP BY dayname(`login`.`datetimes`) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courier_detail`
--
ALTER TABLE `courier_detail`
  ADD PRIMARY KEY (`dc_id`);

--
-- Indexes for table `courior`
--
ALTER TABLE `courior`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`o_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courier_detail`
--
ALTER TABLE `courier_detail`
  MODIFY `dc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `courior`
--
ALTER TABLE `courior`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1241;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
