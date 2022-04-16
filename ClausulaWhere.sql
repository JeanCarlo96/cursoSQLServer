use bd1;

-- Clausula Where: Podemos recuperar algunos registros, sólo los que cumplan conn ciertas condiciones
-- indicadas en el "where"

-- Verificando que la tabla exista
if object_id('usuarios') is not null
	-- Eliminando la tabla
	drop table usuarios;

-- Creando la tabla
create table usuarios(
	nombre	varchar(30),
	clave	varchar(10)
);

go

-- Ejecutando sp para mostrar estructura de la tabla
exec sp_columns usuarios;

-- Insertando Datos
insert into usuarios(nombre, clave)
			values('Marcelo', 'Boca');
insert into usuarios(nombre, clave)
			values('JuanPerez', 'Juancito');
insert into usuarios(nombre, clave)
			values('Susana', 'River');
insert into usuarios(nombre, clave)
			values('Luis', 'River');

-- Recuperando los registros cuyo nombre es "Leonardo"
select *
from usuarios
where nombre = 'Leonardo';

-- Recuperando el nombre de los usuarios cuya clave es River
select *
from usuarios
where clave = 'River';

--Recuperar el nombre de los usuarios cuya clave es "Santi"
select nombre
from usuarios
where clave = 'Santi';