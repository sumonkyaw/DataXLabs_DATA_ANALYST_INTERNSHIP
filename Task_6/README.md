# TASK 6: Sales Trend Analysis Using Aggregations

## 📌 Objective

Analyze monthly sales performance using PostgreSQL aggregation functions.

The analysis focuses on:

- Monthly revenue
- Monthly order volume
- Sales trends over time
- Top 3 months by sales
- Sales performance within a specific time period

---

## 🎯 Business Questions

This analysis answers the following business questions:

1. How much revenue was generated each month?
2. How many orders were placed each month?
3. How does sales performance change over time?
4. Which three months generated the highest revenue?
5. How did sales perform during a specific time period?

---

## 💼 Business Logic

### 1. Monthly Revenue

Monthly revenue is calculated by multiplying the quantity sold by the product price and then summing the values for each month.

**Formula:**

`Monthly Revenue = SUM(Quantity × Product Price)`

This helps the business understand how much sales revenue was generated each month.

---

### 2. Monthly Order Volume

Order volume is calculated using the number of unique orders placed during each month.

**Formula:**

`Order Volume = COUNT(DISTINCT Order ID)`

Using `DISTINCT` ensures that each order is counted only once.

This metric helps measure customer purchasing activity and demand.

---

### 3. Monthly Grouping

Orders are grouped by:

- Year
- Month

The `EXTRACT()` function is used to identify the year and month from the order date.

Grouping by both year and month prevents the same month from different years from being combined.

For example:

- January 2023
- January 2024

are treated as two separate periods.

---

### 4. Sales Trend Analysis

Monthly revenue and order volume are sorted chronologically using `ORDER BY`.

This allows the business to identify:

- Increasing sales
- Decreasing sales
- Peak sales periods
- Low-performing months
- Seasonal patterns

---

### 5. Top 3 Sales Months

Monthly revenue is sorted from highest to lowest.

The top three months are then identified using:

`ORDER BY monthly_revenue DESC`

and

`LIMIT 3`

This helps management identify the strongest sales periods.

---

### 6. Time Period Analysis

A date filter can be applied to analyze sales during a specific period.

For example, the analysis can be limited to a particular year.

This allows the business to compare sales performance across different periods.

---

## 🛠️ SQL Concepts Used

| SQL Concept | Purpose |
|---|---|
| `JOIN` | Connect order information with product price information |
| `EXTRACT()` | Extract year and month from the order date |
| `SUM()` | Calculate total monthly revenue |
| `COUNT(DISTINCT)` | Calculate unique order volume |
| `GROUP BY` | Aggregate data by year and month |
| `ORDER BY` | Sort monthly results |
| `LIMIT` | Return the top 3 sales months |
| `WHERE` | Filter data for a specific time period |

---

## 📊 Key Metrics

### Monthly Revenue

Measures the total value of sales generated during each month.

### Order Volume

Measures the number of unique orders placed during each month.

### Top 3 Sales Months

Identifies the three months with the highest total revenue.

---

## 📈 Expected Outcome

After completing this analysis, the business can:

- Monitor monthly sales performance
- Understand customer ordering activity
- Identify peak and low sales periods
- Detect potential seasonal sales patterns
- Identify the highest-performing sales months
- Support sales and marketing planning
- Make better inventory and resource allocation decisions

---

## 💡 Key Learning

This task demonstrates how PostgreSQL aggregation functions can be used to transform transaction-level data into meaningful business insights.

The main analytical process is:

**JOIN → EXTRACT → GROUP BY → SUM / COUNT → ORDER BY → LIMIT**

This workflow provides a foundation for more advanced sales trend analysis and business intelligence reporting.

---

## 👤 Project

**Task:** Sales Trend Analysis Using Aggregations  
**Database:** PostgreSQL  
**Focus:** Sales Analytics & Business Intelligence
