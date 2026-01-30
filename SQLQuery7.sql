USE [Project Database]
GO

/****** Object:  View [dbo].[v_Monthly_Trends]    Script Date: 29/01/2026 20:26:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE   VIEW [dbo].[v_Monthly_Trends] AS
SELECT
  YEAR(Transaction_Date)  AS txn_year,
  MONTH(Transaction_Date) AS txn_month,
  COUNT(*)                AS txn_count,
  SUM(Transaction_Amount) AS total_amount,
  AVG(Transaction_Amount) AS avg_amount
FROM dbo.Banking_Transactions_USA_2023_2024
GROUP BY YEAR(Transaction_Date), MONTH(Transaction_Date);
GO


