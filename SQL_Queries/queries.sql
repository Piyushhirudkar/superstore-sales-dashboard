CREATE DATABASE superstore_db;

USE superstore_db;

SHOW TABLES;
SELECT * FROM superstore LIMIT 10

SELECT COUNT(*) FROM superstore;

SELECT * FROM superstore 
Where sales IS NULL;

SELECT Order_ID , COUNT(*) FROM superstore 
GROUP BY Order_ID
HAVING COUNT(*) > 1;


SELECT Category , SUM(Sales) FROM superstore 
GROUP BY Category

DESCRIBE superstore;

SELECT Region ,SUM(Sales) as total_Sales FROM superstore
GROUP BY Region;

SELECT `Customer Name`, SUM(Sales) as total_sales FROM superstore
GROUP BY `Customer Name`
ORDER BY total_sales DESC
LIMIT 10;

SELECT `Product Name` , SUM(profit) as total_profit FROM superstore
GROUP BY `Product Name`
Having total_profit < 0;

SELECT MONTH(STR_TO_DATE(`Order Date`, '%m/%d/%Y')) AS month, SUM(Sales) as total_sales FROM superstore
GROUP BY month
ORDER BY month;

SHOW COLUMNS FROM superstore;

SELECT * FROM superstore 
LIMIT 5;