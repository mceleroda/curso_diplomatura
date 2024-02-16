-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 16-02-2024 a las 18:12:39
-- Versión del servidor: 8.2.0
-- Versión de PHP: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectofinal`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `precios`
--

DROP TABLE IF EXISTS `precios`;
CREATE TABLE IF NOT EXISTS `precios` (
  `id_producto` int NOT NULL AUTO_INCREMENT,
  `img_id` varchar(250) DEFAULT NULL,
  `producto` varchar(80) NOT NULL,
  `tipo_producto` varchar(80) NOT NULL,
  `precio` int NOT NULL,
  `tipo_precio` varchar(80) NOT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `precios`
--

INSERT INTO `precios` (`id_producto`, `img_id`, `producto`, `tipo_producto`, `precio`, `tipo_precio`) VALUES
(1, 'fw4nl1xsmmr3bgvff9dw', 'Torta de Manzana', 'Dulce', 6900, 'Por unidad'),
(2, 'r6pvigp07malzsuhot38', 'Brownie', 'Dulce', 9200, 'Por unidad'),
(3, 'cnyq9on82dng6eqwci78', 'Pastafrola Membrillo o Batata', 'Dulce', 6900, 'Por unidad'),
(4, 'jconwexjk2nytsuty0ia', 'Tarta de Coco', 'Dulce', 7900, 'Por unidad'),
(5, 'gikeqeyam3zjwofm26fm', 'Tarta Tofi', 'Dulce', 6900, 'Por unidad'),
(6, 'kln77nrae1ybsidkotzg', 'Lemon Pie', 'Dulce', 7500, 'Por unidad'),
(7, 'zsuudi9pbe18d3sfgah4', 'Budín de Pan', 'Dulce', 6200, 'Por unidad'),
(8, 'hzoirsgza1fex79cl1vv', 'Torta de Frutilla', 'Dulce', 7900, 'Por unidad'),
(9, 'ylqdwotzz2rxv7sgukos', 'Chocotorta', 'Dulce', 10000, 'Por unidad'),
(10, 'v5allles5pxfaiojtihw', 'Tarta de Ricota', 'Dulce', 7000, 'Por unidad'),
(11, 'm9fsejia8xh4di01vgpa', 'Crumble de Manzana', 'Dulce', 7900, 'Por unidad'),
(12, 'cpymggol1x2dqaomvo93', 'Pavlova SIN TACC', 'Dulce', 9200, 'Por unidad'),
(13, 'b38cjpkpx3o7uqqztqqg', 'Torta Rogel', 'Dulce', 9500, 'Por unidad'),
(14, 'rxlx4bm7uzw7fphz6wma', 'Prepizzas', 'Salado', 650, 'Por unidad'),
(15, 'hggs35d0gpn8ybkg7ajd', 'Pan Dulce Completo (secos y abrillantada)', 'Fiestas', 4200, 'Por unidad'),
(16, 'eiwxicfovlpuk90vpiqm', 'Pan Dulce con Fruta Abrillantada', 'Fiestas', 4000, 'Por unidad'),
(17, 'gfetop2qvqrhlq4y7fva', 'Pan Dulce con Frutos Secos', 'Fiestas', 4500, 'Por unidad'),
(18, 'h5nhgttdrsia3i4j3ntb', 'Pan Dulce con Chips de chocolate', 'Fiestas', 3200, 'Por unidad'),
(19, 'spmt9etp2xqmuzjwv3bk', 'Pan Dulce Sin Nada', 'Fiestas', 2200, 'Por unidad'),
(20, 's0tf1u5ra924sg4l5z54', 'Budín Inglés con corazón de ddl', 'Fiestas', 2900, 'Por unidad'),
(21, 'ojuzi7zsrxkkgic7ayaj', 'Budín Inglés con chips de chocolate', 'Fiestas', 2500, 'Por unidad'),
(22, 'vntcr2spriu6zgftnqhi', 'Budín Inglés con frutas abrillantadas', 'Fiestas', 2700, 'Por unidad'),
(23, 's2qdh6i8vwhhjjo1h2ro', 'Budín Inglés con frutos secos', 'Fiestas', 3000, 'Por unidad'),
(24, 'zmk18artrk0b2brem76k', 'Rosca de Pascuas y Reyes', 'Fiestas', 5000, 'Por Unidad'),
(25, 'kr1plfjgaxe94ejwbbcg', 'Pizzetas de Tomate o Cebolla', 'Salado', 5400, 'Por Docena'),
(26, 'gvw4jhrbz3lyj9bck0tl', 'Pionono de Atún o JyQ', 'Salado', 4500, 'Por Unidad'),
(27, 'gisf4htzbkmvmrdvpufe', 'Chips de Pollo o JyQ o Salame y queso', 'Salado', 6000, 'Por Docena'),
(28, 'wotyfe07wudvhblvi5nn', 'Matambre Entero de Carne', 'Salado', 14500, 'Por Kg'),
(29, 'ixv4uled2bg0rypgn8vo', 'Vitel Toné', 'Salado', 15000, 'Por Kg'),
(30, 'd45dws6kq5gfsxp8jsao', 'Pan Relleno con chorizo a la pomarola o pollo al verdeo', 'Salado', 4500, 'Por Docena'),
(31, 'x4cnvcbhsff6u9cytimd', 'Empanadas Carne o Fatay', 'Salado', 8000, 'Por Docena'),
(32, 'wmrprwwyzsd7hurhuv8l', 'Canastitas de Verdura', 'Salado', 7000, 'Por Docena'),
(33, 'pyzvejsb9celuzeeoy87', 'Empanaditas de copetin de carne, jyq o queso y cebolla de verdeo', 'Salado', 3000, 'Por Docena'),
(34, 'ql5huvwsrio5uue2idhc', 'Sandwinch de miga o arrolladito de pan de miga de JyQ', 'Salado', 4000, 'Por Docena'),
(35, 'dpyrihfwe7vrhp9dohj8', 'Salchichas envueltas en panceta o envueltas a la mostaza', 'Salado', 4500, 'Por Docena'),
(36, 'wbpvuihsksx7tmm7yayy', 'Albondiguitas de carne', 'Salado', 4000, 'Por Docena'),
(37, 'uaseo8snr3jr5nmzuzmk', 'Lengua a la vinagreta', 'Salado', 11000, 'Por Kg'),
(38, 'nxv8ysszs0mgcowzvhxo', 'Berenjenas en escabeche (frasco)', 'Salado', 2000, 'Por Unidad'),
(39, 'bjndw1ppgsd0yg3nneay', 'Canelones de verdura solo (porción 3u)', 'Salado', 3500, 'Por Porción'),
(40, 'o3ifpkq4pkvajvyflj3q', 'Canelones de verdura con salsa fileto (porción 3u)', 'Salado', 3200, 'Por Porción'),
(41, 'fvtrz6j0nh5znfhlr7ba', 'Canelones de verdura con salsa mixta (porción 3u)', 'Salado', 3500, 'Por Porción'),
(42, 'plwuwzonethznunqi1zj', 'Tartas medianas (4 porciones)  de verdura, verdura y pollo, zapallito, humita', 'Salado', 3500, 'Por Unidad'),
(43, 'qesuonz3ay8cjnm6yyty', 'Tartas grandes (8 porciones) de verdura, verdura y pollo, zapallito, humita', 'Salado', 5500, 'Por Unidad'),
(50, 'xkr8za87hhrdvj5jll7o', 'Torta a pedido', 'Dulce', 5000, 'por Kg'),
(51, 'd3nve3iehetay5tnak0u', 'Budín de Frutos Rojos', 'Dulce', 6000, 'por Unidad'),
(52, 'qab5fzculm3sxrwnfrga', 'Torta a pedido', 'Salado', 6500, 'por kg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(2, 'Celeste', '81dc9bdb52d04dc20036dbd8313ed055'),
(3, 'Flavia', '81dc9bdb52d04dc20036dbd8313ed055');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
