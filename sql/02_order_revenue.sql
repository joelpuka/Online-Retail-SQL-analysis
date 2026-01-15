-- Aggregate line-item revenue to order level (one row per order)
CREATE TABLE online_retail_transactions.order_revenue AS
SELECT
  InvoiceNo,
  Country,
  SUM(revenue) AS order_revenue
FROM online_retail_transactions.retail_clean_positive
GROUP BY InvoiceNo, Country;
