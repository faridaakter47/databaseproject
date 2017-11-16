-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 19, 2017 at 05:30 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `project`
--
CREATE DATABASE IF NOT EXISTS `project` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `project`;

-- --------------------------------------------------------

--
-- Table structure for table `donors_info`
--

CREATE TABLE IF NOT EXISTS `donors_info` (
  `name` varchar(100) NOT NULL,
  `blood_group` varchar(50) NOT NULL,
  `age` int(50) NOT NULL,
  `living_district` varchar(50) NOT NULL,
  `contact_number` int(50) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=97 ;

--
-- Dumping data for table `donors_info`
--

INSERT INTO `donors_info` (`name`, `blood_group`, `age`, `living_district`, `contact_number`, `id`) VALUES
('Alamin ', 'A+', 23, 'Dhaka', 1975183461, 1),
('Karim Hossain', 'B+', 24, 'Khulna', 1760287971, 2),
('Mominul Islam', 'O+', 30, 'Borishal', 475698178, 3),
('Saidul Islam', 'O-', 25, 'Mymanshing', 1275498645, 4),
('Emdadul Hoque', 'AB-', 32, 'Noakhali', 475689123, 5),
('Nigar Sultana 				\r\n', 'B+', 22, 'Panthapath,Dhaka', 1723457802, 6),
('Minhaz Uddin Khan			', 'B+', 18, 'Zigatala,Dhaka	', 1933062297, 7),
('Mosleh uddin khan			', 'B+', 35, 'Mandari,Lakshmipur', 1716074218, 8),
('Nurunnahar Begum				\r\n', 'O+', 42, 'Mandari,Lakshmipur', 1725922006, 9),
('Trisha Afroz				\r\n			\r\n', 'B-', 22, 'Panthapath,Dhaka', 97862762, 10),
('Farida Akhter	', 'A+', 22, 'Farmget,Dhaka', 1735462173, 11),
('Morshed Alam Khan				', 'AB-', 28, 'Asadget,Dhaka', 1736802681, 12),
('Shakhawat Ahmed			', 'O+', 25, 'Badda,Dhaka', 1819272682, 13),
('Nirob Ahmed			', 'O-', 30, 'Lalbagh,Dhaka	', 1946564376, 14),
('Saiful Islam			', 'B-', 38, 'Farmget,Dhaka	', 1845537182, 15),
('Ariful Islam			\r\n', 'B+', 23, 'Mandari,Lakshmipur	', 1776392019, 16),
('Arman Hossain			\r\n', 'A+', 24, 'Mandari,Lakshmipur	', 1813502736, 17),
('Ikbal Ahmed			\r\n\r\n', 'O+', 26, 'Comilla	', 1652386790, 18),
('Ashikur Islam			', 'AB+', 31, 'Ghulsan,Dhaka	', 1836464930, 19),
('Mohiul Millat			\r\n', 'O+', 34, 'Uttara,Dhaka	', 1976386534, 20),
('Arfina Rahman	', 'AB-		', 22, 'Baridhara,Dhaka	', 1863582873, 21),
('Morshed Islam				', 'AB+', 28, 'Ponchogor', 1736802681, 22),
('Ikbal Hossain			\r\n\r\n', 'A-', 26, 'Dinajpor	', 1652386790, 23),
('Arafat Hossain			\r\n\r\n', 'A-', 26, 'Dinajpor	', 1652386790, 24),
('Emdadul Hoque', 'AB-', 32, 'Borishal', 475689123, 25),
('Ashikur Rahman			', 'AB+', 31, 'Syhlet	', 1836464930, 27),
('Ashikur Islam			', 'AB+', 31, 'Chittagong	', 1836464930, 28),
('Alamin Hossain', 'A-', 23, 'Joyporhat', 1975183461, 29),
('Alam Hossain', 'A-', 23, 'Dhaka', 1975183461, 30),
('Morshed Islam				', 'AB+', 28, 'Chittagong', 1736802681, 31),
('Saidul Islam', 'O-', 25, 'Khulna', 1275498645, 32),
('Morshed Alam Khan				', 'A+', 28, 'Rajshahi', 1736802681, 33),
('Mosleh uddin khan			', 'A+', 35, 'Noakhali', 1716074218, 34),
('Mominul Islam', 'A+', 30, 'Borishal', 475698178, 35),
('Arafat Hossain			\r\n\r\n', 'A+', 26, 'Comilla', 1652386790, 36),
('Nirob Ahmed			', 'A+', 30, 'Lalbagh,Dhaka	', 1946564376, 37),
('Israt Mim				', 'A+', 28, 'Joyporhat', 1736802681, 38),
('Emdadul Hoque', 'A+', 32, 'Noakhali', 475689123, 39),
('Shakhawat Ahmed			', 'A+', 25, 'Badda,Dhaka', 1819272682, 40),
('Amin Rahman	', 'A+		', 22, 'Baridhara,Dhaka	', 1863582873, 41),
('Emdadul Hoque', 'A-', 32, 'Noakhali', 475689123, 42),
('Karim Hossain', 'A-', 24, 'Khulna', 1760287971, 43),
('Nurunnahar Begum				\r\n', 'A-', 42, 'Mandari,Lakshmipur', 1725922006, 44),
('Minhaz Uddin Khan			', 'A-', 18, 'Zigatala,Dhaka	', 1933062297, 45),
('Ashikur Islam			', 'A-', 31, 'Ghulsan,Dhaka	', 1836464930, 46),
('Ikbal Ahmed			\r\n\r\n', 'A-', 26, 'Comilla	', 1652386790, 47),
('Shakhawat Ahmed			', 'A-', 25, 'Badda,Dhaka', 1819272682, 48),
('Mousin Hossain', 'A-', 23, 'Dhaka', 1975183461, 49),
('Saidul Islam', 'A-', 25, 'Khulna', 1275498645, 50),
('Mominul Islam', 'A+', 30, 'Borishal', 475698178, 51),
('Amin Rahman	', 'AB+		', 22, 'Baridhara,Dhaka	', 1863582873, 52),
('Morshed Alam Khan				', 'AB+', 28, 'Rajshahi', 1736802681, 53),
('Emdadul Hoque', 'AB+', 32, 'Borishal', 475689123, 54),
('Nirob 			', 'AB+', 30, 'Lalbagh,Dhaka	', 1946564376, 55),
('Alamin Hossain', 'AB+', 23, 'Joyporhat', 1975183461, 56),
('Emdadul Hoque', 'AB+', 32, 'Noakhali', 475689123, 57),
('Mousin Alam', 'AB-', 32, 'Borishal', 475689123, 58),
('Mousofa Tuly', 'AB+', 32, 'Corigram', 475689123, 59),
('Ashikur Islam			', 'AB-', 31, 'Chittagong	', 1836464930, 61),
('Arafat Hossain			\r\n\r\n', 'AB-', 26, 'Comilla', 1652386790, 62),
('Mohiul Millat			\r\n', 'AB-', 34, 'Uttara,Dhaka	', 1976386534, 63),
('Emdadul Hoque', 'AB-', 32, 'Noakhali', 475689123, 64),
('Karim Hossain', 'AB-', 24, 'Khulna', 1760287971, 65),
('Shakhawat Ahmed			', 'AB-', 25, 'Badda,Dhaka', 1819272682, 66),
('Mominul Islam', 'AB-', 30, 'Borishal', 475698178, 67),
('Saiful Islam			', 'AB-', 38, 'Farmget,Dhaka	', 1845537182, 68),
('Nurunnahar Begum				\r\n', 'O-', 42, 'Mandari,Lakshmipur', 1725922006, 69),
('Emdadul Hoque', 'O+', 32, 'Noakhali', 475689123, 70),
('Ikbal Hossain			\r\n\r\n', 'O+', 26, 'Dinajpor	', 1652386790, 71),
('Saidul Islam', 'O+', 25, 'Khulna', 1275498645, 73),
('Ashikur Islam			', 'O+', 31, 'Chittagong	', 1836464930, 74),
('Mominul Islam', 'B+', 30, 'Borishal', 475698178, 76),
('Shakhawat Ahmed			', 'B+', 25, 'Badda,Dhaka', 1819272682, 77),
('Mousin Hossain', 'B+', 23, 'Dhaka', 1975183461, 78),
('Emdadul Hoque', 'B+', 32, 'Noakhali', 475689123, 79),
('Saiful Islam			', 'B+', 38, 'Farmget,Dhaka	', 1845537182, 80),
('Alam Hossain', 'B+', 23, 'Dhaka', 1975183461, 81),
('Ashikur Rahman			', 'B+', 31, 'Syhlet	', 1836464930, 82),
('Mosleh uddin khan			', 'B-', 35, 'Mandari,Lakshmipur', 1716074218, 83),
('Shakhawat Ahmed			', 'O-', 25, 'Badda,Dhaka', 1819272682, 84),
('Karim Hossain', 'O-', 24, 'Khulna', 1760287971, 85),
('Mousin Hossain', 'O-', 23, 'Dhaka', 1975183461, 86),
('Mominul Islam', 'O-', 30, 'Borishal', 475698178, 87),
('Saidul Islam', 'O-', 25, 'Khulna', 1275498645, 88),
('Saiful Islam			', 'O+', 38, 'Farmget,Dhaka	', 1845537182, 89),
('Alamin Hossain', 'O+', 23, 'Dhaka', 1975183461, 90),
('Nirob Ahmed			', 'O+', 30, 'Lalbagh,Dhaka	', 1946564376, 91),
('Emdadul Hoque', 'O-', 32, 'Noakhali', 475689123, 93),
('Mohiul Millat			\r\n', 'O-', 34, 'Uttara,Dhaka	', 1976386534, 94),
('Karim Islam', 'O-', 24, 'Khulna', 1760287971, 95),
('mera', 'A+', 25, 'khulna', 14567389, 96);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `type`, `username`, `password`, `name`, `email`) VALUES
(1, 'user', 'nigar', '123456', 'Nigar Sultana', 'nigar@gmail.com'),
(2, 'admin', 'farida', '12345678', 'Farida Akter', 'faridaakter47@yahoo.com');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
