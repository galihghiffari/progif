-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2017 at 10:11 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jadwal`
--

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `Nama` varchar(20) NOT NULL,
  `Gedung` varchar(30) NOT NULL,
  `Lantai` int(2) NOT NULL,
  `Jambuka` varchar(20) NOT NULL,
  `Hari` varchar(20) NOT NULL,
  `Penanggungjawab` varchar(20) NOT NULL,
  `Kontak` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`Nama`, `Gedung`, `Lantai`, `Jambuka`, `Hari`, `Penanggungjawab`, `Kontak`) VALUES
('9009', 'LFM', 1, '07:00 - 16: 00', 'Senin - Sabtu', 'Pak A', '081234567899'),
('9011', 'Labtek VIII', 2, '07:00 - 18: 00', 'Senin - Jumat', 'Pak B', '081234567900'),
('9012', 'Labtek VII', 1, '07:00 - 18: 00', 'Senin - Jumat', 'Pak C', '081234567901'),
('9013', 'Labtek VII', 1, '07:00 - 18: 00', 'Senin - Jumat', 'Pak C', '081234567901'),
('9014', 'Labtek VII', 1, '07:00 - 18: 00', 'Senin - Jumat', 'Pak C', '081234567901'),
('9015', 'Labtek VIII', 2, '07:00 - 18: 00', 'Senin - Jumat', 'Pak B', '081234567900'),
('9016', 'Oktagon', 1, '07:00 - 18: 00', 'Senin - Sabtu', 'Pak D', '081234567902'),
('9017', 'Oktagon', 1, '07:00 - 18: 00', 'Senin - Sabtu', 'Pak D', '081234567902'),
('9018', 'Oktagon', 1, '07:00 - 18: 00', 'Senin - Sabtu', 'Pak D', '081234567902'),
('9019', 'Oktagon', 2, '07:00 - 18: 00', 'Senin - Sabtu', 'Pak E', '081234567903'),
('9020', 'Oktagon', 2, '07:00 - 18: 00', 'Senin - Sabtu', 'Pak E', '081234567903'),
('9021', 'Oktagon', 2, '07:00 - 18: 00', 'Senin - Sabtu', 'Pak E', '081234567903'),
('9022', 'TVST', 1, '07:00 - 18: 00', 'Senin - Sabtu', 'Pak F', '081234567904'),
('9023', 'TVST', 1, '07:00 - 18: 00', 'Senin - Sabtu', 'Pak F', '081234567904'),
('9024', 'TVST', 1, '07:00 - 18: 00', 'Senin - Sabtu', 'Pak F', '081234567904'),
('9025', 'Oktagon', 2, '07:00 - 18: 00', 'Senin - Sabtu', 'Pak E', '081234567903'),
('9026', 'Oktagon', 2, '07:00 - 18: 00', 'Senin - Sabtu', 'Pak E', '081234567903'),
('9027', 'Oktagon', 2, '07:00 - 18: 00', 'Senin - Sabtu', 'Pak E', '081234567903'),
('TVST - A', 'TVST', 2, '07:00 - 18: 00', 'Senin - Sabtu', 'Pak G', '081234567905'),
('TVST - B', 'TVST', 2, '07:00 - 18: 00', 'Senin - Sabtu', 'Pak G', '081234567905'),
('TVST - C', 'TVST', 2, '07:00 - 18: 00', 'Senin - Sabtu', 'Pak G', '081234567905'),
('9103', 'GKU Barat', 1, '07:00 - 18: 00', 'Senin - Jumat', 'Pak H', '081234567906'),
('9104', 'GKU Barat', 1, '07:00 - 18: 00', 'Senin - Jumat', 'Pak H', '081234567906'),
('9107', 'GKU Barat', 1, '07:00 - 18: 00', 'Senin - Jumat', 'Pak H', '081234567906'),
('9108', 'GKU Barat', 1, '07:00 - 18: 00', 'Senin - Jumat', 'Pak H', '081234567906'),
('9114', 'GKU Barat', 2, '07:00 - 18: 00', 'Senin - Jumat', 'Pak I', '081234567907'),
('9115', 'GKU Barat', 2, '07:00 - 18: 00', 'Senin - Jumat', 'Pak I', '081234567907'),
('9116', 'GKU Barat', 2, '07:00 - 18: 00', 'Senin - Jumat', 'Pak I', '081234567907'),
('9121', 'GKU Barat', 2, '07:00 - 18: 00', 'Senin - Jumat', 'Pak I', '081234567907'),
('9122', 'GKU Barat', 2, '07:00 - 18: 00', 'Senin - Jumat', 'Pak I', '081234567907'),
('9124', 'GKU Barat', 2, '07:00 - 18: 00', 'Senin - Jumat', 'Pak I', '081234567907'),
('9125', 'GKU Barat', 2, '07:00 - 18: 00', 'Senin - Jumat', 'Pak I', '081234567907'),
('9126', 'GKU Barat', 2, '07:00 - 18: 00', 'Senin - Jumat', 'Pak I', '081234567907'),
('9127', 'GKU Barat', 2, '07:00 - 18: 00', 'Senin - Jumat', 'Pak I', '081234567907'),
('9128', 'GKU Barat', 2, '07:00 - 18: 00', 'Senin - Jumat', 'Pak I', '081234567907'),
('9131', 'GKU Barat', 3, '07:00 - 18: 00', 'Senin - Jumat', 'Pak J', '081234567908'),
('9132', 'GKU Barat', 3, '07:00 - 18: 00', 'Senin - Jumat', 'Pak J', '081234567908'),
('9133', 'GKU Barat', 3, '07:00 - 18: 00', 'Senin - Jumat', 'Pak J', '081234567908'),
('9134', 'GKU Barat', 3, '07:00 - 18: 00', 'Senin - Jumat', 'Pak J', '081234567908'),
('9135', 'GKU Barat', 3, '07:00 - 18: 00', 'Senin - Jumat', 'Pak J', '081234567908'),
('9136', 'GKU Barat', 3, '07:00 - 18: 00', 'Senin - Jumat', 'Pak J', '081234567908'),
('9137', 'GKU Barat', 3, '07:00 - 18: 00', 'Senin - Jumat', 'Pak J', '081234567908'),
('9138', 'GKU Barat', 3, '07:00 - 18: 00', 'Senin - Jumat', 'Pak J', '081234567908'),
('9213', 'GKU Timur', 2, '07:00 - 18: 00', 'Senin - Jumat', 'Pak K', '081234567909'),
('9214', 'GKU Timur', 2, '07:00 - 18: 00', 'Senin - Jumat', 'Pak K', '081234567909'),
('9221', 'GKU Timur', 3, '07:00 - 18: 00', 'Senin - Jumat', 'Pak K', '081234567909'),
('9222', 'GKU Timur', 3, '07:00 - 18: 00', 'Senin - Jumat', 'Pak K', '081234567909'),
('9223', 'GKU Timur', 3, '07:00 - 18: 00', 'Senin - Jumat', 'Pak L', '081234567910'),
('9224', 'GKU Timur', 3, '07:00 - 18: 00', 'Senin - Jumat', 'Pak L', '081234567910'),
('9231', 'GKU Timur', 4, '07:00 - 18: 00', 'Senin - Jumat', 'Pak L', '081234567910'),
('9232', 'GKU Timur', 4, '07:00 - 18: 00', 'Senin - Jumat', 'Pak L', '081234567910'),
('9233', 'GKU Timur', 4, '07:00 - 18: 00', 'Senin - Jumat', 'Pak L', '081234567910'),
('9234', 'GKU Timur', 4, '07:00 - 18: 00', 'Senin - Jumat', 'Pak L', '081234567910'),
('9301', 'Labtek V', 1, '07:00 - 18: 00', 'Senin - Jumat', 'Pak M', '081234567911'),
('9302', 'Labtek V', 1, '07:00 - 18: 00', 'Senin - Jumat', 'Pak M', '081234567911'),
('9303', 'Labtek V', 1, '07:00 - 18: 00', 'Senin - Jumat', 'Pak M', '081234567911'),
('9304', 'Labtek V', 1, '07:00 - 18: 00', 'Senin - Jumat', 'Pak M', '081234567911'),
('9305', 'Labtek V', 1, '07:00 - 18: 00', 'Senin - Jumat', 'Pak M', '081234567911'),
('9306', 'Labtek V', 1, '07:00 - 18: 00', 'Senin - Jumat', 'Pak M', '081234567911'),
('9315', 'Labtek V', 1, '07:00 - 18: 00', 'Senin - Jumat', 'Pak M', '081234567911'),
('9307', 'Labtek V', 1, '07:00 - 18: 00', 'Senin - Jumat', 'Pak N', '081234567912'),
('9308', 'Labtek V', 1, '07:00 - 18: 00', 'Senin - Jumat', 'Pak N', '081234567912'),
('9309', 'Labtek V', 1, '07:00 - 18: 00', 'Senin - Jumat', 'Pak N', '081234567912'),
('9311', 'Labtek VI', 1, '07:00 - 18: 00', 'Senin - Jumat', 'Pak N', '081234567912'),
('9312', 'Labtek VI', 1, '07:00 - 18: 00', 'Senin - Jumat', 'Pak N', '081234567912'),
('9313', 'Labtek VI', 1, '07:00 - 18: 00', 'Senin - Jumat', 'Pak N', '081234567912'),
('9314', 'Labtek VI', 1, '07:00 - 18: 00', 'Senin - Jumat', 'Pak N', '081234567912'),
('9401', 'Labtek I', 2, '07:00 - 16: 00', 'Senin - Sabtu', 'Pak O', '081234567913'),
('9402', 'Labtek I', 2, '07:00 - 16: 00', 'Senin - Sabtu', 'Pak O', '081234567913'),
('9404', 'Labtek I', 2, '07:00 - 16: 00', 'Senin - Sabtu', 'Pak O', '081234567913'),
('9405', 'Labtek I', 2, '07:00 - 16: 00', 'Senin - Sabtu', 'Pak O', '081234567913'),
('BSC - A', 'Basic Science A', 4, '07:00 - 18: 00', 'Senin - Sabtu', 'Pak P', '081234567914');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
