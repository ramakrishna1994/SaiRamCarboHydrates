-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2017 at 09:46 AM
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
  `ms` varchar(255) DEFAULT NULL,
  `appearance` varchar(255) NOT NULL,
  `purity` varchar(255) NOT NULL,
  `sor` varchar(255) NOT NULL,
  `casno` varchar(255) NOT NULL,
  `solubility` varchar(255) NOT NULL,
  `watercontent` varchar(255) NOT NULL,
  `storage` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `synonyms`, `mf`, `mw`, `ms`, `appearance`, `purity`, `sor`, `casno`, `solubility`, `watercontent`, `storage`, `category`) VALUES
(1, 'Isopropyl-beta-D-thio galactopyranoside (IPTG)', 'IPTG;Isopropyl-beta-D-thiogalactoside;IPTG, HEMIDIOXANE ADDUCT; ISOPROPYL-1-THIO-BETA-D-GALACTOPYRANOSIDE;ISOPROPYLTHIO-BETA- GALACTOSIDE;ISOPROPYLTHIO -BETA-THIOGALACTOSIDASE; ISOPROPYLTHIO-B-THIOGALACTOPYRANOSIDE;ISOPROPYL THIOGALACTOSIDE;ISOPROPYL-BETA-D-THIOGALACTOPYRANOSIDE, DIOXANE FREE;Isopropyl Î²-D-1 Thiogalactopyranoside; propan-2-yl 1-thio-beta-D-galactopyranoside;1-methylethyl 1-thio-D-galactopyranoside ISOPROPYL-BETA-D-THIOGALACTOPYRANOSIDE (IPTG) DIOXANE FREE', 'C9H18O5S', '238.30', 'Isopropyl-beta-D-thio_galactopyranoside_(IPTG).gif', 'White to off-white crystalline powder', 'Min 99%+', '-31.5 Â± 3.0Â° [a]D20(c=1,H2O)', '367-93-1', 'Soluble in water, and methanol', 'Max 1%', 'Shipped at Ambient Temperature. Store at +2 - 8Â°C.', 'carbohydrates'),
(2, '5-BROMO-4-CHLORO-3-INDOLYL-B-D-GALACTOPYRANOSIDE [X-GAL]', '.beta.-D-Galactopyranoside 5-bromo-4-chloro-1H-indol-3-yl;5-Bromo-4-chloro-1H-indol-3- yl beta-D-galactopyranoside;5-Bromo-4-chloro-3-indolyl-.beta. -D-galactoside;5-Bromo-4-chloro-3-indolyl-b-D-galactoside; beta-D-Galactopyranoside, 5-bromo-4-chloro-1H-indol-3-yl;Xgal;X-GAL', 'C14H15BrClNO6', '408.629', '5-BROMO-4-CHLORO-3-INDOLYL-B-D-GALACTOPYRANOSIDE_[X-GAL].gif', 'White to off-white crystalline powder', 'Min 99%+', '-61.5 Â±3Â° ([Î±]D.20 (c=1,DMF:water,1:1)', '7240-90-6', 'Soluble in DMF (5% w/v) and DMSO (20 mg/ml)', 'Max 0.5%', 'Shipped at Ambient Temperature. Store at +2 - 8Â°C.', 'carbohydrates'),
(3, '5-BROMO-4-CHLORO-3-INDOLYL-BETA-DGLUCOPYRANOSIDE [X-GLU]', '5-Bromo-4-chloro-3-indoxylglucoside;5-Bromo-4-chloroindol-3-yl-beta-D- glucopyranoside;beta-D-Glucopyranoside, 5-bromo-4-chloro-1H-indol-3-yl; 5-bromo-4-chloro-1H-indol-3-yl beta-D-glucopyranoside;5-bromo-4-chloro- 1H-indol-3-yl beta-L-galactopyranoside;5-Bromo-4-chloro-3-indolyl Î²-D-glucopyranosideCHX', 'C14H15BrClNO6', '408.629', '5-BROMO-4-CHLORO-3-INDOLYL-BETA-DGLUCOPYRANOSIDE_[X-GLU].gif', 'White to off-white crystalline powder', 'Min 99%+', '-81Â° Â± 3Â° [Î±]D.20 (c=1, DMF)', '15548-60-4', 'DMF: 50 mg/mL, clear, colorless to very faintly yellow', 'Max 1%', 'Shipped at Ambient Temperature. Store at +2 - 8Â°C.', 'carbohydrates'),
(4, '5-BROMO-6-CHLORO-3-INDOLYL B-D-GLUCURONIDE CYCLOHEXYLAMMONIUM SALT', 'Magenta b-D-GlcA CHX Magenta b-D-glucuronide CHX', 'C14H13BrClNO7.C6H13N', '521.79', '5-BROMO-6-CHLORO-3-INDOLYL_B-D-GLUCURONIDE_CYCLOHEXYLAMMONIUM_SALT.gif', 'White to off-white crystalline powder', 'Min 99%+', '-68 Â± 3.0Â° [a]D20(c=1,DMF/H2O 1:1)', '144110-43-0', 'Solution (1% in DMF)', 'Max 1%', 'Shipped at Ambient Temperature. Store at +2 - 8Â°C.', 'carbohydrates'),
(5, '5-Bromo-4-chloro-3-indoxyl-beta-D-glucuronic acid, Sodium salt(X-GLUC Sodium Salt.)', '', '', '', NULL, '', '', '', '370100-64-4', '', '', '', 'carbohydrates'),
(6, '5-Bromo-6-chloro-3-indolyl b-D-glucuronide cyclohexylammonium salt', '', '', '', NULL, '', '', '', '144110-43-0', '', '', '', 'carbohydrates'),
(7, '2,3,4,6-TETRA-O-ACETYL-Î‘-D-GALACTOPYRANOSYL BROMIDE', '', '', '', NULL, '', '', '', '3068-32- 4', '', '', '', 'carbohydrates'),
(8, '2,3,4,6-TETRA-O-ACETYL-A-D-GLUCOPYRANOSYL CHLORIDE', '', '', '', NULL, '', '', '', '4451-35-8', '', '', '', 'carbohydrates'),
(9, '1,2,3,4-TETRA-O-ACETYL-Î’-D-GLUCURONIDE METHYL ESTER', '', '', '', NULL, '', '', '', '7355-18-2', '', '', '', 'carbohydrates'),
(10, '5-Bromo indoxyl-1,3-di acetate', '', '', '', NULL, '', '', '', '33588-54-4', '', '', '', 'carbohydrates'),
(11, 'INDOXYL-1-3-DIACETATE', '', '', '', NULL, '', '', '', '16800-67-2', '', '', '', 'carbohydrates'),
(12, 'D-Gulonic acid-1,4-lactone', '', '', '', NULL, '', '', '', '6322-07-2', '', '', '', 'carbohydrates'),
(13, '5-Bromo-4-chloro-3-indolyl 2-acetamido-2-deoxy-b-D-glucopyranoside (5-Bromo-4-chloro-3-indolyl N-acetyl-b-D-glucosaminide) (X-GlcNAc )', '', '', '', NULL, '', '', '', '4264-82-8', '', '', '', 'carbohydrates'),
(14, '5-BROMO-6-CHLORO-3-INDOLYL CAPRYLATE , ( Magenta Caprylate)', '', '', '', NULL, '', '', '', '209347-94-4', '', '', '', 'carbohydrates'),
(15, '5-Bromo-6-chloro-3-indolyl-beta-D-glucopyranoside [ Magenta-beta-D-glucoside ] (Red Glucose)', '', '', '', NULL, '', '', '', '93863-89-9', '', '', '', 'carbohydrates'),
(16, '6-chloro-3-indolyl-beta-D-galactopyranoside [ Salmon Gal ] [ Rose gal ]', '6-Chloro-3-indolyl--D-galactopyranoside;Red-Gal(or) 6-Chloro-3-indolyl-  D-galactoside;ChloroindolylDgalactopyranoside;Salmon Galactoside;  6-chloro-1H-indol-1-yl beta-D-galactopyranoside;6-chloro-1H-indol-3-yl  Î²-D-galactopyranoside, Salmon Gal ,Rose gal, 6-Chloro-3-(b-D-galactopyranosyloxy)indole', 'C14H16ClNO6', '329.7', '6-chloro-3-indolyl-beta-D-galactopyranoside_[_Salmon_Gal_]_[_Rose_gal_].gif', 'Off-white to pale pink powder', 'Min 99%+', '-40.0 to -50.0Â°   [Î±]D.20 (c=1, MeOH)', '138182-21-5', 'Soluble in 5% (w/v) Methanol,Colorless to slightly yellowish, clear', 'Max 1%', 'Shipped at Ambient Temperature. Store at +2 - 8Â°C.', 'carbohydrates'),
(17, '6-chloro-3-indolyl-beta-D-gluco pyranoside [ Salmon glu ] [ Rose glu ]', '', '', '', NULL, '', '', '', '159954-28-6', '', '', '', 'carbohydrates'),
(18, '5-Bromo-3-indolyl-b-D-galactopyranoside (Blue Gal ) ( Bluo-Gal)', '', '', '', NULL, '', '', '', '97753-82-7', '', '', '', 'carbohydrates'),
(19, '4-Chloro-3-indolyl b-D-galactopyranoside', '', '', '', NULL, '', '', '', '135313-63-2', '', '', '', 'carbohydrates'),
(20, 'D-Glucoronic acid sodium salt', '', '', '', NULL, '', '', '', '14984-34-0', '', '', '', 'carbohydrates'),
(21, 'D-Glucoronic acid', '', '', '', NULL, '', '', '', '6556-12-3', '', '', '', 'carbohydrates'),
(22, '1,2,3,4-tetra-o-acetyl glucoronic acid methyl ester', '', '', '', NULL, '', '', '', '62133-77-1', '', '', '', 'carbohydrates'),
(23, '1,2,3,4,6-Penta-O-acetyl-Î²-D-galactopyranoside ( beta-D-Galactose pentaacetate)', '', '', '', NULL, '', '', '', '4163-60-4', '', '', '', 'carbohydrates'),
(24, '1,2,3,4,6-Penta-O-acetyl-Î±-D-galactopyranoside (alfa-D-Galactose pentaacetate)', '', '', '', NULL, '', '', '', '4163-59-1', '', '', '', 'carbohydrates'),
(25, '1,2,3,4,6-Penta-O-acetyl-Î²-D-glucopyranoside ( beta- D-Glucose pentaacetate)', '', '', '', NULL, '', '', '', '604-69-3 (or) 154395-36-5', '', '', '', 'carbohydrates'),
(26, '1,2,3,4,6-Penta-O-acetyl-Î±-D-glucopyranoside (Î±-D-Glucose pentaacetate)', '', '', '', NULL, '', '', '', '604-68-2', '', '', '', 'carbohydrates'),
(27, '4-Methyl umbelliferyl-beta-D-glucoronide tri hydrate (MUG) (4-MUG) (Mug-glucoronide)', '', '', '', NULL, '', '', '', '6160-80-1', '', '', '', 'carbohydrates'),
(28, '4-Methylumbelliferyl Î²-D-galactopyranoside (Mug-gal)', '', '', '', NULL, '', '', '', '6160-78-7', '', '', '', 'carbohydrates'),
(29, '4-Methylumbelliferyl-Î²- D-glucopyranoside (Mug-glucoside)', '', '', '', NULL, '', '', '', '18997-57-4', '', '', '', 'carbohydrates'),
(30, '2-Nitro phenyl-beta-D-galactopyranoside (ONPG)', '', '', '', NULL, '', '', '', '369-07-3', '', '', '', 'carbohydrates'),
(31, '4-Nitro phenyl-beta-D-galactopyranoside, (PNPG)', '', '', '', NULL, '', '', '', '3368-04-5', '', '', '', 'carbohydrates'),
(32, 'Phenyl-Î²-D-galactopyranoside', '', '', '', NULL, '', '', '', '2818-58-8', '', '', '', 'carbohydrates'),
(33, 'Ethyl 1-thio-beta-D-glucopyranoside', '', '', '', NULL, '', '', '', '7473-36-1', '', '', '', 'carbohydrates'),
(34, 'Ethyl 1-thio-beta-D-galactopyranoside', '', '', '', NULL, '', '', '', '56245-60-4', '', '', '', 'carbohydrates'),
(35, 'n-Octyl-Î²-D-Galactopyranoside', '', '', '', NULL, '', '', '', '40427-75-6', '', '', '', 'carbohydrates'),
(36, 'n-Octyl-Î²-D-Glucopyranoside', '', '', '', NULL, '', '', '', '00-0-0', '', '', '', 'carbohydrates'),
(37, '2, 3, 4, 6-tetra-o-acetyl-beta-D-glucopyranosyl isothiocyanate', '', '', '', NULL, '', '', '', '14152-97-7', '', '', '', 'carbohydrates'),
(38, 'D-Glucuronolactone (D-Glucurono-3,6-lactone) ( D-(+)-Glucuronic acid Î³-lactone)', '', '', '', NULL, '', '', '', '32449-92-6', '', '', '', 'carbohydrates'),
(39, 'Methyl b-D-glucopyranoside hemihydrates', '', '', '', NULL, '', '', '', '7000-27-3', '', '', '', 'carbohydrates'),
(40, '1,2:5,6-di-O-isopropylidene-D-mannitol', '', '', '', NULL, '', '', '', '1707-77-3', '', '', '', 'carbohydrates'),
(41, '3,4-O-isopropylidene-D-mannitol', '', '', '', NULL, '', '', '', '3969-84-4', '', '', '', 'carbohydrates'),
(42, '1,2,3,4,5,6-tri-O-isopropylidene-D-mannitol', '', '', '', NULL, '', '', '', '3969-59-3', '', '', '', 'carbohydrates'),
(43, '1,6-Anhydro-Beta-D-Glucose', '', '', '', NULL, '', '', '', '498-07-7', '', '', '', 'carbohydrates'),
(44, '5-Bromo-4-chloro-3-indolyl acetate', '', '', '', NULL, '', '', '', '3252-36-6', '', '', '', 'carbohydrates'),
(45, 'Phenyl phosphate disodium salt hydrate', 'Disodiumphenylphosphate,dihy;Phosphoricacid,monophenylester,disodiumsalt; DISODIUM PHENYL-(O)-PHOSPHATE;DI-SODIUM PHENYL PHOSPHAT DIHYDRATE; DISODIUM PHENYLPHOSPHATE;PHENYLPHOSPHORIC ACID DISODIUM SALT;PHENYL PHOSPHATE DISODIUM SALT;PHENYL DISODIUM PHOSPHATE', 'C6H9Na2O6P', '254.0854', 'Phenyl_phosphate_disodium_salt_hydrate.png', 'White to Off White Powder', 'NLT. 99 %', '', '3279-54-7', 'Freely soluble in water', '11 % to 17.1 %', '', 'phosphates'),
(46, '1-Naphthyl phosphate monosodium salt monohydrate', 'Î±-Naphthyl phosphate monosodium salt monohydrate, Sodium 1-naphthyl phosphate monohydrate  ALPHA-NAPHTHYL ACID PHOSPHATE, SODIUM SALT;ALPHA-NAPHTHYL PHOSPHATE  MONOSODIUM SALT MONOHYDRATE;ALPHA-NAP-PHOS NA H2O;1-NAPHTHYL PHOSPHATE  MONOSODIUM SALT MONOHYDRATE;1-NAPHTHYLPHOSPHORIC ACID  MONOSODIUM SALT  MONOHYDRATE;1-NAPHTHYL PHOSPHATE SODIUM SALT, MONOHYDRATE; SODIUM 1-NAPHTHYL  HYDROGEN PHOSPHATE MONOHYDRATE;SODIUM ALPHA-NAPHTHYL ACID PHOSPHATE  (MONOSODIUM) MONOHYDRATE', 'C10H7OP(O)(OH)(ONa) Â· H2O', '264.15', '1-Naphthyl_phosphate_monosodium_salt_monohydrate.gif', 'White to Off White Powder', 'NLT. 98 %', '', '81012-89-7', 'Freely soluble in water', '5 % to 10 %', '', 'phosphates'),
(47, '1-Naphthyl phosphate Disodium salt', 'PHOSPHORIC ACID 1-NAPHTHYL ESTER DISODIUM SALT;SODIUM A-NAPHTHYL ACID  PHOSPHATE (DISODIUM);1-NAPHTHYLPHOSPHORIC ACID DISODIUM SALT;1-NAPHTHYL  PHOSPHATE DISODIUM SALT;1-NAPHTHYL DISODIUM ORTHOPHOSPHATE;1-NAPHTHALENOL  DIHYDROGEN PHOSPHATE DISODIUM SALT;ALPHA-NAP-PHOS 2NA;ALPHA-NAPHTHYL  PHOSPHATE DISODIUM SALT', 'C10H7Na2O4P', '268.11', '1-Naphthyl_phosphate_Disodium_salt.gif', 'White to Off White Powder', 'NLT. 98 %', '', '2183-17-7', 'Freely soluble in water', '1 %', '', 'phosphates'),
(48, '1-Naphthyl phosphate', 'A-NAPHTHYL PHOSPHATE;ALPHA-NAPHTHYL PHOSPHATE;ALPHA-NAPHTHYL  ACID PHOSPHATE;1-NAPHTHYL PHOSPHATE;AURORA KA-1621;  ~-Naphthyl phosphate 1-Naphthyl phosphate;naphthyl dihydrogen phosphate;  1-NAPHTHYL PHOSPHATE 99+%', 'C10H9O4P', '224.15', NULL, 'White to Off White Powder', 'NLT. 98 %', '', '1136-89-6', 'Freely soluble in water', '1 %', '', 'phosphates'),
(49, '4â€“NITRO PHENYL PHOSPHATE DI SODIUM SALT HEXAHYDRATE (PNPP)', '4-Nitrophenyl phosphate disodium salt hexahydrate;4-Nitrophenyl phosphate,  disodium salt hexahydrate;Disodium 4-nitrophenyl phosphate hexahydrate;  Phosphoric acid, 4-nitrophenyl ester, sodium salt, hydrate (1:2:6);  p-Nitrophenyl phosphate disodium hexahydrate;p-Nitrophenyl phosphate,  disodium salt, hexahydrate;pNPP disodium hexahydrate;pNPP disodium  salt hexahydrate;p-NPP, disodium salt, hexahydrate;Sodium 4-nitrophenyl  phosphate hydrate (2:1:6)', 'C6H16NNa2o12P', '371.144', '4â€“NITRO_PHENYL_PHOSPHATE_DI_SODIUM_SALT_HEXAHYDRATE_(PNPP).gif', 'Off White To Pale Yallow crystalyne powder', 'NLT. 99 %', '', '4264-83-9 or 333338-18-4', 'Freely soluble in water', '', '', 'phosphates'),
(50, 'Bis(p-nitrophenyl) phosphate sodium salt', 'BIS(P-NITROPHENYL) PHOSPHATE SODIUM SALT;BIS(PNP)-PHOS NA;  BIS(4-NITROPHENYL)PHOSPHORIC ACID SODIUM SALT;  BIS(4-NITROPHENYL)PHOSPHATE SODIUM SALT;  SODIUM BIS(4-NITROPHENYL)PHOSPHATE  ;bis(P-nitrophenyl)phosphate sodium;Sodium Bis(4-nitrophenyl)  phosphate [for Phosphodiesterase Substrate];Bis(4-nitrophenyl)=sodium phosphate', 'C6H16NNa2o12P', '362.16', NULL, 'Off White To Pale Yallow crystalyne powder', 'NLT. 98 %', '', '4043-96-3', 'Freely soluble in water', '', '', 'phosphates'),
(51, '1-Naphthyl phosphate Potassium salt', 'Naphthyl POTASSIUM PHOSPHATE SALT-1 ; ALPHA-Naphthyl Monopotassium  the ACID PHOSPHATE SALT ; the A-naphthyl acid phosphate monopotassium ;   [alpha]-naphthyl acid phosphate monopotassium Salt', 'C10H7OP(O)(OH)(OK)', '262.24', '1-Naphthyl_phosphate_Potassium_salt.gif', 'Off White To yallow color powder', 'NLT. 98 %', '', '100929-85-9', 'Freely soluble in water', '1 %', '', 'phosphates'),
(52, '4-NITROPHENYL PHOSPHATE BIS[TRIS(HYDROXYMETHYL)AMINOMETHANE] SALT', '4-Nitrophenylphosphoric acid di[tris(hydroxymethyl)aminomethane] salt;  4-nitrophenyl dihydrogen phosphate - 2-amino-2-(hydroxymethyl)propane-1,3-diol (1:2)  4-NITROPHENYLPHOSPHORIC ACID BIS[TRIS(HYDROXYMETHYL)METHYLAMINE]  SALT;4-NITROPHENYLPHOSPHORIC ACID DI[TRIS(HYDROXYMETHYL)AMINOMETHANE]  SALT;4-NITROPHENYL PHOSPHATE BIS[TRIS(HYDROXYMETHYL)AMINOMETHANE] SALT;  4-NITROPHENYL PHOSPHATE DITRIS;4-NITROPHENYL PHOSPHATE DI(TRIS) SALT;  P-NITROPHENYL PHOSPHATE DI(TRIS) SALT;PNPP-TRIS;PNPP, 2TRIS', 'C14H28N3O12P', '461.358', '4-NITROPHENYL_PHOSPHATE_BIS[TRIS(HYDROXYMETHYL)AMINOMETHANE]_SALT.gif', 'Off White To Pale Yallow crystalyne powder', 'NLT. 99 %', '', '68189-42-4', 'Freely soluble in water', '', '', 'phosphates'),
(53, '4-NITROPHENYL PHOSPHATE BIS(CYCLOHEXYLAMMONIUM) SALT', '4-Nitrophenyl phosphate bis(cyclohexylammonium) salt;4-nitrophenyl dihydrogen  phosphate - cyclohexanamine (1:2);dicyclohexanaminium 4-nitrophenyl phosphate hydrate;  p-Nitrophenylphosphate, dicyclohexylammonium salt', 'C18H34N3O7P', '435.45', '4-NITROPHENYL_PHOSPHATE_BIS(CYCLOHEXYLAMMONIUM)_SALT.gif', 'Off White To Pale Yallow crystalyne powder', 'NLT. 99 %', '', '52483-84-8', 'Freely soluble in water', '', '', 'phosphates'),
(54, '4-Nitrophenyl phosphate magnesium salt', '', '', '', NULL, '', '', '', '32348-90-6', '', '', '', 'phosphates'),
(55, '4-Nitrophenyl phosphate bis(2-amino- 2-ethyl-1,3-propanediol) salt', '', '', '', NULL, '', '', '', '62796-28-5', '', '', '', 'phosphates'),
(56, '4-Nitrophenyl phosphate', '', '', '', NULL, '', '', '', '330-13-2', '', '', '', 'phosphates'),
(57, '5-Bromo-4-chloro-3-indolyl phosphate di sodium salt [X-phosphate di sodium salt] [ BCIP di sodium salt ]', '', '', '', NULL, '', '', '', '102185-33-1', '', '', '', 'phosphates'),
(58, '5-Bromo-4-chloro-3-indolyl phosphate ptoluidine salt [X-phosphate p-toluidine Salt] [ BCIP ptoluidine salt ]', '', '', '', NULL, '', '', '', '6578-06-9', '', '', '', 'phosphates'),
(59, '5-Bromo-6-chloro-3-indolyl phosphate di sodium salt [ Magenta-phosphate di soduim salt ]', '', '', '', NULL, '', '', '', '404366-59-2', '', '', '', 'phosphates'),
(60, '5-Bromo-6-chloro-3-indolyl phosphate ptoluidine Salt [ Magenta-phosphate p-toluidine Salt ]', '', '', '', NULL, '', '', '', '6769-80-8', '', '', '', 'phosphates'),
(61, '6-CHLORO-3-INDOLYL PHOSPHATE P-TOLUIDINE SALT (Salmon-phosphate p-toluidine salt)', '', '', '', NULL, '', '', '', '159954-33-3', '', '', '', 'phosphates'),
(62, '5-Bromo-3-indolyl phosphate p-toluidine salt', '', '', '', NULL, '', '', '', '80008-69-1', '', '', '', 'phosphates'),
(63, '5-Bromo-3-indolyl phosphate disodium salt (Blue-phos)', '', '', '', NULL, '', '', '', '16036-59-2', '', '', '', 'phosphates'),
(64, '4-Methylumbelliferyl phosphate disodium salt trihydrate', '', '', '', NULL, '', '', '', '22919-26-2', '', '', '', 'phosphates'),
(65, 'Phenyl phosphate disodium salt hydrate', '', '', '', NULL, '', '', '', '3279-54-7', '', '', '', 'phosphates'),
(66, 'dibenzyl phosphate', '', '', '', NULL, '', '', '', '1623-08-1', '', '', '', 'phosphates');

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
