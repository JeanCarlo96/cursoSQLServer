use bd1;

-- Comprobar si la tabla usuario est� creada
if object_id('usuarios') is not null
	-- Eliminaci�n de la tabla
	drop table usuarios;

-- Creaci�n de la tabla
create table usuarios(
	nombre	varchar(30),
	clave	varchar(10)
);

-- Insertando valores en la tabla
insert into usuarios (nombre, clave) values ('Jean Carlo', '4265');

-- Mostrar todos los elementos de la tabla
select *
from usuarios;

-- Cargando otra fila
insert into usuarios (nombre, clave) values ('Gissela Estefan�a', '6542');

-- Mostrar todos los elementos de la tabla
select *
from usuarios; 