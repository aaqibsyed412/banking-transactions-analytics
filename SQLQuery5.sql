USE [Project Database]
GO

/****** Object:  View [dbo].[v_Fraud_By_AgeGroup]    Script Date: 29/01/2026 20:24:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE   VIEW [dbo].[v_Fraud_By_AgeGroup] AS
SELECT
  CASE
    WHEN Customer_Age < 25 THEN 'Under 25'
    WHEN Customer_Age BETWEEN 25 AND 34 THEN '25–34'
    WHEN Customer_Age BETWEEN 35 AND 44 THEN '35–44'
    WHEN Customer_Age BETWEEN 45 AND 54 THEN '45–54'
    ELSE '55+'
  END AS Age_Group,
  CASE
    WHEN Customer_Age < 25 THEN 1
    WHEN Customer_Age BETWEEN 25 AND 34 THEN 2
    WHEN Customer_Age BETWEEN 35 AND 44 THEN 3
    WHEN Customer_Age BETWEEN 45 AND 54 THEN 4
    ELSE 5
  END AS Age_Sort,
  COUNT(*) AS total_txns,
  SUM(CASE WHEN Fraud_Flag = 1 THEN 1 ELSE 0 END) AS fraud_txns,
  CAST(100.0 * SUM(CASE WHEN Fraud_Flag = 1 THEN 1 ELSE 0 END) / COUNT(*) AS DECIMAL(5,2)) AS fraud_rate_pct
FROM dbo.Banking_Transactions_USA_2023_2024
GROUP BY
  CASE
    WHEN Customer_Age < 25 THEN 'Under 25'
    WHEN Customer_Age BETWEEN 25 AND 34 THEN '25–34'
    WHEN Customer_Age BETWEEN 35 AND 44 THEN '35–44'
    WHEN Customer_Age BETWEEN 45 AND 54 THEN '45–54'
    ELSE '55+'
  END,
  CASE
    WHEN Customer_Age < 25 THEN 1
    WHEN Customer_Age BETWEEN 25 AND 34 THEN 2
    WHEN Customer_Age BETWEEN 35 AND 44 THEN 3
    WHEN Customer_Age BETWEEN 45 AND 54 THEN 4
    ELSE 5
  END;
GO


