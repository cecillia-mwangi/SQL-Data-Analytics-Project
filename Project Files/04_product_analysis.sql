/*Product performance Analysis
What are top/Best Performing products?
*/
SELECT
p.product_name,
SUM(f.sales_amount) AS Revenue,
SUM(f.quantity) AS Units_Sold
FROM Gold.fact_sales f

JOIN Gold.dim_products p ON 
f.product_key = p.product_key
GROUP BY p.product_name
ORDER BY Revenue DESC;

