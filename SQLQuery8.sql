USE [Project Database];
GO

-- Create a view to summarize transaction activity by merchant
-- Helps identify high-volume merchants and transaction patterns

CREATE VIEW dbo.v_Top_Merchants
AS
SELECT
    Merchant_Name,
    COUNT(*) AS txn_count,                 -- total number of transactions
    SUM(Transaction_Amount) AS total_amount,  -- total transaction value
    AVG(Transaction_Amount) AS avg_amount     -- average transaction size
FROM dbo.Banking_Transactions_USA_2023_2024
GROUP BY Merchant_Name;
GO
