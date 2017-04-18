-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 22, 2016 at 08:26 AM
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
(1, 21200547, 'Rolyn Jaspers', 'C.', 'Demerin', 'Student', 'ICT', '09989781348', '2015-11-10 14:43:00'),
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=131 ;

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
(81, '2015-12-04 16:24:19', 'Login', 'John Doe'),
(82, '2015-12-09 12:52:37', 'Login', 'John Doe'),
(83, '2015-12-09 12:55:15', 'Login', 'John Doe'),
(84, '2015-12-09 12:56:46', 'Logout', 'John Doe'),
(85, '2015-12-10 15:43:37', 'Login', 'John Doe'),
(86, '2016-01-30 11:23:27', 'Login', 'John Doe'),
(87, '2016-01-30 12:30:41', 'Add Item', 'John Doe'),
(88, '2016-01-30 12:33:42', 'Add Item', 'John Doe'),
(89, '2016-01-30 12:35:45', 'Add Item', 'John Doe'),
(90, '2016-01-30 12:36:52', 'Add Item', 'John Doe'),
(91, '2016-01-30 12:36:56', 'Add Item', 'John Doe'),
(92, '2016-01-30 12:36:59', 'Add Item', 'John Doe'),
(93, '2016-01-30 12:38:29', 'Add Item', 'John Doe'),
(94, '2016-01-30 13:05:41', 'Add Item', 'John Doe'),
(95, '2016-01-30 13:06:22', 'Add Item', 'John Doe'),
(96, '2016-01-30 13:08:17', 'Add Item', 'John Doe'),
(97, '2016-01-30 13:08:34', 'Add Item', 'John Doe'),
(98, '2016-01-30 13:17:32', 'Add Item', 'John Doe'),
(99, '2016-01-30 13:17:51', 'Add Item', 'John Doe'),
(100, '2016-01-30 13:20:13', 'Add Item', 'John Doe'),
(101, '2016-01-30 13:20:30', 'Add Item', 'John Doe'),
(102, '2016-01-30 13:59:13', 'Edit Item Details', 'John Doe'),
(103, '2016-01-30 14:00:35', 'Edit Item Details', 'John Doe'),
(104, '2016-01-30 14:10:39', 'Edit Item Details', 'John Doe'),
(105, '2016-01-30 14:22:55', 'Edit Item Details', 'John Doe'),
(106, '2016-01-30 14:24:42', 'Edit Item Details', 'John Doe'),
(107, '2016-01-30 14:28:13', 'Edit Item Details', 'John Doe'),
(108, '2016-01-30 14:29:29', 'Edit Item Details', 'John Doe'),
(109, '2016-01-30 14:29:37', 'Edit Item Details', 'John Doe'),
(110, '2016-01-30 15:26:00', 'Edit Item Details', 'John Doe'),
(111, '2016-01-30 15:27:52', 'Edit Item Details', 'John Doe'),
(112, '2016-01-30 15:27:59', 'Edit Item Details', 'John Doe'),
(113, '2016-01-30 15:28:05', 'Edit Item Details', 'John Doe'),
(114, '2016-01-30 15:44:11', 'Logout', 'John Doe'),
(115, '2016-02-01 09:24:13', 'Login', 'John Doe'),
(116, '2016-02-01 09:32:18', 'Add Client, tt ', 'John Doe'),
(117, '2016-02-01 09:34:44', 'Edit Client, Rolyn Jaspers C. Demerin Details', 'John Doe'),
(118, '2016-02-01 09:38:45', 'Delete Client, tt tt tt Details', 'John Doe'),
(119, '2016-02-01 09:39:53', 'Edit Item Details', 'John Doe'),
(120, '2016-02-01 09:41:25', 'Edit Item Details', 'John Doe'),
(121, '2016-02-01 09:42:10', 'Edit Item Details', 'John Doe'),
(122, '2016-02-01 09:50:44', 'Add Item', 'John Doe'),
(123, '2016-02-01 10:21:15', 'Add Item', 'John Doe'),
(124, '2016-02-02 13:41:40', 'Login', 'John Doe'),
(125, '2016-02-02 16:24:12', 'Login', 'John Doe'),
(126, '2016-02-02 20:30:14', 'Logout', 'John Doe'),
(127, '2016-02-02 20:43:35', 'Login', 'John Doe'),
(128, '2016-02-02 22:44:43', 'Login', 'John Doe'),
(129, '2016-02-03 22:02:43', 'Login', 'John Doe'),
(130, '2016-02-03 23:20:39', 'Logout', 'John Doe');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `item_id_id`, `item_name`, `item_brand`, `item_description`, `item_qty`, `item_price`, `item_type`, `date`) VALUES
(1, 93254, 'g', 'g', 'g', 91, 876, 'Consumable', '2016-01-30 13:20:13'),
(2, 2359878, 'k', 'k', 'k', 111, 875, 'Non-Consumable', '2016-01-30 13:20:30'),
(3, 53673456, 'aaa', 'aaa', 'aaa', 25, 110, 'Non-Consumable', '2016-02-01 09:50:44'),
(4, 1, 'Aricon Remote Control', 'Hitachi', 'Air-conditioner', 1, 5000, 'Non-Consumable', '2016-02-01 10:21:16');

-- --------------------------------------------------------

--
-- Table structure for table `original_qty`
--

CREATE TABLE IF NOT EXISTS `original_qty` (
  `original_qty_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `item_qty` int(11) NOT NULL,
  PRIMARY KEY (`original_qty_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `original_qty`
--

INSERT INTO `original_qty` (`original_qty_id`, `item_id`, `item_qty`) VALUES
(1, 1, 91),
(2, 2, 111),
(3, 3, 25),
(4, 4, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `release_details`
--

INSERT INTO `release_details` (`release_details_id`, `item_id`, `release_id`, `release_status`, `date_return`) VALUES
(1, 4, 1, 'returned', '2016-02-03 22:33:22');

-- --------------------------------------------------------

--
-- Table structure for table `release_qty`
--

CREATE TABLE IF NOT EXISTS `release_qty` (
  `release_qty_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `release_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  PRIMARY KEY (`release_qty_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `release_qty`
--

INSERT INTO `release_qty` (`release_qty_id`, `item_id`, `release_id`, `client_id`) VALUES
(1, 4, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_release`
--

CREATE TABLE IF NOT EXISTS `tbl_release` (
  `release_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `date_borrow` datetime NOT NULL,
  PRIMARY KEY (`release_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_release`
--

INSERT INTO `tbl_release` (`release_id`, `client_id`, `date_borrow`) VALUES
(1, 1, '2016-02-03 22:14:46');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=137 ;

--
-- Dumping data for table `transaction_history`
--

INSERT INTO `transaction_history` (`transaction_history_id`, `item_id`, `action`, `client_id`, `release_id`, `admin_name`, `date_added`) VALUES
(1, 3, 'Returned', 2, 1, 'John Doe', '2016-01-30 12:39:19'),
(2, 1, 'Returned', 2, 1, 'John Doe', '2016-01-30 12:39:19'),
(3, 1, 'Returned', 1, 2, 'John Doe', '2016-01-30 12:58:24'),
(4, 1, 'Returned', 1, 2, 'John Doe', '2016-01-30 12:58:24'),
(5, 1, 'Returned', 1, 2, 'John Doe', '2016-01-30 12:58:24'),
(6, 1, 'Returned', 1, 3, 'John Doe', '2016-01-30 12:58:53'),
(7, 3, 'Returned', 1, 1, 'John Doe', '2016-01-30 13:01:28'),
(8, 1, 'Returned', 1, 1, 'John Doe', '2016-01-30 13:21:15'),
(9, 1, 'Returned', 2, 2, 'John Doe', '2016-01-30 13:25:15'),
(10, 2, 'Returned', 1, 3, 'John Doe', '2016-01-30 13:36:27'),
(11, 1, 'Returned', 1, 4, 'John Doe', '2016-01-30 14:01:12'),
(12, 2, 'Returned', 1, 5, 'John Doe', '2016-01-30 14:13:11'),
(13, 1, 'Borrowed', 1, 6, 'John Doe', '2016-01-30 14:27:45'),
(14, 1, 'Borrowed', 1, 7, 'John Doe', '2016-01-30 15:33:47'),
(15, 2, 'Borrowed', 1, 7, 'John Doe', '2016-01-30 15:33:47'),
(16, 1, 'Borrowed', 1, 8, 'John Doe', '2016-02-01 09:24:44'),
(17, 1, 'Borrowed', 1, 9, 'John Doe', '2016-02-01 09:41:45'),
(18, 2, 'Borrowed', 1, 9, 'John Doe', '2016-02-01 09:41:45'),
(19, 3, 'Borrowed', 1, 10, 'John Doe', '2016-02-01 09:52:22'),
(20, 3, 'Borrowed', 1, 1, 'John Doe', '2016-02-02 14:02:12'),
(21, 3, 'Borrowed', 1, 1, 'John Doe', '2016-02-02 14:04:19'),
(22, 3, 'Borrowed', 1, 2, 'John Doe', '2016-02-02 14:04:42'),
(23, 3, 'Borrowed', 1, 1, 'John Doe', '2016-02-02 16:28:16'),
(24, 3, 'Borrowed', 1, 1, 'John Doe', '2016-02-02 17:03:43'),
(25, 3, 'Borrowed', 1, 1, 'John Doe', '2016-02-02 17:04:46'),
(26, 3, 'Borrowed', 1, 2, 'John Doe', '2016-02-02 17:05:36'),
(27, 3, 'Borrowed', 1, 1, 'John Doe', '2016-02-02 17:06:41'),
(28, 3, 'Borrowed', 1, 1, 'John Doe', '2016-02-02 17:08:25'),
(29, 3, 'Borrowed', 1, 2, 'John Doe', '2016-02-02 17:10:04'),
(30, 3, 'Borrowed', 1, 3, 'John Doe', '2016-02-02 17:10:20'),
(31, 4, 'Borrowed', 1, 3, 'John Doe', '2016-02-02 17:10:20'),
(32, 3, 'Borrowed', 1, 1, 'John Doe', '2016-02-02 20:56:57'),
(33, 4, 'Borrowed', 2, 0, 'John Doe', '2016-02-02 21:00:47'),
(34, 3, 'Borrowed', 1, 1, 'John Doe', '2016-02-02 21:06:55'),
(35, 1, 'Borrowed', 1, 2, 'John Doe', '2016-02-02 21:07:21'),
(36, 3, 'Borrowed', 2, 3, 'John Doe', '2016-02-02 21:07:50'),
(37, 4, 'Borrowed', 2, 3, 'John Doe', '2016-02-02 21:07:50'),
(38, 3, 'Borrowed', 1, 4, 'John Doe', '2016-02-02 21:08:55'),
(39, 3, 'Borrowed', 1, 5, 'John Doe', '2016-02-02 21:11:34'),
(40, 2, 'Borrowed', 1, 6, 'John Doe', '2016-02-02 21:25:53'),
(41, 1, 'Borrowed', 1, 7, 'John Doe', '2016-02-02 21:26:47'),
(42, 3, 'Borrowed', 1, 8, 'John Doe', '2016-02-02 21:27:07'),
(43, 3, 'Borrowed', 1, 9, 'John Doe', '2016-02-02 21:28:53'),
(44, 1, 'Borrowed', 1, 10, 'John Doe', '2016-02-02 21:29:16'),
(45, 2, 'Borrowed', 1, 11, 'John Doe', '2016-02-02 21:29:38'),
(46, 1, 'Borrowed', 1, 12, 'John Doe', '2016-02-02 21:29:49'),
(47, 3, 'Borrowed', 1, 13, 'John Doe', '2016-02-02 21:30:08'),
(48, 2, 'Borrowed', 1, 14, 'John Doe', '2016-02-02 21:30:27'),
(49, 3, 'Borrowed', 1, 1, 'John Doe', '2016-02-02 21:31:41'),
(50, 2, 'Borrowed', 1, 2, 'John Doe', '2016-02-02 21:32:12'),
(51, 2, 'Borrowed', 1, 3, 'John Doe', '2016-02-02 21:33:02'),
(52, 2, 'Borrowed', 1, 4, 'John Doe', '2016-02-02 21:33:56'),
(53, 3, 'Borrowed', 1, 5, 'John Doe', '2016-02-02 21:34:37'),
(54, 3, 'Borrowed', 1, 6, 'John Doe', '2016-02-02 21:34:53'),
(55, 2, 'Borrowed', 1, 7, 'John Doe', '2016-02-02 21:35:04'),
(56, 3, 'Borrowed', 1, 8, 'John Doe', '2016-02-02 21:37:32'),
(57, 2, 'Borrowed', 2, 9, 'John Doe', '2016-02-02 21:37:53'),
(58, 1, 'Borrowed', 1, 10, 'John Doe', '2016-02-02 21:38:07'),
(59, 1, 'Borrowed', 2, 11, 'John Doe', '2016-02-02 21:41:18'),
(60, 2, 'Borrowed', 1, 12, 'John Doe', '2016-02-02 21:42:10'),
(61, 3, 'Borrowed', 1, 13, 'John Doe', '2016-02-02 21:45:12'),
(62, 1, 'Borrowed', 1, 14, 'John Doe', '2016-02-02 21:46:35'),
(63, 2, 'Borrowed', 2, 15, 'John Doe', '2016-02-02 21:46:50'),
(64, 1, 'Borrowed', 2, 16, 'John Doe', '2016-02-02 21:47:16'),
(65, 3, 'Borrowed', 1, 1, 'John Doe', '2016-02-02 21:48:10'),
(66, 4, 'Borrowed', 1, 1, 'John Doe', '2016-02-02 21:48:10'),
(67, 1, 'Borrowed', 1, 1, 'John Doe', '2016-02-02 21:48:11'),
(68, 3, 'Borrowed', 1, 1, 'John Doe', '2016-02-02 22:11:09'),
(69, 4, 'Borrowed', 1, 2, 'John Doe', '2016-02-02 22:11:23'),
(70, 1, 'Borrowed', 1, 3, 'John Doe', '2016-02-02 22:11:29'),
(71, 1, 'Borrowed', 1, 4, 'John Doe', '2016-02-02 22:11:37'),
(72, 3, 'Borrowed', 1, 5, 'John Doe', '2016-02-02 22:11:49'),
(73, 1, 'Borrowed', 1, 5, 'John Doe', '2016-02-02 22:11:50'),
(74, 2, 'Borrowed', 1, 5, 'John Doe', '2016-02-02 22:11:50'),
(75, 3, 'Borrowed', 1, 1, 'John Doe', '2016-02-02 22:14:06'),
(76, 2, 'Borrowed', 1, 2, 'John Doe', '2016-02-02 22:14:22'),
(77, 3, 'Borrowed', 1, 3, 'John Doe', '2016-02-02 22:14:49'),
(78, 2, 'Borrowed', 1, 4, 'John Doe', '2016-02-02 22:15:04'),
(79, 3, 'Borrowed', 1, 5, 'John Doe', '2016-02-02 22:15:17'),
(80, 3, 'Borrowed', 1, 6, 'John Doe', '2016-02-02 22:15:57'),
(81, 2, 'Borrowed', 1, 7, 'John Doe', '2016-02-02 22:16:25'),
(82, 3, 'Borrowed', 1, 8, 'John Doe', '2016-02-02 22:16:41'),
(83, 3, 'Borrowed', 1, 9, 'John Doe', '2016-02-02 22:18:01'),
(84, 3, 'Borrowed', 1, 10, 'John Doe', '2016-02-02 22:18:57'),
(85, 3, 'Borrowed', 1, 11, 'John Doe', '2016-02-02 22:19:45'),
(86, 1, 'Borrowed', 1, 12, 'John Doe', '2016-02-02 22:20:01'),
(87, 2, 'Borrowed', 1, 13, 'John Doe', '2016-02-02 22:20:11'),
(88, 3, 'Borrowed', 1, 1, 'John Doe', '2016-02-02 22:47:12'),
(89, 3, 'Borrowed', 1, 2, 'John Doe', '2016-02-02 22:49:10'),
(90, 1, 'Borrowed', 1, 1, 'John Doe', '2016-02-02 23:07:39'),
(91, 3, 'Borrowed', 1, 1, 'John Doe', '2016-02-02 23:09:20'),
(92, 2, 'Borrowed', 1, 2, 'John Doe', '2016-02-02 23:09:41'),
(93, 3, 'Borrowed', 2, 3, 'John Doe', '2016-02-02 23:10:15'),
(94, 1, 'Borrowed', 2, 3, 'John Doe', '2016-02-02 23:10:15'),
(95, 2, 'Borrowed', 2, 3, 'John Doe', '2016-02-02 23:10:16'),
(96, 3, 'Borrowed', 1, 4, 'John Doe', '2016-02-02 23:11:38'),
(97, 0, 'Borrowed', 1, 5, 'John Doe', '2016-02-02 23:12:29'),
(98, 1, 'Borrowed', 2, 6, 'John Doe', '2016-02-02 23:16:49'),
(99, 3, 'Borrowed', 1, 7, 'John Doe', '2016-02-02 23:18:57'),
(100, 2, 'Borrowed', 2, 8, 'John Doe', '2016-02-02 23:19:46'),
(101, 1, 'Borrowed', 1, 9, 'John Doe', '2016-02-02 23:20:00'),
(102, 4, 'Borrowed', 1, 1, 'John Doe', '2016-02-02 23:21:50'),
(103, 3, 'Borrowed', 2, 1, 'John Doe', '2016-02-02 23:23:00'),
(104, 3, 'Borrowed', 2, 2, 'John Doe', '2016-02-02 23:24:18'),
(105, 1, 'Borrowed', 1, 3, 'John Doe', '2016-02-02 23:25:22'),
(106, 3, 'Borrowed', 1, 4, 'John Doe', '2016-02-02 23:27:11'),
(107, 1, 'Borrowed', 1, 4, 'John Doe', '2016-02-02 23:27:11'),
(108, 3, 'Borrowed', 1, 5, 'John Doe', '2016-02-02 23:28:51'),
(109, 1, 'Borrowed', 1, 5, 'John Doe', '2016-02-02 23:28:52'),
(110, 3, 'Borrowed', 1, 6, 'John Doe', '2016-02-02 23:31:48'),
(111, 1, 'Borrowed', 1, 6, 'John Doe', '2016-02-02 23:31:49'),
(112, 3, 'Borrowed', 1, 7, 'John Doe', '2016-02-02 23:34:02'),
(113, 3, 'Borrowed', 1, 8, 'John Doe', '2016-02-02 23:34:34'),
(114, 1, 'Borrowed', 1, 9, 'John Doe', '2016-02-02 23:36:58'),
(115, 3, 'Borrowed', 1, 10, 'John Doe', '2016-02-02 23:37:45'),
(116, 3, 'Borrowed', 1, 11, 'John Doe', '2016-02-02 23:39:20'),
(117, 3, 'Borrowed', 1, 12, 'John Doe', '2016-02-02 23:40:01'),
(118, 1, 'Borrowed', 1, 12, 'John Doe', '2016-02-02 23:40:01'),
(119, 3, 'Borrowed', 2, 13, 'John Doe', '2016-02-02 23:41:13'),
(120, 1, 'Borrowed', 2, 13, 'John Doe', '2016-02-02 23:41:14'),
(121, 2, 'Borrowed', 2, 13, 'John Doe', '2016-02-02 23:41:15'),
(122, 3, 'Borrowed', 1, 14, 'John Doe', '2016-02-02 23:44:27'),
(123, 3, 'Borrowed', 1, 15, 'John Doe', '2016-02-02 23:44:54'),
(124, 3, 'Borrowed', 1, 16, 'John Doe', '2016-02-02 23:45:13'),
(125, 1, 'Borrowed', 1, 16, 'John Doe', '2016-02-02 23:45:14'),
(126, 3, 'Borrowed', 1, 17, 'John Doe', '2016-02-02 23:45:37'),
(127, 1, 'Borrowed', 1, 17, 'John Doe', '2016-02-02 23:45:37'),
(128, 3, 'Borrowed', 1, 1, 'John Doe', '2016-02-02 23:47:55'),
(129, 3, 'Borrowed', 1, 2, 'John Doe', '2016-02-02 23:51:21'),
(130, 3, 'Borrowed', 1, 3, 'John Doe', '2016-02-02 23:51:57'),
(131, 3, 'Borrowed', 1, 1, 'John Doe', '2016-02-03 00:04:34'),
(132, 1, 'Borrowed', 1, 1, 'John Doe', '2016-02-03 00:04:35'),
(133, 3, 'Borrowed', 1, 1, 'John Doe', '2016-02-03 00:11:59'),
(134, 1, 'Borrowed', 1, 1, 'John Doe', '2016-02-03 00:11:59'),
(135, 3, 'Borrowed', 1, 2, 'John Doe', '2016-02-03 00:12:35'),
(136, 4, 'Borrowed', 1, 1, 'John Doe', '2016-02-03 22:14:46');

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
