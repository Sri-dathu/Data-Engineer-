select top 50* from orders;

--schema
EXEC sp_help  'dbo.orders'

--Question.1
/*Find the top 10 most expensive shipments.

Conditions:

Freight should be greater than 50.
ShipCountry should NOT be 'USA'.
Orders must have been shipped.
Sort by Freight (highest first).
If two orders have the same Freight, show the most recently shipped first.
*/

select top 10
Orderid,
CustomerID,
freight,
ShipCountry,
ShippedDate from orders
where freight>50 and ShipCountry <> 'USA' and ShippedDate is not null
order by freight desc ,shippeddate  desc;

--Question.2
/*
Find all customers who

placed orders in 1997
but NOT during January.
Freight must be between 30 and 100.
ShipCity should start with 'S' or 'L'.
Sort by CustomerID ascending and OrderDate descending.*/

select 
	CustomerID,
	OrderID,
	OrderDate,
	ShipCity,
	Freight
from  orders
where year(orderdate)=1997 and 
	  month(orderdate)<>1 and 
	  freight between 30 and 100 and 
	  shipcity like '[sl]%'
order by customerid asc ,orderdate desc;

--Question.3
/*
Find orders where

RequiredDate is earlier than ShippedDate
(Late deliveries)

AND

Freight is greater than the average Freight of ALL orders.

Sort by

Delay (largest first)
Freight (highest first)

Display*/

select 
	OrderID,
	CustomerID,
	OrderDate,
	RequiredDate,
	ShippedDate,
	Freight,
	datediff(day,requireddate,ShippedDate) as  DelayInDays
from orders 
where shippeddate>RequiredDate and
	  freight>(select avg(freight) from orders)
order by 
DelayInDays desc ,Freight desc;


--Question 4
/*Return all orders whose Freight belongs to the Top 5 distinct Freight values.*/

select top 5
	Freight,
	OrderID,
	CustomerID
from orders
where freight in (
	select DISTINCT top 5 Freight 
	from orders 
	order by freight desc
	)
order by freight desc,orderid asc;


