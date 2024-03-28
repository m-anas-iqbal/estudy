-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2022 at 05:43 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `academic_dairy`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `as_id` int(11) NOT NULL,
  `cl_id` int(11) DEFAULT NULL,
  `as_des` varchar(100) DEFAULT NULL,
  `asdocname` varchar(50) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `postdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `totalmask` int(11) DEFAULT NULL,
  `name` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`as_id`, `cl_id`, `as_des`, `asdocname`, `startdate`, `enddate`, `postdate`, `totalmask`, `name`) VALUES
(1, NULL, '', '$C:xampp	mpphp6955.tmp', '2022-08-01', '2022-08-11', '0000-00-00 00:00:00', 20, 0),
(2, NULL, 'must attemp', 'Screenshot (1).png', '2022-08-01', '2022-08-18', '0000-00-00 00:00:00', 30, 0),
(3, NULL, 'rrrrrrrrrrrrr', 'eshudiez.docx', '2022-08-01', '2022-08-10', '0000-00-00 00:00:00', 50, 0),
(4, NULL, 'xml', 'eshudiez.docx', '2022-08-02', '2022-08-25', '0000-00-00 00:00:00', 50, 0),
(5, NULL, 'sadasdasdsd', 'eshudiez.docx', '2022-08-01', '2022-08-26', '2022-08-11 13:56:09', 100, 0);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `cl_id` int(11) NOT NULL,
  `t_id` int(11) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `cdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `coments`
--

CREATE TABLE `coments` (
  `com_id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `u_id` int(11) DEFAULT NULL,
  `c_des` varchar(50) DEFAULT NULL,
  `cdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `partent`
--

CREATE TABLE `partent` (
  `g_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `u_id` int(11) DEFAULT NULL,
  `st_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `t_id` int(11) DEFAULT NULL,
  `p_des` varchar(50) DEFAULT NULL,
  `docname` varchar(50) DEFAULT NULL,
  `postdate` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `t_id`, `p_des`, `docname`, `postdate`) VALUES
(1, NULL, 'today class is oof', 'imh.png', '2022-08-11 20:04:02'),
(2, NULL, 'bilal is fail in aptech', 'documentation updated.docx', '2022-08-11 20:05:36');

-- --------------------------------------------------------

--
-- Table structure for table `stclass`
--

CREATE TABLE `stclass` (
  `stclassno` int(11) NOT NULL,
  `cl_id` int(11) DEFAULT NULL,
  `st1` int(12) DEFAULT NULL,
  `st2` int(12) DEFAULT NULL,
  `st3` int(12) DEFAULT NULL,
  `st4` int(12) DEFAULT NULL,
  `st5` int(12) DEFAULT NULL,
  `st6` int(12) DEFAULT NULL,
  `st7` int(12) DEFAULT NULL,
  `st8` int(12) DEFAULT NULL,
  `st9` int(12) DEFAULT NULL,
  `st10` int(12) DEFAULT NULL,
  `st11` int(12) DEFAULT NULL,
  `st12` int(12) DEFAULT NULL,
  `st13` int(12) DEFAULT NULL,
  `st14` int(12) DEFAULT NULL,
  `st15` int(12) DEFAULT NULL,
  `st16` int(12) DEFAULT NULL,
  `st17` int(12) DEFAULT NULL,
  `st18` int(12) DEFAULT NULL,
  `st19` int(12) DEFAULT NULL,
  `st20` int(12) DEFAULT NULL,
  `st21` int(12) DEFAULT NULL,
  `st22` int(12) DEFAULT NULL,
  `st23` int(12) DEFAULT NULL,
  `st24` int(12) DEFAULT NULL,
  `st25` int(12) DEFAULT NULL,
  `st26` int(12) DEFAULT NULL,
  `st27` int(12) DEFAULT NULL,
  `st28` int(12) DEFAULT NULL,
  `st29` int(12) DEFAULT NULL,
  `st30` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `st_id` int(11) NOT NULL,
  `t_id` int(11) DEFAULT NULL,
  `g_id` int(11) DEFAULT NULL,
  `u_id` int(11) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `st_img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subassign`
--

CREATE TABLE `subassign` (
  `sub_id` int(11) NOT NULL,
  `cl_id` int(11) DEFAULT NULL,
  `st_id` int(11) DEFAULT NULL,
  `as_des` varchar(100) DEFAULT NULL,
  `asdocname` varchar(50) DEFAULT NULL,
  `postdate` date DEFAULT NULL,
  `masks` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `t_id` int(11) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `u_id` int(11) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `t_img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(12) NOT NULL,
  `phone` bigint(12) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `phone`, `name`, `role`, `email`, `password`) VALUES
(1, 3132004039, 'bilal', 'student', 'bilal@gmail.com', '098765'),
(48, 76576576, 'bilal', 'student', 'myousufalvi99@gmail.com', '123'),
(52, 349209980, 'hasan', 'student', 'hasan@gmail.com', '4321'),
(54, 121212, 'hasan', 'student', 'raza@gmail.com', '321321321'),
(56, 9870987, 'hasan', 'student', 'sss11@gmail.com', '09870987'),
(57, 123, 'bilal123', 'student', 'raza12@gmail.com', '132'),
(59, 132131, 'bilal', 'student', 'ads34@asdad', '132');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`as_id`),
  ADD KEY `cl_id` (`cl_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`cl_id`),
  ADD KEY `t_id` (`t_id`);

--
-- Indexes for table `coments`
--
ALTER TABLE `coments`
  ADD PRIMARY KEY (`com_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `u_id` (`u_id`);

--
-- Indexes for table `partent`
--
ALTER TABLE `partent`
  ADD PRIMARY KEY (`g_id`),
  ADD KEY `u_id` (`u_id`),
  ADD KEY `st_id` (`st_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `t_id` (`t_id`);

--
-- Indexes for table `stclass`
--
ALTER TABLE `stclass`
  ADD PRIMARY KEY (`stclassno`),
  ADD KEY `cl_id` (`cl_id`),
  ADD KEY `st1` (`st1`),
  ADD KEY `st2` (`st2`),
  ADD KEY `st3` (`st3`),
  ADD KEY `st4` (`st4`),
  ADD KEY `st5` (`st5`),
  ADD KEY `st6` (`st6`),
  ADD KEY `st7` (`st7`),
  ADD KEY `st8` (`st8`),
  ADD KEY `st9` (`st9`),
  ADD KEY `st10` (`st10`),
  ADD KEY `st11` (`st11`),
  ADD KEY `st12` (`st12`),
  ADD KEY `st13` (`st13`),
  ADD KEY `st14` (`st14`),
  ADD KEY `st15` (`st15`),
  ADD KEY `st16` (`st16`),
  ADD KEY `st17` (`st17`),
  ADD KEY `st18` (`st18`),
  ADD KEY `st19` (`st19`),
  ADD KEY `st20` (`st20`),
  ADD KEY `st21` (`st21`),
  ADD KEY `st22` (`st22`),
  ADD KEY `st23` (`st23`),
  ADD KEY `st24` (`st24`),
  ADD KEY `st25` (`st25`),
  ADD KEY `st26` (`st26`),
  ADD KEY `st27` (`st27`),
  ADD KEY `st28` (`st28`),
  ADD KEY `st29` (`st29`),
  ADD KEY `st30` (`st30`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`st_id`),
  ADD KEY `g_id` (`g_id`),
  ADD KEY `u_id` (`u_id`),
  ADD KEY `t_id` (`t_id`) USING BTREE;

--
-- Indexes for table `subassign`
--
ALTER TABLE `subassign`
  ADD PRIMARY KEY (`sub_id`),
  ADD KEY `cl_id` (`cl_id`),
  ADD KEY `st_id` (`st_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`t_id`),
  ADD KEY `u_id` (`u_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `as_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `cl_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coments`
--
ALTER TABLE `coments`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partent`
--
ALTER TABLE `partent`
  MODIFY `g_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stclass`
--
ALTER TABLE `stclass`
  MODIFY `stclassno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `st_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subassign`
--
ALTER TABLE `subassign`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignments`
--
ALTER TABLE `assignments`
  ADD CONSTRAINT `assignments_ibfk_1` FOREIGN KEY (`cl_id`) REFERENCES `class` (`cl_id`),
  ADD CONSTRAINT `assignments_ibfk_2` FOREIGN KEY (`cl_id`) REFERENCES `class` (`cl_id`);

--
-- Constraints for table `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `class_ibfk_1` FOREIGN KEY (`t_id`) REFERENCES `teacher` (`t_id`);

--
-- Constraints for table `coments`
--
ALTER TABLE `coments`
  ADD CONSTRAINT `coments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`),
  ADD CONSTRAINT `coments_ibfk_2` FOREIGN KEY (`u_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `partent`
--
ALTER TABLE `partent`
  ADD CONSTRAINT `partent_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `partent_ibfk_2` FOREIGN KEY (`st_id`) REFERENCES `student` (`st_id`);

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`t_id`) REFERENCES `teacher` (`t_id`);

--
-- Constraints for table `stclass`
--
ALTER TABLE `stclass`
  ADD CONSTRAINT `stclass_ibfk_1` FOREIGN KEY (`cl_id`) REFERENCES `class` (`cl_id`),
  ADD CONSTRAINT `stclass_ibfk_10` FOREIGN KEY (`st9`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `stclass_ibfk_11` FOREIGN KEY (`st10`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `stclass_ibfk_12` FOREIGN KEY (`st11`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `stclass_ibfk_13` FOREIGN KEY (`st12`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `stclass_ibfk_14` FOREIGN KEY (`st13`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `stclass_ibfk_15` FOREIGN KEY (`st14`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `stclass_ibfk_16` FOREIGN KEY (`st15`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `stclass_ibfk_17` FOREIGN KEY (`st16`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `stclass_ibfk_18` FOREIGN KEY (`st17`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `stclass_ibfk_19` FOREIGN KEY (`st18`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `stclass_ibfk_2` FOREIGN KEY (`st1`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `stclass_ibfk_20` FOREIGN KEY (`st19`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `stclass_ibfk_21` FOREIGN KEY (`st20`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `stclass_ibfk_22` FOREIGN KEY (`st21`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `stclass_ibfk_23` FOREIGN KEY (`st22`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `stclass_ibfk_24` FOREIGN KEY (`st23`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `stclass_ibfk_25` FOREIGN KEY (`st24`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `stclass_ibfk_26` FOREIGN KEY (`st25`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `stclass_ibfk_27` FOREIGN KEY (`st26`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `stclass_ibfk_28` FOREIGN KEY (`st27`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `stclass_ibfk_29` FOREIGN KEY (`st28`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `stclass_ibfk_3` FOREIGN KEY (`st2`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `stclass_ibfk_30` FOREIGN KEY (`st29`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `stclass_ibfk_31` FOREIGN KEY (`st30`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `stclass_ibfk_4` FOREIGN KEY (`st3`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `stclass_ibfk_5` FOREIGN KEY (`st4`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `stclass_ibfk_6` FOREIGN KEY (`st5`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `stclass_ibfk_7` FOREIGN KEY (`st6`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `stclass_ibfk_8` FOREIGN KEY (`st7`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `stclass_ibfk_9` FOREIGN KEY (`st8`) REFERENCES `users` (`id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`t_id`) REFERENCES `teacher` (`t_id`),
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`g_id`) REFERENCES `partent` (`g_id`),
  ADD CONSTRAINT `student_ibfk_3` FOREIGN KEY (`u_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `subassign`
--
ALTER TABLE `subassign`
  ADD CONSTRAINT `subassign_ibfk_1` FOREIGN KEY (`cl_id`) REFERENCES `class` (`cl_id`),
  ADD CONSTRAINT `subassign_ibfk_2` FOREIGN KEY (`cl_id`) REFERENCES `class` (`cl_id`),
  ADD CONSTRAINT `subassign_ibfk_3` FOREIGN KEY (`st_id`) REFERENCES `student` (`st_id`);

--
-- Constraints for table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `teacher_ibfk_2` FOREIGN KEY (`u_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
