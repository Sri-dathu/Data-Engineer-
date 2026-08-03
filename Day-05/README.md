# SQL Server Joins
---


##  Practice Questions

The following advanced problems were solved during this practice session.

### Problem 1 – High Value Orders

Retrieve orders whose total order value exceeds a specified amount.

**Concepts Practiced**

- INNER JOIN
- SUM()
- COUNT()
- GROUP BY
- HAVING
- ORDER BY
- Calculated Columns

---

### Problem 2 – Customer Purchase Analysis

Generate customer purchase statistics including total spending, average order value, highest order value, and total quantity purchased.

**Concepts Practiced**

- INNER JOIN
- Nested Aggregation
- Derived Tables
- GROUP BY
- Aggregate Functions

---

### Problem 3 – Top Performing Customers by Year

Generate yearly customer sales reports showing total sales, average discounts, order count, and average order value.

**Concepts Practiced**

- INNER JOIN
- YEAR()
- Derived Tables
- GROUP BY
- HAVING
- Multi-level Aggregation
- Business Reporting Queries

---

## Tables Used

### Orders

Primary Key

- OrderID

Important Columns

- OrderID
- CustomerID
- EmployeeID
- OrderDate
- RequiredDate
- ShippedDate
- Freight

---

### Order Details

Primary Key

- (OrderID, ProductID)

Foreign Key

- OrderID → Orders.OrderID

Important Columns

- ProductID
- UnitPrice
- Quantity
- Discount

---

## Concepts Covered

- INNER JOIN
- Primary Key & Foreign Key Relationships
- Aggregate Functions
- GROUP BY
- HAVING
- Derived Tables
- Calculated Columns
- YEAR()
- COUNT(DISTINCT)
- Business Reporting Queries
- Sorting Aggregated Results

---

## Dataset

**Database:** Northwind

**Tables Used**

- Orders
- Order Details

---

## Learning Resources

### SQL Server JOINs

https://www.sqlservertutorial.net/sql-server-basics/sql-server-joins/

---

## Practice Platform

- Northwind Sample Database
- SQL Server Management Studio (SSMS)

---

## Learning Outcome

After completing this practice, I gained experience in:

- Understanding table relationships using Primary Keys and Foreign Keys.
- Retrieving data from multiple related tables using INNER JOIN.
- Writing complex reporting queries involving multiple aggregations.
- Using derived tables to simplify advanced SQL problems.
- Solving interview-oriented SQL JOIN questions with proper optimization and readability.

---
