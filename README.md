# Online Retail SQL Analysis

This project analyzes transactional retail data using SQL in Google BigQuery to evaluate revenue performance, customer behavior, and Average Order Value (AOV).

## Dataset
- Online Retail dataset (Kaggle)
- Each row represents a line item within an order
- Orders are identified by InvoiceNo
- Revenue is calculated as Quantity × UnitPrice
- Returns and cancellations were excluded

## Key Analytical Decision
Because the dataset is line-item level, revenue was first aggregated to the order level before calculating Average Order Value (AOV).  
This prevents inflating AOV for orders containing multiple products and ensures each order is weighted equally.

## Key Metrics
- Monthly revenue trends
- Top customers by total revenue
- Customer order frequency
- Average Order Value (AOV) by country

## Tools Used
- SQL (Google BigQuery)

## Why This Project Matters
This project demonstrates correct SQL aggregation, data-grain awareness, and business-accurate metric construction.
