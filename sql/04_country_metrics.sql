-- Revenue by country
CREATE TABLE online_retail_transactions.country_revenue AS
SELECT
  Country,
  SUM(revenue) AS total_revenue
FROM online_retail_transactions.retail_clean_positive
GROUP BY Country;

-- Average Order Value (AOV) by country
SELECT
  Country,
  AVG(order_revenue) AS aov
FROM online_retail_transactions.order_revenue
GROUP BY Country
ORDER BY aov DESC;

-- Monthly revenue trend
CREATE TABLE online_retail_transactions.monthly_revenue AS
SELECT
  FORMAT_DATE('%Y-%m', DATE(InvoiceDate)) AS month,
  SUM(revenue) AS total_revenue
FROM online_retail_transactions.retail_clean_positive
GROUP BY month
ORDER BY month;
