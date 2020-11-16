-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2020 at 02:44 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_psb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_beasiswa_pendaftar`
--

CREATE TABLE `tb_beasiswa_pendaftar` (
  `id_beasiswa_pendaftar` int(11) NOT NULL,
  `id_pendaftar` int(11) NOT NULL,
  `nama_beasiswa` text NOT NULL,
  `jenis_beasiswa` varchar(30) NOT NULL,
  `penyelenggara` varchar(30) NOT NULL,
  `tahun_mulai` year(4) NOT NULL,
  `tahun_selesai` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_beasiswa_pendaftar`
--

INSERT INTO `tb_beasiswa_pendaftar` (`id_beasiswa_pendaftar`, `id_pendaftar`, `nama_beasiswa`, `jenis_beasiswa`, `penyelenggara`, `tahun_mulai`, `tahun_selesai`) VALUES
(11, 12, 'ee', 'jj', 'gg', 2019, 2021);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pembayaran`
--

CREATE TABLE `tb_pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_pendaftar` int(11) NOT NULL,
  `id_staff` int(11) NOT NULL,
  `no_reg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pembayaran`
--

INSERT INTO `tb_pembayaran` (`id_pembayaran`, `id_pendaftar`, `id_staff`, `no_reg`) VALUES
(19, 12, 1, 1605532963),
(20, 13, 1, 1605533990);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pendaftar`
--

CREATE TABLE `tb_pendaftar` (
  `id_pendaftar` int(11) NOT NULL,
  `nama_pendaftar` varchar(50) NOT NULL,
  `email_pendaftar` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `foto` text NOT NULL,
  `id_tahun_ajaran` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `jenis_kelamin` varchar(1) NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `nis` varchar(15) NOT NULL,
  `no_ijazah` varchar(15) NOT NULL,
  `no_skhun` varchar(15) NOT NULL,
  `no_un` varchar(21) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `agama` varchar(10) NOT NULL,
  `berkebutuhan_khusus` text NOT NULL,
  `alamat` text NOT NULL,
  `dusun` text NOT NULL,
  `kelurahan` varchar(30) NOT NULL,
  `kecamatan` varchar(30) NOT NULL,
  `kota` varchar(30) NOT NULL,
  `provinsi` varchar(30) NOT NULL,
  `transportasi` text NOT NULL,
  `jenis_tinggal` text NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `kps` varchar(1) NOT NULL,
  `no_kps` varchar(16) NOT NULL,
  `tinggi_badan` int(11) NOT NULL,
  `jarak` int(11) NOT NULL,
  `waktu` int(11) NOT NULL,
  `jumlah_saudara_kandung` int(11) NOT NULL,
  `bukti_upload` text NOT NULL,
  `upload_time` datetime NOT NULL,
  `status_pembayaran` varchar(20) NOT NULL,
  `keterangan_pembayaran` varchar(15) NOT NULL,
  `berkas` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pendaftar`
--

INSERT INTO `tb_pendaftar` (`id_pendaftar`, `nama_pendaftar`, `email_pendaftar`, `password`, `foto`, `id_tahun_ajaran`, `date_created`, `jenis_kelamin`, `nisn`, `nis`, `no_ijazah`, `no_skhun`, `no_un`, `nik`, `tempat_lahir`, `tanggal_lahir`, `agama`, `berkebutuhan_khusus`, `alamat`, `dusun`, `kelurahan`, `kecamatan`, `kota`, `provinsi`, `transportasi`, `jenis_tinggal`, `no_telp`, `no_hp`, `kps`, `no_kps`, `tinggi_badan`, `jarak`, `waktu`, `jumlah_saudara_kandung`, `bukti_upload`, `upload_time`, `status_pembayaran`, `keterangan_pembayaran`, `berkas`) VALUES
(12, 'Putri Nadella', 'putri@gmail.com', '$2y$10$hcvUbDto7H8d.Cq73QRzt.HM9lA6xGKc27llHP.k0q5R/kK6oXQn2', '57976202aa93df0e91a8cc99436653c8.jpg', 1, '2020-11-16 17:38:59', 'L', '9989132722', '', 'DN30-1001', 'DN30-1002', '', '', 'Tangerang Selatan', '2009-01-02', 'Islam', 'Tidak', 'Serang', 'Kp. Setu', 'Buaran', 'Serpong', 'Tangerang Selatan', 'Banten', '', '', '', '', 'N', '', 0, 0, 0, 0, 'd827cb5160ceb578a83d3ed1abad18d3.jpg', '2020-11-16 20:21:45', 'Diterima', 'Non Tunai', 'Berkas_9989132722.pdf'),
(13, 'Pendaftar 1', '', '$2y$10$g2i9/U6UAChMJMQQNn/x6e4NBGXwVwbn9tkddr2xZzPHoAR6tSDrW', 'default.png', 1, '2020-11-16 20:39:39', '', '9989776622', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '', '0000-00-00 00:00:00', 'Diterima', 'Tunai', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengasuh_pendaftar`
--

CREATE TABLE `tb_pengasuh_pendaftar` (
  `id_pengasuh_pendaftar` int(11) NOT NULL,
  `id_pendaftar` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `berkebutuhan_khusus` text NOT NULL,
  `pekerjaan` varchar(30) NOT NULL,
  `pendidikan` varchar(10) NOT NULL,
  `penghasilan` int(11) NOT NULL,
  `keterangan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pengasuh_pendaftar`
--

INSERT INTO `tb_pengasuh_pendaftar` (`id_pengasuh_pendaftar`, `id_pendaftar`, `nama`, `tanggal_lahir`, `berkebutuhan_khusus`, `pekerjaan`, `pendidikan`, `penghasilan`, `keterangan`) VALUES
(13, 12, 'Ewas', '1984-12-31', 'Ya', 'IRT', 'SLTA', 0, 'Ibu');

-- --------------------------------------------------------

--
-- Table structure for table `tb_penilaian`
--

CREATE TABLE `tb_penilaian` (
  `id_penilaian_pendaftar` int(11) NOT NULL,
  `id_pendaftar` int(11) NOT NULL,
  `id_tahun_ajaran` int(11) NOT NULL,
  `pilihan_ganda_benar` int(11) NOT NULL,
  `nilai_btq` int(11) NOT NULL,
  `score_penilaian` double NOT NULL,
  `keterangan_kelulusan` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_penilaian`
--

INSERT INTO `tb_penilaian` (`id_penilaian_pendaftar`, `id_pendaftar`, `id_tahun_ajaran`, `pilihan_ganda_benar`, `nilai_btq`, `score_penilaian`, `keterangan_kelulusan`) VALUES
(9, 12, 1, 25, 100, 59.54, 'Lulus'),
(10, 13, 1, 25, 80, 40.46, 'Tidak Lulus');

-- --------------------------------------------------------

--
-- Table structure for table `tb_prestasi_pendaftar`
--

CREATE TABLE `tb_prestasi_pendaftar` (
  `id_prestasi_pendaftar` int(11) NOT NULL,
  `id_pendaftar` int(11) NOT NULL,
  `jenis_prestasi` varchar(30) NOT NULL,
  `tingkat` varchar(25) NOT NULL,
  `nama_prestasi` varchar(30) NOT NULL,
  `tahun` year(4) NOT NULL,
  `penyelenggara` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_prestasi_pendaftar`
--

INSERT INTO `tb_prestasi_pendaftar` (`id_prestasi_pendaftar`, `id_pendaftar`, `jenis_prestasi`, `tingkat`, `nama_prestasi`, `tahun`, `penyelenggara`) VALUES
(27, 12, 'bb', 'cc', 'aa', 2020, 'Wali Kota'),
(28, 12, 'bbb', 'ccc', 'aaa', 2020, 'Presiden');

-- --------------------------------------------------------

--
-- Table structure for table `tb_profile_sekolah`
--

CREATE TABLE `tb_profile_sekolah` (
  `id_sekolah` int(11) NOT NULL,
  `nama_sekolah` varchar(50) NOT NULL,
  `alamat_sekolah` text NOT NULL,
  `deskripsi_sekolah` text NOT NULL,
  `logo_sekolah` text NOT NULL,
  `kepala_sekolah` varchar(50) NOT NULL,
  `sambutan_kepala_sekolah` text NOT NULL,
  `foto_kepala_sekolah` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_profile_sekolah`
--

INSERT INTO `tb_profile_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `deskripsi_sekolah`, `logo_sekolah`, `kepala_sekolah`, `sambutan_kepala_sekolah`, `foto_kepala_sekolah`) VALUES
(1, 'SMP TAZKIA INSANI', 'Kp. Cibarengkok, Kel. Pengasinan, Kec. Gunung Sindur, Bogor', 'Sekolah yang didirikan di dalam pesantren Daarut Tazkia', 'ee50e539b97770e2097fb6b7fe3303d4.png', 'Sutisna, S.E.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan et viverra justo commodo. Proin sodales pulvinar sic tempor. Sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam fermentum, nulla luctus pharetra vulputate, felis tellus mollis orci, sed rhoncus pronin sapien nunc accuan eget.', '51616edfaba39d433b9b79fe19861a23.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_staff`
--

CREATE TABLE `tb_staff` (
  `id_staff` int(11) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `nama_staff` varchar(50) NOT NULL,
  `email_staff` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_staff`
--

INSERT INTO `tb_staff` (`id_staff`, `tanggal_lahir`, `nama_staff`, `email_staff`, `password`, `foto`) VALUES
(1, '1999-01-08', 'Muhammad Ilham Fhadilah', 'ilhammahier@gmail.com', '$2y$10$A9dmtiJ3Jw8LuZFHFgg3zOcR.zlq/5v1dnZPU8VJIAu4CRzdztwqG', 'a6eda5264bdbfe4262a120d9a806f398.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tahun_ajaran`
--

CREATE TABLE `tb_tahun_ajaran` (
  `id_tahun_ajaran` int(11) NOT NULL,
  `tahun_ajaran` varchar(20) NOT NULL,
  `tanggal_pembukaan_pendaftaran` date NOT NULL,
  `tanggal_penutup_pendaftaran` date NOT NULL,
  `tanggal_pengumuman` date NOT NULL,
  `jumlah_pilihan_ganda` int(3) NOT NULL,
  `jumlah_pendaftar_lulus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_tahun_ajaran`
--

INSERT INTO `tb_tahun_ajaran` (`id_tahun_ajaran`, `tahun_ajaran`, `tanggal_pembukaan_pendaftaran`, `tanggal_penutup_pendaftaran`, `tanggal_pengumuman`, `jumlah_pilihan_ganda`, `jumlah_pendaftar_lulus`) VALUES
(1, '2021 / 2022', '2020-10-09', '2020-11-20', '2020-11-21', 25, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_beasiswa_pendaftar`
--
ALTER TABLE `tb_beasiswa_pendaftar`
  ADD PRIMARY KEY (`id_beasiswa_pendaftar`),
  ADD KEY `id_pendaftar` (`id_pendaftar`);

--
-- Indexes for table `tb_pembayaran`
--
ALTER TABLE `tb_pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `id_pendafar` (`id_pendaftar`),
  ADD KEY `id_staff` (`id_staff`);

--
-- Indexes for table `tb_pendaftar`
--
ALTER TABLE `tb_pendaftar`
  ADD PRIMARY KEY (`id_pendaftar`),
  ADD KEY `id_tahun_ajaran` (`id_tahun_ajaran`);

--
-- Indexes for table `tb_pengasuh_pendaftar`
--
ALTER TABLE `tb_pengasuh_pendaftar`
  ADD PRIMARY KEY (`id_pengasuh_pendaftar`),
  ADD KEY `id_pendaftar` (`id_pendaftar`);

--
-- Indexes for table `tb_penilaian`
--
ALTER TABLE `tb_penilaian`
  ADD PRIMARY KEY (`id_penilaian_pendaftar`),
  ADD KEY `id_pendaftar` (`id_pendaftar`),
  ADD KEY `id_tahun_ajaran` (`id_tahun_ajaran`);

--
-- Indexes for table `tb_prestasi_pendaftar`
--
ALTER TABLE `tb_prestasi_pendaftar`
  ADD PRIMARY KEY (`id_prestasi_pendaftar`),
  ADD KEY `id_pendaftar` (`id_pendaftar`);

--
-- Indexes for table `tb_profile_sekolah`
--
ALTER TABLE `tb_profile_sekolah`
  ADD PRIMARY KEY (`id_sekolah`);

--
-- Indexes for table `tb_staff`
--
ALTER TABLE `tb_staff`
  ADD PRIMARY KEY (`id_staff`);

--
-- Indexes for table `tb_tahun_ajaran`
--
ALTER TABLE `tb_tahun_ajaran`
  ADD PRIMARY KEY (`id_tahun_ajaran`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_beasiswa_pendaftar`
--
ALTER TABLE `tb_beasiswa_pendaftar`
  MODIFY `id_beasiswa_pendaftar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_pembayaran`
--
ALTER TABLE `tb_pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tb_pendaftar`
--
ALTER TABLE `tb_pendaftar`
  MODIFY `id_pendaftar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_pengasuh_pendaftar`
--
ALTER TABLE `tb_pengasuh_pendaftar`
  MODIFY `id_pengasuh_pendaftar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_penilaian`
--
ALTER TABLE `tb_penilaian`
  MODIFY `id_penilaian_pendaftar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_prestasi_pendaftar`
--
ALTER TABLE `tb_prestasi_pendaftar`
  MODIFY `id_prestasi_pendaftar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tb_profile_sekolah`
--
ALTER TABLE `tb_profile_sekolah`
  MODIFY `id_sekolah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_staff`
--
ALTER TABLE `tb_staff`
  MODIFY `id_staff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_tahun_ajaran`
--
ALTER TABLE `tb_tahun_ajaran`
  MODIFY `id_tahun_ajaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_beasiswa_pendaftar`
--
ALTER TABLE `tb_beasiswa_pendaftar`
  ADD CONSTRAINT `tb_beasiswa_pendaftar_ibfk_1` FOREIGN KEY (`id_pendaftar`) REFERENCES `tb_pendaftar` (`id_pendaftar`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_pembayaran`
--
ALTER TABLE `tb_pembayaran`
  ADD CONSTRAINT `tb_pembayaran_ibfk_3` FOREIGN KEY (`id_pendaftar`) REFERENCES `tb_pendaftar` (`id_pendaftar`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_pembayaran_ibfk_4` FOREIGN KEY (`id_staff`) REFERENCES `tb_staff` (`id_staff`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_pendaftar`
--
ALTER TABLE `tb_pendaftar`
  ADD CONSTRAINT `tb_pendaftar_ibfk_1` FOREIGN KEY (`id_tahun_ajaran`) REFERENCES `tb_tahun_ajaran` (`id_tahun_ajaran`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_pengasuh_pendaftar`
--
ALTER TABLE `tb_pengasuh_pendaftar`
  ADD CONSTRAINT `tb_pengasuh_pendaftar_ibfk_1` FOREIGN KEY (`id_pendaftar`) REFERENCES `tb_pendaftar` (`id_pendaftar`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_penilaian`
--
ALTER TABLE `tb_penilaian`
  ADD CONSTRAINT `tb_penilaian_ibfk_1` FOREIGN KEY (`id_pendaftar`) REFERENCES `tb_pendaftar` (`id_pendaftar`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_penilaian_ibfk_2` FOREIGN KEY (`id_tahun_ajaran`) REFERENCES `tb_tahun_ajaran` (`id_tahun_ajaran`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_prestasi_pendaftar`
--
ALTER TABLE `tb_prestasi_pendaftar`
  ADD CONSTRAINT `tb_prestasi_pendaftar_ibfk_1` FOREIGN KEY (`id_pendaftar`) REFERENCES `tb_pendaftar` (`id_pendaftar`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
