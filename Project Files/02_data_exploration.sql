--- Data Exploration --- Understand the structure ad the size of the data 
--- Previe the sales data 
SELECT TOP 10 * FROM Gold.fact_sales;

SELECT SUM(sales_amount) AS TotalSalesNullDate
FROM Gold.fact_sales
WHERE order_date IS NULL;

SELECT COUNT(*) AS TotalNullOrderDates
FROM Gold.fact_sales
WHERE order_date IS NULL;

--- Count Recorsd in each table
SELECT COUNT (*) AS TotalSales
FROM Gold.fact_sales;

SELECT COUNT (*) AS TotalProducts
FROM Gold.dim_products;

SELECT COUNT (*) AS TotalCustomers
FROM Gold.dim_customers;


--- Check the date range of our dataset
SELECT 
MIN(order_date) AS FirstOrder,
MAX(Order_date) AS LastOrder
FROM Gold.fact_sales;