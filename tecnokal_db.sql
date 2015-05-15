-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 30, 2015 at 04:03 PM
-- Server version: 5.5.40-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tecnokal_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('b614b8be2b6f6a802212dd4e9274a6d5', '202.46.3.46', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.90 Safari/537.36', 1430380260, 'a:7:{s:9:"user_data";s:0:"";s:9:"logged_in";s:13:"aingLoginYeuh";s:8:"username";s:4:"adit";s:12:"nama_lengkap";s:18:"Aditya Nursyahbani";s:4:"foto";s:24:"IMG_20130609_0016011.jpg";s:8:"id_level";s:2:"01";s:3:"nip";s:18:"198803272014021001";}');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `id_level` varchar(20) NOT NULL,
  `blokir` enum('Y','N') NOT NULL DEFAULT 'N',
  `foto` varchar(50) NOT NULL,
  `nip` varchar(100) DEFAULT NULL,
  `wp_code` char(16) NOT NULL,
  `hp` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`username`, `password`, `nama_lengkap`, `id_level`, `blokir`, `foto`, `nip`, `wp_code`, `hp`, `email`) VALUES
('achmad', '202cb962ac59075b964b07152d234b70', 'Achmad Zatnika', '03', 'N', '', '', 'WP5.1', '', ''),
('adit', '486b6c6b267bc61677367eb6b6458764', 'Aditya Nursyahbani', '01', 'N', 'IMG_20130609_0016011.jpg', '198803272014021001', 'WP-2.1.0', '08561500166', 'gudhel@aditya-nursyahbani.com'),
('arie', '202cb962ac59075b964b07152d234b70', 'Arie Rahman Hakim', '03', 'N', '', '', 'WP5.2', '', ''),
('bhinukti', '202cb962ac59075b964b07152d234b70', 'Bhinukti P. Nugroho', '03', 'N', '', '', 'WP4.2', '', ''),
('deddy', '202cb962ac59075b964b07152d234b70', 'Deddy Yaniharto', '03', 'N', '', '', 'WP1.1', '', ''),
('dimas', '202cb962ac59075b964b07152d234b70', 'Dimas Januar Rizki', '03', 'N', '', '', 'WP3.3', '', ''),
('heri', '202cb962ac59075b964b07152d234b70', 'Heri Purwoto', '03', 'N', '', '', 'WP2.2', '', ''),
('indra', '202cb962ac59075b964b07152d234b70', 'Indra Rusyadi', '03', 'N', '', '', 'WP6.2', '', ''),
('jusuf', '202cb962ac59075b964b07152d234b70', 'M. Jusuf Jafar', '03', 'N', '', '', 'WP2.1', '', ''),
('mamung', '4b57f7de9a81af1ccc4f0eddfd4c9d6b', 'Slamet Aji Pamungkas', '01', 'N', 'child_06.jpg', '680003184', 'WP-2.1.0', '08121306718', 'mamung_sap@yahoo.com'),
('noko', '202cb962ac59075b964b07152d234b70', 'Noko Sudarisman', '03', 'N', '', '', 'WP6.1', '', ''),
('pamungkas', '202cb962ac59075b964b07152d234b70', 'Slamet Aji Pamungkas', '03', 'N', '', '', 'WP8.1', '', ''),
('ratu', '202cb962ac59075b964b07152d234b70', 'Ratu Sili Aliah', '03', 'N', '', '', 'WP1.2', '', ''),
('rohayati', '202cb962ac59075b964b07152d234b70', 'Rohayati', '03', 'N', '', '', 'WP7.2', '', ''),
('romli', '202cb962ac59075b964b07152d234b70', 'Romli', '03', 'N', '', '', 'WP4.1', '', ''),
('subagyo', '202cb962ac59075b964b07152d234b70', 'Y. Subagyo', '03', 'N', '', '', 'WP3.2', '', ''),
('suhendri', '827ccb0eea8a706c4c34a16891f84e7b', 'Dedi Suhendri', '01', 'N', '', '', 'APM.1', '', ''),
('tanto', '839bf59995cd3c79fd9d4b499ecae9c6', 'Hartanto Kurniawan', '01', 'N', 'heck.PNG', '1001115', 'WP-2.0.1', '', ''),
('taufik', '202cb962ac59075b964b07152d234b70', 'Mochamad Taufik', '03', 'N', '', '', 'WP8.2', '', ''),
('unik', '202cb962ac59075b964b07152d234b70', 'Unik Setiawati', '03', 'N', '', '', 'WP7.1', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_agenda`
--

CREATE TABLE IF NOT EXISTS `tbl_agenda` (
  `agenda_id` int(10) NOT NULL AUTO_INCREMENT,
  `agenda_code` char(16) NOT NULL,
  `agenda_name` varchar(200) NOT NULL,
  `agenda_desc` text NOT NULL,
  `agenda_mulai` date NOT NULL,
  `agenda_akhir` date NOT NULL,
  `agenda_lokasi` varchar(200) NOT NULL,
  `mitra_code` char(16) NOT NULL,
  `nip` char(16) NOT NULL,
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`agenda_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `tbl_agenda`
--

INSERT INTO `tbl_agenda` (`agenda_id`, `agenda_code`, `agenda_name`, `agenda_desc`, `agenda_mulai`, `agenda_akhir`, `agenda_lokasi`, `mitra_code`, `nip`, `username`) VALUES
(21, 'AG00000001', 'Pertemuan dengan Kepala Dinas Kominfo dan Informatika Pekalongan', 'Membahas tentang materi Perjanjian Kerja Sama (PKS)', '2015-03-18', '2015-03-20', 'Kantor Diskominfo Pekalongan', 'MT00000002', '1001111', 'tanto'),
(22, 'AG00000002', 'Persiapan Kickoff Meeting Techopark Pekalongan', 'Rapat persiapan kickoff meeting technopark kota Pekalongan. \nHarap para GL mempersiapkan presentasi.', '2015-03-25', '2015-03-26', 'Ruang Komisi Gedung BPPT 2', 'MT00000002', '', 'deddy'),
(23, 'AG00000003', 'Kickoff Meeting dan Penanda tanganan PKS', 'Rapat dalam rangka kick off meeting Technopark Kota Pekalongan dan penanda tangan Perjanjian Kerja Sama (PKS) dengan mitra.', '2015-04-02', '2015-04-02', 'Kota Pekalongan', 'MT00000001', '1988032720140210', 'adit'),
(28, 'AG00000007', 'Sosialisasi Aplikasi Kolaborasi antar KomponenTechno Park', 'Sosialisasi Aplikasi Kolaborasi antar KomponenTechno Park terhadap komponen pelaksana Techno Park di kota Pekalongan.\n', '2015-05-11', '2015-05-13', 'Diskominfo Pekalongan', 'MT00000002', '680003184', 'mamung'),
(29, 'AG00000008', 'Survei Kebutuhan', 'Survei Kebutuhan KMS di Diskominfo', '2015-05-11', '2015-05-13', 'Diskominf Kota Pekalongan', 'MT00000002', '1988032720140210', 'adit');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chat`
--

CREATE TABLE IF NOT EXISTS `tbl_chat` (
  `id_chat` int(99) NOT NULL AUTO_INCREMENT,
  `user` varchar(20) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pesan` text NOT NULL,
  PRIMARY KEY (`id_chat`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `tbl_chat`
--

INSERT INTO `tbl_chat` (`id_chat`, `user`, `waktu`, `pesan`) VALUES
(22, 'pamungkas', '2015-03-24 11:57:44', 'Mohon info, rapat jadinya di ruang apa?'),
(23, 'dedi', '2015-03-24 11:59:58', 'Di gedug 2 BPPT pak'),
(24, 'mamung', '2015-03-24 12:08:18', 'Terima kasih infonya pak :P'),
(25, 'dharmawan', '2015-03-24 12:29:51', 'Harap membawa draft PKS'),
(26, 'tanto', '2015-04-18 04:05:46', 'tes'),
(27, 'adit', '2015-04-20 07:46:35', 'Tes chatting. PING!'),
(28, 'deddy', '2015-04-22 06:00:25', 'Haloooo');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dokumen`
--

CREATE TABLE IF NOT EXISTS `tbl_dokumen` (
  `dok_id` int(10) NOT NULL AUTO_INCREMENT,
  `dok_code` char(16) NOT NULL,
  `dok_judul` varchar(100) NOT NULL,
  `dok_desc` text NOT NULL,
  `username` varchar(50) NOT NULL,
  `status` char(3) NOT NULL,
  PRIMARY KEY (`dok_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_dokumen`
--

INSERT INTO `tbl_dokumen` (`dok_id`, `dok_code`, `dok_judul`, `dok_desc`, `username`, `status`) VALUES
(1, 'DO00000002', 'BERISI PRESENTASI APLIKASI KOLABORASI TECHNOPARK PEKALONGAN', 'Dengan perkembangan teknologi web saat ini, banyak konten maupun dokumen yang tersebar dimana-mana. Untuk itu diperlukan semacam aplikasi yang dapat mengatur rapi semuanya dan juga menyimpan keaslian konten. Setelah terorganisir, kalangan profesional di dunia bisnis maupun pengguna yang bersifat pribadi, menginginkan akses terhadap konten yang juga mudah dicari, terutama dapat dilakukan melalui beberapa perangkat seperti ponsel pintar, tablet, desktop, dan laptop.\n\nTim Ipteknet menyediakan aplikasi yang berfokus untuk menunjang produktivitas dengan menyediakan solusi kolaborasi dari semua perangkat, baik ponsel pintar maupun desktop, dan mendukung jenis pengguna dari kalangan pengguna biasa sampai taraf pengguna kelas bisnis. Aplikasi ini memungkinkan pengguna untuk menyatukan dan mengatur, terus berbagi konten digital. Technokal seolah-olah seperti sebuah map untuk menyimpan dokumen supaya teratur. Kemudian, menyimpannya seperti sebuah rak buku yang tersusun rapi dengan berbasis cloud (awan).\n\n', 'adit', 'U');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dok_status`
--

CREATE TABLE IF NOT EXISTS `tbl_dok_status` (
  `id_status` int(16) NOT NULL AUTO_INCREMENT,
  `code_status` char(16) NOT NULL,
  `nm_status` varchar(50) NOT NULL,
  PRIMARY KEY (`id_status`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_dok_status`
--

INSERT INTO `tbl_dok_status` (`id_status`, `code_status`, `nm_status`) VALUES
(1, 'U', 'Umum'),
(2, 'R', 'Rahasia');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_icon`
--

CREATE TABLE IF NOT EXISTS `tbl_icon` (
  `icon_id` int(10) NOT NULL AUTO_INCREMENT,
  `icon_name` varchar(30) NOT NULL,
  PRIMARY KEY (`icon_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `tbl_icon`
--

INSERT INTO `tbl_icon` (`icon_id`, `icon_name`) VALUES
(1, 'icon-adjust'),
(2, 'icon-asterisk'),
(3, 'icon-ban-circle'),
(4, 'icon-bar-chart'),
(5, 'icon-barcode'),
(6, 'icon-beaker'),
(7, 'icon-beer'),
(8, 'icon-bell'),
(9, 'icon-bell-alt'),
(10, 'icon-bolt'),
(11, 'icon-book'),
(12, 'icon-bookmark'),
(13, 'icon-bookmark-empty'),
(14, 'icon-briefcase'),
(15, 'icon-bullhorn'),
(16, 'icon-calendar'),
(17, 'icon-camera'),
(18, 'icon-camera-retro'),
(19, 'icon-certificate'),
(20, 'icon-check'),
(21, 'icon-check_empty'),
(22, 'icon-circle'),
(23, 'icon-circle-blank'),
(24, 'icon-cloud'),
(25, 'icon-cloud-download'),
(26, 'icon-cloud-upload'),
(27, 'icon-coffee'),
(28, 'icon-cog'),
(29, 'icon-cogs'),
(30, 'icon-comment'),
(31, 'icon-comment-alt'),
(32, 'icon-comments'),
(33, 'icon-comments-alt'),
(34, 'icon-credit-card'),
(35, 'icon-dashboard'),
(36, 'icon-desktop'),
(37, 'icon-dowload'),
(38, 'icon-download-alt'),
(39, 'icon-edit');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lampiran`
--

CREATE TABLE IF NOT EXISTS `tbl_lampiran` (
  `lampiran_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `lampiran_nama` text,
  `lampiran_size` int(11) DEFAULT NULL,
  `lampiran_ext` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`lampiran_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `tbl_lampiran`
--

INSERT INTO `tbl_lampiran` (`lampiran_id`, `lampiran_nama`, `lampiran_size`, `lampiran_ext`) VALUES
(4, NULL, NULL, NULL),
(5, NULL, NULL, NULL),
(6, NULL, NULL, NULL),
(7, 'Dami5_Analisis-Asosiasi.pdf', 232864, 'pdf'),
(19, 'Dami6_Analisis-Asosiasi-2.pdf', 160053, 'pdf'),
(20, 'Dami6_Analisis-Asosiasi-291.pdf', 160053, 'pdf'),
(21, 'Dami5_Analisis-Asosiasi22.pdf', 232864, 'pdf'),
(22, 'Dami4_Advanced-Classification1.pdf', 568869, 'pdf'),
(23, 'full-text-search-sphinx-php.pdf', 1076055, 'pdf'),
(24, 'Middleton-Baeza.pdf', 290612, 'pdf'),
(25, 'simpus-beta (ujicoba_satu).pdf', 72513, 'pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lampiran_agenda`
--

CREATE TABLE IF NOT EXISTS `tbl_lampiran_agenda` (
  `lampiran_agenda_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `agenda_code` char(20) NOT NULL,
  `lampiran_id` bigint(20) NOT NULL,
  PRIMARY KEY (`lampiran_agenda_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tbl_lampiran_agenda`
--

INSERT INTO `tbl_lampiran_agenda` (`lampiran_agenda_id`, `agenda_code`, `lampiran_id`) VALUES
(2, 'AG00000009', 2),
(6, 'AG00000009', 22),
(7, 'AG00000008', 23),
(8, 'AG00000008', 24);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lampiran_dokumen`
--

CREATE TABLE IF NOT EXISTS `tbl_lampiran_dokumen` (
  `lampiran_dokumen_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dok_code` char(20) NOT NULL,
  `lampiran_id` bigint(20) NOT NULL,
  PRIMARY KEY (`lampiran_dokumen_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tbl_lampiran_dokumen`
--

INSERT INTO `tbl_lampiran_dokumen` (`lampiran_dokumen_id`, `dok_code`, `lampiran_id`) VALUES
(2, 'DO00000002', 9),
(3, 'DO00000002', 10),
(4, 'DO00000002', 12),
(5, 'DO00000002', 13),
(6, 'DO00000002', 14),
(7, 'DO00000002', 15),
(10, 'DO00000002', 25);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_level`
--

CREATE TABLE IF NOT EXISTS `tbl_level` (
  `id_level` char(2) NOT NULL,
  `level` char(30) NOT NULL,
  PRIMARY KEY (`id_level`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_level`
--

INSERT INTO `tbl_level` (`id_level`, `level`) VALUES
('01', 'Super Admin'),
('02', 'Admin'),
('03', 'User');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mitra`
--

CREATE TABLE IF NOT EXISTS `tbl_mitra` (
  `mitra_id` int(10) NOT NULL AUTO_INCREMENT,
  `mitra_code` char(16) NOT NULL,
  `mitra_name` varchar(100) NOT NULL,
  `mitra_addr` varchar(200) NOT NULL,
  `mitra_telp` varchar(200) NOT NULL,
  `mitra_email` varchar(200) NOT NULL,
  `mitra_desc` text NOT NULL,
  `mitra_cp` varchar(100) NOT NULL,
  `stkk_code` char(16) NOT NULL,
  PRIMARY KEY (`mitra_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbl_mitra`
--

INSERT INTO `tbl_mitra` (`mitra_id`, `mitra_code`, `mitra_name`, `mitra_addr`, `mitra_telp`, `mitra_email`, `mitra_desc`, `mitra_cp`, `stkk_code`) VALUES
(5, 'MT00000002', 'Dinas Komunikasi dan Informatika Kota Pekalongan', 'Jl. Majapahit No. 5 Kota Pekalongan', '', '', '', '', 'STKK-01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stkk`
--

CREATE TABLE IF NOT EXISTS `tbl_stkk` (
  `stkk_id` int(10) NOT NULL AUTO_INCREMENT,
  `stkk_code` char(16) NOT NULL,
  `stkk_name` varchar(200) NOT NULL,
  `wp_code` char(16) NOT NULL,
  `stkk_desc` text NOT NULL,
  `nm_kp` varchar(100) NOT NULL,
  `nm_pm` varchar(100) NOT NULL,
  `nm_ce` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`stkk_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tbl_stkk`
--

INSERT INTO `tbl_stkk` (`stkk_id`, `stkk_code`, `stkk_name`, `wp_code`, `stkk_desc`, `nm_kp`, `nm_pm`, `nm_ce`, `username`) VALUES
(9, 'STKK-01', 'Techno Park Perikanan Pekalongan', '', 'Merupakan Technopark yang menfokuskan dalam bidang perikanan di kota Pekalongan', 'Dharmawan', 'Ign. Subagyo', 'Dedi Suhendri', 'deddy');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_topik`
--

CREATE TABLE IF NOT EXISTS `tbl_topik` (
  `topik_id` int(99) NOT NULL AUTO_INCREMENT,
  `topik_code` char(16) NOT NULL,
  `topik_title` varchar(100) NOT NULL,
  `kategori_id` varchar(50) NOT NULL,
  `topik_post` text NOT NULL,
  `topik_image` varchar(100) NOT NULL,
  `post_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`topik_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_topik_reply`
--

CREATE TABLE IF NOT EXISTS `tbl_topik_reply` (
  `reply_id` int(99) NOT NULL AUTO_INCREMENT,
  `reply_code` char(16) NOT NULL,
  `reply_title` varchar(100) NOT NULL,
  `reply_post` text NOT NULL,
  `reply_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`reply_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tugas`
--

CREATE TABLE IF NOT EXISTS `tbl_tugas` (
  `tugas_id` int(16) NOT NULL AUTO_INCREMENT,
  `tugas_code` char(16) NOT NULL,
  `tugas_name` varchar(200) NOT NULL,
  `icon_id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`tugas_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `tbl_tugas`
--

INSERT INTO `tbl_tugas` (`tugas_id`, `tugas_code`, `tugas_name`, `icon_id`, `username`) VALUES
(14, 'TU000000003', 'Membeli peralatan jaringan', 4, 'admin'),
(15, 'TU000000004', 'Buat manual book aplikasi siimeral', 11, 'admin'),
(16, 'TU000000005', 'Laporan pajak', 10, 'admin'),
(17, 'TU000000006', 'Berkas SPPT belum ketemu', 15, 'tanto'),
(18, 'TU000000007', 'Membuat manual book', 11, 'admin'),
(19, 'TU000000008', 'Target laporan 1 Mei 2015', 2, 'deddy');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wbs`
--

CREATE TABLE IF NOT EXISTS `tbl_wbs` (
  `wbs_id` int(10) NOT NULL AUTO_INCREMENT,
  `wbs_code` char(16) NOT NULL,
  `wbs_name` varchar(200) NOT NULL,
  `wbs_desc` text NOT NULL,
  `username` varchar(50) NOT NULL,
  `stkk_code` char(16) NOT NULL,
  PRIMARY KEY (`wbs_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `tbl_wbs`
--

INSERT INTO `tbl_wbs` (`wbs_id`, `wbs_code`, `wbs_name`, `wbs_desc`, `username`, `stkk_code`) VALUES
(13, 'WBS1.0', 'Pengembangan dan Pemasyarakatan Budidaya Ikan Nila Unggul dan IMTA Berbasis SATO UMI', 'Pengembangan dan Pemasyarakatan Budidaya Ikan Nila Unggul dan IMTA Berbasis SATO UMI', '', 'STKK-01'),
(14, 'WBS2.0', 'Penerapan Teknologi Hasil Perikanan', 'Penerapan Teknologi Hasil Perikanan', '', 'STKK-01'),
(15, 'WBS3.0', 'Pengembangan Ekosistem Inovasi', 'Pengembangan Ekosistem Inovasi', '', 'STKK-01'),
(16, 'WBS4.0', 'Peningkatan Daya Saing Industrial', 'Peningkatan Daya Saing Industrial', '', 'STKK-01'),
(17, 'WBS5.0', 'Pengembangan Kapasitas Inovasi', 'Pengembangan Kapasitas Inovasi', '', 'STKK-01'),
(18, 'WBS6.0', 'Pengembangan UKM Inovatif', 'Pengembangan UKM Inovatif', '', 'STKK-01'),
(19, 'WBS7.0', 'Peningkatan Pemenuhan Kebutuhan Dasar', 'Peningkatan Pemenuhan Kebutuhan Dasar', '', 'STKK-01'),
(20, 'WBS8.0', 'Pengembangan Knowledge Management', 'Pengembangan Knowledge Management', '', 'STKK-01'),
(21, 'KP', 'Kepala Program/ Program Director (PD)', 'Kepala Program/ Program Director (PD)', 'mamung', 'STKK-01'),
(22, 'CE', 'Insinyur Kepala/ Chief Engineer (CE)', 'Insinyur Kepala/ Chief Engineer (CE)', '', 'STKK-01'),
(23, 'PM', 'Manajer Program/ Program Manager (PM)', 'Manajer Program/ Program Manager (PM)', 'adit', 'STKK-01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wbs_240415`
--

CREATE TABLE IF NOT EXISTS `tbl_wbs_240415` (
  `wbs_id` int(10) NOT NULL AUTO_INCREMENT,
  `wbs_code` char(16) NOT NULL,
  `wbs_name` varchar(200) NOT NULL,
  `wbs_desc` text NOT NULL,
  `username` varchar(50) NOT NULL,
  `stkk_code` char(16) NOT NULL,
  PRIMARY KEY (`wbs_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `tbl_wbs_240415`
--

INSERT INTO `tbl_wbs_240415` (`wbs_id`, `wbs_code`, `wbs_name`, `wbs_desc`, `username`, `stkk_code`) VALUES
(13, 'WBS1.0', 'Pengembangan dan Pemasyarakatan Budidaya Ikan Nila Unggul dan IMTA Berbasis SATO UMI', 'Pengembangan dan Pemasyarakatan Budidaya Ikan Nila Unggul dan IMTA Berbasis SATO UMI', '', 'STKK-01'),
(14, 'WBS2.0', 'Penerapan Teknologi Hasil Perikanan', 'Penerapan Teknologi Hasil Perikanan', 'achmad', 'STKK-01'),
(15, 'WBS3.0', 'Pengembangan Ekosistem Inovasi', 'Pengembangan Ekosistem Inovasi', 'Erwina Widjajanti', 'STKK-01'),
(16, 'WBS4.0', 'Peningkatan Daya Saing Industrial', 'Peningkatan Daya Saing Industrial', 'Koento H. Baiquni', 'STKK-01'),
(17, 'WBS5.0', 'Pengembangan Kapasitas Inovasi', 'Pengembangan Kapasitas Inovasi', 'Wisman Indra Angkasa', 'STKK-01'),
(18, 'WBS6.0', 'Pengembangan UKM Inovatif', 'Pengembangan UKM Inovatif', 'Suryo Hadiyono', 'STKK-01'),
(19, 'WBS7.0', 'Peningkatan Pemenuhan Kebutuhan Dasar', 'Peningkatan Pemenuhan Kebutuhan Dasar', 'Edy Rahardjo', 'STKK-01'),
(20, 'WBS8.0', 'Pengembangan Knowledge Management', 'Pengembangan Knowledge Management', 'Fauzie Dahmir', 'STKK-01'),
(21, 'KP', 'Kepala Program/ Program Director (PD)', 'Kepala Program/ Program Director (PD)', 'mamung', 'STKK-01'),
(22, 'CE', 'Insinyur Kepala/ Chief Engineer (CE)', 'Insinyur Kepala/ Chief Engineer (CE)', 'Ign. Subagio', 'STKK-01'),
(23, 'PM', 'Manajer Program/ Program Manager (PM)', 'Manajer Program/ Program Manager (PM)', 'achmad', 'STKK-01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wp`
--

CREATE TABLE IF NOT EXISTS `tbl_wp` (
  `wp_id` int(10) NOT NULL AUTO_INCREMENT,
  `wp_code` char(16) NOT NULL,
  `wp_name` varchar(200) NOT NULL,
  `wp_desc` text NOT NULL,
  `wbs_code` char(16) NOT NULL,
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`wp_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `tbl_wp`
--

INSERT INTO `tbl_wp` (`wp_id`, `wp_code`, `wp_name`, `wp_desc`, `wbs_code`, `username`) VALUES
(22, 'APM.2', 'Asisten PM (2)', 'Asisten PM (2)', 'PM', 'Betro Welfi'),
(23, 'ACE', 'Asisten CE ', 'Asisten CE ', 'CE', 'Noorish Heldini'),
(24, 'APM.1', 'Asisten PM (1)', 'Asisten PM (1)', 'PM', 'Nugraheni Setiastuti'),
(25, 'WP1.1', 'Pengembangan dan Pemasyarakatan Teknologi Budidaya Ikan Nila Unggul Berbasis SATO UMI', 'Pengembangan dan Pemasyarakatan Teknologi Budidaya Ikan Nila Unggul Berbasis SATO UMI', 'WBS1.0', 'Deddy Yaniharto'),
(26, 'WP1.2', 'Pengemangan dan Pemasyarakatan Sistem Budidaya Perikanan Terintegrasi Multi Tropik IMTA Berbasis Konsep SATO UMI', 'Pengemangan dan Pemasyarakatan Sistem Budidaya Perikanan Terintegrasi Multi Tropik IMTA Berbasis Konsep SATO UMI', 'WBS1.0', 'Ratu Siti Aliah'),
(27, 'WP2.1', 'Peningkatan Teknologi Pengolahan Hasil Perikanan', 'Peningkatan Teknologi Pengolahan Hasil Perikanan', 'WBS2.0', 'M. Jusuf Jafar'),
(28, 'WP2.2', 'Peningkatan Mutu Hasil Perikanan', 'Peningkatan Mutu Hasil Perikanan', 'WBS2.0', 'Heri Purwoto'),
(29, 'WP3.1', 'Penguatan Kebiajakan dan Kelembagaan Inovasi', 'Penguatan Kebiajakan dan Kelembagaan Inovasi', 'WBS3.0', 'Alkadri'),
(30, 'WP3.2', 'Pengembangan Kemitraan dan Budidaya Inovasi', 'Pengembangan Kemitraan dan Budidaya Inovasi', 'WBS3.0', 'Y. Subagyo'),
(31, 'WP3.3', 'Pengembangan Keterpaduan dan Green Development', 'Pengembangan Keterpaduan dan Green Development', 'WBS3.0', 'Dimas Januar Rizki'),
(32, 'WP4.1', 'Pengembangan Klaster Industri Perikanan Budidaya', 'Pengembangan Klaster Industri Perikanan Budidaya', 'WBS4.0', 'bhinukti'),
(33, 'WP4.2', 'Pengembangan Klaster Industri Pengolahan Hasil Perikanan dan Pemasaran', 'Pengembangan Klaster Industri Pengolahan Hasil Perikanan dan Pemasaran', 'WBS4.0', 'Bhinukti P. Nugroho'),
(34, 'WP5.1', 'Pengembangan Infrasturktur Techno Park', 'Pengembangan Infrasturktur Technopark', 'WBS5.0', 'Achmad Zatnika'),
(35, 'WP5.2', 'Peningkatan Kapasitas Litbangyasa dan IKM', 'Peningkatan Kapasitas Litbangyasa dan IKM', 'WBS5.0', 'Arie Rakhman Hakim'),
(36, 'WP6.1', 'Pengembangan Kelembagaan dan Manajemen Pusat Inovasi', 'Pengembangan Kelembagaan dan Manajemen Pusat Inovasi', 'WBS6.0', 'Noko Sudarisman'),
(37, 'WP6.2', 'Inkubasi dan Peningkatan Kapasitas Produk UKM Perikanan', 'Inkubasi dan Peningkatan Kapasitas Produk UKM Perikanan', 'WBS6.0', 'Indra Rusyadi'),
(38, 'WP7.1', 'Perancangan Energi', 'Perancangan Energi', 'WBS7.0', 'Unik Setiawati'),
(39, 'WP7.2', 'Pengelolaan Lingkungan', 'Pengelolaan Lingkungan', 'WBS7.0', 'bhinukti'),
(40, 'WP8.1', 'Pengembangan Web Knowledge Management', 'Pengembangan Web Knowledge Management', 'WBS8.0', 'Slamet Aji Pamungkas'),
(41, 'WP8.2', 'Pengembangan Mobile Knowledge Management', 'Pengembangan Mobile Knowledge Management', 'WBS8.0', 'Mochamad Taufik');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wp_240415`
--

CREATE TABLE IF NOT EXISTS `tbl_wp_240415` (
  `wp_id` int(10) NOT NULL AUTO_INCREMENT,
  `wp_code` char(16) NOT NULL,
  `wp_name` varchar(200) NOT NULL,
  `wp_desc` text NOT NULL,
  `wbs_code` char(16) NOT NULL,
  `nm_leader` varchar(100) NOT NULL,
  PRIMARY KEY (`wp_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `tbl_wp_240415`
--

INSERT INTO `tbl_wp_240415` (`wp_id`, `wp_code`, `wp_name`, `wp_desc`, `wbs_code`, `nm_leader`) VALUES
(22, 'APM.2', 'Asisten PM (2)', 'Asisten PM (2)', 'PM', 'Betro Welfi'),
(23, 'ACE', 'Asisten CE ', 'Asisten CE ', 'CE', 'Noorish Heldini'),
(24, 'APM.1', 'Asisten PM (1)', 'Asisten PM (1)', 'PM', 'Nugraheni Setiastuti'),
(25, 'WP1.1', 'Pengembangan dan Pemasyarakatan Teknologi Budidaya Ikan Nila Unggul Berbasis SATO UMI', 'Pengembangan dan Pemasyarakatan Teknologi Budidaya Ikan Nila Unggul Berbasis SATO UMI', 'WBS1.0', 'Deddy Yaniharto'),
(26, 'WP1.2', 'Pengemangan dan Pemasyarakatan Sistem Budidaya Perikanan Terintegrasi Multi Tropik IMTA Berbasis Konsep SATO UMI', 'Pengemangan dan Pemasyarakatan Sistem Budidaya Perikanan Terintegrasi Multi Tropik IMTA Berbasis Konsep SATO UMI', 'WBS1.0', 'Ratu Siti Aliah'),
(27, 'WP2.1', 'Peningkatan Teknologi Pengolahan Hasil Perikanan', 'Peningkatan Teknologi Pengolahan Hasil Perikanan', 'WBS2.0', 'M. Jusuf Jafar'),
(28, 'WP2.2', 'Peningkatan Mutu Hasil Perikanan', 'Peningkatan Mutu Hasil Perikanan', 'WBS2.0', 'Heri Purwoto'),
(29, 'WP3.1', 'Penguatan Kebiajakan dan Kelembagaan Inovasi', 'Penguatan Kebiajakan dan Kelembagaan Inovasi', 'WBS3.0', 'Alkadri'),
(30, 'WP3.2', 'Pengembangan Kemitraan dan Budidaya Inovasi', 'Pengembangan Kemitraan dan Budidaya Inovasi', 'WBS3.0', 'Y. Subagyo'),
(31, 'WP3.3', 'Pengembangan Keterpaduan dan Green Development', 'Pengembangan Keterpaduan dan Green Development', 'WBS3.0', 'Dimas Januar Rizki'),
(32, 'WP4.1', 'Pengembangan Klaster Industri Perikanan Budidaya', 'Pengembangan Klaster Industri Perikanan Budidaya', 'WBS4.0', 'Romli'),
(33, 'WP4.2', 'Pengembangan Klaster Industri Pengolahan Hasil Perikanan dan Pemasaran', 'Pengembangan Klaster Industri Pengolahan Hasil Perikanan dan Pemasaran', 'WBS4.0', 'Bhinukti P. Nugroho'),
(34, 'WP5.1', 'Pengembangan Infrasturktur Techno Park', 'Pengembangan Infrasturktur Technopark', 'WBS5.0', 'Achmad Zatnika'),
(35, 'WP5.2', 'Peningkatan Kapasitas Litbangyasa dan IKM', 'Peningkatan Kapasitas Litbangyasa dan IKM', 'WBS5.0', 'Arie Rakhman Hakim'),
(36, 'WP6.1', 'Pengembangan Kelembagaan dan Manajemen Pusat Inovasi', 'Pengembangan Kelembagaan dan Manajemen Pusat Inovasi', 'WBS6.0', 'Noko Sudarisman'),
(37, 'WP6.2', 'Inkubasi dan Peningkatan Kapasitas Produk UKM Perikanan', 'Inkubasi dan Peningkatan Kapasitas Produk UKM Perikanan', 'WBS6.0', 'Indra Rusyadi'),
(38, 'WP7.1', 'Perancangan Energi', 'Perancangan Energi', 'WBS7.0', 'Unik Setiawati'),
(39, 'WP7.2', 'Pengelolaan Lingkungan', 'Pengelolaan Lingkungan', 'WBS7.0', 'Rohayati'),
(40, 'WP8.1', 'Pengembangan Web Knowledge Management', 'Pengembangan Web Knowledge Management', 'WBS8.0', 'Slamet Aji Pamungkas'),
(41, 'WP8.2', 'Pengembangan Mobile Knowledge Management', 'Pengembangan Mobile Knowledge Management', 'WBS8.0', 'Mochamad Taufik');

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_agenda`
--
CREATE TABLE IF NOT EXISTS `v_agenda` (
`agenda_id` int(10)
,`agenda_code` char(16)
,`agenda_name` varchar(200)
,`agenda_desc` text
,`agenda_mulai` date
,`agenda_akhir` date
,`agenda_lokasi` varchar(200)
,`mitra_name` varchar(100)
,`nama_lengkap` varchar(100)
,`nip` varchar(100)
,`tlp` varchar(100)
,`lampiran_agenda` text
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `v_dokumen`
--
CREATE TABLE IF NOT EXISTS `v_dokumen` (
`dok_id` int(10)
,`dok_code` char(16)
,`dok_judul` varchar(100)
,`dok_desc` text
,`status` char(3)
,`nama_lengkap` varchar(100)
,`nip` varchar(100)
,`lampiran_dokumen` text
);
-- --------------------------------------------------------

--
-- Structure for view `v_agenda`
--
DROP TABLE IF EXISTS `v_agenda`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_agenda` AS select `a`.`agenda_id` AS `agenda_id`,`a`.`agenda_code` AS `agenda_code`,`a`.`agenda_name` AS `agenda_name`,`a`.`agenda_desc` AS `agenda_desc`,`a`.`agenda_mulai` AS `agenda_mulai`,`a`.`agenda_akhir` AS `agenda_akhir`,`a`.`agenda_lokasi` AS `agenda_lokasi`,`m`.`mitra_name` AS `mitra_name`,`ad`.`nama_lengkap` AS `nama_lengkap`,`ad`.`nip` AS `nip`,`ad`.`hp` AS `tlp`,group_concat(distinct `l`.`lampiran_nama` separator ',') AS `lampiran_agenda` from ((((`tbl_agenda` `a` left join `tbl_mitra` `m` on((`a`.`mitra_code` = `m`.`mitra_code`))) left join `tbl_admin` `ad` on((`a`.`username` = `ad`.`username`))) left join `tbl_lampiran_agenda` `la` on((`a`.`agenda_code` = `la`.`agenda_code`))) left join `tbl_lampiran` `l` on((`la`.`lampiran_id` = `l`.`lampiran_id`))) group by `a`.`agenda_id`;

-- --------------------------------------------------------

--
-- Structure for view `v_dokumen`
--
DROP TABLE IF EXISTS `v_dokumen`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_dokumen` AS select `d`.`dok_id` AS `dok_id`,`d`.`dok_code` AS `dok_code`,`d`.`dok_judul` AS `dok_judul`,`d`.`dok_desc` AS `dok_desc`,`d`.`status` AS `status`,`a`.`nama_lengkap` AS `nama_lengkap`,`a`.`nip` AS `nip`,group_concat(distinct `l`.`lampiran_nama` separator ',') AS `lampiran_dokumen` from (((`tbl_dokumen` `d` left join `tbl_admin` `a` on((`d`.`username` = `a`.`username`))) join `tbl_lampiran_dokumen` `ld` on((`d`.`dok_code` = `ld`.`dok_code`))) left join `tbl_lampiran` `l` on((`ld`.`lampiran_id` = `l`.`lampiran_id`))) group by `d`.`dok_id`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
