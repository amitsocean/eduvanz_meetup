-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2020 at 02:21 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eduvanz_meetup`
--

-- --------------------------------------------------------

--
-- Table structure for table `meetup_registry`
--

CREATE TABLE `meetup_registry` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `age` tinyint(1) NOT NULL,
  `dob` date NOT NULL,
  `profession` enum('Employed','Student','','') NOT NULL,
  `locality` varchar(50) NOT NULL,
  `no_of_guests` tinyint(4) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `meetup_registry`
--

INSERT INTO `meetup_registry` (`id`, `name`, `age`, `dob`, `profession`, `locality`, `no_of_guests`, `address`) VALUES
(10, 'John1', 127, '1990-02-01', 'Employed', 'Mumbai', 2, 'At pt. A while back I needed to count the amount o'),
(11, 'John', 127, '1990-02-01', 'Employed', 'Mumbai', 2, 'At pt. A while back I needed to count the amount o'),
(12, 'John', 127, '1990-02-01', 'Employed', 'Mumbai', 2, 'At pt. A while back I needed to count the amount o'),
(13, 'david1', 127, '1990-02-01', 'Employed', 'Pune', 2, 'At pt. A while back I needed to count the amount o'),
(14, 'John', 127, '1990-02-01', 'Employed', 'Mumbai', 2, 'At pt. A while back I needed to count the amount o'),
(15, 'John', 127, '1990-02-01', 'Employed', 'Mumbai', 2, 'At pt. A while back I needed to count the amount o'),
(16, 'John', 127, '1990-02-01', 'Employed', 'Mumbai', 2, 'At pt. A while back I needed to count the amount o');

-- --------------------------------------------------------

--
-- Table structure for table `m_user`
--

CREATE TABLE `m_user` (
  `id` int(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(250) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_user`
--

INSERT INTO `m_user` (`id`, `username`, `password`, `level`) VALUES
(2, 'admin', 'ca26331c6bfbf9487a7cde0f1f95644449e83baa', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `meetup_registry`
--
ALTER TABLE `meetup_registry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_user`
--
ALTER TABLE `m_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `meetup_registry`
--
ALTER TABLE `meetup_registry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `m_user`
--
ALTER TABLE `m_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
