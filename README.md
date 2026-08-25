# SQL, Python, Pandas, Snowflake & SnowSQL Training

## Overview

This repository contains my learning and practice work while building skills in **SQL, Python, Pandas, Snowflake, and SnowSQL**.

The purpose of this repository is to document the concepts I learned, the queries and scripts I practiced, and the workflow I followed to work with data from extraction to analysis.

The learning process focused on:

* SQL fundamentals to advanced SQL
* Python programming fundamentals
* Data analysis and data cleaning using Pandas
* Snowflake data warehousing
* SnowSQL command-line usage
* Loading and transforming data
* Working with real-world datasets

---

# 1. SQL

SQL was used to learn how to store, retrieve, manipulate, and analyze data in relational databases.

### Topics Covered

* SQL fundamentals
* Database and table creation
* `select`
* `where`
* `distinct`
* `order by`
* `group by`
* Aggregate functions
* `having`
* `case`
* `insert`
* `update`
* `delete`
* Joins
* Subqueries
* Self joins
* Common Table Expressions (CTEs)
* Window functions
* `rank()`
* `dense_rank()`
* `row_number()`
* `lag()` and `lead()`
* Conditional logic
* Date and string functions
* Advanced data analysis queries

### SQL Learning Reference

TutorialsPoint SQL Tutorial:

https://www.tutorialspoint.com/sql/index.htm

---

# 2. Python

Python was used as the programming language for data processing and automation.

### Topics Covered

* Python syntax
* Variables and data types
* Operators
* Conditional statements
* Loops
* Functions
* Lists
* Tuples
* Sets
* Dictionaries
* Strings
* Exception handling
* File handling
* Modules and packages
* Working with CSV files
* Basic data processing

### Python Learning References

GeeksforGeeks Python Tutorial:

https://www.geeksforgeeks.org/python/python-programming-language-tutorial/

W3Schools Python:

https://www.w3schools.com/python/

---

# 3. Pandas

Pandas was used for **data extraction, inspection, cleaning, transformation, and preparation** before loading data into Snowflake.

### Topics Covered

* Series
* DataFrames
* Reading CSV files
* Inspecting datasets
* Selecting rows and columns
* Filtering data
* Sorting data
* Handling missing values
* Removing duplicates
* Changing data types
* Renaming columns
* String operations
* Date and time operations
* Grouping and aggregation
* Merging and joining DataFrames
* Data cleaning
* Exporting cleaned datasets

### Pandas Learning Reference

W3Schools Pandas Tutorial:

https://www.w3schools.com/python/pandas/

---

# 4. Snowflake

Snowflake was learned as a **cloud-based data warehouse** for storing, loading, and analyzing data.

### Topics Covered

* Snowflake account setup
* Databases
* Schemas
* Tables
* Warehouses
* Roles and privileges
* Users
* File formats
* Internal stages
* External stages
* Loading data
* `copy into`
* Metadata columns
* Table management
* Data types
* Snowflake SQL
* Data transformation
* Git integration
* Snowflake Workspaces

### Snowflake Learning Reference

Snowflake tutorial/video reference:

https://youtu.be/E5blaG33l5E?si=6PKPd-ZoFvpAnw0n

Official Snowflake documentation:

https://docs.snowflake.com/

---

# 5. SnowSQL

SnowSQL was learned as the **command-line interface for interacting with Snowflake**.

### Topics Covered

* SnowSQL installation
* Configuration
* Connecting to Snowflake
* Authentication
* Executing SQL files
* Running SQL commands from the terminal
* Database and schema selection
* Executing scripts
* Working with Snowflake objects from the command line

### SnowSQL Setup

Official SnowSQL installation and configuration documentation:

https://docs.snowflake.com/en/user-guide/snowsql-install-config

---

# 6. Python Setup

### Install Python

Download and install Python from:

https://www.python.org/downloads/

Verify the installation:

```bash
python --version
```

or:

```bash
python3 --version
```

### Create a Virtual Environment

```bash
python -m venv venv
```

Activate it on Windows:

```bash
venv\Scripts\activate
```

Activate it on Linux/macOS:

```bash
source venv/bin/activate
```

---

# 7. Pandas Setup

Install Pandas using pip:

```bash
pip install pandas
```

Verify the installation:

```python
import pandas as pd

print(pd.__version__)
```

For common data-analysis work, NumPy can also be installed:

```bash
pip install numpy
```

---

# 8. Snowflake Setup

Create a Snowflake account and access the Snowflake web interface.

Snowflake:

https://www.snowflake.com/

The basic Snowflake environment used for practice consists of:

```text
Snowflake Account
       ↓
     Role
       ↓
   Warehouse
       ↓
   Database
       ↓
    Schema
       ↓
     Tables
```

A typical setup can be created using SQL such as:

```sql
create warehouse if not exists my_warehouse;

create database if not exists my_database;

create schema if not exists my_database.my_schema;
```

The exact names and configurations can be changed according to the dataset and project being used.

---

# 9. SnowSQL Setup

Download SnowSQL using the official Snowflake documentation:

https://docs.snowflake.com/en/user-guide/snowsql-install-config

After installation, verify it:

```bash
snowsql --version
```

Connect to Snowflake:

```bash
snowsql -a <account_identifier> -u <username>
```

SnowSQL can then be used to execute SQL scripts:

```bash
snowsql -a <account_identifier> -u <username> -f script.sql
```

---

# 10. Data Workflow

The overall data workflow learned during this training can be represented as:

```text
Dataset
   ↓
Python
   ↓
Pandas
   ↓
Data Inspection
   ↓
Data Cleaning
   ↓
Prepared Dataset
   ↓
Snowflake
   ↓
Data Loading
   ↓
SnowSQL
   ↓
Data Transformation
   ↓
SQL Analysis
   ↓
Business Insights
```

This workflow helped me understand how Python and Pandas can be combined with Snowflake and SQL for practical data analytics.

---

# 11. Dataset Practice

Different datasets can be used while practicing these concepts.

The purpose of using datasets is to practice:

* Data inspection
* Data cleaning
* Data transformation
* Data loading
* SQL analysis
* Business-question development

## Note

**The datasets used for practice are my own selections.**

The tutorials and learning resources mentioned in this repository are used **only as references for learning concepts and techniques**. The datasets, analysis questions, cleaning decisions, SQL queries, and implementations are independently selected and developed for practice.

---

# 12. Learning References

### SQL

TutorialsPoint:

https://www.tutorialspoint.com/sql/index.htm

### Python

GeeksforGeeks:

https://www.geeksforgeeks.org/python/python-programming-language-tutorial/

W3Schools:

https://www.w3schools.com/python/

### Pandas

W3Schools:

https://www.w3schools.com/python/pandas/

### Snowflake

Learning Video:

https://youtu.be/E5blaG33l5E?si=6PKPd-ZoFvpAnw0n

Official Documentation:

https://docs.snowflake.com/

### SnowSQL

Official Documentation:

https://docs.snowflake.com/en/user-guide/snowsql-install-config

---

## Conclusion

This training provided practical experience across the complete data-analysis workflow, starting from **Python and Pandas for data preparation**, moving to **Snowflake for data storage and warehousing**, and using **SQL and SnowSQL for data transformation and analysis**.

The focus throughout the learning process was on understanding the concepts, practicing them with datasets, and developing the ability to solve data problems independently.
