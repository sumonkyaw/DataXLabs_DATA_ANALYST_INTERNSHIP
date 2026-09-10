# 📊 Data Analyst Internship Portfolio

An end-to-end repository documenting data analysis projects across data cleaning, relational database querying, interactive business intelligence, and exploratory data analysis.

---

## 📌 Table of Contents
* [Technologies Used](#-technologies-used)
* [Repository Structure](#-repository-structure)
* [Task Details & Summary](#-task-details--summary)

---

## 🛠️ Technologies Used

| Category | Tools & Libraries |
| :--- | :--- |
| **Data Processing & EDA** | Python (Pandas, NumPy, Matplotlib, Seaborn), Google Colab, Excel |
| **Database Management** | PostgreSQL, Relational Schema Design, Complex SQL Queries |
| **Business Intelligence** | Power BI (DAX, Interactive Dashboards, Predictive Analytics) |

---

## 📁 Repository Structure

```text
├── Task_1/             # Data Cleaning and Preprocessing
│   ├── Resources/      # Raw/cleaned datasets and supporting assets
│   └── README.md       # Task 1 documentation
├── Task_2/             # Data Visualization and Storytelling
│   ├── Resources/      # Power BI dashboards and analysis files
│   └── README.md       # Task 2 documentation
├── Task_3/             # Interactive Dashboard for Stakeholders
│   ├── Resources/      # Power BI reports and data models
│   └── README.md       # Task 3 documentation
├── Task_4/             # SQL for Data Analysis
│   ├── Resources/      # DDL schema scripts, CSV imports, SQL queries
│   └── README.md       # Task 4 documentation
├── Task_5/             # Exploratory Data Analysis (EDA)
│   ├── Resources/      # execution script and visual plots
│   └── README.md       # Task 5 documentation
├── Task_6/             # Sales Trend Analysis Using Aggregations
│   ├── Resources/      # CSV imports, SQL queries
│   └── README.md       # Task 6 documentation
├── Task_7/             # Sales Summary from SQLite Database using Python
│   ├── Resources/      # CSV imports, execution script, Generated SQLite db file, Visual bar chart output
│   └── README.md       # Task 7 documentation
└── README.md           # Main portfolio overview guide

```
---

## 📝 Task Details & Summary

### 🧹 Task 1: Data Cleaning and Preprocessing
* **Objective:** Audit and clean a raw dataset containing missing values, duplicate records, inconsistent text formats, improper date structures, and incorrect data types.
* **Key Deliverables:** Standardized column naming conventions, handled missing entries via imputation and filtering, removed duplicate records, and converted data
 types to produce a clean, ready-to-analyze dataset.

---

### 📈 Task 2: Data Visualization and Storytelling
* **Objective:** Build an interactive Power BI dashboard to analyze historical retail sales performance and deliver data-driven business storytelling.
* **Key Deliverables:** Performed multi-level root-cause driver analyses, mapped sales trends, and generated predictive time-series sales forecasts with confidence bounds.

---

### 📊 Task 3: Interactive Dashboard for Business Stakeholders
* **Objective:** Create an executive-facing Power BI dashboard evaluating Superstore performance across customer segments, regions, and product categories.
* **Key Deliverables:** Integrated top-level KPI cards, customer segmentation breakdowns, regional drill-down decomposition trees, interactive slicers, and sales projections.

---

### 🗄️ Task 4: SQL for Data Analysis
* **Objective:** Model a relational database schema for an e-commerce platform in PostgreSQL and execute analytical queries.
* **Key Deliverables:** Constructed relational tables (`customers`, `orders`, `products`, `order_items`), executed multi-table `JOIN` operations, subqueries, aggregate metrics, and optimized queries with index structures.

---

### 📊 Task 5: Exploratory Data Analysis (EDA)
* **Objective:** Perform visual and statistical data exploration on the Superstore Sales dataset to extract commercial growth insights and detect operational risks.
* **Key Deliverables:** Evaluated distribution skewness, quantified profit margin erosion from high discount rates, identified enterprise sales outliers using IQR bounds, and formulated actionable business recommendations.

---

### 📈  Task 6: Sales Trend Analysis Using Aggregations
* **Objective:** Analyze sales performance over time using PostgreSQL aggregation techniques. The analysis focuses on monthly revenue, order volume, sales trends, and identifying the highest-performing sales months.
* **Key Deliverables:** Calculating monthly revenue and order volume, analyzing sales trends by year and month, evaluating sales performance for specific time periods, and identifying the top three months with the highest sales revenue using PostgreSQL aggregation and sorting techniques.

### 📈  Task 7: Sales Summary from SQLite Database using Python
* **Objective:** Demonstrates practical integration between Python and SQL workflow that loads transactional sales data into a lightweight, serverless SQLite database, extracts aggregated product performance metrics using standard SQL queries, and visualizes revenue trends with Matplotlib.
* **Key Deliverables:**
   * **`sales_data.db`**: An embedded SQLite database file storing the `sales` table.
   * **`sql_inside_python.py`**: A Python script that connects to the database, executes aggregation queries, and generates chart outputs.
   * **`sales_chart.png`**: A saved visual bar chart rendering the total revenue generated per product.
 
