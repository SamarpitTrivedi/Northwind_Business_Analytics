# 🧭 Northwind Sales Analysis Dashboard

> A multi-page business intelligence project built on the classic Northwind dataset — covering Sales, Customers, Employees, and Suppliers through SQL analysis and an interactive Power BI dashboard.

<!-- BADGE PLACEHOLDERS — update once repo is live -->
![Status](https://img.shields.io/badge/status-active-brightgreen)
![Tool](https://img.shields.io/badge/BI%20Tool-Power%20BI-F2C811?logo=powerbi)
![SQL](https://img.shields.io/badge/SQL-MySQL-4479A1?logo=mysql&logoColor=white)
![License](https://img.shields.io/badge/license-MIT-blue)

---

## 📌 Table of Contents

- [What This Project Does](#what-this-project-does)
- [Why It's Useful](#why-its-useful)
- [Dataset Overview](#dataset-overview)
- [Project Structure](#project-structure)
- [Dashboard Pages](#dashboard-pages)
- [Key Analysis Questions](#key-analysis-questions)
- [Getting Started](#getting-started)
- [Screenshots](#screenshots)
- [Presentation & Video Walkthrough](#presentation--video-walkthrough)
- [Key Insights](#key-insights)
- [Contributing](#contributing)
- [Support](#support)
- [Maintainer](#maintainer)

---

## What This Project Does

This project performs end-to-end sales analysis on the **Northwind database** — a fictional trading company dataset spanning **830 orders**, **91 customers**, **77 products**, **29 suppliers**, and **9 employees** across **21 countries** (Aug 1994 – Jun 1996).

The analysis answers 15+ business questions across four analytical domains using:
- **MySQL** for data extraction, transformation, and insight generation
- **Power BI** for interactive, multi-page dashboarding

---

## Why It's Useful

| Benefit | Detail |
|---|---|
| **End-to-end workflow** | SQL analysis directly feeding a Power BI dashboard |
| **Real business questions** | Customer LTV, employee performance, supplier geography, seasonal trends |
| **Reusable SQL queries** | Window functions, CTEs, date logic — portable to any MySQL instance |
| **Ready-to-use `.pbix`** | Open and connect; slicers, KPI cards, and chart zones pre-built |
| **Multi-domain coverage** | Customers, Sales, Employees, Suppliers — one dashboard, four perspectives |

---

## Dataset Overview

| Table | Rows | Key Fields |
|---|---|---|
| `orders` | 830 | OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate, ShipCountry |
| `order_details` | 2,155 | OrderID, ProductID, UnitPrice, Quantity, Discount |
| `customers` | 91 | CustomerID, CompanyName, Country, ContactTitle |
| `products` | 77 | ProductID, ProductName, SupplierID, CategoryID, UnitPrice |
| `employees` | 9 | EmployeeID, Title, HireDate, BirthDate, Country |
| `suppliers` | 29 | SupplierID, CompanyName, Country |
| `categories` | 8 | CategoryID, CategoryName |
| `shippers` | 3 | ShipperID, CompanyName |

**Date range:** August 1994 – June 1996  
**Revenue range per order:** $12.50 – $16,387.50 (median: $943)  
**Avg shipping duration:** 8.5 days (range: 1–37 days)

---

## Project Structure

```
northwind-sales-analysis/
│
├── data/                              # Raw CSV exports
│   ├── customers.csv
│   ├── orders.csv
│   ├── order_details.csv
│   ├── products.csv
│   ├── employees.csv
│   ├── suppliers.csv
│   ├── categories.csv
│   └── shippers.csv
│
├── sql/                               # MySQL analysis scripts
│   ├── upto_q3.sql                    # Customer distribution & clustering
│   ├── upto_q4.sql                    # Order frequency (LAG window function)
│   ├── upto_q5.sql                    # Customer segment order patterns
│   ├── upto_q8.sql                    # Employee title, hire trends, geography
│   └── upto_q9.sql                    # Product pricing, supplier analysis
│
├── dashboard/
│   └── Northwind.pbix                 # Power BI dashboard file
│
├── assets/                            # Screenshots, presentation, video
│   ├── screenshots/
│   ├── Northwind_Presentation.pptx    # ← paste your PPT here
│   ├── Northwind_Insights.xlsx        # ← paste your Excel here
│   └── demo_walkthrough.mp4           # ← paste your video here
│
└── README.md
```

---

## Dashboard Pages

The Power BI file contains **5 analytical pages**, each with KPI cards, dynamic slicers, and 4–5 chart visuals.

### 1. 📈 Sales Overview
Revenue trends, product performance, seasonality heatmap, top products by revenue, ship country map.

### 2. 📈 Operations Overview
Avg Shipping Time, Quantity Distribution, Price Distribution.

### 3. 👥 Customers
Customer geography, segment distribution by LTV, order frequency histogram, top customers by lifetime value.

### 4. 🧑‍💼 Employees
Orders handled per employee, revenue generated per rep, regional coverage map, monthly performance trends.

### 5. 🏭 Suppliers
Products per supplier, category mix breakdown, supplier geography, stock health scatter (units in stock vs on order).

**Global slicers on every page:** Year · Quarter · Category/Context filter · Country · Shipper/Status

---

## Key Analysis Questions

<details>
<summary><strong>Customers (Q1–Q3)</strong></summary>

1. How does customer distribution vary across countries/cities? *(Bar chart, map)*
2. What is the trend in customer orders over time? *(Line/area chart)*
3. What is the distribution of customers by Contact Title or Region? *(Pie / stacked bar)*

</details>

<details>
<summary><strong>Orders (Q4–Q6)</strong></summary>

4. How does order volume change over time? *(Line chart / stacked bar)*
5. What is the distribution of order values? *(Histogram / box plot)*
6. What is the average order shipping duration? *(Bar chart / box plot)*

</details>

<details>
<summary><strong>Employees (Q7–Q9)</strong></summary>

7. What is the count of employees by job title or region? *(Stacked bar / treemap)*
8. What is the distribution of employee tenure? *(Histogram / box plot)*
9. What is the reporting structure among employees? *(Org chart / hierarchical tree)*

</details>

<details>
<summary><strong>Products & Suppliers (Q10–Q15)</strong></summary>

10. Which products have the highest sales volume? *(Bar chart / treemap)*
11. How does sales volume vary across product categories? *(Stacked bar / treemap)*
12. Can we visualize pricing distribution of products? *(Box plot / histogram)*
13. How many products are supplied by each supplier? *(Bar / pie chart)*
14. How does product pricing vary across suppliers? *(Box plot / stacked column)*
15. What is the geographical distribution of suppliers? *(Map / bubble map)*

</details>

---

## Getting Started

### Prerequisites

- [MySQL 8.0+](https://dev.mysql.com/downloads/)
- [Power BI Desktop](https://powerbi.microsoft.com/desktop/) (free)

### 1. Load the Database

```sql
-- Create and use the database
CREATE DATABASE northwind;
USE northwind;

-- Import CSVs using MySQL Workbench Table Data Import Wizard
-- or use LOAD DATA INFILE for each table in /data/
```

### 2. Run SQL Analysis

```bash
# Run scripts in order
mysql -u root -p northwind < sql/upto_q3.sql
mysql -u root -p northwind < sql/upto_q4.sql
mysql -u root -p northwind < sql/upto_q5.sql
mysql -u root -p northwind < sql/upto_q8.sql
mysql -u root -p northwind < sql/upto_q9.sql
```

### 3. Open Power BI Dashboard

1. Open `dashboard/Northwind.pbix` in Power BI Desktop
2. Go to **Home → Transform Data → Data Source Settings**
3. Update the file path to point to your local `/data/` CSVs
4. Click **Refresh** — all visuals will populate

---

## Screenshots

> 📷 *Take these after your dashboard is finalized. Use Windows `Win + Shift + S` or Power BI's built-in export.*

### Sales Overview Page
```
[ INSERT SCREENSHOT: assets/screenshots/sales_overview.png ]
```

### Customers Page
```
[ INSERT SCREENSHOT: assets/screenshots/customers_page.png ]
```

### Employees Page
```
[ INSERT SCREENSHOT: assets/screenshots/employees_page.png ]
```

### Suppliers Page
```
[ INSERT SCREENSHOT: assets/screenshots/suppliers_page.png ]
```

---

## Presentation & Video Walkthrough

| Asset | File | Description |
|---|---|---|
| 📊 Slide Deck | `assets/Northwind_Presentation.pptx` | Project overview, methodology, key findings |
| 📋 Excel Summary | `assets/Northwind_Insights.xlsx` | Tabular findings, pivot summaries, raw metrics |
| 🎥 Video Demo | `assets/demo_walkthrough.mp4` | Full dashboard walkthrough with commentary |

> *Paste your `.pptx`, `.xlsx`, and `.mp4` files into the `assets/` folder and update the filenames above if needed.*

---

## Key Insights

> 📝 *Fill these in once your dashboard is complete.*

### 💰 Revenue
- [ ] Top revenue-generating product category: **[CategoryName]**
- [ ] Peak sales month/quarter: **[Period]**
- [ ] Median order value: **$943** | Max: **$16,387**

###⚙️ Operations
- [ ] Avg shipping time: 8.49 days (max: **37 days**, significant delay outliers present)
- [ ] On-time delivery rate: **36% **— indicates the majority of orders are delayed
- [ ] Slowest shipping countries: Ireland, Sweden, Switzerland (**~10–11 days avg**) — priority for logistics improvement

### 👥 Customers
- [ ] Top customer country: **USA (13 customers)**
- [ ] Most common Contact Title: **Sales Representative / Owner (tied at 17 each)**
- [ ] Customers with 10+ orders: **[Count]** — high-value repeat segment

### 🧑‍💼 Employees
- [ ] Avg shipping time: **8.5 days** (max 37 days — outliers to investigate)
- [ ] Top performer by orders handled: **[Employee Name]**
- [ ] Tenure range: **4.1 – 6.8 years** (stable, long-tenured team)

### 🏭 Suppliers
- [ ] USA leads supplier count (4), followed by Germany and France (3 each)
- [ ] Highest avg product price supplier: **Aux joyeux ecclésiastiques ($140.75 avg)**
- [ ] Most product-dense category: **Confections (13 products)**

---

## Contributing

Contributions are welcome. To add new analysis questions or SQL scripts:

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/q16-rfm-analysis`
3. Commit your changes: `git commit -m "Add RFM segmentation query"`
4. Push and open a Pull Request

Please follow the existing SQL naming convention (`upto_qN.sql`) and document each query with a comment explaining the business question it answers.

See [`CONTRIBUTING.md`](CONTRIBUTING.md) for full guidelines.

---

## Support

- **Open an issue** for bugs, broken queries, or dashboard connection problems
- **Start a discussion** for analysis questions or feature suggestions
- **SQL compatibility note:** Queries use MySQL 8.0 syntax (`DATEDIFF`, `STR_TO_DATE`, `YEAR()`, `QUARTER()`). Minor adjustments needed for PostgreSQL or SQLite.

---

## Maintainer

**[Your Name]**  
[GitHub](https://github.com/yourusername) · [LinkedIn](https://linkedin.com/in/yourprofile)

> Built as part of a Data Analyst → Data Scientist transition portfolio. Focused on execution: SQL extraction and Power BI storytelling in one end-to-end project.

---

*Dataset: Northwind Traders (Microsoft sample database). No real business data.*