-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 22-02-2017 a las 18:30:40
-- Versión del servidor: 5.5.54-0ubuntu0.14.04.1
-- Versión de PHP: 5.5.9-1ubuntu4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `coia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accion`
--

CREATE TABLE IF NOT EXISTS `accion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `base_prueba`
--

CREATE TABLE IF NOT EXISTS `base_prueba` (
  `id_orig_base1` int(5) NOT NULL,
  `id_orig_base` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_orig_base` varchar(50) DEFAULT NULL,
  `telefono_orig_base` int(10) DEFAULT NULL,
  `direccion_orig_base` varchar(50) DEFAULT NULL,
  `provincia_orig_base` varchar(20) DEFAULT NULL,
  `localidad_orig_base` varchar(10) DEFAULT NULL,
  `Cpostal_orig_base` int(10) DEFAULT NULL,
  `res_gestion_orig_base` varchar(10) DEFAULT NULL,
  `observ_orig_base` varchar(500) DEFAULT NULL,
  `FMagenda_orig_base` varchar(20) DEFAULT NULL,
  `lEstado` int(1) NOT NULL DEFAULT '0',
  `ID_Campana` int(2) NOT NULL,
  `llam_estado` int(10) NOT NULL,
  `id_ori_usuario` int(11) NOT NULL,
  `fechaproceso` datetime NOT NULL,
  `pre_flag` int(2) NOT NULL,
  `pre_estado` int(2) NOT NULL,
  PRIMARY KEY (`id_orig_base`),
  KEY `ID_Campana` (`ID_Campana`),
  KEY `id_ori_usuario` (`id_ori_usuario`),
  KEY `lEstado` (`lEstado`),
  KEY `llam_estado` (`llam_estado`),
  KEY `telefono_orig_base` (`telefono_orig_base`),
  KEY `res_gestion_orig_base` (`res_gestion_orig_base`),
  KEY `pre_flag` (`pre_flag`),
  KEY `pre_estado` (`pre_estado`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE IF NOT EXISTS `contacto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE IF NOT EXISTS `estado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orig_base`
--

CREATE TABLE IF NOT EXISTS `orig_base` (
  `id_orig_base` int(11) NOT NULL AUTO_INCREMENT,
  `telefono` int(10) DEFAULT NULL,
  `orden` int(2) NOT NULL,
  `cliente` varchar(11) NOT NULL,
  `id_orig_base_C` int(10) DEFAULT NULL,
  `lEstado` int(1) NOT NULL DEFAULT '0',
  `cod_cam` int(2) NOT NULL,
  `llam_estado` int(10) NOT NULL,
  `id_ori_usuario` int(11) NOT NULL,
  `fechaproceso` datetime NOT NULL,
  `pre_flag` int(2) NOT NULL,
  `pre_estado` int(2) NOT NULL,
  `observacion` varchar(1000) DEFAULT NULL,
  `contacto` int(100) DEFAULT NULL,
  `accion` int(100) DEFAULT NULL,
  `estado` int(100) DEFAULT NULL,
  `fagenda` datetime DEFAULT NULL,
  `nombre_agente` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_orig_base`),
  KEY `ID_Campana` (`cod_cam`),
  KEY `id_ori_usuario` (`id_ori_usuario`),
  KEY `lEstado` (`lEstado`),
  KEY `llam_estado` (`llam_estado`),
  KEY `telefono_orig_base` (`telefono`),
  KEY `pre_flag` (`pre_flag`),
  KEY `pre_estado` (`pre_estado`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orig_base1`
--

CREATE TABLE IF NOT EXISTS `orig_base1` (
  `id_orig_base` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_orig_base` varchar(50) DEFAULT NULL,
  `telefono_orig_base` int(10) DEFAULT NULL,
  `direccion_orig_base` varchar(50) DEFAULT NULL,
  `provincia_orig_base` varchar(20) DEFAULT NULL,
  `localidad_orig_base` varchar(10) DEFAULT NULL,
  `Cpostal_orig_base` int(10) DEFAULT NULL,
  `res_gestion_orig_base` varchar(10) DEFAULT NULL,
  `observ_orig_base` varchar(500) DEFAULT NULL,
  `FMagenda_orig_base` varchar(20) DEFAULT NULL,
  `lEstado` int(1) NOT NULL DEFAULT '0',
  `ID_Campana` int(2) NOT NULL,
  `llam_estado` int(10) NOT NULL,
  `id_ori_usuario` int(11) NOT NULL,
  `fechaproceso` datetime NOT NULL,
  `pre_flag` int(2) NOT NULL,
  `pre_estado` int(2) NOT NULL,
  PRIMARY KEY (`id_orig_base`),
  KEY `ID_Campana` (`ID_Campana`),
  KEY `id_ori_usuario` (`id_ori_usuario`),
  KEY `lEstado` (`lEstado`),
  KEY `llam_estado` (`llam_estado`),
  KEY `telefono_orig_base` (`telefono_orig_base`),
  KEY `res_gestion_orig_base` (`res_gestion_orig_base`),
  KEY `pre_flag` (`pre_flag`),
  KEY `pre_estado` (`pre_estado`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orig_base_C01`
--

CREATE TABLE IF NOT EXISTS `orig_base_C01` (
  `FECHA_RECEPCION_BBDD` varchar(100) DEFAULT NULL,
  `CALL` varchar(100) DEFAULT NULL,
  `FECHA` varchar(100) DEFAULT NULL,
  `NOMBRE` varchar(100) DEFAULT NULL,
  `APELLIDO` varchar(100) DEFAULT NULL,
  `DNI` varchar(100) DEFAULT NULL,
  `PLAN_COBERTURA` varchar(100) DEFAULT NULL,
  `DIRECCION` varchar(100) DEFAULT NULL,
  `DISTRITO` varchar(100) DEFAULT NULL,
  `PROVINCIA` varchar(100) DEFAULT NULL,
  `DEPARTAMENTO` varchar(100) DEFAULT NULL,
  `ESTADO` varchar(100) DEFAULT NULL,
  `ZONA` varchar(100) DEFAULT NULL,
  `TELEFONO1` varchar(100) DEFAULT NULL,
  `TELEFONO2` varchar(100) DEFAULT NULL,
  `MAIL` varchar(100) DEFAULT NULL,
  `TIPO_ENVIO` varchar(100) DEFAULT NULL,
  `CAMPANA` varchar(100) DEFAULT NULL,
  `COMERCIAL` varchar(100) DEFAULT NULL,
  `COBERTURA` varchar(100) DEFAULT NULL,
  `CANT_AFILIADOS` varchar(100) DEFAULT NULL,
  `FECHA_NACIMIENTO` varchar(100) DEFAULT NULL,
  `PAP` varchar(100) DEFAULT NULL,
  `TIPO_TARJETA` varchar(100) DEFAULT NULL,
  `TELEFONO3` varchar(100) DEFAULT NULL,
  `TELEFONO4` varchar(100) DEFAULT NULL,
  `TELEFONO5` varchar(100) DEFAULT NULL,
  `TELEFONO6` varchar(100) DEFAULT NULL,
  `TELEFONO7` varchar(100) DEFAULT NULL,
  `OBSERVACIONES` varchar(100) DEFAULT NULL,
  `USUARIO` varchar(100) DEFAULT NULL,
  `PRIMA_MENSUAL` varchar(100) DEFAULT NULL,
  `TODO_PRIMA` varchar(100) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cod_cam` int(11) NOT NULL,
  `lote` int(11) NOT NULL,
  `T_INS` datetime NOT NULL,
  `flagDesplegar` int(2) NOT NULL,
  `flag` int(2) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orig_resultA`
--

CREATE TABLE IF NOT EXISTS `orig_resultA` (
  `id_resultA` int(5) NOT NULL AUTO_INCREMENT,
  `id_ori_usuario` int(10) NOT NULL,
  `id_ori_campana` int(10) NOT NULL,
  `id_orig_base` int(10) NOT NULL,
  `fecha` datetime NOT NULL,
  `nombre_orig_resultA` varchar(50) DEFAULT NULL,
  `apellido_orig_resultA` varchar(20) DEFAULT NULL,
  `apoderado_orig_resultA` varchar(20) DEFAULT NULL,
  `docid_orig_resultA` varchar(20) DEFAULT NULL,
  `Ndocid_orig_resultA` varchar(20) DEFAULT NULL,
  `calle_orig_resultA` varchar(20) DEFAULT NULL,
  `Ncalle_orig_resultA` varchar(20) DEFAULT NULL,
  `pisletra_orig_resultA` varchar(20) DEFAULT NULL,
  `localidad_orig_resultA` varchar(10) DEFAULT NULL,
  `provincia_orig_resultA` varchar(20) DEFAULT NULL,
  `Cpostal_orig_resultA` int(10) DEFAULT NULL,
  `perscontac_orig_resultA` varchar(50) DEFAULT NULL,
  `fechanac_orig_resultA` int(10) DEFAULT NULL,
  `telefonoF_orig_resultA` int(10) DEFAULT NULL,
  `telefonoM_orig_resultA` int(10) DEFAULT NULL,
  `email_orig_resultA` varchar(10) DEFAULT NULL,
  `NomBAN_orig_resultA` varchar(20) DEFAULT NULL,
  `titcuenta_orig_resultA` varchar(500) DEFAULT NULL,
  `Ncuenta_orig_resultA` varchar(500) DEFAULT NULL,
  `plan_orig_resultA` varchar(10) DEFAULT NULL,
  `telefR_orig_resultA` varchar(20) DEFAULT NULL,
  `ADSL_orig_resultA` varchar(500) DEFAULT NULL,
  `compañia_orig_resultA` varchar(500) DEFAULT NULL,
  `jaztel_orig_resultA` varchar(500) DEFAULT NULL,
  `direcR_orig_resultA` varchar(500) DEFAULT NULL,
  `direcRinst_orig_resultA` varchar(500) DEFAULT NULL,
  `guias_orig_resultA` varchar(500) DEFAULT NULL,
  `secion_orig_resultA` varchar(500) DEFAULT NULL,
  `hora_orig_resultA` varchar(500) DEFAULT NULL,
  `protabilidad_orig_resultA` varchar(500) DEFAULT NULL,
  `tecnico_orig_resultA` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_resultA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rellamadas`
--

CREATE TABLE IF NOT EXISTS `rellamadas` (
  `id_rellamadas` int(10) NOT NULL AUTO_INCREMENT,
  `tProyecto` char(6) NOT NULL DEFAULT '',
  `tRegistro` int(10) unsigned NOT NULL,
  `tResultado` char(2) NOT NULL,
  `tCodigo` varchar(5) NOT NULL,
  `fFechaR` date NOT NULL,
  `fHoraR` time NOT NULL,
  `fFecha` datetime NOT NULL,
  `tUsuario` char(15) NOT NULL,
  `lEstado` int(10) unsigned NOT NULL,
  `tTelefono` varchar(45) NOT NULL,
  PRIMARY KEY (`id_rellamadas`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipificacion`
--

CREATE TABLE IF NOT EXISTS `tipificacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contacto` int(100) DEFAULT NULL,
  `accion` int(100) DEFAULT NULL,
  `estado` int(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contacto` (`contacto`),
  KEY `accion` (`accion`),
  KEY `estado` (`estado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
