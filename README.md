# Banking Fraud Analytics (SQL Server + Power BI)

## Overview
This project analyzes banking transactions from 2023–2024 to identify fraud patterns across payment methods, transaction categories, and time.

The goal is to demonstrate SQL-based analysis and basic Power BI visualization for fraud monitoring.

---

## Tools Used
- SQL Server (SSMS)
- Power BI Desktop

---

## Data
- ~5,300 banking transactions
- Fields include transaction amount, category, payment method, fraud flag, city, and date

---

## SQL Work
In SQL Server, I:
- Loaded the dataset into a relational table
- Created analytical views for reporting (monthly trends, fraud by city, top merchants)
- Added basic indexing and constraints
- Wrote analysis queries to identify:
  - High-risk payment methods
  - Fraud concentration by category
  - Monthly fraud trends

(SQL scripts are in the `/sql` folder.)

---

## Power BI Dashboard
In Power BI, I built a 1-page dashboard showing:
- Fraud vs non-fraud transaction distribution
- Top categories and payment methods involved in fraud
- Monthly fraud trends
- Fraud concentration matrix (Category × Payment Method)

(Screenshots are in the `/screenshots` folder.)

---

## Key Insights
- Fraud occurs across all payment methods, with higher concentration in certain categories
- Some category + payment method combinations show elevated fraud activity
- Fraud activity varies over time rather than being evenly distributed

---

## How to Use
1. Run the SQL scripts in the `/sql` folder on SQL Server
2. Open the Power BI file in `/powerbi`
3. Update the SQL Server connection if needed


