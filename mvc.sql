-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 04 Okt 2019 pada 06.22
-- Versi Server: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mvc`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `nobuku` varchar(5) NOT NULL DEFAULT '',
  `nama` varchar(25) DEFAULT NULL,
  `pengarang` varchar(25) DEFAULT NULL,
  `penerbit` varchar(25) DEFAULT NULL,
  `isbn` varchar(20) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`nobuku`, `nama`, `pengarang`, `penerbit`, `isbn`, `status`) VALUES
('B234G', 'Catatan hati seorang istr', 'Asma Nadia', 'Elang', '224-90-431', 'Dipinjam'),
('B289K', 'Harry Potter', 'JK Rowling', 'Sydey', '889-0975-6555', 'Dipinjam'),
('B786L', 'Habibi & Ainun', 'Nanang Soebandono', 'Elang Sakti', '756-345-908-21', 'Dipinjam'),
('hytht', 'vngbmgjg', 'hgjhkjk', 'hgjhgjghjh', 'uyikiuouo', 'Dipinjam'),
('B1124', 'Bumi Manusia', 'Pramoedya Ananta Toer', 'Hasta Mitra', '979-8659-12-0', 'd');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `nrp` varchar(15) NOT NULL,
  `email` varchar(35) NOT NULL,
  `jurusan` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama`, `nrp`, `email`, `jurusan`) VALUES
(10, 'Nurul Aliya', '0022534732', 'nurulsafina46@gmail.com', 'Teknik Pangan'),
(13, 'Revan Ananda', '0022534734', 'revanananda@gmail.com', 'Teknik Pangan'),
(14, 'Serlina', '0022534733', 'serli103@gmail.com', 'Teknik Industri'),
(15, 'Ikmal Farida', '2', 'ikmal23@gmail.com', 'Teknik Pangan'),
(21, 'Farrah Amelia Putri', '00223516723', 'farrah46@gmail.com', 'Teknik Industri');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `IdPetugas` int(5) NOT NULL,
  `NamaPetugas` varchar(20) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `TempatLahir` varchar(20) NOT NULL,
  `Level` enum('admin','petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`IdPetugas`, `NamaPetugas`, `Username`, `Password`, `TempatLahir`, `Level`) VALUES
(3, 'Nur Safinaa', 'nursa', 'nursa1234', 'Paya Bedi', 'petugas'),
(1234, 'Ikmal Farida', 'Ikmal', 'ikmal123', 'Babo', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`nobuku`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`IdPetugas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
