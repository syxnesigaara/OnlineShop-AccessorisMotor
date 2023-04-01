-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 29 Bulan Mei 2019 pada 05.55
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `on_shop`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(15) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `fname`, `lname`, `address`, `email`, `password`, `type`) VALUES
(1, 'admin', 'user', 'Infinite Loop', 'admin@admin.com', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(15) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_desc` varchar(255) NOT NULL,
  `price` int(10) NOT NULL,
  `units` int(5) NOT NULL,
  `total` int(15) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `product_code`, `product_name`, `product_desc`, `price`, `units`, `total`, `date`, `email`) VALUES
(63, '03', 'Iphone X Adidas', 'Casing untuk iphone x versi adidas', 600, 1, 600, '2019-05-20 05:10:44', 'donnypramudia04@gmail.com'),
(64, '03', 'Iphone X Adidas', 'Casing untuk iphone x versi adidas', 600, 1, 600, '2019-05-20 05:30:41', 'donnypramudia04@gmail.com'),
(65, '01', 'Iphone X Pink', 'Casing untuk iphone x warna pink', 700, 1, 700, '2019-05-20 05:51:14', 'donnypramudia04@gmail.com'),
(66, '01', 'Iphone X Pink', 'Casing untuk iphone x warna pink', 700, 1, 700, '2019-05-20 08:58:43', 'donnypramudia04@gmail.com'),
(67, '07', 'Samsung S10 Hitam', 'Casing Samsung S10 warna hitam', 450, 2, 900, '2019-05-20 09:10:50', 'donnypramudia04@gmail.com'),
(68, '07', 'Samsung S10 Hitam', 'Casing Samsung S10 warna hitam', 450, 2, 900, '2019-05-20 09:12:24', 'donnypramudia04@gmail.com'),
(69, '14', 'Xiaomi S2', 'Casing xiaomi S2 warna hitam ', 100, 1, 100, '2019-05-20 12:25:36', 'donnypramudia04@gmail.com'),
(70, '01', 'Iphone X Pink', 'Casing untuk iphone x warna pink', 700000, 1, 700000, '2019-05-24 12:01:24', 'donnypramudia04@gmail.com'),
(72, '16', 'Xiaomi Mi A2', 'Casing xiaomi mi a2 warna biru dongkar', 130000, 1, 130000, '2019-05-27 06:24:15', 'donnypramudia04@gmail.com'),
(73, '01', 'Iphone X Pink', 'Casing untuk iphone x warna pink', 700000, 1, 700000, '2019-05-28 05:02:47', 'jojopsb@gmail.com'),
(74, '15', 'Xiaomi Note 6', 'Casing xiaomi note 6 motif carbon', 140000, 1, 140000, '2019-05-28 06:59:46', 'jojopsb@gmail.com'),
(75, '01', 'Iphone X Pink', 'Casing untuk iphone x warna pink', 700000, 1, 700000, '2019-05-28 07:00:32', 'jojopsb@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `payment`
--

CREATE TABLE `payment` (
  `id` int(15) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_desc` varchar(255) NOT NULL,
  `price` int(10) NOT NULL,
  `units` int(5) NOT NULL,
  `total` varchar(15) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(255) NOT NULL,
  `payed` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `payment`
--

INSERT INTO `payment` (`id`, `product_code`, `product_name`, `product_desc`, `price`, `units`, `total`, `date`, `email`, `payed`) VALUES
(26, '03', 'Iphone X Adidas', 'Casing untuk iphone x versi adidas', 600, 1, '600', '2019-05-20 05:10:22', 'donnypramudia04@gmail.com', 'Yet to Pay'),
(27, '03', 'Iphone X Adidas', 'Casing untuk iphone x versi adidas', 600, 1, '600', '2019-05-20 05:31:24', 'donnypramudia04@gmail.com', 'Yet to Pay'),
(28, '01', 'Iphone X Pink', 'Casing untuk iphone x warna pink', 700, 1, '700', '2019-05-20 05:51:26', 'donnypramudia04@gmail.com', 'Yet to Pay'),
(29, '01', 'Iphone X Pink', 'Casing untuk iphone x warna pink', 700, 1, '700', '2019-05-20 08:59:41', 'donnypramudia04@gmail.com', 'Yet to Pay'),
(30, '07', 'Samsung S10 Hitam', 'Casing Samsung S10 warna hitam', 450, 2, '900', '2019-05-20 09:10:58', 'donnypramudia04@gmail.com', 'Online_Payment'),
(31, '07', 'Samsung S10 Hitam', 'Casing Samsung S10 warna hitam', 450, 2, '900', '2019-05-20 09:12:26', 'donnypramudia04@gmail.com', 'Yet to Pay'),
(32, '14', 'Xiaomi S2', 'Casing xiaomi S2 warna hitam ', 100, 1, '100', '2019-05-20 12:25:40', 'donnypramudia04@gmail.com', 'Yet to Pay'),
(33, '16', 'Xiaomi Mi A2', 'Casing xiaomi mi a2 warna biru dongkar', 130000, 1, '130000', '2019-05-27 06:24:37', 'donnypramudia04@gmail.com', 'Online_Payment'),
(34, '15', 'Xiaomi Note 6', 'Casing xiaomi note 6 motif carbon', 140000, 1, '140000', '2019-05-28 06:59:57', 'jojopsb@gmail.com', 'Online_Payment'),
(35, '01', 'Iphone X Pink', 'Casing untuk iphone x warna pink', 700000, 1, '700000', '2019-05-28 07:00:34', 'jojopsb@gmail.com', 'Yet to Pay');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_code` varchar(60) NOT NULL,
  `product_name` varchar(60) NOT NULL,
  `product_desc` tinytext NOT NULL,
  `product_img_name` varchar(60) NOT NULL,
  `qty` int(5) NOT NULL,
  `price` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `product_code`, `product_name`, `product_desc`, `product_img_name`, `qty`, `price`) VALUES
(1, '01', 'Iphone X Pink', 'Casing untuk iphone x warna pink', 'iphone2.jpeg', 64, 700000),
(2, '02', 'Iphone 6 Bening', 'Casing untuk iphone 6 warna transparan', 'iphone8.jpg', 71, 600000),
(3, '03', 'Iphone X Adidas', 'Casing untuk iphone x versi adidas', 'iphone4.png', 77, 600000),
(4, '04', 'Iphone 7', 'Casing untuk iphone 7', 'iphone7.jpg', 40, 500000),
(5, '05', 'Samsung S10 Brown', 'Casing untuk samsung s10 warna brown', 'samsungs10br.jpg', 100, 500000),
(6, '06', 'Samsung S9 ', 'Casing samsung s9', 'samsungs9.jpg', 70, 400000),
(7, '07', 'Samsung S10 Hitam', 'Casing samsung S10 warna hitam', 'samsungs10.jpg', 56, 450000),
(8, '08', 'Samsung S10 Blue', 'Casing samsung s10 warna biru', 'samsungs10b.jpg', 68, 500000),
(9, '09', 'Oppo A3S', 'Casing oppo A3S motif bunga-bunga', 'oppoa3s.jpg', 60, 125000),
(10, '10', 'Oppo F5', 'Casing oppo F5 warna hitam', 'oppof5.jpg', 40, 100000),
(11, '11', 'Oppo F9', 'Casing oppo F9 warna merah', 'oppof9.jpg', 67, 150000),
(12, '12', 'Oppo F9/F9 Pro', 'Casing oppo F9/F9 Pro ', 'oppof9pro.jpg', 56, 150000),
(13, '13', 'Xiaomi Note 4', 'Casing xiaomi note 4 + ring', 'xiaominote4.jpg', 45, 120000),
(14, '14', 'Xiaomi S2', 'Casing xiaomi S2 warna hitam ', 'xiaomis2.jpg', 39, 100000),
(15, '15', 'Xiaomi Note 6', 'Casing xiaomi note 6 motif carbon', 'xiaominote6.jpg', 41, 140000),
(16, '16', 'Xiaomi Mi A2', 'Casing xiaomi mi a2 warna biru dongkar', 'xiaomia2.jpg', 28, 130000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `review`
--

CREATE TABLE `review` (
  `name` varchar(35) NOT NULL,
  `surname` varchar(35) NOT NULL,
  `email` varchar(35) NOT NULL,
  `phone` varchar(35) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `review`
--

INSERT INTO `review` (`name`, `surname`, `email`, `phone`, `message`) VALUES
('Donny', 'Pramudia', 'donnypramudia04@gmail.com', '6281908464036', 'message'),
('Donny', 'Pramudia', 'donnypramudia04@gmail.com', '081908464036', 'message'),
('Donny', 'Pramudia', 'donnypramudia04@gmail.com', '081908464036', 'Mantap gan pelayanannya juga oke, apalagi gratis ongkir santuy, skuy living '),
('test', 'test', 'test@gmail.com', '6278654321', 'test'),
('jojo', 'psb', 'pasaribuj30@gmail.com', '62', 'thank'),
('Donny', 'Pramudia', 'donnypramudia04@gmail.com', '6281908464036', 'thankssssssssss'),
('Donny', 'Pramudia', 'donnypramudia04@gmail.com', '6281908464036', 'thankssssssssss');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `pin` int(6) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(15) NOT NULL,
  `phone_no` bigint(15) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `address`, `city`, `pin`, `email`, `password`, `phone_no`, `type`) VALUES
(1, 'First', 'User', 'Infinite Loop', '', 0, 'user@user.com', 'user', 0, 'user'),
(6, 'Donny', 'Donny', 'Kelapa Gading', 'Jakarta Utara', 1234, 'donnypramudia04@gmail.com', '1234', 6281908464036, 'user'),
(7, 'Jojo', 'Psb', 'Deket kampus perbanas institute jakarta', 'jakarta', 12345, 'jojopsb@gmail.com', '4321', 0, 'user');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code` (`product_code`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT untuk tabel `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
