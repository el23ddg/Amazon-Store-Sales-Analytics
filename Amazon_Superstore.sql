
-- 1. Top Revenue Categories
SELECT category,
SUM(sales) AS total_sales FROM superstore.superstoredata
GROUP BY category
ORDER BY total_sales DESC;

-- 2. Monthly Revenue Trend
SELECT 
    MONTH(STR_TO_DATE(`OrderDate`, '%m/%d/%Y')) AS month, 
    SUM(`Sales`) AS revenue 
FROM superstore.superstoredata 
GROUP BY month
ORDER BY revenue DESC;

-- 3. Regional Analysis
SELECT region,
SUM(profit) AS total_profit
FROM superstore.superstoredata
GROUP BY region;

-- 4. Discount Impact
SELECT discount,
AVG(profit) AS avg_profit
FROM superstore.superstoredata
GROUP BY discount;

-- 5. Top Customers
SELECT 
    `CustomerName`, 
    SUM(`Sales`) AS total_spent 
FROM superstore.superstoredata 
GROUP BY `CustomerName` 
ORDER BY total_spent DESC 
LIMIT 10;

-- KPI
SELECT 
    SUM(`Sales`) AS Total_Revenue,
    SUM(`Profit`) AS Total_Profit,
    (SUM(`Profit`) / SUM(`Sales`)) * 100 AS Profit_Margin_Percentage,
    COUNT(DISTINCT `OrderID`) AS Total_Orders,
    SUM(`Sales`) / COUNT(DISTINCT `OrderID`) AS Average_Order_Value
FROM superstore.superstoredata;

-- Repeated Customer KPI
SELECT COUNT(*) AS Repeat_Customer_Count
FROM (
    SELECT `CustomerID`
    FROM superstore.superstoredata
    GROUP BY `CustomerID`
    HAVING COUNT(DISTINCT `OrderID`) > 1
) AS RepeatCustomers;

-- monthly sales trend
SELECT 
    DATE_FORMAT(STR_TO_DATE(`OrderDate`, '%m/%d/%Y'), '%Y-%m') AS Order_Month,
    SUM(`Sales`) AS Monthly_Revenue
FROM superstore.superstoredata
GROUP BY Order_Month
ORDER BY Order_Month;

-- to identify Loss-Making Sub-Categories:
SELECT 
    `SubCategory`,
    SUM(`Sales`) AS Total_Sales,
    SUM(`Profit`) AS Total_Profit
FROM superstore.superstoredata
GROUP BY `SubCategory`
HAVING Total_Profit < 0;

-- Top Customers by Spend:
SELECT 
    `CustomerName`, 
    SUM(`Sales`) AS Total_Spent, 
    COUNT(DISTINCT `OrderID`) AS Order_Count
FROM superstore.superstoredata
GROUP BY `CustomerName`
ORDER BY Total_Spent DESC
LIMIT 10;

-- Average Shipping Time:
SELECT 
    `ShipMode`,
    AVG(DATEDIFF(STR_TO_DATE(`ShipDate`, '%m/%d/%Y'), STR_TO_DATE(`OrderDate`, '%m/%d/%Y'))) AS Avg_Days_To_Ship
FROM superstore.superstoredata
GROUP BY `ShipMode`;

-- correlate Discount vs. Profit:
SELECT 
    `Discount`,
    AVG(`Profit`) AS Avg_Profit,
    AVG(`Sales`) AS Avg_Sales
FROM superstore.superstoredata
GROUP BY `Discount`
ORDER BY `Discount`;