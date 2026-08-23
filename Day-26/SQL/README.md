# MS SQL / Snowflake Business Analytics Project

This project is a business analytics project using customer, supplier, inventory, payment, and employee performance datasets.

The datasets are loaded into **Snowflake** and the business analysis is performed using **Snowflake SQL**.

## Project Structure

```text
Day-26/
│
├── Datasets/
│   ├── customers.csv
│   ├── employee_performance.csv
│   ├── inventory.csv
│   ├── payments.csv
│   └── suppliers.csv
│
├── SQL/
│   ├── Business-Questions-1.sql
│   ├── Create-Tableschema.sql
│   ├── KPIs.sql
│   └── Load-Datasets.sql
|   └── README.md
│
└── README.md
```

## Project Workflow

```text
CSV Datasets
     ↓
File Format
     ↓
Snowflake Stage
     ↓
Snowflake Tables
     ↓
Load Data
     ↓
Business SQL Queries
     ↓
Business Questions & KPIs
```

## Datasets

The `Datasets` folder contains the raw CSV files:

* `customers.csv` – Customer information
* `employee_performance.csv` – Employee performance and review information
* `inventory.csv` – Inventory and warehouse information
* `payments.csv` – Payment transaction information
* `suppliers.csv` – Supplier information

## SQL Files

### `Create-Tableschema.sql`

Contains the table creation and schema setup for the project.

### `Load-Datasets.sql`

Contains the workflow for loading the CSV datasets into Snowflake using stages and file formats.

### `Business-Questions-1.sql`

Contains the SQL analysis used to answer the project's business questions.

### `KPIs.sql`

Contains the SQL calculations used to generate the business KPIs.

## Loading Data into Snowflake

The datasets are loaded into Snowflake using the following workflow:

1. Create or select the required Snowflake database.
2. Create or select the required schema.
3. Create the required tables.
4. Create the CSV file format.
5. Create a Snowflake stage.
6. Upload the CSV files to the stage.
7. Verify that the files are available in the stage.
8. Load the staged files into the corresponding Snowflake tables.
9. Verify the loaded data.
10. Run the business questions and KPI queries.

The complete loading-related SQL is maintained in:

```text
SQL/Load-Datasets.sql
```

## Stage and File Format Workflow

The data-loading process follows:

```text
CSV Files
   ↓
File Format
   ↓
Stage
   ↓
COPY INTO
   ↓
Snowflake Tables
```

The file format is configured according to the structure of the CSV files.

The stage is used as the location from which Snowflake reads the uploaded dataset files.

## Recommended Execution Order

```text
1. Create database/schema
        ↓
2. Create file format
        ↓
3. Create stage
        ↓
4. Upload CSV files to stage
        ↓
5. Create tables
        ↓
6. Load data using COPY INTO
        ↓
7. Verify loaded data
        ↓
8. Run Business-Questions-1.sql
        ↓
9. Run KPIs.sql
```

## Important: Where to Run the SQL

> **The SQL queries in this repository are Snowflake SQL. They should be executed in Snowflake or through SnowSQL, not directly in VS Code.**

VS Code is used to:

* Write and organize `.sql` files
* Manage the project structure
* Use Git and GitHub
* Version-control the SQL scripts

The actual SQL execution should be performed in:

* **Snowflake Web Interface / Worksheets**
* **SnowSQL**
* Another properly configured Snowflake SQL environment

Simply opening a `.sql` file in VS Code does **not** execute the query against Snowflake unless a properly configured Snowflake connection or extension is being used.

## Important Note

GitHub is used for storing and version-controlling the project files.

Snowflake is used for:

* Creating the database and schema
* Creating file formats
* Creating stages
* Loading the datasets
* Running SQL queries
* Performing business analysis
* Calculating KPIs

The `.sql` files in this repository are scripts for the Snowflake project and are not intended to be executed directly by VS Code.

## Project Repository Contents

The repository contains:

* Raw datasets
* Snowflake table/schema scripts
* Data-loading scripts
* Business-question queries
* KPI queries
* Project documentation

This repository provides a complete record of the Snowflake-based business analytics project.
