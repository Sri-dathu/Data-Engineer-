# Window Functions in MS SQL Server

## Database

**Database Used:** Northwind

---


# Window Functions

Window functions perform calculations across a set of rows related to the current row without collapsing the result into a single row.

---

## General Syntax

```sql
window_function() OVER (
    [PARTITION BY column_name]
    [ORDER BY column_name]
)
```

---

## 1. ROW_NUMBER()

**Syntax**

```sql
ROW_NUMBER() OVER (
    [PARTITION BY column_name]
    ORDER BY column_name
)
```

---

## 2. RANK()

**Syntax**

```sql
RANK() OVER (
    [PARTITION BY column_name]
    ORDER BY column_name
)
```

---

## 3. DENSE_RANK()

**Syntax**

```sql
DENSE_RANK() OVER (
    [PARTITION BY column_name]
    ORDER BY column_name
)
```

---

## 4. NTILE()

**Syntax**

```sql
NTILE(integer_expression) OVER (
    [PARTITION BY column_name]
    ORDER BY column_name
)
```

---

## 5. LAG()

**Syntax**

```sql
LAG(
    expression,
    offset,
    default_value
) OVER (
    [PARTITION BY column_name]
    ORDER BY column_name
)
```

---

## 6. LEAD()

**Syntax**

```sql
LEAD(
    expression,
    offset,
    default_value
) OVER (
    [PARTITION BY column_name]
    ORDER BY column_name
)
```

---

## 7. FIRST_VALUE()

**Syntax**

```sql
FIRST_VALUE(expression) OVER (
    [PARTITION BY column_name]
    ORDER BY column_name
)
```

---

## 8. LAST_VALUE()

**Syntax**

```sql
LAST_VALUE(expression) OVER (
    PARTITION BY column_name
    ORDER BY column_name
    ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
)
```

---

## 9. CUME_DIST()

**Syntax**

```sql
CUME_DIST() OVER (
    [PARTITION BY column_name]
    ORDER BY column_name
)
```

---

## 10. PERCENT_RANK()

**Syntax**

```sql
PERCENT_RANK() OVER (
    [PARTITION BY column_name]
    ORDER BY column_name
)
```

---

# Reference

- Northwind Database  
  https://github.com/microsoft/sql-server-samples/tree/master/samples/databases/northwind-pubs

- TutorialsPoint – SQL Server Window Functions  
  https://www.tutorialspoint.com/sql/sql-window-functions.htm