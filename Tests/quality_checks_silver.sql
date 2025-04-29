/*
===============================================================================
Quality Checks for Silver Layer
===============================================================================

Purpose:
    This script validates data quality in the 'silver' layer by checking for:
    - Null or duplicate primary keys
    - Unwanted leading/trailing spaces in string fields
    - Data standardization and formatting issues
    - Invalid date ranges or chronological inconsistencies
    - Consistency between related fields

Usage:
    - Execute after loading the Silver Layer.
    - Review and resolve any anomalies detected.

===============================================================================
*/

-- ====================================================================
-- Quality Check: 'silver.crm_cust_info' Table
-- ====================================================================

-- 1. Check for NULL or Duplicate Primary Keys
-- Expectation: Query should return zero rows (i.e., no issues)
SELECT 
    cst_id,
    COUNT(*) 
FROM silver.crm_cust_info
GROUP BY cst_id
HAVING COUNT(*) > 1 OR cst_id IS NULL;

-- 2. Check for Unwanted Spaces
-- Expectation: No Results
SELECT 
    cst_firstname 
FROM silver.crm_cust_info
WHERE cst_firstname != TRIM(cst_firstname);

-- 3. Data Standardization & Consistency
SELECT DISTINCT 
    cst_marital_status 
FROM silver.crm_cust_info;


-- ====================================================================
-- Quality Check: 'silver.crm_prd_info' Table
-- ====================================================================

-- 1. Check for NULLs or Duplicates in Primary Key
-- Expectation: No Results
SELECT 
    prd_id,
    COUNT(*) 
FROM silver.crm_prd_info
GROUP BY prd_id
HAVING COUNT(*) > 1 OR prd_id IS NULL;

-- 2. Check for Unwanted Spaces
-- Expectation: No Results
SELECT 
    prd_nm 
FROM silver.crm_prd_info
WHERE prd_nm != TRIM(prd_nm);

-- 3. Check for NULLs or Negative Values in Cost
-- Expectation: No Results
SELECT 
    prd_cost 
FROM silver.crm_prd_info
WHERE prd_cost < 0 OR prd_cost IS NULL;

-- 4. Data Standardization & Consistency
SELECT DISTINCT 
    prd_line 
FROM silver.crm_prd_info;

-- 5. Check for Invalid Date Orders (Start Date > End Date)
-- Expectation: No Results
SELECT 
    * 
FROM silver.crm_prd_info
WHERE prd_end_dt < prd_start_dt;
