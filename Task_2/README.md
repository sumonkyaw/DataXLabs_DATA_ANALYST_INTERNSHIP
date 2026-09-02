# Superstore Sales Data Analysis & Sales Forecasting

An interactive Power BI dashboard designed to analyze historical retail sales performance, perform multi-level root-cause driver analyses, and forecast sales trajectories using predictive analytics.

---

## 📌 Project Overview

This project provides an end-to-end business intelligence solution using the Superstore dataset. It equips stakeholders with actionable insights into revenue distributions across customer segments, product categories, and regional hierarchies, alongside short-term forward-looking sales forecasts.

---

## 📊 Dashboard Features & Layout

* **High-Level KPI Summary:** Quick breakdown of sales distribution by customer segment (**Consumer**, **Corporate**, **Home Office**) and core product categories (**Technology**, **Furniture**, **Office Supplies**).
* **Time-Series Forecasting:** Historical sales analysis (2015–2018) paired with next-year sales projections, complete with confidence intervals to model seasonality and variance.
* **Root-Cause Analysis (Decomposition Tree):** Interactive drill-down capabilities allowing users to trace sales drivers from `State` ➔ `City` ➔ `Sub-Category` ➔ `Product Name`.
* **Dynamic Executive Insights:** Integrated commentary box summarizing top revenue drivers, geographic hotspots (e.g., California and New York performance), and key SKU contributors.
* **Regional Slicing:** Top-level visual filter buttons (`Central`, `East`, `South`, `West`) for instant cross-filtering across all visual elements.

---

## 🛠️ Data Architecture & Dimensions

The dataset is structured across several key analytical attributes:

| Field Name | Description | Example Values |
| :--- | :--- | :--- |
| `Segment` | Target customer demographic | Consumer, Corporate, Home Office |
| `Category` | High-level product group | Technology, Furniture, Office Supplies |
| `Sub-Category` | Detailed product classification | Phones, Chairs, Tables, Storage |
| `State / City` | Geographic operational boundaries | California (Los Angeles), New York (NYC) |
| `Sales` | Sum of revenue per transaction | $2,261,536.78 (Total Portfolio Sales) |

---

## 📈 Key Insights Summary

* **Primary Revenue Engine:** The **Consumer** segment represents over **50% ($1.15M)** of overall sales, with **Technology** taking the lead as the highest-performing category.
* **Geographic Leaders:** 
  * **California** leads state-level revenue at **$446.3K**, driven by **Los Angeles ($173.4K)** with strong performance in **Phones** (`Apple iPhone 5`).
  * **New York** follows at **$306.4K**, anchored heavily by **New York City ($252.5K)** across **Chairs** and **Phones**.
* **Forecast Trajectory:** Time-series trends show consistent end-of-year seasonal spikes, projecting sustained top-line growth into 2019.

---

## 🚀 How to Run the Report

1. Clone or download this repository.
2. Ensure **Power BI Desktop** is installed (latest version recommended).
3. Open `Superstore_Analysis_Dashboard.pbix`.
4. Use the **Region** slicer or click into the **Decomposition Tree** nodes to dynamically filter performance insights.
