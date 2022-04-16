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
			values('El Aleph', 'Borges', 'Emece', 25, 100);
insert into libros(titulo, autor, editorial, precio, cantidad)
			values('Martin Fierro', 'Jose Hernandez', 'Planeta', 35.50, 100);
insert into libros(titulo, autor, editorial, precio, cantidad)
			values('Aprenda PHP', 'Mario Molina', 'Emce', 45.50, 100);
insert into libros(titulo, autor, editorial, precio, cantidad)
			values('Cervantes y el quijote', 'Borges', 'Emce', 25, 200);
insert into libros(titulo, autor, editorial, precio, cantidad)
			values('Matemática estás ahí?', 'Paenza', 'Siglo XXI', 15, 200);

-- Mostrando todos los registros
select *
from libros;

--Modifique los registros cuyo autor sea igual a 'Paenza', por 'Adrian Paenza'
update libros
set autor = 'Adrian Paenza'
where autor = 'Paenza';

--Intentemos modificar un registro que no existe cambiando a los que tengan como autor 'Paneza' por 'A. Paenza'
update libros
set autor = 'A. Paenza'
where autor = 'Paenza';

-- Actualice el precio del libro 'Mario Molina' a 27 pesos
update libros
set precio = 27
where autor = 'Mario Molina';

-- Actualice el valor del campo editorial por 'Emce S.A.', para todos los registros cuya editorial sea igual a 'Emce'
update libros
set editorial = 'Emce S.A.'
where editorial = 'Emce';
