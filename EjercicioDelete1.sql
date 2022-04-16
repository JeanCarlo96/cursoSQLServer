use bd1;

-- Verificamos si la tabla existe
if object_id('agenda') is not null
	-- Eliminamos la tabla
	drop table agenda;

-- Creamos la tabla
create table agenda(
	apellido		varchar(30),
	nombre			varchar(20),
	domicilio		varchar(30),
	telefono		varchar(11)
);

-- Ingresando Datos
insert into agenda (apellido, nombre, domicilio, telefono)
			values('Alvarez', 'Alberto', 'Colon 123', '4234567');
insert into agenda (apellido, nombre, domicilio, telefono)
			values('Juarez', 'Juan', 'Avellaneda 135', '4458787');
insert into agenda (apellido, nombre, domicilio, telefono)
			values('Lopez', 'Maria', 'Urquiza 333', '4545454');
insert into agenda (apellido, nombre, domicilio, telefono)
			values('Lopez', 'Jose', 'Urquiza 333', '4545454');
insert into agenda (apellido, nombre, domicilio, telefono)
			values('Salas', 'Susana', 'Gral. Paz 1234', '4123456');

-- Elimine el registro cuyo nombre sea 'Juan' (1 registro afectado)
delete agenda
where nombre = 'Juan';

-- Mostrar los datos restantes
select *
from agenda;

-- Elimine los registros cuto nombre número telefónico sea igual a '4545454' (2 registros afecatados)
delete agenda
where telefono = '4545454';

-- Mostrar los datos resultantes
select *
from agenda;

-- Elmine todos los registros
delete from agenda;

-- Mostrar los datos restantes
select *
from agenda;