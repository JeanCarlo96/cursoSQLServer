use bd1;

-- Verificar si existe la tabla
if object_id('libros') is not null
	drop table libros;

-- Creamos la tabla libros
create table libros(
	titulo		varchar(40),
	autor		varchar(30),
	editorial	varchar(15),
	precio		float,
	cantidad	integer
)

go

-- Nota: Cuando tenemos un lote de comandos SQL y necesitamos particionarlo en distintos sublotes debemos utilizar el comando "go",
-- no es un comando SQL sino un comando propio del "SQL Server Management Studio"

-- Llamamos al procedimiento almacenado que permite conocer los campos de una tabla
exec sp_columns libros;

-- Insertamos varias filas a la tabla libros
insert into libros(titulo, autor, editorial, precio, cantidad)
			values('El Aleph', 'Borges', 'Emece', 25.50, 100);
insert into libros(titulo, autor, editorial, precio, cantidad)
			values('Alicia en el pais de las maravillas', 'Lewis Carroll', 'Atlantida', 10, 200);
insert into libros(titulo, autor, editorial, precio, cantidad)
			values('Matemática estás ahí?', 'Paenza', 'Siglo XXI', 18.80, 200);

-- Recuperar todos los registros de la tabla
select *
from libros;

-- Recuperar solo el título, autor y editorial de la tabla
select titulo, autor, editorial
from libros;

-- Recuperar el título y el precio
select titulo, precio
from libros;

-- Recuperar la editorial y la cantidad
select editorial, cantidad
from libros;