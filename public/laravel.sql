-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Okt 2024 pada 14.03
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `album_kegiatans`
--

CREATE TABLE `album_kegiatans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`gambar`)),
  `nama_kegiatan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `beritas`
--

CREATE TABLE `beritas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Struktur dari tabel `informasi_berkalas`
--

CREATE TABLE `informasi_berkalas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori_informasi_berkala` varchar(255) NOT NULL,
  `judul_informasi_berkala` varchar(255) NOT NULL,
  `keterangan_informasi_berkala` text DEFAULT NULL,
  `file_informasi_berkala` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `informasi_berkalas`
--

INSERT INTO `informasi_berkalas` (`id`, `kategori_informasi_berkala`, `judul_informasi_berkala`, `keterangan_informasi_berkala`, `file_informasi_berkala`, `created_at`, `updated_at`) VALUES
(1, 'rpjmd', 'RPJMD PERUBAHAN 2008 - 2023', '<p>PERATURAN DAERAH PROV. SULSEL &nbsp;TENTANG RENCANA PEMBANGUNAN JANGKA MENENGAH DAERAH PROV. SULSEL TAHUN 2008 - 2023</p>', 'RPJMD PERUBAHAN 2008 - 2023_1721223248PERATURAN_DAERAH_PROV__SULSEL_NO__1_TAHUN_2021_TENTANG_RPJMD_PROV__SULSEL_TAHUN_2018_-2023(1).pdf', '2024-07-17 04:12:37', '2024-07-17 05:34:08'),
(2, 'rpjmd', 'RPJMD 2024 - 2026', '<p>PERATURAN GUBERNUR SULSEL NO 13 TAHUN 2023 TENTANG RENCANA PEMBANGUNAN DAERAH PROV. SULSEL TAHUN 2023 - 2026</p>', 'RPJMD 2024 - 2026_1721218659PERGUB_NO__13_TAHUN_2023_TENTANG_RENCANA_PEMBANGUNAN_DAERAH_(_RPD_)_SULSEL_TAHUN_2024_-_2026_(-_-).pdf', '2024-07-17 04:17:39', '2024-07-17 04:17:39'),
(4, 'renstra', 'RENSTRA 2018-2019', '<p>RENCANA STRATEGI PERANGKAT DAERAH TAHUN2018 - 2019</p>', 'RENSTRA 2018-2019_1721223563renstra_2018_-_2023_(Final).pdf', '2024-07-17 04:24:33', '2024-07-17 05:39:23'),
(5, 'renstra', 'RENSTRA 2023 - 2026', '<p>RENSTRA &nbsp;2023 - 2026</p>', 'RENSTRA 2023 - 2026_1721223667RENSTRA_DKP_SULSEL_2024_2026.pdf', '2024-07-17 04:30:05', '2024-07-17 05:41:08'),
(6, 'renja', 'RENJA TAHUN 2019', '<p>RENCANA KERJA ( RENJA ) DINAS KELAUTAN DAN PERIKANAN PROVINSI SULAWESI SELATAN TAHUN 2019</p>', 'RENJA TAHUN 2019_1721219708RENJA_DKP_SULSEL_TAHUN_2019.pdf', '2024-07-17 04:35:08', '2024-07-17 04:35:08'),
(7, 'renja', 'RENJA PERUBAHAN 2019', '<p>RENJA PERUBAHAN DINAS KELAUTAN DAN PERIKANAN PROVINSI SULAWESI SELATAN MAKASSAR 2019</p>', 'RENJA PERUBAHAN 2019_1721220088RENJA_DKP_PERUBAHAN_2019.pdf', '2024-07-17 04:41:28', '2024-07-17 04:41:28'),
(8, 'renja', 'RENJA 2020', '<p>PENETAPAN RENCANA KERJA PERANGKAT DAERAH PROVINSI SULAWESI SELATAN 2020</p>', 'RENJA 2020_1721220310RENJA_DKP_SULSEL_TAHUN_2020_FINALLY.pdf', '2024-07-17 04:45:10', '2024-07-17 04:45:10'),
(9, 'renja', 'RENJA PERUBAHAN 2020', '<p>RENJA PERUBAHAN DINAS KELAUTAN DAN PERIKANAN PROVINSI SULAWESI SELATAN MAKASSAR 2020</p>', 'RENJA PERUBAHAN 2020_1721220615RENJA_DKP_SULSEL_TAHUN_2020_FINALLY.pdf', '2024-07-17 04:50:15', '2024-07-17 04:50:15'),
(10, 'renja', 'RENJA 2021', '<p>PENETAPAN RENCANA KERJA PERANGKAT DAERAH PROVINSI SULAWESI SELATAN TAHUN 2021</p>', 'RENJA 2021_1721221048RENJA_DKP_SULSEL_TAHUN_2021.pdf', '2024-07-17 04:57:28', '2024-07-17 04:57:28'),
(11, 'renja', 'RENJA 2022', '<p>PENETAPAN RENCANA KERJA PERANGKAT DAERAH PROVINSI SULAWESI SELATAN TAHUN 2022</p>', 'RENJA 2022_1721221207RENJA_DKP_TAHUN_2022_OK.pdf', '2024-07-17 05:00:07', '2024-07-17 05:00:07'),
(12, 'renja', 'RENJA 2023', '<p>PENETAPAN RENCANA KERJA PERANGKAT DAERAH PROVINSI SULAWESI SELATAN TAHUN 2023</p>', 'RENJA 2023_1721221279RENJA_DKP_TAHUN_2023_SDH_OK.pdf', '2024-07-17 05:01:19', '2024-07-17 05:01:19'),
(14, 'kua', 'KUA 2020', '<p>KEBIJAKAN ANGGARAN UMUM 202O</p>', 'KUA 2020_172122296520230914233724_1. Kebijakan Anggaran Umum (KUA) 2023.pdf', '2024-07-17 05:29:25', '2024-07-17 05:29:25'),
(15, 'kua', 'KUA 2021', '<p>KEBIJAKAN ANGGARAN UMUM 2021</p>', 'KUA 2021_172122300220230914233724_1. Kebijakan Anggaran Umum (KUA) 2023.pdf', '2024-07-17 05:30:02', '2024-07-17 05:30:02'),
(16, 'kua', 'KUA 2022', '<p>KEBIJAKAN ANGGARAN UMUM 2022</p>', 'KUA 2022_172122303620230914233724_1. Kebijakan Anggaran Umum (KUA) 2023.pdf', '2024-07-17 05:30:36', '2024-07-17 05:30:36'),
(17, 'kua', 'KUA 2023', '<p>KEBIJAKAN ANGGARAN UMUM 2023</p>', 'KUA 2023_172122307620230914233724_1. Kebijakan Anggaran Umum (KUA) 2023.pdf', '2024-07-17 05:31:16', '2024-07-17 05:31:16'),
(18, 'rpjmd', 'RMJD PERUBAHAN 2008-2010', '<p>PERATURAN DAERAH PROV. SULSEL &nbsp;TENTANG RENCANA PEMBANGUNAN JANGKA MENENGAH DAERAH PROV. SULSEL TAHUN 2008 - 2010</p>', 'RMJD PERUBAHAN 2008-2010_1721223277PERATURAN_DAERAH_PROV__SULSEL_NO__1_TAHUN_2021_TENTANG_RPJMD_PROV__SULSEL_TAHUN_2018_-2023(1).pdf', '2024-07-17 05:32:48', '2024-07-17 05:34:37'),
(19, 'rpjmd', 'RPJMD PERUBAHAN 2011 -2015', '<p>PERATURAN DAERAH PROV. SULSEL &nbsp;TENTANG RENCANA PEMBANGUNAN JANGKA MENENGAH DAERAH PROV. SULSEL TAHUN 20011 - 2015</p>', 'RPJMD PERUBAHAN 2011 -2015_1721223332PERATURAN_DAERAH_PROV__SULSEL_NO__1_TAHUN_2021_TENTANG_RPJMD_PROV__SULSEL_TAHUN_2018_-2023(1).pdf', '2024-07-17 05:35:32', '2024-07-17 05:35:32'),
(20, 'rpjmd', 'RPJMD PERUBAHAN 2016 - 2020', '<p>PERATURAN DAERAH PROV. SULSEL &nbsp;TENTANG RENCANA PEMBANGUNAN JANGKA MENENGAH DAERAH PROV. SULSEL TAHUN 2016 - 2020</p>', 'RPJMD PERUBAHAN 2016 - 2020_1721223485PERATURAN_DAERAH_PROV__SULSEL_NO__1_TAHUN_2021_TENTANG_RPJMD_PROV__SULSEL_TAHUN_2018_-2023(1).pdf', '2024-07-17 05:36:43', '2024-07-17 05:38:05'),
(21, 'rpjmd', 'RPJMD PERUBAHAN 2021 - 2023', '<p>PERATURAN DAERAH PROV. SULSEL &nbsp;TENTANG RENCANA PEMBANGUNAN JANGKA MENENGAH DAERAH PROV. SULSEL TAHUN 2021 - 2023</p>', 'RPJMD PERUBAHAN 2021 - 2023_1721223454PERATURAN_DAERAH_PROV__SULSEL_NO__1_TAHUN_2021_TENTANG_RPJMD_PROV__SULSEL_TAHUN_2018_-2023(1).pdf', '2024-07-17 05:37:34', '2024-07-17 05:37:34'),
(22, 'renstra', 'RENSTRA 2020 - 2022', '<p>PERUBAHAN RENSTRA 2020 - 2022</p>', 'RENSTRA 2020 - 2022_1721223625renstra_2018_-_2023_(Final).pdf', '2024-07-17 05:40:25', '2024-07-17 05:40:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontaks`
--

CREATE TABLE `kontaks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subjek` varchar(255) NOT NULL,
  `pesan` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_13_031356_create_beritas_table', 1),
(6, '2023_11_13_062411_create_profils_table', 1),
(7, '2023_11_13_064145_create_album_kegiatans_table', 1),
(8, '2023_11_13_070556_create_video_kegiatans_table', 1),
(9, '2023_11_13_131833_create_pengumumen_table', 1),
(10, '2023_11_13_145656_create_pengaduans_table', 1),
(11, '2023_11_13_153953_create_surveis_table', 1),
(12, '2023_11_13_191018_create_ppids_table', 1),
(13, '2023_11_15_075354_create_pejabats_table', 1),
(14, '2023_11_16_035811_create_informasi_berkalas_table', 1),
(15, '2023_11_16_060738_create_serta_mertas_table', 1),
(16, '2023_11_16_061241_create_ssses_table', 1),
(17, '2023_11_17_112538_create_kontaks_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pejabats`
--

CREATE TABLE `pejabats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profil_pdf` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pejabats`
--

INSERT INTO `pejabats` (`id`, `profil_pdf`, `nama_lengkap`, `jabatan`, `created_at`, `updated_at`) VALUES
(1, '1721209595_CV-ILYAS-06032022.pdf', 'Dr. M. Ilyas, ST., MSc', 'KEPALA DINAS', '2024-07-17 01:46:35', '2024-07-17 01:46:35'),
(3, '1721209666_Sekretaris_Dinas.pdf', 'H. Suhartono Nurdin, S.Pi., M.P., Ph.D.', 'SEKRETARIS', '2024-07-17 01:47:46', '2024-07-17 01:47:46'),
(4, '1721209925_Profil_Kepala_Bidang_Perikanan_Budidaya_dan_Daya_Saing_Produk_Kelautan_dan_perikanan1.pdf', 'Ir, Hardi, MM', 'PROFIL KEPALA BIDANG PERIKANAN BUDIDAYA DAN DAYA SAING PRODUK KELAUTAN DAN PERIKANAN', '2024-07-17 01:49:25', '2024-07-17 01:52:05'),
(5, '1721210019_BIODATA_Bidang_Tangkap.pdf', 'ANDI MEI AGUNG, S.ST.Pi, M.Si', 'KEPALA BIDANG PERIKANAN TANGKAP', '2024-07-17 01:53:39', '2024-07-17 01:53:39'),
(6, '1721210089_BIODATA_KABID_PSDKP.pdf', 'Ir. Hary Rustam Tawainella, MM', 'KEPALA BIDANG PENGAWASAN SUMBERDAYA KELAUTAN DAN PERIKANAN', '2024-07-17 01:54:49', '2024-07-17 01:54:49'),
(7, '1721210163_Biodata_Kacab_Ajatappareng.pdf', 'Sukmawati Gaffar, S.STPi,MSi', 'KEPALA CDK AJATAPPARENG', '2024-07-17 01:56:03', '2024-07-17 01:56:03'),
(8, '1721210272_Biodata_CDK_Bosowasi.pdf', 'Herimisniaty,S,Pi.,M.S', 'KEPALA CDK BOSOWASI', '2024-07-17 01:57:08', '2024-07-17 01:57:52'),
(9, '1721210348_DAFTAR_RIWAYAT_HIDUP_NEW.pdf', 'Ir. ABD. KHALIK, MM.', 'KEPALA CDK LUWU RAYA', '2024-07-17 01:59:08', '2024-07-17 01:59:08'),
(10, '1721210437_Profil_Kepala_UPT_BPMPP1.pdf', 'Dr. Siti Zaleha Soebarini, A.Pi., M.Si', 'KEPALA UPT BPMPP', '2024-07-17 02:00:37', '2024-07-17 02:00:37'),
(11, '1721210513_Biodata_Kepala_CDK_Wilayah_Selatan.pdf', 'A.M. Suhriawan S, S.STP, MM', 'KEPALA CDK WILAYAH SELATAN', '2024-07-17 02:01:53', '2024-07-17 02:01:53'),
(12, '1721210653_Biodata_Kepala_CDK_Wilayah_Selatan.pdf', 'Abdul KAdir,S.Pi.,M.Si', 'BIODATA KEPALA CDK PANGKEP', '2024-07-17 02:04:13', '2024-07-17 02:04:13'),
(13, '1721210928_Biodata_Kepala_UPT_PBAPL.pdf', 'Ir. Basri, MP', 'KEPALA UPT PBAPL', '2024-07-17 02:08:48', '2024-07-17 02:08:48'),
(14, '1721211055_Biodata_Kabid_Penataan_Ruang_Laut_Pesisir_dan_Pulau-Pulau_Kecil.pdf', 'Dr. Hj SITTI MASNIAH DJABIR S.Pi., M.P.', 'BIODATA KABID PENATAAN RUANG LAUT PESISIR DAN PULAU-PULAU KECIL', '2024-07-17 02:10:55', '2024-07-17 02:10:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaduans`
--

CREATE TABLE `pengaduans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_pelapor` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `no_telp` varchar(255) DEFAULT NULL,
  `tgl_kejadian` varchar(255) DEFAULT NULL,
  `lokasi_kejadian` varchar(255) DEFAULT NULL,
  `deskripsi_kejadian` text DEFAULT NULL,
  `jenis_keluhan` varchar(255) DEFAULT NULL,
  `detail_keluhan` text DEFAULT NULL,
  `file_pengaduan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengaduans`
--

INSERT INTO `pengaduans` (`id`, `nama_pelapor`, `alamat`, `no_telp`, `tgl_kejadian`, `lokasi_kejadian`, `deskripsi_kejadian`, `jenis_keluhan`, `detail_keluhan`, `file_pengaduan`, `created_at`, `updated_at`) VALUES
(1, 'Lisa Anriani', 'Gowa', '0895806346229', '2024-07-17', 'Barombong', NULL, 'Ikan banyak yang mati', 'para nelayan mengeluh Ikan banyak yang mati di sekitaran barombong', '1721225844_Sekretaris_Dinas.pdf', '2024-07-17 06:17:24', '2024-07-17 06:17:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengumumen`
--

CREATE TABLE `pengumumen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(255) NOT NULL,
  `judul_pengumuman` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ppids`
--

CREATE TABLE `ppids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ppids`
--

INSERT INTO `ppids` (`id`, `kategori`, `isi`, `created_at`, `updated_at`) VALUES
(1, 'visiMisi', '<figure class=\"table\"><table><tbody><tr><td><h2><strong>VISI</strong></h2><p>Menjadi penggerak utama keterbukaan informasi publik&nbsp;di bidang Kelautan dan Perikanan.</p><p>&nbsp;</p></td><td><h2><strong>MISI</strong></h2><ol><li>Menyediakan informasi publik yang akurat dan dapat dipertanggung jawabkan.</li><li>Memberikan layanan informasi publik&nbsp;yang cepat, tepat waktu dan sederhana.</li><li>Memastikan pengelolaan layanan informasi publik&nbsp;didukung oleh Sumber Daya Manusia&nbsp; yang&nbsp; professional dan berintegritas.</li></ol></td></tr></tbody></table></figure>', '2024-07-17 06:29:54', '2024-07-17 06:29:54'),
(2, 'tugasFungsi', '<figure class=\"table\"><table><tbody><tr><td><h2><strong>TUGAS</strong></h2><p>Tujuan pelayanan informasi publik di lingkungan Dinas Kelautan dan Perikanan, meliputi:</p><ol><li>Terwujudnya komunikasi dua arah yang harmonis antara penyedia informasi publik dengan pemohon dan pengguna informasi publik;</li><li>Terwujudnya sistem pengintegrasian yang baik antara penyedia informasi publik dengan PPID dalam memberikan pelayanan informasi kepada publik.</li></ol><p>&nbsp;Prinsip pelayanan informasi publik meliputi:</p><ol><li>Informasi publik diberikan dengan mengedepankan prinsip mudah, cepat, dan sederhana;</li><li>Pelayanan informasi publik dilaksanakan melalui satu pintu;</li><li>Penyajian informasi publik yang diberikan kepada pemohon, menyesuaikan dengan jenis dan format yang disediakan PPID</li></ol><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jenis informasi publik di lingkungan Dinas Kelautan dan Perikanan Provinsi Sulawesi Selatan meliputi diantaranya informasi publik yang tersedia setiap saat; informasi publik yang diumumkan secara serta merta; informasi publik yang diumumkan secara berkala; dan informasi publik yang dikecualikan.</p></td><td><h2><strong>FUNGSI</strong></h2><ol><li>Menyediakan dan mengamankan informasi publik;</li><li>Memberikan pelayanan informasi publik yang cepat, tepat, dan sederhana;</li><li>&nbsp;Menyampaikan pemberitahuan tertulis atas permohonan informasi publik kepada pemohon informasi publik;</li></ol><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p></td></tr></tbody></table></figure>', '2024-07-17 06:33:43', '2024-07-17 06:34:09'),
(3, 'maklumat', '<p><strong>PPID Pembantu Dinas Kelautan Dan Perikanan Provisi Sulawesi Selatan berupaya memberikan Pelayanan Informasi Publik dan berkomitmen untuk :</strong></p><ul><li>Memberikan pelayanan informasi yang prima berdasarkan Undang‐Undang No 14 Tahun 2008 tentang Keterbukaan Informasi Publik dan juga turut mewujudkan misi Pemerintah Provinsi Sulawesi Selatan yang berorientasi pada pelayanan publik;</li><li>Memberikan kemudahan kepada publik dalam mendapatkan informasi yang diperlukan dengan murah dan sederhana;</li><li>Menyediakan dan memberikan informasi publik yang dikuasai secara akurat, benar dan tidak menyesatkan;</li><li>Menyediakan daftar informasi publik untuk informasi yang wajib disediakan dan diumumkan;</li><li>Bertindak proaktif dalam memenuhi kebutuhan informasi masyarakat serta menjamin seluruh informasi publik dan fasilitas pelayanan sesuai dengan ketentuan yang berlaku;</li><li>Menyiapkan ruang dan fasilitas yang nyaman dan tertata baik;</li><li>Bersikap adil, tidak diskriminatif dan berperilaku sopan santun dalam memberikan layanan informasi publik;</li><li>Menyiapkan petugas informasi yang berdedikasi dan siap melayani;</li><li>Tidak melakukan pungutan biaya yang tidak sesuai dengan ketentuan peraturan perundangan dalam memberikan layanan informasi publik.</li></ul>', '2024-07-17 06:35:03', '2024-07-17 06:35:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profils`
--

CREATE TABLE `profils` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `profils`
--

INSERT INTO `profils` (`id`, `kategori`, `isi`, `created_at`, `updated_at`) VALUES
(1, 'profilKami', '<figure class=\"image\"><img src=\"http://127.0.0.1:8000/storage/fileCkeditor/foto_kadis-transformed_1721211292.png\"></figure><h2><strong>Kepala Dinas</strong></h2><h4><strong>Dinas Kelautan dan Perikanan Prov. Sulawesi Selatan</strong></h4><p>&nbsp; &nbsp; &nbsp; &nbsp;Assalamu Alaikum Warahmatullahi Wabarakatuh&nbsp; Puji dan Syukur kehadirat Allah Subhanahu Wataala&nbsp; atas limpahan rahmatNyalah sehingga kami dapat menyediakan Website&nbsp;dkp.sulselprov.go.id&nbsp;sebagai wujud era keterbukaan informasi publik yang harus dilaksanakan oleh Dinas Provinsi Sulawesi Selatan.&nbsp;Website ini dibuat&nbsp; untuk menyediakan informasi seputar pelaksanaan program dan kegiatan Dinas &nbsp;Provinsi Sulawesi Selatan Wassalamu Alaikum Warahmatullahi Wabarakatuh.&nbsp;</p><h2><strong>Dr. M. ILYAS, ST, M.Sc.</strong></h2><p>&nbsp;</p><h2>&nbsp;</h2><p>&nbsp;</p>', '2024-07-17 02:20:41', '2024-07-17 03:41:09'),
(2, 'tugasFungsi', '<figure class=\"table\"><table><tbody><tr><td><h3><strong>TUGAS</strong></h3><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Adapun uraian tugas pokok dan fungsi jabatan pada struktural organisasi lingkup Dinas Kelautan dan Perikanan Provinsi Sulawesi Selatan sesuai Pergub 86 tahun 2016 adalah sebagai berikut :</p><p><strong>Tugas Pokok</strong></p><ul><li><strong>Kepala Dinas</strong></li></ul><p>Kepala Dinas mempunyai tugas pokok membantu Gubernur melaksanakan urusan pemerintahan bidang kelautan dan perikanan yang menjadi kewenangan daerah dan tugas pembantuan yang ditugaskan kepada Pemerintah Daerah.</p><ul><li><strong>Sekretaris</strong></li></ul><p>Sekretaris mempunyai tugas pokok membantu Kepala Dinas dalam mengoordinasikan kegiatan, memberikan pelayanan teknis dan administrasi penyusunan program, pelaporan, umum, kepegawaian, hukum, dan keuangan dalam lingkungan Dinas.</p><p><strong>Sub. Bagian Umum.&nbsp;Kepegawaian&nbsp;dan Hukum</strong></p><p>Kepala Subbagian Umum, Kepegawaian dan Hukum mempunyai tugas pokok membantu Sekretaris dalam melaksanakan urusan ketatausahaan, administrasi pengadaan, pemeliharaan dan penghapusan barang, urusan rumah tangga serta mengelola administrasi kepegawaian, dan hukum.</p><p><strong>Sub. Bagian Program</strong></p><p>Kepala Subbagian Program mempunyai tugas pokok membantu Sekretaris dalam mengumpulkan bahan dan mengelola penyusunan program, penyajian data dan penyusunan laporan kinerja.</p><p><strong>Sub. Bagian Keuangan</strong></p><p>Kepala Subbagian Keuangan mempunyai tugas pokok membantu Sekretaris dalam menghimpun bahan dan mengelola administrasi keuangan meliputi penyusunan anggaran, penggunaan, pembukuan, pertanggungjawaban dan pelaporan.</p><p><strong>Bidang&nbsp;Pengelolaan Dan Penataan Ruang Laut, Pesisir, dan Pulau-Pulau Kecil</strong>&nbsp;</p><p>Kepala Bidang mempunyai tugas pokok membantu Kepala Dinas dalam melaksanakan koordinasi, fasilitasi perumusan dan pelaksanaan kebijakan, evaluasi serta pelaporan di bidang pengelolaan dan penataan ruang laut, pesisir dan pulau-pulau kecil.</p><ol><li><strong>Bidang Perikanan Budidaya&nbsp;dan&nbsp; Daya Saing Produk Kelautan dan Perikanan</strong></li></ol><p>Kepala Bidang mempunyai tugas pokok membantu Kepala Dinas dalam melaksanakan koordinasi, fasilitasi perumusan dan pelaksanaan kebijakan, evaluasi serta pelaporan di bidangPerikanan Budidaya Dan Daya Saing Produk Kelautan dan Perikanan.</p><p><strong>Bidang&nbsp;Perikanan Tangkap</strong></p><p>Kepala Bidang Perikanan Tangkap mempunyai tugas pokok membantu Kepala Dinas dalam melaksanakan koordinasi, faslitasi perumusan dan pelaksanaan kebijakan, evaluasi serta pelaporan di bidang perikanan tangkap .</p><p><strong>Bidang Pengawasan dan Pengendalian Sumberdaya Kelautan dan Perikanan</strong></p><p>Kepala Bidang yang mempunyai tugas pokok membantu Kepala Dinas melaksanakan penyiapan koordiansi, fasilitas perumusan dan pelaksanaan kebijakan, evaluasi serta pelaporan di bidang Pengawasan Sumberdaya Kelautan Dan Perikanan.</p><p><strong>UPT Pelabuhan Perikanan Wilayah 1 dan 2</strong></p><p>Kepala UPT mempunyai tugas membantu Kepala Dinas dalam melaksanakan kegiatan pelayanan dan pengelolaan pemanfaatan sumber daya ikan, serta keselamatan operasional kapal perikanan</p><p><strong>Upt Balai Penerapan Mutu Produk Hasil Perikanan</strong></p><p>Kepala UPT mempunyai tugas membantu Kepala Dinas dalam melaksanakan kegiatan pelayananpengujian mutu dan keamanan produk perikanan, diversifikasi produk perikanan, dan pemenuhan persyaratan SNI produk perikanan.</p><p><strong>UPT&nbsp;PERIKANAN BUDIDAYA AIR PAYAU DAN LAUT</strong></p><p>Kepala UPT mempunyai tugas membantu Kepala Dinas dalam melaksanakan kegiatan pelayanan teknis operasional produksi dan pelayanan teknik budidaya ikan air payau dan laut, koordinasi teknis dengan jejaring pemuliaan ikan.</p><p><strong>CABANG DINAS KELAUTAN</strong></p><p>Dengan Peraturan Gubernur No.03 Tahun 2018 telah, dibentuk Cabang Dinas Kelautan, masing-masing:</p><ol><li>Cabang Dinas Kepulauan Selayar, Kelas A berkedudukan di&nbsp; Kabupaten Selayar yang meliputi wilayah kerja pelayanan Kabupaten Kepulauan Selayar;</li><li>Cabang Dinas Pangkajene dan Kepulauan, Kelas A berkedudukan di Kabupaten &nbsp;Pangkep yang meliputi wilayah kerja pelayanan KabupatenKepulauan Pangkajene dan Kepulauan;</li><li>Cabang Dinas Luwu Raya, Kelas A berkedudukan di Kota Palopo yang meliputi wilayah kerja pelayanan Kota Palopo, Kabupaten Luwu, Kabupaten Luwu Timur, Kabupaten Luwu Utara, Kabupaten Tana Toraja, dan Kabupaten Toraja Utara;</li><li>Cabang Dinas Ajatappareng, Kelas A berkedudukan di Kota Pare-Pare yang meliputi wilayah kerja pelayanan Kabupaten Barru, Kota Pare-Pare, Kabupaten Pinrang, Kabupaten Sidrap, dan Kabupaten Enrekang;</li><li>Cabang Dinas Bosowasi, Kelas A berkedudukan di Koabupaten Bone yang meliputi wilayah kerja pelayanan Kabupaten Bone, Kabupaten Soppeng, Kabupaten Wajo, dan Kabupaten Sinjai;</li><li>Cabang Dinas Wilayah Selatan, Kelas A berkedudukan di Kabupaten Bulukumba yang meliputi wilayah kerja pelayanan Kabupaten Jeneponto, Kabupaten Bantaeng, dan Kabupaten Bulukumba;</li><li>Cabang Dinas Wilayah Mamminasata, Kelas A berkedudukan di Kota Makassar yang meliputi wilayah kerja pelayanan Kota Makassar, Kabupaten Maros, Kabupaten Gowa, Kabupaten Takalar;</li></ol><p>Kepala Cabang Dinas mempunyai tugas membantu Kepala Dinas dalam melaksanakan sebagian urusan pemerintahan di bidang Kelautan dan Perikanan yang menjadi kewenangan daerah berdasarkan pelimpahan kewenangan dari Gubernur berdasarkan wilayah kerja.</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p></td><td><h2><strong>Fungsi</strong></h2><p><strong>Kepala Dinas</strong></p><p>Kepala Dinas dalam melaksanakan tugas sebagaimana dimaksud menyelenggarakan fungsi :</p><ol><li>Perumusan kebijakan urusan pemerintahan bidang kelautan dan perikanan;</li><li>Pelaksanaan kebijakan urusan pemerintahan bidang kelautan dan perikanan;</li><li>Pelaksanaan evaluasi dan pelaporan urusan pemerintahan bidang kelautan dan perikanan;</li><li>Pelaksanaan administrasi Dinas; dan</li><li>Pelaksanaan fungsi lain yang diberikan oleh Gubernur terkait tugas dan fungsinya.</li></ol><p><strong>Sekretaris</strong></p><p>Untuk melaksanakan tugas&nbsp; Sekretaris menyelenggarakan fungsi :</p><ul><li>pengoordinasian pelaksanaan tugas dalam lingkungan dinas;</li><li>Pengoordinasian penyusunan program dan pelaporan;</li><li>Pengoordinasian urusan umum, kepegawaian, dan hukum;</li><li>Pengoordinasian pengelolaan administrasi keuangan; dan</li><li>Pelaksanaan tugas kedinasan lain sesuai bidang tugasnya.</li></ul><p><strong>Sub Bagian Umum, Kepegawaian&nbsp;dan Hukum</strong></p><p>Untuk melaksanakan tugas&nbsp; KepalaSub Bagian Umum, Kepegawaian dan Hukum menyelenggarakan fungsi :</p><ol><li>Pengoordinasian urusan umum, kepegawaian, dan hukum;</li><li>Melaksanakan tugas kedinasan lain yang diperintahkan atasan sesuai bidang tugasnya.</li></ol><p><strong>Sub Bagian Program</strong></p><p>Untuk melaksanakan tugas&nbsp; KepalaSub Bagian Program menyelenggarakan fungsi</p><ul><li>Pengoordinasian penyusunan program dan pelaporan;</li><li>Melaksanakan tugas kedinasan lain yang diperintahkan atasan sesuai bidang tugasnya.</li></ul><p><strong>Sub Bagian Keuangan</strong></p><p>Untuk melaksanakan tugas&nbsp; KepalaSub Bagian Keuangan menyelenggarakan fungsi :</p><ul><li>Pengoordinasian pengelolaan administrasi keuangan;</li><li>Melaksanakan tugas kedinasan lain yang diperintahkan atasan sesuai bidang tugasnya.</li></ul><p>&nbsp;<strong>Bidang&nbsp;Pengelolaan Dan Penataan Ruang Laut, Pesisir, dan Pulau-Pulau Kecil</strong></p><p>Kepala Bidang Pengelolaan dan Penataan Ruang Laut, Pesisir dan Pulau-Pulau Kecil dalam melaksanakan tugas menyelenggarakan fungsi sebagai berikut :</p><ol><li>Perumusan kebijakan di bidang Pengelolaan Dan Penataan Ruang Laut, Pesisir, dan Pulau-Pulau Kecil;</li><li>Pelaksanaan kebijakan di bidang Pengelolaan Dan Penataan Ruang Laut, Pesisir, dan Pulau-Pulau Kecil;</li><li>Penyusunan norma, standar, prosedur, dan kriteria dibidang Pengelolaan Dan Penataan Ruang Laut, Pesisir, Dan Pulau-Pulau Kecil;</li><li>Pelaksanaan evaluasi dan pelaporan di bidang Pengelolaan Dan Penataan Ruang Laut, Pesisir, Dan Pulau-Pulau Kecil;</li><li>Pelaksanaan administrasi Bidang Pengelolaan Dan Penataan Ruang Laut, Pesisir, Dan Pulau-Pulau Kecil; dan</li><li>Pelaksanaan tugas kedinasan lain sesuai bidang tugasnya.</li></ol><p>&nbsp;<strong>Bidang Perikanan Budidaya&nbsp;dan Daya Saing Produk Kelautan dan Perikanan</strong></p><p>Kepala Bidang Perikanan Budidaya dan Daya Saing Produk Kelautan dan Perikanan dalam melaksanakan tugas menyelenggarakan fungsi sebagai berikut :</p><ol><li>perumusan kebijakan di Bidang Perikanan Budidaya Dan Daya Saing Produk Kelautan dan Perikanan;</li><li>pelaksanaan kebijakan di Bidang Perikanan Budidaya Dan Daya Saing Produk Kelautan dan Perikanan;</li><li>penyusunan norma, standar, prosedur, dan kriteria di Bidang Perikanan Budidaya dan Daya Saing Produk Kelautan Dan Perikanan;</li><li>pelaksanaan pembinaan teknis dan supervisi di Bidang Perikanan Budidaya dan Daya Saing Produk Kelautan Dan Perikanan;</li><li>pelaksanaan koordinasi, fasilitasi perumusan dan pelaksanaan kebijakan,&nbsp; pelaksanaan penerbitan Surat Izin Usaha Perikanan (SIUP) di bidang pembudidayaan ikan, pemasaran, dan pengolahan hasil perikanan yang usahanya lintas daerah kabupaten/kota dalam 1 (satu) daerah provinsi.</li><li>penguatan daya saing dan sistem logistik produk kelautan dan perikanan serta peningkatan keberlanjutan usaha kelautan dan perikanan</li><li>pelaksanaan evaluasi serta pelaporan di bidang Perikanan Budidaya Dan Daya Saing Produk Kelautan Dan Perikanan;</li><li>pelaksanaan administrasi Bidang Perikanan Budidaya dan Daya Saing Produk Kelautan dan Perikanan ; dan</li><li>pelaksanaan fungsi lain yang diberikan oleh Kepala Dinas.</li></ol><p>&nbsp;<strong>Bidang&nbsp;Perikanan Tangkap</strong></p><p>Kepala Bidang Perikanan Tangkap dalam melaksanakan tugas menyelenggarakan fungsi sebagai berikut :</p><ol><li>perumusan dan pelaksanaan kebijakan dibidang Perikanan Tangkap;</li><li>penyusunan norma, standar, prosedur, dan kriteria dibidang Perikanan Tangkap;</li><li>pelaksanaan penyiapan pengelolaan, penangkapan ikan diwilayah laut sampai dengan 12 mil, pembinaan dan penguatan kenelayanan;</li><li>pelaksanaan penyiapan rekomendasi untuk penerbitan Surat Izin Usaha Perikanan (SIUP), Surat Izin Penangkapan Ikan (SIPI), dan Surat Izin Kapal Pengangkut Ikan (SIKPI), Pemasangan Rumpon,&nbsp; dan penerbitan buku kapal perikanan 5 GT sampai dengan 30 GT ,</li><li>pelaksanaan penyiapan rekomendasi untuk penerbitan izin lokasi pembangunan serta pengelolaan pelabuhan perikanan kewenangan provinsi;</li><li>pelaksanaan pembinaan, pengaturan, penguatan di bidang Perikanan Tangkap;</li><li>pelaksanaan evaluasi dan pelaporan di bidang Perikanan Tangkap;</li><li>pelaksanaan administrasi Bidang Perikanan Tangkap ; dan</li><li>pelaksanaan tugas kedinasan&nbsp; lain sesuai bidang tugasnya.</li></ol><p><strong>Bidang Pengawasan dan Pengendalian Sumberdaya Kelautan dan Perikanan</strong></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kepala Bidang Pengawasan dan Pengandalian Sumberdaya Kelautan dan Perikanan dalam melaksanakan tugas menyelenggarakan fungsi sebagai berikut :</p><ol><li>pelaksanaan perumusan kebijakan di Pengawasan Sumberdaya Kelautan Dan Perikanan;</li><li>pelaksanaan kebijakan di bidang Pengawasan Sumberdaya Kelautan Dan Perikanan;</li><li>penyusunan norma, standar, prosedur, dan kriteria di bidang Pengawasan Sumberdaya Kelautan Dan Perikanan;</li><li>pemberian pembinaan teknis dan supervisi di bidang Pengawasan Sumberdaya Kelautan Dan Perikanan;</li><li>pelaksanaan evaluasi dan pelaporan di bidang Pengawasan Sumberdaya Kelautan Dan Perikanan;</li><li>pelaksanaan administrasi Bidang Pengawasan Sumberdaya Kelautan dan Perikanan ; dan</li><li>pelaksanaan fungsi lain yang diberikan oleh Kepala Dinas.</li></ol><p>&nbsp;<strong>UPT Pelabuhan Perikanan Wilayah 1 dan 2</strong></p><p>Kepala UPT dalam melaksanakan tugas menyelenggarakan fungsi sebagai berikut&nbsp;</p><ul><li>Perencanaan teknis pelaksanaan pelayanan Pelabuhan Perikanan;</li><li>pelaksanaan teknis pelayanan Pelabuhan Perikanan;</li><li>pelaksanaan evaluasi dan pelaporan pelaksanaan pelayanan Pelabuhan Perikanan;</li><li>pelaksanaan administrasi UPT; dan</li><li>pelaksanaan fungsi lain yang diberikan oleh Kepala Dinas terkait tugas dan fungsinya.</li></ul><p><strong>UPT BALAI PENERAPAN MUTU PRODUK HASIL PERIKANAN</strong></p><p>Kepala UPT dalam melaksanakan tugas menyelenggarakan fungsi sebagai berikut :</p><ol><li>Perencanaan teknis pelaksanaan pelayanan pengujian mutu dan keamanan produk perikanan, diversifikasi produk perikanan, dan pemenuhan persyaratan SNI produk perikanan;</li><li>pelaksanaan teknis pelayanan pengujian mutu dan keamanan produk perikanan, diversifikasi produk perikanan, dan pemenuhan persyaratan SNI produk perikanan;</li><li>pelaksanaan evaluasi dan pelaporan pelaksanaan pelayanan pengujian mutu dan keamanan produk perikanan, diversifikasi produk perikanan, dan pemenuhan persyaratan SNI produk perikanan;</li><li>pelaksanaan administrasi UPT; dan</li><li>pelaksanaan fungsi lain yang diberikan oleh Kepala Dinas terkait tugas dan fungsinya.</li></ol><p><strong>UPT&nbsp;PERIKANAN BUDIDAYA AIR PAYAU DAN LAUT</strong></p><p>Kepala UPT dalam melaksanakan tugas menyelenggarakan fungsi sebagai berikut&nbsp;</p><ol><li>Perencanaan teknis pelaksanaan pelayanan teknik budidaya ikan air payau/laut, koordinasi teknis dengan jejaring pemuliaan ikan;</li><li>pelaksanaan teknis pelayanan teknik budidaya ikan air payau/laut, koordinasi teknis dengan jejaring pemuliaan ikan;</li><li>pelaksanaan evaluasi dan pelaporan pelaksanaan pelayanan teknik budidaya ikan air payau/laut, koordinasi teknis dengan jejaring pemuliaan ikan;</li><li>pelaksanaan administrasi UPT; dan</li><li>pelaksanaan fungsi lain yang diberikan oleh Kepala Dinas terkait tugas dan fungsinya.</li></ol><p><strong>CABANG DINAS KELAUTAN</strong></p><p>Kepala Cabang Dinas Kelautan dalam melaksanakan tugas menyelenggarakan fungsi sebagai berikut :</p><ol><li>Koordinasi dan pelaksanaan kebijakan dan program sesuai dengan lingkup bidang tugas dan wilayah kerjanya;</li><li>Koordinasi dan pelaksanaan evaluasi dan pelaporan program dan kegiatan sesuai dengan lingkup bidang tugas dan wilayah&nbsp; kerjanya;</li><li>Koordinasi dan pelaksanaan administrasi sesuai dengan lingkup bidang tugas dan wilayah kerjanya; dan</li></ol><p>pelaksanaan fungsi lain yang diberikan oleh Kepala Dinas terkait tugas dan fungsinya</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p></td></tr></tbody></table></figure>', '2024-07-17 03:13:47', '2024-07-17 03:31:33'),
(3, 'maklumatPelayanan', '<h2><strong>MAKLUMAT PELAYANAN</strong></h2><h4>Kami siap memberikan pelayanan sesuai dengan standar pelayanan dan apabila kami tidak memberikan pelayanan sesuai dengan standar yang yang telah diterapkan, kami siap menerima sanksi sesuai dengan peraturan Perundangan - undangan yang berlaku</h4>', '2024-07-17 03:35:18', '2024-07-17 03:35:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `serta_mertas`
--

CREATE TABLE `serta_mertas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori_serta_merta` varchar(255) NOT NULL,
  `judul_serta_merta` varchar(255) NOT NULL,
  `keterangan_serta_merta` text DEFAULT NULL,
  `file_serta_merta` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `serta_mertas`
--

INSERT INTO `serta_mertas` (`id`, `kategori_serta_merta`, `judul_serta_merta`, `keterangan_serta_merta`, `file_serta_merta`, `created_at`, `updated_at`) VALUES
(1, 'sop', 'SOP', '<p>SOP PENANGANAN SENGKETA INFORMASI PUBLIK</p><p>&nbsp;</p>', 'SOP_1721223876SOP_Penanganan_Sengketa_informasi_publik.pdf', '2024-07-17 05:44:36', '2024-07-17 05:44:36'),
(3, 'sop', 'SOP', '<p>SOP PENDUKOKUMENTASIAN INFORMASI PUBLIK YANG DIKE UALIKAN</p>', 'SOP_1721224126SOP_Penanganan_Sengketa_informasi_publik.pdf', '2024-07-17 05:47:05', '2024-07-17 05:48:46'),
(4, 'sop', 'SOP', '<p>SOP PENDOKUMENTASIAN INFORMASI PUBLIK</p><p>&nbsp;</p>', 'SOP_1721224200SOP_Penanganan_Sengketa_informasi_publik.pdf', '2024-07-17 05:50:00', '2024-07-17 05:50:00'),
(5, 'sop', 'SOP', '<p>SOP PENGELOLAAN KEBERATAN ATAS INFORMASI</p><p>&nbsp;</p>', 'SOP_1721224268SOP_Penanganan_Sengketa_informasi_publik.pdf', '2024-07-17 05:51:08', '2024-07-17 05:51:08'),
(6, 'sop', 'SOP', '<p>SOP PENGELOLAAN PERMOHONAN INFORMASI</p><p>&nbsp;</p>', 'SOP_1721224473SOP_Pengelolaan_Permohonan_Informasi.pdf', '2024-07-17 05:54:33', '2024-07-17 05:54:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ssses`
--

CREATE TABLE `ssses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori_sss` varchar(255) NOT NULL,
  `judul_sss` varchar(255) NOT NULL,
  `keterangan_sss` text DEFAULT NULL,
  `file_sss` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `surveis`
--

CREATE TABLE `surveis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_responden` varchar(255) NOT NULL,
  `no_telp` varchar(255) NOT NULL,
  `penilaian_kepuasan` varchar(255) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$12$fmkHtGHEy0tYkTs/Q8/d1./WHq1UMoUaO.PEzIEU.2HSrYG9z6DpK', 'llPtWDxTR8XT0nJfYi2drpTmvN4ZFfZys2uXa0ZU7e0s8EiePS7BPfyhgFY6', '2024-07-08 07:40:50', '2024-07-08 07:40:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `video_kegiatans`
--

CREATE TABLE `video_kegiatans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `link_video` text NOT NULL,
  `nama_kegiatan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `video_kegiatans`
--

INSERT INTO `video_kegiatans` (`id`, `link_video`, `nama_kegiatan`, `created_at`, `updated_at`) VALUES
(1, 'https://youtu.be/UkPZVTML57U', 'SELAMATKAN LAUT DAN PERIKANAN DENGAN BUDIDAYA', '2024-07-17 06:57:01', '2024-07-17 06:57:01'),
(2, 'https://youtu.be/ugY8xIonypw', 'MENINGKATKAN EKSPORT & IMPORT DENGAN MUTU IKAN BERKUALITAS', '2024-07-17 06:58:14', '2024-07-17 06:58:14'),
(3, 'https://youtu.be/AowmTT2ZkGY', 'MENINGKATKAN EKSPORT & IMPORT DENGAN MUTU IKAN BERKUALITAS', '2024-07-17 07:00:33', '2024-07-17 07:00:33'),
(4, 'https://youtu.be/M8xJXvE2hnU?si=geWpPNPOsrdQZjQd', 'VIDEO UPT DINAS KELAUTAN & PERIKANAN', '2024-07-17 07:01:48', '2024-07-17 07:01:48'),
(5, 'https://youtu.be/Vsa87z6JmU4', 'PENGIBARAN BENDERA MERAH PUTIH DI BAWAH LAUT', '2024-07-17 07:03:18', '2024-07-17 07:03:18'),
(6, 'https://youtu.be/PuCZv-NxYzk', 'PEREMPUAN DALAM SEKTOR KEAMANAN', '2024-07-17 07:04:32', '2024-07-17 07:04:32'),
(7, 'https://youtu.be/SK_YyqMXMkw', 'DE\' SITTO BANGKIT', '2024-07-17 07:05:36', '2024-07-17 07:05:36'),
(8, 'https://youtu.be/-uafm2zeoTY', 'TUTORIAL PENANAMAN MANGROVE 353', '2024-07-17 07:06:35', '2024-07-17 07:06:35'),
(9, 'https://youtu.be/pixtQDnYVoQ', 'SEA TRIAL DAN PENYERAHAN BANTUAN PERAHU POKMASWAS', '2024-07-17 07:07:44', '2024-07-17 07:07:44'),
(10, 'https://youtu.be/rXXtcimL1w8', 'CABANG DINAS KELAUTAN', '2024-07-17 07:08:38', '2024-07-17 07:08:38');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `album_kegiatans`
--
ALTER TABLE `album_kegiatans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `beritas`
--
ALTER TABLE `beritas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `informasi_berkalas`
--
ALTER TABLE `informasi_berkalas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kontaks`
--
ALTER TABLE `kontaks`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `pejabats`
--
ALTER TABLE `pejabats`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengaduans`
--
ALTER TABLE `pengaduans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengumumen`
--
ALTER TABLE `pengumumen`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `ppids`
--
ALTER TABLE `ppids`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `profils`
--
ALTER TABLE `profils`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `serta_mertas`
--
ALTER TABLE `serta_mertas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ssses`
--
ALTER TABLE `ssses`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `surveis`
--
ALTER TABLE `surveis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `video_kegiatans`
--
ALTER TABLE `video_kegiatans`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `album_kegiatans`
--
ALTER TABLE `album_kegiatans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `beritas`
--
ALTER TABLE `beritas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `informasi_berkalas`
--
ALTER TABLE `informasi_berkalas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `kontaks`
--
ALTER TABLE `kontaks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `pejabats`
--
ALTER TABLE `pejabats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `pengaduans`
--
ALTER TABLE `pengaduans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pengumumen`
--
ALTER TABLE `pengumumen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `ppids`
--
ALTER TABLE `ppids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `profils`
--
ALTER TABLE `profils`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `serta_mertas`
--
ALTER TABLE `serta_mertas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `ssses`
--
ALTER TABLE `ssses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `surveis`
--
ALTER TABLE `surveis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `video_kegiatans`
--
ALTER TABLE `video_kegiatans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
