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


-- Volcando estructura de base de datos para matricula
CREATE DATABASE IF NOT EXISTS "matricula";
USE "matricula";

-- Volcando estructura para tabla matricula.alumno
CREATE TABLE IF NOT EXISTS "alumno" (
	"Idalu" INT(10,0) NOT NULL COMMENT '',
	"nomalu" VARCHAR(25) NULL DEFAULT NULL,
	"apealu" VARCHAR(25) NULL DEFAULT NULL,
	"dnialu" VARCHAR(25) NULL DEFAULT NULL,
	PRIMARY KEY ("Idalu")
);

-- Volcando datos para la tabla matricula.alumno: -1 rows
/*!40000 ALTER TABLE "alumno" DISABLE KEYS */;
INSERT IGNORE INTO "alumno" ("Idalu", "nomalu", "apealu", "dnialu") VALUES
	(1, 'manuel', 'martinez', '15832157'),
	(3, 'miguel', 'ruiz', '78965120'),
	(1006, 'juan', 'lopes', '12345678'),
	(1007, 'martin', 'manuel', '53535535');
/*!40000 ALTER TABLE "alumno" ENABLE KEYS */;

-- Volcando estructura para procedimiento matricula.busca_alumno
DELIMITER //
create procedure busca_alumno(
	@Idalu int
)
as
begin 
	select * from alumno where idalu = @Idalu
end//
DELIMITER ;

-- Volcando estructura para procedimiento matricula.del_registro
DELIMITER //

 CREATE proc del_registro( 
@Idalu int
)
as
 

	   DELETE FROM [dbo].[notas]
      WHERE Idalu = @Idalu

	  DELETE FROM [dbo].[alumno]
      WHERE Idalu = @Idalu


//
DELIMITER ;

-- Volcando estructura para procedimiento matricula.elimina_alumno
DELIMITER //
create proc elimina_alumno(
	@Idalu int
)
as
begin
	delete from alumno where idalu=@Idalu
end//
DELIMITER ;

-- Volcando estructura para procedimiento matricula.insert_alumno
DELIMITER //
create proc insert_alumno(
	@Idalu int,
	@nomalu varchar(25),
	@apealu varchar(25),
	@dnialu varchar(25)
)
as
begin
	insert into alumno values(@nomalu, @apealu, @dnialu)
end//
DELIMITER ;

-- Volcando estructura para procedimiento matricula.ins_registro
DELIMITER //

CREATE proc [dbo].[ins_registro]( 
@nomalu varchar(25),
@apealu varchar(25),
@dnialu varchar(25),
@n1	int,
@n2	int,
@n3	int
)
as
INSERT INTO [dbo].[alumno]
           ([nomalu]
           ,[apealu]
           ,[dnialu])
     VALUES
           (@nomalu
           ,@apealu
           ,@dnialu)

declare @idalu int = (select max(Idalu) from [dbo].[alumno])
INSERT INTO [dbo].[notas]
           ([n1]
           ,[n2]
           ,[n3]
           ,[idalu])
     VALUES
           (@n1
           ,@n2
           ,@n3
           ,@idalu)
//
DELIMITER ;

-- Volcando estructura para procedimiento matricula.listar_alumno
DELIMITER //
create proc listar_alumno
as
begin
	select * from alumno
end//
DELIMITER ;

-- Volcando estructura para procedimiento matricula.modifica_alumno
DELIMITER //
create proc modifica_alumno(
	@Idalu int,
	@nomalu varchar(25),
	@apealu varchar(25),
	@dnialu varchar(25)
)
as
begin
	update alumno set nomalu=@nomalu, apealu=@apealu, dnialu=@dnialu where idalu=@Idalu
end//
DELIMITER ;

-- Volcando estructura para tabla matricula.notas
CREATE TABLE IF NOT EXISTS "notas" (
	"idn" INT(10,0) NOT NULL,
	"n1" INT(10,0) NULL DEFAULT NULL,
	"n2" INT(10,0) NULL DEFAULT NULL,
	"n3" INT(10,0) NULL DEFAULT NULL,
	"idalu" INT(10,0) NULL DEFAULT NULL,
	"prom" INT(10,0) NULL DEFAULT NULL,
	PRIMARY KEY ("idn")
);

-- Volcando datos para la tabla matricula.notas: -1 rows
/*!40000 ALTER TABLE "notas" DISABLE KEYS */;
INSERT IGNORE INTO "notas" ("idn", "n1", "n2", "n3", "idalu", "prom") VALUES
	(3, 13, 19, 10, 3, 14),
	(5, 16, 15, 10, 1, 13),
	(7, 13, 15, 13, 1006, 13),
	(8, 15, 4, 2, 1007, 7);
/*!40000 ALTER TABLE "notas" ENABLE KEYS */;

-- Volcando estructura para procedimiento matricula.sel_registro
DELIMITER //

 CREATE proc sel_registro( 
@Idalu int
)
as
SELECT a.[Idalu]
      ,a.[nomalu]
      ,a.[apealu]
      ,a.[dnialu]
	  ,n.n1,n.n2,n.n3,n.prom
  FROM [dbo].[alumno]a
  inner join [dbo].[notas]n
  on a.Idalu = n.idalu 
   WHERE (@Idalu is null or @Idalu= '' or a.Idalu = @Idalu)
//
DELIMITER ;

-- Volcando estructura para procedimiento matricula.upd_registro
DELIMITER //


CREATE proc [dbo].[upd_registro]( 
@Idalu int,
@nomalu varchar(25),
@apealu varchar(25),
@dnialu varchar(25),
@n1 int,
@n2 int,
@n3 int
)
as
UPDATE [dbo].[alumno]
   SET [nomalu] = @nomalu
      ,[apealu] = @apealu
      ,[dnialu] = @dnialu
 WHERE Idalu = @Idalu

 UPDATE [dbo].[notas]
   SET [n1] = @n1
      ,[n2] = @n2
      ,[n3] = @n3
 WHERE Idalu = @Idalu//
DELIMITER ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
