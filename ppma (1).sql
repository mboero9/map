-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2+deb7u2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 05-06-2018 a las 12:09:53
-- Versión del servidor: 5.5.47
-- Versión de PHP: 5.4.45-0+deb7u2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `ppma`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Entry`
--

CREATE TABLE IF NOT EXISTS `Entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `comment` text,
  `username` varchar(255) DEFAULT NULL,
  `encryptedPassword` blob,
  `viewCount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Volcado de datos para la tabla `Entry`
--

INSERT INTO `Entry` (`id`, `userId`, `name`, `url`, `comment`, `username`, `encryptedPassword`, `viewCount`) VALUES
(1, 1, 'Server Virtual 01', '10.4.6.144', 'Server monitoreo Nagios - Backup ACM\r\n\r\nIP Privada \r\n172.17.12.193\r\nIP Publica\r\n179.0.151.58\r\nIP Nat Banco\r\n10.4.6.144\r\n', 'root', 0xc51018a3d31f7bc2941fbb25108b3f6ce5dfb9e633fbaa20, 10),
(2, 1, 'Server Virtual 02', 'tacm2.provinciamicroempresas.com', 'Base de usuarios rendicion, test acm\r\n\r\nIP Privada\r\n172.17.12.194	\r\nIP Publica\r\n179.0.151.48\r\nIP Nat Banco\r\n10.4.6.145\r\n', 'root', 0xf9cdaee0474102d2ed8acd674e0d6b82bb291483b58f474c, 9),
(3, 1, 'Server Virtual 03', 'http://179.0.151.46/ppma-06/', 'administrador de contraseÃ±as\r\n\r\nIP Privada\r\n172.17.12.195	\r\nIP Publica\r\n179.0.151.46\r\nIP Nat Banco\r\n10.4.6.146\r\n\r\n', 'root', 0xdb0b141434c18432a68a08b902c631608eef52123a6e421f, 7),
(4, 1, 'Server Virtual 04', 'acm.provinciamicroempresas.com', 'servidor ACM, y ACM diario(productivo)\r\n\r\nIP Privada\r\n172.17.12.196	\r\nIP Publica\r\n179.0.151.49\r\nIP Nat Banco\r\n10.4.6.147\r\n', 'root', 0xdc42070d3d46bbeb02596b7eef86f0c983a334fc365dd6ca, 7),
(5, 1, 'Server Virtual 05', 'http://ausentismo.provinciamicroempresas.com/tpresentismo', 'servidor presentismo(productivo) y GI(productivo)\r\n\r\nIP Privada\r\n172.17.12.197	\r\nIP Publica\r\n179.0.151.47\r\n', 'root', 0xa289129d8f396beff0c3b59107764e59fd49d1987e7599c9, 14),
(6, 1, 'Server Virtual 06', '172.17.12.198/phppgadmin', 'base de datos GI (productivo)\r\n\r\nIP Privada\r\n172.17.12.198', 'root', 0x99e65345c97eb58fb8bcbaddd515e9de0fae02da91cb19b6, 6),
(7, 1, 'Server Virtual 07', 'ticket.provinciamicroempresas.com', 'ticket de la empresa\r\n\r\nIP Privada\r\n172.17.12.199	\r\nIP Publica\r\n179.0.151.52\r\n', 'root', 0xb6dd9a2603ba067873869e87e3a6456c0176b0c23ec3ca2f, 3),
(8, 1, 'Server Virtual 08', 'https://puc.provinciamicroempresas.com', 'servidor de puc antigua.\r\n\r\nIP Privada\r\n172.17.12.200	\r\nIP Publica\r\n179.0.151.116\r\n', 'root', 0x965279ead8a2ef247d7000cc3b425770f5f210f7b0eddfe4, 5),
(9, 1, 'Server Virtual 09', 'http://179.0.151.56/tpresentismo/', 'ausentimo test, presentismo test\r\n\r\nIP Privada\r\n172.17.12.201	\r\nIP Publica\r\n179.0.151.56\r\n\r\n', 'root', 0x4f2827b8c344f670cc25667e1325e5d1c98eb28b682ea808, 12),
(10, 1, 'Server Virtual 10', 'Datawarehouse CRM', 'Datawarehouse de CRM\r\n\r\nIP Privada\r\n172.17.12.202', 'administrator', 0xd75a9f7d72ec0873b045020c4f7c8edb6e0554c2ab03725f, 5),
(11, 1, 'Server Virtual 11', '179.0.151.59', 'Antivirus - WS / webservice\r\n\r\nIP Privada\r\n172.17.12.203	\r\nIP Publica\r\n179.0.151.59', 'administrator', 0x32d92a4fb28a0712486c0d4c613ca169f2136b2121169137, 5),
(12, 1, 'Server Virtual 12', 'rendicion.provinciamicroempresas.com', 'servidor de rendicion, \r\n\r\nIP Privada\r\n172.17.12.204	\r\nIP Publica\r\n179.0.151.53', 'root', 0x3a5c8fc7a612616321b4a117b242e3282929eb1e2773f0f6, 3),
(13, 1, 'Server Virtual 14', 'http://provinciamicroempresas.com', 'pagina de provincia Microempresas\r\n\r\nIP Privada\r\n172.17.12.206	\r\nIP Publica\r\n179.0.151.65\r\n', 'root', 0xa855b5b80c2eca361dea356a7860911d, 5),
(14, 1, 'Server Virtual 15', 'https://crm.provinciamicroempresas.com', 'servidor CRM productivo\r\n\r\nIP Privada\r\n172.17.12.212	\r\nIP Publica\r\n179.0.151.69\r\nActive directory  \r\n172.17.12.207\r\nIP Nat\r\n10.4.6.198\r\n	\r\n', 'administrator', 0x916cd74690538cba5fa3be2f3f98f996910d82f177609d98, 3),
(15, 1, 'Server Virtual 16', 'https://dev-crm.provinciamicroempresas.com', 'Server test de crm\r\n\r\nIP Privada\r\n172.17.12.209 ', 'administrator', 0x63275f31fd2d5a3deb0ff16066450cba7cf8f8ee3cd160b0, 1),
(16, 1, 'Wireless Lan Controller Cisco', 'http://192.168.0.2/', 'Wireless Lan Controller', 'admin', 0xf1f3be68cfbda986c4bac1502ff3da30eb22bed81a3f8480, 6),
(17, 1, 'Base datos server01', 'acm.provinciamicroempresas.com/phppgadmin', 'base de datos de ACM', 'postgres', 0x504d86cfe0349921818400138db761b4dc9e3756dcb6e767, 15),
(18, 1, 'DB postgres server2', 'tacm2.provinciamicroempresas.com/phppgadmin', 'base de datos de acm test, y rendicion(personal)', 'postgres', 0x3439995ef64674096e9044c9b05eb7871371103cf8ff8263, 1),
(19, 1, 'Server Virtual 13', 'http://172.17.12.205/phpmyadmin', 'base de datos de rendicion.provinciamicroempresas.com', 'root', 0xbd90aac4114e389d244c557ce949d6748e1cf07cb6606b71, 1),
(20, 1, 'DB Rendicion', '172.17.12.205', 'base de rendicion\r\n172.17.12.205\\phpmyadmin', 'root', 0x67adcfa22247745a95c805cd13fe83333ff32a00fcbf5297, 6),
(21, 1, 'DB Postgres Server6 ', 'http://172.17.12.198/phppgadmin', 'base de datos GI', 'postgres', 0xcd5ce968a3aeb3d81f686219b395a5fd421dd560e863898c, 3),
(23, 1, 'FTP Pnet 2', '172.17.12.213', 'Servidor de subida, novedades y rechazos en CRM\r\nacceso por VPN ', 'tecnologia', 0x26fe2055dd490d4253305d08ec3cbc68e396e5e7e78657d6, 25),
(25, 1, 'Nagios', 'http://10.4.6.144/nagios', 'login en server nagios en red banco\r\ncon vpn conectarse al http://172.17.12.193/nagios', 'nagiosadmin', 0x3d36f8d495c5ce6f67a8f1af6a79fd47446008e8a050138e, 0),
(26, 1, 'Fibercorp', 'https://login.fibercorp.com.ar/a/login', 'reclamos fibertel conexiones', 'mboero@provinciamicroempresas.com', 0x24d2200f617fd27168d3e977d5a7426c68ee6898acd6f94d, 3),
(27, 1, 'Iplan reclamos', 'https://iplan.com.ar/clientes', 'telefono:0800 345 0000', '1147837', 0x049637dc249df35fe46559355461a86ee11ba8e13251a71d, 1),
(28, 1, 'Seguimiento envios Movistar', 'http://www.tecnycom.com.ar/institucional.aspx', 'link para realizar seguimiento envios por correo movistar', 'numeroseguimiento', 0x5edf012322845c2c1248f9dd9668fd63, 5),
(29, 1, 'Usuario canal directo', 'http://www.cdsisa.com.ar/webclientes/users/login', 'Usuario para acceso portal canal directo', 'mboero@provinciamicroempresas.com', 0x8837840d500f17765295612c6546cb8143448854519276c0, 10),
(30, 1, 'Lenovo soporte tecnico', 'https://www.managedtechnicalsupportaccess.com/mtsarva/lenovo.html', 'portal para cargar reclamos de soporte tecnico Lenovo', 'mboero@provinciamicroempresas.com', 0x80a110291886ae424ee86beaa4a7d7607663a6865f92be16, 8),
(31, 1, 'Portal soporte DELL', 'supportassist.dell.com', 'portal para cargar reclamos soporte DELL', 'mboero@provinciamicroempresas.com', 0xe449e531b764e80bc21f630e2e083a8b3d887146f6b04fe1, 8),
(32, 1, 'Usuario Base Acm', 'acm.provinciamicroempresas.com/phppgadmin', 'acceso base acm phppgadmin', 'bigarzabal', 0x4106d61c5eb62f21296ae0fb7cd0f8086d4fcf62b958bda0, 1),
(33, 1, 'Webmin server 4', 'https://10.4.6.147:10000', 'webmin sirve para realizar configuraciones ', 'root', 0xfc838c43a68d9bfa263a1e8ca010db2501f0234614caa6fe, 0),
(34, 1, 'TACM2 postgres', 'http://tacm2.provinciamicroempresas.com/phppgadmin/', 'base de rendicion:\r\ntabla personal\r\n', 'postgres', 0xb8a7808ba35806f3e744b17370e3ec1d59c12ca245df8f98, 0),
(35, 1, 'BD url prome', 'http://provinciamicroempresas.com/phpmyadmin/', 'base de datos pagina prome', 'root', 0xc1c93b392c1628166862f9c25b7d8cdb, 1),
(36, 1, 'Seguro Movistar', 'http://www.miproteccionmovil.com/', 'Tickets movistar por robo ', 'numero de linea', 0x9a4e1c0e71327e7b412df8016731c555c23f71a267793ac5, 0),
(37, 1, 'ACM POSTGRES', '172.17.12.196\\phppgadmin', 'acceder previamente con VPN', 'postgres', 0x9f9b0f79093a0de542a54acb620a8deaf36bca3384f7fb7d, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `EntryHasTag`
--

CREATE TABLE IF NOT EXISTS `EntryHasTag` (
  `entryId` int(11) NOT NULL,
  `tagId` int(11) NOT NULL,
  PRIMARY KEY (`entryId`,`tagId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `EntryHasTag`
--

INSERT INTO `EntryHasTag` (`entryId`, `tagId`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 7),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(3, 8),
(3, 9),
(4, 7),
(4, 10),
(4, 11),
(4, 12),
(5, 14),
(5, 15),
(5, 16),
(6, 17),
(6, 18),
(7, 19),
(7, 20),
(7, 21),
(8, 22),
(8, 23),
(9, 6),
(9, 24),
(10, 25),
(11, 26),
(11, 27),
(12, 4),
(12, 5),
(12, 12),
(12, 28),
(12, 29),
(13, 30),
(13, 31),
(14, 25),
(14, 32),
(15, 25),
(15, 33),
(15, 34),
(16, 35),
(16, 36),
(16, 37),
(16, 38),
(16, 71),
(17, 7),
(17, 39),
(17, 40),
(18, 4),
(18, 6),
(18, 7),
(18, 41),
(19, 4),
(19, 5),
(19, 39),
(19, 42),
(20, 4),
(20, 42),
(20, 43),
(21, 39),
(21, 42),
(21, 44),
(23, 45),
(23, 46),
(23, 47),
(23, 72),
(23, 73),
(25, 1),
(25, 50),
(25, 51),
(26, 52),
(26, 53),
(26, 54),
(27, 38),
(27, 53),
(27, 55),
(27, 56),
(28, 57),
(28, 58),
(28, 59),
(29, 53),
(29, 60),
(29, 61),
(30, 62),
(30, 63),
(30, 64),
(31, 53),
(31, 63),
(31, 64),
(31, 65),
(32, 39),
(32, 48),
(32, 66),
(33, 51),
(33, 67),
(33, 68),
(34, 4),
(34, 48),
(34, 66),
(34, 69),
(35, 12),
(35, 48),
(35, 49),
(36, 57),
(36, 77),
(36, 78),
(36, 79),
(36, 80),
(36, 81),
(37, 7),
(37, 39),
(37, 66),
(37, 82);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Setting`
--

CREATE TABLE IF NOT EXISTS `Setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `Setting`
--

INSERT INTO `Setting` (`id`, `name`, `value`) VALUES
(1, 'force_ssl', '0'),
(2, 'recent_entries_widget_count', '10'),
(3, 'recent_entries_widget_enabled', '1'),
(4, 'recent_entries_widget_position', '2'),
(5, 'most_viewed_entries_widget_count', '10'),
(6, 'most_viewed_entries_widget_enabled', '1'),
(7, 'most_viewed_entries_widget_position', '1'),
(8, 'tag_cloud_widget_position', '0'),
(9, 'pagination_page_size_entries', '100'),
(10, 'pagination_page_size_tags', '10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Tag`
--

CREATE TABLE IF NOT EXISTS `Tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=83 ;

--
-- Volcado de datos para la tabla `Tag`
--

INSERT INTO `Tag` (`id`, `name`, `userId`) VALUES
(1, 'nagios', 1),
(2, 'server01', 1),
(3, 'backup', 1),
(4, 'rendicion', 1),
(5, 'viaticos', 1),
(6, 'test', 1),
(7, 'acm', 1),
(8, 'password manager', 1),
(9, 'contraseÃ±as', 1),
(10, 'acm diario', 1),
(11, 'procesos', 1),
(12, 'prome', 1),
(13, 'ausentimos', 1),
(14, 'presentismo', 1),
(15, 'ausentimo', 1),
(16, 'gi apache', 1),
(17, 'gi bd', 1),
(18, 'base de datos gi', 1),
(19, 'otrs', 1),
(20, 'ticket', 1),
(21, 'ticketing', 1),
(22, 'puc', 1),
(23, 'contactos', 1),
(24, 'ausentismo', 1),
(25, 'crm', 1),
(26, 'antivirus', 1),
(27, 'kaspersky', 1),
(28, 'apps', 1),
(29, 'apache', 1),
(30, 'url prome', 1),
(31, 'pagina prome', 1),
(32, 'crm produccion', 1),
(33, 'test crm', 1),
(34, 'dev-crm', 1),
(35, 'wlc', 1),
(36, 'red local', 1),
(37, 'wireless', 1),
(38, 'wifi', 1),
(39, 'base', 1),
(40, 'base de datos', 1),
(41, 'tacm', 1),
(42, 'db', 1),
(43, 'database', 1),
(44, 'gi', 1),
(45, 'ftp', 1),
(46, 'provincianet', 1),
(47, 'pnet', 1),
(48, 'bd', 1),
(49, 'phpmyadmin', 1),
(50, 'monitoreo', 1),
(51, 'server', 1),
(52, 'fibercorp', 1),
(53, 'reclamos', 1),
(54, 'fibertel', 1),
(55, 'iplan', 1),
(56, 'red', 1),
(57, 'movistar', 1),
(58, 'correo', 1),
(59, 'envios', 1),
(60, 'canal directo', 1),
(61, 'impresoras', 1),
(62, 'lenovo', 1),
(63, 'soporte', 1),
(64, 'garantia', 1),
(65, 'dell', 1),
(66, 'postgres', 1),
(67, 'webmin', 1),
(68, 'configuracion', 1),
(69, 'base test', 1),
(70, 'bapropagos', 1),
(71, 'cisco', 1),
(72, 'liquidados', 1),
(73, 'rechazos', 1),
(74, 'cartera', 1),
(75, 'bitacora', 1),
(76, 'padron', 1),
(77, 'seguro', 1),
(78, 'robo', 1),
(79, 'extravio', 1),
(80, 'hurto', 1),
(81, 'reposicion', 1),
(82, 'administrador', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `User`
--

CREATE TABLE IF NOT EXISTS `User` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `encryptionKey` blob,
  `isAdmin` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `User`
--

INSERT INTO `User` (`id`, `username`, `password`, `salt`, `encryptionKey`, `isAdmin`) VALUES
(1, 'admin', '1fa4f5856077867c03bbd416b1aea71a05b744e0', '6a7b7eb349c897786cd88df058360a3d', 0xa9daeb80d6ef955a7d782c55338fda13f2cc0b0a8f501066079b12b138f07f49e6f7e5ab8d18d842, 1),
(2, 'userbd', '6AFA13A12350A17291E5CAFFC3345FCFD97F246F', 'd41d8cd98f00b204e9800998ecf8427e', 0x00, 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
