-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-04-2025 a las 18:03:55
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sig2k25`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aplicacion`
--

CREATE TABLE `aplicacion` (
  `id_aplicacion` int(5) NOT NULL,
  `nombre_aplicacion` varchar(25) NOT NULL,
  `estatus_aplicacion` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `aplicacion`
--

INSERT INTO `aplicacion` (`id_aplicacion`, `nombre_aplicacion`, `estatus_aplicacion`) VALUES
(25, 'Aplicacion 01', '1'),
(26, 'Aplicacion 02', '1'),
(35, 'Aplicacion 03', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora`
--

CREATE TABLE `bitacora` (
  `id_bitacora` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_aplicacion` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `accion` varchar(50) DEFAULT NULL,
  `nombre_pc` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `bitacora`
--

INSERT INTO `bitacora` (`id_bitacora`, `id_usuario`, `id_aplicacion`, `fecha`, `ip`, `accion`, `nombre_pc`) VALUES
(1, 85, 1, '2025-04-01 10:28:51', '192.168.63.88', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(2, 2026, 1, '2025-04-01 15:21:43', '192.168.0.106', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(3, 2026, 1, '2025-04-01 15:44:17', '192.168.1.12', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(4, 2026, 1, '2025-04-01 16:10:31', '192.168.1.12', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(5, 2026, 1, '2025-04-01 16:11:54', '192.168.1.12', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(6, 2026, 1, '2025-04-01 16:13:17', '192.168.1.12', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(7, 2026, 1, '2025-04-01 16:18:26', '192.168.1.12', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(8, 2026, 1, '2025-04-01 16:19:23', '192.168.1.12', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(9, 2026, 1, '2025-04-01 16:23:17', '192.168.1.12', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(10, 2026, 1, '2025-04-01 16:25:50', '192.168.1.12', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(11, 2026, 1, '2025-04-01 16:27:41', '192.168.1.12', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(12, 2026, 1, '2025-04-01 16:31:24', '192.168.1.12', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(13, 2026, 1, '2025-04-01 17:03:32', '192.168.1.12', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(14, 2026, 1, '2025-04-01 17:20:28', '192.168.1.12', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(15, 2026, 1, '2025-04-01 22:01:07', '192.168.1.12', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(16, 2026, 1, '2025-04-01 22:24:00', '192.168.1.12', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(17, 2026, 1, '2025-04-01 22:28:43', '192.168.1.12', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(18, 2026, 1, '2025-04-01 22:31:14', '192.168.1.12', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(19, 2026, 1, '2025-04-01 22:36:24', '192.168.1.12', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(20, 2026, 1, '2025-04-02 08:42:08', '192.168.139.88', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(21, 2026, 1, '2025-04-02 08:50:38', '192.168.139.88', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(22, 2026, 1, '2025-04-02 08:59:41', '192.168.139.88', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(23, 2026, 1, '2025-04-02 09:12:18', '127.0.0.1', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(24, 2026, 1, '2025-04-02 09:17:48', '192.168.63.88', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(25, 2026, 1, '2025-04-02 09:19:42', '192.168.63.88', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(26, 2026, 1, '2025-04-02 09:20:51', '192.168.63.88', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(27, 2026, 1, '2025-04-02 09:28:44', '192.168.63.88', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(28, 2026, 1, '2025-04-02 09:34:26', '192.168.63.88', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(29, 2026, 1, '2025-04-02 09:47:18', '192.168.63.88', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(30, 2026, 1, '2025-04-02 10:03:12', '192.168.63.88', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(31, 2026, 1, '2025-04-02 10:48:32', '192.168.63.88', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(32, 2026, 1, '2025-04-02 10:55:20', '192.168.63.88', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(33, 2026, 1, '2025-04-02 11:02:40', '192.168.63.88', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(34, 2026, 1, '2025-04-03 16:55:29', '192.168.0.106', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(35, 2026, 1, '2025-04-03 16:57:35', '192.168.0.106', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(36, 2026, 1, '2025-04-03 16:59:03', '192.168.0.106', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(37, 2026, 1, '2025-04-03 17:07:11', '192.168.0.106', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(38, 2026, 1, '2025-04-04 11:30:00', '192.168.0.106', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(39, 2026, 1, '2025-04-04 11:41:54', '192.168.0.106', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(40, 2026, 1, '2025-04-04 11:44:38', '192.168.0.106', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(41, 2026, 1, '2025-04-04 12:02:52', '192.168.0.106', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(42, 2026, 1, '2025-04-04 12:07:08', '192.168.0.106', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(43, 2026, 1, '2025-04-04 12:15:28', '192.168.0.106', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(44, 2026, 1, '2025-04-04 12:17:58', '192.168.0.106', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(45, 2026, 1, '2025-04-04 12:20:33', '192.168.0.106', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(46, 2026, 1, '2025-04-04 12:23:37', '192.168.0.106', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(47, 2026, 1, '2025-04-04 12:26:21', '192.168.0.106', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(48, 2026, 1, '2025-04-04 12:30:38', '192.168.0.106', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(49, 2026, 1, '2025-04-04 12:43:08', '192.168.0.106', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(50, 2026, 1, '2025-04-04 12:43:57', '192.168.0.106', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(51, 2026, 1, '2025-04-04 12:45:11', '192.168.0.106', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(52, 2026, 1, '2025-04-04 12:45:54', '192.168.0.106', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(53, 2026, 1, '2025-04-04 12:49:20', '192.168.0.106', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(54, 2026, 1, '2025-04-04 17:56:47', '192.168.0.106', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(55, 2026, 1, '2025-04-04 17:59:51', '192.168.0.106', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(56, 2026, 1, '2025-04-05 14:02:28', '192.168.0.106', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(57, 2026, 1, '2025-04-05 14:07:04', '192.168.0.106', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(58, 2026, 1, '2025-04-05 14:13:41', '192.168.0.106', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(59, 2026, 1, '2025-04-05 14:15:40', '192.168.0.106', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(60, 2026, 1, '2025-04-07 18:11:51', '192.168.0.106', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(61, 2026, 1, '2025-04-11 09:36:42', '192.168.249.88', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(62, 2026, 1, '2025-04-11 09:42:17', '192.168.249.88', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(63, 2026, 201, '2025-04-11 09:42:34', '192.168.249.88', 'Ingreso Datos Paises', 'DESKTOP-0J2CAUG'),
(64, 2026, 1, '2025-04-11 09:45:24', '192.168.249.88', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(65, 2026, 201, '2025-04-11 09:45:34', '192.168.249.88', 'Ingreso Datos Paises', 'DESKTOP-0J2CAUG'),
(66, 2026, 201, '2025-04-11 09:45:43', '192.168.249.88', 'Ingreso Datos Paises', 'DESKTOP-0J2CAUG'),
(67, 2026, 201, '2025-04-11 09:45:46', '192.168.249.88', 'Consulta Datos Paises', 'DESKTOP-0J2CAUG'),
(68, 2026, 201, '2025-04-11 09:45:48', '192.168.249.88', 'Consulta Datos Paises', 'DESKTOP-0J2CAUG'),
(69, 2026, 201, '2025-04-11 09:45:51', '192.168.249.88', 'Borrar Datos Paises', 'DESKTOP-0J2CAUG'),
(70, 2026, 201, '2025-04-11 09:45:56', '192.168.249.88', 'Consulta Datos Paises', 'DESKTOP-0J2CAUG'),
(71, 2026, 201, '2025-04-11 09:45:59', '192.168.249.88', 'Consulta Datos Paises', 'DESKTOP-0J2CAUG'),
(72, 2026, 201, '2025-04-11 09:46:07', '192.168.249.88', 'Actualizacion Datos Paises', 'DESKTOP-0J2CAUG'),
(73, 2026, 201, '2025-04-11 09:46:13', '192.168.249.88', 'Actualizacion Datos Paises', 'DESKTOP-0J2CAUG'),
(74, 2026, 1, '2025-04-11 09:48:09', '192.168.249.88', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(75, 2026, 201, '2025-04-11 09:48:20', '192.168.249.88', 'Ingreso Datos Paises', 'DESKTOP-0J2CAUG'),
(76, 2026, 201, '2025-04-11 09:48:31', '192.168.249.88', 'Actualizacion Datos Paises', 'DESKTOP-0J2CAUG'),
(77, 2026, 201, '2025-04-11 09:48:32', '192.168.249.88', 'Actualizacion Datos Paises', 'DESKTOP-0J2CAUG'),
(78, 2026, 201, '2025-04-11 09:48:35', '192.168.249.88', 'Consulta Datos Paises', 'DESKTOP-0J2CAUG'),
(79, 2026, 201, '2025-04-11 09:48:37', '192.168.249.88', 'Consulta Datos Paises', 'DESKTOP-0J2CAUG'),
(80, 2026, 201, '2025-04-11 09:50:26', '192.168.249.88', 'Consulta Datos Paises', 'DESKTOP-0J2CAUG'),
(81, 2026, 1, '2025-04-11 09:53:14', '192.168.249.88', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(82, 2026, 201, '2025-04-11 09:53:29', '192.168.249.88', 'Ingreso Datos Paises', 'DESKTOP-0J2CAUG'),
(83, 2026, 201, '2025-04-11 09:53:32', '192.168.249.88', 'Consulta Datos Paises', 'DESKTOP-0J2CAUG'),
(84, 2026, 1, '2025-04-11 09:55:43', '192.168.249.88', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(85, 2026, 201, '2025-04-11 09:55:58', '192.168.249.88', 'Ingreso Datos Paises', 'DESKTOP-0J2CAUG'),
(86, 2026, 201, '2025-04-11 09:56:02', '192.168.249.88', 'Consulta Datos Paises', 'DESKTOP-0J2CAUG'),
(87, 2026, 201, '2025-04-11 09:56:11', '192.168.249.88', 'Actualizacion Datos Paises', 'DESKTOP-0J2CAUG'),
(88, 2026, 201, '2025-04-11 09:56:16', '192.168.249.88', 'Actualizacion Datos Paises', 'DESKTOP-0J2CAUG'),
(89, 2026, 1, '2025-04-11 09:58:07', '192.168.249.88', 'Inicio Sesion', 'DESKTOP-0J2CAUG'),
(90, 2026, 201, '2025-04-11 09:58:20', '192.168.249.88', 'Ingreso Datos Paises', 'DESKTOP-0J2CAUG'),
(91, 2026, 201, '2025-04-11 09:58:30', '192.168.249.88', 'Consulta Datos Paises', 'DESKTOP-0J2CAUG'),
(92, 2026, 201, '2025-04-11 09:58:32', '192.168.249.88', 'Borrar Datos Paises', 'DESKTOP-0J2CAUG'),
(93, 2026, 201, '2025-04-11 09:58:36', '192.168.249.88', 'Actualizacion Datos Paises', 'DESKTOP-0J2CAUG'),
(94, 2026, 201, '2025-04-11 09:58:47', '192.168.249.88', 'Consulta Datos Paises', 'DESKTOP-0J2CAUG'),
(95, 2026, 201, '2025-04-11 09:58:50', '192.168.249.88', 'Actualizacion Datos Paises', 'DESKTOP-0J2CAUG');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `id_pais` int(10) NOT NULL,
  `nombre_pais` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`id_pais`, `nombre_pais`) VALUES
(2, 'Brazil'),
(4, 'España'),
(5, 'Panama'),
(7, 'Venezuela');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles`
--

CREATE TABLE `perfiles` (
  `id_perfil` int(10) NOT NULL,
  `nombre_perfil` varchar(85) DEFAULT NULL,
  `estatus_perfil` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `perfiles`
--

INSERT INTO `perfiles` (`id_perfil`, `nombre_perfil`, `estatus_perfil`) VALUES
(111, 'Gerentes', '1'),
(222, 'Proveedores', '1'),
(333, 'Inversores', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relusuapl`
--

CREATE TABLE `relusuapl` (
  `id_relusuapl` int(10) NOT NULL,
  `id_aplicacion` int(5) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `der_insertar` varchar(1) NOT NULL,
  `der_editar` varchar(1) NOT NULL,
  `der_eliminar` varchar(1) NOT NULL,
  `der_imprimir` varchar(1) NOT NULL,
  `fecha` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `relusuapl`
--

INSERT INTO `relusuapl` (`id_relusuapl`, `id_aplicacion`, `id_usuario`, `der_insertar`, `der_editar`, `der_eliminar`, `der_imprimir`, `fecha`) VALUES
(0, 25, 84, '1', '0', '0', '0', '04/04/2025'),
(25, 25, 84, '1', '0', '0', '0', '05/02/2025'),
(456, 35, 84, '1', '0', '0', '1', '05/04/2025'),
(741, 25, 84, '1', '0', '0', '0', '05/04/2025'),
(967, 35, 84, '0', '0', '1', '0', '05/04/2025');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `username`, `password`) VALUES
(84, 'NUEVO', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4'),
(85, 'NUEVO2', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4'),
(87, 'ESDUARDO', 'b2b2f104d32c638903e151a9b20d6e27b41d8c0c84cf8458738f83ca2f1dd744'),
(2026, 'admin', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aplicacion`
--
ALTER TABLE `aplicacion`
  ADD PRIMARY KEY (`id_aplicacion`);

--
-- Indices de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  ADD PRIMARY KEY (`id_bitacora`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id_pais`);

--
-- Indices de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  ADD PRIMARY KEY (`id_perfil`);

--
-- Indices de la tabla `relusuapl`
--
ALTER TABLE `relusuapl`
  ADD PRIMARY KEY (`id_relusuapl`),
  ADD KEY `id_aplicacion` (`id_aplicacion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  MODIFY `id_bitacora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `relusuapl`
--
ALTER TABLE `relusuapl`
  ADD CONSTRAINT `relusuapl_ibfk_1` FOREIGN KEY (`id_aplicacion`) REFERENCES `aplicacion` (`id_aplicacion`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
