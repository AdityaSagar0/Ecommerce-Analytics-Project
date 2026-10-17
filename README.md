# E-Commerce Sales Analytics Dashboard

## Project Overview
An end-to-end data analytics project that analyzes online retail transactions to understand revenue trends, customer purchasing behavior, and country-wise and product-wise performance.

## Objectives
- Analyze overall revenue and invoice metrics.
- Identify monthly revenue trends.
- Find top-performing countries and products.
- Identify high-value customers.
- Build an interactive Power BI dashboard.

## Tools and Technologies
- Python
- Pandas
- PostgreSQL and SQL
- Microsoft Power BI
- Excel

## Dataset
**Source:** UCI Online Retail Dataset  
https://archive.ics.uci.edu/dataset/352/online+retail

The dataset contains online retail transactions from a UK-based retailer.

## Data Preparation
- Loaded and inspected the dataset using Pandas.
- Removed exact duplicate records.
- Checked missing values and unusual quantities and prices.
- Created a Revenue column using Quantity × UnitPrice.
- Imported the cleaned CSV into PostgreSQL.

## Key Metrics
- Records after deduplication: 536,641
- Unique invoices: 25,900
- Unique customers: 4,372
- Countries: 38
- Preliminary revenue: £9,726,006.95

## Dashboard Features
- Revenue KPI card
- Unique invoices KPI card
- Unique customers KPI card
- Countries KPI card
- Monthly revenue trend
- Top 10 countries by revenue
- Top 10 products by revenue
- Top 10 customers by revenue

## Important Note
Revenue is preliminary and includes returns, cancellations, and accounting adjustments. It should not be treated as final net sales or profit without further validation. December 2011 contains partial-month data.

## Project Structure
- `data/` — cleaned dataset
- `notebooks/` — Python analysis
- `sql/` — SQL queries
- `powerbi/` — Power BI dashboard
- `reports/` — insights report
- `screenshots/` — dashboard screenshots

## Conclusion
This project demonstrates a complete analytics workflow, including data cleaning, SQL analysis, KPI development, and interactive dashboard creation.