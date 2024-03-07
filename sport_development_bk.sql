-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: sport_development
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_administradores`
--

DROP TABLE IF EXISTS `tb_administradores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_administradores` (
  `id_admin` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `clave` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `id_tipo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_admin`),
  UNIQUE KEY `uni_usuario_administradores` (`usuario`),
  UNIQUE KEY `uni_correo_administradores` (`correo`),
  KEY `fk_id_tipo_admin_administradores` (`id_tipo`),
  CONSTRAINT `fk_id_tipo_admin_administradores` FOREIGN KEY (`id_tipo`) REFERENCES `tb_tipos_administradores` (`id_tipo_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_administradores`
--

LOCK TABLES `tb_administradores` WRITE;
/*!40000 ALTER TABLE `tb_administradores` DISABLE KEYS */;
INSERT INTO `tb_administradores` VALUES (1,'Natael','Cano','Gerente','12345','correo789@gmail.com',1),(2,'Jesus','Ortiz','Supervisor','12345','correo3545@gmail.com',2),(3,'Gabito','Ballesteros','Asistente','12345','correo2455@gmail.com',3);
/*!40000 ALTER TABLE `tb_administradores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_categorias`
--

DROP TABLE IF EXISTS `tb_categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_categorias` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_categorias`
--

LOCK TABLES `tb_categorias` WRITE;
/*!40000 ALTER TABLE `tb_categorias` DISABLE KEYS */;
INSERT INTO `tb_categorias` VALUES (1,'Calzado'),(2,'Accesorios'),(3,'Ropa');
/*!40000 ALTER TABLE `tb_categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_clientes`
--

DROP TABLE IF EXISTS `tb_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `dui` varchar(10) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `nacimiento` date NOT NULL DEFAULT curdate(),
  `direccion` varchar(255) NOT NULL,
  `clave_cliente` varchar(100) NOT NULL,
  `estado_cliente` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `uni_dui_clientes` (`dui`),
  UNIQUE KEY `uni_correo_clientes` (`correo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_clientes`
--

LOCK TABLES `tb_clientes` WRITE;
/*!40000 ALTER TABLE `tb_clientes` DISABLE KEYS */;
INSERT INTO `tb_clientes` VALUES (1,'Dennis','Gonzalez','11111111','correo1@gmail.com','1111-1111','2000-01-01','Calle Principal 1','contraseña1',1),(2,'Jose','Catillo','22222222','correo2@gmail.com','2222-2222','2001-02-02','Calle Secundaria 2','contraseña2',1),(3,'Cesar','Martínez','33333333','correo3@gmail.com','3333-3333','2002-03-03','Avenida Principal 3','contraseña3',1),(4,'Daniel','Rodríguez','44444444','correo4@gmail.com','4444-4444','2003-04-04','Calle A 4','contraseña4',1),(5,'Sagas','López','55555555','correo5@gmail.com','5555-5555','2004-05-05','Calle B 5','contraseña5',1),(6,'Rocio','Flores','66666666','correo6@gmail.com','6666-6666','2005-06-06','Calle C 6','contraseña6',1),(7,'Jhonny','Pérez','77777777','correo7@gmail.com','7777-7777','2006-07-07','Calle D 7','contraseña7',1),(8,'Franco','Gómez','88888888','correo8@gmail.com','8888-8888','2007-08-08','Avenida Principal 8','contraseña8',1),(9,'Bryan','Ramírez','99999999','correo9@gmail.com','9999-9999','2008-09-09','Calle Secundaria 9','contraseña9',1),(10,'Carranza','Castro','10101010','correo10@gmail.com','1010-1010','2009-10-10','Calle E 10','contraseña10',1),(11,'Wilfredo','Molina','11111112','correo11@gmail.com','1112-1112','2010-11-11','Calle Principal 11','contraseña11',1),(12,'Anderson','Serrano','11111113','correo12@gmail.com','1113-1113','2011-12-12','Calle Secundaria 12','contraseña12',1),(13,'Francisco','Castillo','11111114','correo13@gmail.com','1114-1114','2012-01-13','Avenida Principal 13','contraseña13',1),(14,'Ricardo','Flores','11111115','correo14@gmail.com','1115-1115','2013-02-14','Calle A 14','contraseña14',1),(15,'Karla','Hernández','11111116','correo15@gmail.com','1116-1116','2014-03-15','Calle B 15','contraseña15',1),(16,'José','Gómez','11111117','correo16@gmail.com','1117-1117','2015-04-16','Calle C 16','contraseña16',1),(17,'Vanessa','Molina','11111118','correo17@gmail.com','1118-1118','2016-05-17','Calle D 17','contraseña17',1),(18,'Carlos','Martínez','11111119','correo18@gmail.com','1119-1119','2017-06-18','Avenida Principal 18','contraseña18',1),(19,'Gabriela','Serrano','11111120','correo19@gmail.com','1120-1120','2018-07-19','Calle Secundaria 19','contraseña19',1),(20,'Alejandro','Castillo','11111121','correo20@gmail.com','1121-1121','2019-08-20','Calle E 20','contraseña20',1),(21,'Claudia','López','11111122','correo21@gmail.com','1122-1122','2019-08-20','Calle Principal 21','contraseña21',1),(22,'Francisco','Flores','11111123','correo22@gmail.com','1123-1123','2019-08-20','Calle Secundaria 22','contraseña22',1),(23,'Lenny','Electra','11111124','correo23@gmail.com','1124-1124','2019-08-20','Avenida Principal 23','contraseña23',1),(24,'Raul','González','11111125','correo24@gmail.com','1125-1125','2019-08-20','Calle A 24','contraseña24',1),(25,'Claudia','Lars','11111126','correo25@gmail.com','1126-1126','2019-08-20','Calle B 25','contraseña25',1);
/*!40000 ALTER TABLE `tb_clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_deportes`
--

DROP TABLE IF EXISTS `tb_deportes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_deportes` (
  `id_deporte` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id_deporte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_deportes`
--

LOCK TABLES `tb_deportes` WRITE;
/*!40000 ALTER TABLE `tb_deportes` DISABLE KEYS */;
INSERT INTO `tb_deportes` VALUES (1,'Correr'),(2,'Baloncesto'),(3,'Fútbol'),(4,'Tenis'),(5,'Ciclismo');
/*!40000 ALTER TABLE `tb_deportes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_detalles_pedidos`
--

DROP TABLE IF EXISTS `tb_detalles_pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_detalles_pedidos` (
  `id_detalle` int(11) NOT NULL,
  `id_detalle_producto` int(11) DEFAULT NULL,
  `cantidad_producto` int(11) NOT NULL CHECK (`cantidad_producto` >= 0),
  `precio_producto` decimal(6,2) NOT NULL CHECK (`precio_producto` >= 0),
  PRIMARY KEY (`id_detalle`),
  KEY `fk_id_detalle_producto_detalles_pedidos` (`id_detalle_producto`),
  CONSTRAINT `fk_id_detalle_producto_detalles_pedidos` FOREIGN KEY (`id_detalle_producto`) REFERENCES `tb_productos` (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_detalles_pedidos`
--

LOCK TABLES `tb_detalles_pedidos` WRITE;
/*!40000 ALTER TABLE `tb_detalles_pedidos` DISABLE KEYS */;
INSERT INTO `tb_detalles_pedidos` VALUES (1,1,2,50.00),(2,2,1,30.00),(3,3,3,20.00),(4,4,1,40.00),(5,5,2,25.00),(6,6,4,35.00),(7,7,2,15.00),(8,8,1,28.00),(9,9,3,22.50),(10,10,1,18.00),(11,11,2,42.00),(12,12,5,30.00),(13,13,1,20.50),(14,14,3,27.00),(15,15,2,23.75),(16,16,4,31.20),(17,17,1,19.99),(18,18,3,25.50),(19,19,2,37.80),(20,20,1,22.00),(21,21,2,40.00),(22,22,4,18.50),(23,23,1,33.75),(24,24,3,26.80),(25,25,2,21.00);
/*!40000 ALTER TABLE `tb_detalles_pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_detalles_productos`
--

DROP TABLE IF EXISTS `tb_detalles_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_detalles_productos` (
  `id_detalle_producto` int(11) NOT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `existencias` int(11) NOT NULL CHECK (`existencias` >= 0),
  `id_talla` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_detalle_producto`),
  KEY `fk_id_producto_detalles_productos` (`id_producto`),
  KEY `fk_id_talla_detalles_productos` (`id_talla`),
  CONSTRAINT `fk_id_producto_detalles_productos` FOREIGN KEY (`id_producto`) REFERENCES `tb_productos` (`id_producto`),
  CONSTRAINT `fk_id_talla_detalles_productos` FOREIGN KEY (`id_talla`) REFERENCES `tb_tallas` (`id_talla`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_detalles_productos`
--

LOCK TABLES `tb_detalles_productos` WRITE;
/*!40000 ALTER TABLE `tb_detalles_productos` DISABLE KEYS */;
INSERT INTO `tb_detalles_productos` VALUES (1,1,10,1),(2,2,15,2),(3,3,20,3),(4,4,25,4),(5,5,10,5),(6,6,18,1),(7,7,30,2),(8,8,22,3),(9,9,27,4),(10,10,14,5),(11,11,20,1),(12,12,32,2),(13,13,15,3),(14,14,28,4),(15,15,19,5),(16,16,24,1),(17,17,36,2),(18,18,16,3),(19,19,29,4),(20,20,21,5),(21,21,25,1),(22,22,12,2),(23,23,33,3),(24,24,17,4),(25,25,8,1);
/*!40000 ALTER TABLE `tb_detalles_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_generos`
--

DROP TABLE IF EXISTS `tb_generos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_generos` (
  `id_genero` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id_genero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_generos`
--

LOCK TABLES `tb_generos` WRITE;
/*!40000 ALTER TABLE `tb_generos` DISABLE KEYS */;
INSERT INTO `tb_generos` VALUES (1,'Hombres'),(2,'Mujeres'),(3,'Unisex');
/*!40000 ALTER TABLE `tb_generos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_imagenes`
--

DROP TABLE IF EXISTS `tb_imagenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_imagenes` (
  `id_imagen` int(11) NOT NULL,
  `nombre_imagen` varchar(25) NOT NULL,
  `id_producto` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_imagen`),
  KEY `fk_id_producto_imagenes` (`id_producto`),
  CONSTRAINT `fk_id_producto_imagenes` FOREIGN KEY (`id_producto`) REFERENCES `tb_productos` (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_imagenes`
--

LOCK TABLES `tb_imagenes` WRITE;
/*!40000 ALTER TABLE `tb_imagenes` DISABLE KEYS */;
INSERT INTO `tb_imagenes` VALUES (1,'zapato1.jpg',1),(2,'balon1.jpg',2),(3,'camiseta1.jpg',3),(4,'pantalon1.jpg',4),(5,'gorra1.jpg',5),(6,'calcetines1.jpg',6),(7,'balon2.jpg',7),(8,'chaqueta1.jpg',8),(9,'raqueta1.jpg',9),(10,'gafas1.jpg',10),(11,'mallas1.jpg',11),(12,'sudadera1.jpg',12),(13,'bolso1.jpg',13),(14,'guantes1.jpg',14),(15,'pelota1.jpg',15),(16,'reloj1.jpg',16),(17,'cuerda1.jpg',17),(18,'casco1.jpg',18),(19,'botella1.jpg',19),(20,'cinta1.jpg',20),(21,'bicicleta1.jpg',21),(22,'mochila1.jpg',22),(23,'gorro1.jpg',23),(24,'bolsa1.jpg',24),(25,'colchoneta1.jpg',25);
/*!40000 ALTER TABLE `tb_imagenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_marcas`
--

DROP TABLE IF EXISTS `tb_marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_marcas` (
  `id_marca` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id_marca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_marcas`
--

LOCK TABLES `tb_marcas` WRITE;
/*!40000 ALTER TABLE `tb_marcas` DISABLE KEYS */;
INSERT INTO `tb_marcas` VALUES (1,'Nike'),(2,'Adidas'),(3,'Puma'),(4,'Under Armour'),(5,'New Balance'),(100,'Channel');
/*!40000 ALTER TABLE `tb_marcas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pedidos`
--

DROP TABLE IF EXISTS `tb_pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_pedidos` (
  `id_pedido` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `estado_pedido` tinyint(1) NOT NULL,
  `fecha_registro` date NOT NULL DEFAULT curtime(),
  `direccion` varchar(255) NOT NULL,
  PRIMARY KEY (`id_pedido`),
  KEY `fk_id_cliente_pedidos` (`id_cliente`),
  CONSTRAINT `fk_id_cliente_pedidos` FOREIGN KEY (`id_cliente`) REFERENCES `tb_clientes` (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pedidos`
--

LOCK TABLES `tb_pedidos` WRITE;
/*!40000 ALTER TABLE `tb_pedidos` DISABLE KEYS */;
INSERT INTO `tb_pedidos` VALUES (1,1,1,'2024-03-07','Calle A 123'),(2,2,0,'2024-03-07','Calle B 456'),(3,3,1,'2024-03-07','Calle C 789'),(4,4,0,'2024-03-07','Calle D 012'),(5,5,1,'2024-03-07','Calle E 345'),(6,6,0,'2024-03-07','Calle F 678'),(7,7,1,'2024-03-07','Calle G 901'),(8,8,0,'2024-03-07','Calle H 234'),(9,9,1,'2024-03-07','Calle I 567'),(10,10,0,'2024-03-07','Calle J 890'),(11,11,1,'2024-03-07','Calle K 123'),(12,12,0,'2024-03-07','Calle L 456'),(13,13,1,'2024-03-07','Calle M 789'),(14,14,0,'2024-03-07','Calle N 012'),(15,15,1,'2024-03-07','Calle O 345'),(16,16,0,'2024-03-07','Calle P 678'),(17,17,1,'2024-03-07','Calle Q 901'),(18,18,0,'2024-03-07','Calle R 234'),(19,19,1,'2024-03-07','Calle S 567'),(20,20,0,'2024-03-07','Calle T 890'),(21,21,1,'2024-03-07','Calle U 123'),(22,22,0,'2024-03-07','Calle V 456'),(23,23,1,'2024-03-07','Calle W 789'),(24,24,0,'2024-03-07','Calle X 012'),(25,25,1,'2024-03-07','Calle Y 345');
/*!40000 ALTER TABLE `tb_pedidos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER before_insert_tb_pedidos
BEFORE INSERT ON tb_pedidos
FOR EACH ROW
SET NEW.fecha_registro = CURRENT_DATE() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tb_productos`
--

DROP TABLE IF EXISTS `tb_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_productos` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `precio` decimal(6,2) NOT NULL CHECK (`precio` >= 0),
  `estado_producto` tinyint(1) NOT NULL,
  `id_admin` int(11) DEFAULT NULL,
  `id_marca` int(11) DEFAULT NULL,
  `id_deporte` int(11) DEFAULT NULL,
  `id_genero` int(11) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `fk_id_admin_productos` (`id_admin`),
  KEY `fk_id_marca_productos` (`id_marca`),
  KEY `fk_id_deporte_productos` (`id_deporte`),
  KEY `fk_id_genero_productos` (`id_genero`),
  KEY `fk_id_categoria_productos` (`id_categoria`),
  CONSTRAINT `fk_id_admin_productos` FOREIGN KEY (`id_admin`) REFERENCES `tb_administradores` (`id_admin`),
  CONSTRAINT `fk_id_categoria_productos` FOREIGN KEY (`id_categoria`) REFERENCES `tb_categorias` (`id_categoria`),
  CONSTRAINT `fk_id_deporte_productos` FOREIGN KEY (`id_deporte`) REFERENCES `tb_deportes` (`id_deporte`),
  CONSTRAINT `fk_id_genero_productos` FOREIGN KEY (`id_genero`) REFERENCES `tb_generos` (`id_genero`),
  CONSTRAINT `fk_id_marca_productos` FOREIGN KEY (`id_marca`) REFERENCES `tb_marcas` (`id_marca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_productos`
--

LOCK TABLES `tb_productos` WRITE;
/*!40000 ALTER TABLE `tb_productos` DISABLE KEYS */;
INSERT INTO `tb_productos` VALUES (1,'Zapatos para correr','Zapatos cómodos para correr',89.99,1,1,1,1,1,1),(2,'Baloncesto','Tamaño y peso oficial',29.99,1,1,2,2,2,2),(3,'Camiseta de algodón','Camiseta casual de algodón',19.99,1,2,1,3,1,1),(4,'Pantalones deportivos','Pantalones deportivos cómodos',39.99,1,2,2,1,2,2),(5,'Gorra de béisbol','Gorra de béisbol ajustable',14.99,1,3,1,2,2,1),(6,'Calcetines deportivos','Calcetines transpirables para deportes',9.99,1,3,2,3,1,3),(7,'Balón de fútbol','Balón de fútbol tamaño oficial',24.99,1,1,1,1,2,2),(8,'Chaqueta impermeable','Chaqueta impermeable para actividades al aire libre',49.99,1,3,2,2,1,1),(9,'Raqueta de tenis','Raqueta de tenis profesional',89.99,1,2,1,3,2,2),(10,'Gafas de ciclismo','Gafas deportivas para ciclismo',34.99,1,1,2,1,1,3),(11,'Mallas de entrenamiento','Mallas elásticas para entrenamiento',29.99,1,1,3,2,2,1),(12,'Sudadera con capucha','Sudadera cómoda con capucha',39.99,1,1,1,3,1,2),(13,'Bolso de deporte','Bolso espacioso para artículos deportivos',19.99,1,2,2,1,2,3),(14,'Guantes de portero','Guantes profesionales para portero',49.99,1,2,1,2,1,1),(15,'Pelota de golf','Pelota de golf de alta calidad',14.99,1,3,2,3,2,2),(16,'Reloj deportivo','Reloj resistente al agua para actividades deportivas',79.99,1,3,1,1,1,3),(17,'Cuerda para saltar','Cuerda ajustable para entrenamiento cardiovascular',9.99,1,1,2,2,2,1),(18,'Casco para ciclismo','Casco ligero y seguro para ciclistas',39.99,1,2,1,3,1,2),(19,'Botella de agua deportiva','Botella de agua con diseño ergonómico',7.99,1,2,2,1,2,3),(20,'Cinta de correr plegable','Cinta de correr para entrenamiento en casa',299.99,1,3,1,2,1,1),(21,'Bicicleta estática','Bicicleta estática para ejercicio en interiores',199.99,1,1,3,3,2,2),(22,'Mochila de senderismo','Mochila resistente para senderismo',59.99,1,1,1,1,1,3),(23,'Gorro de natación','Gorro de natación cómodo y duradero',12.99,1,2,2,2,2,1),(24,'Bolsa de golf','Bolsa de golf con múltiples compartimentos',79.99,1,2,1,3,1,2),(25,'Colchoneta de yoga','Colchoneta antideslizante para yoga',24.99,1,3,2,1,2,3);
/*!40000 ALTER TABLE `tb_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tallas`
--

DROP TABLE IF EXISTS `tb_tallas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_tallas` (
  `id_talla` int(11) NOT NULL,
  `nombre` varchar(5) NOT NULL,
  PRIMARY KEY (`id_talla`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tallas`
--

LOCK TABLES `tb_tallas` WRITE;
/*!40000 ALTER TABLE `tb_tallas` DISABLE KEYS */;
INSERT INTO `tb_tallas` VALUES (1,'S'),(2,'M'),(3,'L'),(4,'XL'),(5,'XXL');
/*!40000 ALTER TABLE `tb_tallas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tipos_administradores`
--

DROP TABLE IF EXISTS `tb_tipos_administradores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_tipos_administradores` (
  `id_tipo_admin` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id_tipo_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tipos_administradores`
--

LOCK TABLES `tb_tipos_administradores` WRITE;
/*!40000 ALTER TABLE `tb_tipos_administradores` DISABLE KEYS */;
INSERT INTO `tb_tipos_administradores` VALUES (1,'Gerente'),(2,'Supervisor'),(3,'Asistente');
/*!40000 ALTER TABLE `tb_tipos_administradores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_valoraciones`
--

DROP TABLE IF EXISTS `tb_valoraciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_valoraciones` (
  `id_valoracion` int(11) NOT NULL,
  `calificacion_producto` enum('1','2','3','4','5') NOT NULL,
  `comentario_producto` varchar(255) NOT NULL,
  `fecha_valoracion` date NOT NULL DEFAULT curtime(),
  `estado_comentario` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_valoracion`),
  CONSTRAINT `fk_id_detalle_pedido_valoraciones` FOREIGN KEY (`id_valoracion`) REFERENCES `tb_detalles_pedidos` (`id_detalle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_valoraciones`
--

LOCK TABLES `tb_valoraciones` WRITE;
/*!40000 ALTER TABLE `tb_valoraciones` DISABLE KEYS */;
INSERT INTO `tb_valoraciones` VALUES (1,'4','¡Gran producto!','2024-03-04',1),(2,'5','Calidad excelente','2024-03-03',1),(3,'3','Buen producto','2024-03-02',1),(4,'5','¡Me encanta!','2024-03-01',1),(5,'2','No está mal','2024-02-29',1),(6,'4','Muy satisfecho con la compra','2024-02-28',1),(7,'3','Buena relación calidad-precio','2024-02-27',1),(8,'5','¡Recomendado!','2024-02-26',1),(9,'4','Excelente servicio al cliente','2024-02-25',1),(10,'2','Producto recibido en buen estado','2024-02-24',1),(11,'5','¡Increíble calidad!','2024-02-23',1),(12,'3','Cumple con mis expectativas','2024-02-22',1),(13,'4','Envío rápido','2024-02-21',1),(14,'5','Mejor de lo esperado','2024-02-20',1),(15,'3','Buena atención al cliente','2024-02-19',1),(16,'4','Lo volvería a comprar','2024-02-18',1),(17,'5','¡Fantástico!','2024-02-17',1),(18,'3','Satisfecho con la compra','2024-02-16',1),(19,'4','Buena variedad de productos','2024-02-15',1),(20,'5','Envío seguro y rápido','2024-02-14',1),(21,'3','Producto de calidad','2024-02-13',1),(22,'4','Muy recomendable','2024-02-12',1),(23,'5','Perfecto para mis necesidades','2024-02-11',1),(24,'3','Buen servicio postventa','2024-02-10',1),(25,'4','Precio justo','2024-02-09',1);
/*!40000 ALTER TABLE `tb_valoraciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-07 10:30:11
