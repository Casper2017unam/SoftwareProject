-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 09, 2015 at 04:49 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rms`
--
CREATE DATABASE IF NOT EXISTS `rms` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `rms`;

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `school_id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`client_id`, `school_id`, `firstname`, `middlename`, `lastname`, `type`, `department`, `contact`, `date`) VALUES
(1, 21200547, 'Rolyn Jasper', 'C.', 'Demerin', 'Student', 'ICT', '09989781348', '2015-11-10 14:43:00'),
(2, 23534598, 'Ludevic', 'A.', 'Servilla', 'Student', 'ICT', '09345453453', '2015-11-20 13:35:55');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE IF NOT EXISTS `history` (
  `history_id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `action` varchar(100) NOT NULL,
  `data` varchar(100) NOT NULL,
  PRIMARY KEY (`history_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=82 ;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`history_id`, `date`, `action`, `data`) VALUES
(1, '2015-11-10 14:01:56', 'Add User', ' John Doe'),
(2, '2015-11-10 14:02:41', 'Login', 'John Doe'),
(3, '2015-11-10 14:03:05', 'Add User', 'John Doe'),
(4, '2015-11-10 14:04:16', 'Logout', 'John Doe'),
(5, '2015-11-10 14:04:49', 'Login', 'Jane Doe'),
(6, '2015-11-10 14:04:56', 'Logout', 'Jane Doe'),
(7, '2015-11-10 14:05:09', 'Login', 'Jane Doe'),
(8, '2015-11-10 14:05:31', 'Add User', 'Jane Doe'),
(9, '2015-11-10 14:41:30', 'Add Client', 'John Doe'),
(10, '2015-11-10 14:41:34', 'Add Client', 'John Doe'),
(11, '2015-11-10 14:43:00', 'Add Client', 'John Doe'),
(12, '2015-11-10 14:45:34', 'Logout', 'John Doe'),
(13, '2015-11-17 12:36:35', 'Login', 'John Doe'),
(14, '2015-11-17 12:50:47', 'Logout', 'John Doe'),
(15, '2015-11-17 12:50:51', 'Login', 'John Doe'),
(16, '2015-11-17 13:35:08', 'Add Item', 'John Doe'),
(17, '2015-11-18 15:05:00', 'Login', 'John Doe'),
(18, '2015-11-18 15:44:13', 'Add Item', 'John Doe'),
(19, '2015-11-18 16:16:45', 'Edit Item Details', 'John Doe'),
(20, '2015-11-18 16:17:04', 'Edit Item Details', 'John Doe'),
(21, '2015-11-18 16:27:13', 'Add Item', 'John Doe'),
(22, '2015-11-18 16:27:20', 'Delete Item', ' '),
(23, '2015-11-18 16:27:44', 'Add Item', 'John Doe'),
(24, '2015-11-18 16:30:25', 'Delete Item', ' '),
(25, '2015-11-18 16:34:10', 'Add Item', 'John Doe'),
(26, '2015-11-18 16:34:57', 'Delete Item', 'John Doe'),
(27, '2015-11-18 16:36:05', 'Logout', 'John Doe'),
(28, '2015-11-18 16:36:47', 'Login', 'John Doe'),
(29, '2015-11-18 16:37:15', 'Logout', 'John Doe'),
(30, '2015-11-20 10:37:19', 'Login', 'John Doe'),
(31, '2015-11-20 13:24:38', 'Logout', 'John Doe'),
(32, '2015-11-20 13:25:35', 'Login', 'John Doe'),
(33, '2015-11-20 13:31:44', 'Login', 'John Doe'),
(34, '2015-11-20 13:32:35', 'Add User', 'John Doe'),
(35, '2015-11-20 13:35:55', 'Add Client', 'John Doe'),
(36, '2015-11-20 13:37:29', 'Add Item', 'John Doe'),
(37, '2015-11-21 18:32:01', 'Login', 'John Doe'),
(38, '2015-11-21 18:34:06', 'Logout', 'John Doe'),
(39, '2015-11-21 18:34:11', 'Login', 'John Doe'),
(40, '2015-11-21 18:37:01', 'Add Item', 'John Doe'),
(41, '2015-11-21 22:39:38', 'Edit Client Details', 'John Doe'),
(42, '2015-11-21 22:40:21', 'Edit Client Details', 'John Doe'),
(43, '2015-11-21 22:40:41', 'Edit Client Details', 'John Doe'),
(44, '2015-11-21 22:46:41', 'Add Client', 'John Doe'),
(45, '2015-11-21 22:47:27', 'Delete Client', 'John Doe'),
(46, '2015-11-21 22:48:02', 'Delete Client', 'John Doe'),
(47, '2015-11-21 22:48:30', 'Add Client', 'John Doe'),
(48, '2015-11-21 22:48:52', 'Delete Client', 'John Doe'),
(49, '2015-11-21 23:12:05', 'Edit User Details', 'John Doe'),
(50, '2015-11-21 23:16:23', 'Delete User', 'John Doe'),
(51, '2015-11-21 23:16:31', 'Delete User', 'John Doe'),
(52, '2015-11-21 23:16:40', 'Logout', 'John Doe'),
(53, '2015-11-21 23:17:28', 'Login', 'Jane Doe'),
(54, '2015-11-21 23:18:51', 'Logout', 'Jane Doe'),
(55, '2015-11-22 23:03:55', 'Login', 'John Doe'),
(56, '2015-11-23 00:09:10', 'Edit Client Details', 'John Doe'),
(57, '2015-11-23 00:09:50', 'Edit Client Details', 'John Doe'),
(58, '2015-11-23 00:10:01', 'Edit Client Details', 'John Doe'),
(59, '2015-11-23 00:15:53', 'Edit User Details', 'John Doe'),
(60, '2015-11-23 00:16:03', 'Edit User Details', 'John Doe'),
(61, '2015-11-23 00:17:51', 'Login', 'John Doe'),
(62, '2015-11-23 00:17:56', 'Logout', 'John Doe'),
(63, '2015-11-23 00:18:40', 'Login', 'John Doe'),
(64, '2015-11-23 00:24:12', 'Logout', 'John Doe'),
(65, '2015-11-23 07:59:10', 'Login', 'John Doe'),
(66, '2015-11-23 08:10:45', 'Logout', 'John Doe'),
(67, '2015-11-23 08:43:58', 'Login', 'John Doe'),
(68, '2015-11-23 08:50:00', 'Logout', 'John Doe'),
(69, '2015-11-23 11:36:30', 'Login', 'John Doe'),
(70, '2015-11-23 12:14:46', 'Logout', 'Jane Doe'),
(71, '2015-11-23 12:14:50', 'Login', 'John Doe'),
(72, '2015-11-23 13:18:53', 'Logout', ' '),
(73, '2015-11-23 13:18:56', 'Login', 'John Doe'),
(74, '2015-11-23 13:22:42', 'Logout', 'John Doe'),
(75, '2015-11-23 13:23:02', 'Login', 'John Doe'),
(76, '2015-12-01 16:25:51', 'Login', 'John Doe'),
(77, '2015-12-01 18:14:18', 'Logout', 'John Doe'),
(78, '2015-12-01 22:27:44', 'Login', 'John Doe'),
(79, '2015-12-02 01:06:56', 'Logout', 'Jane Doe'),
(80, '2015-12-02 15:27:04', 'Login', 'John Doe'),
(81, '2015-12-04 16:24:19', 'Login', 'John Doe');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE IF NOT EXISTS `item` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id_id` int(11) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `item_brand` varchar(100) NOT NULL,
  `item_description` varchar(100) NOT NULL,
  `item_qty` int(11) NOT NULL,
  `item_price` int(11) NOT NULL,
  `item_type` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `item_id_id`, `item_name`, `item_brand`, `item_description`, `item_qty`, `item_price`, `item_type`, `date`) VALUES
(1, 21002340, 'Xtyle Optical Mouse', 'Mac', 'Optical Mouse', 60, 200, 'Consumable', '2015-11-17 13:35:08'),
(2, 23508020, 'USB Cord', 'Samsung', 'USB Cord 3.0', 35, 180, 'Non-Consumable', '2015-11-18 15:44:13'),
(3, 82458334, 'Mouse Pad', 'Acer', 'Mouse Pad Duo', 46, 50, 'Non-Consumable', '2015-11-20 13:37:30');

-- --------------------------------------------------------

--
-- Table structure for table `release_details`
--

CREATE TABLE IF NOT EXISTS `release_details` (
  `release_details_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `release_id` int(11) NOT NULL,
  `release_status` varchar(100) NOT NULL,
  `date_return` datetime NOT NULL,
  PRIMARY KEY (`release_details_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_release`
--

CREATE TABLE IF NOT EXISTS `tbl_release` (
  `release_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `date_borrow` datetime NOT NULL,
  PRIMARY KEY (`release_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_history`
--

CREATE TABLE IF NOT EXISTS `transaction_history` (
  `transaction_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `client_id` int(11) NOT NULL,
  `release_id` int(11) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`transaction_history_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `transaction_history`
--

INSERT INTO `transaction_history` (`transaction_history_id`, `item_id`, `action`, `client_id`, `release_id`, `admin_name`, `date_added`) VALUES
(1, 2, 'Borrowing Item', 2, 1, 'Jane Doe', '2015-12-02 00:23:33'),
(2, 1, 'Borrowing Item', 2, 1, 'Jane Doe', '2015-12-02 00:23:34'),
(3, 3, 'Borrowing Item', 1, 2, 'Jane Doe', '2015-12-02 00:30:13'),
(4, 2, 'Borrowing Item', 1, 2, 'Jane Doe', '2015-12-02 00:30:13'),
(5, 1, 'Borrowing Item', 1, 2, 'Jane Doe', '2015-12-02 00:30:14'),
(6, 3, 'Borrowing Item', 2, 3, 'John Doe', '2015-12-02 15:28:04'),
(7, 2, 'Borrowing Item', 2, 3, 'John Doe', '2015-12-02 15:28:04'),
(8, 1, 'Borrowing Item', 2, 3, 'John Doe', '2015-12-02 15:28:04'),
(9, 3, 'Borrowing Item', 1, 4, 'John Doe', '2015-12-04 16:58:09');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `user_added`) VALUES
(1, 'John', 'M.', 'Doe', 'admin', 'admin', '2015-11-10 14:01:56'),
(2, 'Jane', 'M.', 'Doe', 'admin', 'jane', '2015-11-10 14:03:05');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
