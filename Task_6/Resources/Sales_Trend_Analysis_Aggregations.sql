-- 1. Monthly Revenue and Order Volume
-- Calculate total sales revenue and unique order volume for each month
SELECT
    EXTRACT(YEAR FROM o.order_date) AS year,
    EXTRACT(MONTH FROM o.order_date) AS month,
    SUM(o.quantity * p.price) AS monthly_revenue,
    COUNT(DISTINCT o.order_id) AS order_volume -- actual order volume by counting distinct
FROM orders o JOIN products p
    ON o.product_id = p.product_id
GROUP BY
    EXTRACT(YEAR FROM o.order_date),
    EXTRACT(MONTH FROM o.order_date)
ORDER BY
    year, month;


/* 2. Monthly Revenue
   Identify how sales revenue changes from month to month */
SELECT
    EXTRACT(YEAR FROM o.order_date) AS year,
    EXTRACT(MONTH FROM o.order_date) AS month,
    SUM(o.quantity * p.price) AS monthly_revenue
FROM orders o JOIN products p
    ON o.product_id = p.product_id
GROUP BY
    EXTRACT(YEAR FROM o.order_date),
    EXTRACT(MONTH FROM o.order_date)
ORDER BY
    year, month;


/* 3. Monthly Order Volume
   Measure customer ordering activity by counting distinct orders each month. */
SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    COUNT(DISTINCT order_id) AS order_volume
FROM orders
GROUP BY
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date)
ORDER BY
    year,month;


/* 4. Top 3 Months by Sales
  Identify the three months with the highest revenue */

SELECT
    EXTRACT(YEAR FROM o.order_date) AS year,
    EXTRACT(MONTH FROM o.order_date) AS month,
    SUM(o.quantity * p.price) AS monthly_revenue,
    COUNT(DISTINCT o.order_id) AS order_volume
FROM orders o JOIN products p
    ON o.product_id = p.product_id
GROUP BY
    EXTRACT(YEAR FROM o.order_date),
    EXTRACT(MONTH FROM o.order_date)
ORDER BY
    monthly_revenue DESC
LIMIT 3;

/* 5. Monthly Sales for a Specific Time Period
   Analyze sales performance within a defined period */
SELECT
    EXTRACT(YEAR FROM o.order_date) AS year,
    EXTRACT(MONTH FROM o.order_date) AS month,
    SUM(o.quantity * p.price) AS monthly_revenue,
    COUNT(DISTINCT o.order_id) AS order_volume
FROM orders o JOIN products p
    ON o.product_id = p.product_id
WHERE o.order_date >= '2024-01-01'AND o.order_date < '2024-12-31'
GROUP BY
    EXTRACT(YEAR FROM o.order_date),
    EXTRACT(MONTH FROM o.order_date)
ORDER BY
    year,month;
	