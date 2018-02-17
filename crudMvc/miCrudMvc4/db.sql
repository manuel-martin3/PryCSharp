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


-- Volcando estructura de base de datos para bd_empresa
CREATE DATABASE IF NOT EXISTS "bd_empresa";
USE "bd_empresa";

-- Volcando estructura para tabla bd_empresa.area
CREATE TABLE IF NOT EXISTS "area" (
	"are_cod" INT(10,0) NOT NULL,
	"are_des" VARCHAR(50) NULL DEFAULT NULL,
	PRIMARY KEY ("are_cod")
);

-- Volcando datos para la tabla bd_empresa.area: -1 rows
/*!40000 ALTER TABLE "area" DISABLE KEYS */;
INSERT IGNORE INTO "area" ("are_cod", "are_des") VALUES
	(1, 'Gerencia'),
	(2, 'RRHH'),
	(3, 'Almacén');
/*!40000 ALTER TABLE "area" ENABLE KEYS */;

-- Volcando estructura para tabla bd_empresa.empleado
CREATE TABLE IF NOT EXISTS "empleado" (
	"emp_cod" INT(10,0) NOT NULL,
	"emp_nom" VARCHAR(50) NULL DEFAULT NULL,
	"are_cod" INT(10,0) NULL DEFAULT NULL,
	PRIMARY KEY ("emp_cod")
);

-- Volcando datos para la tabla bd_empresa.empleado: -1 rows
/*!40000 ALTER TABLE "empleado" DISABLE KEYS */;
INSERT IGNORE INTO "empleado" ("emp_cod", "emp_nom", "are_cod") VALUES
	(1, 'Martin Abendaño', 1),
	(2, 'Manuel Gonzales', 1),
	(3, 'Juan Lopez', 2),
	(4, 'Marco Gutierrez', 2),
	(5, 'Ernesto Jimenez', 2),
	(6, 'Ivan Saldaña', 1),
	(7, 'Jorge Linares', 3),
	(8, 'Juan Miñan', 3),
	(9, 'Pedro Atoche', 3),
	(10, 'Elvis Rojas', 3),
	(11, 'Tania Solis', 3);
/*!40000 ALTER TABLE "empleado" ENABLE KEYS */;

-- Volcando estructura para procedimiento bd_empresa.PR_DELETEAREA
DELIMITER //

CREATE PROC PR_DELETEAREA
(
	@are_cod int
)
as
	DELETE FROM [dbo].[area]
	WHERE are_cod = @are_cod

//
DELIMITER ;

-- Volcando estructura para procedimiento bd_empresa.PR_INSERTAREA
DELIMITER //
CREATE PROC PR_INSERTAREA
(
	
	@are_des varchar(50)
)
as
	declare @are_cod int= (select isnull(max(are_cod),0)+1 from [dbo].[area])

	INSERT INTO [dbo].[area]
		([are_cod]
		,[are_des])
	VALUES
		(@are_cod
		,@are_des)

//
DELIMITER ;

-- Volcando estructura para procedimiento bd_empresa.PR_SEARCHAREA
DELIMITER //
CREATE PROC PR_SEARCHAREA
(
	@are_cod int 	
)	
as
	SELECT [are_cod]
		,[are_des]
	FROM [dbo].[area]
	where (@are_cod is null or @are_cod = 0 or @are_cod = are_cod)

//
DELIMITER ;

-- Volcando estructura para procedimiento bd_empresa.PR_UPDATEAREA
DELIMITER //

CREATE PROC PR_UPDATEAREA
(
	@are_cod int,
	@are_des varchar(50)
)
as
	UPDATE [dbo].[area]
	   SET [are_des] = @are_des
	 WHERE are_cod = @are_cod
//
DELIMITER ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
