use bd1;

-- Verificar si la tabla está creada
if object_id('peliculas') is not null
	-- Eliminar la tabla
	drop table peliculas;

-- Creación de la tabla
create table peliculas(
	titulo		varchar(20),
	actor		varchar(20),
	duracion	integer,
	cantidad	integer
);

go

-- Ejecución del sp que muestra las columnas de la tabla
exec sp_columns peliculas;

-- Ingresando valores a la tabla
insert into peliculas (titulo, actor, duracion, cantidad)
				values('Mision Imposible', 'Tom Cruise', 180, 3);
insert into peliculas (titulo, actor, duracion, cantidad)
				values('Misión Imposible 2', 'Tom Cruise', 190, 2);
insert into peliculas (titulo, actor, duracion, cantidad)
				values('Mujer Bonita', 'Julia Roberts', 118, 3);
insert into peliculas (titulo, actor, duracion, cantidad)
				values('Elsa y Fred', 'China Zorrilla', 110, 2);

-- Mostrando únicamente el título y el actor
select titulo, actor
from peliculas;

-- Mostrando el título y la duración de todas las películas
select	titulo, duracion
from peliculas;

-- Mostrando el título y la cantidad de copias
select titulo, cantidad
from peliculas;