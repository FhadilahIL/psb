-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2020 at 01:22 PM
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
(25, 21, 1, 1605968266),
(26, 22, 1, 1605968723),
(27, 23, 1, 1605969184),
(28, 24, 1, 1605969409),
(29, 25, 1, 1605969482),
(30, 26, 1, 1605970042),
(31, 27, 1, 1605970105),
(32, 28, 1, 1605970353),
(33, 29, 1, 1605970642),
(34, 30, 1, 1605970883),
(35, 31, 1, 1605977890),
(36, 32, 1, 1605978134),
(37, 33, 1, 1605978299);

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
(21, 'Andaria Hibbina Lubna', '', '$2y$10$Vfor5J83j1CI3tj0EO62g.KdkjyYK8fziVopv7TRMjnrW1SWEMBcG', 'default.png', 1, '2020-11-21 21:10:13', 'P', '0085527303', '', '', '', '', '', 'Tangerang', '2008-01-20', 'Islam', 'Tidak', 'Rt. 02 Rw. 02', 'Kp. Setu', 'Buaran', 'Serpong', 'Tangerang Selatan', 'Banten', 'Angkutan Umum', 'Bersama Orang Tua', '', '', 'N', '', 0, 0, 0, 1, '', '0000-00-00 00:00:00', 'Diterima', 'Tunai', ''),
(22, 'Aprillia Susianto Putri', '', '$2y$10$PUOyyrU0InWyE7bYqFOUKuNeBZ6GWFKR.UpNpQkKY.UmD/0UgdDae', 'default.png', 1, '2020-11-21 21:19:36', 'P', '0078066911', '', '', '', '', '3674047004070001', 'Muara Enim', '2008-04-30', 'Islam', 'Tidak', 'Komplek Taman Cendana Indah', 'Pengasinan', 'Pengasinan', 'Gunung Sindur', 'Bogor', 'Jawa Barat', 'Jalan Kaki', 'Bersama Orang Tua', '-1', '', 'N', '', 0, 0, 0, 5, '', '0000-00-00 00:00:00', 'Diterima', 'Tunai', ''),
(23, 'Asty Putri Wulandari Nasution', '', '$2y$10$SfybXXV8Uu5lbyhxIAgjy.1qej3Onz3jAQe2ZOZ3c6M5/X9cXo7Zu', 'default.png', 1, '2020-11-21 21:27:38', 'P', '0075131479', '', '', '', '', '3674056612070008', 'Tangerang', '2007-12-16', 'Islam', 'Tidak', 'Kademangan Rt. 05 / Rw. 02', 'Kademangan', 'Setu', 'Setu', 'Tangerang Selatan', 'Banten', 'Sepeda', 'Bersama Orang Tua', '', '', 'N', '', 0, 0, 0, 0, '', '0000-00-00 00:00:00', 'Diterima', 'Tunai', ''),
(24, 'Azmia Syafitri', '', '$2y$10$YpjwI8wWxDHwTg7t0damiuIfgZFUsGKeaGK39ZLGhXqGudq08g4vC', 'default.png', 1, '2020-11-21 21:33:46', 'P', '0083205853', '', '', '', '', '3674017010080005', 'Tangerang', '2009-09-30', 'Islam', 'Tidak', 'Kp. Ciater Tengah Rt. 08 / Rw. 06', 'Ciater', 'Ciater', 'Serpong', 'Tangerang Selatan', 'Banten', 'Angkutan Umum', 'Bersama Orang Tua', '', '', 'N', '', 0, 0, 0, 0, '', '0000-00-00 00:00:00', 'Diterima', 'Tunai', ''),
(25, 'Calisha Putri Azzahra', '', '$2y$10$o8V3DVZahV2IKueoWdIk6u1iqe4wfQEk/sl8mXJDf/K9OoD3xsKI2', 'default.png', 1, '2020-11-21 21:37:44', 'P', '0088795064', '', '', '', '', '3674016204080001', 'Tangerang', '2008-04-22', 'Islam', 'Tidak', 'Kp. Ciater Barat Rt. 03 / Rw. 01', 'Ciater Barat', 'Ciater', 'Serpong', 'Tangerang Selatan', 'Banten', 'Sepeda Motor', 'Bersama Orang Tua', '', '081806629701', 'N', '', 0, 0, 0, 0, '', '0000-00-00 00:00:00', 'Diterima', 'Tunai', ''),
(26, 'Desika Dwi Nurul Adhania', '', '$2y$10$5T8hSM4z.folBAC8x7ZEZe0eun1865LZ4zvOPUsnaloSGc0CRXqe6', 'default.png', 1, '2020-11-21 21:43:32', 'P', '0073315304', '', '', '', '', '3674017112070002', 'Tangerang', '2007-12-31', 'Islam', 'Tidak', 'Buaran Hankam Kodiklat TNI Rt. 10 / Rw. 03', 'Buaran', 'Buaran', 'Serpong', 'Tangerang Selatan', 'Banten', '', 'Bersama Orang Tua', '', '', 'N', '', 0, 0, 0, 0, '', '0000-00-00 00:00:00', 'Diterima', 'Tunai', ''),
(27, 'Kayla Novita Alfais', '', '$2y$10$DomJmXoWFwnSC/l/.XGbuOa7jivOAInxFoZDcnQjLMj86S0qiiXiq', 'default.png', 1, '2020-11-21 21:48:07', 'P', '0071090935', '', '', '', '', '3674016511070001', 'Tangerang', '2007-11-25', 'Islam', 'Tidak', 'Kp. Gardu Rt. 04 / Rw. 01', 'Buaran Gardu', 'Buaran', 'Serpong', 'Tangerang Selatan', 'Banten', '', 'Bersama Orang Tua', '', '', 'N', '', 0, 0, 0, 0, '', '0000-00-00 00:00:00', 'Diterima', 'Tunai', ''),
(28, 'Keysya Febriana', '', '$2y$10$X8fo/oyM4hz.2p0tY7uw6eJaYaJryBlFN5.6vHWwooeRyElovfN/6', 'default.png', 1, '2020-11-21 21:52:21', 'P', '0082397604', '', '', '', '', '3674014602080003', 'Tangerang', '2008-02-06', 'Islam', 'Tidak', 'Kp. Rawa Macek Rt. 08 / Rw. 03', 'Ciater Barat', 'Ciater', 'Serpong', 'Tangerang Selatan', 'Banten', 'Jalan Kaki', 'Bersama Orang Tua', '', '081807954', 'N', '', 0, 0, 0, 0, '', '0000-00-00 00:00:00', 'Diterima', 'Tunai', ''),
(29, 'Kiki Nurtazkiyah', '', '$2y$10$A.UGdXSew3mkRMGPaW9UsunGwetB1YA.vTeYWqK1FviZ.vYtnmSiC', 'default.png', 1, '2020-11-21 21:57:07', 'P', '0087854836', '', '', '', '', '3674076709080001', 'Tangerang', '2008-09-27', 'Islam', 'Tidak', 'Kp. Sengkol Rt. 03 / Rw. 01', 'Sengkol', 'Muncul', 'Setu', 'Tangerang Selatan', 'Banten', '', '', '', '', 'N', '', 0, 0, 0, 0, '', '0000-00-00 00:00:00', 'Diterima', 'Tunai', ''),
(30, 'Mualifah Rachma Saputra', '', '$2y$10$nCNHkEvViH.YVleqlbk/F.PYTjgVFsj79gO.MmKcuYP9blFMIju02', 'default.png', 1, '2020-11-21 22:01:12', 'L', '0085654614', '', '', '', '', '3674067001080002', 'Tangerang', '2008-01-30', 'Islam', 'Tidak', 'Jl. Beringin 1 Rt. 03 / Rw. 07', 'Pamulang', 'Pamulang Barat', 'Pamulang', 'Tangerang Selatan', 'Banten', 'Jalan Kaki', 'Bersama Orang Tua', '', '089691124842', 'N', '', 0, 0, 0, 0, '', '0000-00-00 00:00:00', 'Diterima', 'Tunai', ''),
(31, 'Nazwa Khoirunissa', '', '$2y$10$5blorH9w2S4N3Pg7gXjJs.TpjXJnly5vNLp8z3AHnYDLO1P3dM9au', 'default.png', 1, '2020-11-21 23:57:45', 'L', '0082768639', '', '', '', '', '3674016803080007', 'Tangerang', '2008-03-28', 'Islam', 'Tidak', 'Kp. Jati Rt. 03 / Rw. 05', 'Kp. Jati', 'Buaran', 'Serpong', 'Tangerang Selatan', 'Banten', 'Jalan Kaki', 'Bersama Orang Tua', '', '', 'N', '', 0, 0, 0, 0, '', '0000-00-00 00:00:00', 'Diterima', 'Tunai', ''),
(32, 'Ramadhani Aliyatuzzulfa', '', '$2y$10$l41gfy76gxnS4hvFo.TxbeaULYeUPhW/BEurWG81nsOzINiYVKF5q', 'default.png', 1, '2020-11-22 00:02:02', 'P', '0081520938', '', '', '', '', '3671066509080013', 'Tangerang', '2008-09-25', 'Islam', 'Tidak', 'Jl. Sukarela Rt. 02 / Rw. 01', 'Paninggilan', 'Paninggilan', 'Ciledug', 'Tangerang Selatan', 'Banten', '', 'Bersama Orang Tua', '', '', 'N', '', 0, 0, 0, 0, '', '0000-00-00 00:00:00', 'Diterima', 'Tunai', ''),
(33, 'Salsa Sabilah', '', '$2y$10$uWoMSZ.bQGaHpAoYkZ4rwuHPSsVTi8zwFa9bTun0nBw0SyE5JzY1y', 'default.png', 1, '2020-11-22 00:04:47', 'P', '0084113411', '', '', '', '', '3602065701080002', 'Lebak', '2008-01-17', 'Islam', 'Tidak', 'Jl. Ampera Hankam Rt. 02 / Rw. 07', 'Buaran', 'Buaran', 'Serpong', 'Tangerang Selatan', 'Banten', 'Jalan Kaki', 'Bersama Orang Tua', '', '085781221061', 'N', '', 0, 0, 0, 0, '', '0000-00-00 00:00:00', 'Diterima', 'Tunai', '');

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
(19, 21, 'Sopyan', '1982-09-21', '-', 'Karyawan Swasta', 'SMA', 3000000, 'Ayah'),
(20, 21, 'Neni Nurhayanih', '1986-11-21', '-', 'Karyawan Swasta', 'SMP', 700000, 'Ibu'),
(21, 22, 'Edi Susianto', '0000-00-00', '-', 'Karyawan Swasta', 'D3', 3000000, 'Ayah'),
(22, 22, 'Marya Ulfa', '0000-00-00', '-', 'Tidak Bekerja', 'SMA', 0, 'Ibu'),
(23, 23, 'Aminuddin Nasution', '0000-00-00', '-', 'Wiraswasta', 'SMA', 1500000, 'Ayah'),
(24, 23, 'Fatimah Lubis', '0000-00-00', '-', 'Tidak Bekerja', 'SMA', 0, 'Ibu'),
(25, 24, 'Siti Saodah', '0000-00-00', 'Ya', '', '', 0, 'Ibu'),
(26, 25, 'Sopiatna', '0000-00-00', '-', 'Karyawan Swasta', 'SMA', 3000000, 'Ayah'),
(27, 25, 'Nurhalimah', '0000-00-00', '-', 'Tidak Bekerja', 'SMA', 0, 'Ibu'),
(28, 26, 'Dwi Prayitno', '0000-00-00', '-', '', '', 0, 'Ayah'),
(29, 26, 'Fitri Setyaningsih', '0000-00-00', '-', '', '', 0, 'Ibu'),
(30, 27, 'Nasad', '0000-00-00', '-', 'SD', 'Karyawan S', 2000000, 'Ayah'),
(31, 27, 'Fatimah', '0000-00-00', '-', '', 'SD', 0, 'Ibu'),
(32, 28, 'Boiran', '0000-00-00', '-', 'Wiraswasta', 'SD', 750000, 'Ayah'),
(33, 28, 'Sri Rahayu', '0000-00-00', '-', '', 'SD', 0, 'Ibu'),
(34, 29, 'Munah', '0000-00-00', 'Ya', '', '', 0, 'Ibu'),
(35, 30, 'Cecep Saputra', '0000-00-00', '-', 'Karyawan Swasta', 'SMA', 3000000, 'Ayah'),
(36, 30, 'Rachmatika', '0000-00-00', '-', '', 'SMA', 0, 'Ibu'),
(37, 31, 'Udi', '0000-00-00', '-', 'Karyawan Swasta', 'SMA', 1500000, 'Ayah'),
(38, 31, 'Hamidah', '0000-00-00', '-', '', 'SMA', 0, 'Ibu'),
(39, 32, 'Dianan Sari', '0000-00-00', 'Ya', '', '', 0, 'Ibu'),
(40, 33, 'Aliyudin', '0000-00-00', '-', 'Wiraswasta', 'SMP', 750000, 'Ayah'),
(41, 33, 'Eti', '0000-00-00', '-', '', 'SMP', 0, 'Ibu');

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
(11, 21, 1, 45, 73, 7.6, 'Lulus'),
(12, 22, 1, 46, 94, 8.37, 'Lulus'),
(13, 23, 1, 43, 86, 7.93, 'Lulus'),
(14, 24, 1, 39, 74, 7.29, 'Lulus'),
(15, 25, 1, 37, 78, 7.3, 'Lulus'),
(16, 26, 1, 34, 86, 7.35, 'Lulus'),
(17, 27, 1, 43, 83, 7.83, 'Lulus'),
(18, 28, 1, 38, 92, 7.81, 'Lulus'),
(19, 29, 1, 37, 83, 7.46, 'Lulus'),
(20, 30, 1, 46, 86, 8.11, 'Lulus'),
(21, 31, 1, 30, 95, 7.31, 'Lulus'),
(22, 32, 1, 32, 97, 7.52, 'Lulus'),
(23, 33, 1, 46, 86, 8.11, 'Lulus');

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
(1, 'SMP TAZKIA INSANI', 'Kp. Cibarengkok, Kel. Pengasinan, Kec. Gunung Sindur, Bogor', 'Sekolah yang didirikan di dalam pesantren Daarut Tazkia', 'ee50e539b97770e2097fb6b7fe3303d4.png', 'Sutisna, S.E.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan et viverra justo commodo. Proin sodales pulvinar sic tempor. Sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam fermentum, nulla luctus pharetra vulputate, felis tellus mollis orci, sed rhoncus pronin sapien nunc accuan eget.', '8a474aade082653cb9b5717751246bf8.jpg');

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
(1, '1999-01-08', 'Muhammad Ilham Fhadilah', 'ilhammahier@gmail.com', '$2y$10$A9dmtiJ3Jw8LuZFHFgg3zOcR.zlq/5v1dnZPU8VJIAu4CRzdztwqG', '7c66f1519984602702f0cdb082df935b.jpg');

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
(1, '2020 / 2021', '2020-01-15', '2020-02-15', '2020-03-15', 50, 13);

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
  MODIFY `id_beasiswa_pendaftar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_pembayaran`
--
ALTER TABLE `tb_pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tb_pendaftar`
--
ALTER TABLE `tb_pendaftar`
  MODIFY `id_pendaftar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tb_pengasuh_pendaftar`
--
ALTER TABLE `tb_pengasuh_pendaftar`
  MODIFY `id_pengasuh_pendaftar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tb_penilaian`
--
ALTER TABLE `tb_penilaian`
  MODIFY `id_penilaian_pendaftar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tb_prestasi_pendaftar`
--
ALTER TABLE `tb_prestasi_pendaftar`
  MODIFY `id_prestasi_pendaftar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

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
