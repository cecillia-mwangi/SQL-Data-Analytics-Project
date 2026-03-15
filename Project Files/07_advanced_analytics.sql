/*
Advanced Analytics 
Window Functions
 */

 SELECT 
 order_date,
 SUM(sales_amount) AS daily_sales,
 SUM(SUM(sales_amount)) OVER (ORDER BY order_date) AS running_total
 FROM Gold.fact_sales
 GROUP BY order_date
 ORDER BY order_date;

