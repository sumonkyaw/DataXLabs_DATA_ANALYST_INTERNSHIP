
# Task 5: Exploratory Data Analysis (EDA) - Superstore Sales & Financial Data

Exploratory Data Analysis (EDA) project evaluating distribution profiles, feature correlations, operational anomalies, and business drivers on the Superstore Sales & Financial dataset

---

## 📌 Project Overview & Objectives
The primary objective of this task is to perform statistical and visual data exploration on the Superstore Sales dataset to uncover revenue drivers, analyze distribution behaviors, detect operational anomalies, and extract actionable commercial insights.

### Key Analysis Pillars:
1. **Univariate Analysis:** Evaluate individual variable distributions (Sales, Profit, Quantity, Discount).
2. **Bivariate & Multivariate Analysis:** Identify correlations, revenue drivers, and category performance relationships.
3. **Outlier Detection:** Detect data anomalies and assess business rule/policy compliance.
4. **Strategic Recommendations:** Translate statistical findings into high-impact business decisions.

---

## 📊 Exploratory Data Analysis Findings

### 1. Distribution Patterns (Univariate Analysis)
| Variable | Distribution Type | Key Findings | Visualization Used |
| :--- | :--- | :--- | :--- |
| **Sales** | Right-Skewed | Baseline sales cluster between **$0 – $1,000**, with extreme enterprise orders extending up to **$22,500+** | Histograms / Density Plots |
| **Profit** | Right-Skewed | Standard orders yield profits between **$0 – $500**, while top-tier enterprise sales stretch to **$4,500+** | Histograms / Density Plots |
| **Quantity** | Discrete Uniform | Uniform frequency across values **1 to 10** (~1,000 occurrences per level), reflecting stable bulk habits. | Bar Charts / Histograms |
| **Discount** | Tri-Modal | Strictly concentrated around three corporate policy tiers: **0%**, **10%**, and **20%**. | Bar Charts / Histograms |

---

### 2. Correlations & Business Drivers (Bivariate & Multivariate)
* **Sales vs. Profit Dynamics (*Scatter Plots*):** Strong positive linear correlation ($r = 1.00$). Order volume directly drives gross margin profitability across all categories[cite: 2].
* **Category Breakdown (*Stacked Bar Charts*):**
  * **Technology:** Dominates the top revenue tier (**$10,000 – $22,500+**), yielding highest individual transaction margins.
  * **Office Supplies & Furniture:** Represent majority of routine sales volume (**$0 – $5,000**), providing steady margin baseline.
* **Quantity & Discount Friction (*Correlation Heatmap*):**
  * **Quantity vs. Profit:** Negligible correlation ($r = 0.01$)[cite: 2]; unit product value dictates total profit far more than order quantity.
  * **Discount Impact:** Slight inverse correlation ($r = -0.05$) with profit, underscoring the necessity of strict discount limits.

---

### 3. Outlier & Anomaly Detection
* **Revenue & Profit Outliers (*Box Plots*):** Extensive upper-tail outliers beyond the $1.5 \times \text{IQR}$ threshold, representing high-value enterprise transactions in the Technology segment.
* **Compliance & Data Integrity (*Box Plots*):** Zero outliers detected for **Quantity** (1–10 units) and **Discount** (0%–20%), verifying clean data entry and system guardrail adherence.

---

## 💡 Strategic Business Recommendations
1. **Focus on Technology Accounts:** Prioritize sales account management in the Technology sector, which produces the highest revenue and profit margins per order.
2. **Cap Discount Policies:** Enforce the strict 20% discount cap across sales channels to prevent profit margin erosion on large orders.
3. **Inventory Buffer Management:** Maintain balanced stock levels across 1–10 unit quantities due to uniform ordering frequency across unit counts.

---



