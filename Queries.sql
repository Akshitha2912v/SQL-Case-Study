-- 1)
SELECT COUNT(DISTINCT State) AS Number_of_States
FROM LocationTable;

-- 2)
select count(*) as regular_products
from ProductTable
where type = 'regular';

-- 3)
select sum(marketing) as Total_Marketing
from FactTable
where ProductID = 1;

-- 4)
select min(sales) as Minimum_Sales
From FactTable;

-- 5)
select Max(cogs) as Maximum_COGS
from FactTable;

-- 6)
select * from ProductTable
where Product_Type = 'Coffee';

-- 7)
select * from FactTable
Where Total_Expenses > 40;

-- 8)
select avg(sales) as Avg_sales
from FactTable
where Area_code = 719;

-- 9)
SELECT SUM(F.Profit) AS Total_Profit
FROM FactTable F
JOIN LocationTable L
ON F.Area_Code = L.Area_Code
WHERE L.State = 'Colorado';

-- 10)
select productid,avg(Inventory) as avg_inventory
from FactTable
group by productid;

-- 11)
SELECT State
FROM LocationTable
ORDER BY State;

-- 12)
SELECT ProductID,
       AVG(Budget_Margin) AS Avg_Budget_Margin
FROM FactTable
GROUP BY ProductID
HAVING AVG(Budget_Margin) > 100;

-- 13)
SELECT SUM(Sales) AS Total_Sales
FROM FactTable
WHERE Date = '2010-01-01';

-- 14)
SELECT Date,
       ProductID,
       AVG(Total_Expenses) AS Avg_Total_Expense
FROM FactTable
GROUP BY Date, ProductID;

-- 15)
SELECT F.Date,
       F.ProductID,
       P.Product_Type,
       P.Product,
       F.Sales,
       F.Profit,
       L.State,
       F.Area_Code
FROM FactTable F
JOIN ProductTable P
ON F.ProductID = P.ProductID
JOIN LocationTable L
ON F.Area_Code = L.Area_Code;

-- 16)
SELECT Sales,
       DENSE_RANK() OVER (ORDER BY Sales DESC) AS Sales_Rank
FROM FactTable;

-- 17)
SELECT L.State,
       SUM(F.Profit) AS Total_Profit,
       SUM(F.Sales) AS Total_Sales
FROM FactTable F
JOIN LocationTable L
ON F.Area_Code = L.Area_Code
GROUP BY L.State;

-- 18)
SELECT L.State,
       P.Product,
       SUM(F.Profit) AS Total_Profit,
       SUM(F.Sales) AS Total_Sales
FROM FactTable F
JOIN ProductTable P
ON F.ProductID = P.ProductID
JOIN LocationTable L
ON F.Area_Code = L.Area_Code
GROUP BY L.State, P.Product;

-- 19)
SELECT Sales,
       Sales * 1.05 AS Increased_Sales
FROM FactTable;

-- 20)
SELECT P.ProductID,P.Product_Type,F.Profit
FROM FactTable F
JOIN ProductTable P
ON F.ProductID = P.ProductID
WHERE F.Profit = (
    SELECT MAX(Profit)
    FROM FactTable
);

-- 21)
DELIMITER //

CREATE PROCEDURE GetProductByType(IN ptype VARCHAR(50))
BEGIN
    SELECT *
    FROM ProductTable
    WHERE Product_Type = ptype;
END //

DELIMITER ;

CALL GetProductByType('Coffee');

-- 22)
SELECT ProductID,Total_Expenses,
       CASE
           WHEN Total_Expenses < 60 THEN 'Profit'
           ELSE 'Loss'
       END AS Status
FROM FactTable;

-- 23)
SELECT WEEK(Date) AS Week_Number,
       ProductID,
       SUM(Sales) AS Weekly_Sales
FROM FactTable
GROUP BY WEEK(Date), ProductID WITH ROLLUP;

-- 24)
SELECT Area_Code
FROM FactTable
UNION
SELECT Area_Code
FROM LocationTable;

SELECT Area_Code
FROM FactTable
INTERSECT
SELECT Area_Code
FROM LocationTable;

-- 25)
DELIMITER //

CREATE PROCEDURE GetProductType(IN ptype VARCHAR(50))
BEGIN
    SELECT *
    FROM ProductTable
    WHERE Product_Type = ptype;
END //

DELIMITER ;
CALL GetProductType('Coffee');

-- 26)
UPDATE ProductTable
SET Product_Type = 'Tea'
WHERE ProductID = 1;

ROLLBACK;

UPDATE ProductTable
SET Product_Type = 'Coffee'
WHERE ProductID = 1;

select * from ProductTable;

-- 27)
SELECT Date,ProductID,Sales
FROM FactTable
WHERE Total_Expenses BETWEEN 100 AND 200;

-- 28)
DELETE FROM ProductTable
WHERE Type = 'Regular';

-- 29)
SELECT Product,
       ASCII(SUBSTRING(Product, 5, 1)) AS ASCII_Value
FROM ProductTable;