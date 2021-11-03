-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Waktu pembuatan: 03 Nov 2021 pada 16.52
-- Versi server: 8.0.26
-- Versi PHP: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbo`
--
CREATE DATABASE IF NOT EXISTS `dbo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `dbo`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'hamdan', '$2a$10$fHVtnaaNSh3N962jWoZnde6iYADCimZ.y24GFRcEIVSka0aG/0idW', '2021-11-02 22:31:25', '2021-11-02 22:31:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customers`
--

CREATE TABLE `customers` (
  `id` int NOT NULL,
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `customers`
--

INSERT INTO `customers` (`id`, `firstName`, `lastName`, `phone`, `gender`, `createdAt`, `updatedAt`) VALUES
(2, 'fn61kb', 'ln61kb', '08521056601', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(3, 'fu4ilx', 'lu4ilx', '08521056602', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(4, 'fgoicz', 'lgoicz', '08521056603', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(5, 'fvgbh8', 'lvgbh8', '08521056604', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(6, 'f862ts', 'l862ts', '08521056605', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(7, 'f79opa', 'l79opa', '08521056606', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(8, 'frfsuu', 'lrfsuu', '08521056607', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(9, 'fgyxai', 'lgyxai', '08521056608', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(10, 'fvl8js', 'lvl8js', '08521056609', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(11, 'fb0m53', 'lb0m53', '085210566010', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(12, 'fspqi4', 'lspqi4', '085210566011', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(13, 'f8dc30', 'l8dc30', '085210566012', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(14, 'fu6dme', 'lu6dme', '085210566013', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(16, 'f8c96h', 'l8c96h', '085210566015', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(17, 'fa8pif', 'la8pif', '085210566016', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(18, 'fg4p1f', 'lg4p1f', '085210566017', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(19, 'ftzz3f', 'ltzz3f', '085210566018', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(20, 'f451ie', 'l451ie', '085210566019', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(21, 'f5008p', 'l5008p', '085210566020', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(22, 'flxffg', 'llxffg', '085210566021', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(23, 'fl05lj', 'll05lj', '085210566022', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(24, 'fp8ofs', 'lp8ofs', '085210566023', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(25, 'fu8cxv', 'lu8cxv', '085210566024', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(26, 'f3882s', 'l3882s', '085210566025', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(27, 'fqv3ox', 'lqv3ox', '085210566026', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(28, 'fsqlws', 'lsqlws', '085210566027', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(29, 'f12z7v', 'l12z7v', '085210566028', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(30, 'fse4l9', 'lse4l9', '085210566029', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(31, 'fbh9s7', 'lbh9s7', '085210566030', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(32, 'fqw5st', 'lqw5st', '085210566031', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(33, 'f086aj', 'l086aj', '085210566032', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(34, 'flrg2t', 'llrg2t', '085210566033', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(35, 'fzcxnc', 'lzcxnc', '085210566034', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(36, 'fktk5u', 'lktk5u', '085210566035', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(37, 'fe0kcq', 'le0kcq', '085210566036', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(38, 'ff39pu', 'lf39pu', '085210566037', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(39, 'ftr60i', 'ltr60i', '085210566038', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(40, 'fia6xc', 'lia6xc', '085210566039', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(41, 'fa7bkj', 'la7bkj', '085210566040', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(42, 'f74xbc', 'l74xbc', '085210566041', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(43, 'f0u8jh', 'l0u8jh', '085210566042', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(44, 'fscjej', 'lscjej', '085210566043', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(45, 'f7z9y4', 'l7z9y4', '085210566044', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(46, 'fy559a', 'ly559a', '085210566045', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(47, 'fx2wy7', 'lx2wy7', '085210566046', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(48, 'fjc532', 'ljc532', '085210566047', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(49, 'fde1r2', 'lde1r2', '085210566048', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(50, 'f4dyvg', 'l4dyvg', '085210566049', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(51, 'f5dem6', 'l5dem6', '085210566050', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(52, 'ffvh67', 'lfvh67', '085210566051', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(53, 'fo9xt2', 'lo9xt2', '085210566052', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(54, 'f6f55g', 'l6f55g', '085210566053', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(55, 'f9xgyh', 'l9xgyh', '085210566054', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(56, 'fain0a', 'lain0a', '085210566055', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(57, 'fr3qzn', 'lr3qzn', '085210566056', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(58, 'fxfz7r', 'lxfz7r', '085210566057', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(59, 'fupg3n', 'lupg3n', '085210566058', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(60, 'f1if3s', 'l1if3s', '085210566059', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(61, 'fn2vum', 'ln2vum', '085210566060', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(62, 'fopr8d', 'lopr8d', '085210566061', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(63, 'f0v882', 'l0v882', '085210566062', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(64, 'fiep1w', 'liep1w', '085210566063', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(65, 'ffh4lc', 'lfh4lc', '085210566064', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(66, 'fitexj', 'litexj', '085210566065', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(67, 'f29jja', 'l29jja', '085210566066', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(68, 'f4vkis', 'l4vkis', '085210566067', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(69, 'fx9jt9', 'lx9jt9', '085210566068', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(70, 'faa9ij', 'laa9ij', '085210566069', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(71, 'fem6eh', 'lem6eh', '085210566070', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(72, 'fo7pz4', 'lo7pz4', '085210566071', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(73, 'fcj9bx', 'lcj9bx', '085210566072', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(74, 'fqzfsf', 'lqzfsf', '085210566073', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(75, 'fil9yz', 'lil9yz', '085210566074', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(76, 'f7f083', 'l7f083', '085210566075', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(77, 'f4o0kw', 'l4o0kw', '085210566076', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(78, 'f0s48i', 'l0s48i', '085210566077', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(79, 'fin2yv', 'lin2yv', '085210566078', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(80, 'f6rj5i', 'l6rj5i', '085210566079', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(81, 'f8ol38', 'l8ol38', '085210566080', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(82, 'fw0dln', 'lw0dln', '085210566081', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(83, 'f7h44y', 'l7h44y', '085210566082', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(84, 'flq4vq', 'llq4vq', '085210566083', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(85, 'f8o29v', 'l8o29v', '085210566084', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(86, 'f9mofx', 'l9mofx', '085210566085', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(87, 'fx2e9j', 'lx2e9j', '085210566086', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(88, 'fo7qr1', 'lo7qr1', '085210566087', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(89, 'fq77ci', 'lq77ci', '085210566088', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(90, 'fh7lxd', 'lh7lxd', '085210566089', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(91, 'fic17u', 'lic17u', '085210566090', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(92, 'fojm8v', 'lojm8v', '085210566091', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(93, 'f0twhx', 'l0twhx', '085210566092', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(94, 'ffxq3e', 'lfxq3e', '085210566093', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(95, 'fpuwho', 'lpuwho', '085210566094', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(96, 'f6nifo', 'l6nifo', '085210566095', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(97, 'f1asvx', 'l1asvx', '085210566096', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(98, 'ffpf2j', 'lfpf2j', '085210566097', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(99, 'f4od05', 'l4od05', '085210566098', 'P', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(100, 'f8ko9h', 'l8ko9h', '085210566099', 'L', '2021-11-03 13:41:17', '2021-11-03 13:41:17'),
(101, 'Hamdan', 'Awaludin', '085210566071', 'L', '2021-11-03 14:21:53', '2021-11-03 14:21:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `log`
--

CREATE TABLE `log` (
  `id` int NOT NULL,
  `activity` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL,
  `user` int NOT NULL,
  `agent` varchar(100) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `request` json DEFAULT NULL,
  `response` json DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `log`
--

INSERT INTO `log` (`id`, `activity`, `status`, `user`, `agent`, `ip`, `request`, `response`, `createdAt`, `updatedAt`) VALUES
(1, 'login', 'success', 1, 'PostmanRuntime/7.28.4', '::1', NULL, NULL, '2021-11-03 13:27:15', '2021-11-03 13:27:15'),
(2, 'login', 'success', 1, 'PostmanRuntime/7.28.4', '::1', NULL, NULL, '2021-11-03 13:29:29', '2021-11-03 13:29:29'),
(3, 'login', 'success', 1, 'PostmanRuntime/7.28.4', '::1', NULL, NULL, '2021-11-03 13:57:57', '2021-11-03 13:57:57'),
(4, 'login', 'success', 1, 'PostmanRuntime/7.28.4', '::1', NULL, NULL, '2021-11-03 14:01:10', '2021-11-03 14:01:10'),
(5, 'login', 'success', 1, 'PostmanRuntime/7.28.4', '::1', NULL, NULL, '2021-11-03 14:05:22', '2021-11-03 14:05:22'),
(6, 'login', 'success', 1, 'PostmanRuntime/7.28.4', '::1', NULL, NULL, '2021-11-03 14:06:01', '2021-11-03 14:06:01'),
(7, 'login', 'success', 1, 'PostmanRuntime/7.28.4', '::1', NULL, NULL, '2021-11-03 14:08:57', '2021-11-03 14:08:57'),
(8, 'login', 'success', 1, 'PostmanRuntime/7.28.4', '::1', NULL, NULL, '2021-11-03 14:11:12', '2021-11-03 14:11:12'),
(9, 'login', 'success', 1, 'PostmanRuntime/7.28.4', '::1', NULL, NULL, '2021-11-03 14:13:40', '2021-11-03 14:13:40'),
(10, 'login', 'success', 1, 'PostmanRuntime/7.28.4', '::1', NULL, NULL, '2021-11-03 14:19:30', '2021-11-03 14:19:30'),
(11, 'login', 'success', 1, 'PostmanRuntime/7.28.4', '::1', NULL, NULL, '2021-11-03 14:21:47', '2021-11-03 14:21:47'),
(12, 'login', 'success', 1, 'PostmanRuntime/7.28.4', '::1', NULL, NULL, '2021-11-03 14:38:23', '2021-11-03 14:38:23'),
(13, 'login', 'success', 1, 'PostmanRuntime/7.28.4', '::1', NULL, NULL, '2021-11-03 14:41:34', '2021-11-03 14:41:34'),
(14, 'login', 'success', 1, 'PostmanRuntime/7.28.4', '::1', NULL, NULL, '2021-11-03 14:43:45', '2021-11-03 14:43:45'),
(15, 'login', 'success', 1, 'PostmanRuntime/7.28.4', '::1', NULL, NULL, '2021-11-03 14:47:48', '2021-11-03 14:47:48'),
(16, 'login', 'success', 1, 'PostmanRuntime/7.28.4', '::1', NULL, NULL, '2021-11-03 14:50:31', '2021-11-03 14:50:31'),
(17, 'login', 'success', 1, 'PostmanRuntime/7.28.4', '::1', NULL, NULL, '2021-11-03 14:55:31', '2021-11-03 14:55:31'),
(18, 'login', 'success', 1, 'PostmanRuntime/7.28.4', '::1', NULL, NULL, '2021-11-03 14:58:05', '2021-11-03 14:58:05'),
(19, 'login', 'success', 1, 'PostmanRuntime/7.28.4', '::1', NULL, NULL, '2021-11-03 14:58:09', '2021-11-03 14:58:09'),
(20, 'login', 'success', 1, 'PostmanRuntime/7.28.4', '::1', NULL, NULL, '2021-11-03 15:00:43', '2021-11-03 15:00:43'),
(21, 'login', 'success', 1, 'PostmanRuntime/7.28.4', '::1', NULL, NULL, '2021-11-03 16:08:54', '2021-11-03 16:08:54'),
(22, 'login', 'success', 1, 'PostmanRuntime/7.28.4', '::1', NULL, NULL, '2021-11-03 16:11:16', '2021-11-03 16:11:16'),
(23, 'login', 'success', 1, 'PostmanRuntime/7.28.4', '::1', NULL, NULL, '2021-11-03 16:13:59', '2021-11-03 16:13:59'),
(24, 'login', 'success', 1, 'PostmanRuntime/7.28.4', '::1', NULL, NULL, '2021-11-03 16:16:21', '2021-11-03 16:16:21'),
(25, 'login', 'success', 1, 'PostmanRuntime/7.28.4', '::1', NULL, NULL, '2021-11-03 16:19:19', '2021-11-03 16:19:19'),
(26, 'login', 'success', 1, 'PostmanRuntime/7.28.4', '::1', NULL, NULL, '2021-11-03 16:21:41', '2021-11-03 16:21:41'),
(27, 'login', 'success', 1, 'PostmanRuntime/7.28.4', '::1', NULL, NULL, '2021-11-03 16:24:17', '2021-11-03 16:24:17'),
(28, 'login', 'success', 1, 'PostmanRuntime/7.28.4', '::1', NULL, NULL, '2021-11-03 16:38:10', '2021-11-03 16:38:10'),
(29, 'login', 'success', 1, 'PostmanRuntime/7.28.4', '::1', NULL, NULL, '2021-11-03 16:40:37', '2021-11-03 16:40:37'),
(30, 'login', 'success', 1, 'PostmanRuntime/7.28.4', '::1', NULL, NULL, '2021-11-03 16:42:53', '2021-11-03 16:42:53'),
(31, 'login', 'success', 1, 'PostmanRuntime/7.28.4', '::1', NULL, NULL, '2021-11-03 16:43:20', '2021-11-03 16:43:20'),
(32, 'login', 'success', 1, 'PostmanRuntime/7.28.4', '::1', NULL, NULL, '2021-11-03 16:45:51', '2021-11-03 16:45:51'),
(33, 'login', 'success', 1, 'PostmanRuntime/7.28.4', '::1', NULL, NULL, '2021-11-03 16:50:57', '2021-11-03 16:50:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `admin` int NOT NULL,
  `customer` int NOT NULL,
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `total` bigint NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `admin`, `customer`, `firstName`, `lastName`, `phone`, `total`, `createdAt`, `updatedAt`) VALUES
(8, 1, 17, 'fa8pif', 'la8pif', '085210566016', 26840000, '2021-11-03 16:23:21', '2021-11-03 16:23:21'),
(9, 1, 17, 'fa8pif', 'la8pif', '085210566016', 36070000, '2021-11-03 16:24:23', '2021-11-03 16:24:23'),
(10, 1, 17, 'fa8pif', 'la8pif', '085210566016', 36070000, '2021-11-03 16:24:51', '2021-11-03 16:24:51'),
(11, 1, 17, 'fa8pif', 'la8pif', '085210566016', 36070000, '2021-11-03 16:45:54', '2021-11-03 16:45:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders_detail`
--

CREATE TABLE `orders_detail` (
  `id` int NOT NULL,
  `order` int NOT NULL,
  `product` int NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `price` bigint NOT NULL,
  `qty` int NOT NULL,
  `total` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `orders_detail`
--

INSERT INTO `orders_detail` (`id`, `order`, `product`, `name`, `description`, `price`, `qty`, `total`) VALUES
(1, 8, 99, 'Product ajifj', 'description ajifj', 990000, 17, 16830000),
(2, 8, 91, 'Product ijgh8', 'description ijgh8', 910000, 11, 10010000),
(3, 9, 99, 'Product ajifj', 'description ajifj', 990000, 17, 16830000),
(4, 9, 91, 'Product ijgh8', 'description ijgh8', 910000, 11, 10010000),
(5, 9, 83, 'Product l2n3u', 'description l2n3u', 830000, 11, 9130000),
(6, 9, 10, 'Product e0zyi', 'description e0zyi', 100000, 1, 100000),
(7, 10, 99, 'Product ajifj', 'description ajifj', 990000, 17, 16830000),
(8, 10, 91, 'Product ijgh8', 'description ijgh8', 910000, 11, 10010000),
(9, 10, 83, 'Product l2n3u', 'description l2n3u', 830000, 11, 9130000),
(10, 10, 10, 'Product e0zyi', 'description e0zyi', 100000, 1, 100000),
(11, 11, 99, 'Product ajifj', 'description ajifj', 990000, 17, 16830000),
(12, 11, 91, 'Product ijgh8', 'description ijgh8', 910000, 11, 10010000),
(13, 11, 83, 'Product l2n3u', 'description l2n3u', 830000, 11, 9130000),
(14, 11, 10, 'Product e0zyi', 'description e0zyi', 100000, 1, 100000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` text,
  `price` bigint NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `price`, `createdAt`, `updatedAt`) VALUES
(1, 'Product e7v9w', 'description e7v9w', 10000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(2, 'Product t4rr1', 'description t4rr1', 20000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(3, 'Product rcqf3', 'description rcqf3', 30000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(4, 'Product n0oc1', 'description n0oc1', 40000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(5, 'Product sv2rd', 'description sv2rd', 50000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(6, 'Product ostf1', 'description ostf1', 60000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(7, 'Product cdpq5', 'description cdpq5', 70000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(8, 'Product x6zeq', 'description x6zeq', 80000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(9, 'Product a5dih', 'description a5dih', 90000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(10, 'Product e0zyi', 'description e0zyi', 100000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(11, 'Product icgnj', 'description icgnj', 110000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(12, 'Product 498hz', 'description 498hz', 120000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(13, 'Product 6x8ju', 'description 6x8ju', 130000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(14, 'Product rlm8k', 'description rlm8k', 140000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(15, 'Product ossoa', 'description ossoa', 150000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(16, 'Product mbj54', 'description mbj54', 160000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(17, 'Product kg80i', 'description kg80i', 170000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(18, 'Product gxu2b', 'description gxu2b', 180000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(19, 'Product 5aqfd', 'description 5aqfd', 190000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(20, 'Product 498wg', 'description 498wg', 200000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(21, 'Product hlu1j', 'description hlu1j', 210000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(22, 'Product 6xz2n', 'description 6xz2n', 220000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(23, 'Product qx7f3', 'description qx7f3', 230000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(24, 'Product 4rc9l', 'description 4rc9l', 240000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(25, 'Product xogpk', 'description xogpk', 250000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(26, 'Product guklz', 'description guklz', 260000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(27, 'Product sy5vm', 'description sy5vm', 270000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(28, 'Product 7m5zg', 'description 7m5zg', 280000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(29, 'Product 1dj5l', 'description 1dj5l', 290000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(30, 'Product xjg0b', 'description xjg0b', 300000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(31, 'Product nk5q8', 'description nk5q8', 310000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(32, 'Product onj6p', 'description onj6p', 320000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(33, 'Product k9zbr', 'description k9zbr', 330000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(34, 'Product hasc7', 'description hasc7', 340000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(35, 'Product 0q5bt', 'description 0q5bt', 350000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(36, 'Product wbxrh', 'description wbxrh', 360000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(37, 'Product rj996', 'description rj996', 370000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(38, 'Product 0l2g8', 'description 0l2g8', 380000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(39, 'Product iojrc', 'description iojrc', 390000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(40, 'Product 7wbdc', 'description 7wbdc', 400000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(41, 'Product 3p0ey', 'description 3p0ey', 410000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(42, 'Product d9rcu', 'description d9rcu', 420000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(43, 'Product rsd45', 'description rsd45', 430000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(44, 'Product 0zqk5', 'description 0zqk5', 440000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(45, 'Product f76zz', 'description f76zz', 450000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(46, 'Product zmrfk', 'description zmrfk', 460000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(47, 'Product de58x', 'description de58x', 470000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(48, 'Product 6ar1r', 'description 6ar1r', 480000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(49, 'Product dskeg', 'description dskeg', 490000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(50, 'Product w6y50', 'description w6y50', 500000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(51, 'Product iv94h', 'description iv94h', 510000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(52, 'Product o4g5e', 'description o4g5e', 520000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(53, 'Product zt0o5', 'description zt0o5', 530000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(54, 'Product yp355', 'description yp355', 540000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(55, 'Product q9c3d', 'description q9c3d', 550000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(56, 'Product kchwh', 'description kchwh', 560000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(57, 'Product yyd25', 'description yyd25', 570000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(58, 'Product xxrm7', 'description xxrm7', 580000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(59, 'Product o7ukj', 'description o7ukj', 590000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(60, 'Product 4q732', 'description 4q732', 600000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(61, 'Product jtni6', 'description jtni6', 610000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(62, 'Product bp24v', 'description bp24v', 620000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(63, 'Product 3u9d9', 'description 3u9d9', 630000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(64, 'Product annjs', 'description annjs', 640000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(65, 'Product gtu6d', 'description gtu6d', 650000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(66, 'Product 6xlwk', 'description 6xlwk', 660000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(67, 'Product 4hm83', 'description 4hm83', 670000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(68, 'Product rtd43', 'description rtd43', 680000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(69, 'Product fv0pl', 'description fv0pl', 690000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(70, 'Product dvdsj', 'description dvdsj', 700000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(71, 'Product 1r22l', 'description 1r22l', 710000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(72, 'Product 7kn3z', 'description 7kn3z', 720000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(73, 'Product 5ktqz', 'description 5ktqz', 730000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(74, 'Product ce18u', 'description ce18u', 740000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(75, 'Product 85ax6', 'description 85ax6', 750000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(76, 'Product 7ttyt', 'description 7ttyt', 760000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(77, 'Product exmj5', 'description exmj5', 770000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(78, 'Product 99cka', 'description 99cka', 780000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(79, 'Product iiorg', 'description iiorg', 790000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(80, 'Product 27r04', 'description 27r04', 800000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(81, 'Product iwzuu', 'description iwzuu', 810000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(82, 'Product jsq90', 'description jsq90', 820000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(83, 'Product l2n3u', 'description l2n3u', 830000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(84, 'Product icjjn', 'description icjjn', 840000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(85, 'Product utl72', 'description utl72', 850000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(86, 'Product 97fm3', 'description 97fm3', 860000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(87, 'Product vpoyx', 'description vpoyx', 870000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(88, 'Product rocg2', 'description rocg2', 880000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(89, 'Product tut4v', 'description tut4v', 890000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(90, 'Product bkc8t', 'description bkc8t', 900000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(91, 'Product ijgh8', 'description ijgh8', 910000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(92, 'Product a1kk8', 'description a1kk8', 920000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(93, 'Product jpner', 'description jpner', 930000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(94, 'Product hs14a', 'description hs14a', 940000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(95, 'Product 500mi', 'description 500mi', 950000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(96, 'Product r66gy', 'description r66gy', 960000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(97, 'Product vyn3q', 'description vyn3q', 970000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(98, 'Product oooqb', 'description oooqb', 980000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(99, 'Product ajifj', 'description ajifj', 990000, '2021-11-03 13:08:56', '2021-11-03 13:08:56'),
(100, 'Product 6x8ju', 'description 6x8ju', 130000, '2021-11-03 16:19:23', '2021-11-03 16:19:23'),
(101, 'Product kg80i', 'description kg80i', 170000, '2021-11-03 16:19:23', '2021-11-03 16:19:23'),
(102, 'Product 6x8ju', 'description 6x8ju', 130000, '2021-11-03 16:19:32', '2021-11-03 16:19:32'),
(103, 'Product kg80i', 'description kg80i', 170000, '2021-11-03 16:19:32', '2021-11-03 16:19:32'),
(104, 'Product 6x8ju', 'description 6x8ju', 130000, '2021-11-03 16:19:49', '2021-11-03 16:19:49'),
(105, 'Product kg80i', 'description kg80i', 170000, '2021-11-03 16:19:49', '2021-11-03 16:19:49'),
(106, 'Product kg80i', 'description kg80i', 170000, '2021-11-03 16:20:12', '2021-11-03 16:20:12'),
(107, 'Product 498hz', 'description 498hz', 120000, '2021-11-03 16:20:12', '2021-11-03 16:20:12'),
(108, 'Product ajifj', 'description ajifj', 990000, '2021-11-03 16:20:40', '2021-11-03 16:20:40'),
(109, 'Product ijgh8', 'description ijgh8', 910000, '2021-11-03 16:20:40', '2021-11-03 16:20:40'),
(110, 'Product ajifj', 'description ajifj', 990000, '2021-11-03 16:21:44', '2021-11-03 16:21:44'),
(111, 'Product ijgh8', 'description ijgh8', 910000, '2021-11-03 16:21:44', '2021-11-03 16:21:44');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin` (`admin`),
  ADD KEY `user` (`customer`);

--
-- Indeks untuk tabel `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order` (`order`),
  ADD KEY `product` (`product`);

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT untuk tabel `log`
--
ALTER TABLE `log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `orders_detail`
--
ALTER TABLE `orders_detail`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `log`
--
ALTER TABLE `log`
  ADD CONSTRAINT `log_ibfk_1` FOREIGN KEY (`user`) REFERENCES `admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`admin`) REFERENCES `admin` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`customer`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD CONSTRAINT `orders_detail_ibfk_1` FOREIGN KEY (`order`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_detail_ibfk_2` FOREIGN KEY (`product`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
