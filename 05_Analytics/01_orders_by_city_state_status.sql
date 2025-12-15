-- This query counts total orders for each customer city
-- Used to identify cities with the highest number of orders
SELECT
    c.customer_city,
    COUNT(o.order_id) AS total_orders
FROM dbo.Customers AS c
JOIN dbo.Orders AS o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_city
ORDER BY total_orders DESC;

-- This query counts total orders per customer state
-- Useful for regional sales performance analysis

-- This query counts total orders per customer state
-- Useful for regional sales performance analysis
-- This query counts total orders per customer state
-- Useful for regional sales performance analysis

SELECT
    c.customer_state,
    COUNT(o.order_id) AS total_orders
FROM dbo.olist_customers_dataset AS c
JOIN dbo.olist_orders_dataset AS o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_state
ORDER BY total_orders DESC;

-- Count total number of orders per customer state
-- Join customers and orders tables using customer_id

SELECT
    c.customer_city,
    COUNT(o.order_id) AS total_orders
FROM dbo.Customers AS c
JOIN dbo.Orders AS o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_city
ORDER BY total_orders DESC;


-- Count total number of orders per customer state
-- Used to identify top-performing states by order volume

SELECT 
    c.customer_state,
    COUNT(o.order_id) AS total_orders
FROM dbo.olist_customers_dataset AS c
JOIN dbo.olist_orders_dataset AS o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_state
ORDER BY total_orders DESC;

-- Count total number of orders per customer state
-- Helps identify regions with highest demand

SELECT 
    c.customer_state,
    COUNT(o.order_id) AS total_orders
FROM dbo.olist_customers_dataset AS c
JOIN dbo.olist_orders_dataset AS o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_state
ORDER BY total_orders DESC;


-- Count total number of orders per customer city
-- Used to find top cities by order volume
--این تحلیل برای شناسایی شهرهای مهم (مثلاً São Paulo، Rio و …) استفاده می‌شود.
SELECT 
    c.customer_city,
    COUNT(o.order_id) AS total_orders
FROM dbo.olist_customers_dataset AS c
JOIN dbo.olist_orders_dataset AS o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_city
ORDER BY total_orders DESC;

-- Analyze order distribution by status
-- Shows delivery performance and cancellations
--می‌فهمیم چند سفارش تحویل شده، چندتا کنسل شده، چندتا در حال پردازش مانده.
SELECT 
    order_status,
    COUNT(order_id) AS total_orders
FROM dbo.olist_orders_dataset
GROUP BY order_status
ORDER BY total_orders DESC;
