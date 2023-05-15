-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Apr 2023 pada 11.19
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbtoko`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_produk`
--

CREATE TABLE `kategori_produk` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `kategori_produk`
--

INSERT INTO `kategori_produk` (`id`, `nama`) VALUES
(1, 'Elektronik'),
(2, 'Furniture'),
(3, 'Makanan'),
(4, 'Minuman');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nama_pemesan` varchar(45) NOT NULL,
  `alamat_pemesan` varchar(45) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `email` varchar(45) NOT NULL,
  `jumlah_pesanan` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `produk_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`id`, `tanggal`, `nama_pemesan`, `alamat_pemesan`, `no_hp`, `email`, `jumlah_pesanan`, `deskripsi`, `produk_id`) VALUES
(1, '2023-04-05', 'Hanna Anggraini', 'Jl. Grogol Sebrang', '0895321401366', 'hannaanggraini0610@gmail.com', 2, 'tambah keamananan barang.', 5),
(3, '2023-04-30', 'kyu', 'Jl. Sakura', '089533333333', 'hannaanggraini1506@gmail.com', 3, 'yayaya', 13),
(8, '2023-04-11', 'rai', 'yayaya', '08000000', 'hannaanggraini0606@gmail.com', 3, 'waw', 15),
(9, '2334-11-11', 'noi', 'jl. gembel', '08999999', 'hannaanggraini@gmail.com', 8, 'waw', 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `kode` varchar(45) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `harga_jual` double NOT NULL,
  `harga_beli` double NOT NULL,
  `stok` int(11) NOT NULL,
  `min_stok` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `kategori_produk_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `kode`, `nama`, `harga_jual`, `harga_beli`, `stok`, `min_stok`, `deskripsi`, `kategori_produk_id`) VALUES
(1, 'AC01', 'AC', 4000000, 3500000, 10, 5, 'AC atau air conditioner merupakan perangkat elektronik yang berfungsi sebagai pendingin ruangan ini menjadi solusi jitu mengatasi udara yang panas.', 1),
(2, 'MB01', 'Meja Belajar', 2000000, 1500000, 6, 2, 'Meja yang difungsikan untuk membaca, menulis, dan yang pasti untuk belajar.', 2),
(3, 'KK03', 'Koko Krunch', 40000, 35000, 15, 5, 'sereal sarapan gandum utuh rasa cokelat,						pengganti nasi untuk sarapan lebih cepat dan mengenyangkan.', 3),
(4, 'CC04', 'Coca Cola 1Box', 10000, 8000, 20, 5, 'Minuman Ringan bersoda dengan rasa menyegarkan,						cocok untuk cuaca panas dan teman nonton.', 4),
(5, 'TV01', 'Televisi', 6000000, 5500000, 8, 1, 'media massa yang sangat efektif dan terjangkau bagi masyarakat.					 	Televisi bisa mengerutkan dunia dan melaksanakan penyebaran berita dan gagasan lebih cepat.', 1),
(6, 'SM02', 'Set Meja Makan', 7000000, 6500000, 5, 1, 'Set meja makan yang cocok untuk makan bersama keluarga.							Kursi dan meja yang sangat nyaman dengan kualitas terbaik.', 2),
(7, 'KG03', 'Khong Guan Biscuits', 40500, 35000, 20, 2, 'Biskuit enak yang sudah lama dikenal di seluruh indonesia.						teman ngopi di pagi hari.', 3),
(8, 'MZ04', 'Mizone', 7500, 6500, 15, 1, 'Mizone adalah pilihan yang tepat untuk mengembalikan cairan tubuh kamu.						yang hilang akibat olahraga dan membantu pembentukan energi.', 4),
(9, 'KS01', 'Kulkas', 5000000, 4800000, 7, 2, 'peralatan elektronik untuk menyimpan bahan makanan. 						Bahan makanan menjadi lebih rapi dan tahan lama di kulkas.', 1),
(10, 'LB02', 'Lemari Baju', 8000000, 7600000, 9, 1, 'tempat untuk menyimpan pakaian supaya terorganisir dan bersih.', 2),
(11, 'DM03', '1 Dus Indomie', 70000, 68500, 35, 2, 'Makanan paling di gemari. Rasa yang enak dan menyegarkan. 					Cocok dimakan dengan berbagai topping.', 3),
(12, 'TP04', 'Teh Pucuk 1Ltr', 10000, 9000, 30, 2, 'Minuman teh yang segar hadir dalam kemasan 1 Liter.', 4),
(13, 'MC01', 'Mesin Cuci', 4800000, 4500000, 10, 1, 'salah satu produk alat elektronik yang diinginkan 							karena dirasa dapat meringankan pekerjaan saat mencuci secara tradisional atau manual.', 1),
(14, 'SB02', 'Sofa Bed', 999000, 889000, 6, 1, 'Seperti namanya, Sofa bed ini 2 in 1. 							bisa menjadi sofa dan tempat tidur sekaligus.', 2),
(15, 'SK03', 'Sosis Kanzler 1Box', 88000, 70000, 40, 2, 'Sosis yang terasa dagingnya dan hadir dalam berbagai macam pilihan.', 3),
(16, 'SM4', 'Sirup Marjan', 185000, 14000, 40, 2, 'Sirup yang selalu hadir saat bulan puasa. 							Berbagai macam rasa yang menyegarkan.', 4);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kategori_produk`
--
ALTER TABLE `kategori_produk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama_UNIQUE` (`nama`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_UNIQUE` (`tanggal`),
  ADD KEY `fk_pesanan_produk1_idx` (`produk_id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_UNIQUE` (`kode`),
  ADD KEY `fk_produk_kategori_produk_idx` (`kategori_produk_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kategori_produk`
--
ALTER TABLE `kategori_produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `fk_pesanan_produk1` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `fk_produk_kategori_produk` FOREIGN KEY (`kategori_produk_id`) REFERENCES `kategori_produk` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
