-- Safely converts order date and shows customer location

SELECT
    o.order_id,
    o.order_status,
    TRY_CONVERT(datetime, o.order_purchase_timestamp) AS order_date,
    c.customer_city,
    c.customer_state
FROM dbo.olist_orders_dataset AS o
JOIN dbo.olist_customers_dataset AS c
    ON o.customer_id = c.customer_id
WHERE TRY_CONVERT(datetime, o.order_purchase_timestamp) IS NOT NULL;




-- Step 7: Monthly order trend analysis
-- Shows number of orders per month (safe date conversion)

SELECT
    FORMAT(TRY_CONVERT(datetime, order_purchase_timestamp), 'yyyy-MM') AS order_month,
    COUNT(order_id) AS total_orders
FROM dbo.olist_orders_dataset
WHERE TRY_CONVERT(datetime, order_purchase_timestamp) IS NOT NULL
GROUP BY FORMAT(TRY_CONVERT(datetime, order_purchase_timestamp), 'yyyy-MM')
ORDER BY order_month;



-- Step 7: Monthly order trend
-- Orders per month using safe date conversion
--به‌خاطر اینکه تاریخ‌ها varchar بودند، از TRY_CONVERT استفاده کردیم تا ارور ندهد.
-- مستقیم برای Line Chart در Power BI عالی است.
SELECT
    FORMAT(TRY_CONVERT(datetime, order_purchase_timestamp), 'yyyy-MM') AS order_month,
    COUNT(order_id) AS total_orders
FROM dbo.olist_orders_dataset
WHERE TRY_CONVERT(datetime, order_purchase_timestamp) IS NOT NULL
GROUP BY FORMAT(TRY_CONVERT(datetime, order_purchase_timestamp), 'yyyy-MM')
ORDER BY order_month;




-- Step 8: Orders by customer state
-- Counts orders per state using a clean join
--این تحلیل نشان می‌دهد کدام استان‌ها بیشترین سفارش را دارند.
SELECT
    c.customer_state,
    COUNT(o.order_id) AS total_orders
FROM dbo.olist_orders_dataset AS o
JOIN dbo.olist_customers_dataset AS c
    ON o.customer_id = c.customer_id
GROUP BY c.customer_state
ORDER BY total_orders DESC;


-- Step 9: Orders with customer location
-- Safe datetime conversion for BI usage
--این دیتاست تمیز، بهترین گزینه برای:

Table

Map

Timeline
در Power BI است.
SELECT
    o.order_id,
    o.order_status,
    TRY_CONVERT(datetime, o.order_purchase_timestamp) AS order_date,
    c.customer_city,
    c.customer_state
FROM dbo.olist_orders_dataset AS o
JOIN dbo.olist_customers_dataset AS c
    ON o.customer_id = c.customer_id
WHERE TRY_CONVERT(datetime, o.order_purchase_timestamp) IS NOT NULL;
