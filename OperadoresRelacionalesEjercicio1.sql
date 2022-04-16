use bd1;

-- Comprobar si la tabla existe
if object_id('articulos') is not null
	-- Borrar la tabla
	drop table articulos;

-- Creación de la tabla
create table articulos(
	codigo			integer,
	nombre			varchar(20),
	descripcion		varchar(30),
	precio			float,
	cantidad		integer
);

go

-- Estructura de la tabla
exec sp_columns articulos;

-- Ingresando Registros
insert into articulos(codigo, nombre, descripcion, precio, cantidad)
				values(1, 'Impresora', 'Epson Stylus C45', 400.00, 20);
insert into articulos(codigo, nombre, descripcion, precio, cantidad)
				values(2, 'Impresora', 'Epson Stylus C45', 500.00, 30);
insert into articulos(codigo, nombre, descripcion, precio, cantidad)
				values(3, 'Monitor', 'Samsung 14"', 800.00, 10);
insert into articulos(codigo, nombre, descripcion, precio, cantidad)
				values(4, 'Teclado', 'Ingles Biswal', 100, 50);
insert into articulos(codigo, nombre, descripcion, precio, cantidad)
				values(5, 'Teclado', 'Español Biswal', 90, 50);

-- Seleccionar los datos de las Impresoras
select *
from articulos
where nombre = 'Teclado';

-- Selecciona los artículos cuyo valor sea mayor a 400
select *
from articulos
where precio > 400;

-- Seleccione codigo y nombre de artículos cuya cantidad sea menor a 30
select codigo, nombre
from articulos
where cantidad < 30;

-- Seleccione nombre y descripción de los artículos que no cuesten 100
select nombre, descripcion
from articulos
where precio <> 100;