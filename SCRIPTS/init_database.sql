/* 
================================================================================
 Script: Datawarehouse Setup
 Purpose: Create a database named 'Datawarehouse' and three schemas (bronze, silver, gold)
 Author: [Your Name]
 Disclaimer:
   - This script is intended for Microsoft SQL Server.
   - Running DROP DATABASE will permanently delete the database and all its contents.
   - Ensure you have backups before executing in production environments.
   - Always run in the correct environment (DEV/TEST vs PROD).
================================================================================
*/

-- Switch to master to safely drop the database if it exists
USE master;
GO

-- Drop the database only if it already exists
DROP DATABASE IF EXISTS Datawarehouse;
GO

-- Create the new database
CREATE DATABASE Datawarehouse;
GO

-- Switch context to the newly created database
USE Datawarehouse;
GO

-- Create schema for Bronze layer (raw data ingestion)
CREATE SCHEMA bronze;
GO

-- Create schema for Silver layer (cleaned and transformed data)
CREATE SCHEMA silver;
GO

-- Create schema for Gold layer (business-ready, curated data)
CREATE SCHEMA gold;
GO

/* 
================================================================================
 Verification Step:
   To confirm schemas are created successfully, run:
   SELECT name FROM sys.schemas WHERE name IN ('bronze','silver','gold');
================================================================================
*/
