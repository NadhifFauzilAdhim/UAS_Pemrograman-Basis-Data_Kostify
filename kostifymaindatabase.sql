-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 23, 2024 at 10:58 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kostifymaindatabase2`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `property_category` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT (now())
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `property_category`, `created_at`) VALUES
(1, 'Apartemen', '2024-07-23 03:55:46'),
(2, 'Kost Putra', '2024-07-23 03:55:46'),
(3, 'Kost Putri', '2024-07-23 03:55:46'),
(4, 'Kontrakan', '2024-07-23 03:55:46'),
(5, 'Paviliun Putra', '2024-07-23 03:55:46'),
(6, 'Paviliun Putri', '2024-07-23 05:40:36'),
(7, 'Paviliun Pasutri', '2024-07-23 05:40:36'),
(8, 'Rumah', '2024-07-23 05:57:40');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `user_id` int NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `address` text COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT (now())
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`user_id`, `first_name`, `last_name`, `address`, `created_at`) VALUES
(1, 'Nadhif', 'Fauzil Adhim', ' Slanden, Banjaroyo, Kec. Kalibawang, Kabupaten Kulon Progo, Daerah Istimewa Yogyakarta 55672', '2024-07-23 03:54:53'),
(2, 'Julian', 'Kiyosaki', 'Jl. Raya Solo KM.9, Maguwoharjo, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55282', '2024-07-23 03:54:53'),
(3, 'rif\'aa', 'surososastro', 'Gg. Seruni Jl. Karang Asem No.8, Karang Gayam, Caturtunggal, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '2024-07-23 03:54:53'),
(4, 'Dwi', 'Ferdiyanto', 'Jl. Letnan Jenderal Suprapto No.18C, Keposan, Kebumen, Kec. Kebumen, Kabupaten Kebumen, Jawa Tengah 54311', '2024-07-23 03:54:53'),
(5, 'Muhajir', 'Faturahmman', 'Condongcatur, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '2024-07-23 03:54:53'),
(6, 'Andi', 'Prabowo Santoso', 'Jl. Merpati No.6, Rt.01/Rw.02, Kelurahan Cempaka, Kecamatan Setiabudi, Jakarta Selatan, 12900', '2024-07-23 06:05:30'),
(7, 'Budi', 'Sutrisno Wijaya', 'Jl. Kenari No.7, Rt.03/Rw.04, Kelurahan Bumiayu, Kecamatan Pademangan, Jakarta Utara, 14410', '2024-07-23 06:05:30'),
(8, 'Citra', 'Putri Maharani', 'Jl. Melati No.8, Rt.05/Rw.06, Kelurahan Kramat Jati, Kecamatan Kramat Jati, Jakarta Timur, 13540', '2024-07-23 06:05:30'),
(9, 'Dedi', 'Hadi Prabowo', 'Jl. Cempaka Putih No.9, Rt.07/Rw.08, Kelurahan Cempaka Putih, Kecamatan Cempaka Putih, Jakarta Pusat, 10510', '2024-07-23 06:05:30'),
(10, 'Eni', 'Kusuma Dewi', 'Jl. Pahlawan No.10, Rt.09/Rw.10, Kelurahan Kembangan, Kecamatan Kembangan, Jakarta Barat, 11610', '2024-07-23 06:05:30'),
(11, 'Fitri', 'Novianti Rahardjo', 'Jl. Bunga No.11, Rt.11/Rw.12, Kelurahan Pondok Aren, Kecamatan Pondok Aren, Tangerang Selatan, 15419', '2024-07-23 06:05:30'),
(12, 'Gita', 'Rizki Amalia', 'Jl. Raya Bogor No.12, Rt.13/Rw.14, Kelurahan Bogor Tengah, Kecamatan Bogor Tengah, Kota Bogor, 16100', '2024-07-23 06:05:30'),
(13, 'Hari', 'Setiawan Nugroho', 'Jl. Anggrek No.13, Rt.15/Rw.16, Kelurahan Cianjur, Kecamatan Cianjur, Kabupaten Cianjur, 43210', '2024-07-23 06:05:30'),
(14, 'Indah', 'Sari Wulandari', 'Jl. Jendral Sudirman No.14, Rt.17/Rw.18, Kelurahan Cilegon, Kecamatan Cilegon, Kota Cilegon, 42411', '2024-07-23 06:05:30'),
(15, 'Joko', 'Prasetyo Santosa', 'Jl. Kuningan No.15, Rt.19/Rw.20, Kelurahan Kuningan, Kecamatan Kuningan, Kabupaten Kuningan, 45510', '2024-07-23 06:05:30'),
(16, 'Kartika', 'Indriani Maharani', 'Jl. Kebon Jeruk No.16, Rt.21/Rw.22, Kelurahan Kebon Jeruk, Kecamatan Kebon Jeruk, Jakarta Barat, 11530', '2024-07-23 06:05:30'),
(17, 'Lina', 'Yuliana Sari', 'Jl. Jati No.17, Rt.23/Rw.24, Kelurahan Jati, Kecamatan Jati, Kota Jati, 19220', '2024-07-23 06:05:30'),
(18, 'Maman', 'Kurniawan Setiawan', 'Jl. Teluk Semangka No.18, Rt.25/Rw.26, Kelurahan Semangka, Kecamatan Semangka, Kabupaten Semangka, 23450', '2024-07-23 06:05:30'),
(19, 'Nurul', 'Suharti Hidayah', 'Jl. Sudirman No.19, Rt.27/Rw.28, Kelurahan Sudirman, Kecamatan Sudirman, Kota Sudirman, 34560', '2024-07-23 06:05:30'),
(20, 'Opik', 'Wahyudi Anwar', 'Jl. Raya Karang No.20, Rt.29/Rw.30, Kelurahan Karang, Kecamatan Karang, Kabupaten Karang, 45670', '2024-07-23 06:05:30');

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `property_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `price` int NOT NULL,
  `payment_type` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `location` text COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT (now())
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`id`, `user_id`, `property_name`, `price`, `payment_type`, `description`, `location`, `created_at`) VALUES
(1, 1, 'Apartement Murah Jogja', 15000000, 'Tahunan', 'Apartemen Bebas', 'Perumnas Condong Catur, Condongcatur, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '2024-07-23 04:01:21'),
(2, 2, 'Kost Putra Julian', 1300000, 'Bulanan', 'Kost Putra Full Access 24 Jam', 'Jl. Tanjung No.340c, Perumnas Condong Catur, Condongcatur, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55283', '2024-07-23 04:01:21'),
(3, 1, 'Kost Ambatukam', 1200000, 'Bulanan', 'Kost Putra Putri Bebas 24 jam, free wifi, kamar mandi dalam', 'Jl. Cemp. Baru No.04, Gempol, Condongcatur, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '2024-07-23 04:01:21'),
(4, 2, 'Kost Putri Muslim', 500000, '2 Bulan', 'Kost Putra Muslim, Fasilitas : Musholla, kamar mandi luar ( Masjid )', 'Jl. Manggis 20-18, Gempol, Condongcatur, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '2024-07-23 04:01:21'),
(5, 2, 'Kost Putri Lely', 750000, 'Bulanan', 'Kost Putri Lely Fasilitas : Kamar mandi dalem, WIFI kenceng, bayar bisa dicicil', 'Jl. Kurma No.1, Gempol, Condongcatur, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '2024-07-23 04:01:21'),
(6, 1, 'Kontrakan Maguwo', 15000000, 'Tahunan', 'Kontrakan Bersih, 4 kamar tersedia, parkir luaas', 'Jl. Manggis No.6, Gempol, Condongcatur, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55581', '2024-07-23 04:01:21'),
(7, 2, 'Paviliun Bebas', 1200000, 'Bulanan', 'Paviliun bebas, putra, putri, pasutri', 'Jl. Cemp. No.146, Dero, Condongcatur, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '2024-07-23 04:01:21'),
(8, 1, 'Kost Asri Andi', 800000, 'Bulanan', 'Kost Putra Full Access 24 Jam', 'Jl. Mawar No.5, Condongcatur, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '2024-07-23 05:50:08'),
(9, 1, 'Kontrakan Mewah', 18000000, 'Tahunan', 'Kontrakan Full Fasilitas, no ribet tinggal pindah aja', 'Jl. Anggrek No.8, Condongcatur, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '2024-07-23 05:50:08'),
(10, 6, 'Rumah Sewa Andi', 12000000, 'Tahunan', 'Rumah dekat kampus Amikom, Upn , YKPN, UGM, UNY', 'Jl. Melati No.2, Condongcatur, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '2024-07-23 05:50:08'),
(11, 8, 'Kost Aman Citra', 700000, 'Bulanan', 'Kost dijamin Aman', 'Jl. Kamboja No.4, Condongcatur, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '2024-07-23 05:50:08'),
(12, 11, 'Kost Eksklusif Fitri', 900000, 'Bulanan', 'Kost bebas putra putri, bebas akses 24 jam, free wifi, kamamar mandi dalem', 'Jl. Dahlia No.3, Condongcatur, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '2024-07-23 05:50:08'),
(13, 13, 'Kontrakan Nyaman Hari', 15000000, 'Tahunan', 'Kontrakan Bebas', 'Jl. Srikaya No.7, Condongcatur, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '2024-07-23 05:50:08'),
(14, 13, 'Kost Hemat Hari', 600000, 'Bulanan', 'Kost yang penting hemat', 'Jl. Mangga No.1, Condongcatur, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '2024-07-23 05:50:08');

-- --------------------------------------------------------

--
-- Table structure for table `property_category`
--

CREATE TABLE `property_category` (
  `property_id` int NOT NULL,
  `category_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `property_category`
--

INSERT INTO `property_category` (`property_id`, `category_id`) VALUES
(1, 1),
(3, 1),
(2, 2),
(3, 2),
(8, 2),
(12, 2),
(14, 2),
(2, 3),
(4, 3),
(5, 3),
(11, 3),
(12, 3),
(6, 4),
(9, 4),
(13, 4),
(7, 5),
(10, 8);

-- --------------------------------------------------------

--
-- Table structure for table `property_request`
--

CREATE TABLE `property_request` (
  `id` int NOT NULL,
  `property_id` int NOT NULL,
  `user_id` int NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Menunggu',
  `confirm_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `property_request`
--

INSERT INTO `property_request` (`id`, `property_id`, `user_id`, `status`, `confirm_at`, `created_at`) VALUES
(10, 2, 5, 'Menunggu', NULL, '2024-07-23 10:53:27');

--
-- Triggers `property_request`
--
DELIMITER $$
CREATE TRIGGER `before_delete_property_request` BEFORE DELETE ON `property_request` FOR EACH ROW BEGIN
  INSERT INTO request_log (request_id, event, time)
  VALUES (OLD.id, CONCAT('Permintaan dihapus untuk property_id: ', OLD.property_id), NOW());
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_insert_property_request` BEFORE INSERT ON `property_request` FOR EACH ROW BEGIN
  INSERT INTO request_log (request_id, event, time)
  VALUES (NEW.id, CONCAT('Mengajukan permintaan untuk property_id: ', NEW.property_id), NOW());
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_update_property_request` BEFORE UPDATE ON `property_request` FOR EACH ROW BEGIN
  IF NEW.status != OLD.status THEN
    INSERT INTO request_log (request_id, event, time)
    VALUES (OLD.id, CONCAT('Status berubah dari ', OLD.status, ' menjadi ', NEW.status), NOW());
  END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `request_log`
--

CREATE TABLE `request_log` (
  `id` int NOT NULL,
  `request_id` int NOT NULL,
  `event` text COLLATE utf8mb4_general_ci NOT NULL,
  `time` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `request_log`
--

INSERT INTO `request_log` (`id`, `request_id`, `event`, `time`) VALUES
(13, 1, 'Mengajukan permintaan untuk property_id: 1', '2024-07-23 08:29:37'),
(16, 1, 'Status berubah dari Menunggu menjadi Diterima', '2024-07-23 09:01:47'),
(17, 1, 'Permintaan dihapus untuk property_id: 1', '2024-07-23 09:11:53'),
(18, 0, 'Mengajukan permintaan untuk property_id: 2', '2024-07-23 10:53:27');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int NOT NULL,
  `property_id` int NOT NULL,
  `user_id` int NOT NULL,
  `comment_body` text COLLATE utf8mb4_general_ci NOT NULL,
  `rating` tinyint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `property_id`, `user_id`, `comment_body`, `rating`, `created_at`) VALUES
(1, 1, 3, 'Tempatnya bersih dan nyaman, sangat direkomendasikan', 5, '2024-07-23 06:40:43'),
(2, 2, 5, 'Pemiliknya ramah dan responsif. Lokasinya strategis', 4, '2024-07-23 06:40:43'),
(3, 2, 4, 'Harganya sesuai dengan fasilitas yang diberikan. Recommended!', 4, '2024-07-23 06:40:43'),
(4, 4, 7, 'Kostan ini sangat terawat dan suasananya tenang.', 5, '2024-07-23 06:40:43'),
(5, 5, 9, 'Kamar mandi kumuhh !!', 2, '2024-07-23 06:40:43');

-- --------------------------------------------------------

--
-- Table structure for table `tenants`
--

CREATE TABLE `tenants` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `property_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT (now())
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tenants`
--

INSERT INTO `tenants` (`id`, `user_id`, `property_id`, `created_at`) VALUES
(1, 3, 1, '2024-07-23 05:13:48'),
(2, 4, 3, '2024-07-23 05:13:48'),
(3, 4, 2, '2024-07-23 05:13:48'),
(4, 3, 7, '2024-07-23 05:13:48'),
(5, 3, 6, '2024-07-23 05:13:48');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int NOT NULL,
  `amount` int NOT NULL,
  `tenants_id` int DEFAULT NULL,
  `invoice` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `paid_status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT (now())
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `amount`, `tenants_id`, `invoice`, `paid_status`, `created_at`) VALUES
(2, 1000000, 1, 'INV-1234', 0, '2024-07-23 10:05:41'),
(3, 750000, 2, 'INV-1235', 0, '2024-07-23 10:05:41'),
(4, 500000, 4, 'INV-1236', 1, '2024-07-23 10:05:41'),
(5, 450000, 3, 'INV-1237', 0, '2024-07-23 10:05:41'),
(6, 750000, 2, 'INV-1238', 1, '2024-07-23 10:05:41');

--
-- Triggers `transactions`
--
DELIMITER $$
CREATE TRIGGER `after_delete_transactions` AFTER DELETE ON `transactions` FOR EACH ROW BEGIN
  INSERT INTO transactions_log (
    transaction_id, event, time
  )
  VALUES (
    OLD.id, CONCAT('Menghapus Transaksi dengan jumlah: ', OLD.amount, ', tenants_id: ', OLD.tenants_id, ', invoice: ', OLD.invoice, ', paid_status: ', OLD.paid_status), NOW()
  );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_insert_transactions` AFTER INSERT ON `transactions` FOR EACH ROW BEGIN
  INSERT INTO transactions_log (
    transaction_id, event, time
  )
  VALUES (
    NEW.id, CONCAT('Membuat Transaksi dengan jumlah : ', NEW.amount, ', tenants_id: ', NEW.tenants_id, ', invoice: ', NEW.invoice, ', paid_status: ', NEW.paid_status), NOW()
  );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_update_transactions` AFTER UPDATE ON `transactions` FOR EACH ROW BEGIN
  INSERT INTO transactions_log (
    transaction_id, event, time
  )
  VALUES (
    NEW.id, CONCAT('Mengupdate Transaksi dengan Jumlah: ', NEW.amount, ', tenants_id: ', NEW.tenants_id, ', invoice: ', NEW.invoice, ', paid_status: ', NEW.paid_status), NOW()
  );
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `transactions_log`
--

CREATE TABLE `transactions_log` (
  `id` int NOT NULL,
  `transaction_id` int NOT NULL,
  `event` text COLLATE utf8mb4_general_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions_log`
--

INSERT INTO `transactions_log` (`id`, `transaction_id`, `event`, `time`) VALUES
(1, 1, 'Membuat Transaksi dengan jumlah : 100000, tenants_id: 1, invoice: INV123456, paid_status: 0', '2024-07-23 09:33:53'),
(2, 1, 'Mengupdate Transaksi dengan Jumlah: 100000, tenants_id: 1, invoice: INV123456, paid_status: 1', '2024-07-23 09:43:19'),
(3, 1, 'Menghapus Transaksi dengan jumlah: 100000, tenants_id: 1, invoice: INV123456, paid_status: 1', '2024-07-23 09:51:18'),
(4, 2, 'Membuat Transaksi dengan jumlah : 1000000, tenants_id: 1, invoice: INV-1234, paid_status: 0', '2024-07-23 10:05:41'),
(5, 3, 'Membuat Transaksi dengan jumlah : 750000, tenants_id: 2, invoice: INV-1235, paid_status: 0', '2024-07-23 10:05:41'),
(6, 4, 'Membuat Transaksi dengan jumlah : 500000, tenants_id: 4, invoice: INV-1236, paid_status: 0', '2024-07-23 10:05:41'),
(7, 5, 'Membuat Transaksi dengan jumlah : 450000, tenants_id: 3, invoice: INV-1237, paid_status: 0', '2024-07-23 10:05:41'),
(8, 6, 'Membuat Transaksi dengan jumlah : 750000, tenants_id: 2, invoice: INV-1238, paid_status: 0', '2024-07-23 10:05:41'),
(9, 6, 'Mengupdate Transaksi dengan Jumlah: 750000, tenants_id: 2, invoice: INV-1238, paid_status: 1', '2024-07-23 10:05:59'),
(10, 4, 'Mengupdate Transaksi dengan Jumlah: 500000, tenants_id: 4, invoice: INV-1236, paid_status: 1', '2024-07-23 10:05:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `is_owner` tinyint NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT (now())
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `is_owner`, `username`, `email`, `password`, `created_at`) VALUES
(1, 1, 'nadhif', 'nadhif@gmail.com', '123', '2024-07-23 03:52:55'),
(2, 1, 'julian', 'julian@gmail.com', '123', '2024-07-23 03:52:55'),
(3, 0, 'rif\'aa', 'rifaa@gmail.com', '123', '2024-07-23 03:52:55'),
(4, 0, 'ferdi', 'ferdi@gmail.com', '123', '2024-07-23 03:52:55'),
(5, 0, 'muhajir', 'muhajir@gmail.com', '123', '2024-07-23 03:53:31'),
(6, 1, 'andi', 'andi@gmail.com', '123', '2024-07-23 05:43:37'),
(7, 0, 'budi', 'budi@gmail.com', '123', '2024-07-23 05:43:37'),
(8, 1, 'citra', 'citra@gmail.com', '123', '2024-07-23 05:43:37'),
(9, 0, 'dedi', 'dedi@gmail.com', '123', '2024-07-23 05:43:37'),
(10, 0, 'eni', 'eni@gmail.com', '123', '2024-07-23 05:43:37'),
(11, 1, 'fitri', 'fitri@gmail.com', '123', '2024-07-23 05:43:37'),
(12, 0, 'gita', 'gita@gmail.com', '123', '2024-07-23 05:43:37'),
(13, 1, 'hari', 'hari@gmail.com', '123', '2024-07-23 05:43:37'),
(14, 0, 'indah', 'indah@gmail.com', '123', '2024-07-23 05:43:37'),
(15, 0, 'joko', 'joko@gmail.com', '123', '2024-07-23 05:43:37'),
(16, 1, 'kartika', 'kartika@gmail.com', '123', '2024-07-23 05:43:37'),
(17, 0, 'lina', 'lina@gmail.com', '123', '2024-07-23 05:43:37'),
(18, 1, 'maman', 'maman@gmail.com', '123', '2024-07-23 05:43:37'),
(19, 0, 'nurul', 'nurul@gmail.com', '123', '2024-07-23 05:43:37'),
(20, 0, 'opik', 'opik@gmail.com', '123', '2024-07-23 05:43:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `property_category`
--
ALTER TABLE `property_category`
  ADD PRIMARY KEY (`property_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `property_request`
--
ALTER TABLE `property_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_request_ibfk_2` (`user_id`),
  ADD KEY `property_id` (`property_id`);

--
-- Indexes for table `request_log`
--
ALTER TABLE `request_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_reviews_users` (`user_id`),
  ADD KEY `fk_reviews_property` (`property_id`);

--
-- Indexes for table `tenants`
--
ALTER TABLE `tenants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `property_id` (`property_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tenants_id` (`tenants_id`);

--
-- Indexes for table `transactions_log`
--
ALTER TABLE `transactions_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `property_request`
--
ALTER TABLE `property_request`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `request_log`
--
ALTER TABLE `request_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tenants`
--
ALTER TABLE `tenants`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transactions_log`
--
ALTER TABLE `transactions_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `property`
--
ALTER TABLE `property`
  ADD CONSTRAINT `property_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `property_category`
--
ALTER TABLE `property_category`
  ADD CONSTRAINT `property_category_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`),
  ADD CONSTRAINT `property_category_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `property_request`
--
ALTER TABLE `property_request`
  ADD CONSTRAINT `property_request_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `property_request_ibfk_3` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `fk_reviews_property` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`),
  ADD CONSTRAINT `fk_reviews_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `tenants`
--
ALTER TABLE `tenants`
  ADD CONSTRAINT `tenants_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `tenants_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`tenants_id`) REFERENCES `tenants` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
