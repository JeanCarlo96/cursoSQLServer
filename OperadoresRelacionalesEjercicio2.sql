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

-- Ingresando datos
insert into peliculas(titulo, actor, duracion, cantidad)
				values('Mision Imposible', 'Tom Cruise', 120, 3);
insert into peliculas(titulo, actor, duracion, cantidad)
				values('Mision Imposible 2', 'Tom Cruise', 180, 4);
insert into peliculas(titulo, actor, duracion, cantidad)
				values('Mujer Bonita', 'Julia R.', 90, 1);
insert into peliculas(titulo, actor, duracion, cantidad)
				values('Elsa y Fred', 'China Zorrilla', 80, 2);

-- Seleccione las pel�culas cuya duraci�n no supere los 90 minutos
select *
from peliculas
where duracion <= 90;

-- Seleccione el t�tulo de todas las pel�culas en las que el actor NO sea "Tom Cruise"
select *
from peliculas
where actor <> 'Tom Cruise';

-- Muestre todos los campos, excepto "duracion", de todas las pel�culas de las que haya m�s de 2 copias
select titulo, actor, cantidad
from peliculas
where cantidad > 2;