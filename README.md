# Data-Warehouse-Project

## 📦 Modern Data Warehouse Project

The Modern Data Warehouse Project is a comprehensive, hands-on implementation that demonstrates the full lifecycle of a data warehouse solution.

This project utilizes the Medallion Architecture to ingest and process raw CSV files, transforming them into a structured, business-ready data model. The resulting architecture supports efficient reporting, analytics, and actionable insights.

---

## 🌐 Project Highlights

- ✅ End-to-end Data Warehouse solution (from ingestion to insights)
- ⚙️ ETL Pipelines using SQL
- 🧠 Star Schema Modeling (Fact & Dimension Tables)
- 📊 SQL-based Data Analysis
- 📁 Professional project structure with full documentation
- 🧰 Free and open-source tools only

---

## 🧱 Architecture: Medallion Layers

The project adopts a layered **Medallion Architecture** approach:

| Layer   | Description |
|---------|-------------|
| **Bronze** | Raw data ingested directly from source CSVs (ERP & CRM) into SQL Server |
| **Silver** | Data is cleaned, standardized, and transformed into a usable structure |
| **Gold**   | Final business models (fact & dimension tables) used for reporting and analysis |

---

## 🔍 What You'll Learn

This project is ideal for practicing or demonstrating expertise in:

- ✅ **SQL Development & ETL Processes**
- ✅ **Data Modeling & Star Schema Design**
- ✅ **Modern Data Architecture Principles**
- ✅ **Data Cleaning & Transformation**
- ✅ **Business Intelligence Reporting**

---

## 🚀 Getting Started

### ⚙️ Prerequisites

To run this project locally, you'll need:

- [SQL Server Express](https://www.microsoft.com/en-us/sql-server/sql-server-downloads)
- [SQL Server Management Studio (SSMS)](https://learn.microsoft.com/en-us/sql/ssms/download-ssms)
- [Git](https://git-scm.com/)
- [Draw.io (diagrams.net)](https://www.diagrams.net/) – for viewing/editing architecture diagrams

## 💼 Project Scope

### 🧩 Data Engineering

**Objective:** Build a modern data warehouse to consolidate and analyze sales and customer data.

- **Sources:** ERP and CRM datasets in CSV format
- **Integration:** Merge sources to provide a unified data model
- **Focus:** Only latest data; no historization required
- **Modeling:** Use dimensional modeling (star schema) for analytics

### 📈 Data Analysis

**Objective:** Deliver insights through SQL queries focused on:

- Customer behavior
- Product performance
- Sales trends

> These insights support better business decisions through simple, yet powerful SQL reports.

---

## 🧰 Tools & Technologies Used

| Tool                | Purpose |
|---------------------|---------|
| SQL Server Express  | Database server for data warehouse |
| SSMS                | Querying and managing SQL Server |
| Git & GitHub        | Version control and collaboration |
| Draw.io             | Designing data flows and architecture |
| Notion              | Task management and documentation |
| CSV files           | Source data for ERP and CRM |

---

## 🧠 Key Concepts Applied

- Medallion Architecture (Bronze, Silver, Gold)
- ETL & ELT Patterns
- Data Normalization & Cleansing
- Surrogate Keys & Primary Keys
- Fact and Dimension Tables
- SQL Joins, Aggregations & Window Functions

---

## 📘 Documentation

The `Documents/` folder contains:

- 📊 `data_models.png` – Star schema for analytics
- 🧱 `data_architecture.png` – Full Medallion architecture diagram
- 📎 `naming-conventions.md` – Consistent rules for naming objects

---

## 🧪 Testing & Data Validation

The `Tests/` directory includes:

- SQL queries for data quality checks
- Record count verification
- Null handling tests
- Duplicate detection

---

## 🛡️ License

This project is licensed under the **MIT License**.  
Feel free to use, adapt, and share it with proper credit. See `LICENSE` for more details.

## 👋 About the Creator

Hi, I'm **Safouane Lasmar** — a passionate data enthusiast and aspiring data engineer.  
I'm currently pursuing a degree in Big Data & AI Engineering, where I focus on building real-world solutions in data warehousing, machine learning, and analytics.

This project is part of my continuous journey to deepen my expertise and share practical, portfolio-worthy work with the data community.

---

## 📫 Contact & Contributions

Have ideas to improve this project? Found an issue or want to collaborate?

You're welcome to open an issue, fork the repo, or reach out directly.

Let's connect on **GitHub** or **LinkedIn** and grow together in the world of data!

---
