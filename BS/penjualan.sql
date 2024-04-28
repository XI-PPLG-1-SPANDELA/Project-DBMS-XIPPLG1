-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Apr 2024 pada 12.07
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
-- Database: `penjualan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `kode_barang` varchar(5) DEFAULT NULL,
  `kode_supplier` varchar(5) DEFAULT NULL,
  `nama_barang` varchar(50) DEFAULT NULL,
  `harga` int(5) DEFAULT NULL,
  `stok` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`kode_barang`, `kode_supplier`, `nama_barang`, `harga`, `stok`) VALUES
('BR 00', 'SP001', 'Buku ', 3000, 50),
('BR 00', 'SP001', 'Bolpo', 2500, 72),
('BR 00', 'SP001', 'Lem', 3500, 28),
('BR 00', 'SP002', 'Pengh', 2000, 35),
('BR 00', 'SP002', 'Buku ', 4000, 45);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `kode_transaksi` varchar(5) DEFAULT NULL,
  `kode_barang` varchar(5) DEFAULT NULL,
  `jumlah` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`kode_transaksi`, `kode_barang`, `jumlah`) VALUES
('T001', 'BR002', 12),
('T001', 'BR005', 1),
('T001', 'BR001', 12),
('T002', 'BR004', 5),
('T002', 'BR003', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_supplier`
--

CREATE TABLE `table_supplier` (
  `kode_supplier` varchar(5) DEFAULT NULL,
  `nama_supplier` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `no_telp` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `table_supplier`
--

INSERT INTO `table_supplier` (`kode_supplier`, `nama_supplier`, `alamat`, `no_telp`) VALUES
('SP001', 'PT. Sumber Ilmu', 'Bandung', '022712455'),
('SP002', 'PT. Uno Stationary', 'Semarang', '024635687');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `kode_transaksi` varchar(5) DEFAULT NULL,
  `tgl_transaksi` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`kode_transaksi`, `tgl_transaksi`) VALUES
('T001', '2022-11-21'),
('T002', '2022-11-21'),
('T003', '2022-11-22');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
