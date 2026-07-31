--SQL Joins
use Northwind;
--view records inside the table
select top 10* from Orders;
select top 10* from [Order Details];


--Question 1

/*High Value Orders

Find all orders whose actual order value is greater than 3000.

Actual Order Value =

SUM(UnitPrice × Quantity × (1 - Discount))
Requirements
Join Orders and Order Details
Calculate:
Number of different products
Total quantity purchased
Actual order value
Show only orders having order value > 3000
Sort by:
Actual Order Value (Highest first)
OrderDate (Newest first)

*/
select c.orderid,
	   c.customerid,
	   c.orderdate,
	   count(p.ProductID) as totalproducts,
	   sum(p.quantity) as totalqunatity,
	   sum(p.unitprice*p.quantity*(1-p.discount)) as actualordervalue
from Orders c 
join [Order Details] p
on c.OrderID=p.OrderID
GROUP BY
    c.OrderID,
    c.CustomerID,
    c.OrderDate
having  sum(p.unitprice*p.quantity*(1-p.discount))>3000
order by actualordervalue desc, c.OrderDate desc

--question 2

/*Customer Purchase Analysis

Generate a report for every customer.

Requirements

Join

Orders
Order Details

Calculate

Total Orders
Total Quantity Purchased
Total Amount Spent
Average Order Value
Highest Single Order Value

Show only customers who

Placed at least 8 orders
Spent more than 5000
Purchased more than 150 items

Sort by

Total Amount Spent
Total Orders

*/
select
    customerid,
    count(*) as totalorders,
    sum(totalquantity) as totalquantitypurchased,
    sum(ordervalue) as totalamountspent,
    avg(ordervalue) as averageordervalue,
    max(ordervalue) as highestsingleordervalue
from
(
    select
        c.customerid,
        c.orderid,
        sum(p.quantity) as totalquantity,
        sum(p.unitprice * p.quantity * (1 - p.discount)) as ordervalue
    from orders c
    join [order details] p
        on c.orderid = p.orderid
    group by
        c.customerid,
        c.orderid
) as ordersummary
group by customerid
having
    count(*) > 8
    and sum(ordervalue) > 5000
    and sum(totalquantity) > 150
order by
    totalamountspent asc,
    totalorders asc;


--Question.3
/*Generate a yearly customer sales report.

Requirements

Join

Orders
Order Details

For every

CustomerID
Year

calculate

Number of Orders
Total Quantity Purchased
Total Sales
Average Discount Given
Average Order Value

Only include groups where

Number of Orders ≥ 5
Total Sales > 4000

Round

Total Sales → 2 decimal places
Average Discount → 2 decimal places
Average Order Value → 2 decimal places

Sort by

Sales Year
Total Sales (Descending)*/


select 
    year(orderdate) as salesyear,
    customerid,
    count(orderid) totalorders,
    sum(qty) as totalquantity,
    round(sum(ordervalue),2) as totalsales,
    round(avg(dis),2) as averagediscount,
    round(avg(ordervalue),2) as averageordervalue
from(
    
    select c.orderid,
    c.orderdate,
    c.customerid,
    sum(p.quantity) as qty,
    avg(p.discount) as dis,
    sum(p.unitprice * p.quantity * (1 - p.discount)) as ordervalue
    
    from orders c 
    join [order details] p on 
    p.orderid=c.orderid
    group by c.customerid,c.orderid,c.orderdate
)as summary
group by [CustomerID],YEAR(OrderDate)
having count(orderid)>5 and sum(ordervalue)>4000
order by salesyear asc, totalsales desc;

