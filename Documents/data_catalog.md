# Data Catalog: Gold Layer

## Overview
The **Gold Layer** represents the business-level data model, optimized for analytics and reporting. It comprises **dimension tables** and **fact tables** that encapsulate clean, enriched, and semantically meaningful business data.

---

## 1. Table: `gold.dim_customers`

**Purpose:**  
Stores customer details enriched with demographic and geographic data.

| Column Name     | Data Type     | Description                                                                 |
|------------------|----------------|-----------------------------------------------------------------------------|
| `customer_key`   | INT            | Surrogate key uniquely identifying each customer record.                   |
| `customer_id`    | INT            | Unique numerical identifier assigned to each customer.                     |
| `customer_number`| NVARCHAR(50)   | Alphanumeric identifier used for tracking and referencing.                 |
| `first_name`     | NVARCHAR(50)   | Customer's first name.                                                     |
| `last_name`      | NVARCHAR(50)   | Customer's last or family name.                                            |
| `country`        | NVARCHAR(50)   | Country of residence (e.g., 'Australia').                                  |
| `marital_status` | NVARCHAR(50)   | Marital status (e.g., 'Married', 'Single').                                |
| `gender`         | NVARCHAR(50)   | Gender (e.g., 'Male', 'Female', 'n/a').                                    |
| `birthdate`      | DATE           | Date of birth in `YYYY-MM-DD` format.                                      |
| `create_date`    | DATE           | Date the record was created in the system.                                 |

---

## 2. Table: `gold.dim_products`

**Purpose:**  
Provides detailed information about products and their classifications.

| Column Name           | Data Type     | Description                                                                 |
|------------------------|----------------|-----------------------------------------------------------------------------|
| `product_key`          | INT            | Surrogate key uniquely identifying each product.                            |
| `product_id`           | INT            | Internal unique identifier for each product.                                |
| `product_number`       | NVARCHAR(50)   | Alphanumeric code representing the product.                                 |
| `product_name`         | NVARCHAR(50)   | Descriptive name including key attributes.                                  |
| `category_id`          | NVARCHAR(50)   | Unique ID for the product’s category.                                       |
| `category`             | NVARCHAR(50)   | Broad classification (e.g., Bikes, Components).                            |
| `subcategory`          | NVARCHAR(50)   | Detailed classification within the category.                                |
| `maintenance_required` | NVARCHAR(50)   | Indicates if maintenance is needed (e.g., 'Yes', 'No').                     |
| `cost`                 | INT            | Base price of the product.                                                  |
| `product_line`         | NVARCHAR(50)   | Product series or line (e.g., Road, Mountain).                              |
| `start_date`           | DATE           | Date the product became available.                                          |

---

## 3. Table: `gold.fact_sales`

**Purpose:**  
Captures transactional sales data for analytical consumption.

| Column Name     | Data Type     | Description                                                                 |
|------------------|----------------|-----------------------------------------------------------------------------|
| `order_number`   | NVARCHAR(50)   | Unique identifier for each sales order (e.g., 'SO54496').                   |
| `product_key`    | INT            | Foreign key linking to `dim_products`.                                      |
| `customer_key`   | INT            | Foreign key linking to `dim_customers`.                                     |
| `order_date`     | DATE           | Date the order was placed.                                                  |
| `shipping_date`  | DATE           | Date the order was shipped.                                                 |
| `due_date`       | DATE           | Date when payment was due.                                                  |
| `sales_amount`   | INT            | Total monetary value of the sale (whole currency units).                    |
| `quantity`       | INT            | Number of units sold.                                                       |
| `price`          | INT            | Price per unit (whole currency units).                                      |

---
