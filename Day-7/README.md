# Advanced SQL Practice – CTEs & Subqueries (Northwind)

## Database

- **Database Name:** Northwind
- **Database:** Microsoft SQL Server

### Reference Links

- Northwind Database (Microsoft):  
  https://github.com/microsoft/sql-server-samples/tree/master/samples/databases/northwind-pubs

- T-SQL Documentation:  
  https://learn.microsoft.com/en-us/sql/t-sql/

- Common Table Expressions (CTE):  
  https://learn.microsoft.com/en-us/sql/t-sql/queries/with-common-table-expression-transact-sql

- Subqueries (SQL Server):  
  https://learn.microsoft.com/en-us/sql/relational-databases/performance/subqueries

---

# Tables Used

## Customers

| Column | Data Type |
|---------|-----------|
| CustomerID | nchar(5) |
| CompanyName | nvarchar(40) |
| ContactName | nvarchar(30) |
| ContactTitle | nvarchar(30) |
| Address | nvarchar(60) |
| City | nvarchar(15) |
| Region | nvarchar(15) |
| PostalCode | nvarchar(10) |
| Country | nvarchar(15) |
| Phone | nvarchar(24) |
| Fax | nvarchar(24) |

---

## Orders

| Column | Data Type |
|---------|-----------|
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

## Order Details

| Column | Data Type |
|---------|-----------|
| OrderID | int |
| ProductID | int |
| UnitPrice | money |
| Quantity | smallint |
| Discount | real |

---

## Products

| Column | Data Type |
|---------|-----------|
| ProductID | int |
| ProductName | nvarchar(40) |
| SupplierID | int |
| CategoryID | int |
| QuantityPerUnit | nvarchar(20) |
| UnitPrice | money |
| UnitsInStock | smallint |
| UnitsOnOrder | smallint |
| ReorderLevel | smallint |
| Discontinued | bit |

---

## Categories

| Column | Data Type |
|---------|-----------|
| CategoryID | int |
| CategoryName | nvarchar(15) |
| Description | ntext |
| Picture | image |

---

## Employees

| Column | Data Type |
|---------|-----------|
| EmployeeID | int |
| LastName | nvarchar(20) |
| FirstName | nvarchar(10) |
| Title | nvarchar(30) |
| TitleOfCourtesy | nvarchar(25) |
| BirthDate | datetime |
| HireDate | datetime |
| Address | nvarchar(60) |
| City | nvarchar(15) |
| Region | nvarchar(15) |
| PostalCode | nvarchar(10) |
| Country | nvarchar(15) |
| HomePhone | nvarchar(24) |
| Extension | nvarchar(4) |
| Notes | ntext |
| ReportsTo | int |
| PhotoPath | nvarchar(255) |

---

# Practice Questions

## Question 1

Find all customers whose **total freight paid** is greater than the **average total freight paid by all customers**.

**Display:**

- CustomerID
- CompanyName
- TotalOrders
- TotalFreight

Order the result by **TotalFreight** in descending order.

---

## Question 2

For every country, find the customer(s) who placed the **maximum number of orders**.

If multiple customers have the same highest number of orders in a country, display all of them.

**Display:**

- Country
- CustomerID
- CompanyName
- TotalOrders

---

## Question 3

For every product, calculate its **total quantity sold**.

Return only those products whose **total quantity sold** is greater than the **average total quantity sold** in their respective category.

**Display:**

- ProductID
- ProductName
- CategoryName
- TotalQuantitySold

Order the result by:

- CategoryName
- TotalQuantitySold (Descending)

---

## Question 4

Find customers who placed orders in **at least two consecutive years**.

**Display:**

- CustomerID
- CompanyName

Do not return duplicate customers.

---

## Question 5

A **high-value customer** is one whose **total order value** is greater than the **average customer order value**.

Find employees who have handled **at least three different high-value customers**.

**Display:**

- EmployeeID
- EmployeeName
- HighValueCustomersHandled

Order the result by **HighValueCustomersHandled** in descending order.