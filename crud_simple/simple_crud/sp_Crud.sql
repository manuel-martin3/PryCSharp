
alter proc ins_registro( 
@nomalu varchar(25),
@apealu varchar(25),
@dnialu varchar(25)
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
GO


alter proc upd_registro( 
@Idalu int,
@nomalu varchar(25),
@apealu varchar(25),
@dnialu varchar(25)
)
as
UPDATE [dbo].[alumno]
   SET [nomalu] = @nomalu
      ,[apealu] = @apealu
      ,[dnialu] = @dnialu
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


