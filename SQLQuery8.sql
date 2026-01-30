USE [Project Database]
GO

/****** Object:  View [dbo].[v_Top_Merchants]    Script Date: 29/01/2026 20:27:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE   VIEW [dbo].[v_Top_Merchants] AS
SELECT
  Merchant_Name,
  COUNT(*) AS txn_count,
  SUM(Transaction_Amount) AS total_amount,
  AVG(Transaction_Amount) AS avg_amount
FROM dbo.Banking_Transactions_USA_2023_2024
GROUP BY Merchant_Name;
GO


