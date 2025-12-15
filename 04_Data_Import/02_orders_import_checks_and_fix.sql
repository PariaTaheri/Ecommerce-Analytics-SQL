--control import ok?
SELECT COUNT(*) 
FROM dbo.olist_orders_dataset;

--first join analysis,Customers ↔ Orders
--numbers of Orders
SELECT COUNT(*) 
FROM dbo.olist_orders_dataset;
--control name columns
SELECT TOP 5 *
FROM dbo.olist_customers_dataset;

SELECT TOP 5 *
FROM dbo.olist_orders_dataset;

SELECT TOP 10
    c.customer_unique_id,
    c.customer_city,
    c.customer_state,
    o.order_id,
    o.order_status,
    o.order_purchase_timestamp
FROM dbo.Customers AS c
JOIN dbo.Orders AS o
    ON c.customer_id = o.customer_id;


--test fast data 
SELECT TOP 5 * FROM dbo.olist_customers_dataset;
SELECT TOP 5 * FROM dbo.olist_orders_dataset;



       --control extra
-- Show current database context
-- If not EcommerceAnalytics, switch to it

SELECT DB_NAME() AS current_db;

USE EcommerceAnalytics;
GO

SELECT DB_NAME() AS current_db_after;

-- List tables that contain 'olist' or 'customers' or 'orders'
-- This finds the exact stored table names

SELECT TABLE_SCHEMA, TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE'
  AND (
       TABLE_NAME LIKE '%olist%'
    OR TABLE_NAME LIKE '%customer%'
    OR TABLE_NAME LIKE '%order%'
  )
ORDER BY TABLE_SCHEMA, TABLE_NAME;




-- List columns for the customers table
-- Replace TABLE name if your result is different

SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'dbo'
  AND TABLE_NAME = 'olist_customers_dataset'
ORDER BY ORDINAL_POSITION;


-- List columns for the orders table
-- Replace TABLE name if your result is different

SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'dbo'
  AND TABLE_NAME = 'olist_orders_dataset'
ORDER BY ORDINAL_POSITION;

--


-- Count total orders per customer state
-- Join customers and orders using quoted column names

SELECT
    c.customer_state,
    COUNT(o.["order_id"]) AS total_orders
FROM dbo.olist_customers_dataset AS c
JOIN dbo.olist_orders_dataset AS o
    ON c.customer_id = o.["customer_id"]
GROUP BY c.customer_state
ORDER BY total_orders DESC;


-- Rename quoted columns to normal column names
-- This fixes bad Import Wizard behavior
-- Rename broken column names created by Import Wizard

EXEC sp_rename 
    'dbo.olist_orders_dataset.["order_id"]', 
    'order_id', 
    'COLUMN';

EXEC sp_rename 
    'dbo.olist_orders_dataset.["customer_id"]', 
    'customer_id', 
    'COLUMN';

EXEC sp_rename 
    'dbo.olist_orders_dataset.["order_status"]', 
    'order_status', 
    'COLUMN';

EXEC sp_rename 
    'dbo.olist_orders_dataset.["order_purchase_timestamp"]', 
    'order_purchase_timestamp', 
    'COLUMN';
