-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2024 at 03:34 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir_cafe`
--

-- --------------------------------------------------------

--
-- Table structure for table `daftar persediaan menu`
--

CREATE TABLE `daftar persediaan menu` (
  `Kode_Menu` int(10) NOT NULL,
  `Kategori` varchar(225) NOT NULL,
  `Nama_Menu` varchar(225) NOT NULL,
  `Harga` int(20) NOT NULL,
  `Total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_menu`
--

CREATE TABLE `tabel_menu` (
  `kategori` varchar(225) NOT NULL,
  `nama_menu` varchar(225) NOT NULL,
  `harga_menu` int(25) NOT NULL,
  `total_menu` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_menu`
--

INSERT INTO `tabel_menu` (`kategori`, `nama_menu`, `harga_menu`, `total_menu`) VALUES
('Makanan', 'Nasi Goreng', 12000, 12000),
('Minuman', 'Pop Ice', 5000, 5000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daftar persediaan menu`
--
ALTER TABLE `daftar persediaan menu`
  ADD PRIMARY KEY (`Kode_Menu`);

--
-- Indexes for table `tabel_menu`
--
ALTER TABLE `tabel_menu`
  ADD PRIMARY KEY (`kategori`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
