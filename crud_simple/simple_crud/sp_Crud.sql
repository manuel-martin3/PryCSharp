
ALTER proc [dbo].[ins_registro]( 
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

GO



ALTER proc [dbo].[upd_registro]( 
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
 WHERE Idalu = @Idalu

 GO

 alter proc del_registro( 
@Idalu int
)
as
 

	   DELETE FROM [dbo].[notas]
      WHERE Idalu = @Idalu

	  DELETE FROM [dbo].[alumno]
      WHERE Idalu = @Idalu


GO

 alter proc sel_registro( 
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
GO


