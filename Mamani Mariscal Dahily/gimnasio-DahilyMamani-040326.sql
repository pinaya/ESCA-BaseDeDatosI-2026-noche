-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 05-03-2026 a las 00:21:03
-- Versión del servidor: 5.5.16
-- Versión de PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `gimnasio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_cliente` varchar(50) NOT NULL,
  `id_entrenador1` int(11) NOT NULL,
  PRIMARY KEY (`id_cliente`),
  KEY `id_entrenador1` (`id_entrenador1`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre_cliente`, `id_entrenador1`) VALUES
(1, 'Pepe Diaz', 2),
(2, 'Maria Gonzales', 3),
(3, 'Michael Sanchez', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrenador`
--

CREATE TABLE IF NOT EXISTS `entrenador` (
  `id_entrenador` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_entrenador` varchar(50) NOT NULL,
  PRIMARY KEY (`id_entrenador`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `entrenador`
--

INSERT INTO `entrenador` (`id_entrenador`, `nombre_entrenador`) VALUES
(1, 'Juan Perez'),
(2, 'Arlong Suasnabar'),
(3, 'Celina Dior');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutina`
--

CREATE TABLE IF NOT EXISTS `rutina` (
  `id_rutina` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_rutina` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `hora` time NOT NULL,
  `fecha` date NOT NULL,
  `id_cliente1` int(11) NOT NULL,
  `id_entrenador2` int(11) NOT NULL,
  PRIMARY KEY (`id_rutina`),
  KEY `id_cliente1` (`id_cliente1`),
  KEY `id_entrenador2` (`id_entrenador2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `rutina`
--
ALTER TABLE `rutina`
  ADD CONSTRAINT `rutina_ibfk_4` FOREIGN KEY (`id_entrenador2`) REFERENCES `entrenador` (`id_entrenador`),
  ADD CONSTRAINT `rutina_ibfk_3` FOREIGN KEY (`id_cliente1`) REFERENCES `cliente` (`id_cliente`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
