-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Servidor: db
-- Tiempo de generación: 26-11-2025 a las 20:12:26
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
(1, 'matiasquezada348@gmail.com', 1, 1, 2),
(2, 'valenzuelajavier612@gmail.com', 1, 1, 3),
(3, 'lukassacuna1884@gmail.com', 1, 1, 4),
(4, 'valenvasjavier612@gmail.com', 1, 1, 5),
(5, 'javistark25@gmail.com', 1, 1, 11),
(7, 'quezadamatias269@gmail.com', 1, 1, 27),
(8, 'matias.dominguezdonoso@gmail.com', 0, 0, 30),
(10, 'matiasignaciodd@gmail.com', 1, 1, 35),
(12, 'lukassproo67@gmail.com', 1, 1, 41),
(13, 'el.alcaide@duocuc.cl', 1, 1, 45),
(14, 'javiervalenzuela061@gmail.com', 0, 0, 28),
(15, 'piriv86029@gyknife.com', 0, 0, 48);

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

--
-- Volcado de datos para la tabla `comentario`
--

INSERT INTO `comentario` (`id_comentario`, `contenido`, `fecha_comentario`, `fecha_edicion`, `id_post`, `usuario_id`) VALUES
(1, 'toda la razon!', '2025-10-02 04:45:10.351094', '2025-10-02 04:45:10.351127', 10, 11),
(2, 'espera que?', '2025-10-02 04:47:07.946646', '2025-10-02 04:47:07.946664', 10, 11),
(16, 'ya te gustaria ser el jefe! permiteme reirme , JAJA', '2025-10-02 05:46:38.108164', '2025-10-02 05:46:38.108179', 9, 11),
(19, 'me gustaria hacer una colaboracion contigo, Bicho', '2025-10-14 01:42:35.497736', '2025-10-14 01:42:35.497750', 8, 11),
(20, 'Hola!', '2025-10-14 01:42:51.164257', '2025-10-14 01:42:51.164271', 10, 11),
(21, 'Acepto, presta la turbina y yo el bicho', '2025-10-14 01:46:18.303932', '2025-10-14 01:46:18.303946', 8, 2),
(22, 'De acuerdo.', '2025-10-14 01:46:32.736701', '2025-10-14 01:46:32.736715', 8, 11),
(23, 'si cache', '2025-10-14 01:54:38.136469', '2025-10-14 01:54:38.136507', 15, 11),
(26, 'y que quieres decir con eso', '2025-10-14 02:29:26.178558', '2025-10-14 02:29:26.178581', 16, 11),
(27, 'hola', '2025-10-14 02:57:23.085994', '2025-10-14 02:57:23.086009', 15, 4),
(28, 'estoy en negocios con el, mas respeto.', '2025-10-15 01:41:52.910409', '2025-10-15 01:41:52.910425', 17, 11),
(29, 'desculpe pela minha linguagem, Reporten a este reculiao!', '2025-10-15 01:42:30.686688', '2025-10-15 01:42:30.686713', 17, 2),
(32, 'que asco', '2025-10-16 02:00:27.411728', '2025-10-16 02:00:27.411744', 21, 11),
(33, 'cielos amigo me encanta esa imagen jajaja saludos', '2025-10-16 02:00:30.419706', '2025-10-16 02:00:30.419726', 23, 24),
(34, 'tralalero tralala in the big 25🌹', '2025-10-16 02:00:51.158589', '2025-10-16 02:00:51.158605', 23, 11),
(35, 'so cute', '2025-10-18 02:04:56.281869', '2025-10-18 02:04:56.281895', 28, 11),
(36, 'un saludo a mi tio que encano que pena', '2025-10-21 01:15:08.514900', '2025-10-21 01:15:08.514917', 27, 24),
(37, 'tralaleros', '2025-10-21 01:15:14.018411', '2025-10-21 01:15:14.018436', 27, 24),
(38, 'tralalero', '2025-10-21 01:20:17.256591', '2025-10-21 01:20:17.256606', 23, 24),
(39, 'no cute', '2025-10-21 01:24:12.200838', '2025-10-21 01:24:12.200854', 28, 11),
(41, 'fucking losers', '2025-10-24 01:04:25.707147', '2025-10-24 01:04:25.707168', 28, 28),
(42, 'jarvis what is tralalero tralala', '2025-10-24 01:04:42.451209', '2025-10-24 01:04:42.451227', 23, 28),
(43, 'fuckin gross', '2025-10-24 01:04:51.438132', '2025-10-24 01:04:51.438159', 21, 28),
(45, 'PRANKED MOTHERFUCKERS!', '2025-10-25 02:12:41.561239', '2025-10-25 02:12:41.561254', 37, 28),
(46, '\"LOS DOSH\" JEJE!', '2025-10-25 02:13:12.489045', '2025-10-25 02:13:12.489063', 37, 2),
(52, 'sexooo', '2025-10-30 23:50:44.425738', '2025-10-30 23:50:44.425756', 55, 24),
(54, 'saludos hombre fornite', '2025-10-30 23:57:31.305841', '2025-10-30 23:57:31.305857', 57, 24),
(55, 'la wea feaxd', '2025-11-04 01:25:17.475250', '2025-11-04 01:25:17.475268', 64, 2),
(56, 'feliz cum', '2025-11-04 01:31:01.214111', '2025-11-04 01:31:01.214133', 57, 2),
(57, 'que wea?', '2025-11-04 01:38:43.832267', '2025-11-04 01:38:43.832283', 63, 2),
(58, 'que horrible amigo para eso nada', '2025-11-04 02:34:39.833440', '2025-11-04 02:34:39.833458', 64, 11),
(59, 'me encanta!! por favor cuentame que tal', '2025-11-04 02:36:21.586521', '2025-11-04 02:36:21.586536', 66, 24),
(60, 'ahora te cuento las primeras experiencias', '2025-11-04 02:36:36.694386', '2025-11-04 02:36:36.694403', 66, 11),
(61, 'what the fuck, aunt turbin you\'re a fuckin psycho', '2025-11-04 23:54:18.851620', '2025-11-04 23:54:18.851636', 66, 28),
(62, 'weon', '2025-11-05 00:46:40.841780', '2025-11-05 00:46:40.841799', 66, 2),
(66, 'que rico', '2025-11-05 01:25:14.866226', '2025-11-05 01:25:14.866242', 66, 24),
(85, 'fucking niggers i hate niggas', '2025-11-05 02:35:21.633257', '2025-11-05 02:35:21.633280', 81, 28),
(86, 'nigga', '2025-11-05 02:35:31.557429', '2025-11-05 02:35:31.557445', 81, 28),
(87, 'que raro!!!', '2025-11-05 17:49:20.915405', '2025-11-05 17:49:20.915422', 91, 45);

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
(1, 'directa', NULL, NULL, '2025-10-01 04:29:41.794212', '2025-11-18 23:52:40.417695', 'activa', 11, NULL, 797),
(2, 'directa', NULL, NULL, '2025-10-01 23:54:41.786845', '2025-11-25 01:28:46.590989', 'activa', 11, NULL, 924),
(3, 'directa', NULL, NULL, '2025-10-02 01:30:52.721445', '2025-10-31 00:21:23.757412', 'activa', 2, NULL, 605),
(4, 'directa', NULL, NULL, '2025-10-02 01:31:08.578725', '2025-11-22 02:30:07.974148', 'activa', 11, NULL, 919),
(5, 'directa', NULL, NULL, '2025-10-02 01:36:21.245067', '2025-11-22 02:30:10.516706', 'activa', 11, NULL, 920),
(7, 'directa', NULL, NULL, '2025-10-02 03:12:11.288451', '2025-10-02 03:36:17.080811', 'activa', 2, NULL, NULL),
(9, 'directa', NULL, NULL, '2025-10-15 00:09:46.030615', '2025-11-22 02:30:05.507863', 'activa', 28, NULL, 918),
(10, 'directa', NULL, NULL, '2025-10-15 01:25:45.111089', '2025-10-15 01:28:15.208328', 'activa', 2, NULL, 112),
(26, 'directa', NULL, NULL, '2025-10-18 03:34:12.402956', '2025-10-27 23:42:27.419515', 'activa', 2, NULL, 560),
(27, 'directa', NULL, NULL, '2025-10-18 03:40:21.294107', '2025-10-18 03:40:21.294127', 'activa', 29, NULL, NULL),
(31, 'directa', NULL, NULL, '2025-10-18 03:48:23.172447', '2025-10-18 03:48:23.172475', 'activa', 27, NULL, NULL),
(32, 'directa', NULL, NULL, '2025-10-18 03:50:37.664501', '2025-10-18 03:50:37.664524', 'activa', 27, NULL, NULL),
(42, 'grupo', 'THIS IS', NULL, '2025-10-22 02:16:18.568449', '2025-10-25 01:24:09.640043', 'activa', 11, NULL, 529),
(43, 'directa', NULL, NULL, '2025-10-22 03:18:34.453916', '2025-10-29 02:52:49.133039', 'activa', 30, NULL, NULL),
(44, 'directa', NULL, NULL, '2025-10-22 03:18:38.816594', '2025-10-31 01:41:24.182126', 'activa', 28, NULL, 606),
(45, 'grupo', 'Stark Industries', NULL, '2025-10-22 03:25:11.981802', '2025-11-22 02:30:22.089624', 'activa', 28, NULL, 922),
(46, 'directa', NULL, NULL, '2025-10-22 04:43:18.450772', '2025-10-22 04:43:18.450787', 'activa', 1, NULL, NULL),
(47, 'directa', NULL, NULL, '2025-10-23 01:24:31.648792', '2025-11-22 02:29:58.777729', 'activa', 30, NULL, 917),
(48, 'directa', NULL, NULL, '2025-10-23 02:36:24.233178', '2025-10-23 02:36:24.233196', 'activa', 11, NULL, NULL),
(49, 'directa', NULL, NULL, '2025-10-23 02:38:06.222639', '2025-10-23 02:38:06.222668', 'activa', 30, NULL, NULL),
(50, 'directa', NULL, NULL, '2025-10-23 02:39:50.156685', '2025-10-23 02:39:50.156704', 'activa', 4, NULL, NULL),
(51, 'directa', NULL, NULL, '2025-10-24 01:28:42.459910', '2025-10-24 01:28:42.459935', 'activa', 2, NULL, NULL),
(52, 'directa', NULL, NULL, '2025-10-24 01:35:47.927058', '2025-10-25 02:14:54.515669', 'activa', 28, NULL, 544),
(60, 'grupo', 'hola elias esto es', NULL, '2025-10-29 02:53:05.529502', '2025-10-29 02:53:05.529519', 'activa', 11, NULL, NULL),
(61, 'grupo', 'hola elias esto es', NULL, '2025-10-29 02:53:18.264957', '2025-10-29 02:53:18.264976', 'activa', 11, NULL, NULL),
(62, 'grupo', 'hola elias esto es', NULL, '2025-10-29 02:53:21.513789', '2025-10-29 02:53:21.513804', 'activa', 11, NULL, NULL),
(63, 'grupo', 'hola elias esto es', NULL, '2025-10-29 02:53:24.605738', '2025-10-29 02:53:24.605755', 'activa', 11, NULL, NULL),
(64, 'grupo', 'hola elias esto es', NULL, '2025-10-29 02:53:29.498235', '2025-10-29 02:53:29.498255', 'activa', 11, NULL, NULL),
(65, 'grupo', 'evento', NULL, '2025-10-29 02:59:31.765963', '2025-10-29 02:59:31.765994', 'activa', 11, NULL, NULL),
(66, 'grupo', 'asdasd', NULL, '2025-10-29 03:17:50.028189', '2025-10-29 03:17:50.028211', 'activa', 11, NULL, NULL),
(67, 'grupo', 'aaaa', NULL, '2025-10-29 03:19:40.100577', '2025-10-29 03:19:40.100599', 'activa', 11, NULL, NULL),
(68, 'grupo', 'sdasd', NULL, '2025-10-29 03:26:06.474784', '2025-10-29 03:26:06.474802', 'activa', 11, NULL, NULL),
(70, 'grupo', 'aaaa', NULL, '2025-10-29 03:31:02.800969', '2025-10-29 03:31:02.800998', 'activa', 11, NULL, NULL),
(71, 'grupo', 'sdadasd', NULL, '2025-10-29 03:34:12.402540', '2025-10-29 03:34:12.402570', 'activa', 11, NULL, NULL),
(73, 'evento', 'asdsadas', NULL, '2025-10-29 03:44:08.061491', '2025-10-29 03:46:20.634149', 'activa', 11, NULL, 579),
(74, 'evento', 'amigosecreto', NULL, '2025-10-29 03:58:01.301102', '2025-10-29 03:58:01.301133', 'activa', 11, NULL, NULL),
(75, 'evento', 'njsdnasjkdba', NULL, '2025-10-29 04:01:12.691421', '2025-10-29 04:01:12.691440', 'activa', 11, NULL, NULL),
(77, 'evento', 'amigo secret\'s', NULL, '2025-10-30 01:39:24.978151', '2025-10-30 01:39:24.978169', 'activa', 11, NULL, NULL),
(78, 'evento', 'secrets friends', NULL, '2025-10-30 02:29:40.979424', '2025-10-30 02:29:40.979444', 'activa', 11, NULL, NULL),
(79, 'evento', 'no se quiero que funcione el amigo secreto', NULL, '2025-10-30 02:43:35.103245', '2025-10-30 02:43:35.103263', 'activa', 11, NULL, NULL),
(80, 'evento', 'ojklhbkjvkjv', NULL, '2025-10-30 02:52:08.478410', '2025-10-30 02:52:08.478432', 'activa', 11, NULL, NULL),
(81, 'evento', 'sdasdasdada', NULL, '2025-10-30 03:08:10.075874', '2025-10-30 03:08:10.075894', 'activa', 28, NULL, NULL),
(84, 'evento', 'AAAAA', NULL, '2025-10-30 03:18:48.964949', '2025-10-30 03:18:48.964972', 'activa', 28, NULL, NULL),
(85, 'evento', 'hola', NULL, '2025-10-30 03:28:55.019200', '2025-10-30 03:28:55.019230', 'activa', 28, NULL, NULL),
(86, 'evento', 'dsdadasda', NULL, '2025-10-30 03:31:52.245231', '2025-10-30 03:31:52.245252', 'activa', 28, NULL, NULL),
(87, 'directa', NULL, NULL, '2025-10-30 23:46:42.427836', '2025-10-30 23:46:42.427857', 'activa', 30, NULL, NULL),
(88, 'evento', 'dsadsda', NULL, '2025-10-31 02:10:27.706594', '2025-10-31 02:10:27.706617', 'activa', 28, NULL, NULL),
(89, 'evento', 'yapo funciona', NULL, '2025-10-31 02:30:19.840043', '2025-10-31 02:30:19.840064', 'activa', 28, NULL, NULL),
(90, 'evento', 'yapoooo', NULL, '2025-10-31 02:33:14.609558', '2025-10-31 02:33:14.609579', 'activa', 28, NULL, NULL),
(91, 'evento', 'la prueba final', NULL, '2025-10-31 02:41:41.993591', '2025-10-31 02:41:41.993620', 'activa', 11, NULL, NULL),
(92, 'evento', 'the final test', NULL, '2025-10-31 02:48:31.309464', '2025-10-31 02:48:31.309484', 'activa', 11, NULL, NULL),
(93, 'evento', 'the final of the final sorteo', NULL, '2025-10-31 02:56:31.522602', '2025-10-31 02:56:31.522637', 'activa', 11, NULL, NULL),
(94, 'evento', 'yapo wn funciona porfavor', NULL, '2025-10-31 03:06:00.795225', '2025-10-31 03:06:00.795250', 'activa', 11, NULL, NULL),
(95, 'evento', 'ola', NULL, '2025-10-31 03:08:25.715920', '2025-10-31 03:08:25.715939', 'activa', 11, NULL, NULL),
(98, 'evento', '12131231', NULL, '2025-10-31 03:48:36.769529', '2025-10-31 03:48:36.769550', 'activa', 28, NULL, NULL),
(99, 'evento', 'hola prueba num 1012010310', NULL, '2025-11-03 23:32:05.443229', '2025-11-03 23:32:05.443250', 'activa', 28, NULL, NULL),
(100, 'evento', 'holi intento 1000', NULL, '2025-11-03 23:39:23.128900', '2025-11-03 23:39:23.128922', 'activa', 28, NULL, NULL),
(101, 'evento', 'holi creo que funciona', NULL, '2025-11-03 23:59:41.405508', '2025-11-03 23:59:41.405524', 'activa', 28, NULL, NULL),
(102, 'evento', 'the last one', NULL, '2025-11-04 00:16:35.762368', '2025-11-04 00:16:35.762390', 'activa', 28, NULL, NULL),
(103, 'evento', 'ok', NULL, '2025-11-04 00:29:30.160194', '2025-11-04 00:29:30.160212', 'activa', 11, NULL, NULL),
(104, 'directa', NULL, NULL, '2025-11-04 00:29:33.586354', '2025-11-04 00:29:33.586372', 'activa', 24, NULL, NULL),
(105, 'directa', NULL, NULL, '2025-11-04 00:29:33.589706', '2025-11-04 00:29:33.589724', 'activa', 28, NULL, NULL),
(106, 'evento', 'ya ojala funcione la wea', NULL, '2025-11-04 00:33:13.636017', '2025-11-04 00:33:13.636039', 'activa', 11, NULL, NULL),
(110, 'evento', 'hola elias este es un regalo para ti', NULL, '2025-11-04 00:39:19.122596', '2025-11-04 00:39:19.122633', 'activa', 11, NULL, NULL),
(111, 'evento', 'hola matias este es un regalo para ti', NULL, '2025-11-04 00:41:59.809036', '2025-11-04 00:41:59.809053', 'activa', 11, NULL, NULL),
(112, 'evento', 'hola puedes funcionar buien', NULL, '2025-11-04 00:57:08.509978', '2025-11-04 00:57:08.509996', 'activa', 11, NULL, NULL),
(113, 'evento', 'hola the last try', NULL, '2025-11-04 01:01:13.032475', '2025-11-04 01:01:13.032506', 'activa', 11, NULL, NULL),
(114, 'evento', 'funciona porfavor', NULL, '2025-11-04 01:06:13.734722', '2025-11-04 01:06:13.734750', 'activa', 11, NULL, NULL),
(115, 'evento', 'holaholahola', NULL, '2025-11-04 01:14:14.183333', '2025-11-04 01:14:14.183356', 'activa', 11, NULL, NULL),
(116, 'evento', 'oeyapoeventosecreto', NULL, '2025-11-04 01:21:02.755734', '2025-11-04 01:21:02.755752', 'activa', 11, NULL, NULL),
(117, 'directa', NULL, NULL, '2025-11-04 01:21:06.589867', '2025-11-04 01:21:06.589894', 'activa', 4, NULL, NULL),
(118, 'evento', 'this is', NULL, '2025-11-04 01:21:53.187668', '2025-11-04 01:21:53.187687', 'activa', 11, NULL, NULL),
(119, 'evento', 'this is evento secreto', NULL, '2025-11-04 01:26:29.835718', '2025-11-04 01:26:29.835737', 'activa', 11, NULL, NULL),
(120, 'evento', 'dadadad', NULL, '2025-11-04 01:30:24.138627', '2025-11-04 01:30:24.138643', 'activa', 11, NULL, NULL),
(121, 'evento', 'quqwueu', NULL, '2025-11-04 01:31:04.741043', '2025-11-04 01:31:04.741059', 'activa', 11, NULL, NULL),
(122, 'evento', 'test 1', NULL, '2025-11-04 01:43:18.818347', '2025-11-04 01:43:18.818364', 'activa', 11, NULL, NULL),
(123, 'evento', 'test 2', NULL, '2025-11-04 01:53:07.233522', '2025-11-04 01:53:07.233541', 'activa', 11, NULL, NULL),
(124, 'evento', 'test 3', NULL, '2025-11-04 02:03:18.327505', '2025-11-04 02:03:18.327527', 'activa', 11, NULL, NULL),
(125, 'directa', NULL, NULL, '2025-11-05 04:09:12.897985', '2025-11-05 04:09:12.898008', 'activa', 27, NULL, NULL),
(126, 'directa', NULL, NULL, '2025-11-05 17:42:58.052336', '2025-11-18 01:27:30.102503', 'activa', 27, NULL, 764),
(127, 'grupo', 'hola', NULL, '2025-11-05 17:44:02.014887', '2025-11-05 17:44:08.549457', 'activa', 27, NULL, 757),
(128, 'directa', NULL, NULL, '2025-11-11 01:06:47.829900', '2025-11-11 01:06:47.829928', 'activa', 41, NULL, NULL),
(129, 'evento', 'probwemos', NULL, '2025-11-18 00:05:45.421131', '2025-11-18 00:05:45.421159', 'activa', 11, NULL, NULL),
(130, 'evento', 'hola porafa', NULL, '2025-11-18 01:21:50.132722', '2025-11-18 01:21:50.132740', 'activa', 11, NULL, NULL),
(131, 'evento', 'holaoholaohlaogol1', NULL, '2025-11-18 01:53:09.175329', '2025-11-18 01:53:09.175353', 'activa', 11, NULL, NULL),
(132, 'evento', 'wow', NULL, '2025-11-18 02:47:04.603791', '2025-11-18 02:47:04.603810', 'activa', 2, NULL, NULL),
(133, 'evento', 'AMIGO SECRETILLO', NULL, '2025-11-18 23:40:44.457571', '2025-11-18 23:40:44.457590', 'activa', 11, NULL, NULL),
(134, 'evento', 'SECRETO AMIGO', NULL, '2025-11-18 23:51:47.465179', '2025-11-18 23:51:47.465200', 'activa', 11, NULL, NULL),
(135, 'evento', 'el mayor secreto de los amigos', NULL, '2025-11-19 00:09:31.802892', '2025-11-19 00:09:31.802912', 'activa', 11, NULL, NULL),
(136, 'evento', 'the last of amigos secretos', NULL, '2025-11-19 00:18:07.191925', '2025-11-19 00:18:07.191947', 'activa', 11, NULL, NULL),
(137, 'evento', 'the secret friends', NULL, '2025-11-19 00:24:14.958420', '2025-11-19 00:24:19.190050', 'activa', 11, NULL, 823),
(138, 'evento', 'amihiowae', NULL, '2025-11-19 00:43:15.734114', '2025-11-19 00:43:19.945115', 'activa', 11, NULL, 830),
(139, 'evento', 'chinchimaldi', NULL, '2025-11-19 00:48:47.801653', '2025-11-19 00:48:51.292569', 'activa', 11, NULL, 837),
(140, 'evento', 'ultima confirmacion', NULL, '2025-11-19 00:52:59.900409', '2025-11-19 00:53:02.957358', 'activa', 11, NULL, 844),
(141, 'evento', 'te las of us', NULL, '2025-11-21 00:47:15.654964', '2025-11-21 00:47:18.654287', 'activa', 11, NULL, 854),
(142, 'evento', 'prueba', NULL, '2025-11-21 00:58:26.929343', '2025-11-21 01:19:05.387562', 'activa', 11, NULL, 861),
(143, 'evento', 'the smling friend', NULL, '2025-11-21 01:19:25.786184', '2025-11-21 01:19:25.786200', 'activa', 11, NULL, NULL),
(144, 'evento', '????', NULL, '2025-11-21 01:22:40.870543', '2025-11-21 01:53:26.227405', 'activa', 11, NULL, 869),
(146, 'evento', 'lets go !', NULL, '2025-11-21 02:14:46.587517', '2025-11-21 02:15:00.846632', 'activa', 11, NULL, 876),
(147, 'evento', 'ltest goooo', NULL, '2025-11-21 02:17:36.208039', '2025-11-21 02:17:36.208058', 'activa', 11, NULL, NULL);

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

--
-- Volcado de datos para la tabla `core_conversationevent`
--

INSERT INTO `core_conversationevent` (`id`, `tipo`, `titulo`, `presupuesto_fijo`, `estado`, `creado_en`, `actualizado_en`, `ejecutado_en`, `conversacion_id`, `creado_por_id`, `fecha_intercambio`) VALUES
(4, 'secret_santa', 'asdsadas', 1000.00, 'borrador', '2025-10-29 03:44:08.071448', '2025-10-29 03:44:08.071475', NULL, 73, 11, NULL),
(5, 'secret_santa', 'amigosecreto', 1000.00, 'borrador', '2025-10-29 03:58:01.313741', '2025-10-29 03:58:01.313754', NULL, 74, 11, NULL),
(6, 'secret_santa', 'njsdnasjkdba', 10000.00, 'borrador', '2025-10-29 04:01:12.697925', '2025-10-29 04:01:12.697937', NULL, 75, 11, NULL),
(7, 'secret_santa', 'amigo secret\'s', 10000.00, 'borrador', '2025-10-30 01:39:24.986778', '2025-10-30 01:39:24.986794', NULL, 77, 11, NULL),
(8, 'secret_santa', 'secrets friends', 10000.00, 'borrador', '2025-10-30 02:29:40.989056', '2025-10-30 02:29:40.989075', NULL, 78, 11, NULL),
(9, 'secret_santa', 'no se quiero que funcione el amigo secreto', 111111.00, 'borrador', '2025-10-30 02:43:35.111637', '2025-10-30 02:43:35.111650', NULL, 79, 11, NULL),
(10, 'secret_santa', 'ojklhbkjvkjv', 8.00, 'borrador', '2025-10-30 02:52:08.486015', '2025-10-30 02:52:08.486037', NULL, 80, 11, NULL),
(11, 'secret_santa', 'sdasdasdada', 111111.00, 'borrador', '2025-10-30 03:08:10.081944', '2025-10-30 03:08:10.081956', NULL, 81, 28, NULL),
(12, 'secret_santa', 'AAAAA', 1231312.00, 'borrador', '2025-10-30 03:18:48.970508', '2025-10-30 03:18:48.970521', NULL, 84, 28, NULL),
(13, 'secret_santa', 'hola', 1212121.00, 'borrador', '2025-10-30 03:28:55.025955', '2025-10-30 03:28:55.025967', NULL, 85, 28, NULL),
(14, 'secret_santa', 'dsdadasda', 100000.00, 'sorteado', '2025-10-30 03:31:52.251922', '2025-10-31 01:33:05.479091', NULL, 86, 28, NULL),
(15, 'secret_santa', 'dsadsda', 100000.00, 'sorteado', '2025-10-31 02:10:27.714768', '2025-10-31 02:10:31.968672', NULL, 88, 28, NULL),
(16, 'secret_santa', 'yapo funciona', 10000.00, 'borrador', '2025-10-31 02:30:19.847945', '2025-10-31 02:30:19.847962', NULL, 89, 28, NULL),
(17, 'secret_santa', 'yapoooo', 77777.00, 'sorteado', '2025-10-31 02:33:14.619625', '2025-10-31 02:35:55.948343', NULL, 90, 28, NULL),
(18, 'secret_santa', 'la prueba final', 20000.00, 'borrador', '2025-10-31 02:41:42.003290', '2025-10-31 02:41:42.003303', NULL, 91, 11, NULL),
(19, 'secret_santa', 'the final test', 6000.00, 'borrador', '2025-10-31 02:48:31.318096', '2025-10-31 02:48:31.318108', NULL, 92, 11, NULL),
(20, 'secret_santa', 'the final of the final sorteo', 120.00, 'borrador', '2025-10-31 02:56:31.534933', '2025-10-31 02:56:31.534962', NULL, 93, 11, NULL),
(21, 'secret_santa', 'yapo wn funciona porfavor', 7.00, 'borrador', '2025-10-31 03:06:00.806106', '2025-10-31 03:06:00.806128', NULL, 94, 11, NULL),
(22, 'secret_santa', 'ola', 1231.00, 'sorteado', '2025-10-31 03:08:25.728789', '2025-10-31 03:20:37.120071', NULL, 95, 11, NULL),
(23, 'secret_santa', '12131231', 12313123.00, 'sorteado', '2025-10-31 03:48:36.776380', '2025-10-31 03:52:51.525003', '2025-10-31 03:52:51.524908', 98, 28, NULL),
(24, 'secret_santa', 'hola prueba num 1012010310', 1.00, 'sorteado', '2025-11-03 23:32:05.448537', '2025-11-03 23:32:08.744094', '2025-11-03 23:32:08.744033', 99, 28, NULL),
(25, 'secret_santa', 'holi intento 1000', 11.00, 'sorteado', '2025-11-03 23:39:23.135863', '2025-11-03 23:39:26.980887', '2025-11-03 23:39:26.980838', 100, 28, NULL),
(26, 'secret_santa', 'holi creo que funciona', 10000.00, 'sorteado', '2025-11-03 23:59:41.411132', '2025-11-03 23:59:46.287169', '2025-11-03 23:59:46.287114', 101, 28, NULL),
(27, 'secret_santa', 'the last one', 20000.00, 'sorteado', '2025-11-04 00:16:35.783128', '2025-11-04 00:16:39.591965', '2025-11-04 00:16:39.591891', 102, 28, NULL),
(28, 'secret_santa', 'ok', 1000.00, 'sorteado', '2025-11-04 00:29:30.170254', '2025-11-04 00:29:33.596180', '2025-11-04 00:29:33.596067', 103, 11, NULL),
(29, 'secret_santa', 'ya ojala funcione la wea', 10000.00, 'sorteado', '2025-11-04 00:33:13.647271', '2025-11-04 00:34:12.169612', '2025-11-04 00:34:12.169530', 106, 11, NULL),
(30, 'secret_santa', 'hola elias este es un regalo para ti', 1.00, 'sorteado', '2025-11-04 00:39:19.132338', '2025-11-04 00:46:00.071105', '2025-11-04 00:46:00.071042', 110, 11, NULL),
(31, 'secret_santa', 'hola matias este es un regalo para ti', 1.00, 'sorteado', '2025-11-04 00:41:59.815446', '2025-11-04 00:45:00.066863', '2025-11-04 00:45:00.066795', 111, 11, NULL),
(32, 'secret_santa', 'hola puedes funcionar buien', 12312.00, 'sorteado', '2025-11-04 00:57:08.526155', '2025-11-04 00:57:11.681874', '2025-11-04 00:57:11.681797', 112, 11, NULL),
(33, 'secret_santa', 'hola the last try', 1.00, 'sorteado', '2025-11-04 01:01:13.042361', '2025-11-04 01:03:50.464486', '2025-11-04 01:03:50.464370', 113, 11, NULL),
(34, 'secret_santa', 'funciona porfavor', 1213231.00, 'sorteado', '2025-11-04 01:06:13.749375', '2025-11-04 01:06:18.210048', '2025-11-04 01:06:18.209987', 114, 11, NULL),
(35, 'secret_santa', 'holaholahola', 11313.00, 'sorteado', '2025-11-04 01:14:14.193763', '2025-11-04 01:14:17.114794', '2025-11-04 01:14:17.114644', 115, 11, NULL),
(36, 'secret_santa', 'oeyapoeventosecreto', 10000.00, 'sorteado', '2025-11-04 01:21:02.764120', '2025-11-04 01:21:06.634504', '2025-11-04 01:21:06.634430', 116, 11, NULL),
(37, 'secret_santa', 'this is', 10000.00, 'sorteado', '2025-11-04 01:21:53.195590', '2025-11-04 01:21:57.743854', '2025-11-04 01:21:57.743810', 118, 11, NULL),
(38, 'secret_santa', 'this is evento secreto', 10000.00, 'sorteado', '2025-11-04 01:26:29.845360', '2025-11-04 02:25:51.114582', '2025-11-04 02:25:51.114444', 119, 11, NULL),
(39, 'secret_santa', 'dadadad', 10000.00, 'sorteado', '2025-11-04 01:30:24.159127', '2025-11-04 01:30:27.344012', '2025-11-04 01:30:27.343925', 120, 11, NULL),
(40, 'secret_santa', 'quqwueu', 10000.00, 'sorteado', '2025-11-04 01:31:04.747018', '2025-11-04 01:31:08.256754', '2025-11-04 01:31:08.256704', 121, 11, NULL),
(41, 'secret_santa', 'test 1', 12131.00, 'sorteado', '2025-11-04 01:43:18.825908', '2025-11-04 01:43:24.787299', '2025-11-04 01:43:24.787255', 122, 11, NULL),
(42, 'secret_santa', 'test 2', 10000.00, 'sorteado', '2025-11-04 01:53:07.239940', '2025-11-04 01:54:07.866914', '2025-11-04 01:54:07.866758', 123, 11, NULL),
(43, 'secret_santa', 'test 3', 10000.00, 'sorteado', '2025-11-04 02:03:18.335599', '2025-11-04 02:24:34.678212', '2025-11-04 02:24:34.678102', 124, 11, NULL),
(44, 'secret_santa', 'probwemos', NULL, 'sorteado', '2025-11-18 00:05:45.430297', '2025-11-18 00:05:49.411315', '2025-11-18 00:05:49.411265', 129, 11, NULL),
(45, 'secret_santa', 'hola porafa', 100.00, 'sorteado', '2025-11-18 01:21:50.149557', '2025-11-18 01:21:53.749569', '2025-11-18 01:21:53.749514', 130, 11, NULL),
(46, 'secret_santa', 'holaoholaohlaogol1', 1000.00, 'sorteado', '2025-11-18 01:53:09.191235', '2025-11-18 01:53:12.338426', '2025-11-18 01:53:12.338356', 131, 11, NULL),
(47, 'secret_santa', 'wow', 1000.00, 'sorteado', '2025-11-18 02:47:04.610862', '2025-11-18 02:47:12.299971', '2025-11-18 02:47:12.299918', 132, 2, NULL),
(48, 'secret_santa', 'AMIGO SECRETILLO', 10000.00, 'sorteado', '2025-11-18 23:40:44.468071', '2025-11-18 23:40:47.720956', '2025-11-18 23:40:47.720861', 133, 11, NULL),
(49, 'secret_santa', 'SECRETO AMIGO', NULL, 'sorteado', '2025-11-18 23:51:47.890743', '2025-11-18 23:51:51.960434', '2025-11-18 23:51:51.960365', 134, 11, NULL),
(50, 'secret_santa', 'el mayor secreto de los amigos', 10.00, 'sorteado', '2025-11-19 00:09:31.826326', '2025-11-19 00:10:03.036661', '2025-11-19 00:10:03.036599', 135, 11, NULL),
(51, 'secret_santa', 'the last of amigos secretos', 2.00, 'sorteado', '2025-11-19 00:18:07.217322', '2025-11-19 00:18:12.149601', '2025-11-19 00:18:12.149534', 136, 11, NULL),
(52, 'secret_santa', 'the secret friends', 12.00, 'sorteado', '2025-11-19 00:24:14.974939', '2025-11-19 00:24:19.191078', '2025-11-19 00:24:19.191001', 137, 11, NULL),
(53, 'secret_santa', 'amihiowae', 123.00, 'sorteado', '2025-11-19 00:43:15.746778', '2025-11-19 00:43:19.951109', '2025-11-19 00:43:19.951019', 138, 11, NULL),
(54, 'secret_santa', 'chinchimaldi', 1231.00, 'sorteado', '2025-11-19 00:48:47.835427', '2025-11-19 00:48:51.294743', '2025-11-19 00:48:51.294651', 139, 11, NULL),
(55, 'secret_santa', 'ultima confirmacion', 777.00, 'sorteado', '2025-11-19 00:52:59.909249', '2025-11-19 00:53:02.958644', '2025-11-19 00:53:02.958580', 140, 11, NULL),
(56, 'secret_santa', 'te las of us', 1231.00, 'sorteado', '2025-11-21 00:47:15.666852', '2025-11-21 00:47:18.657053', '2025-11-21 00:47:18.656974', 141, 11, NULL),
(57, 'secret_santa', 'prueba', 12313.00, 'sorteado', '2025-11-21 00:58:26.936282', '2025-11-21 01:19:05.389739', '2025-11-21 01:19:05.389694', 142, 11, NULL),
(58, 'secret_santa', 'the smling friend', NULL, 'borrador', '2025-11-21 01:19:25.794414', '2025-11-21 01:19:25.794426', NULL, 143, 11, NULL),
(59, 'secret_santa', '????', 1231.00, 'sorteado', '2025-11-21 01:22:40.878132', '2025-11-21 01:53:26.228964', '2025-11-21 01:53:26.228894', 144, 11, NULL),
(60, 'secret_santa', 'lets go !', NULL, 'sorteado', '2025-11-21 02:14:46.600646', '2025-11-21 02:15:00.850750', '2025-11-21 02:15:00.850688', 146, 11, '2025-11-28'),
(61, 'secret_santa', 'ltest goooo', 123.00, 'borrador', '2025-11-21 02:17:36.219287', '2025-11-21 02:17:36.219298', NULL, 147, 11, '2025-11-28');

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

--
-- Volcado de datos para la tabla `core_eventparticipant`
--

INSERT INTO `core_eventparticipant` (`id`, `estado`, `creado_en`, `evento_id`, `usuario_id`) VALUES
(1, 'inscrito', '2025-10-29 03:44:08.077183', 4, 2),
(2, 'inscrito', '2025-10-29 03:44:08.079083', 4, 4),
(3, 'inscrito', '2025-10-29 03:44:08.080260', 4, 11),
(5, 'inscrito', '2025-10-29 03:44:08.082606', 4, 24),
(6, 'inscrito', '2025-10-29 03:58:01.315198', 5, 2),
(7, 'inscrito', '2025-10-29 03:58:01.316507', 5, 4),
(8, 'inscrito', '2025-10-29 03:58:01.320010', 5, 11),
(10, 'inscrito', '2025-10-29 03:58:01.323014', 5, 24),
(11, 'inscrito', '2025-10-29 04:01:12.699199', 6, 2),
(12, 'inscrito', '2025-10-29 04:01:12.700305', 6, 4),
(13, 'inscrito', '2025-10-29 04:01:12.701464', 6, 11),
(15, 'inscrito', '2025-10-29 04:01:12.704386', 6, 24),
(16, 'inscrito', '2025-10-30 01:39:24.999312', 7, 2),
(17, 'inscrito', '2025-10-30 01:39:25.000867', 7, 4),
(18, 'inscrito', '2025-10-30 01:39:25.002093', 7, 11),
(20, 'inscrito', '2025-10-30 01:39:25.005522', 7, 24),
(21, 'inscrito', '2025-10-30 02:29:40.990998', 8, 2),
(22, 'inscrito', '2025-10-30 02:29:40.992702', 8, 4),
(23, 'inscrito', '2025-10-30 02:29:40.994216', 8, 11),
(25, 'inscrito', '2025-10-30 02:29:40.996868', 8, 24),
(26, 'inscrito', '2025-10-30 02:43:35.113050', 9, 2),
(27, 'inscrito', '2025-10-30 02:43:35.114058', 9, 4),
(28, 'inscrito', '2025-10-30 02:43:35.115216', 9, 11),
(30, 'inscrito', '2025-10-30 02:43:35.117517', 9, 24),
(31, 'inscrito', '2025-10-30 02:52:08.488295', 10, 2),
(32, 'inscrito', '2025-10-30 02:52:08.490735', 10, 4),
(33, 'inscrito', '2025-10-30 02:52:08.492486', 10, 11),
(35, 'inscrito', '2025-10-30 02:52:08.495479', 10, 24),
(36, 'inscrito', '2025-10-30 03:08:10.083440', 11, 2),
(37, 'inscrito', '2025-10-30 03:08:10.085451', 11, 11),
(39, 'inscrito', '2025-10-30 03:08:10.088562', 11, 28),
(40, 'inscrito', '2025-10-30 03:18:48.971664', 12, 2),
(41, 'inscrito', '2025-10-30 03:18:48.972730', 12, 11),
(43, 'inscrito', '2025-10-30 03:18:48.974669', 12, 28),
(44, 'inscrito', '2025-10-30 03:28:55.027422', 13, 2),
(45, 'inscrito', '2025-10-30 03:28:55.028927', 13, 11),
(47, 'inscrito', '2025-10-30 03:28:55.031582', 13, 28),
(48, 'inscrito', '2025-10-30 03:31:52.253354', 14, 2),
(49, 'inscrito', '2025-10-30 03:31:52.254737', 14, 11),
(51, 'inscrito', '2025-10-30 03:31:52.257786', 14, 28),
(52, 'inscrito', '2025-10-31 02:10:27.716944', 15, 2),
(53, 'inscrito', '2025-10-31 02:10:27.719418', 15, 11),
(55, 'inscrito', '2025-10-31 02:10:27.722102', 15, 28),
(56, 'inscrito', '2025-10-31 02:30:19.849447', 16, 2),
(57, 'inscrito', '2025-10-31 02:30:19.850685', 16, 11),
(59, 'inscrito', '2025-10-31 02:30:19.853146', 16, 28),
(60, 'inscrito', '2025-10-31 02:33:14.621939', 17, 2),
(61, 'inscrito', '2025-10-31 02:33:14.623750', 17, 11),
(63, 'inscrito', '2025-10-31 02:33:14.627631', 17, 28),
(64, 'inscrito', '2025-10-31 02:41:42.004575', 18, 2),
(65, 'inscrito', '2025-10-31 02:41:42.005705', 18, 4),
(66, 'inscrito', '2025-10-31 02:41:42.007541', 18, 11),
(68, 'inscrito', '2025-10-31 02:41:42.010459', 18, 24),
(69, 'inscrito', '2025-10-31 02:41:42.012920', 18, 28),
(70, 'inscrito', '2025-10-31 02:48:31.319286', 19, 2),
(71, 'inscrito', '2025-10-31 02:48:31.320296', 19, 4),
(72, 'inscrito', '2025-10-31 02:48:31.321224', 19, 11),
(74, 'inscrito', '2025-10-31 02:48:31.323190', 19, 24),
(75, 'inscrito', '2025-10-31 02:48:31.324327', 19, 28),
(76, 'inscrito', '2025-10-31 02:56:31.539261', 20, 2),
(77, 'inscrito', '2025-10-31 02:56:31.544195', 20, 4),
(78, 'inscrito', '2025-10-31 02:56:31.546117', 20, 11),
(80, 'inscrito', '2025-10-31 02:56:31.550590', 20, 24),
(81, 'inscrito', '2025-10-31 02:56:31.552687', 20, 28),
(82, 'inscrito', '2025-10-31 03:06:00.807556', 21, 2),
(83, 'inscrito', '2025-10-31 03:06:00.808728', 21, 4),
(84, 'inscrito', '2025-10-31 03:06:00.809772', 21, 11),
(86, 'inscrito', '2025-10-31 03:06:00.812246', 21, 24),
(87, 'inscrito', '2025-10-31 03:06:00.813490', 21, 28),
(88, 'inscrito', '2025-10-31 03:08:25.730285', 22, 2),
(89, 'inscrito', '2025-10-31 03:08:25.731612', 22, 4),
(90, 'inscrito', '2025-10-31 03:08:25.732904', 22, 11),
(92, 'inscrito', '2025-10-31 03:08:25.735535', 22, 24),
(93, 'inscrito', '2025-10-31 03:08:25.736479', 22, 28),
(94, 'inscrito', '2025-10-31 03:48:36.777504', 23, 2),
(95, 'inscrito', '2025-10-31 03:48:36.778853', 23, 11),
(97, 'inscrito', '2025-10-31 03:48:36.781345', 23, 28),
(98, 'inscrito', '2025-11-03 23:32:05.449950', 24, 2),
(99, 'inscrito', '2025-11-03 23:32:05.451256', 24, 11),
(101, 'inscrito', '2025-11-03 23:32:05.453536', 24, 28),
(102, 'inscrito', '2025-11-03 23:39:23.137917', 25, 2),
(103, 'inscrito', '2025-11-03 23:39:23.140750', 25, 11),
(105, 'inscrito', '2025-11-03 23:39:23.147221', 25, 28),
(106, 'inscrito', '2025-11-03 23:59:41.412409', 26, 2),
(107, 'inscrito', '2025-11-03 23:59:41.414321', 26, 11),
(109, 'inscrito', '2025-11-03 23:59:41.416979', 26, 28),
(110, 'inscrito', '2025-11-04 00:16:35.876897', 27, 2),
(111, 'inscrito', '2025-11-04 00:16:35.883365', 27, 11),
(113, 'inscrito', '2025-11-04 00:16:35.907104', 27, 28),
(114, 'inscrito', '2025-11-04 00:29:30.172034', 28, 2),
(115, 'inscrito', '2025-11-04 00:29:30.173643', 28, 4),
(116, 'inscrito', '2025-11-04 00:29:30.175408', 28, 11),
(118, 'inscrito', '2025-11-04 00:29:30.177773', 28, 24),
(119, 'inscrito', '2025-11-04 00:29:30.178952', 28, 28),
(120, 'inscrito', '2025-11-04 00:29:30.180152', 28, 30),
(121, 'inscrito', '2025-11-04 00:33:13.649358', 29, 2),
(122, 'inscrito', '2025-11-04 00:33:13.653478', 29, 4),
(123, 'inscrito', '2025-11-04 00:33:13.657074', 29, 11),
(125, 'inscrito', '2025-11-04 00:33:13.662992', 29, 24),
(126, 'inscrito', '2025-11-04 00:33:13.664671', 29, 28),
(127, 'inscrito', '2025-11-04 00:39:19.134161', 30, 2),
(128, 'inscrito', '2025-11-04 00:39:19.135288', 30, 4),
(129, 'inscrito', '2025-11-04 00:39:19.136299', 30, 11),
(131, 'inscrito', '2025-11-04 00:39:19.138261', 30, 24),
(132, 'inscrito', '2025-11-04 00:39:19.139376', 30, 28),
(133, 'inscrito', '2025-11-04 00:41:59.816520', 31, 2),
(134, 'inscrito', '2025-11-04 00:41:59.817765', 31, 4),
(135, 'inscrito', '2025-11-04 00:41:59.819562', 31, 11),
(137, 'inscrito', '2025-11-04 00:41:59.822066', 31, 24),
(138, 'inscrito', '2025-11-04 00:41:59.823191', 31, 28),
(139, 'inscrito', '2025-11-04 00:57:08.528446', 32, 2),
(140, 'inscrito', '2025-11-04 00:57:08.529874', 32, 4),
(141, 'inscrito', '2025-11-04 00:57:08.531061', 32, 11),
(143, 'inscrito', '2025-11-04 00:57:08.533880', 32, 24),
(144, 'inscrito', '2025-11-04 00:57:08.535127', 32, 28),
(145, 'inscrito', '2025-11-04 01:01:13.043748', 33, 2),
(146, 'inscrito', '2025-11-04 01:01:13.045075', 33, 4),
(147, 'inscrito', '2025-11-04 01:01:13.046212', 33, 11),
(149, 'inscrito', '2025-11-04 01:01:13.048331', 33, 24),
(150, 'inscrito', '2025-11-04 01:01:13.049648', 33, 28),
(151, 'inscrito', '2025-11-04 01:06:13.751414', 34, 2),
(152, 'inscrito', '2025-11-04 01:06:13.753334', 34, 4),
(153, 'inscrito', '2025-11-04 01:06:13.755327', 34, 11),
(155, 'inscrito', '2025-11-04 01:06:13.760065', 34, 24),
(156, 'inscrito', '2025-11-04 01:06:13.762437', 34, 28),
(157, 'inscrito', '2025-11-04 01:14:14.195425', 35, 2),
(158, 'inscrito', '2025-11-04 01:14:14.197534', 35, 4),
(159, 'inscrito', '2025-11-04 01:14:14.199705', 35, 11),
(161, 'inscrito', '2025-11-04 01:14:14.202600', 35, 24),
(162, 'inscrito', '2025-11-04 01:14:14.204132', 35, 28),
(163, 'inscrito', '2025-11-04 01:21:02.765905', 36, 2),
(164, 'inscrito', '2025-11-04 01:21:02.767492', 36, 4),
(165, 'inscrito', '2025-11-04 01:21:02.768804', 36, 11),
(167, 'inscrito', '2025-11-04 01:21:02.772182', 36, 24),
(168, 'inscrito', '2025-11-04 01:21:02.773418', 36, 28),
(169, 'inscrito', '2025-11-04 01:21:53.196533', 37, 2),
(170, 'inscrito', '2025-11-04 01:21:53.197736', 37, 4),
(171, 'inscrito', '2025-11-04 01:21:53.198766', 37, 11),
(173, 'inscrito', '2025-11-04 01:21:53.202734', 37, 24),
(174, 'inscrito', '2025-11-04 01:26:29.846512', 38, 2),
(175, 'inscrito', '2025-11-04 01:26:29.847812', 38, 4),
(176, 'inscrito', '2025-11-04 01:26:29.849114', 38, 11),
(178, 'inscrito', '2025-11-04 01:26:29.851256', 38, 24),
(179, 'inscrito', '2025-11-04 01:30:24.163070', 39, 2),
(180, 'inscrito', '2025-11-04 01:30:24.166599', 39, 4),
(181, 'inscrito', '2025-11-04 01:30:24.170518', 39, 11),
(183, 'inscrito', '2025-11-04 01:30:24.176730', 39, 24),
(184, 'inscrito', '2025-11-04 01:31:04.748094', 40, 2),
(185, 'inscrito', '2025-11-04 01:31:04.749395', 40, 4),
(186, 'inscrito', '2025-11-04 01:31:04.750568', 40, 11),
(188, 'inscrito', '2025-11-04 01:31:04.752796', 40, 24),
(189, 'inscrito', '2025-11-04 01:43:18.827309', 41, 2),
(190, 'inscrito', '2025-11-04 01:43:18.828647', 41, 4),
(191, 'inscrito', '2025-11-04 01:43:18.829860', 41, 11),
(193, 'inscrito', '2025-11-04 01:43:18.832086', 41, 24),
(194, 'inscrito', '2025-11-04 01:53:07.241303', 42, 2),
(195, 'inscrito', '2025-11-04 01:53:07.242518', 42, 4),
(196, 'inscrito', '2025-11-04 01:53:07.243647', 42, 11),
(198, 'inscrito', '2025-11-04 01:53:07.245874', 42, 24),
(199, 'inscrito', '2025-11-04 02:03:18.336819', 43, 2),
(200, 'inscrito', '2025-11-04 02:03:18.337924', 43, 4),
(201, 'inscrito', '2025-11-04 02:03:18.338864', 43, 11),
(203, 'inscrito', '2025-11-04 02:03:18.341047', 43, 24),
(204, 'inscrito', '2025-11-18 00:05:45.431828', 44, 2),
(205, 'inscrito', '2025-11-18 00:05:45.433460', 44, 4),
(206, 'inscrito', '2025-11-18 00:05:45.434503', 44, 11),
(207, 'inscrito', '2025-11-18 00:05:45.435634', 44, 24),
(208, 'inscrito', '2025-11-18 00:05:45.436705', 44, 28),
(209, 'inscrito', '2025-11-18 00:05:45.437639', 44, 30),
(210, 'inscrito', '2025-11-18 01:21:50.158526', 45, 2),
(211, 'inscrito', '2025-11-18 01:21:50.162790', 45, 4),
(212, 'inscrito', '2025-11-18 01:21:50.163894', 45, 11),
(213, 'inscrito', '2025-11-18 01:21:50.165125', 45, 24),
(214, 'inscrito', '2025-11-18 01:21:50.168101', 45, 28),
(215, 'inscrito', '2025-11-18 01:21:50.169373', 45, 30),
(216, 'inscrito', '2025-11-18 01:53:09.193178', 46, 2),
(217, 'inscrito', '2025-11-18 01:53:09.194773', 46, 4),
(218, 'inscrito', '2025-11-18 01:53:09.195986', 46, 11),
(219, 'inscrito', '2025-11-18 01:53:09.197189', 46, 24),
(220, 'inscrito', '2025-11-18 01:53:09.198271', 46, 28),
(221, 'inscrito', '2025-11-18 01:53:09.199466', 46, 30),
(222, 'inscrito', '2025-11-18 02:47:04.612510', 47, 2),
(223, 'inscrito', '2025-11-18 02:47:04.614549', 47, 4),
(224, 'inscrito', '2025-11-18 02:47:04.616254', 47, 11),
(225, 'inscrito', '2025-11-18 02:47:04.617800', 47, 27),
(226, 'inscrito', '2025-11-18 02:47:04.619508', 47, 28),
(227, 'inscrito', '2025-11-18 23:40:44.469891', 48, 2),
(228, 'inscrito', '2025-11-18 23:40:44.471898', 48, 4),
(229, 'inscrito', '2025-11-18 23:40:44.473102', 48, 11),
(230, 'inscrito', '2025-11-18 23:40:44.474234', 48, 24),
(231, 'inscrito', '2025-11-18 23:40:44.475423', 48, 28),
(232, 'inscrito', '2025-11-18 23:40:44.476859', 48, 30),
(233, 'inscrito', '2025-11-18 23:51:47.892179', 49, 2),
(234, 'inscrito', '2025-11-18 23:51:47.894983', 49, 4),
(235, 'inscrito', '2025-11-18 23:51:47.896860', 49, 11),
(236, 'inscrito', '2025-11-18 23:51:47.898151', 49, 24),
(237, 'inscrito', '2025-11-18 23:51:47.899393', 49, 28),
(238, 'inscrito', '2025-11-18 23:51:47.900539', 49, 30),
(239, 'inscrito', '2025-11-19 00:09:31.827990', 50, 2),
(240, 'inscrito', '2025-11-19 00:09:31.829370', 50, 4),
(241, 'inscrito', '2025-11-19 00:09:31.831932', 50, 11),
(242, 'inscrito', '2025-11-19 00:09:31.833843', 50, 24),
(243, 'inscrito', '2025-11-19 00:09:31.835118', 50, 28),
(244, 'inscrito', '2025-11-19 00:09:31.836450', 50, 30),
(245, 'inscrito', '2025-11-19 00:18:07.219639', 51, 2),
(246, 'inscrito', '2025-11-19 00:18:07.221770', 51, 4),
(247, 'inscrito', '2025-11-19 00:18:07.225828', 51, 11),
(248, 'inscrito', '2025-11-19 00:18:07.239738', 51, 24),
(249, 'inscrito', '2025-11-19 00:18:07.241633', 51, 28),
(250, 'inscrito', '2025-11-19 00:18:07.248512', 51, 30),
(251, 'inscrito', '2025-11-19 00:24:14.977835', 52, 2),
(252, 'inscrito', '2025-11-19 00:24:14.980539', 52, 4),
(253, 'inscrito', '2025-11-19 00:24:14.982666', 52, 11),
(254, 'inscrito', '2025-11-19 00:24:14.983812', 52, 24),
(255, 'inscrito', '2025-11-19 00:24:14.986625', 52, 28),
(256, 'inscrito', '2025-11-19 00:24:14.988084', 52, 30),
(257, 'inscrito', '2025-11-19 00:43:15.751482', 53, 2),
(258, 'inscrito', '2025-11-19 00:43:15.755786', 53, 4),
(259, 'inscrito', '2025-11-19 00:43:15.757694', 53, 11),
(260, 'inscrito', '2025-11-19 00:43:15.758854', 53, 24),
(261, 'inscrito', '2025-11-19 00:43:15.760707', 53, 28),
(262, 'inscrito', '2025-11-19 00:43:15.763680', 53, 30),
(263, 'inscrito', '2025-11-19 00:48:47.838032', 54, 2),
(264, 'inscrito', '2025-11-19 00:48:47.841471', 54, 4),
(265, 'inscrito', '2025-11-19 00:48:47.844546', 54, 11),
(266, 'inscrito', '2025-11-19 00:48:47.848278', 54, 24),
(267, 'inscrito', '2025-11-19 00:48:47.851495', 54, 28),
(268, 'inscrito', '2025-11-19 00:48:47.858523', 54, 30),
(269, 'inscrito', '2025-11-19 00:52:59.910423', 55, 2),
(270, 'inscrito', '2025-11-19 00:52:59.911607', 55, 4),
(271, 'inscrito', '2025-11-19 00:52:59.912610', 55, 11),
(272, 'inscrito', '2025-11-19 00:52:59.913830', 55, 24),
(273, 'inscrito', '2025-11-19 00:52:59.914745', 55, 28),
(274, 'inscrito', '2025-11-19 00:52:59.916458', 55, 30),
(275, 'inscrito', '2025-11-21 00:47:15.669051', 56, 2),
(276, 'inscrito', '2025-11-21 00:47:15.670717', 56, 4),
(277, 'inscrito', '2025-11-21 00:47:15.671693', 56, 11),
(278, 'inscrito', '2025-11-21 00:47:15.673017', 56, 24),
(279, 'inscrito', '2025-11-21 00:47:15.674077', 56, 28),
(280, 'inscrito', '2025-11-21 00:47:15.675252', 56, 30),
(281, 'inscrito', '2025-11-21 00:58:26.937461', 57, 2),
(282, 'inscrito', '2025-11-21 00:58:26.938693', 57, 4),
(283, 'inscrito', '2025-11-21 00:58:26.939774', 57, 11),
(284, 'inscrito', '2025-11-21 00:58:26.940737', 57, 24),
(285, 'inscrito', '2025-11-21 00:58:26.941706', 57, 28),
(286, 'inscrito', '2025-11-21 00:58:26.942653', 57, 30),
(287, 'inscrito', '2025-11-21 01:19:25.795791', 58, 2),
(288, 'inscrito', '2025-11-21 01:19:25.797134', 58, 4),
(289, 'inscrito', '2025-11-21 01:19:25.798183', 58, 11),
(290, 'inscrito', '2025-11-21 01:19:25.799332', 58, 24),
(291, 'inscrito', '2025-11-21 01:19:25.800411', 58, 28),
(292, 'inscrito', '2025-11-21 01:19:25.801420', 58, 30),
(293, 'inscrito', '2025-11-21 01:22:40.879185', 59, 2),
(294, 'inscrito', '2025-11-21 01:22:40.880276', 59, 4),
(295, 'inscrito', '2025-11-21 01:22:40.881357', 59, 11),
(296, 'inscrito', '2025-11-21 01:22:40.882893', 59, 24),
(297, 'inscrito', '2025-11-21 01:22:40.884505', 59, 28),
(298, 'inscrito', '2025-11-21 01:22:40.885763', 59, 30),
(299, 'inscrito', '2025-11-21 02:14:46.617017', 60, 2),
(300, 'inscrito', '2025-11-21 02:14:46.618665', 60, 4),
(301, 'inscrito', '2025-11-21 02:14:46.620144', 60, 11),
(302, 'inscrito', '2025-11-21 02:14:46.621458', 60, 24),
(303, 'inscrito', '2025-11-21 02:14:46.622770', 60, 28),
(304, 'inscrito', '2025-11-21 02:14:46.624079', 60, 30),
(305, 'inscrito', '2025-11-21 02:17:36.222607', 61, 2),
(306, 'inscrito', '2025-11-21 02:17:36.224557', 61, 4),
(307, 'inscrito', '2025-11-21 02:17:36.226949', 61, 11),
(308, 'inscrito', '2025-11-21 02:17:36.228451', 61, 24),
(309, 'inscrito', '2025-11-21 02:17:36.229822', 61, 28),
(310, 'inscrito', '2025-11-21 02:17:36.231714', 61, 30);

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

--
-- Volcado de datos para la tabla `core_generatedcard`
--

INSERT INTO `core_generatedcard` (`id`, `prompt`, `image`, `created_at`, `share_token`, `user_id`) VALUES
(1, 'feliz cumple!', 'cards/2/1_card_1.png', '2025-10-28 00:48:59.282034', 'Fvewg51ufA1e2TEaR94HuIcS', 2),
(2, 'Feliz cumpleaños tia gracias por tantos frutos', 'cards/2/2_card_2.png', '2025-10-28 00:49:35.560339', 'CFUN5Ovhh6Qitb4TOHfSiUkx', 2),
(3, 'Feliz cumpleaños tia', 'cards/2/3_card_3.png', '2025-10-28 00:50:19.663092', '5zSZZorEmEFRZc8M35Oi6Yda', 2),
(4, 'Happy birthday!', 'cards/2/4_card_4.png', '2025-10-28 00:50:34.897533', 'hMHxSWzSAs2RqnDKQwYLnmLC', 2),
(5, 'Happy birthday!', 'cards/2/5_card_5.png', '2025-10-28 00:50:50.538237', '42uF3tlTICgvg8qZ0YdnevAc', 2),
(6, 'TIA RECULIA', 'cards/2/6_card_6.png', '2025-10-28 00:51:09.877380', '6X0nwAzu6NcM2hDP5XYI1oWw', 2),
(7, 'TIA RECULIA', 'cards/2/7_card_7.png', '2025-10-28 00:51:25.102120', 'fRgZ2jOBNCJZvQc2KOR9DvC1', 2),
(8, 'FELIZ CUMPLEAÑOS GUATONA CULIA', 'cards/2/8_card_8.png', '2025-10-28 00:51:48.822012', 'KTYXAiUa5KcB0ODbTjw4U5sf', 2),
(9, 'feliz cumpleaños tia! gracias por todo', 'cards/2/9_card_9.png', '2025-10-28 00:54:15.423152', 'r52blhfpBfsi7r31J0uUQLnw', 2),
(10, 'happy birthday my twin !!!', 'cards/2/10_card_10.png', '2025-10-28 00:54:53.126608', 'nZaYnixCrvxBskgcwFsdALX5', 2),
(11, 'happy birthday', 'cards/2/11_card_11.png', '2025-10-28 00:59:00.300298', 'Y59ewhnOwTs8mmurkoqpg6un', 2),
(12, 'feliz cumple, tia', 'cards/2/12_card_12.png', '2025-10-28 00:59:18.447671', 'nNV1fpbOQPGNRG6kU2o2sbJZ', 2),
(13, 'feliz cumpleaños!!', 'cards/2/13_card_13.png', '2025-10-28 01:52:36.005984', 'Bj6wdxsILJlI8un7ARuG9v8u', 2),
(14, 'Feliz cumpleaños tia reculiaaa!!', 'cards/2/14_card_14.png', '2025-10-28 01:53:02.751578', 'KKDFaPuLvUxlq5yaBBakd4P7', 2),
(15, 'Feliz cumpleaños tia !!', 'cards/2/15_card_15.png', '2025-10-28 01:53:11.953164', 'uukAaYGcOI5huhJNzrLwhT3G', 2),
(16, 'Feliz cumpleaños tia!', 'cards/2/16_card_16.png', '2025-10-28 02:05:26.480012', '8DBIHkdBpNWxYhHrjEuutRME', 2),
(17, 'dhsaijhdkjahsldasdasdasdasd', 'cards/2/17_card_17.png', '2025-10-28 02:10:24.403529', 'H725AbvkofbN7gGKpE9ng1jF', 2),
(18, 'felicidades tia!', 'cards/2/18_card_18.png', '2025-10-28 02:10:40.452442', 't1zVKr5lu5TW3mcO41LMctpq', 2),
(19, 'hola tia culia ponele buenoo', 'cards/2/19_card_19.png', '2025-10-28 02:11:18.106057', 'lyqhOHEbaq4F2J679R9V8iQy', 2),
(20, 'djkashldkjasdas', 'cards/2/20_card_20.png', '2025-10-28 02:31:31.938851', 'hQGgAO3wsUSE9bpTl9Mgcf2s', 2),
(21, 'te amo tia', 'cards/2/21_card_21.png', '2025-10-28 02:31:54.528103', 'bdb8zgl9ufFQXST9BSfwwa72', 2),
(22, 'feliz cumple tia', 'cards/2/22_card_22.png', '2025-10-28 02:36:07.026103', '5PewtBQBdZc1tYQn7oNKCSxq', 2),
(23, 'feliz cumpleassssss', 'cards/2/23_card_23.png', '2025-10-28 02:42:34.558016', 'u3g66qrPnAOvqjuPWMqTQFdz', 2),
(24, 'feliz cumpleños', 'cards/2/24_card_24.png', '2025-10-28 02:43:16.878463', 'hDBtzjE4ftz3cKwWv8yuJUXW', 2),
(25, 'cumpleaños feliz para ti', 'cards/2/25_card_25.png', '2025-10-28 02:44:09.897118', 'mt6pRXu1whO5arCSz9TFIv0j', 2),
(26, 'cumpleaños feliz para ti', 'cards/2/26_card_26.png', '2025-10-28 02:45:09.859770', 'CHZovYZhwSlBeGvnWhHqJOYh', 2),
(27, 'feliz cumpleaños tia', 'cards/2/27_card_27.png', '2025-10-28 02:51:16.689634', 'rIky3j0LQf0HF1vzbJDqT6Dz', 2),
(28, 'feliz cumpleaños', 'cards/2/28_card_28.png', '2025-10-28 03:57:34.813293', 'pB2YBV1MUJzppXRx3HBLfB1n', 2),
(29, 'Happy birthday !!', 'cards/2/29_card_29.png', '2025-10-28 03:57:56.557894', 'IBePm8EPbMXM5OqmH17HsQt2', 2),
(30, 'Happy birthday !!', 'cards/2/30_card_30.png', '2025-10-28 03:58:20.463517', 'yuNlGxxWDOieXuaAevjX7K4S', 2),
(31, 'Happy birthday tia turbina !!', 'cards/2/31_card_31.png', '2025-10-28 03:58:53.239217', 'mvt6bMjuNHMU4oo49zMJ0hAB', 2),
(32, 'take a break', 'cards/4/32_card_32.png', '2025-10-28 03:59:16.682595', 'yIUJOkNwNvozZN08CW0paxS1', 4),
(33, 'tralalero tralala', 'cards/4/33_card_33.png', '2025-10-28 03:59:51.079659', 'ztsfUVP48cePnT8mrarJ9BjQ', 4),
(34, 'tralalero tralalaAAA', 'cards/4/34_card_34.png', '2025-10-28 04:00:22.163749', '72C2WevcVNYOO0PZUMCmfdvY', 4),
(35, 'hola', 'cards/4/35_card_35.png', '2025-10-28 04:00:47.787790', 'y2C8x2UZWaH6holuea1ZrIpj', 4),
(36, 'hola', 'cards/4/36_card_36.png', '2025-10-28 04:01:07.708111', 'n7IryptBXXmauWeEVPFhFaAa', 4),
(37, 'hola', 'cards/4/37_card_37.png', '2025-10-28 04:01:51.714651', 'ZADuS57clC6YXImH74wwkVc2', 4),
(38, 'paisaje', 'cards/4/38_card_38.png', '2025-10-28 04:02:07.638130', 'mjdD20YTFJTOdSV9vRUh3JgS', 4),
(39, 'paisaje', 'cards/4/39_card_39.png', '2025-10-28 04:02:28.041365', 'kb9qVmIYXSpt7mxzQA2QOyKv', 4),
(40, 'paisaje', 'cards/4/40_card_40.png', '2025-10-28 04:03:03.092340', 'tAEUjmMRSSRBrJGnvMpU09tt', 4),
(41, 'paisaje', 'cards/4/41_card_41.png', '2025-10-28 04:03:06.627673', 'IhxGgqRXPH0BmTF9FG1FzOvn', 4),
(42, 'paisaje', 'cards/4/42_card_42.png', '2025-10-28 04:03:08.649465', 'PDuYT53j0w4VELSj0wBVYSJ4', 4),
(43, 'paisaje', 'cards/4/43_card_43.png', '2025-10-28 04:03:23.385412', 'hmlhJi9LjzgBF4Og7liNEUrt', 4),
(44, 'imagina a una mujer', 'cards/4/44_card_44.png', '2025-10-28 04:03:42.541444', '83BYCmfR8Tk6WXrKeBKM5mUt', 4),
(45, 'imagina a una mujer', 'cards/4/45_card_45.png', '2025-10-28 04:04:05.178450', 'skwjIP23maQnwXJGei3n2yY4', 4),
(46, 'imagina a una mujer', 'cards/4/46_card_46.png', '2025-10-28 04:05:59.258578', 'XMqJcZUvDbOBFm1UxxluapCe', 4),
(47, 'imagina a una mujer', 'cards/4/47_card_47.png', '2025-10-28 04:06:31.437336', 'Rhaj45bBbBFdp3hucyHbHwIw', 4),
(48, 'imagina a una mujer', 'cards/4/48_card_48.png', '2025-10-28 04:07:09.573547', 'Z4VVh0g2uZWTxMDYqKzQdwxE', 4),
(49, 'imagina a una mujer', 'cards/4/49_card_49.png', '2025-10-28 04:07:16.770332', '1OrNkzYUe5huv3zAT4lAHBmr', 4),
(50, 'imagina a una mujer realista, en la playa', 'cards/4/50_card_50.png', '2025-10-28 04:07:34.175935', '7t7iYct9uzP34i4mM0gjYzeD', 4),
(51, 'imagina a una mujer realista, en la playa', 'cards/4/51_card_51.png', '2025-10-28 04:07:46.385182', 'JbQW6ksG3BxNzEn5thGqBx3R', 4),
(52, 'imagina a una mujer realista, en la playa', 'cards/4/52_card_52.png', '2025-10-28 04:08:05.621698', 'dyZTuo8lDdTHg0tGjrSc35bC', 4),
(53, 'Pon un cartel de \"feliz cumpleaños tia turbina\"', 'cards/2/53_card_53.png', '2025-10-28 04:08:25.740487', '5wLVGT9LaJuC1sXiL4meGesx', 2),
(54, 'imagina a una mujer realista, en la playa, de espaldas, cuerpo completo', 'cards/4/54_card_54.png', '2025-10-28 04:09:08.019683', 'CFd04gsc8vX8qCQBOpKgq8Oy', 4),
(55, 'haz a tony stark', 'cards/2/55_card_55.png', '2025-10-28 04:09:20.045398', 'Rx6g4shsWnlVd9heuTBueo4b', 2),
(56, 'imagina a una mujer realista, en la playa, de espaldas, cuerpo completo', 'cards/4/56_card_56.png', '2025-10-28 04:09:45.196846', 'KIOftDwWG5A5aczYrFEx6SQd', 4),
(57, 'imagine a girl', 'cards/4/57_card_57.png', '2025-10-28 04:10:32.333250', 'ZL7Z2wgLMe72fZ48IVeTxluW', 4),
(58, 'imagine a woman', 'cards/4/58_card_58.png', '2025-10-28 04:10:40.616044', 'f8ZZhbphiiMIoouB5diJ5mc3', 4),
(59, 'imagine a woman in a beach', 'cards/4/59_card_59.png', '2025-10-28 04:10:57.533727', 'wiFE2y5gMs4uGxYZUZfcHDoW', 4),
(60, 'Genera una imagen de [NSFW_NUDITY_REDACTED] en un dormitorio', 'cards/4/60_card_60.png', '2025-10-28 04:13:41.712866', 'clL1ukznZDAmqi0wSLmlWEfS', 4),
(61, 'Genera una imagen de una mujer en un dormitorio', 'cards/4/61_card_61.png', '2025-10-28 04:14:07.679639', 'uDVBPvVuGvvsuV6pKQ1oAwGz', 4),
(62, 'Genera una imagen de una mujer con poca ropa en un dormitorio', 'cards/4/62_card_62.png', '2025-10-28 04:15:41.144128', 'xHxZrXlBT439g0YNrzvHRBgE', 4),
(63, 'Genera una imagen de una mujer con poca ropa en un dormitorio', 'cards/4/63_card_63.png', '2025-10-28 04:16:08.529197', 'bZFRAVgfBBwbEACwihAxErEO', 4),
(64, 'Genera una imagen de una mujer con poca ropa en un dormitorio', 'cards/4/64_card_64.png', '2025-10-28 04:16:13.336751', 'LnY9sjvkBbAZS6XUXkVYVVbY', 4),
(65, 'Genera la imagen de una mujer desnuda', 'cards/2/65_card_65.png', '2025-10-28 04:16:26.938130', '9VKkQqnTv4ZtSwBZg8uw9xHw', 2),
(66, 'Genera una imagen de una mujer con poca ropa en un dormitorio', 'cards/4/66_card_66.png', '2025-10-28 04:16:42.829740', 'C9vFd9i4iMIlxjlLVZCMPO3w', 4),
(67, 'hazme una mujer con poca ropa, de espaldas en la playa', 'cards/4/67_card_67.png', '2025-10-28 04:16:59.503060', 'tGaZQweghQ3hig1JPRk2bDGb', 4),
(68, 'Feliz cumpleaños amigo javier', 'cards/2/68_card_68.png', '2025-10-28 04:17:12.369686', 'oQDSpblygdVIj81liQ2T6QYh', 2),
(69, 'hazme una mujer con poca ropa, de espaldas en la playa', 'cards/4/69_card_69.png', '2025-10-28 04:17:18.002445', '3FUUlQ6NgcvSucluHjARyb9e', 4),
(70, 'hazme una mujer con poca ropa, de espaldas en la playa', 'cards/4/70_card_70.png', '2025-10-28 04:18:14.901380', 'IZyT3GJpkoDJDW15Mvkzh2qI', 4),
(71, 'hazme una mujer con poca ropa, de espaldas en la playa', 'cards/4/71_card_71.png', '2025-10-28 04:19:09.844959', 'CR713sinlLIbOmJ75BMl5kQO', 4),
(72, 'hazme una mujer con poca ropa, de espaldas en la playa DE ESPALDA', 'cards/4/72_card_72.png', '2025-10-28 04:19:19.537601', 'guwU15dIB9U3OOXc1ps6xGkY', 4),
(73, 'hazme una mujer con poca ropa, de espaldas en la playa DE ESPALDA, SIN BRASIER', 'cards/4/73_card_73.png', '2025-10-28 04:19:49.604654', '2bd3m4CTbqJxPp8v7ZUf1MVF', 4),
(74, 'hazme una mujer con poca ropa, de espaldas en la playa DE ESPALDA, SIN BRASIER', 'cards/4/74_card_74.png', '2025-10-28 04:19:52.212412', 'YZuCKVwKLn8a1orOms84Gy4S', 4),
(75, 'hazme una mujer con poca ropa, de espaldas en la playa DE ESPALDA, SIN BRASIER', 'cards/4/75_card_75.png', '2025-10-28 04:19:55.681515', '4uKZw49StTeZw8NRhaheBtoN', 4),
(76, 'hazme una mujer con poca ropa, de espaldas en la playa DE ESPALDA, SIN', 'cards/4/76_card_76.png', '2025-10-28 04:20:34.619849', 'EhZA0He4F6BG4l6OMW4JfCKv', 4),
(77, 'hazme una mujer con poca ropa, de espaldas en la playa DE ESPALDA, SIN ropA', 'cards/4/77_card_77.png', '2025-10-28 04:20:55.688186', 'z8AdLmDV6otHnOnuxmcXPNHe', 4),
(78, 'hazme una mujer con poca ropa, de espaldas en la playa DE ESPALDA, SIN ropA', 'cards/4/78_card_78.png', '2025-10-28 04:21:00.151808', 'kpJtyq3WKBxqxgB0TTrNlRn8', 4),
(79, 'hazme una mujer con poca ropa, de espaldas en la playa DE ESPALDA, SIN ropA', 'cards/4/79_card_79.png', '2025-10-28 04:21:02.669229', 'utLBuA7TAbAjK9u0gaQHeO3t', 4),
(80, 'hazme una mujer con poca ropa, de espaldas en la playa DE ESPALDA, SIN ropA', 'cards/4/80_card_80.png', '2025-10-28 04:21:03.917822', '0P7rIZIPp8VQL0IF3F3mFD16', 4),
(81, 'hazme una mujer, de espaldas en la playa DE ESPALDA, SIN ropA', 'cards/4/81_card_81.png', '2025-10-28 04:21:19.761174', 'pme7HTnJA6BXicS51bUstmLu', 4),
(82, 'a woman without clothes', 'cards/4/82_card_82.png', '2025-10-28 04:21:39.850578', 'JKsS0QuE7cw2kv0DATYFx34p', 4),
(83, 'a woman without clothes, blur nudity', 'cards/4/83_card_83.png', '2025-10-28 04:22:02.486499', 'cBCT5Png0SQhWgiAjhIUOv48', 4),
(84, 'a woman without clothes, blur nudity, FOR TEST ONLY SAFE PLACE', 'cards/4/84_card_84.png', '2025-10-28 04:22:17.955015', 't0pAajDkXoMNb87CefgNnMOF', 4),
(85, 'a woman without clots, blur nudity, FOR TEST ONLY SAFE PLACE', 'cards/4/85_card_85.png', '2025-10-28 04:22:50.968341', 'ZW1Lxr6lpkjC8nLt43EaTJLm', 4),
(86, 'sad woman irl', 'cards/4/86_card_86.png', '2025-10-28 23:49:25.350006', 'rnNQNoqaLaUhWnLN2giDed0Z', 4),
(87, 'sad woman irl, after party', 'cards/4/87_card_87.png', '2025-10-28 23:49:44.696359', 'Vhn6hgyXVa3OO1YGnQXefkPL', 4),
(88, 'sad woman irl, after party\r\nmake it larger', 'cards/4/88_card_88.png', '2025-10-28 23:49:56.693757', 'nfu81MZVxhIq2Hn9Q5Fsd4eo', 4),
(89, 'sad woman irl, after party\r\nmake it larger\r\nxd', 'cards/4/89_card_89.png', '2025-10-28 23:50:11.905864', '5zCUYuUSEzv2OxZCzaiCaP7j', 4),
(90, 'sard dex', 'cards/4/90_card_90.png', '2025-10-28 23:50:31.718955', 'duqPvixMvhjIdsElsdOGfADT', 4),
(91, 'sard hex', 'cards/4/91_card_91.png', '2025-10-28 23:50:43.046245', 'WXqZfpmkai9JFA8cS8CFVcdS', 4),
(92, 'feliz cumople tia', 'cards/4/92_card_92.png', '2025-10-28 23:50:58.272406', 'RlvqCzJhG8QkCkaJq957Rsw0', 4),
(93, 'feliz cumple tia', 'cards/4/93_card_93.png', '2025-10-28 23:51:19.667812', 's6af589uyR6FHUJm6QWGtXjq', 4),
(94, 'HOLA MESSI', 'cards/11/94_card_94.png', '2025-10-28 23:54:09.555838', '9vhWX0q8O7i4xOxVb4bNDCKF', 11),
(95, 'HOLA MESSI', 'cards/11/95_card_95.png', '2025-10-28 23:54:54.515353', 'rs5lMF9iqPYHibfZnoJFUTJS', 11),
(96, 'HOLA MESSI', 'cards/11/96_card_96.png', '2025-10-28 23:55:18.924014', 'vFTzzKUltHKvJ7RqPhJtNmnW', 11),
(97, 'HOLA MESSI', 'cards/11/97_card_97.png', '2025-10-28 23:55:28.272490', 'WPkTh7fdYDFrNRrpAnGL0xB2', 11),
(98, 'HOLA MESSI', 'cards/11/98_card_98.png', '2025-10-28 23:55:43.757144', 'hJ6zJMUeluN4HKOC94r6DrTP', 11),
(99, 'HOLA MESSI', 'cards/11/99_card_99.png', '2025-10-28 23:55:56.395222', '5SkGVMxVJtFUDk8zb97rMa5j', 11),
(100, 'HOLA MESSI', 'cards/11/100_card_100.png', '2025-10-28 23:56:02.803793', 'hTZ5hEkvRZ0FtBeA76bQgzjR', 11),
(101, 'HOLA MESSI!', 'cards/11/101_card_101.png', '2025-10-28 23:56:31.642725', 'nkNjfJof2PC8wQ9uJK6USn35', 11),
(102, 'feliz cumple admin', 'cards/2/102_card_102.png', '2025-10-28 23:58:14.027310', 'QDDFq6GUGGzoN8ncq8BdiUZb', 2),
(103, 'feliz cumpleanos admin', 'cards/2/103_card_103.png', '2025-10-28 23:58:28.887825', 'hatKwN4MBfLd7JGEeo74sf23', 2),
(104, 'fsfsa', 'cards/2/104_card_104.png', '2025-10-29 00:04:25.024418', 'u3YInz35plAHfdUjrnIESbql', 2),
(105, 'sdfsdf', 'cards/2/105_card_105.png', '2025-10-29 00:08:13.830016', '8niazbf5MAbm6caRGgvZCpZO', 2),
(106, 'gdfgd', 'cards/2/106_card_106.png', '2025-10-29 00:12:19.950532', 'pEiJnMN7ZpmfAixOicZycfcN', 2),
(107, 'gdgsd', 'cards/2/107_card_107.png', '2025-10-29 00:23:30.849772', '6RYzt50RSQrTz2ZXvXMYZwwL', 2),
(108, 'rtyyrt', 'cards/2/108_card_108.png', '2025-10-29 00:26:45.524764', 'k6vQYt9XDPrGSye3q4Xp95EL', 2),
(109, 'yhjghj', 'cards/2/109_card_109.png', '2025-10-29 00:27:26.381670', 'beI02Owv9AGr2RmDN2Q1eNyf', 2),
(110, 'dasdas', 'cards/2/110_card_110.png', '2025-10-29 00:28:05.854787', '8rx65DkubPlnYFeNLyB9DkdG', 2),
(111, 'ghjghjgh', 'cards/2/111_card_111.png', '2025-10-29 00:28:33.870185', 'uPOwGPvqfMN4m8G5VY5TzAta', 2),
(112, 'fgdfg', 'cards/2/112_card_112.png', '2025-10-29 00:29:26.088116', 'VOsE7pOde8yYAYQj8GaKBwqb', 2),
(113, 'fgdfg', 'cards/2/113_card_113.png', '2025-10-29 00:29:31.900158', 'C8wojaB2SqJulnnookKnTiU5', 2),
(114, 'dsada', 'cards/2/114_card_114.png', '2025-10-29 00:30:10.742163', 'VejxlPwYubgTXVxbLQFJQO2r', 2),
(115, 'dsdsd', 'cards/2/115_card_115.png', '2025-10-29 00:34:11.371806', '6eqLxeVOXiIz0S8OPffLXc8A', 2),
(116, 'dsdsd', 'cards/2/116_card_116.png', '2025-10-29 00:35:40.245352', 'KcL5xUWBEAt3c8yxtNIXVxiV', 2),
(117, 'dsdsd', 'cards/2/117_card_117.png', '2025-10-29 00:38:18.357980', 'rupB9iHmMnHR6OCqPDHEev0o', 2),
(118, 'asdasdasd', 'cards/2/118_card_118.png', '2025-10-29 00:39:17.654141', 'bm0pw9qpuYhZAzifcvSXAGxi', 2),
(119, 'mal cumple elias', 'cards/4/119_card_119.png', '2025-10-29 02:47:15.854983', 'U1F5fiZ63FJI458anpKWoIOj', 4),
(120, 'mal cumple elias (bad birthday elias but in spanish)', 'cards/4/120_card_120.png', '2025-10-29 02:47:38.266561', 'ao9Z7FGAoXYx58T9zZyB1Dwe', 4),
(121, 'mal cumple elias (bad birthday elias but in spanish) español', 'cards/4/121_card_121.png', '2025-10-29 02:47:54.083378', 'ARJiPGV4kTA5MjnwY0KJhmpf', 4),
(130, 'imagine \"toñito\", suited like superman', 'cards/4/130_card_130.png', '2025-10-29 02:52:38.889345', '9zemFUoVWwDDUXWqY7K9l0lO', 4),
(132, 'imagine \"toñito\", suited like superman, write the name in the picture', 'cards/4/132_card_132.png', '2025-10-29 02:53:27.960022', 'Qkm95oVLnQcGKgw0iXOhp5s5', 4),
(133, 'imagine \"toñito\", suited like superman, write the name at the top of the picture', 'cards/4/133_card_133.png', '2025-10-29 02:53:58.529288', 'PH1JLriu5GaDFLxUgTV5r3Nj', 4),
(134, 'imagine \"toñito\", suited like superman, write the name at the top of the picture(remember the Ñ)', 'cards/4/134_card_134.png', '2025-10-29 02:54:30.763350', 'QQaZNXFav859fkpy1wf4Lk1a', 4),
(135, 'imagine \"toñito\", suited like superman, write the name at the top of the picture(remember the Ñ),(nice, but is like a line at the top of n -> Ñ)', 'cards/4/135_card_135.png', '2025-10-29 02:55:01.579531', 'gj2fcashAIKDEDn7YTD8hBra', 4),
(136, 'imagine \"toñito\", suited like superman, write the name at the top of the picture(remember the Ñ)', 'cards/4/136_card_136.png', '2025-10-29 02:55:08.216831', '4ntxItoQnHL7icodl3qV7bTm', 4),
(139, 'Feliz Cumple, Cristiano', 'cards/11/139_card_139.png', '2025-10-30 01:26:35.999761', 'U5t09l46nAsdIBxmudMYwW94', 11),
(140, 'dasdas', 'cards/2/140_card_140.png', '2025-10-31 02:39:04.546768', 'LJIL2oZmcgkbQKY4XuIC6sOW', 2);

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

--
-- Volcado de datos para la tabla `core_secretsantaassignment`
--

INSERT INTO `core_secretsantaassignment` (`id`, `da_id`, `evento_id`, `recibe_id`) VALUES
(1, 2, 14, 28),
(4, 28, 14, 2),
(5, 2, 15, 28),
(8, 28, 15, 2),
(9, 2, 17, 11),
(10, 11, 17, 2),
(91, 2, 22, 4),
(92, 4, 22, 28),
(93, 11, 22, 24),
(96, 28, 22, 11),
(98, 11, 23, 2),
(100, 28, 23, 11),
(102, 11, 24, 28),
(104, 28, 24, 2),
(106, 11, 25, 28),
(108, 28, 25, 2),
(110, 11, 26, 2),
(112, 28, 26, 11),
(113, 2, 27, 11),
(114, 11, 27, 28),
(117, 2, 28, 11),
(119, 11, 28, 2),
(121, 24, 28, 28),
(122, 28, 28, 4),
(123, 30, 28, 24),
(124, 2, 29, 4),
(126, 11, 29, 24),
(128, 24, 29, 28),
(129, 28, 29, 2),
(148, 2, 31, 24),
(149, 4, 31, 11),
(152, 24, 31, 28),
(153, 28, 31, 4),
(154, 2, 30, 11),
(156, 11, 30, 4),
(158, 24, 30, 2),
(159, 28, 30, 24),
(160, 2, 32, 4),
(161, 4, 32, 24),
(164, 24, 32, 11),
(165, 28, 32, 2),
(184, 2, 33, 28),
(186, 11, 33, 24),
(188, 24, 33, 2),
(189, 28, 33, 4),
(190, 2, 34, 11),
(192, 11, 34, 4),
(194, 24, 34, 28),
(195, 28, 34, 2),
(197, 4, 35, 2),
(198, 11, 35, 28),
(200, 24, 35, 11),
(201, 28, 35, 4),
(203, 4, 36, 24),
(204, 11, 36, 28),
(206, 24, 36, 2),
(207, 28, 36, 4),
(208, 2, 37, 11),
(209, 4, 37, 24),
(212, 24, 37, 4),
(214, 4, 39, 24),
(216, 24, 39, 2),
(218, 4, 40, 24),
(220, 24, 40, 4),
(222, 4, 41, 2),
(224, 24, 41, 4),
(230, 2, 42, 11),
(231, 4, 42, 24),
(234, 24, 42, 2),
(240, 2, 43, 11),
(241, 4, 43, 24),
(244, 24, 43, 2),
(246, 4, 38, 11),
(247, 11, 38, 2),
(249, 24, 38, 4),
(250, 2, 44, 28),
(251, 4, 44, 11),
(252, 11, 44, 30),
(253, 24, 44, 4),
(254, 28, 44, 24),
(255, 30, 44, 2),
(256, 2, 45, 28),
(257, 4, 45, 2),
(258, 11, 45, 30),
(259, 24, 45, 11),
(260, 28, 45, 24),
(261, 30, 45, 4),
(262, 2, 46, 11),
(263, 4, 46, 24),
(264, 11, 46, 28),
(265, 24, 46, 2),
(266, 28, 46, 30),
(267, 30, 46, 4),
(268, 2, 47, 27),
(269, 4, 47, 2),
(270, 11, 47, 28),
(271, 27, 47, 11),
(272, 28, 47, 4),
(273, 2, 48, 30),
(274, 4, 48, 24),
(275, 11, 48, 4),
(276, 24, 48, 2),
(277, 28, 48, 11),
(278, 30, 48, 28),
(279, 2, 49, 28),
(280, 4, 49, 24),
(281, 24, 49, 2),
(282, 28, 49, 30),
(283, 30, 49, 4),
(284, 2, 50, 30),
(285, 4, 50, 24),
(286, 24, 50, 2),
(287, 28, 50, 4),
(288, 30, 50, 28),
(289, 2, 51, 24),
(290, 4, 51, 28),
(291, 24, 51, 4),
(292, 28, 51, 30),
(293, 30, 51, 2),
(294, 2, 52, 24),
(295, 4, 52, 30),
(296, 24, 52, 28),
(297, 28, 52, 4),
(298, 30, 52, 2),
(299, 2, 53, 30),
(300, 4, 53, 24),
(301, 24, 53, 2),
(302, 28, 53, 4),
(303, 30, 53, 28),
(304, 2, 54, 28),
(305, 4, 54, 2),
(306, 24, 54, 4),
(307, 28, 54, 30),
(308, 30, 54, 24),
(309, 2, 55, 4),
(310, 4, 55, 24),
(311, 24, 55, 30),
(312, 28, 55, 2),
(313, 30, 55, 28),
(314, 2, 56, 24),
(315, 4, 56, 30),
(316, 24, 56, 4),
(317, 28, 56, 2),
(318, 30, 56, 28),
(319, 2, 57, 28),
(320, 4, 57, 30),
(321, 24, 57, 4),
(322, 28, 57, 24),
(323, 30, 57, 2),
(324, 2, 59, 24),
(325, 4, 59, 30),
(326, 24, 59, 28),
(327, 28, 59, 4),
(328, 30, 59, 2),
(329, 2, 60, 30),
(330, 4, 60, 28),
(331, 24, 60, 2),
(332, 28, 60, 24),
(333, 30, 60, 4);

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
('pbkdf2_sha256$1000000$x1HmVEW8ftdurg20MYBHkD$ld0YULb/lD1EDim6EqVjXEzm9Kv+DaSOPObwlwkUQwE=', '2025-10-22 04:48:29.158908', 1, 1, 'gifters', 'admin', 'giftersg4@gmail.com', 'soyadmin', 1, 1, 1, '8c509a6750dd4b4fb111fd30ba01c546', '2025-09-30 02:42:27.315107', 0, 'N', 0, 0),
('!wLMNihf9zZgJgDwAzm8XfA483ZjfAyotAdRIsdjh', '2025-11-18 01:43:41.722437', 0, 2, 'Cristiano', 'Ronaldo', 'matiasquezada348@gmail.com', 'cristiano', 0, 1, 0, '6254caa134bf47ee90dd6ccfcf9deb24', '2025-09-30 03:43:27.671210', 1, 'N', 1, 0),
('!Rp27sL2GEvirYhIG31uyC5IOUPityEJ1FVs0eHmF', '2025-10-15 01:30:46.351827', 0, 3, 'Javier', 'Valenzuela', 'valenzuelajavier612@gmail.com', 'javiervalenzuela', 0, 1, 0, 'eeb6f9c415324b2fab513d44e8ae7270', '2025-09-30 03:47:04.324629', 1, 'N', 0, 0),
('!Pe8NSedMpEdSf4Uihk5rgnvt8d67yUuQEZgacxz5', '2025-11-19 02:30:38.310616', 0, 4, 'Pessi🥶', 'ㅤㅤㅤㅤㅤ', 'lukassacuna1884@gmail.com', 'pessi', 0, 1, 0, '7751ff0184d14798b2d5a23198791c11', '2025-09-30 03:47:38.351851', 1, 'N', 0, 0),
('!yfzdXnQmw3uyHeDdtAF01BF6j4OuV5FEt09n97hb', '2025-09-30 03:55:44.414641', 0, 5, 'Javier', 'Vasquez', 'valenvasjavier612@gmail.com', 'javiervasquez', 0, 1, 0, '90d6e3e7f57646ffac6b22ad43b9938d', '2025-09-30 03:55:44.348463', 1, 'N', 0, 0),
('!K4Dc7ntDRJPiTYNahC50eeg8TMo4WsImcnHrAKxm', '2025-11-19 00:30:45.035149', 0, 11, 'Tia', 'Turbina', 'javistark25@gmail.com', 'tiaturbina', 0, 1, 0, 'e1d111deac0c4f34a25414ae9ea88f4c', '2025-09-30 04:44:57.532930', 1, 'N', 0, 0),
('pbkdf2_sha256$1000000$DrnaZheiJuFqDE13Qf0jWJ$MoKK+vn/uZgtQKCBzpxGQPxoj62s+uWPDKrg3pym+Yg=', '2025-11-19 01:58:02.832319', 0, 24, 'Matias Ignacio', 'Dominguez Donoso', 'matias.ignacioqueso@gmail.com', 'matysepsi', 0, 1, 0, NULL, '2025-10-01 01:21:44.872201', 1, 'N', 0, 0),
('pbkdf2_sha256$1000000$Gdy4k3IRwASCSM8RHB0AgS$TAgvR64b6SgGPeqbd+FG5BVuZGpAf07nf94imTvmZjU=', '2025-11-25 03:18:59.563606', 0, 27, 'Kylian', 'Mbappé', 'quezadamatias269@gmail.com', 'kmbappe', 0, 1, 0, 'bfe2cc8ce60148509a196d2cdd03a5b6', '2025-10-03 03:01:43.484307', 1, 'N', 0, 0),
('pbkdf2_sha256$1000000$Jehn3lBsx6OPC9EEir46yD$SsFo5bYKIY9bvfV9a6u8YQdvoStO9VWqzD0OacEdKjg=', '2025-11-25 02:19:02.162241', 0, 28, 'Tony', 'Stark', 'javiervalenzuela061@gmail.com', 'tonystark', 0, 1, 0, '1d2ee311c0274e989c59d963aa5b4f31', '2025-10-15 00:08:40.877659', 0, 'N', 0, 0),
('pbkdf2_sha256$1000000$reVyTTZx2jy6z2FCACJSSS$uLEjaVPyUaD5Ybz8KzYkSSAeRfjzVbsreacEIFyz+BQ=', '2025-11-26 02:12:13.943961', 1, 29, 'James', 'Sullyvan', 'James@gmail.com', '1234alcornoque', 1, 1, 1, '52f3ddd798fb4ed9be6e0eb80b690d4a', '2025-10-18 01:07:00.804756', 0, 'N', 0, 0),
('pbkdf2_sha256$1000000$pWYPBXeJozyhdOEi8V1ZZc$lP03/qV5VhAVfg5OsF3sHEkgOUXacLKBKTZJlMG/mE0=', '2025-11-22 01:11:59.047617', 0, 30, 'pailita', 'el caati', 'matias.dominguezdonoso@gmail.com', 'pailita69', 0, 1, 0, NULL, '2025-10-22 02:13:20.285375', 1, 'N', 1, 0),
('pbkdf2_sha256$1000000$lnHFju0DdXCXP2jzmSVVBq$2L40e662t/yF+dpeaWKp/uc6vPXdAzd3NRlL27wLRbc=', NULL, 0, 31, 'peter', 'parker', 'peterparker@gmail.com', 'peterparker', 0, 1, 0, '9b639ac000d446a0ac56bd1eea0f5a5f', '2025-10-23 02:19:51.503857', 0, 'N', 0, 0),
('pbkdf2_sha256$1000000$SO9QFOkY7yO8tJdbU0BKlA$1jBc1tIWvpEexMZa5SGg04qqjvb5s7eAq+HT/YooO8E=', NULL, 0, 32, 'alesi', 'sanche', 'luk.acuna@duocuc.cl', 'elniñomaravilla', 0, 1, 0, 'e8059c8d398e4a78a73629992bddef82', '2025-10-28 00:52:17.020018', 0, 'N', 0, 0),
('pbkdf2_sha256$1000000$3YdcKxRC5bd3ziqPG039kq$8druds22hjMnIhBnktToPRZiN2wnR/MR9tCv1+m7+kk=', '2025-10-28 00:55:55.286724', 0, 33, 'alesi', 'sanche', 'xeyitox102@lovleo.com', 'ElNiñoConLaMaravilla', 0, 1, 0, NULL, '2025-10-28 00:54:10.633437', 1, 'N', 0, 0),
('!gghqEYykIBl57coflvdca72TcKC00JevzAlbrcO5', '2025-10-30 23:44:03.763303', 0, 35, 'matias ignacio', 'dominguez donoso', 'matiasignaciodd@gmail.com', 'matias-ignaciodominguez-donoso', 0, 1, 0, 'e3708372e5574c1190c4e736b5677264', '2025-10-30 23:44:03.663205', 1, 'N', 0, 0),
('pbkdf2_sha256$1000000$ZSvPOlKVQeKtnFQSd8jKQT$GxXYgxc1xEgfQjCWFyAGh4qlyOfrLgwhHkser2JD5Dc=', '2025-11-05 02:22:36.451688', 0, 38, 'Kevin', 'Bustos', 'javierpapafrita7@gmail.com', 'kevin_bustos', 0, 1, 0, NULL, '2025-11-05 02:11:22.255989', 1, 'N', 0, 0),
('!v1IyHlwXCV9nhiVARqNq9PmkYtRfAeQQdGAHBhaT', '2025-11-15 04:10:22.880163', 0, 41, 'Lukass', 'Acuña', 'lukassproo67@gmail.com', 'lukassacuna', 0, 1, 0, '09fc8ed6f52d4bf587115924906e5163', '2025-11-05 03:13:38.068253', 1, 'N', 0, 0),
('!ljozix6OYJRLr8oRvdV7E23whOgMUlVOnv7yEjh5', '2025-11-05 18:03:30.571887', 0, 45, 'ELIAS .', 'ALCAIDE LEIVA', 'el.alcaide@duocuc.cl', 'elias-alcaide-leiva', 0, 1, 0, 'e2cd3fd25d1f454fb42f840e14bd2e49', '2025-11-05 17:40:26.130313', 1, 'N', 0, 0),
('pbkdf2_sha256$1000000$DwBoE4Coj4qSmNvRcXboZ4$waxZ13yIWBVkD835/yTCXg9Cj+GblzXpP+Cm4We/OhE=', '2025-11-15 02:41:51.806781', 0, 46, 'sfsdfsd', 'sdffsd', 'fitic87185@chaineor.com', 'fsdsdf', 0, 1, 0, NULL, '2025-11-15 02:39:56.879108', 1, 'N', 0, 0),
('pbkdf2_sha256$1000000$Tj23HuR5qz8UNwHtWKHjJg$VOnzrjhXqSyKtK7X2+7IF+xxI993qGk//eSHIIoYntU=', '2025-11-19 00:30:49.725469', 0, 48, 'piriv86029@gyknife.com', ',', 'piriv86029@gyknife.com', 'piriv86029@gyknife.com', 0, 1, 0, NULL, '2025-11-19 00:28:51.650857', 1, 'N', 0, 0),
('pbkdf2_sha256$1000000$OZiKV9xw1Rb1OefSQHAFg6$2rcLl0s20ptPO/AcZEmuH6HcGV2qnfH9STCkPU40pBY=', '2025-11-26 02:15:47.170347', 0, 49, 'Darius', 'Del LoL', 'mati.dominguez@duocuc.cl', 'dariusdellol', 0, 1, 0, NULL, '2025-11-22 02:34:26.501366', 1, 'N', 0, 0),
('pbkdf2_sha256$1000000$PqJejiw6Qj8xazMxcxWgtU$LHES8wTPpxpS9m58WbQUZyEFz5YeTpdVxSYT15mFLaI=', '2025-11-25 02:25:41.870902', 0, 51, 'Spider', 'Man', 'vasquezjavier61222@gmail.com', 'Spider-Man', 0, 1, 0, NULL, '2025-11-25 02:25:02.328502', 1, 'N', 0, 0);

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

--
-- Volcado de datos para la tabla `core_user_intereses_categorias`
--

INSERT INTO `core_user_intereses_categorias` (`id`, `user_id`, `categoria_id`) VALUES
(33, 2, 7),
(32, 24, 1),
(31, 24, 13),
(30, 24, 17),
(15, 28, 2),
(19, 28, 7),
(10, 28, 8),
(20, 28, 9),
(5, 28, 10),
(11, 28, 12),
(24, 28, 16),
(3, 30, 1),
(7, 30, 2),
(8, 30, 11),
(6, 30, 16),
(9, 30, 21);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_user_intereses_marcas`
--

CREATE TABLE `core_user_intereses_marcas` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `marca_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `core_user_intereses_marcas`
--

INSERT INTO `core_user_intereses_marcas` (`id`, `user_id`, `marca_id`) VALUES
(14, 24, 40),
(7, 28, 31),
(5, 28, 33),
(6, 28, 35),
(3, 30, 10),
(8, 30, 16),
(4, 30, 19),
(9, 30, 25),
(2, 30, 40),
(10, 30, 42);

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
('4aqwbjz64olayxre4gwz3vo1d08n3trh', '.eJxVj01uhTAMhO_iNUJx_sOu7xpVhUxe8kClpCKhG8TdC5Qu2Fkz34ztFXLyA43kfVqm0uZCJWRo1q2Cf42W0oepDJ7KkKb2K5Q-PXfmfYW_GZp7C-zZAg0azQVqVKq2wsoKvuf0MzzDvPOvlF5j2MFlOOKI3ErDjTVKMbTOMsMdbB8VnNvbJYe5PUkON60j_xmmw6BxPOT6uqE-mcvO9dvth8eVulX1lPu9x_oQhCDLbWeckyiCtjKilp0IzgtyUgvpo2eGeYHRIXMxRvTEVGd5VLD9Atlib4o:1vGUwB:0fk8A1tSldkxEfS7tFm4SGZUsJrCkyJJhvhqeLw11do', '2025-11-19 04:15:59.951267'),
('4c6drpp4f5yn20776s8rjts8ibnniepg', '.eJyt0kuKwzAQBNC79NoItVofy6u5RxhMo4hEYEshkic_cvckzAGGAe0aqnib6gdwCGXLbeatHWNuKXBLJc9rbMeyrzDtHvB7wwQnrvVSznsYgBtM6KwiVERSGPTa63GAuHJa3tV0yBxS-eEl5vsWF7ao1Nfhk4pQVngOf7qGtCBNyti-rJaCpPFSUk-X0DmBaBF1X3aUwlupR1RdXYVKWHIGTVfWey288_-Z7HuAucZaP28Xr6d0vsEkny9H69UE:1vGUNG:4IHeSjeImlcaLwPCmdFRufyDmu1-y2I_Bw6eLPblkls', '2025-11-19 03:39:54.980087'),
('5etf1v12tydtegv52xxlfrnwsny7y7we', '.eJxVUMtuhDAM_BefESIB8uDU9jeqFXISp0TlsSVB23a1_16y5YJ8sWbGMyPfAa1dtjn1uKWB5hQsprDM_URpWFyE7v0O_zt0cMUYb8vqoABM0DEpaiaVrHQpGGOyEQXQhGHcpV8b_aLDaXfDyIV--chEaZcJHpcCnnH9FmntQ3bmEk6gQftJc2ZwHDNcHj3Lp-agY_l6av12XJ2sBoxDTvDUSONJ-8pbWbXaGk41R88a41CofVrBUStGRqOujXOulUK2vuJKcZ9NI8WYn0Pf17D-QFc9_gDRZWum:1vK7KH:9lc9JSocYFPZq4sdm7RJQUIIWYS6njUCVbOayRVEl-8', '2025-11-29 03:51:49.659552'),
('5o0d26vwk0aiwfe4j2r9dap756c09d4i', '.eJxVkM1uhDAMhN_FZxQlIT-EU9vXqCpkglmiLmRLgtpqte9esuXCzZoZfx75Duh93Jbc4ZYnWnLwmENcupnyFIcE7fsd_mdo4YYpfcd1gAowQyusdrKxTmjGG8eFqoBmDNc9Oe8UTCxcFvQhfm2U4suleMzHGR4fFTwPdluitQuFLRWcxB79Jy3Fweu1yOxoyp6Zw07s9dT77dg6oSZM084xjrRAbo3mo7F78x4NSjlapFH2SonaaVELR7XyBhvLR6vIDrIxWvdKjgWaKKXyHvq5hfUXWv74A_taa8A:1v3n9X:qoRRX157R2WeiSiljSFu5iOuUyGx0f9rXo3gUXbM4n4', '2025-10-15 03:05:15.109125'),
('5sqy8bh5frcwmaj4etob773s6nt9sp2m', '.eJxVj0tuhDAQRO_Sa4T8xTa7zDWiCJme9oBCcIRNNoi7xxCyYNeqrnqq2iBFHP3kEeM65y5lnylBu-0V_Gt-zQPNeUSfxzh3X5SH-Cye9w3-bmjvFCjZDC03DWfOMelqJrXRzlTwvcSf8UlLibxifE1UvOt4EDgXVhlhrNGacessM8LB_lHBWaBbEy3d6RRw03qPnzQfDz9Nh1xfNerTc71T_Xab8bhSN9Tg01A4Fomk9FbY3jinuKTGqsAb1UtyKL1TjVQYkBmGkgdXVoYQOHqmeyuChv0X4YNwLw:1vBOJD:f5bDxibEb8V20R0K2ep8mNwkiuF1ABnP-bwuisx7q9E', '2025-11-05 02:10:39.086094'),
('6k14udb0gcpewmhfppukknprjqwrw7m8', '.eJxVj0FuhTAMRO_iNUIhcRLMrv8aVYVMCB9USioSukH_7g2ULthZM29G4x1icBPP7FzYltTGxMlHaPZXAf8ab2n0S5ocpyks7ZdPY-gz877D3w3NvQVyNkFTWU3SEhlRaluRUaqA7zX8TL1fc-QZwnP2md2mo6GqNJEyygqSSAZVTbWC10cB54B2i35tTxLhpnXsPv1yGDzPh1xeM8qTuexYvt3eeFypW9XIccw9QhnZO-w0S1v3aAjZC8FOKSdrjRZ7pbzu0FumDglRDx1pdoMWPKDMq38B6u1wKg:1v3l5E:kgGEE3Lnp8qSmziL6iZt_ibAleklEyM-XoqNfPpsA7k', '2025-10-15 00:52:40.604141'),
('74e8o7eo37iooz1fs6ug1hxfo6trqeq1', '.eJxVkM1uhDAMhN_FZxSRkD84tX2NaoVMMEtUIFsStK1W--4lWy7crJnx55EfgM6FbUktbmmkJXmHyYelnSmNoY_QfD7gf4YGbhjjPaw9FIAJGm50pbiRVjDLteK2AJrRT3ty3ikYmb8u6Hz43iiGt2v2mAszPC8FvA62W6S19ZktJJzEDt0XLdnBacoyO5qyV-awI3s_9f44tk6oEeO4c3RNimNptCoHbWphO9QoxGCQBtFJyata8YrXVEmn0ZpyMJJML6xWqpNiyNBIMeb30M_Nr7_QlM8_-BVrvQ:1vLXSM:6MLIhsboHf5fbiQdsewbaupYrs4lE6Qoytv3lapgk_k', '2025-12-03 01:58:02.852650'),
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
('bmlf19tbztwxplxgpsuqvy9w61zfpjo4', '.eJxVUEFuhDAM_IvPKAoECOHU7TeqFTKOKWmBrEjQtlrt30u2XDhYsmfG45EfgER-W2KHWxx5iY4wOr90M8fR2wDtxwP-e2jhhiHc_WohA4zQ5rpWe2mZi8oUjWx0Bjyjm3bpF84c3j7TJMjP8Lxm8LrRbYHXziW7wsAJ7JG-eUkMTlOCxRFOvDQHHcTlFPX92DpZjRjG3achUo3SpTFU5lxZzBlJljpnOdi-55q5LFRRDWYgqwbJtaolGqWNVdUgKZkGDiF9hH9ubv2FVj7_AAGvZ8g:1vK6nt:LV_DH13RjC-XkcsPd7Ku4o4SZ7pprxsdcrdYrpJrKzw', '2025-11-29 03:18:21.635428'),
('bonep0am7f7cg56bozmhgrs7ak8incqb', '.eJxVkM1uwyAQhN9lzxYC4x_wqelrVJG1_NWotokMKG2jvHtN6otvq5nZb0f7ANQ65DWNmNNk1-Q1Jh_WcbFpCibC8PGA_xkGuGGM97AZqAATDKzveN9LxiihNZesqcAu6Oc9uewUYsLi189sf99MDjpromd4Xit43RpztNvoC7aRcBIV6i-7FgfnucjkKElemcOO5HKq_H5snVATxmnnUKaMampssOeWUuOodEw4aWzfSt4J2SGTDTNU1aKVUghUNeemY6g76lpXoNHGWD5jv29--4GBPv8AtF1qPw:1vMdWA:9xXQ0oicGusNDgb-XauSU405UbSeiY8gYBdXtmaWQN0', '2025-12-06 02:38:30.047094'),
('c1y00254povcrgb0kkuxsigmbtr9we49', '.eJxVUMtuhDAM_BefUQQB8uDU9jeqFXISp0TlsSVB23a1_16y5YIsS9bMeDzyHdDaZZtTj1saaE7BYgrL3E-UhsVF6N7v8D9DB1eM8basDgrABF0lRb13ozTTSopS8gJowjDu0q-NftHhtLth5EK_fGSC2WWCx6WA57l-i7T2ITtzCSfQoP2kOTM4jhlmR0721Bx0ZK-n1G_H1slqwDjkC54aaTxpX3ory1Zbw6nm6KvGOBRqr1Zw1Koio1HXxjnXSiFbX3KluM-mkWLMz6Hva1h_oCsff-Dqa7Y:1vK6kU:eszv-I1Eoqrtk6YZ8sTs1oCvIW-RiOyVfiQGFrJMx7c', '2025-11-29 03:14:50.017587'),
('ctsr6zg4erumx0b413yh8letbfa73or1', '.eJxVkE1uhDAMhe_iNYoSUpIMq06vUVXIBGeICsmIBPVnNHcvoWzYWX7Pn5_9ALQ2riF3uOaRQvYWs4-hmymPcUjQvj_gv4YW7pjSV1wGqAAztEIrYbRSRrNG8sbUugKa0U-bdd4wmNgQZx9uK_0OMcQUX29FZjbO8PyoYF_arYmWzhe-5HBq9mg_KRQFp6m02ZGW7Z5DTux6yv52TJ1QI6axcLisjamp6R0J6ci6F66l6jXH_YRG1iRcgwKlMmqTpdQX4QahUV-MdAWaKKXyIvq---UHWv78AwLKbdk:1vEebv:TGP-3oM-z-yoUqS9gZC9TxSE8RMP4zXeKHynHxFwcTs', '2025-11-14 02:11:27.564917'),
('dgnn6hgx93y88a3rm2hg6ha8r0ii8dmz', '.eJxVj0tuhDAQRO_Sa4Rs3LYxu8w1ogi1PwwoBEfYZIPm7jGELNi1ql6VqndI0U00k3NxW3KfMuWQoNtfFfxrtOUxLHlylKe49F8hj9EX5n2Hvxu6ewuUbIaOa8U1a5FjrZUyUqkKvtf4M_mwlsgzxuccCrtNRwPn0hihhGamQaNQtKYV8Pqo4BzQbyms_Uki3DRL7jMsh0HzfMj1NaM-mctO9dvtjceVulWNlMbSw4RqvEMrqdGtR2WQAmPkhHBNK1GjFyJIi0GTsWgQ5WCNJDdIRgM2ZfUv5blwJQ:1vDwpq:3zmCT6Weo3oTInqxbTZEOLZl7XoVZ2DWQzHUyMtrE6w', '2025-11-12 03:26:54.801309'),
('dh0o7yd2x0syaumpi88kqkifd86wze8o', '.eJytzcEKgjAYAOB3-c8jMmv_9BpFhxIiwUOIjLlyNPx1m0WK717QK3T-Dt8EnpSRVipFQxsqH2TQHtIJmneBdDg245hndb8nSK8TdI6U9l8HS3fTAoNaBglpO1jLoHsoXSmqdfXUztyMdj-ZWYQ8wiXGyBfIxSbhq5JBRn322uHZFiF3l-3pL4NIFnEkxDqJy3n-AFjISdk:1vDwZJ:hFTWW6BBLgN8OZ35Kcx4uE9cl_-O3aCCSIVU-RZv0Eo', '2025-11-12 03:09:49.319050'),
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
('ow6q1okxhj34ey9jc65ahjo56z528isd', '.eJxVUMtuxCAQ-5c5RwhIeCSnbn-jqiIC0w1qgFUg6mO1_96wzSW3ke2xPXMHY23aYhnNVmaMxVtTfIpjwDInl2F4u8P_DAPcTM5faXXQgCkwMCWZolQLTXoq2r6VDWAwftmlYbcxmbgUfLxu-OtSTDm9XCtNbArweG_gGTpuGdfRV_-WwgmcjP3EWBmzLBUmR1vy1Bx0JpdT99dj62Q1mzzXBKkcZ5Zpp-xk-eRUzyUqbJn8EK3gHAVyvd_U8Z5R2zlGJ6n6zqBgVCtdTTPmXF-E3ze__sBAH3_dp20M:1vDurz:a7yqes9wFq_pqYyyzijHqWIB7hrweEMw-CVEtQZXQuU', '2025-11-12 01:20:59.038336'),
('pkvekadx25amqi53ghx67k716uon7x94', '.eJxVkMluwzAMRP-FZ8OwrGqxT01_oygMiqJrtV4CS06XIP_eKPXFN2Jm-DjgFZBo2ebU4ZYGnlMgTGGZu4nTsPgI7esV_mdo4Ywxfi2rhwIwQSuMFlJZqepSykaIWhXAE4bxHv3AS-D1giPPvxuPWGnx_J69kpYJbm8FPC52W-S1CxleWziIDumT5-zgOGa53KuWj8xux_J0KP6ybx1QA8bhzvFa19x7Y8lKbR0bY4VV3lvdq8qQ1CQMy6Zx1jfOOfJkXU3K9F48VURVhkaOMf-Hv89h_YG2uv0BNrptFw:1vCTlg:TWca7TW5EM2lJYBzCFH8BLT49UikLe7gaWJJMmPr-r8', '2025-11-08 02:12:32.358462'),
('pvrm0ub8phu96ixxpsc3gtwp8287lw82', '.eJxVj0tuhDAQRO_Sa4T8xTa7zDWiCJme9oBCcIRNNoi7xxCyYNeqrnqq2iBFHP3kEeM65y5lnylBu-0V_Gt-zQPNeUSfxzh3X5SH-Cye9w3-bmjvFCjZDC032knTMKlq3ijFnarge4k_45OWEnnF-JqoeNfxIHAurDLCWKM149ZZZoSD_aOCs0C3Jlq60yngpvUeP2k-Hn6aDrm-atSn53qn-u0243GlbqjBp6FwLBJJ6a2wvXFOcUmNVaFs6CU5lN6pRioMyAxDyYPjzIUQOHqmeyuChv0X20RwKA:1v4A4o:CPh2QlycOFELXGueEkMkf8VqyoQhDRyGVfWFVeyMEAI', '2025-10-16 03:33:54.187385'),
('q2dqmvcgjabzpgkm9l04rbuhkrs195ym', '.eJxVkE1uhDAMhe_iNUIJDj9h1ek1qgoZxxRaICMS1FajuXsnUzbs7Pfsz0--ATH7fY0d7XGUNU5McfJrt0gcvQvQvt3gv4YWrhTCt98cZEARWl1XRheoEXOLpVFNk4EsNM2P0U9aJLx8pC5nv8D9PYPnjW4PsnVTwhUWTmJP_CVrcmiek5wf4fLnzGGH_HKK-npsnVAjhfHBaZixwdpYy0ZL6UgLsTK1FjW4vpdKxBRYlIMd2OGgpMJKkcXaOiwHxQkaJIT0Efm5TtsvtOr-B_g0Z74:1vO50v:JomGfvy3AhscAjcIcbaMVpArHDldeuI8S__D8j9L2Tk', '2025-12-10 02:12:13.967531'),
('q2hi6bdtzv8ritcf33ngrf4c5730co5i', '.eJxVkM1uhDAMhN_FZxSRkB_Cqe1rVCtkglmiAtmSoG212ncv2XLhZs2MP4_8AHQubEtqcUsjLck7TD4s7UxpDH2E5vMB_zM0cMMY72HtoQBM0HCjK26kFppZXSlb2gJoRj_t0XnHYGT-uqDz4XujGN6u2WMuzPC8FPC62G6R1tZnuJBwEjt0X7RkB6cpy-yoyl6Zw47s_VT849g6oUaM487RlhTH0mhVDtpYUXeoUYjBIA2ik5JXVvGKW6qk01ibcjCSTC9qrVQnxZChkWLM_6Gfm19_oSmff0qia_g:1vK6GQ:5xWNc96GpS9HxW7EjjRurN0qt9l5NuXtFaapU0hjQqM', '2025-11-29 02:43:46.986488'),
('q8ykip2vsh28xv0tg23kxsfrv280srxa', '.eJxVjMsOwiAQRf-FtSHQgVJcuvcbyDAz2KqBpI-V8d-1SRe6veec-1IJt3VM2yJzmlidVRfV6XfMSA-pO-E71lvT1Oo6T1nvij7ooq-N5Xk53L-DEZfxWw9EMEBwMZKz4hmtIBkXrJjCOUsv4jrofImFGIqRHnqDEUJk8MWQen8AH0U4oA:1v9vXj:GRG5d8Cf2hj1osuw1Njb9k9DqPSBaZo82NEt65g1ZBg', '2025-11-01 01:15:35.286332'),
('q9hjhwwxg7uduqhu1jizmcz4fwfyux6q', '.eJxVkM1uhDAMhN_FZ4QSsiSBU9vXqCrkOKak5WdFwvZnte_ezZYLN2tm_HnkKyDRss2pwy0NPKdAmMIydxOnYfER2tcr_M_Qwhlj_FpWDwVgglYarYQ16qRLI5Wt6gJ4wjDekx94CbxecOT5d-MRhZZP79kraZng9lbA42C3RV67kNmVhYPokD55zg6OY5bLvWn5yOx2LJ8PvV_2rQNqwDjcOV7rintvLFmlrWNjrLS191b3tTCkNEnDqmmc9Y1zjjxZV1Ftei9PgkhkaOQY83v4-xzWH2jF7Q_0tWzt:1vJjYh:jtVUqASCyfYAX9fpRj9IfGx9byw7GIj__pYJFqUwj4o', '2025-11-28 02:29:07.839752'),
('qftaf2f4uhlvqzvlinsws33lh8sjv6yq', '.eJxVkM1uhDAMhN_FZ4QSKEng1O1rVBVyHFPSBliRsP1Z7bt3s-XCzZoZfx75Cki0bHPqcUsjz8kTJr_M_cRpXFyE7vUK_zN0cMYYv5bVQQGYoJNa1VLXbdWW2mgjVFMAT-jDPfqBF8_rBQPPvxsHFEo-v2evpGWC21sBj4v9FnntfYZXBg6iRfrkOTsYQpbLvWr5yOx2LE-H4i_71gE1YhzvHKdUxYPThkytjGWtjTSNc0YNjdBUK5Ka67a1xrXWWnJkbEWNHpx8EkQiQyPHmP_D32e__kAnbn9OLm0v:1vK65B:w74VTu9olErVko9rR0cq2RYe3MOXxFVKwrpbu7GXhps', '2025-11-29 02:32:09.814699'),
('rpqohxxaadcfmb0op8nkcgap5co6aexk', '.eJxVkMFuwyAQRP9lzxYCbAP2qelvVJGFYRuj2hB5sdI2yr83pL74tpqZfbPaO1jn0hbzYLc8YczB2RxSHBbMU_IE_ccd_mfo4WqJbmn1UIHN0AuthDZa6ZrJhkve1RXgYsP8jC5PjCXm0xLiZcNfn2Ki9HYpNnNpgce5glfpsBGuQyj8msNBHK37wlgcO89FZvu17JXZbWKnw-3v-9YBNVmaSoPSXgonjNdudHL0upMKNdZCfbZ1KyW2KA3nppGd4K7xgo9Kd43FVnCjTYESEpUX4fc1rD_Q88cf2RltBw:1vEHSD:ut2bEatHjQ37Yv2_BKaJnkFOh710rSF1wegEOm2y_6M', '2025-11-13 01:27:53.275744'),
('rqne5rx8u4bpgm8aggtezpc19bv3ny38', '.eJxVUEFuhDAM_IvPKAoEyIZTt9-oKmQcp6QFsiJBbbXav5dsuXCyPTMej3wHJArbknrc0shL8oTJh6WfOY3BRuje7vDfQwc3jPE7rBYKwARdqVtVamVaKZRu9loAz-inXfmJM8eXjzwJCjM83gt4nui3yGvvs1tl4AQOSF-8ZAanKcPiyCaemoOO4npK-npsnaxGjOPucyFSF6VrY6guubFYMpKsdcnS2WHglrmuVNU448gqJ7lVrUSjtLGqcZKyaeQY80P45-bXX-jk4w-6nGeW:1vK65g:hCfrAR1xIgMDU9eY5EuKzEbjlPFsaqxR6-Yn6SvSZS0', '2025-11-29 02:32:40.400442'),
('sh1okdrscgphfum3cejw6lgt7qrv94tx', '.eJxVkM1uhDAMhN_FZ4SSsCSBU9vXqCrkOKak5WdFwvZnte_ezZYLN2tm_HnkKyDRss2pwy0NPKdAmMIydxOnYfER2tcr_M_Qwhlj_FpWDwVgglYaLZVR1upSnmqlhS6AJwzjPfqBl8DrBUeefzceUWj59J69kpYJbm8FPC52W-S1CxmuLBxEh_TJc3ZwHLNc7lXLR2a3Y_l8KP6ybx1QA8bhzvFaK-69sWQrbR0bY6Wtvbe6r4WhSpM0XDWNs75xzpEn6xTVpvfyJIhEhkaOMf-Hv89h_YFW3P4APZdtHg:1vC7XC:SIB-iZDenOgDtOQUwUwT_j9kmFq2aLOb_2lbMHo1XFg', '2025-11-07 02:28:06.194866'),
('t0ladtpwi1swo35ykfcilpj4wlhrcruv', '.eJytks1OwzAQhN_F58iy1_HGyQl4DYSije00hvyUOCnQqu9ODT2QE5fcVjO730qjuTCydlrHpaZ16fy4BEtLmMZ68Es3uciq5wv7nVnFjhTjxzQ7ljFaWCULBCUFCM2FEUJjnjE_UOhvq-Ewkg3TiXo_nlffE0qAh0NyuZ0Gds3-40qQhmswShrYlatz4AaNlqXalYuy4JiXWuG-WI1cFVKpYt8Y0CheGq1AmD25IARyIaCQ-k8OJ4rvqz-_0in4OTE30JeM1dHHmIrnP49h_mKVuGmpk_Ua_VyH9C8XbCM2ZN_8mBzq-yTze5n5z87djvxxU-2n-9UG1VHsEkdbbA3IxpTOWSTroMHCONU0oLwrS2hbWd5UAWSsNV4SomtzFFQogoZdvwF1ABGM:1vGTrC:V3nXQd_-Xoh5yX8id4mIWfr4piV75rdImSg203Ltow4', '2025-11-19 03:06:46.034025'),
('t6raqsnibin8grlq15pijb52m9o65xu1', '.eJxVkE1uhDAMhe_iNYog5IewanuNqkImmCHqQKY4qK1Gc_eSKRtWtt6zPz_5Duh93JbU4ZYmWlLwmEJcupnSFAeG9v0O_z20cEPm77gOUAAmaCurXW1rraXYi7WuKYBmDNd9dN4xyCJcFvQhfm3E8eWSPeHjDI-PAp4Xu41p7UKGSwUnsUf_SUt28HrNsjiiiufMYbN4PQV_O7ZOqAl52jnGka6wtEaXo7FONj0alHK0SKPslapqp6u6clQrb7Cx5WgV2UE2RuteyTFDmZjzf-jnFtZfaMvHH1GGa_8:1v49Qm:7bROMoEAN8XAwdhlGk0fX02JK_YAbKcNDBYOqT-K-IU', '2025-10-16 02:52:32.395741'),
('tot9pq7x91h4nfrgm4fbj8kdt2kfph5e', '.eJxVkNFugzAMRf_FzwglJCQNT-t-Y6qQccxgA1KRoG6q-u9rOl54s--1j698ByQK25Ja3NLASxoJ0xiWduY0BB-h-bjDfw0NXDHGW1g9FIAJGmmNklZLJ0pTSSF1ATzjOD0nv3Dm-PaZu5LCDI9LAa8T7RZ5bcdMqxwcxA7pm5fs4DRludyzla-Z3Y7l-ZD0fd86oAaMw5NzIlInZbVzpCXXHiUjCW0li953HRtmXamq7l1PXvWCjTICnbLOq7oXlKGRY8wP4Z_ruP5CIx5_pZZnfw:1vK69O:t6XJMBq_EHN5UqQG_OWO4gbGJhufniD-omL_blZ5SY0', '2025-11-29 02:36:30.647592'),
('ugrlwa5mw97tjvduda9sjst6fc14w8pz', '.eJxVj0tuhDAQRO_Sa4T8A9vsMteIItR42oMVgiNsskHcPYaQBbtWddVT1QYpuoATOhfXOfcpY6YE3bZX8K_hmkeac3CYQ5z7L8pjfBbP-wZ_N3R3CpRsho7rVirJhOC1Zq1WUlfwvcSf8KSlRF4xviYq3jUcBM6FUVpoo5uGcWMN08LC_lHBWaBfEy396RRw0wZ0nzQfD5ymQ66vGvXpud6pfrvNeFypG2rENBaOcURSohFm0NYqLqk1yvNWDZKsk2hVGea8Y5o5yb3lzHrvuUPWDEb4BvZf0JZwHQ:1vLAkv:kq6dKLy8yl_Ixf2Pz3RBqYEEhiCjsyjIP6j8AEOemYc', '2025-12-02 01:43:41.772885'),
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

--
-- Volcado de datos para la tabla `entrega_mensaje`
--

INSERT INTO `entrega_mensaje` (`entrega_id`, `estado`, `timestamp`, `id_usuario`, `mensaje_id`) VALUES
(23, 'leido', '2025-10-24 02:15:49.825209', 11, 23),
(24, 'leido', '2025-10-24 01:36:26.031147', 2, 24),
(25, 'leido', '2025-10-24 02:15:49.825209', 11, 25),
(26, 'leido', '2025-10-24 01:36:26.031147', 2, 26),
(27, 'leido', '2025-10-24 01:36:26.031147', 2, 27),
(28, 'leido', '2025-10-24 01:36:26.031147', 2, 28),
(29, 'leido', '2025-10-24 02:15:49.825209', 11, 29),
(30, 'leido', '2025-10-24 01:36:26.031147', 2, 30),
(31, 'leido', '2025-10-24 02:27:07.139878', 11, 40),
(32, 'leido', '2025-10-24 02:27:07.139878', 11, 41),
(36, 'leido', '2025-10-24 01:36:26.031147', 2, 421),
(37, 'leido', '2025-10-24 02:15:48.967188', 11, 423),
(38, 'leido', '2025-10-24 02:15:48.967188', 11, 425),
(39, 'leido', '2025-10-24 02:15:48.967188', 11, 426),
(40, 'leido', '2025-10-24 02:00:06.199601', 11, 427),
(41, 'leido', '2025-10-24 01:54:13.317813', 2, 427),
(43, 'leido', '2025-10-24 02:15:48.967188', 11, 428),
(44, 'leido', '2025-10-24 02:15:48.967188', 11, 429),
(45, 'leido', '2025-10-24 01:36:20.895918', 2, 430),
(85, 'leido', '2025-10-24 01:42:19.314253', 2, 464),
(86, 'leido', '2025-10-24 01:42:19.314253', 2, 465),
(87, 'leido', '2025-10-24 01:42:40.096900', 2, 466),
(88, 'leido', '2025-10-24 01:43:54.668228', 2, 467),
(89, 'leido', '2025-10-24 01:44:33.804303', 2, 468),
(90, 'leido', '2025-10-24 01:44:33.804303', 2, 469),
(91, 'leido', '2025-10-24 01:50:18.990536', 28, 470),
(92, 'leido', '2025-10-24 01:53:01.736759', 28, 471),
(93, 'leido', '2025-10-24 01:53:01.736759', 28, 472),
(94, 'leido', '2025-10-24 01:53:01.736759', 28, 473),
(95, 'leido', '2025-10-24 01:53:01.736759', 28, 474),
(96, 'leido', '2025-10-24 01:53:01.736759', 28, 475),
(97, 'leido', '2025-10-24 01:54:04.542082', 28, 476),
(98, 'leido', '2025-10-24 01:54:04.542082', 28, 477),
(99, 'leido', '2025-10-24 01:54:04.542082', 28, 478),
(100, 'leido', '2025-10-24 01:54:04.542082', 28, 479),
(101, 'leido', '2025-10-24 01:54:04.542082', 28, 480),
(102, 'leido', '2025-10-24 01:54:04.542082', 28, 481),
(103, 'leido', '2025-10-24 01:54:04.542082', 28, 482),
(104, 'leido', '2025-10-24 01:54:04.542082', 28, 483),
(105, 'leido', '2025-10-24 01:54:04.542082', 28, 484),
(106, 'leido', '2025-10-24 01:54:04.542082', 28, 485),
(107, 'leido', '2025-10-24 01:54:04.542082', 28, 486),
(108, 'leido', '2025-10-24 01:54:04.542082', 28, 487),
(109, 'leido', '2025-10-24 01:54:39.169162', 2, 488),
(110, 'leido', '2025-10-24 01:54:39.169162', 2, 489),
(111, 'leido', '2025-10-24 01:54:39.169162', 2, 490),
(112, 'leido', '2025-10-24 01:54:39.169162', 2, 491),
(113, 'leido', '2025-10-24 02:28:18.942037', 28, 492),
(114, 'leido', '2025-10-24 02:28:18.942037', 28, 493),
(115, 'leido', '2025-10-24 02:28:18.942037', 28, 494),
(116, 'leido', '2025-10-24 02:28:18.942037', 28, 495),
(117, 'leido', '2025-10-24 02:28:18.942037', 28, 496),
(118, 'leido', '2025-10-24 02:28:18.942037', 28, 497),
(119, 'leido', '2025-10-24 02:28:18.942037', 28, 498),
(120, 'leido', '2025-10-24 02:28:18.942037', 28, 499),
(121, 'leido', '2025-10-24 02:28:18.942037', 28, 500),
(122, 'leido', '2025-10-25 02:14:57.315711', 28, 501),
(123, 'leido', '2025-10-25 02:14:57.315711', 28, 502),
(124, 'leido', '2025-10-24 02:36:13.277270', 11, 503),
(125, 'leido', '2025-10-24 02:36:13.277270', 11, 504),
(126, 'leido', '2025-10-24 02:36:27.482206', 2, 505),
(127, 'leido', '2025-10-24 02:36:27.482206', 2, 506),
(128, 'leido', '2025-10-24 02:37:31.473367', 11, 507),
(129, 'leido', '2025-10-24 02:37:49.316280', 11, 508),
(130, 'leido', '2025-10-24 02:38:12.482393', 2, 509),
(131, 'leido', '2025-10-24 02:52:15.527891', 11, 510),
(132, 'leido', '2025-10-24 02:52:15.527891', 11, 511),
(133, 'leido', '2025-10-24 02:52:27.336147', 2, 512),
(134, 'leido', '2025-10-24 02:52:27.336147', 2, 513),
(135, 'leido', '2025-10-25 00:12:39.324527', 2, 514),
(136, 'leido', '2025-10-30 23:52:56.119097', 24, 514),
(138, 'leido', '2025-10-24 02:53:04.103799', 11, 514),
(139, 'leido', '2025-10-24 02:53:01.011972', 11, 515),
(140, 'leido', '2025-10-24 02:53:01.011972', 11, 516),
(141, 'leido', '2025-10-24 02:53:01.011972', 11, 517),
(142, 'leido', '2025-10-25 00:12:39.324527', 2, 518),
(143, 'leido', '2025-10-30 23:52:56.119097', 24, 518),
(145, 'leido', '2025-10-24 02:53:04.103799', 11, 518),
(146, 'leido', '2025-10-25 00:12:39.324527', 2, 519),
(147, 'leido', '2025-10-30 23:52:56.119097', 24, 519),
(149, 'leido', '2025-10-24 02:53:16.109525', 11, 519),
(150, 'leido', '2025-10-24 02:53:20.744709', 11, 520),
(151, 'leido', '2025-10-28 00:47:49.339213', 4, 521),
(152, 'leido', '2025-10-25 00:46:59.313064', 2, 522),
(153, 'leido', '2025-10-30 23:52:56.119097', 24, 522),
(155, 'leido', '2025-10-28 00:48:11.156863', 4, 522),
(156, 'leido', '2025-10-25 01:17:53.554235', 2, 523),
(157, 'leido', '2025-10-30 23:52:56.119097', 24, 523),
(159, 'leido', '2025-10-28 00:48:11.156863', 4, 523),
(160, 'leido', '2025-10-25 01:17:53.554235', 2, 524),
(161, 'leido', '2025-10-30 23:52:56.119097', 24, 524),
(163, 'leido', '2025-10-28 00:48:11.156863', 4, 524),
(164, 'leido', '2025-10-25 01:19:22.611731', 2, 525),
(165, 'leido', '2025-10-30 23:52:56.119097', 24, 525),
(167, 'leido', '2025-10-28 00:48:11.156863', 4, 525),
(168, 'leido', '2025-10-25 01:19:22.611731', 2, 526),
(169, 'leido', '2025-10-30 23:52:56.119097', 24, 526),
(171, 'leido', '2025-10-28 00:48:11.156863', 4, 526),
(172, 'leido', '2025-10-25 02:13:46.956961', 28, 527),
(173, 'leido', '2025-10-25 02:13:46.956961', 28, 528),
(174, 'leido', '2025-10-27 23:41:49.374114', 2, 529),
(175, 'leido', '2025-10-30 23:52:56.119097', 24, 529),
(177, 'leido', '2025-10-28 00:48:11.156863', 4, 529),
(178, 'leido', '2025-10-27 23:41:43.574491', 2, 530),
(179, 'leido', '2025-10-25 02:15:00.864709', 28, 530),
(182, 'leido', '2025-10-27 23:41:43.574491', 2, 532),
(183, 'leido', '2025-10-25 02:15:00.864709', 28, 532),
(185, 'leido', '2025-10-25 02:13:43.484496', 28, 533),
(186, 'leido', '2025-10-25 02:13:43.484496', 28, 534),
(187, 'leido', '2025-10-25 02:13:43.484496', 28, 535),
(188, 'leido', '2025-10-28 00:47:49.339213', 4, 536),
(189, 'leido', '2025-10-25 02:13:43.484496', 28, 537),
(190, 'leido', '2025-10-25 02:13:43.484496', 28, 538),
(191, 'leido', '2025-10-30 23:48:01.683979', 24, 539),
(193, 'leido', '2025-10-28 00:47:49.339213', 4, 541),
(194, 'leido', '2025-10-25 02:27:57.535862', 2, 542),
(195, 'leido', '2025-10-25 02:27:57.535862', 2, 543),
(196, 'leido', '2025-11-21 02:30:35.389759', 30, 544),
(197, 'leido', '2025-10-28 01:40:48.998368', 11, 545),
(198, 'leido', '2025-10-27 23:41:43.574491', 2, 545),
(201, 'leido', '2025-10-28 01:40:40.425687', 11, 547),
(202, 'leido', '2025-10-27 23:41:33.051772', 2, 548),
(203, 'leido', '2025-10-28 01:40:48.998368', 11, 549),
(204, 'leido', '2025-10-27 23:41:43.574491', 2, 549),
(206, 'leido', '2025-10-28 01:40:48.998368', 11, 550),
(207, 'leido', '2025-10-27 23:41:43.574491', 2, 550),
(209, 'leido', '2025-10-28 01:40:57.500567', 11, 551),
(210, 'leido', '2025-10-28 01:40:48.998368', 11, 552),
(211, 'leido', '2025-10-27 23:41:43.574491', 2, 552),
(213, 'leido', '2025-10-27 23:41:33.051772', 2, 553),
(214, 'leido', '2025-10-28 01:40:48.998368', 11, 554),
(215, 'leido', '2025-10-27 23:41:43.574491', 2, 554),
(217, 'leido', '2025-10-27 23:41:45.442004', 28, 555),
(218, 'leido', '2025-10-27 23:41:52.130066', 2, 556),
(219, 'leido', '2025-10-28 00:24:41.756484', 28, 557),
(220, 'leido', '2025-10-27 23:42:46.287661', 2, 558),
(221, 'leido', '2025-10-28 00:24:41.756484', 28, 559),
(222, 'leido', '2025-10-27 23:42:46.287661', 2, 560),
(223, 'leido', '2025-10-28 23:54:43.417653', 4, 561),
(224, 'leido', '2025-10-28 23:54:43.417653', 4, 562),
(225, 'leido', '2025-10-29 02:46:35.412305', 4, 563),
(226, 'leido', '2025-10-29 02:46:35.412305', 4, 564),
(227, 'leido', '2025-10-29 02:57:57.075684', 2, 565),
(228, 'leido', '2025-10-31 01:41:26.676584', 28, 565),
(230, 'leido', '2025-10-29 02:57:57.075684', 2, 566),
(231, 'leido', '2025-10-31 01:41:26.676584', 28, 566),
(233, 'leido', '2025-10-31 00:12:48.109301', 28, 567),
(234, 'leido', '2025-10-31 00:12:48.109301', 28, 568),
(235, 'leido', '2025-10-29 02:57:57.075684', 2, 569),
(236, 'leido', '2025-10-31 01:41:26.676584', 28, 569),
(238, 'leido', '2025-10-31 00:12:48.109301', 28, 570),
(239, 'leido', '2025-10-29 03:31:15.681633', 11, 571),
(242, 'leido', '2025-10-29 03:44:53.009186', 4, 574),
(243, 'leido', '2025-11-04 02:37:17.333863', 2, 575),
(244, 'leido', '2025-10-31 01:41:26.676584', 28, 575),
(246, 'entregado', '2025-10-29 03:44:17.910754', 24, 577),
(248, 'leido', '2025-10-29 03:46:16.415366', 4, 577),
(249, 'leido', '2025-10-29 03:45:07.327652', 2, 577),
(250, 'leido', '2025-10-30 00:38:27.615108', 11, 578),
(251, 'entregado', '2025-10-29 03:46:20.641749', 24, 579),
(253, 'leido', '2025-10-29 04:00:57.638893', 11, 579),
(254, 'entregado', '2025-10-29 03:46:20.641793', 2, 579),
(255, 'leido', '2025-10-30 01:27:35.190687', 4, 582),
(256, 'leido', '2025-11-04 00:09:32.460667', 2, 583),
(257, 'leido', '2025-10-30 01:37:55.866373', 11, 584),
(258, 'leido', '2025-10-30 02:24:20.772283', 4, 585),
(259, 'leido', '2025-10-30 02:43:10.037974', 11, 587),
(260, 'leido', '2025-10-30 02:43:10.037974', 11, 588),
(261, 'leido', '2025-10-30 02:43:10.037974', 11, 589),
(262, 'leido', '2025-10-30 02:46:14.845915', 4, 591),
(263, 'leido', '2025-11-04 00:29:52.316011', 11, 593),
(266, 'leido', '2025-11-04 00:29:48.548578', 11, 601),
(267, 'leido', '2025-11-04 00:29:48.548578', 11, 602),
(269, 'leido', '2025-11-04 00:11:05.688995', 2, 604),
(270, 'leido', '2025-11-04 00:11:05.688995', 2, 605),
(272, 'leido', '2025-11-04 02:24:08.629641', 11, 607),
(273, 'leido', '2025-11-04 02:37:17.333863', 2, 607),
(275, 'leido', '2025-11-04 00:09:20.412667', 11, 610),
(276, 'leido', '2025-11-04 02:24:08.629641', 11, 611),
(277, 'leido', '2025-11-04 02:37:17.333863', 2, 611),
(279, 'leido', '2025-11-04 00:10:27.088517', 28, 643),
(280, 'leido', '2025-11-04 02:31:23.896719', 4, 670),
(282, 'leido', '2025-11-04 02:37:05.664944', 2, 677),
(283, 'leido', '2025-11-04 02:27:27.955366', 24, 678),
(284, 'leido', '2025-11-04 02:38:18.034012', 28, 679),
(285, 'leido', '2025-11-04 02:31:23.896719', 4, 680),
(286, 'leido', '2025-11-04 02:31:23.896719', 4, 734),
(287, 'leido', '2025-11-04 02:37:17.333863', 2, 735),
(288, 'leido', '2025-11-04 02:38:55.964800', 28, 735),
(290, 'leido', '2025-11-04 02:28:04.719413', 11, 738),
(291, 'entregado', '2025-11-04 02:28:12.455618', 24, 739),
(292, 'leido', '2025-11-04 02:31:54.575606', 4, 740),
(293, 'leido', '2025-11-04 02:34:03.946711', 11, 741),
(294, 'leido', '2025-11-04 02:34:03.946711', 11, 742),
(295, 'leido', '2025-11-04 02:34:42.598263', 4, 743),
(296, 'leido', '2025-11-04 02:34:42.598263', 4, 744),
(297, 'leido', '2025-11-04 02:34:03.946711', 11, 745),
(298, 'leido', '2025-11-04 02:34:42.598263', 4, 746),
(299, 'leido', '2025-11-04 02:34:42.598263', 4, 747),
(300, 'leido', '2025-11-04 02:34:03.946711', 11, 748),
(301, 'leido', '2025-11-04 02:34:42.598263', 4, 749),
(302, 'leido', '2025-11-04 02:34:03.946711', 11, 750),
(303, 'leido', '2025-11-04 02:34:42.598263', 4, 751),
(304, 'leido', '2025-11-04 02:34:03.946711', 11, 752),
(305, 'leido', '2025-11-04 02:34:03.946711', 11, 753),
(306, 'leido', '2025-11-04 02:34:42.598263', 4, 754),
(307, 'leido', '2025-11-05 17:43:15.092298', 27, 755),
(308, 'leido', '2025-11-11 01:05:44.110050', 45, 756),
(309, 'entregado', '2025-11-05 17:44:08.556072', 45, 757),
(310, 'entregado', '2025-11-05 17:44:08.556095', 29, 757),
(311, 'leido', '2025-11-18 02:47:27.642590', 2, 757),
(312, 'leido', '2025-11-18 00:05:53.269850', 11, 758),
(313, 'entregado', '2025-11-11 01:05:46.306329', 27, 759),
(314, 'entregado', '2025-11-18 01:27:30.108557', 27, 764),
(315, 'entregado', '2025-11-18 23:42:04.910553', 4, 788),
(316, 'entregado', '2025-11-18 23:52:37.829551', 4, 796),
(317, 'leido', '2025-11-22 03:24:22.148424', 2, 798),
(318, 'entregado', '2025-11-18 23:53:19.590527', 24, 799),
(319, 'leido', '2025-11-19 00:29:42.813114', 28, 800),
(320, 'leido', '2025-11-21 02:29:46.632170', 30, 802),
(321, 'leido', '2025-11-22 03:24:22.148424', 2, 810),
(322, 'entregado', '2025-11-19 00:18:12.129333', 4, 811),
(323, 'entregado', '2025-11-19 00:18:12.134118', 24, 812),
(324, 'leido', '2025-11-19 00:29:42.813114', 28, 813),
(325, 'leido', '2025-11-21 02:29:46.632170', 30, 814),
(326, 'leido', '2025-11-19 00:29:42.813114', 28, 816),
(327, 'leido', '2025-11-22 03:24:22.148424', 2, 818),
(328, 'entregado', '2025-11-19 00:24:19.176814', 4, 819),
(329, 'entregado', '2025-11-19 00:24:19.183371', 24, 820),
(330, 'leido', '2025-11-19 00:29:42.813114', 28, 821),
(331, 'leido', '2025-11-21 02:29:46.632170', 30, 822),
(332, 'leido', '2025-11-22 03:24:22.148424', 2, 825),
(333, 'entregado', '2025-11-19 00:43:19.903890', 4, 826),
(334, 'entregado', '2025-11-19 00:43:19.919910', 24, 827),
(335, 'entregado', '2025-11-19 00:43:19.927352', 28, 828),
(336, 'leido', '2025-11-21 02:29:46.632170', 30, 829),
(337, 'leido', '2025-11-22 03:24:22.148424', 2, 832),
(338, 'entregado', '2025-11-19 00:48:51.244090', 4, 833),
(339, 'entregado', '2025-11-19 00:48:51.249835', 24, 834),
(340, 'entregado', '2025-11-19 00:48:51.263528', 28, 835),
(341, 'leido', '2025-11-21 02:29:46.632170', 30, 836),
(342, 'leido', '2025-11-22 03:24:22.148424', 2, 839),
(343, 'entregado', '2025-11-19 00:53:02.945532', 4, 840),
(344, 'entregado', '2025-11-19 00:53:02.948789', 24, 841),
(345, 'entregado', '2025-11-19 00:53:02.951592', 28, 842),
(346, 'leido', '2025-11-21 02:29:46.632170', 30, 843),
(347, 'leido', '2025-11-21 02:29:46.632170', 30, 845),
(348, 'leido', '2025-11-22 03:24:24.940794', 2, 846),
(349, 'entregado', '2025-11-19 01:39:03.204437', 28, 846),
(350, 'leido', '2025-11-22 03:24:24.940794', 2, 847),
(351, 'entregado', '2025-11-19 01:40:06.369247', 28, 847),
(352, 'leido', '2025-11-22 03:24:22.148424', 2, 849),
(353, 'entregado', '2025-11-21 00:47:18.639598', 4, 850),
(354, 'entregado', '2025-11-21 00:47:18.642718', 24, 851),
(355, 'entregado', '2025-11-21 00:47:18.646282', 28, 852),
(356, 'leido', '2025-11-21 02:29:46.632170', 30, 853),
(357, 'leido', '2025-11-22 03:24:22.148424', 2, 856),
(358, 'entregado', '2025-11-21 01:19:05.354539', 4, 857),
(359, 'entregado', '2025-11-21 01:19:05.367004', 24, 858),
(360, 'entregado', '2025-11-21 01:19:05.376358', 28, 859),
(361, 'leido', '2025-11-21 02:29:46.632170', 30, 860),
(362, 'leido', '2025-11-22 03:24:22.148424', 2, 864),
(363, 'entregado', '2025-11-21 01:53:26.218066', 4, 865),
(364, 'entregado', '2025-11-21 01:53:26.220702', 24, 866),
(365, 'entregado', '2025-11-21 01:53:26.223107', 28, 867),
(366, 'leido', '2025-11-21 02:29:46.632170', 30, 868),
(367, 'leido', '2025-11-22 03:24:22.148424', 2, 871),
(368, 'entregado', '2025-11-21 02:15:00.813062', 4, 872),
(369, 'entregado', '2025-11-21 02:15:00.822370', 24, 873),
(370, 'entregado', '2025-11-21 02:15:00.830398', 28, 874),
(371, 'leido', '2025-11-21 02:29:46.632170', 30, 875),
(372, 'leido', '2025-11-22 01:12:14.792639', 30, 878),
(373, 'leido', '2025-11-22 01:12:14.792639', 30, 879),
(374, 'leido', '2025-11-22 01:12:14.792639', 30, 881),
(375, 'leido', '2025-11-22 01:12:14.792639', 30, 883),
(376, 'leido', '2025-11-22 01:12:14.792639', 30, 884),
(377, 'leido', '2025-11-22 01:49:19.855612', 30, 887),
(378, 'leido', '2025-11-22 01:49:19.855612', 30, 889),
(379, 'leido', '2025-11-22 01:49:19.855612', 30, 890),
(380, 'leido', '2025-11-22 01:49:39.803577', 11, 890),
(381, 'entregado', '2025-11-22 02:03:34.158246', 30, 891),
(382, 'entregado', '2025-11-22 02:03:34.171001', 30, 892),
(383, 'leido', '2025-11-22 02:03:43.365664', 11, 892),
(384, 'entregado', '2025-11-22 02:03:48.609068', 30, 893),
(385, 'entregado', '2025-11-22 02:03:58.455717', 28, 894),
(386, 'entregado', '2025-11-22 02:03:58.468513', 28, 895),
(387, 'leido', '2025-11-22 02:10:05.519168', 11, 895),
(388, 'entregado', '2025-11-22 02:10:39.376597', 28, 896),
(389, 'entregado', '2025-11-22 02:10:39.391064', 28, 897),
(390, 'leido', '2025-11-22 02:13:05.347218', 11, 897),
(391, 'entregado', '2025-11-22 02:13:06.324739', 28, 898),
(392, 'entregado', '2025-11-22 02:13:12.500643', 28, 899),
(393, 'entregado', '2025-11-22 02:13:12.513614', 28, 900),
(394, 'leido', '2025-11-22 02:13:48.929408', 11, 900),
(395, 'entregado', '2025-11-22 02:17:03.352355', 28, 901),
(396, 'entregado', '2025-11-22 02:17:03.363924', 28, 902),
(397, 'leido', '2025-11-22 02:17:09.603561', 11, 902),
(398, 'entregado', '2025-11-22 02:17:14.255250', 28, 903),
(399, 'entregado', '2025-11-22 02:17:14.267918', 28, 904),
(400, 'leido', '2025-11-22 02:20:37.463271', 11, 904),
(401, 'entregado', '2025-11-22 02:20:41.473651', 28, 905),
(402, 'entregado', '2025-11-22 02:20:41.494706', 28, 906),
(403, 'leido', '2025-11-22 02:21:06.510539', 11, 906),
(404, 'entregado', '2025-11-22 02:20:53.337561', 28, 907),
(405, 'entregado', '2025-11-22 02:20:53.352641', 28, 908),
(406, 'leido', '2025-11-22 02:21:06.510539', 11, 908),
(407, 'entregado', '2025-11-22 02:24:38.817935', 28, 909),
(408, 'entregado', '2025-11-22 02:24:38.834576', 28, 910),
(409, 'leido', '2025-11-22 02:24:55.368893', 11, 910),
(410, 'entregado', '2025-11-22 02:24:47.292474', 28, 911),
(411, 'entregado', '2025-11-22 02:24:47.303716', 28, 912),
(412, 'leido', '2025-11-22 02:24:55.368893', 11, 912),
(413, 'entregado', '2025-11-22 02:24:59.692054', 28, 913),
(414, 'entregado', '2025-11-22 02:24:59.709581', 28, 914),
(415, 'leido', '2025-11-22 02:29:17.872016', 11, 914),
(416, 'entregado', '2025-11-22 02:29:22.619886', 28, 915),
(417, 'entregado', '2025-11-22 02:29:22.632177', 28, 916),
(418, 'leido', '2025-11-22 02:29:28.336168', 11, 916),
(419, 'entregado', '2025-11-22 02:29:58.783004', 30, 917),
(420, 'entregado', '2025-11-22 02:30:05.513483', 28, 918),
(421, 'entregado', '2025-11-22 02:30:07.981267', 24, 919),
(422, 'entregado', '2025-11-22 02:30:10.523121', 4, 920),
(423, 'leido', '2025-11-22 03:24:22.148424', 2, 921),
(424, 'leido', '2025-11-22 03:24:24.940794', 2, 922),
(425, 'entregado', '2025-11-22 02:30:22.097408', 28, 922),
(426, 'leido', '2025-11-25 01:28:39.745887', 11, 923),
(427, 'entregado', '2025-11-25 01:28:46.596286', 2, 924);

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

--
-- Volcado de datos para la tabla `evento`
--

INSERT INTO `evento` (`evento_id`, `titulo`, `descripcion`, `fecha_evento`, `creado_en`, `actualizado_en`, `id_usuario`) VALUES
(5, 'Mi cumpleaños', 'en mi casita vengan porfavor:(', '2026-01-10', '2025-10-01 23:55:42.409894', '2025-10-14 01:23:49.861474', 2),
(6, 'mi pump', 'aaa', '2026-09-25', '2025-10-02 00:06:38.742850', '2025-10-02 00:06:38.742865', 11),
(17, 'happy pagiona web', 'jiiji', '2025-10-29', '2025-10-28 03:53:29.635737', '2025-10-28 03:53:29.635753', 4),
(19, 'prrrrueba', 'ola', '2025-10-29', '2025-10-28 23:52:16.830439', '2025-10-28 23:52:16.830454', 4),
(20, 'no es mi cumple', 'no es mi cumple, esto es solo una prueba para mis amigos', '2025-10-29', '2025-10-29 00:33:01.962083', '2025-10-29 00:33:01.962097', 11),
(30, 'coito', NULL, '2025-11-05', '2025-11-04 23:52:01.637061', '2025-11-04 23:52:01.637119', 4),
(31, 'asdasd', NULL, '2025-11-05', '2025-11-04 23:52:09.179374', '2025-11-04 23:52:09.179386', 4),
(32, 'Mi mejor cumpleaños', NULL, '2025-11-06', '2025-11-05 17:51:21.317822', '2025-11-05 17:51:21.317835', 45),
(35, 'Fortnite event!!!!', NULL, '2025-11-12', '2025-11-11 03:31:55.996220', '2025-11-11 03:31:55.996233', 2),
(36, 'NOTIFICACIONEEEES', NULL, '2025-11-16', '2025-11-15 04:10:50.562781', '2025-11-15 04:10:50.562797', 41);

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
(12, '@paili', '2025-10-30 00:49:53.107502', 2),
(13, '@cristiano', '2025-10-30 01:03:03.009986', 27),
(15, '@tia', '2025-10-30 00:57:02.566185', 2),
(32, 'botines', '2025-11-04 00:36:06.536968', 11),
(33, 'botines', '2025-11-04 00:36:15.426003', 11),
(34, 'botines', '2025-11-04 00:36:19.360073', 11),
(35, 'botines', '2025-11-04 00:36:25.271593', 11),
(36, 'botines', '2025-11-04 00:36:27.048238', 11),
(37, 'botines', '2025-11-04 00:36:28.508867', 11),
(38, 'gato', '2025-11-04 00:36:41.244582', 11),
(39, 'gato', '2025-11-04 00:36:43.832833', 11),
(40, 'gato', '2025-11-04 00:36:45.727686', 11),
(41, 'gato', '2025-11-04 00:36:47.544378', 11),
(42, 'gato', '2025-11-04 00:36:51.098410', 11),
(43, 'gato', '2025-11-04 00:38:00.549137', 11),
(44, 'gato', '2025-11-04 00:38:05.675105', 11),
(45, 'gato', '2025-11-04 00:38:08.158371', 11),
(46, 'gato', '2025-11-04 00:38:09.115432', 11),
(47, 'gato', '2025-11-04 00:38:10.126886', 11),
(50, 'lego', '2025-11-04 01:33:49.428224', 2),
(51, 'lego', '2025-11-04 01:57:26.564275', 2),
(52, 'lego', '2025-11-04 01:57:42.418007', 2),
(53, 'pelo', '2025-11-05 03:31:09.056313', 2),
(54, 'pelo', '2025-11-05 03:31:11.464537', 2),
(55, 'pelo', '2025-11-05 03:33:34.035818', 2),
(56, 'comida', '2025-11-05 03:33:50.670570', 2),
(57, 'comida', '2025-11-05 03:34:28.132224', 2),
(58, 'balon', '2025-11-05 03:34:39.126859', 2),
(59, 'balon', '2025-11-05 03:35:02.369244', 2),
(60, 'cri', '2025-11-05 04:10:13.672301', 27),
(61, '@cris', '2025-11-05 04:10:17.656463', 27),
(62, 'sony', '2025-11-11 01:00:31.127245', 2),
(63, 'sony', '2025-11-11 01:16:51.225109', 2),
(64, 'sony', '2025-11-11 01:34:12.671313', 2),
(65, 'sony', '2025-11-11 03:26:03.259604', 2),
(66, 'sony', '2025-11-11 03:31:20.477006', 2),
(67, 'sony', '2025-11-15 04:02:40.435665', 27),
(68, 'polera', '2025-11-15 04:02:48.359975', 27),
(69, 'sony', '2025-11-15 04:04:29.593189', 27),
(70, 'PS5', '2025-11-15 04:15:02.641677', 27),
(71, 'PS5', '2025-11-15 04:15:15.989488', 27),
(72, 'PS5', '2025-11-15 04:15:20.803121', 27),
(73, 'sony', '2025-11-15 04:15:25.382177', 27),
(74, 'sony', '2025-11-17 23:45:39.073434', 2),
(75, 'sony', '2025-11-17 23:50:34.806362', 2),
(76, 'sony', '2025-11-18 00:00:48.674287', 2),
(77, 'sony', '2025-11-18 00:05:34.606742', 2),
(78, 'sony', '2025-11-18 00:08:09.607902', 2),
(79, 'sony', '2025-11-18 00:10:45.379492', 2),
(80, 'sony', '2025-11-18 00:11:40.382029', 2),
(81, 'sony', '2025-11-18 00:11:48.821636', 2),
(82, 'sony', '2025-11-18 00:17:57.180352', 2),
(83, 'sony', '2025-11-18 00:21:33.817033', 2),
(84, 'sony', '2025-11-18 00:25:29.645073', 2),
(85, 'sony', '2025-11-18 00:29:05.663483', 2),
(86, 'sony', '2025-11-18 00:29:08.146922', 2),
(87, 'sony', '2025-11-18 00:29:20.969292', 2),
(88, 'sony', '2025-11-18 00:29:23.669886', 2),
(89, 'sony', '2025-11-18 00:29:53.102630', 2),
(90, 'sony', '2025-11-18 00:29:59.096905', 2),
(91, 'sony', '2025-11-18 00:30:02.838186', 2),
(92, 'sony', '2025-11-18 00:53:12.095032', 2),
(93, 'sony', '2025-11-18 00:53:32.361918', 2),
(94, 'lentes', '2025-11-18 00:53:43.663994', 2),
(95, 'sony', '2025-11-18 00:53:55.202396', 2),
(96, 'sony', '2025-11-18 00:54:01.826663', 2),
(97, 'sony', '2025-11-18 00:56:38.219661', 2),
(98, 'sony', '2025-11-18 00:57:43.950930', 2),
(99, 'lentes', '2025-11-18 00:58:02.129754', 2),
(100, 'sony', '2025-11-18 00:58:21.365335', 2),
(101, 'sony', '2025-11-18 00:58:44.040192', 2),
(102, 'sony', '2025-11-18 00:58:49.143853', 2),
(103, 'sony', '2025-11-18 00:59:27.668648', 2),
(104, 'sony', '2025-11-18 00:59:36.122841', 2),
(105, 'sony', '2025-11-18 00:59:36.274789', 2),
(106, 'sony', '2025-11-18 00:59:36.394853', 2),
(107, 'sony', '2025-11-18 01:29:04.434520', 2),
(108, 'sony', '2025-11-18 01:29:14.468124', 2),
(109, 'sony', '2025-11-18 01:36:41.874758', 2),
(110, 'sony', '2025-11-18 01:40:03.681005', 2),
(111, 'sony', '2025-11-18 02:32:38.624587', 2),
(112, 'sony', '2025-11-18 02:32:41.992717', 2),
(113, 'sony', '2025-11-18 02:42:40.405192', 2),
(114, 'sony', '2025-11-18 02:42:56.561281', 2),
(115, 'sony', '2025-11-18 02:43:17.913060', 2),
(116, 'sony', '2025-11-18 02:43:59.429067', 2),
(117, 'sony', '2025-11-18 02:44:42.409024', 2),
(118, 'sony', '2025-11-18 02:47:35.200002', 2),
(119, 'sony', '2025-11-21 00:35:51.620477', 2),
(120, 'sony', '2025-11-21 00:35:54.139269', 2),
(121, 'sony', '2025-11-21 00:38:39.786357', 2),
(122, 'sony', '2025-11-21 00:38:44.456015', 2),
(123, 'sony', '2025-11-21 00:38:57.897311', 2),
(124, 'sony', '2025-11-21 00:45:58.582729', 2),
(125, 'sony', '2025-11-21 00:46:00.098079', 2),
(126, 'sony', '2025-11-21 00:46:23.118787', 2),
(127, 'sony', '2025-11-21 00:47:31.310630', 2),
(128, 'sony', '2025-11-21 00:47:34.481085', 2),
(129, 'sony', '2025-11-21 00:47:37.375618', 2),
(130, 'sony', '2025-11-21 00:57:19.985011', 2),
(131, 'sony', '2025-11-21 00:57:30.906747', 2),
(132, 'sony', '2025-11-21 00:57:34.913779', 2),
(133, 'sony', '2025-11-21 01:02:49.778908', 2),
(134, 'sony', '2025-11-21 01:02:57.201589', 2),
(135, 'sony', '2025-11-21 01:03:20.951359', 2),
(136, 'sony', '2025-11-21 01:03:22.493630', 2),
(137, 'polera', '2025-11-21 01:08:07.037108', 2),
(138, 'polera', '2025-11-21 01:08:36.714305', 2),
(139, 'polera', '2025-11-21 01:10:52.719725', 2),
(140, 'polera', '2025-11-21 01:11:08.385697', 2),
(141, 'sony', '2025-11-21 01:18:03.534253', 2),
(142, 'teclado', '2025-11-21 01:59:29.382180', 2),
(143, 'sony consola', '2025-11-22 01:21:35.241285', 2),
(144, 'sony consola', '2025-11-22 01:21:50.185709', 2),
(145, 'sony consola', '2025-11-22 01:22:00.718316', 2),
(146, 'sony consola', '2025-11-22 01:22:07.262876', 2),
(147, 'juguete', '2025-11-25 02:16:21.921876', 27),
(148, '@elias', '2025-11-26 00:34:05.229882', 2),
(149, 'test', '2025-11-26 02:37:07.267908', 29),
(150, 'test', '2025-11-26 02:37:12.636650', 29);

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

--
-- Volcado de datos para la tabla `item_en_wishlist`
--

INSERT INTO `item_en_wishlist` (`id_item`, `cantidad`, `prioridad`, `notas`, `fecha_agregado`, `fecha_comprado`, `id_producto`, `id_wishlist`, `id_producto_externo`) VALUES
(83, 1, 'media', NULL, '2025-10-24 00:29:17.010059', NULL, 137, 3, NULL),
(84, 1, 'media', NULL, '2025-10-24 00:29:17.626356', NULL, 136, 3, NULL),
(85, 1, 'media', NULL, '2025-10-24 00:40:06.981733', NULL, 11, 4, NULL),
(86, 1, 'media', NULL, '2025-10-24 00:40:09.918972', NULL, 13, 4, NULL),
(87, 1, 'media', NULL, '2025-10-24 00:40:10.366758', '2025-11-11 01:43:37.162134', 14, 4, NULL),
(89, 1, 'media', NULL, '2025-10-24 00:41:03.747336', NULL, 135, 3, NULL),
(90, 1, 'media', NULL, '2025-10-24 00:41:04.979967', '2025-11-04 02:37:29.974855', 134, 3, NULL),
(91, 1, 'media', NULL, '2025-10-24 00:41:47.336713', NULL, 15, 3, NULL),
(114, 1, 'media', NULL, '2025-10-24 01:05:42.418088', NULL, 5, 9, NULL),
(117, 1, 'media', NULL, '2025-10-24 02:53:50.596264', NULL, 16, 3, NULL),
(134, 1, 'media', NULL, '2025-10-28 01:32:43.495643', '2025-10-30 23:51:52.531059', 136, 7, NULL),
(135, 1, 'media', NULL, '2025-10-28 01:32:44.628736', NULL, 137, 7, NULL),
(152, 1, 'media', NULL, '2025-10-28 02:19:08.415410', NULL, 116, 1, NULL),
(153, 1, 'media', NULL, '2025-10-28 02:19:11.218033', NULL, 117, 1, NULL),
(154, 1, 'media', NULL, '2025-10-28 02:51:28.169313', NULL, 13, 10, NULL),
(155, 1, 'media', NULL, '2025-10-28 02:51:31.423700', NULL, 11, 10, NULL),
(156, 1, 'media', NULL, '2025-10-28 02:51:51.549335', NULL, 120, 10, NULL),
(157, 1, 'media', NULL, '2025-10-28 02:51:53.410867', NULL, 118, 10, NULL),
(158, 1, 'media', NULL, '2025-10-28 02:52:00.031915', '2025-10-31 03:20:53.286132', 107, 10, NULL),
(177, 1, 'media', NULL, '2025-10-30 23:45:01.094417', NULL, 13, 13, NULL),
(178, 1, 'media', NULL, '2025-10-30 23:45:03.078092', '2025-10-30 23:45:12.252534', 14, 13, NULL),
(179, 1, 'media', NULL, '2025-10-30 23:45:04.741969', NULL, 12, 13, NULL),
(180, 1, 'media', NULL, '2025-10-30 23:46:54.347930', NULL, 111, 2, NULL),
(181, 1, 'media', NULL, '2025-10-30 23:46:56.161912', '2025-10-30 23:47:35.271553', 107, 2, NULL),
(182, 1, 'media', NULL, '2025-10-30 23:48:36.824855', NULL, 103, 2, NULL),
(183, 1, 'media', NULL, '2025-10-30 23:48:37.505590', '2025-10-30 23:56:20.979320', 16, 2, NULL),
(184, 1, 'media', NULL, '2025-10-31 00:15:29.641989', '2025-11-04 01:37:14.137009', 10, 2, NULL),
(185, 1, 'media', NULL, '2025-10-31 00:15:31.245534', '2025-11-04 01:37:03.041886', 11, 2, NULL),
(202, 1, 'media', NULL, '2025-11-05 17:45:57.784683', '2025-11-05 17:46:26.521904', 107, 18, NULL),
(203, 1, 'media', NULL, '2025-11-05 18:03:33.363183', '2025-11-05 18:07:44.537155', 110, 18, NULL),
(269, 1, 'media', NULL, '2025-11-19 02:41:01.112413', NULL, 14, 2, NULL),
(277, 1, 'media', NULL, '2025-11-21 00:20:28.081050', NULL, 2, 3, NULL),
(284, 1, 'media', NULL, '2025-11-22 02:50:23.619046', NULL, 14, 22, NULL),
(285, 1, 'media', NULL, '2025-11-22 02:50:25.604998', NULL, 13, 22, NULL),
(286, 1, 'media', NULL, '2025-11-22 02:55:54.796573', NULL, 16, 22, NULL),
(288, 1, 'media', NULL, '2025-11-25 01:46:11.582591', NULL, 117, 9, NULL),
(289, 1, 'media', NULL, '2025-11-25 01:46:42.927042', NULL, 116, 9, NULL),
(291, 1, 'media', NULL, '2025-11-25 01:50:38.678393', NULL, 118, 9, NULL),
(293, 1, 'media', NULL, '2025-11-25 02:18:58.572092', NULL, 296, 9, NULL),
(295, 1, 'media', NULL, '2025-11-25 03:22:23.436294', NULL, 297, 9, NULL);

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

--
-- Volcado de datos para la tabla `like`
--

INSERT INTO `like` (`id_like`, `tipo_like`, `fecha_like`, `id_comentario`, `id_post`, `id_usuario`) VALUES
(4, 'post', '2025-10-01 03:28:42.649022', NULL, 4, 24),
(5, 'post', '2025-10-01 03:28:43.955257', NULL, 3, 24),
(6, 'post', '2025-10-01 03:28:45.082800', NULL, 2, 24),
(8, 'post', '2025-10-01 03:28:52.424284', NULL, 5, 11),
(17, 'post', '2025-10-01 03:31:28.462842', NULL, 5, 2),
(21, 'post', '2025-10-01 04:38:05.114494', NULL, 4, 11),
(22, 'post', '2025-10-01 04:38:07.264346', NULL, 3, 11),
(27, 'post', '2025-10-02 03:06:45.133117', NULL, 8, 24),
(28, 'post', '2025-10-02 03:13:24.508253', NULL, 9, 24),
(30, 'post', '2025-10-02 03:17:31.961593', NULL, 9, 2),
(32, 'post', '2025-10-02 04:01:20.810184', NULL, 10, 11),
(35, 'post', '2025-10-14 01:46:51.329568', NULL, 8, 11),
(40, 'post', '2025-10-14 02:08:20.518551', NULL, 15, 24),
(41, 'post', '2025-10-14 02:08:21.776229', NULL, 15, 24),
(42, 'post', '2025-10-14 02:08:22.667731', NULL, 15, 24),
(43, 'post', '2025-10-14 02:08:27.307427', NULL, 15, 24),
(44, 'post', '2025-10-14 02:08:38.530287', NULL, 14, 11),
(76, 'post', '2025-10-14 02:09:14.403013', NULL, 15, 11),
(90, 'post', '2025-10-14 02:09:27.585777', NULL, 11, 24),
(92, 'post', '2025-10-14 02:09:28.737126', NULL, 10, 24),
(101, 'post', '2025-10-14 02:09:32.079053', NULL, 15, 2),
(102, 'post', '2025-10-14 03:12:40.041938', NULL, 16, 2),
(104, 'post', '2025-10-15 01:30:47.190803', NULL, 15, 4),
(105, 'post', '2025-10-15 01:41:58.853479', NULL, 17, 11),
(106, 'post', '2025-10-15 01:44:41.350802', NULL, 17, 4),
(107, 'post', '2025-10-16 01:59:44.433039', NULL, 21, 2),
(108, 'post', '2025-10-16 02:00:18.369399', NULL, 23, 24),
(109, 'post', '2025-10-16 02:00:20.907966', NULL, 22, 4),
(110, 'post', '2025-10-16 02:00:22.815854', NULL, 22, 2),
(111, 'post', '2025-10-16 02:00:25.569253', NULL, 23, 2),
(113, 'post', '2025-10-16 02:00:41.912159', NULL, 23, 4),
(130, 'post', '2025-10-21 01:11:13.368402', NULL, 28, 24),
(133, 'post', '2025-10-21 01:21:32.825790', NULL, 28, 11),
(139, 'post', '2025-10-24 02:59:33.844873', NULL, 32, 2),
(140, 'post', '2025-10-25 00:17:12.271271', NULL, 33, 11),
(141, 'post', '2025-10-25 00:17:13.171675', NULL, 32, 11),
(148, 'post', '2025-10-25 01:20:35.855042', NULL, 28, 2),
(152, 'post', '2025-10-29 02:23:13.075275', NULL, 38, 30),
(153, 'post', '2025-10-29 02:41:45.851148', NULL, 38, 4),
(157, 'post', '2025-10-30 03:04:56.339445', NULL, 45, 2),
(158, 'post', '2025-10-30 03:05:21.337821', NULL, 44, 4),
(159, 'post', '2025-10-30 03:06:22.331899', NULL, 46, 30),
(160, 'post', '2025-10-30 03:06:23.554156', NULL, 45, 30),
(162, 'post', '2025-10-30 23:50:46.683432', NULL, 55, 24),
(167, 'post', '2025-11-04 02:37:05.140832', NULL, 66, 11),
(168, 'post', '2025-11-05 00:04:53.530387', NULL, 66, 2),
(172, 'post', '2025-11-05 04:01:56.340569', NULL, 81, 2),
(173, 'post', '2025-11-05 17:49:15.492636', NULL, 91, 45),
(177, 'post', '2025-11-11 01:13:52.505192', NULL, 66, 24),
(179, 'post', '2025-11-18 00:07:55.036683', NULL, 93, 24),
(180, 'post', '2025-11-19 02:31:30.513730', NULL, 98, 24),
(181, 'post', '2025-11-19 02:31:45.934670', NULL, 46, 24);

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

--
-- Volcado de datos para la tabla `mensaje`
--

INSERT INTO `mensaje` (`mensaje_id`, `tipo`, `contenido`, `metadatos`, `creado_en`, `editado_en`, `eliminado`, `conversacion_id`, `id_usuario`) VALUES
(2, 'texto', 'hola elias !', NULL, '2025-10-01 04:30:14.799309', NULL, 0, 1, 11),
(4, 'texto', 'hajajajaja', NULL, '2025-10-01 04:30:23.579199', NULL, 0, 1, 11),
(5, 'texto', 'esto esta como las weas!', NULL, '2025-10-01 04:30:30.814962', NULL, 0, 1, 11),
(10, 'texto', 'hola numero 23', NULL, '2025-10-01 04:31:57.489094', NULL, 0, 1, 11),
(11, 'texto', 'pero quieres seguir habladno conmigo?', NULL, '2025-10-01 04:36:43.013221', NULL, 0, 1, 11),
(13, 'texto', 'asd', NULL, '2025-10-01 04:37:09.769183', NULL, 0, 1, 11),
(14, 'texto', 'te amo', NULL, '2025-10-01 04:37:11.642214', NULL, 0, 1, 11),
(15, 'texto', 'eso nunca lo dije', NULL, '2025-10-01 04:37:18.047323', NULL, 0, 1, 11),
(16, 'texto', 'jajaja', NULL, '2025-10-01 04:37:19.411099', NULL, 0, 1, 11),
(17, 'texto', 'quien res', NULL, '2025-10-01 04:37:20.752033', NULL, 0, 1, 11),
(18, 'texto', 'hola amigo', NULL, '2025-10-01 18:31:28.365884', NULL, 0, 1, 11),
(19, 'texto', 'me vas a regalar un funko pop o no', NULL, '2025-10-01 18:31:35.127418', NULL, 0, 1, 11),
(20, 'texto', 'holaaa!!!', NULL, '2025-10-01 18:51:21.170694', NULL, 0, 1, 11),
(22, 'texto', 'hola elias', NULL, '2025-10-01 18:51:37.827906', NULL, 0, 1, 11),
(23, 'texto', 'hola', NULL, '2025-10-01 23:54:45.886475', NULL, 0, 2, 2),
(24, 'texto', 'hola??', NULL, '2025-10-02 00:54:18.283798', NULL, 0, 2, 11),
(25, 'texto', 'hola?', NULL, '2025-10-02 00:54:39.816160', NULL, 0, 2, 2),
(26, 'texto', 'como ewstas hermano', NULL, '2025-10-02 00:54:42.386864', NULL, 0, 2, 11),
(27, 'texto', 'tanto tiempo', NULL, '2025-10-02 00:54:44.171494', NULL, 0, 2, 11),
(28, 'texto', 'como has estado', NULL, '2025-10-02 00:54:49.816181', NULL, 0, 2, 11),
(29, 'texto', 'que cojones....', NULL, '2025-10-02 00:54:52.032645', NULL, 0, 2, 2),
(30, 'texto', 'intento mejorar', NULL, '2025-10-02 00:54:52.104272', NULL, 0, 2, 11),
(31, 'texto', 'hola !!', NULL, '2025-10-02 01:20:00.364416', NULL, 0, 2, 11),
(32, 'texto', 'te perderas el regalo', NULL, '2025-10-02 01:20:14.887515', NULL, 0, 2, 11),
(33, 'texto', 'en 3', NULL, '2025-10-02 01:20:18.227752', NULL, 0, 2, 11),
(34, 'texto', '2', NULL, '2025-10-02 01:20:19.196881', NULL, 0, 2, 11),
(35, 'texto', '1', NULL, '2025-10-02 01:20:20.297157', NULL, 0, 2, 11),
(36, 'texto', 'hola', NULL, '2025-10-02 01:20:51.750133', NULL, 0, 2, 2),
(37, 'texto', 'te lo perdiste jajaja', NULL, '2025-10-02 01:20:52.952249', NULL, 0, 2, 11),
(38, 'texto', 'maldicion...', NULL, '2025-10-02 01:20:58.498871', NULL, 0, 2, 11),
(39, 'texto', 'va explotar el nav bar', NULL, '2025-10-02 01:21:07.153710', NULL, 0, 2, 2),
(40, 'texto', 'hola pequeña perrita', NULL, '2025-10-02 01:31:19.168188', NULL, 0, 4, 24),
(41, 'texto', 'te gusta que te hable asi', NULL, '2025-10-02 01:31:26.377173', NULL, 0, 4, 24),
(42, 'texto', 'no', NULL, '2025-10-02 01:31:49.350102', NULL, 0, 4, 11),
(43, 'texto', 'hablame mas sucio', NULL, '2025-10-02 01:31:53.718067', NULL, 0, 4, 11),
(44, 'texto', 'asi viejo', NULL, '2025-10-02 01:32:16.313777', NULL, 0, 4, 11),
(45, 'texto', 'hola pequeña perrita sucia', NULL, '2025-10-02 01:32:51.432838', NULL, 0, 4, 24),
(46, 'texto', 'te gusta que te hable asi', NULL, '2025-10-02 01:32:58.811954', NULL, 0, 4, 24),
(47, 'texto', 'sorra', NULL, '2025-10-02 01:33:11.463413', NULL, 0, 4, 24),
(48, 'texto', 'no me gusta wn', NULL, '2025-10-02 01:33:15.859218', NULL, 0, 4, 11),
(49, 'texto', 'hola sorrilla', NULL, '2025-10-02 01:36:36.071617', NULL, 0, 5, 11),
(50, 'texto', 'cual es el', NULL, '2025-10-02 01:36:59.089709', NULL, 0, 5, 4),
(51, 'texto', 'holaaa, com estasd', NULL, '2025-10-02 01:56:41.542563', NULL, 0, 1, 11),
(52, 'texto', 'hola amaya', NULL, '2025-10-02 01:56:53.358356', NULL, 0, 1, 11),
(53, 'texto', 'como estas amaya', NULL, '2025-10-02 01:56:59.250801', NULL, 0, 1, 11),
(55, 'texto', 'como estas amaya', NULL, '2025-10-02 01:57:05.567973', NULL, 0, 1, 11),
(56, 'texto', 'hola amaya como estas', NULL, '2025-10-02 01:57:09.688937', NULL, 0, 1, 11),
(57, 'texto', 'intento mejorar', NULL, '2025-10-02 01:57:14.970608', NULL, 0, 1, 11),
(60, 'texto', 'aaaaaaaaaaaaaaaaaaaaahola', NULL, '2025-10-02 02:09:04.067805', NULL, 0, 1, 11),
(61, 'texto', 'clar', NULL, '2025-10-02 02:09:10.015319', NULL, 0, 1, 11),
(62, 'texto', 'hola matias....', NULL, '2025-10-02 02:57:06.386666', NULL, 0, 2, 11),
(63, 'texto', 'quiero decirte que vi tu evento importante y', NULL, '2025-10-02 02:57:13.641848', NULL, 0, 2, 11),
(64, 'texto', 'acepto tu invitacion...', NULL, '2025-10-02 02:57:18.160701', NULL, 0, 2, 11),
(68, 'texto', 'holi ricky martin', NULL, '2025-10-02 03:15:58.624217', NULL, 0, 7, 2),
(70, 'texto', 'hola matias que comiste hoy??', NULL, '2025-10-02 03:16:39.077043', NULL, 0, 3, 2),
(71, 'texto', 'hola', NULL, '2025-10-02 03:19:17.166982', NULL, 0, 2, 11),
(72, 'texto', 'ajajajajaj', NULL, '2025-10-02 03:22:11.605380', NULL, 0, 2, 11),
(73, 'texto', 'ajajajajaj', NULL, '2025-10-02 03:22:12.984190', NULL, 0, 2, 11),
(74, 'texto', 'que', NULL, '2025-10-02 03:22:16.027724', NULL, 0, 2, 11),
(75, 'texto', 'ue', NULL, '2025-10-02 03:22:20.027713', NULL, 0, 2, 11),
(76, 'texto', 'que', NULL, '2025-10-02 03:22:22.216740', NULL, 0, 2, 11),
(77, 'texto', 'hola', NULL, '2025-10-02 03:22:38.785201', NULL, 0, 2, 11),
(78, 'texto', 'hola matias', NULL, '2025-10-02 03:24:56.476218', NULL, 0, 2, 2),
(82, 'texto', 'holaaa', NULL, '2025-10-02 03:36:09.242224', NULL, 0, 1, 11),
(83, 'texto', 'como tetas', NULL, '2025-10-02 03:36:11.111447', NULL, 0, 1, 11),
(86, 'texto', 'hola jvier', NULL, '2025-10-02 03:36:15.222118', NULL, 0, 2, 2),
(88, 'texto', 'como texas', NULL, '2025-10-02 03:36:32.045542', NULL, 0, 1, 11),
(89, 'texto', 'hola amor tanto tiemp', NULL, '2025-10-02 05:47:13.155824', NULL, 0, 1, 11),
(90, 'texto', 'elias te amo', NULL, '2025-10-02 06:57:03.927338', NULL, 0, 1, 11),
(91, 'texto', 'contestame porfa', NULL, '2025-10-02 06:57:07.519582', NULL, 0, 1, 11),
(96, 'texto', 'perrita linda', NULL, '2025-10-02 06:57:43.825103', NULL, 0, 1, 11),
(98, 'texto', 'viejo queda poco para ese evento', NULL, '2025-10-14 01:14:54.685917', NULL, 0, 2, 11),
(99, 'texto', 'sisi iras?', NULL, '2025-10-14 01:15:27.871118', NULL, 0, 2, 2),
(100, 'texto', 'considerame el primero en llegar.', NULL, '2025-10-14 01:18:02.907967', NULL, 0, 2, 11),
(101, 'texto', 'cada vez falta menos...', NULL, '2025-10-14 23:44:46.736078', NULL, 0, 2, 11),
(102, 'texto', '¿', NULL, '2025-10-15 01:10:38.806839', NULL, 0, 5, 4),
(104, 'texto', 'y que tanto', NULL, '2025-10-15 01:12:26.661485', NULL, 0, 5, 11),
(105, 'texto', 'noooo', NULL, '2025-10-15 01:12:34.664991', NULL, 0, 5, 4),
(108, 'texto', 'penaldo🥶🥶🥶🥶🥶', NULL, '2025-10-15 01:28:06.038721', NULL, 0, 10, 4),
(109, 'texto', '🥶', NULL, '2025-10-15 01:28:13.178812', NULL, 0, 10, 4),
(110, 'texto', '🥶', NULL, '2025-10-15 01:28:14.100904', NULL, 0, 10, 4),
(111, 'texto', '🥶', NULL, '2025-10-15 01:28:14.477533', NULL, 0, 10, 4),
(112, 'texto', '🥶', NULL, '2025-10-15 01:28:15.166421', NULL, 0, 10, 4),
(113, 'texto', 'como estas', NULL, '2025-10-15 01:31:52.728594', NULL, 0, 2, 11),
(114, 'texto', 'bien gracias', NULL, '2025-10-15 01:32:07.848483', NULL, 0, 2, 2),
(115, 'texto', 'multimillonario actualmente', NULL, '2025-10-15 01:32:14.211283', NULL, 0, 2, 2),
(116, 'texto', 'yo tengo una pyme con frutos secos', NULL, '2025-10-15 01:32:36.653987', NULL, 0, 2, 11),
(117, 'texto', 'no se si te interesa', NULL, '2025-10-15 01:32:40.393226', NULL, 0, 2, 11),
(118, 'texto', 'que es una \"pyme\"', NULL, '2025-10-15 01:32:45.872729', NULL, 0, 2, 2),
(120, 'texto', 'callate wn', NULL, '2025-10-15 01:33:01.254506', NULL, 0, 1, 11),
(121, 'texto', 'espera te lo traduzco al portugues', NULL, '2025-10-15 01:33:18.411573', NULL, 0, 2, 11),
(122, 'texto', 'PME (Pequena e Média Empresa)', NULL, '2025-10-15 01:33:32.731678', NULL, 0, 2, 11),
(123, 'texto', 'Então eu sou o mega profissional PME hahaha', NULL, '2025-10-15 01:34:39.018924', NULL, 0, 2, 2),
(124, 'texto', 'siuuuuu', NULL, '2025-10-15 01:34:56.135401', NULL, 0, 2, 2),
(125, 'texto', 'yo hago los frutos secos con la turbina de atras', NULL, '2025-10-15 01:35:11.443284', NULL, 0, 2, 11),
(126, 'texto', 'siuuuu', NULL, '2025-10-15 01:35:18.245668', NULL, 0, 2, 11),
(127, 'texto', 'yo hago goles y me pagan, puedo hacer uno en la turbina y te haras multillonaria!!!', NULL, '2025-10-15 01:35:59.964972', NULL, 0, 2, 2),
(128, 'texto', 'meu deus !!!1', NULL, '2025-10-15 01:36:13.664628', NULL, 0, 2, 11),
(129, 'texto', 'Às vezes esqueço que falo português', NULL, '2025-10-15 01:36:34.040590', NULL, 0, 2, 2),
(130, 'texto', 'los dosh😈😈', NULL, '2025-10-15 01:37:14.223822', NULL, 0, 2, 11),
(131, 'texto', 'que', NULL, '2025-10-15 02:19:34.884318', NULL, 0, 5, 11),
(132, 'texto', 'a', NULL, '2025-10-15 02:19:35.844079', NULL, 0, 5, 11),
(133, 'texto', 'cristiano ayudame', NULL, '2025-10-15 03:28:09.756226', NULL, 0, 2, 11),
(134, 'texto', 'sdfa}dss', NULL, '2025-10-15 04:19:55.475513', NULL, 0, 2, 11),
(135, 'texto', 'bien', NULL, '2025-10-15 04:29:48.816235', NULL, 0, 2, 11),
(136, 'texto', 'hola elias', NULL, '2025-10-15 04:31:23.561156', NULL, 0, 1, 11),
(138, 'texto', 'como estás¡', NULL, '2025-10-15 04:31:38.634402', NULL, 0, 1, 11),
(141, 'texto', 'estoy un poco enojado y tu', NULL, '2025-10-15 04:31:48.251473', NULL, 0, 1, 11),
(143, 'texto', 'nadie me regala la ps5 que quiero 🙄', NULL, '2025-10-15 04:32:04.382873', NULL, 0, 1, 11),
(145, 'texto', 'esta en mi wishlist', NULL, '2025-10-15 04:32:11.894161', NULL, 0, 1, 11),
(146, 'texto', 'wink}', NULL, '2025-10-15 04:32:13.086113', NULL, 0, 1, 11),
(148, 'texto', 'es que se me cansa la turbina', NULL, '2025-10-15 04:32:25.217890', NULL, 0, 1, 11),
(149, 'texto', 'no me da para tanto fruto seco', NULL, '2025-10-15 04:32:31.577722', NULL, 0, 1, 11),
(151, 'texto', 'hola cristiano como estás siuu', NULL, '2025-10-15 22:40:22.063166', NULL, 0, 2, 11),
(152, 'texto', 'hola javier, te interesa participar en un concurso de frutos secos?', NULL, '2025-10-15 23:23:49.645499', NULL, 0, 9, 11),
(153, 'texto', 'hola, por aqui pasan cp?', NULL, '2025-10-16 00:26:03.185363', NULL, 0, 4, 24),
(154, 'texto', '/ban @matysepsi', NULL, '2025-10-16 00:26:53.480530', NULL, 0, 4, 11),
(155, 'texto', 'hhuidhidhihuhfubudbusd dhdbodsbdbf sdnsdbfhsdbufsdu sjdfbsvbinisudbsobduysd sbdhbsdbsvskdhsbvhsdnuvybsd', NULL, '2025-10-16 00:35:58.662512', NULL, 0, 4, 24),
(156, 'texto', 'cojones e cago en dios', NULL, '2025-10-16 00:40:51.421221', NULL, 0, 4, 24),
(157, 'texto', 'hola como estas ronaldo, aun no me respondes..........', NULL, '2025-10-16 00:52:50.231126', NULL, 0, 2, 11),
(158, 'texto', 'hola que tal como estas como te va el dia de hoy respecto al suceso de ayer, no fui yo el responsable de los mensajes perdon las molestias.', NULL, '2025-10-16 00:53:19.351034', NULL, 0, 2, 2),
(159, 'texto', 'siuuuu', NULL, '2025-10-16 00:53:21.653646', NULL, 0, 2, 2),
(160, 'texto', '💔', NULL, '2025-10-16 00:53:31.379198', NULL, 0, 2, 11),
(161, 'texto', 'soy fan de cr7', NULL, '2025-10-16 00:53:44.724055', NULL, 0, 5, 11),
(162, 'texto', 'mil disculpas', NULL, '2025-10-16 00:55:14.398223', NULL, 0, 2, 2),
(163, 'texto', 'hola que tal como estas como te va tio que tal como va todo me encanta todo lo que estas haciendo podemos negociar nuevamente', NULL, '2025-10-16 00:57:20.802062', NULL, 0, 2, 2),
(164, 'texto', 'ese penaldo 😂😂', NULL, '2025-10-16 00:58:05.089419', NULL, 0, 5, 4),
(165, 'texto', 'se parte de #TurbinaLovers🔫', NULL, '2025-10-16 01:09:47.159758', NULL, 0, 2, 11),
(166, 'texto', 'Dejemos las cosas claras, yo soy un multimillonario(actualmente) y tu solo una... pyme? algo asi era tu abreviacion estupida de vida pobre', NULL, '2025-10-16 01:10:47.533834', NULL, 0, 2, 2),
(167, 'texto', 'te ha molestado la pregunta?', NULL, '2025-10-16 01:11:19.971436', NULL, 0, 2, 11),
(168, 'texto', 'lo has dicho un poco serio', NULL, '2025-10-16 01:11:25.285365', NULL, 0, 2, 11),
(169, 'texto', 'repitamosla entonshesh', NULL, '2025-10-16 01:11:50.983285', NULL, 0, 2, 2),
(170, 'texto', 'se parte de #TurbinaLovers🔫', NULL, '2025-10-16 01:12:03.918651', NULL, 0, 2, 11),
(171, 'texto', 'eres una mierda y yo multimillonario(actualmente), los dosh', NULL, '2025-10-16 01:12:29.339755', NULL, 0, 2, 2),
(172, 'texto', 'los dosh', NULL, '2025-10-16 01:12:53.198601', NULL, 0, 2, 11),
(174, 'texto', 'lllllllllllll', NULL, '2025-10-16 01:57:41.839108', NULL, 0, 5, 4),
(175, 'texto', 'tonto', NULL, '2025-10-16 01:57:45.146846', NULL, 0, 5, 4),
(176, 'texto', 'jiji', NULL, '2025-10-16 01:57:48.925470', NULL, 0, 5, 4),
(177, 'texto', 'holi jij', NULL, '2025-10-16 01:58:16.786839', NULL, 0, 5, 4),
(179, 'texto', ':0', NULL, '2025-10-16 01:58:34.192293', NULL, 0, 5, 4),
(180, 'texto', 'oaoaoaoa', NULL, '2025-10-16 01:58:44.863965', NULL, 0, 5, 4),
(182, 'texto', 'no gracias perra', NULL, '2025-10-16 02:06:23.590392', NULL, 0, 9, 28),
(183, 'texto', 'y porque me deci perra bastardo culiao', NULL, '2025-10-16 02:06:47.540979', NULL, 0, 9, 11),
(184, 'texto', 'cuidao te pille en la calla chancha culia buena para vender frutos secos', NULL, '2025-10-16 02:07:18.084562', NULL, 0, 9, 28),
(185, 'texto', 'vendo alfajores tambien amigo, ubicate', NULL, '2025-10-16 02:07:29.943366', NULL, 0, 9, 11),
(186, 'texto', 'seguro te pregunte esa wea vieja culia', NULL, '2025-10-16 02:12:42.127981', NULL, 0, 9, 28),
(187, 'texto', 'me teni entero chato', NULL, '2025-10-16 02:12:55.025760', NULL, 0, 9, 28),
(188, 'texto', 'asdasdasdasdasdsdasd', NULL, '2025-10-16 02:13:14.745261', NULL, 0, 5, 4),
(189, 'texto', 'hola como estas', NULL, '2025-10-16 02:13:16.856478', NULL, 0, 2, 2),
(190, 'texto', 'hola como estas', NULL, '2025-10-16 02:41:41.265954', NULL, 0, 2, 11),
(191, 'imagen', '', '{\"archivo_url\": \"/media/chat/8d33595efb8848e88cafa36a6bca7c86.png\"}', '2025-10-16 03:21:44.475163', NULL, 0, 2, 11),
(192, 'imagen', '', '{\"archivo_url\": \"/media/chat/4cfb6864b5544fbfa13145999a64d44f.jpg\"}', '2025-10-16 03:22:05.688594', NULL, 0, 2, 11),
(193, 'imagen', '', '{\"archivo_url\": \"/media/chat/fcd089544c3848c29e9d4045143f7ba6.png\"}', '2025-10-16 03:25:35.777086', NULL, 0, 2, 11),
(194, 'imagen', '', '{\"archivo_url\": \"/media/chat/3fd97d454ad14570a4887a57516bad92.gif\"}', '2025-10-16 03:28:28.199289', NULL, 0, 2, 11),
(195, 'imagen', '', '{\"archivo_url\": \"/media/chat/01b9845e70e349f0a4ca8f1537085ea5.gif\"}', '2025-10-16 03:34:25.090129', NULL, 0, 5, 11),
(196, 'imagen', '', '{\"archivo_url\": \"/media/chat/3920af8f692c4ce58f2147d3c9a77a39.webp\"}', '2025-10-16 03:34:51.372970', NULL, 0, 1, 11),
(197, 'imagen', '', '{\"archivo_url\": \"/media/chat/958dd7c0cb95482bb20f803fe1e07681.png\"}', '2025-10-16 23:05:46.387776', NULL, 0, 2, 2),
(198, 'texto', 'mi empresa aparte del futbol', NULL, '2025-10-16 23:05:56.871124', NULL, 0, 2, 2),
(199, 'texto', 'meu deus', NULL, '2025-10-16 23:06:05.319044', NULL, 0, 2, 11),
(200, 'texto', 'lixo', NULL, '2025-10-16 23:06:12.359249', NULL, 0, 2, 11),
(201, 'texto', 'hola', NULL, '2025-10-16 23:23:13.167247', NULL, 0, 5, 11),
(205, 'texto', 'eres super tonto jajaaj', NULL, '2025-10-17 01:12:57.843975', NULL, 0, 1, 11),
(206, 'texto', 'ni un brillo tu pagina culia, mandamela empelota jajaaja', NULL, '2025-10-17 01:13:21.862554', NULL, 0, 1, 11),
(207, 'texto', 'quien dijo eso', NULL, '2025-10-17 01:13:25.574627', NULL, 0, 1, 11),
(208, 'imagen', '', '{\"archivo_url\": \"/media/chat/1ac9c1d1d6a84e8d979176c6c0f2fcce.png\"}', '2025-10-18 03:35:02.226754', NULL, 0, 26, 28),
(209, 'texto', 'hola', NULL, '2025-10-18 03:46:54.390223', NULL, 0, 1, 11),
(210, 'texto', 'QUE', NULL, '2025-10-18 04:53:54.626643', NULL, 0, 1, 11),
(221, 'texto', '?', NULL, '2025-10-18 05:01:10.121026', NULL, 0, 1, 11),
(226, 'texto', 'hola elias', NULL, '2025-10-18 05:25:16.288411', NULL, 0, 1, 11),
(227, 'texto', 'porque no me hablas', NULL, '2025-10-18 05:25:20.199360', NULL, 0, 1, 11),
(251, 'texto', 'como elimino a alguien de amigos', NULL, '2025-10-20 23:05:46.594107', NULL, 0, 1, 11),
(252, 'texto', 'me refeiro a ti', NULL, '2025-10-20 23:06:14.661908', NULL, 0, 1, 11),
(253, 'imagen', '', '{\"archivo_url\": \"/media/chat/dbb406a07eed4d0cb31a4ec69ba785df.png\"}', '2025-10-20 23:07:12.214129', NULL, 0, 1, 11),
(255, 'texto', 'wea mala !!', NULL, '2025-10-20 23:07:32.188193', NULL, 0, 1, 11),
(261, 'texto', 'hola', NULL, '2025-10-20 23:26:07.563839', NULL, 0, 2, 2),
(262, 'texto', 'hola', NULL, '2025-10-20 23:26:09.789377', NULL, 0, 2, 2),
(263, 'texto', 'jola', NULL, '2025-10-20 23:26:12.027492', NULL, 0, 2, 2),
(264, 'texto', 'hola', NULL, '2025-10-20 23:26:26.261360', NULL, 0, 2, 2),
(265, 'imagen', '', '{\"archivo_url\": \"/media/chat/07fbf11b56a84d8ead55ffec61cfbe90.png\"}', '2025-10-20 23:26:40.163440', NULL, 0, 2, 11),
(266, 'texto', 'entraste en la matrix', NULL, '2025-10-20 23:26:45.605810', NULL, 0, 2, 11),
(287, 'texto', 'matrix', NULL, '2025-10-20 23:44:54.737143', NULL, 0, 2, 11),
(289, 'texto', 'que', NULL, '2025-10-20 23:49:03.635487', NULL, 0, 2, 11),
(293, 'texto', 'que', NULL, '2025-10-20 23:51:42.583630', NULL, 0, 2, 11),
(317, 'texto', 'a', NULL, '2025-10-21 00:46:36.569527', NULL, 0, 2, 11),
(318, 'texto', 'asda', NULL, '2025-10-21 00:46:41.235975', NULL, 0, 2, 11),
(322, 'texto', 'a', NULL, '2025-10-21 00:51:44.686720', NULL, 0, 1, 11),
(323, 'texto', '?', NULL, '2025-10-21 00:51:50.921552', NULL, 0, 1, 11),
(324, 'texto', '???', NULL, '2025-10-21 00:52:06.557739', NULL, 0, 1, 11),
(325, 'texto', 'a', NULL, '2025-10-21 00:52:20.797802', NULL, 0, 1, 11),
(326, 'texto', 'asdadsd', NULL, '2025-10-21 00:54:09.360754', NULL, 0, 1, 11),
(327, 'texto', 'asdad', NULL, '2025-10-21 00:54:29.161150', NULL, 0, 1, 11),
(328, 'texto', 'clean', NULL, '2025-10-21 00:54:37.243460', NULL, 0, 1, 11),
(330, 'texto', 'me cagastew', NULL, '2025-10-21 01:00:31.015988', NULL, 0, 1, 11),
(333, 'texto', 'que', NULL, '2025-10-21 01:02:00.616976', NULL, 0, 1, 11),
(336, 'texto', 'hola', NULL, '2025-10-21 01:16:40.700520', NULL, 0, 1, 11),
(341, 'texto', 'buena', NULL, '2025-10-21 01:32:29.162414', NULL, 0, 2, 11),
(342, 'texto', 'qu mierda', NULL, '2025-10-21 01:32:34.803905', NULL, 0, 5, 11),
(344, 'texto', 'mierdon', NULL, '2025-10-21 01:43:18.504505', NULL, 0, 5, 11),
(349, 'texto', 'y que', NULL, '2025-10-21 23:52:00.803381', NULL, 0, 5, 11),
(350, 'texto', 'hola', NULL, '2025-10-21 23:52:08.958047', NULL, 0, 1, 11),
(353, 'texto', 'hola amigos', NULL, '2025-10-22 02:16:22.602478', NULL, 0, 42, 11),
(354, 'texto', 'falta un integrante porque no me acepta', NULL, '2025-10-22 02:16:38.259074', NULL, 0, 42, 11),
(357, 'texto', 'oña', NULL, '2025-10-22 02:20:14.312333', NULL, 0, 42, 11),
(358, 'texto', 'hola', NULL, '2025-10-22 02:20:14.440688', NULL, 0, 42, 4),
(359, 'texto', 'que le dise un semaforo a otro', NULL, '2025-10-22 02:20:27.046930', NULL, 0, 42, 4),
(360, 'texto', 'sigue hablando', NULL, '2025-10-22 02:20:27.856040', NULL, 0, 42, 11),
(361, 'texto', 'no me beas que me pongo rojo', NULL, '2025-10-22 02:20:33.439137', NULL, 0, 42, 4),
(362, 'imagen', '', '{\"archivo_url\": \"/media/chat/7f2bfd653efb47ec94ace895ca0c7ee6.png\"}', '2025-10-22 02:20:38.783218', NULL, 0, 42, 4),
(363, 'texto', 'hola', NULL, '2025-10-22 02:20:40.752656', NULL, 0, 42, 4),
(364, 'texto', 'hola', NULL, '2025-10-22 02:20:41.513360', NULL, 0, 42, 4),
(365, 'texto', 'jiji', NULL, '2025-10-22 02:20:44.023240', NULL, 0, 42, 4),
(366, 'texto', 'fast', NULL, '2025-10-22 02:20:44.078985', NULL, 0, 42, 11),
(367, 'texto', 'esto es una chat de gifters', NULL, '2025-10-22 02:20:48.976055', NULL, 0, 42, 4),
(368, 'imagen', '', '{\"archivo_url\": \"/media/chat/6de559b9fe1e4b509cae24afa48fbd3c.jpg\"}', '2025-10-22 02:21:05.631888', NULL, 0, 42, 11),
(369, 'texto', 'eres tu¿', NULL, '2025-10-22 02:21:16.260139', NULL, 0, 42, 4),
(370, 'texto', 'nice to met yu', NULL, '2025-10-22 02:21:24.301062', NULL, 0, 42, 4),
(371, 'texto', 'te saque esa foto el otro dia amigo', NULL, '2025-10-22 02:22:56.966257', NULL, 0, 42, 11),
(372, 'texto', 'hola', NULL, '2025-10-22 02:23:14.931937', NULL, 0, 42, 2),
(373, 'texto', 'jajajaja', NULL, '2025-10-22 02:26:59.274747', NULL, 0, 42, 11),
(374, 'texto', 'hola', NULL, '2025-10-22 02:40:03.842689', NULL, 0, 42, 2),
(375, 'texto', 'Hi! you contact with Tony Stark Industries', NULL, '2025-10-22 03:10:01.242182', NULL, 0, 26, 28),
(376, 'texto', 'It can\'t be!! Another billionaire', NULL, '2025-10-22 03:10:54.424447', NULL, 0, 26, 2),
(377, 'texto', 'Predeterminated message: Hi you contact with Tony Stark, wait a minute', NULL, '2025-10-22 03:11:25.392413', NULL, 0, 26, 28),
(378, 'texto', '.....', NULL, '2025-10-22 03:12:16.949340', NULL, 0, 26, 2),
(379, 'texto', 'Yes! Finally with someone I\'m not disgusted to talk to', NULL, '2025-10-22 03:12:18.290198', NULL, 0, 26, 28),
(380, 'texto', 'change language', NULL, '2025-10-22 03:12:21.697624', NULL, 0, 26, 2),
(381, 'texto', 'oye conchetumare', NULL, '2025-10-22 03:12:26.976063', NULL, 0, 26, 2),
(382, 'texto', 'what language', NULL, '2025-10-22 03:12:29.878716', NULL, 0, 26, 28),
(383, 'texto', 'no me trolles never never', NULL, '2025-10-22 03:12:38.836562', NULL, 0, 26, 2),
(384, 'texto', 'que pasa conchetumare', NULL, '2025-10-22 03:12:50.344513', NULL, 0, 26, 28),
(385, 'texto', 'ostias!', NULL, '2025-10-22 03:12:54.041011', NULL, 0, 26, 2),
(386, 'texto', 'que pasa con los mas billionares', NULL, '2025-10-22 03:12:57.259157', NULL, 0, 26, 28),
(387, 'imagen', '', '{\"archivo_url\": \"/media/chat/d207ced33830433182cf496517a98361.jpg\"}', '2025-10-22 03:13:04.325983', NULL, 0, 26, 2),
(388, 'texto', 'Damn, sorry for mi spanish', NULL, '2025-10-22 03:13:15.675915', NULL, 0, 26, 28),
(389, 'texto', 'good desempeño in the practica mister', NULL, '2025-10-22 03:13:31.221985', NULL, 0, 26, 28),
(390, 'texto', 'Hi! you contact with Tony Stark Industries', NULL, '2025-10-22 03:19:06.897505', NULL, 0, 44, 28),
(393, 'texto', 'Predeterminated message: Hi you contact with Tony Stark, wait a minute', NULL, '2025-10-22 03:19:48.160699', NULL, 0, 44, 28),
(394, 'texto', 'Im Tony Stark, Genius, billionaire, playboy, philanthropist', NULL, '2025-10-22 03:20:02.024385', NULL, 0, 44, 28),
(396, 'texto', 'in english, puta basura', NULL, '2025-10-22 03:20:25.768178', NULL, 0, 44, 28),
(398, 'texto', 'no hablo mono (Translate helps)', NULL, '2025-10-22 03:20:47.252458', NULL, 0, 44, 28),
(400, 'texto', 'Jarvis translate that shit', NULL, '2025-10-22 03:21:44.436636', NULL, 0, 44, 28),
(401, 'texto', 'Damn brother, you\'re sick', NULL, '2025-10-22 03:21:59.146948', NULL, 0, 44, 28),
(402, 'texto', 'hi this is stark industries chat', NULL, '2025-10-22 03:25:24.466281', NULL, 0, 45, 28),
(403, 'texto', 'asdojaod', NULL, '2025-10-22 04:15:56.975481', NULL, 0, 45, 28),
(404, 'texto', 'dasdhasjdha', NULL, '2025-10-22 04:16:02.141670', NULL, 0, 44, 28),
(405, 'texto', 'aa', NULL, '2025-10-22 04:16:07.647745', NULL, 0, 44, 28),
(406, 'imagen', '', '{\"archivo_url\": \"/media/chat/4a85e92f44524616b3852262c9d05b63.jpg\"}', '2025-10-23 00:04:06.161456', NULL, 0, 45, 28),
(407, 'texto', 'me btw', NULL, '2025-10-23 00:04:09.402995', NULL, 0, 45, 28),
(412, 'texto', 'Jarvis translate', NULL, '2025-10-23 00:06:05.576841', NULL, 0, 45, 28),
(414, 'texto', 'ok, i can give you a intership', NULL, '2025-10-23 00:06:34.415458', NULL, 0, 45, 28),
(415, 'texto', 'internship*', NULL, '2025-10-23 00:06:43.579508', NULL, 0, 45, 28),
(416, 'texto', 'you have to suck it', NULL, '2025-10-23 00:06:52.190045', NULL, 0, 45, 28),
(418, 'texto', 'a shake', NULL, '2025-10-23 00:07:26.028865', NULL, 0, 45, 28),
(419, 'texto', 'what shake', NULL, '2025-10-23 00:08:40.773962', NULL, 0, 45, 11),
(420, 'texto', 'hola', NULL, '2025-10-23 02:10:11.068059', NULL, 0, 2, 11),
(421, 'texto', 'hola', NULL, '2025-10-23 02:10:11.083313', NULL, 0, 2, 11),
(422, 'texto', 'hola turbin', NULL, '2025-10-23 02:16:54.339721', NULL, 0, 9, 28),
(423, 'texto', 'hola turbin', NULL, '2025-10-23 02:16:54.349341', NULL, 0, 9, 28),
(424, 'texto', 'hola', NULL, '2025-10-23 02:17:03.129213', NULL, 0, 9, 28),
(425, 'texto', 'hola', NULL, '2025-10-23 02:17:03.140624', NULL, 0, 9, 28),
(426, 'texto', 'hola', NULL, '2025-10-23 02:30:17.484368', NULL, 0, 9, 28),
(427, 'texto', 'whake ta buddy+', NULL, '2025-10-23 02:30:34.757628', NULL, 0, 45, 28),
(428, 'texto', 'jelopu', NULL, '2025-10-23 02:30:55.612818', NULL, 0, 9, 28),
(429, 'texto', 'aaa', NULL, '2025-10-23 02:31:37.354405', NULL, 0, 9, 28),
(430, 'texto', 'hola', NULL, '2025-10-23 02:33:20.702736', NULL, 0, 26, 28),
(450, 'texto', 'ahora si wn', NULL, '2025-10-24 01:37:11.994183', NULL, 0, 44, 28),
(451, 'texto', 'sorry', NULL, '2025-10-24 01:37:15.225159', NULL, 0, 44, 28),
(452, 'texto', 'now yes', NULL, '2025-10-24 01:37:18.146197', NULL, 0, 44, 28),
(455, 'texto', 'hola', NULL, '2025-10-24 01:38:29.610937', NULL, 0, 44, 28),
(456, 'texto', 'hi i mean', NULL, '2025-10-24 01:38:32.581647', NULL, 0, 44, 28),
(458, 'texto', 'hi rick', NULL, '2025-10-24 01:39:13.853084', NULL, 0, 44, 28),
(459, 'texto', '??', NULL, '2025-10-24 01:39:29.631495', NULL, 0, 44, 28),
(464, 'texto', 'hi', NULL, '2025-10-24 01:41:19.139228', NULL, 0, 26, 28),
(465, 'texto', '??', NULL, '2025-10-24 01:42:06.553786', NULL, 0, 26, 28),
(466, 'texto', 'aa', NULL, '2025-10-24 01:42:28.912892', NULL, 0, 26, 28),
(467, 'texto', 'helou', NULL, '2025-10-24 01:42:47.817753', NULL, 0, 26, 28),
(468, 'texto', 'adsadda', NULL, '2025-10-24 01:44:18.240525', NULL, 0, 26, 28),
(469, 'texto', 'adsadda', NULL, '2025-10-24 01:44:18.366221', NULL, 0, 26, 28),
(470, 'texto', 'dasddasdghjasgdhkujs', NULL, '2025-10-24 01:49:58.891121', NULL, 0, 26, 2),
(471, 'texto', 'dhsajkdhlksakfj', NULL, '2025-10-24 01:52:33.252341', NULL, 0, 26, 2),
(472, 'texto', 'jkasfkljsdjkf', NULL, '2025-10-24 01:52:34.202047', NULL, 0, 26, 2),
(473, 'texto', 'djaskñldjñklas', NULL, '2025-10-24 01:52:35.073187', NULL, 0, 26, 2),
(474, 'texto', 'jfsahfñsko', NULL, '2025-10-24 01:52:35.855388', NULL, 0, 26, 2),
(475, 'texto', 'djsakjñfask', NULL, '2025-10-24 01:52:36.626251', NULL, 0, 26, 2),
(476, 'texto', 'dsadasdasd', NULL, '2025-10-24 01:53:50.499392', NULL, 0, 26, 2),
(477, 'texto', 'dsadasdasdsd', NULL, '2025-10-24 01:53:50.677108', NULL, 0, 26, 2),
(478, 'texto', 'd', NULL, '2025-10-24 01:53:51.091729', NULL, 0, 26, 2),
(479, 'texto', 'dd', NULL, '2025-10-24 01:53:51.235944', NULL, 0, 26, 2),
(480, 'texto', 'd', NULL, '2025-10-24 01:53:51.684731', NULL, 0, 26, 2),
(481, 'texto', 'dd', NULL, '2025-10-24 01:53:51.829960', NULL, 0, 26, 2),
(482, 'texto', 'd', NULL, '2025-10-24 01:53:52.254207', NULL, 0, 26, 2),
(483, 'texto', 'dd', NULL, '2025-10-24 01:53:52.400065', NULL, 0, 26, 2),
(484, 'texto', 'd', NULL, '2025-10-24 01:53:52.536202', NULL, 0, 26, 2),
(485, 'texto', 'd', NULL, '2025-10-24 01:53:52.972436', NULL, 0, 26, 2),
(486, 'texto', 'dd', NULL, '2025-10-24 01:53:53.113981', NULL, 0, 26, 2),
(487, 'texto', 'd', NULL, '2025-10-24 01:53:53.371581', NULL, 0, 26, 2),
(488, 'texto', 'asjdba', NULL, '2025-10-24 01:54:28.142212', NULL, 0, 26, 28),
(489, 'texto', 'd', NULL, '2025-10-24 01:54:28.513338', NULL, 0, 26, 28),
(490, 'texto', 's', NULL, '2025-10-24 01:54:29.213070', NULL, 0, 26, 28),
(491, 'texto', 'as', NULL, '2025-10-24 01:54:29.904914', NULL, 0, 26, 28),
(492, 'texto', 'ds´sd', NULL, '2025-10-24 02:27:36.471694', NULL, 0, 26, 2),
(493, 'texto', 'ds´sdd', NULL, '2025-10-24 02:27:36.672214', NULL, 0, 26, 2),
(494, 'texto', 's', NULL, '2025-10-24 02:27:36.862750', NULL, 0, 26, 2),
(495, 'texto', 's', NULL, '2025-10-24 02:27:37.053421', NULL, 0, 26, 2),
(496, 'texto', 's', NULL, '2025-10-24 02:27:37.242431', NULL, 0, 26, 2),
(497, 'texto', 'd', NULL, '2025-10-24 02:27:37.409444', NULL, 0, 26, 2),
(498, 'texto', 'd', NULL, '2025-10-24 02:27:37.592180', NULL, 0, 26, 2),
(499, 'texto', 's', NULL, '2025-10-24 02:27:37.924759', NULL, 0, 26, 2),
(500, 'texto', 'sd', NULL, '2025-10-24 02:27:38.081135', NULL, 0, 26, 2),
(501, 'texto', 'dhasjkhldjka', NULL, '2025-10-24 02:28:35.795215', NULL, 0, 26, 2),
(502, 'texto', 'ajdñklas', NULL, '2025-10-24 02:28:36.600111', NULL, 0, 26, 2),
(503, 'texto', 'hola tia', NULL, '2025-10-24 02:36:04.129576', NULL, 0, 2, 2),
(504, 'texto', 'tanto tiempo', NULL, '2025-10-24 02:36:08.757955', NULL, 0, 2, 2),
(505, 'texto', 'como has estado', NULL, '2025-10-24 02:36:17.484599', NULL, 0, 2, 11),
(506, 'texto', 'algun fruto seco?', NULL, '2025-10-24 02:36:21.679447', NULL, 0, 2, 11),
(507, 'texto', 'no guatona culia', NULL, '2025-10-24 02:37:21.325221', NULL, 0, 2, 2),
(508, 'texto', 'perdon', NULL, '2025-10-24 02:37:42.983882', NULL, 0, 2, 2),
(509, 'texto', 'y quien te enseño esa palabra portugues culiao rasca', NULL, '2025-10-24 02:37:59.393733', NULL, 0, 2, 11),
(510, 'imagen', '', '{\"archivo_url\": \"/media/chat/f0ce8d2b8a784d99a354b633b2be9a11.png\"}', '2025-10-24 02:38:25.289563', NULL, 0, 2, 2),
(511, 'texto', 'el', NULL, '2025-10-24 02:38:29.379565', NULL, 0, 2, 2),
(512, 'texto', 'wow', NULL, '2025-10-24 02:38:30.567575', NULL, 0, 2, 11),
(513, 'texto', 'negro culiao', NULL, '2025-10-24 02:38:34.985231', NULL, 0, 2, 11),
(514, 'texto', 'oal', NULL, '2025-10-24 02:52:33.659142', NULL, 0, 42, 4),
(515, 'texto', 'alo', NULL, '2025-10-24 02:52:40.030688', NULL, 0, 5, 4),
(516, 'texto', 'soy', NULL, '2025-10-24 02:52:47.416266', NULL, 0, 5, 4),
(517, 'texto', 'el de las resenas', NULL, '2025-10-24 02:52:51.005095', NULL, 0, 5, 4),
(518, 'texto', 'como estamos grupo', NULL, '2025-10-24 02:52:56.411531', NULL, 0, 42, 4),
(519, 'texto', 'jiji', NULL, '2025-10-24 02:53:10.830186', NULL, 0, 42, 4),
(520, 'texto', 'asdas', NULL, '2025-10-24 02:53:14.492938', NULL, 0, 5, 4),
(521, 'texto', 'a', NULL, '2025-10-25 00:45:08.125615', NULL, 0, 5, 11),
(522, 'texto', 'asd', NULL, '2025-10-25 00:45:18.228051', NULL, 0, 42, 11),
(523, 'texto', 'a', NULL, '2025-10-25 01:17:26.136553', NULL, 0, 42, 11),
(524, 'texto', 'hola', NULL, '2025-10-25 01:17:30.229249', NULL, 0, 42, 11),
(525, 'texto', 'hi', NULL, '2025-10-25 01:17:54.323291', NULL, 0, 42, 11),
(526, 'texto', 'hi', NULL, '2025-10-25 01:17:56.440251', NULL, 0, 42, 11),
(527, 'texto', 'hola tony mi abuela tiene distemper porfavor ayudame con su operacion....', NULL, '2025-10-25 01:18:27.506860', NULL, 0, 52, 30),
(528, 'texto', 'avengers asemble', NULL, '2025-10-25 01:18:36.087191', NULL, 0, 52, 30),
(529, 'texto', 'holA!', NULL, '2025-10-25 01:24:09.635790', NULL, 0, 42, 11),
(530, 'texto', 'stark industries!', NULL, '2025-10-25 01:24:16.662393', NULL, 0, 45, 11),
(531, 'imagen', '', '{\"archivo_url\": \"/media/chat/7165f4d79fba45638d79bdfa3384d1f5.jpg\"}', '2025-10-25 01:37:25.610986', NULL, 0, 43, 30),
(532, 'texto', 'okok', NULL, '2025-10-25 01:38:05.930608', NULL, 0, 45, 11),
(533, 'texto', 'que queri wn', NULL, '2025-10-25 01:39:16.909098', NULL, 0, 9, 11),
(534, 'texto', 'si eri millonario wn pa que queri frutos secos', NULL, '2025-10-25 01:39:30.767961', NULL, 0, 9, 11),
(535, 'imagen', '', '{\"archivo_url\": \"/media/chat/8096e802cb204c058377b0576f7b79d4.jpg\"}', '2025-10-25 01:39:40.197411', NULL, 0, 9, 11),
(536, 'texto', 'ya estoy en contactos con tu competencia..', NULL, '2025-10-25 01:39:58.783782', NULL, 0, 5, 11),
(537, 'texto', 'hola', NULL, '2025-10-25 02:01:20.387802', NULL, 0, 9, 11),
(538, 'texto', 'que', NULL, '2025-10-25 02:01:37.434897', NULL, 0, 9, 11),
(539, 'texto', 'a', NULL, '2025-10-25 02:01:44.757184', NULL, 0, 4, 11),
(540, 'texto', 'a', NULL, '2025-10-25 02:01:46.827399', NULL, 0, 1, 11),
(541, 'texto', 'a', NULL, '2025-10-25 02:01:48.773742', NULL, 0, 5, 11),
(542, 'texto', 'a', NULL, '2025-10-25 02:01:50.488070', NULL, 0, 2, 11),
(543, 'texto', 'hola ronald', NULL, '2025-10-25 02:10:05.609080', NULL, 0, 2, 11),
(544, 'texto', 'i dont fucking care🔥', NULL, '2025-10-25 02:14:54.511582', NULL, 0, 52, 28),
(545, 'texto', 'himitsu dayo', NULL, '2025-10-25 02:15:06.385792', NULL, 0, 45, 28),
(546, 'texto', 'hola', NULL, '2025-10-25 02:27:46.259265', NULL, 0, 44, 28),
(547, 'texto', 'mc donald?', NULL, '2025-10-25 02:28:07.794709', NULL, 0, 2, 2),
(548, 'texto', 'hola ronald', NULL, '2025-10-25 02:28:16.768563', NULL, 0, 26, 28),
(549, 'texto', 'dayo', NULL, '2025-10-25 02:29:16.738423', NULL, 0, 45, 28),
(550, 'texto', 'hola', NULL, '2025-10-25 02:29:31.537021', NULL, 0, 45, 28),
(551, 'texto', 'holi', NULL, '2025-10-25 02:30:37.400241', NULL, 0, 9, 28),
(552, 'texto', 'stark industries', NULL, '2025-10-25 02:38:11.700100', NULL, 0, 45, 28),
(553, 'texto', 'hola', NULL, '2025-10-25 02:57:38.598743', NULL, 0, 26, 28),
(554, 'texto', 'in', NULL, '2025-10-25 02:57:47.824850', NULL, 0, 45, 28),
(555, 'texto', 'callateeeee', NULL, '2025-10-27 23:41:36.009024', NULL, 0, 26, 2),
(556, 'texto', 'i wanna do business with you', NULL, '2025-10-27 23:41:37.350501', NULL, 0, 26, 28),
(557, 'texto', 'no tenkiu', NULL, '2025-10-27 23:41:56.947485', NULL, 0, 26, 2),
(558, 'imagen', '', '{\"archivo_url\": \"/media/chat/1b2f1ac316344c4789d03f319c08d06e.jpg\"}', '2025-10-27 23:42:10.054750', NULL, 0, 26, 28),
(559, 'imagen', '', '{\"archivo_url\": \"/media/chat/14636fc5786d486eaab8132aca1c77c4.png\"}', '2025-10-27 23:42:13.057464', NULL, 0, 26, 2),
(560, 'imagen', '', '{\"archivo_url\": \"/media/chat/fe350d7cf01940479a6b4ef73c3f918c.webp\"}', '2025-10-27 23:42:27.409896', NULL, 0, 26, 28),
(561, 'texto', 'hola como estas', NULL, '2025-10-28 23:53:00.794461', NULL, 0, 5, 11),
(562, 'imagen', '', '{\"archivo_url\": \"/media/chat/b257227b0b934db983c84fef8e3a1801.png\"}', '2025-10-28 23:54:35.563174', NULL, 0, 5, 11),
(563, 'texto', 'hola messi+', NULL, '2025-10-29 00:52:38.246282', NULL, 0, 5, 11),
(564, 'texto', 'hola ee', NULL, '2025-10-29 01:41:41.034248', NULL, 0, 5, 11),
(565, 'texto', 'in', NULL, '2025-10-29 01:41:44.149207', NULL, 0, 45, 11),
(566, 'texto', 'on', NULL, '2025-10-29 01:41:46.507924', NULL, 0, 45, 11),
(567, 'texto', 'nose', NULL, '2025-10-29 02:22:30.855400', NULL, 0, 9, 11),
(568, 'texto', 'holio', NULL, '2025-10-29 02:27:20.943515', NULL, 0, 9, 11),
(569, 'texto', 'como estan porque ya no hablan por aqui', NULL, '2025-10-29 02:27:28.889702', NULL, 0, 45, 11),
(570, 'texto', 'que', NULL, '2025-10-29 02:40:02.027299', NULL, 0, 9, 11),
(571, 'texto', 'jiojjijo', NULL, '2025-10-29 02:46:42.908391', NULL, 0, 5, 4),
(574, 'texto', 'hola', NULL, '2025-10-29 03:31:17.855053', NULL, 0, 5, 11),
(575, 'texto', 'como', NULL, '2025-10-29 03:31:21.237367', NULL, 0, 45, 11),
(576, 'sistema', '🎉 Se creó el evento “asdsadas”.', NULL, '2025-10-29 03:44:08.083149', NULL, 0, 73, 11),
(577, 'texto', 'hola?', NULL, '2025-10-29 03:44:17.897703', NULL, 0, 73, 11),
(578, 'texto', 'chao', NULL, '2025-10-29 03:44:58.643210', NULL, 0, 5, 4),
(579, 'texto', 'ola grupo', NULL, '2025-10-29 03:46:20.628595', NULL, 0, 73, 4),
(580, 'sistema', '🎉 Se creó el evento “amigosecreto”.', NULL, '2025-10-29 03:58:01.323822', NULL, 0, 74, 11),
(581, 'sistema', '🎉 Se creó el evento “njsdnasjkdba”.', NULL, '2025-10-29 04:01:12.704997', NULL, 0, 75, 11),
(582, 'texto', 'pesado ctm menos mal estas en un cumpleaños', NULL, '2025-10-30 00:38:35.310402', NULL, 0, 5, 11),
(583, 'imagen', '', '{\"archivo_url\": \"/media/chat/16a9320ce65547c682f710f20b348974.png\"}', '2025-10-30 01:26:50.525319', NULL, 0, 2, 11),
(584, 'texto', 'malo', NULL, '2025-10-30 01:27:41.910962', NULL, 0, 5, 4),
(585, 'texto', 'oye ctm que asi en la pagina sin estar en la reunion', NULL, '2025-10-30 01:38:13.502369', NULL, 0, 5, 11),
(586, 'sistema', '🎉 Se creó el evento “amigo secret\'s”.', NULL, '2025-10-30 01:39:25.006498', NULL, 0, 77, 11),
(587, 'texto', 'yhlqmdlg', NULL, '2025-10-30 02:24:29.641856', NULL, 0, 5, 4),
(588, 'texto', 'dijo babuni', NULL, '2025-10-30 02:24:33.140175', NULL, 0, 5, 4),
(589, 'texto', 'yeyeyeyee', NULL, '2025-10-30 02:24:35.493609', NULL, 0, 5, 4),
(590, 'sistema', '🎉 Se creó el evento “secrets friends”.', NULL, '2025-10-30 02:29:40.997556', NULL, 0, 78, 11),
(591, 'texto', '?', NULL, '2025-10-30 02:43:11.962897', NULL, 0, 5, 11),
(592, 'sistema', '🎉 Se creó el evento “no se quiero que funcione el amigo secreto”.', NULL, '2025-10-30 02:43:35.118326', NULL, 0, 79, 11),
(593, 'texto', '¿', NULL, '2025-10-30 02:46:48.887751', NULL, 0, 5, 4),
(594, 'sistema', '🎉 Se creó el evento “ojklhbkjvkjv”.', NULL, '2025-10-30 02:52:08.496153', NULL, 0, 80, 11),
(595, 'texto', 'pero por algo tengo a jarvis po asopao', NULL, '2025-10-30 03:05:41.795434', NULL, 0, 44, 28),
(596, 'texto', 'pa que me traduzca', NULL, '2025-10-30 03:05:44.695811', NULL, 0, 44, 28),
(597, 'sistema', '🎉 Se creó el evento “sdasdasdada”.', NULL, '2025-10-30 03:08:10.089097', NULL, 0, 81, 28),
(598, 'sistema', '🎉 Se creó el evento “AAAAA”.', NULL, '2025-10-30 03:18:48.975134', NULL, 0, 84, 28),
(599, 'sistema', '🎉 Se creó el evento “hola”.', NULL, '2025-10-30 03:28:55.032226', NULL, 0, 85, 28),
(600, 'sistema', '🎉 Se creó el evento “dsdadasda”.', NULL, '2025-10-30 03:31:52.258627', NULL, 0, 86, 28),
(601, 'texto', 'buena raja tia', NULL, '2025-10-30 23:48:07.191288', NULL, 0, 4, 24),
(602, 'imagen', '', '{\"archivo_url\": \"/media/chat/e69b9fe5540349e098b4f7bdb19f7234.jpg\"}', '2025-10-30 23:48:14.664088', NULL, 0, 4, 24),
(603, 'texto', 'hola elias alcaide', NULL, '2025-10-31 00:12:39.418225', NULL, 0, 44, 28),
(604, 'texto', 'pollita', NULL, '2025-10-31 00:21:19.805405', NULL, 0, 3, 24),
(605, 'texto', 'con chocolate', NULL, '2025-10-31 00:21:23.752296', NULL, 0, 3, 24),
(606, 'texto', 'a', NULL, '2025-10-31 01:41:24.177355', NULL, 0, 44, 28),
(607, 'texto', 'que', NULL, '2025-10-31 01:41:28.516573', NULL, 0, 45, 28),
(608, 'sistema', '🎉 Se creó el evento “dsadsda”.', NULL, '2025-10-31 02:10:27.722780', NULL, 0, 88, 28),
(609, 'sistema', '🎉 Se creó el evento “yapo funciona”.', NULL, '2025-10-31 02:30:19.853840', NULL, 0, 89, 28),
(610, 'texto', 'como estas', NULL, '2025-10-31 02:31:38.760896', NULL, 0, 9, 28),
(611, 'texto', 'como estas', NULL, '2025-10-31 02:31:44.026963', NULL, 0, 45, 28),
(612, 'sistema', '🎉 Se creó el evento “yapoooo”.', NULL, '2025-10-31 02:33:14.628512', NULL, 0, 90, 28),
(613, 'sistema', '🎉 Se creó el evento “la prueba final”.', NULL, '2025-10-31 02:41:42.013695', NULL, 0, 91, 11),
(614, 'sistema', '🎉 Se creó el evento “the final test”.', NULL, '2025-10-31 02:48:31.324988', NULL, 0, 92, 11),
(615, 'sistema', '🎉 Se creó el evento “the final of the final sorteo”.', NULL, '2025-10-31 02:56:31.553339', NULL, 0, 93, 11),
(616, 'sistema', '🎉 Se creó el evento “yapo wn funciona porfavor”.', NULL, '2025-10-31 03:06:00.814057', NULL, 0, 94, 11),
(617, 'sistema', '🎉 Se creó el evento “ola”.', NULL, '2025-10-31 03:08:25.736945', NULL, 0, 95, 11),
(618, 'texto', '🎉 ¡El sorteo se ha realizado! Cada participante ha recibido su asignación por mensaje privado. ¡Que empiece el Amigo Secreto! 🎁', NULL, '2025-10-31 03:20:37.119391', NULL, 0, 95, 11),
(619, 'sistema', '🎉 Se creó el evento “12131231”.', NULL, '2025-10-31 03:48:36.782587', NULL, 0, 98, 28),
(620, 'texto', '🎁 Te ha tocado regalar a ELIAS ALCAIDE LEIVA\nEvento: 12131231', NULL, '2025-10-31 03:52:51.516248', NULL, 0, 7, 28),
(621, 'texto', '🎁 Te ha tocado regalar a Cristiano Ronaldo\nEvento: 12131231', NULL, '2025-10-31 03:52:51.518650', NULL, 0, 2, 28),
(622, 'texto', '🎁 Te ha tocado regalar a Tony Stark\nEvento: 12131231', NULL, '2025-10-31 03:52:51.520894', NULL, 0, 44, 28),
(623, 'texto', '🎁 Te ha tocado regalar a Tia Turbina\nEvento: 12131231', NULL, '2025-10-31 03:52:51.523056', NULL, 0, 9, 28),
(624, 'texto', '🎉 ¡El sorteo se ha realizado! Cada participante ha recibido su asignación por mensaje privado.', NULL, '2025-10-31 03:52:51.524495', NULL, 0, 98, 28),
(625, 'sistema', '🎉 Se creó el evento “hola prueba num 1012010310”.', NULL, '2025-11-03 23:32:05.454070', NULL, 0, 99, 28),
(626, 'texto', '🎁 Te ha tocado regalar a ELIAS ALCAIDE LEIVA\nEvento: hola prueba num 1012010310', NULL, '2025-11-03 23:32:08.729891', NULL, 0, 7, 28),
(627, 'texto', '🎁 Te ha tocado regalar a Tony Stark\nEvento: hola prueba num 1012010310', NULL, '2025-11-03 23:32:08.731610', NULL, 0, 9, 28),
(628, 'texto', '🎁 Te ha tocado regalar a Tia Turbina\nEvento: hola prueba num 1012010310', NULL, '2025-11-03 23:32:08.733711', NULL, 0, 1, 28),
(629, 'texto', '🎁 Te ha tocado regalar a Cristiano Ronaldo\nEvento: hola prueba num 1012010310', NULL, '2025-11-03 23:32:08.737158', NULL, 0, 26, 28),
(630, 'texto', '🎉 ¡El sorteo se ha realizado! Cada participante ha recibido su asignación por mensaje privado.', NULL, '2025-11-03 23:32:08.741796', NULL, 0, 99, 28),
(631, 'sistema', '🎉 Se creó el evento “holi intento 1000”.', NULL, '2025-11-03 23:39:23.147912', NULL, 0, 100, 28),
(632, 'texto', '🎁 Te ha tocado regalar a ELIAS ALCAIDE LEIVA\nEvento: holi intento 1000', NULL, '2025-11-03 23:39:26.975360', NULL, 0, 7, 28),
(633, 'texto', '🎁 Te ha tocado regalar a Tony Stark\nEvento: holi intento 1000', NULL, '2025-11-03 23:39:26.976675', NULL, 0, 9, 28),
(634, 'texto', '🎁 Te ha tocado regalar a Tia Turbina\nEvento: holi intento 1000', NULL, '2025-11-03 23:39:26.978315', NULL, 0, 1, 28),
(635, 'texto', '🎁 Te ha tocado regalar a Cristiano Ronaldo\nEvento: holi intento 1000', NULL, '2025-11-03 23:39:26.979638', NULL, 0, 26, 28),
(636, 'texto', '🎉 ¡El sorteo se ha realizado! Cada participante ha recibido su asignación por mensaje privado.', NULL, '2025-11-03 23:39:26.980548', NULL, 0, 100, 28),
(637, 'sistema', '🎉 Se creó el evento “holi creo que funciona”.', NULL, '2025-11-03 23:59:41.417848', NULL, 0, 101, 28),
(638, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola! En el evento \"holi creo que funciona\", te ha tocado regalar a:\n\n👤 ELIAS ALCAIDE LEIVA\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-03 23:59:46.274743', NULL, 0, 7, 28),
(639, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola! En el evento \"holi creo que funciona\", te ha tocado regalar a:\n\n👤 Cristiano Ronaldo\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-03 23:59:46.281171', NULL, 0, 2, 28),
(640, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola! En el evento \"holi creo que funciona\", te ha tocado regalar a:\n\n👤 Tony Stark\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-03 23:59:46.283698', NULL, 0, 44, 28),
(641, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola! En el evento \"holi creo que funciona\", te ha tocado regalar a:\n\n👤 Tia Turbina\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-03 23:59:46.285555', NULL, 0, 9, 28),
(642, 'texto', '🎉 ¡El sorteo se ha realizado con éxito! 🎯\n\nCada participante ha recibido un mensaje privado con su asignación. Por favor, revisen sus mensajes privados para ver a quién deben regalar. 🤫\n\n¡Que empiece la diversión del Amigo Secreto! 🎁', NULL, '2025-11-03 23:59:46.286855', NULL, 0, 101, 28),
(643, 'texto', 'ctm', NULL, '2025-11-04 00:09:30.745269', NULL, 0, 9, 11),
(644, 'sistema', '🎉 Se creó el evento “the last one”.', NULL, '2025-11-04 00:16:35.908548', NULL, 0, 102, 28),
(645, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola! En el evento \"the last one\", te ha tocado regalar a:\n\n👤 Tia Turbina\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-04 00:16:39.585321', NULL, 0, 2, 28),
(646, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola! En el evento \"the last one\", te ha tocado regalar a:\n\n👤 Tony Stark\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-04 00:16:39.587004', NULL, 0, 9, 28),
(647, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola! En el evento \"the last one\", te ha tocado regalar a:\n\n👤 Cristiano Ronaldo\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-04 00:16:39.588448', NULL, 0, 7, 28),
(648, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola! En el evento \"the last one\", te ha tocado regalar a:\n\n👤 ELIAS ALCAIDE LEIVA\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-04 00:16:39.589786', NULL, 0, 44, 28),
(649, 'texto', '🎉 ¡El sorteo se ha realizado con éxito! 🎯\n\nCada participante ha recibido un mensaje privado con su asignación. Por favor, revisen sus mensajes privados para ver a quién deben regalar. 🤫\n\n¡Que empiece la diversión del Amigo Secreto! 🎁', NULL, '2025-11-04 00:16:39.590899', NULL, 0, 102, 28),
(650, 'sistema', '🎉 Se creó el evento “ok”.', NULL, '2025-11-04 00:29:30.180749', NULL, 0, 103, 11),
(651, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola! En el evento \"ok\", te ha tocado regalar a:\n\n👤 Tia Turbina\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-04 00:29:33.580101', NULL, 0, 2, 11),
(653, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola! En el evento \"ok\", te ha tocado regalar a:\n\n👤 Cristiano Ronaldo\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-04 00:29:33.583400', NULL, 0, 2, 11),
(654, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola! En el evento \"ok\", te ha tocado regalar a:\n\n👤 pailita el caati\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-04 00:29:33.584923', NULL, 0, 43, 11),
(655, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola! En el evento \"ok\", te ha tocado regalar a:\n\n👤 Tony Stark\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-04 00:29:33.587157', NULL, 0, 104, 11),
(656, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola! En el evento \"ok\", te ha tocado regalar a:\n\n👤 Pessi🥶 ㅤㅤㅤㅤㅤ\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-04 00:29:33.591176', NULL, 0, 105, 11),
(657, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola! En el evento \"ok\", te ha tocado regalar a:\n\n👤 Matias Ignacio Dominguez Donoso\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-04 00:29:33.593015', NULL, 0, 87, 11),
(658, 'texto', '🎉 ¡El sorteo se ha realizado con éxito! 🎯\n\nCada participante ha recibido un mensaje privado con su asignación. Por favor, revisen sus mensajes privados para ver a quién deben regalar. 🤫\n\n¡Que empiece la diversión del Amigo Secreto! 🎁', NULL, '2025-11-04 00:29:33.594777', NULL, 0, 103, 11),
(659, 'sistema', '🎉 Se creó el evento “ya ojala funcione la wea”.', NULL, '2025-11-04 00:33:13.665539', NULL, 0, 106, 11),
(660, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola! En el evento \"ya ojala funcione la wea\", te ha tocado regalar a:\n\n👤 Pessi🥶 ㅤㅤㅤㅤㅤ\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-04 00:34:12.161286', NULL, 0, 10, 11),
(662, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola! En el evento \"ya ojala funcione la wea\", te ha tocado regalar a:\n\n👤 Matias Ignacio Dominguez Donoso\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-04 00:34:12.164301', NULL, 0, 4, 11),
(663, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola! En el evento \"ya ojala funcione la wea\", te ha tocado regalar a:\n\n👤 Tia Turbina\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-04 00:34:12.165680', NULL, 0, 1, 11),
(664, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola! En el evento \"ya ojala funcione la wea\", te ha tocado regalar a:\n\n👤 Tony Stark\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-04 00:34:12.166910', NULL, 0, 104, 11),
(665, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola! En el evento \"ya ojala funcione la wea\", te ha tocado regalar a:\n\n👤 Cristiano Ronaldo\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-04 00:34:12.168265', NULL, 0, 26, 11),
(666, 'texto', '🎉 ¡El sorteo se ha realizado con éxito! 🎯\n\nCada participante ha recibido un mensaje privado con su asignación. Por favor, revisen sus mensajes privados para ver a quién deben regalar. 🤫\n\n¡Que empiece la diversión del Amigo Secreto! 🎁', NULL, '2025-11-04 00:34:12.169225', NULL, 0, 106, 11),
(667, 'sistema', '🎉 Se creó el evento “hola elias este es un regalo para ti”.', NULL, '2025-11-04 00:39:19.139904', NULL, 0, 110, 11),
(668, 'sistema', '🎉 Se creó el evento “hola matias este es un regalo para ti”.', NULL, '2025-11-04 00:41:59.823883', NULL, 0, 111, 11),
(669, 'texto', '🎉 ¡El sorteo se ha realizado con éxito! 🎯\n\nCada participante ha recibido un mensaje privado con su asignación. Por favor, revisen sus mensajes privados para ver a quién deben regalar. 🤫\n\n¡Que empiece la diversión del Amigo Secreto! 🎁', NULL, '2025-11-04 00:45:00.066423', NULL, 0, 111, 11),
(670, 'texto', 'hola', NULL, '2025-11-04 00:45:32.619932', NULL, 0, 5, 11),
(671, 'texto', '🎉 ¡El sorteo se ha realizado con éxito! 🎯\n\nCada participante ha recibido un mensaje privado con su asignación. Por favor, revisen sus mensajes privados para ver a quién deben regalar. 🤫\n\n¡Que empiece la diversión del Amigo Secreto! 🎁', NULL, '2025-11-04 00:46:00.069948', NULL, 0, 110, 11),
(672, 'sistema', '🎉 Se creó el evento “hola puedes funcionar buien”.', NULL, '2025-11-04 00:57:08.535678', NULL, 0, 112, 11),
(673, 'texto', '🎉 ¡El sorteo se ha realizado con éxito! 🎯\n\nCada participante ha recibido un mensaje privado con su asignación. Por favor, revisen sus mensajes privados para ver a quién deben regalar. 🤫\n\n¡Que empiece la diversión del Amigo Secreto! 🎁', NULL, '2025-11-04 00:57:11.680752', NULL, 0, 112, 11),
(674, 'sistema', '🎉 Se creó el evento “hola the last try”.', NULL, '2025-11-04 01:01:13.050193', NULL, 0, 113, 11);
INSERT INTO `mensaje` (`mensaje_id`, `tipo`, `contenido`, `metadatos`, `creado_en`, `editado_en`, `eliminado`, `conversacion_id`, `id_usuario`) VALUES
(675, 'texto', '🎉 ¡El sorteo se ha realizado con éxito! 🎯\n\nCada participante ha recibido un mensaje privado con su asignación. Por favor, revisen sus mensajes privados para ver a quién deben regalar. 🤫\n\n¡Que empiece la diversión del Amigo Secreto! 🎁', NULL, '2025-11-04 01:03:50.463091', NULL, 0, 113, 11),
(676, 'texto', 'a', NULL, '2025-11-04 01:04:21.352985', NULL, 0, 1, 11),
(677, 'texto', 'a', NULL, '2025-11-04 01:04:23.862347', NULL, 0, 2, 11),
(678, 'texto', 'a', NULL, '2025-11-04 01:04:26.072590', NULL, 0, 4, 11),
(679, 'texto', 'a', NULL, '2025-11-04 01:04:27.933927', NULL, 0, 9, 11),
(680, 'texto', 'a', NULL, '2025-11-04 01:04:29.649687', NULL, 0, 5, 11),
(681, 'sistema', '🎉 Se creó el evento “funciona porfavor”.', NULL, '2025-11-04 01:06:13.763391', NULL, 0, 114, 11),
(682, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola! En el evento \"funciona porfavor\", te ha tocado regalar a:\n\n👤 Tia Turbina\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-04 01:06:18.199003', NULL, 0, 2, 11),
(684, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola! En el evento \"funciona porfavor\", te ha tocado regalar a:\n\n👤 Pessi🥶 ㅤㅤㅤㅤㅤ\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-04 01:06:18.202404', NULL, 0, 5, 11),
(686, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola! En el evento \"funciona porfavor\", te ha tocado regalar a:\n\n👤 Tony Stark\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-04 01:06:18.205600', NULL, 0, 104, 11),
(687, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola! En el evento \"funciona porfavor\", te ha tocado regalar a:\n\n👤 Cristiano Ronaldo\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-04 01:06:18.207769', NULL, 0, 26, 11),
(688, 'texto', '🎉 ¡El sorteo se ha realizado con éxito! 🎯\n\nCada participante ha recibido un mensaje privado con su asignación. Por favor, revisen sus mensajes privados para ver a quién deben regalar. 🤫\n\n¡Que empiece la diversión del Amigo Secreto! 🎁', NULL, '2025-11-04 01:06:18.209227', NULL, 0, 114, 11),
(689, 'sistema', '🎉 Se creó el evento “holaholahola”.', NULL, '2025-11-04 01:14:14.204916', NULL, 0, 115, 11),
(690, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Cristiano! \n\nEn el evento \"holaholahola\", te ha tocado regalar a:\n\n👤 ELIAS ALCAIDE LEIVA\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-04 01:14:17.102053', NULL, 0, 7, 11),
(691, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Pessi🥶! \n\nEn el evento \"holaholahola\", te ha tocado regalar a:\n\n👤 Cristiano Ronaldo\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-04 01:14:17.104101', NULL, 0, 10, 11),
(692, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Tia! \n\nEn el evento \"holaholahola\", te ha tocado regalar a:\n\n👤 Tony Stark\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-04 01:14:17.106702', NULL, 0, 9, 11),
(694, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Matias Ignacio! \n\nEn el evento \"holaholahola\", te ha tocado regalar a:\n\n👤 Tia Turbina\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-04 01:14:17.110657', NULL, 0, 4, 11),
(695, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Tony! \n\nEn el evento \"holaholahola\", te ha tocado regalar a:\n\n👤 Pessi🥶 ㅤㅤㅤㅤㅤ\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-04 01:14:17.112382', NULL, 0, 105, 11),
(696, 'texto', '🎉 ¡El sorteo se ha realizado con éxito! 🎯\n\nCada participante ha recibido un mensaje privado con su asignación. Por favor, revisen sus mensajes privados para ver a quién deben regalar. 🤫\n\n¡Que empiece la diversión del Amigo Secreto! 🎁', NULL, '2025-11-04 01:14:17.114033', NULL, 0, 115, 11),
(697, 'sistema', '🎉 Se creó el evento “oeyapoeventosecreto”.', NULL, '2025-11-04 01:21:02.774038', NULL, 0, 116, 11),
(698, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Cristiano! \n\nEn el evento \"oeyapoeventosecreto\", te ha tocado regalar a:\n\n👤 ELIAS ALCAIDE LEIVA\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-04 01:21:06.587286', NULL, 0, 7, 11),
(699, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Pessi🥶! \n\nEn el evento \"oeyapoeventosecreto\", te ha tocado regalar a:\n\n👤 Matias Ignacio Dominguez Donoso\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-04 01:21:06.595923', NULL, 0, 117, 11),
(700, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Tia! \n\nEn el evento \"oeyapoeventosecreto\", te ha tocado regalar a:\n\n👤 Tony Stark\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-04 01:21:06.602077', NULL, 0, 9, 11),
(701, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola ELIAS! \n\nEn el evento \"oeyapoeventosecreto\", te ha tocado regalar a:\n\n👤 Tia Turbina\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-04 01:21:06.606331', NULL, 0, 1, 11),
(702, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Matias Ignacio! \n\nEn el evento \"oeyapoeventosecreto\", te ha tocado regalar a:\n\n👤 Cristiano Ronaldo\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-04 01:21:06.617483', NULL, 0, 3, 11),
(703, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Tony! \n\nEn el evento \"oeyapoeventosecreto\", te ha tocado regalar a:\n\n👤 Pessi🥶 ㅤㅤㅤㅤㅤ\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-04 01:21:06.623958', NULL, 0, 105, 11),
(704, 'texto', '🎉 ¡El sorteo se ha realizado con éxito! 🎯\n\nCada participante ha recibido un mensaje privado con su asignación. Por favor, revisen sus mensajes privados para ver a quién deben regalar. 🤫\n\n¡Que empiece la diversión del Amigo Secreto! 🎁', NULL, '2025-11-04 01:21:06.630727', NULL, 0, 116, 11),
(705, 'sistema', '🎉 Se creó el evento “this is”.', NULL, '2025-11-04 01:21:53.203698', NULL, 0, 118, 11),
(706, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Cristiano! \n\nEn el evento \"this is\", te ha tocado regalar a:\n\n👤 Tia Turbina\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-04 01:21:57.731611', NULL, 0, 2, 11),
(707, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Pessi🥶! \n\nEn el evento \"this is\", te ha tocado regalar a:\n\n👤 Matias Ignacio Dominguez Donoso\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-04 01:21:57.736319', NULL, 0, 117, 11),
(708, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Tia! \n\nEn el evento \"this is\", te ha tocado regalar a:\n\n👤 ELIAS ALCAIDE LEIVA\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-04 01:21:57.739376', NULL, 0, 1, 11),
(709, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola ELIAS! \n\nEn el evento \"this is\", te ha tocado regalar a:\n\n👤 Cristiano Ronaldo\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-04 01:21:57.741295', NULL, 0, 7, 11),
(710, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Matias Ignacio! \n\nEn el evento \"this is\", te ha tocado regalar a:\n\n👤 Pessi🥶 ㅤㅤㅤㅤㅤ\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-04 01:21:57.742725', NULL, 0, 117, 11),
(711, 'texto', '🎉 ¡El sorteo se ha realizado con éxito! 🎯\n\nCada participante ha recibido un mensaje privado con su asignación. Por favor, revisen sus mensajes privados para ver a quién deben regalar. 🤫\n\n¡Que empiece la diversión del Amigo Secreto! 🎁', NULL, '2025-11-04 01:21:57.743564', NULL, 0, 118, 11),
(712, 'sistema', '🎉 Se creó el evento “this is evento secreto”.', NULL, '2025-11-04 01:26:29.851785', NULL, 0, 119, 11),
(713, 'sistema', '🎉 Se creó el evento “dadadad”.', NULL, '2025-11-04 01:30:24.178837', NULL, 0, 120, 11),
(714, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Cristiano! \n\nEn el evento \"dadadad\", te ha tocado regalar a:\n\n👤 ELIAS ALCAIDE LEIVA\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-04 01:30:27.329510', NULL, 0, 7, 11),
(715, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Pessi🥶! \n\nEn el evento \"dadadad\", te ha tocado regalar a:\n\n👤 Matias Ignacio Dominguez Donoso\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-04 01:30:27.332368', NULL, 0, 117, 11),
(717, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Matias Ignacio! \n\nEn el evento \"dadadad\", te ha tocado regalar a:\n\n👤 Cristiano Ronaldo\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-04 01:30:27.340640', NULL, 0, 3, 11),
(718, 'texto', '🎉 ¡El sorteo se ha realizado con éxito! 🎯\n\nCada participante ha recibido un mensaje privado con su asignación. Por favor, revisen sus mensajes privados para ver a quién deben regalar. 🤫\n\n¡Que empiece la diversión del Amigo Secreto! 🎁', NULL, '2025-11-04 01:30:27.342942', NULL, 0, 120, 11),
(719, 'sistema', '🎉 Se creó el evento “quqwueu”.', NULL, '2025-11-04 01:31:04.753284', NULL, 0, 121, 11),
(720, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Cristiano! \n\nEn el evento \"quqwueu\", te ha tocado regalar a:\n\n👤 ELIAS ALCAIDE LEIVA\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-04 01:31:08.246895', NULL, 0, 7, 11),
(721, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Pessi🥶! \n\nEn el evento \"quqwueu\", te ha tocado regalar a:\n\n👤 Matias Ignacio Dominguez Donoso\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-04 01:31:08.250564', NULL, 0, 117, 11),
(722, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola ELIAS! \n\nEn el evento \"quqwueu\", te ha tocado regalar a:\n\n👤 Cristiano Ronaldo\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-04 01:31:08.253187', NULL, 0, 7, 11),
(723, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Matias Ignacio! \n\nEn el evento \"quqwueu\", te ha tocado regalar a:\n\n👤 Pessi🥶 ㅤㅤㅤㅤㅤ\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-04 01:31:08.254971', NULL, 0, 117, 11),
(724, 'texto', '🎉 ¡El sorteo se ha realizado con éxito! 🎯\n\nCada participante ha recibido un mensaje privado con su asignación. Por favor, revisen sus mensajes privados para ver a quién deben regalar. 🤫\n\n¡Que empiece la diversión del Amigo Secreto! 🎁', NULL, '2025-11-04 01:31:08.256304', NULL, 0, 121, 11),
(725, 'sistema', '🎉 Se creó el evento “test 1”.', NULL, '2025-11-04 01:43:18.832890', NULL, 0, 122, 11),
(726, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Cristiano! \n\nEn el evento \"test 1\", te ha tocado regalar a:\n\n👤 ELIAS ALCAIDE LEIVA\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-04 01:43:24.781692', NULL, 0, 7, 11),
(727, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Pessi🥶! \n\nEn el evento \"test 1\", te ha tocado regalar a:\n\n👤 Cristiano Ronaldo\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-04 01:43:24.783197', NULL, 0, 10, 11),
(729, 'texto', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Matias Ignacio! \n\nEn el evento \"test 1\", te ha tocado regalar a:\n\n👤 Pessi🥶 ㅤㅤㅤㅤㅤ\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-04 01:43:24.786123', NULL, 0, 117, 11),
(730, 'texto', '🎉 ¡El sorteo se ha realizado con éxito! 🎯\n\nCada participante ha recibido un mensaje privado con su asignación. Por favor, revisen sus mensajes privados para ver a quién deben regalar. 🤫\n\n¡Que empiece la diversión del Amigo Secreto! 🎁', NULL, '2025-11-04 01:43:24.787028', NULL, 0, 122, 11),
(731, 'sistema', '🎉 Se creó el evento “test 2”.', NULL, '2025-11-04 01:53:07.246406', NULL, 0, 123, 11),
(732, 'texto', '🎉 ¡El sorteo se ha realizado con éxito! 🎯\n\nCada participante ha recibido un mensaje privado con su asignación. Por favor, revisen sus mensajes privados para ver a quién deben regalar. 🤫\n\n¡Que empiece la diversión del Amigo Secreto! 🎁', NULL, '2025-11-04 01:54:07.866239', NULL, 0, 123, 11),
(733, 'sistema', '🎉 Se creó el evento “test 3”.', NULL, '2025-11-04 02:03:18.341594', NULL, 0, 124, 11),
(734, 'texto', 'hola', NULL, '2025-11-04 02:24:06.448056', NULL, 0, 5, 11),
(735, 'texto', 'hola', NULL, '2025-11-04 02:24:09.640963', NULL, 0, 45, 11),
(736, 'texto', '🎉 ¡El sorteo se ha realizado con éxito! 🎯\n\nCada participante ha recibido un mensaje privado con su asignación. Por favor, revisen sus mensajes privados para ver a quién deben regalar. 🤫\n\n¡Que empiece la diversión del Amigo Secreto! 🎁', NULL, '2025-11-04 02:24:34.676860', NULL, 0, 124, 11),
(737, 'texto', '🎉 ¡El sorteo se ha realizado con éxito! 🎯\n\nCada participante ha recibido un mensaje privado con su asignación. Por favor, revisen sus mensajes privados para ver a quién deben regalar. 🤫\n\n¡Que empiece la diversión del Amigo Secreto! 🎁', NULL, '2025-11-04 02:25:51.113243', NULL, 0, 119, 11),
(738, 'texto', 'turbin', NULL, '2025-11-04 02:27:34.238884', NULL, 0, 4, 24),
(739, 'texto', 'hol', NULL, '2025-11-04 02:28:12.420354', NULL, 0, 4, 11),
(740, 'texto', 'como estas porque no me respondes', NULL, '2025-11-04 02:31:54.132773', NULL, 0, 5, 11),
(741, 'texto', 'esque estoy resfriado', NULL, '2025-11-04 02:32:01.925851', NULL, 0, 5, 4),
(742, 'texto', 'no puedo hablar', NULL, '2025-11-04 02:32:06.285464', NULL, 0, 5, 4),
(743, 'texto', 'y que tiene que ver', NULL, '2025-11-04 02:32:08.386542', NULL, 0, 5, 11),
(744, 'texto', 'si esto es escribir', NULL, '2025-11-04 02:32:15.943800', NULL, 0, 5, 11),
(745, 'texto', ':o', NULL, '2025-11-04 02:32:20.163851', NULL, 0, 5, 4),
(746, 'imagen', '', '{\"archivo_url\": \"/media/chat/2767819ecacb4551b944cda1064e6437.jpg\"}', '2025-11-04 02:32:24.091444', NULL, 0, 5, 11),
(747, 'texto', 'estoy enamorado de el...', NULL, '2025-11-04 02:32:31.488295', NULL, 0, 5, 11),
(748, 'texto', 'regalale algo para que el se enamore de ti', NULL, '2025-11-04 02:32:46.004430', NULL, 0, 5, 4),
(749, 'texto', 'es que es millonario', NULL, '2025-11-04 02:32:53.644251', NULL, 0, 5, 11),
(750, 'texto', 'quizas unos frutos secos', NULL, '2025-11-04 02:32:58.156553', NULL, 0, 5, 4),
(751, 'texto', 'no se que le podria regalar', NULL, '2025-11-04 02:32:59.389770', NULL, 0, 5, 11),
(752, 'texto', 'algo que te salga del alma', NULL, '2025-11-04 02:33:04.508161', NULL, 0, 5, 4),
(753, 'texto', 'algo que te salga del alma', NULL, '2025-11-04 02:33:06.012134', NULL, 0, 5, 4),
(754, 'imagen', '', '{\"archivo_url\": \"/media/chat/4ce31578d1ab41fa99d13e0ce9869e96.png\"}', '2025-11-04 02:34:08.809736', NULL, 0, 5, 11),
(755, 'texto', 'Un saludo kylian', NULL, '2025-11-05 17:43:08.662454', NULL, 0, 126, 45),
(756, 'texto', 'wena po', NULL, '2025-11-05 17:43:18.861169', NULL, 0, 126, 27),
(757, 'texto', 'hola!', NULL, '2025-11-05 17:44:08.543950', NULL, 0, 127, 27),
(758, 'texto', 'holi', NULL, '2025-11-11 00:58:07.777562', NULL, 0, 9, 28),
(759, 'texto', 'wena', NULL, '2025-11-11 01:05:46.293172', NULL, 0, 126, 45),
(760, 'sistema', '🎉 Se creó el evento “probwemos”.', NULL, '2025-11-18 00:05:45.438157', NULL, 0, 129, 11),
(761, 'texto', '🎉 ¡El sorteo se ha realizado con éxito! 🎯\n\nCada participante ha recibido un mensaje privado con su asignación. Por favor, revisen sus mensajes privados para ver a quién deben regalar. 🤫\n\n¡Que empiece la diversión del Amigo Secreto! 🎁', NULL, '2025-11-18 00:05:49.410929', NULL, 0, 129, 11),
(762, 'sistema', '🎉 Se creó el evento “hola porafa”.', NULL, '2025-11-18 01:21:50.170455', NULL, 0, 130, 11),
(763, 'texto', '🎉 ¡El sorteo se ha realizado con éxito! 🎯\n\nCada participante ha recibido un mensaje privado con su asignación. Por favor, revisen sus mensajes privados para ver a quién deben regalar. 🤫\n\n¡Que empiece la diversión del Amigo Secreto! 🎁', NULL, '2025-11-18 01:21:53.749080', NULL, 0, 130, 11),
(764, 'texto', 'un saludo mi hermano', NULL, '2025-11-18 01:27:30.095463', NULL, 0, 126, 45),
(765, 'sistema', '🎉 Se creó el evento “holaoholaohlaogol1”.', NULL, '2025-11-18 01:53:09.200095', NULL, 0, 131, 11),
(766, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Cristiano! \n\nEn el evento \"holaoholaohlaogol1\", te ha tocado regalar a:\n\n👤 Tia Turbina\n\n💰 Presupuesto: $1000.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-18 01:53:12.314402', NULL, 0, 2, 11),
(767, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Pessi🥶! \n\nEn el evento \"holaoholaohlaogol1\", te ha tocado regalar a:\n\n👤 Matias Ignacio Dominguez Donoso\n\n💰 Presupuesto: $1000.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-18 01:53:12.324374', NULL, 0, 5, 11),
(768, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Tia! \n\nEn el evento \"holaoholaohlaogol1\", te ha tocado regalar a:\n\n👤 Tony Stark\n\n💰 Presupuesto: $1000.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-18 01:53:12.326495', NULL, 0, 9, 11),
(769, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Matias Ignacio! \n\nEn el evento \"holaoholaohlaogol1\", te ha tocado regalar a:\n\n👤 Cristiano Ronaldo\n\n💰 Presupuesto: $1000.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-18 01:53:12.328041', NULL, 0, 4, 11),
(770, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Tony! \n\nEn el evento \"holaoholaohlaogol1\", te ha tocado regalar a:\n\n👤 pailita el caati\n\n💰 Presupuesto: $1000.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-18 01:53:12.333082', NULL, 0, 9, 11),
(771, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola pailita! \n\nEn el evento \"holaoholaohlaogol1\", te ha tocado regalar a:\n\n👤 Pessi🥶 ㅤㅤㅤㅤㅤ\n\n💰 Presupuesto: $1000.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-18 01:53:12.336015', NULL, 0, 47, 11),
(772, 'texto', '🎉 ¡El sorteo se ha realizado con éxito! 🎯\n\nCada participante ha recibido un mensaje privado con su asignación. Por favor, revisen sus mensajes privados para ver a quién deben regalar. 🤫\n\n¡Que empiece la diversión del Amigo Secreto! 🎁', NULL, '2025-11-18 01:53:12.337920', NULL, 0, 131, 11),
(773, 'sistema', '🎉 Se creó el evento “wow”.', NULL, '2025-11-18 02:47:04.620257', NULL, 0, 132, 2),
(774, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Cristiano! \n\nEn el evento \"wow\", te ha tocado regalar a:\n\n👤 Kylian Mbappé\n\n💰 Presupuesto: $1000.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-18 02:47:12.281681', NULL, 0, 2, 2),
(775, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Pessi🥶! \n\nEn el evento \"wow\", te ha tocado regalar a:\n\n👤 Cristiano Ronaldo\n\n💰 Presupuesto: $1000.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-18 02:47:12.286010', NULL, 0, 10, 2),
(776, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Tia! \n\nEn el evento \"wow\", te ha tocado regalar a:\n\n👤 Tony Stark\n\n💰 Presupuesto: $1000.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-18 02:47:12.289328', NULL, 0, 2, 2),
(777, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Kylian! \n\nEn el evento \"wow\", te ha tocado regalar a:\n\n👤 Tia Turbina\n\n💰 Presupuesto: $1000.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-18 02:47:12.292797', NULL, 0, 31, 2),
(778, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Tony! \n\nEn el evento \"wow\", te ha tocado regalar a:\n\n👤 Pessi🥶 ㅤㅤㅤㅤㅤ\n\n💰 Presupuesto: $1000.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-18 02:47:12.296142', NULL, 0, 26, 2),
(779, 'texto', '🎉 ¡El sorteo se ha realizado con éxito! 🎯\n\nCada participante ha recibido un mensaje privado con su asignación. Por favor, revisen sus mensajes privados para ver a quién deben regalar. 🤫\n\n¡Que empiece la diversión del Amigo Secreto! 🎁', NULL, '2025-11-18 02:47:12.299180', NULL, 0, 132, 2),
(780, 'sistema', '🎉 Se creó el evento “AMIGO SECRETILLO”.', NULL, '2025-11-18 23:40:44.477562', NULL, 0, 133, 11),
(781, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Cristiano! \n\nEn el evento \"AMIGO SECRETILLO\", te ha tocado regalar a:\n\n👤 pailita el caati\n\n💰 Presupuesto: $10000.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-18 23:40:47.705546', NULL, 0, 2, 11),
(782, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Pessi🥶! \n\nEn el evento \"AMIGO SECRETILLO\", te ha tocado regalar a:\n\n👤 Matias Ignacio Dominguez Donoso\n\n💰 Presupuesto: $10000.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-18 23:40:47.708259', NULL, 0, 5, 11),
(783, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Tia! \n\nEn el evento \"AMIGO SECRETILLO\", te ha tocado regalar a:\n\n👤 Pessi🥶 ㅤㅤㅤㅤㅤ\n\n💰 Presupuesto: $10000.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-18 23:40:47.710231', NULL, 0, 9, 11),
(784, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Matias Ignacio! \n\nEn el evento \"AMIGO SECRETILLO\", te ha tocado regalar a:\n\n👤 Cristiano Ronaldo\n\n💰 Presupuesto: $10000.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-18 23:40:47.712705', NULL, 0, 4, 11),
(785, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Tony! \n\nEn el evento \"AMIGO SECRETILLO\", te ha tocado regalar a:\n\n👤 Tia Turbina\n\n💰 Presupuesto: $10000.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-18 23:40:47.714958', NULL, 0, 9, 11),
(786, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola pailita! \n\nEn el evento \"AMIGO SECRETILLO\", te ha tocado regalar a:\n\n👤 Tony Stark\n\n💰 Presupuesto: $10000.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-18 23:40:47.718144', NULL, 0, 47, 11),
(787, 'texto', '🎉 ¡El sorteo se ha realizado con éxito! 🎯\n\nCada participante ha recibido un mensaje privado con su asignación. Por favor, revisen sus mensajes privados para ver a quién deben regalar. 🤫\n\n¡Que empiece la diversión del Amigo Secreto! 🎁', NULL, '2025-11-18 23:40:47.720146', NULL, 0, 133, 11),
(788, 'texto', 'ola', NULL, '2025-11-18 23:42:04.899505', NULL, 0, 5, 11),
(789, 'sistema', '🎉 Se creó el evento “SECRETO AMIGO”.', NULL, '2025-11-18 23:51:47.901140', NULL, 0, 134, 11),
(790, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Cristiano! \n\nEn el evento \"SECRETO AMIGO\", te ha tocado regalar a:\n\n👤 Tony Stark\n\n\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-18 23:51:51.938019', NULL, 0, 2, 11),
(791, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Pessi🥶! \n\nEn el evento \"SECRETO AMIGO\", te ha tocado regalar a:\n\n👤 Matias Ignacio Dominguez Donoso\n\n\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-18 23:51:51.947544', NULL, 0, 5, 11),
(792, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Matias Ignacio! \n\nEn el evento \"SECRETO AMIGO\", te ha tocado regalar a:\n\n👤 Cristiano Ronaldo\n\n\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-18 23:51:51.951500', NULL, 0, 4, 11),
(793, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Tony! \n\nEn el evento \"SECRETO AMIGO\", te ha tocado regalar a:\n\n👤 pailita el caati\n\n\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-18 23:51:51.954216', NULL, 0, 9, 11),
(794, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola pailita! \n\nEn el evento \"SECRETO AMIGO\", te ha tocado regalar a:\n\n👤 Pessi🥶 ㅤㅤㅤㅤㅤ\n\n\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-18 23:51:51.957497', NULL, 0, 47, 11),
(795, 'texto', '🎉 ¡El sorteo se ha realizado con éxito! 🎯\n\nEl organizador (yo) no participa en el intercambio.\nCada participante ha recibido un mensaje privado con su asignación. 🤫\n\n¡Que empiece la diversión! 🎁', NULL, '2025-11-18 23:51:51.959831', NULL, 0, 134, 11),
(796, 'texto', 'asasaa', NULL, '2025-11-18 23:52:37.703463', NULL, 0, 5, 11),
(797, 'texto', 'sasasa', NULL, '2025-11-18 23:52:40.229838', NULL, 0, 1, 11),
(798, 'texto', 'sasas', NULL, '2025-11-18 23:52:42.776308', NULL, 0, 2, 11),
(799, 'texto', 'asada', NULL, '2025-11-18 23:53:19.551281', NULL, 0, 4, 11),
(800, 'texto', 'asdas', NULL, '2025-11-18 23:53:22.217681', NULL, 0, 9, 11),
(801, 'sistema', '🎉 Se creó el evento “el mayor secreto de los amigos”.', NULL, '2025-11-19 00:09:31.836977', NULL, 0, 135, 11),
(802, 'texto', 'ok', NULL, '2025-11-19 00:09:48.250915', NULL, 0, 47, 11),
(803, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Cristiano! \n\nEn el evento \"el mayor secreto de los amigos\", te ha tocado regalar a:\n\n👤 pailita el caati\n\n💰 Presupuesto: $10.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-19 00:10:03.026787', NULL, 0, 2, 11),
(804, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Pessi🥶! \n\nEn el evento \"el mayor secreto de los amigos\", te ha tocado regalar a:\n\n👤 Matias Ignacio Dominguez Donoso\n\n💰 Presupuesto: $10.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-19 00:10:03.028784', NULL, 0, 5, 11),
(805, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Matias Ignacio! \n\nEn el evento \"el mayor secreto de los amigos\", te ha tocado regalar a:\n\n👤 Cristiano Ronaldo\n\n💰 Presupuesto: $10.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-19 00:10:03.030393', NULL, 0, 4, 11),
(806, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Tony! \n\nEn el evento \"el mayor secreto de los amigos\", te ha tocado regalar a:\n\n👤 Pessi🥶 ㅤㅤㅤㅤㅤ\n\n💰 Presupuesto: $10.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-19 00:10:03.032882', NULL, 0, 9, 11),
(807, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola pailita! \n\nEn el evento \"el mayor secreto de los amigos\", te ha tocado regalar a:\n\n👤 Tony Stark\n\n💰 Presupuesto: $10.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-19 00:10:03.035066', NULL, 0, 47, 11),
(808, 'texto', '🎉 ¡El sorteo se ha realizado con éxito! 🎯\n\nEl organizador (yo) no participa en el intercambio.\nCada participante ha recibido un mensaje privado con su asignación. 🤫\n\n¡Que empiece la diversión! 🎁', NULL, '2025-11-19 00:10:03.036199', NULL, 0, 135, 11),
(809, 'sistema', '🎉 Se creó el evento “the last of amigos secretos”.', NULL, '2025-11-19 00:18:07.249305', NULL, 0, 136, 11),
(810, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Cristiano! \n\nEn el evento \"the last of amigos secretos\", te ha tocado regalar a:\n\n👤 Matias Ignacio Dominguez Donoso\n\n💰 Presupuesto: $2.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-19 00:18:12.121722', NULL, 0, 2, 11),
(811, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Pessi🥶! \n\nEn el evento \"the last of amigos secretos\", te ha tocado regalar a:\n\n👤 Tony Stark\n\n💰 Presupuesto: $2.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-19 00:18:12.126980', NULL, 0, 5, 11),
(812, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Matias Ignacio! \n\nEn el evento \"the last of amigos secretos\", te ha tocado regalar a:\n\n👤 Pessi🥶 ㅤㅤㅤㅤㅤ\n\n💰 Presupuesto: $2.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-19 00:18:12.130815', NULL, 0, 4, 11),
(813, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Tony! \n\nEn el evento \"the last of amigos secretos\", te ha tocado regalar a:\n\n👤 pailita el caati\n\n💰 Presupuesto: $2.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-19 00:18:12.135675', NULL, 0, 9, 11),
(814, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola pailita! \n\nEn el evento \"the last of amigos secretos\", te ha tocado regalar a:\n\n👤 Cristiano Ronaldo\n\n💰 Presupuesto: $2.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-19 00:18:12.142900', NULL, 0, 47, 11),
(815, 'texto', '🎉 ¡El sorteo se ha realizado con éxito! 🎯\n\nEl organizador (yo) no participa en el intercambio.\nCada participante ha recibido un mensaje privado con su asignación. 🤫\n\n¡Que empiece la diversión! 🎁', NULL, '2025-11-19 00:18:12.145376', NULL, 0, 136, 11),
(816, 'texto', 'holi', NULL, '2025-11-19 00:23:17.048227', NULL, 0, 9, 11),
(817, 'sistema', '🎉 Se creó el evento “the secret friends”.', NULL, '2025-11-19 00:24:14.989259', NULL, 0, 137, 11),
(818, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Cristiano! \n\nEn el evento \"the secret friends\", te ha tocado regalar a:\n\n👤 Matias Ignacio Dominguez Donoso\n\n💰 Presupuesto: $12.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-19 00:24:19.161608', NULL, 0, 2, 11),
(819, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Pessi🥶! \n\nEn el evento \"the secret friends\", te ha tocado regalar a:\n\n👤 pailita el caati\n\n💰 Presupuesto: $12.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-19 00:24:19.173991', NULL, 0, 5, 11),
(820, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Matias Ignacio! \n\nEn el evento \"the secret friends\", te ha tocado regalar a:\n\n👤 Tony Stark\n\n💰 Presupuesto: $12.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-19 00:24:19.182606', NULL, 0, 4, 11),
(821, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Tony! \n\nEn el evento \"the secret friends\", te ha tocado regalar a:\n\n👤 Pessi🥶 ㅤㅤㅤㅤㅤ\n\n💰 Presupuesto: $12.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-19 00:24:19.185822', NULL, 0, 9, 11),
(822, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola pailita! \n\nEn el evento \"the secret friends\", te ha tocado regalar a:\n\n👤 Cristiano Ronaldo\n\n💰 Presupuesto: $12.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-19 00:24:19.188186', NULL, 0, 47, 11),
(823, 'texto', '🎉 ¡El sorteo se ha realizado con éxito! 🎯\n\nEl organizador (yo) no participa en el intercambio.\nCada participante ha recibido un mensaje privado con su asignación. 🤫\n\n¡Que empiece la diversión! 🎁', NULL, '2025-11-19 00:24:19.189766', NULL, 0, 137, 11),
(824, 'sistema', '🎉 Se creó el evento “amihiowae”.', NULL, '2025-11-19 00:43:15.764628', NULL, 0, 138, 11),
(825, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Cristiano! \n\nEn el evento \"amihiowae\", te ha tocado regalar a:\n\n👤 pailita el caati\n\n🔗 Ver perfil y wishlist: http://localhost:8000/u/pailita69/\n\n💰 Presupuesto: $123.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-19 00:43:19.876362', NULL, 0, 2, 11),
(826, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Pessi🥶! \n\nEn el evento \"amihiowae\", te ha tocado regalar a:\n\n👤 Matias Ignacio Dominguez Donoso\n\n🔗 Ver perfil y wishlist: http://localhost:8000/u/matysepsi/\n\n💰 Presupuesto: $123.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-19 00:43:19.901417', NULL, 0, 5, 11),
(827, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Matias Ignacio! \n\nEn el evento \"amihiowae\", te ha tocado regalar a:\n\n👤 Cristiano Ronaldo\n\n🔗 Ver perfil y wishlist: http://localhost:8000/u/cristiano/\n\n💰 Presupuesto: $123.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-19 00:43:19.919491', NULL, 0, 4, 11),
(828, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Tony! \n\nEn el evento \"amihiowae\", te ha tocado regalar a:\n\n👤 Pessi🥶 ㅤㅤㅤㅤㅤ\n\n🔗 Ver perfil y wishlist: http://localhost:8000/u/pessi/\n\n💰 Presupuesto: $123.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-19 00:43:19.924936', NULL, 0, 9, 11),
(829, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola pailita! \n\nEn el evento \"amihiowae\", te ha tocado regalar a:\n\n👤 Tony Stark\n\n🔗 Ver perfil y wishlist: http://localhost:8000/u/tonystark/\n\n💰 Presupuesto: $123.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-19 00:43:19.933165', NULL, 0, 47, 11),
(830, 'texto', '🎉 ¡El sorteo se ha realizado con éxito! 🎯\n\nEl organizador (yo) no participa en el intercambio.\nCada participante ha recibido un mensaje privado con su asignación. 🤫\n\n¡Que empiece la diversión! 🎁', NULL, '2025-11-19 00:43:19.942336', NULL, 0, 138, 11),
(831, 'sistema', '🎉 Se creó el evento “chinchimaldi”.', NULL, '2025-11-19 00:48:47.860547', NULL, 0, 139, 11),
(832, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Cristiano! \n\nEn el evento \"chinchimaldi\", te ha tocado regalar a:\n\n👤 Tony Stark\n\n🔗 Ver perfil y wishlist: http://localhost:8000/u/tonystark/\n\n💰 Presupuesto: $1231.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-19 00:48:51.237383', NULL, 0, 2, 11),
(833, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Pessi🥶! \n\nEn el evento \"chinchimaldi\", te ha tocado regalar a:\n\n👤 Cristiano Ronaldo\n\n🔗 Ver perfil y wishlist: http://localhost:8000/u/cristiano/\n\n💰 Presupuesto: $1231.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-19 00:48:51.242770', NULL, 0, 5, 11),
(834, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Matias Ignacio! \n\nEn el evento \"chinchimaldi\", te ha tocado regalar a:\n\n👤 Pessi🥶 ㅤㅤㅤㅤㅤ\n\n🔗 Ver perfil y wishlist: http://localhost:8000/u/pessi/\n\n💰 Presupuesto: $1231.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-19 00:48:51.247930', NULL, 0, 4, 11),
(835, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Tony! \n\nEn el evento \"chinchimaldi\", te ha tocado regalar a:\n\n👤 pailita el caati\n\n🔗 Ver perfil y wishlist: http://localhost:8000/u/pailita69/\n\n💰 Presupuesto: $1231.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-19 00:48:51.258700', NULL, 0, 9, 11),
(836, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola pailita! \n\nEn el evento \"chinchimaldi\", te ha tocado regalar a:\n\n👤 Matias Ignacio Dominguez Donoso\n\n🔗 Ver perfil y wishlist: http://localhost:8000/u/matysepsi/\n\n💰 Presupuesto: $1231.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-19 00:48:51.275344', NULL, 0, 47, 11),
(837, 'texto', '🎉 ¡El sorteo se ha realizado con éxito! 🎯\n\nEl organizador (yo) no participa en el intercambio.\nCada participante ha recibido un mensaje privado con su asignación. 🤫\n\n¡Que empiece la diversión! 🎁', NULL, '2025-11-19 00:48:51.292006', NULL, 0, 139, 11),
(838, 'sistema', '🎉 Se creó el evento “ultima confirmacion”.', NULL, '2025-11-19 00:52:59.917071', NULL, 0, 140, 11),
(839, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Cristiano! \n\nEn el evento \"ultima confirmacion\", te ha tocado regalar a:\n\n👤 Pessi🥶 ㅤㅤㅤㅤㅤ\n\n🔗 Ver perfil y wishlist: http://localhost:8000/u/pessi/\n\n💰 Presupuesto: $777.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-19 00:53:02.930156', NULL, 0, 2, 11),
(840, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Pessi🥶! \n\nEn el evento \"ultima confirmacion\", te ha tocado regalar a:\n\n👤 Matias Ignacio Dominguez Donoso\n\n🔗 Ver perfil y wishlist: http://localhost:8000/u/matysepsi/\n\n💰 Presupuesto: $777.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-19 00:53:02.942613', NULL, 0, 5, 11),
(841, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Matias Ignacio! \n\nEn el evento \"ultima confirmacion\", te ha tocado regalar a:\n\n👤 pailita el caati\n\n🔗 Ver perfil y wishlist: http://localhost:8000/u/pailita69/\n\n💰 Presupuesto: $777.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-19 00:53:02.948284', NULL, 0, 4, 11),
(842, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Tony! \n\nEn el evento \"ultima confirmacion\", te ha tocado regalar a:\n\n👤 Cristiano Ronaldo\n\n🔗 Ver perfil y wishlist: http://localhost:8000/u/cristiano/\n\n💰 Presupuesto: $777.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-19 00:53:02.950949', NULL, 0, 9, 11),
(843, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola pailita! \n\nEn el evento \"ultima confirmacion\", te ha tocado regalar a:\n\n👤 Tony Stark\n\n🔗 Ver perfil y wishlist: http://localhost:8000/u/tonystark/\n\n💰 Presupuesto: $777.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-19 00:53:02.955091', NULL, 0, 47, 11),
(844, 'texto', '🎉 ¡El sorteo se ha realizado con éxito! 🎯\n\nEl organizador (yo) no participa en el intercambio.\nCada participante ha recibido un mensaje privado con su asignación. 🤫\n\n¡Que empiece la diversión! 🎁', NULL, '2025-11-19 00:53:02.957055', NULL, 0, 140, 11),
(845, 'texto', 'que', NULL, '2025-11-19 01:38:54.778773', NULL, 0, 47, 11),
(846, 'texto', 'porque no hablan', NULL, '2025-11-19 01:39:03.193000', NULL, 0, 45, 11),
(847, 'texto', 'jiji', NULL, '2025-11-19 01:40:06.357352', NULL, 0, 45, 11),
(848, 'sistema', '🎉 Se creó el evento “te las of us”.', NULL, '2025-11-21 00:47:15.675769', NULL, 0, 141, 11),
(849, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Cristiano! \n\nEn el evento \"te las of us\", te ha tocado regalar a:\n\n👤 Matias Ignacio Dominguez Donoso\n\n🔗 Ver perfil y wishlist: http://localhost:8000/u/matysepsi/\n\n💰 Presupuesto: $1231.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-21 00:47:18.633767', NULL, 0, 2, 11),
(850, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Pessi🥶! \n\nEn el evento \"te las of us\", te ha tocado regalar a:\n\n👤 pailita el caati\n\n🔗 Ver perfil y wishlist: http://localhost:8000/u/pailita69/\n\n💰 Presupuesto: $1231.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-21 00:47:18.639096', NULL, 0, 5, 11),
(851, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Matias Ignacio! \n\nEn el evento \"te las of us\", te ha tocado regalar a:\n\n👤 Pessi🥶 ㅤㅤㅤㅤㅤ\n\n🔗 Ver perfil y wishlist: http://localhost:8000/u/pessi/\n\n💰 Presupuesto: $1231.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-21 00:47:18.642095', NULL, 0, 4, 11),
(852, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Tony! \n\nEn el evento \"te las of us\", te ha tocado regalar a:\n\n👤 Cristiano Ronaldo\n\n🔗 Ver perfil y wishlist: http://localhost:8000/u/cristiano/\n\n💰 Presupuesto: $1231.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-21 00:47:18.645642', NULL, 0, 9, 11),
(853, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola pailita! \n\nEn el evento \"te las of us\", te ha tocado regalar a:\n\n👤 Tony Stark\n\n🔗 Ver perfil y wishlist: http://localhost:8000/u/tonystark/\n\n💰 Presupuesto: $1231.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-21 00:47:18.649586', NULL, 0, 47, 11),
(854, 'texto', '🎉 ¡El sorteo se ha realizado con éxito! 🎯\n\nEl organizador (yo) no participa en el intercambio.\nCada participante ha recibido un mensaje privado con su asignación. 🤫\n\n¡Que empiece la diversión! 🎁', NULL, '2025-11-21 00:47:18.653640', NULL, 0, 141, 11),
(855, 'sistema', '🎉 Se creó el evento “prueba”.', NULL, '2025-11-21 00:58:26.943253', NULL, 0, 142, 11),
(856, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Cristiano! \n\nEn el evento \"prueba\", te ha tocado regalar a:\n\n👤 Tony Stark\n\n🔗 Ver perfil y wishlist: http://localhost:8000/u/tonystark/\n\n💰 Presupuesto: $12313.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-21 01:19:05.336146', NULL, 0, 2, 11),
(857, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Pessi🥶! \n\nEn el evento \"prueba\", te ha tocado regalar a:\n\n👤 pailita el caati\n\n🔗 Ver perfil y wishlist: http://localhost:8000/u/pailita69/\n\n💰 Presupuesto: $12313.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-21 01:19:05.344295', NULL, 0, 5, 11),
(858, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Matias Ignacio! \n\nEn el evento \"prueba\", te ha tocado regalar a:\n\n👤 Pessi🥶 ㅤㅤㅤㅤㅤ\n\n🔗 Ver perfil y wishlist: http://localhost:8000/u/pessi/\n\n💰 Presupuesto: $12313.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-21 01:19:05.363250', NULL, 0, 4, 11),
(859, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Tony! \n\nEn el evento \"prueba\", te ha tocado regalar a:\n\n👤 Matias Ignacio Dominguez Donoso\n\n🔗 Ver perfil y wishlist: http://localhost:8000/u/matysepsi/\n\n💰 Presupuesto: $12313.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-21 01:19:05.371493', NULL, 0, 9, 11),
(860, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola pailita! \n\nEn el evento \"prueba\", te ha tocado regalar a:\n\n👤 Cristiano Ronaldo\n\n🔗 Ver perfil y wishlist: http://localhost:8000/u/cristiano/\n\n💰 Presupuesto: $12313.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-21 01:19:05.381169', NULL, 0, 47, 11),
(861, 'texto', '🎉 ¡El sorteo se ha realizado con éxito! 🎯\n\nEl organizador (yo) no participa en el intercambio.\nCada participante ha recibido un mensaje privado con su asignación. 🤫\n\n¡Que empiece la diversión! 🎁', NULL, '2025-11-21 01:19:05.386847', NULL, 0, 142, 11),
(862, 'sistema', '🎉 Se creó el evento “the smling friend”.', NULL, '2025-11-21 01:19:25.801893', NULL, 0, 143, 11),
(863, 'sistema', '🎉 Se creó el evento “????”.', NULL, '2025-11-21 01:22:40.886363', NULL, 0, 144, 11),
(864, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Cristiano! \n\nEn el evento \"????\", te ha tocado regalar a:\n\n👤 Matias Ignacio Dominguez Donoso\n\n🔗 Ver perfil y wishlist: http://localhost:8000/u/matysepsi/\n\n💰 Presupuesto: $1231.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-21 01:53:26.213139', NULL, 0, 2, 11),
(865, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Pessi🥶! \n\nEn el evento \"????\", te ha tocado regalar a:\n\n👤 pailita el caati\n\n🔗 Ver perfil y wishlist: http://localhost:8000/u/pailita69/\n\n💰 Presupuesto: $1231.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-21 01:53:26.217687', NULL, 0, 5, 11),
(866, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Matias Ignacio! \n\nEn el evento \"????\", te ha tocado regalar a:\n\n👤 Tony Stark\n\n🔗 Ver perfil y wishlist: http://localhost:8000/u/tonystark/\n\n💰 Presupuesto: $1231.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-21 01:53:26.220319', NULL, 0, 4, 11),
(867, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Tony! \n\nEn el evento \"????\", te ha tocado regalar a:\n\n👤 Pessi🥶 ㅤㅤㅤㅤㅤ\n\n🔗 Ver perfil y wishlist: http://localhost:8000/u/pessi/\n\n💰 Presupuesto: $1231.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-21 01:53:26.222658', NULL, 0, 9, 11),
(868, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola pailita! \n\nEn el evento \"????\", te ha tocado regalar a:\n\n👤 Cristiano Ronaldo\n\n🔗 Ver perfil y wishlist: http://localhost:8000/u/cristiano/\n\n💰 Presupuesto: $1231.00\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-21 01:53:26.225217', NULL, 0, 47, 11),
(869, 'texto', '🎉 ¡El sorteo se ha realizado con éxito! 🎯\n\nEl organizador (yo) no participa en el intercambio.\nCada participante ha recibido un mensaje privado con su asignación. 🤫\n\n¡Que empiece la diversión! 🎁', NULL, '2025-11-21 01:53:26.227058', NULL, 0, 144, 11),
(870, 'sistema', '🎉 **Se creó el evento “lets go !”**\n\n📅 **Fecha del intercambio:** 28/11/2025\n💰 **Presupuesto:** Libre\n\n¡Preparen sus wishlists! 🎁', NULL, '2025-11-21 02:14:46.624800', NULL, 0, 146, 11);
INSERT INTO `mensaje` (`mensaje_id`, `tipo`, `contenido`, `metadatos`, `creado_en`, `editado_en`, `eliminado`, `conversacion_id`, `id_usuario`) VALUES
(871, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Cristiano! \n\nEn el evento \"lets go !\", te ha tocado regalar a:\n\n👤 pailita el caati\n\n🔗 Ver perfil y wishlist: http://localhost:8000/u/pailita69/\n\n\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-21 02:15:00.803648', NULL, 0, 2, 11),
(872, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Pessi🥶! \n\nEn el evento \"lets go !\", te ha tocado regalar a:\n\n👤 Tony Stark\n\n🔗 Ver perfil y wishlist: http://localhost:8000/u/tonystark/\n\n\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-21 02:15:00.810865', NULL, 0, 5, 11),
(873, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Matias Ignacio! \n\nEn el evento \"lets go !\", te ha tocado regalar a:\n\n👤 Cristiano Ronaldo\n\n🔗 Ver perfil y wishlist: http://localhost:8000/u/cristiano/\n\n\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-21 02:15:00.820667', NULL, 0, 4, 11),
(874, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola Tony! \n\nEn el evento \"lets go !\", te ha tocado regalar a:\n\n👤 Matias Ignacio Dominguez Donoso\n\n🔗 Ver perfil y wishlist: http://localhost:8000/u/matysepsi/\n\n\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-21 02:15:00.828462', NULL, 0, 9, 11),
(875, 'sistema', '🎁 *Amigo Secreto - Asignación*\n\n¡Hola pailita! \n\nEn el evento \"lets go !\", te ha tocado regalar a:\n\n👤 Pessi🥶 ㅤㅤㅤㅤㅤ\n\n🔗 Ver perfil y wishlist: http://localhost:8000/u/pessi/\n\n\n\n💝 Recuerda mantener el secreto hasta el día del intercambio.\n📝 Puedes revisar los detalles del evento en el chat grupal.', NULL, '2025-11-21 02:15:00.836412', NULL, 0, 47, 11),
(876, 'texto', '🎉 ¡El sorteo se ha realizado con éxito! 🎯\n\nEl organizador (yo) no participa en el intercambio.\nCada participante ha recibido un mensaje privado con su asignación. 🤫\n\n¡Que empiece la diversión! 🎁', NULL, '2025-11-21 02:15:00.843947', NULL, 0, 146, 11),
(877, 'sistema', '🎉 Se creó el evento “ltest goooo”\n\n📅 Fecha del intercambio: 28/11/2025\n💰 Presupuesto: $123\n\n¡Preparen sus wishlists! 🎁', NULL, '2025-11-21 02:17:36.232473', NULL, 0, 147, 11),
(878, 'texto', '/sorteo pizaa 3 sushi 2', NULL, '2025-11-22 00:57:57.023469', NULL, 0, 47, 11),
(879, 'texto', '/grafico Pizza 5, Hamburguesas 3, Sushi 8', NULL, '2025-11-22 00:58:13.886617', NULL, 0, 47, 11),
(880, 'sistema', '📊 Resultados de la votación:', '{\"tipo\": \"chart_card\", \"chart_url\": \"https://quickchart.io/chart?c=%7B%22type%22%3A%22outlabeledPie%22%2C%22data%22%3A%7B%22labels%22%3A%5B%22Pizza%22%2C%22Hamburguesas%22%2C%22Sushi%22%5D%2C%22datasets%22%3A%5B%7B%22data%22%3A%5B5%2C3%2C8%5D%2C%22backgroundColor%22%3A%5B%22%23FF6384%22%2C%22%2336A2EB%22%2C%22%23FFCE56%22%2C%22%234BC0C0%22%2C%22%239966FF%22%2C%22%23FF9F40%22%5D%7D%5D%7D%2C%22options%22%3A%7B%22plugins%22%3A%7B%22legend%22%3Afalse%2C%22outlabels%22%3A%7B%22text%22%3A%22%25l+%25p%22%2C%22color%22%3A%22white%22%2C%22stretch%22%3A30%2C%22font%22%3A%7B%22minSize%22%3A12%7D%7D%7D%7D%7D&w=500&h=300&bkg=white&devicePixelRatio=1.0&f=png&v=2.9.4\"}', '2025-11-22 00:58:13.903608', NULL, 0, 47, 11),
(881, 'texto', '/grafico Pizza 5, Hamburguesas 3, Sushi 8', NULL, '2025-11-22 00:59:00.157975', NULL, 0, 47, 11),
(882, 'sistema', '📊 Resultados de la votación:', '{\"tipo\": \"chart_card\", \"chart_url\": \"https://quickchart.io/chart?c=%7B%22type%22%3A%22outlabeledPie%22%2C%22data%22%3A%7B%22labels%22%3A%5B%22Pizza%22%2C%22Hamburguesas%22%2C%22Sushi%22%5D%2C%22datasets%22%3A%5B%7B%22data%22%3A%5B5%2C3%2C8%5D%2C%22backgroundColor%22%3A%5B%22%23FF6384%22%2C%22%2336A2EB%22%2C%22%23FFCE56%22%2C%22%234BC0C0%22%2C%22%239966FF%22%2C%22%23FF9F40%22%5D%7D%5D%7D%2C%22options%22%3A%7B%22plugins%22%3A%7B%22legend%22%3Afalse%2C%22outlabels%22%3A%7B%22text%22%3A%22%25l+%25p%22%2C%22color%22%3A%22white%22%2C%22stretch%22%3A30%2C%22font%22%3A%7B%22minSize%22%3A12%7D%7D%7D%7D%7D&w=500&h=300&bkg=white&devicePixelRatio=1.0&f=png&v=2.9.4\"}', '2025-11-22 00:59:00.177006', NULL, 0, 47, 11),
(883, 'texto', '/grafico elias 1 , matias 2, javier 777', NULL, '2025-11-22 01:03:20.912034', NULL, 0, 47, 11),
(884, 'texto', '/grafico elias 1 , matias 2, javier 777', NULL, '2025-11-22 01:03:23.641792', NULL, 0, 47, 11),
(885, 'sistema', '📊 Resultados de la votación:', '{\"tipo\": \"chart_card\", \"chart_url\": \"https://quickchart.io/chart?c=%7B%22type%22%3A%20%22outlabeledPie%22%2C%20%22data%22%3A%20%7B%22labels%22%3A%20%5B%22elias%22%2C%20%22matias%22%2C%20%22javier%22%5D%2C%20%22datasets%22%3A%20%5B%7B%22data%22%3A%20%5B1%2C%202%2C%20777%5D%2C%20%22backgroundColor%22%3A%20%5B%22%23FF6384%22%2C%20%22%2336A2EB%22%2C%20%22%23FFCE56%22%2C%20%22%234BC0C0%22%2C%20%22%239966FF%22%2C%20%22%23FF9F40%22%5D%7D%5D%7D%2C%20%22options%22%3A%20%7B%22plugins%22%3A%20%7B%22legend%22%3A%20false%2C%20%22outlabels%22%3A%20%7B%22text%22%3A%20%22%25l%20%25p%22%2C%20%22color%22%3A%20%22white%22%2C%20%22stretch%22%3A%2030%2C%20%22font%22%3A%20%7B%22minSize%22%3A%2012%2C%20%22maxSize%22%3A%2018%7D%7D%7D%7D%7D&w=500&h=300&bkg=white\"}', '2025-11-22 01:03:24.687876', NULL, 0, 47, 11),
(886, 'sistema', '📊 Resultados de la votación:', '{\"tipo\": \"chart_card\", \"chart_url\": \"https://quickchart.io/chart?c=%7B%22type%22%3A%20%22outlabeledPie%22%2C%20%22data%22%3A%20%7B%22labels%22%3A%20%5B%22elias%22%2C%20%22matias%22%2C%20%22javier%22%5D%2C%20%22datasets%22%3A%20%5B%7B%22data%22%3A%20%5B1%2C%202%2C%20777%5D%2C%20%22backgroundColor%22%3A%20%5B%22%23FF6384%22%2C%20%22%2336A2EB%22%2C%20%22%23FFCE56%22%2C%20%22%234BC0C0%22%2C%20%22%239966FF%22%2C%20%22%23FF9F40%22%5D%7D%5D%7D%2C%20%22options%22%3A%20%7B%22plugins%22%3A%20%7B%22legend%22%3A%20false%2C%20%22outlabels%22%3A%20%7B%22text%22%3A%20%22%25l%20%25p%22%2C%20%22color%22%3A%20%22white%22%2C%20%22stretch%22%3A%2030%2C%20%22font%22%3A%20%7B%22minSize%22%3A%2012%2C%20%22maxSize%22%3A%2018%7D%7D%7D%7D%7D&w=500&h=300&bkg=white\"}', '2025-11-22 01:03:27.003081', NULL, 0, 47, 11),
(887, 'texto', '/grafico pizza 2, sushi 3', NULL, '2025-11-22 01:38:41.485173', NULL, 0, 47, 11),
(888, 'sistema', '📊 Resultados de la votación:', '{\"tipo\": \"chart_card\", \"chart_url\": \"https://quickchart.io/chart?c=%7B%22type%22%3A%22outlabeledPie%22%2C%22data%22%3A%7B%22labels%22%3A%5B%22pizza%22%2C%22sushi%22%5D%2C%22datasets%22%3A%5B%7B%22data%22%3A%5B2%2C3%5D%2C%22backgroundColor%22%3A%5B%22%23FF6384%22%2C%22%2336A2EB%22%2C%22%23FFCE56%22%2C%22%234BC0C0%22%2C%22%239966FF%22%2C%22%23FF9F40%22%5D%7D%5D%7D%2C%22options%22%3A%7B%22plugins%22%3A%7B%22legend%22%3Afalse%2C%22outlabels%22%3A%7B%22text%22%3A%22%25l+%25p%22%2C%22color%22%3A%22white%22%2C%22stretch%22%3A30%2C%22font%22%3A%7B%22minSize%22%3A12%7D%7D%7D%7D%7D&w=500&h=300&bkg=white&devicePixelRatio=1.0&f=png&v=2.9.4\"}', '2025-11-22 01:38:41.506491', NULL, 0, 47, 11),
(889, 'texto', '/grafico pizza 2, sushi 3', NULL, '2025-11-22 01:48:38.641085', NULL, 0, 47, 11),
(890, 'sistema', '📊 Resultados de la votación:', '{\"tipo\": \"chart_card\", \"chart_url\": \"https://quickchart.io/chart?c=%7B%22type%22%3A%20%22outlabeledPie%22%2C%20%22data%22%3A%20%7B%22labels%22%3A%20%5B%22pizza%22%2C%20%22sushi%22%5D%2C%20%22datasets%22%3A%20%5B%7B%22data%22%3A%20%5B2%2C%203%5D%2C%20%22backgroundColor%22%3A%20%5B%22%23FF6384%22%2C%20%22%2336A2EB%22%2C%20%22%23FFCE56%22%2C%20%22%234BC0C0%22%2C%20%22%239966FF%22%2C%20%22%23FF9F40%22%5D%7D%5D%7D%2C%20%22options%22%3A%20%7B%22plugins%22%3A%20%7B%22legend%22%3A%20false%2C%20%22outlabels%22%3A%20%7B%22text%22%3A%20%22%25l%20%25p%22%2C%20%22color%22%3A%20%22white%22%2C%20%22stretch%22%3A%2030%2C%20%22font%22%3A%20%7B%22minSize%22%3A%2012%7D%7D%7D%7D%7D&w=500&h=300&bkg=white\"}', '2025-11-22 01:48:38.667164', NULL, 0, 47, 11),
(891, 'texto', '/grafico pizza 2, sushi 3', NULL, '2025-11-22 02:03:34.148113', NULL, 0, 47, 11),
(892, 'sistema', '📊 Resultados de la votación:', '{\"tipo\": \"chart_card\", \"chart_url\": \"https://quickchart.io/chart?c=%7B%22type%22%3A%20%22pie%22%2C%20%22data%22%3A%20%7B%22labels%22%3A%20%5B%22pizza%22%2C%20%22sushi%22%5D%2C%20%22datasets%22%3A%20%5B%7B%22data%22%3A%20%5B2%2C%203%5D%2C%20%22backgroundColor%22%3A%20%5B%22%23FF6384%22%2C%20%22%2336A2EB%22%2C%20%22%23FFCE56%22%2C%20%22%234BC0C0%22%2C%20%22%239966FF%22%2C%20%22%23FF9F40%22%5D%2C%20%22borderWidth%22%3A%200%7D%5D%7D%2C%20%22options%22%3A%20%7B%22plugins%22%3A%20%7B%22datalabels%22%3A%20%7B%22color%22%3A%20%22white%22%2C%20%22font%22%3A%20%7B%22weight%22%3A%20%22bold%22%2C%20%22size%22%3A%2020%7D%7D%2C%20%22legend%22%3A%20%7B%22display%22%3A%20true%2C%20%22position%22%3A%20%22right%22%7D%7D%7D%7D&w=500&h=300&v=2.9.4\"}', '2025-11-22 02:03:34.166727', NULL, 0, 47, 11),
(893, 'texto', 'asda', NULL, '2025-11-22 02:03:48.598452', NULL, 0, 47, 11),
(894, 'texto', '/grafico pizza 2, sushi 3', NULL, '2025-11-22 02:03:58.446359', NULL, 0, 9, 11),
(895, 'sistema', '📊 Resultados de la votación:', '{\"tipo\": \"chart_card\", \"chart_url\": \"https://quickchart.io/chart?c=%7B%22type%22%3A%20%22pie%22%2C%20%22data%22%3A%20%7B%22labels%22%3A%20%5B%22pizza%22%2C%20%22sushi%22%5D%2C%20%22datasets%22%3A%20%5B%7B%22data%22%3A%20%5B2%2C%203%5D%2C%20%22backgroundColor%22%3A%20%5B%22%23FF6384%22%2C%20%22%2336A2EB%22%2C%20%22%23FFCE56%22%2C%20%22%234BC0C0%22%2C%20%22%239966FF%22%2C%20%22%23FF9F40%22%5D%2C%20%22borderWidth%22%3A%200%7D%5D%7D%2C%20%22options%22%3A%20%7B%22plugins%22%3A%20%7B%22datalabels%22%3A%20%7B%22color%22%3A%20%22white%22%2C%20%22font%22%3A%20%7B%22weight%22%3A%20%22bold%22%2C%20%22size%22%3A%2020%7D%7D%2C%20%22legend%22%3A%20%7B%22display%22%3A%20true%2C%20%22position%22%3A%20%22right%22%7D%7D%7D%7D&w=500&h=300&v=2.9.4\"}', '2025-11-22 02:03:58.463431', NULL, 0, 9, 11),
(896, 'texto', '/grafico pizza 2, sushi 3', NULL, '2025-11-22 02:10:39.367451', NULL, 0, 9, 11),
(897, 'sistema', '📊 Resultados de la votación:', '{\"tipo\": \"chart_card\", \"chart_url\": \"https://quickchart.io/chart?c=%7B%22type%22%3A%20%22pie%22%2C%20%22data%22%3A%20%7B%22labels%22%3A%20%5B%22pizza%22%2C%20%22sushi%22%5D%2C%20%22datasets%22%3A%20%5B%7B%22data%22%3A%20%5B2%2C%203%5D%2C%20%22backgroundColor%22%3A%20%5B%22%23FF6384%22%2C%20%22%2336A2EB%22%2C%20%22%23FFCE56%22%2C%20%22%234BC0C0%22%2C%20%22%239966FF%22%2C%20%22%23FF9F40%22%5D%2C%20%22borderWidth%22%3A%200%7D%5D%7D%2C%20%22options%22%3A%20%7B%22plugins%22%3A%20%7B%22datalabels%22%3A%20%7B%22color%22%3A%20%22white%22%2C%20%22font%22%3A%20%7B%22weight%22%3A%20%22bold%22%2C%20%22size%22%3A%2020%7D%7D%2C%20%22legend%22%3A%20%7B%22display%22%3A%20true%2C%20%22position%22%3A%20%22right%22%7D%7D%7D%7D&w=500&h=300&v=2.9.4\"}', '2025-11-22 02:10:39.384858', NULL, 0, 9, 11),
(898, 'texto', 'asd', NULL, '2025-11-22 02:13:06.308436', NULL, 0, 9, 11),
(899, 'texto', '/grafico pizza 2, sushi 3', NULL, '2025-11-22 02:13:12.488626', NULL, 0, 9, 11),
(900, 'sistema', '📊 Resultados de la votación:', '{\"tipo\": \"chart_card\", \"chart_url\": \"https://quickchart.io/chart?c=%7B%22type%22%3A%20%22pie%22%2C%20%22data%22%3A%20%7B%22labels%22%3A%20%5B%22pizza%22%2C%20%22sushi%22%5D%2C%20%22datasets%22%3A%20%5B%7B%22data%22%3A%20%5B2%2C%203%5D%2C%20%22backgroundColor%22%3A%20%5B%22%23FF6384%22%2C%20%22%2336A2EB%22%2C%20%22%23FFCE56%22%2C%20%22%234BC0C0%22%2C%20%22%239966FF%22%2C%20%22%23FF9F40%22%5D%2C%20%22borderWidth%22%3A%200%7D%5D%7D%2C%20%22options%22%3A%20%7B%22plugins%22%3A%20%7B%22legend%22%3A%20%7B%22position%22%3A%20%22right%22%2C%20%22labels%22%3A%20%7B%22fontColor%22%3A%20%22black%22%7D%7D%2C%20%22datalabels%22%3A%20%7B%22color%22%3A%20%22white%22%2C%20%22font%22%3A%20%7B%22weight%22%3A%20%22bold%22%2C%20%22size%22%3A%2014%7D%7D%7D%7D%7D&w=400&h=250&v=2.9.4\"}', '2025-11-22 02:13:12.508692', NULL, 0, 9, 11),
(901, 'texto', '/grafico pizza 2, sushi 3', NULL, '2025-11-22 02:17:03.342557', NULL, 0, 9, 11),
(902, 'sistema', '📊 Resultados de la votación:', '{\"tipo\": \"chart_card\", \"chart_url\": \"https://quickchart.io/chart?c=%7B%22type%22%3A%20%22pie%22%2C%20%22data%22%3A%20%7B%22labels%22%3A%20%5B%22pizza%22%2C%20%22sushi%22%5D%2C%20%22datasets%22%3A%20%5B%7B%22data%22%3A%20%5B2%2C%203%5D%2C%20%22backgroundColor%22%3A%20%5B%22%23FF6384%22%2C%20%22%2336A2EB%22%2C%20%22%23FFCE56%22%2C%20%22%234BC0C0%22%2C%20%22%239966FF%22%2C%20%22%23FF9F40%22%5D%2C%20%22borderWidth%22%3A%200%7D%5D%7D%2C%20%22options%22%3A%20%7B%22plugins%22%3A%20%7B%22legend%22%3A%20%7B%22position%22%3A%20%22right%22%2C%20%22labels%22%3A%20%7B%22fontColor%22%3A%20%22black%22%7D%7D%2C%20%22datalabels%22%3A%20%7B%22color%22%3A%20%22white%22%2C%20%22font%22%3A%20%7B%22weight%22%3A%20%22bold%22%2C%20%22size%22%3A%2014%7D%7D%7D%7D%7D&w=400&h=250&v=2.9.4\"}', '2025-11-22 02:17:03.360341', NULL, 0, 9, 11),
(903, 'texto', '/grafico pizza 2, sushi 3', NULL, '2025-11-22 02:17:14.237320', NULL, 0, 9, 11),
(904, 'sistema', '📊 Resultados de la votación:', '{\"tipo\": \"chart_card\", \"chart_url\": \"https://quickchart.io/chart?c=%7B%22type%22%3A%20%22pie%22%2C%20%22data%22%3A%20%7B%22labels%22%3A%20%5B%22pizza%22%2C%20%22sushi%22%5D%2C%20%22datasets%22%3A%20%5B%7B%22data%22%3A%20%5B2%2C%203%5D%2C%20%22backgroundColor%22%3A%20%5B%22%23FF6384%22%2C%20%22%2336A2EB%22%2C%20%22%23FFCE56%22%2C%20%22%234BC0C0%22%2C%20%22%239966FF%22%2C%20%22%23FF9F40%22%5D%2C%20%22borderWidth%22%3A%200%7D%5D%7D%2C%20%22options%22%3A%20%7B%22plugins%22%3A%20%7B%22legend%22%3A%20%7B%22position%22%3A%20%22right%22%2C%20%22labels%22%3A%20%7B%22fontColor%22%3A%20%22black%22%7D%7D%2C%20%22datalabels%22%3A%20%7B%22color%22%3A%20%22white%22%2C%20%22font%22%3A%20%7B%22weight%22%3A%20%22bold%22%2C%20%22size%22%3A%2014%7D%7D%7D%7D%7D&w=400&h=250&v=2.9.4\"}', '2025-11-22 02:17:14.263358', NULL, 0, 9, 11),
(905, 'texto', '/grafico pizza 2, sushi 3', NULL, '2025-11-22 02:20:41.462823', NULL, 0, 9, 11),
(906, 'sistema', '📊 Resultados de la votación:', '{\"tipo\": \"chart_card\", \"chart_url\": \"https://quickchart.io/chart?c=%7B%22type%22%3A%20%22pie%22%2C%20%22data%22%3A%20%7B%22labels%22%3A%20%5B%22pizza%22%2C%20%22sushi%22%5D%2C%20%22datasets%22%3A%20%5B%7B%22data%22%3A%20%5B2%2C%203%5D%2C%20%22backgroundColor%22%3A%20%5B%22%23FF6384%22%2C%20%22%2336A2EB%22%2C%20%22%23FFCE56%22%2C%20%22%234BC0C0%22%2C%20%22%239966FF%22%2C%20%22%23FF9F40%22%5D%2C%20%22borderWidth%22%3A%200%7D%5D%7D%2C%20%22options%22%3A%20%7B%22plugins%22%3A%20%7B%22legend%22%3A%20%7B%22position%22%3A%20%22right%22%2C%20%22labels%22%3A%20%7B%22fontColor%22%3A%20%22black%22%7D%7D%2C%20%22datalabels%22%3A%20%7B%22color%22%3A%20%22white%22%2C%20%22font%22%3A%20%7B%22weight%22%3A%20%22bold%22%2C%20%22size%22%3A%2014%7D%7D%7D%7D%7D&w=400&h=250&v=2.9.4\"}', '2025-11-22 02:20:41.489690', NULL, 0, 9, 11),
(907, 'texto', '/grafico A 1, B 2', NULL, '2025-11-22 02:20:53.328034', NULL, 0, 9, 11),
(908, 'sistema', '📊 Resultados de la votación:', '{\"tipo\": \"chart_card\", \"chart_url\": \"https://quickchart.io/chart?c=%7B%22type%22%3A%20%22pie%22%2C%20%22data%22%3A%20%7B%22labels%22%3A%20%5B%22A%22%2C%20%22B%22%5D%2C%20%22datasets%22%3A%20%5B%7B%22data%22%3A%20%5B1%2C%202%5D%2C%20%22backgroundColor%22%3A%20%5B%22%23FF6384%22%2C%20%22%2336A2EB%22%2C%20%22%23FFCE56%22%2C%20%22%234BC0C0%22%2C%20%22%239966FF%22%2C%20%22%23FF9F40%22%5D%2C%20%22borderWidth%22%3A%200%7D%5D%7D%2C%20%22options%22%3A%20%7B%22plugins%22%3A%20%7B%22legend%22%3A%20%7B%22position%22%3A%20%22right%22%2C%20%22labels%22%3A%20%7B%22fontColor%22%3A%20%22black%22%7D%7D%2C%20%22datalabels%22%3A%20%7B%22color%22%3A%20%22white%22%2C%20%22font%22%3A%20%7B%22weight%22%3A%20%22bold%22%2C%20%22size%22%3A%2014%7D%7D%7D%7D%7D&w=400&h=250&v=2.9.4\"}', '2025-11-22 02:20:53.349070', NULL, 0, 9, 11),
(909, 'texto', '/grafico A 1, B 2', NULL, '2025-11-22 02:24:38.806256', NULL, 0, 9, 11),
(910, 'sistema', '📊 Resultados de la votación:', '{\"tipo\": \"chart_card\", \"chart_url\": \"https://quickchart.io/chart?c=%7B%22type%22%3A+%22pie%22%2C+%22data%22%3A+%7B%22labels%22%3A+%5B%22A%22%2C+%22B%22%5D%2C+%22datasets%22%3A+%5B%7B%22data%22%3A+%5B1%2C+2%5D%2C+%22backgroundColor%22%3A+%5B%22%23FF6384%22%2C+%22%2336A2EB%22%2C+%22%23FFCE56%22%2C+%22%234BC0C0%22%2C+%22%239966FF%22%2C+%22%23FF9F40%22%5D%2C+%22borderWidth%22%3A+0%7D%5D%7D%2C+%22options%22%3A+%7B%22plugins%22%3A+%7B%22legend%22%3A+%7B%22position%22%3A+%22right%22%2C+%22labels%22%3A+%7B%22fontColor%22%3A+%22black%22%7D%7D%2C+%22datalabels%22%3A+%7B%22color%22%3A+%22white%22%2C+%22font%22%3A+%7B%22weight%22%3A+%22bold%22%2C+%22size%22%3A+14%7D%7D%7D%7D%7D&w=500&h=300&bkg=white\"}', '2025-11-22 02:24:38.828679', NULL, 0, 9, 11),
(911, 'texto', '/grafico A 1, B 2', NULL, '2025-11-22 02:24:47.280997', NULL, 0, 9, 11),
(912, 'sistema', '📊 Resultados de la votación:', '{\"tipo\": \"chart_card\", \"chart_url\": \"https://quickchart.io/chart?c=%7B%22type%22%3A+%22pie%22%2C+%22data%22%3A+%7B%22labels%22%3A+%5B%22A%22%2C+%22B%22%5D%2C+%22datasets%22%3A+%5B%7B%22data%22%3A+%5B1%2C+2%5D%2C+%22backgroundColor%22%3A+%5B%22%23FF6384%22%2C+%22%2336A2EB%22%2C+%22%23FFCE56%22%2C+%22%234BC0C0%22%2C+%22%239966FF%22%2C+%22%23FF9F40%22%5D%2C+%22borderWidth%22%3A+0%7D%5D%7D%2C+%22options%22%3A+%7B%22plugins%22%3A+%7B%22legend%22%3A+%7B%22position%22%3A+%22right%22%2C+%22labels%22%3A+%7B%22fontColor%22%3A+%22black%22%7D%7D%2C+%22datalabels%22%3A+%7B%22color%22%3A+%22white%22%2C+%22font%22%3A+%7B%22weight%22%3A+%22bold%22%2C+%22size%22%3A+14%7D%7D%7D%7D%7D&w=500&h=300&bkg=white\"}', '2025-11-22 02:24:47.299455', NULL, 0, 9, 11),
(913, 'texto', '/grafico pizza 2, sushi 3', NULL, '2025-11-22 02:24:59.679958', NULL, 0, 9, 11),
(914, 'sistema', '📊 Resultados de la votación:', '{\"tipo\": \"chart_card\", \"chart_url\": \"https://quickchart.io/chart?c=%7B%22type%22%3A+%22pie%22%2C+%22data%22%3A+%7B%22labels%22%3A+%5B%22pizza%22%2C+%22sushi%22%5D%2C+%22datasets%22%3A+%5B%7B%22data%22%3A+%5B2%2C+3%5D%2C+%22backgroundColor%22%3A+%5B%22%23FF6384%22%2C+%22%2336A2EB%22%2C+%22%23FFCE56%22%2C+%22%234BC0C0%22%2C+%22%239966FF%22%2C+%22%23FF9F40%22%5D%2C+%22borderWidth%22%3A+0%7D%5D%7D%2C+%22options%22%3A+%7B%22plugins%22%3A+%7B%22legend%22%3A+%7B%22position%22%3A+%22right%22%2C+%22labels%22%3A+%7B%22fontColor%22%3A+%22black%22%7D%7D%2C+%22datalabels%22%3A+%7B%22color%22%3A+%22white%22%2C+%22font%22%3A+%7B%22weight%22%3A+%22bold%22%2C+%22size%22%3A+14%7D%7D%7D%7D%7D&w=500&h=300&bkg=white\"}', '2025-11-22 02:24:59.699418', NULL, 0, 9, 11),
(915, 'texto', '/grafico A 1, B 2', NULL, '2025-11-22 02:29:22.610271', NULL, 0, 9, 11),
(916, 'sistema', '📊 Resultados de la votación:', '{\"tipo\": \"chart_card\", \"chart_url\": \"https://quickchart.io/chart?c=%7B%22type%22%3A+%22pie%22%2C+%22data%22%3A+%7B%22labels%22%3A+%5B%22A%22%2C+%22B%22%5D%2C+%22datasets%22%3A+%5B%7B%22data%22%3A+%5B1%2C+2%5D%2C+%22backgroundColor%22%3A+%5B%22%23FF6384%22%2C+%22%2336A2EB%22%2C+%22%23FFCE56%22%2C+%22%234BC0C0%22%2C+%22%239966FF%22%2C+%22%23FF9F40%22%5D%2C+%22borderWidth%22%3A+0%7D%5D%7D%2C+%22options%22%3A+%7B%22plugins%22%3A+%7B%22legend%22%3A+%7B%22position%22%3A+%22right%22%2C+%22labels%22%3A+%7B%22fontColor%22%3A+%22black%22%2C+%22fontSize%22%3A+14%7D%7D%2C+%22datalabels%22%3A+%7B%22color%22%3A+%22white%22%2C+%22font%22%3A+%7B%22weight%22%3A+%22bold%22%2C+%22size%22%3A+16%7D%7D%7D%7D%7D&w=500&h=300&bkg=white\"}', '2025-11-22 02:29:22.627573', NULL, 0, 9, 11),
(917, 'texto', ':)', NULL, '2025-11-22 02:29:58.773324', NULL, 0, 47, 11),
(918, 'texto', ':)', NULL, '2025-11-22 02:30:05.503414', NULL, 0, 9, 11),
(919, 'texto', ':)', NULL, '2025-11-22 02:30:07.970371', NULL, 0, 4, 11),
(920, 'texto', ':)', NULL, '2025-11-22 02:30:10.512488', NULL, 0, 5, 11),
(921, 'texto', ':)', NULL, '2025-11-22 02:30:13.171953', NULL, 0, 2, 11),
(922, 'texto', ':)', NULL, '2025-11-22 02:30:22.082942', NULL, 0, 45, 11),
(923, 'texto', 'dejame tranquilo guatona culia', NULL, '2025-11-22 03:24:40.360226', NULL, 0, 2, 2),
(924, 'texto', 'eres como el ollo', NULL, '2025-11-25 01:28:46.586919', NULL, 0, 2, 11);

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
(4, 'solicitud_amistad', 'Nueva solicitud de amistad', 'Tia te envió una solicitud de amistad', '{\"type\": \"friend_request\", \"request_id\": \"34\", \"from_username\": \"tiaturbina\"}', 0, '2025-10-24 00:39:11.207645', NULL, 31),
(5, 'solicitud_amistad', 'Nueva solicitud de amistad', 'Pessi🥶 te envió una solicitud de amistad', '{\"type\": \"friend_request\", \"request_id\": \"35\", \"from_username\": \"pessi\"}', 0, '2025-10-24 00:39:45.921066', NULL, 1),
(6, 'solicitud_amistad', 'Nueva solicitud de amistad', 'Cristiano te envió una solicitud de amistad', '{\"type\": \"friend_request\", \"request_id\": \"36\", \"from_username\": \"cristiano\"}', 0, '2025-10-24 01:28:28.415475', NULL, 30),
(7, 'solicitud_amistad', 'Nueva solicitud de amistad', 'Tony te envió una solicitud de amistad', '{\"type\": \"friend_request\", \"request_id\": \"37\", \"from_username\": \"tonystark\"}', 0, '2025-10-24 01:35:38.579887', NULL, 30),
(8, 'evento_proximo', 'Evento importante', 'happy pagiona web — 29 Oct', '{\"fecha\": \"2025-10-29\", \"titulo\": \"happy pagiona web\", \"owner_id\": 4, \"evento_id\": 17}', 1, '2025-10-28 03:53:44.815129', '2025-10-28 03:56:27.212779', 2),
(9, 'evento_proximo', 'Evento importante', 'Halloweeen!!!! — 01 Nov', '{\"fecha\": \"2025-11-01\", \"titulo\": \"Halloweeen!!!!\", \"owner_id\": 2, \"evento_id\": 18}', 1, '2025-10-28 03:57:04.994640', '2025-10-28 03:57:13.712964', 4),
(10, 'evento_proximo', 'Evento importante', 'Halloweeen!!!! — 01 Nov', '{\"fecha\": \"2025-11-01\", \"titulo\": \"Halloweeen!!!!\", \"owner_id\": 2, \"evento_id\": 18}', 1, '2025-10-28 23:45:10.032710', '2025-10-28 23:45:32.170048', 11),
(11, 'evento_proximo', 'Evento importante', 'happy pagiona web — 29 Oct', '{\"fecha\": \"2025-10-29\", \"titulo\": \"happy pagiona web\", \"owner_id\": 4, \"evento_id\": 17}', 1, '2025-10-28 23:45:10.032745', '2025-10-28 23:45:32.170048', 11),
(14, 'evento_proximo', 'Evento importante', 'prrrrueba — 29 Oct', '{\"fecha\": \"2025-10-29\", \"titulo\": \"prrrrueba\", \"owner_id\": 4, \"evento_id\": 19}', 1, '2025-10-28 23:52:21.921749', '2025-10-28 23:52:58.346325', 2),
(15, 'evento_proximo', 'Evento importante', 'prrrrueba — 29 Oct', '{\"fecha\": \"2025-10-29\", \"titulo\": \"prrrrueba\", \"owner_id\": 4, \"evento_id\": 19}', 1, '2025-10-28 23:52:24.624519', '2025-10-28 23:56:52.089644', 11),
(16, 'evento_proximo', 'Evento importante', 'no es mi cumple — 29 Oct', '{\"fecha\": \"2025-10-29\", \"titulo\": \"no es mi cumple\", \"owner_id\": 11, \"evento_id\": 20}', 1, '2025-10-29 00:33:05.509257', NULL, 4),
(17, 'evento_proximo', 'Evento importante', 'no es mi cumple — 29 Oct', '{\"fecha\": \"2025-10-29\", \"titulo\": \"no es mi cumple\", \"owner_id\": 11, \"evento_id\": 20}', 1, '2025-10-29 00:34:05.714147', '2025-10-29 00:50:32.985935', 2),
(18, 'evento_proximo', 'Evento importante', 'no es mi cumple — 29 Oct', '{\"fecha\": \"2025-10-29\", \"titulo\": \"no es mi cumple\", \"owner_id\": 11, \"evento_id\": 20}', 0, '2025-10-29 01:20:59.019957', NULL, 30),
(19, 'evento_proximo', 'Evento importante', 'prrrrueba — 29 Oct', '{\"fecha\": \"2025-10-29\", \"titulo\": \"prrrrueba\", \"owner_id\": 4, \"evento_id\": 19}', 0, '2025-10-29 01:20:59.019993', NULL, 30),
(20, 'evento_proximo', 'Evento importante', 'happy pagiona web — 29 Oct', '{\"fecha\": \"2025-10-29\", \"titulo\": \"happy pagiona web\", \"owner_id\": 4, \"evento_id\": 17}', 0, '2025-10-29 01:20:59.020011', NULL, 30),
(21, 'solicitud_amistad', 'Nueva solicitud de amistad', 'Cristiano te envió una solicitud de amistad', '{\"type\": \"friend_request\", \"request_id\": \"38\", \"from_username\": \"cristiano\"}', 1, '2025-10-29 01:50:20.103704', NULL, 27),
(22, 'solicitud_amistad', 'Nueva solicitud de amistad', 'Kylian te envió una solicitud de amistad', '{\"type\": \"friend_request\", \"request_id\": \"39\", \"from_username\": \"kmbappe\"}', 0, '2025-10-29 02:32:52.728538', NULL, 1),
(23, 'solicitud_amistad', 'Nueva solicitud de amistad', 'Lukass te envió una solicitud de amistad', '{\"type\": \"friend_request\", \"request_id\": \"40\", \"from_username\": \"lukassacuna\"}', 1, '2025-10-29 02:36:00.332152', NULL, 2),
(24, 'evento_proximo', 'Evento importante', 'Halloweeen!!!! — 31 Oct', '{\"fecha\": \"2025-10-31\", \"titulo\": \"Halloweeen!!!!\", \"owner_id\": 2, \"evento_id\": 21}', 1, '2025-10-29 02:41:48.929147', NULL, 4),
(28, 'evento_proximo', 'Evento importante', 'Halloweeen!!!! — 31 Oct', '{\"fecha\": \"2025-10-31\", \"titulo\": \"Halloweeen!!!!\", \"owner_id\": 2, \"evento_id\": 21}', 0, '2025-10-29 02:50:12.982672', NULL, 11),
(30, 'solicitud_amistad', 'Nueva solicitud de amistad', 'Lukass te envió una solicitud de amistad', '{\"type\": \"friend_request\", \"request_id\": \"41\", \"from_username\": \"lukassacuna\"}', 1, '2025-10-29 03:26:09.416996', NULL, 4),
(31, 'evento_proximo', 'Evento importante', 'hora de hacer popo — 29 Oct', '{\"fecha\": \"2025-10-29\", \"titulo\": \"hora de hacer popo\", \"owner_id\": 34, \"evento_id\": 22}', 1, '2025-10-29 03:26:47.508328', NULL, 2),
(32, 'evento_proximo', 'Evento importante', 'hora de hacer popo — 29 Oct', '{\"fecha\": \"2025-10-29\", \"titulo\": \"hora de hacer popo\", \"owner_id\": 34, \"evento_id\": 22}', 1, '2025-10-29 03:27:29.130912', NULL, 4),
(33, 'evento_proximo', 'Evento importante', 'Halloweeen!!!! — 31 Oct', '{\"fecha\": \"2025-10-31\", \"titulo\": \"Halloweeen!!!!\", \"owner_id\": 2, \"evento_id\": 21}', 0, '2025-10-29 04:50:02.899059', NULL, 29),
(34, 'evento_proximo', 'Evento importante', 'no es mi cumple — 29 Oct', '{\"fecha\": \"2025-10-29\", \"titulo\": \"no es mi cumple\", \"owner_id\": 11, \"evento_id\": 20}', 0, '2025-10-29 04:50:02.899129', NULL, 29),
(35, 'evento_proximo', 'Evento importante', 'prrrrueba — 29 Oct', '{\"fecha\": \"2025-10-29\", \"titulo\": \"prrrrueba\", \"owner_id\": 4, \"evento_id\": 19}', 0, '2025-10-29 04:50:02.899164', NULL, 29),
(36, 'evento_proximo', 'Evento importante', 'happy pagiona web — 29 Oct', '{\"fecha\": \"2025-10-29\", \"titulo\": \"happy pagiona web\", \"owner_id\": 4, \"evento_id\": 17}', 0, '2025-10-29 04:50:02.899194', NULL, 29),
(37, 'solicitud_amistad', 'Nueva solicitud de amistad', 'ELIAS te envió una solicitud de amistad', '{\"type\": \"friend_request\", \"request_id\": \"42\", \"from_username\": \"elias-alcaide-leiva\"}', 0, '2025-10-29 05:07:10.115300', NULL, 29),
(38, 'evento_proximo', 'Evento importante', 'Halloweeen!!!! — 31 Oct', '{\"fecha\": \"2025-10-31\", \"titulo\": \"Halloweeen!!!!\", \"owner_id\": 2, \"evento_id\": 21}', 1, '2025-10-30 03:01:46.173677', NULL, 28),
(39, 'evento_proximo', 'Evento importante', 'nnm — 05 Nov', '{\"fecha\": \"2025-11-05\", \"titulo\": \"nnm\", \"owner_id\": 34, \"evento_id\": 24}', 1, '2025-10-30 03:08:30.746754', NULL, 2),
(40, 'evento_proximo', 'Evento importante', 'tiempo setso — 30 Oct', '{\"fecha\": \"2025-10-30\", \"titulo\": \"tiempo setso\", \"owner_id\": 34, \"evento_id\": 23}', 1, '2025-10-30 03:08:30.746788', NULL, 2),
(41, 'evento_proximo', 'Evento importante', 'nnm — 05 Nov', '{\"fecha\": \"2025-11-05\", \"titulo\": \"nnm\", \"owner_id\": 34, \"evento_id\": 24}', 1, '2025-10-30 03:09:06.255352', NULL, 4),
(42, 'evento_proximo', 'Evento importante', 'ijasdijas — 03 Nov', '{\"fecha\": \"2025-11-03\", \"titulo\": \"ijasdijas\", \"owner_id\": 34, \"evento_id\": 25}', 1, '2025-10-30 03:09:06.255385', NULL, 4),
(43, 'evento_proximo', 'Evento importante', 'kakakakak — 01 Nov', '{\"fecha\": \"2025-11-01\", \"titulo\": \"kakakakak\", \"owner_id\": 34, \"evento_id\": 26}', 1, '2025-10-30 03:09:06.255402', NULL, 4),
(44, 'evento_proximo', 'Evento importante', 'tiempo setso — 30 Oct', '{\"fecha\": \"2025-10-30\", \"titulo\": \"tiempo setso\", \"owner_id\": 34, \"evento_id\": 23}', 1, '2025-10-30 03:09:06.255416', NULL, 4),
(45, 'evento_proximo', 'Evento importante', 'ijasdijas — 03 Nov', '{\"fecha\": \"2025-11-03\", \"titulo\": \"ijasdijas\", \"owner_id\": 34, \"evento_id\": 25}', 1, '2025-10-30 03:11:11.021123', NULL, 2),
(46, 'evento_proximo', 'Evento importante', 'kakakakak — 01 Nov', '{\"fecha\": \"2025-11-01\", \"titulo\": \"kakakakak\", \"owner_id\": 34, \"evento_id\": 26}', 1, '2025-10-30 03:11:11.021158', NULL, 2),
(47, 'evento_proximo', 'Evento importante', 'Halloweeen!!!! — 31 Oct', '{\"fecha\": \"2025-10-31\", \"titulo\": \"Halloweeen!!!!\", \"owner_id\": 2, \"evento_id\": 21}', 1, '2025-10-30 23:46:25.833288', NULL, 24),
(48, 'evento_proximo', 'Evento importante', 'Halloweeen!!!! — 31 Oct', '{\"fecha\": \"2025-10-31\", \"titulo\": \"Halloweeen!!!!\", \"owner_id\": 2, \"evento_id\": 21}', 1, '2025-10-31 01:32:09.570015', NULL, 27),
(49, 'sistema', '🎁 ¡Matias Ignacio te ha enviado un agradecimiento!', 'gracias viejo', '{\"sender_id\": 24, \"product_id\": 11}', 0, '2025-10-31 02:02:27.335008', NULL, 30),
(50, 'sistema', '🎁 ¡pailita te ha enviado un agradecimiento!', 'gracias amogazo un saludo', '{\"sender_id\": 30, \"product_id\": 107}', 1, '2025-10-31 02:12:34.519686', NULL, 2),
(51, 'evento_proximo', 'Evento importante', 'Halloweeen!!!! — 31 Oct', '{\"fecha\": \"2025-10-31\", \"titulo\": \"Halloweeen!!!!\", \"owner_id\": 2, \"evento_id\": 21}', 0, '2025-10-31 02:12:42.769718', NULL, 30),
(52, 'sistema', '🎁 ¡pailita te ha enviado un agradecimiento!', 'menudo culo', '{\"sender_id\": 30, \"product_id\": 107}', 0, '2025-10-31 02:25:32.116770', NULL, 11),
(53, 'evento_proximo', 'Evento importante', 'sdffsd — 10 Nov', '{\"fecha\": \"2025-11-10\", \"titulo\": \"sdffsd\", \"owner_id\": 34, \"evento_id\": 28}', 1, '2025-11-04 00:42:28.222130', NULL, 2),
(54, 'evento_proximo', 'Evento importante', 'akjdas — 06 Nov', '{\"fecha\": \"2025-11-06\", \"titulo\": \"akjdas\", \"owner_id\": 34, \"evento_id\": 29}', 1, '2025-11-04 00:42:28.222160', NULL, 2),
(55, 'evento_proximo', 'Evento importante', 'sdfdfs — 04 Nov', '{\"fecha\": \"2025-11-04\", \"titulo\": \"sdfdfs\", \"owner_id\": 34, \"evento_id\": 27}', 1, '2025-11-04 00:42:28.222177', NULL, 2),
(56, 'evento_proximo', 'Evento importante', 'sdffsd — 10 Nov', '{\"fecha\": \"2025-11-10\", \"titulo\": \"sdffsd\", \"owner_id\": 34, \"evento_id\": 28}', 1, '2025-11-04 00:42:30.859878', NULL, 4),
(57, 'evento_proximo', 'Evento importante', 'akjdas — 06 Nov', '{\"fecha\": \"2025-11-06\", \"titulo\": \"akjdas\", \"owner_id\": 34, \"evento_id\": 29}', 1, '2025-11-04 00:42:30.859909', NULL, 4),
(58, 'evento_proximo', 'Evento importante', 'sdfdfs — 04 Nov', '{\"fecha\": \"2025-11-04\", \"titulo\": \"sdfdfs\", \"owner_id\": 34, \"evento_id\": 27}', 1, '2025-11-04 00:42:30.859926', NULL, 4),
(59, 'solicitud_amistad', 'Nueva solicitud de amistad', 'Matias Ignacio te envió una solicitud de amistad', '{\"type\": \"friend_request\", \"request_id\": \"43\", \"from_username\": \"matysepsi\"}', 1, '2025-11-04 01:35:27.979892', NULL, 2),
(60, 'sistema', '🎁 ¡Tia te ha enviado un agradecimiento!', 'gracias amor', '{\"sender_id\": 11, \"product_id\": 134}', 1, '2025-11-04 02:37:46.734442', NULL, 28),
(61, 'evento_proximo', 'Evento importante', 'asdasd — 05 Nov', '{\"fecha\": \"2025-11-05\", \"titulo\": \"asdasd\", \"owner_id\": 4, \"evento_id\": 31}', 1, '2025-11-04 23:54:08.645884', NULL, 2),
(62, 'evento_proximo', 'Evento importante', 'coito — 05 Nov', '{\"fecha\": \"2025-11-05\", \"titulo\": \"coito\", \"owner_id\": 4, \"evento_id\": 30}', 1, '2025-11-04 23:54:08.645916', NULL, 2),
(65, 'solicitud_amistad', 'Nueva solicitud de amistad', 'Pessi🥶 te envió una solicitud de amistad', '{\"type\": \"friend_request\", \"request_id\": \"44\", \"from_username\": \"pessi\"}', 1, '2025-11-05 00:50:32.844163', NULL, 24),
(66, 'solicitud_amistad', 'Nueva solicitud de amistad', 'Pessi🥶 te envió una solicitud de amistad', '{\"type\": \"friend_request\", \"request_id\": \"45\", \"from_username\": \"pessi\"}', 1, '2025-11-05 00:50:38.467063', NULL, 28),
(69, 'evento_proximo', 'Evento importante', 'asdasd — 05 Nov', '{\"fecha\": \"2025-11-05\", \"titulo\": \"asdasd\", \"owner_id\": 4, \"evento_id\": 31}', 0, '2025-11-05 04:07:40.650888', NULL, 29),
(70, 'evento_proximo', 'Evento importante', 'coito — 05 Nov', '{\"fecha\": \"2025-11-05\", \"titulo\": \"coito\", \"owner_id\": 4, \"evento_id\": 30}', 0, '2025-11-05 04:07:40.650923', NULL, 29),
(71, 'solicitud_amistad', 'Nueva solicitud de amistad', 'Kylian te envió una solicitud de amistad', '{\"type\": \"friend_request\", \"request_id\": \"46\", \"from_username\": \"kmbappe\"}', 0, '2025-11-05 04:08:52.363412', NULL, 29),
(72, 'solicitud_amistad', 'Nueva solicitud de amistad', 'Kylian te envió una solicitud de amistad', '{\"type\": \"friend_request\", \"request_id\": \"47\", \"from_username\": \"kmbappe\"}', 1, '2025-11-05 17:42:44.928276', NULL, 45),
(73, 'evento_proximo', 'Evento importante', 'Mi mejor cumpleaños — 06 Nov', '{\"fecha\": \"2025-11-06\", \"titulo\": \"Mi mejor cumpleaños\", \"owner_id\": 45, \"evento_id\": 32}', 1, '2025-11-05 17:51:31.342188', NULL, 27),
(74, 'evento_proximo', 'Evento importante', 'Fortnite event!!!! — 11 Nov', '{\"fecha\": \"2025-11-11\", \"titulo\": \"Fortnite event!!!!\", \"owner_id\": 2, \"evento_id\": 33}', 1, '2025-11-11 00:27:41.043582', NULL, 4),
(75, 'solicitud_amistad', 'Nueva solicitud de amistad', 'Lukass te envió una solicitud de amistad', '{\"type\": \"friend_request\", \"request_id\": \"48\", \"from_username\": \"lukassacuna\"}', 1, '2025-11-11 00:39:19.448993', NULL, 4),
(76, 'evento_proximo', 'Evento importante', 'xupalo entonce WUAJAJAJA — 11 Nov', '{\"fecha\": \"2025-11-11\", \"titulo\": \"xupalo entonce WUAJAJAJA\", \"owner_id\": 41, \"evento_id\": 34}', 1, '2025-11-11 01:06:54.034231', NULL, 4),
(77, 'sistema', '🎁 ¡Matias Ignacio te ha enviado un agradecimiento!', 'menudo culo joder', '{\"sender_id\": 24, \"product_id\": 103}', 0, '2025-11-11 01:27:54.490180', NULL, 11),
(78, 'evento_proximo', 'Evento importante', 'Fortnite event!!!! — 12 Nov', '{\"fecha\": \"2025-11-12\", \"titulo\": \"Fortnite event!!!!\", \"owner_id\": 2, \"evento_id\": 35}', 1, '2025-11-11 03:32:00.571065', NULL, 4),
(79, 'evento_proximo', 'Evento importante', 'NOTIFICACIONEEEES — 16 Nov', '{\"fecha\": \"2025-11-16\", \"titulo\": \"NOTIFICACIONEEEES\", \"owner_id\": 41, \"evento_id\": 36}', 1, '2025-11-15 04:10:53.982786', NULL, 4),
(80, 'sistema', '🎁 ¡Matias Ignacio te ha enviado un agradecimiento!', 'hola sorra', '{\"sender_id\": 24, \"product_id\": 103}', 0, '2025-11-15 04:21:29.299137', NULL, 11),
(81, 'solicitud_amistad', 'Nueva solicitud de amistad', 'Darius te envió una solicitud de amistad', '{\"type\": \"friend_request\", \"request_id\": \"49\", \"from_username\": \"dariusdellol\"}', 0, '2025-11-22 02:55:10.105309', NULL, 29),
(82, 'solicitud_amistad', 'Nueva solicitud de amistad', 'Darius te envió una solicitud de amistad', '{\"type\": \"friend_request\", \"request_id\": \"50\", \"from_username\": \"dariusdellol\"}', 0, '2025-11-22 02:55:15.556136', NULL, 45),
(83, 'solicitud_amistad', 'Nueva solicitud de amistad', 'Darius te envió una solicitud de amistad', '{\"type\": \"friend_request\", \"request_id\": \"51\", \"from_username\": \"dariusdellol\"}', 0, '2025-11-22 02:55:22.129053', NULL, 11),
(84, 'solicitud_amistad', 'Nueva solicitud de amistad', 'Darius te envió una solicitud de amistad', '{\"type\": \"friend_request\", \"request_id\": \"52\", \"from_username\": \"dariusdellol\"}', 0, '2025-11-22 02:55:28.968760', NULL, 28),
(85, 'solicitud_amistad', 'Nueva solicitud de amistad', 'Darius te envió una solicitud de amistad', '{\"type\": \"friend_request\", \"request_id\": \"53\", \"from_username\": \"dariusdellol\"}', 0, '2025-11-22 02:55:40.593151', NULL, 4),
(86, 'solicitud_amistad', 'Nueva solicitud de amistad', 'Darius te envió una solicitud de amistad', '{\"type\": \"friend_request\", \"request_id\": \"54\", \"from_username\": \"dariusdellol\"}', 0, '2025-11-22 02:56:20.854913', NULL, 41),
(87, 'solicitud_amistad', 'Nueva solicitud de amistad', 'Darius te envió una solicitud de amistad', '{\"type\": \"friend_request\", \"request_id\": \"55\", \"from_username\": \"dariusdellol\"}', 0, '2025-11-22 02:56:28.611211', NULL, 27),
(88, 'solicitud_amistad', 'Nueva solicitud de amistad', 'Darius te envió una solicitud de amistad', '{\"type\": \"friend_request\", \"request_id\": \"56\", \"from_username\": \"dariusdellol\"}', 1, '2025-11-22 02:56:34.633959', NULL, 2),
(89, 'solicitud_amistad', 'Nueva solicitud de amistad', 'Spider te envió una solicitud de amistad', '{\"type\": \"friend_request\", \"request_id\": \"57\", \"from_username\": \"spider-man\"}', 0, '2025-11-25 02:20:48.718719', NULL, 28);

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
(1, 'miembro', '2025-10-01 04:29:41.801695', 1, 11),
(3, 'miembro', '2025-10-01 23:54:41.790928', 2, 11),
(4, 'miembro', '2025-10-01 23:54:41.790948', 2, 2),
(5, 'miembro', '2025-10-02 01:30:52.726676', 3, 2),
(6, 'miembro', '2025-10-02 01:30:52.726700', 3, 24),
(7, 'miembro', '2025-10-02 01:31:08.584375', 4, 11),
(8, 'miembro', '2025-10-02 01:31:08.584399', 4, 24),
(9, 'miembro', '2025-10-02 01:36:21.249836', 5, 11),
(10, 'miembro', '2025-10-02 01:36:21.249865', 5, 4),
(13, 'miembro', '2025-10-02 03:12:11.295557', 7, 2),
(17, 'miembro', '2025-10-15 00:09:46.036502', 9, 28),
(18, 'miembro', '2025-10-15 00:09:46.036523', 9, 11),
(19, 'miembro', '2025-10-15 01:25:45.115726', 10, 2),
(20, 'miembro', '2025-10-15 01:25:45.115757', 10, 4),
(81, 'miembro', '2025-10-18 03:34:12.407626', 26, 2),
(82, 'miembro', '2025-10-18 03:34:12.407649', 26, 28),
(83, 'miembro', '2025-10-18 03:40:21.299801', 27, 29),
(84, 'miembro', '2025-10-18 03:40:21.299833', 27, 2),
(95, 'miembro', '2025-10-18 03:48:23.177453', 31, 27),
(96, 'miembro', '2025-10-18 03:48:23.177480', 31, 2),
(97, 'miembro', '2025-10-18 03:50:37.669582', 32, 27),
(98, 'miembro', '2025-10-18 03:50:37.669609', 32, 11),
(123, 'miembro', '2025-10-22 02:16:18.569014', 42, 4),
(124, 'admin', '2025-10-22 02:16:18.569029', 42, 11),
(126, 'miembro', '2025-10-22 02:16:18.569045', 42, 24),
(130, 'miembro', '2025-10-22 03:18:34.458675', 43, 30),
(132, 'miembro', '2025-10-22 03:18:38.821234', 44, 28),
(136, 'admin', '2025-10-22 03:25:11.983118', 45, 28),
(139, 'miembro', '2025-10-22 04:43:18.455180', 46, 1),
(140, 'miembro', '2025-10-22 04:43:18.455197', 46, 2),
(146, 'miembro', '2025-10-23 00:27:41.872774', 45, 2),
(148, 'miembro', '2025-10-23 00:50:42.281845', 45, 11),
(149, 'miembro', '2025-10-23 01:24:31.653476', 47, 30),
(150, 'miembro', '2025-10-23 01:24:31.653496', 47, 11),
(152, 'miembro', '2025-10-23 01:33:59.833025', 42, 2),
(153, 'miembro', '2025-10-23 02:36:24.238139', 48, 11),
(154, 'miembro', '2025-10-23 02:36:24.238162', 48, 29),
(155, 'miembro', '2025-10-23 02:38:06.228117', 49, 30),
(156, 'miembro', '2025-10-23 02:38:06.228209', 49, 4),
(157, 'miembro', '2025-10-23 02:39:50.161658', 50, 4),
(158, 'miembro', '2025-10-23 02:39:50.161681', 50, 29),
(159, 'miembro', '2025-10-24 01:28:42.465656', 51, 2),
(160, 'miembro', '2025-10-24 01:28:42.465680', 51, 30),
(161, 'miembro', '2025-10-24 01:35:47.932645', 52, 28),
(162, 'miembro', '2025-10-24 01:35:47.932704', 52, 30),
(192, 'miembro', '2025-10-29 03:44:08.063020', 73, 2),
(193, 'miembro', '2025-10-29 03:44:08.064364', 73, 4),
(194, 'miembro', '2025-10-29 03:44:08.065724', 73, 11),
(196, 'miembro', '2025-10-29 03:44:08.069066', 73, 24),
(197, 'miembro', '2025-10-29 03:58:01.303800', 74, 2),
(198, 'miembro', '2025-10-29 03:58:01.305913', 74, 4),
(199, 'miembro', '2025-10-29 03:58:01.308441', 74, 11),
(201, 'miembro', '2025-10-29 03:58:01.313089', 74, 24),
(202, 'miembro', '2025-10-29 04:01:12.692661', 75, 2),
(203, 'miembro', '2025-10-29 04:01:12.694096', 75, 4),
(204, 'miembro', '2025-10-29 04:01:12.695243', 75, 11),
(206, 'miembro', '2025-10-29 04:01:12.697399', 75, 24),
(209, 'miembro', '2025-10-30 01:39:24.980739', 77, 2),
(210, 'miembro', '2025-10-30 01:39:24.981996', 77, 4),
(211, 'miembro', '2025-10-30 01:39:24.983090', 77, 11),
(213, 'miembro', '2025-10-30 01:39:24.985292', 77, 24),
(214, 'miembro', '2025-10-30 02:29:40.981100', 78, 2),
(215, 'miembro', '2025-10-30 02:29:40.982351', 78, 4),
(216, 'miembro', '2025-10-30 02:29:40.983889', 78, 11),
(218, 'miembro', '2025-10-30 02:29:40.988163', 78, 24),
(219, 'miembro', '2025-10-30 02:43:35.105535', 79, 2),
(220, 'miembro', '2025-10-30 02:43:35.107091', 79, 4),
(221, 'miembro', '2025-10-30 02:43:35.108545', 79, 11),
(223, 'miembro', '2025-10-30 02:43:35.111028', 79, 24),
(224, 'miembro', '2025-10-30 02:52:08.480049', 80, 2),
(225, 'miembro', '2025-10-30 02:52:08.481331', 80, 4),
(226, 'miembro', '2025-10-30 02:52:08.482651', 80, 11),
(228, 'miembro', '2025-10-30 02:52:08.485260', 80, 24),
(229, 'miembro', '2025-10-30 03:08:10.077445', 81, 2),
(230, 'miembro', '2025-10-30 03:08:10.079172', 81, 11),
(232, 'miembro', '2025-10-30 03:08:10.081404', 81, 28),
(241, 'miembro', '2025-10-30 03:18:48.966253', 84, 2),
(242, 'miembro', '2025-10-30 03:18:48.967427', 84, 11),
(244, 'miembro', '2025-10-30 03:18:48.969961', 84, 28),
(245, 'miembro', '2025-10-30 03:28:55.021291', 85, 2),
(246, 'miembro', '2025-10-30 03:28:55.022714', 85, 11),
(248, 'miembro', '2025-10-30 03:28:55.025307', 85, 28),
(249, 'miembro', '2025-10-30 03:31:52.246425', 86, 2),
(250, 'miembro', '2025-10-30 03:31:52.247671', 86, 11),
(252, 'miembro', '2025-10-30 03:31:52.250948', 86, 28),
(253, 'miembro', '2025-10-30 23:46:42.509412', 87, 30),
(254, 'miembro', '2025-10-30 23:46:42.509438', 87, 24),
(255, 'miembro', '2025-10-31 02:10:27.709170', 88, 2),
(256, 'miembro', '2025-10-31 02:10:27.710383', 88, 11),
(258, 'miembro', '2025-10-31 02:10:27.713226', 88, 28),
(259, 'miembro', '2025-10-31 02:30:19.842104', 89, 2),
(260, 'miembro', '2025-10-31 02:30:19.843607', 89, 11),
(262, 'miembro', '2025-10-31 02:30:19.846520', 89, 28),
(263, 'miembro', '2025-10-31 02:33:14.612114', 90, 2),
(264, 'miembro', '2025-10-31 02:33:14.614066', 90, 11),
(266, 'miembro', '2025-10-31 02:33:14.618675', 90, 28),
(267, 'miembro', '2025-10-31 02:41:41.995813', 91, 2),
(268, 'miembro', '2025-10-31 02:41:41.997273', 91, 4),
(269, 'miembro', '2025-10-31 02:41:41.998935', 91, 11),
(271, 'miembro', '2025-10-31 02:41:42.001604', 91, 24),
(272, 'miembro', '2025-10-31 02:41:42.002650', 91, 28),
(273, 'miembro', '2025-10-31 02:48:31.310725', 92, 2),
(274, 'miembro', '2025-10-31 02:48:31.312146', 92, 4),
(275, 'miembro', '2025-10-31 02:48:31.313639', 92, 11),
(277, 'miembro', '2025-10-31 02:48:31.316252', 92, 24),
(278, 'miembro', '2025-10-31 02:48:31.317540', 92, 28),
(279, 'miembro', '2025-10-31 02:56:31.524668', 93, 2),
(280, 'miembro', '2025-10-31 02:56:31.526733', 93, 4),
(281, 'miembro', '2025-10-31 02:56:31.529589', 93, 11),
(283, 'miembro', '2025-10-31 02:56:31.532670', 93, 24),
(284, 'miembro', '2025-10-31 02:56:31.533880', 93, 28),
(285, 'miembro', '2025-10-31 03:06:00.797926', 94, 2),
(286, 'miembro', '2025-10-31 03:06:00.799513', 94, 4),
(287, 'miembro', '2025-10-31 03:06:00.801300', 94, 11),
(289, 'miembro', '2025-10-31 03:06:00.803481', 94, 24),
(290, 'miembro', '2025-10-31 03:06:00.804511', 94, 28),
(291, 'miembro', '2025-10-31 03:08:25.717941', 95, 2),
(292, 'miembro', '2025-10-31 03:08:25.720231', 95, 4),
(293, 'miembro', '2025-10-31 03:08:25.721985', 95, 11),
(295, 'miembro', '2025-10-31 03:08:25.725807', 95, 24),
(296, 'miembro', '2025-10-31 03:08:25.727355', 95, 28),
(303, 'miembro', '2025-10-31 03:48:36.771793', 98, 2),
(304, 'miembro', '2025-10-31 03:48:36.773239', 98, 11),
(306, 'miembro', '2025-10-31 03:48:36.775792', 98, 28),
(307, 'miembro', '2025-11-03 23:32:05.444506', 99, 2),
(308, 'miembro', '2025-11-03 23:32:05.445657', 99, 11),
(310, 'miembro', '2025-11-03 23:32:05.447937', 99, 28),
(311, 'miembro', '2025-11-03 23:39:23.130308', 100, 2),
(312, 'miembro', '2025-11-03 23:39:23.131628', 100, 11),
(314, 'miembro', '2025-11-03 23:39:23.135073', 100, 28),
(315, 'miembro', '2025-11-03 23:59:41.406830', 101, 2),
(316, 'miembro', '2025-11-03 23:59:41.408082', 101, 11),
(318, 'miembro', '2025-11-03 23:59:41.410597', 101, 28),
(319, 'miembro', '2025-11-04 00:16:35.766150', 102, 2),
(320, 'miembro', '2025-11-04 00:16:35.770971', 102, 11),
(322, 'miembro', '2025-11-04 00:16:35.781059', 102, 28),
(323, 'miembro', '2025-11-04 00:29:30.161690', 103, 2),
(324, 'miembro', '2025-11-04 00:29:30.163180', 103, 4),
(325, 'miembro', '2025-11-04 00:29:30.164601', 103, 11),
(327, 'miembro', '2025-11-04 00:29:30.167134', 103, 24),
(328, 'miembro', '2025-11-04 00:29:30.168294', 103, 28),
(329, 'miembro', '2025-11-04 00:29:30.169595', 103, 30),
(330, 'miembro', '2025-11-04 00:29:33.586783', 104, 24),
(331, 'miembro', '2025-11-04 00:29:33.586800', 104, 28),
(332, 'miembro', '2025-11-04 00:29:33.590507', 105, 28),
(333, 'miembro', '2025-11-04 00:29:33.590544', 105, 4),
(334, 'miembro', '2025-11-04 00:33:13.637628', 106, 2),
(335, 'miembro', '2025-11-04 00:33:13.639734', 106, 4),
(336, 'miembro', '2025-11-04 00:33:13.641274', 106, 11),
(338, 'miembro', '2025-11-04 00:33:13.644789', 106, 24),
(339, 'miembro', '2025-11-04 00:33:13.646438', 106, 28),
(358, 'miembro', '2025-11-04 00:39:19.124721', 110, 2),
(359, 'miembro', '2025-11-04 00:39:19.125995', 110, 4),
(360, 'miembro', '2025-11-04 00:39:19.127174', 110, 11),
(362, 'miembro', '2025-11-04 00:39:19.129924', 110, 24),
(363, 'miembro', '2025-11-04 00:39:19.131741', 110, 28),
(364, 'miembro', '2025-11-04 00:41:59.810099', 111, 2),
(365, 'miembro', '2025-11-04 00:41:59.811105', 111, 4),
(366, 'miembro', '2025-11-04 00:41:59.812043', 111, 11),
(368, 'miembro', '2025-11-04 00:41:59.814022', 111, 24),
(369, 'miembro', '2025-11-04 00:41:59.814969', 111, 28),
(370, 'miembro', '2025-11-04 00:57:08.519394', 112, 2),
(371, 'miembro', '2025-11-04 00:57:08.520748', 112, 4),
(372, 'miembro', '2025-11-04 00:57:08.522117', 112, 11),
(374, 'miembro', '2025-11-04 00:57:08.524445', 112, 24),
(375, 'miembro', '2025-11-04 00:57:08.525466', 112, 28),
(376, 'miembro', '2025-11-04 01:01:13.033769', 113, 2),
(377, 'miembro', '2025-11-04 01:01:13.035630', 113, 4),
(378, 'miembro', '2025-11-04 01:01:13.037233', 113, 11),
(380, 'miembro', '2025-11-04 01:01:13.040172', 113, 24),
(381, 'miembro', '2025-11-04 01:01:13.041748', 113, 28),
(382, 'miembro', '2025-11-04 01:06:13.737425', 114, 2),
(383, 'miembro', '2025-11-04 01:06:13.739959', 114, 4),
(384, 'miembro', '2025-11-04 01:06:13.742351', 114, 11),
(386, 'miembro', '2025-11-04 01:06:13.746279', 114, 24),
(387, 'miembro', '2025-11-04 01:06:13.748353', 114, 28),
(388, 'miembro', '2025-11-04 01:14:14.185813', 115, 2),
(389, 'miembro', '2025-11-04 01:14:14.187612', 115, 4),
(390, 'miembro', '2025-11-04 01:14:14.189129', 115, 11),
(392, 'miembro', '2025-11-04 01:14:14.191690', 115, 24),
(393, 'miembro', '2025-11-04 01:14:14.193072', 115, 28),
(394, 'miembro', '2025-11-04 01:21:02.756959', 116, 2),
(395, 'miembro', '2025-11-04 01:21:02.758242', 116, 4),
(396, 'miembro', '2025-11-04 01:21:02.759428', 116, 11),
(398, 'miembro', '2025-11-04 01:21:02.761857', 116, 24),
(399, 'miembro', '2025-11-04 01:21:02.763472', 116, 28),
(400, 'miembro', '2025-11-04 01:21:06.592456', 117, 4),
(401, 'miembro', '2025-11-04 01:21:06.592489', 117, 24),
(402, 'miembro', '2025-11-04 01:21:53.189536', 118, 2),
(403, 'miembro', '2025-11-04 01:21:53.191164', 118, 4),
(404, 'miembro', '2025-11-04 01:21:53.192715', 118, 11),
(406, 'miembro', '2025-11-04 01:21:53.195087', 118, 24),
(407, 'miembro', '2025-11-04 01:26:29.837349', 119, 2),
(408, 'miembro', '2025-11-04 01:26:29.838585', 119, 4),
(409, 'miembro', '2025-11-04 01:26:29.840768', 119, 11),
(411, 'miembro', '2025-11-04 01:26:29.844811', 119, 24),
(412, 'miembro', '2025-11-04 01:30:24.142154', 120, 2),
(413, 'miembro', '2025-11-04 01:30:24.146501', 120, 4),
(414, 'miembro', '2025-11-04 01:30:24.150403', 120, 11),
(416, 'miembro', '2025-11-04 01:30:24.157125', 120, 24),
(417, 'miembro', '2025-11-04 01:31:04.742135', 121, 2),
(418, 'miembro', '2025-11-04 01:31:04.743164', 121, 4),
(419, 'miembro', '2025-11-04 01:31:04.744093', 121, 11),
(421, 'miembro', '2025-11-04 01:31:04.746505', 121, 24),
(422, 'miembro', '2025-11-04 01:43:18.819714', 122, 2),
(423, 'miembro', '2025-11-04 01:43:18.821386', 122, 4),
(424, 'miembro', '2025-11-04 01:43:18.822846', 122, 11),
(426, 'miembro', '2025-11-04 01:43:18.825409', 122, 24),
(427, 'miembro', '2025-11-04 01:53:07.234944', 123, 2),
(428, 'miembro', '2025-11-04 01:53:07.236090', 123, 4),
(429, 'miembro', '2025-11-04 01:53:07.237031', 123, 11),
(431, 'miembro', '2025-11-04 01:53:07.239392', 123, 24),
(432, 'miembro', '2025-11-04 02:03:18.329240', 124, 2),
(433, 'miembro', '2025-11-04 02:03:18.331387', 124, 4),
(434, 'miembro', '2025-11-04 02:03:18.332796', 124, 11),
(436, 'miembro', '2025-11-04 02:03:18.335032', 124, 24),
(437, 'miembro', '2025-11-05 04:09:12.902991', 125, 27),
(438, 'miembro', '2025-11-05 04:09:12.903015', 125, 29),
(439, 'miembro', '2025-11-05 17:42:58.056725', 126, 27),
(440, 'miembro', '2025-11-05 17:42:58.056749', 126, 45),
(441, 'miembro', '2025-11-05 17:44:02.015618', 127, 2),
(442, 'admin', '2025-11-05 17:44:02.015638', 127, 27),
(443, 'miembro', '2025-11-05 17:44:02.015647', 127, 29),
(444, 'miembro', '2025-11-05 17:44:02.015655', 127, 45),
(445, 'miembro', '2025-11-11 01:06:47.836715', 128, 41),
(446, 'miembro', '2025-11-11 01:06:47.836743', 128, 4),
(447, 'miembro', '2025-11-18 00:05:45.423487', 129, 2),
(448, 'miembro', '2025-11-18 00:05:45.424899', 129, 4),
(449, 'miembro', '2025-11-18 00:05:45.426254', 129, 11),
(450, 'miembro', '2025-11-18 00:05:45.427453', 129, 24),
(451, 'miembro', '2025-11-18 00:05:45.428744', 129, 28),
(452, 'miembro', '2025-11-18 00:05:45.429788', 129, 30),
(453, 'miembro', '2025-11-18 01:21:50.139329', 130, 2),
(454, 'miembro', '2025-11-18 01:21:50.140885', 130, 4),
(455, 'miembro', '2025-11-18 01:21:50.142595', 130, 11),
(456, 'miembro', '2025-11-18 01:21:50.144249', 130, 24),
(457, 'miembro', '2025-11-18 01:21:50.145723', 130, 28),
(458, 'miembro', '2025-11-18 01:21:50.147290', 130, 30),
(459, 'miembro', '2025-11-18 01:53:09.177742', 131, 2),
(460, 'miembro', '2025-11-18 01:53:09.180409', 131, 4),
(461, 'miembro', '2025-11-18 01:53:09.182642', 131, 11),
(462, 'miembro', '2025-11-18 01:53:09.184982', 131, 24),
(463, 'miembro', '2025-11-18 01:53:09.188091', 131, 28),
(464, 'miembro', '2025-11-18 01:53:09.190369', 131, 30),
(465, 'miembro', '2025-11-18 02:47:04.605274', 132, 2),
(466, 'miembro', '2025-11-18 02:47:04.606623', 132, 4),
(467, 'miembro', '2025-11-18 02:47:04.607868', 132, 11),
(468, 'miembro', '2025-11-18 02:47:04.609012', 132, 27),
(469, 'miembro', '2025-11-18 02:47:04.610258', 132, 28),
(470, 'miembro', '2025-11-18 23:40:44.459379', 133, 2),
(471, 'miembro', '2025-11-18 23:40:44.460595', 133, 4),
(472, 'miembro', '2025-11-18 23:40:44.461649', 133, 11),
(473, 'miembro', '2025-11-18 23:40:44.462793', 133, 24),
(474, 'miembro', '2025-11-18 23:40:44.464341', 133, 28),
(475, 'miembro', '2025-11-18 23:40:44.466607', 133, 30),
(476, 'miembro', '2025-11-18 23:51:47.884312', 134, 2),
(477, 'miembro', '2025-11-18 23:51:47.885638', 134, 4),
(478, 'miembro', '2025-11-18 23:51:47.886783', 134, 11),
(479, 'miembro', '2025-11-18 23:51:47.887974', 134, 24),
(480, 'miembro', '2025-11-18 23:51:47.889087', 134, 28),
(481, 'miembro', '2025-11-18 23:51:47.890131', 134, 30),
(482, 'miembro', '2025-11-19 00:09:31.814929', 135, 2),
(483, 'miembro', '2025-11-19 00:09:31.819655', 135, 4),
(484, 'miembro', '2025-11-19 00:09:31.820828', 135, 11),
(485, 'miembro', '2025-11-19 00:09:31.822098', 135, 24),
(486, 'miembro', '2025-11-19 00:09:31.823290', 135, 28),
(487, 'miembro', '2025-11-19 00:09:31.824301', 135, 30),
(488, 'miembro', '2025-11-19 00:18:07.208781', 136, 2),
(489, 'miembro', '2025-11-19 00:18:07.210424', 136, 4),
(490, 'miembro', '2025-11-19 00:18:07.211556', 136, 11),
(491, 'miembro', '2025-11-19 00:18:07.213732', 136, 24),
(492, 'miembro', '2025-11-19 00:18:07.214711', 136, 28),
(493, 'miembro', '2025-11-19 00:18:07.216711', 136, 30),
(494, 'miembro', '2025-11-19 00:24:14.963267', 137, 2),
(495, 'miembro', '2025-11-19 00:24:14.965436', 137, 4),
(496, 'miembro', '2025-11-19 00:24:14.967836', 137, 11),
(497, 'miembro', '2025-11-19 00:24:14.969219', 137, 24),
(498, 'miembro', '2025-11-19 00:24:14.971833', 137, 28),
(499, 'miembro', '2025-11-19 00:24:14.973416', 137, 30),
(500, 'miembro', '2025-11-19 00:43:15.738074', 138, 2),
(501, 'miembro', '2025-11-19 00:43:15.740250', 138, 4),
(502, 'miembro', '2025-11-19 00:43:15.741718', 138, 11),
(503, 'miembro', '2025-11-19 00:43:15.743056', 138, 24),
(504, 'miembro', '2025-11-19 00:43:15.744146', 138, 28),
(505, 'miembro', '2025-11-19 00:43:15.745881', 138, 30),
(506, 'miembro', '2025-11-19 00:48:47.809265', 139, 2),
(507, 'miembro', '2025-11-19 00:48:47.814467', 139, 4),
(508, 'miembro', '2025-11-19 00:48:47.817942', 139, 11),
(509, 'miembro', '2025-11-19 00:48:47.821735', 139, 24),
(510, 'miembro', '2025-11-19 00:48:47.829462', 139, 28),
(511, 'miembro', '2025-11-19 00:48:47.834082', 139, 30),
(512, 'miembro', '2025-11-19 00:52:59.902215', 140, 2),
(513, 'miembro', '2025-11-19 00:52:59.903767', 140, 4),
(514, 'miembro', '2025-11-19 00:52:59.905155', 140, 11),
(515, 'miembro', '2025-11-19 00:52:59.906405', 140, 24),
(516, 'miembro', '2025-11-19 00:52:59.907550', 140, 28),
(517, 'miembro', '2025-11-19 00:52:59.908713', 140, 30),
(518, 'miembro', '2025-11-21 00:47:15.658344', 141, 2),
(519, 'miembro', '2025-11-21 00:47:15.660111', 141, 4),
(520, 'miembro', '2025-11-21 00:47:15.661584', 141, 11),
(521, 'miembro', '2025-11-21 00:47:15.663883', 141, 24),
(522, 'miembro', '2025-11-21 00:47:15.664906', 141, 28),
(523, 'miembro', '2025-11-21 00:47:15.665795', 141, 30),
(524, 'miembro', '2025-11-21 00:58:26.930844', 142, 2),
(525, 'miembro', '2025-11-21 00:58:26.931913', 142, 4),
(526, 'miembro', '2025-11-21 00:58:26.932902', 142, 11),
(527, 'miembro', '2025-11-21 00:58:26.933872', 142, 24),
(528, 'miembro', '2025-11-21 00:58:26.934834', 142, 28),
(529, 'miembro', '2025-11-21 00:58:26.935774', 142, 30),
(530, 'miembro', '2025-11-21 01:19:25.787303', 143, 2),
(531, 'miembro', '2025-11-21 01:19:25.788324', 143, 4),
(532, 'miembro', '2025-11-21 01:19:25.789756', 143, 11),
(533, 'miembro', '2025-11-21 01:19:25.791380', 143, 24),
(534, 'miembro', '2025-11-21 01:19:25.792620', 143, 28),
(535, 'miembro', '2025-11-21 01:19:25.793915', 143, 30),
(536, 'miembro', '2025-11-21 01:22:40.871808', 144, 2),
(537, 'miembro', '2025-11-21 01:22:40.873065', 144, 4),
(538, 'miembro', '2025-11-21 01:22:40.874308', 144, 11),
(539, 'miembro', '2025-11-21 01:22:40.875440', 144, 24),
(540, 'miembro', '2025-11-21 01:22:40.876554', 144, 28),
(541, 'miembro', '2025-11-21 01:22:40.877618', 144, 30),
(544, 'miembro', '2025-11-21 02:14:46.590234', 146, 2),
(545, 'miembro', '2025-11-21 02:14:46.591715', 146, 4),
(546, 'miembro', '2025-11-21 02:14:46.593275', 146, 11),
(547, 'miembro', '2025-11-21 02:14:46.596442', 146, 24),
(548, 'miembro', '2025-11-21 02:14:46.598668', 146, 28),
(549, 'miembro', '2025-11-21 02:14:46.600007', 146, 30),
(550, 'miembro', '2025-11-21 02:17:36.210176', 147, 2),
(551, 'miembro', '2025-11-21 02:17:36.213463', 147, 4),
(552, 'miembro', '2025-11-21 02:17:36.214965', 147, 11),
(553, 'miembro', '2025-11-21 02:17:36.216180', 147, 24),
(554, 'miembro', '2025-11-21 02:17:36.217370', 147, 28),
(555, 'miembro', '2025-11-21 02:17:36.218540', 147, 30);

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
(1, 'Me gustan los gatitos sisi y soy multimillonario actualmente', 'fotos_perfil/imagen_2025-10-14_222809952.png', NULL, 2),
(2, 'me gusta el keipaps', 'fotos_perfil/4571609333609_1_480x.webp', NULL, 24),
(3, 'me gustan los videojuegos , tambien me gustan los chocolatillos, como el nestle', 'fotos_perfil/images_1_JmhpvRO.jpg', NULL, 11),
(4, 'tomen agua', 'fotos_perfil/ab67616d00001e021ea79d3d8824c92da6d1816c.jfif', NULL, 4),
(5, 'soy el admin', 'fotos_perfil/imagen_2025-10-14_223032439.png', '2025-08-01', 1),
(7, 'soy un ninja, tengo 3 hermanos y en mi tiempos libre juego al futbol, fan numero 1 de @cristiano', 'fotos_perfil/imagen_2025-10-28_225440259.png', NULL, 27),
(8, 'Im Tony Stark, Genius, billionaire, playboy, philanthropist', 'fotos_perfil/248470199d7901dd9f5adbed7a6a3932.jpg', NULL, 28),
(9, 'Soy James Sullyvan..., me encanta asustar a la gente por lo que me gustan los dinosaurios...', '', NULL, 29),
(10, 'jdhdhdhdh', 'fotos_perfil/images.jpg', NULL, 30),
(12, NULL, '', NULL, 35),
(13, NULL, '', NULL, 38),
(14, NULL, '', NULL, 41),
(15, NULL, '', NULL, 45),
(16, NULL, '', NULL, 46),
(17, NULL, '', NULL, 48),
(18, '', 'fotos_perfil/Darius_4.jpg', NULL, 49),
(20, NULL, '', NULL, 51);

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
(2, 'yo te regalo sushi amigo', 'texto', 1, '2025-10-01 01:24:51.808549', '2025-10-01 01:24:51.808565', 11, NULL, NULL),
(3, 'jajajajajajaj inutiles', 'texto', 1, '2025-10-01 01:25:10.267341', '2025-10-01 01:25:10.267357', 11, NULL, NULL),
(4, 'jajaja', 'texto', 1, '2025-10-01 01:25:26.368794', '2025-10-01 01:25:26.368813', 11, NULL, NULL),
(5, 'cual es el', 'texto', 1, '2025-10-01 01:25:36.106340', '2025-10-01 01:25:36.106356', 4, NULL, NULL),
(7, 'SOY UNA PERRA', 'texto', 1, '2025-10-01 22:12:56.382907', '2025-10-01 22:12:56.382931', 11, NULL, NULL),
(8, 'hola soy cristiano ronaldo siuuu', 'texto', 1, '2025-10-01 22:12:58.348616', '2025-10-01 22:12:58.348644', 2, NULL, NULL),
(9, 'acabo de ver el perfil de un tal \"jefe\" que dice que es el dueño de gifters, permiteme reirme, JAJAJA, eso no es cierto.', 'texto', 1, '2025-10-02 03:13:11.523325', '2025-10-02 03:13:11.523340', 11, NULL, NULL),
(10, 'cuando sera el bendito dia que se pueda comentar!', 'texto', 1, '2025-10-02 03:37:39.105695', '2025-10-02 03:37:39.105710', 2, NULL, NULL),
(11, 'jajaja hola', 'texto', 1, '2025-10-02 07:03:00.950396', '2025-10-02 07:03:00.950429', 11, NULL, NULL),
(14, 'Que Gran dia!, ya saben, si quieren algun fruto seco, ya saben donde encontrarme, en cualquier piso del duoc estare!', 'texto', 1, '2025-10-14 01:13:08.865622', '2025-10-14 01:13:08.865639', 11, NULL, NULL),
(15, 'hola soy lukass', 'texto', 1, '2025-10-14 01:47:56.545987', '2025-10-14 01:47:56.546006', 4, NULL, NULL),
(16, 'ㅤㅤㅤㅤㅤ', 'texto', 1, '2025-10-14 01:53:13.037695', '2025-10-14 01:53:13.037708', 4, NULL, NULL),
(17, 'vi que un tal penaldo🥶 esta en esta red social JAJAJA', 'texto', 1, '2025-10-15 01:29:08.814511', '2025-10-15 01:29:08.814556', 4, NULL, NULL),
(18, 'los dosh🔥😈', 'texto', 1, '2025-10-15 01:42:23.237754', '2025-10-15 01:42:23.237769', 11, NULL, NULL),
(21, 'mi heroe', 'imagen', 1, '2025-10-16 01:59:21.331052', '2025-10-16 01:59:21.331076', 24, 'posts/descargar.jpg', NULL),
(22, 'los mios', 'imagen', 1, '2025-10-16 01:59:58.838203', '2025-10-16 01:59:58.838229', 11, 'posts/ChatGPT_Image_28_ago_2025_08_13_50_p.m..png', NULL),
(23, 'jajaja que graciosa es esta imagen', 'imagen', 1, '2025-10-16 02:00:11.745530', '2025-10-16 02:00:11.745555', 4, 'posts/tralalero-tralala.jpg', NULL),
(27, 'poro sexo', 'imagen', 1, '2025-10-17 01:35:19.655807', '2025-10-17 01:35:19.655836', 24, 'posts/Captura_de_pantalla_2025-08-19_043413_0Zwo5mM.png', NULL),
(28, 'presioso recuerdo', 'imagen', 1, '2025-10-17 01:56:47.205482', '2025-10-17 01:56:47.205508', 24, 'posts/Captura_de_pantalla_2025-09-04_204412.png', NULL),
(32, 'me btw', 'imagen', 1, '2025-10-24 01:04:07.446408', '2025-10-24 01:04:07.446435', 28, 'posts/imagen_2025-10-23_220349954.png', NULL),
(33, 'Yo soy el real no el inutil de tony pollas stark', 'imagen', 1, '2025-10-24 03:00:48.220429', '2025-10-24 03:00:48.220454', 2, 'posts/imagen_2025-10-24_000033505.png', NULL),
(37, 'era todo una broma la pelea, era para ver como reaccionaban al anuncio de.... SOMOS LOS PRIMEROS PATROCINADORES DE GIFTER\'S!! SIUUUUUU', 'imagen', 1, '2025-10-25 02:11:34.979812', '2025-10-25 02:11:34.979843', 2, 'posts/imagen_2025-10-24_231010877.png', NULL),
(38, 'jajajaaja miren este meme que me encontre navegando por la web jajaja muy divertido', 'imagen', 1, '2025-10-29 02:23:04.062022', '2025-10-29 02:23:04.062049', 30, 'posts/meme.gif', NULL),
(41, 'APASTAR!!!', 'texto', 1, '2025-10-30 02:59:12.219036', '2025-10-30 02:59:12.219060', 2, '', 'https://media4.giphy.com/media/v1.Y2lkPTk4NTIwMzk5b2FwNWdubzBhb241OTV5MDZ0ZXF3Ynl5dTc4aXZ6YW1rdm53djd2YyZlcD12MV9naWZzX3NlYXJjaCZjdD1n/KFuXeADlsfCFCoxfUB/giphy.gif'),
(43, 'PENCA CTM', 'texto', 1, '2025-10-30 03:00:25.874736', '2025-10-30 03:00:25.874756', 11, '', 'https://media0.giphy.com/media/v1.Y2lkPTk4NTIwMzk5ZXEwcThtdDBrazdoaXc4bnRnNTdtNWdlbW54ZjRrNmc4ODdpaXdtbSZlcD12MV9naWZzX3NlYXJjaCZjdD1n/f0VbswUmSY6X1cBz4C/giphy.gif'),
(44, 'jejeje', 'texto', 1, '2025-10-30 03:02:25.552381', '2025-10-30 03:02:25.552397', 4, '', 'https://media0.giphy.com/media/v1.Y2lkPTk4NTIwMzk5M2xqcmRkdnJkNDQzMXViNjB2N3U1eWRnOTRkZnhnNzMxNHZ1dDFmciZlcD12MV9naWZzX3NlYXJjaCZjdD1n/TjAcxImn74uoDYVxFl/giphy.gif'),
(45, 'penca ctm the gpt culiao', 'texto', 1, '2025-10-30 03:02:39.814195', '2025-10-30 03:02:39.814213', 28, '', 'https://media3.giphy.com/media/v1.Y2lkPTk4NTIwMzk5YmU4NGFkd3llcnJ6c3gyOG92eGxxdGExeDR3YjNiaWRkZzZwNHBhaSZlcD12MV9naWZzX3NlYXJjaCZjdD1n/hHxTQkcjmHUTC/giphy.gif'),
(46, 'yo y el elias\r\nel castiiiiii', 'texto', 1, '2025-10-30 03:06:20.009968', '2025-10-30 03:06:20.009990', 30, '', 'https://media0.giphy.com/media/v1.Y2lkPTk4NTIwMzk5anFtZGZ5eXdtMG1jcG5ndjE2NHVkNjY5OXJjZXp0eDR1cW5qMDIwZyZlcD12MV9naWZzX3NlYXJjaCZjdD1n/q8TEi7UTxas92/giphy.gif'),
(48, 'jarvis you know what to do', 'texto', 1, '2025-10-30 03:09:23.867832', '2025-10-30 03:09:23.867847', 28, '', 'https://media0.giphy.com/media/v1.Y2lkPTk4NTIwMzk5eWkyNHprc2JwbDNhMjNubGF6anBjMXJuejJyM2dwamszaWxhMmpqeSZlcD12MV9naWZzX3NlYXJjaCZjdD1n/F7MTsSTtFx17fQHlrN/giphy.gif'),
(49, '¡Muchas gracias a @elias-alcaide-leiva por este increíble regalo! 🎁\n\nRecibí un Cafetera Italiana.', 'texto', 1, '2025-10-30 03:41:40.312533', '2025-10-30 03:41:40.312555', 30, '', NULL),
(55, 'yo y el', 'texto', 1, '2025-10-30 23:44:43.336488', '2025-10-30 23:44:43.336508', 35, '', 'https://media2.giphy.com/media/v1.Y2lkPTk4NTIwMzk5dTJ2Z3kzOHVvMWJtNmk3YjJjbDczbWZxenhkNGJocXc2dm05aG51OCZlcD12MV9naWZzX3NlYXJjaCZjdD1n/l0HlUHWbjYgK211zG/giphy.gif'),
(56, '¡Muchas gracias a @tiaturbina por este increíble regalo! 🎁\n\nRecibí un Cafetera Italiana.', 'texto', 1, '2025-10-30 23:47:49.523293', '2025-10-30 23:47:49.523310', 24, '', NULL),
(57, 'its fucking halloween bitches', 'texto', 1, '2025-10-30 23:52:11.697438', '2025-10-30 23:52:11.697452', 28, '', 'https://media2.giphy.com/media/v1.Y2lkPTk4NTIwMzk5eW9sdHF3d2s3OGE3MGlsZDNvaXRmZ3kzaGxlMDZ2bXhqa2dhNWF5OSZlcD12MV9naWZzX3RyZW5kaW5nJmN0PWc/HqkByeaqlG5TNbMOkq/giphy.gif'),
(58, '¡Muchas gracias a @elias-alcaide-leiva por este increíble regalo! 🎁\n\nRecibí un Rascador para Gato.', 'texto', 1, '2025-10-30 23:52:35.152510', '2025-10-30 23:52:35.152526', 28, '', NULL),
(59, '¡Muchas gracias a @pailita69 por este increíble regalo! 🎁\n\nRecibí un Escritorio Eléctrico.', 'texto', 1, '2025-10-30 23:56:52.406130', '2025-10-30 23:56:52.406147', 24, '', NULL),
(61, '¡Muchas gracias a @pailita69 por este increíble regalo! 🎁\n\nRecibí un Audífonos Inalámbricos.', 'texto', 1, '2025-10-31 01:43:15.754113', '2025-10-31 01:43:15.754128', 24, '', NULL),
(62, '¡Muchas gracias a @pailita69 por este increíble regalo! 🎁\n\nRecibí un Audífonos Inalámbricos.', 'texto', 1, '2025-10-31 01:56:21.386520', '2025-10-31 01:56:21.393738', 24, '', NULL),
(63, '¡Muchas gracias a @pailita69 por este increíble regalo! 🎁\n\nRecibí un Escritorio Eléctrico.', 'imagen', 1, '2025-10-31 02:01:38.125514', '2025-10-31 02:01:38.142376', 24, 'posts/Captura_de_pantalla_2025-08-25_224947.png', NULL),
(64, '¡Muchas gracias a @tiaturbina por este increíble regalo! 🎁\n\nRecibí un Cafetera Italiana.', 'imagen', 1, '2025-10-31 03:21:51.100871', '2025-10-31 03:21:51.125394', 30, 'posts/thank_7e178935a6f14b039ca1d70e4f202a0f_CafeteraItaliana.jpg', NULL),
(65, '¡Muchas gracias a @tiaturbina por este increíble regalo! 🎁\n\nRecibí un Lego Nissan GTR.', 'imagen', 1, '2025-11-04 02:22:33.457854', '2025-11-04 02:22:33.478184', 2, 'posts/thank_f91239ea92ef49e2a086367835f3ecdf_LegoAuto.jpg', NULL),
(66, '¡Muchas gracias a @matysepsi por este increíble regalo! 🎁 Recibí un Satisfayer.', 'imagen', 1, '2025-11-04 02:35:51.518962', '2025-11-04 02:35:51.518990', 11, 'posts/11112131.jpg', ''),
(81, 'niggers', 'texto', 1, '2025-11-05 02:34:40.641672', '2025-11-05 02:34:40.641686', 28, '', ''),
(90, '¡Muchas gracias a @kmbappe por este increíble regalo! 🎁\n\nRecibí un Cafetera Italiana.', 'imagen', 1, '2025-11-05 17:47:06.883338', '2025-11-05 17:47:06.902197', 45, 'posts/thank_29775728792b4458b08a39b92cb4ed51_CafeteraItaliana.jpg', NULL),
(91, 'Hola', 'texto', 1, '2025-11-05 17:47:53.394166', '2025-11-05 17:47:53.394188', 45, '', 'https://media0.giphy.com/media/v1.Y2lkPTk4NTIwMzk5bXdhdjg0MHI3Ym91Z3RlOGk1cHE4ZjkxdmR0b2ZubDhvemh4a2FyMCZlcD12MV9naWZzX3RyZW5kaW5nJmN0PWc/aTmVHpd2ATrdRW6eum/giphy.gif'),
(93, '¡Muchas gracias a @tiaturbina por este increíble regalo! 🎁\n\nRecibí un Dron Sonic.', 'imagen', 1, '2025-11-18 00:07:33.479617', '2025-11-18 00:07:34.101253', 24, 'posts/imagen_2025-11-17_210728386.png', NULL),
(98, '¡Muchas gracias a @tiaturbina por este increíble regalo! 🎁\n\nRecibí un Audífonos Inalámbricos.', 'imagen', 1, '2025-11-19 02:31:10.890673', '2025-11-19 02:31:10.906199', 24, 'posts/thank_c7181060fc3f41eeba038898a443dcbc_AudifonosSonyInalambricos.jpg', NULL),
(99, '/grafico A 1, B 2', 'texto', 1, '2025-11-22 02:21:00.705103', '2025-11-22 02:21:00.705118', 11, '', '');

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
(1, 0, 0, 0, 0, 2, 0),
(2, 0, 0, 0, 0, 24, 0),
(3, 0, 0, 0, 0, 11, 0),
(4, 0, 0, 0, 0, 4, 0),
(5, 0, 0, 0, 0, 1, 1),
(7, 0, 0, 0, 0, 27, 0),
(8, 0, 0, 0, 0, 28, 0),
(9, 0, 0, 0, 0, 29, 0),
(10, 0, 0, 0, 0, 30, 0),
(12, 1, 1, 1, 0, 35, 1),
(13, 1, 1, 1, 0, 38, 1),
(14, 1, 1, 1, 0, 41, 1),
(15, 1, 1, 1, 0, 45, 1),
(16, 1, 1, 1, 0, 46, 1),
(17, 1, 1, 1, 0, 48, 1),
(18, 0, 0, 0, 0, 49, 0),
(20, 1, 1, 1, 0, 51, 1);

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

--
-- Volcado de datos para la tabla `recommendation_feedback`
--

INSERT INTO `recommendation_feedback` (`id`, `feedback_type`, `created_at`, `product_id`, `user_id`) VALUES
(1, 'dislike', '2025-10-28 00:53:10.147050', 131, 30),
(2, 'dislike', '2025-10-28 00:53:16.411802', 133, 30),
(3, 'dislike', '2025-10-28 01:01:41.784490', 133, 28),
(4, 'dislike', '2025-10-28 01:05:53.145034', 133, 2),
(5, 'dislike', '2025-10-28 01:05:58.739092', 135, 2),
(6, 'dislike', '2025-10-28 01:06:35.277377', 136, 2),
(7, 'dislike', '2025-10-28 01:06:37.590477', 137, 2),
(8, 'dislike', '2025-10-28 02:06:38.571602', 115, 30),
(9, 'dislike', '2025-10-28 02:06:57.624214', 1, 30),
(10, 'dislike', '2025-10-28 02:11:30.110248', 114, 30),
(11, 'dislike', '2025-10-28 02:16:13.840249', 111, 30),
(12, 'dislike', '2025-10-28 02:19:23.217898', 129, 2),
(13, 'dislike', '2025-10-28 02:45:30.488898', 127, 2),
(14, 'dislike', '2025-10-28 02:46:39.107639', 113, 30),
(15, 'dislike', '2025-10-28 02:47:53.488261', 126, 2),
(16, 'dislike', '2025-10-28 02:50:05.575083', 134, 30),
(17, 'dislike', '2025-10-28 02:52:17.088615', 104, 30),
(18, 'dislike', '2025-10-28 02:52:20.290160', 112, 30),
(19, 'dislike', '2025-10-28 03:01:55.980581', 125, 2),
(20, 'dislike', '2025-10-28 04:12:20.986127', 124, 2),
(21, 'dislike', '2025-10-28 04:12:27.164292', 123, 2),
(22, 'dislike', '2025-10-29 02:21:42.319532', 108, 30),
(23, 'dislike', '2025-10-29 02:23:38.215670', 105, 27),
(25, 'dislike', '2025-10-29 02:56:12.289386', 122, 2),
(26, 'dislike', '2025-10-30 23:46:52.721288', 112, 24),
(27, 'dislike', '2025-10-30 23:51:17.955786', 108, 24),
(28, 'dislike', '2025-10-30 23:51:25.038129', 110, 24),
(29, 'dislike', '2025-10-30 23:52:29.286222', 104, 24),
(30, 'dislike', '2025-10-30 23:54:13.448423', 15, 24),
(31, 'dislike', '2025-10-30 23:54:15.461536', 106, 24),
(32, 'dislike', '2025-10-30 23:54:16.984715', 109, 24),
(33, 'dislike', '2025-10-31 00:00:37.534734', 114, 24),
(34, 'dislike', '2025-10-31 00:00:46.831777', 113, 24),
(35, 'dislike', '2025-10-31 00:16:58.026174', 136, 24),
(36, 'dislike', '2025-10-31 00:17:30.875164', 115, 24),
(37, 'dislike', '2025-10-31 00:18:54.317563', 4, 24),
(38, 'dislike', '2025-10-31 00:19:02.573626', 3, 24),
(39, 'dislike', '2025-10-31 00:19:11.202320', 6, 24),
(40, 'dislike', '2025-10-31 01:09:47.278935', 137, 24),
(41, 'dislike', '2025-10-31 01:25:10.648412', 121, 2),
(42, 'dislike', '2025-10-31 01:25:21.262924', 120, 2),
(43, 'dislike', '2025-10-31 01:25:47.516356', 118, 2),
(44, 'dislike', '2025-11-04 01:19:17.888457', 115, 2),
(45, 'dislike', '2025-11-05 00:58:55.378999', 133, 24),
(46, 'dislike', '2025-11-05 01:54:40.031431', 132, 24),
(47, 'dislike', '2025-11-05 02:39:45.645615', 119, 2),
(54, 'dislike', '2025-11-19 00:45:57.413905', 117, 2),
(55, 'dislike', '2025-11-19 00:45:59.050772', 116, 2),
(60, 'dislike', '2025-11-22 03:23:27.167859', 291, 2),
(61, 'dislike', '2025-11-26 00:43:51.328643', 290, 2),
(62, 'dislike', '2025-11-26 00:53:50.130165', 295, 2),
(63, 'dislike', '2025-11-26 00:57:02.600055', 294, 2),
(64, 'dislike', '2025-11-26 00:57:13.017548', 292, 2),
(65, 'dislike', '2025-11-26 00:57:15.904154', 287, 2),
(66, 'dislike', '2025-11-26 00:57:20.519326', 289, 2),
(67, 'dislike', '2025-11-26 00:58:45.277410', 284, 2),
(68, 'dislike', '2025-11-26 01:00:41.332057', 283, 2),
(69, 'dislike', '2025-11-26 01:00:52.256909', 282, 2),
(70, 'dislike', '2025-11-26 01:02:32.356221', 281, 2),
(71, 'dislike', '2025-11-26 01:02:37.575899', 280, 2),
(72, 'dislike', '2025-11-26 01:04:00.353186', 285, 2);

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
(2, 'nuevo_regalo', 169, 'itemenwishlist', 'Añadió \'Arena Sanitaria\' a favoritos', '2025-10-29 04:09:52.547914', 1, 2),
(3, 'nuevo_regalo', 170, 'itemenwishlist', 'Añadió \'Cinturón de Cuero\' a favoritos', '2025-10-29 04:10:08.625586', 1, 2),
(9, 'nuevo_seguidor', 23, 'user', 'Comenzó a seguir a elias-alcaide-leiva', '2025-10-29 05:08:30.936167', 1, 29),
(11, 'nuevo_regalo', 173, 'itemenwishlist', 'Añadió \'Lámpara de Escritorio\' a favoritos', '2025-10-29 05:08:39.317084', 1, 29),
(12, 'nuevo_regalo', 174, 'itemenwishlist', 'Añadió \'Botella de Agua\' a favoritos', '2025-10-29 05:08:40.074326', 1, 29),
(13, 'nuevo_post', 40, 'post', 'Creó el post: Soy el 2do admin mas importante!...', '2025-10-29 05:15:04.790337', 1, 29),
(14, 'nuevo_comentario', 48, 'comentario', 'Comentó en el post 39: Me encanta!! se mate!! Não poste mais nada!!...', '2025-10-30 01:21:13.081527', 1, 2),
(15, 'nueva_reaccion', 155, 'like', 'Le dio like al post 39', '2025-10-30 01:21:15.994706', 1, 2),
(16, 'nueva_reaccion', 156, 'like', 'Le dio like al post 38', '2025-10-30 01:21:25.583719', 1, 2),
(17, 'nuevo_seguidor', 2, 'user', 'Comenzó a seguir a cristiano', '2025-10-30 01:26:07.068404', 1, 11),
(18, 'nuevo_seguidor', 11, 'user', 'Comenzó a seguir a tiaturbina', '2025-10-30 01:26:07.074184', 1, 2),
(19, 'nuevo_regalo', 175, 'itemenwishlist', 'Añadió \'Rascador para Gato\' a favoritos', '2025-10-30 02:11:00.278471', 1, 2),
(20, 'nuevo_post', 41, 'post', 'Creó el post: APASTAR!!!...', '2025-10-30 02:59:12.227902', 1, 2),
(22, 'nuevo_post', 43, 'post', 'Creó el post: PENCA CTM...', '2025-10-30 03:00:25.881882', 1, 11),
(23, 'nuevo_comentario', 49, 'comentario', 'Comentó en el post 39: apoyo a cristiano, cambien de jefe de proyecto...', '2025-10-30 03:00:58.170171', 1, 11),
(24, 'nuevo_post', 44, 'post', 'Creó el post: jejeje...', '2025-10-30 03:02:25.557417', 1, 4),
(25, 'nuevo_post', 45, 'post', 'Creó el post: penca ctm the gpt culiao...', '2025-10-30 03:02:39.820906', 1, 28),
(26, 'nueva_reaccion', 157, 'like', 'Le dio like al post 45', '2025-10-30 03:04:56.346151', 1, 2),
(27, 'nueva_reaccion', 158, 'like', 'Le dio like al post 44', '2025-10-30 03:05:21.343055', 1, 4),
(28, 'nuevo_post', 46, 'post', 'Creó el post: yo y el elias\r\nel castiiiiii...', '2025-10-30 03:06:20.018703', 1, 30),
(29, 'nueva_reaccion', 159, 'like', 'Le dio like al post 46', '2025-10-30 03:06:22.338296', 1, 30),
(30, 'nueva_reaccion', 160, 'like', 'Le dio like al post 45', '2025-10-30 03:06:23.560160', 1, 30),
(32, 'nuevo_post', 48, 'post', 'Creó el post: jarvis you know what to do...', '2025-10-30 03:09:23.874421', 1, 28),
(33, 'nuevo_comentario', 50, 'comentario', 'Comentó en el post 47: y esa mariconada...', '2025-10-30 03:09:56.193608', 1, 28),
(34, 'nuevo_comentario', 51, 'comentario', 'Comentó en el post 47: that was jarvis not me...', '2025-10-30 03:10:03.177969', 1, 28),
(40, 'nuevo_post', 55, 'post', 'Creó el post: yo y el...', '2025-10-30 23:44:43.343558', 1, 35),
(41, 'nuevo_regalo', 177, 'itemenwishlist', 'Añadió \'Mouse Gamer\' a favoritos', '2025-10-30 23:45:01.100591', 1, 35),
(42, 'nuevo_regalo', 178, 'itemenwishlist', 'Añadió \'Monitor Curvo\' a favoritos', '2025-10-30 23:45:03.083114', 1, 35),
(43, 'nuevo_regalo', 179, 'itemenwishlist', 'Añadió \'Teclado Mecánico\' a favoritos', '2025-10-30 23:45:04.747482', 1, 35),
(44, 'nuevo_seguidor', 30, 'user', 'Comenzó a seguir a pailita69', '2025-10-30 23:46:42.549984', 1, 24),
(45, 'nuevo_seguidor', 24, 'user', 'Comenzó a seguir a matysepsi', '2025-10-30 23:46:42.611335', 1, 30),
(46, 'nuevo_regalo', 180, 'itemenwishlist', 'Añadió \'Pesa Rusa\' a favoritos', '2025-10-30 23:46:54.353186', 1, 24),
(47, 'nuevo_regalo', 181, 'itemenwishlist', 'Añadió \'Cafetera Italiana\' a favoritos', '2025-10-30 23:46:56.166797', 1, 24),
(48, 'nuevo_regalo', 182, 'itemenwishlist', 'Añadió \'Lámpara de Escritorio\' a favoritos', '2025-10-30 23:48:36.829435', 1, 24),
(49, 'nuevo_regalo', 183, 'itemenwishlist', 'Añadió \'Escritorio Eléctrico\' a favoritos', '2025-10-30 23:48:37.509942', 1, 24),
(50, 'nuevo_comentario', 52, 'comentario', 'Comentó en el post 55: sexooo...', '2025-10-30 23:50:44.447132', 1, 24),
(51, 'nueva_reaccion', 162, 'like', 'Le dio like al post 55', '2025-10-30 23:50:46.689359', 1, 24),
(52, 'nuevo_comentario', 53, 'comentario', 'Comentó en el post 52: Oh my fucking god...', '2025-10-30 23:51:39.575292', 1, 28),
(53, 'nuevo_post', 57, 'post', 'Creó el post: its fucking halloween bitches...', '2025-10-30 23:52:11.702631', 1, 28),
(54, 'nuevo_comentario', 54, 'comentario', 'Comentó en el post 57: saludos hombre fornite...', '2025-10-30 23:57:31.310474', 1, 24),
(55, 'nuevo_regalo', 184, 'itemenwishlist', 'Añadió \'Dron Sonic\' a favoritos', '2025-10-31 00:15:29.648215', 1, 24),
(56, 'nuevo_regalo', 185, 'itemenwishlist', 'Añadió \'Audífonos Inalámbricos\' a favoritos', '2025-10-31 00:15:31.251064', 1, 24),
(57, 'nueva_reaccion', 163, 'like', 'Le dio like al post 59', '2025-10-31 01:25:00.420208', 1, 2),
(58, 'nuevo_regalo', 186, 'itemenwishlist', 'Añadió \'Trencito de Juguete\' a favoritos', '2025-10-31 01:26:10.982146', 1, 2),
(59, 'nuevo_regalo', 187, 'itemenwishlist', 'Añadió \'Lego Nissan GTR\' a favoritos', '2025-10-31 01:26:30.226009', 1, 2),
(60, 'nuevo_seguidor', 2, 'user', 'Comenzó a seguir a cristiano', '2025-10-31 01:32:05.928370', 1, 27),
(61, 'nuevo_seguidor', 27, 'user', 'Comenzó a seguir a kmbappe', '2025-10-31 01:32:05.937573', 1, 2),
(62, 'nuevo_post', 60, 'post', 'Creó el post: hola...', '2025-10-31 01:35:10.688128', 1, 27),
(63, 'nueva_reaccion', 164, 'like', 'Le dio like al post 60', '2025-10-31 01:35:16.256131', 1, 27),
(64, 'nuevo_post', 62, 'post', 'Creó el post de agradecimiento: ¡Muchas gracias a @pailita69 por este increíble re...', '2025-10-31 01:56:21.398443', 1, 24),
(65, 'nuevo_post', 63, 'post', 'Creó el post de agradecimiento: ¡Muchas gracias a @pailita69 por este increíble re...', '2025-10-31 02:01:38.150305', 1, 24),
(66, 'nuevo_seguidor', 2, 'user', 'Comenzó a seguir a cristiano', '2025-10-31 02:12:18.127333', 1, 30),
(67, 'nuevo_seguidor', 30, 'user', 'Comenzó a seguir a pailita69', '2025-10-31 02:12:18.646744', 1, 2),
(68, 'nuevo_post', 64, 'post', 'Creó el post de agradecimiento: ¡Muchas gracias a @tiaturbina por este increíble r...', '2025-10-31 03:21:51.134842', 1, 30),
(69, 'nuevo_comentario', 55, 'comentario', 'Comentó en el post 64: la wea feaxd...', '2025-11-04 01:25:17.479756', 1, 2),
(70, 'nueva_reaccion', 165, 'like', 'Le dio like al post 64', '2025-11-04 01:26:01.578614', 1, 2),
(71, 'nuevo_comentario', 56, 'comentario', 'Comentó en el post 57: feliz cum...', '2025-11-04 01:31:01.218929', 1, 2),
(72, 'nuevo_regalo', 188, 'itemenwishlist', 'Añadió \'Lego Nissan GTR\' a favoritos', '2025-11-04 01:33:42.849859', 1, 2),
(73, 'nuevo_regalo', 189, 'itemenwishlist', 'Añadió \'Lego Nissan GTR\' a favoritos', '2025-11-04 01:33:51.664726', 1, 2),
(74, 'nuevo_seguidor', 24, 'user', 'Comenzó a seguir a matysepsi', '2025-11-04 01:35:36.242826', 1, 2),
(75, 'nuevo_seguidor', 2, 'user', 'Comenzó a seguir a cristiano', '2025-11-04 01:35:36.247834', 1, 24),
(76, 'nuevo_comentario', 57, 'comentario', 'Comentó en el post 63: que wea?...', '2025-11-04 01:38:43.836711', 1, 2),
(77, 'nuevo_regalo', 190, 'itemenwishlist', 'Añadió \'Lego Nissan GTR\' a favoritos', '2025-11-04 01:57:28.408139', 1, 2),
(78, 'nuevo_regalo', 191, 'itemenwishlist', 'Añadió \'Lego Nissan GTR\' a favoritos', '2025-11-04 01:57:44.255087', 1, 2),
(79, 'nuevo_seguidor', 24, 'user', 'Comenzó a seguir a matysepsi', '2025-11-04 02:15:06.274458', 1, 2),
(80, 'nuevo_seguidor', 2, 'user', 'Comenzó a seguir a cristiano', '2025-11-04 02:15:07.772954', 1, 24),
(81, 'nuevo_post', 65, 'post', 'Creó el post de agradecimiento: ¡Muchas gracias a @tiaturbina por este increíble r...', '2025-11-04 02:22:33.486455', 1, 2),
(82, 'nuevo_comentario', 58, 'comentario', 'Comentó en el post 64: que horrible amigo para eso nada...', '2025-11-04 02:34:39.840668', 1, 11),
(83, 'nuevo_post', 66, 'post', 'Creó el post: ¡Muchas gracias a @matysepsi por este increíble re...', '2025-11-04 02:35:51.524501', 1, 11),
(84, 'nueva_reaccion', 166, 'like', 'Le dio like al post 66', '2025-11-04 02:36:07.468610', 1, 24),
(85, 'nuevo_comentario', 59, 'comentario', 'Comentó en el post 66: me encanta!! por favor cuentame que tal...', '2025-11-04 02:36:21.592727', 1, 24),
(86, 'nuevo_comentario', 60, 'comentario', 'Comentó en el post 66: ahora te cuento las primeras experiencias...', '2025-11-04 02:36:36.700219', 1, 11),
(87, 'nueva_reaccion', 167, 'like', 'Le dio like al post 66', '2025-11-04 02:37:05.146104', 1, 11),
(88, 'nuevo_comentario', 61, 'comentario', 'Comentó en el post 66: what the fuck, aunt turbin you\'re a fuckin psycho...', '2025-11-04 23:54:18.857362', 1, 28),
(89, 'nueva_reaccion', 168, 'like', 'Le dio like al post 66', '2025-11-05 00:04:53.537025', 1, 2),
(90, 'nuevo_comentario', 62, 'comentario', 'Comentó en el post 66: weon...', '2025-11-05 00:46:40.846618', 1, 2),
(91, 'nuevo_post', 67, 'post', 'Creó el post: weon...', '2025-11-05 00:47:22.162215', 1, 2),
(92, 'nuevo_post', 68, 'post', 'Creó el post: conchetumare...', '2025-11-05 00:53:06.369462', 1, 2),
(93, 'nuevo_post', 69, 'post', 'Creó el post: conchetumare...', '2025-11-05 00:54:54.511141', 1, 2),
(94, 'nuevo_post', 70, 'post', 'Creó el post: weon...', '2025-11-05 01:09:31.046820', 1, 2),
(95, 'nuevo_comentario', 63, 'comentario', 'Comentó en el post 54: aweonao culiao...', '2025-11-05 01:19:16.302636', 1, 2),
(96, 'nuevo_post', 71, 'post', 'Creó el post: aweonao culiao...', '2025-11-05 01:21:07.513156', 1, 2),
(97, 'nuevo_comentario', 64, 'comentario', 'Comentó en el post 71: tonto conchetumare...', '2025-11-05 01:21:17.361519', 1, 2),
(98, 'nuevo_comentario', 65, 'comentario', 'Comentó en el post 71: aweonao...', '2025-11-05 01:24:03.941713', 1, 2),
(99, 'nuevo_comentario', 66, 'comentario', 'Comentó en el post 66: que rico...', '2025-11-05 01:25:14.872682', 1, 24),
(100, 'nuevo_comentario', 67, 'comentario', 'Comentó en el post 71: pene...', '2025-11-05 01:25:36.616653', 1, 2),
(101, 'nuevo_comentario', 68, 'comentario', 'Comentó en el post 71: culiao...', '2025-11-05 01:29:32.868507', 1, 2),
(102, 'nuevo_comentario', 69, 'comentario', 'Comentó en el post 71: culiao...', '2025-11-05 01:29:55.236155', 1, 2),
(103, 'nuevo_comentario', 70, 'comentario', 'Comentó en el post 71: culiao...', '2025-11-05 01:36:33.067616', 1, 2),
(104, 'nuevo_comentario', 71, 'comentario', 'Comentó en el post 71: c****o...', '2025-11-05 01:36:44.619689', 1, 2),
(105, 'nuevo_comentario', 72, 'comentario', 'Comentó en el post 71: culiao...', '2025-11-05 01:38:11.902779', 1, 2),
(106, 'nuevo_comentario', 73, 'comentario', 'Comentó en el post 71: culiao...', '2025-11-05 01:38:21.499709', 1, 2),
(107, 'nuevo_comentario', 74, 'comentario', 'Comentó en el post 71: c**********e...', '2025-11-05 01:38:36.146912', 1, 2),
(108, 'nuevo_comentario', 75, 'comentario', 'Comentó en el post 71: culiao weon...', '2025-11-05 01:44:17.720112', 1, 2),
(109, 'nuevo_comentario', 76, 'comentario', 'Comentó en el post 71: culiao weon...', '2025-11-05 01:44:28.706676', 1, 2),
(110, 'nuevo_comentario', 77, 'comentario', 'Comentó en el post 71: c****o w**n...', '2025-11-05 01:44:47.465429', 1, 2),
(111, 'nuevo_comentario', 78, 'comentario', 'Comentó en el post 71: culiaooo...', '2025-11-05 01:51:50.249508', 1, 2),
(112, 'nuevo_comentario', 79, 'comentario', 'Comentó en el post 71: culiao...', '2025-11-05 02:06:35.395956', 1, 2),
(113, 'nuevo_comentario', 80, 'comentario', 'Comentó en el post 71: culiao...', '2025-11-05 02:06:40.918517', 1, 2),
(114, 'nuevo_comentario', 81, 'comentario', 'Comentó en el post 71: aweonao culiao...', '2025-11-05 02:07:10.378592', 1, 2),
(115, 'nuevo_post', 72, 'post', 'Creó el post: pene...', '2025-11-05 02:25:50.553861', 1, 2),
(116, 'nuevo_post', 73, 'post', 'Creó el post: pEn E...', '2025-11-05 02:26:00.695691', 1, 2),
(117, 'nuevo_comentario', 82, 'comentario', 'Comentó en el post 71: bro tf are you sayinh...', '2025-11-05 02:30:29.232356', 1, 28),
(118, 'nuevo_comentario', 83, 'comentario', 'Comentó en el post 71: bro tf are you saying fucking nigger...', '2025-11-05 02:30:46.069399', 1, 28),
(119, 'nuevo_comentario', 84, 'comentario', 'Comentó en el post 71: puto...', '2025-11-05 02:31:27.413093', 1, 4),
(120, 'nuevo_post', 74, 'post', 'Creó el post: i wanna have sex with @tiaturbina...', '2025-11-05 02:33:16.673692', 1, 28),
(121, 'nuevo_post', 75, 'post', 'Creó el post: blowjob...', '2025-11-05 02:33:31.177492', 1, 28),
(122, 'nuevo_post', 76, 'post', 'Creó el post: pussy...', '2025-11-05 02:33:37.462054', 1, 28),
(123, 'nuevo_post', 77, 'post', 'Creó el post: penis...', '2025-11-05 02:33:41.605980', 1, 28),
(124, 'nuevo_post', 78, 'post', 'Creó el post: who wants to see my dick...', '2025-11-05 02:33:44.705666', 1, 4),
(125, 'nuevo_post', 79, 'post', 'Creó el post: dick...', '2025-11-05 02:33:55.151408', 1, 28),
(126, 'nuevo_post', 80, 'post', 'Creó el post: niGGa niGGA niGGers...', '2025-11-05 02:34:15.539589', 1, 4),
(127, 'nuevo_post', 81, 'post', 'Creó el post: niggers...', '2025-11-05 02:34:40.646211', 1, 28),
(128, 'nuevo_comentario', 85, 'comentario', 'Comentó en el post 81: fucking niggers i hate niggas...', '2025-11-05 02:35:21.639632', 1, 28),
(129, 'nuevo_comentario', 86, 'comentario', 'Comentó en el post 81: nigga...', '2025-11-05 02:35:31.562112', 1, 28),
(130, 'nuevo_post', 82, 'post', 'Creó el post: asshole...', '2025-11-05 02:36:11.118948', 1, 4),
(131, 'nuevo_post', 83, 'post', 'Creó el post: igual...', '2025-11-05 02:38:32.097798', 1, 4),
(143, 'nueva_reaccion', 169, 'like', 'Le dio like al post 81', '2025-11-05 04:01:43.166370', 1, 2),
(144, 'nueva_reaccion', 170, 'like', 'Le dio like al post 81', '2025-11-05 04:01:46.468663', 1, 2),
(145, 'nueva_reaccion', 171, 'like', 'Le dio like al post 81', '2025-11-05 04:01:52.245542', 1, 2),
(146, 'nueva_reaccion', 172, 'like', 'Le dio like al post 81', '2025-11-05 04:01:56.346615', 1, 2),
(147, 'nuevo_seguidor', 27, 'user', 'Comenzó a seguir a kmbappe', '2025-11-05 04:09:12.907743', 1, 29),
(148, 'nuevo_seguidor', 29, 'user', 'Comenzó a seguir a 1234alcornoque', '2025-11-05 04:09:12.912492', 1, 27),
(149, 'nuevo_seguidor', 27, 'user', 'Comenzó a seguir a kmbappe', '2025-11-05 04:10:42.563251', 1, 2),
(150, 'nuevo_seguidor', 2, 'user', 'Comenzó a seguir a cristiano', '2025-11-05 04:10:42.567905', 1, 27),
(151, 'nuevo_regalo', 201, 'itemenwishlist', 'Añadió \'Funko Pop Grogu\' a favoritos', '2025-11-05 04:13:05.970461', 1, 27),
(152, 'nuevo_post', 86, 'post', 'Creó el post: conchetumare...', '2025-11-05 04:14:42.713641', 1, 27),
(153, 'nuevo_post', 87, 'post', 'Creó el post: perra...', '2025-11-05 04:20:19.090256', 1, 29),
(156, 'nuevo_seguidor', 27, 'user', 'Comenzó a seguir a kmbappe', '2025-11-05 17:42:58.062087', 1, 45),
(157, 'nuevo_seguidor', 45, 'user', 'Comenzó a seguir a elias-alcaide-leiva', '2025-11-05 17:42:58.066451', 1, 27),
(158, 'nuevo_regalo', 202, 'itemenwishlist', 'Añadió \'Cafetera Italiana\' a favoritos', '2025-11-05 17:45:57.792388', 1, 45),
(159, 'nuevo_post', 90, 'post', 'Creó el post de agradecimiento: ¡Muchas gracias a @kmbappe por este increíble rega...', '2025-11-05 17:47:06.906927', 1, 45),
(160, 'nuevo_post', 91, 'post', 'Creó el post: Hola...', '2025-11-05 17:47:53.399768', 1, 45),
(161, 'nuevo_post', 92, 'post', 'Creó el post: weon...', '2025-11-05 17:48:49.305453', 1, 45),
(162, 'nueva_reaccion', 173, 'like', 'Le dio like al post 91', '2025-11-05 17:49:15.497846', 1, 45),
(163, 'nuevo_comentario', 87, 'comentario', 'Comentó en el post 91: que raro!!!...', '2025-11-05 17:49:20.919667', 1, 45),
(164, 'nuevo_regalo', 203, 'itemenwishlist', 'Añadió \'Toalla de Baño\' a favoritos', '2025-11-05 18:03:33.367835', 1, 45),
(165, 'nuevo_seguidor', 41, 'user', 'Comenzó a seguir a lukassacuna', '2025-11-11 01:06:47.841430', 1, 4),
(166, 'nuevo_seguidor', 4, 'user', 'Comenzó a seguir a pessi', '2025-11-11 01:06:47.847865', 1, 41),
(167, 'nueva_reaccion', 174, 'like', 'Le dio like al post 66', '2025-11-11 01:13:50.778242', 1, 24),
(168, 'nueva_reaccion', 175, 'like', 'Le dio like al post 66', '2025-11-11 01:13:51.321163', 1, 24),
(169, 'nueva_reaccion', 176, 'like', 'Le dio like al post 66', '2025-11-11 01:13:51.633196', 1, 24),
(170, 'nueva_reaccion', 177, 'like', 'Le dio like al post 66', '2025-11-11 01:13:52.511623', 1, 24),
(171, 'nuevo_seguidor', 4, 'user', 'Comenzó a seguir a pessi', '2025-11-11 01:28:00.362949', 1, 24),
(172, 'nuevo_seguidor', 24, 'user', 'Comenzó a seguir a matysepsi', '2025-11-11 01:28:00.367338', 1, 4),
(173, 'nuevo_regalo', 204, 'itemenwishlist', 'Añadió \'Chaqueta Impermeable\' a favoritos', '2025-11-11 02:30:47.246752', 1, 2),
(174, 'nuevo_regalo', 205, 'itemenwishlist', 'Añadió \'Chaqueta Impermeable\' a favoritos', '2025-11-11 02:30:49.220340', 1, 2),
(175, 'nuevo_regalo', 214, 'itemenwishlist', 'Añadió \'SONY Consola PS5 PlayStation 5 Slim (Edición Digital) Por Bestmart\' a favoritos', '2025-11-11 03:08:38.468514', 1, 2),
(176, 'nuevo_regalo', 215, 'itemenwishlist', 'Añadió \'Envío gratis app SONY Reproductor Remoto PlayStation PS5 Portal Negro Por Bestmart\' a favoritos', '2025-11-11 03:08:39.855287', 1, 2),
(177, 'nuevo_regalo', 217, 'itemenwishlist', 'Añadió \'Envío gratis app SONY Consola Playstation 5 mas God of War PS5 Por Jac Entertainment\' a favoritos', '2025-11-11 03:24:47.067045', 1, 2),
(178, 'nuevo_regalo', 218, 'itemenwishlist', 'Añadió \'SONY Consola PS5 PlayStation 5 Slim (Edición Digital) Por Bestmart\' a favoritos', '2025-11-11 03:25:29.047624', 1, 2),
(179, 'nuevo_regalo', 225, 'itemenwishlist', 'Añadió \'Mouse Gamer\' a favoritos', '2025-11-15 02:37:31.717786', 1, 2),
(180, 'nuevo_regalo', 226, 'itemenwishlist', 'Añadió \'Mochila Urbana\' a favoritos', '2025-11-15 04:17:22.700789', 1, 27),
(181, 'nuevo_regalo', 227, 'itemenwishlist', 'Añadió \'Mouse Gamer\' a favoritos', '2025-11-15 04:19:03.114353', 1, 27),
(182, 'nuevo_post', 93, 'post', 'Creó el post de agradecimiento: ¡Muchas gracias a @tiaturbina por este increíble r...', '2025-11-18 00:07:34.699201', 1, 24),
(183, 'nueva_reaccion', 178, 'like', 'Le dio like al post 93', '2025-11-18 00:07:51.573588', 1, 24),
(184, 'nueva_reaccion', 179, 'like', 'Le dio like al post 93', '2025-11-18 00:07:55.333617', 1, 24),
(185, 'nuevo_regalo', 231, 'itemenwishlist', 'Añadió \'Audífonos Inalámbricos\' a favoritos', '2025-11-18 00:16:26.328488', 1, 2),
(186, 'nuevo_regalo', 232, 'itemenwishlist', 'Añadió \'Jeans Hombre\' a favoritos', '2025-11-18 00:32:04.132717', 1, 2),
(187, 'nuevo_post', 94, 'post', 'Creó el post: weon...', '2025-11-19 00:24:10.821324', 1, 2),
(188, 'nuevo_comentario', 88, 'comentario', 'Comentó en el post 57: p1co...', '2025-11-19 02:16:10.919677', 1, 2),
(189, 'nuevo_post', 96, 'post', 'Creó el post de agradecimiento: ¡Muchas gracias a @pessi por este increíble regalo...', '2025-11-19 02:29:40.071911', 1, 24),
(190, 'nuevo_post', 97, 'post', 'Creó el post de agradecimiento: ¡Muchas gracias a @tiaturbina por este increíble r...', '2025-11-19 02:30:03.907028', 1, 24),
(191, 'nuevo_post', 98, 'post', 'Creó el post de agradecimiento: ¡Muchas gracias a @tiaturbina por este increíble r...', '2025-11-19 02:31:10.911147', 1, 24),
(192, 'nueva_reaccion', 180, 'like', 'Le dio like al post 98', '2025-11-19 02:31:30.520290', 1, 24),
(193, 'nueva_reaccion', 181, 'like', 'Le dio like al post 46', '2025-11-19 02:31:45.939231', 1, 24),
(194, 'nuevo_post', 99, 'post', 'Creó el post: /grafico A 1, B 2...', '2025-11-22 02:21:00.710347', 1, 11),
(195, 'nuevo_seguidor', 27, 'user', 'Comenzó a seguir a kmbappe', '2025-11-25 01:45:12.663726', 1, 11),
(196, 'nuevo_seguidor', 11, 'user', 'Comenzó a seguir a tiaturbina', '2025-11-25 01:45:12.670645', 1, 27);

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

--
-- Volcado de datos para la tabla `Reporte_strike`
--

INSERT INTO `Reporte_strike` (`id_reporte`, `motivo`, `fecha_creacion`, `id_post`, `id_user`) VALUES
(1, 'Contenido inapropiado', '2025-11-04 02:31:18.363637', 64, 24),
(2, 'Contenido inapropiado', '2025-11-04 02:32:37.430776', 58, 2),
(4, 'Contenido inapropiado', '2025-11-05 17:49:48.556999', 91, 27),
(5, 'Contenido inapropiado', '2025-11-22 03:27:29.913717', 99, 2);

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

--
-- Volcado de datos para la tabla `resena_sitio`
--

INSERT INTO `resena_sitio` (`id_resena`, `calificacion`, `comentario`, `fecha_resena`, `id_usuario`) VALUES
(15, 5, 'jarvis clip that shit\r\n\r\n{# DEBUG opcional: descomenta si quieres ver que llegan los datos\r\nresenas.len=3 · own_resena=sí\r\n\r\n#}', '2025-10-24 01:00:36.620687', 28),
(18, 1, 'Buena la pagina me encanto!!!!', '2025-10-29 04:19:11.526637', 2),
(19, 5, 'excelente page!', '2025-10-30 01:41:46.045506', 11),
(21, 5, 'aaaaaaaaaaaaaaaaa', '2025-10-31 03:36:35.972693', 4),
(22, 5, 'Me encanto la pagina!', '2025-11-05 04:15:33.309596', 27),
(23, 5, 'Noooooo que bien!', '2025-11-05 17:50:43.301595', 45);

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

--
-- Volcado de datos para la tabla `seguidor`
--

INSERT INTO `seguidor` (`relacion_id`, `fecha_seguimiento`, `seguido_id`, `seguidor_id`) VALUES
(7, '2025-10-02 01:31:08.560320', 24, 11),
(8, '2025-10-02 01:31:08.566260', 11, 24),
(9, '2025-10-02 01:36:21.227846', 4, 11),
(10, '2025-10-02 01:36:21.233511', 11, 4),
(17, '2025-10-15 00:09:46.012400', 11, 28),
(18, '2025-10-15 00:09:46.019511', 28, 11),
(19, '2025-10-15 01:25:45.091344', 4, 2),
(20, '2025-10-15 01:25:45.097238', 2, 4),
(21, '2025-10-18 03:34:12.384502', 28, 2),
(22, '2025-10-18 03:34:12.390089', 2, 28),
(49, '2025-10-23 01:24:31.633196', 11, 30),
(50, '2025-10-23 01:24:31.638768', 30, 11),
(53, '2025-10-23 02:38:06.203455', 4, 30),
(54, '2025-10-23 02:38:06.210550', 30, 4),
(71, '2025-10-30 01:26:07.043736', 11, 2),
(72, '2025-10-30 01:26:07.049673', 2, 11),
(73, '2025-10-30 23:46:42.391343', 24, 30),
(74, '2025-10-30 23:46:42.398043', 30, 24),
(83, '2025-11-05 04:09:12.879894', 29, 27),
(84, '2025-11-05 04:09:12.886513', 27, 29),
(85, '2025-11-05 04:10:42.546956', 2, 27),
(86, '2025-11-05 04:10:42.552371', 27, 2),
(87, '2025-11-05 17:42:58.037777', 45, 27),
(88, '2025-11-05 17:42:58.042720', 27, 45),
(89, '2025-11-11 01:06:47.809915', 4, 41),
(90, '2025-11-11 01:06:47.816129', 41, 4),
(91, '2025-11-11 01:28:00.345456', 24, 4),
(92, '2025-11-11 01:28:00.350637', 4, 24),
(93, '2025-11-25 01:45:12.639687', 11, 27),
(94, '2025-11-25 01:45:12.647949', 27, 11);

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

--
-- Volcado de datos para la tabla `socialaccount_socialaccount`
--

INSERT INTO `socialaccount_socialaccount` (`id`, `provider`, `uid`, `last_login`, `date_joined`, `extra_data`, `user_id`) VALUES
(1, 'google', '112847278755018980729', '2025-11-18 01:43:41.689492', '2025-09-30 03:43:27.683575', '{\"aud\": \"332958541597-qddq8t1i2ivu1p7ud1sklotumokj59sj.apps.googleusercontent.com\", \"azp\": \"332958541597-qddq8t1i2ivu1p7ud1sklotumokj59sj.apps.googleusercontent.com\", \"exp\": 1763433821, \"iat\": 1763430221, \"iss\": \"https://accounts.google.com\", \"sub\": \"112847278755018980729\", \"name\": \"Matias Quezada\", \"email\": \"matiasquezada348@gmail.com\", \"at_hash\": \"N8KptKC87_JbEqHGnQj4_Q\", \"picture\": \"https://lh3.googleusercontent.com/a/ACg8ocLsP_41vFOU01_7AfGW6dNFcruoEA2MalSFz50fbUiGEOPKWzTm=s96-c\", \"given_name\": \"Matias\", \"family_name\": \"Quezada\", \"email_verified\": true}', 2),
(2, 'google', '106368893829362677494', '2025-10-15 01:30:46.325613', '2025-09-30 03:47:04.333672', '{\"aud\": \"332958541597-qddq8t1i2ivu1p7ud1sklotumokj59sj.apps.googleusercontent.com\", \"azp\": \"332958541597-qddq8t1i2ivu1p7ud1sklotumokj59sj.apps.googleusercontent.com\", \"exp\": 1760495445, \"iat\": 1760491845, \"iss\": \"https://accounts.google.com\", \"sub\": \"106368893829362677494\", \"name\": \"Javier Valenzuela\", \"email\": \"valenzuelajavier612@gmail.com\", \"at_hash\": \"4q0mjyx74zSPbgz9y8giSA\", \"picture\": \"https://lh3.googleusercontent.com/a/ACg8ocL5eBEoseDq3j68CdYURUZ-xKzPYH9SQMLdNxga5H8kAaJCRek=s96-c\", \"given_name\": \"Javier\", \"family_name\": \"Valenzuela\", \"email_verified\": true}', 3),
(3, 'google', '115993637092496438983', '2025-11-19 02:30:38.283759', '2025-09-30 03:47:38.363131', '{\"aud\": \"332958541597-qddq8t1i2ivu1p7ud1sklotumokj59sj.apps.googleusercontent.com\", \"azp\": \"332958541597-qddq8t1i2ivu1p7ud1sklotumokj59sj.apps.googleusercontent.com\", \"exp\": 1763523038, \"iat\": 1763519438, \"iss\": \"https://accounts.google.com\", \"sub\": \"115993637092496438983\", \"name\": \"Lukass Acuña\", \"email\": \"lukassacuna1884@gmail.com\", \"at_hash\": \"DVskI8ARs6lj7a7S6QVFPw\", \"picture\": \"https://lh3.googleusercontent.com/a/ACg8ocLmhXZLeJugqQJigIXJpGCgjLsanieMoZ8np1aDALCxxfHDgg=s96-c\", \"given_name\": \"Lukass\", \"family_name\": \"Acuña\", \"email_verified\": true}', 4),
(4, 'google', '108407223780140769631', '2025-09-30 03:55:44.379861', '2025-09-30 03:55:44.379882', '{\"aud\": \"332958541597-qddq8t1i2ivu1p7ud1sklotumokj59sj.apps.googleusercontent.com\", \"azp\": \"332958541597-qddq8t1i2ivu1p7ud1sklotumokj59sj.apps.googleusercontent.com\", \"exp\": 1759208141, \"iat\": 1759204541, \"iss\": \"https://accounts.google.com\", \"sub\": \"108407223780140769631\", \"name\": \"Javier Vasquez\", \"email\": \"valenvasjavier612@gmail.com\", \"at_hash\": \"2Y2-z-72ZQBGfqQ9kKE60A\", \"picture\": \"https://lh3.googleusercontent.com/a/ACg8ocJ0Ng_lc8nmTtUeJqcl--1Q-7kiggMaSNqyyb2JILqqbM0kmQ=s96-c\", \"given_name\": \"Javier\", \"family_name\": \"Vasquez\", \"email_verified\": true}', 5),
(5, 'google', '102971104209167813275', '2025-11-19 00:30:45.002972', '2025-09-30 04:44:57.542300', '{\"aud\": \"332958541597-qddq8t1i2ivu1p7ud1sklotumokj59sj.apps.googleusercontent.com\", \"azp\": \"332958541597-qddq8t1i2ivu1p7ud1sklotumokj59sj.apps.googleusercontent.com\", \"exp\": 1763515844, \"iat\": 1763512244, \"iss\": \"https://accounts.google.com\", \"sub\": \"102971104209167813275\", \"name\": \"Jvieer\", \"email\": \"javistark25@gmail.com\", \"at_hash\": \"ln1VhhE32InW9GLy1TlGwQ\", \"picture\": \"https://lh3.googleusercontent.com/a/ACg8ocJhfRNgk0x-Zu2efRHs2ffbCEkkscYksXiiAYi3F5afvNLkAwfZvQ=s96-c\", \"given_name\": \"Jvieer\", \"email_verified\": true}', 11),
(7, 'google', '113296173648978412243', '2025-10-18 03:50:21.529461', '2025-10-03 03:01:43.495828', '{\"aud\": \"332958541597-qddq8t1i2ivu1p7ud1sklotumokj59sj.apps.googleusercontent.com\", \"azp\": \"332958541597-qddq8t1i2ivu1p7ud1sklotumokj59sj.apps.googleusercontent.com\", \"exp\": 1760763020, \"iat\": 1760759420, \"iss\": \"https://accounts.google.com\", \"sub\": \"113296173648978412243\", \"name\": \"Matias Quezada\", \"email\": \"quezadamatias269@gmail.com\", \"at_hash\": \"rokc55DrwoyO6s1Zs66_6Q\", \"picture\": \"https://lh3.googleusercontent.com/a/ACg8ocL5vwUHSuOTuEUG6Ar9t2ELqhDtFrDN0z5XP4FKbSH9AcnHyQ=s96-c\", \"given_name\": \"Matias\", \"family_name\": \"Quezada\", \"email_verified\": true}', 27),
(9, 'google', '115582558699791419069', '2025-10-30 23:44:03.720330', '2025-10-30 23:44:03.720353', '{\"aud\": \"332958541597-qddq8t1i2ivu1p7ud1sklotumokj59sj.apps.googleusercontent.com\", \"azp\": \"332958541597-qddq8t1i2ivu1p7ud1sklotumokj59sj.apps.googleusercontent.com\", \"exp\": 1761871442, \"iat\": 1761867842, \"iss\": \"https://accounts.google.com\", \"sub\": \"115582558699791419069\", \"name\": \"matias ignacio dominguez donoso\", \"email\": \"matiasignaciodd@gmail.com\", \"at_hash\": \"EOR8KcCz-2dOpgUwaSMa9w\", \"picture\": \"https://lh3.googleusercontent.com/a/ACg8ocKGtj06jQze4jY3EFpcba05YsM8Rz7DJqGhj5MCmAw1hRIcf0I0=s96-c\", \"given_name\": \"matias ignacio\", \"family_name\": \"dominguez donoso\", \"email_verified\": true}', 35),
(10, 'google', '112316850464416844122', '2025-11-15 04:10:22.852327', '2025-11-05 03:13:38.104502', '{\"aud\": \"332958541597-qddq8t1i2ivu1p7ud1sklotumokj59sj.apps.googleusercontent.com\", \"azp\": \"332958541597-qddq8t1i2ivu1p7ud1sklotumokj59sj.apps.googleusercontent.com\", \"exp\": 1763183422, \"iat\": 1763179822, \"iss\": \"https://accounts.google.com\", \"sub\": \"112316850464416844122\", \"name\": \"Lukass Acuña\", \"email\": \"lukassproo67@gmail.com\", \"at_hash\": \"VzzW648T66pc1ukw5hhGzA\", \"picture\": \"https://lh3.googleusercontent.com/a/ACg8ocIlJFqIdYnRR-cK-kFbRrsO_Np0ORRyZGEdG_mcrztbzqvsdQ=s96-c\", \"given_name\": \"Lukass\", \"family_name\": \"Acuña\", \"email_verified\": true}', 41),
(11, 'google', '110661850161690398111', '2025-11-05 18:03:30.548771', '2025-11-05 17:40:26.153469', '{\"hd\": \"duocuc.cl\", \"aud\": \"332958541597-qddq8t1i2ivu1p7ud1sklotumokj59sj.apps.googleusercontent.com\", \"azp\": \"332958541597-qddq8t1i2ivu1p7ud1sklotumokj59sj.apps.googleusercontent.com\", \"exp\": 1762369410, \"iat\": 1762365810, \"iss\": \"https://accounts.google.com\", \"sub\": \"110661850161690398111\", \"name\": \"ELIAS . ALCAIDE LEIVA\", \"email\": \"el.alcaide@duocuc.cl\", \"at_hash\": \"s7_u5Nihzc1_5eN8ORLf5Q\", \"picture\": \"https://lh3.googleusercontent.com/a/ACg8ocLTq2aSXKSb4f5rTlMeo2cSGwx2PksQB9R0FgAlnoj7iXjgPA=s96-c\", \"given_name\": \"ELIAS .\", \"family_name\": \"ALCAIDE LEIVA\", \"email_verified\": true}', 45);

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

--
-- Volcado de datos para la tabla `socialaccount_socialtoken`
--

INSERT INTO `socialaccount_socialtoken` (`id`, `token`, `token_secret`, `expires_at`, `account_id`, `app_id`) VALUES
(1, 'ya29.A0ATi6K2tJhg2o_jdaVr4ACXnJKcglitVopnNOGVhA7e_lbNb_xwXBRsGuItRiJDFSK1Jd2_cBMnmIDgz-AHfLE7Ws47i_ijAW-QYEWaMvafnMg2X7KQBvgK_j_NhWtSb4AzuDULMc_tjxEUdxmeRDbzD51q1wy8tB8EnA5aNN5Z-VBr1Y7ANuabtC1DmY7-M-z8KTsSCHeyxQilVzV5XgGZ2qrwmTXZTOO74JfNSy0qcOfjKZ7e75gek4naqFx8uJHFXCSvWKwT1io2DgFX9gp58-emlh_r4aCgYKAZYSARcSFQHGX2MiAZWwaHd-I8hF4UK45v96MA0294', '', '2025-11-18 02:43:40.659017', 1, 1),
(2, 'ya29.a0AQQ_BDQ_Wnf2P3GJecp2y26lRBSqUzprUdACowpFu02u35aoJ1LK9-aSmewdG1oMDe5qh4ENWB65nOji0u7zbf7h8TgWoS88JMwAUWBpXkwd0_k_boQEn7SjUHDMxhy5hAUTdF3-ivT3mFtJ2Ppl5ru68LNHMryo0EC2aCC3v0bg3MZDEklvhO0Nl_QbM34ZeIvbMSByaCgYKAVISARMSFQHGX2MiMJFqnOQ38BerXmwWnmyj3Q0207', '', '2025-10-15 02:30:44.319463', 2, 1),
(3, 'ya29.A0ATi6K2t3zS7lX-dr-EheaoZTF7hNlvNpYmPxePTsRL9TzFmM6Rcj7E-aBL9iE310Vt9LgmXDHeztBT-1JPRK13YNIwMnYJEDf57fLh-l6EnAIP4rh2ax_NPrsKyF3d0NlS-Es8jrdAWS_LC6q5NOonUZn4T8uMViz20v4vX_u1YX8BCAX-L_qlIMXB7U6XxgjY2SpnCKTtCQRwDCzj1rZlrjJAREsyRg0l40vQNHVODpOgXolorx02mjLlgpEgrGjfIDSa1JQJ9bSPjbRb6YSBEdPuWKTCoaCgYKAXISARcSFQHGX2MioY-Rn74NJbVBi0K0xBX0rA0294', '', '2025-11-19 03:30:36.256995', 3, 1),
(4, 'ya29.a0AQQ_BDQh_TDs5v-25S_FHMk7iPsD90n8VDCsZlggyg8YxgXwg2Yj-bjZjlBmv8Nr2r2RE4ccYNWiEA_R6BG3lzAY7h--L1_tHgVojnKV2GsgTOiSEcxHW53Bu8eluMnbBdJ-0-1EzLPM-QCXTmvnQ0QLuFZraBQeeN5-fo6kJdUt80JDBsp5PJ16zzqjNwJNuG4iU28aCgYKASwSARYSFQHGX2MiplldiajyeLroJizg8l2Hjw0206', '', '2025-09-30 04:55:43.325365', 4, 1),
(5, 'ya29.A0ATi6K2txGcx30EIf_4hPgV8nH1PSvCapN439zrrq_vuT6RKYMJqobcXeimmyx_GhUX0nG9VAru-4qVcd3xiYzY8Orr-s3b9D4rpL2ideRX3XulzE90ATOHkA280I59K8zbp8jJ_yyAzz-H5nfbZIWpWlyc1B5aflRYCLUdLwt9AdnbTnbCdIzJsqd8KwsqugD0YqET5OPlhp9SEV-49u0gjrlwvk9xjkZ1GmzukcPv8huLyRaSiGinpI0KwP2AvNJSmgYCFemMQkvf6D1MQ8p8zpSRW5YgaCgYKATsSARISFQHGX2MiZRu1MFM9y0y4HTML0uOyDQ0293', '', '2025-11-19 01:30:43.972804', 5, 1),
(7, 'ya29.a0AQQ_BDREt_FInnq6gD6fnA-0vxfqd3MWdNipxZRR5pYSs6T-FztBZ2Jq_QhXkZNid12FUchHW8moE4TIiMTpcV_o74oO0QcITiSJTCDs65fhf0xTa-z_tW9lfzydSN3yELoaQBHGt5jd20XJglkSscySs8CeYLjUgBdOyPKkYTun7KRDyq4JfSyh_Z0pz3dumC2oauYZaCgYKAaoSARYSFQHGX2MixkzQ_1AT2hv4ATtQMQevTQ0207', '', '2025-10-18 04:50:19.500477', 7, 1),
(9, 'ya29.a0ATi6K2srbmrjScZmktli1GiL59fobDGjwtRlAZs9uaw7GcqAqe26HdStmWlxO2Dber6eyJv6WXbxLHEnYcRJpWF1MgN3qu1EZams_7ZlStgqg8VaUjHGQlG3V97gCdpriynCb1gcYWSrr63gJzR6aIGK1RmxGo845yFqJ_fJXytwBqLMHpE_n7oopH1jvufsyT3b9AUaCgYKAfQSARUSFQHGX2MiXgRfJY780gQT2KBgzUHN7w0206', '', '2025-10-31 00:44:02.661755', 9, 1),
(10, 'ya29.a0ATi6K2u8PcYIc4e9hAGyB_KJVS3JccNLwbNLgZlLYROq9itSJbBOEAOVHogZ99C6xF_ysB8kX0vNvLUxMUT2jRen-zqsRvm87i8ynGKROyVAKhiF_9EhFYL80bNAHkuqz3oWsRKdntI37YMcs9S2SI1LYplZA_A9Ua9trBbYxCyCjxAVX7afBo-XiMXoVxCluU9qJlQaCgYKARUSARYSFQHGX2MiN7TopdjQz07QzRnZ26qfgQ0206', '', '2025-11-15 05:10:21.847819', 10, 1),
(11, 'ya29.A0ATi6K2uwfYhmlBR94al7BhGUaO1d-B1IApZ7SSPtAUQxQT5YlTWi7rMSrV7t_BFEiw2KfUDvjfjzOhnxXwLEvqEME3aid79I2tBT3Dy3p225luaYMirSzfMD6GRuXDT3mbmX4A7l4SrCskYztbW2833tRM7Ze4wfYZH6WoQ3fVkOYGFyF1xwXGQjeDkI8vj-XLlLlzi_Yi3bKgRAFQNzGBoE8osEKSIv5L9LOV48-uCqDD-CbRwOmntVeE4_vy2LEA31-ueSjpOeGkooJsx-9UZaFemlSwaCgYKAaASARQSFQHGX2MiR8qgB5ZtCAINKFCzZBadeQ0293', '', '2025-11-05 19:03:29.545913', 11, 1);

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

--
-- Volcado de datos para la tabla `solicitud_amistad`
--

INSERT INTO `solicitud_amistad` (`id_solicitud`, `estado`, `mensaje`, `creada_en`, `respondida_en`, `emisor_id`, `receptor_id`) VALUES
(1, 'rechazada', '', '2025-10-30 00:57:27.051715', '2025-10-30 00:57:33.930938', 11, 2),
(3, 'aceptada', '', '2025-10-02 01:21:54.302180', '2025-10-02 01:31:08.572613', 11, 24),
(4, 'aceptada', '', '2025-10-02 01:30:22.672178', '2025-10-02 01:30:52.712394', 2, 24),
(5, 'aceptada', '', '2025-10-02 01:33:32.106100', '2025-10-02 01:36:21.238737', 11, 4),
(9, 'aceptada', '', '2025-10-15 00:09:33.206894', '2025-10-15 00:09:46.024006', 28, 11),
(10, 'aceptada', '', '2025-10-15 00:29:46.675056', '2025-10-15 01:25:45.102262', 2, 4),
(11, 'cancelada', '', '2025-10-15 04:47:28.769303', '2025-10-15 22:41:08.468671', 11, 1),
(12, 'aceptada', '', '2025-10-18 03:17:01.766260', '2025-10-18 03:40:21.287876', 29, 2),
(13, 'aceptada', '', '2025-10-18 03:33:54.727522', '2025-10-18 03:34:12.396303', 2, 28),
(14, 'aceptada', '', '2025-11-05 04:10:20.252358', '2025-11-05 04:10:42.557413', 27, 2),
(15, 'aceptada', '', '2025-11-25 01:45:06.637640', '2025-11-25 01:45:12.654976', 27, 11),
(17, 'aceptada', '', '2025-10-30 01:25:54.487591', '2025-10-30 01:26:07.056128', 2, 11),
(25, 'aceptada', '', '2025-10-22 00:22:17.038719', '2025-10-22 04:43:18.445292', 1, 2),
(26, 'aceptada', '', '2025-10-22 02:23:30.942004', '2025-10-23 01:24:31.642977', 30, 11),
(28, 'pendiente', '', '2025-10-22 02:23:44.143720', NULL, 30, 27),
(29, 'aceptada', '', '2025-10-22 02:23:52.882491', '2025-10-23 02:38:06.215376', 30, 4),
(30, 'aceptada', '', '2025-10-22 02:23:58.931560', '2025-10-30 23:46:42.402789', 30, 24),
(32, 'aceptada', '', '2025-10-23 02:36:14.004903', '2025-10-23 02:36:24.227056', 11, 29),
(33, 'aceptada', '', '2025-10-23 02:38:58.725148', '2025-10-23 02:39:50.150965', 4, 29),
(34, 'pendiente', '', '2025-10-24 00:39:11.207218', NULL, 11, 31),
(35, 'pendiente', '', '2025-10-24 00:39:45.920229', NULL, 4, 1),
(36, 'aceptada', '', '2025-10-31 02:12:07.048305', '2025-10-31 02:12:17.657283', 2, 30),
(37, 'aceptada', '', '2025-10-24 01:35:38.579543', '2025-10-24 01:35:47.914159', 28, 30),
(38, 'aceptada', '', '2025-10-31 01:31:19.911567', '2025-10-31 01:32:05.894144', 2, 27),
(39, 'cancelada', '', '2025-10-29 02:32:52.727768', '2025-10-29 02:32:53.686258', 27, 1),
(43, 'aceptada', '', '2025-11-04 02:05:28.292912', '2025-11-04 02:15:05.451774', 24, 2),
(44, 'aceptada', '', '2025-11-05 00:50:32.843731', '2025-11-11 01:28:00.355602', 4, 24),
(45, 'pendiente', '', '2025-11-11 02:47:32.379750', '2025-11-11 02:47:30.060114', 4, 28),
(46, 'aceptada', '', '2025-11-05 04:08:52.363060', '2025-11-05 04:09:12.891328', 27, 29),
(47, 'aceptada', '', '2025-11-05 17:42:44.927754', '2025-11-05 17:42:58.046798', 27, 45),
(48, 'aceptada', '', '2025-11-11 00:39:19.448446', '2025-11-11 01:06:47.820974', 41, 4),
(49, 'pendiente', '', '2025-11-22 02:55:10.104775', NULL, 49, 29),
(50, 'pendiente', '', '2025-11-22 02:55:15.555729', NULL, 49, 45),
(51, 'pendiente', '', '2025-11-22 02:55:22.128477', NULL, 49, 11),
(52, 'pendiente', '', '2025-11-22 02:55:28.968171', NULL, 49, 28),
(53, 'pendiente', '', '2025-11-22 02:55:40.592394', NULL, 49, 4),
(54, 'pendiente', '', '2025-11-22 02:56:20.854395', NULL, 49, 41),
(55, 'pendiente', '', '2025-11-22 02:56:28.610818', NULL, 49, 27),
(56, 'pendiente', '', '2025-11-22 02:56:34.632569', NULL, 49, 2);

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
(1, 'Favoritos', 1, '2025-10-14 00:17:08.290867', '2025-10-14 00:17:08.290888', 2),
(2, 'Favoritos', 1, '2025-10-14 01:11:25.946905', '2025-10-14 01:11:25.946920', 24),
(3, 'Favoritos', 1, '2025-10-14 01:11:34.645252', '2025-10-14 01:11:34.645266', 11),
(4, 'Favoritos', 1, '2025-10-14 01:45:47.909016', '2025-10-14 01:45:47.909049', 4),
(6, 'Favoritos', 1, '2025-10-15 01:29:49.177066', '2025-10-15 01:29:49.177083', 1),
(7, 'Favoritos', 1, '2025-10-15 01:30:23.954444', '2025-10-15 01:30:23.954465', 28),
(8, 'Favoritos', 1, '2025-10-18 02:16:38.131974', '2025-10-18 02:16:38.131994', 29),
(9, 'Favoritos', 1, '2025-10-18 03:45:17.210915', '2025-10-18 03:45:17.210936', 27),
(10, 'Favoritos', 1, '2025-10-22 02:16:19.795053', '2025-10-22 02:16:19.795076', 30),
(11, 'Favoritos', 1, '2025-10-28 00:55:55.589540', '2025-10-28 00:55:55.589564', 33),
(13, 'Favoritos', 1, '2025-10-30 23:44:04.058290', '2025-10-30 23:44:04.058315', 35),
(14, 'Favoritos', 1, '2025-11-05 02:14:06.347755', '2025-11-05 02:14:06.347792', 38),
(17, 'Favoritos', 1, '2025-11-05 03:13:38.486918', '2025-11-05 03:13:38.486939', 41),
(18, 'Favoritos', 1, '2025-11-05 17:40:26.225042', '2025-11-05 17:40:26.225061', 45),
(19, 'Favoritos', 1, '2025-11-15 02:40:32.338512', '2025-11-15 02:40:32.338538', 46),
(20, 'Mis Regalos', 1, '2025-11-18 00:15:28.798528', '2025-11-18 00:15:28.798549', 2),
(21, 'Favoritos', 1, '2025-11-19 00:29:32.200552', '2025-11-19 00:29:32.200575', 48),
(22, 'Favoritos', 1, '2025-11-22 02:38:30.310349', '2025-11-22 02:38:30.310371', 49),
(24, 'Favoritos', 1, '2025-11-25 02:25:42.167962', '2025-11-25 02:25:42.167981', 51);

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
  MODIFY `id_comentario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT de la tabla `comuna`
--
ALTER TABLE `comuna`
  MODIFY `id_comuna` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `conversacion`
--
ALTER TABLE `conversacion`
  MODIFY `conversacion_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

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
  MODIFY `id_usuario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

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
  MODIFY `entrega_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=428;

--
-- AUTO_INCREMENT de la tabla `evento`
--
ALTER TABLE `evento`
  MODIFY `evento_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `HistorialBusqueda`
--
ALTER TABLE `HistorialBusqueda`
  MODIFY `id_search` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

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
  MODIFY `id_like` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  MODIFY `mensaje_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=925;

--
-- AUTO_INCREMENT de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  MODIFY `notificacion_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

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
  MODIFY `participante_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=556;

--
-- AUTO_INCREMENT de la tabla `participante_de_evento`
--
ALTER TABLE `participante_de_evento`
  MODIFY `participante_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `id_perfil` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `post`
--
ALTER TABLE `post`
  MODIFY `id_post` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT de la tabla `preferencias_usuario`
--
ALTER TABLE `preferencias_usuario`
  MODIFY `id_preferencia` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

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
  MODIFY `id_reporte` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `resena_sitio`
--
ALTER TABLE `resena_sitio`
  MODIFY `id_resena` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `seguidor`
--
ALTER TABLE `seguidor`
  MODIFY `relacion_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT de la tabla `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `solicitud_amistad`
--
ALTER TABLE `solicitud_amistad`
  MODIFY `id_solicitud` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

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
  MODIFY `id_wishlist` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

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
