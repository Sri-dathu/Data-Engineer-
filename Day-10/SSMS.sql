--Problems on Views, User Defined Functions and Stored Procedures
--Question 1

--Problem 1: Create a view that summarizes the total amount of each order along with the customer details.

select top 50* from orders
select top 50* from [order details]
go
--Query

CREATE VIEW vw_OrderSummary
AS
SELECT
    o.OrderID,
    c.CustomerID,
    c.CompanyName,
    c.Country,
    SUM(od.UnitPrice * od.Quantity * (1 - od.Discount)) AS TotalAmount
FROM Orders o
JOIN Customers c
    ON o.CustomerID = c.CustomerID
JOIN [Order Details] od
    ON o.OrderID = od.OrderID
GROUP BY
    o.OrderID,
    c.CustomerID,
    c.CompanyName,
    c.Country;
GO
--Output
select * from vw_OrderSummary
go

--problem 2: Create a user-defined function that categorizes orders based on their total amount.
--USER DEFINED FUNCTIONS

CREATE FUNCTION fn_OrderCategory
(
    @TotalAmount MONEY
)
RETURNS VARCHAR(20)
AS
BEGIN
    DECLARE @Category VARCHAR(20);

    IF @TotalAmount > 5000
        SET @Category = 'Premium';
    ELSE IF @TotalAmount >= 1000
        SET @Category = 'Standard';
    ELSE
        SET @Category = 'Basic';

    RETURN @Category;
END;
GO
--Output
select dbo.fn_OrderCategory(6000) as OrderCategory1,
       dbo.fn_OrderCategory(3000) as OrderCategory2,
       dbo.fn_OrderCategory(500) as OrderCategory3
GO

--problem 3: Create a stored procedure that retrieves orders for a specific country and categorizes them using the user-defined function.

--PROCEDURES AND TEMP TABLES

CREATE PROCEDURE usp_GetOrdersByCountry
    @Country VARCHAR(30)
AS
BEGIN

    CREATE TABLE #OrderTemp
    (
        OrderID INT,
        CompanyName NVARCHAR(100),
        TotalAmount MONEY
    );

    INSERT INTO #OrderTemp
    (
        OrderID,
        CompanyName,
        TotalAmount
    )
    SELECT
        OrderID,
        CompanyName,
        TotalAmount
    FROM vw_OrderSummary
    WHERE Country = @Country;

    SELECT
        CompanyName,
        OrderID,
        TotalAmount,
        dbo.fn_OrderCategory(TotalAmount) AS OrderCategory
    FROM #OrderTemp
    ORDER BY TotalAmount DESC;

END;
GO



--Question:2
--problem 1: Create a view that summarizes the total amount of each order along with the customer details.
--Qurey
Select * from Employees
select * from Orders
go
--View
create view employeeorders 
as 
select e.employeeid,
           e.firstname + ' ' + e.lastname as EmployeName,
           count(o.orderid) as TotalOrders
    from employees e left join Orders o on e.EmployeeID=o.EmployeeID
    group by e.EmployeeID,e.firstname + ' ' + e.lastname 
go
--output
select * from employeeorders
go

--problem 2: Create a user-defined function that calculates the total purchases made by each customer.
--USER DEFINED FUNCTION..

create function totalpurchases(
    @Purchase money
)
returns table
as 
return
(
    select
        c.customerid,
        c.companyname,
        sum(od.unitprice * od.quantity * (1 - od.discount)) as totalpurchase
    from customers c
    join orders o
        on c.customerid = o.customerid
    join [order details] od
        on o.orderid = od.orderid
    group by
        c.customerid,
        c.companyname
    having sum(od.unitprice * od.quantity * (1 - od.discount)) > @purchase
)
go

--output
select * from totalpurchases (2000);
 go 

--problem 3: Create a stored procedure that retrieves high-value customers based on a minimum purchase amount and includes the employee who handled their orders.  
--STORED PROCEDURES

create procedure highvalucustomers(
    @minvalue money
)as 
begin 
    create table #tempcustomer(
        customerid nchar(5),
        companyname nvarchar(40),
        totalpurchase money
    );
    insert into #tempcustomer
        select * from 
        dbo.totalpurchases(@minvalue);
    
    select distinct 
        h.companyname as CustomerName,
        h.totalpurchase,
        e.EmployeName,
        e.totalorders
    from #tempcustomer h
    join orders o
        on h.customerid=o.CustomerID
     join employeeorders e
        on o.EmployeeID=e.EmployeeID
    order by 
        h.totalpurchase Desc

    end
    go

--Running  Stored Procedure
Exec highvalucustomers 5000;



