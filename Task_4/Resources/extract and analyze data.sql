CREATE TABLE products (
    product_id      VARCHAR(255) PRIMARY KEY,
    product_name    VARCHAR(150),
    category        VARCHAR(100),
    price           NUMERIC(10, 2)
);

CREATE TABLE customers (
    customer_id     VARCHAR(20) PRIMARY KEY,
    gender          VARCHAR(20),
    age             INT,
    city            VARCHAR(100),
    signup_date     DATE,
    loyalty_member  BOOLEAN 
);


CREATE TABLE orders (
    order_id        VARCHAR(20) PRIMARY KEY,
    customer_id     VARCHAR(20) REFERENCES customers(customer_id),
    product_id      VARCHAR(255) REFERENCES products(product_id) ,
    order_date      DATE,
    quantity        INT,
    payment_method  VARCHAR(50)
);


Select * from customers Limit 5;
Select * from orders Limit 5;
Select * from products Limit 5;

SELECT 
    o.order_id,o.order_date,c.customer_id,c.city, p.product_name,p.category,
    o.quantity,p.price,(o.quantity * p.price) AS total_amount,o.payment_method
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id
ORDER BY o.order_date;

-- To evaluate pricing strategies by finding the average cost and volume of higher-value items (> 20.00)
--  within each product category, ranked from highest to lowest average price.
SELECT 
    category,
    COUNT(product_id) AS total_products,
    ROUND(AVG(price),2) AS average_price
FROM products
WHERE price > 20.00
GROUP BY category
ORDER BY average_price DESC;

--  Retrieve orders linked to valid customers and products
SELECT 
    o.order_id,
    c.city,
    p.product_name,
    o.quantity,
    o.order_date
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id
INNER JOIN products p ON o.product_id = p.product_id;

--  Retrieve all customers and any matching orders (including customers with 0 orders)
SELECT 
    c.customer_id,
    c.city,
    c.loyalty_member,
    o.order_id,
    o.order_date
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;

--  Retrieve all products and matching orders (identifying unsold products)
SELECT 
    p.product_id,
    p.product_name,
    o.order_id,
    o.quantity
FROM orders o
RIGHT JOIN products p ON o.product_id = p.product_id;


--To perform comparative price analysis by dynamic filtering, 
--identifying premium products priced above the overall catalog average without hardcoding a threshold.

SELECT product_name,category,price
FROM products
WHERE price > (
    SELECT AVG(price) 
    FROM products);

--To compute key financial customer metrics—specifically monetary lifetime revenue and 
--average order spending per customer—to identify high-value consumer groups.
SELECT 
    c.customer_id,
    c.city,
    SUM(o.quantity * p.price) AS total_spent,
    ROUND(AVG(o.quantity * p.price),2) AS avg_order_value
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id
GROUP BY c.customer_id, c.city;

--To create a reusable analytical layer that simplifies future reporting pipelines by pre-packaging 
-- c

CREATE VIEW customer_spending_summary AS
SELECT c.customer_id, c.city, c.loyalty_member,
    COUNT(o.order_id) AS total_orders,
    COALESCE(SUM(o.quantity * p.price), 0) AS total_revenue
FROM customers c
LEFT JOIN orders o ON c.customer_id = c.customer_id
LEFT JOIN products p ON o.product_id = p.product_id
GROUP BY c.customer_id, c.city, c.loyalty_member;

SELECT * from customer_spending_summary

--To evaluate regional market strength and spending trends across different cities 
--without collapsing data on a unique customer level.
CREATE VIEW city_spending_summary AS
SELECT c.city,
    COUNT(DISTINCT c.customer_id) AS total_customers,
    COUNT(o.order_id) AS total_orders,
    COALESCE(SUM(o.quantity * p.price), 0) AS total_revenue,
    COALESCE(ROUND(AVG(o.quantity * p.price), 2), 0) AS avg_order_value
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
LEFT JOIN products p ON o.product_id = p.product_id
GROUP BY c.city
ORDER BY total_revenue DESC;

SELECT * FROM city_spending_summary



--To significantly speed up database query execution times 
--and locate foreign key references and time-series dates rapidly without running full table scans
CREATE INDEX idx_orders_customer_id ON orders(customer_id);
CREATE INDEX idx_orders_product_id ON orders(product_id);
CREATE INDEX idx_orders_order_date ON orders(order_date);

