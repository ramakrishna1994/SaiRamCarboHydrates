-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2017 at 02:23 PM
-- Server version: 5.7.9
-- PHP Version: 5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sai_carbohydrates`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `synonyms` varchar(1000) NOT NULL,
  `mf` varchar(255) NOT NULL,
  `mw` varchar(255) NOT NULL,
  `ms` varchar(255) NOT NULL,
  `appearance` varchar(255) NOT NULL,
  `purity` varchar(255) NOT NULL,
  `sor` varchar(255) NOT NULL,
  `casno` varchar(255) NOT NULL,
  `solubility` varchar(255) NOT NULL,
  `watercontent` varchar(255) NOT NULL,
  `storage` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `synonyms`, `mf`, `mw`, `ms`, `appearance`, `purity`, `sor`, `casno`, `solubility`, `watercontent`, `storage`, `category`) VALUES
(1, 'ISOPROPYL-BETA-D-THIOGALACTOPYRANOSIDE (IPTG) DIOXANE FREE', 'IPTG;Isopropyl-beta-D-thiogalactoside;IPTG, HEMIDIOXANE ADDUCT; ISOPROPYL-1-THIO-BETA-D-GALACTOPYRANOSIDE;ISOPROPYLTHIO-BETA- GALACTOSIDE;ISOPROPYLTHIO -BETA-THIOGALACTOSIDASE; ISOPROPYLTHIO-B-THIOGALACTOPYRANOSIDE;ISOPROPYL THIOGALACTOSIDE;ISOPROPYL-BETA-D-THIOGALACTOPYRANOSIDE, DIOXANE FREE;Isopropyl Î²-D-1 Thiogalactopyranoside; propan-2-yl 1-thio-beta-D-galactopyranoside;1-methylethyl 1-thio-D-galactopyranoside ISOPROPYL-BETA-D-THIOGALACTOPYRANOSIDE (IPTG) DIOXANE FREE', 'C9H18O5S', '238.30', 'ISOPROPYL-BETA-D-THIOGALACTOPYRANOSIDE_(IPTG)_DIOXANE_FREE.gif', 'White to off-white crystalline powder', 'Min 99%+', '-31.5 Â± 3.0Â° [a]D20(c=1,H2O)', '367-93-1', 'Soluble in water, and methanol', 'Max 1%', 'Shipped at Ambient Temperature. Store at +2 - 8Â°C.', 'carbohydrates'),
(7, '5-BROMO-4-CHLORO-3-INDOLYL-B-D-GALACTOPYRANOSIDE [X-GAL]', '.beta.-D-Galactopyranoside 5-bromo-4-chloro-1H-indol-3-yl;5-Bromo-4-chloro-1H-indol-3- yl beta-D-galactopyranoside;5-Bromo-4-chloro-3-indolyl-.beta. -D-galactoside;5-Bromo-4-chloro-3-indolyl-b-D-galactoside; beta-D-Galactopyranoside, 5-bromo-4-chloro-1H-indol-3-yl;Xgal;X-GAL', 'C14H15BrClNO6', '408.629', '5-BROMO-4-CHLORO-3-INDOLYL-B-D-GALACTOPYRANOSIDE_[X-GAL].gif', 'White to off-white crystalline powder', 'Min 99%+', '-61.5 Â±3Â° ([Î±]D.20 (c=1,DMF:water,1:1)', '7240-90-6', 'Soluble in DMF (5% w/v) and DMSO (20 mg/ml),', 'Max 0.5%', 'Shipped at Ambient Temperature. Store at +2 - 8Â°C.', 'carbohydrates');

-- --------------------------------------------------------

--
-- Table structure for table `sample`
--

DROP TABLE IF EXISTS `sample`;
CREATE TABLE IF NOT EXISTS `sample` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `synonyms` varchar(255) NOT NULL,
  `mf` varchar(255) NOT NULL,
  `mw` varchar(255) NOT NULL,
  `ms` varchar(255) NOT NULL,
  `appearance` varchar(255) NOT NULL,
  `purity` varchar(255) NOT NULL,
  `sor` varchar(255) NOT NULL,
  `casno` varchar(255) NOT NULL,
  `solubility` varchar(255) NOT NULL,
  `watercontent` varchar(255) NOT NULL,
  `storage` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sample`
--

INSERT INTO `sample` (`id`, `name`, `synonyms`, `mf`, `mw`, `ms`, `appearance`, `purity`, `sor`, `casno`, `solubility`, `watercontent`, `storage`, `category`) VALUES
(1, 'asd', 'asd', 'asd', 'asd', '', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'carbohydrates'),
(2, 'asd', 'asd', 'asd', 'asd', '', 'asd', 'asd', 'asd', 'asd', 'asd', 'as', 'asd', 'carbohydrates'),
(3, 'asd', 'asd', 'asd', 'asdas', 'Array', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'carbohydrates'),
(4, 'asd', 'asd', 'asd', 'asdas', '', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'carbohydrates'),
(5, 'asd', 'asd', 'asd', 'asdas', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'carbohydrates');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `password`) VALUES
(1, 'sai', 'Anneboina@9');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
