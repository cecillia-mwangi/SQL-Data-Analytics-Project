/*
Customer Segmentation
Categorize customers by spending
*/
SELECT 
CONCAT(c.First_Name, ' ', c.Last_Name) AS Customer_Name,
SUM (f.sales_amount) AS Total_Spent,
CASE
WHEN SUM(f.sales_amount) > 5000
THEN 'VIP' 
WHEN SUM(f.sales_amount) > 2000
THEN 'Regular'
ELSE 'Low Value'
END AS Customer_Segment
FROM Gold.fact_sales f
JOIN gold.dim_customers c 
ON f.customer_key= c.customer_key
GROUP BY CONCAT(c.First_Name, ' ', c.Last_Name)
ORDER BY Customer_Segment;

