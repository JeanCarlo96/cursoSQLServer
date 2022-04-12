use bd1;

-- Verificar si la tabla existe
if object_id('empleados') is not null
	-- Eliminando la tabla
	drop table empleados;

-- Creando la tabla
create table empleados(
	nombre			varchar(20),
	documento		varchar(8),
	sexo			varchar(1),
	domicilio		varchar(30),
	sueldobasico	float
);

go

-- Ver la estructura de la tabla
exec sp_columns empleados;

-- Ingresando registros
insert into empleados(nombre, documento, sexo, domicilio, sueldobasico)
				values('Juan Juarez', '22333444', 'm', 'Sarmiento 123', 500);
insert into empleados(nombre, documento, sexo, domicilio, sueldobasico)
				values('Ana Acosta', '27888999', 'f', 'Colon 134', 700);
insert into empleados(nombre, documento, sexo, domicilio, sueldobasico)
				values('Carlos Cáceres', '31222333', 'm', 'Urquiza 479', 850);

-- Mostrar todos los datos
select *
from empleados;

-- Mostrar el nombre, documento y domicilio de los empleados
select nombre, documento, domicilio
from empleados;

-- Mostrando documento, sexo y sueldo
select	documento, sexo, sueldobasico
from empleados;