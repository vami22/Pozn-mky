-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 03, 2021 at 04:20 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zakladna_skola`
--

-- --------------------------------------------------------

--
-- Table structure for table `predmet`
--

DROP TABLE IF EXISTS `predmet`;
CREATE TABLE IF NOT EXISTS `predmet` (
  `ID_predmetu` int(11) NOT NULL AUTO_INCREMENT,
  `Predmet` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_predmetu`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `predmet`
--

INSERT INTO `predmet` (`ID_predmetu`, `Predmet`) VALUES
(1, 'SJL'),
(2, 'MAT'),
(3, 'ANJ'),
(4, 'NEM'),
(5, 'BIO'),
(6, 'GEO'),
(7, 'DEJ'),
(8, 'CHE'),
(9, 'FYZ'),
(10, 'TSV');

-- --------------------------------------------------------

--
-- Table structure for table `triedny_ucitelia`
--

DROP TABLE IF EXISTS `triedny_ucitelia`;
CREATE TABLE IF NOT EXISTS `triedny_ucitelia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Trieda` varchar(30) NOT NULL,
  `Meno_ucitela` varchar(30) NOT NULL,
  `ID_predmetu` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ID_predmetu` (`ID_predmetu`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ucitelia`
--

DROP TABLE IF EXISTS `ucitelia`;
CREATE TABLE IF NOT EXISTS `ucitelia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Meno_ucitela` varchar(30) NOT NULL,
  `ID_predmetu` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ID_predmetu` (`ID_predmetu`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
