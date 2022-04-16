use bd1;

-- Verificamos si la tabla existe
if object_id('agenda') is not null
	-- Eliminamos la tabla
	drop table agenda;

-- Creamos la tabla
create table agenda(
	apellido		varchar(30),
	nombre			varchar(20),
	domicilio		varchar(30),
	telefono		varchar(11)
);

go

-- Ingresando Datos
insert into agenda (apellido, nombre, domicilio, telefono)
			values('Alvarez', 'Alberto', 'Colon 123', '4234567');
insert into agenda (apellido, nombre, domicilio, telefono)
			values('Juarez', 'Juan', 'Avellaneda 135', '4458787');
insert into agenda (apellido, nombre, domicilio, telefono)
			values('Lopez', 'Maria', 'Urquiza 333', '4545454');
insert into agenda (apellido, nombre, domicilio, telefono)
			values('Lopez', 'Jose', 'Urquiza 333', '4545454');
insert into agenda (apellido, nombre, domicilio, telefono)
			values('Salas', 'Susana', 'Gral. Paz 1234', '4123456');

-- Mostrar la estructura de la tabla
exec sp_columns agenda;

-- Modificamos los registros cuyo nombre sea 'Juan' por 'Juan Jose'
update agenda
set nombre = 'Juan Jose'
where nombre = 'Juan';

-- Actualice los registros cuyo numero telefónico sea igual a '4545454' por '4445566'
update agenda
set telefono = '4445566'
where telefono = '4545454';

-- Tratemos de actualizar un registro que no existe
update agenda
set nombre = 'Juan Jose'
where nombre = 'Juan';

-- Mostrando el listado de registros
select *
from agenda;