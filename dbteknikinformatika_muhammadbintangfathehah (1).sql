-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2023 at 11:19 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbteknikinformatika_muhammadbintangfathehah`
--

-- --------------------------------------------------------

--
-- Table structure for table `daftar_muhammadbintangfathehah`
--

CREATE TABLE `daftar_muhammadbintangfathehah` (
  `id_daftar` int(11) NOT NULL,
  `nim` char(10) NOT NULL,
  `id_ukm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `daftar_muhammadbintangfathehah`
--

INSERT INTO `daftar_muhammadbintangfathehah` (`id_daftar`, `nim`, `id_ukm`) VALUES
(1, 'C030320126', 1),
(3, 'C030320130', 3),
(5, 'C030320136', 5);

-- --------------------------------------------------------

--
-- Table structure for table `level_muhammadbintangfathehah`
--

CREATE TABLE `level_muhammadbintangfathehah` (
  `id_level` int(11) NOT NULL,
  `nama_level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `level_muhammadbintangfathehah`
--

INSERT INTO `level_muhammadbintangfathehah` (`id_level`, `nama_level`) VALUES
(1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa_muhammadbintangfathehah`
--

CREATE TABLE `mahasiswa_muhammadbintangfathehah` (
  `nim` char(10) NOT NULL,
  `nama_mhs` varchar(50) NOT NULL,
  `tanggal_lahir` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa_muhammadbintangfathehah`
--

INSERT INTO `mahasiswa_muhammadbintangfathehah` (`nim`, `nama_mhs`, `tanggal_lahir`, `alamat`) VALUES
('C030320126', 'Ilham', '18 Desember 2002', 'Banjarbaru'),
('C030320130', 'Bintang', '19 April 2002', 'Banjarmasin'),
('C030320135', 'Suna', '16 Oktober 2002', 'Banjarmasin'),
('C030320136', 'Andi', '18 April 2003', 'Banjarbaru');

-- --------------------------------------------------------

--
-- Table structure for table `ukm_muhammadbintangfathehah`
--

CREATE TABLE `ukm_muhammadbintangfathehah` (
  `id_ukm` int(11) NOT NULL,
  `nama_ukm` varchar(50) NOT NULL,
  `deskripsi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ukm_muhammadbintangfathehah`
--

INSERT INTO `ukm_muhammadbintangfathehah` (`id_ukm`, `nama_ukm`, `deskripsi`) VALUES
(1, 'Voli', 'Testing'),
(3, 'Basket', 'Testing'),
(4, 'Futsal', 'Testing'),
(5, 'Renang', 'Test');

-- --------------------------------------------------------

--
-- Table structure for table `users_muhammadbintangfathehah`
--

CREATE TABLE `users_muhammadbintangfathehah` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `id_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_muhammadbintangfathehah`
--

INSERT INTO `users_muhammadbintangfathehah` (`username`, `password`, `id_level`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daftar_muhammadbintangfathehah`
--
ALTER TABLE `daftar_muhammadbintangfathehah`
  ADD PRIMARY KEY (`id_daftar`),
  ADD KEY `nim` (`nim`),
  ADD KEY `id_ukm` (`id_ukm`);

--
-- Indexes for table `level_muhammadbintangfathehah`
--
ALTER TABLE `level_muhammadbintangfathehah`
  ADD PRIMARY KEY (`id_level`);

--
-- Indexes for table `mahasiswa_muhammadbintangfathehah`
--
ALTER TABLE `mahasiswa_muhammadbintangfathehah`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `ukm_muhammadbintangfathehah`
--
ALTER TABLE `ukm_muhammadbintangfathehah`
  ADD PRIMARY KEY (`id_ukm`);

--
-- Indexes for table `users_muhammadbintangfathehah`
--
ALTER TABLE `users_muhammadbintangfathehah`
  ADD PRIMARY KEY (`username`),
  ADD KEY `id_level` (`id_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daftar_muhammadbintangfathehah`
--
ALTER TABLE `daftar_muhammadbintangfathehah`
  MODIFY `id_daftar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `level_muhammadbintangfathehah`
--
ALTER TABLE `level_muhammadbintangfathehah`
  MODIFY `id_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ukm_muhammadbintangfathehah`
--
ALTER TABLE `ukm_muhammadbintangfathehah`
  MODIFY `id_ukm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `daftar_muhammadbintangfathehah`
--
ALTER TABLE `daftar_muhammadbintangfathehah`
  ADD CONSTRAINT `daftar_muhammadbintangfathehah_ibfk_1` FOREIGN KEY (`id_ukm`) REFERENCES `ukm_muhammadbintangfathehah` (`id_ukm`),
  ADD CONSTRAINT `daftar_muhammadbintangfathehah_ibfk_2` FOREIGN KEY (`nim`) REFERENCES `mahasiswa_muhammadbintangfathehah` (`nim`);

--
-- Constraints for table `users_muhammadbintangfathehah`
--
ALTER TABLE `users_muhammadbintangfathehah`
  ADD CONSTRAINT `users_muhammadbintangfathehah_ibfk_1` FOREIGN KEY (`id_level`) REFERENCES `level_muhammadbintangfathehah` (`id_level`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
