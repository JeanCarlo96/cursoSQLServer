use bd1;

-- Operadores Relacionales (o de comparación)
-- =	igual
-- <>	distinto
-- >	mayor
-- <	menor
-- >=	mayor o igual
-- <=	menor o igual

-- Mostramos la estructura de la tabla
exec sp_columns libros;

-- Seleccionar todos los registros
select *
from libros;

-- Seleccionamos los registros cuyo autor sea diferente de Borges
select *
from libros
where autor <> 'Borges';

-- Mostrar títulos y precios de los libros cuyos precios sean mayor a 20
select titulo, precio
from libros
where precio > 20;
