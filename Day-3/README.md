# SQL Practice – Filtering & Sorting (Interview Level)

#Reference links
https://www.sqlservertutorial.net/sql-server-basics/sql-server-where/
https://www.sqlservertutorial.net/sql-server-basics/sql-server-order-by/




## Database

**Northwind**

## Table: Orders

| Column Name | Data Type |
|-------------|-----------|
| OrderID | int |
| CustomerID | nchar(5) |
| EmployeeID | int |
| OrderDate | datetime |
| RequiredDate | datetime |
| ShippedDate | datetime |
| ShipVia | int |
| Freight | money |
| ShipName | nvarchar(40) |
| ShipAddress | nvarchar(60) |
| ShipCity | nvarchar(15) |
| ShipRegion | nvarchar(15) |
| ShipPostalCode | nvarchar(10) |
| ShipCountry | nvarchar(15) |

---

# Question 1

## Find the Top 10 Most Expensive Shipments

### Requirements

- Freight should be greater than **50**.
- ShipCountry should **NOT** be **'USA'**.
- Order must have been shipped (`ShippedDate IS NOT NULL`).
- Sort by:
  1. Freight (Highest first)
  2. ShippedDate (Most recent first)

### Display

- OrderID
- CustomerID
- Freight
- ShipCountry
- ShippedDate

---

# Question 2

## Customers Ordering in 1997 (Excluding January)

### Requirements

Find all customers who:

- Placed orders in **1997**
- But **NOT** during **January**
- Freight must be between **30 and 100**
- ShipCity should start with **'S'** or **'L'**
- Sort by:
  1. CustomerID (Ascending)
  2. OrderDate (Descending)

### Display

- CustomerID
- OrderID
- OrderDate
- ShipCity
- Freight

---

# Question 3

## Late Deliveries Above Average Freight

### Requirements

Find orders where:

- ShippedDate is later than RequiredDate (Late Delivery)
- Freight is greater than the average Freight of all orders

Sort by:

1. Delay in Days (Largest first)
2. Freight (Highest first)

### Display

- OrderID
- CustomerID
- OrderDate
- RequiredDate
- ShippedDate
- Freight
- DelayInDays

---

# Question 4

## Orders with Top 5 Distinct Freight Values

### Requirements

Return **all orders** whose Freight belongs to the **Top 5 distinct Freight values**.

Example:

Freight values:

250, 250, 230, 210, 210, 180, 170

Top 5 distinct values are:

250, 230, 210, 180, 170

Return **every order** having one of those Freight values.

Sort by:

1. Freight (Descending)
2. OrderID (Ascending)

### Display

- OrderID
- CustomerID
- Freight

---

## Topics Covered

- WHERE
- AND / OR
- BETWEEN
- LIKE
- NOT LIKE
- IS NULL / IS NOT NULL
- ORDER BY
- DISTINCT
- TOP
- Aggregate Functions
- Subqueries
- DATEDIFF()
- Filtering
- Sorting

**Difficulty:** Intermediate → Advanced (SQL Server Interview Level)