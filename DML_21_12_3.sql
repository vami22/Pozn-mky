-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hostiteľ: 127.0.0.1:3307
-- Čas generovania: Pi 03.Dec 2021, 16:58
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
-- Štruktúra tabuľky pre tabuľku `predmet`
--
CREATE TABLE IF NOT EXISTS `predmet` (
  `ID_predmetu` int(11) NOT NULL AUTO_INCREMENT,
  `Predmet` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_predmetu`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Sťahujem dáta pre tabuľku `predmet`
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
-- Štruktúra tabuľky pre tabuľku `triedny_ucitelia`
--
CREATE TABLE IF NOT EXISTS `triedny_ucitelia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Trieda` varchar(30) NOT NULL,
  `Meno_ucitela` varchar(30) NOT NULL,
  `ID_predmetu` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ID_predmetu` (`ID_predmetu`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Sťahujem dáta pre tabuľku `triedny_ucitelia`
--

INSERT INTO `triedny_ucitelia` (`id`, `Trieda`, `Meno_ucitela`, `ID_predmetu`) VALUES
(1, '1.A', 'Lenka', 1),
(2, '2.A', 'Eva', 2),
(3, '3.A', 'Laura', 3),
(4, '4.A', 'Michaela', 4),
(5, '5.A', 'David', 5),
(6, '6.A', 'Martin', 6),
(7, '7.A', 'Tobias', 7),
(8, '8.A', 'Lucia', 8),
(9, '9.A', 'Ondrej', 9),
(10, '9.B', 'Jakub', 10);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ucitelia`
--
CREATE TABLE IF NOT EXISTS `ucitelia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Meno_ucitela` varchar(30) NOT NULL,
  `ID_predmetu` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ID_predmetu` (`ID_predmetu`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Sťahujem dáta pre tabuľku `ucitelia`
--

INSERT INTO `ucitelia` (`id`, `Meno_ucitela`, `ID_predmetu`) VALUES
(1, 'Lenka', 1),
(2, 'Eva', 2),
(3, 'Laura', 3),
(4, 'Michaela', 4),
(5, 'David', 5),
(6, 'Martin', 6),
(7, 'Tobias', 7),
(8, 'Lucia', 8),
(9, 'Ondrej', 9),
(10, 'Jakub', 10);

--
-- vypise vsetky tabulky za sebou so vsetkymi pridanymi prvkami/informaciami
--
SELECT * FROM predmet JOIN triedny_ucitelia JOIN ucitelia

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
