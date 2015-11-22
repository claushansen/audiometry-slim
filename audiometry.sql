-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Vært: localhost
-- Genereringstid: 22. 11 2015 kl. 17:53:02
-- Serverversion: 5.5.24-log
-- PHP-version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `audiometry`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `a_doctor`
--

CREATE TABLE IF NOT EXISTS `a_doctor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Data dump for tabellen `a_doctor`
--

INSERT INTO `a_doctor` (`id`, `username`, `password`) VALUES
(1, 'Doctor1', 'password');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `a_journal`
--

CREATE TABLE IF NOT EXISTS `a_journal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patientId` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Data dump for tabellen `a_journal`
--

INSERT INTO `a_journal` (`id`, `patientId`, `date`) VALUES
(1, 1, 1445259142);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `a_journalpoints`
--

CREATE TABLE IF NOT EXISTS `a_journalpoints` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `journalId` int(11) NOT NULL,
  `ear` tinyint(1) NOT NULL,
  `frequence` int(11) NOT NULL,
  `decibel` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Data dump for tabellen `a_journalpoints`
--

INSERT INTO `a_journalpoints` (`id`, `journalId`, `ear`, `frequence`, `decibel`) VALUES
(1, 1, 0, 500, 40),
(2, 1, 1, 250, 35),
(3, 1, 0, 1000, 30),
(4, 1, 1, 500, 25),
(5, 1, 0, 250, 20),
(6, 1, 0, 2000, 23),
(7, 1, 0, 3000, 22),
(8, 1, 0, 4000, 21),
(9, 1, 0, 6000, 22),
(10, 1, 0, 8000, 35),
(11, 1, 1, 1000, 20),
(12, 1, 1, 2000, 23),
(13, 1, 1, 3000, 22),
(14, 1, 1, 4000, 21),
(15, 1, 1, 6000, 22),
(16, 1, 1, 8000, 35);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `a_patient`
--

CREATE TABLE IF NOT EXISTS `a_patient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cpr` int(11) NOT NULL,
  `password` varchar(20) NOT NULL,
  `phone` int(11) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Data dump for tabellen `a_patient`
--

INSERT INTO `a_patient` (`id`, `cpr`, `password`, `phone`, `firstName`, `lastName`) VALUES
(1, 1122334444, 'password', 12345678, 'Benny', 'Bentsen'),
(3, 1111112222, 'admin', 12348765, 'Hans', 'Hansen'),
(4, 1112223333, '56252e6d70da3', 87654321, 'Heino', 'Heinz');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `a_patientdoctorlink`
--

CREATE TABLE IF NOT EXISTS `a_patientdoctorlink` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patientId` int(11) NOT NULL,
  `doctorId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
