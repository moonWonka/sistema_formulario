-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 31-03-2023 a las 06:22:53
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistema_votacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidatos`
--

DROP TABLE IF EXISTS `candidatos`;
CREATE TABLE IF NOT EXISTS `candidatos` (
  `id_candidato` int NOT NULL AUTO_INCREMENT,
  `nombre_candidato` varchar(45) NOT NULL,
  `partido_candidato` varchar(45) NOT NULL,
  `id_region_candidato` int NOT NULL,
  `id_comuna_candidato` int NOT NULL,
  PRIMARY KEY (`id_candidato`),
  KEY `id_region_candidato_idx` (`id_region_candidato`),
  KEY `id_comuna_candidato_idx` (`id_comuna_candidato`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comunas`
--

DROP TABLE IF EXISTS `comunas`;
CREATE TABLE IF NOT EXISTS `comunas` (
  `id_comunas` int NOT NULL AUTO_INCREMENT,
  `nombre_comuna` varchar(45) NOT NULL,
  `id_region_comuna` int NOT NULL,
  PRIMARY KEY (`id_comunas`),
  UNIQUE KEY `nombre_comuna` (`nombre_comuna`),
  KEY `id_region_comuna_idx` (`id_region_comuna`)
) ENGINE=InnoDB AUTO_INCREMENT=2736 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medios`
--

DROP TABLE IF EXISTS `medios`;
CREATE TABLE IF NOT EXISTS `medios` (
  `id_medio` int NOT NULL AUTO_INCREMENT,
  `nombre_medio` varchar(50) NOT NULL,
  PRIMARY KEY (`id_medio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regiones`
--

DROP TABLE IF EXISTS `regiones`;
CREATE TABLE IF NOT EXISTS `regiones` (
  `id_region` int NOT NULL AUTO_INCREMENT,
  `nombre_region` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id_region`),
  UNIQUE KEY `nombre_region` (`nombre_region`)
) ENGINE=InnoDB AUTO_INCREMENT=417 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `votantes`
--

DROP TABLE IF EXISTS `votantes`;
CREATE TABLE IF NOT EXISTS `votantes` (
  `id_votante` int NOT NULL AUTO_INCREMENT,
  `nombre_votante` varchar(45) NOT NULL,
  `alias` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `rut_votante` varchar(12) NOT NULL,
  `email_votante` varchar(30) NOT NULL,
  `id_region_votante` int NOT NULL,
  `id_comuna_votante` int NOT NULL,
  PRIMARY KEY (`id_votante`),
  KEY `id_region_votante_idx` (`id_region_votante`),
  KEY `id_comuna_votante_idx` (`id_comuna_votante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `votantes_medios`
--

DROP TABLE IF EXISTS `votantes_medios`;
CREATE TABLE IF NOT EXISTS `votantes_medios` (
  `id_votante` int NOT NULL,
  `id_medio` int NOT NULL,
  KEY `id_votante_idx` (`id_votante`),
  KEY `id_medios_idx` (`id_medio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `votos`
--

DROP TABLE IF EXISTS `votos`;
CREATE TABLE IF NOT EXISTS `votos` (
  `id_voto` int NOT NULL AUTO_INCREMENT,
  `id_votante_voto` int NOT NULL,
  `id_candidato_voto` int NOT NULL,
  PRIMARY KEY (`id_voto`),
  KEY `id_votante_voto_idx` (`id_votante_voto`),
  KEY `id_candidato_voto_idx` (`id_candidato_voto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `candidatos`
--
ALTER TABLE `candidatos`
  ADD CONSTRAINT `id_comuna_candidato` FOREIGN KEY (`id_comuna_candidato`) REFERENCES `comunas` (`id_comunas`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `id_region_candidato` FOREIGN KEY (`id_region_candidato`) REFERENCES `regiones` (`id_region`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Filtros para la tabla `comunas`
--
ALTER TABLE `comunas`
  ADD CONSTRAINT `id_region_comuna` FOREIGN KEY (`id_region_comuna`) REFERENCES `regiones` (`id_region`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Filtros para la tabla `votantes`
--
ALTER TABLE `votantes`
  ADD CONSTRAINT `id_comuna_votante` FOREIGN KEY (`id_comuna_votante`) REFERENCES `comunas` (`id_comunas`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `id_region_votante` FOREIGN KEY (`id_region_votante`) REFERENCES `regiones` (`id_region`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Filtros para la tabla `votantes_medios`
--
ALTER TABLE `votantes_medios`
  ADD CONSTRAINT `id_medios` FOREIGN KEY (`id_medio`) REFERENCES `medios` (`id_medio`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `id_votante` FOREIGN KEY (`id_votante`) REFERENCES `votantes` (`id_votante`);

--
-- Filtros para la tabla `votos`
--
ALTER TABLE `votos`
  ADD CONSTRAINT `id_candidato_voto` FOREIGN KEY (`id_candidato_voto`) REFERENCES `candidatos` (`id_candidato`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `id_votante_voto` FOREIGN KEY (`id_votante_voto`) REFERENCES `votantes` (`id_votante`) ON DELETE RESTRICT ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
