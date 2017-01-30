-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2017 at 12:48 PM
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
  `casno` varchar(30) NOT NULL,
  `link` varchar(255) NOT NULL,
  `category` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `casno`, `link`, `category`) VALUES
(19, '5-Bromo-4-chloro-3-indoxyl-beta-D-glucuronic acid, Sodium salt(X-GLUC Sodium Salt.)', '370100-64-4', '5-Bromo-4-chloro-3-indoxyl-beta-D-glucuronic_acid_Sodium _salt(X-GLUC Sodium Salt)', 'carbohydrates'),
(18, '5-Bromo-4-chloro-3-indoxyl-beta-D-glucuronic acid, cyclohexylammonium salt , (X-GLUC CHA Salt.)', '114162-64-0', '5-Bromo-4-chloro-3-indoxyl-beta-D-glucuronic_acid_cyclohexylammonium_salt_(X-GLUC_CHA_Salt)', 'carbohydrates'),
(17, '5-Bromo-4-chloro-3-indolyl-beta-D-glucopyranoside [X-glu]', '15548-60-4', '5-Bromo-4-chloro-3-indolyl-beta-D-glucopyranoside_[X-glu]', 'carbohydrates'),
(16, '5-Bromo-4-chloro-3-indolyl-beta-D-galactopyranoside [X-gal]', '7240-90-6', '5-Bromo-4-chloro-3-indolyl-beta-D-galactopyranoside_[X-gal]', 'carbohydrates'),
(15, 'Isopropyl-beta-D-thio galactopyranoside (IPTG)', '367-93-1', 'Isopropyl-beta-D-thio_galactopyranoside_(IPTG)', 'carbohydrates'),
(20, '5-Bromo-6-chloro-3-indolyl b-D-glucuronide cyclohexylammonium salt', '144110-43-0', '5-Bromo-6-chloro-3-indolyl_b-D-glucuronide_cyclohexylammonium', 'carbohydrates'),
(21, '2,3,4,6-TETRA-O-ACETYL-Î‘-D-GALACTOPYRANOSYL BROMIDE', '3068-32- 4', '2_3_4_6-TETRA-O-ACETYL-Î‘-D-GALACTOPYRANOSYL_BROMIDE', 'carbohydrates'),
(22, '2,3,4,6-TETRA-O-ACETYL-A-D-GLUCOPYRANOSYL CHLORIDE', '4451-35-8', '2_3_4_6-TETRA-O-ACETYL-A-D-GLUCOPYRANOSYL_CHLORIDE', 'carbohydrates'),
(23, '1,2,3,4-TETRA-O-ACETYL-Î’-D-GLUCURONIDE METHYL ESTER', '7355-18-2', '1_2_3_4-TETRA-O-ACETYL-Î’-D-GLUCURONIDE_METHYL_ESTER', 'carbohydrates'),
(24, '5-Bromo indoxyl-1,3-di acetate', '33588-54-4', '5-Bromo_indoxyl-1_3-di_acetate', 'carbohydrates'),
(25, 'INDOXYL-1-3-DIACETATE', '16800-67-2', 'INDOXYL-1-3-DIACETATE', 'carbohydrates'),
(26, '2-BROMOETHYL-4-NITROPHENYL ETHER', '13288-06-7', '2-BROMOETHYL-4-NITROPHENYL_ETHER', 'finechemicals'),
(27, 'PHENYL PHOSPHATE DISODIUM', '3279-54-7', 'PHENYL_PHOSPHATE_DISODIUM', 'phosphates');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
