--WINDOW FUNCTIONS IN MS SQL

use Northwind;
Select top 10* from [order details]
go

--RANK window Function

select  top 50 orderid,productid ,RANK() over
(
    order by unitprice desc
   
) RANK_
from [order details]
go

--DENSE RANK FUNCTION 
select  top 50 orderid,productid ,dense_RANK() over
(
    order by unitprice desc
   
) DENSE_RANK_
from [order details]
go

--CUMMULATIVE DISTIBUTION
select  top 50 orderid,productid ,Cume_dist() over
(
    order by unitprice desc
   
) DENSE_RANK_
from [order details]
go

--First_VAlUE FUNCTION

select  top 50 orderid,productid ,first_value(ProductID) over
(
    order by quantity 
   
) firstval
from [order details]
go

--LAG
select  top 50 orderid,productid ,lag(UnitPrice,1) over
(
    order by unitprice
   
) firstval
from [order details]
go

--LEAD
select  top 50 orderid,productid ,lead(UnitPrice,1) over
(
    order by unitprice
   
) firstval
from [order details]
go

--Ntile Function

select  orderid,Ntile(1000) over
(
    order by orderid
   
) buckets
from [order details]
go

--ROW_NUMBER 
select  orderid,row_number() over
(
    order by orderid
   
) rownumber
from [order details]
go