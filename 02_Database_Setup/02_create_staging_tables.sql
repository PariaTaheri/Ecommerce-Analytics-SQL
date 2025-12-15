USE EcommerceAnalytics;
GO

DROP TABLE IF EXISTS dbo.olist_customers_dataset;
GO

CREATE TABLE dbo.olist_customers_dataset (
    customer_id NVARCHAR(50),
    customer_unique_id NVARCHAR(50),
    customer_zip_code_prefix NVARCHAR(10),
    customer_city NVARCHAR(100),
    customer_state NVARCHAR(10)
);
GO
