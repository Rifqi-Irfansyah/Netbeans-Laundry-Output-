-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Sep 2022 pada 10.02
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laundry`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('rifqi', 'rifqi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `kd_pelanggan` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `no_hp` varchar(100) NOT NULL,
  `berat_baju` int(15) NOT NULL,
  `pelayanan` enum('setrika','tanpa setrika','','') NOT NULL DEFAULT 'tanpa setrika',
  `pengharum` enum('sakura','lavender','cofee','philux') DEFAULT NULL,
  `created_at` date NOT NULL,
  `selesai` char(10) DEFAULT NULL,
  `finish_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`kd_pelanggan`, `nama`, `alamat`, `no_hp`, `berat_baju`, `pelayanan`, `pengharum`, `created_at`, `selesai`, `finish_at`) VALUES
(1, 'Rifqi', 'Cimahi', '089656908515', 5, 'tanpa setrika', 'sakura', '2022-09-11', '√', '2022-09-14'),
(12, 'Hakim', 'Cigugur', '083636282738', 7, 'tanpa setrika', 'lavender', '2022-09-12', '√', '2022-09-14'),
(13, 'Marco', 'Ciawitali', '089625372636', 5, 'setrika', 'cofee', '2022-09-12', '√', '2022-09-14'),
(14, 'Angga ', 'Bandung', '082222123234', 2, 'setrika', 'lavender', '2022-09-12', '√', '2022-09-15'),
(15, 'Iqbal', 'Bandung', '089543223112', 3, 'setrika', 'philux', '2022-09-12', '', NULL),
(16, 'Al - Fatih', 'Hujung', '087820017410', 5, 'setrika', 'philux', '2022-09-12', '', NULL),
(17, 'Irfansyah', 'Cimahi', '082312446655', 2, 'setrika', 'sakura', '2022-09-12', '', NULL),
(18, 'Lutvida', 'Cibereum', '083870239357', 1, 'tanpa setrika', 'philux', '2022-09-12', '', NULL),
(19, 'Sulaiman', 'Cimindi', '082193947112', 2, 'setrika', 'sakura', '2022-09-12', '', NULL),
(20, 'Xander', 'Cibeber', '085692357988', 2, 'setrika', 'lavender', '2022-09-12', '', NULL),
(21, 'user', 'Cimahi', '08939930303', 2, 'setrika', 'cofee', '2022-09-19', '', NULL),
(22, 'coba', 'asas', '12121', 2, 'setrika', 'sakura', '2022-09-26', '√', '2022-09-26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `username` varchar(300) NOT NULL,
  `password` varchar(200) NOT NULL,
  `nama` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`username`, `password`, `nama`) VALUES
('coba', 'coba', 'coba'),
('re', 're', 're'),
('tes', 'tes', 'tes'),
('user', 'user', 'user');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`kd_pelanggan`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `kd_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
