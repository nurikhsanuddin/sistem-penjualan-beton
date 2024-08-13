-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 14, 2024 at 02:45 AM
-- Server version: 10.5.22-MariaDB-cll-lve
-- PHP Version: 8.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prof9244_beton`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(255) DEFAULT NULL,
  `id_kategori` int(11) NOT NULL,
  `harga` int(11) DEFAULT NULL,
  `deskripsi` mediumtext DEFAULT NULL,
  `gambar` text DEFAULT NULL,
  `berat` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`id_barang`, `nama_barang`, `id_kategori`, `harga`, `deskripsi`, `gambar`, `berat`) VALUES
(10, 'B0', 1, 665000, 'Mutu B0', 'scs1.png', 0),
(11, 'K 100', 1, 680000, 'mutu K100 dengan Slum 10±2', 'scs.png', 0),
(12, 'Slum per M3', 2, 25000, 'Penambahan Slump Rp 25.000 / M3\r\n', 'slum.png', 0),
(13, 'Minimix per M3', 2, 100000, 'Pengecoran dengan Minimix Harga tambah Rp. 100.000,-/m3', 'minimix.png', 0),
(14, 'K 125', 1, 695000, 'Slum 10+2', 'scs2.png', 0),
(15, 'K 150', 1, 710000, '-', 'scs4.png', 0),
(16, 'K 175', 1, 725000, '-', 'scs6.png', 0),
(17, 'K 200 / FC 15', 1, 740000, '-', 'scs7.png', 0),
(18, 'K 225', 1, 755000, '-', 'scs8.png', 0),
(19, 'K 250 / FC 20', 1, 770000, '-', 'scs9.png', 0),
(20, 'K 275', 1, 790000, '-', 'scs10.png', 0),
(21, 'K 300 / FC 25', 1, 810000, '-', 'scs11.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gambar`
--

CREATE TABLE `tbl_gambar` (
  `id_gambar` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `ket` varchar(255) DEFAULT NULL,
  `gambar` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_gambar`
--

INSERT INTO `tbl_gambar` (`id_gambar`, `id_barang`, `ket`, `gambar`) VALUES
(27, 8, 'Uniforms', 'logouniforms.jpeg'),
(26, 8, 'Mantap nggih', 'untadlogo.png'),
(29, 9, 'pak luhut', 'opung.jpeg'),
(30, 9, 'ertertrtrt', 'software_kaos.PNG');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Mutu'),
(2, 'Tambahan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelanggan`
--

CREATE TABLE `tbl_pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `foto` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_pelanggan`
--

INSERT INTO `tbl_pelanggan` (`id_pelanggan`, `nama_pelanggan`, `email`, `password`, `foto`) VALUES
(1, 'sianjay', 'sianjay@gmail.com', '1234', NULL),
(2, 'Maman', 'maman@gmail.com', '1234', NULL),
(4, 'Gideon', 'gideon@gmail.com', '12345', NULL),
(5, 'tester', 'tester@gmail.com', 'password', NULL),
(6, 'joki', 'joki@gmail.com', '12345', NULL),
(7, 'ikhsan', 'ikhsan@gmail.com', '12345', NULL),
(8, 'admin', 'admin@gmail.com', '12345', NULL),
(9, 'Naufal', 'mhnaufal2000@gmail.com', 'naufal', NULL),
(10, 'JOKO', 'byu070896@gmail.com', 'radiman07', NULL),
(11, 'JOKO', 'fajarnur390@gmail.com', '12345', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rekening`
--

CREATE TABLE `tbl_rekening` (
  `id_rekening` int(11) NOT NULL,
  `nama_bank` varchar(25) DEFAULT NULL,
  `no_rek` varchar(25) DEFAULT NULL,
  `atas_nama` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_rekening`
--

INSERT INTO `tbl_rekening` (`id_rekening`, `nama_bank`, `no_rek`, `atas_nama`) VALUES
(1, 'BRI', '5434-4382-3434-4345', 'MOH. AGUNG NURSALIM');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rinci_transaksi`
--

CREATE TABLE `tbl_rinci_transaksi` (
  `id_rinci` int(11) NOT NULL,
  `no_order` varchar(25) DEFAULT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_rinci_transaksi`
--

INSERT INTO `tbl_rinci_transaksi` (`id_rinci`, `no_order`, `id_barang`, `qty`) VALUES
(26, '20220623MYH0TZYA', 8, 2),
(27, '20220623VBQA8QGL', 8, 1),
(28, '20220623EZNAYZAQ', 8, 1),
(29, '202206235CDEUAC0', 8, 1),
(30, '20220624M6RYOZUY', 9, 2),
(31, '20220624M6RYOZUY', 8, 1),
(32, '20240512ESOYCVGD', 8, 3),
(33, '20240512PYQTGK04', 8, 1),
(34, '20240512CX3JSTKW', 8, 1),
(35, '20240512ZT7VRRJI', 8, 1),
(36, '20240512GJLIBHNV', 11, 1),
(37, '202405123XSXYSLQ', 10, 1),
(38, '20240512LXYWE2SK', 10, 1),
(39, '20240512X0K1UM9F', 11, 1),
(40, '20240512X0K1UM9F', 10, 1),
(41, '20240512LHLT1MJV', 10, 1),
(42, '20240512VEYRKU35', 11, 1),
(43, '20240512PH1IADMP', 11, 1),
(44, '20240512CG4DDLUB', 11, 4),
(45, '20240512IF8E7U4Z', 11, 4),
(46, '20240512IF8E7U4Z', 10, 2),
(47, '20240513IBJLF5GH', 13, 1),
(48, '20240513IBJLF5GH', 12, 1),
(49, '20240513JUIFZ62Q', 10, 1),
(50, '20240513JUIFZ62Q', 13, 10),
(51, '20240513WNSCHUWK', 11, 1),
(52, '20240513KUITRSWA', 19, 1),
(53, '20240513KUITRSWA', 21, 1),
(54, '20240513QOGM967L', 19, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting`
--

CREATE TABLE `tbl_setting` (
  `id` int(11) NOT NULL,
  `nama_toko` varchar(255) DEFAULT NULL,
  `lokasi` int(11) DEFAULT NULL,
  `alamat_toko` text DEFAULT NULL,
  `no_telpon` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_setting`
--

INSERT INTO `tbl_setting` (`id`, `nama_toko`, `lokasi`, `alamat_toko`, `no_telpon`) VALUES
(1, 'PT. Surya Cakra Sakti', 419, 'Sleman', '085156815391');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi`
--

CREATE TABLE `tbl_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_pelanggan` int(11) DEFAULT NULL,
  `no_order` varchar(25) NOT NULL,
  `tgl_order` date DEFAULT NULL,
  `nama_penerima` varchar(25) DEFAULT NULL,
  `hp_penerima` varchar(15) DEFAULT NULL,
  `provinsi` varchar(25) DEFAULT NULL,
  `kota` varchar(25) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `kode_pos` varchar(8) DEFAULT NULL,
  `expedisi` varchar(255) DEFAULT NULL,
  `paket` varchar(255) DEFAULT NULL,
  `estimasi` varchar(255) DEFAULT NULL,
  `ongkir` int(11) DEFAULT NULL,
  `jarak` varchar(255) DEFAULT NULL,
  `grand_total` int(11) DEFAULT NULL,
  `total_bayar` int(11) DEFAULT NULL,
  `status_bayar` int(11) DEFAULT NULL,
  `bukti_bayar` text DEFAULT NULL,
  `atas_nama` varchar(25) DEFAULT NULL,
  `nama_bank` varchar(25) DEFAULT NULL,
  `no_rek` varchar(25) DEFAULT NULL,
  `status_order` int(11) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_transaksi`
--

INSERT INTO `tbl_transaksi` (`id_transaksi`, `id_pelanggan`, `no_order`, `tgl_order`, `nama_penerima`, `hp_penerima`, `provinsi`, `kota`, `alamat`, `kode_pos`, `expedisi`, `paket`, `estimasi`, `ongkir`, `jarak`, `grand_total`, `total_bayar`, `status_bayar`, `bukti_bayar`, `atas_nama`, `nama_bank`, `no_rek`, `status_order`, `keterangan`) VALUES
(37, 7, '20240512IF8E7U4Z', '2024-05-12', 'Aisyah', '083153175698', 'Banten', 'Lebak', 'Cemani', '57552', NULL, NULL, NULL, 20000, 'jauh', 4050000, 4070000, 1, '230829bfV7WHeshSFvUnyR2T1tDEXjNxAoB5LOqc3iu4rkm8Y0JQwM9gZzKpalG6IC8.jpg', 'Muhammad Nur Ikhsanuddin', 'mandiri', '76576467', 3, ''),
(36, 7, '20240512CG4DDLUB', '2024-05-12', 'Aisyah', '083153175698', 'Jawa Tengah', 'Sukoharjo', 'Cemani', '57552', NULL, NULL, NULL, 20000, 'jauh', 2720000, 2740000, 1, '230829bfV7WHeshSFvUnyR2T1tDEXjNxAoB5LOqc3iu4rkm8Y0JQwM9gZzKpalG6IC7.jpg', 'Muhammad Nur Ikhsanuddin', 'mandiri', '76576467', 3, 'segera di kirim'),
(38, 7, '20240513IBJLF5GH', '2024-05-13', 'Ikhsan', '085165485', 'DI Yogyakarta', 'Sleman', 'Sleman', '25345', NULL, NULL, NULL, 0, 'dekat', 125000, 125000, 1, 'ddddd.jpg', 'Ikhsan', 'Mandiri', '0864354354', 3, ''),
(39, 8, '20240513JUIFZ62Q', '2024-05-13', 'Ikhsan', '085165485', 'DI Yogyakarta', 'Gunung Kidul', 'Sleman', '25345', NULL, NULL, NULL, 20000, 'jauh', 1665000, 1685000, 0, NULL, NULL, NULL, NULL, 0, NULL),
(40, 8, '20240513WNSCHUWK', '2024-05-13', 'Ikhsan', '085165485', 'DI Yogyakarta', 'Bantul', 'Sleman', '25345', NULL, NULL, NULL, 0, 'dekat', 680000, 680000, 0, NULL, NULL, NULL, NULL, 0, NULL),
(41, 8, '20240513KUITRSWA', '2024-05-13', 'Ikhsan', '085165485', 'Bengkulu', 'Bengkulu', 'Sleman', '25345', NULL, NULL, NULL, 20000, 'jauh', 1580000, 1600000, 1, 'slum.png', 'Ikhsan', 'Mandiri', '0864354354', 3, ''),
(42, 9, '20240513QOGM967L', '2024-05-13', 'Ikhsan', '08162636113', 'Jawa Tengah', 'Surakarta (Solo)', 'ajsh', '6@736', NULL, NULL, NULL, 20000, 'jauh', 770000, 790000, 0, NULL, NULL, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(25) DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_user`, `username`, `password`) VALUES
(1, 'Super Admin', 'superadmin', '12345'),
(2, 'Admin ', 'admin', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`id_barang`) USING BTREE;

--
-- Indexes for table `tbl_gambar`
--
ALTER TABLE `tbl_gambar`
  ADD PRIMARY KEY (`id_gambar`) USING BTREE;

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`) USING BTREE;

--
-- Indexes for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`) USING BTREE;

--
-- Indexes for table `tbl_rekening`
--
ALTER TABLE `tbl_rekening`
  ADD PRIMARY KEY (`id_rekening`) USING BTREE;

--
-- Indexes for table `tbl_rinci_transaksi`
--
ALTER TABLE `tbl_rinci_transaksi`
  ADD PRIMARY KEY (`id_rinci`) USING BTREE;

--
-- Indexes for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD PRIMARY KEY (`id_transaksi`) USING BTREE;

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_gambar`
--
ALTER TABLE `tbl_gambar`
  MODIFY `id_gambar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_rekening`
--
ALTER TABLE `tbl_rekening`
  MODIFY `id_rekening` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_rinci_transaksi`
--
ALTER TABLE `tbl_rinci_transaksi`
  MODIFY `id_rinci` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
