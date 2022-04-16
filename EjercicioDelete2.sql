use bd1;

-- Verificamos si la tabla existe
if object_id('articulos') is not null
	-- Eliminamos la tabla
	drop table articulos;

-- Creación de la tabla
create table articulos(
	codigo		integer,
	nombre		varchar(20),
	descripcion	varchar(30),
	precio		float,
	cantidad	integer

);

--Ver estructura de la tabla
exec sp_columns articulos;

-- Ingresando registros
insert into articulos (codigo, nombre, descripcion, precio, cantidad)
				values(1, 'Impresora', 'Epson Stylus C45', 400.80, 20);
insert into articulos (codigo, nombre, descripcion, precio, cantidad)
				values(2, 'Impresora', 'Epson Stylus C45', 500, 30);
insert into articulos (codigo, nombre, descripcion, precio, cantidad)
				values(3, 'Monitor', 'Samsung 14"', 800, 10);
insert into articulos (codigo, nombre, descripcion, precio, cantidad)
				values(4, 'Teclado', 'Ingles Biswal', 100, 50);
insert into articulos (codigo, nombre, descripcion, precio, cantidad)
				values(5, 'Teclado', 'Español Biswal', 90, 50);

-- Mostrar todos los datos
select *
from articulos;

-- Eliminar los registros cuyo precio sea mayor o igual a 500 (2 registros)
delete from articulos
where precio >= 500;

-- Eliminar todas las impresoras
delete articulos
where nombre = 'Impresora';

-- Elimine todos los registros cuyo código sea diferente de 4
delete articulos
where codigo <> 4;

-- Mostrar los elementos sobrantes
select *
from articulos;
