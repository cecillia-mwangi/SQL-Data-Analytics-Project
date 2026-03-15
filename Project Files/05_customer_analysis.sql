/*
Customer Analysis
List customers, order by those who have spent most on products
*/
SELECT 
 CONCAT(c.first_name, ' ', c.last_name) AS Customer_name,
 SUM(f.sales_amount) AS Total_Spent
FROM gold.fact_sales f
JOIN gold.dim_customers c 
	ON c.customer_key = f.customer_key
GROUP BY CONCAT(c.first_name, ' ', c.last_name)
Order by Total_Spent Desc;