# Gold Layer Data Catalog

## Overview
The **Gold Layer** is the business-ready data layer, designed for analytics and reporting. It includes dimension tables (reference data) and fact tables (transactional data) that represent core business entities and metrics.

---

## Table: `gold.dim_customers`

**Purpose:**  
Stores enriched customer data with demographic and geographic details.

| Column Name      | Data Type     | Description                                       |
|------------------|---------------|---------------------------------------------------|
| customer_key     | INT           | Surrogate key for internal joins.                 |
| customer_id      | INT           | Unique customer identifier.                       |
| customer_number  | NVARCHAR(50)  | Alphanumeric ID for tracking/reference.           |
| first_name       | NVARCHAR(50)  | Customer's first name.                            |
| last_name        | NVARCHAR(50)  | Customer's last name.                             |
| country          | NVARCHAR(50)  | Customer's country of residence.                  |
| marital_status   | NVARCHAR(50)  | Marital status (e.g., 'Married', 'Single').       |
| gender           | NVARCHAR(50)  | Gender (e.g., 'Male', 'Female', 'n/a').           |
| birthdate        | DATE          | Date of birth (YYYY-MM-DD).                       |
| create_date      | DATE          | When the record was created.                      |

---

## Table: `gold.dim_products`

**Purpose:**  
Details products and their classifications.

| Column Name           | Data Type     | Description                                       |
|------------------------|---------------|---------------------------------------------------|
| product_key            | INT           | Surrogate key for internal joins.                 |
| product_id             | INT           | Unique product identifier.                        |
| product_number         | NVARCHAR(50)  | Structured product code.                          |
| product_name           | NVARCHAR(50)  | Product name with key attributes.                 |
| category_id            | NVARCHAR(50)  | ID linking to product category.                   |
| category               | NVARCHAR(50)  | High-level classification (e.g., Bikes).          |
| subcategory            | NVARCHAR(50)  | Sub-classification (e.g., Mountain Bikes).        |
| maintenance_required   | NVARCHAR(50)  | 'Yes' or 'No' flag.                               |
| cost                   | INT           | Base cost of the product.                         |
| product_line           | NVARCHAR(50)  | Series or product line (e.g., Road).              |
| start_date             | DATE          | Date product became available.                    |

---

## Table: `gold.fact_sales`

**Purpose:**  
Captures sales transactions for reporting and metrics.

| Column Name     | Data Type     | Description                                       |
|------------------|---------------|---------------------------------------------------|
| order_number     | NVARCHAR(50)  | Unique sales order ID (e.g., 'SO54496').          |
| product_key      | INT           | FK to `dim_products`.                             |
| customer_key     | INT           | FK to `dim_customers`.                            |
| order_date       | DATE          | When the order was placed.                        |
| shipping_date    | DATE          | When the order shipped.                           |
| due_date         | DATE          | Payment due date.                                 |
| sales_amount     | INT           | Total value of the line item.                     |
| quantity         | INT           | Number of units sold.                             |
| price            | INT           | Unit price of the product.                        |

---

