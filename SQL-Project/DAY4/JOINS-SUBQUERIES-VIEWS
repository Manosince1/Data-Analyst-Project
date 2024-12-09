
/*===================================================================================
Mastering Joins in SQL
=====================================================================================*/
/*============================================================
Introduction to SQL Joins
========================================================*/
-- SQL joins are used to combine data from two or more tables based on a relationship between the columns in those tables. They allow you to retrieve information from multiple tables in a single query.
/*=============================================================================
Using INNER JOIN to combine rows from two tables
SELECT columns
FROM table1
INNER JOIN table2
ON table1.common_column = table2.common_column;

Explanation:
- SELECT columns: specifies the columns to retrieve in the final result.
- FROM table1: defines the first table from which to retrieve data.
- INNER JOIN table2: specifies the second table to join with the first.
- ON table1.common_column = table2.common_column; establishes the join condition, usually equality between a column in table1 and a column in table2.

The INNER JOIN operation returns only rows that have a match in both tables based on the specified condition.
======================================================================*/


-- For each sale, provide the first and last name of the employee who made the sale.
SELECT SaleID, LastName, Firstname
FROM Sales 
INNER JOIN Employees ON Sales.EmployeeID=Employees.EmployeeID;

-- Using USING
SELECT SaleID, LastName, Firstname
FROM Sales 
INNER JOIN Employees USING(EmployeeID);

-- Using JOIN
SELECT SaleID, LastName, Firstname
FROM Sales 
JOIN Employees USING(EmployeeeID);

SELECT SaleID, LastName, Firstname
FROM Sales AS s
JOIN Employes USING(EmployeeID);

SELECT SaleID, LastName, Firstname
FROM Sales AS sa
JOIN Employees AS em ON sa.EmployeeID=em.EmployeeID;

SELECT *
FROM Sales AS sa
JOIN Employees AS em ON sa.EmployeeID=em.EmployeeID;



SELECT *
FROM Sales AS sa
JOIN Employees AS em USING(EmployeeID);

SELECT sa.EmployeeID
FROM Sales AS sa
JOIN Employees AS em 
ON ve.EmployeeID=em.EmployeeID;

-- Exercise: Give the name and address of the supplier for each product in the database.
SELECT ProductID, SupplierName, Adress
FROM Suppliers su
JOIN Products pr USING(SupplierID);

SELECT ProductID,NameProduct, SupplierName, Adress
FROM Suppliers su 
JOIN Products pr ON su.SupplierID = pr.ProductID;

-- Give the first and last names of the employees who achieved the highest sales total
SELECT EmployeeID, LastName, FirstName, SUM(TotalAmount) AS Total
FROM Employees JOIN Sales USING(EmployeeID)
GROUP BY EmployeeID, LastName, FirstName 
ORDER BY Total DESC;
-- Exercise: Give the name, address and number of purchases made for each Client.
SELECT ClientID, Nom, Adresse, COUNT(SaleID) AS NbSale
FROM Clients JOIN Sales USING(ClientID)
GROUP BY  ClientID, LastName, Adress
ORDER BY NbSale DESC;

/*=========================================================================
Using LEFT JOIN and RIGHT JOIN to combine rows from two tables
SELECT columns
FROM table1
LEFT JOIN table2 ON table1.common_column = table2.common_column;
RIGHT JOIN table2 ON table1.common_column = table2.common_column;

Explanation:
- SELECT columns: specifies the columns to retrieve in the final result.
- FROM table1: defines the first table from which to retrieve data.
- LEFT JOIN table2: specifies the second table to join with the first, including all rows from the first table (table1) even if there is no match in the second table (table2).
- RIGHT JOIN table2: similar to LEFT JOIN but includes all rows from the second table (table2), even if there is no match in the first table (table1).
- ON table1.common_column = table2.common_column; establishes the join condition, usually equality between a column in table1 and a column in table2.

The LEFT JOIN operation returns all rows from the left table (table1) and the matching rows from the right table (table2). If there is no match, the result will include NULL values for the columns in the right table.

The RIGHT JOIN operation works similarly but returns all rows from the right table (table2) and matching rows from the left table (table1). If there is no match, the result will include NULL values for the columns in the left table.
================================================================================*/
-- QUESTIO: Give for each employee, the name, first name and the number of sales made (you must keep in the database the employees who have zero sales)
SELECT EmployeeID, LastName, FirstName, COUNT(TotalAmount) AS TotalSale
FROM Employees 
LEFT JOIN Sales USING (EmployeeID)
GROUP BY EmployeeID, LastName, FirstName
ORDER BY TotalSale;


SELECT EmployeeID, LastName, FirstName, COUNT(TotalAmount) AS TotalSale
FROM Employees 
JOIN Sales USING (EmployeeID)
GROUP BY EmployeeID, LastName, FirstName
ORDER BY TotalSale;

-- Give for each supplier his name, his email and the number of products supplied (leave suppliers who have no product)
SELECT SupplierName, email, COUNT(ProductID) as NbProduct
FROM Suppliers s 
LEFT JOIN Products USING (SupplierID)
GROUP BY SupplierName, email
ORDER BY NbProduct;

-- Give the name, first name and the average sales per customer (keep the list of customers who have not purchased any product)
SELECT LastName, FirstName, AVG(TotalAmount) as Avg
FROM Clients
LEFT JOIN Sales USING(ClientID)
GROUP BY LastName, FirstName;

-- Replace NULL values in the previous query with 0
-- COALESCE
SELECT LastName, FirstName, COALESCE(AVG(TotalAmount),0) as Average
FROM Clients
LEFT JOIN Sales USING(ClientID)
GROUP BY LastName, FirstName;


SELECT LastName, FirstName, ROUND(COALESCE(AVG(TotalAmount),0),2) as Average
FROM Clients
LEFT JOIN Sales USING(ClientID)
GROUP BY LastName, FirstName,;

SELECT LastName, FirstName, ROUND(COALESCE(AVG(TotalAmount),0),2) as Average
FROM Sales
RIGHT JOIN Clients USING(ClientID)
GROUP BY LastName, FirstName;

-- Exercise: Give the name, first name and the amount of purchases made by each customer, and display zero if the amount of purchases is null
SELECT ClientID, LastName, FirstName, COALESCE(SUM(TotalAmount),0) as CA
FROM Clients 
LEFT JOIN Sales USING(ClientID)
GROUP BY ClientID, LastName, FirstName;

-- Do the previous exercises using RIGHT JOIN
SELECT ClientID, LastName, FirstName, COALESCE(SUM(TotalAmount),0) as CA
FROM Sales 
RIGHT JOIN Clients USING(ClientID)
GROUP BY ClientID, LastName, FirstName;





/*============================================================================
Creating and using views in SQL
CREATE VIEW view_name AS
SELECT columns
FROM table1
JOIN table2 ON table1.common_column = table2.common_column;
Explanation:
- CREATE VIEW view_name: Begins the definition of a new view named 'view_name'. Views are virtual tables based on the result of an SQL query.
- SELECT columns: Specifies the columns to include in the view. These columns can come from one or more tables.
- FROM table1: Specifies the base table(s) for the view. Views can combine data from multiple tables via joins.
- JOIN table2 ON table1.common_column = table2.common_column; Defines how the tables are related to form the view. Joins can be INNER JOIN, LEFT JOIN, RIGHT JOIN, etc., depending on the data to be included.
Views allow you to:
1. Simplify complex queries by hiding the complexity of joins and calculations.
2. Reuse frequently executed SQL queries without having to rewrite them.
3. Limit access to data by presenting only part of the data from a table or multiple tables.
======================================================================*/
-- Create a view of sales for the year 2021 
CREATE VIEW Sale2021 AS
SELECT *
FROM Sales
WHERE YEAR(DateSale) = 2021;
SELECT *
FROM Sale2021;



-- What is the list of customers who made more than 2 purchases in 2021?
SELECT ClientID, LastName, FirstName, COUNT(SaleID) as TotalSale
FROM Clients 
LEFT JOIN Sale2021 USING(ClientID)
GROUP BY ClientID
HAVING TotalSale > 1;

-- What is the list of employees who have average sales above 500 in 2021?
SELECT EmployeeID, LastName, FirstName, AVG(Totalamount) as AvgSale
FROM Employees 
LEFT JOIN Sale2021 USING(EmployeeID)
GROUP BY EmployeeID, LastName, FirstName
HAVING AvgSale >500;

-- Create a view containing products with a price greater than 500 Dollars
CREATE VIEW ProduitSup500 AS
SELECT *
FROM Products
WHERE UnitPrice >500;


-- Create a view containing for each customer the name, first name and the sum of purchases per year

- What is the average turnover generated per year for each customer?
/*====================*/
/* Subquery in SQL*/
/*====================*/

-- List of customers who have not made any purchases
SELECT *
FROM Clients
WHERE ClientID NOT IN (SELECT ClientID FROM Sales);
-- List of employees at least one sale
SELECT *
FROM Employees
WHERE EmployeeID IN (SELECT EmployeeID FROM Sales);

-- Exercise: Write a query that allows you to give for each customer their name, first name, the sum of purchases as well as the annual average of purchases.

