--SSMS SETUP--
# SQL Server + SSMS + Northwind Database Setup

install Microsoft SQL Server, SQL Server Management Studio (SSMS), and set up the Northwind sample database.

## Requirements

- Windows 10 or Windows 11 (64-bit)
- Administrator privileges
- Internet connection

## Software

### 1. SQL Server (Developer Edition or Express)

Download SQL Server from Microsoft:

https://www.microsoft.com/en-us/sql-server/sql-server-downloads

Recommended:
- SQL Server Developer Edition (Free)
- SQL Server Express (Free)

During installation:

- Select **Basic** or **Custom** installation.
- Enable the **Database Engine Services** feature.
- Use **Windows Authentication** or configure Mixed Mode if required.

---

### 2. SQL Server Management Studio (SSMS)

Download SSMS:

https://learn.microsoft.com/sql/ssms/download-sql-server-management-studio-ssms

Install using the default settings.

---

## Verify Installation

Open **SQL Server Management Studio** and connect using:

Server Name

```
localhost
```

or

```
localhost\SQLEXPRESS
```

or your SQL Server instance name.

Authentication

```
Windows Authentication
```

If you receive an SSL certificate warning:

- Enable **Trust Server Certificate**
- Click **Connect**

---

## Download Northwind for a sample Database

Microsoft provides the Northwind sample database.

Official documentation:

https://learn.microsoft.com/en-us/dotnet/framework/data/adonet/sql/linq/downloading-sample-databases

Official sample repository:

https://github.com/microsoft/sql-server-samples/tree/master/samples/databases/northwind-pubs

Download:

```
instnwnd.sql
```

---

## Create the Database (NEW DB)

Some versions of `instnwnd.sql` **do not create the database automatically**. Create it first:

```sql
CREATE DATABASE Northwind;
GO
```

Select the database:

```sql
USE Northwind;
GO
```

Then open `instnwnd.sql` in SSMS and execute it (`F5`). Recent versions of the script expect you to create and select the database before running the script. :contentReference[oaicite:0]{index=0}

---

## Verify Installation

List databases:

```sql
SELECT name
FROM sys.databases;
```