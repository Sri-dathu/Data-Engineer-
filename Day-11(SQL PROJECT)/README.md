# SQL Business Analytics

A business analytics project built using the AdventureWorks2022 OLTP database and Microsoft SQL Server.

## Database

This project uses the **AdventureWorks2022** sample database provided by Microsoft.

### Dataset

- Database: AdventureWorks2022
- Type: OLTP
- File: `AdventureWorks2022.bak`
- DBMS: Microsoft SQL Server
- Tool: SQL Server Management Studio (SSMS)

### Dataset Download

The official AdventureWorks sample databases are available from Microsoft:

https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure

The `AdventureWorks2022.bak` file can also be downloaded from Microsoft's SQL Server Samples repository:

https://github.com/microsoft/sql-server-samples/releases

---

# Installation Guide

## 1. Install SQL Server

Before installing SSMS, make sure Microsoft SQL Server is installed on your system.

You can install SQL Server Developer Edition for development and learning purposes.

After installation, remember your SQL Server instance name because it will be required when connecting through SSMS.

---

## 2. Install SQL Server Management Studio (SSMS)

SSMS is the graphical tool used to connect to SQL Server, create queries, manage databases, and analyze data.

### Step 1: Download SSMS

Download the latest version of SQL Server Management Studio from Microsoft's official website:

https://learn.microsoft.com/en-us/ssms/install/install

### Step 2: Run the Installer

1. Open the downloaded `vs_SSMS.exe` file.
2. Allow the installer to make changes if Windows asks for permission.
3. The Visual Studio Installer will open.
4. Select **Install**.
5. Wait for the installation to complete.

SSMS 22 is currently installed through the Visual Studio Installer.

### Step 3: Open SSMSvvc

After installation:

1. Open **SQL Server Management Studio**.
2. The **Connect to Server** window will appear.
3. Select:
   - Server type: `Database Engine`
   - Authentication: Choose the authentication method configured during SQL Server installation.
4. Enter your SQL Server instance name.
5. Click **Connect**.

---

# 3. Download AdventureWorks2022

Download the `AdventureWorks2022.bak` backup file from Microsoft's official SQL Server Samples repository.

Save the file somewhere accessible...

```text
C:\SQLData\AdventureWorks2022.bak