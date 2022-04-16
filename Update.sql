use bd1;

-- update: Para modificar uno o varios registros

-- Verificamos si existe la tabla
if object_id('usuarios') is not null
	-- Eliminar la tabla
	drop table usuarios;

-- Creando la tabla
create table usuarios(
	nombre	varchar(20),
	clave	varchar(10)
);

go

-- Estructura de la tabla
exec sp_columns usuarios;

-- Insertando datos
insert into usuarios (nombre, clave)
				values('Marcelo', 'River');
insert into usuarios (nombre, clave)
				values('Susana', 'Chapita');
insert into usuarios (nombre, clave)
				values('Carlosfuentes', 'Boca');
insert into usuarios (nombre, clave)
				values('federicolopez', 'Boca');

-- Mostrar todos los usuarios
select *
from usuarios;

-- Actualizar a todos los usuarios la clave por 'RealMadrid'
update usuarios
set clave = 'RealMadrid';

-- Mostrando como quedaron los registros
select *
from usuarios;

-- Modificar la clave al usuario 'federicolopez'
update usuarios
set clave = 'Boca'
where nombre = 'federicolopez';

-- Mostramos como quedó el registros
select *
from usuarios
where nombre = 'federicolopez';

-- Tratar de modificar un registro que no existe
update usuarios
set clave = 'payaso'
where nombre = 'JuanJuarez';

-- Modificar dos atributos de un registro
update usuarios
set nombre = 'Marceloduarte', clave = 'Marce'
where nombre = 'Marcelo';

-- Mostramos el registro modificado
select *
from usuarios
where nombre = 'Marceloduarte';