# 📊 Ecommerce dbt Analytics Pipeline

## 🧠 Overview

This project is an **end-to-end analytics engineering pipeline** built using **dbt and DuckDB** on the Olist e-commerce dataset.

It transforms raw transactional data into structured analytics models using a layered architecture:

- **Staging layer** (data cleaning & standardisation)
- **Marts layer** (business-ready metrics)
- **Analytics models** (revenue and performance insights)

The goal is to demonstrate modern **data transformation workflows using dbt**, following analytics engineering best practices.

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


## ⚙️ Tech Stack

- dbt (Data Build Tool)
- DuckDB (Analytical database)
- SQL (Data modelling & transformations)
- Git & GitHub (Version control)
- Python (optional dataset handling)

---

## 📊 Data Source

This project uses the **Olist Brazilian E-Commerce dataset**, which includes:

- Orders
- Customers
- Payments
- Products
- Sellers
- Geolocation data

---

## 🏗️ Data Architecture

The project follows a **layered dbt architecture**:

### 1. Staging Layer
Raw tables are cleaned and standardised:
- Column renaming
- Data type formatting
- Basic filtering

### 2. Mart Layer
Business-ready models are created:
- Revenue calculations
- Monthly revenue trends
- Order-level analytics

---

## 📈 Key Metrics Built

- Total Revenue
- Monthly Revenue Trends
- Order-level Sales Analysis
- Customer-level insights

---

## 🚀 How to Run This Project

### 1. Install dependencies
pip install dbt-core dbt-duckdb

### 2. Install dbt packages
dbt deps

### 3. Run models
dbt run

### 4. Run tests (optional)
dbt test

---

## 📁 Example Model

### Staging Model (stg_orders.sql)

select
    order_id,
    customer_id,
    order_status,
    order_purchase_timestamp
from read_csv_auto('data/olist_orders_dataset.csv')

---

### Mart Model (fct_revenue.sql)
Calculates total revenue from order payments and aggregates business KPIs.

---

## 🧠 Key Learnings

- Built modular dbt project (staging → marts)
- Designed reusable SQL transformation logic
- Understood dbt dependency graph and workflow
- Applied analytics engineering best practices
- Built reproducible data pipeline using DuckDB

---

## 📌 Future Improvements

- Add dbt tests (not null, unique, relationships)
- Introduce macros for reusable SQL logic
- Add incremental models for scalability
- Integrate Power BI / Tableau dashboard layer
- Deploy using dbt Cloud or orchestration tools

---


