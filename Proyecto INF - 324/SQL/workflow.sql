-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-12-2022 a las 01:50:31
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `workflow`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `flujoproceso`
--

CREATE TABLE `flujoproceso` (
  `Flujo` varchar(3) DEFAULT NULL,
  `Proceso` varchar(3) DEFAULT NULL,
  `ProcesoSiguiente` varchar(3) DEFAULT NULL,
  `Tipo` varchar(1) DEFAULT NULL,
  `Pantalla` varchar(20) DEFAULT NULL,
  `Rol` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `flujoproceso`
--

INSERT INTO `flujoproceso` (`Flujo`, `Proceso`, `ProcesoSiguiente`, `Tipo`, `Pantalla`, `Rol`) VALUES
('F1', 'P1', '-', 'C', 'Selecciona', 'Estudiante'),
('F1', 'P2', 'P3', 'P', 'Inscripcion', 'Estudiante'),
('F1', 'P3', 'P4', 'P', 'FormularioEstudiante', 'Estudiante'),
('F1', 'P4', '-', 'F', 'CorrectoE', 'Estudiante'),
('F2', 'P5', 'P6', 'P', 'SeleccionaSemestre', 'Estudiante'),
('F2', 'P6', 'P7', 'P', 'SeleccionaMateria', 'Estudiante'),
('F2', 'P7', '-', 'F', 'VerNota', 'Estudiante'),
('F3', 'P8', 'P9', 'P', 'Registra', 'Docente'),
('F3', 'P9', 'P10', 'P', 'SeleccionaSemestreDo', 'Docente'),
('F3', 'P10', 'P11', 'P', 'SeleccionaMateriaDoc', 'Docente'),
('F3', 'P11', 'P12', 'P', 'FormularioDocente', 'Docente'),
('F3', 'P12', '-', 'F', 'CorrectoD', 'Docente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `flujoprocesocondicionante`
--

CREATE TABLE `flujoprocesocondicionante` (
  `Flujo` varchar(3) DEFAULT NULL,
  `Proceso` varchar(3) DEFAULT NULL,
  `ProcesoSI` varchar(3) DEFAULT NULL,
  `ProcesoNO` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `flujoprocesocondicionante`
--

INSERT INTO `flujoprocesocondicionante` (`Flujo`, `Proceso`, `ProcesoSI`, `ProcesoNO`) VALUES
('F1', 'P1', 'P2', 'P5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `flujoprocesoseguimiento`
--

CREATE TABLE `flujoprocesoseguimiento` (
  `Flujo` varchar(3) DEFAULT NULL,
  `Proceso` varchar(3) DEFAULT NULL,
  `Usuario` varchar(10) DEFAULT NULL,
  `FechaInicio` date DEFAULT NULL,
  `HoraInicio` time DEFAULT NULL,
  `FechaFin` date DEFAULT NULL,
  `HoraFin` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `flujoprocesoseguimiento`
--

INSERT INTO `flujoprocesoseguimiento` (`Flujo`, `Proceso`, `Usuario`, `FechaInicio`, `HoraInicio`, `FechaFin`, `HoraFin`) VALUES
('F1', 'P2', 'roxy', '2022-06-15', '12:52:45', '2022-06-15', '12:53:00'),
('F2', 'P6', 'roxy', '2022-06-15', '12:53:14', '2022-06-15', '12:53:21'),
('F2', 'P6', 'roxy', '2022-06-15', '12:53:22', NULL, NULL),
('F3', 'P10', 'rosa', '2022-06-15', '12:54:07', '2022-06-15', '12:54:20'),
('F2', 'P6', 'roxy', '2022-06-15', '12:56:09', '2022-06-15', '12:56:10'),
('F2', 'P6', 'roxy', '2022-06-15', '12:56:13', NULL, NULL),
('F2', 'P6', 'roxy', '2022-06-15', '12:56:17', NULL, NULL),
('F1', 'P2', 'yery', '2022-12-10', '10:23:13', NULL, NULL),
('F2', 'P6', 'yery', '2022-12-10', '10:23:25', NULL, NULL),
('F1', 'P2', 'yery', '2022-12-10', '10:23:42', NULL, NULL),
('F3', 'P10', 'rosa', '2022-12-10', '10:24:08', '2022-12-10', '10:24:23'),
('F3', 'P10', 'rosa', '2022-12-10', '10:24:40', NULL, NULL),
('F3', 'P10', 'rosa', '2022-12-10', '10:25:28', NULL, NULL),
('F3', 'P10', 'rosa', '2022-12-10', '10:25:34', NULL, NULL),
('F3', 'P10', 'rosa', '2022-12-10', '10:25:37', '2022-12-10', '10:25:57'),
('F1', 'P2', 'yery', '2022-12-10', '10:31:11', NULL, NULL),
('F2', 'P6', 'yery', '2022-12-10', '10:31:35', NULL, NULL),
('F1', 'P2', 'yery', '2022-12-10', '10:31:51', NULL, NULL),
('F2', 'P6', 'roxy', '2022-12-10', '10:36:33', NULL, NULL),
('F2', 'P6', 'roxy', '2022-12-10', '10:36:42', '2022-12-10', '10:36:47'),
('F2', 'P6', 'roxy', '2022-12-10', '10:36:49', '2022-12-10', '10:36:53'),
('F2', 'P6', 'roxy', '2022-12-10', '10:36:56', '2022-12-10', '10:36:58'),
('F2', 'P6', 'roxy', '2022-12-10', '10:37:00', NULL, NULL),
('F2', 'P6', 'roxy', '2022-12-10', '10:37:05', NULL, NULL),
('F2', 'P6', 'roxy', '2022-12-10', '10:39:56', NULL, NULL),
('F1', 'P2', 'roxy', '2022-12-10', '10:40:20', '2022-12-10', '10:40:34'),
('F2', 'P6', 'roxy', '2022-12-10', '10:40:44', NULL, NULL),
('F1', 'P2', 'yery', '2022-12-10', '10:41:12', '2022-12-10', '10:41:21'),
('F2', 'P6', 'yery', '2022-12-10', '10:41:31', '2022-12-10', '10:41:33'),
('F2', 'P6', 'yery', '2022-12-10', '10:41:38', '2022-12-10', '10:41:42'),
('F2', 'P6', 'yery', '2022-12-10', '10:43:39', NULL, NULL),
('F1', 'P2', 'yery', '2022-12-10', '10:43:44', NULL, NULL),
('F1', 'P2', 'yery', '2022-12-10', '10:43:47', NULL, NULL),
('F3', 'P10', 'rosa', '2022-12-10', '10:43:58', NULL, NULL),
('F3', 'P10', 'rosa', '2022-12-10', '10:44:14', '2022-12-10', '10:44:26'),
('F2', 'P6', 'roxy', '2022-12-10', '10:44:39', NULL, NULL),
('F2', 'P6', 'roxy', '2022-12-10', '10:44:58', NULL, NULL),
('F1', 'P2', 'roxy', '2022-12-10', '10:45:13', NULL, NULL),
('F1', 'P2', 'roxy', '2022-12-10', '10:47:17', NULL, NULL),
('F1', 'P2', 'roxy', '2022-12-10', '10:51:33', NULL, NULL),
('F1', 'P2', 'roxy', '2022-12-10', '10:52:49', NULL, NULL),
('F2', 'P6', 'yery', '2022-12-10', '10:53:42', '2022-12-10', '10:53:45'),
('F2', 'P6', 'yery', '2022-12-10', '10:53:48', '2022-12-10', '10:53:52'),
('F2', 'P6', 'yery', '2022-12-10', '10:53:53', '2022-12-10', '10:53:55'),
('F2', 'P6', 'yery', '2022-12-10', '10:54:02', NULL, NULL),
('F2', 'P6', 'yery', '2022-12-10', '11:06:06', NULL, NULL),
('F1', 'P2', 'yery', '2022-12-10', '11:08:09', NULL, NULL),
('F1', 'P2', 'yery', '2022-12-10', '11:08:56', NULL, NULL),
('F1', 'P2', 'yery', '2022-12-10', '11:09:42', NULL, NULL),
('F1', 'P2', 'yery', '2022-12-10', '11:09:58', NULL, NULL),
('F1', 'P2', 'yery', '2022-12-10', '11:16:39', NULL, NULL),
('F1', 'P2', 'yery', '2022-12-10', '11:55:25', NULL, NULL),
('F2', 'P6', 'yery', '2022-12-10', '12:01:57', NULL, NULL),
('F2', 'P6', 'yery', '2022-12-10', '12:02:32', NULL, NULL),
('F2', 'P6', 'yery', '2022-12-10', '12:02:47', '2022-12-10', '12:03:10'),
('F2', 'P6', 'yery', '2022-12-10', '12:03:23', '2022-12-10', '12:03:25'),
('F2', 'P6', 'yery', '2022-12-10', '12:03:26', '2022-12-10', '12:03:33'),
('F2', 'P6', 'yery', '2022-12-10', '12:03:36', NULL, NULL),
('F1', 'P2', 'yery', '2022-12-10', '12:04:35', NULL, NULL),
('F1', 'P2', 'yery', '2022-12-10', '12:09:25', NULL, NULL),
('F2', 'P6', 'yery', '2022-12-10', '12:11:26', '2022-12-10', '12:11:28'),
('F2', 'P6', 'yery', '2022-12-10', '12:11:30', '2022-12-10', '12:11:33'),
('F2', 'P6', 'yery', '2022-12-10', '12:11:37', NULL, NULL),
('F2', 'P6', 'yery', '2022-12-10', '12:11:44', '2022-12-10', '12:11:44'),
('F2', 'P6', 'yery', '2022-12-10', '12:11:46', '2022-12-10', '12:11:50'),
('F2', 'P6', 'yery', '2022-12-10', '12:11:51', NULL, NULL),
('F3', 'P10', 'rosa', '2022-12-10', '12:16:24', NULL, NULL),
('F3', 'P10', 'rosa', '2022-12-10', '12:17:00', NULL, NULL),
('F3', 'P10', 'rosa', '2022-12-10', '12:17:36', NULL, NULL),
('F3', 'P10', 'rosa', '2022-12-10', '12:18:11', '2022-12-10', '12:32:42'),
('F3', 'P10', 'rosa', '2022-12-10', '12:32:57', NULL, NULL),
('F3', 'P10', 'rosa', '2022-12-10', '12:33:00', NULL, NULL),
('F3', 'P10', 'rosa', '2022-12-10', '12:36:09', NULL, NULL),
('F3', 'P10', 'rosa', '2022-12-10', '12:36:25', NULL, NULL),
('F3', 'P10', 'rosa', '2022-12-10', '12:39:10', '2022-12-10', '12:39:16'),
('F2', 'P6', 'yery', '2022-12-10', '12:41:15', '2022-12-10', '12:41:17'),
('F2', 'P6', 'yery', '2022-12-10', '12:41:20', NULL, NULL),
('F1', 'P2', 'yery', '2022-12-11', '12:43:38', NULL, NULL),
('F2', 'P6', 'yery', '2022-12-11', '12:43:43', '2022-12-11', '12:43:46'),
('F2', 'P6', 'yery', '2022-12-11', '12:43:48', '2022-12-11', '12:43:55'),
('F2', 'P6', 'yery', '2022-12-11', '12:43:56', NULL, NULL),
('F2', 'P6', 'yery', '2022-12-11', '12:50:13', NULL, NULL),
('F1', 'P2', 'yery', '2022-12-11', '12:53:15', NULL, NULL),
('F3', 'P10', 'rosa', '2022-12-11', '01:02:19', NULL, NULL),
('F2', 'P6', 'yery', '2022-12-11', '01:03:49', '2022-12-11', '01:03:51'),
('F2', 'P6', 'yery', '2022-12-11', '01:03:52', '2022-12-11', '01:03:56'),
('F2', 'P6', 'yery', '2022-12-11', '01:03:57', NULL, NULL),
('F3', 'P10', 'rosa', '2022-12-11', '01:04:38', NULL, NULL),
('F3', 'P10', 'rosa', '2022-12-11', '01:04:44', NULL, NULL),
('F3', 'P10', 'rosa', '2022-12-11', '01:07:23', NULL, NULL),
('F3', 'P10', 'rosa', '2022-12-11', '01:07:36', NULL, NULL),
('F3', 'P10', 'rosa', '2022-12-11', '01:07:47', NULL, NULL),
('F3', 'P10', 'rosa', '2022-12-11', '01:07:52', NULL, NULL),
('F3', 'P10', 'rosa', '2022-12-11', '01:08:01', NULL, NULL),
('F3', 'P10', 'rosa', '2022-12-11', '01:08:03', NULL, NULL),
('F3', 'P10', 'rosa', '2022-12-11', '01:08:04', NULL, NULL),
('F3', 'P10', 'rosa', '2022-12-11', '01:08:09', NULL, NULL),
('F3', 'P10', 'rosa', '2022-12-11', '01:08:51', NULL, NULL),
('F3', 'P10', 'rosa', '2022-12-11', '01:11:05', NULL, NULL),
('F3', 'P10', 'rosa', '2022-12-11', '01:11:09', NULL, NULL),
('F3', 'P10', 'rosa', '2022-12-11', '01:11:15', NULL, NULL),
('F3', 'P10', 'rosa', '2022-12-11', '01:11:17', NULL, NULL),
('F3', 'P10', 'rosa', '2022-12-11', '01:12:10', NULL, NULL),
('F3', 'P10', 'rosa', '2022-12-11', '01:12:13', NULL, NULL),
('F3', 'P10', 'rosa', '2022-12-11', '01:14:53', NULL, NULL),
('F3', 'P10', 'rosa', '2022-12-11', '01:15:10', NULL, NULL),
('F3', 'P10', 'rosa', '2022-12-11', '01:15:30', NULL, NULL),
('F1', 'P2', 'yery', '2022-12-11', '01:16:10', NULL, NULL),
('F1', 'P2', 'yery', '2022-12-11', '01:17:22', NULL, NULL),
('F1', 'P2', 'yery', '2022-12-11', '01:17:27', '2022-12-11', '01:17:30'),
('F3', 'P10', 'rosa', '2022-12-11', '01:17:42', NULL, NULL),
('F3', 'P10', 'rosa', '2022-12-11', '01:23:58', NULL, NULL),
('F2', 'P6', 'yery', '2022-12-11', '01:24:14', NULL, NULL),
('F2', 'P6', 'yery', '2022-12-11', '01:27:23', NULL, NULL),
('F1', 'P2', 'yery', '2022-12-11', '01:27:45', NULL, NULL),
('F1', 'P2', 'yery', '2022-12-11', '01:27:50', '2022-12-11', '01:27:58'),
('F2', 'P6', 'yery', '2022-12-11', '01:28:08', '2022-12-11', '01:28:14'),
('F2', 'P6', 'yery', '2022-12-11', '01:28:16', NULL, NULL),
('F3', 'P10', 'rosa', '2022-12-11', '01:46:00', NULL, NULL),
('F3', 'P10', 'rosa', '2022-12-11', '01:46:04', NULL, NULL),
('F2', 'P6', 'yery', '2022-12-11', '04:03:28', '2022-12-11', '04:03:31'),
('F2', 'P6', 'yery', '2022-12-11', '04:03:33', NULL, NULL),
('F2', 'P6', 'yery', '2022-12-11', '04:04:09', '2022-12-11', '04:04:09'),
('F2', 'P6', 'yery', '2022-12-11', '04:04:11', NULL, NULL),
('F3', 'P10', 'rosa', '2022-12-11', '04:04:41', NULL, NULL),
('F2', 'P6', 'yery', '2022-12-11', '04:07:03', '2022-12-11', '04:07:05'),
('F2', 'P6', 'yery', '2022-12-11', '04:07:06', NULL, NULL),
('F1', 'P2', 'yery', '2022-12-11', '04:07:11', NULL, NULL),
('F1', 'P2', 'yery', '2022-12-11', '04:08:09', NULL, NULL),
('F1', 'P2', 'yery', '2022-12-11', '04:08:18', NULL, NULL),
('F3', 'P10', 'rosa', '2022-12-11', '04:08:40', '2022-12-11', '04:08:55'),
('F2', 'P6', 'yery', '2022-12-11', '04:09:05', '2022-12-11', '04:09:06'),
('F2', 'P6', 'yery', '2022-12-11', '04:09:09', '2022-12-11', '04:09:10'),
('F2', 'P6', 'yery', '2022-12-11', '04:09:12', NULL, NULL),
('F1', 'P2', 'yery', '2022-12-11', '04:09:32', '2022-12-11', '04:09:37'),
('F2', 'P6', 'yery', '2022-12-11', '04:09:46', '2022-12-11', '04:09:48'),
('F2', 'P6', 'yery', '2022-12-11', '04:09:51', NULL, NULL),
('F3', 'P10', 'rosa', '2022-12-11', '04:10:21', '2022-12-11', '04:10:32'),
('F2', 'P6', 'rosa', '2022-12-11', '04:10:35', '2022-12-11', '04:10:37'),
('F2', 'P6', 'rosa', '2022-12-11', '04:10:40', '2022-12-11', '04:10:44'),
('F2', 'P6', 'rosa', '2022-12-11', '04:10:46', NULL, NULL),
('F3', 'P10', 'rosa', '2022-12-11', '04:11:47', '2022-12-11', '04:12:07'),
('F3', 'P10', 'rosa', '2022-12-11', '04:12:25', '2022-12-11', '04:12:33'),
('F2', 'P6', 'rosa', '2022-12-11', '04:12:37', '2022-12-11', '04:12:38'),
('F2', 'P6', 'rosa', '2022-12-11', '04:12:40', '2022-12-11', '04:12:41'),
('F2', 'P6', 'rosa', '2022-12-11', '04:12:43', '2022-12-11', '04:12:44'),
('F2', 'P6', 'rosa', '2022-12-11', '04:12:49', NULL, NULL),
('F2', 'P6', 'rosa', '2022-12-11', '04:12:51', NULL, NULL),
('F2', 'P6', 'rosa', '2022-12-11', '04:12:52', NULL, NULL),
('F3', 'P10', 'rosa', '2022-12-11', '04:13:08', '2022-12-11', '04:13:35'),
('F2', 'P6', 'rosa', '2022-12-11', '04:13:37', NULL, NULL),
('F1', 'P2', 'yery', '2022-12-11', '07:35:45', '2022-12-11', '07:36:05'),
('F1', 'P2', 'yery', '2022-12-11', '07:37:19', NULL, NULL),
('F1', 'P2', 'yery', '2022-12-11', '07:39:51', '2022-12-11', '08:13:16'),
('F2', 'P6', 'yery', '2022-12-11', '08:13:24', '2022-12-11', '08:13:26'),
('F2', 'P6', 'yery', '2022-12-11', '08:13:29', NULL, NULL),
('F1', 'P2', 'yery', '2022-12-11', '08:13:36', NULL, NULL),
('F1', 'P2', 'yery', '2022-12-11', '08:16:49', NULL, NULL),
('F2', 'P6', 'yery', '2022-12-11', '08:17:12', '2022-12-11', '08:17:15'),
('F2', 'P6', 'yery', '2022-12-11', '08:17:19', NULL, NULL),
('F2', 'P6', 'yery', '2022-12-11', '08:18:12', '2022-12-11', '08:18:13'),
('F2', 'P6', 'yery', '2022-12-11', '08:18:14', '2022-12-11', '08:18:34'),
('F2', 'P6', 'yery', '2022-12-11', '08:18:36', '2022-12-11', '08:19:29'),
('F2', 'P6', 'yery', '2022-12-11', '08:19:34', NULL, NULL),
('F2', 'P6', 'yery', '2022-12-11', '08:19:38', '2022-12-11', '08:21:57'),
('F2', 'P6', 'yery', '2022-12-11', '08:22:01', NULL, NULL),
('F1', 'P2', 'rosa', '2022-12-11', '08:26:06', NULL, NULL),
('F3', 'P10', 'rosa', '2022-12-11', '08:27:04', NULL, NULL),
('F3', 'P10', 'rosa', '2022-12-11', '08:27:31', '2022-12-11', '08:28:22'),
('F2', 'P6', 'yery', '2022-12-11', '08:28:31', '2022-12-11', '08:28:34'),
('F2', 'P6', 'yery', '2022-12-11', '08:28:38', '2022-12-11', '08:28:45'),
('F2', 'P6', 'yery', '2022-12-11', '08:28:47', NULL, NULL),
('F1', 'P2', 'roxy', '2022-12-11', '08:33:16', NULL, NULL),
('F1', 'P2', 'roxy', '2022-12-11', '08:33:24', '2022-12-11', '08:33:34'),
('F2', 'P6', 'roxy', '2022-12-11', '08:33:53', NULL, NULL),
('F2', 'P6', 'roxy', '2022-12-11', '08:33:57', '2022-12-11', '08:33:59'),
('F2', 'P6', 'roxy', '2022-12-11', '08:34:01', NULL, NULL),
('F1', 'P2', 'roxy', '2022-12-11', '08:34:10', '2022-12-11', '08:42:35'),
('F3', 'P10', 'rosa', '2022-12-11', '08:43:19', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `cod_user` int(3) DEFAULT NULL,
  `user` varchar(10) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`cod_user`, `user`, `email`, `password`) VALUES
(2, 'rosa', 'rosa@gmail.com', '123'),
(1, 'roxy', 'roxy@gmail.com', '123'),
(1, 'yery', 'yeryo6@gmail.com', '123');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
