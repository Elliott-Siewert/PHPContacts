-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 23, 2018 at 12:48 AM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `contact`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

DROP TABLE IF EXISTS `tbl_contact`;
CREATE TABLE IF NOT EXISTS `tbl_contact` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(51) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `postal` varchar(10) DEFAULT NULL,
  `birthDay` date DEFAULT NULL,
  `assignedRep` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=139 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`Id`, `firstName`, `lastName`, `phone`, `email`, `address`, `city`, `province`, `postal`, `birthDay`, `assignedRep`) VALUES
(3, 'Geraldine', 'Shepard', '1-206-777-0595', 'magnis.dis.parturient@Cras.ca', 'P.O.', 'Kennewick', 'ON', 'S5H', '1961-03-21', '0'),
(4, 'Amaya', 'Jackson', '1-762-542-0380', 'Fusce@utaliquam.ca', 'P.O. Box 121 3581 Purus Avenue', 'Richland', 'MB', 'R2Q 9T6', '1974-09-13', '0'),
(5, 'Jarrod', 'Huber', '1-469-899-2702', 'consectetuer.cursus.et@Praesent.edu', 'P.O.', 'Falls', 'MB', 'I5Z', '1983-05-30', '0'),
(6, 'Kirestin', 'Mcmahon', '1-244-146-8495', 'lacus@mollis.edu', '328-5079 Felis St.', 'Milford', 'BC', 'R5A 9X5', '1969-08-05', '0'),
(7, 'Julian', 'Ayers', '1-191-550-8469', 'sed.consequat@rutrum.org', '7403 Mollis. Av.', 'Kalispell', 'YT', 'Q7J 5O9', '1974-04-29', '0'),
(8, 'Akeem', 'Mcfadden', '1-997-457-2031', 'Integer.tincidunt@sit.org', '271-3230 Porttitor Av.', 'Kalamazoo', 'NT', 'C1P 6X6', '1975-10-28', '0'),
(9, 'Dana', 'Snow', '1-592-165-0075', 'Fusce@nectempus.com', 'Ap #790-6746 Tellus Street', 'Agawam', 'NT', 'L3S 4X9', '1972-08-09', '0'),
(10, 'Colleen', 'Hutchinson', '1-945-606-6717', 'Suspendisse.sagittis.Nullam@Innec.edu', '3896 Nunc Ave', 'Pembroke Pines', 'NT', 'V4M 2J4', '1974-09-11', '0'),
(11, 'Hyatt', 'Sanchez', '1-483-989-6613', 'libero@nislMaecenasmalesuada.edu', 'P.O. Box 922 7698 Sed St.', 'Las Cruces', 'AB', 'M1N 8M9', '1972-01-06', '0'),
(12, 'Madison', 'Stevenson', '1-898-794-3086', 'Donec.consectetuer.mauris@morbi.edu', 'P.O. Box 872 6306 Donec St.', 'Brigham City', 'NT', 'L5K 9L0', '1966-06-14', '0'),
(13, 'Roanna', 'Downs', '1-969-912-9999', 'ac.sem@duinectempus.edu', '7691 Rhoncus Av.', 'Warwick', 'NB', 'S2X 6Q9', '1967-10-30', '0'),
(15, 'Sonia', 'Ayers', '1-598-429-1498', 'lectus@acmi.ca', 'Ap #990-5463 Maecenas St.', 'Rosemead', 'NL', 'W2Z 1U8', '1971-10-31', '0'),
(16, 'Alexis', 'Gilmore', '1-886-188-5867', 'mauris.sit.amet@penatibuset.org', 'Ap #412-1054 Nonummy Street', 'Temecula', 'PE', 'W6S 6L7', '1977-10-25', '0'),
(17, 'Zoe', 'England', '1-663-558-3161', 'auctor.Mauris@nonlobortisquis.edu', '279-4028 Erat. Rd.', 'Beverly', 'QC', 'M8P 9P6', '1976-12-03', '0'),
(18, 'Charde', 'Dunn', '1-357-831-9923', 'urna@sem.edu', '304-5920 Tellus Rd.', 'Chesapeake', 'NL', 'F2N 8T7', '1976-04-16', '0'),
(19, 'Avye', 'Barron', '1-388-698-5126', 'Nullam@ligulaAeneangravida.com', 'Ap #915-7949 Donec Rd.', 'West Allis', 'NT', 'P9Z 4R0', '1974-05-07', '0'),
(20, 'Hamish', 'Taylor', '1-924-809-0362', 'auctor.odio.a@duinec.ca', 'Ap #125-7692 Duis Av.', 'Caguas', 'NT', 'K9B 1Z4', '1982-10-05', '0'),
(21, 'Wesley', 'Todd', '1-647-738-0019', 'arcu.Vestibulum@nostra.ca', '7226 Diam Avenue', 'Bellflower', 'NT', 'V6V 8O2', '1980-05-31', '0'),
(22, 'Samson', 'Huber', '1-922-760-7616', 'tincidunt@laoreetlectusquis.ca', '4685 Vitae Road', 'Kennesaw', 'NB', 'D7B 1F3', '1966-12-12', '0'),
(23, 'Samson', 'Ochoa', '1-309-979-6313', 'risus.Donec@arcu.ca', '3081 Iaculis Road', 'San Clemente', 'MB', 'H1C 3I4', '1967-05-28', '0'),
(24, 'Blair', 'Yang', '1-619-688-2205', 'Mauris.quis.turpis@metusfacilisis.edu', '7557 Eu St.', 'Thousand Oaks', 'BC', 'L3Z 7O4', '1982-11-30', '0'),
(25, 'Roary', 'Martin', '1-194-683-8143', 'et.ipsum.cursus@Morbiquisurna.org', 'Ap #261-7127 Lectus Av.', 'Sioux Falls', 'NL', 'P6Z 2A7', '1960-07-18', '0'),
(26, 'Owen', 'Boyer', '1-727-655-7997', 'lacus.varius@urnasuscipit.com', '967-7532 Molestie. Avenue', 'Somerville', 'NU', 'F9Q 3T3', '1982-11-08', '0'),
(27, 'Forrest', 'Landry', '1-601-259-0565', 'Aliquam.nec@Vestibulumanteipsum.com', '529-760 Primis Street', 'Turlock', 'NS', 'M2J 3M6', '1966-06-07', '0'),
(28, 'Palmer', 'Barrera', '1-781-382-8482', 'Donec.consectetuer@nuncullamcorpereu.com', '2655 Augue Street', 'Cleveland', 'NL', 'U9Q 1J3', '1970-04-25', '0'),
(29, 'Piper', 'Higgins', '1-165-448-1964', 'ut.pellentesque@Nullamenim.org', '866-9924 Magna. Av.', 'Rye', 'ON', 'N9P 9G3', '1971-06-03', '0'),
(30, 'Ferris', 'Ferrell', '1-986-568-4320', 'fringilla.ornare@Phasellusat.com', 'P.O. Box 453 3973 Nulla Rd.', 'Racine', 'ON', 'P5D 8W4', '1957-02-11', '0'),
(31, 'Bryar', 'Steele', '1-473-168-3889', 'ut.nulla@mollis.ca', 'P.O. Box 216 6350 In Avenue', 'Valparaiso', 'BC', 'Q1J 5M5', '1972-10-29', '0'),
(32, 'Haley', 'Small', '1-379-952-7322', 'semper.et.lacinia@velit.edu', 'P.O. Box 653 8648 Dolor. Avenue', 'Fontana', 'NS', 'N7L 1H8', '1971-10-05', '0'),
(33, 'Sonia', 'Marquez', '1-574-102-4243', 'ante.Nunc@pharetra.org', 'P.O. Box 832 2365 Pede. Avenue', 'Paducah', 'MB', 'Z6F 3K0', '1964-07-10', '0'),
(34, 'Robert', 'Tyson', '1-829-944-2978', 'auctor.nunc@Sedeu.org', 'Ap #738-9722 Lobortis Street', 'Port St. Lucie', 'SK', 'L4Y 8L7', '1964-11-04', '0'),
(35, 'Pascale', 'Flowers', '1-172-514-4820', 'sodales.elit@rhoncus.com', '3950 In Av.', 'Mission Viejo', 'SK', 'H9E 2J9', '1978-01-06', '0'),
(36, 'Sophia', 'Nixon', '1-958-472-8658', 'sed@ametnullaDonec.org', 'Ap #810-427 Tincidunt Rd.', 'Jersey City', 'NL', 'H5W 6K7', '1960-05-11', '0'),
(37, 'Ferris', 'Gonzalez', '1-317-146-6049', 'tortor.nibh@posuerevulputate.ca', 'Ap #124-9508 Posuere Rd.', 'Alhambra', 'NL', 'U5Y 2G2', '1983-01-12', '0'),
(44, '', '', '', '', '', '', '', '', '1970-01-01', '0'),
(45, '', '', '', '', '', '', '', '', '1970-01-01', '0'),
(46, '', '', '', '', '', '', '', '', '1970-01-01', '0'),
(47, '', '', '', '', '', '', '', '', '1970-01-01', '0'),
(48, '', '', '', '', '', '', '', '', '1970-01-01', '0'),
(49, '', '', '', '', '', '', '', '', '1970-01-01', '0'),
(50, '', '', '', '', '', '', '', '', '1970-01-01', '0'),
(51, '', '', '', '', '', '', '', '', '1970-01-01', '0'),
(52, '', '', '', '', '', '', '', '', '1970-01-01', '0'),
(53, '', '', '', '', '', '', '', '', '1970-01-01', '0'),
(54, '', '', '', '', '', '', '', '', '1970-01-01', '0'),
(55, '', '', '', '', '', '', '', '', '1970-01-01', '0'),
(56, 'wer', '', '', '', '', '', '', '', '1970-01-01', '0'),
(57, 'test', '', '', '', '', '', '', '', '1970-01-01', '0'),
(58, 'test', 'tester', '', '', '', '', '', '', '1970-01-01', '0'),
(59, 'test', 'tester', '', '', '', '', '', '', '1970-01-01', '0'),
(60, 'test', 'tester', '', '', '', '', '', '', '1970-01-01', '0'),
(61, 'test', 'tester', '', '', '', '', '', '', '1970-01-01', '0'),
(62, 'test', 'tester', '', '', '', '', '', '', '1970-01-01', '0'),
(63, 'test', 'tester', '', '', '', '', '', '', '1970-01-01', '0'),
(64, '', '', '', '', '', '', '', '', '1970-01-01', '0'),
(65, '', '', '', '', '', '', '', '', '1970-01-01', '0'),
(66, '', '', '', '', '', '', '', '', '1970-01-01', '0'),
(67, '', '', '', '', '', '', '', '', '1970-01-01', '0'),
(68, '', '', '', '', '', '', '', '', '1970-01-01', '0'),
(69, '', '', '', '', '', '', '', '', '1970-01-01', '0'),
(70, '', '', '', '', '', '', '', '', '1970-01-01', '0'),
(71, '', '', '', '', '', '', '', '', '1970-01-01', '0'),
(72, '', '', '', '', '', '', '', '', '1970-01-01', '0'),
(73, '', '', '', '', '', '', '', '', '1970-01-01', '0'),
(74, '', '', '', '', '', '', '', '', '1970-01-01', '0'),
(75, '', '', '', '', '', '', '', '', '1970-01-01', '0'),
(76, '', '', '', '', '', '', '', '', '1970-01-01', '0'),
(77, '', '', '', '', '', '', '', '', '1970-01-01', '0'),
(78, '', '', '', '', '', '', '', '', '1970-01-01', '0'),
(79, '', '', '', '', '', '', '', '', '1970-01-01', '0'),
(80, 'fsf', 'dfd', 'sdfsd', 'fsdf', 'sdfsd', 'fsd', 'fsdf', 'sdfs', '1970-01-01', '0'),
(81, 'fsf', 'dfd', 'sdfsd', 'fsdf', 'sdfsd', 'fsd', 'fsdf', 'sdfs', '2019-02-02', '0'),
(82, 'dsf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', '2018-03-14', '0'),
(83, 'sdf', 'sdf', 'sdfsd', 'fsdfsd', 'fsdf', 'sdfsdf', 'sdfsd', 'fsdf', '2018-03-13', 'sdf'),
(84, '', '', '', '', '', '', '', '', '1970-01-01', '0'),
(85, 'sdfgdfg', 'sdfgsdfg', 'sdfgsdf', 'dfsg', 'sdfg', 'sdfg', 'sdfg', 'sfdg', '2018-03-06', 'sgf'),
(86, '', '', '', '', '', '', '', '', '1970-01-01', '0'),
(87, 'work', 'you', '789789', 'hihjk@hjhjk.jkhjk', 'hk', 'hjk', 'hj22222', 'hjkh', '2018-03-10', 'elliott'),
(88, 'dsf', 'sdf', 'sd', 'sf', 'sf', 'sf', 'sfd', 'sf', '2018-03-14', 'elliott'),
(89, '', '', '', '', '', '', '', '', '1970-01-01', '0'),
(90, '', '', '', '', '', '', '', '', '1970-01-01', '0'),
(91, '', '', '', '', '', '', '', '', '2018-03-01', '0'),
(92, '', '', '', '', '', '', '', '', '1970-01-01', '0'),
(93, '', '', '', '', '', '', '', '', '1970-01-01', '0'),
(100, 'work', 'you', '789789', 'hihjk@hjhjk.jkhjk', 'hk', 'hjk', 'hj22222', 'hjkh', '2018-03-10', 'itstudent'),
(101, 'dsf', 'sdf', 'sd', 'sf', 'sf', 'sf', 'sfd', 'sf', '2018-03-14', 'itstudent'),
(102, 'Marcia', 'Pierce', '1-799-342-9361', 'vel@Inornare.edu', 'P.O. Box 861 1385 Consequat Rd.', 'Pottsville', 'MB', 'A6U 7T4', '1963-11-22', 'elliott'),
(103, 'Ivy', 'Kramer', '1-437-867-1282', 'aliquet.libero@pedemalesuadavel.org', '346-4462 Suspendisse Ave', 'Nenana', 'NL', 'B1J 8N8', '1968-04-12', 'elliott'),
(104, 'Fitzgerald', 'Shepard', '1-206-777-0595', 'magnis.dis.parturient@Cras.ca', 'P.O. Box 380 5309 Amet Avenue', 'Kennewick', 'ON', 'S5H 2I6', '1961-03-21', 'elliott'),
(105, 'Amaya', 'Jackson', '1-762-542-0380', 'Fusce@utaliquam.ca', 'P.O. Box 121 3581 Purus Avenue', 'Richland', 'MB', 'R2Q 9T6', '1974-09-13', 'elliott'),
(106, 'Jarrod', 'Huber', '1-469-899-2702', 'consectetuer.cursus.et@Praesent.edu', 'P.O. Box 419 4348 Elit. Ave', 'Falls Church', 'MB', 'I5Z 1F4', '1983-05-30', 'elliott'),
(107, 'Kirestin', 'Mcmahon', '1-244-146-8495', 'lacus@mollis.edu', '328-5079 Felis St.', 'Milford', 'BC', 'R5A 9X5', '1969-08-05', 'elliott'),
(108, 'Julian', 'Ayers', '1-191-550-8469', 'sed.consequat@rutrum.org', '7403 Mollis. Av.', 'Kalispell', 'YT', 'Q7J 5O9', '1974-04-29', 'elliott'),
(109, 'Akeem', 'Mcfadden', '1-997-457-2031', 'Integer.tincidunt@sit.org', '271-3230 Porttitor Av.', 'Kalamazoo', 'NT', 'C1P 6X6', '1975-10-28', 'elliott'),
(110, 'Dana', 'Snow', '1-592-165-0075', 'Fusce@nectempus.com', 'Ap #790-6746 Tellus Street', 'Agawam', 'NT', 'L3S 4X9', '1972-08-09', 'elliott'),
(111, 'Colleen', 'Hutchinson', '1-945-606-6717', 'Suspendisse.sagittis.Nullam@Innec.edu', '3896 Nunc Ave', 'Pembroke Pines', 'NT', 'V4M 2J4', '1974-09-11', 'elliott'),
(112, 'Hyatt', 'Sanchez', '1-483-989-6613', 'libero@nislMaecenasmalesuada.edu', 'P.O. Box 922 7698 Sed St.', 'Las Cruces', 'AB', 'M1N 8M9', '1972-01-06', 'elliott'),
(113, 'Madison', 'Stevenson', '1-898-794-3086', 'Donec.consectetuer.mauris@morbi.edu', 'P.O. Box 872 6306 Donec St.', 'Brigham City', 'NT', 'L5K 9L0', '1966-06-14', 'elliott'),
(114, 'Roanna', 'Downs', '1-969-912-9999', 'ac.sem@duinectempus.edu', '7691 Rhoncus Av.', 'Warwick', 'NB', 'S2X 6Q9', '1967-10-30', 'elliott'),
(115, 'Isaiah', 'Stevens', '1-918-821-7207', 'fringilla.porttitor.vulputate@malesuadaIntegerid.ca', '6132 Erat Road', 'Gatlinburg', 'BC', 'U5T 4D6', '1956-08-25', 'elliott'),
(116, 'Sonia', 'Ayers', '1-598-429-1498', 'lectus@acmi.ca', 'Ap #990-5463 Maecenas St.', 'Rosemead', 'NL', 'W2Z 1U8', '1971-10-31', 'elliott'),
(117, 'Alexis', 'Gilmore', '1-886-188-5867', 'mauris.sit.amet@penatibuset.org', 'Ap #412-1054 Nonummy Street', 'Temecula', 'PE', 'W6S 6L7', '1977-10-25', 'elliott'),
(118, 'Zoe', 'England', '1-663-558-3161', 'auctor.Mauris@nonlobortisquis.edu', '279-4028 Erat. Rd.', 'Beverly', 'QC', 'M8P 9P6', '1976-12-03', 'elliott'),
(119, 'Charde', 'Dunn', '1-357-831-9923', 'urna@sem.edu', '304-5920 Tellus Rd.', 'Chesapeake', 'NL', 'F2N 8T7', '1976-04-16', 'elliott'),
(120, 'Avye', 'Barron', '1-388-698-5126', 'Nullam@ligulaAeneangravida.com', 'Ap #915-7949 Donec Rd.', 'West Allis', 'NT', 'P9Z 4R0', '1974-05-07', 'elliott'),
(121, 'Hamish', 'Taylor', '1-924-809-0362', 'auctor.odio.a@duinec.ca', 'Ap #125-7692 Duis Av.', 'Caguas', 'NT', 'K9B 1Z4', '1982-10-05', 'elliott'),
(122, 'Wesley', 'Todd', '1-647-738-0019', 'arcu.Vestibulum@nostra.ca', '7226 Diam Avenue', 'Bellflower', 'NT', 'V6V 8O2', '1980-05-31', 'elliott'),
(123, 'Samson', 'Huber', '1-922-760-7616', 'tincidunt@laoreetlectusquis.ca', '4685 Vitae Road', 'Kennesaw', 'NB', 'D7B 1F3', '1966-12-12', 'elliott'),
(124, 'Samson', 'Ochoa', '1-309-979-6313', 'risus.Donec@arcu.ca', '3081 Iaculis Road', 'San Clemente', 'MB', 'H1C 3I4', '1967-05-28', 'elliott'),
(125, 'Blair', 'Yang', '1-619-688-2205', 'Mauris.quis.turpis@metusfacilisis.edu', '7557 Eu St.', 'Thousand Oaks', 'BC', 'L3Z 7O4', '1982-11-30', 'elliott'),
(126, 'Roary', 'Martin', '1-194-683-8143', 'et.ipsum.cursus@Morbiquisurna.org', 'Ap #261-7127 Lectus Av.', 'Sioux Falls', 'NL', 'P6Z 2A7', '1960-07-18', 'elliott'),
(127, 'Owen', 'Boyer', '1-727-655-7997', 'lacus.varius@urnasuscipit.com', '967-7532 Molestie. Avenue', 'Somerville', 'NU', 'F9Q 3T3', '1982-11-08', 'elliott'),
(128, 'Forrest', 'Landry', '1-601-259-0565', 'Aliquam.nec@Vestibulumanteipsum.com', '529-760 Primis Street', 'Turlock', 'NS', 'M2J 3M6', '1966-06-07', 'elliott'),
(129, 'Palmer', 'Barrera', '1-781-382-8482', 'Donec.consectetuer@nuncullamcorpereu.com', '2655 Augue Street', 'Cleveland', 'NL', 'U9Q 1J3', '1970-04-25', 'elliott'),
(130, 'Piper', 'Higgins', '1-165-448-1964', 'ut.pellentesque@Nullamenim.org', '866-9924 Magna. Av.', 'Rye', 'ON', 'N9P 9G3', '1971-06-03', 'elliott'),
(131, 'Ferris', 'Ferrell', '1-986-568-4320', 'fringilla.ornare@Phasellusat.com', 'P.O. Box 453 3973 Nulla Rd.', 'Racine', 'ON', 'P5D 8W4', '1957-02-11', 'elliott'),
(132, 'Bryar', 'Steele', '1-473-168-3889', 'ut.nulla@mollis.ca', 'P.O. Box 216 6350 In Avenue', 'Valparaiso', 'BC', 'Q1J 5M5', '1972-10-29', 'elliott'),
(133, 'Haley', 'Small', '1-379-952-7322', 'semper.et.lacinia@velit.edu', 'P.O. Box 653 8648 Dolor. Avenue', 'Fontana', 'NS', 'N7L 1H8', '1971-10-05', 'elliott'),
(134, 'Sonia', 'Marquez', '1-574-102-4243', 'ante.Nunc@pharetra.org', 'P.O. Box 832 2365 Pede. Avenue', 'Paducah', 'MB', 'Z6F 3K0', '1964-07-10', 'elliott'),
(135, 'Robert', 'Tyson', '1-829-944-2978', 'auctor.nunc@Sedeu.org', 'Ap #738-9722 Lobortis Street', 'Port St. Lucie', 'SK', 'L4Y 8L7', '1964-11-04', 'elliott'),
(136, 'Pascale', 'Flowers', '1-172-514-4820', 'sodales.elit@rhoncus.com', '3950 In Av.', 'Mission Viejo', 'SK', 'H9E 2J9', '1978-01-06', 'elliott'),
(137, 'Sophia', 'Nixon', '1-958-472-8658', 'sed@ametnullaDonec.org', 'Ap #810-427 Tincidunt Rd.', 'Jersey City', 'NL', 'H5W 6K7', '1960-05-11', 'elliott'),
(138, 'Ferris', 'Gonzalez', '1-317-146-6049', 'tortor.nibh@posuerevulputate.ca', 'Ap #124-9508 Posuere Rd.', 'Alhambra', 'NL', 'U5Y 2G2', '1983-01-12', 'elliott');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `userName` varchar(25) NOT NULL,
  `passwordHash` varchar(200) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`userName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`userName`, `passwordHash`, `admin`) VALUES
('elliott', '$2y$10$/ks81TopI3t8BMpK.vCzSOqmuYBeB2dZO4fqmKEiH/OUZYb10b0Nm', 1),
('itstudent', '$2y$10$AUfXomz96wn53rQKxpzMvOQZqaJKYdF8u.3Ui11BiLEIagH4AdGEy', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
