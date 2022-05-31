-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Bulan Mei 2022 pada 11.09
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kinerjadosen`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `NIDN` varchar(10) NOT NULL,
  `kd_prodi` varchar(10) NOT NULL,
  `nama_dosen` varchar(100) NOT NULL,
  `alamat_dosen` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`NIDN`, `kd_prodi`, `nama_dosen`, `alamat_dosen`, `status`, `foto`) VALUES
('0000034568', 'TI', 'Feri Irawan', 'Batuphat', 1, ''),
('01928374', 'SI', 'tika', 'Lhokseumawe', 1, ''),
('111222333', 'TI', 'Wahyu Suranta', 'Bireun', 1, ''),
('11122333', 'TE', 'Dahlan', 'Lhokseumawe', 1, ''),
('12323445', 'SI', 'aldi', 'medan', 1, ''),
('1232454', 'AGB', 'saiful', 'Lhokseumawe', 1, ''),
('1234355', 'SI', 'Ari Saptari', 'Lhokseumawe', 1, ''),
('12344321', 'BDP', 'nurul', 'medan', 1, ''),
('1234567', 'TS', 'Dadang', 'Lhokseumawe', 1, ''),
('2143564', 'EP', 'q3erfsreg', 'Lhokseumawe', 1, ''),
('2222234568', 'SI', 'Munirul Ula', 'Paya Bugak', 1, 'default.jpg'),
('3213412', 'AGB', 'dudung', 'Batuphat', 1, ''),
('34923294', 'SI', 'Desvina Yulisda', 'Lhokseumawe', 1, ''),
('54321', 'EP', 'sdfsgre', 'medan', 1, ''),
('nurul', 'AGT', 'nurul', 'medan', 1, ''),
('qwerty', 'SI', 'danil', 'Lhokseumawe', 1, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fakultas`
--

CREATE TABLE `fakultas` (
  `kd_fakultas` varchar(10) NOT NULL,
  `nama_fakultas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `fakultas`
--

INSERT INTO `fakultas` (`kd_fakultas`, `nama_fakultas`) VALUES
('Arsitektur', 'Arsitektur'),
('FE', 'Fakultas Ekonomi'),
('FIKOM', 'Fakultas Ilmu Komputer'),
('FISIPOL', 'Fakultas ilmu Sosial dan Politik'),
('FK', 'Kedokteran'),
('FKIP', 'Fakultas Keguruan dan Ilmu Pendidikan'),
('FT', 'Fakultas Teknik'),
('KEBIDANAN', 'Kebidanan'),
('PERTANIAN', 'Fakultas Pertanian');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria_pertanyaan`
--

CREATE TABLE `kriteria_pertanyaan` (
  `kd_kriteria` varchar(10) NOT NULL,
  `nama_kriteria` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kriteria_pertanyaan`
--

INSERT INTO `kriteria_pertanyaan` (`kd_kriteria`, `nama_kriteria`) VALUES
('DM', 'Disiplin Mengajar'),
('EMJ', 'Evaluasi Mengajar'),
('KD', 'Kepribadian Dosen'),
('KM', 'Kesiapam Mengajar'),
('MP', 'Materi Pengajaran');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `NPM` varchar(10) NOT NULL,
  `kd_prodi` varchar(10) NOT NULL,
  `nama_mahasiswa` varchar(100) NOT NULL,
  `alamat_mahasiswa` varchar(200) NOT NULL,
  `status` enum('0','1','','') NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`NPM`, `kd_prodi`, `nama_mahasiswa`, `alamat_mahasiswa`, `status`, `foto`) VALUES
('12736284', 'SI', 'popon', 'Padang sidempuan', '0', 'default.jpg'),
('1436473777', 'PM', 'M. Arif', 'Paya', '1', ''),
('1815020220', 'PB', 'Rauzah', 'Matang Sago', '1', 'default.jpg'),
('190110000', 'TS', 'Anugerah Maulana', 'Sibolga', '1', ''),
('190120000', 'TE', 'Rizqan Fahroji', 'Medan', '1', ''),
('190180001', 'SI', 'Aldi Dwi Tama', 'Binjai', '1', ''),
('190180023', 'SI', 'Akhirudin', 'Padang sidempuan', '1', ''),
('190180035', 'SI', 'Desuryan', 'Tamiang', '1', ''),
('190180036', 'SI', 'Halimah', 'Medan', '1', ''),
('190180043', 'SI', 'Wahyu', 'Kisaran', '1', ''),
('190180046', 'SI', 'Tika', 'Banda Aceh', '1', ''),
('190180047', 'SI', 'Maulana Dermawan', 'Medan', '1', ''),
('190180059', 'SI', 'Hisyam', 'Padang', '1', ''),
('190180061', 'SI', 'Erliza', 'Medan', '1', ''),
('190180065', 'SI', 'Abdur', 'Lhokseumawe', '1', ''),
('190239490', 'TI', 'Ade', 'Siantar', '1', ''),
('19030000', 'TE', 'zaki', 'Binjai', '1', ''),
('191919', 'PTN', 'risky', 'Binjai', '1', ''),
('4577636009', 'PGSD', 'Mahfudhah', 'Hanoi', '1', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kd_matakuliah` varchar(10) NOT NULL,
  `nama_matakuliah` varchar(30) NOT NULL,
  `kd_prodi` varchar(10) NOT NULL,
  `sks` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `matakuliah`
--

INSERT INTO `matakuliah` (`kd_matakuliah`, `nama_matakuliah`, `kd_prodi`, `sks`) VALUES
('12', 'listrik', 'TE', 2),
('dfs', 'Kecerdasan Bisnis', 'SI', 3),
('EC', 'E-Commerce', 'SI', 3),
('HD', 'Hidrolika', 'TS', 2),
('MKMP', 'Metode Penelitian', 'SI', 3),
('MKPM1', 'Pemrograman 1', 'TI', 3),
('MKPM2', 'Pemrograman 2', 'TI', 3),
('PY', 'Analisis Data Python', 'SI', 3),
('SI', 'Pemograman Mobile', 'SI', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah_dosen`
--

CREATE TABLE `matakuliah_dosen` (
  `id` int(11) NOT NULL,
  `kd_matakuliah` varchar(10) NOT NULL,
  `NIDN` varchar(10) NOT NULL,
  `smester` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL,
  `NPM` varchar(10) NOT NULL,
  `NIDN` varchar(10) NOT NULL,
  `kd_matakuliah` varchar(10) NOT NULL,
  `smester` varchar(6) NOT NULL,
  `tahun_ajaran` varchar(30) NOT NULL,
  `nilai` decimal(10,2) NOT NULL,
  `pesan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `NPM`, `NIDN`, `kd_matakuliah`, `smester`, `tahun_ajaran`, `nilai`, `pesan`) VALUES
(40, '190180061', '34923294', 'dfs', 'Ganjil', '2022 / 2023', '4.20', 'baik'),
(41, '190180059', '34923294', 'dfs', 'Genap', '2022 / 2023', '3.00', 'baik'),
(42, '190180046', '1234355', 'EC', 'Genap', '2022 / 2023', '2.90', 'baik'),
(43, '190180046', '2222234568', 'MKMP', 'Genap', '2022 / 2023', '3.10', 'baik'),
(44, '190180047', 'qwerty', 'PY', 'Genap', '2021 / 2022', '3.30', 'baik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pertanyaan`
--

CREATE TABLE `pertanyaan` (
  `id_pertanyaan` int(11) NOT NULL,
  `kd_kriteria` varchar(10) NOT NULL,
  `pertanyaan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pertanyaan`
--

INSERT INTO `pertanyaan` (`id_pertanyaan`, `kd_kriteria`, `pertanyaan`) VALUES
(1, 'KM', 'Dosen sangat siap mengajar di kelas'),
(2, 'KM', 'Dosen menyediakan diktat kuliah selain buku teks'),
(3, 'MP', 'Dosen menyelesaikan seluruh materi sesuai isi SAP'),
(4, 'DM', 'Dosen selalu hadir memberi kuliah setiap pertemuan'),
(5, 'EMJ', 'Sikap dosen baik saat mengajar'),
(6, 'EMJ', 'Dosen menerima masukan mahasiswa dengan baik'),
(7, 'KD', 'Dosen sangat disiplin'),
(8, 'KD', 'Memberikan nilai mahasiswa sesuai kemampuan'),
(9, 'MP', 'Dosen menyediakan bahan ajar tambahan selain diktat dan buku teks'),
(10, 'EMJ', 'apakah materi sesuai');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prodi`
--

CREATE TABLE `prodi` (
  `kd_prodi` varchar(10) NOT NULL,
  `kd_fakultas` varchar(10) NOT NULL,
  `nama_prodi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `prodi`
--

INSERT INTO `prodi` (`kd_prodi`, `kd_fakultas`, `nama_prodi`) VALUES
('AGB', 'PERTANIAN', 'Agribisnis'),
('AGT', 'PERTANIAN', 'Agroteknologi'),
('AKBID', 'KEBIDANAN', 'Kebidanan'),
('BDP', 'PERTANIAN', 'Budidaya Perairan'),
('EP', 'FE', 'Ekonomi Pembangunan'),
('IANA', 'FISIPOL', 'Ilmu Administrasi Niaga'),
('IANR', 'FISIPOL', 'Ilmu Administrasi Negara'),
('IHI', 'FISIPOL', 'Ilmu Hubungan Internasional'),
('KHN', 'PERTANIAN', 'Kehutanan'),
('PB', 'FKIP', 'Pendidikan Biologi'),
('PBE', 'FKIP', 'Pendidikan Bahasa Inggris'),
('PBSI', 'FKIP', 'Pendidikan Bahasa dan Sastra Indonesia'),
('PE', 'FKIP', 'Pendidikan Ekonomi'),
('PF', 'FKIP', 'Pendidikan Fisika'),
('PG', 'FKIP', 'Pendidikan Geografi'),
('PGPU', 'FKIP', 'Pendidikan Guru Paud'),
('PGSD', 'FKIP', 'Pendidikan Guru SD'),
('PM', 'FKIP', 'Pendidikan Matematika'),
('PTN', 'PERTANIAN', 'Peternakan'),
('SI', 'FT', 'Sistem Informasi'),
('TA', 'FT', 'Teknik Arsitektur'),
('TE', 'FT', 'Teknik Elektro'),
('TI', 'FT', 'Teknik Informatika'),
('TIP', 'PERTANIAN', 'Teknologi Industri Pertanian'),
('TM', 'FT', 'Teknik Mesin'),
('TS', 'FT', 'Teknik Sipil');

-- --------------------------------------------------------

--
-- Struktur dari tabel `registrasi`
--

CREATE TABLE `registrasi` (
  `level` enum('Admin','BPM','Prodi','Dosen','Mahasiswa') NOT NULL,
  `username` varchar(100) NOT NULL,
  `kd_prodi` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL,
  `ulang_password` varchar(20) NOT NULL,
  `id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tahun_ajaran`
--

CREATE TABLE `tahun_ajaran` (
  `tahun` year(4) NOT NULL,
  `smester` enum('Ganjil','Genap') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(3) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(256) NOT NULL,
  `level` varchar(30) NOT NULL,
  `kd_prodi` varchar(10) DEFAULT NULL,
  `foto` varchar(250) NOT NULL,
  `created` varchar(100) NOT NULL,
  `modifed` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `level`, `kd_prodi`, `foto`, `created`, `modifed`) VALUES
(6, 'bpm1', '$2y$10$KL0256uWTvEiTEYg4IiAROR5ZoR6UlZzmTLNUnOxREI4qLNwkWCv6', 'BPM', NULL, '', '08-02-2021 01:11:30', ''),
(14, 'proditi', '$2y$10$KL0256uWTvEiTEYg4IiAROR5ZoR6UlZzmTLNUnOxREI4qLNwkWCv6', 'prodi', 'TI', '', '05-04-2021 19:40:40', '13-04-2021 20:31:32'),
(15, 'admin1', '$2y$10$KL0256uWTvEiTEYg4IiAROR5ZoR6UlZzmTLNUnOxREI4qLNwkWCv6', 'admin', NULL, '', '05-04-2021 19:40:40', '13-04-2021 19:25:31'),
(21, '2222234568', '$2y$10$KL0256uWTvEiTEYg4IiAROR5ZoR6UlZzmTLNUnOxREI4qLNwkWCv6', 'dosen', 'SI', '', '13-04-2021 00:08:41', '15-02-2022 19:23:35'),
(33, '190180047', '$2y$10$aWqtChM8KiSK1wry22c.f.9Pp10Bo0B31Y/qUI6kIHxRb6FpSnLKC', 'mahasiswa', 'SI', '', '12-02-2022 19:10:22', NULL),
(34, '34923294', '$2y$10$kvEWKhTnRyxz2ckaLAehnelbm/g3HHJQwXms8OGnU8DOgA22SjH4.', 'dosen', 'SI', '', '14-02-2022 12:18:08', NULL),
(36, '190180001', '$2y$10$dOV4Mf4ntDV3ppduo8AQFOk0LudT5Yg.AYPJp30gI3ELxdkY5olhe', 'mahasiswa', 'SI', '', '14-02-2022 12:46:21', NULL),
(37, 'prodisi', '$2y$10$6.rkOmyv7pjCuM/Y6CXR0utdkOl7nXuSoQPIp.kpmdPWlwGEoADoW', 'prodi', 'SI', '', '14-02-2022 12:50:21', NULL),
(38, 'admin', '$2y$10$/f7e5fe/bZ6ORsTDc1.0wejYq6Mhbdw2v64ATeE63ppT3/WoSOZyS', 'admin', NULL, '', '15-02-2022 10:57:48', '15-02-2022 10:58:06'),
(39, '111222333', '$2y$10$ffAgKDpcb9dZQAe0FqRe1eiUNpnanZR409.m.x6HohJ3qUhjZqzHC', 'dosen', 'TI', '', '15-02-2022 19:25:21', NULL),
(40, '190110000', '$2y$10$SPejgJQTKz9P.Gf29TeLPO0.rcON6qFszEwFMq0E3NVvhn9g1xpmK', 'mahasiswa', 'TS', '', '15-02-2022 19:28:07', NULL),
(41, 'prodite', '$2y$10$3/7kn/cQwULbrmIVTI3OseRKxLbQUf9KnnsC/Cr0MekTCc4cbsv0O', 'prodi', 'TE', '', '15-02-2022 19:36:26', NULL),
(42, '11122333', '$2y$10$V5EIuxU9OmjhxArVpiZ.eOHQ/KhU2dF3V/sYm2Dnkc.ohVJRz6rdm', 'dosen', 'TE', '', '15-02-2022 19:37:16', NULL),
(43, '190120000', '$2y$10$LTpiFf5hqEF0YPveE4JljOqKAs.sTd9axXAnDtvOChcd0NfjXsvv6', 'mahasiswa', 'TE', '', '15-02-2022 19:39:21', NULL),
(45, '1234567', '$2y$10$eFVfnhqzqwlOIdpiiTIJjOZlQOx6P00GWr/gagE8iZziW5CQXsjfG', 'dosen', 'TS', '', '15-02-2022 21:41:31', NULL),
(46, '19030000', '$2y$10$zde.b5o1gnva3RSHGSIZyexaWbaMWt0M2iwnTGAGQSvoi9tK1xy4G', 'mahasiswa', 'TE', '', '15-02-2022 21:42:45', NULL),
(47, '3213412', '$2y$10$EhANeC6Y6z8W.yfwS/72VOoDho0hQMliMarqxInRmUhCnT2n/OR36', 'dosen', 'AGB', '', '15-02-2022 21:44:24', NULL),
(48, '190180023', '$2y$10$CU.GaVeME6XB6F9SV79pcOdQx6ztZ0mjIrf8qoYmuT12/nagrteNi', 'mahasiswa', 'SI', '', '15-02-2022 21:45:37', NULL),
(51, '190239490', '$2y$10$SdZ8liKcjvknTx98wDm7NO./.4bGecedtu2qMRzC06Jef/YDNOT4O', 'mahasiswa', 'TI', '', '15-02-2022 22:27:27', NULL),
(53, '1234355', '$2y$10$GB6fC0fP26fSoG.wf55h2u1S8PgvuuZZkdCrek6Vh7ECmCfgl0QKC', 'dosen', 'SI', '', '21-02-2022 14:19:15', NULL),
(54, 'admin2', '$2y$10$tbLEHlKMnYB6OxY9uVyebe60M0WsbGcediFWwwivowB00d15Koluq', 'admin', NULL, '', '07-03-2022 10:20:41', NULL),
(55, '12323445', '$2y$10$sLTVhCoNR0qtIh3F2nyqu.1iWnl0gxFHmf870RM588q2STeU5LOUC', 'dosen', 'PGPU', '', '07-03-2022 10:23:35', '07-03-2022 10:23:57'),
(56, '190180035', '$2y$10$t8Md9h1lF0/hSsjc0n5ImeMvMWsFqtiqrO19RicYQPncoix6M77t.', 'mahasiswa', 'SI', '', '09-03-2022 10:24:58', NULL),
(57, '190180036', '$2y$10$bPIfWcH5aecHFxKEDuSne.r.dchuYsSptPbt0h/uo5IXhc145CUEC', 'mahasiswa', 'SI', '', '09-03-2022 10:30:47', NULL),
(58, '190180043', '$2y$10$eF9wulCvJ4Os0Vk7A9mxH.petAS/T5LSyoUDC.Q0wBl7F5znP.V46', 'mahasiswa', 'SI', '', '09-03-2022 10:31:10', NULL),
(59, '190180046', '$2y$10$5T31eLlMyLz9F7FWNJx3ueBNAg5E9vDXFYVfeXhTV33BungT9zpLu', 'mahasiswa', 'SI', '', '09-03-2022 10:31:30', NULL),
(60, '190180059', '$2y$10$4Dely5U37vdvIWxjZtzNIe7loMSUDsAGXmSS3irse1O6IhsxxWNlm', 'mahasiswa', 'SI', '', '09-03-2022 10:31:53', NULL),
(61, '190180061', '$2y$10$fLGLD2pwuh5xNJR09pOaT.kbZKBBcKEXh3GgCettpJBKqphK.k8ky', 'mahasiswa', 'SI', '', '09-03-2022 10:32:13', NULL),
(62, '190180065', '$2y$10$gPdA1fU/Dg.8/srZkJAZ/u64yEAOL1LUbYb6nmRQpzJBQ/ej1z5Nm', 'mahasiswa', 'SI', '', '09-03-2022 10:32:31', NULL),
(63, 'admin4', '$2y$10$t76icaUbQ7Cq0uBoipZ.bOz6apFLRJUAQV9m9iVkFh.n6SgnZk6Ru', 'admin', NULL, '', '14-03-2022 12:14:32', NULL),
(64, 'admin3', '$2y$10$zEKPdz691PNBZPUZra9tI.updSgkdz/9D0n6lyPn2t.iegWlsq9RC', 'admin', NULL, '', '14-03-2022 12:21:04', NULL),
(66, 'ghjghjghjk', '$2y$10$LQboMcd8gQtmfaBZ9DfM.OK0McK3iN8Ij1dtklF/MBxZbfkOzW2di', 'admin', NULL, 'PAS_FOTO_4X6.jpg', '14-03-2022 21:15:04', NULL),
(71, 'admin5', '$2y$10$PqpsXTcps9r1scacIxQjkufkUJISIxY2eaqQyp4pPSC6Px/JdMbCW', 'admin', NULL, 'DSC07797.JPG', '16-03-2022 10:51:48', NULL),
(72, 'admin6', '$2y$10$gPqY27C8rKY1zve0BYzVceE4BsaUBT4rSchpsflbO9DANKo5kI9by', 'admin', NULL, 'MAULANA.JPG', '23-03-2022 10:52:35', NULL),
(75, 'admin7', '$2y$10$r7Ki/2d6FKIKhLJx7/9tXuKJ.qgd2PgsiD/CCUDDf2vJdEN8RhHSG', 'admin', NULL, 'IMG-swafoto.jpg', '27-03-2022 20:21:43', NULL),
(77, '12344321', '$2y$10$ibHcwrilzZ4Pk5Di8tTWDebVauMFJW8fCtZhc0DW0FQrLHxK3JEgC', 'dosen', 'BDP', '', '05-04-2022 13:29:33', NULL),
(78, '01928374', '$2y$10$ccck9.n.1HIroAisu563kO2CZophVpsgo.Mw0Rew9obgnUE7kKjoK', 'dosen', 'SI', '', '05-04-2022 13:34:47', NULL),
(79, '12736284', '$2y$10$EWXymnFUTMI9RkGGV8AYWOM.715X5W722r4BeTmIDk1YoF89LphI2', 'mahasiswa', 'SI', '', '05-04-2022 13:36:37', NULL),
(81, 'admin8', '$2y$10$TCgBiQM6hMotmmC90TSeuO2Jj5FRsgvOvHm1qI3QkpxgervbdRFkq', 'admin', '', '', '07-04-2022 12:19:03', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`NIDN`);

--
-- Indeks untuk tabel `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`kd_fakultas`);

--
-- Indeks untuk tabel `kriteria_pertanyaan`
--
ALTER TABLE `kriteria_pertanyaan`
  ADD PRIMARY KEY (`kd_kriteria`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`NPM`);

--
-- Indeks untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`kd_matakuliah`);

--
-- Indeks untuk tabel `matakuliah_dosen`
--
ALTER TABLE `matakuliah_dosen`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indeks untuk tabel `pertanyaan`
--
ALTER TABLE `pertanyaan`
  ADD PRIMARY KEY (`id_pertanyaan`);

--
-- Indeks untuk tabel `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`kd_prodi`);

--
-- Indeks untuk tabel `registrasi`
--
ALTER TABLE `registrasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `matakuliah_dosen`
--
ALTER TABLE `matakuliah_dosen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `pertanyaan`
--
ALTER TABLE `pertanyaan`
  MODIFY `id_pertanyaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `registrasi`
--
ALTER TABLE `registrasi`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
