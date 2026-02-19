# Banking Fraud Analytics (SQL Server + Power BI)

## Overview
This project analyzes financial transaction data to identify fraud patterns across customer demographics, payment channels, geographic locations, and time.
The objective is to simulate a real-world fraud monitoring dashboard used by financial institutions to detect high-risk segments and operational vulnerabilities.
---
##Problems and Objectives
Analyze financial transactions to identify fraud patterns across customer segments, payment channels, and time in order to support proactive risk monitoring. Questions asked for this project were mainly:
Which payment methods have the highest fraud risk?
Are certain customer segments more vulnerable?
How is the fraud trend over time?
---

## Data
The data was taken from a dataset which documented over 5300+ transactions, which ranged everything from Transaction_ID to Customer_Gender and Age. We have very clear metrics as to what the dataset is about how transactions are detailed about their transactions and payments used.

---

##Tools Used
SQL Server – Data transformation & segmentation
Power BI – Data modeling & dashboard
DAX – Fraud metrics & KPIs

---

To make the dataset analysis-ready and dashboard-friendly, I performed core transformations in SQL:

- **Demographic segmentation:** derived **Age Group** from `Customer_Age` (e.g., 18–24, 25–34, … 65+)
- **Fraud metric aggregation:** computed **Fraud Txns**, **Total Txns**, and **Fraud Rate %** at the segment level for fast reporting
- **Filtering & validation:** excluded null/invalid age records where needed to avoid skewed segmentation
- **Reporting-ready tables:** structured outputs specifically for Power BI visuals (e.g., fraud by age group)

> SQL scripts are included in the `/sql` folder for reproducibility.

## Dashboard Design (Why it’s built this way)
This report is designed like a real fraud monitoring view:
- **Top KPI cards** provide an instant status snapshot.
- **Payment Method × Status matrix heatmap** highlights where risk clusters operationally.
- **Monthly trend visual** supports monitoring spikes and changes over time.
- **Geography + category breakdowns** identify where fraud is concentrated for investigation.
- **Demographic views (Age/Gender)** support segmentation and targeted policy decisions.

---

## Key Insights (Example Findings)
- **Payment-channel risk:** Fraud concentration varies significantly by **payment method**, suggesting certain channels should have stricter validation rules.
- **Operational signals:** A higher share of **Failed/Pending** transactions in specific methods may indicate attempted fraud or automated attack patterns.
- **Trend monitoring:** Monthly fraud patterns reveal periods of elevated risk, supporting targeted monitoring during spikes.
- **Geographic hotspots:** A small set of cities contribute disproportionately to fraud volume, useful for location-based controls or investigations.
- **Category exposure:** Certain transaction categories show higher fraud activity, enabling category-specific controls or thresholds.

---

## Business Value
This dashboard enables a fraud or risk team to:
- monitor fraud KPIs at a glance
- identify high-risk payment channels and transaction outcomes
- spot time-based spikes for faster response
- prioritize investigations by city and category
- support segmentation (age/gender) for targeted fraud prevention strategies

---


