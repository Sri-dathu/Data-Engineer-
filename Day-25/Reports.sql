-->Summary Reports...

use database SNOWFLAKE_PRACTISE;
show tables


select *from orders;

-->the abbove data set is been loaded from Amazon S3

-->KPIs-- for a table


select employeeid,sum(Quantity) as Total_Quantity,sum(totalamount) as total_Amount_Spend
from ORDERS
group by employeeid
order by total_Amount_Spend desc;

-- Reports for Account usage

-->total warehouses
SELECT distinct warehouse_name FROM snowflake.account_usage.warehouse_metering_history; 

-->Total Excecution Count
SELECT distinct count(query_id) 
FROM snowflake.account_usage.query_history; -->Total 20696 Querries are executed

-->use snowflake schema

show databases;

-->Credit consumptiom
SELECT warehouse_name, sum(credits_used) 
FROM snowflake.account_usage.warehouse_metering_history 
GROUP BY 1;

