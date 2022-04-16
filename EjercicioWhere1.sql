use bd1;

-- Verificamos si existe la tabla
if object_id('agenda') is not null
	-- Eliminando la tabla
	drop table agenda;

-- Creación de la tabla
create table agenda(
	apellido	varchar(30),
	nombre		varchar(20),
	domicilio	varchar(30),
	telefono	varchar(11)
);

go

-- Visualizar la estructura de la tabla
exec sp_columns agenda;

-- Ingresando Registros
insert into agenda(apellido, nombre, domicilio, telefono)
			values('Acosta', 'Ana', 'Colon 123', '4234567');
insert into agenda(apellido, nombre, domicilio, telefono)
			values('Bustamante', 'Betina', 'Avellana 135', '4456787');
insert into agenda(apellido, nombre, domicilio, telefono)
			values('Lopez', 'Hector', 'Salta 545', '4887788');
insert into agenda(apellido, nombre, domicilio, telefono)
			values('Lopez', 'Luis', 'Urquiza 333', '4545454');
insert into agenda(apellido, nombre, domicilio, telefono)
			values('Lopez', 'Marisa', 'Urquiza 333', '4545454');

-- Selecciona todos los registros
select *
from agenda;

-- Selecciona el registro cuyo nombre sea "Marisa"
select *
from agenda
where nombre = 'Marisa';

-- Seleccione los nombres y domicilios de quienes tengan apellido igual a "Lopez"
select *
from agenda
where apellido = 'Lopez';

-- Muestre el nombre de quienes tengan el teléfono "4545454"
select nombre
from agenda
where telefono = '4545454';