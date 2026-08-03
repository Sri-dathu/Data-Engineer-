# Views, Stored Procedures, User-Defined Functions & Temporary Tables in SQL Server

## Database Used

**Northwind Database**

The Northwind sample database is used throughout this project to demonstrate SQL Server programming concepts such as Views, Stored Procedures, User-Defined Functions, and Temporary Tables.

---

# Views

A **View** is a virtual table created from the result of a SQL query. It stores only the query definition, not the actual data.

## Syntax

```sql
CREATE VIEW view_name
AS
SELECT
    column1,
    column2,
    ...
FROM table_name
WHERE condition;
GO
```

---

# Stored Procedures

A **Stored Procedure** is a precompiled collection of one or more SQL statements that can accept parameters and execute business logic.

## Syntax

```sql
CREATE PROCEDURE procedure_name
(
    @Parameter1 DataType,
    @Parameter2 DataType
)
AS
BEGIN

    SQL Statements

END;
GO
```

### Execute Procedure

```sql
EXEC procedure_name parameter_value;
```

---

# User-Defined Functions (UDF)

A **User-Defined Function** is a reusable database object that accepts parameters and returns a value or a table.

There are three types of User-Defined Functions in SQL Server.

---

# 1. Scalar Function

Returns a **single value**.

## Syntax

```sql
CREATE FUNCTION function_name
(
    @Parameter DataType
)
RETURNS ReturnDataType
AS
BEGIN

    DECLARE @Variable ReturnDataType;

    SQL Statements

    RETURN @Variable;

END;
GO
```

---

# 2. Inline Table-Valued Function (Inline TVF)

Returns a table using a **single SELECT statement**.

## Syntax

```sql
CREATE FUNCTION function_name
(
    @Parameter DataType
)
RETURNS TABLE
AS
RETURN
(
    SELECT
        column1,
        column2,
        ...
    FROM table_name
    WHERE condition
);
GO
```

---

# 3. Multi-Statement Table-Valued Function (MSTVF)

Returns a table after executing **multiple SQL statements**.

## Syntax

```sql
CREATE FUNCTION function_name
(
    @Parameter DataType
)
RETURNS @Result TABLE
(
    Column1 DataType,
    Column2 DataType,
    ...
)
AS
BEGIN

    INSERT INTO @Result
    SELECT
        ...
    FROM table_name;

    RETURN;

END;
GO
```

---

# Temporary Tables

Temporary tables store data temporarily during the execution of a session or stored procedure.

## Local Temporary Table

Visible only to the current session.

### Syntax

```sql
CREATE TABLE #TempTable
(
    Column1 DataType,
    Column2 DataType,
    ...
);
```

### Drop

```sql
DROP TABLE #TempTable;
```

---

## Global Temporary Table

Visible to all sessions until the last session using it ends.

### Syntax

```sql
CREATE TABLE ##TempTable
(
    Column1 DataType,
    Column2 DataType,
    ...
);
```

### Drop

```sql
DROP TABLE ##TempTable;
```

---

# References

## Microsoft Learn

- SQL Server (Transact-SQL)  
  https://learn.microsoft.com/sql/t-sql/

- CREATE VIEW  
  https://learn.microsoft.com/sql/t-sql/statements/create-view-transact-sql

- CREATE PROCEDURE  
  https://learn.microsoft.com/sql/t-sql/statements/create-procedure-transact-sql

- CREATE FUNCTION  
  https://learn.microsoft.com/sql/relational-databases/user-defined-functions/create-user-defined-functions-database-engine

- Temporary Tables  
  https://learn.microsoft.com/sql/t-sql/data-types/table-transact-sql

---

## TutorialsPoint

- https://www.tutorialspoint.com/ms_sql_server/index.htm