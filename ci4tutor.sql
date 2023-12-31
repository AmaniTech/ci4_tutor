-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Apr 2022 pada 16.18
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
-- Database: `ci4tutor`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `komik`
--

CREATE TABLE `komik` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `komik`
--

INSERT INTO `komik` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(1, 'Naruto', 'naruto', 'Masashi Kishimoto', 'Shonen Jump', 'naruto.jpg', '2022-03-06 14:01:42', '2022-03-12 18:56:22'),
(2, 'One Piece', 'one-piece', 'Eichiro ', 'Gramedia', 'onepiece.jpg', '2022-03-06 14:01:42', '2022-03-12 18:53:24'),
(12, 'coba ', 'coba', 'waddwa', 'awdawd', '', '2022-03-17 17:50:40', '2022-03-18 04:07:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2022-03-19-060849', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1647670877, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orang`
--

CREATE TABLE `orang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `orang`
--

INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Gawati Queen Wahyuni S.Sos', 'Ds. Umalas No. 786, Padang 20823, Kepri', '2001-05-12 03:13:25', '2022-03-19 02:23:55'),
(2, 'Cawisadi Prasetya', 'Kpg. B.Agam 1 No. 890, Pekanbaru 33759, Kalsel', '2008-11-29 09:08:56', '2022-03-19 02:23:55'),
(3, 'Janet Handayani', 'Jln. Basoka Raya No. 113, Samarinda 56380, Sulteng', '2000-01-31 06:56:25', '2022-03-19 02:23:55'),
(4, 'Jagapati Gandi Anggriawan S.IP', 'Gg. Yogyakarta No. 996, Salatiga 29089, DIY', '2011-01-04 15:33:36', '2022-03-19 02:23:55'),
(5, 'Adhiarja Widodo', 'Dk. Ekonomi No. 187, Bontang 31296, Jateng', '1990-11-20 05:52:29', '2022-03-19 02:23:55'),
(6, 'Maida Febi Astuti', 'Psr. Dipatiukur No. 211, Pangkal Pinang 31414, Papua', '2011-08-23 21:53:32', '2022-03-19 02:23:55'),
(7, 'Agnes Oktaviani', 'Ki. Labu No. 666, Salatiga 59958, Jateng', '2001-06-25 13:24:00', '2022-03-19 02:23:55'),
(8, 'Ismail Saptono', 'Gg. Tubagus Ismail No. 416, Palembang 34665, Gorontalo', '1993-06-21 08:25:28', '2022-03-19 02:23:55'),
(9, 'Candrakanta Harjaya Megantara S.T.', 'Ds. Pacuan Kuda No. 137, Depok 33041, Bengkulu', '1984-01-29 00:17:28', '2022-03-19 02:23:55'),
(10, 'Praba Firmansyah S.IP', 'Jln. Bazuka Raya No. 708, Bima 11716, DKI', '1975-12-06 03:25:20', '2022-03-19 02:23:55'),
(11, 'Maida Sakura Mardhiyah M.Pd', 'Kpg. BKR No. 628, Padangpanjang 85021, Banten', '2016-04-06 14:07:36', '2022-03-19 02:23:55'),
(12, 'Ciaobella Riyanti', 'Psr. Laswi No. 229, Palembang 78036, Riau', '2013-11-01 21:49:58', '2022-03-19 02:23:55'),
(13, 'Zizi Halimah', 'Dk. Dipatiukur No. 372, Bitung 79440, Sulteng', '1992-10-01 06:15:11', '2022-03-19 02:23:55'),
(14, 'Hafshah Haryanti', 'Jln. Ters. Kiaracondong No. 847, Pekanbaru 55755, Kalteng', '1998-08-11 12:49:06', '2022-03-19 02:23:56'),
(15, 'Tira Nadine Purwanti', 'Ki. Pelajar Pejuang 45 No. 400, Kediri 90100, Sulbar', '2015-11-07 18:39:33', '2022-03-19 02:23:56'),
(16, 'Nilam Yuni Nasyidah', 'Dk. Madrasah No. 55, Yogyakarta 10407, Gorontalo', '2000-08-23 21:01:59', '2022-03-19 02:23:56'),
(17, 'Putri Siti Padmasari', 'Jr. Baladewa No. 753, Denpasar 82773, Pabar', '2017-05-12 09:16:55', '2022-03-19 02:23:56'),
(18, 'Julia Mila Yuliarti M.TI.', 'Ki. Baik No. 215, Cirebon 44972, Sulbar', '1971-07-04 01:37:27', '2022-03-19 02:23:56'),
(19, 'Tantri Purnawati M.M.', 'Ki. Padang No. 89, Bukittinggi 87529, Malut', '2018-08-11 02:07:31', '2022-03-19 02:23:56'),
(20, 'Luthfi Tedi Gunawan S.E.', 'Ki. Dipatiukur No. 614, Mataram 33581, Kalteng', '2001-09-22 12:03:50', '2022-03-19 02:23:56'),
(21, 'Najwa Yolanda', 'Kpg. Kali No. 382, Lhokseumawe 98979, Sulbar', '2013-03-16 07:33:15', '2022-03-19 02:23:56'),
(22, 'Puti Fujiati M.Pd', 'Psr. Cikutra Timur No. 54, Lubuklinggau 65317, Kalteng', '1981-04-20 12:17:15', '2022-03-19 02:23:56'),
(23, 'Ellis Farida', 'Kpg. Tambak No. 373, Banda Aceh 72504, Maluku', '1974-09-25 01:59:14', '2022-03-19 02:23:56'),
(24, 'Hartana Gunawan', 'Ki. Cokroaminoto No. 381, Prabumulih 44553, Sulteng', '1994-10-31 09:17:42', '2022-03-19 02:23:56'),
(25, 'Marwata Firgantoro', 'Jr. Panjaitan No. 624, Ternate 67331, Papua', '1975-04-21 03:23:04', '2022-03-19 02:23:56'),
(26, 'Balamantri Kurniawan', 'Kpg. Arifin No. 356, Samarinda 97026, Papua', '1986-07-21 21:24:12', '2022-03-19 02:23:56'),
(27, 'Kanda Lega Saefullah S.Gz', 'Psr. Sutan Syahrir No. 651, Prabumulih 40868, Kepri', '1976-12-30 02:25:48', '2022-03-19 02:23:56'),
(28, 'Mursinin Cemplunk Hidayanto', 'Ki. Badak No. 372, Lubuklinggau 14129, Maluku', '1975-08-30 19:39:53', '2022-03-19 02:23:56'),
(29, 'Rachel Permata', 'Psr. Haji No. 553, Kupang 60888, Sumut', '2018-11-14 10:05:35', '2022-03-19 02:23:56'),
(30, 'Wage Radit Habibi S.Pd', 'Jln. Tambak No. 593, Bandung 55238, Kalsel', '1981-08-28 16:49:36', '2022-03-19 02:23:57'),
(31, 'Siska Agustina', 'Jr. Babadan No. 513, Tangerang Selatan 55103, Bali', '2015-05-26 18:36:43', '2022-03-19 02:23:57'),
(32, 'Sarah Nuraini M.Pd', 'Ds. Gedebage Selatan No. 349, Kupang 64658, Papua', '1978-12-06 19:54:33', '2022-03-19 02:23:57'),
(33, 'Farah Silvia Safitri S.H.', 'Ki. Kebonjati No. 52, Administrasi Jakarta Barat 96301, NTB', '1986-02-26 08:04:27', '2022-03-19 02:23:57'),
(34, 'Nardi Prayoga S.I.Kom', 'Jr. Jayawijaya No. 820, Pariaman 39915, Kaltim', '1982-03-02 08:50:35', '2022-03-19 02:23:57'),
(35, 'Mila Belinda Andriani S.I.Kom', 'Dk. Panjaitan No. 338, Kotamobagu 71021, Papua', '1995-05-23 01:55:28', '2022-03-19 02:23:57'),
(36, 'Kemba Haryanto S.IP', 'Psr. Aceh No. 482, Gorontalo 19703, Babel', '2013-05-30 04:15:45', '2022-03-19 02:23:57'),
(37, 'Nadia Ella Halimah S.I.Kom', 'Jln. Rajawali No. 463, Denpasar 11461, Babel', '1978-04-08 05:42:18', '2022-03-19 02:23:57'),
(38, 'Siti Maria Kusmawati M.Kom.', 'Ds. Bak Air No. 22, Payakumbuh 43241, NTT', '1993-03-02 20:52:25', '2022-03-19 02:23:57'),
(39, 'Queen Winarsih S.Ked', 'Gg. Ir. H. Juanda No. 553, Balikpapan 34277, Kalbar', '1988-06-24 13:38:02', '2022-03-19 02:23:57'),
(40, 'Dariati Maulana', 'Ds. Ters. Buah Batu No. 8, Surakarta 18483, Kalsel', '2005-12-03 23:51:53', '2022-03-19 02:23:57'),
(41, 'Maras Manullang S.Sos', 'Dk. Bara No. 61, Gorontalo 58166, Sumut', '1991-01-04 03:47:38', '2022-03-19 02:23:57'),
(42, 'Hafshah Hastuti S.T.', 'Ki. Gajah No. 829, Lubuklinggau 75179, Gorontalo', '2000-04-02 14:07:28', '2022-03-19 02:23:57'),
(43, 'Dina Hassanah', 'Dk. Baung No. 944, Banjar 75712, Jambi', '2017-03-06 08:46:18', '2022-03-19 02:23:57'),
(44, 'Galuh Mahmud Jailani S.IP', 'Kpg. Baabur Royan No. 247, Salatiga 76990, Aceh', '2008-07-11 10:24:10', '2022-03-19 02:23:57'),
(45, 'Respati Kuncara Nugroho', 'Psr. Bahagia  No. 407, Pasuruan 42639, NTB', '1990-05-17 13:35:08', '2022-03-19 02:23:57'),
(46, 'Kamaria Prastuti', 'Ki. Pasirkoja No. 191, Administrasi Jakarta Utara 66210, Papua', '1983-05-01 20:06:31', '2022-03-19 02:23:57'),
(47, 'Prabu Pangestu', 'Kpg. Babadan No. 931, Surabaya 53426, Sumut', '2012-04-16 08:06:05', '2022-03-19 02:23:57'),
(48, 'Yuni Mayasari', 'Psr. Gambang No. 770, Ternate 92954, Sumut', '1994-09-07 00:47:14', '2022-03-19 02:23:58'),
(49, 'Genta Natalia Hariyah', 'Kpg. Panjaitan No. 201, Ternate 48271, Kaltara', '1999-09-06 18:31:19', '2022-03-19 02:23:58'),
(50, 'Ella Titi Kuswandari', 'Gg. Jambu No. 681, Gunungsitoli 84693, Babel', '1978-07-07 18:17:01', '2022-03-19 02:23:58'),
(51, 'Enteng Ganjaran Wacana', 'Kpg. Supono No. 856, Pagar Alam 21072, Sulbar', '2003-03-31 10:34:16', '2022-03-19 02:23:58'),
(52, 'Najib Januar S.Pd', 'Ds. Orang No. 279, Blitar 60762, Papua', '2019-09-07 23:49:39', '2022-03-19 02:23:58'),
(53, 'Devi Purnawati S.Pd', 'Psr. Casablanca No. 107, Pontianak 94352, Sumsel', '2010-07-03 16:27:03', '2022-03-19 02:23:58'),
(54, 'Agnes Anastasia Hartati', 'Dk. Basmol Raya No. 804, Ambon 77160, Bengkulu', '2003-10-20 01:18:41', '2022-03-19 02:23:58'),
(55, 'Jamalia Vanesa Oktaviani', 'Ki. Bakti No. 562, Makassar 67165, Sumsel', '2005-08-26 14:13:01', '2022-03-19 02:23:58'),
(56, 'Labuh Kawaya Hidayanto S.I.Kom', 'Kpg. Barasak No. 567, Tangerang Selatan 17320, NTB', '1994-10-14 22:03:58', '2022-03-19 02:23:58'),
(57, 'Ilsa Wastuti', 'Dk. Yoga No. 834, Bukittinggi 84964, Sulbar', '1972-09-17 04:24:58', '2022-03-19 02:23:58'),
(58, 'Putri Nova Utami', 'Gg. Cut Nyak Dien No. 801, Pangkal Pinang 58503, Bengkulu', '2002-10-26 01:31:46', '2022-03-19 02:23:58'),
(59, 'Winda Mandasari', 'Jln. Yos Sudarso No. 939, Yogyakarta 90600, Sulsel', '1991-03-16 15:59:22', '2022-03-19 02:23:58'),
(60, 'Aswani Iswahyudi', 'Ds. Setiabudhi No. 198, Cimahi 34218, Sultra', '2014-05-21 15:51:13', '2022-03-19 02:23:58'),
(61, 'Naradi Wibowo S.I.Kom', 'Ki. Agus Salim No. 780, Payakumbuh 46737, Sumsel', '1978-09-16 07:24:37', '2022-03-19 02:23:58'),
(62, 'Wardi Siregar S.Pd', 'Jr. Ir. H. Juanda No. 254, Langsa 73432, Kalsel', '1994-02-02 10:07:30', '2022-03-19 02:23:58'),
(63, 'Gasti Anggraini', 'Ds. Basmol Raya No. 815, Mataram 16897, Aceh', '2008-08-11 00:56:12', '2022-03-19 02:23:58'),
(64, 'Warta Uwais', 'Psr. Nakula No. 228, Batu 34082, Sultra', '2017-02-04 22:02:50', '2022-03-19 02:23:58'),
(65, 'Puti Susanti S.E.', 'Ds. Baung No. 733, Metro 44361, Riau', '1971-02-04 18:16:04', '2022-03-19 02:23:58'),
(66, 'Cici Yolanda', 'Ki. Babah No. 42, Padang 35386, Sumsel', '2010-11-26 15:51:49', '2022-03-19 02:23:58'),
(67, 'Unjani Yuniar S.Pd', 'Gg. Batako No. 841, Pariaman 36756, Aceh', '2003-03-27 09:51:17', '2022-03-19 02:23:58'),
(68, 'Amalia Tina Oktaviani S.Sos', 'Ds. Tentara Pelajar No. 5, Pariaman 68280, Gorontalo', '1990-05-13 10:06:45', '2022-03-19 02:23:58'),
(69, 'Eva Julia Safitri', 'Ki. Daan No. 790, Kendari 82128, Maluku', '2016-07-01 19:25:01', '2022-03-19 02:23:59'),
(70, 'Sakti Waskita', 'Ds. Baiduri No. 517, Solok 64732, Kalteng', '2006-02-10 23:28:34', '2022-03-19 02:23:59'),
(71, 'Zamira Vivi Mandasari', 'Ds. Suryo Pranoto No. 701, Ambon 84243, Aceh', '2015-08-04 13:10:13', '2022-03-19 02:23:59'),
(72, 'Ulya Mulyani', 'Gg. Suprapto No. 827, Prabumulih 90799, Sumut', '2010-09-18 17:07:25', '2022-03-19 02:23:59'),
(73, 'Rini Puput Astuti', 'Dk. Abdullah No. 767, Yogyakarta 45131, Sumut', '1984-07-11 19:55:14', '2022-03-19 02:23:59'),
(74, 'Elvina Melani M.Ak', 'Jr. Bagis Utama No. 383, Banda Aceh 92800, DKI', '2015-03-03 11:03:49', '2022-03-19 02:23:59'),
(75, 'Eva Riyanti S.T.', 'Jr. Hang No. 93, Samarinda 98591, Kalsel', '2005-10-09 12:30:40', '2022-03-19 02:23:59'),
(76, 'Fitriani Winarsih', 'Dk. Siliwangi No. 862, Pematangsiantar 77215, Jambi', '2007-07-18 04:17:58', '2022-03-19 02:23:59'),
(77, 'Dimaz Mandala S.IP', 'Jln. Suryo No. 562, Gunungsitoli 69259, Sulut', '2012-04-22 12:47:21', '2022-03-19 02:23:59'),
(78, 'Lidya Wahyuni S.Kom', 'Ki. Bara No. 469, Sungai Penuh 98247, NTT', '2019-01-25 19:36:55', '2022-03-19 02:23:59'),
(79, 'Ajeng Pratiwi S.IP', 'Kpg. Pattimura No. 440, Pariaman 30303, Jabar', '1970-04-05 12:58:53', '2022-03-19 02:23:59'),
(80, 'Anggabaya Halim', 'Dk. Uluwatu No. 189, Surakarta 34353, Banten', '2019-12-27 22:23:34', '2022-03-19 02:23:59'),
(81, 'Ozy Maheswara', 'Kpg. Kali No. 29, Surabaya 50014, Kalteng', '2011-03-01 10:58:58', '2022-03-19 02:23:59'),
(82, 'Tugiman Latupono', 'Jr. Sutoyo No. 14, Bekasi 43396, Kaltara', '2003-05-15 15:10:54', '2022-03-19 02:23:59'),
(83, 'Waluyo Maryadi', 'Gg. Pacuan Kuda No. 915, Tarakan 50730, Sulsel', '1976-02-23 17:18:48', '2022-03-19 02:23:59'),
(84, 'Ani Raina Susanti', 'Psr. Aceh No. 527, Lubuklinggau 11707, Sumsel', '1991-08-13 20:13:04', '2022-03-19 02:23:59'),
(85, 'Ayu Mandasari', 'Kpg. Nakula No. 55, Tarakan 36602, NTT', '2012-11-10 13:46:32', '2022-03-19 02:24:00'),
(86, 'Vanya Wulandari', 'Jln. Baranang No. 270, Salatiga 57948, Gorontalo', '1970-08-29 21:13:00', '2022-03-19 02:24:00'),
(87, 'Ratna Vanya Hariyah S.Pt', 'Jln. Suniaraja No. 467, Lubuklinggau 74771, Papua', '1993-10-19 08:39:39', '2022-03-19 02:24:00'),
(88, 'Jaka Hardiansyah S.Gz', 'Kpg. Baladewa No. 487, Bima 54136, Babel', '1986-07-14 10:56:17', '2022-03-19 02:24:00'),
(89, 'Sabri Uwais', 'Jln. Setiabudhi No. 270, Batu 99650, Sulbar', '1975-11-28 10:22:05', '2022-03-19 02:24:00'),
(90, 'Anita Yolanda', 'Psr. Tentara Pelajar No. 880, Banjarbaru 21530, Bengkulu', '1983-10-01 11:58:30', '2022-03-19 02:24:00'),
(91, 'Ilsa Puspasari', 'Jr. Padma No. 401, Tidore Kepulauan 88350, Jambi', '1985-10-13 09:45:55', '2022-03-19 02:24:00'),
(92, 'Galuh Ramadan', 'Psr. Laksamana No. 921, Balikpapan 51222, Sulut', '2000-12-13 07:53:14', '2022-03-19 02:24:00'),
(93, 'Ghaliyati Hariyah', 'Ds. Ahmad Dahlan No. 549, Tangerang Selatan 52876, Lampung', '2012-08-26 05:05:27', '2022-03-19 02:24:00'),
(94, 'Fitriani Devi Aryani S.Psi', 'Jln. Babadak No. 167, Sawahlunto 49164, Sulteng', '1985-08-17 02:19:27', '2022-03-19 02:24:00'),
(95, 'Amalia Gasti Usada', 'Dk. Babadan No. 981, Gorontalo 75359, Riau', '2006-10-02 20:36:09', '2022-03-19 02:24:00'),
(96, 'Raisa Halimah', 'Dk. Ujung No. 964, Bau-Bau 86325, Sulsel', '1990-04-01 06:56:14', '2022-03-19 02:24:00'),
(97, 'Legawa Prabowo', 'Ki. Raden No. 268, Cilegon 33467, Sulut', '1988-03-28 18:45:50', '2022-03-19 02:24:00'),
(98, 'Puspa Novitasari', 'Ki. Abdul No. 962, Tegal 21243, Riau', '1995-10-03 21:24:55', '2022-03-19 02:24:01'),
(99, 'Raisa Pertiwi', 'Ki. Panjaitan No. 364, Padangpanjang 81753, Kepri', '2001-04-17 03:11:33', '2022-03-19 02:24:01'),
(100, 'Tina Hassanah', 'Kpg. Cokroaminoto No. 516, Blitar 66059, Kalbar', '1976-05-30 10:09:54', '2022-03-19 02:24:01');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `komik`
--
ALTER TABLE `komik`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
