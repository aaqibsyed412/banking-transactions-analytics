SELECT
    Customer_Age,
    CASE
        WHEN Customer_Age < 25 THEN '18-24'
        WHEN Customer_Age BETWEEN 25 AND 34 THEN '25-34'
        WHEN Customer_Age BETWEEN 35 AND 44 THEN '35-44'
        WHEN Customer_Age BETWEEN 45 AND 54 THEN '45-54'
        WHEN Customer_Age BETWEEN 55 AND 64 THEN '55-64'
        ELSE '65+'
    END AS Age_Group
FROM dbo.Banking_Transactions_USA_2023_2024
WHERE Customer_Age IS NOT NULL;


