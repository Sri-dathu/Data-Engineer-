# Snowflake & SnowSQL Setup

This README explains the basic setup required to run this project using **Snowflake** and **SnowSQL**.

## 1. Snowflake Setup

Snowflake is the cloud data platform used for storing the datasets, creating tables, loading data, and executing the SQL queries for this project.

### Create a Snowflake Account

If you do not already have a Snowflake account:

1. Go to the official Snowflake website.
2. Create a Snowflake trial account.
3. Select the required cloud provider and region.
4. Complete the account setup.
5. Sign in to Snowflake using the **Snowsight** web interface.

Snowflake provides a browser-based interface called **Snowsight**, which can be used to create databases, schemas, stages, file formats, tables, and execute SQL queries.

Official documentation:

https://docs.snowflake.com/en/user-guide/setup

## 2. Snowflake Environment Setup

After signing in to Snowflake:

1. Open **Snowsight**.
2. Select the required role.
3. Select or create a database.
4. Select or create a schema.
5. Select a warehouse for executing queries.
6. Open a SQL Worksheet.
7. Run the SQL scripts required for the project.

The project uses Snowflake for:

* Database and schema creation
* File formats
* Stages
* Table creation
* Data loading
* SQL analysis
* Business questions
* KPI calculations

A virtual warehouse is required to execute queries and load data.

## 3. SnowSQL Setup

SnowSQL is Snowflake's command-line client for connecting to Snowflake and executing SQL from a terminal.

It is optional for this project if you are using Snowsight, but it is useful for practicing command-line based Snowflake workflows.

### Windows Installation

For Windows:

1. Download the SnowSQL installer from the official Snowflake documentation.
2. Download the Windows installer.
3. Run the `.msi` installer.
4. Complete the installation.
5. Open Command Prompt or PowerShell.
6. Verify the installation.

```text
snowsql -v
```

If SnowSQL is installed correctly, the installed version will be displayed.

Official SnowSQL installation documentation:

https://docs.snowflake.com/en/user-guide/snowsql-install-config

## 4. SnowSQL Configuration

SnowSQL uses a configuration file for connection settings.

On Windows, the default configuration location is:

```text
%USERPROFILE%\.snowsql\config
```

The configuration can contain connection information such as:

* Snowflake account identifier
* Username
* Database
* Schema
* Warehouse
* Role

Do not commit your SnowSQL configuration file, passwords, access tokens, private keys, or other credentials to GitHub.

Snowflake documentation:

https://docs.snowflake.com/en/user-guide/snowsql-start

## 5. Connect SnowSQL to Snowflake

After installing SnowSQL:

1. Open Command Prompt or PowerShell.
2. Provide your Snowflake connection information.
3. Authenticate with your Snowflake account.
4. Connect to the required database, schema, warehouse, and role.
5. Execute SQL commands through the SnowSQL session.

Connection settings can also be stored as named connections in the SnowSQL configuration file.

## 6. Project Setup

After Snowflake and SnowSQL are ready, use the following project workflow:

```text
CSV Files
    ↓
Snowflake File Format
    ↓
Snowflake Stage
    ↓
Snowflake Tables
    ↓
COPY INTO
    ↓
Data Verification
    ↓
Business Questions
    ↓
KPIs
```

### Recommended Order

```text
1. Create database and schema
2. Create file format
3. Create stage
4. Upload CSV files to the stage
5. Create tables
6. Load data from stage into tables
7. Verify the loaded data
8. Run business-question queries
9. Run KPI queries
```


## Important Note

> **The SQL queries in this project are Snowflake SQL. They must be executed in Snowflake or through SnowSQL.**

VS Code is used only for:

* Writing SQL scripts
* Organizing the project
* Managing files
* Git and GitHub version control

**Do not expect the SQL files to execute directly in VS Code.**

Opening a `.sql` file in VS Code does not automatically connect to Snowflake or execute the query against the Snowflake database.

The queries should be executed using:

* ***Snowflake Snowsight***
* ***SnowSQL***
* **This is only the Reference like how to Work with SnowFlake Don't Use These Data sets Use Your own**

## GitHub Security

Never push sensitive Snowflake credentials to GitHub.

Do not commit:

```text
passwords
private keys
access tokens
authentication credentials
SnowSQL config files containing passwords
```

Use environment variables or secure authentication methods when credentials are required.

## Official Documentation

* Snowflake Getting Started: https://docs.snowflake.com/en/user-guide/setup
* SnowSQL Installation: https://docs.snowflake.com/en/user-guide/snowsql-install-config
* Connecting with SnowSQL: https://docs.snowflake.com/en/user-guide/snowsql-start
* SnowSQL Usage: https://docs.snowflake.com/en/user-guide/snowsql-use


**NOTE: This is only the Reference like how to Work with SnowFlake Don't Use These Data sets Use Your own**