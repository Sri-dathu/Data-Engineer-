select top 20* from products;

--get the details of top 2 products with max price

select top 2 
productid,productname,unitprice
from products
order by unitprice DESC;

--Basic Filterning

select top 20* from [Order Details];

select  orderid,discount
from [Order Details]
where Quantity>20;


--from employees table get the details of employees whose first name starts with 'A' and last name not  starts with 'l'
SELECT TOP 10
FirstName + ' ' + Lastname as name 
from dbo.employees
where country like 'USA' and city not like 'l%'
order by EmployeeID asc;




