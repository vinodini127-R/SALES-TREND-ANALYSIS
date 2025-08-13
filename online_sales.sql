SELECT * 
FROM orders
LIMIT 10;


SELECT 
    STRFTIME('%Y', date) AS year,
    STRFTIME('%m', date) AS month
FROM orders
LIMIT 10;


SELECT 
    STRFTIME('%Y', date) AS year,
    STRFTIME('%m', date) AS month,
    SUM("total revenue") AS monthly_revenue
FROM orders
GROUP BY year, month
ORDER BY year, month;

SELECT 
    STRFTIME('%Y', date) AS year,
    STRFTIME('%m', date) AS month,
    COUNT(DISTINCT "transaction id") AS order_volume
FROM orders
GROUP BY year, month
ORDER BY year, month;

SELECT 
    STRFTIME('%Y', date) AS year,
    STRFTIME('%m', date) AS month,
    SUM("total revenue") AS monthly_revenue,
    COUNT(DISTINCT "transaction id") AS order_volume
FROM orders
GROUP BY year, month
ORDER BY year, month;

SELECT 
    STRFTIME('%Y', date) AS year,
    STRFTIME('%m', date) AS month,
    AVG("units sold") AS avg_units_sold
FROM orders
GROUP BY year, month
ORDER BY year, month;

SELECT 
    STRFTIME('%Y', date) AS year,
    STRFTIME('%m', date) AS month,
    region,
    SUM("total revenue") AS monthly_revenue
FROM orders
GROUP BY year, month, region
ORDER BY year, month, region;




