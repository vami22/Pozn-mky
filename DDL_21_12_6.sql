-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hostiteľ: 127.0.0.1:3307
-- Čas generovania: Ne 12.Dec 2021, 21:07
-- Verzia serveru: 10.4.13-MariaDB
-- Verzia PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáza: `zakladna_skola`
--

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cislo`
--

DROP TABLE IF EXISTS `cislo`;
CREATE TABLE IF NOT EXISTS `cislo` (
  `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ucitel` varchar(13) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `cislo_triedy`
--

DROP TABLE IF EXISTS `cislo_triedy`;
CREATE TABLE IF NOT EXISTS `cislo_triedy` (
  `triedaID` int(6) UNSIGNED NOT NULL,
  `cisloID` int(6) UNSIGNED NOT NULL,
  PRIMARY KEY (`triedaID`,`cisloID`),
  KEY `cisloID` (`cisloID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `predmet`
--

DROP TABLE IF EXISTS `predmet`;
CREATE TABLE IF NOT EXISTS `predmet` (
  `ID_predmetu` int(11) NOT NULL AUTO_INCREMENT,
  `Predmet` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_predmetu`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
