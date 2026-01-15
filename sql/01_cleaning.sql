-- Create cleaned retail table
CREATE TABLE online_retail_transactions.retail_clean AS
SELECT
  *,
  Quantity * UnitPrice AS revenue
FROM online_retail_transactions.online_retail_transactions
WHERE CustomerID IS NOT NULL;

-- Remove returns and cancellations (negative revenue)
CREATE TABLE online_retail_transactions.retail_clean_positive AS
SELECT *
FROM online_retail_transactions.retail_clean
WHERE revenue > 0;
