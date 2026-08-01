--Subqurries and CTEs
use Northwind;
go 
select top 50* from customers;
select top 50* from orders;

--NOTE:Refere Questions on Subqueries and CTEs in Readme file for better understanding of the querries.
--Question.1

with aboveavgfreight(customerid,companyname,torders,tfreight) as
(
		select c.customerid,
			   c.CompanyName,
			   count(o.orderid),
			   sum(o.freight) 
			from Customers c join orders o
			on c.CustomerID=o.CustomerID 
			group by c.CustomerID,c.CompanyName
			) 

select customerid,
	   companyname,
	   torders,
	   tfreight
	   from  aboveavgfreight
where tfreight>(
				select avg(tfreight)
				from aboveavgfreight)
order by tfreight desc;


--Question.2
 with topcustomer as (


select c.customerid as cid,c.country cty,count(o.OrderID) totalorders
from Customers c join Orders o
on c.CustomerID=o.CustomerID
group by c.CustomerID,c.Country

)

select t.cty,
	   t.cid,
	   cst.companyname,
	   t.totalorders

from customers cst join topcustomer t 
on cst.CustomerID=t.cid
	where totalorders=(
				select  max(totalorders) from topcustomer t2
				where t2.cty=t.cty
				)

order by t.cty;


--Question.3
--Tables used
select top 50* from Products
select top 50* from Categories
select top 50* from [Order Details];
go

--Querry
with sellproduct as
			( select p.productid pid,
					 p.productname pname ,
					 p.CategoryID as cid,
					 c.categoryname
			from products p join categories c
			on p.CategoryID=c.CategoryID
),
calavg as (
				select  s.pid,
						s.pname,
						s.cid,
						s.CategoryName,
					   sum(od.quantity) as totalquntity
				from 
				sellproduct s join [order details] od on s.pid=od.productid
				group by        s.pid,
        s.pname,
        s.cid,
        s.CategoryName
				)
select a.pid,
	   a.pname,
	   a.categoryname,
	   a.totalquntity
from  sellproduct s join calavg a on s.pid=a.pid 

	   where totalquntity>(select avg(a2.totalquntity) from calavg a2
	   where a2.cid=a.cid
	   )

	  
order by categoryname,a.totalquntity desc;



			
--Question.4

--Tables used
select top 50* from customers
select top 50* from orders;

--querry
with cte_consorder as
(			
	select c.customerid cid,
		   c.companyname cmp,
		   year(o.orderdate) od
		   from customers c join orders o on c.CustomerID=o.CustomerID
		   group by
		   c.customerid,
		   c.companyname,
		   year(o.orderdate)
)
select distinct t.cid,
	   t.cmp
from cte_consorder t
where exists (
				select 1 from cte_consorder t2
				where t2.cid=t.cid and t2.od=t.od+1
				)


--Question.5

--Tables used 

select top 10* from Employees
select top 10* from orders
select top 10* from [Order Details]
go

--Querry

with customervalue as
(
    select
        o.customerid,
        sum(od.unitprice * od.quantity * (1 - od.discount)) as totalvalue
    from orders o
    join [order details] od
        on o.orderid = od.orderid
    group by o.customerid
),

highvaluecustomer as
(
    select
        customerid,
        totalvalue
    from customervalue
    where totalvalue >
    (
        select avg(totalvalue)
        from customervalue
    )
)

select
    e.employeeid,
    e.firstname + ' ' + e.lastname as employeename,
    count(distinct h.customerid) as highvaluecustomershandled
from employees e
join orders o
    on e.employeeid = o.employeeid
join highvaluecustomer h
    on o.customerid = h.customerid
group by
    e.employeeid,
    e.firstname,
    e.lastname
having count(distinct h.customerid) >= 3
order by highvaluecustomershandled desc;



		