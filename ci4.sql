-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Okt 2020 pada 08.49
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `comics`
--

CREATE TABLE `comics` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `comics`
--

INSERT INTO `comics` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(1, 'Watchmen', 'watchmen', 'Alan Moore', 'DC Comics', 'dc.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Civil War', 'civil-war', 'Joe Simon', 'Marvel Studios', 'marvel.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'bismillah', 'bismillah', 'eweuhan ah', 'lm', 'lkm', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'sadasd', 'sadasd', '', '', 'akmdal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'ndksald', 'ndksald', 'lkndl', 'wnldn', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'dadang konelov2', 'dadang-konelov2', 'dadang ', 'konelo oreo', 'marvel_1.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'garagaa', 'garagaa', 'anjji', 'sipetualang', 'default.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` text NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2020-10-14-073315', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1602661050, 1);

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
(1, 'Ira Hastuti', 'Psr. Arifin No. 124, Bitung 24237, KalUt', '2008-03-29 07:57:29', '2020-10-14 03:24:09'),
(2, 'Gina Gawati Astuti', 'Ds. Otto No. 577, Lhokseumawe 83271, DKI', '1998-08-04 23:07:47', '2020-10-14 03:24:09'),
(3, 'Vivi Anggraini', 'Psr. Jayawijaya No. 80, Semarang 77732, SulTeng', '1993-04-24 19:27:05', '2020-10-14 03:24:09'),
(4, 'Ian Rahmat Kusumo', 'Dk. Laswi No. 62, Lubuklinggau 62522, Aceh', '1972-12-06 09:31:38', '2020-10-14 03:24:09'),
(5, 'Iriana Safitri', 'Kpg. HOS. Cjokroaminoto (Pasirkaliki) No. 529, Semarang 12219, KalTeng', '2000-04-27 06:09:22', '2020-10-14 03:24:09'),
(6, 'Paris Namaga', 'Psr. S. Parman No. 45, Palopo 67773, KalTim', '1999-09-01 19:36:45', '2020-10-14 03:24:09'),
(7, 'Mila Laksita M.TI.', 'Jln. Sutan Syahrir No. 952, Tomohon 48604, Bali', '2012-01-11 03:53:22', '2020-10-14 03:24:09'),
(8, 'Padmi Kusmawati S.Psi', 'Ki. K.H. Wahid Hasyim (Kopo) No. 246, Salatiga 11479, KalUt', '2010-04-08 09:21:16', '2020-10-14 03:24:09'),
(9, 'Pandu Nainggolan', 'Jr. Elang No. 546, Jayapura 96978, Jambi', '2012-10-03 23:12:05', '2020-10-14 03:24:09'),
(10, 'Mahfud Hidayat', 'Kpg. W.R. Supratman No. 849, Tidore Kepulauan 90181, DIY', '2016-08-29 20:30:26', '2020-10-14 03:24:09'),
(11, 'Usyi Raina Maryati', 'Ki. Basmol Raya No. 997, Makassar 10266, KalTim', '1985-09-14 20:28:00', '2020-10-14 03:24:09'),
(12, 'Samiah Rahimah S.T.', 'Jr. Padma No. 441, Serang 20877, DIY', '2008-09-15 07:15:14', '2020-10-14 03:24:09'),
(13, 'Ira Puspasari S.T.', 'Ds. Sudiarto No. 894, Surakarta 94610, SulBar', '2010-11-24 00:53:43', '2020-10-14 03:24:09'),
(14, 'Wira Salahudin S.Pd', 'Kpg. Barat No. 402, Prabumulih 32037, SumUt', '1990-01-16 03:56:47', '2020-10-14 03:24:10'),
(15, 'Cager Firmansyah', 'Gg. Zamrud No. 948, Magelang 11677, DKI', '2007-03-31 02:58:59', '2020-10-14 03:24:10'),
(16, 'Dodo Mustofa', 'Jln. Rajawali Barat No. 916, Tidore Kepulauan 34024, DIY', '1976-07-21 01:33:01', '2020-10-14 03:24:10'),
(17, 'Cengkir Margana Prayoga', 'Kpg. Yap Tjwan Bing No. 358, Dumai 26934, JaTim', '1999-07-17 20:14:51', '2020-10-14 03:24:10'),
(18, 'Margana Situmorang', 'Kpg. Bazuka Raya No. 860, Blitar 71767, SulBar', '2014-04-05 14:27:11', '2020-10-14 03:24:10'),
(19, 'Karma Iswahyudi S.Gz', 'Dk. Sukajadi No. 804, Bogor 91284, SulTra', '1975-04-03 11:35:35', '2020-10-14 03:24:10'),
(20, 'Kani Uyainah', 'Gg. Baik No. 441, Sukabumi 50521, KalTeng', '2012-08-24 10:16:10', '2020-10-14 03:24:10'),
(21, 'Yuliana Lalita Puspita M.M.', 'Dk. Laswi No. 469, Madiun 70076, Bali', '1982-02-24 21:15:08', '2020-10-14 03:24:10'),
(22, 'Narji Bahuwarna Hakim M.Pd', 'Ds. Siliwangi No. 978, Gunungsitoli 25894, KalUt', '2015-07-13 04:06:36', '2020-10-14 03:24:10'),
(23, 'Oni Nasyiah M.Pd', 'Gg. Mahakam No. 679, Bogor 18626, Riau', '1984-12-22 07:59:11', '2020-10-14 03:24:10'),
(24, 'Ulva Rahmawati', 'Ds. Bambon No. 76, Sukabumi 75925, DKI', '2000-11-30 12:06:16', '2020-10-14 03:24:10'),
(25, 'Tiara Diah Hasanah S.Pt', 'Jln. Kali No. 585, Pariaman 33142, SulUt', '1986-03-14 21:52:39', '2020-10-14 03:24:10'),
(26, 'Elisa Yolanda S.Pd', 'Jr. Batako No. 874, Pagar Alam 72239, SulTeng', '2005-12-24 05:42:16', '2020-10-14 03:24:10'),
(27, 'Kenes Jasmani Nababan S.Pt', 'Psr. Raden Saleh No. 504, Cirebon 38252, DKI', '1994-12-16 11:47:44', '2020-10-14 03:24:10'),
(28, 'Surya Kuswoyo S.I.Kom', 'Ki. Perintis Kemerdekaan No. 182, Cirebon 44420, MalUt', '2008-03-04 01:34:44', '2020-10-14 03:24:10'),
(29, 'Mutia Nasyiah', 'Jr. Bara Tambar No. 712, Bitung 96380, KalUt', '2016-12-25 17:07:25', '2020-10-14 03:24:10'),
(30, 'Jarwa Ikhsan Tampubolon S.Gz', 'Jln. Ciumbuleuit No. 714, Pekanbaru 39013, Bali', '2000-12-16 21:25:47', '2020-10-14 03:24:10'),
(31, 'Galang Yono Firmansyah S.Farm', 'Jr. Bakin No. 201, Gorontalo 48483, NTB', '2017-12-30 06:39:06', '2020-10-14 03:24:10'),
(32, 'Farhunnisa Wahyuni', 'Jr. Jaksa No. 621, Sawahlunto 50160, SulTeng', '1986-05-04 01:12:46', '2020-10-14 03:24:10'),
(33, 'Titi Ilsa Rahayu M.Farm', 'Jr. Banceng Pondok No. 273, Tegal 37728, DKI', '1976-04-13 06:48:05', '2020-10-14 03:24:10'),
(34, 'Raisa Siti Pratiwi', 'Jln. K.H. Wahid Hasyim (Kopo) No. 79, Pekanbaru 19862, BaBel', '1998-11-10 08:17:02', '2020-10-14 03:24:10'),
(35, 'Laswi Maheswara', 'Ki. Bass No. 196, Payakumbuh 91697, MalUt', '1996-09-28 10:51:20', '2020-10-14 03:24:10'),
(36, 'Rahmi Zelda Handayani', 'Gg. Pasirkoja No. 149, Batu 46779, Banten', '2008-04-21 16:43:02', '2020-10-14 03:24:10'),
(37, 'Radit Wibowo', 'Ki. Pacuan Kuda No. 260, Yogyakarta 39396, KalTeng', '1989-04-19 23:16:32', '2020-10-14 03:24:10'),
(38, 'Bakiono Darman Lazuardi', 'Ki. Wahid No. 766, Tegal 77380, SulTra', '1988-10-18 01:23:21', '2020-10-14 03:24:10'),
(39, 'Lanjar Marpaung', 'Dk. Ciumbuleuit No. 429, Malang 32772, SulBar', '2005-07-06 12:02:48', '2020-10-14 03:24:11'),
(40, 'Cakrajiya Hidayat', 'Ds. Babadak No. 62, Palopo 83806, MalUt', '1981-01-18 22:52:23', '2020-10-14 03:24:11'),
(41, 'Hani Uyainah', 'Psr. Barasak No. 718, Mataram 88723, Papua', '1993-03-29 19:28:48', '2020-10-14 03:24:11'),
(42, 'Elvina Suartini S.E.', 'Ki. Baan No. 937, Malang 24512, Maluku', '2000-04-21 16:23:31', '2020-10-14 03:24:11'),
(43, 'Diana Wastuti', 'Jr. Barasak No. 790, Mataram 54487, JaBar', '1985-02-15 03:02:32', '2020-10-14 03:24:11'),
(44, 'Agus Nashiruddin', 'Psr. Pacuan Kuda No. 740, Pagar Alam 41454, SulSel', '1982-05-01 20:06:49', '2020-10-14 03:24:11'),
(45, 'Kania Kezia Suryatmi S.E.', 'Ds. Ronggowarsito No. 993, Payakumbuh 85807, SumUt', '2015-07-29 18:40:18', '2020-10-14 03:24:11'),
(46, 'Luwes Wacana S.Ked', 'Ki. Imam Bonjol No. 799, Makassar 55895, Banten', '2010-12-20 15:43:24', '2020-10-14 03:24:11'),
(47, 'Dimas Cahyo Mahendra', 'Jr. Orang No. 395, Bandar Lampung 10546, SulTra', '1978-01-02 21:39:19', '2020-10-14 03:24:11'),
(48, 'Wahyu Prakasa', 'Jln. Pasir Koja No. 901, Lubuklinggau 80545, Riau', '1988-06-29 23:49:20', '2020-10-14 03:24:11'),
(49, 'Paulin Vicky Usada', 'Jln. Ters. Kiaracondong No. 365, Administrasi Jakarta Timur 47888, DKI', '1974-12-29 13:57:16', '2020-10-14 03:24:11'),
(50, 'Diah Anggraini', 'Ki. Gardujati No. 481, Padangpanjang 32059, JaBar', '2018-04-02 14:06:10', '2020-10-14 03:24:11'),
(51, 'Gandi Mandala M.Pd', 'Ki. Soekarno Hatta No. 243, Tangerang Selatan 12044, Gorontalo', '2006-02-13 17:50:06', '2020-10-14 03:24:11'),
(52, 'Hardana Simbolon M.Pd', 'Dk. Pelajar Pejuang 45 No. 142, Tual 97862, PapBar', '1996-06-12 18:12:13', '2020-10-14 03:24:11'),
(53, 'Widya Irma Usamah S.Psi', 'Jr. Dipatiukur No. 388, Depok 53698, SumSel', '2018-01-11 04:46:04', '2020-10-14 03:24:11'),
(54, 'Erik Galih Tampubolon', 'Ds. Bakaru No. 93, Tidore Kepulauan 76099, Gorontalo', '1992-11-10 10:47:16', '2020-10-14 03:24:11'),
(55, 'Humaira Usada', 'Psr. Laksamana No. 940, Pasuruan 24516, SulTra', '2009-12-21 21:25:52', '2020-10-14 03:24:11'),
(56, 'Jumadi Daliman Utama', 'Ds. Bara No. 921, Payakumbuh 67123, NTB', '1975-04-08 03:06:37', '2020-10-14 03:24:11'),
(57, 'Ade Fujiati', 'Ki. Madiun No. 178, Denpasar 12156, Riau', '1983-09-04 23:38:03', '2020-10-14 03:24:11'),
(58, 'Marsudi Rajasa', 'Jr. Hang No. 264, Bitung 42147, Banten', '1988-12-05 09:09:59', '2020-10-14 03:24:11'),
(59, 'Balijan Gangsa Ardianto', 'Kpg. Sunaryo No. 78, Batam 48803, JaTeng', '2011-11-30 15:31:40', '2020-10-14 03:24:11'),
(60, 'Rika Maria Padmasari S.I.Kom', 'Psr. Kebonjati No. 144, Administrasi Jakarta Selatan 19783, KalUt', '1974-09-04 21:50:57', '2020-10-14 03:24:11'),
(61, 'Upik Utama', 'Jr. Pattimura No. 736, Banjar 43422, Bali', '1976-12-08 13:42:28', '2020-10-14 03:24:11'),
(62, 'Genta Wulan Mulyani', 'Jln. Adisucipto No. 477, Palopo 17381, MalUt', '1970-01-27 01:51:39', '2020-10-14 03:24:12'),
(63, 'Tantri Fujiati', 'Psr. Ters. Buah Batu No. 447, Tanjungbalai 67281, SulTeng', '2015-09-18 07:49:16', '2020-10-14 03:24:12'),
(64, 'Eko Salahudin', 'Psr. Sukajadi No. 812, Kupang 61554, DIY', '1991-05-13 15:51:17', '2020-10-14 03:24:12'),
(65, 'Anastasia Puspa Wijayanti M.Ak', 'Ki. Gajah No. 927, Lubuklinggau 42137, JaBar', '1992-02-16 08:25:00', '2020-10-14 03:24:12'),
(66, 'Ade Mandasari', 'Gg. Pattimura No. 696, Jambi 74896, SulSel', '2004-01-30 05:16:07', '2020-10-14 03:24:12'),
(67, 'Wulan Irma Mayasari', 'Kpg. Umalas No. 263, Tangerang Selatan 14469, Bengkulu', '1970-02-19 23:12:05', '2020-10-14 03:24:12'),
(68, 'Ulya Nasyidah', 'Gg. Otista No. 176, Banjarmasin 37210, KalBar', '1977-10-11 03:19:11', '2020-10-14 03:24:12'),
(69, 'Bella Mayasari S.Pt', 'Kpg. Madiun No. 615, Serang 92082, DIY', '1988-09-29 00:37:19', '2020-10-14 03:24:12'),
(70, 'Wawan Balangga Winarno', 'Gg. Camar No. 144, Serang 26801, JaTeng', '2011-04-16 02:06:05', '2020-10-14 03:24:12'),
(71, 'Jasmin Hani Puspita', 'Jln. Basoka No. 727, Banjarbaru 38723, Banten', '2013-04-26 20:08:09', '2020-10-14 03:24:12'),
(72, 'Fathonah Juli Mulyani', 'Ds. Thamrin No. 604, Solok 80167, NTT', '2007-01-28 22:36:36', '2020-10-14 03:24:12'),
(73, 'Reza Indra Wasita M.M.', 'Ds. Pasteur No. 598, Malang 30220, SulBar', '1996-07-06 09:54:46', '2020-10-14 03:24:12'),
(74, 'Tasdik Darman Narpati S.Sos', 'Dk. Suniaraja No. 546, Denpasar 63764, NTT', '1989-01-11 10:07:00', '2020-10-14 03:24:12'),
(75, 'Ika Wulandari', 'Kpg. Wora Wari No. 706, Banjarmasin 18228, SumSel', '2002-12-02 21:11:29', '2020-10-14 03:24:12'),
(76, 'Patricia Nasyidah', 'Ds. Tubagus Ismail No. 57, Medan 48188, SulTeng', '1993-07-24 23:07:33', '2020-10-14 03:24:12'),
(77, 'Cahyadi Najmudin', 'Gg. Sampangan No. 18, Tegal 14804, JaTeng', '1993-06-09 06:30:12', '2020-10-14 03:24:12'),
(78, 'Ganjaran Widodo', 'Dk. Kali No. 636, Pontianak 31008, Gorontalo', '1998-03-05 08:27:11', '2020-10-14 03:24:12'),
(79, 'Fitriani Julia Hariyah', 'Gg. Baiduri No. 851, Padangpanjang 50857, DIY', '1990-03-20 06:17:46', '2020-10-14 03:24:13'),
(80, 'Banawa Wakiman Ardianto', 'Jr. Bayan No. 985, Samarinda 69420, JaBar', '2009-07-10 21:11:30', '2020-10-14 03:24:13'),
(81, 'Balidin Uwais S.H.', 'Jr. Ciumbuleuit No. 163, Magelang 63833, SumBar', '1990-05-12 10:08:22', '2020-10-14 03:24:13'),
(82, 'Marsito Ardianto S.Kom', 'Jln. Ters. Jakarta No. 936, Kupang 34611, SumBar', '1998-08-10 00:49:57', '2020-10-14 03:24:13'),
(83, 'Siti Yulianti S.IP', 'Kpg. Sam Ratulangi No. 617, Pekalongan 71553, SulTeng', '1974-05-14 13:42:36', '2020-10-14 03:24:13'),
(84, 'Harsana Kurniawan', 'Kpg. Ters. Kiaracondong No. 698, Lubuklinggau 90727, SulTra', '1976-04-23 23:49:39', '2020-10-14 03:24:13'),
(85, 'Lili Tina Farida', 'Gg. Baik No. 588, Banjarmasin 16823, SumUt', '2005-11-08 16:17:06', '2020-10-14 03:24:13'),
(86, 'Banara Jindra Mustofa S.Gz', 'Ki. Dago No. 275, Padangsidempuan 11117, JaTeng', '2000-01-17 04:03:35', '2020-10-14 03:24:13'),
(87, 'Devi Fathonah Novitasari S.E.I', 'Ki. Padang No. 811, Administrasi Jakarta Barat 98209, Aceh', '2015-10-23 06:40:01', '2020-10-14 03:24:13'),
(88, 'Kenari Reza Habibi S.Pd', 'Ds. Tambak No. 470, Kendari 95391, MalUt', '1978-10-18 11:27:41', '2020-10-14 03:24:13'),
(89, 'Galur Jono Narpati M.Ak', 'Gg. Villa No. 286, Makassar 71795, SulUt', '2004-01-27 22:47:55', '2020-10-14 03:24:13'),
(90, 'Rangga Marpaung S.Pd', 'Ds. Tentara Pelajar No. 190, Kediri 83013, PapBar', '2017-10-14 17:09:13', '2020-10-14 03:24:13'),
(91, 'Jane Puji Zulaika', 'Jr. Pasirkoja No. 742, Bandar Lampung 77659, KalBar', '1983-09-16 00:20:45', '2020-10-14 03:24:13'),
(92, 'Daliono Wibowo', 'Jr. Cut Nyak Dien No. 948, Depok 31132, DIY', '2009-05-06 11:10:09', '2020-10-14 03:24:13'),
(93, 'Jumadi Mandala S.T.', 'Psr. Pelajar Pejuang 45 No. 278, Metro 57333, SulBar', '1978-02-13 21:47:02', '2020-10-14 03:24:13'),
(94, 'Mulyono Firmansyah', 'Psr. Sutoyo No. 697, Administrasi Jakarta Selatan 29316, JaBar', '2009-05-17 14:40:33', '2020-10-14 03:24:13'),
(95, 'Kayun Prasetya', 'Psr. Setiabudhi No. 616, Manado 27070, Aceh', '1994-06-13 11:29:50', '2020-10-14 03:24:13'),
(96, 'Jais Gunarto S.IP', 'Jln. Baja No. 762, Tarakan 12756, SulBar', '1994-05-23 15:51:31', '2020-10-14 03:24:13'),
(97, 'Darman Mulyono Maulana S.Ked', 'Jln. Setia Budi No. 496, Kotamobagu 55264, BaBel', '1972-02-18 06:18:03', '2020-10-14 03:24:13'),
(98, 'Dimas Saragih M.Kom.', 'Dk. Pahlawan No. 578, Tanjung Pinang 69500, Banten', '1997-11-13 04:13:14', '2020-10-14 03:24:13'),
(99, 'Gamblang Prayitna Maulana', 'Kpg. Babadak No. 396, Bontang 78412, SulBar', '1999-10-27 08:45:45', '2020-10-14 03:24:13'),
(100, 'Taufik Saputra', 'Psr. Hang No. 259, Blitar 73025, BaBel', '1993-12-04 18:00:39', '2020-10-14 03:24:13');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `comics`
--
ALTER TABLE `comics`
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
-- AUTO_INCREMENT untuk tabel `comics`
--
ALTER TABLE `comics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
