-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-09-2025 a las 18:18:48
-- Versión del servidor: 8.4.3
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `consultorio_cba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas`
--

CREATE TABLE `citas` (
  `id_cita` int NOT NULL,
  `fecha` date NOT NULL,
  `hora` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `documento_paciente` int NOT NULL,
  `documento_medico` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `citas`
--

INSERT INTO `citas` (`id_cita`, `fecha`, `hora`, `descripcion`, `documento_paciente`, `documento_medico`) VALUES
(0, '2022-10-29', '10:00 am', 'El Paciente indica que siente un fuerte dolor en la muñeca', 901, 10009),
(1, '2022-10-20', '1:00 pm', 'El Paciente indica que siente un fuerte dolor en el pecho', 12, 10000),
(2, '2022-10-21', '2:00 pm', 'El Paciente indica que siente un fuerte dolor en la pierna', 123, 10001),
(3, '2022-10-22', '3:00 pm', 'El Paciente indica que siente un fuerte dolor en la rodilla', 234, 10002),
(4, '2022-10-23', '4:00 pm', 'El Paciente indica que siente un fuerte dolor en el abdomen', 345, 10003),
(5, '2022-10-24', '5:00 pm', 'El Paciente indica que siente un fuerte dolor en el paladar', 456, 10004),
(6, '2022-10-25', '6:00 am', 'El Paciente indica que siente un fuerte dolor en el ojo', 567, 10005),
(7, '2022-10-26', '7:00 am', 'El Paciente indica que siente un fuerte dolor en el rostro', 678, 10006),
(8, '2022-10-27', '8:00 am', 'El Paciente indica que siente un fuerte dolor en el labio', 789, 10007),
(9, '2022-10-28', '9:00 am', 'El Paciente indica que siente un fuerte dolor en la barriga', 890, 10008);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicos`
--

CREATE TABLE `medicos` (
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `especialidad` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `documento` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `medicos`
--

INSERT INTO `medicos` (`nombre`, `apellido`, `direccion`, `especialidad`, `telefono`, `documento`) VALUES
('Lisseth', 'Durán', 'Mosquera', 'Obstetricia', '3000000000', 10000),
('Jeonardo', 'Perche', 'Mosquera', 'Odontología', '3111111111', 10001),
('Gerardo', 'Mejias', 'Bosa', 'Ginecología', '3222222222', 10002),
('Amelia', 'Terán', 'Bosa', 'Dermatología', '3333333333', 10003),
('Andres', 'Vela', 'Madrid', 'Sexualidad', '3444444444', 10004),
('Sebastian', 'Suesca', 'Mosquera', 'Electroencefalografia', '3555555555', 10005),
('Nikol', 'Losada', 'Madrid', 'Prenatal', '3666666666', 10006),
('Carlos', 'Hernandez', 'Cartagena', 'Cirujano', '3777777777', 10007),
('Stephanie', 'Yepez', 'Barranquilla', 'Cirujano', '3888888888', 10008),
('Esteban', 'Parra', 'Bogotá', 'Rehabilitación', '3999999999', 10009);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE `pacientes` (
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `documento` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`nombre`, `apellido`, `direccion`, `telefono`, `documento`) VALUES
('Mariana', 'Valderrama', 'Bogotá', '3456', 12),
('Juan', 'Perez', 'Mosquera', '1234', 123),
('Camilo', 'Hernandez', 'Cartagena', '2109', 234),
('Sara', 'Sanchez', 'Maracaibo', '7890', 345),
('Pedro', 'Sanchez', 'Madrid', '5678', 456),
('Nicolás', 'Duarte', 'Facatativa', '8765', 567),
('Manuel', 'Santos', 'Zulia', '0987', 678),
('Jose', 'Pedraza', 'Funza', '9012', 789),
('Wilson', 'Guarín', 'Tunja', '4321', 890),
('Pepe', 'Pepito', 'San Francisco', '6543', 901),
('Pepito', 'Perez', 'cualquier cosa', '1234', 1234656);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `citas`
--
ALTER TABLE `citas`
  ADD PRIMARY KEY (`id_cita`),
  ADD KEY `FK medico` (`documento_medico`),
  ADD KEY `FK paciente` (`documento_paciente`);

--
-- Indices de la tabla `medicos`
--
ALTER TABLE `medicos`
  ADD PRIMARY KEY (`documento`);

--
-- Indices de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`documento`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `citas`
--
ALTER TABLE `citas`
  ADD CONSTRAINT `FK medico` FOREIGN KEY (`documento_medico`) REFERENCES `medicos` (`documento`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK paciente` FOREIGN KEY (`documento_paciente`) REFERENCES `pacientes` (`documento`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
