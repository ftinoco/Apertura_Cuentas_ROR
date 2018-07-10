-- phpMyAdmin SQL Dump
-- version 4.6.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 12-09-2016 a las 15:27:15
-- Versión del servidor: 5.6.32
-- Versión de PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `apertura_cuentas`
--
CREATE DATABASE IF NOT EXISTS `apertura_cuentas` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `apertura_cuentas`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accionistas_mayoritarios`
--

CREATE TABLE `accionistas_mayoritarios` (
  `id_am` int(11) NOT NULL,
  `codigo_cliente` varchar(8) NOT NULL,
  `nombre_accionista1` varchar(30) DEFAULT NULL,
  `identificacion1` varchar(20) DEFAULT NULL,
  `tipo_id1` varchar(20) DEFAULT NULL,
  `porcentaje1` varchar(8) DEFAULT NULL,
  `nombre_accionista2` varchar(30) DEFAULT NULL,
  `identificacion2` varchar(20) DEFAULT NULL,
  `tipo_id2` varchar(20) DEFAULT NULL,
  `porcentaje2` varchar(8) DEFAULT NULL,
  `nombre_accionista3` varchar(30) DEFAULT NULL,
  `identificacion3` varchar(20) DEFAULT NULL,
  `tipo_id3` varchar(20) DEFAULT NULL,
  `porcentaje3` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `accionistas_mayoritarios`
--

INSERT INTO `accionistas_mayoritarios` (`id_am`, `codigo_cliente`, `nombre_accionista1`, `identificacion1`, `tipo_id1`, `porcentaje1`, `nombre_accionista2`, `identificacion2`, `tipo_id2`, `porcentaje2`, `nombre_accionista3`, `identificacion3`, `tipo_id3`, `porcentaje3`) VALUES
(1, 'CLJ001', 'Accionista 1', 'Identificacion 1', 'Cedula', '20', 'Accionista 2', 'Identificacion 2', 'Cedula 2', '20', 'Accionista 3', 'Identificacion 3', 'Cedula 3', '20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad_esperada`
--

CREATE TABLE `actividad_esperada` (
  `idae` int(11) NOT NULL,
  `codigo_cliente` varchar(10) NOT NULL,
  `mmp_co_dol` varchar(15) DEFAULT NULL,
  `mmp_ven_dol` varchar(15) DEFAULT NULL,
  `ct_co_dol` varchar(15) DEFAULT NULL,
  `ct_ven_dol` varchar(15) DEFAULT NULL,
  `monto_inicial` varchar(15) DEFAULT NULL,
  `monto_maximo` varchar(15) DEFAULT NULL,
  `moneda` varchar(15) DEFAULT NULL,
  `otros_moneda` varchar(20) DEFAULT NULL,
  `frecuencia` varchar(15) DEFAULT NULL,
  `otros_frecuencia` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `actividad_esperada`
--

INSERT INTO `actividad_esperada` (`idae`, `codigo_cliente`, `mmp_co_dol`, `mmp_ven_dol`, `ct_co_dol`, `ct_ven_dol`, `monto_inicial`, `monto_maximo`, `moneda`, `otros_moneda`, `frecuencia`, `otros_frecuencia`) VALUES
(5, 'CLJ001', '333', '0', '0', '0', '564', '540', 'Otros', 'Otros', 'Otros', ''),
(7, 'CLN002', '2,000', '200', '400', '1,000', '5,000', '8,000', 'Cordobas', '', 'Semestral', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beneficiario_final`
--

CREATE TABLE `beneficiario_final` (
  `idbf` int(11) NOT NULL,
  `codigo_cliente` varchar(10) NOT NULL,
  `propietario` varchar(2) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `tipo` varchar(10) DEFAULT NULL,
  `identificacion` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `beneficiario_final`
--

INSERT INTO `beneficiario_final` (`idbf`, `codigo_cliente`, `propietario`, `nombre`, `tipo`, `identificacion`) VALUES
(2, 'CLN002', 'si', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_cliente`
--

CREATE TABLE `datos_cliente` (
  `id_dp` int(11) NOT NULL,
  `codigo` varchar(10) NOT NULL,
  `nombres_apellidos` varchar(100) NOT NULL,
  `lugar_nacimiento` varchar(50) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `estado_civil` varchar(20) NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `direccion_dom` varchar(150) NOT NULL,
  `departamento` varchar(30) NOT NULL,
  `ciudad` varchar(30) NOT NULL,
  `cod_postal` varchar(10) DEFAULT NULL,
  `nacionalidad` varchar(20) NOT NULL,
  `telefono` varchar(11) DEFAULT NULL,
  `celular` varchar(11) DEFAULT NULL,
  `fax` varchar(11) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `identificacion` varchar(20) NOT NULL,
  `no_registro_id` varchar(20) NOT NULL,
  `no_identificacion` varchar(20) DEFAULT NULL,
  `otros` varchar(50) DEFAULT NULL,
  `profesion` varchar(30) DEFAULT NULL,
  `puesto` varchar(30) DEFAULT NULL,
  `empresa_labora` varchar(50) DEFAULT NULL,
  `direccion_empresa` varchar(100) DEFAULT NULL,
  `tel_empresa` varchar(11) DEFAULT NULL,
  `descripcion_empresa` text,
  `fax_empresa` varchar(11) DEFAULT NULL,
  `cod_post_empresa` varchar(11) DEFAULT NULL,
  `email_empresa` varchar(30) DEFAULT NULL,
  `ingreso_anual` varchar(30) DEFAULT NULL,
  `user_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `datos_cliente`
--

INSERT INTO `datos_cliente` (`id_dp`, `codigo`, `nombres_apellidos`, `lugar_nacimiento`, `fecha_nacimiento`, `estado_civil`, `sexo`, `direccion_dom`, `departamento`, `ciudad`, `cod_postal`, `nacionalidad`, `telefono`, `celular`, `fax`, `email`, `identificacion`, `no_registro_id`, `no_identificacion`, `otros`, `profesion`, `puesto`, `empresa_labora`, `direccion_empresa`, `tel_empresa`, `descripcion_empresa`, `fax_empresa`, `cod_post_empresa`, `email_empresa`, `ingreso_anual`, `user_admin`) VALUES
(2, 'CLN002', 'Keyling Lira', 'Managua', '1992-07-25', 'Casado', 'F', 'Managua', '', 'Managua', '', 'Nicaraguense', '', '', '', '', 'Pasaporte', '481-250792-0002S', '001-0002-0005', '', 'Ingeniera', '', '', '', '', '', '', '', '', 'U$ 1,001 - U$5,000', 1),
(9, 'CLN003', 'Tania Jahzell Betanco sequeira', 'dhgdfgfh', '1994-02-10', 'Soltero', 'F', 'sadrara', '', 'aasdda', 'dsfasdfasd', 'asdfasdfad', '2999-9999', '2222-2222', '3333', '3qdfa@asdfads.com.ni', 'Cedula', '121-1003889-0000Y', NULL, 'adasdadsfds', 'ddsfasdfasdf', 'adsfadsfads', 'asdfasdfasdf', 'asdfasdfad', '5555-5555', 'adsfdf', '34242', '2345435', 'addsfd@dadaf.com', 'Menor de U$ 1,000', 1),
(10, 'CLN0010', 'anastacia somoza', 'dhgdfgfh', '1981-02-24', 'Soltero', 'F', 'asdf', 'asdf', 'asd', 'adadf fdsf', 'adsfadfad', '', '', '', '', 'Cedula', 'asdfasdf', 'asdd', '', 'asdfasdf', '', 'adsfadssg asdf asdf', '', '', '', '', '', '', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_economicos`
--

CREATE TABLE `datos_economicos` (
  `id_date` int(11) NOT NULL,
  `codigo_cliente` varchar(8) NOT NULL,
  `ingresos_anuales` varchar(50) NOT NULL,
  `detalle_actividades` text NOT NULL,
  `ubicacion` varchar(20) NOT NULL,
  `otros_ubicacion` varchar(20) NOT NULL,
  `perfil_operaciones` varchar(50) NOT NULL,
  `proveedor1` varchar(30) NOT NULL,
  `contacto1` varchar(30) NOT NULL,
  `tel1` varchar(11) NOT NULL,
  `proveedor2` varchar(30) NOT NULL,
  `contacto2` varchar(30) NOT NULL,
  `tel2` varchar(11) NOT NULL,
  `proveedor3` varchar(30) NOT NULL,
  `contacto3` varchar(30) NOT NULL,
  `tel3` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `datos_economicos`
--

INSERT INTO `datos_economicos` (`id_date`, `codigo_cliente`, `ingresos_anuales`, `detalle_actividades`, `ubicacion`, `otros_ubicacion`, `perfil_operaciones`, `proveedor1`, `contacto1`, `tel1`, `proveedor2`, `contacto2`, `tel2`, `proveedor3`, `contacto3`, `tel3`) VALUES
(3, 'CLJ001', '1000', 'ninguna', 'Nacional', '', '', 'Proveedor 1', 'Contacto1', 'Telefono1', 'Proveedor 2', 'Contacto2', 'Telefono2', 'Proveedor 3', 'Contacto3', 'Telefono3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_empresa`
--

CREATE TABLE `datos_empresa` (
  `id_de` int(11) NOT NULL,
  `codigo` varchar(10) NOT NULL,
  `razon_social` varchar(15) DEFAULT NULL,
  `nombre_comercial` varchar(30) DEFAULT NULL,
  `ruc` varchar(15) DEFAULT NULL,
  `telefono` varchar(11) DEFAULT NULL,
  `fax` varchar(15) DEFAULT NULL,
  `apartado_postal` varchar(10) DEFAULT NULL,
  `num_empleados` int(11) DEFAULT NULL,
  `web` varchar(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `nacionalidad_empresa` varchar(20) DEFAULT NULL,
  `domicilio` varchar(20) DEFAULT NULL,
  `nombre_filiales` varchar(50) DEFAULT NULL,
  `direccion` varchar(60) DEFAULT NULL,
  `fecha_constitucion` date DEFAULT NULL,
  `fecha_personeria` date DEFAULT NULL,
  `tomo` varchar(20) DEFAULT NULL,
  `folio` varchar(20) DEFAULT NULL,
  `asiento` varchar(20) DEFAULT NULL,
  `datos_registrales` varchar(100) DEFAULT NULL,
  `user_admin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `datos_empresa`
--

INSERT INTO `datos_empresa` (`id_de`, `codigo`, `razon_social`, `nombre_comercial`, `ruc`, `telefono`, `fax`, `apartado_postal`, `num_empleados`, `web`, `email`, `nacionalidad_empresa`, `domicilio`, `nombre_filiales`, `direccion`, `fecha_constitucion`, `fecha_personeria`, `tomo`, `folio`, `asiento`, `datos_registrales`, `user_admin`) VALUES
(7, 'CLJ001', 'nuevavivienda', 'adfdsf', '1234132432432', '1231-1234', '132431243', '1safasdfad', 69, 'www.vivir.com', 'adfasdf@adff.com', 'asdfdfs', 'asdfds', 'asdfads asd fsdf  asdfad', 'sdfasdfads', '1945-09-13', '2016-09-08', '1', '2', '2', 'asfdfdsafdsf', 1),
(8, 'CLJ008', 'Invercasa S.A', 'Invercasa', '123456789', '22282540', '', '', 0, '', '', '', 'Managua, Nicaragua', '', '', '0000-00-00', '2016-08-01', '', '', '', '', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `declaracion`
--

CREATE TABLE `declaracion` (
  `iddec` int(11) NOT NULL,
  `codigo_cliente` varchar(8) NOT NULL,
  `patrimonio` varchar(2) DEFAULT NULL,
  `activos_superiores` varchar(2) DEFAULT NULL,
  `ingreso_bruto` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `declaracion`
--

INSERT INTO `declaracion` (`iddec`, `codigo_cliente`, `patrimonio`, `activos_superiores`, `ingreso_bruto`) VALUES
(2, 'CLN002', 'No', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `designacion_beneficiarios`
--

CREATE TABLE `designacion_beneficiarios` (
  `id_db` int(11) NOT NULL,
  `codigo_cliente` varchar(8) NOT NULL,
  `fecha` date NOT NULL,
  `nombre_cuenta` varchar(50) NOT NULL,
  `nombre_beneficiario_a` varchar(30) DEFAULT NULL,
  `parentesco_a` varchar(15) DEFAULT NULL,
  `porcentaje_benef_a` varchar(15) DEFAULT NULL,
  `identificacion_a` varchar(18) DEFAULT NULL,
  `tipo_id_a` varchar(10) DEFAULT NULL,
  `direccion_a` varchar(50) DEFAULT NULL,
  `correo_a` varchar(35) DEFAULT NULL,
  `telefono_a` varchar(10) DEFAULT NULL,
  `celular_a` varchar(10) DEFAULT NULL,
  `nombre_beneficiario_b` varchar(30) DEFAULT NULL,
  `parentesco_b` varchar(15) DEFAULT NULL,
  `porcentaje_benef_b` varchar(15) DEFAULT NULL,
  `identificacion_b` varchar(18) DEFAULT NULL,
  `tipo_id_b` varchar(10) DEFAULT NULL,
  `direccion_b` varchar(50) DEFAULT NULL,
  `correo_b` varchar(35) DEFAULT NULL,
  `telefono_b` varchar(10) DEFAULT NULL,
  `celular_b` varchar(10) DEFAULT NULL,
  `nombre_beneficiario_c` varchar(30) DEFAULT NULL,
  `parentesco_c` varchar(15) DEFAULT NULL,
  `porcentaje_benef_c` varchar(15) DEFAULT NULL,
  `identificacion_c` varchar(18) DEFAULT NULL,
  `tipo_id_c` varchar(10) DEFAULT NULL,
  `direccion_c` varchar(50) DEFAULT NULL,
  `correo_c` varchar(35) DEFAULT NULL,
  `telefono_c` varchar(11) DEFAULT NULL,
  `celular_c` varchar(11) DEFAULT NULL,
  `nombre_beneficiario_d` varchar(30) DEFAULT NULL,
  `parentesco_d` varchar(15) DEFAULT NULL,
  `porcentaje_benef_d` varchar(15) DEFAULT NULL,
  `identificacion_d` varchar(18) DEFAULT NULL,
  `tipo_id_d` varchar(10) DEFAULT NULL,
  `direccion_d` varchar(50) DEFAULT NULL,
  `correo_d` varchar(35) DEFAULT NULL,
  `telefono_d` varchar(11) DEFAULT NULL,
  `celular_d` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `origen_fondos`
--

CREATE TABLE `origen_fondos` (
  `codigo_cliente` varchar(10) NOT NULL,
  `idof` int(11) NOT NULL,
  `concepto` varchar(50) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `monto` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `origen_fondos`
--

INSERT INTO `origen_fondos` (`codigo_cliente`, `idof`, `concepto`, `descripcion`, `monto`) VALUES
('CLJ001', 5, 'Otros', ' Otros', '0'),
('CLN002', 6, 'Transferencia de Fondos de Activos', '', ''),
('CLN002', 7, 'Herencia', '   ', ' 1,500,000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil_medio`
--

CREATE TABLE `perfil_medio` (
  `idpm` int(11) NOT NULL,
  `descripcionmedio` varchar(100) NOT NULL,
  `codigo_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil_riesgo`
--

CREATE TABLE `perfil_riesgo` (
  `idpr` int(11) NOT NULL,
  `codigo_cliente` varchar(10) NOT NULL,
  `eval_conocimiento` varchar(15) DEFAULT NULL,
  `dip_riesgo` varchar(15) DEFAULT NULL,
  `moneda` varchar(15) DEFAULT NULL,
  `horiz_inversion` varchar(20) DEFAULT NULL,
  `por_invertir` decimal(10,0) DEFAULT NULL,
  `frec_actualizacion` varchar(15) DEFAULT NULL,
  `medios_comunic` varchar(15) DEFAULT NULL,
  `otros_medios` varchar(50) DEFAULT NULL,
  `medio_boletin` varchar(50) DEFAULT NULL,
  `m_revista` varchar(50) DEFAULT NULL,
  `medio_internet` varchar(50) DEFAULT NULL,
  `medio_otros` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `perfil_riesgo`
--

INSERT INTO `perfil_riesgo` (`idpr`, `codigo_cliente`, `eval_conocimiento`, `dip_riesgo`, `moneda`, `horiz_inversion`, `por_invertir`, `frec_actualizacion`, `medios_comunic`, `otros_medios`, `medio_boletin`, `m_revista`, `medio_internet`, `medio_otros`) VALUES
(7, 'CLJ001', 'Limitado', 'Conservador', 'Dolares', 'Tres meses a un año', '0', 'Diaria', 'Periodicos', NULL, 'Boletines', NULL, NULL, NULL),
(9, 'CLN002', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, 'Revistas', NULL, NULL),
(10, 'CLN0010', NULL, NULL, NULL, NULL, '0', NULL, 'Periodicos', NULL, '', '', '', ''),
(11, 'CLN003', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, 'Boletines', 'Revistas', NULL, NULL),
(12, 'CLJ008', NULL, NULL, NULL, NULL, '0', 'Diaria', 'Periodicos', NULL, 'Boletines', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas_expuesta`
--

CREATE TABLE `personas_expuesta` (
  `idpex` int(11) NOT NULL,
  `codigo_cliente` varchar(10) NOT NULL,
  `desemp_cargo` varchar(2) DEFAULT NULL,
  `cargo` varchar(50) DEFAULT NULL,
  `institucion` varchar(80) DEFAULT NULL,
  `pais` varchar(30) DEFAULT NULL,
  `periodo` varchar(50) DEFAULT NULL,
  `salario` varchar(20) DEFAULT NULL,
  `acceso_fondos` varchar(2) DEFAULT NULL,
  `uso_cuenta` text,
  `relacion_funcionario` varchar(2) DEFAULT NULL,
  `tipo_relacion` varchar(20) DEFAULT NULL,
  `tipo_parentesco` varchar(15) DEFAULT NULL,
  `nombre_pep_relacionado` varchar(50) DEFAULT NULL,
  `cargo_funcionario` varchar(30) DEFAULT NULL,
  `nombre_inst_cargo` varchar(30) DEFAULT NULL,
  `periodo_ocup_cargo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `personas_expuesta`
--

INSERT INTO `personas_expuesta` (`idpex`, `codigo_cliente`, `desemp_cargo`, `cargo`, `institucion`, `pais`, `periodo`, `salario`, `acceso_fondos`, `uso_cuenta`, `relacion_funcionario`, `tipo_relacion`, `tipo_parentesco`, `nombre_pep_relacionado`, `cargo_funcionario`, `nombre_inst_cargo`, `periodo_ocup_cargo`) VALUES
(2, 'CLN002', NULL, '', '', '', '', '0', NULL, '', NULL, NULL, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preferencia_envio`
--

CREATE TABLE `preferencia_envio` (
  `idpe` int(11) NOT NULL,
  `codigo_cliente` varchar(10) NOT NULL,
  `medio` varchar(15) DEFAULT NULL,
  `direccion` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `preferencia_envio`
--

INSERT INTO `preferencia_envio` (`idpe`, `codigo_cliente`, `medio`, `direccion`) VALUES
(2, 'CLN002', 'Electronico', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `referencias`
--

CREATE TABLE `referencias` (
  `codigo_cliente` varchar(10) NOT NULL,
  `idref` int(11) NOT NULL,
  `nomb_empresa` varchar(50) DEFAULT NULL,
  `telef_empresa` varchar(11) DEFAULT NULL,
  `dir_empresa` varchar(100) DEFAULT NULL,
  `persona_contacto` varchar(50) DEFAULT NULL,
  `anios_en_empresa` varchar(11) DEFAULT NULL,
  `nomb_ref_per` varchar(50) DEFAULT NULL,
  `tipo_id_ref_per` varchar(20) DEFAULT NULL,
  `no_id_ref_per` varchar(50) DEFAULT NULL,
  `domicilio_ref_per` varchar(50) DEFAULT NULL,
  `tel_dom_ref_per` varchar(11) DEFAULT NULL,
  `cel_ref_per` varchar(11) DEFAULT NULL,
  `lug_trab_ref_per` varchar(30) DEFAULT NULL,
  `tel_trab_ref_per` varchar(11) DEFAULT NULL,
  `anio_conoce_ref` varchar(8) DEFAULT NULL,
  `nomb_banco` varchar(50) DEFAULT NULL,
  `tipo_servicio` varchar(30) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `num_cuenta` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `referencias`
--

INSERT INTO `referencias` (`codigo_cliente`, `idref`, `nomb_empresa`, `telef_empresa`, `dir_empresa`, `persona_contacto`, `anios_en_empresa`, `nomb_ref_per`, `tipo_id_ref_per`, `no_id_ref_per`, `domicilio_ref_per`, `tel_dom_ref_per`, `cel_ref_per`, `lug_trab_ref_per`, `tel_trab_ref_per`, `anio_conoce_ref`, `nomb_banco`, `tipo_servicio`, `fecha`, `num_cuenta`) VALUES
('CLJ001', 6, 'Digitech', '27323241', 'Invercasa', '', '6', '', '', '', '', '', '', '', '', '', '', '', '2016-07-31', ''),
('CLN002', 8, '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '2010-12-01', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `safy_servicios_req`
--

CREATE TABLE `safy_servicios_req` (
  `id_sr` int(11) NOT NULL,
  `codigo_cliente` varchar(10) NOT NULL,
  `descripcion` varchar(70) DEFAULT NULL,
  `detalle` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `safy_servicios_req`
--

INSERT INTO `safy_servicios_req` (`id_sr`, `codigo_cliente`, `descripcion`, `detalle`) VALUES
(5, 'CLJ001', 'Compra de Participaciones Fondos Inmobilario', NULL),
(6, 'CLN002', 'Compra de Participaciones Fondos Financieros', ''),
(7, 'CLN003', 'Compra de Participaciones Fondos Financieros', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios_requeridos`
--

CREATE TABLE `servicios_requeridos` (
  `idsr` int(11) NOT NULL,
  `codigo_cliente` varchar(10) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `detalle` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `servicios_requeridos`
--

INSERT INTO `servicios_requeridos` (`idsr`, `codigo_cliente`, `descripcion`, `detalle`) VALUES
(7, 'CLJ001', 'Mercado Privado entre Particulares (MPP)', NULL),
(8, 'CLN002', 'Compra / Venta de Valores', ''),
(9, 'CLN002', 'Mercado Privado entre Particulares (MPP)', ''),
(10, 'CLN002', 'Custodia de Valores', ''),
(11, 'CLN003', 'Mercado Privado entre Particulares (MPP)', ''),
(12, 'CLN003', 'Compra / Venta de Valores en el Extranjero', ''),
(13, 'CLN003', 'Reportos', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_datos`
--

CREATE TABLE `user_datos` (
  `SlpId` int(11) NOT NULL,
  `SlpName` varchar(50) NOT NULL,
  `SlpPassword` varchar(60) NOT NULL,
  `activo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `user_datos`
--

INSERT INTO `user_datos` (`SlpId`, `SlpName`, `SlpPassword`, `activo`) VALUES
(1, 'Keyling', 'd8ea7326e6ec5916accd6e0c9d264c63', 1),
(3, 'JParrales', '0c2be890383639cb7143c7c1a8274e52', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_info`
--

CREATE TABLE `user_info` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `codigo_cliente` varchar(8) NOT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `fecha_modificacion` date NOT NULL,
  `tipo_cliente` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `user_info`
--

INSERT INTO `user_info` (`id`, `id_user`, `codigo_cliente`, `fecha_creacion`, `fecha_modificacion`, `tipo_cliente`) VALUES
(7, 1, 'CLJ001', '2016-07-27', '2016-09-08', 'Persona Juridica'),
(9, 3, 'CLN002', '2016-08-19', '2016-09-02', 'Persona Natural'),
(10, 3, 'CLJ008', '2016-08-19', '2016-08-19', 'Persona Juridica'),
(11, 1, 'CLN003', '2016-09-02', '2016-09-02', 'Persona Natural'),
(12, 1, 'CLN003', '2016-09-02', '2016-09-02', 'Persona Natural'),
(13, 1, 'CLN003', '2016-09-02', '2016-09-02', 'Persona Natural'),
(14, 1, 'CLN003', '2016-09-02', '2016-09-02', 'Persona Natural'),
(15, 1, 'CLN003', '2016-09-02', '2016-09-02', 'Persona Natural'),
(16, 1, 'CLN003', '2016-09-02', '2016-09-02', 'Persona Natural'),
(17, 1, 'CLN003', '2016-09-02', '2016-09-02', 'Persona Natural'),
(18, 1, 'CLN0010', '2016-09-02', '2016-09-07', 'Persona Natural');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accionistas_mayoritarios`
--
ALTER TABLE `accionistas_mayoritarios`
  ADD PRIMARY KEY (`id_am`),
  ADD KEY `accionistas_mayoritarios_ibfk_1` (`codigo_cliente`);

--
-- Indices de la tabla `actividad_esperada`
--
ALTER TABLE `actividad_esperada`
  ADD PRIMARY KEY (`idae`),
  ADD KEY `actividad_esperada_ibfk_2` (`codigo_cliente`);

--
-- Indices de la tabla `beneficiario_final`
--
ALTER TABLE `beneficiario_final`
  ADD PRIMARY KEY (`idbf`),
  ADD KEY `beneficiario_final_ibfk_1` (`codigo_cliente`);

--
-- Indices de la tabla `datos_cliente`
--
ALTER TABLE `datos_cliente`
  ADD PRIMARY KEY (`id_dp`),
  ADD UNIQUE KEY `codigo` (`codigo`),
  ADD UNIQUE KEY `no_registro_id` (`no_registro_id`),
  ADD UNIQUE KEY `no_identificacion` (`no_identificacion`),
  ADD UNIQUE KEY `empresa_labora_2` (`empresa_labora`),
  ADD UNIQUE KEY `empresa_labora_3` (`empresa_labora`);

--
-- Indices de la tabla `datos_economicos`
--
ALTER TABLE `datos_economicos`
  ADD PRIMARY KEY (`id_date`),
  ADD KEY `datos_economicos_ibfk_1` (`codigo_cliente`);

--
-- Indices de la tabla `datos_empresa`
--
ALTER TABLE `datos_empresa`
  ADD PRIMARY KEY (`id_de`),
  ADD UNIQUE KEY `codigo` (`codigo`);

--
-- Indices de la tabla `declaracion`
--
ALTER TABLE `declaracion`
  ADD PRIMARY KEY (`iddec`),
  ADD KEY `declaracion_ibfk_1` (`codigo_cliente`);

--
-- Indices de la tabla `designacion_beneficiarios`
--
ALTER TABLE `designacion_beneficiarios`
  ADD PRIMARY KEY (`id_db`),
  ADD KEY `designacion_beneficiarios_ibfk_1` (`codigo_cliente`);

--
-- Indices de la tabla `origen_fondos`
--
ALTER TABLE `origen_fondos`
  ADD PRIMARY KEY (`idof`),
  ADD KEY `origen_fondos_ibfk_2` (`codigo_cliente`);

--
-- Indices de la tabla `perfil_medio`
--
ALTER TABLE `perfil_medio`
  ADD PRIMARY KEY (`idpm`);

--
-- Indices de la tabla `perfil_riesgo`
--
ALTER TABLE `perfil_riesgo`
  ADD PRIMARY KEY (`idpr`),
  ADD KEY `perfil_riesgo_ibfk_2` (`codigo_cliente`);

--
-- Indices de la tabla `personas_expuesta`
--
ALTER TABLE `personas_expuesta`
  ADD PRIMARY KEY (`idpex`),
  ADD KEY `personas_expuesta_ibfk_1` (`codigo_cliente`);

--
-- Indices de la tabla `preferencia_envio`
--
ALTER TABLE `preferencia_envio`
  ADD PRIMARY KEY (`idpe`),
  ADD KEY `preferencia_envio_ibfk_1` (`codigo_cliente`);

--
-- Indices de la tabla `referencias`
--
ALTER TABLE `referencias`
  ADD PRIMARY KEY (`idref`),
  ADD KEY `referencias_ibfk_2` (`codigo_cliente`);

--
-- Indices de la tabla `safy_servicios_req`
--
ALTER TABLE `safy_servicios_req`
  ADD PRIMARY KEY (`id_sr`),
  ADD KEY `safy_servicios_req_ibfk_2` (`codigo_cliente`);

--
-- Indices de la tabla `servicios_requeridos`
--
ALTER TABLE `servicios_requeridos`
  ADD PRIMARY KEY (`idsr`),
  ADD KEY `servicios_requeridos_ibfk_2` (`codigo_cliente`);

--
-- Indices de la tabla `user_datos`
--
ALTER TABLE `user_datos`
  ADD PRIMARY KEY (`SlpId`);

--
-- Indices de la tabla `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_info_ibfk_1` (`codigo_cliente`),
  ADD KEY `user_info_ibfk_2` (`id_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `accionistas_mayoritarios`
--
ALTER TABLE `accionistas_mayoritarios`
  MODIFY `id_am` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `actividad_esperada`
--
ALTER TABLE `actividad_esperada`
  MODIFY `idae` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `beneficiario_final`
--
ALTER TABLE `beneficiario_final`
  MODIFY `idbf` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `datos_cliente`
--
ALTER TABLE `datos_cliente`
  MODIFY `id_dp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `datos_economicos`
--
ALTER TABLE `datos_economicos`
  MODIFY `id_date` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `datos_empresa`
--
ALTER TABLE `datos_empresa`
  MODIFY `id_de` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `declaracion`
--
ALTER TABLE `declaracion`
  MODIFY `iddec` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `designacion_beneficiarios`
--
ALTER TABLE `designacion_beneficiarios`
  MODIFY `id_db` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `origen_fondos`
--
ALTER TABLE `origen_fondos`
  MODIFY `idof` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `perfil_medio`
--
ALTER TABLE `perfil_medio`
  MODIFY `idpm` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `perfil_riesgo`
--
ALTER TABLE `perfil_riesgo`
  MODIFY `idpr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `personas_expuesta`
--
ALTER TABLE `personas_expuesta`
  MODIFY `idpex` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `preferencia_envio`
--
ALTER TABLE `preferencia_envio`
  MODIFY `idpe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `referencias`
--
ALTER TABLE `referencias`
  MODIFY `idref` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `safy_servicios_req`
--
ALTER TABLE `safy_servicios_req`
  MODIFY `id_sr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `servicios_requeridos`
--
ALTER TABLE `servicios_requeridos`
  MODIFY `idsr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `user_datos`
--
ALTER TABLE `user_datos`
  MODIFY `SlpId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `user_info`
--
ALTER TABLE `user_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `accionistas_mayoritarios`
--
ALTER TABLE `accionistas_mayoritarios`
  ADD CONSTRAINT `accionistas_mayoritarios_ibfk_1` FOREIGN KEY (`codigo_cliente`) REFERENCES `datos_empresa` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `beneficiario_final`
--
ALTER TABLE `beneficiario_final`
  ADD CONSTRAINT `beneficiario_final_ibfk_1` FOREIGN KEY (`codigo_cliente`) REFERENCES `datos_cliente` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `datos_economicos`
--
ALTER TABLE `datos_economicos`
  ADD CONSTRAINT `datos_economicos_ibfk_1` FOREIGN KEY (`codigo_cliente`) REFERENCES `datos_empresa` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `declaracion`
--
ALTER TABLE `declaracion`
  ADD CONSTRAINT `declaracion_ibfk_1` FOREIGN KEY (`codigo_cliente`) REFERENCES `datos_cliente` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `designacion_beneficiarios`
--
ALTER TABLE `designacion_beneficiarios`
  ADD CONSTRAINT `designacion_beneficiarios_ibfk_1` FOREIGN KEY (`codigo_cliente`) REFERENCES `datos_cliente` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `personas_expuesta`
--
ALTER TABLE `personas_expuesta`
  ADD CONSTRAINT `personas_expuesta_ibfk_1` FOREIGN KEY (`codigo_cliente`) REFERENCES `datos_cliente` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `preferencia_envio`
--
ALTER TABLE `preferencia_envio`
  ADD CONSTRAINT `preferencia_envio_ibfk_1` FOREIGN KEY (`codigo_cliente`) REFERENCES `datos_cliente` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
