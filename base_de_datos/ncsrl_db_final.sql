-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-08-2020 a las 22:10:38
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ncsrl_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `id_car` bigint(20) UNSIGNED NOT NULL,
  `des_car` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `est_reg` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`id_car`, `des_car`, `est_reg`, `created_at`, `updated_at`) VALUES
(1, 'Gerente General', 'A', '2020-06-08 09:47:14', '2020-06-19 15:14:45'),
(2, 'Gerente Admistrativo', 'A', '2020-06-08 10:42:12', '2020-06-19 15:14:30'),
(3, 'Gerente de Proyectos', 'A', '2020-06-19 15:20:37', '2020-06-19 15:20:37'),
(4, 'Jefe de Logistica', 'A', '2020-06-19 15:21:14', '2020-06-19 15:21:14'),
(5, 'Gerente Operaciones', 'A', '2020-06-23 11:50:23', '2020-06-23 11:50:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cli` bigint(20) UNSIGNED NOT NULL,
  `razsoc_cli` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numdoc_cli` char(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ema_cli` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_tipdoc` bigint(20) UNSIGNED DEFAULT NULL,
  `est_reg` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cli`, `razsoc_cli`, `numdoc_cli`, `ema_cli`, `id_tipdoc`, `est_reg`, `created_at`, `updated_at`) VALUES
(1, 'razon', '10164090588', 'correo@gmail.com', 3, 'E', '2020-06-12 04:45:55', '2020-06-20 09:41:40'),
(2, 'qweqweqwe', '6546546', 'algo@algo.com', 2, 'E', '2020-06-12 04:47:37', '2020-06-12 08:16:40'),
(3, '798798797987', '9879879879', NULL, 2, 'E', '2020-06-12 06:13:56', '2020-06-20 09:41:46'),
(4, '12345678', '87654321', 'dsadfas@asdfa.com', 1, 'E', '2020-06-12 07:30:25', '2020-06-12 07:30:51'),
(5, '321654987', '98765432654', 'algo@algo.com', 1, 'E', '2020-06-12 21:39:18', '2020-06-20 09:41:52'),
(6, 'PETROLEOS DEL PERU PETRO PERU', '20100128218', NULL, 3, 'A', '2020-06-20 07:53:18', '2020-07-15 01:08:38'),
(7, 'LOGISTICA DE QUIMICOS DEL SUR S.A.C.', '20513398787', NULL, 3, 'A', '2020-06-20 07:57:55', '2020-07-15 01:08:25'),
(8, 'RACIONALIZACION EMPRESARIAL S.A.', '20100814162', NULL, 3, 'A', '2020-06-20 09:50:24', '2020-07-15 01:23:34'),
(9, 'SUPERINTENDENCIA DE BANCA SEGUROS Y AFP', '20131370564', 'jrodriguezv@sbs.gob.pe', 3, 'A', '2020-06-20 09:59:58', '2020-06-20 09:59:58'),
(10, 'COMPAÑIA MINERA ZAFRANAL', '20538837611', 'fernando.nunez@zafranal.com.pe', 3, 'A', '2020-06-20 10:13:15', '2020-06-20 10:13:15'),
(11, 'M3 INGENIERIA PERU S.A.C.', '20545451698', 'alexander.villena@m3eng.com', 3, 'A', '2020-06-20 10:19:04', '2020-06-20 10:37:02'),
(12, 'GOBIERNO REGIONAL DE AREQUIPA', '20498390570', 'jrivera@regionarequipa.gob.pe', 3, 'A', '2020-06-20 10:24:46', '2020-06-20 10:24:46'),
(13, 'CENCAR S.A.C.', '20137970563', 'contabilidad@cencarsa.com', 3, 'A', '2020-06-20 10:30:20', '2020-06-20 10:30:20'),
(14, 'TRAZO ARQ S.A.C.', '20455937974', 'jgonzalez@trazoarq.com', 3, 'A', '2020-06-20 10:35:19', '2020-06-20 10:35:19'),
(15, 'INVERCIONES VELASQUEZ E.I.R.L.', '20498357106', 'lavelasquez@hlavilla.com.pe', 3, 'A', '2020-06-20 10:45:33', '2020-06-20 10:45:33'),
(16, 'Alqsoft', '2010256988', 'Alqsoft@alqsoft.com', 3, 'E', '2020-06-25 15:21:30', '2020-06-25 15:44:21'),
(17, 'Empresa 1', '10715955621', 'empresa1@empresa1.com', 3, 'E', '2020-06-26 09:41:13', '2020-07-15 00:11:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente_contacto`
--

CREATE TABLE `cliente_contacto` (
  `id_cli_con` bigint(20) UNSIGNED NOT NULL,
  `nom_cli_con` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ema_cli_con` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cel_cli_con` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ane_cli_con` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `car_cli_con` char(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cli` bigint(20) UNSIGNED DEFAULT NULL,
  `est_reg` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cliente_contacto`
--

INSERT INTO `cliente_contacto` (`id_cli_con`, `nom_cli_con`, `ema_cli_con`, `cel_cli_con`, `ane_cli_con`, `car_cli_con`, `id_cli`, `est_reg`, `created_at`, `updated_at`) VALUES
(1, 'André Cruz', 'ajcruzg95@gmail.com', '953464926', NULL, 'Gerente General', 16, 'E', '2020-06-25 15:22:45', '2020-06-25 15:22:45'),
(2, 'Andre Cruz', 'andre@gmail.com', '953464926', '1002', 'Jefe de agencia', 17, 'E', '2020-06-26 09:42:56', '2020-06-26 09:43:40'),
(3, 'Christian Peña', 'cpeña@gmail.com', '123456789', '1003', 'Jefe de tienda', 17, 'E', '2020-06-26 09:42:56', '2020-06-26 09:43:40'),
(4, 'Luis Valdivia', 'lvaldivia@petroperu.com.pe', NULL, '201', 'Jefe  Planta ILO', 6, 'E', '2020-06-26 09:56:07', '2020-07-15 00:15:57'),
(5, 'Erik Jonathan rojas', NULL, '988573857', NULL, 'Jefe de Planta Sur/Sub Gerencia Distribucion', 6, 'E', '2020-07-15 00:15:57', '2020-07-15 00:19:12'),
(7, 'Erik Jonathan Rojas Yancaya', 'erojas@petroperu.com.pe', '988573857', '53130', 'Jefatura Planta Sur Sub Gerencia Distribucion', 6, 'A', '2020-07-15 00:19:12', '2020-07-15 00:19:12'),
(9, 'Bernabe Chuquihuaccha', 'bernabe.chuquihuaccha@oiltanking.com', '989008804', '201', 'Jefatura Operaciones', 7, 'A', '2020-07-15 01:20:40', '2020-07-15 01:20:40'),
(10, 'Alexander Castillo Madrid', 'alexande.castillo@oiltanking.com', '994102774', '202', 'Supervisor Operaciones', 7, 'A', '2020-07-15 01:20:40', '2020-07-15 01:20:40'),
(11, 'Jhonny Malaga', 'jhonny.malaga@oiltanking.com', '981293859', '203', 'Operador Senior', 7, 'A', '2020-07-15 01:20:40', '2020-07-15 01:20:40'),
(12, 'Joel Gonzales', 'joel.gonzalez@oiltanking.com', '943902459', '204', 'Supervisor de HSSE/Q', 7, 'A', '2020-07-15 01:23:10', '2020-07-15 01:23:10'),
(13, 'Bony Alvarez Granda', 'balvarez@raciemsa.com.pe', '519598115', NULL, 'Jefatura TI', 8, 'A', '2020-07-15 01:41:32', '2020-07-15 01:41:32'),
(14, 'Victor Rojas Orihuela', 'vrojas@raciemsa.com.pe', '949566067', NULL, 'Asistente de TI', 8, 'A', '2020-07-15 01:41:32', '2020-07-15 01:41:32'),
(15, 'Percy Chambi Vargas', 'pchambi@raciemsa.com.pe', '958576038', '3821', 'Responsable de Compras Logística', 8, 'A', '2020-07-15 01:41:32', '2020-07-15 01:41:32'),
(16, 'contacto 1', 'contacto@gmail,com', '987456321', '054', 'cargo', 6, 'A', '2020-08-06 17:15:32', '2020-08-06 17:15:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente_direccion`
--

CREATE TABLE `cliente_direccion` (
  `id_cli_dir` bigint(20) UNSIGNED NOT NULL,
  `ciu_cli` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dir_cli` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel_cli` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cli` bigint(20) UNSIGNED DEFAULT NULL,
  `est_reg` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cliente_direccion`
--

INSERT INTO `cliente_direccion` (`id_cli_dir`, `ciu_cli`, `dir_cli`, `tel_cli`, `id_cli`, `est_reg`, `created_at`, `updated_at`) VALUES
(1, 'Arequipa', 'Urb 12 de octubre C 12', '953464926', 16, 'E', '2020-06-25 15:22:45', '2020-06-25 15:22:45'),
(2, 'Arequipa', 'Av Ejercito 1009', '1234569', 17, 'E', '2020-06-26 09:42:56', '2020-06-26 09:42:56'),
(3, 'Ilo', 'av.lino urquieta nº-458', '564758', 6, 'E', '2020-06-26 09:56:07', '2020-07-15 00:15:57'),
(4, 'Mollendo', 'Av. Apurimac Nº-400 Islay Mollendo Arequipa', '016145000', 6, 'A', '2020-07-15 00:15:57', '2020-07-15 00:19:12'),
(5, 'Arequipa Islay Matarani', 'Av. Ter. Portuario Matarani Nro. S/N', '5112411933', 7, 'A', '2020-07-15 01:20:40', '2020-07-15 01:20:40'),
(6, 'LIMA', 'Av. Republica de Panamá Nº- 2457 Santa Catalina La Victoria', NULL, 8, 'A', '2020-07-15 01:41:32', '2020-07-15 01:41:32'),
(7, 'JULIACA', 'CAR. Juliaca-Puno KM.11 (Hacienda Yungura) Puno-San Roman - Caracoto', NULL, 8, 'A', '2020-07-15 01:41:32', '2020-07-15 01:41:32'),
(8, 'AREQUIPA', 'CAR. Variante Uchumayo KM. 5.5 (El Cural) Cerro Colorado', NULL, 8, 'A', '2020-07-15 01:41:32', '2020-07-15 01:41:32'),
(9, 'ciudad', 'direccion', NULL, 6, 'A', '2020-08-06 16:47:29', '2020-08-06 16:47:29'),
(10, 'aqp', 'direccion 2', NULL, 6, 'A', '2020-08-06 16:53:51', '2020-08-06 16:53:51'),
(11, 'aqp', 'direccion 3', NULL, 6, 'A', '2020-08-06 16:56:05', '2020-08-06 16:56:05'),
(12, 'aqp', 'direccion 4', NULL, 6, 'A', '2020-08-06 16:58:26', '2020-08-06 16:58:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `id_emp` bigint(20) UNSIGNED NOT NULL,
  `nom_emp` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numdoc_emp` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dir_emp` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dis_emp` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ciu_emp` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel_emp` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cel_emp` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `codciu_emp` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_emp` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imgext_emp` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_tipdoc` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id_emp`, `nom_emp`, `numdoc_emp`, `dir_emp`, `dis_emp`, `ciu_emp`, `tel_emp`, `cel_emp`, `codciu_emp`, `img_emp`, `imgext_emp`, `id_tipdoc`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'logo.png', 'png', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fabricante`
--

CREATE TABLE `fabricante` (
  `id_fab` bigint(20) UNSIGNED NOT NULL,
  `des_fab` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `est_reg` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `fabricante`
--

INSERT INTO `fabricante` (`id_fab`, `des_fab`, `est_reg`, `created_at`, `updated_at`) VALUES
(1, 'INTEL', 'A', '2020-06-08 10:31:23', '2020-06-12 06:55:35'),
(2, 'Lumen', 'E', '2020-06-11 14:32:56', '2020-06-11 14:33:08'),
(3, 'NEC', 'A', '2020-06-12 06:57:51', '2020-06-12 06:57:51'),
(4, 'QNAP', 'A', '2020-06-12 06:58:17', '2020-06-12 06:58:17'),
(5, 'HP', 'A', '2020-06-12 08:45:18', '2020-06-12 08:45:18'),
(6, 'COMMSCOPE', 'A', '2020-06-23 12:00:35', '2020-06-23 12:00:35'),
(7, 'CABLOFIL', 'A', '2020-06-23 12:01:03', '2020-06-23 12:01:03'),
(8, 'TUNDRA', 'A', '2020-06-23 12:01:58', '2020-06-23 12:01:58'),
(9, 'AXIS', 'A', '2020-06-23 12:02:08', '2020-06-23 12:02:08'),
(10, 'QUEST', 'A', '2020-06-23 12:02:47', '2020-06-23 12:02:47'),
(11, 'PANDUIT', 'A', '2020-06-23 12:02:57', '2020-06-23 12:02:57'),
(12, 'SIEMON', 'A', '2020-06-23 12:03:45', '2020-06-23 12:03:45'),
(13, 'BELDEN', 'A', '2020-06-23 12:03:57', '2020-06-23 12:03:57'),
(14, 'CISCO', 'A', '2020-06-23 12:04:09', '2020-06-23 12:04:09'),
(15, 'ALLIED TELESIS', 'A', '2020-06-23 12:04:28', '2020-06-23 12:04:28'),
(16, 'UBIQUITI', 'A', '2020-06-23 12:04:50', '2020-06-23 12:04:50'),
(17, 'HIKVISION', 'A', '2020-06-23 12:05:06', '2020-06-23 12:05:06'),
(18, 'BOSCH', 'A', '2020-06-23 12:05:18', '2020-06-23 12:05:18'),
(19, 'HONEYWELL', 'A', '2020-06-23 12:05:32', '2020-06-23 12:05:32'),
(20, 'MIRCOM', 'A', '2020-06-23 12:05:42', '2020-06-23 12:05:42'),
(21, 'APC', 'A', '2020-06-23 12:05:56', '2020-06-23 12:05:56'),
(22, 'EMERSON', 'A', '2020-06-23 12:06:11', '2020-06-23 12:06:11'),
(23, 'VERTIV', 'A', '2020-06-23 12:06:57', '2020-06-23 12:06:57'),
(24, 'FLUKE', 'A', '2020-06-25 13:59:30', '2020-06-25 13:59:30'),
(25, 'AXIS', 'A', '2020-07-07 06:39:56', '2020-07-07 06:39:56'),
(26, '3M', 'A', '2020-07-13 22:22:04', '2020-07-13 22:22:04'),
(27, 'CABLOFIL', 'A', '2020-07-13 22:52:50', '2020-07-13 22:52:50'),
(28, 'LEGRAND', 'A', '2020-07-13 22:55:36', '2020-07-13 22:55:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `id_mar` bigint(20) UNSIGNED NOT NULL,
  `des_mar` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `est_reg` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`id_mar`, `des_mar`, `est_reg`, `created_at`, `updated_at`) VALUES
(1, 'DELL', 'E', '2020-06-08 10:31:12', '2020-06-12 08:33:06'),
(2, 'TP-LINK', 'E', '2020-06-11 06:01:30', '2020-06-12 08:33:09'),
(3, 'D-LINK', 'E', '2020-06-12 06:52:17', '2020-06-12 08:33:13'),
(4, 'CISCO', 'E', '2020-06-12 06:52:26', '2020-06-12 08:33:15'),
(5, 'PANDUIT', 'A', '2020-06-12 08:36:17', '2020-06-12 08:36:17'),
(6, 'HP', 'A', '2020-06-12 08:45:04', '2020-06-12 08:45:04'),
(7, 'CONDUIT', 'A', '2020-06-20 07:35:35', '2020-06-20 07:35:35'),
(8, 'FLUKE', 'A', '2020-06-20 07:36:09', '2020-06-20 07:36:09'),
(9, 'SCHNEIDER', 'A', '2020-06-20 07:36:30', '2020-06-20 07:36:30'),
(10, 'INDECO', 'A', '2020-06-20 07:36:56', '2020-06-20 07:36:56'),
(11, 'LEVITON', 'A', '2020-06-20 07:37:20', '2020-06-20 07:37:20'),
(12, 'KBA', 'A', '2020-06-20 07:37:34', '2020-06-20 07:37:34'),
(13, 'CONDUIT', 'E', '2020-06-20 07:38:00', '2020-06-23 11:46:21'),
(14, 'LEGRANT', 'A', '2020-06-20 07:38:32', '2020-06-20 07:38:32'),
(15, 'LENOVO', 'A', '2020-06-20 07:38:47', '2020-06-20 07:38:47'),
(16, 'COMMSCOPE', 'A', '2020-06-25 12:28:22', '2020-06-25 12:28:22'),
(17, 'Prueba marca', 'E', '2020-06-25 15:19:00', '2020-06-25 15:20:00'),
(18, 'MOTOROLA', 'A', '2020-06-26 09:52:06', '2020-06-26 09:52:06'),
(19, 'AXIS', 'A', '2020-07-07 06:31:25', '2020-07-07 06:31:25'),
(20, '3M', 'A', '2020-07-13 22:14:11', '2020-07-13 22:14:11'),
(21, 'CABLOFIL', 'A', '2020-07-13 22:51:22', '2020-07-13 22:51:22'),
(22, 'LEGRAND', 'A', '2020-07-13 22:55:12', '2020-07-13 22:55:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_08_19_000000_create_failed_jobs_table', 1),
(2, '2020_05_26_233535_create_marca_table', 1),
(3, '2020_05_26_233851_create_modelo_table', 1),
(4, '2020_05_26_234037_create_unidad_medida_table', 1),
(5, '2020_05_26_234133_create_fabricante_table', 1),
(6, '2020_05_27_061253_create_producto_table', 1),
(7, '2020_06_05_231837_create_tipo_documento_table', 1),
(8, '2020_06_05_232204_create_cargo_table', 1),
(9, '2020_06_06_175129_create_users_table', 1),
(10, '2020_06_09_221954_create_tipo_cambio_table', 1),
(11, '2020_06_09_222249_create_registro_cambio_table', 1),
(12, '2020_06_10_215051_create_cliente_table', 1),
(13, '2020_06_15_150438_create_proveedor_table', 1),
(14, '2020_06_17_193112_create_cliente_contacto_table', 1),
(15, '2020_06_17_193420_create_cliente_direccion_table', 1),
(16, '2020_06_21_162938_create_proveeedor_direccion_table', 1),
(17, '2020_06_28_181309_create_proyecto_table', 1),
(18, '2020_07_06_075128_create_proveedor_banco_table', 1),
(19, '2020_07_06_084605_create_proveedor_colaborador_table', 1),
(20, '2020_07_09_152842_create_empresa_table', 1),
(21, '2020_07_22_100830_create_solicitud_cotizacion_cliente_table', 2),
(22, '2020_07_22_102041_create_solicitud_cotizacion_cliente_det_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelo`
--

CREATE TABLE `modelo` (
  `id_mod` bigint(20) UNSIGNED NOT NULL,
  `des_mod` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `est_reg` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `modelo`
--

INSERT INTO `modelo` (`id_mod`, `des_mod`, `est_reg`, `created_at`, `updated_at`) VALUES
(1, 'CMZ-00424UTP-6UA', 'A', '2020-06-08 10:31:43', '2020-06-23 11:56:51'),
(2, '209207', 'A', '2020-06-12 06:53:24', '2020-06-23 11:57:25'),
(3, '209208', 'A', '2020-06-12 06:54:15', '2020-06-23 11:57:39'),
(4, '455383', 'A', '2020-06-12 08:45:11', '2020-06-23 11:58:07'),
(5, 'MM10-NETC6-06', 'A', '2020-06-23 12:09:34', '2020-06-23 12:09:34'),
(6, '704110', 'A', '2020-06-25 14:07:43', '2020-06-25 14:07:43'),
(7, 'MM-10NETC6-03', 'A', '2020-06-25 14:08:05', '2020-06-25 14:08:05'),
(8, '960047', 'A', '2020-06-25 14:08:19', '2020-06-25 14:08:19'),
(9, '483364', 'A', '2020-06-25 14:08:37', '2020-06-25 14:08:37'),
(10, '498591', 'A', '2020-06-25 14:08:51', '2020-06-25 14:08:51'),
(11, '271501', 'A', '2020-06-25 14:09:08', '2020-06-25 14:09:08'),
(12, 'CMZ-00424PAN-C6-01', 'A', '2020-06-25 14:09:52', '2020-06-25 14:09:52'),
(13, '262260', 'A', '2020-06-25 14:10:06', '2020-06-25 14:10:06'),
(14, '262268', 'A', '2020-06-25 14:10:31', '2020-06-25 14:10:31'),
(15, '329291', 'A', '2020-06-25 14:32:57', '2020-06-25 14:32:57'),
(16, '149891', 'A', '2020-06-25 14:33:14', '2020-06-25 14:33:14'),
(17, '224234', 'A', '2020-06-25 14:33:33', '2020-06-25 14:33:33'),
(18, '354363', 'A', '2020-06-25 14:34:10', '2020-06-25 14:34:10'),
(19, '695517', 'A', '2020-06-25 14:34:43', '2020-06-25 14:34:43'),
(20, '545917', 'A', '2020-06-25 14:35:01', '2020-06-25 14:35:01'),
(21, '680444', 'A', '2020-06-25 14:35:17', '2020-06-25 14:35:17'),
(22, '325932', 'A', '2020-06-25 14:36:03', '2020-06-25 14:36:03'),
(23, '956066', 'A', '2020-06-25 14:38:40', '2020-06-25 14:38:40'),
(24, '265696', 'A', '2020-06-25 14:38:53', '2020-06-25 14:38:53'),
(25, '265136', 'A', '2020-06-25 14:39:13', '2020-06-25 14:39:13'),
(26, '265697', 'A', '2020-06-25 14:39:27', '2020-06-25 14:39:27'),
(27, '265137', 'A', '2020-06-25 14:40:25', '2020-06-25 14:40:25'),
(28, '372717', 'A', '2020-06-25 14:40:44', '2020-06-25 14:40:44'),
(29, 'DSX-80007', 'E', '2020-06-26 09:53:39', '2020-06-27 01:29:35'),
(30, 'DSX-8000 CableAnalyzer de 2GHZ con Wi-Fi', 'A', '2020-06-27 01:23:05', '2020-06-27 01:23:05'),
(31, 'DSX-PC6S', 'A', '2020-06-27 01:25:28', '2020-06-27 01:25:28'),
(32, 'DSX-PC6S', 'E', '2020-06-27 01:25:47', '2020-06-27 01:29:45'),
(33, 'DSX-PC6AS', 'A', '2020-06-27 01:28:34', '2020-06-27 01:28:34'),
(34, 'DSX-PC6', 'A', '2020-06-27 01:32:39', '2020-06-27 01:32:39'),
(35, 'DSX-PC6A', 'A', '2020-06-27 01:37:25', '2020-06-27 01:37:25'),
(36, 'VERSIV HARDDSIDED', 'A', '2020-06-27 01:55:39', '2020-06-27 01:55:39'),
(37, 'VERSIV-STND', 'A', '2020-06-27 02:01:06', '2020-06-27 02:01:06'),
(38, 'BACKPACK STRAP FOR VERSIV', 'A', '2020-06-27 02:10:13', '2020-06-27 02:10:13'),
(39, 'CMZ-00424PAN-C6-01', 'A', '2020-06-27 02:12:33', '2020-06-27 02:12:33'),
(40, 'HARD DRIVE DE 4TB IS A 3.5 INCH', 'A', '2020-07-07 06:39:21', '2020-07-07 06:39:21'),
(41, 'CDPP8RG', 'A', '2020-07-07 06:41:55', '2020-07-07 06:41:55'),
(42, 'WMPH2E', 'A', '2020-07-07 06:46:11', '2020-07-07 06:46:11'),
(43, 'PATCH CORD CAT6 1MT LSZH 3 MT BLUE', 'A', '2020-07-08 03:25:14', '2020-07-08 03:25:14'),
(44, 'JACK CAT 6 BLUE', 'A', '2020-07-08 03:32:46', '2020-07-08 03:32:46'),
(45, 'FACE PLATE DOS PUERTOS ANGULAR 45°', 'A', '2020-07-08 09:49:11', '2020-07-08 09:49:11'),
(46, 'CAJA ADOSABLE COLOR BALNCO', 'A', '2020-07-08 09:55:13', '2020-07-08 09:55:13'),
(47, 'PATCH PANEL 24 PUERTOS', 'A', '2020-07-08 10:00:07', '2020-07-08 10:00:07'),
(48, 'PIGTAL LC MULTIMODE OM3 SIMPLEX 1MT', 'A', '2020-07-08 10:04:38', '2020-07-08 10:04:38'),
(49, 'PATCH CORD DE FO LC-LC MULTIMODO OM3 2MT', 'A', '2020-07-08 10:08:40', '2020-07-08 10:08:40'),
(50, 'ACOPLADOR DUPLEX LC-LC OM3 AQUA', 'A', '2020-07-08 10:12:54', '2020-07-08 10:12:54'),
(51, 'ACOPLADOR DUPLEX SC', 'A', '2020-07-08 10:15:12', '2020-07-08 10:15:12'),
(52, 'CASSETE DE ETIQUETAS PARA CABLE 200 ETQ', 'A', '2020-07-08 10:20:24', '2020-07-08 10:20:24'),
(53, 'ORDENADOR DE CABLE HORIZONTA DE 1RU FRONTAL', 'A', '2020-07-08 10:23:26', '2020-07-08 10:23:26'),
(54, 'ARNES DE SEGURIDAD CON LINEA DE VIDA', 'A', '2020-07-13 22:21:15', '2020-07-13 22:21:15'),
(55, 'CABLE BUNDLE ORGANIZING TOOL', 'A', '2020-07-13 22:28:36', '2020-07-13 22:28:36'),
(56, 'PANZONE BEND RADIUS 4\" POST', 'A', '2020-07-13 22:31:27', '2020-07-13 22:31:27'),
(57, 'WATER RESISTANT FACEPLATE WITH GRAY BASE', 'A', '2020-07-13 22:37:42', '2020-07-13 22:37:42'),
(58, 'MOUNTING AXIS MIDSPAN DIN CLIP A', 'A', '2020-07-13 22:42:22', '2020-07-13 22:42:22'),
(59, 'BTRCC 6/20', 'A', '2020-07-13 22:52:21', '2020-07-13 22:52:21'),
(60, 'CM30EZ', 'A', '2020-07-13 22:53:55', '2020-07-13 22:53:55'),
(61, 'CE25EZ', 'A', '2020-07-13 22:55:49', '2020-07-13 22:55:49'),
(62, '1 1/2 IN PAN-WRAP TOOL', 'A', '2020-07-13 23:07:43', '2020-07-13 23:07:43'),
(63, '3/4IN PAN-WRAP TOOL', 'A', '2020-07-13 23:14:27', '2020-07-13 23:14:27'),
(64, '1/2IN PAN-WRAP TOOL', 'A', '2020-07-13 23:16:31', '2020-07-13 23:16:31'),
(65, 'DEPTH FINGERS KIT FOR 42U/45U GABINETS', 'A', '2020-07-13 23:21:10', '2020-07-13 23:21:10'),
(66, 'HDMI 1.4 TYPE A FEMALE TO FEMALE', 'A', '2020-07-13 23:24:25', '2020-07-13 23:24:25'),
(67, '2 POSITION SLOPED SHUTTERED 1/2 INSERT', 'A', '2020-07-13 23:31:22', '2020-07-13 23:31:22'),
(68, 'FACEPLATE SINGLE GANG', 'A', '2020-07-13 23:33:41', '2020-07-13 23:33:41'),
(69, 'ULTIMATE ID PHONE ICON', 'A', '2020-07-13 23:40:03', '2020-07-13 23:40:03'),
(70, 'ULTIMATE ID DATA ICON', 'A', '2020-07-13 23:42:56', '2020-07-13 23:42:56'),
(71, '2 POSITION 1/2 FLAT INSERT', 'A', '2020-07-13 23:45:28', '2020-07-13 23:45:28'),
(72, '2 POSITION 1/3 FLAT INSERT', 'A', '2020-07-13 23:50:57', '2020-07-13 23:50:57'),
(73, 'MODULO CON EMPALME TIPO F', 'A', '2020-07-15 02:05:06', '2020-07-15 02:05:06'),
(74, 'P1 LABEL CASSETTE', 'A', '2020-07-15 02:31:59', '2020-07-15 02:31:59'),
(75, 'CASSETE DE ETIQUETAS PARA FACE PLATE  45°', 'A', '2020-07-15 02:50:13', '2020-07-15 04:07:39'),
(76, 'CASSETE PARA PACH PANEL 4P PVC', 'A', '2020-07-15 04:04:45', '2020-07-15 04:08:05'),
(77, 'TAPA CIEGA COLOR PLOMO', 'A', '2020-07-15 04:14:51', '2020-07-15 04:14:51'),
(78, 'TAPA CIEGA PARA PATCH PANEL NEGRO', 'A', '2020-07-15 04:17:55', '2020-07-15 04:17:55'),
(79, 'TAPA CIEGA PARA FACE PLATE COLOR BLANCO', 'A', '2020-07-15 04:22:14', '2020-07-15 04:24:15'),
(80, 'PLUG RJ-45 SHIELD ED T.CAMPO', 'A', '2020-07-15 04:36:02', '2020-07-15 04:36:02'),
(81, 'PLUG T. CAMPO CAT6', 'A', '2020-07-15 04:39:51', '2020-07-15 04:39:51'),
(82, 'HERRAMIENTA PARA JACK CAT6A', 'A', '2020-07-15 04:44:54', '2020-07-15 04:44:54'),
(83, 'JACK CAT 6A AZUL SHIELDED', 'A', '2020-07-15 04:48:46', '2020-07-15 04:48:46'),
(84, 'PELADOR DE CABLE UTP CAT 5, CAT6, CAT6A, CAT8', 'A', '2020-07-15 04:51:35', '2020-07-15 04:51:35'),
(85, 'ALICATE DE CORTE CABLE UTP', 'A', '2020-07-15 04:55:33', '2020-07-15 04:55:33'),
(86, 'HERRAMIENTA DE TERMINACION TG', 'A', '2020-07-15 04:57:57', '2020-07-15 04:57:57'),
(87, 'HERRAMIENTA DE TERMINACION NETKEY', 'A', '2020-07-15 05:01:38', '2020-07-15 05:01:38'),
(88, 'HERRAMIENTA DE TERMINACION FRAME', 'A', '2020-07-15 05:03:25', '2020-07-15 05:03:25'),
(89, 'HERRAMIENTA DE TERMINACION JACK CAT6', 'A', '2020-07-15 05:05:40', '2020-07-15 05:05:40'),
(90, 'HERRAMIENTA DE TERMINACION  DE PLUG RJ-45  TX6A', 'A', '2020-07-15 05:15:55', '2020-07-15 05:15:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_prod` bigint(20) UNSIGNED NOT NULL,
  `cod_prod` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num_parte_prod` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stk_prod` double(8,2) DEFAULT 0.00,
  `des_prod` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pre_com_prod` double(8,2) DEFAULT NULL,
  `mon_prod` int(11) DEFAULT NULL,
  `id_unimed` bigint(20) UNSIGNED DEFAULT NULL,
  `id_mar` bigint(20) UNSIGNED DEFAULT NULL,
  `id_mod` bigint(20) UNSIGNED DEFAULT NULL,
  `id_fab` bigint(20) UNSIGNED DEFAULT NULL,
  `est_reg` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_prod`, `cod_prod`, `num_parte_prod`, `stk_prod`, `des_prod`, `pre_com_prod`, `mon_prod`, `id_unimed`, `id_mar`, `id_mod`, `id_fab`, `est_reg`, `created_at`, `updated_at`) VALUES
(1, 'pr001', '1', 2.00, 'Producto 1', 2.56, NULL, 5, 2, 1, 4, 'E', '2020-06-08 10:32:28', '2020-06-23 12:23:01'),
(2, '5', 'CMZ-00424UTP-6UA', 3.00, 'CABLE U/UTP LSZH CAT6 23AWG 1000 FT(305M) COLOR BLANCO', 120.00, NULL, 1, 5, 1, 1, 'E', '2020-06-12 08:43:30', '2020-06-23 12:23:09'),
(3, NULL, '5', 10.00, 'Tuberia tipo conduit', 12.00, NULL, 2, 5, 1, 3, 'E', '2020-06-19 15:19:25', '2020-06-19 15:21:40'),
(4, NULL, '5', 10.00, 'PATCH CORD', 15.00, NULL, 2, 5, 2, 3, 'E', '2020-06-19 15:23:48', '2020-06-23 12:23:14'),
(5, 'CMZ-00424UTP-6U', '219585-2', 3.00, 'CABLE U/UTP LSZH CAT6 23AWG 1000 FT (305M) COLOR BLANCO', 135.11, NULL, 13, 16, 1, 6, 'A', '2020-06-25 12:36:14', '2020-06-25 12:36:14'),
(6, '209207', '1375055-6', 11.00, 'MODULO CONECTOR SERIE SL CAT6 U/UTP, COLOR AZUL', 3.33, NULL, 8, 16, 2, 6, 'A', '2020-06-25 14:05:24', '2020-06-25 14:05:24'),
(7, '209208', '1375055-7', 5.00, 'MODULO CONECTOR SERIE SL CAT6 U/UTP, COLOR ROJO', 3.92, NULL, 8, 16, 3, 6, 'A', '2020-06-25 14:45:17', '2020-06-25 14:45:17'),
(8, '455383', '1859247-3', 11.00, 'CABLE DE PARCHEO CAT6 U/UTP NO-PLENUM CM, COLOR AZUL 3 PIES', 3.08, NULL, 8, 16, 4, 6, 'A', '2020-06-25 14:47:54', '2020-06-25 14:47:54'),
(9, 'MM10-NETC6-06', 'NPC06UVDB-BL010F', 11.00, 'CABLE DE PARCHEO CAT6 U/UTP NO-PLENUM CM, COLOR AZUL 10 PIES', 4.05, NULL, 8, 16, 5, 6, 'A', '2020-06-25 14:50:00', '2020-06-25 14:50:00'),
(10, 'NTWC-0001', 'DSX2-8000', 1.00, 'ANALISADOR DE CABLE SERIE DSX', 455000.00, NULL, 8, 8, 30, 24, 'A', '2020-06-26 09:54:07', '2020-06-27 01:23:42'),
(11, NULL, 'DSX-PC6S', 0.00, 'ADAPTADOR DE PATCH CORD CAT6 (PAR)', 4973.00, NULL, 8, 8, 31, 24, 'A', '2020-06-27 01:26:51', '2020-06-27 01:26:51'),
(12, NULL, 'DSX-PC6AS', 0.00, 'ADAPTADOR DE PATCH CORD PARA CAT6A (PAR)', 5881.00, NULL, 8, 8, 33, 24, 'A', '2020-06-27 01:29:10', '2020-06-27 01:30:51'),
(13, NULL, 'DSX-PC6', 0.00, 'ADAPTADOR DE PATCH CORD PARA CAT 6 (UNIDAD)', 3522.89, NULL, 8, 8, 34, 24, 'A', '2020-06-27 01:33:09', '2020-06-27 01:33:09'),
(14, NULL, 'DSX-PC6A', 0.00, 'ADAPTADOR DE PATCH CORD PARA CAT6A (UNIDAD)', 3531.15, NULL, 8, 8, 35, 24, 'A', '2020-06-27 01:37:41', '2020-06-27 01:37:41'),
(15, NULL, 'VERSIV-CASE3', 0.00, 'VERSIV HARDDSIDED CASE', 4889.92, NULL, 8, 8, 36, 24, 'A', '2020-06-27 01:56:07', '2020-06-27 01:56:07'),
(16, NULL, 'VERSIV-STND', 0.00, 'VERSIV DEMO STAND', 329.57, NULL, 8, 8, 37, 24, 'A', '2020-06-27 02:01:30', '2020-06-27 02:01:30'),
(17, NULL, 'VERSIV-BACKPKSTRP', 0.00, 'BACKPACK STRAP FOR VERSIV LARGE', NULL, NULL, 8, 8, 38, 24, 'A', '2020-06-27 02:10:34', '2020-06-27 02:10:34'),
(18, NULL, 'PUZ6004WH-CEG', 2.00, 'CABLE DE COBRE CATEGORIA 6 4P 23 AWF NO BLINDADO LSZH-3 BLANCO 305M', NULL, NULL, 13, 5, 1, 11, 'A', '2020-06-27 02:14:08', '2020-06-27 02:14:08'),
(19, NULL, '01858-001', 2.00, 'SURVEILLANCE DRIVE 4TB IS 3.5INCH INTERNAL DRIVE DESIGNED', 0.00, NULL, 8, 19, 40, 9, 'A', '2020-07-07 06:40:13', '2020-07-07 06:40:13'),
(20, NULL, 'CDPP8RG', 1.00, 'DIN RAIL MNT CU PANEL INDUSTRIALNET', NULL, NULL, 8, 5, 41, 11, 'A', '2020-07-07 06:42:25', '2020-07-07 06:42:25'),
(21, NULL, 'WMPH2E', 0.00, 'CABLE MGMT DUCT HORIZONTAL 3.5HX20WX9D EXTD COVER-2 CLIPS BLACK, 2RMU ROHS', NULL, NULL, 8, 5, 42, 11, 'A', '2020-07-07 06:46:49', '2020-07-07 06:46:49'),
(22, NULL, 'UTPSPL3MBUY', 10.00, 'UTP CAT6 MOD PATCH CORD 8W8P 4PR STRANDED LSZH 3MT BLUE', 0.00, NULL, 8, 5, 43, 11, 'A', '2020-07-08 03:25:45', '2020-07-08 03:25:45'),
(23, NULL, 'CJ688TPBU', 27.00, '1 PORT MOD JACK IDC 8W8P UTP T568A/B CAT6 TX PLUS MINICOM BLUE ROHS', 0.00, NULL, 8, 5, 44, 11, 'A', '2020-07-08 03:33:38', '2020-07-08 03:33:57'),
(24, NULL, 'UICFPHSE2IW', 16.00, 'DUAL FACE PLATE FOR MINICOM JACK SLOPED INTL WHITE ROHS', NULL, NULL, 8, 5, 45, 11, 'A', '2020-07-08 09:49:37', '2020-07-15 02:26:16'),
(25, NULL, 'JBX3510IW-A', 30.00, 'RACEWAY JUNCTION BOX SGL GANG FOR TYPE 1&C RACEWAY OFF WHITE ROHS', 0.00, NULL, 8, 5, NULL, 11, 'A', '2020-07-08 09:55:17', '2020-07-08 09:55:17'),
(26, NULL, 'CPPL24WBLY', 2.00, '24-PORT PANLE UNLOADED SNAP-IN 4 POR FACEPLATE BLK WITH LABELS ROHS', 0.00, NULL, 8, 5, NULL, 11, 'A', '2020-07-08 10:00:12', '2020-07-08 10:00:12'),
(27, NULL, 'FX1BN1NNNSNM001', 4.00, 'OM3, 1-FIBER, 900UM BUFFERED LC PIGTAIL MULTIMODE SIMPLEX', 0.00, NULL, 8, 5, 48, 11, 'A', '2020-07-08 10:04:53', '2020-07-08 10:04:53'),
(28, NULL, 'FX2ERLNLNSNM002', 1.00, 'OM3 2-F 1.6MM PATCH CORD RISER LC-LC DUPLEX AQUA 2M', 0.00, NULL, 8, 5, 49, 11, 'A', '2020-07-08 10:09:17', '2020-07-08 10:09:17'),
(29, NULL, 'CMDSAQLCZBL', 2.00, 'LC 10GIG DUPLEX MM ADPTR NOD ZIRCONIA CERAMIC SPLIT SLEEVES AQUA SR/SR', 0.00, NULL, 8, 5, 50, 11, 'A', '2020-07-08 10:13:10', '2020-07-08 10:13:10'),
(30, NULL, 'CMDBUSCZBL', 1.00, 'SC DUPL (BU) ADAPTER (BL) MODULE ASSY (ZIRC)', 0.00, NULL, 8, 5, 51, 11, 'A', '2020-07-08 10:15:39', '2020-07-08 10:15:39'),
(31, NULL, 'S100X150VAC', 4.00, 'P1 CASSETTE SELF-LAM LABLE VINYL 1.00\" Wx1.50\"L x 0.5\" 200 Labels', 0.00, NULL, 8, 5, 52, 11, 'A', '2020-07-08 10:20:36', '2020-07-15 02:39:37'),
(32, NULL, 'WMPFSE', 2.00, 'CABLE MANAGER HORIZONTAL 1.7\"H x 19\"W x 3.7\"D 1RMU BLK FRONT ONLY ROHS', 0.00, NULL, 8, 5, 53, 11, 'A', '2020-07-08 10:23:53', '2020-07-08 10:23:53'),
(33, NULL, '3M 1340180', 3.00, 'ARNES - LINEA DE VIDA', NULL, NULL, 8, 20, 54, 26, 'A', '2020-07-13 22:22:31', '2020-07-13 22:22:31'),
(34, NULL, 'CBOT24K', 6.00, 'ORGANIZADOR DE CABLE', NULL, NULL, 8, 5, 55, 11, 'A', '2020-07-13 22:28:57', '2020-07-13 22:28:57'),
(35, NULL, 'PZBR4', 8.00, 'DEDOS PARA GABINETE DE PARED', NULL, NULL, 8, 5, 56, 11, 'A', '2020-07-13 22:31:46', '2020-07-13 22:31:46'),
(36, NULL, 'CFPWR4CIG', 5.00, 'FACEPLATE RESISTENTE AL AGUA', NULL, NULL, NULL, 5, 57, 11, 'A', '2020-07-13 22:38:01', '2020-07-13 22:38:01'),
(37, NULL, '5503-931', 9.00, 'RIEL DIN DE MONTAJE MIDSPAN AXIS', NULL, NULL, 8, 19, 58, 9, 'A', '2020-07-13 22:42:43', '2020-07-13 22:42:43'),
(38, NULL, 'CM801011', 80.00, 'TORNILLO CON TUERCA', NULL, NULL, 8, 21, 59, 7, 'A', '2020-07-13 22:52:56', '2020-07-13 22:52:56'),
(39, NULL, 'CM558041', 70.00, 'MORDAZA GRANDE', NULL, NULL, 8, 21, NULL, 27, 'A', '2020-07-13 22:54:03', '2020-07-13 22:58:20'),
(40, NULL, 'CM558011', 62.00, 'MORDAZA PEQUEÑA', NULL, NULL, NULL, 22, 61, 28, 'A', '2020-07-13 22:56:11', '2020-07-13 22:59:54'),
(41, NULL, 'PWT150', 1.00, 'ORDENADOR DE CABLE ESPIRAL', NULL, NULL, 8, 5, 62, 11, 'A', '2020-07-13 23:07:57', '2020-07-13 23:07:57'),
(42, NULL, 'PWT100', 1.00, 'ORDENADOR DE CABLE ESPIRAL', NULL, NULL, 8, 5, 63, 11, 'A', '2020-07-13 23:14:43', '2020-07-13 23:14:43'),
(43, NULL, 'PWT50', 1.00, 'ORDENADOR DE CABLE ESPIRAL', NULL, NULL, 8, 5, 64, 11, 'A', '2020-07-13 23:16:55', '2020-07-13 23:16:55'),
(44, NULL, 'SN25F', 1.00, 'DEPTH FINGERS KIT FOR 42U/45U GABINETS', NULL, NULL, 17, 5, 65, 11, 'A', '2020-07-13 23:21:23', '2020-07-13 23:21:23'),
(45, NULL, 'CMHDMIIW', 4.00, 'ADAPTADOR HDMI', NULL, NULL, 8, 5, 66, 11, 'A', '2020-07-13 23:24:58', '2020-07-13 23:24:58'),
(46, NULL, 'CHS2SIW-X', 10.00, 'ACCESORIO PARA DOS MODULOS INCLINADOS', NULL, NULL, 8, 5, 67, 11, 'A', '2020-07-13 23:31:44', '2020-07-13 23:31:44'),
(47, NULL, 'CBEIWY', 1.00, 'MARCO MODULAR', NULL, NULL, 8, 5, 68, 11, 'A', '2020-07-13 23:34:05', '2020-07-13 23:34:05'),
(48, NULL, 'UICIPRD-C', 226.00, 'ICONO DE TELEFONO ROJO', NULL, NULL, NULL, 5, 69, 11, 'A', '2020-07-13 23:40:15', '2020-07-13 23:40:15'),
(49, NULL, 'UICIDBU-C', 193.00, 'ICONO DATA AZUL', NULL, NULL, 8, 5, 70, 11, 'A', '2020-07-13 23:43:26', '2020-07-13 23:43:26'),
(50, NULL, 'CHF2IW-X', 8.00, 'INSERCION PLANA PARA DOS MODULOS', NULL, NULL, 8, 5, 71, 11, 'A', '2020-07-13 23:48:25', '2020-07-13 23:48:25'),
(51, NULL, 'CHF2MIW-X', 7.00, 'INSERCION PLANA PARA DOS MODULOS', NULL, NULL, 8, 5, 72, 11, 'A', '2020-07-13 23:51:14', '2020-07-13 23:51:14'),
(52, NULL, 'CMFIW', 3.00, 'CONECTOR CABLE CATV BNC', NULL, NULL, 8, 5, 73, 11, 'A', '2020-07-15 02:05:47', '2020-07-15 02:05:47'),
(53, NULL, 'S100X150VAC', 4.00, 'CASSETTE ETIQUETA PARA CABLE', NULL, NULL, 8, 5, 74, 11, 'E', '2020-07-15 02:33:19', '2020-07-15 02:37:56'),
(54, NULL, 'C125X030FJC', 1.00, 'POLYOLEFIN COMP LABEL BLACK ON WHITE 200 LABELS 1.25\" x 0.30\" - 31.7mm x 7.6mm', NULL, NULL, 8, 5, 75, 11, 'A', '2020-07-15 02:51:12', '2020-07-15 02:51:12'),
(55, NULL, 'C261X035Y1C', 2.00, 'NA POLYESTER LABEL BLACK ON WHITE 75 LABELS 2.61\" x 0.35\" 66.3mm x 8.9mm', NULL, NULL, 8, 5, 76, 11, 'A', '2020-07-15 04:05:08', '2020-07-15 04:05:45'),
(56, NULL, 'CMBIG-X', 19.00, 'MINI-COM BLANK MODULE', NULL, NULL, 8, 5, 77, 11, 'A', '2020-07-15 04:15:14', '2020-07-15 04:15:14'),
(57, NULL, 'CMBIW-X', 14.00, 'MINI-COM BLANK MODULE', NULL, NULL, 8, 5, 79, 11, 'A', '2020-07-15 04:18:21', '2020-07-15 04:24:50'),
(58, NULL, 'CMBBL-X', 7.00, 'MINI-COM BLANK MODULE', NULL, NULL, 8, 5, 78, 11, 'A', '2020-07-15 04:22:19', '2020-07-15 04:25:08'),
(59, NULL, 'FPS6X88MTG', 7.00, 'FIELD TERMINABLE RJ-45 PLUG', NULL, NULL, 8, 5, 80, 11, 'A', '2020-07-15 04:36:11', '2020-07-15 04:36:11'),
(60, NULL, 'FP6X88MTG', 10.00, 'FIELD TERMINABLE R-45 PLUG CAT 6A AND 22AWG-26AWG', NULL, NULL, 8, 5, 81, 11, 'A', '2020-07-15 04:40:09', '2020-07-15 04:40:09'),
(61, NULL, 'EGJT-1', 2.00, 'ENHANCED GIGA-TX JACK TOOL FOR TG STYLE MODULAR JACKS', NULL, NULL, 8, 5, 82, 11, 'A', '2020-07-15 04:45:17', '2020-07-15 04:45:17'),
(62, NULL, 'CJS6X88TGY', 2.00, 'MINI-COM  TX6 10GIG SHIELDED JACK MODULE', NULL, NULL, 8, 5, 83, 11, 'A', '2020-07-15 04:49:03', '2020-07-15 04:49:03'),
(63, NULL, 'CJAST', 3.00, 'CABLE JACKET ADJUSTABLE STRIPPER', NULL, NULL, 8, 5, 84, 11, 'A', '2020-07-15 04:51:56', '2020-07-15 04:51:56'),
(64, NULL, 'CWST', 3.00, 'SNIPPING TOOL CUTS COPPER WIRE UP TO 14 AWG (1.66mm)', NULL, NULL, 8, 5, 85, 11, 'A', '2020-07-15 04:55:53', '2020-07-15 04:55:53'),
(65, NULL, 'TGJT D11', 1.00, 'TERMINATION TOOL CAT6 TG', NULL, NULL, 8, 5, 86, NULL, 'A', '2020-07-15 04:59:56', '2020-07-15 04:59:56'),
(66, NULL, 'NKSPB', 1.00, 'NETKEY PUNCHDOWN BASE', NULL, NULL, 8, 5, 87, 11, 'A', '2020-07-15 05:02:04', '2020-07-15 05:02:04'),
(67, NULL, 'CJT', 1.00, 'TERMINACION TOOL FOR LEAD FRAME MODULES', NULL, NULL, 8, 5, 88, 11, 'A', '2020-07-15 05:03:42', '2020-07-15 05:03:42'),
(68, NULL, 'CGJT', 2.00, 'CGJT TERMINATION TOLL JACK', NULL, NULL, 8, 5, 89, 11, 'A', '2020-07-15 05:06:03', '2020-07-15 05:06:03'),
(69, NULL, 'EGPT', 2.00, 'TERMINATION TOLL EGPT', NULL, NULL, 8, 5, 90, 11, 'A', '2020-07-15 05:16:14', '2020-07-15 05:16:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id_prov` bigint(20) UNSIGNED NOT NULL,
  `razsoc_prov` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ema_prov` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num_doc_prov` char(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_tipdoc` bigint(20) UNSIGNED DEFAULT NULL,
  `est_reg` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id_prov`, `razsoc_prov`, `ema_prov`, `num_doc_prov`, `id_tipdoc`, `est_reg`, `created_at`, `updated_at`) VALUES
(1, 'Anixter Peru S.A.C.', NULL, '20418354781', 3, 'A', '2020-07-10 04:23:25', '2020-07-10 04:23:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor_banco`
--

CREATE TABLE `proveedor_banco` (
  `id_prov_ban` bigint(20) UNSIGNED NOT NULL,
  `tip_prov_ban` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cue_prov_ban` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ban_prov_ban` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_prov` bigint(20) UNSIGNED DEFAULT NULL,
  `com_prov_ban` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `est_reg` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `proveedor_banco`
--

INSERT INTO `proveedor_banco` (`id_prov_ban`, `tip_prov_ban`, `cue_prov_ban`, `ban_prov_ban`, `id_prov`, `com_prov_ban`, `est_reg`, `created_at`, `updated_at`) VALUES
(1, 'BANCARIA', '3363105102371', 'INTERBANK', 1, 'CUENTA SIMPLE', 'E', '2020-07-10 04:31:13', '2020-07-10 04:31:21'),
(2, 'Dolares', '194-1112239-1-46', 'Credito', 1, 'Cuenta Corriente Dolares', 'A', '2020-07-15 00:09:52', '2020-07-15 00:09:52'),
(3, 'Soles', '194-1500869-0-91', 'Credito', 1, 'Cuenta Corriente Soles', 'A', '2020-07-15 00:09:52', '2020-07-15 00:09:52'),
(4, 'Dolares', '000-4190877', 'Scotiabank', 1, 'Cuenta Corriente Dolares', 'A', '2020-07-15 00:09:52', '2020-07-15 00:09:52'),
(5, 'Soles', '000-9853421', 'Scotiabank', 1, 'Cuenta Corriente Soles', 'A', '2020-07-15 00:09:53', '2020-07-15 00:09:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor_colaborador`
--

CREATE TABLE `proveedor_colaborador` (
  `id_prov_col` bigint(20) UNSIGNED NOT NULL,
  `nom_prov_col` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ema_prov_col` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel_prov_col` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_prov` bigint(20) UNSIGNED DEFAULT NULL,
  `ane_prov_col` char(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `car_prov_col` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `est_reg` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `proveedor_colaborador`
--

INSERT INTO `proveedor_colaborador` (`id_prov_col`, `nom_prov_col`, `ema_prov_col`, `tel_prov_col`, `id_prov`, `ane_prov_col`, `car_prov_col`, `est_reg`, `created_at`, `updated_at`) VALUES
(1, 'Maria  Teresa Chavez', 'maria.chavez@anixter.com', '945610807', 1, NULL, 'Inside Sales Regiones Perú', 'A', '2020-07-15 00:09:53', '2020-07-15 00:09:53'),
(2, 'Karla Sanchez', 'karla.sanchez@anixter.com', '977253029', 1, NULL, 'Accounts Receivable Analyst', 'A', '2020-07-15 00:09:53', '2020-07-15 00:09:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor_direccion`
--

CREATE TABLE `proveedor_direccion` (
  `id_prov_dir` bigint(20) UNSIGNED NOT NULL,
  `ciu_prov` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dir_prov` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel_prov` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_prov` bigint(20) UNSIGNED DEFAULT NULL,
  `est_reg` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `proveedor_direccion`
--

INSERT INTO `proveedor_direccion` (`id_prov_dir`, `ciu_prov`, `dir_prov`, `tel_prov`, `id_prov`, `est_reg`, `created_at`, `updated_at`) VALUES
(1, 'Lima', 'CAL.ONTARIO NRO. 157 URB. LA CAMPIÑA  CHORRILLOS  LIMA', '014151000', 1, 'A', '2020-07-10 04:25:35', '2020-07-15 00:09:53'),
(2, 'Lima', 'CAL.ONTARIO NRO. 157 URB. LA CAMPINA', NULL, 1, 'E', '2020-07-10 04:25:35', '2020-07-10 04:25:52'),
(3, 'LIMA', 'CAR. PANAMERICANA SUR NRO. 2001 INT. J45 OTR. AUTOPISTA (KM 38)', NULL, 1, 'E', '2020-07-10 04:25:35', '2020-07-15 00:09:53'),
(4, 'LIMA', 'CAR. PANAMERICANA SUR NRO. 2001 INT. J45 OTR. AUTOPISTA (KM 38)', NULL, 1, 'E', '2020-07-10 04:25:35', '2020-07-10 04:25:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

CREATE TABLE `proyecto` (
  `id_proy` bigint(20) UNSIGNED NOT NULL,
  `nom_proy` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ser_proy` char(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num_proy` char(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cli` bigint(20) UNSIGNED DEFAULT NULL,
  `est_reg` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_cambio`
--

CREATE TABLE `registro_cambio` (
  `id_regcam` bigint(20) UNSIGNED NOT NULL,
  `des_regcam` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `det_regcam` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_tipcam` bigint(20) UNSIGNED DEFAULT NULL,
  `id_col` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `registro_cambio`
--

INSERT INTO `registro_cambio` (`id_regcam`, `des_regcam`, `det_regcam`, `id_tipcam`, `id_col`, `created_at`, `updated_at`) VALUES
(1, 'Se creo la marca con ID: 2', NULL, 1, 1, '2020-06-11 06:01:30', '2020-06-11 06:01:30'),
(2, 'Se modifico el producto con ID: 1', NULL, 2, 1, '2020-06-11 07:47:02', '2020-06-11 07:47:02'),
(3, 'Se creo el fabricante con ID: 2', NULL, 1, 1, '2020-06-11 14:32:56', '2020-06-11 14:32:56'),
(4, 'Se elimino el fabricante con ID: 2', NULL, 3, 1, '2020-06-11 14:33:08', '2020-06-11 14:33:08'),
(5, 'Se creo la unidad de medida con ID: 2', NULL, 1, 1, '2020-06-12 00:28:07', '2020-06-12 00:28:07'),
(6, 'Se creo la unidad de medida con ID: 3', NULL, 1, 1, '2020-06-12 00:30:32', '2020-06-12 00:30:32'),
(7, 'Se creo la unidad de medida con ID: 4', NULL, 1, 1, '2020-06-12 00:31:05', '2020-06-12 00:31:05'),
(8, 'Se creo la unidad de medida con ID: 5', NULL, 1, 1, '2020-06-12 00:31:34', '2020-06-12 00:31:34'),
(9, 'Se elimino el usuario con ID: 7', NULL, 3, 13, '2020-06-12 03:58:13', '2020-06-12 03:58:13'),
(10, 'Se creo el usuario con ID: 14', NULL, 1, 13, '2020-06-12 04:03:11', '2020-06-12 04:03:11'),
(11, 'Se elimino el usuario con ID: 14', NULL, 3, 13, '2020-06-12 04:29:23', '2020-06-12 04:29:23'),
(12, 'Se creo el cliente con ID: 1', NULL, 1, 13, '2020-06-12 04:45:55', '2020-06-12 04:45:55'),
(13, 'Se creo el cliente con ID: 2', NULL, 1, 13, '2020-06-12 04:47:37', '2020-06-12 04:47:37'),
(14, 'Se creo el cliente con ID: 3', NULL, 1, 13, '2020-06-12 06:13:56', '2020-06-12 06:13:56'),
(15, 'Se creo la marca con ID: 3', NULL, 1, 1, '2020-06-12 06:52:17', '2020-06-12 06:52:17'),
(16, 'Se creo la marca con ID: 4', NULL, 1, 1, '2020-06-12 06:52:26', '2020-06-12 06:52:26'),
(17, 'Se creo el modelo con ID: 2', NULL, 1, 1, '2020-06-12 06:53:24', '2020-06-12 06:53:24'),
(18, 'Se creo el modelo con ID: 3', NULL, 1, 1, '2020-06-12 06:54:15', '2020-06-12 06:54:15'),
(19, 'Se modifico el fabricante con ID: 1', NULL, 2, 1, '2020-06-12 06:55:35', '2020-06-12 06:55:35'),
(20, 'Se creo el fabricante con ID: 3', NULL, 1, 1, '2020-06-12 06:57:51', '2020-06-12 06:57:51'),
(21, 'Se creo el fabricante con ID: 4', NULL, 1, 1, '2020-06-12 06:58:17', '2020-06-12 06:58:17'),
(22, 'Se modifico el producto con ID: 1', NULL, 2, 1, '2020-06-12 07:00:16', '2020-06-12 07:00:16'),
(23, 'Se creo el cliente con ID: 4', NULL, 1, 1, '2020-06-12 07:30:25', '2020-06-12 07:30:25'),
(24, 'Se modifico el cliente con ID: 4', NULL, 2, 1, '2020-06-12 07:30:45', '2020-06-12 07:30:45'),
(25, 'Se elimino el cliente con ID: 4', NULL, 3, 1, '2020-06-12 07:30:51', '2020-06-12 07:30:51'),
(26, 'Se modifico el cliente con ID: 1', NULL, 2, 13, '2020-06-12 08:06:41', '2020-06-12 08:06:41'),
(27, 'Se creo el tipo de documento con ID: 3', NULL, 1, 13, '2020-06-12 08:16:21', '2020-06-12 08:16:21'),
(28, 'Se elimino el cliente con ID: 2', NULL, 3, 13, '2020-06-12 08:16:40', '2020-06-12 08:16:40'),
(29, 'Se modifico el cliente con ID: 1', NULL, 2, 13, '2020-06-12 08:16:53', '2020-06-12 08:16:53'),
(30, 'Se elimino la marca con ID: 1', NULL, 3, 1, '2020-06-12 08:33:06', '2020-06-12 08:33:06'),
(31, 'Se elimino la marca con ID: 2', NULL, 3, 1, '2020-06-12 08:33:09', '2020-06-12 08:33:09'),
(32, 'Se elimino la marca con ID: 3', NULL, 3, 1, '2020-06-12 08:33:13', '2020-06-12 08:33:13'),
(33, 'Se elimino la marca con ID: 4', NULL, 3, 1, '2020-06-12 08:33:15', '2020-06-12 08:33:15'),
(34, 'Se creo la marca con ID: 5', NULL, 1, 1, '2020-06-12 08:36:17', '2020-06-12 08:36:17'),
(35, 'Se creo el producto con ID: 2', NULL, 1, 1, '2020-06-12 08:43:30', '2020-06-12 08:43:30'),
(36, 'Se creo la marca con ID: 6', NULL, 1, 1, '2020-06-12 08:45:04', '2020-06-12 08:45:04'),
(37, 'Se creo el modelo con ID: 4', NULL, 1, 1, '2020-06-12 08:45:11', '2020-06-12 08:45:11'),
(38, 'Se creo el fabricante con ID: 5', NULL, 1, 1, '2020-06-12 08:45:18', '2020-06-12 08:45:18'),
(39, 'Se modifico el producto con ID: 2', NULL, 2, 1, '2020-06-12 08:47:47', '2020-06-12 08:47:47'),
(40, 'Se creo el usuario con ID: 15', NULL, 1, 1, '2020-06-12 08:52:57', '2020-06-12 08:52:57'),
(41, 'Se creo el cliente con ID: 5', NULL, 1, 1, '2020-06-12 21:39:18', '2020-06-12 21:39:18'),
(42, 'Se modifico el cliente con ID: 5', NULL, 2, 1, '2020-06-12 21:39:46', '2020-06-12 21:39:46'),
(43, 'Se modifico el cliente con ID: 5', NULL, 2, 1, '2020-06-12 21:41:24', '2020-06-12 21:41:24'),
(44, 'Se creo el usuario con ID: 16', NULL, 1, 15, '2020-06-19 14:59:49', '2020-06-19 14:59:49'),
(45, 'Se creo el usuario con ID: 17', NULL, 1, 16, '2020-06-19 15:11:04', '2020-06-19 15:11:04'),
(46, 'Se modifico el usuario con ID: 16', NULL, 2, 16, '2020-06-19 15:11:58', '2020-06-19 15:11:58'),
(47, 'Se modifico el cargo con ID: 2', NULL, 2, 16, '2020-06-19 15:14:30', '2020-06-19 15:14:30'),
(48, 'Se modifico el cargo con ID: 1', NULL, 2, 16, '2020-06-19 15:14:45', '2020-06-19 15:14:45'),
(49, 'Se creo el producto con ID: 3', NULL, 1, 17, '2020-06-19 15:19:25', '2020-06-19 15:19:25'),
(50, 'Se creo el cargo con ID: 3', NULL, 1, 16, '2020-06-19 15:20:37', '2020-06-19 15:20:37'),
(51, 'Se creo el cargo con ID: 4', NULL, 1, 16, '2020-06-19 15:21:14', '2020-06-19 15:21:14'),
(52, 'Se modifico el producto con ID: 3', NULL, 2, 17, '2020-06-19 15:21:22', '2020-06-19 15:21:22'),
(53, 'Se elimino el producto con ID: 3', NULL, 3, 17, '2020-06-19 15:21:40', '2020-06-19 15:21:40'),
(54, 'Se creo el producto con ID: 4', NULL, 1, 17, '2020-06-19 15:23:48', '2020-06-19 15:23:48'),
(55, 'Se creo el usuario con ID: 18', NULL, 1, 16, '2020-06-19 15:25:37', '2020-06-19 15:25:37'),
(56, 'Se modifico el usuario con ID: 16', NULL, 2, 16, '2020-06-19 15:26:04', '2020-06-19 15:26:04'),
(57, 'Se modifico el usuario con ID: 17', NULL, 2, 16, '2020-06-19 15:26:36', '2020-06-19 15:26:36'),
(58, 'Se modifico el fabricante con ID: 1', NULL, 2, 16, '2020-06-20 07:34:04', '2020-06-20 07:34:04'),
(59, 'Se creo la marca con ID: 7', NULL, 1, 16, '2020-06-20 07:35:35', '2020-06-20 07:35:35'),
(60, 'Se creo la marca con ID: 8', NULL, 1, 16, '2020-06-20 07:36:09', '2020-06-20 07:36:09'),
(61, 'Se creo la marca con ID: 9', NULL, 1, 16, '2020-06-20 07:36:30', '2020-06-20 07:36:30'),
(62, 'Se creo la marca con ID: 10', NULL, 1, 16, '2020-06-20 07:36:56', '2020-06-20 07:36:56'),
(63, 'Se creo la marca con ID: 11', NULL, 1, 16, '2020-06-20 07:37:20', '2020-06-20 07:37:20'),
(64, 'Se creo la marca con ID: 12', NULL, 1, 16, '2020-06-20 07:37:34', '2020-06-20 07:37:34'),
(65, 'Se creo la marca con ID: 13', NULL, 1, 16, '2020-06-20 07:38:00', '2020-06-20 07:38:00'),
(66, 'Se creo la marca con ID: 14', NULL, 1, 16, '2020-06-20 07:38:32', '2020-06-20 07:38:32'),
(67, 'Se creo la marca con ID: 15', NULL, 1, 16, '2020-06-20 07:38:47', '2020-06-20 07:38:47'),
(68, 'Se creo el cliente con ID: 6', NULL, 1, 16, '2020-06-20 07:53:18', '2020-06-20 07:53:18'),
(69, 'Se creo el cliente con ID: 7', NULL, 1, 16, '2020-06-20 07:57:55', '2020-06-20 07:57:55'),
(70, 'Se elimino el cliente con ID: 1', NULL, 3, 16, '2020-06-20 09:41:40', '2020-06-20 09:41:40'),
(71, 'Se elimino el cliente con ID: 3', NULL, 3, 16, '2020-06-20 09:41:46', '2020-06-20 09:41:46'),
(72, 'Se elimino el cliente con ID: 5', NULL, 3, 16, '2020-06-20 09:41:52', '2020-06-20 09:41:52'),
(73, 'Se creo el cliente con ID: 8', NULL, 1, 16, '2020-06-20 09:50:24', '2020-06-20 09:50:24'),
(74, 'Se creo el cliente con ID: 9', NULL, 1, 16, '2020-06-20 09:59:58', '2020-06-20 09:59:58'),
(75, 'Se modifico el tipo de documento con ID: 2', NULL, 2, 16, '2020-06-20 10:04:11', '2020-06-20 10:04:11'),
(76, 'Se modifico el tipo de documento con ID: 2', NULL, 2, 16, '2020-06-20 10:04:19', '2020-06-20 10:04:19'),
(77, 'Se modifico el tipo de documento con ID: 2', NULL, 2, 16, '2020-06-20 10:04:25', '2020-06-20 10:04:25'),
(78, 'Se modifico el tipo de documento con ID: 2', NULL, 2, 16, '2020-06-20 10:04:36', '2020-06-20 10:04:36'),
(79, 'Se modifico el tipo de documento con ID: 2', NULL, 2, 16, '2020-06-20 10:04:49', '2020-06-20 10:04:49'),
(80, 'Se creo el cliente con ID: 10', NULL, 1, 16, '2020-06-20 10:13:15', '2020-06-20 10:13:15'),
(81, 'Se creo el cliente con ID: 11', NULL, 1, 16, '2020-06-20 10:19:04', '2020-06-20 10:19:04'),
(82, 'Se creo el cliente con ID: 12', NULL, 1, 16, '2020-06-20 10:24:46', '2020-06-20 10:24:46'),
(83, 'Se creo el cliente con ID: 13', NULL, 1, 16, '2020-06-20 10:30:20', '2020-06-20 10:30:20'),
(84, 'Se creo el cliente con ID: 14', NULL, 1, 16, '2020-06-20 10:35:19', '2020-06-20 10:35:19'),
(85, 'Se modifico el cliente con ID: 11', NULL, 2, 16, '2020-06-20 10:37:02', '2020-06-20 10:37:02'),
(86, 'Se creo el cliente con ID: 15', NULL, 1, 16, '2020-06-20 10:45:33', '2020-06-20 10:45:33'),
(87, 'Se elimino la marca con ID: 13', NULL, 3, 16, '2020-06-23 11:46:21', '2020-06-23 11:46:21'),
(88, 'Se creo la unidad de medida con ID: 6', NULL, 1, 16, '2020-06-23 11:47:20', '2020-06-23 11:47:20'),
(89, 'Se modifico la unidad de medida con ID: 6', NULL, 2, 16, '2020-06-23 11:47:31', '2020-06-23 11:47:31'),
(90, 'Se creo el cargo con ID: 5', NULL, 1, 16, '2020-06-23 11:50:23', '2020-06-23 11:50:23'),
(91, 'Se modifico la unidad de medida con ID: 1', NULL, 2, 16, '2020-06-23 11:51:55', '2020-06-23 11:51:55'),
(92, 'Se modifico la unidad de medida con ID: 2', NULL, 2, 16, '2020-06-23 11:52:11', '2020-06-23 11:52:11'),
(93, 'Se modifico la unidad de medida con ID: 3', NULL, 2, 16, '2020-06-23 11:52:26', '2020-06-23 11:52:26'),
(94, 'Se modifico la unidad de medida con ID: 6', NULL, 2, 16, '2020-06-23 11:55:09', '2020-06-23 11:55:09'),
(95, 'Se modifico el modelo con ID: 1', NULL, 2, 16, '2020-06-23 11:56:51', '2020-06-23 11:56:51'),
(96, 'Se modifico el modelo con ID: 2', NULL, 2, 16, '2020-06-23 11:57:25', '2020-06-23 11:57:25'),
(97, 'Se modifico el modelo con ID: 3', NULL, 2, 16, '2020-06-23 11:57:39', '2020-06-23 11:57:39'),
(98, 'Se modifico el modelo con ID: 4', NULL, 2, 16, '2020-06-23 11:58:07', '2020-06-23 11:58:07'),
(99, 'Se creo el fabricante con ID: 6', NULL, 1, 16, '2020-06-23 12:00:36', '2020-06-23 12:00:36'),
(100, 'Se creo el fabricante con ID: 7', NULL, 1, 16, '2020-06-23 12:01:04', '2020-06-23 12:01:04'),
(101, 'Se creo el fabricante con ID: 8', NULL, 1, 16, '2020-06-23 12:01:58', '2020-06-23 12:01:58'),
(102, 'Se creo el fabricante con ID: 9', NULL, 1, 16, '2020-06-23 12:02:08', '2020-06-23 12:02:08'),
(103, 'Se creo el fabricante con ID: 10', NULL, 1, 16, '2020-06-23 12:02:47', '2020-06-23 12:02:47'),
(104, 'Se creo el fabricante con ID: 11', NULL, 1, 16, '2020-06-23 12:02:57', '2020-06-23 12:02:57'),
(105, 'Se creo el fabricante con ID: 12', NULL, 1, 16, '2020-06-23 12:03:45', '2020-06-23 12:03:45'),
(106, 'Se creo el fabricante con ID: 13', NULL, 1, 16, '2020-06-23 12:03:57', '2020-06-23 12:03:57'),
(107, 'Se creo el fabricante con ID: 14', NULL, 1, 16, '2020-06-23 12:04:09', '2020-06-23 12:04:09'),
(108, 'Se creo el fabricante con ID: 15', NULL, 1, 16, '2020-06-23 12:04:28', '2020-06-23 12:04:28'),
(109, 'Se creo el fabricante con ID: 16', NULL, 1, 16, '2020-06-23 12:04:50', '2020-06-23 12:04:50'),
(110, 'Se creo el fabricante con ID: 17', NULL, 1, 16, '2020-06-23 12:05:06', '2020-06-23 12:05:06'),
(111, 'Se creo el fabricante con ID: 18', NULL, 1, 16, '2020-06-23 12:05:18', '2020-06-23 12:05:18'),
(112, 'Se creo el fabricante con ID: 19', NULL, 1, 16, '2020-06-23 12:05:32', '2020-06-23 12:05:32'),
(113, 'Se creo el fabricante con ID: 20', NULL, 1, 16, '2020-06-23 12:05:42', '2020-06-23 12:05:42'),
(114, 'Se creo el fabricante con ID: 21', NULL, 1, 16, '2020-06-23 12:05:56', '2020-06-23 12:05:56'),
(115, 'Se creo el fabricante con ID: 22', NULL, 1, 16, '2020-06-23 12:06:11', '2020-06-23 12:06:11'),
(116, 'Se creo el fabricante con ID: 23', NULL, 1, 16, '2020-06-23 12:06:57', '2020-06-23 12:06:57'),
(117, 'Se creo la unidad de medida con ID: 7', NULL, 1, 15, '2020-06-23 12:07:27', '2020-06-23 12:07:27'),
(118, 'Se creo el modelo con ID: 5', NULL, 1, 15, '2020-06-23 12:09:34', '2020-06-23 12:09:34'),
(119, 'Se creo la unidad de medida con ID: 8', NULL, 1, 16, '2020-06-23 12:10:39', '2020-06-23 12:10:39'),
(120, 'Se modifico la unidad de medida con ID: 7', NULL, 2, 16, '2020-06-23 12:11:35', '2020-06-23 12:11:35'),
(121, 'Se elimino la unidad de medida con ID: 5', NULL, 3, 16, '2020-06-23 12:11:44', '2020-06-23 12:11:44'),
(122, 'Se creo la unidad de medida con ID: 9', NULL, 1, 16, '2020-06-23 12:12:50', '2020-06-23 12:12:50'),
(123, 'Se creo la unidad de medida con ID: 10', NULL, 1, 16, '2020-06-23 12:13:36', '2020-06-23 12:13:36'),
(124, 'Se creo la unidad de medida con ID: 11', NULL, 1, 16, '2020-06-23 12:13:51', '2020-06-23 12:13:51'),
(125, 'Se modifico la unidad de medida con ID: 6', NULL, 2, 16, '2020-06-23 12:14:26', '2020-06-23 12:14:26'),
(126, 'Se creo la unidad de medida con ID: 12', NULL, 1, 16, '2020-06-23 12:16:10', '2020-06-23 12:16:10'),
(127, 'Se modifico la unidad de medida con ID: 1', NULL, 2, 16, '2020-06-23 12:16:23', '2020-06-23 12:16:23'),
(128, 'Se modifico la unidad de medida con ID: 3', NULL, 2, 16, '2020-06-23 12:16:34', '2020-06-23 12:16:34'),
(129, 'Se elimino la unidad de medida con ID: 4', NULL, 3, 16, '2020-06-23 12:16:42', '2020-06-23 12:16:42'),
(130, 'Se modifico la unidad de medida con ID: 8', NULL, 2, 16, '2020-06-23 12:16:58', '2020-06-23 12:16:58'),
(131, 'Se modifico la unidad de medida con ID: 9', NULL, 2, 16, '2020-06-23 12:17:07', '2020-06-23 12:17:07'),
(132, 'Se modifico la unidad de medida con ID: 10', NULL, 2, 16, '2020-06-23 12:17:17', '2020-06-23 12:17:17'),
(133, 'Se modifico la unidad de medida con ID: 11', NULL, 2, 16, '2020-06-23 12:17:30', '2020-06-23 12:17:30'),
(134, 'Se modifico la unidad de medida con ID: 12', NULL, 2, 16, '2020-06-23 12:17:36', '2020-06-23 12:17:36'),
(135, 'Se modifico la unidad de medida con ID: 2', NULL, 2, 16, '2020-06-23 12:18:15', '2020-06-23 12:18:15'),
(136, 'Se creo la unidad de medida con ID: 13', NULL, 1, 16, '2020-06-23 12:21:11', '2020-06-23 12:21:11'),
(137, 'Se elimino el producto con ID: 1', NULL, 3, 16, '2020-06-23 12:23:01', '2020-06-23 12:23:01'),
(138, 'Se elimino el producto con ID: 2', NULL, 3, 16, '2020-06-23 12:23:09', '2020-06-23 12:23:09'),
(139, 'Se elimino el producto con ID: 4', NULL, 3, 16, '2020-06-23 12:23:14', '2020-06-23 12:23:14'),
(140, 'Se creo la marca con ID: 16', NULL, 1, 16, '2020-06-25 12:28:22', '2020-06-25 12:28:22'),
(141, 'Se creo la unidad de medida con ID: 14', NULL, 1, 16, '2020-06-25 12:29:08', '2020-06-25 12:29:08'),
(142, 'Se elimino la unidad de medida con ID: 14', NULL, 3, 16, '2020-06-25 12:29:20', '2020-06-25 12:29:20'),
(143, 'Se creo el producto con ID: 5', NULL, 1, 16, '2020-06-25 12:36:14', '2020-06-25 12:36:14'),
(144, 'Se creo el fabricante con ID: 24', NULL, 1, 16, '2020-06-25 13:59:30', '2020-06-25 13:59:30'),
(145, 'Se creo el producto con ID: 6', NULL, 1, 16, '2020-06-25 14:05:24', '2020-06-25 14:05:24'),
(146, 'Se creo el modelo con ID: 6', NULL, 1, 16, '2020-06-25 14:07:43', '2020-06-25 14:07:43'),
(147, 'Se creo el modelo con ID: 7', NULL, 1, 16, '2020-06-25 14:08:06', '2020-06-25 14:08:06'),
(148, 'Se creo el modelo con ID: 8', NULL, 1, 16, '2020-06-25 14:08:19', '2020-06-25 14:08:19'),
(149, 'Se creo el modelo con ID: 9', NULL, 1, 16, '2020-06-25 14:08:37', '2020-06-25 14:08:37'),
(150, 'Se creo el modelo con ID: 10', NULL, 1, 16, '2020-06-25 14:08:51', '2020-06-25 14:08:51'),
(151, 'Se creo el modelo con ID: 11', NULL, 1, 16, '2020-06-25 14:09:08', '2020-06-25 14:09:08'),
(152, 'Se creo el modelo con ID: 12', NULL, 1, 16, '2020-06-25 14:09:52', '2020-06-25 14:09:52'),
(153, 'Se creo el modelo con ID: 13', NULL, 1, 16, '2020-06-25 14:10:06', '2020-06-25 14:10:06'),
(154, 'Se creo el modelo con ID: 14', NULL, 1, 16, '2020-06-25 14:10:31', '2020-06-25 14:10:31'),
(155, 'Se creo el modelo con ID: 15', NULL, 1, 16, '2020-06-25 14:32:57', '2020-06-25 14:32:57'),
(156, 'Se creo el modelo con ID: 16', NULL, 1, 16, '2020-06-25 14:33:14', '2020-06-25 14:33:14'),
(157, 'Se creo el modelo con ID: 17', NULL, 1, 16, '2020-06-25 14:33:33', '2020-06-25 14:33:33'),
(158, 'Se creo el modelo con ID: 18', NULL, 1, 16, '2020-06-25 14:34:10', '2020-06-25 14:34:10'),
(159, 'Se creo el modelo con ID: 19', NULL, 1, 16, '2020-06-25 14:34:43', '2020-06-25 14:34:43'),
(160, 'Se creo el modelo con ID: 20', NULL, 1, 16, '2020-06-25 14:35:01', '2020-06-25 14:35:01'),
(161, 'Se creo el modelo con ID: 21', NULL, 1, 16, '2020-06-25 14:35:17', '2020-06-25 14:35:17'),
(162, 'Se creo el modelo con ID: 22', NULL, 1, 16, '2020-06-25 14:36:03', '2020-06-25 14:36:03'),
(163, 'Se creo el modelo con ID: 23', NULL, 1, 16, '2020-06-25 14:38:40', '2020-06-25 14:38:40'),
(164, 'Se creo el modelo con ID: 24', NULL, 1, 16, '2020-06-25 14:38:53', '2020-06-25 14:38:53'),
(165, 'Se creo el modelo con ID: 25', NULL, 1, 16, '2020-06-25 14:39:13', '2020-06-25 14:39:13'),
(166, 'Se creo el modelo con ID: 26', NULL, 1, 16, '2020-06-25 14:39:27', '2020-06-25 14:39:27'),
(167, 'Se creo el modelo con ID: 27', NULL, 1, 16, '2020-06-25 14:40:25', '2020-06-25 14:40:25'),
(168, 'Se creo el modelo con ID: 28', NULL, 1, 16, '2020-06-25 14:40:44', '2020-06-25 14:40:44'),
(169, 'Se creo el producto con ID: 7', NULL, 1, 16, '2020-06-25 14:45:17', '2020-06-25 14:45:17'),
(170, 'Se creo el producto con ID: 8', NULL, 1, 16, '2020-06-25 14:47:54', '2020-06-25 14:47:54'),
(171, 'Se creo el producto con ID: 9', NULL, 1, 16, '2020-06-25 14:50:00', '2020-06-25 14:50:00'),
(172, 'Se elimino el usuario con ID: 2', NULL, 3, 1, '2020-06-25 15:14:30', '2020-06-25 15:14:30'),
(173, 'Se elimino el usuario con ID: 5', NULL, 3, 1, '2020-06-25 15:14:44', '2020-06-25 15:14:44'),
(174, 'Se elimino el usuario con ID: 13', NULL, 3, 1, '2020-06-25 15:14:51', '2020-06-25 15:14:51'),
(175, 'Se elimino el usuario con ID: 15', NULL, 3, 1, '2020-06-25 15:14:54', '2020-06-25 15:14:54'),
(176, 'Se creo la marca con ID: 17', NULL, 1, 1, '2020-06-25 15:19:00', '2020-06-25 15:19:00'),
(177, 'Se elimino la marca con ID: 17', NULL, 3, 1, '2020-06-25 15:20:00', '2020-06-25 15:20:00'),
(178, 'Se creo el cliente con ID: 16', NULL, 1, 1, '2020-06-25 15:21:30', '2020-06-25 15:21:30'),
(179, 'Se modifico el cliente con ID: 16', NULL, 2, 1, '2020-06-25 15:22:45', '2020-06-25 15:22:45'),
(180, 'Se modifico el cliente con ID: 8', NULL, 2, 1, '2020-06-25 15:28:45', '2020-06-25 15:28:45'),
(181, 'Se elimino el cliente con ID: 16', NULL, 3, 1, '2020-06-25 15:44:21', '2020-06-25 15:44:21'),
(182, 'Se creo el cliente con ID: 17', NULL, 1, 1, '2020-06-26 09:41:13', '2020-06-26 09:41:13'),
(183, 'Se modifico el cliente con ID: 17', NULL, 2, 1, '2020-06-26 09:42:56', '2020-06-26 09:42:56'),
(184, 'Se modifico el cliente con ID: 17', NULL, 2, 1, '2020-06-26 09:43:40', '2020-06-26 09:43:40'),
(185, 'Se creo la marca con ID: 18', NULL, 1, 16, '2020-06-26 09:52:06', '2020-06-26 09:52:06'),
(186, 'Se creo la unidad de medida con ID: 15', NULL, 1, 16, '2020-06-26 09:53:20', '2020-06-26 09:53:20'),
(187, 'Se creo el modelo con ID: 29', NULL, 1, 16, '2020-06-26 09:53:39', '2020-06-26 09:53:39'),
(188, 'Se creo el producto con ID: 10', NULL, 1, 16, '2020-06-26 09:54:07', '2020-06-26 09:54:07'),
(189, 'Se modifico el cliente con ID: 6', NULL, 2, 16, '2020-06-26 09:56:07', '2020-06-26 09:56:07'),
(190, 'Se elimino el tipo de documento con ID: 2', NULL, 3, 17, '2020-06-26 10:33:36', '2020-06-26 10:33:36'),
(191, 'Se creo el modelo con ID: 30', NULL, 1, 16, '2020-06-27 01:23:05', '2020-06-27 01:23:05'),
(192, 'Se modifico el producto con ID: 10', NULL, 2, 16, '2020-06-27 01:23:42', '2020-06-27 01:23:42'),
(193, 'Se creo el modelo con ID: 31', NULL, 1, 16, '2020-06-27 01:25:28', '2020-06-27 01:25:28'),
(194, 'Se creo el modelo con ID: 32', NULL, 1, 16, '2020-06-27 01:25:47', '2020-06-27 01:25:47'),
(195, 'Se creo el producto con ID: 11', NULL, 1, 16, '2020-06-27 01:26:51', '2020-06-27 01:26:51'),
(196, 'Se creo el modelo con ID: 33', NULL, 1, 16, '2020-06-27 01:28:34', '2020-06-27 01:28:34'),
(197, 'Se creo el producto con ID: 12', NULL, 1, 16, '2020-06-27 01:29:10', '2020-06-27 01:29:10'),
(198, 'Se elimino el modelo con ID: 29', NULL, 3, 16, '2020-06-27 01:29:35', '2020-06-27 01:29:35'),
(199, 'Se elimino el modelo con ID: 32', NULL, 3, 16, '2020-06-27 01:29:45', '2020-06-27 01:29:45'),
(200, 'Se modifico el producto con ID: 12', NULL, 2, 16, '2020-06-27 01:30:52', '2020-06-27 01:30:52'),
(201, 'Se creo el modelo con ID: 34', NULL, 1, 16, '2020-06-27 01:32:39', '2020-06-27 01:32:39'),
(202, 'Se creo el producto con ID: 13', NULL, 1, 16, '2020-06-27 01:33:09', '2020-06-27 01:33:09'),
(203, 'Se creo el modelo con ID: 35', NULL, 1, 16, '2020-06-27 01:37:25', '2020-06-27 01:37:25'),
(204, 'Se creo el producto con ID: 14', NULL, 1, 16, '2020-06-27 01:37:41', '2020-06-27 01:37:41'),
(205, 'Se creo el modelo con ID: 36', NULL, 1, 16, '2020-06-27 01:55:39', '2020-06-27 01:55:39'),
(206, 'Se creo el producto con ID: 15', NULL, 1, 16, '2020-06-27 01:56:08', '2020-06-27 01:56:08'),
(207, 'Se creo el modelo con ID: 37', NULL, 1, 16, '2020-06-27 02:01:06', '2020-06-27 02:01:06'),
(208, 'Se creo el producto con ID: 16', NULL, 1, 16, '2020-06-27 02:01:30', '2020-06-27 02:01:30'),
(209, 'Se creo el modelo con ID: 38', NULL, 1, 16, '2020-06-27 02:10:13', '2020-06-27 02:10:13'),
(210, 'Se creo el producto con ID: 17', NULL, 1, 16, '2020-06-27 02:10:34', '2020-06-27 02:10:34'),
(211, 'Se creo el modelo con ID: 39', NULL, 1, 16, '2020-06-27 02:12:33', '2020-06-27 02:12:33'),
(212, 'Se creo el producto con ID: 18', NULL, 1, 16, '2020-06-27 02:14:08', '2020-06-27 02:14:08'),
(213, 'Se creo la unidad de medida con ID: 16', NULL, 1, 16, '2020-07-07 06:30:57', '2020-07-07 06:30:57'),
(214, 'Se creo la marca con ID: 19', NULL, 1, 16, '2020-07-07 06:31:25', '2020-07-07 06:31:25'),
(215, 'Se creo el modelo con ID: 40', NULL, 1, 16, '2020-07-07 06:39:21', '2020-07-07 06:39:21'),
(216, 'Se creo el fabricante con ID: 25', NULL, 1, 16, '2020-07-07 06:39:56', '2020-07-07 06:39:56'),
(217, 'Se creo el producto con ID: 19', NULL, 1, 16, '2020-07-07 06:40:13', '2020-07-07 06:40:13'),
(218, 'Se creo el modelo con ID: 41', NULL, 1, 16, '2020-07-07 06:41:55', '2020-07-07 06:41:55'),
(219, 'Se creo el producto con ID: 20', NULL, 1, 16, '2020-07-07 06:42:25', '2020-07-07 06:42:25'),
(220, 'Se creo el modelo con ID: 42', NULL, 1, 16, '2020-07-07 06:46:11', '2020-07-07 06:46:11'),
(221, 'Se creo el producto con ID: 21', NULL, 1, 16, '2020-07-07 06:46:49', '2020-07-07 06:46:49'),
(222, 'Se creo el modelo con ID: 43', NULL, 1, 16, '2020-07-08 03:25:14', '2020-07-08 03:25:14'),
(223, 'Se creo el producto con ID: 22', NULL, 1, 16, '2020-07-08 03:25:45', '2020-07-08 03:25:45'),
(224, 'Se creo el modelo con ID: 44', NULL, 1, 16, '2020-07-08 03:32:46', '2020-07-08 03:32:46'),
(225, 'Se creo el producto con ID: 23', NULL, 1, 16, '2020-07-08 03:33:38', '2020-07-08 03:33:38'),
(226, 'Se modifico el producto con ID: 23', NULL, 2, 16, '2020-07-08 03:33:57', '2020-07-08 03:33:57'),
(227, 'Se creo el modelo con ID: 45', NULL, 1, 16, '2020-07-08 09:49:11', '2020-07-08 09:49:11'),
(228, 'Se creo el producto con ID: 24', NULL, 1, 16, '2020-07-08 09:49:37', '2020-07-08 09:49:37'),
(229, 'Se creo el modelo con ID: 46', NULL, 1, 16, '2020-07-08 09:55:13', '2020-07-08 09:55:13'),
(230, 'Se creo el producto con ID: 25', NULL, 1, 16, '2020-07-08 09:55:17', '2020-07-08 09:55:17'),
(231, 'Se creo el modelo con ID: 47', NULL, 1, 16, '2020-07-08 10:00:07', '2020-07-08 10:00:07'),
(232, 'Se creo el producto con ID: 26', NULL, 1, 16, '2020-07-08 10:00:12', '2020-07-08 10:00:12'),
(233, 'Se creo el modelo con ID: 48', NULL, 1, 16, '2020-07-08 10:04:38', '2020-07-08 10:04:38'),
(234, 'Se creo el producto con ID: 27', NULL, 1, 16, '2020-07-08 10:04:53', '2020-07-08 10:04:53'),
(235, 'Se creo el modelo con ID: 49', NULL, 1, 16, '2020-07-08 10:08:40', '2020-07-08 10:08:40'),
(236, 'Se creo el producto con ID: 28', NULL, 1, 16, '2020-07-08 10:09:17', '2020-07-08 10:09:17'),
(237, 'Se creo el modelo con ID: 50', NULL, 1, 16, '2020-07-08 10:12:54', '2020-07-08 10:12:54'),
(238, 'Se creo el producto con ID: 29', NULL, 1, 16, '2020-07-08 10:13:10', '2020-07-08 10:13:10'),
(239, 'Se creo el modelo con ID: 51', NULL, 1, 16, '2020-07-08 10:15:12', '2020-07-08 10:15:12'),
(240, 'Se creo el producto con ID: 30', NULL, 1, 16, '2020-07-08 10:15:39', '2020-07-08 10:15:39'),
(241, 'Se creo el modelo con ID: 52', NULL, 1, 16, '2020-07-08 10:20:24', '2020-07-08 10:20:24'),
(242, 'Se creo el producto con ID: 31', NULL, 1, 16, '2020-07-08 10:20:36', '2020-07-08 10:20:36'),
(243, 'Se creo el modelo con ID: 53', NULL, 1, 16, '2020-07-08 10:23:26', '2020-07-08 10:23:26'),
(244, 'Se creo el producto con ID: 32', NULL, 1, 16, '2020-07-08 10:23:53', '2020-07-08 10:23:53'),
(245, 'Se creo la marca con ID: 20', NULL, 1, 17, '2020-07-13 22:14:11', '2020-07-13 22:14:11'),
(246, 'Se creo el modelo con ID: 54', NULL, 1, 17, '2020-07-13 22:21:15', '2020-07-13 22:21:15'),
(247, 'Se creo el fabricante con ID: 26', NULL, 1, 17, '2020-07-13 22:22:04', '2020-07-13 22:22:04'),
(248, 'Se creo el producto con ID: 33', NULL, 1, 17, '2020-07-13 22:22:31', '2020-07-13 22:22:31'),
(249, 'Se creo el modelo con ID: 55', NULL, 1, 17, '2020-07-13 22:28:36', '2020-07-13 22:28:36'),
(250, 'Se creo el producto con ID: 34', NULL, 1, 17, '2020-07-13 22:28:57', '2020-07-13 22:28:57'),
(251, 'Se creo el modelo con ID: 56', NULL, 1, 17, '2020-07-13 22:31:27', '2020-07-13 22:31:27'),
(252, 'Se creo el producto con ID: 35', NULL, 1, 17, '2020-07-13 22:31:46', '2020-07-13 22:31:46'),
(253, 'Se creo el modelo con ID: 57', NULL, 1, 17, '2020-07-13 22:37:42', '2020-07-13 22:37:42'),
(254, 'Se creo el producto con ID: 36', NULL, 1, 17, '2020-07-13 22:38:01', '2020-07-13 22:38:01'),
(255, 'Se creo el modelo con ID: 58', NULL, 1, 17, '2020-07-13 22:42:22', '2020-07-13 22:42:22'),
(256, 'Se creo el producto con ID: 37', NULL, 1, 17, '2020-07-13 22:42:43', '2020-07-13 22:42:43'),
(257, 'Se creo la marca con ID: 21', NULL, 1, 17, '2020-07-13 22:51:22', '2020-07-13 22:51:22'),
(258, 'Se creo el modelo con ID: 59', NULL, 1, 17, '2020-07-13 22:52:21', '2020-07-13 22:52:21'),
(259, 'Se creo el fabricante con ID: 27', NULL, 1, 17, '2020-07-13 22:52:50', '2020-07-13 22:52:50'),
(260, 'Se creo el producto con ID: 38', NULL, 1, 17, '2020-07-13 22:52:56', '2020-07-13 22:52:56'),
(261, 'Se creo el modelo con ID: 60', NULL, 1, 17, '2020-07-13 22:53:55', '2020-07-13 22:53:55'),
(262, 'Se creo el producto con ID: 39', NULL, 1, 17, '2020-07-13 22:54:03', '2020-07-13 22:54:03'),
(263, 'Se creo la marca con ID: 22', NULL, 1, 17, '2020-07-13 22:55:12', '2020-07-13 22:55:12'),
(264, 'Se creo el fabricante con ID: 28', NULL, 1, 17, '2020-07-13 22:55:36', '2020-07-13 22:55:36'),
(265, 'Se creo el modelo con ID: 61', NULL, 1, 17, '2020-07-13 22:55:49', '2020-07-13 22:55:49'),
(266, 'Se creo el producto con ID: 40', NULL, 1, 17, '2020-07-13 22:56:11', '2020-07-13 22:56:11'),
(267, 'Se modifico el producto con ID: 39', NULL, 2, 17, '2020-07-13 22:58:20', '2020-07-13 22:58:20'),
(268, 'Se modifico el producto con ID: 40', NULL, 2, 17, '2020-07-13 22:59:54', '2020-07-13 22:59:54'),
(269, 'Se creo el modelo con ID: 62', NULL, 1, 17, '2020-07-13 23:07:43', '2020-07-13 23:07:43'),
(270, 'Se creo el producto con ID: 41', NULL, 1, 17, '2020-07-13 23:07:57', '2020-07-13 23:07:57'),
(271, 'Se creo el modelo con ID: 63', NULL, 1, 17, '2020-07-13 23:14:27', '2020-07-13 23:14:27'),
(272, 'Se creo el producto con ID: 42', NULL, 1, 17, '2020-07-13 23:14:43', '2020-07-13 23:14:43'),
(273, 'Se creo el modelo con ID: 64', NULL, 1, 17, '2020-07-13 23:16:31', '2020-07-13 23:16:31'),
(274, 'Se creo el producto con ID: 43', NULL, 1, 17, '2020-07-13 23:16:55', '2020-07-13 23:16:55'),
(275, 'Se creo la unidad de medida con ID: 17', NULL, 1, 17, '2020-07-13 23:20:45', '2020-07-13 23:20:45'),
(276, 'Se creo el modelo con ID: 65', NULL, 1, 17, '2020-07-13 23:21:10', '2020-07-13 23:21:10'),
(277, 'Se creo el producto con ID: 44', NULL, 1, 17, '2020-07-13 23:21:23', '2020-07-13 23:21:23'),
(278, 'Se creo el modelo con ID: 66', NULL, 1, 17, '2020-07-13 23:24:25', '2020-07-13 23:24:25'),
(279, 'Se creo el producto con ID: 45', NULL, 1, 17, '2020-07-13 23:24:58', '2020-07-13 23:24:58'),
(280, 'Se creo el modelo con ID: 67', NULL, 1, 17, '2020-07-13 23:31:22', '2020-07-13 23:31:22'),
(281, 'Se creo el producto con ID: 46', NULL, 1, 17, '2020-07-13 23:31:44', '2020-07-13 23:31:44'),
(282, 'Se creo el modelo con ID: 68', NULL, 1, 17, '2020-07-13 23:33:41', '2020-07-13 23:33:41'),
(283, 'Se creo el producto con ID: 47', NULL, 1, 17, '2020-07-13 23:34:05', '2020-07-13 23:34:05'),
(284, 'Se creo el modelo con ID: 69', NULL, 1, 17, '2020-07-13 23:40:03', '2020-07-13 23:40:03'),
(285, 'Se creo el producto con ID: 48', NULL, 1, 17, '2020-07-13 23:40:15', '2020-07-13 23:40:15'),
(286, 'Se creo el modelo con ID: 70', NULL, 1, 17, '2020-07-13 23:42:56', '2020-07-13 23:42:56'),
(287, 'Se creo el producto con ID: 49', NULL, 1, 17, '2020-07-13 23:43:26', '2020-07-13 23:43:26'),
(288, 'Se creo el modelo con ID: 71', NULL, 1, 17, '2020-07-13 23:45:28', '2020-07-13 23:45:28'),
(289, 'Se creo el producto con ID: 50', NULL, 1, 17, '2020-07-13 23:48:25', '2020-07-13 23:48:25'),
(290, 'Se creo el modelo con ID: 72', NULL, 1, 17, '2020-07-13 23:50:57', '2020-07-13 23:50:57'),
(291, 'Se creo el producto con ID: 51', NULL, 1, 17, '2020-07-13 23:51:14', '2020-07-13 23:51:14'),
(292, 'Se modifico el proveedor con ID: 1', NULL, 2, 16, '2020-07-15 00:09:53', '2020-07-15 00:09:53'),
(293, 'Se elimino el cliente con ID: 17', NULL, 3, 16, '2020-07-15 00:11:25', '2020-07-15 00:11:25'),
(294, 'Se modifico el cliente con ID: 6', NULL, 2, 16, '2020-07-15 00:15:57', '2020-07-15 00:15:57'),
(295, 'Se modifico el cliente con ID: 6', NULL, 2, 16, '2020-07-15 00:19:12', '2020-07-15 00:19:12'),
(296, 'Se modifico el cliente con ID: 7', NULL, 2, 16, '2020-07-15 01:08:25', '2020-07-15 01:08:25'),
(297, 'Se modifico el cliente con ID: 6', NULL, 2, 16, '2020-07-15 01:08:38', '2020-07-15 01:08:38'),
(298, 'Se modifico el cliente con ID: 7', NULL, 2, 16, '2020-07-15 01:20:40', '2020-07-15 01:20:40'),
(299, 'Se modifico el cliente con ID: 7', NULL, 2, 16, '2020-07-15 01:23:10', '2020-07-15 01:23:10'),
(300, 'Se modifico el cliente con ID: 8', NULL, 2, 16, '2020-07-15 01:23:34', '2020-07-15 01:23:34'),
(301, 'Se modifico el cliente con ID: 8', NULL, 2, 16, '2020-07-15 01:41:32', '2020-07-15 01:41:32'),
(302, 'Se creo el modelo con ID: 73', NULL, 1, 17, '2020-07-15 02:05:06', '2020-07-15 02:05:06'),
(303, 'Se creo el producto con ID: 52', NULL, 1, 17, '2020-07-15 02:05:47', '2020-07-15 02:05:47'),
(304, 'Se modifico el producto con ID: 24', NULL, 2, 17, '2020-07-15 02:26:16', '2020-07-15 02:26:16'),
(305, 'Se creo el modelo con ID: 74', NULL, 1, 17, '2020-07-15 02:31:59', '2020-07-15 02:31:59'),
(306, 'Se creo el producto con ID: 53', NULL, 1, 17, '2020-07-15 02:33:19', '2020-07-15 02:33:19'),
(307, 'Se elimino el producto con ID: 53', NULL, 3, 16, '2020-07-15 02:37:56', '2020-07-15 02:37:56'),
(308, 'Se modifico el producto con ID: 31', NULL, 2, 16, '2020-07-15 02:39:37', '2020-07-15 02:39:37'),
(309, 'Se creo el modelo con ID: 75', NULL, 1, 16, '2020-07-15 02:50:13', '2020-07-15 02:50:13'),
(310, 'Se creo el producto con ID: 54', NULL, 1, 16, '2020-07-15 02:51:12', '2020-07-15 02:51:12'),
(311, 'Se creo el modelo con ID: 76', NULL, 1, 16, '2020-07-15 04:04:45', '2020-07-15 04:04:45'),
(312, 'Se creo el producto con ID: 55', NULL, 1, 16, '2020-07-15 04:05:08', '2020-07-15 04:05:08'),
(313, 'Se modifico el producto con ID: 55', NULL, 2, 16, '2020-07-15 04:05:45', '2020-07-15 04:05:45'),
(314, 'Se modifico el modelo con ID: 76', NULL, 2, 16, '2020-07-15 04:06:45', '2020-07-15 04:06:45'),
(315, 'Se modifico el modelo con ID: 75', NULL, 2, 16, '2020-07-15 04:07:39', '2020-07-15 04:07:39'),
(316, 'Se modifico el modelo con ID: 76', NULL, 2, 16, '2020-07-15 04:08:05', '2020-07-15 04:08:05'),
(317, 'Se creo el modelo con ID: 77', NULL, 1, 16, '2020-07-15 04:14:51', '2020-07-15 04:14:51'),
(318, 'Se creo el producto con ID: 56', NULL, 1, 16, '2020-07-15 04:15:14', '2020-07-15 04:15:14'),
(319, 'Se creo el modelo con ID: 78', NULL, 1, 16, '2020-07-15 04:17:55', '2020-07-15 04:17:55'),
(320, 'Se creo el producto con ID: 57', NULL, 1, 16, '2020-07-15 04:18:21', '2020-07-15 04:18:21'),
(321, 'Se modifico el producto con ID: 57', NULL, 2, 16, '2020-07-15 04:20:09', '2020-07-15 04:20:09'),
(322, 'Se modifico el producto con ID: 57', NULL, 2, 16, '2020-07-15 04:20:33', '2020-07-15 04:20:33'),
(323, 'Se creo el modelo con ID: 79', NULL, 1, 16, '2020-07-15 04:22:14', '2020-07-15 04:22:14'),
(324, 'Se creo el producto con ID: 58', NULL, 1, 16, '2020-07-15 04:22:19', '2020-07-15 04:22:19'),
(325, 'Se modifico el modelo con ID: 79', NULL, 2, 16, '2020-07-15 04:24:15', '2020-07-15 04:24:15'),
(326, 'Se modifico el producto con ID: 57', NULL, 2, 16, '2020-07-15 04:24:50', '2020-07-15 04:24:50'),
(327, 'Se modifico el producto con ID: 58', NULL, 2, 16, '2020-07-15 04:25:08', '2020-07-15 04:25:08'),
(328, 'Se creo el modelo con ID: 80', NULL, 1, 16, '2020-07-15 04:36:02', '2020-07-15 04:36:02'),
(329, 'Se creo el producto con ID: 59', NULL, 1, 16, '2020-07-15 04:36:11', '2020-07-15 04:36:11'),
(330, 'Se creo el modelo con ID: 81', NULL, 1, 16, '2020-07-15 04:39:51', '2020-07-15 04:39:51'),
(331, 'Se creo el producto con ID: 60', NULL, 1, 16, '2020-07-15 04:40:09', '2020-07-15 04:40:09'),
(332, 'Se creo el modelo con ID: 82', NULL, 1, 16, '2020-07-15 04:44:54', '2020-07-15 04:44:54'),
(333, 'Se creo el producto con ID: 61', NULL, 1, 16, '2020-07-15 04:45:17', '2020-07-15 04:45:17'),
(334, 'Se creo el modelo con ID: 83', NULL, 1, 16, '2020-07-15 04:48:46', '2020-07-15 04:48:46'),
(335, 'Se creo el producto con ID: 62', NULL, 1, 16, '2020-07-15 04:49:03', '2020-07-15 04:49:03'),
(336, 'Se creo el modelo con ID: 84', NULL, 1, 16, '2020-07-15 04:51:35', '2020-07-15 04:51:35'),
(337, 'Se creo el producto con ID: 63', NULL, 1, 16, '2020-07-15 04:51:56', '2020-07-15 04:51:56'),
(338, 'Se creo el modelo con ID: 85', NULL, 1, 16, '2020-07-15 04:55:33', '2020-07-15 04:55:33'),
(339, 'Se creo el producto con ID: 64', NULL, 1, 16, '2020-07-15 04:55:53', '2020-07-15 04:55:53'),
(340, 'Se creo el modelo con ID: 86', NULL, 1, 16, '2020-07-15 04:57:57', '2020-07-15 04:57:57'),
(341, 'Se creo el producto con ID: 65', NULL, 1, 16, '2020-07-15 04:59:56', '2020-07-15 04:59:56'),
(342, 'Se creo el modelo con ID: 87', NULL, 1, 16, '2020-07-15 05:01:38', '2020-07-15 05:01:38'),
(343, 'Se creo el producto con ID: 66', NULL, 1, 16, '2020-07-15 05:02:04', '2020-07-15 05:02:04'),
(344, 'Se creo el modelo con ID: 88', NULL, 1, 16, '2020-07-15 05:03:25', '2020-07-15 05:03:25'),
(345, 'Se creo el producto con ID: 67', NULL, 1, 16, '2020-07-15 05:03:42', '2020-07-15 05:03:42'),
(346, 'Se creo el modelo con ID: 89', NULL, 1, 16, '2020-07-15 05:05:40', '2020-07-15 05:05:40'),
(347, 'Se creo el producto con ID: 68', NULL, 1, 16, '2020-07-15 05:06:03', '2020-07-15 05:06:03'),
(348, 'Se creo el modelo con ID: 90', NULL, 1, 16, '2020-07-15 05:15:55', '2020-07-15 05:15:55'),
(349, 'Se creo el producto con ID: 69', NULL, 1, 16, '2020-07-15 05:16:14', '2020-07-15 05:16:14'),
(350, 'Se creo la direccion con ID: 9', NULL, 1, 1, '2020-08-06 16:47:29', '2020-08-06 16:47:29'),
(351, 'Se creo la direccion con ID: 10', NULL, 1, 1, '2020-08-06 16:53:51', '2020-08-06 16:53:51'),
(352, 'Se creo la direccion con ID: 11', NULL, 1, 1, '2020-08-06 16:56:05', '2020-08-06 16:56:05'),
(353, 'Se creo la direccion con ID: 12', NULL, 1, 1, '2020-08-06 16:58:26', '2020-08-06 16:58:26'),
(354, 'Se creo el contacto con ID: 16', NULL, 1, 1, '2020-08-06 17:15:32', '2020-08-06 17:15:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_cotizacion_cliente`
--

CREATE TABLE `solicitud_cotizacion_cliente` (
  `solcli_id` bigint(20) UNSIGNED NOT NULL,
  `solcli_cod` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `solcli_fec` datetime DEFAULT NULL,
  `id_proy` bigint(20) UNSIGNED DEFAULT NULL,
  `solcli_proy_nom` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `solcli_proy_cod` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cli` bigint(20) UNSIGNED DEFAULT NULL,
  `solcli_cli_nom` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `solcli_cli_numdoc` char(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `solcli_cli_tipdoc` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `solcli_cli_dir` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `solcli_cli_con` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_col` bigint(20) UNSIGNED DEFAULT NULL,
  `solcli_col_nom` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `est_reg` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `solicitud_cotizacion_cliente`
--

INSERT INTO `solicitud_cotizacion_cliente` (`solcli_id`, `solcli_cod`, `solcli_fec`, `id_proy`, `solcli_proy_nom`, `solcli_proy_cod`, `id_cli`, `solcli_cli_nom`, `solcli_cli_numdoc`, `solcli_cli_tipdoc`, `solcli_cli_dir`, `solcli_cli_con`, `id_col`, `solcli_col_nom`, `est_reg`, `created_at`, `updated_at`) VALUES
(7, '#0001-NTWC-2020', '2020-07-22 15:49:56', NULL, NULL, NULL, 6, 'algo', 'algo', 'algo', 'algo', 'algo', 17, 'Elida Pilar Ramos Vargas', 'AN', '2020-07-22 20:49:56', '2020-07-22 21:40:21'),
(11, '#0002-NTWC-2020', '2020-07-22 16:03:14', NULL, NULL, NULL, 6, 'algo', 'algo', 'algo', 'algo', 'algo', 17, 'Elida Pilar Ramos Vargas', 'A', '2020-07-22 21:03:14', '2020-07-22 21:03:14'),
(12, '#0003-NTWC-2020', '2020-07-22 16:03:21', NULL, NULL, NULL, 6, 'algo', 'algo', 'algo', 'algo', 'algo', 17, 'Elida Pilar Ramos Vargas', 'A', '2020-07-22 21:03:21', '2020-07-22 21:03:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_cotizacion_cliente_det`
--

CREATE TABLE `solicitud_cotizacion_cliente_det` (
  `solclidet_id` bigint(20) UNSIGNED NOT NULL,
  `solcli_id` bigint(20) UNSIGNED DEFAULT NULL,
  `solclidet_prod_serv` int(11) DEFAULT NULL,
  `solclidet_des` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_prod` bigint(20) UNSIGNED DEFAULT NULL,
  `solclidet_prod_can` double(8,2) DEFAULT NULL,
  `solclidet_prod_codint` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `solclidet_prod_numpar` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `solclidet_prod_fabr` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `solclidet_prod_marc` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `solclidet_prod_unimed` char(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `solclidet_prod_stock` double(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `solicitud_cotizacion_cliente_det`
--

INSERT INTO `solicitud_cotizacion_cliente_det` (`solclidet_id`, `solcli_id`, `solclidet_prod_serv`, `solclidet_des`, `id_prod`, `solclidet_prod_can`, `solclidet_prod_codint`, `solclidet_prod_numpar`, `solclidet_prod_fabr`, `solclidet_prod_marc`, `solclidet_prod_unimed`, `solclidet_prod_stock`) VALUES
(1, 11, 1, 'algo', 11, 20.00, 'algo', 'algo', 'algo', 'algo', 'algo', 50.00),
(2, 11, 1, 'algo', NULL, NULL, 'algo', 'algo', 'algo', 'algo', 'algo', 50.00),
(3, 12, 1, 'algo', 11, 20.00, 'algo', 'algo', 'algo', 'algo', 'algo', 50.00),
(4, 12, 1, 'algo', NULL, NULL, 'algo', 'algo', 'algo', 'algo', 'algo', 50.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_cambio`
--

CREATE TABLE `tipo_cambio` (
  `id_tipcam` bigint(20) UNSIGNED NOT NULL,
  `des_tipcam` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_cambio`
--

INSERT INTO `tipo_cambio` (`id_tipcam`, `des_tipcam`) VALUES
(1, 'Crear'),
(2, 'Modificar'),
(3, 'Eliminar'),
(4, 'Anular');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documento`
--

CREATE TABLE `tipo_documento` (
  `id_tipdoc` bigint(20) UNSIGNED NOT NULL,
  `cod_tipdoc` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `des_tipdoc` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `est_reg` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_documento`
--

INSERT INTO `tipo_documento` (`id_tipdoc`, `cod_tipdoc`, `des_tipdoc`, `est_reg`, `created_at`, `updated_at`) VALUES
(1, NULL, 'DNI', 'A', '2020-06-08 09:47:25', '2020-06-08 09:47:25'),
(2, NULL, 'CARNET EXTRANGERIA', 'E', '2020-06-08 12:01:04', '2020-06-26 10:33:36'),
(3, NULL, 'RUC', 'A', '2020-06-12 08:16:21', '2020-06-12 08:16:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad_medida`
--

CREATE TABLE `unidad_medida` (
  `id_unimed` bigint(20) UNSIGNED NOT NULL,
  `nom_unimed` char(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `des_unimed` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `est_reg` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `unidad_medida`
--

INSERT INTO `unidad_medida` (`id_unimed`, `nom_unimed`, `des_unimed`, `est_reg`, `created_at`, `updated_at`) VALUES
(1, 'Kl', 'Kilogramo', 'A', '2020-06-08 10:31:56', '2020-06-23 12:16:23'),
(2, '12u', 'Docena', 'A', '2020-06-12 00:28:07', '2020-06-23 12:18:15'),
(3, 'Bls', 'Bolsa', 'A', '2020-06-12 00:30:32', '2020-06-23 12:16:34'),
(4, '126', 'DOCENA POR 10**6', 'E', '2020-06-12 00:31:05', '2020-06-23 12:16:42'),
(5, 'M 6', 'METRO POR 10**6', 'E', '2020-06-12 00:31:34', '2020-06-23 12:11:44'),
(6, 'M', 'Metro', 'A', '2020-06-23 11:47:20', '2020-06-23 12:14:26'),
(7, 'UND', 'Unidad', 'A', '2020-06-23 12:07:27', '2020-06-23 12:11:35'),
(8, 'Pza', 'Pieza', 'A', '2020-06-23 12:10:38', '2020-06-23 12:16:58'),
(9, 'Ft', 'Pie', 'A', '2020-06-23 12:12:50', '2020-06-23 12:17:07'),
(10, 'mm', 'Milimetro', 'A', '2020-06-23 12:13:36', '2020-06-23 12:17:17'),
(11, 'In', 'Pulgadas', 'A', '2020-06-23 12:13:51', '2020-06-23 12:17:30'),
(12, 'Lb', 'Libra', 'A', '2020-06-23 12:16:10', '2020-06-23 12:17:36'),
(13, 'RLL', 'Rollo', 'A', '2020-06-23 12:21:11', '2020-06-23 12:21:11'),
(14, 'RLL', 'ROLLO', 'E', '2020-06-25 12:29:08', '2020-06-25 12:29:19'),
(15, 'GLB', 'GLOBAL', 'A', '2020-06-26 09:53:20', '2020-06-26 09:53:20'),
(16, 'AXIS', NULL, 'A', '2020-07-07 06:30:57', '2020-07-07 06:30:57'),
(17, 'KIT', NULL, 'A', '2020-07-13 23:20:45', '2020-07-13 23:20:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id_col` bigint(20) UNSIGNED NOT NULL,
  `nom_col` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ape_col` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num_doc_col` char(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cod_col` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cel_col` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_tipdoc` bigint(20) UNSIGNED DEFAULT NULL,
  `id_car` bigint(20) UNSIGNED DEFAULT NULL,
  `est_reg` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id_col`, `nom_col`, `ape_col`, `num_doc_col`, `email`, `password`, `cod_col`, `cel_col`, `id_tipdoc`, `id_car`, `est_reg`, `remember_token`, `email_verified_at`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'General', '11111111', 'admin@admin.com', '$2y$10$pN54rNcjTNJpFrDsTb1/7.WE8TN7/cBq9R.7VciY5SM5CLHdZvPRS', NULL, NULL, NULL, NULL, 'SU', NULL, NULL, NULL, '2020-06-25 15:26:24'),
(2, 'Gregorio', 'Pauca', '1111111', 'greg@gmail.com', '$2y$10$2DL4eHtvaESGH34ZujJpnOQtI2uRxKCQXLQ/OV9nJZ7Oumc6RDVo.', NULL, NULL, 1, 2, 'E', NULL, NULL, '2020-06-08 10:20:06', '2020-06-25 15:14:30'),
(3, 'Lucas', 'Paredes', '12345679', 'luc@gmail.com', '$2y$10$odpdI0/60ORdfMeLCZV.P.7dAkT2XYvizUvJLpj460nZU1YVmgCse', NULL, NULL, 1, 1, 'E', NULL, NULL, '2020-06-08 10:56:12', '2020-06-08 11:38:43'),
(4, 'Juan', 'Perez', '89659865', 'juan@perez.com', '$2y$10$KJMTpHaKb1YJlvlKmdkL2.9pPSs7A0NB23KKzY3V4/24P9DQU6LwK', NULL, NULL, 1, 1, 'E', NULL, NULL, '2020-06-08 11:40:35', '2020-06-08 11:41:04'),
(5, 'max', 'Colque', '70682842', 'max@gmail.com', '$2y$10$outD8IkEW3deIuvejaE1buuPZQOHknrAryrlS5EugrxpemMonuc.2', NULL, NULL, 1, 2, 'E', NULL, NULL, '2020-06-08 11:46:16', '2020-06-25 15:14:44'),
(7, 'Luca', 'Casas', '11111112', 'luqui@gmail.com', '$2y$10$X3gvZNKvw8wsrDLI95hbJ.uGpNOOUnW1h5TZ/u8ALlVggP8lmSUSa', NULL, NULL, 1, 1, 'E', NULL, NULL, '2020-06-08 11:49:52', '2020-06-12 03:58:13'),
(12, 'Lucas', 'arana', '22222222', 'a@gmail.com', '$2y$10$ANQ60KBNd0fdym.iBJGabu9PON/XsHZU/xbJjdpyohUCFc.2YHo0e', NULL, NULL, 1, 2, 'E', NULL, NULL, '2020-06-08 20:06:00', '2020-06-08 20:06:37'),
(13, 'Christian', 'Peña', '77778888', 'christianpar19@gmail.com', '$2y$10$3DSNi2WDK1yzHCLG2gWZz.2St3Wf2BjKzHdMAtIN7TlQpgDykuAJm', NULL, NULL, 1, 2, 'E', NULL, NULL, '2020-06-10 08:26:04', '2020-06-25 15:14:51'),
(14, 'Charls', 'Xavier', '98653214', 'charxvr@gmail.com', '$2y$10$cxtUMB0F0Tp9PrRgPO6CAeuZlDbjJS7HROQ2QlmHgBeaP33qJ1WyC', NULL, NULL, 2, 1, 'E', NULL, NULL, '2020-06-12 04:03:11', '2020-06-12 04:29:23'),
(15, 'ANDRE', 'CRUZ', '71595562', 'andre@gmail.com', '$2y$10$mL4vfA0rs4fnDtuQcFhH9.4TzMRqlyENlWsP79NSA0FB9itZnBnSm', NULL, NULL, 1, 2, 'E', NULL, NULL, '2020-06-12 08:52:57', '2020-06-25 15:14:54'),
(16, 'Oscar Hilburg', 'Daza Rodriguez', '29466783', 'oscar.daza@ntwcontrol.com', '$2y$10$EhUNlSLbRcXpc6CuX93ywuIP1dJbuGkS0CjpXELGo0n39YsIgFz1O', NULL, NULL, 1, 3, 'A', NULL, NULL, '2020-06-19 14:59:49', '2020-06-26 09:47:37'),
(17, 'Elida Pilar', 'Ramos Vargas', '29314522', 'elida.ramos@ntwcontrol.com', '$2y$10$x8tQKv1qgUd77wMDbnR.8urlnFOCA3mE7FxQOHQ7Ecp9aCnPpgYPK', NULL, NULL, 1, 2, 'A', NULL, NULL, '2020-06-19 15:11:04', '2020-06-19 15:26:36'),
(18, 'Hilbourg Ernesto', 'Daza Ramos', '47275751', 'ernesto.daza@ntwcontrol.com', '$2y$10$I3WVna8d6HREAK55Yd658uRlqZcKlqm68AYvx.oWhpXbWiNVTOMdW', NULL, NULL, 1, 1, 'A', NULL, NULL, '2020-06-19 15:25:37', '2020-06-19 15:25:37');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`id_car`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cli`),
  ADD KEY `cliente_id_tipdoc_foreign` (`id_tipdoc`);

--
-- Indices de la tabla `cliente_contacto`
--
ALTER TABLE `cliente_contacto`
  ADD PRIMARY KEY (`id_cli_con`),
  ADD KEY `cliente_contacto_id_cli_foreign` (`id_cli`);

--
-- Indices de la tabla `cliente_direccion`
--
ALTER TABLE `cliente_direccion`
  ADD PRIMARY KEY (`id_cli_dir`),
  ADD KEY `cliente_direccion_id_cli_foreign` (`id_cli`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id_emp`),
  ADD KEY `empresa_id_tipdoc_foreign` (`id_tipdoc`);

--
-- Indices de la tabla `fabricante`
--
ALTER TABLE `fabricante`
  ADD PRIMARY KEY (`id_fab`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`id_mar`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`id_mod`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_prod`),
  ADD KEY `producto_id_unimed_foreign` (`id_unimed`),
  ADD KEY `producto_id_mar_foreign` (`id_mar`),
  ADD KEY `producto_id_mod_foreign` (`id_mod`),
  ADD KEY `producto_id_fab_foreign` (`id_fab`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id_prov`),
  ADD KEY `proveedor_id_tipdoc_foreign` (`id_tipdoc`);

--
-- Indices de la tabla `proveedor_banco`
--
ALTER TABLE `proveedor_banco`
  ADD PRIMARY KEY (`id_prov_ban`),
  ADD KEY `proveedor_banco_id_prov_foreign` (`id_prov`);

--
-- Indices de la tabla `proveedor_colaborador`
--
ALTER TABLE `proveedor_colaborador`
  ADD PRIMARY KEY (`id_prov_col`),
  ADD KEY `proveedor_colaborador_id_prov_foreign` (`id_prov`);

--
-- Indices de la tabla `proveedor_direccion`
--
ALTER TABLE `proveedor_direccion`
  ADD PRIMARY KEY (`id_prov_dir`),
  ADD KEY `proveedor_direccion_id_prov_foreign` (`id_prov`);

--
-- Indices de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD PRIMARY KEY (`id_proy`),
  ADD KEY `proyecto_id_cli_foreign` (`id_cli`);

--
-- Indices de la tabla `registro_cambio`
--
ALTER TABLE `registro_cambio`
  ADD PRIMARY KEY (`id_regcam`),
  ADD KEY `registro_cambio_id_tipcam_foreign` (`id_tipcam`),
  ADD KEY `registro_cambio_id_col_foreign` (`id_col`);

--
-- Indices de la tabla `solicitud_cotizacion_cliente`
--
ALTER TABLE `solicitud_cotizacion_cliente`
  ADD PRIMARY KEY (`solcli_id`),
  ADD UNIQUE KEY `solicitud_cotizacion_cliente_solcli_cod_unique` (`solcli_cod`),
  ADD KEY `solicitud_cotizacion_cliente_id_proy_foreign` (`id_proy`),
  ADD KEY `solicitud_cotizacion_cliente_id_cli_foreign` (`id_cli`),
  ADD KEY `solicitud_cotizacion_cliente_id_col_foreign` (`id_col`);

--
-- Indices de la tabla `solicitud_cotizacion_cliente_det`
--
ALTER TABLE `solicitud_cotizacion_cliente_det`
  ADD PRIMARY KEY (`solclidet_id`),
  ADD KEY `solicitud_cotizacion_cliente_det_solcli_id_foreign` (`solcli_id`),
  ADD KEY `solicitud_cotizacion_cliente_det_id_prod_foreign` (`id_prod`);

--
-- Indices de la tabla `tipo_cambio`
--
ALTER TABLE `tipo_cambio`
  ADD PRIMARY KEY (`id_tipcam`);

--
-- Indices de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  ADD PRIMARY KEY (`id_tipdoc`);

--
-- Indices de la tabla `unidad_medida`
--
ALTER TABLE `unidad_medida`
  ADD PRIMARY KEY (`id_unimed`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_col`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_id_tipdoc_foreign` (`id_tipdoc`),
  ADD KEY `users_id_car_foreign` (`id_car`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `id_car` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cli` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `cliente_contacto`
--
ALTER TABLE `cliente_contacto`
  MODIFY `id_cli_con` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `cliente_direccion`
--
ALTER TABLE `cliente_direccion`
  MODIFY `id_cli_dir` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id_emp` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `fabricante`
--
ALTER TABLE `fabricante`
  MODIFY `id_fab` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `id_mar` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `modelo`
--
ALTER TABLE `modelo`
  MODIFY `id_mod` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_prod` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id_prov` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `proveedor_banco`
--
ALTER TABLE `proveedor_banco`
  MODIFY `id_prov_ban` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `proveedor_colaborador`
--
ALTER TABLE `proveedor_colaborador`
  MODIFY `id_prov_col` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `proveedor_direccion`
--
ALTER TABLE `proveedor_direccion`
  MODIFY `id_prov_dir` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  MODIFY `id_proy` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `registro_cambio`
--
ALTER TABLE `registro_cambio`
  MODIFY `id_regcam` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=355;

--
-- AUTO_INCREMENT de la tabla `solicitud_cotizacion_cliente`
--
ALTER TABLE `solicitud_cotizacion_cliente`
  MODIFY `solcli_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `solicitud_cotizacion_cliente_det`
--
ALTER TABLE `solicitud_cotizacion_cliente_det`
  MODIFY `solclidet_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tipo_cambio`
--
ALTER TABLE `tipo_cambio`
  MODIFY `id_tipcam` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  MODIFY `id_tipdoc` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `unidad_medida`
--
ALTER TABLE `unidad_medida`
  MODIFY `id_unimed` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id_col` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_id_tipdoc_foreign` FOREIGN KEY (`id_tipdoc`) REFERENCES `tipo_documento` (`id_tipdoc`);

--
-- Filtros para la tabla `cliente_contacto`
--
ALTER TABLE `cliente_contacto`
  ADD CONSTRAINT `cliente_contacto_id_cli_foreign` FOREIGN KEY (`id_cli`) REFERENCES `cliente` (`id_cli`);

--
-- Filtros para la tabla `cliente_direccion`
--
ALTER TABLE `cliente_direccion`
  ADD CONSTRAINT `cliente_direccion_id_cli_foreign` FOREIGN KEY (`id_cli`) REFERENCES `cliente` (`id_cli`);

--
-- Filtros para la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD CONSTRAINT `empresa_id_tipdoc_foreign` FOREIGN KEY (`id_tipdoc`) REFERENCES `tipo_documento` (`id_tipdoc`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_id_fab_foreign` FOREIGN KEY (`id_fab`) REFERENCES `fabricante` (`id_fab`),
  ADD CONSTRAINT `producto_id_mar_foreign` FOREIGN KEY (`id_mar`) REFERENCES `marca` (`id_mar`),
  ADD CONSTRAINT `producto_id_mod_foreign` FOREIGN KEY (`id_mod`) REFERENCES `modelo` (`id_mod`),
  ADD CONSTRAINT `producto_id_unimed_foreign` FOREIGN KEY (`id_unimed`) REFERENCES `unidad_medida` (`id_unimed`);

--
-- Filtros para la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD CONSTRAINT `proveedor_id_tipdoc_foreign` FOREIGN KEY (`id_tipdoc`) REFERENCES `tipo_documento` (`id_tipdoc`);

--
-- Filtros para la tabla `proveedor_banco`
--
ALTER TABLE `proveedor_banco`
  ADD CONSTRAINT `proveedor_banco_id_prov_foreign` FOREIGN KEY (`id_prov`) REFERENCES `proveedor` (`id_prov`);

--
-- Filtros para la tabla `proveedor_colaborador`
--
ALTER TABLE `proveedor_colaborador`
  ADD CONSTRAINT `proveedor_colaborador_id_prov_foreign` FOREIGN KEY (`id_prov`) REFERENCES `proveedor` (`id_prov`);

--
-- Filtros para la tabla `proveedor_direccion`
--
ALTER TABLE `proveedor_direccion`
  ADD CONSTRAINT `proveedor_direccion_id_prov_foreign` FOREIGN KEY (`id_prov`) REFERENCES `proveedor` (`id_prov`);

--
-- Filtros para la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD CONSTRAINT `proyecto_id_cli_foreign` FOREIGN KEY (`id_cli`) REFERENCES `cliente` (`id_cli`);

--
-- Filtros para la tabla `registro_cambio`
--
ALTER TABLE `registro_cambio`
  ADD CONSTRAINT `registro_cambio_id_col_foreign` FOREIGN KEY (`id_col`) REFERENCES `users` (`id_col`),
  ADD CONSTRAINT `registro_cambio_id_tipcam_foreign` FOREIGN KEY (`id_tipcam`) REFERENCES `tipo_cambio` (`id_tipcam`);

--
-- Filtros para la tabla `solicitud_cotizacion_cliente`
--
ALTER TABLE `solicitud_cotizacion_cliente`
  ADD CONSTRAINT `solicitud_cotizacion_cliente_id_cli_foreign` FOREIGN KEY (`id_cli`) REFERENCES `cliente` (`id_cli`),
  ADD CONSTRAINT `solicitud_cotizacion_cliente_id_col_foreign` FOREIGN KEY (`id_col`) REFERENCES `users` (`id_col`),
  ADD CONSTRAINT `solicitud_cotizacion_cliente_id_proy_foreign` FOREIGN KEY (`id_proy`) REFERENCES `proyecto` (`id_proy`);

--
-- Filtros para la tabla `solicitud_cotizacion_cliente_det`
--
ALTER TABLE `solicitud_cotizacion_cliente_det`
  ADD CONSTRAINT `solicitud_cotizacion_cliente_det_id_prod_foreign` FOREIGN KEY (`id_prod`) REFERENCES `producto` (`id_prod`),
  ADD CONSTRAINT `solicitud_cotizacion_cliente_det_solcli_id_foreign` FOREIGN KEY (`solcli_id`) REFERENCES `solicitud_cotizacion_cliente` (`solcli_id`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_id_car_foreign` FOREIGN KEY (`id_car`) REFERENCES `cargo` (`id_car`),
  ADD CONSTRAINT `users_id_tipdoc_foreign` FOREIGN KEY (`id_tipdoc`) REFERENCES `tipo_documento` (`id_tipdoc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
