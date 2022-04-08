use bd1;

-- Verificar si existe la tabla
if object_id('peliculas') is not null
	drop table peliculas;

-- Creación de la tabla
create table peliculas(
	nombre		varchar(50),
	actor		varchar(50),
	duracion	integer,
	cantidad	integer
	);

-- Procedimiento Almacenado para ver la estructura de la tabla
exec sp_columns peliculas;

-- Ingresando Datos
insert into peliculas (nombre, actor, duracion, cantidad)
				values('Mision Imposible', 'Tom Cruise', 128, 3);
insert into peliculas (nombre, actor, duracion, cantidad)
				values('Mision Imposible 2', 'Tom Cruise', 130, 2);
insert into peliculas (nombre, actor, duracion, cantidad)
				values('Mujer Bonita', 'Julia Roberts', 118, 3);
insert into peliculas (nombre, actor, duracion, cantidad)
				values('Elsa y Fred', 'China Zorrilla', 110, 2);

-- Mostrando Datos
select *
from peliculas;