DROP TABLE IF EXISTS dbo.olist_orders_dataset;

CREATE TABLE dbo.olist_orders_dataset (
    order_id NVARCHAR(50),
    customer_id NVARCHAR(50),
    order_status NVARCHAR(30),
    order_purchase_timestamp NVARCHAR(50),
    order_delivered_customer_date NVARCHAR(50)
);
