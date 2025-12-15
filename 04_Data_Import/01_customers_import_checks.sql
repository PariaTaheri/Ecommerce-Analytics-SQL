DROP TABLE IF EXISTS dbo.olist_customers_dataset;

CREATE TABLE dbo.olist_customers_dataset (
    customer_id NVARCHAR(50),
    customer_unique_id NVARCHAR(50),
    customer_zip_code_prefix NVARCHAR(10),
    customer_city NVARCHAR(100),
    customer_state NVARCHAR(10)
);

#check data import korrect
SELECT COUNT(*) 
FROM dbo.olist_customers_dataset;

#check sample 
SELECT TOP 10 *
FROM dbo.olist_customers_dataset;

#check type columns
EXEC sp_help 'dbo.olist_customers_dataset';

#index creat

CREATE INDEX idx_customer_id 
ON dbo.olist_customers_dataset(customer_id);


--Primary Logic

CREATE INDEX idx_customer_unique_id
ON dbo.olist_customers_dataset(customer_unique_id);

--Doplicated customer_id
SELECT customer_id, COUNT(*)
FROM dbo.olist_customers_dataset
GROUP BY customer_id
HAVING COUNT(*) > 1;

--check null

SELECT *
FROM dbo.olist_customers_dataset
WHERE customer_id IS NULL
   OR customer_unique_id IS NULL;


   --join
--join to order
SELECT COUNT(DISTINCT customer_id)
FROM dbo.olist_customers_dataset;
