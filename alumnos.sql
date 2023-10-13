-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-10-2023 a las 03:44:25
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `clases`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `ID` int(15) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `Celular` varchar(10) NOT NULL,
  `Estado` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `Ciudad` varchar(25) NOT NULL,
  `Genero` varchar(2) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`ID`, `Nombre`, `Apellido`, `Celular`, `Estado`, `email`, `Ciudad`, `Genero`, `password`) VALUES
(1, 'Ana', 'Martinez', '555423456', 'California', 'ana.martinez@gmail.com', 'Los Angeles', 'F', '123456'),
(2, 'Carlos ', 'Lopez', '555789012', 'Texas', 'carlos.lopez@gmail.com', 'Houston', 'M', '123456'),
(3, 'Laura ', 'Rodriguez', '555345678', 'Florida', 'laura.rodriguez@gmail.com', 'Miami', 'M', '123456'),
(4, 'Javier', 'Sanchez', '555901234', 'Nueva York', 'javier.sanchez@gmail.com', 'Nueva York', 'M', '123456'),
(5, 'Maria', 'Perez', '555564890', 'Quintana Roo', 'maria.perez@gmail.com', 'Cancun', 'F', '123456'),
(6, 'Sofia ', 'Perez', '555234567', 'Illinois', 'sofia.gonzalez@gmail.com', 'Chicago', 'F', '123456'),
(7, 'Luis', 'Torres', '555871543', 'Quintana Roo', 'luis.torres@gmail.com', 'Cancun', 'M', '123456'),
(8, 'Diego ', 'Ruiz', '555432109', 'Colorado', 'luis.torres@gmail.com', 'Denver', 'M', '123456'),
(9, 'Carmen ', 'Garcia', '555098765', 'Quintana Roo', 'carmen.garcia@gmail.com', 'Cancun', 'F', '123456'),
(10, 'Alejandro ', 'Mendazo', '555654321', 'Oregon', 'alejandro.mendoza@gmail.com', 'Portland', 'M', '123456');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `password` (`password`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
