USE [Project Database]
GO

/****** Object:  View [dbo].[v_Fraud_By_City]    Script Date: 29/01/2026 20:26:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE   VIEW [dbo].[v_Fraud_By_City] AS
SELECT
  City,
  COUNT(*) AS total_txns,
  SUM(CASE WHEN Fraud_Flag = 1 THEN 1 ELSE 0 END) AS fraud_txns,
  CAST(100.0 * SUM(CASE WHEN Fraud_Flag = 1 THEN 1 ELSE 0 END) / COUNT(*) AS DECIMAL(5,2)) AS fraud_rate_pct
FROM dbo.Banking_Transactions_USA_2023_2024
GROUP BY City;
GO


