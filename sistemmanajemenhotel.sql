-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2024 at 01:44 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistemmanajemenhotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `kamar`
--

CREATE TABLE `kamar` (
  `nomor_kamar` int(11) NOT NULL,
  `tipe_kamar` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kamar`
--

INSERT INTO `kamar` (`nomor_kamar`, `tipe_kamar`, `harga`, `status`) VALUES
(1, 'VIP', 150000, 'terisi'),
(2, 'Eksklusif', 100000, 'kosong'),
(3, 'Reguler', 50000, 'kosong');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pemesanan` int(11) NOT NULL,
  `nama_tamu` varchar(100) NOT NULL,
  `nomor_kamar` int(11) NOT NULL,
  `tipe_kamar` varchar(100) NOT NULL,
  `lama_inap` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `biaya_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`id_pemesanan`, `nama_tamu`, `nomor_kamar`, `tipe_kamar`, `lama_inap`, `harga`, `biaya_total`) VALUES
(1, 'akfi', 1, 'VIP', 2, 150000, 300000),
(2, 'rozada', 2, 'Ekslusif', 3, 100000, 300000),
(3, 'afkanur', 3, 'Reguler', 4, 50000, 200000);

-- --------------------------------------------------------

--
-- Table structure for table `tamu`
--

CREATE TABLE `tamu` (
  `id_tamu` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `no_ktp` varchar(20) NOT NULL,
  `kontak` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tamu`
--

INSERT INTO `tamu` (`id_tamu`, `nama`, `no_ktp`, `kontak`) VALUES
(1, 'Akfi', '332101', '08123456789'),
(2, 'Rozada', '332102', '08976543210');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`nomor_kamar`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`);

--
-- Indexes for table `tamu`
--
ALTER TABLE `tamu`
  ADD PRIMARY KEY (`id_tamu`),
  ADD UNIQUE KEY `no_ktp` (`no_ktp`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
