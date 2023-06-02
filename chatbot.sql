-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.28-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.4.0.6659
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para chatbot
CREATE DATABASE IF NOT EXISTS `chatbot` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `chatbot`;

-- Volcando estructura para tabla chatbot.chatbot
CREATE TABLE IF NOT EXISTS `chatbot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `queries` varchar(300) NOT NULL,
  `replies` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla chatbot.chatbot: ~20 rows (aproximadamente)
DELETE FROM `chatbot`;
INSERT INTO `chatbot` (`id`, `queries`, `replies`) VALUES
	(1, '1', '10. EMS <br>\n11. Envíos Certificados<br>\n12. Envíos Ordinarios <br>\n13. Encomienda<br>\n\n'),
	(2, '2', 'Vale te pregunto, donde te encuentras ahora, ¿hay más dispositivos conectados a tu red local?'),
	(3, '3', 'Tienes algún ordenador conectado por cable'),
	(4, '4', 'Si por favor y me confirmas si no tienes acceso a Internet, en tu ordenador cuando encienda'),
	(5, '5', 'Reinicia tu modem, espera 10 minutos y reintenta, me confirmas'),
	(6, '6', 'Excelente me alegro mucho, gracias por comunicarte con Soporte Técnico ChatBot ConfiguroWeb'),
	(7, '7 ', 'Horarios de Atencion:<br>\r\nLun - Vie 08:00 a 18:00 Hrs <br>\r\nSabados: 09:00 - 13:00'),
	(8, '0', 'Hola, Bienvenido a la Agencia Boliviana de Correos ¿cómo puedo ayudarte?\r\n                         <br>(selecciona la opcion que deseas escribe el numero que deseas)<br>\r\n                        1. Tipos de servicios que ofrecemos<br>\r\n                        2. A donde va a enviar?<br>\r\n                        3. A donde no llegamos<br>\r\n                        4. Mercaderias Prohibidas<br>\r\n                        5. Como Rotular Un Envio Tradicional<br>\r\n                        6. Peso Volumetrico del paquete<br>\r\n                        7. Horarios de Atencion<br>\r\n                        8. Precios de Casillas<br>\r\n  9. Volver Pagina Principal<br>\r\n0. Volver al Menu Principal'),
	(9, '10', 'Express Mail Service (EMS) <BR>\r\nEs un servicio de envio de mensajeria y paqueteria urgente. Llega a las ciudades capitales de los 9 departamentos de Bolivia, el tiempo de entrega difiere entre las 24 y 72 horas, siendo la distancia entre la cuidad de Origen y la ciudad del factor determinante para el calculo de tiempo de llegada<br>\r\nA nivel Internacional tiene alcance a todos los paises miembros de la UNION POSTAL UNIVERSAL haciendo de este servicio de clase mundial.<br>\r\n14. Entrega Nacional.<br>\r\n15. Entrega Internacional.\r\n '),
	(10, '8', 'Precios de Casillas:<br>\r\nPequeñas:<br>\r\nMensual: 35Bs<br>\r\nSemestral: 126Bs<br>\r\nAnual: 210Bs<br>\r\nMediana:<br>\r\nMensual: 35Bs<br>\r\nSemestral: 175Bs<br>\r\nAnual: 294Bs<br>\r\nGavetas:<br>\r\nAnual: 420Bs<br>\r\nCajon: <br>\r\nAnual: 504Bs<br>\r\n\r\n'),
	(11, '9', '    <a href="https://www.correos.gob.bo/" style="color: white;">Volver pagina principal click aqui</a>\';\r\n'),
	(12, '14', 'Para mas Información Sobre EMS Nacional descarga o dirígete al siguiente link donde se proporcionara los precios a detalle<br>\r\n    <a href="https://drive.google.com/file/d/1xzA7GRtA_Mk_4tfBsAlHFT6V2VlR2Pdc/view?usp=sharing" style="color: white;">Haz click Aqui</a>\'\r\n\r\n '),
	(13, '15', 'Para mas Información Sobre EMS Internacional descarga o dirígete al siguiente link donde se proporcionara los precios a detalle<br>\r\n    <a href="https://drive.google.com/file/d/1G3VnX8NvsyyPwQAc_QmXBMPKT8qCvjRQ/view?usp=sharing" style="color: white;">Haz click Aqui</a>\'\r\n'),
	(14, '11', 'Todas las cartas sobre manila dependiendo del tamaño para su verificación tiene un coste   de:<br>\r\nNacional:2Bs<br>\r\nInternacional:8Bs<br>\r\n\r\n'),
	(15, '12', 'El servicio ordinario se refiere a tarjeras postales que no llevan rastreo, los precios son:<br>\r\n16. Nacional<br>\r\n17. Internacional'),
	(16, '16', 'Para mas Información Sobre Servicio Ordinario Nacional descarga o dirígete al siguiente link donde se proporcionara los precios a detalle<br>\r\n    <a href="https://drive.google.com/file/d/1ZuQuNxSjvSoxS4IdYXl9dDgapfEu6WTV/view?usp=sharing" style="color: white;">Haz click Aqui</a>\''),
	(17, '17', 'Para mas Información Sobre Servicio Ordinario Internacional descarga o dirígete al siguiente link donde se proporcionara los precios a detalle<br>\r\n    <a href="https://drive.google.com/file/d/1_ZHNIN8lU4jDABnSLrfTNENOofbbdX9W/view?usp=sharing"color: white;">Haz click Aqui</a>\''),
	(18, '13', '18. Nacional<br>\r\n19. Internacional'),
	(19, '18', 'Para mas Información Sobre Encomiendas Nacional descarga o dirígete al siguiente link donde se proporcionara los precios a detalle<br>\r\n    <a href=https://drive.google.com/file/d/1XJ4JajeEskNW3FovXrcg0w_gQA6fwgk5/view?usp=sharing" style="color: white;">Haz click Aqui</a>\''),
	(20, '19', 'Para mas Información Sobre Encomiendas Internacional descarga o dirígete al siguiente link donde se proporcionara los precios a detalle<br>\r\n    <a href="https://drive.google.com/file/d/1Ls84MUSnlIPCH31o1YYgYxZPDme0hphe/view?usp=sharing" style="color: white;">Haz click Aqui</a>\'');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
