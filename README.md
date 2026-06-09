# 📊 Ecommerce Analytics Pipeline with dbt & DuckDB

## 🧠 Overview

This project demonstrates an end-to-end analytics engineering workflow using :contentReference[oaicite:0]{index=0} and DuckDB on the Olist Brazilian E-Commerce dataset.

Raw transactional data is transformed into business-ready analytical models through a layered ELT architecture that separates data ingestion, transformation, and analytics.

The project follows modern analytics engineering best practices including modular SQL development, layered data modelling (staging → marts), dependency-managed transformations, reproducible analytics pipelines, and automated data quality testing.


---

## 📦 Project Structure

 
 models/
 ├── staging/
 │   ├── stg_orders.sql
 │   ├── stg_customers.sql
 │   └── stg_payments.sql
 │
 └── marts/
     ├── fct_revenue.sql
     └── fct_monthly_revenue.sql


---


## ⚙️ Tech Stack

- DuckDB
- SQL
- Git
- GitHub
- Python

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
- Renaming columns for consistency
- Casting data types
- Handling null values
- Applying basic data cleaning
- Creating clean, reusable source models

Models:
- stg_orders
- stg_customers
- stg_payments

---

### Mart Layer

The mart layer creates business-ready analytical datasets for reporting and BI tools.

Models:
- fct_revenue
- fct_monthly_revenue

These models aggregate transactional data into KPI-ready datasets for analysis, reporting, and dashboarding.

---

## 🧪 Data Quality Testing

This project implements automated data validation using dbt tests to ensure data integrity and reliability across all staging models.

### Test Coverage

| Test Type | Applied To | Purpose |
|-----------|------------|----------|
| unique | Primary keys (order_id, customer_id) | Ensures no duplicate records |
| not_null | Key identifiers | Ensures completeness of critical fields |
| relationships (planned) | Foreign keys | Ensures referential integrity between models |

### Tested Models
- stg_orders
- stg_customers
- stg_payments

### How to Run Tests

dbt test

### Test Results
- 6 tests executed
- 0 failures
- 100% data integrity at staging layer

---

## 📈 Results

The pipeline generated business-ready analytical datasets from over 100,000 e-commerce orders.

### Key Metrics

| Metric | Value |
|----------|----------:|
| Total Revenue | 16,008,872 BRL |
| Peak Revenue Month | November 2017 |
| Peak Monthly Revenue | 1,194,883 BRL |
| Highest Monthly Orders | 7,544 |
| Analysis Period | Sep 2016 – Oct 2018 |

---

### Business Insights

- Revenue increased significantly throughout 2017 driven by rising order volumes.
- November 2017 recorded the highest revenue and order activity.
- Monthly revenue consistently exceeded 1M BRL during peak growth periods.
- The mart models enable KPI reporting, trend analysis, and business performance monitoring.

---

## 🚀 Running the Project

Install Dependencies:
pip install dbt-core dbt-duckdb

Run Models:
dbt run

Run Tests:
dbt test

---

## 📊 Models Produced

### fct_revenue
Order-level revenue fact table containing:
- order_id
- order_timestamp
- payment_value

### fct_monthly_revenue
Monthly aggregated KPI table including:
- total revenue
- order count
- revenue trends

---

## 🧠 Key Learnings

- Built a modular ELT pipeline using dbt
- Implemented layered data modelling (staging → marts)
- Developed reusable SQL transformation logic
- Built analytical fact tables from raw transactional data
- Applied automated data quality testing (unique, not_null)
- Managed dependency-based execution using dbt DAG
- Version-controlled analytics workflows using Git and GitHub

---

## 📌 Future Enhancements

- Expand dbt test coverage (relationships, accepted values, source tests)
- Implement source freshness monitoring
- Create reusable SQL macros for KPI standardisation
- Add incremental models for performance optimisation
- Integrate BI dashboards (Power BI / Looker Studio)
- Deploy pipeline using dbt Cloud
