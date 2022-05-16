-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Feb 2021 pada 03.22
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_inventory_skyy`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `kd_barang` char(14) NOT NULL,
  `nama_kd` char(4) NOT NULL,
  `kondisi_kd` char(4) NOT NULL,
  `ruang_kd` char(4) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `status` varchar(20) NOT NULL,
  `user_kd` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`kd_barang`, `nama_kd`, `kondisi_kd`, `ruang_kd`, `tgl_masuk`, `status`, `user_kd`) VALUES
('B21-001001-001', 'N001', 'D001', 'R001', '2021-02-02', 'Tersedia', 'P0000'),
('B21-001001-002', 'N001', 'D001', 'R001', '2021-02-02', 'Tersedia', 'P0000'),
('B21-002001-001', 'N002', 'D001', 'R001', '2021-02-02', 'Tersedia', 'P0000'),
('B21-002001-002', 'N002', 'D001', 'R001', '2021-02-02', 'Tersedia', 'P0000'),
('B21-002001-003', 'N002', 'D001', 'R001', '2021-02-02', 'Tersedia', 'P0000'),
('B21-002001-004', 'N002', 'D001', 'R001', '2021-02-02', 'Tersedia', 'P0000'),
('B21-002001-005', 'N002', 'D001', 'R001', '2021-02-02', 'Tersedia', 'P0000'),
('B21-002002-001', 'N002', 'D001', 'R002', '2021-02-02', 'Tersedia', 'P0000'),
('B21-002002-002', 'N002', 'D001', 'R002', '2021-02-02', 'Tersedia', 'P0000'),
('B21-002003-001', 'N002', 'D001', 'R003', '2021-02-02', 'Tersedia', 'P0000'),
('B21-002003-002', 'N002', 'D001', 'R003', '2021-02-02', 'Tersedia', 'P0000'),
('B21-003001-001', 'N003', 'D001', 'R001', '2021-02-02', 'Tersedia', 'P0000'),
('B21-003001-002', 'N003', 'D001', 'R001', '2021-02-02', 'Tersedia', 'P0000'),
('B21-003001-003', 'N003', 'D001', 'R001', '2021-02-02', 'Tersedia', 'P0000'),
('B21-003001-004', 'N003', 'D001', 'R001', '2021-02-02', 'Tersedia', 'P0000'),
('B21-004001-001', 'N004', 'D001', 'R001', '2021-02-02', 'Tersedia', 'P0000'),
('B21-005001-001', 'N005', 'D001', 'R001', '2021-02-02', 'Tersedia', 'P0000'),
('B21-005001-002', 'N005', 'D002', 'R001', '2021-02-02', 'Tersedia', 'P0000'),
('B21-006001-001', 'N006', 'D001', 'R001', '2021-02-02', 'Tersedia', 'P0000'),
('B21-007001-001', 'N007', 'D001', 'R001', '2021-02-02', 'Tersedia', 'P0000'),
('B21-008001-001', 'N008', 'D001', 'R001', '2021-02-02', 'Tersedia', 'P0000'),
('B21-009001-001', 'N009', 'D001', 'R001', '2021-02-02', 'Tersedia', 'P0000'),
('B21-010001-001', 'N010', 'D001', 'R001', '2021-02-02', 'Tersedia', 'P0000'),
('B21-010001-002', 'N010', 'D001', 'R001', '2021-02-02', 'Tersedia', 'P0000'),
('B21-010001-003', 'N010', 'D001', 'R001', '2021-02-02', 'Tersedia', 'P0000'),
('B21-010002-001', 'N010', 'D001', 'R002', '2021-02-02', 'Tersedia', 'P0000'),
('B21-010002-002', 'N010', 'D001', 'R002', '2021-02-02', 'Tersedia', 'P0000'),
('B21-010002-003', 'N010', 'D001', 'R002', '2021-02-02', 'Tersedia', 'P0000'),
('B21-010002-004', 'N010', 'D001', 'R002', '2021-02-02', 'Tersedia', 'P0000'),
('B21-010002-005', 'N010', 'D001', 'R002', '2021-02-02', 'Tersedia', 'P0000'),
('B21-010002-006', 'N010', 'D001', 'R002', '2021-02-02', 'Tersedia', 'P0000'),
('B21-010002-007', 'N010', 'D001', 'R002', '2021-02-02', 'Tersedia', 'P0000'),
('B21-010002-008', 'N010', 'D001', 'R002', '2021-02-02', 'Tersedia', 'P0000'),
('B21-010002-009', 'N010', 'D001', 'R002', '2021-02-02', 'Tersedia', 'P0000'),
('B21-010002-010', 'N010', 'D001', 'R002', '2021-02-02', 'Tersedia', 'P0000'),
('B21-010002-011', 'N010', 'D001', 'R002', '2021-02-02', 'Tersedia', 'P0000'),
('B21-010003-001', 'N010', 'D001', 'R003', '2021-02-02', 'Tersedia', 'P0000'),
('B21-010003-002', 'N010', 'D001', 'R003', '2021-02-02', 'Tersedia', 'P0000'),
('B21-010003-003', 'N010', 'D001', 'R003', '2021-02-02', 'Tersedia', 'P0000'),
('B21-010003-004', 'N010', 'D001', 'R003', '2021-02-02', 'Tersedia', 'P0000'),
('B21-010003-005', 'N010', 'D001', 'R003', '2021-02-02', 'Tersedia', 'P0000'),
('B21-010003-006', 'N010', 'D001', 'R003', '2021-02-02', 'Tersedia', 'P0000'),
('B21-010003-007', 'N010', 'D001', 'R003', '2021-02-02', 'Tersedia', 'P0000'),
('B21-010003-008', 'N010', 'D001', 'R003', '2021-02-02', 'Tersedia', 'P0000'),
('B21-010003-009', 'N010', 'D001', 'R003', '2021-02-02', 'Tersedia', 'P0000'),
('B21-010003-010', 'N010', 'D001', 'R003', '2021-02-02', 'Tersedia', 'P0000'),
('B21-010003-011', 'N010', 'D001', 'R003', '2021-02-02', 'Tersedia', 'P0000'),
('B21-011001-001', 'N011', 'D001', 'R001', '2021-02-02', 'Tersedia', 'P0000'),
('B21-012002-001', 'N012', 'D001', 'R002', '2021-02-02', 'Tersedia', 'P0000'),
('B21-012003-001', 'N012', 'D001', 'R003', '2021-02-02', 'Tersedia', 'P0000'),
('B21-013002-001', 'N013', 'D001', 'R002', '2021-02-02', 'Tersedia', 'P0000'),
('B21-013002-002', 'N013', 'D001', 'R002', '2021-02-02', 'Tersedia', 'P0000'),
('B21-013002-003', 'N013', 'D001', 'R002', '2021-02-02', 'Tersedia', 'P0000'),
('B21-013002-004', 'N013', 'D001', 'R002', '2021-02-02', 'Tersedia', 'P0000'),
('B21-013002-005', 'N013', 'D001', 'R002', '2021-02-02', 'Tersedia', 'P0000'),
('B21-013002-006', 'N013', 'D001', 'R002', '2021-02-02', 'Tersedia', 'P0000'),
('B21-013002-007', 'N013', 'D001', 'R002', '2021-02-02', 'Tersedia', 'P0000'),
('B21-013002-008', 'N013', 'D001', 'R002', '2021-02-02', 'Tersedia', 'P0000'),
('B21-013002-009', 'N013', 'D001', 'R002', '2021-02-02', 'Tersedia', 'P0000'),
('B21-013002-010', 'N013', 'D001', 'R002', '2021-02-02', 'Tersedia', 'P0000'),
('B21-013003-001', 'N013', 'D001', 'R003', '2021-02-02', 'Tersedia', 'P0000'),
('B21-013003-002', 'N013', 'D001', 'R003', '2021-02-02', 'Tersedia', 'P0000'),
('B21-016002-001', 'N016', 'D001', 'R002', '2021-02-02', 'Tersedia', 'P0000'),
('B21-016002-002', 'N016', 'D001', 'R002', '2021-02-02', 'Tersedia', 'P0000'),
('B21-016002-003', 'N016', 'D002', 'R002', '2021-02-02', 'Tersedia', 'P0000'),
('B21-017002-001', 'N017', 'D001', 'R002', '2021-02-02', 'Tersedia', 'P0000'),
('B21-018002-001', 'N018', 'D001', 'R002', '2021-02-02', 'Tersedia', 'P0000'),
('B21-018002-002', 'N018', 'D001', 'R002', '2021-02-02', 'Tersedia', 'P0000'),
('B21-018003-001', 'N018', 'D001', 'R003', '2021-02-02', 'Tersedia', 'P0000'),
('B21-018003-002', 'N018', 'D001', 'R003', '2021-02-02', 'Tersedia', 'P0000'),
('B21-018003-003', 'N018', 'D001', 'R003', '2021-02-02', 'Tersedia', 'P0000'),
('B21-018003-004', 'N018', 'D001', 'R003', '2021-02-02', 'Tersedia', 'P0000'),
('B21-019002-001', 'N019', 'D001', 'R002', '2021-02-02', 'Tersedia', 'P0000'),
('B21-019002-002', 'N019', 'D001', 'R002', '2021-02-02', 'Tersedia', 'P0000'),
('B21-019002-003', 'N019', 'D001', 'R002', '2021-02-02', 'Tersedia', 'P0000'),
('B21-019002-004', 'N019', 'D001', 'R002', '2021-02-02', 'Tersedia', 'P0000'),
('B21-019002-005', 'N019', 'D001', 'R002', '2021-02-02', 'Tersedia', 'P0000'),
('B21-019003-001', 'N019', 'D001', 'R003', '2021-02-02', 'Tersedia', 'P0000'),
('B21-019003-002', 'N019', 'D001', 'R003', '2021-02-02', 'Tersedia', 'P0000'),
('B21-020003-001', 'N020', 'D001', 'R003', '2021-02-02', 'Tersedia', 'P0000'),
('B21-020003-002', 'N020', 'D001', 'R003', '2021-02-02', 'Tersedia', 'P0000'),
('B21-020003-003', 'N020', 'D001', 'R003', '2021-02-02', 'Tersedia', 'P0000'),
('B21-020003-004', 'N020', 'D001', 'R003', '2021-02-02', 'Tersedia', 'P0000'),
('B21-020003-005', 'N020', 'D001', 'R003', '2021-02-02', 'Tersedia', 'P0000'),
('B21-020003-006', 'N020', 'D001', 'R003', '2021-02-02', 'Tersedia', 'P0000'),
('B21-021003-001', 'N021', 'D001', 'R003', '2021-02-02', 'Tersedia', 'P0000'),
('B21-021003-002', 'N021', 'D001', 'R003', '2021-02-02', 'Tersedia', 'P0000'),
('B21-021003-003', 'N021', 'D001', 'R003', '2021-02-02', 'Tersedia', 'P0000'),
('B21-021003-004', 'N021', 'D001', 'R003', '2021-02-02', 'Tersedia', 'P0000'),
('B21-021003-005', 'N021', 'D001', 'R003', '2021-02-02', 'Tersedia', 'P0000'),
('B21-021003-006', 'N021', 'D001', 'R003', '2021-02-02', 'Tersedia', 'P0000'),
('B21-021003-007', 'N021', 'D001', 'R003', '2021-02-02', 'Tersedia', 'P0000'),
('B21-021003-008', 'N021', 'D001', 'R003', '2021-02-02', 'Tersedia', 'P0000'),
('B21-021003-009', 'N021', 'D001', 'R003', '2021-02-02', 'Tersedia', 'P0000'),
('B21-022003-001', 'N022', 'D001', 'R003', '2021-02-02', 'Tersedia', 'P0000'),
('B21-022003-002', 'N022', 'D001', 'R003', '2021-02-02', 'Tersedia', 'P0000'),
('B21-022003-003', 'N022', 'D001', 'R003', '2021-02-02', 'Tersedia', 'P0000'),
('B21-022003-004', 'N022', 'D001', 'R003', '2021-02-02', 'Tersedia', 'P0000'),
('B21-023003-001', 'N023', 'D003', 'R003', '2021-02-02', 'Tersedia', 'P0000'),
('B21-024003-001', 'N024', 'D001', 'R003', '2021-02-02', 'Tersedia', 'P0000'),
('B21-025003-001', 'N025', 'D001', 'R003', '2021-02-02', 'Tersedia', 'P0000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kondisi`
--

CREATE TABLE `kondisi` (
  `kd_kondisi` char(4) NOT NULL,
  `kondisi` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kondisi`
--

INSERT INTO `kondisi` (`kd_kondisi`, `kondisi`) VALUES
('D001', 'Baik'),
('D002', 'Rusak Ringan'),
('D003', 'Rusak Berat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nama_barang`
--

CREATE TABLE `nama_barang` (
  `kd_nama` char(4) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `nama_barang`
--

INSERT INTO `nama_barang` (`kd_nama`, `nama`, `stok`) VALUES
('N001', 'Sofa', 2),
('N002', 'Meja', 9),
('N003', 'Rak', 4),
('N004', 'Lemari Kunci', 1),
('N005', 'Lemari Arsip', 2),
('N006', 'AC', 1),
('N007', 'Infocus', 1),
('N008', 'Sound System', 1),
('N009', 'TV 30 Inci', 1),
('N010', 'Kursi', 25),
('N011', 'Printer', 1),
('N012', 'Lemari', 2),
('N013', 'Lampu', 12),
('N014', 'Foto Presiden', 0),
('N015', 'Foto Wakil Presiden', 0),
('N016', 'Komputer', 3),
('N017', 'Gitar Listrik', 1),
('N018', 'Sound', 6),
('N019', 'Amplifier', 7),
('N020', 'Meja Panjang', 6),
('N021', 'Kursi Panjang', 9),
('N022', 'Speaker', 4),
('N023', 'DVD/VCD', 1),
('N024', 'Kulkas', 1),
('N025', 'Papan Tulis', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `kd_role` char(4) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`kd_role`, `role`) VALUES
('R001', 'Petugas'),
('R002', 'Pengawas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruangan`
--

CREATE TABLE `ruangan` (
  `kd_ruang` char(4) NOT NULL,
  `ruang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `ruangan`
--

INSERT INTO `ruangan` (`kd_ruang`, `ruang`) VALUES
('R001', 'Sarana dan Prasarana'),
('R002', 'RPS TAV'),
('R003', 'Teori TAV');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `kd_user` char(5) NOT NULL,
  `username` varchar(30) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(64) NOT NULL,
  `alamat` varchar(128) NOT NULL,
  `aktif` int(1) NOT NULL,
  `tgl_dibuat` int(11) NOT NULL,
  `role` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `kd_user`, `username`, `image`, `password`, `nama`, `email`, `alamat`, `aktif`, `tgl_dibuat`, `role`) VALUES
(1, 'P0000', 'petugas', 'petugas.png', '$2y$10$4C6jPQCcj4Av94BQj9G9C.FvwwiNccIlx3LARsh2.ywV5zlhZgace', 'SMK Angkasa', 'petugas@petugas.com', 'SMK Angkasa 1 Kalijati', 1, 1552120289, 'R001'),
(2, 'U0001', 'wakasek', 'default.jpg', '$2y$10$67IJRfnTCMoQlLzqVmy5kO30q0oQ.lymrbgsQb1vYXgnXWRWutwMq', 'Wakil Kepala Sekolah', 'wakil@kepala.sekolah', 'Cipeundeuy', 1, 1610970920, 'R002'),
(3, 'U0002', 'kepsek_sky', 'default.jpg', '$2y$10$GIyCH/hilVzDiQb4vV6fn.IaGslofLosNLudRoHn69nP5368KLZ7O', 'Kepala Sekolah', 'kepsek@kepsek.com', 'Kalijati', 1, 1610971603, 'R002');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kd_barang`);

--
-- Indeks untuk tabel `kondisi`
--
ALTER TABLE `kondisi`
  ADD PRIMARY KEY (`kd_kondisi`);

--
-- Indeks untuk tabel `nama_barang`
--
ALTER TABLE `nama_barang`
  ADD PRIMARY KEY (`kd_nama`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`kd_role`);

--
-- Indeks untuk tabel `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`kd_ruang`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
