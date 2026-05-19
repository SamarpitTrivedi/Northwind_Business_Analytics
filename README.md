# 📊 Northwind Sales Analysis — Business Intelligence Portfolio Project

<div align="center">

![Northwind Banner](https://img.shields.io/badge/Project-Northwind%20Sales%20Analysis-2563EB?style=for-the-badge&logo=databricks&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![Power BI](https://img.shields.io/badge/Power%20BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![Excel](https://img.shields.io/badge/Microsoft%20Excel-217346?style=for-the-badge&logo=microsoftexcel&logoColor=white)

**A full-stack Business Intelligence report covering sales performance, customer behaviour, supplier pricing, shipping operations, and employee analytics — built on the Northwind Traders dataset.**

[📄 View Full Report](./Northwind_Business_Report.pdf) · [💼 Portfolio](https://samarpit-portfolio.xvercel.app/) · [🔗 LinkedIn](https://linkedin.com/in/samarpittrivedi/) · [🐙 GitHub](https://github.com/SamarpitTrivedi)

</div>

---

## 📌 Table of Contents

- [Project Overview](#-project-overview)
- [Key Metrics at a Glance](#-key-metrics-at-a-glance)
- [Tools & Tech Stack](#-tools--tech-stack)
- [Project Structure](#-project-structure)
- [Dashboard Previews](#-dashboard-previews)
  - [1. Customer Analysis](#1-customer-analysis)
  - [2. Sales & Product Analysis](#2-sales--product-analysis)
  - [3. Operations & Shipping](#3-operations--shipping)
  - [4. Supplier Analysis](#4-supplier-analysis)
  - [5. Employee Analysis](#5-employee-analysis)
- [SQL Query Index](#-sql-query-index)
- [Excel Models](#-excel-models)
- [Key Findings & Business Insights](#-key-findings--business-insights)
- [Strategic Recommendations](#-strategic-recommendations)
- [Dataset Overview](#-dataset-overview)
- [How to Run](#-how-to-run)
- [Connect](#-connect)

---

## 🧭 Project Overview

This project is an **end-to-end Business Intelligence analysis** of Northwind Traders — a simulated trading company with customers, suppliers, and orders spanning 21 countries. The goal was to go beyond surface-level reporting and deliver **actionable insights** across five analytical domains using real analyst workflows.

Every SQL query was mapped to a specific business question. Every dashboard visual answers something a stakeholder would ask. Every Excel model has a direct business use case.

> **Approach:** Question-first → Data → Insight → Recommendation

---

## 📈 Key Metrics at a Glance

| Metric | Value |
|---|---|
| 💰 Total Revenue | **$1.27M** |
| 🛒 Total Orders | **2,155** |
| 👥 Total Customers | **91** (73 active) |
| 📦 Total Products | **77** across 8 categories |
| 🏭 Suppliers | **29** across 21 countries |
| 👨‍💼 Employees | **9** |
| 📊 Avg Order Value | **$1,530** |
| 🏷️ Avg Customer LTV | **$14,220** |
| ⏱️ Avg Shipping Days | **8.49 days** |
| ✅ On-Time Delivery Rate | **36%** ⚠️ |

---

## 🛠️ Tools & Tech Stack

| Tool | Usage |
|---|---|
| **MySQL** | 14 queries — JOINs, CTEs, Window Functions (LAG, PARTITION BY), correlated subqueries, HAVING |
| **Power BI** | 5 interactive dashboards — KPI cards, treemaps, bar/line/scatter charts, country filters |
| **Excel** | Goal Seek scenario modelling, SUMIF/COUNTIF segmentation, IF-based supplier pricing flags |

---

# 📁 Project Structure

```bash
NORTHWIND-BUSINESS-ANALYTICS/
│
├── 📂 Business Report
│   ├── Northwind_Business_Report.pdf
│
├── 📂 Dashboard
│   ├── Northwind.pbix
│   ├── Northwind.pdf
│
├── 📂 Dashboard Screenshots
│   ├── Customers.png
│   ├── Employees.png
│   ├── Operations.png
│   ├── Sales.png
│   ├── Suppliers.png
│
├── 📂 Data
│   ├── categories.csv
│   ├── customers.csv
│   ├── employees.csv
│   ├── order_details.csv
│   ├── orders.csv
│   ├── products.csv
│   ├── shippers.csv
│   ├── suppliers.csv
│
├── 📂 Deliverables
│   ├── Northwind_Excel_Portfolio.xlsx
│   ├── SQL_Queries.xlsx
│
├── 📂 SQL
│   ├── Q1.sql
│   ├── Q2.sql
│   ├── Q3.sql
│   ├── Q4.sql
│   ├── Q5.sql
│   ├── Q6.sql
│   ├── Q7.sql
│   ├── Q8.sql
│   ├── Q9.sql
│   ├── Q10.sql
│   ├── Q11.sql
│   ├── Q12.sql
│   ├── Q13.sql
│   ├── Q14.sql
├── Local Instance.session.sql
│
├── README.md
```


---

## 📊 Dashboard Previews

### 1. Customer Analysis
<img src="Dashboard Screenshots\Customers.png">
> **Business Question:** Who are our customers, where are they, and how often do they order?

**Key Findings:**
- 🌍 **USA, France, and Germany** account for the largest share of the customer base
- 📈 **Active customer rate: 80%** — 73 of 91 customers placed at least one order
- 📅 **Order volume peaks in May** (~115 orders) then collapses to July lows (~30 orders)
- 🏢 Top contact titles: Owner & Sales Representative — Northwind primarily serves **SMBs where decision-makers order directly**
- 💡 18 inactive customers represent a re-engagement opportunity worth **~$255K** in potential revenue at average LTV

---

### 2. Sales & Product Analysis
<img src="Dashboard Screenshots\Sales.png" >

> **Business Question:** Which products and categories drive revenue, and where is volume dropping?

**Key Findings:**
- 🏆 **Beverages is the #1 revenue category** at ~$268K (~21% of total)
- ⚠️ **Cote de Blaye** ($141,397) drives the majority of Beverages revenue — a single-SKU concentration risk
- 📉 **Q3 order volume drops 47%** from Q1 highs (16K → 8K units) — a significant seasonal dip
- 💸 Beverages receives the **most discounting** across all categories, compressing margins despite high order count
- 🥇 Top 10 products: Cote de Blaye, Thüringer Rostbratwurst, Raclette Courdavault, Tarte au Sucre...

---

### 3. Operations & Shipping
<img src="Dashboard Screenshots\Operations.png" >
> **Business Question:** How efficient is our logistics, and where are shipments failing?

**Key Findings:**
- 🚨 **Only 36% of orders arrive on time** — fewer than 4 in 10 shipments are punctual
- 🇮🇪 **Ireland is the worst-performing region** at ~12 days avg, followed by Sweden and Switzerland
- ⏳ **Max delay: 37 days** — extreme outliers likely tied to specific carriers or routes
- 📦 **Seafood is the most overstocked category** (~700 units) yet is not a top revenue contributor — tied-up working capital

---

### 4. Supplier Analysis
<img src="Dashboard Screenshots\Suppliers.png">

> **Business Question:** Are we sourcing cost-effectively, and where is our supplier risk concentrated?

**Key Findings:**
- 🇺🇸 **USA has 12 suppliers at $20.87 avg unit price** — most cost-efficient sourcing geography
- 🇫🇷 **France: only 5 suppliers but $76.75 avg unit price** — nearly 4× the global average (~$21)
- 🏭 **Pavlova Ltd.** has the highest product count per company — concentration risk if this supplier is disrupted
- ⚠️ Some products show high on-order quantities but low stock — potential fulfilment delays

---

### 5. Employee Analysis
<img src="Dashboard Screenshots\Employees.png">

> **Business Question:** How is revenue distributed across the team, and what are the workforce risks?

**Key Findings:**
- 👑 **Margaret Peacock** is the top revenue-generating employee at ~$250K
- 🥈 Top 3 employees (Peacock, Leverling, Davolio) account for **~60% of all employee-attributed revenue**
- ⏳ All 9 employees have **32–34 years of tenure** — experienced team but a succession planning risk
- 📅 Hiring evenly distributed across all 4 quarters — no seasonal pattern

---

## 🗃️ SQL Query Index

All 14 queries are available in [`SQL_Queries.xlsx`](./sql/SQL_Queries.xlsx) with results.

| # | Sheet | Business Question | SQL Technique |
|---|---|---|---|
| Q1 | Q1 | Average orders per customer / high-value repeat customers | `GROUP BY`, `ORDER BY`, `COUNT` |
| Q2 | Q2 | Order patterns by city and country | `GROUP BY`, multi-column aggregation |
| Q3 | Q3 | Customer spend clustering by category | Multi-table `JOIN`, `SUM`, `GROUP BY` |
| Q4 | Q4 | Category & product revenue analysis | `JOIN`, aggregation, category-country correlation |
| Q5 | Q5 | Order frequency — days between orders per customer | `LAG()` window function, `PARTITION BY` |
| Q6 | Q6 | Employee geographic distribution by title | `GROUP BY`, `COUNT` |
| Q7 | Q7 | Annual hiring patterns over time | `YEAR()`, `GROUP BY` |
| Q8 | Q8 | Title & courtesy title distribution | `COUNT`, pattern analysis |
| Q9 | Q9 | Price, stock & sales correlation | Multi-column `JOIN`, price vs. stock comparison |
| Q10 | Q10 | Seasonal demand by category (quarterly) | Quarterly aggregation, `GROUP BY` |
| Q11 | Q11 | Revenue anomaly — bottom 5 underperforming products | `ORDER BY ASC`, `LIMIT` |
| Q12 | Q12 | Supplier regional pricing by country | `AVG`, `GROUP BY` country |
| Q13 | Q13 | Supplier-category mapping by product count | Multi-table `JOIN`, `COUNT` |
| Q14 | Q14 | Highest-priced category per supplier country | **Correlated subquery** |

### Sample Query — Customer Order Frequency with LAG()

```sql
-- Q5: Average days between orders per customer (using window function)
SELECT 
    CustomerID,
    OrderDate,
    LAG(OrderDate) OVER (PARTITION BY CustomerID ORDER BY OrderDate) AS PrevOrderDate,
    DATEDIFF(OrderDate, LAG(OrderDate) OVER (PARTITION BY CustomerID ORDER BY OrderDate)) AS DaysBetweenOrders
FROM orders;
```

### Sample Query — Correlated Subquery for Highest-Priced Category per Country

```sql
-- Q14: Highest avg-priced product category per supplier country
SELECT s.Country, c.CategoryName, AVG(p.UnitPrice) AS AvgPrice
FROM suppliers s
JOIN products p ON s.SupplierID = p.SupplierID
JOIN categories c ON p.CategoryID = c.CategoryID
GROUP BY s.Country, c.CategoryName
HAVING AVG(p.UnitPrice) = (
    SELECT MAX(sub_avg)
    FROM (
        SELECT AVG(p2.UnitPrice) AS sub_avg
        FROM products p2
        JOIN suppliers s2 ON p2.SupplierID = s2.SupplierID
        WHERE s2.Country = s.Country
        GROUP BY p2.CategoryID
    ) AS sub
);
```

---

## 📋 Excel Models

File: [`Northwind_Excel_Portfolio.xlsx`](./excel/Northwind_Excel_Portfolio.xlsx)

| Sheet | Model | Description |
|---|---|---|
| Goal Seek | Revenue Scenario Model | What revenue target requires X% order growth? Uses Excel Goal Seek to back-solve for required inputs |
| Segmentation | Customer Segmentation | SUMIF/COUNTIF to tier customers by total spend and order count |
| Supplier Flags | Pricing Threshold Flags | IF-based flags to identify suppliers priced above global average threshold — dynamic threshold input |

---

## 💡 Key Findings & Business Insights

### Revenue
- Northwind generated **$1.27M** across 2,155 orders from 91 customers
- **Top 3 customers** (QUICK, SAVEA, ERNSH) account for a disproportionate share — customer concentration risk mirrors the Beverages SKU problem
- Avg order value of **$1,530** with avg customer LTV of **$14,220**

### Seasonality
- A **47% drop in Q3 order volume** is the single largest revenue opportunity — a June–August promotion targeting top-spending customers could recover meaningful revenue

### Logistics
- **64% of shipments are late** — this is not a minor inefficiency; it is a direct customer retention risk
- The issue is **geographically concentrated**: Ireland, Sweden, Switzerland are highest-delay markets → carrier-level audit needed

### Suppliers
- French suppliers cost **3.7× the global average** with no evidence customers pay premium prices for French-origin products
- US suppliers are the most cost-efficient and already the most numerous — scaling US sourcing could improve margins

### Inventory
- Seafood is the most overstocked category (700 units) with the lowest revenue contribution — capital is being allocated inefficiently

---

## 🎯 Strategic Recommendations

| Priority | Area | Problem | Recommendation |
|---|---|---|---|
| 🔴 High | Operations | 64% of orders ship late | Audit logistics partners for Ireland, Sweden, Switzerland. Set SLA targets per carrier. |
| 🔴 High | Revenue Risk | Cote de Blaye drives majority of Beverages revenue | Actively promote 2–3 underperforming Beverages SKUs to reduce single-product dependency |
| 🟡 Medium | Seasonality | Q3 volume drops 47% from Q1 | Launch mid-year promotion targeting top 20 customers by spend in June–August |
| 🟡 Medium | Customers | 18 customers (20%) are inactive | Re-engagement campaign: 5 conversions = ~$71K recovered revenue at avg LTV |
| 🟢 Low | Supplier Cost | France avg price ($76.75) = 3.7× global avg | Review French supplier contracts; substitute with US/German alternatives for non-premium SKUs |
| 🟢 Low | Inventory | Seafood overstocked vs. revenue contribution | Reduce Seafood reorder quantities; redirect freed capital toward Meat/Poultry |

---

## 🗂️ Dataset Overview

| Entity | Count |
|---|---|
| Customers | 91 (73 active) |
| Products | 77 |
| Categories | 8 |
| Suppliers | 29 |
| Employees | 9 |
| Orders | 2,155 |
| Countries | 21 |

**Source:** Northwind Traders — standard BI practice dataset (MySQL)

The Northwind schema consists of interconnected tables: `customers`, `orders`, `orderdetails`, `products`, `categories`, `suppliers`, `employees`, `shippers`. All 14 SQL queries use multi-table JOINs across this schema.

---

## ▶️ How to Run

### SQL (MySQL)

```bash
# 1. Import Northwind database
mysql -u root -p < northwind.sql

# 2. Open any query from SQL_Queries.xlsx
# 3. Run against your local MySQL instance
```

### Power BI

- Open `.pbix` file in Power BI Desktop
- Update data source connection to your MySQL instance
- Refresh to load live data

### Excel

- Open `Northwind_Excel_Portfolio.xlsx`
- Enable macros if prompted
- Adjust threshold values in supplier flag sheet to see dynamic updates
- Use Data → What-If Analysis → Goal Seek for the revenue scenario model

---

## 🔗 Connect

<div align="center">

| | |
|---|---|
| 🌐 Portfolio | [samarpit-portfolio.vercel.app](https://samarpit-portfolio.vercel.app/) |
| 💼 LinkedIn | [linkedin.com/in/samarpittrivedi](https://linkedin.com/in/samarpittrivedi/) |
| 🐙 GitHub | [github.com/SamarpitTrivedi](https://github.com/SamarpitTrivedi) |

</div>

---

<div align="center">

**Built with MySQL · Power BI · Excel**

*Northwind Traders Dataset · May 2026*

⭐ If this project helped you, consider starring the repo!

</div>
