-- --------------------------------------------------------
-- Host:                         PC\SQLEXPRESS
-- Versión del servidor:         Microsoft SQL Server 2014 - 12.0.2000.8
-- SO del servidor:              Windows NT 6.3 <X64> (Build 9600: )
-- HeidiSQL Versión:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES  */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para sampleDB
CREATE DATABASE IF NOT EXISTS "sampleDB";
USE "sampleDB";

-- Volcando estructura para tabla sampleDB.cargo
CREATE TABLE IF NOT EXISTS "cargo" (
	"car_cod" INT(10,0) NOT NULL,
	"car_des" VARCHAR(50) NULL DEFAULT NULL,
	PRIMARY KEY ("car_cod")
);

-- Volcando datos para la tabla sampleDB.cargo: -1 rows
/*!40000 ALTER TABLE "cargo" DISABLE KEYS */;
INSERT IGNORE INTO "cargo" ("car_cod", "car_des") VALUES
	(1, 'Administrador'),
	(2, 'Auxiliar'),
	(3, 'Mantenimiento y Servicios');
/*!40000 ALTER TABLE "cargo" ENABLE KEYS */;

-- Volcando estructura para tabla sampleDB.tlogin
CREATE TABLE IF NOT EXISTS "tlogin" (
	"id" INT(10,0) NOT NULL,
	"username" VARCHAR(50) NULL DEFAULT NULL,
	"password" VARCHAR(50) NULL DEFAULT NULL,
	PRIMARY KEY ("id")
);

-- Volcando datos para la tabla sampleDB.tlogin: -1 rows
/*!40000 ALTER TABLE "tlogin" DISABLE KEYS */;
INSERT IGNORE INTO "tlogin" ("id", "username", "password") VALUES
	(1, 'admin', '123456'),
	(2, 'abc105', 'abc'),
	(7, 'juan', '7889'),
	(8, 'pepep', '78997'),
	(9, 'osos', '748596'),
	(10, 'raul', '123456'),
	(11, 'pedro', '1230456'),
	(12, 'ines', '4647879'),
	(14, 'ana', '78945'),
	(15, 'benito', '44514'),
	(16, 'nene', '47115'),
	(17, 'marga', '17566'),
	(18, 'martin', '475187');
/*!40000 ALTER TABLE "tlogin" ENABLE KEYS */;

-- Volcando estructura para tabla sampleDB.usuario
CREATE TABLE IF NOT EXISTS "usuario" (
	"cod_usu" INT(10,0) NOT NULL,
	"nom_usu" VARCHAR(50) NULL DEFAULT (NULL),
	"car_cod" INT(10,0) NULL DEFAULT NULL,
	PRIMARY KEY ("cod_usu")
);

-- Volcando datos para la tabla sampleDB.usuario: -1 rows
/*!40000 ALTER TABLE "usuario" DISABLE KEYS */;
INSERT IGNORE INTO "usuario" ("cod_usu", "nom_usu", "car_cod") VALUES
	(1, 'Martin', 1),
	(2, 'Juan', 2),
	(3, 'Percy', 3),
	(4, 'Benito', 2),
	(5, 'Pablo', 2),
	(6, 'Angel', 1),
	(7, 'Pedro', 3),
	(8, 'Ana', 3);
/*!40000 ALTER TABLE "usuario" ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
