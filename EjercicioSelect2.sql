use bd1;

-- Verificar si la tabla est� creada
if object_id('peliculas') is not null
	-- Eliminar la tabla
	drop table peliculas;

-- Creaci�n de la tabla
create table peliculas(
	titulo		varchar(20),
	actor		varchar(20),
	duracion	integer,
	cantidad	integer
);

go

-- Ejecuci�n del sp que muestra las columnas de la tabla
exec sp_columns peliculas;

-- Ingresando valores a la tabla
insert into peliculas (titulo, actor, duracion, cantidad)
				values('Mision Imposible', 'Tom Cruise', 180, 3);
insert into peliculas (titulo, actor, duracion, cantidad)
				values('Misi�n Imposible 2', 'Tom Cruise', 190, 2);
insert into peliculas (titulo, actor, duracion, cantidad)
				values('Mujer Bonita', 'Julia Roberts', 118, 3);
insert into peliculas (titulo, actor, duracion, cantidad)
				values('Elsa y Fred', 'China Zorrilla', 110, 2);

-- Mostrando �nicamente el t�tulo y el actor
select titulo, actor
from peliculas;

-- Mostrando el t�tulo y la duraci�n de todas las pel�culas
select	titulo, duracion
from peliculas;

-- Mostrando el t�tulo y la cantidad de copias
select titulo, cantidad
from peliculas;