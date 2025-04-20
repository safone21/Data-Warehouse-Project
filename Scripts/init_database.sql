/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DWH' after checking for its existence.
    If the database already exists, it is dropped and recreated. The script also sets up three schemas 
    within the 'DWH' database: 'bronze', 'silver', and 'gold'.
    
WARNING:
    Executing this script will drop the 'DWH' database if it already exists. 
    All data within the database will be permanently deleted. Please ensure you have a backup 
    before proceeding with this operation.
*/

USE master;
GO

-- Drop and recreate the 'DWH' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DWH')
BEGIN
    ALTER DATABASE DWH SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DWH;
END;
GO

-- Create the 'DWH' database
CREATE DATABASE DWH;
GO

USE DWH;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
