--Northwind Database


use Northwind;
go 
-- Schema of a table..
Exec sp_help "dbo.Customers";
go

-- Select Statments to view records inside the table
select top 10 CustomerID,ContactName,City
from dbo.Customers;
go

-- Select TOP PERSENT

select top 1 Percent* from dbo.Customers;
go

--Select Distinct Records from customer table
SELECT distinct top 10*
from dbo.Customers