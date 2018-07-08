-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-07-2018 a las 19:17:42
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `demo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `id` int(11) NOT NULL,
  `nombres` varchar(100) DEFAULT NULL,
  `cargo` varchar(100) DEFAULT NULL,
  `sucursal` varchar(100) DEFAULT NULL,
  `edad` varchar(20) DEFAULT NULL,
  `fecha_inicio` varchar(20) DEFAULT NULL,
  `salario` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`id`, `nombres`, `cargo`, `sucursal`, `edad`, `fecha_inicio`, `salario`) VALUES
(1, 'Airi Satou', 'Accountant', '7', '33', '28/11/2008', '$162,700'),
(2, 'Garrett Winters', 'Accountant', '7', '63', '25/07/2011', '$170,750'),
(3, 'Angelica Ramos', 'Chief Executive Officer (CEO)', '2', '47', '09/10/2009', '$1,200,000'),
(4, 'Paul Byrd', 'Chief Financial Officer (CFO)', '3', '64', '09/06/2010', '$725,000'),
(5, 'Yuri Berry', 'Chief Marketing Officer (CMO)', '3', '40', '25/06/2009', '$675,000'),
(6, 'Fiona Green', 'Chief Operating Officer (COO)', '4', '48', '11/03/2010', '$850,000'),
(7, 'Donna Snider', 'Customer Support', '3', '27', '25/01/2011', '$112,000'),
(8, 'Serge Baldwin', 'Data Coordinator', '6', '64', '09/04/2012', '$138,575'),
(9, 'Gavin Joyce', 'Developer', '1', '42', '22/12/2010', '$92,575'),
(10, 'Jonas Alexander', 'Developer', '4', '30', '14/07/2010', '$86,500'),
(11, 'Suki Burks', 'Developer', '2', '53', '22/10/2009', '$114,500'),
(12, 'Thor Walton', 'Developer', '3', '61', '11/08/2013', '$98,540'),
(13, 'Jenette Caldwell', 'Development Lead', '3', '30', '03/09/2011', '$345,000'),
(14, 'Jackson Bradshaw', 'Director', '3', '65', '26/09/2008', '$645,750'),
(15, 'Vivian Harrell', 'Financial Controller', '4', '62', '14/02/2009', '$452,500'),
(16, 'Brielle Williamson', 'Integration Specialist', '3', '61', '02/12/2012', '$372,000'),
(17, 'Michelle House', 'Integration Specialist', '5', '37', '02/06/2011', '$95,400'),
(18, 'Rhona Davidson', 'Integration Specialist', '7', '55', '14/10/2010', '$327,900'),
(19, 'Colleen Hurst', 'Javascript Developer', '4', '39', '15/09/2009', '$205,500'),
(20, 'Michael Bruce', 'Javascript Developer', '6', '29', '27/06/2011', '$183,000'),
(21, 'Jennifer Acosta', 'Junior Javascript Developer', '1', '43', '01/02/2013', '$75,650'),
(22, 'Ashton Cox', 'Junior Technical Author', '4', '66', '12/01/2009', '$86,000'),
(23, 'Michael Silva', 'Marketing Designer', '2', '66', '27/11/2012', '$198,500'),
(24, 'Unity Butler', 'Marketing Designer', '4', '47', '09/12/2009', '$85,675'),
(25, 'Howard Hatfield', 'Office Manager', '4', '51', '16/12/2008', '$164,500'),
(26, 'Jena Gaines', 'Office Manager', '2', '30', '19/12/2008', '$90,560'),
(27, 'Timothy Mooney', 'Office Manager', '2', '37', '11/12/2008', '$136,200'),
(28, 'Dai Rios', 'Personnel Lead', '1', '35', '26/09/2012', '$217,500'),
(29, 'Martena Mccray', 'Post-Sales support', '1', '46', '09/03/2011', '$324,050'),
(30, 'Caesar Vance', 'Pre-Sales Support', '3', '21', '12/12/2011', '$106,450'),
(31, 'Charde Marshall', 'Regional Director', '4', '36', '16/10/2008', '$470,600'),
(32, 'Hermione Butler', 'Regional Director', '2', '47', '21/03/2011', '$356,250'),
(33, 'Jennifer Chang', 'Regional Director', '6', '28', '14/11/2010', '$357,650'),
(34, 'Shad Decker', 'Regional Director', '1', '51', '13/11/2008', '$183,000'),
(35, 'Tatyana Fitzpatrick', 'Regional Director', '2', '19', '17/03/2010', '$385,750'),
(36, 'Shou Itou', 'Regional Marketing', '7', '20', '14/08/2011', '$163,000'),
(37, 'Cara Stevens', 'Sales Assistant', '3', '46', '06/12/2011', '$145,600'),
(38, 'Doris Wilder', 'Sales Assistant', '5', '23', '20/09/2010', '$85,600'),
(39, 'Herrod Chandler', 'Sales Assistant', '4', '59', '06/08/2012', '$137,500'),
(40, 'Hope Fuentes', 'Secretary', '4', '41', '12/02/2010', '$109,850'),
(41, 'Cedric Kelly', 'Senior Javascript Developer', '1', '22', '29/03/2012', '$433,060'),
(42, 'Haley Kennedy', 'Senior Marketing Designer', '2', '43', '18/12/2012', '$313,500'),
(43, 'Bradley Greer', 'Software Engineer', '2', '41', '13/10/2012', '$132,000'),
(44, 'Brenden Wagner', 'Software Engineer', '4', '28', '07/06/2011', '$206,850'),
(45, 'Bruno Nash', 'Software Engineer', '2', '38', '03/05/2011', '$163,500'),
(46, 'Sonya Frost', 'Software Engineer', '1', '23', '13/12/2008', '$103,600'),
(47, 'Zenaida Frank', 'Software Engineer', '3', '63', '04/01/2010', '$125,250'),
(48, 'Zorita Serrano', 'Software Engineer', '4', '56', '01/06/2012', '$115,000'),
(49, 'Finn Camacho', 'Support Engineer', '4', '47', '07/07/2009', '$87,500'),
(50, 'Olivia Liang', 'Support Engineer', '6', '64', '03/02/2011', '$234,500'),
(51, 'Sakura Yamamoto', 'Support Engineer', '7', '37', '19/08/2009', '$139,575'),
(52, 'Quinn Flynn', 'Support Lead', '1', '22', '03/03/2013', '$342,000'),
(53, 'Tiger Nixon', 'System Architect', '1', '61', '25/04/2011', '$320,800'),
(54, 'Gloria Little', 'Systems Administrator', '3', '59', '10/04/2009', '$237,500'),
(55, 'Lael Greer', 'Systems Administrator', '2', '21', '27/02/2009', '$103,500'),
(56, 'Gavin Cortez', 'Team Leader', '4', '22', '26/10/2008', '$235,500'),
(57, 'Prescott Bartlett', 'Technical Author', '2', '27', '07/05/2011', '$145,000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `id` int(11) NOT NULL,
  `id_empleado` int(11) DEFAULT NULL,
  `monto` decimal(15,6) DEFAULT NULL,
  `fecha` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pago`
--

INSERT INTO `pago` (`id`, `id_empleado`, `monto`, `fecha`) VALUES
(1, 1, '2000.000000', '2018-01'),
(2, 1, '2000.000000', '2018-02'),
(3, 1, '2000.000000', '2018-03'),
(4, 1, '2000.000000', '2018-04'),
(5, 1, '2000.000000', '2018-05'),
(6, 1, '2000.000000', '2018-06'),
(7, 1, '2000.000000', '2018-07'),
(8, 2, '3000.000000', '2018-01'),
(9, 2, '2000.000000', '2018-02'),
(10, 2, '4000.000000', '2018-03'),
(11, 2, '2000.000000', '2018-04'),
(12, 2, '4000.000000', '2018-05'),
(13, 2, '2000.000000', '2018-06'),
(14, 2, '8000.000000', '2018-07'),
(15, 57, '3000.000000', '2018-01'),
(16, 57, '2000.000000', '2018-02'),
(17, 57, '4000.000000', '2018-03'),
(18, 57, '2000.000000', '2018-04'),
(19, 57, '4000.000000', '2018-05'),
(20, 57, '2000.000000', '2018-06'),
(21, 57, '8000.000000', '2018-07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

CREATE TABLE `sucursal` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sucursal`
--

INSERT INTO `sucursal` (`id`, `nombre`) VALUES
(1, 'Edinburgh'),
(2, 'London'),
(3, 'New York'),
(4, 'San Francisco'),
(5, 'Sidney'),
(6, 'Singapore'),
(7, 'Tokyo'),
(8, 'Lima');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de la tabla `pago`
--
ALTER TABLE `pago`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
