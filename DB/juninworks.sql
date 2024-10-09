-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-10-2024 a las 05:42:11
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
-- Base de datos: `juninworks`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `certificaciones`
--

CREATE TABLE `certificaciones` (
  `certificacion_id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `habilidad_id` int(11) DEFAULT NULL,
  `certificacion_referencia` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chat`
--

CREATE TABLE `chat` (
  `chat_id` int(11) NOT NULL,
  `usuario1_id` int(11) NOT NULL,
  `usuario2_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habilidades`
--

CREATE TABLE `habilidades` (
  `habilidad_id` int(11) NOT NULL,
  `habilidad_nombre` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habilidadesusuario`
--

CREATE TABLE `habilidadesusuario` (
  `usuario_id` int(11) NOT NULL,
  `habilidad_id` int(11) NOT NULL,
  `nivel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `intereses`
--

CREATE TABLE `intereses` (
  `interes_id` int(11) NOT NULL,
  `interes_nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `intereses_usuario`
--

CREATE TABLE `intereses_usuario` (
  `usuario_id` int(11) NOT NULL,
  `interes_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes`
--

CREATE TABLE `mensajes` (
  `mensaje_id` int(11) NOT NULL,
  `chat_id` int(11) NOT NULL,
  `mensaje` text NOT NULL,
  `fecha_envio` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivelesexperiencia`
--

CREATE TABLE `nivelesexperiencia` (
  `nivel_id` int(11) NOT NULL,
  `nivel_nombre` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rangos_usuario`
--

CREATE TABLE `rangos_usuario` (
  `rango_id` int(11) NOT NULL,
  `rango_nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario_id` int(11) NOT NULL,
  `usuario_nombre` varchar(250) NOT NULL,
  `usuario_apellido` varchar(250) NOT NULL,
  `usuario_fotoPerfil` varchar(500) NOT NULL,
  `usuario_ubicacion` varchar(250) NOT NULL,
  `usuario_biografia` varchar(200) NOT NULL,
  `usuario_rango` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `certificaciones`
--
ALTER TABLE `certificaciones`
  ADD PRIMARY KEY (`certificacion_id`),
  ADD KEY `usuario_id` (`usuario_id`,`habilidad_id`),
  ADD KEY `habilidad` (`habilidad_id`);

--
-- Indices de la tabla `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`chat_id`),
  ADD KEY `usuario1_id` (`usuario1_id`,`usuario2_id`),
  ADD KEY `user2` (`usuario2_id`);

--
-- Indices de la tabla `habilidades`
--
ALTER TABLE `habilidades`
  ADD PRIMARY KEY (`habilidad_id`);

--
-- Indices de la tabla `habilidadesusuario`
--
ALTER TABLE `habilidadesusuario`
  ADD KEY `usuario_id` (`usuario_id`,`nivel_id`),
  ADD KEY `usuario_id_2` (`usuario_id`,`nivel_id`),
  ADD KEY `usuario_id_3` (`usuario_id`,`nivel_id`);

--
-- Indices de la tabla `intereses`
--
ALTER TABLE `intereses`
  ADD PRIMARY KEY (`interes_id`);

--
-- Indices de la tabla `intereses_usuario`
--
ALTER TABLE `intereses_usuario`
  ADD KEY `usuario_id` (`usuario_id`,`interes_id`),
  ADD KEY `usuario_id_2` (`usuario_id`,`interes_id`),
  ADD KEY `interes` (`interes_id`);

--
-- Indices de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD PRIMARY KEY (`mensaje_id`),
  ADD KEY `chat_id` (`chat_id`);

--
-- Indices de la tabla `nivelesexperiencia`
--
ALTER TABLE `nivelesexperiencia`
  ADD PRIMARY KEY (`nivel_id`);

--
-- Indices de la tabla `rangos_usuario`
--
ALTER TABLE `rangos_usuario`
  ADD PRIMARY KEY (`rango_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario_id`),
  ADD KEY `usuario_rango` (`usuario_rango`),
  ADD KEY `usuario_rango_2` (`usuario_rango`),
  ADD KEY `usuario_rango_3` (`usuario_rango`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `certificaciones`
--
ALTER TABLE `certificaciones`
  MODIFY `certificacion_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `chat`
--
ALTER TABLE `chat`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `habilidades`
--
ALTER TABLE `habilidades`
  MODIFY `habilidad_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `intereses`
--
ALTER TABLE `intereses`
  MODIFY `interes_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  MODIFY `mensaje_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `nivelesexperiencia`
--
ALTER TABLE `nivelesexperiencia`
  MODIFY `nivel_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rangos_usuario`
--
ALTER TABLE `rangos_usuario`
  MODIFY `rango_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `certificaciones`
--
ALTER TABLE `certificaciones`
  ADD CONSTRAINT `habilidad` FOREIGN KEY (`habilidad_id`) REFERENCES `habilidades` (`habilidad_id`),
  ADD CONSTRAINT `usuarioo` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`);

--
-- Filtros para la tabla `chat`
--
ALTER TABLE `chat`
  ADD CONSTRAINT `user1` FOREIGN KEY (`usuario1_id`) REFERENCES `usuarios` (`usuario_id`),
  ADD CONSTRAINT `user2` FOREIGN KEY (`usuario2_id`) REFERENCES `usuarios` (`usuario_id`);

--
-- Filtros para la tabla `habilidadesusuario`
--
ALTER TABLE `habilidadesusuario`
  ADD CONSTRAINT `user` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`),
  ADD CONSTRAINT `usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`);

--
-- Filtros para la tabla `intereses_usuario`
--
ALTER TABLE `intereses_usuario`
  ADD CONSTRAINT `interes` FOREIGN KEY (`interes_id`) REFERENCES `intereses` (`interes_id`),
  ADD CONSTRAINT `usuario1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`);

--
-- Filtros para la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD CONSTRAINT `mensajes_ibfk_1` FOREIGN KEY (`chat_id`) REFERENCES `chat` (`chat_id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `rangos` FOREIGN KEY (`usuario_rango`) REFERENCES `rangos_usuario` (`rango_id`);

DELIMITER $$
--
-- Eventos
--
CREATE DEFINER=`root`@`localhost` EVENT `eliminar_mensajes_viejos` ON SCHEDULE EVERY 1 HOUR STARTS '2024-10-03 11:37:15' ON COMPLETION NOT PRESERVE ENABLE DO DELETE FROM mensajes WHERE fecha_envio < NOW() - INTERVAL 12 HOUR$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
