# 🛒 Task 7: Get Basic Sales Summary from a Tiny SQLite Database using Python

An end-to-end Python and SQL workflow that loads transactional sales data into a lightweight, serverless SQLite database, extracts aggregated product performance metrics using standard SQL queries, and visualizes revenue trends with Matplotlib.

---

## 🎯 Overview & Objective

This project demonstrates practical integration between SQL and Python without needing complex database setups. Using Python's built-in `sqlite3` engine, raw transactional CSV data is ingested into an embedded SQLite database (`sales_data.db`), load raw transactional data, aggregate product sales metrics, and output the analysis via summary prints and a Matplotlib bar chart.

**Key Metrics Analyzed:**
* **Total Quantity Sold:** Aggregate unit volume grouped by product category.
* **Total Revenue:** Evaluated dynamically within SQL using `SUM(quantity * price)`.
---

## 🛠️ Tools & Technologies Used

* **Python 3.x**
* **`sqlite3`**: Built-in Python library for database connectivity.
* **`pandas`**: Data manipulation, DataFrame management, and SQL query integration.
* **`matplotlib`**: Data visualization for rendering sales charts.

---

## 🚀 Execution Steps

1. **Database Setup:** Connect to or initialize the `sales_data.db` SQLite database file.
2. **Data Ingestion:** Load transactional records from `Sales.csv` and populate the `sales` table.
3. **Analytics Execution:** Execute the SQL aggregation query to calculate total unit volume sold and total revenue per product line.
4. **Console Output:** Print the calculated sales summary DataFrame directly to the terminal.
5. **Visualization:** Plot and save the total revenue bar chart as `sales_chart.png`

---

## 📂 Deliverables

* `sales_data.db`: Embedded SQLite database containing the `sales` table.
* `sql_inside_python.py`: Python execution script/notebook handling DB connections, aggregation queries, and chart generation.
* `sales_chart.png`: Visual output bar chart showing total revenue per product.
* `README.md`: Task documentation and quick start guide.

---

## 💡 Key Conceptual Summary

* **Database Connection:** Managed seamlessly via sqlite3.connect("sales_data.db") without external database servers.
* **Data Flow:** Sales.csv ➡️ Pandas DataFrame ➡️ SQLite Table ➡️ SQL Aggregation ➡️ Matplotlib Visualization.

* **Metrics Calculated:**
    * Total Quantity: Sum of units sold per product.
    * Total Revenue: Product of item price and quantity sold summed per category.
