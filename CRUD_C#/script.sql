create procedure busca_alumno(
	@Idalu int
)
as
begin 
	select * from alumno where idalu = @Idalu
	
	/*otra manera de busqueda*/	
	/*
		select * from alumno where 
	 	(@Idalu is null or @Idalu = '' or  @Idalu = Idalu)
	 	
	*/
end; 


create proc listar_alumno
as
begin
	select * from alumno
end;


create proc elimina_alumno(
	@Idalu int
)
as
begin
	delete from alumno where idalu=@Idalu
end;


create proc insert_alumno(
	@Idalu int,
	@nomalu varchar(25),
	@apealu varchar(25),
	@dnialu varchar(25)
)
as
begin
	insert into alumno values(@nomalu, @apealu, @dnialu)
end;


create proc modifica_alumno(
	@Idalu int,
	@nomalu varchar(25),
	@apealu varchar(25),
	@dnialu varchar(25)
)
as
begin
	update alumno set nomalu=@nomalu, apealu=@apealu, dnialu=@dnialu where idalu=@Idalu
end;