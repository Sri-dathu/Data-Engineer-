# SQL Server – GROUP BY & Aggregate Functions Practice


The goal of this practice is to strengthen SQL fundamentals and prepare for technical interviews by solving real-world aggregation and grouping problems.

---

# Dataset

**Database:** Northwind

**Table Used:** `Orders`

Dataset Reference:
- https://github.com/microsoft/sql-server-samples/tree/master/samples/databases/northwind-pubs

---

# Topics Covered

## Aggregate Functions

Aggregate functions perform calculations on a set of rows and return a single value.

The aggregate functions covered in this practice are:

- `COUNT()`
- `SUM()`
- `AVG()`
- `MIN()`
- `MAX()`
- `ROUND()`

### Examples

```sql
COUNT(*)

SUM()

AVG()

MIN()

MAX()

distinct()
```

---

# GROUP BY

The `GROUP BY` clause groups rows that have the same values into summary rows.

It is commonly used with aggregate functions to calculate statistics for each group.

Example:

```sql
SELECT
    //
FROM tablename
GROUP BY //;
```

The above query groups all records by `CustomerID` and counts the number of orders placed by each customer.

---

# HAVING Clause

The `HAVING` clause filters groups after aggregation.

Unlike `WHERE`, which filters individual rows before grouping, `HAVING` filters the grouped results.

--Syntax:

```sql
SELECT
    //
FROM tablename
GROUP BY //
HAVING condition;
```

Only customers having at least five orders will be displayed.

---

# WHERE vs HAVING

| WHERE | HAVING |
|--------|---------|
| Filters individual rows | Filters grouped rows |
| Executed before GROUP BY | Executed after GROUP BY |
| Cannot use aggregate functions | Can use aggregate functions |

Example:

```sql
WHERE ShippedDate IS NOT NULL
```

Filters rows before grouping.

Example:

```sql
HAVING AVG(Freight) > 40
```

Filters groups after aggregation.

---

# Practice Problems

## Problem 1 – Customer Order Statistics

Generate a customer-wise summary report.

Requirements:

- Count total orders
- Calculate:
  - Total Freight
  - Average Freight
  - Highest Freight
  - Lowest Freight
- Find the first order date
- Find the last shipped date
- Include customers who:
  - Have placed at least 5 orders
  - Have an average Freight greater than 40
- Round average Freight to two decimal places
- Sort by:
  1. Average Freight (Descending)
  2. Total Orders (Descending)

---

## Problem 2 – Country Shipping Analysis

Generate country-wise shipment statistics.

Requirements:

- Consider only shipped orders
- Count total shipped orders
- Calculate:
  - Total Freight
  - Average Freight
  - Highest Freight
  - Lowest Freight
- Calculate average delivery delay using:

```sql
DATEDIFF(DAY, OrderDate, ShippedDate)
```

Include only countries where:

- Total shipped orders ≥ 10
- Average delivery delay > 5 days
- Total Freight > 1000

Round:

- Average Freight → 2 decimal places
- Average Delay → 1 decimal place

Sort by:

1. Total Freight (Descending)
2. Average Delay (Descending)

---

# Concepts Practiced

- Aggregate Functions
- GROUP BY
- HAVING
- WHERE
- COUNT()
- SUM()
- AVG()
- MIN()
- MAX()
- ROUND()
- DATEDIFF()
- Aggregate Aliases
- Filtering Before Grouping
- Filtering After Grouping
- Sorting Aggregated Results

---

# Learning Resources

### SQL Server Functions

https://www.sqlservertutorial.net/sql-server-functions/

### SQL Server GROUP BY

https://www.sqlservertutorial.net/sql-server-basics/sql-server-group-by/

---

# Practice Source

In addition to these custom interview-style questions, I also solved aggregation and grouping challenges from **HackerRank SQL** to reinforce the concepts and improve problem-solving skills.

---

# Learning Outcome

After completing this practice, I gained hands-on experience with:

- Using aggregate functions effectively
- Grouping data for reporting
- Filtering grouped data with HAVING
- Understanding the execution order of SQL queries
- Writing interview-level SQL aggregation queries
- Generating analytical reports using GROUP BY

---

## Difficulty

**Intermediate → Advanced (Interview Level)**

Designed for practice before SQL Developer, Data Analyst, Business Intelligence, and Backend Developer interviews.