-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 26-02-2018 a las 17:32:46
-- Versión del servidor: 5.6.28
-- Versión de PHP: 5.6.33-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `sam`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accionesdemejora`
--

CREATE TABLE IF NOT EXISTS `accionesdemejora` (
`id` int(11) NOT NULL,
  `fecha_alta` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `titulo` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `objetivo` text COLLATE utf8_spanish_ci NOT NULL,
  `observacion` text COLLATE utf8_spanish_ci NOT NULL,
  `tipo` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `origen` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `proceso` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `area` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `estado` text COLLATE utf8_spanish_ci NOT NULL,
  `subestado` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha_validacion` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `accionesdemejora`
--

INSERT INTO `accionesdemejora` (`id`, `fecha_alta`, `titulo`, `descripcion`, `objetivo`, `observacion`, `tipo`, `origen`, `proceso`, `area`, `estado`, `subestado`, `fecha_validacion`) VALUES
(4, '2018-01-31 12:41:44', 'alguna', 'asdasd', 'asdasd', 'asdasd', 'Observacion', 'Reclamo de clientes', 'Capacitacion', 'Calidad y Procesos', 'cerrada', 'exitosa', '2018-02-01'),
(5, '2018-01-30 19:03:40', '', 'sasa', 'dasda', 'asdasdas', 'Observacion', 'Propuesta', 'Gestion de Finanzas', 'Contabilidad y Finanzas', 'cerrada', 'aprobada', '2018-02-17'),
(6, '2018-01-31 13:47:51', 'Antivirus', 'Se solicita la renovacion de licencias kv', 'compra', 'ninguna', 'Oportunidad de mejora', 'Propuesta', 'Seguridad Informatica', 'Soporte IT', 'cerrada', 'aprobada', '2018-02-26'),
(7, '2018-02-07 14:57:47', 'SQL', '45346', 'Alcascd', 'ag45648669', 'Oportunidad de mejora', 'Desvio', 'Capacitacion', 'Base de Datos', 'cerrada', 'exitosa', '2018-02-16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientos`
--

CREATE TABLE IF NOT EXISTS `movimientos` (
`id_mov` int(11) NOT NULL,
  `movi` int(11) DEFAULT NULL,
  `fecha_movimiento` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tipo` text COLLATE utf8_spanish_ci NOT NULL,
  `derivado_a` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `plazo` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `movimientos`
--

INSERT INTO `movimientos` (`id_mov`, `movi`, `fecha_movimiento`, `tipo`, `derivado_a`, `descripcion`, `plazo`) VALUES
(12, 6, '2018-02-05 20:16:14', 'Cierre de la Accion', '', '', '2018-02-07'),
(16, 6, '2018-02-06 19:01:14', 'Analisis causa raiz', 'Riesgo', '7895646', '2018-02-21'),
(19, 7, '2018-02-07 15:17:51', 'Accion para verificar', 'Desarrollo', '23453456456', '2018-02-23'),
(20, 7, '2018-02-07 19:49:50', 'Analisis causa raiz', 'Seguridad', '43534534', '2018-02-26');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accionesdemejora`
--
ALTER TABLE `accionesdemejora`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `movimientos`
--
ALTER TABLE `movimientos`
 ADD PRIMARY KEY (`id_mov`), ADD KEY `movimientos` (`movi`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `accionesdemejora`
--
ALTER TABLE `accionesdemejora`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `movimientos`
--
ALTER TABLE `movimientos`
MODIFY `id_mov` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `movimientos`
--
ALTER TABLE `movimientos`
ADD CONSTRAINT `movimientos_ibfk_1` FOREIGN KEY (`movi`) REFERENCES `accionesdemejora` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
