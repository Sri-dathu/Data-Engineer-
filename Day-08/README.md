# SQL DDL & DML Commands (MS SQL Server)

This README contains the basic syntax for commonly used **DDL (Data Definition Language)** and **DML (Data Manipulation Language)** commands in Microsoft SQL Server.

---

# Data Definition Language (DDL)

DDL commands are used to define, modify, and remove database objects such as tables.

---

## 1. CREATE TABLE

```sql
CREATE TABLE table_name (
    column1 datatype [constraints],
    column2 datatype [constraints],
    ...
);
```

---

## 2. ALTER TABLE

### Add a Column

```sql
ALTER TABLE table_name
ADD column_name datatype;
```

### Add Multiple Columns

```sql
ALTER TABLE table_name
ADD column1 datatype,
    column2 datatype;
```

### Modify Column Data Type

```sql
ALTER TABLE table_name
ALTER COLUMN column_name new_datatype;
```

> **Note:** SQL Server uses `ALTER COLUMN` instead of `MODIFY`.

---

### Rename a Column

```sql
EXEC sp_rename
'table_name.old_column_name',
'new_column_name',
'COLUMN';
```

---

### Rename a Table

```sql
EXEC sp_rename
'old_table_name',
'new_table_name';
```

---

### Add Primary Key

```sql
ALTER TABLE table_name
ADD CONSTRAINT constraint_name
PRIMARY KEY (column_name);
```

---

### Add Foreign Key

```sql
ALTER TABLE table_name
ADD CONSTRAINT constraint_name
FOREIGN KEY (column_name)
REFERENCES parent_table(parent_column);
```

---

### Drop Constraint

```sql
ALTER TABLE table_name
DROP CONSTRAINT constraint_name;
```

---

### Drop Column

```sql
ALTER TABLE table_name
DROP COLUMN column_name;
```

---

## 3. DROP TABLE

```sql
DROP TABLE table_name;
```

---

## 4. TRUNCATE TABLE

```sql
TRUNCATE TABLE table_name;
```

---

# Data Manipulation Language (DML)

DML commands are used to insert, update, delete, and retrieve data from tables.

---

## 1. INSERT

### Insert Single Row

```sql
INSERT INTO table_name (column1, column2, ...)
VALUES (value1, value2, ...);
```

---

## 2. UPDATE

```sql
UPDATE table_name
SET column1 = value1,
    column2 = value2
WHERE condition;
```

---

## 3. DELETE

```sql
DELETE FROM table_name
WHERE condition;
```



---

## 4. SELECT

```sql
SELECT column_list
FROM table_name;
```


---

# References

## TutorialsPoint

- DDL Commands  
  https://www.tutorialspoint.com/sql/sql-ddl-commands.htm

- DML Commands  
  https://www.tutorialspoint.com/sql/sql-dml-commands.htm

## Microsoft Learn

- https://learn.microsoft.com/sql/t-sql/

---

**Database:** User-defined database (custom)

**SQL Dialect:** Microsoft SQL Server (T-SQL)