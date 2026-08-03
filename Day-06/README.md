# SQL Server – Subqueries & Common Table Expressions (CTEs)



---

# Database

- **Database:** Northwind
- **DBMS:** Microsoft SQL Server (SSMS)

---

# Tables Used

## Customers

```sql
Customers
---------
CustomerID      (PK)
CompanyName
ContactName
ContactTitle
Address
City
Region
PostalCode
Country
Phone
Fax
```

---

## Orders

```sql
Orders
------
OrderID         (PK)
CustomerID      (FK)
EmployeeID
OrderDate
RequiredDate
ShippedDate
ShipVia
Freight
ShipName
ShipAddress
ShipCity
ShipRegion
ShipPostalCode
ShipCountry
```



# 1. Subquery

## Definition

A **Subquery** is a query written inside another SQL query. The inner query executes first, and its result is used by the outer query.

### Syntax

```sql
SELECT column_name
FROM table_name
WHERE column_name operator
(
    SELECT column_name
    FROM table_name
);
```

---

# Types of Subqueries

- Scalar Subquery
- Multiple Row Subquery
- Multiple Column Subquery
- Nested Subquery
- Correlated Subquery

---

# 2. Correlated Subquery

## Definition

A **Correlated Subquery** is a subquery that depends on values from the outer query. Unlike a normal subquery, it executes once for every row processed by the outer query.

### Syntax

```sql
SELECT column_name
FROM table1 t1
WHERE EXISTS
(
    SELECT 1
    FROM table2 t2
    WHERE t2.column = t1.column
);
```

---

# 3. Common Table Expression (CTE)

## Definition

A **Common Table Expression (CTE)** is a temporary named result set that exists only during the execution of a single SQL statement. It improves readability and simplifies complex queries.

### Syntax

```sql
WITH CTE_Name (column1, column2, ...)
AS
(
    SELECT ...
    FROM ...
)
SELECT *
FROM CTE_Name;
```

---

# Concepts Practiced

- Derived Tables
- Nested Subqueries
- Scalar Subqueries
- Correlated Subqueries
- CTEs
- Aggregation
- GROUP BY
- HAVING
- Joins with CTE
- Filtering Aggregated Data

---

# Tutorials

### Microsoft SQL Server (TutorialsPoint)

https://www.tutorialspoint.com/ms_sql_server/index.html

### Common Table Expression (CTE)

https://www.tutorialspoint.com/sql/sql-common-table-expression.htm

### SQL Subqueries

https://www.tutorialspoint.com/sql/sql-sub-queries.htm

---

# Practice Database

- Northwind

Tables Used

- Customers
- Orders

---

# Topics Completed

- Subqueries
- Nested Subqueries
- Correlated Subqueries
- Common Table Expressions (CTEs)

---