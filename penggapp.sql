-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Mar 2023 pada 01.06
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
-- Database: `penggapp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `masyarakat`
--

CREATE TABLE `masyarakat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` char(16) NOT NULL,
  `username` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `masyarakat`
--

INSERT INTO `masyarakat` (`id`, `nik`, `username`, `nama`, `email_verified_at`, `password`, `no_telp`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '1122334455667788', 'm1', 'masy', NULL, '$2y$10$N/tYR5E.4o36sEZgWBfdxOM85Ww3Ybfw.XI0fccXv5x5EjXYzsKmW', '081122334455', NULL, '2023-03-07 19:27:58', '2023-03-07 19:27:58'),
(2, '0099881122334477', 'mami', 'mami', NULL, '$2y$10$MAMy3PQsP4IEHI8/gBDWEO9YylHfJy5vB7l4TyeNJx8HRgABA/PaW', '0875278187', NULL, '2023-03-07 22:56:48', '2023-03-07 22:56:48'),
(3, '3478358239848932', 'bpk', 'bapak', NULL, '$2y$10$0jLcLXLw4JT.v5EcD85hzui/AneruJyJ9Y97Rif5FQ28xdDX2pf5C', '081324567898', NULL, '2023-03-07 23:09:28', '2023-03-07 23:09:28'),
(4, '1234567887654321', 'm2', 'm2', NULL, '$2y$10$xd227Pumt4QiQ7OTyKsRIe.jUEwTpbrJWrA5i5B5/gkSrVzFNLz3a', '098765431234', NULL, '2023-03-09 00:13:45', '2023-03-09 00:13:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_08_023215_create_masyarakat_table', 1),
(6, '2023_03_08_023408_create_pengaduan_table', 2),
(7, '2023_03_08_023539_create_tanggapan_table', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul_pengaduan` varchar(255) NOT NULL,
  `tanggal_pengaduan` date NOT NULL,
  `nik` char(16) NOT NULL,
  `isi_laporan` text NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `status` enum('0','proses','selesai') NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengaduan`
--

INSERT INTO `pengaduan` (`id`, `judul_pengaduan`, `tanggal_pengaduan`, `nik`, `isi_laporan`, `foto`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'aku capek', '2023-03-08', '1122334455667788', 'bisa gak kita ini ngerjakannya', 'uploads/berkas_pendukung\\1678246643-aku-capek-1678246643.jpg', 'selesai', NULL, '2023-03-07 19:37:23', '2023-03-07 22:46:50'),
(2, 'kebakaran', '2023-03-08', '0099881122334477', 'nah kan saya lewat, trus ada kebakaran. saya ngadu ke sini. tapi tempatnya udah hangus semua', 'uploads/berkas_pendukung\\1678258775-kebakaran-1678258775.jpg', 'selesai', NULL, '2023-03-07 22:59:35', '2023-03-07 23:01:50'),
(3, 'what color of the sky?', '2023-03-08', '3478358239848932', 'sambung lirik dong min', 'uploads/berkas_pendukung\\1678259442-what-color-of-the-sky-1678259442.jpg', 'selesai', NULL, '2023-03-07 23:10:42', '2023-03-08 17:02:08'),
(4, 'aku nyoba', '2023-03-09', '1122334455667788', 'trhfhdrehrdeh', 'uploads/berkas_pendukung\\1678326827-aku-nyoba-1678326827.png', 'selesai', NULL, '2023-03-08 17:53:47', '2023-03-08 18:14:03'),
(5, 'kenapa yah ini kok ribet sekali', '2023-03-09', '0099881122334477', 'mengapa masih ada', 'uploads/berkas_pendukung\\1678345595-kenapa-yah-ini-kok-ribet-sekali-1678345595.png', 'selesai', NULL, '2023-03-08 23:06:35', '2023-03-08 23:08:25'),
(6, 'mati air', '2023-03-09', '3478358239848932', 'tolong ditindaklanjuti', 'uploads/berkas_pendukung\\1678348938-mati-air-1678348938.jpg', 'selesai', NULL, '2023-03-09 00:02:18', '2023-03-09 00:04:32'),
(7, 'banjir', '2023-03-09', '3478358239848932', 'dsufeger', 'uploads/berkas_pendukung\\1678349213-banjir-1678349213.jpg', '0', NULL, '2023-03-09 00:06:53', '2023-03-09 00:06:53'),
(8, 'sembarang', '2023-03-09', '1234567887654321', 'wsedfghbj', 'uploads/berkas_pendukung\\1678349682-sembarang-1678349682.jpg', 'selesai', NULL, '2023-03-09 00:14:42', '2023-03-09 00:15:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `nama_petugas` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `level` enum('admin','petugas') NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id`, `username`, `nama_petugas`, `email_verified_at`, `password`, `no_telp`, `level`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(12300, 'adm', 'adm', NULL, '12345678', '089977665522', 'admin', NULL, '2023-03-07 22:46:15', NULL, '2023-03-07 22:46:15'),
(12301, 'admin', 'adm1', NULL, '$2y$10$E/aGMtFcDb9SPEA6MIZnAeaXFFsto/StocOXhZOL6b3pTvOLgjzPW', '089944337755', 'admin', NULL, NULL, '2023-03-07 22:42:20', '2023-03-07 22:42:20'),
(12302, 'petugas', 'ptgs', NULL, '$2y$10$7qhHsY64BPNS06wR.grEj.hDKxyCotczIc8y7bsjpmJlQXYgrALmq', '087765423477', 'petugas', NULL, '2023-03-08 22:46:14', '2023-03-07 22:47:55', '2023-03-08 22:46:14'),
(12303, 'jen', 'jennie', NULL, '$2y$10$UvD78nR4mSDBe98pYIj8C.8lGRlPXb.OapEbpC/m3HmqBupdiV11W', '099875432311', 'petugas', NULL, NULL, '2023-03-08 18:13:27', '2023-03-08 18:13:27'),
(12304, 'a2', 'a2', NULL, '$2y$10$5hMIvcEVfKfB4naUz5Z1Puvf7/1zg3iJKwYGI2osBvUChLy3tF4Eq', '087711225599', 'admin', NULL, '2023-03-08 21:58:32', '2023-03-08 21:56:57', '2023-03-08 21:58:32'),
(12305, 'p2', 'p2', NULL, '$2y$10$OJ2/ex7X6gIJ5NxMywd8uukD83CD.BQmx5WT67.wg9fIkMh84Gpzi', '081177559980', 'petugas', NULL, NULL, '2023-03-08 22:47:30', '2023-03-08 22:47:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tanggapan`
--

CREATE TABLE `tanggapan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_pengaduan` bigint(20) UNSIGNED NOT NULL,
  `tanggal_tanggapan` date NOT NULL,
  `tanggapan` text NOT NULL,
  `id_petugas` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tanggapan`
--

INSERT INTO `tanggapan` (`id`, `id_pengaduan`, `tanggal_tanggapan`, `tanggapan`, `id_petugas`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-03-08', 'kalau capek ya minum baigon, gitu aja kok repot', 12301, NULL, '2023-03-07 22:46:50', '2023-03-07 22:46:50'),
(2, 2, '2023-03-08', 'kalau pengaduannya kayak gitu, daripada nunggu respon admin yekan. mending telepon nomor pemadam kebakaran', 12302, NULL, '2023-03-07 23:01:49', '2023-03-07 23:01:49'),
(3, 3, '2023-03-09', 'test', 12302, NULL, '2023-03-08 17:02:08', '2023-03-08 17:02:08'),
(4, 4, '2023-03-09', 'gak bisa bhs inggris', 12301, NULL, '2023-03-08 18:14:03', '2023-03-08 18:14:03'),
(5, 5, '2023-03-09', 'meh', 12301, NULL, '2023-03-08 23:08:25', '2023-03-08 23:08:25'),
(6, 6, '2023-03-09', 'oke nyala', 12305, NULL, '2023-03-09 00:04:32', '2023-03-09 00:04:32'),
(7, 8, '2023-03-09', 'oke', 12301, NULL, '2023-03-09 00:15:25', '2023-03-09 00:15:25');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `masyarakat`
--
ALTER TABLE `masyarakat`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `masyarakat_nik_unique` (`nik`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `petugas_username_unique` (`username`);

--
-- Indeks untuk tabel `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tanggapan_id_pengaduan_foreign` (`id_pengaduan`),
  ADD KEY `tanggapan_id_petugas_foreign` (`id_petugas`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `masyarakat`
--
ALTER TABLE `masyarakat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12306;

--
-- AUTO_INCREMENT untuk tabel `tanggapan`
--
ALTER TABLE `tanggapan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD CONSTRAINT `tanggapan_id_pengaduan_foreign` FOREIGN KEY (`id_pengaduan`) REFERENCES `pengaduan` (`id`),
  ADD CONSTRAINT `tanggapan_id_petugas_foreign` FOREIGN KEY (`id_petugas`) REFERENCES `petugas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
