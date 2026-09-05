# E-Commerce Data Analysis & Database Optimization (PostgreSQL)

This repository contains PostgreSQL scripts to set up an e-commerce database, manage foreign key relationships, perform analytical queries, and optimize performance using indexing and database views.

---

## 📌 Project Overview
The objective of this project is to build a relational database schema for an e-commerce platform and run data analytics queries to extract key business insights regarding customer demographics, sales trends, and product performance.

---

## 🛠 Database Schema & Setup

The database consists of three core relational tables connected through primary and foreign key constraints:
* **`products`**: Catalog table containing product metadata and unit pricing.
* **`customers`**: Demographics table containing user information, location, and loyalty program status.
* **`orders`**: Transactional table recording purchase details, linked to both customers and products.


## 📊 Business Justifications & Analytical Objectives

### 1. Data Aggregation & Filtering (`SELECT`, `WHERE`, `GROUP BY`, `ORDER BY`)
* **Objective:** Analyze category pricing structures and identify product lines with higher average selling prices to guide inventory investment.
* **Logic:** Evaluates high-value inventory items (priced above $20.00) across product categories to calculate total offerings and average pricing.

### 2. Multi-Table Relational Analysis (`JOINS`)
* **Objective:** Evaluate customer order fulfillment, pinpoint non-converting registered users, and track unsold catalog items for clearance planning.
* **Logic:** Combines transactional sales data with customer and product tables using:
  * **`INNER JOIN`**: Retrieves valid completed transactions with full customer and product detail.
  * **`LEFT JOIN`**: Lists all registered customers and their orders, explicitly keeping non-purchasing users.
  * **`RIGHT JOIN`**: Lists all catalog products alongside sales logs to highlight unsold inventory items.

### 3. Dynamic Price Threshold Filtering (`Subqueries`)
* **Objective:** Dynamically isolate premium-tier catalog offerings without needing to manually calculate or hardcode price thresholds.
* **Logic:** Identifies catalog items priced higher than the global average unit price point.

### 4. Financial Calculations (`SUM`, `AVG`)
* **Objective:** Measure individual customer Lifetime Value (LTV) and segment customers by purchasing strength.
* **Logic:** Computes total gross expenditure and average order value for each customer.

### 5. Analytical Views (`CREATE VIEW`)
* **Objective:** Create an abstracted reporting layer for regional revenue performance that simplifies downstream dashboarding without running raw joins repeatedly.
* **Logic:** Aggregates key sales KPIs (total customers, orders, revenue, average order value) grouped by geographic region.

### 6. Performance Optimization (`INDEX`)
* **Objective:** Eliminate full table scans during large `JOIN` and date-range filtering operations, accelerating execution times as transactional records scale.
* **Logic:** Applies single-column B-tree indexes to foreign keys (`customer_id`, `product_id`) and date attributes (`order_date`).

---

## 🚀 Execution & Setup
1. Execute table setup statements in PostgreSQL/pgAdmin.
2. Import CSV data for `products` and `customers` prior to `orders` to enforce foreign key constraints.
3. Load analytical queries or connect the `city_spending_summary` view to downstream analytics tools.
