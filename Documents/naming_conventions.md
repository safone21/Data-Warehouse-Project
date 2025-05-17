# 🧾 Naming Conventions for Data Warehouse

This document outlines the standard naming conventions to ensure clarity, consistency, and maintainability across all layers of the Data Warehouse.

---

## 🔤 General Naming Principles

- **Naming Style**: Use `snake_case` — all lowercase letters with underscores `_` to separate words.
- **Language**: Use English for all names.
- **Reserved Words**: Avoid using SQL reserved keywords for table, column, or procedure names.

---

## 🗂️ Table Naming Conventions

### 🟤 Bronze Layer

- **Purpose**: Raw ingestion from source systems; no transformation or renaming.
- **Naming Pattern**: `<source_system>_<entity>`
  - `source_system`: Identifier for the originating system (e.g., `crm`, `erp`)
  - `entity`: Exact table name from the source system

**Example:**
crm_customer_info -- Raw customer data from the CRM system

---

### ⚪ Silver Layer

- **Purpose**: Cleansed and standardized data; retains original structure but aligned to source.
- **Naming Pattern**: `<source_system>_<entity>`  
  (Same as Bronze Layer)

**Example:**
erp_sales_orders -- Cleaned sales order data from the ERP system

---

### 🟡 Gold Layer

- **Purpose**: Business-aligned, analytical-ready datasets.
- **Naming Pattern**: `<category>_<entity>`
  - `category`: Table role (`dim`, `fact`, `report`, etc.)
  - `entity`: Descriptive, business-relevant name

**Examples:**
dim_customers -- Dimension table for customer data fact_sales -- Fact table for sales transactions

---

## 📊 Column Naming Conventions

### 🔑 Surrogate Keys

- **Purpose**: Unique identifiers for records in dimension tables.
- **Naming Pattern**: `<table_name>_key`

**Example:**
customer_key -- Surrogate key in the dim_customers table

---

### ⚙️ Technical Columns

- **Purpose**: System-generated metadata (e.g., load dates, job IDs).
- **Naming Pattern**: `dwh_<column_name>`

**Example:**
dwh_load_date -- Timestamp for record load into the warehouse

---

## 🧪 Stored Procedure Naming

- **Purpose**: Procedures for loading data into the data warehouse layers.
- **Naming Pattern**: `load_<layer>`
  - `layer`: Target layer (`bronze`, `silver`, `gold`)

**Examples:**
load_bronze -- Loads raw data into the Bronze layer 
load_silver -- Loads cleansed data into the Silver layer 
load_gold -- Loads business-aligned data into the Gold layer


---

✅ **Tip**: Following these conventions helps maintain a scalable, well-organized, and easily understandable data warehouse.



