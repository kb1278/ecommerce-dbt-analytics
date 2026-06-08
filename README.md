# 📊 Ecommerce Analytics Pipeline with dbt & DuckDB

## 🧠 Overview

This project demonstrates an end-to-end analytics engineering workflow using **dbt** and **DuckDB** on the Olist Brazilian E-Commerce dataset.

Raw transactional data is transformed into business-ready analytical models through a layered architecture that separates data cleaning, transformation, and reporting logic.

The project showcases modern analytics engineering practices including modular SQL development, dependency management, and reproducible data pipelines.

---

## 📦 Project Structure

```bash
models/
├── staging/
│   ├── stg_orders.sql
│   ├── stg_customers.sql
│   └── stg_payments.sql
│
└── marts/
    ├── fct_revenue.sql
    └── fct_monthly_revenue.sql
```

---

## ⚙️ Tech Stack

- dbt
- DuckDB
- SQL
- Git
- GitHub

---

## 📊 Data Source

This project uses the Olist Brazilian E-Commerce Dataset, containing:

- Customer orders
- Payment transactions
- Customer information
- Product data
- Seller information
- Geolocation data

---

## 🏗️ Data Architecture

### Staging Layer

The staging models standardise and prepare raw source data by:

- Renaming columns
- Formatting data types
- Applying basic data cleaning
- Creating consistent source models

**Models:**

- `stg_orders`
- `stg_customers`
- `stg_payments`

### Mart Layer

The mart layer creates business-ready datasets for analysis and reporting.

**Models:**

- `fct_revenue`
- `fct_monthly_revenue`

These models aggregate transactional data into reusable metrics that can be consumed by BI tools and downstream analytics workflows.

---

## 📈 Results

The pipeline generated business-ready analytical datasets from over **100,000 e-commerce orders**.

### Key Metrics

| Metric | Value |
|----------|----------:|
| Total Revenue | 16,008,872 BRL |
| Peak Revenue Month | November 2017 |
| Peak Monthly Revenue | 1,194,883 BRL |
| Highest Monthly Orders | 7,544 |
| Analysis Period | Sep 2016 – Oct 2018 |

### Business Insights

- Revenue increased significantly throughout 2017 as order volumes grew.
- November 2017 recorded the highest revenue and order volume.
- Monthly revenue exceeded 1 million BRL throughout much of 2018.
- The generated mart models support KPI reporting, trend analysis, and business performance monitoring.

---

## 🚀 Running the Project

### Install Dependencies

```bash
pip install dbt-core dbt-duckdb
```

### Run Models

```bash
dbt run
```

### Run Tests

```bash
dbt test
```

---

## 📊 Models Produced

### fct_revenue

Order-level revenue fact table containing:

- Order ID
- Purchase Timestamp
- Payment Value

### fct_monthly_revenue

Monthly aggregated metrics including:

- Revenue
- Order Count
- Revenue Trends

---

## 🧠 Key Learnings

- Built a layered dbt project using staging and mart models.
- Applied modular SQL transformations for reusable analytics workflows.
- Developed business-ready fact tables from raw transactional data.
- Used DuckDB as a lightweight analytical warehouse.
- Managed model dependencies and pipeline execution using dbt.
- Implemented version control using Git and GitHub.

---

## 📌 Future Enhancements

- Add dbt schema tests
- Implement source freshness checks
- Create reusable macros
- Add incremental models
- Integrate BI dashboards
- Deploy using dbt Cloud
