-- phpMyAdmin SQL Dump
-- version 3.5.8.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 27, 2013 at 03:26 PM
-- Server version: 5.5.32-0ubuntu0.13.04.1
-- PHP Version: 5.4.9-4ubuntu2.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `SpaceDatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `Astronaut`
--

CREATE TABLE IF NOT EXISTS `Astronaut` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(15) DEFAULT NULL,
  `middleName` varchar(15) DEFAULT NULL,
  `lastName` varchar(15) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `Astronaut`
--

INSERT INTO `Astronaut` (`id`, `firstName`, `middleName`, `lastName`, `country`, `dob`) VALUES
(1, 'Abousheh', 'Altafiq', 'Ansari', 'Iran', '1966-09-12'),
(2, 'Neil ', 'Alden', 'Armstrong', 'Unite States of America', '1930-08-05'),
(3, 'Edwin ', 'Eugene', 'Aldrin', 'United States Of America', '1930-01-20'),
(4, 'Yuri ', 'Alekseyevich', 'Gagarin', 'USSR', '1934-03-09'),
(5, 'Jean', 'Pierre', 'Haignere', 'France', '1948-05-19'),
(6, 'Claudie ', 'Andre', 'Deshays', 'Russia', '1957-05-13'),
(7, 'Rakesh', NULL, 'Sharma', 'India', '1949-01-13'),
(8, 'Anna ', 'Lee ', 'Fisher', 'Unite States of America', '1949-08-24'),
(9, 'Kalpana', NULL, 'Chawla', 'India', '1961-07-01'),
(10, 'Sunita', NULL, 'Williams', 'India', '1965-09-19'),
(11, 'Sergei', 'Vonn', 'Trappe', 'Russia', '1947-11-09'),
(12, 'Anna', '', 'Gunn', 'USA', '1934-11-02');

-- --------------------------------------------------------

--
-- Table structure for table `Astronomer`
--

CREATE TABLE IF NOT EXISTS `Astronomer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(15) DEFAULT NULL,
  `middleName` varchar(15) DEFAULT NULL,
  `lastName` varchar(15) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `Astronomer`
--

INSERT INTO `Astronomer` (`id`, `firstName`, `middleName`, `lastName`, `country`, `dob`) VALUES
(1, 'Galileo', NULL, 'Galilei', 'Italy', '1564-02-15'),
(2, 'Tycho ', 'Ottesen', 'Brahe', 'Denmark', '1546-12-14'),
(3, 'Edwin ', 'Powell', 'Hubble', 'United States Of America', '1889-11-20'),
(4, 'Nicolaus', NULL, 'Copernicus', 'Poland', '1473-02-19'),
(5, 'Johannes', NULL, 'Kepler', 'Germany', '1571-12-27'),
(6, 'Vesto', 'Melvin', 'Slipher', 'United States Of America', '1875-11-11'),
(7, 'Earl', 'Charles', 'Slipher', 'United States Of America', '1883-03-25'),
(8, 'Giovanni', 'Domenico', 'Cassini', 'French', '1625-07-08'),
(9, 'Williamina', 'Paton', 'Flemming', 'Scotland', '1857-05-15'),
(10, 'Viswajith', '', 'Venugopal', 'India', '1993-11-09'),
(11, 'Kartik', 'Kailash', 'Gupta', 'India', '1993-11-10');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_5f412f9a` (`group_id`),
  KEY `auth_group_permissions_83d7f98b` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_37ef4eb4` (`content_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=67 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add permission', 1, 'add_permission'),
(2, 'Can change permission', 1, 'change_permission'),
(3, 'Can delete permission', 1, 'delete_permission'),
(4, 'Can add group', 2, 'add_group'),
(5, 'Can change group', 2, 'change_group'),
(6, 'Can delete group', 2, 'delete_group'),
(7, 'Can add user', 3, 'add_user'),
(8, 'Can change user', 3, 'change_user'),
(9, 'Can delete user', 3, 'delete_user'),
(10, 'Can add content type', 4, 'add_contenttype'),
(11, 'Can change content type', 4, 'change_contenttype'),
(12, 'Can delete content type', 4, 'delete_contenttype'),
(13, 'Can add session', 5, 'add_session'),
(14, 'Can change session', 5, 'change_session'),
(15, 'Can delete session', 5, 'delete_session'),
(16, 'Can add site', 6, 'add_site'),
(17, 'Can change site', 6, 'change_site'),
(18, 'Can delete site', 6, 'delete_site'),
(19, 'Can add log entry', 7, 'add_logentry'),
(20, 'Can change log entry', 7, 'change_logentry'),
(21, 'Can delete log entry', 7, 'delete_logentry'),
(22, 'Can add astronaut', 8, 'add_astronaut'),
(23, 'Can change astronaut', 8, 'change_astronaut'),
(24, 'Can delete astronaut', 8, 'delete_astronaut'),
(25, 'Can add astronomer', 9, 'add_astronomer'),
(26, 'Can change astronomer', 9, 'change_astronomer'),
(27, 'Can delete astronomer', 9, 'delete_astronomer'),
(28, 'Can add comet', 10, 'add_comet'),
(29, 'Can change comet', 10, 'change_comet'),
(30, 'Can delete comet', 10, 'delete_comet'),
(31, 'Can add galaxy', 11, 'add_galaxy'),
(32, 'Can change galaxy', 11, 'change_galaxy'),
(33, 'Can delete galaxy', 11, 'delete_galaxy'),
(34, 'Can add gasesinatmosphere', 12, 'add_gasesinatmosphere'),
(35, 'Can change gasesinatmosphere', 12, 'change_gasesinatmosphere'),
(36, 'Can delete gasesinatmosphere', 12, 'delete_gasesinatmosphere'),
(37, 'Can add moon', 13, 'add_moon'),
(38, 'Can change moon', 13, 'change_moon'),
(39, 'Can delete moon', 13, 'delete_moon'),
(40, 'Can add planet', 14, 'add_planet'),
(41, 'Can change planet', 14, 'change_planet'),
(42, 'Can delete planet', 14, 'delete_planet'),
(43, 'Can add satellite', 15, 'add_satellite'),
(44, 'Can change satellite', 15, 'change_satellite'),
(45, 'Can delete satellite', 15, 'delete_satellite'),
(46, 'Can add spaceflight', 16, 'add_spaceflight'),
(47, 'Can change spaceflight', 16, 'change_spaceflight'),
(48, 'Can delete spaceflight', 16, 'delete_spaceflight'),
(49, 'Can add star', 17, 'add_star'),
(50, 'Can change star', 17, 'change_star'),
(51, 'Can delete star', 17, 'delete_star'),
(52, 'Can add educationastronaut', 18, 'add_educationastronaut'),
(53, 'Can change educationastronaut', 18, 'change_educationastronaut'),
(54, 'Can delete educationastronaut', 18, 'delete_educationastronaut'),
(55, 'Can add educationastronomer', 19, 'add_educationastronomer'),
(56, 'Can change educationastronomer', 19, 'change_educationastronomer'),
(57, 'Can delete educationastronomer', 19, 'delete_educationastronomer'),
(58, 'Can add formoon', 20, 'add_formoon'),
(59, 'Can change formoon', 20, 'change_formoon'),
(60, 'Can delete formoon', 20, 'delete_formoon'),
(61, 'Can add forplanet', 21, 'add_forplanet'),
(62, 'Can change forplanet', 21, 'change_forplanet'),
(63, 'Can delete forplanet', 21, 'delete_forplanet'),
(64, 'Can add memberof', 22, 'add_memberof'),
(65, 'Can change memberof', 22, 'change_memberof'),
(66, 'Can delete memberof', 22, 'delete_memberof');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$10000$0zEklMoHHGIJ$GxC/lJOIJpTFeJiRWPrLFI/KA9tu6BOTqC4FkGhr8sI=', '2013-11-26 11:46:02', 1, 'sriram', '', '', 'sriram.vasudevan.93@gmail.com', 1, 1, '2013-11-26 11:10:18');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_6340c63c` (`user_id`),
  KEY `auth_user_groups_5f412f9a` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_6340c63c` (`user_id`),
  KEY `auth_user_user_permissions_83d7f98b` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Comet`
--

CREATE TABLE IF NOT EXISTS `Comet` (
  `name` varchar(30) NOT NULL DEFAULT '',
  `approachPeriod` double DEFAULT NULL,
  `orbitalVelocity` double DEFAULT NULL,
  `astronomerId` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `astronomerId` (`astronomerId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Comet`
--

INSERT INTO `Comet` (`name`, `approachPeriod`, `orbitalVelocity`, `astronomerId`) VALUES
('Brorsen', 12, 124, 3),
('Comet Donati', 80, 2000, 5),
('Finlay Comet', 3, 5256, 5),
('Halley''s Comet', 75, 3000, 1),
('Sriram Comet', 500, 7893, 9),
('Tempel', 100, 2341, 2),
('Viswa Comet', 42, 42, 8),
('Westphal', 5, 13234, 7);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_6340c63c` (`user_id`),
  KEY `django_admin_log_37ef4eb4` (`content_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `user_id`, `content_type_id`, `object_id`, `object_repr`, `action_flag`, `change_message`) VALUES
(1, '2013-11-26 14:25:12', 1, 19, '10', 'Williamina Flemming - Edinberg University, 1945', 2, 'Changed year.'),
(2, '2013-11-26 14:25:20', 1, 19, '9', 'Giovanni Cassini - EPFL, 1932', 2, 'Changed year.'),
(3, '2013-11-26 14:26:25', 1, 19, '7', 'Vesto Slipher - Boston University, 2001', 2, 'Changed year.'),
(4, '2013-11-26 14:28:52', 1, 19, '6', 'Johannes Kepler - Saarland University, 1972', 2, 'Changed year.'),
(5, '2013-11-26 14:29:00', 1, 19, '5', 'Nicolaus Copernicus - University of Warsaw, 1931', 2, 'Changed year.'),
(6, '2013-11-26 14:29:08', 1, 19, '3', 'Tycho  Brahe - University of Denmark, 1951', 2, 'Changed year.'),
(7, '2013-11-26 14:29:39', 1, 19, '1', 'Galileo Galilei - University of Rome, 1985', 2, 'Changed year.'),
(8, '2013-11-26 14:34:38', 1, 19, '1', 'Galileo Galilei - University of Rome, 1993', 2, 'Changed year.'),
(9, '2013-11-26 14:35:39', 1, 19, '2', 'Kartik Gupta - IIT M, 1916', 2, 'Changed astronomer.'),
(10, '2013-11-26 14:36:34', 1, 9, '10', 'Viswajith Venugopal', 2, 'Changed firstname, lastname and dob.');

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES
(1, 'permission', 'auth', 'permission'),
(2, 'group', 'auth', 'group'),
(3, 'user', 'auth', 'user'),
(4, 'content type', 'contenttypes', 'contenttype'),
(5, 'session', 'sessions', 'session'),
(6, 'site', 'sites', 'site'),
(7, 'log entry', 'admin', 'logentry'),
(8, 'astronaut', 'SpaceApp', 'astronaut'),
(9, 'astronomer', 'SpaceApp', 'astronomer'),
(10, 'comet', 'SpaceApp', 'comet'),
(11, 'galaxy', 'SpaceApp', 'galaxy'),
(12, 'gasesinatmosphere', 'SpaceApp', 'gasesinatmosphere'),
(13, 'moon', 'SpaceApp', 'moon'),
(14, 'planet', 'SpaceApp', 'planet'),
(15, 'satellite', 'SpaceApp', 'satellite'),
(16, 'spaceflight', 'SpaceApp', 'spaceflight'),
(17, 'star', 'SpaceApp', 'star'),
(18, 'educationastronaut', 'SpaceApp', 'educationastronaut'),
(19, 'educationastronomer', 'SpaceApp', 'educationastronomer'),
(20, 'formoon', 'SpaceApp', 'formoon'),
(21, 'forplanet', 'SpaceApp', 'forplanet'),
(22, 'memberof', 'SpaceApp', 'memberof');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_b7b81f0c` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('46afomhqngqxmyn5yw4z4dldpmjxri4y', 'MWJhODA2NmQ0ODk5N2FkM2MzODhkZjc2ODkyMDU3OTk0NGNhZDEwOTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==', '2013-12-10 11:46:02');

-- --------------------------------------------------------

--
-- Table structure for table `django_site`
--

CREATE TABLE IF NOT EXISTS `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'example.com', 'example.com');

-- --------------------------------------------------------

--
-- Table structure for table `educationAstronaut`
--

CREATE TABLE IF NOT EXISTS `educationAstronaut` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `university` varchar(30) NOT NULL,
  `year` year(4) NOT NULL,
  `astronautId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `astronautId` (`astronautId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `educationAstronaut`
--

INSERT INTO `educationAstronaut` (`id`, `university`, `year`, `astronautId`) VALUES
(1, 'University of Tehran', 1986, 1),
(2, 'Stanford', 1985, 10),
(3, 'University of Califonia', 1950, 2),
(4, 'Boston University', 1950, 3),
(5, 'University of St. Petersburg', 1954, 4),
(6, 'Greenoble University', 1968, 5),
(7, 'Ivan University', 1977, 6),
(8, 'IIT Madras', 1969, 7),
(9, 'MIT', 1969, 8),
(10, 'Punjab University', 1981, 9);

-- --------------------------------------------------------

--
-- Table structure for table `educationAstronomer`
--

CREATE TABLE IF NOT EXISTS `educationAstronomer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `university` varchar(30) NOT NULL,
  `year` year(4) NOT NULL,
  `astronomerId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `astronomerId` (`astronomerId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `educationAstronomer`
--

INSERT INTO `educationAstronomer` (`id`, `university`, `year`, `astronomerId`) VALUES
(1, 'University of Rome', 1993, 1),
(2, 'IIT M', 1916, 11),
(3, 'University of Denmark', 1951, 2),
(4, 'MIT', 1909, 3),
(5, 'University of Warsaw', 1931, 4),
(6, 'Saarland University', 1972, 5),
(7, 'Boston University', 2001, 6),
(8, 'Caltech', 1903, 7),
(9, 'EPFL', 1932, 8),
(10, 'Edinberg University', 1945, 9),
(11, 'IIT B', 2020, 11),
(12, 'IIT Madras', 1942, 8),
(13, 'IITM', 1956, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ForMoon`
--

CREATE TABLE IF NOT EXISTS `ForMoon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `satelliteName` varchar(30) NOT NULL,
  `moonName` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `SatelliteName` (`satelliteName`),
  KEY `moonName` (`moonName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ForMoon`
--

INSERT INTO `ForMoon` (`id`, `satelliteName`, `moonName`) VALUES
(1, 'Mangalyaan', 'Amalthea'),
(2, 'Cassini', 'Deimos'),
(3, 'Voyeger', 'Deimos'),
(4, 'Chandrayaan', 'Moon'),
(5, 'Voyeger', 'Phobos');

-- --------------------------------------------------------

--
-- Table structure for table `ForPlanet`
--

CREATE TABLE IF NOT EXISTS `ForPlanet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SatelliteName` varchar(30) NOT NULL,
  `PlanetName` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `SatelliteName` (`SatelliteName`),
  KEY `PlanetName` (`PlanetName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ForPlanet`
--

INSERT INTO `ForPlanet` (`id`, `SatelliteName`, `PlanetName`) VALUES
(1, 'Aryabhatta', 'Earth'),
(2, 'Ciel', 'Earth'),
(3, 'Horizons', 'Mars'),
(4, 'ISS', 'Earth'),
(5, 'Sputnik', 'Earth');

-- --------------------------------------------------------

--
-- Table structure for table `Galaxy`
--

CREATE TABLE IF NOT EXISTS `Galaxy` (
  `name` varchar(30) NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `size` varchar(30) DEFAULT NULL,
  `distFromMilkyWay` double DEFAULT NULL,
  `astronomerId` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `astronomerId` (`astronomerId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Galaxy`
--

INSERT INTO `Galaxy` (`name`, `type`, `size`, `distFromMilkyWay`, `astronomerId`) VALUES
('Bode''s Galaxy', 'Observed', 'Massive', 23, 1),
('Canis Major Dwarf', 'Constellation', 'Medium', 14, 6),
('Garlaxy', 'Hypothetical', 'Black Hole', 35, 4),
('Large Magellanic Cloud', 'Constellation', 'Medium', 76, 8),
('Milky Way Galaxy', 'Local', 'Massive', 0, NULL),
('Omega Centauri', 'Constellation', 'Small', 20, 5),
('Sagittarius Dwarf Elliptical G', 'Distant', 'Dwarf', 12, 7),
('Sculptor Galaxy', 'Light', 'Dwarf', 95, 2),
('Virgo Stellar Stream', 'Radiant', 'Massive', 54, 2);

-- --------------------------------------------------------

--
-- Table structure for table `GasesInAtmosphere`
--

CREATE TABLE IF NOT EXISTS `GasesInAtmosphere` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `planetName` varchar(30) NOT NULL,
  `gas` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `id_2` (`id`),
  KEY `pn` (`planetName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `GasesInAtmosphere`
--

INSERT INTO `GasesInAtmosphere` (`id`, `planetName`, `gas`) VALUES
(1, 'Earth', 'Carbon Dioxide'),
(2, 'Earth', 'Hydrogen'),
(3, 'Earth', 'Nitrogen'),
(4, 'Earth', 'Oxygen'),
(5, 'Jupiter', 'Nitrogen'),
(6, 'Mars', 'Carbon Dioxide'),
(7, 'Mercury', 'Hydrogen'),
(8, 'Mercury', 'Oxygen'),
(9, 'Neptune', 'Hydrogen'),
(10, 'Neptune', 'Nitrogen'),
(11, 'Saturn', 'Carbon Dioxide'),
(12, 'Saturn', 'Hydrogen'),
(13, 'Saturn', 'Nitrogen'),
(14, 'Uranus', 'Helium'),
(15, 'Venus', 'Carbon Dioxide'),
(16, 'Venus', 'Helium');

-- --------------------------------------------------------

--
-- Table structure for table `MemberOf`
--

CREATE TABLE IF NOT EXISTS `MemberOf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `astronautId` int(11) NOT NULL,
  `spaceFlight` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `spaceFlight` (`spaceFlight`),
  KEY `MemberOf_ibfk_1` (`astronautId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `MemberOf`
--

INSERT INTO `MemberOf` (`id`, `astronautId`, `spaceFlight`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 6, 1),
(4, 1, 2),
(5, 1, 3),
(6, 4, 4),
(7, 6, 4),
(8, 5, 6),
(9, 4, 7),
(10, 6, 8);

-- --------------------------------------------------------

--
-- Table structure for table `Moon`
--

CREATE TABLE IF NOT EXISTS `Moon` (
  `name` varchar(30) NOT NULL,
  `radius` double DEFAULT NULL,
  `waterPresent` tinyint(1) DEFAULT NULL,
  `mass` double DEFAULT NULL,
  `density` double DEFAULT NULL,
  `gravity` double DEFAULT NULL,
  `rotationPeriod` double DEFAULT NULL,
  `temperature` double DEFAULT NULL,
  `planetName` varchar(30) DEFAULT NULL,
  `revolutionPeriod` double DEFAULT NULL,
  `astronomerId` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `astronomerId` (`astronomerId`),
  KEY `planetName` (`planetName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Moon`
--

INSERT INTO `Moon` (`name`, `radius`, `waterPresent`, `mass`, `density`, `gravity`, `rotationPeriod`, `temperature`, `planetName`, `revolutionPeriod`, `astronomerId`) VALUES
('Amalthea', 83.45, 0, 134000000000000, 10.58, 0.45, 5.1, 252, 'Jupiter', 1.4, 3),
('Deimos', 6.2, 0, 30200000000000, 30.13, 9.65, 63.5, 100, 'Mars', 40.3, 7),
('Dione', 562.5, 0, 4.37e17, 20.43, 10.95, 67.4, -78, 'Saturn', 72.3, 8),
('Europa', 1560.7, 0, 5.31e20, 2.36, 2.67, 0.52, -187, 'Jupiter', 2.3, 1),
('Himalia', 85, 0, 5.34e15, 3.36, 34.59, 30.3, 178, 'Jupiter', 30.4, 3),
('Io', 1818.1, 1, 7.34e22, 1.58, 25.43, 201.1, 65, 'Jupiter', 245.6, 1),
('Moon', 1737.1, 0, 7.34e22, 3.346, 1.622, 27.3, 123, 'Earth', 29.5, NULL),
('MW/1756 J10', 843.9, 0, 93500000000000, 2.23, 10.34, 0.83, 142, 'GP 413b', 1.1, 7),
('Nereid', 170, 0, 7.34e18, 21.55, 1.633, 201.5, -80, 'Neptune', 403.1, 6),
('Phobos', 11.1, 0, 1.07e16, 13.47, 11.25, 125.1, -153, 'Mars', 129.7, 5),
('SG/1930 5b', 1160.4, 1, 1.34e20, 3.89, 8.56, 3.8, 78, 'Kepler-22b', 4.2, 8),
('Tethys', 536.3, 1, 6.77e25, 14.5, 2.74, 51.5, 10, 'Saturn', 45.5, 8),
('Titania', 788.9, 0, 6.38e18, 15.79, 0.89, 363.4, -52, 'Uranus', 387.6, 3),
('TX/2011 4c', 462.5, 1, 2.45e22, 23.41, 1.834, 423.6, 82, 'GJ 504b', 211.3, 11);

-- --------------------------------------------------------

--
-- Table structure for table `Planet`
--

CREATE TABLE IF NOT EXISTS `Planet` (
  `name` varchar(30) NOT NULL,
  `radius` double DEFAULT NULL,
  `waterPresent` tinyint(1) DEFAULT NULL,
  `mass` double DEFAULT NULL,
  `density` double DEFAULT NULL,
  `gravity` double DEFAULT NULL,
  `rotationPeriod` double DEFAULT NULL,
  `temperature` double DEFAULT NULL,
  `starName` varchar(30) DEFAULT NULL,
  `revolutionPeriod` double DEFAULT NULL,
  `planetSystem` varchar(30) DEFAULT NULL,
  `astronomerId` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `astronomerId` (`astronomerId`),
  KEY `starName` (`starName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Planet`
--

INSERT INTO `Planet` (`name`, `radius`, `waterPresent`, `mass`, `density`, `gravity`, `rotationPeriod`, `temperature`, `starName`, `revolutionPeriod`, `planetSystem`, `astronomerId`) VALUES
('Earth', 1, 1, 5.52, 1, 9.8, 24, 32, 'Sun', 365, 'Solar System', NULL),
('GJ 504b', 1.34, 1, 5.42, 0.92, 10.1, 13, 24, 'Alpha Camelopardalis', 240, 'Tau Ceti', 6),
('GP 413b', 1.14, 1, 4.89, 1.1, 9.73, 11, 48, 'Sirius A', 428, '82 G. Eridani', 9),
('Jupiter', 317.8, 0, 15.43, 2.2, 3.21, 10, 10, 'Sun', 682, 'Solar System', 1),
('Kepler-22b', 0.85, 1, 5.64, 0.8, 9.65, 15, 10, 'Aldebaran', 136, 'Gliese 876', 5),
('Mars', 0.107, 1, 7.44, 1.34, 6.43, 18, 53, 'Sun', 452, 'Solar System', NULL),
('Mercury', 0.055, 0, 2.21, 0.52, 11.43, 1600, 432, 'Sun', 90, 'Solar System', NULL),
('Neptune', 252.7, 0, 3.45, 7.51, 2.38, 6, -123, 'Sun', 914, 'Solar System', 10),
('Saturn', 310.1, 0, 12.21, 2.13, 4.18, 9, -25, 'Sun', 941, 'Solar System', NULL),
('Uranus', 281.3, 0, 9.65, 4.43, 2.21, 7, -78, 'Sun', 957, 'Solar System', 3),
('Venus', 0.815, 0, 3.21, 0.76, 10.22, 20, 281, 'Sun', 123, 'Solar System', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Satellite`
--

CREATE TABLE IF NOT EXISTS `Satellite` (
  `name` varchar(30) NOT NULL DEFAULT '',
  `country` varchar(30) DEFAULT NULL,
  `launchYear` year(4) DEFAULT NULL,
  `revolutionPeriod` double DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `launchVehicle` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Satellite`
--

INSERT INTO `Satellite` (`name`, `country`, `launchYear`, `revolutionPeriod`, `type`, `launchVehicle`) VALUES
('Aryabhatta', 'India', 1975, 1300, 'Planetry', 'GSLV'),
('Cassini', 'United States of America', 1999, 35040, 'Planetry', 'Centaur'),
('Chandrayaan', 'India', 2001, 400, 'Lunar', 'PSLV-II'),
('Ciel', 'Canada', 2008, 698, 'Planetry', 'Mir'),
('Horizons', 'United States of America', 2008, 1400, 'Planetry', 'Endavour'),
('ISS', 'USA', 1998, 2000, 'Space Station', 'Freedom'),
('Mangalyaan', 'India', 2013, 1000, 'Planetry', 'PSLV'),
('Pioneer', 'France', 1999, 1000000000000, 'Explorer', 'Discovery'),
('Sputnik', 'Russia', 1957, 987, 'Planetry', 'Soyuz'),
('Voyeger', 'UK', 2000, 1000000000000, 'Explorer', 'Titan');

-- --------------------------------------------------------

--
-- Table structure for table `SpaceFlight`
--

CREATE TABLE IF NOT EXISTS `SpaceFlight` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(30) DEFAULT NULL,
  `year` year(4) NOT NULL,
  `launchVehicle` varchar(30) NOT NULL DEFAULT '',
  `satelliteName` varchar(30) DEFAULT NULL,
  `moonName` varchar(30) DEFAULT NULL,
  `leaderId` int(11) DEFAULT NULL,
  `nextFlight` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `moonName` (`moonName`),
  KEY `leaderId` (`leaderId`),
  KEY `nextFlight` (`nextFlight`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `SpaceFlight`
--

INSERT INTO `SpaceFlight` (`id`, `country`, `year`, `launchVehicle`, `satelliteName`, `moonName`, `leaderId`, `nextFlight`) VALUES
(1, 'USA', 1969, 'Centaur', NULL, 'Europa', 6, 4),
(2, 'France', 2005, 'Discovery', NULL, 'Himalia', 7, 5),
(3, 'USA', 1973, 'Freedom', NULL, 'Moon', 1, 8),
(4, 'Canada', 2001, 'Mir', NULL, 'Amalthea', 6, 2),
(5, 'Japan', 2010, 'Polar', NULL, 'Tethys', 8, NULL),
(6, 'India', 1990, 'PSLV-II', 'Aryabhatta', NULL, 3, 7),
(7, 'Russia', 1995, 'Soyuz', NULL, 'Io', 4, 1),
(8, 'UK', 1989, 'Titan', NULL, 'Phobos', 5, 6);

-- --------------------------------------------------------

--
-- Table structure for table `Star`
--

CREATE TABLE IF NOT EXISTS `Star` (
  `name` varchar(30) NOT NULL,
  `colour` varchar(15) DEFAULT NULL,
  `spectralClass` char(1) DEFAULT NULL,
  `mass` double DEFAULT NULL,
  `radius` double DEFAULT NULL,
  `temperature` double DEFAULT NULL,
  `galaxyName` varchar(30) DEFAULT NULL,
  `astronomerId` int(11) DEFAULT NULL,
  `secondaryStar` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `astronomerId` (`astronomerId`),
  KEY `galaxyName` (`galaxyName`),
  KEY `secondaryStar` (`secondaryStar`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Star`
--

INSERT INTO `Star` (`name`, `colour`, `spectralClass`, `mass`, `radius`, `temperature`, `galaxyName`, `astronomerId`, `secondaryStar`) VALUES
('Aldebaran', 'Red', 'K', 1.7, 44.2, 3910, 'Virgo Stellar Stream', 5, NULL),
('Alpha Camelopardalis', 'Blue', 'A', 43.2, 36.8, 27700, 'Omega Centauri', 1, 'Betelgeuse'),
('Betelgeuse', 'Orange', 'M', 7.7, 1200, 3641, 'Canis Major Dwarf', 4, 'Alpha Camelopardalis'),
('GangStar', 'White', 'B', 100, 69, 6900, 'Large Magellanic Cloud', 1, NULL),
('Sirius A', 'White', 'V', 2.02, 1.711, 9940, 'Virgo Stellar Stream', 2, 'Sirius B'),
('Sirius B', 'White', 'D', 0.978, 0.0084, 25200, 'Large Magellanic Cloud', 3, 'Sirius A'),
('Sun', 'Yellow', 'G', 1, 1, 15700000, 'Milky Way Galaxy', 6, NULL),
('VarStar', 'Violet', 'O', 59.2, 20, 90000, 'Sagittarius Dwarf Elliptical G', 6, NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `group_id_refs_id_f4b32aac` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `permission_id_refs_id_6ba0f519` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `content_type_id_refs_id_d043b34a` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `group_id_refs_id_274b862c` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `user_id_refs_id_40c41112` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `permission_id_refs_id_35d9ac25` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `user_id_refs_id_4dc23c39` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `Comet`
--
ALTER TABLE `Comet`
  ADD CONSTRAINT `Comet_ibfk_1` FOREIGN KEY (`astronomerId`) REFERENCES `Astronomer` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `content_type_id_refs_id_93d2d1f8` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `user_id_refs_id_c0d12874` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `educationAstronaut`
--
ALTER TABLE `educationAstronaut`
  ADD CONSTRAINT `educationAstronaut_ibfk_1` FOREIGN KEY (`astronautId`) REFERENCES `Astronaut` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `educationAstronomer`
--
ALTER TABLE `educationAstronomer`
  ADD CONSTRAINT `educationAstronomer_ibfk_1` FOREIGN KEY (`astronomerId`) REFERENCES `Astronomer` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `ForMoon`
--
ALTER TABLE `ForMoon`
  ADD CONSTRAINT `ForMoon_ibfk_1` FOREIGN KEY (`satelliteName`) REFERENCES `Satellite` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ForMoon_ibfk_2` FOREIGN KEY (`moonName`) REFERENCES `Moon` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ForPlanet`
--
ALTER TABLE `ForPlanet`
  ADD CONSTRAINT `ForPlanet_ibfk_1` FOREIGN KEY (`PlanetName`) REFERENCES `Planet` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ForPlanet_ibfk_2` FOREIGN KEY (`SatelliteName`) REFERENCES `Satellite` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Galaxy`
--
ALTER TABLE `Galaxy`
  ADD CONSTRAINT `Galaxy_ibfk_1` FOREIGN KEY (`astronomerId`) REFERENCES `Astronomer` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `GasesInAtmosphere`
--
ALTER TABLE `GasesInAtmosphere`
  ADD CONSTRAINT `GasesInAtmosphere_ibfk_1` FOREIGN KEY (`planetName`) REFERENCES `Planet` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `MemberOf`
--
ALTER TABLE `MemberOf`
  ADD CONSTRAINT `MemberOf_ibfk_1` FOREIGN KEY (`astronautId`) REFERENCES `Astronaut` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `MemberOf_ibfk_2` FOREIGN KEY (`spaceFlight`) REFERENCES `SpaceFlight` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Moon`
--
ALTER TABLE `Moon`
  ADD CONSTRAINT `Moon_ibfk_1` FOREIGN KEY (`astronomerId`) REFERENCES `Astronomer` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Moon_ibfk_2` FOREIGN KEY (`planetName`) REFERENCES `Planet` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `Planet`
--
ALTER TABLE `Planet`
  ADD CONSTRAINT `Planet_ibfk_1` FOREIGN KEY (`astronomerId`) REFERENCES `Astronomer` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Planet_ibfk_2` FOREIGN KEY (`starName`) REFERENCES `Star` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `SpaceFlight`
--
ALTER TABLE `SpaceFlight`
  ADD CONSTRAINT `SpaceFlight_ibfk_1` FOREIGN KEY (`leaderId`) REFERENCES `Astronaut` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `SpaceFlight_ibfk_2` FOREIGN KEY (`nextFlight`) REFERENCES `SpaceFlight` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `SpaceFlight_ibfk_3` FOREIGN KEY (`moonName`) REFERENCES `Moon` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `Star`
--
ALTER TABLE `Star`
  ADD CONSTRAINT `Star_ibfk_1` FOREIGN KEY (`astronomerId`) REFERENCES `Astronomer` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Star_ibfk_2` FOREIGN KEY (`galaxyName`) REFERENCES `Galaxy` (`name`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Star_ibfk_3` FOREIGN KEY (`secondaryStar`) REFERENCES `Star` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
