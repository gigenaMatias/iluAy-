-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-02-2021 a las 15:13:40
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `c1980343_iluaye`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emprendedor`
--

CREATE TABLE `emprendedor` (
  `idemprendedor` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `categoria` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `telefono` int(11) DEFAULT NULL,
  `facebook` varchar(100) DEFAULT NULL,
  `instagram` varchar(100) DEFAULT NULL,
  `codigoarea` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `emprendedor`
--

INSERT INTO `emprendedor` (`idemprendedor`, `logo`, `descripcion`, `categoria`, `nombre`, `telefono`, `facebook`, `instagram`, `codigoarea`) VALUES
(1, 'https://i.ibb.co/rtVbmwn/pic01.png', 'Desarrolladores de software', 'servicios', 'AXU Team', 0, '', '', 0),
(2, 'https://i.ibb.co/wcf3N33/pic02.png', '', 'alimentos', 'Caricias Al Alma', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idProducto` bigint(20) UNSIGNED NOT NULL,
  `idEmprendedor` bigint(20) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `descripcion` varchar(200) NOT NULL,
  `precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idProducto`, `idEmprendedor`, `foto`, `descripcion`, `precio`) VALUES
(1, 2, 'https://i.ibb.co/q1Fc566/Lemon-Biscuits.png', 'Cuadraditos de limón glaseados', 60);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `emprendedor`
--
ALTER TABLE `emprendedor`
  ADD PRIMARY KEY (`idemprendedor`),
  ADD UNIQUE KEY `idemprendedor` (`idemprendedor`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idEmprendedor`),
  ADD UNIQUE KEY `idProducto` (`idProducto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `emprendedor`
--
ALTER TABLE `emprendedor`
  MODIFY `idemprendedor` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idProducto` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
