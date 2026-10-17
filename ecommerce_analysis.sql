CREATE TABLE online_retail (
    "InvoiceNo" VARCHAR(20),
    "StockCode" VARCHAR(20),
    "Description" TEXT,
    "Quantity" INTEGER,
    "InvoiceDate" TIMESTAMP,
    "UnitPrice" NUMERIC(12, 3),
    "CustomerID" NUMERIC(10, 1),
    "Country" VARCHAR(100),
    "Revenue" NUMERIC(14, 3),
    "YearMonth" VARCHAR(7)
);

SELECT * FROM online_retail LIMIT 5;

ALTER TABLE online_retail
DROP COLUMN "YearMonth";

SELECT column_name
FROM information_schema.columns
WHERE table_name = 'online_retail'
ORDER BY ordinal_position;

SELECT COUNT(*) FROM online_retail;


SELECT COUNT(*) AS total_records
FROM online_retail;

SELECT COUNT(*) AS total_records
FROM online_retail;

SELECT *
FROM online_retail
LIMIT 5;

SELECT
    COUNT(*) AS total_records,
    COUNT(DISTINCT "InvoiceNo") AS unique_invoices,
    COUNT(DISTINCT "CustomerID") AS unique_customers,
    COUNT(DISTINCT "Country") AS total_countries,
    ROUND(SUM("Revenue"), 2) AS preliminary_revenue
FROM online_retail;

SELECT
    TO_CHAR("InvoiceDate", 'YYYY-MM') AS year_month,
    ROUND(SUM("Revenue"), 2) AS monthly_revenue
FROM online_retail
GROUP BY TO_CHAR("InvoiceDate", 'YYYY-MM')
ORDER BY year_month;

SELECT
    "Country",
    ROUND(SUM("Revenue"), 2) AS total_revenue
FROM online_retail
GROUP BY "Country"
ORDER BY SUM("Revenue") DESC
LIMIT 10;

SELECT
    "Description",
    ROUND(SUM("Revenue"), 2) AS total_revenue
FROM online_retail
WHERE "Description" IS NOT NULL
GROUP BY "Description"
ORDER BY SUM("Revenue") DESC
LIMIT 10;

SELECT
    "CustomerID",
    ROUND(SUM("Revenue"), 2) AS total_revenue,
    COUNT(DISTINCT "InvoiceNo") AS total_invoices
FROM online_retail
WHERE "CustomerID" IS NOT NULL
GROUP BY "CustomerID"
ORDER BY SUM("Revenue") DESC
LIMIT 10;