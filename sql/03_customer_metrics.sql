-- Top customers by total revenue
CREATE TABLE online_retail_transactions.top_customers AS
SELECT
  CustomerID,
  SUM(revenue) AS total_revenue
FROM online_retail_transactions.retail_clean_positive
GROUP BY CustomerID
ORDER BY total_revenue DESC;

-- Orders per customer
CREATE TABLE online_retail_transactions.customer_orders AS
SELECT
  CustomerID,
  COUNT(DISTINCT InvoiceNo) AS total_orders
FROM online_retail_transactions.retail_clean_positive
GROUP BY CustomerID;

-- Customer Average Order Value (AOV)
CREATE TABLE online_retail_transactions.customer_aov AS
SELECT
  CustomerID,
  AVG(order_revenue) AS aov
FROM online_retail_transactions.order_revenue
GROUP BY CustomerID;
