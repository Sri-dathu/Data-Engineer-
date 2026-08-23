-->Kpis for each table (Key performance Indicators)

-->Sales & Orders
select *from orders;

SELECT
    SUM(TotalAmount) AS total_revenue,
    ROUND(AVG(TotalAmount),2) AS avg_order_value,
    ROUND(SUM(CASE WHEN Status = 'Delivered' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS fulfillment_rate_pct,
    ROUND(SUM(CASE WHEN Status IN ('Cancelled','Returned') THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS cancellation_rate_pct
FROM orders;

-->>Output:Shows Total revenu generate from orders cancelliation rate and succefulll payemnt rate

--Inventory--Total Storage Cost by warehouse

SELECT Warehouse, COUNT(*) AS products_below_reorder
FROM inventory
WHERE QuantityAvailable < ReorderLevel
GROUP BY Warehouse;

--Suppliers (Average Supplier Rating and  Suppliers by Category)

SELECT *from SUPPLIERS;
SELECT C3 as Category, ROUND(AVG(try_to_number(c7)),2) AS avg_rating, COUNT(*) AS supplier_count
FROM suppliers
GROUP BY c3
ORDER BY avg_rating DESC;

--Payments Payment Success Rate Revenue by Payment Mode Failed/Pending Payment Value

SELECT
    Status,
    COUNT(*) AS txn_count,
    SUM(Amount) AS total_amount
FROM payments
GROUP BY Status;

