-- Base de datos
use Northwind;

-- Mostrando las tablas relacionadas a utilizar
select * from Suppliers;
select * from Products;

-- Join (inner join)
select s.CompanyName, p.ProductName
from Suppliers s
join Products p on s.SupplierID = p.SupplierID;

-- Left Join: Se muestra todos los elementos que tienen la tabla A, pero no aparecen los que no tienen match de la tabla B
select *
from Suppliers s
left join Products p on s.SupplierID = p.SupplierID;

-- Right Join: Se muestra todos los elementos que tienen la tabla B, pero no aparecen los que no tienen match en la tabla A
select *
from Suppliers s
right join Products p on s.SupplierID = p.SupplierID;

-- Full Join: Muestra todos los datos de ambas tablas así no tengan un match
select *
from Suppliers s
full join Products p on s.SupplierID = p.SupplierID;
