-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Des 2021 pada 23.18
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tubes`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbcerita`
--

CREATE TABLE `tbcerita` (
  `id_cerita` int(5) NOT NULL,
  `id_user` int(5) NOT NULL,
  `id_wisata` int(5) NOT NULL,
  `cerita` varchar(500) CHARACTER SET latin1 NOT NULL,
  `foto` varchar(35) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbcerita`
--

INSERT INTO `tbcerita` (`id_cerita`, `id_user`, `id_wisata`, `cerita`, `foto`) VALUES
(1, 2, 2, 'Jadi ini aku ingin berbagi cerita pengalamanku di destinasi wisata alam Pantai Pulau Merah. Pantainya sangat indah dengan pemandangan ketika waktu sunset telah tiba begitu indahnya ciptaan Tuhan. Disana kita bisa memulai dan belajar untuk yang ingin berselancar atau surfing. Sekian ceritaku semoga bermanfaat. (Hendri Herlambang).', '2.jpg'),
(2, 3, 4, 'Sedikit cerita dari pengalamanku di bromo, wisata bromo sangat indah dengan hamparan lautan pasir yang luas dengan keindahan perbukitan dan gunung bromo yang menakjubkan. Medan yang dilalui sangat menantang dan seru, yaitu ketika melewati lautan pasir bromo dan ratusan anak tangga yang harus kita laluai untuk mencapai puncak bromo. Sungguh pengalaman yang tidak terlupakan.', '4.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbuser`
--

CREATE TABLE `tbuser` (
  `id_user` int(5) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `umur` int(2) NOT NULL,
  `jenis_kelamin` char(1) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `email` varchar(35) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbuser`
--

INSERT INTO `tbuser` (`id_user`, `nama`, `umur`, `jenis_kelamin`, `alamat`, `email`, `username`, `password`) VALUES
(1, 'Deki Firmansyah', 19, 'L', 'Jl. Dewantara No. 22 Lumajang', '', 'admin', '123abc'),
(2, 'Hendri Herlambang', 23, 'L', 'Jl. Candramas No. 45 Banyumas', 'hendriherlambang12@gmail.com', 'hendri12', 'hendri21'),
(3, 'Desi Putri', 21, '', 'Jl. Kemuning No. 89 Surabaya', 'desiputri89@gmail.com', 'desi01', 'desi10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbwisata`
--

CREATE TABLE `tbwisata` (
  `id_wisata` int(5) NOT NULL,
  `nama` varchar(35) CHARACTER SET latin1 NOT NULL,
  `kategori` varchar(35) CHARACTER SET latin1 NOT NULL,
  `alamat` varchar(100) CHARACTER SET latin1 NOT NULL,
  `keterangan` varchar(650) CHARACTER SET latin1 NOT NULL,
  `foto` varchar(35) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbwisata`
--

INSERT INTO `tbwisata` (`id_wisata`, `nama`, `kategori`, `alamat`, `keterangan`, `foto`) VALUES
(2, 'Pantai Pulau Merah', 'Pantai', 'Pancer, Sumberagung, Kec. Pesanggaran, Kab. Banyuwangi.', 'Tiket masuk	: Mulai dari Rp 10.000-an/orang\r\nJam buka  :  24 Jam\r\nKeindahan utama yang dimiliki adalah pemandangan matahari tenggelam yang menyemburkan nuansa merah dan kekuningan menuju pergantian senja. Suara deburan ombaknya lembut dan cocok untuk menghilangkan penat di kepala setelah seharian bekerja. Selain itu Anda juga bisa melakukan olahraga air seperti selancar dan berbagai hal menarik lainnya.', 'Pantai Pulau Merah.jpg'),
(3, 'Pantai G Land', 'Pantai', 'Desa Kalipait, Kec. Tegaldlimo, Kab. Banyuwangi.', 'Tiket masuk	: Rp 5.000/orang\r\nJam buka  :  06.00-17.00 WIB\r\nBagi Anda pecinta wisata bahari yang menantang, Pantai G Land cocok jadi rekomendasi. Memiliki nama lain pantai Plekung. Dijadikan sebagai tempat untuk melakukan olahraga selancar air karena ombaknya yang keras. Istimewanya lagi, Pantai G Land telah masuk dalam kawasan Taman Nasional Alas Purwo. Udaranya memang sangat sejuk, terlebih pemandangannya juga asri dan cantik.', 'Pantai G Land.jpg'),
(4, 'Gunung Bromo', 'Pegunungan', 'Probolinggo, Malang, Pasuruan', 'Tinggi : 2329 mdpl, Gunung Bromo merupakan salah satu gunung yang paling terkenal di Provinsi Jawa Timur. Gunung Bromo terletak di empat kabupaten yaitu Kabupaten Probolinggo, Kabupaten Pasuruan, Kabupaten Lumajang, dan Kabupaten Malang. Bagi penduduk setempat, Gunung Bromo merupakan gunung yang suci.', 'Gunung Bromo.jpg'),
(5, 'Gunung Ijen', 'Pegunungan', 'Kab. Banyuwangi', 'Tinggi : 2.368 mdpl. Gunung Ijen berada di ujung Jawa Timur dianatara perbatasan Banyuwangi dan Bondowoso. Di gunung ini kamu dapat melihat fenomena blue fire atau api biru yang hanya ada di Ijen. Tak heran banyak wisatawan lokal maupun mancanegara yang penasaran dan mengunjungi tempat ini.\r\nSelain itu jika kamu mendakinya pada dini hari, maka bukan hanya blue fire yang dapat kamu saksikan melainkan juga keindahan sunrise yang menakjubkan dari puncak ijen. ', 'Gunung Ijen.jpg'),
(6, 'Hutan Pinus Semeru', 'Hutan', 'Desa Sumberputih, Kecamatan Wajak, Kabupaten Malang', 'HPS cocok menjadi alternatif wisata bagi wisatawan yang bosan dengan wisata pantai atau wisata buatan di Malang. Terutama, bagi wisatawan yang sudah penat dengan problematika perkotaan. Terletak di ujung Kecamatan Wajak, hutan ini begitu rindang dan sejuk. Lokasinya yang terpencil membuat hutan lereng Gunung Semeru ini begitu sunyi dan cocok untuk membaca dan menenangkan diri.', 'Hutan Pinus Semeru.jpg'),
(7, 'Hutan Bambu Keputih', 'Hutan', 'Jl. Raya Marina Asri, Keputih, Sukolilo, Surabaya, Jawa Timur, Indonesia, 60111', 'Harga Tiket: GratisJam Buka: 24 Jam. Kebun Bambu Surabaya juga dikenal sebagai Kebun Bambu Keputih, karena lokasinya berada di Keputih. Kebun Bambu Keputih mengingatkan pada Sagano Bamboo Forest yang ada di Jepang. Berdiri di area 40 hektar, yang dibagi menjadi Hutan Bambu, Taman Harmoni, dan Taman Ruang Publik. Kebun Bambu Keputih menjadi pilihan tepat untuk menenangkan pikiran di tengah Kota Surabaya yang padat.', 'Hutan Bambu Keputih.jpg'),
(8, '', '', '', '', '.jpg'),
(9, '', '', '', '', '.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbcerita`
--
ALTER TABLE `tbcerita`
  ADD PRIMARY KEY (`id_cerita`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_wisata` (`id_wisata`);

--
-- Indeks untuk tabel `tbuser`
--
ALTER TABLE `tbuser`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `tbwisata`
--
ALTER TABLE `tbwisata`
  ADD PRIMARY KEY (`id_wisata`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbcerita`
--
ALTER TABLE `tbcerita`
  MODIFY `id_cerita` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbuser`
--
ALTER TABLE `tbuser`
  MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbwisata`
--
ALTER TABLE `tbwisata`
  MODIFY `id_wisata` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbcerita`
--
ALTER TABLE `tbcerita`
  ADD CONSTRAINT `tbcerita_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tbuser` (`id_user`),
  ADD CONSTRAINT `tbcerita_ibfk_2` FOREIGN KEY (`id_wisata`) REFERENCES `tbwisata` (`id_wisata`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
