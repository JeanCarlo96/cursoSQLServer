--Comprobaci�n de que existe la tabla USUARIOS
if object_id('usuarios') is not null
	-- Borrar la tabla USUARIOS
	drop table usuarios;

-- Creaci�n de una tabla USUARIOS
create table usuarios(
	nombre	varchar(30),
	clave	varchar(10),
)

-- Procedimiento almacenado que muestra la estructura de la tabla USUARIOS
exec sp_columns usuarios;

