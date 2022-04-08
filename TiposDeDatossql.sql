use bd1;

-- Tipos Básicos de Datos en SQL Server

-- Comprobar si la tabla existe
 if object_id('libros') is not null
	-- Eliminar la tabla
	drop table libros;

-- Creación de la tabla
create table libros(
	titulo		varchar(80),
	autor		varchar(40),
	editor		varchar(30),
	precio		float,
	cantidad	integer
);

-- Procedimiento Almacenado para ver las columnas
exec sp_columns libros;

-- Cargar datos en la tabla
insert into libros(titulo, autor, editor, precio, cantidad)
			values('Don Quijote de la mancha', 'Borges', 'Maximun', 25.50, 200);			

insert into libros(titulo, autor, editor, precio, cantidad)
			values('La Odisea', 'Homero', 'Maximun', 12.50, 100);

insert into libros(titulo, autor, editor, precio, cantidad)
			values('La Iliada', 'Homero', 'Bormx', 50, 11.35);

-- Mostrar los datos
select *
from libros;

