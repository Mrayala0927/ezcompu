-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 02-07-2021 a las 11:55:09
-- Versión del servidor: 5.6.51-cll-lve
-- Versión de PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `1pos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `fecha`) VALUES
(1, 'Servicios', '2021-06-01 14:26:22'),
(2, 'Productos', '2021-06-01 14:26:32'),
(3, 'Andamios', '2017-12-21 20:53:29'),
(4, 'Generadores de energía', '2017-12-21 20:53:29'),
(5, 'Equipos para construcción', '2017-12-21 20:53:29'),
(6, 'Martillos mecánicos', '2017-12-21 23:06:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `documento` int(11) NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `compras` int(11) NOT NULL,
  `ultima_compra` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `documento`, `email`, `telefono`, `direccion`, `fecha_nacimiento`, `compras`, `ultima_compra`, `fecha`) VALUES
(3, 'Sandra Galeano', 2147483647, 'juan@hotmail.com', '(300) 341-2345', 'Calle 23 # 45 - 56', '1980-11-02', 6, '2021-06-24 07:28:03', '2021-06-24 14:55:01'),
(4, 'Lacteos de Cimitarra', 2147483647, 'pedro@gmail.com', '(399) 876-5432', 'Calle 34 N33 -56', '1970-08-07', 9, '2021-06-24 09:29:16', '2021-06-24 14:29:16'),
(5, 'Comercializadora Carbas', 325235235, 'miguel@hotmail.com', '(254) 545-3446', 'calle 34 # 34 - 23', '1976-03-04', 34, '2021-06-24 09:38:03', '2021-06-24 14:38:03'),
(6, 'Cliente Mostrador', 34565432, 'clientemostrador@hotmail.com', '(344) 345-6678', 'Calle 45 # 34 - 56', '1976-11-30', 21, '2021-06-30 06:55:37', '2021-06-30 11:55:37'),
(7, 'Juzgado Cimitarra', 786786545, 'Juzgado@hotmail.com', '(675) 674-5453', 'Carrera 45 # 54 - 56', '1980-04-05', 21, '2021-06-30 06:55:10', '2021-06-30 11:55:10'),
(8, 'Colegio Tierra Adentro', 65756735, 'stella@gmail.com', '(435) 346-3463', 'Carrera 34 # 45- 56', '1956-06-05', 10, '2021-06-24 09:26:10', '2021-06-24 14:26:10'),
(9, 'Colegio Primavera', 2147483647, 'eduardo@gmail.com', '(534) 634-6565', 'Carrera 67 # 45sur', '1978-03-04', 16, '2021-06-24 09:31:55', '2021-06-24 14:31:55'),
(10, 'Colegio Caño Bonito', 436346346, 'ximena@gmail.com', '(543) 463-4634', 'calle 45 # 23 - 45', '1956-03-04', 19, '2021-06-24 09:31:27', '2021-06-24 14:31:27'),
(11, 'Giro Hse', 43634643, 'david@hotmail.com', '(354) 574-5634', 'carrera 45 # 45 ', '1967-05-04', 11, '2021-06-24 09:38:53', '2021-06-24 14:38:53'),
(12, 'Starline', 436346346, 'gonzalo@yahoo.com', '(235) 346-3464', 'Carrera 34 # 56 - 3', '1967-08-09', 25, '2021-06-24 09:39:10', '2021-06-28 15:15:15'),
(13, 'Colegio Villanueva', 43634643, 'david@hotmail.com', '(354) 574-5634', 'carrera 45 # 45 ', '1967-05-04', 11, '2021-06-24 09:37:38', '2021-06-24 14:37:38'),
(14, 'En Blanco', 436346346, 'gonzalo@yahoo.com', '(235) 346-3464', 'Carrera 34 # 56 - 34', '1967-08-09', 24, '2017-12-25 17:24:24', '2021-06-23 13:59:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastos`
--

CREATE TABLE `gastos` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `producto` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `total` float NOT NULL,
  `compragasto` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `gastos`
--

INSERT INTO `gastos` (`id`, `codigo`, `id_cliente`, `producto`, `total`, `compragasto`, `fecha`) VALUES
(1, 1, 1, 'gastos varios', 50000, 'efectivo', '2021-06-30 14:54:27'),
(2, 2, 1, 'gastos varios', 50000, 'efectivo', '2021-06-30 14:54:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `codigo` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `ventas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `codigo`, `descripcion`, `imagen`, `stock`, `precio_compra`, `precio_venta`, `ventas`, `fecha`) VALUES
(1, 1, '101', 'Cargador Computador', 'vistas/img/productos/101/105.png', 999, 75000, 75000, 1, '2021-06-24 14:26:10'),
(2, 1, '102', 'Reset y almohadillas Impresora', 'vistas/img/productos/102/940.jpg', 1000, 60000, 60000, 1, '2021-06-24 14:21:34'),
(3, 1, '103', 'Tintas Negra grande', 'vistas/img/productos/103/763.jpg', 0, 20000, 20000, 12, '2021-06-24 14:38:53'),
(4, 1, '104', 'Casos Juzgado', 'vistas/img/productos/104/957.jpg', 993, 30000, 30000, 11, '2021-06-30 11:55:10'),
(5, 1, '105', 'Formateo General', 'vistas/img/productos/105/630.jpg', 997, 50000, 50000, 10, '2021-06-30 11:52:36'),
(6, 1, '106', 'BackUp Información ', 'vistas/img/productos/106/635.jpg', 999, 20000, 20000, 6, '2021-06-30 11:55:37'),
(7, 1, '107', 'Disco Duro Solido', 'vistas/img/productos/107/848.jpg', 1000, 90000, 90000, 9, '2021-06-30 11:54:45'),
(8, 1, '108', 'Formateo y Backup', 'vistas/img/productos/108/163.jpg', 98, 60000, 60000, 11, '2021-06-24 14:55:01'),
(9, 1, '109', 'Manteamiento Preventivo', 'vistas/img/productos/109/769.jpg', 998, 40000, 40000, 8, '2021-06-24 14:29:16'),
(10, 1, '110', 'Mantenimiento Correctivo', 'vistas/img/productos/110/582.jpg', 999, 40000, 40000, 4, '2021-06-24 14:12:28'),
(11, 1, '111', 'Mantenimiento General Impresora', 'vistas/img/productos/110/582.jpg', 996, 60000, 60000, 7, '2021-06-24 14:31:55'),
(12, 1, '112', 'Mano de obra', 'vistas/img/productos/110/582.jpg', 996, 20000, 20000, 7, '2021-06-24 14:39:10'),
(13, 1, '113', 'Memoria Ram 4gb', 'vistas/img/productos/110/582.jpg', 998, 90000, 90000, 5, '2021-06-24 14:31:27'),
(14, 1, '114', 'Impresiones Colegio', 'vistas/img/productos/110/582.jpg', 996, 790000, 790000, 7, '2021-06-24 14:37:38'),
(15, 1, '115', 'En blanco1', 'vistas/img/productos/110/582.jpg', 998, 90000, 90000, 5, '2021-07-02 15:28:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(1, 'Jorge Ayala Gomez', 'admin', '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', 'Administrador', 'vistas/img/usuarios/admin/191.jpg', 1, '2021-07-02 10:27:27', '2021-07-02 15:27:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `productos` text COLLATE utf8_spanish_ci NOT NULL,
  `impuesto` float NOT NULL,
  `neto` float NOT NULL,
  `total` float NOT NULL,
  `metodo_pago` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `codigo`, `id_cliente`, `id_vendedor`, `productos`, `impuesto`, `neto`, `total`, `metodo_pago`, `fecha`) VALUES
(19, 10002, 6, 1, '[{\"id\":\"10\",\"descripcion\":\"Mantenimiento Correctivo\",\"cantidad\":\"1\",\"stock\":\"999\",\"precio\":\"40000\",\"total\":\"40000\"}]', 0, 40000, 40000, 'Efectivo', '2021-06-24 14:12:28'),
(20, 10003, 7, 1, '[{\"id\":\"4\",\"descripcion\":\"Casos Juzgado\",\"cantidad\":\"3\",\"stock\":\"997\",\"precio\":\"30000\",\"total\":\"90000\"}]', 0, 90000, 90000, 'TC-100', '2021-06-24 14:13:01'),
(21, 10004, 6, 1, '[{\"id\":\"5\",\"descripcion\":\"Formateo General\",\"cantidad\":\"1\",\"stock\":\"999\",\"precio\":\"50000\",\"total\":\"50000\"}]', 0, 50000, 50000, 'TC-123456', '2021-06-24 14:18:35'),
(22, 10005, 8, 1, '[{\"id\":\"1\",\"descripcion\":\"Cargador Computador\",\"cantidad\":\"1\",\"stock\":\"999\",\"precio\":\"75000\",\"total\":\"75000\"}]', 0, 75000, 75000, 'TC-789456', '2021-06-24 14:26:10'),
(23, 10006, 9, 1, '[{\"id\":\"11\",\"descripcion\":\"Mantenimiento General Impresora\",\"cantidad\":\"1\",\"stock\":\"998\",\"precio\":\"60000\",\"total\":\"60000\"}]', 0, 60000, 60000, 'TC-987', '2021-06-24 14:26:56'),
(24, 10007, 3, 1, '[{\"id\":\"9\",\"descripcion\":\"Manteamiento Preventivo\",\"cantidad\":\"1\",\"stock\":\"999\",\"precio\":\"40000\",\"total\":\"40000\"}]', 0, 40000, 40000, 'TC-123456', '2021-06-24 14:28:03'),
(25, 10008, 6, 1, '[{\"id\":\"5\",\"descripcion\":\"Formateo General\",\"cantidad\":\"1\",\"stock\":\"998\",\"precio\":\"50000\",\"total\":\"50000\"}]', 0, 50000, 50000, 'Efectivo', '2021-06-24 14:28:44'),
(26, 10009, 4, 1, '[{\"id\":\"11\",\"descripcion\":\"Mantenimiento General Impresora\",\"cantidad\":\"1\",\"stock\":\"997\",\"precio\":\"60000\",\"total\":\"60000\"},{\"id\":\"9\",\"descripcion\":\"Manteamiento Preventivo\",\"cantidad\":\"1\",\"stock\":\"998\",\"precio\":\"40000\",\"total\":\"40000\"}]', 0, 100000, 100000, 'Efectivo', '2021-06-24 14:29:16'),
(27, 10010, 10, 1, '[{\"id\":\"13\",\"descripcion\":\"Memoria Ram 4gb\",\"cantidad\":\"1\",\"stock\":\"998\",\"precio\":\"90000\",\"total\":\"90000\"}]', 0, 90000, 90000, 'TC-456456456', '2021-06-24 14:31:27'),
(28, 10011, 9, 1, '[{\"id\":\"12\",\"descripcion\":\"Mano de obra\",\"cantidad\":\"2\",\"stock\":\"997\",\"precio\":\"20000\",\"total\":\"40000\"},{\"id\":\"11\",\"descripcion\":\"Mantenimiento General Impresora\",\"cantidad\":\"1\",\"stock\":\"996\",\"precio\":\"60000\",\"total\":\"60000\"}]', 0, 100000, 100000, 'TC-123132132132', '2021-06-24 14:31:55'),
(29, 10012, 6, 1, '[{\"id\":\"8\",\"descripcion\":\"Formateo y Backup\",\"cantidad\":\"1\",\"stock\":\"99\",\"precio\":\"60000\",\"total\":\"60000\"}]', 0, 60000, 60000, 'Efectivo', '2021-06-24 14:35:54'),
(30, 10013, 13, 1, '[{\"id\":\"14\",\"descripcion\":\"Impresiones Colegio\",\"cantidad\":\"1\",\"stock\":\"996\",\"precio\":\"790000\",\"total\":\"790000\"}]', 0, 790000, 790000, 'Efectivo', '2021-06-24 14:37:38'),
(31, 10014, 5, 1, '[{\"id\":\"8\",\"descripcion\":\"Formateo y Backup\",\"cantidad\":\"2\",\"stock\":\"97\",\"precio\":\"60000\",\"total\":\"120000\"}]', 0, 120000, 120000, 'Efectivo', '2021-06-24 14:38:03'),
(32, 10015, 7, 1, '[{\"id\":\"4\",\"descripcion\":\"Casos Juzgado\",\"cantidad\":\"2\",\"stock\":\"995\",\"precio\":\"30000\",\"total\":\"60000\"}]', 0, 60000, 60000, 'TC-789', '2021-06-24 14:38:32'),
(33, 10016, 11, 1, '[{\"id\":\"3\",\"descripcion\":\"Tintas Negra grande\",\"cantidad\":\"1\",\"stock\":\"0\",\"precio\":\"20000\",\"total\":\"20000\"}]', 0, 20000, 20000, 'TC-465465465', '2021-06-24 14:38:53'),
(34, 10017, 12, 1, '[{\"id\":\"12\",\"descripcion\":\"Mano de obra\",\"cantidad\":\"1\",\"stock\":\"996\",\"precio\":\"20000\",\"total\":\"20000\"}]', 0, 20000, 20000, 'TC-78979878', '2021-06-24 14:39:10'),
(35, 10018, 6, 1, '[{\"id\":\"5\",\"descripcion\":\"Formateo General\",\"cantidad\":\"1\",\"stock\":\"997\",\"precio\":\"50000\",\"total\":\"50000\"}]', 0, 50000, 50000, 'Efectivo', '2021-06-30 11:52:36'),
(36, 10019, 7, 1, '[{\"id\":\"4\",\"descripcion\":\"Casos Juzgado\",\"cantidad\":\"1\",\"stock\":\"994\",\"precio\":\"30000\",\"total\":\"30000\"}]', 0, 30000, 30000, 'Efectivo', '2021-06-30 11:53:17'),
(37, 10020, 6, 1, '[{\"id\":\"7\",\"descripcion\":\"Disco Duro Solido\",\"cantidad\":\"1\",\"stock\":\"1000\",\"precio\":\"90000\",\"total\":\"90000\"}]', 0, 90000, 90000, 'TC-99', '2021-06-30 11:54:45'),
(38, 10021, 7, 1, '[{\"id\":\"4\",\"descripcion\":\"Casos Juzgado\",\"cantidad\":\"1\",\"stock\":\"993\",\"precio\":\"30000\",\"total\":\"30000\"}]', 0, 30000, 30000, 'TC-1', '2021-06-30 11:55:10'),
(39, 10022, 6, 1, '[{\"id\":\"6\",\"descripcion\":\"BackUp Información \",\"cantidad\":\"1\",\"stock\":\"999\",\"precio\":\"20000\",\"total\":\"20000\"}]', 0, 20000, 20000, 'TC-2', '2021-06-30 11:55:37');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `gastos`
--
ALTER TABLE `gastos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `gastos`
--
ALTER TABLE `gastos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
