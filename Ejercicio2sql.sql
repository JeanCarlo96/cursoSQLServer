use bd1;

-- Comprobar si la tabla existe
if object_id('empleados') is not null
	-- Eliminando la tabla
	drop table empleados;

-- Creando la tabla
create table empleados(
	nombre			varchar(30),
	documento		varchar(10),
	sexo			char,
	domicilio		varchar(30),
	sueldobasico	float
);

-- Estructura de la tabla
exec sp_columns empleados;

-- Insertando Datos
insert into empleados(nombre, documento, sexo, domicilio, sueldobasico)
				values('Juan Perez', '223334444', 'm', 'Sarmiento 123', 500);
insert into empleados(nombre, documento, sexo, domicilio, sueldobasico)
				values('Ana Acosta', '24555666', 'f', 'Colón 123', 650);
insert into empleados(nombre, documento, sexo, domicilio, sueldobasico)
				values('Bartolomé Barrios', '2788899999', 'm', 'Urquiza 479', 800);

-- Mostrar todos los registros
select * 
from empleados;