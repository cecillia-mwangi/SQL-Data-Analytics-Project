/* Basic business Metrics
Key performance Indicators for the company
*/

-- Total Revenue
SELECT SUM(Sales_amount) AS TotalRevenue
FROM Gold.fact_sales;

---Total Orders
SELECT Count(DISTINCT Order_number) AS TotalOrders
FROM Gold.fact_sales;

---Total Quantity Sold 
SELECT SUM(quantity) AS TotalQuantitySold
FROM Gold.fact_sales;

----Average order value
SELECT SUM(Sales_amount) / COUNT(DISTINCT Order_number) AS Avg_Order_Number
FROM Gold.fact_sales;