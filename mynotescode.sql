-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 17 Bulan Mei 2019 pada 14.10
-- Versi server: 10.1.39-MariaDB
-- Versi PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mynotescode`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cabang`
--

CREATE TABLE `cabang` (
  `kode_cabang` varchar(3) NOT NULL,
  `nama_cabang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cabang`
--

INSERT INTO `cabang` (`kode_cabang`, `nama_cabang`) VALUES
('311', 'KP. Palu'),
('321', 'KC. Luwuk'),
('331', 'KC. Tolis'),
('341', 'KC. Poso'),
('351', 'KC. Morowali'),
('361', 'KC. Buol'),
('371', 'KC. Touna'),
('381', 'KC. Salakan'),
('391', 'KC. Parimo'),
('392', 'KC. Donggala'),
('393', 'KC. Balut'),
('394', 'KC. Morut');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE `jabatan` (
  `kode_jabatan` varchar(3) NOT NULL,
  `nama_jabatan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jabatan`
--

INSERT INTO `jabatan` (`kode_jabatan`, `nama_jabatan`) VALUES
('J01', 'Admin Kredit'),
('J02', 'Admin Kredit Dan Tagihan'),
('J03', 'Admin Tagihan'),
('J04', 'Admin Tagihan'),
('J05', 'Akunting'),
('J06', 'Ao Funding'),
('J07', 'Ao Konsumtif'),
('J08', 'Ao Mikro'),
('J09', 'Assistant Manager Ops/Supprting'),
('J10', 'Bagian Umum'),
('J11', 'Collector'),
('J12', 'CR'),
('J13', 'Customer Service\r\n'),
('J14', 'Direktur Bisnis'),
('J15', 'Direktur Kepatuhan'),
('J16', 'Direktur Utama\r\n'),
('J17', 'Driver\r\n'),
('J18', 'EDP/IT'),
('J19', 'Internal Kontrol\r\n'),
('J20', 'Kasie Akunting\r\n'),
('J21', 'Kasie Bisnis\r\n'),
('J22', 'Kasie Operasional\r\n'),
('J23', 'Kasie Operasional Dan Supporting\r\n'),
('J24', 'Kasie SDM\r\n'),
('J25', 'Kasie Supporting\r\n'),
('J27', 'Kepala Cabang\r\n'),
('J28', 'Kepala Kantor Kas\r\n'),
('J29', 'Komisaris Utama\r\n'),
('J30', 'Legal Apraisal\r\n'),
('J31', 'Manager Dana\r\n'),
('J32', 'Manager Kredit\r\n'),
('J33', 'Manager Operasional Dan Supporting\r\n'),
('J34', 'Manager Operasional Pusat\r\n'),
('J35', 'MANAGER SKK / SKMR'),
('J36', 'Manajer Operasional/Supporting\r\n'),
('J37', 'MANAJER SKAI'),
('J38', 'OB'),
('J39', 'Pimpinan Cabang\r\n'),
('J40', 'RAMEDIAL'),
('J41', 'SDM'),
('J42', 'SECURITY'),
('J43', 'SEKRETARIS'),
('J44', 'SKAI'),
('J45', 'SKK/SKMR'),
('J46', 'TELLER'),
('J47', 'UMUM');

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `nik` varchar(11) NOT NULL,
  `nama_karyawan` varchar(255) NOT NULL,
  `kode_cabang` varchar(3) NOT NULL,
  `kode_jabatan` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`nik`, `nama_karyawan`, `kode_cabang`, `kode_jabatan`) VALUES
('03001010007', 'Adrian', '392', 'J39'),
('03003010008', 'Andi Irham', '391', 'J39'),
('03004010009', 'Semuel Mandele Todan', '381', 'J39'),
('03004010010', 'Ali Bahadjai', '311', 'J16'),
('03004010011', 'Rachmat Syah', '311', 'J31'),
('03004010012', 'Yunus Hananto', '311', 'J32'),
('03004020013', 'Tantri Prindinawati', '311', 'J35'),
('03006010014', 'Yanto Maliku', '311', 'J40'),
('03006010016', 'Haeruddin', '371', 'J27'),
('03006010017', 'Freddy Oktavian M', '311', 'J09'),
('03006010018', 'Muh. Syarif', '311', 'J47'),
('03006020015', 'Nasruni', '311', 'J37'),
('03007010020', 'Theo Massora', '392', 'J28'),
('03007010021', 'Roy Tolotoo', '321', 'J17'),
('03007010022', 'James Tobondo', '311', 'J33'),
('03007010023', 'Hence Yance Takaredas', '331', 'J38'),
('03007010024', 'Widjiono', '331', 'J17'),
('03008010025', 'Fardiansyah', '371', 'J21'),
('03008010029', 'Marten Yunius', '371', 'J28'),
('03008020026', 'Yernita Mandjarara', '341', 'J39'),
('03008020027', 'Asnani', '331', 'J21'),
('03009010030', 'Vicky Agus Herdiono', '311', 'J44'),
('03009010032', 'Idham H.Hasan', '361', 'J27'),
('03009010033', 'Burhan', '351', 'J38'),
('03009010035', 'Muhammad Ihsan', '321', 'J39'),
('03009020031', 'Sulianty', '311', 'J36'),
('03009020034', 'Merlyn Rosalin', '311', 'J24'),
('03009020036', 'Ade Irma Abd Karim', '351', 'J23'),
('03010010039', 'Nasrun', '331', 'J39'),
('03010010040', 'Verkuyl Teofilus Wowor', '351', 'J27'),
('03010010041', 'Muhammad Nawir B', '311', 'J21'),
('03010010042', 'Rahman Arief', '361', 'J17'),
('03010020037', 'Sri Wulan Ayuningsih', '351', 'J21'),
('03010020038', 'Faega Hamid', '311', 'J19'),
('03011010043', 'Royfet Mbalea', '341', 'J28'),
('03011010044', 'Sumarno', '331', 'J03'),
('03011010045', 'Syafruddin', '331', 'J23'),
('03011010046', 'Shodikin', '331', 'J28'),
('03011010047', 'Kasman Pailang', '391', 'J23'),
('03011010048', 'Awat Abdullah Bahdel', '311', 'J22'),
('03011010049', 'Christoverus Taiso', '311', 'J30'),
('03011010050', 'Liston', '311', 'J18'),
('03011010051', 'Gusnan Roflly Maradindo', '394', 'J23'),
('03011010052', 'Munawir', '341', 'J21'),
('03011010053', 'Irdan Ishak', '351', 'J05'),
('03011010054', 'Mardhan', '341', 'J38'),
('03011010055', 'Ahmad Riadi', '341', 'J17'),
('03011010056', 'Robin Sy. Latjompo', '371', 'J42'),
('03011010057', 'Fadli A. Wondjo', '371', 'J17'),
('03011010058', 'Sutanto Mali Umar', '341', 'J11'),
('03011010059', 'Miswan', '351', 'J42'),
('03011010060', 'Theopilus Ngineikon', '381', 'J17'),
('03011010061', 'Sumardiyanto M. Alaeha', '381', 'J42'),
('03011010062', 'Muhammad Riski', '311', 'J26'),
('03011010063', 'Munawir', '361', 'J21'),
('03011010064', 'Hilkiezer Julius', '361', 'J23'),
('03011010065', 'Noldi Satya Gunawan Korompu', '321', 'J28'),
('03011010066', 'Ferdy Sangauk', '321', 'J38'),
('03012010068', 'Moh. Arif Masulili', '371', 'J23'),
('03012010069', 'Andhika Pratama Akase', '393', 'J39'),
('03012010071', 'Fahrul', '371', 'J46'),
('03012010072', 'Moh. Adha Tarungku', '361', 'J42'),
('03012010073', 'Desy Aryanto', '394', 'J02'),
('03012010075', 'Trengginas Djamila', '381', 'J21'),
('03012010077', 'Muhalim', '361', 'J07'),
('03012010078', 'Rinto Ang', '392', 'J22'),
('03012010079', 'Mirsam', '392', 'J21'),
('03012010080', 'Arthur M Kawulur', '311', 'J18'),
('03012010081', 'Ahmad Suwarno', '341', 'J25'),
('03012010082', 'Edi Sutomo', '311', 'J20'),
('03012010083', 'Muh. Ilham H. Nani', '371', 'J38'),
('03012010084', 'Mohamad Yusuf', '371', 'J03'),
('03012010085', 'Junaid Djakaria', '371', 'J07'),
('03012010086', 'Roby Nicholas Ntaba', '341', 'J38'),
('03012010087', 'Ishak', '371', 'J38'),
('03012010088', 'Ishak Tolis', '331', 'J13'),
('03012020074', 'Srice Dian E Badilo', '341', 'J22'),
('03012020076', 'Bungai Ghina Inayatillah', '331', 'J46'),
('03013010088', 'Sugiarto Toikromo', '341', 'J13'),
('03013010089', 'Supardi Ml. Husain', '361', 'J38'),
('03013010090', 'Ruslan Efendy Soulisa', '392', 'J38'),
('03013010091', 'Sudirman', '331', 'J38'),
('03013010092', 'Yunus Bulia', '381', 'J07'),
('03013010093', 'Rajikin Huma', '393', 'J13'),
('03013010094', 'Masud Taridala', '351', 'J17'),
('03013010095', 'Haripen Palindja', '371', 'J46'),
('03013010096', 'Jibran', '391', 'J17'),
('03013010097', 'Mustamin', '331', 'J17'),
('03013010098', 'Asfari Ghaldi', '391', 'J11'),
('03013010099', 'Zulfikar', '331', 'J07'),
('03013010100', 'Rio Tolotoo', '381', 'J38'),
('03013010101', 'Abdul Hakim', '361', 'J05'),
('03013010102', 'Moh. Syahrial', '361', 'J13'),
('03013010103', 'Riswan Prasetiawan', '391', 'J21'),
('03013010104', 'Moh Abd Rais', '391', 'J28'),
('03013010105', 'Abdillah Laonu', '351', 'J01'),
('03013010106', 'Moh Syafi\'I', '311', 'J41'),
('03013010108', 'Stevan Lapono', '341', 'J19'),
('03013010109', 'Amrin Suwardi', '311', 'J01'),
('03013010110', 'Agustinus Balebu', '341', 'J46'),
('03013010112', 'Abdul Gafur', '331', 'J46'),
('03013010113', 'Yudianto', '341', 'J07'),
('03013010114', 'Frenky G Malimpu', '393', 'J05'),
('03013010115', 'Stenly Christian Badilo', '311', 'J46'),
('03013010116', 'Mahmud', '311', 'J05'),
('03013010117', 'Moh. Radjab Kartono', '392', 'J13'),
('03014010118', 'Ilham Akbar', '391', 'J38'),
('03014010119', 'Syarifudin', '311', 'J17'),
('03014010120', 'Ince Subandri', '341', 'J10'),
('03014010121', 'Reki Bastian Kadoy', '341', 'J13'),
('03014010122', 'Rony Benyamin', '392', 'J46'),
('03014010123', 'Daniel M Koela', '321', 'J21'),
('03014010124', 'Demsye Bilardo Maksum', '321', 'J46'),
('03014010125', 'Moh. Akbar', '311', 'J07'),
('03014010126', 'Rahmat', '311', 'J45'),
('03014010127', 'Ady Prana', '394', 'J11'),
('03014010128', 'Abdul Ramdan', '381', 'J23'),
('03014010129', 'Afandi', '361', 'J46'),
('03014010130', 'Mohammad Sabil Akbar', '392', 'J03'),
('03014010131', 'Stenly Christember Saidi', '371', 'J01'),
('03014010132', 'Moh. Reza Hidayat', '321', 'J23'),
('03014010133', 'Hendra', '371', 'J17'),
('03014010134', 'Syamsu Rijal', '393', 'J03'),
('03014010135', 'Muhammad Arif', '381', 'J13'),
('03014010137', 'Ramadhan S Nggau', '391', 'J17'),
('03014010138', 'Afriandi Arsyad', '392', 'J38'),
('03014010139', 'Elfian Rompis', '311', 'J40'),
('03015010140', 'Frangki', '391', 'J38'),
('03015010141', 'Busri S Pakaya', '393', 'J38'),
('03015010142', 'Masfrudin M Laama', '393', 'J42'),
('03015010143', 'Muh Fandhy A', '393', 'J42'),
('03015010148', 'Andi Irfan', '311', 'J12'),
('03015010149', 'Zainal Y Buhang', '311', 'J08'),
('03015010152', 'Beny Samuel Ginto', '394', 'J13'),
('03015010153', 'I Gede Dedi Sanjaya', '311', 'J18'),
('03015010154', 'Mardy Toding', '391', 'J03'),
('03015010155', 'Wijaya', '392', 'J06'),
('03015010157', 'Riezki Fransutantio Kerebungu', '311', 'J06'),
('03015010160', 'Hendra Donggala', '392', 'J17'),
('03015010161', 'Harold Nyaua', '394', 'J07'),
('03015010162', 'James Dani', '311', 'J06'),
('03015010163', 'Awaluddin Akbar. Fattah', '311', 'J44'),
('03015010164', 'Imam Gozali', '311', 'J13'),
('03015010165', 'Ahmad Ryan', '311', 'J07'),
('03015010166', 'Mohammad Ashri', '391', 'J01'),
('03015010167', 'Agustiawan Amat Salim', '381', 'J02'),
('03015010168', 'Awaludin Lawenga', '394', 'J46'),
('03015010169', 'Moh. Ridwan', '311', 'J11'),
('03015010171', 'Adi Wahyu Saputra', '351', 'J13'),
('03015010172', 'Michael A. Kawulur', '311', 'J04'),
('03015010173', 'Arief Mustanil', '391', 'J46'),
('03015010174', 'Ibnu Sufyan Atstsauri Siregar', '341', 'J46'),
('03015010176', 'Nick Carter Ampi Lemba Modjanggo', '341', 'J06'),
('03015020144', 'Oriana Ponsitammu', '311', 'J08'),
('03015020146', 'Debbie Trisye Novtalin', '311', 'J08'),
('03015020175', 'Christa Greysta', '311', 'J43'),
('03016010176', 'Kristian Mehingko', '311', 'J17'),
('03016010179', 'Muhammad Acip', '394', 'J38'),
('03016010180', 'Moh Faisal', '394', 'J17'),
('03016010181', 'Ian Sirojudin Abbas', '311', 'J40'),
('03016010182', 'Putu Agus Subawa', '321', 'J38'),
('03016010183', 'Agus Winarto Hermawan', '311', 'J17'),
('03016010185', 'Fhadly', '393', 'J46'),
('03016010186', 'Jefreey B Manuputty', '391', 'J13'),
('03016010187', 'Mohamad Abduh', '311', 'J11'),
('03016010189', 'Ismail Zulfikar', '351', 'J07'),
('03016010190', 'Frenky Setiawan Djaru', '311', 'J46'),
('03016010192', 'Riskiyadi Alo', '393', 'J07'),
('03016010193', 'Melky Christian N. Winono', '381', 'J11'),
('03016010194', 'Husni Tandju', '391', 'J07'),
('03016010195', 'Moh. Fadli S. Batalipu', '361', 'J03'),
('03016010196', 'Moh. Ardin', '331', 'J01'),
('03016010198', 'Ivan Setyawan', '311', 'J01'),
('03016010199', 'M. Arsyad Syamsi', '331', 'J05'),
('03016010200', 'Wahyudi', '392', 'J17'),
('03016010201', 'Rizki Junizar', '311', 'J05'),
('03016010202', 'Mohammad Fuad', '321', 'J46'),
('03017010203', 'Wawan Kurniawan', '392', 'J17'),
('03017010204', 'Antonniust', '394', 'J05'),
('03017010205', 'Azza Mahsyary', '394', 'J06'),
('03017010206', 'Fadli Yatmo', '393', 'J05'),
('03017010207', 'Fachrurazzi Baginda Lagala', '391', 'J46'),
('03017010208', 'Nofrianto Amrudin', '392', 'J05'),
('03017010209', 'Moh. Irfan', '392', 'J13'),
('03017010210', 'Krisaldi Pampei', '392', 'J06'),
('03017010211', 'Robert Henry Tannun', '392', 'J01'),
('03017010212', 'Rahmat Bahari', '392', 'J11'),
('03017010214', 'Firsyha Maulana Nf', '391', 'J05'),
('03017010215', 'Ridwan', '391', 'J13'),
('03017010216', 'Dwi Rizky Adithya Kumali', '391', 'J12'),
('03017010217', 'Herdi', '391', 'J06'),
('03017010218', 'Vedry Kurniawan', '381', 'J06'),
('03017010219', 'Rusman', '381', 'J05'),
('03017010220', 'Ardian Panggalo', '381', 'J46'),
('03017010221', 'Lubis', '371', 'J05'),
('03017010223', 'Fachry Reza Supu', '371', 'J06'),
('03017010224', 'Moh. Haris Mb Samudin', '371', 'J13'),
('03017010225', 'Indra Tosinde', '371', 'J11'),
('03017010226', 'Fadli Irawanto', '361', 'J11'),
('03017010227', 'Rian J. Saerang', '361', 'J06'),
('03017010228', 'Sadrak Losa', '351', 'J46'),
('03017010229', 'Mahdar', '351', 'J06'),
('03017010230', 'Muammar Mz', '351', 'J11'),
('03017010231', 'Galang Andika Bayu Laksmana', '351', 'J12'),
('03017010232', 'Agustinus Timang', '341', 'J12'),
('03017010233', 'Ferdy Kristian Lidaya', '341', 'J03'),
('03017010234', 'Edward Nugraha Putra', '341', 'J05'),
('03017010235', 'Roly Kastro', '341', 'J01'),
('03017010236', 'Richard Resa', '331', 'J13'),
('03017010237', 'Moh. Tezzar', '331', 'J12'),
('03017010238', 'Defriadi', '331', 'J06'),
('03017010239', 'Abdul Razak', '321', 'J06'),
('03017010240', 'Yoas Priesd Armey Malaha', '321', 'J05'),
('03017010241', 'Wahyu Hendra Dajanun', '321', 'J13'),
('03017010243', 'Riswanto Nasir', '321', 'J12'),
('03017010244', 'Agusman', '311', 'J07'),
('03017010245', 'Basran Basri', '331', 'J11'),
('03017010246', 'Bryan Christopher Sambali', '321', 'J07'),
('03017010247', 'Sawir', '311', 'J17'),
('03017010249', 'Aditya Oktaviansyah', '321', 'J13'),
('03017020250', 'Fitriana Rudi', '311', 'J43'),
('03018010252', 'James Mine Gatta', '311', 'J14'),
('03996010001', 'Ruhman L Yoga', '394', 'J39'),
('03998010002', 'F.G.W.B. Tutuhatunewa', '311', 'J29'),
('03998020003', 'Jesmin Taralalu', '311', 'J15'),
('03998020004', 'Chandra Estriana', '311', 'J34'),
('03999010005', 'Dickson  I. A', '311', 'J44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kota`
--

CREATE TABLE `kota` (
  `id` int(11) NOT NULL,
  `id_provinsi` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kota`
--

INSERT INTO `kota` (`id`, `id_provinsi`, `nama`) VALUES
(1, 1, 'Palu'),
(2, 1, 'Donggala'),
(3, 1, 'Parigi'),
(4, 1, 'Poso'),
(5, 2, 'Manado'),
(6, 2, 'Bitung'),
(7, 3, 'Pasang Kayu'),
(8, 3, 'Lalundu'),
(9, 4, 'Makasar'),
(10, 2, 'Pare-pare');

-- --------------------------------------------------------

--
-- Struktur dari tabel `provinsi`
--

CREATE TABLE `provinsi` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `provinsi`
--

INSERT INTO `provinsi` (`id`, `nama`) VALUES
(1, 'Sulawesi Tengah'),
(2, 'Sulawesi Utara'),
(3, 'Sulawesi Barat'),
(4, 'Sulawesi Selatan');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cabang`
--
ALTER TABLE `cabang`
  ADD PRIMARY KEY (`kode_cabang`);

--
-- Indeks untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`kode_jabatan`);

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`nik`),
  ADD KEY `kode_cabang` (`kode_cabang`),
  ADD KEY `kode_jabatan` (`kode_jabatan`);

--
-- Indeks untuk tabel `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kota`
--
ALTER TABLE `kota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `provinsi`
--
ALTER TABLE `provinsi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
