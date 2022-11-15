-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2022 at 12:24 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `conference_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `allocation`
--

CREATE TABLE `allocation` (
  `allocation_id` int(11) NOT NULL,
  `reviewer_id` int(255) NOT NULL,
  `paper_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bid`
--

CREATE TABLE `bid` (
  `bid_id` int(25) NOT NULL,
  `reviewer_id` int(255) NOT NULL,
  `paper_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `comment_message` text NOT NULL,
  `reviewer_name` text NOT NULL,
  `review_id` int(11) NOT NULL,
  `paper_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `paper`
--

CREATE TABLE `paper` (
  `paper_id` int(11) NOT NULL,
  `paper_name` varchar(255) NOT NULL,
  `author_name` varchar(255) NOT NULL,
  `author_id` int(255) NOT NULL,
  `collaborator` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `author_rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int(11) NOT NULL,
  `reviewmessage` longtext NOT NULL,
  `reviewer_id` int(255) NOT NULL,
  `rating` text NOT NULL,
  `paper_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role_name`) VALUES
(1, 'admin'),
(2, 'author'),
(3, 'reviewer'),
(4, 'conference chair');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(13) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` text NOT NULL,
  `Gender` text NOT NULL,
  `status` text NOT NULL,
  `allocation_limit` int(11) NOT NULL,
  `current_allocation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `contact`, `email`, `role_id`, `name`, `Gender`, `status`, `allocation_limit`, `current_allocation`) VALUES
(1, 'admin', 'adminadmin', '+60162002078', 'banana327@gmail.com', 1, 'ENG QI XIAN', 'Male', 'Active', 0, 0),
(17, 'author', 'authorauthor', '23213124', 'qixian0622@gmail.com', 2, 'author', 'Male', 'Active', 0, 0),
(18, 'banana', 'banana', '324343', 'banana@gmail.com', 2, 'banana', 'Male', 'Active', 0, 0),
(19, 'orange ', 'orange', '232323', 'orange@gmail.com', 2, 'orange', 'Female', 'Active', 0, 0),
(20, 'apple', 'apple', '232323', 'apple@gmail.com', 2, 'apple', 'Male', 'Active', 0, 0),
(21, 'bb', 'wwww', '023434', 'ww@gmail.com', 3, 'ww', 'Female', 'Active', 0, 0),
(22, 'yy', 'yyyyyy', '344', 'yy@gmail.com', 3, 'fdf', 'Female', 'Active', 0, 0),
(23, 'ronaldo', 'dsafasf', '2344', 'ronaldo@gmail.com', 2, 'ronaldo', 'Male', 'Active', 0, 0),
(25, 'reviewer2', 'reviewer2', '2321312', 'reviewer@gmail.com', 3, 'reviewer2', 'Male', 'Active', 7, 0),
(28, 'mbappe', 'mbappe', '544554', 'mbappe@gmail.com', 3, 'mbappe', 'Male', 'Active', 5, 0),
(29, 'reviewer1', 'reviewer1', '233434', 'reviewer1@gmail.com', 3, 'reviewer1 ', 'Male', 'Active', 3, 0),
(30, 'chair', 'chair', '2334433', 'chair@gmail.com', 4, 'conference chair', 'Male', 'Active', 5, 0),
(31, 'reviewer3', 'reviewer3', '344', 'reviewer3@gmail.com', 3, 'reviewer3', 'Female', 'Active', 5, 0),
(33, 'potter', 'potter', '023434', 'potter@gmail.com', 3, 'potter', 'Male', '', 5, 0),
(34, 'nanan', 'nanan', '2321312', 'nanan@gmail.com', 2, 'nanan', 'Male', '', 5, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allocation`
--
ALTER TABLE `allocation`
  ADD PRIMARY KEY (`allocation_id`);

--
-- Indexes for table `bid`
--
ALTER TABLE `bid`
  ADD PRIMARY KEY (`bid_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `paper`
--
ALTER TABLE `paper`
  ADD PRIMARY KEY (`paper_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allocation`
--
ALTER TABLE `allocation`
  MODIFY `allocation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `bid`
--
ALTER TABLE `bid`
  MODIFY `bid_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `paper`
--
ALTER TABLE `paper`
  MODIFY `paper_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
