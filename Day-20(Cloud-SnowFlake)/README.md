# Snowflake Project

This repository contains my Snowflake practice work and projects, including SQL queries, database objects, data loading, views, and other Snowflake concepts.

## 1. Create a Snowflake Account

To work with this project, you need a Snowflake account.

1. Go to the official Snowflake website:
   https://www.snowflake.com/

2. Select **Try Snowflake for Free**.

3. Create an account using your email address.

4. Choose the required account details such as:

   * Cloud provider
   * Region
   * Edition

5. Complete the account verification process.

6. After registration, log in to **Snowsight**, Snowflake's web interface.

## 2. Open Snowflake

After logging in:

1. Open **Snowsight**.
2. Go to **Projects**.
3. Open **Worksheets** or **Workspaces**.
4. Create a new SQL worksheet.
5. You can execute SQL commands directly in the worksheet.

## 3. Create a Database

Run the following command:

```sql
CREATE DATABASE SNOWFLAKE_PROJECT;
```

Then select the database:

```sql
USE DATABASE SNOWFLAKE_PROJECT;
```

## 4. Create a Schema

Create a schema for the project:

```sql
CREATE SCHEMA PUBLIC;
```

Use the schema:

```sql
USE SCHEMA SNOWFLAKE_PROJECT.PUBLIC;
```

## 5. Run the Project Files

The SQL files included in this repository can be opened and executed in Snowflake.

Execute the files in the appropriate order so that databases, schemas, tables, and other objects are created before running queries that depend on them.

## 7. Requirements

* Snowflake account
* Access to Snowsight
* Basic knowledge of SQL
* Git/GitHub (for repository management)

## 8. Important Note

Do not store Snowflake passwords, private keys, access tokens, or other credentials in this repository.

This repository contains SQL scripts and project files only.

## 9. Learning Resources

* Snowflake Documentation: https://docs.snowflake.com/
* Snowflake Learn: https://learn.snowflake.com/
* Snowflake Community: https://community.snowflake.com/

---

**Author:** Piduru Sridattu Reddy
