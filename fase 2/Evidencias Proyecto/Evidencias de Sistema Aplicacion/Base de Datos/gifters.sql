-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Servidor: db
-- Tiempo de generación: 28-11-2025 a las 01:31:06
-- Versión del servidor: 8.0.43
-- Versión de PHP: 8.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gifters`
--
CREATE DATABASE IF NOT EXISTS `gifters` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `gifters`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `account_emailaddress`
--

CREATE TABLE `account_emailaddress` (
  `id` int NOT NULL,
  `email` varchar(254) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `account_emailaddress`
--

INSERT INTO `account_emailaddress` (`id`, `email`, `verified`, `primary`, `user_id`) VALUES
(17, 'giftersg4@gmail.com', 0, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `account_emailconfirmation`
--

CREATE TABLE `account_emailconfirmation` (
  `id` int NOT NULL,
  `created` datetime(6) NOT NULL,
  `sent` datetime(6) DEFAULT NULL,
  `key` varchar(64) NOT NULL,
  `email_address_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add Usuario', 6, 'add_user'),
(22, 'Can change Usuario', 6, 'change_user'),
(23, 'Can delete Usuario', 6, 'delete_user'),
(24, 'Can view Usuario', 6, 'view_user'),
(25, 'Can add País', 7, 'add_pais'),
(26, 'Can change País', 7, 'change_pais'),
(27, 'Can delete País', 7, 'delete_pais'),
(28, 'Can view País', 7, 'view_pais'),
(29, 'Can add Región', 8, 'add_region'),
(30, 'Can change Región', 8, 'change_region'),
(31, 'Can delete Región', 8, 'delete_region'),
(32, 'Can view Región', 8, 'view_region'),
(33, 'Can add Comuna', 9, 'add_comuna'),
(34, 'Can change Comuna', 9, 'change_comuna'),
(35, 'Can delete Comuna', 9, 'delete_comuna'),
(36, 'Can view Comuna', 9, 'view_comuna'),
(37, 'Can add Dirección', 10, 'add_direccion'),
(38, 'Can change Dirección', 10, 'change_direccion'),
(39, 'Can delete Dirección', 10, 'delete_direccion'),
(40, 'Can view Dirección', 10, 'view_direccion'),
(41, 'Can add Historial de búsqueda', 11, 'add_historialbusqueda'),
(42, 'Can change Historial de búsqueda', 11, 'change_historialbusqueda'),
(43, 'Can delete Historial de búsqueda', 11, 'delete_historialbusqueda'),
(44, 'Can view Historial de búsqueda', 11, 'view_historialbusqueda'),
(45, 'Can add Wishlist', 12, 'add_wishlist'),
(46, 'Can change Wishlist', 12, 'change_wishlist'),
(47, 'Can delete Wishlist', 12, 'delete_wishlist'),
(48, 'Can view Wishlist', 12, 'view_wishlist'),
(49, 'Can add categoria', 13, 'add_categoria'),
(50, 'Can change categoria', 13, 'change_categoria'),
(51, 'Can delete categoria', 13, 'delete_categoria'),
(52, 'Can view categoria', 13, 'view_categoria'),
(53, 'Can add marca', 14, 'add_marca'),
(54, 'Can change marca', 14, 'change_marca'),
(55, 'Can delete marca', 14, 'delete_marca'),
(56, 'Can view marca', 14, 'view_marca'),
(57, 'Can add producto', 15, 'add_producto'),
(58, 'Can change producto', 15, 'change_producto'),
(59, 'Can delete producto', 15, 'delete_producto'),
(60, 'Can view producto', 15, 'view_producto'),
(61, 'Can add Evento', 16, 'add_evento'),
(62, 'Can change Evento', 16, 'change_evento'),
(63, 'Can delete Evento', 16, 'delete_evento'),
(64, 'Can view Evento', 16, 'view_evento'),
(65, 'Can add Participante de evento', 17, 'add_participantedeevento'),
(66, 'Can change Participante de evento', 17, 'change_participantedeevento'),
(67, 'Can delete Participante de evento', 17, 'delete_participantedeevento'),
(68, 'Can view Participante de evento', 17, 'view_participantedeevento'),
(69, 'Can add Post', 18, 'add_post'),
(70, 'Can change Post', 18, 'change_post'),
(71, 'Can delete Post', 18, 'delete_post'),
(72, 'Can view Post', 18, 'view_post'),
(73, 'Can add Reporte', 19, 'add_reportestrike'),
(74, 'Can change Reporte', 19, 'change_reportestrike'),
(75, 'Can delete Reporte', 19, 'delete_reportestrike'),
(76, 'Can view Reporte', 19, 'view_reportestrike'),
(77, 'Can add Seguidor', 20, 'add_seguidor'),
(78, 'Can change Seguidor', 20, 'change_seguidor'),
(79, 'Can delete Seguidor', 20, 'delete_seguidor'),
(80, 'Can view Seguidor', 20, 'view_seguidor'),
(81, 'Can add Invitación a evento', 21, 'add_invitacionevento'),
(82, 'Can change Invitación a evento', 21, 'change_invitacionevento'),
(83, 'Can delete Invitación a evento', 21, 'delete_invitacionevento'),
(84, 'Can view Invitación a evento', 21, 'view_invitacionevento'),
(85, 'Can add Comentario', 22, 'add_comentario'),
(86, 'Can change Comentario', 22, 'change_comentario'),
(87, 'Can delete Comentario', 22, 'delete_comentario'),
(88, 'Can view Comentario', 22, 'view_comentario'),
(89, 'Can add Item en Wishlist', 23, 'add_itemenwishlist'),
(90, 'Can change Item en Wishlist', 23, 'change_itemenwishlist'),
(91, 'Can delete Item en Wishlist', 23, 'delete_itemenwishlist'),
(92, 'Can view Item en Wishlist', 23, 'view_itemenwishlist'),
(93, 'Can add Historial de regalo', 24, 'add_historialderegalos'),
(94, 'Can change Historial de regalo', 24, 'change_historialderegalos'),
(95, 'Can delete Historial de regalo', 24, 'delete_historialderegalos'),
(96, 'Can view Historial de regalo', 24, 'view_historialderegalos'),
(97, 'Can add Like', 25, 'add_like'),
(98, 'Can change Like', 25, 'change_like'),
(99, 'Can delete Like', 25, 'delete_like'),
(100, 'Can view Like', 25, 'view_like'),
(101, 'Can add Notificación', 26, 'add_notificacion'),
(102, 'Can change Notificación', 26, 'change_notificacion'),
(103, 'Can delete Notificación', 26, 'delete_notificacion'),
(104, 'Can view Notificación', 26, 'view_notificacion'),
(105, 'Can add Perfil', 27, 'add_perfil'),
(106, 'Can change Perfil', 27, 'change_perfil'),
(107, 'Can delete Perfil', 27, 'delete_perfil'),
(108, 'Can view Perfil', 27, 'view_perfil'),
(109, 'Can add Preferencias de Usuario', 28, 'add_preferenciasusuario'),
(110, 'Can change Preferencias de Usuario', 28, 'change_preferenciasusuario'),
(111, 'Can delete Preferencias de Usuario', 28, 'delete_preferenciasusuario'),
(112, 'Can view Preferencias de Usuario', 28, 'view_preferenciasusuario'),
(113, 'Can add Registro de actividad', 29, 'add_registroactividad'),
(114, 'Can change Registro de actividad', 29, 'change_registroactividad'),
(115, 'Can delete Registro de actividad', 29, 'delete_registroactividad'),
(116, 'Can view Registro de actividad', 29, 'view_registroactividad'),
(117, 'Can add Reseña', 30, 'add_resena'),
(118, 'Can change Reseña', 30, 'change_resena'),
(119, 'Can delete Reseña', 30, 'delete_resena'),
(120, 'Can view Reseña', 30, 'view_resena'),
(121, 'Can add Etiqueta', 31, 'add_tag'),
(122, 'Can change Etiqueta', 31, 'change_tag'),
(123, 'Can delete Etiqueta', 31, 'delete_tag'),
(124, 'Can view Etiqueta', 31, 'view_tag'),
(125, 'Can add Insignia', 32, 'add_insignia'),
(126, 'Can change Insignia', 32, 'change_insignia'),
(127, 'Can delete Insignia', 32, 'delete_insignia'),
(128, 'Can view Insignia', 32, 'view_insignia'),
(129, 'Can add Participante de conversación', 33, 'add_participanteconversacion'),
(130, 'Can change Participante de conversación', 33, 'change_participanteconversacion'),
(131, 'Can delete Participante de conversación', 33, 'delete_participanteconversacion'),
(132, 'Can view Participante de conversación', 33, 'view_participanteconversacion'),
(133, 'Can add Insignia Otorgada', 34, 'add_insigniaotorgada'),
(134, 'Can change Insignia Otorgada', 34, 'change_insigniaotorgada'),
(135, 'Can delete Insignia Otorgada', 34, 'delete_insigniaotorgada'),
(136, 'Can view Insignia Otorgada', 34, 'view_insigniaotorgada'),
(137, 'Can add conversacion', 35, 'add_conversacion'),
(138, 'Can change conversacion', 35, 'change_conversacion'),
(139, 'Can delete conversacion', 35, 'delete_conversacion'),
(140, 'Can view conversacion', 35, 'view_conversacion'),
(141, 'Can add Bloqueo de Usuario', 36, 'add_bloqueodeusuario'),
(142, 'Can change Bloqueo de Usuario', 36, 'change_bloqueodeusuario'),
(143, 'Can delete Bloqueo de Usuario', 36, 'delete_bloqueodeusuario'),
(144, 'Can view Bloqueo de Usuario', 36, 'view_bloqueodeusuario'),
(145, 'Can add mensaje', 37, 'add_mensaje'),
(146, 'Can change mensaje', 37, 'change_mensaje'),
(147, 'Can delete mensaje', 37, 'delete_mensaje'),
(148, 'Can view mensaje', 37, 'view_mensaje'),
(149, 'Can add Entrega de mensaje', 38, 'add_entregamensaje'),
(150, 'Can change Entrega de mensaje', 38, 'change_entregamensaje'),
(151, 'Can delete Entrega de mensaje', 38, 'delete_entregamensaje'),
(152, 'Can view Entrega de mensaje', 38, 'view_entregamensaje'),
(153, 'Can add site', 39, 'add_site'),
(154, 'Can change site', 39, 'change_site'),
(155, 'Can delete site', 39, 'delete_site'),
(156, 'Can view site', 39, 'view_site'),
(157, 'Can add email address', 40, 'add_emailaddress'),
(158, 'Can change email address', 40, 'change_emailaddress'),
(159, 'Can delete email address', 40, 'delete_emailaddress'),
(160, 'Can view email address', 40, 'view_emailaddress'),
(161, 'Can add email confirmation', 41, 'add_emailconfirmation'),
(162, 'Can change email confirmation', 41, 'change_emailconfirmation'),
(163, 'Can delete email confirmation', 41, 'delete_emailconfirmation'),
(164, 'Can view email confirmation', 41, 'view_emailconfirmation'),
(165, 'Can add social account', 42, 'add_socialaccount'),
(166, 'Can change social account', 42, 'change_socialaccount'),
(167, 'Can delete social account', 42, 'delete_socialaccount'),
(168, 'Can view social account', 42, 'view_socialaccount'),
(169, 'Can add social application', 43, 'add_socialapp'),
(170, 'Can change social application', 43, 'change_socialapp'),
(171, 'Can delete social application', 43, 'delete_socialapp'),
(172, 'Can view social application', 43, 'view_socialapp'),
(173, 'Can add social application token', 44, 'add_socialtoken'),
(174, 'Can change social application token', 44, 'change_socialtoken'),
(175, 'Can delete social application token', 44, 'delete_socialtoken'),
(176, 'Can view social application token', 44, 'view_socialtoken'),
(177, 'Can add URL de Tienda', 45, 'add_urltienda'),
(178, 'Can change URL de Tienda', 45, 'change_urltienda'),
(179, 'Can delete URL de Tienda', 45, 'delete_urltienda'),
(180, 'Can view URL de Tienda', 45, 'view_urltienda'),
(181, 'Can add solicitud amistad', 46, 'add_solicitudamistad'),
(182, 'Can change solicitud amistad', 46, 'change_solicitudamistad'),
(183, 'Can delete solicitud amistad', 46, 'delete_solicitudamistad'),
(184, 'Can view solicitud amistad', 46, 'view_solicitudamistad'),
(185, 'Can add Dispositivo de notificaciones', 47, 'add_notificationdevice'),
(186, 'Can change Dispositivo de notificaciones', 47, 'change_notificationdevice'),
(187, 'Can delete Dispositivo de notificaciones', 47, 'delete_notificationdevice'),
(188, 'Can view Dispositivo de notificaciones', 47, 'view_notificationdevice'),
(189, 'Can add Reseña del sitio', 48, 'add_resenasitio'),
(190, 'Can change Reseña del sitio', 48, 'change_resenasitio'),
(191, 'Can delete Reseña del sitio', 48, 'delete_resenasitio'),
(192, 'Can view Reseña del sitio', 48, 'view_resenasitio'),
(193, 'Can add secret santa assignment', 49, 'add_secretsantaassignment'),
(194, 'Can change secret santa assignment', 49, 'change_secretsantaassignment'),
(195, 'Can delete secret santa assignment', 49, 'delete_secretsantaassignment'),
(196, 'Can view secret santa assignment', 49, 'view_secretsantaassignment'),
(197, 'Can add generated card', 50, 'add_generatedcard'),
(198, 'Can change generated card', 50, 'change_generatedcard'),
(199, 'Can delete generated card', 50, 'delete_generatedcard'),
(200, 'Can view generated card', 50, 'view_generatedcard'),
(201, 'Can add conversation event', 51, 'add_conversationevent'),
(202, 'Can change conversation event', 51, 'change_conversationevent'),
(203, 'Can delete conversation event', 51, 'delete_conversationevent'),
(204, 'Can view conversation event', 51, 'view_conversationevent'),
(205, 'Can add event participant', 52, 'add_eventparticipant'),
(206, 'Can change event participant', 52, 'change_eventparticipant'),
(207, 'Can delete event participant', 52, 'delete_eventparticipant'),
(208, 'Can view event participant', 52, 'view_eventparticipant'),
(209, 'Can add Feedback de Recomendación', 53, 'add_recommendationfeedback'),
(210, 'Can change Feedback de Recomendación', 53, 'change_recommendationfeedback'),
(211, 'Can delete Feedback de Recomendación', 53, 'delete_recommendationfeedback'),
(212, 'Can view Feedback de Recomendación', 53, 'view_recommendationfeedback'),
(213, 'Can add Producto Externo', 54, 'add_productoexterno'),
(214, 'Can change Producto Externo', 54, 'change_productoexterno'),
(215, 'Can delete Producto Externo', 54, 'delete_productoexterno'),
(216, 'Can view Producto Externo', 54, 'view_productoexterno'),
(217, 'Can add Producto externo favorito', 55, 'add_productoexternofavorito'),
(218, 'Can change Producto externo favorito', 55, 'change_productoexternofavorito'),
(219, 'Can delete Producto externo favorito', 55, 'delete_productoexternofavorito'),
(220, 'Can view Producto externo favorito', 55, 'view_productoexternofavorito');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bloqueo_de_usuario`
--

CREATE TABLE `bloqueo_de_usuario` (
  `id_bloqueo` int NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `blocked_id` int NOT NULL,
  `blocker_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE `comentario` (
  `id_comentario` int NOT NULL,
  `contenido` longtext NOT NULL,
  `fecha_comentario` datetime(6) NOT NULL,
  `fecha_edicion` datetime(6) NOT NULL,
  `id_post` int NOT NULL,
  `usuario_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comuna`
--

CREATE TABLE `comuna` (
  `id_comuna` int NOT NULL,
  `nombre_comuna` varchar(100) NOT NULL,
  `id_region` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conversacion`
--

CREATE TABLE `conversacion` (
  `conversacion_id` int NOT NULL,
  `tipo` varchar(10) NOT NULL,
  `nombre` varchar(120) DEFAULT NULL,
  `foto_url` varchar(255) DEFAULT NULL,
  `creada_en` datetime(6) NOT NULL,
  `actualizada_en` datetime(6) NOT NULL,
  `estado` varchar(10) NOT NULL,
  `id_usuario` int NOT NULL,
  `evento_id` int DEFAULT NULL,
  `ultimo_mensaje_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `conversacion`
--

INSERT INTO `conversacion` (`conversacion_id`, `tipo`, `nombre`, `foto_url`, `creada_en`, `actualizada_en`, `estado`, `id_usuario`, `evento_id`, `ultimo_mensaje_id`) VALUES
(27, 'directa', NULL, NULL, '2025-10-18 03:40:21.294107', '2025-10-18 03:40:21.294127', 'activa', 29, NULL, NULL),
(46, 'directa', NULL, NULL, '2025-10-22 04:43:18.450772', '2025-10-22 04:43:18.450787', 'activa', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_categoria`
--

CREATE TABLE `core_categoria` (
  `id_categoria` int NOT NULL,
  `nombre_categoria` varchar(100) NOT NULL,
  `descripcion` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `core_categoria`
--

INSERT INTO `core_categoria` (`id_categoria`, `nombre_categoria`, `descripcion`) VALUES
(1, 'Tecnología', 'Dispositivos electrónicos, gadgets y accesorios tecnológicos'),
(2, 'Moda y Accesorios', 'Ropa, calzado, joyería y complementos de moda'),
(3, 'Hogar y Decoración', 'Artículos para el hogar, decoración y muebles'),
(4, 'Deportes y Aire Libre', 'Equipamiento deportivo, camping y actividades al aire libre'),
(5, 'Juguetes y Juegos', 'Juguetes, juegos de mesa y entretenimiento familiar'),
(6, 'Belleza y Cuidado Personal', 'Cosméticos, skincare y productos de cuidado personal'),
(7, 'Libros y Entretenimiento', 'Libros, música, películas y medios de entretenimiento'),
(8, 'Alimentos y Bebidas', 'Comidas gourmet, bebidas y productos alimenticios especiales'),
(9, 'Salud y Bienestar', 'Productos para la salud, fitness y bienestar general'),
(10, 'Viajes y Experiencias', 'Kits de viaje, experiencias y accesorios para viajeros'),
(11, 'Papeleria', 'Todo lo que tenga que ver con cuadernos, lápices, bolígrafos, planners, stickers, etc.'),
(12, 'Aficiones y Estilo de Vida', 'Todo lo que tenga que ver con Aficiones y Estilo de Vida'),
(13, 'Ropa', 'Importada: Ropa'),
(14, 'Calzado', 'Importada: Calzado'),
(15, 'Deportes', 'Importada: Deportes'),
(16, 'Belleza', 'Importada: Belleza'),
(17, 'Juguetes', 'Importada: Juguetes'),
(18, 'Accesorios', 'Importada: Accesorios'),
(19, 'Mascotas', 'Importada: Mascotas'),
(20, 'Hogar', 'Importada: Hogar'),
(21, 'Libros', 'Importada: Libros'),
(23, 'Juegos De Mesa', NULL),
(25, 'Sin Categoría', NULL),
(26, 'Consolas', NULL),
(27, 'Perfumes Hombre', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_conversationevent`
--

CREATE TABLE `core_conversationevent` (
  `id` bigint NOT NULL,
  `tipo` varchar(40) NOT NULL,
  `titulo` varchar(120) NOT NULL,
  `presupuesto_fijo` decimal(10,2) DEFAULT NULL,
  `estado` varchar(20) NOT NULL,
  `creado_en` datetime(6) NOT NULL,
  `actualizado_en` datetime(6) NOT NULL,
  `ejecutado_en` datetime(6) DEFAULT NULL,
  `conversacion_id` int NOT NULL,
  `creado_por_id` int NOT NULL,
  `fecha_intercambio` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_eventparticipant`
--

CREATE TABLE `core_eventparticipant` (
  `id` bigint NOT NULL,
  `estado` varchar(16) NOT NULL,
  `creado_en` datetime(6) NOT NULL,
  `evento_id` bigint NOT NULL,
  `usuario_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_generatedcard`
--

CREATE TABLE `core_generatedcard` (
  `id` bigint NOT NULL,
  `prompt` longtext NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `share_token` varchar(32) NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_marca`
--

CREATE TABLE `core_marca` (
  `id_marca` int NOT NULL,
  `nombre_marca` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `core_marca`
--

INSERT INTO `core_marca` (`id_marca`, `nombre_marca`) VALUES
(10, 'Nike'),
(11, 'Adidas'),
(12, 'L\'Oréal'),
(13, 'Lego'),
(14, 'Genérica'),
(15, 'Festina'),
(16, 'Ray-Ban'),
(17, 'Master Dog'),
(18, 'Sonic'),
(19, 'Sony'),
(20, 'Razer'),
(21, 'Logitech'),
(22, 'Samsung'),
(23, 'Miniso'),
(24, 'Head'),
(25, 'Xiaomi'),
(26, 'Bialetti'),
(27, 'Oster'),
(28, 'Cannon'),
(29, 'Funko'),
(30, 'Nivea'),
(31, 'Hugo Boss'),
(32, 'Dior'),
(33, 'Head & Shoulders'),
(34, 'Pantene'),
(35, 'Wilson'),
(36, 'Levi\'s'),
(37, 'Gap'),
(38, 'The North Face'),
(39, 'Gacel'),
(40, 'CAT'),
(41, 'HappyCat'),
(42, 'Marca de Prueba'),
(44, 'Sin Marca'),
(45, 'Genérico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_secretsantaassignment`
--

CREATE TABLE `core_secretsantaassignment` (
  `id` bigint NOT NULL,
  `da_id` int NOT NULL,
  `evento_id` bigint NOT NULL,
  `recibe_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_user`
--

CREATE TABLE `core_user` (
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `id_usuario` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `correo` varchar(254) NOT NULL,
  `nombre_usuario` varchar(50) NOT NULL,
  `es_admin` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `verification_token` char(32) DEFAULT NULL,
  `token_created_at` datetime(6) NOT NULL,
  `is_verified` tinyint(1) NOT NULL,
  `genero` varchar(1) NOT NULL,
  `is_private` tinyint(1) NOT NULL,
  `must_change_password` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `core_user`
--

INSERT INTO `core_user` (`password`, `last_login`, `is_superuser`, `id_usuario`, `nombre`, `apellido`, `correo`, `nombre_usuario`, `es_admin`, `is_active`, `is_staff`, `verification_token`, `token_created_at`, `is_verified`, `genero`, `is_private`, `must_change_password`) VALUES
('pbkdf2_sha256$1000000$QVvpBTNNvMiYP20bcYvspQ$jf0K5alSQCqCm8cFFCiC98eU2FyMz5ooQ5eZE1kmVTs=', '2025-11-27 03:21:12.339911', 1, 1, 'gifters', 'admin', 'giftersg4@gmail.com', 'soyadmin', 1, 1, 1, '8c509a6750dd4b4fb111fd30ba01c546', '2025-09-30 02:42:27.315107', 0, 'N', 0, 0),
('pbkdf2_sha256$1000000$reVyTTZx2jy6z2FCACJSSS$uLEjaVPyUaD5Ybz8KzYkSSAeRfjzVbsreacEIFyz+BQ=', '2025-11-27 02:38:03.941227', 1, 29, 'James', 'Sullyvan', 'James@gmail.com', 'james_sullyvan', 1, 1, 1, '52f3ddd798fb4ed9be6e0eb80b690d4a', '2025-10-18 01:07:00.804756', 0, 'N', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_user_groups`
--

CREATE TABLE `core_user_groups` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_user_intereses_categorias`
--

CREATE TABLE `core_user_intereses_categorias` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `categoria_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_user_intereses_marcas`
--

CREATE TABLE `core_user_intereses_marcas` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `marca_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_user_user_permissions`
--

CREATE TABLE `core_user_user_permissions` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

CREATE TABLE `direccion` (
  `id_direccion` int NOT NULL,
  `calle` varchar(150) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `id_comuna` int NOT NULL,
  `id_usuario` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL
) ;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2025-09-30 02:45:16.835013', '1', 'localhost:8000', 2, '[{\"changed\": {\"fields\": [\"Domain name\", \"Display name\"]}}]', 39, 1),
(2, '2025-09-30 02:57:53.640923', '1', 'Google Login', 1, '[{\"added\": {}}]', 43, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(40, 'account', 'emailaddress'),
(41, 'account', 'emailconfirmation'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(36, 'core', 'bloqueodeusuario'),
(13, 'core', 'categoria'),
(22, 'core', 'comentario'),
(9, 'core', 'comuna'),
(35, 'core', 'conversacion'),
(51, 'core', 'conversationevent'),
(10, 'core', 'direccion'),
(38, 'core', 'entregamensaje'),
(16, 'core', 'evento'),
(52, 'core', 'eventparticipant'),
(50, 'core', 'generatedcard'),
(11, 'core', 'historialbusqueda'),
(24, 'core', 'historialderegalos'),
(32, 'core', 'insignia'),
(34, 'core', 'insigniaotorgada'),
(21, 'core', 'invitacionevento'),
(23, 'core', 'itemenwishlist'),
(25, 'core', 'like'),
(14, 'core', 'marca'),
(37, 'core', 'mensaje'),
(26, 'core', 'notificacion'),
(47, 'core', 'notificationdevice'),
(7, 'core', 'pais'),
(33, 'core', 'participanteconversacion'),
(17, 'core', 'participantedeevento'),
(27, 'core', 'perfil'),
(18, 'core', 'post'),
(28, 'core', 'preferenciasusuario'),
(15, 'core', 'producto'),
(54, 'core', 'productoexterno'),
(55, 'core', 'productoexternofavorito'),
(53, 'core', 'recommendationfeedback'),
(8, 'core', 'region'),
(29, 'core', 'registroactividad'),
(19, 'core', 'reportestrike'),
(30, 'core', 'resena'),
(48, 'core', 'resenasitio'),
(49, 'core', 'secretsantaassignment'),
(20, 'core', 'seguidor'),
(46, 'core', 'solicitudamistad'),
(31, 'core', 'tag'),
(45, 'core', 'urltienda'),
(6, 'core', 'user'),
(12, 'core', 'wishlist'),
(5, 'sessions', 'session'),
(39, 'sites', 'site'),
(42, 'socialaccount', 'socialaccount'),
(43, 'socialaccount', 'socialapp'),
(44, 'socialaccount', 'socialtoken');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-09-25 03:43:37.276239'),
(5, 'contenttypes', '0002_remove_content_type_name', '2025-09-25 04:02:15.384397'),
(6, 'auth', '0001_initial', '2025-09-25 04:02:15.927778'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-09-25 04:02:16.047302'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-09-25 04:02:16.053582'),
(9, 'auth', '0004_alter_user_username_opts', '2025-09-25 04:02:16.061269'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-09-25 04:02:16.069429'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-09-25 04:02:16.073511'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-09-25 04:02:16.080488'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-09-25 04:02:16.087895'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-09-25 04:02:16.093583'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-09-25 04:02:16.110682'),
(16, 'auth', '0011_update_proxy_permissions', '2025-09-25 04:02:16.123901'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-09-25 04:02:16.130758'),
(18, 'sessions', '0001_initial', '2025-09-25 04:02:16.186163'),
(19, 'core', '0001_initial', '2025-09-25 04:13:28.779214'),
(23, 'admin', '0001_initial', '2025-09-25 04:37:47.416118'),
(24, 'core', '0002_evento', '2025-09-25 04:37:59.569246'),
(25, 'admin', '0002_logentry_remove_auto_add', '2025-09-25 04:49:48.120630'),
(26, 'admin', '0003_logentry_add_action_flag_choices', '2025-09-25 04:49:48.176208'),
(27, 'core', '0003_participantedeevento', '2025-09-25 04:55:45.544887'),
(28, 'core', '0004_post_reportestrike_seguidor_invitacionevento_and_more', '2025-09-29 23:45:13.165528'),
(29, 'core', '0005_comentario_itemenwishlist_historialderegalos_like_and_more', '2025-09-30 00:13:48.881074'),
(30, 'core', '0006_insignia_conversacion_mensaje_bloqueodeusuario_and_more', '2025-09-30 00:42:58.983307'),
(31, 'core', '0007_alter_conversacion_options_and_more', '2025-09-30 00:48:13.476234'),
(32, 'account', '0001_initial', '2025-09-30 02:00:23.551591'),
(33, 'account', '0002_email_max_length', '2025-09-30 02:00:23.617284'),
(34, 'account', '0003_alter_emailaddress_create_unique_verified_email', '2025-09-30 02:00:23.708807'),
(35, 'account', '0004_alter_emailaddress_drop_unique_email', '2025-09-30 02:00:23.779897'),
(36, 'account', '0005_emailaddress_idx_upper_email', '2025-09-30 02:00:23.871769'),
(37, 'account', '0006_emailaddress_lower', '2025-09-30 02:00:23.944638'),
(38, 'account', '0007_emailaddress_idx_email', '2025-09-30 02:00:24.042978'),
(39, 'account', '0008_emailaddress_unique_primary_email_fixup', '2025-09-30 02:00:24.100933'),
(40, 'account', '0009_emailaddress_unique_primary_email', '2025-09-30 02:00:24.127466'),
(41, 'sites', '0001_initial', '2025-09-30 02:00:24.163633'),
(42, 'sites', '0002_alter_domain_unique', '2025-09-30 02:00:24.199412'),
(43, 'socialaccount', '0001_initial', '2025-09-30 02:00:24.960009'),
(44, 'socialaccount', '0002_token_max_lengths', '2025-09-30 02:00:25.033272'),
(45, 'socialaccount', '0003_extra_data_default_dict', '2025-09-30 02:00:25.055890'),
(46, 'socialaccount', '0004_app_provider_id_settings', '2025-09-30 02:00:25.355029'),
(47, 'socialaccount', '0005_socialtoken_nullable_app', '2025-09-30 02:00:25.600747'),
(48, 'socialaccount', '0006_alter_socialaccount_extra_data', '2025-09-30 02:00:25.717083'),
(49, 'core', '0008_urltienda_alter_producto_options_producto_activo_and_more', '2025-09-30 02:19:54.903847'),
(50, 'core', '0009_solicitudamistad_alter_mensaje_options_and_more', '2025-10-01 02:28:58.150932'),
(51, 'core', '0010_user_genero', '2025-10-02 04:22:43.683510'),
(52, 'core', '0011_alter_itemenwishlist_cantidad', '2025-10-15 02:19:27.823198'),
(53, 'core', '0012_remove_resena_uq_resena_usuario_producto_and_more', '2025-10-16 01:38:35.541173'),
(54, 'core', '0013_remove_post_url_media_post_imagen', '2025-10-16 01:39:51.453448'),
(55, 'core', '0014_delete_resena', '2025-10-18 02:44:07.430161'),
(56, 'core', '0015_alter_producto_precio_notificationdevice', '2025-10-20 23:54:07.229711'),
(57, 'core', '0016_preferenciasusuario_allow_push_web', '2025-10-21 00:36:37.699926'),
(58, 'core', '0017_resenasitio', '2025-10-22 01:36:08.862666'),
(59, 'core', '0018_producto_embedding', '2025-10-23 00:03:15.067680'),
(60, 'core', '0019_user_is_private', '2025-10-23 02:27:10.623269'),
(61, 'core', '0020_producto_url', '2025-10-24 01:18:36.076659'),
(62, 'core', '0021_user_intereses_categorias_user_intereses_marcas', '2025-10-25 01:59:05.769239'),
(63, 'core', '0022_conversationevent_generatedcard_and_more', '2025-10-25 03:24:00.130670'),
(64, 'core', '0023_eventparticipant', '2025-10-28 00:22:14.481930'),
(65, 'core', '0024_recommendationfeedback', '2025-10-28 00:43:56.291681'),
(66, 'core', '0025_post_gif_url_alter_post_tipo_post_and_more', '2025-10-30 02:32:55.809708'),
(67, 'core', '0026_alter_producto_id_categoria_alter_producto_id_marca', '2025-11-11 00:46:39.104859'),
(68, 'core', '0027_productoexterno', '2025-11-11 00:55:33.144315'),
(69, 'core', '0028_productoexterno_producto_interno', '2025-11-11 02:15:06.324132'),
(70, 'core', '0029_productoexternofavorito', '2025-11-11 02:48:36.725820'),
(71, 'core', '0030_delete_productoexternofavorito', '2025-11-11 03:12:58.386263'),
(72, 'core', '0031_productoexternofavorito', '2025-11-11 03:30:20.547236'),
(73, 'core', '0032_alter_productoexterno_imagen', '2025-11-18 00:23:42.736207'),
(74, 'core', '0033_alter_productoexterno_url', '2025-11-18 00:25:01.823206'),
(75, 'core', '0034_alter_producto_imagen', '2025-11-18 00:28:59.765716'),
(76, 'core', '0035_alter_producto_imagen', '2025-11-18 00:29:43.541207'),
(77, 'core', '0036_remove_itemenwishlist_uniq_producto_por_wishlist_and_more', '2025-11-18 01:35:43.036731'),
(78, 'core', '0037_remove_itemenwishlist_uniq_producto_interno_por_wishlist_and_more', '2025-11-21 00:04:29.202471'),
(79, 'core', '0038_alter_producto_imagen', '2025-11-21 00:44:33.888274'),
(80, 'core', '0039_user_must_change_password', '2025-11-21 00:53:11.946954'),
(81, 'core', '0040_conversationevent_fecha_intercambio', '2025-11-21 02:03:58.455160'),
(82, 'core', '0041_alter_urltienda_url', '2025-11-21 02:08:17.204432');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('06kz6x0x03k78ascuv18v9g9vntiesku', '.eJxVUMtuhDAM_BefUZQESAKnbn-jqlBI3CUqJCsc1Mdq_71ky4WbNTOeGfsO1rm0xTzYLU8Yc3A2hxSHBfOUPEH_dof_GXq4WaKvtHqowGbohVZCd02tJDNNq5WRFeBiw7xLl93GEvNpCfG64a9PMVF6uRaaubTA472CZ-iwEa5DKP41hxM4WveJsTB2ngvMjrbsqTloYpdT99dj62Q1WZpKgtJeCieM1250cvS6kwo11kJ9tHUrJbYoDeemkZ3grvGCj2q_0WIruNGmmBISlRfh9y2sP9Dzxx_lv20U:1vEJC6:m_EKjEUPTSmYlLtrskX17YbIdLk9j_KO_qEFYvYXmxY', '2025-11-13 03:19:22.878569'),
('0ek3rhw37hwbls13doirircvht5qenbz', '.eJxVj0tuhDAQRO_Sa4T8wx92mWtEETI97QGF4AibbBB3jyFkwa5VXfVUtUGKOPrJI8Z1zl3KPlOCdtsr-Nf8mgea84g-j3HuvigP8Vk87xv83dDeKVCyGVpuNGfOOKFqbZh1pqnge4k_45OWEnnF-JqoeNfxIHAurDLCWNM0jFtnmREO9o8KzgLdmmjpTqeAm9Z7_KT5ePhpOuT6qlGfnuud6rfbjMeVuqEGn4bCsUgkpbfC9sY5xSVpqwLXqpfkUHqntFQYkBmGkgdXVoYQOHrW9FaEBvZf6ClwNg:1vBO1E:Eg-rhUpGjVhNo_ENsRO-8i9cXhoJR1Nc63obx9a7h1E', '2025-11-05 01:52:04.703305'),
('0i48w7bl68golydfxyfivhnu2vdncd8e', '.eJxVj0tuhDAQRO_Sa4T8xTa7zDWiCDU99oBCcIRNNoi7xxCyYNeqrnqq2iBFGnFCorjOuUsZs0_QbnsF_xquefBzHgnzGOfuy-chPovnfYO_G9o7BUo2Q8tNI5WQXIiaCyN0oyr4XuLP-PRLibxifE2-eNfxIHAurDLCWKM149ZZZoSD_aOCs0C3Jr90p1PATeuRPv18PHCaDrm-atSn53qn-u0243GlbqgB01A4lryXEq2wvXFOcekbqwJvVC-9I4lOlWEUiBlGkgfHmQshcEKmeyuChv0Xy_dwGA:1vL8uQ:AzncwC7A_ZpLoGhGzowgN5zG4h3vX3DxJ6CcVwfYhpA', '2025-12-01 23:45:22.181474'),
('15lazo61g5vcg5j9qf7n74iptvo2igtc', '.eJxVkM1uhDAMhN_FZxQlIT_Aqe1rVCtkglmiAtmSoG212ncv2XLhZs2MP4_8AHQubEtqcUsjLck7TD4s7UxpDH2E5vMB_zM0cMMY72HtoQBM0AhrSmFrqySThgte6gJoRj_t0XnHYGT-uqDz4XujGN6u2WMuzPC8FPC62G6R1tZnuFRwEjt0X7RkB6cpy-yoyl6Zw47s_VT849g6oUaM484xNWmB3BrNB2NrWXVoUMrBIg2yU0qUtRalqKlUzmBl-WAV2V5WRutOySFDI8WY_0M_N7_-QsOffzdga-Q:1vK7aw:rj5gBbjFf12ziyDYUQBOn3GPyr4y_hxggdVVrzBE1C4', '2025-11-29 04:09:02.290056'),
('1ptpn7axmh7jbadcztxgeyhzx2y7p733', '.eJxVkE1uhDAMhe_iNUL5gxBWnV6jqpBxTKEFMiJBbTWau3cyZcPOfs_-_OQbIFHY19ThnkZe00SYprB2C6cx-Ajt2w3-a2jhijF-h81DAZiglbbW0upKNaV0QpmmAF5wmh-Tn7hwfPnIXUlhgft7Ac8T3R5566ZMUw5OYo_0xWt2cJ6zXB7ZyufMYcfyckr6emydUCPG8cFpiHSjrXGOjOTKo2QkYaxkMfi-55rZKK2qwQ3k9SC41rVAp63zuhoEZWjkGPND-Oc6bb_QivsfsllnjQ:1vK5yi:kISvIRLiszxRY_IqbBQwd3MVoQPgwygxBii06n7p8v8', '2025-11-29 02:25:28.215069'),
('1rmvea9b75eg2vpvz7ragbugmhk4aszv', '.eJwlydEKwiAUANB_uc8Smdba_iDofbAIsbu7kpwOr4tI_PeCzuspwBGd9RYxriEbzjYTQ1dgGmbu93z-tO_box9O0F0KLCki8e_Bx7sLIGC02UIXVu8FLE8kg3Ek86LkJkfpP1XI5qBko1q13Ry1llrtrrV-AeBkKjQ:1vK65C:K60WxyGYv__EpGeLkXzAufQUKqPP8Ok_l6VwFWRPNCs', '2025-11-29 02:32:10.845118'),
('29bzm09gowek7qumvmdcg3quttx3pjlg', '.eJxVkM1uhDAMhN8lZ4SSsCRmT21fo6qQ45iSlp8VCduf1b57yZYLN2tm_Nmam0CieZ1Si2vqeUqBMIV5akdO_eyjOL_exP8szuKCMX7NixeFwCTOyhpZg6y0LKU6aYBC8Ihh2JIfeA28XHHg6XflAaVRT-_ZK2kexf2tEI-D7Rp5aUNmaxAH0SF98pQdHIYsl_un5SOz27F8Pvz9sm8dUD3GfuN4YzR33gJBZcCxtaCg9h5MV0tLlSFluWoaB75xzpEncJpq23l1kkQyQyPHmOvh70tYfrYKtGyMlPc_dKxuDw:1v9DMm:bxOiMgNwiMePu9z32blEj0kKlWoWBgn5Z7RrIKPDmFQ', '2025-10-30 02:05:20.031071'),
('3h395mvcwixixx0kkzgj607lqn2mkc74', '.eJxVkMtuhDAMRf_Fa4SSkBes2v5GVSGTeAoqkCkJ6mM0_95kygavLN_r4yvfAJ0L-5p63NNIa5ocpims_UJpDD5C93qD_x46uGKMX2HzUAEm6LjRUvBGWVO3XHKmZAW04DRn65IxGD93-kWPjbRP70WoXVjg_lbB41y_R9r6qZCVgNNwQPdBa1Fwnsu4PnLWD88hx_r5lPrl2DqhRoxj5niumXTkOaLiw8WwxngrWjUQ42i1Qk-KeUcG9cUKYbnw2WubNpd2dijQSDGW59D3ddp-oGP3P61ja1E:1vOSXr:6W6MQMt-b93kCLiJfsl07zh21iz72hx_k6ZVu2fKI4c', '2025-12-11 03:19:47.944096'),
('4aqwbjz64olayxre4gwz3vo1d08n3trh', '.eJxVj01uhTAMhO_iNUJx_sOu7xpVhUxe8kClpCKhG8TdC5Qu2Fkz34ztFXLyA43kfVqm0uZCJWRo1q2Cf42W0oepDJ7KkKb2K5Q-PXfmfYW_GZp7C-zZAg0azQVqVKq2wsoKvuf0MzzDvPOvlF5j2MFlOOKI3ErDjTVKMbTOMsMdbB8VnNvbJYe5PUkON60j_xmmw6BxPOT6uqE-mcvO9dvth8eVulX1lPu9x_oQhCDLbWeckyiCtjKilp0IzgtyUgvpo2eGeYHRIXMxRvTEVGd5VLD9Atlib4o:1vGUwB:0fk8A1tSldkxEfS7tFm4SGZUsJrCkyJJhvhqeLw11do', '2025-11-19 04:15:59.951267'),
('4c6drpp4f5yn20776s8rjts8ibnniepg', '.eJyt0kuKwzAQBNC79NoItVofy6u5RxhMo4hEYEshkic_cvckzAGGAe0aqnib6gdwCGXLbeatHWNuKXBLJc9rbMeyrzDtHvB7wwQnrvVSznsYgBtM6KwiVERSGPTa63GAuHJa3tV0yBxS-eEl5vsWF7ao1Nfhk4pQVngOf7qGtCBNyti-rJaCpPFSUk-X0DmBaBF1X3aUwlupR1RdXYVKWHIGTVfWey288_-Z7HuAucZaP28Xr6d0vsEkny9H69UE:1vGUNG:4IHeSjeImlcaLwPCmdFRufyDmu1-y2I_Bw6eLPblkls', '2025-11-19 03:39:54.980087'),
('5etf1v12tydtegv52xxlfrnwsny7y7we', '.eJxVUMtuhDAM_BefESIB8uDU9jeqFXISp0TlsSVB23a1_16y5YJ8sWbGMyPfAa1dtjn1uKWB5hQsprDM_URpWFyE7v0O_zt0cMUYb8vqoABM0DEpaiaVrHQpGGOyEQXQhGHcpV8b_aLDaXfDyIV--chEaZcJHpcCnnH9FmntQ3bmEk6gQftJc2ZwHDNcHj3Lp-agY_l6av12XJ2sBoxDTvDUSONJ-8pbWbXaGk41R88a41CofVrBUStGRqOujXOulUK2vuJKcZ9NI8WYn0Pf17D-QFc9_gDRZWum:1vK7KH:9lc9JSocYFPZq4sdm7RJQUIIWYS6njUCVbOayRVEl-8', '2025-11-29 03:51:49.659552'),
('5o0d26vwk0aiwfe4j2r9dap756c09d4i', '.eJxVkM1uhDAMhN_FZxQlIT-EU9vXqCpkglmiLmRLgtpqte9esuXCzZoZfx75Duh93Jbc4ZYnWnLwmENcupnyFIcE7fsd_mdo4YYpfcd1gAowQyusdrKxTmjGG8eFqoBmDNc9Oe8UTCxcFvQhfm2U4suleMzHGR4fFTwPdluitQuFLRWcxB79Jy3Fweu1yOxoyp6Zw07s9dT77dg6oSZM084xjrRAbo3mo7F78x4NSjlapFH2SonaaVELR7XyBhvLR6vIDrIxWvdKjgWaKKXyHvq5hfUXWv74A_taa8A:1v3n9X:qoRRX157R2WeiSiljSFu5iOuUyGx0f9rXo3gUXbM4n4', '2025-10-15 03:05:15.109125'),
('5sqy8bh5frcwmaj4etob773s6nt9sp2m', '.eJxVj0tuhDAQRO_Sa4T8xTa7zDWiCJme9oBCcIRNNoi7xxCyYNeqrnqq2iBFHP3kEeM65y5lnylBu-0V_Gt-zQPNeUSfxzh3X5SH-Cye9w3-bmjvFCjZDC03DWfOMelqJrXRzlTwvcSf8UlLibxifE1UvOt4EDgXVhlhrNGacessM8LB_lHBWaBbEy3d6RRw03qPnzQfDz9Nh1xfNerTc71T_Xab8bhSN9Tg01A4Fomk9FbY3jinuKTGqsAb1UtyKL1TjVQYkBmGkgdXVoYQOHqmeyuChv0X4YNwLw:1vBOJD:f5bDxibEb8V20R0K2ep8mNwkiuF1ABnP-bwuisx7q9E', '2025-11-05 02:10:39.086094'),
('6k14udb0gcpewmhfppukknprjqwrw7m8', '.eJxVj0FuhTAMRO_iNUIhcRLMrv8aVYVMCB9USioSukH_7g2ULthZM29G4x1icBPP7FzYltTGxMlHaPZXAf8ab2n0S5ocpyks7ZdPY-gz877D3w3NvQVyNkFTWU3SEhlRaluRUaqA7zX8TL1fc-QZwnP2md2mo6GqNJEyygqSSAZVTbWC10cB54B2i35tTxLhpnXsPv1yGDzPh1xeM8qTuexYvt3eeFypW9XIccw9QhnZO-w0S1v3aAjZC8FOKSdrjRZ7pbzu0FumDglRDx1pdoMWPKDMq38B6u1wKg:1v3l5E:kgGEE3Lnp8qSmziL6iZt_ibAleklEyM-XoqNfPpsA7k', '2025-10-15 00:52:40.604141'),
('74e8o7eo37iooz1fs6ug1hxfo6trqeq1', '.eJxVkM1uhDAMhN_FZxSRkD84tX2NaoVMMEtUIFsStK1W--4lWy7crJnx55EfgM6FbUktbmmkJXmHyYelnSmNoY_QfD7gf4YGbhjjPaw9FIAJGm50pbiRVjDLteK2AJrRT3ty3ikYmb8u6Hz43iiGt2v2mAszPC8FvA62W6S19ZktJJzEDt0XLdnBacoyO5qyV-awI3s_9f44tk6oEeO4c3RNimNptCoHbWphO9QoxGCQBtFJyata8YrXVEmn0ZpyMJJML6xWqpNiyNBIMeb30M_Nr7_QlM8_-BVrvQ:1vLXSM:6MLIhsboHf5fbiQdsewbaupYrs4lE6Qoytv3lapgk_k', '2025-12-03 01:58:02.852650'),
('7nqwd950r1chkfgidvs2s0h6rsueijco', '.eJwlykEKgzAQRuG7_GsRMg1Vs_IepcgQ0xgwmWJGuhDv3kp3j493gL2XvejEuy6haPKsScqUgy4yV7jHgX_D4c21fmSb0YAVznR3S4aGntqbNUTUIGRO6--M6aVhq9GO8ZLWS8b5PL-RAyV9:1vOSO6:h9pdJTrvtYAqSFgSL-CNDS_AHtlvpQUJwajFjMKmc1w', '2025-12-11 03:09:42.343288'),
('8far37cj8bwi5fvo7eqoeo96uwdms7qv', '.eJxVkM1uhDAMhN_FZ4QSKInh1O1rVBVyHFNo-VmRsP1Z7bt3s-XCzZoZfx75CsS8bHNsaYu9zHFgisMyt5PEfvEBmtcr_M_QwJlC-FpWDxlQhEZboxEVos51XRS1qjKQiYbxHv2gyyDrhUaZfzcZSRn9_J68nJcJbm8ZPC62W5C1HRK8QDiIjvhT5uTQOCY536vmj8xuh_x0KP6ybx1QPYX-zvHGFNJ5i4ylQSfWosbKezRdpSyXhrWVsq4d-to5x57RFVzZzusnxawSNEgI6T_yfR7WH2jU7Q9Bmm0i:1vEfhZ:6h4-E9IlL-VzeZkAGY63XeVXxWaXznnecQ2D2JQC1Fk', '2025-11-14 03:21:21.249663'),
('8gxf2lacyndhv9bsxoh8zo4bcnrohart', '.eJxVkMluwzAMRP-FZ8OQHFuLT21_oygMiqJrtV4CS06XIP_eKPXFN2Jm-DjgFZBo2ebU4ZYGnlMgTGGZu4nTsPgI7esV_mdo4Ywxfi2rhwIwQSu1ErVRtqlLaaVtdAE8YRjvyQ-8BF4vOPL8u_GIQsmn9-yVtExweyvgcbDbIq9dyOzKwEF0SJ88ZwfHMcvl3rR8ZHY7ls-H3i_71gE1YBzuHK9Uxb3XhsxJGcdaG2ka743qG6HppEhqPlnrjLfOOfJkXEWN7r2sBZHI0Mgx5vfw9zmsP9CK2x__bGz4:1v8p4s:aXZ3g-g8tH18EscM71BwyiGt4nMygf5INz9SIJus7ZY', '2025-10-29 00:09:14.210810'),
('8luwqd0bravc0pnsijv4vl6pe1wet7rr', '.eJxVT0tuhTAMvIvXCGEnLyTs2mtUFTJJeKBSUpHwNoi7N1C6YGON5qfxBjHYkSe2NqxzamPi5CM0217AP8drGvycRstpDHP77dMQXPZ8bPCHobm3QM4maLBWAmujiUqthKiELOBnCa_R-SVHniE8J5-963g0IJJApR-VVFJmkA8R7J8FnAPaNfqlPZ0S4UZ2bL_8fCg8TQddXjvK03PJsXy7_fF-pW5VA8fh6CFUUntVU0VGM6KzShnqDXbke1c53znUNfYCEbtKGCZJbDrTs0cpGfZfE0twGg:1vK7cE:FXmYII9p5oKZkOKFfQA-vrgwboTnSFZ20Pj6ksaUmFE', '2025-11-29 04:10:22.900993'),
('8oxhuyrdr0t9cvap6im5h3c3q7nq2kus', '.eJxVj8FuhDAMRP_FZ4SSkJCEW_sbVYWcxLugUlKRsBfEv2_YpQdu9njmabxBin7ECb2P65z7lDFTgm7bK_jXcM0DzXn0mMc497-UhxiK52uD9wzdlQIlm6Hjum2YaZSUtRa24UJW8LfExxhoKZF7jPeJincdDwJnwmrOmRTM8lYb3gitYP-u4FWgXxMt_dvJ4SI69D80HxecpkOuzx71y3OeU_1x-ePzTF1QA6ahcDyx0BhplFEuaM1aMgqNJ9LGSVM2qxxKdvNOU1GlZTdnrHat5RjIEexPORNxdw:1vJiZN:Q1NSsHc073gBS5JDlQOGxh-pTY4jd86sEsgkYORHqxE', '2025-11-28 01:25:45.109107'),
('8qlngmnczh8h2sb870n73woeaplxrcop', '.eJyFkM1OwzAQhN9lz1EUO4kd5wSIN-BUEIo29oZadeNgO-Wn6ruT0CLoCflizaznW88RotcWHWrt5zF1MWGiCO0RPjcfD8xtDu-P92-v7qGB9ukIU_Ca4uKD8y92hAwMJoR2nJ3LYNpp6rQ31B0o2MFSODunjEnBWFMrpvKi4bJmz6cMfpg4py2NyWpM1o_dntLWm_jNO98X3IQxvvlgFiImaM95ouB1XomSV7LMgPZo3TpKicKEYUfh5mXVcu33cMr-TWOizAWvKsXkb9rrTJ9ocL_shpEL9TfyOYMuLnWsW9P7ZMMHtMWirR_q5kihsyuNS7gSe9Q7GlcHnVvl_NJE_j1zsWN-e9XL3eXVVdQW43YlDFTJfiA1FIOWRa10z6nkOLCqNyia5dSCo2oY9QpV2RtjailkPRS8afgApy8cyq1R:1vBkyR:SyrXsaQe13MCeG8y6YYwaC21p9daD0nJb4KHcUOnlvY', '2025-11-06 02:22:43.651284'),
('90id2gfn9q0oh6094vu96vftpngnx5bi', '.eJxVkM1uhDAMhN_FZ4QSAonh1PY1qgoljilp-VmRsP1Z7bt3s-WyN2tm_HnkC1iidV9Sb_c08pIC2RTWpZ85jauP0L1e4H-GDk42xq9181CATdBJo5VAo2oslaywrmQBPNsw3aIf9hx4O9uJl9-dJyu0fHrPXknrDNe3Au4X-z3y1ocMrxAeRGfpk5fs2GnKcnlULe-Zw47l80Pxl2PrATXaON44XuuKB2-QUGl0bAxKbLxHPTTCkNIkDau2dehb5xx5QldRYwYva0EkMjRyjPk__H0K2w904voHOcNtGg:1vJjYi:YmzRUXkfW8af-Q5sq3MyAQPCmimJzFOZlobm9B5ZHjM', '2025-11-28 02:29:08.691283'),
('91deiqdomk6t5gccit7ltlzxxi80ashj', '.eJxVkM1uhDAMhN_FZ4QSKEng1O1rVBVyHFPSBliRsP1Z7bt3s-XCzZoZfx75Cki0bHPqcUsjz8kTJr_M_cRpXFyE7vUK_zN0cMYYv5bVQQGYoJNaSSmquq5KZVqpVFMAT-jDPfqBF8_rBQPPvxsHFEo-v2evpGWC21sBj4v9FnntfYZXBg6iRfrkOTsYQpbLvWr5yOx2LE-H4i_71gE1YhzvHKdUxYPThkytjGWtjTSNc0YNjdBUK5Ka67a1xrXWWnJkbEWNHpx8EkQiQyPHmP_D32e__kAnbn84M20Z:1vBPAK:bhiDOtCB_qlOCLM8zQo6uGM-8LZ_MO3MkcnN3H9b7Ic', '2025-11-05 03:05:32.720577'),
('924ic18qubpo5451vvy1cyikgik118xs', '.eJxVkEtuwzAMRO_CtWFI_kiyV22vURQGRdG1Wn8CS07SBrl7o9Qb74iZ4eOAN0CiZZtjh1sceI6eMPpl7iaOw-ICtO83-J-hhROGcFlWBxlghFZqVQqjy0rmsmmqoi4y4An9-Ih-4dnzesaR59-NRxRKvnwmL6dlgvtHBs-L3RZ47XyCFwYOokX65jk5OI5Jzveq-TOz2yF_PRR_27cOqAHD8OA4pQrunTZkSmUsa22kqZ0zqq-FplKR1Fw2jTWusdaSI2MLqnXvZCWIRIIGDiH9h68nv_5AK-5_PYptHg:1vJjYh:eOrbSoCuVgK3ISknmSzItDBN9QTCJ46xjAWans9gsrE', '2025-11-28 02:29:07.776575'),
('9khnge0rpb207tfwkul8os96sqgk49zs', '.eJxVkMtuhDAMRf_Fa4RCUpLAqtPfqCrkOKak5TEiYfoYzb-XTNnMyta99vGVr4BEyzanDrc08JwCYQrL3E2chsVHaF-v8N9DC2eM8WtZPRSACdrKaCmlsrYu1V6EUAXwhGHcRz_wEni94Mjz78YjCl09v2evpGWC21sB94vdFnntQoZLCw-iQ_rkOTs4jlkuj6jlfeawY3l6CP5ybD2gBozDzvFaS-69sWSVto6NsZWtvbe6r4UhpakyrJrGWd8458iTdZJq0_vqSRCJDI0cY_4Pf5_D-gOtuP0BNM9tFQ:1vG6vt:wLR2xpo4pGPUoIFm56ZqSvexla7GivMlkZbm44eHikI', '2025-11-18 02:38:05.537971'),
('9zmtk3n8xbnejcbxkf9whaipc6y1u70h', '.eJxVkE1uhDAMhe_iNYpIyA-wanuNqkImmCHqQKY4qK1Gc_eSKRt2lt_z52ffAb2P25I63NJESwoeU4hLN1Oa4sDQvt_hv4YWbsj8HdcBCsAErXS2kq4yphG1K7XUpgCaMVx367xjkEW4LOhD_NqI48sla8LHGR4fBTw3dhvT2oUMVxpOzR79Jy1Zwes1t8URVTw9h8zi9RT87Zg6oSbkaefYhozE0llTjtY1qu7RolKjQxpVr7WsGiMr2VClvcX9pNFpcoOqrTG9VmOGMjHn_9DPLay_0JaPP0L8a_A:1vK5zD:_SiuqtltfJov4_ppDTM--UYy5ZW52aeG1hBJnA5Aoak', '2025-11-29 02:25:59.897024'),
('awsb8wztuyopfloyxec0wa10xkxpy6up', '.eJwljUEKgzAQAP-yZ5HEtgZy6j9KCUuykBSTFXfFFvHvrfQ2DAOzA8bIa9OAq2ZqWiJq4RYqaeYk4B87_Bk8zCiy8ZKgA1Tw1o0X69zgTG9u9jqMHVDFMv3KF-OElRLeM-vp-sgVjmcHQUjkPNB7LssHvDm-K1stsA:1vK6x4:jUFgoIOTO2HkKSpbyDbfDtzK5Yrn8pe5uWXBU5bwCd4', '2025-11-29 03:27:50.052767'),
('bc6yuh40ps4rlu98biv1a5fzmwapbtqy', '.eJxVkM1uhDAMhN_FZ4TIJiSBU7evUVXIOA5E5WdFgtpqte_ezZYLN2tm_HnkOyDRui-pwz2NvKRAmMK6dDOncXUR2o87_M_Qwg1j_F43BwVgglYYLarmIrUoTWWVvtQF8IxhekaH4BNvcVBvQ1ZKWmd4fBbwutPtkbcuZKSAk9YjffGSDZymLJdHv_KVOexYXk9t34-tE2rEOD45tdaCnaydIN9oh8IqlIq0boz02illrNdCkmJPrHoiiao2lTe2kq63NkMjx5ifwj-3sP1CWz3-AEYaaIU:1vBMZV:80AR6YkO2r7URemzs2gJRL8KoUzzXx5fr5_ESBIu6Uc', '2025-11-05 00:19:21.775593'),
('bg39z0utelgjkkmuae4rwny7pea6l517', '.eJxVkMtuhDAMRf_Fa4SSQB6wavsbVYVM4ilRgUxJUB-j-fcmUzZ4ZfleH1_5Bmht2Nc04J4mWpO3mHxYh4XSFFyE_vUG_z30cMUYv8LmoAJM0HOtWsG55ro2ndDcqApoQT9n65IxGD93-kWHTWue3otQ27DA_a2Cx7lhj7QNvpClgNNwRPtBa1Fwnsu4PnLWD88hx_r5lPrl2DqhJoxT5jiuWGvJcUTJx4tmjXZGdHIkxtEoiY4kc5Y0qosRwnDhstc0XS5lzVigkWIsz6Hvq99-oGf3P7bHa1s:1vOS3h:2Qgn5U0BAxoyD8-RvoQOHu9f_p38Usqu2c3w7FiEcK0', '2025-12-11 02:48:37.918989'),
('bmlf19tbztwxplxgpsuqvy9w61zfpjo4', '.eJxVUEFuhDAM_IvPKAoECOHU7TeqFTKOKWmBrEjQtlrt30u2XDhYsmfG45EfgER-W2KHWxx5iY4wOr90M8fR2wDtxwP-e2jhhiHc_WohA4zQ5rpWe2mZi8oUjWx0Bjyjm3bpF84c3j7TJMjP8Lxm8LrRbYHXziW7wsAJ7JG-eUkMTlOCxRFOvDQHHcTlFPX92DpZjRjG3achUo3SpTFU5lxZzBlJljpnOdi-55q5LFRRDWYgqwbJtaolGqWNVdUgKZkGDiF9hH9ubv2FVj7_AAGvZ8g:1vK6nt:LV_DH13RjC-XkcsPd7Ku4o4SZ7pprxsdcrdYrpJrKzw', '2025-11-29 03:18:21.635428'),
('bonep0am7f7cg56bozmhgrs7ak8incqb', '.eJxVkM1uwyAQhN9lzxYC4x_wqelrVJG1_NWotokMKG2jvHtN6otvq5nZb0f7ANQ65DWNmNNk1-Q1Jh_WcbFpCibC8PGA_xkGuGGM97AZqAATDKzveN9LxiihNZesqcAu6Oc9uewUYsLi189sf99MDjpromd4Xit43RpztNvoC7aRcBIV6i-7FgfnucjkKElemcOO5HKq_H5snVATxmnnUKaMampssOeWUuOodEw4aWzfSt4J2SGTDTNU1aKVUghUNeemY6g76lpXoNHGWD5jv29--4GBPv8AtF1qPw:1vMdWA:9xXQ0oicGusNDgb-XauSU405UbSeiY8gYBdXtmaWQN0', '2025-12-06 02:38:30.047094'),
('c1y00254povcrgb0kkuxsigmbtr9we49', '.eJxVUMtuhDAM_BefUQQB8uDU9jeqFXISp0TlsSVB23a1_16y5YIsS9bMeDzyHdDaZZtTj1saaE7BYgrL3E-UhsVF6N7v8D9DB1eM8basDgrABF0lRb13ozTTSopS8gJowjDu0q-NftHhtLth5EK_fGSC2WWCx6WA57l-i7T2ITtzCSfQoP2kOTM4jhlmR0721Bx0ZK-n1G_H1slqwDjkC54aaTxpX3ory1Zbw6nm6KvGOBRqr1Zw1Koio1HXxjnXSiFbX3KluM-mkWLMz6Hva1h_oCsff-Dqa7Y:1vK6kU:eszv-I1Eoqrtk6YZ8sTs1oCvIW-RiOyVfiQGFrJMx7c', '2025-11-29 03:14:50.017587'),
('ctsr6zg4erumx0b413yh8letbfa73or1', '.eJxVkE1uhDAMhe_iNYoSUpIMq06vUVXIBGeICsmIBPVnNHcvoWzYWX7Pn5_9ALQ2riF3uOaRQvYWs4-hmymPcUjQvj_gv4YW7pjSV1wGqAAztEIrYbRSRrNG8sbUugKa0U-bdd4wmNgQZx9uK_0OMcQUX29FZjbO8PyoYF_arYmWzhe-5HBq9mg_KRQFp6m02ZGW7Z5DTux6yv52TJ1QI6axcLisjamp6R0J6ci6F66l6jXH_YRG1iRcgwKlMmqTpdQX4QahUV-MdAWaKKXyIvq---UHWv78AwLKbdk:1vEebv:TGP-3oM-z-yoUqS9gZC9TxSE8RMP4zXeKHynHxFwcTs', '2025-11-14 02:11:27.564917'),
('dgnn6hgx93y88a3rm2hg6ha8r0ii8dmz', '.eJxVj0tuhDAQRO_Sa4Rs3LYxu8w1ogi1PwwoBEfYZIPm7jGELNi1ql6VqndI0U00k3NxW3KfMuWQoNtfFfxrtOUxLHlylKe49F8hj9EX5n2Hvxu6ewuUbIaOa8U1a5FjrZUyUqkKvtf4M_mwlsgzxuccCrtNRwPn0hihhGamQaNQtKYV8Pqo4BzQbyms_Uki3DRL7jMsh0HzfMj1NaM-mctO9dvtjceVulWNlMbSw4RqvEMrqdGtR2WQAmPkhHBNK1GjFyJIi0GTsWgQ5WCNJDdIRgM2ZfUv5blwJQ:1vDwpq:3zmCT6Weo3oTInqxbTZEOLZl7XoVZ2DWQzHUyMtrE6w', '2025-11-12 03:26:54.801309'),
('dh0o7yd2x0syaumpi88kqkifd86wze8o', '.eJytzcEKgjAYAOB3-c8jMmv_9BpFhxIiwUOIjLlyNPx1m0WK717QK3T-Dt8EnpSRVipFQxsqH2TQHtIJmneBdDg245hndb8nSK8TdI6U9l8HS3fTAoNaBglpO1jLoHsoXSmqdfXUztyMdj-ZWYQ8wiXGyBfIxSbhq5JBRn322uHZFiF3l-3pL4NIFnEkxDqJy3n-AFjISdk:1vDwZJ:hFTWW6BBLgN8OZ35Kcx4uE9cl_-O3aCCSIVU-RZv0Eo', '2025-11-12 03:09:49.319050'),
('dvcawyz7au161mgzkj6rfeicy9v24ndc', '.eJwlykEKgzAQRuG7_GuRxkZbs-o9pMgQYwyYjJiRLsS7a3H3-Hg7yFrekvS0yeSSBEsSOPXRycRDhul23A2DhXL-8TqgAAmMejW6UlX7fpaPWivVFHCRwnydPozi1uz1x_-ltBxxfI8TkY0lgQ:1vOSO7:qCcLUdxAc-3CXthb0j-umHeFOC_Rsxft3JvYZ6OOIUQ', '2025-12-11 03:09:43.055945'),
('dwk5bj6c23hrb2yuoyl8o12clp9xsqwz', '.eJxVkMluwzAMRP-FZ8OQ7FqLT01_oygMiqJrtV4CS06XIP_eKPXFN2Jm-DjgFZBo2ebU4ZYGnlMgTGGZu4nTsPgI7esV_mdo4Ywxfi2rhwIwQSu1ktrWtVClsNpWyhbAE4bxHv3AS-D1giPPvxuPKJR8fs9eScsEt7cCHhe7LfLahQyvDBxEh_TJc3ZwHLNc7lXLR2a3Y3k6FH_Ztw6oAeNw53ilKu69NmRqZRxrbaRpvDeqb4SmWpHUXFvrjLfOOfJkXEWN7r18EkQiQyPHmP_D3-ew_kArbn9KIG0r:1vEIv4:Rodu9fYK1x_FaxQ7sth3ajWOCbAw2cY6It7JXeNidwU', '2025-11-13 03:01:46.184907'),
('dx9cuhiypf9bz7e0rka82flzlgl7ac2e', '.eJytVWtP4zgU_Suz-UxK7LyRVtpCC0xLgb6gsFpFju2kbpM4jR3aMuK_r5OmLbBoNCvNt9jX995zj49PfmiCY4YShDEvMxkIiSQV2tmPt5PPkXqV8JhlKqzlBX9hhBbVNyPamRZzHidUO9FQnrdwwqjKqQOmCX3bsy1g-66-ImTlScAgeylB7pYEiGXCZZny5cL2xaKlskVrV6sUtMA8k6pSC_NUU5AaMPumWZkkJ1p1Ljguj8iOmMoaCQCuqXA4wDQN2_OgZzrQUNEECRk0k-1qEMVCsOAso4eydCMLFKgAqrsLRZI2lzIXZ6enDaw98BqtAvua_87xVcHyt_KpbrgMf0ILTRFLVDxFkiHRIjxlWVzSV8IzLvhfcRVuCtVHgxdasIhVlMmipAqvDOZIzFWJ5U2HL4WknD4wKyp7eNWbTdsqMUMpPbT4dmjxbddDHcgZlmVB35GdzM2vBzpFp-2L2OO4PzFGWAeDx_tZ727SndPFoBiPSGgEptCv7AsfPKGxG-brvj_drCY4CP8UvqNj1S5mLzQLPqBSuxFKWbLdb3-BkiGlSeA6ADqeb3qVWvJmw4W26b297WRavxwkxJoX1VX-0V8O-IDFW7_3_aG0tpuo_dh9bcueyTlbtic3w_Wwb5fx5ZciZSIQZU6LXeEIJUJxfnwHGU_D4sMYKKdJwgj_egbMi4LyX7vvXe2gFCUq2DHnkKIfqlIRIJJWoBuAMc1oUaXcavUICEvF-V4y1UwSRdFxHvEfWamtvGAv6okeTu2OYAWCZ4HkS6r6aa4f-V4UEp2QKNQtmwLd85D6skLbItDzQyNSGOrjAS6oKkiC6iI1aEBbB4YOrYkBziA8g0bL9OBzZUG1QzYOiGltA7tbqV0DHVxoiWmAOaF7-MUu8rZ_LIiQQqVXZvv3T9zsfzzCzzwpklJUbHfLt3_Uxpxn9ACwWrzjtmGyIe89ImUhNSBw8N93-PZkbxH0W8hoD4fBeWd8v57ESYc4FCiL8S5mi4yMvsed_O7FtYpraj1t7FmWPctww9NFsJqU3uJ-Km4F79-6M4nXD_1kuPBuuh4zJmQA9M7rVXtybiST7ubq5u5x3Zuh0XMyi9XTcp6mUzh88KzF4CGw_e5NGubCykZduNbt0RpeYvT8-tB5Hhfb5bUkm46wkvIplfI2s1dRP03EmIe90ruU-d1gMRuy2X3bQBfxU7_9hMftUXd8Oby-msEBm0_Z9XT7SHpgbN0P7AwZ95YeG9BwDioSVOmoUpBWWwArKvl_VhSsFAX8lmnbSlHHv1qASjlXXrbXcUrlnJOdPnbfqtDBPSp7PXqObbdMBziw9p5flUylibppcBCdZlbO_24zRFgNVkXUz7_abjVoW_WZJixa7Q_Yz5usD6Waf4HpuAQCDDzi4hDDkLg-dKhLTeBEtmlDSG0KPcPwLOgDA1sEGKHj-haiNjA816uKqmcjKopqjpXCjbd_AYc89Uo:1vC6Vn:px5BgUQbl27AecUrSYPWsY6YfWd_LP3o4FQJnmLlKJg', '2025-11-07 01:22:35.386695'),
('e93vd0885qwm12tzpot4ggf3rym1ed5k', '.eJxVkMFuwyAQRP9lzxZisTHYp6a_UUUWhm2MakNksNI2yr83pL74tpqZfbPaOxhr4xbyYLY8UcjemuxjGBbKU3QJ-o87_M_Qw9WkdIurgwpMhh5Vi7WUvNEMUSjEpgJajJ-f0eWJMYm5uPhw2ejXxRBTfLsUm9m4wONcwat02BKtgy_8msNBHI39olAcM89FZvu17JXZ7cROh9vf960DajJpKg2tcgItaqfsaMXoVCdaUlRj-ylrKQRJEppz3YgOuW0c8rFVXWNIItdKF2iilMqL6Pvq1x_o-eMPyPhs9w:1vCSuO:H4N_uwkoUGOQqNjOpl6gYzC-eeLJFFz46_qp1XI0Ol8', '2025-11-08 01:17:28.186391'),
('ecv1zaz2fv3cl5v6m73gy6strd71qx7y', '.eJxVUEFuhDAM_IvPCIVAEsKp7TeqFXISp6AC2ZKgbbvav5dsuSBfrJnxzMh3QGvDtqQetzTQkkaLaQxLP1MagovQvd_hf4cOrhjjLawOCsAEXaVkwxqmal0K0bRSFUAzjtOu_NroFx3OuxlGLvXLRyZKG2Z4XAp4pvVbpLUfszFXcAIN2k9aMoPTlOHyqFk-NQcdy9dT6bfj6mQ1YBxygqdGGU_aM28VE9oaTjVHXzXGoWz3EZKjbisyGnVtnHNCSSU8423LfTaNFGP-DX1fx_UHOvb4A4rJa3c:1vNjZz:yKD6c01CaCe-neWGyhbprhqyIpYvRnQR0WNmOEYnboE', '2025-12-09 03:18:59.580454'),
('f689sbkv24j79p9k0zilaqxl5ewoyic8', '.eJxVkMtuhDAMRf_Fa4QSHB5h1elvVBUyjlNoeYxIUFuN5t87mbJhZ99rH1_5BsS87kvsaI-DLHFkiuO6dLPEYXUB2rcb_NfQwpVC-F43BxlQhFbXFeoay8bmBrGwJgOZaZwek580S3j5SF3O6wz39wyeJ7o9yNaNiVZYOIk98ZcsyaFpSnJ-ZMufM4cd8ssp6euxdUINFIYHp2HGBmtjLRstpSMtxMrUWpR3fS-ViCmwKL317NArqbBSZLG2DkuvOEGDhJAeIj_XcfuFVt3_ALnNZ5U:1vK5zh:9BY2BH22hcnb2HFMN7dCEQwWRU4eCNaviXWJVFrNKUU', '2025-11-29 02:26:29.456897'),
('f88fpsi5jzrn0vahq7189gfaode5l80v', '.eJxVkM1uhDAMhN_FZxSRkB_g1PY1qgqZYJaoC9nioLZa7buXbLlws2bGn0e-A3oftyV1uKWJlhQ8phCXbqY0xYGhfb_D_wwt3JD5O64DFIAJWulspVXVyFpIbWujbQE0Y7ju0XnHIItwWdCH-LURx5dL9oSPMzw-Cnhe7DamtQsZrjScxB79Jy3Zwes1y-KoKp6Zw2bxeir-dmydUBPytHNsQ0Zi6awpR-saVfdoUanRIY2q11pWjZGVbKjS3mLtytFpcoOqrTG9VmOGMjHn_9DPLay_0JaPP0TAa_I:1vL97G:fiT_YnGiZ5bcxjMIBioM94bDc1Rk9xVp6Kkj5LxjvL0', '2025-12-01 23:58:38.199156'),
('fk9zaj9o0kk4hkz6bs1i6966rduf5jgi', '.eJxVkM1uhDAMhN_FZxSRkB_g1PY1qgqZYJaoC9nioLZa7buXbLlws2bGn0e-A3oftyV1uKWJlhQ8phCXbqY0xYGhfb_D_wwt3JD5O64DFIAJWumsUtKWtRNWVaZSpgCaMVz36LxjkEW4LOhD_NqI48sle8LHGR4fBTwvdhvT2oUMVxpOYo_-k5bs4PWaZXFUFc_MYbN4PRV_O7ZOqAl52jm2ISOxdNaUo3WNqnu0qNTokEbVay2rxshKNlRpb7F25eg0uUHV1pheqzFDmZjzf-jnFtZfaMvHHzkHa-Y:1vG4u7:iL5vK3T3wX5-s0T5NHW4grMzWH3eaR933DriwJydj9A', '2025-11-18 00:28:07.648641'),
('fs9xva7iti9if5uldp22ob82e1wjp8qk', '.eJxVkM1uhDAMhN_FZxRBfoFT29eoKmSCWaIuZIuD2mq1716y5cLNmhl_HvkO6H3cltThliZaUvCYQly6mdIUB4b2_Q7_M7RwQ-bvuA5QACZoK2elKrWsnVCNM0rbAmjGcN2j845BFuGyoA_xayOOL5fsCR9neHwU8LzYbUxrFzJcajiJPfpPWrKD12uWxVFVPDOHzeL1VPzt2DqhJuRp59iGTIWls6YcrWtk3aNFKUeHNMpe60o1plJVQ0p7i7UrR6fJDbK2xvRajhnKxJz_Qz-3sP5CWz7-AEOwa_E:1vGRqh:44H90Tp44TpNybh7nMSKz6n9iClmE1_KHydwyPE_5vI', '2025-11-19 00:58:07.437954'),
('g3o18gk5yoz4ag7lh1wpwa8t9pmlm3dx', '.eJxVkNFuwyAMRf-F5yyCEALp07bfmCbkgGlQQ6gC0dZV_fdB1z3UT5avfa51r0SfIaWvuFm9YcKsT3ghB2Iu3obTi2Wqn7pJ0kENnZrEaFTXC0cF5zgwYUlDwJi4r1nDnmdcszeQfVx1wDxHm8jh40r--kL9t6pnmRyYHJiSQ6l2HGUvRN8QDOCXshoKBlJrY_DrcccfG9eY4uuxyq2Jgdw-G3I31XvCTfvK55Q8DScwJ1yrAstSx-3j2_a-85BT-_b0-_vj6gk1Q5orh_JOqQ7F5JBxh8b1VPKhJASCU6EE75A5AQx4iazInMuROcskyFFxV6EJU6oR4ffZbyVsevsF4DSBgw:1vEebb:kCFfypSWtxNlnDStPfOrAXmxfMKGy3j50vZTaHnqjCI', '2025-11-14 02:11:07.039409'),
('giw2bt0w21ro8gcjk264034si86lxnsx', '.eJxVkE1uhDAMhe_iNUIJCT9h1ek1qgoZxxRaICMc1FajuXsnUzbs7Pfsz0--ARKFfY0d7nHkNU6EcQprt3Acgxdo327wX0MLVxT5DpuHDDBCq-vKlLpRxuaNUoW1TQa84DQ_Rj9xYXn5SF1OYYH7ewbPG90uvHVTwhUOTmKP9MVrcnCek5wf4fLnzGFLfjlFfT22TqgRZXxwGiLTmNo6R1Zz6VEzkrK1ZjX4vueK2RamKAc3kDeD4spUCp2pnTfloChBhUXSR_jnOm2_0Kr7H_S8Z7o:1vLXbG:BoL13mMoOzjSLCn1eYvZsIpcNl4U2qUvjWhUNrBC1Fw', '2025-12-03 02:07:14.937089'),
('gslptvbyxo9t5lsvreg3dq5vq2qzgvcy', '.eJxVkE1uhDAMhe_iNYoSCCFh1ek1qhFy_kpUICOSaNqO5u6FKRt2lt_z52c_AI2JZckDljy6JQeDOcRlmF0eo03Qfzzgv4YebpjSPa4WKsAMPesEZ3XT8I4wUUvGRQVuxjBt1nnDEBvnsHwW9_tmSzTFEDPB81rBa9lQkluHsHO5glNTo_lyy67gNO1tcqQkL88hJ3I5ZX4_pk6oEdO4cSjTVvMaOXaNo9R6qjyTXlnXtaoRUglkijNLdS1bpaREvR1mBUMjqG_9Dk0upf017vsW1h_o6fMP_7hqdA:1vO54N:MWM8NFsPmJDx7JCpMrO_gecSMAxkqG0ghqvXgLXBqwM', '2025-12-10 02:15:47.184871'),
('h475et83iulrk6nn5a3wbezhpoj5m2yh', '.eJxVkMFuwyAQRP9lzxYCjMH2qelvVJGFYRuj2hB5sdI2yr83pL74tpqZfbPaO1jn0hbzYLc8YczB2RxSHBbMU_IE_ccd_mfo4WqJbmn1UIHN0AujhRZCKMOMMapWugJcbJif0eWJscR8WkK8bPjrU0yU3i7FZi4t8DhX8CodNsJ1CIVfcziIo3VfGItj57nIbL-WvTK7Tex0uP193zqgJktTadDGS-FE640bnRy96aRGg7XQn03dSIkNypbzVslOcKe84KM2nbLYCN6atkAJicqL8Psa1h_o-eMP2JltBw:1vDXX1:8vWY6lo3eH_bR8HTtBqEqSs4ppzoO6QdsXMKYBlIY-E', '2025-11-11 00:25:47.807940'),
('hh9f5hnb25b34ll24yz21gslq1hjo0zh', '.eJxVkMluwzAMRP-FZ8OQ5GjLqe1vFIUhUXSt1ktgyekS5N9rpb74RswMH4m5gUOc1ym3bs09TTmiy3Ge2pFyP4cE59cb_M9whotL6WteAlTgMpy5VkLwk-W2lkaqppEV0OjisEU_3DXScnUDTb8rDY4p_vRevBrnEe5vFTwutmuipY0FLgwcRO_wk6biuGEocr2_Wj8yu53q58PjL_vWAdW71G-coJSgLmiDplHGk9aGGxmCUZ1kGhuFXFNjrTfBeu8xoPECpe4CPzFEVqCJUir90PclLj9bB4JZxdj9D9PBblU:1vG4bH:Zo252nJkFveFDA_OP536d7L4ymOnxn-XSO5Lr4QsLfg', '2025-11-18 00:08:39.625713'),
('hnw18uevafk45sh9cn53sicr3cq5in7j', '.eJxVkMFuwyAQRP-Fs2sZs4A3t_Y3qgoteB27dU1kcKM2yr-XpOnBt9XszNuBi3AnSukc196tnDi7D_4WBxF-xvfj-ckOhgmV0gqBtPctoEUwIVjpScsgKpFimGimEOK2ZJcyZU7icLlW4l-jLY-85ClQnuLiPjmPsS-e14v4m8u9HaVQKYuDtEZpiaC6ukWUstOVOK3xa-p5LZFjjMeZi3ebbgQpNaIyyjZYWpqSwk6J61sl7gXclnh1dyeIneYpfPByW9A83-T6UaO-ex7rVD_vnvHySO1QI6WxcBpl2j6A19TargdT_o6bhoJSoe00WOiVYu2BLaEHBNCDR01h0A0N0JbWv-LPhGE:1vLXxu:rIa4VbEbUgsMJTrfGUtFh74kHo2TioktupiYwrJ99Ks', '2025-12-03 02:30:38.480126'),
('hs0sriy1shuwxjdwh39i5is7m7aupzl4', '.eJxVkM1uhDAMhN_FZ4QS8ltObV-jqpCTGBEVkhUJaqvVvnthy4WbNTP-PPId0Pu8pTrgVidKNXqsMadhoTrlUKD_uMP_DD3csJTvvAZoACv03GjBjVSct8YyKUTXAC0Y5z06xh1lDbfq1U8YE-W19XmBx2cDz1vDVmgd4oGVGi6iQ_9F6XBwng-5PUu2z8xpl_btUvn93LqgJizTzvFOcdsF1EwL5XQwbpTIFSoRKHCJ6KUhYfmLYiMz1honne40GcMcH7vxgBYq5fgM_dzi-gs9e_wBxQdpZg:1vK6EZ:6p0WG2cynGIHh4V3r5fTqZSCIcCnG86Rc9JSLHi8tJM', '2025-11-29 02:41:51.826007'),
('i2u9nj6lwc55wnr6bapskg1083c3muyi', '.eJyNkMtOxDAMRf_F6ypK0rymK-A3EKqcxFUjOs2oSQVoNP9OC910BZIX1r328eMOGEJe59rjWkeaawpYU577K9UxxwLd6x1-c-jghqV85CVCA1ihE9a0wirFL8xKIblyDdAV07SVDmlDOSucfgojppnywkK-wqP5m9dKxqXZQv-D99ZAX6iUfWn6vKXlCzq-afs9_Vpo6dM-Shk4iR7DO827g9O0y-x4BPupOezCnk9veTm6TqgRy7hxgtfCyYiGm1Z7E60fFAqNuo0UhUIMylLrxEXzgVvnrFfeSEPWci8GOcDjG8LNgWM:1vK6DI:KVKto89TF6KuTbS7nkqUpVdj8O3MiDqOebXyAEeOEpk', '2025-11-29 02:40:32.053825'),
('ic4o2s8bpy7z66tokrmxe3itgqbjr8ns', '.eJxVkM1uhDAMhN_FZxSFkB_g1PY1qgqZYJaoC9nioLZa7buXbLlwG82MP1u-A3oftyV1uKWJlhQ8phCXbqY0xYGhfb_Dv4YWbsj8HdcBCsAEbelMU9la2lroXUnlCqAZw3WvzjsGWYTLgj7Er404vlxyJnyc4fFRwHNjtzGtXchwpeFk9ug_ackJXq_ZFsep4tk5Yhavp8PfjqkTakKedo5tyJQonTVytK5RdY8WlRod0qh6rcuqMWVVNlRpb7F2cnSa3KBqa0yv1ZihTMz5P_RzC-svtPLxB0oDa_c:1v480K:fjob7wajbGd7y5MFkw5kK1aPaNajiVHuzr4ovBwb9E0', '2025-10-16 01:21:08.480998'),
('im7bwi511dlktwchhn5m2tkoi7t2siyx', '.eJwlyVEKAiEQANC7zLeEa9m6HqOgnwiR2akkcRZ1l0K8e0Hv9zUojMFHj8hrqq5UX6mAbbAn1qdhM89zPHzofQF7bbBkRiq_h8iPkEDA7KsHm9YYBSwvJIc8k9soh3ug_J8uhlFPyhgtjzs5KjmpW-9fkDspow:1v3nJ4:jhTx0kEHdDEwRtAXsGOg94XM0DB7P5TSiYU08TTPHEA', '2025-10-15 03:15:06.073792'),
('jltipdz6cqmk9782lxvdcicig0mhu969', '.eJxVj0tuhDAMhu_iNUJxHiaw61yjqpAJYUClpCKhG8TdBxi6YGf9j8_2CjG4gUd2LixTqmPi5CNU65bBv8ZL6v2UBsdpCFP941Mf2j3zucJ7hupOgb2boMKCpCJjUeSGUOkyg985_A2tn_fGM4Tn6PfoMhwAREGE1ggkpFKo0iIibF8ZnPvrJfq5PpPawE1s2H376XB4HA85v87Iz8xlx_zj9sbjat1QPcf-4DhvVdMZW5TSaE8le26EY9kpch27DrWUxjeiU2gLbslIraloBTctC2dhewH7a3EP:1vGhr0:nfCJT9KZVRSqaIh6GWrGwlJ7XPX4_5u2pYUvdTOLAT8', '2025-11-19 18:03:30.587159'),
('kklajbfx881eobybsy20v41hykdnsyez', '.eJxVj8tuhTAMRP_Fa4TyIg92vb9RVSj4OhdUSioSukH8ewOlC3bWzJmxvUGKOPrJI8Z1zl3KPlOCdtsr-Nf8mgea84g-j3HuvigP8VmY9w3-ZmjvLVCyGVputOTGMC5qaxqtbQXfS_wZn7SUxCvG10QFXcejgHNhlRGmkA3j1llmhIP9o4Jzf7cmWrqTFHDTeo-fNB-Gn6ZDrq8r6pO57FS_3b54XKlb1eDTUHosEknprbC9cU5xSdqqwLXqJTmU3iktFQZkhqHkwXHmQggcPWt6K0ID-y-KK2_5:1vK6su:P_CSPJOd3kBvNTqLYJtArReMKOLjdURtgsp3rVFyP10', '2025-11-29 03:23:32.907576'),
('kwg6z1efjcc8dhmol8ffymruhy4hj6gv', '.eJylUE1vgyAY_i-cjUEBEW9rlh2WdcmSdpelMa-AlZVJI9gua_rfh9Ydet6NvM_D83VB3kkDFqR0Yx9qHyBoj6oL2vL1y_srfxyey-_P8_YJVR8XdByc1D7iyLq96VGCFARAVT9am6DjQepaOqXrkx5Ma_RwQ65Jxou8JHnOy7TIBeOE7BK03qzJ5mzVj2qO29Pb6r8OBJekyGnKMpxRvrsm6K8VjKHTfTASgnF9_aVD55Sf_W7vaHe3Q7SFgKpFlGcsxbTApBTJFPBk1GSM9s7trY7c0UwKWcaEIAXhWORUFDTSS4KusekcoB69HuqZSdHdrQF50P0EgLXTOV1ipDNngX36cFdjtfy6k-rAd1EHxyGUpA2DOLmihaCgMQZJiMxLRjlVhGjWUM1BNFRQytpGMJAtw9DSPKb-BW7YrjE:1vJic7:BzyLntyAE9lAoVEIrNFPZ51pnCzvfbCnBK9ZGNkS_sI', '2025-11-28 01:28:35.082088'),
('m2gx9qv080emht0cu09lf8xm7egch8os', '.eJxVUMtuxCAM_BefIwTkAcmp29-oqoiAu0ENsIqJ-ljtvzdsc8nNmhnPjH0HY23aYh7NlmeM2VuTfYpjwDwnRzC83eF_hgFuhugrrQ4qMBkGoTohdKP6holadK3SFWAwftmlYbcxxFwKPl43_HUpJkov10IzmwI83it4ho4b4Tr64l9zOIGTsZ8YC2OWpcDsaMuemoMmdjl1fz22TlazobkkdMpJYYV2yk5WTk71skOFe_2Ptm6lxBal5lw3shfcNk7wqdsPNNgKrpUupoRE5UX4ffPrDwz88Qfeq20N:1vBkcM:wXBXYQ9AfWOP0VoawI8Qwp-5OE5ogFE3jbcQjBB8eQo', '2025-11-06 01:59:54.172711'),
('m9ws0ye6lmst1w2lcblu8do3vs0kanrm', '.eJxVj8FuhDAMRP_FZ4TiBEzCrfsbVYVMCAsqJRUJvSD-fQNLD0g-WM8zo_EGwduRJ7bWr3NsQuToAtTbnsE_4zUObo6j5Tj6uflxcfBd0nxu8N6hvqdA8kaosSKUZNLkpI1E1Bn8Lv5v7NySLE_vn5NL2nU8EhAFEepSICEZoYxGRNi_MjgLNGtwS3MqpYIbbNl-u_m48DQdOL965KfmOof84_bH43LdogYOQ8rRLKhktFqKXpIosTKKqt6qXlXOqM4YaZTAQlNhE2bZlW3bCy3b1LzAFvYXCs9vgQ:1vC6ar:ufMK-ShgiI5U7bbmC4wrFq33L4GmLnUMvJqkCObScjo', '2025-11-07 01:27:49.713128'),
('mbh3wwzr2cmam1kw4chdh2xeugomo1l8', '.eJxVj0tuhDAQRO_Sa4T8wx92mWtEETI97QGF4AibbBB3jyFkwa5VXfVUtUGKOPrJI8Z1zl3KPlOCdtsr-Nf8mgea84g-j3HuvigP8Vk87xv83dDeKVCyGVpuNGfO6cbWUisnha3ge4k_45OWEnnF-JqoeNfxIHAurDLCWNM0jFtnmREO9o8KzgLdmmjpTqeAm9Z7_KT5ePhpOuT6qlGfnuud6rfbjMeVuqEGn4bCsUgkpbfC9sY5xSVpqwLXqpfkUHqntFQYkBmGkgdXVoYQOHrW9FaEBvZf511wNQ:1vBOTC:K5HMnLHdu-1Td6HKiUI56aeSo5FIZvNWaCN-wotj6_c', '2025-11-05 02:20:58.398924'),
('mdseqwaqkcpndy2v3kg5refiqw2ssph9', '.eJyNkMtuhDAMRf_FaxSFAHmwavsbVYWcxCmoPKYkqI_R_HvJlA2rVt5Y99rH8r0COrdsc-pwSz3NaXCYhmXuJkr94iO0z1f47aGFC8b4saweCsAEbamkqGRdm5rpUmkjdQE04TDuo-8bfaPHaadhFNI8vGaDuWWCW_EXsqklZ4pzUVXqf8iXAu4fdFuktRsyWSg4iRbdG83ZwXHMMjteZ_eZw47s8RTE07F1QvUY-3whUK1sIBN4cIo3xllBlcBQ1taj1Hs1UqDRJVmDprLe-0ZJ1QQutBYhQyPFmPOmz8uwfkHLbz8jMoVl:1vGhlM:S9ufXfEK_a9WnVVtvi3IHOmqO2UQIe9kSXqOC1YdD0c', '2025-11-19 17:57:40.700733'),
('mwpxuhjfskc3sm2wspqhv6fi0uc6zuzt', '.eJxVkE1uhDAMhe_iNYoSUkhg1ek1qgqZ4AxRSTIiQf0Zzd1LpmzYWX7Pn599BzQmbiEPuOWZQnYGs4th8JTnOCXo3-_wX0MPN0zpK64TVIAZeqFa2XaC15y1utWd0BWQR7fsVr9jMLEpeheuG_1OMcQUX69FZiZ6eHxU8Fw6bInWwRW-5HBqjmg-KRQFl6W02ZGWPT2HnNjllP3tmDqhZkxz4XBZa11TM1oS0pKxL1zJdlQcG8kb3ciahG1QoNxP2mUpVSfsJBSqTktboIlSKi-i75tbf6Dnjz_8ZW3T:1vMGbM:KiiGQg9ca5iNSLu9_MJdaecyzMbbtYuBYbQkAxE3oKQ', '2025-12-05 02:10:20.724589'),
('n9eu3xtaa7wfjgnire8zgpe0qnzi0tmg', '.eJxVj0tuhDAQRO_Sa4SM3bYxu8w1ogi1PwwoBEfYZIPm7jGELNiVqqueqndI0U00k3NxW3KfMuWQoNtfFfx7tOUxLHlylKe49F8hj9GXzPsOfxq6OwVKN0PXaNVoIzSqmnPeFFXB9xp_Jh_WUnnG-JxDyW7TQWgaaYxQQjPD0SgUrWkFvD4qOAf0WwprfyYRbp4l9xmW40DzfNj1NaM-M9c51W-3Nx5X64YaKY2Fw4Ti3qGVxHXrURmkwBg5IRxvJWr0QgRpMWgyFg2iHKyR5AbJaEBeVv8C33xwHg:1vEJ2A:37ipBf8Mjgw7jcQ4nMsVYulx-M6NtUFQcqWKB8JQdXI', '2025-11-13 03:09:06.274364'),
('nb0h27nw2ybtqhx67ocdsxc4y0tdypje', '.eJxVkMluwzAMRP-FZ8OQ7GixT21_oygMiqJrtV4CS06XIP_eKPXFN2Jm-DjgFZBo2ebU4ZYGnlMgTGGZu4nTsPgI7esV_mdo4Ywxfi2rhwIwQSuNrmrRWHEqrVSNMqoAnjCM9-gHXgKvFxx5_t14RKHl03v2SlomuL0V8LjYbZHXLmR4ZeEgOqRPnrOD45jlcq9aPjK7HcvnQ_GXfeuAGjAOd47XuuLeG0u21taxMVZa5b3VvRKGak3ScN00zvrGOUeerKtImd7LkyASGRo5xvwf_j6H9QdacfsDRTBtJg:1vGTHg:5gStop8_vtf9PmnDmRqTQZ4_gbMFlDfSDrvH_QAq_9o', '2025-11-19 02:30:04.843648'),
('nim5xakzzfp9uy8ohrkhen0e6p5nmdhb', '.eJxVj0tuhDAQRO_Sa4T8_7DLXCOKkOlpDygER9hkg7h7gJAFu1bVq1L1CjnhEMaAmJaptLmEQhmadavgXwtL6WkqA4YypKn9otKn5868r_B3Q3NvgT1boOHWcMaVlarWxmipdQXfc_oZnjTvkVdKr5F2dhmOBs6FU1ZYZ7Vm3HnHrPCwfVRwDmiXTHN7kgJuWhfwk6bDCON4yPU1oz6Zy8712-2Nx5W6VfUh93uPQyIpgxOus94rLsk4FblRnSSPMnhlpMKIzDKUPHrOfIyRY2C6cyJq2H4B1jVwIw:1vB2NS:g_I6rvt4qRFNaAu4e0VBzxRCnCF6pNm0Gn29GltrXKM', '2025-11-04 02:45:34.597150'),
('nrftuqiyqgq7i7pj4rtt0058yyhva3lt', '.eJxVkE1uhDAMhe_iNYogv8Cq7TWqCplghqgDmeKgthrN3UumbNhZfs-fn30H9D5uS-pwSxMtKXhMIS7dTGmKA0P7fof_Glq4IfN3XAcoABO0lbOylsqWShirrDG2AJoxXHfrvGOQRbgs6EP82ojjyyVrwscZHh8FPDd2G9PahQyXGk7NHv0nLVnB6zW3xRFVPD2HzOL1FPztmDqhJuRp59iGTIWls6YcrWtk3aNFKUeHNMpe60o1plJVQ0p7i7UrR6fJDbLeT-u1HDOUiTn_h35uYf2Ftnz8AUDUa-4:1vIcwl:KMMCCgyQ-4RB7gNs_8in3MqQ0acoGwxmDKAnk9FTwBc', '2025-11-25 01:13:23.598173'),
('ntp09apswtpiqyt7m86so5m9lxwel84l', '.eJxVj0tuhDAQRO_Sa4T8w26zy1wjilDjsQcUgiNsskHcPYaQBbtWddVT1QYpupEmci6uc-5SpuwTtNtewb9Gax78nEdHeYxz9-XzEJ_F877B3w3tnQIlm6HlRnNmEbWpjWqY0rqC7yX-jE-_lMgrxtfki3cdDwLnApURBk3TMI4WmREW9o8KzgLdmvzSnU4BN60n9-nn40HTdMj1VaM-Pdc71W-3GY8rdUMNlIbCQee9lIQCe2Ot4tJrVIFr1UtvnSSrtFQuOGaYkzzYsjKEwB2xpkcRGth_AeWQcDM:1vBOGR:kp2hp0v9ErmGY1kVfMMT8DF137AwplCa4qOrp3neXdQ', '2025-11-05 02:07:47.761925'),
('oerqu6qtrwmh9z5nx2tkgmpmllzgq40f', '.eJxVkM1uhDAMhN_FZxSRnyXAqdvXqCrkBBui8rMiQW212nfvZsuFmzUz_jzyHdD7dV9Sh3saaUnBYwrr0s2UxrWP0H7c4X-GFm4Y4_e69VAAJmilrYySqrG1UKUystEF0IxhekaHwIm2OJi3ISvCrzM8Pgt43en2SFsXMlLCSXPov2jJBk5TlsXRT7wyhx3F9dT2_dg6oUaM45PDlhQz18i27BU6RVwbVzlm9CVbqbw1Uhv2le9NpXWpfdOwvlgrL8aSy9BIMean0M8tbL_Qlo8_kNlpOg:1vOSO8:jxsFDKAIozSvCzlKNwHUrdfHkKymfGBkJ5zmImtgzjg', '2025-12-11 03:09:44.165747'),
('ow6q1okxhj34ey9jc65ahjo56z528isd', '.eJxVUMtuxCAQ-5c5RwhIeCSnbn-jqiIC0w1qgFUg6mO1_96wzSW3ke2xPXMHY23aYhnNVmaMxVtTfIpjwDInl2F4u8P_DAPcTM5faXXQgCkwMCWZolQLTXoq2r6VDWAwftmlYbcxmbgUfLxu-OtSTDm9XCtNbArweG_gGTpuGdfRV_-WwgmcjP3EWBmzLBUmR1vy1Bx0JpdT99dj62Q1mzzXBKkcZ5Zpp-xk-eRUzyUqbJn8EK3gHAVyvd_U8Z5R2zlGJ6n6zqBgVCtdTTPmXF-E3ze__sBAH3_dp20M:1vDurz:a7yqes9wFq_pqYyyzijHqWIB7hrweEMw-CVEtQZXQuU', '2025-11-12 01:20:59.038336'),
('pkvekadx25amqi53ghx67k716uon7x94', '.eJxVkMluwzAMRP-FZ8OwrGqxT01_oygMiqJrtV4CS06XIP_eKPXFN2Jm-DjgFZBo2ebU4ZYGnlMgTGGZu4nTsPgI7esV_mdo4Ywxfi2rhwIwQSuMFlJZqepSykaIWhXAE4bxHv3AS-D1giPPvxuPWGnx_J69kpYJbm8FPC52W-S1CxleWziIDumT5-zgOGa53KuWj8xux_J0KP6ybx1QA8bhzvFa19x7Y8lKbR0bY4VV3lvdq8qQ1CQMy6Zx1jfOOfJkXU3K9F48VURVhkaOMf-Hv89h_YG2uv0BNrptFw:1vCTlg:TWca7TW5EM2lJYBzCFH8BLT49UikLe7gaWJJMmPr-r8', '2025-11-08 02:12:32.358462'),
('pvrm0ub8phu96ixxpsc3gtwp8287lw82', '.eJxVj0tuhDAQRO_Sa4T8xTa7zDWiCJme9oBCcIRNNoi7xxCyYNeqrnqq2iBFHP3kEeM65y5lnylBu-0V_Gt-zQPNeUSfxzh3X5SH-Cye9w3-bmjvFCjZDC032knTMKlq3ijFnarge4k_45OWEnnF-JqoeNfxIHAurDLCWKM149ZZZoSD_aOCs0C3Jlq60yngpvUeP2k-Hn6aDrm-atSn53qn-u0243GlbqjBp6FwLBJJ6a2wvXFOcUmNVaFs6CU5lN6pRioMyAxDyYPjzIUQOHqmeyuChv0X20RwKA:1v4A4o:CPh2QlycOFELXGueEkMkf8VqyoQhDRyGVfWFVeyMEAI', '2025-10-16 03:33:54.187385'),
('q2dqmvcgjabzpgkm9l04rbuhkrs195ym', '.eJxVkE1uhDAMhe_iNUIJDj9h1ek1qgoZxxRaICMS1FajuXsnUzbs7Pfsz0--ATH7fY0d7XGUNU5McfJrt0gcvQvQvt3gv4YWrhTCt98cZEARWl1XRheoEXOLpVFNk4EsNM2P0U9aJLx8pC5nv8D9PYPnjW4PsnVTwhUWTmJP_CVrcmiek5wf4fLnzGGH_HKK-npsnVAjhfHBaZixwdpYy0ZL6UgLsTK1FjW4vpdKxBRYlIMd2OGgpMJKkcXaOiwHxQkaJIT0Efm5TtsvtOr-B_g0Z74:1vO50v:JomGfvy3AhscAjcIcbaMVpArHDldeuI8S__D8j9L2Tk', '2025-12-10 02:12:13.967531'),
('q2hi6bdtzv8ritcf33ngrf4c5730co5i', '.eJxVkM1uhDAMhN_FZxSRkB_Cqe1rVCtkglmiAtmSoG212ncv2XLhZs2MP4_8AHQubEtqcUsjLck7TD4s7UxpDH2E5vMB_zM0cMMY72HtoQBM0HCjK26kFppZXSlb2gJoRj_t0XnHYGT-uqDz4XujGN6u2WMuzPC8FPC62G6R1tZnuJBwEjt0X7RkB6cpy-yoyl6Zw47s_VT849g6oUaM487RlhTH0mhVDtpYUXeoUYjBIA2ik5JXVvGKW6qk01ibcjCSTC9qrVQnxZChkWLM_6Gfm19_oSmff0qia_g:1vK6GQ:5xWNc96GpS9HxW7EjjRurN0qt9l5NuXtFaapU0hjQqM', '2025-11-29 02:43:46.986488'),
('q8ykip2vsh28xv0tg23kxsfrv280srxa', '.eJxVjMsOwiAQRf-FtSHQgVJcuvcbyDAz2KqBpI-V8d-1SRe6veec-1IJt3VM2yJzmlidVRfV6XfMSA-pO-E71lvT1Oo6T1nvij7ooq-N5Xk53L-DEZfxWw9EMEBwMZKz4hmtIBkXrJjCOUsv4jrofImFGIqRHnqDEUJk8MWQen8AH0U4oA:1v9vXj:GRG5d8Cf2hj1osuw1Njb9k9DqPSBaZo82NEt65g1ZBg', '2025-11-01 01:15:35.286332'),
('q9hjhwwxg7uduqhu1jizmcz4fwfyux6q', '.eJxVkM1uhDAMhN_FZ4QSsiSBU9vXqCrkOKak5WdFwvZnte_ezZYLN2tm_HnkKyDRss2pwy0NPKdAmMIydxOnYfER2tcr_M_Qwhlj_FpWDwVgglYarYQ16qRLI5Wt6gJ4wjDekx94CbxecOT5d-MRhZZP79kraZng9lbA42C3RV67kNmVhYPokD55zg6OY5bLvWn5yOx2LJ8PvV_2rQNqwDjcOV7rintvLFmlrWNjrLS191b3tTCkNEnDqmmc9Y1zjjxZV1Ftei9PgkhkaOQY83v4-xzWH2jF7Q_0tWzt:1vJjYh:jtVUqASCyfYAX9fpRj9IfGx9byw7GIj__pYJFqUwj4o', '2025-11-28 02:29:07.839752'),
('qftaf2f4uhlvqzvlinsws33lh8sjv6yq', '.eJxVkM1uhDAMhN_FZ4QSKEng1O1rVBVyHFPSBliRsP1Z7bt3s-XCzZoZfx75Cki0bHPqcUsjz8kTJr_M_cRpXFyE7vUK_zN0cMYYv5bVQQGYoJNa1VLXbdWW2mgjVFMAT-jDPfqBF8_rBQPPvxsHFEo-v2evpGWC21sBj4v9FnntfYZXBg6iRfrkOTsYQpbLvWr5yOx2LE-H4i_71gE1YhzvHKdUxYPThkytjGWtjTSNc0YNjdBUK5Ka67a1xrXWWnJkbEWNHpx8EkQiQyPHmP_D32e__kAnbn9OLm0v:1vK65B:w74VTu9olErVko9rR0cq2RYe3MOXxFVKwrpbu7GXhps', '2025-11-29 02:32:09.814699'),
('r6wbo4u4seme6ydica2mvbz6k31zgald', '.eJxVkMtuhDAMRf_Fa4SSQB6wavsbVYVM4imoQKY4qI_R_HvJlA1eWb7Xx1e-AXoftyV1uKWBljR6TGNcupnSEAND-3qD_x5auCLzV1wDFIAJWmlNraS0jSqVaSpVmQJoxnHarfOOQf7c6BcDVrV7es9C6eMM97cCHue6jWntxkzWCk7DHv0HLVnBacrj8shZPjyHzOXzKfXLsXVCDcjDzgnSiNpTkIha9hcrKhucanRPQqIzGgNpETxZNBenlJMq7F5XNXsZ7_oMZWLOz6Hv67j-QCvuf7Aja1Q:1vOS4u:eKQdIcfmRchtZAoXcWCtxHv21U9ckOzuNbvvInoRbnE', '2025-12-11 02:49:52.291825'),
('rpqohxxaadcfmb0op8nkcgap5co6aexk', '.eJxVkMFuwyAQRP9lzxYCbAP2qelvVJGFYRuj2hB5sdI2yr83pL74tpqZfbPaO1jn0hbzYLc8YczB2RxSHBbMU_IE_ccd_mfo4WqJbmn1UIHN0AuthDZa6ZrJhkve1RXgYsP8jC5PjCXm0xLiZcNfn2Ki9HYpNnNpgce5glfpsBGuQyj8msNBHK37wlgcO89FZvu17JXZbWKnw-3v-9YBNVmaSoPSXgonjNdudHL0upMKNdZCfbZ1KyW2KA3nppGd4K7xgo9Kd43FVnCjTYESEpUX4fc1rD_Q88cf2RltBw:1vEHSD:ut2bEatHjQ37Yv2_BKaJnkFOh710rSF1wegEOm2y_6M', '2025-11-13 01:27:53.275744'),
('rqne5rx8u4bpgm8aggtezpc19bv3ny38', '.eJxVUEFuhDAM_IvPKAoEyIZTt9-oKmQcp6QFsiJBbbXav5dsuXCyPTMej3wHJArbknrc0shL8oTJh6WfOY3BRuje7vDfQwc3jPE7rBYKwARdqVtVamVaKZRu9loAz-inXfmJM8eXjzwJCjM83gt4nui3yGvvs1tl4AQOSF-8ZAanKcPiyCaemoOO4npK-npsnaxGjOPucyFSF6VrY6guubFYMpKsdcnS2WHglrmuVNU448gqJ7lVrUSjtLGqcZKyaeQY80P45-bXX-jk4w-6nGeW:1vK65g:hCfrAR1xIgMDU9eY5EuKzEbjlPFsaqxR6-Yn6SvSZS0', '2025-11-29 02:32:40.400442'),
('rr8fz173qi4r0zxocv1pk4hm0gl4mfc5', '.eJxVkM2OgzAMhN_FZ4TIDwQ4bfc1VhUywYZogVQkqLuq-u7bdLlws2bGn0d-AFrr9zV2uMeJ1ugsRufXbqE4-SFA-_WA_xlauGEId78NkAFGaIWptBSyMWWuZKllnQEt6OZXcnQcaQuj_hiTklu_wPOawftMtwfaOpeIAk5aj_ab1mTgPCc5P-rl78xhh_xyKvt5bJ1QE4bpxWFDkplrZFMMEntJXOu-6pnRFmyEtEYLpdlWdtCVUoWyTcOqNEaU2lCfoIFCSD-hn5vbfqEtnn9LCGkK:1vOSO3:hPRkfDrhPAJRhjKV7AtanhpYEmXxWlC-ZMGE5Iyg9-M', '2025-12-11 03:09:39.906647'),
('sh1okdrscgphfum3cejw6lgt7qrv94tx', '.eJxVkM1uhDAMhN_FZ4SSsCSBU9vXqCrkOKak5WdFwvZnte_ezZYLN2tm_HnkKyDRss2pwy0NPKdAmMIydxOnYfER2tcr_M_Qwhlj_FpWDwVgglYaLZVR1upSnmqlhS6AJwzjPfqBl8DrBUeefzceUWj59J69kpYJbm8FPC52W-S1CxmuLBxEh_TJc3ZwHLNc7lXLR2a3Y_l8KP6ybx1QA8bhzvFaK-69sWQrbR0bY6Wtvbe6r4WhSpM0XDWNs75xzpEn6xTVpvfyJIhEhkaOMf-Hv89h_YFW3P4APZdtHg:1vC7XC:SIB-iZDenOgDtOQUwUwT_j9kmFq2aLOb_2lbMHo1XFg', '2025-11-07 02:28:06.194866'),
('t0ladtpwi1swo35ykfcilpj4wlhrcruv', '.eJytks1OwzAQhN_F58iy1_HGyQl4DYSije00hvyUOCnQqu9ODT2QE5fcVjO730qjuTCydlrHpaZ16fy4BEtLmMZ68Es3uciq5wv7nVnFjhTjxzQ7ljFaWCULBCUFCM2FEUJjnjE_UOhvq-Ewkg3TiXo_nlffE0qAh0NyuZ0Gds3-40qQhmswShrYlatz4AaNlqXalYuy4JiXWuG-WI1cFVKpYt8Y0CheGq1AmD25IARyIaCQ-k8OJ4rvqz-_0in4OTE30JeM1dHHmIrnP49h_mKVuGmpk_Ua_VyH9C8XbCM2ZN_8mBzq-yTze5n5z87djvxxU-2n-9UG1VHsEkdbbA3IxpTOWSTroMHCONU0oLwrS2hbWd5UAWSsNV4SomtzFFQogoZdvwF1ABGM:1vGTrC:V3nXQd_-Xoh5yX8id4mIWfr4piV75rdImSg203Ltow4', '2025-11-19 03:06:46.034025'),
('t6raqsnibin8grlq15pijb52m9o65xu1', '.eJxVkE1uhDAMhe_iNYog5IewanuNqkImmCHqQKY4qK1Gc_eSKRtWtt6zPz_5Duh93JbU4ZYmWlLwmEJcupnSFAeG9v0O_z20cEPm77gOUAAmaCurXW1rraXYi7WuKYBmDNd9dN4xyCJcFvQhfm3E8eWSPeHjDI-PAp4Xu41p7UKGSwUnsUf_SUt28HrNsjiiiufMYbN4PQV_O7ZOqAl52jnGka6wtEaXo7FONj0alHK0SKPslapqp6u6clQrb7Cx5WgV2UE2RuteyTFDmZjzf-jnFtZfaMvHH1GGa_8:1v49Qm:7bROMoEAN8XAwdhlGk0fX02JK_YAbKcNDBYOqT-K-IU', '2025-10-16 02:52:32.395741'),
('t7dl657x6i1j3yucml7bdlecwjfc678w', '.eJxVkMFugzAQRP9lzwgZ2xibU9vfqCq02EtxayDCJkkb5d8bp1y4rWZm3472Bmjtss2pwy2NNCdvMfll7iZK4-IitO83-J-hhRPGeFlWBwVggrZqlORVVRtRGqaFkaoAmtCHR_SMgebfjQJ-4dnTqir-8pm90i4T3D8KeF7stkhr5zO8FnAQe7TfNGcHQ8hyuVctn5ndjuXrofjbvnVAjRjHB8c0jEvTo6sH4YSUmlnXK8YEDSi0I-c4SsdroS23Q2ObwfRKM8ktOklKZ2ikGPN_6Hry6w-07P4HPrZtAg:1vOS1h:KIgVeQmi1uRbUeczzsfm16M5hK45kon5iSO2Y8PLW0c', '2025-12-11 02:46:33.936159'),
('tot9pq7x91h4nfrgm4fbj8kdt2kfph5e', '.eJxVkNFugzAMRf_FzwglJCQNT-t-Y6qQccxgA1KRoG6q-u9rOl54s--1j698ByQK25Ja3NLASxoJ0xiWduY0BB-h-bjDfw0NXDHGW1g9FIAJGmmNklZLJ0pTSSF1ATzjOD0nv3Dm-PaZu5LCDI9LAa8T7RZ5bcdMqxwcxA7pm5fs4DRludyzla-Z3Y7l-ZD0fd86oAaMw5NzIlInZbVzpCXXHiUjCW0li953HRtmXamq7l1PXvWCjTICnbLOq7oXlKGRY8wP4Z_ruP5CIx5_pZZnfw:1vK69O:t6XJMBq_EHN5UqQG_OWO4gbGJhufniD-omL_blZ5SY0', '2025-11-29 02:36:30.647592'),
('v508r3mdzrq1l21xlv55evufmck06gx9', '.eJxVkM1uhDAMhN_FZ4SSsCSBU9vXqCrkOKak5WdFwvZnte_ezZYLN2tm_HnkKyDRss2pwy0NPKdAmMIydxOnYfER2tcr_M_Qwhlj_FpWDwVgglYarZQ6CSVKWVtV1QXwhGG8Jz_wEni94Mjz78YjCi2f3rNX0jLB7a2Ax8Fui7x2IbOVhYPokD55zg6OY5bLvWn5yOx2LJ8PvV_2rQNqwDjcOV5rxb03lmylrWNjrLS191b3tTBUaZKGq6Zx1jfOOfJknaLa9F6eBJHI0Mgx5vfw9zmsP9CK2x_f6GzY:1vG6y4:9zm62EW9w5ytICqF_-yddUeIcx61HP8cCKBEuOxzA_I', '2025-11-18 02:40:20.189754'),
('vauk7qjj2udbd6e9sy8j7t2scrsll17v', '.eJxVkM1uhDAMhN_FZ4QSKEng1O1rVBVyHFPSBliRsP1Z7bt3s-XCzZoZfx75Cki0bHPqcUsjz8kTJr_M_cRpXFyE7vUK_zN0cMYYv5bVQQGYoJNaSamNaJuykUqZtgCe0Id78gMvntcLBp5_Nw4olHx-z15JywS3twIeB_st8tr7zK4MHESL9MlzdjCELJd70_KR2e1Yng69X_atA2rEON45TqmKB6cNmVoZy1obaRrnjBoaoalWJDXXbWuNa6215MjYiho9OPkkiESGRo4xv4e_z379gU7c_gD9Smz2:1vBisJ:YQYxk39b53CoYuNTpV5ZAbeaHNlf0LHKZcIHF2l3Xx0', '2025-11-06 00:08:15.535019'),
('vc8kxbs4yn4e0if6d49i0btu354nagzq', '.eJxVkEFuhDAMRe_iNUIJSQhh1ek1qgoZxxRaICMS1FajuXsnUzbs7P_t5y_fAInCvqYO9zTymibCNIW1WziNwUdo327wX0MLV4zxO2weCsAErbS1MrIxSpeN1ZUzBfCC0_yY_MSF48tH7koKC9zfC3ie6PbIWzdlWuXgJPZIX7xmB-c5y-WRrXzOHHYsL6ekr8fWCTViHB-chkg1ymrnSEs2HiUjCW0li8H3PdfMulKVGdxAXg2Ca1ULdMo6r8wgKEMjx5gfwj_XafuFVtz_ALx-Z5g:1vLXjK:ed1Wj9dCcIUWhjFsApTW0BUnFbH1y1AwPh4fHaWkUbQ', '2025-12-03 02:15:34.927136'),
('vczpc8gizs6m8hpeaf8q4tpfk9wqaig3', '.eJxVkMluwzAMRP-FZ8OQbGuxT21_oygMiqJrtV4CS06XIP_eKPUlN2Jm-DjgBZBo3ZfU455GXlIgTGFd-pnTuPoI3esF_mfo4IQxfq2bhwIwQSeNroU1dWNKqRplVQE8Y5huyQ88B97OOPHyu_OEQsun9-yVtM5wfSvgfrDfI299yOzKwoPokD55yQ5OU5bLo2l5zxx2LJ8fer8cWw-oEeN443itKx68sWRrbR0bY6VV3ls9KGGo1iQN123rrG-dc-TJuoqUGbxsBJHI0Mgx5vfw9ylsP9CJ6x_3kGzw:1vJjYh:UrWfYPUHZomIV7W71iGA_D6drLXEl7JsxFvib-tsIh4', '2025-11-28 02:29:07.940484'),
('vp6n38iy5qokftw7xk36rczcl3ebf25f', '.eJxVkM1uhDAMhN_FZxSRkD84tX2NaoVMMEtUIFsStK1W--4lWy7crJnx55EfgM6FbUktbmmkJXmHyYelnSmNoY_QfD7gf4YGbhjjPaw9FIAJGm5ULSy3lWTcKqukKYBm9NMenXcMRuavCzofvjeK4e2aPebCDM9LAa-L7RZpbX2GCwknsUP3RUt2cJqyzI6q7JU57MjeT8U_jq0TasQ47hxdk-JYGq3KQZu9eocahRgM0iA6KXlVK17xmirpNFpTDkaS6YXVSnVSDBkaKcb8H_q5-fUXmvL5B0y9a_o:1v3lZS:GG1fRSAI0w6uwL6WYGNnJpUcUBjlVj9u-l2XTgqdrDo', '2025-10-15 01:23:54.198652'),
('wn7ayq8ruzk4e2x78ykgimm5zndtrc3w', '.eJxVj0tuhDAQRO_Sa4T8wx92mWtEEWp67AGF4AibbBB3jyFkwa5VXfVUtUGKNOKERHGdc5cyZp-g3fYK_jVc8-DnPBLmMc7dl89DfBbP-wZ_N7R3CpRshpYbzZmziuvaCS6tUBV8L_FnfPqlRF4xviZfvOt4EDgXVhlhrGkaxq2zzAgH-0cFZ4FuTX7pTqeAm9Yjffr5eOA0HXJ91ahPz_VO9dttxuNK3VADpqFwLHkvJVphe-Oc4tJrqwLXqpfekUSntFQUiBlGkgdXVoYQOCFreitCA_sv2VBwJg:1vBO9A:9CaYE98X9iYGWK0e6Bq6C-xvp-yAhJ3pOBNMkwxWCIA', '2025-11-05 02:00:16.941997'),
('xjf97hx01pywtdcrcsq3iukk7sc68uaj', '.eJxVkM1uhDAMhN_FZxQlIT_Aqe1rVCtkglmiAtmSoG212ncv2XLhZs2MP4_8AHQubEtqcUsjLck7TD4s7UxpDH2E5vMB_zM0cMMY72HtoQBM0AhrSlFxbi3TqlRKVwXQjH7ao_OOwcj8dUHnw_dGMbxds8dcmOF5KeB1sd0ira3PcKngJHbovmjJDk5TltlRlb0yhx3Z-6n4x7F1Qo0Yx51jatICuTWaD8bWsurQoJSDRRpkp5Qoay1KUVOpnMHK8sEqsr2sjNadkkOGRoox_4d-bn79hYY__wA_ymvt:1vK7gL:xc9ZFZfMlW_srWQLtXtSVwEKA7Sc47efi1yDutJj-dI', '2025-11-29 04:14:37.573525'),
('xsm4kiip2ddrtkcd4bdtf19fd0wv24ys', '.eJytVNlS6zgQ_ZU7fsbB-0LVVI0TQnIJOGSDkKkplyzLjmJbciQ7gdzKv4_sLDDA8HTfJPWi06dP9y-JU4hBBiCkFSkDXoIScenq1_7io6W5ZTTBRJilgtENjhCrzziSrqSE0iRD0oUEiqIFM4xETGPQdc01HdNQTdeW11G0dkoVa3hTqYVdRSpPM1pWOU1XpstXLRHNW4dcFUcMUlKKTC1Ic0lAOoI5fUqqLLuQar_g7fqG7A1T1SBRFVN1dMO1bMO2DMU2DcVyhTUDvAyOlR1yRIKFYEUxQee06KVkIBAG0PzOBUnSsiwLfnV5eYR1At6gFWB3xe8sXySsfiufosNV-A0ty_q3qKKwgqKh4gHlAGfiLavSFoAVAX99sgYbxHCMa9pKViGBuQyWgC9F1DSEpvLcHsLdPCP6NXR9rV9tRSABORL2u9nAm0x-3HTHvudfD394nZnv_XjwxmNPOBUYlhVD70jPlvrXhV2CS6-TOBQO-rtbv2f5onFP_izsRTSYz2_6ob5MAwOYkRl2fS1pU33cHk8JT_7kriVD8VmCN4gEX-MS5hjkOHs92f-LEwOhTtW2dKWmVKt1U5webMXV9vuDYJsZApxvKatp_uPmdcqcn-2hdWdalrvarqMpuc_VkQ4mGD_4036v-6jtrNmXcsU84FWB2CFxDDIumH-bCELzkH1dCihQluGIfqoDUsYQ_d9mH1IGFa8Aw0c3UY0cI0YAiWgTIReAMVBLgwcgymu8R2wJIojVYb7UoAewFJSfNFOXU4I4fiuFf9KVeCoY3og5PXsdXCAoMSVBSVNEav06sWUDKPoKNEc24hjJrgKRHEZAdYDiIlWPBYbGPYAMiYRRUPdQ0hTNlFVVVo2pol5pxpVptAxVX9R7qFmTxzUIUbMLDg1pVgc4r6IUogDSCJ3gs4Nlf5oWEEVMhNcb9-9vVtr3g_eRGsFLDtjr4br_RzwsKUFnTPXlHZ1H8o58vQchVkeDQT3v3XeQTvy-As1tAcWbYmugcYO2U7edrduZfp8Eqa1Ow7i9XrDrsdztT7Rhn-TEjhfX49uQ9LdlbwFuOzOSFOXLk1Dveme-bLAd3laPN3l6m1ay_myNfpIMk93EL1yEssm1s-iNPSVlYTKsnlI0XwZJ2qHb4cs8Q2m46fio33GUu5X83B1o7aFBlsmgkAnfRglxo-5qeYfxcKI_ThYBfX56ucs472OozMkwLB3QSZ4H3iiZeOPZ5GbU7821e0zdbCTze1kPTW4NH7xiLZP7kaIp1lk4HAnp1KKRmoHHrFb8RxFpjYj0lu7YQkT7_b-eL3ku:1vJiYY:Pt6j1FSeSDUB3ePvb1ZjHi8s_699sltDnYDSX5Y3zMQ', '2025-11-28 01:24:54.427936'),
('xvglzxfub07qsl9csv03wipfgc8xnv8g', '.eJxVUMtuhDAM_BefEQohkIRT29-oVshJnBKVx5YEbdvV_nvJlgvyxZoZz4x8B7R22ebU45YGmlOwmMIy9xOlYXERuvc7_O_QwRVjvC2rgwIwQVfJVrBaCMZLrWsupSqAJgzjLv3a6BcdTrsbRt7ql49MlHaZ4HEp4BnXb5HWPmRnLuEEGrSfNGcGxzHD5dGzfGoOOpavp9Zvx9XJasA45ARPQhpP2jNvJWu0NZxqjr4SxmGr9mlajlpVZDTq2jjnGtnKxjOuFPfZNFKM-Tn0fQ3rD3Ts8QfR7mun:1vNhvn:Y1iIr3HuXgIpBinebEkwlBEtzP5Wuo2Us9gcF0N4fX0', '2025-12-09 01:33:23.037305'),
('z32rmrbi07p9pnzhewhg9edbkyu1g236', '.eJxVkMFuhDAMRP_FZxSREBLCqe1vVBUywSxRF7LFQW212n8v2XLhZs2Mn0e-A3oftyV1uKWJlhQ8phCXbqY0xYGhfb_D_wwt3JD5O64DFIAJWmlNaUxlnBXONVJbVQDNGK57dN4xyCJcFvQhfm3E8eWSPeHjDI-PAp4Xu41p7UKGKw0nsUf_SUt28HrNsjiqimfmsFm8noq_HVsn1IQ87RzjqJZYWlOXo7FONT0aVGq0SKPqtZaVq2UlHVXaG2xsOVpNdlCNqeteqzFDmZjzf-jnFtZfaMvHH1Gwa_8:1v9Z3a:I4yUjdFUMucwirLN6aOSjuDHqjlmyA-ceqqCzkS_nac', '2025-10-31 01:14:58.024308'),
('zhfyxkl2l6bxb1htqxfb5k6n9vdv5iz3', '.eJxVkEtuwzAMRO_CtWFI_kiyV22vURQGRdG1Wn8CS07SBrl7o9Qb74iZ4eOAN0CiZZtjh1sceI6eMPpl7iaOw-ICtO83-J-hhROGcFlWBxlghFZqVUpdVsbkQlVVoYoMeEI_PqJfePa8nnHk-XfjEYWSL5_Jy2mZ4P6RwfNitwVeO5_ghYGDaJG-eU4OjmOS871q_szsdshfD8Xf9q0DasAwPDhOqYJ7pw2ZUhnLWhtpaueM6muhqVQkNZdNY41rrLXkyNiCat07WQkikaCBQ0j_4evJrz_QivsfPZ1tHg:1vK5y4:BWgvvJw1p9bWFvZQNdAId5tjh89VicQOD_nQWZmQ2UY', '2025-11-29 02:24:48.115090'),
('zvx9xfn74j23ia17f9x2939py40g8xde', '.eJxVkMFuhDAMRP_FZxSREBLg1PY3qhUywSxRgWxx0LZa7b-XbLlws2bGzyM_AJ0L2xJb3OJIS_QOow9LO1McQ8_QfD7gf4YGbsh8D2sPGWCERlpTSFtURgmrra5UBjSjn_bkvFOQhb8u6Hz43ojD2zV5woUZnpcMXgfbjWltfWIrDSexQ_dFS3JwmpIsjqbilTlsFu-n3h_H1gk1Io87x9RUSsytKfPB2FpVHRpUarBIg-q0lkVdykLWVGhnsLL5YDXZXlWmLDuthgRlYk7voZ-bX3-hyZ9_-wFrwA:1vK646:ZRQEVCGeAJUaAEqNuP1bhVZXUDbriY9W6InIR6AiesQ', '2025-11-29 02:31:02.779591'),
('zxrm8vn4v2df7aqjfyhf9pz4refnnv2r', '.eJxVkMFuhDAMRP_FZxQlISSEU9vfqFbIBLNEBbIlQdtqtf9esuXCzZoZP4_8AHQubEtqcUsjLck7TD4s7UxpDH2E5vMB_zM0cMMY72HtoQBM0AijeWmtUZxJKURZF0Az-mlPzjsFI_PXBZ0P3xvF8HbNHnNhhuelgNfBdou0tj6zpYKT2KH7oiU7OE1ZZkdT9socdmTvp94fx9YJNWIcd462VAnkRld80MbKukONUg4GaZCdUqK0lSiFpVI5jbXhg1FkelnrquqUHDI0Uoz5PfRz8-svNPz5B-5ua7M:1v8SOC:aKhTNv-UVoEhlf8Upgs90jaWRGsmA5hbJjWBCJVdTHQ', '2025-10-27 23:55:40.245290');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_site`
--

CREATE TABLE `django_site` (
  `id` int NOT NULL,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'localhost:8000', 'Localhost');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrega_mensaje`
--

CREATE TABLE `entrega_mensaje` (
  `entrega_id` int NOT NULL,
  `estado` varchar(10) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `id_usuario` int NOT NULL,
  `mensaje_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento`
--

CREATE TABLE `evento` (
  `evento_id` int NOT NULL,
  `titulo` varchar(120) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `fecha_evento` date NOT NULL,
  `creado_en` datetime(6) NOT NULL,
  `actualizado_en` datetime(6) NOT NULL,
  `id_usuario` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `HistorialBusqueda`
--

CREATE TABLE `HistorialBusqueda` (
  `id_search` int NOT NULL,
  `term` varchar(150) NOT NULL,
  `fecha_creacion` datetime(6) NOT NULL,
  `id_user` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `HistorialBusqueda`
--

INSERT INTO `HistorialBusqueda` (`id_search`, `term`, `fecha_creacion`, `id_user`) VALUES
(149, 'test', '2025-11-26 02:37:07.267908', 29),
(150, 'test', '2025-11-26 02:37:12.636650', 29),
(151, 'test', '2025-11-27 01:55:01.047255', 29);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `HistorialDeRegalos`
--

CREATE TABLE `HistorialDeRegalos` (
  `id_regalo_log` int NOT NULL,
  `fecha_creacion` datetime(6) NOT NULL,
  `id_user` int NOT NULL,
  `id_item` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insignia`
--

CREATE TABLE `insignia` (
  `id_insignia` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insignia_otorgada`
--

CREATE TABLE `insignia_otorgada` (
  `id_ins_otorgada` int NOT NULL,
  `date_awarded` datetime(6) NOT NULL,
  `id_insignia` int NOT NULL,
  `id_usuario` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invitacion_evento`
--

CREATE TABLE `invitacion_evento` (
  `invitacion_id` int NOT NULL,
  `estado` varchar(10) NOT NULL,
  `enviada_en` datetime(6) NOT NULL,
  `respondida_en` datetime(6) DEFAULT NULL,
  `emisor_id` int NOT NULL,
  `evento_id` int NOT NULL,
  `receptor_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `item_en_wishlist`
--

CREATE TABLE `item_en_wishlist` (
  `id_item` int NOT NULL,
  `cantidad` int UNSIGNED NOT NULL,
  `prioridad` varchar(10) NOT NULL,
  `notas` longtext,
  `fecha_agregado` datetime(6) NOT NULL,
  `fecha_comprado` datetime(6) DEFAULT NULL,
  `id_producto` int DEFAULT NULL,
  `id_wishlist` int NOT NULL,
  `id_producto_externo` int DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `like`
--

CREATE TABLE `like` (
  `id_like` int NOT NULL,
  `tipo_like` varchar(12) NOT NULL,
  `fecha_like` datetime(6) NOT NULL,
  `id_comentario` int DEFAULT NULL,
  `id_post` int DEFAULT NULL,
  `id_usuario` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensaje`
--

CREATE TABLE `mensaje` (
  `mensaje_id` int NOT NULL,
  `tipo` varchar(10) NOT NULL,
  `contenido` longtext NOT NULL,
  `metadatos` json DEFAULT NULL,
  `creado_en` datetime(6) NOT NULL,
  `editado_en` datetime(6) DEFAULT NULL,
  `eliminado` tinyint(1) NOT NULL,
  `conversacion_id` int NOT NULL,
  `id_usuario` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificaciones`
--

CREATE TABLE `notificaciones` (
  `notificacion_id` int NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `titulo` varchar(120) DEFAULT NULL,
  `mensaje` varchar(255) DEFAULT NULL,
  `payload` json DEFAULT NULL,
  `leida` tinyint(1) NOT NULL,
  `creada_en` datetime(6) NOT NULL,
  `leida_en` datetime(6) DEFAULT NULL,
  `usuario_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `notificaciones`
--

INSERT INTO `notificaciones` (`notificacion_id`, `tipo`, `titulo`, `mensaje`, `payload`, `leida`, `creada_en`, `leida_en`, `usuario_id`) VALUES
(2, 'solicitud_amistad', 'Nueva solicitud de amistad', 'Tia te envió una solicitud de amistad', '{\"type\": \"friend_request\", \"request_id\": \"32\", \"from_username\": \"tiaturbina\"}', 0, '2025-10-23 02:36:14.005483', NULL, 29),
(3, 'solicitud_amistad', 'Nueva solicitud de amistad', 'Pessi🥶 te envió una solicitud de amistad', '{\"type\": \"friend_request\", \"request_id\": \"33\", \"from_username\": \"pessi\"}', 0, '2025-10-23 02:38:58.725578', NULL, 29),
(5, 'solicitud_amistad', 'Nueva solicitud de amistad', 'Pessi🥶 te envió una solicitud de amistad', '{\"type\": \"friend_request\", \"request_id\": \"35\", \"from_username\": \"pessi\"}', 0, '2025-10-24 00:39:45.921066', NULL, 1),
(22, 'solicitud_amistad', 'Nueva solicitud de amistad', 'Kylian te envió una solicitud de amistad', '{\"type\": \"friend_request\", \"request_id\": \"39\", \"from_username\": \"kmbappe\"}', 0, '2025-10-29 02:32:52.728538', NULL, 1),
(33, 'evento_proximo', 'Evento importante', 'Halloweeen!!!! — 31 Oct', '{\"fecha\": \"2025-10-31\", \"titulo\": \"Halloweeen!!!!\", \"owner_id\": 2, \"evento_id\": 21}', 0, '2025-10-29 04:50:02.899059', NULL, 29),
(34, 'evento_proximo', 'Evento importante', 'no es mi cumple — 29 Oct', '{\"fecha\": \"2025-10-29\", \"titulo\": \"no es mi cumple\", \"owner_id\": 11, \"evento_id\": 20}', 0, '2025-10-29 04:50:02.899129', NULL, 29),
(35, 'evento_proximo', 'Evento importante', 'prrrrueba — 29 Oct', '{\"fecha\": \"2025-10-29\", \"titulo\": \"prrrrueba\", \"owner_id\": 4, \"evento_id\": 19}', 0, '2025-10-29 04:50:02.899164', NULL, 29),
(36, 'evento_proximo', 'Evento importante', 'happy pagiona web — 29 Oct', '{\"fecha\": \"2025-10-29\", \"titulo\": \"happy pagiona web\", \"owner_id\": 4, \"evento_id\": 17}', 0, '2025-10-29 04:50:02.899194', NULL, 29),
(37, 'solicitud_amistad', 'Nueva solicitud de amistad', 'ELIAS te envió una solicitud de amistad', '{\"type\": \"friend_request\", \"request_id\": \"42\", \"from_username\": \"elias-alcaide-leiva\"}', 0, '2025-10-29 05:07:10.115300', NULL, 29),
(69, 'evento_proximo', 'Evento importante', 'asdasd — 05 Nov', '{\"fecha\": \"2025-11-05\", \"titulo\": \"asdasd\", \"owner_id\": 4, \"evento_id\": 31}', 0, '2025-11-05 04:07:40.650888', NULL, 29),
(70, 'evento_proximo', 'Evento importante', 'coito — 05 Nov', '{\"fecha\": \"2025-11-05\", \"titulo\": \"coito\", \"owner_id\": 4, \"evento_id\": 30}', 0, '2025-11-05 04:07:40.650923', NULL, 29),
(71, 'solicitud_amistad', 'Nueva solicitud de amistad', 'Kylian te envió una solicitud de amistad', '{\"type\": \"friend_request\", \"request_id\": \"46\", \"from_username\": \"kmbappe\"}', 0, '2025-11-05 04:08:52.363412', NULL, 29),
(81, 'solicitud_amistad', 'Nueva solicitud de amistad', 'Darius te envió una solicitud de amistad', '{\"type\": \"friend_request\", \"request_id\": \"49\", \"from_username\": \"dariusdellol\"}', 0, '2025-11-22 02:55:10.105309', NULL, 29);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notification_device`
--

CREATE TABLE `notification_device` (
  `id` bigint NOT NULL,
  `token` varchar(255) NOT NULL,
  `platform` varchar(16) NOT NULL,
  `user_agent` longtext NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `last_seen_at` datetime(6) NOT NULL,
  `id_usuario` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `id_pais` int NOT NULL,
  `nombre_pais` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participante_conversacion`
--

CREATE TABLE `participante_conversacion` (
  `participante_id` int NOT NULL,
  `rol` varchar(10) NOT NULL,
  `unido_en` datetime(6) NOT NULL,
  `conversacion_id` int NOT NULL,
  `id_usuario` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `participante_conversacion`
--

INSERT INTO `participante_conversacion` (`participante_id`, `rol`, `unido_en`, `conversacion_id`, `id_usuario`) VALUES
(83, 'miembro', '2025-10-18 03:40:21.299801', 27, 29),
(139, 'miembro', '2025-10-22 04:43:18.455180', 46, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participante_de_evento`
--

CREATE TABLE `participante_de_evento` (
  `participante_id` int NOT NULL,
  `estado` varchar(10) NOT NULL,
  `rol` varchar(12) NOT NULL,
  `agregado_en` datetime(6) NOT NULL,
  `evento_id` int NOT NULL,
  `id_usuario` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `id_perfil` int NOT NULL,
  `bio` longtext,
  `profile_picture` varchar(100) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `id_usuario` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`id_perfil`, `bio`, `profile_picture`, `birth_date`, `id_usuario`) VALUES
(5, 'soy el admin', 'fotos_perfil/Diseño_sin_título_1.png', NULL, 1),
(9, 'Soy James Sullyvan..., me encanta asustar a la gente por lo que me gustan los dinosaurios...\r\ny por si te lo preguntabas, soy administrador, ojo con lo que haces', 'fotos_perfil/Diseño_sin_título_1_9n7iyiv.png', NULL, 29);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post`
--

CREATE TABLE `post` (
  `id_post` int NOT NULL,
  `contenido` longtext,
  `tipo_post` varchar(10) NOT NULL,
  `es_publico` tinyint(1) NOT NULL,
  `fecha_publicacion` datetime(6) NOT NULL,
  `fecha_actualizacion` datetime(6) NOT NULL,
  `id_usuario` int NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `gif_url` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `post`
--

INSERT INTO `post` (`id_post`, `contenido`, `tipo_post`, `es_publico`, `fecha_publicacion`, `fecha_actualizacion`, `id_usuario`, `imagen`, `gif_url`) VALUES
(101, 'Test', 'texto', 1, '2025-11-27 02:46:24.183589', '2025-11-27 02:46:24.183609', 29, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preferencias_usuario`
--

CREATE TABLE `preferencias_usuario` (
  `id_preferencia` int NOT NULL,
  `email_on_new_follower` tinyint(1) NOT NULL,
  `email_on_event_invite` tinyint(1) NOT NULL,
  `email_on_birthday_reminder` tinyint(1) NOT NULL,
  `accepts_marketing_emails` tinyint(1) NOT NULL,
  `id_usuario` int NOT NULL,
  `allow_push_web` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `preferencias_usuario`
--

INSERT INTO `preferencias_usuario` (`id_preferencia`, `email_on_new_follower`, `email_on_event_invite`, `email_on_birthday_reminder`, `accepts_marketing_emails`, `id_usuario`, `allow_push_web`) VALUES
(5, 0, 0, 0, 0, 1, 0),
(9, 0, 0, 0, 0, 29, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int NOT NULL,
  `nombre_producto` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `imagen` varchar(5000) DEFAULT NULL,
  `id_categoria_id` int NOT NULL,
  `id_marca_id` int NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `fecha_actualizacion` datetime(6) NOT NULL,
  `fecha_creacion` datetime(6) NOT NULL,
  `precio` int DEFAULT NULL,
  `embedding` json DEFAULT NULL,
  `url` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `nombre_producto`, `descripcion`, `imagen`, `id_categoria_id`, `id_marca_id`, `activo`, `fecha_actualizacion`, `fecha_creacion`, `precio`, `embedding`, `url`) VALUES
(1, 'Polera Lisa Azul', 'Polera de algodón Azul', 'https://dojiw2m9tvv09.cloudfront.net/15346/product/eb68f4a0-4452-4115-aec6-8af085f09d0d9849.jpeg', 13, 10, 1, '2025-10-22 04:14:21.868452', '2025-10-22 03:56:57.767644', 15000, NULL, 'https://tiendamia.com.uy/p/amz/b0c9hvt4jp/hethcode-men-s-classic-comfort-soft-regular-fit-short-long-sleeve-active?pName=Mens-Casual-Slim-Fit-ShortLong-Sleeve-Baseball-Workout'),
(2, 'Zapatillas Deportivas', 'Zapatillas para correr', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179358/ZapatillasNikeNegras_su2ydg.jpg', 14, 10, 1, '2025-11-26 01:59:34.411598', '2025-10-22 03:56:57.823961', 0, NULL, 'https://www.nike.cl/hj8485-002-nike-revolution-8/p?ab=t3x3a'),
(3, 'Balón de Fútbol', 'Balón oficial', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179357/BalonDeFootBall_fc1ir5.jpg', 15, 11, 1, '2025-11-26 01:59:25.112487', '2025-10-22 03:56:57.848672', 0, NULL, 'https://www.adidas.cl/pelota-starlancer-club/IP1647.html'),
(4, 'Set de Maquillaje', 'Set completo de maquillaje', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179391/SetMaquillaje_hy8ghe.jpg', 16, 12, 1, '2025-11-26 01:59:15.624142', '2025-10-22 03:56:57.890711', 0, NULL, 'https://www.mercadolibre.com.ar/kit-loreal-maquillaje-3en1-labial-riche-mascara-khol/up/MLAU3253509501'),
(5, 'Lego Nissan GTR', 'Auto de juguete armable', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179360/LegoAuto_hoocvr.jpg', 17, 13, 1, '2025-11-26 01:59:06.725905', '2025-10-22 03:56:57.918715', 0, NULL, 'https://www.tiendalego.cl/products/auto-nissan-skyline-gt-r-r34-de-2-fast-2-furious-42210?variant=42319081603190&country=CL&currency=CLP&utm_medium=product_sync&utm_source=google&utm_content=sag_organic&utm_campaign=sag_organic&gad_source=1&gad_campaignid=22132463508&gclid=CjwKCAjwpOfHBhAxEiwAm1SwEmN_KJTdpEXObmk4fT9ZaAl2AJ_lGF1WG_otyilrOcWQZWykIfIAxRoCeuAQAvD_BwE'),
(6, 'Trencito de Juguete', 'Tren de madera para niños', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179357/TrencitoDeMadera_b5x9n2.jpg', 17, 14, 1, '2025-11-26 01:58:57.677192', '2025-10-22 03:56:57.947012', 0, NULL, 'https://creatuclick.com/product-tag/trenecito-de-juguete'),
(7, 'Reloj Festina', 'Reloj de pulsera elegante', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179391/RelojFestina_ggalf2.jpg', 18, 15, 1, '2025-11-26 01:58:48.465159', '2025-10-22 03:56:57.974080', 0, NULL, 'https://creatuclick.com/product-tag/trenecito-de-juguete'),
(8, 'Lentes Ray-Ban', 'Lentes de sol modelo aviador', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179360/LentesRay-Ban_rqzqyl.jpg', 18, 16, 1, '2025-11-26 01:58:38.994860', '2025-10-22 03:56:57.992022', 0, NULL, 'https://www.paris.cl/lentes-de-sol-ray-ban-rb2140-wayfarer-negro-MKWHRF6Q8K.html'),
(9, 'Comida Master Dog', 'Comida para perro adulto 20kg', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179388/MasterDog_o3wbhr.png', 19, 17, 1, '2025-11-26 01:57:55.843684', '2025-10-22 03:56:58.017784', 0, NULL, 'https://www.mercadolibre.cl/master-dog-alimento-perro-adulto-carne-15-kg/p/MLC22778281?pdp_filters=item_id%3AMLC1678437970&from=gshop&matt_tool=73887143&matt_word=&matt_source=google&matt_campaign_id=22116391596&matt_ad_group_id=173057353629&matt_match_type=&matt_network=g&matt_device=c&matt_creative=729566856697&matt_keyword=&matt_ad_position=&matt_ad_type=pla&matt_merchant_id=735085901&matt_product_id=MLC22778281-product&matt_product_partition_id=2387499793427&matt_target_id=aud-1816025464922:pla-2387499793427&cq_src=google_ads&cq_cmp=22116391596&cq_net=g&cq_plt=gp&cq_med=pla&gad_source=1&gad_campaignid=22116391596&gclid=CjwKCAjwpOfHBhAxEiwAm1SwEra3sR6UYv_mVtEsnSCDcNo6rnooPkGwT1AZHKOjYCPFYFwG5_Ht6hoC6B0QAvD_BwE'),
(10, 'Dron Sonic', 'Dron con cámara HD', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179360/DronSonic_hotbz6.jpg', 1, 18, 1, '2025-11-26 01:57:43.279309', '2025-10-22 03:56:58.118643', 0, NULL, 'https://www.amazon.com/-/es/Sonic-Hedgehog-Sky-Racer-Drone/dp/B0CHN6BRV3'),
(11, 'Audífonos Inalámbricos', 'Audífonos Bluetooth', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179357/AudifonosSonyInalambricos_twunfr.jpg', 1, 19, 1, '2025-11-26 01:57:29.876066', '2025-10-22 03:56:58.138135', 0, NULL, 'https://store.sony.cl/wh-ch520/p'),
(12, 'Teclado Mecánico', 'Teclado gamer retroiluminado', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179357/TecladoRazer_skxxun.jpg', 1, 20, 1, '2025-11-26 01:57:20.645938', '2025-10-22 03:56:58.160695', 0, NULL, 'https://myshop.cl/producto/teclado-gamer-razer-huntsman-v3-tkl-switch-purple-espanol-p31860'),
(13, 'Mouse Gamer', 'Mouse óptico alta precisión', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179385/LogitechMouseGamer_zdhmf1.jpg', 1, 21, 1, '2025-11-26 01:57:09.458707', '2025-10-22 03:56:58.181081', 0, NULL, 'https://www.mercadolibre.cl/mouse-de-juego-inalambrico-logitech--g603-negro/up/MLCU63730720'),
(14, 'Monitor Curvo', 'Monitor 27 pulgadas', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179389/MonitorCurvo_j9tx60.jpg', 1, 22, 1, '2025-11-26 01:56:46.834446', '2025-10-22 03:56:58.201918', 0, NULL, 'https://www.digitec.ch/en/s1/product/samsung-odyssey-g5-g55t-3440-x-1440-pixels-34-monitor-14625933'),
(15, 'Silla Gamer', 'Silla ergonómica', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179357/SillaGamer_eckhqi.jpg', 20, 14, 1, '2025-11-26 01:56:34.029279', '2025-10-22 03:56:58.227317', 0, NULL, 'https://www.hites.com/silla-gamer-ergonomica-reclinable-pvc-escritorio-oficina-giratoria-gc-2223-10078000216001.html'),
(16, 'Escritorio Eléctrico', 'Escritorio ajustable', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179359/EscritorioElectrico_rqeo0b.jpg', 20, 14, 1, '2025-11-26 01:56:21.644758', '2025-10-22 03:56:58.243644', 0, NULL, 'https://www.falabella.com/falabella-cl/product/139044435/Escritorio-Electrico-Regulable-Accesorios-140CM-LuBabycas/139044436'),
(103, 'Lámpara de Escritorio', 'Lámpara LED', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179360/LamparaEscritorio_quw3bu.jpg', 20, 14, 1, '2025-11-26 01:56:06.656555', '2025-10-22 03:56:58.257920', 0, NULL, 'https://www.falabella.com/falabella-cl/product/116097346/Lampara-Escritorio-Basic-Acrilico-Negro-40w-E27-Cod9228/116097350'),
(104, 'Botella de Agua', 'Botella reutilizable 1L', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179358/BotellaDeAgua_uvvlhf.jpg', 20, 23, 1, '2025-11-26 01:55:50.124444', '2025-10-22 03:56:58.276956', 0, NULL, 'https://hrjj.com.au/product/sport-bottle-4'),
(105, 'Mochila Urbana', 'Mochila para notebook', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179389/MochilaUrbana_t2dwd1.jpg', 18, 24, 1, '2025-11-26 01:55:39.829211', '2025-10-22 03:56:58.303037', 0, NULL, 'https://simple.ripley.cl/mochila-urbana-hybrid-1-en-color-negro-aparso-mpm10001429423?color_80=negro&s=mdco'),
(106, 'Smartwatch', 'Reloj inteligente', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179357/SmartWatch_zylkg6.jpg', 1, 25, 1, '2025-11-26 01:55:24.062365', '2025-10-22 03:56:58.326974', 0, NULL, 'https://www.shutterstock.com/es/image-illustration/business-mobility-modern-mobile-wearable-device-289142768?dd_referrer=https%3A%2F%2Fwww.google.com%2F'),
(107, 'Cafetera Italiana', 'Cafetera moka 6 tazas', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179359/CafeteraItaliana_lalsvn.jpg', 20, 26, 1, '2025-11-26 01:55:11.141742', '2025-10-22 03:56:58.349712', 0, NULL, 'https://www.sodimac.cl/sodimac-cl/articulo/144953054/CAFETERA-ITALIANA-ESPRESSO-MOKA-9-TAZAS/144953055'),
(108, 'Hervidor Eléctrico', 'Hervidor 1.7L', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179360/HervidorElectrico_fwjx3r.jpg', 20, 27, 1, '2025-11-26 01:54:59.149643', '2025-10-22 03:56:58.370192', 0, NULL, 'https://www.lider.cl/ip/electrodomesticos-cocina/hervidor-electrico-led-calidad-hogar-cocina-te-rondon/00046859090949'),
(109, 'Juego de Sábanas', 'Sábanas 2 plazas', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179360/JuegoDeSabanas_rsxp57.jpg', 20, 28, 1, '2025-11-26 01:54:09.556300', '2025-10-22 03:56:58.390944', 0, NULL, 'https://www.tucumantextil.com.ar/producto/juego-de-sabanas-fantasia-100-algodon-2-plazas-y-media'),
(110, 'Toalla de Baño', 'Toalla grande', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179357/ToallaDeBano_ddiusx.jpg', 20, 23, 1, '2025-11-26 00:34:36.115371', '2025-10-22 03:56:58.404782', 0, NULL, 'https://casahoggar.cl/como-elegir-una-toalla'),
(111, 'Pesa Rusa', 'Kettlebell 8kg', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179390/PesaRusa_otrlkt.jpg', 15, 14, 1, '2025-11-26 01:53:56.713090', '2025-10-22 03:56:58.418678', 0, NULL, 'https://www.sportway.cl/pesa-rusa-o-kettlebell'),
(112, 'Mat de Yoga', 'Mat de 6mm', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179389/MatDeYoga_d3p6mq.jpg', 15, 23, 1, '2025-11-26 01:53:45.879841', '2025-10-22 03:56:58.432307', 0, NULL, 'https://www.sodimac.cl/sodimac-cl/articulo/146301626/Mat-De-Yoga-Alfombra-Espesor-10mm-Extra-Resistente/146301627'),
(113, 'Banda Elástica', 'Set de 3 bandas', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179358/BandaElastica_t0kbgv.jpg', 15, 14, 1, '2025-11-26 01:51:20.207461', '2025-10-22 03:56:58.444599', 0, NULL, 'https://www.portalmayorista.com/deportes/banda-elastica-silicona-p-ejercicios-3-agarres-036a4-cs-detail}'),
(114, 'Libro \"Dune\"', 'Libro de ciencia ficción', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179376/LibroDune_pbu0tw.jpg', 21, 14, 1, '2025-11-26 01:50:23.263693', '2025-10-22 03:56:58.463751', 0, NULL, 'https://www.amazon.com/DUNE-Graphic-Novel-Book-Prophet/dp/1419749471'),
(115, 'Libro \"1984\"', 'Novela distópica', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179360/Libro1984_pgvblj.jpg', 21, 14, 1, '2025-11-26 01:50:10.931518', '2025-10-22 03:56:58.476760', 0, NULL, 'https://www.tiendacopec.cl/products/1984'),
(116, 'Funko Pop Grogu', 'Figura coleccionable', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179359/FunkoPopGrogu_u5zypx.jpg', 17, 29, 1, '2025-11-26 01:49:45.824425', '2025-10-22 03:56:58.497882', 0, NULL, 'https://www.mercadolibre.cl/figura-de-coleccion-funko-pop-star-wars-holiday-grogu/p/MLC2000370781'),
(117, 'Funko Pop Spiderman', 'Figura coleccionable', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179360/FunkoPopSpiderman_kutqwe.jpg', 17, 29, 1, '2025-11-26 01:48:01.871567', '2025-10-22 03:56:58.513245', 0, NULL, 'https://simple.ripley.cl/figura-de-accion-funko-negro-hombre-arana-integrated-suit-spider-man-no-way-home-56829-de-pop-mpm10000321976?s=mdco'),
(118, 'Puzzle 1000 piezas Dinosaurios', 'Puzzle de paisaje', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179391/PuzzleDinosaurios_mtl9sp.jpg', 17, 23, 1, '2025-11-26 01:47:50.889186', '2025-10-22 03:56:58.527677', 0, NULL, 'https://www.mercadolibre.cl/puzzle-educa-x-1000-bosque-jurasico-cod-19560/p/MLC38687556'),
(119, 'Crema Hidratante', 'Crema facial', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179359/CremaHidratante_tvfj30.jpg', 16, 30, 1, '2025-11-26 01:47:41.441407', '2025-10-22 03:56:58.557368', 0, NULL, 'https://www.bellezacarlajara.cl/shop/crema-hidratante'),
(120, 'Perfume Hombre', 'Eau de Toilette 100ml', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179390/PerfumeHugoBoss_bdplk8.jpg', 16, 31, 1, '2025-11-26 01:47:28.879887', '2025-10-22 03:56:58.585824', 0, NULL, 'https://www.mercadolibre.cl/boss-bottled-parfum-100ml-hugo-boss-para-hombre/p/MLC21700539'),
(121, 'Perfume Mujer', 'Eau de Parfum 50ml', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179389/PerfumeDior_vorr83.jpg', 16, 32, 1, '2025-11-26 01:46:36.487378', '2025-10-22 03:56:58.617393', 0, NULL, 'https://www.falabella.com/falabella-cl/product/80145209/JAD-EDP-SPR-150ML-INT25/80145206'),
(122, 'Shampoo Anticaspa', 'Shampoo 400ml', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179357/ShampooAnticaspa_naauli.jpg', 16, 33, 1, '2025-11-26 01:46:23.957013', '2025-10-22 03:56:58.639089', 0, NULL, 'https://www.jumbo.cl/shampoo-fructis-anticaspa-cabello-normal-350-ml/p'),
(123, 'Acondicionador', 'Acondicionador 400ml', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179358/AcondicionadorPantene_gfgdwv.jpg', 16, 34, 1, '2025-11-26 01:46:10.373997', '2025-10-22 03:56:58.657115', 0, NULL, 'https://salcobrand.cl/products/acondicionador-pantene-pro-v-restauracion-400ml'),
(124, 'Pelota de Tenis', 'Pack 3 pelotas', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179389/PelotaDeTenisWilson_xkfwxs.jpg', 15, 35, 1, '2025-11-26 01:45:58.323782', '2025-10-22 03:56:58.676699', 0, NULL, 'https://www.paris.cl/set-3-pelotas-tenis-ronin-MKHNPJY2NL.html'),
(125, 'Raqueta de Tenis', 'Raqueta adulto', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179391/RaquetaTenisWilson_qmtfaj.jpg', 15, 35, 1, '2025-11-26 01:45:48.249848', '2025-10-22 03:56:58.688045', 0, NULL, 'https://www.sportiva.cl/product/raqueta-tenis-wilson-federer-21-junior'),
(126, 'Jeans Hombre', 'Pantalón denim', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179391/PantalonHombreLevis_xszjik.jpg', 13, 36, 1, '2025-11-26 01:44:55.573345', '2025-10-22 03:56:58.709215', 0, NULL, 'https://www.levi.cl/jeans-hombre-levis-511-slim-04511-1163/p'),
(127, 'Polerón con Capucha', 'Polerón de algodón', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179390/PoleronCapuchaGAP_tsztll.jpg', 13, 37, 1, '2025-11-26 01:44:15.083806', '2025-10-22 03:56:58.728615', 0, NULL, 'https://tiendacram.cl/producto/poleron-gap-mujer-87'),
(129, 'Chaqueta Impermeable', 'Chaqueta cortaviento', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179390/PoleronTheNorthFace_jjxyjl.jpg', 13, 38, 1, '2025-11-26 01:43:51.517533', '2025-10-22 03:56:58.762238', 0, NULL, 'https://www.thenorthface.cl/chaqueta-impermeable-venture-2-mujer-nf0a2vcr-nfn3n'),
(130, 'Calcetines Deportivos', 'Pack 3 pares', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179359/CalcetinesNike_lwmhxv.jpg', 13, 10, 1, '2025-11-26 01:41:59.339158', '2025-10-22 03:56:58.779563', 0, NULL, 'https://simple.ripley.cl/pack-3-calcetines-nike-surtido-2000359211995p?s=mdco'),
(131, 'Billetera de Tela', 'Billetera clásica', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179359/BilleteraNike_y88ghj.jpg', 18, 10, 1, '2025-11-26 01:41:48.963411', '2025-10-22 03:56:58.792635', 0, NULL, 'https://www.tradeinn.com/smashinn/da/nike-basic-wallet/1328312/p'),
(132, 'Cinturón de Cuero', 'Cinturón formal', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179359/CinturonDior_rntd6v.jpg', 18, 32, 1, '2025-11-26 01:40:58.506866', '2025-10-22 03:56:58.811475', 0, NULL, 'https://www.farfetch.com/cl/shopping/men/ferragamo-cinturon-con-hebilla-y-diseno-reversible-item-30995998.aspx'),
(133, 'Zapatos Formales', 'Zapatos de cuero', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179358/ZapatosGacelNegros_grlfnr.jpg', 14, 39, 1, '2025-11-26 01:40:42.254025', '2025-10-22 03:56:58.844016', 0, NULL, 'https://www.paris.cl/zapato-itati-gacel-negro-0658750-MKPZI47LM8.html'),
(134, 'Sandalias', 'Sandalias de verano', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179391/SandaliasNike_sz6rdp.jpg', 14, 10, 1, '2025-11-26 00:34:12.880252', '2025-10-22 03:56:58.862700', 0, NULL, 'https://simple.ripley.cl/sandalia-nike-victori-one-q2cn9677-005-2000386984152?color_80=negro&s=mdco'),
(135, 'Botines de cuero', 'Botines de cuero claro', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179358/BotinesCat_w5veid.jpg', 14, 40, 1, '2025-11-26 00:33:55.096826', '2025-10-22 03:56:58.877151', 0, NULL, 'https://www.thrifttempo.com/producto-p-816769.html'),
(136, 'Rascador para Gato', 'Rascador con niveles', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179391/RascadorParaGato_hub0s0.jpg', 19, 14, 1, '2025-11-26 00:33:08.888164', '2025-10-22 03:56:58.896720', 0, NULL, 'https://www.lider.cl/ip/especiales/rascador-para-gatos-con-hamaca-135x55x36/00201662635200'),
(137, 'Arena Sanitaria', 'Arena 10kg', 'https://res.cloudinary.com/daz2wkrns/image/upload/v1761179357/ArenaSanitariaHappyCat_zhfmab.jpg', 19, 41, 1, '2025-11-26 00:32:42.510885', '2025-10-22 04:14:22.673298', 0, NULL, 'https://www.mercadolibre.cl/arena-para-gatos-happy-cat-45kg/p/MLC41430219'),
(272, 'TOP EN VENTAS SONY Ps5 Hw Bundle Digital Gt7 Astro Por Falabella', '[Falabella] SONY Ps5 Hw Bundle Digital Gt7 Astro Por Falabella', 'https://media.falabella.com/falabellaCL/17481282_1/width=240,height=240,quality=70,format=webp,fit=pad', 1, 19, 1, '2025-11-22 01:51:06.295802', '2025-11-21 02:42:27.442300', 429990, NULL, 'https://www.falabella.com/falabella-cl/product/17481282/Ps5-Hw-Bundle-Digital-Gt7-Astro-Sony/17481282'),
(273, 'SONY Consola PS5 Slim Standard + 2 Juegos Por Falabella', '[Falabella] SONY Consola PS5 Slim Standard + 2 Juegos Por Falabella', 'https://media.falabella.com/falabellaCL/17055793_1/width=240,height=240,quality=70,format=webp,fit=pad', 1, 19, 1, '2025-11-21 03:15:23.884130', '2025-11-21 02:42:27.469670', 539990, NULL, 'https://www.falabella.com/falabella-cl/product/17055793/Consola-PS5-Slim-Standard-+-2-Juegos-Sony/17055793'),
(274, 'SONY Consola PS5 PlayStation 5 Slim (Edición Digital) Por Bestmart', '[Falabella] SONY Consola PS5 PlayStation 5 Slim (Edición Digital) Por Bestmart', 'https://media.falabella.com/falabellaCL/126614390_01/width=240,height=240,quality=70,format=webp,fit=pad', 1, 19, 1, '2025-11-22 01:51:06.318424', '2025-11-21 02:42:27.489856', 479990, NULL, 'https://www.falabella.com/falabella-cl/product/126614389/Consola-Sony-PS5-PlayStation-5-Slim-(Edicion-Digital)/126614390'),
(275, 'SONY Consola Ps5 Hw Bund Stand Gt7 Astro Por Falabella', '[Falabella] SONY Consola Ps5 Hw Bund Stand Gt7 Astro Por Falabella', 'https://media.falabella.com/falabellaCL/17549207_1/width=240,height=240,quality=70,format=webp,fit=pad', 1, 19, 1, '2025-11-22 01:51:06.331014', '2025-11-21 02:42:27.506325', 569990, NULL, 'https://www.falabella.com/falabella-cl/product/17549207/Consola-Ps5-Hw-Bund-Stand-Gt7-Astro-Sony/17549207'),
(276, 'SONY Consola Pro PS5 Sonyc Por Falabella', '[Falabella] SONY Consola Pro PS5 Sonyc Por Falabella', 'https://media.falabella.com/falabellaCL/17305144_1/width=240,height=240,quality=70,format=webp,fit=pad', 1, 19, 1, '2025-11-22 01:51:06.344140', '2025-11-21 02:42:27.523967', 829990, NULL, 'https://www.falabella.com/falabella-cl/product/17305144/Consola-Pro-PS5-Sonyc/17305144'),
(278, 'Envío gratis app SONY PS5 Portal Le 30Th Anniversario Por Falabella', '[Falabella] Envío gratis app SONY PS5 Portal Le 30Th Anniversario Por Falabella', 'https://media.falabella.com/falabellaCL/17305146_1/width=240,height=240,quality=70,format=webp,fit=pad', 1, 19, 1, '2025-11-22 01:51:06.371916', '2025-11-21 02:42:27.556590', 259990, NULL, 'https://www.falabella.com/falabella-cl/product/17305146/Sony-PS5-Portal-Le-30Th-Anniversario/17305146'),
(279, 'Envío gratis app SONY Reproductor Remoto PlayStation PS5 Portal Negro Por Bestmart', '[Falabella] Envío gratis app SONY Reproductor Remoto PlayStation PS5 Portal Negro Por Bestmart', 'https://media.falabella.com/falabellaCL/141433245_01/width=240,height=240,quality=70,format=webp,fit=pad', 1, 19, 1, '2025-11-22 01:51:06.382315', '2025-11-21 02:42:27.572944', 259990, NULL, 'https://www.falabella.com/falabella-cl/product/141433244/Reproductor-Remoto-Sony-PlayStation-PS5-Portal-Negro/141433245'),
(280, 'Envío gratis app APPLE MacBook Air 13\" M4 (10n CPU 8n GPU), 16GB RAM, 256GB SSD, 2025 - Midnight Por Technology Supplier', '[Falabella] Envío gratis app APPLE MacBook Air 13\" M4 (10n CPU 8n GPU), 16GB RAM, 256GB SSD, 2025 - Midnight Por Technology Supplier', 'https://media.falabella.com/falabellaCL/144000140_01/width=240,height=240,quality=70,format=webp,fit=pad', 1, 45, 1, '2025-11-21 03:15:34.214779', '2025-11-21 03:15:34.214601', 1019990, NULL, 'https://www.falabella.com/falabella-cl/product/144000139/MacBook-Air-13-M4-(10n-CPU-8n-GPU),-16GB-RAM,-256GB-SSD,-2025-Midnight/144000140?sponsoredClickData=%257B%2522isXLP%2522%253Atrue%252C%2522pageType%2522%253A%2522category%2522%252C%2522adType%2522%253A%2522products%2522%252C%2522platform%2522%253A%2522desktop%2522%252C%2522regionCode%2522%253A%2522cl%2522%252C%2522context%2522%253A%257B%2522userIdentifier%2522%253A%2522MTc2MzY5NDkyNzM0NA%253D%253D%2522%252C%2522adIdentifier%2522%253A%2522Bmg4LQoQBpH9lLLzdFi4BJd96x9VHRIQAZpZ3fB8dPCGxLjQvF3OQBoQAZnKAzJQfCOZ40vI5EIAKSINCgkxNDQwMDAxMzkQATCZ8XFAoAZIAVC9m6OjqjM%2522%252C%2522slot%2522%253A1%252C%2522signal%2522%253A%2522Notebooks%2522%252C%2522categoryId%2522%253A%2522cat70057%2522%252C%2522providerName%2522%253A%2522topsort%2522%257D%257D'),
(281, 'HP Notebook Gamer Victus 15-fa2014la Intel Core i5 16gb Ram 512gb Ssd RTX3050 6gb Windows 11 Home Por Tienda Oficial Hp', '[Falabella] HP Notebook Gamer Victus 15-fa2014la Intel Core i5 16gb Ram 512gb Ssd RTX3050 6gb Windows 11 Home Por Tienda Oficial Hp', 'https://media.falabella.com/falabellaCL/146057998_01/width=240,height=240,quality=70,format=webp,fit=pad', 1, 45, 1, '2025-11-21 03:15:34.241041', '2025-11-21 03:15:34.240919', 729990, NULL, 'https://www.falabella.com/falabella-cl/product/146057997/Notebook-HP-Gamer-Victus-15-fa2014la-Intel-Core-i5-16gb-Ram-512gb-Ssd-RTX3050-6gb-Windows-11-Home/146057998?sponsoredClickData=%257B%2522isXLP%2522%253Atrue%252C%2522pageType%2522%253A%2522category%2522%252C%2522adType%2522%253A%2522products%2522%252C%2522platform%2522%253A%2522desktop%2522%252C%2522regionCode%2522%253A%2522cl%2522%252C%2522context%2522%253A%257B%2522userIdentifier%2522%253A%2522MTc2MzY5NDkyNzM0NA%253D%253D%2522%252C%2522adIdentifier%2522%253A%2522-Zdz3AoQBpH9lLLzdFi4BJd96x9VHRIQAZpaEkzxd5O5UQ0uZ9DqfBoQAZnKAqPPeUGPpFe58_HFuCINCgkxNDYwNTc5OTcQATCO8HFAxQNIAVC9m6OjqjM%2522%252C%2522slot%2522%253A2%252C%2522signal%2522%253A%2522Notebooks%2522%252C%2522categoryId%2522%253A%2522cat70057%2522%252C%2522providerName%2522%253A%2522topsort%2522%257D%257D'),
(282, 'Envío gratis app LENOVO Notebook Ideapad Slim 3 AMD R5 5625U 8GB RAM 512GB SSD 15,6\" FHD Por Falabella', '[Falabella] Envío gratis app LENOVO Notebook Ideapad Slim 3 AMD R5 5625U 8GB RAM 512GB SSD 15,6\" FHD Por Falabella', 'https://media.falabella.com/falabellaCL/17468863_1/width=240,height=240,quality=70,format=webp,fit=pad', 1, 45, 1, '2025-11-22 01:51:15.124826', '2025-11-21 03:15:34.259908', 399990, NULL, 'https://www.falabella.com/falabella-cl/product/17468863/NT-IP3-GEN-8-R5-8GB-512SSD-15.6-FHD/17468863'),
(283, 'Envío gratis app APPLE MacBook Air 13\" M4 (10n CPU 8n GPU), 16GB RAM, 256GB SSD, 2025 - Midnight Por Technology Supplier', '[Falabella] Envío gratis app APPLE MacBook Air 13\" M4 (10n CPU 8n GPU), 16GB RAM, 256GB SSD, 2025 - Midnight Por Technology Supplier', 'https://media.falabella.com/falabellaCL/144000140_01/width=240,height=240,quality=70,format=webp,fit=pad', 1, 45, 1, '2025-11-22 01:51:15.137362', '2025-11-21 03:15:34.276807', 1019990, NULL, 'https://www.falabella.com/falabella-cl/product/144000139/MacBook-Air-13-M4-(10n-CPU-8n-GPU),-16GB-RAM,-256GB-SSD,-2025-Midnight/144000140'),
(284, 'Envío gratis app APPLE Macbook Air Core i5 8GB Ram 256GB SSD Turbo Boost hasta 2.9 GHz Reacondicionado Por Bytestore E.i.r.l', '[Falabella] Envío gratis app APPLE Macbook Air Core i5 8GB Ram 256GB SSD Turbo Boost hasta 2.9 GHz Reacondicionado Por Bytestore E.i.r.l', 'https://media.falabella.com/falabellaCL/145620599_01/width=240,height=240,quality=70,format=webp,fit=pad', 1, 45, 1, '2025-11-21 03:15:34.295117', '2025-11-21 03:15:34.294885', 349990, NULL, 'https://www.falabella.com/falabella-cl/product/145620598/Macbook-Air-Core-i5-8GB-Ram-256GB-SSD-Turbo-Boost-hasta-2.9-GHz-Reacondicionado/145620599?sponsoredClickData=%257B%2522isXLP%2522%253Atrue%252C%2522pageType%2522%253A%2522category%2522%252C%2522adType%2522%253A%2522products%2522%252C%2522platform%2522%253A%2522desktop%2522%252C%2522regionCode%2522%253A%2522cl%2522%252C%2522context%2522%253A%257B%2522userIdentifier%2522%253A%2522MTc2MzY5NDkyNzM0NA%253D%253D%2522%252C%2522adIdentifier%2522%253A%2522ZcCWrwoQBpH9lLLzdFi4BJd96x9VHRIQAZpaL3vgfZOx8C_iNlzq5hoQAZnJ_O6OfbKDox8rgDkoXyINCgkxNDU2MjA1OTgQATDw33FAyAFIAVC9m6OjqjM%2522%252C%2522slot%2522%253A5%252C%2522signal%2522%253A%2522Notebooks%2522%252C%2522categoryId%2522%253A%2522cat70057%2522%252C%2522providerName%2522%253A%2522topsort%2522%257D%257D'),
(285, 'APPLE Macbook Pro i5 8th 2.4Ghz TurboBoost A2452 16 GB Ram 512GB SSD Reacondicionado Por Bytestore E.i.r.l', '[Falabella] APPLE Macbook Pro i5 8th 2.4Ghz TurboBoost A2452 16 GB Ram 512GB SSD Reacondicionado Por Bytestore E.i.r.l', 'https://media.falabella.com/falabellaCL/144108576_01/width=240,height=240,quality=70,format=webp,fit=pad', 1, 45, 1, '2025-11-21 03:15:34.314014', '2025-11-21 03:15:34.313810', 649990, NULL, 'https://www.falabella.com/falabella-cl/product/144108575/Apple-Macbook-Pro-i5-8th-2.4Ghz-TurboBoost-A2452-16-GB-Ram-512GB-SSD-Reacondicionado/144108576?sponsoredClickData=%257B%2522isXLP%2522%253Atrue%252C%2522pageType%2522%253A%2522category%2522%252C%2522adType%2522%253A%2522products%2522%252C%2522platform%2522%253A%2522desktop%2522%252C%2522regionCode%2522%253A%2522cl%2522%252C%2522context%2522%253A%257B%2522userIdentifier%2522%253A%2522MTc2MzY5NDkyNzM0NA%253D%253D%2522%252C%2522adIdentifier%2522%253A%2522MpWKogoQBpH9lLLzdFi4BJd96x9VHRIQAZpaL323d1OHXypeXdl1dhoQAZnJ_O6OfbKDox8rgDkoXyINCgkxNDQxMDg1NzUQATDw33FAyAFIAVC9m6OjqjM%2522%252C%2522slot%2522%253A6%252C%2522signal%2522%253A%2522Notebooks%2522%252C%2522categoryId%2522%253A%2522cat70057%2522%252C%2522providerName%2522%253A%2522topsort%2522%257D%257D'),
(286, 'Envío gratis app HP Notebook 14-EP0130LA Intel Core i3-N305 8GB RAM 512GB SSD Pantalla 14\" HD Webcam HD Por Falabella', '[Falabella] Envío gratis app HP Notebook 14-EP0130LA Intel Core i3-N305 8GB RAM 512GB SSD Pantalla 14\" HD Webcam HD Por Falabella', 'https://media.falabella.com/falabellaCL/17475727_1/width=240,height=240,quality=70,format=webp,fit=pad', 1, 45, 1, '2025-11-22 01:51:15.184268', '2025-11-21 03:15:34.335340', 369990, NULL, 'https://www.falabella.com/falabella-cl/product/17475727/Notebook-14-EP0130LA-Corei38GB512GBW11-HP/17475727'),
(287, 'LENOVO Notebook Gamer LOQ Intel Ryzen 5 7235HS 16GB RAM 512GB SSD RTX 3050 15,6\" FHD 144Hz NVIDIA G-Sync Por Falabella', '[Falabella] LENOVO Notebook Gamer LOQ Intel Ryzen 5 7235HS 16GB RAM 512GB SSD RTX 3050 15,6\" FHD 144Hz NVIDIA G-Sync Por Falabella', 'https://media.falabella.com/falabellaCL/17495509_1/width=240,height=240,quality=70,format=webp,fit=pad', 1, 45, 1, '2025-11-22 01:51:15.195424', '2025-11-21 03:15:34.355315', 729990, NULL, 'https://www.falabella.com/falabella-cl/product/17495509/Notebook-Gamer-LOQ-Intel-Ryzen-5-7235HS-16GB-RAM-512GB-SSD-RTX-3050-15,6%22-FHD-144Hz-NVIDIA-G-Sync-Lenovo/17495509'),
(288, 'SONY Consola PS5 Pro Digital Por Sony Latin America Inc', '[Falabella] SONY Consola PS5 Pro Digital Por Sony Latin America Inc', 'https://media.falabella.com/falabellaCL/141344101_01/width=240,height=240,quality=70,format=webp,fit=pad', 1, 19, 1, '2025-11-22 01:51:06.356965', '2025-11-22 01:48:54.374348', 849990, NULL, 'https://www.falabella.com/falabella-cl/product/141344100/Consola-PS5-Pro-Digital/141344101'),
(289, 'Envío gratis app SONY Consola Playstation 5 mas God of War PS5 Por Jac Entertainment', '[Falabella] Envío gratis app SONY Consola Playstation 5 mas God of War PS5 Por Jac Entertainment', 'https://media.falabella.com/falabellaCL/116385257_01/width=240,height=240,quality=70,format=webp,fit=pad', 1, 19, 1, '2025-11-22 01:51:06.394036', '2025-11-22 01:48:54.473989', 1199990, NULL, 'https://www.falabella.com/falabella-cl/product/116385256/Consola-Playstation-5-mas-God-of-War-PS5/116385257'),
(290, 'Envío gratis app APPLE MacBook Air 13\" M4 (10n CPU 8n GPU), 16GB RAM, 256GB SSD, 2025 - Midnight Por Technology Supplier', '[Falabella] Envío gratis app APPLE MacBook Air 13\" M4 (10n CPU 8n GPU), 16GB RAM, 256GB SSD, 2025 - Midnight Por Technology Supplier', 'https://media.falabella.com/falabellaCL/144000140_01/width=240,height=240,quality=70,format=webp,fit=pad', 1, 45, 1, '2025-11-22 01:49:48.186442', '2025-11-22 01:49:48.186322', 1019990, NULL, 'https://www.falabella.com/falabella-cl/product/144000139/MacBook-Air-13-M4-(10n-CPU-8n-GPU),-16GB-RAM,-256GB-SSD,-2025-Midnight/144000140?sponsoredClickData=%257B%2522isXLP%2522%253Atrue%252C%2522pageType%2522%253A%2522category%2522%252C%2522adType%2522%253A%2522products%2522%252C%2522platform%2522%253A%2522desktop%2522%252C%2522regionCode%2522%253A%2522cl%2522%252C%2522context%2522%253A%257B%2522userIdentifier%2522%253A%2522MTc2Mzc3NjEzOTQxNw%253D%253D%2522%252C%2522adIdentifier%2522%253A%25222Gxw3QoQBpIRaEg7fLKMBPa7AMJWuxIQAZpZ3fB8dPCGxLjQvF3OQBoQAZnKAzJQfCOZ40vI5EIAKSINCgkxNDQwMDAxMzkQATCZ8XFAoAZIAVDI6__JqjM%2522%252C%2522slot%2522%253A1%252C%2522signal%2522%253A%2522Notebooks%2522%252C%2522categoryId%2522%253A%2522cat70057%2522%252C%2522providerName%2522%253A%2522topsort%2522%257D%257D'),
(291, 'HP Notebook Gamer Victus 15-fa2014la Intel Core i5 16gb Ram 512gb Ssd RTX3050 6gb Windows 11 Home Por Tienda Oficial Hp', '[Falabella] HP Notebook Gamer Victus 15-fa2014la Intel Core i5 16gb Ram 512gb Ssd RTX3050 6gb Windows 11 Home Por Tienda Oficial Hp', 'https://media.falabella.com/falabellaCL/146057998_01/width=240,height=240,quality=70,format=webp,fit=pad', 1, 45, 1, '2025-11-22 01:49:48.210501', '2025-11-22 01:49:48.210287', 729990, NULL, 'https://www.falabella.com/falabella-cl/product/146057997/Notebook-HP-Gamer-Victus-15-fa2014la-Intel-Core-i5-16gb-Ram-512gb-Ssd-RTX3050-6gb-Windows-11-Home/146057998?sponsoredClickData=%257B%2522isXLP%2522%253Atrue%252C%2522pageType%2522%253A%2522category%2522%252C%2522adType%2522%253A%2522products%2522%252C%2522platform%2522%253A%2522desktop%2522%252C%2522regionCode%2522%253A%2522cl%2522%252C%2522context%2522%253A%257B%2522userIdentifier%2522%253A%2522MTc2Mzc3NjEzOTQxNw%253D%253D%2522%252C%2522adIdentifier%2522%253A%2522yoHGZQoQBpIRaEg7fLKMBPa7AMJWuxIQAZpaEkzxd5O5UQ0uZ9DqfBoQAZnKAqPPeUGPpFe58_HFuCINCgkxNDYwNTc5OTcQATCO8HFA6AFIAVDI6__JqjM%2522%252C%2522slot%2522%253A2%252C%2522signal%2522%253A%2522Notebooks%2522%252C%2522categoryId%2522%253A%2522cat70057%2522%252C%2522providerName%2522%253A%2522topsort%2522%257D%257D'),
(292, 'HP Notebook Gamer Victus 15-fa0022la Intel Core i5 16gb Ram 512gb Ssd RTX3050 4gb Windows 11 Home Por Tienda Oficial Hp', '[Falabella] HP Notebook Gamer Victus 15-fa0022la Intel Core i5 16gb Ram 512gb Ssd RTX3050 4gb Windows 11 Home Por Tienda Oficial Hp', 'https://media.falabella.com/falabellaCL/143311952_01/width=240,height=240,quality=70,format=webp,fit=pad', 1, 45, 1, '2025-11-22 01:49:48.256245', '2025-11-22 01:49:48.256111', 769990, NULL, 'https://www.falabella.com/falabella-cl/product/143311951/Notebook-HP-Gamer-Victus-15-fa0022la-Intel-Core-i5-16gb-Ram-512gb-Ssd-RTX3050-4gb-Windows-11-Home/143311952?sponsoredClickData=%257B%2522isXLP%2522%253Atrue%252C%2522pageType%2522%253A%2522category%2522%252C%2522adType%2522%253A%2522products%2522%252C%2522platform%2522%253A%2522desktop%2522%252C%2522regionCode%2522%253A%2522cl%2522%252C%2522context%2522%253A%257B%2522userIdentifier%2522%253A%2522MTc2Mzc3NjEzOTQxNw%253D%253D%2522%252C%2522adIdentifier%2522%253A%2522D22LoQoQBpIRaEg7fLKMBPa7AMJWuxIQAZpaEkzxd5O5UQ0uZ9DqfBoQAZnKAqPPeUGPpFe58_HFuCINCgkxNDMzMTE5NTEQATCO8HFAmAFIAVDI6__JqjM%2522%252C%2522slot%2522%253A5%252C%2522signal%2522%253A%2522Notebooks%2522%252C%2522categoryId%2522%253A%2522cat70057%2522%252C%2522providerName%2522%253A%2522topsort%2522%257D%257D'),
(294, 'Envío gratis app APPLE MacBook Air 13\" M4 (10n CPU 8n GPU), 16GB RAM, 256GB SSD, 2025 - Midnight Por Technology Supplier', '[Falabella] Envío gratis app APPLE MacBook Air 13\" M4 (10n CPU 8n GPU), 16GB RAM, 256GB SSD, 2025 - Midnight Por Technology Supplier', 'https://media.falabella.com/falabellaCL/144000140_01/width=240,height=240,quality=70,format=webp,fit=pad', 1, 45, 1, '2025-11-22 01:51:15.088663', '2025-11-22 01:51:15.088515', 1019990, NULL, 'https://www.falabella.com/falabella-cl/product/144000139/MacBook-Air-13-M4-(10n-CPU-8n-GPU),-16GB-RAM,-256GB-SSD,-2025-Midnight/144000140?sponsoredClickData=%257B%2522isXLP%2522%253Atrue%252C%2522pageType%2522%253A%2522category%2522%252C%2522adType%2522%253A%2522products%2522%252C%2522platform%2522%253A%2522desktop%2522%252C%2522regionCode%2522%253A%2522cl%2522%252C%2522context%2522%253A%257B%2522userIdentifier%2522%253A%2522MTc2Mzc3NjI2ODA0MQ%253D%253D%2522%252C%2522adIdentifier%2522%253A%25222Gxw3QoQBpIRaEg7fLKMBPa7AMJWuxIQAZpZ3fB8dPCGxLjQvF3OQBoQAZnKAzJQfCOZ40vI5EIAKSINCgkxNDQwMDAxMzkQATCZ8XFAoAZIAVDI6__JqjM%2522%252C%2522slot%2522%253A1%252C%2522signal%2522%253A%2522Notebooks%2522%252C%2522categoryId%2522%253A%2522cat70057%2522%252C%2522providerName%2522%253A%2522topsort%2522%257D%257D'),
(295, 'HP Notebook Gamer Victus 15-fa2014la Intel Core i5 16gb Ram 512gb Ssd RTX3050 6gb Windows 11 Home Por Tienda Oficial Hp', '[Falabella] HP Notebook Gamer Victus 15-fa2014la Intel Core i5 16gb Ram 512gb Ssd RTX3050 6gb Windows 11 Home Por Tienda Oficial Hp', 'https://media.falabella.com/falabellaCL/146057998_01/width=240,height=240,quality=70,format=webp,fit=pad', 1, 45, 1, '2025-11-22 01:51:15.107183', '2025-11-22 01:51:15.107037', 729990, NULL, 'https://www.falabella.com/falabella-cl/product/146057997/Notebook-HP-Gamer-Victus-15-fa2014la-Intel-Core-i5-16gb-Ram-512gb-Ssd-RTX3050-6gb-Windows-11-Home/146057998?sponsoredClickData=%257B%2522isXLP%2522%253Atrue%252C%2522pageType%2522%253A%2522category%2522%252C%2522adType%2522%253A%2522products%2522%252C%2522platform%2522%253A%2522desktop%2522%252C%2522regionCode%2522%253A%2522cl%2522%252C%2522context%2522%253A%257B%2522userIdentifier%2522%253A%2522MTc2Mzc3NjI2ODA0MQ%253D%253D%2522%252C%2522adIdentifier%2522%253A%2522yoHGZQoQBpIRaEg7fLKMBPa7AMJWuxIQAZpaEkzxd5O5UQ0uZ9DqfBoQAZnKAqPPeUGPpFe58_HFuCINCgkxNDYwNTc5OTcQATCO8HFA6AFIAVDI6__JqjM%2522%252C%2522slot%2522%253A2%252C%2522signal%2522%253A%2522Notebooks%2522%252C%2522categoryId%2522%253A%2522cat70057%2522%252C%2522providerName%2522%253A%2522topsort%2522%257D%257D'),
(296, 'HP Notebook Gamer Victus 15-fa0022la Intel Core i5 16gb Ram 512gb Ssd RTX3050 4gb Windows 11 Home Por Tienda Oficial Hp', '[Falabella] HP Notebook Gamer Victus 15-fa0022la Intel Core i5 16gb Ram 512gb Ssd RTX3050 4gb Windows 11 Home Por Tienda Oficial Hp', 'https://media.falabella.com/falabellaCL/143311952_01/width=240,height=240,quality=70,format=webp,fit=pad', 1, 45, 1, '2025-11-22 01:51:15.149691', '2025-11-22 01:51:15.149443', 769990, NULL, 'https://www.falabella.com/falabella-cl/product/143311951/Notebook-HP-Gamer-Victus-15-fa0022la-Intel-Core-i5-16gb-Ram-512gb-Ssd-RTX3050-4gb-Windows-11-Home/143311952?sponsoredClickData=%257B%2522isXLP%2522%253Atrue%252C%2522pageType%2522%253A%2522category%2522%252C%2522adType%2522%253A%2522products%2522%252C%2522platform%2522%253A%2522desktop%2522%252C%2522regionCode%2522%253A%2522cl%2522%252C%2522context%2522%253A%257B%2522userIdentifier%2522%253A%2522MTc2Mzc3NjI2ODA0MQ%253D%253D%2522%252C%2522adIdentifier%2522%253A%2522D22LoQoQBpIRaEg7fLKMBPa7AMJWuxIQAZpaEkzxd5O5UQ0uZ9DqfBoQAZnKAqPPeUGPpFe58_HFuCINCgkxNDMzMTE5NTEQATCO8HFAmAFIAVDI6__JqjM%2522%252C%2522slot%2522%253A5%252C%2522signal%2522%253A%2522Notebooks%2522%252C%2522categoryId%2522%253A%2522cat70057%2522%252C%2522providerName%2522%253A%2522topsort%2522%257D%257D'),
(297, 'HP Notebook Gamer Victus 15-fa1013la Intel Core i7 16gb Ram 1tb Ssd RTX4060 8GB Windows 11 Home Por Tienda Oficial Hp', '[Falabella] HP Notebook Gamer Victus 15-fa1013la Intel Core i7 16gb Ram 1tb Ssd RTX4060 8GB Windows 11 Home Por Tienda Oficial Hp', 'https://media.falabella.com/falabellaCL/143701852_01/width=240,height=240,quality=70,format=webp,fit=pad', 1, 45, 1, '2025-11-22 01:51:15.167431', '2025-11-22 01:51:15.167308', 1199990, NULL, 'https://www.falabella.com/falabella-cl/product/143701851/Notebook-HP-Gamer-Victus-15-fa1013la-Intel-Core-i7-16gb-Ram-1tb-Ssd-RTX4060-8GB-Windows-11-Home/143701852?sponsoredClickData=%257B%2522isXLP%2522%253Atrue%252C%2522pageType%2522%253A%2522category%2522%252C%2522adType%2522%253A%2522products%2522%252C%2522platform%2522%253A%2522desktop%2522%252C%2522regionCode%2522%253A%2522cl%2522%252C%2522context%2522%253A%257B%2522userIdentifier%2522%253A%2522MTc2Mzc3NjI2ODA0MQ%253D%253D%2522%252C%2522adIdentifier%2522%253A%2522G_zGVQoQBpIRaEg7fLKMBPa7AMJWuxIQAZpaEkzxd5O5UQ0uZ9DqfBoQAZnKAqPPeUGPpFe58_HFuCINCgkxNDM3MDE4NTEQATCO8HFAmwFIAVDI6__JqjM%2522%252C%2522slot%2522%253A6%252C%2522signal%2522%253A%2522Notebooks%2522%252C%2522categoryId%2522%253A%2522cat70057%2522%252C%2522providerName%2522%253A%2522topsort%2522%257D%257D');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_externo`
--

CREATE TABLE `producto_externo` (
  `id_producto_externo` int NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `precio` int UNSIGNED DEFAULT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `categoria` varchar(100) DEFAULT NULL,
  `url` varchar(4000) NOT NULL,
  `imagen` varchar(4000) DEFAULT NULL,
  `fuente` varchar(50) NOT NULL,
  `fecha_extraccion` datetime(6) NOT NULL,
  `producto_interno_id` int DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_externo_favorito`
--

CREATE TABLE `producto_externo_favorito` (
  `id` bigint NOT NULL,
  `fecha_agregado` datetime(6) NOT NULL,
  `producto_externo_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recommendation_feedback`
--

CREATE TABLE `recommendation_feedback` (
  `id` int NOT NULL,
  `feedback_type` varchar(10) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `region`
--

CREATE TABLE `region` (
  `id_region` int NOT NULL,
  `nombre_region` varchar(100) NOT NULL,
  `id_pais` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_actividad`
--

CREATE TABLE `registro_actividad` (
  `id_actividad` int NOT NULL,
  `tipo_actividad` varchar(30) NOT NULL,
  `id_elemento` int UNSIGNED NOT NULL,
  `tabla_elemento` varchar(50) NOT NULL,
  `contenido_resumen` varchar(255) NOT NULL,
  `fecha_actividad` datetime(6) NOT NULL,
  `es_publica` tinyint(1) NOT NULL,
  `id_usuario` int NOT NULL
) ;

--
-- Volcado de datos para la tabla `registro_actividad`
--

INSERT INTO `registro_actividad` (`id_actividad`, `tipo_actividad`, `id_elemento`, `tabla_elemento`, `contenido_resumen`, `fecha_actividad`, `es_publica`, `id_usuario`) VALUES
(9, 'nuevo_seguidor', 23, 'user', 'Comenzó a seguir a elias-alcaide-leiva', '2025-10-29 05:08:30.936167', 1, 29),
(11, 'nuevo_regalo', 173, 'itemenwishlist', 'Añadió \'Lámpara de Escritorio\' a favoritos', '2025-10-29 05:08:39.317084', 1, 29),
(12, 'nuevo_regalo', 174, 'itemenwishlist', 'Añadió \'Botella de Agua\' a favoritos', '2025-10-29 05:08:40.074326', 1, 29),
(13, 'nuevo_post', 40, 'post', 'Creó el post: Soy el 2do admin mas importante!...', '2025-10-29 05:15:04.790337', 1, 29),
(147, 'nuevo_seguidor', 27, 'user', 'Comenzó a seguir a kmbappe', '2025-11-05 04:09:12.907743', 1, 29),
(153, 'nuevo_post', 87, 'post', 'Creó el post: perra...', '2025-11-05 04:20:19.090256', 1, 29),
(202, 'nuevo_post', 101, 'post', 'Creó el post: Test...', '2025-11-27 02:46:24.194753', 1, 29);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Reporte_strike`
--

CREATE TABLE `Reporte_strike` (
  `id_reporte` int NOT NULL,
  `motivo` varchar(100) NOT NULL,
  `fecha_creacion` datetime(6) NOT NULL,
  `id_post` int NOT NULL,
  `id_user` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resena_sitio`
--

CREATE TABLE `resena_sitio` (
  `id_resena` int NOT NULL,
  `calificacion` smallint UNSIGNED NOT NULL,
  `comentario` longtext NOT NULL,
  `fecha_resena` datetime(6) NOT NULL,
  `id_usuario` int NOT NULL
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguidor`
--

CREATE TABLE `seguidor` (
  `relacion_id` int NOT NULL,
  `fecha_seguimiento` datetime(6) NOT NULL,
  `seguido_id` int NOT NULL,
  `seguidor_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socialaccount_socialaccount`
--

CREATE TABLE `socialaccount_socialaccount` (
  `id` int NOT NULL,
  `provider` varchar(200) NOT NULL,
  `uid` varchar(191) NOT NULL,
  `last_login` datetime(6) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `extra_data` json NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socialaccount_socialapp`
--

CREATE TABLE `socialaccount_socialapp` (
  `id` int NOT NULL,
  `provider` varchar(30) NOT NULL,
  `name` varchar(40) NOT NULL,
  `client_id` varchar(191) NOT NULL,
  `secret` varchar(191) NOT NULL,
  `key` varchar(191) NOT NULL,
  `provider_id` varchar(200) NOT NULL,
  `settings` json NOT NULL DEFAULT (_utf8mb4'{}')
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `socialaccount_socialapp`
--

INSERT INTO `socialaccount_socialapp` (`id`, `provider`, `name`, `client_id`, `secret`, `key`, `provider_id`, `settings`) VALUES
(1, 'google', 'Google Login', '332958541597-qddq8t1i2ivu1p7ud1sklotumokj59sj.apps.googleusercontent.com', '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', '', '', '{}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socialaccount_socialapp_sites`
--

CREATE TABLE `socialaccount_socialapp_sites` (
  `id` bigint NOT NULL,
  `socialapp_id` int NOT NULL,
  `site_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `socialaccount_socialapp_sites`
--

INSERT INTO `socialaccount_socialapp_sites` (`id`, `socialapp_id`, `site_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socialaccount_socialtoken`
--

CREATE TABLE `socialaccount_socialtoken` (
  `id` int NOT NULL,
  `token` longtext NOT NULL,
  `token_secret` longtext NOT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `account_id` int NOT NULL,
  `app_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_amistad`
--

CREATE TABLE `solicitud_amistad` (
  `id_solicitud` int NOT NULL,
  `estado` varchar(10) NOT NULL,
  `mensaje` varchar(255) DEFAULT NULL,
  `creada_en` datetime(6) NOT NULL,
  `respondida_en` datetime(6) DEFAULT NULL,
  `emisor_id` int NOT NULL,
  `receptor_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tags`
--

CREATE TABLE `tags` (
  `id_etiqueta` int NOT NULL,
  `nombre_etiqueta` varchar(100) NOT NULL,
  `color` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `url_tienda`
--

CREATE TABLE `url_tienda` (
  `id_url` int NOT NULL,
  `url` varchar(5000) NOT NULL,
  `nombre_tienda` varchar(100) NOT NULL,
  `es_principal` tinyint(1) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `fecha_creacion` datetime(6) NOT NULL,
  `producto_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `url_tienda`
--

INSERT INTO `url_tienda` (`id_url`, `url`, `nombre_tienda`, `es_principal`, `activo`, `fecha_creacion`, `producto_id`) VALUES
(87, 'https://www.falabella.com/falabella-cl/product/17481282/Ps5-Hw-Bundle-Digital-Gt7-Astro-Sony/17481282', 'Falabella', 1, 1, '2025-11-21 02:42:27.463105', 272),
(88, 'https://www.falabella.com/falabella-cl/product/17055793/Consola-PS5-Slim-Standard-+-2-Juegos-Sony/17055793', 'Falabella', 1, 1, '2025-11-21 02:42:27.480806', 273),
(89, 'https://www.falabella.com/falabella-cl/product/126614389/Consola-Sony-PS5-PlayStation-5-Slim-(Edicion-Digital)/126614390', 'Falabella', 1, 1, '2025-11-21 02:42:27.499598', 274),
(90, 'https://www.falabella.com/falabella-cl/product/17549207/Consola-Ps5-Hw-Bund-Stand-Gt7-Astro-Sony/17549207', 'Falabella', 1, 1, '2025-11-21 02:42:27.517125', 275),
(91, 'https://www.falabella.com/falabella-cl/product/17305144/Consola-Pro-PS5-Sonyc/17305144', 'Falabella', 1, 1, '2025-11-21 02:42:27.532941', 276),
(93, 'https://www.falabella.com/falabella-cl/product/17305146/Sony-PS5-Portal-Le-30Th-Anniversario/17305146', 'Falabella', 1, 1, '2025-11-21 02:42:27.566650', 278),
(94, 'https://www.falabella.com/falabella-cl/product/141433244/Reproductor-Remoto-Sony-PlayStation-PS5-Portal-Negro/141433245', 'Falabella', 1, 1, '2025-11-21 02:42:27.583769', 279),
(95, 'https://www.falabella.com/falabella-cl/product/144000139/MacBook-Air-13-M4-(10n-CPU-8n-GPU),-16GB-RAM,-256GB-SSD,-2025-Midnight/144000140?sponsoredClickData=%257B%2522isXLP%2522%253Atrue%252C%2522pageType%2522%253A%2522category%2522%252C%2522adType%2522%253A%2522products%2522%252C%2522platform%2522%253A%2522desktop%2522%252C%2522regionCode%2522%253A%2522cl%2522%252C%2522context%2522%253A%257B%2522userIdentifier%2522%253A%2522MTc2MzY5NDkyNzM0NA%253D%253D%2522%252C%2522adIdentifier%2522%253A%2522Bmg4LQoQBpH9lLLzdFi4BJd96x9VHRIQAZpZ3fB8dPCGxLjQvF3OQBoQAZnKAzJQfCOZ40vI5EIAKSINCgkxNDQwMDAxMzkQATCZ8XFAoAZIAVC9m6OjqjM%2522%252C%2522slot%2522%253A1%252C%2522signal%2522%253A%2522Notebooks%2522%252C%2522categoryId%2522%253A%2522cat70057%2522%252C%2522providerName%2522%253A%2522topsort%2522%257D%257D', 'Falabella', 1, 1, '2025-11-21 03:15:34.233847', 280),
(96, 'https://www.falabella.com/falabella-cl/product/146057997/Notebook-HP-Gamer-Victus-15-fa2014la-Intel-Core-i5-16gb-Ram-512gb-Ssd-RTX3050-6gb-Windows-11-Home/146057998?sponsoredClickData=%257B%2522isXLP%2522%253Atrue%252C%2522pageType%2522%253A%2522category%2522%252C%2522adType%2522%253A%2522products%2522%252C%2522platform%2522%253A%2522desktop%2522%252C%2522regionCode%2522%253A%2522cl%2522%252C%2522context%2522%253A%257B%2522userIdentifier%2522%253A%2522MTc2MzY5NDkyNzM0NA%253D%253D%2522%252C%2522adIdentifier%2522%253A%2522-Zdz3AoQBpH9lLLzdFi4BJd96x9VHRIQAZpaEkzxd5O5UQ0uZ9DqfBoQAZnKAqPPeUGPpFe58_HFuCINCgkxNDYwNTc5OTcQATCO8HFAxQNIAVC9m6OjqjM%2522%252C%2522slot%2522%253A2%252C%2522signal%2522%253A%2522Notebooks%2522%252C%2522categoryId%2522%253A%2522cat70057%2522%252C%2522providerName%2522%253A%2522topsort%2522%257D%257D', 'Falabella', 1, 1, '2025-11-21 03:15:34.251824', 281),
(97, 'https://www.falabella.com/falabella-cl/product/17468863/NT-IP3-GEN-8-R5-8GB-512SSD-15.6-FHD/17468863', 'Falabella', 1, 1, '2025-11-21 03:15:34.270525', 282),
(98, 'https://www.falabella.com/falabella-cl/product/144000139/MacBook-Air-13-M4-(10n-CPU-8n-GPU),-16GB-RAM,-256GB-SSD,-2025-Midnight/144000140', 'Falabella', 1, 1, '2025-11-21 03:15:34.287420', 283),
(99, 'https://www.falabella.com/falabella-cl/product/145620598/Macbook-Air-Core-i5-8GB-Ram-256GB-SSD-Turbo-Boost-hasta-2.9-GHz-Reacondicionado/145620599?sponsoredClickData=%257B%2522isXLP%2522%253Atrue%252C%2522pageType%2522%253A%2522category%2522%252C%2522adType%2522%253A%2522products%2522%252C%2522platform%2522%253A%2522desktop%2522%252C%2522regionCode%2522%253A%2522cl%2522%252C%2522context%2522%253A%257B%2522userIdentifier%2522%253A%2522MTc2MzY5NDkyNzM0NA%253D%253D%2522%252C%2522adIdentifier%2522%253A%2522ZcCWrwoQBpH9lLLzdFi4BJd96x9VHRIQAZpaL3vgfZOx8C_iNlzq5hoQAZnJ_O6OfbKDox8rgDkoXyINCgkxNDU2MjA1OTgQATDw33FAyAFIAVC9m6OjqjM%2522%252C%2522slot%2522%253A5%252C%2522signal%2522%253A%2522Notebooks%2522%252C%2522categoryId%2522%253A%2522cat70057%2522%252C%2522providerName%2522%253A%2522topsort%2522%257D%257D', 'Falabella', 1, 1, '2025-11-21 03:15:34.307089', 284),
(100, 'https://www.falabella.com/falabella-cl/product/144108575/Apple-Macbook-Pro-i5-8th-2.4Ghz-TurboBoost-A2452-16-GB-Ram-512GB-SSD-Reacondicionado/144108576?sponsoredClickData=%257B%2522isXLP%2522%253Atrue%252C%2522pageType%2522%253A%2522category%2522%252C%2522adType%2522%253A%2522products%2522%252C%2522platform%2522%253A%2522desktop%2522%252C%2522regionCode%2522%253A%2522cl%2522%252C%2522context%2522%253A%257B%2522userIdentifier%2522%253A%2522MTc2MzY5NDkyNzM0NA%253D%253D%2522%252C%2522adIdentifier%2522%253A%2522MpWKogoQBpH9lLLzdFi4BJd96x9VHRIQAZpaL323d1OHXypeXdl1dhoQAZnJ_O6OfbKDox8rgDkoXyINCgkxNDQxMDg1NzUQATDw33FAyAFIAVC9m6OjqjM%2522%252C%2522slot%2522%253A6%252C%2522signal%2522%253A%2522Notebooks%2522%252C%2522categoryId%2522%253A%2522cat70057%2522%252C%2522providerName%2522%253A%2522topsort%2522%257D%257D', 'Falabella', 1, 1, '2025-11-21 03:15:34.326209', 285),
(101, 'https://www.falabella.com/falabella-cl/product/17475727/Notebook-14-EP0130LA-Corei38GB512GBW11-HP/17475727', 'Falabella', 1, 1, '2025-11-21 03:15:34.347866', 286),
(102, 'https://www.falabella.com/falabella-cl/product/17495509/Notebook-Gamer-LOQ-Intel-Ryzen-5-7235HS-16GB-RAM-512GB-SSD-RTX-3050-15,6%22-FHD-144Hz-NVIDIA-G-Sync-Lenovo/17495509', 'Falabella', 1, 1, '2025-11-21 03:15:34.369492', 287),
(103, 'https://www.falabella.com/falabella-cl/product/141344100/Consola-PS5-Pro-Digital/141344101', 'Falabella', 1, 1, '2025-11-22 01:48:54.433652', 288),
(104, 'https://www.falabella.com/falabella-cl/product/116385256/Consola-Playstation-5-mas-God-of-War-PS5/116385257', 'Falabella', 1, 1, '2025-11-22 01:48:54.486513', 289),
(105, 'https://www.falabella.com/falabella-cl/product/144000139/MacBook-Air-13-M4-(10n-CPU-8n-GPU),-16GB-RAM,-256GB-SSD,-2025-Midnight/144000140?sponsoredClickData=%257B%2522isXLP%2522%253Atrue%252C%2522pageType%2522%253A%2522category%2522%252C%2522adType%2522%253A%2522products%2522%252C%2522platform%2522%253A%2522desktop%2522%252C%2522regionCode%2522%253A%2522cl%2522%252C%2522context%2522%253A%257B%2522userIdentifier%2522%253A%2522MTc2Mzc3NjEzOTQxNw%253D%253D%2522%252C%2522adIdentifier%2522%253A%25222Gxw3QoQBpIRaEg7fLKMBPa7AMJWuxIQAZpZ3fB8dPCGxLjQvF3OQBoQAZnKAzJQfCOZ40vI5EIAKSINCgkxNDQwMDAxMzkQATCZ8XFAoAZIAVDI6__JqjM%2522%252C%2522slot%2522%253A1%252C%2522signal%2522%253A%2522Notebooks%2522%252C%2522categoryId%2522%253A%2522cat70057%2522%252C%2522providerName%2522%253A%2522topsort%2522%257D%257D', 'Falabella', 1, 1, '2025-11-22 01:49:48.201017', 290),
(106, 'https://www.falabella.com/falabella-cl/product/146057997/Notebook-HP-Gamer-Victus-15-fa2014la-Intel-Core-i5-16gb-Ram-512gb-Ssd-RTX3050-6gb-Windows-11-Home/146057998?sponsoredClickData=%257B%2522isXLP%2522%253Atrue%252C%2522pageType%2522%253A%2522category%2522%252C%2522adType%2522%253A%2522products%2522%252C%2522platform%2522%253A%2522desktop%2522%252C%2522regionCode%2522%253A%2522cl%2522%252C%2522context%2522%253A%257B%2522userIdentifier%2522%253A%2522MTc2Mzc3NjEzOTQxNw%253D%253D%2522%252C%2522adIdentifier%2522%253A%2522yoHGZQoQBpIRaEg7fLKMBPa7AMJWuxIQAZpaEkzxd5O5UQ0uZ9DqfBoQAZnKAqPPeUGPpFe58_HFuCINCgkxNDYwNTc5OTcQATCO8HFA6AFIAVDI6__JqjM%2522%252C%2522slot%2522%253A2%252C%2522signal%2522%253A%2522Notebooks%2522%252C%2522categoryId%2522%253A%2522cat70057%2522%252C%2522providerName%2522%253A%2522topsort%2522%257D%257D', 'Falabella', 1, 1, '2025-11-22 01:49:48.220567', 291),
(107, 'https://www.falabella.com/falabella-cl/product/143311951/Notebook-HP-Gamer-Victus-15-fa0022la-Intel-Core-i5-16gb-Ram-512gb-Ssd-RTX3050-4gb-Windows-11-Home/143311952?sponsoredClickData=%257B%2522isXLP%2522%253Atrue%252C%2522pageType%2522%253A%2522category%2522%252C%2522adType%2522%253A%2522products%2522%252C%2522platform%2522%253A%2522desktop%2522%252C%2522regionCode%2522%253A%2522cl%2522%252C%2522context%2522%253A%257B%2522userIdentifier%2522%253A%2522MTc2Mzc3NjEzOTQxNw%253D%253D%2522%252C%2522adIdentifier%2522%253A%2522D22LoQoQBpIRaEg7fLKMBPa7AMJWuxIQAZpaEkzxd5O5UQ0uZ9DqfBoQAZnKAqPPeUGPpFe58_HFuCINCgkxNDMzMTE5NTEQATCO8HFAmAFIAVDI6__JqjM%2522%252C%2522slot%2522%253A5%252C%2522signal%2522%253A%2522Notebooks%2522%252C%2522categoryId%2522%253A%2522cat70057%2522%252C%2522providerName%2522%253A%2522topsort%2522%257D%257D', 'Falabella', 1, 1, '2025-11-22 01:49:48.266899', 292),
(109, 'https://www.falabella.com/falabella-cl/product/144000139/MacBook-Air-13-M4-(10n-CPU-8n-GPU),-16GB-RAM,-256GB-SSD,-2025-Midnight/144000140?sponsoredClickData=%257B%2522isXLP%2522%253Atrue%252C%2522pageType%2522%253A%2522category%2522%252C%2522adType%2522%253A%2522products%2522%252C%2522platform%2522%253A%2522desktop%2522%252C%2522regionCode%2522%253A%2522cl%2522%252C%2522context%2522%253A%257B%2522userIdentifier%2522%253A%2522MTc2Mzc3NjI2ODA0MQ%253D%253D%2522%252C%2522adIdentifier%2522%253A%25222Gxw3QoQBpIRaEg7fLKMBPa7AMJWuxIQAZpZ3fB8dPCGxLjQvF3OQBoQAZnKAzJQfCOZ40vI5EIAKSINCgkxNDQwMDAxMzkQATCZ8XFAoAZIAVDI6__JqjM%2522%252C%2522slot%2522%253A1%252C%2522signal%2522%253A%2522Notebooks%2522%252C%2522categoryId%2522%253A%2522cat70057%2522%252C%2522providerName%2522%253A%2522topsort%2522%257D%257D', 'Falabella', 1, 1, '2025-11-22 01:51:15.100941', 294),
(110, 'https://www.falabella.com/falabella-cl/product/146057997/Notebook-HP-Gamer-Victus-15-fa2014la-Intel-Core-i5-16gb-Ram-512gb-Ssd-RTX3050-6gb-Windows-11-Home/146057998?sponsoredClickData=%257B%2522isXLP%2522%253Atrue%252C%2522pageType%2522%253A%2522category%2522%252C%2522adType%2522%253A%2522products%2522%252C%2522platform%2522%253A%2522desktop%2522%252C%2522regionCode%2522%253A%2522cl%2522%252C%2522context%2522%253A%257B%2522userIdentifier%2522%253A%2522MTc2Mzc3NjI2ODA0MQ%253D%253D%2522%252C%2522adIdentifier%2522%253A%2522yoHGZQoQBpIRaEg7fLKMBPa7AMJWuxIQAZpaEkzxd5O5UQ0uZ9DqfBoQAZnKAqPPeUGPpFe58_HFuCINCgkxNDYwNTc5OTcQATCO8HFA6AFIAVDI6__JqjM%2522%252C%2522slot%2522%253A2%252C%2522signal%2522%253A%2522Notebooks%2522%252C%2522categoryId%2522%253A%2522cat70057%2522%252C%2522providerName%2522%253A%2522topsort%2522%257D%257D', 'Falabella', 1, 1, '2025-11-22 01:51:15.117470', 295),
(111, 'https://www.falabella.com/falabella-cl/product/143311951/Notebook-HP-Gamer-Victus-15-fa0022la-Intel-Core-i5-16gb-Ram-512gb-Ssd-RTX3050-4gb-Windows-11-Home/143311952?sponsoredClickData=%257B%2522isXLP%2522%253Atrue%252C%2522pageType%2522%253A%2522category%2522%252C%2522adType%2522%253A%2522products%2522%252C%2522platform%2522%253A%2522desktop%2522%252C%2522regionCode%2522%253A%2522cl%2522%252C%2522context%2522%253A%257B%2522userIdentifier%2522%253A%2522MTc2Mzc3NjI2ODA0MQ%253D%253D%2522%252C%2522adIdentifier%2522%253A%2522D22LoQoQBpIRaEg7fLKMBPa7AMJWuxIQAZpaEkzxd5O5UQ0uZ9DqfBoQAZnKAqPPeUGPpFe58_HFuCINCgkxNDMzMTE5NTEQATCO8HFAmAFIAVDI6__JqjM%2522%252C%2522slot%2522%253A5%252C%2522signal%2522%253A%2522Notebooks%2522%252C%2522categoryId%2522%253A%2522cat70057%2522%252C%2522providerName%2522%253A%2522topsort%2522%257D%257D', 'Falabella', 1, 1, '2025-11-22 01:51:15.160103', 296),
(112, 'https://www.falabella.com/falabella-cl/product/143701851/Notebook-HP-Gamer-Victus-15-fa1013la-Intel-Core-i7-16gb-Ram-1tb-Ssd-RTX4060-8GB-Windows-11-Home/143701852?sponsoredClickData=%257B%2522isXLP%2522%253Atrue%252C%2522pageType%2522%253A%2522category%2522%252C%2522adType%2522%253A%2522products%2522%252C%2522platform%2522%253A%2522desktop%2522%252C%2522regionCode%2522%253A%2522cl%2522%252C%2522context%2522%253A%257B%2522userIdentifier%2522%253A%2522MTc2Mzc3NjI2ODA0MQ%253D%253D%2522%252C%2522adIdentifier%2522%253A%2522G_zGVQoQBpIRaEg7fLKMBPa7AMJWuxIQAZpaEkzxd5O5UQ0uZ9DqfBoQAZnKAqPPeUGPpFe58_HFuCINCgkxNDM3MDE4NTEQATCO8HFAmwFIAVDI6__JqjM%2522%252C%2522slot%2522%253A6%252C%2522signal%2522%253A%2522Notebooks%2522%252C%2522categoryId%2522%253A%2522cat70057%2522%252C%2522providerName%2522%253A%2522topsort%2522%257D%257D', 'Falabella', 1, 1, '2025-11-22 01:51:15.176341', 297);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wishlist`
--

CREATE TABLE `wishlist` (
  `id_wishlist` int NOT NULL,
  `nombre_wishlist` varchar(100) NOT NULL,
  `es_publica` tinyint(1) NOT NULL,
  `fecha_creacion` datetime(6) NOT NULL,
  `fecha_actualizacion` datetime(6) NOT NULL,
  `usuario_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `wishlist`
--

INSERT INTO `wishlist` (`id_wishlist`, `nombre_wishlist`, `es_publica`, `fecha_creacion`, `fecha_actualizacion`, `usuario_id`) VALUES
(6, 'Favoritos', 1, '2025-10-15 01:29:49.177066', '2025-10-15 01:29:49.177083', 1),
(8, 'Favoritos', 1, '2025-10-18 02:16:38.131974', '2025-10-18 02:16:38.131994', 29);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_emailaddress_user_id_email_987c8728_uniq` (`user_id`,`email`),
  ADD KEY `account_emailaddress_email_03be32b2` (`email`);

--
-- Indices de la tabla `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`),
  ADD KEY `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` (`email_address_id`);

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `bloqueo_de_usuario`
--
ALTER TABLE `bloqueo_de_usuario`
  ADD PRIMARY KEY (`id_bloqueo`),
  ADD UNIQUE KEY `unique_user_block` (`blocker_id`,`blocked_id`),
  ADD KEY `bloqueo_de_usuario_blocked_id_7f552a2a_fk_core_user_id_usuario` (`blocked_id`);

--
-- Indices de la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`id_comentario`),
  ADD KEY `idx_comentario_post` (`id_post`),
  ADD KEY `idx_comentario_usuario` (`usuario_id`),
  ADD KEY `idx_comentario_fecha` (`fecha_comentario`);

--
-- Indices de la tabla `comuna`
--
ALTER TABLE `comuna`
  ADD PRIMARY KEY (`id_comuna`),
  ADD UNIQUE KEY `uniq_comuna_por_region` (`nombre_comuna`,`id_region`),
  ADD KEY `idx_comuna_region` (`id_region`);

--
-- Indices de la tabla `conversacion`
--
ALTER TABLE `conversacion`
  ADD PRIMARY KEY (`conversacion_id`),
  ADD KEY `idx_conv_tipo` (`tipo`),
  ADD KEY `idx_conv_evento` (`evento_id`),
  ADD KEY `idx_conv_creador` (`id_usuario`),
  ADD KEY `idx_conv_ultimo_mensaje` (`ultimo_mensaje_id`);

--
-- Indices de la tabla `core_categoria`
--
ALTER TABLE `core_categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `core_conversationevent`
--
ALTER TABLE `core_conversationevent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_conversationeve_conversacion_id_4d7c90a1_fk_conversac` (`conversacion_id`),
  ADD KEY `core_conversationeve_creado_por_id_42b11788_fk_core_user` (`creado_por_id`);

--
-- Indices de la tabla `core_eventparticipant`
--
ALTER TABLE `core_eventparticipant`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `core_eventparticipant_evento_id_usuario_id_eaa2789e_uniq` (`evento_id`,`usuario_id`),
  ADD KEY `core_eventparticipan_usuario_id_d70b3a43_fk_core_user` (`usuario_id`);

--
-- Indices de la tabla `core_generatedcard`
--
ALTER TABLE `core_generatedcard`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `share_token` (`share_token`),
  ADD KEY `core_generatedcard_user_id_9ed6e7d1_fk_core_user_id_usuario` (`user_id`);

--
-- Indices de la tabla `core_marca`
--
ALTER TABLE `core_marca`
  ADD PRIMARY KEY (`id_marca`);

--
-- Indices de la tabla `core_secretsantaassignment`
--
ALTER TABLE `core_secretsantaassignment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `core_secretsantaassignment_evento_id_recibe_id_c0e2b640_uniq` (`evento_id`,`recibe_id`),
  ADD UNIQUE KEY `core_secretsantaassignment_evento_id_da_id_bc66c7c9_uniq` (`evento_id`,`da_id`),
  ADD KEY `core_secretsantaassi_da_id_f8acfb06_fk_core_user` (`da_id`),
  ADD KEY `core_secretsantaassi_recibe_id_444a4c37_fk_core_user` (`recibe_id`);

--
-- Indices de la tabla `core_user`
--
ALTER TABLE `core_user`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `correo` (`correo`),
  ADD UNIQUE KEY `nombre_usuario` (`nombre_usuario`);

--
-- Indices de la tabla `core_user_groups`
--
ALTER TABLE `core_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `core_user_groups_user_id_group_id_c82fcad1_uniq` (`user_id`,`group_id`),
  ADD KEY `core_user_groups_group_id_fe8c697f_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `core_user_intereses_categorias`
--
ALTER TABLE `core_user_intereses_categorias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `core_user_intereses_cate_user_id_categoria_id_9c05708c_uniq` (`user_id`,`categoria_id`),
  ADD KEY `core_user_intereses__categoria_id_18d78174_fk_core_cate` (`categoria_id`);

--
-- Indices de la tabla `core_user_intereses_marcas`
--
ALTER TABLE `core_user_intereses_marcas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `core_user_intereses_marcas_user_id_marca_id_49bc58ef_uniq` (`user_id`,`marca_id`),
  ADD KEY `core_user_intereses__marca_id_3c2a7265_fk_core_marc` (`marca_id`);

--
-- Indices de la tabla `core_user_user_permissions`
--
ALTER TABLE `core_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `core_user_user_permissions_user_id_permission_id_73ea0daa_uniq` (`user_id`,`permission_id`),
  ADD KEY `core_user_user_permi_permission_id_35ccf601_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD PRIMARY KEY (`id_direccion`),
  ADD KEY `idx_dir_usuario` (`id_usuario`),
  ADD KEY `idx_dir_comuna` (`id_comuna`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `django_site`
--
ALTER TABLE `django_site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`);

--
-- Indices de la tabla `entrega_mensaje`
--
ALTER TABLE `entrega_mensaje`
  ADD PRIMARY KEY (`entrega_id`),
  ADD UNIQUE KEY `uq_entrega_msg_usuario` (`mensaje_id`,`id_usuario`),
  ADD KEY `idx_entrega_mensaje` (`mensaje_id`),
  ADD KEY `idx_entrega_usuario_estado` (`id_usuario`,`estado`);

--
-- Indices de la tabla `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`evento_id`),
  ADD KEY `idx_evento_usuario` (`id_usuario`),
  ADD KEY `idx_evento_fecha` (`fecha_evento`);

--
-- Indices de la tabla `HistorialBusqueda`
--
ALTER TABLE `HistorialBusqueda`
  ADD PRIMARY KEY (`id_search`),
  ADD KEY `idx_histbusq_user` (`id_user`),
  ADD KEY `idx_histbusq_term` (`term`);

--
-- Indices de la tabla `HistorialDeRegalos`
--
ALTER TABLE `HistorialDeRegalos`
  ADD PRIMARY KEY (`id_regalo_log`),
  ADD KEY `idx_histregalo_item` (`id_item`),
  ADD KEY `idx_histregalo_user` (`id_user`);

--
-- Indices de la tabla `insignia`
--
ALTER TABLE `insignia`
  ADD PRIMARY KEY (`id_insignia`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `insignia_otorgada`
--
ALTER TABLE `insignia_otorgada`
  ADD PRIMARY KEY (`id_ins_otorgada`),
  ADD UNIQUE KEY `unique_user_insignia_otorgada` (`id_usuario`,`id_insignia`),
  ADD KEY `insignia_otorgada_id_insignia_41db8ecf_fk_insignia_id_insignia` (`id_insignia`);

--
-- Indices de la tabla `invitacion_evento`
--
ALTER TABLE `invitacion_evento`
  ADD PRIMARY KEY (`invitacion_id`),
  ADD KEY `invitacion_evento_emisor_id_c35dd76e_fk_core_user_id_usuario` (`emisor_id`),
  ADD KEY `idx_inv_evento` (`evento_id`),
  ADD KEY `idx_inv_receptor_estado` (`receptor_id`,`estado`);

--
-- Indices de la tabla `item_en_wishlist`
--
ALTER TABLE `item_en_wishlist`
  ADD PRIMARY KEY (`id_item`),
  ADD UNIQUE KEY `uniq_producto_interno_por_wishlist` (`id_wishlist`,`id_producto`),
  ADD UNIQUE KEY `uniq_producto_externo_por_wishlist` (`id_wishlist`,`id_producto_externo`),
  ADD KEY `item_en_wishlist_id_wishlist_0210abef` (`id_wishlist`),
  ADD KEY `item_en_wishlist_id_producto_e868bcbe` (`id_producto`),
  ADD KEY `item_en_wishlist_id_producto_externo_9ac340cd_fk_producto_` (`id_producto_externo`);

--
-- Indices de la tabla `like`
--
ALTER TABLE `like`
  ADD PRIMARY KEY (`id_like`),
  ADD KEY `idx_like_usuario` (`id_usuario`),
  ADD KEY `idx_like_post` (`id_post`),
  ADD KEY `idx_like_comentario` (`id_comentario`),
  ADD KEY `idx_like_tipo` (`tipo_like`),
  ADD KEY `idx_like_fecha` (`fecha_like`);

--
-- Indices de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD PRIMARY KEY (`mensaje_id`),
  ADD KEY `idx_msg_conv_fecha` (`conversacion_id`,`creado_en`),
  ADD KEY `idx_msg_remitente` (`id_usuario`);

--
-- Indices de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD PRIMARY KEY (`notificacion_id`),
  ADD KEY `idx_notif_usuario_leida_fecha` (`usuario_id`,`leida`,`creada_en`);

--
-- Indices de la tabla `notification_device`
--
ALTER TABLE `notification_device`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `idx_nd_user` (`id_usuario`),
  ADD KEY `idx_nd_active` (`active`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id_pais`),
  ADD UNIQUE KEY `nombre_pais` (`nombre_pais`);

--
-- Indices de la tabla `participante_conversacion`
--
ALTER TABLE `participante_conversacion`
  ADD PRIMARY KEY (`participante_id`),
  ADD UNIQUE KEY `uq_conv_usuario` (`conversacion_id`,`id_usuario`),
  ADD KEY `idx_partconv_conv` (`conversacion_id`),
  ADD KEY `idx_partconv_usuario` (`id_usuario`);

--
-- Indices de la tabla `participante_de_evento`
--
ALTER TABLE `participante_de_evento`
  ADD PRIMARY KEY (`participante_id`),
  ADD UNIQUE KEY `uq_participante_evento_usuario` (`evento_id`,`id_usuario`),
  ADD KEY `idx_part_evento` (`evento_id`),
  ADD KEY `idx_part_usuario` (`id_usuario`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`id_perfil`),
  ADD UNIQUE KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id_post`),
  ADD KEY `idx_post_usuario` (`id_usuario`),
  ADD KEY `idx_post_tipo` (`tipo_post`),
  ADD KEY `idx_post_publico` (`es_publico`),
  ADD KEY `idx_post_fecha` (`fecha_publicacion`),
  ADD KEY `idx_post_gif_url` (`gif_url`);

--
-- Indices de la tabla `preferencias_usuario`
--
ALTER TABLE `preferencias_usuario`
  ADD PRIMARY KEY (`id_preferencia`),
  ADD UNIQUE KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `idx_producto_categoria` (`id_categoria_id`),
  ADD KEY `idx_producto_marca` (`id_marca_id`),
  ADD KEY `idx_producto_activo` (`activo`);

--
-- Indices de la tabla `producto_externo`
--
ALTER TABLE `producto_externo`
  ADD PRIMARY KEY (`id_producto_externo`),
  ADD KEY `idx_ext_fuente` (`fuente`),
  ADD KEY `idx_ext_nombre` (`nombre`),
  ADD KEY `producto_externo_producto_interno_id_88b21c30_fk_producto_` (`producto_interno_id`);

--
-- Indices de la tabla `producto_externo_favorito`
--
ALTER TABLE `producto_externo_favorito`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `producto_externo_favorit_user_id_producto_externo_26b32c17_uniq` (`user_id`,`producto_externo_id`),
  ADD KEY `producto_externo_fav_producto_externo_id_52a144ea_fk_producto_` (`producto_externo_id`);

--
-- Indices de la tabla `recommendation_feedback`
--
ALTER TABLE `recommendation_feedback`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user_product_feedback` (`user_id`,`product_id`),
  ADD KEY `recommendation_feedb_product_id_a22a3149_fk_producto_` (`product_id`);

--
-- Indices de la tabla `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id_region`),
  ADD UNIQUE KEY `uniq_region_por_pais` (`nombre_region`,`id_pais`),
  ADD KEY `idx_region_pais` (`id_pais`);

--
-- Indices de la tabla `registro_actividad`
--
ALTER TABLE `registro_actividad`
  ADD PRIMARY KEY (`id_actividad`),
  ADD KEY `idx_act_usuario` (`id_usuario`),
  ADD KEY `idx_act_tipo` (`tipo_actividad`),
  ADD KEY `idx_act_fecha` (`fecha_actividad`),
  ADD KEY `idx_act_publica` (`es_publica`);

--
-- Indices de la tabla `Reporte_strike`
--
ALTER TABLE `Reporte_strike`
  ADD PRIMARY KEY (`id_reporte`),
  ADD UNIQUE KEY `uq_reporte_user_post` (`id_user`,`id_post`),
  ADD KEY `idx_rep_user` (`id_user`),
  ADD KEY `idx_rep_post` (`id_post`);

--
-- Indices de la tabla `resena_sitio`
--
ALTER TABLE `resena_sitio`
  ADD PRIMARY KEY (`id_resena`),
  ADD KEY `idx_rs_usuario` (`id_usuario`),
  ADD KEY `idx_rs_fecha` (`fecha_resena`);

--
-- Indices de la tabla `seguidor`
--
ALTER TABLE `seguidor`
  ADD PRIMARY KEY (`relacion_id`),
  ADD UNIQUE KEY `uniq_seguidor_seguido` (`seguidor_id`,`seguido_id`),
  ADD KEY `idx_seguidor` (`seguidor_id`),
  ADD KEY `idx_seguido` (`seguido_id`);

--
-- Indices de la tabla `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialaccount_provider_uid_fc810c6e_uniq` (`provider`,`uid`),
  ADD KEY `socialaccount_social_user_id_8146e70c_fk_core_user` (`user_id`);

--
-- Indices de la tabla `socialaccount_socialapp`
--
ALTER TABLE `socialaccount_socialapp`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialapp_sites_socialapp_id_site_id_71a9a768_uniq` (`socialapp_id`,`site_id`),
  ADD KEY `socialaccount_socialapp_sites_site_id_2579dee5_fk_django_site_id` (`site_id`);

--
-- Indices de la tabla `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq` (`app_id`,`account_id`),
  ADD KEY `socialaccount_social_account_id_951f210e_fk_socialacc` (`account_id`);

--
-- Indices de la tabla `solicitud_amistad`
--
ALTER TABLE `solicitud_amistad`
  ADD PRIMARY KEY (`id_solicitud`),
  ADD UNIQUE KEY `uq_solicitud_emisor_receptor` (`emisor_id`,`receptor_id`),
  ADD KEY `idx_sol_receptor_estado` (`receptor_id`,`estado`),
  ADD KEY `idx_sol_emisor_estado` (`emisor_id`,`estado`);

--
-- Indices de la tabla `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id_etiqueta`),
  ADD UNIQUE KEY `nombre_etiqueta` (`nombre_etiqueta`),
  ADD KEY `idx_tag_nombre` (`nombre_etiqueta`);

--
-- Indices de la tabla `url_tienda`
--
ALTER TABLE `url_tienda`
  ADD PRIMARY KEY (`id_url`),
  ADD KEY `idx_url_producto` (`producto_id`),
  ADD KEY `idx_url_activo` (`activo`);

--
-- Indices de la tabla `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id_wishlist`),
  ADD UNIQUE KEY `wishlist_usuario_id_nombre_wishlist_05a95360_uniq` (`usuario_id`,`nombre_wishlist`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT de la tabla `bloqueo_de_usuario`
--
ALTER TABLE `bloqueo_de_usuario`
  MODIFY `id_bloqueo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `comentario`
--
ALTER TABLE `comentario`
  MODIFY `id_comentario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT de la tabla `comuna`
--
ALTER TABLE `comuna`
  MODIFY `id_comuna` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `conversacion`
--
ALTER TABLE `conversacion`
  MODIFY `conversacion_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT de la tabla `core_categoria`
--
ALTER TABLE `core_categoria`
  MODIFY `id_categoria` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `core_conversationevent`
--
ALTER TABLE `core_conversationevent`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de la tabla `core_eventparticipant`
--
ALTER TABLE `core_eventparticipant`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=311;

--
-- AUTO_INCREMENT de la tabla `core_generatedcard`
--
ALTER TABLE `core_generatedcard`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT de la tabla `core_marca`
--
ALTER TABLE `core_marca`
  MODIFY `id_marca` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `core_secretsantaassignment`
--
ALTER TABLE `core_secretsantaassignment`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=334;

--
-- AUTO_INCREMENT de la tabla `core_user`
--
ALTER TABLE `core_user`
  MODIFY `id_usuario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `core_user_groups`
--
ALTER TABLE `core_user_groups`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_user_intereses_categorias`
--
ALTER TABLE `core_user_intereses_categorias`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `core_user_intereses_marcas`
--
ALTER TABLE `core_user_intereses_marcas`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `core_user_user_permissions`
--
ALTER TABLE `core_user_user_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `direccion`
--
ALTER TABLE `direccion`
  MODIFY `id_direccion` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT de la tabla `django_site`
--
ALTER TABLE `django_site`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `entrega_mensaje`
--
ALTER TABLE `entrega_mensaje`
  MODIFY `entrega_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=439;

--
-- AUTO_INCREMENT de la tabla `evento`
--
ALTER TABLE `evento`
  MODIFY `evento_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `HistorialBusqueda`
--
ALTER TABLE `HistorialBusqueda`
  MODIFY `id_search` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT de la tabla `HistorialDeRegalos`
--
ALTER TABLE `HistorialDeRegalos`
  MODIFY `id_regalo_log` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `insignia`
--
ALTER TABLE `insignia`
  MODIFY `id_insignia` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `insignia_otorgada`
--
ALTER TABLE `insignia_otorgada`
  MODIFY `id_ins_otorgada` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `invitacion_evento`
--
ALTER TABLE `invitacion_evento`
  MODIFY `invitacion_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `item_en_wishlist`
--
ALTER TABLE `item_en_wishlist`
  MODIFY `id_item` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `like`
--
ALTER TABLE `like`
  MODIFY `id_like` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  MODIFY `mensaje_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=936;

--
-- AUTO_INCREMENT de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  MODIFY `notificacion_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT de la tabla `notification_device`
--
ALTER TABLE `notification_device`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `id_pais` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `participante_conversacion`
--
ALTER TABLE `participante_conversacion`
  MODIFY `participante_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=558;

--
-- AUTO_INCREMENT de la tabla `participante_de_evento`
--
ALTER TABLE `participante_de_evento`
  MODIFY `participante_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `id_perfil` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `post`
--
ALTER TABLE `post`
  MODIFY `id_post` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT de la tabla `preferencias_usuario`
--
ALTER TABLE `preferencias_usuario`
  MODIFY `id_preferencia` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;

--
-- AUTO_INCREMENT de la tabla `producto_externo`
--
ALTER TABLE `producto_externo`
  MODIFY `id_producto_externo` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `producto_externo_favorito`
--
ALTER TABLE `producto_externo_favorito`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `recommendation_feedback`
--
ALTER TABLE `recommendation_feedback`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT de la tabla `region`
--
ALTER TABLE `region`
  MODIFY `id_region` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `registro_actividad`
--
ALTER TABLE `registro_actividad`
  MODIFY `id_actividad` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Reporte_strike`
--
ALTER TABLE `Reporte_strike`
  MODIFY `id_reporte` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `resena_sitio`
--
ALTER TABLE `resena_sitio`
  MODIFY `id_resena` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `seguidor`
--
ALTER TABLE `seguidor`
  MODIFY `relacion_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT de la tabla `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `socialaccount_socialapp`
--
ALTER TABLE `socialaccount_socialapp`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `solicitud_amistad`
--
ALTER TABLE `solicitud_amistad`
  MODIFY `id_solicitud` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `tags`
--
ALTER TABLE `tags`
  MODIFY `id_etiqueta` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `url_tienda`
--
ALTER TABLE `url_tienda`
  MODIFY `id_url` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT de la tabla `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id_wishlist` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD CONSTRAINT `account_emailaddress_user_id_2c513194_fk_core_user_id_usuario` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id_usuario`);

--
-- Filtros para la tabla `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD CONSTRAINT `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` FOREIGN KEY (`email_address_id`) REFERENCES `account_emailaddress` (`id`);

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `bloqueo_de_usuario`
--
ALTER TABLE `bloqueo_de_usuario`
  ADD CONSTRAINT `bloqueo_de_usuario_blocked_id_7f552a2a_fk_core_user_id_usuario` FOREIGN KEY (`blocked_id`) REFERENCES `core_user` (`id_usuario`),
  ADD CONSTRAINT `bloqueo_de_usuario_blocker_id_67963723_fk_core_user_id_usuario` FOREIGN KEY (`blocker_id`) REFERENCES `core_user` (`id_usuario`);

--
-- Filtros para la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD CONSTRAINT `comentario_id_post_dfcf832e_fk_post_id_post` FOREIGN KEY (`id_post`) REFERENCES `post` (`id_post`),
  ADD CONSTRAINT `comentario_usuario_id_e164ef9d_fk_core_user_id_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `core_user` (`id_usuario`);

--
-- Filtros para la tabla `comuna`
--
ALTER TABLE `comuna`
  ADD CONSTRAINT `comuna_id_region_6bf39855_fk_region_id_region` FOREIGN KEY (`id_region`) REFERENCES `region` (`id_region`);

--
-- Filtros para la tabla `conversacion`
--
ALTER TABLE `conversacion`
  ADD CONSTRAINT `core_conversacion_evento_id_94172b57_fk_evento_evento_id` FOREIGN KEY (`evento_id`) REFERENCES `evento` (`evento_id`),
  ADD CONSTRAINT `core_conversacion_id_usuario_2bb43db8_fk_core_user_id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `core_user` (`id_usuario`),
  ADD CONSTRAINT `core_conversacion_ultimo_mensaje_id_e97896b2_fk_core_mens` FOREIGN KEY (`ultimo_mensaje_id`) REFERENCES `mensaje` (`mensaje_id`);

--
-- Filtros para la tabla `core_conversationevent`
--
ALTER TABLE `core_conversationevent`
  ADD CONSTRAINT `core_conversationeve_conversacion_id_4d7c90a1_fk_conversac` FOREIGN KEY (`conversacion_id`) REFERENCES `conversacion` (`conversacion_id`),
  ADD CONSTRAINT `core_conversationeve_creado_por_id_42b11788_fk_core_user` FOREIGN KEY (`creado_por_id`) REFERENCES `core_user` (`id_usuario`);

--
-- Filtros para la tabla `core_eventparticipant`
--
ALTER TABLE `core_eventparticipant`
  ADD CONSTRAINT `core_eventparticipan_evento_id_49697349_fk_core_conv` FOREIGN KEY (`evento_id`) REFERENCES `core_conversationevent` (`id`),
  ADD CONSTRAINT `core_eventparticipan_usuario_id_d70b3a43_fk_core_user` FOREIGN KEY (`usuario_id`) REFERENCES `core_user` (`id_usuario`);

--
-- Filtros para la tabla `core_generatedcard`
--
ALTER TABLE `core_generatedcard`
  ADD CONSTRAINT `core_generatedcard_user_id_9ed6e7d1_fk_core_user_id_usuario` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id_usuario`);

--
-- Filtros para la tabla `core_secretsantaassignment`
--
ALTER TABLE `core_secretsantaassignment`
  ADD CONSTRAINT `core_secretsantaassi_da_id_f8acfb06_fk_core_user` FOREIGN KEY (`da_id`) REFERENCES `core_user` (`id_usuario`),
  ADD CONSTRAINT `core_secretsantaassi_evento_id_6293a266_fk_core_conv` FOREIGN KEY (`evento_id`) REFERENCES `core_conversationevent` (`id`),
  ADD CONSTRAINT `core_secretsantaassi_recibe_id_444a4c37_fk_core_user` FOREIGN KEY (`recibe_id`) REFERENCES `core_user` (`id_usuario`);

--
-- Filtros para la tabla `core_user_groups`
--
ALTER TABLE `core_user_groups`
  ADD CONSTRAINT `core_user_groups_group_id_fe8c697f_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `core_user_groups_user_id_70b4d9b8_fk_core_user_id_usuario` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id_usuario`);

--
-- Filtros para la tabla `core_user_intereses_categorias`
--
ALTER TABLE `core_user_intereses_categorias`
  ADD CONSTRAINT `core_user_intereses__categoria_id_18d78174_fk_core_cate` FOREIGN KEY (`categoria_id`) REFERENCES `core_categoria` (`id_categoria`),
  ADD CONSTRAINT `core_user_intereses__user_id_ce1fe002_fk_core_user` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id_usuario`);

--
-- Filtros para la tabla `core_user_intereses_marcas`
--
ALTER TABLE `core_user_intereses_marcas`
  ADD CONSTRAINT `core_user_intereses__marca_id_3c2a7265_fk_core_marc` FOREIGN KEY (`marca_id`) REFERENCES `core_marca` (`id_marca`),
  ADD CONSTRAINT `core_user_intereses__user_id_9db129a6_fk_core_user` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id_usuario`);

--
-- Filtros para la tabla `core_user_user_permissions`
--
ALTER TABLE `core_user_user_permissions`
  ADD CONSTRAINT `core_user_user_permi_permission_id_35ccf601_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `core_user_user_permi_user_id_085123d3_fk_core_user` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id_usuario`);

--
-- Filtros para la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD CONSTRAINT `direccion_id_comuna_6c33665c_fk_comuna_id_comuna` FOREIGN KEY (`id_comuna`) REFERENCES `comuna` (`id_comuna`),
  ADD CONSTRAINT `direccion_id_usuario_3ecfd56d_fk_core_user_id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `core_user` (`id_usuario`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `entrega_mensaje`
--
ALTER TABLE `entrega_mensaje`
  ADD CONSTRAINT `entrega_mensaje_id_usuario_10e3e5f4_fk_core_user_id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `core_user` (`id_usuario`),
  ADD CONSTRAINT `entrega_mensaje_mensaje_id_f09cb057_fk_core_mensaje_mensaje_id` FOREIGN KEY (`mensaje_id`) REFERENCES `mensaje` (`mensaje_id`);

--
-- Filtros para la tabla `evento`
--
ALTER TABLE `evento`
  ADD CONSTRAINT `evento_id_usuario_33970f8a_fk_core_user_id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `core_user` (`id_usuario`);

--
-- Filtros para la tabla `HistorialBusqueda`
--
ALTER TABLE `HistorialBusqueda`
  ADD CONSTRAINT `HistorialBusqueda_id_user_01802661_fk_core_user_id_usuario` FOREIGN KEY (`id_user`) REFERENCES `core_user` (`id_usuario`);

--
-- Filtros para la tabla `HistorialDeRegalos`
--
ALTER TABLE `HistorialDeRegalos`
  ADD CONSTRAINT `HistorialDeRegalos_id_item_2dcd20b0_fk_item_en_wishlist_id_item` FOREIGN KEY (`id_item`) REFERENCES `item_en_wishlist` (`id_item`),
  ADD CONSTRAINT `HistorialDeRegalos_id_user_1d3f3faa_fk_core_user_id_usuario` FOREIGN KEY (`id_user`) REFERENCES `core_user` (`id_usuario`);

--
-- Filtros para la tabla `insignia_otorgada`
--
ALTER TABLE `insignia_otorgada`
  ADD CONSTRAINT `insignia_otorgada_id_insignia_41db8ecf_fk_insignia_id_insignia` FOREIGN KEY (`id_insignia`) REFERENCES `insignia` (`id_insignia`),
  ADD CONSTRAINT `insignia_otorgada_id_usuario_0ef2ddb4_fk_core_user_id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `core_user` (`id_usuario`);

--
-- Filtros para la tabla `invitacion_evento`
--
ALTER TABLE `invitacion_evento`
  ADD CONSTRAINT `invitacion_evento_emisor_id_c35dd76e_fk_core_user_id_usuario` FOREIGN KEY (`emisor_id`) REFERENCES `core_user` (`id_usuario`),
  ADD CONSTRAINT `invitacion_evento_evento_id_0d298e31_fk_evento_evento_id` FOREIGN KEY (`evento_id`) REFERENCES `evento` (`evento_id`),
  ADD CONSTRAINT `invitacion_evento_receptor_id_72238950_fk_core_user_id_usuario` FOREIGN KEY (`receptor_id`) REFERENCES `core_user` (`id_usuario`);

--
-- Filtros para la tabla `item_en_wishlist`
--
ALTER TABLE `item_en_wishlist`
  ADD CONSTRAINT `item_en_wishlist_id_producto_e868bcbe_fk_producto_id_producto` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`),
  ADD CONSTRAINT `item_en_wishlist_id_producto_externo_9ac340cd_fk_producto_` FOREIGN KEY (`id_producto_externo`) REFERENCES `producto_externo` (`id_producto_externo`),
  ADD CONSTRAINT `item_en_wishlist_id_wishlist_0210abef_fk_wishlist_id_wishlist` FOREIGN KEY (`id_wishlist`) REFERENCES `wishlist` (`id_wishlist`);

--
-- Filtros para la tabla `like`
--
ALTER TABLE `like`
  ADD CONSTRAINT `like_id_comentario_f19a95ab_fk_comentario_id_comentario` FOREIGN KEY (`id_comentario`) REFERENCES `comentario` (`id_comentario`),
  ADD CONSTRAINT `like_id_post_9f28737d_fk_post_id_post` FOREIGN KEY (`id_post`) REFERENCES `post` (`id_post`),
  ADD CONSTRAINT `like_id_usuario_3379f8e5_fk_core_user_id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `core_user` (`id_usuario`);

--
-- Filtros para la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD CONSTRAINT `core_mensaje_conversacion_id_d56f24f0_fk_core_conv` FOREIGN KEY (`conversacion_id`) REFERENCES `conversacion` (`conversacion_id`),
  ADD CONSTRAINT `core_mensaje_id_usuario_654462c3_fk_core_user_id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `core_user` (`id_usuario`);

--
-- Filtros para la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD CONSTRAINT `notificaciones_usuario_id_a75f5971_fk_core_user_id_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `core_user` (`id_usuario`);

--
-- Filtros para la tabla `notification_device`
--
ALTER TABLE `notification_device`
  ADD CONSTRAINT `notification_device_id_usuario_0d51d6ad_fk_core_user_id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `core_user` (`id_usuario`);

--
-- Filtros para la tabla `participante_conversacion`
--
ALTER TABLE `participante_conversacion`
  ADD CONSTRAINT `participante_convers_conversacion_id_3dc6fec5_fk_core_conv` FOREIGN KEY (`conversacion_id`) REFERENCES `conversacion` (`conversacion_id`),
  ADD CONSTRAINT `participante_convers_id_usuario_7b1c3751_fk_core_user` FOREIGN KEY (`id_usuario`) REFERENCES `core_user` (`id_usuario`);

--
-- Filtros para la tabla `participante_de_evento`
--
ALTER TABLE `participante_de_evento`
  ADD CONSTRAINT `participante_de_even_id_usuario_d43f5a77_fk_core_user` FOREIGN KEY (`id_usuario`) REFERENCES `core_user` (`id_usuario`),
  ADD CONSTRAINT `participante_de_evento_evento_id_ab6a9326_fk_evento_evento_id` FOREIGN KEY (`evento_id`) REFERENCES `evento` (`evento_id`);

--
-- Filtros para la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD CONSTRAINT `perfil_id_usuario_80c18415_fk_core_user_id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `core_user` (`id_usuario`);

--
-- Filtros para la tabla `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_id_usuario_0db841f2_fk_core_user_id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `core_user` (`id_usuario`);

--
-- Filtros para la tabla `preferencias_usuario`
--
ALTER TABLE `preferencias_usuario`
  ADD CONSTRAINT `preferencias_usuario_id_usuario_2f5229fc_fk_core_user_id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `core_user` (`id_usuario`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `core_producto_id_categoria_id_7d17e0ff_fk_core_cate` FOREIGN KEY (`id_categoria_id`) REFERENCES `core_categoria` (`id_categoria`),
  ADD CONSTRAINT `core_producto_id_marca_id_75942378_fk_core_marca_id_marca` FOREIGN KEY (`id_marca_id`) REFERENCES `core_marca` (`id_marca`);

--
-- Filtros para la tabla `producto_externo`
--
ALTER TABLE `producto_externo`
  ADD CONSTRAINT `producto_externo_producto_interno_id_88b21c30_fk_producto_` FOREIGN KEY (`producto_interno_id`) REFERENCES `producto` (`id_producto`);

--
-- Filtros para la tabla `producto_externo_favorito`
--
ALTER TABLE `producto_externo_favorito`
  ADD CONSTRAINT `producto_externo_fav_producto_externo_id_52a144ea_fk_producto_` FOREIGN KEY (`producto_externo_id`) REFERENCES `producto_externo` (`id_producto_externo`),
  ADD CONSTRAINT `producto_externo_fav_user_id_31fd8c8a_fk_core_user` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id_usuario`);

--
-- Filtros para la tabla `recommendation_feedback`
--
ALTER TABLE `recommendation_feedback`
  ADD CONSTRAINT `recommendation_feedb_product_id_a22a3149_fk_producto_` FOREIGN KEY (`product_id`) REFERENCES `producto` (`id_producto`),
  ADD CONSTRAINT `recommendation_feedback_user_id_fd7d8fb6_fk_core_user_id_usuario` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id_usuario`);

--
-- Filtros para la tabla `region`
--
ALTER TABLE `region`
  ADD CONSTRAINT `region_id_pais_4cdc256f_fk_pais_id_pais` FOREIGN KEY (`id_pais`) REFERENCES `pais` (`id_pais`);

--
-- Filtros para la tabla `registro_actividad`
--
ALTER TABLE `registro_actividad`
  ADD CONSTRAINT `registro_actividad_id_usuario_630ade77_fk_core_user_id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `core_user` (`id_usuario`);

--
-- Filtros para la tabla `Reporte_strike`
--
ALTER TABLE `Reporte_strike`
  ADD CONSTRAINT `Reporte_strike_id_post_734a6fe5_fk_post_id_post` FOREIGN KEY (`id_post`) REFERENCES `post` (`id_post`),
  ADD CONSTRAINT `Reporte_strike_id_user_9b280077_fk_core_user_id_usuario` FOREIGN KEY (`id_user`) REFERENCES `core_user` (`id_usuario`);

--
-- Filtros para la tabla `resena_sitio`
--
ALTER TABLE `resena_sitio`
  ADD CONSTRAINT `resena_sitio_id_usuario_8f00d156_fk_core_user_id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `core_user` (`id_usuario`);

--
-- Filtros para la tabla `seguidor`
--
ALTER TABLE `seguidor`
  ADD CONSTRAINT `seguidor_seguido_id_abd539c4_fk_core_user_id_usuario` FOREIGN KEY (`seguido_id`) REFERENCES `core_user` (`id_usuario`),
  ADD CONSTRAINT `seguidor_seguidor_id_b1e8c584_fk_core_user_id_usuario` FOREIGN KEY (`seguidor_id`) REFERENCES `core_user` (`id_usuario`);

--
-- Filtros para la tabla `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  ADD CONSTRAINT `socialaccount_social_user_id_8146e70c_fk_core_user` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id_usuario`);

--
-- Filtros para la tabla `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  ADD CONSTRAINT `socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc` FOREIGN KEY (`socialapp_id`) REFERENCES `socialaccount_socialapp` (`id`),
  ADD CONSTRAINT `socialaccount_socialapp_sites_site_id_2579dee5_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- Filtros para la tabla `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  ADD CONSTRAINT `socialaccount_social_account_id_951f210e_fk_socialacc` FOREIGN KEY (`account_id`) REFERENCES `socialaccount_socialaccount` (`id`),
  ADD CONSTRAINT `socialaccount_social_app_id_636a42d7_fk_socialacc` FOREIGN KEY (`app_id`) REFERENCES `socialaccount_socialapp` (`id`);

--
-- Filtros para la tabla `solicitud_amistad`
--
ALTER TABLE `solicitud_amistad`
  ADD CONSTRAINT `solicitud_amistad_emisor_id_4d4d9c97_fk_core_user_id_usuario` FOREIGN KEY (`emisor_id`) REFERENCES `core_user` (`id_usuario`),
  ADD CONSTRAINT `solicitud_amistad_receptor_id_082dd3d8_fk_core_user_id_usuario` FOREIGN KEY (`receptor_id`) REFERENCES `core_user` (`id_usuario`);

--
-- Filtros para la tabla `url_tienda`
--
ALTER TABLE `url_tienda`
  ADD CONSTRAINT `url_tienda_producto_id_5e097b77_fk_producto_id_producto` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id_producto`);

--
-- Filtros para la tabla `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_usuario_id_762aefd8_fk_core_user_id_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `core_user` (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
