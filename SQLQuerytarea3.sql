
USE Northwind

---ejercicio1---
SELECT  LastName,FirstName,HireDate,title,country From Employees
where Title = 'Sales Representative' and Country ='USA'
----ejercicio2----
Select Productid,productname as productchocolate ,*from Products
where ProductName ='Chocolade'
----ejercicio3----
Select *from Orders
where ShipCountry in('France','Germany','Brazil')
----ejercicio4----
Select count(*) as totalcustomer from Customers
----ejercicio5----
Select Country from Customers
group by Country
----ejercicio6----
select* from Products;
select *from Suppliers
Select distinct productId,productname,CompanyName from Products
as p 
inner join Suppliers as s on
p.ProductID=s.SupplierID
order by ProductID
----ejercicio7----
select ProductName,ReorderLevel,UnitsInStock,*from Products
where UnitsInStock<ReorderLevel
----ejercicio8----
select (UnitsInStock+UnitsOnOrder) as suma, ProductName,UnitsInStock,UnitsOnOrder,
ReorderLevel,Discontinued from Products where UnitsInStock+UnitsOnOrder <=ReorderLevel
----ejercicio9----
Select *from Products
where UnitPrice between 15.00 and 25.00
----ejercicio10----
Select *from Suppliers
where Fax is Null
----ejercicio11----
select *from orders
Select SUM(freight+1)/830 as promediototal from Orders
----ejercicio12----
select *from Customers
update Customers
set ContactName='LUIS DANIEL MEJIA VALLADARES'
WHERE ContactName='Roland Mendel'
----ejercicio13----
select *from Customers
alter table customers drop constraint Customers
ALTER TABLE customers ADD CONSTRAINT fk_customers_order FOREIGN KEY (CustomerId) REFERENCES orders (customerid) ON DELETE CASCADE 
DELETE  from Customers  where CustomerID='WOLZA'
----ejercicio14----
select *from Products
select MAX(unitprice) from Products
select MIN(unitprice) from Products
