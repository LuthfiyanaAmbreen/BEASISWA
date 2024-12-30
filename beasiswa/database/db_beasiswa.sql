-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2024 at 07:08 AM
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
-- Database: `db_beasiswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` bigint(20) NOT NULL,
  `NIM` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `ipk` varchar(50) NOT NULL,
  `beasiswa` varchar(50) NOT NULL,
  `berkas` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` varchar(100) DEFAULT 'belum diverifikasi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `NIM`, `name`, `phone_number`, `semester`, `ipk`, `beasiswa`, `berkas`, `email`, `status`) VALUES
(13, '1234567810', 'Luthfiyana Ambreen', '085763437221', '2', '3.7', 'akademik', '.jpg', 'test@gmail.com', 'Verifikasi'),
(14, '02837635117', 'Naafa Sheva Puteri', '0876154227', '3', '3.4000000000000004', 'non', '.jpg', 'afaafa@gmail.com', 'Belum di Verifikasi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
