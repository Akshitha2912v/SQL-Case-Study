create database case_studyDB;
use Case_studyDB;

CREATE TABLE FactTable (
    Date DATE,
    ProductID INT,
    Profit DECIMAL(10,2),
    Sales DECIMAL(10,2),
    Margin DECIMAL(10,2),
    COGS DECIMAL(10,2),
    Total_Expenses DECIMAL(10,2),
    Marketing DECIMAL(10,2),
    Inventory INT,
    Budget_Profit DECIMAL(10,2),
    Budget_COGS DECIMAL(10,2),
    Budget_Margin DECIMAL(10,2),
    Budget_Sales DECIMAL(10,2),
    Area_Code INT
);

CREATE TABLE ProductTable (
    Product_Type VARCHAR(50),
    Product VARCHAR(50),
    ProductID INT PRIMARY KEY,
    Type VARCHAR(50)
);


CREATE TABLE LocationTable (
    Area_Code INT,
    State VARCHAR(50),
    Market VARCHAR(50),
    Market_Size VARCHAR(50)
);

SELECT * FROM FactTable;

SELECT * FROM ProductTable;

SELECT * FROM LocationTable;
