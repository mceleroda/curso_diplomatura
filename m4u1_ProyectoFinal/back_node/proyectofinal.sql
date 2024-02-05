-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 05-02-2024 a las 22:06:12
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
  `producto` varchar(80) NOT NULL,
  `tipo_producto` varchar(80) NOT NULL,
  `precio` int NOT NULL,
  `tipo_precio` varchar(80) NOT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `precios`
--

INSERT INTO `precios` (`id_producto`, `producto`, `tipo_producto`, `precio`, `tipo_precio`) VALUES
(1, 'Torta de Manzana', 'Dulce', 6900, 'Por unidad'),
(2, 'Brownie', 'Dulce', 9200, 'Por unidad'),
(3, 'Pastafrola Membrillo o Batata', 'Dulce', 6900, 'Por unidad'),
(4, 'Tarta de Coco', 'Dulce', 7900, 'Por unidad'),
(5, 'Tarta Tofi', 'Dulce', 6900, 'Por unidad'),
(6, 'Lemon Pie', 'Dulce', 7500, 'Por unidad'),
(7, 'Budín de Pan', 'Dulce', 6200, 'Por unidad'),
(8, 'Torta de Frutilla', 'Dulce', 7900, 'Por unidad'),
(9, 'Chocotorta', 'Dulce', 10000, 'Por unidad'),
(10, 'Tarta de Ricota', 'Dulce', 7000, 'Por unidad'),
(11, 'Crumble de Manzana', 'Dulce', 7900, 'Por unidad'),
(12, 'Pavlova SIN TACC', 'Dulce', 9200, 'Por unidad'),
(13, 'Torta Rogel', 'Dulce', 9500, 'Por unidad'),
(14, 'Prepizzas', 'Salado', 650, 'Por unidad'),
(15, 'Pan Dulce Completo (secos y abrillantada)', 'Fiestas', 4200, 'Por unidad'),
(16, 'Pan Dulce con Fruta Abrillantada', 'Fiestas', 4000, 'Por unidad'),
(17, 'Pan Dulce con Frutos Secos', 'Fiestas', 4500, 'Por unidad'),
(18, 'Pan Dulce con Chips de chocolate', 'Fiestas', 3200, 'Por unidad'),
(19, 'Pan Dulce Sin Nada', 'Fiestas', 2200, 'Por unidad'),
(20, 'Budín Inglés con corazón de ddl', 'Fiestas', 2900, 'Por unidad'),
(21, 'Budín Inglés con chips de chocolate', 'Fiestas', 2500, 'Por unidad'),
(22, 'Budín Inglés con frutas abrillantadas', 'Fiestas', 2700, 'Por unidad'),
(23, 'Budín Inglés con frutos secos', 'Fiestas', 3000, 'Por unidad'),
(24, 'Rosca de Pascuas y Reyes', 'Fiestas', 5000, 'Por Unidad'),
(25, 'Pizzetas de Tomate o Cebolla', 'Salado', 5400, 'Por Docena'),
(26, 'Pionono de Atún o JyQ', 'Salado', 4500, 'Por Unidad'),
(27, 'Chips de Pollo o JyQ o Salame y queso', 'Salado', 6000, 'Por Docena'),
(28, 'Matambre Entero de Carne', 'Salado', 14500, 'Por Kg'),
(29, 'Vitel Toné', 'Salado', 15000, 'Por Kg'),
(30, 'Pan Relleno con chorizo a la pomarola o pollo al verdeo', 'Salado', 4500, 'Por Docena'),
(31, 'Empanadas Carne o Fatay', 'Salado', 8000, 'Por Docena'),
(32, 'Canastitas de Verdura', 'Salado', 7000, 'Por Docena'),
(33, 'Empanaditas de copetin de carne, jyq o queso y cebolla de verdeo', 'Salado', 3000, 'Por Docena'),
(34, 'Sandwinch de miga o arrolladito de pan de miga de JyQ', 'Salado', 4000, 'Por Docena'),
(35, 'Salchichas envueltas en panceta o envueltas a la mostaza', 'Salado', 4500, 'Por Docena'),
(36, 'Albondiguitas de carne', 'Salado', 4000, 'Por Docena'),
(37, 'Lengua a la vinagreta', 'Salado', 11000, 'Por Kg'),
(38, 'Berenjenas en escabeche (frasco)', 'Salado', 2000, 'Por Unidad'),
(39, 'Canelones de verdura solo (porción 3u)', 'Salado', 3000, 'Por Porción'),
(40, 'Canelones de verdura con salsa fileto (porción 3u)', 'Salado', 3200, 'Por Porción'),
(41, 'Canelones de verdura con salsa mixta (porción 3u)', 'Salado', 3500, 'Por Porción'),
(42, 'Tartas medianas (4 porciones)  de verdura, verdura y pollo, zapallito, humita', 'Salado', 3000, 'Por Unidad'),
(43, 'Tartas grandes (8 porciones) de verdura, verdura y pollo, zapallito, humita', 'Salado', 5000, 'Por Unidad');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
