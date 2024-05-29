-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 15, 2019 at 07:14 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'admin123', '13-03-2018 11:25:36 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE IF NOT EXISTS `appointment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctorSpecialization` varchar(255) NOT NULL,
  `doctorId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `consultancyFees` int(11) NOT NULL,
  `appointmentDate` varchar(255) NOT NULL,
  `appointmentTime` varchar(255) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userStatus` int(11) NOT NULL,
  `doctorStatus` int(11) NOT NULL,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(1, 'Dentist', 1, 1, 500, '2016-12-31', '09:25', '2017-01-01 05:59:02', 1, 0, ''),
(2, 'Homeopath', 4, 5, 700, '2017-01-11', '14:10', '2017-01-07 13:32:58', 0, 1, ''),
(3, 'General Physician', 3, 8, 1200, '2018-03-13', '10:50', '2018-03-13 05:24:11', 1, 1, ''),
(4, 'Homeopath', 9, 10, 600, '2018-03-13', '20:20', '2018-03-13 12:08:32', 1, 1, ''),
(5, 'Ayurveda', 5, 10, 8050, '2018-03-15', '10:00', '2018-03-13 15:43:58', 0, 1, ''),
(6, 'General Physician', 3, 11, 1200, '2019-08-15', '01:00', '2019-08-15 10:47:56', 0, 1, ''),
(7, 'General Physician', 10, 11, 600, '2019-08-15', '13:00', '2019-08-15 10:52:06', 1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE IF NOT EXISTS `doctors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `specilization` varchar(255) NOT NULL,
  `doctorName` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `docFees` varchar(255) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `docEmail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'Dentist', 'Anuj', 'New Delhi', '500', 8285703354, 'anuj.lpu1@gmail.com', '5c428d8875d2948607f3e3fe134d71b4', '2016-12-29 11:55:37', '04-01-2017 01:27:51 PM'),
(2, 'Homeopath', 'Sarita Pandey', 'Varanasi', '600', 2147483647, 'sarita@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-29 12:21:51', ''),
(3, 'General Physician', 'Nitesh Kumar', 'Ghaziabad', '1200', 8523699999, 'nitesh@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 13:13:35', ''),
(4, 'Homeopath', 'Vijay Verma', 'New Delhi', '700', 25668888, 'vijay@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 13:15:09', ''),
(5, 'Ayurveda', 'Sanjeev', 'Gurugram', '8050', 442166644646, 'sanjeev@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 13:17:07', ''),
(6, 'General Physician', 'Amrita', 'New Delhi India', '2500', 45497964, 'amrita@test.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 13:22:50', ''),
(8, 'General Physician', 'abuthaeer', 'pollachi', '100', 8643017001, 'm.abuthaeer@gmail.com', 'e388c1c5df4933fa01f6da9f92595589', '2018-01-10 15:42:30', ''),
(9, 'Homeopath', 'Tesla', 'Cochin', '600', 98765432150, 'tesla@yaho.com', 'e10adc3949ba59abbe56e057f20f883e', '2018-03-13 11:54:29', ''),
(10, 'General Physician', 'Bala Kumar', '23, Millroad, Erode', '600', 9876543215, 'balakumar@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-15 10:51:09', '');

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE IF NOT EXISTS `doctorslog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 2, 'sarita@gmail.com', '0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-01-06 11:23:31', '', 1),
(2, 0, 'admin', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-01-06 12:06:07', '', 0),
(3, 2, 'sarita@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-01-06 12:06:37', '06/01/2017 07:36:45', 1),
(4, 2, 'sarita@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-01-06 12:11:33', '12:11:46', 1),
(5, 2, 'sarita@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-01-06 12:25:16', '06-01-2017 12:27:47 PM', 1),
(6, 0, 'admin', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-01-06 12:37:12', '', 0),
(7, 0, 'info@w3gang.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-01-07 13:34:42', '', 0),
(8, 0, 'info@w3gang.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-01-07 13:34:55', '', 0),
(9, 2, 'sarita@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-01-07 13:35:54', '07-01-2017 01:36:28 PM', 1),
(10, 8, 'm.abuthaeer@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2018-01-10 15:45:40', '10-01-2018 03:58:50 PM', 1),
(11, 0, 'm.abuthaeer@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2018-03-13 05:22:09', '', 0),
(12, 0, 'm.abuthaeer@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2018-03-13 05:22:16', '', 0),
(13, 0, 'm.abuthaeer@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2018-03-13 11:53:11', '', 0),
(14, 9, 'tesla@yaho.com', '127.0.0.1\0\0\0\0\0\0\0', '2018-03-13 11:57:05', '13-03-2018 11:57:08 AM', 1),
(15, 9, 'tesla@yaho.com', '127.0.0.1\0\0\0\0\0\0\0', '2018-03-13 11:57:32', '13-03-2018 12:05:51 PM', 1),
(16, 9, 'tesla@yaho.com', '127.0.0.1\0\0\0\0\0\0\0', '2018-03-13 12:10:24', '13-03-2018 12:39:29 PM', 1),
(17, 9, 'tesla@yaho.com', '127.0.0.1\0\0\0\0\0\0\0', '2018-03-13 12:45:48', '13-03-2018 02:02:31 PM', 1),
(18, 9, 'tesla@yaho.com', '127.0.0.1\0\0\0\0\0\0\0', '2018-03-13 14:27:52', '13-03-2018 02:43:53 PM', 1),
(19, 9, 'tesla@yaho.com', '127.0.0.1\0\0\0\0\0\0\0', '2018-03-13 15:14:59', '13-03-2018 03:19:56 PM', 1),
(20, 9, 'tesla@yaho.com', '127.0.0.1\0\0\0\0\0\0\0', '2018-03-13 15:25:43', '13-03-2018 03:31:37 PM', 1),
(21, 9, 'tesla@yaho.com', '127.0.0.1\0\0\0\0\0\0\0', '2018-03-13 15:46:07', '13-03-2018 03:47:58 PM', 1),
(22, 9, 'tesla@yaho.com', '127.0.0.1\0\0\0\0\0\0\0', '2018-03-13 15:55:12', '13-03-2018 03:55:36 PM', 1),
(23, 0, 'nitesh@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-08-15 10:48:40', '', 0),
(24, 0, 'nitesh@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-08-15 10:48:47', '', 0),
(25, 0, 'm.abuthaeer@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-08-15 10:49:21', '', 0),
(26, 10, 'balakumar@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-08-15 10:53:20', '15-08-2019 10:55:41 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE IF NOT EXISTS `doctorspecilization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `specilization` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Gynecologist/Obstetrician', '2016-12-28 12:07:25', ''),
(2, 'General Physician', '2016-12-28 12:08:12', ''),
(3, 'Dermatologist', '2016-12-28 12:08:48', ''),
(4, 'Homeopath', '2016-12-28 12:09:26', ''),
(5, 'Ayurveda', '2016-12-28 12:09:51', ''),
(6, 'Dentist', '2016-12-28 12:10:08', ''),
(7, 'Ear-Nose-Throat (Ent) Specialist', '2016-12-28 12:11:18', ''),
(9, 'Demo test', '2016-12-28 13:07:39', '28-12-2016 01:28:42 PM'),
(10, 'Bones Specialist demo', '2017-01-07 13:37:53', '10-01-2018 10:46:41 AM');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE IF NOT EXISTS `medicine` (
  `mid` int(10) NOT NULL AUTO_INCREMENT,
  `doctorId` int(10) NOT NULL,
  `userId` int(10) NOT NULL,
  `mDate` date NOT NULL,
  `mediName` varchar(25) NOT NULL,
  `mediNo` int(10) NOT NULL,
  `tTime` varchar(25) NOT NULL,
  `type` varchar(25) NOT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`mid`, `doctorId`, `userId`, `mDate`, `mediName`, `mediNo`, `tTime`, `type`) VALUES
(1, 9, 10, '2018-03-13', 'Beechoice', 10, 'Morning', 'After Food'),
(2, 9, 10, '2018-03-13', 'Xlo', 10, 'After Noon', 'After Food'),
(3, 9, 10, '2018-03-13', 'Batinas', 10, 'Night', 'Before Food'),
(4, 9, 10, '2018-03-13', 'Leone', 10, 'Night', 'After Food'),
(5, 10, 11, '2019-08-15', 'Possitolia', 30, 'Night', 'After Food'),
(6, 10, 11, '2019-08-15', 'Kolipota', 15, 'Morning', 'Before Food');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `msgid` int(10) NOT NULL AUTO_INCREMENT,
  `fromId` int(10) NOT NULL,
  `msgfrom` varchar(25) NOT NULL,
  `toId` int(10) NOT NULL,
  `message` text NOT NULL,
  `msgdate` datetime NOT NULL,
  PRIMARY KEY (`msgid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`msgid`, `fromId`, `msgfrom`, `toId`, `message`, `msgdate`) VALUES
(8, 9, 'Tesla', 10, 'Next Appointment 24.3.2018 Morning', '2018-03-13 15:17:27'),
(9, 10, '', 9, 'Tablet name ?', '2018-03-13 15:23:14');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy`
--

CREATE TABLE IF NOT EXISTS `pharmacy` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `phName` varchar(25) NOT NULL,
  `phEmail` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `pharmacy`
--

INSERT INTO `pharmacy` (`id`, `phName`, `phEmail`, `password`) VALUES
(1, 'Star', 'star@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacylog`
--

CREATE TABLE IF NOT EXISTS `pharmacylog` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `userip` binary(25) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `logout` varchar(25) NOT NULL,
  `status` int(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `pharmacylog`
--

INSERT INTO `pharmacylog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 1, 'star@gmail.com', '127.0.0.1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2019-08-15 11:18:49', '', 1),
(2, 1, 'star@gmail.com', '127.0.0.1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2019-08-15 11:18:58', '', 1),
(3, 1, 'star@gmail.com', '127.0.0.1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2019-08-15 11:19:55', '', 1),
(4, 1, 'star@gmail.com', '127.0.0.1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2019-08-15 11:21:27', '', 1),
(5, 1, 'star@gmail.com', '127.0.0.1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2019-08-15 11:22:10', '', 1),
(6, 1, 'star@gmail.com', '127.0.0.1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2019-08-15 11:22:41', '', 1),
(7, 1, 'star@gmail.com', '127.0.0.1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2019-08-15 11:23:42', '', 1),
(8, 0, 'star@gmail.com', '127.0.0.1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2019-08-15 11:24:05', '', 0),
(9, 1, 'star@gmail.com', '127.0.0.1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2019-08-15 12:12:47', '', 1),
(10, 1, 'star@gmail.com', '127.0.0.1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2019-08-15 12:40:38', '15-08-2019 12:40:38 PM', 1),
(11, 1, 'star@gmail.com', '127.0.0.1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2019-08-15 12:41:09', '15-08-2019 12:41:09 PM', 1),
(12, 1, 'star@gmail.com', '127.0.0.1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2019-08-15 12:44:20', '15-08-2019 12:44:20 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `roomno`
--

CREATE TABLE IF NOT EXISTS `roomno` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `docname` varchar(25) NOT NULL,
  `roomno` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roomno` (`roomno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `roomno`
--

INSERT INTO `roomno` (`id`, `docname`, `roomno`) VALUES
(1, 'Anuj', '101'),
(3, 'Sarita Pandey', '102'),
(9, 'Nitesh Kumar', '105C');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(6, 1, '', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-01-06 12:32:28', '', 1),
(7, 1, 'info@w3gang.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-01-06 12:34:28', '', 1),
(8, 0, 'admin', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-01-06 12:37:41', '06-01-2017 12:38:09 PM', 0),
(9, 1, 'info@w3gang.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-01-06 12:38:01', '', 1),
(10, 1, 'info@w3gang.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-01-06 12:40:09', '06-01-2017 12:41:43 PM', 1),
(11, 2, 'test@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-01-07 13:27:18', '07-01-2017 01:27:34 PM', 1),
(12, 0, 'asdad', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-01-07 13:27:44', '', 0),
(13, 0, 'xyz@test.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-01-07 13:29:43', '', 0),
(14, 5, 'amit12@gmail.com', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2017-01-07 13:30:44', '07-01-2017 01:34:19 PM', 1),
(15, 0, 'abu@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2018-01-10 10:44:15', '', 0),
(16, 7, 'ami@yahoo.com', '127.0.0.1\0\0\0\0\0\0\0', '2018-01-10 13:51:15', '10-01-2018 01:55:51 PM', 1),
(17, 7, 'ami@yahoo.com', '127.0.0.1\0\0\0\0\0\0\0', '2018-01-10 14:19:44', '10-01-2018 03:40:13 PM', 1),
(18, 8, 'raja@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2018-03-13 05:23:42', '13-03-2018 05:24:29 AM', 1),
(19, 10, 'abasheer@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2018-03-13 12:08:11', '13-03-2018 12:08:41 PM', 1),
(20, 10, 'abasheer@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2018-03-13 12:09:08', '13-03-2018 12:09:10 PM', 1),
(21, 10, 'abasheer@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2018-03-13 12:09:46', '13-03-2018 12:09:48 PM', 1),
(22, 10, 'abasheer@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2018-03-13 12:39:38', '13-03-2018 12:45:39 PM', 1),
(23, 10, 'abasheer@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2018-03-13 14:44:09', '13-03-2018 03:14:52 PM', 1),
(24, 10, 'abasheer@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2018-03-13 15:20:10', '13-03-2018 03:25:33 PM', 1),
(25, 10, 'abasheer@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2018-03-13 15:31:47', '13-03-2018 03:36:24 PM', 1),
(26, 10, 'abasheer@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2018-03-13 15:42:48', '13-03-2018 03:45:46 PM', 1),
(27, 10, 'abasheer@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2018-03-13 15:48:09', '13-03-2018 03:55:04 PM', 1),
(28, 9, 'bala@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-08-15 10:40:04', '15-08-2019 10:42:07 AM', 1),
(29, 11, 'basha@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-08-15 10:47:11', '15-08-2019 10:48:10 AM', 1),
(30, 11, 'basha@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2019-08-15 10:51:38', '15-08-2019 10:53:01 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullName` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(2, 'Sarita pandey', 'New Delhi India', 'Delhi', 'female', 'test@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-30 11:04:39', ''),
(3, 'Amit', 'New Delhi', 'New delhi', 'male', 'amit@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 12:06:53', ''),
(4, 'Rahul Singh', 'New Delhi', 'New delhi', 'male', 'rahul@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 13:11:14', ''),
(5, 'Amit kumar', 'New Delhi India', 'Delhi', 'male', 'amit12@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 13:30:26', '07-01-2017 01:32:12 PM'),
(6, 'abuthahir', 'pollachi', 'kovai', 'male', 'abu@gmail.com', '202cb962ac59075b964b07152d234b70', '2018-01-10 10:43:50', ''),
(7, 'ami', 'pollachi', 'kovai', 'female', 'ami@yahoo.com', 'e388c1c5df4933fa01f6da9f92595589', '2018-01-10 13:50:55', ''),
(8, 'Raja', 'Pollachi', 'Pollachi', 'male', 'raja@gmail.com', '4297f44b13955235245b2497399d7a93', '2018-03-13 05:23:18', ''),
(9, 'bala', 'pollachi', 'coimbatore', 'male', 'bala@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2018-03-13 12:06:20', ''),
(10, 'abdul basheer', 'erode main road', 'erode', 'male', 'abasheer@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2018-03-13 12:07:31', ''),
(11, 'Basha', '34,Lion Road', 'Erode', 'male', 'basha@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2019-08-15 10:46:58', '');
