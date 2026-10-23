-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Waktu pembuatan: 17 Sep 2026 pada 06.00
-- Versi server: 5.7.35
-- Versi PHP: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2026_jut_tegal`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_uuid` varchar(36) DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  `username` varchar(20) NOT NULL DEFAULT '',
  `pwd` varchar(100) NOT NULL,
  `is_admin` int(11) NOT NULL,
  `id_kabupaten` varchar(255) NOT NULL DEFAULT '0',
  `fullname` varchar(255) DEFAULT '',
  `NIP` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telp` varchar(100) DEFAULT NULL,
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `batas` int(11) NOT NULL DEFAULT '0',
  `isok` tinyint(1) NOT NULL DEFAULT '0',
  `google` int(1) NOT NULL DEFAULT '0',
  `id_google` varchar(255) NOT NULL DEFAULT '',
  `foto` varchar(255) NOT NULL DEFAULT '',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_uuid`, `id_user`, `username`, `pwd`, `is_admin`, `id_kabupaten`, `fullname`, `NIP`, `email`, `telp`, `last_login`, `created_date`, `updated`, `batas`, `isok`, `google`, `id_google`, `foto`, `deleted`) VALUES
('48d7f648-f827-11f0-b266-0242ac110002', 1, 'Admin1*', 'ba71cc700b29dee1a57171560882bbe7563c6ce8', 1, '0', 'admin', 'admin12345', 'deskabetakusuma@gmail.com', '12345', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2026-07-06 07:16:12', 0, 0, 0, '', '', 0),
(NULL, 2, 'devAdmin1*', '83ea7920a4150cfc9eccc0a1513da2fbea9acb08', 1, '0', 'Dev Admin', '12345', 'devadmin@gmail.com', '67890', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2026-07-27 09:02:27', 0, 0, 0, '', '', 0),
(NULL, 3, '*Admin-1*', 'bfee22254524234c687d77e8d7d9529bd174b00d', 1, '0', 'siswoyo dwi prasetyo', NULL, 'reikirayuki@gmail.com', '089521395769', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, '', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
