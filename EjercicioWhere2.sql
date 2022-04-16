use bd1;

-- Verificar si existe la tabla
if object_id('libros') is not null
	drop table libros;

-- Creamos la tabla libros
create table libros(
	titulo		varchar(40),
	autor		varchar(30),
	editorial	varchar(15)
)

go

-- Nota: Cuando tenemos un lote de comandos SQL y necesitamos particionarlo en distintos sublotes debemos utilizar el comando "go",
-- no es un comando SQL sino un comando propio del "SQL Server Management Studio"

-- Llamamos al procedimiento almacenado que permite conocer los campos de una tabla
exec sp_columns libros;

-- Insertamos varias filas a la tabla libros
insert into libros(titulo, autor, editorial)
			values('El Aleph', 'Borges', 'Emece');
insert into libros(titulo, autor, editorial)
			values('Martin Fierro', 'Jose Hernandez', 'Emece');
insert into libros(titulo, autor, editorial)
			values('Martin Fierro', 'Jose Hernandez', 'Planeta');
insert into libros(titulo, autor, editorial)
			values('Aprenda PHP', 'Mario Molina', 'Siglo XXI');

-- Seleccione los registros cuyo autor sea "Borges"
select *
from libros
where autor = 'Borges';

-- Seleccione los títulos de los libros cuya editorial sea "Emece"
select *
from libros
where editorial = 'Emece';

-- Selecciona los nombres de las editoriales de los libros cuyo título sea "Martin Fierro"
select editorial
from libros
where titulo = 'Martin Fierro';