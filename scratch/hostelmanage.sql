-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2016 at 07:39 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hostelmanage`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `login_id` varchar(10) NOT NULL,
  `password` varchar(34) NOT NULL,
  `status` varchar(10) NOT NULL,
  `emp_type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`login_id`, `password`, `status`, `emp_type`) VALUES
('admin', '25d55ad283aa400af464c76d713c07ad', 'Enabled', 'Admin'),
('assistant', '25d55ad283aa400af464c76d713c07ad', 'Enabled', 'assis');

-- --------------------------------------------------------

--
-- Table structure for table `adminmessage`
--

CREATE TABLE IF NOT EXISTS `adminmessage` (
`id` int(11) NOT NULL,
  `admin` varchar(5) NOT NULL,
  `name` varchar(25) NOT NULL,
  `usn` varchar(10) NOT NULL,
  `reply` text NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=282 ;

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE IF NOT EXISTS `leaves` (
`id` int(11) NOT NULL,
  `days` int(3) NOT NULL,
  `fdate` varchar(10) NOT NULL,
  `tdate` varchar(10) NOT NULL,
  `usn` varchar(10) NOT NULL,
  `lreason` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
`id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `usn` varchar(10) NOT NULL,
  `msg` text NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=187 ;

-- --------------------------------------------------------

--
-- Table structure for table `sdata`
--

CREATE TABLE IF NOT EXISTS `sdata` (
  `Name` varchar(30) DEFAULT NULL,
  `Firstname` varchar(15) DEFAULT NULL,
  `Middlename` varchar(14) DEFAULT NULL,
  `Lastname` varchar(16) DEFAULT NULL,
  `USN` varchar(12) DEFAULT NULL,
  `Semester` varchar(10) DEFAULT NULL,
  `Branch` varchar(16) DEFAULT NULL,
  `Course` varchar(2) DEFAULT NULL,
  `Admission Date` varchar(8) DEFAULT NULL,
  `Student Registration No` varchar(12) DEFAULT NULL,
  `Admission Year` varchar(10) DEFAULT NULL,
  `Blood Group` varchar(6) DEFAULT NULL,
  `Birth Date` varchar(9) DEFAULT NULL,
  `Gender` varchar(6) DEFAULT NULL,
  `Current Address` varchar(113) DEFAULT NULL,
  `Current City` varchar(13) DEFAULT NULL,
  `Current State` varchar(13) DEFAULT NULL,
  `Current Phone` varchar(10) DEFAULT NULL,
  `Permanent Address` varchar(107) DEFAULT NULL,
  `Permanent City` varchar(13) DEFAULT NULL,
  `Permanent State` varchar(13) DEFAULT NULL,
  `Permanent Phone` varchar(11) DEFAULT NULL,
  `Mobile` varchar(11) DEFAULT NULL,
  `Emergency No` varchar(10) DEFAULT NULL,
  `EmailID` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sdata`
--

INSERT INTO `sdata` (`Name`, `Firstname`, `Middlename`, `Lastname`, `USN`, `Semester`, `Branch`, `Course`, `Admission Date`, `Student Registration No`, `Admission Year`, `Blood Group`, `Birth Date`, `Gender`, `Current Address`, `Current City`, `Current State`, `Current Phone`, `Permanent Address`, `Permanent City`, `Permanent State`, `Permanent Phone`, `Mobile`, `Emergency No`, `EmailID`) VALUES
('SHREYA ARUN SAMBREKAR', 'SHREYA', 'ARUN', ' SAMBREKAR ', '2KL15CS078', 'Semester 2', 'Computer Science', 'UG', '29-06-15', 'FG079', '', '', '08-Jul-97', 'Female', '  30  Adarsh Colony  Vishweshwarayya Nagar  Belgaum', 'Belgaum', 'KARNATAKA', '', '  30  Adarsh Colony  Vishweshwarayya Nagar  Belgaum', 'Belgaum', 'KARNATAKA', '', '8762812930', '8762812930', ''),
('DEEPA P PAI', 'DEEPA', 'P', ' PAI ', '2KL15CS020', 'Semester 2', 'Computer Science', 'UG', '29-06-15', 'XK221', '', '', '21-Jan-97', 'Female', 'DEEPA P PAI  NEAR S L V TEMPLE  RAMPUR EXTENTION  SAGAR', 'SHIMOGHA', 'KARNATAKA', '', 'DEEPA P PAI  NEAR S L V TEMPLE  RAMPUR EXTENTION  SAGAR', 'SHIMOGHA', 'KARNATAKA', '9845460771', '8277290770', '9845460771', ''),
('JYOTI MULAWAD', 'JYOTI', '', 'MULAWAD', '2KL15CS026', 'Semester 2', 'Computer Science', 'UG', '29-06-15', 'JQ474', '', '', '13-Dec-96', 'Female', 'Jyoti S Mulawad  D O Sanjay R Mulawad Hulakund Lane  Rabkavi', 'Rabkavi', 'KARNATAKA', '', 'Jyoti S Mulawad  D O Sanjay R Mulawad Hulakund Lane  Rabkavi', 'Rabkavi', 'KARNATAKA', '', '9164550035', '9164550035', 'mulawadjyoti@gmail.com'),
('SWATI CHANDRAKANT MUTAGEKAR', 'SWATI', 'CHANDRAKANT', ' MUTAGEKAR ', '2KL15CS091', 'Semester 2', 'Computer Science', 'UG', '29-06-15', 'FF535', '', 'AB +ve', '16-Jul-97', 'Female', 'III Cross   Shri Gajanan Maharaj Nagar  Tilakwadi', 'Belgaum', 'KARNATAKA', '', 'III Cross   Shri Gajanan Maharaj Nagar  Tilakwadi', 'Belgaum', 'KARNATAKA', '', '9448058598', '9448058598', 'swatimutagekar@gmail.com'),
('SOUBHAGYALAXMI SHIVU BABAPATTI', 'SOUBHAGYALAXMI', 'SHIVU', ' BABAPATTI ', '2KL15CS084', 'Semester 2', 'Computer Science', 'UG', '29-06-15', 'ZN160', '', '', '18-Oct-98', 'Female', 'BOMBAY CHAWL   NEAR CHURCH MADANI ROAD  ', 'DANDELI', 'KARNATAKA', '', 'BOMBAY CHAWL   NEAR CHURCH MADANI ROAD  ', 'DANDELI', 'KARNATAKA', '', '9901383144', '9901383144', ''),
('PREMA TIMMANNA VADDAR', 'PREMA', 'TIMMANNA', ' VADDAR ', '2KL15CS052', 'Semester 2', 'Computer Science', 'UG', '29-06-15', 'NE110', '', 'B +ve', '10-Apr-96', 'Female', 'TIMMANNA VADDAR  Kubihal TQ Kundagol  Kubinal', 'Dharwad', 'KARNATAKA', '', 'TIMMANNA VADDAR  Kubihal TQ Kundagol  Kubinal', 'Dharwad', 'KARNATAKA', '8746064761', '8746064761', '8746064761', ''),
('SHILPA S SHIROL', 'SHILPA', 'S', ' SHIROL ', '2KL15CS076', 'Semester 2', 'Computer Science', 'UG', '29-06-15', 'NB429', '', '', '16-Jan-98', 'Female', '  Anu-Virupax   Building   Shivagiri Second Main   Dharwad', 'Dharwad', 'KARNATAKA', '', '  Anu-Virupax   Building   Shivagiri Second Main   Dharwad', 'Dharwad', 'KARNATAKA', '', '9448659554', '8892194953', 'shilpasshirol98@gmail.com'),
('SHAHIDRAZA MOULVI', 'SHAHIDRAZA', '', 'MOULVI', '2KL15CS074', 'Semester 2', 'Computer Science', 'UG', '30-06-15', 'FW643', '', 'AB +ve', '01-Aug-97', 'Male', 'S o  Babalal Moulvi  Gajabarwadi Road  Hukkeri  Tq  Hukkeri  Dst  Belagavi', 'Hukkeri', 'KARNATAKA', '', 'S o  Babalal Moulvi  Gajabarwadi Road  Hukkeri  Tq  Hukkeri  Dst  Belagavi', 'Hukkeri', 'KARNATAKA', '', '9739917072', '9743777969', 'shahidmoulvi@rediffmail.com'),
('ROJA SHANKAR CHINCHANI', 'ROJA', 'SHANKAR', ' CHINCHANI ', '2KL15CS063', 'Semester 2', 'Computer Science', 'UG', '30-06-15', 'FR478', '', '', '16-Jan-97', 'Female', 'Shankar Y Chinchani  At Post Beeranagaddi  Ta  Gokak Dist  Belagavi', 'Beeranagaddi', 'KARNATAKA', '', 'Shankar Y Chinchani  At Post Beeranagaddi  Ta  Gokak Dist  Belagavi', 'Beeranagaddi', 'KARNATAKA', '', '9611733491', '9845497811', 'amarchinchani@gmail.com'),
('RAJESAB SHIRAJSAB NADAF', 'RAJESAB', 'SHIRAJSAB', ' NADAF ', '2KL15CS056', 'Semester 2', 'Computer Science', 'UG', '29-06-15', 'MR102', '', '', '11-Oct-97', 'Male', 'Maratha Galli   Gokak  Belgaum', 'Belgaum', 'KARNATAKA', '', 'Maratha Galli   Gokak  Belgaum', 'Belgaum', 'KARNATAKA', '', '9241601039', '9945028829', 'mrajisback@gmail.com'),
('GAURAV NARWAL', 'GAURAV', '', 'NARWAL', '2KL15CS023', 'Semester 2', 'Computer Science', 'UG', '30-06-15', 'ff395', '', 'AB +ve', '26-Dec-96', 'Male', 'H n 176 nakshtra colony  budha scheme  51  pipeline road  ganeshpur  ', 'BELAGAVI', 'KARNATAKA', '', 'VIJENDRA SINGH  H NO C-36  ANAND VAS  SHAKURPUR  ', 'DELHI', 'DELHI', '', '8867082167', '8867082167', 'gauravnarwal09@gmail.com'),
('SUMANGALA APPAYYA MALAVI', 'SUMANGALA', 'APPAYYA', ' MALAVI ', '2KL15CS087', 'Semester 2', 'Computer Science', 'UG', '30-06-15', 'ZN163', '', 'O +ve', '05-Jun-97', 'Female', 'Appayya G mulavi  A p  Belavatagi  Tq  Haliyal  Dst  Uttar Kannada', 'Haliyal', 'KARNATAKA', '', 'Appayya G mulavi  A p  Belavatagi  Tq  Haliyal  Dst  Uttar Kannada', 'Haliyal', 'KARNATAKA', '', '9611135017', '9611135017', ''),
('VIJAYA JOGUR', 'VIJAYA', '', 'JOGUR', '2KL15CS098', 'Semester 2', 'Computer Science', 'UG', '30-06-15', 'JA109', '', 'B +ve', '25-Jul-97', 'Female', 'NEAR MALLIKARJUN TEMPLE  DEVOOR  TAL SINDAGI  ', 'VIJAYAPUR', 'KARNATAKA', '', 'NEAR MALLIKARJUN TEMPLE  DEVOOR  TAL SINDAGI  ', 'VIJAYAPUR', 'KARNATAKA', '', '9900395031', '8151051999', ''),
('RAHUL KUZHI PARAMBIL', 'RAHUL', 'KUZHI', ' PARAMBIL ', '2KL15CS053', 'Semester 2', 'Computer Science', 'UG', '01-07-15', '', '', 'B +ve', '06-Jul-96', 'Male', '  Saraswati    CTS No 5713 A10  Jakkeri Tank  Indraprastha Nagar', 'Belgaum', 'KARNATAKA', '', 'S o  Ramacahndran Kuzhi Parambil  House Kozhikkottiri  pattambi  Via   Palakkad', 'Palakkad', 'KARNATAKA', '', '9449922990', '9731646035', ''),
('POOJA TIPPANNA GHODKE', 'POOJA', 'TIPPANNA', ' GHODKE ', '2KL15CS047', 'Semester 2', 'Computer Science', 'UG', '01-07-15', 'FG347', '', 'O +ve', '11-Feb-97', 'Female', 'D o  T V Ghodke  9th Cross  RK Road  Radhika Building  Hindwadi  Belagavi', 'Belagavi', 'KARNATAKA', '', 'D o  T V Ghodke  9th Cross  RK Road  Radhika Building  Hindwadi  Belagavi', 'Belagavi', 'KARNATAKA', '', '7795123697', '9632374537', 'naveentghodke@gmail.com'),
('VEENA SURESH GUNDENNAVAR', 'VEENA', 'SURESH', ' GUNDENNAVAR ', '2KL15CS096', 'Semester 2', 'Computer Science', 'UG', '02-07-15', 'MN406', '', 'B +ve', '22-Jul-97', 'Female', 'D o  Suresh Gudennavar  A p  Hunashikatti  Tq  Bailhongal  Dst  Belagavi', 'Belagavi', 'KARNATAKA', '', 'D o  Suresh Gudennavar  A p  Hunashikatti  Tq  Bailhongal  Dst  Belagavi', 'Belagavi', 'KARNATAKA', '', '9945244950', '9945244950', 'veena.ssg@gmail.com'),
('DEEPA R GOURAVVAGOL', 'DEEPA', 'R', ' GOURAVVAGOL ', '2KL15CS021', 'Semester 2', 'Computer Science', 'UG', '02-07-15', '', '', 'B +ve', '18-Jun-96', 'Female', 'Hallur  Gandhi Nagar   Mudalagi  Tq  Gokak  Dt  Belgaum  ', 'Mudalagi', 'KARNATAKA', '', 'Hallur  Gandhi Nagar   Mudalagi  Tq  Gokak  Dt  Belgaum  ', 'Mudalagi', 'KARNATAKA', '', '', '9448908218', 'deepa@123yahoo.com'),
('AISHWARYA J KAVI', 'AISHWARYA', 'J', ' KAVI ', '2KL15CS004', 'Semester 2', 'Computer Science', 'UG', '02-07-15', '4003779', '', 'AB +ve', '15-Apr-97', 'Female', 'Sri Kottureshwara Nilaya   No 167  C N Road   Bhadravathi', 'Bhadravathi', 'KARNATAKA', '', 'Sri Kottureshwara Nilaya   No 167  C N Road   Bhadravathi', 'Bhadravathi', 'KARNATAKA', '28282267039', '9448494967', '9538309785', 'aishwaryakavi15@gmail.com'),
('AKSHAY A KADAM', 'AKSHAY', 'A', ' KADAM ', '2KL15CS007', 'Semester 2', 'Computer Science', 'UG', '02-07-15', 'FE512', '', 'A +ve', '17-Jun-97', 'Male', 'P B HIGH SCHOOL ROAD  NEAR ASHOK CIRCLE  ', 'JAMKHANDI', 'KARNATAKA', '', 'P B HIGH SCHOOL ROAD  NEAR ASHOK CIRCLE  ', 'JAMKHANDI', 'KARNATAKA', '', '9036411285', '9035610796', 'akshaykadamjkd@gmail.com'),
('LAXMI V ANKALAGI', 'LAXMI', 'V', ' ANKALAGI ', '2KL15CS033', 'Semester 2', 'Computer Science', 'UG', '02-07-15', 'MM353', '', 'B +ve', '24-Apr-98', 'Female', 'C o  Shreeshail A Hunashyal  A p  Nagathan  Tq Dt  Vijayapur', 'Vijayapur', 'KARNATAKA', '', 'C o  Shreeshail A Hunashyal  A p  Nagathan  Tq Dt  Vijayapur', 'Vijayapur', 'KARNATAKA', '', '8722588323', '9731659179', 'ankalagi.laxmi@gmail.com'),
('ANUSHKA MARY SUNNY', 'ANUSHKA', 'MARY', ' SUNNY ', '2KL15CS010', 'Semester 2', 'Computer Science', 'UG', '03-07-15', '', '', 'B +ve', '24-Feb-98', 'Female', 'Y 103  Sacred heart Town  Near Tagtap Chowk  Wanowrie', 'Pune', 'KARNATAKA', '', 'Y 103  Sacred heart Town  Near Tagtap Chowk  Wanowrie', 'Pune', 'KARNATAKA', '2026850032', '9545521200', '9545521200', ''),
('MUTHANE ADITYA RAJEEV', 'MUTHANE', 'ADITYA', ' RAJEEV ', '2KL15CS039', 'Semester 2', 'Computer Science', 'UG', '06-07-15', '', '', 'A +ve', '11-Jun-97', 'Male', 'Pinak Prasad Building  A 26 3rd floor  Near Mahaveer College', 'Kolhapur', 'MAHARASHTRA', '', 'Pinak Prasad Building  A 26 3rd floor  Near Mahaveer College', 'Kolhapur', 'MAHARASHTRA', '', '9158160232', '9623228722', 'adityam116@gmail.com'),
('NADEEM MD SALIM NAKKASHI', 'NADEEM', 'MD', ' SALIM NAKKASHI ', '2KL15CS040', 'Semester 2', 'Computer Science', 'UG', '07-07-15', '', '', '', '22-May-96', 'Male', 'Lal Bahadur Shastri Road  2nd Cross  Kakati', 'Belagavi', 'KARNATAKA', '', 'Lal Bahadur Shastri Road  2nd Cross  Kakati', 'Belagavi', 'KARNATAKA', '', '8496991436', '9945920687', 'nadeemnakkashi@gmail.com'),
('RAKESH MAHADEV MANGASULKAR', 'RAKESH', 'MAHADEV', ' MANGASULKAR ', '2KL15CS057', 'Semester 2', 'Computer Science', 'UG', '07-07-15', '', '', 'O -ve', '06-Jun-97', 'Male', 'H  No  2243  Bhoj Galli  Belagavi', 'Belagavi', 'KARNATAKA', '', 'H  No  2243  Bhoj Galli  Belagavi', 'Belagavi', 'KARNATAKA', '', '8792482807', '9448946889', 'rakesh.mangasulkar@gmail.com'),
('KATARIYA RAKSHIT ANIL', 'KATARIYA', 'RAKSHIT', ' ANIL ', '2KL15CS029', 'Semester 2', 'Computer Science', 'UG', '07-07-15', '1063120', '', 'AB -ve', '20-Aug-97', 'Male', 'Hastivilla   415 14 7  Jawan housing Society', 'Satara', 'KARNATAKA', '', 'Hastivilla   415 14 7  Jawan housing Society', 'Satara', 'KARNATAKA', '2162230375', '9423033998', '9923396019', 'katariya.rakhit@yahoo.co.in'),
('HAYSTEN FERDIE FERNANDES', 'HAYSTEN', 'FERDIE', ' FERNANDES ', '2KL15CS024', 'Semester 2', 'Computer Science', 'UG', '09-07-15', '', '', 'A +ve', '07-Oct-97', 'Male', 'Victoria Fernandes  Dongorim Nuvem    Po  Majorda  Salcette', 'Salcette', 'GOA', '', 'Victoria Fernandes  Dongorim Nuvem    Po  Majorda  Salcette', 'Salcette', 'GOA', '', '7507429179', '9370569888', 'haysten777@live.com'),
('MAYANK SINGH', 'MAYANK', '', 'SINGH', '2KL15CS036', 'Semester 2', 'Computer Science', 'UG', '09-07-15', '', '', 'B +ve', '01-Mar-97', 'Male', 'J L Wing  CSD Canteen  The Infantary School  Belgaum', 'Belgaum', 'KARNATAKA', '', 'VDO-Nanoura   Teh-Belthara Road  Disst - Ballia', 'Belthara Road', 'UTTAR PRADESH', '', '9482667657', '9538339967', 'georgian3588@gmail.com'),
('AJAYKUMAR  MAJUKAR', 'AJAYKUMAR', '', ' MAJUKAR ', '2KL15CS005', 'Semester 2', 'Computer Science', 'UG', '10-07-15', '181087', '', '', '08-Nov-96', 'Male', 'Madhukar Majukar  Madhuban pl no 42 Rs No 48 1B 2  Shahunagar', 'Belagavi', 'KARNATAKA', '', 'Madhukar Majukar  Madhuban pl no 42 Rs No 48 1B 2  Shahunagar', 'Belagavi', 'KARNATAKA', '8312478325', '9164049275', '9449883292', ''),
('SIMRAN RAJENDRA MANTURGIMATH', 'SIMRAN', 'RAJENDRA', ' MANTURGIMATH ', '2KL15CS082', 'Semester 2', 'Computer Science', 'UG', '11-07-15', 'FB307', '', 'O +ve', '06-Sep-97', 'Female', '200 6 7TH CROSS  HINDAWADI  ', 'BELAGAVI', 'KARNATAKA', '', '200 6 7TH CROSS  HINDAWADI  ', 'BELAGAVI', 'KARNATAKA', '8312421515', '9448073737', '9448073737', ''),
('ABHISHEK GADAG', 'ABHISHEK', '', 'GADAG', '2KL15CS001', 'Semester 2', 'Computer Science', 'UG', '11-07-15', '', '', 'A +ve', '28-Feb-97', 'Male', 'C O L V KULKARNI  VIKRAMPUR  ATHANI  ', 'ATHANI', 'KARNATAKA', '', 'C O B S GULBAGI  SHRI NAGAR   3RD CROSS  CITB COLONY  ', 'DHARWAD', 'KARNATAKA', '', '9448304345', '9448304345', 'abgadag@gmail.com'),
('RISHABH KUMAR TIWARI', 'RISHABH', 'KUMAR', ' TIWARI ', '2KL15CS060', 'Semester 2', 'Computer Science', 'UG', '13-07-15', '', '', '', '27-Jan-97', 'Male', 'H NO 855  C o  M R MAHADEV  Ganeshnagar Sambra', 'Belagavi', 'KARNATAKA', '', 'H NO 855  C o  M R MAHADEV  Ganeshnagar Sambra', 'Belagavi', 'KARNATAKA', '', '7899103836', '7899103836', 'rishabhtwar007@gmail.com'),
('PADINJAREKOLATH JITHIN NAIR', 'PADINJAREKOLATH', 'JITHIN', ' NAIR ', '2KL15CS045', 'Semester 2', 'Computer Science', 'UG', '13-07-15', '', '', '', '02-Mar-97', 'Male', ' ''NIRMITI '' APARTMENT  OPP APEY BAKERY   FLOOR NO-1 FLAT NO -2  STATION ROAD ', 'MIRAJ', 'MAHARASHTRA', '', ' ''NIRMITI '' APARTMENT  OPP APEY BAKERY   FLOOR NO-1 FLAT NO -2  STATION ROAD ', 'MIRAJ', 'MAHARASHTRA', '2332225174', '9823374848', '8087234894', 'jithin5756@gmail.com'),
('SUCHETA ANANT PAI', 'SUCHETA', 'ANANT', ' PAI ', '2KL15CS086', 'Semester 2', 'Computer Science', 'UG', '13-07-15', '', '', '', '05-Oct-97', 'Female', ' ANANT PAI  Veer Vithal road Mankulkeri  Bhatkal', 'Bhatkal', 'KARNATAKA', '', ' ANANT PAI  Veer Vithal road Mankulkeri  Bhatkal', 'Bhatkal', 'KARNATAKA', '', '9448317567', '9448317567', ''),
('AISHWARYA JAIWANT SHANBHAG', 'AISHWARYA', 'JAIWANT', ' SHANBHAG ', '2KL15CS003', 'Semester 2', 'Computer Science', 'UG', '13-07-15', 'UGET15157892', '', 'B +ve', '06-Mar-97', 'Female', 'APMC Road   Shantinagar  Siddapur', 'Siddapur', 'KARNATAKA', '', 'APMC Road   Shantinagar  Siddapur', 'Siddapur', 'KARNATAKA', '', '8762326067', '9448133017', 'aishwaryajshanbhag@gmail.com'),
('ROHIT VERNEKAR', 'ROHIT', '', 'VERNEKAR', '2KL15CS062', 'Semester 2', 'Computer Science', 'UG', '13-07-15', 'NM219', '', 'O +ve', '09-Aug-97', 'Male', 'H No  458 1A  4th Cross   Nazar Camp   Vadgaon  ', 'Belgaum', 'KARNATAKA', '', 'H No  458 1A  4th Cross   Nazar Camp   Vadgaon  ', 'Belgaum', 'KARNATAKA', '8362221470', '8951563435', '8951516001', 'rohitvernekar76@gmail.com'),
('SANGAMANATH R TELI', 'SANGAMANATH', 'R', ' TELI ', '2KL15CS073', 'Semester 2', 'Computer Science', 'UG', '13-07-15', 'JQ575', '', '', '22-Jul-97', 'Male', 'Sangamnath R Teli  C O Ravi G Teli Prabhat Nagar   Jamkhandi', 'JAMKHANDI', 'KARNATAKA', '', 'Sangamnath R Teli  C O Ravi G Teli Prabhat Nagar   Jamkhandi', 'JAMKHANDI', 'KARNATAKA', '', '9886630992', '9886630992', 'sangamnatth777@gmail.com'),
('ABHISHEK U PATKI', 'ABHISHEK', 'U', ' PATKI ', '2KL15CS002', 'Semester 2', 'Computer Science', 'UG', '13-07-15', 'NG025', '', 'O +ve', '10-Jan-98', 'Male', '  MOHAN NIVAS   CTS NO 4A 39  GYANABA GOLDEN GLADES NARAYANAPUR  ', 'DHARWAD', 'KARNATAKA', '', '  MOHAN NIVAS   CTS NO 4A 39  GYANABA GOLDEN GLADES NARAYANAPUR  ', 'DHARWAD', 'KARNATAKA', '8362772342', '8762451248', '9483933464', 'patkiabhishek5@gmail.com'),
('SHUBHAM VISHNU PAI', 'SHUBHAM', 'VISHNU', ' PAI ', '2KL15CS081', 'Semester 2', 'Computer Science', 'UG', '13-07-15', 'FE364', '', '', '04-Aug-97', 'Male', ' VISHNU PAI  Satyadev 343 Nehru Road Tilakwadi  Belagavi', 'Belagavi', 'KARNATAKA', '', ' VISHNU PAI  Satyadev 343 Nehru Road Tilakwadi  Belagavi', 'Belagavi', 'KARNATAKA', '', '8748035743', '8748035743', 'shubhampai@ymail.com'),
('SAMARTH HALYAL', 'SAMARTH', '', 'HALYAL', '2KL15CS071', 'Semester 2', 'Computer Science', 'UG', '13-07-15', 'FB094', '', 'A +ve', '01-May-97', 'Male', 'P N 691 B  2ND STAGE  RC NAGAR  ', 'Belagavi', 'KARNATAKA', '', 'P N 691 B  2ND STAGE  RC NAGAR  ', 'Belagavi', 'KARNATAKA', '8312442101', '9449383366', '9481327817', 'samarthhalyal@gmail.com'),
('RICHALI  DESURKAR', 'RICHALI', '', ' DESURKAR ', '2KL15CS059', 'Semester 2', 'Computer Science', 'UG', '13-07-15', '', '', '', '27-Jul-97', 'Female', 'H N 688 BHAGYA NAGAR  5TH CROSS TILAKWADI  ', 'Belagavi', 'KARNATAKA', '', 'H N 688 BHAGYA NAGAR  5TH CROSS TILAKWADI  ', 'Belagavi', 'KARNATAKA', '', '9448875610', '9448875610', 'richadesurkar27@gmail.com'),
('RAHUL SHAILESH RAJKAR', 'RAHUL', 'SHAILESH', ' RAJKAR ', '2KL15CS054', 'Semester 2', 'Computer Science', 'UG', '10-07-15', '5002038', '', '', '05-Jul-97', 'Male', 'Shailesh Raikar  H No 458 1A Nazar Camp  4th Cross Yellur Road  Vadagoan', 'Belagavi', 'KARNATAKA', '', 'Shailesh Raikar  H No 458 1A Nazar Camp  4th Cross Yellur Road  Vadagoan', 'Belagavi', 'KARNATAKA', '', '9591699650', '9731021061', ''),
('DEESHA PATIL', 'DEESHA', '', 'PATIL', '2KL15CS022', 'Semester 2', 'Computer Science', 'UG', '14-07-15', 'FB134', '', 'A +ve', '28-Oct-97', 'Female', 'Grace Apartment F F04   M  G  Colony   Tilakwadi', 'Belgaum', 'KARNATAKA', '', 'Grace Apartment F F04   M  G  Colony   Tilakwadi', 'Belgaum', 'KARNATAKA', '', '9972713176', '9535279667', 'deeshapatil123@gmail.com'),
('RAJASHEKHAR KOTEPPA BYAKOD', 'RAJASHEKHAR', 'KOTEPPA', ' BYAKOD ', '2KL15CS055', 'Semester 2', 'Computer Science', 'UG', '13-07-15', 'MR140', '', 'O +ve', '25-Jul-97', 'Male', 'Koteppa Tippanna Byakod  Tq Sindagi Dt Bijapur  Kokatanur', 'Kokatanur', 'KARNATAKA', '', 'Koteppa Tippanna Byakod  Tq Sindagi Dt Bijapur  Kokatanur', 'Kokatanur', 'KARNATAKA', '', '9880951851', '9880951851', 'rajubyakod97@gmail.com'),
('SUPRIYA BIDARI ', 'SUPRIYA', 'BIDARI', '  ', '2KL15CS088', 'Semester 2', 'Computer Science', 'UG', '14-07-15', 'FB452', '', 'O +ve', '06-Mar-97', 'Female', 'SHREEDHARI KRUPA PLOT NO 33 RS NO 1036 2  BHARATH COLONY KANABARGI ROAD   BELAGAVI', 'BELAGAVI', 'KARNATAKA', '', 'SHREEDHARI KRUPA PLOT NO 33 RS NO 1036 2  BHARATH COLONY KANABARGI ROAD   BELAGAVI', 'BELAGAVI', 'KARNATAKA', '', '9449307983', '9482145832', 'supriya.bidari1997@gmail.com'),
('RUTIKRAJ VIJAY JANGALE', 'RUTIKRAJ', 'VIJAY', ' JANGALE ', '2KL15CS066', 'Semester 2', 'Computer Science', 'UG', '14-07-15', 'FC430', '', 'A +ve', '11-Jan-97', 'Male', 'H No  1479  Ganeshpur Galli  Shahapur', 'Belagavi', 'KARNATAKA', '', 'H No  1479  Ganeshpur Galli  Shahapur', 'Belagavi', 'KARNATAKA', '', '8746935089', '9972325672', 'kshitijjangle007@gmail.com'),
('ASHISH PATIL', 'ASHISH', '', 'PATIL', '2KL15CS012', 'Semester 2', 'Computer Science', 'UG', '13-07-15', 'FX473', '', '', '19-Nov-97', 'Male', 'Mahesh Patil  Mali Galli Sansuddi Galli  Sankeshwar', 'Sankeshwar', 'KARNATAKA', '', 'Mahesh Patil  Mali Galli Sansuddi Galli  Sankeshwar', 'Sankeshwar', 'KARNATAKA', '', '9019137194', '9091137194', 'ashishpatil199199@gmail.com'),
('AKSHAY KULKARNI', 'AKSHAY', '', 'KULKARNI', '2KL15CS402', 'Semester 4', 'Computer Science', 'UG', '14-07-15', '', '', '', '30-Nov-92', 'Male', 'A P JATRAT TQ CHIKODI   TQ CHIKODI DIST BELAGAVI  ', 'Belagavi', 'KARNATAKA', '', 'A P JATRAT TQ CHIKODI   TQ CHIKODI DIST BELAGAVI  ', 'Belagavi', 'KARNATAKA', '', '9739600887', '9739339942', ''),
('MEGHA HONNAYYANAVAR', 'MEGHA', '', 'HONNAYYANAVAR', '2KL15CS037', 'Semester 2', 'Computer Science', 'UG', '13-07-15', 'NM399', '', '', '06-Apr-97', 'Female', 'C O S B ALAGERI NEAR KADASIDDESHWAR MATH  MUKTIDAM ROAD  KESHWAPUR HUBLI', 'HUBLI', 'KARNATAKA', '', 'C O S B ALAGERI NEAR KADASIDDESHWAR MATH  MUKTIDAM ROAD  KESHWAPUR HUBLI', 'HUBLI', 'KARNATAKA', '', '9945806246', '9945806246', ''),
('KUSHAL BADODEKAR', 'KUSHAL', '', 'BADODEKAR', '2KL15CS031', 'Semester 2', 'Computer Science', 'UG', '13-07-15', 'FD465', '', '', '28-Aug-97', 'Male', 'SWAPNA SIDDHI HOUSE NO 1340  KILLA ROAD  KAKATI', 'BELGAVI', 'KARNATAKA', '', 'SWAPNA SIDDHI HOUSE NO 1340  KILLA ROAD  KAKATI', 'BELGAVI', 'KARNATAKA', '', '8904739297', '8792488306', 'kushalbadodekar@gmail.com'),
('PREETI LAKSHMAN GIDD', 'PREETI', 'LAKSHMAN', ' GIDD ', '2KL15CS050', 'Semester 2', 'Computer Science', 'UG', '14-07-15', 'MS224', '', 'B +ve', '10-May-97', 'Female', 'Lakshman Gidd  Exmba Tal  Chikodi Dist  Belagavi  Examba', 'Examba', 'KARNATAKA', '', 'Lakshman Gidd  Exmba Tal  Chikodi Dist  Belagavi  Examba', 'Examba', 'KARNATAKA', '', '9886219383', '9886219383', ''),
('RUSHIKA LAXMAN PATIL', 'RUSHIKA', 'LAXMAN', ' PATIL ', '2KL15CS065', 'Semester 2', 'Computer Science', 'UG', '15-07-15', 'FF477', '', 'B +ve', '13-Jul-97', 'Female', 'LAXMAN PATIL  H N 33 19 Samruddi Colony Ganeshpur   BELAGAVI', 'BELGAVI', 'KARNATAKA', '', 'LAXMAN PATIL  H N 33 19 Samruddi Colony Ganeshpur   BELAGAVI', 'BELGAVI', 'KARNATAKA', '', '9481322744', '9481322744', ''),
('D S SPANDANA', 'D', 'S', ' SPANDANA ', '2KL15CS016', 'Semester 2', 'Computer Science', 'UG', '15-07-15', 'UGET15017534', '', 'O +ve', '24-Apr-97', 'Female', 'At Post- Kottur  Ta-Kudligi  Dist-Bellary', 'Kottur', 'KARNATAKA', '', 'At Post- Kottur  Ta-Kudligi  Dist-Bellary', 'Kottur', 'KARNATAKA', '', '9448024184', '9449479930', 'shivacharan_dev@rediffmail.com'),
('SHREYA SHANKAR KOUJALAGI', 'SHREYA', 'SHANKAR', ' KOUJALAGI ', '2KL15CS079', 'Semester 2', 'Computer Science', 'UG', '15-07-15', '', '', 'B +ve', '19-Jul-97', 'Female', 'Padmavati Nivas  4th Cross  Bhagyanagar  Belgaum', 'Belgaum', 'KARNATAKA', '', 'A p  Kalloli  Tq  Gokak  Dt  Belgaum  ', 'Gokak', 'KARNATAKA', '', '9731570200', '9481743719', ''),
('NIKITA GAONKAR', 'NIKITA', '', 'GAONKAR', '2KL15CS041', 'Semester 2', 'Computer Science', 'UG', '15-07-15', 'ZB202', '', 'B +ve', '11-Mar-97', 'Female', 'Kendriya Vidyalaya No 2  H No 968 ASHRAM Road KARWAR  KARWAR', 'KARWAR', 'KARNATAKA', '', 'Kendriya Vidyalaya No 2  H No 968 ASHRAM Road KARWAR  KARWAR', 'KARWAR', 'KARNATAKA', '8382226835', '7204796947', '8382226835', ''),
('DAYANAND I DIVATAGI', 'DAYANAND', 'I', ' DIVATAGI ', '2KL15CS019', 'Semester 2', 'Computer Science', 'UG', '14-07-15', 'MQ141', '', '', '07-Jul-97', 'Male', 'Irappa Divatagi  PO Bellubbi  Tq Bijapur', 'BIJAPUR', 'KARNATAKA', '', 'Irappa Divatagi  PO Bellubbi  Tq Bijapur', 'BIJAPUR', 'KARNATAKA', '', '9731326805', '9972945964', ''),
('SHUBHAM NARAYAN KOLE', 'SHUBHAM', 'NARAYAN', ' KOLE ', '2KL15CS443', 'Semester 4', 'Computer Science', 'UG', '16-07-15', '', '', 'A +ve', '19-Feb-96', 'Male', 'Shubham Narayan Kole  Pl No 3 5th Cross  Vinayak Colony Shahunagar  BELAGAVI', 'BELGAVI', 'KARNATAKA', '', 'Shubham Narayan Kole  Pl No 3 5th Cross  Vinayak Colony Shahunagar  BELAGAVI', 'BELGAVI', 'KARNATAKA', '', '7204230706', '9342150195', ''),
('AMULYA MALLIKARJUNA SANIKOP', 'AMULYA', 'MALLIKARJUNA', ' SANIKOP ', '2KL15CS009', 'Semester 2', 'Computer Science', 'UG', '16-07-15', '', '', 'A +ve', '27-Nov-96', 'Female', 'M T SANIKOP    '' TORAN  '' H NO-147 CLUB ROAD  ', 'BELAGAVI', 'KARNATAKA', '', 'M T SANIKOP    '' TORAN  '' H NO-147 CLUB ROAD  ', 'BELAGAVI', 'KARNATAKA', '8312422134', '9845199909', '9538710084', 'amysanikopsa@gmail.com'),
('BHOSALE SHREEYA NEELCHANDRA', 'BHOSALE', 'SHREEYA', ' NEELCHANDRA ', '2KL15CS015', 'Semester 2', 'Computer Science', 'UG', '17-07-15', '', '', 'B -ve', '17-Feb-98', 'Female', 'NEELACHANDRA BHOSALE   Gulmohar 32 17 e ward  Tarabai Park  Kolhapur', 'Kolhapur', 'MAHARASHTRA', '', 'NEELACHANDRA BHOSALE   Gulmohar 32 17 e ward  Tarabai Park  Kolhapur', 'Kolhapur', 'MAHARASHTRA', '', '9822015949', '9822015949', ''),
('TEJASVI MAGADUM', 'TEJASVI', '', 'MAGADUM', '2KL15CS092', 'Semester 2', 'Computer Science', 'UG', '20-07-15', '', '', 'B +ve', '24-Nov-96', 'Female', 'At Post- Chinchali  Tq- Raibag  Dist- Belagum', 'Chinchali', 'KARNATAKA', '', 'At Post- Chinchali  Tq- Raibag  Dist- Belagum', 'Chinchali', 'KARNATAKA', '', '8277579278', '9448964057', 'tejasvi.magadum1996@gmail.com'),
('VENKATESH SANADI B', 'VENKATESH', 'SANADI', ' B ', '2KL15CS449', 'Semester 4', 'Computer Science', 'UG', '20-07-15', 'F1037', '', 'A +ve', '06-Nov-93', 'Male', 'Near Sayyadrinagar  Vidynagar teachers Colony  Belagavi', 'Belagavi', 'KARNATAKA', '', 'Near Sayyadrinagar  Vidynagar teachers Colony  Belagavi', 'Belagavi', 'KARNATAKA', '', '9538684375', '9448634099', 'r.sansdi99@gmail.com'),
('MUHAMMADSAIF GORINAIK', 'MUHAMMADSAIF', '', 'GORINAIK', '2KL15CS038', 'Semester 2', 'Computer Science', 'UG', '20-07-15', '2003459', '', 'B +ve', '07-Dec-96', 'Male', 'Plot No 62 P   T Colony  3rd stage Hanuman Nagar  Belagavi', 'Belagavi', 'KARNATAKA', '', 'Plot No 62 P   T Colony  3rd stage Hanuman Nagar  Belagavi', 'Belagavi', 'KARNATAKA', '', '9449734438', '8312466248', 'chemgoinaik@gmail.com'),
('GUPTA JEEVAN RAMJI', 'GUPTA', 'JEEVAN', ' RAMJI ', '2KL15CS025', 'Semester 2', 'Computer Science', 'UG', '20-07-15', 'UGET15068427', '', 'O +ve', '19-Jul-97', 'Male', 'H NO 15 68 MMC CL NR GANAPAJI TEMPLE MANGDR GURUDWARA ROAD VASIO DAGAMA GOA   VASIO DAGAMA GOA  GOA', 'VASCO DA GAMA', 'KARNATAKA', '', 'H NO 15 68 MMC CL NR GANAPAJI TEMPLE MANGDR GURUDWARA ROAD VASIO DAGAMA GOA   VASIO DAGAMA GOA  GOA', 'VASCO DA GAMA', 'KARNATAKA', '', '8975707245', '8975707245', ''),
('ROHINI SHIVAJI KHARUJKAR', 'ROHINI', 'SHIVAJI', ' KHARUJKAR ', '2KL15CS434', 'Semester 4', 'Computer Science', 'UG', '20-07-15', '', '', 'B +ve', '17-May-93', 'Female', 'C O AVINASH S SHINDE  3522 8B GAVALI GALLI NEAR AJIT  LODGE ', 'BELAGAVI', 'KARNATAKA', '', 'C O AVINASH S SHINDE  3522 8B GAVALI GALLI NEAR AJIT  LODGE ', 'BELAGAVI', 'KARNATAKA', '', '8123273549', '812327359', ''),
('RAHUL GANAPATI GURAV', 'RAHUL', 'GANAPATI', ' GURAV ', '2KL15CS432', 'Semester 4', 'Computer Science', 'UG', '21-07-15', '', '', 'O -ve', '01-Dec-94', 'Male', 'GANAPATI GURAV   NO 19 2 VITTAL RUKMAI GALLI HALKARNI   TQ KHANAPUR', 'KHANAPUR', 'KARNATAKA', '', 'GANAPATI GURAV   NO 19 2 VITTAL RUKMAI GALLI HALKARNI   TQ KHANAPUR', 'KHANAPUR', 'KARNATAKA', '', '7676713476', '8971351414', ''),
('SHILPA PRAKASH GHATGE', 'SHILPA', 'PRAKASH', ' GHATGE ', '2KL15CS441', 'Semester 4', 'Computer Science', 'UG', '21-07-15', '', '', 'A -ve', '28-Aug-95', 'Female', 'PRAKASH GHATGE  6 25TH MAIN 2ND CROSS 1ST LAIN  SHIVAJI NAGAR ', 'BELAGAVI', 'KARNATAKA', '', 'PRAKASH GHATGE  6 25TH MAIN 2ND CROSS 1ST LAIN  SHIVAJI NAGAR ', 'BELAGAVI', 'KARNATAKA', '', '7829976305', '9901718834', ''),
('SADDAMHUSAIN R KATAMBLE', 'SADDAMHUSAIN', 'R', ' KATAMBLE ', '2KL15CS435', 'Semester 4', 'Computer Science', 'UG', '21-07-15', '', '', 'B +ve', '15-Sep-96', 'Male', 'Roshanzameer H no 306 KHASBAG BASAWAN GALLI  BELAGAVI  ', 'BELAGAVI', 'KARNATAKA', '', 'Roshanzameer H no 306 KHASBAG BASAWAN GALLI  BELAGAVI  ', 'BELAGAVI', 'KARNATAKA', '', '7411465276', '9448264568', ''),
('SHAMIKA GUNDOPANT CHOUGULE', 'SHAMIKA', 'GUNDOPANT', ' CHOUGULE ', '2KL15CS075', 'Semester 2', 'Computer Science', 'UG', '22-07-15', '2004354', '', '', '01-Jan-97', 'Female', 'Plot No71 Patwardhan Layout  Madhavapur   Vadagaon  Belgaum', 'Belagavi', 'KARNATAKA', '', 'Plot No71 Patwardhan Layout  Madhavapur   Vadagaon  Belgaum', 'Belagavi', 'KARNATAKA', '', '7899986866', '9964325934', ''),
('JYOTI SOMSHEKHAR AURWADKAR ', 'JYOTI', 'SOMSHEKHAR', ' AURWADKAR  ', '2KL15CS027', 'Semester 2', 'Computer Science', 'UG', '22-07-15', 'FE286', '', '', '31-Oct-96', 'Female', 'H NO  479  CROSS NO 6  NAZAR CAMP YELLUR ROAD    VADAGAON ', 'BELAGAVI', 'KARNATAKA', '', 'H NO  479  CROSS NO 6  NAZAR CAMP YELLUR ROAD    VADAGAON ', 'BELAGAVI', 'KARNATAKA', '', '9036272547', '9036272547', 'ajitaurwadkar@gmail.com'),
('BAGALAKOTI SACHIN GURABASAPPA', 'BAGALAKOTI', 'SACHIN', ' GURABASAPPA ', '2KL15CS013', 'Semester 2', 'Computer Science', 'UG', '23-07-15', 'BN222', '', '', '08-Jul-97', 'Male', 'SACHIN G BAGALAKOTI  A P JADAR BABALAD TQ JATH DIST SANGLI  ', 'JATH', 'MAHARASHTRA', '', 'SACHIN G BAGALAKOTI  A P JADAR BABALAD TQ JATH DIST SANGLI  ', 'JATH', 'MAHARASHTRA', '', '8390777322', '9423024916', ''),
('VIJAYALAXMI ', 'VIJAYALAXMI', '', '', '2KL15CS099', 'Semester 2', 'Computer Science', 'UG', '23-07-15', 'FA602', '', 'B +ve', '27-Jul-97', 'Female', 'RAJASHEKHAR HIREMATH  NEAR UDAY SCHOOL H NO 1777 RAMTHEERT NAGAR  BELAGAVI', 'BELAGAVI', 'KARNATAKA', '', 'RAJASHEKHAR HIREMATH  NEAR UDAY SCHOOL H NO 1777 RAMTHEERT NAGAR  BELAGAVI', 'BELAGAVI', 'KARNATAKA', '', '94481006759', '7204295826', ''),
('PRASAD PATIL', 'PRASAD', '', 'PATIL', '2KL15CS049', 'Semester 2', 'Computer Science', 'UG', '23-07-15', 'FF246', '', 'B +ve', '09-Mar-98', 'Male', 'Plot No 2 BMS Defence Colony  4th Cross  Laxmi Nagar  Hindalga', 'Belagavi', 'KARNATAKA', '', 'Plot No 2 BMS Defence Colony  4th Cross  Laxmi Nagar  Hindalga', 'Belagavi', 'KARNATAKA', '', '9632965931', '9483507931', 'prasadpatil88@gmail.com'),
('SUPRIYA KULKARNI', 'SUPRIYA', '', 'KULKARNI', '2KL15CS089', 'Semester 2', 'Computer Science', 'UG', '23-07-15', 'FB182', '', 'A +ve', '25-Dec-96', 'Female', 'MOHAN KULKARNI  FLAT NO A GRD FLOOR VIVEKANAD APPT VIVEKANAND  COLONY TILAKWADI', 'BELAGAVI', 'KARNATAKA', '', 'MOHAN KULKARNI  FLAT NO A GRD FLOOR VIVEKANAD APPT VIVEKANAND  COLONY TILAKWADI', 'BELAGAVI', 'KARNATAKA', '', '9449466080', '9449466080', ''),
('SNEHA GUTTARAGI', 'SNEHA', '', 'GUTTARAGI', '2KL15CS083', 'Semester 2', 'Computer Science', 'UG', '23-07-15', 'JF307', '', '', '04-Nov-97', 'Female', 'H No 19  Rajendra Nagar  Behind KHB Colony   Solapur Road', 'Bijapur', 'KARNATAKA', '', 'H No 19  Rajendra Nagar  Behind KHB Colony   Solapur Road', 'Bijapur', 'KARNATAKA', '', '9449723580', '9449723580', 'drshivug@gmail.com'),
('YASHASWINI R KUDACHI', 'YASHASWINI', 'R', ' KUDACHI ', '2KL15CS100', 'Semester 2', 'Computer Science', 'UG', '23-07-15', 'ZF280', '', 'B +ve', '24-Aug-96', 'Female', 'RAVINDRA KUMAR  KUDACHI  ANU KIRAN BUILDING AYYAPPA NAGAR   1 ST CROSS HUBLI ROAD SIRSI', 'SIRSI', 'KARNATAKA', '', 'RAVINDRA KUMAR  KUDACHI  NO 17 KASTURI NIVAS TELEPHONE EMPLOYEES COLONY NEAR   BAUXITE ROAD SADASHIV NAGAR ', 'BELAGAVI', 'KARNATAKA', '', '9538465164', '9449765164', 'yashk2408@gmail.com'),
('PRADEEP ANGADAGERI', 'PRADEEP', '', 'ANGADAGERI', '2KL15CS048', 'Semester 2', 'Computer Science', 'UG', '22-07-15', 'JMO44', '', '', '01-Jun-97', 'Male', 'PRADEEP S  ANGADAGERI  S O  SIDDANAGOUD ANGADAGERI  A P  TELGI  TQ  BASAVANBAGEWADI  DIST  VIJAYAPUR', 'TELAGI', 'KARNATAKA', '', 'PRADEEP S  ANGADAGERI  S O  SIDDANAGOUD ANGADAGERI  A P  TELGI  TQ  BASAVANBAGEWADI  DIST  VIJAYAPUR', 'TELAGI', 'KARNATAKA', '', '7795991685', '9901883792', 'pradeepangadageri111@gmail.com'),
('SAJINA S ALI', 'SAJINA', 'S', ' ALI ', '2KL15CS069', 'Semester 2', 'Computer Science', 'UG', '23-07-15', 'NP277', '', 'O +ve', '01-Nov-97', 'Female', 'SAJINA S ALI   D O SAYED ALI KP H NO 40 5TH CROSS LAXMI NAGAR   GOKUL ROAD ', 'HUBLI', 'KARNATAKA', '', 'SAJINA S ALI   D O SAYED ALI KP H NO 40 5TH CROSS LAXMI NAGAR   GOKUL ROAD ', 'HUBLI', 'KARNATAKA', '', '9538335698', '9900671831', ''),
('NIKITA HUKKERI', 'NIKITA', '', 'HUKKERI', '2KL15CS042', 'Semester 2', 'Computer Science', 'UG', '23-07-15', 'JS167', '', '', '30-May-97', 'Female', 'PWD Qtrs  I B Road Athani    ', 'Athani', 'KARNATAKA', '', 'PWD Qtrs  I B Road Athani    ', 'Athani', 'KARNATAKA', '9448477840', '9448477840', '9448477840', 'shivalinghukkeri@gmail.com'),
('SUSHMA SANJEEVKUMAR ANKLE', 'SUSHMA', 'SANJEEVKUMAR', ' ANKLE ', '2KL15CS090', 'Semester 2', 'Computer Science', 'UG', '23-07-15', 'UGTT15109421', '', 'AB +ve', '29-Oct-96', 'Female', '249 A  Ranade Road  Near 2nd Railway gate  Tilakwadi  Belagavi', 'Belagavi', 'KARNATAKA', '', '249 A  Ranade Road  Near 2nd Railway gate  Tilakwadi  Belagavi', 'Belagavi', 'KARNATAKA', '', '9945945354', '8312429675', 'sushmaankle@gmail.com'),
('M SUSHMA', 'M', '', 'SUSHMA', '2KL15CS034', 'Semester 2', 'Computer Science', 'UG', '22-07-15', 'GD340', '', 'A +ve', '26-Mar-97', 'Female', 'M  NAGARAJA TYPE   b    SOUTH BLOCK  DONIMALI TOWNSHIP DONIMALAI  TQ SANDUR DIST  BELLARI', 'DONIMALAI', 'KARNATAKA', '', 'M  NAGARAJA TYPE   b    SOUTH BLOCK  DONIMALI TOWNSHIP DONIMALAI  Q SANDUR DIST  BELLARI', 'DONIMALAI', 'KARNATAKA', '', '9845305261', '9845305261', ''),
('SACHIN S KARAMUDI', 'SACHIN', 'S', ' KARAMUDI ', '2KL15CS067', 'Semester 2', 'Computer Science', 'UG', '23-07-15', 'NR352', '', '', '16-Dec-96', 'Male', 'SACHIN S K   S O SURESH S K RAJEEV GANDHI NAGAR  ISHWAR BADAVANI NEAR ISHWAR TEMPLE ', 'GADAG', 'KARNATAKA', '', 'SACHIN S K   S O SURESH S K RAJEEV GANDHI NAGAR  ISHWAR BADAVANI NEAR ISHWAR TEMPLE ', 'GADAG', 'KARNATAKA', '', '9886856720', '8951234093', 'sachin.karamudi@gmail.com'),
('VEDANTH G REDDY H', 'VEDANTH', 'G', ' REDDY H ', '2KL15CS095', 'Semester 2', 'Computer Science', 'UG', '22-07-15', 'GB00', '', 'B +ve', '01-Sep-97', 'Male', 'S o Govind Reddy  C o S marenna  Parameshwari Nilay  Gopal swami road  Behand Viswa lodge    Gandi nagar  Ballari', 'Ballari', 'KARNATAKA', '', 'H Gopal Reddy  S o H Govind Reddy  2nd cross  1 Link Road  Parvathi Nagar', 'Ballari', 'KARNATAKA', '', '9035881077', '9844823611', 'vedanthreddy999@gmail.com'),
('RASHMI HAKKI', 'RASHMI', '', 'HAKKI', '2KL15CS058', 'Semester 2', 'Computer Science', 'UG', '22-07-15', 'JE289', '', 'B +ve', '11-Jul-97', 'Female', 'C O B S Masali  Plot No 21-89 B  Vishweshwarayya colony Ashram  Vijayapura', 'Vijayapura', 'KARNATAKA', '', 'C O B S Masali  Plot No 21-89 B  Vishweshwarayya colony Ashram  Vijayapura', 'Vijayapura', 'KARNATAKA', '', '95351913138', '9591639610', 'rashmihakki@gmail.com'),
('PREM  UKKOJI', 'PREM', '', ' UKKOJI ', '2KL15CS051', 'Semester 2', 'Computer Science', 'UG', '23-07-15', 'FF528', '', 'A +ve', '17-Feb-97', 'Male', 'C O SANJAY MORE SAVITREE PRASAD   LAXMI NAGAR GANESHPUR HINDALGA  ', 'BELAGAVI', 'KARNATAKA', '', 'S O SHRIKANT UKKOJI AT POST   MANAGUTTI TQ HUKKERI DIST BELAGAVI  ', 'BELAGAVI', 'KARNATAKA', '', '8105380860', '8105380860', ''),
('APEKSHA  UDAY SHANBHAG ', 'APEKSHA', '', ' UDAY SHANBHAG  ', '2KL15CS011', 'Semester 2', 'Computer Science', 'UG', '22-07-15', 'ZF002', '', 'B +ve', '20-Jul-97', 'Female', 'PANDHARI NILAYA   BEAR GOVT  HOSPITAL   RAVINDRA NAGAR   SIDDAPUR   ', 'SIDDAPUR ', 'KARNATAKA', '', 'PANDHARI NILAYA   BEAR GOVT  HOSPITAL   RAVINDRA NAGAR   SIDDAPUR   ', 'SIDDAPUR ', 'KARNATAKA', '', '7899089657', '7899089657', 'apekshashanbhag07@gmail.com'),
('NIVEDITA NAGAPPA HOSAMANI', 'NIVEDITA', 'NAGAPPA', ' HOSAMANI ', '2KL15CS044', 'Semester 2', 'Computer Science', 'UG', '23-07-15', 'NE428', '', 'B +ve', '15-Jun-97', 'Female', 'A P GANDIGAWAD  BUS STAND ROAD  ', 'KHANAPUR', 'KARNATAKA', '', 'A P GANDIGAWAD  BUS STAND ROAD  ', 'KHANAPUR', 'KARNATAKA', '', '9900430423', '9743530423', ''),
('SAHANA SHASHIKANT DHADED', 'SAHANA', 'SHASHIKANT', ' DHADED ', '2KL15CS068', 'Semester 2', 'Computer Science', 'UG', '22-07-15', 'NJ500', '', 'B +ve', '30-Nov-97', 'Female', '54 Navipeth  Ramdurg  Dist-Belagavi', 'Ramdurg', 'KARNATAKA', '', '54 Navipeth  Ramdurg  Dist-Belagavi', 'Ramdurg', 'KARNATAKA', '', '9482024554', '9448339570', 'dsahana11@gmail.com'),
('MADINA JAMADAR', 'MADINA', '', 'JAMADAR', '2KL15CS035', 'Semester 2', 'Computer Science', 'UG', '22-07-15', 'FA064', '', '', '01-Apr-97', 'Female', 'AT POST - TALLUR TAL- SOUNDATTI   DIST- BELGAUM   ', 'TALLUR ', 'KARNATAKA', '', 'AT POST - TALLUR TAL- SOUNDATTI   DIST- BELGAUM   ', 'TALLUR ', 'KARNATAKA', '', '9449581880', '9743752421', ''),
('KARTIK SANGAMNATH JIRANKALI', 'KARTIK', 'SANGAMNATH', ' JIRANKALI ', '2KL15CS028', 'Semester 2', 'Computer Science', 'UG', '24-07-15', 'NF442', '', '', '01-Dec-96', 'Male', 'SANGMANATH  G JIRANKALI  ASHWINI NILAYA  BASAV NAGAR  RAMDURG TQ RAMDURG', 'RAMDURG', 'KARNATAKA', '', 'SANGMANATH  G JIRANKALI  ASHWINI NILAYA  BASAV NAGAR  RAMDURG TQ RAMDURG', 'RAMDURG', 'KARNATAKA', '', '8095640649', '9481559905', 'jirankalikartik100@gmail.com'),
('DARSHAN BELGAONKAR', 'DARSHAN', '', 'BELGAONKAR', '2KL15CS017', 'Semester 2', 'Computer Science', 'UG', '24-07-15', '', '', '', '16-Aug-97', 'Male', 'H NO 2 BRAHMALING GALLI   BIJAGARANI  ', 'BELAGAVI', 'KARNATAKA', '', 'H NO 2 BRAHMALING GALLI   BIJAGARANI  ', 'BELAGAVI', 'KARNATAKA', '', '9880851359', '8197374993', 'darshanbelgaonkar@gmail.com'),
('SOUJANYA NIRANJAN HIREMATH', 'SOUJANYA', 'NIRANJAN', ' HIREMATH ', '2KL15CS085', 'Semester 2', 'Computer Science', 'UG', '10-07-15', 'UGET15119339', '', 'O +ve', '13-May-97', 'Female', 'Plot No  07 Parwati Layout  1st Phase Saraswatinagar   Ganeshpur road ', 'Belagavi', 'KARNATAKA', '', 'Plot No  07 Parwati Layout  1st Phase Saraswatinagar   Ganeshpur road ', 'Belagavi', 'KARNATAKA', '', '9448907599', '9448907599', 'soujanya.n.h.13@gmail.com'),
('SMITA ZENDE', 'SMITA', '', 'ZENDE', '2KL15CS587-T', 'Semester 2', 'Computer Science', 'UG', '24-07-15', '', '', 'A +ve', '24-Jul-97', 'Female', 'H NO 957 RAMDEV GALLI KANGRALI K H   BELAGAVI  ', 'BELAGAVI', 'KARNATAKA', '', 'SCHEME NO 51 NAKSHATRA COLONY LAXMI TEK   GANESHPUR   Belagavi', 'BELAGAVI', 'KARNATAKA', '', '8892214274', '9964224046', 'zendesmita06@gmail.com'),
('MANJUNATH HOOLI', 'MANJUNATH', '', 'HOOLI', '2KL15CS417', 'Semester 4', 'Computer Science', 'UG', '24-07-15', '', '', '', '01-May-93', 'Male', 'Rajeevgandhi Nagar 2nd Stop  Near Shankar Shop  Dharwad', 'DHARWAD', 'KARNATAKA', '', 'Rajeevgandhi Nagar 2nd Stop  Near Shankar Shop  Dharwad', 'DHARWAD', 'KARNATAKA', '', '7795803964', '9449608931', 'mhooli143@gmail.com'),
('RONIT JADHAV ', 'RONIT', 'JADHAV', '  ', '2KL15CS064', 'Semester 2', 'Computer Science', 'UG', '22-07-15', 'FE281', '', 'AB +ve', '13-Nov-96', 'Male', '483 A   SHAHAPUR ROAD     M  VAGAON   ', 'BELGUAM ', 'KARNATAKA', '', '483 A   SHAHAPUR ROAD     M  VAGAON   ', 'BELGUAM ', 'KARNATAKA', '', '9449370099', '9449370099', 'jadhavnoni01@gmail.com'),
('BASAMMA', 'BASAMMA', '', '', '2KL15CS014', 'Semester 2', 'Computer Science', 'UG', '24-07-15', 'JC240', '', 'A +ve', '13-Jul-97', 'Female', 'D O  BASANAGOUDA BIRADAR  A P  PARASANAHALLI  TQ SHORAPUR  DIST  YADGIR', 'KEMBHAVI', 'KARNATAKA', '', 'D O  BASANAGOUDA BIRADAR  A P  PARASANAHALLI  TQ SHORAPUR  DIST  YADGIR', 'KEMBHAVI', 'KARNATAKA', '', '9901878054', '9980562624', ''),
('VANDANA T PATEL', 'VANDANA', 'T', ' PATEL ', '2KL15CS094', 'Semester 2', 'Computer Science', 'UG', '25-07-15', 'FP306', '', '', '29-Jul-98', 'Female', 'SHREE GAJANAN SWAMILL NEAR  RAGAVENDRA TEMPLE  AT POST GHATAPRABHA', 'GHATAPRABHA', 'KARNATAKA', '', 'SHREE GAJANAN SWAMILL NEAR  RAGAVENDRA TEMPLE  AT POST GHATAPRABHA', 'GHATAPRABHA', 'KARNATAKA', '8332286307', '8867807242', '9901803517', ''),
('AMBIKA', 'AMBIKA', '', '', '2KL15CS008', 'Semester 2', 'Computer Science', 'UG', '27-07-15', 'PA013', '', '', '07-Oct-97', 'Female', 'SHASHIKANT S  TIBSHETTY  C O ANNARAO POLICE PATIL   NEAR LAL HANUMAN SHIK ROZA', 'GULBARGA', 'KARNATAKA', '', 'SHASHIKANT S  TIBSHETTY  C O ANNARAO POLICE PATIL   NEAR LAL HANUMAN SHIK ROZA', 'GULBARGA', 'KARNATAKA', '', '8710094359', '9448180755', ''),
('ROHIT JADHAV', 'ROHIT', '', 'JADHAV', '2KL15CS061', 'Semester 2', 'Computer Science', 'UG', '28-07-15', '', '', 'O +ve', '24-Dec-96', 'Male', 'M3 Vastupurti  Apt Jed Galli  Shahapur  Belagavi', 'Belagavi', 'KARNATAKA', '', 'M3 Vastupurti  Apt Jed Galli  Shahapur  Belagavi', 'Belagavi', 'KARNATAKA', '', '8971554864', '9844874745', 'rohitjadhav806@gmail.com'),
('SANDEEP VILAS JADHAV ', 'SANDEEP', 'VILAS', ' JADHAV  ', '2KL15CS072', 'Semester 2', 'Computer Science', 'UG', '30-07-15', '', '', 'O +ve', '26-May-97', 'Male', 'H NO 2113 SHRI RAM COLONY   LAXMI NAGAR   ', 'HINDALAGA ', 'KARNATAKA', '', 'H NO 2113 SHRI RAM COLONY   LAXMI NAGAR   ', 'HINDALAGA ', 'KARNATAKA', '', '8147318237', '9538342997', ''),
('ROHAN PATIL ', 'ROHAN', 'PATIL', '  ', '2KL15CS595-T', 'Semester 2', 'Computer Science', 'UG', '30-07-15', '', '', 'A +ve', '17-Oct-96', 'Male', 'B C 89  INDEPENDANCE ROAD    CAMP   ', 'BELGAUM ', 'KARNATAKA', '', 'B C 89  INDEPENDANCE ROAD    CAMP   ', 'BELGAUM ', 'KARNATAKA', '', '9739761689', '7776424799', ''),
('SAMANVAYA SRIVASTAVA ', 'SAMANVAYA', 'SRIVASTAVA', '  ', '2KL15CS070', 'Semester 2', 'Computer Science', 'UG', '09-07-15', '1073193', '', '', '26-Dec-96', 'Male', 'G 2   SHANTI NAGAR   KANPUR   CANTT ROAD    ', 'KANPUR ', 'UTTAR PRADESH', '', 'G 2   SHANTI NAGAR   KANPUR   CANTT ROAD    ', 'KANPUR ', 'UTTAR PRADESH', '', '8174837155', '8175959032', ''),
('SANKH SHRUTI SANGAMESHWAR ', 'SANKH', 'SHRUTI', ' SANGAMESHWAR  ', '2KL15CS080', 'Semester 2', 'Computer Science', 'UG', '29-07-15', '2005241', '', '', '18-Dec-97', 'Female', 'MANGALAWAR PETH   KOLI GALLI  DIST - SANGLI   ', 'JATH ', 'MAHARASHTRA', '', 'MANGALAWAR PETH   KOLI GALLI  DIST - SANGLI   ', 'JATH ', 'MAHARASHTRA', '', '9011684974', '7057203574', ''),
('SHRILAXMI KARABASANNAVAR', 'SHRILAXMI', '', 'KARABASANNAVAR', '2KL15CS442', 'Semester 4', 'Computer Science', 'UG', '31-07-15', 'F1113', '', 'B +ve', '24-Oct-94', 'Female', 'AT POST CHIKKOPPA  TQ SAUNDATTI DIST BELAGAVI  ', 'BELAGAVI', 'KARNATAKA', '', 'AT POST CHIKKOPPA  TQ SAUNDATTI DIST BELAGAVI  ', 'BELAGAVI', 'KARNATAKA', '', '8152840536', '9448578765', ''),
('POOJA JANGANURE G', 'POOJA', 'JANGANURE', ' G ', '2KL15CS427', 'Semester 4', 'Computer Science', 'UG', '01-08-15', 'EC36', '', 'B +ve', '07-Sep-96', 'Female', 'HO NO  45    DEVARAJ URAS COLONY   BASAVANA KUDCHI', 'BELAGAVI', 'KARNATAKA', '', 'HO NO  45    DEVARAJ URAS COLONY   BASAVANA KUDCHI', 'BELAGAVI', 'KARNATAKA', '', '8971481287', '9008124247', 'pooja jangnure'),
('MITHIR TUSHAR SOLANKAR', 'MITHIR', 'TUSHAR', ' SOLANKAR ', '2KL15CS598-T', 'Semester 2', 'Computer Science', 'UG', '01-08-15', 'UGET15023947', '', 'B +ve', '17-Oct-97', 'Male', ' 1580 B ward Jorag galli  Mangalawar peth Kolhapur    ', 'Kolhapur', 'KARNATAKA', '', ' 1580 B ward Jorag galli  Mangalawar peth Kolhapur    ', 'Kolhapur', 'KARNATAKA', '8197235920', '7875161903', '7875161903', ''),
('POOJA  KANGLE', 'POOJA', '', ' KANGLE ', '2KL15CS428', 'Semester 4', 'Computer Science', 'UG', '01-08-15', 'F1166', '', '', '25-Apr-92', 'Female', '190 1 2 Archana Bldg  Shivaji colony  Tilakwadi Belgaum    ', 'Belgaum', 'KARNATAKA', '', '190 1 2 Archana Bldg  Shivaji colony  Tilakwadi Belgaum    ', 'Belgaum', 'KARNATAKA', '', '9731956924', '9844463398', ''),
('NITIN PRADHAN', 'NITIN', '', 'PRADHAN', '2KL15CS043', 'Semester 2', 'Computer Science', 'UG', '10-07-15', 'UGET15015608', '', 'A +ve', '04-May-96', 'Male', 'H NO 06 Kathar tola  Po -Simalia  P S  Ratu  ranchi', 'Ranchi', 'JHARKHAND', '', 'H NO 06 Kathar tola  Po -Simalia  P S  Ratu  ranchi', 'Ranchi', 'JHARKHAND', '', '9709025392', '8087924511', 'nitinpradhan48@gmail.com'),
('MANJULA MAHADEV BAGODI', 'MANJULA', 'MAHADEV', ' BAGODI ', '2KL15CS415', 'Semester 4', 'Computer Science', 'UG', '01-08-15', 'E036', '', 'B +ve', '17-May-93', 'Female', 'CTS No  4807 30  Jail Housing  society   Veerabhadra Nagar  ', 'Belagavi', 'KARNATAKA', '', 'CTS No  4807 30  Jail Housing  society   Veerabhadra Nagar  ', 'Belagavi', 'KARNATAKA', '', '', '9945520818', ''),
('NIKHIL DATTATRAY KAMU', 'NIKHIL', 'DATTATRAY', ' KAMU ', '2KL15CS425', 'Semester 4', 'Computer Science', 'UG', '01-08-15', 'F1053', '', 'A +ve', '12-Jul-95', 'Male', 'CTSNo 5744  Ganapati Galli   Anagol  Belgavi  ', 'Belagavi', 'KARNATAKA', '', 'CTSNo 5744  Ganapati Galli   Anagol  Belgavi  ', 'Belagavi', 'KARNATAKA', '', '9739775866', '9739775866', ''),
('JYOTI HOSURKAR ', 'JYOTI', 'HOSURKAR', '  ', '2KL15CS410', 'Semester 4', 'Computer Science', 'UG', '01-08-15', 'F1127', '', '', '18-May-96', 'Female', 'GADEKAR GALLI   BELVATTI   TAL - BELGAUM   DIST BELGAUM', 'BELVATTI ', 'KARNATAKA', '', 'GADEKAR GALLI   BELVATTI   TAL - BELGAUM   DIST BELGAUM', 'BELVATTI ', 'KARNATAKA', '', '9686223249', '9880824860', ''),
('VINAYAK NANDIHALLIMATH ', 'VINAYAK', 'NANDIHALLIMATH', '  ', '2KL15CS451', 'Semester 4', 'Computer Science', 'UG', '31-07-15', 'F1051', '', 'AB +ve', '22-May-96', 'Male', 'H NO 1124 2 DURGA NILAYA    NEMINATH GALLI   MARUTI ROAD   OLD GANDHI NAGAR ', 'Belgaum', 'KARNATAKA', '', 'H NO 1124 2 DURGA NILAYA    NEMINATH GALLI   MARUTI ROAD   OLD GANDHI NAGAR ', 'Belgaum', 'KARNATAKA', '', '9986141683', '9481007887', ''),
('NEHA SHINDE ', 'NEHA', 'SHINDE', '  ', '2KL15CS424', 'Semester 4', 'Computer Science', 'UG', '01-08-15', 'f1235', '', 'A +ve', '29-Jun-94', 'Female', 'CCB 69  SHIVAJI COLONY   TILAKWADI  ', 'BELGAUM ', 'KARNATAKA', '', 'CCB 69  SHIVAJI COLONY   TILAKWADI  ', 'BELGAUM ', 'KARNATAKA', '', '8722582650', '7353247799', ''),
('VIKRANT VILAS LAD', 'VIKRANT', 'VILAS', ' LAD ', '2KL15CS450', 'Semester 4', 'Computer Science', 'UG', '30-07-15', 'F1239', '', 'A +ve', '01-Apr-97', 'Male', 'H NO-1146   Saraf Galli   Shahapur Belagvi', 'BELAGAVI', 'KARNATAKA', '', 'H NO-1146   Saraf Galli   Shahapur Belagvi', 'BELAGAVI', 'KARNATAKA', '', '8861612762', '9980867016', 'yoyoviky007@gmail.com'),
('SHAFEEQ AWATI', 'SHAFEEQ', '', 'AWATI', '2KL15CS440', 'Semester 4', 'Computer Science', 'UG', '30-07-15', 'J2139', '', 'O +ve', '10-Jun-93', 'Male', 'ATpo-Dindawar  Ta-Basavan Bagewadi  Dist- Vijayapur', 'Dindawar', 'KARNATAKA', '', 'ATpo-Dindawar  Ta-Basavan Bagewadi  Dist- Vijayapur', 'Dindawar', 'KARNATAKA', '', '9741793341', '8197788651', 'shafeeqawati786@gmail.com'),
('DEEPA CHITTARAGI ', 'DEEPA', 'CHITTARAGI', '  ', '2KL15CS407', 'Semester 4', 'Computer Science', 'UG', '01-08-15', 'J4307', '', 'O -ve', '28-Jul-94', 'Female', 'AT-BADANUR TAL- MUDHOL   DIST- BAGALKOT   ', 'BADANUR ', 'KARNATAKA', '', 'AT-BADANUR TAL- MUDHOL   DIST- BAGALKOT   ', 'BADANUR ', 'KARNATAKA', '', '9663768769', '9480274459', ''),
('MEGHANA MANNANNAVAR', 'MEGHANA', '', 'MANNANNAVAR', '2KL15CS420', 'Semester 4', 'Computer Science', 'UG', '31-07-15', 'A6384', '', '', '11-Dec-94', 'Female', 'Basaveswar nagar   Near katti Basavanna temple  Gadag', 'Gadag', 'KARNATAKA', '', 'Basaveswar nagar   Near katti Basavanna temple  Gadag', 'Gadag', 'KARNATAKA', '', '8762377998', '8762377998', 'mmeghavm@gmail.com'),
('MANJULA  S  NADANALLI', 'MANJULA', '', ' S  NADANALLI ', '2KL15CS416', 'Semester 4', 'Computer Science', 'UG', '30-07-15', 'N5210', '', 'A +ve', '22-Sep-94', 'Female', 'S N NADANALLI  C O M B NAYKAR  H NO-30 A  MALLIKARJUN NAGAR SAVADATTI ROAD', 'DHARWAD', 'KARNATAKA', '', 'S N NADANALLI  C O M B NAYKAR  H NO-30 A  MALLIKARJUN NAGAR SAVADATTI ROAD', 'DHARWAD', 'KARNATAKA', '', '9591941466', '9742685478', 'manjulasn.123@gmail.com'),
('DARSHAN DILIP HONAGEKAR ', 'DARSHAN', 'DILIP', ' HONAGEKAR  ', '2KL15CS018', 'Semester 2', 'Computer Science', 'UG', '03-08-15', '', '', '', '09-Apr-97', 'Male', 'H NO 1889  MELGE GALLI   SHAHAPUR   BELGAUM ', 'Belgaum', 'KARNATAKA', '', 'H NO 1889  MELGE GALLI   SHAHAPUR   BELGAUM ', 'Belgaum', 'KARNATAKA', '', '9449506511', '9901865167', ''),
('BABU ADIANDRA K', 'BABU', 'ADIANDRA', ' K ', '2KL15CS405', 'Semester 4', 'Computer Science', 'UG', '30-07-15', 'F1093', '', '', '07-Oct-95', 'Male', 'H NO-5 5  PK QTRS   ANANDWADI   SHAHAPUR BELGAUM', 'BELAGAVI', 'KARNATAKA', '', 'H NO-5 5  PK QTRS   ANANDWADI   SHAHAPUR BELGAUM', 'BELAGAVI', 'KARNATAKA', '', '8971767427', '7846931188', 'BOBKRISH0434@gmail.com'),
('MANORAMA SUBHASH ANGOLKAR', 'MANORAMA', 'SUBHASH', ' ANGOLKAR ', '2KL15CS419', 'Semester 4', 'Computer Science', 'UG', '03-08-15', 'f1213', '', 'B +ve', '13-Jul-93', 'Female', ' 20  2nd main  SHIVAJI NAGAR  BELGAUM  ', 'Belagavi', 'KARNATAKA', '', ' 20  2nd main  SHIVAJI NAGAR  BELGAUM  ', 'Belagavi', 'KARNATAKA', '', '', '9902068307', ''),
('TRUPTI D HONGEKAR', 'TRUPTI', 'D', ' HONGEKAR ', '2KL15CS448', 'Semester 4', 'Computer Science', 'UG', '03-08-15', 'f1056', '', '', '06-Aug-93', 'Female', ' 555 11 PETH GALLI  AT POST KADOLI  ', 'Belagavi', 'KARNATAKA', '', ' 555 11 PETH GALLI  AT POST KADOLI  ', 'Belagavi', 'KARNATAKA', '', '', '8867326835', ''),
('SAGAR SHANKAR KHATEDAR', 'SAGAR', 'SHANKAR', ' KHATEDAR ', '2KL15CS436', 'Semester 4', 'Computer Science', 'UG', '01-08-15', 'F1186', '', '', '25-Jul-95', 'Male', 'A p  Nainglaj  Tq  Chikodi  Dst  Belagavi', 'Belagavi', 'KARNATAKA', '', 'A p  Nainglaj  Tq  Chikodi  Dst  Belagavi', 'Belagavi', 'KARNATAKA', '', '9535508939', '9535508939', 'sagar.khatedar@gmail.com'),
('KOMAL PATIL', 'KOMAL', '', 'PATIL', '2KL15CS030', 'Semester 2', 'Computer Science', 'UG', '03-08-15', '', '', '', '28-Aug-97', 'Female', 'Jawarnagar H No  7-5-75  Padmavathi Apt   Raichur', 'Raichur', 'KARNATAKA', '', 'Jawarnagar H No  7-5-75  Padmavathi Apt   Raichur', 'Raichur', 'KARNATAKA', '', '9448757469', '9632507967', ''),
('MANJUNATH MUGALI', 'MANJUNATH', '', 'MUGALI', '2KL15CS418', 'Semester 4', 'Computer Science', 'UG', '30-07-15', 'F1193', '', '', '10-Sep-96', 'Male', 'AT PO-ANKALE  TA-HUKKERI  DIST-BELAGAVI', 'ANKALE', 'KARNATAKA', '', 'AT PO-ANKALE  TA-HUKKERI  DIST-BELAGAVI', 'ANKALE', 'KARNATAKA', '', '8861181119', '8861181119', 'manjumugali10@gmail.com'),
('SWATI SANJAY BIRADI', 'SWATI', 'SANJAY', 'BIRADI', '2KL15CS447', 'Semester 4', 'Computer Science', 'UG', '03-08-15', 'F1177', '', '', '01-Jan-70', '', '', '', '', '', '', '', '', '', '', '', ''),
('SWATI SANJAY BIRADI', 'SWATI', 'SANJAY', ' BIRADI ', '2KL15CS447', 'Semester 4', 'Computer Science', 'UG', '03-08-15', 'F1177', '', '', '10-May-96', 'Female', 'PLOT NO 384 SHIVBASAV NAGAR  Belagavi  ', 'Belagavi', 'KARNATAKA', '', 'PLOT NO 384 SHIVBASAV NAGAR  Belagavi  ', 'Belagavi', 'KARNATAKA', '', '', '9448113488', ''),
('SONIA ANCHI', 'SONIA', '', 'ANCHI', '2KL15CS445', 'Semester 4', 'Computer Science', 'UG', '03-08-15', 'F1048', '', '', '31-May-95', 'Female', '329 A PATIL GALLI  MUTAGE  BELGAUM', 'Belagavi', 'KARNATAKA', '', '329 A PATIL GALLI  MUTAGE  BELGAUM', 'Belagavi', 'KARNATAKA', '', '9035262321', '9972952715', 'shonaanchi121@gmail.com'),
('RAGHVENDRA ', 'RAGHVENDRA', '', '', '2KL15CS431', 'Semester 4', 'Computer Science', 'UG', '31-07-15', 'P8296', '', '', '01-Nov-93', 'Male', 'H NO 832   NEAR BHUDHA VIHAR     BASAVA NAGAR     KALABURGI ', 'GUBARGA ', 'KARNATAKA', '', 'H NO 832   NEAR BHUDHA VIHAR     BASAVA NAGAR     KALABURGI ', 'GUBARGA ', 'KARNATAKA', '', '8105335191', '9964133888', ''),
('SUPRIYA MOHAN KARJOL', 'SUPRIYA', 'MOHAN', ' KARJOL ', '2KL15CS446', 'Semester 4', 'Computer Science', 'UG', '04-08-15', 'F1130', '', 'AB +ve', '01-Jun-96', 'Female', 'Plot No 1303  Champa Bai Bhosale Marg  Near Harsha Hotel  Ramtirth Nagar', 'Belagavi', 'KARNATAKA', '', 'Plot No 1303  Champa Bai Bhosale Marg  Near Harsha Hotel  Ramtirth Nagar', 'Belagavi', 'KARNATAKA', '', '9538169747', '9449207637', 'supriyakarjol01@gmail.com'),
('RENU PUJARI A', 'RENU', 'PUJARI', ' A ', '2KL15CS433', 'Semester 4', 'Computer Science', 'UG', '04-08-15', 'F1028', '', '', '29-Nov-96', 'Female', 'H No 811 LB Shastri Nagar  Kangrali bk  Belagavi', 'Belagavi', 'KARNATAKA', '', 'H No 811 LB Shastri Nagar  Kangrali bk  Belagavi', 'Belagavi', 'KARNATAKA', '', '9008700287', '9590606637', 'koli.kavita2010@gmail.com'),
('KARTIK SHODHAN NAYAK', 'KARTIK', 'SHODHAN', ' NAYAK ', '2KL15CS412', 'Semester 4', 'Computer Science', 'UG', '03-08-15', 'F1203', '', 'O +ve', '20-Oct-94', 'Male', '390  Maharshi Road  Tilakwadi  Belagavi', 'Belagavi', 'KARNATAKA', '', '390  Maharshi Road  Tilakwadi  Belagavi', 'Belagavi', 'KARNATAKA', '', '9902805705', '9964875005', 'kartiknayak123@gmail.com');
INSERT INTO `sdata` (`Name`, `Firstname`, `Middlename`, `Lastname`, `USN`, `Semester`, `Branch`, `Course`, `Admission Date`, `Student Registration No`, `Admission Year`, `Blood Group`, `Birth Date`, `Gender`, `Current Address`, `Current City`, `Current State`, `Current Phone`, `Permanent Address`, `Permanent City`, `Permanent State`, `Permanent Phone`, `Mobile`, `Emergency No`, `EmailID`) VALUES
('SANTOSH MUTTANNA MANE', 'SANTOSH', 'MUTTANNA', ' MANE ', '2KL15CS439', 'Semester 4', 'Computer Science', 'UG', '04-08-15', 'J2202', '', '', '10-Jun-95', 'Male', 'A P MASUTI   TQ-BASAVANA BAGEWADI  DT-VIJAYAPUR', 'MASUTI', 'KARNATAKA', '', 'A P MASUTI   TQ-BASAVANA BAGEWADI  DT-VIJAYAPUR', 'MASUTI', 'KARNATAKA', '', '9663887209', '9880245110', 'santoshmane876@gmail.com'),
('KALYANI GIRISAGAR ', 'KALYANI', 'GIRISAGAR', '  ', '2KL15CS411', 'Semester 4', 'Computer Science', 'UG', '03-08-15', 'F1145', '', 'A +ve', '09-Feb-95', 'Female', 'KURUNDWAD WADA   CHAVADI ROAD   UGAR KHURD   TAL - ATHANI   DIST- BELGAUM ', 'UGAR KHURD ', 'KARNATAKA', '', 'KURUNDWAD WADA   CHAVADI ROAD   UGAR KHURD   TAL - ATHANI   DIST- BELGAUM ', 'UGAR KHURD ', 'KARNATAKA', '', '8050364990', '9731840591', ''),
('MILIND PATIL', 'MILIND', '', 'PATIL', '2KL15CS422', 'Semester 4', 'Computer Science', 'UG', '04-08-15', 'F1114', '', 'B +ve', '10-Sep-95', 'Male', 'H ON 495 JANATA COLONY   SIMEDEV NAGAR   SULAGA', 'BELAGAVI', 'KARNATAKA', '', 'H ON 495 JANATA COLONY   SIMEDEV NAGAR   SULAGA', 'BELAGAVI', 'KARNATAKA', '', '9035366875', '8147269017', 'patilm94@yahoo.in'),
('MEHABOOB M ATTAR', 'MEHABOOB', 'M', ' ATTAR ', '2KL15CS421', 'Semester 4', 'Computer Science', 'UG', '04-08-15', 'F1123', '', 'A +ve', '26-Oct-91', 'Male', 'MIG 29 ASHOK NAGAR II CROSS     ', 'BELGAUM', 'KARNATAKA', '', 'MIG 29 ASHOK NAGAR II CROSS     ', 'BELGAUM', 'KARNATAKA', '', '7411545351', '7204947018', 'meheboobattar@gmail.com'),
('VRUSHABH GOPINATH BULBULE', 'VRUSHABH', 'GOPINATH', ' BULBULE ', '2KL15CS452', 'Semester 4', 'Computer Science', 'UG', '04-08-15', 'F1067', '', '', '04-Apr-95', 'Male', 'H  No  20  Church Street  Camp  Belgaum    ', 'BELGAUM', 'KARNATAKA', '', 'H  No  20  Church Street  Camp  Belgaum    ', 'BELGAUM', 'KARNATAKA', '', '8867788140', '8312446602', 'vrushabh.b1995@gmail.com'),
('BHARATI', 'BHARATI', '', '', '2KL15CS406', 'Semester 4', 'Computer Science', 'UG', '05-08-15', 'P8234', '', '', '08-Dec-95', 'Female', 'Hongunta  Tal  Chittapur  Dist  Kalburgi', 'Hongunta', 'KARNATAKA', '', 'Hongunta  Tal  Chittapur  Dist  Kalburgi', 'Hongunta', 'KARNATAKA', '', '9686627053', '9686627053', 'bharti53.kollur@gmail.com'),
('SHUBHAM DINAKAR MORE', 'SHUBHAM', 'DINAKAR', ' MORE ', '2KL15CS444', 'Semester 4', 'Computer Science', 'UG', '04-08-15', 'F1060', '', '', '02-Aug-95', 'Male', 'Dinakar More H  No  173  Ramnagar galli  2nd Cross  1st Bus stop - Kangrali  KH  BELAGAVI    ', 'BELAGAVI', 'KARNATAKA', '', 'Dinakar More H  No  173  Ramnagar galli  2nd Cross  1st Bus stop - Kangrali  KH  BELAGAVI    ', 'BELAGAVI', 'KARNATAKA', '', '', '7676651603', ''),
('SAJIDABI M ANGOLKAR', 'SAJIDABI', 'M', ' ANGOLKAR ', '2KL15CS437', 'Semester 4', 'Computer Science', 'UG', '05-08-15', 'F1131', '', '', '25-Nov-94', 'Female', '2760 B Khade Bazar    ', 'BELGAUM', 'KARNATAKA', '', '2760 B Khade Bazar    ', 'BELGAUM', 'KARNATAKA', '', '7204604109', '7204604109', 'Sajida.M.Angolkar@gmail.com'),
('PATIL MADHU KUMAR', 'PATIL', 'MADHU', ' KUMAR ', '2KL15CS046', 'Semester 2', 'Computer Science', 'UG', '05-08-15', '', '', 'O +ve', '09-Oct-96', 'Female', 'C-604 Aphrodite Building  Lodha Paradise  Majiwada  Thane', 'Thane', 'MAHARASHTRA', '', 'C-604 Aphrodite Building  Lodha Paradise  Majiwada  Thane', 'Thane', 'MAHARASHTRA', '', '8879299675', '8879299675', 'k.patil@ticb.com'),
('ASHISH KUMAR', 'ASHISH', 'KUMAR', '', '2KL13CS008', 'Semester 4', 'Computer Science', 'UG', '01-01-70', '', '', '', '21-Oct-94', '', '', '', '', '', '', '', '', '', '', '', ''),
('SHREYAS BUDYAL', 'SHREYAS', 'BUDYAL', '', '2KL13CS420', 'Semester 6', 'Computer Science', 'UG', '01-01-70', '', '', '', '16-Nov-91', '', '', '', '', '', '', '', '', '', '', '', ''),
('PRATEEK KUMAR SINGH', 'PRATEEK', 'KUMAR', 'SINGH', '2KL12CS039', 'Semester 6', 'Computer Science', 'UG', '01-01-70', '', '', '', '31-Jan-95', '', '', '', '', '', '', '', '', '', '', '', ''),
('MILIND PRIYADARSHI', 'MILIND', 'PRIYADARSHI', '', '2KL12CS031', 'Semester 6', 'Computer Science', 'UG', '01-01-70', '', '', '', '15-Apr-93', '', '', '', '', '', '', '', '', '', '', '', ''),
('BASAVARAJ R OGI', 'BASAVARAJ', 'R', 'OGI', '2KL11CS016', 'Semester 8', 'Computer Science', 'UG', '01-01-70', '', '', '', '07-Feb-94', '', '', '', '', '', '', '', '', '', '', '', ''),
('TEJAS VINAY SURA ', 'TEJAS', 'VINAY', 'SURA', '2KL10EE033', 'Semester 6', 'Computer Science', 'UG', '01-01-70', '', '', '', '23-Nov-92', '', '', '', '', '', '', '', '', '', '', '', ''),
('SHIVANI PATIL', 'SHIVANI', 'PATIL', '', '2KL15CS077', 'Semester 2', 'Computer Science', 'UG', '13-08-15', '0', '', '', '01-Jan-70', '', '', '', '', '', '', '', '', '', '', '', ''),
('MANJUNATH R AKKANNAVAR', 'MANJUNATH', 'R', 'AKKANNAVAR', '2KL11CS405', 'Semester 8', 'Computer Science', 'UG', '01-01-70', '', '', '', '25-Jul-90', '', '', '', '', '', '', '', '', '', '', '', ''),
('KIRAN I VAJJARAMATTI', 'KIRAN', 'I', 'VAJJARAMATTI', '2KL11CS031', 'Semester 8', 'Computer Science', 'UG', '01-01-70', '', '', '', '01-Dec-92', '', '', '', '', '', '', '', '', '', '', '', ''),
('ANITA SHINDE', 'ANITA', '', 'SHINDE', '2KL15CS403', 'Semester 4', 'Computer Science', 'UG', '17-08-15', 'F1206', '', 'A +ve', '15-Jul-93', 'Female', 'A P M C Yard Belagavi road Bailahongal  Tal Bailhaongal  DIST BELGAUM', 'Bailhongal', 'KARNATAKA', '', 'A P M C Yard Belagavi road Bailahongal  Tal Bailhaongal  DIST BELGAUM', 'Bailhongal', 'KARNATAKA', '', '', '9845621233', ''),
('NIKHILESH KUMAR', 'NIKHILESH', 'KUMAR', '', '2KL11CS101', 'Semester 6', 'Computer Science', 'UG', '01-01-70', '', '', '', '02-Mar-93', '', '', '', '', '', '', '', '', '', '', '', ''),
('SURAJ GUNDI', 'SURAJ', 'GUNDI', '', '2KL11CS085', 'Semester 8', 'Computer Science', 'UG', '01-01-70', '', '', '', '31-Mar-94', '', '', '', '', '', '', '', '', '', '', '', ''),
('ABHISHEK KUMAR', 'ABHISHEK', 'KUMAR', '', '2KL11CS004', 'Semester 8', 'Computer Science', 'UG', '01-01-70', '', '', '', '29-Aug-92', '', '', '', '', '', '', '', '', '', '', '', ''),
('PRATIK SHIGLI', 'PRATIK', 'SHIGLI', '', '2KL12CS040', 'Semester 6', 'Computer Science', 'UG', '01-01-70', '', '', '', '03-Sep-94', '', '', '', '', '', '', '', '', '', '', '', ''),
('SAKSHAM  KUMAR', 'SAKSHAM', 'KUMAR', '', '2KL12CS052', 'Semester 6', 'Computer Science', 'UG', '01-01-70', '', '', '', '20-Dec-94', '', '', '', '', '', '', '', '', '', '', '', ''),
('ANKIT ', 'ANKIT', '', '', '2KL12CS008', 'Semester 4', 'Computer Science', 'UG', '01-01-70', '', '', '', '20-Dec-92', '', '', '', '', '', '', '', '', '', '', '', ''),
('KETAN ', 'KETAN', '', '', '2KL12CS026', 'Semester 4', 'Computer Science', 'UG', '01-01-70', '', '', '', '22-Feb-94', '', '', '', '', '', '', '', '', '', '', '', ''),
('LAXMI PATIL', 'LAXMI', 'PATIL', '', '2KL15CS413', 'Semester 4', 'Computer Science', 'UG', '01-01-70', '', '', '', '01-Aug-94', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
`id` int(11) NOT NULL,
  `deposit` int(10) NOT NULL,
  `name` varchar(25) NOT NULL,
  `usn` varchar(10) NOT NULL,
  `password` varchar(33) NOT NULL,
  `semester` varchar(15) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `dob` varchar(25) NOT NULL,
  `doj` date NOT NULL,
  `contact` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `building` varchar(10) NOT NULL,
  `roomno` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `deposit`, `name`, `usn`, `password`, `semester`, `branch`, `dob`, `doj`, `contact`, `gender`, `building`, `roomno`, `status`, `balance`) VALUES
(2, 15000, 'ABHISHEK GADAG', '2KL15CS001', '25d55ad283aa400af464c76d713c07ad', 'Semester 3', 'Computer Science', '28-Feb-97', '2016-03-27', '9448304345', 'Male', '', '', 'Enabled', 11732),
(3, 15000, 'AISHWARYA JAIWANT SHANBHA', '2KL15CS003', '25d55ad283aa400af464c76d713c07ad', 'Semester 3', 'Computer Science', '06-Mar-97', '2016-03-27', '8762326067', 'Female', '', '', 'Enabled', 11732),
(4, 15000, 'ABHISHEK U PATKI', '2KL15CS002', '25d55ad283aa400af464c76d713c07ad', 'Semester 3', 'Computer Science', '10-Jan-98', '2016-03-27', '8762451248', 'Male', '', '', 'Enabled', 11732),
(5, 15000, 'AISHWARYA J KAVI', '2KL15CS004', '25d55ad283aa400af464c76d713c07ad', 'Semester 3', 'Computer Science', '15-Apr-97', '2016-03-27', '9448494967', 'Female', '', '', 'Enabled', 11732),
(6, 15000, 'AJAYKUMAR  MAJUKAR', '2KL15CS005', '25d55ad283aa400af464c76d713c07ad', 'Semester 3', 'Computer Science', '08-Nov-96', '2016-03-27', '9164049275', 'Male', '', '', 'Enabled', 11732),
(7, 15000, 'APEKSHA  UDAY SHANBHAG ', '2KL15CS006', '25d55ad283aa400af464c76d713c07ad', 'Semester 3', 'Computer Science', '20-Jul-97', '2016-03-27', '7899089657', 'Female', '', '', 'Enabled', 11732),
(9, 15000, 'AKSHAY A KADAM', '2KL15CS007', '25d55ad283aa400af464c76d713c07ad', 'Semester 3', 'Computer Science', '17-Jun-97', '2016-04-12', '9036411285', 'Male', '1', '5', 'Enabled', 11732);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminmessage`
--
ALTER TABLE `adminmessage`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `usn` (`usn`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminmessage`
--
ALTER TABLE `adminmessage`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=282;
--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=187;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
