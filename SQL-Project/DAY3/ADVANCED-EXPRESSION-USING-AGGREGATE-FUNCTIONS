DAY 3 ADVANCED REGULAR EXPRESSION AND USING AGGREGATE FUNCTIONS

/*==================================================================================
                      Mastering Regular Expressions in SQL
==================================================================================*/

   -- Regular expressions in SQL allow complex text searches.
/*======================================================
Feature 1: Basic search with REGEXP
General syntax:
SELECT column_name
FROM table_name
WHERE column_name REGEXP 'pattern';
======================================================*/
--QUESTION: List of products that contain "A" (two possibilities with LIKE)
	SELECT count(*)
	FROM Products
	WHERE NameProduct LIKE '%A%';
-- With REGEXP
SELECT count(*)
FROM Products
WHERE NameProduct REGEXP "A";
/*======================================================
To indicate the beginning of a string, use the "^" character at the beginning of the expression.
======================================================*/
-- QUESTION: List of products whose name begins with the letter "P"
	SELECT *
	FROM Products
	WHERE NameProduct LIKE 'P%';
-- With a regular expression
SELECT count(*)
FROM Products
WHERE NameProduct REGEXP "^P";
/*======================================================
To indicate the end of a string, use the "$" character at the end of the expression.
======================================================*/
-- QUESTION 27: List of products ending with "M"
	SELECT *
	FROM Products
	WHERE NameProduct LIKE '%m';

-- With a regular expression
SELECT count(*)
FROM Products
WHERE NameProduct REGEXP "M$";

/*======================================================
Search for multiple patterns in the string using the "|" symbol.
======================================================*/
-- QUESTION 27: List of customers whose number contains "05" or "55"
	SELECT *
	FROM Clients
	WHERE PhoneNumber LIKE '%05%' OR PhoneNumber LIKE '%55%';

-- With REGEXP
	SELECT *
	FROM Clients
	WHERE PhoneNumber REGEXP '05|55';
/*======================================================================
QUESTION: List of customers whose number begins with "05" or ends with "94"
======================================================================*/
-- With LIKE
	SELECT *
	FROM Clients
	WHERE PhoneNumber LIKE '05%94';

-- With REGEXP
	SELECT *
	FROM Clients
	WHERE PhoneNumber REGEXP '05|94';
/*======================================================================
Using special characters "." (any character)
General syntax:
SELECT column_name
FROM table_name
WHERE column_name REGEXP 'pattern';
======================================================================*/
-- QUESTION: Select customers whose name contains 'R' followed by any character and then 'a'
-- With LIKE (underscore)
SELECT count(*)
FROM Clients
WHERE LastName LIKE "%R_a%";

-- With REGEXP
SELECT *
FROM Clients
WHERE LastName REGEXP "R.A";
/*======================================================================
QUESTION: List of customers whose name starts with "R" and ends with "A"
======================================================================*/
-- With LIKE
SELECT *
FROM Clients
WHERE LastName LIKE "R%A";

-- With REGEXP
SELECT *
FROM Clients
WHERE LastName REGEXP "R.*A$";

/*======================================================================
Tips: []
======================================================================*/
-- List of customers whose name contains "it" or "ie" or "il" or "is"
SELECT *
FROM Clients
WHERE LastName LIKE "%ie%" OR LastName LIKE "%it%" OR LastName LIKE "%il%" OR LastName LIKE "%is%";
-- List of customers whose name contains any letter from 'a' to 'g' followed by 'l'
               SELECT *
FROM Clients
WHERE LastName REGEXP "i[a-g]";

SELECT *
FROM Clients
WHERE LastName REGEXP "[etls]i"
/*======================================================================
Limiting query results with LIMIT
SELECT column_name
FROM table_name
WHERE conditions
LIMIT number_of_rows;
======================================================================*/
-- List the first 10 customers in alphabetical order
	SELECT *
	FROM Clients
	ORDER BY LastName ASC
	LIMIT 10;
-- List the 10 most expensive products
	SELECT *
	FROM Products
	ORDER BY UnitPrice DESC
	LIMIT 10;

-- List the 10 least popular products
	SELECT *
	FROM Products
	ORDER BY UnitPrice ASC
	LIMIT 10;






/*==================================================================================
Mastering Aggregate Functions in SQL
==================================================================================*/
/*======================================================
Aggregate functions in SQL
======================================================*/
-- Aggregate functions in SQL are used to perform calculations on a set of values in a column. They are commonly used to obtain summary statistics from data.
/*======================================================
COUNT() Function
======================================================*/
-- The COUNT() function is used to count the number of rows in a data set.
-- EXAMPLE: How many clients are in the database?
	SELECT COUNT(*) 'Total Client'
	FROM Clients;
SELECT COUNT(ClientID) AS "Total Client"
FROM Clients;
/*======================================================
SUM() Function
======================================================*/
-- EXAMPLE: Calculate the total sum of sales in the "Sales" table.
	SELECT SUM(TotalAmount) AS 'Total Vente'
	FROM Sales;
/*======================================================
AVG() Function
======================================================*/
-- EXAMPLE: Determine the average sales.
	SELECT AVG(TotalAmount) AS 'Average Sale '
              FROM Clients;

/*======================================================
MIN() et MAX() Function
======================================================*/
-- The MIN() and MAX() functions are used to find the minimum and maximum value in a column, respectively.
-- EXAMPLE: What is the cheapest product? What is the most expensive product?
	SELECT MIN(UnitPrice) AS 'Product Cheap'
	FROM Products;

	SELECT Max(PrixUnitaire) AS 'Product Expensive'
	FROM Products;
/*======================================================
SUM(DISTINCT) Function
======================================================*/
-- The SUM(DISTINCT) function is used to calculate the sum of unique values in a column.
-- Example: Calculate the total sum of unique sales in the "Sales" table.

/*======================================================
AVG(DISTINCT) Function
======================================================*/
-- The AVG(DISTINCT) function calculates the average of unique values in a column.
-- EXAMPLE: Calculate the average of unique sales.
              SELECT AVG(DISTINCT TotalAmount) AS AverageDist
FROM Sales;




/*==================================================================================
Mastering Data GROUPING (GROUP BY) in SQL
==================================================================================*/
-- Introduction to Data Grouping
-- Data grouping is a core feature in SQL that allows you to group rows of data based on the values in one or more columns. This operation is often used to perform aggregate calculations on groups of data rather than the entire data set.
/*======================================================================
GROUP BY Clause Syntax
-- The `GROUP BY` clause is used to specify the columns by which you want to group your data. The general syntax is:
SELECT column1, column2, ..., aggregation_function(column)
FROM table_name
GROUP BY column1, column2, ...; 
==================================================================================*/
-- Practical Example: Calculating the sum of sales per employee.
SELECT EmployeeID, SUM(TotalAmount) AS Total
FROM Sales
GROUP BY EmployeeID;
-- Practical Example: Counting the number of sales per employee.
SELECT EmployeeID, COUNT(SaleID) AS Total
FROM Sales
GROUP BY EmployeeID;
-- Practical Example: Determining the sum of sales per year.
SELECT EXTRACT(YEAR FROM DateSale) AS Year, SUM(TotalAmount) AS AmTot
FROM Sales
GROUP BY Year
ORDER BY AmTot DESC;


SELECT YEAR(DateSale) AS Year, SUM(TotalAmount) as MntTot
FROM Sales
GROUP BY Year
ORDER BY MntTot DESC;

-- Practical Example: What is the average sales per year per employee?
SELECT YEAR(DateSale) as Year, EmployeeID, AVG(TotalAmount) as Average
FROM Sales
GROUP BY Year, EmployeeID;
-- Using Aggregation Functions
-- In combination with the `GROUP BY` clause, you can use aggregation functions such as SUM(), COUNT(), AVG(), MIN(), MAX(), etc., to perform calculations on the resulting groups of data. This allows you to obtain summary statistics by group.
/*=======================================================
HAVING Function
=============================================================*/
-- The HAVING clause is used with GROUP BY to filter result groups based on an aggregate condition.
-- Example: List employees whose average sales are greater than 1000 DOLLARS.
SELECT YEAR(DateSale) as Year, EmployeeID, AVG(TotalAmout) as Average
FROM Sales
GROUP BY Year, EmployeeID
HAVING Average > 1000;
-- Exercise: List the 5 employees with the highest sales sum.
SELECT EmployeeID, SUM(TotalAmout) AS Total
FROM Sales
GROUP BY EmployeeID
ORDER BY Total
LIMIT 5;

-- QUESTION: Give for each sale the name and first name of the employee who made the sale
-- First approach Cartesian product
SELECT *
FROM Sales, Employees
WHERE Sales.EmployeeID = Employees.EmployeeID;

SELECT SaleID, Sales.EmployeeID, LastName, FirstName
FROM Sales, Employees
WHERE Sales.EmployeeID = Employees.EmployeeID;

