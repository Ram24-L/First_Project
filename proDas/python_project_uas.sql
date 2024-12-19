-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Nov 2024 pada 08.03
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `python_project_uas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_barang`
--

CREATE TABLE `data_barang` (
  `id` int(11) NOT NULL,
  `kode` varchar(255) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_barang`
--

INSERT INTO `data_barang` (`id`, `kode`, `nama`, `qty`, `harga`, `total`) VALUES
(1, 'LTP', 'Lenovo', 12, 5699000, '68388000'),
(2, 'LTP', 'Laptop Asus', 10, 7600000, '76000000'),
(3, 'MS', 'Mouse', 10, 25000, '250000'),
(5, 'MS', 'Mouse Pad', 12, 20000, '240000'),
(6, 'LTP', 'Laptop Hp', 12, 5400000, '64800000'),
(7, 'HVS', 'Kertas HVS', 100, 500, '50000'),
(8, 'MS', 'Wireless Mouse', 15, 50000, '750000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kas_barang`
--

CREATE TABLE `kas_barang` (
  `ID` int(11) NOT NULL,
  `kode` enum('PITAK','Sweety Slice') NOT NULL,
  `nama` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kas_barang`
--

INSERT INTO `kas_barang` (`ID`, `kode`, `nama`, `qty`, `harga`, `total`) VALUES
(1, 'PITAK', 'Roti Tawat', 20, 500, 10000),
(2, 'Sweety Slice', 'Roti Tawar', 10, 1000, 10000),
(3, 'PITAK', 'Saus Pizza', 1, 13000, 13000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_barang`
--
ALTER TABLE `data_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kas_barang`
--
ALTER TABLE `kas_barang`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_barang`
--
ALTER TABLE `data_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `kas_barang`
--
ALTER TABLE `kas_barang`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
