use bd1;

-- delete: Permite eliminar los registros de una tabla

-- Verificar si la tabla existe
if object_id('usuarios') is not null
	-- Eliminamos la tabla
	drop table usuarios;

-- Creación de la tabla
create table usuarios(
	nombre		varchar(30),
	clave		varchar(10)
);

go

-- Insertando Registros
insert into usuarios (nombre, clave)
				values ('Marcelo', 'River');
insert into usuarios (nombre, clave)
				values ('Susana', 'chapita');
insert into usuarios (nombre, clave)
				values ('CarlosFuentes', 'Boca');
insert into usuarios (nombre, clave)
				values ('FedericoLopez', 'Boca');

-- Sp que ejecuta la estructura de una tabla
exec sp_columns usuarios;

-- Mostrar todos los usuarios
select * 
from usuarios;

-- Eliminamos el registro cuyp nombre de usuario es "Marcelo"
delete usuarios
where nombre = 'Marcelo';

-- Mostramos todos los registros que quedaron
select *
from usuarios;

-- Intentamos eliminarlo nuevamente (no se borra registro)
delete usuarios
where nombre = 'Marcelo';

-- Mostramos todos los registros que quedaron
select *
from usuarios;
-- Eliminamos los registros cuya clave sea 'Boca'
delete usuarios
where clave = 'Boca';

-- Mostramos todos los registros que quedaron
select *
from usuarios;