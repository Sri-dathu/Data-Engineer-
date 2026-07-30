select top 10* from  orders


--Agreegating Functions and Group by Functions
select count(*) as Totalcount,
	   max(Freight) as max_amount,
	   min(freight) as Min_amount,
	   sum(freight) as Total_Sum,
	   avg(freight) as Avg_amount
from orders;

--unique records
select distinct top 10 
shipcountry from orders

--group by 
select top 10 
customerid,shipcountry,max(Freight) as Freight from orders
group by ShipCountry,CustomerID
order by Freight desc;


--Question.1
/*Generate a summary report for customers based on their orders.

Requirements

For each CustomerID:

Count the total number of orders.
Calculate:
Total Freight
Average Freight
Maximum Freight
Minimum Freight
Find the first order date.
Find the last shipped date.
Only include customers who:
Have placed at least 5 orders.
Have an average Freight greater than 40.
Display the average Freight rounded to 2 decimal places.
Sort by:
Average Freight (Descending)
Total Orders (Descending)
*/

select 
	CustomerID,
	count(*) as TotalOrders,
	sum(freight) as  TotalFreight,
	round(avg(freight),2) as AverageFreight,
	max(freight) as HighestFreight,
	min(freight) as LowestFreight,
	min(orderdate) as FirstOrder,
	max(shippeddate) as LastShipment
from orders
group by customerid
having count(*)>=5 and avg(freight)>40
order by AverageFreight desc ,TotalOrders desc;


--Question.2

/*Analyze shipments country-wise.

Requirements

For each ShipCountry:

Count total shipped orders only.
Calculate:
Total Freight
Average Freight
Highest Freight
Lowest Freight
Calculate the average delivery delay in days.

Delay = DATEDIFF(DAY, OrderDate, ShippedDate)

Only include countries where:

Total shipped orders ≥ 10
Average delivery delay > 5 days
Total Freight > 1000

Round:

Average Freight → 2 decimals
Average Delay → 1 decimal

Sort by:

Total Freight (Descending)
Average Delay (Descending)
*/

select 
	ShipCountry,
	count(*) as TotalOrders,
	sum(freight) as  TotalFreight,
	round(avg(freight),2) as AverageFreight,
	max(freight) as HighestFreight,
	min(freight) as LowestFreight,
	round(avg(DATEDIFF(day,orderdate,shippeddate)),1) as averagedelay
from orders 
group by shipcountry 
having count(*)>=5 and (avg(DATEDIFF(day,orderdate,shippeddate))) >5 and sum(freight)>1000
order by TotalFreight desc,averagedelay desc;

