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

  1. Connect to / create sales_data.db.
  2. Populate the database table sales from Sales.csv.
  3. Run the aggregation query to calculate total quantity sold and overall revenue.
  4. Output summary tables directly in the terminal.
  5. Generate and save sales_chart.png in the directory.

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
