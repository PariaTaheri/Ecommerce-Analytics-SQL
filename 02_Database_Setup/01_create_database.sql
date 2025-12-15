IF DB_ID('EcommerceAnalytics') IS NULL
BEGIN
    CREATE DATABASE EcommerceAnalytics;
END
GO

USE EcommerceAnalytics;
GO

SELECT DB_NAME() AS current_db;
GO
Create EcommerceAnalytics database
