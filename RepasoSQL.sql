use Northwind;

-- Select * From
select *
from Orders;

select OrderId, CustomerID, ShipCity
from Orders;

-- Where
select *
from Customers
where CompanyName like 'B%';

-- Order by
select *
from Customers
where CompanyName like 'B%'
order by ContactName desc;

-- Group by
-- Contar cuantos productos tiene cada SupplierID
select *
from Products;

select SupplierID, COUNT(SupplierID) as Cantidad
from Products
group by SupplierID
order by Cantidad;

select *
from Customers;

select ContactTitle, COUNT(ContactTitle) as Cantidad
from Customers
group by ContactTitle
order by Cantidad desc;

-- Having
-- Después del group by
select *
from [Order Details];

select OrderID, COUNT(OrderID) as Cantidad
from [Order Details]
group by OrderID
-- having COUNT(OrderID) > 2;
having COUNT(*) > 2
order by Cantidad desc;

-- Subconsultas con Where
select *
from Products;

select *
from Categories;

select *
from [Order Details];

select * 
from Suppliers;

select ProductID, ProductName, CategoryID, 
		(select CategoryName from Categories
		where CategoryID = Products.CategoryID) as Categoria,
		(select CompanyName from Suppliers
		where SupplierID = Products.SupplierID) as [Proveedor A],
		(select SUM(UnitPrice) from [Order Details]
		where SupplierID = Products.SupplierID) as Precio
from Products
order by ProductID;


select *
from Territories;

select *
from Region;

select TerritoryDescription, 
		(select RegionDescription
		from Region
		where RegionID = Territories.RegionID) as Territorio
from Territories
order by Territorio;

-- Joins
select Products.ProductID, ProductName, Products.CategoryID, 
		Categories.CategoryName as Categoria, Suppliers.CompanyName as [Proveedor A], 
		SUM([Order Details].UnitPrice) as Precio
from Products	join Categories on Products.CategoryID = Categories.CategoryID
				join Suppliers on Products.SupplierID = Suppliers.SupplierID
				join [Order Details] on Products.ProductID = [Order Details].ProductID
group by Products.ProductID, ProductName, Products.CategoryID, Categories.CategoryName,
		 Suppliers.CompanyName
order by Products.ProductID;