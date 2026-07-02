# 📊 Ecommerce Analytics Pipeline with dbt & BigQuery

## 🧠 Overview

This project demonstrates an end-to-end **analytics engineering workflow** using **dbt and Google BigQuery** on the Olist Brazilian E-Commerce dataset.

Raw transactional data is transformed into **business-ready analytical models** using a layered ELT architecture that separates data ingestion, transformation, and analytics.

The project follows modern analytics engineering best practices:
- Modular SQL development
- Layered data modelling (staging → marts)
- Dependency-managed transformations (dbt DAG)
- Reproducible analytics pipelines
- Automated data quality testing


---

## 🔗 dbt DAG (Lineage Graph)

The dbt project uses `ref()`-based dependencies to automatically generate a DAG that ensures correct execution order.

Staging models (`stg_orders`, `stg_payments`, `stg_customers`) feed into mart models (`fct_revenue`, `fct_monthly_revenue`) for KPI reporting and analytics.

<img width="1140" height="631" alt="Screenshot 2026-06-12 152552" src="https://github.com/user-attachments/assets/0bed6fb5-d80a-4465-8784-cef04a50a152" />


---


## 📦 Project Structure

 ```text
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

- dbt (Data Build Tool)
- Google BigQuery
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
- 📸 dbt test execution output:

  <img width="1520" height="574" alt="Screenshot 2026-06-12 152824" src="https://github.com/user-attachments/assets/5ae26865-e4c5-4e6f-950f-ccba55e2a7dd" />


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

### Install Dependencies

```bash
git clone https://github.com/kb1278/ecommerce-dbt-analytics.git
```

```bash
cd ecommerce-dbt-analytics
```

```bash
pip install dbt-core dbt-bigquery

```

```bash
gcloud auth application-default login

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

- Built a modular ELT pipeline using dbt and BigQuery
- Implemented layered data modelling (staging → marts)
- Developed reusable SQL transformation logic
- Built analytics-ready fact tables from raw data
- Applied automated data quality testing
- Built an ELT pipeline in BigQuery using dbt, leveraging Git for version control and dbt’s DAG for model dependencies

---

## 📌 Future Enhancements

- Add relationship tests between models
- Implement source freshness monitoring
- Build Power BI / Looker Studio dashboard
- Add incremental models for performance optimisation
- Expand customer analytics (cohort, LTV)
- Deploy using dbt Cloud
