-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Apr 2022 pada 19.14
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tourism`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `place`
--

CREATE TABLE `place` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `location` varchar(255) NOT NULL,
  `imageAsset` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `openDay` varchar(100) NOT NULL,
  `openHour` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `imgSlider1` varchar(255) NOT NULL,
  `imgSlider2` varchar(255) NOT NULL,
  `imgSlider3` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `place`
--

INSERT INTO `place` (`id`, `name`, `location`, `imageAsset`, `description`, `openDay`, `openHour`, `price`, `imgSlider1`, `imgSlider2`, `imgSlider3`) VALUES
(1, 'Pancer Door Beach', 'Ploso, Pacitan', 'https://t-2.tstatic.net/tribunnewswiki/foto/bank/images/pantai-pancer-door.jpg', 'Pancer Door Beach is one series of Teleng Ria Beach, sea wave’s Pancer Door Beach is larger than Teleng Ria Beach. Great surf is often utilized by surfers to show his ability to attack the current high waves.', 'Open Everyday', 'Open 24 Hours', 5000, 'https://t-2.tstatic.net/tribunnewswiki/foto/bank/images/pantai-pancer-door.jpg', 'https://t-2.tstatic.net/tribunnewswiki/foto/bank/images/pantai-pancer-door.jpg', 'https://t-2.tstatic.net/tribunnewswiki/foto/bank/images/pantai-pancer-door.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `place`
--
ALTER TABLE `place`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
