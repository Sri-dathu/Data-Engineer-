--Subqurries and CTEs
use Northwind;
go
--Subquries 

select top 50* from customers;
select top 50* from orders;


--Question.1

/*Customers with Above Average Freight

Find all customers whose average freight is greater than the overall average freight of all orders.

Requirements
Use a subquery.
Display:
CustomerID
CompanyName
Number of Orders
Average Freight
Sort by Average Freight (Descending).
*/

select c.customerid,
	   c.companyname,
	   count(o.orderid) as Totalorders,
	   avg(freight) as averagefreight
from Customers c
join orders o
on c.CustomerID=o.CustomerID
group by c.CustomerID,c.CompanyName
having avg(freight)>(select avg(freight) from orders)
order by averagefreight desc;

--Question.2
/*Customers Who Placed the Maximum Number of Orders

Find the customer(s) who placed the highest number of orders.

Requirements

Display:

CustomerID
CompanyName
Total Orders

Note: Multiple customers may tie for the highest count.*/


select customerid,
	   companyname,
	   totorders
from (
		select c.CustomerID,
			   c.companyname,
			   count(o.orderid) as totorders
		from Customers c
		join Orders o on c.CustomerID=o.CustomerID
		group by c.CustomerID,c.CompanyName
		) as maxorders
where totorders=(select max(totorders) from 
	( select count(orderid) as totorders
	from orders 
	group by customerid) as ordercounts
);


--CTE..COMMON TABLE EXP

--Question.1

/*Using a Common Table Expression (CTE), calculate the total number of orders and total freight for each customer.

From the CTE, display only customers who:

Placed at least 10 orders
Total Freight exceeds 500
*/


with totalorders(customerid,torders,tfreight)
as(
	select customerid,count(orderid) 
	,sum(freight) 
	from Orders
	group by CustomerID
	)
select c.customerid,
	   c.companyname,
	   t.torders,
	   t.tfreight
from customers c  join  totalorders t
on c.customerid=t.customerid

where t.torders>10 and t.tfreight>500



