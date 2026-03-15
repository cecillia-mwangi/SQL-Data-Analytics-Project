/* Time Aeries Analysis-Trends over time
How do the Sales trend over time?*/

---Monthly Revenue
--Date trunc takes in a date and extracts something out of  that date
SELECT 
YEAR(order_date) AS year,
MONTH(order_date) AS month,
SUM(sales_amount) AS Revenue

FROM gold.fact_sales
GROUP BY YEAR(order_date), MONTH(order_date) 
ORDER BY year,month;
